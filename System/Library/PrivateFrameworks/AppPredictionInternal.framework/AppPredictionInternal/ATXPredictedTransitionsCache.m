@interface ATXPredictedTransitionsCache
+ (id)ceilingDateToNextHour:(id)a3;
+ (id)getNextTransitionInCache:(id)a3 fromDate:(id)a4;
+ (void)removeEntriesFromCache:(id)a3 beforeDate:(id)a4;
- (ATXPredictedTransitionsCache)initWithLocationManager:(id)a3;
- (BOOL)cacheHeadingFromLoiType:(int64_t)a3 toLoiType:(int64_t)a4 forDate:(id)a5;
- (id)cacheForDestinationLoiType:(int64_t)a3;
- (id)getNextHomeToWorkTransitionsOnActivity:(id)a3;
- (id)getNextWorkToHomeTransitionsOnActivity:(id)a3;
- (void)dump;
- (void)fetchEntriesStartingDate:(id)a3 onActivity:(id)a4;
- (void)prewarmOnActivity:(id)a3;
- (void)pruneStaleEntries;
@end

@implementation ATXPredictedTransitionsCache

- (ATXPredictedTransitionsCache)initWithLocationManager:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = ATXPredictedTransitionsCache;
  v6 = [(ATXPredictedTransitionsCache *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_manager, a3);
    v8 = objc_opt_new();
    homeToWork = v7->_homeToWork;
    v7->_homeToWork = v8;

    v10 = objc_opt_new();
    workToHome = v7->_workToHome;
    v7->_workToHome = v10;
  }

  return v7;
}

- (id)getNextHomeToWorkTransitionsOnActivity:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 now];
  [(ATXPredictedTransitionsCache *)self fetchEntriesStartingDate:v6 onActivity:v5];

  LOBYTE(v6) = [v5 shouldDefer];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = objc_opt_class();
    homeToWork = self->_homeToWork;
    v10 = [MEMORY[0x277CBEAA8] now];
    v7 = [v8 getNextTransitionInCache:homeToWork fromDate:v10];
  }

  return v7;
}

- (id)getNextWorkToHomeTransitionsOnActivity:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 now];
  [(ATXPredictedTransitionsCache *)self fetchEntriesStartingDate:v6 onActivity:v5];

  LOBYTE(v6) = [v5 shouldDefer];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = objc_opt_class();
    workToHome = self->_workToHome;
    v10 = [MEMORY[0x277CBEAA8] now];
    v7 = [v8 getNextTransitionInCache:workToHome fromDate:v10];
  }

  return v7;
}

+ (id)ceilingDateToNextHour:(id)a3
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [v5 components:60 fromDate:v4];

  v7 = [v5 dateFromComponents:v6];
  v8 = [v7 dateByAddingTimeInterval:3600.0];

  return v8;
}

+ (id)getNextTransitionInCache:(id)a3 fromDate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() ceilingDateToNextHour:v5];

  v8 = [v6 objectForKeyedSubscript:v7];

  return v8;
}

- (void)prewarmOnActivity:(id)a3
{
  v4 = a3;
  [(ATXPredictedTransitionsCache *)self dump];
  v5 = [MEMORY[0x277CBEAA8] now];
  [(ATXPredictedTransitionsCache *)self fetchEntriesStartingDate:v5 onActivity:v4];
}

- (void)fetchEntriesStartingDate:(id)a3 onActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(ATXPredictedTransitionsCache *)self pruneStaleEntries];
  v8 = +[_ATXGlobals sharedInstance];
  v9 = [v8 transitionLookaheadMinSeconds];

  v10 = [v6 dateByAddingTimeInterval:v9];
  v11 = [objc_opt_class() ceilingDateToNextHour:v10];
  v12 = +[_ATXGlobals sharedInstance];
  v13 = [v12 transitionLookaheadMaxSeconds];

  v14 = [v6 dateByAddingTimeInterval:v13];
  v15 = __atxlog_handle_dailyroutines();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [ATXPredictedTransitionsCache fetchEntriesStartingDate:onActivity:];
  }

  [v11 timeIntervalSinceReferenceDate];
  v17 = v16;
  [v14 timeIntervalSinceReferenceDate];
  if (v17 >= v18)
  {
LABEL_17:
    v20 = v11;
LABEL_18:
    [(ATXPredictedTransitionsCache *)self dump];
    v11 = v20;
  }

  else
  {
    while (1)
    {
      v19 = objc_autoreleasePoolPush();
      if ([v7 shouldDefer])
      {
        break;
      }

      if (![(ATXPredictedTransitionsCache *)self cacheHeadingFromLoiType:1 toLoiType:0 forDate:v11])
      {
        v25 = __atxlog_handle_dailyroutines();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
LABEL_15:
          [ATXPredictedTransitionsCache fetchEntriesStartingDate:onActivity:];
        }

LABEL_16:

        objc_autoreleasePoolPop(v19);
        goto LABEL_17;
      }

      if (![(ATXPredictedTransitionsCache *)self cacheHeadingFromLoiType:0 toLoiType:1 forDate:v11])
      {
        v25 = __atxlog_handle_dailyroutines();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_15;
        }

        goto LABEL_16;
      }

      v20 = [v11 dateByAddingTimeInterval:3600.0];

      objc_autoreleasePoolPop(v19);
      [v20 timeIntervalSinceReferenceDate];
      v22 = v21;
      [v14 timeIntervalSinceReferenceDate];
      v11 = v20;
      if (v22 >= v23)
      {
        goto LABEL_18;
      }
    }

    v24 = __atxlog_handle_dailyroutines();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      _os_log_impl(&dword_2263AA000, v24, OS_LOG_TYPE_DEFAULT, "Abandoning cache update early since we were asked to defer", v26, 2u);
    }

    objc_autoreleasePoolPop(v19);
  }
}

- (BOOL)cacheHeadingFromLoiType:(int64_t)a3 toLoiType:(int64_t)a4 forDate:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = __atxlog_handle_dailyroutines();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [ATXPredictedTransitionsCache cacheHeadingFromLoiType:toLoiType:forDate:];
  }

  v10 = [MEMORY[0x277D41BF8] stringForLOIType:a3];
  v11 = [MEMORY[0x277D41BF8] stringForLOIType:a4];
  v12 = [(ATXPredictedTransitionsCache *)self cacheForDestinationLoiType:a4];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 objectForKeyedSubscript:v8];

    if (v14)
    {
      v15 = __atxlog_handle_dailyroutines();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [ATXPredictedTransitionsCache cacheHeadingFromLoiType:toLoiType:forDate:];
      }

      v16 = 1;
      goto LABEL_38;
    }

    v17 = [(ATXPredictedLocationsManagerProtocol *)self->_manager getPredictedLocationsOfInterestFromLOIName:v10 startDate:v8];
    v15 = v17;
    if (v17)
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v19)
      {
        v20 = v19;
        v32 = v11;
        v21 = *v34;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v34 != v21)
            {
              objc_enumerationMutation(v18);
            }

            if ([*(*(&v33 + 1) + 8 * i) type] == a4)
            {
              v24 = __atxlog_handle_dailyroutines();
              v11 = v32;
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
              {
                [ATXPredictedTransitionsCache cacheHeadingFromLoiType:toLoiType:forDate:];
              }

              v23 = 1;
              goto LABEL_25;
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }

        v23 = 0;
        v11 = v32;
      }

      else
      {
        v23 = 0;
      }

LABEL_25:

      v25 = objc_opt_new();
      if (!v23)
      {
        v28 = __atxlog_handle_dailyroutines();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          [ATXPredictedTransitionsCache cacheHeadingFromLoiType:toLoiType:forDate:];
        }

        v27 = v25;
        goto LABEL_32;
      }

      v26 = [(ATXPredictedLocationsManagerProtocol *)self->_manager getPredictedExitTimesFromLOIName:v10 startDate:v8];
      if (v26)
      {
        v27 = v26;

        v28 = __atxlog_handle_dailyroutines();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          [ATXPredictedTransitionsCache cacheHeadingFromLoiType:toLoiType:forDate:];
        }

LABEL_32:

        [v13 setObject:v27 forKeyedSubscript:v8];
        v16 = 1;
        v25 = v27;
LABEL_37:

LABEL_38:
        goto LABEL_39;
      }

      v29 = __atxlog_handle_dailyroutines();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        [ATXPredictedTransitionsCache cacheHeadingFromLoiType:toLoiType:forDate:];
      }
    }

    else
    {
      v25 = __atxlog_handle_dailyroutines();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [ATXPredictedTransitionsCache cacheHeadingFromLoiType:toLoiType:forDate:];
      }
    }

    v16 = 0;
    goto LABEL_37;
  }

  v16 = 0;
LABEL_39:

  v30 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)cacheForDestinationLoiType:(int64_t)a3
{
  if (a3 == 1)
  {
    homeToWork = self->_homeToWork;
    goto LABEL_5;
  }

  if (!a3)
  {
    homeToWork = self->_workToHome;
LABEL_5:
    v4 = homeToWork;
    goto LABEL_9;
  }

  v5 = __atxlog_handle_dailyroutines();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [ATXPredictedTransitionsCache cacheForDestinationLoiType:];
  }

  v4 = 0;
LABEL_9:

  return v4;
}

- (void)dump
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 24);
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)pruneStaleEntries
{
  v3 = objc_opt_class();
  homeToWork = self->_homeToWork;
  v5 = [MEMORY[0x277CBEAA8] now];
  [v3 removeEntriesFromCache:homeToWork beforeDate:v5];

  v6 = objc_opt_class();
  workToHome = self->_workToHome;
  v8 = [MEMORY[0x277CBEAA8] now];
  [v6 removeEntriesFromCache:workToHome beforeDate:v8];
}

+ (void)removeEntriesFromCache:(id)a3 beforeDate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 allKeys];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__ATXPredictedTransitionsCache_removeEntriesFromCache_beforeDate___block_invoke;
  v11[3] = &unk_278597FA8;
  v12 = v5;
  v8 = v5;
  v9 = [v7 _pas_filteredArrayWithTest:v11];

  v10 = __atxlog_handle_dailyroutines();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    +[ATXPredictedTransitionsCache removeEntriesFromCache:beforeDate:];
  }

  [v6 removeObjectsForKeys:v9];
}

BOOL __66__ATXPredictedTransitionsCache_removeEntriesFromCache_beforeDate___block_invoke(uint64_t a1, void *a2)
{
  [a2 timeIntervalSinceReferenceDate];
  v4 = v3;
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  return v4 < v5;
}

- (void)fetchEntriesStartingDate:onActivity:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1(&dword_2263AA000, v0, v1, "Fetching entries from %@ to %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)fetchEntriesStartingDate:onActivity:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)cacheHeadingFromLoiType:toLoiType:forDate:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)cacheHeadingFromLoiType:toLoiType:forDate:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)cacheHeadingFromLoiType:toLoiType:forDate:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)cacheHeadingFromLoiType:toLoiType:forDate:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)cacheHeadingFromLoiType:toLoiType:forDate:.cold.5()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1(&dword_2263AA000, v0, v1, "Caching transition to %@ for time: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)cacheHeadingFromLoiType:toLoiType:forDate:.cold.6()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)cacheHeadingFromLoiType:toLoiType:forDate:.cold.7()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)cacheForDestinationLoiType:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_2263AA000, v0, OS_LOG_TYPE_FAULT, "Asked to cache for unsupported loi type %ld", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)removeEntriesFromCache:beforeDate:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end