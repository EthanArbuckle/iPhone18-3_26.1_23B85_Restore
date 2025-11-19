@interface RemoteAlertSceneDelegate
- (_TtC9AirDropUI24RemoteAlertSceneDelegate)init;
- (void)remoteAlertScene:(id)a3 handleButtonActions:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)setWindow:(id)a3;
@end

@implementation RemoteAlertSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC9AirDropUI24RemoteAlertSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC9AirDropUI24RemoteAlertSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1000254E8(v8);
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100025EC4();
}

- (_TtC9AirDropUI24RemoteAlertSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC9AirDropUI24RemoteAlertSceneDelegate_window) = 0;
  v3 = OBJC_IVAR____TtC9AirDropUI24RemoteAlertSceneDelegate_presentationRequest;
  v4 = type metadata accessor for SFRemoteAlertPresentationRequest();
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  v6.receiver = self;
  v6.super_class = type metadata accessor for RemoteAlertSceneDelegate();
  return [(RemoteAlertSceneDelegate *)&v6 init];
}

- (void)remoteAlertScene:(id)a3 handleButtonActions:(id)a4
{
  sub_100025408();
  sub_100025454();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_1000262CC(v7, v6);
}

@end