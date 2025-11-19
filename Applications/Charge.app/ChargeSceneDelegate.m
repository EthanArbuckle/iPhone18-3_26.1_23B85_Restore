@interface ChargeSceneDelegate
- (_TtC6Charge19ChargeSceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
@end

@implementation ChargeSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100006E9C(v8, v9);
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100006BC8(v4);
}

- (void)sceneWillEnterForeground:(id)a3
{
  v5 = a3;
  v3 = [v5 session];
  v4 = [v3 role];

  CAFSignpostEmit_SceneWillEnterForeground();
}

- (_TtC6Charge19ChargeSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC6Charge19ChargeSceneDelegate_consoleWindowManager) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC6Charge19ChargeSceneDelegate_clusterWindowManager) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ChargeSceneDelegate();
  return [(ChargeSceneDelegate *)&v3 init];
}

@end