@interface RadioWindowSceneDelegate
- (_TtC5Media24RadioWindowSceneDelegate)init;
- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneWillEnterForeground:(id)a3;
@end

@implementation RadioWindowSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_10004B4B8(v8, v9);
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10004B7DC(v4);
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  sub_100005A50(0, &qword_1000ECF40, UIOpenURLContext_ptr);
  sub_10004BC80();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_10004B910(v6);
}

- (_TtC5Media24RadioWindowSceneDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RadioWindowSceneDelegate();
  return [(RadioWindowSceneDelegate *)&v3 init];
}

- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = self;
  sub_10004BB24(a3, a4);
}

@end