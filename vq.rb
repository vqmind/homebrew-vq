class Vq < Formula
  homepage "https://vqmind.github.io/vq/"
  desc "Utility for querying json."
  url "https://github.com/vqmind/vq/releases/download/1.0.0/app-1.0.0.tar.gz"
  sha256 "057d570bd3a9522f6e392c3a5dbbf412d4cc676b16f752626b9acdc06438f3d3"
  license "MIT"
 
  def install
    inreplace "brew/vq", "##PREFIX##", "#{prefix}"
    prefix.install "app-1.0.0.jar"
    bin.install "brew/vq"
  end
 
  test do
    assert_match "seattle", shell_output(" echo '{\"city\":\"seattle\"}' | #{bin}/vq \"$.city\" ")
  end
end
