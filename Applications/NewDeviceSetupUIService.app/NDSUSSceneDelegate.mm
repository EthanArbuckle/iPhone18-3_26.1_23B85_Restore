@interface NDSUSSceneDelegate
- (_TtC23NewDeviceSetupUIService18NDSUSSceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)setWindow:(id)a3;
@end

@implementation NDSUSSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC23NewDeviceSetupUIService18NDSUSSceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC23NewDeviceSetupUIService18NDSUSSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1000077AC(v8);
}

- (_TtC23NewDeviceSetupUIService18NDSUSSceneDelegate)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC23NewDeviceSetupUIService18NDSUSSceneDelegate_window) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC23NewDeviceSetupUIService18NDSUSSceneDelegate_navigation) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC23NewDeviceSetupUIService18NDSUSSceneDelegate_cardNavigationController) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC23NewDeviceSetupUIService18NDSUSSceneDelegate_device) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(NDSUSSceneDelegate *)&v5 init];
}

@end