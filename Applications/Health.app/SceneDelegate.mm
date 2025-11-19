@interface SceneDelegate
- (_TtC6Health13SceneDelegate)init;
- (id)stateRestorationActivityForScene:(id)a3;
- (void)scene:(id)a3 continueUserActivity:(id)a4;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
- (void)setWindow:(id)a3;
- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5;
@end

@implementation SceneDelegate

- (_TtC6Health13SceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC6Health13SceneDelegate____lazy_storage___introFlowManager) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC6Health13SceneDelegate_deepLinkHandler) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC6Health13SceneDelegate_window) = 0;
  v3 = self + OBJC_IVAR____TtC6Health13SceneDelegate_rootViewController;
  v4 = type metadata accessor for SceneDelegate();
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(SceneDelegate *)&v6 init];
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_10000498C(v8, v9, v10);
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000F95C();
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001C800();
}

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC6Health13SceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC6Health13SceneDelegate_window) = a3;
  v3 = a3;
}

- (void)sceneWillResignActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100068DD4();
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100068FC8();
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  sub_100003DDC(0, &qword_1000DD128, UIOpenURLContext_ptr);
  sub_10000F078(&unk_1000DD130, &qword_1000DD128, UIOpenURLContext_ptr);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_10000F21C(v6);
}

- (void)scene:(id)a3 continueUserActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1000691BC(v7);
}

- (id)stateRestorationActivityForScene:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1000678D4(v4);

  return v6;
}

- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = a4;
  v9 = self;
  v10 = sub_100067440(v8);
  v7[2](v7, v10 & 1);

  _Block_release(v7);
}

@end