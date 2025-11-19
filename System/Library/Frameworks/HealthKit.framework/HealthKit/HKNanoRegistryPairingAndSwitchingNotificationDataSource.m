@interface HKNanoRegistryPairingAndSwitchingNotificationDataSource
- (HKNanoRegistryPairingAndSwitchingNotificationDataSource)initWithPairedDeviceRegistry:(id)a3;
- (NRPairedDeviceRegistry)pairedDeviceRegistry;
- (id)_pairingChangeNotifications;
- (id)makeAndRegisterBridgedObserverForKey:(id)a3 handle:(id)a4;
- (void)_pairingChangeNotifications;
- (void)registerObserverForDevicePairingChanges:(id)a3 block:(id)a4;
- (void)unregisterBridgedObserver:(id)a3 forKey:(id)a4;
- (void)unregisterObserverForDevicePairingChanges:(id)a3;
@end

@implementation HKNanoRegistryPairingAndSwitchingNotificationDataSource

- (HKNanoRegistryPairingAndSwitchingNotificationDataSource)initWithPairedDeviceRegistry:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKNanoRegistryPairingAndSwitchingNotificationDataSource;
  v6 = [(HKObserverBridge *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pairedDeviceRegistry, a3);
  }

  return v7;
}

- (NRPairedDeviceRegistry)pairedDeviceRegistry
{
  pairedDeviceRegistry = self->_pairedDeviceRegistry;
  if (pairedDeviceRegistry)
  {
    v3 = pairedDeviceRegistry;
  }

  else
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2050000000;
    v4 = getNRPairedDeviceRegistryClass_softClass_0;
    v11 = getNRPairedDeviceRegistryClass_softClass_0;
    if (!getNRPairedDeviceRegistryClass_softClass_0)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __getNRPairedDeviceRegistryClass_block_invoke_0;
      v7[3] = &unk_1E7378388;
      v7[4] = &v8;
      __getNRPairedDeviceRegistryClass_block_invoke_0(v7);
      v4 = v9[3];
    }

    v5 = v4;
    _Block_object_dispose(&v8, 8);
    v3 = [v4 sharedInstance];
  }

  return v3;
}

- (id)makeAndRegisterBridgedObserverForKey:(id)a3 handle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKNanoRegistryPairingAndSwitchingNotificationDataSource *)self _notificationCenter];
  v9 = [(HKNanoRegistryPairingAndSwitchingNotificationDataSource *)self pairedDeviceRegistry];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __103__HKNanoRegistryPairingAndSwitchingNotificationDataSource_makeAndRegisterBridgedObserverForKey_handle___block_invoke;
  v14[3] = &unk_1E737B420;
  v15 = v7;
  v16 = v6;
  v10 = v6;
  v11 = v7;
  v12 = [v8 addObserverForName:v10 object:v9 queue:0 usingBlock:v14];

  return v12;
}

- (void)unregisterBridgedObserver:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(HKNanoRegistryPairingAndSwitchingNotificationDataSource *)self _notificationCenter];
  v8 = [(HKNanoRegistryPairingAndSwitchingNotificationDataSource *)self pairedDeviceRegistry];
  [v9 removeObserver:v7 name:v6 object:v8];
}

- (id)_pairingChangeNotifications
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v2 = getNRPairedDeviceRegistryDeviceIsSetupNotificationSymbolLoc_ptr;
  v18 = getNRPairedDeviceRegistryDeviceIsSetupNotificationSymbolLoc_ptr;
  if (!getNRPairedDeviceRegistryDeviceIsSetupNotificationSymbolLoc_ptr)
  {
    v3 = NanoRegistryLibrary_0();
    v16[3] = dlsym(v3, "NRPairedDeviceRegistryDeviceIsSetupNotification");
    getNRPairedDeviceRegistryDeviceIsSetupNotificationSymbolLoc_ptr = v16[3];
    v2 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v2)
  {
    [HKNanoRegistryPairingAndSwitchingNotificationDataSource _pairingChangeNotifications];
  }

  v4 = *v2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v5 = getNRPairedDeviceRegistryDeviceDidUnpairNotificationSymbolLoc_ptr;
  v18 = getNRPairedDeviceRegistryDeviceDidUnpairNotificationSymbolLoc_ptr;
  v19[0] = v4;
  if (!getNRPairedDeviceRegistryDeviceDidUnpairNotificationSymbolLoc_ptr)
  {
    v6 = NanoRegistryLibrary_0();
    v16[3] = dlsym(v6, "NRPairedDeviceRegistryDeviceDidUnpairNotification");
    getNRPairedDeviceRegistryDeviceDidUnpairNotificationSymbolLoc_ptr = v16[3];
    v5 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v5)
  {
    [HKNanoRegistryPairingAndSwitchingNotificationDataSource _pairingChangeNotifications];
  }

  v7 = *v5;
  v19[1] = v7;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v8 = getNRPairedDeviceRegistryDeviceDidBecomeActiveSymbolLoc_ptr;
  v18 = getNRPairedDeviceRegistryDeviceDidBecomeActiveSymbolLoc_ptr;
  if (!getNRPairedDeviceRegistryDeviceDidBecomeActiveSymbolLoc_ptr)
  {
    v9 = NanoRegistryLibrary_0();
    v16[3] = dlsym(v9, "NRPairedDeviceRegistryDeviceDidBecomeActive");
    getNRPairedDeviceRegistryDeviceDidBecomeActiveSymbolLoc_ptr = v16[3];
    v8 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v8)
  {
    [HKNanoRegistryPairingAndSwitchingNotificationDataSource _pairingChangeNotifications];
  }

  v20 = *v8;
  v10 = MEMORY[0x1E695DEC8];
  v11 = v20;
  v12 = [v10 arrayWithObjects:v19 count:3];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)registerObserverForDevicePairingChanges:(id)a3 block:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [(HKNanoRegistryPairingAndSwitchingNotificationDataSource *)self _pairingChangeNotifications];
  v8 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __105__HKNanoRegistryPairingAndSwitchingNotificationDataSource_registerObserverForDevicePairingChanges_block___block_invoke;
        v15[3] = &unk_1E737B448;
        v16 = v7;
        [(HKObserverBridge *)self registerObserver:v6 forKey:v12 newValueHandler:v15];

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)unregisterObserverForDevicePairingChanges:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(HKNanoRegistryPairingAndSwitchingNotificationDataSource *)self _pairingChangeNotifications];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(HKObserverBridge *)self unregisterObserver:v4 forKey:*(*(&v11 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_pairingChangeNotifications
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRPairedDeviceRegistryDeviceIsSetupNotification(void)"];
  [v0 handleFailureInFunction:v1 file:@"HKNanoRegistryPairingAndSwitchingNotificationDataSource.m" lineNumber:23 description:{@"%s", dlerror()}];

  __break(1u);
}

@end