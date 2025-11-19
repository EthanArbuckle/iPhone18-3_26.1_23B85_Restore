@interface ATXModeTimelineManager
- (id)_modeTimelineDataFrom:(id)a3 toDate:(id)a4;
- (id)modeFromStartDate:(id)a3 toEndDate:(id)a4;
@end

@implementation ATXModeTimelineManager

- (id)_modeTimelineDataFrom:(id)a3 toDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v10 = BiomeLibrary();
  v11 = [v10 UserFocus];
  v12 = [v11 InferredMode];
  v13 = [v12 atx_publisherWithStartDate:v7 endDate:v6 maxEvents:0 lastN:0 reversed:0];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __55__ATXModeTimelineManager__modeTimelineDataFrom_toDate___block_invoke_34;
  v18[3] = &unk_27859A798;
  v19 = v9;
  v14 = v9;
  v15 = [v13 sinkWithCompletion:&__block_literal_global_250 shouldContinue:v18];

  v16 = [(ATXModeTimelineManager *)self _formatModeStream:v14];
  [v8 setModeTimeline:v16];

  return v8;
}

void __55__ATXModeTimelineManager__modeTimelineDataFrom_toDate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_modes();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __55__ATXModeTimelineManager__modeTimelineDataFrom_toDate___block_invoke_cold_1(v2, v4);
    }
  }
}

BOOL __55__ATXModeTimelineManager__modeTimelineDataFrom_toDate___block_invoke_34(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) count];
  if (v4 <= 0x186A0)
  {
    v5 = *(a1 + 32);
    v6 = [v3 eventBody];
    [v5 addObject:v6];
  }

  return v4 < 0x186A1;
}

id __44__ATXModeTimelineManager__formatModeStream___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  [v2 modeType];
  BMUserFocusInferredModeTypeToActivity();
  ATXModeFromActivityType();
  v4 = ATXModeToString();
  if ([v4 length])
  {
    v5 = objc_opt_new();
    v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v2, "modeType")}];
    [v5 setObject:v6 forKeyedSubscript:@"mode"];

    [v5 setObject:v4 forKeyedSubscript:@"modeString"];
    v7 = MEMORY[0x277CCABB0];
    v8 = [v2 absoluteTimestamp];
    [v8 timeIntervalSinceReferenceDate];
    v9 = [v7 numberWithDouble:?];
    [v5 setObject:v9 forKeyedSubscript:@"startTimestamp"];

    [v2 origin];
    v10 = BMUserFocusInferredModeOriginToString();
    if (v10)
    {
      [v5 setObject:v10 forKeyedSubscript:@"modeOrigin"];
    }

    [v5 setObject:&stru_2839A6058 forKeyedSubscript:@"contextVector"];
    [v5 setObject:@"contextstored" forKeyedSubscript:@"process"];
  }

  else
  {
    v5 = 0;
  }

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (id)modeFromStartDate:(id)a3 toEndDate:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = __atxlog_handle_modes();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "ATXModeAppUsageManager: request mode timeline", &v19, 2u);
  }

  v9 = [MEMORY[0x277CBEAA8] date];
  v10 = objc_autoreleasePoolPush();
  v11 = v6;
  if (!v6)
  {
    v11 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v12 = v7;
  if (!v7)
  {
    v12 = [MEMORY[0x277CBEAA8] date];
  }

  v13 = [(ATXModeTimelineManager *)self _modeTimelineDataFrom:v11 toDate:v12];
  v14 = [v13 dictionaryRepresentation];

  if (v7)
  {
    if (v6)
    {
      goto LABEL_9;
    }
  }

  else
  {

    if (v6)
    {
      goto LABEL_9;
    }
  }

LABEL_9:
  objc_autoreleasePoolPop(v10);
  v15 = __atxlog_handle_modes();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    [v9 timeIntervalSinceNow];
    v19 = 134217984;
    v20 = -v16;
    _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "ATXModeAppUsageManager: request finished (%lf seconds)", &v19, 0xCu);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

void __55__ATXModeTimelineManager__modeTimelineDataFrom_toDate___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXModeAppUsageManager: Error reading inferred mode stream: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end