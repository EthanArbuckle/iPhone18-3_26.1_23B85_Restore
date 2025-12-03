@interface ATXDNDModeConfigurationClient
+ (ATXDNDModeConfigurationClient)sharedInstance;
- (id)_configuredModesBySemanticType;
- (id)_init;
- (id)configuredModes;
- (id)debug_allModeDescriptions;
- (id)dndModeForATXMode:(unint64_t)mode;
- (id)dndModeForDNDModeWithUUID:(id)d useCache:(BOOL)cache;
- (id)dndModeUUIDForDNDModeIdentifier:(id)identifier;
- (id)dndModeUUIDForDNDModeSemanticType:(int64_t)type;
- (id)dndSemanticTypeForATXMode:(unint64_t)mode;
- (id)getAllModeConfigurationsWithoutCache;
- (id)iOSAppListForMode:(int64_t)mode configurationType:(unint64_t)type;
- (id)iOSContactListForMode:(int64_t)mode configurationType:(unint64_t)type;
- (id)modeConfigurationForDNDModeWithUUID:(id)d useCache:(BOOL)cache;
- (id)modesByModeIdentifiers;
- (unint64_t)atxModeForDNDMode:(id)mode;
- (void)configuredModesDidChange;
- (void)getAllModeConfigurationsWithoutCache;
- (void)invalidateCaches;
- (void)refreshCachedConfigs;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation ATXDNDModeConfigurationClient

- (id)_init
{
  v20.receiver = self;
  v20.super_class = ATXDNDModeConfigurationClient;
  v2 = [(ATXDNDModeConfigurationClient *)&v20 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E699A1F8] serviceForClientIdentifier:@"com.apple.proactive.AppPredictionClient"];
    dndConfigurationService = v2->_dndConfigurationService;
    v2->_dndConfigurationService = v3;

    v5 = [MEMORY[0x1E699A1C0] serviceForClientIdentifier:@"com.apple.proactive.AppPredictionClient"];
    dndGlobalConfigurationService = v2->_dndGlobalConfigurationService;
    v2->_dndGlobalConfigurationService = v5;

    v7 = [[ATXDNDModeConfigurationClientListener alloc] initWithDelegate:v2];
    updateListener = v2->_updateListener;
    v2->_updateListener = v7;

    v9 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:0];
    observers = v2->_observers;
    v2->_observers = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("ATXDNDModeConfigurationClient.observerQueue", v11);
    observerQueue = v2->_observerQueue;
    v2->_observerQueue = v12;

    objc_initWeak(&location, v2);
    v14 = v2->_dndConfigurationService;
    v15 = v2->_updateListener;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __38__ATXDNDModeConfigurationClient__init__block_invoke;
    v17[3] = &unk_1E80C4388;
    objc_copyWeak(&v18, &location);
    [(DNDModeConfigurationService *)v14 addListener:v15 withCompletionHandler:v17];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __38__ATXDNDModeConfigurationClient__init__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained invalidateCaches];

    v7 = __atxlog_handle_modes();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __38__ATXDNDModeConfigurationClient__init__block_invoke_cold_1((a1 + 32));
    }
  }
}

+ (ATXDNDModeConfigurationClient)sharedInstance
{
  if (sharedInstance__pasOnceToken9 != -1)
  {
    +[ATXDNDModeConfigurationClient sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_12;

  return v3;
}

void __47__ATXDNDModeConfigurationClient_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [[ATXDNDModeConfigurationClient alloc] _init];
  v2 = sharedInstance__pasExprOnceResult_12;
  sharedInstance__pasExprOnceResult_12 = v1;

  objc_autoreleasePoolPop(v0);
}

- (void)refreshCachedConfigs
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_4(&dword_1BF549000, v2, v3, "[%@] Failed to fetch configs with error %@", v4, v5, v6, v7, v8);
}

- (void)invalidateCaches
{
  obj = self;
  objc_sync_enter(obj);
  obj->_isCacheValid = 0;
  objc_sync_exit(obj);
}

- (id)configuredModes
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_isCacheValid)
  {
    [(ATXDNDModeConfigurationClient *)selfCopy refreshCachedConfigs];
  }

  v3 = selfCopy->_cachedModeConfig;
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)modesByModeIdentifiers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_isCacheValid)
  {
    [(ATXDNDModeConfigurationClient *)selfCopy refreshCachedConfigs];
  }

  v3 = selfCopy->_cachedModesByModeIdentifiers;
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)_configuredModesBySemanticType
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_isCacheValid)
  {
    [(ATXDNDModeConfigurationClient *)selfCopy refreshCachedConfigs];
  }

  v3 = selfCopy->_cachedModesBySemanticType;
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)dndModeForDNDModeWithUUID:(id)d useCache:(BOOL)cache
{
  v14 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!cache)
  {
    v7 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[ATXDNDModeConfigurationClient dndModeForDNDModeWithUUID:useCache:]";
      _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "%s: Invalidating cache in order to mitigate stale cache bugs", &v12, 0xCu);
    }

    [(ATXDNDModeConfigurationClient *)self invalidateCaches];
  }

  configuredModes = [(ATXDNDModeConfigurationClient *)self configuredModes];
  v9 = configuredModes;
  v10 = 0;
  if (dCopy)
  {
    if (configuredModes)
    {
      v10 = [configuredModes objectForKeyedSubscript:dCopy];

      if (v10)
      {
        v10 = [v9 objectForKeyedSubscript:dCopy];
      }
    }
  }

  return v10;
}

- (unint64_t)atxModeForDNDMode:(id)mode
{
  v4 = [(ATXDNDModeConfigurationClient *)self dndModeForDNDModeWithUUID:mode];
  v5 = v4;
  if (v4)
  {
    v6 = -[ATXDNDModeConfigurationClient atxModeForDNDSemanticType:](self, "atxModeForDNDSemanticType:", [v4 semanticType]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)dndModeUUIDForDNDModeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  modesByModeIdentifiers = [(ATXDNDModeConfigurationClient *)self modesByModeIdentifiers];
  v6 = modesByModeIdentifiers;
  if (identifierCopy && modesByModeIdentifiers && ([modesByModeIdentifiers objectForKeyedSubscript:identifierCopy], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [v6 objectForKeyedSubscript:identifierCopy];
    identifier = [v8 identifier];
  }

  else
  {
    v10 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ATXDNDModeConfigurationClient dndModeUUIDForDNDModeIdentifier:];
    }

    identifier = objc_opt_new();
  }

  return identifier;
}

- (id)dndModeUUIDForDNDModeSemanticType:(int64_t)type
{
  _configuredModesBySemanticType = [(ATXDNDModeConfigurationClient *)self _configuredModesBySemanticType];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v6 = [_configuredModesBySemanticType objectForKeyedSubscript:v5];

  if ([v6 count] < 2)
  {
    firstObject = [v6 firstObject];
  }

  else
  {
    v7 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(ATXDNDModeConfigurationClient *)type dndModeUUIDForDNDModeSemanticType:v7];
    }

    firstObject = 0;
  }

  return firstObject;
}

- (id)dndSemanticTypeForATXMode:(unint64_t)mode
{
  if (mode - 1 > 0xE)
  {
    return 0;
  }

  else
  {
    return qword_1E80C43F8[mode - 1];
  }
}

- (id)dndModeForATXMode:(unint64_t)mode
{
  v4 = [(ATXDNDModeConfigurationClient *)self dndSemanticTypeForATXMode:mode];
  if (v4)
  {
    _configuredModesBySemanticType = [(ATXDNDModeConfigurationClient *)self _configuredModesBySemanticType];
    v6 = [_configuredModesBySemanticType objectForKeyedSubscript:v4];
    firstObject = [v6 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)debug_allModeDescriptions
{
  configuredModes = [(ATXDNDModeConfigurationClient *)self configuredModes];
  allValues = [configuredModes allValues];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__ATXDNDModeConfigurationClient_debug_allModeDescriptions__block_invoke;
  v7[3] = &unk_1E80C43B0;
  v7[4] = self;
  v5 = [allValues _pas_mappedArrayWithTransform:v7];

  return v5;
}

id __58__ATXDNDModeConfigurationClient_debug_allModeDescriptions__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [v4 name];
  v6 = [v4 identifier];
  v7 = [v6 UUIDString];
  v8 = [v4 semanticType];
  v9 = *(a1 + 32);
  v10 = [v4 semanticType];

  v11 = ATXModeToString([v9 atxModeForDNDSemanticType:v10]);
  v12 = [v3 stringWithFormat:@"Mode Name: %@, UUID: %@, Semantic Type: %ld, ATXMode: %@", v5, v7, v8, v11];

  return v12;
}

- (id)iOSAppListForMode:(int64_t)mode configurationType:(unint64_t)type
{
  dndConfigurationService = self->_dndConfigurationService;
  v17 = 0;
  v7 = [(DNDModeConfigurationService *)dndConfigurationService modeConfigurationsReturningError:&v17];
  v8 = v17;
  if (v7)
  {
    v9 = objc_opt_new();
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __69__ATXDNDModeConfigurationClient_iOSAppListForMode_configurationType___block_invoke;
    v13[3] = &unk_1E80C43D8;
    modeCopy = mode;
    typeCopy = type;
    v10 = v9;
    v14 = v10;
    [v7 enumerateKeysAndObjectsUsingBlock:v13];
    v11 = v14;
  }

  else
  {
    v11 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXDNDModeConfigurationClient iOSAppListForMode:configurationType:];
    }

    v10 = 0;
  }

  return v10;
}

void __69__ATXDNDModeConfigurationClient_iOSAppListForMode_configurationType___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 mode];
  v6 = [v5 semanticType];
  v7 = a1[5];

  if (v6 == v7)
  {
    v8 = [v4 configuration];
    v9 = [v8 applicationConfigurationType];
    v10 = a1[6];

    if (v9 == v10)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v11 = [v4 configuration];
      v12 = [v11 applicationsWithExceptions];

      v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v21;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v21 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v20 + 1) + 8 * i);
            if ([v17 platform] == 1)
            {
              v18 = a1[4];
              v19 = [v17 bundleID];
              [v18 addObject:v19];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v14);
      }
    }
  }
}

- (id)iOSContactListForMode:(int64_t)mode configurationType:(unint64_t)type
{
  dndConfigurationService = self->_dndConfigurationService;
  v17 = 0;
  v7 = [(DNDModeConfigurationService *)dndConfigurationService modeConfigurationsReturningError:&v17];
  v8 = v17;
  if (v7)
  {
    v9 = objc_opt_new();
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __73__ATXDNDModeConfigurationClient_iOSContactListForMode_configurationType___block_invoke;
    v13[3] = &unk_1E80C43D8;
    modeCopy = mode;
    typeCopy = type;
    v10 = v9;
    v14 = v10;
    [v7 enumerateKeysAndObjectsUsingBlock:v13];
    v11 = v14;
  }

  else
  {
    v11 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXDNDModeConfigurationClient iOSContactListForMode:configurationType:];
    }

    v10 = 0;
  }

  return v10;
}

void __73__ATXDNDModeConfigurationClient_iOSContactListForMode_configurationType___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 mode];
  v6 = [v5 semanticType];
  v7 = a1[5];

  if (v6 == v7)
  {
    v8 = [v4 configuration];
    v9 = [v8 senderConfigurationType];
    v10 = a1[6];

    if (v9 == v10)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v11 = [v4 configuration];
      v12 = [v11 contactsWithExceptions];

      v13 = [v12 countByEnumeratingWithState:&v21 objects:v27 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v22;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v22 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v21 + 1) + 8 * i);
            v18 = [v17 contactIdentifier];

            if (v18)
            {
              v19 = a1[4];
              v20 = [v17 contactIdentifier];
              [v19 addObject:v20];
            }

            else
            {
              v20 = __atxlog_handle_notification_management();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v26 = v17;
                _os_log_impl(&dword_1BF549000, v20, OS_LOG_TYPE_INFO, "Contact Identifier for %@ is nil. Skipping to next", buf, 0xCu);
              }
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v21 objects:v27 count:16];
        }

        while (v14);
      }
    }
  }
}

- (id)modeConfigurationForDNDModeWithUUID:(id)d useCache:(BOOL)cache
{
  cacheCopy = cache;
  dCopy = d;
  v7 = [(ATXDNDModeConfigurationClient *)self dndModeForDNDModeWithUUID:dCopy useCache:cacheCopy];
  modeIdentifier = [v7 modeIdentifier];
  if (modeIdentifier)
  {
    dndConfigurationService = self->_dndConfigurationService;
    v15 = 0;
    v10 = [(DNDModeConfigurationService *)dndConfigurationService modeConfigurationForModeIdentifier:modeIdentifier error:&v15];
    v11 = v15;
    v12 = v11;
    if (!v10 && v11)
    {
      v13 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [ATXDNDModeConfigurationClient modeConfigurationForDNDModeWithUUID:useCache:];
      }
    }
  }

  else
  {
    v12 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ATXDNDModeConfigurationClient modeConfigurationForDNDModeWithUUID:useCache:];
    }

    v10 = 0;
  }

  return v10;
}

- (id)getAllModeConfigurationsWithoutCache
{
  dndConfigurationService = self->_dndConfigurationService;
  v8 = 0;
  v3 = [(DNDModeConfigurationService *)dndConfigurationService modeConfigurationsReturningError:&v8];
  v4 = v8;
  if (v4)
  {
    v5 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ATXDNDModeConfigurationClient getAllModeConfigurationsWithoutCache];
    }

    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_observers addObject:observerCopy];
  objc_sync_exit(selfCopy);
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_observers removeObject:observerCopy];
  objc_sync_exit(selfCopy);
}

- (void)configuredModesDidChange
{
  v16 = *MEMORY[0x1E69E9840];
  [(ATXDNDModeConfigurationClient *)self invalidateCaches];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = selfCopy->_observers;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        observerQueue = selfCopy->_observerQueue;
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __57__ATXDNDModeConfigurationClient_configuredModesDidChange__block_invoke;
        v10[3] = &unk_1E80C0958;
        v10[4] = v8;
        v10[5] = selfCopy;
        dispatch_async(observerQueue, v10);
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  objc_sync_exit(selfCopy);
}

void __38__ATXDNDModeConfigurationClient__init__block_invoke_cold_1(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_4(&dword_1BF549000, v4, v5, "[%@] Configuration update handler failed with error %@", v6, v7, v8, v9, v10);
}

- (void)dndModeUUIDForDNDModeSemanticType:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = DNDModeSemanticTypeToString();
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "There is more than 1 mode of type: %{public}@", v4, 0xCu);
}

- (void)modeConfigurationForDNDModeWithUUID:useCache:.cold.1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_8();
  v3 = v0;
  _os_log_error_impl(&dword_1BF549000, v1, OS_LOG_TYPE_ERROR, "Unable to fetch mode configuration for mode with mode identifier: %@. Error: %@", v2, 0x16u);
}

- (void)getAllModeConfigurationsWithoutCache
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_4(&dword_1BF549000, v2, v3, "%@ - Unable to fetch mode configurations with err: %@", v4, v5, v6, v7, v8);
}

@end