@interface ATXModeScoringSessionRange
- (ATXModeScoringSessionRange)initWithStartDate:(id)a3 endDate:(id)a4 modeEntityStore:(id)a5;
- (BOOL)_shouldCoaleseNextSession:(id)a3 currentBuffer:(id)a4;
- (void)attachAppLaunches;
- (void)coalesceSessions;
- (void)filterSessions;
- (void)populateInitialSessionsFromScreenTransitions;
@end

@implementation ATXModeScoringSessionRange

- (ATXModeScoringSessionRange)initWithStartDate:(id)a3 endDate:(id)a4 modeEntityStore:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = ATXModeScoringSessionRange;
  v11 = [(ATXModeScoringSessionRange *)&v17 init];
  if (v11)
  {
    if (v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = [MEMORY[0x277CBEAA8] distantPast];
    }

    startDate = v11->_startDate;
    v11->_startDate = v12;

    if (v9)
    {
      v14 = v9;
    }

    else
    {
      v14 = [MEMORY[0x277CBEAA8] distantFuture];
    }

    endDate = v11->_endDate;
    v11->_endDate = v14;

    objc_storeStrong(&v11->_modeEntityStore, a5);
  }

  return v11;
}

- (void)filterSessions
{
  v3 = [(NSArray *)self->_sessions _pas_filteredArrayWithTest:&__block_literal_global_53];
  sessions = self->_sessions;
  self->_sessions = v3;

  MEMORY[0x2821F96F8]();
}

- (void)attachAppLaunches
{
  v3 = BiomeLibrary();
  v4 = [v3 App];
  v5 = [v4 InFocus];
  v6 = [v5 atx_publisherFromStartDate:self->_startDate];

  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v7 = objc_opt_new();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__ATXModeScoringSessionRange_attachAppLaunches__block_invoke_15;
  v10[3] = &unk_2785997E8;
  v12 = v13;
  v10[4] = self;
  v8 = v7;
  v11 = v8;
  v9 = [v6 sinkWithCompletion:&__block_literal_global_14 receiveInput:v10];

  _Block_object_dispose(v13, 8);
}

void __47__ATXModeScoringSessionRange_attachAppLaunches__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if ([v2 state] == 1)
  {
    v3 = __atxlog_handle_default();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [v2 error];
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Error: %@", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __47__ATXModeScoringSessionRange_attachAppLaunches__block_invoke_15(uint64_t a1, void *a2)
{
  v18 = a2;
  while (1)
  {
    v3 = *(*(*(a1 + 48) + 8) + 24);
    if ([*(*(a1 + 32) + 24) count] <= v3)
    {
      break;
    }

    v4 = [v18 eventBody];
    v5 = [v4 absoluteTimestamp];
    [v5 timeIntervalSinceReferenceDate];
    v7 = v6;
    v8 = [*(*(a1 + 32) + 24) objectAtIndexedSubscript:*(*(*(a1 + 48) + 8) + 24)];
    [v8 endTimestamp];
    v10 = v9;

    if (v7 <= v10)
    {
      break;
    }

    if ([*(a1 + 40) count])
    {
      v11 = [*(*(a1 + 32) + 24) objectAtIndexedSubscript:*(*(*(a1 + 48) + 8) + 24)];
      [v11 populateAppLaunches:*(a1 + 40)];

      [*(a1 + 40) removeAllObjects];
    }

    ++*(*(*(a1 + 48) + 8) + 24);
  }

  v12 = *(*(*(a1 + 48) + 8) + 24);
  v13 = [*(*(a1 + 32) + 24) count] == v12;
  v14 = v18;
  if (!v13)
  {
    v15 = [v18 eventBody];

    v14 = v18;
    if (v15)
    {
      v16 = *(a1 + 40);
      v17 = [v18 eventBody];
      [v16 addObject:v17];

      v14 = v18;
    }
  }
}

- (void)populateInitialSessionsFromScreenTransitions
{
  v55 = *MEMORY[0x277D85DE8];
  v46 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  startDate = self->_startDate;
  endDate = self->_endDate;
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __74__ATXModeScoringSessionRange_populateInitialSessionsFromScreenTransitions__block_invoke;
  v52[3] = &unk_278599810;
  v7 = v4;
  v53 = v7;
  v45 = v3;
  [v3 enumerateDisplayOnIntervalsFromStartDate:startDate endDate:endDate block:v52];
  v44 = v7;
  [v7 _pas_mappedArrayWithTransform:&__block_literal_global_21_0];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v51 = 0u;
  v8 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v49;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v49 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v48 + 1) + 8 * i);
        if (v10)
        {
          v14 = [v10 endDate];
          v15 = [v13 startDate];
          if ([(ATXModeScoringSessionRange *)self _areTimesClose:v14 secondTime:v15])
          {
            v16 = [v13 endDate];
            [v16 timeIntervalSinceReferenceDate];
            v18 = v17;
            v19 = [v10 startDate];
            [v19 timeIntervalSinceReferenceDate];
            v21 = v20;

            if (v18 > v21)
            {
              v22 = objc_alloc(MEMORY[0x277CCA970]);
              v23 = [v10 startDate];
              v24 = [v13 endDate];
              v25 = [v22 initWithStartDate:v23 endDate:v24];

              v10 = v25;
              continue;
            }
          }

          else
          {
          }

          v26 = [ATXModeScoringSession alloc];
          v27 = [v10 startDate];
          [v27 timeIntervalSinceReferenceDate];
          v29 = v28;
          v30 = [v10 endDate];
          [v30 timeIntervalSinceReferenceDate];
          v32 = [(ATXModeScoringSession *)v26 initFromStartTime:self->_modeEntityStore endTime:v29 modeEntityStore:v31];

          [(NSArray *)v46 addObject:v32];
          v33 = v13;

          v10 = v33;
        }

        else
        {
          v10 = v13;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
      if (!v9)
      {
        goto LABEL_17;
      }
    }
  }

  v10 = 0;
LABEL_17:
  v34 = [ATXModeScoringSession alloc];
  v35 = [v10 startDate];
  [v35 timeIntervalSinceReferenceDate];
  v37 = v36;
  v38 = [v10 endDate];
  [v38 timeIntervalSinceReferenceDate];
  v40 = [(ATXModeScoringSession *)v34 initFromStartTime:self->_modeEntityStore endTime:v37 modeEntityStore:v39];

  [(NSArray *)v46 addObject:v40];
  sessions = self->_sessions;
  self->_sessions = v46;
  v42 = v46;

  v43 = *MEMORY[0x277D85DE8];
}

- (void)coalesceSessions
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(NSArray *)self->_sessions _pas_filteredArrayWithTest:&__block_literal_global_25];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if (![(ATXModeScoringSessionRange *)self _shouldCoaleseNextSession:v10 currentBuffer:v4])
        {
          v11 = [ATXModeScoringSession coalesceSessions:v4 modeEntityStore:self->_modeEntityStore];
          [(NSArray *)v3 addObject:v11];

          [v4 removeAllObjects];
        }

        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v12 = [ATXModeScoringSession coalesceSessions:v4 modeEntityStore:self->_modeEntityStore];
    [(NSArray *)v3 addObject:v12];
  }

  sessions = self->_sessions;
  self->_sessions = v3;

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldCoaleseNextSession:(id)a3 currentBuffer:(id)a4
{
  v18[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    v8 = [ATXModeScoringSession coalesceSessions:v7 modeEntityStore:self->_modeEntityStore];
    v9 = [v8 topMode];
    if ([v8 isStronglyCorrelatedWithTopMode])
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    if (([v6 hasModeWithinRank:v9 rank:v10] & 1) != 0 || (objc_msgSend(v6, "duration"), v11 < 30.0))
    {
      v18[0] = v8;
      v18[1] = v6;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
      v13 = [ATXModeScoringSession coalesceSessions:v12 modeEntityStore:self->_modeEntityStore];

      if ([v13 hasModeWithinRank:v9 rank:1])
      {
        [v8 secondsUntilOtherSession:v6];
        v15 = v14 < 3600.0;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 1;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

@end