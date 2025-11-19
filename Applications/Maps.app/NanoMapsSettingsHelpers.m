@interface NanoMapsSettingsHelpers
+ (NSUserDefaults)companionUserDefaults;
+ (NSUserDefaults)nanoMapsUserDefaults;
@end

@implementation NanoMapsSettingsHelpers

+ (NSUserDefaults)companionUserDefaults
{
  if (qword_10195E5F0 != -1)
  {
    dispatch_once(&qword_10195E5F0, &stru_101637DF0);
  }

  v3 = qword_10195E5E8;

  return v3;
}

+ (NSUserDefaults)nanoMapsUserDefaults
{
  if (qword_10195E5E0 != -1)
  {
    dispatch_once(&qword_10195E5E0, &stru_101637DD0);
  }

  v3 = qword_10195E5D8;

  return v3;
}

@end