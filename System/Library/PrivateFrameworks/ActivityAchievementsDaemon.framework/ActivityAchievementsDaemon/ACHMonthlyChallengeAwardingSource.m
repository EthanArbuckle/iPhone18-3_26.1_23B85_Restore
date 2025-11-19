@interface ACHMonthlyChallengeAwardingSource
- (ACHAchievementProgressEngine)progressEngine;
- (ACHEarnedInstanceAwardingEngine)engine;
- (ACHEarnedInstanceStore)earnedInstanceStore;
- (ACHMonthlyChallengeAwardingSource)initWithHealthStore:(id)a3 awardingEngine:(id)a4 templateStore:(id)a5 earnedInstanceStore:(id)a6 monthlyDataSource:(id)a7 creatorDevice:(unsigned __int8)a8 progressEngine:(id)a9;
- (ACHMonthlyChallengeDataSource)monthlyDataSource;
- (ACHTemplateStore)templateStore;
- (BOOL)isAppleWatch;
- (BOOL)providesProgressForTemplate:(id)a3;
- (id)_earnedDateComponentsForTemplate:(id)a3;
- (id)_earnedInstancesForInterval:(id)a3;
- (id)_evaluationEnvironmentForTemplate:(id)a3;
- (id)_evaluationEnvironmentForTemplate:(id)a3 andDateComponentInterval:(id)a4;
- (id)_monthlyChallengeTemplatesForHistoricalInterval:(id)a3;
- (id)_queue_goalQuantityForTemplate:(id)a3;
- (id)_queue_progressQuantityForTemplate:(id)a3;
- (id)earnedInstancesForHistoricalInterval:(id)a3 error:(id *)a4;
- (void)_requestIncrementalEvaluation;
- (void)_startQueries;
- (void)currentActivitySummaryQueryDidUpdateTodayActivitySummary:(id)a3 changedFields:(unint64_t)a4;
- (void)currentActivitySummaryQueryDidUpdateYesterdayActivitySummary:(id)a3 changedFields:(unint64_t)a4;
- (void)requestAchievementProgressUpdatesForTemplates:(id)a3;
- (void)workoutsAdded:(id)a3;
@end

@implementation ACHMonthlyChallengeAwardingSource

- (ACHMonthlyChallengeAwardingSource)initWithHealthStore:(id)a3 awardingEngine:(id)a4 templateStore:(id)a5 earnedInstanceStore:(id)a6 monthlyDataSource:(id)a7 creatorDevice:(unsigned __int8)a8 progressEngine:(id)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a9;
  v27.receiver = self;
  v27.super_class = ACHMonthlyChallengeAwardingSource;
  v22 = [(ACHMonthlyChallengeAwardingSource *)&v27 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_healthStore, a3);
    objc_storeWeak(&v23->_engine, v17);
    objc_storeWeak(&v23->_progressEngine, v21);
    objc_storeWeak(&v23->_templateStore, v18);
    objc_storeWeak(&v23->_earnedInstanceStore, v19);
    objc_storeWeak(&v23->_monthlyDataSource, v20);
    v23->_creatorDevice = a8;
    v24 = HKCreateSerialDispatchQueue();
    internalQueue = v23->_internalQueue;
    v23->_internalQueue = v24;

    [(ACHMonthlyChallengeAwardingSource *)v23 _startQueries];
  }

  return v23;
}

- (void)_startQueries
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277CE8D28]);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __50__ACHMonthlyChallengeAwardingSource__startQueries__block_invoke;
  v17[3] = &unk_2784909A8;
  objc_copyWeak(&v18, &location);
  v4 = [v3 initWithUpdateHandler:v17];
  summaryQuery = self->_summaryQuery;
  self->_summaryQuery = v4;

  v6 = objc_alloc(MEMORY[0x277CCCFF0]);
  v7 = [MEMORY[0x277CCD8D8] workoutType];
  v8 = [MEMORY[0x277CCD840] latestAnchor];
  v9 = [v6 initWithType:v7 predicate:0 anchor:v8 limit:0 resultsHandler:&__block_literal_global_0];
  workoutQuery = self->_workoutQuery;
  self->_workoutQuery = v9;

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __50__ACHMonthlyChallengeAwardingSource__startQueries__block_invoke_3;
  v15[3] = &unk_278490848;
  objc_copyWeak(&v16, &location);
  [(HKAnchoredObjectQuery *)self->_workoutQuery setUpdateHandler:v15];
  v11 = [(ACHMonthlyChallengeAwardingSource *)self healthStore];
  v12 = [(ACHMonthlyChallengeAwardingSource *)self summaryQuery];
  [v11 executeQuery:v12];

  v13 = [(ACHMonthlyChallengeAwardingSource *)self healthStore];
  v14 = [(ACHMonthlyChallengeAwardingSource *)self workoutQuery];
  [v13 executeQuery:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __50__ACHMonthlyChallengeAwardingSource__startQueries__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v18 = a2;
  v13 = a3;
  v14 = a5;
  v15 = a7;
  if (v13)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained currentActivitySummaryQueryDidUpdateTodayActivitySummary:v13 changedFields:a4];
  }

  if (v14)
  {
    v17 = objc_loadWeakRetained((a1 + 32));
    [v17 currentActivitySummaryQueryDidUpdateYesterdayActivitySummary:v14 changedFields:a6];
  }
}

void __50__ACHMonthlyChallengeAwardingSource__startQueries__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained workoutsAdded:v4];
}

- (BOOL)isAppleWatch
{
  v3 = [(ACHMonthlyChallengeAwardingSource *)self overrideIsAppleWatch];

  if (v3)
  {
    v4 = [(ACHMonthlyChallengeAwardingSource *)self overrideIsAppleWatch];
    v5 = [v4 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x277CCDD30] sharedBehavior];
    v5 = [v4 isAppleWatch];
  }

  v6 = v5;

  return v6;
}

- (id)earnedInstancesForHistoricalInterval:(id)a3 error:(id *)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = ACHLogMonthlyChallenges();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v5;
    _os_log_impl(&dword_221DDC000, v6, OS_LOG_TYPE_DEFAULT, "MonthlyChallengeAwardingSource querying for earned instances in interval: %{public}@", &v10, 0xCu);
  }

  v7 = [(ACHMonthlyChallengeAwardingSource *)self _earnedInstancesForInterval:v5];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)currentActivitySummaryQueryDidUpdateTodayActivitySummary:(id)a3 changedFields:(unint64_t)a4
{
  v5 = [(ACHMonthlyChallengeAwardingSource *)self progressEngine:a3];
  [v5 requestProgressUpdateForProgressProvider:self];

  if (ACHConfigurationSupportsIncrementalEvaluationWithIsAppleWatch([(ACHMonthlyChallengeAwardingSource *)self isAppleWatch]))
  {
    v6 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_221DDC000, v6, OS_LOG_TYPE_DEFAULT, "MonthlyChallengeAwardingProvider found today summary updated, requesting incremental evaluation", v7, 2u);
    }

    [(ACHMonthlyChallengeAwardingSource *)self _requestIncrementalEvaluation];
  }
}

- (void)currentActivitySummaryQueryDidUpdateYesterdayActivitySummary:(id)a3 changedFields:(unint64_t)a4
{
  v5 = [(ACHMonthlyChallengeAwardingSource *)self progressEngine:a3];
  [v5 requestProgressUpdateForProgressProvider:self];

  if (ACHConfigurationSupportsIncrementalEvaluationWithIsAppleWatch([(ACHMonthlyChallengeAwardingSource *)self isAppleWatch]))
  {
    v6 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_221DDC000, v6, OS_LOG_TYPE_DEFAULT, "MonthlyChallengeAwardingProvider found yesterday summary updated, requesting incremental evaluation", v7, 2u);
    }

    [(ACHMonthlyChallengeAwardingSource *)self _requestIncrementalEvaluation];
  }
}

- (void)workoutsAdded:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ACHMonthlyChallengeAwardingSource *)self progressEngine];
  [v5 requestProgressUpdateForProgressProvider:self];

  if (ACHConfigurationSupportsIncrementalEvaluationWithIsAppleWatch([(ACHMonthlyChallengeAwardingSource *)self isAppleWatch]))
  {
    v6 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = [v4 count];
      _os_log_impl(&dword_221DDC000, v6, OS_LOG_TYPE_DEFAULT, "MonthlyChallengeAwardingProvider found %lu new workout samples, requesting incremental evaluation", &v8, 0xCu);
    }

    [(ACHMonthlyChallengeAwardingSource *)self _requestIncrementalEvaluation];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)providesProgressForTemplate:(id)a3
{
  v3 = a3;
  if (ACHTemplateIsMonthlyChallenge())
  {
    v4 = [v3 uniqueName];
    v5 = [v4 componentsSeparatedByString:@"_"];

    if ([v5 count] == 3)
    {
      v6 = [v5 objectAtIndexedSubscript:1];
      v7 = [v6 integerValue];

      v8 = [v5 objectAtIndexedSubscript:2];
      v9 = [v8 integerValue];

      v10 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
      v11 = *MEMORY[0x277CE8B28];
      v12 = [MEMORY[0x277CBEAA8] date];
      v13 = [v10 components:v11 fromDate:v12];

      v14 = v7 == [v13 year] && v9 == objc_msgSend(v13, "month");
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)requestAchievementProgressUpdatesForTemplates:(id)a3
{
  v4 = a3;
  v5 = [(ACHMonthlyChallengeAwardingSource *)self internalQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__ACHMonthlyChallengeAwardingSource_requestAchievementProgressUpdatesForTemplates___block_invoke;
  v7[3] = &unk_278490898;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __83__ACHMonthlyChallengeAwardingSource_requestAchievementProgressUpdatesForTemplates___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v2 = objc_alloc_init(MEMORY[0x277CE8D40]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v8 = [v2 validateTemplate:{v7, v17}];
        if ([v8 isValid])
        {
          v9 = [*(a1 + 40) _queue_goalQuantityForTemplate:v7];
          v10 = [*(a1 + 40) _queue_progressQuantityForTemplate:v7];
          v11 = objc_alloc(MEMORY[0x277CE8CC0]);
          v12 = [v7 uniqueName];
          v13 = [v11 initWithTemplateUniqueName:v12 progressQuantity:v10 goalQuantity:v9];

          [v17 addObject:v13];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v4);
  }

  v14 = [*(a1 + 40) progressEngine];
  v15 = [v17 copy];
  [v14 processAchievementProgressUpdates:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_queue_progressQuantityForTemplate:(id)a3
{
  v4 = a3;
  v5 = [(ACHMonthlyChallengeAwardingSource *)self _evaluationEnvironmentForTemplate:v4];
  v6 = [v4 graceProgressExpression];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [v4 progressExpression];
  }

  v9 = v8;

  v10 = [MEMORY[0x277CCA9C0] expressionWithFormat:v9];
  v11 = [v10 expressionValueWithObject:v5 context:0];
  v12 = [v4 canonicalUnit];
  v13 = ACHHKQuantityWithValueAndUnit();

  return v13;
}

- (id)_queue_goalQuantityForTemplate:(id)a3
{
  v4 = a3;
  v5 = [(ACHMonthlyChallengeAwardingSource *)self _evaluationEnvironmentForTemplate:v4];
  v6 = [v4 graceGoalExpression];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [v4 goalExpression];
  }

  v9 = v8;

  v10 = [MEMORY[0x277CCA9C0] expressionWithFormat:v9];
  v11 = [v10 expressionValueWithObject:v5 context:0];
  v12 = [v4 canonicalUnit];
  v13 = ACHHKQuantityWithValueAndUnit();

  return v13;
}

- (id)_evaluationEnvironmentForTemplate:(id)a3
{
  v4 = MEMORY[0x277CE8D30];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 availabilityStart];
  v8 = [v5 availabilityEnd];
  v9 = [v6 initWithStartDateComponents:v7 endDateComponents:v8];

  v10 = [(ACHMonthlyChallengeAwardingSource *)self _evaluationEnvironmentForTemplate:v5 andDateComponentInterval:v9];

  return v10;
}

- (id)_evaluationEnvironmentForTemplate:(id)a3 andDateComponentInterval:(id)a4
{
  v5 = a4;
  v6 = [ACHMonthlyChallengeEvaluationEnvironment alloc];
  v7 = [(ACHMonthlyChallengeAwardingSource *)self monthlyDataSource];
  v8 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v9 = [(ACHMonthlyChallengeEvaluationEnvironment *)v6 initWithMonthlyChallengeDataSource:v7 dateComponentInterval:v5 calendar:v8];

  return v9;
}

- (id)_earnedInstancesForInterval:(id)a3
{
  v68 = *MEMORY[0x277D85DE8];
  v45 = a3;
  v46 = [MEMORY[0x277CBEB58] set];
  v3 = [(ACHMonthlyChallengeAwardingSource *)self _monthlyChallengeTemplatesForHistoricalInterval:v45];
  v4 = ACHLogMonthlyChallenges();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v63 = [v3 count];
    v64 = 2114;
    v65 = v45;
    v66 = 2114;
    v67 = v3;
    _os_log_impl(&dword_221DDC000, v4, OS_LOG_TYPE_DEFAULT, "Found %lu monthly templates for interval %{public}@: %{public}@", buf, 0x20u);
  }

  v55 = objc_alloc_init(MEMORY[0x277CE8D40]);
  v44 = [MEMORY[0x277CBEAA8] date];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v3;
  v56 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (!v56)
  {
    v51 = 0;
    goto LABEL_42;
  }

  v51 = 0;
  v54 = *v58;
  do
  {
    for (i = 0; i != v56; ++i)
    {
      if (*v58 != v54)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v57 + 1) + 8 * i);
      v7 = objc_autoreleasePoolPush();
      v8 = [v55 validateTemplate:v6];
      if ([v8 isValid])
      {
        v9 = [(ACHMonthlyChallengeAwardingSource *)self _evaluationEnvironmentForTemplate:v6];
        v10 = [v6 gracePredicate];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = [v6 predicate];
        }

        v14 = v12;

        v15 = [MEMORY[0x277CCAC30] predicateWithFormat:v14];
        v16 = [v15 evaluateWithObject:v9];

        if (!v16)
        {
          goto LABEL_37;
        }

        v17 = ACHLogMonthlyChallenges();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v6 uniqueName];
          *buf = 138543618;
          v63 = v18;
          v64 = 2114;
          v65 = v6;
          _os_log_impl(&dword_221DDC000, v17, OS_LOG_TYPE_DEFAULT, "Template %{public}@ evaluated to true for monthly challenge; full template: %{public}@", buf, 0x16u);
        }

        v19 = [(ACHMonthlyChallengeAwardingSource *)self _earnedDateComponentsForTemplate:v6];
        if (v19)
        {
          v53 = objc_alloc_init(MEMORY[0x277CE8D38]);
          v20 = [v6 uniqueName];
          [v53 setTemplateUniqueName:v20];

          [v53 setEarnedDateComponents:v19];
          v21 = [v6 graceValueExpression];
          v22 = v21;
          if (v21)
          {
            v50 = v21;
          }

          else
          {
            v50 = [v6 valueExpression];
          }

          v25 = [v6 canonicalUnit];
          if (v25)
          {
            v26 = v50 == 0;
          }

          else
          {
            v26 = 1;
          }

          v27 = !v26;

          if (v27)
          {
            v28 = objc_alloc(MEMORY[0x277CE8D30]);
            v29 = [v6 availabilityStart];
            v48 = [v28 initWithStartDateComponents:v29 endDateComponents:v19];

            v47 = [(ACHMonthlyChallengeAwardingSource *)self _evaluationEnvironmentForTemplate:v6 andDateComponentInterval:v48];
            v30 = [MEMORY[0x277CCA9C0] expressionWithFormat:v50];
            v31 = [v30 expressionValueWithObject:v47 context:0];
            if (v31)
            {
              v32 = MEMORY[0x277CCD7E8];
              v33 = [v6 canonicalUnit];
              [v31 doubleValue];
              v34 = [v32 quantityWithUnit:v33 doubleValue:?];
              [v53 setValue:v34];
            }
          }

          [v46 addObject:v53];
          v35 = ACHLogMonthlyChallenges();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = [v6 uniqueName];
            *buf = 138543618;
            v63 = v36;
            v64 = 2112;
            v65 = v53;
            _os_log_impl(&dword_221DDC000, v35, OS_LOG_TYPE_DEFAULT, "Earned instance created for template %{public}@: %@", buf, 0x16u);
          }

LABEL_37:
          ++v51;
          goto LABEL_38;
        }

        v23 = ACHLogMonthlyChallenges();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [v6 uniqueName];
          *buf = 138412290;
          v63 = v24;
          _os_log_impl(&dword_221DDC000, v23, OS_LOG_TYPE_DEFAULT, "Unable to determine earned date components for %@, not creating earned instance.", buf, 0xCu);
        }
      }

      else
      {
        v9 = ACHLogAwardEngine();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v6 uniqueName];
          *buf = 138412290;
          v63 = v13;
          _os_log_impl(&dword_221DDC000, v9, OS_LOG_TYPE_DEFAULT, "Template has invalid predicates, skipping: %@", buf, 0xCu);
        }
      }

LABEL_38:

      objc_autoreleasePoolPop(v7);
    }

    v56 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
  }

  while (v56);
LABEL_42:

  v37 = [MEMORY[0x277CBEAA8] date];
  [v37 timeIntervalSinceReferenceDate];
  v39 = v38;
  [v44 timeIntervalSinceReferenceDate];
  [ACHDMetricsReporter reportProcessingMetricsWithSourceType:2 intervalProcessed:v45 processingDuration:v51 recordsProcessed:0 error:v39 - v40];
  v41 = [v46 copy];

  v42 = *MEMORY[0x277D85DE8];

  return v41;
}

- (id)_earnedDateComponentsForTemplate:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v36 = objc_alloc_init(MEMORY[0x277CE8D40]);
  v37 = [v36 validateTemplate:v3];
  if ([v37 isValid])
  {
    v39 = [v3 availabilityStart];
    v4 = [v3 availabilityEnd];
    v5 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 uniqueName];
      *buf = 138412290;
      v41 = v6;
      _os_log_impl(&dword_221DDC000, v5, OS_LOG_TYPE_DEFAULT, "[Earned Instance Date: %@] Determining earned instance date", buf, 0xCu);
    }

    v8 = __70__ACHMonthlyChallengeAwardingSource__earnedDateComponentsForTemplate___block_invoke(v7, v39, v4);
    if ([0 isEqual:v8])
    {
      v9 = 0;
    }

    else
    {
      v17 = 0;
      do
      {
        v18 = objc_alloc(MEMORY[0x277CE8D30]);
        v19 = [v3 availabilityStart];
        v20 = [v18 initWithStartDateComponents:v19 endDateComponents:v8];

        v21 = [(ACHMonthlyChallengeAwardingSource *)self _evaluationEnvironmentForTemplate:v3 andDateComponentInterval:v20];
        v22 = ACHLogMonthlyChallenges();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [v3 uniqueName];
          *buf = 138412546;
          v41 = v23;
          v42 = 2112;
          v43 = v20;
          _os_log_impl(&dword_221DDC000, v22, OS_LOG_TYPE_DEFAULT, "[Earned Instance Date: %@] Evaluating for interval: %@", buf, 0x16u);
        }

        v24 = [v3 gracePredicate];
        v25 = v24;
        if (v24)
        {
          v26 = v24;
        }

        else
        {
          v26 = [v3 predicate];
        }

        v27 = v26;

        v28 = [MEMORY[0x277CCAC30] predicateWithFormat:v27];
        v29 = [v28 evaluateWithObject:v21];

        if (v29)
        {
          v30 = ACHLogMonthlyChallenges();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = [v3 uniqueName];
            *buf = 138412802;
            v41 = v31;
            v42 = 2112;
            v43 = v8;
            v44 = 2112;
            v45 = v39;
            _os_log_impl(&dword_221DDC000, v30, OS_LOG_TYPE_DEFAULT, "[Earned Instance Date: %@] Updating mostRecentEarnedDateComponents to: %@, oldestUnearnedDateComponents = %@", buf, 0x20u);
          }

          v32 = v4;
          v4 = v8;
        }

        else
        {
          v30 = ACHLogMonthlyChallenges();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v33 = [v3 uniqueName];
            *buf = 138412802;
            v41 = v33;
            v42 = 2112;
            v43 = v8;
            v44 = 2112;
            v45 = v4;
            _os_log_impl(&dword_221DDC000, v30, OS_LOG_TYPE_DEFAULT, "[Earned Instance Date: %@] Updating oldestUnearnedDateComponents to: %@, mostRecentEarnedDateComponents = %@", buf, 0x20u);
          }

          v32 = v39;
          v39 = v8;
        }

        v34 = v8;
        v9 = v34;

        v8 = __70__ACHMonthlyChallengeAwardingSource__earnedDateComponentsForTemplate___block_invoke(v35, v39, v4);

        v17 = v9;
      }

      while (([v9 isEqual:v8]& 1) == 0);
    }

    v10 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v3 uniqueName];
      *buf = 138412546;
      v41 = v11;
      v42 = 2112;
      v43 = v4;
      _os_log_impl(&dword_221DDC000, v10, OS_LOG_TYPE_DEFAULT, "[Earned Instance Date: %@] Determined earned date is: %@", buf, 0x16u);
    }

    v12 = v4;
    v13 = v39;
  }

  else
  {
    v14 = ACHLogMonthlyChallenges();
    v13 = v14;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(ACHMonthlyChallengeAwardingSource *)v3 _earnedDateComponentsForTemplate:v14];
      v12 = 0;
      v13 = v14;
    }

    else
    {
      v12 = 0;
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v12;
}

id __70__ACHMonthlyChallengeAwardingSource__earnedDateComponentsForTemplate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 day];
  v7 = [v4 day];

  v8 = (v7 + v6) / 2;
  v9 = [v5 copy];

  [v9 setDay:v8];

  return v9;
}

- (id)_monthlyChallengeTemplatesForHistoricalInterval:(id)a3
{
  v4 = a3;
  v5 = [(ACHMonthlyChallengeAwardingSource *)self templateStore];
  v6 = [v5 allTemplates];

  v7 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v8 = [v4 startDate];
  v9 = [v7 startOfDayForDate:v8];

  v10 = objc_alloc(MEMORY[0x277CCA970]);
  v11 = [v4 endDate];

  v12 = [v10 initWithStartDate:v9 endDate:v11];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __85__ACHMonthlyChallengeAwardingSource__monthlyChallengeTemplatesForHistoricalInterval___block_invoke;
  v17[3] = &unk_2784909F0;
  v18 = v7;
  v19 = v12;
  v13 = v12;
  v14 = v7;
  v15 = [v6 hk_filter:v17];

  return v15;
}

uint64_t __85__ACHMonthlyChallengeAwardingSource__monthlyChallengeTemplatesForHistoricalInterval___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (ACHTemplateIsMonthlyChallenge() && ([v3 availabilityStart], (v4 = objc_claimAutoreleasedReturnValue()) != 0) && (v5 = v4, objc_msgSend(v3, "availabilityEnd"), v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = *(a1 + 32);
    v8 = [v3 availabilityStart];
    v9 = [v7 dateFromComponents:v8];

    v10 = *(a1 + 32);
    v11 = [v3 availabilityEnd];
    v12 = [v10 dateFromComponents:v11];

    v13 = 0;
    if (v9 && v12)
    {
      v14 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v9 endDate:v12];
      v13 = [*(a1 + 40) intersectsDateInterval:v14];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_requestIncrementalEvaluation
{
  v3 = [(ACHMonthlyChallengeAwardingSource *)self engine];
  v4 = [(ACHMonthlyChallengeAwardingSource *)self uniqueName];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__ACHMonthlyChallengeAwardingSource__requestIncrementalEvaluation__block_invoke;
  v5[3] = &unk_278490A18;
  v5[4] = self;
  [v3 requestIncrementalEvaluationForSource:v4 evaluationBlock:v5];
}

id __66__ACHMonthlyChallengeAwardingSource__requestIncrementalEvaluation__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ACHLogMonthlyChallenges();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&dword_221DDC000, v4, OS_LOG_TYPE_DEFAULT, "MonthlyChallengeAwardingProvider starting incremental evaluation for date range: %{public}@", &v8, 0xCu);
  }

  v5 = [*(a1 + 32) _earnedInstancesForInterval:v3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (ACHEarnedInstanceAwardingEngine)engine
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  return WeakRetained;
}

- (ACHAchievementProgressEngine)progressEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_progressEngine);

  return WeakRetained;
}

- (ACHTemplateStore)templateStore
{
  WeakRetained = objc_loadWeakRetained(&self->_templateStore);

  return WeakRetained;
}

- (ACHEarnedInstanceStore)earnedInstanceStore
{
  WeakRetained = objc_loadWeakRetained(&self->_earnedInstanceStore);

  return WeakRetained;
}

- (ACHMonthlyChallengeDataSource)monthlyDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_monthlyDataSource);

  return WeakRetained;
}

- (void)_earnedDateComponentsForTemplate:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 uniqueName];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_221DDC000, a2, OS_LOG_TYPE_ERROR, "[Earned Instance Date: %@] Template is invalid, skipping search.", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end