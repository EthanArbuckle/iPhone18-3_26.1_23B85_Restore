@interface MainSceneDelegate
- (void)scene:(id)scene continueUserActivity:(id)activity;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)scene:(id)scene willContinueUserActivityWithType:(id)type;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
- (void)setWindow:(id)window;
- (void)windowScene:(id)scene didUpdateEffectiveGeometry:(id)geometry;
- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler;
@end

@implementation MainSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_10002C53C(sceneCopy, sessionCopy, optionsCopy);
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  sub_10005DD8C(foregroundCopy);
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_10006B3B0(activeCopy);
}

- (void)setWindow:(id)window
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC5Music17MainSceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC5Music17MainSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  selfCopy = self;
  sub_10045C0E0(backgroundCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_10045C684(disconnectCopy);
}

- (void)sceneWillResignActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_10045D994(activeCopy);
}

- (void)scene:(id)scene continueUserActivity:(id)activity
{
  sceneCopy = scene;
  activityCopy = activity;
  selfCopy = self;
  sub_10045C984(sceneCopy, activityCopy);
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  sub_100009F78(0, &qword_101189758);
  sub_10005C54C(&qword_101189760, &qword_101189758);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  sceneCopy = scene;
  selfCopy = self;
  sub_10005C59C(sceneCopy, v6);
}

- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  sceneCopy = scene;
  itemCopy = item;
  selfCopy = self;
  sub_10045D310(sceneCopy, itemCopy, sub_1001DEF90, v9);
}

- (void)scene:(id)scene willContinueUserActivityWithType:(id)type
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  sceneCopy = scene;
  selfCopy = self;
  sub_10045DB88(v6, v8);
}

- (void)windowScene:(id)scene didUpdateEffectiveGeometry:(id)geometry
{
  sceneCopy = scene;
  effectiveGeometry = [sceneCopy effectiveGeometry];
  isInteractivelyResizing = [effectiveGeometry isInteractivelyResizing];

  if ((isInteractivelyResizing & 1) == 0)
  {
    defaultCenter = [objc_opt_self() defaultCenter];
    if (qword_10117F740 != -1)
    {
      swift_once();
    }

    [defaultCenter postNotificationName:qword_101218D40 object:sceneCopy];
  }
}

@end