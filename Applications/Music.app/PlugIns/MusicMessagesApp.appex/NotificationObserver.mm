@interface NotificationObserver
- (void)handleNotification:(id)notification;
@end

@implementation NotificationObserver

- (void)handleNotification:(id)notification
{
  v3 = sub_1004D7B7C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D7B4C();

  sub_100408684(v6);

  (*(v4 + 8))(v6, v3);
}

@end