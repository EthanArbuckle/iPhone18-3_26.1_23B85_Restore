@interface SceneHostingDelegate
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillResignActive:(id)active;
@end

@implementation SceneHostingDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_10002DAB0(sceneCopy, sessionCopy, optionsCopy);
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  sub_100025778(0, &qword_10018A2E8, UIOpenURLContext_ptr);
  sub_10002E878(&qword_10018A2F0, &qword_10018A2E8, UIOpenURLContext_ptr);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  sceneCopy = scene;
  selfCopy = self;
  sub_10002E2D0();
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_10002E418(activeCopy);
}

- (void)sceneWillResignActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_10002E4AC(activeCopy);
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  selfCopy = self;
  sub_10002E540(backgroundCopy);
}

@end