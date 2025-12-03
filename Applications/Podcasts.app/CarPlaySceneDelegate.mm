@interface CarPlaySceneDelegate
- (CarPlaySceneDelegate)init;
- (void)templateApplicationScene:(id)scene didConnectInterfaceController:(id)controller;
- (void)templateApplicationScene:(id)scene didDisconnectInterfaceController:(id)controller;
@end

@implementation CarPlaySceneDelegate

- (CarPlaySceneDelegate)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___CarPlaySceneDelegate_coordinator) = 0;
  *(&self->super.isa + OBJC_IVAR___CarPlaySceneDelegate_connectTask) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(CarPlaySceneDelegate *)&v5 init];
}

- (void)templateApplicationScene:(id)scene didConnectInterfaceController:(id)controller
{
  type metadata accessor for MainActor();
  v8[2] = self;
  v8[3] = controller;
  controllerCopy = controller;
  selfCopy = self;
  sub_100218B84(sub_10021A608, v8);
}

- (void)templateApplicationScene:(id)scene didDisconnectInterfaceController:(id)controller
{
  type metadata accessor for MainActor();
  v6[2] = self;
  selfCopy = self;
  sub_100218B84(sub_10021A624, v6);
}

@end