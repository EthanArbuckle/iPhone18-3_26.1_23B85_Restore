@interface ACCTransportIOAccessorySharedManager
+ (id)IOAccessoryClassStringForIOAccessoryClassType:(int)a3;
+ (id)sharedManager;
+ (int)IOAccessoryClassTypeForIOAccessoryClassString:(id)a3;
- (ACCTransportIOAccessorySharedManager)init;
- (ACCTransportPluginIOAccessoryManager)delegate;
- (BOOL)IOAccessoryEADataArrived:(id)a3 eaEndpointUUID:(id)a4;
- (BOOL)IOAccessoryOOBPairingDataArrived:(id)a3 endpointUUID:(id)a4;
- (BOOL)IOAccessoryOOBPairingDataFinishedForEndpointUUID:(id)a3;
- (BOOL)IOAccessoryOOBPairingDataStartedForEndpointUUID:(id)a3;
- (BOOL)IOAccessoryOOBPairingInfoArrived:(id)a3 endpointUUID:(id)a4;
- (BOOL)IOAccessoryPortDataArrived:(id)a3 endpointUUID:(id)a4;
- (BOOL)_addACCTransportToManager:(id)a3;
- (BOOL)_managerForConnectionUUIDHasActiveEndpoint:(id)a3;
- (BOOL)connectedThroughAdapter:(id)a3;
- (BOOL)isBatteryPackModeEnabled:(id)a3;
- (BOOL)isPowerDuringSleepEnabled:(id)a3;
- (BOOL)isPowerDuringSleepSupported:(id)a3;
- (BOOL)openEASession:(id)a3 withEAEndpointUUID:(id)a4;
- (BOOL)resetAccessoryBaseCurrent:(id)a3;
- (BOOL)setProperties:(id)a3 forManager:(id)a4;
- (BOOL)shouldEnableDirectAWCAuth;
- (id)_basePortForConnectionUUID:(id)a3;
- (id)_basePortForEndpointUUID:(id)a3;
- (id)_managerContainingBase:(id)a3;
- (id)_managerForBase:(id)a3;
- (id)_managerForBaseEndpointUUID:(id)a3;
- (id)_managerForConnectionUUID:(id)a3;
- (id)_managerForIOService:(unsigned int)a3 shouldCreateNewService:(BOOL)a4;
- (id)_portForManagerMatchingPrimaryPort:(id)a3;
- (id)basePortForService:(unsigned int)a3;
- (id)digitalIDDataForUpstreamConnection:(id)a3;
- (id)managerForIOAccessoryManagerService:(unsigned int)a3;
- (int)CableType:(id)a3;
- (int)USBModeForConnectionUUID:(id)a3;
- (int)USBModeForEndpointUUID:(id)a3;
- (int)_connectionTypeForIOAccessoryPort:(id)a3;
- (int)_endpointTransportTypeForIOAccessoryPort:(id)a3;
- (unsigned)USBChargingVoltageInmV:(id)a3;
- (unsigned)USBCurrentLimitBaseInmA:(id)a3;
- (unsigned)USBCurrentLimitInmA:(id)a3;
- (unsigned)USBCurrentLimitOffsetInmA:(id)a3;
- (unsigned)accessoryChargingCurrentInmA:(id)a3;
- (unsigned)sleepPowerCurrentLimitInmA:(id)a3;
- (void)IOAccessoryConfigStreamMessageArrived:(id)a3 endpointUUID:(id)a4;
- (void)IOAccessoryConfigStreamUpdateAccesssoryInfo:(id)a3;
- (void)IOAccessoryManagerResistorIDChanged:(int)a3 forManager:(id)a4;
- (void)IOAccessoryManagerServiceArrived:(unsigned int)a3;
- (void)IOAccessoryManagerServiceDetached:(unsigned int)a3;
- (void)IOAccessoryManagerServiceInfoSet:(unsigned int)a3;
- (void)IOAccessoryPortDetach:(id)a3;
- (void)IOAccessoryPortPropertyChanged:(id)a3;
- (void)IOAccessoryPortPublish:(id)a3;
- (void)_IOAccessoryPortDetachInternal:(id)a3;
- (void)_clearChildPortEndpointsForManagerDisconnection:(id)a3;
- (void)_createEAEndpointForProtocol:(id)a3 andManager:(id)a4;
- (void)_createEAProtocolsForManager:(id)a3;
- (void)_createModuleConnectionAndEndpoint:(id)a3;
- (void)_handleRequestForIAPDPortB139B164Connected:(id)a3;
- (void)_handleRequestForPrimaryPort:(id)a3;
- (void)_handleUSBHostPluginArrived:(id)a3;
- (void)closeEASession:(id)a3;
- (void)dealloc;
- (void)handleCloseEASessionNotification:(id)a3;
- (void)handleOpenEASessionNotification:(id)a3;
- (void)lockAccessoryPorts;
- (void)resetLightningBusForEndpointWithUUID:(id)a3;
- (void)shouldEnableDirectAWCAuth;
- (void)startIOACCTransportManager;
- (void)transmitData:(id)a3 forEndpointUUID:(id)a4;
- (void)unlockAccessoryPorts;
@end

@implementation ACCTransportIOAccessorySharedManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ACCTransportIOAccessorySharedManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_once != -1)
  {
    dispatch_once(&sharedManager_once, block);
  }

  v2 = sharedManager_sharedInstance;

  return v2;
}

- (void)lockAccessoryPorts
{
  v2 = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [v2 lock];
}

- (ACCTransportPluginIOAccessoryManager)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)unlockAccessoryPorts
{
  v2 = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [v2 unlock];
}

- (ACCTransportIOAccessorySharedManager)init
{
  v22.receiver = self;
  v22.super_class = ACCTransportIOAccessorySharedManager;
  v2 = [(ACCTransportIOAccessorySharedManager *)&v22 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.accessoryd.ioaccmgr.listq", 0);
    listQ = v2->_listQ;
    v2->_listQ = v3;

    v5 = [MEMORY[0x277CBEB58] set];
    allIOAccessoryManagers = v2->_allIOAccessoryManagers;
    v2->_allIOAccessoryManagers = v5;

    v7 = [MEMORY[0x277CBEB58] set];
    allIOAccessories = v2->_allIOAccessories;
    v2->_allIOAccessories = v7;

    v9 = [[ACCTransportIOAccessoryListener alloc] initWithDelegate:v2];
    ioAccessoryListener = v2->_ioAccessoryListener;
    v2->_ioAccessoryListener = v9;

    v2->_isB139OrB164Connected = 0;
    v11 = [[ACCSettingsState alloc] initWithKey:@"EnableDirectAWCAuth" applicationID:@"com.apple.CoreAccessories" notification:@"com.apple.CoreAccessories.PreferencesDidChangeNotification" defaultValue:0 invalidValue:-1];
    enableDirectAWCAuth = v2->_enableDirectAWCAuth;
    v2->_enableDirectAWCAuth = v11;

    objc_storeWeak(&v2->_delegate, 0);
    v13 = objc_alloc_init(MEMORY[0x277CCAC60]);
    accessoryPortLock = v2->_accessoryPortLock;
    v2->_accessoryPortLock = v13;

    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 addObserver:v2 selector:sel__handleRequestForIAPDPortB139B164Connected_ name:*MEMORY[0x277CFD180] object:0];

    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    [v16 addObserver:v2 selector:sel__handleRequestForPrimaryPort_ name:*MEMORY[0x277CFD188] object:0];

    v2->_bIsWatch = MGGetSInt32Answer() == 6;
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    deferAuthCPServiceArray = v2->_deferAuthCPServiceArray;
    v2->_deferAuthCPServiceArray = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    deferEAServiceArray = v2->_deferEAServiceArray;
    v2->_deferEAServiceArray = v19;
  }

  return v2;
}

- (void)dealloc
{
  dispatch_sync(self->_listQ, &__block_literal_global_5);
  listQ = self->_listQ;
  self->_listQ = 0;

  [(NSMutableSet *)self->_allIOAccessoryManagers removeAllObjects];
  allIOAccessoryManagers = self->_allIOAccessoryManagers;
  self->_allIOAccessoryManagers = 0;

  [(NSMutableSet *)self->_allIOAccessories removeAllObjects];
  allIOAccessories = self->_allIOAccessories;
  self->_allIOAccessories = 0;

  ioAccessoryListener = self->_ioAccessoryListener;
  self->_ioAccessoryListener = 0;

  accessoryPortLock = self->_accessoryPortLock;
  self->_accessoryPortLock = 0;

  deferAuthCPServiceArray = self->_deferAuthCPServiceArray;
  self->_deferAuthCPServiceArray = 0;

  deferEAServiceArray = self->_deferEAServiceArray;
  self->_deferEAServiceArray = 0;

  objc_storeWeak(&self->_delegate, 0);
  v10.receiver = self;
  v10.super_class = ACCTransportIOAccessorySharedManager;
  [(ACCTransportIOAccessorySharedManager *)&v10 dealloc];
}

- (void)startIOACCTransportManager
{
  ServiceWithPrimaryPort = IOAccessoryManagerGetServiceWithPrimaryPort();
  EnableAccessoryPowerForPortService(ServiceWithPrimaryPort, 1);
  IOObjectRelease(ServiceWithPrimaryPort);
  v4 = dispatch_time(0, 1250000000);
  v5 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__ACCTransportIOAccessorySharedManager_startIOACCTransportManager__block_invoke;
  block[3] = &unk_2789E8690;
  block[4] = self;
  dispatch_after(v4, v5, block);
}

uint64_t __66__ACCTransportIOAccessorySharedManager_startIOACCTransportManager__block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 2;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __66__ACCTransportIOAccessorySharedManager_startIOACCTransportManager__block_invoke_cold_2();
  }

  return [*(*(a1 + 32) + 56) startListening];
}

- (id)_managerForBase:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__0;
  v31 = __Block_byref_object_dispose__0;
  v32 = 0;
  listQ = self->_listQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__ACCTransportIOAccessorySharedManager__managerForBase___block_invoke;
  block[3] = &unk_2789E8820;
  v26 = &v27;
  block[4] = self;
  v6 = v4;
  v25 = v6;
  dispatch_sync(listQ, block);
  if ([v28[5] count] != 1)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v7 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v7 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v28[5] count];
      v15 = v28[5];
      *buf = 134218242;
      v34 = v14;
      v35 = 2112;
      v36 = v15;
      _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_DEFAULT, "found %lu IOAccMgr Ports contained in set! %@", buf, 0x16u);
    }

    goto LABEL_18;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v28[5];
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v37 count:16];
  if (!v8)
  {
LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  v9 = 0;
  v10 = *v21;
  do
  {
    v11 = 0;
    v12 = v9;
    do
    {
      if (*v21 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v9 = *(*(&v20 + 1) + 8 * v11);

      ++v11;
      v12 = v9;
    }

    while (v8 != v11);
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v37 count:16];
  }

  while (v8);
LABEL_19:

  v16 = v25;
  v17 = v9;

  _Block_object_dispose(&v27, 8);
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

void __56__ACCTransportIOAccessorySharedManager__managerForBase___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) allIOAccessoryManagers];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__ACCTransportIOAccessorySharedManager__managerForBase___block_invoke_2;
  v6[3] = &unk_2789E9068;
  v7 = *(a1 + 40);
  v3 = [v2 objectsPassingTest:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

BOOL __56__ACCTransportIOAccessorySharedManager__managerForBase___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 2;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v8 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  else
  {
    v8 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __56__ACCTransportIOAccessorySharedManager__managerForBase___block_invoke_2_cold_2(v5, a1);
  }

  v9 = [v5 ioService];
  v10 = [*(a1 + 32) upstreamManagerService];
  if (v9 == v10)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v11 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v11 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __56__ACCTransportIOAccessorySharedManager__managerForBase___block_invoke_2_cold_4();
    }

    *a3 = 1;
  }

  return v9 == v10;
}

- (id)_managerContainingBase:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__0;
  v31 = __Block_byref_object_dispose__0;
  v32 = 0;
  listQ = self->_listQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__ACCTransportIOAccessorySharedManager__managerContainingBase___block_invoke;
  block[3] = &unk_2789E8820;
  v26 = &v27;
  block[4] = self;
  v6 = v4;
  v25 = v6;
  dispatch_sync(listQ, block);
  if ([v28[5] count] != 1)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v7 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v7 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v28[5] count];
      v15 = v28[5];
      *buf = 134218242;
      v34 = v14;
      v35 = 2112;
      v36 = v15;
      _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_DEFAULT, "unexpectedly found more than 1, %lu IOAccMgr Ports contained in set! %@", buf, 0x16u);
    }

    goto LABEL_18;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v28[5];
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v37 count:16];
  if (!v8)
  {
LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  v9 = 0;
  v10 = *v21;
  do
  {
    v11 = 0;
    v12 = v9;
    do
    {
      if (*v21 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v9 = *(*(&v20 + 1) + 8 * v11);

      ++v11;
      v12 = v9;
    }

    while (v8 != v11);
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v37 count:16];
  }

  while (v8);
LABEL_19:

  v16 = v25;
  v17 = v9;

  _Block_object_dispose(&v27, 8);
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

void __63__ACCTransportIOAccessorySharedManager__managerContainingBase___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) allIOAccessoryManagers];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__ACCTransportIOAccessorySharedManager__managerContainingBase___block_invoke_2;
  v6[3] = &unk_2789E9068;
  v7 = *(a1 + 40);
  v3 = [v2 objectsPassingTest:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t __63__ACCTransportIOAccessorySharedManager__managerContainingBase___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 ioAccessoryChildPorts];
  v6 = [v5 containsObject:*(a1 + 32)];

  if (v6)
  {
    if (gLogObjects)
    {
      v7 = gNumLogObjects < 2;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v9 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    else
    {
      v9 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __63__ACCTransportIOAccessorySharedManager__managerContainingBase___block_invoke_2_cold_2();
    }

    *a3 = 1;
  }

  return v6;
}

- (id)managerForIOAccessoryManagerService:(unsigned int)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = [(ACCTransportIOAccessorySharedManager *)self allIOAccessoryManagers];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __76__ACCTransportIOAccessorySharedManager_managerForIOAccessoryManagerService___block_invoke;
  v21[3] = &__block_descriptor_36_e44_B24__0__ACCTransportIOAccessoryManager_8_B16l;
  v22 = a3;
  v5 = [v4 objectsPassingTest:v21];

  if ([v5 count] != 1)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v6 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v6 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v5 count];
      *buf = 134218242;
      v24 = v14;
      v25 = 2112;
      v26 = v5;
      _os_log_impl(&dword_233656000, v6, OS_LOG_TYPE_DEFAULT, "unexpectedly found > 1, %lu ACCTransportIOAccessoryManagers contained in set! %@", buf, 0x16u);
    }

    goto LABEL_18;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (!v7)
  {
LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v18;
  do
  {
    v11 = 0;
    v12 = v9;
    do
    {
      if (*v18 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v9 = *(*(&v17 + 1) + 8 * v11);

      ++v11;
      v12 = v9;
    }

    while (v8 != v11);
    v8 = [v6 countByEnumeratingWithState:&v17 objects:v27 count:16];
  }

  while (v8);
LABEL_19:

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_managerForIOService:(unsigned int)a3 shouldCreateNewService:(BOOL)a4
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  listQ = self->_listQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__ACCTransportIOAccessorySharedManager__managerForIOService_shouldCreateNewService___block_invoke;
  block[3] = &unk_2789E90B0;
  v8 = a3;
  block[4] = self;
  block[5] = &v10;
  v9 = a4;
  dispatch_sync(listQ, block);
  v5 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v5;
}

void __84__ACCTransportIOAccessorySharedManager__managerForIOService_shouldCreateNewService___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = (a1 + 48);
  v2 = *(a1 + 48);
  UpstreamService = IOAccessoryManagerGetUpstreamService();
  if (!UpstreamService)
  {
    if (gLogObjects)
    {
      v10 = gNumLogObjects < 2;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v12 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    else
    {
      v12 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __84__ACCTransportIOAccessorySharedManager__managerForIOService_shouldCreateNewService___block_invoke_cold_4(v3);
    }

    goto LABEL_17;
  }

  v5 = UpstreamService;
  v6 = [*(a1 + 32) managerForIOAccessoryManagerService:UpstreamService];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (!*(*(*(a1 + 40) + 8) + 40) && *(a1 + 52) == 1)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v9 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v9 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 67109120;
      v21 = v5;
      _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_DEFAULT, "Creating new IOAccMgrService, calling IOAccessoryManagerServiceArrived for serviceID %d?", &v20, 8u);
    }

    [*(a1 + 32) _addIOAccessoryManagerWithIOService:v5];
    v15 = [*(a1 + 32) managerForIOAccessoryManagerService:v5];
    v16 = *(*(a1 + 40) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    if (gLogObjects && gNumLogObjects >= 2)
    {
      v12 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v12 = MEMORY[0x277D86220];
      v18 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *v3;
      v20 = 67109376;
      v21 = v5;
      v22 = 1024;
      v23 = v19;
      _os_log_impl(&dword_233656000, v12, OS_LOG_TYPE_DEFAULT, "Created new ACCTransportIOAccessoryManager with  service %d for downstream service %d", &v20, 0xEu);
    }

LABEL_17:
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_managerForBaseEndpointUUID:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ACCTransportIOAccessorySharedManager *)self _basePortForEndpointUUID:v4];
  if (!v5)
  {
    if (gLogObjects)
    {
      v11 = gNumLogObjects < 2;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    else
    {
      v10 = *(gLogObjects + 8);
    }

    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_34;
    }

    v18 = 138412290;
    v19 = v4;
    v14 = "Unable to find accBaseTransport for endpointUUID %@";
    goto LABEL_33;
  }

  v6 = [(ACCTransportIOAccessorySharedManager *)self _managerForBase:v5];
  if (gLogObjects)
  {
    v7 = gNumLogObjects <= 1;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if (!v6)
  {
    if (v8)
    {
      v10 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_34;
    }

    v18 = 138412290;
    v19 = v5;
    v14 = "Unable to find accMgrTransport for base transport %@";
LABEL_33:
    _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_INFO, v14, &v18, 0xCu);
LABEL_34:
    v9 = 0;
    goto LABEL_35;
  }

  v9 = v6;
  if (v8)
  {
    v10 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v10 = MEMORY[0x277D86220];
    v13 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ACCTransportIOAccessorySharedManager _managerForBaseEndpointUUID:v9];
  }

LABEL_35:

  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_managerForConnectionUUID:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__0;
  v49 = __Block_byref_object_dispose__0;
  v50 = 0;
  if (v4)
  {
    listQ = self->_listQ;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__ACCTransportIOAccessorySharedManager__managerForConnectionUUID___block_invoke;
    block[3] = &unk_2789E8820;
    v44 = &v45;
    block[4] = self;
    v43 = v4;
    dispatch_sync(listQ, block);
  }

  else
  {
    if (gLogObjects)
    {
      v7 = gNumLogObjects < 2;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v9 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    else
    {
      v9 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [ACCTransportIOAccessorySharedManager _managerForConnectionUUID:];
    }
  }

  v10 = v46[5];
  if (!v10)
  {
LABEL_34:
    v20 = [(ACCTransportIOAccessorySharedManager *)self _basePortForConnectionUUID:v5, v38];
    if (v20)
    {
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v21 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v21 = MEMORY[0x277D86220];
        v25 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_233656000, v21, OS_LOG_TYPE_INFO, "Found base port owning connectionUUID, stop looking", buf, 2u);
      }

      v13 = 0;
      goto LABEL_90;
    }

    ServiceWithPort = IOAccessoryPortGetServiceWithPort();
    if (ServiceWithPort)
    {
      v23 = [(ACCTransportIOAccessorySharedManager *)self _managerForIOService:ServiceWithPort shouldCreateNewService:0];
      if (v23)
      {
        v13 = v23;
        if (gLogObjects && gNumLogObjects >= 2)
        {
          v24 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v24 = MEMORY[0x277D86220];
          v27 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_233656000, v24, OS_LOG_TYPE_DEFAULT, "Found USB port ACCTransportIOAccessoryManager", buf, 2u);
        }

        goto LABEL_76;
      }

      if (gLogObjects && gNumLogObjects >= 2)
      {
        v26 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v26 = MEMORY[0x277D86220];
        v29 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_233656000, v26, OS_LOG_TYPE_DEFAULT, "Couldn't find ACCTransportIOAccessoryManager for portServiceUSB", buf, 2u);
      }
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v26 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v26 = MEMORY[0x277D86220];
        v28 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessorySharedManager _managerForConnectionUUID:];
      }
    }

    v30 = [(ACCTransportIOAccessorySharedManager *)self rootE75Manager];
    v31 = v30 == 0;

    if (!v31)
    {
      v13 = [(ACCTransportIOAccessorySharedManager *)self rootE75Manager];
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v21 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v21 = MEMORY[0x277D86220];
        v34 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_90;
      }

      *buf = 0;
      v33 = "Did not find manager for USB port. Setting to root Lightning port";
LABEL_89:
      _os_log_impl(&dword_233656000, v21, OS_LOG_TYPE_DEFAULT, v33, buf, 2u);
LABEL_90:

      goto LABEL_91;
    }

    v13 = 0;
LABEL_76:
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v21 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v21 = MEMORY[0x277D86220];
      v32 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_90;
    }

    *buf = 0;
    v33 = "ERROR: No root lightning port manager is present";
    goto LABEL_89;
  }

  if ([v10 count] != 1)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v11 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v11 = MEMORY[0x277D86220];
      v17 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v46[5] count];
      v19 = v46[5];
      *buf = 134218498;
      v52 = v18;
      v53 = 2112;
      v54 = v5;
      v55 = 2112;
      v56 = v19;
      _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_DEFAULT, "Found %lu IOAccMgr Ports contained in set for connectionUUID %@! %@", buf, 0x20u);
    }

    goto LABEL_33;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v11 = v46[5];
  v12 = [v11 countByEnumeratingWithState:&v38 objects:v57 count:16];
  if (!v12)
  {
LABEL_33:

    goto LABEL_34;
  }

  v13 = 0;
  v14 = *v39;
  do
  {
    v15 = 0;
    v16 = v13;
    do
    {
      if (*v39 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v13 = *(*(&v38 + 1) + 8 * v15);

      ++v15;
      v16 = v13;
    }

    while (v12 != v15);
    v12 = [v11 countByEnumeratingWithState:&v38 objects:v57 count:16];
  }

  while (v12);

  if (!v13)
  {
    goto LABEL_34;
  }

LABEL_91:
  v35 = v13;
  _Block_object_dispose(&v45, 8);

  v36 = *MEMORY[0x277D85DE8];

  return v35;
}

void __66__ACCTransportIOAccessorySharedManager__managerForConnectionUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) allIOAccessoryManagers];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__ACCTransportIOAccessorySharedManager__managerForConnectionUUID___block_invoke_2;
  v6[3] = &unk_2789E9068;
  v7 = *(a1 + 40);
  v3 = [v2 objectsPassingTest:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t __66__ACCTransportIOAccessorySharedManager__managerForConnectionUUID___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 2;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v8 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  else
  {
    v8 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __66__ACCTransportIOAccessorySharedManager__managerForConnectionUUID___block_invoke_2_cold_2(v5, a1);
  }

  v9 = [v5 connectionUUID];
  v11 = *(a1 + 32);
  v10 = (a1 + 32);
  v12 = [v9 isEqualToString:v11];

  if (v12)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v13 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v13 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __66__ACCTransportIOAccessorySharedManager__managerForConnectionUUID___block_invoke_2_cold_4(v10);
    }

    *a3 = 1;
  }

  return v12;
}

- (BOOL)_managerForConnectionUUIDHasActiveEndpoint:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:a3];
  v4 = v3;
  if (!v3)
  {
    v19 = 0;
    goto LABEL_59;
  }

  [v3 ioAccessoryChildPorts];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = v33 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (!v6)
  {
    v19 = 0;
    goto LABEL_58;
  }

  v7 = v6;
  v29 = v4;
  v8 = *v31;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v31 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v30 + 1) + 8 * i);
      NSClassFromString(&cfstr_Acctransportio_24.isa);
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
        v12 = [v11 ioAccPortEndpointUUID];

        if (v12)
        {
          if (gLogObjects && gNumLogObjects >= 2)
          {
            v20 = *(gLogObjects + 8);
            v4 = v29;
          }

          else
          {
            v4 = v29;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCTransportIOAccessoryOOBPairing dealloc];
            }

            v20 = MEMORY[0x277D86220];
            v21 = MEMORY[0x277D86220];
          }

          if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_57;
          }

          v22 = [v11 ioAccPortEndpointUUID];
          *buf = 138412290;
          v35 = v22;
          v23 = "found IOAccessoryPort with active endpointUUID %@";
LABEL_56:
          _os_log_impl(&dword_233656000, v20, OS_LOG_TYPE_DEFAULT, v23, buf, 0xCu);

LABEL_57:
          v19 = 1;
          goto LABEL_58;
        }
      }

      else
      {
        NSClassFromString(&cfstr_Acctransportio_25.isa);
        if (objc_opt_isKindOfClass())
        {
          v13 = v10;
          v14 = [v13 endpointUUID];

          if (v14)
          {
            if (gLogObjects && gNumLogObjects >= 2)
            {
              v20 = *(gLogObjects + 8);
              v4 = v29;
            }

            else
            {
              v4 = v29;
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                [ACCTransportIOAccessoryOOBPairing dealloc];
              }

              v20 = MEMORY[0x277D86220];
              v24 = MEMORY[0x277D86220];
            }

            if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_57;
            }

            v22 = [v13 endpointUUID];
            *buf = 138412290;
            v35 = v22;
            v23 = "found IOAccessoryEA with active endpointUUID %@";
            goto LABEL_56;
          }
        }

        else
        {
          NSClassFromString(&cfstr_Acctransportio_26.isa);
          if (objc_opt_isKindOfClass())
          {
            v15 = v10;
            v16 = [v15 endpointUUID];

            if (v16)
            {
              if (gLogObjects && gNumLogObjects >= 2)
              {
                v20 = *(gLogObjects + 8);
                v4 = v29;
              }

              else
              {
                v4 = v29;
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  [ACCTransportIOAccessoryOOBPairing dealloc];
                }

                v20 = MEMORY[0x277D86220];
                v25 = MEMORY[0x277D86220];
              }

              if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_57;
              }

              v22 = [v15 endpointUUID];
              *buf = 138412290;
              v35 = v22;
              v23 = "found IOAccessoryOOBPairing with active endpointUUID %@";
              goto LABEL_56;
            }
          }

          else
          {
            NSClassFromString(&cfstr_Acctransportio_27.isa);
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }

            v17 = v10;
            v18 = [v17 endpointUUID];

            if (v18)
            {
              if (gLogObjects && gNumLogObjects >= 2)
              {
                v20 = *(gLogObjects + 8);
                v4 = v29;
              }

              else
              {
                v4 = v29;
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  [ACCTransportIOAccessoryOOBPairing dealloc];
                }

                v20 = MEMORY[0x277D86220];
                v26 = MEMORY[0x277D86220];
              }

              if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_57;
              }

              v22 = [v17 endpointUUID];
              *buf = 138412290;
              v35 = v22;
              v23 = "found IOAccessoryConfigStream with active endpointUUID %@";
              goto LABEL_56;
            }
          }
        }
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

  v19 = 0;
  v4 = v29;
LABEL_58:

LABEL_59:
  v27 = *MEMORY[0x277D85DE8];
  return v19;
}

- (id)basePortForService:(unsigned int)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__0;
  v30 = __Block_byref_object_dispose__0;
  v31 = 0;
  listQ = self->_listQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__ACCTransportIOAccessorySharedManager_basePortForService___block_invoke;
  block[3] = &unk_2789E90F8;
  block[4] = self;
  block[5] = &v26;
  v25 = a3;
  dispatch_sync(listQ, block);
  if ([v27[5] count] != 1)
  {
    v10 = [v27[5] count];
    if (gLogObjects)
    {
      v11 = gNumLogObjects <= 1;
    }

    else
    {
      v11 = 1;
    }

    v12 = !v11;
    if (v10)
    {
      if (v12)
      {
        v4 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v4 = MEMORY[0x277D86220];
        v13 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v12)
      {
        v4 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v4 = MEMORY[0x277D86220];
        v14 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        goto LABEL_31;
      }
    }

    v15 = [v27[5] count];
    v16 = v27[5];
    *buf = 134218242;
    v33 = v15;
    v34 = 2112;
    v35 = v16;
    _os_log_impl(&dword_233656000, v4, OS_LOG_TYPE_INFO, "Found %lu IOBase Ports contained in set! %@", buf, 0x16u);
LABEL_31:
    v6 = 0;
    goto LABEL_32;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = v27[5];
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v36 count:16];
  if (!v5)
  {
    goto LABEL_31;
  }

  v6 = 0;
  v7 = *v21;
  do
  {
    v8 = 0;
    v9 = v6;
    do
    {
      if (*v21 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v6 = *(*(&v20 + 1) + 8 * v8);

      ++v8;
      v9 = v6;
    }

    while (v5 != v8);
    v5 = [v4 countByEnumeratingWithState:&v20 objects:v36 count:16];
  }

  while (v5);
LABEL_32:

  v17 = v6;
  _Block_object_dispose(&v26, 8);

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

void __59__ACCTransportIOAccessorySharedManager_basePortForService___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) allIOAccessories];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__ACCTransportIOAccessorySharedManager_basePortForService___block_invoke_2;
  v6[3] = &__block_descriptor_36_e41_B24__0__ACCTransportIOAccessoryBase_8_B16l;
  v7 = *(a1 + 48);
  v3 = [v2 objectsPassingTest:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

BOOL __59__ACCTransportIOAccessorySharedManager_basePortForService___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 ioService];
  v6 = *(a1 + 32);
  if (v5 == v6)
  {
    *a3 = 1;
  }

  return v5 == v6;
}

- (id)_basePortForEndpointUUID:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__0;
  v35 = __Block_byref_object_dispose__0;
  v36 = 0;
  listQ = self->_listQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__ACCTransportIOAccessorySharedManager__basePortForEndpointUUID___block_invoke;
  block[3] = &unk_2789E9148;
  v30 = &v31;
  block[4] = self;
  v24 = @"ACCTransportIOAccessoryPort";
  v6 = v4;
  v25 = v6;
  v26 = @"ACCTransportIOAccessoryEA";
  v27 = @"ACCTransportIOAccessoryOOBPairing";
  v28 = @"ACCTransportIOAccessoryAuthCP";
  v29 = @"ACCTransportIOAccessoryConfigStream";
  dispatch_sync(listQ, block);
  if ([v32[5] count] != 1)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v7 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v7 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v14 = [v32[5] count];
      *buf = 134218242;
      v38 = v14;
      v39 = 2112;
      v40 = v6;
      _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_INFO, "Found %lu IOBase Ports contained in set for endpointUUID! %@", buf, 0x16u);
    }

    goto LABEL_18;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v32[5];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v41 count:16];
  if (!v8)
  {
LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  v9 = 0;
  v10 = *v20;
  do
  {
    v11 = 0;
    v12 = v9;
    do
    {
      if (*v20 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v9 = *(*(&v19 + 1) + 8 * v11);

      ++v11;
      v12 = v9;
    }

    while (v8 != v11);
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v41 count:16];
  }

  while (v8);
LABEL_19:

  v15 = v29;
  v16 = v9;

  _Block_object_dispose(&v31, 8);
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

void __65__ACCTransportIOAccessorySharedManager__basePortForEndpointUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) allIOAccessories];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__ACCTransportIOAccessorySharedManager__basePortForEndpointUUID___block_invoke_2;
  v12[3] = &unk_2789E9120;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v13 = v8;
  v14 = v7;
  v15 = *(a1 + 72);
  v16 = *(a1 + 80);
  v9 = [v2 objectsPassingTest:v12];
  v10 = *(*(a1 + 88) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

uint64_t __65__ACCTransportIOAccessorySharedManager__basePortForEndpointUUID___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  NSClassFromString(*(a1 + 32));
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    NSClassFromString(*(a1 + 48));
    if (objc_opt_isKindOfClass())
    {
      v9 = [v5 endpointUUID];
      v10 = [v9 isEqualToString:*(a1 + 40)];

      if (!v10)
      {
        goto LABEL_35;
      }

      if (gLogObjects && gNumLogObjects >= 2)
      {
        v8 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v8 = MEMORY[0x277D86220];
        v18 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        goto LABEL_47;
      }

      v19 = *(a1 + 40);
      v30 = 138412290;
      v31 = v19;
      v15 = "Found IOAccessoryEA with endpointUUID %@";
    }

    else
    {
      NSClassFromString(*(a1 + 56));
      if (objc_opt_isKindOfClass())
      {
        v11 = [v5 endpointUUID];
        v12 = [v11 isEqualToString:*(a1 + 40)];

        if (!v12)
        {
          goto LABEL_35;
        }

        if (gLogObjects && gNumLogObjects >= 2)
        {
          v8 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v8 = MEMORY[0x277D86220];
          v24 = MEMORY[0x277D86220];
        }

        if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          goto LABEL_47;
        }

        v25 = *(a1 + 40);
        v30 = 138412290;
        v31 = v25;
        v15 = "Found IOAccessoryOOBPairing with endpointUUID %@";
      }

      else
      {
        NSClassFromString(*(a1 + 64));
        if (objc_opt_isKindOfClass())
        {
          v16 = [v5 endpointUUID];
          v17 = [v16 isEqualToString:*(a1 + 40)];

          if (!v17)
          {
            goto LABEL_35;
          }

          if (gLogObjects && gNumLogObjects >= 2)
          {
            v8 = *(gLogObjects + 8);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCTransportIOAccessoryOOBPairing dealloc];
            }

            v8 = MEMORY[0x277D86220];
            v26 = MEMORY[0x277D86220];
          }

          if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            goto LABEL_47;
          }

          v27 = *(a1 + 40);
          v30 = 138412290;
          v31 = v27;
          v15 = "Found IOAccessoryAuthCP with endpointUUID %@";
        }

        else
        {
          NSClassFromString(*(a1 + 72));
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_35;
          }

          v20 = [v5 endpointUUID];
          v21 = [v20 isEqualToString:*(a1 + 40)];

          if (!v21)
          {
            goto LABEL_35;
          }

          v8 = logObjectForModule_0(1);
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
LABEL_47:

            v23 = 1;
            *a3 = 1;
            goto LABEL_48;
          }

          v22 = *(a1 + 40);
          v30 = 138412290;
          v31 = v22;
          v15 = "Found IOAccessoryConfigStream with endpointUUID %@";
        }
      }
    }

LABEL_46:
    _os_log_impl(&dword_233656000, v8, OS_LOG_TYPE_INFO, v15, &v30, 0xCu);
    goto LABEL_47;
  }

  v6 = [v5 ioAccPortEndpointUUID];
  v7 = [v6 isEqualToString:*(a1 + 40)];

  if (v7)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v8 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v8 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_47;
    }

    v14 = *(a1 + 40);
    v30 = 138412290;
    v31 = v14;
    v15 = "Found IOAccessoryPort with endpointUUID %@";
    goto LABEL_46;
  }

LABEL_35:
  v23 = 0;
LABEL_48:

  v28 = *MEMORY[0x277D85DE8];
  return v23;
}

- (id)_basePortForConnectionUUID:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__0;
  v31 = __Block_byref_object_dispose__0;
  v32 = 0;
  listQ = self->_listQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__ACCTransportIOAccessorySharedManager__basePortForConnectionUUID___block_invoke;
  block[3] = &unk_2789E9198;
  v26 = &v27;
  block[4] = self;
  v24 = @"ACCTransportIOAccessoryAuthCP";
  v6 = v4;
  v25 = v6;
  dispatch_sync(listQ, block);
  if ([v28[5] count] != 1)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v7 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v7 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v14 = [v28[5] count];
      *buf = 134218242;
      v34 = v14;
      v35 = 2112;
      v36 = v6;
      _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_INFO, "Found %lu IOBase Ports contained in set for connectionUUID! %@", buf, 0x16u);
    }

    goto LABEL_18;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v28[5];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v37 count:16];
  if (!v8)
  {
LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  v9 = 0;
  v10 = *v20;
  do
  {
    v11 = 0;
    v12 = v9;
    do
    {
      if (*v20 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v9 = *(*(&v19 + 1) + 8 * v11);

      ++v11;
      v12 = v9;
    }

    while (v8 != v11);
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v37 count:16];
  }

  while (v8);
LABEL_19:

  v15 = v25;
  v16 = v9;

  _Block_object_dispose(&v27, 8);
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

void __67__ACCTransportIOAccessorySharedManager__basePortForConnectionUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) allIOAccessories];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__ACCTransportIOAccessorySharedManager__basePortForConnectionUUID___block_invoke_2;
  v6[3] = &unk_2789E9170;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v3 = [v2 objectsPassingTest:v6];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t __67__ACCTransportIOAccessorySharedManager__basePortForConnectionUUID___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  NSClassFromString(*(a1 + 32));
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v5 connectionUUID], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", *(a1 + 40)), v6, v7))
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v8 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v8 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    v9 = 1;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 40);
      v14 = 138412290;
      v15 = v11;
      _os_log_impl(&dword_233656000, v8, OS_LOG_TYPE_INFO, "Found IOAccessoryAuthCP with connectionUUID %@", &v14, 0xCu);
    }

    *a3 = 1;
  }

  else
  {
    v9 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)_portForManagerMatchingPrimaryPort:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__0;
  v31 = __Block_byref_object_dispose__0;
  v32 = 0;
  listQ = self->_listQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__ACCTransportIOAccessorySharedManager__portForManagerMatchingPrimaryPort___block_invoke;
  block[3] = &unk_2789E91E8;
  v26 = &v27;
  v6 = v4;
  v25 = v6;
  dispatch_sync(listQ, block);
  if ([v28[5] count] != 1)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v7 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v7 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v14 = [v28[5] count];
      v15 = [v6 primaryPortNumber];
      *buf = 134218240;
      v34 = v14;
      v35 = 1024;
      v36 = v15;
      _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_INFO, "Found %lu IOBase Ports contained in set for primaryPort %d", buf, 0x12u);
    }

    goto LABEL_18;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v28[5];
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v37 count:16];
  if (!v8)
  {
LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  v9 = 0;
  v10 = *v21;
  do
  {
    v11 = 0;
    v12 = v9;
    do
    {
      if (*v21 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v9 = *(*(&v20 + 1) + 8 * v11);

      ++v11;
      v12 = v9;
    }

    while (v8 != v11);
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v37 count:16];
  }

  while (v8);
LABEL_19:

  v16 = v25;
  v17 = v9;

  _Block_object_dispose(&v27, 8);
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

void __75__ACCTransportIOAccessorySharedManager__portForManagerMatchingPrimaryPort___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ioAccessoryChildPorts];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __75__ACCTransportIOAccessorySharedManager__portForManagerMatchingPrimaryPort___block_invoke_2;
  v6[3] = &unk_2789E91C0;
  v7 = *(a1 + 32);
  v3 = [v2 objectsPassingTest:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t __75__ACCTransportIOAccessorySharedManager__portForManagerMatchingPrimaryPort___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  v6 = v5;
  v7 = [v6 portIDNumber];
  if (v7 != [*(a1 + 32) primaryPortNumber])
  {

LABEL_7:
    v9 = 0;
    goto LABEL_14;
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v8 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v8 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v6 portIDNumber];
    v12 = [*(a1 + 32) primaryPortNumber];
    v15[0] = 67109376;
    v15[1] = v11;
    v16 = 1024;
    v17 = v12;
    _os_log_impl(&dword_233656000, v8, OS_LOG_TYPE_DEFAULT, "Found IOAccessoryPort with portID %d, matching primaryPort %d", v15, 0xEu);
  }

  v9 = 1;
  *a3 = 1;

LABEL_14:
  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_createEAProtocolsForManager:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 connectionUUID];

    if (!v5)
    {
      v6 = [(ACCTransportIOAccessorySharedManager *)self delegate];
      v7 = [v6 createConnectionWithType:objc_msgSend(v4 andIdentifier:{"connectionType"), 0}];

      v8 = [(ACCTransportIOAccessorySharedManager *)self delegate];
      [v8 setSupervisedTransportsRestricted:objc_msgSend(v4 forConnectionWithUUID:{"supervisedTransportsRestricted"), v7}];

      [v4 setConnectionUUID:v7];
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v9 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v9 = MEMORY[0x277D86220];
        v10 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = [v4 connectionUUID];
        *buf = 138412290;
        v48 = v11;
        _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_INFO, "Created a new connection with UUID: %@", buf, 0xCu);
      }

      v12 = [v4 accessoryInfoLock];
      [v12 lock];

      v45[0] = *MEMORY[0x277CFD2C0];
      v13 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v4, "primaryPortNumber")}];
      v46[0] = v13;
      v45[1] = *MEMORY[0x277CFD290];
      v14 = [v4 digitalID];
      v15 = v14;
      if (!v14)
      {
        v15 = [MEMORY[0x277CBEB68] null];
      }

      v46[1] = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
      if (!v14)
      {
      }

      v17 = [v4 accessoryInfoLock];
      [v17 unlock];

      v18 = [(ACCTransportIOAccessorySharedManager *)self delegate];
      v19 = [v16 copy];
      [v18 setProperties:v19 forConnectionWithUUID:v7];
    }

    v20 = [v4 eaProtocolChildPorts];
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v21 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v21 = MEMORY[0x277D86220];
      v22 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v48 = v20;
      _os_log_impl(&dword_233656000, v21, OS_LOG_TYPE_INFO, "accEAEndpointsForManager = %@", buf, 0xCu);
    }

    v23 = [(ACCTransportIOAccessorySharedManager *)self delegate];

    if (v23)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = v20;
      v24 = v20;
      v25 = [v24 countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v41;
        v28 = MEMORY[0x277D86220];
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v41 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v30 = *(*(&v40 + 1) + 8 * i);
            v31 = [v30 endpointUUID];

            if (v31)
            {
              v32 = gLogObjects;
              v33 = gNumLogObjects;
              if (gLogObjects)
              {
                v34 = gNumLogObjects < 2;
              }

              else
              {
                v34 = 1;
              }

              if (v34)
              {
                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  v48 = v32;
                  v49 = 1024;
                  v50 = v33;
                  _os_log_error_impl(&dword_233656000, v28, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                }

                v35 = v28;
                v36 = v28;
              }

              else
              {
                v36 = *(gLogObjects + 8);
              }

              if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_233656000, v36, OS_LOG_TYPE_INFO, "Skipped re-creating endpoint with existing UUID.", buf, 2u);
              }
            }

            else
            {
              [(ACCTransportIOAccessorySharedManager *)self _createEAEndpointForProtocol:v30 andManager:v4];
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v40 objects:v44 count:16];
        }

        while (v26);
      }

      v20 = v38;
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)_createEAEndpointForProtocol:(id)a3 andManager:(id)a4
{
  v46[9] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(ACCTransportIOAccessorySharedManager *)self delegate];

  if (v8)
  {
    v9 = [v7 accessoryInfoLock];
    [v9 lock];

    v45[0] = *MEMORY[0x277CFD250];
    v36 = [v6 deviceName];
    v46[0] = v36;
    v45[1] = *MEMORY[0x277CFD248];
    v35 = [v6 deviceModelNumber];
    v46[1] = v35;
    v45[2] = *MEMORY[0x277CFD240];
    v34 = [v6 deviceVendorName];
    v46[2] = v34;
    v45[3] = *MEMORY[0x277CFD270];
    v33 = [v6 deviceSerialNumber];
    v46[3] = v33;
    v45[4] = *MEMORY[0x277CFD230];
    v10 = [v6 deviceFirmwareRevision];
    v46[4] = v10;
    v45[5] = *MEMORY[0x277CFD238];
    v11 = [v6 deviceHardwareRevision];
    v46[5] = v11;
    v45[6] = *MEMORY[0x277CFD258];
    v12 = [v7 ppid];
    v13 = v12;
    if (!v12)
    {
      v13 = [MEMORY[0x277CBEB68] null];
    }

    v38 = self;
    v46[6] = v13;
    v45[7] = *MEMORY[0x277CFD268];
    v14 = [v7 regionCode];
    v15 = v14;
    if (!v14)
    {
      v15 = [MEMORY[0x277CBEB68] null];
    }

    v46[7] = v15;
    v45[8] = *MEMORY[0x277CFD220];
    v16 = [v7 inductiveDeviceUID];
    v17 = v16;
    if (!v16)
    {
      v17 = [MEMORY[0x277CBEB68] null];
    }

    v46[8] = v17;
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:9];
    if (!v16)
    {
    }

    if (!v14)
    {
    }

    if (!v12)
    {
    }

    v18 = [v7 accessoryInfoLock];
    [v18 unlock];

    if (gLogObjects && gNumLogObjects >= 2)
    {
      v19 = *(gLogObjects + 8);
      v20 = v37;
    }

    else
    {
      v20 = v37;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v19 = MEMORY[0x277D86220];
      v21 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v22 = [v6 eaProtocol];
      v23 = [v7 connectionUUID];
      *buf = 138412802;
      v40 = v20;
      v41 = 2112;
      v42 = v22;
      v43 = 2112;
      v44 = v23;
      _os_log_impl(&dword_233656000, v19, OS_LOG_TYPE_INFO, "accInfoDictionary = %@, accEAProtocol.eaProtocol = %@, ioAccMgr.connectionUUID = %@", buf, 0x20u);
    }

    v24 = [(ACCTransportIOAccessorySharedManager *)v38 delegate];
    v25 = [v6 eaProtocol];
    v26 = [v7 connectionUUID];
    v27 = [v26 copy];
    v28 = [v24 createEndpointWithTransportType:5 andProtocol:5 andIdentifier:v25 forConnectionWithUUID:v27 publishConnection:0];

    v29 = [(ACCTransportIOAccessorySharedManager *)v38 delegate];
    [v29 setAccessoryInfo:v20 forEndpointWithUUID:v28];

    v30 = [v28 copy];
    [v6 setEndpointUUID:v30];

    v31 = [v7 connectionUUID];
    [v6 setParentConnectionUUID:v31];
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_clearChildPortEndpointsForManagerDisconnection:(id)a3
{
  v3 = [a3 ioAccessoryChildPorts];
  [v3 enumerateObjectsUsingBlock:&__block_literal_global_110];
}

void __88__ACCTransportIOAccessorySharedManager__clearChildPortEndpointsForManagerDisconnection___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 2;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v6 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    else
    {
      v6 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 ioAccPortEndpointUUID];
      v21 = 138412290;
      v22 = v7;
      _os_log_impl(&dword_233656000, v6, OS_LOG_TYPE_DEFAULT, "Clearing endpointUUID %@ from childIOAccessoryPort", &v21, 0xCu);
    }

    [v3 setIoAccPortEndpointUUID:0];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v2;
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v9 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v9 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v8 endpointUUID];
      v21 = 138412290;
      v22 = v11;
      _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_DEFAULT, "Clearing endpointUUID %@ from childEAAccessoryPort", &v21, 0xCu);
    }

    [v8 setEndpointUUID:0];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v2;
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v13 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v13 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v12 endpointUUID];
      v21 = 138412290;
      v22 = v15;
      _os_log_impl(&dword_233656000, v13, OS_LOG_TYPE_DEFAULT, "Clearing endpointUUID %@ from childOOBPairingPort", &v21, 0xCu);
    }

    [v12 setEndpointUUID:0];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v2;
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v17 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v17 = MEMORY[0x277D86220];
      v18 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v16 endpointUUID];
      v21 = 138412290;
      v22 = v19;
      _os_log_impl(&dword_233656000, v17, OS_LOG_TYPE_DEFAULT, "Clearing endpointUUID %@ from childConfigStreamPort", &v21, 0xCu);
    }

    [v16 setEndpointUUID:0];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (int)_connectionTypeForIOAccessoryPort:(id)a3
{
  v4 = a3;
  [v4 upstreamManagerService];
  Type = IOAccessoryManagerGetType();
  if (Type == 3 || (!self->_bIsWatch && (Type & 0xF) != 5 ? (v6 = 1) : (v6 = 4), Type == 6))
  {
    v6 = 6;
  }

  v7 = [v4 portIDNumber];

  if (v7 == 257)
  {
    return 8;
  }

  if (v7 == 256)
  {
    return 3;
  }

  return v6;
}

- (int)_endpointTransportTypeForIOAccessoryPort:(id)a3
{
  v3 = a3;
  v4 = [v3 portIDNumber];
  if ((v4 - 6) <= 0xF)
  {
    v5 = [v3 portTransportType];
    v6 = v5;
    if (v5 == 7)
    {
      goto LABEL_18;
    }

    if (v5 != 19)
    {
      v6 = 1;
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v6 = 5;
  if (v4 > 256)
  {
    if (v4 == 257)
    {
      v6 = 9;
      goto LABEL_18;
    }

    if (v4 == 512)
    {
LABEL_14:
      if ([v3 portStreamType] == 5)
      {
        v6 = 14;
      }

      else
      {
        v6 = 12;
      }
    }
  }

  else
  {
    if (v4 == 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = 5;
    }

    if (v4 == 1)
    {
      v6 = 6;
    }

    else
    {
      v6 = v7;
    }
  }

LABEL_18:

  return v6;
}

- (BOOL)_addACCTransportToManager:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ACCTransportIOAccessorySharedManager *)self _managerForBase:v4];
  v6 = v5;
  if (gLogObjects)
  {
    v7 = gNumLogObjects <= 1;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if (v5)
  {
    if (v8)
    {
      v9 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v9 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 67109120;
      LODWORD(v16) = [v6 ioService];
      _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_DEFAULT, "Found IOAccessoryManager with service %u, adding child port to manager", &v15, 8u);
    }

    [v6 addIOAccessoryChildPort:v4];
  }

  else
  {
    if (v8)
    {
      v10 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v15 = 138413058;
      v16 = v4;
      v17 = 1024;
      v18 = [v4 ioService];
      v19 = 1024;
      v20 = [v4 primaryPortNumber];
      v21 = 1024;
      v22 = [v4 upstreamManagerService];
      _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_INFO, "Couldn't find Manager for basePort %@, ioService %d, primaryPortNumber %d, upstreamManagerService %d", &v15, 0x1Eu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6 != 0;
}

- (void)_handleRequestForIAPDPortB139B164Connected:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [(ACCTransportIOAccessorySharedManager *)self isB139OrB164Connected];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:v3];
  v8 = *MEMORY[0x277CFD170];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:*MEMORY[0x277CFD1A0] object:0 userInfo:v5];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleRequestForPrimaryPort:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x277CFD178]];
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 2;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v8 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  else
  {
    v8 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v26 = v5;
    _os_log_impl(&dword_233656000, v8, OS_LOG_TYPE_INFO, "Request for primary port: connectionUUID = %@", buf, 0xCu);
  }

  v9 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:v5];
  v10 = v9;
  if (gLogObjects)
  {
    v11 = gNumLogObjects <= 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v9)
  {
    if (v12)
    {
      v13 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v13 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v10 primaryPortNumber];
      *buf = 67109120;
      LODWORD(v26) = v16;
      _os_log_impl(&dword_233656000, v13, OS_LOG_TYPE_DEFAULT, "Request for primary port: found managerForConnectionUUID. PrimaryPort is %d", buf, 8u);
    }

    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "primaryPortNumber")}];
  }

  else
  {
    if (v12)
    {
      v14 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v14 = MEMORY[0x277D86220];
      v18 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_233656000, v14, OS_LOG_TYPE_DEFAULT, "Request for primary port: did not find managerForConnectionUUID for primary port! Assume primary port number is built-in port", buf, 2u);
    }

    v17 = [MEMORY[0x277CCABB0] numberWithInt:1];
  }

  v19 = v17;
  v23 = *MEMORY[0x277CFD168];
  v24 = v17;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v21 = [MEMORY[0x277CCAB98] defaultCenter];
  [v21 postNotificationName:*MEMORY[0x277CFD1A8] object:0 userInfo:v20];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)handleOpenEASessionNotification:(id)a3
{
  v3 = [(ACCTransportIOAccessorySharedManager *)self _basePortForEndpointUUID:a3];
  if (v3)
  {
    v5 = v3;
    v4 = [v3 ioServiceClassType] == 2;
    v3 = v5;
    if (v4)
    {
      [v5 openEAServiceSession];
      v3 = v5;
    }
  }
}

- (void)handleCloseEASessionNotification:(id)a3
{
  v3 = [(ACCTransportIOAccessorySharedManager *)self _basePortForEndpointUUID:a3];
  if (v3)
  {
    v5 = v3;
    v4 = [v3 ioServiceClassType] == 2;
    v3 = v5;
    if (v4)
    {
      [v5 closeEAServiceSession];
      v3 = v5;
    }
  }
}

- (void)_handleUSBHostPluginArrived:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 2;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = @"ACCTransportIOAccessory_USBHostPluginArrivedNotification";
    v11 = 2112;
    v12 = @"ACCTransportIOAccessory_IOAccessoryManagerArrivedNotification";
    _os_log_impl(&dword_233656000, v6, OS_LOG_TYPE_DEFAULT, "Received %@ notification, notifying %@", &v9, 0x16u);
  }

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 postNotificationName:@"ACCTransportIOAccessory_IOAccessoryManagerArrivedNotification" object:0];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)transmitData:(id)a3 forEndpointUUID:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 2;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ACCTransportIOAccessorySharedManager transmitData:forEndpointUUID:];
  }

  if (acc_userDefaultsLogging_BOOLForKey(@"TransportSignpost"))
  {
    if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
    {
      v11 = *(gLogSignpostObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessorySharedManager transmitData:forEndpointUUID:];
      }

      v11 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    v13 = [v7 hash];
    if ((v13 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v11))
      {
        v20 = 138412546;
        v21 = v7;
        v22 = 2048;
        v23 = [v6 length];
        _os_signpost_emit_with_name_impl(&dword_233656000, v11, OS_SIGNPOST_EVENT, v14, "Endpoint SEND", "Send outgoing data! %@, %lu bytes", &v20, 0x16u);
      }
    }
  }

  v15 = [(ACCTransportIOAccessorySharedManager *)self _basePortForEndpointUUID:v7];
  v16 = v15;
  if (v15)
  {
    [v15 transmitData:v6];
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v17 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v17 = MEMORY[0x277D86220];
      v18 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v20 = 138412290;
      v21 = v7;
      _os_log_impl(&dword_233656000, v17, OS_LOG_TYPE_INFO, "No ACCTransport handler for connectionUUID %@", &v20, 0xCu);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldEnableDirectAWCAuth
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 2;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ACCTransportIOAccessorySharedManager *)self shouldEnableDirectAWCAuth];
  }

  return [(ACCSettingsState *)self->_enableDirectAWCAuth BOOLValue];
}

- (BOOL)setProperties:(id)a3 forManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACCTransportIOAccessorySharedManager *)self delegate];
  v9 = v8;
  v10 = 0;
  if (v6 && v8)
  {

    if (!v7)
    {
      v10 = 0;
      goto LABEL_6;
    }

    v9 = [(ACCTransportIOAccessorySharedManager *)self delegate];
    v11 = [v7 connectionUUID];
    v10 = [v9 setProperties:v6 forConnectionWithUUID:v11];
  }

LABEL_6:
  return v10;
}

- (BOOL)openEASession:(id)a3 withEAEndpointUUID:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 2;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v18 = 138412546;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_INFO, "Opening EA session for protocol %@ and endpoint UUID %@", &v18, 0x16u);
  }

  v11 = [(ACCTransportIOAccessorySharedManager *)self _basePortForEndpointUUID:v7];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 openEAServiceSession];
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v14 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v14 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v18 = 138412290;
      v19 = v6;
      _os_log_impl(&dword_233656000, v14, OS_LOG_TYPE_INFO, "Could not find ACCTransportIOAccessoryEA object for protocol %@", &v18, 0xCu);
    }

    v13 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)closeEASession:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_INFO, "Closing EA session for eaEndpointUUID %@", &v13, 0xCu);
  }

  v8 = [(ACCTransportIOAccessorySharedManager *)self _basePortForEndpointUUID:v4];
  v9 = v8;
  if (v8)
  {
    [v8 closeEAServiceSession];
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v10 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_INFO, "Could not find ACCTransportIOAccessoryEA object for eaEndpointUUID %@", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (int)USBModeForConnectionUUID:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 getUSBMode];
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 2;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v12 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    else
    {
      v12 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ACCTransportIOAccessorySharedManager setUSBMode:forConnectionUUID:];
    }
  }

  else
  {
    if (gLogObjects)
    {
      v10 = gNumLogObjects < 2;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v12 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    else
    {
      v12 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = v4;
      _os_log_impl(&dword_233656000, v12, OS_LOG_TYPE_INFO, "Unable to find accMgrTransport for base connection UUID %@", &v15, 0xCu);
    }

    v7 = -1;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (int)USBModeForEndpointUUID:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ACCTransportIOAccessorySharedManager *)self _managerForBaseEndpointUUID:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 getUSBMode];
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 2;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v12 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    else
    {
      v12 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ACCTransportIOAccessorySharedManager setUSBMode:forEndpointUUID:];
    }
  }

  else
  {
    if (gLogObjects)
    {
      v10 = gNumLogObjects < 2;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v12 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    else
    {
      v12 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = v4;
      _os_log_impl(&dword_233656000, v12, OS_LOG_TYPE_INFO, "Unable to find accMgrTransport for base endpoint UUID %@", &v15, 0xCu);
    }

    v7 = -1;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (unsigned)USBCurrentLimitInmA:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 USBCurrentLimitInmA];
  }

  else
  {
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 2;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    else
    {
      v10 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_INFO, "Unable to find accMgrTransport for base connection UUID %@", &v13, 0xCu);
    }

    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (unsigned)USBCurrentLimitBaseInmA:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 USBCurrentLimitBaseInmA];
  }

  else
  {
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 2;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    else
    {
      v10 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_INFO, "Unable to find accMgrTransport for base connection UUID %@", &v13, 0xCu);
    }

    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (unsigned)USBCurrentLimitOffsetInmA:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 USBCurrentLimitOffsetInmA];
  }

  else
  {
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 2;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    else
    {
      v10 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_INFO, "Unable to find accMgrTransport for base connection UUID %@", &v13, 0xCu);
    }

    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (unsigned)USBChargingVoltageInmV:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 USBChargingVoltageInmV];
  }

  else
  {
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 2;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    else
    {
      v10 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_INFO, "Unable to find accMgrTransport for base connection UUID %@", &v13, 0xCu);
    }

    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (int)CableType:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 cableType];
  }

  else
  {
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 2;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    else
    {
      v10 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_INFO, "Unable to find accMgrTransport for base connection UUID %@", &v13, 0xCu);
    }

    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (unsigned)sleepPowerCurrentLimitInmA:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:v4];
  v6 = v5;
  if (v5)
  {
    if (([v5 isRootPort] & 1) == 0)
    {
      v7 = [v6 connectionType];
      if (v7 == 1)
      {
        v8 = 64;
      }

      else
      {
        if (v7 != 3)
        {
          goto LABEL_23;
        }

        v8 = 72;
      }

      v13 = *(&self->super.isa + v8);
      if (v13)
      {
        v11 = v13;
        v12 = [v13 sleepPowerCurrentLimitInmA];
        v14 = [v6 sleepPowerCurrentLimitInmA];
        v15 = v14;
        if (v12 >= v14)
        {
          v17 = 0;
          v12 = v14;
        }

        else
        {
          if (gLogObjects && gNumLogObjects >= 2)
          {
            v16 = *(gLogObjects + 8);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCTransportIOAccessoryOOBPairing dealloc];
            }

            v16 = MEMORY[0x277D86220];
            v27 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v28 = [v6 connectionUUID];
            v30 = [v6 primaryPortNumber];
            v29 = [v11 connectionUUID];
            *buf = 138413826;
            v32 = v4;
            v33 = 2112;
            v34 = v28;
            v35 = 1024;
            v36 = v30;
            v37 = 2112;
            v38 = v29;
            v39 = 1024;
            v40 = [v11 primaryPortNumber];
            v41 = 1024;
            v42 = v15;
            v43 = 1024;
            v44 = v12;
            _os_log_impl(&dword_233656000, v16, OS_LOG_TYPE_INFO, "connectionUUID %@, accMgrTransport %@ (%d), rootMgr %@ (%d), sleepPowerCurrentLimitInmA=%d -> %d", buf, 0x38u);
          }

          v17 = 0;
        }

        goto LABEL_24;
      }
    }

LABEL_23:
    v12 = [v6 sleepPowerCurrentLimitInmA];
    v11 = 0;
    v17 = 1;
LABEL_24:
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v18 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v18 = MEMORY[0x277D86220];
      v19 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v20 = [v6 connectionUUID];
      v21 = [v6 primaryPortNumber];
      v22 = v21;
      if (v17)
      {
        *buf = 138413570;
        v32 = v4;
        v33 = 2112;
        v34 = v20;
        v35 = 1024;
        v36 = v21;
        v37 = 2112;
        v38 = 0;
        v39 = 1024;
        v40 = -1;
        v41 = 1024;
        v42 = v12;
        _os_log_impl(&dword_233656000, v18, OS_LOG_TYPE_INFO, "connectionUUID %@, accMgrTransport %@ (%d), rootMgr %@ (%d), sleepPowerCurrentLimitInmA=%d", buf, 0x32u);
      }

      else
      {
        v23 = [v11 connectionUUID];
        v24 = [v11 primaryPortNumber];
        *buf = 138413570;
        v32 = v4;
        v33 = 2112;
        v34 = v20;
        v35 = 1024;
        v36 = v22;
        v37 = 2112;
        v38 = v23;
        v39 = 1024;
        v40 = v24;
        v41 = 1024;
        v42 = v12;
        _os_log_impl(&dword_233656000, v18, OS_LOG_TYPE_INFO, "connectionUUID %@, accMgrTransport %@ (%d), rootMgr %@ (%d), sleepPowerCurrentLimitInmA=%d", buf, 0x32u);
      }
    }

    goto LABEL_36;
  }

  if (gLogObjects)
  {
    v9 = gNumLogObjects < 2;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v11 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  else
  {
    v11 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v32 = v4;
    _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_INFO, "Unable to find accMgrTransport for base connection UUID %@", buf, 0xCu);
  }

  v12 = 0;
LABEL_36:

  v25 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)isPowerDuringSleepSupported:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 isPowerDuringSleepSupported];
  }

  else
  {
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 2;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    else
    {
      v10 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_INFO, "Unable to find accMgrTransport for base connection UUID %@", &v13, 0xCu);
    }

    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)isPowerDuringSleepEnabled:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 isPowerDuringSleepEnabled];
  }

  else
  {
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 2;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    else
    {
      v10 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_INFO, "Unable to find accMgrTransport for base connection UUID %@", &v13, 0xCu);
    }

    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)isBatteryPackModeEnabled:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 isBatteryPackModeEnabled];
  }

  else
  {
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 2;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    else
    {
      v10 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_INFO, "Unable to find accMgrTransport for base connection UUID %@", &v13, 0xCu);
    }

    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)resetAccessoryBaseCurrent:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 resetAccessoryBaseCurrent];
  }

  else
  {
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 2;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    else
    {
      v10 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_INFO, "Unable to find accMgrTransport for base connection UUID %@", &v13, 0xCu);
    }

    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (unsigned)accessoryChargingCurrentInmA:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 accessoryChargingCurrentInmA];
  }

  else
  {
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 2;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    else
    {
      v10 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_INFO, "Unable to find accMgrTransport for base connection UUID %@", &v13, 0xCu);
    }

    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)digitalIDDataForUpstreamConnection:(id)a3
{
  v4 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:a3];
  v5 = -[ACCTransportIOAccessorySharedManager managerForIOAccessoryManagerService:](self, "managerForIOAccessoryManagerService:", [v4 upstreamManagerService]);
  v6 = [v5 digitalID];

  return v6;
}

- (BOOL)connectedThroughAdapter:(id)a3
{
  v4 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:a3];
  v5 = -[ACCTransportIOAccessorySharedManager managerForIOAccessoryManagerService:](self, "managerForIOAccessoryManagerService:", [v4 upstreamManagerService]);
  v6 = [v5 digitalID];
  v7 = v6 != 0;

  return v7;
}

- (void)IOAccessoryManagerServiceArrived:(unsigned int)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v13 = a3;
    _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_INFO, "IOAccMgr service arrived with service %d", buf, 8u);
  }

  listQ = self->_listQ;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__ACCTransportIOAccessorySharedManager_IOAccessoryManagerServiceArrived___block_invoke;
  v10[3] = &unk_2789E9040;
  v10[4] = self;
  v11 = a3;
  dispatch_sync(listQ, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void __73__ACCTransportIOAccessorySharedManager_IOAccessoryManagerServiceArrived___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managerForIOAccessoryManagerService:*(a1 + 40)];
  if (v2)
  {
    if (gLogObjects)
    {
      v3 = gNumLogObjects < 1;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v5 = MEMORY[0x277D86220];
      v4 = MEMORY[0x277D86220];
    }

    else
    {
      v5 = *gLogObjects;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v8[0] = 67109120;
      v8[1] = v6;
      _os_log_impl(&dword_233656000, v5, OS_LOG_TYPE_DEFAULT, "Already connected IOAccMgr service with service %d", v8, 8u);
    }
  }

  else
  {
    [*(a1 + 32) _addIOAccessoryManagerWithIOService:*(a1 + 40)];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)IOAccessoryManagerServiceDetached:(unsigned int)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [v5 lock];

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  listQ = self->_listQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__ACCTransportIOAccessorySharedManager_IOAccessoryManagerServiceDetached___block_invoke;
  block[3] = &unk_2789E90F8;
  v19 = a3;
  block[4] = self;
  block[5] = &v20;
  dispatch_sync(listQ, block);
  v7 = v21[5];
  if (v7)
  {
    v8 = [v7 connectionUUID];

    if (v8)
    {
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v9 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v9 = MEMORY[0x277D86220];
        v11 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v21[5] connectionUUID];
        *buf = 67109378;
        v27 = a3;
        v28 = 2112;
        v29 = v12;
        _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_DEFAULT, "IOAccessoryManager service %d detach, remove connectionUUID %@", buf, 0x12u);
      }

      v13 = [(ACCTransportIOAccessorySharedManager *)self delegate];
      v14 = [v21[5] connectionUUID];
      [v13 destroyConnectionWithUUID:v14];

      [v21[5] setConnectionUUID:0];
      [(ACCTransportIOAccessorySharedManager *)self _clearChildPortEndpointsForManagerDisconnection:v21[5]];
    }
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v10 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v27 = a3;
      _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_INFO, "Couldn't find ACCTransportIOAccessoryManager for service %d", buf, 8u);
    }
  }

  v16 = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [v16 unlock];

  _Block_object_dispose(&v20, 8);
  v17 = *MEMORY[0x277D85DE8];
}

void __74__ACCTransportIOAccessorySharedManager_IOAccessoryManagerServiceDetached___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 2;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    v10[0] = 67109120;
    v10[1] = v5;
    _os_log_impl(&dword_233656000, v4, OS_LOG_TYPE_DEFAULT, "IOAccessoryManager SERVICE DETACH: handling detach for io acc mgr with service %d", v10, 8u);
  }

  v6 = [*(a1 + 32) managerForIOAccessoryManagerService:*(a1 + 48)];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *MEMORY[0x277D85DE8];
}

void __76__ACCTransportIOAccessorySharedManager_IOAccessoryManagerServiceTerminated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) transportClassTerminated];
  [*(*(a1 + 40) + 40) removeObject:*(a1 + 32)];
  [*(*(a1 + 40) + 32) removeObject:*(a1 + 32)];
  [*(*(a1 + 40) + 48) removeObject:*(a1 + 32)];
  v2 = [*(a1 + 32) ioService];
  v3 = [*(a1 + 40) rootE75Manager];
  v4 = [v3 ioService];

  if (v2 == v4)
  {
    v5 = 64;
  }

  else
  {
    v6 = [*(a1 + 32) ioService];
    v7 = [*(a1 + 40) rootOrionManager];
    v8 = [v7 ioService];

    if (v6 != v8)
    {
      return;
    }

    v5 = 72;
  }

  v9 = *(a1 + 40);
  v10 = *(v9 + v5);
  *(v9 + v5) = 0;
}

- (void)IOAccessoryManagerServiceInfoSet:(unsigned int)a3
{
  v133 = *MEMORY[0x277D85DE8];
  v4 = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [v4 lock];

  if (gLogObjects)
  {
    v5 = gNumLogObjects < 2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a3;
    _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_DEFAULT, "Accessory info set for IOAccessoryManager service %d", buf, 8u);
  }

  *buf = 0;
  v128 = buf;
  v129 = 0x3032000000;
  v130 = __Block_byref_object_copy__0;
  v131 = __Block_byref_object_dispose__0;
  v132 = 0;
  listQ = self->_listQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__ACCTransportIOAccessorySharedManager_IOAccessoryManagerServiceInfoSet___block_invoke;
  block[3] = &unk_2789E90F8;
  block[4] = self;
  block[5] = buf;
  v117 = a3;
  dispatch_sync(listQ, block);
  v9 = [*(v128 + 5) connectionUUID];
  v10 = v9 == 0;

  if (v10)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v11 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v11 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v122 = 67109120;
      LODWORD(v123) = a3;
      _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_DEFAULT, "No connectionUUID for IOAccessoryManager service %d yet, creating one", v122, 8u);
    }

    v13 = [(ACCTransportIOAccessorySharedManager *)self delegate];
    v14 = [v13 createConnectionWithType:objc_msgSend(*(v128 + 5) andIdentifier:{"connectionType"), 0}];

    v15 = [(ACCTransportIOAccessorySharedManager *)self delegate];
    [v15 setSupervisedTransportsRestricted:objc_msgSend(*(v128 + 5) forConnectionWithUUID:{"supervisedTransportsRestricted"), v14}];

    [*(v128 + 5) setConnectionUUID:v14];
    v16 = [*(v128 + 5) accessoryInfoLock];
    [v16 lock];

    v125[0] = *MEMORY[0x277CFD2C0];
    v17 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(*(v128 + 5), "primaryPortNumber")}];
    v126[0] = v17;
    v125[1] = *MEMORY[0x277CFD290];
    v18 = [*(v128 + 5) digitalID];
    v19 = v18;
    if (!v18)
    {
      v19 = [MEMORY[0x277CBEB68] null];
    }

    v126[1] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v126 forKeys:v125 count:2];
    if (!v18)
    {
    }

    v21 = [*(v128 + 5) accessoryInfoLock];
    [v21 unlock];

    v22 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v20];
    if ([*(v128 + 5) isAdapter])
    {
      v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(v128 + 5), "isAdapter")}];
      [v22 setObject:v23 forKey:*MEMORY[0x277CFD2B0]];
    }

    v24 = [*(v128 + 5) managerParent];

    if (v24)
    {
      v25 = [*(v128 + 5) managerParent];
      [v22 setObject:v25 forKey:*MEMORY[0x277CFD2B8]];
    }

    v26 = [(ACCTransportIOAccessorySharedManager *)self delegate];
    v27 = [v22 copy];
    [v26 setProperties:v27 forConnectionWithUUID:v14];
  }

  if ([*(v128 + 5) connectionType] != 4 || self->_bIsWatch)
  {
    v28 = [(ACCTransportIOAccessorySharedManager *)self delegate];
    v29 = [*(v128 + 5) connectionUUID];
    v30 = [v29 copy];
    v31 = [v28 createEndpointWithTransportType:5 andProtocol:2 andIdentifier:0 forConnectionWithUUID:v30 publishConnection:0];

    goto LABEL_32;
  }

  v74 = [(ACCTransportIOAccessorySharedManager *)self delegate];
  v75 = [*(v128 + 5) connectionUUID];
  v76 = [v74 endpointUUIDsForConnectionWithUUID:v75];

  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v28 = v76;
  v77 = [v28 countByEnumeratingWithState:&v112 objects:v124 count:16];
  if (!v77)
  {

LABEL_143:
    v29 = [(ACCTransportIOAccessorySharedManager *)self delegate];
    v93 = [*(v128 + 5) connectionUUID];
    v94 = [v93 copy];
    v31 = [v29 createEndpointWithTransportType:12 andProtocol:1 andIdentifier:0 forConnectionWithUUID:v94 publishConnection:0];

    goto LABEL_32;
  }

  v31 = 0;
  v78 = *v113;
  do
  {
    for (i = 0; i != v77; ++i)
    {
      if (*v113 != v78)
      {
        objc_enumerationMutation(v28);
      }

      v80 = *(*(&v112 + 1) + 8 * i);
      v81 = [(ACCTransportIOAccessorySharedManager *)self delegate];
      v82 = [v81 transportTypeForEndpointWithUUID:v80];

      v83 = [(ACCTransportIOAccessorySharedManager *)self delegate];
      v84 = [v83 protocolForEndpointWithUUID:v80];

      if (v82 == 12 && v84 == 1)
      {
        v86 = v80;

        v31 = v86;
      }
    }

    v77 = [v28 countByEnumeratingWithState:&v112 objects:v124 count:16];
  }

  while (v77);

  if (!v31)
  {
    goto LABEL_143;
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v29 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v29 = MEMORY[0x277D86220];
    v95 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *v122 = 138412290;
    v123 = v31;
    _os_log_impl(&dword_233656000, v29, OS_LOG_TYPE_DEFAULT, "Found existing endpointUUID %@ for IOAccessoryManager accessory info", v122, 0xCu);
  }

LABEL_32:

  if (gLogObjects)
  {
    v32 = gNumLogObjects <= 1;
  }

  else
  {
    v32 = 1;
  }

  v33 = !v32;
  if (v31)
  {
    if (v33)
    {
      v34 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v34 = MEMORY[0x277D86220];
      v36 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *v122 = 138412290;
      v123 = v31;
      _os_log_impl(&dword_233656000, v34, OS_LOG_TYPE_DEFAULT, "Created endpointUUID %@ for IOAccessoryManager accessory info", v122, 0xCu);
    }

    v37 = [*(v128 + 5) accessoryInfoLock];
    [v37 lock];

    v120[0] = *MEMORY[0x277CFD250];
    v110 = [*(v128 + 5) deviceName];
    v38 = v110;
    if (!v110)
    {
      v38 = [MEMORY[0x277CBEB68] null];
    }

    v103 = v38;
    v121[0] = v38;
    v120[1] = *MEMORY[0x277CFD248];
    v104 = [*(v128 + 5) deviceModelNumber];
    v39 = v104;
    if (!v104)
    {
      v39 = [MEMORY[0x277CBEB68] null];
    }

    v102 = v39;
    v121[1] = v39;
    v120[2] = *MEMORY[0x277CFD240];
    v108 = [*(v128 + 5) deviceVendorName];
    v40 = v108;
    if (!v108)
    {
      v40 = [MEMORY[0x277CBEB68] null];
    }

    v101 = v40;
    v121[2] = v40;
    v120[3] = *MEMORY[0x277CFD270];
    v107 = [*(v128 + 5) deviceSerialNumber];
    v41 = v107;
    if (!v107)
    {
      v41 = [MEMORY[0x277CBEB68] null];
    }

    v100 = v41;
    v121[3] = v41;
    v120[4] = *MEMORY[0x277CFD230];
    v106 = [*(v128 + 5) deviceFirmwareRevision];
    v42 = v106;
    if (!v106)
    {
      v42 = [MEMORY[0x277CBEB68] null];
    }

    v99 = v42;
    v121[4] = v42;
    v120[5] = *MEMORY[0x277CFD238];
    v105 = [*(v128 + 5) deviceHardwareRevision];
    v43 = v105;
    if (!v105)
    {
      v43 = [MEMORY[0x277CBEB68] null];
    }

    v98 = v43;
    v121[5] = v43;
    v120[6] = *MEMORY[0x277CFD258];
    v44 = [*(v128 + 5) ppid];
    v45 = v44;
    if (!v44)
    {
      v45 = [MEMORY[0x277CBEB68] null];
    }

    v97 = v45;
    v121[6] = v45;
    v120[7] = *MEMORY[0x277CFD268];
    v46 = [*(v128 + 5) regionCode];
    v47 = v46;
    if (!v46)
    {
      v47 = [MEMORY[0x277CBEB68] null];
    }

    v96 = v47;
    v121[7] = v47;
    v120[8] = *MEMORY[0x277CFD220];
    v48 = [*(v128 + 5) inductiveDeviceUID];
    v49 = v48;
    if (!v48)
    {
      v49 = [MEMORY[0x277CBEB68] null];
    }

    v121[8] = v49;
    v120[9] = *MEMORY[0x277CFD278];
    v50 = [*(v128 + 5) vendorID];
    v51 = v50;
    if (!v50)
    {
      v51 = [MEMORY[0x277CBEB68] null];
    }

    v121[9] = v51;
    v120[10] = *MEMORY[0x277CFD260];
    v52 = [*(v128 + 5) productID];
    v53 = v52;
    if (!v52)
    {
      v53 = [MEMORY[0x277CBEB68] null];
    }

    v121[10] = v53;
    v111 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v121 forKeys:v120 count:11];
    if (!v52)
    {
    }

    if (!v50)
    {
    }

    if (!v48)
    {
    }

    if (!v46)
    {
    }

    if (!v44)
    {
    }

    if (!v105)
    {
    }

    if (!v106)
    {
    }

    if (!v107)
    {
    }

    if (!v108)
    {
    }

    if (!v104)
    {
    }

    if (!v110)
    {
    }

    v54 = [*(v128 + 5) accessoryInfoLock];
    [v54 unlock];

    v55 = [*(v128 + 5) connectionUUID];
    NSLog(&cfstr_Accinfodiction.isa, v111, v55);

    v56 = [(ACCTransportIOAccessorySharedManager *)self delegate];
    [v56 setAccessoryInfo:v111 forEndpointWithUUID:v31];

    v57 = [*(v128 + 5) accessoryInfoLock];
    [v57 lock];

    v58 = [*(v128 + 5) inductiveLocalDeviceID];

    if (v58)
    {
      v118 = *MEMORY[0x277CFD2A8];
      v59 = [*(v128 + 5) inductiveLocalDeviceID];
      v119 = v59;
      v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v119 forKeys:&v118 count:1];

      v61 = [(ACCTransportIOAccessorySharedManager *)self delegate];
      v62 = [*(v128 + 5) connectionUUID];
      [v61 setProperties:v60 forConnectionWithUUID:v62];
    }

    [*(v128 + 5) updateInductiveInfo];
    v63 = [*(v128 + 5) accessoryInfoLock];
    [v63 unlock];

    v64 = [*(v128 + 5) eaProtocolChildPorts];
    v65 = [v64 count];

    v66 = [*(v128 + 5) oobPairingChildPorts];
    v67 = [v66 count];

    v68 = [*(v128 + 5) configStreamChildPorts];
    v69 = [v68 count];

    if (gLogObjects)
    {
      v70 = gNumLogObjects <= 1;
    }

    else
    {
      v70 = 1;
    }

    v71 = !v70;
    if (v65 || v67 || v69)
    {
      if (v71)
      {
        v73 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v73 = MEMORY[0x277D86220];
        v88 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
      {
        -[ACCTransportIOAccessorySharedManager IOAccessoryManagerServiceInfoSet:].cold.7(v122, [*(v128 + 5) ioService], v73);
      }
    }

    else
    {
      if (v71)
      {
        v72 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v72 = MEMORY[0x277D86220];
        v89 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        *v122 = 0;
        _os_log_impl(&dword_233656000, v72, OS_LOG_TYPE_DEFAULT, "Publishing connection with eACCEndpoint_Protocol_InternalInfo", v122, 2u);
      }

      v73 = [(ACCTransportIOAccessorySharedManager *)self delegate];
      v90 = [*(v128 + 5) connectionUUID];
      [v73 publishConnectionWithUUID:v90];
    }
  }

  else
  {
    if (v33)
    {
      v35 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v35 = MEMORY[0x277D86220];
      v87 = MEMORY[0x277D86220];
    }

    v111 = v35;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *v122 = 67109120;
      LODWORD(v123) = a3;
      _os_log_impl(&dword_233656000, v35, OS_LOG_TYPE_DEFAULT, "Failed to create endpointUUID for IOAccessoryManager info for service %d", v122, 8u);
    }
  }

  v91 = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [v91 unlock];

  _Block_object_dispose(buf, 8);
  v92 = *MEMORY[0x277D85DE8];
}

uint64_t __73__ACCTransportIOAccessorySharedManager_IOAccessoryManagerServiceInfoSet___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managerForIOAccessoryManagerService:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)IOAccessoryManagerResistorIDChanged:(int)a3 forManager:(id)a4
{
  v30[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(ACCTransportIOAccessorySharedManager *)self _portForManagerMatchingPrimaryPort:v6];
  v8 = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [v8 lock];

  if (v7)
  {
    v9 = [v7 ioAccPortEndpointUUID];

    if (v9)
    {
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v10 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v10 = MEMORY[0x277D86220];
        v15 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      v16 = [v6 connectionUUID];
      v17 = [v7 ioAccPortEndpointUUID];
      v25 = 138412546;
      v26 = v16;
      v27 = 2112;
      v28 = v17;
      _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_DEFAULT, "Already have a connection %@ and an endpoint %@ when handling resistorIDChanged...ignore it", &v25, 0x16u);
    }

    else
    {
      v11 = [(ACCTransportIOAccessorySharedManager *)self IOAccessoryPortArrived:v7 withEndpointProtocol:3 publish:1];
      v10 = v11;
      if (v11)
      {
        v12 = [v11 copy];
        [v7 setIoAccPortEndpointUUID:v12];
      }

      v13 = [v6 connectionUUID];

      if (!v13)
      {
        goto LABEL_24;
      }

      if (gLogObjects && gNumLogObjects >= 4)
      {
        v14 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v14 = MEMORY[0x277D86220];
        v18 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v6 connectionUUID];
        v25 = 138412290;
        v26 = v19;
        _os_log_impl(&dword_233656000, v14, OS_LOG_TYPE_DEFAULT, "SharedManager: Have a connection UUID %@, sending resistorID notification", &v25, 0xCu);
      }

      v16 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
      v29[0] = *MEMORY[0x277CFD178];
      v20 = [v6 connectionUUID];
      v29[1] = *MEMORY[0x277CFD190];
      v30[0] = v20;
      v30[1] = v16;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];

      v22 = [MEMORY[0x277CCAB98] defaultCenter];
      [v22 postNotificationName:*MEMORY[0x277CFD198] object:0 userInfo:v21];
    }

LABEL_24:
  }

  v23 = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [v23 unlock];

  v24 = *MEMORY[0x277D85DE8];
}

void __72__ACCTransportIOAccessorySharedManager_IOAccessoryAuthCPServiceArrived___block_invoke_134(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 96);
  v2 = [[DeferredAuthCPServiceWrapper alloc] initWithIOService:*(a1 + 48) withMgr:*(a1 + 40)];
  [v1 addObject:v2];
}

void __75__ACCTransportIOAccessorySharedManager_IOAccessoryAuthCPServiceTerminated___block_invoke_139(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(*(a1 + 32) + 96);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        if ([v7 service] == *(a1 + 40))
        {
          [*(*(a1 + 32) + 96) removeObject:v7];
          IOObjectRelease(*(a1 + 40));
          if (gLogObjects && gNumLogObjects >= 2)
          {
            v8 = *(gLogObjects + 8);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCTransportIOAccessoryOOBPairing dealloc];
            }

            v8 = MEMORY[0x277D86220];
            v9 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v10 = *(a1 + 40);
            v11 = [*(*(a1 + 32) + 96) count];
            *buf = 67109376;
            v18 = v10;
            v19 = 2048;
            v20 = v11;
            _os_log_impl(&dword_233656000, v8, OS_LOG_TYPE_DEFAULT, "Removing dangling deferred AuthCP service %d due to service termination.  Remaining array count = %lu", buf, 0x12u);
          }

          goto LABEL_19;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_IOAccessoryPortDetachInternal:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 ioAccPortEndpointUUID];
  if (v5 && (v6 = v5, [(ACCTransportIOAccessorySharedManager *)self delegate], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = [v4 ioAccPortEndpointUUID];
    v9 = [v8 copy];

    if (gLogObjects && gNumLogObjects >= 2)
    {
      v10 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 138412290;
      v31 = v9;
      _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_DEFAULT, "IOAccessoryPortDetachInternal: remove endpointUUID %@", &v30, 0xCu);
    }

    if (v9 && (-[ACCTransportIOAccessorySharedManager delegate](self, "delegate"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 destroyEndpointWithUUID:v9], v14, v15))
    {
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v16 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v16 = MEMORY[0x277D86220];
        v20 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v30 = 138412290;
        v31 = v9;
        _os_log_impl(&dword_233656000, v16, OS_LOG_TYPE_DEFAULT, "Successfully sent io accessory port detach for endpointToRemove %@", &v30, 0xCu);
      }

      v17 = [(ACCTransportIOAccessorySharedManager *)self _managerForBase:v4];
      [v4 setIoAccPortEndpointUUID:0];
      [v4 setIoAccPortParentConnectionUUID:0];
      v21 = [v17 connectionUUID];
      if (v21)
      {
        v22 = v21;
        v23 = [v17 connectionUUID];
        v24 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUIDHasActiveEndpoint:v23];

        if (!v24)
        {
          if (gLogObjects && gNumLogObjects >= 2)
          {
            v25 = *(gLogObjects + 8);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCTransportIOAccessoryOOBPairing dealloc];
            }

            v25 = MEMORY[0x277D86220];
            v26 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v27 = [v17 connectionUUID];
            v30 = 138412290;
            v31 = v27;
            _os_log_impl(&dword_233656000, v25, OS_LOG_TYPE_DEFAULT, "No active endpoint for IOAccessoryPort, remove connectionUUID %@", &v30, 0xCu);
          }

          v28 = [(ACCTransportIOAccessorySharedManager *)self delegate];
          v29 = [v17 connectionUUID];
          [v28 destroyConnectionWithUUID:v29];

          [v17 setConnectionUUID:0];
          [(ACCTransportIOAccessorySharedManager *)self _clearChildPortEndpointsForManagerDisconnection:v17];
        }
      }
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v17 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v17 = MEMORY[0x277D86220];
        v18 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessorySharedManager _IOAccessoryPortDetachInternal:];
      }
    }
  }

  else
  {
    if (gLogObjects)
    {
      v11 = gNumLogObjects < 2;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v9 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    else
    {
      v9 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 67109120;
      LODWORD(v31) = [v4 ioService];
      _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_DEFAULT, "No active endpointUUID for IOAccessoryPort service %d", &v30, 8u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)IOAccessoryPortDetach:(id)a3
{
  v4 = a3;
  v5 = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [v5 lock];

  [(ACCTransportIOAccessorySharedManager *)self _IOAccessoryPortDetachInternal:v4];
  v6 = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [v6 unlock];
}

- (BOOL)IOAccessoryPortDataArrived:(id)a3 endpointUUID:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (gLogSignpostObjects)
  {
    v8 = gNumLogSignpostObjects < 4;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessorySharedManager transmitData:forEndpointUUID:];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogSignpostObjects + 24);
  }

  v11 = [v7 hash];
  if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v11;
    if (os_signpost_enabled(v10))
    {
      v31 = 138412546;
      v32 = v7;
      v33 = 2048;
      v34 = [v6 length];
      _os_signpost_emit_with_name_impl(&dword_233656000, v10, OS_SIGNPOST_EVENT, v12, "Endpoint RECV", "Received incoming data! %@, %lu bytes", &v31, 0x16u);
    }
  }

  v13 = [v7 hash];
  v14 = [v6 hash];
  v15 = v14 ^ v13;
  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v16 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessorySharedManager transmitData:forEndpointUUID:];
    }

    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  v18 = v13 == v14 || v15 == -1;
  v19 = !v18;
  if (!v18 && os_signpost_enabled(v16))
  {
    v20 = [v6 length];
    v31 = 138412546;
    v32 = v7;
    v33 = 2048;
    v34 = v20;
    _os_signpost_emit_with_name_impl(&dword_233656000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v15, "Endpoint RECV", "Received incoming data! %@, %lu bytes", &v31, 0x16u);
  }

  v21 = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [v21 lock];

  v22 = [(ACCTransportIOAccessorySharedManager *)self delegate];

  if (v22)
  {
    v23 = [(ACCTransportIOAccessorySharedManager *)self delegate];
    LODWORD(v22) = [v23 processIncomingData:v6 forEndpointWithUUID:v7];
  }

  v24 = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [v24 unlock];

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v25 = *(gLogSignpostObjects + 24);
    if (!v19)
    {
      goto LABEL_41;
    }

    goto LABEL_36;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [ACCTransportIOAccessorySharedManager transmitData:forEndpointUUID:];
  }

  v25 = MEMORY[0x277D86220];
  v26 = MEMORY[0x277D86220];
  if (v19)
  {
LABEL_36:
    if (os_signpost_enabled(v25))
    {
      if (v22)
      {
        v27 = "SUCCESS";
      }

      else
      {
        v27 = "ERROR";
      }

      v28 = [v6 length];
      v31 = 136315650;
      v32 = v27;
      v33 = 2112;
      v34 = v7;
      v35 = 2048;
      v36 = v28;
      _os_signpost_emit_with_name_impl(&dword_233656000, v25, OS_SIGNPOST_INTERVAL_END, v15, "Endpoint RECV", "%s handling Received incoming data! %@, %lu bytes", &v31, 0x20u);
    }
  }

LABEL_41:

  v29 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)IOAccessoryPortPropertyChanged:(id)a3
{
  *&v23[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [v5 lock];

  v6 = -[ACCTransportIOAccessorySharedManager _managerForIOService:shouldCreateNewService:](self, "_managerForIOService:shouldCreateNewService:", [v4 ioService], 1);
  v7 = v6;
  if (gLogObjects)
  {
    v8 = gNumLogObjects <= 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v6)
  {
    if (v9)
    {
      v11 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v11 = MEMORY[0x277D86220];
      v19 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 67109376;
      v23[0] = [v4 ioService];
      LOWORD(v23[1]) = 1024;
      *(&v23[1] + 2) = [v4 portIDNumber];
      _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_DEFAULT, "Didn't find existing manager for property change IOAccessoryPortService %d, portID %d", &v22, 0xEu);
    }

    goto LABEL_39;
  }

  if (v9)
  {
    v10 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v10 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 67109376;
    v23[0] = [v7 ioService];
    LOWORD(v23[1]) = 1024;
    *(&v23[1] + 2) = [v4 ioService];
    _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_DEFAULT, "Found manager with service %d for property change IOAccessoryPort service %d, will remove from its child ports", &v22, 0xEu);
  }

  [v7 removeIOAccessoryChildPort:v4];
  if (gLogObjects && gNumLogObjects >= 2)
  {
    v13 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v13 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v4 ioAccPortParentConnectionUUID];
    v22 = 138412290;
    *v23 = v15;
    _os_log_impl(&dword_233656000, v13, OS_LOG_TYPE_DEFAULT, "Current parent connectionUUID for port is %@", &v22, 0xCu);
  }

  v16 = [v4 ioAccPortParentConnectionUUID];

  if (v16)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v11 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v11 = MEMORY[0x277D86220];
      v17 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v4 ioAccPortEndpointUUID];
      v22 = 138412290;
      *v23 = v18;
      _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_DEFAULT, "Current endpointUUID for port is %@", &v22, 0xCu);
    }

LABEL_39:
  }

  [(ACCTransportIOAccessorySharedManager *)self _addACCTransportToManager:v4];
  v20 = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [v20 unlock];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)IOAccessoryPortPublish:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [v5 lock];

  v6 = -[ACCTransportIOAccessorySharedManager _managerForIOService:shouldCreateNewService:](self, "_managerForIOService:shouldCreateNewService:", [v4 ioService], 1);
  if (v6)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v7 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v7 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v15[0] = 67109376;
      v15[1] = [v6 ioService];
      v16 = 1024;
      v17 = [v4 ioService];
      _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_DEFAULT, "Found manager with service %d for property change IOAccessoryPort service %d, will publish", v15, 0xEu);
    }

    v9 = [(ACCTransportIOAccessorySharedManager *)self delegate];

    if (v9)
    {
      v10 = [(ACCTransportIOAccessorySharedManager *)self delegate];
      v11 = [v6 connectionUUID];
      [v10 publishConnectionWithUUID:v11];
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v10 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v10 = MEMORY[0x277D86220];
        v12 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15[0]) = 0;
        _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_INFO, "Can't find delegate for ACCTransportIOAccessoryPortProtocol skip Publish", v15, 2u);
      }
    }
  }

  v13 = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [v13 unlock];

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)IOAccessoryEADataArrived:(id)a3 eaEndpointUUID:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (gLogSignpostObjects)
  {
    v8 = gNumLogSignpostObjects < 4;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessorySharedManager transmitData:forEndpointUUID:];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogSignpostObjects + 24);
  }

  v11 = [v7 hash];
  if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v11;
    if (os_signpost_enabled(v10))
    {
      v30 = 138412546;
      v31 = v7;
      v32 = 2048;
      v33 = [v6 length];
      _os_signpost_emit_with_name_impl(&dword_233656000, v10, OS_SIGNPOST_EVENT, v12, "Endpoint RECV", "Received incoming EA data! %@, %lu bytes", &v30, 0x16u);
    }
  }

  v13 = [v7 hash];
  v14 = [v6 hash];
  v15 = v14 ^ v13;
  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v16 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessorySharedManager transmitData:forEndpointUUID:];
    }

    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  v18 = v13 == v14 || v15 == -1;
  v19 = !v18;
  if (!v18 && os_signpost_enabled(v16))
  {
    v20 = [v6 length];
    v30 = 138412546;
    v31 = v7;
    v32 = 2048;
    v33 = v20;
    _os_signpost_emit_with_name_impl(&dword_233656000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v15, "Endpoint RECV", "Received incoming EA data! %@, %lu bytes", &v30, 0x16u);
  }

  v21 = [(ACCTransportIOAccessorySharedManager *)self delegate];

  if (v21)
  {
    v22 = [(ACCTransportIOAccessorySharedManager *)self delegate];
    v23 = [v22 processIncomingData:v6 forEndpointWithUUID:v7];
  }

  else
  {
    v23 = 0;
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v24 = *(gLogSignpostObjects + 24);
    if (!v19)
    {
      goto LABEL_42;
    }

    goto LABEL_37;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [ACCTransportIOAccessorySharedManager transmitData:forEndpointUUID:];
  }

  v24 = MEMORY[0x277D86220];
  v25 = MEMORY[0x277D86220];
  if (v19)
  {
LABEL_37:
    if (os_signpost_enabled(v24))
    {
      if (v23)
      {
        v26 = "SUCCESS";
      }

      else
      {
        v26 = "ERROR";
      }

      v27 = [v6 length];
      v30 = 136315650;
      v31 = v26;
      v32 = 2112;
      v33 = v7;
      v34 = 2048;
      v35 = v27;
      _os_signpost_emit_with_name_impl(&dword_233656000, v24, OS_SIGNPOST_INTERVAL_END, v15, "Endpoint RECV", "%s handling Received incoming EA data! %@, %lu bytes", &v30, 0x20u);
    }
  }

LABEL_42:

  v28 = *MEMORY[0x277D85DE8];
  return v23;
}

- (BOOL)IOAccessoryOOBPairingInfoArrived:(id)a3 endpointUUID:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (gLogSignpostObjects)
  {
    v8 = gNumLogSignpostObjects < 4;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessorySharedManager transmitData:forEndpointUUID:];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogSignpostObjects + 24);
  }

  v11 = [v7 hash];
  if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v11;
    if (os_signpost_enabled(v10))
    {
      v30 = 138412546;
      v31 = v7;
      v32 = 2048;
      v33 = [v6 length];
      _os_signpost_emit_with_name_impl(&dword_233656000, v10, OS_SIGNPOST_EVENT, v12, "Endpoint RECV", "Received incoming OOBPairingInfo data! %@, %lu bytes", &v30, 0x16u);
    }
  }

  v13 = [v7 hash];
  v14 = [v6 hash];
  v15 = v14 ^ v13;
  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v16 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessorySharedManager transmitData:forEndpointUUID:];
    }

    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  v18 = v13 == v14 || v15 == -1;
  v19 = !v18;
  if (!v18 && os_signpost_enabled(v16))
  {
    v20 = [v6 length];
    v30 = 138412546;
    v31 = v7;
    v32 = 2048;
    v33 = v20;
    _os_signpost_emit_with_name_impl(&dword_233656000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v15, "Endpoint RECV", "Received incoming OOBPairingInfo data! %@, %lu bytes", &v30, 0x16u);
  }

  v21 = [(ACCTransportIOAccessorySharedManager *)self delegate];

  if (v21)
  {
    v22 = [(ACCTransportIOAccessorySharedManager *)self delegate];
    v23 = [v22 processIncomingData:v6 forEndpointWithUUID:v7];
  }

  else
  {
    v23 = 0;
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v24 = *(gLogSignpostObjects + 24);
    if (!v19)
    {
      goto LABEL_42;
    }

    goto LABEL_37;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [ACCTransportIOAccessorySharedManager transmitData:forEndpointUUID:];
  }

  v24 = MEMORY[0x277D86220];
  v25 = MEMORY[0x277D86220];
  if (v19)
  {
LABEL_37:
    if (os_signpost_enabled(v24))
    {
      if (v23)
      {
        v26 = "SUCCESS";
      }

      else
      {
        v26 = "ERROR";
      }

      v27 = [v6 length];
      v30 = 136315650;
      v31 = v26;
      v32 = 2112;
      v33 = v7;
      v34 = 2048;
      v35 = v27;
      _os_signpost_emit_with_name_impl(&dword_233656000, v24, OS_SIGNPOST_INTERVAL_END, v15, "Endpoint RECV", "%s handling Received incoming OOBPairingInfo data! %@, %lu bytes", &v30, 0x20u);
    }
  }

LABEL_42:

  v28 = *MEMORY[0x277D85DE8];
  return v23;
}

- (BOOL)IOAccessoryOOBPairingDataArrived:(id)a3 endpointUUID:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (gLogSignpostObjects)
  {
    v8 = gNumLogSignpostObjects < 4;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessorySharedManager transmitData:forEndpointUUID:];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogSignpostObjects + 24);
  }

  v11 = [v7 hash];
  if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v11;
    if (os_signpost_enabled(v10))
    {
      v30 = 138412546;
      v31 = v7;
      v32 = 2048;
      v33 = [v6 length];
      _os_signpost_emit_with_name_impl(&dword_233656000, v10, OS_SIGNPOST_EVENT, v12, "Endpoint RECV", "Received incoming OOBPairingData data! %@, %lu bytes", &v30, 0x16u);
    }
  }

  v13 = [v7 hash];
  v14 = [v6 hash];
  v15 = v14 ^ v13;
  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v16 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessorySharedManager transmitData:forEndpointUUID:];
    }

    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  v18 = v13 == v14 || v15 == -1;
  v19 = !v18;
  if (!v18 && os_signpost_enabled(v16))
  {
    v20 = [v6 length];
    v30 = 138412546;
    v31 = v7;
    v32 = 2048;
    v33 = v20;
    _os_signpost_emit_with_name_impl(&dword_233656000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v15, "Endpoint RECV", "Received incoming OOBPairingData data! %@, %lu bytes", &v30, 0x16u);
  }

  v21 = [(ACCTransportIOAccessorySharedManager *)self delegate];

  if (v21)
  {
    v22 = [(ACCTransportIOAccessorySharedManager *)self delegate];
    v23 = [v22 processIncomingData:v6 forEndpointWithUUID:v7];
  }

  else
  {
    v23 = 0;
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v24 = *(gLogSignpostObjects + 24);
    if (!v19)
    {
      goto LABEL_42;
    }

    goto LABEL_37;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [ACCTransportIOAccessorySharedManager transmitData:forEndpointUUID:];
  }

  v24 = MEMORY[0x277D86220];
  v25 = MEMORY[0x277D86220];
  if (v19)
  {
LABEL_37:
    if (os_signpost_enabled(v24))
    {
      if (v23)
      {
        v26 = "SUCCESS";
      }

      else
      {
        v26 = "ERROR";
      }

      v27 = [v6 length];
      v30 = 136315650;
      v31 = v26;
      v32 = 2112;
      v33 = v7;
      v34 = 2048;
      v35 = v27;
      _os_signpost_emit_with_name_impl(&dword_233656000, v24, OS_SIGNPOST_INTERVAL_END, v15, "Endpoint RECV", "%s handling Received incoming OOBPairingData data! %@, %lu bytes", &v30, 0x20u);
    }
  }

LABEL_42:

  v28 = *MEMORY[0x277D85DE8];
  return v23;
}

- (BOOL)IOAccessoryOOBPairingDataStartedForEndpointUUID:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 2;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_233656000, v6, OS_LOG_TYPE_DEFAULT, "IOAccessoryOOBPairingDataStartedForEndpointUUID: %@", &v9, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)IOAccessoryOOBPairingDataFinishedForEndpointUUID:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v4;
    _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_DEFAULT, "IOAccessoryOOBPairingDataFinishedForEndpointUUID: %@", buf, 0xCu);
  }

  v8 = [(ACCTransportIOAccessorySharedManager *)self _basePortForEndpointUUID:v4];
  v9 = v8;
  if (v8 && [v8 ioServiceClassType] == 4)
  {
    v10 = [(ACCTransportIOAccessorySharedManager *)self _managerForBase:v9];
    if (v10)
    {
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v11 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v11 = MEMORY[0x277D86220];
        v12 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v10 needsOOBPairing];
        *buf = 138412546;
        v21 = v10;
        v22 = 1024;
        v23 = v13;
        _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_DEFAULT, "accMgrInstance=%@ OOBPairing finished. Reset needsOOBPairing, current %d", buf, 0x12u);
      }

      [v10 setNeedsOOBPairing:0];
    }
  }

  else
  {
    v10 = 0;
  }

  listQ = self->_listQ;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __89__ACCTransportIOAccessorySharedManager_IOAccessoryOOBPairingDataFinishedForEndpointUUID___block_invoke;
  v18[3] = &unk_2789E8900;
  v18[4] = self;
  v19 = v10;
  v15 = v10;
  dispatch_async(listQ, v18);

  v16 = *MEMORY[0x277D85DE8];
  return 1;
}

void __89__ACCTransportIOAccessorySharedManager_IOAccessoryOOBPairingDataFinishedForEndpointUUID___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v3 = *(*(a1 + 32) + 96);
  v4 = [v3 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v30;
    v8 = MEMORY[0x277D86220];
    *&v5 = 134218240;
    v24 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = [v10 mgr];
        v12 = *(a1 + 40);

        if (v11 == v12)
        {
          v13 = gLogObjects;
          v14 = gNumLogObjects;
          if (gLogObjects)
          {
            v15 = gNumLogObjects < 2;
          }

          else
          {
            v15 = 1;
          }

          if (v15)
          {
            if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              *buf = v24;
              v35 = v13;
              v36 = 1024;
              v37 = v14;
              _os_log_error_impl(&dword_233656000, v8, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v16 = v8;
            v17 = v8;
          }

          else
          {
            v17 = *(gLogObjects + 8);
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = *(a1 + 40);
            v19 = [v10 service];
            *buf = 138412546;
            v35 = v18;
            v36 = 1024;
            v37 = v19;
            _os_log_impl(&dword_233656000, v17, OS_LOG_TYPE_DEFAULT, "accMgrInstance=%@ OOBPairing finished. Found deferred AuthCP service %d, remove it from deferral list", buf, 0x12u);
          }

          [v2 addObject:v10];
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v6);
  }

  [*(*(a1 + 32) + 96) removeObjectsInArray:v2];
  if ([v2 count])
  {
    v20 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __89__ACCTransportIOAccessorySharedManager_IOAccessoryOOBPairingDataFinishedForEndpointUUID___block_invoke_160;
    block[3] = &unk_2789E87F8;
    v26 = v2;
    v21 = *(a1 + 40);
    v22 = *(a1 + 32);
    v27 = v21;
    v28 = v22;
    dispatch_async(v20, block);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __89__ACCTransportIOAccessorySharedManager_IOAccessoryOOBPairingDataFinishedForEndpointUUID___block_invoke_160(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v18;
    v5 = MEMORY[0x277D86220];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = gLogObjects;
        v9 = gNumLogObjects;
        if (gLogObjects)
        {
          v10 = gNumLogObjects < 2;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v23 = v8;
            v24 = 1024;
            v25 = v9;
            _os_log_error_impl(&dword_233656000, v5, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v11 = v5;
          v12 = v5;
        }

        else
        {
          v12 = *(gLogObjects + 8);
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(a1 + 40);
          v14 = [v7 service];
          *buf = 138412546;
          v23 = v13;
          v24 = 1024;
          v25 = v14;
          _os_log_impl(&dword_233656000, v12, OS_LOG_TYPE_DEFAULT, "accMgrInstance=%@ OOBPairing finished. Processing deferred AuthCP service %d", buf, 0x12u);
        }

        [*(a1 + 48) IOAccessoryAuthCPServiceArrived:{objc_msgSend(v7, "service")}];
        IOObjectRelease([v7 service]);
      }

      v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v3);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)IOAccessoryConfigStreamUpdateAccesssoryInfo:(id)a3
{
  v24[7] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23[0] = *MEMORY[0x277CFD250];
  v5 = [v4 deviceName];
  v24[0] = v5;
  v23[1] = *MEMORY[0x277CFD240];
  v6 = [v4 deviceManufacturer];
  v24[1] = v6;
  v23[2] = *MEMORY[0x277CFD248];
  v7 = [v4 deviceModel];
  v24[2] = v7;
  v23[3] = *MEMORY[0x277CFD270];
  v8 = [v4 deviceSerialNumber];
  v24[3] = v8;
  v23[4] = *MEMORY[0x277CFD238];
  v9 = [v4 deviceHardwareVersion];
  v24[4] = v9;
  v23[5] = *MEMORY[0x277CFD230];
  v10 = [v4 deviceFirmwareVersion];
  v24[5] = v10;
  v23[6] = *MEMORY[0x277CFD258];
  v11 = [v4 devicePPID];
  v24[6] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:7];

  v13 = [v4 endpointUUID];
  if (gLogObjects && gNumLogObjects >= 2)
  {
    v14 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v14 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v18[0] = 67109634;
    v18[1] = [v4 ioService];
    v19 = 2112;
    v20 = v13;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&dword_233656000, v14, OS_LOG_TYPE_INFO, "setAccessoryInfo for ConfigStream service %d, endpointUUID %@, accInfo %@", v18, 0x1Cu);
  }

  v16 = [(ACCTransportIOAccessorySharedManager *)self delegate];
  [v16 setAccessoryInfo:v12 forEndpointWithUUID:v13];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)IOAccessoryConfigStreamMessageArrived:(id)a3 endpointUUID:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (gLogSignpostObjects)
  {
    v8 = gNumLogSignpostObjects < 4;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessorySharedManager transmitData:forEndpointUUID:];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogSignpostObjects + 24);
  }

  v11 = [v7 hash];
  if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v11;
    if (os_signpost_enabled(v10))
    {
      v29 = 138412546;
      v30 = v7;
      v31 = 2048;
      v32 = [v6 length];
      _os_signpost_emit_with_name_impl(&dword_233656000, v10, OS_SIGNPOST_EVENT, v12, "Endpoint RECV", "Received incoming ConfigStream data! %@, %lu bytes", &v29, 0x16u);
    }
  }

  v13 = [v7 hash];
  v14 = [v6 hash];
  v15 = v14 ^ v13;
  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v16 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessorySharedManager transmitData:forEndpointUUID:];
    }

    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  v18 = v13 == v14 || v15 == -1;
  v19 = !v18;
  if (!v18 && os_signpost_enabled(v16))
  {
    v20 = [v6 length];
    v29 = 138412546;
    v30 = v7;
    v31 = 2048;
    v32 = v20;
    _os_signpost_emit_with_name_impl(&dword_233656000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v15, "Endpoint RECV", "Received incoming ConfigStream data! %@, %lu bytes", &v29, 0x16u);
  }

  v21 = [(ACCTransportIOAccessorySharedManager *)self delegate];

  v22 = "ERROR";
  if (v21)
  {
    v23 = [(ACCTransportIOAccessorySharedManager *)self delegate];
    v24 = [v23 processIncomingData:v6 forEndpointWithUUID:v7];

    if (v24)
    {
      v22 = "SUCCESS";
    }
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v25 = *(gLogSignpostObjects + 24);
    if (!v19)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [ACCTransportIOAccessorySharedManager transmitData:forEndpointUUID:];
  }

  v25 = MEMORY[0x277D86220];
  v26 = MEMORY[0x277D86220];
  if (v19)
  {
LABEL_37:
    if (os_signpost_enabled(v25))
    {
      v27 = [v6 length];
      v29 = 136315650;
      v30 = v22;
      v31 = 2112;
      v32 = v7;
      v33 = 2048;
      v34 = v27;
      _os_signpost_emit_with_name_impl(&dword_233656000, v25, OS_SIGNPOST_INTERVAL_END, v15, "Endpoint RECV", "%s handling Received incoming ConfigStream data! %@, %lu bytes", &v29, 0x20u);
    }
  }

LABEL_39:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)resetLightningBusForEndpointWithUUID:(id)a3
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = a3;
  connect = 0;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v66 = v4;
    _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_DEFAULT, "Resetting lightning bus for endpoint %@...", buf, 0xCu);
  }

  v8 = [(ACCTransportIOAccessorySharedManager *)self delegate];

  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = [(ACCTransportIOAccessorySharedManager *)self delegate];
  v10 = [(ACCTransportIOAccessorySharedManager *)self delegate];
  v11 = [v10 connectionUUIDForEndpointWithUUID:v4];
  v12 = [v9 connectionTypeForConnectionWithUUID:v11];

  if (v12 != 1)
  {
LABEL_16:
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v16 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v16 = MEMORY[0x277D86220];
      v22 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessorySharedManager resetLightningBusForEndpointWithUUID:];
    }

    ManagerPrimaryPort = 0;
    goto LABEL_178;
  }

  v13 = [(ACCTransportIOAccessorySharedManager *)self delegate];

  if (v13)
  {
    v14 = [(ACCTransportIOAccessorySharedManager *)self delegate];
    v15 = [v14 transportTypeForEndpointWithUUID:v4];
  }

  else
  {
    v15 = 18;
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v17 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v17 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [ACCTransportIOAccessorySharedManager resetLightningBusForEndpointWithUUID:];
  }

  v19 = [(ACCTransportIOAccessorySharedManager *)self _managerForBaseEndpointUUID:v4];
  v16 = v19;
  if (!v19)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v21 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v21 = MEMORY[0x277D86220];
      v23 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_233656000, v21, OS_LOG_TYPE_DEFAULT, "Could not find endpoint, falling back to most downstream port...", buf, 2u);
    }

    ServiceWithPort = IOAccessoryPortGetServiceWithPort();
    if (ServiceWithPort)
    {
      v25 = ServiceWithPort;
      ManagerPrimaryPort = IOAccessoryPortGetManagerPrimaryPort();
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v26 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v26 = MEMORY[0x277D86220];
        v27 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v66) = ManagerPrimaryPort;
        _os_log_impl(&dword_233656000, v26, OS_LOG_TYPE_INFO, "primaryPortNumber: %d", buf, 8u);
      }

      if (ManagerPrimaryPort)
      {
        ManagerPrimaryPort = IOAccessoryManagerGetServiceWithPrimaryPort();
      }

      IOObjectRelease(v25);
      if (!ManagerPrimaryPort)
      {
        goto LABEL_169;
      }

      goto LABEL_58;
    }

LABEL_49:
    ManagerPrimaryPort = 0;
LABEL_169:

LABEL_170:
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v16 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v16 = MEMORY[0x277D86220];
      v62 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessorySharedManager resetLightningBusForEndpointWithUUID:];
    }

    goto LABEL_178;
  }

  if (![v19 ioService])
  {
    goto LABEL_49;
  }

  ManagerPrimaryPort = [v16 ioService];
  IOObjectRetain(ManagerPrimaryPort);
  if (!ManagerPrimaryPort)
  {
    goto LABEL_169;
  }

LABEL_58:
  if (IOServiceOpen(ManagerPrimaryPort, *MEMORY[0x277D85F48], 0, &connect))
  {
    goto LABEL_169;
  }

  v28 = v15 & 0xFFFFFFF7;
  if (gLogObjects && gNumLogObjects >= 2)
  {
    v29 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v29 = MEMORY[0x277D86220];
    v30 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v66) = 1250;
    _os_log_impl(&dword_233656000, v29, OS_LOG_TYPE_DEFAULT, "Toggling lightning bus for %dms...", buf, 8u);
  }

  if (v28)
  {
    v31 = 1;
  }

  else
  {
    USBConnectType = IOAccessoryManagerGetUSBConnectType();
    if (USBConnectType)
    {
      [ACCTransportIOAccessorySharedManager resetLightningBusForEndpointWithUUID:?];
LABEL_178:

      goto LABEL_179;
    }

    if (gLogObjects && gNumLogObjects >= 2)
    {
      v33 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v33 = MEMORY[0x277D86220];
      v34 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v66) = -1;
      _os_log_impl(&dword_233656000, v33, OS_LOG_TYPE_INFO, "Current USB Connection Type: %d", buf, 8u);
    }

    if (gLogObjects && gNumLogObjects >= 2)
    {
      v35 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v35 = MEMORY[0x277D86220];
      v36 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v66) = 0;
      _os_log_impl(&dword_233656000, v35, OS_LOG_TYPE_INFO, "Current USB Connection Active: %d", buf, 8u);
    }

    if (gLogObjects && gNumLogObjects >= 2)
    {
      v37 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v37 = MEMORY[0x277D86220];
      v38 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_233656000, v37, OS_LOG_TYPE_INFO, "Disabling USB...", buf, 2u);
    }

    v39 = IOAccessoryManagerConfigureUSBMode();
    v31 = v39 == 0;
    if (v39)
    {
      v40 = v39;
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v41 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v41 = MEMORY[0x277D86220];
        v42 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessorySharedManager resetLightningBusForEndpointWithUUID:v40];
      }
    }
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v43 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v43 = MEMORY[0x277D86220];
    v44 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_233656000, v43, OS_LOG_TYPE_DEFAULT, "Disabling accessory power...", buf, 2u);
  }

  v45 = IOAccessoryManagerConfigurePower();
  if (v45)
  {
    v46 = v45;
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v47 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v47 = MEMORY[0x277D86220];
      v48 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessorySharedManager resetLightningBusForEndpointWithUUID:v46];
    }

    v31 = 0;
  }

  usleep(0x1312D0u);
  if (!v28)
  {
    v49 = IOAccessoryManagerConfigureUSBMode();
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v50 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v50 = MEMORY[0x277D86220];
      v51 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_233656000, v50, OS_LOG_TYPE_INFO, "Enabling USB...", buf, 2u);
    }

    if (gLogObjects && gNumLogObjects >= 2)
    {
      v52 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v52 = MEMORY[0x277D86220];
      v53 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v66) = 4;
      _os_log_impl(&dword_233656000, v52, OS_LOG_TYPE_INFO, "USB mode: %d", buf, 8u);
    }

    if (v49)
    {
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v54 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v54 = MEMORY[0x277D86220];
        v55 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessorySharedManager resetLightningBusForEndpointWithUUID:v49];
      }

      v31 = 0;
    }
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v56 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v56 = MEMORY[0x277D86220];
    v57 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_233656000, v56, OS_LOG_TYPE_DEFAULT, "Enabling accessory power...", buf, 2u);
  }

  v58 = IOAccessoryManagerConfigurePower();
  if (v58)
  {
    v59 = v58;
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v60 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v60 = MEMORY[0x277D86220];
      v61 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessorySharedManager resetLightningBusForEndpointWithUUID:v59];
    }

    goto LABEL_169;
  }

  if (!v31)
  {
    goto LABEL_170;
  }

LABEL_179:
  if (connect)
  {
    IOServiceClose(connect);
  }

  if (ManagerPrimaryPort)
  {
    IOObjectRelease(ManagerPrimaryPort);
  }

  v63 = *MEMORY[0x277D85DE8];
}

uint64_t __53__ACCTransportIOAccessorySharedManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

+ (id)IOAccessoryClassStringForIOAccessoryClassType:(int)a3
{
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        v3 = MEMORY[0x277CCACA8];
        v4 = "AppleAuthCP";
        goto LABEL_17;
      case 4:
        v3 = MEMORY[0x277CCACA8];
        v4 = "IOAccessoryOOBPairingInterface";
        goto LABEL_17;
      case 6:
        v3 = MEMORY[0x277CCACA8];
        v4 = "IOAccessoryConfigStreamInterface";
        goto LABEL_17;
    }
  }

  else
  {
    switch(a3)
    {
      case 0:
        v3 = MEMORY[0x277CCACA8];
        v4 = "IOAccessoryManager";
        goto LABEL_17;
      case 1:
        v3 = MEMORY[0x277CCACA8];
        v4 = "IOAccessoryPort";
        goto LABEL_17;
      case 2:
        v3 = MEMORY[0x277CCACA8];
        v4 = "IOAccessoryEAInterface";
LABEL_17:
        v6 = [v3 stringWithUTF8String:v4];
        goto LABEL_18;
    }
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v5 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v5 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    +[ACCTransportIOAccessorySharedManager IOAccessoryClassStringForIOAccessoryClassType:];
  }

  v6 = 0;
LABEL_18:

  return v6;
}

+ (int)IOAccessoryClassTypeForIOAccessoryClassString:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"IOAccessoryManager"];
  v5 = [v3 isEqualToString:v4];

  if ((v5 & 1) == 0)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"IOAccessoryPort"];
    v8 = [v3 isEqualToString:v7];

    if (v8)
    {
      v6 = 1;
      goto LABEL_11;
    }

    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"IOAccessoryEAInterface"];
    v10 = [v3 isEqualToString:v9];

    if (v10)
    {
      v6 = 2;
      goto LABEL_11;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AppleAuthCP"];
    v12 = [v3 isEqualToString:v11];

    if (v12)
    {
      v6 = 3;
      goto LABEL_11;
    }

    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"IOAccessoryConfigStreamInterface"];
    v14 = [v3 isEqualToString:v13];

    if (v14)
    {
      v6 = 6;
      goto LABEL_11;
    }

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v17 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v17 = MEMORY[0x277D86220];
      v18 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = v3;
      _os_log_impl(&dword_233656000, v17, OS_LOG_TYPE_INFO, "Unknown classString %@", &v19, 0xCu);
    }
  }

  v6 = 0;
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_createModuleConnectionAndEndpoint:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([v5 accConnectionType] == 7)
  {
    v6 = [v5 representsInternalModule] - 1;
    if (v6 <= 3)
    {
      v7 = off_2789E9270[v6];
      v8 = dword_2336C0340[v6];
      [(ACCTransportIOAccessorySharedManager *)self delegate];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_19() accConnectionType];
      v9 = [OUTLINED_FUNCTION_18() createConnectionWithType:? andIdentifier:?];

      v10 = -[ACCTransportIOAccessorySharedManager managerForIOAccessoryManagerService:](self, "managerForIOAccessoryManagerService:", [v5 upstreamManagerService]);

      if (v10)
      {
        [(ACCTransportIOAccessorySharedManager *)self delegate];
        objc_claimAutoreleasedReturnValue();
        v11 = -[ACCTransportIOAccessorySharedManager managerForIOAccessoryManagerService:](self, "managerForIOAccessoryManagerService:", [OUTLINED_FUNCTION_19() upstreamManagerService]);
        [v11 supervisedTransportsRestricted];
        [OUTLINED_FUNCTION_18() setSupervisedTransportsRestricted:? forConnectionWithUUID:?];
      }

      if (v9)
      {
        v12 = [(ACCTransportIOAccessorySharedManager *)self delegate];
        v13 = [(__CFString *)v9 copy];
        v14 = [v12 createEndpointWithTransportType:v8 andProtocol:2 andIdentifier:0 forConnectionWithUUID:v13 publishConnection:0];

        if (v14)
        {
          v15 = gLogObjects;
          v16 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 2)
          {
            v17 = *(gLogObjects + 8);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v39 = v15;
              v40 = 1024;
              LODWORD(v41) = v16;
              OUTLINED_FUNCTION_12_0(&dword_233656000, MEMORY[0x277D86220], v18, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
            }

            v17 = MEMORY[0x277D86220];
            v19 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v39 = v14;
            v40 = 2112;
            v41 = v7;
            _os_log_impl(&dword_233656000, v17, OS_LOG_TYPE_DEFAULT, "Created endpointUUID %{public}@ for %@ AppleAuthCP", buf, 0x16u);
          }

          v20 = [(ACCTransportIOAccessorySharedManager *)self delegate];
          [v20 publishConnectionWithUUID:v9];

          [v5 setConnectionUUID:v9];
          [v5 setEndpointUUID:v14];
          v21 = *MEMORY[0x277CFD248];
          v36[0] = *MEMORY[0x277CFD250];
          v36[1] = v21;
          v37[0] = @"Internal Hardware";
          v37[1] = v7;
          v22 = *MEMORY[0x277CFD270];
          v36[2] = *MEMORY[0x277CFD240];
          v36[3] = v22;
          v37[2] = @"Apple Inc.";
          v37[3] = @"NotApplicable";
          v23 = *MEMORY[0x277CFD238];
          v36[4] = *MEMORY[0x277CFD230];
          v36[5] = v23;
          v37[4] = @"NotApplicable";
          v37[5] = @"NotApplicable";
          v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:6];
          v25 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 2)
          {
            v26 = *(gLogObjects + 8);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              OUTLINED_FUNCTION_17();
              LODWORD(v41) = v25;
              OUTLINED_FUNCTION_12_0(&dword_233656000, MEMORY[0x277D86220], v34, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
            }

            v26 = MEMORY[0x277D86220];
            v27 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v39 = v24;
            v40 = 2112;
            v41 = v9;
            _os_log_impl(&dword_233656000, v26, OS_LOG_TYPE_DEFAULT, "accInfoDictionary for hardware accessory = %@, connectionUUID = %@", buf, 0x16u);
          }

          v28 = [(ACCTransportIOAccessorySharedManager *)self delegate];
          [v28 setAccessoryInfo:v24 forEndpointWithUUID:v14];

          v29 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 2)
          {
            v30 = *(gLogObjects + 8);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              OUTLINED_FUNCTION_17();
              LODWORD(v41) = v29;
              OUTLINED_FUNCTION_12_0(&dword_233656000, MEMORY[0x277D86220], v35, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
            }

            v30 = MEMORY[0x277D86220];
            v31 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v39 = v9;
            _os_log_impl(&dword_233656000, v30, OS_LOG_TYPE_DEFAULT, "Publishing connection: %@ with eACCEndpoint_Protocol_InternalInfo", buf, 0xCu);
          }

          v32 = [(ACCTransportIOAccessorySharedManager *)self delegate];
          [v32 publishConnectionWithUUID:v9];
        }

        else
        {
          v14 = logObjectForModule_0(1);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v39 = v7;
            v40 = 2112;
            v41 = v9;
            _os_log_impl(&dword_233656000, v14, OS_LOG_TYPE_DEFAULT, "Failed to create endpointUUID for %{public}@ AppleAuthCP and to publish connection: %@", buf, 0x16u);
          }
        }
      }
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __66__ACCTransportIOAccessorySharedManager_startIOACCTransportManager__block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __56__ACCTransportIOAccessorySharedManager__managerForBase___block_invoke_2_cold_2(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 ioService];
  [*(a2 + 32) upstreamManagerService];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xEu);
  v8 = *MEMORY[0x277D85DE8];
}

void __56__ACCTransportIOAccessorySharedManager__managerForBase___block_invoke_2_cold_4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __63__ACCTransportIOAccessorySharedManager__managerContainingBase___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __84__ACCTransportIOAccessorySharedManager__managerForIOService_shouldCreateNewService___block_invoke_cold_4(int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_10();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_addIOAccessoryManagerWithIOService:.cold.6()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_addIOAccessoryManagerWithIOService:.cold.8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_managerForBaseEndpointUUID:(void *)a1 .cold.2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 ioService];
  v8 = [a1 connectionUUID];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_managerForConnectionUUID:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_managerForConnectionUUID:.cold.8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __66__ACCTransportIOAccessorySharedManager__managerForConnectionUUID___block_invoke_2_cold_2(void *a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a1 connectionUUID];
  v4 = *(a2 + 32);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

void __66__ACCTransportIOAccessorySharedManager__managerForConnectionUUID___block_invoke_2_cold_4(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_10();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)transmitData:forEndpointUUID:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)transmitData:forEndpointUUID:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)shouldEnableDirectAWCAuth
{
  v7 = *MEMORY[0x277D85DE8];
  [*(a1 + 88) BOOLValue];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setUSBMode:forConnectionUUID:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_12_0(&dword_233656000, v0, v0, "Error setting USB mode type %d for connectionUUID %@", v2);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)setUSBMode:forConnectionUUID:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setUSBMode:forEndpointUUID:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_12_0(&dword_233656000, v0, v0, "Error setting USB mode type %d for endpointUUID %@", v2);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)setUSBMode:forEndpointUUID:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)IOAccessoryManagerServiceInfoSet:(os_log_t)log .cold.7(uint8_t *buf, int a2, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a2;
  _os_log_debug_impl(&dword_233656000, log, OS_LOG_TYPE_DEBUG, "IOAccessoryManager with service %d has EAService, OOBPairing child ports. Those handlers publish the eACCEndpoint_Protocol_InternalInfo endpoint", buf, 8u);
}

- (void)IOAccessoryPortArrived:(void *)a1 withEndpointProtocol:publish:.cold.3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 connectionUUID];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_IOAccessoryPortDetachInternal:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)IOAccessoryAuthCPServiceAuthStatusChanged:(void *)a1 authType:authCert:certType:authCTA:service:.cold.3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 connectionUUID];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)IOAccessoryAuthCPServiceAuthStatusChanged:authType:authCert:certType:authCTA:service:.cold.7()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)IOAccessoryAuthCPServiceAuthStatusChanged:authType:authCert:certType:authCTA:service:.cold.9()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)resetLightningBusForEndpointWithUUID:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)resetLightningBusForEndpointWithUUID:(mach_error_t)a1 .cold.7(mach_error_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = logObjectForModule_0(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    mach_error_string(a1);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_9_0(&dword_233656000, v4, v5, "Could not get USB Connect Type! (ret: %s)", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)resetLightningBusForEndpointWithUUID:(mach_error_t)a1 .cold.12(mach_error_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  mach_error_string(a1);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0(&dword_233656000, v1, v2, "Could not configure USB mode: %s", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)resetLightningBusForEndpointWithUUID:(mach_error_t)a1 .cold.15(mach_error_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  mach_error_string(a1);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0(&dword_233656000, v1, v2, "Could not disable ACC power: %s", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)resetLightningBusForEndpointWithUUID:(mach_error_t)a1 .cold.22(mach_error_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  mach_error_string(a1);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0(&dword_233656000, v1, v2, "Could not enable ACC power: %s", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)resetLightningBusForEndpointWithUUID:.cold.24()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)resetLightningBusForEndpointWithUUID:.cold.26()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)IOAccessoryClassStringForIOAccessoryClassType:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

@end