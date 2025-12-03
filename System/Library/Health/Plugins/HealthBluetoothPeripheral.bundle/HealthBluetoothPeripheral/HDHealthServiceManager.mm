@interface HDHealthServiceManager
- (BOOL)healthUpdatesEnabledFromDevice:(id)device error:(id *)error;
- (BOOL)setHealthUpdatesEnabled:(BOOL)enabled fromDevice:(id)device error:(id *)error;
- (HDHealthServiceManager)initWithProfile:(id)profile centralManager:(id)manager queue:(id)queue;
- (id)_healthServiceForPeriperalID:(id)d serviceType:(int64_t)type;
- (id)allServicesWithError:(id *)error;
- (id)retrieveOOBData:(id *)data;
- (id)reviewSavedHealthServiceSessionsWithError:(id *)error;
- (unint64_t)connectHealthService:(id)service connectionOptions:(unint64_t)options sessionHandler:(id)handler dataHandler:(id)dataHandler mfaSuccessHandler:(id)successHandler autoPairData:(id)data error:(id *)error;
- (unint64_t)connectHealthService:(id)service sessionHandler:(id)handler dataHandler:(id)dataHandler characteristicsHandler:(id)characteristicsHandler error:(id *)error;
- (unint64_t)connectHealthService:(id)service sessionHandler:(id)handler dataHandler:(id)dataHandler error:(id *)error;
- (unint64_t)discoverHealthServicesWithType:(int64_t)type timeout:(unint64_t)timeout alwaysNotify:(BOOL)notify handler:(id)handler error:(id *)error;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager willRestoreState:(id)state;
- (void)centralManagerDidUpdateState:(id)state;
- (void)characteristicReceived:(id)received device:(id)device;
- (void)dealloc;
- (void)disconnectHealthService:(unint64_t)service;
- (void)discoveredCharacteristics:(id)characteristics forDevice:(id)device service:(id)service;
- (void)discoveredServices:(id)services forPeripheral:(id)peripheral;
- (void)enablePrivateModeForSessionWithIdentifier:(id)identifier;
- (void)getProperty:(id)property forSession:(unint64_t)session withHandler:(id)handler;
- (void)getSupportedPropertyNamesWithHandler:(id)handler;
- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing;
- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error;
- (void)pairingAgent:(id)agent peerDidRequestPairing:(id)pairing type:(int64_t)type passkey:(id)passkey;
- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair;
- (void)performOperation:(id)operation onSession:(unint64_t)session withParameters:(id)parameters completion:(id)completion;
- (void)releasePrivateMode;
- (void)resetOOBState;
- (void)sendBluetoothStatusUpdatesForServer:(id)server updateHandler:(id)handler completion:(id)completion;
- (void)servicesInvalidatedForDevice:(id)device withError:(id)error;
- (void)stopDiscoveryWithIdentifier:(unint64_t)identifier;
- (void)unpairHealthServiceIfNecessary:(id)necessary;
@end

@implementation HDHealthServiceManager

- (HDHealthServiceManager)initWithProfile:(id)profile centralManager:(id)manager queue:(id)queue
{
  profileCopy = profile;
  managerCopy = manager;
  queueCopy = queue;
  v32.receiver = self;
  v32.super_class = HDHealthServiceManager;
  v11 = [(HDHealthServiceManager *)&v32 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_profile, profileCopy);
    if (queueCopy)
    {
      v13 = queueCopy;
    }

    else
    {
      v13 = HKCreateSerialDispatchQueue();
    }

    queue = v12->_queue;
    v12->_queue = v13;

    dataCollectionManager = [profileCopy dataCollectionManager];
    dataCollectionManager = v12->_dataCollectionManager;
    v12->_dataCollectionManager = dataCollectionManager;

    v17 = +[NSMutableDictionary dictionary];
    connectedPeripheralsByPeripheralUUID = v12->_connectedPeripheralsByPeripheralUUID;
    v12->_connectedPeripheralsByPeripheralUUID = v17;

    v19 = objc_alloc_init(NSLock);
    discoveryLock = v12->_discoveryLock;
    v12->_discoveryLock = v19;

    v21 = objc_alloc_init(NSLock);
    connectionLock = v12->_connectionLock;
    v12->_connectionLock = v21;

    v23 = [CBUUID UUIDWithString:@"0000"];
    allServicesUUID = v12->_allServicesUUID;
    v12->_allServicesUUID = v23;

    if (managerCopy)
    {
      v25 = managerCopy;
    }

    else
    {
      v25 = [[CBCentralManager alloc] initWithDelegate:0 queue:v12->_queue];
    }

    central = v12->_central;
    v12->_central = v25;

    [(CBCentralManager *)v12->_central setDelegate:v12];
    v12->_privacyNotificationToken = -1;
    objc_initWeak(&location, v12);
    v27 = v12->_queue;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1BBB8;
    v29[3] = &unk_5CC70;
    objc_copyWeak(&v30, &location);
    if (notify_register_dispatch("com.apple.bluetooth.accessory-authentication.success", &v12->_privacyNotificationToken, v27, v29))
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_ERROR))
      {
        sub_38178();
      }
    }

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v12;
}

- (void)dealloc
{
  privacyNotificationToken = self->_privacyNotificationToken;
  if (privacyNotificationToken != -1)
  {
    notify_cancel(privacyNotificationToken);
  }

  v4.receiver = self;
  v4.super_class = HDHealthServiceManager;
  [(HDHealthServiceManager *)&v4 dealloc];
}

- (id)reviewSavedHealthServiceSessionsWithError:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1BE14;
  v23 = sub_1BE24;
  v24 = +[NSMutableArray array];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1BE14;
  v17 = sub_1BE24;
  v18 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1BE2C;
  block[3] = &unk_5D578;
  block[4] = self;
  block[5] = &v13;
  block[6] = &v19;
  dispatch_sync(queue, block);
  v6 = v20[5];
  if (!v6)
  {
    v7 = v14[5];
    v8 = v7;
    if (v7)
    {
      if (error)
      {
        v9 = v7;
        *error = v8;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v6 = v20[5];
  }

  v10 = v6;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v10;
}

- (BOOL)healthUpdatesEnabledFromDevice:(id)device error:(id *)error
{
  deviceCopy = device;
  _HKInitializeLogging();
  v8 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = NSStringFromSelector(a2);
    *buf = 138543874;
    selfCopy3 = self;
    v40 = 2114;
    v41 = v10;
    v42 = 2114;
    v43 = deviceCopy;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: deviceIdentifier: %{public}@", buf, 0x20u);
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_1BE14;
  v36 = sub_1BE24;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  queue = self->_queue;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1C524;
  v23[3] = &unk_5D5A0;
  v26 = &v28;
  v12 = deviceCopy;
  v24 = v12;
  selfCopy2 = self;
  v27 = &v32;
  dispatch_sync(queue, v23);
  if ((v29[3] & 1) == 0)
  {
    v13 = v33[5];
    v14 = v13;
    if (v13)
    {
      if (error)
      {
        v15 = v13;
        *error = v14;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  _HKInitializeLogging();
  v16 = HKLogServices;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = NSStringFromSelector(a2);
    v18 = v17;
    v19 = @"NO";
    if (*(v29 + 24))
    {
      v19 = @"YES";
    }

    v20 = v33[5];
    *buf = 138544386;
    selfCopy3 = self;
    v40 = 2114;
    v41 = v17;
    v42 = 2114;
    v43 = v12;
    v44 = 2114;
    v45 = v19;
    v46 = 2114;
    v47 = v20;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: deviceIdentifier: %{public}@ -> enabled: %{public}@, error: %{public}@", buf, 0x34u);
  }

  v21 = *(v29 + 24);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);

  return v21 & 1;
}

- (BOOL)setHealthUpdatesEnabled:(BOOL)enabled fromDevice:(id)device error:(id *)error
{
  enabledCopy = enabled;
  deviceCopy = device;
  _HKInitializeLogging();
  v10 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = NSStringFromSelector(a2);
    *buf = 138543874;
    selfCopy3 = self;
    v45 = 2114;
    v46 = v12;
    v47 = 2114;
    v48 = deviceCopy;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: deviceIdentifier: %{public}@", buf, 0x20u);
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_1BE14;
  v41 = sub_1BE24;
  v42 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1CA0C;
  block[3] = &unk_5D5C8;
  v30 = &v33;
  v32 = enabledCopy;
  v14 = deviceCopy;
  v28 = v14;
  selfCopy2 = self;
  v31 = &v37;
  dispatch_sync(queue, block);
  if (enabledCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    serviceConnectionManager = [WeakRetained serviceConnectionManager];
    [serviceConnectionManager reconnectToServices];
  }

  else
  {
    sub_356D8(self, v14, 0);
  }

  if ((v34[3] & 1) == 0)
  {
    v17 = v38[5];
    v18 = v17;
    if (v17)
    {
      if (error)
      {
        v19 = v17;
        *error = v18;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  _HKInitializeLogging();
  v20 = HKLogServices;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = NSStringFromSelector(a2);
    v22 = v21;
    v23 = @"NO";
    if (*(v34 + 24))
    {
      v23 = @"YES";
    }

    v24 = v38[5];
    *buf = 138544386;
    selfCopy3 = self;
    v45 = 2114;
    v46 = v21;
    v47 = 2114;
    v48 = v14;
    v49 = 2114;
    v50 = v23;
    v51 = 2114;
    v52 = v24;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: deviceIdentifier: %{public}@ -> success: %{public}@, error: %{public}@", buf, 0x34u);
  }

  v25 = *(v34 + 24);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);

  return v25 & 1;
}

- (void)sendBluetoothStatusUpdatesForServer:(id)server updateHandler:(id)handler completion:(id)completion
{
  serverCopy = server;
  handlerCopy = handler;
  completionCopy = completion;
  _HKInitializeLogging();
  v12 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = NSStringFromSelector(a2);
    *buf = 138543874;
    selfCopy = self;
    v23 = 2114;
    v24 = v14;
    v25 = 2114;
    v26 = serverCopy;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: serverKey: %{public}@", buf, 0x20u);
  }

  if (serverCopy)
  {
    queue = self->_queue;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1CD8C;
    v17[3] = &unk_5D5F0;
    v19 = handlerCopy;
    v17[4] = self;
    v18 = serverCopy;
    v20 = completionCopy;
    dispatch_async(queue, v17);

    v16 = v19;
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    v16 = [NSError hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"nil serverKey"];
    (*(completionCopy + 2))(completionCopy, 0, v16);
    goto LABEL_7;
  }

LABEL_8:
}

- (unint64_t)discoverHealthServicesWithType:(int64_t)type timeout:(unint64_t)timeout alwaysNotify:(BOOL)notify handler:(id)handler error:(id *)error
{
  notifyCopy = notify;
  handlerCopy = handler;
  _HKInitializeLogging();
  v14 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = NSStringFromSelector(a2);
    *buf = 138544386;
    selfCopy2 = self;
    v43 = 2114;
    v44 = v16;
    v45 = 2048;
    typeCopy3 = type;
    v47 = 2048;
    timeoutCopy3 = timeout;
    v49 = 1024;
    v50 = notifyCopy;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: type: %ld, timeout: %lu, alwaysNotify: %{BOOL}d", buf, 0x30u);
  }

  if (!handlerCopy)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_ERROR))
    {
      sub_3825C();
    }

    [NSError hk_assignError:error code:303 description:@"An internal device discovery error has occurred."];
    goto LABEL_15;
  }

  v17 = self->_allServicesUUID;
  if (type != -2)
  {
    serviceUUID = [HDServiceClassForProfile(type) serviceUUID];

    v17 = serviceUUID;
    if (!serviceUUID)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_ERROR))
      {
        sub_381EC();
      }

      [NSError hk_assignError:error code:305 format:@"The data type %d is not supported for health devices.", type];
LABEL_15:
      v26 = 0;
      goto LABEL_16;
    }
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  discoveryLock = self->_discoveryLock;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_35A44;
  v30[3] = &unk_5D618;
  v30[4] = self;
  v32 = handlerCopy;
  v20 = v17;
  v36 = notifyCopy;
  v31 = v20;
  v33 = &v37;
  typeCopy2 = type;
  timeoutCopy2 = timeout;
  [(NSLock *)discoveryLock hk_withLock:v30];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1D3BC;
  block[3] = &unk_5C8C8;
  block[4] = self;
  v22 = v20;
  v29 = v22;
  dispatch_async(queue, block);
  _HKInitializeLogging();
  v23 = HKLogServices;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = NSStringFromSelector(a2);
    v25 = v38[3];
    *buf = 138544642;
    selfCopy2 = self;
    v43 = 2114;
    v44 = v24;
    v45 = 2048;
    typeCopy3 = type;
    v47 = 2048;
    timeoutCopy3 = timeout;
    v49 = 1024;
    v50 = notifyCopy;
    v51 = 2048;
    v52 = v25;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: type: %ld, timeout: %lu, alwaysNotify: %{BOOL}d -> discoveryIdentifier: %lu", buf, 0x3Au);
  }

  v26 = v38[3];
  _Block_object_dispose(&v37, 8);

LABEL_16:
  return v26;
}

- (void)stopDiscoveryWithIdentifier:(unint64_t)identifier
{
  _HKInitializeLogging();
  v6 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = NSStringFromSelector(a2);
    *buf = 138543874;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v8;
    *&buf[22] = 2048;
    identifierCopy = identifier;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: discoveryIdentifier: %lu", buf, 0x20u);
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  identifierCopy = sub_1DEDC;
  v22 = sub_1DF08;
  v23 = 0;
  discoveryLock = self->_discoveryLock;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1DF10;
  v15[3] = &unk_5D640;
  v15[4] = self;
  v15[5] = buf;
  v15[6] = &v16;
  v15[7] = identifier;
  [(NSLock *)discoveryLock hk_withLock:v15];
  _HKInitializeLogging();
  v10 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Calling discovery handler with cleanup", v14, 2u);
  }

  v11 = *(*&buf[8] + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, identifier, 0, 1, 0);
  }

  if (*(v17 + 24) == 1)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1E168;
    block[3] = &unk_5C800;
    block[4] = self;
    dispatch_async(queue, block);
  }

  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v16, 8);
}

- (void)discoveredServices:(id)services forPeripheral:(id)peripheral
{
  servicesCopy = services;
  peripheralCopy = peripheral;
  _HKInitializeLogging();
  v8 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = NSStringFromSelector(a2);
    *buf = 138544130;
    selfCopy = self;
    v45 = 2114;
    v46 = v10;
    v47 = 2114;
    v48 = peripheralCopy;
    v49 = 2114;
    v50 = servicesCopy;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: peripheral: %{public}@, services: %{public}@", buf, 0x2Au);
  }

  v11 = sub_1E58C(self, self->_allServicesUUID);
  v12 = v11;
  if (v11 && [v11 count])
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v28 = servicesCopy;
    obj = servicesCopy;
    v32 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v32)
    {
      v30 = *v38;
      do
      {
        v13 = 0;
        do
        {
          if (*v38 != v30)
          {
            objc_enumerationMutation(obj);
          }

          uUID = [*(*(&v37 + 1) + 8 * v13) UUID];
          selfCopy2 = self;
          v16 = sub_35D98(self, uUID, peripheralCopy, 0, 0);

          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v17 = v12;
          v18 = v12;
          v19 = [v18 countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v34;
            do
            {
              v22 = 0;
              do
              {
                if (*v34 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v33 + 1) + 8 * v22);
                if (v23)
                {
                  v24 = *(v23 + 32);
                  v25 = (v24 + 16);
                  v26 = *(v23 + 24);
                }

                else
                {
                  v24 = 0;
                  v26 = 0;
                  v25 = &dword_10;
                }

                (*v25)(v24, v26, v16, 0, 0);

                v22 = v22 + 1;
              }

              while (v20 != v22);
              v27 = [v18 countByEnumeratingWithState:&v33 objects:v41 count:16];
              v20 = v27;
            }

            while (v27);
          }

          v13 = v13 + 1;
          self = selfCopy2;
          v12 = v17;
        }

        while (v13 != v32);
        v32 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v32);
    }

    servicesCopy = v28;
  }
}

- (void)discoveredCharacteristics:(id)characteristics forDevice:(id)device service:(id)service
{
  characteristicsCopy = characteristics;
  deviceCopy = device;
  serviceCopy = service;
  _HKInitializeLogging();
  v12 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = NSStringFromSelector(a2);
    *buf = 138544386;
    selfCopy = self;
    v36 = 2114;
    v37 = v14;
    v38 = 2114;
    v39 = deviceCopy;
    v40 = 2114;
    v41 = serviceCopy;
    v42 = 2114;
    v43 = characteristicsCopy;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: peripheralId: %{public}@, serviceId: %{public}@, characteristics: %{public}@", buf, 0x34u);
  }

  v15 = +[NSMutableDictionary dictionary];
  connectionLock = self->_connectionLock;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1E950;
  v30[3] = &unk_5C788;
  v30[4] = self;
  v17 = deviceCopy;
  v31 = v17;
  v18 = v15;
  v32 = v18;
  [(NSLock *)connectionLock hk_withLock:v30];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v26 objects:v33 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v27;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v26 + 1) + 8 * i);
        v25 = [v19 objectForKeyedSubscript:{v24, v26}];
        (v25)[2](v25, [v24 integerValue], characteristicsCopy, serviceCopy, 0);
      }

      v21 = [v19 countByEnumeratingWithState:&v26 objects:v33 count:16];
    }

    while (v21);
  }
}

- (unint64_t)connectHealthService:(id)service sessionHandler:(id)handler dataHandler:(id)dataHandler characteristicsHandler:(id)characteristicsHandler error:(id *)error
{
  serviceCopy = service;
  characteristicsHandlerCopy = characteristicsHandler;
  dataHandlerCopy = dataHandler;
  handlerCopy = handler;
  _HKInitializeLogging();
  v17 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v17;
    v19 = NSStringFromSelector(a2);
    v25 = 138543874;
    selfCopy = self;
    v27 = 2114;
    v28 = v19;
    v29 = 2114;
    v30 = serviceCopy;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: hkService: %{public}@", &v25, 0x20u);
  }

  v20 = [_HDHealthServiceConnectionInfo alloc];
  identifier = [serviceCopy identifier];
  v22 = sub_36008(&v20->super.isa, handlerCopy, dataHandlerCopy, characteristicsHandlerCopy, 0, 0, &dword_4, identifier, 30.0);

  v23 = sub_3616C(self, serviceCopy, v22, error);
  return v23;
}

- (void)disconnectHealthService:(unint64_t)service
{
  _HKInitializeLogging();
  v6 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = NSStringFromSelector(a2);
    v9 = 138543874;
    selfCopy = self;
    v11 = 2114;
    v12 = v8;
    v13 = 2048;
    serviceCopy = service;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: sessionIdentifier: %lu", &v9, 0x20u);
  }

  sub_1F550(self, service, 0);
}

- (void)unpairHealthServiceIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  _HKInitializeLogging();
  v6 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = NSStringFromSelector(a2);
    *buf = 138543874;
    selfCopy2 = self;
    v30 = 2114;
    v31 = v8;
    v32 = 2114;
    v33 = necessaryCopy;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: healthService: %{public}@", buf, 0x20u);
  }

  if (necessaryCopy)
  {
    peripheral = [necessaryCopy peripheral];
    if (peripheral)
    {
      firstObject = peripheral;
LABEL_9:
      sharedPairingAgent = [(CBCentralManager *)self->_central sharedPairingAgent];
      v19 = [sharedPairingAgent isPeerPaired:firstObject];

      _HKInitializeLogging();
      v20 = HKLogServices;
      v21 = os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT);
      if (v19)
      {
        if (v21)
        {
          *buf = 138412290;
          selfCopy2 = firstObject;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Unpairing peer %@", buf, 0xCu);
        }

        v22 = self->_central;
        sharedPairingAgent2 = [(CBCentralManager *)v22 sharedPairingAgent];
        [sharedPairingAgent2 unpairPeer:firstObject];
      }

      else if (v21)
      {
        *buf = 138412290;
        selfCopy2 = firstObject;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Peripheral %@ isn't paired. Unpairing isn't necessary.", buf, 0xCu);
      }

      goto LABEL_16;
    }

    _HKInitializeLogging();
    v11 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      identifier = [necessaryCopy identifier];
      *buf = 138543618;
      selfCopy2 = self;
      v30 = 2114;
      v31 = identifier;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: retrievePeripheralsWithIdentifier: %{public}@", buf, 0x16u);
    }

    central = self->_central;
    identifier2 = [necessaryCopy identifier];
    v27 = identifier2;
    v16 = [NSArray arrayWithObjects:&v27 count:1];
    v17 = [(CBCentralManager *)central retrievePeripheralsWithIdentifiers:v16];
    firstObject = [v17 firstObject];

    if (firstObject)
    {
      goto LABEL_9;
    }

    _HKInitializeLogging();
    v24 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
      identifier3 = [necessaryCopy identifier];
      *buf = 138412290;
      selfCopy2 = identifier3;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "No peripheral found for identifier %@. Unpairing isn't necessary.", buf, 0xCu);
    }
  }

LABEL_16:
}

- (void)servicesInvalidatedForDevice:(id)device withError:(id)error
{
  deviceCopy = device;
  errorCopy = error;
  _HKInitializeLogging();
  v9 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = NSStringFromSelector(a2);
    v12 = 138544130;
    selfCopy = self;
    v14 = 2114;
    v15 = v11;
    v16 = 2114;
    v17 = deviceCopy;
    v18 = 2114;
    v19 = errorCopy;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: deviceIdentifier: %{public}@, error: %{public}@", &v12, 0x2Au);
  }
}

- (id)allServicesWithError:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [HDServiceEntity allServicesWithProfile:WeakRetained error:error];

  return v5;
}

- (void)enablePrivateModeForSessionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_20A48;
  v7[3] = &unk_5C8C8;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(queue, v7);
}

- (void)releasePrivateMode
{
  queue = self->_queue;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_20BEC;
  v3[3] = &unk_5C9B0;
  v3[4] = self;
  v3[5] = a2;
  dispatch_async(queue, v3);
}

- (id)_healthServiceForPeriperalID:(id)d serviceType:(int64_t)type
{
  dCopy = d;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1BE14;
  v18 = sub_1BE24;
  v19 = 0;
  connectionLock = self->_connectionLock;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_21598;
  v11[3] = &unk_5C7B0;
  v13 = &v14;
  v11[4] = self;
  v8 = dCopy;
  v12 = v8;
  [(NSLock *)connectionLock hk_withLock:v11];
  v9 = [v15[5] healthServiceForType:type];

  _Block_object_dispose(&v14, 8);

  return v9;
}

- (void)characteristicReceived:(id)received device:(id)device
{
  receivedCopy = received;
  deviceCopy = device;
  v8 = +[NSMutableDictionary dictionary];
  connectionLock = self->_connectionLock;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_217EC;
  v24[3] = &unk_5C8A0;
  v10 = deviceCopy;
  v25 = v10;
  selfCopy = self;
  v11 = v8;
  v27 = v11;
  v12 = receivedCopy;
  v28 = v12;
  [(NSLock *)connectionLock hk_withLock:v24];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  allKeys = [v11 allKeys];
  v14 = [allKeys countByEnumeratingWithState:&v20 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(allKeys);
        }

        v18 = *(*(&v20 + 1) + 8 * i);
        v19 = [v11 objectForKeyedSubscript:v18];
        (v19)[2](v19, [v18 integerValue], v12, v10, 0);
      }

      v15 = [allKeys countByEnumeratingWithState:&v20 objects:v29 count:16];
    }

    while (v15);
  }
}

- (void)getSupportedPropertyNamesWithHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    v5 = HDHealthPeripheralAllPropertyNames();
    (*(handler + 2))(handlerCopy, v5, 0);
  }
}

- (void)getProperty:(id)property forSession:(unint64_t)session withHandler:(id)handler
{
  propertyCopy = property;
  handlerCopy = handler;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1BE14;
  v18 = sub_1BE24;
  v19 = 0;
  connectionLock = self->_connectionLock;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_21DA4;
  v13[3] = &unk_5C7D8;
  v13[5] = &v14;
  v13[6] = session;
  v13[4] = self;
  [(NSLock *)connectionLock hk_withLock:v13];
  v11 = v15[5];
  if (v11)
  {
    [v11 getProperty:propertyCopy withHandler:handlerCopy];
  }

  else
  {
    v12 = [NSError hk_error:304 description:@"Session not found"];
    handlerCopy[2](handlerCopy, 0, v12);
  }

  _Block_object_dispose(&v14, 8);
}

- (void)performOperation:(id)operation onSession:(unint64_t)session withParameters:(id)parameters completion:(id)completion
{
  operationCopy = operation;
  parametersCopy = parameters;
  completionCopy = completion;
  _HKInitializeLogging();
  v14 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = NSStringFromSelector(a2);
    *buf = 138544386;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v16;
    *&buf[22] = 2114;
    v25 = operationCopy;
    *v26 = 2048;
    *&v26[2] = session;
    *&v26[10] = 2114;
    *&v26[12] = parametersCopy;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: op: %{public}@, sessionId: %lu, params: %{public}@", buf, 0x34u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v25 = sub_1BE14;
  *v26 = sub_1BE24;
  *&v26[8] = 0;
  connectionLock = self->_connectionLock;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_22128;
  v23[3] = &unk_5C7D8;
  v23[5] = buf;
  v23[6] = session;
  v23[4] = self;
  [(NSLock *)connectionLock hk_withLock:v23];
  v18 = *(*&buf[8] + 40);
  if (v18)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_221C4;
    v21[3] = &unk_5D768;
    v22 = completionCopy;
    [v18 performOperation:operationCopy withParameters:parametersCopy completion:v21];
    v19 = v22;
  }

  else
  {
    v20 = [NSNumber numberWithUnsignedInteger:session];
    v19 = [NSError hk_error:304 format:@"Cannot find peripheral for session %@", v20];

    (*(completionCopy + 2))(completionCopy, operationCopy, 0, v19);
  }

  _Block_object_dispose(buf, 8);
}

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  _HKInitializeLogging();
  v6 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = NSStringFromSelector(a2);
    *buf = 138543874;
    selfCopy = self;
    v21 = 2114;
    v22 = v8;
    v23 = 2114;
    v24 = stateCopy;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: %{public}@", buf, 0x20u);
  }

  v18 = 0;
  v9 = sub_1CE98(HDHealthServiceManager, stateCopy, &v18);
  v10 = v18;
  _HKInitializeLogging();
  v11 = HKLogServices;
  v12 = os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT);
  if (v9 == 2)
  {
    sub_38AEC(v12, v11, self);
  }

  else
  {
    if (v12)
    {
      *buf = 138543362;
      selfCopy = v10;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "BTLE became unavailable: %{public}@", buf, 0xCu);
    }

    sub_36AE8(self, v10);
  }

  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_37AA8;
  v15[3] = &unk_5CBA8;
  v16 = v10;
  v17 = v9;
  v15[4] = self;
  v14 = v10;
  dispatch_async(queue, v15);
}

- (void)centralManager:(id)manager willRestoreState:(id)state
{
  managerCopy = manager;
  stateCopy = state;
  _HKInitializeLogging();
  v9 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = NSStringFromSelector(a2);
    v12 = 138544130;
    selfCopy = self;
    v14 = 2114;
    v15 = v11;
    v16 = 2114;
    v17 = managerCopy;
    v18 = 2114;
    v19 = stateCopy;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%{public}@: %{public}@: %{public}@: state: %{public}@", &v12, 0x2Au);
  }
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  _HKInitializeLogging();
  v9 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = NSStringFromSelector(a2);
    *buf = 138544130;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v11;
    *&buf[22] = 2114;
    v21 = managerCopy;
    v22 = 2114;
    v23 = peripheralCopy;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: %{public}@: peripheral: %{public}@", buf, 0x2Au);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v21) = 0;
  connectionLock = self->_connectionLock;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_22AA0;
  v16[3] = &unk_5D7B8;
  v16[4] = self;
  v13 = peripheralCopy;
  v17 = v13;
  v14 = managerCopy;
  v18 = v14;
  v19 = buf;
  [(NSLock *)connectionLock hk_withLock:v16];
  if (*(*&buf[8] + 24) == 1)
  {
    v15 = [NSError hk_error:100 format:@"Peripheral requires MFA, but is already paired. peripheral=%@", v13];
    [(HDHealthServiceManager *)self centralManager:v14 didFailToConnectPeripheral:v13 error:v15];
  }

  _Block_object_dispose(buf, 8);
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  errorCopy = error;
  _HKInitializeLogging();
  v12 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = NSStringFromSelector(a2);
    *buf = 138544386;
    selfCopy = self;
    v32 = 2114;
    v33 = v14;
    v34 = 2114;
    v35 = managerCopy;
    v36 = 2114;
    v37 = peripheralCopy;
    v38 = 2114;
    v39 = errorCopy;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: %{public}@: peripheral: %{public}@, error: %{public}@", buf, 0x34u);
  }

  identifier = [peripheralCopy identifier];
  v16 = sub_201B0(self, identifier);

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      v21 = 0;
      do
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v25 + 1) + 8 * v21);
        if (v22)
        {
          v23 = *(v22 + 16);
        }

        else
        {
          v23 = 0;
        }

        sub_1F550(self, v23, errorCopy);
        v21 = v21 + 1;
      }

      while (v19 != v21);
      v24 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
      v19 = v24;
    }

    while (v24);
  }
}

- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  errorCopy = error;
  _HKInitializeLogging();
  v12 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = NSStringFromSelector(a2);
    *buf = 138544386;
    selfCopy = self;
    v32 = 2114;
    v33 = v14;
    v34 = 2114;
    v35 = managerCopy;
    v36 = 2114;
    v37 = peripheralCopy;
    v38 = 2114;
    v39 = errorCopy;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: (#w0) %{public}@: %{public}@: peripheral: %{public}@, error: %{public}@", buf, 0x34u);
  }

  identifier = [peripheralCopy identifier];
  v16 = sub_201B0(self, identifier);

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      v21 = 0;
      do
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v25 + 1) + 8 * v21);
        if (v22)
        {
          v23 = *(v22 + 16);
        }

        else
        {
          v23 = 0;
        }

        sub_1F550(self, v23, errorCopy);
        v21 = v21 + 1;
      }

      while (v19 != v21);
      v24 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
      v19 = v24;
    }

    while (v24);
  }
}

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  dataCopy = data;
  iCopy = i;
  v14 = [dataCopy objectForKeyedSubscript:CBAdvertisementDataServiceUUIDsKey];
  v31 = dataCopy;
  v15 = [dataCopy objectForKeyedSubscript:CBAdvertisementDataServiceDataKey];
  _HKInitializeLogging();
  v16 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    v18 = NSStringFromSelector(a2);
    v19 = [v14 componentsJoinedByString:{@", "}];
    *buf = 138544642;
    selfCopy = self;
    v39 = 2114;
    v40 = v18;
    v41 = 2114;
    v42 = managerCopy;
    v43 = 2114;
    v44 = peripheralCopy;
    v45 = 2114;
    v46 = iCopy;
    v47 = 2114;
    v48 = v19;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: %{public}@: peripheral: %{public}@ (RSSI: %{public}@) with services %{public}@", buf, 0x3Eu);
  }

  v29 = iCopy;
  v20 = sub_1E58C(self, self->_allServicesUUID);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v21 = v14;
  v22 = [v21 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v33;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v32 + 1) + 8 * i);
        v27 = [v15 objectForKeyedSubscript:v26];
        v28 = sub_37AEC(self, peripheralCopy, v26, v27, v31);

        sub_235D4(self, v20, peripheralCopy, v28, 1);
      }

      v23 = [v21 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v23);
  }
}

- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing
{
  agentCopy = agent;
  pairingCopy = pairing;
  HKSessionTrackerAriadneTrigger();
  _HKInitializeLogging();
  v9 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = NSStringFromSelector(a2);
    *buf = 138544130;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v11;
    *&buf[22] = 2114;
    v22 = agentCopy;
    v23 = 2114;
    v24 = pairingCopy;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: agent: %{public}@, peer: %{public}@", buf, 0x2Au);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v22) = 0;
  identifier = [pairingCopy identifier];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_38120;
  v18[3] = &unk_5D840;
  v18[4] = buf;
  sub_37514(self, identifier, v18);

  if (*(*&buf[8] + 24))
  {
    _HKInitializeLogging();
    v13 = HKLogServices;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      [pairingCopy identifier];
      objc_claimAutoreleasedReturnValue();
      sub_38C0C();
    }

    if (self)
    {
      central = self->_central;
    }

    else
    {
      central = 0;
    }

    v15 = central;
    sharedPairingAgent = [v15 sharedPairingAgent];
    [sharedPairingAgent setDelegate:0];
  }

  else
  {
    _HKInitializeLogging();
    v15 = HKLogServices;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [pairingCopy identifier];
      *v19 = 138412290;
      v20 = identifier2;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Ignoring peerDidCompletePairing for %@", v19, 0xCu);
    }
  }

  _Block_object_dispose(buf, 8);
}

- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error
{
  agentCopy = agent;
  pairingCopy = pairing;
  errorCopy = error;
  HKSessionTrackerAriadneTrigger();
  _HKInitializeLogging();
  v12 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = NSStringFromSelector(a2);
    *buf = 138544386;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v14;
    *&buf[22] = 2114;
    v42 = agentCopy;
    v43 = 2114;
    v44 = pairingCopy;
    v45 = 2114;
    v46 = errorCopy;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: agent: %{public}@, peer: %{public}@, error: %{public}@", buf, 0x34u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v42) = 0;
  identifier = [pairingCopy identifier];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_38140;
  v35[3] = &unk_5D840;
  v35[4] = buf;
  sub_37514(self, identifier, v35);

  if (*(*&buf[8] + 24))
  {
    _HKInitializeLogging();
    v16 = HKLogServices;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [pairingCopy identifier];
      sub_38C50(identifier2, errorCopy, v37, v16);
    }

    if (self)
    {
      central = self->_central;
    }

    else
    {
      central = 0;
    }

    v19 = central;
    sharedPairingAgent = [(CBCentralManager *)v19 sharedPairingAgent];
    [sharedPairingAgent setDelegate:0];

    identifier3 = [pairingCopy identifier];
    v22 = sub_201B0(self, identifier3);

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v23 = v22;
    v24 = [v23 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v24)
    {
      v25 = *v32;
      do
      {
        v26 = 0;
        do
        {
          if (*v32 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = *(*(&v31 + 1) + 8 * v26);
          if (v27)
          {
            v28 = *(v27 + 24);
            v27 = *(v27 + 16);
          }

          else
          {
            v28 = 0;
          }

          v28[2](v28, v27, 8, 0, errorCopy);
          [(HDHealthServiceManager *)self disconnectHealthService:v27, v31];

          v26 = v26 + 1;
        }

        while (v24 != v26);
        v29 = [v23 countByEnumeratingWithState:&v31 objects:v36 count:16];
        v24 = v29;
      }

      while (v29);
    }
  }

  else
  {
    _HKInitializeLogging();
    v23 = HKLogServices;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      identifier4 = [pairingCopy identifier];
      *v37 = 138412546;
      v38 = identifier4;
      v39 = 2114;
      v40 = errorCopy;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "Ignoring peerDidFailToCompletePairing for %@ %{public}@", v37, 0x16u);
    }
  }

  _Block_object_dispose(buf, 8);
}

- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair
{
  agentCopy = agent;
  unpairCopy = unpair;
  _HKInitializeLogging();
  v9 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = NSStringFromSelector(a2);
    *buf = 138544130;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v11;
    *&buf[22] = 2114;
    v27 = agentCopy;
    v28 = 2114;
    v29 = unpairCopy;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: agent: %{public}@, peer: %{public}@", buf, 0x2Au);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v27) = 0;
  identifier = [unpairCopy identifier];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_3815C;
  v21[3] = &unk_5D840;
  v21[4] = buf;
  sub_37514(self, identifier, v21);

  if ((*(*&buf[8] + 24) & 1) == 0)
  {
    _HKInitializeLogging();
    v19 = HKLogServices;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [unpairCopy identifier];
      *v24 = 138412290;
      v25 = identifier2;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Ignoring peerDidUnpairCallback for %@", v24, 0xCu);
    }

    goto LABEL_16;
  }

  _HKInitializeLogging();
  v13 = HKLogServices;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    [unpairCopy identifier];
    objc_claimAutoreleasedReturnValue();
    sub_38CB8();
  }

  if (self)
  {
    central = self->_central;
  }

  else
  {
    central = 0;
  }

  v15 = central;
  sharedPairingAgent = [(CBCentralManager *)v15 sharedPairingAgent];
  [sharedPairingAgent setDelegate:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _HKInitializeLogging();
    v17 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 138412290;
      v23 = unpairCopy;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Canceling peripheral connection for peripheral %@", v22, 0xCu);
    }

    if (self)
    {
      v18 = self->_central;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
    [v19 cancelPeripheralConnection:unpairCopy];
LABEL_16:
  }

  _Block_object_dispose(buf, 8);
}

- (void)pairingAgent:(id)agent peerDidRequestPairing:(id)pairing type:(int64_t)type passkey:(id)passkey
{
  agentCopy = agent;
  pairingCopy = pairing;
  _HKInitializeLogging();
  v12 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = NSStringFromSelector(a2);
    *buf = 138544130;
    selfCopy = self;
    v40 = 2114;
    typeCopy = v14;
    v42 = 2114;
    *v43 = agentCopy;
    *&v43[8] = 2114;
    *&v43[10] = pairingCopy;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: agent: %{public}@, peer: %{public}@", buf, 0x2Au);
  }

  identifier = [pairingCopy identifier];
  v16 = sub_201B0(self, identifier);

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v32;
    while (2)
    {
      v21 = 0;
      do
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v31 + 1) + 8 * v21);
        if (v22 && (*(v22 + 56) & 1) != 0)
        {
          v26 = *(v22 + 72);

          if (type != 5)
          {
            _HKInitializeLogging();
            if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_ERROR))
            {
              sub_38CFC();
            }
          }

          v35 = CBPairingAgentPairingDataOOBTKKey;
          v36 = v26;
          v27 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1, v31];
          _HKInitializeLogging();
          v28 = HKLogServices;
          if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
          {
            v29 = v28;
            identifier2 = [pairingCopy identifier];
            *buf = 138544130;
            selfCopy = identifier2;
            v40 = 2048;
            typeCopy = type;
            v42 = 1024;
            *v43 = type == 5;
            *&v43[4] = 2114;
            *&v43[6] = v27;
            _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "Responding to pairing for peer: %{public}@, with type: %ld, accept: %{BOOL}d, data: %{public}@", buf, 0x26u);
          }

          [agentCopy respondToPairingRequest:pairingCopy type:type accept:type == 5 data:v27];

          goto LABEL_21;
        }

        v21 = v21 + 1;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v31 objects:v37 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  _HKInitializeLogging();
  v23 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
  {
    v24 = v23;
    identifier3 = [pairingCopy identifier];
    *buf = 138412290;
    selfCopy = identifier3;
    _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "Allowing pairing: %@", buf, 0xCu);
  }

  [agentCopy respondToPairingRequest:pairingCopy type:type accept:1 data:{0, v31}];
LABEL_21:
}

- (id)retrieveOOBData:(id *)data
{
  if (self)
  {
    central = self->_central;
  }

  else
  {
    central = 0;
  }

  if (sub_1CE98(HDHealthServiceManager, central, data) == 2)
  {
    if (self)
    {
      v6 = self->_central;
    }

    else
    {
      v6 = 0;
    }

    advertisingAddress = [(CBCentralManager *)v6 advertisingAddress];
    if (self)
    {
      v8 = self->_central;
    }

    else
    {
      v8 = 0;
    }

    sharedPairingAgent = [(CBCentralManager *)v8 sharedPairingAgent];
    [sharedPairingAgent setDelegate:self];
    v10 = [sharedPairingAgent retrieveOOBDataForPeer:0];
    v11 = [[HDHealthServiceOOBInfo alloc] initWithOOBData:v10 btAddress:advertisingAddress];
    if (!v11)
    {
      v12 = [NSError hk_error:202 description:@"OOB Data could not be read"];
      if (v12)
      {
        if (data)
        {
          v13 = v12;
          *data = v12;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)resetOOBState
{
  if (self)
  {
    self = self->_central;
  }

  sharedPairingAgent = [(HDHealthServiceManager *)self sharedPairingAgent];
  [sharedPairingAgent setDelegate:0];
}

- (unint64_t)connectHealthService:(id)service sessionHandler:(id)handler dataHandler:(id)dataHandler error:(id *)error
{
  serviceCopy = service;
  dataHandlerCopy = dataHandler;
  handlerCopy = handler;
  _HKInitializeLogging();
  v14 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = NSStringFromSelector(a2);
    sub_24A3C();
    v24 = serviceCopy;
    sub_24B2C(&dword_0, v15, v17, "%{public}@: %{public}@: hkService: %{public}@", v23);
  }

  v18 = [_HDHealthServiceConnectionInfo alloc];
  identifier = [serviceCopy identifier];
  v20 = sub_36008(&v18->super.isa, handlerCopy, dataHandlerCopy, &stru_5D7F8, 0, 0, &dword_4, identifier, 30.0);

  v21 = sub_3616C(self, serviceCopy, v20, error);
  return v21;
}

- (unint64_t)connectHealthService:(id)service connectionOptions:(unint64_t)options sessionHandler:(id)handler dataHandler:(id)dataHandler mfaSuccessHandler:(id)successHandler autoPairData:(id)data error:(id *)error
{
  serviceCopy = service;
  dataCopy = data;
  successHandlerCopy = successHandler;
  dataHandlerCopy = dataHandler;
  handlerCopy = handler;
  _HKInitializeLogging();
  v21 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
    v23 = NSStringFromSelector(a2);
    sub_24A3C();
    v31 = serviceCopy;
    v32 = 2048;
    optionsCopy = options;
    sub_24C28(&dword_0, v22, v24, "%{public}@: %{public}@: hkService: %{public}@, connectionOptions: %lu", v30);
  }

  v25 = [_HDHealthServiceConnectionInfo alloc];
  identifier = [serviceCopy identifier];
  v27 = sub_36008(&v25->super.isa, handlerCopy, dataHandlerCopy, &stru_5D818, successHandlerCopy, dataCopy, options, identifier, 30.0);

  v28 = sub_3616C(self, serviceCopy, v27, error);
  return v28;
}

@end