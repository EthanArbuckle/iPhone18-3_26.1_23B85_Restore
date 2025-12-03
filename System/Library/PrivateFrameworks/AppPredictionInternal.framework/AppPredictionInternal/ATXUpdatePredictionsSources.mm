@interface ATXUpdatePredictionsSources
- (ATXUpdatePredictionsSources)init;
- (ATXUpdatePredictionsSources)initWithUpdateSources:(id)sources rateLimiter:(id)limiter;
- (void)forceUpdatePredictionsImmediatelyWithReason:(unint64_t)reason;
- (void)tryUpdatePredictionsDefaultIntervalWithReason:(unint64_t)reason;
- (void)tryUpdatePredictionsImmediatelyWithReason:(unint64_t)reason;
@end

@implementation ATXUpdatePredictionsSources

- (ATXUpdatePredictionsSources)init
{
  v12[4] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12[0] = v3;
  v4 = objc_opt_new();
  v12[1] = v4;
  v5 = objc_opt_new();
  v12[2] = v5;
  v6 = objc_opt_new();
  v12[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];

  v8 = [[ATXTimeBucketedRateLimiter alloc] initWithMaxCount:2 perPeriod:27000.0];
  v9 = [(ATXUpdatePredictionsSources *)self initWithUpdateSources:v7 rateLimiter:v8];

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (ATXUpdatePredictionsSources)initWithUpdateSources:(id)sources rateLimiter:(id)limiter
{
  v24 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  limiterCopy = limiter;
  v22.receiver = self;
  v22.super_class = ATXUpdatePredictionsSources;
  v9 = [(ATXUpdatePredictionsSources *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_updateSources, sources);
    objc_storeStrong(&v10->_rateLimiter, limiter);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = sourcesCopy;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v18 + 1) + 8 * v15++) setDelegate:{v10, v18}];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)tryUpdatePredictionsDefaultIntervalWithReason:(unint64_t)reason
{
  v21 = *MEMORY[0x277D85DE8];
  tryToIncrementCountAndReturnSuccess = [(ATXTimeBucketedRateLimiter *)self->_rateLimiter tryToIncrementCountAndReturnSuccess];
  v6 = __atxlog_handle_default();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (tryToIncrementCountAndReturnSuccess)
  {
    if (v7)
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [ATXUpdatePredictionsReasons stringForUpdatePredictionsReason:reason];
      v15 = 138412802;
      v16 = v9;
      v17 = 2080;
      v18 = "[ATXUpdatePredictionsSources tryUpdatePredictionsDefaultIntervalWithReason:]";
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "%@ - %s: prediction update with reason: %@ successful", &v15, 0x20u);
    }

    [(ATXUpdatePredictionsSources *)self forwardUpdatePredictionsDefaultIntervalWithReason:reason];
  }

  else
  {
    if (v7)
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = [ATXUpdatePredictionsReasons stringForUpdatePredictionsReason:reason];
      v15 = 138412802;
      v16 = v12;
      v17 = 2080;
      v18 = "[ATXUpdatePredictionsSources tryUpdatePredictionsDefaultIntervalWithReason:]";
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "%@ - %s: prediction update with reason: %@ rate limited", &v15, 0x20u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)tryUpdatePredictionsImmediatelyWithReason:(unint64_t)reason
{
  v21 = *MEMORY[0x277D85DE8];
  tryToIncrementCountAndReturnSuccess = [(ATXTimeBucketedRateLimiter *)self->_rateLimiter tryToIncrementCountAndReturnSuccess];
  v6 = __atxlog_handle_default();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (tryToIncrementCountAndReturnSuccess)
  {
    if (v7)
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [ATXUpdatePredictionsReasons stringForUpdatePredictionsReason:reason];
      v15 = 138412802;
      v16 = v9;
      v17 = 2080;
      v18 = "[ATXUpdatePredictionsSources tryUpdatePredictionsImmediatelyWithReason:]";
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "%@ - %s: prediction update with reason: %@ successful", &v15, 0x20u);
    }

    [(ATXUpdatePredictionsSources *)self forwardUpdatePredictionsImmediatelyWithReason:reason];
  }

  else
  {
    if (v7)
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = [ATXUpdatePredictionsReasons stringForUpdatePredictionsReason:reason];
      v15 = 138412802;
      v16 = v12;
      v17 = 2080;
      v18 = "[ATXUpdatePredictionsSources tryUpdatePredictionsImmediatelyWithReason:]";
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "%@ - %s: prediction update with reason: %@ rate limited", &v15, 0x20u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)forceUpdatePredictionsImmediatelyWithReason:(unint64_t)reason
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = __atxlog_handle_default();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [ATXUpdatePredictionsReasons stringForUpdatePredictionsReason:reason];
    v10 = 138412802;
    v11 = v7;
    v12 = 2080;
    v13 = "[ATXUpdatePredictionsSources forceUpdatePredictionsImmediatelyWithReason:]";
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_INFO, "%@ - %s: forced prediction update with reason: %@", &v10, 0x20u);
  }

  [(ATXUpdatePredictionsSources *)self forwardUpdatePredictionsImmediatelyWithReason:reason];
  [(ATXTimeBucketedRateLimiter *)self->_rateLimiter tryToIncrementCountAndReturnSuccess];
  v9 = *MEMORY[0x277D85DE8];
}

@end