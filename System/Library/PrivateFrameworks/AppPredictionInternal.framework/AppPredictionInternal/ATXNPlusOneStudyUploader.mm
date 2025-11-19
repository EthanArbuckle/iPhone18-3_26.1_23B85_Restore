@interface ATXNPlusOneStudyUploader
- (BOOL)_processClientModelUpdateStreamFromStartTime:(double)a3 shortcutSuggestionHandler:(id)a4 infoSuggestionHandler:(id)a5 activity:(id)a6;
- (id)_applyPrivacyFilterToEvents:(id)a3;
- (id)_emptyEventsForAllWidgetDescriptorsOnDeviceWithActivity:(id)a3;
- (id)_preparedEventsFromEmptyEvents:(id)a3 activity:(id)a4;
- (id)_preparedEvents_appLaunchPopularity:(id)a3 activity:(id)a4;
- (id)_preparedEvents_appPushNotificationEnabled:(id)a3 activity:(id)a4;
- (id)_preparedEvents_appScreenTimeCategory:(id)a3 activity:(id)a4;
- (id)_preparedEvents_numAppLaunches:(id)a3 activity:(id)a4;
- (id)_preparedEvents_suggestionCounts:(id)a3 activity:(id)a4;
- (id)_preparedEvents_widgetExistsOnScreen:(id)a3 activity:(id)a4;
- (void)_sendEventsToCoreAnalytics:(id)a3;
- (void)dryRunResultFilterByExtensionBundleId:(id)a3 completionHandler:(id)a4;
- (void)uploadStudyDataToCoreAnalyticsWithActivity:(id)a3;
@end

@implementation ATXNPlusOneStudyUploader

- (void)uploadStudyDataToCoreAnalyticsWithActivity:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(9, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__ATXNPlusOneStudyUploader_uploadStudyDataToCoreAnalyticsWithActivity___block_invoke;
  v7[3] = &unk_278596C10;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __71__ATXNPlusOneStudyUploader_uploadStudyDataToCoreAnalyticsWithActivity___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "ATXNPlusOneStudyUploader: Start to prepare N+1 study data.", &v8, 2u);
  }

  if (([*(a1 + 32) didDefer] & 1) == 0)
  {
    v3 = [*(a1 + 40) _emptyEventsForAllWidgetDescriptorsOnDeviceWithActivity:*(a1 + 32)];
    if ([v3 count] && (objc_msgSend(*(a1 + 32), "didDefer") & 1) == 0)
    {
      v4 = [*(a1 + 40) _preparedEventsFromEmptyEvents:v3 activity:*(a1 + 32)];

      if ([v4 count] && (objc_msgSend(*(a1 + 32), "didDefer") & 1) == 0)
      {
        v3 = [*(a1 + 40) _applyPrivacyFilterToEvents:v4];

        if ([v3 count] && (objc_msgSend(*(a1 + 32), "didDefer") & 1) == 0)
        {
          [*(a1 + 40) _sendEventsToCoreAnalytics:v3];
          v6 = __atxlog_handle_home_screen();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            v7 = [v3 count];
            v8 = 134217984;
            v9 = v7;
            _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "ATXNPlusOneStudyUploader: Sent %lu events to CoreAnalytics.", &v8, 0xCu);
          }
        }
      }

      else
      {
        v3 = v4;
      }
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)dryRunResultFilterByExtensionBundleId:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(9, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__ATXNPlusOneStudyUploader_dryRunResultFilterByExtensionBundleId_completionHandler___block_invoke;
  block[3] = &unk_27859A950;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __84__ATXNPlusOneStudyUploader_dryRunResultFilterByExtensionBundleId_completionHandler___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __84__ATXNPlusOneStudyUploader_dryRunResultFilterByExtensionBundleId_completionHandler___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) _emptyEventsForAllWidgetDescriptorsOnDeviceWithActivity:0];
  v4 = v3;
  if (*(a1 + 40))
  {
    v5 = objc_opt_new();
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v34;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v34 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v33 + 1) + 8 * i);
          v12 = [v11 extensionBundleId];
          v13 = [v12 isEqualToString:*(a1 + 40)];

          if (v13)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = v3;
  }

  v14 = [*(a1 + 32) _preparedEventsFromEmptyEvents:v5 activity:0];

  v15 = [*(a1 + 32) _applyPrivacyFilterToEvents:v14];

  v16 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v17 = v15;
  v18 = [v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v30;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v29 + 1) + 8 * j);
        v23 = [v22 coreAnalyticsEvent];
        v24 = [v23 mutableCopy];

        v25 = [v22 appScreenTimeCategory] - 1;
        v26 = @"Unknown";
        if (v25 <= 0xE)
        {
          v26 = off_27859D940[v25];
        }

        [v24 setObject:v26 forKeyedSubscript:@"appScreenTimeCategory"];
        [v16 addObject:v24];
      }

      v19 = [v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v19);
  }

  v27 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    __84__ATXNPlusOneStudyUploader_dryRunResultFilterByExtensionBundleId_completionHandler___block_invoke_cold_2(v17);
  }

  (*(*(a1 + 48) + 16))();
  v28 = *MEMORY[0x277D85DE8];
}

- (id)_emptyEventsForAllWidgetDescriptorsOnDeviceWithActivity:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CEB998] sharedInstance];
  v17 = 0;
  v5 = [v4 fetchHomeScreenWidgetDescriptorMetadataWithError:&v17];
  v6 = v17;

  if (v6)
  {
    v7 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ATXNPlusOneStudyUploader _emptyEventsForAllWidgetDescriptorsOnDeviceWithActivity:];
    }

    v8 = 0;
  }

  else
  {
    v9 = objc_opt_new();
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __84__ATXNPlusOneStudyUploader__emptyEventsForAllWidgetDescriptorsOnDeviceWithActivity___block_invoke;
    v14[3] = &unk_27859D858;
    v15 = v3;
    v10 = v9;
    v16 = v10;
    [v5 enumerateKeysAndObjectsUsingBlock:v14];
    v11 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [ATXNPlusOneStudyUploader _emptyEventsForAllWidgetDescriptorsOnDeviceWithActivity:v10];
    }

    v12 = v16;
    v7 = v10;

    v8 = v7;
  }

  return v8;
}

void __84__ATXNPlusOneStudyUploader__emptyEventsForAllWidgetDescriptorsOnDeviceWithActivity___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  if ([*(a1 + 32) didDefer])
  {
    *a4 = 1;
  }

  else
  {
    v9 = objc_opt_new();
    v10 = [v7 extensionBundleId];
    [v9 setExtensionBundleId:v10];

    v11 = [v7 kind];
    [v9 setWidgetKind:v11];

    v12 = [v8 containerBundleId];
    v13 = [v12 length];

    if (v13)
    {
      v14 = [v8 containerBundleId];
      [v9 setAppBundleId:v14];
    }

    else
    {
      v14 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __84__ATXNPlusOneStudyUploader__emptyEventsForAllWidgetDescriptorsOnDeviceWithActivity___block_invoke_cold_1(v9);
      }
    }

    [*(a1 + 40) addObject:v9];
  }
}

- (void)_sendEventsToCoreAnalytics:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [ATXNPlusOneStudyUploader _sendEventsToCoreAnalytics:];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * v9) coreAnalyticsEvent];
        AnalyticsSendEvent();

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_preparedEventsFromEmptyEvents:(id)a3 activity:(id)a4
{
  v6 = a4;
  v7 = [(ATXNPlusOneStudyUploader *)self _preparedEvents_widgetExistsOnScreen:a3 activity:v6];
  if (![v7 count] || (objc_msgSend(v6, "didDefer") & 1) != 0)
  {
    goto LABEL_3;
  }

  v9 = [(ATXNPlusOneStudyUploader *)self _preparedEvents_appPushNotificationEnabled:v7 activity:v6];

  if (![v9 count] || (objc_msgSend(v6, "didDefer") & 1) != 0)
  {
    goto LABEL_6;
  }

  v7 = [(ATXNPlusOneStudyUploader *)self _preparedEvents_appLaunchPopularity:v9 activity:v6];

  if (![v7 count] || (objc_msgSend(v6, "didDefer") & 1) != 0)
  {
    goto LABEL_3;
  }

  v9 = [(ATXNPlusOneStudyUploader *)self _preparedEvents_appScreenTimeCategory:v7 activity:v6];

  if (![v9 count] || (objc_msgSend(v6, "didDefer") & 1) != 0)
  {
LABEL_6:
    v8 = 0;
    v7 = v9;
    goto LABEL_7;
  }

  v7 = [(ATXNPlusOneStudyUploader *)self _preparedEvents_numAppLaunches:v9 activity:v6];

  if (![v7 count] || (objc_msgSend(v6, "didDefer") & 1) != 0)
  {
LABEL_3:
    v8 = 0;
    goto LABEL_7;
  }

  v11 = [(ATXNPlusOneStudyUploader *)self _preparedEvents_suggestionCounts:v7 activity:v6];

  v12 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [ATXNPlusOneStudyUploader _preparedEventsFromEmptyEvents:activity:];
  }

  v7 = v11;
  v8 = v7;
LABEL_7:

  return v8;
}

- (id)_preparedEvents_widgetExistsOnScreen:(id)a3 activity:(id)a4
{
  v73 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v47 = a4;
  v6 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [ATXNPlusOneStudyUploader _preparedEvents_widgetExistsOnScreen:activity:];
  }

  v68 = 0;
  v42 = objc_opt_new();
  v7 = [v42 loadHomeScreenAndTodayPageConfigurationsWithError:&v68];
  v8 = v68;
  v43 = v8;
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  v41 = v7;
  if (v9)
  {
    v40 = v5;
    v10 = objc_opt_new();
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    obj = v7;
    v46 = [obj countByEnumeratingWithState:&v64 objects:v72 count:16];
    if (v46)
    {
      v45 = *v65;
      while (2)
      {
        v12 = 0;
        do
        {
          if (*v65 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v64 + 1) + 8 * v12);
          if ([v47 didDefer])
          {
            v5 = v40;
            v11 = v40;

            goto LABEL_43;
          }

          v48 = v12;
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v49 = [v13 stacks];
          v51 = [v49 countByEnumeratingWithState:&v60 objects:v71 count:16];
          if (v51)
          {
            v50 = *v61;
            do
            {
              for (i = 0; i != v51; ++i)
              {
                if (*v61 != v50)
                {
                  objc_enumerationMutation(v49);
                }

                v15 = *(*(&v60 + 1) + 8 * i);
                v56 = 0u;
                v57 = 0u;
                v58 = 0u;
                v59 = 0u;
                v16 = [v15 widgets];
                v17 = [v16 countByEnumeratingWithState:&v56 objects:v70 count:16];
                if (v17)
                {
                  v18 = v17;
                  v19 = *v57;
                  do
                  {
                    for (j = 0; j != v18; ++j)
                    {
                      if (*v57 != v19)
                      {
                        objc_enumerationMutation(v16);
                      }

                      v21 = *(*(&v56 + 1) + 8 * j);
                      v22 = [v21 extensionBundleId];
                      v23 = [v10 objectForKeyedSubscript:v22];

                      if (!v23)
                      {
                        v24 = objc_opt_new();
                        v25 = [v21 extensionBundleId];
                        [v10 setObject:v24 forKeyedSubscript:v25];
                      }

                      v26 = [v21 extensionBundleId];
                      v27 = [v10 objectForKeyedSubscript:v26];
                      v28 = [v21 widgetKind];
                      [v27 addObject:v28];
                    }

                    v18 = [v16 countByEnumeratingWithState:&v56 objects:v70 count:16];
                  }

                  while (v18);
                }
              }

              v51 = [v49 countByEnumeratingWithState:&v60 objects:v71 count:16];
            }

            while (v51);
          }

          v12 = v48 + 1;
        }

        while (v48 + 1 != v46);
        v46 = [obj countByEnumeratingWithState:&v64 objects:v72 count:16];
        if (v46)
        {
          continue;
        }

        break;
      }
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v29 = v40;
    v30 = [v29 countByEnumeratingWithState:&v52 objects:v69 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v53;
      do
      {
        for (k = 0; k != v31; ++k)
        {
          if (*v53 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v52 + 1) + 8 * k);
          v35 = [v34 extensionBundleId];
          v36 = [v10 objectForKeyedSubscript:v35];
          v37 = [v34 widgetKind];
          [v34 setWidgetExistsOnScreen:{objc_msgSend(v36, "containsObject:", v37)}];
        }

        v31 = [v29 countByEnumeratingWithState:&v52 objects:v69 count:16];
      }

      while (v31);
    }

    v11 = v29;
    v5 = v40;
  }

  else
  {
    v10 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [ATXNPlusOneStudyUploader _preparedEvents_widgetExistsOnScreen:activity:];
    }

    v11 = 0;
  }

LABEL_43:

  v38 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_preparedEvents_appPushNotificationEnabled:(id)a3 activity:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ATXNPlusOneStudyUploader _preparedEvents_appPushNotificationEnabled:activity:];
  }

  v8 = [MEMORY[0x277D77F68] currentNotificationSettingsCenter];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
LABEL_5:
    v13 = 0;
    v28 = v11;
    while (1)
    {
      if (*v30 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v29 + 1) + 8 * v13);
      if ([v6 didDefer])
      {
        break;
      }

      v15 = [v14 appBundleId];

      if (v15)
      {
        v16 = [v14 appBundleId];
        v17 = [v8 notificationSourceWithIdentifier:v16];

        if ([v17 isHiddenFromSettings])
        {
          goto LABEL_12;
        }

        v18 = [v17 sourceSettings];
        [v18 notificationSettings];
        v19 = v9;
        v21 = v20 = v8;
        v22 = v12;
        v23 = [v21 authorizationStatus];

        v8 = v20;
        v9 = v19;

        v24 = v23 == 1;
        v12 = v22;
        v11 = v28;
        if (!v24)
        {
LABEL_12:
          [v14 setAppPushNotificationEnabled:1];
        }
      }

      else
      {
        [v14 setAppPushNotificationEnabled:1];
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v11)
        {
          goto LABEL_5;
        }

        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:

    v25 = v9;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_preparedEvents_appLaunchPopularity:(id)a3 activity:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ATXNPlusOneStudyUploader _preparedEvents_appLaunchPopularity:activity:];
  }

  v8 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v9 = [v8 histogramForLaunchType:0];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
LABEL_5:
    v14 = 0;
    while (1)
    {
      if (*v22 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v21 + 1) + 8 * v14);
      if ([v6 didDefer])
      {
        break;
      }

      v16 = [v15 appBundleId];

      if (v16)
      {
        v17 = [v15 appBundleId];
        [v9 overallLaunchPopularityForBundleId:v17];
        [v15 setAppLaunchPopularity:?];
      }

      else
      {
        [v15 setAppLaunchPopularity:1.0];
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v12)
        {
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:

    v18 = v10;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_preparedEvents_appScreenTimeCategory:(id)a3 activity:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ATXNPlusOneStudyUploader _preparedEvents_appScreenTimeCategory:activity:];
  }

  v8 = objc_opt_new();
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __75__ATXNPlusOneStudyUploader__preparedEvents_appScreenTimeCategory_activity___block_invoke;
  v15 = &unk_27859D8A8;
  v16 = v6;
  v17 = v8;
  v9 = v8;
  v10 = v6;
  [v5 enumerateObjectsUsingBlock:&v12];
  [v5 removeObjectsAtIndexes:{v9, v12, v13, v14, v15}];

  return v5;
}

void __75__ATXNPlusOneStudyUploader__preparedEvents_appScreenTimeCategory_activity___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([*(a1 + 32) didDefer])
  {
    *a4 = 1;
  }

  else
  {
    v8 = [v7 appBundleId];

    if (v8)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = dispatch_semaphore_create(0);
      v11 = MEMORY[0x277CF9658];
      v12 = [v7 appBundleId];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __75__ATXNPlusOneStudyUploader__preparedEvents_appScreenTimeCategory_activity___block_invoke_2;
      v21[3] = &unk_27859D880;
      v13 = v7;
      v22 = v13;
      v14 = *(a1 + 40);
      v24 = v10;
      v25 = a3;
      v23 = v14;
      v15 = v10;
      [v11 categoryForBundleID:v12 withCompletionHandler:v21];

      v16 = MEMORY[0x277D425A0];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __75__ATXNPlusOneStudyUploader__preparedEvents_appScreenTimeCategory_activity___block_invoke_213;
      v17[3] = &unk_278599E28;
      v18 = v13;
      v19 = *(a1 + 40);
      v20 = a3;
      [v16 waitForSemaphore:v15 timeoutSeconds:0 onAcquire:v17 onTimeout:5.0];

      objc_autoreleasePoolPop(v9);
    }

    else
    {
      [v7 setAppScreenTimeCategory:0];
    }
  }
}

void __75__ATXNPlusOneStudyUploader__preparedEvents_appScreenTimeCategory_activity___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __75__ATXNPlusOneStudyUploader__preparedEvents_appScreenTimeCategory_activity___block_invoke_2_cold_1(a1);
    }

    [*(a1 + 40) addIndex:*(a1 + 56)];
  }

  else
  {
    v7 = [a2 identifier];
    if ([v7 isEqualToString:*MEMORY[0x277CF9618]])
    {
      v8 = 1;
    }

    else if ([v7 isEqualToString:*MEMORY[0x277CF9610]])
    {
      v8 = 2;
    }

    else if ([v7 isEqualToString:*MEMORY[0x277CF9620]])
    {
      v8 = 3;
    }

    else if ([v7 isEqualToString:*MEMORY[0x277CF95D8]])
    {
      v8 = 4;
    }

    else if ([v7 isEqualToString:*MEMORY[0x277CF9608]])
    {
      v8 = 5;
    }

    else if ([v7 isEqualToString:*MEMORY[0x277CF95D0]])
    {
      v8 = 6;
    }

    else if ([v7 isEqualToString:*MEMORY[0x277CF95C0]])
    {
      v8 = 7;
    }

    else if ([v7 isEqualToString:*MEMORY[0x277CF95F0]])
    {
      v8 = 8;
    }

    else if ([v7 isEqualToString:*MEMORY[0x277CF95C8]])
    {
      v8 = 9;
    }

    else if ([v7 isEqualToString:*MEMORY[0x277CF95F8]])
    {
      v8 = 10;
    }

    else if ([v7 isEqualToString:*MEMORY[0x277CF95E0]])
    {
      v8 = 11;
    }

    else if ([v7 isEqualToString:*MEMORY[0x277CF95E8]])
    {
      v8 = 12;
    }

    else if ([v7 isEqualToString:*MEMORY[0x277CF9630]])
    {
      v8 = 13;
    }

    else if ([v7 isEqualToString:*MEMORY[0x277CF9600]])
    {
      v8 = 14;
    }

    else if ([v7 isEqualToString:*MEMORY[0x277CF9628]])
    {
      v8 = 15;
    }

    else
    {
      v8 = 0;
    }

    [*(a1 + 32) setAppScreenTimeCategory:v8];
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

uint64_t __75__ATXNPlusOneStudyUploader__preparedEvents_appScreenTimeCategory_activity___block_invoke_213(uint64_t a1)
{
  v2 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __75__ATXNPlusOneStudyUploader__preparedEvents_appScreenTimeCategory_activity___block_invoke_213_cold_1(a1);
  }

  return [*(a1 + 40) addIndex:*(a1 + 48)];
}

- (id)_preparedEvents_numAppLaunches:(id)a3 activity:(id)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ATXNPlusOneStudyUploader _preparedEvents_numAppLaunches:activity:];
  }

  v8 = objc_opt_new();
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (v10)
  {
    v11 = *v57;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v57 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v56 + 1) + 8 * i);
        v14 = [v13 appBundleId];
        v15 = v14 == 0;

        if (v15)
        {
          v21 = objc_opt_new();
          [v13 setAppLaunchCounts:v21];
        }

        else
        {
          v16 = [v13 appBundleId];
          v17 = [v8 objectForKeyedSubscript:v16];
          v18 = v17 == 0;

          if (v18)
          {
            v19 = objc_opt_new();
            v20 = [v13 appBundleId];
            [v8 setObject:v19 forKeyedSubscript:v20];
          }

          v21 = [v13 appBundleId];
          v22 = [v8 objectForKeyedSubscript:v21];
          [v13 setAppLaunchCounts:v22];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v56 objects:v60 count:16];
    }

    while (v10);
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v24 = v23;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v26 = v25;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v28 = v27;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v30 = v29;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v32 = v31;
  if ([v6 didDefer])
  {
    v33 = v9;
  }

  else
  {
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = __Block_byref_object_copy__57;
    v54 = __Block_byref_object_dispose__57;
    v55 = v9;
    v34 = BiomeLibrary();
    v35 = [v34 App];
    v36 = [v35 InFocus];
    v37 = [MEMORY[0x277CCABB0] numberWithDouble:v32 + -2419200.0];
    v38 = [v36 atx_publisherFromStartTime:v37];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __68__ATXNPlusOneStudyUploader__preparedEvents_numAppLaunches_activity___block_invoke;
    v49[3] = &unk_278597540;
    v49[4] = &v50;
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __68__ATXNPlusOneStudyUploader__preparedEvents_numAppLaunches_activity___block_invoke_218;
    v42[3] = &unk_27859D8D0;
    v43 = v6;
    v44 = v8;
    v45 = v30 + -1209600.0;
    v46 = v28 + -604800.0;
    v47 = v26 + -259200.0;
    v48 = v24 + -86400.0;
    v39 = [v38 sinkWithCompletion:v49 receiveInput:v42];

    v33 = v51[5];
    _Block_object_dispose(&v50, 8);
  }

  v40 = *MEMORY[0x277D85DE8];

  return v33;
}

void __68__ATXNPlusOneStudyUploader__preparedEvents_numAppLaunches_activity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __68__ATXNPlusOneStudyUploader__preparedEvents_numAppLaunches_activity___block_invoke_cold_1(v3);
    }

    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }
}

void __68__ATXNPlusOneStudyUploader__preparedEvents_numAppLaunches_activity___block_invoke_218(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) didDefer] & 1) == 0)
  {
    v4 = [v3 eventBody];

    if (v4)
    {
      v5 = [v3 eventBody];
      if ([v5 starting])
      {
        v6 = *(a1 + 40);
        v7 = [v5 bundleID];
        v8 = [v6 objectForKeyedSubscript:v7];

        if (v8)
        {
          v9 = *(a1 + 40);
          v10 = [v5 bundleID];
          v11 = [v9 objectForKeyedSubscript:v10];

          [v11 setNumAppLaunchPast28Day:{objc_msgSend(v11, "numAppLaunchPast28Day") + 1}];
          v12 = [v5 absoluteTimestamp];
          [v12 timeIntervalSinceReferenceDate];
          v14 = v13;
          v15 = *(a1 + 48);

          if (v14 > v15)
          {
            [v11 setNumAppLaunchPast14Day:{objc_msgSend(v11, "numAppLaunchPast14Day") + 1}];
          }

          v16 = [v5 absoluteTimestamp];
          [v16 timeIntervalSinceReferenceDate];
          v18 = v17;
          v19 = *(a1 + 56);

          if (v18 > v19)
          {
            [v11 setNumAppLaunchPast7Day:{objc_msgSend(v11, "numAppLaunchPast7Day") + 1}];
          }

          v20 = [v5 absoluteTimestamp];
          [v20 timeIntervalSinceReferenceDate];
          v22 = v21;
          v23 = *(a1 + 64);

          if (v22 > v23)
          {
            [v11 setNumAppLaunchPast3Day:{objc_msgSend(v11, "numAppLaunchPast3Day") + 1}];
          }

          v24 = [v5 absoluteTimestamp];
          [v24 timeIntervalSinceReferenceDate];
          v26 = v25;
          v27 = *(a1 + 72);

          if (v26 > v27)
          {
            [v11 setNumAppLaunchPastDay:{objc_msgSend(v11, "numAppLaunchPastDay") + 1}];
          }
        }
      }
    }

    else
    {
      v28 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        __68__ATXNPlusOneStudyUploader__preparedEvents_numAppLaunches_activity___block_invoke_218_cold_1(v3);
      }
    }
  }
}

- (id)_preparedEvents_suggestionCounts:(id)a3 activity:(id)a4
{
  v99 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v37 = a4;
  v6 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [ATXNPlusOneStudyUploader _preparedEvents_suggestionCounts:activity:];
  }

  v7 = objc_opt_new();
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v82 objects:v98 count:16];
  if (v9)
  {
    v10 = *v83;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v83 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v82 + 1) + 8 * i);
        v13 = [v12 extensionBundleId];
        v14 = [v12 widgetKind];
        v15 = [v13 stringByAppendingString:v14];

        [v7 setObject:v12 forKeyedSubscript:v15];
      }

      v9 = [v8 countByEnumeratingWithState:&v82 objects:v98 count:16];
    }

    while (v9);
  }

  v16 = objc_opt_new();
  v17 = objc_opt_new();
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__57;
  v56 = __Block_byref_object_dispose__57;
  v36 = v8;
  v57 = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__ATXNPlusOneStudyUploader__preparedEvents_suggestionCounts_activity___block_invoke;
  aBlock[3] = &unk_27859D8F8;
  v18 = v16;
  v46 = v18;
  v19 = v7;
  v47 = v19;
  v48 = &v52;
  v49 = &v70;
  v50 = &v74;
  v51 = &v78;
  v20 = _Block_copy(aBlock);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __70__ATXNPlusOneStudyUploader__preparedEvents_suggestionCounts_activity___block_invoke_223;
  v38[3] = &unk_27859D8F8;
  v21 = v17;
  v39 = v21;
  v22 = v19;
  v40 = v22;
  v41 = &v52;
  v42 = &v58;
  v43 = &v62;
  v44 = &v66;
  v23 = _Block_copy(v38);
  if ([v37 didDefer])
  {
    goto LABEL_15;
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  if ([(ATXNPlusOneStudyUploader *)self _processClientModelUpdateStreamFromStartTime:v20 shortcutSuggestionHandler:v23 infoSuggestionHandler:v37 activity:v24 + -86400.0])
  {
    v25 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v29 = v79[3];
      v30 = v75[3];
      v31 = v71[3];
      v32 = v67[3];
      v33 = v63[3];
      v34 = v59[3];
      *buf = 134219264;
      v87 = v29;
      v88 = 2048;
      v89 = v30;
      v90 = 2048;
      v91 = v31;
      v92 = 2048;
      v93 = v32;
      v94 = 2048;
      v95 = v33;
      v96 = 2048;
      v97 = v34;
      _os_log_debug_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEBUG, "ATXNPlusOneStudyUploader: totalShortcutConversionCount %lu (high threshold) %lu (med threshold) %lu (low threshold), totalInfoHeuristicsCount %lu (high threshold) %lu (med threshold) %lu (low threshold).", buf, 0x3Eu);
    }

LABEL_15:
    v26 = v53[5];
    goto LABEL_17;
  }

  v26 = 0;
LABEL_17:

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(&v78, 8);

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

void __70__ATXNPlusOneStudyUploader__preparedEvents_suggestionCounts_activity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 scoreSpecification];
  v5 = [v4 suggestedConfidenceCategory];

  if (v5 >= 2)
  {
    v6 = [v3 executableSpecification];
    v7 = [v6 executableClassString];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v7 isEqualToString:v9];

    if (v10)
    {
      v11 = [v3 executableSpecification];
      v12 = [v11 executableObject];

      if (([*(a1 + 32) containsObject:v12] & 1) == 0)
      {
        [*(a1 + 32) addObject:v12];
        v13 = [v12 intent];
        if (v13)
        {
          v14 = v13;
          v15 = +[ATXIntentMetadataCache sharedInstance];
          v16 = [v12 intent];
          v17 = [v15 isEligibleForWidgetsForIntent:v16];

          if (v17)
          {
            v18 = [MEMORY[0x277CEB998] sharedInstance];
            v19 = [v12 intent];
            v20 = [v18 homeScreenDescriptorForIntent:v19];

            if (v20)
            {
              v21 = [v20 extensionBundleIdentifier];
              v22 = [v20 kind];
              v23 = [v21 stringByAppendingString:v22];

              v24 = [*(a1 + 40) objectForKeyedSubscript:v23];
              v25 = v24;
              if (v24)
              {
                [v24 setSuggestionCountShortcutConversionLow:{objc_msgSend(v24, "suggestionCountShortcutConversionLow") + 1}];
                ++*(*(*(a1 + 56) + 8) + 24);
                v26 = [v3 scoreSpecification];
                v27 = [v26 suggestedConfidenceCategory];

                if (v27 >= 3)
                {
                  [v25 setSuggestionCountShortcutConversionMed:{objc_msgSend(v25, "suggestionCountShortcutConversionMed") + 1}];
                  ++*(*(*(a1 + 64) + 8) + 24);
                  v28 = [v3 scoreSpecification];
                  v29 = [v28 suggestedConfidenceCategory];

                  if (v29 == 4)
                  {
                    [v25 setSuggestionCountShortcutConversionHigh:{objc_msgSend(v25, "suggestionCountShortcutConversionHigh") + 1}];
                    ++*(*(*(a1 + 72) + 8) + 24);
                  }
                }
              }

              else
              {
                v30 = __atxlog_handle_home_screen();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
                {
                  __70__ATXNPlusOneStudyUploader__preparedEvents_suggestionCounts_activity___block_invoke_cold_1();
                }

                v31 = *(*(a1 + 48) + 8);
                v32 = *(v31 + 40);
                *(v31 + 40) = 0;
              }
            }
          }
        }
      }
    }
  }
}

void __70__ATXNPlusOneStudyUploader__preparedEvents_suggestionCounts_activity___block_invoke_223(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 scoreSpecification];
  v5 = [v4 suggestedConfidenceCategory];

  if (v5 >= 2)
  {
    v6 = [v3 executableSpecification];
    v7 = [v6 executableObject];

    v8 = *(a1 + 32);
    v9 = [v7 suggestionIdentifier];
    LOBYTE(v8) = [v8 containsObject:v9];

    if ((v8 & 1) == 0)
    {
      v10 = *(a1 + 32);
      v11 = [v7 suggestionIdentifier];
      [v10 addObject:v11];

      v12 = [v7 widgetBundleIdentifier];
      v13 = [v7 widgetKind];
      v14 = [v12 stringByAppendingString:v13];

      v15 = [*(a1 + 40) objectForKeyedSubscript:v14];
      v16 = v15;
      if (v15)
      {
        [v15 setSuggestionCountInfoHeuristicLow:{objc_msgSend(v15, "suggestionCountInfoHeuristicLow") + 1}];
        ++*(*(*(a1 + 56) + 8) + 24);
        v17 = [v3 scoreSpecification];
        v18 = [v17 suggestedConfidenceCategory];

        if (v18 >= 3)
        {
          [v16 setSuggestionCountInfoHeuristicMed:{objc_msgSend(v16, "suggestionCountInfoHeuristicMed") + 1}];
          ++*(*(*(a1 + 64) + 8) + 24);
          v19 = [v3 scoreSpecification];
          v20 = [v19 suggestedConfidenceCategory];

          if (v20 == 4)
          {
            [v16 setSuggestionCountInfoHeuristicHigh:{objc_msgSend(v16, "suggestionCountInfoHeuristicHigh") + 1}];
            ++*(*(*(a1 + 72) + 8) + 24);
          }
        }
      }

      else
      {
        v21 = __atxlog_handle_home_screen();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          __70__ATXNPlusOneStudyUploader__preparedEvents_suggestionCounts_activity___block_invoke_223_cold_1();
        }

        v22 = *(*(a1 + 48) + 8);
        v23 = *(v22 + 40);
        *(v22 + 40) = 0;
      }
    }
  }
}

- (BOOL)_processClientModelUpdateStreamFromStartTime:(double)a3 shortcutSuggestionHandler:(id)a4 infoSuggestionHandler:(id)a5 activity:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 1;
  v27 = 0;
  v28[0] = &v27;
  v28[1] = 0x2020000000;
  v28[2] = 0;
  v12 = objc_opt_new();
  v13 = [v12 publisherFromStartTime:a3];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __130__ATXNPlusOneStudyUploader__processClientModelUpdateStreamFromStartTime_shortcutSuggestionHandler_infoSuggestionHandler_activity___block_invoke;
  v26[3] = &unk_278597540;
  v26[4] = &v29;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __130__ATXNPlusOneStudyUploader__processClientModelUpdateStreamFromStartTime_shortcutSuggestionHandler_infoSuggestionHandler_activity___block_invoke_225;
  v21[3] = &unk_27859D920;
  v14 = v11;
  v22 = v14;
  v15 = v9;
  v23 = v15;
  v25 = &v27;
  v16 = v10;
  v24 = v16;
  v17 = [v13 sinkWithCompletion:v26 receiveInput:v21];

  v18 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [ATXNPlusOneStudyUploader _processClientModelUpdateStreamFromStartTime:v28 shortcutSuggestionHandler:v18 infoSuggestionHandler:? activity:?];
  }

  v19 = *(v30 + 24);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v29, 8);

  return v19;
}

void __130__ATXNPlusOneStudyUploader__processClientModelUpdateStreamFromStartTime_shortcutSuggestionHandler_infoSuggestionHandler_activity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __130__ATXNPlusOneStudyUploader__processClientModelUpdateStreamFromStartTime_shortcutSuggestionHandler_infoSuggestionHandler_activity___block_invoke_cold_1(v3);
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void __130__ATXNPlusOneStudyUploader__processClientModelUpdateStreamFromStartTime_shortcutSuggestionHandler_infoSuggestionHandler_activity___block_invoke_225(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([*(a1 + 32) didDefer] & 1) == 0)
  {
    v4 = [v3 eventBody];

    if (!v4)
    {
      v5 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __130__ATXNPlusOneStudyUploader__processClientModelUpdateStreamFromStartTime_shortcutSuggestionHandler_infoSuggestionHandler_activity___block_invoke_225_cold_1(v3);
      }

      goto LABEL_15;
    }

    v5 = [v3 eventBody];
    v6 = MEMORY[0x277D42070];
    v7 = [v5 clientModelId];
    v8 = [v6 clientModelTypeFromClientModelId:v7];

    if (v8 <= 0x12)
    {
      if (((1 << v8) & 0x88A) != 0)
      {
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v9 = [v5 suggestions];
        v10 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v28;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v28 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v27 + 1) + 8 * i);
              v15 = objc_autoreleasePoolPush();
              (*(*(a1 + 40) + 16))();
              objc_autoreleasePoolPop(v15);
            }

            v11 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
          }

          while (v11);
        }
      }

      else
      {
        if (v8 != 18)
        {
          goto LABEL_15;
        }

        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v9 = [v5 suggestions];
        v17 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v24;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v24 != v19)
              {
                objc_enumerationMutation(v9);
              }

              v21 = *(*(&v23 + 1) + 8 * j);
              v22 = objc_autoreleasePoolPush();
              (*(*(a1 + 48) + 16))();
              objc_autoreleasePoolPop(v22);
            }

            v18 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v18);
        }
      }

      ++*(*(*(a1 + 56) + 8) + 24);
    }

LABEL_15:
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_applyPrivacyFilterToEvents:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([MEMORY[0x277D42590] isInternalBuild])
  {
    v4 = v3;
  }

  else
  {
    v4 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = [v10 appBundleId];
          if (v11)
          {
            v12 = v11;
            v13 = [v10 appLaunchCounts];
            v14 = [v13 numAppLaunchPast28Day];

            if (v14 < 5)
            {
              continue;
            }
          }

          [v4 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

void __84__ATXNPlusOneStudyUploader_dryRunResultFilterByExtensionBundleId_completionHandler___block_invoke_cold_2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_4(&dword_2263AA000, v1, v2, "ATXNPlusOneStudyUploader: Sent %lu events to atxtool.", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_emptyEventsForAllWidgetDescriptorsOnDeviceWithActivity:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_2263AA000, v0, OS_LOG_TYPE_ERROR, "ATXNPlusOneStudyUploader: Error fetching widget descriptors - %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_emptyEventsForAllWidgetDescriptorsOnDeviceWithActivity:(void *)a1 .cold.2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_4(&dword_2263AA000, v1, v2, "ATXNPlusOneStudyUploader: There are %lu widgets eligible for N+1 on this device.", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __84__ATXNPlusOneStudyUploader__emptyEventsForAllWidgetDescriptorsOnDeviceWithActivity___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [a1 extensionBundleId];
  v9 = [a1 widgetKind];
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_preparedEvents_widgetExistsOnScreen:activity:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_2263AA000, v0, OS_LOG_TYPE_FAULT, "ATXNPlusOneStudyUploader: Error loading Home Screen config - %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __75__ATXNPlusOneStudyUploader__preparedEvents_appScreenTimeCategory_activity___block_invoke_2_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) appBundleId];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __75__ATXNPlusOneStudyUploader__preparedEvents_appScreenTimeCategory_activity___block_invoke_213_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) appBundleId];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __68__ATXNPlusOneStudyUploader__preparedEvents_numAppLaunches_activity___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __68__ATXNPlusOneStudyUploader__preparedEvents_numAppLaunches_activity___block_invoke_218_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 error];
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_processClientModelUpdateStreamFromStartTime:(uint64_t)a1 shortcutSuggestionHandler:(NSObject *)a2 infoSuggestionHandler:activity:.cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 24);
  v4 = 134217984;
  v5 = v2;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "ATXNPlusOneStudyUploader: Processed %lu relevant client model updates in the past 24 hrs.", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __130__ATXNPlusOneStudyUploader__processClientModelUpdateStreamFromStartTime_shortcutSuggestionHandler_infoSuggestionHandler_activity___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __130__ATXNPlusOneStudyUploader__processClientModelUpdateStreamFromStartTime_shortcutSuggestionHandler_infoSuggestionHandler_activity___block_invoke_225_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 error];
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

@end