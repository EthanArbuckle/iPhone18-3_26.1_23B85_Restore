@interface EAAccessoryManager
+ (BOOL)isLoggingEnabled;
+ (EAAccessoryManager)sharedAccessoryManager;
+ (id)accessoryDictionaryForLogging:(id)a3;
- (BOOL)appDeclaresProtocol:(id)a3;
- (NSArray)connectedAccessories;
- (id)_findExtraAccessoriesContainedOnlyInEA:(id)a3;
- (id)_findExtraAccessoriesContainedOnlyIniAP:(id)a3;
- (id)_initFromSingletonCreationMethod;
- (id)authCertForLegacyConnectionID:(unsigned int)a3;
- (id)authCertSerialNumberForLegacyConnectionID:(unsigned int)a3;
- (id)currentVehicleInformation:(id)a3;
- (void)EAAccessoryArrived:(id)a3;
- (void)EAAccessoryLeft:(id)a3;
- (void)_OOBBTPairingCompletionStatusReceived:(id)a3;
- (void)_applicationDidEnterBackground:(id)a3;
- (void)_applicationWillEnterForeground:(id)a3;
- (void)_cameraInfoUpdated:(id)a3;
- (void)_checkForConnectedAccessories:(BOOL)a3 backgroundTaskIdentifier:(unint64_t)a4;
- (void)_cleanUpForTaskSuspendWithTaskIdentifier:(unint64_t)a3;
- (void)_ephemerisURLAvailable:(id)Accessory;
- (void)_ephemerisURLAvailableForAccessory:(id)a3;
- (void)_externalAccessoryConnected:(id)a3;
- (void)_externalAccessoryConnectedNotificationHandler:(id)a3;
- (void)_externalAccessoryDisconnected:(id)a3;
- (void)_externalAccessoryReconnected:(id)a3;
- (void)_externalAccessoryUpdated:(id)a3;
- (void)_gpsTimeRequested:(id)Accessory;
- (void)_gpsTimeRequestedForAccessory:(id)a3;
- (void)_handleAccessoryNotificationTimeout:(id)a3;
- (void)_iapServerDied:(id)a3;
- (void)_integrateSequesteredAccessories;
- (void)_locationNmeaDataAvailable:(id)Accessory;
- (void)_locationNmeaDataAvailableForAccessory:(id)a3;
- (void)_locationPointDataAvailable:(id)Accessory;
- (void)_locationPointDataAvailableForAccessory:(id)a3;
- (void)_nmeaFilteringSupportChanged:(id)Accessory;
- (void)_nmeaFilteringSupportChangedForAccessory:(id)a3;
- (void)_notifyObserversThatAccessoryDisconnectedWithUserInfo:(id)a3;
- (void)_pointOfInterestStatusReceived:(id)a3;
- (void)_timeSyncInfoUpdated:(id)a3;
- (void)_vehicleDataUpdated:(id)a3;
- (void)accessibilityAction:(id)a3;
- (void)accessibilityContextChange:(id)a3;
- (void)accessibilityItemPropertyRequest:(id)a3;
- (void)accessibilitySystemPropertyChange:(id)a3;
- (void)accessibilitySystemPropertyRequest:(id)a3;
- (void)accessoryClosedEASession:(id)a3;
- (void)closeEASessionForEASessionUUID:(id)a3;
- (void)closeInputStreamForEASessionUUID:(id)a3;
- (void)dealloc;
- (void)devicePicker:(id)a3 didSelectAddress:(id)a4 errorCode:(int64_t)a5;
- (void)handleIncomingExternalAccessoryData:(id)a3 forEASessionIdentifier:(id)a4 withReply:(id)a5;
- (void)initialEAAccessoriesAttachedAfterClientConnection:(id)a3;
- (void)nmeaSentenceArrived:(id)a3 forAccessoryUUID:(id)a4 withTimestamps:(id)a5;
- (void)pointOfInterestSelection:(id)a3;
- (void)registerForLocalNotifications;
- (void)requestIAPAccessoryWiFiCredentials:(id)a3;
- (void)saveEASession:(id)a3 forEASessionUUID:(id)a4;
- (void)sendDeviceIdentifierNotification:(id)a3 usbIdentifier:(id)a4 forUUID:(id)a5;
- (void)sendNMEAFilterList:(id)a3 forUUID:(id)a4;
- (void)sendOutgoingEAData:(id)a3 forSessionUUID:(id)a4;
- (void)sendWiredCarPlayAvailable:(id)a3 usbIdentifier:(id)a4 wirelessCarPlayAvailable:(id)a5 bluetoothIdentifier:(id)a6 forUUID:(id)a7;
- (void)sendWiredCarPlayAvailable:(id)a3 usbIdentifier:(id)a4 wirelessCarPlayAvailable:(id)a5 bluetoothIdentifier:(id)a6 themeAssetsAvailable:(id)a7 forUUID:(id)a8;
- (void)setAreLocationAccessoriesEnabled:(BOOL)a3;
- (void)showBluetoothAccessoryPickerWithNameFilter:(NSPredicate *)predicate completion:(EABluetoothAccessoryPickerCompletion)completion;
- (void)startDestinationSharingForUUID:(id)a3 options:(unint64_t)a4;
- (void)startLocationForConnectedAccessories;
- (void)stopDestinationSharingForUUID:(id)a3;
- (void)stopLocationForConnectedAccessories;
- (void)unregisterForLocalNotifications;
- (void)updateAccessoryInfo:(id)a3;
- (void)vehicleStatusUpdate:(id)a3 forAccessoryUUID:(id)a4;
- (void)wakeAccessoryWithToken:(id)a3;
@end

@implementation EAAccessoryManager

+ (EAAccessoryManager)sharedAccessoryManager
{
  if (sharedAccessoryManager_onceToken != -1)
  {
    +[EAAccessoryManager sharedAccessoryManager];
  }

  if (__iapdCrashed == 1)
  {
    IAPAppRegisterClient();
    __iapdCrashed = 0;
  }

  return sharedAccessoryManager_sharedInstance;
}

- (void)registerForLocalNotifications
{
  v2 = __registeredForLocalNotifications;
  if (!__registeredForLocalNotifications)
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:self selector:sel__locationNmeaDataAvailable_ name:*MEMORY[0x277D184D8] object:0];
    [v4 addObserver:self selector:sel__locationPointDataAvailable_ name:*MEMORY[0x277D184D0] object:0];
    [v4 addObserver:self selector:sel__ephemerisURLAvailable_ name:*MEMORY[0x277D184C8] object:0];
    [v4 addObserver:self selector:sel__nmeaFilteringSupportChanged_ name:*MEMORY[0x277D184C0] object:0];
    [v4 addObserver:self selector:sel__gpsTimeRequested_ name:*MEMORY[0x277D184E0] object:0];
    v2 = __registeredForLocalNotifications;
  }

  v5 = (v2 + 1);
  __registeredForLocalNotifications = v5;
  NSLog(&cfstr_Externalaccess_13.isa, a2, 1048, v5);
}

- (NSArray)connectedAccessories
{
  [__accessoryListLock lock];
  connectedAccessories = self->_connectedAccessories;
  if (connectedAccessories)
  {
    connectedAccessories = [(NSMutableArray *)connectedAccessories count];
  }

  NSLog(&cfstr_Externalaccess_12.isa, connectedAccessories);
  if (self->_connectedAccessories)
  {
    v4 = [MEMORY[0x277CBEA60] arrayWithArray:?];
  }

  else
  {
    v4 = [MEMORY[0x277CBEA60] array];
  }

  v5 = v4;
  [__accessoryListLock unlock];
  return v5;
}

- (void)startLocationForConnectedAccessories
{
  v15 = *MEMORY[0x277D85DE8];
  [__accessoryListLock lock];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  connectedAccessories = self->_connectedAccessories;
  v4 = [(NSMutableArray *)connectedAccessories countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(connectedAccessories);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (-[EAAccessoryManager areLocationAccessoriesEnabled](self, "areLocationAccessoriesEnabled") && [v8 supportsLocation] && objc_msgSend(v8, "createdByCoreAccessories"))
        {
          NSLog(&cfstr_Externalaccess_65.isa, [v8 coreAccessoriesPrimaryUUID]);
          [__accEAProviderClassInstance startLocationInformationForAccessoryUUID:{objc_msgSend(v8, "coreAccessoriesPrimaryUUID")}];
        }
      }

      v5 = [(NSMutableArray *)connectedAccessories countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [__accessoryListLock unlock];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)stopLocationForConnectedAccessories
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  connectedAccessories = self->_connectedAccessories;
  v3 = [(NSMutableArray *)connectedAccessories countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(connectedAccessories);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 supportsLocation] && objc_msgSend(v7, "createdByCoreAccessories"))
        {
          NSLog(&cfstr_LocationChecki.isa, [v7 coreAccessoriesPrimaryUUID]);
          [__accEAProviderClassInstance stopLocationInformationForAccessoryUUID:{objc_msgSend(v7, "coreAccessoriesPrimaryUUID")}];
        }
      }

      v4 = [(NSMutableArray *)connectedAccessories countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)unregisterForLocalNotifications
{
  v2 = __registeredForLocalNotifications;
  if (__registeredForLocalNotifications == 1)
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 removeObserver:self name:*MEMORY[0x277D184D8] object:0];
    [v4 removeObserver:self name:*MEMORY[0x277D184D0] object:0];
    [v4 removeObserver:self name:*MEMORY[0x277D184C8] object:0];
    [v4 removeObserver:self name:*MEMORY[0x277D184C0] object:0];
    [v4 removeObserver:self name:*MEMORY[0x277D184E0] object:0];
    v2 = __registeredForLocalNotifications;
  }

  if (v2)
  {
    v2 = (v2 - 1);
    __registeredForLocalNotifications = v2;
  }

  NSLog(&cfstr_Externalaccess_14.isa, 1068, v2);
}

+ (BOOL)isLoggingEnabled
{
  v2 = isLoggingEnabled_isLoggingEnabled;
  if (isLoggingEnabled_isLoggingEnabled == 255)
  {
    v2 = [CFPreferencesCopyValue(@"LogEAEvents" @"com.apple.logging"];
    isLoggingEnabled_isLoggingEnabled = v2;
  }

  return v2 != 0;
}

- (id)_initFromSingletonCreationMethod
{
  v32 = *MEMORY[0x277D85DE8];
  IAPRegisterEAAuthGetters();
  v30.receiver = self;
  v30.super_class = EAAccessoryManager;
  v3 = [(EAAccessoryManager *)&v30 init];
  if (v3)
  {
    signal(13, 1);
    v4 = [objc_msgSend(MEMORY[0x277CCAD78] "UUID")];
    v3->_managerInstanceUUID = v4;
    NSLog(&cfstr_Externalaccess_0.isa, "[EAAccessoryManager _initFromSingletonCreationMethod]", v3, v4);
    if (([objc_msgSend(MEMORY[0x277CCAC38] "processInfo")] & 1) == 0)
    {
      v5 = [objc_msgSend(MEMORY[0x277CCAC38] "processInfo")];
      if (uikitFramework)
      {
        if ((v5 & 1) == 0)
        {
          NSLog(&cfstr_Externalaccess_1.isa, "[EAAccessoryManager _initFromSingletonCreationMethod]");
          v6 = [MEMORY[0x277CCAB98] defaultCenter];
          if (uikitFramework && (v7 = dlsym(uikitFramework, "UIApplicationDidEnterBackgroundNotification")) != 0)
          {
            v8 = *v7;
          }

          else
          {
            v8 = 0;
          }

          [v6 addObserver:v3 selector:sel__applicationDidEnterBackground_ name:v8 object:0];
          if (uikitFramework && (v9 = dlsym(uikitFramework, "UIApplicationWillEnterForegroundNotification")) != 0)
          {
            v10 = *v9;
          }

          else
          {
            v10 = 0;
          }

          [v6 addObserver:v3 selector:sel__applicationWillEnterForeground_ name:v10 object:0];
        }
      }
    }

    v11 = EAWeakLinkClass(&cfstr_Accexternalacc_0.isa, 6);
    if (v11)
    {
      v12 = [v11 alloc];
      __accEAProviderClassInstance = [v12 initWithDelegate:v3 capabilities:__capabilities];
    }

    else
    {
      NSLog(&cfstr_Externalaccess_2.isa);
    }

    __currentCoreAccessoriesEASessions = objc_alloc_init(MEMORY[0x277CBEB38]);
    __activeCoreAccessoriesEASessions = objc_alloc_init(MEMORY[0x277CBEB38]);
    v3->_connectionQueue = dispatch_queue_create("com.apple.EA.connectionQueue", 0);
    v13 = objc_alloc_init(MEMORY[0x277CCAC60]);
    v3->_pickerLock = v13;
    -[NSRecursiveLock setName:](v13, "setName:", [MEMORY[0x277CCACA8] stringWithCString:"com.apple.EA.pickerLock" encoding:4]);
    if (_initFromSingletonCreationMethod_onceToken != -1)
    {
      [EAAccessoryManager _initFromSingletonCreationMethod];
    }

    obj = IAPAppConnectedAccessories();
    if (obj)
    {
      NSLog(&cfstr_Externalaccess_3.isa, [obj count], v3->_managerInstanceUUID);
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v14 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v27;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v27 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v26 + 1) + 8 * i);
            v19 = objc_alloc_init(EAAccessoryInternal);
            __convertIAPAccessoryToEAAccessory(v18, v19);
            [(EAAccessoryInternal *)v19 setConnected:1];
            v20 = [[EAAccessory alloc] _initWithAccessory:v19];
            [__accessoryListLock lock];
            connectedAccessories = v3->_connectedAccessories;
            if (!connectedAccessories)
            {
              connectedAccessories = objc_alloc_init(MEMORY[0x277CBEB18]);
              v3->_connectedAccessories = connectedAccessories;
            }

            [(NSMutableArray *)connectedAccessories addObject:v20];
            [__accessoryListLock unlock];
            NSLog(&cfstr_Externalaccess_4.isa, [v20 connectionID]);
          }

          v15 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v15);
      }
    }

    v3->_sequesterNewAccessories = 0;
    v22 = [MEMORY[0x277CCAB98] defaultCenter];
    [v22 addObserver:v3 selector:sel__externalAccessoryConnectedNotificationHandler_ name:*MEMORY[0x277D183A0] object:0];
    [v22 addObserver:v3 selector:sel__externalAccessoryUpdated_ name:*MEMORY[0x277D18460] object:0];
    [v22 addObserver:v3 selector:sel__externalAccessoryDisconnected_ name:*MEMORY[0x277D183A8] object:0];
    [v22 addObserver:v3 selector:sel__pointOfInterestStatusReceived_ name:*MEMORY[0x277D18438] object:0];
    [v22 addObserver:v3 selector:sel__OOBBTPairingCompletionStatusReceived_ name:*MEMORY[0x277D18400] object:0];
    [v22 addObserver:v3 selector:sel__iapServerDied_ name:*MEMORY[0x277D18488] object:0];
    [v22 addObserver:v3 selector:sel__externalAccessoryReconnected_ name:*MEMORY[0x277D18490] object:0];
    [v22 addObserver:v3 selector:sel__timeSyncInfoUpdated_ name:*MEMORY[0x277D184E8] object:0];
    [v22 addObserver:v3 selector:sel__vehicleDataUpdated_ name:*MEMORY[0x277D184F0] object:0];
    [v22 addObserver:v3 selector:sel__cameraInfoUpdated_ name:*MEMORY[0x277D18498] object:0];
  }

  v23 = *MEMORY[0x277D85DE8];
  return v3;
}

id __44__EAAccessoryManager_sharedAccessoryManager__block_invoke()
{
  if (NSClassFromString(&cfstr_Uiapplication.isa))
  {
    v0 = uikitFramework == 0;
  }

  else
  {
    v0 = 0;
  }

  if (v0)
  {
    uikitFramework = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 16);
  }

  if ([objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277CCAC38] "processInfo")])
  {
    __capabilities |= 0x8000u;
  }

  v1 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  if (!v1 || [v1 isEqualToString:&stru_284B0F7E0])
  {
    __capabilities |= 0x200u;
  }

  v2 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v2 containsObject:@"external-accessory"])
  {
    __capabilities |= 0x10u;
  }

  if (_CFExecutableLinkedOnOrAfter())
  {
    __capabilities |= 0x20u;
  }

  v3 = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  if (v3)
  {
    v4 = v3;
    error = 0;
    v5 = SecTaskCopyValueForEntitlement(v3, @"com.apple.private.externalaccessory.showallaccessories", &error);
    CFRelease(v4);
    if (v5)
    {
      v6 = CFGetTypeID(v5);
      if (v6 == CFBooleanGetTypeID())
      {
        Value = CFBooleanGetValue(v5);
        CFRelease(v5);
        if (Value)
        {
          __supportsEAShowAllAccessoriesEntitlement = 1;
        }

        goto LABEL_27;
      }

      v8 = v5;
    }

    else
    {
      if (!error)
      {
        goto LABEL_27;
      }

      NSLog(&cfstr_Externalaccess_5.isa, @"com.apple.private.externalaccessory.showallaccessories", error);
      v8 = error;
      if (!error)
      {
        goto LABEL_27;
      }
    }

    CFRelease(v8);
  }

LABEL_27:
  IAPAppRegisterClient();
  __iapdStartedSinceLastAppExecution = IAPDHasLaunched();
  __iap2dStartedSinceLastAppExecution = IAP2DHasLaunched();
  result = [[EAAccessoryManager alloc] _initFromSingletonCreationMethod];
  sharedAccessoryManager_sharedInstance = result;
  __iapdCrashed = 0;
  return result;
}

uint64_t __54__EAAccessoryManager__initFromSingletonCreationMethod__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  __accessoryListLock = v0;
  v1 = [MEMORY[0x277CCACA8] stringWithCString:"com.apple.EA.accessoryListLock" encoding:4];

  return [v0 setName:v1];
}

- (void)dealloc
{
  if (([objc_msgSend(MEMORY[0x277CCAC38] "processInfo")] & 1) == 0)
  {
    v3 = [objc_msgSend(MEMORY[0x277CCAC38] "processInfo")];
    if (uikitFramework)
    {
      if ((v3 & 1) == 0)
      {
        v4 = [MEMORY[0x277CCAB98] defaultCenter];
        if (uikitFramework && (v5 = dlsym(uikitFramework, "UIApplicationDidEnterBackgroundNotification")) != 0)
        {
          v6 = *v5;
        }

        else
        {
          v6 = 0;
        }

        [v4 removeObserver:self name:v6 object:0];
        if (uikitFramework && (v7 = dlsym(uikitFramework, "UIApplicationWillEnterForegroundNotification")) != 0)
        {
          v8 = *v7;
        }

        else
        {
          v8 = 0;
        }

        [v4 removeObserver:self name:v8 object:0];
        dlclose(uikitFramework);
      }
    }
  }

  [__accessoryListLock lock];

  self->_connectedAccessories = 0;
  [__accessoryListLock unlock];

  self->_sequesteredAccessories = 0;
  [(NSRecursiveLock *)self->_pickerLock lock];

  self->_selectedBluetoothAddress = 0;
  [(EABluetoothAccessoryPicker *)self->_picker dismissPicker];

  self->_picker = 0;
  pickerCompletion = self->_pickerCompletion;
  if (pickerCompletion)
  {
    _Block_release(pickerCompletion);
    self->_pickerCompletion = 0;
  }

  [(NSTimer *)self->_pickerTimer invalidate];

  self->_pickerTimer = 0;
  [(NSRecursiveLock *)self->_pickerLock unlock];

  dispatch_release(self->_connectionQueue);
  self->_connectionQueue = 0;
  [(EAAccessoryManager *)self unregisterForLocalNotifications];
  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 removeObserver:self name:*MEMORY[0x277D183A0] object:0];
  [v10 removeObserver:self name:*MEMORY[0x277D18460] object:0];
  [v10 removeObserver:self name:*MEMORY[0x277D183A8] object:0];
  [v10 removeObserver:self name:*MEMORY[0x277D18488] object:0];
  [v10 removeObserver:self name:*MEMORY[0x277D18490] object:0];
  [v10 removeObserver:self name:*MEMORY[0x277D184E8] object:0];
  [v10 removeObserver:self name:*MEMORY[0x277D184F0] object:0];
  [v10 removeObserver:self name:*MEMORY[0x277D18438] object:0];
  [v10 removeObserver:self name:*MEMORY[0x277D18400] object:0];
  [v10 removeObserver:self name:*MEMORY[0x277D18498] object:0];

  self->_managerInstanceUUID = 0;
  v11.receiver = self;
  v11.super_class = EAAccessoryManager;
  [(EAAccessoryManager *)&v11 dealloc];
}

- (void)EAAccessoryArrived:(id)a3
{
  NSLog(&cfstr_Externalaccess_6.isa, [EAAccessoryManager accessoryDictionaryForLogging:?]);
  v5 = [MEMORY[0x277CCAB88] notificationWithName:*MEMORY[0x277D183A0] object:self userInfo:a3];

  [(EAAccessoryManager *)self _externalAccessoryConnected:v5];
}

- (void)EAAccessoryLeft:(id)a3
{
  NSLog(&cfstr_Externalaccess_7.isa, [EAAccessoryManager accessoryDictionaryForLogging:?]);
  v5 = *MEMORY[0x277D18480];
  v6 = [a3 objectForKey:*MEMORY[0x277D18480]];
  if (v6)
  {
    v7 = [MEMORY[0x277CCAB88] notificationWithName:*MEMORY[0x277D183A8] object:self userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", v6, v5)}];

    [(EAAccessoryManager *)self _externalAccessoryDisconnected:v7];
  }

  else
  {
    NSLog(&cfstr_Externalaccess_8.isa);
  }
}

- (void)initialEAAccessoriesAttachedAfterClientConnection:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  NSLog(&cfstr_Externalaccess_9.isa, [a3 count]);
  [__accessoryListLock lock];
  if (a3)
  {
    if ([a3 count])
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v5 = [a3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v15;
        do
        {
          v8 = 0;
          do
          {
            if (*v15 != v7)
            {
              objc_enumerationMutation(a3);
            }

            v9 = *(*(&v14 + 1) + 8 * v8);
            v10 = objc_alloc_init(EAAccessoryInternal);
            __convertIAPAccessoryToEAAccessory(v9, v10);
            [(EAAccessoryInternal *)v10 setConnected:1];
            v11 = [[EAAccessory alloc] _initWithAccessory:v10];
            connectedAccessories = self->_connectedAccessories;
            if (!connectedAccessories)
            {
              connectedAccessories = objc_alloc_init(MEMORY[0x277CBEB18]);
              self->_connectedAccessories = connectedAccessories;
            }

            [(NSMutableArray *)connectedAccessories addObject:v11];

            ++v8;
          }

          while (v6 != v8);
          v6 = [a3 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v6);
      }
    }
  }

  NSLog(&cfstr_Externalaccess_10.isa, [(NSMutableArray *)self->_connectedAccessories count]);
  [__accessoryListLock unlock];
  NSLog(&cfstr_Externalaccess_11.isa);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)startDestinationSharingForUUID:(id)a3 options:(unint64_t)a4
{
  AccessoryByUUID = __findAccessoryByUUID(a3, self->_connectedAccessories);
  if (AccessoryByUUID)
  {
    v7 = AccessoryByUUID;
    [AccessoryByUUID setPointOfInterestHandoffEnabled:1];
    [v7 setDestinationSharingOptions:a4];
    if (__registeredForLocalNotifications)
    {
      v8 = [MEMORY[0x277CCAB98] defaultCenter];
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v7 forKey:@"EAAccessoryKey"];

      [v8 postNotificationName:@"EAAccessoryUpdateNotification" object:self userInfo:v9];
    }
  }
}

- (void)stopDestinationSharingForUUID:(id)a3
{
  AccessoryByUUID = __findAccessoryByUUID(a3, self->_connectedAccessories);
  if (AccessoryByUUID)
  {
    v5 = AccessoryByUUID;
    [AccessoryByUUID setPointOfInterestHandoffEnabled:0];
    if (__registeredForLocalNotifications)
    {
      v6 = [MEMORY[0x277CCAB98] defaultCenter];
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v5 forKey:@"EAAccessoryKey"];

      [v6 postNotificationName:@"EAAccessoryUpdateNotification" object:self userInfo:v7];
    }
  }
}

- (void)nmeaSentenceArrived:(id)a3 forAccessoryUUID:(id)a4 withTimestamps:(id)a5
{
  AccessoryByUUID = __findAccessoryByUUID(a4, self->_connectedAccessories);
  if (AccessoryByUUID)
  {
    v10 = AccessoryByUUID;
    [AccessoryByUUID addNMEASentence:a3 withTimestamps:a5];

    [(EAAccessoryManager *)self _locationNmeaDataAvailableForAccessory:v10];
  }

  else
  {
    NSLog(&cfstr_LocationSCanno.isa, "[EAAccessoryManager nmeaSentenceArrived:forAccessoryUUID:withTimestamps:]", a4, a3, a5);
  }
}

- (void)vehicleStatusUpdate:(id)a3 forAccessoryUUID:(id)a4
{
  AccessoryByUUID = __findAccessoryByUUID(a4, self->_connectedAccessories);
  NSLog(&cfstr_Vehicleinfosta.isa, "[EAAccessoryManager vehicleStatusUpdate:forAccessoryUUID:]", a4, a3);
  if (AccessoryByUUID)
  {
    NSLog(&cfstr_Vehicleinfosta_0.isa, a4);
    v8 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a3];
    [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", objc_msgSend(AccessoryByUUID, "connectionID")), @"EAConnectionIDKey"}];
    v9 = [MEMORY[0x277CCAB88] notificationWithName:*MEMORY[0x277D184F0] object:0 userInfo:v8];

    [(EAAccessoryManager *)self _vehicleDataUpdated:v9];
  }

  else
  {
    NSLog(&cfstr_Vehicleinfosta_1.isa, a4);
  }
}

- (void)updateAccessoryInfo:(id)a3
{
  v4 = [MEMORY[0x277CCAB88] notificationWithName:*MEMORY[0x277D18460] object:0 userInfo:a3];

  [(EAAccessoryManager *)self _externalAccessoryUpdated:v4];
}

- (void)showBluetoothAccessoryPickerWithNameFilter:(NSPredicate *)predicate completion:(EABluetoothAccessoryPickerCompletion)completion
{
  if (([objc_msgSend(MEMORY[0x277CCAC38] "processInfo")] & 1) != 0 || objc_msgSend(objc_msgSend(MEMORY[0x277CCAC38], "processInfo"), "isiOSAppOnMac"))
  {
    NSLog(&cfstr_BtpickerSIsrun.isa, "[EAAccessoryManager showBluetoothAccessoryPickerWithNameFilter:completion:]");

    [EAPostAlert EANotificationPostAccessoryNotification:@"BLUETOOTH_PICKER_UNAVAILABLE_TITLE" forMsg:@"BLUETOOTH_PICKER_UNAVAILABLE_MSG" forDefaultButton:@"OKAY_STRING" withAlternateButton:0 forNotification:&_BTPickerUnsupportedNotificationRef withCallback:__notificationCleanup andTimeout:0.0];
  }

  else
  {
    [(NSRecursiveLock *)self->_pickerLock lock];
    if (!self->_picker)
    {
      self->_sequesterNewAccessories = 1;
      selectedBluetoothAddress = self->_selectedBluetoothAddress;
      if (selectedBluetoothAddress)
      {

        self->_selectedBluetoothAddress = 0;
      }

      self->_pickerCompletion = _Block_copy(completion);
      v8 = [[EABluetoothAccessoryPicker alloc] initWithPredicate:predicate];
      self->_picker = v8;
      [(EABluetoothAccessoryPicker *)v8 setDelegate:self];
      [(EABluetoothAccessoryPicker *)self->_picker show];
    }

    pickerLock = self->_pickerLock;

    [(NSRecursiveLock *)pickerLock unlock];
  }
}

- (void)_notifyObserversThatAccessoryDisconnectedWithUserInfo:(id)a3
{
  v5 = [a3 objectForKey:@"EAAccessoryKey"];
  if (v5)
  {
    v6 = v5;
    v7 = a3;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__EAAccessoryManager__notifyObserversThatAccessoryDisconnectedWithUserInfo___block_invoke;
    block[3] = &unk_278A4E2D0;
    block[4] = v6;
    block[5] = self;
    block[6] = a3;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __76__EAAccessoryManager__notifyObserversThatAccessoryDisconnectedWithUserInfo___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) delegate])
  {
    [*(a1 + 32) delegate];
    if (objc_opt_respondsToSelector())
    {
      [objc_msgSend(*(a1 + 32) "delegate")];
    }
  }

  v2 = [*(a1 + 32) coreAccessoriesPrimaryUUID];
  v3 = [*(a1 + 32) connectionID];
  v4 = [*(a1 + 32) createdByCoreAccessories];
  NSLog(&cfstr_Externalaccess_15.isa, 1084, v2, v3, v4, __registeredForLocalNotifications);
  if (__registeredForLocalNotifications)
  {
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  }

  v5 = *(a1 + 48);
}

- (void)_iapServerDied:(id)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  NSLog(&cfstr_Externalaccess_16.isa, [(NSMutableArray *)self->_connectedAccessories count], a3);
  [(EAAccessoryManager *)self _removeAlliAPAccessoriesFromArray:self->_connectedAccessories notifyClients:1];
  [(EAAccessoryManager *)self _removeAlliAPAccessoriesFromArray:self->_sequesteredAccessories notifyClients:0];
  if (+[EAAccessoryManager isLoggingEnabled])
  {
    NSLog(&cfstr_Externalaccess_17.isa, __iapdCrashed, 1, __iap2dStartedSinceLastAppExecution, 0, __iapdStartedSinceLastAppExecution, 0);
  }

  __iapdCrashed = 1;
  __iap2dStartedSinceLastAppExecution = 0;
  __iapdStartedSinceLastAppExecution = 0;
}

- (void)_applicationDidEnterBackground:(id)a3
{
  NSLog(&cfstr_Externalaccess_18.isa, a2, a3);
  if (+[EAAccessoryManager isLoggingEnabled])
  {
    NSLog(&cfstr_Externalaccess_19.isa, "/Library/Caches/com.apple.xbs/Sources/ExternalAccessory/EAAccessoryManager.m", "[EAAccessoryManager _applicationDidEnterBackground:]", 1126, __capabilities, 16, 32);
  }

  if (_backgroundTask)
  {
    v4 = objc_opt_class();
    NSLog(&cfstr_Externalaccess_20.isa, v4, _backgroundTask);
  }

  v5 = [NSClassFromString(&cfstr_Uiapplication.isa) sharedApplication];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__EAAccessoryManager__applicationDidEnterBackground___block_invoke;
  v9[3] = &unk_278A4E2F8;
  v9[4] = self;
  _backgroundTask = [v5 beginBackgroundTaskWithName:@"EA_BackgroundTask" expirationHandler:v9];
  if (+[EAAccessoryManager isLoggingEnabled])
  {
    v6 = objc_opt_class();
    NSLog(&cfstr_Externalaccess_24.isa, v6, _backgroundTask);
  }

  if ((__capabilities & 0x30) != 0)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__EAAccessoryManager__applicationDidEnterBackground___block_invoke_2;
    block[3] = &unk_278A4E2F8;
    block[4] = self;
    dispatch_async(global_queue, block);
  }

  else
  {
    [(EAAccessoryManager *)self _cleanUpForTaskSuspendWithTaskIdentifier:_backgroundTask];
  }
}

void __53__EAAccessoryManager__applicationDidEnterBackground___block_invoke(uint64_t a1)
{
  if (+[EAAccessoryManager isLoggingEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    NSLog(&cfstr_Externalaccess_21.isa, v3, _backgroundTask);
  }

  v4 = _backgroundTask;
  v5 = *(a1 + 32);
  v6 = objc_opt_class();
  if (v4)
  {
    NSLog(&cfstr_Externalaccess_22.isa, v6, _backgroundTask);
    [-[objc_class sharedApplication](NSClassFromString(&cfstr_Uiapplication.isa) "sharedApplication")];
    _backgroundTask = 0;
  }

  else
  {
    NSLog(&cfstr_Externalaccess_23.isa, v6);
  }
}

- (id)_findExtraAccessoriesContainedOnlyIniAP:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = a3;
  v6 = [a3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    v9 = *MEMORY[0x277D18480];
    v10 = *MEMORY[0x277D18450];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 objectForKey:v9];
        Accessory = __findAccessory([v13 unsignedIntValue], self->_connectedAccessories);
        if (Accessory || (Accessory = __findAccessory([v13 unsignedIntValue], self->_sequesteredAccessories)) != 0)
        {
          v15 = Accessory;
          if ([Accessory containsSameProtocolsAsiAPAccessoryProtocols:{objc_msgSend(v12, "objectForKey:", v10)}])
          {
            continue;
          }

          if (+[EAAccessoryManager isLoggingEnabled])
          {
            NSLog(&cfstr_Externalaccess_25.isa, "/Library/Caches/com.apple.xbs/Sources/ExternalAccessory/EAAccessoryManager.m", "-[EAAccessoryManager _findExtraAccessoriesContainedOnlyIniAP:]", 1201, v12, [v15 protocolStrings]);
          }
        }

        [v5 addObject:v12];
        if (+[EAAccessoryManager isLoggingEnabled])
        {
          NSLog(&cfstr_Externalaccess_26.isa, "/Library/Caches/com.apple.xbs/Sources/ExternalAccessory/EAAccessoryManager.m", "-[EAAccessoryManager _findExtraAccessoriesContainedOnlyIniAP:]", 1215, v12, [v5 count]);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  result = v5;
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_findExtraAccessoriesContainedOnlyInEA:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [MEMORY[0x277CBEB18] arrayWithArray:self->_connectedAccessories];
  [v5 addObjectsFromArray:self->_sequesteredAccessories];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    v9 = *MEMORY[0x277D18480];
    v22 = *v26;
    do
    {
      v10 = 0;
      v23 = v7;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v25 + 1) + 8 * v10);
        if (([v11 createdByCoreAccessories] & 1) == 0)
        {
          v24 = v11;
          v12 = [v11 connectionID];
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v13 = [a3 countByEnumeratingWithState:&v29 objects:v34 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = 0;
            v16 = *v30;
            while (1)
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v30 != v16)
                {
                  objc_enumerationMutation(a3);
                }

                if (v15)
                {
                  goto LABEL_13;
                }

                if ([objc_msgSend(*(*(&v29 + 1) + 8 * i) objectForKey:{v9), "unsignedIntegerValue"}] == v12)
                {
                  if (+[EAAccessoryManager isLoggingEnabled])
                  {
                    NSLog(&cfstr_Externalaccess_81.isa, v12);
                  }

LABEL_13:
                  v15 = 1;
                  continue;
                }

                v15 = 0;
              }

              v14 = [a3 countByEnumeratingWithState:&v29 objects:v34 count:16];
              if (!v14)
              {
                goto LABEL_22;
              }
            }
          }

          v15 = 0;
LABEL_22:
          v18 = +[EAAccessoryManager isLoggingEnabled];
          v7 = v23;
          if ((v15 & 1) == 0 && v18)
          {
            NSLog(&cfstr_Externalaccess_82.isa, v12);
          }

          v8 = v22;
          if ((v15 & 1) == 0)
          {
            [v21 addObject:v24];
            if (+[EAAccessoryManager isLoggingEnabled])
            {
              NSLog(&cfstr_Externalaccess_27.isa, "/Library/Caches/com.apple.xbs/Sources/ExternalAccessory/EAAccessoryManager.m", "-[EAAccessoryManager _findExtraAccessoriesContainedOnlyInEA:]", v24, [v21 count]);
            }
          }
        }

        ++v10;
      }

      while (v10 != v7);
      v7 = [v5 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v7);
  }

  result = v21;
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_checkForConnectedAccessories:(BOOL)a3 backgroundTaskIdentifier:(unint64_t)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v26 = a3;
  NSLog(&cfstr_Externalaccess_28.isa, a2, "[EAAccessoryManager _checkForConnectedAccessories:backgroundTaskIdentifier:]", a3, a4);
  v27 = __capabilities;
  v5 = IAPAppConnectedAccessories();
  v25 = [(EAAccessoryManager *)self _findExtraAccessoriesContainedOnlyIniAP:v5];
  v6 = [(EAAccessoryManager *)self _findExtraAccessoriesContainedOnlyInEA:v5];
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v38;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v38 != v10)
        {
          objc_enumerationMutation(v6);
        }

        [v7 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", objc_msgSend(*(*(&v37 + 1) + 8 * i), "_internalConnectionID"))}];
      }

      v9 = [v6 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v9);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = [v7 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v34;
    v15 = *MEMORY[0x277D18480];
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(v7);
        }

        v17 = *(*(&v33 + 1) + 8 * j);
        if (+[EAAccessoryManager isLoggingEnabled]|| (v27 & 0x30) != 0)
        {
          NSLog(&cfstr_Externalaccess_29.isa, "[EAAccessoryManager _checkForConnectedAccessories:backgroundTaskIdentifier:]", v17);
        }

        -[EAAccessoryManager _externalAccessoryDisconnected:](self, "_externalAccessoryDisconnected:", [MEMORY[0x277CCAB88] notificationWithName:@"EAAccessoryCleanUpForTaskSuspend" object:self userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", v17, v15)}]);
      }

      v13 = [v7 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v13);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v18 = [v25 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v30;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(v25);
        }

        v22 = *(*(&v29 + 1) + 8 * k);
        if (+[EAAccessoryManager isLoggingEnabled]|| (v27 & 0x30) != 0)
        {
          NSLog(&cfstr_Externalaccess_30.isa, "[EAAccessoryManager _checkForConnectedAccessories:backgroundTaskIdentifier:]", v22);
        }

        -[EAAccessoryManager _externalAccessoryConnected:](self, "_externalAccessoryConnected:", [MEMORY[0x277CCAB88] notificationWithName:@"EAAccessoryReConnectOnEnterForeground" object:self userInfo:v22]);
      }

      v19 = [v25 countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v19);
  }

  if (v26)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__EAAccessoryManager__checkForConnectedAccessories_backgroundTaskIdentifier___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a4;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __77__EAAccessoryManager__checkForConnectedAccessories_backgroundTaskIdentifier___block_invoke(uint64_t a1)
{
  if (+[EAAccessoryManager isLoggingEnabled])
  {
    NSLog(&cfstr_Externalaccess_31.isa, "[EAAccessoryManager _checkForConnectedAccessories:backgroundTaskIdentifier:]_block_invoke", 1309, *(a1 + 32), _backgroundTask);
  }

  [-[objc_class sharedApplication](NSClassFromString(&cfstr_Uiapplication.isa) "sharedApplication")];
  v2 = *(a1 + 32);
  if (_backgroundTask == v2)
  {
    if (+[EAAccessoryManager isLoggingEnabled])
    {
      NSLog(&cfstr_Externalaccess_32.isa, "[EAAccessoryManager _checkForConnectedAccessories:backgroundTaskIdentifier:]_block_invoke", *(a1 + 32));
    }

    _backgroundTask = 0;
  }

  else
  {
    NSLog(&cfstr_Externalaccess_33.isa, "[EAAccessoryManager _checkForConnectedAccessories:backgroundTaskIdentifier:]_block_invoke", _backgroundTask, v2);
  }
}

- (void)_cleanUpForTaskSuspendWithTaskIdentifier:(unint64_t)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](self->_connectedAccessories, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  connectedAccessories = self->_connectedAccessories;
  v6 = [(NSMutableArray *)connectedAccessories countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(connectedAccessories);
        }

        [v4 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", objc_msgSend(*(*(&v21 + 1) + 8 * i), "_internalConnectionID"))}];
      }

      v7 = [(NSMutableArray *)connectedAccessories countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    v13 = *MEMORY[0x277D18480];
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v4);
        }

        -[EAAccessoryManager _externalAccessoryDisconnected:](self, "_externalAccessoryDisconnected:", [MEMORY[0x277CCAB88] notificationWithName:@"EAAccessoryCleanUpForTaskSuspend" object:self userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", *(*(&v17 + 1) + 8 * j), v13)}]);
      }

      v11 = [v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v11);
  }

  if (+[EAAccessoryManager isLoggingEnabled])
  {
    NSLog(&cfstr_Externalaccess_34.isa, "[EAAccessoryManager _cleanUpForTaskSuspendWithTaskIdentifier:]", a3);
  }

  [-[objc_class sharedApplication](NSClassFromString(&cfstr_Uiapplication.isa) "sharedApplication")];
  if (_backgroundTask == a3)
  {
    if (+[EAAccessoryManager isLoggingEnabled])
    {
      NSLog(&cfstr_Externalaccess_35.isa, "[EAAccessoryManager _cleanUpForTaskSuspendWithTaskIdentifier:]", _backgroundTask);
    }

    _backgroundTask = 0;
  }

  else
  {
    NSLog(&cfstr_Externalaccess_36.isa, "[EAAccessoryManager _cleanUpForTaskSuspendWithTaskIdentifier:]", _backgroundTask, a3);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_applicationWillEnterForeground:(id)a3
{
  NSLog(&cfstr_Externalaccess_37.isa, a2, "[EAAccessoryManager _applicationWillEnterForeground:]", a3);
  if (+[EAAccessoryManager isLoggingEnabled])
  {
    NSLog(&cfstr_Externalaccess_19.isa, "/Library/Caches/com.apple.xbs/Sources/ExternalAccessory/EAAccessoryManager.m", "[EAAccessoryManager _applicationWillEnterForeground:]", 1369, __capabilities, 16, 32);
  }

  if ((__capabilities & 0x30) == 0 && +[EAAccessoryManager isLoggingEnabled])
  {
    NSLog(&cfstr_Externalaccess_38.isa, "/Library/Caches/com.apple.xbs/Sources/ExternalAccessory/EAAccessoryManager.m", "[EAAccessoryManager _applicationWillEnterForeground:]", 1386);
  }

  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__EAAccessoryManager__applicationWillEnterForeground___block_invoke;
  block[3] = &unk_278A4E2F8;
  block[4] = self;
  dispatch_async(global_queue, block);
}

- (void)_externalAccessoryReconnected:(id)a3
{
  if (+[EAAccessoryManager isLoggingEnabled])
  {
    NSLog(&cfstr_Externalaccess_39.isa, "/Library/Caches/com.apple.xbs/Sources/ExternalAccessory/EAAccessoryManager.m", "-[EAAccessoryManager _externalAccessoryReconnected:]", 1407, [a3 userInfo]);
  }

  [(EAAccessoryManager *)self _externalAccessoryConnected:a3];
}

- (void)_externalAccessoryConnectedNotificationHandler:(id)a3
{
  if (+[EAAccessoryManager isLoggingEnabled])
  {
    NSLog(&cfstr_Externalaccess_44.isa, "[EAAccessoryManager _externalAccessoryConnectedNotificationHandler:]", 1452);
  }

  [(EAAccessoryManager *)self _externalAccessoryConnected:a3];
}

- (void)_externalAccessoryConnected:(id)a3
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v4 = [a3 userInfo];
  v5 = *MEMORY[0x277D18480];
  v6 = [v4 objectForKey:*MEMORY[0x277D18480]];
  if (__findAccessory([v6 unsignedIntValue], self->_connectedAccessories) || __findAccessory(objc_msgSend(v6, "unsignedIntValue"), self->_sequesteredAccessories))
  {
    v7 = MEMORY[0x277CCAB88];
    v8 = MEMORY[0x277CBEAC0];
    v9 = [v4 objectForKey:v5];
    -[EAAccessoryManager _externalAccessoryDisconnected:](self, "_externalAccessoryDisconnected:", [v7 notificationWithName:@"EAAccessoryReConnect" object:self userInfo:{objc_msgSend(v8, "dictionaryWithObjectsAndKeys:", v9, v5, objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 1), @"EAAccessoryIsReconnecting", 0)}]);
  }

  v10 = objc_alloc_init(EAAccessoryInternal);
  NSLog(&cfstr_Externalaccess_45.isa, v4);
  __convertIAPAccessoryToEAAccessory(v4, v10);
  [(EAAccessoryInternal *)v10 setConnected:1];
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = [(EAAccessoryInternal *)v10 createdByCoreAccessories];
  v11 = [[EAAccessory alloc] _initWithAccessory:v10];
  [__accessoryListLock lock];
  if (!self->_connectedAccessories)
  {
    self->_connectedAccessories = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  [__accessoryListLock unlock];
  [(NSRecursiveLock *)self->_pickerLock lock];
  v12 = [v11 macAddress];
  v13 = [v12 localizedCompare:self->_selectedBluetoothAddress];
  *(v29 + 24) = v13 == 0;
  if (self->_sequesterNewAccessories)
  {
    if (v13)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = !v14;
  }

  else
  {
    v15 = 0;
  }

  if (+[EAAccessoryManager isLoggingEnabled])
  {
    NSLog(&cfstr_Externalaccess_46.isa, v12, self->_selectedBluetoothAddress, v15);
    v16 = @"NO";
    if (!v12)
    {
      v16 = @"YES";
    }

    NSLog(&cfstr_Externalaccess_47.isa, v16);
  }

  [(NSRecursiveLock *)self->_pickerLock unlock];
  if (v15)
  {
    sequesteredAccessories = self->_sequesteredAccessories;
    if (!sequesteredAccessories)
    {
      sequesteredAccessories = objc_alloc_init(MEMORY[0x277CBEB18]);
      self->_sequesteredAccessories = sequesteredAccessories;
    }

    [(NSMutableArray *)sequesteredAccessories addObject:v11];
  }

  else
  {
    [__accessoryListLock lock];
    [(NSMutableArray *)self->_connectedAccessories addObject:v11];
    NSLog(&cfstr_Externalaccess_48.isa, [v11 connectionID], objc_msgSend(v11, "coreAccessoriesPrimaryUUID"));
    [__accessoryListLock unlock];
  }

  if (*(v29 + 24) == 1)
  {
    [(NSRecursiveLock *)self->_pickerLock lock];
    [(NSTimer *)self->_pickerTimer invalidate];

    self->_pickerTimer = 0;
    [(EABluetoothAccessoryPicker *)self->_picker dismissPicker];

    self->_picker = 0;
    pickerCompletion = self->_pickerCompletion;
    if (pickerCompletion)
    {
      pickerCompletion[2](pickerCompletion, 0);
      _Block_release(self->_pickerCompletion);
      self->_pickerCompletion = 0;
    }

    [(NSRecursiveLock *)self->_pickerLock unlock];
    self->_sequesterNewAccessories = 0;
    [(EAAccessoryManager *)self _integrateSequesteredAccessories];
  }

  v19 = [v11 coreAccessoriesPrimaryUUID];
  v20 = [v11 connectionID];
  v21 = [v11 createdByCoreAccessories];
  NSLog(&cfstr_Externalaccess_49.isa, 1551, v19, v20, v21, __registeredForLocalNotifications);
  if (!((__registeredForLocalNotifications == 0) | v15 & 1))
  {
    v22 = v11;
    v23 = v6;
    connectionQueue = self->_connectionQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__EAAccessoryManager__externalAccessoryConnected___block_invoke;
    block[3] = &unk_278A4E368;
    block[4] = v6;
    block[5] = v11;
    block[7] = v26;
    block[8] = &v28;
    block[6] = self;
    dispatch_async(connectionQueue, block);
  }

  if (-[EAAccessoryManager areLocationAccessoriesEnabled](self, "areLocationAccessoriesEnabled") && [v11 supportsLocation] && objc_msgSend(v11, "createdByCoreAccessories"))
  {
    NSLog(&cfstr_Externalaccess_55.isa, [v11 coreAccessoriesPrimaryUUID]);
    [__accEAProviderClassInstance startLocationInformationForAccessoryUUID:{objc_msgSend(v11, "coreAccessoriesPrimaryUUID")}];
  }

  else
  {
    NSLog(&cfstr_Externalaccess_56.isa, -[EAAccessoryManager areLocationAccessoriesEnabled](self, "areLocationAccessoriesEnabled"), [v11 coreAccessoriesPrimaryUUID], objc_msgSend(v11, "supportsLocation"), objc_msgSend(v11, "createdByCoreAccessories"));
  }

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v28, 8);
}

void __50__EAAccessoryManager__externalAccessoryConnected___block_invoke(uint64_t a1)
{
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0 && (__capabilities & 0x30) == 0x20)
  {
    v7 = 2;
    [*(a1 + 32) unsignedIntValue];
    v2 = RetainConnectionToIAPDaemonByCheckingConnectionID();
    if (+[EAAccessoryManager isLoggingEnabled])
    {
      NSLog(&cfstr_Externalaccess_51.isa, "/Library/Caches/com.apple.xbs/Sources/ExternalAccessory/EAAccessoryManager.m", "[EAAccessoryManager _externalAccessoryConnected:]_block_invoke", 1579, *(a1 + 32));
    }

    [*(a1 + 40) _setNotPresentInIAPAccessoriesArray:1];
    if (v2)
    {
      xpc_release(v2);
    }
  }

  NSLog(&cfstr_Externalaccess_52.isa, 1592, [*(a1 + 40) _internalNotPresentInIAPAccessoriesArray]);
  if ([*(a1 + 40) _internalNotPresentInIAPAccessoriesArray])
  {
    if (+[EAAccessoryManager isLoggingEnabled])
    {
      NSLog(&cfstr_Externalaccess_53.isa, "/Library/Caches/com.apple.xbs/Sources/ExternalAccessory/EAAccessoryManager.m", "[EAAccessoryManager _externalAccessoryConnected:]_block_invoke", 1599);
    }
  }

  else
  {
    v3 = *(a1 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__EAAccessoryManager__externalAccessoryConnected___block_invoke_2;
    block[3] = &unk_278A4E340;
    v6 = *(a1 + 64);
    v5 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __50__EAAccessoryManager__externalAccessoryConnected___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v2 setObject:*(a1 + 32) forKey:@"EAAccessoryKey"];
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    [v2 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", 1), @"EAAccessorySelectedKey"}];
  }

  NSLog(&cfstr_Externalaccess_54.isa, 1618, [*(a1 + 32) coreAccessoriesPrimaryUUID], objc_msgSend(*(a1 + 32), "connectionID"), objc_msgSend(*(a1 + 32), "createdByCoreAccessories"));
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  v3 = *(a1 + 32);
}

- (void)_externalAccessoryUpdated:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x277D18480]];
  Accessory = __findAccessory([v5 unsignedIntValue], self->_connectedAccessories);
  v7 = Accessory;
  if (Accessory)
  {
    v8 = Accessory;
  }

  else
  {
    v9 = __findAccessory([v5 unsignedIntValue], self->_sequesteredAccessories);
    if (!v9)
    {
      return;
    }

    v8 = v9;
  }

  [v8 _updateAccessoryInfo:v4];
  if (v7)
  {
    v10 = __registeredForLocalNotifications == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v8 forKey:@"EAAccessoryKey"];

    [v11 postNotificationName:@"EAAccessoryUpdateNotification" object:self userInfo:v12];
  }
}

- (void)_pointOfInterestStatusReceived:(id)a3
{
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [a3 userInfo];
  [v5 setObject:objc_msgSend(v6 forKey:{"objectForKey:", *MEMORY[0x277D18428]), @"EAAccessoryDestinationStatusIdentifierKey"}];
  v7 = [a3 userInfo];
  [v5 setObject:objc_msgSend(v7 forKey:{"objectForKey:", *MEMORY[0x277D18420]), @"EAAccessoryDestinationStatusDidSucceedKey"}];
  v8 = [a3 userInfo];
  [v5 setObject:objc_msgSend(v8 forKey:{"objectForKey:", *MEMORY[0x277D18430]), @"EAAccessoryDestinationStatusParametersUsedKey"}];
  v9 = [MEMORY[0x277CCAB98] defaultCenter];

  [v9 postNotificationName:@"EAAccessoryDestinationStatusNotification" object:self userInfo:v5];
}

- (void)_OOBBTPairingCompletionStatusReceived:(id)a3
{
  v5 = [a3 userInfo];
  v6 = [objc_msgSend(v5 objectForKey:{*MEMORY[0x277D18410]), "unsignedIntValue"}];
  v7 = [a3 userInfo];
  v8 = [objc_msgSend(v7 objectForKey:{*MEMORY[0x277D18408]), "unsignedCharValue"}];
  v9 = [a3 userInfo];
  v10 = [v9 objectForKey:*MEMORY[0x277D183F8]];
  Accessory = __findAccessory(v6, [(EAAccessoryManager *)self connectedAccessories]);

  [Accessory _OOBBTPairingCompletedWithStatus:v8 forAccessoryWithMACAddress:v10];
}

- (void)_externalAccessoryDisconnected:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = [a3 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x277D18480]];
  NSLog(&cfstr_Externalaccess_57.isa, "-[EAAccessoryManager _externalAccessoryDisconnected:]", [v6 unsignedLongLongValue]);
  if (v6)
  {
    v26 = [v6 unsignedIntValue];
    [__accessoryListLock lock];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    p_connectedAccessories = &self->_connectedAccessories;
    connectedAccessories = self->_connectedAccessories;
    v9 = [(NSMutableArray *)connectedAccessories countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v32;
      while (2)
      {
        v13 = 0;
        v14 = v11;
        v11 += v10;
        do
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(connectedAccessories);
          }

          if ([*(*(&v31 + 1) + 8 * v13) connectionID] == v26)
          {
            v21 = 1;
LABEL_23:
            v22 = *p_connectedAccessories;
            v23 = [*p_connectedAccessories objectAtIndex:v14];
            [v23 _setConnected:0];
            [v22 removeObjectAtIndex:v14];
            [__accessoryListLock unlock];
            if ([v23 _internalNotPresentInIAPAccessoriesArray])
            {
              if (+[EAAccessoryManager isLoggingEnabled])
              {
                NSLog(&cfstr_Externalaccess_58.isa, "/Library/Caches/com.apple.xbs/Sources/ExternalAccessory/EAAccessoryManager.m", "[EAAccessoryManager _externalAccessoryDisconnected:]", 1762, v26);
              }
            }

            else if (v21)
            {
              if (+[EAAccessoryManager isLoggingEnabled])
              {
                NSLog(&cfstr_Externalaccess_59.isa, "/Library/Caches/com.apple.xbs/Sources/ExternalAccessory/EAAccessoryManager.m", "[EAAccessoryManager _externalAccessoryDisconnected:]", 1770, v26, v23);
              }

              -[EAAccessoryManager _notifyObserversThatAccessoryDisconnectedWithUserInfo:](self, "_notifyObserversThatAccessoryDisconnectedWithUserInfo:", [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v23, @"EAAccessoryKey", objc_msgSend(objc_msgSend(a3, "userInfo"), "objectForKey:", @"EAAccessoryIsReconnecting", @"EAAccessoryIsReconnecting", 0}]);
            }

            goto LABEL_31;
          }

          ++v14;
          ++v13;
        }

        while (v10 != v13);
        v10 = [(NSMutableArray *)connectedAccessories countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    p_connectedAccessories = &self->_sequesteredAccessories;
    sequesteredAccessories = self->_sequesteredAccessories;
    v16 = [(NSMutableArray *)sequesteredAccessories countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v28;
      while (2)
      {
        v20 = 0;
        v14 = v18;
        v18 += v17;
        do
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(sequesteredAccessories);
          }

          if ([*(*(&v27 + 1) + 8 * v20) connectionID] == v26)
          {
            v21 = 0;
            goto LABEL_23;
          }

          ++v14;
          ++v20;
        }

        while (v17 != v20);
        v17 = [(NSMutableArray *)sequesteredAccessories countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    [__accessoryListLock unlock];
    NSLog(&cfstr_Externalaccess_60.isa, v26);
  }

  else
  {
    NSLog(&cfstr_Externalaccess_61.isa, v25);
  }

LABEL_31:
  v24 = *MEMORY[0x277D85DE8];
}

- (void)_locationNmeaDataAvailable:(id)Accessory
{
  if (Accessory)
  {
    v4 = Accessory;
    if ([Accessory userInfo])
    {
      v5 = [v4 userInfo];
      Accessory = __findAccessory([objc_msgSend(v5 objectForKey:{*MEMORY[0x277D18480]), "intValue"}], self->_connectedAccessories);
    }

    else
    {
      Accessory = 0;
    }
  }

  [(EAAccessoryManager *)self _locationNmeaDataAvailableForAccessory:Accessory];
}

- (void)_locationPointDataAvailable:(id)Accessory
{
  if (Accessory)
  {
    v4 = Accessory;
    if ([Accessory userInfo])
    {
      v5 = [v4 userInfo];
      Accessory = __findAccessory([objc_msgSend(v5 objectForKey:{*MEMORY[0x277D18480]), "intValue"}], self->_connectedAccessories);
    }

    else
    {
      Accessory = 0;
    }
  }

  [(EAAccessoryManager *)self _locationPointDataAvailableForAccessory:Accessory];
}

- (void)_ephemerisURLAvailable:(id)Accessory
{
  if (Accessory)
  {
    v4 = Accessory;
    if ([Accessory userInfo])
    {
      v5 = [v4 userInfo];
      Accessory = __findAccessory([objc_msgSend(v5 objectForKey:{*MEMORY[0x277D18480]), "intValue"}], self->_connectedAccessories);
    }

    else
    {
      Accessory = 0;
    }
  }

  [(EAAccessoryManager *)self _ephemerisURLAvailableForAccessory:Accessory];
}

- (void)_nmeaFilteringSupportChanged:(id)Accessory
{
  if (Accessory)
  {
    v4 = Accessory;
    if ([Accessory userInfo])
    {
      v5 = [v4 userInfo];
      Accessory = __findAccessory([objc_msgSend(v5 objectForKey:{*MEMORY[0x277D18480]), "intValue"}], self->_connectedAccessories);
    }

    else
    {
      Accessory = 0;
    }
  }

  [(EAAccessoryManager *)self _nmeaFilteringSupportChangedForAccessory:Accessory];
}

- (void)_gpsTimeRequested:(id)Accessory
{
  if (Accessory)
  {
    v4 = Accessory;
    if ([Accessory userInfo])
    {
      v5 = [v4 userInfo];
      Accessory = __findAccessory([objc_msgSend(v5 objectForKey:{*MEMORY[0x277D18480]), "intValue"}], self->_connectedAccessories);
    }

    else
    {
      Accessory = 0;
    }
  }

  [(EAAccessoryManager *)self _gpsTimeRequestedForAccessory:Accessory];
}

- (void)_locationNmeaDataAvailableForAccessory:(id)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = @"EAAccessoryNMEASentenceFromAccessoryKey";
    v7[0] = a3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  NSLog(&cfstr_LocationSendUs.isa, @"EAAccessoryDidReceiveNMEASentenceNotification", v4);
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_locationPointDataAvailableForAccessory:(id)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = @"EAAccessoryNMEASentenceFromAccessoryKey";
    v7[0] = a3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  NSLog(&cfstr_LocationSendUs.isa, @"EAAccessoryDidReceiveLocationPointDataNotification", v4);
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_ephemerisURLAvailableForAccessory:(id)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = @"EAAccessoryNMEASentenceFromAccessoryKey";
    v7[0] = a3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  NSLog(&cfstr_LocationSendUs.isa, @"EAAccessoryDidReceiveEphemerisURLNotification", v4);
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_nmeaFilteringSupportChangedForAccessory:(id)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = @"EAAccessoryNMEASentenceFromAccessoryKey";
    v7[0] = a3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  NSLog(&cfstr_LocationSendUs.isa, @"EAAccessoryNMEASentenceFilteringSupportChangedNotification", v4);
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_gpsTimeRequestedForAccessory:(id)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = @"EAAccessoryNMEASentenceFromAccessoryKey";
    v7[0] = a3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  NSLog(&cfstr_LocationSendUs.isa, @"EAAccessoryDidRequestGPSTimeNotification", v4);
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_vehicleDataUpdated:(id)a3
{
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = [a3 userInfo];

  [v5 postNotificationName:@"EAAccessoryVehicleDataUpdate" object:self userInfo:v6];
}

- (void)_cameraInfoUpdated:(id)a3
{
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = [a3 userInfo];

  [v5 postNotificationName:@"EAAccessoryCameraInfoNotification" object:self userInfo:v6];
}

- (void)_integrateSequesteredAccessories
{
  if ([(NSMutableArray *)self->_sequesteredAccessories count])
  {
    v3 = MEMORY[0x277D85CD0];
    do
    {
      v4 = [(NSMutableArray *)self->_sequesteredAccessories objectAtIndex:0];
      v5 = v4;
      [(NSMutableArray *)self->_sequesteredAccessories removeObjectAtIndex:0];
      [(NSMutableArray *)self->_connectedAccessories addObject:v4];
      if (__registeredForLocalNotifications)
      {
        v6 = v4;
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = __54__EAAccessoryManager__integrateSequesteredAccessories__block_invoke;
        v7[3] = &unk_278A4E390;
        v7[4] = self;
        v7[5] = v4;
        dispatch_async(v3, v7);
      }
    }

    while ([(NSMutableArray *)self->_sequesteredAccessories count]);
  }
}

void __54__EAAccessoryManager__integrateSequesteredAccessories__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"EAAccessoryDidConnectNotification" object:*(a1 + 32) userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", *(a1 + 40), @"EAAccessoryKey"}];
  v3 = *(a1 + 40);
}

- (void)_handleAccessoryNotificationTimeout:(id)a3
{
  [(NSRecursiveLock *)self->_pickerLock lock];
  self->_pickerTimer = 0;
  [(EABluetoothAccessoryPicker *)self->_picker dismissPicker];

  self->_picker = 0;
  if (+[EAAccessoryManager isLoggingEnabled])
  {
    NSLog(&cfstr_Externalaccess_62.isa);
  }

  pickerCompletion = self->_pickerCompletion;
  if (pickerCompletion)
  {
    pickerCompletion[2](pickerCompletion, [MEMORY[0x277CCA9B8] errorWithDomain:@"EABluetoothAccessoryPickerErrorDomain" code:1 userInfo:0]);
    _Block_release(self->_pickerCompletion);
    self->_pickerCompletion = 0;
  }

  [(NSRecursiveLock *)self->_pickerLock unlock];
  self->_sequesterNewAccessories = 0;

  [(EAAccessoryManager *)self _integrateSequesteredAccessories];
}

- (void)_timeSyncInfoUpdated:(id)a3
{
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = [a3 userInfo];

  [v5 postNotificationName:@"EAAccessoryTimeSyncInfoUpdate" object:self userInfo:v6];
}

- (void)wakeAccessoryWithToken:(id)a3
{
  v4 = 0;
  v3 = [MEMORY[0x277CCAC58] propertyListWithData:a3 options:0 format:0 error:&v4];
  if (!v4)
  {
    +[EABluetoothAccessoryPicker wakeSelectedBluetoothAccessories:](EABluetoothAccessoryPicker, "wakeSelectedBluetoothAccessories:", [v3 objectForKey:@"EAAccessoryMacAddress"]);
  }
}

- (BOOL)appDeclaresProtocol:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  if (_CFExecutableLinkedOnOrAfter() && (__supportsEAShowAllAccessoriesEntitlement & 1) == 0)
  {
    v6 = __declaredProtocols;
    if (!__declaredProtocols)
    {
      v7 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
      if (v7 && (v8 = v7, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v6 = v8;
        __declaredProtocols = v6;
        if (!v6)
        {
LABEL_9:
          LOBYTE(v4) = 0;
          goto LABEL_4;
        }
      }

      else
      {
        v6 = __declaredProtocols;
        if (!__declaredProtocols)
        {
          goto LABEL_9;
        }
      }
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (!v4)
    {
      goto LABEL_4;
    }

    v9 = v4;
    v10 = *v14;
LABEL_13:
    v11 = 0;
    while (1)
    {
      if (*v14 != v10)
      {
        objc_enumerationMutation(v6);
      }

      if (![*(*(&v13 + 1) + 8 * v11) caseInsensitiveCompare:a3])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        LOBYTE(v4) = 0;
        if (v9)
        {
          goto LABEL_13;
        }

        goto LABEL_4;
      }
    }
  }

  LOBYTE(v4) = 1;
LABEL_4:
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)accessibilityAction:(id)a3
{
  v5 = [objc_msgSend(a3 objectForKey:{*MEMORY[0x277D18480]), "unsignedIntValue"}];
  if (v5)
  {
    Accessory = __findAccessory(v5, self->_connectedAccessories);
    [Accessory delegate];
    if (objc_opt_respondsToSelector())
    {
      v7 = [objc_msgSend(a3 objectForKey:{@"EAAccessoryAccessibilityActionKey", "unsignedIntValue"}];
      v8 = [Accessory delegate];

      [v8 accessibilityAccessory:Accessory performAction:v7 withObject:a3];
    }
  }
}

- (void)accessibilityContextChange:(id)a3
{
  v5 = [objc_msgSend(a3 objectForKey:{*MEMORY[0x277D18480]), "unsignedIntValue"}];
  if (v5)
  {
    Accessory = __findAccessory(v5, self->_connectedAccessories);
    [Accessory delegate];
    if (objc_opt_respondsToSelector())
    {
      v7 = [objc_msgSend(a3 objectForKey:{@"EAAccessoryAccessibilityContextKey", "unsignedIntValue"}];
      v8 = [Accessory delegate];

      [v8 accessibilityAccessory:Accessory setContext:v7];
    }
  }
}

- (void)accessibilityItemPropertyRequest:(id)a3
{
  v5 = [objc_msgSend(a3 objectForKey:{*MEMORY[0x277D18480]), "unsignedIntValue"}];
  if (v5)
  {
    v6 = v5;
    Accessory = __findAccessory(v5, self->_connectedAccessories);
    [Accessory delegate];
    if (objc_opt_respondsToSelector())
    {
      v8 = [objc_msgSend(a3 objectForKey:{@"EAAccessoryAccessibilityItemPropertyKey", "unsignedIntValue"}];
      if ((v8 - 1) <= 4)
      {
        v9 = [objc_msgSend(Accessory "delegate")];
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{objc_msgSend(a3, "objectForKey:", @"EAAccessoryAccessibilityItemPropertyKey", @"EAAccessoryAccessibilityItemPropertyKey", objc_msgSend(a3, "objectForKey:", @"EAAccessoryAccessibilityContextKey", @"EAAccessoryAccessibilityContextKey", v9, @"EAAccessoryAccessibilityResponseKey", 0}];

        MEMORY[0x2821728F0](v6, v10);
      }
    }
  }
}

- (void)accessibilitySystemPropertyChange:(id)a3
{
  v5 = [objc_msgSend(a3 objectForKey:{*MEMORY[0x277D18480]), "unsignedIntValue"}];
  if (v5)
  {
    Accessory = __findAccessory(v5, self->_connectedAccessories);
    [Accessory delegate];
    if (objc_opt_respondsToSelector())
    {
      v7 = [objc_msgSend(a3 objectForKey:{@"EAAccessoryAccessibilitySystemPropertyKey", "unsignedIntValue"}];
      v8 = [Accessory delegate];

      [v8 accessibilityAccessory:Accessory setValue:a3 forSystemProperty:v7];
    }
  }
}

- (void)accessibilitySystemPropertyRequest:(id)a3
{
  v5 = [objc_msgSend(a3 objectForKey:{*MEMORY[0x277D18480]), "unsignedIntValue"}];
  if (v5)
  {
    v6 = v5;
    Accessory = __findAccessory(v5, self->_connectedAccessories);
    [Accessory delegate];
    if (objc_opt_respondsToSelector())
    {
      v8 = [objc_msgSend(a3 objectForKey:{@"EAAccessoryAccessibilitySystemPropertyKey", "unsignedIntValue"}];
      if ((v8 - 1) <= 2)
      {
        v9 = [objc_msgSend(Accessory "delegate")];
        if (v9)
        {
          v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{objc_msgSend(a3, "objectForKey:", @"EAAccessoryAccessibilitySystemPropertyKey", @"EAAccessoryAccessibilitySystemPropertyKey", v9, @"EAAccessoryAccessibilityResponseKey", objc_msgSend(a3, "objectForKey:", @"EAAccessoryAccessibilityContextKey", @"EAAccessoryAccessibilityContextKey", 0}];

          MEMORY[0x2821728F0](v6, v10);
        }
      }
    }
  }
}

- (void)setAreLocationAccessoriesEnabled:(BOOL)a3
{
  if (__areLocationAccessoriesEnabled != a3)
  {
    v3 = a3;
    NSLog(&cfstr_LocationAreloc.isa, a2, __areLocationAccessoriesEnabled, a3);
    __areLocationAccessoriesEnabled = v3;
    if (v3)
    {
      IAPLocationActivate();

      [(EAAccessoryManager *)self startLocationForConnectedAccessories];
    }

    else
    {
      IAPLocationDeactivate();

      [(EAAccessoryManager *)self stopLocationForConnectedAccessories];
    }
  }
}

- (void)pointOfInterestSelection:(id)a3
{
  v5 = [objc_msgSend(a3 objectForKey:{*MEMORY[0x277D18480]), "unsignedIntValue"}];
  if (v5)
  {
    Accessory = __findAccessory(v5, self->_connectedAccessories);
    [Accessory delegate];
    if (objc_opt_respondsToSelector())
    {
      v7 = [Accessory delegate];

      [v7 pointOfInterestAccessory:Accessory pointOfInterestSelection:a3];
    }
  }
}

- (void)devicePicker:(id)a3 didSelectAddress:(id)a4 errorCode:(int64_t)a5
{
  v43 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->_pickerLock lock];
  if (self->_picker == a3)
  {
    if (+[EAAccessoryManager isLoggingEnabled])
    {
      NSLog(&cfstr_BtpickerAddres.isa, [a4 cStringUsingEncoding:1], a5);
    }

    if (a4 && [a4 length])
    {
      self->_selectedBluetoothAddress = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:a4];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      connectedAccessories = self->_connectedAccessories;
      v10 = [(NSMutableArray *)connectedAccessories countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = 0;
        v13 = *v38;
        while (2)
        {
          v14 = 0;
          v15 = v12;
          v12 += v11;
          do
          {
            if (*v38 != v13)
            {
              objc_enumerationMutation(connectedAccessories);
            }

            v16 = *(*(&v37 + 1) + 8 * v14);
            if (![objc_msgSend(v16 "macAddress")])
            {
              v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"EABluetoothAccessoryPickerErrorDomain" code:0 userInfo:0];
              v19 = v18;
              v20 = 0;
LABEL_30:
              [(EABluetoothAccessoryPicker *)self->_picker dismissPicker];

              self->_picker = 0;
              pickerCompletion = self->_pickerCompletion;
              if (pickerCompletion)
              {
                pickerCompletion[2](pickerCompletion, v18);
                _Block_release(self->_pickerCompletion);
                self->_pickerCompletion = 0;
              }

              if (v20)
              {
                v29 = v16;
                [(NSMutableArray *)self->_sequesteredAccessories removeObjectAtIndex:v15];
                [(NSMutableArray *)self->_connectedAccessories addObject:v16];

                if (__registeredForLocalNotifications)
                {
                  v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
                  [v30 setObject:v16 forKey:@"EAAccessoryKey"];
                  [v30 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", 1), @"EAAccessorySelectedKey"}];
                  block[0] = MEMORY[0x277D85DD0];
                  block[1] = 3221225472;
                  block[2] = __62__EAAccessoryManager_devicePicker_didSelectAddress_errorCode___block_invoke;
                  block[3] = &unk_278A4E390;
                  block[4] = self;
                  block[5] = v30;
                  dispatch_async(MEMORY[0x277D85CD0], block);
                }
              }

              self->_sequesterNewAccessories = 0;
              [(EAAccessoryManager *)self _integrateSequesteredAccessories];

              self->_selectedBluetoothAddress = 0;
              goto LABEL_36;
            }

            ++v15;
            ++v14;
          }

          while (v11 != v14);
          v11 = [(NSMutableArray *)connectedAccessories countByEnumeratingWithState:&v37 objects:v42 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v12 = 0;
      }

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      sequesteredAccessories = self->_sequesteredAccessories;
      v22 = [(NSMutableArray *)sequesteredAccessories countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v34;
        while (2)
        {
          v25 = 0;
          v15 = v12;
          v12 += v23;
          do
          {
            if (*v34 != v24)
            {
              objc_enumerationMutation(sequesteredAccessories);
            }

            v16 = *(*(&v33 + 1) + 8 * v25);
            if (![objc_msgSend(v16 "macAddress")])
            {
              v18 = 0;
              v20 = 1;
              goto LABEL_30;
            }

            ++v15;
            ++v25;
          }

          while (v23 != v25);
          v23 = [(NSMutableArray *)sequesteredAccessories countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }
      }

      v26 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__handleAccessoryNotificationTimeout_ selector:0 userInfo:0 repeats:10.0];
      self->_pickerTimer = v26;
      v27 = v26;
    }

    else
    {
      [(EABluetoothAccessoryPicker *)self->_picker dismissPicker];

      self->_picker = 0;
      v17 = self->_pickerCompletion;
      if (v17)
      {
        v17[2](v17, [MEMORY[0x277CCA9B8] errorWithDomain:@"EABluetoothAccessoryPickerErrorDomain" code:a5 userInfo:0]);
        _Block_release(self->_pickerCompletion);
        self->_pickerCompletion = 0;
      }

      self->_sequesterNewAccessories = 0;
      [(EAAccessoryManager *)self _integrateSequesteredAccessories];
    }
  }

LABEL_36:
  [(NSRecursiveLock *)self->_pickerLock unlock];
  v31 = *MEMORY[0x277D85DE8];
}

void __62__EAAccessoryManager_devicePicker_didSelectAddress_errorCode___block_invoke(uint64_t a1)
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  v2 = *(a1 + 40);
}

- (void)closeEASessionForEASessionUUID:(id)a3
{
  if (a3)
  {
    [__currentCoreAccessoriesEASessions removeObjectForKey:?];
    [__activeCoreAccessoriesEASessions removeObjectForKey:a3];
    v4 = __accEAProviderClassInstance;

    [v4 closeExternalAccessorySession:a3];
  }
}

- (void)accessoryClosedEASession:(id)a3
{
  v4 = [__currentCoreAccessoriesEASessions objectForKey:?];
  [__activeCoreAccessoriesEASessions removeObjectForKey:a3];
  if (v4)
  {
    [objc_msgSend(v4 "accessory")];
  }

  v5 = __currentCoreAccessoriesEASessions;

  [v5 removeObjectForKey:a3];
}

- (void)handleIncomingExternalAccessoryData:(id)a3 forEASessionIdentifier:(id)a4 withReply:(id)a5
{
  v7 = [__activeCoreAccessoriesEASessions objectForKey:a4];
  v8 = v7;
  if (v7)
  {
    [v7 _handleIncomingEAData:a3];
  }

  v9 = *(a5 + 2);

  v9(a5, v8 != 0);
}

- (void)closeInputStreamForEASessionUUID:(id)a3
{
  if (a3)
  {
    v5 = __activeCoreAccessoriesEASessions;

    [v5 removeObjectForKey:?];
  }

  else if ([EAAccessoryManager isLoggingEnabled:v3])
  {
    NSLog(&cfstr_Externalaccess_63.isa);
  }
}

- (void)saveEASession:(id)a3 forEASessionUUID:(id)a4
{
  [__currentCoreAccessoriesEASessions setObject:? forKey:?];
  v6 = __activeCoreAccessoriesEASessions;

  [v6 setObject:a3 forKey:a4];
}

- (void)sendOutgoingEAData:(id)a3 forSessionUUID:(id)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__EAAccessoryManager_sendOutgoingEAData_forSessionUUID___block_invoke;
  v4[3] = &unk_278A4E3B8;
  v4[4] = a4;
  [__accEAProviderClassInstance sendOutgoingExternalAccessoryData:a3 forEASessionIdentifier:a4 withReply:v4];
}

void __56__EAAccessoryManager_sendOutgoingEAData_forSessionUUID___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    NSLog(&cfstr_Externalaccess_64.isa, *(a1 + 32));
  }
}

- (void)sendNMEAFilterList:(id)a3 forUUID:(id)a4
{
  AccessoryByUUID = __findAccessoryByUUID(a4, self->_connectedAccessories);
  if (AccessoryByUUID)
  {
    NSLog(&cfstr_LocationSendin.isa, [AccessoryByUUID coreAccessoriesPrimaryUUID]);
    v7 = __accEAProviderClassInstance;

    [v7 sendNMEAFilterList:a3 forAccessoryUUID:a4];
  }
}

- (id)authCertForLegacyConnectionID:(unsigned int)a3
{
  result = __findAccessory(a3, self->_connectedAccessories);
  if (result)
  {
    v4 = [objc_msgSend(result "certData")];

    return v4;
  }

  return result;
}

- (id)authCertSerialNumberForLegacyConnectionID:(unsigned int)a3
{
  result = __findAccessory(a3, self->_connectedAccessories);
  if (result)
  {
    v4 = [objc_msgSend(result "certSerial")];

    return v4;
  }

  return result;
}

- (void)requestIAPAccessoryWiFiCredentials:(id)a3
{
  if (__findAccessoryByUUID(a3, self->_connectedAccessories))
  {
    NSLog(&cfstr_Externalaccess_66.isa, a3);
    v4 = __accEAProviderClassInstance;

    [v4 requestAccessoryWifiCredentials:a3];
  }
}

- (id)currentVehicleInformation:(id)a3
{
  if (__findAccessoryByUUID(a3, self->_connectedAccessories))
  {
    NSLog(&cfstr_Vehicleinfosta_2.isa, a3);
    v4 = __accEAProviderClassInstance;

    return [v4 currentVehicleInfo:a3];
  }

  else
  {
    NSLog(&cfstr_Vehicleinfosta_3.isa, a3);
    return 0;
  }
}

- (void)sendDeviceIdentifierNotification:(id)a3 usbIdentifier:(id)a4 forUUID:(id)a5
{
  if (__findAccessoryByUUID(a5, self->_connectedAccessories))
  {
    NSLog(&cfstr_Externalaccess_67.isa, a5);
    v8 = __accEAProviderClassInstance;

    [v8 sendDeviceIdentifierNotification:a3 usbIdentifier:a4 forUUID:a5];
  }
}

- (void)sendWiredCarPlayAvailable:(id)a3 usbIdentifier:(id)a4 wirelessCarPlayAvailable:(id)a5 bluetoothIdentifier:(id)a6 forUUID:(id)a7
{
  if (__findAccessoryByUUID(a7, self->_connectedAccessories))
  {
    NSLog(&cfstr_Externalaccess_68.isa, a7);
    v12 = __accEAProviderClassInstance;

    [v12 sendWiredCarPlayAvailable:a3 usbIdentifier:a4 wirelessAvailable:a5 bluetoothIdentifier:a6 forUUID:a7];
  }
}

- (void)sendWiredCarPlayAvailable:(id)a3 usbIdentifier:(id)a4 wirelessCarPlayAvailable:(id)a5 bluetoothIdentifier:(id)a6 themeAssetsAvailable:(id)a7 forUUID:(id)a8
{
  if (__findAccessoryByUUID(a8, self->_connectedAccessories))
  {
    NSLog(&cfstr_Externalaccess_69.isa, a8);
    v14 = __accEAProviderClassInstance;

    [v14 sendWiredCarPlayAvailable:a3 usbIdentifier:a4 wirelessAvailable:a5 bluetoothIdentifier:a6 themeAssetsAvailable:a7 forUUID:a8];
  }
}

+ (id)accessoryDictionaryForLogging:(id)a3
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a3];
  if ([v3 objectForKey:@"IAPAppAccessoryCertDataKey"])
  {
    v4 = [objc_msgSend(v3 objectForKey:{@"IAPAppAccessoryCertDataKey", "length"}];
    [v3 setObject:objc_msgSend(MEMORY[0x277CCACA8] forKey:{"stringWithFormat:", @"%lu bytes", v4), @"IAPAppAccessoryCertDataKey"}];
  }

  if ([v3 objectForKey:@"IAPAppAccessoryCertSerialNumberKey"])
  {
    v5 = [objc_msgSend(v3 objectForKey:{@"IAPAppAccessoryCertSerialNumberKey", "length"}];
    [v3 setObject:objc_msgSend(MEMORY[0x277CCACA8] forKey:{"stringWithFormat:", @"%lu bytes", v5), @"IAPAppAccessoryCertSerialNumberKey"}];
  }

  return v3;
}

@end