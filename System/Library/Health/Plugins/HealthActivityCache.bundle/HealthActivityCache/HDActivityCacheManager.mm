@interface HDActivityCacheManager
- (HDActivityCacheManager)initWithProfile:(id)profile;
- (HKActivityCache)currentActivityCache;
- (HKActivityCache)yesterdayActivityCache;
- (id)calendar;
- (void)_didReceiveSignificantTimeChangeNotification;
- (void)_userCharacteristicsDidChangeNotification:(id)notification;
- (void)accessStatisticsBuilderWithCacheIndex:(int64_t)index handler:(id)handler;
- (void)addActivityCacheObserver:(id)observer;
- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available;
- (void)dealloc;
- (void)profileDidBecomeReady:(id)ready;
- (void)removeActivityCacheObserver:(id)observer;
- (void)samplesAdded:(id)added anchor:(id)anchor;
- (void)samplesOfTypesWereRemoved:(id)removed anchor:(id)anchor;
- (void)setCurrentActivityCacheOverrideDate:(id)date timeZone:(id)zone completion:(id)completion;
- (void)workoutManager:(id)manager didUpdateCurrentWorkout:(id)workout;
@end

@implementation HDActivityCacheManager

- (HDActivityCacheManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v59.receiver = self;
  v59.super_class = HDActivityCacheManager;
  v5 = [(HDActivityCacheManager *)&v59 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
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
    v53 = profileCopy;
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

    profileCopy = v53;
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
    fitnessMode = [v46 fitnessMode];

    if (fitnessMode == &def_21990 + 2)
    {
      WeakRetained = objc_loadWeakRetained(&v6->_profile);
      workoutManager = [WeakRetained workoutManager];
      [workoutManager registerCurrentWorkoutObserver:v6];
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
  database = [WeakRetained database];
  [database removeProtectedDataObserver:self];

  v5 = +[_HKBehavior sharedBehavior];
  fitnessMode = [v5 fitnessMode];

  if (fitnessMode == &def_21990 + 2)
  {
    v7 = objc_loadWeakRetained(&self->_profile);
    workoutManager = [v7 workoutManager];
    [workoutManager unregisterCurrentWorkoutObserver:self];
  }

  v9 = objc_loadWeakRetained(&self->_profile);
  dataManager = [v9 dataManager];

  [dataManager removeObserver:self forDataType:self->_calorieGoalType];
  [dataManager removeObserver:self forDataType:self->_moveMinuteGoalType];
  [dataManager removeObserver:self forDataType:self->_exerciseGoalType];
  [dataManager removeObserver:self forDataType:self->_standGoalType];
  [dataManager removeObserver:self forDataType:self->_activityMoveModeChangeType];
  [dataManager removeObserver:self forDataType:self->_pauseRingsScheduleType];
  [dataManager removeObserver:self forDataType:self->_activityGoalScheduleType];
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

- (void)setCurrentActivityCacheOverrideDate:(id)date timeZone:(id)zone completion:(id)completion
{
  dateCopy = date;
  zoneCopy = zone;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1F778;
  v15[3] = &unk_348D8;
  v15[4] = self;
  v16 = dateCopy;
  v17 = zoneCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = zoneCopy;
  v14 = dateCopy;
  dispatch_async(queue, v15);
}

- (id)calendar
{
  if (self)
  {
    v2 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    v3 = sub_1F8E4(self);
    [v2 setTimeZone:v3];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)samplesAdded:(id)added anchor:(id)anchor
{
  addedCopy = added;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_82FC;
  v8[3] = &unk_34A28;
  v8[4] = self;
  v9 = addedCopy;
  v7 = addedCopy;
  dispatch_async(queue, v8);
}

- (void)samplesOfTypesWereRemoved:(id)removed anchor:(id)anchor
{
  removedCopy = removed;
  _HKInitializeLogging();
  v6 = HKLogActivityCache;
  if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = removedCopy;
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

- (void)profileDidBecomeReady:(id)ready
{
  dispatch_assert_queue_V2(self->_queue);
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_userCharacteristicsDidChangeNotification:" name:HDUserCharacteristicsDidChangeNotification object:0];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  [database addProtectedDataObserver:self queue:self->_queue];

  sub_8534(self);
  sub_8630(self);

  sub_DA8(self);
}

- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available
{
  availableCopy = available;
  dispatch_assert_queue_V2(self->_queue);
  if (availableCopy)
  {

    sub_DA8(self);
  }
}

- (void)workoutManager:(id)manager didUpdateCurrentWorkout:(id)workout
{
  workoutCopy = workout;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_8CB8;
  v8[3] = &unk_34A28;
  v9 = workoutCopy;
  selfCopy = self;
  v7 = workoutCopy;
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

- (void)accessStatisticsBuilderWithCacheIndex:(int64_t)index handler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_9098;
  block[3] = &unk_34AA0;
  v10 = handlerCopy;
  indexCopy = index;
  block[4] = self;
  v8 = handlerCopy;
  dispatch_sync(queue, block);
}

- (void)addActivityCacheObserver:(id)observer
{
  observerCopy = observer;
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
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (void)removeActivityCacheObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_93C4;
  v7[3] = &unk_34A28;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

- (void)_userCharacteristicsDidChangeNotification:(id)notification
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