@interface ATXAppPanelLaunchRatioLogger
+ (id)_getOrCreateDataDictionaryFromDefaults:(id)defaults;
+ (int)_homeScreenLocationFromPageIndex:(unint64_t)index;
+ (void)_logRatioMetricToTracker:(id)tracker location:(int)location ratioType:(int)type numAppLaunches:(unint64_t)launches numAppsShown:(unint64_t)shown;
+ (void)_writeDataDictionaryToDefaults:(id)defaults dataDictionary:(id)dictionary;
+ (void)logAppPanelAppLaunchWithSBPageIndex:(unint64_t)index;
+ (void)logAppPanelAppLaunchWithSBPageIndex:(unint64_t)index userDefaults:(id)defaults;
+ (void)logCountedAppLaunchesToEventTracker;
+ (void)logCountedAppLaunchesToEventTracker:(id)tracker homeScreenConfigCache:(id)cache userDefaults:(id)defaults;
+ (void)logCountedAppLaunchesToEventTracker:(id)tracker homeScreenPage:(id)page dataDictionary:(id)dictionary;
+ (void)logCountedDockLaunchesToEventTracker:(id)tracker dockAppList:(id)list dataDictionary:(id)dictionary;
+ (void)logNonAppPanelAppLaunchFromDock;
+ (void)logNonAppPanelAppLaunchFromDockWithUserDefaults:(id)defaults;
+ (void)logNonAppPanelAppLaunchWithSBPageIndex:(unint64_t)index;
+ (void)logNonAppPanelAppLaunchWithSBPageIndex:(unint64_t)index userDefaults:(id)defaults;
@end

@implementation ATXAppPanelLaunchRatioLogger

+ (void)logNonAppPanelAppLaunchFromDock
{
  v3 = objc_alloc(MEMORY[0x1E695E000]);
  v4 = [v3 initWithSuiteName:*MEMORY[0x1E698B030]];
  [self logNonAppPanelAppLaunchFromDockWithUserDefaults:v4];
}

+ (void)logNonAppPanelAppLaunchWithSBPageIndex:(unint64_t)index
{
  v5 = objc_alloc(MEMORY[0x1E695E000]);
  v6 = [v5 initWithSuiteName:*MEMORY[0x1E698B030]];
  [self logNonAppPanelAppLaunchWithSBPageIndex:index userDefaults:v6];
}

+ (void)logAppPanelAppLaunchWithSBPageIndex:(unint64_t)index
{
  v5 = objc_alloc(MEMORY[0x1E695E000]);
  v6 = [v5 initWithSuiteName:*MEMORY[0x1E698B030]];
  [self logAppPanelAppLaunchWithSBPageIndex:index userDefaults:v6];
}

+ (void)logCountedAppLaunchesToEventTracker
{
  v6 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = objc_alloc(MEMORY[0x1E695E000]);
  v5 = [v4 initWithSuiteName:*MEMORY[0x1E698B030]];
  [self logCountedAppLaunchesToEventTracker:v6 homeScreenConfigCache:v3 userDefaults:v5];
}

+ (void)logNonAppPanelAppLaunchFromDockWithUserDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v5 = [self _getOrCreateDataDictionaryFromDefaults:defaultsCopy];
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
  [self _writeDataDictionaryToDefaults:defaultsCopy dataDictionary:v5];
}

+ (void)logNonAppPanelAppLaunchWithSBPageIndex:(unint64_t)index userDefaults:(id)defaults
{
  v25 = *MEMORY[0x1E69E9840];
  defaultsCopy = defaults;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  v8 = [self _getOrCreateDataDictionaryFromDefaults:defaultsCopy];
  stringValue = [v7 stringValue];
  v10 = [v8 objectForKey:stringValue];
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
  stringValue2 = [v7 stringValue];
  [v8 setObject:v11 forKey:stringValue2];

  [self _writeDataDictionaryToDefaults:defaultsCopy dataDictionary:v8];
}

+ (void)logAppPanelAppLaunchWithSBPageIndex:(unint64_t)index userDefaults:(id)defaults
{
  v25 = *MEMORY[0x1E69E9840];
  defaultsCopy = defaults;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  v8 = [self _getOrCreateDataDictionaryFromDefaults:defaultsCopy];
  stringValue = [v7 stringValue];
  v10 = [v8 objectForKey:stringValue];
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
  stringValue2 = [v7 stringValue];
  [v8 setObject:v11 forKey:stringValue2];

  [self _writeDataDictionaryToDefaults:defaultsCopy dataDictionary:v8];
}

+ (void)logCountedAppLaunchesToEventTracker:(id)tracker homeScreenConfigCache:(id)cache userDefaults:(id)defaults
{
  v32 = *MEMORY[0x1E69E9840];
  trackerCopy = tracker;
  cacheCopy = cache;
  defaultsCopy = defaults;
  v11 = [self _getOrCreateDataDictionaryFromDefaults:defaultsCopy];
  v30 = 0;
  v12 = [cacheCopy loadDockAppListWithError:&v30];
  v13 = v30;
  v14 = v13;
  if (v12 && !v13)
  {
    v29 = 0;
    v15 = [cacheCopy loadHomeScreenPageConfigurationsWithError:&v29];
    v16 = v29;
    v14 = v16;
    if (v15 && !v16)
    {
      v23 = v15;
      v24 = defaultsCopy;
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

            [self logCountedAppLaunchesToEventTracker:trackerCopy homeScreenPage:*(*(&v25 + 1) + 8 * i) dataDictionary:{v11, v23}];
          }

          v19 = [v17 countByEnumeratingWithState:&v25 objects:v31 count:16];
        }

        while (v19);
      }

      [self logCountedDockLaunchesToEventTracker:trackerCopy dockAppList:v12 dataDictionary:v11];
      v22 = objc_opt_new();
      defaultsCopy = v24;
      [self _writeDataDictionaryToDefaults:v24 dataDictionary:v22];

      v15 = v23;
    }
  }
}

+ (void)logCountedDockLaunchesToEventTracker:(id)tracker dockAppList:(id)list dataDictionary:(id)dictionary
{
  trackerCopy = tracker;
  listCopy = list;
  v9 = [dictionary objectForKey:@"dockLaunches"];
  v10 = v9;
  if (v9)
  {
    unsignedIntegerValue = [v9 unsignedIntegerValue];
    if (unsignedIntegerValue)
    {
      v12 = unsignedIntegerValue;
      if ([listCopy count])
      {
        [self _logRatioMetricToTracker:trackerCopy location:6 ratioType:4 numAppLaunches:v12 numAppsShown:{objc_msgSend(listCopy, "count")}];
      }
    }
  }
}

+ (void)logCountedAppLaunchesToEventTracker:(id)tracker homeScreenPage:(id)page dataDictionary:(id)dictionary
{
  trackerCopy = tracker;
  pageCopy = page;
  dictionaryCopy = dictionary;
  pageIndex = [pageCopy pageIndex];
  v12 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:pageIndex];
  stringValue = [v12 stringValue];
  v14 = [dictionaryCopy objectForKey:stringValue];

  if (v14)
  {
    unsignedIntegerValue = [v14 objectForKey:@"appPanelLaunches"];
    v16 = [v14 objectForKey:@"staticAppLaunches"];
    v21 = unsignedIntegerValue;
    if (unsignedIntegerValue)
    {
      unsignedIntegerValue = [unsignedIntegerValue unsignedIntegerValue];
    }

    if (v16)
    {
      unsignedIntegerValue2 = [v16 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue2 = 0;
    }

    if (&unsignedIntegerValue[unsignedIntegerValue2])
    {
      v22 = trackerCopy;
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v31 = 0;
      v24 = 0;
      v25 = &v24;
      v26 = 0x2020000000;
      v27 = 0;
      leafIcons = [pageCopy leafIcons];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __98__ATXAppPanelLaunchRatioLogger_logCountedAppLaunchesToEventTracker_homeScreenPage_dataDictionary___block_invoke;
      v23[3] = &unk_1E80C6600;
      v23[4] = &v28;
      v23[5] = &v24;
      [leafIcons enumerateObjectsUsingBlock:v23];

      [self _logRatioMetricToTracker:v22 location:objc_msgSend(self ratioType:"_homeScreenLocationFromPageIndex:" numAppLaunches:pageIndex) numAppsShown:{1, unsignedIntegerValue, 8}];
      v19 = [self _homeScreenLocationFromPageIndex:pageIndex];
      [self _logRatioMetricToTracker:v22 location:v19 ratioType:2 numAppLaunches:unsignedIntegerValue2 numAppsShown:v29[3]];
      v20 = [self _homeScreenLocationFromPageIndex:pageIndex];
      [self _logRatioMetricToTracker:v22 location:v20 ratioType:3 numAppLaunches:unsignedIntegerValue2 numAppsShown:v25[3]];
      _Block_object_dispose(&v24, 8);
      _Block_object_dispose(&v28, 8);
      trackerCopy = v22;
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

+ (void)_logRatioMetricToTracker:(id)tracker location:(int)location ratioType:(int)type numAppLaunches:(unint64_t)launches numAppsShown:(unint64_t)shown
{
  v34 = *MEMORY[0x1E69E9840];
  if (shown)
  {
    v9 = *&type;
    v10 = *&location;
    v11 = launches / shown;
    trackerCopy = tracker;
    v13 = objc_opt_new();
    [v13 setLocation:v10];
    [v13 setRatioType:v9];
    [trackerCopy trackDistributionForMessage:v13 value:v11];

    v14 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      location = [v13 location];
      if ((location - 1) >= 6)
      {
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", location];
      }

      else
      {
        v18 = off_1E80C6620[(location - 1)];
      }

      v19 = v18;
      ratioType = [v13 ratioType];
      if ((ratioType - 1) >= 4)
      {
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", ratioType];
      }

      else
      {
        v21 = off_1E80C6650[(ratioType - 1)];
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
      launchesCopy = launches;
      v32 = 2048;
      shownCopy = shown;
      _os_log_debug_impl(&dword_1BF549000, v14, OS_LOG_TYPE_DEBUG, "LOGGED: %@ - ATXMPBHomeScreenAppPanelLaunchRatioTracker with location %@ ratioType %@ launchRatio %f numAppLaunches %lu numAppsShown %lu", buf, 0x3Eu);
    }
  }
}

+ (int)_homeScreenLocationFromPageIndex:(unint64_t)index
{
  if (index < 4)
  {
    return index + 1;
  }

  else
  {
    return 5;
  }
}

+ (id)_getOrCreateDataDictionaryFromDefaults:(id)defaults
{
  v3 = [defaults objectForKey:@"ATXAppPanelLaunchRatioLoggerDataDictionary"];
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

+ (void)_writeDataDictionaryToDefaults:(id)defaults dataDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  defaultsCopy = defaults;
  v7 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    +[ATXAppPanelLaunchRatioLogger _writeDataDictionaryToDefaults:dataDictionary:];
  }

  [defaultsCopy setObject:dictionaryCopy forKey:@"ATXAppPanelLaunchRatioLoggerDataDictionary"];
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