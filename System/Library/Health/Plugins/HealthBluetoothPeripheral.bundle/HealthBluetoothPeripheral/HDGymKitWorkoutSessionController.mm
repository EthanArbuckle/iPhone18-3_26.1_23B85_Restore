@interface HDGymKitWorkoutSessionController
+ (BOOL)supportsWorkoutConfiguration:(id)a3 clientApplicationIdentifier:(id)a4;
+ (void)willFinishSessionWithRecoveryData:(id)a3 profile:(id)a4;
- (BOOL)endWithError:(id *)a3;
- (BOOL)pauseWithError:(id *)a3;
- (BOOL)prepareWithError:(id *)a3;
- (BOOL)resumeWithError:(id *)a3;
- (BOOL)startActivityWithDate:(id)a3 error:(id *)a4;
- (BOOL)stopActivityWithDate:(id)a3 error:(id *)a4;
- (BOOL)storeSessionControllerState:(id)a3 forRecoveryIdentifier:(id)a4 error:(id *)a5;
- (HDGymKitWorkoutSessionController)initWithProfile:(id)a3 sessionConfiguration:(id)a4 sessionStateController:(id)a5 recoveryState:(id)a6;
- (HDWorkoutDataAccumulator)workoutDataAccumulator;
- (void)autoPauseWithDate:(id)a3;
- (void)autoResumeWithDate:(id)a3;
- (void)endHeartRateRecovery;
- (void)finish;
- (void)finishAggregationWithDate:(id)a3;
- (void)fitnessMachineSessionUUID:(id)a3 updatedRecoveryConfiguration:(id)a4;
- (void)generateConfigurationUpdate:(id)a3;
- (void)generateError:(id)a3;
- (void)generateEvent:(id)a3;
- (void)generateMetadata:(id)a3;
- (void)hktest_setStateTransitionCompletionHandler:(id)a3;
- (void)workoutSessionServer:(id)a3 accumulatorDidChange:(id)a4;
- (void)workoutSessionServer:(id)a3 didChangeConfiguration:(id)a4;
- (void)workoutSessionServer:(id)a3 didTransitionFromState:(int64_t)a4 toState:(int64_t)a5 date:(id)a6;
@end

@implementation HDGymKitWorkoutSessionController

- (HDGymKitWorkoutSessionController)initWithProfile:(id)a3 sessionConfiguration:(id)a4 sessionStateController:(id)a5 recoveryState:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = HDGymKitWorkoutSessionController;
  v14 = [(HDGymKitWorkoutSessionController *)&v24 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_profile, v10);
    v17 = [v11 workoutConfiguration];
    v18 = [v17 fitnessMachineSessionUUID];
    fitnessMachineSessionUUID = v15->_fitnessMachineSessionUUID;
    v15->_fitnessMachineSessionUUID = v18;

    v20 = [[HDDefaultWorkoutSessionController alloc] initWithProfile:v10 sessionConfiguration:v11 sessionStateController:v15 recoveryState:v13];
    defaultSessionController = v15->_defaultSessionController;
    v15->_defaultSessionController = v20;

    objc_storeWeak(&v15->_sessionStateController, v12);
    v22 = HKCreateSerialDispatchQueue();
    queue = v15->_queue;
    v15->_queue = v22;

    v15->_acceptsDataAccumulators = 1;
    sub_2F060(v15, v13);
  }

  return v15;
}

- (void)workoutSessionServer:(id)a3 didTransitionFromState:(int64_t)a4 toState:(int64_t)a5 date:(id)a6
{
  [(HDDefaultWorkoutSessionController *)self->_defaultSessionController workoutSessionServer:a3 didTransitionFromState:a4 toState:a5 date:a6];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_121B8;
  block[3] = &unk_5D1B8;
  block[5] = a5;
  block[6] = a4;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)workoutSessionServer:(id)a3 didChangeConfiguration:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_12350;
  v8[3] = &unk_5C8C8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)workoutSessionServer:(id)a3 accumulatorDidChange:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_123F4;
  v8[3] = &unk_5C8C8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

+ (void)willFinishSessionWithRecoveryData:(id)a3 profile:(id)a4
{
  v6 = a4;
  v7 = a3;
  v12 = 0;
  v8 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v12];

  v9 = v12;
  if (v8)
  {
    v10 = [v6 fitnessMachineManager];
    [v10 finishSessionWithConfiguration:v8];
  }

  else
  {
    _HKInitializeLogging();
    v11 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      sub_2F614(a1, v9, v11);
    }
  }
}

- (void)fitnessMachineSessionUUID:(id)a3 updatedRecoveryConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_129E8;
  block[3] = &unk_5C788;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, block);
}

- (BOOL)prepareWithError:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  LOBYTE(a3) = [WeakRetained prepareWithError:a3];

  return a3;
}

- (BOOL)startActivityWithDate:(id)a3 error:(id *)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  LOBYTE(a4) = [WeakRetained startActivityWithDate:v6 error:a4];

  return a4;
}

- (BOOL)stopActivityWithDate:(id)a3 error:(id *)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  LOBYTE(a4) = [WeakRetained stopActivityWithDate:v6 error:a4];

  return a4;
}

- (BOOL)endWithError:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  LOBYTE(a3) = [WeakRetained endWithError:a3];

  return a3;
}

- (BOOL)pauseWithError:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  LOBYTE(a3) = [WeakRetained pauseWithError:a3];

  return a3;
}

- (BOOL)resumeWithError:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  LOBYTE(a3) = [WeakRetained resumeWithError:a3];

  return a3;
}

- (void)autoPauseWithDate:(id)a3
{
  _HKInitializeLogging();
  v3 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Auto-pause is ignore during GymKit workouts", v4, 2u);
  }
}

- (void)autoResumeWithDate:(id)a3
{
  _HKInitializeLogging();
  v3 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Auto-pause is ignore during GymKit workouts", v4, 2u);
  }
}

- (void)endHeartRateRecovery
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  [WeakRetained endHeartRateRecovery];
}

- (void)finish
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  [WeakRetained finish];
}

- (void)generateEvent:(id)a3
{
  v4 = a3;
  if ([v4 eventType] == &dword_4 + 3 || objc_msgSend(v4, "eventType") == &dword_8)
  {
    _HKInitializeLogging();
    v5 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Auto-pause is ignore during GymKit workouts", v7, 2u);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
    [WeakRetained generateEvent:v4];
  }
}

- (void)generateError:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  [WeakRetained generateError:v4];
}

- (void)generateMetadata:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  [WeakRetained generateMetadata:v4];
}

- (void)generateConfigurationUpdate:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  [WeakRetained generateConfigurationUpdate:v4];
}

- (HDWorkoutDataAccumulator)workoutDataAccumulator
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  v3 = [WeakRetained workoutDataAccumulator];

  return v3;
}

- (BOOL)storeSessionControllerState:(id)a3 forRecoveryIdentifier:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  LOBYTE(a5) = [WeakRetained storeSessionControllerState:v9 forRecoveryIdentifier:v8 error:a5];

  return a5;
}

- (void)finishAggregationWithDate:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  [WeakRetained finishAggregationWithDate:v4];
}

+ (BOOL)supportsWorkoutConfiguration:(id)a3 clientApplicationIdentifier:(id)a4
{
  v4 = [a3 fitnessMachineSessionUUID];
  v5 = v4 != 0;

  return v5;
}

- (void)hktest_setStateTransitionCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_131A4;
  v7[3] = &unk_5C9D8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

@end