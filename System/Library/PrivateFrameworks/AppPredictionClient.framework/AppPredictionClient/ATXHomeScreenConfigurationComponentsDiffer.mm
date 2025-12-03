@interface ATXHomeScreenConfigurationComponentsDiffer
- (ATXHomeScreenConfigurationComponentsDiffer)initWithPreviousComponents:(id)components currentComponents:(id)currentComponents;
- (NSArray)addedApps;
- (NSArray)addedPinnedWidgets;
- (NSArray)addedStacks;
- (NSArray)deletedPinnedWidgets;
- (NSArray)deletedStacks;
- (NSArray)removedApps;
- (id)_widgetsByWidgetUniqueIds:(id)ids;
@end

@implementation ATXHomeScreenConfigurationComponentsDiffer

- (NSArray)addedApps
{
  insertions = [(NSOrderedCollectionDifference *)self->_appsDifference insertions];
  v3 = [insertions _pas_mappedArrayWithTransform:&__block_literal_global_19_2];

  return v3;
}

- (NSArray)removedApps
{
  removals = [(NSOrderedCollectionDifference *)self->_appsDifference removals];
  v3 = [removals _pas_mappedArrayWithTransform:&__block_literal_global_21];

  return v3;
}

- (ATXHomeScreenConfigurationComponentsDiffer)initWithPreviousComponents:(id)components currentComponents:(id)currentComponents
{
  v80 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  currentComponentsCopy = currentComponents;
  v76.receiver = self;
  v76.super_class = ATXHomeScreenConfigurationComponentsDiffer;
  v8 = [(ATXHomeScreenConfigurationComponentsDiffer *)&v76 init];
  if (v8)
  {
    pinnedWidgets = [currentComponentsCopy pinnedWidgets];
    pinnedWidgets2 = [componentsCopy pinnedWidgets];
    v11 = [pinnedWidgets differenceFromArray:pinnedWidgets2 withOptions:0 usingEquivalenceTest:&__block_literal_global_67];
    pinnedWidgetsDifference = v8->_pinnedWidgetsDifference;
    v8->_pinnedWidgetsDifference = v11;

    stacks = [currentComponentsCopy stacks];
    stacks2 = [componentsCopy stacks];
    v15 = [stacks differenceFromArray:stacks2 withOptions:0 usingEquivalenceTest:&__block_literal_global_13_0];
    stacksDifference = v8->_stacksDifference;
    v8->_stacksDifference = v15;

    obj = objc_opt_new();
    v57 = componentsCopy;
    stackedWidgets = [componentsCopy stackedWidgets];
    v58 = v8;
    v18 = [(ATXHomeScreenConfigurationComponentsDiffer *)v8 _widgetsByWidgetUniqueIds:stackedWidgets];

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v59 = currentComponentsCopy;
    stackedWidgets2 = [currentComponentsCopy stackedWidgets];
    v20 = [stackedWidgets2 countByEnumeratingWithState:&v72 objects:v79 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v73;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v73 != v22)
          {
            objc_enumerationMutation(stackedWidgets2);
          }

          v24 = *(*(&v72 + 1) + 8 * i);
          if (([v24 isSuggestedWidget] & 1) == 0)
          {
            widgetUniqueId = [v24 widgetUniqueId];
            v26 = [v18 objectForKeyedSubscript:widgetUniqueId];

            if (!v26 || [v26 isSuggestedWidget])
            {
              [obj addObject:v24];
            }
          }
        }

        v21 = [stackedWidgets2 countByEnumeratingWithState:&v72 objects:v79 count:16];
      }

      while (v21);
    }

    objc_storeStrong(&v8->_userAddedStackedWidgets, obj);
    v63 = objc_opt_new();
    v62 = objc_opt_new();
    stackedWidgets3 = [v59 stackedWidgets];
    v28 = [(ATXHomeScreenConfigurationComponentsDiffer *)v8 _widgetsByWidgetUniqueIds:stackedWidgets3];

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    stackedWidgets4 = [v57 stackedWidgets];
    v30 = [stackedWidgets4 countByEnumeratingWithState:&v68 objects:v78 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v69;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v69 != v32)
          {
            objc_enumerationMutation(stackedWidgets4);
          }

          v34 = *(*(&v68 + 1) + 8 * j);
          widgetUniqueId2 = [v34 widgetUniqueId];
          v36 = [v28 objectForKeyedSubscript:widgetUniqueId2];

          if (!v36)
          {
            if ([v34 isSuggestedWidget])
            {
              v37 = v62;
            }

            else
            {
              v37 = v63;
            }

            [v37 addObject:v34];
          }
        }

        v31 = [stackedWidgets4 countByEnumeratingWithState:&v68 objects:v78 count:16];
      }

      while (v31);
    }

    objc_storeStrong(&v8->_userDeletedStackedWidgets, v63);
    objc_storeStrong(&v8->_deletedPreviousSuggestedWidgets, v62);
    v60 = objc_opt_new();
    stackedWidgets5 = [v59 stackedWidgets];
    pinnedWidgets3 = [v59 pinnedWidgets];
    v40 = [stackedWidgets5 arrayByAddingObjectsFromArray:pinnedWidgets3];

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v41 = v40;
    v42 = [v41 countByEnumeratingWithState:&v64 objects:v77 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v65;
      do
      {
        for (k = 0; k != v43; ++k)
        {
          if (*v65 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(*(&v64 + 1) + 8 * k);
          if (([v46 isSuggestedWidget] & 1) == 0)
          {
            widgetUniqueId3 = [v46 widgetUniqueId];
            v48 = [v18 objectForKeyedSubscript:widgetUniqueId3];
            isSuggestedWidget = [v48 isSuggestedWidget];

            if (isSuggestedWidget)
            {
              [(NSArray *)v60 addObject:v46];
            }
          }
        }

        v43 = [v41 countByEnumeratingWithState:&v64 objects:v77 count:16];
      }

      while (v43);
    }

    v8 = v58;
    userAddedPreviousSuggestedWidgets = v58->_userAddedPreviousSuggestedWidgets;
    v58->_userAddedPreviousSuggestedWidgets = v60;
    v51 = v60;

    currentComponentsCopy = v59;
    apps = [v59 apps];
    componentsCopy = v57;
    apps2 = [v57 apps];
    v54 = [apps differenceFromArray:apps2 withOptions:0 usingEquivalenceTest:&__block_literal_global_16_0];
    appsDifference = v58->_appsDifference;
    v58->_appsDifference = v54;
  }

  return v8;
}

void *__91__ATXHomeScreenConfigurationComponentsDiffer_initWithPreviousComponents_currentComponents___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 widgetUniqueId];

  if (v6)
  {
    v7 = [v4 widgetUniqueId];
    v8 = [v5 widgetUniqueId];
    v6 = [v7 isEqualToString:v8];
  }

  return v6;
}

uint64_t __91__ATXHomeScreenConfigurationComponentsDiffer_initWithPreviousComponents_currentComponents___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 identifier];
  v6 = [v4 identifier];

  v7 = [v5 isEqualToString:v6];
  return v7;
}

BOOL __91__ATXHomeScreenConfigurationComponentsDiffer_initWithPreviousComponents_currentComponents___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v4 isEqual:v5])
  {
    v6 = [v4 page];
    v7 = [v6 pageIndex];
    v8 = [v5 page];
    v9 = v7 == [v8 pageIndex];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSArray)addedPinnedWidgets
{
  insertions = [(NSOrderedCollectionDifference *)self->_pinnedWidgetsDifference insertions];
  v3 = [insertions _pas_mappedArrayWithTransform:&__block_literal_global_23];

  return v3;
}

- (NSArray)deletedPinnedWidgets
{
  removals = [(NSOrderedCollectionDifference *)self->_pinnedWidgetsDifference removals];
  v3 = [removals _pas_mappedArrayWithTransform:&__block_literal_global_25];

  return v3;
}

- (NSArray)addedStacks
{
  insertions = [(NSOrderedCollectionDifference *)self->_stacksDifference insertions];
  v3 = [insertions _pas_mappedArrayWithTransform:&__block_literal_global_27_1];

  return v3;
}

- (NSArray)deletedStacks
{
  removals = [(NSOrderedCollectionDifference *)self->_stacksDifference removals];
  v3 = [removals _pas_mappedArrayWithTransform:&__block_literal_global_29];

  return v3;
}

- (id)_widgetsByWidgetUniqueIds:(id)ids
{
  v19 = *MEMORY[0x1E69E9840];
  idsCopy = ids;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = idsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        widgetUniqueId = [v10 widgetUniqueId];

        if (widgetUniqueId)
        {
          widgetUniqueId2 = [v10 widgetUniqueId];
          [v4 setObject:v10 forKeyedSubscript:widgetUniqueId2];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

@end