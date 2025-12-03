@interface ATXHomeScreenConfigurationDiffer
+ (BOOL)_widget:(id)_widget hasSamePersonalityAsOtherWidget:(id)widget;
- (ATXHomeScreenConfigurationDiffer)initWithPreviousConfigurations:(id)configurations currentConfigurations:(id)currentConfigurations;
- (void)_calculatePinnedWidgetChanges;
- (void)_calculateStackedWidgetChanges;
@end

@implementation ATXHomeScreenConfigurationDiffer

- (ATXHomeScreenConfigurationDiffer)initWithPreviousConfigurations:(id)configurations currentConfigurations:(id)currentConfigurations
{
  configurationsCopy = configurations;
  currentConfigurationsCopy = currentConfigurations;
  v16.receiver = self;
  v16.super_class = ATXHomeScreenConfigurationDiffer;
  v8 = [(ATXHomeScreenConfigurationDiffer *)&v16 init];
  if (v8)
  {
    v9 = [[ATXHomeScreenConfigurationComponents alloc] initWithConfigurations:configurationsCopy];
    previousComponents = v8->_previousComponents;
    v8->_previousComponents = v9;

    v11 = [[ATXHomeScreenConfigurationComponents alloc] initWithConfigurations:currentConfigurationsCopy];
    currentComponents = v8->_currentComponents;
    v8->_currentComponents = v11;

    v13 = [[ATXHomeScreenConfigurationComponentsDiffer alloc] initWithPreviousComponents:v8->_previousComponents currentComponents:v8->_currentComponents];
    componentsDiffer = v8->_componentsDiffer;
    v8->_componentsDiffer = v13;

    [(ATXHomeScreenConfigurationDiffer *)v8 _calculatePinnedWidgetChanges];
    [(ATXHomeScreenConfigurationDiffer *)v8 _calculateStackedWidgetChanges];
  }

  return v8;
}

- (void)_calculatePinnedWidgetChanges
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DFA0]);
  addedPinnedWidgets = [(ATXHomeScreenConfigurationComponentsDiffer *)self->_componentsDiffer addedPinnedWidgets];
  v5 = [v3 initWithArray:addedPinnedWidgets];

  v6 = objc_alloc(MEMORY[0x1E695DFA0]);
  selfCopy = self;
  deletedPinnedWidgets = [(ATXHomeScreenConfigurationComponentsDiffer *)self->_componentsDiffer deletedPinnedWidgets];
  v27 = [v6 initWithArray:deletedPinnedWidgets];

  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v5;
  v28 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v28)
  {
    v26 = *v34;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v34 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v12 = v27;
        v13 = [v12 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v30;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v30 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v29 + 1) + 8 * j);
              if (+[ATXHomeScreenConfigurationDiffer _widget:hasSamePersonalityAsOtherWidget:](ATXHomeScreenConfigurationDiffer, "_widget:hasSamePersonalityAsOtherWidget:", v17, v11) && ([v8 containsObject:v11] & 1) == 0 && (objc_msgSend(v9, "containsObject:", v17) & 1) == 0)
              {
                [v8 addObject:v11];
                [v9 addObject:v17];
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v14);
        }
      }

      v28 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v28);
  }

  [obj minusOrderedSet:v8];
  [v27 minusOrderedSet:v9];
  array = [obj array];
  addedPinnedWidgets = selfCopy->_addedPinnedWidgets;
  selfCopy->_addedPinnedWidgets = array;

  array2 = [v27 array];
  deletedPinnedWidgets = selfCopy->_deletedPinnedWidgets;
  selfCopy->_deletedPinnedWidgets = array2;

  array3 = [v8 array];
  configuredPinnedWidgets = selfCopy->_configuredPinnedWidgets;
  selfCopy->_configuredPinnedWidgets = array3;
}

- (void)_calculateStackedWidgetChanges
{
  v62 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DFA0]);
  userAddedStackedWidgets = [(ATXHomeScreenConfigurationComponentsDiffer *)self->_componentsDiffer userAddedStackedWidgets];
  v5 = [v3 initWithArray:userAddedStackedWidgets];

  v6 = objc_alloc(MEMORY[0x1E695DFA0]);
  userDeletedStackedWidgets = [(ATXHomeScreenConfigurationComponentsDiffer *)self->_componentsDiffer userDeletedStackedWidgets];
  v8 = [v6 initWithArray:userDeletedStackedWidgets];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  addedStacks = [(ATXHomeScreenConfigurationDiffer *)self addedStacks];
  v10 = [addedStacks countByEnumeratingWithState:&v54 objects:v61 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v55;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v55 != v12)
        {
          objc_enumerationMutation(addedStacks);
        }

        widgets = [*(*(&v54 + 1) + 8 * i) widgets];
        [v5 removeObjectsInArray:widgets];
      }

      v11 = [addedStacks countByEnumeratingWithState:&v54 objects:v61 count:16];
    }

    while (v11);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  deletedStacks = [(ATXHomeScreenConfigurationDiffer *)self deletedStacks];
  v16 = [deletedStacks countByEnumeratingWithState:&v50 objects:v60 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v51;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v51 != v18)
        {
          objc_enumerationMutation(deletedStacks);
        }

        widgets2 = [*(*(&v50 + 1) + 8 * j) widgets];
        [v8 removeObjectsInArray:widgets2];
      }

      v17 = [deletedStacks countByEnumeratingWithState:&v50 objects:v60 count:16];
    }

    while (v17);
  }

  selfCopy = self;

  v21 = objc_opt_new();
  v22 = objc_opt_new();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v5;
  v41 = [obj countByEnumeratingWithState:&v46 objects:v59 count:16];
  if (v41)
  {
    v39 = *v47;
    v40 = v8;
    do
    {
      for (k = 0; k != v41; ++k)
      {
        if (*v47 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v46 + 1) + 8 * k);
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v25 = v8;
        v26 = [v25 countByEnumeratingWithState:&v42 objects:v58 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v43;
          do
          {
            for (m = 0; m != v27; ++m)
            {
              if (*v43 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v42 + 1) + 8 * m);
              if (+[ATXHomeScreenConfigurationDiffer _widget:hasSamePersonalityAsOtherWidget:](ATXHomeScreenConfigurationDiffer, "_widget:hasSamePersonalityAsOtherWidget:", v30, v24) && ([v21 containsObject:v24] & 1) == 0 && (objc_msgSend(v22, "containsObject:", v30) & 1) == 0)
              {
                [v21 addObject:v24];
                [v22 addObject:v30];
              }
            }

            v27 = [v25 countByEnumeratingWithState:&v42 objects:v58 count:16];
          }

          while (v27);
        }

        v8 = v40;
      }

      v41 = [obj countByEnumeratingWithState:&v46 objects:v59 count:16];
    }

    while (v41);
  }

  [obj minusOrderedSet:v21];
  [v8 minusOrderedSet:v22];
  array = [obj array];
  widgetsAddedToStacksByUser = selfCopy->_widgetsAddedToStacksByUser;
  selfCopy->_widgetsAddedToStacksByUser = array;

  array2 = [v8 array];
  widgetsDeletedFromStacksByUser = selfCopy->_widgetsDeletedFromStacksByUser;
  selfCopy->_widgetsDeletedFromStacksByUser = array2;

  array3 = [v21 array];
  configuredStackedWidgets = selfCopy->_configuredStackedWidgets;
  selfCopy->_configuredStackedWidgets = array3;
}

+ (BOOL)_widget:(id)_widget hasSamePersonalityAsOtherWidget:(id)widget
{
  widgetCopy = widget;
  _widgetCopy = _widget;
  v7 = [ATXWidgetPersonality alloc];
  extensionBundleId = [_widgetCopy extensionBundleId];
  widgetKind = [_widgetCopy widgetKind];

  v10 = [(ATXWidgetPersonality *)v7 initWithExtensionBundleId:extensionBundleId kind:widgetKind];
  v11 = [ATXWidgetPersonality alloc];
  extensionBundleId2 = [widgetCopy extensionBundleId];
  widgetKind2 = [widgetCopy widgetKind];

  v14 = [(ATXWidgetPersonality *)v11 initWithExtensionBundleId:extensionBundleId2 kind:widgetKind2];
  LOBYTE(v11) = [(ATXWidgetPersonality *)v10 isEqual:v14];

  return v11;
}

@end