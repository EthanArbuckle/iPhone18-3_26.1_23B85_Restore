@interface ACHActivityAwardingSource
- (ACHAchievementProgressEngine)progressEngine;
- (ACHActivityAwardingSource)initWithHealthStore:(id)store dataStore:(id)dataStore templateStore:(id)templateStore pauseRingsCoordinator:(id)coordinator awardingEngine:(id)engine progressEngine:(id)progressEngine;
- (ACHDataStore)dataStore;
- (ACHEarnedInstanceAwardingEngine)engine;
- (ACHTemplateStore)templateStore;
- (BOOL)_hasMetGoalForTemplate:(id)template andActivitySummary:(id)summary;
- (BOOL)_isAchievementStillEarnableForTemplate:(id)template andProgressEnvironment:(id)environment;
- (BOOL)isAppleWatch;
- (BOOL)providesProgressForTemplate:(id)template;
- (NSArray)dataStorePropertyKeys;
- (NSDate)validThroughDate;
- (NSDictionary)dataStoreProperties;
- (NSString)watchCountryCode;
- (id)_progressUpdateForTemplate:(id)template environment:(id)environment;
- (id)_queue_evaluateTriggers:(unint64_t)triggers activitySummary:(id)summary templates:(id)templates shouldLog:(BOOL)log;
- (id)_queue_goalQuantityForTemplate:(id)template environment:(id)environment;
- (id)_queue_progressQuantityForTemplate:(id)template environment:(id)environment;
- (id)currentDate;
- (id)earnedInstancesForHistoricalInterval:(id)interval error:(id *)error;
- (unint64_t)_queue_triggersWithChangedSummaryFields:(unint64_t)fields dataProvider:(id)provider;
- (unsigned)_creatorDevice;
- (void)_queue_startCurrentSummaryQuery;
- (void)_queue_updateDataProvider:(id)provider forDateInterval:(id)interval awardingBlock:(id)block error:(id *)error;
- (void)_queue_updateProgressDataProviderIfNeeded;
- (void)_runIncrementallyForChangedSummaryFields:(unint64_t)fields;
- (void)currentActivitySummaryQueryDidUpdateTodayActivitySummary:(id)summary changedFields:(unint64_t)fields;
- (void)currentActivitySummaryQueryDidUpdateYesterdayActivitySummary:(id)summary changedFields:(unint64_t)fields;
- (void)dataStoreDidClearAllProperties:(id)properties completion:(id)completion;
- (void)requestAchievementProgressUpdatesForTemplates:(id)templates;
- (void)setDataStoreProperties:(id)properties;
- (void)startUp;
@end

@implementation ACHActivityAwardingSource

- (id)currentDate
{
  currentDateOverride = self->_currentDateOverride;
  if (currentDateOverride)
  {
    date = currentDateOverride;
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
  }

  return date;
}

- (ACHAchievementProgressEngine)progressEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_progressEngine);

  return WeakRetained;
}

- (ACHActivityAwardingSource)initWithHealthStore:(id)store dataStore:(id)dataStore templateStore:(id)templateStore pauseRingsCoordinator:(id)coordinator awardingEngine:(id)engine progressEngine:(id)progressEngine
{
  storeCopy = store;
  dataStoreCopy = dataStore;
  templateStoreCopy = templateStore;
  coordinatorCopy = coordinator;
  engineCopy = engine;
  progressEngineCopy = progressEngine;
  v41.receiver = self;
  v41.super_class = ACHActivityAwardingSource;
  v21 = [(ACHActivityAwardingSource *)&v41 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_healthStore, store);
    objc_storeWeak(&v22->_dataStore, dataStoreCopy);
    objc_storeWeak(&v22->_templateStore, templateStoreCopy);
    objc_storeStrong(&v22->_pauseRingsCoordinator, coordinator);
    objc_storeWeak(&v22->_engine, engineCopy);
    objc_storeWeak(&v22->_progressEngine, progressEngineCopy);
    v23 = objc_alloc_init(ACHActivityAwardingDataProvider);
    dataProvider = v22->_dataProvider;
    v22->_dataProvider = v23;

    v25 = objc_alloc_init(ACHActivityAwardingDataProvider);
    progressDataProvider = v22->_progressDataProvider;
    v22->_progressDataProvider = v25;

    v27 = [[ACHActivityTriggerGenerator alloc] initWithPauseRingsCoordinator:coordinatorCopy];
    triggerGenerator = v22->_triggerGenerator;
    v22->_triggerGenerator = v27;

    v29 = [[ACHActivityAwardingEnvironment alloc] initWithDataProvider:v22->_dataProvider];
    environment = v22->_environment;
    v22->_environment = v29;

    v31 = [[ACHActivityAwardingEnvironment alloc] initWithDataProvider:v22->_progressDataProvider];
    progressEnvironment = v22->_progressEnvironment;
    v22->_progressEnvironment = v31;

    v33 = HKCreateSerialDispatchQueue();
    internalQueue = v22->_internalQueue;
    v22->_internalQueue = v33;

    hk_gregorianCalendarWithUTCTimeZone = [MEMORY[0x277CBEA80] hk_gregorianCalendarWithUTCTimeZone];
    gregorianUTCCalendar = v22->_gregorianUTCCalendar;
    v22->_gregorianUTCCalendar = hk_gregorianCalendarWithUTCTimeZone;

    v37 = [[ACHActivitySummaryIterator alloc] initWithHealthStore:storeCopy shouldIncludePrivateProperties:1];
    activitySummaryIterator = v22->_activitySummaryIterator;
    v22->_activitySummaryIterator = v37;

    WeakRetained = objc_loadWeakRetained(&v22->_dataStore);
    [WeakRetained addPropertyProvider:v22];

    [(ACHActivityAwardingSource *)v22 startUp];
  }

  return v22;
}

- (void)startUp
{
  if (![(ACHActivityAwardingSource *)self isAppleWatch])
  {
    internalQueue = [(ACHActivityAwardingSource *)self internalQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__ACHActivityAwardingSource_startUp__block_invoke;
    block[3] = &unk_278490870;
    block[4] = self;
    dispatch_async(internalQueue, block);
  }
}

- (BOOL)isAppleWatch
{
  overrideIsAppleWatch = [(ACHActivityAwardingSource *)self overrideIsAppleWatch];

  if (overrideIsAppleWatch)
  {
    overrideIsAppleWatch2 = [(ACHActivityAwardingSource *)self overrideIsAppleWatch];
    bOOLValue = [overrideIsAppleWatch2 BOOLValue];
  }

  else
  {
    overrideIsAppleWatch2 = [MEMORY[0x277CCDD30] sharedBehavior];
    bOOLValue = [overrideIsAppleWatch2 isAppleWatch];
  }

  v6 = bOOLValue;

  return v6;
}

- (NSString)watchCountryCode
{
  overrideWatchCountryCode = [(ACHActivityAwardingSource *)self overrideWatchCountryCode];

  if (overrideWatchCountryCode)
  {
    [(ACHActivityAwardingSource *)self overrideWatchCountryCode];
  }

  else
  {
    ACHPairedWatchCountryCode();
  }
  v4 = ;

  return v4;
}

- (unsigned)_creatorDevice
{
  if ([(ACHActivityAwardingSource *)self isAppleWatch])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)_queue_startCurrentSummaryQuery
{
  internalQueue = [(ACHActivityAwardingSource *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  currentActivitySummaryQuery = [(ACHActivityAwardingSource *)self currentActivitySummaryQuery];

  if (!currentActivitySummaryQuery)
  {
    objc_initWeak(&location, self);
    v5 = objc_alloc(MEMORY[0x277CE8D28]);
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __60__ACHActivityAwardingSource__queue_startCurrentSummaryQuery__block_invoke;
    v12 = &unk_2784909A8;
    objc_copyWeak(&v13, &location);
    v6 = [v5 initWithUpdateHandler:&v9];
    [(ACHActivityAwardingSource *)self setCurrentActivitySummaryQuery:v6, v9, v10, v11, v12];

    [(ACHActivityAwardingSource *)self setIsObservingSummaryUpdates:1];
    healthStore = [(ACHActivityAwardingSource *)self healthStore];
    currentActivitySummaryQuery2 = [(ACHActivityAwardingSource *)self currentActivitySummaryQuery];
    [healthStore executeQuery:currentActivitySummaryQuery2];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __60__ACHActivityAwardingSource__queue_startCurrentSummaryQuery__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v18 = a2;
  v13 = a3;
  v14 = a5;
  v15 = a7;
  if (v13 && a4)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained currentActivitySummaryQueryDidUpdateTodayActivitySummary:v13 changedFields:a4];
  }

  if (v14 && a6)
  {
    v17 = objc_loadWeakRetained((a1 + 32));
    [v17 currentActivitySummaryQueryDidUpdateYesterdayActivitySummary:v14 changedFields:a6];
  }
}

- (void)_queue_updateDataProvider:(id)provider forDateInterval:(id)interval awardingBlock:(id)block error:(id *)error
{
  providerCopy = provider;
  intervalCopy = interval;
  blockCopy = block;
  internalQueue = [(ACHActivityAwardingSource *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  gregorianUTCCalendar = [(ACHActivityAwardingSource *)self gregorianUTCCalendar];
  startDate = [intervalCopy startDate];
  v15 = [gregorianUTCCalendar hk_activitySummaryDateComponentsFromDate:startDate];

  gregorianUTCCalendar2 = [(ACHActivityAwardingSource *)self gregorianUTCCalendar];
  endDate = [intervalCopy endDate];
  v18 = [gregorianUTCCalendar2 hk_activitySummaryDateComponentsFromDate:endDate];

  v34 = v18;
  v19 = [objc_alloc(MEMORY[0x277CE8D30]) initWithStartDateComponents:v15 endDateComponents:v18];
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x3032000000;
  v54[3] = __Block_byref_object_copy__26;
  v54[4] = __Block_byref_object_dispose__26;
  v55 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__26;
  v52 = __Block_byref_object_dispose__26;
  v53 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  date = [MEMORY[0x277CBEAA8] date];
  activitySummaryIterator = [(ACHActivityAwardingSource *)self activitySummaryIterator];
  progressDataProvider = [(ACHActivityAwardingSource *)self progressDataProvider];
  v23 = progressDataProvider == providerCopy;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __91__ACHActivityAwardingSource__queue_updateDataProvider_forDateInterval_awardingBlock_error___block_invoke;
  v37[3] = &unk_2784929E8;
  v24 = providerCopy;
  v38 = v24;
  selfCopy = self;
  v41 = v54;
  v43 = 16398;
  v25 = blockCopy;
  v40 = v25;
  v42 = &v44;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __91__ACHActivityAwardingSource__queue_updateDataProvider_forDateInterval_awardingBlock_error___block_invoke_309;
  v36[3] = &unk_278490958;
  v36[4] = &v48;
  [activitySummaryIterator enumerateActivitySummariesForDateComponentInterval:v19 includeNilSummaries:v23 handler:v37 errorHandler:v36];

  date2 = [MEMORY[0x277CBEAA8] date];
  dataProvider = [(ACHActivityAwardingSource *)self dataProvider];

  if (dataProvider == v24)
  {
    [(ACHActivityAwardingSource *)self _queue_updateProgressDataProviderIfNeeded];
    [date2 timeIntervalSinceReferenceDate];
    v29 = v28;
    [date timeIntervalSinceReferenceDate];
    [ACHDMetricsReporter reportProcessingMetricsWithSourceType:0 intervalProcessed:intervalCopy processingDuration:v45[3] recordsProcessed:v49[5] error:v29 - v30];
  }

  v31 = v49[5];
  v32 = v31;
  if (v31)
  {
    if (error)
    {
      v33 = v31;
      *error = v32;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);

  _Block_object_dispose(v54, 8);
}

void __91__ACHActivityAwardingSource__queue_updateDataProvider_forDateInterval_awardingBlock_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  v9 = [*(a1 + 32) properties];
  v10 = [v9 storeValuesValidBeforeSummaryIndex];
  v11 = [v6 _activitySummaryIndex];

  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (v6)
  {
    if (v13 == v12[13] && v10 >= v11)
    {
      goto LABEL_23;
    }
  }

  v15 = *(*(a1 + 56) + 8);
  v16 = *(v15 + 40);
  if (v6 && !v16)
  {
    v17 = [v12 dataProvider];

    v18 = *(*(a1 + 56) + 8);
    if (v13 == v17 && v10 >= v11)
    {
      objc_storeStrong((v18 + 40), a2);
      v19 = ACHLogAwardEngine();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v34 = 0;
        _os_log_impl(&dword_221DDC000, v19, OS_LOG_TYPE_DEFAULT, "[ACHActivityAwardingSource] Yesterday's summary has already been processed for the data provider, ignoring.", v34, 2u);
      }

      [*(a1 + 32) setLastCheckedIndex:{objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "_activitySummaryIndex")}];
      goto LABEL_23;
    }

    v16 = *(v18 + 40);
    v13 = *(a1 + 32);
    goto LABEL_18;
  }

  if (v6)
  {
LABEL_18:
    [v13 setYesterdayActivitySummary:v16];
    v22 = [*(a1 + 40) activitySummaryIterator];
    v23 = [v22 newEmptyActivitySummaryFromSummary:v6];
    [*(a1 + 32) setTodayActivitySummary:v23];

    v24 = [*(a1 + 40) _queue_triggersWithChangedSummaryFields:*(a1 + 72) dataProvider:*(a1 + 32)];
    v25 = *(a1 + 48);
    if (v25)
    {
      (*(v25 + 16))(v25, v24, *(a1 + 32));
    }

    [*(a1 + 32) updatePreviousPropertiesWithCurrentProperties];
    [*(a1 + 32) setTodayActivitySummary:v6];
    v26 = [*(a1 + 40) _queue_triggersWithChangedSummaryFields:*(a1 + 72) dataProvider:*(a1 + 32)];
    v27 = *(a1 + 48);
    if (v27)
    {
      (*(v27 + 16))(v27, v26, *(a1 + 32));
    }

    v28 = [v6 _activitySummaryIndex];
    v29 = [*(a1 + 32) properties];
    [v29 setStoreValuesValidBeforeSummaryIndex:v28];

    [*(a1 + 32) updatePreviousPropertiesWithCurrentProperties];
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    ++*(*(*(a1 + 64) + 8) + 24);
    goto LABEL_23;
  }

  if (v16)
  {
    v20 = v16;
    v21 = *(v15 + 40);
    *(v15 + 40) = v20;
  }

  else
  {
    v30 = [*(a1 + 32) yesterdayActivitySummary];
    v31 = *(*(a1 + 56) + 8);
    v21 = *(v31 + 40);
    *(v31 + 40) = v30;
  }

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    [*(a1 + 32) setYesterdayActivitySummary:?];
    v32 = [*(a1 + 40) activitySummaryIterator];
    v6 = [v32 newEmptyActivitySummaryFromSummary:*(*(*(a1 + 56) + 8) + 40)];

    [v6 _setActivitySummaryIndex:_HKCacheIndexFromDateComponents()];
    [*(a1 + 32) setTodayActivitySummary:v6];
    [*(a1 + 40) _queue_triggersWithChangedSummaryFields:*(a1 + 72) dataProvider:*(a1 + 32)];
    [*(a1 + 32) updatePreviousPropertiesWithCurrentProperties];
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v6);
  }

  else
  {
    v33 = ACHLogAwardEngine();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      __91__ACHActivityAwardingSource__queue_updateDataProvider_forDateInterval_awardingBlock_error___block_invoke_cold_1(v33);
    }

    v6 = 0;
  }

LABEL_23:
  objc_autoreleasePoolPop(v8);
}

- (id)earnedInstancesForHistoricalInterval:(id)interval error:(id *)error
{
  intervalCopy = interval;
  internalQueue = [(ACHActivityAwardingSource *)self internalQueue];
  dispatch_assert_queue_not_V2(internalQueue);

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__26;
  v25 = __Block_byref_object_dispose__26;
  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  internalQueue2 = [(ACHActivityAwardingSource *)self internalQueue];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __72__ACHActivityAwardingSource_earnedInstancesForHistoricalInterval_error___block_invoke;
  v16 = &unk_278490980;
  selfCopy = self;
  v9 = intervalCopy;
  v18 = v9;
  v19 = &v21;
  errorCopy = error;
  dispatch_sync(internalQueue2, &v13);

  v10 = objc_alloc(MEMORY[0x277CBEB98]);
  v11 = [v10 initWithArray:{v22[5], v13, v14, v15, v16, selfCopy}];

  _Block_object_dispose(&v21, 8);

  return v11;
}

void __72__ACHActivityAwardingSource_earnedInstancesForHistoricalInterval_error___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) watchCountryCode];
  v3 = ACHLogAwardEngine();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    *buf = 138412290;
    v28 = v4;
    _os_log_impl(&dword_221DDC000, v3, OS_LOG_TYPE_DEFAULT, "[ACHActivityAwardingSource] running historical for interval: %@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = [v5 dataProvider];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __72__ACHActivityAwardingSource_earnedInstancesForHistoricalInterval_error___block_invoke_313;
  v24[3] = &unk_278492A10;
  v7 = *(a1 + 40);
  v24[4] = *(a1 + 32);
  v8 = v2;
  v9 = *(a1 + 48);
  v25 = v8;
  v26 = v9;
  v23 = 0;
  [v5 _queue_updateDataProvider:v6 forDateInterval:v7 awardingBlock:v24 error:&v23];
  v10 = v23;

  v11 = ACHLogAwardEngine();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 32) dataProvider];
    v13 = [v12 properties];
    v14 = [v13 dictionaryRepresentation];
    *buf = 138412290;
    v28 = v14;
    _os_log_impl(&dword_221DDC000, v11, OS_LOG_TYPE_DEFAULT, "[ACHActivityAwardingSource] dataprovider properties: %@", buf, 0xCu);
  }

  if (v10)
  {
    v15 = ACHLogAwardEngine();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __72__ACHActivityAwardingSource_earnedInstancesForHistoricalInterval_error___block_invoke_cold_1(v10, v15);
    }

    v16 = *(a1 + 56);
    if (v16)
    {
      v17 = v10;
      *v16 = v10;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  if ([*(*(*(a1 + 48) + 8) + 40) count])
  {
    v18 = ACHLogAwardEngine();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "count")}];
      *buf = 138543362;
      v28 = v19;
      _os_log_impl(&dword_221DDC000, v18, OS_LOG_TYPE_DEFAULT, "Activity source awarded %{public}@ earned instances.", buf, 0xCu);
    }

    if ([*(*(*(a1 + 48) + 8) + 40) count] <= 0xA)
    {
      v20 = [*(*(*(a1 + 48) + 8) + 40) hk_map:&__block_literal_global_25];
      v21 = ACHLogAwardEngine();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v20;
        _os_log_impl(&dword_221DDC000, v21, OS_LOG_TYPE_DEFAULT, "Activity source awarded earned instances with unique names: %@.", buf, 0xCu);
      }
    }
  }

  if ([*(a1 + 32) isAppleWatch] && (objc_msgSend(*(a1 + 32), "isObservingSummaryUpdates") & 1) == 0)
  {
    [*(a1 + 32) _queue_startCurrentSummaryQuery];
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __72__ACHActivityAwardingSource_earnedInstancesForHistoricalInterval_error___block_invoke_313(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [v12 todayActivitySummary];
  v7 = [v6 _gregorianDateComponents];
  v8 = [*(a1 + 32) templateStore];
  v9 = [v8 availableTemplatesForDateComponents:v7 countryCode:*(a1 + 40)];
  v10 = [v9 mutableCopy];

  v11 = [*(a1 + 32) _queue_evaluateTriggers:a2 activitySummary:v6 templates:v10 shouldLog:{objc_msgSend(*(a1 + 32), "isAppleWatch")}];
  [*(*(*(a1 + 48) + 8) + 40) addObjectsFromArray:v11];

  objc_autoreleasePoolPop(v5);
}

- (BOOL)providesProgressForTemplate:(id)template
{
  templateCopy = template;
  v4 = +[ACHActivityTriggerGenerator allPossibleTriggers];
  triggers = [templateCopy triggers];

  return (triggers & v4) != 0;
}

- (void)requestAchievementProgressUpdatesForTemplates:(id)templates
{
  templatesCopy = templates;
  internalQueue = [(ACHActivityAwardingSource *)self internalQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__ACHActivityAwardingSource_requestAchievementProgressUpdatesForTemplates___block_invoke;
  v7[3] = &unk_278490898;
  v7[4] = self;
  v8 = templatesCopy;
  v6 = templatesCopy;
  dispatch_async(internalQueue, v7);
}

void __75__ACHActivityAwardingSource_requestAchievementProgressUpdatesForTemplates___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 184);
  v3 = ACHLogAwardEngine();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_221DDC000, v3, OS_LOG_TYPE_DEFAULT, "[ACHActivityAwardingSource] received request for progress update.", buf, 2u);
    }

    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = *(*(a1 + 32) + 112);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = *(a1 + 40);
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(a1 + 32) _progressUpdateForTemplate:*(*(&v15 + 1) + 8 * v10) environment:{v5, v15}];
          if (v11)
          {
            [v3 addObject:v11];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v8);
    }

    v12 = [*(a1 + 32) progressEngine];
    v13 = [v3 copy];
    [v12 processAchievementProgressUpdates:v13];
  }

  else if (v4)
  {
    *buf = 0;
    _os_log_impl(&dword_221DDC000, v3, OS_LOG_TYPE_DEFAULT, "[ACHActivityAwardingSource] received request for progress update but progressDataProvider isn't ready, skipping...", buf, 2u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_progressUpdateForTemplate:(id)template environment:(id)environment
{
  v29 = *MEMORY[0x277D85DE8];
  templateCopy = template;
  environmentCopy = environment;
  v8 = objc_alloc_init(MEMORY[0x277CE8D40]);
  v9 = [v8 validateTemplate:templateCopy];
  if ([v9 isValid])
  {
    v10 = [(ACHActivityAwardingSource *)self _queue_goalQuantityForTemplate:templateCopy environment:environmentCopy];
    v11 = [(ACHActivityAwardingSource *)self _queue_progressQuantityForTemplate:templateCopy environment:environmentCopy];
    if (![(ACHActivityAwardingSource *)self _isAchievementStillEarnableForTemplate:templateCopy andProgressEnvironment:environmentCopy])
    {
      v12 = ACHLogAwardEngine();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        uniqueName = [templateCopy uniqueName];
        v23 = 138412802;
        v24 = uniqueName;
        v25 = 2112;
        v26 = v11;
        v27 = 2112;
        v28 = v10;
        _os_log_impl(&dword_221DDC000, v12, OS_LOG_TYPE_DEFAULT, "[ACHActivityAwardingSource] cannot earn %@ anymore, setting progress and goal to 0 (was: %@/%@)", &v23, 0x20u);
      }

      canonicalUnit = [templateCopy canonicalUnit];
      v15 = ACHHKQuantityWithValueAndUnit();

      canonicalUnit2 = [templateCopy canonicalUnit];
      v17 = ACHHKQuantityWithValueAndUnit();

      v11 = v17;
      v10 = v15;
    }

    v18 = objc_alloc(MEMORY[0x277CE8CC0]);
    uniqueName2 = [templateCopy uniqueName];
    v20 = [v18 initWithTemplateUniqueName:uniqueName2 progressQuantity:v11 goalQuantity:v10];
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_queue_progressQuantityForTemplate:(id)template environment:(id)environment
{
  templateCopy = template;
  environmentCopy = environment;
  hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  currentDate = [(ACHActivityAwardingSource *)self currentDate];
  IsAvailableForCalendarAndDate = ACHTemplateIsAvailableForCalendarAndDate(templateCopy, hk_gregorianCalendar, currentDate);

  if (IsAvailableForCalendarAndDate)
  {
    graceProgressExpression = [templateCopy graceProgressExpression];
    v12 = graceProgressExpression;
    if (graceProgressExpression)
    {
      progressExpression = graceProgressExpression;
    }

    else
    {
      progressExpression = [templateCopy progressExpression];
    }

    canonicalUnit2 = progressExpression;

    v16 = [MEMORY[0x277CCA9C0] expressionWithFormat:canonicalUnit2];
    v17 = [v16 expressionValueWithObject:environmentCopy context:0];
    canonicalUnit = [templateCopy canonicalUnit];
    v15 = ACHHKQuantityWithValueAndUnit();
  }

  else
  {
    canonicalUnit2 = [templateCopy canonicalUnit];
    v15 = ACHHKQuantityWithValueAndUnit();
  }

  return v15;
}

- (id)_queue_goalQuantityForTemplate:(id)template environment:(id)environment
{
  templateCopy = template;
  environmentCopy = environment;
  graceGoalExpression = [templateCopy graceGoalExpression];
  v8 = graceGoalExpression;
  if (graceGoalExpression)
  {
    goalExpression = graceGoalExpression;
  }

  else
  {
    goalExpression = [templateCopy goalExpression];
  }

  v10 = goalExpression;

  v11 = [MEMORY[0x277CCA9C0] expressionWithFormat:v10];
  v12 = [v11 expressionValueWithObject:environmentCopy context:0];

  canonicalUnit = [templateCopy canonicalUnit];
  v14 = ACHHKQuantityWithValueAndUnit();

  return v14;
}

- (BOOL)_isAchievementStillEarnableForTemplate:(id)template andProgressEnvironment:(id)environment
{
  templateCopy = template;
  environmentCopy = environment;
  v8 = objc_alloc_init(MEMORY[0x277CE8D40]);
  v9 = [v8 validateTemplate:templateCopy];
  if ([v9 isValid])
  {
    if (environmentCopy)
    {
      uniqueName = [templateCopy uniqueName];
      progressDataProvider = [(ACHActivityAwardingSource *)self progressDataProvider];
      todayActivitySummary = [progressDataProvider todayActivitySummary];

      graceProgressExpression = [templateCopy graceProgressExpression];
      v13 = graceProgressExpression;
      if (graceProgressExpression)
      {
        progressExpression = graceProgressExpression;
      }

      else
      {
        progressExpression = [templateCopy progressExpression];
      }

      v16 = progressExpression;

      v30 = v16;
      v29 = [MEMORY[0x277CCA9C0] expressionWithFormat:v16];
      v17 = [v29 expressionValueWithObject:environmentCopy context:0];
      currentDate = [(ACHActivityAwardingSource *)self currentDate];
      intValue = [v17 intValue];
      v31 = uniqueName;
      if (([uniqueName isEqualToString:@"PerfectWeekMove"] & 1) != 0 || (objc_msgSend(uniqueName, "isEqualToString:", @"PerfectWeekExercise") & 1) != 0 || (objc_msgSend(uniqueName, "isEqualToString:", @"PerfectWeekStand") & 1) != 0 || objc_msgSend(uniqueName, "isEqualToString:", @"PerfectWeekAll"))
      {
        if ([(ACHActivityAwardingSource *)self _hasMetGoalForTemplate:templateCopy andActivitySummary:todayActivitySummary])
        {
          v20 = 1 - intValue;
        }

        else
        {
          v20 = -intValue;
        }

        gregorianUTCCalendar = self->_gregorianUTCCalendar;
        p_gregorianUTCCalendar = &self->_gregorianUTCCalendar;
        v23 = ACHStartOfFitnessWeekBeforeDateInCalendar();
      }

      else
      {
        v27 = [uniqueName hasPrefix:@"PerfectMonth_"];
        v15 = 1;
        if (!v27)
        {
          goto LABEL_17;
        }

        if ([(ACHActivityAwardingSource *)self _hasMetGoalForTemplate:templateCopy andActivitySummary:todayActivitySummary])
        {
          v20 = 1 - intValue;
        }

        else
        {
          v20 = -intValue;
        }

        v28 = self->_gregorianUTCCalendar;
        p_gregorianUTCCalendar = &self->_gregorianUTCCalendar;
        v23 = [(NSCalendar *)v28 hk_startOfMonthForDate:currentDate];
      }

      v24 = v23;
      v25 = [(NSCalendar *)*p_gregorianUTCCalendar dateByAddingUnit:16 value:v20 toDate:currentDate options:0];
      v15 = [(NSCalendar *)*p_gregorianUTCCalendar isDate:v24 inSameDayAsDate:v25];

LABEL_17:
      goto LABEL_18;
    }

    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

LABEL_18:

  return v15;
}

- (BOOL)_hasMetGoalForTemplate:(id)template andActivitySummary:(id)summary
{
  templateCopy = template;
  if (summary)
  {
    summaryCopy = summary;
    [summaryCopy _activeEnergyCompletionPercentage];
    v8 = v7;
    [summaryCopy _moveMinutesCompletionPercentage];
    v10 = v8 + v9;
    [summaryCopy _exerciseTimeCompletionPercentage];
    v12 = v11;
    [summaryCopy _standHoursCompletionPercentage];
    v14 = v13;

    graceProgressExpression = [templateCopy graceProgressExpression];
    v16 = graceProgressExpression;
    if (graceProgressExpression)
    {
      progressExpression = graceProgressExpression;
    }

    else
    {
      progressExpression = [templateCopy progressExpression];
    }

    v19 = progressExpression;

    v20 = [&unk_283555CB0 indexOfObject:v19];
    v21 = v14 >= 1.0;
    v22 = v10 >= 1.0;
    if (v12 < 1.0)
    {
      v22 = 0;
    }

    if (v14 < 1.0)
    {
      v22 = 0;
    }

    if (v20 != 4)
    {
      v22 = 1;
    }

    if (v20 != 3)
    {
      v21 = v22;
    }

    v23 = v20 != 2 || v12 >= 1.0;
    if (v20 < 2)
    {
      v23 = v10 >= 1.0;
    }

    if (v20 <= 2)
    {
      v18 = v23;
    }

    else
    {
      v18 = v21;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)_queue_updateProgressDataProviderIfNeeded
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_221DDC000, a2, OS_LOG_TYPE_ERROR, "[ACHActivityAwardingSource] Error updating progress data provider: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_runIncrementallyForChangedSummaryFields:(unint64_t)fields
{
  engine = [(ACHActivityAwardingSource *)self engine];
  uniqueName = [(ACHActivityAwardingSource *)self uniqueName];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__ACHActivityAwardingSource__runIncrementallyForChangedSummaryFields___block_invoke;
  v7[3] = &unk_278492A38;
  v7[4] = self;
  v7[5] = fields;
  [engine requestIncrementalEvaluationForSource:uniqueName evaluationBlock:v7];
}

id __70__ACHActivityAwardingSource__runIncrementallyForChangedSummaryFields___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) internalQueue];
  dispatch_assert_queue_not_V2(v4);

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__26;
  v15 = __Block_byref_object_dispose__26;
  v16 = 0;
  v5 = [*(a1 + 32) internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__ACHActivityAwardingSource__runIncrementallyForChangedSummaryFields___block_invoke_2;
  block[3] = &unk_278492028;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  block[5] = &v11;
  block[6] = v7;
  block[4] = v6;
  dispatch_sync(v5, block);

  v8 = [MEMORY[0x277CBEB98] setWithArray:v12[5]];
  _Block_object_dispose(&v11, 8);

  return v8;
}

void __70__ACHActivityAwardingSource__runIncrementallyForChangedSummaryFields___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) todayActivitySummary];
  v3 = [*(a1 + 32) dataProvider];
  [v3 setTodayActivitySummary:v2];

  v4 = [*(a1 + 32) yesterdayActivitySummary];
  v5 = [*(a1 + 32) dataProvider];
  [v5 setYesterdayActivitySummary:v4];

  v22 = [*(a1 + 32) watchCountryCode];
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v8 = [v6 dataProvider];
  v9 = [v6 _queue_triggersWithChangedSummaryFields:v7 dataProvider:v8];

  v10 = [*(a1 + 32) templateStore];
  v11 = [*(a1 + 32) dataProvider];
  v12 = [v11 todayActivitySummary];
  v13 = [v12 _gregorianDateComponents];
  v14 = [v10 availableTemplatesForDateComponents:v13 countryCode:v22];

  v15 = *(a1 + 32);
  v16 = [v15 dataProvider];
  v17 = [v16 todayActivitySummary];
  v18 = [v15 _queue_evaluateTriggers:v9 activitySummary:v17 templates:v14 shouldLog:1];
  v19 = *(*(a1 + 40) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;

  v21 = [*(a1 + 32) dataProvider];
  [v21 updatePreviousPropertiesWithCurrentProperties];

  [*(a1 + 32) _queue_updateProgressDataProviderIfNeeded];
}

- (unint64_t)_queue_triggersWithChangedSummaryFields:(unint64_t)fields dataProvider:(id)provider
{
  fieldsCopy = fields;
  providerCopy = provider;
  internalQueue = [(ACHActivityAwardingSource *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  todayActivitySummary = [providerCopy todayActivitySummary];
  activityMoveMode = [todayActivitySummary activityMoveMode];

  if (activityMoveMode == 2)
  {
    if ((fieldsCopy & 0x4000) != 0)
    {
      triggerGenerator = [(ACHActivityAwardingSource *)self triggerGenerator];
      v11 = [triggerGenerator triggersForNewMoveTimeDataWithDataProvider:providerCopy];
      goto LABEL_8;
    }
  }

  else if ((fieldsCopy & 2) != 0)
  {
    triggerGenerator = [(ACHActivityAwardingSource *)self triggerGenerator];
    v11 = [triggerGenerator triggersForNewMoveDataWithDataProvider:providerCopy];
LABEL_8:
    v12 = v11;

    if ((fieldsCopy & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v12 = 0;
  if ((fieldsCopy & 4) != 0)
  {
LABEL_9:
    triggerGenerator2 = [(ACHActivityAwardingSource *)self triggerGenerator];
    v12 |= [triggerGenerator2 triggersForNewExerciseDataWithDataProvider:providerCopy];
  }

LABEL_10:
  if ((fieldsCopy & 8) != 0)
  {
    triggerGenerator3 = [(ACHActivityAwardingSource *)self triggerGenerator];
    v12 |= [triggerGenerator3 triggersForNewStandDataWithDataProvider:providerCopy];

    if ((v12 & 0x40) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v12 & 0x40) == 0)
  {
    goto LABEL_16;
  }

  todayActivitySummary2 = [providerCopy todayActivitySummary];
  _activitySummaryIndex = [todayActivitySummary2 _activitySummaryIndex];
  properties = [providerCopy properties];
  mostRecentAllGoalsMadeIndex = [properties mostRecentAllGoalsMadeIndex];

  if (_activitySummaryIndex > mostRecentAllGoalsMadeIndex)
  {
    properties2 = [providerCopy properties];
    [properties2 setTotalAllGoalsMade:{objc_msgSend(properties2, "totalAllGoalsMade") + 1}];

    todayActivitySummary3 = [providerCopy todayActivitySummary];
    _activitySummaryIndex2 = [todayActivitySummary3 _activitySummaryIndex];
    properties3 = [providerCopy properties];
    [properties3 setMostRecentAllGoalsMadeIndex:_activitySummaryIndex2];
  }

LABEL_16:

  return v12;
}

- (id)_queue_evaluateTriggers:(unint64_t)triggers activitySummary:(id)summary templates:(id)templates shouldLog:(BOOL)log
{
  logCopy = log;
  v93 = *MEMORY[0x277D85DE8];
  summaryCopy = summary;
  templatesCopy = templates;
  internalQueue = [(ACHActivityAwardingSource *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  if (triggers)
  {
    _gregorianDateComponents = [summaryCopy _gregorianDateComponents];
    environment = [(ACHActivityAwardingSource *)self environment];
    [environment setCurrentDateComponents:_gregorianDateComponents];

    gregorianUTCCalendar = [(ACHActivityAwardingSource *)self gregorianUTCCalendar];
    v72 = _gregorianDateComponents;
    v15 = [gregorianUTCCalendar dateFromComponents:_gregorianDateComponents];

    healthStore = [(ACHActivityAwardingSource *)self healthStore];
    gregorianUTCCalendar2 = [(ACHActivityAwardingSource *)self gregorianUTCCalendar];
    v83 = 0;
    v65 = v15;
    v18 = ACHExperienceTypeForDateWithHealthStore(healthStore, gregorianUTCCalendar2, v15, &v83);
    v19 = v83;
    environment2 = [(ACHActivityAwardingSource *)self environment];
    [environment2 setExperienceType:v18];

    v68 = v19;
    if (v19)
    {
      environment3 = [(ACHActivityAwardingSource *)self environment];
      [environment3 setExperienceType:3];

      v22 = ACHLogAwardEngine();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v86 = v19;
        _os_log_impl(&dword_221DDC000, v22, OS_LOG_TYPE_DEFAULT, "ActivityAwardingSource failed to get date of birth with error %@, defaulting to FIExperienceTypeSimplified", buf, 0xCu);
      }
    }

    v23 = 0x277CCA000uLL;
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __89__ACHActivityAwardingSource__queue_evaluateTriggers_activitySummary_templates_shouldLog___block_invoke;
    v82[3] = &__block_descriptor_40_e38_B24__0__ACHTemplate_8__NSDictionary_16l;
    v82[4] = triggers;
    v24 = [MEMORY[0x277CCAC30] predicateWithBlock:{v82, v65}];
    v25 = [templatesCopy filteredArrayUsingPredicate:v24];

    v71 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (logCopy)
    {
      v26 = ACHLogAwardEngine();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = ACHTriggerOptionsToString();
        v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v25, "count")}];
        *buf = 138413058;
        v86 = v27;
        v87 = 2114;
        v88 = v28;
        v89 = 2114;
        v90 = v72;
        v91 = 2112;
        v92 = summaryCopy;
        _os_log_impl(&dword_221DDC000, v26, OS_LOG_TYPE_DEFAULT, "Activity source is evaluating triggers %@ for %{public}@ templates using activity summary with date %{public}@, values: %@", buf, 0x2Au);
      }
    }

    v67 = summaryCopy;
    v29 = objc_alloc_init(MEMORY[0x277CE8D40]);
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    obj = v25;
    v77 = [obj countByEnumeratingWithState:&v78 objects:v84 count:16];
    if (v77)
    {
      v30 = *v79;
      v70 = logCopy;
      selfCopy = self;
      v74 = *v79;
      v75 = v29;
      do
      {
        v31 = 0;
        do
        {
          if (*v79 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v78 + 1) + 8 * v31);
          v33 = [v29 validateTemplate:v32];
          if ([v33 isValid])
          {
            gracePredicate = [v32 gracePredicate];
            v35 = gracePredicate;
            if (gracePredicate)
            {
              predicate = gracePredicate;
            }

            else
            {
              predicate = [v32 predicate];
            }

            v37 = predicate;

            v39 = [*(v23 + 3120) predicateWithFormat:v37];
            [v39 allowEvaluation];
            environment4 = [(ACHActivityAwardingSource *)self environment];
            v41 = [v39 evaluateWithObject:environment4];

            if (v41)
            {
              if (logCopy)
              {
                v42 = ACHLogAwardEngine();
                if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                {
                  uniqueName = [v32 uniqueName];
                  *buf = 138412546;
                  v86 = uniqueName;
                  v87 = 2112;
                  v88 = v37;
                  _os_log_impl(&dword_221DDC000, v42, OS_LOG_TYPE_DEFAULT, "Template predicate is true, creating earned instance. Template: %@, predicate: %@", buf, 0x16u);
                }

                environment5 = [(ACHActivityAwardingSource *)self environment];
                [environment5 setValueForKeyLoggingEnabled:1];

                v45 = ACHLogAwardEngine();
                if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_221DDC000, v45, OS_LOG_TYPE_DEFAULT, "Evaluating predicate with valueForKey logging enabled:", buf, 2u);
                }

                environment6 = [(ACHActivityAwardingSource *)self environment];
                [v39 evaluateWithObject:environment6];

                environment7 = [(ACHActivityAwardingSource *)self environment];
                [environment7 setValueForKeyLoggingEnabled:0];
              }

              v48 = objc_alloc_init(MEMORY[0x277CE8D38]);
              uniqueName2 = [v32 uniqueName];
              [v48 setTemplateUniqueName:uniqueName2];

              [v72 year];
              [v72 month];
              [v72 day];
              v50 = ACHDateComponentsForYearMonthDay();
              [v48 setEarnedDateComponents:v50];

              graceValueExpression = [v32 graceValueExpression];
              if (graceValueExpression)
              {
                valueExpression = graceValueExpression;
                goto LABEL_31;
              }

              valueExpression = [v32 valueExpression];
              if (valueExpression)
              {
LABEL_31:
                canonicalUnit = [v32 canonicalUnit];

                if (canonicalUnit)
                {
                  v54 = [MEMORY[0x277CCA9C0] expressionWithFormat:valueExpression];
                  environment8 = [(ACHActivityAwardingSource *)selfCopy environment];
                  v56 = [v54 expressionValueWithObject:environment8 context:0];

                  if (v56)
                  {
                    v57 = MEMORY[0x277CCD7E8];
                    canonicalUnit2 = [v32 canonicalUnit];
                    [v56 doubleValue];
                    v59 = [v57 quantityWithUnit:canonicalUnit2 doubleValue:?];
                    [v48 setValue:v59];
                  }
                }

                logCopy = v70;
              }

              self = selfCopy;
              if (logCopy)
              {
                v60 = ACHLogAwardEngine();
                if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v86 = v48;
                  _os_log_impl(&dword_221DDC000, v60, OS_LOG_TYPE_DEFAULT, "Created earned instance: %@", buf, 0xCu);
                }
              }

              [v71 addObject:v48];

              v23 = 0x277CCA000;
            }

            v30 = v74;
            v29 = v75;
            goto LABEL_42;
          }

          v37 = ACHLogAwardEngine();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            uniqueName3 = [v32 uniqueName];
            *buf = 138412290;
            v86 = uniqueName3;
            _os_log_impl(&dword_221DDC000, v37, OS_LOG_TYPE_DEFAULT, "Template has invalid predicates, skipping: %@", buf, 0xCu);
          }

LABEL_42:

          ++v31;
        }

        while (v77 != v31);
        v61 = [obj countByEnumeratingWithState:&v78 objects:v84 count:16];
        v77 = v61;
      }

      while (v61);
    }

    v62 = [v71 copy];
    summaryCopy = v67;
  }

  else
  {
    v62 = objc_alloc_init(MEMORY[0x277CBEA60]);
  }

  v63 = *MEMORY[0x277D85DE8];

  return v62;
}

- (void)currentActivitySummaryQueryDidUpdateTodayActivitySummary:(id)summary changedFields:(unint64_t)fields
{
  summaryCopy = summary;
  if (([summaryCopy _isDataLoading] & 1) == 0)
  {
    internalQueue = [(ACHActivityAwardingSource *)self internalQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __100__ACHActivityAwardingSource_currentActivitySummaryQueryDidUpdateTodayActivitySummary_changedFields___block_invoke;
    block[3] = &unk_278492A80;
    block[4] = self;
    v9 = summaryCopy;
    fieldsCopy = fields;
    dispatch_async(internalQueue, block);
  }
}

uint64_t __100__ACHActivityAwardingSource_currentActivitySummaryQueryDidUpdateTodayActivitySummary_changedFields___block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  [*(a1 + 32) setTodayActivitySummary:*(a1 + 40)];
  v3 = ACHLogAwardEngine();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __100__ACHActivityAwardingSource_currentActivitySummaryQueryDidUpdateTodayActivitySummary_changedFields___block_invoke_cold_1(v2, v3);
  }

  IsAppleWatch = ACHConfigurationSupportsIncrementalEvaluationWithIsAppleWatch([*(a1 + 32) isAppleWatch]);
  v5 = *(a1 + 32);
  if (IsAppleWatch)
  {
    return [v5 _runIncrementallyForChangedSummaryFields:*(a1 + 48)];
  }

  else
  {
    return [v5 _queue_updateProgressDataProviderIfNeeded];
  }
}

- (void)currentActivitySummaryQueryDidUpdateYesterdayActivitySummary:(id)summary changedFields:(unint64_t)fields
{
  summaryCopy = summary;
  if (([summaryCopy _isDataLoading] & 1) == 0)
  {
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __104__ACHActivityAwardingSource_currentActivitySummaryQueryDidUpdateYesterdayActivitySummary_changedFields___block_invoke;
    block[3] = &unk_278492A80;
    block[4] = self;
    v9 = summaryCopy;
    fieldsCopy = fields;
    dispatch_async(internalQueue, block);
  }
}

uint64_t __104__ACHActivityAwardingSource_currentActivitySummaryQueryDidUpdateYesterdayActivitySummary_changedFields___block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  [*(a1 + 32) setYesterdayActivitySummary:*(a1 + 40)];
  v3 = ACHLogAwardEngine();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __104__ACHActivityAwardingSource_currentActivitySummaryQueryDidUpdateYesterdayActivitySummary_changedFields___block_invoke_cold_1(v2, v3);
  }

  IsAppleWatch = ACHConfigurationSupportsIncrementalEvaluationWithIsAppleWatch([*(a1 + 32) isAppleWatch]);
  v5 = *(a1 + 32);
  if (IsAppleWatch)
  {
    return [v5 _runIncrementallyForChangedSummaryFields:*(a1 + 48)];
  }

  else
  {
    return [v5 _queue_updateProgressDataProviderIfNeeded];
  }
}

- (NSDate)validThroughDate
{
  internalQueue = [(ACHActivityAwardingSource *)self internalQueue];
  dispatch_assert_queue_not_V2(internalQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__26;
  v12 = __Block_byref_object_dispose__26;
  v13 = 0;
  internalQueue2 = [(ACHActivityAwardingSource *)self internalQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__ACHActivityAwardingSource_validThroughDate__block_invoke;
  v7[3] = &unk_278491920;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(internalQueue2, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __45__ACHActivityAwardingSource_validThroughDate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataProvider];
  v3 = [v2 properties];
  v4 = [v3 storeValuesValidBeforeSummaryIndex];

  if (v4 >= 1)
  {
    v9 = _HKActivityCacheDateComponentsFromCacheIndex();
    v5 = [*(a1 + 32) gregorianUTCCalendar];
    v6 = [v5 dateFromComponents:v9];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (NSArray)dataStorePropertyKeys
{
  internalQueue = [(ACHActivityAwardingSource *)self internalQueue];
  dispatch_assert_queue_not_V2(internalQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__26;
  v12 = __Block_byref_object_dispose__26;
  v13 = 0;
  internalQueue2 = [(ACHActivityAwardingSource *)self internalQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__ACHActivityAwardingSource_dataStorePropertyKeys__block_invoke;
  v7[3] = &unk_278490FE8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(internalQueue2, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __50__ACHActivityAwardingSource_dataStorePropertyKeys__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) dataProvider];
  v2 = [v6 properties];
  v3 = [v2 dictionaryKeys];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (NSDictionary)dataStoreProperties
{
  internalQueue = [(ACHActivityAwardingSource *)self internalQueue];
  dispatch_assert_queue_not_V2(internalQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__26;
  v12 = __Block_byref_object_dispose__26;
  v13 = 0;
  internalQueue2 = [(ACHActivityAwardingSource *)self internalQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__ACHActivityAwardingSource_dataStoreProperties__block_invoke;
  v7[3] = &unk_278490FE8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(internalQueue2, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __48__ACHActivityAwardingSource_dataStoreProperties__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) dataProvider];
  v2 = [v6 properties];
  v3 = [v2 dictionaryRepresentation];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)setDataStoreProperties:(id)properties
{
  propertiesCopy = properties;
  internalQueue = [(ACHActivityAwardingSource *)self internalQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__ACHActivityAwardingSource_setDataStoreProperties___block_invoke;
  v7[3] = &unk_278490898;
  v7[4] = self;
  v8 = propertiesCopy;
  v6 = propertiesCopy;
  dispatch_async(internalQueue, v7);
}

uint64_t __52__ACHActivityAwardingSource_setDataStoreProperties___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(ACHDataStoreActivityProperties);
  v3 = *(a1 + 32);
  v4 = *(v3 + 184);
  *(v3 + 184) = v2;

  [*(*(a1 + 32) + 184) setValuesForKeysWithDictionary:*(a1 + 40)];
  v5 = [*(a1 + 32) dataProvider];
  v6 = [v5 properties];
  [v6 setValuesForKeysWithDictionary:*(a1 + 40)];

  v7 = *(a1 + 32);

  return [v7 _queue_updateProgressDataProviderIfNeeded];
}

- (void)dataStoreDidClearAllProperties:(id)properties completion:(id)completion
{
  completionCopy = completion;
  internalQueue = [(ACHActivityAwardingSource *)self internalQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__ACHActivityAwardingSource_dataStoreDidClearAllProperties_completion___block_invoke;
  v8[3] = &unk_278491948;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(internalQueue, v8);
}

uint64_t __71__ACHActivityAwardingSource_dataStoreDidClearAllProperties_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataProvider];
  [v2 clearAllProperties];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (ACHEarnedInstanceAwardingEngine)engine
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  return WeakRetained;
}

- (ACHDataStore)dataStore
{
  WeakRetained = objc_loadWeakRetained(&self->_dataStore);

  return WeakRetained;
}

- (ACHTemplateStore)templateStore
{
  WeakRetained = objc_loadWeakRetained(&self->_templateStore);

  return WeakRetained;
}

void __72__ACHActivityAwardingSource_earnedInstancesForHistoricalInterval_error___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_221DDC000, a2, OS_LOG_TYPE_ERROR, "Error updating activity data provider: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __100__ACHActivityAwardingSource_currentActivitySummaryQueryDidUpdateTodayActivitySummary_changedFields___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_221DDC000, a2, OS_LOG_TYPE_DEBUG, "Today summary changed: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __104__ACHActivityAwardingSource_currentActivitySummaryQueryDidUpdateYesterdayActivitySummary_changedFields___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_221DDC000, a2, OS_LOG_TYPE_DEBUG, "Yesterday summary changed: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end