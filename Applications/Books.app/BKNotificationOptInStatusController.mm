@interface BKNotificationOptInStatusController
- (BKNotificationOptInStatusController)init;
- (BKNotificationOptInStatusController)initWithCenter:(id)center status:(int64_t)status;
- (void)checkAndReportOptInStatus;
@end

@implementation BKNotificationOptInStatusController

- (BKNotificationOptInStatusController)initWithCenter:(id)center status:(int64_t)status
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___BKNotificationOptInStatusController_center) = center;
  *(&self->super.isa + OBJC_IVAR___BKNotificationOptInStatusController_status) = status;
  v10.receiver = self;
  v10.super_class = ObjectType;
  centerCopy = center;
  return [(BKNotificationOptInStatusController *)&v10 init];
}

- (void)checkAndReportOptInStatus
{
  selfCopy = self;
  NotificationOptInStatusController.checkAndReportOptInStatus()();
}

- (BKNotificationOptInStatusController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end