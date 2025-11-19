@interface SceneHostingDelegate
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
@end

@implementation SceneHostingDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_10002DAB0(v8, v9, v10);
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  sub_100025778(0, &qword_10018A2E8, UIOpenURLContext_ptr);
  sub_10002E878(&qword_10018A2F0, &qword_10018A2E8, UIOpenURLContext_ptr);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a3;
  v7 = self;
  sub_10002E2D0();
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10002E418(v4);
}

- (void)sceneWillResignActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10002E4AC(v4);
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10002E540(v4);
}

@end