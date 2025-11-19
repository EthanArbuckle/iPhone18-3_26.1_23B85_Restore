@interface HDActivityCacheDataSource
- (BOOL)updateWithError:(id *)a3;
- (HDActivityCacheDataSource)initWithProfile:(id)a3 observedQuantityTypes:(id)a4 updateOperation:(id)a5 rebuildOperation:(id)a6 queue:(id)a7;
- (id).cxx_construct;
- (id)activityCacheStatisticsBuilder:(id)a3 sourceOrderForObjectType:(id)a4;
- (int64_t)localDeviceSourceIdentifier;
- (void)_samplesAddedToWorkoutNotification:(id)a3;
- (void)invalidate;
- (void)pauseUpdates;
- (void)reportTargetDayHeartRateAnalytics;
- (void)resumeUpdates;
- (void)samplesAdded:(id)a3 anchor:(id)a4;
- (void)samplesOfTypesWereRemoved:(id)a3 anchor:(id)a4;
@end

@implementation HDActivityCacheDataSource

- (HDActivityCacheDataSource)initWithProfile:(id)a3 observedQuantityTypes:(id)a4 updateOperation:(id)a5 rebuildOperation:(id)a6 queue:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v37.receiver = self;
  v37.super_class = HDActivityCacheDataSource;
  v17 = [(HDActivityCacheDataSource *)&v37 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_profile, v12);
    objc_storeStrong(&v18->_queue, a7);
    objc_storeStrong(&v18->_updateOperation, a5);
    objc_storeStrong(&v18->_rebuildOperation, a6);
    v19 = [HKObjectType categoryTypeForIdentifier:HKCategoryTypeIdentifierAppleStandHour];
    standHoursType = v18->_standHoursType;
    v18->_standHoursType = v19;

    v21 = +[HKObjectType deepBreathingSessionType];
    deepBreathingSessionType = v18->_deepBreathingSessionType;
    v18->_deepBreathingSessionType = v21;

    v23 = +[HKObjectType workoutType];
    workoutType = v18->_workoutType;
    v18->_workoutType = v23;

    v25 = +[HKObjectType watchActivationType];
    watchActivationType = v18->_watchActivationType;
    v18->_watchActivationType = v25;

    v27 = [HKCategoryType categoryTypeForIdentifier:HKCategoryTypeIdentifierSleepAnalysis];
    sleepAnalysisType = v18->_sleepAnalysisType;
    v18->_sleepAnalysisType = v27;

    v29 = +[NSMutableArray array];
    unfrozenSeriesCache = v18->_unfrozenSeriesCache;
    v18->_unfrozenSeriesCache = v29;

    v31 = [v13 copy];
    observedQuantityTypes = v18->_observedQuantityTypes;
    v18->_observedQuantityTypes = v31;

    v33 = +[NSMutableSet set];
    v34 = [v13 allObjects];
    [v33 addObjectsFromArray:v34];

    [v33 addObject:v18->_standHoursType];
    [v33 addObject:v18->_workoutType];
    [v33 addObject:v18->_watchActivationType];
    [v33 addObject:v18->_deepBreathingSessionType];
    [v33 addObject:v18->_sleepAnalysisType];
    objc_storeStrong(&v18->_allObservedTypes, v33);
    v35 = +[NSNotificationCenter defaultCenter];
    [v35 addObserver:v18 selector:"_samplesAddedToWorkoutNotification:" name:HDAssociationEntityDidReceiveSyncObjectsNotification object:0];
    [v35 addObserver:v18 selector:"_samplesAddedToWorkoutNotification:" name:HDHealthStoreServerDidAssociateWorkoutSamples object:0];
    [HDActivityCacheDataSource resumeUpdates]_0(v18);
  }

  return v18;
}

- (void)resumeUpdates
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 360));
    v3 = [WeakRetained dataManager];

    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v4 = *(a1 + 112);
    v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v5)
    {
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v4);
          }

          [v3 addObserver:a1 forDataType:{*(*(&v8 + 1) + 8 * v7), v8}];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (void)invalidate
{
  [HDActivityCacheDataSource pauseUpdates]_0(self);
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:HDAssociationEntityDidReceiveSyncObjectsNotification object:0];
  [v3 removeObserver:self name:HDHealthStoreServerDidAssociateWorkoutSamples object:0];
  [(_HKDelayedOperation *)self->_updateOperation invalidate];
  [(_HKDelayedOperation *)self->_rebuildOperation invalidate];
}

- (void)pauseUpdates
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 360));
    v3 = [WeakRetained dataManager];

    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v4 = *(a1 + 112);
    v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v5)
    {
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v4);
          }

          [v3 removeObserver:a1 forDataType:{*(*(&v8 + 1) + 8 * v7), v8}];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (BOOL)updateWithError:(id *)a3
{
  v5 = sub_DCE4(self, a3);
  v6 = sub_2808(self);
  return v5 & v6 & sub_E1E8(self, a3);
}

- (void)samplesAdded:(id)a3 anchor:(id)a4
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_F4C8;
  block[3] = &unk_349B0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)samplesOfTypesWereRemoved:(id)a3 anchor:(id)a4
{
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogActivityCache;
  if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = v5;
    _os_log_impl(&def_21990, v6, OS_LOG_TYPE_DEFAULT, "Samples (%{public}@) were removed, rebuilding caches", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_F5FC;
  block[3] = &unk_349B0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (int64_t)localDeviceSourceIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v3 = [WeakRetained sourceManager];
  v8 = 0;
  v4 = [v3 localDeviceSourceWithError:&v8];
  v5 = v8;

  if (v4)
  {
    v6 = [v4 persistentID];
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_ERROR))
    {
      sub_21198();
    }

    v6 = HDActivityCacheActiveSourceCalculatorDefaultBaseSourceIdentifier;
  }

  return v6;
}

- (id)activityCacheStatisticsBuilder:(id)a3 sourceOrderForObjectType:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v9 = [WeakRetained sourceOrderManager];
  v13 = 0;
  v10 = [v9 orderedSourceIDsForObjectType:v7 error:&v13];
  v11 = v13;

  if (!v10)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_ERROR))
    {
      sub_212B4();
    }
  }

  return v10;
}

- (void)_samplesAddedToWorkoutNotification:(id)a3
{
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogActivityCache;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    *buf = 138543362;
    v10 = v6;
    _os_log_impl(&def_21990, v5, OS_LOG_TYPE_DEFAULT, "Added new samples to workout (%{public}@), rebuilding caches", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_12690;
  block[3] = &unk_349B0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)reportTargetDayHeartRateAnalytics
{
  targetDayHeartRateStatisticsBuilder = self->_targetDayHeartRateStatisticsBuilder;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  [(HDActivityCacheHeartRateStatisticsBuilder *)targetDayHeartRateStatisticsBuilder reportDailyAnalyticsWithProfile:?];
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 9) = 0u;
  *(self + 10) = 0u;
  *(self + 44) = 1065353216;
  *(self + 184) = 0u;
  *(self + 200) = 0u;
  *(self + 54) = 1065353216;
  *(self + 14) = 0u;
  *(self + 15) = 0u;
  *(self + 64) = 1065353216;
  *(self + 264) = 0u;
  *(self + 280) = 0u;
  *(self + 74) = 1065353216;
  *(self + 19) = 0u;
  *(self + 20) = 0u;
  *(self + 84) = 1065353216;
  return self;
}

@end