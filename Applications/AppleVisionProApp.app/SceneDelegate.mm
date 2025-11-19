@interface SceneDelegate
- (_TtC17AppleVisionProApp13SceneDelegate)init;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
@end

@implementation SceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1000DFFAC(v8, v10);
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  sub_1000DFF60();
  sub_1000AC980();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_1000DF8D8(v7, v6);
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000E0260("[%{public}s] sceneDidBecomeActive", sub_1000A3A28);
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000E0260("[%{public}s] sceneWillEnterForeground", sub_1000A2C2C);
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000E0260("[%{public}s] sceneDidEnterBackground", sub_1000A2EE4);
}

- (_TtC17AppleVisionProApp13SceneDelegate)init
{
  v3 = OBJC_IVAR____TtC17AppleVisionProApp13SceneDelegate_airplayReceiverLifecycleManager;
  *(&self->super.isa + v3) = [objc_allocWithZone(type metadata accessor for AirplayReceiverLifecycleManager()) init];
  v4 = (&self->super.isa + OBJC_IVAR____TtC17AppleVisionProApp13SceneDelegate_sceneIdentifierName);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v6.receiver = self;
  v6.super_class = type metadata accessor for SceneDelegate();
  return [(SceneDelegate *)&v6 init];
}

@end