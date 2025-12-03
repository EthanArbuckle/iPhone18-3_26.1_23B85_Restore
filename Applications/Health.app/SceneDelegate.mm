@interface SceneDelegate
- (_TtC6Health13SceneDelegate)init;
- (id)stateRestorationActivityForScene:(id)scene;
- (void)scene:(id)scene continueUserActivity:(id)activity;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
- (void)setWindow:(id)window;
- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler;
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

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_10000498C(sceneCopy, sessionCopy, optionsCopy);
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  sub_10000F95C();
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_10001C800();
}

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC6Health13SceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC6Health13SceneDelegate_window) = window;
  windowCopy = window;
}

- (void)sceneWillResignActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_100068DD4();
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  selfCopy = self;
  sub_100068FC8();
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  sub_100003DDC(0, &qword_1000DD128, UIOpenURLContext_ptr);
  sub_10000F078(&unk_1000DD130, &qword_1000DD128, UIOpenURLContext_ptr);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  sceneCopy = scene;
  selfCopy = self;
  sub_10000F21C(v6);
}

- (void)scene:(id)scene continueUserActivity:(id)activity
{
  sceneCopy = scene;
  activityCopy = activity;
  selfCopy = self;
  sub_1000691BC(activityCopy);
}

- (id)stateRestorationActivityForScene:(id)scene
{
  sceneCopy = scene;
  selfCopy = self;
  v6 = sub_1000678D4(sceneCopy);

  return v6;
}

- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  itemCopy = item;
  selfCopy = self;
  v10 = sub_100067440(itemCopy);
  v7[2](v7, v10 & 1);

  _Block_release(v7);
}

@end