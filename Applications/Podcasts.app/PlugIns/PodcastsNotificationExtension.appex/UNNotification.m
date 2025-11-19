@interface UNNotification
- (void)mt_removeFromUserNotificationCenter;
@end

@implementation UNNotification

- (void)mt_removeFromUserNotificationCenter
{
  v2 = [(UNNotification *)self request];
  v3 = [v2 identifier];

  if ([v3 length])
  {
    v4 = +[UNUserNotificationCenter currentNotificationCenter];
    v9 = v3;
    v5 = [NSArray arrayWithObjects:&v9 count:1];
    [v4 removeDeliveredNotificationsWithIdentifiers:v5];

    v6 = +[UNUserNotificationCenter currentNotificationCenter];
    v8 = v3;
    v7 = [NSArray arrayWithObjects:&v8 count:1];
    [v6 removePendingNotificationRequestsWithIdentifiers:v7];
  }
}

@end