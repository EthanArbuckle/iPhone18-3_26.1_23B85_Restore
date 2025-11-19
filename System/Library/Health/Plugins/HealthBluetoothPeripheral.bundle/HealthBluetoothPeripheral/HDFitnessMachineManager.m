@interface HDFitnessMachineManager
- (HDFitnessMachineManager)initWithProfile:(id)a3;
- (id)pairingManagerRequestsOOBData:(id)a3 error:(id *)a4;
- (id)unitTest_currentFitnessMachineSession;
- (unint64_t)fitnessMachineTypeForSessionUUID:(id)a3;
- (void)_queue_handleBeginPairing:(id)a3;
- (void)_queue_handleReceivedCharacteristic:(id)a3 device:(id)a4 error:(id)a5;
- (void)_queue_registerClient:(id)a3 withConnectionUUID:(id)a4;
- (void)addFitnessMachineSessionObserver:(id)a3;
- (void)clientInvalidatedWithConnectionUUID:(id)a3;
- (void)dealloc;
- (void)endFitnessMachineConnectionForFitnessMachineSessionUUID:(id)a3 withConnectionUUID:(id)a4;
- (void)endFitnessMachineConnectionWithUUID:(id)a3;
- (void)endFitnessMachineSessionWithUUID:(id)a3;
- (void)finishSessionWithConfiguration:(id)a3;
- (void)hktest_setMachinePreferredUntilDate:(id)a3;
- (void)markClientReadyWithConnectionUUID:(id)a3;
- (void)pairingManager:(id)a3 didChangeNFCEnabledState:(BOOL)a4;
- (void)pairingManager:(id)a3 discoveredHealthService:(id)a4 machineType:(unint64_t)a5;
- (void)pairingManager:(id)a3 failedPairingWithError:(id)a4;
- (void)pairingManager:(id)a3 updatedConnectionStateFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)pairingManagerReadyToConnect:(id)a3;
- (void)pairingManagerReceivedActivityTypeAndPermission:(id)a3;
- (void)pairingManagerUpdatedMachineInformation:(id)a3;
- (void)pairingManagerWillBeginPairing:(id)a3 fitnessMachineToken:(id)a4;
- (void)recoverSessionWithConfiguration:(id)a3;
- (void)registerClient:(id)a3 withConnectionUUID:(id)a4;
- (void)removeFitnessMachineSessionObserver:(id)a3;
- (void)simulateDisconnect;
- (void)stateTimersDisconnectTimeout:(id)a3;
- (void)stateTimersMfaTimeout:(id)a3;
- (void)stateTimersPauseTimeout:(id)a3;
- (void)stateTimersRetryConnectionTimeout:(id)a3;
- (void)stateTimersWaitForMachineStartTimeout:(id)a3;
- (void)unitTest_fakeMachineDiscoveryForType:(unint64_t)a3;
- (void)unitTest_fakeSession:(id)a3;
- (void)unitTest_receiveFakeCharacteristicUpdate:(id)a3;
- (void)unitTest_tearDownFakeSession;
@end

@implementation HDFitnessMachineManager

- (HDFitnessMachineManager)initWithProfile:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = HDFitnessMachineManager;
  v5 = [(HDFitnessMachineManager *)&v25 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = objc_alloc_init(NSMutableArray);
    connections = v6->_connections;
    v6->_connections = v9;

    v11 = [[HDGymKitPairingManager alloc] initWithProfile:v4];
    pairingManager = v6->_pairingManager;
    v6->_pairingManager = v11;

    [(HDGymKitPairingManager *)v6->_pairingManager setDelegate:v6];
    v13 = [[HDFitnessMachineDataProducer alloc] initWithProfile:v4];
    fitnessMachineDataProducer = v6->_fitnessMachineDataProducer;
    v6->_fitnessMachineDataProducer = v13;

    v15 = [[HDFitnessMachineStateTimers alloc] initWithQueue:v6->_queue delegate:v6];
    fitnessMachineStateTimers = v6->_fitnessMachineStateTimers;
    v6->_fitnessMachineStateTimers = v15;

    v17 = objc_alloc_init(NSMutableArray);
    characteristicDataBuffer = v6->_characteristicDataBuffer;
    v6->_characteristicDataBuffer = v17;

    v19 = objc_alloc_init(HDFitnessMachineAnalyticsCollector);
    analyticsCollector = v6->_analyticsCollector;
    v6->_analyticsCollector = v19;

    v21 = [HKSynchronousObserverSet alloc];
    v22 = [v21 initWithName:@"fitness-machine-session-observer" loggingCategory:HKLogWorkouts];
    fitnessMachineSessionObservers = v6->_fitnessMachineSessionObservers;
    v6->_fitnessMachineSessionObservers = v22;
  }

  return v6;
}

- (void)dealloc
{
  [(HDFitnessMachineStateTimers *)self->_fitnessMachineStateTimers cancelAllTimers];
  v3.receiver = self;
  v3.super_class = HDFitnessMachineManager;
  [(HDFitnessMachineManager *)&v3 dealloc];
}

- (void)registerClient:(id)a3 withConnectionUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_15FBC;
  block[3] = &unk_5C788;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)markClientReadyWithConnectionUUID:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_16064;
  v7[3] = &unk_5C8C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)endFitnessMachineConnectionWithUUID:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1619C;
  v7[3] = &unk_5C8C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)endFitnessMachineConnectionForFitnessMachineSessionUUID:(id)a3 withConnectionUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2FC18;
  block[3] = &unk_5C788;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)endFitnessMachineSessionWithUUID:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_2FC28;
  v7[3] = &unk_5C8C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)clientInvalidatedWithConnectionUUID:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_2FF10;
  v7[3] = &unk_5C8C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (unint64_t)fitnessMachineTypeForSessionUUID:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_16470;
  block[3] = &unk_5D1E8;
  v10 = v4;
  v11 = self;
  v12 = &v13;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v7;
}

- (void)recoverSessionWithConfiguration:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_165B8;
  v7[3] = &unk_5C8C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)finishSessionWithConfiguration:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1665C;
  v7[3] = &unk_5C8C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)addFitnessMachineSessionObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_168A0;
  v7[3] = &unk_5C8C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)removeFitnessMachineSessionObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_16944;
  v7[3] = &unk_5C8C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_queue_handleReceivedCharacteristic:(id)a3 device:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_queue);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v12 = &stru_5E418;
  if (isKindOfClass)
  {
    v12 = @"(#w0) ";
  }

  v13 = v12;
  _HKInitializeLogging();
  v14 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 138543618;
    v29 = v13;
    v30 = 2114;
    v31 = v8;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Received fitness machine characteristic %{public}@", &v28, 0x16u);
  }

  v15 = [(HDFitnessMachineSession *)self->_fitnessMachineSession fitnessMachine];
  v16 = [v15 device];
  v17 = [v16 localIdentifier];

  v18 = [v9 localIdentifier];
  LODWORD(v16) = [v18 isEqualToString:v17];

  if (v16)
  {
    if (v10)
    {
      sub_30728(self, v10);
      goto LABEL_19;
    }

    v19 = [(HDFitnessMachineSession *)self->_fitnessMachineSession fitnessMachine];
    v20 = [v19 device];
    v21 = [v20 manufacturer];

    if (!v21)
    {
      v27 = [v9 manufacturer];

      if (!v27)
      {
        sub_32CA4();
        goto LABEL_19;
      }

      sub_30F3C(self, v9);
    }

    v22 = [(HDFitnessMachineSession *)self->_fitnessMachineSession fitnessMachine];
    v23 = [v22 type];
    v24 = v8;
    if (v23 <= 2)
    {
      if (v23 == (&dword_0 + 1) || v23 == (&dword_0 + 2))
      {
LABEL_15:
        objc_opt_class();
        v25 = objc_opt_isKindOfClass();

        if (v25)
        {
          sub_31030(self, v24);
          goto LABEL_19;
        }

        goto LABEL_16;
      }
    }

    else if (v23 == (&dword_0 + 3) || v23 == &dword_4 || v23 == (&dword_4 + 2))
    {
      goto LABEL_15;
    }

    _HKInitializeLogging();
    v26 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      sub_32C08(v26);
    }

LABEL_16:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      HKSessionTrackerAriadneTrigger();
      sub_3109C(self, v24);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        sub_31294(self, v24);
      }
    }
  }

LABEL_19:
}

- (void)pairingManagerWillBeginPairing:(id)a3 fitnessMachineToken:(id)a4
{
  v5 = a4;
  _HKInitializeLogging();
  v6 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEBUG))
  {
    sub_32CF4(v6);
  }

  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_175C4;
  v9[3] = &unk_5C8C8;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  dispatch_async(queue, v9);
}

- (void)pairingManager:(id)a3 failedPairingWithError:(id)a4
{
  v5 = a4;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    sub_32D78();
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_328E8;
  v8[3] = &unk_5C8C8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)pairingManager:(id)a3 didChangeNFCEnabledState:(BOOL)a4
{
  _HKInitializeLogging();
  v5 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEBUG))
  {
    sub_32DEC(a4, v5);
  }
}

- (void)pairingManagerUpdatedMachineInformation:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3297C;
  block[3] = &unk_5C800;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)pairingManager:(id)a3 updatedConnectionStateFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_32988;
  block[3] = &unk_5D1B8;
  block[4] = self;
  block[5] = a4;
  block[6] = a5;
  dispatch_async(queue, block);
}

- (void)pairingManagerReceivedActivityTypeAndPermission:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_329A0;
  block[3] = &unk_5C800;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)pairingManager:(id)a3 discoveredHealthService:(id)a4 machineType:(unint64_t)a5
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_178C8;
  v6[3] = &unk_5C9B0;
  v6[4] = self;
  v6[5] = a5;
  dispatch_async(queue, v6);
}

- (void)pairingManagerReadyToConnect:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_329E8;
  block[3] = &unk_5C800;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)simulateDisconnect
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_17A64;
  block[3] = &unk_5C800;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)hktest_setMachinePreferredUntilDate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_32AA0;
  v7[3] = &unk_5C8C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)unitTest_fakeMachineDiscoveryForType:(unint64_t)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_17B78;
  v4[3] = &unk_5C9B0;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(queue, v4);
}

- (void)unitTest_fakeSession:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_32AAC;
  v7[3] = &unk_5C8C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (id)unitTest_currentFitnessMachineSession
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_17DAC;
  v10 = sub_17DBC;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_17DC4;
  v5[3] = &unk_5CA00;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)unitTest_receiveFakeCharacteristicUpdate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_17E70;
  v7[3] = &unk_5C8C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)unitTest_tearDownFakeSession
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_17F5C;
  block[3] = &unk_5C800;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_queue_handleBeginPairing:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_queue);
  fitnessMachineSession = self->_fitnessMachineSession;
  self->_fitnessMachineSession = v5;
  v7 = v5;

  v8 = sub_2F750(self);
  [(HDFitnessMachineSession *)self->_fitnessMachineSession nfcSessionID];
  objc_claimAutoreleasedReturnValue();
  [sub_18120() enablePrivateModeForSessionWithIdentifier:v3];

  [(HDFitnessMachineSession *)v7 fitnessMachineSessionUUID];
  objc_claimAutoreleasedReturnValue();
  v9 = sub_180B8();
  sub_31A54(v9, v8);

  v10 = sub_2F750(self);
  v11 = objc_opt_self();
  v12 = NSStringFromClass(v11);
  sub_4FB4();
  sub_7D04();
  v14 = sub_16F98;
  v15 = &unk_5CD20;
  v16 = self;
  [v10 sendBluetoothStatusUpdatesForServer:v12 updateHandler:v13 completion:0];
}

- (void)stateTimersPauseTimeout:(id)a3
{
  sub_7CD4(self);
  _HKInitializeLogging();
  if (sub_18194())
  {
    sub_C29C();
    _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  }

  sub_31874(v3);
}

- (void)stateTimersWaitForMachineStartTimeout:(id)a3
{
  sub_7CD4(self);
  _HKInitializeLogging();
  if (sub_18194())
  {
    sub_C29C();
    _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  }

  sub_31874(v3);
}

- (void)stateTimersDisconnectTimeout:(id)a3
{
  sub_7CD4(self);
  _HKInitializeLogging();
  if (sub_18194())
  {
    sub_C29C();
    _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  }

  sub_30CE8(v3);
}

- (void)stateTimersRetryConnectionTimeout:(id)a3
{
  sub_7CD4(self);
  _HKInitializeLogging();
  v3 = HKLogServices;
  if (sub_18194())
  {
    LOWORD(v13) = 0;
    sub_C29C();
    _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  }

  [NSError hk_error:803 description:@"Failed to connect to fitness machine within allotted time.", v13];
  objc_claimAutoreleasedReturnValue();
  v9 = sub_18098();
  sub_30728(v9, v10);
  v11 = sub_181F0();
  sub_2FC38(v11, v12);
}

- (void)stateTimersMfaTimeout:(id)a3
{
  _HKInitializeLogging();
  v3 = HKLogServices;
  if (sub_18194())
  {
    LOWORD(v13) = 0;
    sub_C29C();
    _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  }

  [NSError hk_error:204 description:@"(#w0) Failed to complete MFA within allotted time.", v13];
  objc_claimAutoreleasedReturnValue();
  v9 = sub_18098();
  sub_30728(v9, v10);
  v11 = sub_18170();
  sub_2FC38(v11, v12);
}

- (void)_queue_registerClient:(id)a3 withConnectionUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = sub_300A0(self, v7);
  if (v8)
  {
    v9 = [NSError hk_error:108 description:@"Client already registered"];
    _HKInitializeLogging();
    v10 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      *v24 = 138413058;
      *&v24[4] = v8;
      sub_18158();
      v25 = 2114;
      v26 = v9;
      _os_log_error_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Error registering client connection: %@ client: %@, connection UUID: %@, error: %{public}@", v24, 0x2Au);
    }

    [v6 clientRemote_deliverFailedWithError:{v9, *v24}];
  }

  else
  {
    v9 = [[HDFitnessMachineConnection alloc] initWithUUID:v7 client:v6];
    _HKInitializeLogging();
    v11 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 138412802;
      *&v24[4] = v9;
      sub_18158();
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Registering client connection: %@, client: %@ for connection UUID %@", v24, 0x20u);
    }

    sub_3285C(self, v9);
    v12 = [(HDFitnessMachineSession *)self->_fitnessMachineSession fitnessMachineSessionUUID];

    if (v12)
    {
      v13 = [(HDFitnessMachineSession *)self->_fitnessMachineSession fitnessMachine];

      if (v13)
      {
        v14 = [(HDFitnessMachineSession *)self->_fitnessMachineSession fitnessMachine];
        [v6 clientRemote_deliverMachineInformationUpdated:v14];
      }

      v15 = [(HDFitnessMachineSession *)self->_fitnessMachineSession connectionState];
      v16 = [(HDFitnessMachineSession *)self->_fitnessMachineSession fitnessMachineSessionUUID];
      [v6 clientRemote_deliverConnectionChangedToState:v15 fromState:0 fitnessMachineSessionUUID:v16 error:0];

      v17 = [(HDFitnessMachineSession *)self->_fitnessMachineSession machineState];
      v18 = [(HDFitnessMachineSession *)self->_fitnessMachineSession fitnessMachine];

      if (v18 && v17)
      {
        if ((v17 & 0xFFFFFFFFFFFFFFFELL) == 2)
        {
          v19 = [(HDFitnessMachineSession *)self->_fitnessMachineSession fitnessMachineSessionUUID];
          v20 = [(HDFitnessMachineSession *)self->_fitnessMachineSession machineStartDate];
          v21 = 1;
          [v6 clientRemote_deliverMachineChangedToState:1 fromState:0 fitnessMachineSessionUUID:v19 date:v20];
        }

        else
        {
          v21 = 0;
        }

        v22 = [(HDFitnessMachineSession *)self->_fitnessMachineSession fitnessMachineSessionUUID];
        v23 = [(HDFitnessMachineSession *)self->_fitnessMachineSession machineStateUpdateDate];
        [v6 clientRemote_deliverMachineChangedToState:v17 fromState:v21 fitnessMachineSessionUUID:v22 date:v23];
      }
    }
  }
}

- (id)pairingManagerRequestsOOBData:(id)a3 error:(id *)a4
{
  v5 = sub_2F750(self);
  v6 = [v5 retrieveOOBData:a4];

  return v6;
}

@end