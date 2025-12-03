@interface HDFitnessMachineDataProducer
- (BOOL)attached;
- (HDFitnessMachineDataProducer)initWithProfile:(id)profile;
- (void)attachHealthServiceSession:(unint64_t)session;
- (void)dealloc;
- (void)deliverFinalValuesAndDetachWithCompletion:(id)completion;
- (void)detachHealthServiceSession;
- (void)pauseCurrentSession;
- (void)resumeCurrentSession;
- (void)sendInitialValues;
- (void)workoutDataAccumulator:(id)accumulator didUpdateStatistics:(id)statistics;
@end

@implementation HDFitnessMachineDataProducer

- (HDFitnessMachineDataProducer)initWithProfile:(id)profile
{
  profileCopy = profile;
  v11.receiver = self;
  v11.super_class = HDFitnessMachineDataProducer;
  v5 = [(HDFitnessMachineDataProducer *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v8 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v8;

    v6->_sessionIdentifier = 0;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, sub_48E8, kHKNanoLifestylePrivacyPreferencesChangedNotification, 0, CFNotificationSuspensionBehaviorDrop);
    sub_28024(v6);
  }

  return v6;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, kHKNanoLifestylePrivacyPreferencesChangedNotification, 0);
  v4.receiver = self;
  v4.super_class = HDFitnessMachineDataProducer;
  [(HDFitnessMachineDataProducer *)&v4 dealloc];
}

- (void)attachHealthServiceSession:(unint64_t)session
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_28128;
  v4[3] = &unk_5C9B0;
  v4[4] = self;
  v4[5] = session;
  dispatch_async(queue, v4);
}

- (void)sendInitialValues
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_28268;
  block[3] = &unk_5C800;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)deliverFinalValuesAndDetachWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4AD0;
  v7[3] = &unk_5C9D8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)detachHealthServiceSession
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_284C4;
  block[3] = &unk_5C800;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)pauseCurrentSession
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_284CC;
  block[3] = &unk_5C800;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)resumeCurrentSession
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_28528;
  block[3] = &unk_5C800;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)attached
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_4D1C;
  v5[3] = &unk_5CA00;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)workoutDataAccumulator:(id)accumulator didUpdateStatistics:(id)statistics
{
  accumulatorCopy = accumulator;
  statisticsCopy = statistics;
  _HKInitializeLogging();
  v8 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v17 = 2112;
    v18 = statisticsCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Received updated accumulator statistics: %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4E98;
  block[3] = &unk_5C788;
  block[4] = self;
  v13 = accumulatorCopy;
  v14 = statisticsCopy;
  v10 = statisticsCopy;
  v11 = accumulatorCopy;
  dispatch_async(queue, block);
}

@end