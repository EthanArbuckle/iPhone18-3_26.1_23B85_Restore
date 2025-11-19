@interface HCSAppDelegate
- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4;
@end

@implementation HCSAppDelegate

- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4
{
  v4 = HFPlatformSpecificHomeAppBundleID();
  [CLLocationManager setDefaultEffectiveBundleIdentifier:v4];

  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  [v5 warmup];

  return 1;
}

@end