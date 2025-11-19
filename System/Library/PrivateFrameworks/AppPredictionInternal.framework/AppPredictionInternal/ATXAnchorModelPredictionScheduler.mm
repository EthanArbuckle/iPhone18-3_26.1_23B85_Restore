@interface ATXAnchorModelPredictionScheduler
- (ATXAnchorModelPredictionScheduler)init;
- (ATXAnchorModelPredictionScheduler)initWithPredictionForwarder:(id)a3 hyperParameters:(id)a4 tracker:(id)a5 now:(id)a6 maxPredictions:(unint64_t)a7;
- (BOOL)dateIsInFuture:(id)a3 now:(id)a4;
- (id)_cache;
- (id)_readPredictionsFromCache;
- (id)criteriaForJobOnDate:(id)a3;
- (id)dateOfSoonestUpcomingPredictionChange;
- (id)deduplicatedPredictions:(id)a3;
- (id)earlierDateInFuture:(id)a3 earliestDateSoFar:(id)a4 now:(id)a5;
- (id)now;
- (id)predictions;
- (id)predictionsAfterFilteringInactiveAnchors:(id)a3;
- (id)predictionsValidNow;
- (id)predictionsWithTimeIntervalOverlappingWithCurrentTime;
- (void)clearPredictionsForAnchor:(id)a3;
- (void)forwardPredictionUpdates;
- (void)forwardPredictionUpdatesOnDate:(id)a3;
- (void)initializeLock;
- (void)logPredictionsGeneratedMetricsWithAnchorModelPredictions:(id)a3;
- (void)persistPredictions:(id)a3 anchor:(id)a4;
- (void)registerXPCActivityForPredictionUpdateWithCriteria:(id)a3;
- (void)scheduleNextPredictionUpdate;
- (void)schedulePredictions:(id)a3 anchor:(id)a4;
@end

@implementation ATXAnchorModelPredictionScheduler

- (ATXAnchorModelPredictionScheduler)init
{
  v3 = objc_opt_new();
  v4 = +[ATXAnchorModelHyperParameters sharedInstance];
  v5 = objc_opt_new();
  v6 = [(ATXAnchorModelPredictionScheduler *)self initWithPredictionForwarder:v3 hyperParameters:v4 tracker:v5 now:0 maxPredictions:45];

  return v6;
}

- (ATXAnchorModelPredictionScheduler)initWithPredictionForwarder:(id)a3 hyperParameters:(id)a4 tracker:(id)a5 now:(id)a6 maxPredictions:(unint64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v23.receiver = self;
  v23.super_class = ATXAnchorModelPredictionScheduler;
  v17 = [(ATXAnchorModelPredictionScheduler *)&v23 init];
  v18 = v17;
  if (v17)
  {
    [(ATXAnchorModelPredictionScheduler *)v17 initializeLock];
    objc_storeStrong(&v18->_predictionForwarder, a3);
    objc_storeStrong(&v18->_hyperParameters, a4);
    objc_storeStrong(&v18->_tracker, a5);
    objc_storeStrong(&v18->_now, a6);
    v18->_maxPredictions = a7;
    v19 = objc_alloc(MEMORY[0x277CBEBD0]);
    v20 = [v19 initWithSuiteName:*MEMORY[0x277CEBD00]];
    defaults = v18->_defaults;
    v18->_defaults = v20;
  }

  return v18;
}

- (void)initializeLock
{
  v5 = objc_opt_new();
  v3 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v5];
  schedulerLock = self->_schedulerLock;
  self->_schedulerLock = v3;
}

- (id)now
{
  now = self->_now;
  if (now)
  {
    v3 = now;
  }

  else
  {
    v3 = objc_opt_new();
  }

  return v3;
}

- (void)clearPredictionsForAnchor:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Scheduler clearing predictions for anchor %@.", &v7, 0xCu);
  }

  [(ATXAnchorModelPredictionScheduler *)self schedulePredictions:MEMORY[0x277CBEBF8] anchor:v4];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)schedulePredictions:(id)a3 anchor:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~", buf, 2u);
  }

  v9 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 count];
    *buf = 134218242;
    v39 = v10;
    v40 = 2112;
    v41 = v7;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "Scheduler received %lu predictions for anchor %@. Predictions:", buf, 0x16u);
  }

  v11 = [v6 mutableCopy];
  v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"score" ascending:0];
  v37 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
  [v11 sortUsingDescriptors:v13];

  v14 = v11;
  v15 = v14;
  if ([v14 count] > self->_maxPredictions)
  {
    v15 = [v14 subarrayWithRange:0];

    v16 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v15 count];
      *buf = 134217984;
      v39 = v17;
      _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "Scheduler clipping anchor model predictions to the top scoring %lu predictions.", buf, 0xCu);
    }
  }

  v29 = v14;
  v30 = v7;
  v31 = self;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v18 = v15;
  v19 = [v18 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v33;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v32 + 1) + 8 * i);
        v24 = objc_autoreleasePoolPush();
        v25 = __atxlog_handle_anchor();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v39 = v23;
          _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v24);
      }

      v20 = [v18 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v20);
  }

  v26 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v26, OS_LOG_TYPE_DEFAULT, "Scheduling...", buf, 2u);
  }

  v27 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v27, OS_LOG_TYPE_DEFAULT, "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~", buf, 2u);
  }

  [(ATXAnchorModelPredictionScheduler *)v31 persistPredictions:v18 anchor:v30];
  [(ATXAnchorModelPredictionScheduler *)v31 forwardPredictionUpdates];
  [(ATXAnchorModelPredictionScheduler *)v31 logPredictionsGeneratedMetricsWithAnchorModelPredictions:v18];

  v28 = *MEMORY[0x277D85DE8];
}

- (void)persistPredictions:(id)a3 anchor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  schedulerLock = self->_schedulerLock;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__ATXAnchorModelPredictionScheduler_persistPredictions_anchor___block_invoke;
  v12[3] = &unk_2785984B0;
  v12[4] = self;
  v10 = v6;
  v13 = v10;
  v11 = v7;
  v14 = v11;
  [(_PASLock *)schedulerLock runWithLockAcquired:v12];

  objc_autoreleasePoolPop(v8);
}

void __63__ATXAnchorModelPredictionScheduler_persistPredictions_anchor___block_invoke(id *a1)
{
  v6 = [a1[4] _readPredictionsFromCache];
  v2 = [a1[5] copy];
  v3 = [a1[6] anchorTypeString];
  [v6 setObject:v2 forKey:v3];

  v4 = [a1[4] _cache];
  v5 = [v6 copy];
  [v4 storeSecureCodedObject:v5 error:0];
}

- (id)_cache
{
  v2 = [MEMORY[0x277CEBCB0] appPredictionCacheDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"anchorModelSchedulerCurrentPredictions"];

  v4 = objc_alloc(MEMORY[0x277CEBC68]);
  v5 = __atxlog_handle_anchor();
  v6 = [v4 initWithCacheFilePath:v3 loggingHandle:v5 debugName:@"cached anchor model predictions"];

  return v6;
}

- (void)scheduleNextPredictionUpdate
{
  v3 = [(ATXAnchorModelPredictionScheduler *)self dateOfSoonestUpcomingPredictionChange];
  [(ATXAnchorModelPredictionScheduler *)self forwardPredictionUpdatesOnDate:v3];
}

- (id)dateOfSoonestUpcomingPredictionChange
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] distantFuture];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(ATXAnchorModelPredictionScheduler *)self predictions];
  v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v19 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = [v7 dateIntervalForPrediction];
        v10 = [v9 startDate];
        v11 = [(ATXAnchorModelPredictionScheduler *)self now];
        v12 = [(ATXAnchorModelPredictionScheduler *)self earlierDateInFuture:v10 earliestDateSoFar:v3 now:v11];

        v13 = [v7 dateIntervalForPrediction];
        v14 = [v13 endDate];
        v15 = [(ATXAnchorModelPredictionScheduler *)self now];
        v3 = [(ATXAnchorModelPredictionScheduler *)self earlierDateInFuture:v14 earliestDateSoFar:v12 now:v15];

        objc_autoreleasePoolPop(v8);
      }

      v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)earlierDateInFuture:(id)a3 earliestDateSoFar:(id)a4 now:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(ATXAnchorModelPredictionScheduler *)self dateIsInFuture:v8 now:a5];
  v11 = v9;
  if (v10)
  {
    v12 = [v9 earlierDate:v8];

    if (v12 == v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v8;
    }
  }

  v13 = v11;

  return v11;
}

- (BOOL)dateIsInFuture:(id)a3 now:(id)a4
{
  v5 = a4;
  v6 = [v5 earlierDate:a3];

  return v6 == v5;
}

- (id)predictions
{
  v3 = objc_opt_new();
  schedulerLock = self->_schedulerLock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__ATXAnchorModelPredictionScheduler_predictions__block_invoke;
  v9[3] = &unk_2785984D8;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [(_PASLock *)schedulerLock runWithLockAcquired:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

void __48__ATXAnchorModelPredictionScheduler_predictions__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _readPredictionsFromCache];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 allValues];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 40) addObjectsFromArray:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_readPredictionsFromCache
{
  v2 = [(ATXAnchorModelPredictionScheduler *)self _cache];
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 initWithObjects:{v5, v6, v7, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v3);
  v9 = [v2 readSecureCodedObjectWithMaxValidAge:v8 allowableClasses:0 error:-1.0];
  v10 = [v9 mutableCopy];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = objc_opt_new();
  }

  v13 = v12;

  return v13;
}

- (void)forwardPredictionUpdatesOnDate:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ATXAnchorModelPredictionScheduler *)self now];
  v6 = [(ATXAnchorModelPredictionScheduler *)self dateIsInFuture:v4 now:v5];

  if (v6)
  {
    v7 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_INFO, "Scheduler scheduling next update on %@", &v10, 0xCu);
    }

    v8 = [(ATXAnchorModelPredictionScheduler *)self criteriaForJobOnDate:v4];
    [(ATXAnchorModelPredictionScheduler *)self registerXPCActivityForPredictionUpdateWithCriteria:v8];
  }

  else
  {
    [(ATXAnchorModelPredictionScheduler *)self forwardPredictionUpdates];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)registerXPCActivityForPredictionUpdateWithCriteria:(id)a3
{
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __88__ATXAnchorModelPredictionScheduler_registerXPCActivityForPredictionUpdateWithCriteria___block_invoke;
  handler[3] = &unk_278598500;
  handler[4] = self;
  xpc_activity_register("com.apple.duetexpertd.anchor-model-prediction-scheduler", a3, handler);
}

void __88__ATXAnchorModelPredictionScheduler_registerXPCActivityForPredictionUpdateWithCriteria___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2 && ([MEMORY[0x277D42598] isClassCLocked] & 1) == 0)
  {
    v4 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "Forwarding Anchor Model prediction updates due to scheduled update.", v6, 2u);
    }

    v5 = objc_autoreleasePoolPush();
    [*(a1 + 32) forwardPredictionUpdates];
    objc_autoreleasePoolPop(v5);
  }
}

- (id)criteriaForJobOnDate:(id)a3
{
  v4 = a3;
  v5 = [(ATXAnchorModelPredictionScheduler *)self now];
  [v4 timeIntervalSinceDate:v5];
  v7 = v6;

  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v8, *MEMORY[0x277D86250], v7);
  xpc_dictionary_set_int64(v8, *MEMORY[0x277D86270], 60);
  xpc_dictionary_set_BOOL(v8, *MEMORY[0x277D86380], 1);
  xpc_dictionary_set_string(v8, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  xpc_dictionary_set_BOOL(v8, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_BOOL(v8, *MEMORY[0x277D86360], 0);

  return v8;
}

- (void)forwardPredictionUpdates
{
  v3 = [(ATXAnchorModelPredictionScheduler *)self predictionsValidNow];
  [(ATXAnchorModelPredictionForwarderProtocol *)self->_predictionForwarder forwardPredictions:v3];
  v4 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "Scheduler forwarded predictions.", v5, 2u);
  }

  [(ATXAnchorModelPredictionScheduler *)self scheduleNextPredictionUpdate];
}

- (id)predictionsValidNow
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = [(ATXAnchorModelPredictionScheduler *)self predictionsWithTimeIntervalOverlappingWithCurrentTime];
  v4 = [v3 mutableCopy];

  v5 = [(ATXAnchorModelPredictionScheduler *)self predictionsAfterFilteringInactiveAnchors:v4];
  v6 = [v5 mutableCopy];

  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"score" ascending:0];
  v12[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [v6 sortUsingDescriptors:v8];

  v9 = [(ATXAnchorModelPredictionScheduler *)self deduplicatedPredictions:v6];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)predictionsWithTimeIntervalOverlappingWithCurrentTime
{
  v3 = [(ATXAnchorModelPredictionScheduler *)self predictions];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __90__ATXAnchorModelPredictionScheduler_predictionsWithTimeIntervalOverlappingWithCurrentTime__block_invoke;
  v6[3] = &unk_278598528;
  v6[4] = self;
  v4 = [v3 _pas_filteredArrayWithTest:v6];

  return v4;
}

uint64_t __90__ATXAnchorModelPredictionScheduler_predictionsWithTimeIntervalOverlappingWithCurrentTime__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 dateIntervalForPrediction];
  v6 = [*(a1 + 32) now];
  v7 = [v5 containsDate:v6];

  objc_autoreleasePoolPop(v4);
  return v7;
}

- (id)predictionsAfterFilteringInactiveAnchors:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __78__ATXAnchorModelPredictionScheduler_predictionsAfterFilteringInactiveAnchors___block_invoke;
  v5[3] = &unk_278598528;
  v5[4] = self;
  v3 = [a3 _pas_filteredArrayWithTest:v5];

  return v3;
}

uint64_t __78__ATXAnchorModelPredictionScheduler_predictionsAfterFilteringInactiveAnchors___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 anchorType];
  [ATXAnchor anchorClassFromAnchorTypeString:v4];
  v5 = objc_opt_new();

  v6 = [objc_opt_class() isActive];
  if ((v6 & 1) == 0)
  {
    v7 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "Filtering out Anchor Model prediction because the anchor is no longer active. Prediction %@", &v10, 0xCu);
    }

    [*(a1 + 32) clearPredictionsForAnchor:v5];
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)deduplicatedPredictions:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __61__ATXAnchorModelPredictionScheduler_deduplicatedPredictions___block_invoke;
  v13 = &unk_278598550;
  v14 = v4;
  v15 = v5;
  v6 = v5;
  v7 = v4;
  [v3 enumerateObjectsUsingBlock:&v10];
  v8 = [v3 objectsAtIndexes:{v6, v10, v11, v12, v13}];

  return v8;
}

void __61__ATXAnchorModelPredictionScheduler_deduplicatedPredictions___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v10 = v5;
  v7 = [v5 candidateId];
  LOBYTE(v6) = [v6 containsObject:v7];

  if ((v6 & 1) == 0)
  {
    [*(a1 + 40) addIndex:a3];
    v8 = *(a1 + 32);
    v9 = [v10 candidateId];
    [v8 addObject:v9];
  }
}

- (void)logPredictionsGeneratedMetricsWithAnchorModelPredictions:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v33 objects:v51 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v34;
    v8 = off_278593000;
    v29 = v4;
    do
    {
      v9 = 0;
      do
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v33 + 1) + 8 * v9);
        v11 = v8[352];
        v12 = objc_opt_new();
        v13 = [v10 anchorType];
        [v12 setAnchorType:v13];

        [v10 score];
        [v12 setScore:?];
        v14 = [v10 candidateType];
        [v12 setCandidateType:v14];

        v15 = [v10 offsetFromAnchorToShowPrediction];
        [v15 startSecondsAfterAnchor];
        [v12 setSecondsAfterAnchorStart:v16];

        v17 = [v10 offsetFromAnchorToShowPrediction];
        [v17 endSecondsAfterAnchor];
        [v12 setSecondsAfterAnchorEnd:v18];

        v19 = [(ATXAnchorModelHyperParameters *)self->_hyperParameters abGroup];
        [v12 setAbGroup:v19];

        [(ATXPETEventTracker2Protocol *)self->_tracker logMessage:v12];
        v20 = __atxlog_handle_metrics();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v21 = objc_opt_class();
          v32 = NSStringFromClass(v21);
          v22 = [v12 anchorType];
          v23 = [v12 candidateType];
          [v12 score];
          v25 = v24;
          v31 = [v12 secondsAfterAnchorStart];
          v30 = [v12 secondsAfterAnchorEnd];
          v26 = [v12 abGroup];
          *buf = 138413826;
          v38 = v32;
          v39 = 2112;
          v40 = v22;
          v27 = v22;
          v41 = 2112;
          v42 = v23;
          v43 = 2048;
          v44 = v25;
          v45 = 1024;
          v46 = v31;
          v8 = off_278593000;
          v47 = 1024;
          v48 = v30;
          v49 = 2112;
          v50 = v26;
          _os_log_debug_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEBUG, "LOGGED: %@ - ATXMPBAnchorModelPredictionsGeneratedTracker with anchorType: %@ candidateType: %@ score: %f secondsAfterAnchorStart: %u secondsAfterAnchorEnd: %u abGroup: %@", buf, 0x40u);

          v4 = v29;
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v33 objects:v51 count:16];
    }

    while (v6);
  }

  v28 = *MEMORY[0x277D85DE8];
}

@end