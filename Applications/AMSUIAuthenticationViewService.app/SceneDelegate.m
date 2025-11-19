@interface SceneDelegate
- (UIWindow)window;
- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)setWindow:(id)a3;
@end

@implementation SceneDelegate

- (UIWindow)window
{
  v2 = sub_1000038E0();

  return v2;
}

- (void)setWindow:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10000396C(a3);
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100003980(v8);
}

- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6
{
  sub_100004700();
  sub_100004744();
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  sub_100004094(v10);

  v15.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v15.super.isa;
}

@end