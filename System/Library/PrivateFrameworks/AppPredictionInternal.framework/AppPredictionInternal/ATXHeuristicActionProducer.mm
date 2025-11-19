@interface ATXHeuristicActionProducer
+ (double)generateScoreForHeuristic:(id)a3;
+ (id)sharedInstance;
+ (unint64_t)actionExperienceForScoredHeuristicAction:(id)a3;
- (ATXHeuristicActionProducer)init;
- (BOOL)isActionBlacklisted:(id)a3;
- (BOOL)userAlreadyEngagedWithAction:(id)a3;
- (id)_criteriaForJobOnDate:(id)a3;
- (id)bundleIdForAction:(id)a3;
- (id)firstUpdateDateForActions:(id)a3;
- (id)produceActions;
- (void)coalescedProduceActions;
- (void)dealloc;
- (void)invalidateOnGlobalQueueWithDelay:(double)a3;
- (void)scheduleNextHeuristicRefreshGivenActions:(id)a3;
- (void)setUpdateJobForCriteria:(id)a3;
@end

@implementation ATXHeuristicActionProducer

void __34__ATXHeuristicActionProducer_init__block_invoke(uint64_t a1)
{
  v2 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_INFO, "ATXHeuristicResultCacheExpiredSomethingNotification", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

- (void)coalescedProduceActions
{
  v8 = *MEMORY[0x277D85DE8];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ATXHeuristicActionProducer_coalescedProduceActions__block_invoke;
  block[3] = &unk_27859AED0;
  block[4] = self;
  if ([ATXHeuristicActionProducer coalescedProduceActions]::_pasOnceToken5 != -1)
  {
    dispatch_once(&[ATXHeuristicActionProducer coalescedProduceActions]::_pasOnceToken5, block);
  }

  v2 = [ATXHeuristicActionProducer coalescedProduceActions]::_pasExprOnceResult;
  [v2 runAfterDelaySeconds:0 coalescingBehavior:1.0];
  v3 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v7 = 0x3FF0000000000000;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "ATXHeuristicActionProducer triggering coalesced produceActions in %f seconds", buf, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__ATXHeuristicActionProducer_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[ATXHeuristicActionProducer sharedInstance]::_pasOnceToken2 != -1)
  {
    dispatch_once(&+[ATXHeuristicActionProducer sharedInstance]::_pasOnceToken2, block);
  }

  v2 = +[ATXHeuristicActionProducer sharedInstance]::_pasExprOnceResult;

  return v2;
}

void __44__ATXHeuristicActionProducer_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v5 = +[ATXHeuristicActionProducer sharedInstance]::_pasExprOnceResult;
  +[ATXHeuristicActionProducer sharedInstance]::_pasExprOnceResult = v4;

  objc_autoreleasePoolPop(v2);
}

- (ATXHeuristicActionProducer)init
{
  v14.receiver = self;
  v14.super_class = ATXHeuristicActionProducer;
  v2 = [(ATXHeuristicActionProducer *)&v14 init];
  if (v2)
  {
    if (([MEMORY[0x277CEB480] shouldComputeActions] & 1) == 0)
    {
      v6 = 0;
      goto LABEL_6;
    }

    objc_initWeak(&location, v2);
    v3 = MEMORY[0x277CE8980];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __34__ATXHeuristicActionProducer_init__block_invoke;
    v11 = &unk_27859AEA8;
    objc_copyWeak(&v12, &location);
    v4 = [v3 addCacheExpirerNotification:&v8];
    expireNotificationHandle = v2->_expireNotificationHandle;
    v2->_expireNotificationHandle = v4;

    [(ATXHeuristicActionProducer *)v2 setUpdateJobForCriteria:*MEMORY[0x277D86238], v8, v9, v10, v11];
    [(ATXHeuristicActionProducer *)v2 invalidateOnGlobalQueueWithDelay:5.0];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  v6 = v2;
LABEL_6:

  return v6;
}

- (void)invalidateOnGlobalQueueWithDelay:(double)a3
{
  v5 = MEMORY[0x277D425A0];
  v6 = dispatch_get_global_queue(9, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__ATXHeuristicActionProducer_invalidateOnGlobalQueueWithDelay___block_invoke;
  v7[3] = &unk_27859AED0;
  v7[4] = self;
  [v5 runAsyncOnQueue:v6 afterDelaySeconds:v7 block:a3];
}

uint64_t __63__ATXHeuristicActionProducer_invalidateOnGlobalQueueWithDelay___block_invoke(uint64_t a1)
{
  v2 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "ATXHeuristicActionProducer delayed invalidation upon init", v4, 2u);
  }

  return [*(a1 + 32) invalidate];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self->_expireNotificationHandle];

  v4.receiver = self;
  v4.super_class = ATXHeuristicActionProducer;
  [(ATXHeuristicActionProducer *)&v4 dealloc];
}

- (id)bundleIdForAction:(id)a3
{
  v3 = a3;
  v4 = [v3 _bundleIdForDisplay];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v3 bundleId];
  }

  v7 = v6;

  v8 = ATXBundleIdReplacementForBundleId();

  return v8;
}

- (BOOL)isActionBlacklisted:(id)a3
{
  v4 = [(ATXHeuristicActionProducer *)self bundleIdForAction:a3];
  v5 = [(ATXHeuristicActionProducer *)self digitalHealthBlacklist];
  v6 = [v5 blacklistedBundleIds];
  if ([v6 containsObject:v4])
  {
    v7 = 1;
  }

  else
  {
    v8 = [(ATXHeuristicActionProducer *)self actionPredictionBlacklist];
    v7 = [v8 isBundleIdBlacklisted:v4];
  }

  return v7;
}

- (BOOL)userAlreadyEngagedWithAction:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CEB7E0] sharedInstance];
  v5 = [v4 recentActions];
  v6 = [v5 containsObject:v3];

  return v6;
}

void __53__ATXHeuristicActionProducer_coalescedProduceActions__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);

  v5 = dispatch_queue_create("ATXUpdateActionPredictionCache", v4);
  v6 = objc_alloc(MEMORY[0x277D42628]);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__ATXHeuristicActionProducer_coalescedProduceActions__block_invoke_2;
  v9[3] = &unk_27859AED0;
  v9[4] = *(a1 + 32);
  v7 = [v6 initWithQueue:v5 operation:v9];

  v8 = [ATXHeuristicActionProducer coalescedProduceActions]::_pasExprOnceResult;
  [ATXHeuristicActionProducer coalescedProduceActions]::_pasExprOnceResult = v7;

  objc_autoreleasePoolPop(v2);
}

- (id)produceActions
{
  v53 = *MEMORY[0x277D85DE8];
  sel_getName(a2);
  v37 = os_transaction_create();
  v3 = objc_opt_new();
  v4 = MEMORY[0x277CE8980];
  v40 = v3;
  v5 = [MEMORY[0x277D41BF8] sharedInstance];
  v38 = [v4 actionsWithLocationManager:v5];

  v6 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = [v38 count];
    v48 = 2112;
    v49 = v38;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "Got %tu heuristic predictions: %@", buf, 0x16u);
  }

  if (!v38)
  {
    v31 = MEMORY[0x277CBEBF8];
    goto LABEL_33;
  }

  v41 = objc_opt_new();
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v38;
  v7 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (!v7)
  {
    goto LABEL_24;
  }

  v8 = *v44;
  v9.i32[1] = -1059153344;
  *v9.i32 = -31337.0;
  v39 = vdupq_lane_s32(v9, 0);
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v44 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v43 + 1) + 8 * i);
      if ([(ATXHeuristicActionProducer *)self isActionBlacklisted:v11, v37])
      {
        v12 = __atxlog_handle_heuristic();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v11;
          _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "Heuristic action %@ is blacklisted.", buf, 0xCu);
        }

LABEL_21:

        continue;
      }

      if (![(ATXHeuristicActionProducer *)self userAlreadyEngagedWithAction:v11])
      {
        v14 = objc_alloc(MEMORY[0x277CEB7F0]);
        v15 = objc_opt_class();
        v16 = [v11 heuristic];
        [v15 generateScoreForHeuristic:v16];
        *&v17 = v17;
        v12 = [v14 initWithPredictedItem:v11 score:v17];

        v18 = [ATXHeuristicActionProducer actionExperienceForScoredHeuristicAction:v12];
        [v12 score];
        *buf = @"heuristic";
        v50 = v19;
        v20 = 16;
        v51 = 0;
        do
        {
          *&buf[v20] = v39;
          v20 += 16;
        }

        while (v20 != 3328);
        v21 = [v11 heuristic];
        v22 = [v21 isEqualToString:@"bestAppHandoff:unknown"];

        if ((v22 & 1) == 0)
        {
          LOBYTE(v51) = v18 == 2;
          HIBYTE(v51) = v18 == 1;
        }

        v23 = [[ATXActionResult alloc] initWithScoredAction:v12 predictionItem:buf actionKey:@"heuristic"];
        [v40 addObject:v23];
        [v41 addObject:v11];

        goto LABEL_21;
      }

      v13 = __atxlog_handle_heuristic();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v11;
        _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "User already engaged with action. Not going to surface action: %@", buf, 0xCu);
      }

      [v41 addObject:v11];
    }

    v7 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
  }

  while (v7);
LABEL_24:

  v24 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [v40 count];
    *buf = 134218242;
    *&buf[4] = v25;
    v48 = 2112;
    v49 = v40;
    _os_log_impl(&dword_2263AA000, v24, OS_LOG_TYPE_DEFAULT, "Got %tu action results: %@", buf, 0x16u);
  }

  v26 = ATXSortedActionResults(v40);
  v27 = +[_ATXGlobals sharedInstance];
  v28 = [v27 maxHeuristicAppActionCount];

  v29 = [v40 count];
  if (v29 >= v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = v29;
  }

  v31 = [v26 subarrayWithRange:{0, v30, v37}];

  v32 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = [v31 count];
    *buf = 134218242;
    *&buf[4] = v33;
    v48 = 2112;
    v49 = v31;
    _os_log_impl(&dword_2263AA000, v32, OS_LOG_TYPE_DEFAULT, "Got %tu action results after sorting and filtering: %@", buf, 0x16u);
  }

  v34 = [MEMORY[0x277CEB7E0] sharedInstance];
  [v34 clearRecentHeuristicEngagementsExceptForActions:v41];

  [ATXActionBlendingUpdater updateBlendingLayerWithHeuristicPredictions:v31];
  [(ATXHeuristicActionProducer *)self scheduleNextHeuristicRefreshGivenActions:v31];

LABEL_33:
  v35 = *MEMORY[0x277D85DE8];

  return v31;
}

+ (unint64_t)actionExperienceForScoredHeuristicAction:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [ATXDisplayCacheLockscreenFilter _getPredictionConfidenceForActions:v4];

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (double)generateScoreForHeuristic:(id)a3
{
  v34[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[_ATXGlobals sharedInstance];
  v5 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v6 = [v5 histogramForLaunchType:35];
  v7 = [v5 histogramForLaunchType:36];
  if (v3)
  {
    v34[0] = v3;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  [v6 totalLaunchesForBundleIds:v8];
  v10 = v9;
  [v7 totalLaunchesForBundleIds:v8];
  v12 = v11;
  [v6 totalLaunches];
  v14 = v13;
  [v7 totalLaunches];
  v16 = v15;
  v17 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138544386;
    v25 = v3;
    v26 = 2048;
    v27 = v10;
    v28 = 2048;
    v29 = v12;
    v30 = 2048;
    v31 = v14;
    v32 = 2048;
    v33 = v16;
    _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "Heuristic: %{public}@ confirms: %f rejects: %f total confirms: %f rejects: %f", &v24, 0x34u);
  }

  [v4 heuristicsBaseScore];
  v19 = v18;
  +[_ATXActionUtils computeNormalizedBetaDistEngagementScoreWithPriorAlpha:priorBeta:confirms:rejects:totalConfirms:totalRejects:](_ATXActionUtils, "computeNormalizedBetaDistEngagementScoreWithPriorAlpha:priorBeta:confirms:rejects:totalConfirms:totalRejects:", [v4 heuristicsEngagementPriorAlpha], objc_msgSend(v4, "heuristicsEngagementPriorBeta"), v10, v12, v14, v16);
  v21 = v20;

  v22 = *MEMORY[0x277D85DE8];
  return v19 * v21;
}

- (void)scheduleNextHeuristicRefreshGivenActions:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [(ATXHeuristicActionProducer *)self firstUpdateDateForActions:a3];
  if (v4)
  {
    v5 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Scheduling next ATXHeuristicActionProducer refresh for date: %@", &v8, 0xCu);
    }

    v6 = [(ATXHeuristicActionProducer *)self _criteriaForJobOnDate:v4];
    [(ATXHeuristicActionProducer *)self setUpdateJobForCriteria:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setUpdateJobForCriteria:(id)a3
{
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __54__ATXHeuristicActionProducer_setUpdateJobForCriteria___block_invoke;
  handler[3] = &unk_27859AEF8;
  handler[4] = self;
  xpc_activity_register("com.apple.duetexpertd.heuristicactionproducer-refresh", a3, handler);
}

void __54__ATXHeuristicActionProducer_setUpdateJobForCriteria___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2 && ([MEMORY[0x277D42598] isClassCLocked] & 1) == 0)
  {
    v4 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "ATXHeuristicActionProducer producing actions due to prescheduled CTS update job.", v6, 2u);
    }

    v5 = objc_autoreleasePoolPush();
    [*(a1 + 32) coalescedProduceActions];
    objc_autoreleasePoolPop(v5);
  }
}

- (id)firstUpdateDateForActions:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__39;
  v31 = __Block_byref_object_dispose__39;
  v32 = 0;
  v3 = objc_opt_new();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__ATXHeuristicActionProducer_firstUpdateDateForActions___block_invoke;
  aBlock[3] = &unk_27859AF20;
  v4 = v3;
  v25 = v4;
  v26 = &v27;
  v5 = _Block_copy(aBlock);
  v6 = [MEMORY[0x277CE8980] nextCacheExpirationDate];
  v5[2](v5, v6);

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v19;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v33 count:16];
  if (v8)
  {
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [*(*(&v20 + 1) + 8 * i) scoredAction];
        v12 = [v11 predictedItem];
        v13 = [v12 criteria];

        v14 = [v13 startDate];
        v5[2](v5, v14);

        v15 = [v13 endDate];
        v5[2](v5, v15);
      }

      v8 = [v7 countByEnumeratingWithState:&v20 objects:v33 count:16];
    }

    while (v8);
  }

  v16 = v28[5];
  _Block_object_dispose(&v27, 8);

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

uint64_t __56__ATXHeuristicActionProducer_firstUpdateDateForActions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v10 = v3;
    v5 = [v3 earlierDate:*(a1 + 32)];
    v6 = *(a1 + 32);

    v4 = v10;
    if (v5 == v6)
    {
      v7 = [*(*(*(a1 + 40) + 8) + 40) earlierDate:v10];
      if (v7)
      {
        v8 = v7;
      }

      else
      {
        v8 = v10;
      }

      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);

      v4 = v10;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (id)_criteriaForJobOnDate:(id)a3
{
  [a3 timeIntervalSinceNow];
  v4 = v3;
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v5, *MEMORY[0x277D86250], v4);
  xpc_dictionary_set_int64(v5, *MEMORY[0x277D86270], 300);
  xpc_dictionary_set_BOOL(v5, *MEMORY[0x277D86380], 1);
  xpc_dictionary_set_BOOL(v5, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_BOOL(v5, *MEMORY[0x277D86360], 0);

  return v5;
}

@end