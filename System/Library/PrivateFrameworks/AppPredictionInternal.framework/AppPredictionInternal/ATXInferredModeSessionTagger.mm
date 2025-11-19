@interface ATXInferredModeSessionTagger
- (id)biomeSessionFromScoredSession:(id)a3;
- (void)inferModesForLastDayWithXPCActivity:(id)a3;
@end

@implementation ATXInferredModeSessionTagger

- (void)inferModesForLastDayWithXPCActivity:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = __atxlog_handle_modes();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Started app-based mode inference", buf, 2u);
  }

  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0];
  v7 = [MEMORY[0x277CBEAA8] now];
  v8 = objc_alloc_init(ATXAppLaunchInferredModeSessionBiomeStream);
  v9 = [ATXModeScoringSessionRange alloc];
  v10 = objc_opt_new();
  v11 = [(ATXModeScoringSessionRange *)v9 initWithStartDate:v6 endDate:v7 modeEntityStore:v10];

  [(ATXModeScoringSessionRange *)v11 populateInitialSessionsFromScreenTransitions];
  v12 = __atxlog_handle_modes();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "Populated initial sessions from the data stream for app-based mode inference", buf, 2u);
  }

  if (([v4 didDefer] & 1) == 0)
  {
    [(ATXModeScoringSessionRange *)v11 attachAppLaunches];
    v13 = __atxlog_handle_modes();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "Attached app launches to sessions for app-based mode inference", buf, 2u);
    }

    if (([v4 didDefer] & 1) == 0)
    {
      [(ATXModeScoringSessionRange *)v11 coalesceSessions];
      v14 = __atxlog_handle_modes();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "Coalesced sessions for app-based mode inference", buf, 2u);
      }

      if (([v4 didDefer] & 1) == 0)
      {
        [(ATXModeScoringSessionRange *)v11 filterSessions];
        v15 = __atxlog_handle_modes();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "Filtered out ineligible sessions for app-based mode inference", buf, 2u);
        }

        if (([v4 didDefer] & 1) == 0)
        {
          v25 = v6;
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v16 = [(ATXModeScoringSessionRange *)v11 sessions];
          v17 = [v16 countByEnumeratingWithState:&v26 objects:v31 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v27;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v27 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v26 + 1) + 8 * i);
                if ([v21 isLabeled])
                {
                  v22 = [(ATXInferredModeSessionTagger *)self biomeSessionFromScoredSession:v21];
                  [(ATXAppLaunchInferredModeSessionBiomeStream *)v8 sendEvent:v22];
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v26 objects:v31 count:16];
            }

            while (v18);
          }

          v23 = __atxlog_handle_modes();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_DEFAULT, "Finished app-based mode inference", buf, 2u);
          }

          v6 = v25;
        }
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)biomeSessionFromScoredSession:(id)a3
{
  v3 = a3;
  [v3 topMode];
  v4 = [ATXUnifiedInferredActivitySession alloc];
  [v3 startTimestamp];
  v6 = v5;
  [v3 endTimestamp];
  v8 = v7;

  v9 = [(ATXUnifiedInferredActivitySession *)v4 initFromStartTime:@"appLaunchInferredMode" endTime:ATXActivityTypeFromMode() source:v6 activityType:v8 confidence:1.0];

  return v9;
}

@end