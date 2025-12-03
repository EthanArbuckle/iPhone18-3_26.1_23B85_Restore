@interface BTSDevicesController
- (BOOL)BOOLFromBluetoothPreferences:(id)preferences;
- (BOOL)classicDeviceIsApple:(id)apple;
- (BOOL)isCarPlaySetupEnabled;
- (BOOL)isClassicAudioDevice:(id)device;
- (BOOL)isDeviceSupported:(id)supported;
- (BOOL)isLEAudioLiveOnEnabled;
- (BOOL)isLECarPlayEnabled;
- (BOOL)isSupportCarPlaySetup:(id)setup;
- (BOOL)isiPad;
- (BOOL)isiPhone;
- (BTSDevicesController)init;
- (double)tableView:(id)view estimatedHeightForFooterInSection:(int64_t)section;
- (id)_getDeviceForCTKDPeripheral:(id)peripheral;
- (id)_getDeviceForPeripheral:(id)peripheral;
- (id)_headphoneSettingsControllerFor:(id)for;
- (id)_heroPlacardSpecifiers;
- (id)_knownDevicesSpecifiers;
- (id)_shareDevicesSpecifiers;
- (id)_specifierForDevice:(id)device;
- (id)_specifierForSharingDevice:(id)device;
- (id)bluetoothEnabled:(id)enabled;
- (id)getLECarPlay:(id)play;
- (id)localizedList:(id)list;
- (id)makeWarningAttributedString:(id)string;
- (id)mergeDualRadioDevices:(id)devices;
- (id)namesOfDevices:(id)devices displayableOnly:(BOOL)only;
- (id)powerOffWarningString;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (unsigned)connectedLEAudio1DeviceCount;
- (void)_addDevice:(id)device;
- (void)_addDeviceSpecifier:(id)specifier withDevice:(id)device;
- (void)_peripheralDidCompletePairing:(id)pairing;
- (void)_removeDevice:(id)device;
- (void)_removeDeviceSpecifier:(id)specifier;
- (void)_retrievedRegisteredHealthDevices:(id)devices;
- (void)_setupCentralScanning;
- (void)_updateDevicePosition:(id)position;
- (void)_updateHealthDevices;
- (void)alertSheetDismissed:(id)dismissed;
- (void)allowBluetoothScans:(BOOL)scans;
- (void)applicationDidBecomeActive:(id)active;
- (void)applicationDidEnterBackground:(id)background;
- (void)applicationWillEnterForeground:(id)foreground;
- (void)applicationWillResignActive:(id)active;
- (void)authenticationRequestHandler:(id)handler;
- (void)bluetoothDenylistChanged:(id)changed;
- (void)cancelledConnectionAttemptOnTransport:(unint64_t)transport;
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didUpdatePeripheralConnectionState:(id)state;
- (void)centralManagerDidUpdateState:(id)state;
- (void)cleanupAlerts;
- (void)cleanupPairing;
- (void)dealloc;
- (void)deviceConnectedHandler:(id)handler;
- (void)deviceDisconnectedHandler:(id)handler;
- (void)deviceDiscoveredHandler:(id)handler;
- (void)devicePairedHandler:(id)handler;
- (void)deviceRemovedHandler:(id)handler;
- (void)deviceUnpairedHandler:(id)handler;
- (void)deviceUpdatedHandler:(id)handler;
- (void)effectiveMCSettingsDidChange:(id)change;
- (void)fetchDADevices;
- (void)forcePushDetailViewForDevice:(id)device;
- (void)handleDASessionEvent:(id)event;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)healthDeviceUnregisteredHandler:(id)handler;
- (void)init;
- (void)markLEAudioDevice:(id)device;
- (void)migrateHKPairedHealthDevices;
- (void)notifyBluetoothSettingsAppStateIsActive:(BOOL)active;
- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing;
- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error;
- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair;
- (void)peripheral:(id)peripheral didCompleteChannelSoundingProcedure:(id)procedure error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didOpenL2CAPChannel:(id)channel error:(id)error;
- (void)peripheralConnectionTimeout:(id)timeout;
- (void)peripheralDidUpdateName:(id)name;
- (void)pinRequestHandler:(id)handler;
- (void)powerChanged;
- (void)powerChangedHandler:(id)handler;
- (void)refreshCTKDDevices;
- (void)refreshUI;
- (void)registerForNotifications;
- (void)reinitDASession;
- (void)reloadCellForSpecifierID:(id)d animated:(BOOL)animated;
- (void)sessionDidConnect:(id)connect;
- (void)setBluetoothEnabled:(id)enabled specifier:(id)specifier;
- (void)setBluetoothIsBusy:(BOOL)busy;
- (void)setSSPConfirmation:(int64_t)confirmation forDevice:(id)device;
- (void)showPairingAlert:(id)alert;
- (void)showPencilConnectionAttemptAlert:(int)alert;
- (void)showSyncContactsPopup:(id)popup;
- (void)showSyncContactsPrivacyPopup:(id)popup;
- (void)showUpgradeOSPopup:(id)popup;
- (void)sspConfirmationHandler:(id)handler;
- (void)sspNumericComparisonHandler:(id)handler;
- (void)sspPasskeyDisplayHandler:(id)handler;
- (void)startIncomingCarPlaySetup:(id)setup andPasskey:(id)passkey;
- (void)startOutgoingCarPlaySetup:(id)setup;
- (void)startedConnectionAttemptOnTransport:(unint64_t)transport;
- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateCTKDCounterparts:(id)counterparts leDevice:(id)device;
- (void)updateFirmwareUpdateRequiredDevicesList:(id)list;
- (void)updateMainGroupFooter;
- (void)updatePoorConnectedDevicesList:(id)list;
- (void)updateUI:(BOOL)i;
- (void)userDidTapWalletLink:(id)link;
- (void)userDidTapWatchLink:(id)link;
- (void)viewDidLoad;
@end

@implementation BTSDevicesController

- (BTSDevicesController)init
{
  v72[2] = *MEMORY[0x277D85DE8];
  v68.receiver = self;
  v68.super_class = BTSDevicesController;
  v2 = [(BTSDevicesController *)&v68 init];
  if (v2)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    srandom(v4);

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    ctkdCounterpartDevicesDict = v2->_ctkdCounterpartDevicesDict;
    v2->_ctkdCounterpartDevicesDict = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dualRadioCounterpartDevicesDict = v2->_dualRadioCounterpartDevicesDict;
    v2->_dualRadioCounterpartDevicesDict = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingOtherRadioDevicesDict = v2->_pendingOtherRadioDevicesDict;
    v2->_pendingOtherRadioDevicesDict = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    devicesDict = v2->_devicesDict;
    v2->_devicesDict = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sharingDevicesDict = v2->_sharingDevicesDict;
    v2->_sharingDevicesDict = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    ctkdLeDevicesDict = v2->_ctkdLeDevicesDict;
    v2->_ctkdLeDevicesDict = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deviceAccessDevicesDict = v2->_deviceAccessDevicesDict;
    v2->_deviceAccessDevicesDict = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingDAInfoDevicesDict = v2->_pendingDAInfoDevicesDict;
    v2->_pendingDAInfoDevicesDict = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    retrievedHealthServices = v2->_retrievedHealthServices;
    v2->_retrievedHealthServices = v21;

    v23 = objc_alloc_init(MEMORY[0x277CBEB58]);
    connectedPoorBehaviorDevices = v2->_connectedPoorBehaviorDevices;
    v2->_connectedPoorBehaviorDevices = v23;

    v25 = objc_alloc_init(MEMORY[0x277CBEB58]);
    connectedFirmwareUpdateRequiredDevices = v2->_connectedFirmwareUpdateRequiredDevices;
    v2->_connectedFirmwareUpdateRequiredDevices = v25;

    v27 = objc_alloc_init(MEMORY[0x277CBEB58]);
    connectedHIDDevices = v2->_connectedHIDDevices;
    v2->_connectedHIDDevices = v27;

    v2->_mainFooterNeedsUpdate = 0;
    v2->_shouldRestorePreviousScanningState = 0;
    v29 = MEMORY[0x277CBEA60];
    v30 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDFD8]];
    v31 = [v29 arrayWithObjects:{v30, 0}];
    hidServices = v2->_hidServices;
    v2->_hidServices = v31;

    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"enableHealthDevices", @"com.apple.bluetooth", &keyExistsAndHasValidFormat);
    v34 = _os_feature_enabled_impl();
    v35 = keyExistsAndHasValidFormat;
    v36 = MEMORY[0x277CBEA60];
    v37 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDFD0]];
    if (v34 && AppBooleanValue && v35)
    {
      v38 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDFC8]];
      v39 = [v36 arrayWithObjects:{v37, v38, 0}];
      healthServices = v2->_healthServices;
      v2->_healthServices = v39;
    }

    else
    {
      v41 = [v36 arrayWithObjects:{v37, 0}];
      v38 = v2->_healthServices;
      v2->_healthServices = v41;
    }

    [(BTSDevicesController *)v2 registerForNotifications];
    v42 = objc_alloc(MEMORY[0x277CBDFF8]);
    v43 = *MEMORY[0x277CBDF08];
    v71[0] = *MEMORY[0x277CBDD90];
    v71[1] = v43;
    v72[0] = MEMORY[0x277CBEC38];
    v72[1] = MEMORY[0x277CBEC38];
    v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:2];
    v45 = [v42 initWithDelegate:v2 queue:MEMORY[0x277D85CD0] options:v44];
    centralManager = v2->_centralManager;
    v2->_centralManager = v45;

    sharedPairingAgent = [(CBCentralManager *)v2->_centralManager sharedPairingAgent];
    [sharedPairingAgent setDelegate:v2];

    if ([MEMORY[0x277CCD4D8] isHealthDataAvailable])
    {
      v48 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23C0F7000, v48, OS_LOG_TYPE_INFO, "HealthKit is supported", buf, 2u);
      }

      v49 = objc_opt_new();
      healthKitStore = v2->_healthKitStore;
      v2->_healthKitStore = v49;

      if ((_os_feature_enabled_impl() & 1) == 0)
      {
        v51 = v2->_healthKitStore;
        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 3221225472;
        v65[2] = __28__BTSDevicesController_init__block_invoke;
        v65[3] = &unk_278BB0340;
        v66 = v2;
        [(HKHealthStore *)v51 healthServicePairingsWithHandler:v65];
      }
    }

    [(BTSDevicesController *)v2 reinitDASession];
    v52 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v70 = "[BTSDevicesController init]";
      _os_log_impl(&dword_23C0F7000, v52, OS_LOG_TYPE_DEFAULT, "%s exposure notification init", buf, 0xCu);
    }

    v53 = objc_alloc_init(MEMORY[0x277CF89F8]);
    carplayStatus = v2->_carplayStatus;
    v2->_carplayStatus = v53;

    [(CARSessionStatus *)v2->_carplayStatus setSessionObserver:v2];
    v2->_scanningPausedForCarPlay = 0;
    v55 = MGGetStringAnswer();
    if (v55)
    {
      v56 = v55;
      if ([v55 isEqualToString:@"iPhone"])
      {
        v57 = objc_alloc_init(MEMORY[0x277CC5C90]);
        exposureNotificationManager = v2->_exposureNotificationManager;
        v2->_exposureNotificationManager = v57;

        v59 = v2->_exposureNotificationManager;
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = __28__BTSDevicesController_init__block_invoke_244;
        v63[3] = &unk_278BB0368;
        v64 = v2;
        [(ENManager *)v59 activateWithCompletionHandler:v63];
        CFRelease(v56);
      }
    }

    if (notify_register_check("com.apple.bluetooth.settings.app-state", &v2->_bluetoothSettingsAppStateNotifyToken))
    {
      v60 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        [BTSDevicesController init];
      }
    }

    [(BTSDevicesController *)v2 notifyBluetoothSettingsAppStateIsActive:1];
  }

  CFPreferencesGetAppBooleanValue(@"enableChannelSoundingTesting", @"com.apple.bluetooth", &v2->_isChannelSoundingTestingEnabled);
  v61 = *MEMORY[0x277D85DE8];
  return v2;
}

void __28__BTSDevicesController_init__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __28__BTSDevicesController_init__block_invoke_cold_1();
    }
  }

  else if ([v5 count])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __28__BTSDevicesController_init__block_invoke_233;
    v8[3] = &unk_278BB0318;
    v9 = *(a1 + 32);
    v10 = v5;
    dispatch_async(MEMORY[0x277D85CD0], v8);

    v7 = v9;
  }

  else
  {
    v7 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C0F7000, v7, OS_LOG_TYPE_DEFAULT, "Found no known health devices", buf, 2u);
    }
  }
}

uint64_t __28__BTSDevicesController_init__block_invoke_244(uint64_t a1)
{
  *(*(a1 + 32) + 1610) = [*(*(a1 + 32) + 1736) exposureNotificationEnabled];
  v2 = *(a1 + 32);

  return [v2 reloadSpecifiers];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  defaultCenter2 = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter2 removeObserver:self];

  [(BTSDevicesController *)self allowBluetoothConnections:0];
  [(BTAlert *)self->_alert dismiss];
  sharedPairingAgent = [(CBCentralManager *)self->_centralManager sharedPairingAgent];
  [sharedPairingAgent setDelegate:0];

  [(CBCentralManager *)self->_centralManager setDelegate:0];
  [(DASession *)self->_deviceAccessSession invalidate];
  deviceAccessSession = self->_deviceAccessSession;
  self->_deviceAccessSession = 0;

  [(CARSessionStatus *)self->_carplayStatus setSessionObserver:0];
  if (self->_netClient)
  {
    _NETRBClientDestroy();
  }

  [(ENManager *)self->_exposureNotificationManager invalidate];
  exposureNotificationManager = self->_exposureNotificationManager;
  self->_exposureNotificationManager = 0;

  [(BTSDevicesController *)self notifyBluetoothSettingsAppStateIsActive:0];
  notify_cancel(self->_bluetoothSettingsAppStateNotifyToken);
  v8.receiver = self;
  v8.super_class = BTSDevicesController;
  [(BTSDevicesController *)&v8 dealloc];
}

- (void)reinitDASession
{
  if (_os_feature_enabled_impl())
  {
    if (self->_deviceAccessSession)
    {
      v3 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_23C0F7000, v3, OS_LOG_TYPE_DEFAULT, "Re-init DASession", buf, 2u);
      }

      v4 = self->_deviceAccessSession;
      [(DASession *)v4 setEventHandler:0];
      [(DASession *)v4 invalidate];
      deviceAccessSession = self->_deviceAccessSession;
      self->_deviceAccessSession = 0;
    }

    v6 = objc_alloc_init(MEMORY[0x277D04780]);
    v7 = self->_deviceAccessSession;
    self->_deviceAccessSession = v6;

    [(DASession *)self->_deviceAccessSession setDispatchQueue:MEMORY[0x277D85CD0]];
    objc_initWeak(buf, self);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __39__BTSDevicesController_reinitDASession__block_invoke;
    v9[3] = &unk_278BB0390;
    objc_copyWeak(&v10, buf);
    [(DASession *)self->_deviceAccessSession setEventHandler:v9];
    [(DASession *)self->_deviceAccessSession activate];
    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }

  else
  {
    v8 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_23C0F7000, v8, OS_LOG_TYPE_DEFAULT, "AccessorySetupKit feature flag not enabled", buf, 2u);
    }
  }
}

void __39__BTSDevicesController_reinitDASession__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleDASessionEvent:v3];
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v7 = [lCopy objectForKey:@"path"];
  v8 = [lCopy objectForKey:@"root"];
  if ([v7 length])
  {
    if ([v7 isEqualToString:@"AccessoryDetail"])
    {
      v9 = [lCopy objectForKeyedSubscript:@"identifier"];
      pendingSetupDeviceID = self->_pendingSetupDeviceID;
      self->_pendingSetupDeviceID = v9;

      [(BTSDevicesController *)self fetchDADevices];
    }

    else if (![v7 isEqualToString:@"AwaitIncomingConnection"])
    {
      goto LABEL_6;
    }

    [(BTSDevicesController *)self reloadSpecifiers];
  }

LABEL_6:
  completionCopy[2](completionCopy);
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = BTSDevicesController;
  [(BTSDevicesController *)&v7 viewDidLoad];
  [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"MainGroupFooterId"];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  managedByWalletDictionary = self->managedByWalletDictionary;
  self->managedByWalletDictionary = v3;

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  supportsBackgroundNIDictionary = self->supportsBackgroundNIDictionary;
  self->supportsBackgroundNIDictionary = v5;
}

- (void)applicationWillResignActive:(id)active
{
  [(BTSDevicesController *)self notifyBluetoothSettingsAppStateIsActive:0];
  [(BTSDevicesController *)self allowBluetoothConnections:0];
  self->_togglingPower = 0;
  [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) setEnabled:1];
  [(BTSDevicesController *)self setBluetoothIsBusy:0];
  [(BTSDevicesController *)self cleanupPairing];

  [(BTSDevicesController *)self cleanupAlerts];
}

- (void)applicationDidBecomeActive:(id)active
{
  [(BTSDevicesController *)self notifyBluetoothSettingsAppStateIsActive:1];

  [(BTSDevicesController *)self allowBluetoothConnections:1];
}

- (void)applicationWillEnterForeground:(id)foreground
{
  v4 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23C0F7000, v4, OS_LOG_TYPE_DEFAULT, "applicationWillEnterForeground. Re-register for bluetooth notifications", v5, 2u);
  }

  [(BTSDevicesController *)self notifyBluetoothSettingsAppStateIsActive:1];
  if (!self->_uiRefreshed)
  {
    [(BTSDevicesController *)self refreshUI];
  }
}

- (void)applicationDidEnterBackground:(id)background
{
  v4 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_23C0F7000, v4, OS_LOG_TYPE_DEFAULT, "applicationDidEnterBackground. Deregister for bluetooth notifications", v12, 2u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  defaultCenter2 = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter2 removeObserver:self];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_applicationWillResignActive_ name:*MEMORY[0x277D76768] object:0];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel_applicationWillTerminate_ name:*MEMORY[0x277D76770] object:0];

  defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter5 addObserver:self selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];

  defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter6 addObserver:self selector:sel_applicationWillEnterForeground_ name:*MEMORY[0x277D76758] object:0];

  sharedPairingAgent = [(CBCentralManager *)self->_centralManager sharedPairingAgent];
  [sharedPairingAgent setDelegate:0];

  [(CBCentralManager *)self->_centralManager setDelegate:0];
  self->_uiRefreshed = 0;
}

- (void)notifyBluetoothSettingsAppStateIsActive:(BOOL)active
{
  notify_set_state([(BTSDevicesController *)self bluetoothSettingsAppStateNotifyToken], active);

  notify_post("com.apple.bluetooth.settings.app-state");
}

- (unsigned)connectedLEAudio1DeviceCount
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [(CBCentralManager *)self->_centralManager retrieveConnectedPeripheralsWithServices:MEMORY[0x277CBEBF8] allowAll:1];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 hasTag:@"IsHearingAid"])
        {
          v9 = [v8 customProperty:@"LEAVersion"];
          v10 = v9;
          if (!v9 || [v9 isEqualToString:@"1"])
          {
            ++v5;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)classicDeviceIsApple:(id)apple
{
  appleCopy = apple;
  v4 = ![appleCopy vendorIdSrc] && (objc_msgSend(appleCopy, "vendorId") == 1452 || objc_msgSend(appleCopy, "vendorId") == 76) || objc_msgSend(appleCopy, "vendorIdSrc") == 2 && objc_msgSend(appleCopy, "vendorId") == 1452 || objc_msgSend(appleCopy, "vendorIdSrc") == 1 && objc_msgSend(appleCopy, "vendorId") == 76;

  return v4;
}

- (BOOL)isClassicAudioDevice:(id)device
{
  deviceCopy = device;
  v4 = [deviceCopy type] == 16 || objc_msgSend(deviceCopy, "type") == 17 || objc_msgSend(deviceCopy, "type") == 19 || objc_msgSend(deviceCopy, "type") == 20 || objc_msgSend(deviceCopy, "type") == 47 || objc_msgSend(deviceCopy, "type") == 22 || objc_msgSend(deviceCopy, "type") == 21 || objc_msgSend(deviceCopy, "type") == 23;

  return v4;
}

- (void)powerChanged
{
  v44 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  enabled = [mEMORY[0x277CF3248] enabled];

  v5 = [(CBCentralManager *)self->_centralManager state]== 5 || [(CBCentralManager *)self->_centralManager state]== 10;
  if (v5 == enabled && self->_power != enabled)
  {
    self->_power = enabled;
    self->_togglingPower = 0;
    [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) setEnabled:1];
    [(BTSDevicesController *)self setBluetoothIsBusy:0];
    self->_mainFooterNeedsUpdate = 1;
    [(BTSDevicesController *)self updateUI:self->_power];
    if (self->_bluetoothInitialized)
    {
      [(BTSDevicesController *)self allowBluetoothConnections:self->_power];
    }
  }

  [(BTSDevicesController *)self reloadCellForSpecifierID:@"BLUETOOTH"];
  if (self->_power && *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]))
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    sharedPairingAgent = [(CBCentralManager *)self->_centralManager sharedPairingAgent];
    retrievePairedPeers = [sharedPairingAgent retrievePairedPeers];

    v8 = [retrievePairedPeers countByEnumeratingWithState:&v36 objects:v43 count:16];
    if (v8)
    {
      v9 = v8;
      v31 = 0;
      v10 = *v37;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v37 != v10)
          {
            objc_enumerationMutation(retrievePairedPeers);
          }

          v12 = *(*(&v36 + 1) + 8 * i);
          v13 = sharedBluetoothSettingsLogComponent();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v42 = v12;
            _os_log_impl(&dword_23C0F7000, v13, OS_LOG_TYPE_DEFAULT, "Paired Peripheral: %@", buf, 0xCu);
          }

          v14 = [(BTSDevicesController *)self _getDeviceForPeripheral:v12];
          if (v14)
          {
            [v12 setDelegate:self];
            if ([v14 isManagedByDeviceAccess])
            {
              v15 = sharedBluetoothSettingsLogComponent();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v42 = v14;
                _os_log_impl(&dword_23C0F7000, v15, OS_LOG_TYPE_DEFAULT, "We're waiting for DADevices from DADaemon, delay display of these DA managed peripherals until we have the DADevice: %@", buf, 0xCu);
              }
            }

            else
            {
              [(BTSDevicesController *)self _addDevice:v14];
              if ([v14 connected])
              {
                if ([v14 isLimitedConnectivityDevice])
                {
                  [(NSMutableSet *)self->_connectedPoorBehaviorDevices addObject:v14];
                  self->_mainFooterNeedsUpdate = 1;
                }

                if ([v14 isFirmwareUpdateRequiredDevice])
                {
                  [(NSMutableSet *)self->_connectedFirmwareUpdateRequiredDevices addObject:v14];
                  self->_mainFooterNeedsUpdate = 1;
                }

                if ([v14 isHIDDevice])
                {
                  [(NSMutableSet *)self->_connectedHIDDevices addObject:v14];
                  self->_mainFooterNeedsUpdate = 1;
                }
              }
            }
          }

          else
          {
            v16 = [(BTSDevicesController *)self _getDeviceForCTKDPeripheral:v12];
            v17 = sharedBluetoothSettingsLogComponent();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v42 = v12;
              _os_log_impl(&dword_23C0F7000, v17, OS_LOG_TYPE_DEFAULT, "CTKD Paired device : %@", buf, 0xCu);
            }

            if (v16)
            {
              [v12 setDelegate:self];
              v31 = 1;
            }
          }
        }

        v9 = [retrievePairedPeers countByEnumeratingWithState:&v36 objects:v43 count:16];
      }

      while (v9);
    }

    else
    {
      v31 = 0;
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v18 = [(CBCentralManager *)self->_centralManager retrieveConnectedPeripheralsWithServices:0 allowAll:1];
    v19 = [v18 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v33;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v33 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v32 + 1) + 8 * j);
          if ([v23 connectedTransport] == 2)
          {
            v24 = [(BTSDevicesController *)self _getDeviceForPeripheral:v23];
            if (v24)
            {
              if ([v23 visibleInSettings])
              {
                [v23 setDelegate:self];
                isManagedByDeviceAccess = [v24 isManagedByDeviceAccess];
                v26 = sharedBluetoothSettingsLogComponent();
                v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
                if (isManagedByDeviceAccess)
                {
                  if (v27)
                  {
                    *buf = 138412290;
                    v42 = v24;
                    v28 = v26;
                    v29 = "We're waiting for DADevices from DADaemon, delay display of these DA managed peripherals until we have the DADevice: %@";
                    goto LABEL_51;
                  }

                  goto LABEL_52;
                }

                if (v27)
                {
                  *buf = 138412290;
                  v42 = v23;
                  _os_log_impl(&dword_23C0F7000, v26, OS_LOG_TYPE_DEFAULT, "Peripheral %@ will be added to Settings.", buf, 0xCu);
                }

                [(BTSDevicesController *)self _addDevice:v24];
              }

              else
              {
                v26 = sharedBluetoothSettingsLogComponent();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v42 = v23;
                  v28 = v26;
                  v29 = "Peripheral %@ should not be visible in Settings. Ignoring.";
LABEL_51:
                  _os_log_impl(&dword_23C0F7000, v28, OS_LOG_TYPE_DEFAULT, v29, buf, 0xCu);
                }

LABEL_52:
              }
            }

            continue;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v20);
    }

    [(BTSDevicesController *)self _updateHealthDevices];
    [(BTSDevicesController *)self _setupCentralScanning];
    if ((self->_mainFooterNeedsUpdate | v31))
    {
      [(BTSDevicesController *)self reloadSpecifiers];
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)powerChangedHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  enabled = [mEMORY[0x277CF3248] enabled];

  v7 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    name = [handlerCopy name];
    v9 = name;
    v10 = "off";
    if (enabled)
    {
      v10 = "on";
    }

    v12 = 138412546;
    v13 = name;
    v14 = 2080;
    v15 = v10;
    _os_log_impl(&dword_23C0F7000, v7, OS_LOG_TYPE_DEFAULT, "Received %@ with power state %s", &v12, 0x16u);
  }

  [(BTSDevicesController *)self powerChanged];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)deviceDiscoveredHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  object = [handlerCopy object];
  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    name = [handlerCopy name];
    name2 = [object name];
    v18 = 136315650;
    v19 = "[BTSDevicesController deviceDiscoveredHandler:]";
    v20 = 2112;
    v21 = name;
    v22 = 2112;
    v23 = name2;
    _os_log_impl(&dword_23C0F7000, v6, OS_LOG_TYPE_INFO, "%s received %@ for device %@", &v18, 0x20u);
  }

  if (self->_power && !self->_togglingPower)
  {
    v9 = [BTSDeviceClassic deviceWithDevice:object];
    devicesDict = self->_devicesDict;
    address = [object address];
    v12 = [(NSMutableDictionary *)devicesDict objectForKey:address];

    if (v12)
    {
      identifier = [v9 identifier];
      v14 = [(BTSDevicesController *)self specifierForID:identifier];

      if (!v14)
      {
        v15 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          LOWORD(v18) = 0;
          _os_log_impl(&dword_23C0F7000, v15, OS_LOG_TYPE_INFO, "Device exists in our list without a specifier. Add the specifier", &v18, 2u);
        }

        v16 = [(BTSDevicesController *)self _specifierForDevice:v9];
        [(BTSDevicesController *)self _addDeviceSpecifier:v16 withDevice:v9];
      }
    }

    else
    {
      [(BTSDevicesController *)self _addDevice:v9];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)devicePairedHandler:(id)handler
{
  v65 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  object = [handlerCopy object];
  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    name = [handlerCopy name];
    name2 = [object name];
    *buf = 136315906;
    *v60 = "[BTSDevicesController devicePairedHandler:]";
    *&v60[8] = 2112;
    *&v60[10] = name;
    v61 = 2112;
    v62 = name2;
    v63 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_23C0F7000, v6, OS_LOG_TYPE_DEFAULT, "%s received %@ for device %@ for BTSDeviceController instance %p", buf, 0x2Au);
  }

  userInfo = [(PSSpecifier *)self->_currentDeviceSpecifier userInfo];
  v10 = [userInfo objectForKey:@"PIN-ended"];

  if (self->_power && !self->_togglingPower)
  {
    address = [object address];
    identifier = [(PSSpecifier *)self->_currentDeviceSpecifier identifier];
    if ([address isEqualToString:identifier])
    {
    }

    else
    {
      pendingOtherRadioDevicesDict = self->_pendingOtherRadioDevicesDict;
      address2 = [object address];
      v15 = [(NSMutableDictionary *)pendingOtherRadioDevicesDict objectForKeyedSubscript:address2];

      if (v15)
      {
        v16 = [BTSDeviceClassic deviceWithDevice:object];
        [(BTSDevicesController *)self _addDevice:v16];

        address3 = [BTSDeviceClassic deviceWithDevice:object];
        [(BTSDevicesController *)self _updateDevicePosition:address3];
        goto LABEL_54;
      }
    }

    [(BTSDevicesController *)self cleanupPairing];
    userInfo2 = [(PSSpecifier *)self->_currentDeviceSpecifier userInfo];
    v19 = [userInfo2 objectForKey:@"reverse-pairing"];
    bOOLValue = [v19 BOOLValue];

    if (bOOLValue)
    {
      [(BTSDevicesController *)self setBluetoothIsBusy:0];
    }

    name3 = [handlerCopy name];
    v22 = [name3 isEqualToString:*MEMORY[0x277CF3208]];

    if (v22)
    {
      if (self->_alert || ([v10 isEqualToString:@"cancelled"] & 1) != 0)
      {
LABEL_49:
        mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
        if ([mEMORY[0x277CF3248] wasDeviceDiscovered:object])
        {
        }

        else
        {
          paired = [object paired];

          if ((paired & 1) == 0)
          {
            address3 = [BTSDeviceClassic deviceWithDevice:object];
            [(BTSDevicesController *)self _removeDevice:address3];
            goto LABEL_54;
          }
        }

        address3 = [object address];
        [(BTSDevicesController *)self reloadCellForSpecifierID:address3];
LABEL_54:

        goto LABEL_55;
      }

      v23 = [BTAlert alloc];
      v24 = [BTSDeviceClassic deviceWithDevice:object];
      v25 = [(BTAlert *)v23 initWithDevice:v24];
      alert = self->_alert;
      self->_alert = v25;

      v27 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = self->_alert;
        *buf = 138412290;
        *v60 = v28;
        _os_log_impl(&dword_23C0F7000, v27, OS_LOG_TYPE_DEFAULT, "Pairing failed BTAlert : %@", buf, 0xCu);
      }

      [(BTAlert *)self->_alert setDelegate:self];
      if (v10)
      {
        goto LABEL_39;
      }

      sspAlert = self->_sspAlert;
      if (sspAlert && [(BTSSPPairingRequest *)sspAlert pairingStyle]!= 2 && [(BTSSPPairingRequest *)self->_sspAlert pairingStyle]!= 3)
      {
        goto LABEL_21;
      }

      rootController = [(BTSDevicesController *)self rootController];
      visibleViewController = [rootController visibleViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
LABEL_39:
        if (![v10 isEqualToString:@"entered"])
        {
          userInfo3 = [handlerCopy userInfo];
          v46 = [userInfo3 objectForKey:*MEMORY[0x277CF31D8]];

          goto LABEL_43;
        }

        v33 = MEMORY[0x277CCABB0];
        v34 = 156;
      }

      else
      {
LABEL_21:
        v33 = MEMORY[0x277CCABB0];
        v34 = 1;
      }

      v46 = [v33 numberWithUnsignedInt:v34];
LABEL_43:
      transitionCoordinator = [(BTSDevicesController *)self transitionCoordinator];
      if (transitionCoordinator)
      {
        v49 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23C0F7000, v49, OS_LOG_TYPE_DEFAULT, "UIViewController is currently displaying or dismissing an UIAlertCOntroller", buf, 2u);
        }

        v53 = MEMORY[0x277D85DD0];
        v54 = 3221225472;
        v55 = __44__BTSDevicesController_devicePairedHandler___block_invoke;
        v56 = &unk_278BB03B8;
        selfCopy2 = self;
        v58 = v46;
        [transitionCoordinator animateAlongsideTransition:0 completion:&v53];
      }

      else
      {
        [(BTAlert *)self->_alert showAlertWithResult:v46];
      }

      goto LABEL_49;
    }

    v35 = self->_pendingOtherRadioDevicesDict;
    address4 = [object address];
    v37 = [(NSMutableDictionary *)v35 objectForKeyedSubscript:address4];

    if (v37)
    {
      goto LABEL_24;
    }

    v38 = [BTSDeviceClassic deviceWithDevice:object];
    [(BTSDevicesController *)self _updateDevicePosition:v38];

    name4 = [handlerCopy name];
    v40 = [name4 isEqualToString:*MEMORY[0x277CF3210]];

    if (v40)
    {
LABEL_24:
      [(BTSDevicesController *)self reloadSpecifiers];
    }

    type = [object type];
    v42 = [object isServiceSupported:2];
    syncSettings = [object syncSettings];
    if (-[BTSDevicesController isiPhone](self, "isiPhone") && ([object isServiceSupported:0x40000] & 1) == 0 && (objc_msgSend(object, "type") == 22 || objc_msgSend(object, "type") == 17))
    {
      [object setSyncSettings:syncSettings & 0xFFFF00FF];
      [(BTSDevicesController *)self showSyncContactsPrivacyPopup:object];
    }

    else
    {
      v44 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = "not";
        if (v42)
        {
          v45 = "";
        }

        *buf = 67109378;
        *v60 = type;
        *&v60[4] = 2080;
        *&v60[6] = v45;
        _os_log_impl(&dword_23C0F7000, v44, OS_LOG_TYPE_DEFAULT, "Contact privacy alert ignored for device type : %x with phonebook service %s supported", buf, 0x12u);
      }

      [object setSyncSettings:syncSettings | 0x100000000];
    }

    if ([object vendorId] == 76 && objc_msgSend(object, "productId") >= 0x2007 && objc_msgSend(object, "productId") <= 0x2008)
    {
      [(BTSDevicesController *)self showUpgradeOSPopup:object];
    }
  }

LABEL_55:

  v52 = *MEMORY[0x277D85DE8];
}

- (void)deviceUpdatedHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  object = [handlerCopy object];
  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    name = [handlerCopy name];
    name2 = [object name];
    v18 = 136315650;
    v19 = "[BTSDevicesController deviceUpdatedHandler:]";
    v20 = 2112;
    v21 = name;
    v22 = 2112;
    v23 = name2;
    _os_log_impl(&dword_23C0F7000, v6, OS_LOG_TYPE_INFO, "%s received %@ for device %@", &v18, 0x20u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"BluetoothDeviceUpdatedNotificationConfig" object:object];

  if (self->_power && !self->_togglingPower)
  {
    devicesDict = self->_devicesDict;
    address = [object address];
    v12 = [(NSMutableDictionary *)devicesDict objectForKey:address];

    if (v12)
    {
      address2 = [object address];
      v14 = [(BTSDevicesController *)self specifierForID:address2];

      name3 = [object name];
      [(PSSpecifier *)v14 setName:name3];
      [(PSSpecifier *)v14 setProperty:name3 forKey:*MEMORY[0x277D40170]];
      if (self->_bluetoothIsBusy && v14 == self->_currentDeviceSpecifier && [object paired])
      {
        [(BTSDevicesController *)self setBluetoothIsBusy:0];
      }

      v16 = [BTSDeviceClassic deviceWithDevice:object];
      [(BTSDevicesController *)self _updateDevicePosition:v16];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)deviceConnectedHandler:(id)handler
{
  v38 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  object = [handlerCopy object];
  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    name = [handlerCopy name];
    name2 = [object name];
    v30 = 136315906;
    v31 = "[BTSDevicesController deviceConnectedHandler:]";
    v32 = 2112;
    v33 = name;
    v34 = 2112;
    v35 = name2;
    v36 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_23C0F7000, v6, OS_LOG_TYPE_DEFAULT, "%s received %@ for device %@ for BTSDeviceController instance %p", &v30, 0x2Au);
  }

  if (self->_power && !self->_togglingPower)
  {
    address = [object address];
    identifier = [(PSSpecifier *)self->_currentDeviceSpecifier identifier];
    v11 = [address isEqualToString:identifier];

    if (!v11)
    {
      goto LABEL_15;
    }

    [(BTSDevicesController *)self cleanupPairing];
    userInfo = [(PSSpecifier *)self->_currentDeviceSpecifier userInfo];
    v13 = [userInfo objectForKey:@"PIN-ended"];

    name3 = [handlerCopy name];
    if ([name3 isEqualToString:*MEMORY[0x277CF3188]] && !self->_alert && (objc_msgSend(v13, "isEqualToString:", @"cancelled") & 1) == 0)
    {
      connected = [object connected];

      if (connected)
      {
LABEL_14:
        [(BTSDevicesController *)self setBluetoothIsBusy:0];
        [(BTSDevicesController *)self allowBluetoothScans:1];

LABEL_15:
        if ([object isTemporaryPaired])
        {
          [(BTSDevicesController *)self reloadSpecifiers];
        }

        else
        {
          address2 = [object address];
          [(BTSDevicesController *)self reloadCellForSpecifierID:address2];

          v28 = [BTSDeviceClassic deviceWithDevice:object];
          if ([v28 connected])
          {
            if ([v28 isLimitedConnectivityDevice])
            {
              [(NSMutableSet *)self->_connectedPoorBehaviorDevices addObject:v28];
              self->_mainFooterNeedsUpdate = 1;
              [(BTSDevicesController *)self updateMainGroupFooter];
            }

            if ([v28 isHIDDevice])
            {
              [(NSMutableSet *)self->_connectedHIDDevices addObject:v28];
              self->_mainFooterNeedsUpdate = 1;
              [(BTSDevicesController *)self updateMainGroupFooter];
            }
          }
        }

        goto LABEL_23;
      }

      v16 = [BTAlert alloc];
      v17 = [BTSDeviceClassic deviceWithDevice:object];
      v18 = [(BTAlert *)v16 initWithDevice:v17];
      alert = self->_alert;
      self->_alert = v18;

      v20 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = self->_alert;
        v30 = 138412290;
        v31 = v21;
        _os_log_impl(&dword_23C0F7000, v20, OS_LOG_TYPE_DEFAULT, "deviceConnected BTAlert : %@", &v30, 0xCu);
      }

      [(BTAlert *)self->_alert setDelegate:self];
      userInfo2 = [handlerCopy userInfo];
      v23 = *MEMORY[0x277CF31D8];
      v24 = [userInfo2 objectForKey:*MEMORY[0x277CF31D8]];
      [v24 unsignedIntValue];

      v25 = self->_alert;
      name3 = [handlerCopy userInfo];
      v26 = [name3 objectForKey:v23];
      [(BTAlert *)v25 showAlertWithResult:v26];
    }

    goto LABEL_14;
  }

LABEL_23:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)deviceDisconnectedHandler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  object = [handlerCopy object];
  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    name = [handlerCopy name];
    name2 = [object name];
    v12 = 136315650;
    v13 = "[BTSDevicesController deviceDisconnectedHandler:]";
    v14 = 2112;
    v15 = name;
    v16 = 2112;
    v17 = name2;
    _os_log_impl(&dword_23C0F7000, v6, OS_LOG_TYPE_DEFAULT, "%s received %@ for device %@", &v12, 0x20u);
  }

  if (self->_power && !self->_togglingPower)
  {
    if ([object isTemporaryPaired])
    {
      [(BTSDevicesController *)self reloadSpecifiers];
    }

    else
    {
      address = [object address];
      [(BTSDevicesController *)self reloadCellForSpecifierID:address animated:0];

      v10 = [BTSDeviceClassic deviceWithDevice:object];
      if ([(NSMutableSet *)self->_connectedPoorBehaviorDevices containsObject:v10])
      {
        [(NSMutableSet *)self->_connectedPoorBehaviorDevices removeObject:v10];
        self->_mainFooterNeedsUpdate = 1;
        [(BTSDevicesController *)self updateMainGroupFooter];
      }

      if ([(NSMutableSet *)self->_connectedHIDDevices containsObject:v10])
      {
        [(NSMutableSet *)self->_connectedHIDDevices removeObject:v10];
        self->_mainFooterNeedsUpdate = 1;
        [(BTSDevicesController *)self updateMainGroupFooter];
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)deviceRemovedHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  object = [handlerCopy object];
  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    name = [handlerCopy name];
    name2 = [object name];
    v14 = 136315650;
    v15 = "[BTSDevicesController deviceRemovedHandler:]";
    v16 = 2112;
    v17 = name;
    v18 = 2112;
    v19 = name2;
    _os_log_impl(&dword_23C0F7000, v6, OS_LOG_TYPE_DEFAULT, "%s received %@ for device %@", &v14, 0x20u);
  }

  if (self->_power && !self->_togglingPower && ([object paired] & 1) == 0)
  {
    mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
    connectingDevices = [mEMORY[0x277CF3248] connectingDevices];
    v11 = [connectingDevices containsObject:object];

    if ((v11 & 1) == 0)
    {
      v12 = [BTSDeviceClassic deviceWithDevice:object];
      [(BTSDevicesController *)self _removeDevice:v12];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)deviceUnpairedHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  object = [handlerCopy object];
  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    name = [handlerCopy name];
    name2 = [object name];
    v15 = 136315650;
    v16 = "[BTSDevicesController deviceUnpairedHandler:]";
    v17 = 2112;
    v18 = name;
    v19 = 2112;
    v20 = name2;
    _os_log_impl(&dword_23C0F7000, v6, OS_LOG_TYPE_DEFAULT, "%s received %@ for device %@", &v15, 0x20u);
  }

  v9 = [BTSDeviceClassic deviceWithDevice:object];
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  v11 = [mEMORY[0x277CF3248] wasDeviceDiscovered:object];

  v12 = sharedBluetoothSettingsLogComponent();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v11)
  {
    if (v13)
    {
      v15 = 138412290;
      v16 = object;
      _os_log_impl(&dword_23C0F7000, v12, OS_LOG_TYPE_INFO, "Device %@ was unpaired and was discovered - updating position", &v15, 0xCu);
    }

    [(BTSDevicesController *)self _updateDevicePosition:v9];
  }

  else
  {
    if (v13)
    {
      v15 = 138412290;
      v16 = object;
      _os_log_impl(&dword_23C0F7000, v12, OS_LOG_TYPE_INFO, "Device %@ was unpaired and wasn't discovered - removing", &v15, 0xCu);
    }

    [(BTSDevicesController *)self _removeDevice:v9];
  }

  if ([(NSMutableSet *)self->_connectedPoorBehaviorDevices containsObject:v9])
  {
    [(NSMutableSet *)self->_connectedPoorBehaviorDevices removeObject:v9];
    self->_mainFooterNeedsUpdate = 1;
  }

  if ([(NSMutableSet *)self->_connectedHIDDevices containsObject:v9])
  {
    [(NSMutableSet *)self->_connectedHIDDevices removeObject:v9];
    self->_mainFooterNeedsUpdate = 1;
LABEL_15:
    [(BTSDevicesController *)self updateMainGroupFooter];
    goto LABEL_16;
  }

  if (self->_mainFooterNeedsUpdate)
  {
    goto LABEL_15;
  }

LABEL_16:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)authenticationRequestHandler:(id)handler
{
  v72 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (self->_power && !self->_togglingPower)
  {
    rootController = [(BTSDevicesController *)self rootController];
    visibleViewController = [rootController visibleViewController];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || self->_sspAlert || self->_alert)
    {

      goto LABEL_7;
    }

    syncContactsCarplayAlert = self->_syncContactsCarplayAlert;

    if (syncContactsCarplayAlert)
    {
LABEL_7:
      object = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(object, OS_LOG_TYPE_ERROR))
      {
        [BTSDevicesController authenticationRequestHandler:?];
      }

      goto LABEL_9;
    }

    name = [handlerCopy name];
    v11 = *MEMORY[0x277CF3228];
    if ([name isEqualToString:*MEMORY[0x277CF3228]])
    {
    }

    else
    {
      name2 = [handlerCopy name];
      v13 = [name2 isEqualToString:*MEMORY[0x277CF3218]];

      if (!v13)
      {
        object = [handlerCopy object];
LABEL_17:
        v15 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          name3 = [handlerCopy name];
          name4 = [object name];
          *buf = 136315906;
          v65 = "[BTSDevicesController authenticationRequestHandler:]";
          v66 = 2112;
          v67 = name3;
          v68 = 2112;
          v69 = name4;
          v70 = 2048;
          selfCopy = self;
          _os_log_impl(&dword_23C0F7000, v15, OS_LOG_TYPE_DEFAULT, "%s received %@ for device %@ for BTSDeviceController instance %p", buf, 0x2Au);
        }

        [(BTSDevicesController *)self setBluetoothIsBusy:1];
        currentDeviceSpecifier = self->_currentDeviceSpecifier;
        if (currentDeviceSpecifier)
        {
          userInfo = [(PSSpecifier *)currentDeviceSpecifier userInfo];
          [userInfo removeObjectForKey:@"reverse-pairing"];
        }

        else
        {
          if ([object majorClass]== 256)
          {
            userInfo2 = [handlerCopy userInfo];
            v21 = [userInfo2 valueForKey:@"delayedPairingForNR"];

            if (!v21)
            {
              v53 = sharedBluetoothSettingsLogComponent();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_23C0F7000, v53, OS_LOG_TYPE_INFO, "Delaying incoming pairing attempt from computer to try to retrieve the name…", buf, 2u);
              }

              v54 = MEMORY[0x277CBEB38];
              userInfo3 = [handlerCopy userInfo];
              v37 = [v54 dictionaryWithDictionary:userInfo3];

              [v37 setValue:&stru_284EE3458 forKey:@"delayedPairingForNR"];
              v56 = MEMORY[0x277CCAB88];
              name5 = [handlerCopy name];
              object2 = [handlerCopy object];
              v59 = [v56 notificationWithName:name5 object:object2 userInfo:v37];
              [(BTSDevicesController *)self performSelector:sel_authenticationRequestHandler_ withObject:v59 afterDelay:1.0];

LABEL_55:
LABEL_9:

              goto LABEL_10;
            }
          }

          address = [object address];
          userInfo = [(BTSDevicesController *)self specifierForID:address];

          v23 = sharedBluetoothSettingsLogComponent();
          v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
          if (userInfo)
          {
            if (v24)
            {
              *buf = 136315394;
              v65 = "[BTSDevicesController authenticationRequestHandler:]";
              v66 = 2112;
              v67 = userInfo;
              _os_log_impl(&dword_23C0F7000, v23, OS_LOG_TYPE_DEFAULT, "%s reverse-pairing attempt from %@", buf, 0x16u);
            }

            objc_storeStrong(&self->_currentDeviceSpecifier, userInfo);
            identifier = [(PSSpecifier *)self->_currentDeviceSpecifier identifier];
            [(BTSDevicesController *)self reloadCellForSpecifierID:identifier];
          }

          else
          {
            if (v24)
            {
              *buf = 136315138;
              v65 = "[BTSDevicesController authenticationRequestHandler:]";
              _os_log_impl(&dword_23C0F7000, v23, OS_LOG_TYPE_DEFAULT, "%s reverse-pairing attempt from previously unknown device", buf, 0xCu);
            }

            v26 = [BTSDeviceClassic deviceWithDevice:object];
            v27 = [(BTSDevicesController *)self _specifierForDevice:v26];
            v28 = self->_currentDeviceSpecifier;
            self->_currentDeviceSpecifier = v27;

            identifier = [BTSDeviceClassic deviceWithDevice:object];
            [(BTSDevicesController *)self _addDevice:identifier];
          }

          userInfo4 = [(PSSpecifier *)self->_currentDeviceSpecifier userInfo];
          [userInfo4 setObject:*MEMORY[0x277CBED28] forKey:@"reverse-pairing"];
        }

        userInfo5 = [(PSSpecifier *)self->_currentDeviceSpecifier userInfo];
        [userInfo5 removeObjectForKey:@"PIN-ended"];

        if (!self->_currentDeviceSpecifier || (-[NSObject address](object, "address"), v31 = objc_claimAutoreleasedReturnValue(), -[PSSpecifier identifier](self->_currentDeviceSpecifier, "identifier"), v32 = objc_claimAutoreleasedReturnValue(), v33 = [v31 isEqualToString:v32], v32, v31, !v33))
        {
          v41 = sharedBluetoothSettingsLogComponent();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            [BTSDevicesController authenticationRequestHandler:];
          }

          goto LABEL_9;
        }

        if (-[NSObject type](object, "type") != 24 || ([handlerCopy name], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "isEqualToString:", *MEMORY[0x277CF3200]), v34, !v35))
        {
          type = [object type];
          if ([(BTSDevicesController *)self isiPad]&& (type & 0xFFFFFFFB) == 0x19)
          {
            name6 = [handlerCopy name];
            v44 = *MEMORY[0x277CF3200];
            v45 = [name6 isEqualToString:*MEMORY[0x277CF3200]];

            if (v45)
            {
              v46 = sharedBluetoothSettingsLogComponent();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_23C0F7000, v46, OS_LOG_TYPE_DEFAULT, "Entering pairing flow for 2.0 mouses/trackpads", buf, 2u);
              }

              v47 = [[BTSSPPairingRequest alloc] initWithDevice:object andSpecifier:self->_currentDeviceSpecifier];
              sspAlert = self->_sspAlert;
              self->_sspAlert = v47;

              [(BTSSPPairingRequest *)self->_sspAlert setPairingStyle:4 andPasskey:0];
              [(BTSSPPairingRequest *)self->_sspAlert setDelegate:self];
              [(BTSSPPairingRequest *)self->_sspAlert show];
              goto LABEL_9;
            }
          }

          else
          {
            v44 = *MEMORY[0x277CF3200];
          }

          name7 = [handlerCopy name];
          v50 = [name7 isEqualToString:v44];

          if (v50)
          {
            [(BTSDevicesController *)self pinRequestHandler:handlerCopy];
          }

          else
          {
            name8 = [handlerCopy name];
            v52 = [name8 isEqualToString:*MEMORY[0x277CF3220]];

            if (v52)
            {
              [(BTSDevicesController *)self sspConfirmationHandler:handlerCopy];
            }

            else
            {
              name9 = [handlerCopy name];
              v61 = [name9 isEqualToString:v11];

              if (v61)
              {
                [(BTSDevicesController *)self sspNumericComparisonHandler:handlerCopy];
              }

              else
              {
                name10 = [handlerCopy name];
                v63 = [name10 isEqualToString:*MEMORY[0x277CF3218]];

                if (v63)
                {
                  [(BTSDevicesController *)self sspPasskeyDisplayHandler:handlerCopy];
                }
              }
            }
          }

          goto LABEL_9;
        }

        v36 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23C0F7000, v36, OS_LOG_TYPE_DEFAULT, "Entering pairing flow for 2.0 HID device", buf, 2u);
        }

        v37 = [MEMORY[0x277CCABB0] numberWithInt:(random() % 10000)];
        v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"%04u", objc_msgSend(v37, "unsignedIntValue")];
        [object setPIN:v38];

        v39 = [[BTSSPPairingRequest alloc] initWithDevice:object andSpecifier:self->_currentDeviceSpecifier];
        v40 = self->_sspAlert;
        self->_sspAlert = v39;

        [(BTSSPPairingRequest *)self->_sspAlert setPairingStyle:3 andPasskey:v37];
        [(BTSSPPairingRequest *)self->_sspAlert setDelegate:self];
        [(BTSSPPairingRequest *)self->_sspAlert show];
        goto LABEL_55;
      }
    }

    object3 = [handlerCopy object];
    object = [object3 valueForKey:@"device"];

    goto LABEL_17;
  }

LABEL_10:

  v8 = *MEMORY[0x277D85DE8];
}

- (void)pinRequestHandler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  object = [handlerCopy object];
  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    name = [handlerCopy name];
    name2 = [object name];
    v12 = 136315650;
    v13 = "[BTSDevicesController pinRequestHandler:]";
    v14 = 2112;
    v15 = name;
    v16 = 2112;
    v17 = name2;
    _os_log_impl(&dword_23C0F7000, v6, OS_LOG_TYPE_DEFAULT, "%s received %@ for device %@", &v12, 0x20u);
  }

  v9 = objc_alloc_init(BTSPairSetup);
  *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC38]) = 1;
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD10]));
  [(PSRootController *)v9 setRootController:WeakRetained];

  [(PSSetupController *)v9 setParentController:self];
  [(PSRootController *)v9 setSpecifier:self->_currentDeviceSpecifier];
  objc_storeWeak((self->_currentDeviceSpecifier + *MEMORY[0x277D3FCB8]), self);
  [(BTSDevicesController *)self showController:v9];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)sspConfirmationHandler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  object = [handlerCopy object];
  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    name = [handlerCopy name];
    name2 = [object name];
    v12 = 136315650;
    v13 = "[BTSDevicesController sspConfirmationHandler:]";
    v14 = 2112;
    v15 = name;
    v16 = 2112;
    v17 = name2;
    _os_log_impl(&dword_23C0F7000, v6, OS_LOG_TYPE_DEFAULT, "%s received %@ for device %@", &v12, 0x20u);
  }

  v9 = [[BTSSPPairingRequest alloc] initWithDevice:object andSpecifier:self->_currentDeviceSpecifier];
  sspAlert = self->_sspAlert;
  self->_sspAlert = v9;

  [(BTSSPPairingRequest *)self->_sspAlert setPairingStyle:0 andPasskey:0];
  [(BTSSPPairingRequest *)self->_sspAlert setDelegate:self];
  [(BTSSPPairingRequest *)self->_sspAlert show];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)sspNumericComparisonHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  object = [handlerCopy object];
  v6 = [object valueForKey:@"device"];
  v7 = [object valueForKey:@"value"];
  v8 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    name = [handlerCopy name];
    name2 = [v6 name];
    v14 = 136315906;
    v15 = "[BTSDevicesController sspNumericComparisonHandler:]";
    v16 = 2112;
    v17 = name;
    v18 = 2112;
    v19 = name2;
    v20 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_23C0F7000, v8, OS_LOG_TYPE_DEFAULT, "%s received %@ for device %@ for BTSDeviceController instance %p", &v14, 0x2Au);
  }

  if ([v6 isServiceSupported:0x40000] && -[BTSDevicesController isiPhone](self, "isiPhone") && -[BTSDevicesController isCarPlaySetupEnabled](self, "isCarPlaySetupEnabled"))
  {
    [(BTSDevicesController *)self startIncomingCarPlaySetup:v6 andPasskey:v7];
  }

  else
  {
    v11 = [[BTSSPPairingRequest alloc] initWithDevice:v6 andSpecifier:self->_currentDeviceSpecifier];
    sspAlert = self->_sspAlert;
    self->_sspAlert = v11;

    [(BTSSPPairingRequest *)self->_sspAlert setPairingStyle:1 andPasskey:v7];
    [(BTSSPPairingRequest *)self->_sspAlert setDelegate:self];
    [(BTSSPPairingRequest *)self->_sspAlert show];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)sspPasskeyDisplayHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  object = [handlerCopy object];
  v6 = [object valueForKey:@"device"];
  v7 = [object valueForKey:@"value"];
  v8 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    name = [handlerCopy name];
    name2 = [v6 name];
    v14 = 136315650;
    v15 = "[BTSDevicesController sspPasskeyDisplayHandler:]";
    v16 = 2112;
    v17 = name;
    v18 = 2112;
    v19 = name2;
    _os_log_impl(&dword_23C0F7000, v8, OS_LOG_TYPE_DEFAULT, "%s received %@ for device %@", &v14, 0x20u);
  }

  v11 = [[BTSSPPairingRequest alloc] initWithDevice:v6 andSpecifier:self->_currentDeviceSpecifier];
  sspAlert = self->_sspAlert;
  self->_sspAlert = v11;

  [(BTSSPPairingRequest *)self->_sspAlert setPairingStyle:2 andPasskey:v7];
  [(BTSSPPairingRequest *)self->_sspAlert setDelegate:self];
  [(BTSSPPairingRequest *)self->_sspAlert show];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)bluetoothDenylistChanged:(id)changed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__BTSDevicesController_bluetoothDenylistChanged___block_invoke;
  block[3] = &unk_278BB03E0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)centralManagerDidUpdateState:(id)state
{
  v11 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    state = [stateCopy state];
    if (state > 0xA)
    {
      v7 = "?";
    }

    else
    {
      v7 = off_278BB06E0[state];
    }

    v9 = 136315138;
    v10 = v7;
    _os_log_impl(&dword_23C0F7000, v5, OS_LOG_TYPE_DEFAULT, "Received centralManagerDidUpdateState %s", &v9, 0xCu);
  }

  [(BTSDevicesController *)self powerChanged];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  v35 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  dataCopy = data;
  v10 = [(BTSDevicesController *)self _getDeviceForPeripheral:peripheralCopy];
  if (v10)
  {
    [peripheralCopy setDelegate:self];
    if (-[BTSDevicesController isChannelSoundingTestingEnabled](self, "isChannelSoundingTestingEnabled") && ([v10 isChannelSoundingDevice] & 1) == 0)
    {
      v11 = [dataCopy objectForKeyedSubscript:*MEMORY[0x277CBDD30]];
      if (v11)
      {
        v12 = [MEMORY[0x277CBE0A0] UUIDWithString:@"185B"];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v13 = v11;
        v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v31;
          while (2)
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v31 != v16)
              {
                objc_enumerationMutation(v13);
              }

              if ([*(*(&v30 + 1) + 8 * i) isEqual:{v12, v30}])
              {
                [v10 setIsChannelSoundingDevice:1];
                goto LABEL_15;
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

LABEL_15:
      }
    }

    devicesDict = self->_devicesDict;
    identifier = [v10 identifier];
    v20 = [(NSMutableDictionary *)devicesDict objectForKey:identifier];

    if (v20)
    {
      identifier2 = [v10 identifier];
      v22 = [(BTSDevicesController *)self specifierForID:identifier2];

      name = [v22 name];
      name2 = [v10 name];
      v25 = [name isEqualToString:name2];

      if ((v25 & 1) == 0)
      {
        name3 = [v10 name];
        [v22 setName:name3];

        name4 = [v10 name];
        [v22 setProperty:name4 forKey:*MEMORY[0x277D40170]];
      }

      if (-[BTSDevicesController isLEAudioLiveOnEnabled](self, "isLEAudioLiveOnEnabled") && [v10 isLEAudioSupported])
      {
        [(BTSDevicesController *)self markLEAudioDevice:v10];
      }

      [(BTSDevicesController *)self _updateDevicePosition:v10];
      identifier3 = [v10 identifier];
      [(BTSDevicesController *)self reloadCellForSpecifierID:identifier3];
    }

    else
    {
      [(BTSDevicesController *)self _addDevice:v10];
      if (-[BTSDevicesController isLEAudioLiveOnEnabled](self, "isLEAudioLiveOnEnabled") && [v10 isLEAudioSupported])
      {
        [(BTSDevicesController *)self markLEAudioDevice:v10];
      }
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  v6 = [(BTSDevicesController *)self _getDeviceForPeripheral:peripheral];
  if (v6)
  {
    v11 = v6;
    identifier = [v6 identifier];
    identifier2 = [(PSSpecifier *)self->_currentDeviceSpecifier identifier];
    v9 = [identifier isEqualToString:identifier2];

    if (v9)
    {
      [(BTSDevicesController *)self setBluetoothIsBusy:0];
    }

    identifier3 = [v11 identifier];
    [(BTSDevicesController *)self reloadCellForSpecifierID:identifier3];

    v6 = v11;
  }
}

- (void)centralManager:(id)manager didUpdatePeripheralConnectionState:(id)state
{
  v25 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v6 = [(BTSDevicesController *)self _getDeviceForPeripheral:stateCopy];
  if (v6)
  {
    v7 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v23 = 138412290;
      v24 = stateCopy;
      _os_log_impl(&dword_23C0F7000, v7, OS_LOG_TYPE_INFO, "didUpdatePeripheralConnectionState for device %@", &v23, 0xCu);
    }

    if ([v6 connected])
    {
      v8 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v23 = 138412290;
        v24 = stateCopy;
        _os_log_impl(&dword_23C0F7000, v8, OS_LOG_TYPE_INFO, "Discovering services for device %@", &v23, 0xCu);
      }

      [stateCopy setDelegate:self];
      v9 = [(NSArray *)self->_healthServices arrayByAddingObjectsFromArray:self->_hidServices];
      if ([(BTSDevicesController *)self isChannelSoundingTestingEnabled])
      {
        v10 = [v9 mutableCopy];
        v11 = [MEMORY[0x277CBE0A0] UUIDWithString:@"185B"];
        [v10 addObject:v11];

        v12 = [v10 copy];
        v9 = v12;
      }

      [stateCopy discoverServices:v9];
      if ([v6 connected])
      {
        if ([v6 isLimitedConnectivityDevice])
        {
          [(NSMutableSet *)self->_connectedPoorBehaviorDevices addObject:v6];
          self->_mainFooterNeedsUpdate = 1;
          [(BTSDevicesController *)self updateMainGroupFooter];
        }

        if ([v6 isFirmwareUpdateRequiredDevice])
        {
          [(NSMutableSet *)self->_connectedFirmwareUpdateRequiredDevices addObject:v6];
          self->_mainFooterNeedsUpdate = 1;
          [(BTSDevicesController *)self updateMainGroupFooter];
        }

        if ([v6 isHIDDevice])
        {
          [(NSMutableSet *)self->_connectedHIDDevices addObject:v6];
          self->_mainFooterNeedsUpdate = 1;
          [(BTSDevicesController *)self updateMainGroupFooter];
        }

        if ([v6 isChannelSoundingDevice] && -[BTSDevicesController isChannelSoundingTestingEnabled](self, "isChannelSoundingTestingEnabled"))
        {
          if ([v6 paired])
          {
            [v6 openChannelSoundingL2CAP];
          }

          else
          {
            sharedPairingAgent = [(CBCentralManager *)self->_centralManager sharedPairingAgent];
            [sharedPairingAgent pairPeer:stateCopy];
          }
        }
      }
    }

    else
    {
      identifier = [v6 identifier];
      identifier2 = [(PSSpecifier *)self->_currentDeviceSpecifier identifier];
      v19 = [identifier isEqualToString:identifier2];

      if (v19)
      {
        [(BTSDevicesController *)self setBluetoothIsBusy:0];
      }

      if ([v6 isChannelSoundingDevice] && -[BTSDevicesController isChannelSoundingTestingEnabled](self, "isChannelSoundingTestingEnabled"))
      {
        [v6 setChannelSoundingL2CAP:0];
      }

      if (-[BTSDevicesController isLEAudioLiveOnEnabled](self, "isLEAudioLiveOnEnabled") && [v6 isLEAudioSupported])
      {
        [v6 connect];
      }
    }

    [(BTSDevicesController *)self _updateDevicePosition:v6];
    identifier3 = [v6 identifier];
    [(BTSDevicesController *)self reloadCellForSpecifierID:identifier3];

    if (([v6 connected] & 1) == 0)
    {
      if ([(NSMutableSet *)self->_connectedPoorBehaviorDevices containsObject:v6])
      {
        [(NSMutableSet *)self->_connectedPoorBehaviorDevices removeObject:v6];
        self->_mainFooterNeedsUpdate = 1;
        [(BTSDevicesController *)self updateMainGroupFooter];
      }

      if ([(NSMutableSet *)self->_connectedFirmwareUpdateRequiredDevices containsObject:v6])
      {
        [(NSMutableSet *)self->_connectedFirmwareUpdateRequiredDevices removeObject:v6];
        self->_mainFooterNeedsUpdate = 1;
        [(BTSDevicesController *)self updateMainGroupFooter];
      }

      if ([(NSMutableSet *)self->_connectedHIDDevices containsObject:v6])
      {
        [(NSMutableSet *)self->_connectedHIDDevices removeObject:v6];
        self->_mainFooterNeedsUpdate = 1;
        [(BTSDevicesController *)self updateMainGroupFooter];
      }
    }
  }

  else
  {
    v13 = [(BTSDevicesController *)self _getDeviceForCTKDPeripheral:stateCopy];
    if (v13)
    {
      v14 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138412290;
        v24 = stateCopy;
        _os_log_impl(&dword_23C0F7000, v14, OS_LOG_TYPE_DEFAULT, "CTKD device %@ connection state updated", &v23, 0xCu);
      }

      [(BTSDevicesController *)self _updateDevicePosition:v13];
      classicDevice = [v13 classicDevice];
      address = [classicDevice address];
      [(BTSDevicesController *)self reloadCellForSpecifierID:address];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_peripheralDidCompletePairing:(id)pairing
{
  pairingCopy = pairing;
  identifier = [pairingCopy identifier];
  identifier2 = [(PSSpecifier *)self->_currentDeviceSpecifier identifier];
  v6 = [identifier isEqualToString:identifier2];

  if (v6)
  {
    [(BTSDevicesController *)self setBluetoothIsBusy:0];
  }

  [(BTSDevicesController *)self _updateDevicePosition:pairingCopy];
  identifier3 = [pairingCopy identifier];
  [(BTSDevicesController *)self reloadCellForSpecifierID:identifier3];

  if ([pairingCopy connected])
  {
    if ([pairingCopy isLimitedConnectivityDevice])
    {
      [(NSMutableSet *)self->_connectedPoorBehaviorDevices addObject:pairingCopy];
      self->_mainFooterNeedsUpdate = 1;
      [(BTSDevicesController *)self updateMainGroupFooter];
    }

    if ([pairingCopy isFirmwareUpdateRequiredDevice])
    {
      [(NSMutableSet *)self->_connectedFirmwareUpdateRequiredDevices addObject:pairingCopy];
      self->_mainFooterNeedsUpdate = 1;
      [(BTSDevicesController *)self updateMainGroupFooter];
    }

    if ([pairingCopy isHIDDevice])
    {
      [(NSMutableSet *)self->_connectedHIDDevices addObject:pairingCopy];
      self->_mainFooterNeedsUpdate = 1;
      [(BTSDevicesController *)self updateMainGroupFooter];
    }

    if ([pairingCopy isChannelSoundingDevice] && -[BTSDevicesController isChannelSoundingTestingEnabled](self, "isChannelSoundingTestingEnabled"))
    {
      v8 = pairingCopy;
      channelSoundingL2CAP = [v8 channelSoundingL2CAP];

      if (!channelSoundingL2CAP)
      {
        [v8 openChannelSoundingL2CAP];
      }
    }
  }
}

- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing
{
  v5 = [(BTSDevicesController *)self _getDeviceForPeripheral:pairing];
  if (v5)
  {
    [(BTSDevicesController *)self _peripheralDidCompletePairing:v5];
    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"enableHealthDevices", @"com.apple.bluetooth", &keyExistsAndHasValidFormat);
    if (_os_feature_enabled_impl())
    {
      if (AppBooleanValue)
      {
        if (keyExistsAndHasValidFormat)
        {
          healthDeviceType = [v5 healthDeviceType];

          if (healthDeviceType)
          {
            [v5 setUserSelectedHealthDataSyncConfig:0];
          }
        }
      }
    }
  }
}

- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  pairingCopy = pairing;
  v7 = [(BTSDevicesController *)self _getDeviceForPeripheral:pairingCopy];
  if ([pairingCopy state])
  {
    [(CBCentralManager *)self->_centralManager cancelPeripheralConnection:pairingCopy];
  }

  if (v7)
  {
    identifier = [v7 identifier];
    identifier2 = [(PSSpecifier *)self->_currentDeviceSpecifier identifier];
    v10 = [identifier isEqualToString:identifier2];

    if (v10)
    {
      v11 = [[BTAlert alloc] initWithDevice:v7];
      alert = self->_alert;
      self->_alert = v11;

      v13 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = self->_alert;
        v16 = 138412290;
        v17 = v14;
        _os_log_impl(&dword_23C0F7000, v13, OS_LOG_TYPE_DEFAULT, "Pairing failed BTAlert : %@", &v16, 0xCu);
      }

      [(BTAlert *)self->_alert setDelegate:self];
      [(BTAlert *)self->_alert showAlertWithResult:&unk_284EE7388];
    }

    if ([v7 isHealthDevice])
    {
      [v7 setHealthDevice:0];
    }

    [(BTSDevicesController *)self _peripheralDidCompletePairing:v7];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair
{
  v5 = [(BTSDevicesController *)self _getDeviceForPeripheral:unpair];
  v6 = v5;
  if (v5)
  {
    if ([v5 isHealthDevice])
    {
      [v6 setHealthDevice:0];
      if ((_os_feature_enabled_impl() & 1) == 0)
      {
        healthKitStore = self->_healthKitStore;
        v8 = objc_alloc(MEMORY[0x277CCAD78]);
        identifier = [v6 identifier];
        v10 = [v8 initWithUUIDString:identifier];
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __51__BTSDevicesController_pairingAgent_peerDidUnpair___block_invoke;
        v12[3] = &unk_278BB0408;
        v13 = v6;
        [(HKHealthStore *)healthKitStore unregisterPeripheralIdentifier:v10 withCompletion:v12];
      }
    }

    [(BTSDevicesController *)self _updateDevicePosition:v6];
    identifier2 = [v6 identifier];
    [(BTSDevicesController *)self reloadCellForSpecifierID:identifier2];
  }
}

void __51__BTSDevicesController_pairingAgent_peerDidUnpair___block_invoke(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __51__BTSDevicesController_pairingAgent_peerDidUnpair___block_invoke_cold_1();
    }
  }
}

- (void)peripheralDidUpdateName:(id)name
{
  v4 = [(BTSDevicesController *)self _getDeviceForPeripheral:name];
  if (v4)
  {
    v9 = v4;
    identifier = [v4 identifier];
    v6 = [(BTSDevicesController *)self specifierForID:identifier];

    name = [v9 name];
    [v6 setName:name];

    name2 = [v9 name];
    [v6 setProperty:name2 forKey:*MEMORY[0x277D40170]];

    [(BTSDevicesController *)self _updateDevicePosition:v9];
    v4 = v9;
  }
}

- (void)peripheralConnectionTimeout:(id)timeout
{
  v16 = *MEMORY[0x277D85DE8];
  userInfo = [timeout userInfo];
  identifier = [userInfo identifier];
  identifier2 = [(PSSpecifier *)self->_currentDeviceSpecifier identifier];
  v7 = [identifier isEqualToString:identifier2];

  if (v7)
  {
    if (([userInfo connected] & 1) == 0)
    {
      v8 = [[BTAlert alloc] initWithDevice:userInfo];
      alert = self->_alert;
      self->_alert = v8;

      v10 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_alert;
        v14 = 138412290;
        v15 = v11;
        _os_log_impl(&dword_23C0F7000, v10, OS_LOG_TYPE_DEFAULT, "Connection timeout BTAlert : %@", &v14, 0xCu);
      }

      [(BTAlert *)self->_alert setDelegate:self];
      [(BTAlert *)self->_alert showAlertWithResult:&unk_284EE73A0];
      [userInfo disconnect];
    }

    [(BTSDevicesController *)self setBluetoothIsBusy:0];
    identifier3 = [userInfo identifier];
    [(BTSDevicesController *)self reloadCellForSpecifierID:identifier3];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  v52 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  servicesCopy = services;
  if (servicesCopy)
  {
    v8 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BTSDevicesController peripheral:didDiscoverServices:];
    }
  }

  else
  {
    v8 = [(BTSDevicesController *)self _getDeviceForPeripheral:peripheralCopy];
    if (v8)
    {
      v9 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        services = [peripheralCopy services];
        *buf = 138412546;
        v49 = peripheralCopy;
        v50 = 2112;
        v51 = services;
        _os_log_impl(&dword_23C0F7000, v9, OS_LOG_TYPE_INFO, "Device %@ supports services %@", buf, 0x16u);
      }

      v36 = v8;

      v39 = [MEMORY[0x277CBEB98] setWithArray:self->_healthServices];
      [MEMORY[0x277CBEB58] set];
      v38 = v37 = peripheralCopy;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      services2 = [peripheralCopy services];
      v12 = [services2 countByEnumeratingWithState:&v43 objects:v47 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = 0;
        v15 = *v44;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            selfCopy = self;
            if (*v44 != v15)
            {
              objc_enumerationMutation(services2);
            }

            v18 = *(*(&v43 + 1) + 8 * i);
            uUID = [v18 UUID];
            v20 = [v39 containsObject:uUID];

            if (v20)
            {
              uUID2 = [v18 UUID];
              uUIDString = [uUID2 UUIDString];
              [v38 addObject:uUIDString];
            }

            self = selfCopy;
            hidServices = selfCopy->_hidServices;
            uUID3 = [v18 UUID];
            LOBYTE(hidServices) = [(NSArray *)hidServices containsObject:uUID3];

            v14 |= hidServices;
          }

          v13 = [services2 countByEnumeratingWithState:&v43 objects:v47 count:16];
        }

        while (v13);
      }

      else
      {
        v14 = 0;
      }

      v25 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDFD0]];
      uUIDString2 = [v25 UUIDString];
      v27 = [v38 containsObject:uUIDString2];

      v8 = v36;
      if ((v14 & 1) != 0 && ([(NSMutableSet *)self->_connectedHIDDevices containsObject:v36]& 1) == 0)
      {
        [(NSMutableSet *)self->_connectedHIDDevices addObject:v36];
        self->_mainFooterNeedsUpdate = 1;
        [(BTSDevicesController *)self updateMainGroupFooter];
      }

      servicesCopy = 0;
      peripheralCopy = v37;
      if ([v38 count])
      {
        v28 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          [BTSDevicesController peripheral:didDiscoverServices:];
        }

        [v36 setHealthDevice:1];
        if (v27)
        {
          if (_os_feature_enabled_impl())
          {
            v29 = sharedBluetoothSettingsLogComponent();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              [BTSDevicesController peripheral:didDiscoverServices:];
            }

            [v37 setCustomProperty:@"Fitness" value:@"1"];
            v30 = [v37 customProperty:@"UpdateHealth"];

            if (!v30)
            {
              [v37 setCustomProperty:@"UpdateHealth" value:@"1"];
            }

            [v37 tag:*MEMORY[0x277CCCB90]];
            notify_post("BTSettingsHRMConnectedNotification");
          }

          else
          {
            healthKitStore = self->_healthKitStore;
            identifier = [v37 identifier];
            name = [v37 name];
            allObjects = [v38 allObjects];
            v40[0] = MEMORY[0x277D85DD0];
            v40[1] = 3221225472;
            v40[2] = __55__BTSDevicesController_peripheral_didDiscoverServices___block_invoke;
            v40[3] = &unk_278BB0430;
            v41 = v37;
            v42 = v38;
            [(HKHealthStore *)healthKitStore registerPeripheralIdentifier:identifier name:name services:allObjects withCompletion:v40];
          }
        }

        [(BTSDevicesController *)self _updateDevicePosition:v36];
      }
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __55__BTSDevicesController_peripheral_didDiscoverServices___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __55__BTSDevicesController_peripheral_didDiscoverServices___block_invoke_cold_1(a1);
    }
  }
}

- (void)peripheral:(id)peripheral didOpenL2CAPChannel:(id)channel error:(id)error
{
  v19 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  channelCopy = channel;
  errorCopy = error;
  v11 = sharedBluetoothSettingsLogComponent();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (errorCopy)
  {
    if (v12)
    {
      v13 = [errorCopy description];
      v15 = 138412546;
      v16 = peripheralCopy;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_23C0F7000, v11, OS_LOG_TYPE_DEFAULT, "Error opening L2CAP channel for %@: %@", &v15, 0x16u);
    }

LABEL_4:

    goto LABEL_5;
  }

  if (v12)
  {
    v15 = 138412290;
    v16 = peripheralCopy;
    _os_log_impl(&dword_23C0F7000, v11, OS_LOG_TYPE_DEFAULT, "Peripheral %@ did open L2CAP channel", &v15, 0xCu);
  }

  if (-[BTSDevicesController isChannelSoundingTestingEnabled](self, "isChannelSoundingTestingEnabled") && [channelCopy PSM] == 128)
  {
    v11 = [(BTSDevicesController *)self _getDeviceForPeripheral:peripheralCopy];
    if ([v11 isChannelSoundingDevice])
    {
      [v11 setChannelSoundingL2CAP:channelCopy];
      [(CBCentralManager *)self->_centralManager csSecurityEnable:peripheralCopy];
      [(CBCentralManager *)self->_centralManager csSetDefaultSettings:peripheralCopy options:&unk_284EE73D0];
    }

    goto LABEL_4;
  }

LABEL_5:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)peripheral:(id)peripheral didCompleteChannelSoundingProcedure:(id)procedure error:(id)error
{
  v14 = *MEMORY[0x277D85DE8];
  procedureCopy = procedure;
  peripheralCopy = peripheral;
  v9 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = procedureCopy;
    _os_log_impl(&dword_23C0F7000, v9, OS_LOG_TYPE_DEFAULT, "Completed channel sounding procedure with results: %@", &v12, 0xCu);
  }

  v10 = [(BTSDevicesController *)self _getDeviceForPeripheral:peripheralCopy];

  [v10 sendChannelSoundingResults:procedureCopy];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)fetchDADevices
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleDASessionEvent:(id)event
{
  eventCopy = event;
  eventType = [eventCopy eventType];
  if (eventType <= 40)
  {
    if (eventType != 10)
    {
      if (eventType == 20)
      {
        defaultCenter = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_INFO))
        {
          *v14 = 0;
          _os_log_impl(&dword_23C0F7000, defaultCenter, OS_LOG_TYPE_INFO, "DAEventTypeInvalidated for BTSettings", v14, 2u);
        }

        goto LABEL_22;
      }

      goto LABEL_23;
    }

    v8 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&dword_23C0F7000, v8, OS_LOG_TYPE_INFO, "DASession from BTSettings activated", v17, 2u);
    }

    [(BTSDevicesController *)self fetchDADevices];
LABEL_14:
    if (self->_power && *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]))
    {
      [(BTSDevicesController *)self reloadSpecifiers];
    }

    goto LABEL_23;
  }

  if (eventType != 41)
  {
    if (eventType != 42)
    {
      goto LABEL_23;
    }

    [(BTSDevicesController *)self fetchDADevices];
    v7 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23C0F7000, v7, OS_LOG_TYPE_INFO, "DeviceChanged for BTSettings", buf, 2u);
    }

    goto LABEL_14;
  }

  v9 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *v16 = 0;
    _os_log_impl(&dword_23C0F7000, v9, OS_LOG_TYPE_INFO, "DeviceLost for BTSettings", v16, 2u);
  }

  [(BTSDevicesController *)self fetchDADevices];
  if (self->_power && *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]))
  {
    [(BTSDevicesController *)self reloadSpecifiers];
    v10 = MEMORY[0x277CCAB98];
    v11 = eventCopy;
    defaultCenter = [v10 defaultCenter];
    device = [v11 device];

    identifier = [device identifier];
    [defaultCenter postNotificationName:@"DADeviceLost" object:identifier];

LABEL_22:
  }

LABEL_23:
}

- (void)setSSPConfirmation:(int64_t)confirmation forDevice:(id)device
{
  deviceCopy = device;
  if (confirmation)
  {
    userInfo = [(PSSpecifier *)self->_currentDeviceSpecifier userInfo];
    [userInfo setObject:@"cancelled" forKey:@"PIN-ended"];

    mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
    v8 = mEMORY[0x277CF3248];
    confirmationCopy = confirmation;
  }

  else
  {
    if (-[BTSDevicesController isiPhone](self, "isiPhone") && [deviceCopy isServiceSupported:0x40000])
    {
      [deviceCopy setSyncSettings:{objc_msgSend(deviceCopy, "syncSettings") & 0xFFFF00FFLL}];
      [(BTSDevicesController *)self showSyncContactsPopup:deviceCopy];
      goto LABEL_8;
    }

    userInfo2 = [(PSSpecifier *)self->_currentDeviceSpecifier userInfo];
    [userInfo2 setObject:@"accepted" forKey:@"PIN-ended"];

    mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
    v8 = mEMORY[0x277CF3248];
    confirmationCopy = 0;
  }

  [mEMORY[0x277CF3248] acceptSSP:confirmationCopy forDevice:deviceCopy];

LABEL_8:
}

- (void)showPairingAlert:(id)alert
{
  alertCopy = alert;
  view = [(BTSDevicesController *)self view];
  window = [view window];

  if (window)
  {
    v7 = MEMORY[0x277D75D28];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __41__BTSDevicesController_showPairingAlert___block_invoke;
    v8[3] = &unk_278BB0318;
    v8[4] = self;
    v9 = alertCopy;
    [v7 _performWithoutDeferringTransitions:v8];
  }
}

- (id)_getDeviceForPeripheral:(id)peripheral
{
  v41 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  devicesDict = self->_devicesDict;
  identifier = [peripheralCopy identifier];
  uUIDString = [identifier UUIDString];
  v8 = [(NSMutableDictionary *)devicesDict objectForKey:uUIDString];

  if (v8)
  {
    if ([peripheralCopy hasTag:@"_MANAGED_BY_WALLET_"])
    {
      [v8 setManagedByWallet:1];
      v9 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v39) = 0;
        v10 = "DCK : Digital Car Key are special";
LABEL_28:
        _os_log_impl(&dword_23C0F7000, v9, OS_LOG_TYPE_DEFAULT, v10, &v39, 2u);
      }
    }

    else
    {
      if (![peripheralCopy hasTag:@"_MANAGED_BY_ALIRO_WALLET_"])
      {
LABEL_30:
        v8 = v8;
        v32 = v8;
        goto LABEL_41;
      }

      [v8 setManagedByAliroWallet:1];
      v9 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v39) = 0;
        v10 = "Alire : Home Key are special";
        goto LABEL_28;
      }
    }

LABEL_29:

    goto LABEL_30;
  }

  v8 = [BTSDeviceLE deviceWithPeripheral:peripheralCopy manager:self->_centralManager];
  if (![(BTSDevicesController *)self shouldHideDevice:v8])
  {
    if ([peripheralCopy hasTag:@"_MANAGED_BY_WALLET_"])
    {
      [v8 setManagedByWallet:1];
      v11 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v39) = 0;
        _os_log_impl(&dword_23C0F7000, v11, OS_LOG_TYPE_DEFAULT, "DCK : Digital Car Key are special", &v39, 2u);
      }
    }

    if ([peripheralCopy hasTag:@"_MANAGED_BY_ALIRO_WALLET_"])
    {
      [v8 setManagedByAliroWallet:1];
      v12 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v39) = 0;
        _os_log_impl(&dword_23C0F7000, v12, OS_LOG_TYPE_DEFAULT, "Aliro : Home Key are special", &v39, 2u);
      }
    }

    v13 = [peripheralCopy customProperty:@"Fitness"];

    if (v13)
    {
      [v8 setHealthDevice:1];
    }

    if (![v8 supportsCTKD])
    {
      v9 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        name = [v8 name];
        v39 = 138412290;
        v40 = name;
        _os_log_impl(&dword_23C0F7000, v9, OS_LOG_TYPE_DEFAULT, "CTKD : Device %@ does not support CTKD", &v39, 0xCu);
      }

      goto LABEL_29;
    }

    mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
    identifier2 = [peripheralCopy identifier];
    v9 = [mEMORY[0x277CF3248] deviceFromIdentifier:identifier2];

    v16 = [BTSDeviceClassic deviceWithDevice:v9];
    v17 = self->_devicesDict;
    classicDevice = [v16 classicDevice];
    address = [classicDevice address];
    v20 = [(NSMutableDictionary *)v17 objectForKey:address];

    if (v20)
    {
      [v20 setCtkdDevice:1];
      if ([v8 isManagedByDeviceAccess])
      {
        knownDADevices = self->_knownDADevices;
        identifier3 = [peripheralCopy identifier];
        v23 = [(NSMutableDictionary *)knownDADevices objectForKeyedSubscript:identifier3];
        [v8 setUnderlyingDADevice:v23];

        name2 = [v8 name];
        [v20 setAccessorySetupKitDisplayName:name2];

        [v20 setDenyIncomingClassicConnection:{objc_msgSend(v8, "shouldDenyIncomingClassicConnection")}];
      }

      v25 = self->_devicesDict;
      classicDevice2 = [v16 classicDevice];
      address2 = [classicDevice2 address];
      [(NSMutableDictionary *)v25 setObject:v20 forKey:address2];

      v28 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        [BTSDevicesController _getDeviceForPeripheral:];
      }

      identifier4 = [peripheralCopy identifier];
      uUIDString2 = [identifier4 UUIDString];

      if (uUIDString2)
      {
        v31 = [(NSMutableDictionary *)self->_ctkdLeDevicesDict objectForKey:uUIDString2];

        if (!v31)
        {
          [v8 setCtkdDevice:1];
          [(NSMutableDictionary *)self->_ctkdLeDevicesDict setObject:v8 forKey:uUIDString2];
          [(BTSDevicesController *)self updateCTKDCounterparts:v20 leDevice:v8];
        }
      }
    }

    else
    {
      v34 = [peripheralCopy hasTag:@"HasTS"];
      v35 = sharedBluetoothSettingsLogComponent();
      uUIDString2 = v35;
      if (v34)
      {
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          [BTSDevicesController _getDeviceForPeripheral:];
        }

        goto LABEL_29;
      }

      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        name3 = [v8 name];
        v39 = 138412290;
        v40 = name3;
        _os_log_impl(&dword_23C0F7000, uUIDString2, OS_LOG_TYPE_INFO, "CTKD : Device %@ missing from list of classic paired devices", &v39, 0xCu);
      }
    }
  }

  v32 = 0;
LABEL_41:

  v37 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)_getDeviceForCTKDPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  ctkdLeDevicesDict = self->_ctkdLeDevicesDict;
  identifier = [peripheralCopy identifier];
  uUIDString = [identifier UUIDString];
  v8 = [(NSMutableDictionary *)ctkdLeDevicesDict objectForKey:uUIDString];

  if (v8)
  {
    mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
    identifier2 = [peripheralCopy identifier];
    v11 = [mEMORY[0x277CF3248] deviceFromIdentifier:identifier2];

    v12 = [BTSDeviceClassic deviceWithDevice:v11];
    classicDevice = [v12 classicDevice];
    address = [classicDevice address];

    v15 = [(NSMutableDictionary *)self->_devicesDict objectForKey:address];
    if (([v8 isManagedByWallet] & 1) != 0 || objc_msgSend(v8, "isManagedByAliroWallet"))
    {
      v16 = [(NSMutableDictionary *)self->managedByWalletDictionary objectForKey:address];

      if (!v16)
      {
        [(NSMutableDictionary *)self->managedByWalletDictionary setValue:MEMORY[0x277CBEC38] forKey:address];
      }
    }

    if ([v8 doesSupportBackgroundNI] && (-[NSMutableDictionary objectForKey:](self->supportsBackgroundNIDictionary, "objectForKey:", address), v17 = objc_claimAutoreleasedReturnValue(), v17, !v17))
    {
      [(NSMutableDictionary *)self->supportsBackgroundNIDictionary setValue:MEMORY[0x277CBEC38] forKey:address];
      if (v15)
      {
        goto LABEL_9;
      }
    }

    else if (v15)
    {
LABEL_9:
      v18 = v15;
      goto LABEL_14;
    }

    v19 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [BTSDevicesController _getDeviceForCTKDPeripheral:];
    }

LABEL_14:
    if (v15)
    {
      goto LABEL_16;
    }
  }

  v15 = 0;
LABEL_16:

  return v15;
}

- (void)_addDevice:(id)device
{
  deviceCopy = device;
  if ([(BTSDevicesController *)self shouldDisplayDevice:?])
  {
    identifier = [deviceCopy identifier];
    if (identifier)
    {
      v5 = identifier;
      devicesDict = self->_devicesDict;
      identifier2 = [deviceCopy identifier];
      v8 = [(NSMutableDictionary *)devicesDict objectForKey:identifier2];

      if (!v8)
      {
        v9 = self->_devicesDict;
        identifier3 = [deviceCopy identifier];
        [(NSMutableDictionary *)v9 setObject:deviceCopy forKey:identifier3];

        v11 = [(BTSDevicesController *)self _specifierForDevice:deviceCopy];
        [(BTSDevicesController *)self _addDeviceSpecifier:v11 withDevice:deviceCopy];
      }
    }
  }
}

- (void)_addDeviceSpecifier:(id)specifier withDevice:(id)device
{
  v31 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  deviceCopy = device;
  v8 = [(BTSDevicesController *)self specifierForID:@"MY_DEVICES"];
  if (v8)
  {

LABEL_7:
    v27 = specifierCopy;
    if ([deviceCopy isMyDevice])
    {
      v15 = @"MY_DEVICES";
    }

    else
    {
      v15 = @"DEVICES";
    }

    v16 = [(BTSDevicesController *)self indexOfSpecifierID:v15];
    array = [MEMORY[0x277CBEB18] array];
    v17 = *MEMORY[0x277D3FC48];
    v18 = v16 + 1;
    if (v16 + 1 < [*(&self->super.super.super.super.super.isa + v17) count])
    {
      v19 = v16 + 1;
      do
      {
        v20 = [(BTSDevicesController *)self specifierAtIndex:v19];
        userInfo = [v20 userInfo];
        v22 = [userInfo objectForKey:@"bt-device"];

        if (!v22)
        {
          break;
        }

        isMyDevice = [deviceCopy isMyDevice];
        if (isMyDevice == [v22 isMyDevice])
        {
          [array addObject:v22];
        }

        ++v19;
      }

      while (v19 < [*(&self->super.super.super.super.super.isa + v17) count]);
    }

    [array addObject:deviceCopy];
    [array sortUsingSelector:sel_compare_];
    v24 = [array indexOfObject:deviceCopy];
    v25 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [BTSDevicesController _addDeviceSpecifier:withDevice:];
    }

    specifierCopy = v27;
    [(BTSDevicesController *)self insertSpecifier:v27 atIndex:v18 + v24 animated:1];
    goto LABEL_19;
  }

  if (![deviceCopy isMyDevice])
  {
    goto LABEL_7;
  }

  v9 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    name = [deviceCopy name];
    *buf = 138412290;
    v30 = name;
    _os_log_impl(&dword_23C0F7000, v9, OS_LOG_TYPE_INFO, "Adding first known device %@", buf, 0xCu);
  }

  v28[0] = self->_myDevicesGroupSpec;
  v28[1] = specifierCopy;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  [(BTSDevicesController *)self insertContiguousSpecifiers:v11 afterSpecifierID:@"BLUETOOTH" animated:1];

  array = [(PSSpecifier *)self->_otherDevicesGroupSpec propertyForKey:*MEMORY[0x277D3FFB0]];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"OTHER_DEVICES" value:&stru_284EE3458 table:@"Devices"];
  [array setName:v14];

LABEL_19:
  v26 = *MEMORY[0x277D85DE8];
}

- (void)_removeDeviceSpecifier:(id)specifier
{
  v21 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  [(BTSDevicesController *)self beginUpdates];
  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v18 = 138412546;
    *&v18[4] = specifierCopy;
    v19 = 2048;
    v20 = [(BTSDevicesController *)self indexOfSpecifier:specifierCopy];
    _os_log_impl(&dword_23C0F7000, v5, OS_LOG_TYPE_INFO, "Removing specifier %@ at index %lu", v18, 0x16u);
  }

  [(BTSDevicesController *)self removeSpecifier:specifierCopy animated:1];
  v6 = [(BTSDevicesController *)self specifierForID:@"MY_DEVICES"];
  if (v6)
  {
    v7 = v6;
    v8 = [(BTSDevicesController *)self rowsForGroup:1];

    if (!v8)
    {
      v9 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v18 = 0;
        _os_log_impl(&dword_23C0F7000, v9, OS_LOG_TYPE_INFO, "Removing known device section", v18, 2u);
      }

      isMainSettingsPane = [(BTSDevicesController *)self isMainSettingsPane];
      table = [(BTSDevicesController *)self table];
      if (isMainSettingsPane)
      {
        v12 = [(BTSDevicesController *)self tableView:table viewForHeaderInSection:2];

        v13 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *v18 = 0;
          v14 = "Removing in BT pane";
LABEL_12:
          _os_log_impl(&dword_23C0F7000, v13, OS_LOG_TYPE_INFO, v14, v18, 2u);
        }
      }

      else
      {
        v12 = [(BTSDevicesController *)self tableView:table viewForHeaderInSection:1];

        v13 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *v18 = 0;
          v14 = "Removing in AX pane";
          goto LABEL_12;
        }
      }

      v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v16 = [v15 localizedStringForKey:@"DEVICES" value:&stru_284EE3458 table:@"Devices"];
      [v12 setName:v16];

      [(BTSDevicesController *)self removeSpecifier:self->_myDevicesGroupSpec animated:1];
    }
  }

  [(BTSDevicesController *)self endUpdates];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_removeDevice:(id)device
{
  deviceCopy = device;
  devicesDict = self->_devicesDict;
  v12 = deviceCopy;
  identifier = [deviceCopy identifier];
  v7 = [(NSMutableDictionary *)devicesDict objectForKey:identifier];

  if (v7)
  {
    identifier2 = [v12 identifier];
    v9 = [(BTSDevicesController *)self specifierForID:identifier2];

    if (v9 && v9 == self->_currentDeviceSpecifier)
    {
      [v12 disconnect];
      [(BTSDevicesController *)self setBluetoothIsBusy:0];
    }

    v10 = self->_devicesDict;
    identifier3 = [v12 identifier];
    [(NSMutableDictionary *)v10 removeObjectForKey:identifier3];

    [(BTSDevicesController *)self _removeDeviceSpecifier:v9];
  }
}

- (void)allowBluetoothScans:(BOOL)scans
{
  if (scans)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    applicationState = [mEMORY[0x277D75128] applicationState];

    if (applicationState)
    {
      return;
    }

    self->_allowScanning = scans;
    mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
    [mEMORY[0x277CF3248] setDeviceScanningEnabled:1];
  }

  else
  {
    self->_allowScanning = 0;
    mEMORY[0x277CF3248]2 = [MEMORY[0x277CF3248] sharedInstance];
    [mEMORY[0x277CF3248]2 setDeviceScanningEnabled:0];

    mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
    [mEMORY[0x277CF3248] resetDeviceScanning];
  }

  [(BTSDevicesController *)self _setupCentralScanning];
}

- (void)_setupCentralScanning
{
  v19[3] = *MEMORY[0x277D85DE8];
  if (!self->_power)
  {
LABEL_11:
    v14 = *MEMORY[0x277D85DE8];
    return;
  }

  if (self->_allowScanning)
  {
    v3 = [(NSArray *)self->_healthServices mutableCopy];
    [v3 addObjectsFromArray:self->_hidServices];
    if ([(BTSDevicesController *)self isiPhone]&& [(BTSDevicesController *)self isLECarPlayEnabled])
    {
      v4 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDFE0]];
      [v3 addObject:v4];
    }

    if ([(BTSDevicesController *)self isChannelSoundingTestingEnabled])
    {
      v5 = [MEMORY[0x277CBE0A0] UUIDWithString:@"185B"];
      [v3 addObject:v5];
    }

    if ([(BTSDevicesController *)self isLEAudioLiveOnEnabled])
    {
      v6 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDF98]];
      [v3 addObject:v6];

      v7 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDFE8]];
      [v3 addObject:v7];
    }

    v8 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDF70]];
    v19[0] = v8;
    v9 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDFA8]];
    v19[1] = v9;
    v10 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDF68]];
    v19[2] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];

    centralManager = self->_centralManager;
    v17 = *MEMORY[0x277CBDE60];
    v18 = v11;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    [(CBCentralManager *)centralManager scanForPeripheralsWithServices:v3 options:v13];

    goto LABEL_11;
  }

  v15 = self->_centralManager;
  v16 = *MEMORY[0x277D85DE8];

  [(CBCentralManager *)v15 stopScan];
}

- (void)healthDeviceUnregisteredHandler:(id)handler
{
  object = [handler object];
  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [BTSDevicesController healthDeviceUnregisteredHandler:];
  }

  if ([object isHealthDevice])
  {
    [object setHealthDevice:0];
    if (_os_feature_enabled_impl())
    {
      [object unpair];
    }

    else
    {
      healthKitStore = self->_healthKitStore;
      v7 = objc_alloc(MEMORY[0x277CCAD78]);
      identifier = [object identifier];
      v9 = [v7 initWithUUIDString:identifier];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __56__BTSDevicesController_healthDeviceUnregisteredHandler___block_invoke;
      v10[3] = &unk_278BB0408;
      v11 = object;
      [(HKHealthStore *)healthKitStore unregisterPeripheralIdentifier:v9 withCompletion:v10];
    }

    [(BTSDevicesController *)self _updateDevicePosition:object];
  }
}

void __56__BTSDevicesController_healthDeviceUnregisteredHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __51__BTSDevicesController_pairingAgent_peerDidUnpair___block_invoke_cold_1();
    }
  }
}

- (void)userDidTapWatchLink:(id)link
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"bridge:"];
  [defaultWorkspace openSensitiveURL:v3 withOptions:0];
}

- (void)userDidTapWalletLink:(id)link
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"wallet:"];
  [defaultWorkspace openSensitiveURL:v3 withOptions:0];
}

- (id)_heroPlacardSpecifiers
{
  v2 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_284EE3458 target:self set:0 get:0 detail:0 cell:4 edit:0];
  [v2 setObject:NSClassFromString(&cfstr_Bluetoothsetti.isa) forKeyedSubscript:*MEMORY[0x277D3FE58]];
  [v2 setIdentifier:@"BLUETOOH_PLACARD"];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:{v2, 0}];

  return v3;
}

- (id)specifiers
{
  v175 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  self->_bluetoothRestricted = [mEMORY[0x277D262A0] isBluetoothModificationAllowed] ^ 1;

  v4 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (v4)
  {
    goto LABEL_78;
  }

  v142 = *MEMORY[0x277D3FC48];
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  mEMORY[0x277CF3248]2 = [MEMORY[0x277CF3248] sharedInstance];
  self->_denylistEnabled = [mEMORY[0x277CF3248]2 denylistEnabled];

  v7 = *MEMORY[0x277D3FD20];
  userInfo = [*(&self->super.super.super.super.super.isa + v7) userInfo];
  v9 = [userInfo objectForKeyedSubscript:@"invoking-client-id"];
  invokingClientID = self->_invokingClientID;
  self->_invokingClientID = v9;

  userInfo2 = [*(&self->super.super.super.super.super.isa + v7) userInfo];
  v12 = [userInfo2 objectForKeyedSubscript:@"custom-localized-title"];
  customTitle = self->_customTitle;
  self->_customTitle = v12;

  userInfo3 = [*(&self->super.super.super.super.super.isa + v7) userInfo];
  v15 = [userInfo3 objectForKeyedSubscript:@"show-apple-devices"];
  self->_showAppleDevices = [v15 BOOLValue];

  userInfo4 = [*(&self->super.super.super.super.super.isa + v7) userInfo];
  v17 = [userInfo4 objectForKeyedSubscript:@"show-audio-devices-only"];
  self->_showAudioDevicesOnly = [v17 BOOLValue];

  userInfo5 = [*(&self->super.super.super.super.super.isa + v7) userInfo];
  v19 = [userInfo5 objectForKeyedSubscript:@"show-car-stereo-devices"];
  self->_showCarStereoDevices = [v19 BOOLValue];

  userInfo6 = [*(&self->super.super.super.super.super.isa + v7) userInfo];
  v21 = [userInfo6 objectForKeyedSubscript:@"show-speaker-devices"];
  self->_showSpeakerDevices = [v21 BOOLValue];

  userInfo7 = [*(&self->super.super.super.super.super.isa + v7) userInfo];
  v23 = [userInfo7 objectForKeyedSubscript:@"show-le-devices"];
  self->_showLEDevices = [v23 BOOLValue];

  selfCopy = self;
  v24 = self->_invokingClientID;
  v25 = sharedBluetoothSettingsLogComponent();
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
  if (v24)
  {
    if (!v26)
    {
      goto LABEL_20;
    }

    v27 = self->_invokingClientID;
    v28 = self->_customTitle;
    if (self->_showAppleDevices)
    {
      v29 = "yes";
    }

    else
    {
      v29 = "no";
    }

    showCarStereoDevices = self->_showCarStereoDevices;
    showSpeakerDevices = self->_showSpeakerDevices;
    if (self->_showAudioDevicesOnly)
    {
      v32 = "yes";
    }

    else
    {
      v32 = "no";
    }

    *buf = 138413570;
    if (showCarStereoDevices)
    {
      v33 = "yes";
    }

    else
    {
      v33 = "no";
    }

    v164 = v27;
    v165 = 2112;
    if (showSpeakerDevices)
    {
      v34 = "yes";
    }

    else
    {
      v34 = "no";
    }

    v166 = v28;
    v167 = 2080;
    v168 = v29;
    v169 = 2080;
    v170 = v32;
    v171 = 2080;
    v172 = v33;
    v173 = 2080;
    v174 = v34;
    v35 = "BTSettings invoked from a client that is not the main Settings, ID: %@, customTitle: %@, showAppleDevices: %s, showAudioOnly: %s, showCarStereos: %s showSpeakers: %s";
    v36 = v25;
    v37 = 62;
  }

  else
  {
    if (!v26)
    {
      goto LABEL_20;
    }

    *buf = 0;
    v35 = "BTSettings invoked from main settings page";
    v36 = v25;
    v37 = 2;
  }

  _os_log_impl(&dword_23C0F7000, v36, OS_LOG_TYPE_DEFAULT, v35, buf, v37);
LABEL_20:

  v38 = 0x277CBE000uLL;
  v39 = MEMORY[0x277CBEB18];
  selfCopy3 = self;
  v41 = [(BTSDevicesController *)self loadSpecifiersFromPlistName:@"Devices" target:self];
  v42 = [v39 arrayWithArray:v41];

  array = [MEMORY[0x277CBEB18] array];
  if ([(BTSDevicesController *)self isMainSettingsPane]|| !self->_power)
  {
    v43 = [v42 objectAtIndexedSubscript:0];
    [array addObject:v43];

    _heroPlacardSpecifiers = [(BTSDevicesController *)self _heroPlacardSpecifiers];
    [array addObjectsFromArray:_heroPlacardSpecifiers];

    v45 = [v42 objectAtIndexedSubscript:1];
    [array addObject:v45];
  }

  v46 = [v42 objectAtIndexedSubscript:3];
  myDevicesGroupSpec = self->_myDevicesGroupSpec;
  self->_myDevicesGroupSpec = v46;

  v48 = v142;
  if ([(NSMutableDictionary *)self->_pendingOtherRadioDevicesDict count])
  {
    v49 = self->_myDevicesGroupSpec;
    v50 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v51 = [v50 localizedStringForKey:@"FOLLOW_PAIR_INSTRUCTION_FOOTER" value:&stru_284EE3458 table:@"Devices"];
    [(PSSpecifier *)v49 setProperty:v51 forKey:*MEMORY[0x277D3FF88]];
  }

  if (self->_bluetoothRestricted)
  {
    if (self->_power)
    {
      _knownDevicesSpecifiers = [(BTSDevicesController *)self _knownDevicesSpecifiers];
      if ([_knownDevicesSpecifiers count])
      {
        [array addObject:self->_myDevicesGroupSpec];
        [array addObjectsFromArray:_knownDevicesSpecifiers];
      }
    }

    mEMORY[0x277D262A0]2 = [MEMORY[0x277D262A0] sharedConnection];
    v162 = *MEMORY[0x277D25DA0];
    v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v162 count:1];
    v55 = [mEMORY[0x277D262A0]2 localizedRestrictionSourceDescriptionForFeatures:v54];
    restrictionDetail = self->_restrictionDetail;
    self->_restrictionDetail = v55;

    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    obj = array;
    v57 = [obj countByEnumeratingWithState:&v155 objects:v161 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = v42;
      v60 = *v156;
      v61 = *MEMORY[0x277D3FF38];
      do
      {
        for (i = 0; i != v58; ++i)
        {
          if (*v156 != v60)
          {
            objc_enumerationMutation(obj);
          }

          v63 = *(*(&v155 + 1) + 8 * i);
          v64 = [MEMORY[0x277CCABB0] numberWithBool:0];
          [v63 setProperty:v64 forKey:v61];
        }

        v58 = [obj countByEnumeratingWithState:&v155 objects:v161 count:16];
      }

      while (v58);
      v42 = v59;
    }
  }

  else
  {
    if (self->_denylistEnabled && self->_power)
    {
      v65 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"DENYLIST_ACTION_GROUP_ID"];
      v66 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      [v66 localizedStringForKey:@"DENYLIST_FOOTER" value:&stru_284EE3458 table:@"Devices"];
      v68 = v67 = v42;
      [v65 setProperty:v68 forKey:*MEMORY[0x277D3FF88]];

      [array addObject:v65];
      v69 = MEMORY[0x277D3FAD8];
      v70 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v38 = 0x277CBE000;
      v71 = [v70 localizedStringForKey:@"ALLOW_NEW_CONNECTIONS" value:&stru_284EE3458 table:@"Devices"];
      v72 = [v69 preferenceSpecifierNamed:v71 target:self set:0 get:0 detail:0 cell:13 edit:0];

      v42 = v67;
      [v72 setIdentifier:@"DENYLIST_ACTION_ID"];
      [array addObject:v72];
    }

    v73 = [v42 objectAtIndexedSubscript:4];
    otherDevicesGroupSpec = self->_otherDevicesGroupSpec;
    self->_otherDevicesGroupSpec = v73;

    if (MGGetBoolAnswer())
    {
      mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
      isPaired = [mEMORY[0x277D2BCF8] isPaired];

      if ((isPaired & 1) == 0)
      {
        v77 = MEMORY[0x277CCACA8];
        [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v78 = v140 = v42;
        v79 = [v78 localizedStringForKey:@"APPLE_WATCH_FOOTER_TEXT" value:&stru_284EE3458 table:@"Devices"];
        v80 = v38;
        v81 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v82 = [v81 localizedStringForKey:@"APPLE_WATCH_APP_LINK" value:&stru_284EE3458 table:@"Devices"];
        v83 = [v77 stringWithFormat:v79, v82];

        v48 = v142;
        selfCopy3 = self;

        v84 = self->_otherDevicesGroupSpec;
        v85 = objc_opt_class();
        v86 = NSStringFromClass(v85);
        [(PSSpecifier *)v84 setProperty:v86 forKey:*MEMORY[0x277D3FF48]];

        [(PSSpecifier *)self->_otherDevicesGroupSpec setProperty:v83 forKey:*MEMORY[0x277D3FF70]];
        v87 = self->_otherDevicesGroupSpec;
        v88 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v89 = [v88 localizedStringForKey:@"APPLE_WATCH_APP_LINK" value:&stru_284EE3458 table:@"Devices"];
        v177.location = [v83 rangeOfString:v89];
        v90 = NSStringFromRange(v177);
        v91 = v87;
        v38 = v80;
        [(PSSpecifier *)v91 setProperty:v90 forKey:*MEMORY[0x277D3FF58]];

        v42 = v140;
        v92 = self->_otherDevicesGroupSpec;
        v93 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
        [(PSSpecifier *)v92 setProperty:v93 forKey:*MEMORY[0x277D3FF68]];

        [(PSSpecifier *)self->_otherDevicesGroupSpec setProperty:@"userDidTapWatchLink:" forKey:*MEMORY[0x277D3FF50]];
      }
    }

    if (selfCopy3->_power)
    {
      obj = [(BTSDevicesController *)selfCopy3 _shareDevicesSpecifiers];
      v141 = v42;
      if ([obj count])
      {
        v94 = [v42 objectAtIndexedSubscript:2];
        sharingDevicesGroupSpec = selfCopy3->_sharingDevicesGroupSpec;
        selfCopy3->_sharingDevicesGroupSpec = v94;

        v96 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v97 = [v96 localizedStringForKey:@"SHARING_WITH" value:&stru_284EE3458 table:@"Devices"];
        [(PSSpecifier *)selfCopy3->_sharingDevicesGroupSpec setName:v97];

        v153 = 0u;
        v154 = 0u;
        v151 = 0u;
        v152 = 0u;
        v143 = obj;
        v98 = [v143 countByEnumeratingWithState:&v151 objects:v160 count:16];
        if (v98)
        {
          v99 = v98;
          v100 = *v152;
          v101 = *MEMORY[0x277D3FF88];
          do
          {
            for (j = 0; j != v99; ++j)
            {
              if (*v152 != v100)
              {
                objc_enumerationMutation(v143);
              }

              v103 = *(*(&v151 + 1) + 8 * j);
              v104 = selfCopy->_sharingDevicesGroupSpec;
              v105 = MEMORY[0x277CCACA8];
              v106 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v107 = [v106 localizedStringForKey:@"SHARING_NOW" value:&stru_284EE3458 table:@"Devices"];
              name = [v103 name];
              v108 = [v105 stringWithFormat:v107, name];
              [(PSSpecifier *)v104 setProperty:v108 forKey:v101];
            }

            v99 = [v143 countByEnumeratingWithState:&v151 objects:v160 count:16];
          }

          while (v99);
        }

        selfCopy3 = selfCopy;
        [array addObject:selfCopy->_sharingDevicesGroupSpec];
        [array addObjectsFromArray:v143];
        v48 = v142;
        v38 = 0x277CBE000uLL;
      }

      _knownDevicesSpecifiers2 = [(BTSDevicesController *)selfCopy3 _knownDevicesSpecifiers];
      if ([_knownDevicesSpecifiers2 count])
      {
        [array addObject:selfCopy3->_myDevicesGroupSpec];
        [array addObjectsFromArray:_knownDevicesSpecifiers2];
        v111 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v112 = [v111 localizedStringForKey:@"OTHER_DEVICES" value:&stru_284EE3458 table:@"Devices"];
        [(PSSpecifier *)selfCopy3->_otherDevicesGroupSpec setName:v112];

        v113 = *(v38 + 2840);
        mEMORY[0x277CF3248]3 = [MEMORY[0x277CF3248] sharedInstance];
        connectingDevices = [mEMORY[0x277CF3248]3 connectingDevices];
        v116 = [v113 arrayWithArray:connectingDevices];

        v117 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(v117, OS_LOG_TYPE_INFO))
        {
          v118 = [v116 count];
          *buf = 136315650;
          v164 = "[BTSDevicesController specifiers]";
          v165 = 2048;
          v166 = v118;
          v167 = 2112;
          v168 = v116;
          _os_log_impl(&dword_23C0F7000, v117, OS_LOG_TYPE_INFO, "%s found %lu connecting devices - %@", buf, 0x20u);
        }

        v149 = 0u;
        v150 = 0u;
        v147 = 0u;
        v148 = 0u;
        v119 = v116;
        v120 = [v119 countByEnumeratingWithState:&v147 objects:v159 count:16];
        if (v120)
        {
          v121 = v120;
          v122 = *v148;
          do
          {
            for (k = 0; k != v121; ++k)
            {
              if (*v148 != v122)
              {
                objc_enumerationMutation(v119);
              }

              address = [*(*(&v147 + 1) + 8 * k) address];
              v125 = [array specifierForID:address];

              if (v125)
              {
                [(BTSDevicesController *)selfCopy3 setBluetoothIsBusy:1];
                objc_storeStrong(&selfCopy3->_currentDeviceSpecifier, v125);
              }
            }

            v121 = [v119 countByEnumeratingWithState:&v147 objects:v159 count:16];
          }

          while (v121);
        }

        v42 = v141;
      }

      [array addObject:selfCopy3->_otherDevicesGroupSpec];
    }

    else
    {
      powerOffWarningString = [(BTSDevicesController *)selfCopy3 powerOffWarningString];
      _knownDevicesSpecifiers2 = [array objectAtIndexedSubscript:0];
      obj = powerOffWarningString;
      [_knownDevicesSpecifiers2 setProperty:powerOffWarningString forKey:*MEMORY[0x277D3FF88]];
    }
  }

  objc_storeStrong((&selfCopy3->super.super.super.super.super.isa + v48), array);
  if (selfCopy3->_pendingSetupDeviceID)
  {
    mEMORY[0x277CF3248]4 = [MEMORY[0x277CF3248] sharedInstance];
    v128 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:selfCopy3->_pendingSetupDeviceID];
    v129 = [mEMORY[0x277CF3248]4 deviceFromIdentifier:v128];

    address2 = [v129 address];
    v131 = [(NSMutableDictionary *)selfCopy3->_devicesDict objectForKeyedSubscript:address2];

    if (v131)
    {
      v132 = [(NSMutableDictionary *)selfCopy3->_devicesDict objectForKeyedSubscript:address2];
      ctkdCounterpartDevicesDict = selfCopy3->_ctkdCounterpartDevicesDict;
      identifier = [v132 identifier];
      v135 = [(NSMutableDictionary *)ctkdCounterpartDevicesDict objectForKeyedSubscript:identifier];

      if (v135)
      {
        underlyingDADevice = [v135 underlyingDADevice];

        if (underlyingDADevice)
        {
          [(BTSDevicesController *)selfCopy3 forcePushDetailViewForDevice:v132];
          pendingSetupDeviceID = selfCopy3->_pendingSetupDeviceID;
          selfCopy3->_pendingSetupDeviceID = 0;
        }
      }
    }
  }

  v4 = *(&selfCopy3->super.super.super.super.super.isa + v48);
LABEL_78:
  v138 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)powerOffWarningString
{
  if ([(BTSDevicesController *)self isMainSettingsPane])
  {
    self->_exposureNotificationManagerEnabled = [(ENManager *)self->_exposureNotificationManager exposureNotificationEnabled];
    autoUnlockEnabled = [MEMORY[0x277D54C20] autoUnlockEnabled];
    v4 = MGGetBoolAnswer();
    exposureNotificationManagerEnabled = self->_exposureNotificationManagerEnabled;
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = v6;
    if (v4)
    {
      if (exposureNotificationManagerEnabled)
      {
        if (autoUnlockEnabled)
        {
          v8 = @"POWER_OFF_WARNING_WITH_EN_PAU_THR";
        }

        else
        {
          v8 = @"POWER_OFF_WARNING_WITH_EN_THR";
        }
      }

      else if (autoUnlockEnabled)
      {
        v8 = @"POWER_OFF_WARNING_WITH_PAU_THR";
      }

      else
      {
        v8 = @"POWER_OFF_WARNING_THR";
      }
    }

    else if (exposureNotificationManagerEnabled)
    {
      if (autoUnlockEnabled)
      {
        v8 = @"POWER_OFF_WARNING_WITH_EN_PAU";
      }

      else
      {
        v8 = @"POWER_OFF_WARNING_WITH_EN";
      }
    }

    else if (autoUnlockEnabled)
    {
      v8 = @"POWER_OFF_WARNING_WITH_PAU";
    }

    else
    {
      v8 = @"POWER_OFF_WARNING";
    }
  }

  else
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = v6;
    v8 = @"POWER_OFF_WARNING_IN_AX";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_284EE3458 table:@"Devices"];

  return v9;
}

- (id)namesOfDevices:(id)devices displayableOnly:(BOOL)only
{
  onlyCopy = only;
  v28 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v7 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v22 = devicesCopy;
  allObjects = [devicesCopy allObjects];
  v9 = [allObjects countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    v12 = !onlyCopy;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(allObjects);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        name = [v14 name];
        if (name)
        {
          v16 = name;
          v17 = [(BTSDevicesController *)self shouldDisplayDevice:v14]| v12;

          if (v17 == 1)
          {
            name2 = [v14 name];
            [v7 addObject:name2];
          }
        }
      }

      v10 = [allObjects countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  v19 = [v7 copy];
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)localizedList:(id)list
{
  v23 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v4 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = listCopy;
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = MEMORY[0x277CCACA8];
        v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v12 = [v11 localizedStringForKey:@"QUOTED_DEVICE_NAME" value:&stru_284EE3458 table:@"Devices"];
        v13 = [v10 localizedStringWithFormat:v12, v9];

        [v4 addObject:v13];
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v14 = [MEMORY[0x277CCAAF0] localizedStringByJoiningStrings:v4];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)makeWarningAttributedString:(id)string
{
  string = [MEMORY[0x277CCACA8] stringWithFormat:@"\n\n %@", string];
  v4 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:string];
  v5 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle.fill"];
  v6 = [v5 imageWithRenderingMode:1];

  v7 = [MEMORY[0x277D74270] textAttachmentWithImage:v6];
  v8 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v7];
  [v4 insertAttributedString:v8 atIndex:2];

  return v4;
}

- (id)_specifierForDevice:(id)device
{
  v41 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v40 = deviceCopy;
    _os_log_impl(&dword_23C0F7000, v5, OS_LOG_TYPE_DEFAULT, "Creating specifier for device: %@.", buf, 0xCu);
  }

  productName = [deviceCopy productName];
  if ([(BTSDevicesController *)self nicknameEnabled])
  {
    name = [deviceCopy name];

    productName = name;
  }

  classicDevice = [deviceCopy classicDevice];
  if (classicDevice)
  {
    v9 = classicDevice;
    classicDevice2 = [deviceCopy classicDevice];
    magicPaired = [classicDevice2 magicPaired];

    if (magicPaired)
    {
      name2 = [deviceCopy name];

      productName = name2;
    }
  }

  if (!productName || [(__CFString *)productName isEqualToString:&stru_284EE3458])
  {

    productName = @" ";
  }

  v13 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:productName target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
  v14 = objc_alloc(MEMORY[0x277CBEB38]);
  v37[0] = *MEMORY[0x277D3FE58];
  v15 = objc_opt_class();
  v16 = *MEMORY[0x277D3FF08];
  v38[0] = v15;
  v38[1] = @"BTSPairSetup";
  v17 = *MEMORY[0x277D400B8];
  v37[1] = v16;
  v37[2] = v17;
  v37[3] = *MEMORY[0x277D40138];
  v38[2] = @"BTSPairController";
  v38[3] = @"PSLinkCell";
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:4];
  v19 = [v14 initWithDictionary:v18];

  [v13 setName:productName];
  [v19 setObject:productName forKey:*MEMORY[0x277D40170]];
  identifier = [deviceCopy identifier];
  [v19 setObject:identifier forKey:*MEMORY[0x277D3FFB8]];

  [v19 setObject:@"BTSDeviceConfigController" forKey:v16];
  [v13 setProperties:v19];
  v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v21 setObject:deviceCopy forKey:@"bt-device"];
  if ([deviceCopy isCTKDDevice])
  {
    centralManager = self->_centralManager;
    classicDevice3 = [deviceCopy classicDevice];
    address = [classicDevice3 address];
    identifier4 = [(CBCentralManager *)centralManager retrievePeripheralWithAddress:address];

    v26 = [BTSDeviceLE deviceWithPeripheral:identifier4 manager:self->_centralManager];
    if ([v26 isManagedByDeviceAccess])
    {
      knownDADevices = self->_knownDADevices;
      identifier2 = [identifier4 identifier];
      v29 = [(NSMutableDictionary *)knownDADevices objectForKeyedSubscript:identifier2];
      [v26 setUnderlyingDADevice:v29];
    }

    v30 = @"ctkd-device";
  }

  else
  {
    dualRadioCounterpartDevicesDict = self->_dualRadioCounterpartDevicesDict;
    identifier3 = [deviceCopy identifier];
    v33 = [(NSMutableDictionary *)dualRadioCounterpartDevicesDict objectForKeyedSubscript:identifier3];

    if (!v33)
    {
      goto LABEL_18;
    }

    v34 = self->_dualRadioCounterpartDevicesDict;
    identifier4 = [deviceCopy identifier];
    v26 = [(NSMutableDictionary *)v34 objectForKeyedSubscript:identifier4];
    v30 = @"linked-le-device";
  }

  [v21 setObject:v26 forKey:v30];

LABEL_18:
  [v13 setUserInfo:v21];

  v35 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_specifierForSharingDevice:(id)device
{
  deviceCopy = device;
  name = [deviceCopy name];
  v6 = name;
  if (!name || [(__CFString *)name isEqualToString:&stru_284EE3458])
  {

    v6 = @" ";
  }

  v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  [v7 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [v7 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
  [v7 setName:v6];
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v8 setObject:deviceCopy forKey:@"bt-device"];

  [v7 setUserInfo:v8];

  return v7;
}

- (id)_knownDevicesSpecifiers
{
  v160 = *MEMORY[0x277D85DE8];
  v110 = [MEMORY[0x277CBEB58] set];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  pairedDevices = [mEMORY[0x277CF3248] pairedDevices];

  v5 = pairedDevices;
  v6 = [pairedDevices countByEnumeratingWithState:&v144 objects:v159 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v145;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v145 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v144 + 1) + 8 * i);
        v11 = [BTSDeviceClassic deviceWithDevice:v10];
        classicDevice = [v11 classicDevice];
        address = [classicDevice address];

        v14 = [(NSMutableDictionary *)self->managedByWalletDictionary objectForKey:address];

        if (v14)
        {
          [v11 setManagedByWallet:1];
          [v11 setManagedByAliroWallet:1];
        }

        v15 = [(NSMutableDictionary *)self->supportsBackgroundNIDictionary objectForKey:address];

        if (v15)
        {
          [v11 setSupportsBackgroundNI:1];
        }

        if (([v10 isTemporaryPaired] & 1) == 0)
        {
          [v110 addObject:v11];
          [dictionary setObject:v11 forKeyedSubscript:address];
          if ([v11 connected])
          {
            if ([v11 isLimitedConnectivityDevice])
            {
              [(NSMutableSet *)self->_connectedPoorBehaviorDevices addObject:v11];
              self->_mainFooterNeedsUpdate = 1;
            }

            if ([v11 isHIDDevice])
            {
              [(NSMutableSet *)self->_connectedHIDDevices addObject:v11];
              self->_mainFooterNeedsUpdate = 1;
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v144 objects:v159 count:16];
    }

    while (v7);
  }

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  v107 = dictionary2;
  if (self->_power)
  {
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    sharedPairingAgent = [(CBCentralManager *)self->_centralManager sharedPairingAgent];
    retrievePairedPeers = [sharedPairingAgent retrievePairedPeers];

    v19 = [retrievePairedPeers countByEnumeratingWithState:&v140 objects:v158 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v141;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v141 != v21)
          {
            objc_enumerationMutation(retrievePairedPeers);
          }

          v23 = *(*(&v140 + 1) + 8 * j);
          v24 = [(BTSDevicesController *)self _getDeviceForPeripheral:v23];
          if (v24)
          {
            [v23 setDelegate:self];
            if ([v24 isManagedByDeviceAccess])
            {
              v25 = sharedBluetoothSettingsLogComponent();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v157 = v24;
                _os_log_impl(&dword_23C0F7000, v25, OS_LOG_TYPE_DEFAULT, "This device needs to be coalesced with a DADevice before being displayed: %@", buf, 0xCu);
              }

              identifier = [v23 identifier];
              [v107 setObject:v23 forKeyedSubscript:identifier];
            }

            else
            {
              [v110 addObject:v24];
              if ([v24 connected])
              {
                if ([v24 isLimitedConnectivityDevice])
                {
                  [(NSMutableSet *)self->_connectedPoorBehaviorDevices addObject:v24];
                  self->_mainFooterNeedsUpdate = 1;
                }

                if ([v24 isFirmwareUpdateRequiredDevice])
                {
                  [(NSMutableSet *)self->_connectedFirmwareUpdateRequiredDevices addObject:v24];
                  self->_mainFooterNeedsUpdate = 1;
                }

                if ([v24 isHIDDevice])
                {
                  [(NSMutableSet *)self->_connectedHIDDevices addObject:v24];
                  self->_mainFooterNeedsUpdate = 1;
                }
              }
            }
          }
        }

        v20 = [retrievePairedPeers countByEnumeratingWithState:&v140 objects:v158 count:16];
      }

      while (v20);
    }

    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v27 = [(CBCentralManager *)self->_centralManager retrieveConnectedPeripheralsWithServices:0 allowAll:1];
    v28 = [v27 countByEnumeratingWithState:&v136 objects:v155 count:16];
    dictionary2 = v107;
    if (v28)
    {
      v29 = v28;
      v30 = *v137;
      do
      {
        for (k = 0; k != v29; ++k)
        {
          if (*v137 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v136 + 1) + 8 * k);
          if ([v32 connectedTransport] == 2)
          {
            v33 = [(BTSDevicesController *)self _getDeviceForPeripheral:v32];
            if (v33)
            {
              if ([v32 visibleInSettings])
              {
                [v32 setDelegate:self];
                if ([v33 isManagedByDeviceAccess])
                {
                  v34 = sharedBluetoothSettingsLogComponent();
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v157 = v33;
                    _os_log_impl(&dword_23C0F7000, v34, OS_LOG_TYPE_DEFAULT, "This device needs to be coalesced with a DADevice before being displayed: %@", buf, 0xCu);
                  }

                  identifier2 = [v32 identifier];
                  [v107 setObject:v32 forKeyedSubscript:identifier2];
                  goto LABEL_52;
                }

                [v110 addObject:v33];
              }

              else
              {
                identifier2 = sharedBluetoothSettingsLogComponent();
                if (os_log_type_enabled(identifier2, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v157 = v32;
                  _os_log_impl(&dword_23C0F7000, identifier2, OS_LOG_TYPE_DEFAULT, "Peripheral %@ should not be visible in Settings. Ignoring.", buf, 0xCu);
                }

LABEL_52:
              }
            }

            dictionary2 = v107;
            continue;
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v136 objects:v155 count:16];
      }

      while (v29);
    }

    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    obj = [(NSMutableDictionary *)self->_knownDADevices allKeys];
    v104 = [obj countByEnumeratingWithState:&v132 objects:v154 count:16];
    if (!v104)
    {
      goto LABEL_92;
    }

    v103 = *v133;
LABEL_59:
    v36 = 0;
    while (1)
    {
      if (*v133 != v103)
      {
        objc_enumerationMutation(obj);
      }

      v105 = v36;
      v37 = *(*(&v132 + 1) + 8 * v36);
      v109 = [(NSMutableDictionary *)self->_knownDADevices objectForKey:v37];
      centralManager = self->_centralManager;
      v153 = v37;
      v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v153 count:1];
      v40 = [(CBCentralManager *)centralManager retrievePeripheralsWithIdentifiers:v39];

      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      v41 = v40;
      v42 = [v41 countByEnumeratingWithState:&v128 objects:v152 count:16];
      if (v42)
      {
        break;
      }

LABEL_90:

      v36 = v105 + 1;
      if (v105 + 1 == v104)
      {
        v104 = [obj countByEnumeratingWithState:&v132 objects:v154 count:16];
        if (!v104)
        {
LABEL_92:

          goto LABEL_93;
        }

        goto LABEL_59;
      }
    }

    v43 = v42;
    v44 = *v129;
LABEL_64:
    v45 = 0;
    while (1)
    {
      if (*v129 != v44)
      {
        objc_enumerationMutation(v41);
      }

      v46 = *(*(&v128 + 1) + 8 * v45);
      [v46 setDelegate:self];
      identifier3 = [v46 identifier];
      [dictionary2 setObject:0 forKeyedSubscript:identifier3];

      v48 = [BTSDeviceLE deviceWithPeripheral:v46 manager:self->_centralManager];
      v49 = v48;
      if (v48)
      {
        if ([v48 supportsCTKD])
        {
          identifier4 = sharedBluetoothSettingsLogComponent();
          if (os_log_type_enabled(identifier4, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v157 = v46;
            v51 = identifier4;
            v52 = "Not showing peripheral because it's CTKD and will be shown with the classic device instead: %@";
LABEL_73:
            _os_log_impl(&dword_23C0F7000, v51, OS_LOG_TYPE_DEFAULT, v52, buf, 0xCu);
          }
        }

        else
        {
          relatedFutureRadioAddress = [v49 relatedFutureRadioAddress];

          if (relatedFutureRadioAddress)
          {
            v54 = sharedBluetoothSettingsLogComponent();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v157 = v46;
              _os_log_impl(&dword_23C0F7000, v54, OS_LOG_TYPE_DEFAULT, "Peripheral is waiting to link to a classic radio that is yet to be paired, showing LE first: %@", buf, 0xCu);
            }

            [v49 setUnderlyingDADevice:v109];
            [v110 addObject:v49];
            pendingOtherRadioDevicesDict = self->_pendingOtherRadioDevicesDict;
            relatedFutureRadioAddress2 = [v49 relatedFutureRadioAddress];
            [(NSMutableDictionary *)pendingOtherRadioDevicesDict setObject:v49 forKey:relatedFutureRadioAddress2];

            goto LABEL_88;
          }

          linkedRadioAddress = [v49 linkedRadioAddress];

          if (!linkedRadioAddress)
          {
            goto LABEL_87;
          }

          v58 = self->_pendingOtherRadioDevicesDict;
          linkedRadioAddress2 = [v49 linkedRadioAddress];
          [(NSMutableDictionary *)v58 setObject:0 forKeyedSubscript:linkedRadioAddress2];

          linkedRadioAddress3 = [v49 linkedRadioAddress];
          v61 = [dictionary objectForKeyedSubscript:linkedRadioAddress3];

          v62 = sharedBluetoothSettingsLogComponent();
          v63 = v62;
          if (!v61)
          {
            dictionary2 = v107;
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v157 = v46;
              _os_log_error_impl(&dword_23C0F7000, v63, OS_LOG_TYPE_ERROR, "Peripheral has linked classic radio but we don't see the classic device with this address. Showing LE device %@", buf, 0xCu);
            }

LABEL_87:
            [v49 setUnderlyingDADevice:v109];
            [v110 addObject:v49];
            goto LABEL_88;
          }

          dictionary2 = v107;
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v157 = v46;
            _os_log_impl(&dword_23C0F7000, v63, OS_LOG_TYPE_DEFAULT, "Not showing peripheral because it's linked to another classic radio and will be shown with the classic device instead: %@", buf, 0xCu);
          }

          identifier4 = [v46 identifier];
          [dictionary3 setObject:v46 forKeyedSubscript:identifier4];
        }
      }

      else
      {
        identifier4 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(identifier4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v157 = v46;
          v51 = identifier4;
          v52 = "unable to create BTSDeviceLE for this DA peripheral: %@";
          goto LABEL_73;
        }
      }

LABEL_88:
      if (v43 == ++v45)
      {
        v43 = [v41 countByEnumeratingWithState:&v128 objects:v152 count:16];
        if (!v43)
        {
          goto LABEL_90;
        }

        goto LABEL_64;
      }
    }
  }

LABEL_93:
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  allValues = [dictionary2 allValues];
  v65 = [allValues countByEnumeratingWithState:&v124 objects:v151 count:16];
  if (v65)
  {
    v66 = v65;
    v67 = *v125;
    do
    {
      for (m = 0; m != v66; ++m)
      {
        if (*v125 != v67)
        {
          objc_enumerationMutation(allValues);
        }

        v69 = *(*(&v124 + 1) + 8 * m);
        v70 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v157 = v69;
          _os_log_impl(&dword_23C0F7000, v70, OS_LOG_TYPE_DEFAULT, "Unable to fetch DADevice for DA tagged Peripheral, we should still add it to UI for user to be able to manage: %@", buf, 0xCu);
        }

        v71 = [(BTSDevicesController *)self _getDeviceForPeripheral:v69];
        if (v71)
        {
          if ([v69 visibleInSettings])
          {
            [v69 setDelegate:self];
            [v110 addObject:v71];
          }

          else
          {
            v72 = sharedBluetoothSettingsLogComponent();
            if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v157 = v69;
              _os_log_impl(&dword_23C0F7000, v72, OS_LOG_TYPE_DEFAULT, "Peripheral %@ should not be visible in Settings. Ignoring.", buf, 0xCu);
            }
          }
        }
      }

      v66 = [allValues countByEnumeratingWithState:&v124 objects:v151 count:16];
    }

    while (v66);
  }

  [v110 unionSet:self->_knownHealthDevices];
  array = [MEMORY[0x277CBEB18] array];
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v74 = v110;
  v75 = [v74 countByEnumeratingWithState:&v120 objects:v150 count:16];
  if (v75)
  {
    v76 = v75;
    v77 = *v121;
    do
    {
      for (n = 0; n != v76; ++n)
      {
        if (*v121 != v77)
        {
          objc_enumerationMutation(v74);
        }

        v79 = *(*(&v120 + 1) + 8 * n);
        devicesDict = self->_devicesDict;
        identifier5 = [v79 identifier];
        [(NSMutableDictionary *)devicesDict setObject:v79 forKey:identifier5];
      }

      v76 = [v74 countByEnumeratingWithState:&v120 objects:v150 count:16];
    }

    while (v76);
  }

  [(BTSDevicesController *)self refreshCTKDDevices];
  v82 = dictionary3;
  if ([dictionary3 count])
  {
    v111 = array;
    v83 = [(BTSDevicesController *)self mergeDualRadioDevices:dictionary3];
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v84 = [v83 countByEnumeratingWithState:&v116 objects:v149 count:16];
    if (v84)
    {
      v85 = v84;
      v86 = *v117;
      do
      {
        for (ii = 0; ii != v85; ++ii)
        {
          if (*v117 != v86)
          {
            objc_enumerationMutation(v83);
          }

          v88 = *(*(&v116 + 1) + 8 * ii);
          [v74 addObject:v88];
          v89 = self->_devicesDict;
          identifier6 = [v88 identifier];
          [(NSMutableDictionary *)v89 setObject:v88 forKey:identifier6];
        }

        v85 = [v83 countByEnumeratingWithState:&v116 objects:v149 count:16];
      }

      while (v85);
    }

    v82 = dictionary3;
    array = v111;
  }

  else
  {
    [(NSMutableDictionary *)self->_dualRadioCounterpartDevicesDict removeAllObjects];
  }

  allObjects = [v74 allObjects];
  v92 = [allObjects sortedArrayUsingComparator:&__block_literal_global];

  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v93 = v92;
  v94 = [v93 countByEnumeratingWithState:&v112 objects:v148 count:16];
  if (v94)
  {
    v95 = v94;
    v96 = *v113;
    do
    {
      for (jj = 0; jj != v95; ++jj)
      {
        if (*v113 != v96)
        {
          objc_enumerationMutation(v93);
        }

        v98 = *(*(&v112 + 1) + 8 * jj);
        if ([(BTSDevicesController *)self shouldDisplayDevice:v98])
        {
          v99 = [(BTSDevicesController *)self _specifierForDevice:v98];
          [array addObject:v99];
        }
      }

      v95 = [v93 countByEnumeratingWithState:&v112 objects:v148 count:16];
    }

    while (v95);
  }

  v100 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)_shareDevicesSpecifiers
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  connectedDevices = [mEMORY[0x277CF3248] connectedDevices];

  v6 = [connectedDevices countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(connectedDevices);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        if ([v10 isTemporaryPaired])
        {
          v11 = [BTSDeviceClassic deviceWithDevice:v10];
          [v3 addObject:v11];
        }
      }

      v7 = [connectedDevices countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v7);
  }

  v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"name" ascending:1];
  v37 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
  v27 = v3;
  v14 = [v3 sortedArrayUsingDescriptors:v13];

  array = [MEMORY[0x277CBEB18] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v29;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v28 + 1) + 8 * j);
        if ([(BTSDevicesController *)self shouldDisplayDevice:v21])
        {
          v22 = [(BTSDevicesController *)self _specifierForSharingDevice:v21];
          [array addObject:v22];

          sharingDevicesDict = self->_sharingDevicesDict;
          identifier = [v21 identifier];
          [(NSMutableDictionary *)sharingDevicesDict setObject:v21 forKey:identifier];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v18);
  }

  v25 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)_retrievedRegisteredHealthDevices:(id)devices
{
  v10 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__BTSDevicesController__retrievedRegisteredHealthDevices___block_invoke;
  v7[3] = &unk_278BB0478;
  v7[4] = self;
  [devicesCopy enumerateObjectsUsingBlock:v7];
  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = devicesCopy;
    _os_log_impl(&dword_23C0F7000, v5, OS_LOG_TYPE_DEFAULT, "Received registered health devices %@", buf, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __58__BTSDevicesController__retrievedRegisteredHealthDevices___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1712);
  v3 = [a2 identifier];
  [v2 addObject:v3];
}

- (void)_updateHealthDevices
{
  v27[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  knownHealthDevices = self->_knownHealthDevices;
  self->_knownHealthDevices = v3;

  if (_os_feature_enabled_impl())
  {
    centralManager = self->_centralManager;
    v27[0] = @"Fitness";
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __44__BTSDevicesController__updateHealthDevices__block_invoke;
    v23[3] = &unk_278BB0340;
    v23[4] = self;
    [(CBCentralManager *)centralManager retrievePeripheralsWithCustomProperties:v6 completion:v23];
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [(CBCentralManager *)self->_centralManager retrievePeripheralsWithIdentifiers:self->_retrievedHealthServices];
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        v11 = 0;
        do
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [(BTSDevicesController *)self _getDeviceForPeripheral:*(*(&v19 + 1) + 8 * v11)];
          v13 = v12;
          if (v12)
          {
            [v12 setHealthDevice:1];
            [(NSMutableSet *)self->_knownHealthDevices addObject:v13];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v19 objects:v26 count:16];
      }

      while (v9);
    }

    v14 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = self->_knownHealthDevices;
      *buf = 138412290;
      v25 = v15;
      _os_log_impl(&dword_23C0F7000, v14, OS_LOG_TYPE_INFO, "Found known health devices %@", buf, 0xCu);
    }

    if (*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]))
    {
      v16 = self->_knownHealthDevices;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __44__BTSDevicesController__updateHealthDevices__block_invoke_556;
      v18[3] = &unk_278BB04A0;
      v18[4] = self;
      [(NSMutableSet *)v16 enumerateObjectsUsingBlock:v18];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __44__BTSDevicesController__updateHealthDevices__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __44__BTSDevicesController__updateHealthDevices__block_invoke_cold_1(v6);
    }
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          if (([v12 hasTag:@"FitnessClassic"] & 1) == 0)
          {
            v13 = [*(a1 + 32) _getDeviceForPeripheral:v12];
            v14 = v13;
            if (v13)
            {
              [v13 setHealthDevice:1];
              [*(*(a1 + 32) + 1704) addObject:v14];
            }
          }
        }

        v9 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v9);
    }

    v15 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = *(*(a1 + 32) + 1704);
      *buf = 138412290;
      v24 = v16;
      _os_log_impl(&dword_23C0F7000, v15, OS_LOG_TYPE_INFO, "Found known health devices %@", buf, 0xCu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__BTSDevicesController__updateHealthDevices__block_invoke_554;
    block[3] = &unk_278BB03E0;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __44__BTSDevicesController__updateHealthDevices__block_invoke_554(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + *MEMORY[0x277D3FC48]))
  {
    v3 = v2[213];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __44__BTSDevicesController__updateHealthDevices__block_invoke_2;
    v5[3] = &unk_278BB04A0;
    v5[4] = v2;
    [v3 enumerateObjectsUsingBlock:v5];
    v2 = *(a1 + 32);
  }

  return [v2 migrateHKPairedHealthDevices];
}

void __44__BTSDevicesController__updateHealthDevices__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 1520);
  v7 = v3;
  v5 = [v3 identifier];
  v6 = [v4 objectForKey:v5];

  if (!v6)
  {
    [*(a1 + 32) _addDevice:v7];
  }
}

void __44__BTSDevicesController__updateHealthDevices__block_invoke_556(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 1520);
  v5 = [v3 identifier];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    v7 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_23C0F7000, v7, OS_LOG_TYPE_DEFAULT, "Found a health device that's already added - rearrange here.", v8, 2u);
    }
  }

  else
  {
    [*(a1 + 32) _addDevice:v3];
  }
}

- (void)_updateDevicePosition:(id)position
{
  v33 = *MEMORY[0x277D85DE8];
  positionCopy = position;
  identifier = [positionCopy identifier];
  v6 = [(BTSDevicesController *)self specifierForID:identifier];

  if (v6)
  {
    v30 = 0x7FFFFFFFFFFFFFFFLL;
    [(BTSDevicesController *)self getGroup:&v30 row:0 ofSpecifier:v6];
    if (v30 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [(BTSDevicesController *)self specifierAtIndex:[(BTSDevicesController *)self indexOfGroup:?]];
      if ([positionCopy isMyDevice] && v7 == self->_myDevicesGroupSpec || (objc_msgSend(positionCopy, "isMyDevice") & 1) == 0 && v7 == self->_otherDevicesGroupSpec)
      {
        v8 = [(BTSDevicesController *)self indexOfSpecifier:v6];
        v9 = [(BTSDevicesController *)self specifierAtIndex:v8 - 1];
        userInfo = [v9 userInfo];
        v11 = [userInfo objectForKey:@"bt-device"];

        v12 = [(BTSDevicesController *)self specifierAtIndex:v8 + 1];
        userInfo2 = [v12 userInfo];
        v14 = [userInfo2 objectForKey:@"bt-device"];

        LODWORD(v12) = [v11 isMyDevice];
        if (v12 == [positionCopy isMyDevice])
        {
          name = [v11 name];
          name2 = [positionCopy name];
          v15 = [name caseInsensitiveCompare:name2] == -1 || v11 == 0;
        }

        else
        {
          v15 = v11 == 0;
        }

        isMyDevice = [v14 isMyDevice];
        if (isMyDevice == [positionCopy isMyDevice])
        {
          name3 = [v14 name];
          name4 = [positionCopy name];
          v21 = [name3 caseInsensitiveCompare:name4] == -1 || v14 == 0;
        }

        else
        {
          v21 = v14 == 0;
        }

        if (v15 && v21)
        {
          v25 = sharedBluetoothSettingsLogComponent();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            identifier2 = [positionCopy identifier];
            *buf = 138412290;
            v32 = identifier2;
            _os_log_impl(&dword_23C0F7000, v25, OS_LOG_TYPE_INFO, "Reloading correctly located device %@", buf, 0xCu);
          }

          identifier3 = [positionCopy identifier];
          [(BTSDevicesController *)self reloadCellForSpecifierID:identifier3];

          goto LABEL_37;
        }
      }
    }

    v28 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [BTSDevicesController _updateDevicePosition:positionCopy];
    }

    [(BTSDevicesController *)self beginUpdates];
    [(BTSDevicesController *)self _removeDeviceSpecifier:v6];
    [(BTSDevicesController *)self _addDeviceSpecifier:v6 withDevice:positionCopy];
    [(BTSDevicesController *)self endUpdates];
  }

  else
  {
    v16 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [BTSDevicesController _updateDevicePosition:positionCopy];
    }
  }

LABEL_37:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)updateUI:(BOOL)i
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = [(BTSDevicesController *)self specifierForID:@"MAIN_GROUP"];
  if (i)
  {
    v6 = MEMORY[0x277CBEB18];
    _shareDevicesSpecifiers = [(BTSDevicesController *)self _shareDevicesSpecifiers];
    powerOffWarningString = [v6 arrayWithArray:_shareDevicesSpecifiers];

    v9 = MEMORY[0x277CBEB18];
    _knownDevicesSpecifiers = [(BTSDevicesController *)self _knownDevicesSpecifiers];
    rootController = [v9 arrayWithArray:_knownDevicesSpecifiers];

    if ([powerOffWarningString count])
    {
      sharingDevicesGroupSpec = self->_sharingDevicesGroupSpec;
      if (sharingDevicesGroupSpec)
      {
        [powerOffWarningString insertObject:sharingDevicesGroupSpec atIndex:0];
      }
    }

    if ([rootController count])
    {
      v30 = v5;
      [rootController insertObject:self->_myDevicesGroupSpec atIndex:0];
      v13 = MEMORY[0x277CBEB18];
      mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
      connectingDevices = [mEMORY[0x277CF3248] connectingDevices];
      v16 = [v13 arrayWithArray:connectingDevices];

      v17 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v37 = "[BTSDevicesController updateUI:]";
        v38 = 2048;
        v39 = [v16 count];
        v40 = 2112;
        v41 = v16;
        _os_log_impl(&dword_23C0F7000, v17, OS_LOG_TYPE_INFO, "%s found %lu connecting devices - %@", buf, 0x20u);
      }

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v18 = v16;
      v19 = [v18 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v32;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v32 != v21)
            {
              objc_enumerationMutation(v18);
            }

            address = [*(*(&v31 + 1) + 8 * i) address];
            v24 = [rootController specifierForID:address];

            if (v24)
            {
              [(BTSDevicesController *)self setBluetoothIsBusy:1];
              objc_storeStrong(&self->_currentDeviceSpecifier, v24);
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v20);
      }

      v5 = v30;
    }

    if (!self->_bluetoothRestricted)
    {
      [rootController addObject:self->_otherDevicesGroupSpec];
    }

    [(BTSDevicesController *)self beginUpdates];
    if ([powerOffWarningString count])
    {
      [(BTSDevicesController *)self addSpecifiersFromArray:powerOffWarningString animated:1];
    }

    [(BTSDevicesController *)self addSpecifiersFromArray:rootController animated:1];
    [(BTSDevicesController *)self endUpdates];
    [(BTSDevicesController *)self setBluetoothIsBusy:0];
    goto LABEL_27;
  }

  [(NSMutableDictionary *)self->_devicesDict removeAllObjects];
  [(NSMutableDictionary *)self->_sharingDevicesDict removeAllObjects];
  [(NSMutableDictionary *)self->_ctkdLeDevicesDict removeAllObjects];
  [(NSMutableSet *)self->_connectedPoorBehaviorDevices removeAllObjects];
  [(NSMutableSet *)self->_connectedFirmwareUpdateRequiredDevices removeAllObjects];
  [(NSMutableSet *)self->_connectedHIDDevices removeAllObjects];
  [(BTSDevicesController *)self cleanupPairing];
  [(BTSDevicesController *)self cleanupAlerts];
  if ([(BTSDevicesController *)self numberOfGroups]>= 2)
  {
    v25 = [(BTSDevicesController *)self indexOfGroup:1];
    v26 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) subarrayWithRange:{v25, objc_msgSend(*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]), "count") - v25}];
    [(BTSDevicesController *)self removeContiguousSpecifiers:v26 animated:1];
  }

  powerOffWarningString = [(BTSDevicesController *)self powerOffWarningString];
  [v5 setProperty:powerOffWarningString forKey:*MEMORY[0x277D3FF88]];
  [(BTSDevicesController *)self reloadSpecifier:v5 animated:1];
  parentViewController = [(BTSDevicesController *)self parentViewController];

  if (parentViewController)
  {
    rootController = [(BTSDevicesController *)self rootController];
    v28 = [rootController popToViewController:self animated:1];
LABEL_27:
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)updatePoorConnectedDevicesList:(id)list
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C0F7000, v4, OS_LOG_TYPE_DEFAULT, "Received 'le hid device behavior changed' notification", buf, 2u);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [(CBCentralManager *)self->_centralManager retrieveConnectedPeripheralsWithServices:0 allowAll:1];
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        if ([v10 connectedTransport] == 2)
        {
          v11 = [(BTSDevicesController *)self _getDeviceForPeripheral:v10];
          if (v11 && [v10 visibleInSettings])
          {
            if (([v11 connected] & 1) != 0 && objc_msgSend(v11, "isLimitedConnectivityDevice"))
            {
              [(NSMutableSet *)self->_connectedPoorBehaviorDevices addObject:v11];
              goto LABEL_16;
            }

            if ([(NSMutableSet *)self->_connectedPoorBehaviorDevices containsObject:v11])
            {
              [(NSMutableSet *)self->_connectedPoorBehaviorDevices removeObject:v11];
LABEL_16:
              self->_mainFooterNeedsUpdate = 1;
            }
          }

          continue;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v7);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  connectedDevices = [mEMORY[0x277CF3248] connectedDevices];

  v14 = [connectedDevices countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (!v14)
  {
    goto LABEL_32;
  }

  v15 = v14;
  v16 = *v24;
  do
  {
    for (j = 0; j != v15; ++j)
    {
      if (*v24 != v16)
      {
        objc_enumerationMutation(connectedDevices);
      }

      v18 = [BTSDeviceClassic deviceWithDevice:*(*(&v23 + 1) + 8 * j)];
      isLimitedConnectivityDevice = [v18 isLimitedConnectivityDevice];
      connectedPoorBehaviorDevices = self->_connectedPoorBehaviorDevices;
      if (isLimitedConnectivityDevice)
      {
        [(NSMutableSet *)connectedPoorBehaviorDevices addObject:v18];
      }

      else
      {
        if (![(NSMutableSet *)connectedPoorBehaviorDevices containsObject:v18])
        {
          goto LABEL_30;
        }

        [(NSMutableSet *)self->_connectedPoorBehaviorDevices removeObject:v18];
      }

      self->_mainFooterNeedsUpdate = 1;
LABEL_30:
    }

    v15 = [connectedDevices countByEnumeratingWithState:&v23 objects:v32 count:16];
  }

  while (v15);
LABEL_32:

  if (self->_mainFooterNeedsUpdate)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__BTSDevicesController_updatePoorConnectedDevicesList___block_invoke;
    block[3] = &unk_278BB03E0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    self->_mainFooterNeedsUpdate = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)updateFirmwareUpdateRequiredDevicesList:(id)list
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C0F7000, v4, OS_LOG_TYPE_DEFAULT, "Received 'le device firmware update required changed' notification", buf, 2u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(CBCentralManager *)self->_centralManager retrieveConnectedPeripheralsWithServices:0 allowAll:1];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 connectedTransport] == 2)
        {
          v11 = [(BTSDevicesController *)self _getDeviceForPeripheral:v10];
          if (v11 && [v10 visibleInSettings] && objc_msgSend(v11, "connected") && objc_msgSend(v11, "isFirmwareUpdateRequiredDevice"))
          {
            [(NSMutableSet *)self->_connectedFirmwareUpdateRequiredDevices addObject:v11];
            self->_mainFooterNeedsUpdate = 1;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }

  if (self->_mainFooterNeedsUpdate)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__BTSDevicesController_updateFirmwareUpdateRequiredDevicesList___block_invoke;
    block[3] = &unk_278BB03E0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    self->_mainFooterNeedsUpdate = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateMainGroupFooter
{
  if (self->_mainFooterNeedsUpdate)
  {
    [(BTSDevicesController *)self reloadSpecifiers];
    self->_mainFooterNeedsUpdate = 0;
  }
}

- (BOOL)isiPhone
{
  v2 = MGGetStringAnswer();
  v3 = [v2 isEqualToString:@"iPhone"];

  return v3;
}

- (BOOL)isiPad
{
  v2 = MGGetStringAnswer();
  v3 = [v2 isEqualToString:@"iPad"];

  return v3;
}

- (id)bluetoothEnabled:(id)enabled
{
  v28 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  powerState = [mEMORY[0x277CF3248] powerState];
  v7 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = !self->_togglingPower;
    *v25 = 136315650;
    *&v25[4] = "[BTSDevicesController bluetoothEnabled:]";
    if (v8)
    {
      v9 = "no";
    }

    else
    {
      v9 = "yes";
    }

    *&v25[12] = 2080;
    *&v25[14] = v9;
    v26 = 1024;
    v27 = powerState;
    _os_log_impl(&dword_23C0F7000, v7, OS_LOG_TYPE_INFO, "%s - toggling: %s, powerstate: %d", v25, 0x1Cu);
  }

  mEMORY[0x277D29518] = [MEMORY[0x277D29518] sharedInstance];
  if ([mEMORY[0x277D29518] isStoreDemoModeEnabled:0])
  {
    mEMORY[0x277D29528] = [MEMORY[0x277D29528] sharedInstance];
    v12 = [mEMORY[0x277D29528] isBetterTogetherDemoDevice] ^ 1;
  }

  else
  {
    v12 = 1;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithInt:v12];
  v14 = *MEMORY[0x277D3FF38];
  [enabledCopy setProperty:v13 forKey:*MEMORY[0x277D3FF38]];

  v15 = powerState == 1 || self->_togglingPower;
  v16 = [mEMORY[0x277CF3248] available] & v15;
  v17 = [MEMORY[0x277CCABB0] numberWithBool:v16];
  [enabledCopy setProperty:v17 forKey:*MEMORY[0x277D3FEA8]];

  v18 = v16 == 1 && !self->_power;
  if (self->_bluetoothRestricted)
  {
    available = 0;
  }

  else
  {
    available = [mEMORY[0x277CF3248] available];
  }

  v20 = [MEMORY[0x277CCABB0] numberWithBool:available];
  [enabledCopy setProperty:v20 forKey:v14];

  v21 = powerState == 2 || v18;
  v22 = [MEMORY[0x277CCABB0] numberWithInt:v21];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (void)setBluetoothEnabled:(id)enabled specifier:(id)specifier
{
  v39 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  bOOLValue = [enabled BOOLValue];
  v8 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v38 = bOOLValue;
    _os_log_impl(&dword_23C0F7000, v8, OS_LOG_TYPE_DEFAULT, "Toggle setBluetoothEnabled : %d", buf, 8u);
  }

  if (self->_power != bOOLValue)
  {
    if (bOOLValue)
    {
      goto LABEL_6;
    }

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v10 = [standardUserDefaults persistentDomainForName:@"com.apple.bluetooth.settings"];
    v11 = [v10 objectForKey:@"HideGizmoPowerWarning"];

    if (v11)
    {
LABEL_6:
      [(BTSDevicesController *)self updatePowerState:bOOLValue powerSpec:specifierCopy];
    }

    else
    {
      v13 = MEMORY[0x277D75110];
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v15 = [v14 localizedStringForKey:@"POWER_WARNING_TITLE" value:&stru_284EE3458 table:@"Devices"];
      powerOffWarningString = [(BTSDevicesController *)self powerOffWarningString];
      v17 = [v13 alertControllerWithTitle:v15 message:powerOffWarningString preferredStyle:1];

      v18 = MEMORY[0x277D750F8];
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"CANCEL" value:&stru_284EE3458 table:@"Devices"];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __54__BTSDevicesController_setBluetoothEnabled_specifier___block_invoke_2;
      v34[3] = &unk_278BB04E8;
      v36 = &__block_literal_global_577;
      v34[4] = self;
      v21 = specifierCopy;
      v35 = v21;
      v22 = [v18 actionWithTitle:v20 style:1 handler:v34];
      [v17 addAction:v22];

      v23 = MEMORY[0x277D750F8];
      v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v25 = [v24 localizedStringForKey:@"TURN_OFF" value:&stru_284EE3458 table:@"Devices"];
      v27 = MEMORY[0x277D85DD0];
      v28 = 3221225472;
      v29 = __54__BTSDevicesController_setBluetoothEnabled_specifier___block_invoke_3;
      v30 = &unk_278BB0510;
      selfCopy = self;
      v32 = v21;
      v33 = &__block_literal_global_577;
      v26 = [v23 actionWithTitle:v25 style:0 handler:&v27];
      [v17 addAction:{v26, v27, v28, v29, v30, selfCopy}];

      [(BTSDevicesController *)self presentViewController:v17 animated:1 completion:0];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __54__BTSDevicesController_setBluetoothEnabled_specifier___block_invoke()
{
  v0 = MEMORY[0x277CBEB38];
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = [v1 persistentDomainForName:@"com.apple.bluetooth.settings"];
  v4 = [v0 dictionaryWithDictionary:v2];

  [v4 setObject:MEMORY[0x277CBEC38] forKey:@"HideGizmoPowerWarning"];
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v3 setPersistentDomain:v4 forName:@"com.apple.bluetooth.settings"];
}

void __54__BTSDevicesController_setBluetoothEnabled_specifier___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  [v2 reloadCellForSpecifierID:v3];
}

uint64_t __54__BTSDevicesController_setBluetoothEnabled_specifier___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) updatePowerState:0 powerSpec:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)setBluetoothIsBusy:(BOOL)busy
{
  if (busy)
  {
    v4 = 1;
  }

  else
  {
    currentDeviceSpecifier = self->_currentDeviceSpecifier;
    self->_currentDeviceSpecifier = 0;

    [(NSTimer *)self->_currentDeviceConnectionTimer invalidate];
    currentDeviceConnectionTimer = self->_currentDeviceConnectionTimer;
    self->_currentDeviceConnectionTimer = 0;

    v4 = 0;
  }

  self->_bluetoothIsBusy = v4;
}

- (void)alertSheetDismissed:(id)dismissed
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    alert = self->_alert;
    v14 = 138412290;
    v15 = alert;
    _os_log_impl(&dword_23C0F7000, v4, OS_LOG_TYPE_DEFAULT, "Dismiss BTAlert : %@", &v14, 0xCu);
  }

  v6 = self->_alert;
  self->_alert = 0;

  rootController = [(BTSDevicesController *)self rootController];
  visibleViewController = [rootController visibleViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    rootController2 = [(BTSDevicesController *)self rootController];
    visibleViewController2 = [rootController2 visibleViewController];
    parentViewController = [visibleViewController2 parentViewController];
    [parentViewController dismiss];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)cleanupPairing
{
  [(BTSSPPairingRequest *)self->_sspAlert dismiss];
  sspAlert = self->_sspAlert;
  self->_sspAlert = 0;

  rootController = [(BTSDevicesController *)self rootController];
  visibleViewController = [rootController visibleViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    rootController2 = [(BTSDevicesController *)self rootController];
    visibleViewController2 = [rootController2 visibleViewController];
    parentViewController = [visibleViewController2 parentViewController];
    [parentViewController dismiss];
  }

  syncContactsCarplayAlert = self->_syncContactsCarplayAlert;
  if (syncContactsCarplayAlert)
  {
    [(UIAlertController *)syncContactsCarplayAlert dismissViewControllerAnimated:1 completion:0];
    userInfo = [(PSSpecifier *)self->_currentDeviceSpecifier userInfo];
    [userInfo setObject:@"cancelled" forKey:@"PIN-ended"];

    v12 = self->_syncContactsCarplayAlert;
    self->_syncContactsCarplayAlert = 0;
  }
}

- (void)cleanupAlerts
{
  if (self->_syncContactsPrivacyAlert)
  {
    [(BTSDevicesController *)self dismissViewControllerAnimated:1 completion:0];
    v6 = _currentDevice;
    [v6 setSyncSettings:{objc_msgSend(v6, "syncSettings") & 0xFFFF00FFLL | 0x100000000}];
    syncContactsPrivacyAlert = self->_syncContactsPrivacyAlert;
    self->_syncContactsPrivacyAlert = 0;

    v4 = _currentDevice;
    _currentDevice = 0;

    v5 = _currentBTSDevice;
    _currentBTSDevice = 0;
  }
}

- (void)registerForNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_applicationWillResignActive_ name:*MEMORY[0x277D76768] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_applicationWillTerminate_ name:*MEMORY[0x277D76770] object:0];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];

  defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter5 addObserver:self selector:sel_applicationDidEnterBackground_ name:*MEMORY[0x277D76660] object:0];

  defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter6 addObserver:self selector:sel_healthDeviceUnregisteredHandler_ name:@"BTSUnregisterHealthDeviceNotification" object:0];

  defaultCenter7 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter7 addObserver:self selector:sel_powerChangedHandler_ name:*MEMORY[0x277CF3168] object:0];

  defaultCenter8 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter8 addObserver:self selector:sel_powerChangedHandler_ name:*MEMORY[0x277CF3230] object:0];

  defaultCenter9 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter9 addObserver:self selector:sel_deviceDiscoveredHandler_ name:*MEMORY[0x277CF31A8] object:0];

  defaultCenter10 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter10 addObserver:self selector:sel_deviceUpdatedHandler_ name:*MEMORY[0x277CF31D0] object:0];

  defaultCenter11 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter11 addObserver:self selector:sel_deviceRemovedHandler_ name:*MEMORY[0x277CF31B0] object:0];

  defaultCenter12 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter12 addObserver:self selector:sel_deviceUnpairedHandler_ name:*MEMORY[0x277CF31C8] object:0];

  defaultCenter13 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter13 addObserver:self selector:sel_devicePairedStatusChangedHandler_ name:*MEMORY[0x277CF31F8] object:0];

  defaultCenter14 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter14 addObserver:self selector:sel_deviceConnectedHandler_ name:*MEMORY[0x277CF3190] object:0];

  defaultCenter15 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter15 addObserver:self selector:sel_deviceConnectedHandler_ name:*MEMORY[0x277CF3188] object:0];

  defaultCenter16 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter16 addObserver:self selector:sel_deviceDisconnectedHandler_ name:*MEMORY[0x277CF31A0] object:0];

  defaultCenter17 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter17 addObserver:self selector:sel_devicePairedHandler_ name:*MEMORY[0x277CF3208] object:0];

  defaultCenter18 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter18 addObserver:self selector:sel_devicePairedHandler_ name:*MEMORY[0x277CF3210] object:0];

  defaultCenter19 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter19 addObserver:self selector:sel_authenticationRequestHandler_ name:*MEMORY[0x277CF3200] object:0];

  defaultCenter20 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter20 addObserver:self selector:sel_authenticationRequestHandler_ name:*MEMORY[0x277CF3220] object:0];

  defaultCenter21 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter21 addObserver:self selector:sel_authenticationRequestHandler_ name:*MEMORY[0x277CF3228] object:0];

  defaultCenter22 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter22 addObserver:self selector:sel_authenticationRequestHandler_ name:*MEMORY[0x277CF3218] object:0];

  defaultCenter23 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter23 addObserver:self selector:sel_effectiveMCSettingsDidChange_ name:*MEMORY[0x277D25CA0] object:0];

  defaultCenter24 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter24 addObserver:self selector:sel_deviceUpdatedHandler_ name:*MEMORY[0x277CF31F0] object:0];

  defaultCenter25 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter25 addObserver:self selector:sel_bluetoothDenylistChanged_ name:*MEMORY[0x277CF3178] object:0];

  defaultCenter26 = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter26 addObserver:self selector:sel_updatePoorConnectedDevicesList_ name:@"com.apple.bluetooth.leHIDBehaviorKnown" object:0];

  defaultCenter27 = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter27 addObserver:self selector:sel_updateFirmwareUpdateRequiredDevicesList_ name:@"com.apple.bluetooth.leDeviceFirmwareUpdateWarning" object:0];

  defaultCenter28 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter28 addObserver:self selector:sel_reloadSpecifiers name:*MEMORY[0x277D76810] object:0];
}

- (void)refreshUI
{
  [(NSMutableDictionary *)self->_devicesDict removeAllObjects];
  [(NSMutableDictionary *)self->_sharingDevicesDict removeAllObjects];
  [(NSMutableDictionary *)self->_ctkdLeDevicesDict removeAllObjects];
  [(NSMutableSet *)self->_connectedPoorBehaviorDevices removeAllObjects];
  [(NSMutableSet *)self->_connectedFirmwareUpdateRequiredDevices removeAllObjects];
  [(NSMutableSet *)self->_connectedHIDDevices removeAllObjects];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76768] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x277D76770] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 removeObserver:self name:*MEMORY[0x277D76648] object:0];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 removeObserver:self name:*MEMORY[0x277D76758] object:0];

  v7 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_23C0F7000, v7, OS_LOG_TYPE_DEFAULT, "Re-register for bluetooth notifications", v9, 2u);
  }

  sharedPairingAgent = [(CBCentralManager *)self->_centralManager sharedPairingAgent];
  [sharedPairingAgent setDelegate:self];

  [(CBCentralManager *)self->_centralManager setDelegate:self];
  [(BTSDevicesController *)self reinitDASession];
  [(BTSDevicesController *)self registerForNotifications];
  [(BTSDevicesController *)self reloadSpecifiers];
  self->_uiRefreshed = 1;
}

- (void)reloadCellForSpecifierID:(id)d animated:(BOOL)animated
{
  animatedCopy = animated;
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = [(BTSDevicesController *)self specifierForID:d];
  v7 = [(BTSDevicesController *)self indexPathForSpecifier:v6];

  if (v7)
  {
    v8 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]);
    v12[0] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    if (animatedCopy)
    {
      v10 = 100;
    }

    else
    {
      v10 = 5;
    }

    [v8 reloadRowsAtIndexPaths:v9 withRowAnimation:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)forcePushDetailViewForDevice:(id)device
{
  v45 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v42 = "[BTSDevicesController forcePushDetailViewForDevice:]";
    v43 = 2112;
    v44 = deviceCopy;
    _os_log_impl(&dword_23C0F7000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  navigationController = [(BTSDevicesController *)self navigationController];
  topViewController = [navigationController topViewController];
  childViewControllers = [topViewController childViewControllers];
  firstObject = [childViewControllers firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    navigationController2 = [(BTSDevicesController *)self navigationController];
    topViewController2 = [navigationController2 topViewController];
    childViewControllers2 = [topViewController2 childViewControllers];
    firstObject2 = [childViewControllers2 firstObject];

    device = [firstObject2 device];
    identifier = [device identifier];
    identifier2 = [deviceCopy identifier];
    v18 = [identifier isEqualToString:identifier2];

    if (v18)
    {
      v19 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v42 = deviceCopy;
        _os_log_impl(&dword_23C0F7000, v19, OS_LOG_TYPE_DEFAULT, "Stop Force Push to Detail View because we're already in this page for device %@", buf, 0xCu);
      }

      goto LABEL_11;
    }
  }

  firstObject2 = objc_alloc_init(MEMORY[0x277D0FB70]);
  v20 = objc_alloc_init(MEMORY[0x277D3FAD8]);
  [firstObject2 setSpecifier:v20];

  v21 = objc_alloc(MEMORY[0x277CBEB38]);
  v39[0] = *MEMORY[0x277D3FE58];
  v22 = objc_opt_class();
  v23 = *MEMORY[0x277D3FF08];
  v40[0] = v22;
  v40[1] = @"BTSPairSetup";
  v24 = *MEMORY[0x277D400B8];
  v39[1] = v23;
  v39[2] = v24;
  v39[3] = *MEMORY[0x277D40138];
  v40[2] = @"BTSPairController";
  v40[3] = @"PSLinkCell";
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:4];
  v19 = [v21 initWithDictionary:{v25, v39[0]}];

  name = [deviceCopy name];
  [v19 setObject:name forKey:*MEMORY[0x277D40170]];

  identifier3 = [deviceCopy identifier];
  [v19 setObject:identifier3 forKey:*MEMORY[0x277D3FFB8]];

  [v19 setObject:@"BTSDeviceConfigController" forKey:v23];
  specifier = [firstObject2 specifier];
  [specifier setProperties:v19];

  v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v29 setObject:deviceCopy forKey:@"bt-device"];
  if ([deviceCopy isCTKDDevice])
  {
    centralManager = self->_centralManager;
    classicDevice = [deviceCopy classicDevice];
    address = [classicDevice address];
    v33 = [(CBCentralManager *)centralManager retrievePeripheralWithAddress:address];

    ctkdCounterpartDevicesDict = self->_ctkdCounterpartDevicesDict;
    identifier4 = [deviceCopy identifier];
    v36 = [(NSMutableDictionary *)ctkdCounterpartDevicesDict objectForKeyedSubscript:identifier4];

    [v29 setObject:v36 forKey:@"ctkd-device"];
  }

  specifier2 = [firstObject2 specifier];
  [specifier2 setUserInfo:v29];

  [(BTSDevicesController *)self showController:firstObject2];
LABEL_11:

  v38 = *MEMORY[0x277D85DE8];
}

- (id)mergeDualRadioDevices:(id)devices
{
  v44 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C0F7000, v5, OS_LOG_TYPE_DEFAULT, "Merging dual radio devices from AccessorySetupKit", buf, 2u);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  array = [MEMORY[0x277CBEB18] array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v31 = devicesCopy;
  allValues = [devicesCopy allValues];
  v35 = [allValues countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v35)
  {
    v7 = *v38;
    v8 = 0x27E1EF000uLL;
    v34 = allValues;
    selfCopy = self;
    do
    {
      v9 = 0;
      do
      {
        if (*v38 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v37 + 1) + 8 * v9);
        v11 = [BTSDeviceLE deviceWithPeripheral:v10 manager:*(&self->super.super.super.super.super.isa + *(v8 + 1448))];
        linkedRadioAddress = [v11 linkedRadioAddress];
        v13 = sharedBluetoothSettingsLogComponent();
        v14 = v13;
        if (v11)
        {
          v15 = linkedRadioAddress == 0;
        }

        else
        {
          v15 = 1;
        }

        if (v15)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v42 = v10;
            _os_log_error_impl(&dword_23C0F7000, v14, OS_LOG_TYPE_ERROR, "Peripheral does not have linked address: %@", buf, 0xCu);
          }
        }

        else
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v42 = linkedRadioAddress;
            _os_log_impl(&dword_23C0F7000, v14, OS_LOG_TYPE_DEFAULT, "Device linked radio address: %@", buf, 0xCu);
          }

          v14 = [(NSMutableDictionary *)selfCopy->_devicesDict objectForKey:linkedRadioAddress];
          if (!v14 || ![v11 isManagedByDeviceAccess])
          {
            goto LABEL_23;
          }

          knownDADevices = selfCopy->_knownDADevices;
          identifier = [v10 identifier];
          v19 = [(NSMutableDictionary *)knownDADevices objectForKeyedSubscript:identifier];
          [v11 setUnderlyingDADevice:v19];

          ctkdCounterpartDevicesDict = selfCopy->_ctkdCounterpartDevicesDict;
          identifier2 = [v14 identifier];
          v22 = [(NSMutableDictionary *)ctkdCounterpartDevicesDict objectForKeyedSubscript:identifier2];

          if (v22)
          {
            v23 = sharedBluetoothSettingsLogComponent();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v42 = v14;
              _os_log_error_impl(&dword_23C0F7000, v23, OS_LOG_TYPE_ERROR, "We cannot link to the new classic device because it's already linked to another LE device due to CTKD %@", buf, 0xCu);
            }

            [array addObject:v11];
            allValues = v34;
LABEL_23:
            v8 = 0x27E1EF000;
            self = selfCopy;
            goto LABEL_24;
          }

          name = [v11 name];
          [v14 setAccessorySetupKitDisplayName:name];

          self = selfCopy;
          [(NSMutableDictionary *)selfCopy->_devicesDict setObject:v14 forKey:linkedRadioAddress];
          identifier3 = [v14 identifier];
          [(NSMutableDictionary *)dictionary setObject:v11 forKeyedSubscript:identifier3];

          identifier4 = [v11 identifier];
          [(NSMutableDictionary *)dictionary setObject:v14 forKeyedSubscript:identifier4];

          allValues = v34;
          v8 = 0x27E1EF000;
        }

LABEL_24:

        ++v9;
      }

      while (v35 != v9);
      v27 = [allValues countByEnumeratingWithState:&v37 objects:v43 count:16];
      v35 = v27;
    }

    while (v27);
  }

  dualRadioCounterpartDevicesDict = self->_dualRadioCounterpartDevicesDict;
  self->_dualRadioCounterpartDevicesDict = dictionary;

  v29 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)refreshCTKDDevices
{
  v53 = *MEMORY[0x277D85DE8];
  if (self->_power)
  {
    v3 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C0F7000, v3, OS_LOG_TYPE_DEFAULT, "CTKD : Update CTKD device properties", buf, 2u);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    sharedPairingAgent = [(CBCentralManager *)self->_centralManager sharedPairingAgent];
    retrievePairedPeers = [sharedPairingAgent retrievePairedPeers];

    obj = retrievePairedPeers;
    v6 = [retrievePairedPeers countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v45;
      v10 = 0x278BAF000uLL;
      *&v7 = 138412546;
      v39 = v7;
      v40 = *v45;
      do
      {
        v11 = 0;
        v41 = v8;
        do
        {
          if (*v45 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v44 + 1) + 8 * v11);
          v13 = [*(v10 + 3376) deviceWithPeripheral:v12 manager:{self->_centralManager, v39}];
          v14 = v13;
          if (v13 && [v13 supportsCTKD])
          {
            [v12 setDelegate:self];
            v15 = sharedBluetoothSettingsLogComponent();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              identifier = [v12 identifier];
              *buf = 138412290;
              v49 = identifier;
              _os_log_impl(&dword_23C0F7000, v15, OS_LOG_TYPE_DEFAULT, "Get derived device for CTKD device: %@", buf, 0xCu);
            }

            mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
            identifier2 = [v12 identifier];
            v19 = [mEMORY[0x277CF3248] deviceFromIdentifier:identifier2];

            v43 = v19;
            v20 = [BTSDeviceClassic deviceWithDevice:v19];
            devicesDict = self->_devicesDict;
            classicDevice = [v20 classicDevice];
            address = [classicDevice address];
            v24 = [(NSMutableDictionary *)devicesDict objectForKey:address];

            if (v24)
            {
              [v24 setCtkdDevice:1];
              if ([v14 isManagedByDeviceAccess])
              {
                knownDADevices = self->_knownDADevices;
                identifier3 = [v12 identifier];
                v27 = [(NSMutableDictionary *)knownDADevices objectForKeyedSubscript:identifier3];
                [v14 setUnderlyingDADevice:v27];

                name = [v14 name];
                [v24 setAccessorySetupKitDisplayName:name];

                [v24 setDenyIncomingClassicConnection:{objc_msgSend(v14, "shouldDenyIncomingClassicConnection")}];
              }

              v29 = self->_devicesDict;
              classicDevice2 = [v20 classicDevice];
              address2 = [classicDevice2 address];
              [(NSMutableDictionary *)v29 setObject:v24 forKey:address2];

              v32 = sharedBluetoothSettingsLogComponent();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
              {
                name2 = [v14 name];
                isCTKDDevice = [v24 isCTKDDevice];
                *buf = v39;
                v49 = name2;
                v50 = 1024;
                v51 = isCTKDDevice;
                _os_log_debug_impl(&dword_23C0F7000, v32, OS_LOG_TYPE_DEBUG, "CTKD : classic device found in list %@ with CTKD : %d", buf, 0x12u);
              }

              identifier4 = [v12 identifier];
              uUIDString = [identifier4 UUIDString];

              if (uUIDString)
              {
                v35 = [(NSMutableDictionary *)self->_ctkdLeDevicesDict objectForKey:uUIDString];

                if (!v35)
                {
                  [v14 setCtkdDevice:1];
                  [(NSMutableDictionary *)self->_ctkdLeDevicesDict setObject:v14 forKey:uUIDString];
                }
              }

              [(BTSDevicesController *)self updateCTKDCounterparts:v24 leDevice:v14];
            }

            v9 = v40;
            v10 = 0x278BAF000;
            v8 = v41;
          }

          ++v11;
        }

        while (v8 != v11);
        v8 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v8);
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)updateCTKDCounterparts:(id)counterparts leDevice:(id)device
{
  ctkdCounterpartDevicesDict = self->_ctkdCounterpartDevicesDict;
  deviceCopy = device;
  counterpartsCopy = counterparts;
  identifier = [counterpartsCopy identifier];
  [(NSMutableDictionary *)ctkdCounterpartDevicesDict setObject:deviceCopy forKeyedSubscript:identifier];

  v10 = self->_ctkdCounterpartDevicesDict;
  identifier2 = [deviceCopy identifier];

  [(NSMutableDictionary *)v10 setObject:counterpartsCopy forKeyedSubscript:identifier2];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v53 = *MEMORY[0x277D85DE8];
  v44.receiver = self;
  v44.super_class = BTSDevicesController;
  pathCopy = path;
  v7 = [(BTSDevicesController *)&v44 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(BTSDevicesController *)self indexForIndexPath:pathCopy];

  v9 = objc_opt_class();
  if (v9 == objc_opt_class())
  {
    v11 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark.circle.fill"];
    v12 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v11];
    lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
    [v12 setTintColor:lightGrayColor];

    [v7 setAccessoryView:v12];
LABEL_38:

    goto LABEL_39;
  }

  if ([v7 tag] == 1)
  {
    v10 = objc_opt_class();
    if (v10 == objc_opt_class())
    {
      v11 = v7;
      v12 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndexedSubscript:v8];
      userInfo = [v12 userInfo];
      v14 = [userInfo objectForKeyedSubscript:@"bt-device"];

      if ([v14 paired] & 1) != 0 || (objc_msgSend(v14, "isHealthDevice") & 1) != 0 || (objc_msgSend(v14, "isManagedByDeviceAccess"))
      {
        isManagedByAliroWallet = 1;
      }

      else
      {
        isManagedByAliroWallet = [v14 isManagedByAliroWallet];
      }

      LOBYTE(isConnectedToSystem) = [v14 connected];
      if ([v14 isCTKDDevice])
      {
        centralManager = self->_centralManager;
        classicDevice = [v14 classicDevice];
        address = [classicDevice address];
        v20 = [(CBCentralManager *)centralManager retrievePeripheralWithAddress:address];

        if ([v14 connected])
        {
          isConnectedToSystem = 1;
        }

        else
        {
          isConnectedToSystem = [v20 isConnectedToSystem];
        }

        v22 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          title = [v11 title];
          *buf = 138412546;
          v46 = title;
          v47 = 1024;
          v48 = isConnectedToSystem;
          _os_log_impl(&dword_23C0F7000, v22, OS_LOG_TYPE_DEFAULT, "CTKD : cell %@ is connected %d", buf, 0x12u);
        }
      }

      dualRadioCounterpartDevicesDict = self->_dualRadioCounterpartDevicesDict;
      identifier = [v14 identifier];
      v26 = [(NSMutableDictionary *)dualRadioCounterpartDevicesDict objectForKeyedSubscript:identifier];

      connected = (v26 != 0) | isConnectedToSystem;
      if (v26 && (isConnectedToSystem & 1) == 0)
      {
        v28 = self->_dualRadioCounterpartDevicesDict;
        identifier2 = [v14 identifier];
        v30 = [(NSMutableDictionary *)v28 objectForKeyedSubscript:identifier2];
        connected = [v30 connected];
      }

      v43 = 0;
      if ([v14 isMyDevice] && (objc_msgSend(v14, "isApplePencil:", &v43) & 1) == 0 && objc_msgSend(v14, "isLimitedConnectivityDevice"))
      {
        [v11 setHasLimitedConnectivity:1];
      }

      v31 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        title2 = [v11 title];
        *buf = 138413058;
        v46 = title2;
        v47 = 1024;
        v48 = isManagedByAliroWallet;
        v49 = 1024;
        v50 = connected & 1;
        v51 = 2112;
        v52 = v14;
        _os_log_impl(&dword_23C0F7000, v31, OS_LOG_TYPE_INFO, "Setting cell %@ paired %d and connected %d, device:%@", buf, 0x22u);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        ctkdCounterpartDevicesDict = self->_ctkdCounterpartDevicesDict;
        identifier3 = [v14 identifier];
        relatedFutureRadioAddress = [(NSMutableDictionary *)ctkdCounterpartDevicesDict objectForKeyedSubscript:identifier3];

        shouldDenyIncomingClassicConnection = [relatedFutureRadioAddress shouldDenyIncomingClassicConnection];
      }

      else
      {
        if ([v14 shouldDenyIncomingClassicConnection])
        {
          shouldDenyIncomingClassicConnection = 1;
          goto LABEL_31;
        }

        relatedFutureRadioAddress = [v14 relatedFutureRadioAddress];
        shouldDenyIncomingClassicConnection = relatedFutureRadioAddress != 0;
      }

LABEL_31:
      [v11 setDeviceStatePaired:isManagedByAliroWallet andConnected:connected & 1 andPendingSetup:shouldDenyIncomingClassicConnection];
      if (self->_bluetoothIsBusy)
      {
        identifier4 = [v14 identifier];
        identifier5 = [(PSSpecifier *)self->_currentDeviceSpecifier identifier];
        v39 = [identifier4 isEqualToString:identifier5];

        if (v39)
        {
          if (isManagedByAliroWallet)
          {
            v40 = 4;
          }

          else
          {
            v40 = 1;
          }

          [v11 setDeviceState:v40];
        }
      }

      goto LABEL_38;
    }
  }

LABEL_39:
  v41 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path
{
  v37 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v6 = [(BTSDevicesController *)self indexForIndexPath:pathCopy];
  v7 = [(BTSDevicesController *)self indexOfSpecifierID:@"MY_DEVICES"];
  v8 = *MEMORY[0x277D3FC48];
  v9 = [*(&self->super.super.super.super.super.isa + v8) count];
  if (v6 > 255 || v7 >= 256)
  {
    v14 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [BTSDevicesController tableView:accessoryButtonTappedForRowWithIndexPath:];
    }
  }

  else
  {
    if (v6 > v9 || v6 < v7)
    {
      v11 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v21 = [pathCopy row];
        section = [pathCopy section];
        v23 = [*(&self->super.super.super.super.super.isa + v8) count];
        v27 = 134219008;
        v28 = v21;
        v29 = 2048;
        v30 = section;
        v31 = 2048;
        v32 = v6;
        v33 = 2048;
        v34 = v7;
        v35 = 2048;
        v36 = v23;
        _os_log_error_impl(&dword_23C0F7000, v11, OS_LOG_TYPE_ERROR, "Invalid index %ld in section %ld; rowIndex : %ld\t myDevicesGroupIndex : %ld\ttotal specifiers count %lu", &v27, 0x34u);
      }

      [(BTSDevicesController *)self reloadSpecifiers];
      v6 = [(BTSDevicesController *)self indexForIndexPath:pathCopy];
      v12 = [(BTSDevicesController *)self indexOfSpecifierID:@"MY_DEVICES"];
      [*(&self->super.super.super.super.super.isa + v8) count];
      v13 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v24 = [pathCopy row];
        section2 = [pathCopy section];
        v26 = [*(&self->super.super.super.super.super.isa + v8) count];
        v27 = 134219008;
        v28 = v24;
        v29 = 2048;
        v30 = section2;
        v31 = 2048;
        v32 = v6;
        v33 = 2048;
        v34 = v12;
        v35 = 2048;
        v36 = v26;
        _os_log_error_impl(&dword_23C0F7000, v13, OS_LOG_TYPE_ERROR, "Refreshed index %ld in section %ld; rowIndex : %ld\t myDevicesGroupIndex : %ld\ttotal specifiers count %lu", &v27, 0x34u);
      }
    }

    v14 = [*(&self->super.super.super.super.super.isa + v8) objectAtIndex:v6];
    v15 = [(BTSDevicesController *)self _headphoneSettingsControllerFor:v14];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = objc_alloc_init(*(&v14->isa + *MEMORY[0x277D3FC98]));
    }

    v18 = v17;
    *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC38]) = 0;
    WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD10]));
    [v18 setRootController:WeakRetained];

    [v18 setParentController:self];
    [v18 setSpecifier:v14];
    [(BTSDevicesController *)self showController:v18];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)isDeviceSupported:(id)supported
{
  v25 = *MEMORY[0x277D85DE8];
  supportedCopy = supported;
  v4 = [MEMORY[0x277CBE0B0] isDeviceSupportedWithType:objc_msgSend(supportedCopy VIDsrc:"type") VID:objc_msgSend(supportedCopy PID:{"vendorIdSrc"), objc_msgSend(supportedCopy, "vendorId"), objc_msgSend(supportedCopy, "productId")}];
  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    type = [supportedCopy type];
    vendorIdSrc = [supportedCopy vendorIdSrc];
    vendorId = [supportedCopy vendorId];
    productId = [supportedCopy productId];
    v13 = 136316418;
    v14 = "[BTSDevicesController isDeviceSupported:]";
    v10 = "UNSUPPORTED";
    v16 = type;
    v15 = 1024;
    if (v4)
    {
      v10 = "SUPPORTED";
    }

    v17 = 1024;
    v18 = vendorIdSrc;
    v19 = 1024;
    v20 = vendorId;
    v21 = 1024;
    v22 = productId;
    v23 = 2080;
    v24 = v10;
    _os_log_impl(&dword_23C0F7000, v5, OS_LOG_TYPE_INFO, "%s - type=%d vendorSrc=%d VID=0x%04X PID=0x%04X: %s", &v13, 0x2Eu);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(BTSDevicesController *)self specifierAtIndex:[(BTSDevicesController *)self indexForIndexPath:pathCopy]];
  userInfo = [v8 userInfo];
  v10 = [userInfo objectForKey:@"bt-device"];

  if (!self->_bluetoothIsBusy)
  {
    v11 = [(BTSDevicesController *)self specifierForID:@"DENYLIST_ACTION_ID"];

    if (v11 == v8)
    {
      mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
      denylistEnabled = [mEMORY[0x277CF3248] denylistEnabled];

      if (denylistEnabled)
      {
        mEMORY[0x277CF3248]2 = [MEMORY[0x277CF3248] sharedInstance];
        [mEMORY[0x277CF3248]2 setDenylistEnabled:0];

        [(BTSDevicesController *)self reloadSpecifiers];
      }
    }
  }

  if (v10)
  {
    v15 = [viewCopy cellForRowAtIndexPath:pathCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
      if ([v16 state] == 6 || objc_msgSend(v16, "state") == 7)
      {
        [(BTSDevicesController *)self forcePushDetailViewForDevice:v10];
        [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) selectRowAtIndexPath:0 animated:1 scrollPosition:0];

LABEL_54:
        goto LABEL_55;
      }
    }

    if (self->_bluetoothIsBusy)
    {
LABEL_53:
      [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) selectRowAtIndexPath:0 animated:1 scrollPosition:0];
      goto LABEL_54;
    }

    if ([v10 connected] && (objc_msgSend(v10, "isTemporaryPairedDevice") & 1) == 0)
    {
      [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) selectRowAtIndexPath:0 animated:1 scrollPosition:0];
      v32 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        [BTSDevicesController tableView:v10 didSelectRowAtIndexPath:?];
      }

      goto LABEL_54;
    }

    classicDevice = [v10 classicDevice];
    v18 = [(BTSDevicesController *)self isDeviceSupported:classicDevice];

    v53 = v15;
    if (v18)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v10;
        device = [v19 device];
        v21 = [device isServiceSupported:4096];

        if (v21 && (self->_netClient || (v22 = _NETRBClientCreate(), (self->_netClient = v22) != 0)))
        {
          v54[0] = 0;
          v23 = 0;
          _NETRBClientGetHostCount();
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        v23 = 0;
      }

      v54[0] = 0;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v10 connected] & 1) == 0 && objc_msgSend(v10, "isApplePencil:", v54))
      {
        [(BTSDevicesController *)self showPencilConnectionAttemptAlert:v54[0]];
      }

      else
      {
        sharingDevicesDict = self->_sharingDevicesDict;
        identifier = [v10 identifier];
        v35 = [(NSMutableDictionary *)sharingDevicesDict objectForKey:identifier];

        if (v35)
        {
          [v10 unpair];
          v36 = self->_sharingDevicesDict;
          identifier2 = [v10 identifier];
          [(NSMutableDictionary *)v36 removeObjectForKey:identifier2];

          [(BTSDevicesController *)self removeSpecifier:self->_sharingDevicesGroupSpec animated:1];
        }

        else
        {
          if (![(BTSDevicesController *)self isSupportCarPlaySetup:v10])
          {
            if ([v10 connect])
            {
              objc_storeStrong(&self->_currentDeviceSpecifier, v8);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v42 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_peripheralConnectionTimeout_ selector:v10 userInfo:0 repeats:10.0];
                currentDeviceConnectionTimer = self->_currentDeviceConnectionTimer;
                self->_currentDeviceConnectionTimer = v42;

                mEMORY[0x277CF3248]3 = [MEMORY[0x277CF3248] sharedInstance];
                [mEMORY[0x277CF3248]3 setDenylistEnabled:0];
              }

              [(BTSDevicesController *)self setBluetoothIsBusy:1];
              [(BTSDevicesController *)self allowBluetoothScans:0];
              identifier3 = [v10 identifier];
              v46 = [(BTSDevicesController *)self indexOfSpecifierID:identifier3];

              if (v46 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v47 = [viewCopy cellForRowAtIndexPath:pathCopy];
                v48 = 4;
                if (([v10 paired] & 1) == 0)
                {
                  if ([v10 isHealthDevice])
                  {
                    v48 = 4;
                  }

                  else
                  {
                    v48 = 1;
                  }
                }

                [v47 setDeviceState:v48];
              }
            }

            goto LABEL_52;
          }

          [(BTSDevicesController *)self setBluetoothIsBusy:1];
          v38 = v10;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ([(BTSDevicesController *)self getLECarPlay:v38], (v39 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v40 = v39;

            v41 = v40;
          }

          else
          {
            v41 = 0;
            v40 = v38;
          }

          [(BTSDevicesController *)self startOutgoingCarPlaySetup:v40];
          identifier4 = [v38 identifier];
          v50 = [(BTSDevicesController *)self indexOfSpecifierID:identifier4];

          if (v50 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v51 = [viewCopy cellForRowAtIndexPath:pathCopy];
            [v51 setDeviceState:1];
          }
        }

        v23 = 0;
      }
    }

    else
    {
      v52 = MEMORY[0x277D75110];
      v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v25 = [v24 localizedStringForKey:@"CANNOT_CONNECT_UNSUPPORTED_DEVICE_TITLE" value:&stru_284EE3458 table:@"Devices"];
      v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v27 = [v26 localizedStringForKey:@"CANNOT_CONNECT_UNSUPPORTED_DEVICE_MESSAGE" value:&stru_284EE3458 table:@"Devices"];
      v23 = [v52 alertControllerWithTitle:v25 message:v27 preferredStyle:1];

      v15 = v53;
      v28 = MEMORY[0x277D750F8];
      v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v30 = [v29 localizedStringForKey:@"OK" value:&stru_284EE3458 table:@"Devices"];
      v31 = [v28 actionWithTitle:v30 style:1 handler:&__block_literal_global_652];
      [v23 addAction:v31];

      [(BTSDevicesController *)self presentViewController:v23 animated:1 completion:0];
    }

LABEL_52:

    goto LABEL_53;
  }

  [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) selectRowAtIndexPath:0 animated:1 scrollPosition:0];
LABEL_55:
}

void __58__BTSDevicesController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBluetoothIsBusy:0];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  [v2 reloadCellForSpecifierID:v3 animated:1];
}

uint64_t __58__BTSDevicesController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  if (*(*(a1 + 32) + 1680))
  {
    v2 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_23C0F7000, v2, OS_LOG_TYPE_INFO, "Toggling Personal Hotspot to disconnect active clients", v7, 2u);
    }

    v3 = *(*(a1 + 32) + 1680);
    _NETRBClientSetGlobalServiceState();
    v4 = *(*(a1 + 32) + 1680);
    _NETRBClientSetGlobalServiceState();
    v5 = *(*(a1 + 32) + 1680);
    _NETRBClientDestroy();
    *(*(a1 + 32) + 1680) = 0;
  }

  return [*(a1 + 40) connect];
}

- (double)tableView:(id)view estimatedHeightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  if (!section || section == 1 && (self->_denylistEnabled || [(NSMutableDictionary *)self->_sharingDevicesDict count]) || self->_denylistEnabled)
  {
    v7 = 42.0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = BTSDevicesController;
    [(BTSDevicesController *)&v10 tableView:viewCopy heightForFooterInSection:section];
    v7 = v9;
  }

  return v7;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  v62[3] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  if (section || self->_denylistEnabled)
  {
    v60.receiver = self;
    v60.super_class = BTSDevicesController;
    v7 = [(BTSDevicesController *)&v60 tableView:viewCopy viewForFooterInSection:section];
    goto LABEL_4;
  }

  v10 = SCDynamicStoreCopyComputerName(0, 0);
  if (self->_bluetoothRestricted)
  {
    restrictionDetail = self->_restrictionDetail;
    v59 = 0;
    v12 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:restrictionDetail validFormatSpecifiers:@"%@" error:&v59, v10];
    v13 = v59;
    v14 = v13;
    if (v12)
    {
      v55 = v13;
      v57 = v10;
LABEL_12:
      v56 = v12;
      v19 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v12];
      v20 = MGGetBoolAnswer();
      v21 = @"WIFI";
      if (v20)
      {
        v21 = @"WLAN";
      }

      v22 = v21;
      connectedPoorBehaviorDeviceNames = [(BTSDevicesController *)self connectedPoorBehaviorDeviceNames];
      v53 = connectedPoorBehaviorDeviceNames;
      v54 = v22;
      if ([connectedPoorBehaviorDeviceNames count])
      {
        if ([connectedPoorBehaviorDeviceNames count] <= 1)
        {
          v24 = @"SINGULAR";
        }

        else
        {
          v24 = @"PLURAL";
        }

        v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_DISCOVERABLE_WARNING_%@", v22, v24, connectedPoorBehaviorDeviceNames, v22];
        v26 = [(BTSDevicesController *)self localizedList:connectedPoorBehaviorDeviceNames];
        v27 = MEMORY[0x277CCACA8];
        v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v29 = [v28 localizedStringForKey:v25 value:&stru_284EE3458 table:@"Devices"];
        v30 = [v27 localizedStringWithFormat:v29, v26];

        v31 = [(BTSDevicesController *)self makeWarningAttributedString:v30];
        [v19 appendAttributedString:v31];
      }

      connectedFirmwareUpdateRequiredDeviceNames = [(BTSDevicesController *)self connectedFirmwareUpdateRequiredDeviceNames];
      if ([connectedFirmwareUpdateRequiredDeviceNames count])
      {
        if ([connectedFirmwareUpdateRequiredDeviceNames count] <= 1)
        {
          v33 = @"SINGULAR";
        }

        else
        {
          v33 = @"PLURAL";
        }

        v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"FIRMWARE_WARNING_%@", v33];
        v35 = [(BTSDevicesController *)self localizedList:connectedFirmwareUpdateRequiredDeviceNames];
        v36 = MEMORY[0x277CCACA8];
        v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v38 = [v37 localizedStringForKey:v34 value:&stru_284EE3458 table:@"Devices"];
        v39 = [v36 localizedStringWithFormat:v38, v35];

        v40 = [(BTSDevicesController *)self makeWarningAttributedString:v39];
        [v19 appendAttributedString:v40];
      }

      v41 = objc_opt_new();
      [v41 setAlignment:4];
      groupedFooterConfiguration = [MEMORY[0x277D756E0] groupedFooterConfiguration];
      textProperties = [groupedFooterConfiguration textProperties];
      font = [textProperties font];

      textProperties2 = [groupedFooterConfiguration textProperties];
      color = [textProperties2 color];

      v47 = *MEMORY[0x277D740A8];
      v61[0] = *MEMORY[0x277D740C0];
      v61[1] = v47;
      v62[0] = color;
      v62[1] = font;
      v61[2] = *MEMORY[0x277D74118];
      v62[2] = v41;
      v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:3];
      [v19 addAttributes:v48 range:{0, objc_msgSend(v19, "length")}];

      v7 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"MainGroupFooterId"];
      textLabel = [v7 textLabel];
      [textLabel setTextAlignment:4];

      textLabel2 = [v7 textLabel];
      [textLabel2 setNumberOfLines:0];

      textLabel3 = [v7 textLabel];
      [textLabel3 setAttributedText:v19];

      self->_mainFooterNeedsUpdate = 1;
      v16 = v56;
      v10 = v57;
      v14 = v55;
      goto LABEL_31;
    }

    v16 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [BTSDevicesController tableView:v14 viewForFooterInSection:&self->_restrictionDetail];
    }
  }

  else
  {
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"DISCOVERABLE" value:&stru_284EE3458 table:@"Devices"];

    v58 = 0;
    v17 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v16 validFormatSpecifiers:@"%@" error:&v58, v10];
    v18 = v58;
    v14 = v18;
    if (v17)
    {
      v55 = v18;
      v57 = v10;

      v12 = v17;
      goto LABEL_12;
    }

    v52 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      [BTSDevicesController tableView:viewForFooterInSection:];
    }
  }

  v7 = 0;
LABEL_31:

LABEL_4:
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)showSyncContactsPopup:(id)popup
{
  v40 = *MEMORY[0x277D85DE8];
  popupCopy = popup;
  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v35 = "[BTSDevicesController showSyncContactsPopup:]";
    v36 = 2048;
    selfCopy = self;
    v38 = 2112;
    v39 = popupCopy;
    _os_log_impl(&dword_23C0F7000, v5, OS_LOG_TYPE_DEFAULT, "%s Showing Sync Contacts Popup from BTSDeviceController instance %p, for device: %@", buf, 0x20u);
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __46__BTSDevicesController_showSyncContactsPopup___block_invoke;
  v32[3] = &unk_278BB0580;
  v32[4] = self;
  v33 = popupCopy;
  v27 = popupCopy;
  v26 = MEMORY[0x23EEC8440](v32);
  v6 = MEMORY[0x277D75110];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"SYNC_CONTACTS_TITLE" value:&stru_284EE3458 table:@"Devices"];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"SYNC_CARPLAY_CONTACTS_MESSAGE" value:&stru_284EE3458 table:@"Devices"];
  v11 = [v6 alertControllerWithTitle:v8 message:v10 preferredStyle:1];
  syncContactsCarplayAlert = self->_syncContactsCarplayAlert;
  self->_syncContactsCarplayAlert = v11;

  v13 = self->_syncContactsCarplayAlert;
  v14 = MEMORY[0x277D750F8];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"SYNC_DISALLOW_BUTTON" value:&stru_284EE3458 table:@"Devices"];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __46__BTSDevicesController_showSyncContactsPopup___block_invoke_2;
  v30[3] = &unk_278BB05A8;
  v17 = v26;
  v31 = v17;
  v18 = [v14 actionWithTitle:v16 style:1 handler:v30];
  [(UIAlertController *)v13 addAction:v18];

  v19 = self->_syncContactsCarplayAlert;
  v20 = MEMORY[0x277D750F8];
  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"SYNC_ALLOW_BUTTON" value:&stru_284EE3458 table:@"Devices"];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __46__BTSDevicesController_showSyncContactsPopup___block_invoke_3;
  v28[3] = &unk_278BB05A8;
  v29 = v17;
  v23 = v17;
  v24 = [v20 actionWithTitle:v22 style:0 handler:v28];
  [(UIAlertController *)v19 addAction:v24];

  [(BTSDevicesController *)self presentViewController:self->_syncContactsCarplayAlert animated:1 completion:0];
  v25 = *MEMORY[0x277D85DE8];
}

void __46__BTSDevicesController_showSyncContactsPopup___block_invoke(uint64_t a1, int a2)
{
  v4 = [*(*(a1 + 32) + 1624) userInfo];
  [v4 setObject:@"accepted" forKey:@"PIN-ended"];

  v5 = [MEMORY[0x277CF3248] sharedInstance];
  [v5 acceptSSP:0 forDevice:*(a1 + 40)];

  v6 = [*(a1 + 40) syncSettings];
  v7 = *(a1 + 40);
  v8 = 0x100000000;
  if (a2)
  {
    v8 = 0x100000100;
  }

  [*(a1 + 40) setSyncSettings:v8 | v6 & 0xFFFF00FF];
  v9 = *(a1 + 32);
  v10 = *(v9 + 1656);
  *(v9 + 1656) = 0;

  if (a2)
  {
    v11 = *(*(a1 + 32) + 1520);
    v12 = [*(a1 + 40) address];
    v13 = [v11 objectForKeyedSubscript:v12];

    [*(a1 + 32) forcePushDetailViewForDevice:v13];
  }
}

- (void)showSyncContactsPrivacyPopup:(id)popup
{
  v62 = *MEMORY[0x277D85DE8];
  popupCopy = popup;
  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v57 = "[BTSDevicesController showSyncContactsPrivacyPopup:]";
    v58 = 2048;
    selfCopy = self;
    v60 = 2112;
    v61 = popupCopy;
    _os_log_impl(&dword_23C0F7000, v6, OS_LOG_TYPE_DEFAULT, "%s Showing Sync Contacts Popup from BTSDeviceController instance %p, for device: %@", buf, 0x20u);
  }

  objc_storeStrong(&_currentDevice, popup);
  v46 = popupCopy;
  if (MGGetBoolAnswer())
  {
    *buf = 0;
    v54[0] = *MEMORY[0x277CBF188];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"SYNC_CONTACTS_TITLE" value:&stru_284EE3458 table:@"Devices"];
    v55[0] = v8;
    v54[1] = *MEMORY[0x277CBF198];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"SYNC_BLUETOOTH_CONTACTS_MESSAGE" value:&stru_284EE3458 table:@"Devices"];
    v11 = *MEMORY[0x277CBF1B0];
    v55[1] = v10;
    v55[2] = MEMORY[0x277CBEC38];
    v12 = *MEMORY[0x277CBF1C0];
    v54[2] = v11;
    v54[3] = v12;
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"SYNC_DISALLOW_BUTTON" value:&stru_284EE3458 table:@"Devices"];
    v55[3] = v14;
    v54[4] = *MEMORY[0x277CBF1E8];
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"SYNC_ALLOW_BUTTON" value:&stru_284EE3458 table:@"Devices"];
    v55[4] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:5];

    v18 = v46;
    objc_storeStrong(&_currentControllerInstance, self);
    devicesDict = self->_devicesDict;
    address = [v46 address];
    v21 = [(NSMutableDictionary *)devicesDict objectForKeyedSubscript:address];
    v22 = _currentBTSDevice;
    _currentBTSDevice = v21;

    [(BTSDevicesController *)self setNotification:CFUserNotificationCreate(0, 100.0, 3uLL, buf, v17)];
    [(BTSDevicesController *)self setRunLoopSource:CFUserNotificationCreateRunLoopSource(0, [(BTSDevicesController *)self notification], NotificationCallback, 0)];
    Main = CFRunLoopGetMain();
    runLoopSource = [(BTSDevicesController *)self runLoopSource];
    CFRunLoopAddSource(Main, runLoopSource, *MEMORY[0x277CBF048]);
  }

  else
  {
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __53__BTSDevicesController_showSyncContactsPrivacyPopup___block_invoke;
    v51[3] = &unk_278BB0580;
    v52 = popupCopy;
    selfCopy2 = self;
    v45 = MEMORY[0x23EEC8440](v51);
    v25 = MEMORY[0x277D75110];
    v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v27 = [v26 localizedStringForKey:@"SYNC_CONTACTS_TITLE" value:&stru_284EE3458 table:@"Devices"];
    v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v29 = [v28 localizedStringForKey:@"SYNC_BLUETOOTH_CONTACTS_MESSAGE" value:&stru_284EE3458 table:@"Devices"];
    v30 = [v25 alertControllerWithTitle:v27 message:v29 preferredStyle:1];
    syncContactsPrivacyAlert = self->_syncContactsPrivacyAlert;
    self->_syncContactsPrivacyAlert = v30;

    v32 = self->_syncContactsPrivacyAlert;
    v33 = MEMORY[0x277D750F8];
    v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v35 = [v34 localizedStringForKey:@"SYNC_DISALLOW_BUTTON" value:&stru_284EE3458 table:@"Devices"];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __53__BTSDevicesController_showSyncContactsPrivacyPopup___block_invoke_2;
    v49[3] = &unk_278BB05A8;
    v36 = v45;
    v50 = v36;
    v37 = [v33 actionWithTitle:v35 style:1 handler:v49];
    [(UIAlertController *)v32 addAction:v37];

    v38 = self->_syncContactsPrivacyAlert;
    v39 = MEMORY[0x277D750F8];
    v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v41 = [v40 localizedStringForKey:@"SYNC_ALLOW_BUTTON" value:&stru_284EE3458 table:@"Devices"];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __53__BTSDevicesController_showSyncContactsPrivacyPopup___block_invoke_3;
    v47[3] = &unk_278BB05A8;
    v48 = v36;
    v42 = v36;
    v43 = [v39 actionWithTitle:v41 style:0 handler:v47];
    [(UIAlertController *)v38 addAction:v43];

    v18 = v46;
    [(BTSDevicesController *)self presentViewController:self->_syncContactsPrivacyAlert animated:1 completion:0];
  }

  v44 = *MEMORY[0x277D85DE8];
}

void __53__BTSDevicesController_showSyncContactsPrivacyPopup___block_invoke(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) syncSettings];
  v5 = *(a1 + 32);
  v6 = 0x100000000;
  if (a2)
  {
    v6 = 0x100000100;
  }

  [*(a1 + 32) setSyncSettings:v6 | v4 & 0xFFFF00FF];
  v7 = *(a1 + 40);
  v8 = *(v7 + 1672);
  *(v7 + 1672) = 0;

  v9 = _currentDevice;
  _currentDevice = 0;

  if (a2)
  {
    v10 = *(*(a1 + 40) + 1520);
    v11 = [*(a1 + 32) address];
    v12 = [v10 objectForKeyedSubscript:v11];

    [*(a1 + 40) forcePushDetailViewForDevice:v12];
  }
}

- (void)showPencilConnectionAttemptAlert:(int)alert
{
  v16 = objc_alloc_init(MEMORY[0x277CCACA8]);
  if (alert <= 2)
  {
    v5 = off_278BB0738[alert];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:v5 value:&stru_284EE3458 table:@"Devices"];

    v16 = v7;
  }

  v8 = MEMORY[0x277D75110];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"APPLE_PENCIL_NOT_CONNECTED_TITLE" value:&stru_284EE3458 table:@"Devices"];
  v11 = [v8 alertControllerWithTitle:v10 message:v16 preferredStyle:1];

  v12 = MEMORY[0x277D750F8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"CLOSE" value:&stru_284EE3458 table:@"Devices"];
  v15 = [v12 actionWithTitle:v14 style:0 handler:&__block_literal_global_719];

  [v11 addAction:v15];
  [(BTSDevicesController *)self presentViewController:v11 animated:1 completion:0];
}

- (void)effectiveMCSettingsDidChange:(id)change
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__BTSDevicesController_effectiveMCSettingsDidChange___block_invoke;
  block[3] = &unk_278BB03E0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)startedConnectionAttemptOnTransport:(unint64_t)transport
{
  if (transport == 3)
  {
    block[5] = v3;
    block[6] = v4;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__BTSDevicesController_startedConnectionAttemptOnTransport___block_invoke;
    block[3] = &unk_278BB03E0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __60__BTSDevicesController_startedConnectionAttemptOnTransport___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) allowBluetoothScans:0];
  *(*(a1 + 32) + 1605) = 1;
  return result;
}

- (void)cancelledConnectionAttemptOnTransport:(unint64_t)transport
{
  if (transport == 3)
  {
    block[5] = v3;
    block[6] = v4;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__BTSDevicesController_cancelledConnectionAttemptOnTransport___block_invoke;
    block[3] = &unk_278BB03E0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

_BYTE *__62__BTSDevicesController_cancelledConnectionAttemptOnTransport___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[1605] == 1)
  {
    result = [result allowBluetoothScans:1];
    *(*(a1 + 32) + 1605) = 0;
  }

  return result;
}

- (void)sessionDidConnect:(id)connect
{
  configuration = [connect configuration];
  transportType = [configuration transportType];

  if (transportType == 3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__BTSDevicesController_sessionDidConnect___block_invoke;
    block[3] = &unk_278BB03E0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

_BYTE *__42__BTSDevicesController_sessionDidConnect___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[1605] == 1)
  {
    result = [result allowBluetoothScans:1];
    *(*(a1 + 32) + 1605) = 0;
  }

  return result;
}

- (void)showUpgradeOSPopup:(id)popup
{
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __43__BTSDevicesController_showUpgradeOSPopup___block_invoke;
  v28[3] = &unk_278BB05D0;
  v28[4] = self;
  v23 = MEMORY[0x23EEC8440](v28, a2, popup);
  v4 = MEMORY[0x277D75110];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"SW_UPDATE_TITLE" value:&stru_284EE3458 table:@"Devices"];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"SW_UPDATE_MESSAGE" value:&stru_284EE3458 table:@"Devices"];
  v9 = [v4 alertControllerWithTitle:v6 message:v8 preferredStyle:1];
  swUpdateAlert = self->_swUpdateAlert;
  self->_swUpdateAlert = v9;

  v11 = self->_swUpdateAlert;
  v12 = MEMORY[0x277D750F8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"SW_UPDATE_CLOSE_BUTTON" value:&stru_284EE3458 table:@"Devices"];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __43__BTSDevicesController_showUpgradeOSPopup___block_invoke_2;
  v26[3] = &unk_278BB05A8;
  v15 = v23;
  v27 = v15;
  v16 = [v12 actionWithTitle:v14 style:1 handler:v26];
  [(UIAlertController *)v11 addAction:v16];

  v17 = self->_swUpdateAlert;
  v18 = MEMORY[0x277D750F8];
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"SW_UPDATE_CHECK_BUTTON" value:&stru_284EE3458 table:@"Devices"];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __43__BTSDevicesController_showUpgradeOSPopup___block_invoke_3;
  v24[3] = &unk_278BB05A8;
  v25 = v15;
  v21 = v15;
  v22 = [v18 actionWithTitle:v20 style:0 handler:v24];
  [(UIAlertController *)v17 addAction:v22];

  [(BTSDevicesController *)self presentViewController:self->_swUpdateAlert animated:1 completion:0];
}

void __43__BTSDevicesController_showUpgradeOSPopup___block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 1664);
  *(v3 + 1664) = 0;

  if (a2)
  {
    v6 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v5 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=General&path=SOFTWARE_UPDATE_LINK"];
    [v6 openSensitiveURL:v5 withOptions:0];
  }
}

- (id)getLECarPlay:(id)play
{
  playCopy = play;
  if ([playCopy paired])
  {
    centralManager = self->_centralManager;
    identifier = [playCopy identifier];
    v7 = [(CBCentralManager *)centralManager retrievePeripheralWithAddress:identifier];

    if (v7 && [v7 hasTag:@"_CARPLAY_DEVICE_"])
    {
      v8 = [BTSDeviceLE deviceWithPeripheral:v7 manager:self->_centralManager];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isSupportCarPlaySetup:(id)setup
{
  v13 = *MEMORY[0x277D85DE8];
  setupCopy = setup;
  if (![(BTSDevicesController *)self isiPhone]|| ![(BTSDevicesController *)self isCarPlaySetupEnabled])
  {
    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (([setupCopy paired] & 1) == 0 && objc_msgSend(setupCopy, "isCarPlayDevice"))
    {
      v5 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = setupCopy;
        _os_log_impl(&dword_23C0F7000, v5, OS_LOG_TYPE_DEFAULT, "Unpaired classic CarPlay, no CarPlay setup: %@", &v11, 0xCu);
      }

      v6 = 0;
      goto LABEL_19;
    }

    if ([(BTSDevicesController *)self isLECarPlayEnabled])
    {
      v8 = [(BTSDevicesController *)self getLECarPlay:setupCopy];

      if (v8)
      {
        v5 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 138412290;
          v12 = setupCopy;
          v7 = "Paired classic device with LE CarPlay: %@";
          goto LABEL_17;
        }

        goto LABEL_18;
      }
    }

LABEL_20:
    v6 = 0;
    goto LABEL_21;
  }

  if (!-[BTSDevicesController isLECarPlayEnabled](self, "isLECarPlayEnabled") || ![setupCopy isCarPlayDevice])
  {
    goto LABEL_20;
  }

  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = setupCopy;
    v7 = "LE only CarPlay: %@";
LABEL_17:
    _os_log_impl(&dword_23C0F7000, v5, OS_LOG_TYPE_DEFAULT, v7, &v11, 0xCu);
  }

LABEL_18:
  v6 = 1;
LABEL_19:

LABEL_21:
  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isLECarPlayEnabled
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"EnableBLE", @"com.apple.carplay", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

- (BOOL)isCarPlaySetupEnabled
{
  v2 = objc_alloc_init(MEMORY[0x277CF8A40]);
  isCarPlaySetupEnabled = [v2 isCarPlaySetupEnabled];
  bOOLValue = [isCarPlaySetupEnabled BOOLValue];

  return bOOLValue;
}

- (void)startOutgoingCarPlaySetup:(id)setup
{
  v16 = *MEMORY[0x277D85DE8];
  setupCopy = setup;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = setupCopy;
  v7 = v6;
  if (isKindOfClass)
  {
    device = [v6 device];
    address = [device address];
    [(BTSDevicesController *)self allowBluetoothConnections:0];
    v10 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = device;
      _os_log_impl(&dword_23C0F7000, v10, OS_LOG_TYPE_DEFAULT, "CarPlay setup for classic device, %@", buf, 0xCu);
    }

    objc_initWeak(buf, device);
    objc_copyWeak(&v13, buf);
    CRStartBluetoothClassicPairing();
    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  else
  {
    device = [v6 identifier];
    address = [v7 name];
    v11 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = device;
      _os_log_impl(&dword_23C0F7000, v11, OS_LOG_TYPE_DEFAULT, "CarPlay setup for le device, UUID: %@", buf, 0xCu);
    }

    CRConnectBluetoothLE();
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __50__BTSDevicesController_startOutgoingCarPlaySetup___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__BTSDevicesController_startOutgoingCarPlaySetup___block_invoke_2;
  block[3] = &unk_278BB05F8;
  v8 = a2;
  block[4] = *(a1 + 32);
  v7 = WeakRetained;
  v5 = WeakRetained;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __50__BTSDevicesController_startOutgoingCarPlaySetup___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = sharedBluetoothSettingsLogComponent();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_23C0F7000, v3, OS_LOG_TYPE_DEFAULT, "successfully classic CarPlay paired", buf, 2u);
    }
  }

  else
  {
    if (v4)
    {
      *v7 = 0;
      _os_log_impl(&dword_23C0F7000, v3, OS_LOG_TYPE_DEFAULT, "failed to pair classic CarPlay", v7, 2u);
    }

    v5 = *(a1 + 32);
    v3 = [*(a1 + 40) address];
    [v5 reloadCellForSpecifierID:v3];
  }

  return [*(a1 + 32) setBluetoothIsBusy:0];
}

void __50__BTSDevicesController_startOutgoingCarPlaySetup___block_invoke_745(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __50__BTSDevicesController_startOutgoingCarPlaySetup___block_invoke_2_746;
  v2[3] = &unk_278BB0648;
  v3 = a2;
  v2[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

uint64_t __50__BTSDevicesController_startOutgoingCarPlaySetup___block_invoke_2_746(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = sharedBluetoothSettingsLogComponent();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      v9 = 0;
      v5 = "successfully LE CarPlay paired";
      v6 = &v9;
LABEL_6:
      _os_log_impl(&dword_23C0F7000, v3, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
    }
  }

  else if (v4)
  {
    v8 = 0;
    v5 = "failed to pair LE CarPlay";
    v6 = &v8;
    goto LABEL_6;
  }

  return [*(a1 + 32) setBluetoothIsBusy:0];
}

- (void)startIncomingCarPlaySetup:(id)setup andPasskey:(id)passkey
{
  v15 = *MEMORY[0x277D85DE8];
  setupCopy = setup;
  passkeyCopy = passkey;
  address = [setupCopy address];
  name = [setupCopy name];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%06u", objc_msgSend(passkeyCopy, "unsignedIntValue")];
  v10 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = setupCopy;
    _os_log_impl(&dword_23C0F7000, v10, OS_LOG_TYPE_DEFAULT, "CarPlay setup for classic device, %@", buf, 0xCu);
  }

  objc_initWeak(buf, setupCopy);
  objc_copyWeak(&v12, buf);
  CRConfirmAndContinueBluetoothClassicPairing();
  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);

  v11 = *MEMORY[0x277D85DE8];
}

void __61__BTSDevicesController_startIncomingCarPlaySetup_andPasskey___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__BTSDevicesController_startIncomingCarPlaySetup_andPasskey___block_invoke_2;
  block[3] = &unk_278BB05F8;
  v8 = a2;
  block[4] = *(a1 + 32);
  v7 = WeakRetained;
  v5 = WeakRetained;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __61__BTSDevicesController_startIncomingCarPlaySetup_andPasskey___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 0;
      v3 = "successfully classic CarPlay paired";
      v4 = &v9;
LABEL_6:
      _os_log_impl(&dword_23C0F7000, v2, OS_LOG_TYPE_DEFAULT, v3, v4, 2u);
    }
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) address];
    [v5 reloadCellForSpecifierID:v6];

    v2 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 0;
      v3 = "failed to pair classic CarPlay";
      v4 = &v8;
      goto LABEL_6;
    }
  }

  return [*(a1 + 32) setBluetoothIsBusy:0];
}

- (BOOL)isLEAudioLiveOnEnabled
{
  if (isLEAudioLiveOnEnabled_onceTokenLEAudio != -1)
  {
    [BTSDevicesController isLEAudioLiveOnEnabled];
  }

  return isLEAudioLiveOnEnabled_flagExists & isLEAudioLiveOnEnabled_osFeatureLEAudioEnabled & 1;
}

void __46__BTSDevicesController_isLEAudioLiveOnEnabled__block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = CFPreferencesCopyAppValue(@"LE", @"com.apple.MobileBluetooth.debug");
  if (v0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v1 = [v0 objectForKey:@"LEAudioLiveOnEnable"];
      isLEAudioLiveOnEnabled_flagExists = v1 != 0;
    }
  }

  isLEAudioLiveOnEnabled_osFeatureLEAudioEnabled = _os_feature_enabled_impl();
  v2 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109376;
    v4[1] = isLEAudioLiveOnEnabled_flagExists;
    v5 = 1024;
    v6 = isLEAudioLiveOnEnabled_osFeatureLEAudioEnabled;
    _os_log_impl(&dword_23C0F7000, v2, OS_LOG_TYPE_DEFAULT, "LEAudio - liveOnEnabled: %d, featureEnabled: %d", v4, 0xEu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)markLEAudioDevice:(id)device
{
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  v6 = [(BTSDevicesController *)self specifierForID:identifier];

  if (v6)
  {
    v7 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_23C0F7000, v7, OS_LOG_TYPE_DEFAULT, "Mark LEAudio device", v10, 2u);
    }

    name = [deviceCopy name];
    v9 = [@"[LEAudio]" stringByAppendingString:name];
    [v6 setName:v9];
  }
}

- (BOOL)BOOLFromBluetoothPreferences:(id)preferences
{
  keyExistsAndHasValidFormat = 0;
  preferencesCopy = preferences;
  CFPreferencesAppSynchronize(@"com.apple.BTServer");
  AppBooleanValue = CFPreferencesGetAppBooleanValue(preferencesCopy, @"com.apple.BTServer", &keyExistsAndHasValidFormat);

  if (AppBooleanValue)
  {
    v5 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v5 = 1;
  }

  return !v5;
}

- (void)migrateHKPairedHealthDevices
{
  if (_os_feature_enabled_impl())
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [standardUserDefaults persistentDomainForName:@"com.apple.bluetooth.settings"];
    v5 = [v4 objectForKey:@"HRM_MIGRATION_COMPLETE"];
    if (([v5 isEqualToString:@"1"] & 1) == 0)
    {
      if ([MEMORY[0x277CCD4D8] isHealthDataAvailable])
      {
        objc_initWeak(&location, self);
        healthKitStore = self->_healthKitStore;
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = __52__BTSDevicesController_migrateHKPairedHealthDevices__block_invoke;
        v7[3] = &unk_278BB06C0;
        objc_copyWeak(&v10, &location);
        v8 = v4;
        v9 = standardUserDefaults;
        [(HKHealthStore *)healthKitStore healthPeripheralsWithFilter:1 handler:v7];

        objc_destroyWeak(&v10);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __52__BTSDevicesController_migrateHKPairedHealthDevices__block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__BTSDevicesController_migrateHKPairedHealthDevices__block_invoke_2;
  v5[3] = &unk_278BB0698;
  objc_copyWeak(&v9, a1 + 6);
  v6 = v3;
  v7 = a1[4];
  v8 = a1[5];
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v9);
}

void __52__BTSDevicesController_migrateHKPairedHealthDevices__block_invoke_2(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 56));
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v23 = a1;
    obj = *(a1 + 32);
    v4 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v30;
      v25 = *MEMORY[0x277CCCB90];
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v30 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v29 + 1) + 8 * i);
          v9 = v3[211];
          v10 = [v8 identifier];
          v37 = v10;
          v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
          v12 = [v9 retrievePeripheralsWithIdentifiers:v11];
          v13 = [v12 firstObject];

          if (v13)
          {
            [v13 tag:v25];
            [v13 setCustomProperty:@"Fitness" value:@"1"];
            v14 = v3[212];
            v15 = [v8 identifier];
            v26[0] = MEMORY[0x277D85DD0];
            v26[1] = 3221225472;
            v26[2] = __52__BTSDevicesController_migrateHKPairedHealthDevices__block_invoke_775;
            v26[3] = &unk_278BB0670;
            v26[4] = v8;
            v27 = v13;
            v28 = v3;
            [v14 getEnabledStatusForPeripheral:v15 withCompletion:v26];
          }

          else
          {
            v16 = sharedBluetoothSettingsLogComponent();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              __52__BTSDevicesController_migrateHKPairedHealthDevices__block_invoke_2_cold_1(v35, v8, &v36, v16);
            }
          }
        }

        v5 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v5);
    }

    v17 = [*(v23 + 40) mutableCopy];
    [v17 setObject:@"1" forKey:@"HRM_MIGRATION_COMPLETE"];
    v18 = *(v23 + 48);
    v19 = [v17 copy];
    [v18 setPersistentDomain:v19 forName:@"com.apple.bluetooth.settings"];

    v20 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [*(v23 + 32) count];
      *buf = 134217984;
      v34 = v21;
      _os_log_impl(&dword_23C0F7000, v20, OS_LOG_TYPE_DEFAULT, "HRM migration complete. Migrated %lu devices", buf, 0xCu);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __52__BTSDevicesController_migrateHKPairedHealthDevices__block_invoke_775(uint64_t a1, int a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __52__BTSDevicesController_migrateHKPairedHealthDevices__block_invoke_775_cold_1(a1);
    }

    v5 = *(a1 + 40);
    v6 = @"1";
  }

  else
  {
    v5 = *(a1 + 40);
    if (a2)
    {
      v6 = @"1";
    }

    else
    {
      v6 = @"0";
    }
  }

  [v5 setCustomProperty:@"UpdateHealth" value:v6];
  v7 = *(a1 + 48);
  v8 = v7[212];
  v9 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__BTSDevicesController_migrateHKPairedHealthDevices__block_invoke_779;
  v10[3] = &unk_278BB0670;
  v10[4] = v9;
  v11 = v7;
  v12 = *(a1 + 40);
  [v8 removeHealthServicePairing:v9 withCompletion:v10];
}

void __52__BTSDevicesController_migrateHKPairedHealthDevices__block_invoke_779(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = sharedBluetoothSettingsLogComponent();
  v6 = v5;
  if (a3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __52__BTSDevicesController_migrateHKPairedHealthDevices__block_invoke_779_cold_1(a1);
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) identifier];
      v8 = [v7 UUIDString];
      *buf = 138412290;
      v16 = v8;
      _os_log_impl(&dword_23C0F7000, v6, OS_LOG_TYPE_DEFAULT, "Successfully migrated HRM device from HK to BT for identifier %@", buf, 0xCu);
    }

    v9 = [*(a1 + 40) _getDeviceForPeripheral:*(a1 + 48)];
    v10 = v9;
    if (v9)
    {
      [v9 setHealthDevice:1];
      [*(*(a1 + 40) + 1704) addObject:v10];
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __52__BTSDevicesController_migrateHKPairedHealthDevices__block_invoke_780;
    v12[3] = &unk_278BB0318;
    v13 = *(a1 + 40);
    v14 = v10;
    v6 = v10;
    dispatch_async(MEMORY[0x277D85CD0], v12);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __52__BTSDevicesController_migrateHKPairedHealthDevices__block_invoke_780(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + *MEMORY[0x277D3FC48]))
  {
    v3 = *(v1 + 1520);
    v4 = [*(a1 + 40) identifier];
    v5 = [v3 objectForKey:v4];

    if (!v5)
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);

      [v6 _addDevice:v7];
    }
  }
}

- (id)_headphoneSettingsControllerFor:(id)for
{
  forCopy = for;
  if ([MEMORY[0x277D0FB80] modernSettingsUIFFEnabled])
  {
    userInfo = [forCopy userInfo];
    v5 = [userInfo objectForKeyedSubscript:@"bt-device"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [userInfo objectForKeyedSubscript:@"bt-device"];

      if (v6)
      {
        device = [v6 device];
        if ([device isGenuineAirPods])
        {
          device2 = [v6 device];
          isAppleAudioDevice = [device2 isAppleAudioDevice];

          if (isAppleAudioDevice)
          {
            device3 = [v6 device];
            address = [device3 address];
            v12 = [address stringByReplacingOccurrencesOfString:@":" withString:@"-"];

            mEMORY[0x277D0FC08] = [MEMORY[0x277D0FC08] shared];
            connectedHeadphones = [mEMORY[0x277D0FC08] connectedHeadphones];
            v15 = [connectedHeadphones objectForKeyedSubscript:v12];

            v16 = [objc_alloc(MEMORY[0x277D0FB78]) initWithHeadphoneDevice:v15 btsDevice:v6];
            deviceKey = [MEMORY[0x277D0FB78] deviceKey];
            [userInfo setObject:v16 forKey:deviceKey];

            [forCopy setUserInfo:userInfo];
            v18 = [MEMORY[0x277D0FB80] controllerForSpecifier:forCopy];
            [forCopy setTarget:v18];

LABEL_18:
            goto LABEL_19;
          }
        }

        else
        {
        }

        v19 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [BTSDevicesController _headphoneSettingsControllerFor:];
        }

LABEL_17:
        v18 = 0;
        goto LABEL_18;
      }
    }

    else
    {
    }

    v6 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BTSDevicesController _headphoneSettingsControllerFor:];
    }

    goto LABEL_17;
  }

  userInfo = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(userInfo, OS_LOG_TYPE_ERROR))
  {
    [BTSDevicesController _headphoneSettingsControllerFor:];
  }

  v18 = 0;
LABEL_19:

  return v18;
}

- (void)init
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __28__BTSDevicesController_init__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)authenticationRequestHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)authenticationRequestHandler:(void *)a1 .cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1[206];
  v2 = a1[205];
  v3 = a1[207];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
  v9 = *MEMORY[0x277D85DE8];
}

void __51__BTSDevicesController_pairingAgent_peerDidUnpair___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_8(v1) identifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)peripheral:didDiscoverServices:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)peripheral:didDiscoverServices:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v4 = v0;
  _os_log_debug_impl(&dword_23C0F7000, v1, OS_LOG_TYPE_DEBUG, "Device %@ supports health service(s): %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)peripheral:didDiscoverServices:.cold.3()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10(&dword_23C0F7000, v0, v1, "Pairing HRM device: %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

void __55__BTSDevicesController_peripheral_didDiscoverServices___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_getDeviceForPeripheral:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v8 = *MEMORY[0x277D85DE8];
  v7 = [v1 name];
  [v0 isCTKDDevice];
  [v0 isManagedByWallet];
  [v0 isManagedByAliroWallet];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x1Eu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_getDeviceForCTKDPeripheral:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_addDeviceSpecifier:withDevice:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v1 = v0;
  v8 = *MEMORY[0x277D85DE8];
  [v0 isMyDevice];
  v7 = [v1 name];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)healthDeviceUnregisteredHandler:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10(&dword_23C0F7000, v0, v1, "Unregistering health device %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

void __44__BTSDevicesController__updateHealthDevices__block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_updateDevicePosition:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 name];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v2, v3, v4, v5, v6);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_updateDevicePosition:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 name];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)tableView:accessoryButtonTappedForRowWithIndexPath:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)tableView:(void *)a1 didSelectRowAtIndexPath:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 name];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v2, v3, v4, v5, v6);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)tableView:viewForFooterInSection:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)tableView:(uint64_t)a1 viewForFooterInSection:(uint64_t *)a2 .cold.2(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

void __52__BTSDevicesController_migrateHKPairedHealthDevices__block_invoke_2_cold_1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 identifier];
  v8 = [v7 UUIDString];
  *a1 = 138412290;
  *a3 = v8;
  _os_log_error_impl(&dword_23C0F7000, a4, OS_LOG_TYPE_ERROR, "Failed to migrate HealthKit HRM with identifier %@. CBPeripheral does not exist", a1, 0xCu);
}

void __52__BTSDevicesController_migrateHKPairedHealthDevices__block_invoke_775_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_8(a1) identifier];
  v3 = [v2 UUIDString];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

void __52__BTSDevicesController_migrateHKPairedHealthDevices__block_invoke_779_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_8(a1) identifier];
  v3 = [v2 UUIDString];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_headphoneSettingsControllerFor:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_headphoneSettingsControllerFor:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_headphoneSettingsControllerFor:.cold.3()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end