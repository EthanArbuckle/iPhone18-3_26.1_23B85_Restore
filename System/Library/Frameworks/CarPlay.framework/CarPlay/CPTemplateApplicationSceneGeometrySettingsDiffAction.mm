@interface CPTemplateApplicationSceneGeometrySettingsDiffAction
- (UIApplicationSceneSettingsDiffInspector)sceneSettingsGeometryMutationDiffInspector;
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
- (void)_updateSceneGeometryWithSettingObserverContext:(id)context windowScene:(id)scene transitionContext:(id)transitionContext;
@end

@implementation CPTemplateApplicationSceneGeometrySettingsDiffAction

- (UIApplicationSceneSettingsDiffInspector)sceneSettingsGeometryMutationDiffInspector
{
  sceneSettingsGeometryMutationDiffInspector = self->_sceneSettingsGeometryMutationDiffInspector;
  if (!sceneSettingsGeometryMutationDiffInspector)
  {
    v4 = objc_opt_new();
    v5 = self->_sceneSettingsGeometryMutationDiffInspector;
    self->_sceneSettingsGeometryMutationDiffInspector = v4;

    [(UIApplicationSceneSettingsDiffInspector *)self->_sceneSettingsGeometryMutationDiffInspector observeFrameWithBlock:&__block_literal_global_19];
    sceneSettingsGeometryMutationDiffInspector = self->_sceneSettingsGeometryMutationDiffInspector;
  }

  return sceneSettingsGeometryMutationDiffInspector;
}

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  sceneCopy = scene;
  diffCopy = diff;
  contextCopy = context;
  v11 = diffCopy;
  v12 = contextCopy;
  v13 = sceneCopy;
  _UISceneSettingsDiffActionPerformActionsWithDelayForTransitionContext();
}

uint64_t __166__CPTemplateApplicationSceneGeometrySettingsDiffAction__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke(uint64_t a1)
{
  v4 = 0;
  v2 = [*(a1 + 32) sceneSettingsGeometryMutationDiffInspector];
  [v2 inspectDiff:*(a1 + 40) withContext:&v4];

  return [*(a1 + 32) _updateSceneGeometryWithSettingObserverContext:v4 windowScene:*(a1 + 48) transitionContext:*(a1 + 56)];
}

- (void)_updateSceneGeometryWithSettingObserverContext:(id)context windowScene:(id)scene transitionContext:(id)transitionContext
{
  sceneCopy = scene;
  v7 = sceneCopy;
  if (context.var0)
  {
    v8 = sceneCopy;
    _UISceneSettingsDiffActionPerformChangesWithTransitionContext();
  }
}

void __133__CPTemplateApplicationSceneGeometrySettingsDiffAction__updateSceneGeometryWithSettingObserverContext_windowScene_transitionContext___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [v3 _allWindows];
  [v3 _computeMetricsForWindows:v4 animated:a2];
}

@end