@interface ATXAppProtectionUnLockedOrUnHidden
- (ATXAppProtectionUnLockedOrUnHidden)initWithUnLockedApps:(id)a3 unHiddenApps:(id)a4;
@end

@implementation ATXAppProtectionUnLockedOrUnHidden

- (ATXAppProtectionUnLockedOrUnHidden)initWithUnLockedApps:(id)a3 unHiddenApps:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ATXAppProtectionUnLockedOrUnHidden;
  v8 = [(ATXAppProtectionUnLockedOrUnHidden *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    unLockedApps = v8->_unLockedApps;
    v8->_unLockedApps = v9;

    v11 = [v7 copy];
    unHiddenApps = v8->_unHiddenApps;
    v8->_unHiddenApps = v11;
  }

  return v8;
}

@end