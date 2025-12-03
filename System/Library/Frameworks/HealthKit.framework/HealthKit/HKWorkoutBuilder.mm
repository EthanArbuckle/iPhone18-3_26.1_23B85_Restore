@interface HKWorkoutBuilder
+ (double)_elapsedTimeAtDate:(id)date startDate:(id)startDate endDate:(id)endDate sortedEvents:(id)events;
+ (id)_constructionStateMachineForBuilderConfiguration:(id)configuration builderIdentifier:(id)identifier;
+ (id)clientInterface;
+ (id)serverInterface;
+ (int64_t)_collectionStateAtDate:(id)date startDate:(id)startDate endDate:(id)endDate sortedEvents:(id)events;
- (BOOL)_lock_canAddMetadataInCurrentState;
- (BOOL)isCurrentlyRunning;
- (HKDevice)device;
- (HKSeriesBuilder)seriesBuilderForType:(HKSeriesType *)seriesType;
- (HKStatistics)statisticsForType:(HKQuantityType *)quantityType;
- (HKWorkoutBuilder)init;
- (HKWorkoutBuilder)initWithHealthStore:(HKHealthStore *)healthStore configuration:(HKWorkoutConfiguration *)configuration device:(HKDevice *)device;
- (HKWorkoutBuilder)initWithHealthStore:(id)store builderConfiguration:(id)configuration builderIdentifier:(id)identifier;
- (HKWorkoutBuilder)initWithHealthStore:(id)store configuration:(id)configuration goalType:(unint64_t)type goal:(id)goal device:(id)device;
- (HKWorkoutBuilderConfiguration)configuration;
- (NSArray)workoutActivities;
- (NSArray)workoutEvents;
- (NSDate)endDate;
- (NSDate)startDate;
- (NSDictionary)allStatistics;
- (NSDictionary)metadata;
- (NSString)description;
- (NSTimeInterval)elapsedTimeAtDate:(NSDate *)date;
- (double)_currentElapsedTime;
- (id)_currentSnapshot;
- (id)_lock_endDateForSnapshotWithStartDate:(id)date;
- (id)_lock_eventsBetweenStartDate:(id)date endDate:(id)endDate;
- (id)_lock_seriesBuilderWithIdentifier:(id)identifier type:(id)type;
- (id)_lock_startDateForSnapshot;
- (void)_lock_freezeSeriesBuilders;
- (void)_lock_markRecoveryRequired;
- (void)_lock_updateDevice:(id)device;
- (void)_lock_updateElapsedTimeCache;
- (void)_pushCurrentTargetState;
- (void)_queue_addMetadata:(id)metadata completion:(id)completion;
- (void)_queue_addSamples:(id)samples completion:(id)completion;
- (void)_queue_addWorkoutActivity:(id)activity completion:(id)completion;
- (void)_queue_addWorkoutEvents:(id)events completion:(id)completion;
- (void)_queue_beginCollectionWithStartDate:(id)date completion:(id)completion;
- (void)_queue_endCollectionWithEndDate:(id)date completion:(id)completion;
- (void)_queue_finishWorkoutWithCompletion:(id)completion;
- (void)_queue_removeMetadata:(id)metadata completion:(id)completion;
- (void)_queue_setStatisticsComputationMethod:(int64_t)method forType:(id)type;
- (void)_queue_setStatisticsMergeStrategy:(unint64_t)strategy forType:(id)type;
- (void)_queue_updateActivityWithUUID:(id)d addMetadata:(id)metadata completion:(id)completion;
- (void)_queue_updateActivityWithUUID:(id)d endDate:(id)date completion:(id)completion;
- (void)_recoverWithCompletion:(id)completion;
- (void)_removeMetadata:(id)metadata completion:(id)completion;
- (void)_restoreRecoveredSeriesBuildersWithCompletion:(id)completion;
- (void)_setDevice:(id)device;
- (void)_setStatisticsComputationMethod:(int64_t)method forType:(id)type;
- (void)_setStatisticsMergeStrategy:(unint64_t)strategy forType:(id)type;
- (void)addMetadata:(NSDictionary *)metadata completion:(void *)completion;
- (void)addSamples:(NSArray *)samples completion:(void *)completion;
- (void)addWorkoutActivity:(HKWorkoutActivity *)workoutActivity completion:(void *)completion;
- (void)addWorkoutEvents:(NSArray *)workoutEvents completion:(void *)completion;
- (void)beginCollectionWithStartDate:(NSDate *)startDate completion:(void *)completion;
- (void)clientRemote_didBeginActivity:(id)activity;
- (void)clientRemote_didChangeElapsedTimeBasisWithStartDate:(id)date endDate:(id)endDate;
- (void)clientRemote_didEndActivity:(id)activity;
- (void)clientRemote_didFailWithError:(id)error;
- (void)clientRemote_didFinishRecovery;
- (void)clientRemote_didRecoverSeriesBuilders:(id)builders;
- (void)clientRemote_didUpdateActivities:(id)activities;
- (void)clientRemote_didUpdateEvents:(id)events;
- (void)clientRemote_didUpdateMetadata:(id)metadata;
- (void)clientRemote_didUpdateStatistics:(id)statistics;
- (void)clientRemote_finishedWorkout:(id)workout;
- (void)clientRemote_stateDidChange:(int64_t)change startDate:(id)date endDate:(id)endDate;
- (void)clientRemote_unitTestDidFinishFinalizing;
- (void)connectionInterrupted;
- (void)currentZonesForType:(id)type completion:(id)completion;
- (void)discardWorkout;
- (void)endCollectionWithEndDate:(NSDate *)endDate completion:(void *)completion;
- (void)finishWorkoutWithCompletion:(void *)completion;
- (void)stateMachine:(id)machine didEnterState:(id)state date:(id)date error:(id)error;
- (void)stateMachine:(id)machine didTransition:(id)transition fromState:(id)state toState:(id)toState date:(id)date error:(id)error;
- (void)unitTest_setDidFinishFinalizingHandler:(id)handler;
- (void)unitTest_setFailureHandler:(id)handler;
- (void)unitTest_setRecoveryFinishedHandler:(id)handler;
- (void)unitTest_setServerStateChangeHandler:(id)handler;
- (void)updateActivityWithUUID:(NSUUID *)UUID addMedatata:(NSDictionary *)metadata completion:(void *)completion;
- (void)updateActivityWithUUID:(NSUUID *)UUID endDate:(NSDate *)endDate completion:(void *)completion;
@end

@implementation HKWorkoutBuilder

+ (id)_constructionStateMachineForBuilderConfiguration:(id)configuration builderIdentifier:(id)identifier
{
  identifierCopy = identifier;
  associatedSessionUUID = [configuration associatedSessionUUID];
  v8 = associatedSessionUUID;
  if (associatedSessionUUID)
  {
    v9 = associatedSessionUUID;
  }

  else
  {
    v9 = identifierCopy;
  }

  v10 = [HKStateMachine nameForOwner:self UUID:v9 tag:0];

  v11 = [[HKStateMachine alloc] initWithName:v10];
  v12 = [(HKStateMachine *)v11 addStateWithIndex:0 label:@"NotStarted"];
  v13 = [(HKStateMachine *)v11 addStateWithIndex:1 label:@"Active"];
  v14 = [(HKStateMachine *)v11 addStateWithIndex:2 label:@"Ended"];
  v15 = [(HKStateMachine *)v11 addStateWithIndex:3 label:@"Finished"];
  v16 = [(HKStateMachine *)v11 addStateWithIndex:4 label:@"Discarded"];
  v17 = [(HKStateMachine *)v11 addStateTransitionFrom:v12 to:v13 event:100 label:@"begin"];
  v18 = [(HKStateMachine *)v11 addStateTransitionFrom:v13 to:v14 event:101 label:@"end"];
  v19 = [(HKStateMachine *)v11 addStateTransitionFrom:v14 to:v15 event:102 label:@"finish"];
  v20 = [(HKStateMachine *)v11 addStateTransitionFrom:v12 to:v16 event:103 label:@"discard"];
  v21 = [(HKStateMachine *)v11 addStateTransitionFrom:v13 to:v16 event:103 label:@"discard"];
  v22 = [(HKStateMachine *)v11 addStateTransitionFrom:v14 to:v16 event:103 label:@"discard"];
  v23 = [(HKStateMachine *)v11 addStateTransitionFrom:v12 to:v13 event:1 label:@"server-active"];
  v24 = [(HKStateMachine *)v11 addStateTransitionFrom:v12 to:v14 event:2 label:@"server-ended"];
  v25 = [(HKStateMachine *)v11 addStateTransitionFrom:v12 to:v15 event:3 label:@"server-finished"];
  v26 = [(HKStateMachine *)v11 addStateTransitionFrom:v12 to:v16 event:4 label:@"server-discarded"];
  v27 = [(HKStateMachine *)v11 addStateTransitionFrom:v13 to:v14 event:2 label:@"server-ended"];
  v28 = [(HKStateMachine *)v11 addStateTransitionFrom:v13 to:v15 event:3 label:@"server-finished"];
  v29 = [(HKStateMachine *)v11 addStateTransitionFrom:v13 to:v16 event:4 label:@"server-discarded"];
  v30 = [(HKStateMachine *)v11 addStateTransitionFrom:v14 to:v15 event:3 label:@"server-finished"];
  v31 = [(HKStateMachine *)v11 addStateTransitionFrom:v14 to:v16 event:4 label:@"server-discarded"];
  v32 = [(HKStateMachine *)v11 addStateTransitionFrom:v16 to:v15 event:3 label:@"server-finished"];
  v33 = [(HKStateMachine *)v11 addStateTransitionFrom:v15 to:v16 event:4 label:@"server-discarded"];

  return v11;
}

- (HKWorkoutBuilder)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKWorkoutBuilder)initWithHealthStore:(HKHealthStore *)healthStore configuration:(HKWorkoutConfiguration *)configuration device:(HKDevice *)device
{
  v8 = device;
  v9 = configuration;
  v10 = healthStore;
  v11 = objc_alloc_init(HKWorkoutBuilderConfiguration);
  [(HKWorkoutBuilderConfiguration *)v11 setDevice:v8];

  [(HKWorkoutBuilderConfiguration *)v11 setWorkoutConfiguration:v9];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v13 = [(HKWorkoutBuilder *)self initWithHealthStore:v10 builderConfiguration:v11 builderIdentifier:uUID];

  return v13;
}

- (HKWorkoutBuilder)initWithHealthStore:(id)store configuration:(id)configuration goalType:(unint64_t)type goal:(id)goal device:(id)device
{
  deviceCopy = device;
  goalCopy = goal;
  configurationCopy = configuration;
  storeCopy = store;
  v16 = objc_alloc_init(HKWorkoutBuilderConfiguration);
  [(HKWorkoutBuilderConfiguration *)v16 setDevice:deviceCopy];

  [(HKWorkoutBuilderConfiguration *)v16 setWorkoutConfiguration:configurationCopy];
  [(HKWorkoutBuilderConfiguration *)v16 setGoalType:type];
  [(HKWorkoutBuilderConfiguration *)v16 setGoal:goalCopy];

  uUID = [MEMORY[0x1E696AFB0] UUID];
  v18 = [(HKWorkoutBuilder *)self initWithHealthStore:storeCopy builderConfiguration:v16 builderIdentifier:uUID];

  return v18;
}

- (HKWorkoutBuilder)initWithHealthStore:(id)store builderConfiguration:(id)configuration builderIdentifier:(id)identifier
{
  v39 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  configurationCopy = configuration;
  identifierCopy = identifier;
  v36.receiver = self;
  v36.super_class = HKWorkoutBuilder;
  v12 = [(HKWorkoutBuilder *)&v36 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_healthStore, store);
    objc_storeStrong(&v13->_identifier, identifier);
    objc_storeStrong(&v13->_builderConfiguration, configuration);
    workoutConfiguration = [configurationCopy workoutConfiguration];
    v15 = [workoutConfiguration copy];
    workoutConfiguration = v13->_workoutConfiguration;
    v13->_workoutConfiguration = v15;

    v13->_lock._os_unfair_lock_opaque = 0;
    v17 = HKCreateSerialDispatchQueue(v13, @"work");
    queue = v13->_queue;
    v13->_queue = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lock_seriesBuilders = v13->_lock_seriesBuilders;
    v13->_lock_seriesBuilders = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lock_statisticsByType = v13->_lock_statisticsByType;
    v13->_lock_statisticsByType = v21;

    lock_metadata = v13->_lock_metadata;
    v13->_lock_metadata = MEMORY[0x1E695E0F8];

    lock_workoutEvents = v13->_lock_workoutEvents;
    v13->_lock_workoutEvents = MEMORY[0x1E695E0F0];

    v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lock_activitiesPerUUID = v13->_lock_activitiesPerUUID;
    v13->_lock_activitiesPerUUID = v25;

    v27 = [[HKRetryableOperation alloc] initWithQueue:v13->_queue retryCount:5];
    retryableOperation = v13->_retryableOperation;
    v13->_retryableOperation = v27;

    v13->_lock_serverConstructionState = 0;
    v29 = [objc_opt_class() _constructionStateMachineForBuilderConfiguration:configurationCopy builderIdentifier:identifierCopy];
    lock_constructionStateMachine = v13->_lock_constructionStateMachine;
    v13->_lock_constructionStateMachine = v29;

    [(HKStateMachine *)v13->_lock_constructionStateMachine setDelegate:v13];
    os_unfair_lock_lock(&v13->_lock);
    [(HKStateMachine *)v13->_lock_constructionStateMachine enterAtState:0];
    os_unfair_lock_unlock(&v13->_lock);
    v31 = [[HKTaskServerProxyProvider alloc] initWithHealthStore:storeCopy taskIdentifier:@"HKWorkoutBuilderServerIdentifier" exportedObject:v13 taskUUID:identifierCopy];
    proxyProvider = v13->_proxyProvider;
    v13->_proxyProvider = v31;

    [(HKTaskServerProxyProvider *)v13->_proxyProvider setTaskConfiguration:configurationCopy];
    _HKInitializeLogging();
    v33 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v38 = v13;
      _os_log_impl(&dword_19197B000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@: (#w0)", buf, 0xCu);
    }
  }

  v34 = *MEMORY[0x1E69E9840];
  return v13;
}

- (NSString)description
{
  associatedSessionUUID = [(HKWorkoutBuilderConfiguration *)self->_builderConfiguration associatedSessionUUID];

  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  hk_shortRepresentation = [(NSUUID *)self->_identifier hk_shortRepresentation];
  v8 = hk_shortRepresentation;
  if (associatedSessionUUID)
  {
    associatedSessionUUID2 = [(HKWorkoutBuilderConfiguration *)self->_builderConfiguration associatedSessionUUID];
    hk_shortRepresentation2 = [associatedSessionUUID2 hk_shortRepresentation];
    v11 = [v4 stringWithFormat:@"%@_%@ [%@]", v6, v8, hk_shortRepresentation2];
  }

  else
  {
    v11 = [v4 stringWithFormat:@"%@_%@", v6, hk_shortRepresentation];
  }

  return v11;
}

+ (int64_t)_collectionStateAtDate:(id)date startDate:(id)startDate endDate:(id)endDate sortedEvents:(id)events
{
  v34 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  startDateCopy = startDate;
  endDateCopy = endDate;
  eventsCopy = events;
  if (startDateCopy && ([dateCopy hk_isBeforeDate:startDateCopy] & 1) == 0)
  {
    if (endDateCopy && ([endDateCopy hk_isBeforeOrEqualToDate:dateCopy] & 1) != 0)
    {
      v13 = 3;
    }

    else
    {
      v27 = endDateCopy;
      v28 = startDateCopy;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v26 = eventsCopy;
      v14 = eventsCopy;
      v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v30;
        v13 = 1;
LABEL_9:
        v18 = 0;
        while (1)
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v29 + 1) + 8 * v18);
          dateInterval = [v19 dateInterval];
          startDate = [dateInterval startDate];
          v22 = [startDate hk_isAfterDate:dateCopy];

          if (v22)
          {
            break;
          }

          type = [v19 type];
          if (type == 2)
          {
            v13 = 1;
          }

          else if (type == 1)
          {
            v13 = 2;
          }

          if (v16 == ++v18)
          {
            v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
            if (v16)
            {
              goto LABEL_9;
            }

            break;
          }
        }
      }

      else
      {
        v13 = 1;
      }

      endDateCopy = v27;
      startDateCopy = v28;
      eventsCopy = v26;
    }
  }

  else
  {
    v13 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (double)_elapsedTimeAtDate:(id)date startDate:(id)startDate endDate:(id)endDate sortedEvents:(id)events
{
  v44 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  startDateCopy = startDate;
  endDateCopy = endDate;
  eventsCopy = events;
  v13 = 0.0;
  if (!startDateCopy || ([startDateCopy hk_isAfterOrEqualToDate:dateCopy] & 1) != 0)
  {
    goto LABEL_29;
  }

  if (endDateCopy)
  {
    v14 = HKDateMin(dateCopy, endDateCopy);

    dateCopy = v14;
  }

  [startDateCopy timeIntervalSinceReferenceDate];
  v16 = v15;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v17 = eventsCopy;
  v18 = [v17 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (!v18)
  {

    goto LABEL_28;
  }

  v19 = v18;
  v33 = eventsCopy;
  v34 = endDateCopy;
  v20 = *v36;
  v21 = 1;
  while (2)
  {
    for (i = 0; i != v19; ++i)
    {
      if (*v36 != v20)
      {
        objc_enumerationMutation(v17);
      }

      v23 = *(*(&v35 + 1) + 8 * i);
      dateInterval = [v23 dateInterval];
      startDate = [dateInterval startDate];

      if ([startDate hk_isBeforeDate:startDateCopy])
      {
        _HKInitializeLogging();
        v28 = HKLogWorkouts;
        if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v40 = startDate;
          v41 = 2114;
          v42 = startDateCopy;
          v29 = "Event start date: %{public}@ is before workout start date: %{public}@";
LABEL_25:
          _os_log_impl(&dword_19197B000, v28, OS_LOG_TYPE_DEFAULT, v29, buf, 0x16u);
        }

LABEL_26:

        goto LABEL_27;
      }

      if ([startDate hk_isAfterDate:dateCopy])
      {
        _HKInitializeLogging();
        v28 = HKLogWorkouts;
        if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v40 = startDate;
          v41 = 2114;
          v42 = dateCopy;
          v29 = "Event start date: %{public}@ is in future for date: %{public}@";
          goto LABEL_25;
        }

        goto LABEL_26;
      }

      if ((([v23 type] == 1) & v21) == 1)
      {
        [startDate timeIntervalSinceReferenceDate];
        v21 = 0;
        v13 = v13 + v26 - v16;
        v16 = 0.0;
      }

      if ([v23 type] == 2 && (v21 & 1) == 0)
      {
        [startDate timeIntervalSinceReferenceDate];
        v16 = v27;
        v21 = 1;
      }
    }

    v19 = [v17 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v19)
    {
      continue;
    }

    break;
  }

LABEL_27:

  eventsCopy = v33;
  endDateCopy = v34;
  if (v21)
  {
LABEL_28:
    [dateCopy timeIntervalSinceReferenceDate];
    v13 = v13 + v30 - v16;
  }

LABEL_29:

  v31 = *MEMORY[0x1E69E9840];
  return v13;
}

- (HKDevice)device
{
  os_unfair_lock_lock(&self->_lock);
  device = [(HKWorkoutBuilderConfiguration *)self->_builderConfiguration device];
  os_unfair_lock_unlock(&self->_lock);

  return device;
}

- (void)beginCollectionWithStartDate:(NSDate *)startDate completion:(void *)completion
{
  v6 = startDate;
  v7 = completion;
  if (v7)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__HKWorkoutBuilder_beginCollectionWithStartDate_completion___block_invoke;
    aBlock[3] = &unk_1E73766A0;
    aBlock[4] = self;
    v16 = v7;
    v8 = _Block_copy(aBlock);
  }

  else
  {
    v8 = 0;
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__HKWorkoutBuilder_beginCollectionWithStartDate_completion___block_invoke_3;
  block[3] = &unk_1E73766C8;
  block[4] = self;
  v13 = v6;
  v14 = v8;
  v10 = v8;
  v11 = v6;
  dispatch_async(queue, block);
}

void __60__HKWorkoutBuilder_beginCollectionWithStartDate_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(*(a1 + 32) + 216) clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__HKWorkoutBuilder_beginCollectionWithStartDate_completion___block_invoke_2;
  block[3] = &unk_1E7376678;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (NSDate)startDate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_workoutStartDate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSDate)endDate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_workoutEndDate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (double)_currentElapsedTime
{
  os_unfair_lock_lock(&self->_lock);
  lock_accumulatedElapsedTime = self->_lock_accumulatedElapsedTime;
  if (self->_lock_currentlyRunning)
  {
    lock_accumulatedElapsedTime = lock_accumulatedElapsedTime + CFAbsoluteTimeGetCurrent() - self->_lock_lastResumeTimestamp;
  }

  os_unfair_lock_unlock(&self->_lock);
  return lock_accumulatedElapsedTime;
}

- (NSTimeInterval)elapsedTimeAtDate:(NSDate *)date
{
  v4 = date;
  os_unfair_lock_lock(&self->_lock);
  [HKWorkoutBuilder _elapsedTimeAtDate:v4 startDate:self->_lock_workoutStartDate endDate:self->_lock_workoutEndDate sortedEvents:self->_lock_workoutEvents];
  v6 = v5;

  os_unfair_lock_unlock(&self->_lock);
  return v6;
}

- (BOOL)isCurrentlyRunning
{
  os_unfair_lock_lock(&self->_lock);
  lock_currentlyRunning = self->_lock_currentlyRunning;
  os_unfair_lock_unlock(&self->_lock);
  return lock_currentlyRunning;
}

- (void)addSamples:(NSArray *)samples completion:(void *)completion
{
  v6 = samples;
  v7 = completion;
  if (v7)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __42__HKWorkoutBuilder_addSamples_completion___block_invoke;
    aBlock[3] = &unk_1E73766A0;
    aBlock[4] = self;
    v16 = v7;
    v8 = _Block_copy(aBlock);
  }

  else
  {
    v8 = 0;
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__HKWorkoutBuilder_addSamples_completion___block_invoke_3;
  block[3] = &unk_1E73766C8;
  block[4] = self;
  v13 = v6;
  v14 = v8;
  v10 = v8;
  v11 = v6;
  dispatch_async(queue, block);
}

void __42__HKWorkoutBuilder_addSamples_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(*(a1 + 32) + 216) clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__HKWorkoutBuilder_addSamples_completion___block_invoke_2;
  block[3] = &unk_1E7376678;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)addWorkoutEvents:(NSArray *)workoutEvents completion:(void *)completion
{
  v6 = workoutEvents;
  v7 = completion;
  if (v7)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __48__HKWorkoutBuilder_addWorkoutEvents_completion___block_invoke;
    aBlock[3] = &unk_1E73766A0;
    aBlock[4] = self;
    v16 = v7;
    v8 = _Block_copy(aBlock);
  }

  else
  {
    v8 = 0;
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__HKWorkoutBuilder_addWorkoutEvents_completion___block_invoke_3;
  block[3] = &unk_1E73766C8;
  block[4] = self;
  v13 = v6;
  v14 = v8;
  v10 = v8;
  v11 = v6;
  dispatch_async(queue, block);
}

void __48__HKWorkoutBuilder_addWorkoutEvents_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(*(a1 + 32) + 216) clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__HKWorkoutBuilder_addWorkoutEvents_completion___block_invoke_2;
  block[3] = &unk_1E7376678;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (NSArray)workoutEvents
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSArray *)self->_lock_workoutEvents copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)addMetadata:(NSDictionary *)metadata completion:(void *)completion
{
  v6 = metadata;
  v7 = completion;
  if (v7)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __43__HKWorkoutBuilder_addMetadata_completion___block_invoke;
    aBlock[3] = &unk_1E73766A0;
    aBlock[4] = self;
    v16 = v7;
    v8 = _Block_copy(aBlock);
  }

  else
  {
    v8 = 0;
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__HKWorkoutBuilder_addMetadata_completion___block_invoke_3;
  block[3] = &unk_1E73766C8;
  block[4] = self;
  v13 = v6;
  v14 = v8;
  v10 = v8;
  v11 = v6;
  dispatch_async(queue, block);
}

void __43__HKWorkoutBuilder_addMetadata_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(*(a1 + 32) + 216) clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__HKWorkoutBuilder_addMetadata_completion___block_invoke_2;
  block[3] = &unk_1E7376678;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (NSDictionary)metadata
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSDictionary *)self->_lock_metadata copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)addWorkoutActivity:(HKWorkoutActivity *)workoutActivity completion:(void *)completion
{
  v6 = workoutActivity;
  v7 = completion;
  if (v7)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __50__HKWorkoutBuilder_addWorkoutActivity_completion___block_invoke;
    aBlock[3] = &unk_1E73766A0;
    aBlock[4] = self;
    v16 = v7;
    v8 = _Block_copy(aBlock);
  }

  else
  {
    v8 = 0;
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__HKWorkoutBuilder_addWorkoutActivity_completion___block_invoke_3;
  block[3] = &unk_1E73766C8;
  block[4] = self;
  v13 = v6;
  v14 = v8;
  v10 = v8;
  v11 = v6;
  dispatch_async(queue, block);
}

void __50__HKWorkoutBuilder_addWorkoutActivity_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(*(a1 + 32) + 216) clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__HKWorkoutBuilder_addWorkoutActivity_completion___block_invoke_2;
  block[3] = &unk_1E7376678;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (NSArray)workoutActivities
{
  os_unfair_lock_lock(&self->_lock);
  allValues = [(NSMutableDictionary *)self->_lock_activitiesPerUUID allValues];
  v4 = [allValues sortedArrayUsingComparator:&__block_literal_global];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

uint64_t __37__HKWorkoutBuilder_workoutActivities__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)updateActivityWithUUID:(NSUUID *)UUID endDate:(NSDate *)endDate completion:(void *)completion
{
  v8 = UUID;
  v9 = endDate;
  v10 = completion;
  if (v10)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__HKWorkoutBuilder_updateActivityWithUUID_endDate_completion___block_invoke;
    aBlock[3] = &unk_1E73766A0;
    aBlock[4] = self;
    v21 = v10;
    v11 = _Block_copy(aBlock);
  }

  else
  {
    v11 = 0;
  }

  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __62__HKWorkoutBuilder_updateActivityWithUUID_endDate_completion___block_invoke_3;
  v16[3] = &unk_1E7376710;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v11;
  v13 = v11;
  v14 = v9;
  v15 = v8;
  dispatch_async(queue, v16);
}

void __62__HKWorkoutBuilder_updateActivityWithUUID_endDate_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(*(a1 + 32) + 216) clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__HKWorkoutBuilder_updateActivityWithUUID_endDate_completion___block_invoke_2;
  block[3] = &unk_1E7376678;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)updateActivityWithUUID:(NSUUID *)UUID addMedatata:(NSDictionary *)metadata completion:(void *)completion
{
  v8 = UUID;
  v9 = metadata;
  v10 = completion;
  if (v10)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __66__HKWorkoutBuilder_updateActivityWithUUID_addMedatata_completion___block_invoke;
    aBlock[3] = &unk_1E73766A0;
    aBlock[4] = self;
    v21 = v10;
    v11 = _Block_copy(aBlock);
  }

  else
  {
    v11 = 0;
  }

  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __66__HKWorkoutBuilder_updateActivityWithUUID_addMedatata_completion___block_invoke_3;
  v16[3] = &unk_1E7376710;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v11;
  v13 = v11;
  v14 = v9;
  v15 = v8;
  dispatch_async(queue, v16);
}

void __66__HKWorkoutBuilder_updateActivityWithUUID_addMedatata_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(*(a1 + 32) + 216) clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__HKWorkoutBuilder_updateActivityWithUUID_addMedatata_completion___block_invoke_2;
  block[3] = &unk_1E7376678;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)endCollectionWithEndDate:(NSDate *)endDate completion:(void *)completion
{
  v6 = endDate;
  v7 = completion;
  if (v7)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __56__HKWorkoutBuilder_endCollectionWithEndDate_completion___block_invoke;
    aBlock[3] = &unk_1E73766A0;
    aBlock[4] = self;
    v16 = v7;
    v8 = _Block_copy(aBlock);
  }

  else
  {
    v8 = 0;
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__HKWorkoutBuilder_endCollectionWithEndDate_completion___block_invoke_3;
  block[3] = &unk_1E73766C8;
  block[4] = self;
  v13 = v6;
  v14 = v8;
  v10 = v8;
  v11 = v6;
  dispatch_async(queue, block);
}

void __56__HKWorkoutBuilder_endCollectionWithEndDate_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(*(a1 + 32) + 216) clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__HKWorkoutBuilder_endCollectionWithEndDate_completion___block_invoke_2;
  block[3] = &unk_1E7376678;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)finishWorkoutWithCompletion:(void *)completion
{
  v4 = completion;
  if (v4)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __48__HKWorkoutBuilder_finishWorkoutWithCompletion___block_invoke;
    aBlock[3] = &unk_1E7376738;
    aBlock[4] = self;
    v11 = v4;
    v5 = _Block_copy(aBlock);
  }

  else
  {
    v5 = 0;
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__HKWorkoutBuilder_finishWorkoutWithCompletion___block_invoke_3;
  v8[3] = &unk_1E73765F0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

void __48__HKWorkoutBuilder_finishWorkoutWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 216) clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__HKWorkoutBuilder_finishWorkoutWithCompletion___block_invoke_2;
  block[3] = &unk_1E7376618;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)discardWorkout
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__HKWorkoutBuilder_discardWorkout__block_invoke;
  block[3] = &unk_1E7376780;
  block[4] = self;
  dispatch_async(queue, block);
}

void __34__HKWorkoutBuilder_discardWorkout__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 16));
  _HKInitializeLogging();
  v2 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_19197B000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Enqueing discarding workout", &v5, 0xCu);
  }

  [*(*(a1 + 32) + 104) enqueueEvent:103 date:0 error:0 completion:&__block_literal_global_75];
  os_unfair_lock_unlock((*(a1 + 32) + 16));
  v4 = *MEMORY[0x1E69E9840];
}

void __34__HKWorkoutBuilder_discardWorkout__block_invoke_73(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      __34__HKWorkoutBuilder_discardWorkout__block_invoke_73_cold_1();
    }
  }
}

- (NSDictionary)allStatistics
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_lock_statisticsByType copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HKStatistics)statisticsForType:(HKQuantityType *)quantityType
{
  v4 = quantityType;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_lock_statisticsByType objectForKeyedSubscript:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (HKSeriesBuilder)seriesBuilderForType:(HKSeriesType *)seriesType
{
  v4 = seriesType;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(HKWorkoutBuilder *)self _lock_seriesBuilderWithIdentifier:0 type:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)_lock_startDateForSnapshot
{
  v21 = *MEMORY[0x1E69E9840];
  lock_workoutStartDate = self->_lock_workoutStartDate;
  if (lock_workoutStartDate)
  {
    startDate = lock_workoutStartDate;
  }

  else
  {
    firstObject = [(NSArray *)self->_lock_workoutEvents firstObject];
    dateInterval = [firstObject dateInterval];
    startDate = [dateInterval startDate];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    allValues = [(NSMutableDictionary *)self->_lock_statisticsByType allValues];
    v8 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        v12 = startDate;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(allValues);
          }

          startDate2 = [*(*(&v16 + 1) + 8 * v11) startDate];
          startDate = HKDateMin(v12, startDate2);

          ++v11;
          v12 = startDate;
        }

        while (v9 != v11);
        v9 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  return startDate;
}

- (id)_lock_endDateForSnapshotWithStartDate:(id)date
{
  v28 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  lock_workoutEndDate = self->_lock_workoutEndDate;
  if (lock_workoutEndDate)
  {
    v6 = lock_workoutEndDate;
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    allValues = [(NSMutableDictionary *)self->_lock_statisticsByType allValues];
    v9 = [allValues countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        v12 = 0;
        v13 = date;
        do
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(allValues);
          }

          endDate = [*(*(&v23 + 1) + 8 * v12) endDate];
          date = HKDateMax(v13, endDate);

          ++v12;
          v13 = date;
        }

        while (v10 != v12);
        v10 = [allValues countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }

    lastObject = [(NSArray *)self->_lock_workoutEvents lastObject];
    dateInterval = [lastObject dateInterval];
    endDate2 = [dateInterval endDate];
    v6 = HKDateMax(date, endDate2);

    v18 = +[(HKObjectType *)HKSampleType];
    if ([v18 isMaximumDurationRestricted])
    {
      [v18 maximumAllowedDuration];
      v19 = [dateCopy dateByAddingTimeInterval:?];
      v20 = HKDateMin(v6, v19);

      v6 = v20;
    }
  }

  v21 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_lock_eventsBetweenStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  lock_workoutEvents = self->_lock_workoutEvents;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__HKWorkoutBuilder__lock_eventsBetweenStartDate_endDate___block_invoke;
  v13[3] = &unk_1E73767A8;
  v14 = dateCopy;
  v15 = endDateCopy;
  v9 = endDateCopy;
  v10 = dateCopy;
  v11 = [(NSArray *)lock_workoutEvents hk_filter:v13];

  return v11;
}

uint64_t __57__HKWorkoutBuilder__lock_eventsBetweenStartDate_endDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 dateInterval];
  v5 = [v4 startDate];
  if ([v5 hk_isBeforeDate:*(a1 + 32)])
  {
    v6 = 0;
  }

  else
  {
    v7 = [v3 dateInterval];
    v8 = [v7 endDate];
    v6 = [v8 hk_isAfterDate:*(a1 + 40)] ^ 1;
  }

  return v6;
}

- (id)_currentSnapshot
{
  os_unfair_lock_lock(&self->_lock);
  _lock_startDateForSnapshot = [(HKWorkoutBuilder *)self _lock_startDateForSnapshot];
  if (_lock_startDateForSnapshot)
  {
    workoutConfiguration = [(HKWorkoutBuilderConfiguration *)self->_builderConfiguration workoutConfiguration];
    activityType = [workoutConfiguration activityType];

    v17 = [(NSDictionary *)self->_lock_metadata mutableCopy];
    taskUUID = [(HKTaskServerProxyProvider *)self->_proxyProvider taskUUID];
    uUIDString = [taskUUID UUIDString];
    [v17 setObject:uUIDString forKeyedSubscript:@"_HKPrivateWorkoutBuilderSnapshotMetadataFinalWorkoutUUIDStringKey"];

    v7 = [(HKWorkoutBuilder *)self _lock_endDateForSnapshotWithStartDate:_lock_startDateForSnapshot];
    v16 = [(HKWorkoutBuilder *)self _lock_eventsBetweenStartDate:_lock_startDateForSnapshot endDate:v7];
    allValues = [(NSMutableDictionary *)self->_lock_activitiesPerUUID allValues];
    lock_statisticsByType = self->_lock_statisticsByType;
    goalType = [(HKWorkoutBuilderConfiguration *)self->_builderConfiguration goalType];
    goal = [(HKWorkoutBuilderConfiguration *)self->_builderConfiguration goal];
    device = [(HKWorkoutBuilderConfiguration *)self->_builderConfiguration device];
    v13 = [HKWorkout _workoutWithActivityType:activityType startDate:_lock_startDateForSnapshot endDate:v7 workoutEvents:v16 workoutActivities:allValues duration:lock_statisticsByType statistics:0.0 goalType:goalType goal:goal device:device metadata:v17];

    os_unfair_lock_unlock(&self->_lock);
    v14 = v13;
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v14 = 0;
  }

  return v14;
}

- (void)_setDevice:(id)device
{
  deviceCopy = device;
  os_unfair_lock_lock(&self->_lock);
  [(HKWorkoutBuilder *)self _lock_updateDevice:deviceCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_setStatisticsMergeStrategy:(unint64_t)strategy forType:(id)type
{
  typeCopy = type;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__HKWorkoutBuilder__setStatisticsMergeStrategy_forType___block_invoke;
  block[3] = &unk_1E73767D0;
  v10 = typeCopy;
  strategyCopy = strategy;
  block[4] = self;
  v8 = typeCopy;
  dispatch_async(queue, block);
}

- (void)_setStatisticsComputationMethod:(int64_t)method forType:(id)type
{
  typeCopy = type;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__HKWorkoutBuilder__setStatisticsComputationMethod_forType___block_invoke;
  block[3] = &unk_1E73767D0;
  v10 = typeCopy;
  methodCopy = method;
  block[4] = self;
  v8 = typeCopy;
  dispatch_async(queue, block);
}

- (void)_removeMetadata:(id)metadata completion:(id)completion
{
  metadataCopy = metadata;
  completionCopy = completion;
  if (completionCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __47__HKWorkoutBuilder__removeMetadata_completion___block_invoke;
    aBlock[3] = &unk_1E73766A0;
    aBlock[4] = self;
    v16 = completionCopy;
    v8 = _Block_copy(aBlock);
  }

  else
  {
    v8 = 0;
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__HKWorkoutBuilder__removeMetadata_completion___block_invoke_3;
  block[3] = &unk_1E73766C8;
  block[4] = self;
  v13 = metadataCopy;
  v14 = v8;
  v10 = v8;
  v11 = metadataCopy;
  dispatch_async(queue, block);
}

void __47__HKWorkoutBuilder__removeMetadata_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(*(a1 + 32) + 216) clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__HKWorkoutBuilder__removeMetadata_completion___block_invoke_2;
  block[3] = &unk_1E7376678;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)currentZonesForType:(id)type completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__HKWorkoutBuilder_currentZonesForType_completion___block_invoke;
  v13[3] = &unk_1E73767F8;
  v14 = typeCopy;
  v15 = completionCopy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__HKWorkoutBuilder_currentZonesForType_completion___block_invoke_2;
  v11[3] = &unk_1E7376820;
  v11[4] = self;
  v12 = v15;
  v9 = v15;
  v10 = typeCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

void __51__HKWorkoutBuilder_currentZonesForType_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __51__HKWorkoutBuilder_currentZonesForType_completion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)stateMachine:(id)machine didEnterState:(id)state date:(id)date error:(id)error
{
  dateCopy = date;
  stateCopy = state;
  os_unfair_lock_assert_owner(&self->_lock);
  index = [stateCopy index];

  if (index > 2)
  {
    if (index == 3 || index == 4)
    {
      [(HKWorkoutBuilder *)self _lock_freezeSeriesBuilders];
    }
  }

  else if (index == 1)
  {
    if (dateCopy)
    {
      v13 = [dateCopy copy];
      lock_workoutStartDate = self->_lock_workoutStartDate;
      self->_lock_workoutStartDate = v13;
    }

    if (!self->_lock_workoutStartDate)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
      {
        [HKWorkoutBuilder stateMachine:didEnterState:date:error:];
      }
    }
  }

  else if (index == 2)
  {
    if (dateCopy)
    {
      v11 = [dateCopy copy];
      lock_workoutEndDate = self->_lock_workoutEndDate;
      self->_lock_workoutEndDate = v11;
    }

    if (!self->_lock_workoutEndDate)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
      {
        [HKWorkoutBuilder stateMachine:didEnterState:date:error:];
      }
    }
  }
}

- (void)stateMachine:(id)machine didTransition:(id)transition fromState:(id)state toState:(id)toState date:(id)date error:(id)error
{
  v17 = *MEMORY[0x1E69E9840];
  transitionCopy = transition;
  toStateCopy = toState;
  os_unfair_lock_assert_owner(&self->_lock);
  _HKInitializeLogging();
  v12 = HKLogWorkouts;
  v13 = os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT);
  if (transitionCopy)
  {
    if (v13)
    {
      *v16 = 138543618;
      *&v16[4] = self;
      *&v16[12] = 2114;
      *&v16[14] = transitionCopy;
      v14 = "%{public}@: (#w0) %{public}@.";
LABEL_6:
      _os_log_impl(&dword_19197B000, v12, OS_LOG_TYPE_DEFAULT, v14, v16, 0x16u);
    }
  }

  else if (v13)
  {
    *v16 = 138543618;
    *&v16[4] = self;
    *&v16[12] = 2114;
    *&v16[14] = toStateCopy;
    v14 = "%{public}@: (#w0) Enter at %{public}@.";
    goto LABEL_6;
  }

  [(HKWorkoutBuilder *)self _pushCurrentTargetState:*v16];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_pushCurrentTargetState
{
  proxyProvider = self->_proxyProvider;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__HKWorkoutBuilder__pushCurrentTargetState__block_invoke;
  v4[3] = &unk_1E7376870;
  v4[4] = self;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__HKWorkoutBuilder__pushCurrentTargetState__block_invoke_82;
  v3[3] = &unk_1E7376898;
  v3[4] = self;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v4 errorHandler:v3];
}

void __43__HKWorkoutBuilder__pushCurrentTargetState__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  os_unfair_lock_lock(v3 + 4);
  v5 = [*(*(a1 + 32) + 104) currentState];
  v6 = [v5 index];
  v7 = *(a1 + 32);
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __43__HKWorkoutBuilder__pushCurrentTargetState__block_invoke_2;
  v11[3] = &unk_1E7376848;
  v11[4] = v7;
  v12 = v5;
  v10 = v5;
  [v4 remote_setTargetConstructionState:v6 startDate:v8 endDate:v9 completion:v11];

  os_unfair_lock_unlock((*(a1 + 32) + 16));
}

void __43__HKWorkoutBuilder__pushCurrentTargetState__block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogWorkouts;
  if (a2)
  {
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v8;
      _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: (#w2) Server acknowledged transition to state %{public}@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __43__HKWorkoutBuilder__pushCurrentTargetState__block_invoke_2_cold_1(a1);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __43__HKWorkoutBuilder__pushCurrentTargetState__block_invoke_82(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __43__HKWorkoutBuilder__pushCurrentTargetState__block_invoke_2_cold_1(a1);
  }
}

- (void)_queue_beginCollectionWithStartDate:(id)date completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  completionCopy = completion;
  if (dateCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    _HKInitializeLogging();
    v9 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_19197B000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Enqueuing begin collection event", buf, 0xCu);
    }

    lock_constructionStateMachine = self->_lock_constructionStateMachine;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __67__HKWorkoutBuilder__queue_beginCollectionWithStartDate_completion___block_invoke;
    v13[3] = &unk_1E73768C0;
    v15 = completionCopy;
    v16 = a2;
    v13[4] = self;
    v14 = dateCopy;
    [(HKStateMachine *)lock_constructionStateMachine enqueueEvent:100 date:v14 error:0 completion:v13];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"startDate cannot be nil"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __67__HKWorkoutBuilder__queue_beginCollectionWithStartDate_completion___block_invoke(uint64_t a1, char a2)
{
  v3 = *(a1 + 48);
  if (a2)
  {
    v4 = [*(a1 + 48) copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 128);
    *(v5 + 128) = v4;

    v7 = [*(a1 + 40) copy];
    v8 = *(a1 + 32);
    v9 = *(v8 + 32);
    *(v8 + 32) = v7;

    v10 = *(a1 + 32);

    [v10 _lock_updateElapsedTimeCache];
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:*(a1 + 56) format:@"Unable to begin a workout that has already started."];
    (*(v3 + 16))(v3, 0, v12);
  }
}

- (void)_queue_endCollectionWithEndDate:(id)date completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  completionCopy = completion;
  if (!dateCopy)
  {
    v11 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"endDate cannot be nil"];
    completionCopy[2](completionCopy, 0, v11);

    goto LABEL_11;
  }

  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_workoutStartDate)
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = objc_opt_class();
    v14 = @"cannot set endDate without a startDate";
LABEL_10:
    v15 = [v12 hk_errorForInvalidArgument:@"@" class:v13 selector:a2 format:v14];
    completionCopy[2](completionCopy, 0, v15);

    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_11;
  }

  if (([dateCopy hk_isAfterDate:?] & 1) == 0)
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = objc_opt_class();
    v14 = @"endDate must be after startDate";
    goto LABEL_10;
  }

  _HKInitializeLogging();
  v9 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_19197B000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Enqueuing end collection", buf, 0xCu);
  }

  lock_constructionStateMachine = self->_lock_constructionStateMachine;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __63__HKWorkoutBuilder__queue_endCollectionWithEndDate_completion___block_invoke;
  v17[3] = &unk_1E73768C0;
  v19 = completionCopy;
  v20 = a2;
  v17[4] = self;
  v18 = dateCopy;
  [(HKStateMachine *)lock_constructionStateMachine enqueueEvent:101 date:v18 error:0 completion:v17];
  os_unfair_lock_unlock(&self->_lock);

LABEL_11:
  v16 = *MEMORY[0x1E69E9840];
}

void __63__HKWorkoutBuilder__queue_endCollectionWithEndDate_completion___block_invoke(uint64_t a1, char a2)
{
  v3 = *(a1 + 48);
  if (a2)
  {
    v4 = [*(a1 + 48) copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 136);
    *(v5 + 136) = v4;

    v7 = [*(a1 + 40) copy];
    v8 = *(a1 + 32);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = *(a1 + 32);

    [v10 _lock_updateElapsedTimeCache];
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:*(a1 + 56) format:@"Unable to end a workout that is not currently active."];
    (*(v3 + 16))(v3, 0, v12);
  }
}

- (void)_queue_finishWorkoutWithCompletion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  _HKInitializeLogging();
  v6 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Enqueing finish workout", buf, 0xCu);
  }

  lock_constructionStateMachine = self->_lock_constructionStateMachine;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__HKWorkoutBuilder__queue_finishWorkoutWithCompletion___block_invoke;
  v10[3] = &unk_1E73768E8;
  v10[4] = self;
  v11 = completionCopy;
  v12 = a2;
  v8 = completionCopy;
  [(HKStateMachine *)lock_constructionStateMachine enqueueEvent:102 date:0 error:0 completion:v10];
  os_unfair_lock_unlock(&self->_lock);

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __55__HKWorkoutBuilder__queue_finishWorkoutWithCompletion___block_invoke(uint64_t a1, char a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    v4 = [*(a1 + 40) copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 144);
    *(v5 + 144) = v4;
  }

  else
  {
    v7 = *(a1 + 32);
    v9 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:*(a1 + 48) format:@"Unable to finish a workout that is not currently ended."];
    (*(v3 + 16))(v3, 0, v9);
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)_queue_addSamples:(id)samples completion:(id)completion
{
  samplesCopy = samples;
  completionCopy = completion;
  v16 = 0;
  v8 = [HKWorkout _validateObjects:samplesCopy forClass:objc_opt_class() error:&v16];
  v9 = v16;
  if (v8)
  {
    retryableOperation = self->_retryableOperation;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __49__HKWorkoutBuilder__queue_addSamples_completion___block_invoke;
    v14[3] = &unk_1E7376988;
    v14[4] = self;
    v15 = samplesCopy;
    v11 = v9;
    [(HKRetryableOperation *)retryableOperation _queue_performRetryableOperation:v14 completion:completionCopy];

    completionCopy = v11;
  }

  else
  {
    v12 = completionCopy[2];
    v13 = v16;
    v12(completionCopy, 0, v13);
  }
}

void __49__HKWorkoutBuilder__queue_addSamples_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 208);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__HKWorkoutBuilder__queue_addSamples_completion___block_invoke_2;
  v9[3] = &unk_1E7376938;
  v9[4] = v4;
  v11 = v3;
  v10 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__HKWorkoutBuilder__queue_addSamples_completion___block_invoke_4;
  v7[3] = &unk_1E7376960;
  v8 = v11;
  v6 = v11;
  [v5 fetchProxyWithHandler:v9 errorHandler:v7];
}

void __49__HKWorkoutBuilder__queue_addSamples_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) shouldRetry])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __49__HKWorkoutBuilder__queue_addSamples_completion___block_invoke_3;
    v7[3] = &unk_1E7376910;
    v4 = *(a1 + 40);
    v8 = *(a1 + 48);
    [v3 remote_addSamples:v4 completion:v7];
  }

  else
  {
    v5 = *(a1 + 48);
    v6 = [MEMORY[0x1E696ABC0] hk_error:0 format:@"An unknown error occurred"];
    (*(v5 + 16))(v5, 0, 0, v6);
  }
}

- (void)_queue_addWorkoutEvents:(id)events completion:(id)completion
{
  eventsCopy = events;
  completionCopy = completion;
  v16 = 0;
  v8 = [HKWorkout _validateObjects:eventsCopy forClass:objc_opt_class() error:&v16];
  v9 = v16;
  if (v8)
  {
    retryableOperation = self->_retryableOperation;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __55__HKWorkoutBuilder__queue_addWorkoutEvents_completion___block_invoke;
    v14[3] = &unk_1E7376988;
    v14[4] = self;
    v15 = eventsCopy;
    v11 = v9;
    [(HKRetryableOperation *)retryableOperation _queue_performRetryableOperation:v14 completion:completionCopy];

    completionCopy = v11;
  }

  else
  {
    v12 = completionCopy[2];
    v13 = v16;
    v12(completionCopy, 0, v13);
  }
}

void __55__HKWorkoutBuilder__queue_addWorkoutEvents_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) shouldRetry])
  {
    v4 = *(*(a1 + 32) + 208);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__HKWorkoutBuilder__queue_addWorkoutEvents_completion___block_invoke_2;
    v8[3] = &unk_1E73767F8;
    v9 = *(a1 + 40);
    v10 = v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__HKWorkoutBuilder__queue_addWorkoutEvents_completion___block_invoke_4;
    v6[3] = &unk_1E7376960;
    v7 = v10;
    [v4 fetchProxyWithHandler:v8 errorHandler:v6];
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] hk_error:0 format:@"An unknown error occurred"];
    (*(v3 + 2))(v3, 0, 0, v5);
  }
}

void __55__HKWorkoutBuilder__queue_addWorkoutEvents_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__HKWorkoutBuilder__queue_addWorkoutEvents_completion___block_invoke_3;
  v4[3] = &unk_1E7376910;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 remote_addWorkoutEvents:v3 completion:v4];
}

- (BOOL)_lock_canAddMetadataInCurrentState
{
  os_unfair_lock_assert_owner(&self->_lock);
  currentState = [(HKStateMachine *)self->_lock_constructionStateMachine currentState];
  if ([currentState index] == 4)
  {
    v4 = 0;
  }

  else
  {
    currentState2 = [(HKStateMachine *)self->_lock_constructionStateMachine currentState];
    v4 = [currentState2 index] != 3;
  }

  return v4;
}

- (void)_queue_addMetadata:(id)metadata completion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  if ([(HKWorkoutBuilder *)self _lock_canAddMetadataInCurrentState]&& checkWhetherAllMetadataAlreadyExists(metadataCopy, self->_lock_metadata))
  {
    _HKInitializeLogging();
    v8 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_19197B000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: (#w1) Metadata update was elided as all requested metadata already existed.", buf, 0xCu);
    }

    completionCopy[2](completionCopy, 1, 0);
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    retryableOperation = self->_retryableOperation;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __50__HKWorkoutBuilder__queue_addMetadata_completion___block_invoke;
    v11[3] = &unk_1E7376988;
    v11[4] = self;
    v12 = metadataCopy;
    [(HKRetryableOperation *)retryableOperation _queue_performRetryableOperation:v11 completion:completionCopy];
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __50__HKWorkoutBuilder__queue_addMetadata_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) shouldRetry])
  {
    v4 = *(*(a1 + 32) + 208);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__HKWorkoutBuilder__queue_addMetadata_completion___block_invoke_2;
    v8[3] = &unk_1E73767F8;
    v9 = *(a1 + 40);
    v10 = v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __50__HKWorkoutBuilder__queue_addMetadata_completion___block_invoke_4;
    v6[3] = &unk_1E7376960;
    v7 = v10;
    [v4 fetchProxyWithHandler:v8 errorHandler:v6];
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] hk_error:0 format:@"An unknown error occurred"];
    (*(v3 + 2))(v3, 0, 0, v5);
  }
}

void __50__HKWorkoutBuilder__queue_addMetadata_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__HKWorkoutBuilder__queue_addMetadata_completion___block_invoke_3;
  v4[3] = &unk_1E7376910;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 remote_addMetadata:v3 completion:v4];
}

- (void)_queue_removeMetadata:(id)metadata completion:(id)completion
{
  metadataCopy = metadata;
  retryableOperation = self->_retryableOperation;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__HKWorkoutBuilder__queue_removeMetadata_completion___block_invoke;
  v9[3] = &unk_1E7376988;
  v9[4] = self;
  v10 = metadataCopy;
  v8 = metadataCopy;
  [(HKRetryableOperation *)retryableOperation _queue_performRetryableOperation:v9 completion:completion];
}

void __53__HKWorkoutBuilder__queue_removeMetadata_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) shouldRetry])
  {
    v4 = *(*(a1 + 32) + 208);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53__HKWorkoutBuilder__queue_removeMetadata_completion___block_invoke_2;
    v8[3] = &unk_1E73767F8;
    v9 = *(a1 + 40);
    v10 = v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __53__HKWorkoutBuilder__queue_removeMetadata_completion___block_invoke_4;
    v6[3] = &unk_1E7376960;
    v7 = v10;
    [v4 fetchProxyWithHandler:v8 errorHandler:v6];
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] hk_error:0 format:@"An unknown error occurred"];
    (*(v3 + 2))(v3, 0, 0, v5);
  }
}

void __53__HKWorkoutBuilder__queue_removeMetadata_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__HKWorkoutBuilder__queue_removeMetadata_completion___block_invoke_3;
  v4[3] = &unk_1E7376910;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 remote_removeMetadata:v3 completion:v4];
}

- (void)_queue_addWorkoutActivity:(id)activity completion:(id)completion
{
  activityCopy = activity;
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  currentActivity = self->_currentActivity;
  if (currentActivity && ([(HKWorkoutActivity *)currentActivity endDate], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v11 = [MEMORY[0x1E696ABC0] hk_error:3 description:@"Cannot add new activity before ending current activity."];
    completionCopy[2](completionCopy, 0, v11);
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    retryableOperation = self->_retryableOperation;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__HKWorkoutBuilder__queue_addWorkoutActivity_completion___block_invoke;
    v12[3] = &unk_1E7376988;
    v12[4] = self;
    v13 = activityCopy;
    [(HKRetryableOperation *)retryableOperation _queue_performRetryableOperation:v12 completion:completionCopy];
  }
}

void __57__HKWorkoutBuilder__queue_addWorkoutActivity_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) shouldRetry])
  {
    v4 = *(*(a1 + 32) + 208);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__HKWorkoutBuilder__queue_addWorkoutActivity_completion___block_invoke_2;
    v8[3] = &unk_1E73767F8;
    v9 = *(a1 + 40);
    v10 = v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57__HKWorkoutBuilder__queue_addWorkoutActivity_completion___block_invoke_4;
    v6[3] = &unk_1E7376960;
    v7 = v10;
    [v4 fetchProxyWithHandler:v8 errorHandler:v6];
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] hk_error:0 format:@"An unknown error occurred"];
    (*(v3 + 2))(v3, 0, 0, v5);
  }
}

void __57__HKWorkoutBuilder__queue_addWorkoutActivity_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__HKWorkoutBuilder__queue_addWorkoutActivity_completion___block_invoke_3;
  v4[3] = &unk_1E7376910;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 remote_addWorkoutActivity:v3 completion:v4];
}

- (void)_queue_updateActivityWithUUID:(id)d endDate:(id)date completion:(id)completion
{
  dCopy = d;
  dateCopy = date;
  retryableOperation = self->_retryableOperation;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__HKWorkoutBuilder__queue_updateActivityWithUUID_endDate_completion___block_invoke;
  v13[3] = &unk_1E73769D8;
  v13[4] = self;
  v14 = dCopy;
  v15 = dateCopy;
  v11 = dateCopy;
  v12 = dCopy;
  [(HKRetryableOperation *)retryableOperation _queue_performRetryableOperation:v13 completion:completion];
}

void __69__HKWorkoutBuilder__queue_updateActivityWithUUID_endDate_completion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  if ([a1[4] shouldRetry])
  {
    v4 = *(a1[4] + 26);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __69__HKWorkoutBuilder__queue_updateActivityWithUUID_endDate_completion___block_invoke_2;
    v8[3] = &unk_1E73769B0;
    v9 = a1[5];
    v10 = a1[6];
    v11 = v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __69__HKWorkoutBuilder__queue_updateActivityWithUUID_endDate_completion___block_invoke_4;
    v6[3] = &unk_1E7376960;
    v7 = v11;
    [v4 fetchProxyWithHandler:v8 errorHandler:v6];
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] hk_error:0 format:@"An unknown error occurred"];
    (*(v3 + 2))(v3, 0, 0, v5);
  }
}

void __69__HKWorkoutBuilder__queue_updateActivityWithUUID_endDate_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__HKWorkoutBuilder__queue_updateActivityWithUUID_endDate_completion___block_invoke_3;
  v5[3] = &unk_1E7376910;
  v6 = *(a1 + 48);
  [a2 remote_updateActivityWithUUID:v3 endDate:v4 completion:v5];
}

- (void)_queue_updateActivityWithUUID:(id)d addMetadata:(id)metadata completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  metadataCopy = metadata;
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  v11 = [(NSMutableDictionary *)self->_lock_activitiesPerUUID objectForKeyedSubscript:dCopy];
  metadata = [v11 metadata];
  if ([(HKWorkoutBuilder *)self _lock_canAddMetadataInCurrentState]&& checkWhetherAllMetadataAlreadyExists(metadataCopy, metadata))
  {
    _HKInitializeLogging();
    v13 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_19197B000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: (#w1) Activity metadata update was elided as all requested metadata already existed.", buf, 0xCu);
    }

    completionCopy[2](completionCopy, 1, 0);
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    retryableOperation = self->_retryableOperation;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __73__HKWorkoutBuilder__queue_updateActivityWithUUID_addMetadata_completion___block_invoke;
    v16[3] = &unk_1E73769D8;
    v16[4] = self;
    v17 = dCopy;
    v18 = metadataCopy;
    [(HKRetryableOperation *)retryableOperation _queue_performRetryableOperation:v16 completion:completionCopy];
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __73__HKWorkoutBuilder__queue_updateActivityWithUUID_addMetadata_completion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  if ([a1[4] shouldRetry])
  {
    v4 = *(a1[4] + 26);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __73__HKWorkoutBuilder__queue_updateActivityWithUUID_addMetadata_completion___block_invoke_2;
    v8[3] = &unk_1E73769B0;
    v9 = a1[5];
    v10 = a1[6];
    v11 = v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __73__HKWorkoutBuilder__queue_updateActivityWithUUID_addMetadata_completion___block_invoke_4;
    v6[3] = &unk_1E7376960;
    v7 = v11;
    [v4 fetchProxyWithHandler:v8 errorHandler:v6];
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] hk_error:0 format:@"An unknown error occurred"];
    (*(v3 + 2))(v3, 0, 0, v5);
  }
}

void __73__HKWorkoutBuilder__queue_updateActivityWithUUID_addMetadata_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73__HKWorkoutBuilder__queue_updateActivityWithUUID_addMetadata_completion___block_invoke_3;
  v5[3] = &unk_1E7376910;
  v6 = *(a1 + 48);
  [a2 remote_updateActivityWithUUID:v3 addMetadata:v4 completion:v5];
}

- (id)_lock_seriesBuilderWithIdentifier:(id)identifier type:(id)type
{
  identifierCopy = identifier;
  typeCopy = type;
  os_unfair_lock_assert_owner(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_lock_seriesBuilders objectForKeyedSubscript:typeCopy];
  if (!v8)
  {
    v9 = +[HKSeriesType workoutRouteType];
    v10 = [typeCopy isEqual:v9];

    if (v10)
    {
      v11 = [HKWorkoutRouteBuilder alloc];
      healthStore = self->_healthStore;
      device = [(HKWorkoutBuilderConfiguration *)self->_builderConfiguration device];
      v8 = [(HKWorkoutRouteBuilder *)v11 initWithHealthStore:healthStore identifier:identifierCopy device:device workoutBuilderID:self->_identifier];

      if (v8)
      {
        [(NSMutableDictionary *)self->_lock_seriesBuilders setObject:v8 forKey:typeCopy];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)_lock_updateElapsedTimeCache
{
  v30 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  date = [MEMORY[0x1E695DF00] date];
  if ([HKWorkoutBuilder _collectionStateAtDate:date startDate:self->_lock_workoutStartDate endDate:self->_lock_workoutEndDate sortedEvents:self->_lock_workoutEvents]== 1)
  {
    [date timeIntervalSinceReferenceDate];
    v5 = 1;
  }

  else
  {
    v5 = 0;
    v4 = 0.0;
  }

  self->_lock_lastResumeTimestamp = v4;
  self->_lock_currentlyRunning = v5;
  [HKWorkoutBuilder _elapsedTimeAtDate:date startDate:self->_lock_workoutStartDate endDate:self->_lock_workoutEndDate sortedEvents:self->_lock_workoutEvents];
  self->_lock_accumulatedElapsedTime = v6;
  lock_workoutStartDate = self->_lock_workoutStartDate;
  _HKInitializeLogging();
  v8 = HKLogWorkouts;
  v9 = os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT);
  if (lock_workoutStartDate)
  {
    if (v9)
    {
      v11 = self->_lock_workoutStartDate;
      lock_workoutEndDate = self->_lock_workoutEndDate;
      v12 = v8;
      v13 = [(NSDate *)lock_workoutEndDate description];
      v14 = v13;
      v15 = @"<not ended>";
      lock_accumulatedElapsedTime = self->_lock_accumulatedElapsedTime;
      lock_currentlyRunning = self->_lock_currentlyRunning;
      if (v13)
      {
        v15 = v13;
      }

      v20 = 138544386;
      selfCopy2 = self;
      v22 = 2114;
      if (lock_currentlyRunning)
      {
        v18 = "running";
      }

      else
      {
        v18 = "paused";
      }

      v23 = v11;
      v24 = 2114;
      v25 = v15;
      v26 = 2048;
      v27 = lock_accumulatedElapsedTime;
      v28 = 2080;
      v29 = v18;
      _os_log_impl(&dword_19197B000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: (#w0) (%{public}@ - %{public}@) Elapsed: %0.2lfs %s.", &v20, 0x34u);
    }
  }

  else if (v9)
  {
    v20 = 138543362;
    selfCopy2 = self;
    _os_log_impl(&dword_19197B000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: (#w0) Elapsed time cache updated but workout has not yet started.", &v20, 0xCu);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_lock_freezeSeriesBuilders
{
  v16 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  allValues = [(NSMutableDictionary *)self->_lock_seriesBuilders allValues];
  v4 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __46__HKWorkoutBuilder__lock_freezeSeriesBuilders__block_invoke;
        v10[3] = &unk_1E7376A00;
        v10[4] = v8;
        [v8 freezeBuilderWithCompletion:v10];
        ++v7;
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __46__HKWorkoutBuilder__lock_freezeSeriesBuilders__block_invoke(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    _HKInitializeLogging();
    v6 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = v5;
      _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "Freezing series builder %{public}@ failed: %{public}@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_lock_updateDevice:(id)device
{
  deviceCopy = device;
  os_unfair_lock_assert_owner(&self->_lock);
  [(HKWorkoutBuilderConfiguration *)self->_builderConfiguration setDevice:deviceCopy];
  [(HKTaskServerProxyProvider *)self->_proxyProvider setTaskConfiguration:self->_builderConfiguration];
  proxyProvider = self->_proxyProvider;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__HKWorkoutBuilder__lock_updateDevice___block_invoke;
  v7[3] = &unk_1E7376870;
  v8 = deviceCopy;
  v6 = deviceCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v7 errorHandler:&__block_literal_global_125];
}

void __39__HKWorkoutBuilder__lock_updateDevice___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __39__HKWorkoutBuilder__lock_updateDevice___block_invoke_2_cold_1();
  }
}

- (void)_queue_setStatisticsMergeStrategy:(unint64_t)strategy forType:(id)type
{
  typeCopy = type;
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__HKWorkoutBuilder__queue_setStatisticsMergeStrategy_forType___block_invoke;
  v9[3] = &unk_1E7376A48;
  v10 = typeCopy;
  strategyCopy = strategy;
  v8 = typeCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:&__block_literal_global_127];
}

void __62__HKWorkoutBuilder__queue_setStatisticsMergeStrategy_forType___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __39__HKWorkoutBuilder__lock_updateDevice___block_invoke_2_cold_1();
  }
}

- (void)_queue_setStatisticsComputationMethod:(int64_t)method forType:(id)type
{
  typeCopy = type;
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__HKWorkoutBuilder__queue_setStatisticsComputationMethod_forType___block_invoke;
  v9[3] = &unk_1E7376A48;
  v10 = typeCopy;
  methodCopy = method;
  v8 = typeCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:&__block_literal_global_129];
}

void __66__HKWorkoutBuilder__queue_setStatisticsComputationMethod_forType___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __39__HKWorkoutBuilder__lock_updateDevice___block_invoke_2_cold_1();
  }
}

- (void)_lock_markRecoveryRequired
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (![(HKWorkoutBuilderConfiguration *)self->_builderConfiguration requiresRecovery])
  {
    [(HKWorkoutBuilderConfiguration *)self->_builderConfiguration setRequiresRecovery:1];
    builderConfiguration = self->_builderConfiguration;
    proxyProvider = self->_proxyProvider;

    [(HKTaskServerProxyProvider *)proxyProvider setTaskConfiguration:builderConfiguration];
  }
}

- (void)clientRemote_didUpdateStatistics:(id)statistics
{
  v43 = *MEMORY[0x1E69E9840];
  statisticsCopy = statistics;
  os_unfair_lock_lock(&self->_lock);
  [(HKWorkoutBuilder *)self _lock_markRecoveryRequired];
  lock_statisticsByType = self->_lock_statisticsByType;
  workoutStatistics = [statisticsCopy workoutStatistics];
  [(NSMutableDictionary *)lock_statisticsByType addEntriesFromDictionary:workoutStatistics];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v27 = statisticsCopy;
  obj = [statisticsCopy activitiesStatistics];
  v28 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v28)
  {
    v26 = *v34;
    do
    {
      v7 = 0;
      do
      {
        if (*v34 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v33 + 1) + 8 * v7);
        activitiesStatistics = [v27 activitiesStatistics];
        v10 = [activitiesStatistics objectForKeyedSubscript:v8];

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v29 objects:v41 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v30;
          do
          {
            v15 = 0;
            do
            {
              if (*v30 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v29 + 1) + 8 * v15);
              v17 = [(NSMutableDictionary *)self->_lock_activitiesPerUUID objectForKeyedSubscript:v8];
              v18 = [v11 objectForKeyedSubscript:v16];
              [v17 _setStatistics:v18 forType:v16];

              ++v15;
            }

            while (v13 != v15);
            v13 = [v11 countByEnumeratingWithState:&v29 objects:v41 count:16];
          }

          while (v13);
        }

        ++v7;
      }

      while (v7 != v28);
      v28 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v28);
  }

  _HKInitializeLogging();
  v19 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v19;
    allTypes = [v27 allTypes];
    allObjects = [allTypes allObjects];
    v23 = [allObjects componentsJoinedByString:{@", "}];
    *buf = 138543618;
    selfCopy = self;
    v39 = 2114;
    v40 = v23;
    _os_log_impl(&dword_19197B000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: (#w1) Updated statistics for types: %{public}@", buf, 0x16u);
  }

  os_unfair_lock_unlock(&self->_lock);

  v24 = *MEMORY[0x1E69E9840];
}

- (void)clientRemote_didUpdateMetadata:(id)metadata
{
  v10 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  os_unfair_lock_lock(&self->_lock);
  [(HKWorkoutBuilder *)self _lock_markRecoveryRequired];
  objc_storeStrong(&self->_lock_metadata, metadata);
  _HKInitializeLogging();
  v6 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: (#w1) Server updated metadata.", &v8, 0xCu);
  }

  os_unfair_lock_unlock(&self->_lock);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)clientRemote_didUpdateEvents:(id)events
{
  v12 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  os_unfair_lock_lock(&self->_lock);
  [(HKWorkoutBuilder *)self _lock_markRecoveryRequired];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__HKWorkoutBuilder_clientRemote_didUpdateEvents___block_invoke;
  v9[3] = &unk_1E7376A70;
  v9[4] = self;
  v6 = [eventsCopy hk_filter:v9];
  objc_storeStrong(&self->_lock_workoutEvents, events);
  _HKInitializeLogging();
  v7 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_19197B000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: (#w1) Server added events.", buf, 0xCu);
  }

  [(HKWorkoutBuilder *)self _lock_updateEvents:v6];
  os_unfair_lock_unlock(&self->_lock);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)clientRemote_didUpdateActivities:(id)activities
{
  v35 = *MEMORY[0x1E69E9840];
  activitiesCopy = activities;
  os_unfair_lock_lock(&self->_lock);
  selfCopy = self;
  [(HKWorkoutBuilder *)self _lock_markRecoveryRequired];
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(activitiesCopy, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = activitiesCopy;
  v6 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v31;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        lock_activitiesPerUUID = selfCopy->_lock_activitiesPerUUID;
        uUID = [v11 UUID];
        v14 = [(NSMutableDictionary *)lock_activitiesPerUUID objectForKeyedSubscript:uUID];

        allStatistics = [v14 allStatistics];
        v16 = [allStatistics count];

        if (v16)
        {
          allStatistics2 = [v14 allStatistics];
          [v11 _setAllStatistics:allStatistics2];
        }

        uUID2 = [v11 UUID];
        [(NSMutableDictionary *)v5 setObject:v11 forKeyedSubscript:uUID2];

        startDate = [(HKWorkoutActivity *)v8 startDate];
        startDate2 = [v11 startDate];
        v21 = [startDate hk_isAfterOrEqualToDate:startDate2];

        if ((v21 & 1) == 0)
        {
          v22 = v11;

          v8 = v22;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v23 = selfCopy->_lock_activitiesPerUUID;
  selfCopy->_lock_activitiesPerUUID = v5;
  v24 = v5;

  currentActivity = selfCopy->_currentActivity;
  selfCopy->_currentActivity = v8;
  v26 = v8;

  os_unfair_lock_unlock(&selfCopy->_lock);
  v27 = *MEMORY[0x1E69E9840];
}

- (void)clientRemote_didBeginActivity:(id)activity
{
  activityCopy = activity;
  os_unfair_lock_lock(&self->_lock);
  lock_activitiesPerUUID = self->_lock_activitiesPerUUID;
  uUID = [activityCopy UUID];
  v7 = [(NSMutableDictionary *)lock_activitiesPerUUID objectForKeyedSubscript:uUID];

  if (!v7)
  {
    v8 = self->_lock_activitiesPerUUID;
    uUID2 = [activityCopy UUID];
    [(NSMutableDictionary *)v8 setObject:activityCopy forKeyedSubscript:uUID2];

    objc_storeStrong(&self->_currentActivity, activity);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)clientRemote_didEndActivity:(id)activity
{
  activityCopy = activity;
  os_unfair_lock_lock(&self->_lock);
  lock_activitiesPerUUID = self->_lock_activitiesPerUUID;
  uUID = [activityCopy UUID];
  v7 = [(NSMutableDictionary *)lock_activitiesPerUUID objectForKeyedSubscript:uUID];
  endDate = [activityCopy endDate];

  [v7 _setEndDate:endDate];
  currentActivity = self->_currentActivity;
  self->_currentActivity = 0;

  [(HKWorkoutBuilder *)self _lock_markRecoveryRequired];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)clientRemote_didChangeElapsedTimeBasisWithStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  os_unfair_lock_lock(&self->_lock);
  [(HKWorkoutBuilder *)self _lock_markRecoveryRequired];
  if (dateCopy)
  {
    objc_storeStrong(&self->_lock_workoutStartDate, date);
  }

  if (endDateCopy)
  {
    objc_storeStrong(&self->_lock_workoutEndDate, endDate);
  }

  [(HKWorkoutBuilder *)self _lock_updateElapsedTimeCache];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)clientRemote_didRecoverSeriesBuilders:(id)builders
{
  v19 = *MEMORY[0x1E69E9840];
  buildersCopy = builders;
  os_unfair_lock_lock(&self->_lock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  allKeys = [buildersCopy allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [buildersCopy objectForKeyedSubscript:v10];
        v12 = [(HKWorkoutBuilder *)self _lock_seriesBuilderWithIdentifier:v10 type:v11];
      }

      v7 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_lock);
  v13 = *MEMORY[0x1E69E9840];
}

- (void)clientRemote_didFinishRecovery
{
  os_unfair_lock_lock(&self->_lock);
  v4 = _Block_copy(self->_unitTest_recoveryFinishedHandler);
  os_unfair_lock_unlock(&self->_lock);
  v3 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, self);
    v3 = v4;
  }
}

- (void)clientRemote_stateDidChange:(int64_t)change startDate:(id)date endDate:(id)endDate
{
  v43 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  os_unfair_lock_lock(&self->_lock);
  [(HKWorkoutBuilder *)self _lock_markRecoveryRequired];
  _HKInitializeLogging();
  v10 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    lock_serverConstructionState = self->_lock_serverConstructionState;
    v12 = v10;
    v13 = HKWorkoutBuilderConstructionStateToString(lock_serverConstructionState);
    *buf = 138543618;
    selfCopy = self;
    v41 = 2114;
    v42 = v13;
    _os_log_impl(&dword_19197B000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Server state updated to %{public}@", buf, 0x16u);
  }

  self->_lock_serverConstructionState = change;
  if (!self->_lock_workoutStartDate)
  {
    v14 = [dateCopy copy];
    lock_workoutStartDate = self->_lock_workoutStartDate;
    self->_lock_workoutStartDate = v14;
  }

  if (!self->_lock_workoutEndDate)
  {
    v16 = [endDateCopy copy];
    lock_workoutEndDate = self->_lock_workoutEndDate;
    self->_lock_workoutEndDate = v16;
  }

  [(HKStateMachine *)self->_lock_constructionStateMachine enqueueEvent:self->_lock_serverConstructionState date:0 error:0 completion:&__block_literal_global_134];
  if (change == 2)
  {
    v18 = _Block_copy(self->_endCollectionCompletionHandler);
    if (v18)
    {
      endCollectionCompletionHandler = self->_endCollectionCompletionHandler;
      self->_endCollectionCompletionHandler = 0;

      clientQueue = [(HKHealthStore *)self->_healthStore clientQueue];
      v29 = MEMORY[0x1E69E9820];
      v30 = 3221225472;
      v31 = __66__HKWorkoutBuilder_clientRemote_stateDidChange_startDate_endDate___block_invoke_3;
      v32 = &unk_1E7376A98;
      v21 = &v33;
      v18 = v18;
      v33 = v18;
      v22 = &v29;
      goto LABEL_13;
    }
  }

  else
  {
    if (change != 1)
    {
      goto LABEL_15;
    }

    v18 = _Block_copy(self->_beginCollectionCompletionHandler);
    if (v18)
    {
      beginCollectionCompletionHandler = self->_beginCollectionCompletionHandler;
      self->_beginCollectionCompletionHandler = 0;

      clientQueue = [(HKHealthStore *)self->_healthStore clientQueue];
      v34 = MEMORY[0x1E69E9820];
      v35 = 3221225472;
      v36 = __66__HKWorkoutBuilder_clientRemote_stateDidChange_startDate_endDate___block_invoke_2;
      v37 = &unk_1E7376A98;
      v21 = &v38;
      v18 = v18;
      v38 = v18;
      v22 = &v34;
LABEL_13:
      dispatch_async(clientQueue, v22);
    }
  }

LABEL_15:
  v24 = self->_lock_serverConstructionState;
  v25 = [(HKStateMachine *)self->_lock_constructionStateMachine currentState:v29];
  index = [v25 index];

  if (v24 != index)
  {
    [(HKWorkoutBuilder *)self _pushCurrentTargetState];
  }

  v27 = _Block_copy(self->_unitTest_serverStateChangedHandler);
  os_unfair_lock_unlock(&self->_lock);
  if (v27)
  {
    v27[2](v27, self, change);
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)clientRemote_finishedWorkout:(id)workout
{
  workoutCopy = workout;
  os_unfair_lock_lock(&self->_lock);
  if ((HKIsUnitTesting() & 1) == 0)
  {
    proxyProvider = self->_proxyProvider;
    self->_proxyProvider = 0;
  }

  v6 = _Block_copy(self->_finishWorkoutCompletionHandler);
  finishWorkoutCompletionHandler = self->_finishWorkoutCompletionHandler;
  self->_finishWorkoutCompletionHandler = 0;

  os_unfair_lock_unlock(&self->_lock);
  if (v6)
  {
    clientQueue = [(HKHealthStore *)self->_healthStore clientQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__HKWorkoutBuilder_clientRemote_finishedWorkout___block_invoke;
    v9[3] = &unk_1E7376AC0;
    v11 = v6;
    v10 = workoutCopy;
    dispatch_async(clientQueue, v9);
  }
}

- (void)clientRemote_didFailWithError:(id)error
{
  errorCopy = error;
  os_unfair_lock_lock(&self->_lock);
  if ((HKIsUnitTesting() & 1) == 0)
  {
    proxyProvider = self->_proxyProvider;
    self->_proxyProvider = 0;
  }

  v6 = _Block_copy(self->_beginCollectionCompletionHandler);
  if (v6)
  {
    beginCollectionCompletionHandler = self->_beginCollectionCompletionHandler;
    self->_beginCollectionCompletionHandler = 0;

    clientQueue = [(HKHealthStore *)self->_healthStore clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__HKWorkoutBuilder_clientRemote_didFailWithError___block_invoke;
    block[3] = &unk_1E7376AC0;
    v29 = v6;
    v28 = errorCopy;
    dispatch_async(clientQueue, block);
  }

  v9 = _Block_copy(self->_endCollectionCompletionHandler);
  if (v9)
  {
    endCollectionCompletionHandler = self->_endCollectionCompletionHandler;
    self->_endCollectionCompletionHandler = 0;

    clientQueue2 = [(HKHealthStore *)self->_healthStore clientQueue];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __50__HKWorkoutBuilder_clientRemote_didFailWithError___block_invoke_2;
    v24[3] = &unk_1E7376AC0;
    v26 = v9;
    v25 = errorCopy;
    dispatch_async(clientQueue2, v24);
  }

  v12 = _Block_copy(self->_finishWorkoutCompletionHandler);
  if (v12)
  {
    finishWorkoutCompletionHandler = self->_finishWorkoutCompletionHandler;
    self->_finishWorkoutCompletionHandler = 0;

    clientQueue3 = [(HKHealthStore *)self->_healthStore clientQueue];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __50__HKWorkoutBuilder_clientRemote_didFailWithError___block_invoke_3;
    v21[3] = &unk_1E7376AC0;
    v23 = v12;
    v22 = errorCopy;
    dispatch_async(clientQueue3, v21);
  }

  v15 = _Block_copy(self->_unitTest_failureHandler);
  if (v15)
  {
    unitTest_failureHandler = self->_unitTest_failureHandler;
    self->_unitTest_failureHandler = 0;

    clientQueue4 = [(HKHealthStore *)self->_healthStore clientQueue];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __50__HKWorkoutBuilder_clientRemote_didFailWithError___block_invoke_4;
    v18[3] = &unk_1E7376618;
    v20 = v15;
    v18[4] = self;
    v19 = errorCopy;
    dispatch_async(clientQueue4, v18);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)clientRemote_unitTestDidFinishFinalizing
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__HKWorkoutBuilder_clientRemote_unitTestDidFinishFinalizing__block_invoke;
  block[3] = &unk_1E7376780;
  block[4] = self;
  dispatch_async(queue, block);
}

void __60__HKWorkoutBuilder_clientRemote_unitTestDidFinishFinalizing__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 16));
  v2 = _Block_copy(*(*(a1 + 32) + 176));
  v3 = *(a1 + 32);
  v4 = *(v3 + 176);
  *(v3 + 176) = 0;

  os_unfair_lock_unlock((*(a1 + 32) + 16));
  if (v2)
  {
    v5 = [*(*(a1 + 32) + 216) clientQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __60__HKWorkoutBuilder_clientRemote_unitTestDidFinishFinalizing__block_invoke_2;
    v7[3] = &unk_1E7376AC0;
    v6 = v2;
    v7[4] = *(a1 + 32);
    v8 = v6;
    dispatch_async(v5, v7);
  }
}

+ (id)clientInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F068A7E0];
  hk_secureCodingClasses = [MEMORY[0x1E695DF20] hk_secureCodingClasses];
  [v2 setClasses:hk_secureCodingClasses forSelector:sel_clientRemote_didUpdateMetadata_ argumentIndex:0 ofReply:0];

  v4 = [v2 hk_setArrayOfClass:objc_opt_class() forSelector:sel_clientRemote_didUpdateEvents_ argumentIndex:0 ofReply:0];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_clientRemote_didRecoverSeriesBuilders_ argumentIndex:0 ofReply:0];
  v9 = [v2 hk_setArrayOfClass:objc_opt_class() forSelector:sel_clientRemote_didUpdateActivities_ argumentIndex:0 ofReply:0];

  return v2;
}

+ (id)serverInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F6878];
  v3 = [v2 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_addDataSourcesWithIdentifiers_ argumentIndex:0 ofReply:0];
  v4 = [v2 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_removeDataSourcesWithIdentifiers_ argumentIndex:0 ofReply:0];
  v5 = [v2 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_addSamples_completion_ argumentIndex:0 ofReply:0];
  v6 = [v2 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_addWorkoutEvents_completion_ argumentIndex:0 ofReply:0];
  hk_secureCodingClasses = [MEMORY[0x1E695DF20] hk_secureCodingClasses];
  [v2 setClasses:hk_secureCodingClasses forSelector:sel_remote_addMetadata_completion_ argumentIndex:0 ofReply:0];

  hk_secureCodingClasses2 = [MEMORY[0x1E695DF20] hk_secureCodingClasses];
  [v2 setClasses:hk_secureCodingClasses2 forSelector:sel_remote_updateActivityWithUUID_addMetadata_completion_ argumentIndex:1 ofReply:0];

  return v2;
}

- (void)connectionInterrupted
{
  proxyProvider = self->_proxyProvider;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__HKWorkoutBuilder_connectionInterrupted__block_invoke;
  v4[3] = &unk_1E7376AE8;
  v4[4] = self;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__HKWorkoutBuilder_connectionInterrupted__block_invoke_254;
  v3[3] = &unk_1E7376898;
  v3[4] = self;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v4 errorHandler:v3];
}

void __41__HKWorkoutBuilder_connectionInterrupted__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v9 = v5;
    _os_log_impl(&dword_19197B000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: (#w0) Beginning recovery after server interruption.", buf, 0xCu);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__HKWorkoutBuilder_connectionInterrupted__block_invoke_252;
  v7[3] = &unk_1E7376A00;
  v7[4] = *(a1 + 32);
  [v3 remote_recoverWithCompletion:v7];

  v6 = *MEMORY[0x1E69E9840];
}

void __41__HKWorkoutBuilder_connectionInterrupted__block_invoke_252(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      __41__HKWorkoutBuilder_connectionInterrupted__block_invoke_252_cold_1(a1);
    }
  }

  [*(a1 + 32) _pushCurrentTargetState];
}

void __41__HKWorkoutBuilder_connectionInterrupted__block_invoke_254(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __41__HKWorkoutBuilder_connectionInterrupted__block_invoke_254_cold_1(a1);
  }
}

- (HKWorkoutBuilderConfiguration)configuration
{
  taskConfiguration = [(HKTaskServerProxyProvider *)self->_proxyProvider taskConfiguration];
  v3 = [taskConfiguration copy];

  return v3;
}

- (void)_recoverWithCompletion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  _HKInitializeLogging();
  v5 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: (#w0) Beginning client recovery.", buf, 0xCu);
  }

  if (completionCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __43__HKWorkoutBuilder__recoverWithCompletion___block_invoke;
    aBlock[3] = &unk_1E73766A0;
    aBlock[4] = self;
    v14 = completionCopy;
    completionCopy = _Block_copy(aBlock);
  }

  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __43__HKWorkoutBuilder__recoverWithCompletion___block_invoke_3;
  v11[3] = &unk_1E73767F8;
  v11[4] = self;
  v12 = completionCopy;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__HKWorkoutBuilder__recoverWithCompletion___block_invoke_255;
  v9[3] = &unk_1E7376820;
  v9[4] = self;
  v10 = v12;
  v7 = v12;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v11 errorHandler:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __43__HKWorkoutBuilder__recoverWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(*(a1 + 32) + 216) clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__HKWorkoutBuilder__recoverWithCompletion___block_invoke_2;
  block[3] = &unk_1E7376678;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

void __43__HKWorkoutBuilder__recoverWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__HKWorkoutBuilder__recoverWithCompletion___block_invoke_4;
  v4[3] = &unk_1E73766A0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 remote_recoverWithCompletion:v4];
}

void __43__HKWorkoutBuilder__recoverWithCompletion___block_invoke_4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) _restoreRecoveredSeriesBuildersWithCompletion:*(a1 + 40)];
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      __43__HKWorkoutBuilder__recoverWithCompletion___block_invoke_4_cold_1(a1);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __43__HKWorkoutBuilder__recoverWithCompletion___block_invoke_255(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __43__HKWorkoutBuilder__recoverWithCompletion___block_invoke_4_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_restoreRecoveredSeriesBuildersWithCompletion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v4 = dispatch_group_create();
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 1;
  os_unfair_lock_lock(&self->_lock);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  allValues = [(NSMutableDictionary *)self->_lock_seriesBuilders allValues];
  v6 = [allValues countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v6)
  {
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        dispatch_group_enter(v4);
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __66__HKWorkoutBuilder__restoreRecoveredSeriesBuildersWithCompletion___block_invoke;
        v17[3] = &unk_1E7376B10;
        v19 = v24;
        v18 = v4;
        [v9 recoverWithCompletion:v17];
      }

      v6 = [allValues countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__HKWorkoutBuilder__restoreRecoveredSeriesBuildersWithCompletion___block_invoke_2;
  block[3] = &unk_1E7376B38;
  v15 = completionCopy;
  v16 = v24;
  v11 = completionCopy;
  dispatch_group_notify(v4, queue, block);

  _Block_object_dispose(v24, 8);
  v12 = *MEMORY[0x1E69E9840];
}

void __66__HKWorkoutBuilder__restoreRecoveredSeriesBuildersWithCompletion___block_invoke(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 40) + 8);
  if (a2)
  {
    v3 = *(v2 + 24);
  }

  else
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  dispatch_group_leave(*(a1 + 32));
}

void __66__HKWorkoutBuilder__restoreRecoveredSeriesBuildersWithCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696ABC0] hk_error:100 format:@"Failed to restore 1 or more series builders"];
    (*(v1 + 16))(v1, 1, v4);
  }

  else
  {
    v2 = *(v1 + 16);
    v3 = *(a1 + 32);

    v2(v3, 0, 0);
  }
}

- (void)unitTest_setServerStateChangeHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  v5 = [handlerCopy copy];

  unitTest_serverStateChangedHandler = self->_unitTest_serverStateChangedHandler;
  self->_unitTest_serverStateChangedHandler = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)unitTest_setRecoveryFinishedHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  v5 = [handlerCopy copy];

  unitTest_recoveryFinishedHandler = self->_unitTest_recoveryFinishedHandler;
  self->_unitTest_recoveryFinishedHandler = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)unitTest_setFailureHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  v5 = [handlerCopy copy];

  unitTest_failureHandler = self->_unitTest_failureHandler;
  self->_unitTest_failureHandler = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)unitTest_setDidFinishFinalizingHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  v5 = [handlerCopy copy];

  unitTest_didFinishFinalizing = self->_unitTest_didFinishFinalizing;
  self->_unitTest_didFinishFinalizing = v5;

  os_unfair_lock_unlock(&self->_lock);
}

void __34__HKWorkoutBuilder_discardWorkout__block_invoke_73_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2(&dword_19197B000, v0, v1, "Failed to discard workout, make sure the workout builder is active: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __51__HKWorkoutBuilder_currentZonesForType_completion___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19197B000, v1, v2, "%{public}@: Failed to fetch current zones for type with error: %{public}@.");
  v3 = *MEMORY[0x1E69E9840];
}

- (void)stateMachine:didEnterState:date:error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2(&dword_19197B000, v0, v1, "%{public}@: No end date set after moving to active state.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)stateMachine:didEnterState:date:error:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2(&dword_19197B000, v0, v1, "%{public}@: No start date set after moving to active state.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __43__HKWorkoutBuilder__pushCurrentTargetState__block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19197B000, v1, v2, "%{public}@: (#w0) Failed to update target construction state: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __39__HKWorkoutBuilder__lock_updateDevice___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2(&dword_19197B000, v0, v1, "Unable to update workout builder server's device with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __41__HKWorkoutBuilder_connectionInterrupted__block_invoke_252_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19197B000, v1, v2, "%{public}@: (#w0) Failed to recover after connection invalidation: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __41__HKWorkoutBuilder_connectionInterrupted__block_invoke_254_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19197B000, v1, v2, "%{public}@: (#w0) Failed to restart task server after connection invalidation: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __43__HKWorkoutBuilder__recoverWithCompletion___block_invoke_4_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19197B000, v1, v2, "%{public}@: (#w0) Failed to recover workout after client restart: %{public}@.");
  v3 = *MEMORY[0x1E69E9840];
}

@end