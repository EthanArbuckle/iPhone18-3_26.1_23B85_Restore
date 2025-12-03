@interface SceneSettingsDiffAction
- (_TtC16SharingUIService23SceneSettingsDiffAction)init;
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
@end

@implementation SceneSettingsDiffAction

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  if (!scene)
  {
    __break(1u);
    return;
  }

  sceneCopy = scene;
  if (![sceneCopy delegate])
  {
    goto LABEL_5;
  }

  type metadata accessor for SceneDelegate();
  if (swift_dynamicCastClass())
  {
    sub_100017390(sceneCopy);
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