@interface TirePressureSceneDelegate
- (_TtC12TirePressure25TirePressureSceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
@end

@implementation TirePressureSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100015974(v8, v9);
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100014FE0(v4);
}

- (void)sceneWillEnterForeground:(id)a3
{
  v5 = a3;
  v3 = [v5 session];
  v4 = [v3 role];

  CAFSignpostEmit_SceneWillEnterForeground();
}

- (_TtC12TirePressure25TirePressureSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC12TirePressure25TirePressureSceneDelegate_clusterWindowManager) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for TirePressureSceneDelegate();
  return [(TirePressureSceneDelegate *)&v3 init];
}

@end