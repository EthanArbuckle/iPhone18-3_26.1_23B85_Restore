@interface NotificationObserver
- (void)handleNotification:(id)a3;
@end

@implementation NotificationObserver

- (void)handleNotification:(id)a3
{
  v3 = sub_AB2BD0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB2B90();

  sub_8CC7BC(v6);

  (*(v4 + 8))(v6, v3);
}

@end