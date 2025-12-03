@interface ATXBiomeAppLaunchWrapper
- (ATXBiomeAppLaunchWrapper)initWithAppLaunch:(id)launch isLocal:(BOOL)local isMacPortable:(BOOL)portable isMacDesktop:(BOOL)desktop;
@end

@implementation ATXBiomeAppLaunchWrapper

- (ATXBiomeAppLaunchWrapper)initWithAppLaunch:(id)launch isLocal:(BOOL)local isMacPortable:(BOOL)portable isMacDesktop:(BOOL)desktop
{
  launchCopy = launch;
  v17.receiver = self;
  v17.super_class = ATXBiomeAppLaunchWrapper;
  v12 = [(ATXBiomeAppLaunchWrapper *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_appLaunchEvent, launch);
    v13->_isLocal = local;
    v13->_isMacPortable = portable;
    v13->_isMacDesktop = desktop;
    absoluteTimestamp = [launchCopy absoluteTimestamp];
    launchTimestamp = v13->_launchTimestamp;
    v13->_launchTimestamp = absoluteTimestamp;
  }

  return v13;
}

@end