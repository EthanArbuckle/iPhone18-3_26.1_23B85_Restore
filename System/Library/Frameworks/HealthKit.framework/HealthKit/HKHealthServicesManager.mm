@interface HKHealthServicesManager
+ (id)taskIdentifier;
- (HKHealthServicesManager)initWithHealthStore:(id)a3;
- (HKHealthServicesManager)initWithWeakHealthStore:(id)a3;
- (id)activeHealthServiceDiscoveries;
- (id)activeHealthServiceSessions;
- (id)startAllHealthServicesDiscoveryWithHandler:(id)a3;
- (void)_addEndedDiscovery:(id)a3;
- (void)_addEndedSession:(id)a3;
- (void)_fetchHealthKitDataWriteStatusWithIdentifier:(id)a3 completion:(id)a4;
- (void)_fetchSupportedServiceIDsWithCompletion:(id)a3;
- (void)_getAudioAccessoryWriteStatusForIdentifier:(id)a3 completion:(id)a4;
- (void)_getAudioHRMDevicesWithCompletion:(id)a3;
- (void)_getCBPeripheralforIdentifer:(id)a3 withCompletion:(id)a4;
- (void)_getHealthPeripheralOrServicesStatus:(id)a3 completion:(id)a4;
- (void)_getHealthPeripheralsStatus:(id)a3 withCompletion:(id)a4;
- (void)_setHealthKitDataWriteEnabled:(BOOL)a3 identifier:(id)a4 completion:(id)a5;
- (void)_setHealthPeripheralsStatus:(id)a3 status:(BOOL)a4 withCompletion:(id)a5;
- (void)_startHealthServiceExtendedDiscovery:(id)a3 withHandler:(id)a4;
- (void)addHealthServicePairing:(id)a3 withCompletion:(id)a4;
- (void)clientRemote_deliverBluetoothStatus:(int64_t)a3 withError:(id)a4;
- (void)clientRemote_deliverDiscoveryHealthService:(id)a3 toClient:(unint64_t)a4 finished:(BOOL)a5 withError:(id)a6;
- (void)clientRemote_deliverSessionCharacteristics:(id)a3 forService:(id)a4 toClient:(unint64_t)a5 withError:(id)a6;
- (void)clientRemote_deliverSessionHealthServiceStatus:(int64_t)a3 toClient:(unint64_t)a4 finished:(BOOL)a5 withError:(id)a6;
- (void)connectionInterrupted;
- (void)endBluetoothStatusUpdates;
- (void)endHealthServiceDiscovery:(id)a3;
- (void)endHealthServiceSession:(id)a3;
- (void)getEnabledStatusForPeripheral:(id)a3 withCompletion:(id)a4;
- (void)getHealthServiceProperty:(id)a3 forSession:(id)a4 withHandler:(id)a5;
- (void)getHealthServicePropertyNamesWithHandler:(id)a3;
- (void)healthAudioHRMDevicesWithCompletion:(id)a3;
- (void)healthPeripheralsWithCustomProperties:(id)a3 withCompletion:(id)a4;
- (void)healthPeripheralsWithFilter:(unint64_t)a3 handler:(id)a4;
- (void)healthServicePairingsWithHandler:(id)a3;
- (void)performHealthServiceOperation:(id)a3 onSession:(id)a4 withParameters:(id)a5 completion:(id)a6;
- (void)registerPeripheralIdentifier:(id)a3 name:(id)a4 services:(id)a5 withCompletion:(id)a6;
- (void)removeHealthServicePairing:(id)a3 withCompletion:(id)a4;
- (void)startBluetoothStatusUpdates:(id)a3;
- (void)startHealthServiceDiscovery:(id)a3 withHandler:(id)a4;
- (void)startHealthServiceSession:(id)a3 withHandler:(id)a4;
- (void)unregisterPeripheralIdentifier:(id)a3 withCompletion:(id)a4;
@end

@implementation HKHealthServicesManager

- (HKHealthServicesManager)initWithHealthStore:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = HKHealthServicesManager;
  v5 = [(HKHealthServicesManager *)&v22 init];
  if (v5)
  {
    v6 = [HKTaskServerProxyProvider alloc];
    v7 = [objc_opt_class() taskIdentifier];
    v8 = [MEMORY[0x1E696AFB0] UUID];
    v9 = [(HKTaskServerProxyProvider *)v6 initWithHealthStore:v4 taskIdentifier:v7 exportedObject:v5 taskUUID:v8];
    proxyProvider = v5->_proxyProvider;
    v5->_proxyProvider = v9;

    [(HKProxyProvider *)v5->_proxyProvider setShouldRetryOnInterruption:0];
    v11 = objc_alloc_init(_HKCBCentralManagerLoader);
    bluetoothManagerLoader = v5->_bluetoothManagerLoader;
    v5->_bluetoothManagerLoader = v11;

    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v13 = getAADeviceManagerClass_softClass;
    v31 = getAADeviceManagerClass_softClass;
    if (!getAADeviceManagerClass_softClass)
    {
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __getAADeviceManagerClass_block_invoke;
      v26 = &unk_1E7378388;
      v27 = &v28;
      __getAADeviceManagerClass_block_invoke(&v23);
      v13 = v29[3];
    }

    v14 = v13;
    _Block_object_dispose(&v28, 8);
    v15 = objc_alloc_init(v13);
    audioDeviceManager = v5->_audioDeviceManager;
    v5->_audioDeviceManager = v15;

    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v17 = getAASystemStateMonitorClass_softClass;
    v31 = getAASystemStateMonitorClass_softClass;
    if (!getAASystemStateMonitorClass_softClass)
    {
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __getAASystemStateMonitorClass_block_invoke;
      v26 = &unk_1E7378388;
      v27 = &v28;
      __getAASystemStateMonitorClass_block_invoke(&v23);
      v17 = v29[3];
    }

    v18 = v17;
    _Block_object_dispose(&v28, 8);
    v19 = objc_alloc_init(v17);
    audioStateMonitor = v5->_audioStateMonitor;
    v5->_audioStateMonitor = v19;
  }

  return v5;
}

- (HKHealthServicesManager)initWithWeakHealthStore:(id)a3
{
  v3 = [(HKHealthServicesManager *)self initWithHealthStore:a3];
  v4 = v3;
  if (v3)
  {
    [(HKProxyProvider *)v3->_proxyProvider referenceSourceWeakly];
  }

  return v4;
}

+ (id)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)startBluetoothStatusUpdates:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [HKHealthServicesManager startBluetoothStatusUpdates:];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__HKHealthServicesManager_startBluetoothStatusUpdates___block_invoke;
  aBlock[3] = &unk_1E73789F0;
  aBlock[4] = self;
  v13 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__HKHealthServicesManager_startBluetoothStatusUpdates___block_invoke_3;
  v10[3] = &unk_1E7385658;
  v10[4] = self;
  v11 = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__HKHealthServicesManager_startBluetoothStatusUpdates___block_invoke_4;
  v8[3] = &unk_1E7376960;
  v9 = v11;
  v7 = v11;
  [(HKHealthServicesManager *)self _fetchHealthServicesServerProxyWithHandler:v10 errorHandler:v8];
}

void __55__HKHealthServicesManager_startBluetoothStatusUpdates___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(*(a1 + 32) + 8) clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__HKHealthServicesManager_startBluetoothStatusUpdates___block_invoke_2;
  block[3] = &unk_1E73789A0;
  v10 = *(a1 + 40);
  v11 = a2;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

void __55__HKHealthServicesManager_startBluetoothStatusUpdates___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v7 = a2;
  v4 = [v3 copy];
  v5 = *(a1 + 32);
  v6 = *(v5 + 88);
  *(v5 + 88) = v4;

  [v7 remote_beginBluetoothStatusUpdates:*(a1 + 40)];
}

- (void)endBluetoothStatusUpdates
{
  v3 = [(HKProxyProvider *)self->_proxyProvider clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__HKHealthServicesManager_endBluetoothStatusUpdates__block_invoke;
  block[3] = &unk_1E7376780;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __52__HKHealthServicesManager_endBluetoothStatusUpdates__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 88);
  *(v2 + 88) = 0;

  v4 = *(a1 + 32);

  return [v4 _fetchHealthServicesServerProxyWithHandler:&__block_literal_global_143 errorHandler:&__block_literal_global_22];
}

void __52__HKHealthServicesManager_endBluetoothStatusUpdates__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  _HKInitializeLogging();
  v3 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_ERROR))
  {
    __52__HKHealthServicesManager_endBluetoothStatusUpdates__block_invoke_3_cold_1(v2, v3);
  }
}

- (void)_fetchSupportedServiceIDsWithCompletion:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [HKHealthServicesManager _fetchSupportedServiceIDsWithCompletion:];
  }

  v5 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:v4];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__HKHealthServicesManager__fetchSupportedServiceIDsWithCompletion___block_invoke;
  v9[3] = &unk_1E73856A0;
  v10 = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__HKHealthServicesManager__fetchSupportedServiceIDsWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7376960;
  v8 = v10;
  v6 = v10;
  [(HKHealthServicesManager *)self _fetchHealthServicesServerProxyWithHandler:v9 errorHandler:v7];
}

- (void)startHealthServiceDiscovery:(id)a3 withHandler:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v7)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HKHealthServicesManager startHealthServiceDiscovery:withHandler:];
    if (v6)
    {
      goto LABEL_3;
    }
  }

  [HKHealthServicesManager startHealthServiceDiscovery:withHandler:];
LABEL_3:
  [(HKHealthServicesManager *)self _startHealthServiceExtendedDiscovery:v7 withHandler:v6];
}

- (id)startAllHealthServicesDiscoveryWithHandler:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [HKHealthServicesManager startAllHealthServicesDiscoveryWithHandler:];
  }

  v5 = [[HKHealthServiceDiscovery alloc] initForAllTypes];
  [(HKHealthServicesManager *)self _startHealthServiceExtendedDiscovery:v5 withHandler:v4];

  return v5;
}

- (void)_startHealthServiceExtendedDiscovery:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__HKHealthServicesManager__startHealthServiceExtendedDiscovery_withHandler___block_invoke;
  v12[3] = &unk_1E7385718;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__HKHealthServicesManager__startHealthServiceExtendedDiscovery_withHandler___block_invoke_37;
  v10[3] = &unk_1E7376820;
  v10[4] = self;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(HKHealthServicesManager *)self _fetchHealthServicesServerProxyWithHandler:v12 errorHandler:v10];
}

void __76__HKHealthServicesManager__startHealthServiceExtendedDiscovery_withHandler___block_invoke(id *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 discoveries];

  if (!v5)
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    [a1[4] setDiscoveries:v6];
  }

  v7 = [a1[5] serviceType];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__HKHealthServicesManager__startHealthServiceExtendedDiscovery_withHandler___block_invoke_2;
  v8[3] = &unk_1E73856F0;
  v8[4] = a1[4];
  v10 = a1[6];
  v9 = a1[5];
  [v4 remote_startHealthServiceDiscovery:v7 withCompletion:v8];
}

void __76__HKHealthServicesManager__startHealthServiceExtendedDiscovery_withHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(*(a1 + 32) + 8) clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__HKHealthServicesManager__startHealthServiceExtendedDiscovery_withHandler___block_invoke_3;
  block[3] = &unk_1E73856C8;
  v7 = *(a1 + 32);
  v13 = a2;
  block[4] = v7;
  v12 = *(a1 + 48);
  v10 = v5;
  v11 = *(a1 + 40);
  v8 = v5;
  dispatch_async(v6, block);
}

void __76__HKHealthServicesManager__startHealthServiceExtendedDiscovery_withHandler___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v5 = [*(a1 + 32) discoveries];

    if (v5)
    {
      [*(a1 + 48) setDiscoveryIdentifier:*(a1 + 64)];
      [*(a1 + 48) setDiscoveryHandler:*(a1 + 56)];
      v6 = *(a1 + 48);
      v12 = [*(a1 + 32) discoveries];
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 64)];
      [v12 setObject:v6 forKeyedSubscript:v7];
    }

    else
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_ERROR))
      {
        __76__HKHealthServicesManager__startHealthServiceExtendedDiscovery_withHandler___block_invoke_3_cold_1();
      }

      v8 = *(a1 + 32);
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 64)];
      [v8 _addEndedDiscovery:v9];

      v10 = *(a1 + 56);
      if (v10)
      {
        if (*(a1 + 40))
        {
          (*(v10 + 16))(*(a1 + 56), 0, 1);
        }

        else
        {
          v11 = [MEMORY[0x1E696ABC0] hk_error:301 description:@"Discovery services ended unexpectedly."];
          (*(v10 + 16))(v10, 0, 1, v11);
        }
      }
    }
  }

  else
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      v3 = *(a1 + 40);
      v4 = *(v2 + 16);

      v4();
    }
  }
}

void __76__HKHealthServicesManager__startHealthServiceExtendedDiscovery_withHandler___block_invoke_37(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 8) clientQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__HKHealthServicesManager__startHealthServiceExtendedDiscovery_withHandler___block_invoke_2_38;
  v7[3] = &unk_1E7376AC0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __76__HKHealthServicesManager__startHealthServiceExtendedDiscovery_withHandler___block_invoke_2_38(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 1, *(a1 + 32));
  }

  return result;
}

- (void)endHealthServiceDiscovery:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__HKHealthServicesManager_endHealthServiceDiscovery___block_invoke;
  v8[3] = &unk_1E7385740;
  v8[4] = self;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__HKHealthServicesManager_endHealthServiceDiscovery___block_invoke_3;
  v6[3] = &unk_1E7380648;
  v6[4] = self;
  v7 = v9;
  v5 = v9;
  [(HKHealthServicesManager *)self _fetchHealthServicesServerProxyWithHandler:v8 errorHandler:v6];
}

void __53__HKHealthServicesManager_endHealthServiceDiscovery___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 8) clientQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__HKHealthServicesManager_endHealthServiceDiscovery___block_invoke_2;
  v6[3] = &unk_1E7378400;
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __53__HKHealthServicesManager_endHealthServiceDiscovery___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) discoveryIdentifier];
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) discoveryIdentifier];

    return [v3 remote_endHealthServiceDiscovery:v4];
  }

  return result;
}

void __53__HKHealthServicesManager_endHealthServiceDiscovery___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 8) clientQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__HKHealthServicesManager_endHealthServiceDiscovery___block_invoke_4;
  v6[3] = &unk_1E7378400;
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __53__HKHealthServicesManager_endHealthServiceDiscovery___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) discoveryHandler];
  if (v2)
  {
    v3 = v2;
    v2[2](v2, 0, 1, *(a1 + 40));
    v2 = v3;
  }
}

- (id)activeHealthServiceDiscoveries
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__58;
  v11 = __Block_byref_object_dispose__58;
  v12 = 0;
  v3 = [(HKProxyProvider *)self->_proxyProvider clientQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__HKHealthServicesManager_activeHealthServiceDiscoveries__block_invoke;
  v6[3] = &unk_1E7378528;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __57__HKHealthServicesManager_activeHealthServiceDiscoveries__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) discoveries];
  v3 = [v5 count];
  if (v3)
  {
    v1 = [*(a1 + 32) discoveries];
    v4 = [v1 allValues];
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
  if (v3)
  {
  }
}

- (void)startHealthServiceSession:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 service];

  if (!v8)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"HKHealthServiceSession service cannot be nil."];
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"HKHealthServicesSessionHandler cannot be nil."];
    goto LABEL_3;
  }

  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__HKHealthServicesManager_startHealthServiceSession_withHandler___block_invoke;
  v13[3] = &unk_1E7385718;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__HKHealthServicesManager_startHealthServiceSession_withHandler___block_invoke_5;
  v11[3] = &unk_1E7376820;
  v11[4] = self;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKHealthServicesManager *)self _fetchHealthServicesServerProxyWithHandler:v13 errorHandler:v11];
}

void __65__HKHealthServicesManager_startHealthServiceSession_withHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 8) clientQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__HKHealthServicesManager_startHealthServiceSession_withHandler___block_invoke_2;
  v7[3] = &unk_1E7376710;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v10 = *(a1 + 48);
  v6 = v3;
  dispatch_async(v4, v7);
}

void __65__HKHealthServicesManager_startHealthServiceSession_withHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) sessions];

  if (!v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    [*(a1 + 32) setSessions:v3];
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) service];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__HKHealthServicesManager_startHealthServiceSession_withHandler___block_invoke_3;
  v6[3] = &unk_1E73856F0;
  v6[4] = *(a1 + 32);
  v8 = *(a1 + 56);
  v7 = *(a1 + 48);
  [v4 remote_startHealthServiceSession:v5 withCompletion:v6];
}

void __65__HKHealthServicesManager_startHealthServiceSession_withHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(*(a1 + 32) + 8) clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__HKHealthServicesManager_startHealthServiceSession_withHandler___block_invoke_4;
  block[3] = &unk_1E73856C8;
  v7 = *(a1 + 32);
  v13 = a2;
  block[4] = v7;
  v12 = *(a1 + 48);
  v10 = v5;
  v11 = *(a1 + 40);
  v8 = v5;
  dispatch_async(v6, block);
}

void __65__HKHealthServicesManager_startHealthServiceSession_withHandler___block_invoke_4(uint64_t a1)
{
  if (!*(a1 + 64))
  {
    v2 = 4 * ([*(a1 + 40) code] == 313);
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 56) + 16);

    v4();
    return;
  }

  v5 = [*(a1 + 32) sessions];

  v6 = *(a1 + 64);
  if (v5)
  {
    [*(a1 + 48) setSessionIdentifier:v6];
    [*(a1 + 48) setSessionHandler:*(a1 + 56)];
    v7 = *(a1 + 48);
    v16 = [*(a1 + 32) sessions];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 64)];
    [v16 setObject:v7 forKeyedSubscript:v8];

    v9 = v16;
LABEL_7:

    return;
  }

  v10 = *(a1 + 32);
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
  [v10 _addEndedSession:v11];

  v12 = *(a1 + 56);
  if (!v12)
  {
    return;
  }

  if (!*(a1 + 40))
  {
    v15 = [MEMORY[0x1E696ABC0] hk_error:100 description:@"Service session ended unexpectedly."];
    (*(v12 + 16))(v12, 0, 1, v15);
    v9 = v15;
    goto LABEL_7;
  }

  v13 = *(v12 + 16);
  v14 = *(a1 + 56);

  v13(v14, 0, 1);
}

void __65__HKHealthServicesManager_startHealthServiceSession_withHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 8) clientQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__HKHealthServicesManager_startHealthServiceSession_withHandler___block_invoke_6;
  v7[3] = &unk_1E7376AC0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)endHealthServiceSession:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__HKHealthServicesManager_endHealthServiceSession___block_invoke;
  v8[3] = &unk_1E7385740;
  v8[4] = self;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__HKHealthServicesManager_endHealthServiceSession___block_invoke_3;
  v6[3] = &unk_1E7380648;
  v6[4] = self;
  v7 = v9;
  v5 = v9;
  [(HKHealthServicesManager *)self _fetchHealthServicesServerProxyWithHandler:v8 errorHandler:v6];
}

void __51__HKHealthServicesManager_endHealthServiceSession___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 8) clientQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__HKHealthServicesManager_endHealthServiceSession___block_invoke_2;
  v6[3] = &unk_1E7378400;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __51__HKHealthServicesManager_endHealthServiceSession___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) sessionIdentifier];

  return [v1 remote_endHealthServiceSession:v2];
}

void __51__HKHealthServicesManager_endHealthServiceSession___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 8) clientQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__HKHealthServicesManager_endHealthServiceSession___block_invoke_4;
  v6[3] = &unk_1E7378400;
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __51__HKHealthServicesManager_endHealthServiceSession___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionHandler];
  if (v2)
  {
    v3 = v2;
    v2[2](v2, 0, 1, *(a1 + 40));
    v2 = v3;
  }
}

- (id)activeHealthServiceSessions
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__58;
  v11 = __Block_byref_object_dispose__58;
  v12 = 0;
  v3 = [(HKProxyProvider *)self->_proxyProvider clientQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__HKHealthServicesManager_activeHealthServiceSessions__block_invoke;
  v6[3] = &unk_1E7378528;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __54__HKHealthServicesManager_activeHealthServiceSessions__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) sessions];
  v3 = [v5 count];
  if (v3)
  {
    v1 = [*(a1 + 32) sessions];
    v4 = [v1 allValues];
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
  if (v3)
  {
  }
}

- (void)healthServicePairingsWithHandler:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [HKHealthServicesManager healthServicePairingsWithHandler:];
  }

  v5 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:v4];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__HKHealthServicesManager_healthServicePairingsWithHandler___block_invoke;
  v9[3] = &unk_1E73856A0;
  v10 = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__HKHealthServicesManager_healthServicePairingsWithHandler___block_invoke_2;
  v7[3] = &unk_1E7376960;
  v8 = v10;
  v6 = v10;
  [(HKHealthServicesManager *)self _fetchHealthServicesServerProxyWithHandler:v9 errorHandler:v7];
}

- (void)healthPeripheralsWithFilter:(unint64_t)a3 handler:(id)a4
{
  v6 = a4;
  if (!v6)
  {
    [HKHealthServicesManager healthPeripheralsWithFilter:handler:];
  }

  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:v6];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__HKHealthServicesManager_healthPeripheralsWithFilter_handler___block_invoke;
  v11[3] = &unk_1E7385768;
  v13 = a3;
  v12 = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__HKHealthServicesManager_healthPeripheralsWithFilter_handler___block_invoke_2;
  v9[3] = &unk_1E7376960;
  v10 = v12;
  v8 = v12;
  [(HKHealthServicesManager *)self _fetchHealthServicesServerProxyWithHandler:v11 errorHandler:v9];
}

- (void)addHealthServicePairing:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [HKHealthServicesManager addHealthServicePairing:withCompletion:];
  }

  v8 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:v7];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__HKHealthServicesManager_addHealthServicePairing_withCompletion___block_invoke;
  v13[3] = &unk_1E7385718;
  v13[4] = self;
  v14 = v6;
  v15 = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__HKHealthServicesManager_addHealthServicePairing_withCompletion___block_invoke_3;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKHealthServicesManager *)self _fetchHealthServicesServerProxyWithHandler:v13 errorHandler:v11];
}

void __66__HKHealthServicesManager_addHealthServicePairing_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 8) clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__HKHealthServicesManager_addHealthServicePairing_withCompletion___block_invoke_2;
  block[3] = &unk_1E73766C8;
  v7 = v3;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(v4, block);
}

- (void)removeHealthServicePairing:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [HKHealthServicesManager removeHealthServicePairing:withCompletion:];
  }

  v8 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:v7];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__HKHealthServicesManager_removeHealthServicePairing_withCompletion___block_invoke;
  v13[3] = &unk_1E7385718;
  v13[4] = self;
  v14 = v6;
  v15 = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__HKHealthServicesManager_removeHealthServicePairing_withCompletion___block_invoke_3;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKHealthServicesManager *)self _fetchHealthServicesServerProxyWithHandler:v13 errorHandler:v11];
}

void __69__HKHealthServicesManager_removeHealthServicePairing_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 8) clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__HKHealthServicesManager_removeHealthServicePairing_withCompletion___block_invoke_2;
  block[3] = &unk_1E73766C8;
  v7 = v3;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(v4, block);
}

- (void)registerPeripheralIdentifier:(id)a3 name:(id)a4 services:(id)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v13)
  {
    [HKHealthServicesManager registerPeripheralIdentifier:name:services:withCompletion:];
  }

  v14 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:v13];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __85__HKHealthServicesManager_registerPeripheralIdentifier_name_services_withCompletion___block_invoke;
  v21[3] = &unk_1E7385790;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v25 = v14;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __85__HKHealthServicesManager_registerPeripheralIdentifier_name_services_withCompletion___block_invoke_2;
  v19[3] = &unk_1E7376960;
  v20 = v25;
  v15 = v25;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  [(HKHealthServicesManager *)self _fetchHealthServicesServerProxyWithHandler:v21 errorHandler:v19];
}

- (void)unregisterPeripheralIdentifier:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [HKHealthServicesManager unregisterPeripheralIdentifier:withCompletion:];
  }

  v8 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:v7];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__HKHealthServicesManager_unregisterPeripheralIdentifier_withCompletion___block_invoke;
  v13[3] = &unk_1E7385658;
  v14 = v6;
  v15 = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__HKHealthServicesManager_unregisterPeripheralIdentifier_withCompletion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKHealthServicesManager *)self _fetchHealthServicesServerProxyWithHandler:v13 errorHandler:v11];
}

- (void)getEnabledStatusForPeripheral:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "completion"}];
  }

  v8 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:v7];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__HKHealthServicesManager_getEnabledStatusForPeripheral_withCompletion___block_invoke;
  v11[3] = &unk_1E737FAB0;
  v12 = v6;
  v13 = v8;
  v11[4] = self;
  v9 = v6;
  v10 = v8;
  [(HKHealthServicesManager *)self _getHealthPeripheralOrServicesStatus:v9 completion:v11];
}

void __72__HKHealthServicesManager_getEnabledStatusForPeripheral_withCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) UUIDString];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __72__HKHealthServicesManager_getEnabledStatusForPeripheral_withCompletion___block_invoke_2;
    v8[3] = &unk_1E73857B8;
    v10 = *(a1 + 48);
    v9 = *(a1 + 40);
    [v4 _getAudioAccessoryWriteStatusForIdentifier:v5 completion:v8];
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = *(*(a1 + 48) + 16);

    v7();
  }
}

void __72__HKHealthServicesManager_getEnabledStatusForPeripheral_withCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40), [a2 BOOLValue], v5);
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = [v7 UUIDString];
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_19197B000, v8, OS_LOG_TYPE_DEFAULT, "Get audio accessory write status not found or failed for identifier %@ error: %@", &v11, 0x16u);
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v5);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_getHealthPeripheralOrServicesStatus:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__HKHealthServicesManager__getHealthPeripheralOrServicesStatus_completion___block_invoke;
  v10[3] = &unk_1E737FAB0;
  v11 = v6;
  v12 = v7;
  v10[4] = self;
  v8 = v6;
  v9 = v7;
  [(HKHealthServicesManager *)self _getHealthPeripheralsStatus:v8 withCompletion:v10];
}

void __75__HKHealthServicesManager__getHealthPeripheralOrServicesStatus_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __75__HKHealthServicesManager__getHealthPeripheralOrServicesStatus_completion___block_invoke_2;
    v9[3] = &unk_1E7385658;
    v4 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __75__HKHealthServicesManager__getHealthPeripheralOrServicesStatus_completion___block_invoke_3;
    v7[3] = &unk_1E7376960;
    v8 = *(a1 + 48);
    [v4 _fetchHealthServicesServerProxyWithHandler:v9 errorHandler:v7];
  }

  else
  {
    v5 = *(a1 + 48);
    v6 = *(*(a1 + 48) + 16);

    v6();
  }
}

void __73__HKHealthServicesManager_setEnabledStatus_forPeripheral_withCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v5 = *(a1 + 56);
    v6 = [*(a1 + 32) UUIDString];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __73__HKHealthServicesManager_setEnabledStatus_forPeripheral_withCompletion___block_invoke_2;
    v9[3] = &unk_1E73857B8;
    v11 = *(a1 + 40);
    v10 = *(a1 + 32);
    [WeakRetained _setAudioAccessoryWriteStatusEnabled:v5 identifier:v6 completion:v9];
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = *(*(a1 + 40) + 16);

    v8();
  }
}

void __73__HKHealthServicesManager_setEnabledStatus_forPeripheral_withCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40), [a2 BOOLValue], v5);
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = [v7 UUIDString];
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_19197B000, v8, OS_LOG_TYPE_DEFAULT, "Set audio accessory write status failed for identifier %@ error: %@", &v11, 0x16u);
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v5);
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __83__HKHealthServicesManager__setHealthPeripheralOrServicesStatus_enabled_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    a2 = 1;
  }

  return (*(v2 + 16))(v2, a2);
}

- (void)getHealthServicePropertyNamesWithHandler:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [HKHealthServicesManager getHealthServicePropertyNamesWithHandler:];
  }

  v5 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:v4];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__HKHealthServicesManager_getHealthServicePropertyNamesWithHandler___block_invoke;
  v9[3] = &unk_1E73856A0;
  v10 = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__HKHealthServicesManager_getHealthServicePropertyNamesWithHandler___block_invoke_2;
  v7[3] = &unk_1E7376960;
  v8 = v10;
  v6 = v10;
  [(HKHealthServicesManager *)self _fetchHealthServicesServerProxyWithHandler:v9 errorHandler:v7];
}

- (void)getHealthServiceProperty:(id)a3 forSession:(id)a4 withHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_6:
    [HKHealthServicesManager getHealthServiceProperty:forSession:withHandler:];
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_7:
    [HKHealthServicesManager getHealthServiceProperty:forSession:withHandler:];
    goto LABEL_4;
  }

  [HKHealthServicesManager getHealthServiceProperty:forSession:withHandler:];
  if (!v9)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!v10)
  {
    goto LABEL_7;
  }

LABEL_4:
  v11 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:v10];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75__HKHealthServicesManager_getHealthServiceProperty_forSession_withHandler___block_invoke;
  v17[3] = &unk_1E7385718;
  v18 = v8;
  v19 = v9;
  v20 = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__HKHealthServicesManager_getHealthServiceProperty_forSession_withHandler___block_invoke_2;
  v15[3] = &unk_1E7376960;
  v16 = v20;
  v12 = v20;
  v13 = v9;
  v14 = v8;
  [(HKHealthServicesManager *)self _fetchHealthServicesServerProxyWithHandler:v17 errorHandler:v15];
}

void __75__HKHealthServicesManager_getHealthServiceProperty_forSession_withHandler___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  [v5 remote_getHealthServiceProperty:v3 forSession:objc_msgSend(v4 withHandler:{"sessionIdentifier"), a1[6]}];
}

- (void)performHealthServiceOperation:(id)a3 onSession:(id)a4 withParameters:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    [HKHealthServicesManager performHealthServiceOperation:onSession:withParameters:completion:];
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_5:
    [HKHealthServicesManager performHealthServiceOperation:onSession:withParameters:completion:];
    goto LABEL_3;
  }

  if (!v11)
  {
    goto LABEL_5;
  }

LABEL_3:
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __93__HKHealthServicesManager_performHealthServiceOperation_onSession_withParameters_completion___block_invoke;
  v21[3] = &unk_1E7385808;
  v21[4] = self;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __93__HKHealthServicesManager_performHealthServiceOperation_onSession_withParameters_completion___block_invoke_3;
  v18[3] = &unk_1E7385830;
  v19 = v22;
  v20 = v25;
  v18[4] = self;
  v14 = v22;
  v15 = v25;
  v16 = v12;
  v17 = v11;
  [(HKHealthServicesManager *)self _fetchHealthServicesServerProxyWithHandler:v21 errorHandler:v18];
}

void __93__HKHealthServicesManager_performHealthServiceOperation_onSession_withParameters_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 8) clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__HKHealthServicesManager_performHealthServiceOperation_onSession_withParameters_completion___block_invoke_2;
  block[3] = &unk_1E737B760;
  v13 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v14 = v10;
  v15 = v9;
  v11 = v3;
  dispatch_async(v4, block);
}

uint64_t __93__HKHealthServicesManager_performHealthServiceOperation_onSession_withParameters_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) sessionIdentifier];
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);

  return [v2 remote_performHealthServiceOperation:v3 onSession:v4 withParameters:v5 completion:v6];
}

void __93__HKHealthServicesManager_performHealthServiceOperation_onSession_withParameters_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 8) clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__HKHealthServicesManager_performHealthServiceOperation_onSession_withParameters_completion___block_invoke_4;
  block[3] = &unk_1E7376618;
  v9 = *(a1 + 48);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

- (void)_addEndedDiscovery:(id)a3
{
  v4 = a3;
  v5 = [(HKHealthServicesManager *)self discoveriesEnded];

  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    [(HKHealthServicesManager *)self setDiscoveriesEnded:v6];
  }

  v7 = [(HKHealthServicesManager *)self discoveriesEnded];
  [v7 addObject:v4];
}

- (void)_addEndedSession:(id)a3
{
  v4 = a3;
  v5 = [(HKHealthServicesManager *)self sessionsEnded];

  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    [(HKHealthServicesManager *)self setSessionsEnded:v6];
  }

  v7 = [(HKHealthServicesManager *)self sessionsEnded];
  [v7 addObject:v4];
}

- (void)healthPeripheralsWithCustomProperties:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [HKHealthServicesManager healthPeripheralsWithCustomProperties:withCompletion:];
  }

  bluetoothManagerLoader = self->_bluetoothManagerLoader;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__HKHealthServicesManager_healthPeripheralsWithCustomProperties_withCompletion___block_invoke;
  v11[3] = &unk_1E7385858;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(_HKCBCentralManagerLoader *)bluetoothManagerLoader getCentralManagerWithCompletion:v11];
}

void __80__HKHealthServicesManager_healthPeripheralsWithCustomProperties_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __80__HKHealthServicesManager_healthPeripheralsWithCustomProperties_withCompletion___block_invoke_2;
  v4[3] = &unk_1E737F3D0;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 retrievePeripheralsWithCustomProperties:v3 completion:v4];
}

void __80__HKHealthServicesManager_healthPeripheralsWithCustomProperties_withCompletion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * v11);
          v13 = [HKCBPeripheral alloc];
          v14 = [(HKCBPeripheral *)v13 initWithCBPeripheral:v12, v16];
          [v6 addObject:v14];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    (*(*(a1 + 32) + 16))();
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_getCBPeripheralforIdentifer:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "completion"}];
  }

  bluetoothManagerLoader = self->_bluetoothManagerLoader;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__HKHealthServicesManager__getCBPeripheralforIdentifer_withCompletion___block_invoke;
  v11[3] = &unk_1E7385858;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(_HKCBCentralManagerLoader *)bluetoothManagerLoader getCentralManagerWithCompletion:v11];
}

void __71__HKHealthServicesManager__getCBPeripheralforIdentifer_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v25[0] = *(a1 + 32);
  v3 = MEMORY[0x1E695DEC8];
  v4 = a2;
  v5 = [v3 arrayWithObjects:v25 count:1];
  v6 = [v4 retrievePeripheralsWithIdentifiers:v5];

  if ([v6 count] != 1)
  {
    v12 = [v6 count];
    _HKInitializeLogging();
    v13 = HKLogServices;
    if (v12)
    {
      if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_FAULT))
      {
        __71__HKHealthServicesManager__getCBPeripheralforIdentifer_withCompletion___block_invoke_cold_1();
      }

      goto LABEL_12;
    }

    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 32);
      v18 = v13;
      v19 = [v21 UUIDString];
      v23 = 138412290;
      v24 = v19;
      v20 = "No CBPeripheral found for identifier %@";
      goto LABEL_11;
    }

LABEL_12:
    (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v14, v15);
    goto LABEL_13;
  }

  v7 = [v6 firstObject];
  v8 = [v7 customPropertyNames];
  v9 = [v8 containsObject:@"UpdateHealth"];

  if (!v9)
  {
    _HKInitializeLogging();
    v16 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      v18 = v16;
      v19 = [v17 UUIDString];
      v23 = 138543362;
      v24 = v19;
      v20 = "CBPeripheral for identifier %{public}@ does not have UpdateHealth property";
LABEL_11:
      _os_log_impl(&dword_19197B000, v18, OS_LOG_TYPE_DEFAULT, v20, &v23, 0xCu);

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v10 = *(a1 + 40);
  v11 = [v6 firstObject];
  (*(v10 + 16))(v10, v11);

LABEL_13:
  v22 = *MEMORY[0x1E69E9840];
}

- (void)_getHealthPeripheralsStatus:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "completion"}];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__HKHealthServicesManager__getHealthPeripheralsStatus_withCompletion___block_invoke;
  v9[3] = &unk_1E7385880;
  v10 = v7;
  v8 = v7;
  [(HKHealthServicesManager *)self _getCBPeripheralforIdentifer:v6 withCompletion:v9];
}

void __70__HKHealthServicesManager__getHealthPeripheralsStatus_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 customProperty:@"UpdateHealth"];
    v4 = v3;
    if (v3 && ![v3 isEqual:&stru_1F05FF230])
    {
      [v4 BOOLValue];
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_FAULT))
      {
        __70__HKHealthServicesManager__getHealthPeripheralsStatus_withCompletion___block_invoke_cold_1();
      }

      v5 = *(a1 + 32);
      v6 = [MEMORY[0x1E696ABC0] hk_error:304 format:@"Migration to CBPeripheral is not complete"];
      (*(v5 + 16))(v5, 0, v6);
    }
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E696ABC0] hk_error:304 format:@"No Device found"];
    (*(v7 + 16))(v7, 0, v8);
  }
}

- (void)_setHealthPeripheralsStatus:(id)a3 status:(BOOL)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (!v9)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "completion"}];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__HKHealthServicesManager__setHealthPeripheralsStatus_status_withCompletion___block_invoke;
  v11[3] = &unk_1E73858A8;
  v12 = v9;
  v13 = a4;
  v10 = v9;
  [(HKHealthServicesManager *)self _getCBPeripheralforIdentifer:v8 withCompletion:v11];
}

void __77__HKHealthServicesManager__setHealthPeripheralsStatus_status_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    if (*(a1 + 40))
    {
      v3 = @"1";
    }

    else
    {
      v3 = @"0";
    }

    [a2 setCustomProperty:@"UpdateHealth" value:v3];
    notify_post("HKHealthPeripheralStatusDidChangeNotification");
    v4 = *(*(a1 + 32) + 16);

    v4();
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_FAULT))
    {
      __77__HKHealthServicesManager__setHealthPeripheralsStatus_status_withCompletion___block_invoke_cold_1();
    }

    v5 = *(a1 + 32);
    v6 = [MEMORY[0x1E696ABC0] hk_error:304 format:@"No Device found"];
    (*(v5 + 16))(v5, 0, v6);
  }
}

- (void)_getAudioAccessoryWriteStatusForIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "completion"}];
  }

  if (self->_audioStateMonitorActivated)
  {
    [(HKHealthServicesManager *)self _fetchHealthKitDataWriteStatusWithIdentifier:v6 completion:v7];
  }

  else
  {
    audioStateMonitor = self->_audioStateMonitor;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __81__HKHealthServicesManager__getAudioAccessoryWriteStatusForIdentifier_completion___block_invoke;
    v9[3] = &unk_1E73858D0;
    v11 = v7;
    v9[4] = self;
    v10 = v6;
    [(AASystemStateMonitor *)audioStateMonitor activateWithCompletion:v9];
  }
}

uint64_t __81__HKHealthServicesManager__getAudioAccessoryWriteStatusForIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 48) + 16))();
  }

  *(*(a1 + 32) + 48) = 1;
  return [*(a1 + 32) _fetchHealthKitDataWriteStatusWithIdentifier:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)_fetchHealthKitDataWriteStatusWithIdentifier:(id)a3 completion:(id)a4
{
  v11 = a4;
  if (!self->_audioStateMonitorActivated)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = @"Audio state monitor inactive. Abort fetch healthkit data write info.";
LABEL_7:
    v10 = [v8 hk_error:303 format:v9];
    v11[2](v11, 0, v10);

    goto LABEL_9;
  }

  v6 = [(AASystemStateMonitor *)self->_audioStateMonitor fetchHealthKitDataWriteAllowedForDevice:a3];
  if (!v6)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = @"Audio accessory state unknown.";
    goto LABEL_7;
  }

  if (v6 == 2)
  {
    v11[2](v11, MEMORY[0x1E695E110], 0);
  }

  else
  {
    v7 = v11;
    if (v6 != 1)
    {
      goto LABEL_10;
    }

    v11[2](v11, MEMORY[0x1E695E118], 0);
  }

LABEL_9:
  v7 = v11;
LABEL_10:
}

uint64_t __86__HKHealthServicesManager__setAudioAccessoryWriteStatusEnabled_identifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 48) + 16))();
  }

  *(*(a1 + 32) + 32) = 1;
  return [*(a1 + 32) _setHealthKitDataWriteEnabled:*(a1 + 56) identifier:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)_setHealthKitDataWriteEnabled:(BOOL)a3 identifier:(id)a4 completion:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  if (self->_audioDeviceManagerActivated)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v10 = getAADeviceConfigClass_softClass;
    v23 = getAADeviceConfigClass_softClass;
    if (!getAADeviceConfigClass_softClass)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __getAADeviceConfigClass_block_invoke;
      v19[3] = &unk_1E7378388;
      v19[4] = &v20;
      __getAADeviceConfigClass_block_invoke(v19);
      v10 = v21[3];
    }

    v11 = v10;
    _Block_object_dispose(&v20, 8);
    v12 = objc_alloc_init(v10);
    v13 = v12;
    if (v6)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    [v12 setAllowHealthKitDataWrite:v14];
    audioDeviceManager = self->_audioDeviceManager;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __79__HKHealthServicesManager__setHealthKitDataWriteEnabled_identifier_completion___block_invoke;
    v17[3] = &unk_1E7376960;
    v18 = v9;
    [(AADeviceManager *)audioDeviceManager sendDeviceConfig:v13 identifier:v8 completion:v17];
  }

  else
  {
    v16 = [MEMORY[0x1E696ABC0] hk_error:303 format:@"Audio device manager inactive. Abort set healthkit data."];
    (*(v9 + 2))(v9, 0, v16);
  }
}

- (void)_getAudioHRMDevicesWithCompletion:(id)a3
{
  v4 = a3;
  audioStateMonitor = self->_audioStateMonitor;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__HKHealthServicesManager__getAudioHRMDevicesWithCompletion___block_invoke;
  v7[3] = &unk_1E737F3D0;
  v8 = v4;
  v6 = v4;
  [(AASystemStateMonitor *)audioStateMonitor fetchPairedHRMDevices:v7];
}

void __61__HKHealthServicesManager__getAudioHRMDevicesWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * v11);
          v13 = [HKAudioAccessoryDevice alloc];
          v14 = [(HKAudioAccessoryDevice *)v13 initWithAudioAccessoryDevice:v12, v16];
          [v6 addObject:v14];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    (*(*(a1 + 32) + 16))();
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)healthAudioHRMDevicesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_audioStateMonitorActivated)
  {
    [(HKHealthServicesManager *)self _getAudioHRMDevicesWithCompletion:v4];
  }

  else
  {
    audioStateMonitor = self->_audioStateMonitor;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __63__HKHealthServicesManager_healthAudioHRMDevicesWithCompletion___block_invoke;
    v7[3] = &unk_1E7385920;
    v7[4] = self;
    v8 = v4;
    [(AASystemStateMonitor *)audioStateMonitor activateWithCompletion:v7];
  }
}

uint64_t __63__HKHealthServicesManager_healthAudioHRMDevicesWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 40) + 16))();
  }

  *(*(a1 + 32) + 48) = 1;
  return [*(a1 + 32) _getAudioHRMDevicesWithCompletion:*(a1 + 40)];
}

- (void)clientRemote_deliverBluetoothStatus:(int64_t)a3 withError:(id)a4
{
  v6 = a4;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__HKHealthServicesManager_clientRemote_deliverBluetoothStatus_withError___block_invoke;
  block[3] = &unk_1E73767D0;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(v7, block);
}

uint64_t __73__HKHealthServicesManager_clientRemote_deliverBluetoothStatus_withError___block_invoke(void *a1)
{
  result = *(a1[4] + 88);
  if (result)
  {
    return (*(result + 16))(result, a1[6], a1[5]);
  }

  return result;
}

- (void)clientRemote_deliverDiscoveryHealthService:(id)a3 toClient:(unint64_t)a4 finished:(BOOL)a5 withError:(id)a6
{
  v11 = a3;
  v12 = a6;
  v13 = [(HKProxyProvider *)self->_proxyProvider clientQueue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __98__HKHealthServicesManager_clientRemote_deliverDiscoveryHealthService_toClient_finished_withError___block_invoke;
  v16[3] = &unk_1E7385948;
  v19 = a4;
  v20 = a2;
  v16[4] = self;
  v17 = v11;
  v18 = v12;
  v21 = a5;
  v14 = v12;
  v15 = v11;
  dispatch_async(v13, v16);
}

void __98__HKHealthServicesManager_clientRemote_deliverDiscoveryHealthService_toClient_finished_withError___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 56);
  if (*(a1 + 56))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    v7 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:v5];
    v8 = [v7 discoveryHandler];
    v9 = v8;
    if (v8)
    {
      (*(v8 + 16))(v8, *(a1 + 40), *(a1 + 72), *(a1 + 48));
      if (*(a1 + 72) == 1)
      {
        [*(a1 + 32) _addEndedDiscovery:v5];
        [*(*(a1 + 32) + 56) removeObjectForKey:v5];
      }
    }

    else
    {
      v10 = *(a1 + 32);
      if (*(v10 + 56) && ![*(v10 + 64) containsObject:v5])
      {
        v12 = dispatch_time(0, 250000000);
        v13 = [*(*(a1 + 32) + 8) clientQueue];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __98__HKHealthServicesManager_clientRemote_deliverDiscoveryHealthService_toClient_finished_withError___block_invoke_102;
        v18[3] = &unk_1E7385948;
        v14 = *(a1 + 56);
        v22 = *(a1 + 64);
        v23 = v14;
        v19 = *(a1 + 40);
        v15 = *(a1 + 48);
        v16 = *(a1 + 32);
        v20 = v15;
        v21 = v16;
        v24 = *(a1 + 72);
        dispatch_after(v12, v13, v18);
      }

      else
      {
        _HKInitializeLogging();
        v11 = HKLogServices;
        if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEBUG))
        {
          __98__HKHealthServicesManager_clientRemote_deliverDiscoveryHealthService_toClient_finished_withError___block_invoke_cold_1(a1, v11, v2);
        }
      }
    }

    goto LABEL_13;
  }

  _HKInitializeLogging();
  v3 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 64);
    v5 = v3;
    v6 = NSStringFromSelector(v4);
    *buf = 138543362;
    v26 = v6;
    _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@, Invalid discovery client returned and ignored.", buf, 0xCu);

LABEL_13:
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __98__HKHealthServicesManager_clientRemote_deliverDiscoveryHealthService_toClient_finished_withError___block_invoke_102(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEBUG))
  {
    __98__HKHealthServicesManager_clientRemote_deliverDiscoveryHealthService_toClient_finished_withError___block_invoke_102_cold_1(a1, v2);
  }

  return [*(a1 + 48) clientRemote_deliverDiscoveryHealthService:*(a1 + 32) toClient:*(a1 + 64) finished:*(a1 + 72) withError:*(a1 + 40)];
}

- (void)clientRemote_deliverSessionHealthServiceStatus:(int64_t)a3 toClient:(unint64_t)a4 finished:(BOOL)a5 withError:(id)a6
{
  v11 = a6;
  v12 = [(HKProxyProvider *)self->_proxyProvider clientQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __102__HKHealthServicesManager_clientRemote_deliverSessionHealthServiceStatus_toClient_finished_withError___block_invoke;
  v14[3] = &unk_1E7385970;
  v16 = a4;
  v17 = a2;
  v18 = a3;
  v14[4] = self;
  v15 = v11;
  v19 = a5;
  v13 = v11;
  dispatch_async(v12, v14);
}

void __102__HKHealthServicesManager_clientRemote_deliverSessionHealthServiceStatus_toClient_finished_withError___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 48);
  if (*(a1 + 48))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    v7 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:v5];
    v8 = [v7 sessionHandler];
    v9 = v8;
    if (v8)
    {
      (*(v8 + 16))(v8, *(a1 + 64), *(a1 + 72), *(a1 + 40));
      if (*(a1 + 72) == 1)
      {
        [*(a1 + 32) _addEndedSession:v5];
        [*(*(a1 + 32) + 72) removeObjectForKey:v5];
      }
    }

    else
    {
      v10 = *(a1 + 32);
      if (*(v10 + 72) && ![*(v10 + 80) containsObject:v5])
      {
        v12 = dispatch_time(0, 200000000);
        v13 = [*(*(a1 + 32) + 8) clientQueue];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __102__HKHealthServicesManager_clientRemote_deliverSessionHealthServiceStatus_toClient_finished_withError___block_invoke_103;
        v20[3] = &unk_1E7385970;
        v14 = *(a1 + 64);
        v16 = *(a1 + 40);
        v15 = *(a1 + 48);
        v23 = *(a1 + 56);
        v24 = v15;
        v25 = v14;
        v17 = v16;
        v18 = *(a1 + 32);
        v21 = v17;
        v22 = v18;
        v26 = *(a1 + 72);
        dispatch_after(v12, v13, v20);
      }

      else
      {
        _HKInitializeLogging();
        v11 = HKLogServices;
        if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEBUG))
        {
          __102__HKHealthServicesManager_clientRemote_deliverSessionHealthServiceStatus_toClient_finished_withError___block_invoke_cold_1(a1, v11, v2);
        }
      }
    }

    goto LABEL_13;
  }

  _HKInitializeLogging();
  v3 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 56);
    v5 = v3;
    v6 = NSStringFromSelector(v4);
    *buf = 138543362;
    v28 = v6;
    _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@, Invalid session client returned and ignored.", buf, 0xCu);

LABEL_13:
  }

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t __102__HKHealthServicesManager_clientRemote_deliverSessionHealthServiceStatus_toClient_finished_withError___block_invoke_103(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEBUG))
  {
    __102__HKHealthServicesManager_clientRemote_deliverSessionHealthServiceStatus_toClient_finished_withError___block_invoke_103_cold_1(a1, v2);
  }

  return [*(a1 + 40) clientRemote_deliverSessionHealthServiceStatus:*(a1 + 64) toClient:*(a1 + 56) finished:*(a1 + 72) withError:*(a1 + 32)];
}

- (void)clientRemote_deliverSessionCharacteristics:(id)a3 forService:(id)a4 toClient:(unint64_t)a5 withError:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(HKProxyProvider *)self->_proxyProvider clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__HKHealthServicesManager_clientRemote_deliverSessionCharacteristics_forService_toClient_withError___block_invoke;
  block[3] = &unk_1E7385998;
  v20 = v12;
  v21 = a5;
  block[4] = self;
  v18 = v10;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, block);
}

void __100__HKHealthServicesManager_clientRemote_deliverSessionCharacteristics_forService_toClient_withError___block_invoke(void *a1)
{
  if (a1[8])
  {
    v3 = *(a1[4] + 72);
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    v7 = [v3 objectForKeyedSubscript:v4];

    v5 = [v7 characteristicsHandler];
    v6 = v5;
    if (v5)
    {
      (*(v5 + 16))(v5, a1[5], a1[6], a1[7]);
    }
  }
}

- (void)connectionInterrupted
{
  v3 = [(HKProxyProvider *)self->_proxyProvider clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__HKHealthServicesManager_connectionInterrupted__block_invoke;
  block[3] = &unk_1E7376780;
  block[4] = self;
  dispatch_async(v3, block);
}

void __48__HKHealthServicesManager_connectionInterrupted__block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  if (v3)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v4 = [v3 allValues];
    v5 = [v4 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v45;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v45 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v44 + 1) + 8 * i) discoveryHandler];
          v10 = [MEMORY[0x1E696ABC0] hk_error:301 description:@"Connection interrupted"];
          (v9)[2](v9, 0, 1, v10);
        }

        v6 = [v4 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v6);
    }

    v11 = *(a1 + 32);
    v12 = *(v11 + 64);
    if (!v12)
    {
      v13 = [MEMORY[0x1E695DFA8] set];
      v14 = *(a1 + 32);
      v15 = *(v14 + 64);
      *(v14 + 64) = v13;

      v11 = *(a1 + 32);
      v12 = *(v11 + 64);
    }

    v16 = [*(v11 + 56) allKeys];
    [v12 addObjectsFromArray:v16];

    v17 = *(a1 + 32);
    v18 = *(v17 + 56);
    *(v17 + 56) = 0;

    v2 = *(a1 + 32);
  }

  if (*(v2 + 80))
  {
    v39 = a1;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v19 = [*(v2 + 72) allValues];
    v20 = [v19 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v41;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v41 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v40 + 1) + 8 * j);
          v25 = [v24 sessionHandler];
          v26 = MEMORY[0x1E696ABC0];
          v27 = [v24 service];
          v28 = [v27 name];
          v29 = [v26 hk_error:300 format:{@"The connection to %@ has unexpectedly been lost.", v28}];
          (v25)[2](v25, 5, 1, v29);
        }

        v21 = [v19 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v21);
    }

    v30 = *(v39 + 32);
    v31 = *(v30 + 80);
    if (!v31)
    {
      v32 = [MEMORY[0x1E695DFA8] set];
      v33 = *(v39 + 32);
      v34 = *(v33 + 80);
      *(v33 + 80) = v32;

      v30 = *(v39 + 32);
      v31 = *(v30 + 80);
    }

    v35 = [*(v30 + 72) allKeys];
    [v31 addObjectsFromArray:v35];

    v36 = *(v39 + 32);
    v37 = *(v36 + 72);
    *(v36 + 72) = 0;
  }

  v38 = *MEMORY[0x1E69E9840];
}

- (void)startBluetoothStatusUpdates:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"handler" object:? file:? lineNumber:? description:?];
}

void __52__HKHealthServicesManager_endBluetoothStatusUpdates__block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Failed to get health services proxy: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_fetchSupportedServiceIDsWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)startHealthServiceDiscovery:withHandler:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"discovery" object:? file:? lineNumber:? description:?];
}

- (void)startHealthServiceDiscovery:withHandler:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"handler" object:? file:? lineNumber:? description:?];
}

- (void)startAllHealthServicesDiscoveryWithHandler:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"handler" object:? file:? lineNumber:? description:?];
}

- (void)healthServicePairingsWithHandler:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"handler != nil" object:? file:? lineNumber:? description:?];
}

- (void)healthPeripheralsWithFilter:handler:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"handler != nil" object:? file:? lineNumber:? description:?];
}

- (void)addHealthServicePairing:withCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)removeHealthServicePairing:withCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)registerPeripheralIdentifier:name:services:withCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)unregisterPeripheralIdentifier:withCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)getHealthServicePropertyNamesWithHandler:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"handler" object:? file:? lineNumber:? description:?];
}

- (void)getHealthServiceProperty:forSession:withHandler:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"propertyName" object:? file:? lineNumber:? description:?];
}

- (void)getHealthServiceProperty:forSession:withHandler:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"session" object:? file:? lineNumber:? description:?];
}

- (void)getHealthServiceProperty:forSession:withHandler:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"handler" object:? file:? lineNumber:? description:?];
}

- (void)performHealthServiceOperation:onSession:withParameters:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"op" object:? file:? lineNumber:? description:?];
}

- (void)performHealthServiceOperation:onSession:withParameters:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"session" object:? file:? lineNumber:? description:?];
}

- (void)healthPeripheralsWithCustomProperties:withCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void __98__HKHealthServicesManager_clientRemote_deliverDiscoveryHealthService_toClient_finished_withError___block_invoke_cold_1(void *a1, void *a2, uint64_t *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a1[8];
  v6 = a2;
  v7 = NSStringFromSelector(v5);
  v8 = *a3;
  v9 = a1[5];
  v10 = a1[6];
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_6_3();
  _os_log_debug_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEBUG, "%{public}@, discovery for canceled client ID %d. service: %@, error: %@", v12, 0x26u);

  v11 = *MEMORY[0x1E69E9840];
}

void __98__HKHealthServicesManager_clientRemote_deliverDiscoveryHealthService_toClient_finished_withError___block_invoke_102_cold_1(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a1[7];
  v4 = a2;
  v5 = NSStringFromSelector(v3);
  v6 = a1[8];
  v7 = a1[4];
  v8 = a1[5];
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_6_3();
  _os_log_debug_impl(&dword_19197B000, v4, OS_LOG_TYPE_DEBUG, "%{public}@, rescheduling, discovery not yet available for client ID %d. service: %{public}@, error: %{public}@", v10, 0x26u);

  v9 = *MEMORY[0x1E69E9840];
}

void __102__HKHealthServicesManager_clientRemote_deliverSessionHealthServiceStatus_toClient_finished_withError___block_invoke_cold_1(void *a1, void *a2, uint64_t *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a1[7];
  v6 = a2;
  v7 = NSStringFromSelector(v5);
  v8 = *a3;
  v9 = _HKStringForHealthServiceStatus(a1[8]);
  v10 = a1[5];
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_7_1(&dword_19197B000, v11, v12, "%{public}@, session for canceled client ID %d. status: %{public}@, error: %{public}@", v13, v14, v15, v16, 2u);

  v17 = *MEMORY[0x1E69E9840];
}

void __102__HKHealthServicesManager_clientRemote_deliverSessionHealthServiceStatus_toClient_finished_withError___block_invoke_103_cold_1(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1[6];
  v4 = a2;
  v5 = NSStringFromSelector(v3);
  v6 = a1[7];
  v7 = _HKStringForHealthServiceStatus(a1[8]);
  v8 = a1[4];
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_7_1(&dword_19197B000, v9, v10, "%{public}@, rescheduling, session not yet available for client ID %d. status: %{public}@, error: %{public}@", v11, v12, v13, v14, 2u);

  v15 = *MEMORY[0x1E69E9840];
}

@end