@interface CBUtilities
+ (BOOL)isInternalInstall;
+ (BOOL)isRunningOnPhysicalHardware;
+ (BOOL)wasRemoteSetupPerformed;
+ (void)disableS2R;
@end

@implementation CBUtilities

+ (BOOL)isRunningOnPhysicalHardware
{
  if (qword_100092358 != -1)
  {
    sub_100047178();
  }

  return byte_100091410;
}

+ (BOOL)wasRemoteSetupPerformed
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"remoteSetupCompleted"];

  return v3;
}

+ (BOOL)isInternalInstall
{
  if (qword_100092368 != -1)
  {
    sub_10004718C();
  }

  return byte_100092360;
}

+ (void)disableS2R
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting SleepDisabled to disable S2R", v4, 2u);
  }

  v3 = IORegistryEntryFromPath(kIOMainPortDefault, "IOPower:/IOPowerConnection/IOPMrootDomain");
  IORegistryEntrySetCFProperty(v3, @"SleepDisabled", kCFBooleanTrue);
}

@end