@interface BrowserSceneDelegate
- (id)stateRestorationActivityForScene:(id)scene;
- (void)scene:(id)scene continueUserActivity:(id)activity;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneWillResignActive:(id)active;
- (void)setWindow:(id)window;
- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler;
@end

@implementation BrowserSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100003A80(sceneCopy, sessionCopy, optionsCopy);
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_100009D78(activeCopy);
}

- (void)setWindow:(id)window
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_100035674(disconnectCopy);
}

- (void)scene:(id)scene continueUserActivity:(id)activity
{
  sceneCopy = scene;
  activityCopy = activity;
  selfCopy = self;
  sub_10004F004(activityCopy);
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
  sub_100003A30(&qword_100093C28, &qword_100093C20, UIOpenURLContext_ptr);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  sceneCopy = scene;
  selfCopy = self;
  sub_10004FD50(v6);
}

- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  sceneCopy = scene;
  itemCopy = item;
  selfCopy = self;
  sub_10004FFAC(itemCopy, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)sceneWillResignActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_100050238();
}

- (id)stateRestorationActivityForScene:(id)scene
{
  sceneCopy = scene;
  selfCopy = self;
  v6 = sub_10004CFD4();

  return v6;
}

@end