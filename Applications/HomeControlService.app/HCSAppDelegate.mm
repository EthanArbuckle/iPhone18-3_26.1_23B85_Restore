@interface HCSAppDelegate
- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options;
@end

@implementation HCSAppDelegate

- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options
{
  v4 = HFPlatformSpecificHomeAppBundleID();
  [CLLocationManager setDefaultEffectiveBundleIdentifier:v4];

  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  [v5 warmup];

  return 1;
}

@end