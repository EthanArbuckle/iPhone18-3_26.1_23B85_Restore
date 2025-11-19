@interface CarPlaySceneDelegate
- (CarPlaySceneDelegate)init;
- (void)templateApplicationScene:(id)a3 didConnectInterfaceController:(id)a4;
- (void)templateApplicationScene:(id)a3 didDisconnectInterfaceController:(id)a4;
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

- (void)templateApplicationScene:(id)a3 didConnectInterfaceController:(id)a4
{
  type metadata accessor for MainActor();
  v8[2] = self;
  v8[3] = a4;
  v6 = a4;
  v7 = self;
  sub_100218B84(sub_10021A608, v8);
}

- (void)templateApplicationScene:(id)a3 didDisconnectInterfaceController:(id)a4
{
  type metadata accessor for MainActor();
  v6[2] = self;
  v5 = self;
  sub_100218B84(sub_10021A624, v6);
}

@end