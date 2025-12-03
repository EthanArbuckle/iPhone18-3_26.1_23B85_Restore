@interface TVSettingsListMonitorUtilities
+ (void)subscribeToNotifications:(id)notifications token:(int *)token;
@end

@implementation TVSettingsListMonitorUtilities

+ (void)subscribeToNotifications:(id)notifications token:(int *)token
{
  notificationsCopy = notifications;
  v6 = __WLKPreferencesDidChangeNotification;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1F14;
  v8[3] = &unk_20880;
  v9 = notificationsCopy;
  tokenCopy = token;
  v7 = notificationsCopy;
  notify_register_dispatch(v6, token, &_dispatch_main_q, v8);
}

@end