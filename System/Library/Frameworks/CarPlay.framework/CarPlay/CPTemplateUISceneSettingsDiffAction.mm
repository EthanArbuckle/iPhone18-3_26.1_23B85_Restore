@interface CPTemplateUISceneSettingsDiffAction
- (CPTemplateUISceneSettingsDiffAction)initWithInspectors:(id)inspectors;
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
@end

@implementation CPTemplateUISceneSettingsDiffAction

- (CPTemplateUISceneSettingsDiffAction)initWithInspectors:(id)inspectors
{
  inspectorsCopy = inspectors;
  v9.receiver = self;
  v9.super_class = CPTemplateUISceneSettingsDiffAction;
  v6 = [(CPTemplateUISceneSettingsDiffAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_inspectors, inspectors);
  }

  return v7;
}

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  v21 = *MEMORY[0x277D85DE8];
  diffCopy = diff;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  inspectors = [(CPTemplateUISceneSettingsDiffAction *)self inspectors];
  v11 = [inspectors countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(inspectors);
        }

        [*(*(&v16 + 1) + 8 * v14++) inspectDiff:diffCopy withContext:0];
      }

      while (v12 != v14);
      v12 = [inspectors countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end