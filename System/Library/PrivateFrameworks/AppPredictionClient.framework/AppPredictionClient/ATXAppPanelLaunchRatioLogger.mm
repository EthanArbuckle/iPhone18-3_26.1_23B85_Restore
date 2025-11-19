@interface ATXAppPanelLaunchRatioLogger
+ (id)_getOrCreateDataDictionaryFromDefaults:(id)a3;
+ (int)_homeScreenLocationFromPageIndex:(unint64_t)a3;
+ (void)_logRatioMetricToTracker:(id)a3 location:(int)a4 ratioType:(int)a5 numAppLaunches:(unint64_t)a6 numAppsShown:(unint64_t)a7;
+ (void)_writeDataDictionaryToDefaults:(id)a3 dataDictionary:(id)a4;
+ (void)logAppPanelAppLaunchWithSBPageIndex:(unint64_t)a3;
+ (void)logAppPanelAppLaunchWithSBPageIndex:(unint64_t)a3 userDefaults:(id)a4;
+ (void)logCountedAppLaunchesToEventTracker;
+ (void)logCountedAppLaunchesToEventTracker:(id)a3 homeScreenConfigCache:(id)a4 userDefaults:(id)a5;
+ (void)logCountedAppLaunchesToEventTracker:(id)a3 homeScreenPage:(id)a4 dataDictionary:(id)a5;
+ (void)logCountedDockLaunchesToEventTracker:(id)a3 dockAppList:(id)a4 dataDictionary:(id)a5;
+ (void)logNonAppPanelAppLaunchFromDock;
+ (void)logNonAppPanelAppLaunchFromDockWithUserDefaults:(id)a3;
+ (void)logNonAppPanelAppLaunchWithSBPageIndex:(unint64_t)a3;
+ (void)logNonAppPanelAppLaunchWithSBPageIndex:(unint64_t)a3 userDefaults:(id)a4;
@end

@implementation ATXAppPanelLaunchRatioLogger

+ (void)logNonAppPanelAppLaunchFromDock
{
  v3 = objc_alloc(MEMORY[0x1E695E000]);
  v4 = [v3 initWithSuiteName:*MEMORY[0x1E698B030]];
  [a1 logNonAppPanelAppLaunchFromDockWithUserDefaults:v4];
}

+ (void)logNonAppPanelAppLaunchWithSBPageIndex:(unint64_t)a3
{
  v5 = objc_alloc(MEMORY[0x1E695E000]);
  v6 = [v5 initWithSuiteName:*MEMORY[0x1E698B030]];
  [a1 logNonAppPanelAppLaunchWithSBPageIndex:a3 userDefaults:v6];
}

+ (void)logAppPanelAppLaunchWithSBPageIndex:(unint64_t)a3
{
  v5 = objc_alloc(MEMORY[0x1E695E000]);
  v6 = [v5 initWithSuiteName:*MEMORY[0x1E698B030]];
  [a1 logAppPanelAppLaunchWithSBPageIndex:a3 userDefaults:v6];
}

+ (void)logCountedAppLaunchesToEventTracker
{
  v6 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = objc_alloc(MEMORY[0x1E695E000]);
  v5 = [v4 initWithSuiteName:*MEMORY[0x1E698B030]];
  [a1 logCountedAppLaunchesToEventTracker:v6 homeScreenConfigCache:v3 userDefaults:v5];
}

+ (void)logNonAppPanelAppLaunchFromDockWithUserDefaults:(id)a3
{
  v4 = a3;
  v5 = [a1 _getOrCreateDataDictionaryFromDefaults:v4];
  v6 = [v5 objectForKey:@"dockLaunches"];
  if (v6)
  {
    v7 = v6;
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "unsignedIntegerValue") + 1}];
  }

  else
  {
    v8 = &unk_1F3E60630;
  }

  v9 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    +[ATXAppPanelLaunchRatioLogger logNonAppPanelAppLaunchFromDockWithUserDefaults:];
  }

  [v5 setObject:v8 forKey:@"dockLaunches"];
  [a1 _writeDataDictionaryToDefaults:v4 dataDictionary:v5];
}

+ (void)logNonAppPanelAppLaunchWithSBPageIndex:(unint64_t)a3 userDefaults:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v8 = [a1 _getOrCreateDataDictionaryFromDefaults:v6];
  v9 = [v7 stringValue];
  v10 = [v8 objectForKey:v9];
  v11 = [v10 mutableCopy];

  if (!v11)
  {
    v11 = objc_opt_new();
  }

  v12 = [v11 objectForKey:@"staticAppLaunches"];
  v13 = objc_alloc(MEMORY[0x1E696AD98]);
  if (v12)
  {
    v14 = [v13 initWithUnsignedInteger:{objc_msgSend(v12, "unsignedIntegerValue") + 1}];
  }

  else
  {
    v14 = [v13 initWithUnsignedInteger:1];
  }

  v15 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = 138412802;
    v20 = v18;
    v21 = 2112;
    v22 = v14;
    v23 = 2112;
    v24 = v7;
    _os_log_debug_impl(&dword_1BF549000, v15, OS_LOG_TYPE_DEBUG, "%@ - ATXMPBHomeScreenAppPanelLaunchRatioTracker has new static app launch count of %@ with pageIndex: %@", &v19, 0x20u);
  }

  [v11 setObject:v14 forKey:@"staticAppLaunches"];
  v16 = [v7 stringValue];
  [v8 setObject:v11 forKey:v16];

  [a1 _writeDataDictionaryToDefaults:v6 dataDictionary:v8];
}

+ (void)logAppPanelAppLaunchWithSBPageIndex:(unint64_t)a3 userDefaults:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v8 = [a1 _getOrCreateDataDictionaryFromDefaults:v6];
  v9 = [v7 stringValue];
  v10 = [v8 objectForKey:v9];
  v11 = [v10 mutableCopy];

  if (!v11)
  {
    v11 = objc_opt_new();
  }

  v12 = [v11 objectForKey:@"appPanelLaunches"];
  v13 = objc_alloc(MEMORY[0x1E696AD98]);
  if (v12)
  {
    v14 = [v13 initWithUnsignedInteger:{objc_msgSend(v12, "unsignedIntegerValue") + 1}];
  }

  else
  {
    v14 = [v13 initWithUnsignedInteger:1];
  }

  v15 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = 138412802;
    v20 = v18;
    v21 = 2112;
    v22 = v14;
    v23 = 2112;
    v24 = v7;
    _os_log_debug_impl(&dword_1BF549000, v15, OS_LOG_TYPE_DEBUG, "%@ - ATXMPBHomeScreenAppPanelLaunchRatioTracker has new panel app launch count of %@ with pageIndex: %@", &v19, 0x20u);
  }

  [v11 setObject:v14 forKey:@"appPanelLaunches"];
  v16 = [v7 stringValue];
  [v8 setObject:v11 forKey:v16];

  [a1 _writeDataDictionaryToDefaults:v6 dataDictionary:v8];
}

+ (void)logCountedAppLaunchesToEventTracker:(id)a3 homeScreenConfigCache:(id)a4 userDefaults:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [a1 _getOrCreateDataDictionaryFromDefaults:v10];
  v30 = 0;
  v12 = [v9 loadDockAppListWithError:&v30];
  v13 = v30;
  v14 = v13;
  if (v12 && !v13)
  {
    v29 = 0;
    v15 = [v9 loadHomeScreenPageConfigurationsWithError:&v29];
    v16 = v29;
    v14 = v16;
    if (v15 && !v16)
    {
      v23 = v15;
      v24 = v10;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v17 = v15;
      v18 = [v17 countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v26;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v26 != v20)
            {
              objc_enumerationMutation(v17);
            }

            [a1 logCountedAppLaunchesToEventTracker:v8 homeScreenPage:*(*(&v25 + 1) + 8 * i) dataDictionary:{v11, v23}];
          }

          v19 = [v17 countByEnumeratingWithState:&v25 objects:v31 count:16];
        }

        while (v19);
      }

      [a1 logCountedDockLaunchesToEventTracker:v8 dockAppList:v12 dataDictionary:v11];
      v22 = objc_opt_new();
      v10 = v24;
      [a1 _writeDataDictionaryToDefaults:v24 dataDictionary:v22];

      v15 = v23;
    }
  }
}

+ (void)logCountedDockLaunchesToEventTracker:(id)a3 dockAppList:(id)a4 dataDictionary:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = [a5 objectForKey:@"dockLaunches"];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 unsignedIntegerValue];
    if (v11)
    {
      v12 = v11;
      if ([v8 count])
      {
        [a1 _logRatioMetricToTracker:v13 location:6 ratioType:4 numAppLaunches:v12 numAppsShown:{objc_msgSend(v8, "count")}];
      }
    }
  }
}

+ (void)logCountedAppLaunchesToEventTracker:(id)a3 homeScreenPage:(id)a4 dataDictionary:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 pageIndex];
  v12 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:v11];
  v13 = [v12 stringValue];
  v14 = [v10 objectForKey:v13];

  if (v14)
  {
    v15 = [v14 objectForKey:@"appPanelLaunches"];
    v16 = [v14 objectForKey:@"staticAppLaunches"];
    v21 = v15;
    if (v15)
    {
      v15 = [v15 unsignedIntegerValue];
    }

    if (v16)
    {
      v17 = [v16 unsignedIntegerValue];
    }

    else
    {
      v17 = 0;
    }

    if (&v15[v17])
    {
      v22 = v8;
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v31 = 0;
      v24 = 0;
      v25 = &v24;
      v26 = 0x2020000000;
      v27 = 0;
      v18 = [v9 leafIcons];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __98__ATXAppPanelLaunchRatioLogger_logCountedAppLaunchesToEventTracker_homeScreenPage_dataDictionary___block_invoke;
      v23[3] = &unk_1E80C6600;
      v23[4] = &v28;
      v23[5] = &v24;
      [v18 enumerateObjectsUsingBlock:v23];

      [a1 _logRatioMetricToTracker:v22 location:objc_msgSend(a1 ratioType:"_homeScreenLocationFromPageIndex:" numAppLaunches:v11) numAppsShown:{1, v15, 8}];
      v19 = [a1 _homeScreenLocationFromPageIndex:v11];
      [a1 _logRatioMetricToTracker:v22 location:v19 ratioType:2 numAppLaunches:v17 numAppsShown:v29[3]];
      v20 = [a1 _homeScreenLocationFromPageIndex:v11];
      [a1 _logRatioMetricToTracker:v22 location:v20 ratioType:3 numAppLaunches:v17 numAppsShown:v25[3]];
      _Block_object_dispose(&v24, 8);
      _Block_object_dispose(&v28, 8);
      v8 = v22;
    }
  }
}

void __98__ATXAppPanelLaunchRatioLogger_logCountedAppLaunchesToEventTracker_homeScreenPage_dataDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ++*(*(*(a1 + 32) + 8) + 24);
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ++*(*(*(a1 + 32) + 8) + 24);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __98__ATXAppPanelLaunchRatioLogger_logCountedAppLaunchesToEventTracker_homeScreenPage_dataDictionary___block_invoke_2;
    v4[3] = &unk_1E80C65D8;
    v4[4] = *(a1 + 40);
    [v3 enumerateApps:v4];
  }
}

+ (void)_logRatioMetricToTracker:(id)a3 location:(int)a4 ratioType:(int)a5 numAppLaunches:(unint64_t)a6 numAppsShown:(unint64_t)a7
{
  v34 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v9 = *&a5;
    v10 = *&a4;
    v11 = a6 / a7;
    v12 = a3;
    v13 = objc_opt_new();
    [v13 setLocation:v10];
    [v13 setRatioType:v9];
    [v12 trackDistributionForMessage:v13 value:v11];

    v14 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = [v13 location];
      if ((v17 - 1) >= 6)
      {
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v17];
      }

      else
      {
        v18 = off_1E80C6620[(v17 - 1)];
      }

      v19 = v18;
      v20 = [v13 ratioType];
      if ((v20 - 1) >= 4)
      {
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v20];
      }

      else
      {
        v21 = off_1E80C6650[(v20 - 1)];
      }

      *buf = 138413570;
      v23 = v16;
      v24 = 2112;
      v25 = v19;
      v26 = 2112;
      v27 = v21;
      v28 = 2048;
      v29 = v11;
      v30 = 2048;
      v31 = a6;
      v32 = 2048;
      v33 = a7;
      _os_log_debug_impl(&dword_1BF549000, v14, OS_LOG_TYPE_DEBUG, "LOGGED: %@ - ATXMPBHomeScreenAppPanelLaunchRatioTracker with location %@ ratioType %@ launchRatio %f numAppLaunches %lu numAppsShown %lu", buf, 0x3Eu);
    }
  }
}

+ (int)_homeScreenLocationFromPageIndex:(unint64_t)a3
{
  if (a3 < 4)
  {
    return a3 + 1;
  }

  else
  {
    return 5;
  }
}

+ (id)_getOrCreateDataDictionaryFromDefaults:(id)a3
{
  v3 = [a3 objectForKey:@"ATXAppPanelLaunchRatioLoggerDataDictionary"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 mutableCopy];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v6 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    +[ATXAppPanelLaunchRatioLogger _getOrCreateDataDictionaryFromDefaults:];
  }

  return v5;
}

+ (void)_writeDataDictionaryToDefaults:(id)a3 dataDictionary:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    +[ATXAppPanelLaunchRatioLogger _writeDataDictionaryToDefaults:dataDictionary:];
  }

  [v6 setObject:v5 forKey:@"ATXAppPanelLaunchRatioLoggerDataDictionary"];
}

+ (void)logNonAppPanelAppLaunchFromDockWithUserDefaults:.cold.1()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_1_7(&dword_1BF549000, v2, v3, "%@ - ATXMPBHomeScreenAppPanelLaunchRatioTracker has new dock launch count of %@", v4, v5, v6, v7, v8);
}

+ (void)_getOrCreateDataDictionaryFromDefaults:.cold.1()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_1_7(&dword_1BF549000, v2, v3, "%@ - ATXMPBHomeScreenAppPanelLaunchRatioTracker read dict %@", v4, v5, v6, v7, v8);
}

+ (void)_writeDataDictionaryToDefaults:dataDictionary:.cold.1()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_1_7(&dword_1BF549000, v2, v3, "%@ - ATXMPBHomeScreenAppPanelLaunchRatioTracker saving dict %@", v4, v5, v6, v7, v8);
}

@end