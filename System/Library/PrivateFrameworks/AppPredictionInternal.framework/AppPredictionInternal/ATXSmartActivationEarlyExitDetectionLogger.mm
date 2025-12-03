@interface ATXSmartActivationEarlyExitDetectionLogger
+ (id)sharedInstance;
- (ATXSmartActivationEarlyExitDetectionLogger)init;
- (BOOL)_logEventIfEarlyExit:(id)exit;
- (void)_processNewUserFocusComputedModeEvent:(id)event;
- (void)_registerForModeChangeNotifications;
- (void)stopListening;
@end

@implementation ATXSmartActivationEarlyExitDetectionLogger

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_24 != -1)
  {
    +[ATXSmartActivationEarlyExitDetectionLogger sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_29;

  return v3;
}

void __60__ATXSmartActivationEarlyExitDetectionLogger_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_29;
  sharedInstance__pasExprOnceResult_29 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXSmartActivationEarlyExitDetectionLogger)init
{
  v5.receiver = self;
  v5.super_class = ATXSmartActivationEarlyExitDetectionLogger;
  v2 = [(ATXSmartActivationEarlyExitDetectionLogger *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ATXSmartActivationEarlyExitDetectionLogger *)v2 _registerForModeChangeNotifications];
  }

  return v3;
}

- (void)_registerForModeChangeNotifications
{
  if (!self->_queue)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.SmartActivationEarlyExitDetection.queue", v3);
    queue = self->_queue;
    self->_queue = v4;
  }

  v6 = __atxlog_handle_modes();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "ATXSmartActivationEarlyExitDetectionLogger: registering for real time mode change events", buf, 2u);
  }

  v7 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:@"FocusModes.SmartActivationEarlyExitDetection" targetQueue:self->_queue];
  scheduler = self->_scheduler;
  self->_scheduler = v7;

  objc_initWeak(buf, self);
  v9 = BiomeLibrary();
  userFocus = [v9 UserFocus];
  computedMode = [userFocus ComputedMode];
  atx_DSLPublisher = [computedMode atx_DSLPublisher];
  v13 = [atx_DSLPublisher subscribeOn:self->_scheduler];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __81__ATXSmartActivationEarlyExitDetectionLogger__registerForModeChangeNotifications__block_invoke_19;
  v16[3] = &unk_2785977D8;
  objc_copyWeak(&v17, buf);
  v14 = [v13 sinkWithCompletion:&__block_literal_global_18_0 receiveInput:v16];
  sink = self->_sink;
  self->_sink = v14;

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

void __81__ATXSmartActivationEarlyExitDetectionLogger__registerForModeChangeNotifications__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 state];
  v4 = __atxlog_handle_modes();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __81__ATXSmartActivationEarlyExitDetectionLogger__registerForModeChangeNotifications__block_invoke_cold_1(v2, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "ATXSmartActivationEarlyExitDetectionLogger: done listening to mode change events", v6, 2u);
  }
}

void __81__ATXSmartActivationEarlyExitDetectionLogger__registerForModeChangeNotifications__block_invoke_19(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = __atxlog_handle_modes();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 eventBody];
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "ATXSmartActivationEarlyExitDetectionLogger: processing new userFocusComputedModeEvent: %{public}@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _processNewUserFocusComputedModeEvent:v3];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_processNewUserFocusComputedModeEvent:(id)event
{
  eventCopy = event;
  eventBody = [eventCopy eventBody];

  if (eventBody)
  {
    eventBody2 = [eventCopy eventBody];
    [(ATXSmartActivationEarlyExitDetectionLogger *)self _logEventIfEarlyExit:eventBody2];
  }
}

- (BOOL)_logEventIfEarlyExit:(id)exit
{
  v24 = *MEMORY[0x277D85DE8];
  exitCopy = exit;
  if (([exitCopy starting] & 1) != 0 || objc_msgSend(exitCopy, "updateReason") != 1)
  {
    LOBYTE(modeIdentifier) = 0;
  }

  else
  {
    currentMode = [MEMORY[0x277D41C68] currentMode];
    modeIdentifier = [currentMode modeIdentifier];

    if (modeIdentifier)
    {
      modeIdentifier2 = [currentMode modeIdentifier];
      mode = [exitCopy mode];
      v8 = [modeIdentifier2 isEqualToString:mode];

      if (v8)
      {
        modeIdentifier = [objc_alloc(MEMORY[0x277CEB308]) initWithBiomeInferredModeEvent:currentMode];
        v9 = objc_alloc(MEMORY[0x277CEB320]);
        v10 = [MEMORY[0x277CBEAA8] now];
        v11 = [v9 initWithEventDate:v10 activity:modeIdentifier acceptedTriggers:MEMORY[0x277CBEBF8] eventType:5 suggestionType:1 location:2];

        v12 = __atxlog_handle_modes();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          modeIdentifier3 = [currentMode modeIdentifier];
          v18 = 138543874;
          v19 = modeIdentifier3;
          v20 = 2048;
          modeType = [currentMode modeType];
          v22 = 2112;
          v23 = v11;
          _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "ATXSmartActivationEarlyExitDetectionLogger: Early exit detected for modeUUID: %{public}@, type:%ld. Sending feedback event to Biome: %@", &v18, 0x20u);
        }

        v14 = objc_opt_new();
        source = [v14 source];
        [source sendEvent:v11];

        LOBYTE(modeIdentifier) = 1;
      }

      else
      {
        LOBYTE(modeIdentifier) = 0;
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return modeIdentifier;
}

- (void)stopListening
{
  [(BPSSink *)self->_sink cancel];
  sink = self->_sink;
  self->_sink = 0;

  scheduler = self->_scheduler;
  self->_scheduler = 0;
}

void __81__ATXSmartActivationEarlyExitDetectionLogger__registerForModeChangeNotifications__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXSmartActivationEarlyExitDetectionLogger: error listening to mode change events: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end