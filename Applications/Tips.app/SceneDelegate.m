@interface SceneDelegate
- (_TtC4Tips13SceneDelegate)init;
- (void)scene:(id)a3 continueUserActivity:(id)a4;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)setWindow:(id)a3;
- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5;
@end

@implementation SceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC4Tips13SceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC4Tips13SceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_10002A09C(v8, v10);
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  sub_10001AC14(0, &qword_1000B32D8, UIOpenURLContext_ptr);
  sub_10002AB3C(&qword_1000B32E0, &qword_1000B32D8, UIOpenURLContext_ptr);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_100029A80(v5);

  v6 = *(&v8->super.super.isa + OBJC_IVAR____TtC4Tips13SceneDelegate_appCoordinator);
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR___TPSAppCoordinator_mainViewController);
    [v7 setAccessType:0];
  }
}

- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_10002A5EC(v10, v11, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)scene:(id)a3 continueUserActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10002A6F0(v7);
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10002A780();
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10002A8E8();
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10002AA30();
}

- (void)sceneDidBecomeActive:(id)a3
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC4Tips13SceneDelegate_appCoordinator);
  if (v3)
  {
    [*(v3 + OBJC_IVAR___TPSAppCoordinator_mainViewController) applicationDidBecomeActive];
  }
}

- (_TtC4Tips13SceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC4Tips13SceneDelegate_window) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC4Tips13SceneDelegate_appCoordinator) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SceneDelegate();
  return [(SceneDelegate *)&v3 init];
}

@end