@interface ModelContainer
- (void)_observeRemoteNotifications:(id)notifications;
@end

@implementation ModelContainer

- (void)_observeRemoteNotifications:(id)notifications
{
  v3 = sub_197520BFC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_197520BDC();

  sub_197445198();

  (*(v4 + 8))(v8, v3);
}

@end