@interface ATXBiomeAppLaunchWrapper
- (ATXBiomeAppLaunchWrapper)initWithAppLaunch:(id)a3 isLocal:(BOOL)a4 isMacPortable:(BOOL)a5 isMacDesktop:(BOOL)a6;
@end

@implementation ATXBiomeAppLaunchWrapper

- (ATXBiomeAppLaunchWrapper)initWithAppLaunch:(id)a3 isLocal:(BOOL)a4 isMacPortable:(BOOL)a5 isMacDesktop:(BOOL)a6
{
  v11 = a3;
  v17.receiver = self;
  v17.super_class = ATXBiomeAppLaunchWrapper;
  v12 = [(ATXBiomeAppLaunchWrapper *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_appLaunchEvent, a3);
    v13->_isLocal = a4;
    v13->_isMacPortable = a5;
    v13->_isMacDesktop = a6;
    v14 = [v11 absoluteTimestamp];
    launchTimestamp = v13->_launchTimestamp;
    v13->_launchTimestamp = v14;
  }

  return v13;
}

@end