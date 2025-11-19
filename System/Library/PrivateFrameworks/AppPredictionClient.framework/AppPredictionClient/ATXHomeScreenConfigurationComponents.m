@interface ATXHomeScreenConfigurationComponents
- (ATXHomeScreenConfigurationComponents)initWithConfigurations:(id)a3;
- (BOOL)containsWidgetWithBundleId:(id)a3 kind:(id)a4 size:(unint64_t)a5;
- (id)stackForStackedWidget:(id)a3;
@end

@implementation ATXHomeScreenConfigurationComponents

- (ATXHomeScreenConfigurationComponents)initWithConfigurations:(id)a3
{
  v87 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
    v49 = v4;
    obj = v4;
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
          v12 = [v11 stacks];
          v13 = [v12 countByEnumeratingWithState:&v72 objects:v85 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v73;
            v58 = *v73;
            v59 = v12;
            do
            {
              v16 = 0;
              v60 = v14;
              do
              {
                if (*v73 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v72 + 1) + 8 * v16);
                v18 = [v17 widgets];
                v19 = [v18 count];

                v20 = [v17 widgets];
                v21 = v20;
                if (v19 == 1)
                {
                  v22 = [v20 firstObject];

                  [v8 addObject:v22];
                }

                else
                {
                  v23 = [v20 count];

                  if (v23 >= 2)
                  {
                    v61 = v16;
                    v70 = 0u;
                    v71 = 0u;
                    v68 = 0u;
                    v69 = 0u;
                    v24 = [v17 widgets];
                    v25 = [v24 countByEnumeratingWithState:&v68 objects:v84 count:16];
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
                            objc_enumerationMutation(v24);
                          }

                          v29 = *(*(&v68 + 1) + 8 * i);
                          [v9 addObject:v29];
                          v30 = [v29 widgetUniqueId];

                          if (v30)
                          {
                            v31 = v5->_stackForStackedWidgetIdDictionary;
                            v32 = [v29 widgetUniqueId];
                            [(NSMutableDictionary *)v31 setObject:v17 forKeyedSubscript:v32];
                          }

                          else
                          {
                            v32 = __atxlog_handle_home_screen();
                            if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
                            {
                              *buf = 138412290;
                              v83 = v29;
                              _os_log_fault_impl(&dword_1BF549000, v32, OS_LOG_TYPE_FAULT, "ATXHomeScreenConfigurationComponents: stacked widget has no widgetUniqueId: %@", buf, 0xCu);
                            }
                          }
                        }

                        v26 = [v24 countByEnumeratingWithState:&v68 objects:v84 count:16];
                      }

                      while (v26);
                    }

                    [v57 addObject:v17];
                    v8 = v56;
                    v15 = v58;
                    v12 = v59;
                    v14 = v60;
                    v16 = v61;
                  }
                }

                ++v16;
              }

              while (v16 != v14);
              v14 = [v12 countByEnumeratingWithState:&v72 objects:v85 count:16];
            }

            while (v14);
          }

          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v33 = [v55 panels];
          v34 = [v33 countByEnumeratingWithState:&v64 objects:v81 count:16];
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
                  objc_enumerationMutation(v33);
                }

                v38 = [*(*(&v64 + 1) + 8 * j) widgets];
                v39 = [v38 firstObject];

                [v8 addObject:v39];
              }

              v35 = [v33 countByEnumeratingWithState:&v64 objects:v81 count:16];
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

    v4 = v49;
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

- (id)stackForStackedWidget:(id)a3
{
  v4 = a3;
  v5 = [v4 widgetUniqueId];

  if (v5)
  {
    stackForStackedWidgetIdDictionary = self->_stackForStackedWidgetIdDictionary;
    v7 = [v4 widgetUniqueId];
    v8 = [(NSMutableDictionary *)stackForStackedWidgetIdDictionary objectForKeyedSubscript:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)containsWidgetWithBundleId:(id)a3 kind:(id)a4 size:(unint64_t)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
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
      v16 = [v15 extensionBundleId];
      if (![v16 isEqualToString:v8])
      {
        goto LABEL_11;
      }

      v17 = [v15 widgetKind];
      if (([v17 isEqualToString:v9] & 1) == 0)
      {

LABEL_11:
        continue;
      }

      v18 = [v15 size];

      if (v18 == a5)
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