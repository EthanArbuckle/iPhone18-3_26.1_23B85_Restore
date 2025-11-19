@interface ATXCandidateRelevanceModelServerCoordinator
+ (id)sharedInstance;
+ (id)userDefaultsKeyForLastCacheUpdateDateForConfig:(id)a3;
- (ATXCandidateRelevanceModelServerCoordinator)init;
- (ATXCandidateRelevanceModelServerCoordinator)initWithContextHelper:(id)a3 configs:(id)a4 defaults:(id)a5;
- (id)callbackForAnchor:(id)a3;
- (id)currentDuetEventForAnchor:(id)a3;
- (id)exitNotificationIdentifierForAnchor:(id)a3;
- (id)lastCacheUpdateDateForConfig:(id)a3;
- (id)notificationIdentifierForAnchor:(id)a3;
- (id)supportedAnchorsForNotifications;
- (void)dealloc;
- (void)handleAnchorNotificationForAnchor:(id)a3;
- (void)handleLOIEntranceNotification;
- (void)handleLOIExitNotification;
- (void)handleMicrolocationVisitNotification;
- (void)registerAnchorEventNotificationsForAnchor:(id)a3;
- (void)registerForSupportedAnchorNotificatons;
- (void)sendSuggestionsToBlendingForConfig:(id)a3;
- (void)sendSuggestionsToBlendingForEachConfigIfCacheIsOlderThan:(double)a3;
- (void)sendSuggestionsToBlendingForEachConfigImmediately;
- (void)setCacheUpdateDate:(id)a3 forConfig:(id)a4;
- (void)unregisterAnchorEventListenerForAnchor:(id)a3;
- (void)unregisterAnchorEventListeners;
@end

@implementation ATXCandidateRelevanceModelServerCoordinator

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[ATXCandidateRelevanceModelServerCoordinator sharedInstance];
  }

  v3 = sharedInstance_modelServerCoordinator;

  return v3;
}

uint64_t __61__ATXCandidateRelevanceModelServerCoordinator_sharedInstance__block_invoke()
{
  sharedInstance_modelServerCoordinator = objc_alloc_init(ATXCandidateRelevanceModelServerCoordinator);

  return MEMORY[0x2821F96F8]();
}

- (ATXCandidateRelevanceModelServerCoordinator)init
{
  v3 = objc_opt_new();
  v4 = allRelevanceModelConfigs();
  v5 = objc_alloc(MEMORY[0x277CBEBD0]);
  v6 = [v5 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v7 = [(ATXCandidateRelevanceModelServerCoordinator *)self initWithContextHelper:v3 configs:v4 defaults:v6];

  return v7;
}

- (ATXCandidateRelevanceModelServerCoordinator)initWithContextHelper:(id)a3 configs:(id)a4 defaults:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = ATXCandidateRelevanceModelServerCoordinator;
  v12 = [(ATXCandidateRelevanceModelServerCoordinator *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contextHelper, a3);
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("ATXCandidateRelevanceModelServerCoordinator.updateQueue", v14);
    updateQueue = v13->_updateQueue;
    v13->_updateQueue = v15;

    objc_storeStrong(&v13->_configs, a4);
    objc_storeStrong(&v13->_defaults, a5);
    v17 = [[ATXTimeBucketedRateLimiter alloc] initWithMaxCount:5 perPeriod:600.0];
    rateLimiter = v13->_rateLimiter;
    v13->_rateLimiter = v17;
  }

  return v13;
}

- (void)dealloc
{
  [(ATXCandidateRelevanceModelServerCoordinator *)self unregisterAnchorEventListeners];
  v3.receiver = self;
  v3.super_class = ATXCandidateRelevanceModelServerCoordinator;
  [(ATXCandidateRelevanceModelServerCoordinator *)&v3 dealloc];
}

- (void)registerForSupportedAnchorNotificatons
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(ATXCandidateRelevanceModelServerCoordinator *)self supportedAnchorsForNotifications];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(ATXCandidateRelevanceModelServerCoordinator *)self registerAnchorEventNotificationsForAnchor:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)supportedAnchorsForNotifications
{
  v15[10] = *MEMORY[0x277D85DE8];
  v14 = objc_opt_new();
  v15[0] = v14;
  v2 = objc_opt_new();
  v15[1] = v2;
  v3 = objc_opt_new();
  v15[2] = v3;
  v4 = objc_opt_new();
  v15[3] = v4;
  v5 = objc_opt_new();
  v15[4] = v5;
  v6 = objc_opt_new();
  v15[5] = v6;
  v7 = objc_opt_new();
  v15[6] = v7;
  v8 = objc_opt_new();
  v15[7] = v8;
  v9 = objc_opt_new();
  v15[8] = v9;
  v10 = objc_opt_new();
  v15[9] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)registerAnchorEventNotificationsForAnchor:(id)a3
{
  v4 = a3;
  v5 = __atxlog_handle_relevance_model();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ATXCandidateRelevanceModelServerCoordinator registerAnchorEventNotificationsForAnchor:];
  }

  v6 = [objc_opt_class() usesContextStoreForRealTimeNotifications];
  v7 = objc_opt_class();
  v8 = v7;
  if (v6)
  {
    v9 = [(ATXCandidateRelevanceModelServerCoordinator *)self callbackForAnchor:v4];
    v10 = [(ATXCandidateRelevanceModelServerCoordinator *)self notificationIdentifierForAnchor:v4];
    v11 = [(ATXCoreDuetContextHelper *)self->_contextHelper context];
    [v8 registerWithContextStoreForAnchorEntranceWithCallback:v9 notificationId:v10 registrationPersistenceContext:v11];

    if ([objc_opt_class() anchorType] == 18)
    {
      v12 = [objc_opt_class() invalidationPredicateForContextStoreRegistration];

      if (v12)
      {
        v13 = __atxlog_handle_relevance_model();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [ATXCandidateRelevanceModelServerCoordinator registerAnchorEventNotificationsForAnchor:];
        }

        v14 = objc_opt_class();
        v15 = [(ATXCandidateRelevanceModelServerCoordinator *)self callbackForAnchor:v4];
        v16 = [(ATXCandidateRelevanceModelServerCoordinator *)self exitNotificationIdentifierForAnchor:v4];
        v17 = [(ATXCoreDuetContextHelper *)self->_contextHelper context];
        [v14 registerWithContextStoreForAnchorExitWithCallback:v15 notificationId:v16 registrationPersistenceContext:v17];
      }
    }

    goto LABEL_19;
  }

  if ([v7 anchorType] == 19)
  {
    objc_initWeak(&location, self);
    v18 = [MEMORY[0x277CEBC98] sharedInstance];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __89__ATXCandidateRelevanceModelServerCoordinator_registerAnchorEventNotificationsForAnchor___block_invoke;
    v26[3] = &unk_278596D20;
    objc_copyWeak(&v27, &location);
    v19 = [v18 subscribeWithCallback:v26 onQueue:self->_updateQueue];
    microLocationSchedulerToken = self->_microLocationSchedulerToken;
    self->_microLocationSchedulerToken = v19;

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
    goto LABEL_19;
  }

  v21 = [objc_opt_class() anchorType];
  v22 = objc_opt_class();
  if (v21 == 7)
  {
    v23 = sel_handleLOIEntranceNotification;
LABEL_15:
    [v22 registerForNotificationsWithoutUsingContextStoreForObserver:self enterSelector:v23 exitSelector:0];
    goto LABEL_19;
  }

  if ([v22 anchorType] == 8)
  {
    v22 = objc_opt_class();
    v23 = sel_handleLOIExitNotification;
    goto LABEL_15;
  }

  v24 = __atxlog_handle_relevance_model();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
  {
    [ATXCandidateRelevanceModelServerCoordinator registerAnchorEventNotificationsForAnchor:];
  }

LABEL_19:
  v25 = __atxlog_handle_relevance_model();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    [ATXCandidateRelevanceModelServerCoordinator registerAnchorEventNotificationsForAnchor:];
  }
}

void __89__ATXCandidateRelevanceModelServerCoordinator_registerAnchorEventNotificationsForAnchor___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained handleMicrolocationVisitNotification];
    WeakRetained = v2;
  }
}

- (id)callbackForAnchor:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__ATXCandidateRelevanceModelServerCoordinator_callbackForAnchor___block_invoke;
  v9[3] = &unk_278596D48;
  v9[4] = self;
  v10 = v4;
  v5 = v4;
  objc_copyWeak(&v11, &location);
  v6 = _Block_copy(v9);
  v7 = _Block_copy(v6);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v7;
}

void __65__ATXCandidateRelevanceModelServerCoordinator_callbackForAnchor___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = __atxlog_handle_relevance_model();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = *(a1 + 40);
    v12 = 138412802;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%@ - (%@) Anchor Event notification received, %@. Generating new predictions.", &v12, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v10 = *(a1 + 40);
    if ([objc_opt_class() shouldProcessContextStoreNotification])
    {
      [WeakRetained handleAnchorNotificationForAnchor:*(a1 + 40)];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)unregisterAnchorEventListeners
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(ATXCandidateRelevanceModelServerCoordinator *)self supportedAnchorsForNotifications];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(ATXCandidateRelevanceModelServerCoordinator *)self unregisterAnchorEventListenerForAnchor:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)unregisterAnchorEventListenerForAnchor:(id)a3
{
  v4 = a3;
  if (([objc_opt_class() usesContextStoreForRealTimeNotifications] & 1) == 0)
  {
    if ([objc_opt_class() anchorType] == 8 || objc_msgSend(objc_opt_class(), "anchorType") == 7)
    {
      v5 = __atxlog_handle_relevance_model();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [ATXCandidateRelevanceModelServerCoordinator unregisterAnchorEventListenerForAnchor:];
      }

      [objc_opt_class() unregisterForNotificationsWithoutUsingContextStoreForObserver:self];
      v6 = __atxlog_handle_relevance_model();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [ATXCandidateRelevanceModelServerCoordinator unregisterAnchorEventListenerForAnchor:];
      }
    }

    if ([objc_opt_class() anchorType] == 19)
    {
      v7 = __atxlog_handle_relevance_model();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [ATXCandidateRelevanceModelServerCoordinator unregisterAnchorEventListenerForAnchor:];
      }

      if (self->_microLocationSchedulerToken)
      {
        v8 = [MEMORY[0x277CEBC98] sharedInstance];
        [v8 unSubscribeWithToken:self->_microLocationSchedulerToken];

        microLocationSchedulerToken = self->_microLocationSchedulerToken;
        self->_microLocationSchedulerToken = 0;
      }

      v10 = __atxlog_handle_relevance_model();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [ATXCandidateRelevanceModelServerCoordinator unregisterAnchorEventListenerForAnchor:];
      }
    }
  }
}

- (id)notificationIdentifierForAnchor:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 anchorTypeString];

  v7 = [v5 initWithFormat:@"com.apple.duetexpertd.ATXCandidateRelevanceModelServerCoordinator.%@", v6];

  return v7;
}

- (id)exitNotificationIdentifierForAnchor:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 anchorTypeString];

  v7 = [v5 initWithFormat:@"com.apple.duetexpertd.ATXCandidateRelevanceModelServerCoordinator.invalidation.%@", v6];

  return v7;
}

- (void)handleLOIEntranceNotification
{
  v3 = objc_opt_new();
  [(ATXCandidateRelevanceModelServerCoordinator *)self handleAnchorNotificationForAnchor:v3];
}

- (void)handleLOIExitNotification
{
  v3 = objc_opt_new();
  [(ATXCandidateRelevanceModelServerCoordinator *)self handleAnchorNotificationForAnchor:v3];
}

- (void)handleMicrolocationVisitNotification
{
  v3 = objc_opt_new();
  v4 = [(ATXCandidateRelevanceModelServerCoordinator *)self currentDuetEventForAnchor:v3];

  if (v4)
  {
    v5 = [(NSUserDefaults *)self->_defaults stringForKey:@"ATXCandidateRelevanceModelServer-ATXMicrolocationAnchorLastIdentifierKey"];
    if (v5 && ([v4 identifier], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", v5), v6, v7))
    {
      v8 = __atxlog_handle_anchor();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "Received a high confidence anchor event, but ignoring since it's the same event as what we received last time.", v12, 2u);
      }
    }

    else
    {
      defaults = self->_defaults;
      v10 = [v4 identifier];
      [(NSUserDefaults *)defaults setValue:v10 forKey:@"ATXCandidateRelevanceModelServer-ATXMicrolocationAnchorLastIdentifierKey"];

      v11 = objc_opt_new();
      [(ATXCandidateRelevanceModelServerCoordinator *)self handleAnchorNotificationForAnchor:v11];
    }
  }
}

- (id)currentDuetEventForAnchor:(id)a3
{
  v3 = [objc_alloc(objc_msgSend(objc_msgSend(objc_opt_class() "supportedDuetDataProviderClass")];

  return v3;
}

- (void)handleAnchorNotificationForAnchor:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = __atxlog_handle_relevance_model();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v4 anchorTypeString];
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%@ - %@ Anchor notification received. Updating suggestions immediately.", &v10, 0x16u);
  }

  [(ATXCandidateRelevanceModelServerCoordinator *)self sendSuggestionsToBlendingForEachConfigImmediately];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)sendSuggestionsToBlendingForEachConfigImmediately
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(ATXTimeBucketedRateLimiter *)self->_rateLimiter tryToIncrementCountAndReturnSuccess])
  {
    updateQueue = self->_updateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __96__ATXCandidateRelevanceModelServerCoordinator_sendSuggestionsToBlendingForEachConfigImmediately__block_invoke;
    block[3] = &unk_278596BB8;
    block[4] = self;
    dispatch_sync(updateQueue, block);
  }

  else
  {
    v4 = __atxlog_handle_relevance_model();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      *buf = 138412290;
      v10 = v6;
      _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%@ - Encountered rate limit. Not updating predictions immediately.", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)sendSuggestionsToBlendingForEachConfigIfCacheIsOlderThan:(double)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v30 = os_transaction_create();
  v5 = __atxlog_handle_relevance_model();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138412290;
    v37 = v7;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%@ - Beginning model serving for all configs.", buf, 0xCu);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = self->_configs;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v33;
    v12 = 0x277CBE000uLL;
    v31 = self;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        v15 = [(ATXCandidateRelevanceModelServerCoordinator *)self lastCacheUpdateDateForConfig:v14];
        [v15 timeIntervalSinceNow];
        v17 = -v16;
        if (v15)
        {
          v18 = v17 <= a3;
        }

        else
        {
          v18 = 0;
        }

        if (v18)
        {
          v20 = __atxlog_handle_relevance_model();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = objc_opt_class();
            v22 = NSStringFromClass(v21);
            v23 = [v14 clientModel];
            [v23 clientModelId];
            v24 = v10;
            v25 = v11;
            v26 = v8;
            v28 = v27 = v12;
            *buf = 138412802;
            v37 = v22;
            v38 = 2048;
            v39 = v17;
            v40 = 2112;
            v41 = v28;
            _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEFAULT, "%@ - Skipping model serving due to recent cache update %f seconds ago for model id %@", buf, 0x20u);

            v12 = v27;
            v8 = v26;
            v11 = v25;
            v10 = v24;
            self = v31;
          }
        }

        else
        {
          v19 = [*(v12 + 2728) now];
          [(ATXCandidateRelevanceModelServerCoordinator *)self setCacheUpdateDate:v19 forConfig:v14];

          [(ATXCandidateRelevanceModelServerCoordinator *)self sendSuggestionsToBlendingForConfig:v14];
        }
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v32 objects:v42 count:16];
    }

    while (v10);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)sendSuggestionsToBlendingForConfig:(id)a3
{
  v3 = a3;
  v4 = [[ATXCandidateRelevanceModelServer alloc] initWithConfig:v3];

  [(ATXCandidateRelevanceModelServer *)v4 sendSuggestionsToBlending];
}

+ (id)userDefaultsKeyForLastCacheUpdateDateForConfig:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 clientModel];

  v7 = [v6 clientModelId];
  v8 = [@"ATXCandidateRelevanceModelServerCoordinator-ClientModelLastCacheUpdateDate" stringByAppendingFormat:@"-%@-%@", v5, v7];

  return v8;
}

- (id)lastCacheUpdateDateForConfig:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() userDefaultsKeyForLastCacheUpdateDateForConfig:v4];

  v6 = [(NSUserDefaults *)self->_defaults objectForKey:v5];

  return v6;
}

- (void)setCacheUpdateDate:(id)a3 forConfig:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() userDefaultsKeyForLastCacheUpdateDateForConfig:v6];

  [(NSUserDefaults *)self->_defaults setObject:v7 forKey:v8];
}

- (void)registerAnchorEventNotificationsForAnchor:.cold.1()
{
  OUTLINED_FUNCTION_3_6();
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v2, v3, "%@ - (%@) Setting up Anchor Event listener.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)registerAnchorEventNotificationsForAnchor:.cold.2()
{
  OUTLINED_FUNCTION_3_6();
  v7 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_12();
  v6 = v1;
  _os_log_fault_impl(&dword_2263AA000, v0, OS_LOG_TYPE_FAULT, "%@ - (%@) Tried to register for real-time notifications, but the Anchor doesn't support the ContextStore and it's not another known anchor.", v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)registerAnchorEventNotificationsForAnchor:.cold.3()
{
  OUTLINED_FUNCTION_3_6();
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v2, v3, "%@ - (%@) Setting up Anchor Event invalidation listener.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)registerAnchorEventNotificationsForAnchor:.cold.4()
{
  OUTLINED_FUNCTION_3_6();
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v2, v3, "%@ - (%@) Done registering.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)unregisterAnchorEventListenerForAnchor:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v2, v3, "%@ - (%@) Unregistering Anchor Event listener.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)unregisterAnchorEventListenerForAnchor:.cold.2()
{
  OUTLINED_FUNCTION_2_1();
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v2, v3, "%@ - (%@) Done unregistering.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end