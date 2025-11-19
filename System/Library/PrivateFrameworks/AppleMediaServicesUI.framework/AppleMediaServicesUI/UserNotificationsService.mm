@interface UserNotificationsService
- (void)userNotificationCenter:(id)a3 didChangeSettings:(id)a4;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation UserNotificationsService

- (void)userNotificationCenter:(id)a3 didChangeSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1001CE6B0(v6, v7);
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_1001CEC34(v9, v10, v11, v8);
  _Block_release(v8);
}

@end