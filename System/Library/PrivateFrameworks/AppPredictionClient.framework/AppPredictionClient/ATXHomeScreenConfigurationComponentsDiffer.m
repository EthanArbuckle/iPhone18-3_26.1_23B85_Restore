@interface ATXHomeScreenConfigurationComponentsDiffer
- (ATXHomeScreenConfigurationComponentsDiffer)initWithPreviousComponents:(id)a3 currentComponents:(id)a4;
- (NSArray)addedApps;
- (NSArray)addedPinnedWidgets;
- (NSArray)addedStacks;
- (NSArray)deletedPinnedWidgets;
- (NSArray)deletedStacks;
- (NSArray)removedApps;
- (id)_widgetsByWidgetUniqueIds:(id)a3;
@end

@implementation ATXHomeScreenConfigurationComponentsDiffer

- (NSArray)addedApps
{
  v2 = [(NSOrderedCollectionDifference *)self->_appsDifference insertions];
  v3 = [v2 _pas_mappedArrayWithTransform:&__block_literal_global_19_2];

  return v3;
}

- (NSArray)removedApps
{
  v2 = [(NSOrderedCollectionDifference *)self->_appsDifference removals];
  v3 = [v2 _pas_mappedArrayWithTransform:&__block_literal_global_21];

  return v3;
}

- (ATXHomeScreenConfigurationComponentsDiffer)initWithPreviousComponents:(id)a3 currentComponents:(id)a4
{
  v80 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v76.receiver = self;
  v76.super_class = ATXHomeScreenConfigurationComponentsDiffer;
  v8 = [(ATXHomeScreenConfigurationComponentsDiffer *)&v76 init];
  if (v8)
  {
    v9 = [v7 pinnedWidgets];
    v10 = [v6 pinnedWidgets];
    v11 = [v9 differenceFromArray:v10 withOptions:0 usingEquivalenceTest:&__block_literal_global_67];
    pinnedWidgetsDifference = v8->_pinnedWidgetsDifference;
    v8->_pinnedWidgetsDifference = v11;

    v13 = [v7 stacks];
    v14 = [v6 stacks];
    v15 = [v13 differenceFromArray:v14 withOptions:0 usingEquivalenceTest:&__block_literal_global_13_0];
    stacksDifference = v8->_stacksDifference;
    v8->_stacksDifference = v15;

    obj = objc_opt_new();
    v57 = v6;
    v17 = [v6 stackedWidgets];
    v58 = v8;
    v18 = [(ATXHomeScreenConfigurationComponentsDiffer *)v8 _widgetsByWidgetUniqueIds:v17];

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v59 = v7;
    v19 = [v7 stackedWidgets];
    v20 = [v19 countByEnumeratingWithState:&v72 objects:v79 count:16];
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
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v72 + 1) + 8 * i);
          if (([v24 isSuggestedWidget] & 1) == 0)
          {
            v25 = [v24 widgetUniqueId];
            v26 = [v18 objectForKeyedSubscript:v25];

            if (!v26 || [v26 isSuggestedWidget])
            {
              [obj addObject:v24];
            }
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v72 objects:v79 count:16];
      }

      while (v21);
    }

    objc_storeStrong(&v8->_userAddedStackedWidgets, obj);
    v63 = objc_opt_new();
    v62 = objc_opt_new();
    v27 = [v59 stackedWidgets];
    v28 = [(ATXHomeScreenConfigurationComponentsDiffer *)v8 _widgetsByWidgetUniqueIds:v27];

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v29 = [v57 stackedWidgets];
    v30 = [v29 countByEnumeratingWithState:&v68 objects:v78 count:16];
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
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v68 + 1) + 8 * j);
          v35 = [v34 widgetUniqueId];
          v36 = [v28 objectForKeyedSubscript:v35];

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

        v31 = [v29 countByEnumeratingWithState:&v68 objects:v78 count:16];
      }

      while (v31);
    }

    objc_storeStrong(&v8->_userDeletedStackedWidgets, v63);
    objc_storeStrong(&v8->_deletedPreviousSuggestedWidgets, v62);
    v60 = objc_opt_new();
    v38 = [v59 stackedWidgets];
    v39 = [v59 pinnedWidgets];
    v40 = [v38 arrayByAddingObjectsFromArray:v39];

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
            v47 = [v46 widgetUniqueId];
            v48 = [v18 objectForKeyedSubscript:v47];
            v49 = [v48 isSuggestedWidget];

            if (v49)
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

    v7 = v59;
    v52 = [v59 apps];
    v6 = v57;
    v53 = [v57 apps];
    v54 = [v52 differenceFromArray:v53 withOptions:0 usingEquivalenceTest:&__block_literal_global_16_0];
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
  v2 = [(NSOrderedCollectionDifference *)self->_pinnedWidgetsDifference insertions];
  v3 = [v2 _pas_mappedArrayWithTransform:&__block_literal_global_23];

  return v3;
}

- (NSArray)deletedPinnedWidgets
{
  v2 = [(NSOrderedCollectionDifference *)self->_pinnedWidgetsDifference removals];
  v3 = [v2 _pas_mappedArrayWithTransform:&__block_literal_global_25];

  return v3;
}

- (NSArray)addedStacks
{
  v2 = [(NSOrderedCollectionDifference *)self->_stacksDifference insertions];
  v3 = [v2 _pas_mappedArrayWithTransform:&__block_literal_global_27_1];

  return v3;
}

- (NSArray)deletedStacks
{
  v2 = [(NSOrderedCollectionDifference *)self->_stacksDifference removals];
  v3 = [v2 _pas_mappedArrayWithTransform:&__block_literal_global_29];

  return v3;
}

- (id)_widgetsByWidgetUniqueIds:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
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
        v11 = [v10 widgetUniqueId];

        if (v11)
        {
          v12 = [v10 widgetUniqueId];
          [v4 setObject:v10 forKeyedSubscript:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

@end