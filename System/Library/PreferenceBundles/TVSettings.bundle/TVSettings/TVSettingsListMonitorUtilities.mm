@interface TVSettingsListMonitorUtilities
+ (void)subscribeToNotifications:(id)a3 token:(int *)a4;
@end

@implementation TVSettingsListMonitorUtilities

+ (void)subscribeToNotifications:(id)a3 token:(int *)a4
{
  v5 = a3;
  v6 = __WLKPreferencesDidChangeNotification;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1F14;
  v8[3] = &unk_20880;
  v9 = v5;
  v10 = a4;
  v7 = v5;
  notify_register_dispatch(v6, a4, &_dispatch_main_q, v8);
}

@end