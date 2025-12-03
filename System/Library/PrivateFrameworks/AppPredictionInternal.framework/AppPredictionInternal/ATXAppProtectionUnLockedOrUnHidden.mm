@interface ATXAppProtectionUnLockedOrUnHidden
- (ATXAppProtectionUnLockedOrUnHidden)initWithUnLockedApps:(id)apps unHiddenApps:(id)hiddenApps;
@end

@implementation ATXAppProtectionUnLockedOrUnHidden

- (ATXAppProtectionUnLockedOrUnHidden)initWithUnLockedApps:(id)apps unHiddenApps:(id)hiddenApps
{
  appsCopy = apps;
  hiddenAppsCopy = hiddenApps;
  v14.receiver = self;
  v14.super_class = ATXAppProtectionUnLockedOrUnHidden;
  v8 = [(ATXAppProtectionUnLockedOrUnHidden *)&v14 init];
  if (v8)
  {
    v9 = [appsCopy copy];
    unLockedApps = v8->_unLockedApps;
    v8->_unLockedApps = v9;

    v11 = [hiddenAppsCopy copy];
    unHiddenApps = v8->_unHiddenApps;
    v8->_unHiddenApps = v11;
  }

  return v8;
}

@end