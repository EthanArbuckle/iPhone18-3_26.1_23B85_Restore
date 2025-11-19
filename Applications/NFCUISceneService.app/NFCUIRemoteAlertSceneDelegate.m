@interface NFCUIRemoteAlertSceneDelegate
- (_TtC17NFCUISceneService29NFCUIRemoteAlertSceneDelegate)init;
- (void)remoteAlertScene:(id)a3 handleButtonActions:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)setWindow:(id)a3;
@end

@implementation NFCUIRemoteAlertSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC17NFCUISceneService29NFCUIRemoteAlertSceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC17NFCUISceneService29NFCUIRemoteAlertSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100004DE4(v8);
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100005D9C();
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100006054();
}

- (void)remoteAlertScene:(id)a3 handleButtonActions:(id)a4
{
  sub_100002238(0, &qword_10001DAF0, SBUIRemoteAlertButtonAction_ptr);
  sub_1000043A8();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a3;
  v7 = self;
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