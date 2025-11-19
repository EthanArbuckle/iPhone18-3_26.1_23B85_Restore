@interface ATXNotificationAdjacentSuggestionMetricsLogger
- (ATXNotificationAdjacentSuggestionMetricsLogger)init;
- (ATXNotificationAdjacentSuggestionMetricsLogger)initWithDatastore:(id)a3;
- (void)logNotificationAdjacentSuggestionMetricsWithXPCActivity:(id)a3;
@end

@implementation ATXNotificationAdjacentSuggestionMetricsLogger

- (ATXNotificationAdjacentSuggestionMetricsLogger)init
{
  v3 = objc_opt_new();
  v4 = [(ATXNotificationAdjacentSuggestionMetricsLogger *)self initWithDatastore:v3];

  return v4;
}

- (ATXNotificationAdjacentSuggestionMetricsLogger)initWithDatastore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXNotificationAdjacentSuggestionMetricsLogger;
  v6 = [(ATXNotificationAdjacentSuggestionMetricsLogger *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_datastore, a3);
  }

  return v7;
}

- (void)logNotificationAdjacentSuggestionMetricsWithXPCActivity:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138412290;
    v51 = v7;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_INFO, "%@ - Updating the database", buf, 0xCu);
  }

  [(ATXNotificationAndSuggestionDatastore *)self->_datastore updateDatabase];
  if ([v4 didDefer])
  {
    v8 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138412290;
      v51 = v10;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_INFO, "%@ - XPC deferred, terminating.", buf, 0xCu);
    }
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277CBEBD0]);
    v8 = [v11 initWithSuiteName:*MEMORY[0x277CEBD00]];
    [v8 doubleForKey:@"suggestionsMetricsTimestamp"];
    v13 = v12;
    v14 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138412546;
      v51 = v16;
      v52 = 2048;
      v53 = v13;
      _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_INFO, "%@ - Fetching metrics objects with previous timestamp %f", buf, 0x16u);
    }

    v17 = [(ATXNotificationAndSuggestionDatastore *)self->_datastore metricsForSuggestionsSinceCompletionTimestamp:v13];
    v18 = [v4 didDefer];
    v19 = __atxlog_handle_metrics();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
    if (v18)
    {
      if (v20)
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        *buf = 138412290;
        v51 = v22;
        _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_INFO, "%@ - XPC deferred, terminating.", buf, 0xCu);
      }
    }

    else
    {
      if (v20)
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        *buf = 138412290;
        v51 = v24;
        _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_INFO, "%@ - logging fetched metrics", buf, 0xCu);
      }

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v45 = v17;
      v25 = v17;
      v26 = [v25 countByEnumeratingWithState:&v46 objects:v58 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = 0.0;
        v29 = *v47;
        while (2)
        {
          v30 = 0;
          v31 = (*&v28)++;
          *&v44 = v31 + v27;
          do
          {
            if (*v47 != v29)
            {
              objc_enumerationMutation(v25);
            }

            v32 = *(*(&v46 + 1) + 8 * v30);
            v33 = objc_autoreleasePoolPush();
            [v32 suggestionCompletionTimestamp];
            if (v34 > v13)
            {
              [v32 suggestionCompletionTimestamp];
              v13 = v35;
            }

            [v32 logToCoreAnalytics];
            if ([v4 didDefer])
            {
              v36 = __atxlog_handle_metrics();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
              {
                v37 = objc_opt_class();
                v38 = NSStringFromClass(v37);
                *buf = 138412290;
                v51 = v38;
                _os_log_impl(&dword_2263AA000, v36, OS_LOG_TYPE_INFO, "%@ - XPC deferred, terminating.", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v33);
              goto LABEL_29;
            }

            objc_autoreleasePoolPop(v33);
            ++v30;
            ++*&v28;
          }

          while (v27 != v30);
          v27 = [v25 countByEnumeratingWithState:&v46 objects:v58 count:16];
          v28 = v44;
          if (v27)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v28 = 0.0;
      }

LABEL_29:

      v39 = __atxlog_handle_metrics();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        v42 = [v25 count];
        *buf = 138413058;
        v51 = v41;
        v52 = 2048;
        v53 = v28;
        v54 = 2048;
        v55 = v42;
        v56 = 2048;
        v57 = v13;
        _os_log_impl(&dword_2263AA000, v39, OS_LOG_TYPE_INFO, "%@ - Logged %ld out of %ld metrics.  New metric timestamp is %f.", buf, 0x2Au);
      }

      [v8 setDouble:@"suggestionsMetricsTimestamp" forKey:v13];
      v17 = v45;
    }
  }

  v43 = *MEMORY[0x277D85DE8];
}

@end