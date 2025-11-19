@interface ATXIntentMetadataCache
+ (id)sharedInstance;
- (ATXIntentMetadataCache)initWithDataStore:(id)a3 cacheInvalidationCriteria:(id)a4 startMonitoring:(BOOL)a5;
- (BOOL)isEligibleForWidgetsForIntent:(id)a3;
- (BOOL)supportsBackgroundExecutionForIntent:(id)a3;
- (id)_getCachedEligibleForWidgetsForIntent:(id)a3;
- (id)_getCachedSubtitleForCacheKey:(id)a3;
- (id)_getCachedSupportsBackgroundExecutionForIntent:(id)a3;
- (id)_getCachedTitleForCacheKey:(id)a3;
- (id)initInternal;
- (id)subtitleForIntent:(id)a3 localeIdentifier:(id)a4;
- (id)titleForIntent:(id)a3 localeIdentifier:(id)a4;
- (id)validParameterCombinationsWithSchemaForIntent:(id)a3;
- (void)_setSubtitle:(id)a3 cacheKey:(id)a4;
- (void)_setTitle:(id)a3 cacheKey:(id)a4;
- (void)applicationsDidUninstall:(id)a3;
- (void)applicationsDidUpdate:(id)a3;
- (void)setValidParameterCombinationsWithSchema:(id)a3 intent:(id)a4;
- (void)systemDidUpdate;
@end

@implementation ATXIntentMetadataCache

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ATXIntentMetadataCache_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance__pasOnceToken7_29 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken7_29, block);
  }

  v2 = sharedInstance__pasExprOnceResult_36;

  return v2;
}

void __40__ATXIntentMetadataCache_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(*(a1 + 32)) initInternal];
  v4 = sharedInstance__pasExprOnceResult_36;
  sharedInstance__pasExprOnceResult_36 = v3;

  objc_autoreleasePoolPop(v2);
}

- (id)initInternal
{
  v3 = +[_ATXDataStore sharedInstance];
  v4 = objc_opt_new();
  v5 = [(ATXIntentMetadataCache *)self initWithDataStore:v3 cacheInvalidationCriteria:v4 startMonitoring:1];

  return v5;
}

- (ATXIntentMetadataCache)initWithDataStore:(id)a3 cacheInvalidationCriteria:(id)a4 startMonitoring:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = ATXIntentMetadataCache;
  v11 = [(ATXIntentMetadataCache *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_dataStore, a3);
    objc_storeStrong(&v12->_invalidationCriteria, a4);
    if (v5)
    {
      [(ATXIntentMetadataCacheInvalidationMonitor *)v12->_invalidationCriteria setDelegateAndStartMonitoring:v12];
    }
  }

  return v12;
}

- (void)setValidParameterCombinationsWithSchema:(id)a3 intent:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [[ATXIntentMetadataCacheKey alloc] initWithIntent:v7 includingParameters:1];
  if (v8 && [v6 count])
  {
    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(ATXIntentMetadataCacheKey *)v8 stringRepresentationForSerialization];
      v14 = 138412290;
      v15 = v10;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "ATXIntentMetadataCache saving parameter combinations for cacheKey: %@", &v14, 0xCu);
    }

    [(_ATXDataStore *)self->_dataStore writeValidParameterCombinationsWithSchema:v6 cacheKey:v8];
  }

  else
  {
    v11 = __atxlog_handle_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v7 _className];
      v14 = 138412290;
      v15 = v12;
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "ATXIntentMetadataCache couldn't save parameter combinations for intent: %@", &v14, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)validParameterCombinationsWithSchemaForIntent:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[ATXIntentMetadataCacheKey alloc] initWithIntent:v4 includingParameters:1];

  if (v5)
  {
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [(ATXIntentMetadataCacheKey *)v5 stringRepresentationForSerialization];
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "ATXIntentMetadataCache fetching cached parameter combinations for cacheKey: %@", &v11, 0xCu);
    }

    v8 = [(_ATXDataStore *)self->_dataStore validParameterCombinationsWithSchemaForCacheKey:v5];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)supportsBackgroundExecutionForIntent:(id)a3
{
  v4 = a3;
  v5 = [(ATXIntentMetadataCache *)self _getCachedSupportsBackgroundExecutionForIntent:v4];
  v6 = v5;
  if (v5)
  {
    LOBYTE(v7) = [v5 BOOLValue];
  }

  else
  {
    v7 = [v4 atx_supportsBackgroundExecution];
    [(ATXIntentMetadataCache *)self _setSupportsBackgroundExecution:v7 intent:v4];
  }

  return v7;
}

- (id)_getCachedSupportsBackgroundExecutionForIntent:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[ATXIntentMetadataCacheKey alloc] initWithIntent:v4 includingParameters:1];

  if (v5)
  {
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [(ATXIntentMetadataCacheKey *)v5 stringRepresentationForSerialization];
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "ATXIntentMetadataCache fetching cached supportsBackgroundExecution for cacheKey: %@", &v11, 0xCu);
    }

    v8 = [(_ATXDataStore *)self->_dataStore supportsBackgroundExecutionForCacheKey:v5];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)titleForIntent:(id)a3 localeIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[ATXIntentMetadataCacheKey alloc] initWithIntent:v6 includingParameterValues:1 localeIdentifier:v7];

  v9 = [(ATXIntentMetadataCache *)self _getCachedTitleForCacheKey:v8];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [v6 atx_titleWithEfficientLocalization];
    [(ATXIntentMetadataCache *)self _setTitle:v11 cacheKey:v8];
  }

  return v11;
}

- (void)_setTitle:(id)a3 cacheKey:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = __atxlog_handle_default();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = [v7 stringRepresentationForSerialization];
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "ATXIntentMetadataCache saving title for cacheKey: %@", &v12, 0xCu);
    }

    [(_ATXDataStore *)self->_dataStore writeTitle:v6 cacheKey:v7];
  }

  else
  {
    if (v9)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "ATXIntentMetadataCache couldn't save title because cacheKey is nil.", &v12, 2u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_getCachedTitleForCacheKey:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v4 stringRepresentationForSerialization];
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_INFO, "ATXIntentMetadataCache fetching cached title for cacheKey: %@", &v10, 0xCu);
    }

    v7 = [(_ATXDataStore *)self->_dataStore titleForCacheKey:v4];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)subtitleForIntent:(id)a3 localeIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[ATXIntentMetadataCacheKey alloc] initWithIntent:v6 includingParameterValues:1 localeIdentifier:v7];

  v9 = [(ATXIntentMetadataCache *)self _getCachedSubtitleForCacheKey:v8];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = [v6 atx_subtitleWithEfficientLocalization];
    v13 = v12;
    v14 = &stru_2839A6058;
    if (v12)
    {
      v14 = v12;
    }

    v11 = v14;

    [(ATXIntentMetadataCache *)self _setSubtitle:v11 cacheKey:v8];
  }

  return v11;
}

- (void)_setSubtitle:(id)a3 cacheKey:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = __atxlog_handle_default();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = [v7 stringRepresentationForSerialization];
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "ATXIntentMetadataCache saving subtitle for cacheKey: %@", &v12, 0xCu);
    }

    [(_ATXDataStore *)self->_dataStore writeSubtitle:v6 cacheKey:v7];
  }

  else
  {
    if (v9)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "ATXIntentMetadataCache couldn't save subtitle because cacheKey is nil.", &v12, 2u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_getCachedSubtitleForCacheKey:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v4 stringRepresentationForSerialization];
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_INFO, "ATXIntentMetadataCache fetching cached subtitle for cacheKey: %@", &v10, 0xCu);
    }

    v7 = [(_ATXDataStore *)self->_dataStore subtitleForCacheKey:v4];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)isEligibleForWidgetsForIntent:(id)a3
{
  v4 = a3;
  v5 = [(ATXIntentMetadataCache *)self _getCachedEligibleForWidgetsForIntent:v4];
  v6 = v5;
  if (v5)
  {
    LOBYTE(v7) = [v5 BOOLValue];
  }

  else
  {
    v7 = [v4 atx_isEligibleForWidgets];
    [(ATXIntentMetadataCache *)self _setEligibleForWidgets:v7 intent:v4];
  }

  return v7;
}

- (id)_getCachedEligibleForWidgetsForIntent:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[ATXIntentMetadataCacheKey alloc] initWithIntent:v4 includingParameters:0];

  if (v5)
  {
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [(ATXIntentMetadataCacheKey *)v5 stringRepresentationForSerialization];
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "ATXIntentMetadataCache fetching cached isEligibleForWidgets for cacheKey: %@", &v11, 0xCu);
    }

    v8 = [(_ATXDataStore *)self->_dataStore isEligibleForWidgetsForCacheKey:v5];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)applicationsDidUpdate:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = __atxlog_handle_default();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v17 = v9;
          _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "ATXIntentMetadataCache invalidating intents due to app registration for bundleId %@", buf, 0xCu);
        }

        [(_ATXDataStore *)self->_dataStore removeCachedIntentsWithBundleId:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)applicationsDidUninstall:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = __atxlog_handle_default();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v17 = v9;
          _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "ATXIntentMetadataCache invalidating intents due to app uninstall for bundleId %@", buf, 0xCu);
        }

        [(_ATXDataStore *)self->_dataStore removeCachedIntentsWithBundleId:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)systemDidUpdate
{
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "ATXIntentMetadataCache invalidating all intents due to OS update", v4, 2u);
  }

  [(_ATXDataStore *)self->_dataStore removeAllCachedIntents];
}

@end