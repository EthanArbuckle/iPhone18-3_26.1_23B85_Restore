@interface ATXHomeScreenConfigurationComponents
- (ATXHomeScreenConfigurationComponents)initWithConfigurations:(id)configurations;
- (BOOL)containsWidgetWithBundleId:(id)id kind:(id)kind size:(unint64_t)size;
- (id)stackForStackedWidget:(id)widget;
@end

@implementation ATXHomeScreenConfigurationComponents

- (ATXHomeScreenConfigurationComponents)initWithConfigurations:(id)configurations
{
  v87 = *MEMORY[0x1E69E9840];
  configurationsCopy = configurations;
  v80.receiver = self;
  v80.super_class = ATXHomeScreenConfigurationComponents;
  v5 = [(ATXHomeScreenConfigurationComponents *)&v80 init];
  if (v5)
  {
    v6 = objc_opt_new();
    stackForStackedWidgetIdDictionary = v5->_stackForStackedWidgetIdDictionary;
    v5->_stackForStackedWidgetIdDictionary = v6;

    v52 = objc_opt_new();
    v8 = objc_opt_new();
    v9 = objc_opt_new();
    v57 = objc_opt_new();
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v49 = configurationsCopy;
    obj = configurationsCopy;
    v53 = [obj countByEnumeratingWithState:&v76 objects:v86 count:16];
    if (v53)
    {
      v51 = *v77;
      v56 = v8;
      do
      {
        v10 = 0;
        do
        {
          if (*v77 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v76 + 1) + 8 * v10);
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v54 = v10;
          v55 = v11;
          stacks = [v11 stacks];
          v13 = [stacks countByEnumeratingWithState:&v72 objects:v85 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v73;
            v58 = *v73;
            v59 = stacks;
            do
            {
              v16 = 0;
              v60 = v14;
              do
              {
                if (*v73 != v15)
                {
                  objc_enumerationMutation(stacks);
                }

                v17 = *(*(&v72 + 1) + 8 * v16);
                widgets = [v17 widgets];
                v19 = [widgets count];

                widgets2 = [v17 widgets];
                v21 = widgets2;
                if (v19 == 1)
                {
                  firstObject = [widgets2 firstObject];

                  [v8 addObject:firstObject];
                }

                else
                {
                  v23 = [widgets2 count];

                  if (v23 >= 2)
                  {
                    v61 = v16;
                    v70 = 0u;
                    v71 = 0u;
                    v68 = 0u;
                    v69 = 0u;
                    widgets3 = [v17 widgets];
                    v25 = [widgets3 countByEnumeratingWithState:&v68 objects:v84 count:16];
                    if (v25)
                    {
                      v26 = v25;
                      v27 = *v69;
                      do
                      {
                        for (i = 0; i != v26; ++i)
                        {
                          if (*v69 != v27)
                          {
                            objc_enumerationMutation(widgets3);
                          }

                          v29 = *(*(&v68 + 1) + 8 * i);
                          [v9 addObject:v29];
                          widgetUniqueId = [v29 widgetUniqueId];

                          if (widgetUniqueId)
                          {
                            v31 = v5->_stackForStackedWidgetIdDictionary;
                            widgetUniqueId2 = [v29 widgetUniqueId];
                            [(NSMutableDictionary *)v31 setObject:v17 forKeyedSubscript:widgetUniqueId2];
                          }

                          else
                          {
                            widgetUniqueId2 = __atxlog_handle_home_screen();
                            if (os_log_type_enabled(widgetUniqueId2, OS_LOG_TYPE_FAULT))
                            {
                              *buf = 138412290;
                              v83 = v29;
                              _os_log_fault_impl(&dword_1BF549000, widgetUniqueId2, OS_LOG_TYPE_FAULT, "ATXHomeScreenConfigurationComponents: stacked widget has no widgetUniqueId: %@", buf, 0xCu);
                            }
                          }
                        }

                        v26 = [widgets3 countByEnumeratingWithState:&v68 objects:v84 count:16];
                      }

                      while (v26);
                    }

                    [v57 addObject:v17];
                    v8 = v56;
                    v15 = v58;
                    stacks = v59;
                    v14 = v60;
                    v16 = v61;
                  }
                }

                ++v16;
              }

              while (v16 != v14);
              v14 = [stacks countByEnumeratingWithState:&v72 objects:v85 count:16];
            }

            while (v14);
          }

          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          panels = [v55 panels];
          v34 = [panels countByEnumeratingWithState:&v64 objects:v81 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = *v65;
            do
            {
              for (j = 0; j != v35; ++j)
              {
                if (*v65 != v36)
                {
                  objc_enumerationMutation(panels);
                }

                widgets4 = [*(*(&v64 + 1) + 8 * j) widgets];
                firstObject2 = [widgets4 firstObject];

                [v8 addObject:firstObject2];
              }

              v35 = [panels countByEnumeratingWithState:&v64 objects:v81 count:16];
            }

            while (v35);
          }

          v62[0] = MEMORY[0x1E69E9820];
          v62[1] = 3221225472;
          v62[2] = __63__ATXHomeScreenConfigurationComponents_initWithConfigurations___block_invoke;
          v62[3] = &unk_1E80C3DB8;
          v62[4] = v55;
          v63 = v52;
          [v55 enumerateApps:v62];

          v10 = v54 + 1;
        }

        while (v54 + 1 != v53);
        v53 = [obj countByEnumeratingWithState:&v76 objects:v86 count:16];
      }

      while (v53);
    }

    v40 = [v9 copy];
    stackedWidgets = v5->_stackedWidgets;
    v5->_stackedWidgets = v40;

    v42 = [v8 copy];
    pinnedWidgets = v5->_pinnedWidgets;
    v5->_pinnedWidgets = v42;

    v44 = [v57 copy];
    stacks = v5->_stacks;
    v5->_stacks = v44;

    v46 = [v52 copy];
    apps = v5->_apps;
    v5->_apps = v46;

    configurationsCopy = v49;
  }

  return v5;
}

void __63__ATXHomeScreenConfigurationComponents_initWithConfigurations___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setPage:v3];
  [*(a1 + 40) addObject:v4];
}

- (id)stackForStackedWidget:(id)widget
{
  widgetCopy = widget;
  widgetUniqueId = [widgetCopy widgetUniqueId];

  if (widgetUniqueId)
  {
    stackForStackedWidgetIdDictionary = self->_stackForStackedWidgetIdDictionary;
    widgetUniqueId2 = [widgetCopy widgetUniqueId];
    v8 = [(NSMutableDictionary *)stackForStackedWidgetIdDictionary objectForKeyedSubscript:widgetUniqueId2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)containsWidgetWithBundleId:(id)id kind:(id)kind size:(unint64_t)size
{
  v26 = *MEMORY[0x1E69E9840];
  idCopy = id;
  kindCopy = kind;
  [(NSArray *)self->_pinnedWidgets arrayByAddingObjectsFromArray:self->_stackedWidgets];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v24 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = v11;
  v13 = *v22;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v22 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v21 + 1) + 8 * i);
      extensionBundleId = [v15 extensionBundleId];
      if (![extensionBundleId isEqualToString:idCopy])
      {
        goto LABEL_11;
      }

      widgetKind = [v15 widgetKind];
      if (([widgetKind isEqualToString:kindCopy] & 1) == 0)
      {

LABEL_11:
        continue;
      }

      v18 = [v15 size];

      if (v18 == size)
      {
        v19 = 1;
        goto LABEL_15;
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  }

  while (v12);
LABEL_14:
  v19 = 0;
LABEL_15:

  return v19;
}

@end