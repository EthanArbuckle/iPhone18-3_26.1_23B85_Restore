@interface NotificationObserver
- (void)handleNotification:(id)notification;
@end

@implementation NotificationObserver

- (void)handleNotification:(id)notification
{
  v3 = sub_2177513E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2177513B8();

  sub_217515B44();

  (*(v4 + 8))(v8, v3);
}

@end