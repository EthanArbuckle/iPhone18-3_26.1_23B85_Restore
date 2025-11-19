@interface HKWorkoutSession
+ (BOOL)_applicationHasRunningWorkout;
+ (id)clientInterface;
+ (id)serverInterface;
+ (id)targetWorkoutSessionStateMachineForSessionUUID:(id)a3;
+ (void)_unitTest_clearAllRunningWorkouts;
- (BOOL)_isInvalidatedMirroredSession;
- (BOOL)isGymKitSession;
- (HKLiveWorkoutBuilder)associatedWorkoutBuilder;
- (HKWorkoutActivity)currentActivity;
- (HKWorkoutActivityType)activityType;
- (HKWorkoutSession)initWithActivityType:(HKWorkoutActivityType)activityType locationType:(HKWorkoutSessionLocationType)locationType;
- (HKWorkoutSession)initWithCoder:(id)a3;
- (HKWorkoutSession)initWithConfiguration:(HKWorkoutConfiguration *)workoutConfiguration error:(NSError *)error;
- (HKWorkoutSession)initWithHealthStore:(HKHealthStore *)healthStore configuration:(HKWorkoutConfiguration *)workoutConfiguration error:(NSError *)error;
- (HKWorkoutSessionLocationType)locationType;
- (HKWorkoutSessionState)state;
- (NSDate)endDate;
- (NSDate)startDate;
- (NSString)description;
- (id)_initWithHealthStore:(id)a3 taskConfiguration:(id)a4 error:(id *)a5;
- (id)_privateDelegate;
- (id)associatedWorkoutBuilderWithDevice:(id)a3 goalType:(unint64_t)a4 goal:(id)a5;
- (id)delegate;
- (void)_dataUpdateWithUUID:(id)a3 didCompleteWithSuccess:(BOOL)a4 error:(id)a5;
- (void)_enqueueDataUpdate:(id)a3;
- (void)_queue_enqueueStateEvent:(int64_t)a3 date:(id)a4 completion:(id)a5;
- (void)_queue_markRecoveryRequired;
- (void)_queue_resetStateMachineWithNewState:(int64_t)a3;
- (void)_queue_sendPendingDataUpdateToRemoteWorkoutSession;
- (void)_recoverWithCompletion:(id)a3;
- (void)_runSetupPostClientMirroringStartHandlerWithCompletion:(id)a3;
- (void)_setupMirroredSessionTaskServerWithCompletion:(id)a3;
- (void)_setupTaskServerWithCompletion:(id)a3;
- (void)_setupWithHealthStore:(id)a3;
- (void)_unitTest_discardAssociatedWorkoutBuilder;
- (void)beginNewActivityWithConfiguration:(HKWorkoutConfiguration *)workoutConfiguration date:(NSDate *)date metadata:(NSDictionary *)metadata;
- (void)client_didBeginActivity:(id)a3 date:(id)a4;
- (void)client_didChangeToState:(int64_t)a3 date:(id)a4;
- (void)client_didDisconnectFromRemoteWithError:(id)a3 completion:(id)a4;
- (void)client_didEndActivity:(id)a3 date:(id)a4;
- (void)client_didFailWithError:(id)a3;
- (void)client_didGenerateEvents:(id)a3;
- (void)client_didReceiveDataFromRemoteWorkoutSession:(id)a3 completion:(id)a4;
- (void)client_didSuggestWorkoutConfiguration:(id)a3 date:(id)a4;
- (void)client_didSyncCurrentActivity:(id)a3;
- (void)client_didSyncSessionEvent:(int64_t)a3 date:(id)a4;
- (void)client_didUpdateGeneratedTypes:(id)a3;
- (void)client_didUpdateStartDate:(id)a3 endDate:(id)a4;
- (void)client_didUpdateWorkoutConfiguration:(id)a3;
- (void)client_remoteSessionDidRecover;
- (void)client_synchronizeWithCompletion:(id)a3;
- (void)connectionInterrupted;
- (void)dealloc;
- (void)enableAutomaticDetectionForActivityConfigurations:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)end;
- (void)endCurrentActivityOnDate:(NSDate *)date;
- (void)endWithCompletion:(id)a3;
- (void)pause;
- (void)pauseWithCompletion:(id)a3;
- (void)pauseWithDate:(id)a3 completion:(id)a4;
- (void)prepare;
- (void)prepareWithCompletion:(id)a3;
- (void)resume;
- (void)resumeWithCompletion:(id)a3;
- (void)resumeWithDate:(id)a3 completion:(id)a4;
- (void)sendDataToRemoteWorkoutSession:(NSData *)data completion:(void *)completion;
- (void)setDelegate:(id)delegate;
- (void)setShouldStopPreviousSession:(BOOL)a3;
- (void)setSupportsAppRelaunchForRecovery:(BOOL)a3;
- (void)startActivityWithDate:(NSDate *)date;
- (void)startActivityWithDate:(id)a3 completion:(id)a4;
- (void)startMirroringToCompanionDeviceWithCompletion:(void *)completion;
- (void)stateMachine:(id)a3 didIgnoreEvent:(int64_t)a4 state:(id)a5;
- (void)stateMachine:(id)a3 didTransition:(id)a4 fromState:(id)a5 toState:(id)a6 date:(id)a7 error:(id)a8;
- (void)stopActivityWithDate:(NSDate *)date;
- (void)stopActivityWithDate:(id)a3 completion:(id)a4;
- (void)stopMirroringToCompanionDeviceWithCompletion:(void *)completion;
@end

@implementation HKWorkoutSession

+ (id)targetWorkoutSessionStateMachineForSessionUUID:(id)a3
{
  v4 = a3;
  v5 = [HKStateMachine alloc];
  v6 = [HKStateMachine nameForOwner:a1 UUID:v4 tag:0];

  v7 = [(HKStateMachine *)v5 initWithName:v6];
  v8 = [(HKStateMachine *)v7 addStateWithIndex:1 label:@"NotStarted"];
  v9 = [(HKStateMachine *)v7 addStateWithIndex:2 label:@"Running"];
  v10 = [(HKStateMachine *)v7 addStateWithIndex:3 label:@"Ended"];
  v11 = [(HKStateMachine *)v7 addStateWithIndex:4 label:@"Paused"];
  v12 = [(HKStateMachine *)v7 addStateWithIndex:5 label:@"Prepared"];
  v13 = [(HKStateMachine *)v7 addStateWithIndex:6 label:@"Stopped"];
  v14 = [(HKStateMachine *)v7 addStateTransitionFrom:v8 to:v12 event:1 label:@"prepare"];
  v15 = [(HKStateMachine *)v7 addStateTransitionFrom:v8 to:v9 event:2 label:@"start"];
  v16 = [(HKStateMachine *)v7 addStateTransitionFrom:v12 to:v9 event:2 label:@"start"];
  v17 = [(HKStateMachine *)v7 addStateTransitionFrom:v12 to:v10 event:6 label:@"start"];
  v18 = [(HKStateMachine *)v7 addStateTransitionFrom:v9 to:v11 event:3 label:@"pause"];
  v19 = [(HKStateMachine *)v7 addStateTransitionFrom:v11 to:v9 event:4 label:@"resume"];
  v20 = [(HKStateMachine *)v7 addStateTransitionFrom:v9 to:v13 event:5 label:@"stop"];
  v21 = [(HKStateMachine *)v7 addStateTransitionFrom:v11 to:v13 event:5 label:@"stop"];
  v22 = [(HKStateMachine *)v7 addStateTransitionFrom:v9 to:v10 event:6 label:@"end"];
  v23 = [(HKStateMachine *)v7 addStateTransitionFrom:v11 to:v10 event:6 label:@"end"];
  v24 = [(HKStateMachine *)v7 addStateTransitionFrom:v13 to:v10 event:6 label:@"end"];
  v25 = [(HKStateMachine *)v7 addStateTransitionFrom:v8 to:v10 event:7 label:@"error"];
  v26 = [(HKStateMachine *)v7 addStateTransitionFrom:v9 to:v10 event:7 label:@"error"];
  v27 = [(HKStateMachine *)v7 addStateTransitionFrom:v11 to:v10 event:7 label:@"error"];
  v28 = [(HKStateMachine *)v7 addStateTransitionFrom:v12 to:v10 event:7 label:@"error"];
  v29 = [(HKStateMachine *)v7 addStateTransitionFrom:v13 to:v10 event:7 label:@"error"];
  v30 = [(HKStateMachine *)v7 addStateTransitionFrom:v10 to:v10 event:7 label:@"error"];

  return v7;
}

- (HKWorkoutSession)initWithActivityType:(HKWorkoutActivityType)activityType locationType:(HKWorkoutSessionLocationType)locationType
{
  v7 = objc_alloc_init(HKWorkoutConfiguration);
  [(HKWorkoutConfiguration *)v7 setActivityType:activityType];
  [(HKWorkoutConfiguration *)v7 setLocationType:locationType];
  v11 = 0;
  v8 = [(HKWorkoutSession *)self initWithConfiguration:v7 error:&v11];
  v9 = v11;
  if (!v8)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid activity type/location combination when instantiating HKWorkoutSession: %@", v9}];
  }

  return v8;
}

- (HKWorkoutSession)initWithConfiguration:(HKWorkoutConfiguration *)workoutConfiguration error:(NSError *)error
{
  v6 = workoutConfiguration;
  v7 = objc_alloc_init(HKWorkoutSessionTaskConfiguration);
  v8 = [MEMORY[0x1E696AFB0] UUID];
  [(HKWorkoutSessionTaskConfiguration *)v7 setSessionUUID:v8];

  [(HKWorkoutSessionTaskConfiguration *)v7 setWorkoutConfiguration:v6];
  [(HKWorkoutSessionTaskConfiguration *)v7 setSessionType:0];
  [(HKWorkoutSessionTaskConfiguration *)v7 setShouldStopPreviousSession:1];
  v9 = [(HKWorkoutSession *)self _initWithHealthStore:0 taskConfiguration:v7 error:error];

  return v9;
}

- (HKWorkoutSession)initWithHealthStore:(HKHealthStore *)healthStore configuration:(HKWorkoutConfiguration *)workoutConfiguration error:(NSError *)error
{
  v8 = healthStore;
  v9 = workoutConfiguration;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"A valid %@ object is required.", objc_opt_class()}];
  }

  v10 = objc_alloc_init(HKWorkoutSessionTaskConfiguration);
  v11 = [(HKWorkoutConfiguration *)v9 predictionSessionUUID];
  if (v11)
  {
    [(HKWorkoutSessionTaskConfiguration *)v10 setSessionUUID:v11];
  }

  else
  {
    v12 = [MEMORY[0x1E696AFB0] UUID];
    [(HKWorkoutSessionTaskConfiguration *)v10 setSessionUUID:v12];
  }

  [(HKWorkoutSessionTaskConfiguration *)v10 setWorkoutConfiguration:v9];
  [(HKWorkoutSessionTaskConfiguration *)v10 setSessionType:0];
  [(HKWorkoutSessionTaskConfiguration *)v10 setShouldStopPreviousSession:1];
  v13 = [(HKWorkoutSession *)self _initWithHealthStore:v8 taskConfiguration:v10 error:error];

  return v13;
}

- (id)_initWithHealthStore:(id)a3 taskConfiguration:(id)a4 error:(id *)a5
{
  v53 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = +[_HKBehavior sharedBehavior];
  if ([v10 isRealityDevice])
  {
    v11 = +[_HKBehavior sharedBehavior];
    v12 = [v11 isAppleInternalInstall];

    if ((v12 & 1) == 0)
    {
      v13 = MEMORY[0x1E696ABC0];
      v14 = @"Workout session is not supported on this device";
      v15 = a5;
      v16 = 2;
LABEL_8:
      [v13 hk_assignError:v15 code:v16 description:v14];
      goto LABEL_9;
    }
  }

  else
  {
  }

  v17 = [v9 workoutConfiguration];
  v18 = [v17 validateIgnoringDeviceSupport:0 error:a5];

  if (!v18)
  {
LABEL_9:
    v21 = 0;
    goto LABEL_10;
  }

  v19 = [v9 workoutConfiguration];
  v20 = [v19 activityType];

  if (v20 == 84)
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = @"Workout session does not support this activity type";
    v15 = a5;
    v16 = 12;
    goto LABEL_8;
  }

  _HKInitializeLogging();
  v24 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    v25 = v24;
    v26 = [v9 workoutConfiguration];
    *buf = 138543618;
    v50 = self;
    v51 = 2112;
    v52 = v26;
    _os_log_impl(&dword_19197B000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: Initializing workout session with configuration %@", buf, 0x16u);
  }

  v27 = [v9 sessionUUID];

  if (!v27)
  {
    v28 = [MEMORY[0x1E696AFB0] UUID];
    [v9 setSessionUUID:v28];
  }

  v29 = +[_HKBehavior sharedBehavior];
  v30 = [v29 isAppleWatch];

  if ((v30 & 1) == 0)
  {
    v31 = [MEMORY[0x1E696AAE8] mainBundle];
    v32 = [v31 bundleIdentifier];
    v33 = [v32 hasPrefix:@"com.apple"];

    if (v33)
    {
      [v9 setSupportsAppRelaunchForRecovery:1];
    }
  }

  v48.receiver = self;
  v48.super_class = HKWorkoutSession;
  v34 = [(HKWorkoutSession *)&v48 init];
  v35 = v34;
  if (v34)
  {
    v36 = HKCreateSerialDispatchQueue(v34, 0);
    queue = v35->_queue;
    v35->_queue = v36;

    v38 = HKCreateSerialDispatchQueue(v35, @"client");
    clientQueue = v35->_clientQueue;
    v35->_clientQueue = v38;

    v40 = [v9 copy];
    configuration = v35->_configuration;
    v35->_configuration = v40;

    v35->_state = 1;
    if (v8)
    {
      [(HKWorkoutSession *)v35 _setupWithHealthStore:v8];
    }

    v42 = objc_opt_class();
    v43 = [v9 sessionUUID];
    v44 = [v42 targetWorkoutSessionStateMachineForSessionUUID:v43];
    targetStateMachine = v35->_targetStateMachine;
    v35->_targetStateMachine = v44;

    [(HKStateMachine *)v35->_targetStateMachine setDelegate:v35];
    [(HKStateMachine *)v35->_targetStateMachine enterAtState:1];
    v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
    dataUpdateQueue = v35->_dataUpdateQueue;
    v35->_dataUpdateQueue = v46;
  }

  self = v35;
  v21 = self;
LABEL_10:

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

- (void)dealloc
{
  v3 = [(HKWorkoutSessionTaskConfiguration *)self->_configuration sessionUUID];
  _HKRemoveRunningWorkoutSessionUUID(v3);

  v4.receiver = self;
  v4.super_class = HKWorkoutSession;
  [(HKWorkoutSession *)&v4 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(HKWorkoutSessionTaskConfiguration *)self->_configuration sessionUUID];
  v6 = HKWorkoutSessionStateToString(self->_state);
  v7 = HKWorkoutSessionTypeToString([(HKWorkoutSessionTaskConfiguration *)self->_configuration sessionType]);
  v8 = [v3 stringWithFormat:@"<%@:%p %@ %@ [%@]>", v4, self, v5, v6, v7];

  return v8;
}

- (void)_setupWithHealthStore:(id)a3
{
  v5 = a3;
  p_healthStore = &self->_healthStore;
  if (self->_healthStore != v5)
  {
    v21 = v5;
    objc_storeStrong(p_healthStore, a3);
    [(HKWorkoutSessionTaskConfiguration *)self->_configuration setRequiresCoreLocationAssertion:HKProgramSDKAtLeast() ^ 1];
    if (HKProgramSDKAtLeast())
    {
      v7 = [MEMORY[0x1E6963620] bundleRecordForCurrentProcess];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
        v9 = [v8 extensionPointRecord];
        v10 = [v9 identifier];
        v11 = [v10 isEqualToString:@"com.apple.watchkit"];

        v7 = v8;
        if (v11)
        {
          v7 = [v8 containingBundleRecord];
        }
      }

      v12 = [v7 infoDictionary];
      v13 = [v12 objectForKey:@"WKSupportsAlwaysOnDisplay" ofClass:objc_opt_class()];

      v14 = [v13 BOOLValue];
      if (v13)
      {
        v15 = v14;
      }

      else
      {
        v15 = 1;
      }
    }

    else
    {
      v15 = 0;
    }

    [(HKWorkoutSessionTaskConfiguration *)self->_configuration setSupports3rdPartyAOT:v15];
    v16 = [HKTaskServerProxyProvider alloc];
    healthStore = self->_healthStore;
    v18 = [(HKWorkoutSessionTaskConfiguration *)self->_configuration sessionUUID];
    v19 = [(HKTaskServerProxyProvider *)v16 initWithHealthStore:healthStore taskIdentifier:@"HKWorkoutSessionTaskServer" exportedObject:self taskUUID:v18];
    proxyProvider = self->_proxyProvider;
    self->_proxyProvider = v19;

    p_healthStore = [(HKTaskServerProxyProvider *)self->_proxyProvider setTaskConfiguration:self->_configuration];
    v5 = v21;
  }

  MEMORY[0x1EEE66BB8](p_healthStore, v5);
}

- (void)_recoverWithCompletion:(id)a3
{
  v4 = a3;
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__HKWorkoutSession__recoverWithCompletion___block_invoke;
  v9[3] = &unk_1E7380588;
  v9[4] = self;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__HKWorkoutSession__recoverWithCompletion___block_invoke_3;
  v7[3] = &unk_1E7376960;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

void __43__HKWorkoutSession__recoverWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v11 = v5;
    _os_log_impl(&dword_19197B000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Beginning post-client-crash recovery.", buf, 0xCu);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__HKWorkoutSession__recoverWithCompletion___block_invoke_89;
  v8[3] = &unk_1E73766A0;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v6;
  [v3 remote_recoverWithCompletion:v8];

  v7 = *MEMORY[0x1E69E9840];
}

void __43__HKWorkoutSession__recoverWithCompletion___block_invoke_89(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 8);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__HKWorkoutSession__recoverWithCompletion___block_invoke_2;
  v10[3] = &unk_1E7380560;
  v10[4] = v7;
  v13 = a2;
  v11 = v5;
  v12 = v6;
  v9 = v5;
  dispatch_sync(v8, v10);
}

uint64_t __43__HKWorkoutSession__recoverWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = [*(*(a1 + 32) + 56) sessionUUID];
  v5 = [v3 targetWorkoutSessionStateMachineForSessionUUID:v4];
  v6 = *(a1 + 32);
  v7 = *(v6 + 96);
  *(v6 + 96) = v5;

  [*(*(a1 + 32) + 96) setDelegate:?];
  [*(*(a1 + 32) + 96) enterAtState:*(*(a1 + 32) + 32)];
  v8 = *(a1 + 56);
  v9 = *(a1 + 40);
  v10 = *(*(a1 + 48) + 16);

  return v10();
}

- (void)_queue_markRecoveryRequired
{
  dispatch_assert_queue_V2(self->_queue);
  if (![(HKWorkoutSessionTaskConfiguration *)self->_configuration requiresRecovery])
  {
    [(HKWorkoutSessionTaskConfiguration *)self->_configuration setRequiresRecovery:1];
    configuration = self->_configuration;
    proxyProvider = self->_proxyProvider;

    [(HKTaskServerProxyProvider *)proxyProvider setTaskConfiguration:configuration];
  }
}

- (void)_queue_resetStateMachineWithNewState:(int64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v5 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = HKWorkoutSessionStateToString(a3);
    v13 = 138543618;
    v14 = self;
    v15 = 2114;
    v16 = v7;
    _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Resetting target state machine after state update to to %{public}@", &v13, 0x16u);
  }

  v8 = objc_opt_class();
  v9 = [(HKWorkoutSessionTaskConfiguration *)self->_configuration sessionUUID];
  v10 = [v8 targetWorkoutSessionStateMachineForSessionUUID:v9];
  targetStateMachine = self->_targetStateMachine;
  self->_targetStateMachine = v10;

  [(HKStateMachine *)self->_targetStateMachine setDelegate:self];
  [(HKStateMachine *)self->_targetStateMachine enterAtState:a3];
  v12 = *MEMORY[0x1E69E9840];
}

- (id)_privateDelegate
{
  v2 = [(HKWorkoutSession *)self delegate];
  if ([v2 conformsToProtocol:&unk_1F06F7E38])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

+ (BOOL)_applicationHasRunningWorkout
{
  os_unfair_lock_lock(&_HKRunningWorkoutSessionLock);
  v2 = [_HKRunningWorkoutSessionStatesByUUIDs count] != 0;
  os_unfair_lock_unlock(&_HKRunningWorkoutSessionLock);
  return v2;
}

+ (id)clientInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F7E98];
  v3 = [v2 hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_didGenerateEvents_ argumentIndex:0 ofReply:0];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  [v2 setClasses:v6 forSelector:sel_client_didUpdateGeneratedTypes_ argumentIndex:0 ofReply:0];

  return v2;
}

+ (id)serverInterface
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F7EF8];
  v3 = [v2 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_enableAutomaticDetectionForActivityConfigurations_completion_ argumentIndex:0 ofReply:0];
  v4 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:6];
  v6 = [v4 setWithArray:v5];

  [v2 setClasses:v6 forSelector:sel_remote_beginNewActivityWithConfiguration_date_metadata_completion_ argumentIndex:2 ofReply:0];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0, v13, v14, v15, v16, v17}];
  [v2 setClasses:v10 forSelector:sel_remote_recoverAllActiveSessionsWithStates_date_completion_ argumentIndex:0 ofReply:0];

  v11 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)connectionInterrupted
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__HKWorkoutSession_connectionInterrupted__block_invoke;
  block[3] = &unk_1E7376780;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __41__HKWorkoutSession_connectionInterrupted__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_shouldAttemptRecovery];
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 64);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __41__HKWorkoutSession_connectionInterrupted__block_invoke_2;
    v6[3] = &unk_1E7376AE8;
    v6[4] = v3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __41__HKWorkoutSession_connectionInterrupted__block_invoke_232;
    v5[3] = &unk_1E7376898;
    v5[4] = v3;
    return [v4 fetchProxyWithHandler:v6 errorHandler:v5];
  }

  return result;
}

void __41__HKWorkoutSession_connectionInterrupted__block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v12 = v5;
    _os_log_impl(&dword_19197B000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Beginning recovery after server interruption.", buf, 0xCu);
  }

  os_unfair_lock_lock(&_HKRunningWorkoutSessionLock);
  v6 = _HKRunningWorkoutSessionStatesByUUIDs;
  os_unfair_lock_unlock(&_HKRunningWorkoutSessionLock);
  v7 = [v6 copy];

  v8 = [MEMORY[0x1E695DF00] date];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__HKWorkoutSession_connectionInterrupted__block_invoke_226;
  v10[3] = &unk_1E7376A00;
  v10[4] = *(a1 + 32);
  [v3 remote_recoverAllActiveSessionsWithStates:v7 date:v8 completion:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __41__HKWorkoutSession_connectionInterrupted__block_invoke_226(uint64_t a1, char a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogWorkouts;
  if (a2)
  {
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Completed recovery after server interruption.", &v9, 0xCu);
    }

    goto LABEL_9;
  }

  if (!os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    if (v5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  __41__HKWorkoutSession_connectionInterrupted__block_invoke_226_cold_1(a1);
  if (!v5)
  {
LABEL_6:
    v5 = [MEMORY[0x1E696ABC0] hk_error:300 format:@"Failed to recover connection"];
  }

LABEL_7:
  [*(a1 + 32) client_didFailWithError:v5];
  if ([*(a1 + 32) type] == 1)
  {
    [*(a1 + 32) client_didDisconnectFromRemoteWithError:v5 completion:&__block_literal_global_80];
  }

LABEL_9:

  v8 = *MEMORY[0x1E69E9840];
}

void __41__HKWorkoutSession_connectionInterrupted__block_invoke_232(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __41__HKWorkoutSession_connectionInterrupted__block_invoke_232_cold_1(a1);
  }

  [*(a1 + 32) client_didFailWithError:v3];
  if ([*(a1 + 32) type] == 1)
  {
    [*(a1 + 32) client_didDisconnectFromRemoteWithError:v3 completion:&__block_literal_global_235];
  }
}

- (void)client_didUpdateStartDate:(id)a3 endDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__HKWorkoutSession_client_didUpdateStartDate_endDate___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __54__HKWorkoutSession_client_didUpdateStartDate_endDate___block_invoke(id *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  [a1[4] _queue_markRecoveryRequired];
  _HKInitializeLogging();
  v2 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v13 = 138543874;
    v14 = v3;
    v15 = 2114;
    v16 = v4;
    v17 = 2114;
    v18 = v5;
    _os_log_impl(&dword_19197B000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Update interval: %{public}@ - %{public}@", &v13, 0x20u);
  }

  v6 = [a1[5] copy];
  v7 = a1[4];
  v8 = v7[5];
  v7[5] = v6;

  v9 = [a1[6] copy];
  v10 = a1[4];
  v11 = v10[6];
  v10[6] = v9;

  v12 = *MEMORY[0x1E69E9840];
}

- (void)client_didChangeToState:(int64_t)a3 date:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__HKWorkoutSession_client_didChangeToState_date___block_invoke;
  block[3] = &unk_1E73767D0;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(queue, block);
}

void __49__HKWorkoutSession_client_didChangeToState_date___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _queue_markRecoveryRequired];
  _HKInitializeLogging();
  v2 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    v5 = v2;
    v6 = HKWorkoutSessionStateToString(v4);
    v7 = HKWorkoutSessionStateToString(*(a1 + 48));
    v8 = *(a1 + 40);
    *buf = 138544130;
    v30 = v3;
    v31 = 2114;
    v32 = v6;
    v33 = 2114;
    v34 = v7;
    v35 = 2114;
    v36 = v8;
    _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: (#w0) State changed from %{public}@ -> %{public}@ at %{public}@", buf, 0x2Au);
  }

  v9 = *(a1 + 48);
  v10 = *(a1 + 32);
  v11 = *(v10 + 32);
  if (v9 != v11)
  {
    *(v10 + 32) = v9;
    v12 = *(a1 + 32);
    v13 = *(v12 + 32);
    if (v13 <= 6)
    {
      if (((1 << v13) & 0x74) != 0)
      {
        v14 = [*(v12 + 56) sessionUUID];
        v15 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
        v16 = v14;
        if (v16)
        {
          os_unfair_lock_lock(&_HKRunningWorkoutSessionLock);
          v17 = _HKRunningWorkoutSessionStatesByUUIDs;
          if (!_HKRunningWorkoutSessionStatesByUUIDs)
          {
            v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v19 = _HKRunningWorkoutSessionStatesByUUIDs;
            _HKRunningWorkoutSessionStatesByUUIDs = v18;

            v17 = _HKRunningWorkoutSessionStatesByUUIDs;
          }

          [v17 setObject:v15 forKeyedSubscript:v16];
          os_unfair_lock_unlock(&_HKRunningWorkoutSessionLock);
        }

        goto LABEL_13;
      }

      if (((1 << v13) & 0xA) != 0)
      {
        v16 = [*(v12 + 56) sessionUUID];
        _HKRemoveRunningWorkoutSessionUUID(v16);
LABEL_13:
      }
    }

    v20 = *(a1 + 32);
    v21 = *(v20 + 16);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __49__HKWorkoutSession_client_didChangeToState_date___block_invoke_236;
    v25[3] = &unk_1E73805B0;
    v23 = *(a1 + 40);
    v22 = *(a1 + 48);
    v25[4] = v20;
    v27 = v22;
    v28 = v11;
    v26 = v23;
    dispatch_async(v21, v25);
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __49__HKWorkoutSession_client_didChangeToState_date___block_invoke_236(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 24));
  v3 = a1[6];
  v4 = a1[7];
  v5 = a1[4];
  v7 = WeakRetained;
  if (a1[5])
  {
    [WeakRetained workoutSession:v5 didChangeToState:v3 fromState:v4 date:?];
  }

  else
  {
    v6 = [MEMORY[0x1E695DF00] date];
    [v7 workoutSession:v5 didChangeToState:v3 fromState:v4 date:v6];
  }
}

- (void)client_didGenerateEvents:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__HKWorkoutSession_client_didGenerateEvents___block_invoke;
  v7[3] = &unk_1E7378400;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __45__HKWorkoutSession_client_didGenerateEvents___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _queue_markRecoveryRequired];
  _HKInitializeLogging();
  v2 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    *buf = 138543618;
    v29 = v4;
    v30 = 2048;
    v31 = [v3 count];
    _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Did generate %lu events. Notifying client", buf, 0x16u);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = *(a1 + 40);
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    v17 = v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [HKWorkoutEvent _workoutEventWithInternalEvent:*(*(&v23 + 1) + 8 * v10), v17];
        if (v11)
        {
          WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
          if (objc_opt_respondsToSelector())
          {
            v13 = *(*(a1 + 32) + 16);
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            v19[0] = __45__HKWorkoutSession_client_didGenerateEvents___block_invoke_239;
            v19[1] = &unk_1E7376640;
            v14 = WeakRetained;
            v15 = *(a1 + 32);
            v20 = v14;
            v21 = v15;
            v22 = v11;
            dispatch_async(v13, block);
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)client_didFailWithError:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__HKWorkoutSession_client_didFailWithError___block_invoke;
  v7[3] = &unk_1E7378400;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __44__HKWorkoutSession_client_didFailWithError___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_markRecoveryRequired];
  v2 = [*(*(a1 + 32) + 56) sessionUUID];
  _HKRemoveRunningWorkoutSessionUUID(v2);

  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 16);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__HKWorkoutSession_client_didFailWithError___block_invoke_2;
  v6[3] = &unk_1E7378400;
  v6[4] = v4;
  v7 = v3;
  dispatch_async(v5, v6);
}

void __44__HKWorkoutSession_client_didFailWithError___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained workoutSession:*(a1 + 32) didFailWithError:*(a1 + 40)];
}

- (void)client_synchronizeWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__HKWorkoutSession_client_synchronizeWithCompletion___block_invoke;
  block[3] = &unk_1E7376A98;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, block);
}

- (void)client_didSyncSessionEvent:(int64_t)a3 date:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__HKWorkoutSession_client_didSyncSessionEvent_date___block_invoke;
  block[3] = &unk_1E73767D0;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(queue, block);
}

uint64_t __52__HKWorkoutSession_client_didSyncSessionEvent_date___block_invoke(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *(v2 + 96);
  v4 = a1[6];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__HKWorkoutSession_client_didSyncSessionEvent_date___block_invoke_2;
  v6[3] = &unk_1E7376A00;
  v6[4] = v2;
  return [v3 enqueueEvent:v4 date:v1 error:0 completion:v6];
}

void __52__HKWorkoutSession_client_didSyncSessionEvent_date___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"NO";
    v10 = 138543874;
    if (a2)
    {
      v8 = @"YES";
    }

    v11 = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Enqueued synced event with success: %{public}@, error: %{public}@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)client_didSyncCurrentActivity:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__HKWorkoutSession_client_didSyncCurrentActivity___block_invoke;
  v7[3] = &unk_1E7378400;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __50__HKWorkoutSession_client_didSyncCurrentActivity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) endDate];
  if (v2)
  {
  }

  else
  {
    v3 = [*(*(a1 + 40) + 56) currentActivity];

    if (!v3)
    {
      v8 = *(a1 + 40);
      v11 = [*(a1 + 32) workoutConfiguration];
      v9 = [*(a1 + 32) startDate];
      v10 = [*(a1 + 32) metadata];
      [v8 beginNewActivityWithConfiguration:v11 date:v9 metadata:v10];

      goto LABEL_9;
    }
  }

  v4 = [*(a1 + 32) endDate];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = [*(*(a1 + 40) + 56) currentActivity];

  if (!v6)
  {
    return;
  }

  v7 = *(a1 + 40);
  v11 = [*(a1 + 32) endDate];
  [v7 endCurrentActivityOnDate:?];
LABEL_9:
}

- (void)client_didUpdateWorkoutConfiguration:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__HKWorkoutSession_client_didUpdateWorkoutConfiguration___block_invoke;
  v7[3] = &unk_1E7378400;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __57__HKWorkoutSession_client_didUpdateWorkoutConfiguration___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 56) setWorkoutConfiguration:*(a1 + 40)];
  [*(a1 + 32) _queue_markRecoveryRequired];
  v2 = [*(a1 + 32) _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__HKWorkoutSession_client_didUpdateWorkoutConfiguration___block_invoke_2;
    block[3] = &unk_1E7376640;
    v4 = v2;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = v4;
    v9 = v5;
    v10 = v6;
    dispatch_async(v3, block);
  }
}

- (void)client_didBeginActivity:(id)a3 date:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__HKWorkoutSession_client_didBeginActivity_date___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __49__HKWorkoutSession_client_didBeginActivity_date___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  [*(*(a1 + 32) + 56) setCurrentActivity:v2];

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = *(v6 + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__HKWorkoutSession_client_didBeginActivity_date___block_invoke_2;
    block[3] = &unk_1E7376640;
    block[4] = v6;
    v9 = v5;
    v10 = *(a1 + 48);
    dispatch_async(v7, block);
  }
}

void __49__HKWorkoutSession_client_didBeginActivity_date___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) workoutConfiguration];
  [WeakRetained workoutSession:v2 didBeginActivityWithConfiguration:v3 date:*(a1 + 48)];
}

- (void)client_didEndActivity:(id)a3 date:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__HKWorkoutSession_client_didEndActivity_date___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __47__HKWorkoutSession_client_didEndActivity_date___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 56) setCurrentActivity:0];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = *(v5 + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__HKWorkoutSession_client_didEndActivity_date___block_invoke_2;
    block[3] = &unk_1E7376640;
    block[4] = v5;
    v8 = v4;
    v9 = *(a1 + 48);
    dispatch_async(v6, block);
  }
}

void __47__HKWorkoutSession_client_didEndActivity_date___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) workoutConfiguration];
  [WeakRetained workoutSession:v2 didEndActivityWithConfiguration:v3 date:*(a1 + 48)];
}

- (void)client_didSuggestWorkoutConfiguration:(id)a3 date:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__HKWorkoutSession_client_didSuggestWorkoutConfiguration_date___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __63__HKWorkoutSession_client_didSuggestWorkoutConfiguration_date___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = *(*(a1 + 32) + 16);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __63__HKWorkoutSession_client_didSuggestWorkoutConfiguration_date___block_invoke_2;
    v7[3] = &unk_1E737B738;
    v4 = v2;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = v4;
    v9 = v5;
    v10 = v6;
    v11 = *(a1 + 48);
    dispatch_async(v3, v7);
  }
}

- (void)client_didReceiveDataFromRemoteWorkoutSession:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__HKWorkoutSession_client_didReceiveDataFromRemoteWorkoutSession_completion___block_invoke;
  block[3] = &unk_1E73766C8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __77__HKWorkoutSession_client_didReceiveDataFromRemoteWorkoutSession_completion___block_invoke(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = a1 + 4;
  WeakRetained = objc_loadWeakRetained((a1[4] + 24));
  v4 = objc_opt_respondsToSelector();
  _HKInitializeLogging();
  v5 = HKLogWorkouts;
  if (v4)
  {
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *v2;
      *buf = 138543362;
      v25 = v6;
      _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Did receive data from remote session. Notifying client", buf, 0xCu);
    }

    v7 = *(a1[4] + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__HKWorkoutSession_client_didReceiveDataFromRemoteWorkoutSession_completion___block_invoke_251;
    block[3] = &unk_1E7376640;
    v8 = WeakRetained;
    v9 = a1[4];
    v10 = a1[5];
    v21 = v8;
    v22 = v9;
    v23 = v10;
    dispatch_async(v7, block);
    (*(a1[6] + 16))();

    v11 = v21;
  }

  else
  {
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      __77__HKWorkoutSession_client_didReceiveDataFromRemoteWorkoutSession_completion___block_invoke_cold_1(v2, v5, v12, v13, v14, v15, v16, v17);
    }

    v18 = a1[6];
    v11 = [MEMORY[0x1E696ABC0] hk_error:3 description:@"Remote session delegate is not set up."];
    (*(v18 + 16))(v18, 0, v11);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)client_remoteSessionDidRecover
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__HKWorkoutSession_client_remoteSessionDidRecover__block_invoke;
  block[3] = &unk_1E7376780;
  block[4] = self;
  dispatch_async(queue, block);
}

void __50__HKWorkoutSession_client_remoteSessionDidRecover__block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 112))
  {
    v2 = [MEMORY[0x1E696ABC0] hk_error:100 format:@"Failed to send data to remote session."];
    [*(a1 + 32) _queue_pendingDataUpdateDidCompleteWithSuccess:0 error:v2];
  }
}

- (void)client_didDisconnectFromRemoteWithError:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__HKWorkoutSession_client_didDisconnectFromRemoteWithError_completion___block_invoke;
  block[3] = &unk_1E73766C8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __71__HKWorkoutSession_client_didDisconnectFromRemoteWithError_completion___block_invoke(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 4);
  WeakRetained = objc_loadWeakRetained((a1[4] + 24));
  objc_storeStrong(*v2 + 9, v2[1]);
  _HKInitializeLogging();
  v4 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *v2;
    *buf = 138543362;
    v27 = v5;
    _os_log_impl(&dword_19197B000, v4, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: did discconect from remote.", buf, 0xCu);
  }

  v6 = objc_opt_respondsToSelector();
  if (v6)
  {
    (*(a1[6] + 16))();
  }

  else
  {
    _HKInitializeLogging();
    v7 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      __71__HKWorkoutSession_client_didDisconnectFromRemoteWithError_completion___block_invoke_cold_1(v2, v7, v8, v9, v10, v11, v12, v13);
    }

    v14 = a1[6];
    v15 = [MEMORY[0x1E696ABC0] hk_error:125 format:@"Workout session doesn't have a delegate."];
    (*(v14 + 16))(v14, 0, v15);
  }

  if ([*v2 type] == 1)
  {
    [*(*v2 + 8) invalidate];
    v16 = *(*v2 + 8);
    *(*v2 + 8) = 0;
  }

  if (v6)
  {
    v17 = *(a1[4] + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__HKWorkoutSession_client_didDisconnectFromRemoteWithError_completion___block_invoke_262;
    block[3] = &unk_1E7376640;
    v18 = WeakRetained;
    v19 = a1[4];
    v20 = a1[5];
    v23 = v18;
    v24 = v19;
    v25 = v20;
    dispatch_async(v17, block);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)client_didUpdateGeneratedTypes:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__HKWorkoutSession_client_didUpdateGeneratedTypes___block_invoke;
  v7[3] = &unk_1E7378400;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __51__HKWorkoutSession_client_didUpdateGeneratedTypes___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isEqualToSet:*(*(a1 + 40) + 128)];
  if ((result & 1) == 0)
  {
    v3 = [*(a1 + 32) hk_map:&__block_literal_global_265];
    v4 = *(a1 + 40);
    v5 = *(v4 + 128);
    *(v4 + 128) = v3;

    return MEMORY[0x1EEE66BB8](v3, v5);
  }

  return result;
}

id __51__HKWorkoutSession_client_didUpdateGeneratedTypes___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_queue_enqueueStateEvent:(int64_t)a3 date:(id)a4 completion:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v10 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = self;
    v22 = 2048;
    v23 = a3;
    _os_log_impl(&dword_19197B000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Enqueuing state event %li", buf, 0x16u);
  }

  if ([(HKWorkoutSession *)self type])
  {
    proxyProvider = self->_proxyProvider;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __61__HKWorkoutSession__queue_enqueueStateEvent_date_completion___block_invoke;
    v16[3] = &unk_1E73805F8;
    v19 = a3;
    v17 = v8;
    v18 = v9;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __61__HKWorkoutSession__queue_enqueueStateEvent_date_completion___block_invoke_2;
    v13[3] = &unk_1E7379A58;
    v13[4] = self;
    v14 = v18;
    v15 = a3;
    [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v16 errorHandler:v13];
  }

  else
  {
    [(HKStateMachine *)self->_targetStateMachine enqueueEvent:a3 date:v8 error:0 completion:v9];
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __61__HKWorkoutSession__queue_enqueueStateEvent_date_completion___block_invoke(void *a1, void *a2)
{
  [a2 remote_syncSessionEvent:a1[6] date:a1[4]];
  v3 = *(a1[5] + 16);

  return v3();
}

void __61__HKWorkoutSession__queue_enqueueStateEvent_date_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) _isInvalidatedMirroredSession])
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) _notMirroringError];
    (*(v4 + 16))(v4, 0, v5);
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 48);
      v12 = 138543874;
      v13 = v10;
      v14 = 2048;
      v15 = v11;
      v16 = 2114;
      v17 = v3;
      _os_log_error_impl(&dword_19197B000, v6, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Failed to sync state event %li with error: %{public}@", &v12, 0x20u);
    }

    v7 = *(a1 + 40);
    v8 = [MEMORY[0x1E696ABC0] hk_error:100 format:@"Failed to sync state transition to the primary session."];
    (*(v7 + 16))(v7, 0, v8);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)stateMachine:(id)a3 didIgnoreEvent:(int64_t)a4 state:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a5;
  _HKInitializeLogging();
  v9 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = HKWorkoutSessionEventToString(a4);
    *buf = 138543874;
    v19 = self;
    v20 = 2114;
    v21 = v11;
    v22 = 2114;
    v23 = v8;
    _os_log_impl(&dword_19197B000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: (#w0) Invalid event %{public}@ from current state %{public}@", buf, 0x20u);
  }

  v12 = MEMORY[0x1E696ABC0];
  v13 = objc_opt_class();
  v14 = HKWorkoutSessionEventToString(a4);
  v15 = [v8 label];
  v16 = [v12 hk_errorForInvalidArgument:@"@" class:v13 selector:a2 format:{@"Unable to perform '%@' from current state '%@'", v14, v15}];
  [(HKWorkoutSession *)self client_didFailWithError:v16];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)stateMachine:(id)a3 didTransition:(id)a4 fromState:(id)a5 toState:(id)a6 date:(id)a7 error:(id)a8
{
  v35 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  _HKInitializeLogging();
  v20 = HKLogWorkouts;
  v21 = os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (!v21)
    {
      goto LABEL_7;
    }

    *buf = 138543618;
    v32 = self;
    v33 = 2114;
    v34 = v15;
    v22 = "%{public}@: (#w2) %{public}@";
  }

  else
  {
    if (!v21)
    {
      goto LABEL_7;
    }

    *buf = 138543618;
    v32 = self;
    v33 = 2114;
    v34 = v17;
    v22 = "%{public}@: (#w2) Entered at %{public}@";
  }

  _os_log_impl(&dword_19197B000, v20, OS_LOG_TYPE_DEFAULT, v22, buf, 0x16u);
LABEL_7:
  if ([v17 index] != 1)
  {
    proxyProvider = self->_proxyProvider;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __76__HKWorkoutSession_stateMachine_didTransition_fromState_toState_date_error___block_invoke;
    v27[3] = &unk_1E7380620;
    v28 = v17;
    v29 = v18;
    v30 = self;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __76__HKWorkoutSession_stateMachine_didTransition_fromState_toState_date_error___block_invoke_275;
    v25[3] = &unk_1E7380648;
    v25[4] = self;
    v26 = v28;
    [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v27 errorHandler:v25];
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __76__HKWorkoutSession_stateMachine_didTransition_fromState_toState_date_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) index];
  v5 = *(a1 + 40);
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DF00] date];
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__HKWorkoutSession_stateMachine_didTransition_fromState_toState_date_error___block_invoke_2;
  v7[3] = &unk_1E7376848;
  v7[4] = *(a1 + 48);
  v8 = *(a1 + 32);
  [v3 remote_setTargetState:v4 date:v6 completion:v7];
  if (!v5)
  {
  }
}

void __76__HKWorkoutSession_stateMachine_didTransition_fromState_toState_date_error___block_invoke_2(uint64_t a1, int a2, void *a3)
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
      _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: (#w1) %{public}@", &v10, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      __76__HKWorkoutSession_stateMachine_didTransition_fromState_toState_date_error___block_invoke_2_cold_1(a1);
    }

    if ([v5 hk_isHealthKitErrorWithCode:4])
    {
      [*(a1 + 32) client_didFailWithError:v5];
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __76__HKWorkoutSession_stateMachine_didTransition_fromState_toState_date_error___block_invoke_275(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __76__HKWorkoutSession_stateMachine_didTransition_fromState_toState_date_error___block_invoke_2_cold_1(a1);
  }

  if ([v3 hk_isHealthKitErrorWithCode:4])
  {
    [*(a1 + 32) client_didFailWithError:v3];
  }
}

- (void)prepare
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __27__HKWorkoutSession_prepare__block_invoke;
  v2[3] = &unk_1E7376A00;
  v2[4] = self;
  [(HKWorkoutSession *)self prepareWithCompletion:v2];
}

void __27__HKWorkoutSession_prepare__block_invoke(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogWorkouts;
  if (a2)
  {
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Prepared", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __27__HKWorkoutSession_prepare__block_invoke_cold_1(a1);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)prepareWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__HKWorkoutSession_prepareWithCompletion___block_invoke;
  v7[3] = &unk_1E73765F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __42__HKWorkoutSession_prepareWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E695DF00] date];
  [v2 _queue_enqueueStateEvent:1 date:v3 completion:*(a1 + 40)];
}

- (void)startActivityWithDate:(NSDate *)date
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__HKWorkoutSession_startActivityWithDate___block_invoke;
  v3[3] = &unk_1E7376A00;
  v3[4] = self;
  [(HKWorkoutSession *)self startActivityWithDate:date completion:v3];
}

void __42__HKWorkoutSession_startActivityWithDate___block_invoke(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogWorkouts;
  if (a2)
  {
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Started", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __42__HKWorkoutSession_startActivityWithDate___block_invoke_cold_1(a1);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)startActivityWithDate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__HKWorkoutSession_startActivityWithDate_completion___block_invoke;
  block[3] = &unk_1E73766C8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, block);
}

void __53__HKWorkoutSession_startActivityWithDate_completion___block_invoke(void *a1)
{
  v2 = a1[4];
  if (a1[5])
  {
    v3 = a1[6];
    v4 = a1[4];

    [v4 _queue_enqueueStateEvent:2 date:? completion:?];
  }

  else
  {
    v5 = [MEMORY[0x1E695DF00] date];
    [v2 _queue_enqueueStateEvent:2 date:v5 completion:a1[6]];
  }
}

- (void)stopActivityWithDate:(NSDate *)date
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__HKWorkoutSession_stopActivityWithDate___block_invoke;
  v3[3] = &unk_1E7376A00;
  v3[4] = self;
  [(HKWorkoutSession *)self stopActivityWithDate:date completion:v3];
}

void __41__HKWorkoutSession_stopActivityWithDate___block_invoke(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogWorkouts;
  if (a2)
  {
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Stopped", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __41__HKWorkoutSession_stopActivityWithDate___block_invoke_cold_1(a1);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)stopActivityWithDate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__HKWorkoutSession_stopActivityWithDate_completion___block_invoke;
  block[3] = &unk_1E73766C8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, block);
}

void __52__HKWorkoutSession_stopActivityWithDate_completion___block_invoke(void *a1)
{
  v2 = a1[4];
  if (a1[5])
  {
    v3 = a1[6];
    v4 = a1[4];

    [v4 _queue_enqueueStateEvent:5 date:? completion:?];
  }

  else
  {
    v5 = [MEMORY[0x1E695DF00] date];
    [v2 _queue_enqueueStateEvent:5 date:v5 completion:a1[6]];
  }
}

- (void)end
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __23__HKWorkoutSession_end__block_invoke;
  v2[3] = &unk_1E7376A00;
  v2[4] = self;
  [(HKWorkoutSession *)self endWithCompletion:v2];
}

void __23__HKWorkoutSession_end__block_invoke(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogWorkouts;
  if (a2)
  {
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Ended", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __23__HKWorkoutSession_end__block_invoke_cold_1(a1);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)endWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__HKWorkoutSession_endWithCompletion___block_invoke;
  v7[3] = &unk_1E73765F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __38__HKWorkoutSession_endWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E695DF00] date];
  [v2 _queue_enqueueStateEvent:6 date:v3 completion:*(a1 + 40)];
}

- (void)pause
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __25__HKWorkoutSession_pause__block_invoke;
  v2[3] = &unk_1E7376A00;
  v2[4] = self;
  [(HKWorkoutSession *)self pauseWithCompletion:v2];
}

void __25__HKWorkoutSession_pause__block_invoke(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogWorkouts;
  if (a2)
  {
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Paused", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __25__HKWorkoutSession_pause__block_invoke_cold_1(a1);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)pauseWithCompletion:(id)a3
{
  v4 = MEMORY[0x1E695DF00];
  v5 = a3;
  v6 = [v4 date];
  [(HKWorkoutSession *)self pauseWithDate:v6 completion:v5];
}

- (void)pauseWithDate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKHealthStore *)self->_healthStore _actionCompletionOnClientQueue:a4];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__HKWorkoutSession_pauseWithDate_completion___block_invoke;
  block[3] = &unk_1E7378458;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_sync(queue, block);
}

void __45__HKWorkoutSession_pauseWithDate_completion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _queue_isInvalidatedMirroredSession])
  {
    v2 = *(a1 + 48);
    v6 = [*(a1 + 32) _notMirroringError];
    (*(v2 + 16))(v2, 0, v6);
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    [v3 _queue_enqueueStateEvent:3 date:v4 completion:v5];
  }
}

- (void)resume
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __26__HKWorkoutSession_resume__block_invoke;
  v2[3] = &unk_1E7376A00;
  v2[4] = self;
  [(HKWorkoutSession *)self resumeWithCompletion:v2];
}

void __26__HKWorkoutSession_resume__block_invoke(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogWorkouts;
  if (a2)
  {
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Resumed", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __26__HKWorkoutSession_resume__block_invoke_cold_1(a1);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)resumeWithCompletion:(id)a3
{
  v4 = MEMORY[0x1E695DF00];
  v5 = a3;
  v6 = [v4 date];
  [(HKWorkoutSession *)self resumeWithDate:v6 completion:v5];
}

- (void)resumeWithDate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKHealthStore *)self->_healthStore _actionCompletionOnClientQueue:a4];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__HKWorkoutSession_resumeWithDate_completion___block_invoke;
  block[3] = &unk_1E7378458;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_sync(queue, block);
}

void __46__HKWorkoutSession_resumeWithDate_completion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _queue_isInvalidatedMirroredSession])
  {
    v2 = *(a1 + 48);
    v6 = [*(a1 + 32) _notMirroringError];
    (*(v2 + 16))(v2, 0, v6);
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    [v3 _queue_enqueueStateEvent:4 date:v4 completion:v5];
  }
}

- (HKWorkoutActivityType)activityType
{
  v2 = [(HKWorkoutSessionTaskConfiguration *)self->_configuration workoutConfiguration];
  v3 = [v2 activityType];

  return v3;
}

- (HKWorkoutSessionLocationType)locationType
{
  v2 = [(HKWorkoutSessionTaskConfiguration *)self->_configuration workoutConfiguration];
  v3 = [v2 locationType];

  return v3;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  v5 = delegate;
  objc_storeWeak(&self->_delegate, v5);
  if ((HKProgramSDKAtLeast() & 1) == 0)
  {
    objc_storeStrong(&self->_strongDelegate, delegate);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([(HKWorkoutSession *)self _isInvalidatedMirroredSession]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    clientQueue = self->_clientQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __32__HKWorkoutSession_setDelegate___block_invoke;
    v8[3] = &unk_1E7378400;
    v9 = WeakRetained;
    v10 = self;
    dispatch_async(clientQueue, v8);
  }
}

- (HKWorkoutSessionState)state
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 3;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __25__HKWorkoutSession_state__block_invoke;
  v5[3] = &unk_1E7378528;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSDate)startDate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__33;
  v10 = __Block_byref_object_dispose__33;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__HKWorkoutSession_startDate__block_invoke;
  v5[3] = &unk_1E7378528;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSDate)endDate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__33;
  v10 = __Block_byref_object_dispose__33;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__HKWorkoutSession_endDate__block_invoke;
  v5[3] = &unk_1E7378528;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)isGymKitSession
{
  v2 = [(HKWorkoutSessionTaskConfiguration *)self->_configuration workoutConfiguration];
  v3 = [v2 fitnessMachineSessionUUID];
  v4 = v3 != 0;

  return v4;
}

- (void)setShouldStopPreviousSession:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__HKWorkoutSession_setShouldStopPreviousSession___block_invoke;
  v4[3] = &unk_1E7378680;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(queue, v4);
}

uint64_t __49__HKWorkoutSession_setShouldStopPreviousSession___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 56) setShouldStopPreviousSession:*(a1 + 40)];
  v2 = *(a1 + 32);
  v4 = *(v2 + 56);
  v3 = *(v2 + 64);

  return [v3 setTaskConfiguration:v4];
}

- (void)setSupportsAppRelaunchForRecovery:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__HKWorkoutSession_setSupportsAppRelaunchForRecovery___block_invoke;
  v4[3] = &unk_1E7378680;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(queue, v4);
}

uint64_t __54__HKWorkoutSession_setSupportsAppRelaunchForRecovery___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 56) setSupportsAppRelaunchForRecovery:*(a1 + 40)];
  v2 = *(a1 + 32);
  v4 = *(v2 + 56);
  v3 = *(v2 + 64);

  return [v3 setTaskConfiguration:v4];
}

- (HKWorkoutActivity)currentActivity
{
  v3 = [(HKWorkoutSessionTaskConfiguration *)self->_configuration currentActivity];

  if (v3)
  {
    v4 = [(HKWorkoutSessionTaskConfiguration *)self->_configuration currentActivity];
    v5 = [v4 copy];
  }

  else
  {
    v6 = [HKWorkoutActivity alloc];
    v4 = [(HKWorkoutSessionTaskConfiguration *)self->_configuration workoutConfiguration];
    v5 = [(HKWorkoutActivity *)v6 initWithWorkoutConfiguration:v4 startDate:self->_startDate endDate:0 metadata:0];
  }

  v7 = v5;

  return v7;
}

- (HKLiveWorkoutBuilder)associatedWorkoutBuilder
{
  v3 = +[HKDevice localDevice];
  v4 = [(HKWorkoutSession *)self associatedWorkoutBuilderWithDevice:v3 goalType:0 goal:0];

  return v4;
}

- (id)associatedWorkoutBuilderWithDevice:(id)a3 goalType:(unint64_t)a4 goal:(id)a5
{
  v8 = a3;
  v9 = a5;
  associatedWorkoutBuilder = self->_associatedWorkoutBuilder;
  if (associatedWorkoutBuilder)
  {
    goto LABEL_4;
  }

  if (self->_healthStore)
  {
    v11 = objc_alloc_init(HKWorkoutBuilderConfiguration);
    [(HKWorkoutBuilderConfiguration *)v11 setDevice:v8];
    [(HKWorkoutBuilderConfiguration *)v11 setGoal:v9];
    [(HKWorkoutBuilderConfiguration *)v11 setGoalType:a4];
    v12 = [(HKWorkoutSessionTaskConfiguration *)self->_configuration workoutConfiguration];
    [(HKWorkoutBuilderConfiguration *)v11 setWorkoutConfiguration:v12];

    [(HKWorkoutBuilderConfiguration *)v11 setShouldCollectWorkoutEvents:1];
    v13 = [HKLiveWorkoutBuilder alloc];
    healthStore = self->_healthStore;
    v15 = [MEMORY[0x1E696AFB0] UUID];
    v16 = [(HKLiveWorkoutBuilder *)v13 initWithHealthStore:healthStore session:self builderConfiguration:v11 builderIdentifier:v15];
    v17 = self->_associatedWorkoutBuilder;
    self->_associatedWorkoutBuilder = v16;

    [(HKWorkoutSession *)self _setupTaskServerWithCompletion:&__block_literal_global_284];
    associatedWorkoutBuilder = self->_associatedWorkoutBuilder;
LABEL_4:
    v18 = associatedWorkoutBuilder;
    goto LABEL_5;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"An associated workout builder can only be created for HKWorkoutSession objects created via initWithHealthStore:configuration:error"];
  v18 = 0;
LABEL_5:

  return v18;
}

- (void)enableAutomaticDetectionForActivityConfigurations:(id)a3
{
  v4 = a3;
  proxyProvider = self->_proxyProvider;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__HKWorkoutSession_enableAutomaticDetectionForActivityConfigurations___block_invoke;
  v8[3] = &unk_1E7380670;
  v9 = v4;
  v10 = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__HKWorkoutSession_enableAutomaticDetectionForActivityConfigurations___block_invoke_288;
  v7[3] = &unk_1E7376898;
  v7[4] = self;
  v6 = v4;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v8 errorHandler:v7];
}

void __70__HKWorkoutSession_enableAutomaticDetectionForActivityConfigurations___block_invoke(int8x16_t *a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __70__HKWorkoutSession_enableAutomaticDetectionForActivityConfigurations___block_invoke_2;
  v3[3] = &unk_1E7376848;
  v2 = a1[2];
  v4 = vextq_s8(v2, v2, 8uLL);
  [a2 remote_enableAutomaticDetectionForActivityConfigurations:v2.i64[0] completion:v3];
}

void __70__HKWorkoutSession_enableAutomaticDetectionForActivityConfigurations___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogWorkouts;
  if (a2)
  {
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138543362;
      v15 = v7;
      _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: (#w1) Automatic detection for activities enabled", buf, 0xCu);
    }

    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = *(v9 + 8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __70__HKWorkoutSession_enableAutomaticDetectionForActivityConfigurations___block_invoke_285;
    v12[3] = &unk_1E7378400;
    v12[4] = v9;
    v13 = v8;
    dispatch_async(v10, v12);
  }

  else if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __70__HKWorkoutSession_enableAutomaticDetectionForActivityConfigurations___block_invoke_2_cold_1(a1);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __70__HKWorkoutSession_enableAutomaticDetectionForActivityConfigurations___block_invoke_285(uint64_t a1)
{
  [*(*(a1 + 32) + 56) setActivityConfigurations:*(a1 + 40)];
  v2 = [*(a1 + 32) _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__HKWorkoutSession_enableAutomaticDetectionForActivityConfigurations___block_invoke_2_287;
    block[3] = &unk_1E7376640;
    v4 = v2;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = v4;
    v9 = v5;
    v10 = v6;
    dispatch_async(v3, block);
  }
}

void __70__HKWorkoutSession_enableAutomaticDetectionForActivityConfigurations___block_invoke_288(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __70__HKWorkoutSession_enableAutomaticDetectionForActivityConfigurations___block_invoke_2_cold_1(a1);
  }
}

- (void)beginNewActivityWithConfiguration:(HKWorkoutConfiguration *)workoutConfiguration date:(NSDate *)date metadata:(NSDictionary *)metadata
{
  v8 = workoutConfiguration;
  v9 = date;
  v10 = metadata;
  proxyProvider = self->_proxyProvider;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __68__HKWorkoutSession_beginNewActivityWithConfiguration_date_metadata___block_invoke;
  v16[3] = &unk_1E7380698;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v20 = self;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68__HKWorkoutSession_beginNewActivityWithConfiguration_date_metadata___block_invoke_289;
  v15[3] = &unk_1E7376898;
  v15[4] = self;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v16 errorHandler:v15];
}

void __68__HKWorkoutSession_beginNewActivityWithConfiguration_date_metadata___block_invoke(void *a1, void *a2)
{
  v4 = a1[4];
  v3 = a1[5];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__HKWorkoutSession_beginNewActivityWithConfiguration_date_metadata___block_invoke_2;
  v6[3] = &unk_1E7376848;
  v5 = a1[6];
  v6[4] = a1[7];
  v7 = v3;
  [a2 remote_beginNewActivityWithConfiguration:v4 date:v7 metadata:v5 completion:v6];
}

void __68__HKWorkoutSession_beginNewActivityWithConfiguration_date_metadata___block_invoke_2(uint64_t a1, int a2, void *a3)
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
      _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: (#w1) New activity began with date: %{public}@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __68__HKWorkoutSession_beginNewActivityWithConfiguration_date_metadata___block_invoke_2_cold_1(a1);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __68__HKWorkoutSession_beginNewActivityWithConfiguration_date_metadata___block_invoke_289(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __68__HKWorkoutSession_beginNewActivityWithConfiguration_date_metadata___block_invoke_2_cold_1(a1);
  }
}

- (void)endCurrentActivityOnDate:(NSDate *)date
{
  v4 = date;
  proxyProvider = self->_proxyProvider;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__HKWorkoutSession_endCurrentActivityOnDate___block_invoke;
  v8[3] = &unk_1E7380670;
  v9 = v4;
  v10 = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__HKWorkoutSession_endCurrentActivityOnDate___block_invoke_290;
  v7[3] = &unk_1E7376898;
  v7[4] = self;
  v6 = v4;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v8 errorHandler:v7];
}

void __45__HKWorkoutSession_endCurrentActivityOnDate___block_invoke(int8x16_t *a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__HKWorkoutSession_endCurrentActivityOnDate___block_invoke_2;
  v3[3] = &unk_1E7376848;
  v2 = a1[2];
  v4 = vextq_s8(v2, v2, 8uLL);
  [a2 remote_endCurrentActivityOnDate:v2.i64[0] completion:v3];
}

void __45__HKWorkoutSession_endCurrentActivityOnDate___block_invoke_2(uint64_t a1, int a2, void *a3)
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
      _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: (#w1) Current activity ended with date: %{public}@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __45__HKWorkoutSession_endCurrentActivityOnDate___block_invoke_2_cold_1(a1);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __45__HKWorkoutSession_endCurrentActivityOnDate___block_invoke_290(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __45__HKWorkoutSession_endCurrentActivityOnDate___block_invoke_2_cold_1(a1);
  }
}

- (void)startMirroringToCompanionDeviceWithCompletion:(void *)completion
{
  v4 = completion;
  if (!v4)
  {
    [HKWorkoutSession startMirroringToCompanionDeviceWithCompletion:];
  }

  v5 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:v4];

  proxyProvider = self->_proxyProvider;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__HKWorkoutSession_startMirroringToCompanionDeviceWithCompletion___block_invoke;
  v10[3] = &unk_1E7380588;
  v10[4] = self;
  v11 = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__HKWorkoutSession_startMirroringToCompanionDeviceWithCompletion___block_invoke_301;
  v8[3] = &unk_1E7376820;
  v8[4] = self;
  v9 = v11;
  v7 = v11;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v10 errorHandler:v8];
}

void __66__HKWorkoutSession_startMirroringToCompanionDeviceWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__HKWorkoutSession_startMirroringToCompanionDeviceWithCompletion___block_invoke_2;
  v4[3] = &unk_1E73766A0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 remote_startMirroringToCompanionDeviceWithCompletion:v4];
}

void __66__HKWorkoutSession_startMirroringToCompanionDeviceWithCompletion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogWorkouts;
  if (a2)
  {
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Started mirroring to remote session", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __66__HKWorkoutSession_startMirroringToCompanionDeviceWithCompletion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x1E69E9840];
}

void __66__HKWorkoutSession_startMirroringToCompanionDeviceWithCompletion___block_invoke_301(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __66__HKWorkoutSession_startMirroringToCompanionDeviceWithCompletion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)stopMirroringToCompanionDeviceWithCompletion:(void *)completion
{
  v4 = completion;
  if (!v4)
  {
    [HKWorkoutSession stopMirroringToCompanionDeviceWithCompletion:];
  }

  v5 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:v4];

  proxyProvider = self->_proxyProvider;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__HKWorkoutSession_stopMirroringToCompanionDeviceWithCompletion___block_invoke;
  v10[3] = &unk_1E7380588;
  v10[4] = self;
  v11 = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__HKWorkoutSession_stopMirroringToCompanionDeviceWithCompletion___block_invoke_302;
  v8[3] = &unk_1E7376820;
  v8[4] = self;
  v9 = v11;
  v7 = v11;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v10 errorHandler:v8];
}

void __65__HKWorkoutSession_stopMirroringToCompanionDeviceWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__HKWorkoutSession_stopMirroringToCompanionDeviceWithCompletion___block_invoke_2;
  v4[3] = &unk_1E73766A0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 remote_stopMirroringToCompanionDeviceWithCompletion:v4];
}

void __65__HKWorkoutSession_stopMirroringToCompanionDeviceWithCompletion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogWorkouts;
  if (a2)
  {
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Stopped mirroring to remote session", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __65__HKWorkoutSession_stopMirroringToCompanionDeviceWithCompletion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x1E69E9840];
}

void __65__HKWorkoutSession_stopMirroringToCompanionDeviceWithCompletion___block_invoke_302(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __65__HKWorkoutSession_stopMirroringToCompanionDeviceWithCompletion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)sendDataToRemoteWorkoutSession:(NSData *)data completion:(void *)completion
{
  v9 = data;
  v6 = completion;
  if (v9)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HKWorkoutSession sendDataToRemoteWorkoutSession:completion:];
    if (v6)
    {
      goto LABEL_3;
    }
  }

  [HKWorkoutSession sendDataToRemoteWorkoutSession:completion:];
LABEL_3:
  if ([(HKWorkoutSession *)self _isInvalidatedMirroredSession])
  {
    v7 = [(HKHealthStore *)self->_healthStore _actionCompletionOnClientQueue:v6];

    v8 = [(HKWorkoutSession *)self _notMirroringError];
    (v7)[2](v7, 0, v8);
  }

  else
  {
    v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:v6];

    v8 = [[HKWorkoutMirroringDataUpdate alloc] initWithData:v9 completion:v7];
    [(HKWorkoutSession *)self _enqueueDataUpdate:v8];
  }
}

- (void)_queue_sendPendingDataUpdateToRemoteWorkoutSession
{
  if (self->_pendingDataUpdate)
  {
    objc_initWeak(&location, self);
    proxyProvider = self->_proxyProvider;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __70__HKWorkoutSession__queue_sendPendingDataUpdateToRemoteWorkoutSession__block_invoke;
    v6[3] = &unk_1E73806E8;
    v6[4] = self;
    objc_copyWeak(&v7, &location);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __70__HKWorkoutSession__queue_sendPendingDataUpdateToRemoteWorkoutSession__block_invoke_307;
    v4[3] = &unk_1E7380710;
    v4[4] = self;
    objc_copyWeak(&v5, &location);
    [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v6 errorHandler:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __70__HKWorkoutSession__queue_sendPendingDataUpdateToRemoteWorkoutSession__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 112) data];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__HKWorkoutSession__queue_sendPendingDataUpdateToRemoteWorkoutSession__block_invoke_2;
  v5[3] = &unk_1E73806C0;
  v5[4] = *(a1 + 32);
  objc_copyWeak(&v6, (a1 + 40));
  [v3 remote_sendDataToRemoteWorkoutSession:v4 completion:v5];

  objc_destroyWeak(&v6);
}

void __70__HKWorkoutSession__queue_sendPendingDataUpdateToRemoteWorkoutSession__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogWorkouts;
  if (a2)
  {
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Sent data to remote session", &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __70__HKWorkoutSession__queue_sendPendingDataUpdateToRemoteWorkoutSession__block_invoke_2_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = [*(*(a1 + 32) + 112) UUID];
  [WeakRetained _dataUpdateWithUUID:v9 didCompleteWithSuccess:a2 error:v5];

  v10 = *MEMORY[0x1E69E9840];
}

void __70__HKWorkoutSession__queue_sendPendingDataUpdateToRemoteWorkoutSession__block_invoke_307(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __70__HKWorkoutSession__queue_sendPendingDataUpdateToRemoteWorkoutSession__block_invoke_2_cold_1(a1);
  }

  if ([*(a1 + 32) _isInvalidatedMirroredSession])
  {
    v4 = [*(a1 + 32) _notMirroringError];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [*(*(a1 + 32) + 112) UUID];
  [WeakRetained _dataUpdateWithUUID:v7 didCompleteWithSuccess:0 error:v5];
}

- (void)_enqueueDataUpdate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__HKWorkoutSession__enqueueDataUpdate___block_invoke;
  v7[3] = &unk_1E7378400;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __39__HKWorkoutSession__enqueueDataUpdate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 112))
  {
    v3 = *(v2 + 104);
    v4 = *(a1 + 40);

    return [v3 addObject:v4];
  }

  else
  {
    objc_storeStrong((v2 + 112), *(a1 + 40));
    v6 = *(a1 + 32);

    return [v6 _queue_sendPendingDataUpdateToRemoteWorkoutSession];
  }
}

- (void)_dataUpdateWithUUID:(id)a3 didCompleteWithSuccess:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__HKWorkoutSession__dataUpdateWithUUID_didCompleteWithSuccess_error___block_invoke;
  v13[3] = &unk_1E7378428;
  v14 = v8;
  v15 = self;
  v17 = a4;
  v16 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, v13);
}

void __69__HKWorkoutSession__dataUpdateWithUUID_didCompleteWithSuccess_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 112) UUID];
  LODWORD(v2) = [v2 isEqual:v3];

  if (v2)
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);

    [v5 _queue_pendingDataUpdateDidCompleteWithSuccess:v4 error:v6];
  }
}

- (void)_setupTaskServerWithCompletion:(id)a3
{
  v4 = a3;
  proxyProvider = self->_proxyProvider;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__HKWorkoutSession__setupTaskServerWithCompletion___block_invoke;
  v8[3] = &unk_1E7380738;
  v9 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__HKWorkoutSession__setupTaskServerWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7376898;
  v7[4] = self;
  v6 = v4;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v8 errorHandler:v7];
}

void __51__HKWorkoutSession__setupTaskServerWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __51__HKWorkoutSession__setupTaskServerWithCompletion___block_invoke_2_cold_1(a1);
  }
}

- (void)_setupMirroredSessionTaskServerWithCompletion:(id)a3
{
  v4 = a3;
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__HKWorkoutSession__setupMirroredSessionTaskServerWithCompletion___block_invoke;
  v9[3] = &unk_1E7380588;
  v9[4] = self;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__HKWorkoutSession__setupMirroredSessionTaskServerWithCompletion___block_invoke_3;
  v7[3] = &unk_1E7376820;
  v7[4] = self;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

void __66__HKWorkoutSession__setupMirroredSessionTaskServerWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__HKWorkoutSession__setupMirroredSessionTaskServerWithCompletion___block_invoke_2;
  v4[3] = &unk_1E7380760;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 remote_setupMirroredSessionWithHandler:v4];
}

void __66__HKWorkoutSession__setupMirroredSessionTaskServerWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v21 = v3;
  if (v3)
  {
    if ([v3 sessionState] != *(*(a1 + 32) + 32))
    {
      *(*(a1 + 32) + 32) = [v21 sessionState];
      v4 = *(a1 + 32);
      v5 = objc_opt_class();
      v6 = [*(*(a1 + 32) + 56) sessionUUID];
      v7 = [v5 targetWorkoutSessionStateMachineForSessionUUID:v6];
      v8 = *(a1 + 32);
      v9 = *(v8 + 96);
      *(v8 + 96) = v7;

      [*(*(a1 + 32) + 96) setDelegate:?];
      [*(*(a1 + 32) + 96) enterAtState:{objc_msgSend(v21, "sessionState")}];
    }

    v10 = [v21 currentActivity];
    v11 = [v10 copy];
    [*(*(a1 + 32) + 56) setCurrentActivity:v11];

    v12 = [v21 startDate];
    v13 = [v12 copy];
    v14 = *(a1 + 32);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v16 = [v21 endDate];
    v17 = [v16 copy];
    v18 = *(a1 + 32);
    v19 = *(v18 + 48);
    *(v18 + 48) = v17;

    v20 = *(*(a1 + 40) + 16);
  }

  else
  {
    v20 = *(*(a1 + 40) + 16);
  }

  v20();
}

void __66__HKWorkoutSession__setupMirroredSessionTaskServerWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __66__HKWorkoutSession__setupMirroredSessionTaskServerWithCompletion___block_invoke_3_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_runSetupPostClientMirroringStartHandlerWithCompletion:(id)a3
{
  v4 = a3;
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__HKWorkoutSession__runSetupPostClientMirroringStartHandlerWithCompletion___block_invoke;
  v9[3] = &unk_1E7380738;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__HKWorkoutSession__runSetupPostClientMirroringStartHandlerWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7376820;
  v7[4] = self;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

void __75__HKWorkoutSession__runSetupPostClientMirroringStartHandlerWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __66__HKWorkoutSession__setupMirroredSessionTaskServerWithCompletion___block_invoke_3_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (BOOL)_isInvalidatedMirroredSession
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__HKWorkoutSession__isInvalidatedMirroredSession__block_invoke;
  v5[3] = &unk_1E7378528;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __49__HKWorkoutSession__isInvalidatedMirroredSession__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_isInvalidatedMirroredSession];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  configuration = self->_configuration;
  v5 = a3;
  v6 = [(HKWorkoutSessionTaskConfiguration *)configuration sessionUUID];
  [v5 encodeObject:v6 forKey:@"UUID"];

  v7 = [(HKWorkoutSessionTaskConfiguration *)self->_configuration workoutConfiguration];
  [v5 encodeObject:v7 forKey:@"workoutConfiguration"];

  [v5 encodeInteger:self->_state forKey:@"state"];
  [v5 encodeObject:self->_startDate forKey:@"startDate"];
  [v5 encodeObject:self->_endDate forKey:@"endDate"];
  v8 = [(NSSet *)self->_currentGeneratedTypes allObjects];
  [v5 encodeObject:v8 forKey:@"currentGeneratedTypes"];
}

- (HKWorkoutSession)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(HKWorkoutSessionTaskConfiguration);
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
  [(HKWorkoutSessionTaskConfiguration *)v5 setSessionUUID:v6];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"workoutConfiguration"];
  [(HKWorkoutSessionTaskConfiguration *)v5 setWorkoutConfiguration:v7];

  v25 = 0;
  v8 = [(HKWorkoutSession *)self _initWithHealthStore:0 taskConfiguration:v5 error:&v25];
  v9 = v25;
  if (v8)
  {
    v8->_state = [v4 decodeIntegerForKey:@"state"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v8->_startDate;
    v8->_startDate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v8->_endDate;
    v8->_endDate = v12;

    v14 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"currentGeneratedTypes"];
    v15 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v14];
    currentGeneratedTypes = v8->_currentGeneratedTypes;
    v8->_currentGeneratedTypes = v15;
  }

  else
  {
    _HKInitializeLogging();
    v17 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      [(HKWorkoutSession *)v9 initWithCoder:v17, v18, v19, v20, v21, v22, v23];
    }
  }

  return v8;
}

+ (void)_unitTest_clearAllRunningWorkouts
{
  os_unfair_lock_lock(&_HKRunningWorkoutSessionLock);
  [_HKRunningWorkoutSessionStatesByUUIDs removeAllObjects];

  os_unfair_lock_unlock(&_HKRunningWorkoutSessionLock);
}

- (void)_unitTest_discardAssociatedWorkoutBuilder
{
  associatedWorkoutBuilder = self->_associatedWorkoutBuilder;
  self->_associatedWorkoutBuilder = 0;
  MEMORY[0x1EEE66BB8]();
}

void __41__HKWorkoutSession_connectionInterrupted__block_invoke_226_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __41__HKWorkoutSession_connectionInterrupted__block_invoke_232_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __77__HKWorkoutSession_client_didReceiveDataFromRemoteWorkoutSession_completion___block_invoke_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_2(&dword_19197B000, a2, a3, "[mirroring] %{public}@: Received data from remote session but the session delegate is not setup.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __71__HKWorkoutSession_client_didDisconnectFromRemoteWithError_completion___block_invoke_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_2(&dword_19197B000, a2, a3, "[mirroring] %{public}@: received disconnection event, but no delegate is set.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __76__HKWorkoutSession_stateMachine_didTransition_fromState_toState_date_error___block_invoke_2_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x1E69E9840];
}

void __27__HKWorkoutSession_prepare__block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __42__HKWorkoutSession_startActivityWithDate___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __41__HKWorkoutSession_stopActivityWithDate___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __23__HKWorkoutSession_end__block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __25__HKWorkoutSession_pause__block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __26__HKWorkoutSession_resume__block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __70__HKWorkoutSession_enableAutomaticDetectionForActivityConfigurations___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __68__HKWorkoutSession_beginNewActivityWithConfiguration_date_metadata___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __45__HKWorkoutSession_endCurrentActivityOnDate___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)startMirroringToCompanionDeviceWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void __66__HKWorkoutSession_startMirroringToCompanionDeviceWithCompletion___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)stopMirroringToCompanionDeviceWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void __65__HKWorkoutSession_stopMirroringToCompanionDeviceWithCompletion___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)sendDataToRemoteWorkoutSession:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"data" object:? file:? lineNumber:? description:?];
}

- (void)sendDataToRemoteWorkoutSession:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void __70__HKWorkoutSession__queue_sendPendingDataUpdateToRemoteWorkoutSession__block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __51__HKWorkoutSession__setupTaskServerWithCompletion___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __66__HKWorkoutSession__setupMirroredSessionTaskServerWithCompletion___block_invoke_3_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2(&dword_19197B000, a2, a3, "Failed to decode HKWorkoutSession: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end