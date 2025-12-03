@interface NFCUIRemoteAlertSceneDelegate
- (_TtC17NFCUISceneService29NFCUIRemoteAlertSceneDelegate)init;
- (void)remoteAlertScene:(id)scene handleButtonActions:(id)actions;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)setWindow:(id)window;
@end

@implementation NFCUIRemoteAlertSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC17NFCUISceneService29NFCUIRemoteAlertSceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC17NFCUISceneService29NFCUIRemoteAlertSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100004DE4(sceneCopy);
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_100005D9C();
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_100006054();
}

- (void)remoteAlertScene:(id)scene handleButtonActions:(id)actions
{
  sub_100002238(0, &qword_10001DAF0, SBUIRemoteAlertButtonAction_ptr);
  sub_1000043A8();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  sceneCopy = scene;
  selfCopy = self;
  sub_100006150();
}

- (_TtC17NFCUISceneService29NFCUIRemoteAlertSceneDelegate)init
{
  *(&self->super.isa + OBJC_IVAR____TtC17NFCUISceneService29NFCUIRemoteAlertSceneDelegate_window) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC17NFCUISceneService29NFCUIRemoteAlertSceneDelegate_hostCoordinator) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for NFCUIRemoteAlertSceneDelegate();
  return [(NFCUIRemoteAlertSceneDelegate *)&v3 init];
}

@end