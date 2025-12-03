@interface HKNanoRegistryPairingAndSwitchingNotificationDataSource
- (HKNanoRegistryPairingAndSwitchingNotificationDataSource)initWithPairedDeviceRegistry:(id)registry;
- (NRPairedDeviceRegistry)pairedDeviceRegistry;
- (id)_pairingChangeNotifications;
- (id)makeAndRegisterBridgedObserverForKey:(id)key handle:(id)handle;
- (void)_pairingChangeNotifications;
- (void)registerObserverForDevicePairingChanges:(id)changes block:(id)block;
- (void)unregisterBridgedObserver:(id)observer forKey:(id)key;
- (void)unregisterObserverForDevicePairingChanges:(id)changes;
@end

@implementation HKNanoRegistryPairingAndSwitchingNotificationDataSource

- (HKNanoRegistryPairingAndSwitchingNotificationDataSource)initWithPairedDeviceRegistry:(id)registry
{
  registryCopy = registry;
  v9.receiver = self;
  v9.super_class = HKNanoRegistryPairingAndSwitchingNotificationDataSource;
  v6 = [(HKObserverBridge *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pairedDeviceRegistry, registry);
  }

  return v7;
}

- (NRPairedDeviceRegistry)pairedDeviceRegistry
{
  pairedDeviceRegistry = self->_pairedDeviceRegistry;
  if (pairedDeviceRegistry)
  {
    sharedInstance = pairedDeviceRegistry;
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
    sharedInstance = [v4 sharedInstance];
  }

  return sharedInstance;
}

- (id)makeAndRegisterBridgedObserverForKey:(id)key handle:(id)handle
{
  keyCopy = key;
  handleCopy = handle;
  _notificationCenter = [(HKNanoRegistryPairingAndSwitchingNotificationDataSource *)self _notificationCenter];
  pairedDeviceRegistry = [(HKNanoRegistryPairingAndSwitchingNotificationDataSource *)self pairedDeviceRegistry];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __103__HKNanoRegistryPairingAndSwitchingNotificationDataSource_makeAndRegisterBridgedObserverForKey_handle___block_invoke;
  v14[3] = &unk_1E737B420;
  v15 = handleCopy;
  v16 = keyCopy;
  v10 = keyCopy;
  v11 = handleCopy;
  v12 = [_notificationCenter addObserverForName:v10 object:pairedDeviceRegistry queue:0 usingBlock:v14];

  return v12;
}

- (void)unregisterBridgedObserver:(id)observer forKey:(id)key
{
  keyCopy = key;
  observerCopy = observer;
  _notificationCenter = [(HKNanoRegistryPairingAndSwitchingNotificationDataSource *)self _notificationCenter];
  pairedDeviceRegistry = [(HKNanoRegistryPairingAndSwitchingNotificationDataSource *)self pairedDeviceRegistry];
  [_notificationCenter removeObserver:observerCopy name:keyCopy object:pairedDeviceRegistry];
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

- (void)registerObserverForDevicePairingChanges:(id)changes block:(id)block
{
  v22 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  blockCopy = block;
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
        v16 = blockCopy;
        [(HKObserverBridge *)self registerObserver:changesCopy forKey:v12 newValueHandler:v15];

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)unregisterObserverForDevicePairingChanges:(id)changes
{
  v16 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  _pairingChangeNotifications = [(HKNanoRegistryPairingAndSwitchingNotificationDataSource *)self _pairingChangeNotifications];
  v6 = [_pairingChangeNotifications countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(_pairingChangeNotifications);
        }

        [(HKObserverBridge *)self unregisterObserver:changesCopy forKey:*(*(&v11 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [_pairingChangeNotifications countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_pairingChangeNotifications
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRPairedDeviceRegistryDeviceIsSetupNotification(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"HKNanoRegistryPairingAndSwitchingNotificationDataSource.m" lineNumber:23 description:{@"%s", dlerror()}];

  __break(1u);
}

@end