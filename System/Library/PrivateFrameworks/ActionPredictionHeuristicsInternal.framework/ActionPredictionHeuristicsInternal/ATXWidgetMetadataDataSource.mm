@interface ATXWidgetMetadataDataSource
- (ATXWidgetMetadataDataSource)initWithDevice:(id)device;
- (void)fetchWidgetMetadataForAppBundleIds:(id)ids callback:(id)callback;
@end

@implementation ATXWidgetMetadataDataSource

- (ATXWidgetMetadataDataSource)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = ATXWidgetMetadataDataSource;
  v6 = [(ATXWidgetMetadataDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

- (void)fetchWidgetMetadataForAppBundleIds:(id)ids callback:(id)callback
{
  v66 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  callbackCopy = callback;
  v7 = objc_autoreleasePoolPush();
  if (idsCopy)
  {
    v8 = objc_alloc_init(MEMORY[0x277CEB568]);
    v58 = 0;
    v9 = [v8 loadHomeScreenAndTodayPageConfigurationsWithError:&v58];
    v10 = v58;
    v11 = v10;
    if (v9)
    {
      v31 = v10;
      v33 = v8;
      v34 = v7;
      v35 = callbackCopy;
      v36 = idsCopy;
      v12 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:idsCopy];
      v45 = objc_opt_new();
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v32 = v9;
      obj = v9;
      v39 = [obj countByEnumeratingWithState:&v54 objects:v65 count:16];
      if (!v39)
      {
        goto LABEL_39;
      }

      v38 = *v55;
      while (1)
      {
        v13 = 0;
        do
        {
          if (*v55 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v40 = v13;
          v14 = *(*(&v54 + 1) + 8 * v13);
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          stacks = [v14 stacks];
          v43 = [stacks countByEnumeratingWithState:&v50 objects:v64 count:16];
          if (v43)
          {
            v42 = *v51;
            do
            {
              v15 = 0;
              do
              {
                if (*v51 != v42)
                {
                  objc_enumerationMutation(stacks);
                }

                v44 = v15;
                v16 = *(*(&v50 + 1) + 8 * v15);
                v46 = 0u;
                v47 = 0u;
                v48 = 0u;
                v49 = 0u;
                widgets = [v16 widgets];
                v18 = [widgets countByEnumeratingWithState:&v46 objects:v63 count:16];
                if (v18)
                {
                  v19 = v18;
                  v20 = *v47;
                  do
                  {
                    for (i = 0; i != v19; ++i)
                    {
                      if (*v47 != v20)
                      {
                        objc_enumerationMutation(widgets);
                      }

                      v22 = *(*(&v46 + 1) + 8 * i);
                      appBundleId = [v22 appBundleId];
                      if (appBundleId)
                      {
                        widgetKind = [v22 widgetKind];
                        if (widgetKind)
                        {
                          extensionBundleId = [v22 extensionBundleId];
                          if (extensionBundleId)
                          {
                            if ([v12 containsObject:appBundleId])
                            {
                              v59[0] = @"widgetBundleId";
                              v59[1] = @"widgetKind";
                              v60[0] = extensionBundleId;
                              v60[1] = widgetKind;
                              v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
                              v27 = [v45 objectForKeyedSubscript:appBundleId];
                              if (!v27)
                              {
                                v27 = objc_opt_new();
                                [v45 setObject:v27 forKeyedSubscript:appBundleId];
                              }

                              if (([v27 containsObject:v26] & 1) == 0)
                              {
                                [v27 addObject:v26];
                              }

                              goto LABEL_31;
                            }
                          }

                          else
                          {
                            v26 = __atxlog_handle_heuristic();
                            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 138412290;
                              v62 = v22;
                              _os_log_error_impl(&dword_23E3EA000, v26, OS_LOG_TYPE_ERROR, "ATXWidgetMetadataDataSource: no widget bundle id for widget: %@", buf, 0xCu);
                            }

LABEL_31:
                          }
                        }

                        else
                        {
                          extensionBundleId = __atxlog_handle_heuristic();
                          if (os_log_type_enabled(extensionBundleId, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 138412290;
                            v62 = v22;
                            _os_log_error_impl(&dword_23E3EA000, extensionBundleId, OS_LOG_TYPE_ERROR, "ATXWidgetMetadataDataSource: no widget kind for widget: %@", buf, 0xCu);
                          }
                        }
                      }
                    }

                    v19 = [widgets countByEnumeratingWithState:&v46 objects:v63 count:16];
                  }

                  while (v19);
                }

                v15 = v44 + 1;
              }

              while (v44 + 1 != v43);
              v43 = [stacks countByEnumeratingWithState:&v50 objects:v64 count:16];
            }

            while (v43);
          }

          v13 = v40 + 1;
        }

        while (v40 + 1 != v39);
        v39 = [obj countByEnumeratingWithState:&v54 objects:v65 count:16];
        if (!v39)
        {
LABEL_39:

          callbackCopy = v35;
          (v35)[2](v35, v45, 0);

          idsCopy = v36;
          v8 = v33;
          v7 = v34;
          v11 = v31;
          v9 = v32;
          goto LABEL_46;
        }
      }
    }

    v29 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [ATXWidgetMetadataDataSource fetchWidgetMetadataForAppBundleIds:v11 callback:v29];
    }

    callbackCopy[2](callbackCopy, 0, v11);
LABEL_46:
  }

  else
  {
    v28 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [ATXWidgetMetadataDataSource fetchWidgetMetadataForAppBundleIds:v28 callback:?];
    }

    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    callbackCopy[2](callbackCopy, 0, v8);
  }

  objc_autoreleasePoolPop(v7);
  v30 = *MEMORY[0x277D85DE8];
}

- (void)fetchWidgetMetadataForAppBundleIds:(uint64_t)a1 callback:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23E3EA000, a2, OS_LOG_TYPE_ERROR, "ATXWidgetMetadataDataSource: could not fetch page configs with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end