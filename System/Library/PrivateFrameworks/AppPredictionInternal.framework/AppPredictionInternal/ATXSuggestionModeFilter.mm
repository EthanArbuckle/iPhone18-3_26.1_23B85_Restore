@interface ATXSuggestionModeFilter
+ (ATXSuggestionModeFilter)sharedInstance;
- (ATXSuggestionModeFilter)init;
- (BOOL)currentModeConfigurationAllowsBundleId:(id)id;
- (BOOL)currentModeConfigurationAllowsSuggestion:(id)suggestion;
- (void)_updateConfigurationWithModeUUID:(id)d notifyingObservers:(BOOL)observers;
- (void)registerForModeChanges;
- (void)registerObserver:(id)observer;
- (void)removeObserver:(id)observer;
@end

@implementation ATXSuggestionModeFilter

+ (ATXSuggestionModeFilter)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[ATXSuggestionModeFilter sharedInstance];
  }

  v3 = sharedInstance_filter;

  return v3;
}

uint64_t __41__ATXSuggestionModeFilter_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_filter;
  sharedInstance_filter = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (ATXSuggestionModeFilter)init
{
  v12.receiver = self;
  v12.super_class = ATXSuggestionModeFilter;
  v2 = [(ATXSuggestionModeFilter *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:5 capacity:0];
    v5 = v3[1];
    v3[1] = v4;

    v6 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v3];
    lock = v2->_lock;
    v2->_lock = v6;

    mEMORY[0x277CEB440] = [MEMORY[0x277CEB440] sharedInstance];
    client = v2->_client;
    v2->_client = mEMORY[0x277CEB440];

    currentModeUUID = [MEMORY[0x277D41C60] currentModeUUID];
    [(ATXSuggestionModeFilter *)v2 _updateConfigurationWithModeUUID:currentModeUUID notifyingObservers:0];
  }

  return v2;
}

- (void)registerForModeChanges
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.proactive.ATXSuggestionModeFilter.events", v3);
  queue = self->_queue;
  self->_queue = v4;

  v6 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:@"ATXSuggestionModeFilter" targetQueue:self->_queue];
  scheduler = self->_scheduler;
  self->_scheduler = v6;

  objc_initWeak(&location, self);
  v8 = BiomeLibrary();
  userFocus = [v8 UserFocus];
  computedMode = [userFocus ComputedMode];
  atx_DSLPublisher = [computedMode atx_DSLPublisher];

  v12 = [atx_DSLPublisher subscribeOn:self->_scheduler];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __49__ATXSuggestionModeFilter_registerForModeChanges__block_invoke_37;
  v15[3] = &unk_2785977D8;
  objc_copyWeak(&v16, &location);
  v13 = [v12 sinkWithCompletion:&__block_literal_global_36 receiveInput:v15];
  sink = self->_sink;
  self->_sink = v13;

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __49__ATXSuggestionModeFilter_registerForModeChanges__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_blending();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __49__ATXSuggestionModeFilter_registerForModeChanges__block_invoke_cold_1(v2);
    }
  }
}

void __49__ATXSuggestionModeFilter_registerForModeChanges__block_invoke_37(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 starting];

  if (!v5)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v6 = objc_alloc(MEMORY[0x277CCAD78]);
  v7 = [v3 eventBody];
  v8 = [v7 mode];
  v9 = [v6 initWithUUIDString:v8];

  if (!v9)
  {
    v10 = __atxlog_handle_blending();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __49__ATXSuggestionModeFilter_registerForModeChanges__block_invoke_37_cold_1(v3);
    }

    goto LABEL_6;
  }

LABEL_7:
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateConfigurationWithModeUUID:v9 notifyingObservers:1];
}

- (BOOL)currentModeConfigurationAllowsBundleId:(id)id
{
  v4 = ATXBundleIdReplacementForBundleId();
  if (ATXBundleIdIsFakeContainerBundleId())
  {
    v5 = __atxlog_handle_blending();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [ATXSuggestionModeFilter currentModeConfigurationAllowsBundleId:];
    }

    v6 = 1;
  }

  else
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 1;
    lock = self->_lock;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __66__ATXSuggestionModeFilter_currentModeConfigurationAllowsBundleId___block_invoke;
    v9[3] = &unk_27859B340;
    v10 = v4;
    v11 = &v12;
    [(_PASLock *)lock runWithLockAcquired:v9];
    v6 = *(v13 + 24);

    _Block_object_dispose(&v12, 8);
  }

  return v6 & 1;
}

void __66__ATXSuggestionModeFilter_currentModeConfigurationAllowsBundleId___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3[2];
  if (v4)
  {
    if ([v4 exceptionForApplication:*(a1 + 32)])
    {
      v5 = __atxlog_handle_blending();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        v15 = 138412290;
        v16 = v6;
        _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "ATXSuggestionModeFilter: filtering out disallowed bundleId %@", &v15, 0xCu);
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }

  else
  {
    v7 = __atxlog_handle_blending();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __66__ATXSuggestionModeFilter_currentModeConfigurationAllowsBundleId___block_invoke_cold_1(a1, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)currentModeConfigurationAllowsSuggestion:(id)suggestion
{
  v37 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  v5 = [ATXSuggestionPreprocessor bundleIdAssociatedWithSuggestion:suggestionCopy];
  if (!v5)
  {
    v8 = __atxlog_handle_blending();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [ATXSuggestionModeFilter currentModeConfigurationAllowsSuggestion:];
    }

    goto LABEL_27;
  }

  v6 = ATXBundleIdReplacementForBundleId();

  v7 = suggestionCopy;
  v8 = v6;
  if (CFPreferencesGetAppBooleanValue(@"widgetKitDeveloperModeEnabled", @"com.apple.duetexpertd", 0))
  {
    v9 = [MEMORY[0x277D42040] infoSuggestionFromProactiveSuggestion:v7];
    v10 = v9;
    if (v9)
    {
      widgetBundleIdentifier = [v9 widgetBundleIdentifier];
      if (CFPreferencesGetAppBooleanValue(@"widgetKitDeveloperModeEnabled", @"com.apple.duetexpertd", 0))
      {
        LOBYTE(keyExistsAndHasValidFormat) = 0;
        if (CFPreferencesGetAppBooleanValue(@"ATXWidgetKitDeveloperModeSkipEntitlementCheck", *MEMORY[0x277CEBD00], &keyExistsAndHasValidFormat))
        {

          goto LABEL_11;
        }

        v12 = [MEMORY[0x277CEB3B0] isDebuggingAllowedForExtensionBundleId:widgetBundleIdentifier];

        if (v12)
        {
LABEL_11:
          intent = __atxlog_handle_blending();
          if (os_log_type_enabled(intent, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(keyExistsAndHasValidFormat) = 138412290;
            *(&keyExistsAndHasValidFormat + 4) = v7;
            _os_log_impl(&dword_2263AA000, intent, OS_LOG_TYPE_DEFAULT, "ATXSuggestionModeFilter: WidgetKit Developer Mode is enabled and debugging is allowed for widget, allowing suggestion: %@", &keyExistsAndHasValidFormat, 0xCu);
          }

          goto LABEL_22;
        }
      }

      else
      {
      }
    }
  }

  if (ATXBundleIdIsFakeContainerBundleId())
  {
LABEL_23:

LABEL_24:
    v27 = __atxlog_handle_blending();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [ATXSuggestionModeFilter currentModeConfigurationAllowsSuggestion:];
    }

LABEL_27:
    v26 = 1;
    goto LABEL_28;
  }

  v10 = v7;
  v14 = objc_alloc(MEMORY[0x277CBEB98]);
  v15 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:3];
  *&keyExistsAndHasValidFormat = v15;
  v16 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:4];
  *(&keyExistsAndHasValidFormat + 1) = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&keyExistsAndHasValidFormat count:2];
  v18 = [v14 initWithArray:v17];

  clientModelSpecification = [v10 clientModelSpecification];
  clientModelId = [clientModelSpecification clientModelId];
  LOBYTE(v16) = [v18 containsObject:clientModelId];

  if (v16)
  {
    atxActionExecutableObject = [v10 atxActionExecutableObject];
    intent = [atxActionExecutableObject intent];

    extensionBundleId = [intent extensionBundleId];
    if (![extensionBundleId isEqualToString:@"com.apple.DoNotDisturb.Intents"])
    {

LABEL_22:
      goto LABEL_23;
    }

    _className = [intent _className];
    v24 = [_className isEqualToString:@"DNDToggleDoNotDisturbIntent"];

    if ((v24 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  *&keyExistsAndHasValidFormat = 0;
  *(&keyExistsAndHasValidFormat + 1) = &keyExistsAndHasValidFormat;
  v35 = 0x2020000000;
  v36 = 1;
  lock = self->_lock;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __68__ATXSuggestionModeFilter_currentModeConfigurationAllowsSuggestion___block_invoke;
  v30[3] = &unk_27859B368;
  v31 = v10;
  v8 = v8;
  v32 = v8;
  p_keyExistsAndHasValidFormat = &keyExistsAndHasValidFormat;
  [(_PASLock *)lock runWithLockAcquired:v30];
  v26 = *(*(&keyExistsAndHasValidFormat + 1) + 24);

  _Block_object_dispose(&keyExistsAndHasValidFormat, 8);
LABEL_28:

  v28 = *MEMORY[0x277D85DE8];
  return v26 & 1;
}

void __68__ATXSuggestionModeFilter_currentModeConfigurationAllowsSuggestion___block_invoke(void *a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3[2];
  if (!v4)
  {
    v8 = __atxlog_handle_blending();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __68__ATXSuggestionModeFilter_currentModeConfigurationAllowsSuggestion___block_invoke_cold_1(a1, v8, v9, v10, v11, v12, v13, v14);
    }

LABEL_21:

    goto LABEL_22;
  }

  if (![v4 exceptionForApplication:a1[5]])
  {
    [ATXSuggestionPreprocessor contactIdsAssociatedWithSuggestion:a1[4]];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = v27 = 0u;
    v15 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v8);
          }

          v19 = *(*(&v24 + 1) + 8 * i);
          v20 = objc_opt_new();
          [v20 setContactIdentifier:{v19, v24}];
          if ([v3[2] exceptionForContactHandle:v20])
          {
            v21 = __atxlog_handle_blending();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v22 = a1[4];
              *buf = 138412546;
              v30 = v19;
              v31 = 2112;
              v32 = v22;
              _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_DEFAULT, "ATXSuggestionModeFilter: filtering out disallowed contactId %@ in suggestion: %@", buf, 0x16u);
            }

            *(*(a1[6] + 8) + 24) = 0;
            goto LABEL_20;
          }
        }

        v16 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:

    goto LABEL_21;
  }

  v5 = __atxlog_handle_blending();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[4];
    v6 = a1[5];
    *buf = 138412546;
    v30 = v6;
    v31 = 2112;
    v32 = v7;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "ATXSuggestionModeFilter: filtering out disallowed bundleId %@ in suggestion: %@", buf, 0x16u);
  }

  *(*(a1[6] + 8) + 24) = 0;
LABEL_22:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__ATXSuggestionModeFilter_registerObserver___block_invoke;
  v7[3] = &unk_27859B390;
  v8 = observerCopy;
  v6 = observerCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__ATXSuggestionModeFilter_removeObserver___block_invoke;
  v7[3] = &unk_27859B390;
  v8 = observerCopy;
  v6 = observerCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

- (void)_updateConfigurationWithModeUUID:(id)d notifyingObservers:(BOOL)observers
{
  dCopy = d;
  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__ATXSuggestionModeFilter__updateConfigurationWithModeUUID_notifyingObservers___block_invoke;
  v9[3] = &unk_27859B3B8;
  v10 = dCopy;
  selfCopy = self;
  observersCopy = observers;
  v8 = dCopy;
  [(_PASLock *)lock runWithLockAcquired:v9];
}

void __79__ATXSuggestionModeFilter__updateConfigurationWithModeUUID_notifyingObservers___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!*(a1 + 32))
  {
    v7 = __atxlog_handle_blending();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "ATXSuggestionModeFilter: no current mode", buf, 2u);
    }

    goto LABEL_9;
  }

  v4 = [*(*(a1 + 40) + 16) modeConfigurationForDNDModeWithUUID:?];
  v5 = [v4 configuration];

  v6 = __atxlog_handle_blending();
  v7 = v6;
  if (!v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __79__ATXSuggestionModeFilter__updateConfigurationWithModeUUID_notifyingObservers___block_invoke_cold_1((a1 + 32), v7);
    }

LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138412290;
    v21 = v8;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "ATXSuggestionModeFilter: fetched configuration for mode: %@", buf, 0xCu);
  }

LABEL_10:

  objc_storeStrong(v3 + 2, v5);
  if (*(a1 + 48) == 1)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = v3[1];
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v15 + 1) + 8 * i) configurationDidChangeForFilter:{*(a1 + 40), v15}];
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __49__ATXSuggestionModeFilter_registerForModeChanges__block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v2, v3, "ATXSuggestionModeFilter: unable to subscribe to computed mode stream: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __49__ATXSuggestionModeFilter_registerForModeChanges__block_invoke_37_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 eventBody];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v2, v3, "ATXSuggestionModeFilter: could not create NSUUID from latest mode: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)currentModeConfigurationAllowsBundleId:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_4(&dword_2263AA000, v0, v1, "ATXSuggestionModeFilter: allowing filter exception bundleId: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __66__ATXSuggestionModeFilter_currentModeConfigurationAllowsBundleId___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_2_4(&dword_2263AA000, a2, a3, "ATXSuggestionModeFilter: allowing bundleId, currently not in a mode: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)currentModeConfigurationAllowsSuggestion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_4(&dword_2263AA000, v0, v1, "ATXSuggestionModeFilter: bypassing filter for suggestion: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)currentModeConfigurationAllowsSuggestion:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_4(&dword_2263AA000, v0, v1, "ATXSuggestionModeFilter: allowing suggestion since we are unable to get its bundleId: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __68__ATXSuggestionModeFilter_currentModeConfigurationAllowsSuggestion___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_2_4(&dword_2263AA000, a2, a3, "ATXSuggestionModeFilter: allowing suggestion, currently not in a mode: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __79__ATXSuggestionModeFilter__updateConfigurationWithModeUUID_notifyingObservers___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXSuggestionModeFilter: could not fetch configuration for mode: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end