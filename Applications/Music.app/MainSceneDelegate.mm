@interface MainSceneDelegate
- (void)scene:(id)a3 continueUserActivity:(id)a4;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)scene:(id)a3 willContinueUserActivityWithType:(id)a4;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
- (void)setWindow:(id)a3;
- (void)windowScene:(id)a3 didUpdateEffectiveGeometry:(id)a4;
- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5;
@end

@implementation MainSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_10002C53C(v8, v9, v10);
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10005DD8C(v4);
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10006B3B0(v4);
}

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC5Music17MainSceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC5Music17MainSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10045C0E0(v4);
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10045C684(v4);
}

- (void)sceneWillResignActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10045D994(v4);
}

- (void)scene:(id)a3 continueUserActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10045C984(v6, v7);
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  sub_100009F78(0, &qword_101189758);
  sub_10005C54C(&qword_101189760, &qword_101189758);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_10005C59C(v7, v6);
}

- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_10045D310(v10, v11, sub_1001DEF90, v9);
}

- (void)scene:(id)a3 willContinueUserActivityWithType:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a3;
  v10 = self;
  sub_10045DB88(v6, v8);
}

- (void)windowScene:(id)a3 didUpdateEffectiveGeometry:(id)a4
{
  v7 = a3;
  v4 = [v7 effectiveGeometry];
  v5 = [v4 isInteractivelyResizing];

  if ((v5 & 1) == 0)
  {
    v6 = [objc_opt_self() defaultCenter];
    if (qword_10117F740 != -1)
    {
      swift_once();
    }

    [v6 postNotificationName:qword_101218D40 object:v7];
  }
}

@end