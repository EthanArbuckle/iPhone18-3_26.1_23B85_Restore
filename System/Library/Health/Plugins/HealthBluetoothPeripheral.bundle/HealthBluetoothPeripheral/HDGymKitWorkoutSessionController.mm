@interface HDGymKitWorkoutSessionController
+ (BOOL)supportsWorkoutConfiguration:(id)configuration clientApplicationIdentifier:(id)identifier;
+ (void)willFinishSessionWithRecoveryData:(id)data profile:(id)profile;
- (BOOL)endWithError:(id *)error;
- (BOOL)pauseWithError:(id *)error;
- (BOOL)prepareWithError:(id *)error;
- (BOOL)resumeWithError:(id *)error;
- (BOOL)startActivityWithDate:(id)date error:(id *)error;
- (BOOL)stopActivityWithDate:(id)date error:(id *)error;
- (BOOL)storeSessionControllerState:(id)state forRecoveryIdentifier:(id)identifier error:(id *)error;
- (HDGymKitWorkoutSessionController)initWithProfile:(id)profile sessionConfiguration:(id)configuration sessionStateController:(id)controller recoveryState:(id)state;
- (HDWorkoutDataAccumulator)workoutDataAccumulator;
- (void)autoPauseWithDate:(id)date;
- (void)autoResumeWithDate:(id)date;
- (void)endHeartRateRecovery;
- (void)finish;
- (void)finishAggregationWithDate:(id)date;
- (void)fitnessMachineSessionUUID:(id)d updatedRecoveryConfiguration:(id)configuration;
- (void)generateConfigurationUpdate:(id)update;
- (void)generateError:(id)error;
- (void)generateEvent:(id)event;
- (void)generateMetadata:(id)metadata;
- (void)hktest_setStateTransitionCompletionHandler:(id)handler;
- (void)workoutSessionServer:(id)server accumulatorDidChange:(id)change;
- (void)workoutSessionServer:(id)server didChangeConfiguration:(id)configuration;
- (void)workoutSessionServer:(id)server didTransitionFromState:(int64_t)state toState:(int64_t)toState date:(id)date;
@end

@implementation HDGymKitWorkoutSessionController

- (HDGymKitWorkoutSessionController)initWithProfile:(id)profile sessionConfiguration:(id)configuration sessionStateController:(id)controller recoveryState:(id)state
{
  profileCopy = profile;
  configurationCopy = configuration;
  controllerCopy = controller;
  stateCopy = state;
  v24.receiver = self;
  v24.super_class = HDGymKitWorkoutSessionController;
  v14 = [(HDGymKitWorkoutSessionController *)&v24 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_profile, profileCopy);
    workoutConfiguration = [configurationCopy workoutConfiguration];
    fitnessMachineSessionUUID = [workoutConfiguration fitnessMachineSessionUUID];
    fitnessMachineSessionUUID = v15->_fitnessMachineSessionUUID;
    v15->_fitnessMachineSessionUUID = fitnessMachineSessionUUID;

    v20 = [[HDDefaultWorkoutSessionController alloc] initWithProfile:profileCopy sessionConfiguration:configurationCopy sessionStateController:v15 recoveryState:stateCopy];
    defaultSessionController = v15->_defaultSessionController;
    v15->_defaultSessionController = v20;

    objc_storeWeak(&v15->_sessionStateController, controllerCopy);
    v22 = HKCreateSerialDispatchQueue();
    queue = v15->_queue;
    v15->_queue = v22;

    v15->_acceptsDataAccumulators = 1;
    sub_2F060(v15, stateCopy);
  }

  return v15;
}

- (void)workoutSessionServer:(id)server didTransitionFromState:(int64_t)state toState:(int64_t)toState date:(id)date
{
  [(HDDefaultWorkoutSessionController *)self->_defaultSessionController workoutSessionServer:server didTransitionFromState:state toState:toState date:date];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_121B8;
  block[3] = &unk_5D1B8;
  block[5] = toState;
  block[6] = state;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)workoutSessionServer:(id)server didChangeConfiguration:(id)configuration
{
  configurationCopy = configuration;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_12350;
  v8[3] = &unk_5C8C8;
  v8[4] = self;
  v9 = configurationCopy;
  v7 = configurationCopy;
  dispatch_async(queue, v8);
}

- (void)workoutSessionServer:(id)server accumulatorDidChange:(id)change
{
  changeCopy = change;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_123F4;
  v8[3] = &unk_5C8C8;
  v8[4] = self;
  v9 = changeCopy;
  v7 = changeCopy;
  dispatch_async(queue, v8);
}

+ (void)willFinishSessionWithRecoveryData:(id)data profile:(id)profile
{
  profileCopy = profile;
  dataCopy = data;
  v12 = 0;
  v8 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v12];

  v9 = v12;
  if (v8)
  {
    fitnessMachineManager = [profileCopy fitnessMachineManager];
    [fitnessMachineManager finishSessionWithConfiguration:v8];
  }

  else
  {
    _HKInitializeLogging();
    v11 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      sub_2F614(self, v9, v11);
    }
  }
}

- (void)fitnessMachineSessionUUID:(id)d updatedRecoveryConfiguration:(id)configuration
{
  dCopy = d;
  configurationCopy = configuration;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_129E8;
  block[3] = &unk_5C788;
  v12 = dCopy;
  selfCopy = self;
  v14 = configurationCopy;
  v9 = configurationCopy;
  v10 = dCopy;
  dispatch_sync(queue, block);
}

- (BOOL)prepareWithError:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  LOBYTE(error) = [WeakRetained prepareWithError:error];

  return error;
}

- (BOOL)startActivityWithDate:(id)date error:(id *)error
{
  dateCopy = date;
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  LOBYTE(error) = [WeakRetained startActivityWithDate:dateCopy error:error];

  return error;
}

- (BOOL)stopActivityWithDate:(id)date error:(id *)error
{
  dateCopy = date;
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  LOBYTE(error) = [WeakRetained stopActivityWithDate:dateCopy error:error];

  return error;
}

- (BOOL)endWithError:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  LOBYTE(error) = [WeakRetained endWithError:error];

  return error;
}

- (BOOL)pauseWithError:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  LOBYTE(error) = [WeakRetained pauseWithError:error];

  return error;
}

- (BOOL)resumeWithError:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  LOBYTE(error) = [WeakRetained resumeWithError:error];

  return error;
}

- (void)autoPauseWithDate:(id)date
{
  _HKInitializeLogging();
  v3 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Auto-pause is ignore during GymKit workouts", v4, 2u);
  }
}

- (void)autoResumeWithDate:(id)date
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

- (void)generateEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy eventType] == &dword_4 + 3 || objc_msgSend(eventCopy, "eventType") == &dword_8)
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
    [WeakRetained generateEvent:eventCopy];
  }
}

- (void)generateError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  [WeakRetained generateError:errorCopy];
}

- (void)generateMetadata:(id)metadata
{
  metadataCopy = metadata;
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  [WeakRetained generateMetadata:metadataCopy];
}

- (void)generateConfigurationUpdate:(id)update
{
  updateCopy = update;
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  [WeakRetained generateConfigurationUpdate:updateCopy];
}

- (HDWorkoutDataAccumulator)workoutDataAccumulator
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  workoutDataAccumulator = [WeakRetained workoutDataAccumulator];

  return workoutDataAccumulator;
}

- (BOOL)storeSessionControllerState:(id)state forRecoveryIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  stateCopy = state;
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  LOBYTE(error) = [WeakRetained storeSessionControllerState:stateCopy forRecoveryIdentifier:identifierCopy error:error];

  return error;
}

- (void)finishAggregationWithDate:(id)date
{
  dateCopy = date;
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  [WeakRetained finishAggregationWithDate:dateCopy];
}

+ (BOOL)supportsWorkoutConfiguration:(id)configuration clientApplicationIdentifier:(id)identifier
{
  fitnessMachineSessionUUID = [configuration fitnessMachineSessionUUID];
  v5 = fitnessMachineSessionUUID != 0;

  return v5;
}

- (void)hktest_setStateTransitionCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_131A4;
  v7[3] = &unk_5C9D8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_sync(queue, v7);
}

@end