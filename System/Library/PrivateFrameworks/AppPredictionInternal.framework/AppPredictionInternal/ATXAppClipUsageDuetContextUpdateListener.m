@interface ATXAppClipUsageDuetContextUpdateListener
- (void)startListeningWithCallback:(id)a3 clientId:(id)a4;
- (void)startListeningWithClientId:(id)a3;
@end

@implementation ATXAppClipUsageDuetContextUpdateListener

- (void)startListeningWithCallback:(id)a3 clientId:(id)a4
{
  v8 = a4;
  v6 = _Block_copy(a3);
  appClipUsageHandler = self->_appClipUsageHandler;
  self->_appClipUsageHandler = v6;

  [(ATXAppClipUsageDuetContextUpdateListener *)self startListeningWithClientId:v8];
}

- (void)startListeningWithClientId:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CFE318] userContext];
  objc_initWeak(&location, self);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __71__ATXAppClipUsageDuetContextUpdateListener_startListeningWithClientId___block_invoke;
  v15 = &unk_27859B260;
  objc_copyWeak(&v16, &location);
  v6 = _Block_copy(&v12);
  v7 = [@"com.apple.duetexpertd.ATXAppClipUsageDuetContextUpdateListener" stringByAppendingString:{v4, v12, v13, v14, v15}];
  v8 = MEMORY[0x277CFE360];
  v9 = [MEMORY[0x277CFE338] keyPathForAppClipLaunch];
  v10 = [v8 predicateForChangeAtKeyPath:v9];

  [v10 setEvaluateOnEveryKeyPathUpdate:1];
  v11 = [MEMORY[0x277CFE350] localWakingRegistrationWithIdentifier:v7 contextualPredicate:v10 clientIdentifier:@"com.apple.duetexpertd.app-prediction" callback:v6];
  [v5 registerCallback:v11];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __71__ATXAppClipUsageDuetContextUpdateListener_startListeningWithClientId___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277CFE3C0]];
    v7 = [[ATXAppClipUsageDuetEvent alloc] initWithContextValue:v6];
    if (v7)
    {
      v8 = [WeakRetained appClipUsageHandler];
      (*(v8 + 16))(v8, v7);
    }

    else
    {
      v8 = __atxlog_handle_hero();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __71__ATXAppClipUsageDuetContextUpdateListener_startListeningWithClientId___block_invoke_cold_1(v8);
      }
    }
  }
}

@end