@interface ATXScreenUnlockUpdateSource
- (ATXScreenUnlockUpdateSource)init;
- (ATXScreenUnlockUpdateSource)initWithContextHelper:(id)a3 predictionContextBuilder:(id)a4;
- (ATXUpdatePredictionsDelegate)delegate;
- (void)_handleScreenUnlockEvent;
- (void)_listenForScreenUnlock;
@end

@implementation ATXScreenUnlockUpdateSource

- (ATXScreenUnlockUpdateSource)init
{
  v3 = objc_opt_new();
  v4 = +[ATXPredictionContextBuilder sharedInstance];
  v5 = [(ATXScreenUnlockUpdateSource *)self initWithContextHelper:v3 predictionContextBuilder:v4];

  return v5;
}

- (ATXScreenUnlockUpdateSource)initWithContextHelper:(id)a3 predictionContextBuilder:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ATXScreenUnlockUpdateSource;
  v9 = [(ATXScreenUnlockUpdateSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contextHelper, a3);
    objc_storeStrong(&v10->_predictionContextBuilder, a4);
  }

  [(ATXScreenUnlockUpdateSource *)v10 _listenForScreenUnlock];

  return v10;
}

- (void)_listenForScreenUnlock
{
  objc_initWeak(&location, self);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __53__ATXScreenUnlockUpdateSource__listenForScreenUnlock__block_invoke;
  v11 = &unk_27859B260;
  objc_copyWeak(&v12, &location);
  v3 = _Block_copy(&v8);
  v4 = [MEMORY[0x277CFE338] keyPathForDeviceLockStatus];
  v5 = [MEMORY[0x277CFE360] predicateForKeyPath:v4 equalToValue:&unk_283A57230];
  v6 = [MEMORY[0x277CFE350] localWakingRegistrationWithIdentifier:@"com.apple.duetexpertd.ATXScreenUnlockUpdateSource" contextualPredicate:v5 clientIdentifier:@"com.apple.duetexpertd.cdidentifier" callback:v3];
  v7 = [(ATXCoreDuetContextHelper *)self->_contextHelper context];
  [v7 registerCallback:v6];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __53__ATXScreenUnlockUpdateSource__listenForScreenUnlock__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _handleScreenUnlockEvent];
    WeakRetained = v2;
  }
}

- (void)_handleScreenUnlockEvent
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v9 = 138412546;
    v10 = v5;
    v11 = 2080;
    v12 = "[ATXScreenUnlockUpdateSource _handleScreenUnlockEvent]";
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "%@ - %s: got screen unlock event", &v9, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tryUpdatePredictionsDefaultIntervalWithReason:7];

  v7 = [(ATXPredictionContextBuilderProtocol *)self->_predictionContextBuilder updateContextStreamAndReturnPredictionContextForCurrentContext];
  v8 = *MEMORY[0x277D85DE8];
}

- (ATXUpdatePredictionsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end