@interface ATXAnchorModelInferenceEngine
+ (id)sharedInstance;
- (ATXAnchorModelInferenceEngine)init;
- (id)currentDuetEventForAnchor:(id)a3;
- (id)entranceCallbackForAnchor:(id)a3;
- (id)exitCallbackForAnchor:(id)a3;
- (id)exitNotificationIdentifierForAnchor:(id)a3;
- (id)notificationIdentifierForAnchor:(id)a3;
- (id)supportedAnchorsForInference;
- (void)dealloc;
- (void)handleAnchorEventForAnchor:(id)a3;
- (void)handleAnchorEventForGymArrival;
- (void)handleAnchorEventForIdleTimeBegin;
- (void)handleAnchorEventForMicrolocationVisitAnchor;
- (void)handleAnchorExitEventForGymArrival;
- (void)handleInferenceEvent:(id)a3;
- (void)handleLOIEntrance;
- (void)handleLOIExit;
- (void)queueHandleInferenceEvent:(id)a3;
- (void)registerAnchorEventListenerForAnchor:(id)a3;
- (void)registerAnchorEventListeners;
- (void)registerForAnchorEntrance:(id)a3 cdContext:(id)a4;
- (void)registerForAnchorExit:(id)a3 cdContext:(id)a4;
- (void)registerForWakingNotificationForAnchor:(id)a3 cdContext:(id)a4;
- (void)retryPreviouslyIncompleteInference;
- (void)setupContextStoreListenerForAnchor:(id)a3 context:(id)a4;
- (void)start;
- (void)unregisterAnchorEventListenerForAnchor:(id)a3;
- (void)unregisterAnchorEventListeners;
@end

@implementation ATXAnchorModelInferenceEngine

+ (id)sharedInstance
{
  v2 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "Starting Anchor Model Inference Engine.", v5, 2u);
  }

  if (sharedInstance__pasOnceToken8_1 != -1)
  {
    +[ATXAnchorModelInferenceEngine sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_52;

  return v3;
}

void __47__ATXAnchorModelInferenceEngine_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_52;
  sharedInstance__pasExprOnceResult_52 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXAnchorModelInferenceEngine)init
{
  v16.receiver = self;
  v16.super_class = ATXAnchorModelInferenceEngine;
  v2 = [(ATXAnchorModelInferenceEngine *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v2->_started = 0;
    v4 = objc_opt_new();
    predictionScheduler = v3->_predictionScheduler;
    v3->_predictionScheduler = v4;

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v7 UTF8String];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create(v8, v9);
    queue = v3->_queue;
    v3->_queue = v10;

    v12 = objc_alloc(MEMORY[0x277CBEBD0]);
    v13 = [v12 initWithSuiteName:*MEMORY[0x277CEBD00]];
    defaults = v3->_defaults;
    v3->_defaults = v13;
  }

  return v3;
}

- (void)dealloc
{
  [(ATXAnchorModelInferenceEngine *)self unregisterAnchorEventListeners];
  v3.receiver = self;
  v3.super_class = ATXAnchorModelInferenceEngine;
  [(ATXAnchorModelInferenceEngine *)&v3 dealloc];
}

- (void)start
{
  v2 = atomic_load(&self->_started);
  if (v2)
  {
    v3 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(ATXAnchorModelInferenceEngine *)v3 start];
    }
  }

  else
  {
    atomic_store(1u, &self->_started);
    v5 = objc_opt_new();
    contextHelper = self->_contextHelper;
    self->_contextHelper = v5;

    [(ATXAnchorModelInferenceEngine *)self registerAnchorEventListeners];
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__ATXAnchorModelInferenceEngine_start__block_invoke;
    block[3] = &unk_278596BB8;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

uint64_t __38__ATXAnchorModelInferenceEngine_start__block_invoke(uint64_t a1)
{
  [*(a1 + 32) retryPreviouslyIncompleteInference];
  v2 = *(*(a1 + 32) + 16);

  return [v2 scheduleExistingPredictions];
}

- (id)supportedAnchorsForInference
{
  v2 = +[ATXAnchorModelHyperParameters sharedInstance];
  v3 = [v2 enabledAnchors];
  v4 = [v3 _pas_mappedArrayWithTransform:&__block_literal_global_28_1];

  return v4;
}

id __61__ATXAnchorModelInferenceEngine_supportedAnchorsForInference__block_invoke(int a1, NSString *aClassName)
{
  NSClassFromString(aClassName);
  v2 = objc_opt_new();

  return v2;
}

- (void)registerAnchorEventListeners
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(ATXAnchorModelInferenceEngine *)self supportedAnchorsForInference];
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

        [(ATXAnchorModelInferenceEngine *)self registerAnchorEventListenerForAnchor:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)registerAnchorEventListenerForAnchor:(id)a3
{
  location[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([objc_opt_class() usesContextStoreForRealTimeNotifications])
  {
    v5 = [(ATXCoreDuetContextHelper *)self->_contextHelper context];
    [(ATXAnchorModelInferenceEngine *)self setupContextStoreListenerForAnchor:v4 context:v5];

    goto LABEL_36;
  }

  if ([objc_opt_class() anchorType] == 19)
  {
    v6 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [ATXAnchorModelInferenceEngine registerAnchorEventListenerForAnchor:];
    }

    objc_initWeak(location, self);
    v7 = [MEMORY[0x277CEBC98] sharedInstance];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __70__ATXAnchorModelInferenceEngine_registerAnchorEventListenerForAnchor___block_invoke;
    v20[3] = &unk_278596D20;
    objc_copyWeak(&v21, location);
    v8 = [v7 subscribeWithCallback:v20 onQueue:self->_queue];
    microLocationSchedulerToken = self->_microLocationSchedulerToken;
    self->_microLocationSchedulerToken = v8;

    v10 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ATXAnchorModelInferenceEngine registerAnchorEventListenerForAnchor:];
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(location);
    goto LABEL_36;
  }

  if ([objc_opt_class() anchorType] == 7)
  {
    v11 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [ATXAnchorModelInferenceEngine registerAnchorEventListenerForAnchor:];
    }

    [objc_opt_class() registerForNotificationsWithoutUsingContextStoreForObserver:self enterSelector:sel_handleLOIEntrance exitSelector:0];
    v12 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ATXAnchorModelInferenceEngine registerAnchorEventListenerForAnchor:];
    }

LABEL_14:

    goto LABEL_36;
  }

  if ([objc_opt_class() anchorType] == 8)
  {
    v13 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [ATXAnchorModelInferenceEngine registerAnchorEventListenerForAnchor:];
    }

    [objc_opt_class() registerForNotificationsWithoutUsingContextStoreForObserver:self enterSelector:sel_handleLOIExit exitSelector:0];
    v12 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ATXAnchorModelInferenceEngine registerAnchorEventListenerForAnchor:];
    }

    goto LABEL_14;
  }

  if ([objc_opt_class() anchorType] == 3)
  {
    v14 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v4;
      _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "Inference: (%@) Setting up Anchor Event listener.", location, 0xCu);
    }

    [objc_opt_class() registerForNotificationsWithoutUsingContextStoreForObserver:self enterSelector:sel_handleAnchorEventForIdleTimeBegin exitSelector:0];
    v15 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v4;
      _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "Inference: (%@) Done registering.", location, 0xCu);
    }

LABEL_26:

    goto LABEL_36;
  }

  v16 = [objc_opt_class() anchorType] == 22;
  v17 = __atxlog_handle_anchor();
  v18 = v17;
  if (v16)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v4;
      _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "Inference: (%@) Setting up Anchor Event listener.", location, 0xCu);
    }

    [objc_opt_class() registerForNotificationsWithoutUsingContextStoreForObserver:self enterSelector:sel_handleAnchorEventForGymArrival exitSelector:sel_handleAnchorExitEventForGymArrival];
    v15 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v4;
      _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "Inference: (%@) Done registering.", location, 0xCu);
    }

    goto LABEL_26;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    [ATXAnchorModelInferenceEngine registerAnchorEventListenerForAnchor:];
  }

LABEL_36:
  v19 = *MEMORY[0x277D85DE8];
}

void __70__ATXAnchorModelInferenceEngine_registerAnchorEventListenerForAnchor___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained handleAnchorEventForMicrolocationVisitAnchor];
    WeakRetained = v2;
  }
}

- (void)unregisterAnchorEventListeners
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(ATXAnchorModelInferenceEngine *)self supportedAnchorsForInference];
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

        [(ATXAnchorModelInferenceEngine *)self unregisterAnchorEventListenerForAnchor:*(*(&v9 + 1) + 8 * v7++)];
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
    if ([objc_opt_class() anchorType] == 8 || objc_msgSend(objc_opt_class(), "anchorType") == 7 || objc_msgSend(objc_opt_class(), "anchorType") == 3 || objc_msgSend(objc_opt_class(), "anchorType") == 22)
    {
      v5 = __atxlog_handle_anchor();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [ATXAnchorModelInferenceEngine unregisterAnchorEventListenerForAnchor:];
      }

      [objc_opt_class() unregisterForNotificationsWithoutUsingContextStoreForObserver:self];
      v6 = __atxlog_handle_anchor();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [ATXAnchorModelInferenceEngine unregisterAnchorEventListenerForAnchor:];
      }
    }

    if ([objc_opt_class() anchorType] == 19)
    {
      v7 = __atxlog_handle_anchor();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [ATXAnchorModelInferenceEngine unregisterAnchorEventListenerForAnchor:];
      }

      if (self->_microLocationSchedulerToken)
      {
        v8 = [MEMORY[0x277CEBC98] sharedInstance];
        [v8 unSubscribeWithToken:self->_microLocationSchedulerToken];

        microLocationSchedulerToken = self->_microLocationSchedulerToken;
        self->_microLocationSchedulerToken = 0;
      }

      v10 = __atxlog_handle_anchor();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [ATXAnchorModelInferenceEngine unregisterAnchorEventListenerForAnchor:];
      }
    }
  }
}

- (void)handleLOIEntrance
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ATXAnchorModelInferenceEngine_handleLOIEntrance__block_invoke;
  block[3] = &unk_278596BB8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __50__ATXAnchorModelInferenceEngine_handleLOIEntrance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_new();
  [v1 handleAnchorEventForAnchor:v2];
}

- (void)handleLOIExit
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__ATXAnchorModelInferenceEngine_handleLOIExit__block_invoke;
  block[3] = &unk_278596BB8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __46__ATXAnchorModelInferenceEngine_handleLOIExit__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_new();
  [v1 handleAnchorEventForAnchor:v2];
}

- (void)setupContextStoreListenerForAnchor:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelInferenceEngine registerAnchorEventListenerForAnchor:];
  }

  [(ATXAnchorModelInferenceEngine *)self registerForWakingNotificationForAnchor:v6 cdContext:v7];
}

- (void)registerForWakingNotificationForAnchor:(id)a3 cdContext:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_INFO, "Inference: (%@) Registering with ContextStore for Anchor Event callbacks.", &v11, 0xCu);
  }

  [(ATXAnchorModelInferenceEngine *)self registerForAnchorEntrance:v6 cdContext:v7];
  [(ATXAnchorModelInferenceEngine *)self registerForAnchorExit:v6 cdContext:v7];

  v9 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "Inference: (%@) Done registering with the ContextStore.", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)registerForAnchorEntrance:(id)a3 cdContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelInferenceEngine registerForAnchorEntrance:cdContext:];
  }

  v9 = objc_opt_class();
  v10 = [(ATXAnchorModelInferenceEngine *)self entranceCallbackForAnchor:v6];
  v11 = [(ATXAnchorModelInferenceEngine *)self notificationIdentifierForAnchor:v6];
  [v9 registerWithContextStoreForAnchorEntranceWithCallback:v10 notificationId:v11 registrationPersistenceContext:v7];

  v12 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelInferenceEngine registerForAnchorEntrance:cdContext:];
  }
}

- (void)registerForAnchorExit:(id)a3 cdContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelInferenceEngine registerForAnchorExit:cdContext:];
  }

  v9 = [objc_opt_class() invalidationPredicateForContextStoreRegistration];
  if (v9)
  {
    v10 = objc_opt_class();
    v11 = [(ATXAnchorModelInferenceEngine *)self exitCallbackForAnchor:v6];
    v12 = [(ATXAnchorModelInferenceEngine *)self exitNotificationIdentifierForAnchor:v6];
    [v10 registerWithContextStoreForAnchorExitWithCallback:v11 notificationId:v12 registrationPersistenceContext:v7];

    v13 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [ATXAnchorModelInferenceEngine registerForAnchorExit:cdContext:];
    }
  }

  else
  {
    v13 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [ATXAnchorModelInferenceEngine registerForAnchorExit:cdContext:];
    }
  }
}

- (void)retryPreviouslyIncompleteInference
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [v3 inferenceEventsToTryAgain];

  v5 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v22 = [v4 count];
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Retrieved %lu incomplete inference events from Inference Tracker.", buf, 0xCu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = __atxlog_handle_anchor();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v22 = v11;
          _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "Retrying inference event: %@", buf, 0xCu);
        }

        [(ATXAnchorModelInferenceEngine *)self handleInferenceEvent:v11];
        v14 = __atxlog_handle_anchor();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v22 = v11;
          _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "Sucessfully finished retrying inference event: %@", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleAnchorEventForMicrolocationVisitAnchor
{
  v3 = objc_opt_new();
  v4 = [(ATXAnchorModelInferenceEngine *)self currentDuetEventForAnchor:v3];

  if (v4)
  {
    v5 = [v4 identifier];
    v6 = [(NSUserDefaults *)self->_defaults stringForKey:@"ATXMicrolocationAnchorLastIdentifierKey"];
    v7 = [v5 isEqualToString:v6];

    if (v7)
    {
      v8 = __atxlog_handle_anchor();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "Received a high confidence anchor event, but ignoring since it's the same event as what we received last time.", v14, 2u);
      }
    }

    else
    {
      defaults = self->_defaults;
      v10 = [v4 identifier];
      [(NSUserDefaults *)defaults setValue:v10 forKey:@"ATXMicrolocationAnchorLastIdentifierKey"];

      v11 = [ATXAnchorModelIncompleteInferenceEvent alloc];
      v12 = objc_opt_new();
      v13 = [(ATXAnchorModelIncompleteInferenceEvent *)v11 initWithAnchor:v12 anchorEvent:v4];

      [(ATXAnchorModelInferenceEngine *)self queueHandleInferenceEvent:v13];
    }
  }
}

- (void)handleAnchorEventForIdleTimeBegin
{
  v3 = [ATXScreenLockStateDuetEvent alloc];
  v4 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:10800.0];
  v5 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:21600.0];
  v9 = [(ATXScreenLockStateDuetEvent *)v3 initWithScreenLockState:1 startDate:v4 endDate:v5];

  v6 = [ATXAnchorModelIncompleteInferenceEvent alloc];
  v7 = objc_opt_new();
  v8 = [(ATXAnchorModelIncompleteInferenceEvent *)v6 initWithAnchor:v7 anchorEvent:v9];

  [(ATXAnchorModelInferenceEngine *)self queueHandleInferenceEvent:v8];
}

- (void)handleAnchorEventForGymArrival
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(ATXAnchorModelInferenceEngine *)self currentDuetEventForAnchor:v3];
  if (v4)
  {
    v5 = [[ATXAnchorModelIncompleteInferenceEvent alloc] initWithAnchor:v3 anchorEvent:v4];
    [(ATXAnchorModelInferenceEngine *)self queueHandleInferenceEvent:v5];
  }

  else
  {
    v6 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "Unable to retrieve current event for anchor: %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleAnchorExitEventForGymArrival
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "Removing suggestions for anchor due to exit event: %@", &v7, 0xCu);
  }

  v5 = objc_opt_new();
  [v5 clearAllIncompleteInferenceEvents];

  [(ATXAnchorModelPredictionScheduler *)self->_predictionScheduler clearPredictionsForAnchor:v3];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleAnchorEventForAnchor:(id)a3
{
  v4 = a3;
  v5 = [(ATXAnchorModelInferenceEngine *)self currentDuetEventForAnchor:v4];
  if (v5)
  {
    v6 = [[ATXAnchorModelIncompleteInferenceEvent alloc] initWithAnchor:v4 anchorEvent:v5];
    [(ATXAnchorModelInferenceEngine *)self handleInferenceEvent:v6];
  }

  else
  {
    v7 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [ATXAnchorModelInferenceEngine handleAnchorEventForAnchor:];
    }
  }
}

- (id)currentDuetEventForAnchor:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_msgSend(objc_msgSend(objc_opt_class() "supportedDuetDataProviderClass")];
  if (([objc_opt_class() anchorType] & 0xFFFFFFFFFFFFFFFELL) != 0x14)
  {
LABEL_9:
    v5 = v4;
    goto LABEL_10;
  }

  if (![objc_opt_class() isActive])
  {
    v6 = 0;
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [ATXAnchorModelInferenceEngine currentDuetEventForAnchor:];
    }

    goto LABEL_9;
  }

  [objc_opt_class() secondsOfInfluence];
  v5 = [v4 convertToUpcomingCommuteEventWithWindowDuration:?];
LABEL_10:
  v6 = v5;
LABEL_11:

  return v6;
}

- (void)queueHandleInferenceEvent:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__ATXAnchorModelInferenceEngine_queueHandleInferenceEvent___block_invoke;
  v7[3] = &unk_278596C10;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)handleInferenceEvent:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 anchor];

  if (v5)
  {
    v6 = objc_opt_new();
    [v6 trackInferenceStartedForInferenceEvent:v4];

    v7 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 anchor];
      v9 = [v4 anchorEvent];
      v22 = 138412546;
      v23 = v8;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "Inference: Handling anchor event for anchor: %@, anchorEvent: %@", &v22, 0x16u);
    }

    v10 = [ATXAnchorModelAnchorEventHandler alloc];
    v11 = [v4 anchor];
    v12 = [v4 anchorEvent];
    v13 = [(ATXAnchorModelAnchorEventHandler *)v10 initWithAnchor:v11 anchorEvent:v12];

    v14 = [v13 predictionsForAnchorEvent];
    v15 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v14 count];
      v22 = 134217984;
      v23 = v16;
      _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "Inference: Generated %lu anchor model predictions. Sending predictions to the scheduler...", &v22, 0xCu);
    }

    predictionScheduler = self->_predictionScheduler;
    v18 = [v4 anchor];
    [(ATXAnchorModelPredictionScheduler *)predictionScheduler schedulePredictions:v14 anchor:v18];

    v19 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEFAULT, "Inference: Sent predictions to scheduler. [Done]", &v22, 2u);
    }

    v20 = objc_opt_new();
    [v20 trackInferenceFinishedForInferenceEvent:v4];
  }

  else
  {
    v13 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [ATXAnchorModelInferenceEngine handleInferenceEvent:];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)notificationIdentifierForAnchor:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 anchorTypeString];

  v7 = [v5 initWithFormat:@"com.apple.duetexpertd.ATXAnchorModel.%@", v6];

  return v7;
}

- (id)exitNotificationIdentifierForAnchor:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 anchorTypeString];

  v7 = [v5 initWithFormat:@"com.apple.duetexpertd.ATXAnchorModel.invalidate.%@", v6];

  return v7;
}

- (id)entranceCallbackForAnchor:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__ATXAnchorModelInferenceEngine_entranceCallbackForAnchor___block_invoke;
  aBlock[3] = &unk_2785A1DC8;
  v10 = v4;
  v5 = v4;
  objc_copyWeak(&v11, &location);
  v6 = _Block_copy(aBlock);
  v7 = _Block_copy(v6);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v7;
}

void __59__ATXAnchorModelInferenceEngine_entranceCallbackForAnchor___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412546;
    v15 = v5;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "Inference: (%@) Anchor Event listener called, %@. Generating new predictions", buf, 0x16u);
  }

  v6 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = *(a1 + 32);
    if ([objc_opt_class() shouldProcessContextStoreNotification])
    {
      v9 = WeakRetained[4];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __59__ATXAnchorModelInferenceEngine_entranceCallbackForAnchor___block_invoke_60;
      block[3] = &unk_278597828;
      block[4] = WeakRetained;
      v12 = *(a1 + 32);
      v13 = v6;
      dispatch_async(v9, block);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

id __59__ATXAnchorModelInferenceEngine_entranceCallbackForAnchor___block_invoke_60(uint64_t a1)
{
  [*(a1 + 32) handleAnchorEventForAnchor:*(a1 + 40)];
  v2 = *(a1 + 48);
  return objc_opt_self();
}

- (id)exitCallbackForAnchor:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__ATXAnchorModelInferenceEngine_exitCallbackForAnchor___block_invoke;
  aBlock[3] = &unk_2785A1DC8;
  v10 = v4;
  v5 = v4;
  objc_copyWeak(&v11, &location);
  v6 = _Block_copy(aBlock);
  v7 = _Block_copy(v6);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v7;
}

void __55__ATXAnchorModelInferenceEngine_exitCallbackForAnchor___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412546;
    v15 = v5;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "Inference: (%@) Exit Anchor Event listener called, %@. Clearing predictions.", buf, 0x16u);
  }

  v6 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = *(a1 + 32);
    if ([objc_opt_class() shouldProcessContextStoreNotification])
    {
      v9 = WeakRetained[4];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __55__ATXAnchorModelInferenceEngine_exitCallbackForAnchor___block_invoke_62;
      block[3] = &unk_278597828;
      block[4] = WeakRetained;
      v12 = *(a1 + 32);
      v13 = v6;
      dispatch_async(v9, block);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

id __55__ATXAnchorModelInferenceEngine_exitCallbackForAnchor___block_invoke_62(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  [v2 clearAllIncompleteInferenceEvents];

  [*(a1[4] + 16) clearPredictionsForAnchor:a1[5]];
  v3 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[5];
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Inference: (%@) Done clearing predictions.", &v8, 0xCu);
  }

  v5 = a1[6];
  result = objc_opt_self();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)registerAnchorEventListenerForAnchor:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, v0, v1, "Inference: (%@) Tried to register for real-time notifications, but the Anchor doesn't support the ContextStore and it's not another known anchor.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)registerAnchorEventListenerForAnchor:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_4(&dword_2263AA000, v0, v1, "Inference: (%@) Setting up Anchor Event listener.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)registerAnchorEventListenerForAnchor:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_4(&dword_2263AA000, v0, v1, "Inference: (%@) Done registering.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)unregisterAnchorEventListenerForAnchor:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_4(&dword_2263AA000, v0, v1, "Inference: (%@) Unregistering Anchor Event listener.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)unregisterAnchorEventListenerForAnchor:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_4(&dword_2263AA000, v0, v1, "Inference: (%@) Done unregistering.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)registerForAnchorEntrance:cdContext:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_4(&dword_2263AA000, v0, v1, "Inference: (%@) registering for anchor context entrance...", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)registerForAnchorEntrance:cdContext:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_4(&dword_2263AA000, v0, v1, "Inference: (%@) ...done registering for anchor context entrance.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)registerForAnchorExit:cdContext:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_4(&dword_2263AA000, v0, v1, "Inference: (%@) registering for anchor context exit...", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)registerForAnchorExit:cdContext:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_4(&dword_2263AA000, v0, v1, "Inference: (%@) ...done registering for anchor context exit.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)registerForAnchorExit:cdContext:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_4(&dword_2263AA000, v0, v1, "Inference: (%@) ...anchor doesn't have an invalidation predicate. Not registering for exit. Done.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleAnchorEventForAnchor:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, v0, v1, "Inference: (%@) - handleAnchorEventForAnchor. Failed to initialize a DuetEvent for the Anchor Event from the ContextStore. Exiting early, and dropping the Anchor Event on the floor.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)currentDuetEventForAnchor:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, v0, v1, "Upcoming commute anchor retrieved an event that wasn't ATXTripDuetEvent: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleInferenceEvent:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, v0, v1, "Unable to handle inference event because anchor was nil. Inference event: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end