@interface CPTemplateApplicationSceneGeometrySettingsDiffAction
- (UIApplicationSceneSettingsDiffInspector)sceneSettingsGeometryMutationDiffInspector;
- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8;
- (void)_updateSceneGeometryWithSettingObserverContext:(id)a3 windowScene:(id)a4 transitionContext:(id)a5;
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

- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8
{
  v10 = a3;
  v14 = a5;
  v15 = a7;
  v11 = v14;
  v12 = v15;
  v13 = v10;
  _UISceneSettingsDiffActionPerformActionsWithDelayForTransitionContext();
}

uint64_t __166__CPTemplateApplicationSceneGeometrySettingsDiffAction__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke(uint64_t a1)
{
  v4 = 0;
  v2 = [*(a1 + 32) sceneSettingsGeometryMutationDiffInspector];
  [v2 inspectDiff:*(a1 + 40) withContext:&v4];

  return [*(a1 + 32) _updateSceneGeometryWithSettingObserverContext:v4 windowScene:*(a1 + 48) transitionContext:*(a1 + 56)];
}

- (void)_updateSceneGeometryWithSettingObserverContext:(id)a3 windowScene:(id)a4 transitionContext:(id)a5
{
  v6 = a4;
  v7 = v6;
  if (a3.var0)
  {
    v8 = v6;
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