@interface ATXAppProtectionLockedOrHidden
- (ATXAppProtectionLockedOrHidden)initWithLockedApps:(id)apps hiddenApps:(id)hiddenApps;
@end

@implementation ATXAppProtectionLockedOrHidden

- (ATXAppProtectionLockedOrHidden)initWithLockedApps:(id)apps hiddenApps:(id)hiddenApps
{
  appsCopy = apps;
  hiddenAppsCopy = hiddenApps;
  v14.receiver = self;
  v14.super_class = ATXAppProtectionLockedOrHidden;
  v8 = [(ATXAppProtectionLockedOrHidden *)&v14 init];
  if (v8)
  {
    v9 = [appsCopy copy];
    lockedApps = v8->_lockedApps;
    v8->_lockedApps = v9;

    v11 = [hiddenAppsCopy copy];
    hiddenApps = v8->_hiddenApps;
    v8->_hiddenApps = v11;
  }

  return v8;
}

@end