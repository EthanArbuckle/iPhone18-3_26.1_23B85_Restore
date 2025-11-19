@interface BuddySIMManager
+ (id)sharedManager;
- (BuddySIMManager)init;
- (void)allowSIMUnlock;
- (void)disallowSIMUnlock;
@end

@implementation BuddySIMManager

+ (id)sharedManager
{
  v5 = &unk_1003A7468;
  location = 0;
  objc_storeStrong(&location, &stru_10032F4D0);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_1003A7470;

  return v2;
}

- (BuddySIMManager)init
{
  v7 = a2;
  location = 0;
  v6.receiver = self;
  v6.super_class = BuddySIMManager;
  v2 = [(BuddySIMManager *)&v6 init];
  location = v2;
  objc_storeStrong(&location, v2);
  if (v2)
  {
    v3 = [[BYTelephonyStateNotifier alloc] initForNotifying];
    [location setTelephonyStateNotifier:v3];
  }

  v4 = location;
  objc_storeStrong(&location, 0);
  return v4;
}

- (void)allowSIMUnlock
{
  v8 = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v6;
    sub_10006AA68(v5);
    _os_log_impl(&_mh_execute_header, v2, v3, "Allowing SIM unlock...", v5, 2u);
  }

  objc_storeStrong(oslog, 0);
  v4 = [(BuddySIMManager *)v8 telephonyStateNotifier];
  [(BYTelephonyStateNotifier *)v4 notifySIMUnlockStateChangedTo:1];
}

- (void)disallowSIMUnlock
{
  v8 = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v6;
    sub_10006AA68(v5);
    _os_log_impl(&_mh_execute_header, v2, v3, "Disallowing SIM unlock...", v5, 2u);
  }

  objc_storeStrong(oslog, 0);
  v4 = [(BuddySIMManager *)v8 telephonyStateNotifier];
  [(BYTelephonyStateNotifier *)v4 notifySIMUnlockStateChangedTo:2];
}

@end