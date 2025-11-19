@interface NotificationsController
- (_TtC11AskToDaemon23NotificationsController)init;
@end

@implementation NotificationsController

- (_TtC11AskToDaemon23NotificationsController)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC11AskToDaemon23NotificationsController_userNotificationCenter;
  v5 = objc_allocWithZone(MEMORY[0x277CE2028]);
  v6 = sub_241165DA8();
  v7 = [v5 initWithBundleIdentifier_];

  *(&self->super.isa + v4) = v7;
  v9.receiver = self;
  v9.super_class = ObjectType;
  return [(NotificationsController *)&v9 init];
}

@end