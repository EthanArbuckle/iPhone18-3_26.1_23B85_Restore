@interface SceneDelegate
- (_TtC17AppleVisionProApp13SceneDelegate)init;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
@end

@implementation SceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_1000DFFAC(sceneCopy, optionsCopy);
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  sub_1000DFF60();
  sub_1000AC980();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  sceneCopy = scene;
  selfCopy = self;
  sub_1000DF8D8(sceneCopy, v6);
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_1000E0260("[%{public}s] sceneDidBecomeActive", sub_1000A3A28);
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  sub_1000E0260("[%{public}s] sceneWillEnterForeground", sub_1000A2C2C);
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  selfCopy = self;
  sub_1000E0260("[%{public}s] sceneDidEnterBackground", sub_1000A2EE4);
}

- (_TtC17AppleVisionProApp13SceneDelegate)init
{
  v3 = OBJC_IVAR____TtC17AppleVisionProApp13SceneDelegate_airplayReceiverLifecycleManager;
  *(&self->super.isa + v3) = [objc_allocWithZone(type metadata accessor for AirplayReceiverLifecycleManager()) init];
  v4 = (&self->super.isa + OBJC_IVAR____TtC17AppleVisionProApp13SceneDelegate_sceneIdentifierName);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v6.receiver = self;
  v6.super_class = type metadata accessor for SceneDelegate();
  return [(SceneDelegate *)&v6 init];
}

@end