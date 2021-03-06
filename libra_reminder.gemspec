# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'libra_reminder/version'

Gem::Specification.new do |spec|
  spec.name          = "libra_reminder"
  spec.version       = LibraReminder::VERSION
  spec.authors       = ["越智 修司"]
  spec.email         = ["ponpoko1968@gmail.com"]
  spec.summary       = %q{神戸市立図書館で借りた本の貸出期限をgoogle calendarに同期させるコマンド}
  spec.description   = %q{神戸市立図書館で借りた本の貸出期限をgoogle calendarに同期させるコマンド}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency             "logger"
  spec.add_dependency             "jwt"
  spec.add_dependency             "google-api-client"
  spec.add_dependency             "mechanize"
  spec.add_dependency             "activerecord"
  spec.add_dependency             "sqlite3"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "yard"
  spec.add_development_dependency "rspec"
end
