@interface ATXGuardedAppBlacklist
- (ATXGuardedAppBlacklist)init;
@end

@implementation ATXGuardedAppBlacklist

- (ATXGuardedAppBlacklist)init
{
  v8.receiver = self;
  v8.super_class = ATXGuardedAppBlacklist;
  v2 = [(ATXGuardedAppBlacklist *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    blacklist = v2->_blacklist;
    v2->_blacklist = v3;

    v5 = objc_opt_new();
    prefsChangeHandlers = v2->_prefsChangeHandlers;
    v2->_prefsChangeHandlers = v5;

    v2->_nextPrefsChangeHandlerToken = 1;
  }

  return v2;
}

@end