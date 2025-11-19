@interface WeakNotificationObserver
- (void)handleWithNotification:(id)a3;
@end

@implementation WeakNotificationObserver

- (void)handleWithNotification:(id)a3
{
  v4 = sub_3E5954();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E5944();
  v8 = *self->block;

  v8(v7);
  (*(v5 + 8))(v7, v4);
}

@end