@interface UNNotification
- (void)mt_removeFromUserNotificationCenter;
@end

@implementation UNNotification

- (void)mt_removeFromUserNotificationCenter
{
  request = [(UNNotification *)self request];
  identifier = [request identifier];

  if ([identifier length])
  {
    v4 = +[UNUserNotificationCenter currentNotificationCenter];
    v9 = identifier;
    v5 = [NSArray arrayWithObjects:&v9 count:1];
    [v4 removeDeliveredNotificationsWithIdentifiers:v5];

    v6 = +[UNUserNotificationCenter currentNotificationCenter];
    v8 = identifier;
    v7 = [NSArray arrayWithObjects:&v8 count:1];
    [v6 removePendingNotificationRequestsWithIdentifiers:v7];
  }
}

@end