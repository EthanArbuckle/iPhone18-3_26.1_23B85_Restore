@interface HOSceneDelegate
- (void)navigateToEnergyCategoryWithNotification:(id)a3;
- (void)scene:(id)a3 continueUserActivity:(id)a4;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
- (void)setWindow:(id)a3;
- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5;
@end

@implementation HOSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100073510(v8, v9, v10);
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  sub_10005B9DC(0, &qword_1000DA830, UIOpenURLContext_ptr);
  sub_100057D7C(&qword_1000DA6C0, &qword_1000DA830, UIOpenURLContext_ptr);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_100075C64(v6);
}

- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_1000762EC(v10, v11, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)scene:(id)a3 continueUserActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10007607C(v7);
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000764D8(v4);
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100074924(v4);
}

- (void)sceneWillResignActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100074F70(v4);
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100076A4C(v4);
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100076CD0(v4);
}

- (void)navigateToEnergyCategoryWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000755F4(v4);
}

@end