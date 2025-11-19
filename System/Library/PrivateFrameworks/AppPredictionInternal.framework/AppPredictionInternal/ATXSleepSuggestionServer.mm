@interface ATXSleepSuggestionServer
+ (id)sharedInstance;
- (ATXSleepSuggestionServer)init;
- (ATXSleepSuggestionServer)initWithEvents:(id)a3;
- (BOOL)isSleepScheduleBetweenTheBoundariesWithBedtime:(id)a3 wakeupTime:(id)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)queryEvents;
- (void)predictedSleepSuggestionWithCompletionHandler:(id)a3;
@end

@implementation ATXSleepSuggestionServer

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_5 != -1)
  {
    +[ATXSleepSuggestionServer sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_6;

  return v3;
}

void __42__ATXSleepSuggestionServer_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_6;
  sharedInstance__pasExprOnceResult_6 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXSleepSuggestionServer)init
{
  v8.receiver = self;
  v8.super_class = ATXSleepSuggestionServer;
  v2 = [(ATXSleepSuggestionServer *)&v8 init];
  if (v2)
  {
    v3 = __atxlog_handle_sleep_schedule();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "ATXSleepSuggestionServer: launched", v7, 2u);
    }

    v4 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.proactive.sleepSchedule"];
    listener = v2->_listener;
    v2->_listener = v4;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

- (ATXSleepSuggestionServer)initWithEvents:(id)a3
{
  v5 = a3;
  v6 = [(ATXSleepSuggestionServer *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_events, a3);
  }

  return v7;
}

- (void)predictedSleepSuggestionWithCompletionHandler:(id)a3
{
  v86[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_events)
  {
    v5 = [(ATXSleepSuggestionServer *)self queryEvents];
    events = self->_events;
    self->_events = v5;
  }

  v7 = [MEMORY[0x277CBEA80] currentCalendar];
  v8 = [MEMORY[0x277CBEBB0] defaultTimeZone];
  v73 = v7;
  [v7 setTimeZone:v8];

  v9 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v9 setDateFormat:@"HH:mm"];
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v12 = self->_events;
  if (v12 && [(NSArray *)v12 count])
  {
    v71 = v4;
    v72 = self;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v13 = self->_events;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v74 objects:v84 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v75;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v75 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v74 + 1) + 8 * i);
          v19 = [v18 sleepStartTime];
          v20 = [v9 stringFromDate:v19];
          [v10 addObject:v20];

          v21 = __atxlog_handle_sleep_schedule();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            [(ATXSleepSuggestionServer *)v83 predictedSleepSuggestionWithCompletionHandler:v18];
          }

          v22 = [v18 wakeUpTime];
          v23 = [v9 stringFromDate:v22];
          [v11 addObject:v23];

          v24 = __atxlog_handle_sleep_schedule();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            [(ATXSleepSuggestionServer *)v82 predictedSleepSuggestionWithCompletionHandler:v18];
          }
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v74 objects:v84 count:16];
      }

      while (v15);
    }

    if ([v10 count] >= 3 && objc_msgSend(v11, "count") > 2)
    {
      [v10 sortUsingSelector:sel_compare_];
      [v11 sortUsingSelector:sel_compare_];
      v39 = __atxlog_handle_sleep_schedule();
      v26 = v73;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        [(ATXSleepSuggestionServer *)v10 predictedSleepSuggestionWithCompletionHandler:v39];
      }

      v40 = __atxlog_handle_sleep_schedule();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        [(ATXSleepSuggestionServer *)v11 predictedSleepSuggestionWithCompletionHandler:v40];
      }

      v32 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      v41 = [v11 objectAtIndexedSubscript:{objc_msgSend(v11, "count") >> 1}];
      v42 = [v41 componentsSeparatedByString:@":"];
      v43 = [v42 firstObject];
      [v32 setHour:{objc_msgSend(v43, "integerValue")}];

      v70 = v41;
      v44 = [v41 componentsSeparatedByString:@":"];
      v45 = [v44 lastObject];
      [v32 setMinute:{objc_msgSend(v45, "integerValue")}];

      [v32 setCalendar:v73];
      v46 = [v73 timeZone];
      [v32 setTimeZone:v46];

      v47 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      v48 = [v10 objectAtIndexedSubscript:{objc_msgSend(v10, "count") >> 1}];
      v49 = [v48 componentsSeparatedByString:@":"];
      v50 = [v49 firstObject];
      [v47 setHour:{objc_msgSend(v50, "integerValue")}];

      v51 = [v48 componentsSeparatedByString:@":"];
      v52 = [v51 lastObject];
      [v47 setMinute:{objc_msgSend(v52, "integerValue")}];

      [v47 setCalendar:v73];
      v53 = [v73 timeZone];
      [v47 setTimeZone:v53];

      v54 = __atxlog_handle_sleep_schedule();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        [(ATXSleepSuggestionServer *)v47 predictedSleepSuggestionWithCompletionHandler:v32, v54];
      }

      if ([(ATXSleepSuggestionServer *)v72 isSleepScheduleBetweenTheBoundariesWithBedtime:v47 wakeupTime:v32])
      {
        v67 = [objc_alloc(MEMORY[0x277CEB838]) initWithBedtimeComponents:v47 wakeupComponents:v32 weekdays:127];
        v55 = [objc_alloc(MEMORY[0x277CEB828]) initWithOccurence:v67];
        v56 = objc_alloc(MEMORY[0x277CBEBD0]);
        v57 = [v56 initWithSuiteName:*MEMORY[0x277CEBD00]];
        v68 = v48;
        v58 = 3600 * [v47 hour];
        v59 = [v47 minute];
        [v57 setInteger:v58 + 60 * v59 forKey:*MEMORY[0x277CEBDD8]];
        v71[2](v71, v55, 0);
        v60 = v72->_events;
        v72->_events = 0;

        v4 = v71;
        v61 = v67;
        v48 = v68;
      }

      else
      {
        v62 = __atxlog_handle_sleep_schedule();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          [ATXSleepSuggestionServer predictedSleepSuggestionWithCompletionHandler:];
        }

        v69 = MEMORY[0x277CCA9B8];
        v63 = *MEMORY[0x277CEB288];
        v64 = *MEMORY[0x277CEB290];
        v78 = *MEMORY[0x277CCA068];
        v79 = @"Predicted schedule isn't between the boundaries";
        v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
        v66 = [v69 errorWithDomain:v63 code:v64 userInfo:v65];
        v4 = v71;
        (v71)[2](v71, 0, v66);

        v61 = v72->_events;
        v72->_events = 0;
      }
    }

    else
    {
      v25 = __atxlog_handle_sleep_schedule();
      v4 = v71;
      v26 = v73;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [ATXSleepSuggestionServer predictedSleepSuggestionWithCompletionHandler:];
      }

      v27 = MEMORY[0x277CCA9B8];
      v28 = *MEMORY[0x277CEB288];
      v29 = *MEMORY[0x277CEB280];
      v80 = *MEMORY[0x277CCA068];
      v81 = @"Couldn't find enough events to predict sleep schedule";
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
      v31 = [v27 errorWithDomain:v28 code:v29 userInfo:v30];
      (v71)[2](v71, 0, v31);

      v32 = v72->_events;
      v72->_events = 0;
    }
  }

  else
  {
    v33 = __atxlog_handle_sleep_schedule();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [ATXSleepSuggestionServer predictedSleepSuggestionWithCompletionHandler:];
    }

    v34 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277CEB288];
    v36 = *MEMORY[0x277CEB290];
    v85 = *MEMORY[0x277CCA068];
    v86[0] = @"ATXSleepSuggestionServer: Failed to retrieve sleep events from ATXSleepStream";
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:&v85 count:1];
    v37 = [v34 errorWithDomain:v35 code:v36 userInfo:v32];
    v4[2](v4, 0, v37);

    v26 = v7;
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (id)queryEvents
{
  v2 = objc_alloc_init(MEMORY[0x277CEBCE0]);
  v3 = objc_opt_new();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__ATXSleepSuggestionServer_queryEvents__block_invoke;
  v6[3] = &unk_278598F08;
  v4 = v3;
  v7 = v4;
  [v2 enumerateSleepEventsFromStartDate:0 endDate:0 limit:100000 block:v6];

  return v4;
}

void __39__ATXSleepSuggestionServer_queryEvents__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 duration];
  if (v3 >= 14400.0)
  {
    [v5 duration];
    if (v4 < 72000.0)
    {
      [*(a1 + 32) addObject:v5];
    }
  }
}

- (BOOL)isSleepScheduleBetweenTheBoundariesWithBedtime:(id)a3 wakeupTime:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 hour];
  v8 = [v6 minute];

  v9 = v8 / 60.0 + v7;
  v10 = [v5 hour];
  v11 = [v5 minute];

  v12 = [MEMORY[0x277D41C58] isTime:v9 betweenStartTime:19.9833333 endTime:11.0166667];
  if (v12)
  {
    v13 = MEMORY[0x277D41C58];

    LOBYTE(v12) = [v13 isTime:v11 / 60.0 + v10 betweenStartTime:19.9833333 endTime:11.0166667];
  }

  return v12;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = __atxlog_handle_sleep_schedule();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "ATXSleepSuggestionServer: connection attempted", v12, 2u);
  }

  v7 = [v5 valueForEntitlement:@"com.apple.proactive.sleepSchedule"];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0 && ([v7 BOOLValue] & 1) != 0)
  {
    v8 = ATXSleepSuggestionInterface();
    [v5 setExportedInterface:v8];

    [v5 setExportedObject:self];
    [v5 setInterruptionHandler:&__block_literal_global_54_1];
    [v5 setInvalidationHandler:&__block_literal_global_57];
    [v5 resume];
    v9 = 1;
  }

  else
  {
    v10 = __atxlog_handle_sleep_schedule();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ATXSleepSuggestionServer listener:v5 shouldAcceptNewConnection:v10];
    }

    v9 = 0;
  }

  return v9;
}

void __63__ATXSleepSuggestionServer_listener_shouldAcceptNewConnection___block_invoke()
{
  v0 = __atxlog_handle_sleep_schedule();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __63__ATXSleepSuggestionServer_listener_shouldAcceptNewConnection___block_invoke_cold_1();
  }
}

void __63__ATXSleepSuggestionServer_listener_shouldAcceptNewConnection___block_invoke_55()
{
  v0 = __atxlog_handle_sleep_schedule();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __63__ATXSleepSuggestionServer_listener_shouldAcceptNewConnection___block_invoke_55_cold_1();
  }
}

- (void)predictedSleepSuggestionWithCompletionHandler:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_3_0(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_3_7(&dword_2263AA000, v5, v6, "ATXSleepSuggestionServer: Bedtime counted in the prediction:%@");
}

- (void)predictedSleepSuggestionWithCompletionHandler:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_3_0(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_3_7(&dword_2263AA000, v5, v6, "ATXSleepSuggestionServer: Wakeup time counted in the prediction:%@");
}

- (void)predictedSleepSuggestionWithCompletionHandler:(uint64_t)a1 .cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "Sorted bedtime array:%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)predictedSleepSuggestionWithCompletionHandler:(uint64_t)a1 .cold.4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "Sorted wakeup time array:%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)predictedSleepSuggestionWithCompletionHandler:(NSObject *)a3 .cold.5(void *a1, void *a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = 134218752;
  v8 = [a1 hour];
  v9 = 2048;
  v10 = [a1 minute];
  v11 = 2048;
  v12 = [a2 hour];
  v13 = 2048;
  v14 = [a2 minute];
  _os_log_debug_impl(&dword_2263AA000, a3, OS_LOG_TYPE_DEBUG, "Predicted Bedtime: %ld:%ld, Wakeup: %ld:%ld", &v7, 0x2Au);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)listener:(uint64_t)a1 shouldAcceptNewConnection:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = @"com.apple.proactive.sleepSchedule";
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXSleepSuggestionServer: rejecting connection %@ without entitlement %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end