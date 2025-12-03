@interface ClarityUIListLayoutSettingsDiffAction
- (_TtC7SwiftUI37ClarityUIListLayoutSettingsDiffAction)init;
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
@end

@implementation ClarityUIListLayoutSettingsDiffAction

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  sceneCopy = scene;
  sSceneCopy = sScene;
  diffCopy = diff;
  settingsCopy = settings;
  contextCopy = context;
  selfCopy = self;
  specialized ClarityUIListLayoutSettingsDiffAction._performActions(for:withUpdatedFBSScene:settingsDiff:from:transitionContext:lifecycleActionType:)(diff);
}

- (_TtC7SwiftUI37ClarityUIListLayoutSettingsDiffAction)init
{
  *(&self->super.isa + OBJC_IVAR____TtC7SwiftUI37ClarityUIListLayoutSettingsDiffAction____lazy_storage___diffInspector) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ClarityUIListLayoutSettingsDiffAction();
  return [(ClarityUIListLayoutSettingsDiffAction *)&v3 init];
}

@end