@interface GameOverlayUIRemoteAlertSceneDelegate
- (_TtC13GameOverlayUI37GameOverlayUIRemoteAlertSceneDelegate)init;
- (void)remoteAlertScene:(id)a3 handleButtonActions:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)setWindow:(id)a3;
@end

@implementation GameOverlayUIRemoteAlertSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC13GameOverlayUI37GameOverlayUIRemoteAlertSceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC13GameOverlayUI37GameOverlayUIRemoteAlertSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1000DB780(v8);
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000DEBA4();
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000DED6C();
}

- (void)remoteAlertScene:(id)a3 handleButtonActions:(id)a4
{
  sub_10003F788(0, &qword_1001323F0, SBUIRemoteAlertButtonAction_ptr);
  sub_1000D8F30();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
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