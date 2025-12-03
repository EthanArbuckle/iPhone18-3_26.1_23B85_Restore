@interface ATXIntentMetadataCache
+ (id)sharedInstance;
- (ATXIntentMetadataCache)initWithDataStore:(id)store cacheInvalidationCriteria:(id)criteria startMonitoring:(BOOL)monitoring;
- (BOOL)isEligibleForWidgetsForIntent:(id)intent;
- (BOOL)supportsBackgroundExecutionForIntent:(id)intent;
- (id)_getCachedEligibleForWidgetsForIntent:(id)intent;
- (id)_getCachedSubtitleForCacheKey:(id)key;
- (id)_getCachedSupportsBackgroundExecutionForIntent:(id)intent;
- (id)_getCachedTitleForCacheKey:(id)key;
- (id)initInternal;
- (id)subtitleForIntent:(id)intent localeIdentifier:(id)identifier;
- (id)titleForIntent:(id)intent localeIdentifier:(id)identifier;
- (id)validParameterCombinationsWithSchemaForIntent:(id)intent;
- (void)_setSubtitle:(id)subtitle cacheKey:(id)key;
- (void)_setTitle:(id)title cacheKey:(id)key;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)applicationsDidUpdate:(id)update;
- (void)setValidParameterCombinationsWithSchema:(id)schema intent:(id)intent;
- (void)systemDidUpdate;
@end

@implementation ATXIntentMetadataCache

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ATXIntentMetadataCache_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (ATXIntentMetadataCache)initWithDataStore:(id)store cacheInvalidationCriteria:(id)criteria startMonitoring:(BOOL)monitoring
{
  monitoringCopy = monitoring;
  storeCopy = store;
  criteriaCopy = criteria;
  v14.receiver = self;
  v14.super_class = ATXIntentMetadataCache;
  v11 = [(ATXIntentMetadataCache *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_dataStore, store);
    objc_storeStrong(&v12->_invalidationCriteria, criteria);
    if (monitoringCopy)
    {
      [(ATXIntentMetadataCacheInvalidationMonitor *)v12->_invalidationCriteria setDelegateAndStartMonitoring:v12];
    }
  }

  return v12;
}

- (void)setValidParameterCombinationsWithSchema:(id)schema intent:(id)intent
{
  v16 = *MEMORY[0x277D85DE8];
  schemaCopy = schema;
  intentCopy = intent;
  v8 = [[ATXIntentMetadataCacheKey alloc] initWithIntent:intentCopy includingParameters:1];
  if (v8 && [schemaCopy count])
  {
    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      stringRepresentationForSerialization = [(ATXIntentMetadataCacheKey *)v8 stringRepresentationForSerialization];
      v14 = 138412290;
      v15 = stringRepresentationForSerialization;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "ATXIntentMetadataCache saving parameter combinations for cacheKey: %@", &v14, 0xCu);
    }

    [(_ATXDataStore *)self->_dataStore writeValidParameterCombinationsWithSchema:schemaCopy cacheKey:v8];
  }

  else
  {
    v11 = __atxlog_handle_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      _className = [intentCopy _className];
      v14 = 138412290;
      v15 = _className;
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "ATXIntentMetadataCache couldn't save parameter combinations for intent: %@", &v14, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)validParameterCombinationsWithSchemaForIntent:(id)intent
{
  v13 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  v5 = [[ATXIntentMetadataCacheKey alloc] initWithIntent:intentCopy includingParameters:1];

  if (v5)
  {
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      stringRepresentationForSerialization = [(ATXIntentMetadataCacheKey *)v5 stringRepresentationForSerialization];
      v11 = 138412290;
      v12 = stringRepresentationForSerialization;
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

- (BOOL)supportsBackgroundExecutionForIntent:(id)intent
{
  intentCopy = intent;
  v5 = [(ATXIntentMetadataCache *)self _getCachedSupportsBackgroundExecutionForIntent:intentCopy];
  v6 = v5;
  if (v5)
  {
    LOBYTE(atx_supportsBackgroundExecution) = [v5 BOOLValue];
  }

  else
  {
    atx_supportsBackgroundExecution = [intentCopy atx_supportsBackgroundExecution];
    [(ATXIntentMetadataCache *)self _setSupportsBackgroundExecution:atx_supportsBackgroundExecution intent:intentCopy];
  }

  return atx_supportsBackgroundExecution;
}

- (id)_getCachedSupportsBackgroundExecutionForIntent:(id)intent
{
  v13 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  v5 = [[ATXIntentMetadataCacheKey alloc] initWithIntent:intentCopy includingParameters:1];

  if (v5)
  {
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      stringRepresentationForSerialization = [(ATXIntentMetadataCacheKey *)v5 stringRepresentationForSerialization];
      v11 = 138412290;
      v12 = stringRepresentationForSerialization;
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

- (id)titleForIntent:(id)intent localeIdentifier:(id)identifier
{
  intentCopy = intent;
  identifierCopy = identifier;
  v8 = [[ATXIntentMetadataCacheKey alloc] initWithIntent:intentCopy includingParameterValues:1 localeIdentifier:identifierCopy];

  v9 = [(ATXIntentMetadataCache *)self _getCachedTitleForCacheKey:v8];
  v10 = v9;
  if (v9)
  {
    atx_titleWithEfficientLocalization = v9;
  }

  else
  {
    atx_titleWithEfficientLocalization = [intentCopy atx_titleWithEfficientLocalization];
    [(ATXIntentMetadataCache *)self _setTitle:atx_titleWithEfficientLocalization cacheKey:v8];
  }

  return atx_titleWithEfficientLocalization;
}

- (void)_setTitle:(id)title cacheKey:(id)key
{
  v14 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  keyCopy = key;
  v8 = __atxlog_handle_default();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (keyCopy)
  {
    if (v9)
    {
      stringRepresentationForSerialization = [keyCopy stringRepresentationForSerialization];
      v12 = 138412290;
      v13 = stringRepresentationForSerialization;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "ATXIntentMetadataCache saving title for cacheKey: %@", &v12, 0xCu);
    }

    [(_ATXDataStore *)self->_dataStore writeTitle:titleCopy cacheKey:keyCopy];
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

- (id)_getCachedTitleForCacheKey:(id)key
{
  v12 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (keyCopy)
  {
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      stringRepresentationForSerialization = [keyCopy stringRepresentationForSerialization];
      v10 = 138412290;
      v11 = stringRepresentationForSerialization;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_INFO, "ATXIntentMetadataCache fetching cached title for cacheKey: %@", &v10, 0xCu);
    }

    v7 = [(_ATXDataStore *)self->_dataStore titleForCacheKey:keyCopy];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)subtitleForIntent:(id)intent localeIdentifier:(id)identifier
{
  intentCopy = intent;
  identifierCopy = identifier;
  v8 = [[ATXIntentMetadataCacheKey alloc] initWithIntent:intentCopy includingParameterValues:1 localeIdentifier:identifierCopy];

  v9 = [(ATXIntentMetadataCache *)self _getCachedSubtitleForCacheKey:v8];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    atx_subtitleWithEfficientLocalization = [intentCopy atx_subtitleWithEfficientLocalization];
    v13 = atx_subtitleWithEfficientLocalization;
    v14 = &stru_2839A6058;
    if (atx_subtitleWithEfficientLocalization)
    {
      v14 = atx_subtitleWithEfficientLocalization;
    }

    v11 = v14;

    [(ATXIntentMetadataCache *)self _setSubtitle:v11 cacheKey:v8];
  }

  return v11;
}

- (void)_setSubtitle:(id)subtitle cacheKey:(id)key
{
  v14 = *MEMORY[0x277D85DE8];
  subtitleCopy = subtitle;
  keyCopy = key;
  v8 = __atxlog_handle_default();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (keyCopy)
  {
    if (v9)
    {
      stringRepresentationForSerialization = [keyCopy stringRepresentationForSerialization];
      v12 = 138412290;
      v13 = stringRepresentationForSerialization;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "ATXIntentMetadataCache saving subtitle for cacheKey: %@", &v12, 0xCu);
    }

    [(_ATXDataStore *)self->_dataStore writeSubtitle:subtitleCopy cacheKey:keyCopy];
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

- (id)_getCachedSubtitleForCacheKey:(id)key
{
  v12 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (keyCopy)
  {
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      stringRepresentationForSerialization = [keyCopy stringRepresentationForSerialization];
      v10 = 138412290;
      v11 = stringRepresentationForSerialization;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_INFO, "ATXIntentMetadataCache fetching cached subtitle for cacheKey: %@", &v10, 0xCu);
    }

    v7 = [(_ATXDataStore *)self->_dataStore subtitleForCacheKey:keyCopy];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)isEligibleForWidgetsForIntent:(id)intent
{
  intentCopy = intent;
  v5 = [(ATXIntentMetadataCache *)self _getCachedEligibleForWidgetsForIntent:intentCopy];
  v6 = v5;
  if (v5)
  {
    LOBYTE(atx_isEligibleForWidgets) = [v5 BOOLValue];
  }

  else
  {
    atx_isEligibleForWidgets = [intentCopy atx_isEligibleForWidgets];
    [(ATXIntentMetadataCache *)self _setEligibleForWidgets:atx_isEligibleForWidgets intent:intentCopy];
  }

  return atx_isEligibleForWidgets;
}

- (id)_getCachedEligibleForWidgetsForIntent:(id)intent
{
  v13 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  v5 = [[ATXIntentMetadataCacheKey alloc] initWithIntent:intentCopy includingParameters:0];

  if (v5)
  {
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      stringRepresentationForSerialization = [(ATXIntentMetadataCacheKey *)v5 stringRepresentationForSerialization];
      v11 = 138412290;
      v12 = stringRepresentationForSerialization;
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

- (void)applicationsDidUpdate:(id)update
{
  v19 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [updateCopy countByEnumeratingWithState:&v12 objects:v18 count:16];
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
          objc_enumerationMutation(updateCopy);
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

      v6 = [updateCopy countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)applicationsDidUninstall:(id)uninstall
{
  v19 = *MEMORY[0x277D85DE8];
  uninstallCopy = uninstall;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [uninstallCopy countByEnumeratingWithState:&v12 objects:v18 count:16];
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
          objc_enumerationMutation(uninstallCopy);
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

      v6 = [uninstallCopy countByEnumeratingWithState:&v12 objects:v18 count:16];
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