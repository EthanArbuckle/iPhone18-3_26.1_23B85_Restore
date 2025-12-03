@interface DTExposureNotificationSettings
- (DTExposureNotificationSettings)init;
@end

@implementation DTExposureNotificationSettings

- (DTExposureNotificationSettings)init
{
  v3 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 0);
  firstObject = [v3 firstObject];

  v5 = [firstObject stringByAppendingPathComponent:@"PreferenceBundles"];
  v6 = [v5 stringByAppendingPathComponent:@"ENDeveloperSettings.bundle"];
  v7 = [NSBundle bundleWithPath:v6];
  v8 = objc_alloc_init([v7 principalClass]);

  return v8;
}

@end