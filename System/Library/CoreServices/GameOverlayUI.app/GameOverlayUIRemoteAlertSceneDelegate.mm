@interface GameOverlayUIRemoteAlertSceneDelegate
- (_TtC13GameOverlayUI37GameOverlayUIRemoteAlertSceneDelegate)init;
- (void)remoteAlertScene:(id)scene handleButtonActions:(id)actions;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)setWindow:(id)window;
@end

@implementation GameOverlayUIRemoteAlertSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC13GameOverlayUI37GameOverlayUIRemoteAlertSceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC13GameOverlayUI37GameOverlayUIRemoteAlertSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_1000DB780(sceneCopy);
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_1000DEBA4();
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_1000DED6C();
}

- (void)remoteAlertScene:(id)scene handleButtonActions:(id)actions
{
  sub_10003F788(0, &qword_1001323F0, SBUIRemoteAlertButtonAction_ptr);
  sub_1000D8F30();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  sceneCopy = scene;
  selfCopy = self;
  sub_1000DEF58(v6);
}

- (_TtC13GameOverlayUI37GameOverlayUIRemoteAlertSceneDelegate)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC13GameOverlayUI37GameOverlayUIRemoteAlertSceneDelegate_window) = 0;
  v4 = OBJC_IVAR____TtC13GameOverlayUI37GameOverlayUIRemoteAlertSceneDelegate_gamepadGestureDelegate;
  *(&self->super.isa + v4) = [objc_allocWithZone(type metadata accessor for GamepadGestureRecognizerDelegate()) init];
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(GameOverlayUIRemoteAlertSceneDelegate *)&v6 init];
}

@end