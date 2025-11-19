@interface CPTemplateUISceneSettingsDiffAction
- (CPTemplateUISceneSettingsDiffAction)initWithInspectors:(id)a3;
- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8;
@end

@implementation CPTemplateUISceneSettingsDiffAction

- (CPTemplateUISceneSettingsDiffAction)initWithInspectors:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CPTemplateUISceneSettingsDiffAction;
  v6 = [(CPTemplateUISceneSettingsDiffAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_inspectors, a3);
  }

  return v7;
}

- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8
{
  v21 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [(CPTemplateUISceneSettingsDiffAction *)self inspectors];
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v16 + 1) + 8 * v14++) inspectDiff:v9 withContext:0];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end