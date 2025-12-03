@interface ProxCardFlowEngine
- (_TtC21TDGSharingViewService18ProxCardFlowEngine)init;
- (void)handleDeviceSetupNotification:(id)notification;
@end

@implementation ProxCardFlowEngine

- (void)handleDeviceSetupNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_100018BA0(notificationCopy);
}

- (_TtC21TDGSharingViewService18ProxCardFlowEngine)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end