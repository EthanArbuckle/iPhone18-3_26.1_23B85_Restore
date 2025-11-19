@interface WFPingSubscriber
- (void)pingSubscriberDidLoad;
@end

@implementation WFPingSubscriber

- (void)pingSubscriberDidLoad
{
  v3 = os_log_create("com.apple.shortcuts", "PingSubscriber");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Loaded ShortcutsPingSubscriber", buf, 2u);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_B94;
  v5[3] = &unk_4098;
  v6 = v3;
  v4 = v3;
  [(WFPingSubscriber *)self subscribeToSectionID:@"com.apple.shortcuts" withNotificationAckForwardForAnyConnectionHandler:v5];
}

@end