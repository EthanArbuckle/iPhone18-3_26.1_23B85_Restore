@interface RemoteAlertSceneDelegate
- (_TtC21AppleIDSetupUIService24RemoteAlertSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)setWindow:(id)window;
@end

@implementation RemoteAlertSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC21AppleIDSetupUIService24RemoteAlertSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC21AppleIDSetupUIService24RemoteAlertSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_1000104A0(sceneCopy);
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_10001128C();
}

- (_TtC21AppleIDSetupUIService24RemoteAlertSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC21AppleIDSetupUIService24RemoteAlertSceneDelegate_window) = 0;
  type metadata accessor for PresentationRequest();
  swift_storeEnumTagMultiPayload();
  v4.receiver = self;
  v4.super_class = type metadata accessor for RemoteAlertSceneDelegate();
  return [(RemoteAlertSceneDelegate *)&v4 init];
}

@end