@interface ATXActivitySuggestionClient
+ (Class)ATXTriggerClassFromDNDModeConfigurationTrigger:(id)trigger;
+ (Class)DNDModeConfigurationTriggerClassFromATXTrigger:(id)trigger;
+ (id)sharedInstance;
- (ATXActivitySuggestionClient)init;
- (ATXActivitySuggestionClient)initWithRoutineManager:(id)manager;
- (BOOL)_activityIsEligibleForSetUpSuggestion:(id)suggestion modeGlobals:(id)globals;
- (BOOL)_activityIsEligibleForTriggerSuggestion:(id)suggestion modeGlobals:(id)globals;
- (BOOL)_shouldSendAutomationSuggestionForMode:(int)mode;
- (BOOL)_shouldSendModeSetUpSuggestionAtEndOfModeToLockScreen:(id)screen modeGlobals:(id)globals;
- (BOOL)_shouldSendModeTriggerSuggestionAtEndOfModeToLockScreen:(id)screen modeGlobals:(id)globals;
- (id)DNDModeConfigurationTriggersToATXTriggers:(id)triggers;
- (id)_activityForEvent:(id)event;
- (id)_suggestionWithActivity:(id)activity modeGlobals:(id)globals;
- (id)currentSuggestion;
- (id)localizedSuggestionReasonForBMInferredModeEvent:(id)event;
- (id)previousSuggestion;
- (id)suggestionWithUUID:(id)d;
- (id)triggersToDNDModeConfigurationTriggers:(id)triggers;
- (void)_fetchAndCacheLOIs;
- (void)_logFeedbackEventForSuggestionUUID:(id)d suggestionType:(unint64_t)type eventType:(unint64_t)eventType acceptedTriggers:(id)triggers location:(unint64_t)location;
- (void)_modeDidChange;
- (void)_setUpPublisherIfNecessary;
- (void)currentSuggestionWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)registerObserver:(id)observer sendingInitialChangeNotification:(BOOL)notification;
- (void)removeObserver:(id)observer;
@end

@implementation ATXActivitySuggestionClient

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_9 != -1)
  {
    +[ATXActivitySuggestionClient sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_10;

  return v3;
}

void __45__ATXActivitySuggestionClient_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_10;
  sharedInstance__pasExprOnceResult_10 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXActivitySuggestionClient)init
{
  v3 = objc_opt_new();
  v4 = [(ATXActivitySuggestionClient *)self initWithRoutineManager:v3];

  return v4;
}

- (ATXActivitySuggestionClient)initWithRoutineManager:(id)manager
{
  managerCopy = manager;
  v30.receiver = self;
  v30.super_class = ATXActivitySuggestionClient;
  v6 = [(ATXActivitySuggestionClient *)&v30 init];
  if (v6)
  {
    v7 = __atxlog_handle_modes();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "Creating ATXActivitySuggestionClient", buf, 2u);
    }

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v6->_observers;
    v6->_observers = weakObjectsHashTable;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("ATXActivitySuggestionClient.queue", v10);
    queue = v6->_queue;
    v6->_queue = v11;

    v13 = BiomeLibrary();
    userFocus = [v13 UserFocus];
    inferredMode = [userFocus InferredMode];
    inferredModeStream = v6->_inferredModeStream;
    v6->_inferredModeStream = inferredMode;

    v17 = [[ATXActivitySuggestionFeedbackStream alloc] initWithStoreConfig:0];
    feedbackStream = v6->_feedbackStream;
    v6->_feedbackStream = v17;

    objc_initWeak(buf, v6);
    v19 = objc_alloc(MEMORY[0x1E69C5D80]);
    v20 = v6->_queue;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __54__ATXActivitySuggestionClient_initWithRoutineManager___block_invoke;
    v27[3] = &unk_1E80C10D8;
    objc_copyWeak(&v28, buf);
    v21 = [v19 initWithQueue:v20 operation:v27];
    coalescingTimer = v6->_coalescingTimer;
    v6->_coalescingTimer = v21;

    objc_storeStrong(&v6->_routineManager, manager);
    v23 = MEMORY[0x1E69C5D08];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __54__ATXActivitySuggestionClient_initWithRoutineManager___block_invoke_2;
    v25[3] = &unk_1E80C10D8;
    objc_copyWeak(&v26, buf);
    [v23 runBlockWhenDeviceIsClassCUnlockedWithQoS:25 block:v25];
    objc_destroyWeak(&v26);
    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }

  return v6;
}

void __54__ATXActivitySuggestionClient_initWithRoutineManager___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _modeDidChange];
}

void __54__ATXActivitySuggestionClient_initWithRoutineManager___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fetchAndCacheLOIs];
}

- (void)dealloc
{
  [(BPSSink *)self->_sink cancel];
  v3.receiver = self;
  v3.super_class = ATXActivitySuggestionClient;
  [(ATXActivitySuggestionClient *)&v3 dealloc];
}

- (void)_setUpPublisherIfNecessary
{
  if (!self->_sink)
  {
    if (self->_inferredModeStream)
    {
      goto LABEL_6;
    }

    v3 = __atxlog_handle_modes();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [ATXActivitySuggestionClient _setUpPublisherIfNecessary];
    }

    v4 = BiomeLibrary();
    userFocus = [v4 UserFocus];
    inferredMode = [userFocus InferredMode];
    inferredModeStream = self->_inferredModeStream;
    self->_inferredModeStream = inferredMode;

    if (self->_inferredModeStream)
    {
LABEL_6:
      v8 = __atxlog_handle_modes();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "ATXActivitySuggestionClient: registering for real time events", buf, 2u);
      }

      v9 = MEMORY[0x1E696AEC0];
      processInfo = [MEMORY[0x1E696AE30] processInfo];
      processName = [processInfo processName];
      v12 = [v9 stringWithFormat:@"ATXActivitySuggestionClient.Modes.%@", processName];

      v13 = [objc_alloc(MEMORY[0x1E698F258]) initWithIdentifier:v12 targetQueue:self->_queue];
      scheduler = self->_scheduler;
      self->_scheduler = v13;

      if (self->_scheduler)
      {
        objc_initWeak(buf, self);
        dSLPublisher = [(BMStream *)self->_inferredModeStream DSLPublisher];
        v16 = [dSLPublisher subscribeOn:self->_scheduler];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __57__ATXActivitySuggestionClient__setUpPublisherIfNecessary__block_invoke_28;
        v21[3] = &unk_1E80C3AF8;
        objc_copyWeak(&v22, buf);
        v17 = [v16 sinkWithCompletion:&__block_literal_global_27_0 receiveInput:v21];
        sink = self->_sink;
        self->_sink = v17;

        if (!self->_sink)
        {
          v19 = __atxlog_handle_modes();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            [ATXActivitySuggestionClient _setUpPublisherIfNecessary];
          }
        }

        objc_destroyWeak(&v22);
        objc_destroyWeak(buf);
      }

      else
      {
        v20 = __atxlog_handle_modes();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [ATXActivitySuggestionClient _setUpPublisherIfNecessary];
        }
      }
    }

    else
    {
      v12 = __atxlog_handle_modes();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [ATXActivitySuggestionClient _setUpPublisherIfNecessary];
      }
    }
  }
}

void __57__ATXActivitySuggestionClient__setUpPublisherIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 state];
  v4 = __atxlog_handle_modes();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __57__ATXActivitySuggestionClient__setUpPublisherIfNecessary__block_invoke_cold_1(v2);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ATXActivitySuggestionClient: done listening to mode events", v6, 2u);
  }
}

void __57__ATXActivitySuggestionClient__setUpPublisherIfNecessary__block_invoke_28(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 eventBody];
    v6 = [v5 isStart];

    if (v6)
    {
      v7 = __atxlog_handle_modes();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __57__ATXActivitySuggestionClient__setUpPublisherIfNecessary__block_invoke_28_cold_1(WeakRetained, v3, v7);
      }

      [WeakRetained[7] runAfterDelaySeconds:1 coalescingBehavior:0.5];
    }
  }

  else
  {
    v8 = __atxlog_handle_modes();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __57__ATXActivitySuggestionClient__setUpPublisherIfNecessary__block_invoke_28_cold_2();
    }
  }
}

- (void)registerObserver:(id)observer sendingInitialChangeNotification:(BOOL)notification
{
  v16 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = __atxlog_handle_modes();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = observerCopy;
    _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "ATXActivitySuggestionClient: registered %@", buf, 0xCu);
  }

  [(NSHashTable *)selfCopy->_observers addObject:observerCopy];
  v9 = MEMORY[0x1E69C5D08];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __81__ATXActivitySuggestionClient_registerObserver_sendingInitialChangeNotification___block_invoke;
  v11[3] = &unk_1E80C14B8;
  v11[4] = selfCopy;
  notificationCopy = notification;
  v10 = observerCopy;
  v12 = v10;
  [v9 runBlockWhenDeviceIsClassCUnlockedWithQoS:25 block:v11];

  objc_sync_exit(selfCopy);
}

void __81__ATXActivitySuggestionClient_registerObserver_sendingInitialChangeNotification___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__ATXActivitySuggestionClient_registerObserver_sendingInitialChangeNotification___block_invoke_2;
  block[3] = &unk_1E80C14B8;
  v1 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = *(a1 + 48);
  v3 = v1;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __81__ATXActivitySuggestionClient_registerObserver_sendingInitialChangeNotification___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _setUpPublisherIfNecessary];
  if (*(a1 + 48) == 1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v4 = *(v3 + 32);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __81__ATXActivitySuggestionClient_registerObserver_sendingInitialChangeNotification___block_invoke_3;
    v5[3] = &unk_1E80C0958;
    v5[4] = v3;
    v6 = v2;
    dispatch_async(v4, v5);
  }
}

void __81__ATXActivitySuggestionClient_registerObserver_sendingInitialChangeNotification___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) currentSuggestion];
  [*(a1 + 40) activitySuggestionClient:*(a1 + 32) didSuggestActivity:v2];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_observers removeObject:observerCopy];
  objc_sync_exit(selfCopy);
}

- (id)suggestionWithUUID:(id)d
{
  v4 = MEMORY[0x1E69C5AB8];
  dCopy = d;
  v6 = [[v4 alloc] initWithStream:self->_inferredModeStream];
  v7 = [v6 inferredModeEventWithSuggestionUUID:dCopy];

  if (v7)
  {
    v8 = [(ATXActivitySuggestionClient *)self _activityForEvent:v7];
    if (v8)
    {
      v9 = +[ATXModeGlobals sharedInstance];
      v10 = [(ATXActivitySuggestionClient *)self _suggestionWithActivity:v8 modeGlobals:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)previousSuggestion
{
  v3 = [objc_alloc(MEMORY[0x1E69C5AB8]) initWithStream:self->_inferredModeStream];
  previousModeEvent = [v3 previousModeEvent];
  eventBody = [previousModeEvent eventBody];
  v6 = [(ATXActivitySuggestionClient *)self _activityForEvent:eventBody];

  return v6;
}

- (id)currentSuggestion
{
  v3 = [objc_alloc(MEMORY[0x1E69C5AB8]) initWithStream:self->_inferredModeStream];
  currentMode = [v3 currentMode];
  v5 = [(ATXActivitySuggestionClient *)self _activityForEvent:currentMode];

  return v5;
}

- (id)_activityForEvent:(id)event
{
  v14 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v5 = eventCopy;
  if (eventCopy)
  {
    if (-[ATXActivitySuggestionClient _shouldSendAutomationSuggestionForMode:](self, "_shouldSendAutomationSuggestionForMode:", [eventCopy modeType]))
    {
      v6 = [[ATXActivity alloc] initWithBiomeInferredModeEvent:v5];
      goto LABEL_10;
    }

    v7 = __atxlog_handle_modes();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134217984;
      modeType = [v5 modeType];
      v8 = "ATXActivitySuggestionClient: last mode is not supported, not sending automation suggestion for mode of type: %lu";
      v9 = v7;
      v10 = 12;
      goto LABEL_8;
    }
  }

  else
  {
    v7 = __atxlog_handle_modes();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      v8 = "ATXActivitySuggestionClient: no Biome event";
      v9 = v7;
      v10 = 2;
LABEL_8:
      _os_log_impl(&dword_1BF549000, v9, OS_LOG_TYPE_DEFAULT, v8, &v12, v10);
    }
  }

  v6 = 0;
LABEL_10:

  return v6;
}

- (void)currentSuggestionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__ATXActivitySuggestionClient_currentSuggestionWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E80C2008;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __70__ATXActivitySuggestionClient_currentSuggestionWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) currentSuggestion];
  (*(v1 + 16))(v1, v2);
}

- (id)localizedSuggestionReasonForBMInferredModeEvent:(id)event
{
  eventCopy = event;
  v4 = [[ATXActivity alloc] initWithBMInferredModeEvent:eventCopy];

  localizedSuggestionReason = [(ATXActivity *)v4 localizedSuggestionReason];

  return localizedSuggestionReason;
}

- (void)_logFeedbackEventForSuggestionUUID:(id)d suggestionType:(unint64_t)type eventType:(unint64_t)eventType acceptedTriggers:(id)triggers location:(unint64_t)location
{
  dCopy = d;
  triggersCopy = triggers;
  queue = self->_queue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __117__ATXActivitySuggestionClient__logFeedbackEventForSuggestionUUID_suggestionType_eventType_acceptedTriggers_location___block_invoke;
  v17[3] = &unk_1E80C3B20;
  v17[4] = self;
  v18 = dCopy;
  v19 = triggersCopy;
  eventTypeCopy = eventType;
  typeCopy = type;
  locationCopy = location;
  v15 = triggersCopy;
  v16 = dCopy;
  dispatch_async(queue, v17);
}

void __117__ATXActivitySuggestionClient__logFeedbackEventForSuggestionUUID_suggestionType_eventType_acceptedTriggers_location___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E69C5AB8]) initWithStream:*(*(a1 + 32) + 8)];
  v3 = [v2 inferredModeEventWithSuggestionUUID:*(a1 + 40)];

  v4 = [*(a1 + 32) _activityForEvent:v3];
  if (v4)
  {
    v5 = [*(a1 + 32) DNDModeConfigurationTriggersToATXTriggers:*(a1 + 48)];
    v6 = [ATXActivitySuggestionFeedbackEvent alloc];
    v7 = [MEMORY[0x1E695DF00] now];
    v8 = [(ATXActivitySuggestionFeedbackEvent *)v6 initWithEventDate:v7 activity:v4 acceptedTriggers:v5 eventType:*(a1 + 56) suggestionType:*(a1 + 64) location:*(a1 + 72)];

    v9 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_1BF549000, v9, OS_LOG_TYPE_DEFAULT, "ATXActivitySuggestionClient: Sending feedback event to Biome: %@", &v11, 0xCu);
    }

    v10 = [*(*(a1 + 32) + 16) source];
    [v10 sendEvent:v8];

    [ATXActivitySuggestionFeedbackLogUploader sendActivitySuggestionEventToCoreAnalytics:v8];
  }

  else
  {
    v5 = __atxlog_handle_modes();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __117__ATXActivitySuggestionClient__logFeedbackEventForSuggestionUUID_suggestionType_eventType_acceptedTriggers_location___block_invoke_cold_1((a1 + 40), v3, v5);
    }
  }
}

- (BOOL)_shouldSendAutomationSuggestionForMode:(int)mode
{
  if ((mode - 1) >= 0x11)
  {
    v5 = __atxlog_handle_modes();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(ATXActivitySuggestionClient *)mode _shouldSendAutomationSuggestionForMode:v5];
    }

    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = 0x1EFFDu >> (mode - 1);
  }

  return v3 & 1;
}

- (id)_suggestionWithActivity:(id)activity modeGlobals:(id)globals
{
  activityCopy = activity;
  globalsCopy = globals;
  if ([(ATXActivitySuggestionClient *)self _activityIsEligibleForSetUpSuggestion:activityCopy modeGlobals:globalsCopy])
  {
    v8 = ATXActivitySetUpSuggestion;
  }

  else
  {
    if ([(ATXActivitySuggestionClient *)self _activityIsEligibleForTriggerSuggestion:activityCopy modeGlobals:globalsCopy])
    {
      v9 = [[ATXActivityTriggerSuggestion alloc] initWithActivity:activityCopy activitySuggestionClient:self];
      goto LABEL_7;
    }

    v8 = ATXActivitySuggestion;
  }

  v9 = [[v8 alloc] initWithActivity:activityCopy];
LABEL_7:
  v10 = v9;

  return v10;
}

- (void)_modeDidChange
{
  v32 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v3 = +[ATXModeGlobals sharedInstance];
  previousSuggestion = [(ATXActivitySuggestionClient *)self previousSuggestion];
  currentSuggestion = [(ATXActivitySuggestionClient *)self currentSuggestion];
  v6 = __atxlog_handle_modes();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    modeUUID = [currentSuggestion modeUUID];
    activityType = [currentSuggestion activityType];
    [currentSuggestion activityType];
    v8 = ATXActivityTypeToString();
    modeUUID2 = [previousSuggestion modeUUID];
    activityType2 = [previousSuggestion activityType];
    [previousSuggestion activityType];
    v11 = ATXActivityTypeToString();
    *buf = 138544642;
    v21 = modeUUID;
    v22 = 2048;
    v23 = activityType;
    v24 = 2114;
    v25 = v8;
    v26 = 2114;
    v27 = modeUUID2;
    v28 = 2048;
    v29 = activityType2;
    v30 = 2114;
    v31 = v11;
    _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "ATXActivitySuggestionClient: mode did change to: (uuid: %{public}@, modeType: %lu, string: %{public}@) from (uuid: %{public}@, modeType: %lu, string: %{public}@)", buf, 0x3Eu);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__ATXActivitySuggestionClient__modeDidChange__block_invoke;
  block[3] = &unk_1E80C3B48;
  block[4] = self;
  v17 = currentSuggestion;
  v18 = previousSuggestion;
  v19 = v3;
  v12 = v3;
  v13 = previousSuggestion;
  v14 = currentSuggestion;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __45__ATXActivitySuggestionClient__modeDidChange__block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v31 = *(a1 + 32);
  objc_sync_enter(v31);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = *(*(a1 + 32) + 24);
  v2 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v2)
  {
    v3 = *v34;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v34 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v33 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v6 = __atxlog_handle_modes();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            v7 = [*(a1 + 40) modeUUID];
            v8 = [*(a1 + 40) activityType];
            *buf = 138543618;
            v38 = v7;
            v39 = 2048;
            v40 = v8;
            _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "ATXActivitySuggestionClient: didSuggestActivity: %{public}@ (modeType: %lu)", buf, 0x16u);
          }

          [v5 activitySuggestionClient:*(a1 + 32) didSuggestActivity:*(a1 + 40)];
        }

        if (objc_opt_respondsToSelector())
        {
          v9 = [*(a1 + 40) modeUUID];

          if (v9)
          {
            v10 = __atxlog_handle_modes();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              v11 = [*(a1 + 40) modeUUID];
              v12 = [*(a1 + 40) activityType];
              *buf = 138543618;
              v38 = v11;
              v39 = 2048;
              v40 = v12;
              _os_log_impl(&dword_1BF549000, v10, OS_LOG_TYPE_DEFAULT, "ATXActivitySuggestionClient: didSuggestConfiguredActivity: %{public}@ (modeType: %lu)", buf, 0x16u);
            }

            v13 = [[ATXActivitySuggestion alloc] initWithActivity:*(a1 + 40)];
            [v5 activitySuggestionClient:*(a1 + 32) didSuggestConfiguredActivity:v13];
          }

          else
          {
            v14 = [*(a1 + 48) modeUUID];

            if (v14)
            {
              v15 = __atxlog_handle_modes();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1BF549000, v15, OS_LOG_TYPE_DEFAULT, "ATXActivitySuggestionClient: didSuggestConfiguredActivity: nil", buf, 2u);
              }

              [v5 activitySuggestionClient:*(a1 + 32) didSuggestConfiguredActivity:0];
            }
          }
        }

        if ([*(a1 + 32) _shouldSendModeSetUpSuggestionAtEndOfModeToLockScreen:*(a1 + 48) modeGlobals:*(a1 + 56)] && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v16 = __atxlog_handle_modes();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [*(a1 + 48) modeUUID];
            v18 = [*(a1 + 48) activityType];
            *buf = 138543618;
            v38 = v17;
            v39 = 2048;
            v40 = v18;
            _os_log_impl(&dword_1BF549000, v16, OS_LOG_TYPE_DEFAULT, "ATXActivitySuggestionClient: didSuggestSettingUpActivity: %{public}@ (modeType: %lu)", buf, 0x16u);
          }

          v19 = [[ATXActivitySetUpSuggestion alloc] initWithActivity:*(a1 + 48)];
          [v5 activitySuggestionClient:*(a1 + 32) didSuggestSettingUpActivity:v19];
LABEL_41:

          continue;
        }

        if ([*(a1 + 32) _shouldSendModeTriggerSuggestionAtEndOfModeToLockScreen:*(a1 + 48) modeGlobals:*(a1 + 56)] && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v20 = __atxlog_handle_modes();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [*(a1 + 48) modeUUID];
            v22 = [*(a1 + 48) activityType];
            *buf = 138543618;
            v38 = v21;
            v39 = 2048;
            v40 = v22;
            _os_log_impl(&dword_1BF549000, v20, OS_LOG_TYPE_DEFAULT, "ATXActivitySuggestionClient: didSuggestTriggersForConfiguredActivity: %{public}@ (modeType: %lu)", buf, 0x16u);
          }

          v19 = [[ATXActivityTriggerSuggestion alloc] initWithActivity:*(a1 + 48) activitySuggestionClient:*(a1 + 32)];
          [v5 activitySuggestionClient:*(a1 + 32) didSuggestTriggersForConfiguredActivity:v19];
          goto LABEL_41;
        }

        if ([*(a1 + 32) _activityIsEligibleForSetUpSuggestion:*(a1 + 40) modeGlobals:*(a1 + 56)] && (objc_msgSend(*(a1 + 32), "_shouldSendModeSetUpSuggestionAtEndOfModeToLockScreen:modeGlobals:", *(a1 + 40), *(a1 + 56)) & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v23 = __atxlog_handle_modes();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = [*(a1 + 40) modeUUID];
            v25 = [*(a1 + 40) activityType];
            *buf = 138543618;
            v38 = v24;
            v39 = 2048;
            v40 = v25;
            _os_log_impl(&dword_1BF549000, v23, OS_LOG_TYPE_DEFAULT, "ATXActivitySuggestionClient: didSuggestSettingUpActivity: %{public}@ (modeType: %lu)", buf, 0x16u);
          }

          v19 = [[ATXActivitySetUpSuggestion alloc] initWithActivity:*(a1 + 40)];
          [v5 activitySuggestionClient:*(a1 + 32) didSuggestSettingUpActivity:v19];
          goto LABEL_41;
        }

        if ([*(a1 + 32) _activityIsEligibleForTriggerSuggestion:*(a1 + 40) modeGlobals:*(a1 + 56)] && (objc_msgSend(*(a1 + 32), "_shouldSendModeTriggerSuggestionAtEndOfModeToLockScreen:modeGlobals:", *(a1 + 40), *(a1 + 56)) & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v26 = __atxlog_handle_modes();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = [*(a1 + 40) modeUUID];
            v28 = [*(a1 + 40) activityType];
            *buf = 138543618;
            v38 = v27;
            v39 = 2048;
            v40 = v28;
            _os_log_impl(&dword_1BF549000, v26, OS_LOG_TYPE_DEFAULT, "ATXActivitySuggestionClient: didSuggestTriggersForConfiguredActivity: %{public}@ (modeType: %lu)", buf, 0x16u);
          }

          v19 = [[ATXActivityTriggerSuggestion alloc] initWithActivity:*(a1 + 40) activitySuggestionClient:*(a1 + 32)];
          [v5 activitySuggestionClient:*(a1 + 32) didSuggestTriggersForConfiguredActivity:v19];
          goto LABEL_41;
        }

        if ([*(a1 + 32) _activityIsEligibleForSetUpSuggestion:*(a1 + 48) modeGlobals:*(a1 + 56)] && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v29 = __atxlog_handle_modes();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1BF549000, v29, OS_LOG_TYPE_DEFAULT, "ATXActivitySuggestionClient: didSuggestSettingUpActivity: nil", buf, 2u);
          }

          [v5 activitySuggestionClient:*(a1 + 32) didSuggestSettingUpActivity:0];
        }

        else if ([*(a1 + 32) _activityIsEligibleForTriggerSuggestion:*(a1 + 48) modeGlobals:*(a1 + 56)] && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v30 = __atxlog_handle_modes();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1BF549000, v30, OS_LOG_TYPE_DEFAULT, "ATXActivitySuggestionClient: didSuggestTriggersForConfiguredActivity: nil", buf, 2u);
          }

          [v5 activitySuggestionClient:*(a1 + 32) didSuggestTriggersForConfiguredActivity:0];
        }
      }

      v2 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v2);
  }

  objc_sync_exit(v31);
}

- (BOOL)_activityIsEligibleForSetUpSuggestion:(id)suggestion modeGlobals:(id)globals
{
  suggestionCopy = suggestion;
  isSetupSuggestionsForFocusEnabled = [globals isSetupSuggestionsForFocusEnabled];
  v7 = 0;
  if (suggestionCopy && isSetupSuggestionsForFocusEnabled)
  {
    modeUUID = [suggestionCopy modeUUID];

    v7 = modeUUID == 0;
  }

  return v7;
}

- (BOOL)_activityIsEligibleForTriggerSuggestion:(id)suggestion modeGlobals:(id)globals
{
  v22 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  isAutomationTriggerSuggestionsForFocusEnabled = [globals isAutomationTriggerSuggestionsForFocusEnabled];
  LOBYTE(globals) = 0;
  if (suggestionCopy)
  {
    if (isAutomationTriggerSuggestionsForFocusEnabled)
    {
      globals = [suggestionCopy modeUUID];

      if (globals)
      {
        if ([suggestionCopy shouldSuggestTriggers])
        {
          activityType = [suggestionCopy activityType];
          LOBYTE(globals) = 1;
          if (activityType <= 0x11 && ((1 << activityType) & 0x2EF38) != 0)
          {
            triggers = [suggestionCopy triggers];
            v10 = [(ATXActivitySuggestionClient *)self triggersToDNDModeConfigurationTriggers:triggers];

            v19 = 0u;
            v20 = 0u;
            v17 = 0u;
            v18 = 0u;
            v11 = v10;
            v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = *v18;
              while (2)
              {
                for (i = 0; i != v13; ++i)
                {
                  if (*v18 != v14)
                  {
                    objc_enumerationMutation(v11);
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    globals = __atxlog_handle_modes();
                    if (os_log_type_enabled(globals, OS_LOG_TYPE_ERROR))
                    {
                      [ATXActivitySuggestionClient _activityIsEligibleForTriggerSuggestion:suggestionCopy modeGlobals:?];
                    }

                    LOBYTE(globals) = 0;
                    goto LABEL_20;
                  }
                }

                v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
                if (v13)
                {
                  continue;
                }

                break;
              }
            }

            LOBYTE(globals) = 1;
LABEL_20:
          }
        }

        else
        {
          LOBYTE(globals) = 0;
        }
      }
    }
  }

  return globals;
}

- (BOOL)_shouldSendModeSetUpSuggestionAtEndOfModeToLockScreen:(id)screen modeGlobals:(id)globals
{
  screenCopy = screen;
  if (-[ATXActivitySuggestionClient _activityIsEligibleForSetUpSuggestion:modeGlobals:](self, "_activityIsEligibleForSetUpSuggestion:modeGlobals:", screenCopy, globals) && ([screenCopy location] & 2) != 0)
  {
    activityType = [screenCopy activityType];
    v7 = activityType == 4 || activityType == 13;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_shouldSendModeTriggerSuggestionAtEndOfModeToLockScreen:(id)screen modeGlobals:(id)globals
{
  screenCopy = screen;
  if (-[ATXActivitySuggestionClient _activityIsEligibleForTriggerSuggestion:modeGlobals:](self, "_activityIsEligibleForTriggerSuggestion:modeGlobals:", screenCopy, globals) && ([screenCopy location] & 2) != 0)
  {
    activityType = [screenCopy activityType];
    v7 = activityType == 4 || activityType == 13;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_fetchAndCacheLOIs
{
  objc_initWeak(&location, self);
  routineManager = self->_routineManager;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__ATXActivitySuggestionClient__fetchAndCacheLOIs__block_invoke;
  v7[3] = &unk_1E80C3B70;
  objc_copyWeak(&v8, &location);
  [(RTRoutineManager *)routineManager fetchLocationsOfInterestOfType:0 withHandler:v7];
  v4 = self->_routineManager;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__ATXActivitySuggestionClient__fetchAndCacheLOIs__block_invoke_53;
  v5[3] = &unk_1E80C3B70;
  objc_copyWeak(&v6, &location);
  [(RTRoutineManager *)v4 fetchLocationsOfInterestOfType:1 withHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __49__ATXActivitySuggestionClient__fetchAndCacheLOIs__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 firstObject];
  v7 = __atxlog_handle_modes();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "Cached Routine Home LOI", v17, 2u);
    }

    v9 = objc_alloc(MEMORY[0x1E695FBB0]);
    v8 = [v6 location];
    [v8 latitude];
    v11 = v10;
    v12 = [v6 location];
    [v12 longitude];
    v14 = CLLocationCoordinate2DMake(v11, v13);
    v15 = [v9 initWithCenter:@"home" radius:v14.latitude identifier:{v14.longitude, 500.0}];
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setHomeRegion:v15];
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __49__ATXActivitySuggestionClient__fetchAndCacheLOIs__block_invoke_cold_1();
  }
}

void __49__ATXActivitySuggestionClient__fetchAndCacheLOIs__block_invoke_53(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 firstObject];
  v7 = __atxlog_handle_modes();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "Cached Routine Work LOI", v17, 2u);
    }

    v9 = objc_alloc(MEMORY[0x1E695FBB0]);
    v8 = [v6 location];
    [v8 latitude];
    v11 = v10;
    v12 = [v6 location];
    [v12 longitude];
    v14 = CLLocationCoordinate2DMake(v11, v13);
    v15 = [v9 initWithCenter:@"work" radius:v14.latitude identifier:{v14.longitude, 500.0}];
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setWorkRegion:v15];
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __49__ATXActivitySuggestionClient__fetchAndCacheLOIs__block_invoke_53_cold_1();
  }
}

- (id)triggersToDNDModeConfigurationTriggers:(id)triggers
{
  v12[1] = *MEMORY[0x1E69E9840];
  triggersCopy = triggers;
  if (![triggersCopy count])
  {
    v5 = objc_opt_new();
    v12[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    goto LABEL_5;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__ATXActivitySuggestionClient_triggersToDNDModeConfigurationTriggers___block_invoke;
  v10[3] = &unk_1E80C3B98;
  v10[4] = self;
  v5 = [triggersCopy _pas_mappedArrayWithTransform:v10];
  if ([v5 count])
  {
    v6 = v5;
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  v8 = objc_opt_new();
  v11 = v8;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];

LABEL_7:

  return v7;
}

id __70__ATXActivitySuggestionClient_triggersToDNDModeConfigurationTriggers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() DNDModeConfigurationTriggerClassFromATXTrigger:v3];
  if (!v4)
  {
    goto LABEL_18;
  }

  if (![v4 isEqual:objc_opt_class()])
  {
    goto LABEL_8;
  }

  v5 = [v3 namedLOI];
  if (v5)
  {
    if (v5 == 2)
    {
      if (*(*(a1 + 32) + 80))
      {
        v6 = objc_alloc(MEMORY[0x1E699A1F0]);
        v7 = *(*(a1 + 32) + 80);
        goto LABEL_12;
      }

      v10 = __atxlog_handle_modes();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __70__ATXActivitySuggestionClient_triggersToDNDModeConfigurationTriggers___block_invoke_cold_1();
      }

      goto LABEL_17;
    }

    if (v5 == 1)
    {
      if (*(*(a1 + 32) + 72))
      {
        v6 = objc_alloc(MEMORY[0x1E699A1F0]);
        v7 = *(*(a1 + 32) + 72);
LABEL_12:
        v8 = [v6 initWithRegion:v7 detail:0 enabledSetting:2];
        goto LABEL_9;
      }

      v10 = __atxlog_handle_modes();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __70__ATXActivitySuggestionClient_triggersToDNDModeConfigurationTriggers___block_invoke_cold_2();
      }

LABEL_17:

      goto LABEL_18;
    }

LABEL_8:
    v8 = objc_opt_new();
LABEL_9:
    v9 = v8;
    goto LABEL_19;
  }

LABEL_18:
  v9 = 0;
LABEL_19:

  return v9;
}

- (id)DNDModeConfigurationTriggersToATXTriggers:(id)triggers
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73__ATXActivitySuggestionClient_DNDModeConfigurationTriggersToATXTriggers___block_invoke;
  v5[3] = &unk_1E80C3BC0;
  v5[4] = self;
  v3 = [triggers _pas_mappedArrayWithTransform:v5];

  return v3;
}

id __73__ATXActivitySuggestionClient_DNDModeConfigurationTriggersToATXTriggers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![objc_opt_class() ATXTriggerClassFromDNDModeConfigurationTrigger:v3])
  {
    v8 = 0;
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = objc_opt_new();
    goto LABEL_15;
  }

  v4 = [v3 region];
  v5 = *(a1 + 32);
  v6 = *(v5 + 80);
  if (v6)
  {
    [v6 center];
    if ([v4 containsCoordinate:?])
    {
      v7 = 2;
      goto LABEL_12;
    }

    v5 = *(a1 + 32);
  }

  v9 = *(v5 + 72);
  if (!v9 || ([v9 center], !objc_msgSend(v4, "containsCoordinate:")))
  {
    v8 = 0;
    goto LABEL_14;
  }

  v7 = 1;
LABEL_12:
  v10 = objc_alloc(MEMORY[0x1E69C5A90]);
  v11 = [v4 identifier];
  v8 = [v10 initWithLocationIdentifier:v11 namedLOI:v7];

LABEL_14:
LABEL_15:

  return v8;
}

+ (Class)DNDModeConfigurationTriggerClassFromATXTrigger:(id)trigger
{
  triggerCopy = trigger;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (Class)ATXTriggerClassFromDNDModeConfigurationTrigger:(id)trigger
{
  triggerCopy = trigger;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __57__ATXActivitySuggestionClient__setUpPublisherIfNecessary__block_invoke_cold_1(void *a1)
{
  v1 = [a1 error];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_4(&dword_1BF549000, v2, v3, "ATXActivitySuggestionClient: error listening to mode events: %@", v4, v5, v6, v7, v8);
}

void __57__ATXActivitySuggestionClient__setUpPublisherIfNecessary__block_invoke_28_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [a2 eventBody];
  v6 = [v5 absoluteTimestamp];
  [v6 timeIntervalSinceReferenceDate];
  v8 = 134218240;
  v9 = a1;
  v10 = 2048;
  v11 = v7;
  _os_log_debug_impl(&dword_1BF549000, a3, OS_LOG_TYPE_DEBUG, "ATXActivitySuggestionClient %p: mode changed from Biome publisher: %f", &v8, 0x16u);
}

void __117__ATXActivitySuggestionClient__logFeedbackEventForSuggestionUUID_suggestionType_eventType_acceptedTriggers_location___block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = 136315650;
  v5 = "[ATXActivitySuggestionClient _logFeedbackEventForSuggestionUUID:suggestionType:eventType:acceptedTriggers:location:]_block_invoke";
  v6 = 2112;
  v7 = v3;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1BF549000, log, OS_LOG_TYPE_ERROR, "%s: Could not get ATXActivity for suggestionUUID: %@, modeEvent: %@", &v4, 0x20u);
}

- (void)_shouldSendAutomationSuggestionForMode:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "BMUserFocusInferredModeType: %lu not handled in switch statement", &v2, 0xCu);
}

- (void)_activityIsEligibleForTriggerSuggestion:(void *)a1 modeGlobals:.cold.1(void *a1)
{
  [a1 activityType];
  v1 = ATXActivityTypeToString();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_4(&dword_1BF549000, v2, v3, "ATXActivitySuggestionClient: %@ Focus Mode returned eligible to trigger Smart Activation Suggestion", v4, v5, v6, v7, v8);
}

void __49__ATXActivitySuggestionClient__fetchAndCacheLOIs__block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_1BF549000, v0, OS_LOG_TYPE_ERROR, "No Routine Home LOIs: %{public}@", v1, 0xCu);
}

void __49__ATXActivitySuggestionClient__fetchAndCacheLOIs__block_invoke_53_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_1BF549000, v0, OS_LOG_TYPE_ERROR, "No Routine Work LOIs: %{public}@", v1, 0xCu);
}

@end