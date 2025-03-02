Pod::Spec.new do |s|
  s.name = 'Airbrake-iOS'

  s.version = '4.2.22'

  s.summary = 'An Airbrake Notifier for iOS'

  s.description = <<-DESC
                    The Airbrake iOS Notifier is designed to give developers instant notification of problems that occur in their apps. With just a few lines of code and a few extra files in your project, your app will automatically phone home whenever a crash or exception is encountered. These reports go straight to Airbrake where you can see information like backtrace, device type, app version, and more.
  DESC

  s.homepage = 'https://airbrake.io/languages/ios_bug_tracker'

  s.license = 'MIT'

  s.author = 'Jocelyn Harrington'

  s.ios.deployment_target = '6.0'

  s.osx.deployment_target = '10.9'

  s.source = { :git => "https://github.com/airbrake/airbrake-ios.git", :tag => "4.2.8" }

  s.source_files = 'Airbrake/{notifier,gcalertview}/*.{h,m}', 'Airbrake/CrashReporter.framework/Versions/A/Headers/*.h'

  s.resources = 'Airbrake/notifier/ABNotifier.bundle'

  s.framework = 'SystemConfiguration'

  s.ios.vendored_frameworks = 'CrashReporter.framework'

  s.osx.vendored_frameworks = 'CrashReporter.framework'

  s.preserve_paths = 'Airbrake/CrashReporter.framework/*'

  s.requires_arc = true
end
