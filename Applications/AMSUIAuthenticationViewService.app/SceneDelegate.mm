@interface SceneDelegate
- (UIWindow)window;
- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)setWindow:(id)window;
@end

@implementation SceneDelegate

- (UIWindow)window
{
  v2 = sub_1000038E0();

  return v2;
}

- (void)setWindow:(id)window
{
  windowCopy = window;
  selfCopy = self;
  sub_10000396C(window);
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100003980(sceneCopy);
}

- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context
{
  sub_100004700();
  sub_100004744();
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  sceneCopy = scene;
  iSceneCopy = iScene;
  contextCopy = context;
  selfCopy = self;
  sub_100004094(v10);

  v15.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v15.super.isa;
}

@end