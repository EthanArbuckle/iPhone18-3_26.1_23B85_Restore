@interface HDGymKitPairingManager
- (HDGymKitPairingManager)initWithProfile:(id)a3;
- (HDGymKitPairingManagerDelegate)delegate;
- (id)_newWatchAppStateMonitor;
- (void)dealloc;
- (void)deliverError:(id)a3;
- (void)forbidConnectionForFitnessMachineSessionUUID:(id)a3 withConnectionUUID:(id)a4;
- (void)gymKitSettings:(id)a3 didChangeFromNFCPermission:(unint64_t)a4 toNFCPermission:(unint64_t)a5;
- (void)handleBLEConnectionCompletedSuccessfully:(BOOL)a3;
- (void)monitorDidDetectAppActivate:(id)a3;
- (void)monitorDidDetectAppDeactivate:(id)a3;
- (void)nearFieldInterfaceDidEnterField:(id)a3;
- (void)nearFieldInterfaceDidReadTag:(id)a3;
- (void)nearFieldInterfaceFieldDetectionDidEndUnexpectedly:(id)a3;
- (void)nearFieldInterfaceTagSessionDidEndUnexpectedly:(id)a3;
- (void)permitConnectionForFitnessMachineSessionUUID:(id)a3 activityType:(unint64_t)a4 withConnectionUUID:(id)a5;
- (void)registerConnectionInitiatorClient:(id)a3 withConnectionUUID:(id)a4;
- (void)reset;
- (void)simulateAccept;
- (void)simulateTapWithFitnessMachineType:(unint64_t)a3;
- (void)stateTimersFieldDetectTimeout:(id)a3;
- (void)stateTimersTagReadTimeout:(id)a3;
- (void)stateTimersUserAcceptanceTimeout:(id)a3;
- (void)updatedConnectionStateWithError:(id)a3;
- (void)updatedFitnessMachine;
- (void)updatedFitnessMachineState:(unint64_t)a3 fitnessMachineSessionUUID:(id)a4;
- (void)workoutAppIsReady;
- (void)workoutManager:(id)a3 currentWorkout:(id)a4 didChangeToState:(int64_t)a5;
- (void)workoutManager:(id)a3 didUpdateCurrentWorkout:(id)a4;
@end

@implementation HDGymKitPairingManager

- (HDGymKitPairingManager)initWithProfile:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = HDGymKitPairingManager;
  v5 = [(HDGymKitPairingManager *)&v24 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = HKCreateSerialDispatchQueueWithQOSClass();
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = objc_alloc_init(NSMutableDictionary);
    connectionInitiatorClients = v6->_connectionInitiatorClients;
    v6->_connectionInitiatorClients = v9;

    v11 = [(HDGymKitPairingManager *)v6 _newNearFieldInterface];
    nearFieldInterface = v6->_nearFieldInterface;
    v6->_nearFieldInterface = v11;

    [(HDNearFieldInterface *)v6->_nearFieldInterface setDelegate:v6];
    v13 = [HDGymKitSettings alloc];
    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    v15 = [(HDGymKitSettings *)v13 initWithProfile:WeakRetained];
    gymKitSettings = v6->_gymKitSettings;
    v6->_gymKitSettings = v15;

    [(HDGymKitSettings *)v6->_gymKitSettings setDelegate:v6];
    v6->_bluetoothState = 0;
    v17 = [[HDFitnessMachineStateTimers alloc] initWithQueue:v6->_queue delegate:v6];
    fitnessMachineStateTimers = v6->_fitnessMachineStateTimers;
    v6->_fitnessMachineStateTimers = v17;

    v19 = [(HDGymKitPairingManager *)v6 _newWatchAppStateMonitor];
    workoutAppStateMonitor = v6->_workoutAppStateMonitor;
    v6->_workoutAppStateMonitor = v19;

    [(HDWatchAppStateMonitor *)v6->_workoutAppStateMonitor setDelegate:v6];
    v21 = objc_loadWeakRetained(&v6->_profile);
    v22 = [v21 workoutManager];
    [v22 registerCurrentWorkoutObserver:v6];
  }

  return v6;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v4 = [WeakRetained workoutManager];
  [v4 unregisterCurrentWorkoutObserver:self];

  [(HDFitnessMachineStateTimers *)self->_fitnessMachineStateTimers cancelAllTimers];
  [(HDPowerAssertion *)self->_tagReadPowerAssertion invalidate];
  [(HDNearFieldInterface *)self->_nearFieldInterface endFieldDetectSession];
  [(HDNearFieldInterface *)self->_nearFieldInterface endNdefTagSession];
  v5.receiver = self;
  v5.super_class = HDGymKitPairingManager;
  [(HDGymKitPairingManager *)&v5 dealloc];
}

- (id)_newWatchAppStateMonitor
{
  v2 = [HDWatchAppStateMonitor alloc];

  return [v2 initWithFirstPartyWorkoutApp];
}

- (void)reset
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_62B0;
  block[3] = &unk_5C800;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)handleBLEConnectionCompletedSuccessfully:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_6438;
  v4[3] = &unk_5CA50;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

- (void)gymKitSettings:(id)a3 didChangeFromNFCPermission:(unint64_t)a4 toNFCPermission:(unint64_t)a5
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_650C;
  v6[3] = &unk_5C9B0;
  v6[4] = self;
  v6[5] = a5;
  dispatch_async(queue, v6);
}

- (void)nearFieldInterfaceDidEnterField:(id)a3
{
  _HKInitializeLogging();
  v4 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = self;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Received a field detect event", buf, 0xCu);
  }

  HKSessionTrackerAriadneTrigger();
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_29E88;
  block[3] = &unk_5C800;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)nearFieldInterfaceFieldDetectionDidEndUnexpectedly:(id)a3
{
  _HKInitializeLogging();
  v4 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = self;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: NDefTagSession ended unexpectedly", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_29E90;
  block[3] = &unk_5C800;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)nearFieldInterfaceDidReadTag:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6AF0;
  block[3] = &unk_5C800;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)nearFieldInterfaceTagSessionDidEndUnexpectedly:(id)a3
{
  _HKInitializeLogging();
  v4 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEBUG))
  {
    sub_2B1F8(self, v4);
  }

  [(HDGymKitPairingManager *)self reset];
}

- (void)monitorDidDetectAppActivate:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2A0D0;
  block[3] = &unk_5C800;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)monitorDidDetectAppDeactivate:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2A10C;
  block[3] = &unk_5C800;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)workoutManager:(id)a3 didUpdateCurrentWorkout:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_6DC8;
  v8[3] = &unk_5C8C8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)workoutManager:(id)a3 currentWorkout:(id)a4 didChangeToState:(int64_t)a5
{
  v6 = a4;
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_2A1C4;
  v9[3] = &unk_5C8C8;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, v9);
}

- (void)stateTimersUserAcceptanceTimeout:(id)a3
{
  dispatch_assert_queue_V2(self->_queue);
  v5 = [NSError hk_error:805 description:@"No user acceptance within the required timeout"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pairingManager:self failedPairingWithError:v5];
}

- (void)registerConnectionInitiatorClient:(id)a3 withConnectionUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_7134;
  block[3] = &unk_5C788;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

- (void)permitConnectionForFitnessMachineSessionUUID:(id)a3 activityType:(unint64_t)a4 withConnectionUUID:(id)a5
{
  v8 = a3;
  v9 = a5;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_73BC;
  v13[3] = &unk_5CB18;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, v13);
}

- (void)forbidConnectionForFitnessMachineSessionUUID:(id)a3 withConnectionUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2AA0C;
  block[3] = &unk_5C788;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)workoutAppIsReady
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2ABA0;
  block[3] = &unk_5C800;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)updatedFitnessMachine
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2ABB0;
  block[3] = &unk_5C800;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)updatedFitnessMachineState:(unint64_t)a3 fitnessMachineSessionUUID:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2ACC0;
  block[3] = &unk_5CBA8;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)updatedConnectionStateWithError:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_7898;
  v7[3] = &unk_5C8C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)deliverError:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_2AFBC;
  v7[3] = &unk_5C8C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)simulateTapWithFitnessMachineType:(unint64_t)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_7A5C;
  v4[3] = &unk_5C9B0;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

- (void)simulateAccept
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2AFD4;
  block[3] = &unk_5C800;
  block[4] = self;
  dispatch_async(queue, block);
}

- (HDGymKitPairingManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)stateTimersFieldDetectTimeout:(id)a3
{
  sub_7CD4(self);
  sub_29524(v3);

  sub_29618(v3);
}

- (void)stateTimersTagReadTimeout:(id)a3
{
  sub_7CD4(self);

  sub_29D80(v3);
}

@end