@interface SceneSettingsDiffAction
- (_TtC16SharingUIService23SceneSettingsDiffAction)init;
- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8;
@end

@implementation SceneSettingsDiffAction

- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8
{
  if (!a3)
  {
    __break(1u);
    return;
  }

  v8 = a3;
  if (![v8 delegate])
  {
    goto LABEL_5;
  }

  type metadata accessor for SceneDelegate();
  if (swift_dynamicCastClass())
  {
    sub_100017390(v8);
    swift_unknownObjectRelease();
LABEL_5:

    return;
  }

  swift_unknownObjectRelease();
}

- (_TtC16SharingUIService23SceneSettingsDiffAction)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SceneSettingsDiffAction();
  return [(SceneSettingsDiffAction *)&v3 init];
}

@end