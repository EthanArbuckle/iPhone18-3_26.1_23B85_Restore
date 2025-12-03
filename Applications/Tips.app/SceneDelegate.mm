@interface SceneDelegate
- (_TtC4Tips13SceneDelegate)init;
- (void)scene:(id)scene continueUserActivity:(id)activity;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)setWindow:(id)window;
- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler;
@end

@implementation SceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC4Tips13SceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC4Tips13SceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_10002A09C(sceneCopy, optionsCopy);
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  sub_10001AC14(0, &qword_1000B32D8, UIOpenURLContext_ptr);
  sub_10002AB3C(&qword_1000B32E0, &qword_1000B32D8, UIOpenURLContext_ptr);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100029A80(v5);

  v6 = *(&selfCopy->super.super.isa + OBJC_IVAR____TtC4Tips13SceneDelegate_appCoordinator);
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR___TPSAppCoordinator_mainViewController);
    [v7 setAccessType:0];
  }
}

- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  sceneCopy = scene;
  itemCopy = item;
  selfCopy = self;
  sub_10002A5EC(itemCopy, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)scene:(id)scene continueUserActivity:(id)activity
{
  sceneCopy = scene;
  activityCopy = activity;
  selfCopy = self;
  sub_10002A6F0(activityCopy);
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  sub_10002A780();
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  selfCopy = self;
  sub_10002A8E8();
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_10002AA30();
}

- (void)sceneDidBecomeActive:(id)active
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