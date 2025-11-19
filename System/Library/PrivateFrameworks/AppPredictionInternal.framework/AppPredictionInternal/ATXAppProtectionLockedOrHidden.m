@interface ATXAppProtectionLockedOrHidden
- (ATXAppProtectionLockedOrHidden)initWithLockedApps:(id)a3 hiddenApps:(id)a4;
@end

@implementation ATXAppProtectionLockedOrHidden

- (ATXAppProtectionLockedOrHidden)initWithLockedApps:(id)a3 hiddenApps:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ATXAppProtectionLockedOrHidden;
  v8 = [(ATXAppProtectionLockedOrHidden *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    lockedApps = v8->_lockedApps;
    v8->_lockedApps = v9;

    v11 = [v7 copy];
    hiddenApps = v8->_hiddenApps;
    v8->_hiddenApps = v11;
  }

  return v8;
}

@end