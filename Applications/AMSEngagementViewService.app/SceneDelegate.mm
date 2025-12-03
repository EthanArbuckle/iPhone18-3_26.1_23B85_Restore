@interface SceneDelegate
- (UIWindow)window;
- (void)scene:(id)scene continueUserActivity:(id)activity;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)setWindow:(id)window;
@end

@implementation SceneDelegate

- (UIWindow)window
{
  v2 = sub_10000ED08();

  return v2;
}

- (void)setWindow:(id)window
{
  windowCopy = window;
  selfCopy = self;
  sub_10000ED94(window);
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_10000EDA8(sceneCopy, selfCopy, optionsCopy);
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  sub_100008CB8(0, &qword_100021F58, UIOpenURLContext_ptr);
  sub_100011B14(&qword_100021F60, &qword_100021F58, UIOpenURLContext_ptr);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  sceneCopy = scene;
  selfCopy = self;
  sub_10000F108(selfCopy, v6);
}

- (void)scene:(id)scene continueUserActivity:(id)activity
{
  sceneCopy = scene;
  activityCopy = activity;
  selfCopy = self;
  sub_10000F4B4(selfCopy, activityCopy);
}

@end