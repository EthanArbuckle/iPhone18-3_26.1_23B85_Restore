@interface ATXOnboardingStackWidgetCacheManager
- (ATXOnboardingStackWidgetCacheManager)init;
- (ATXOnboardingStackWidgetCacheManager)initWithPath:(id)path appLaunchStream:(id)stream max3PWidgetsToSerialize:(unint64_t)serialize;
- (BOOL)_writeOnboardingWidgetStackCache:(id)cache withError:(id *)error;
- (id)_mapDescriptorsToAppLaunchData:(id)data error:(id *)error;
- (id)_sortAndFilterOutLeastUsed3PWidgets:(id)widgets;
- (id)_splitDescriptorsIntoFirstPartyAndThirdParty:(id)party;
- (id)_stackCache;
- (id)fetchOnboardingStackWidgetCacheWithError:(id *)error;
- (id)updateCacheWithActivity:(id)activity;
- (void)_sortWidgetsByDistinctDaysAppWasLaunched:(id)launched withAppLaunchDictionary:(id)dictionary;
@end

@implementation ATXOnboardingStackWidgetCacheManager

- (ATXOnboardingStackWidgetCacheManager)init
{
  onboardingStackWidgetCacheFilePath = [MEMORY[0x1E698B010] onboardingStackWidgetCacheFilePath];
  v4 = BiomeLibrary();
  v5 = [v4 App];
  inFocus = [v5 InFocus];
  v7 = [(ATXOnboardingStackWidgetCacheManager *)self initWithPath:onboardingStackWidgetCacheFilePath appLaunchStream:inFocus max3PWidgetsToSerialize:100];

  return v7;
}

- (ATXOnboardingStackWidgetCacheManager)initWithPath:(id)path appLaunchStream:(id)stream max3PWidgetsToSerialize:(unint64_t)serialize
{
  pathCopy = path;
  streamCopy = stream;
  v14.receiver = self;
  v14.super_class = ATXOnboardingStackWidgetCacheManager;
  v10 = [(ATXOnboardingStackWidgetCacheManager *)&v14 init];
  if (v10)
  {
    v11 = [pathCopy copy];
    cachePath = v10->_cachePath;
    v10->_cachePath = v11;

    objc_storeStrong(&v10->_appLaunchStream, stream);
    v10->_max3PWidgetsToSerialize = serialize;
  }

  return v10;
}

- (id)updateCacheWithActivity:(id)activity
{
  activityCopy = activity;
  if (![activityCopy didDefer])
  {
    v5 = +[ATXWidgetDescriptorCache sharedInstance];
    homeScreenDescriptors = [v5 homeScreenDescriptors];
    v21 = 0;
    v8 = [(ATXOnboardingStackWidgetCacheManager *)self _mapDescriptorsToAppLaunchData:homeScreenDescriptors error:&v21];
    v9 = v21;
    if (v8)
    {
      if (![activityCopy didDefer])
      {
        v11 = objc_autoreleasePoolPush();
        v12 = MEMORY[0x1E696AD98];
        v13 = objc_opt_new();
        v10 = [v12 numberWithBool:{objc_msgSend(v13, "hasiCloudFamily")}];

        objc_autoreleasePoolPop(v11);
        if ([activityCopy didDefer])
        {
          v14 = __atxlog_handle_home_screen();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1BF549000, v14, OS_LOG_TYPE_DEFAULT, "ATXOnboardingStackWidgetCacheManager: Activity was deferred after fetching iCloud family state, stopping early", buf, 2u);
          }

          v6 = 0;
          v15 = v9;
        }

        else
        {
          v14 = [(ATXOnboardingStackWidgetCacheManager *)self _sortAndFilterOutLeastUsed3PWidgets:v8];
          v16 = [ATXOnboardingStackWidgetCache alloc];
          v17 = objc_opt_new();
          v6 = [(ATXOnboardingStackWidgetCache *)v16 initWithAppLaunchDictionary:v14 cacheUpdateDate:v17 hasiCloudFamily:v10];

          v20 = v9;
          LOBYTE(v17) = [(ATXOnboardingStackWidgetCacheManager *)self _writeOnboardingWidgetStackCache:v6 withError:&v20];
          v15 = v20;

          if ((v17 & 1) == 0)
          {
            v18 = __atxlog_handle_home_screen();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              [(ATXOnboardingStackWidgetCacheManager *)v15 updateCacheWithActivity:v18];
            }
          }
        }

        v9 = v15;
        goto LABEL_21;
      }

      v10 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BF549000, v10, OS_LOG_TYPE_DEFAULT, "ATXOnboardingStackWidgetCacheManager: Activity was deferred after fetching app launch data, stopping early", buf, 2u);
      }
    }

    else
    {
      v10 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(ATXOnboardingStackWidgetCacheManager *)v9 updateCacheWithActivity:v10];
      }
    }

    v6 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v5 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ATXOnboardingStackWidgetCacheManager: Activity was deferred, stopping early", buf, 2u);
  }

  v6 = 0;
LABEL_22:

  return v6;
}

- (id)_sortAndFilterOutLeastUsed3PWidgets:(id)widgets
{
  v37 = *MEMORY[0x1E69E9840];
  widgetsCopy = widgets;
  allKeys = [widgetsCopy allKeys];
  v6 = [(ATXOnboardingStackWidgetCacheManager *)self _splitDescriptorsIntoFirstPartyAndThirdParty:allKeys];

  second = [v6 second];
  v8 = [second mutableCopy];

  [(ATXOnboardingStackWidgetCacheManager *)self _sortWidgetsByDistinctDaysAppWasLaunched:v8 withAppLaunchDictionary:widgetsCopy];
  v9 = [v8 count];
  max3PWidgetsToSerialize = self->_max3PWidgetsToSerialize;
  if (v9 > max3PWidgetsToSerialize)
  {
    [v8 removeObjectsInRange:{max3PWidgetsToSerialize, objc_msgSend(v8, "count") - self->_max3PWidgetsToSerialize}];
  }

  v11 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  first = [v6 first];
  v13 = [first countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v32;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(first);
        }

        v17 = *(*(&v31 + 1) + 8 * i);
        v18 = [widgetsCopy objectForKeyedSubscript:v17];
        [v11 setObject:v18 forKeyedSubscript:v17];
      }

      v14 = [first countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v14);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v19 = v8;
  v20 = [v19 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v28;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v27 + 1) + 8 * j);
        v25 = [widgetsCopy objectForKeyedSubscript:{v24, v27}];
        [v11 setObject:v25 forKeyedSubscript:v24];
      }

      v21 = [v19 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v21);
  }

  return v11;
}

- (void)_sortWidgetsByDistinctDaysAppWasLaunched:(id)launched withAppLaunchDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __105__ATXOnboardingStackWidgetCacheManager__sortWidgetsByDistinctDaysAppWasLaunched_withAppLaunchDictionary___block_invoke;
  v7[3] = &unk_1E80C0710;
  v8 = dictionaryCopy;
  v6 = dictionaryCopy;
  [launched sortWithOptions:16 usingComparator:v7];
}

uint64_t __105__ATXOnboardingStackWidgetCacheManager__sortWidgetsByDistinctDaysAppWasLaunched_withAppLaunchDictionary___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [v7 uniqueDaysLaunched];

  v9 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v10 = [v9 uniqueDaysLaunched];
  v11 = -1;
  if (v8 <= v10)
  {
    v11 = 1;
  }

  if (v8 == v10)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

- (id)_splitDescriptorsIntoFirstPartyAndThirdParty:(id)party
{
  v23 = *MEMORY[0x1E69E9840];
  partyCopy = party;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = partyCopy;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        extensionBundleIdentifier = [v11 extensionBundleIdentifier];
        v13 = extensionBundleIdentifier;
        if (!extensionBundleIdentifier || (v14 = [extensionBundleIdentifier hasPrefix:@"com.apple."], v15 = v4, (v14 & 1) == 0))
        {
          v15 = v5;
        }

        [v15 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v16 = [objc_alloc(MEMORY[0x1E69C5D98]) initWithFirst:v4 second:v5];

  return v16;
}

- (id)_mapDescriptorsToAppLaunchData:(id)data error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v6 = [dataCopy _pas_mappedSetWithTransform:&__block_literal_global];
  v7 = [[ATXAppLaunches alloc] initWithStream:self->_appLaunchStream];
  v8 = [(ATXAppLaunches *)v7 rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForApps:v6];

  v9 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = dataCopy;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        extensionIdentity = [v15 extensionIdentity];
        containerBundleIdentifier = [extensionIdentity containerBundleIdentifier];

        if (containerBundleIdentifier)
        {
          v18 = [v8 objectForKeyedSubscript:containerBundleIdentifier];
          [v9 setObject:v18 forKeyedSubscript:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  return v9;
}

id __77__ATXOnboardingStackWidgetCacheManager__mapDescriptorsToAppLaunchData_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 extensionIdentity];
  v3 = [v2 containerBundleIdentifier];

  return v3;
}

- (id)_stackCache
{
  v3 = objc_alloc(MEMORY[0x1E698AFF0]);
  cachePath = self->_cachePath;
  v5 = __atxlog_handle_home_screen();
  v6 = [v3 initWithCacheFilePath:cachePath loggingHandle:v5 debugName:@"onboarding widget stacks"];

  return v6;
}

- (BOOL)_writeOnboardingWidgetStackCache:(id)cache withError:(id *)error
{
  cacheCopy = cache;
  _stackCache = [(ATXOnboardingStackWidgetCacheManager *)self _stackCache];
  LOBYTE(error) = [_stackCache storeSecureCodedObject:cacheCopy error:error];

  return error;
}

- (id)fetchOnboardingStackWidgetCacheWithError:(id *)error
{
  _stackCache = [(ATXOnboardingStackWidgetCacheManager *)self _stackCache];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [_stackCache readSecureCodedObjectWithMaxValidAge:v8 allowableClasses:error error:-1.0];

  return v9;
}

- (void)updateCacheWithActivity:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "ATXOnboardingStackWidgetCacheManager: Unable to write onboarding widget stack cache with error: %{public}@", &v2, 0xCu);
}

- (void)updateCacheWithActivity:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "ATXOnboardingStackWidgetCacheManager: Unable to map descriptors to app launch data with error: %@", &v2, 0xCu);
}

@end