@interface NDSUSSceneDelegate
- (_TtC23NewDeviceSetupUIService18NDSUSSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)setWindow:(id)window;
@end

@implementation NDSUSSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC23NewDeviceSetupUIService18NDSUSSceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC23NewDeviceSetupUIService18NDSUSSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_1000077AC(sceneCopy);
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