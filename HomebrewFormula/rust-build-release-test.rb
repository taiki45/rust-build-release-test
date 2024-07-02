# typed: false
# frozen_string_literal: true

# RustTestBinary formula
class RustBuildReleaseTest < Formula
  desc 'Test binary for testing the build of a Rust binary.'
  homepage 'https://github.com/taiki45/rust-build-release-test'
  version '0.1.9'
  license 'MIT'

  on_macos do
    on_arm do
      url 'https://github.com/taiki45/rust-build-release-test/releases/download/v0.1.9/orgu-aarch64-apple-darwin.tar.gz'
      sha256 'a87714a3406544244e427b584bfddd430e372846ad7ede8b71314552be349534'

      def install
        bin.install 'rust-build-release-test'
      end
    end
  end

  on_linux do
    on_intel do
      url 'https://github.com/taiki45/rust-build-release-test/releases/download/v0.1.9/orgu-x86_64-unknown-linux-gnu.tar.gz'
      sha256 '27b86e82e47b849ddc3c3d4e2ae9444545026df3fe59ccd5ac21f33ef0992304'

      def install
        bin.install 'rust-build-release-test'
      end
    end
  end

  test do
    system "#{bin}/rust-build-release-test"
  end
end
