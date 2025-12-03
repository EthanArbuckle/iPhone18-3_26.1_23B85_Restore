@interface HDFitnessMachineManager
- (HDFitnessMachineManager)initWithProfile:(id)profile;
- (id)pairingManagerRequestsOOBData:(id)data error:(id *)error;
- (id)unitTest_currentFitnessMachineSession;
- (unint64_t)fitnessMachineTypeForSessionUUID:(id)d;
- (void)_queue_handleBeginPairing:(id)pairing;
- (void)_queue_handleReceivedCharacteristic:(id)characteristic device:(id)device error:(id)error;
- (void)_queue_registerClient:(id)client withConnectionUUID:(id)d;
- (void)addFitnessMachineSessionObserver:(id)observer;
- (void)clientInvalidatedWithConnectionUUID:(id)d;
- (void)dealloc;
- (void)endFitnessMachineConnectionForFitnessMachineSessionUUID:(id)d withConnectionUUID:(id)iD;
- (void)endFitnessMachineConnectionWithUUID:(id)d;
- (void)endFitnessMachineSessionWithUUID:(id)d;
- (void)finishSessionWithConfiguration:(id)configuration;
- (void)hktest_setMachinePreferredUntilDate:(id)date;
- (void)markClientReadyWithConnectionUUID:(id)d;
- (void)pairingManager:(id)manager didChangeNFCEnabledState:(BOOL)state;
- (void)pairingManager:(id)manager discoveredHealthService:(id)service machineType:(unint64_t)type;
- (void)pairingManager:(id)manager failedPairingWithError:(id)error;
- (void)pairingManager:(id)manager updatedConnectionStateFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)pairingManagerReadyToConnect:(id)connect;
- (void)pairingManagerReceivedActivityTypeAndPermission:(id)permission;
- (void)pairingManagerUpdatedMachineInformation:(id)information;
- (void)pairingManagerWillBeginPairing:(id)pairing fitnessMachineToken:(id)token;
- (void)recoverSessionWithConfiguration:(id)configuration;
- (void)registerClient:(id)client withConnectionUUID:(id)d;
- (void)removeFitnessMachineSessionObserver:(id)observer;
- (void)simulateDisconnect;
- (void)stateTimersDisconnectTimeout:(id)timeout;
- (void)stateTimersMfaTimeout:(id)timeout;
- (void)stateTimersPauseTimeout:(id)timeout;
- (void)stateTimersRetryConnectionTimeout:(id)timeout;
- (void)stateTimersWaitForMachineStartTimeout:(id)timeout;
- (void)unitTest_fakeMachineDiscoveryForType:(unint64_t)type;
- (void)unitTest_fakeSession:(id)session;
- (void)unitTest_receiveFakeCharacteristicUpdate:(id)update;
- (void)unitTest_tearDownFakeSession;
@end

@implementation HDFitnessMachineManager

- (HDFitnessMachineManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v25.receiver = self;
  v25.super_class = HDFitnessMachineManager;
  v5 = [(HDFitnessMachineManager *)&v25 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = objc_alloc_init(NSMutableArray);
    connections = v6->_connections;
    v6->_connections = v9;

    v11 = [[HDGymKitPairingManager alloc] initWithProfile:profileCopy];
    pairingManager = v6->_pairingManager;
    v6->_pairingManager = v11;

    [(HDGymKitPairingManager *)v6->_pairingManager setDelegate:v6];
    v13 = [[HDFitnessMachineDataProducer alloc] initWithProfile:profileCopy];
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

- (void)registerClient:(id)client withConnectionUUID:(id)d
{
  clientCopy = client;
  dCopy = d;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_15FBC;
  block[3] = &unk_5C788;
  block[4] = self;
  v12 = clientCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = clientCopy;
  dispatch_async(queue, block);
}

- (void)markClientReadyWithConnectionUUID:(id)d
{
  dCopy = d;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_16064;
  v7[3] = &unk_5C8C8;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

- (void)endFitnessMachineConnectionWithUUID:(id)d
{
  dCopy = d;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1619C;
  v7[3] = &unk_5C8C8;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

- (void)endFitnessMachineConnectionForFitnessMachineSessionUUID:(id)d withConnectionUUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2FC18;
  block[3] = &unk_5C788;
  block[4] = self;
  v12 = dCopy;
  v13 = iDCopy;
  v9 = iDCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)endFitnessMachineSessionWithUUID:(id)d
{
  dCopy = d;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_2FC28;
  v7[3] = &unk_5C8C8;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

- (void)clientInvalidatedWithConnectionUUID:(id)d
{
  dCopy = d;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_2FF10;
  v7[3] = &unk_5C8C8;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

- (unint64_t)fitnessMachineTypeForSessionUUID:(id)d
{
  dCopy = d;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_16470;
  block[3] = &unk_5D1E8;
  v10 = dCopy;
  selfCopy = self;
  v12 = &v13;
  v6 = dCopy;
  dispatch_sync(queue, block);
  v7 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v7;
}

- (void)recoverSessionWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_165B8;
  v7[3] = &unk_5C8C8;
  v7[4] = self;
  v8 = configurationCopy;
  v6 = configurationCopy;
  dispatch_async(queue, v7);
}

- (void)finishSessionWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1665C;
  v7[3] = &unk_5C8C8;
  v7[4] = self;
  v8 = configurationCopy;
  v6 = configurationCopy;
  dispatch_sync(queue, v7);
}

- (void)addFitnessMachineSessionObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_168A0;
  v7[3] = &unk_5C8C8;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (void)removeFitnessMachineSessionObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_16944;
  v7[3] = &unk_5C8C8;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (void)_queue_handleReceivedCharacteristic:(id)characteristic device:(id)device error:(id)error
{
  characteristicCopy = characteristic;
  deviceCopy = device;
  errorCopy = error;
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
    v31 = characteristicCopy;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Received fitness machine characteristic %{public}@", &v28, 0x16u);
  }

  fitnessMachine = [(HDFitnessMachineSession *)self->_fitnessMachineSession fitnessMachine];
  device = [fitnessMachine device];
  localIdentifier = [device localIdentifier];

  localIdentifier2 = [deviceCopy localIdentifier];
  LODWORD(device) = [localIdentifier2 isEqualToString:localIdentifier];

  if (device)
  {
    if (errorCopy)
    {
      sub_30728(self, errorCopy);
      goto LABEL_19;
    }

    fitnessMachine2 = [(HDFitnessMachineSession *)self->_fitnessMachineSession fitnessMachine];
    device2 = [fitnessMachine2 device];
    manufacturer = [device2 manufacturer];

    if (!manufacturer)
    {
      manufacturer2 = [deviceCopy manufacturer];

      if (!manufacturer2)
      {
        sub_32CA4();
        goto LABEL_19;
      }

      sub_30F3C(self, deviceCopy);
    }

    fitnessMachine3 = [(HDFitnessMachineSession *)self->_fitnessMachineSession fitnessMachine];
    type = [fitnessMachine3 type];
    v24 = characteristicCopy;
    if (type <= 2)
    {
      if (type == (&dword_0 + 1) || type == (&dword_0 + 2))
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

    else if (type == (&dword_0 + 3) || type == &dword_4 || type == (&dword_4 + 2))
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

- (void)pairingManagerWillBeginPairing:(id)pairing fitnessMachineToken:(id)token
{
  tokenCopy = token;
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
  v10 = tokenCopy;
  v8 = tokenCopy;
  dispatch_async(queue, v9);
}

- (void)pairingManager:(id)manager failedPairingWithError:(id)error
{
  errorCopy = error;
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
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_async(queue, v8);
}

- (void)pairingManager:(id)manager didChangeNFCEnabledState:(BOOL)state
{
  _HKInitializeLogging();
  v5 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEBUG))
  {
    sub_32DEC(state, v5);
  }
}

- (void)pairingManagerUpdatedMachineInformation:(id)information
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3297C;
  block[3] = &unk_5C800;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)pairingManager:(id)manager updatedConnectionStateFromState:(unint64_t)state toState:(unint64_t)toState
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_32988;
  block[3] = &unk_5D1B8;
  block[4] = self;
  block[5] = state;
  block[6] = toState;
  dispatch_async(queue, block);
}

- (void)pairingManagerReceivedActivityTypeAndPermission:(id)permission
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_329A0;
  block[3] = &unk_5C800;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)pairingManager:(id)manager discoveredHealthService:(id)service machineType:(unint64_t)type
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_178C8;
  v6[3] = &unk_5C9B0;
  v6[4] = self;
  v6[5] = type;
  dispatch_async(queue, v6);
}

- (void)pairingManagerReadyToConnect:(id)connect
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

- (void)hktest_setMachinePreferredUntilDate:(id)date
{
  dateCopy = date;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_32AA0;
  v7[3] = &unk_5C8C8;
  v7[4] = self;
  v8 = dateCopy;
  v6 = dateCopy;
  dispatch_sync(queue, v7);
}

- (void)unitTest_fakeMachineDiscoveryForType:(unint64_t)type
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_17B78;
  v4[3] = &unk_5C9B0;
  v4[4] = self;
  v4[5] = type;
  dispatch_sync(queue, v4);
}

- (void)unitTest_fakeSession:(id)session
{
  sessionCopy = session;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_32AAC;
  v7[3] = &unk_5C8C8;
  v7[4] = self;
  v8 = sessionCopy;
  v6 = sessionCopy;
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

- (void)unitTest_receiveFakeCharacteristicUpdate:(id)update
{
  updateCopy = update;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_17E70;
  v7[3] = &unk_5C8C8;
  v7[4] = self;
  v8 = updateCopy;
  v6 = updateCopy;
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

- (void)_queue_handleBeginPairing:(id)pairing
{
  pairingCopy = pairing;
  dispatch_assert_queue_V2(self->_queue);
  fitnessMachineSession = self->_fitnessMachineSession;
  self->_fitnessMachineSession = pairingCopy;
  v7 = pairingCopy;

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
  selfCopy = self;
  [v10 sendBluetoothStatusUpdatesForServer:v12 updateHandler:v13 completion:0];
}

- (void)stateTimersPauseTimeout:(id)timeout
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

- (void)stateTimersWaitForMachineStartTimeout:(id)timeout
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

- (void)stateTimersDisconnectTimeout:(id)timeout
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

- (void)stateTimersRetryConnectionTimeout:(id)timeout
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

- (void)stateTimersMfaTimeout:(id)timeout
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

- (void)_queue_registerClient:(id)client withConnectionUUID:(id)d
{
  clientCopy = client;
  dCopy = d;
  dispatch_assert_queue_V2(self->_queue);
  v8 = sub_300A0(self, dCopy);
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

    [clientCopy clientRemote_deliverFailedWithError:{v9, *v24}];
  }

  else
  {
    v9 = [[HDFitnessMachineConnection alloc] initWithUUID:dCopy client:clientCopy];
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
    fitnessMachineSessionUUID = [(HDFitnessMachineSession *)self->_fitnessMachineSession fitnessMachineSessionUUID];

    if (fitnessMachineSessionUUID)
    {
      fitnessMachine = [(HDFitnessMachineSession *)self->_fitnessMachineSession fitnessMachine];

      if (fitnessMachine)
      {
        fitnessMachine2 = [(HDFitnessMachineSession *)self->_fitnessMachineSession fitnessMachine];
        [clientCopy clientRemote_deliverMachineInformationUpdated:fitnessMachine2];
      }

      connectionState = [(HDFitnessMachineSession *)self->_fitnessMachineSession connectionState];
      fitnessMachineSessionUUID2 = [(HDFitnessMachineSession *)self->_fitnessMachineSession fitnessMachineSessionUUID];
      [clientCopy clientRemote_deliverConnectionChangedToState:connectionState fromState:0 fitnessMachineSessionUUID:fitnessMachineSessionUUID2 error:0];

      machineState = [(HDFitnessMachineSession *)self->_fitnessMachineSession machineState];
      fitnessMachine3 = [(HDFitnessMachineSession *)self->_fitnessMachineSession fitnessMachine];

      if (fitnessMachine3 && machineState)
      {
        if ((machineState & 0xFFFFFFFFFFFFFFFELL) == 2)
        {
          fitnessMachineSessionUUID3 = [(HDFitnessMachineSession *)self->_fitnessMachineSession fitnessMachineSessionUUID];
          machineStartDate = [(HDFitnessMachineSession *)self->_fitnessMachineSession machineStartDate];
          v21 = 1;
          [clientCopy clientRemote_deliverMachineChangedToState:1 fromState:0 fitnessMachineSessionUUID:fitnessMachineSessionUUID3 date:machineStartDate];
        }

        else
        {
          v21 = 0;
        }

        fitnessMachineSessionUUID4 = [(HDFitnessMachineSession *)self->_fitnessMachineSession fitnessMachineSessionUUID];
        machineStateUpdateDate = [(HDFitnessMachineSession *)self->_fitnessMachineSession machineStateUpdateDate];
        [clientCopy clientRemote_deliverMachineChangedToState:machineState fromState:v21 fitnessMachineSessionUUID:fitnessMachineSessionUUID4 date:machineStateUpdateDate];
      }
    }
  }
}

- (id)pairingManagerRequestsOOBData:(id)data error:(id *)error
{
  v5 = sub_2F750(self);
  v6 = [v5 retrieveOOBData:error];

  return v6;
}

@end