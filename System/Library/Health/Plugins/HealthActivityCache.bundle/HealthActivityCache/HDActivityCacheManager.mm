@interface HDActivityCacheManager
- (HDActivityCacheManager)initWithProfile:(id)a3;
- (HKActivityCache)currentActivityCache;
- (HKActivityCache)yesterdayActivityCache;
- (id)calendar;
- (void)_didReceiveSignificantTimeChangeNotification;
- (void)_userCharacteristicsDidChangeNotification:(id)a3;
- (void)accessStatisticsBuilderWithCacheIndex:(int64_t)a3 handler:(id)a4;
- (void)addActivityCacheObserver:(id)a3;
- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4;
- (void)dealloc;
- (void)profileDidBecomeReady:(id)a3;
- (void)removeActivityCacheObserver:(id)a3;
- (void)samplesAdded:(id)a3 anchor:(id)a4;
- (void)samplesOfTypesWereRemoved:(id)a3 anchor:(id)a4;
- (void)setCurrentActivityCacheOverrideDate:(id)a3 timeZone:(id)a4 completion:(id)a5;
- (void)workoutManager:(id)a3 didUpdateCurrentWorkout:(id)a4;
@end

@implementation HDActivityCacheManager

- (HDActivityCacheManager)initWithProfile:(id)a3
{
  v4 = a3;
  v59.receiver = self;
  v59.super_class = HDActivityCacheManager;
  v5 = [(HDActivityCacheManager *)&v59 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = HKCreateSerialDispatchQueue();
    observerQueue = v6->_observerQueue;
    v6->_observerQueue = v9;

    v11 = +[HKObjectType calorieGoal];
    calorieGoalType = v6->_calorieGoalType;
    v6->_calorieGoalType = v11;

    v13 = +[HKObjectType moveMinuteGoal];
    moveMinuteGoalType = v6->_moveMinuteGoalType;
    v6->_moveMinuteGoalType = v13;

    v15 = +[HKObjectType exerciseGoal];
    exerciseGoalType = v6->_exerciseGoalType;
    v6->_exerciseGoalType = v15;

    v17 = +[HKObjectType standGoal];
    standGoalType = v6->_standGoalType;
    v6->_standGoalType = v17;

    v19 = +[HKObjectType activityMoveModeChangeType];
    activityMoveModeChangeType = v6->_activityMoveModeChangeType;
    v6->_activityMoveModeChangeType = v19;

    v21 = +[HKObjectType pauseRingsScheduleType];
    pauseRingsScheduleType = v6->_pauseRingsScheduleType;
    v6->_pauseRingsScheduleType = v21;

    v23 = +[HKObjectType activityGoalScheduleType];
    activityGoalScheduleType = v6->_activityGoalScheduleType;
    v6->_activityGoalScheduleType = v23;

    v52 = [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierActiveEnergyBurned];
    v53 = v4;
    v25 = [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierAppleMoveTime];
    v26 = +[HKObjectType briskMinuteDataType];
    v27 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierStepCount];
    v28 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierDistanceWalkingRunning];
    v29 = [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierFlightsClimbed];
    v30 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierPushCount];
    v31 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierHeartRate];
    v32 = [NSSet setWithObjects:v52, v25, v26, v27, v28, v29, v30, v31, 0];
    allQuantityTypes = v6->_allQuantityTypes;
    v6->_allQuantityTypes = v32;

    v4 = v53;
    v34 = objc_alloc_init(NSMutableDictionary);
    goalsByIndex = v6->_goalsByIndex;
    v6->_goalsByIndex = v34;

    objc_initWeak(&location, v6);
    v36 = [_HKDelayedOperation alloc];
    v37 = v6->_queue;
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_51C8;
    v56[3] = &unk_348B0;
    objc_copyWeak(&v57, &location);
    v38 = [v36 initWithQueue:v37 delay:v56 block:5.0];
    updateCachesOperation = v6->_updateCachesOperation;
    v6->_updateCachesOperation = v38;

    v40 = [_HKDelayedOperation alloc];
    v41 = v6->_queue;
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_5298;
    v54[3] = &unk_348B0;
    objc_copyWeak(&v55, &location);
    v42 = [v40 initWithQueue:v41 delay:v54 block:5.0];
    rebuildCachesOperation = v6->_rebuildCachesOperation;
    v6->_rebuildCachesOperation = v42;

    v44 = +[NSHashTable weakObjectsHashTable];
    observers = v6->_observers;
    v6->_observers = v44;

    v6->_hasSubscribedToSignificantTimeChangeNotifications = 0;
    v46 = +[_HKBehavior sharedBehavior];
    v47 = [v46 fitnessMode];

    if (v47 == &def_21990 + 2)
    {
      WeakRetained = objc_loadWeakRetained(&v6->_profile);
      v49 = [WeakRetained workoutManager];
      [v49 registerCurrentWorkoutObserver:v6];
    }

    v50 = objc_loadWeakRetained(&v6->_profile);
    [v50 registerProfileReadyObserver:v6 queue:v6->_queue];

    objc_destroyWeak(&v55);
    objc_destroyWeak(&v57);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)dealloc
{
  [(HDActivityCacheDataSource *)self->_dataSource invalidate];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v4 = [WeakRetained database];
  [v4 removeProtectedDataObserver:self];

  v5 = +[_HKBehavior sharedBehavior];
  v6 = [v5 fitnessMode];

  if (v6 == &def_21990 + 2)
  {
    v7 = objc_loadWeakRetained(&self->_profile);
    v8 = [v7 workoutManager];
    [v8 unregisterCurrentWorkoutObserver:self];
  }

  v9 = objc_loadWeakRetained(&self->_profile);
  v10 = [v9 dataManager];

  [v10 removeObserver:self forDataType:self->_calorieGoalType];
  [v10 removeObserver:self forDataType:self->_moveMinuteGoalType];
  [v10 removeObserver:self forDataType:self->_exerciseGoalType];
  [v10 removeObserver:self forDataType:self->_standGoalType];
  [v10 removeObserver:self forDataType:self->_activityMoveModeChangeType];
  [v10 removeObserver:self forDataType:self->_pauseRingsScheduleType];
  [v10 removeObserver:self forDataType:self->_activityGoalScheduleType];
  v11 = +[NSNotificationCenter defaultCenter];
  [v11 removeObserver:self name:HDUserCharacteristicsDidChangeNotification object:0];

  v12 = +[NSNotificationCenter defaultCenter];
  [v12 removeObserver:self name:NSCalendarDayChangedNotification object:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"SignificantTimeChangeNotification", 0);
  notify_cancel(self->_rebuildCacheNotificationToken);

  v14.receiver = self;
  v14.super_class = HDActivityCacheManager;
  [(HDActivityCacheManager *)&v14 dealloc];
}

- (void)setCurrentActivityCacheOverrideDate:(id)a3 timeZone:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1F778;
  v15[3] = &unk_348D8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

- (id)calendar
{
  if (a1)
  {
    v2 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    v3 = sub_1F8E4(a1);
    [v2 setTimeZone:v3];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)samplesAdded:(id)a3 anchor:(id)a4
{
  v5 = a3;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_82FC;
  v8[3] = &unk_34A28;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
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
  block[2] = sub_8528;
  block[3] = &unk_349B0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_didReceiveSignificantTimeChangeNotification
{
  _HKInitializeLogging();
  v3 = HKLogActivityCache;
  if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&def_21990, v3, OS_LOG_TYPE_DEFAULT, "Received significant time change", buf, 2u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_88F8;
  block[3] = &unk_349B0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)profileDidBecomeReady:(id)a3
{
  dispatch_assert_queue_V2(self->_queue);
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_userCharacteristicsDidChangeNotification:" name:HDUserCharacteristicsDidChangeNotification object:0];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [WeakRetained database];
  [v6 addProtectedDataObserver:self queue:self->_queue];

  sub_8534(self);
  sub_8630(self);

  sub_DA8(self);
}

- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4
{
  v4 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if (v4)
  {

    sub_DA8(self);
  }
}

- (void)workoutManager:(id)a3 didUpdateCurrentWorkout:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_8CB8;
  v8[3] = &unk_34A28;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (HKActivityCache)currentActivityCache
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_7ED8;
  v10 = sub_7EE8;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_8ED8;
  v5[3] = &unk_34A78;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (HKActivityCache)yesterdayActivityCache
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_7ED8;
  v10 = sub_7EE8;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_8FDC;
  v5[3] = &unk_34A78;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)accessStatisticsBuilderWithCacheIndex:(int64_t)a3 handler:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_9098;
  block[3] = &unk_34AA0;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_sync(queue, block);
}

- (void)addActivityCacheObserver:(id)a3
{
  v4 = a3;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_DEBUG))
  {
    sub_2046C();
  }

  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_922C;
  v7[3] = &unk_34A28;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)removeActivityCacheObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_93C4;
  v7[3] = &unk_34A28;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)_userCharacteristicsDidChangeNotification:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_98D4;
  block[3] = &unk_349B0;
  block[4] = self;
  dispatch_async(queue, block);
}

@end