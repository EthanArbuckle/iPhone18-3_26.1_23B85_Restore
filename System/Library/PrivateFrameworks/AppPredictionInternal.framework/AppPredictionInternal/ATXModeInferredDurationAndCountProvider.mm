@interface ATXModeInferredDurationAndCountProvider
- (ATXModeInferredDurationAndCountProvider)initWithLastNDays:(unint64_t)days;
- (double)modeInferredDurationInLast1DayForMode:(unint64_t)mode;
- (double)modeInferredDurationInLastNDaysForMode:(unint64_t)mode;
- (unint64_t)modeInferredCountInLast1DayForMode:(unint64_t)mode;
- (unint64_t)modeInferredCountInLastNDaysForMode:(unint64_t)mode;
- (void)cacheInferredModeStreamIfNecessary;
@end

@implementation ATXModeInferredDurationAndCountProvider

- (ATXModeInferredDurationAndCountProvider)initWithLastNDays:(unint64_t)days
{
  v8.receiver = self;
  v8.super_class = ATXModeInferredDurationAndCountProvider;
  v4 = [(ATXModeInferredDurationAndCountProvider *)&v8 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:(-86400 * days)];
    thresholdDateLastNDays = v4->_thresholdDateLastNDays;
    v4->_thresholdDateLastNDays = v5;
  }

  return v4;
}

- (void)cacheInferredModeStreamIfNecessary
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*self + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXModeInferredDurationAndCountProvider: Could not fetch inferred mode stream with error: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __77__ATXModeInferredDurationAndCountProvider_cacheInferredModeStreamIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v6 = *(*(*(a1 + 72) + 8) + 40);
    if (v6)
    {
      if ([v6 isStart])
      {
        if (*(*(*(a1 + 80) + 8) + 40))
        {
          [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
          v8 = v7 - *(*(*(a1 + 88) + 8) + 24);
          v9 = MEMORY[0x277CCABB0];
          v10 = [*(a1 + 32) objectForKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];
          [v10 doubleValue];
          v12 = [v9 numberWithDouble:v8 + v11];
          [*(a1 + 32) setObject:v12 forKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];

          v13 = MEMORY[0x277CCABB0];
          v14 = [*(a1 + 40) objectForKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];
          v15 = [v13 numberWithInt:{objc_msgSend(v14, "intValue") + 1}];
          [*(a1 + 40) setObject:v15 forKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];

          v16 = [*(*(*(a1 + 72) + 8) + 40) absoluteTimestamp];
          [v16 timeIntervalSinceReferenceDate];
          v18 = v17;
          v19 = *(a1 + 96);

          if (v18 > v19)
          {
            v20 = [*(*(*(a1 + 72) + 8) + 40) absoluteTimestamp];
            [v20 timeIntervalSinceReferenceDate];
            v22 = v21 - *(a1 + 96);

            v23 = MEMORY[0x277CCABB0];
            v24 = [*(a1 + 48) objectForKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];
            [v24 doubleValue];
            if (v8 >= v22)
            {
              v26 = v22;
            }

            else
            {
              v26 = v8;
            }

            v27 = [v23 numberWithDouble:v26 + v25];
            [*(a1 + 48) setObject:v27 forKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];

            v28 = MEMORY[0x277CCABB0];
            v30 = [*(a1 + 56) objectForKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];
            v29 = [v28 numberWithInt:{objc_msgSend(v30, "intValue") + 1}];
            [*(a1 + 56) setObject:v29 forKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];
          }
        }
      }
    }
  }
}

void __77__ATXModeInferredDurationAndCountProvider_cacheInferredModeStreamIfNecessary__block_invoke_2(uint64_t a1, void *a2)
{
  v33 = a2;
  v3 = [v33 eventBody];
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), v3);
  if ([v3 modeType] == 2)
  {
    v4 = *(*(a1 + 72) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
    goto LABEL_15;
  }

  [v3 modeType];
  BMUserFocusInferredModeTypeToActivity();
  v5 = ATXActivityTypeToString();
  if (*(*(*(a1 + 72) + 8) + 40))
  {
    [v33 timestamp];
    v7 = v6;
    v8 = *(*(*(a1 + 80) + 8) + 24);
    v9 = [*(*(*(a1 + 72) + 8) + 40) isEqualToString:v5];
    v10 = [v3 isStart];
    if (v9)
    {
      if ((v10 & 1) == 0)
      {
        v11 = v7 - v8;
        v12 = MEMORY[0x277CCABB0];
        v13 = [*(a1 + 32) objectForKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];
        [v13 doubleValue];
        v15 = [v12 numberWithDouble:v11 + v14];
        [*(a1 + 32) setObject:v15 forKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];

        v16 = MEMORY[0x277CCABB0];
        v17 = [*(a1 + 40) objectForKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];
        v18 = [v16 numberWithInt:{objc_msgSend(v17, "intValue") + 1}];
        [*(a1 + 40) setObject:v18 forKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];

        [v33 timestamp];
        if (v19 > *(a1 + 88))
        {
          [v33 timestamp];
          v21 = v20 - *(a1 + 88);
          v22 = MEMORY[0x277CCABB0];
          v23 = [*(a1 + 48) objectForKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];
          [v23 doubleValue];
          if (v11 >= v21)
          {
            v25 = v21;
          }

          else
          {
            v25 = v11;
          }

          v26 = [v22 numberWithDouble:v25 + v24];
          [*(a1 + 48) setObject:v26 forKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];

          v27 = MEMORY[0x277CCABB0];
          v28 = [*(a1 + 56) objectForKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];
          v29 = [v27 numberWithInt:{objc_msgSend(v28, "intValue") + 1}];
          [*(a1 + 56) setObject:v29 forKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];
        }

        v30 = *(*(a1 + 72) + 8);
        v31 = *(v30 + 40);
        *(v30 + 40) = 0;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v10 = [v3 isStart];
  }

  if (v10)
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v5);
    [v33 timestamp];
    *(*(*(a1 + 80) + 8) + 24) = v32;
  }

LABEL_15:
}

- (double)modeInferredDurationInLastNDaysForMode:(unint64_t)mode
{
  [(ATXModeInferredDurationAndCountProvider *)self cacheInferredModeStreamIfNecessary];
  v4 = ATXModeToString();
  v5 = [(NSDictionary *)self->_inferredModeDurationSumLastNDays objectForKeyedSubscript:v4];
  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (double)modeInferredDurationInLast1DayForMode:(unint64_t)mode
{
  [(ATXModeInferredDurationAndCountProvider *)self cacheInferredModeStreamIfNecessary];
  v4 = ATXModeToString();
  v5 = [(NSDictionary *)self->_inferredModeDurationSumLast1Day objectForKeyedSubscript:v4];
  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (unint64_t)modeInferredCountInLastNDaysForMode:(unint64_t)mode
{
  [(ATXModeInferredDurationAndCountProvider *)self cacheInferredModeStreamIfNecessary];
  v4 = ATXModeToString();
  v5 = [(NSDictionary *)self->_inferredModeCounterLastNDays objectForKeyedSubscript:v4];
  intValue = [v5 intValue];

  return intValue;
}

- (unint64_t)modeInferredCountInLast1DayForMode:(unint64_t)mode
{
  [(ATXModeInferredDurationAndCountProvider *)self cacheInferredModeStreamIfNecessary];
  v4 = ATXModeToString();
  v5 = [(NSDictionary *)self->_inferredModeCounterLast1Day objectForKeyedSubscript:v4];
  intValue = [v5 intValue];

  return intValue;
}

@end