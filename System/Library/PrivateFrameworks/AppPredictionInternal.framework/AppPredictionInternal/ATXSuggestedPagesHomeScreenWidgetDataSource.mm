@interface ATXSuggestedPagesHomeScreenWidgetDataSource
- (id)provideWidgetsForPageType:(int64_t)type environment:(id)environment;
@end

@implementation ATXSuggestedPagesHomeScreenWidgetDataSource

- (id)provideWidgetsForPageType:(int64_t)type environment:(id)environment
{
  v61 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v5 = objc_alloc_init(MEMORY[0x277CEB568]);
  v6 = [v5 loadHomeScreenPageConfigurationsIncludingHidden:0 error:0];
  if ([v6 count])
  {
    v35 = v5;
    v44 = objc_opt_new();
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v34 = v6;
    obj = v6;
    v38 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
    if (v38)
    {
      v37 = *v55;
      do
      {
        v7 = 0;
        do
        {
          if (*v55 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v39 = v7;
          v8 = *(*(&v54 + 1) + 8 * v7);
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          stacks = [v8 stacks];
          v42 = [stacks countByEnumeratingWithState:&v50 objects:v59 count:16];
          if (v42)
          {
            v41 = *v51;
            do
            {
              v9 = 0;
              do
              {
                if (*v51 != v41)
                {
                  objc_enumerationMutation(stacks);
                }

                v43 = v9;
                v10 = *(*(&v50 + 1) + 8 * v9);
                v46 = 0u;
                v47 = 0u;
                v48 = 0u;
                v49 = 0u;
                widgets = [v10 widgets];
                v11 = [widgets countByEnumeratingWithState:&v46 objects:v58 count:16];
                if (v11)
                {
                  v12 = v11;
                  v13 = *v47;
                  do
                  {
                    for (i = 0; i != v12; ++i)
                    {
                      if (*v47 != v13)
                      {
                        objc_enumerationMutation(widgets);
                      }

                      v15 = *(*(&v46 + 1) + 8 * i);
                      appBundleId = [v15 appBundleId];
                      v17 = [appBundleId length];

                      if (v17)
                      {
                        appBundleId2 = [v15 appBundleId];
                        v19 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:appBundleId2];
                        suggestedApps = [environmentCopy suggestedApps];
                        v21 = [suggestedApps containsObject:v19];

                        if (v21)
                        {
                          appLaunchCounts = [environmentCopy appLaunchCounts];
                          v23 = [appLaunchCounts objectForKeyedSubscript:appBundleId2];
                          v24 = environmentCopy;
                          rawLaunchCount = [v23 rawLaunchCount];

                          v26 = rawLaunchCount >= 0xA;
                          environmentCopy = v24;
                          if (v26)
                          {
                            v27 = objc_alloc_init(MEMORY[0x277CEB5B0]);
                            intent = [v15 intent];
                            [v27 setIntent:intent];

                            [v27 setSize:{objc_msgSend(v15, "size")}];
                            widgetKind = [v15 widgetKind];
                            [v27 setWidgetKind:widgetKind];

                            extensionBundleId = [v15 extensionBundleId];
                            [v27 setExtensionBundleId:extensionBundleId];

                            environmentCopy = v24;
                            appBundleId3 = [v15 appBundleId];
                            [v27 setAppBundleId:appBundleId3];

                            [v27 setScore:0.25];
                            [v27 setPredictionSource:@"Home Screen"];
                            [v44 addObject:v27];
                          }
                        }
                      }
                    }

                    v12 = [widgets countByEnumeratingWithState:&v46 objects:v58 count:16];
                  }

                  while (v12);
                }

                v9 = v43 + 1;
              }

              while (v43 + 1 != v42);
              v42 = [stacks countByEnumeratingWithState:&v50 objects:v59 count:16];
            }

            while (v42);
          }

          v7 = v39 + 1;
        }

        while (v39 + 1 != v38);
        v38 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
      }

      while (v38);
    }

    v6 = v34;
    v5 = v35;
  }

  else
  {
    v44 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v44;
}

@end