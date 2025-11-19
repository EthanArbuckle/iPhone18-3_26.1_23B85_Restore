@interface BrowserSceneDelegate
- (id)stateRestorationActivityForScene:(id)a3;
- (void)scene:(id)a3 continueUserActivity:(id)a4;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneWillResignActive:(id)a3;
- (void)setWindow:(id)a3;
- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5;
@end

@implementation BrowserSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100003A80(v8, v9, v10);
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100009D78(v4);
}

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100035674(v4);
}

- (void)scene:(id)a3 continueUserActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10004F004(v7);
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
  sub_100003A30(&qword_100093C28, &qword_100093C20, UIOpenURLContext_ptr);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_10004FD50(v6);
}

- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_10004FFAC(v10, v11, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)sceneWillResignActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100050238();
}

- (id)stateRestorationActivityForScene:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10004CFD4();

  return v6;
}

@end