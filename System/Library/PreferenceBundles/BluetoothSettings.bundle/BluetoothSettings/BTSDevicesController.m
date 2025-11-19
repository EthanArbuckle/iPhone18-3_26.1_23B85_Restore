@interface BTSDevicesController
- (BOOL)BOOLFromBluetoothPreferences:(id)a3;
- (BOOL)classicDeviceIsApple:(id)a3;
- (BOOL)isCarPlaySetupEnabled;
- (BOOL)isClassicAudioDevice:(id)a3;
- (BOOL)isDeviceSupported:(id)a3;
- (BOOL)isLEAudioLiveOnEnabled;
- (BOOL)isLECarPlayEnabled;
- (BOOL)isSupportCarPlaySetup:(id)a3;
- (BOOL)isiPad;
- (BOOL)isiPhone;
- (BTSDevicesController)init;
- (double)tableView:(id)a3 estimatedHeightForFooterInSection:(int64_t)a4;
- (id)_getDeviceForCTKDPeripheral:(id)a3;
- (id)_getDeviceForPeripheral:(id)a3;
- (id)_headphoneSettingsControllerFor:(id)a3;
- (id)_heroPlacardSpecifiers;
- (id)_knownDevicesSpecifiers;
- (id)_shareDevicesSpecifiers;
- (id)_specifierForDevice:(id)a3;
- (id)_specifierForSharingDevice:(id)a3;
- (id)bluetoothEnabled:(id)a3;
- (id)getLECarPlay:(id)a3;
- (id)localizedList:(id)a3;
- (id)makeWarningAttributedString:(id)a3;
- (id)mergeDualRadioDevices:(id)a3;
- (id)namesOfDevices:(id)a3 displayableOnly:(BOOL)a4;
- (id)powerOffWarningString;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (unsigned)connectedLEAudio1DeviceCount;
- (void)_addDevice:(id)a3;
- (void)_addDeviceSpecifier:(id)a3 withDevice:(id)a4;
- (void)_peripheralDidCompletePairing:(id)a3;
- (void)_removeDevice:(id)a3;
- (void)_removeDeviceSpecifier:(id)a3;
- (void)_retrievedRegisteredHealthDevices:(id)a3;
- (void)_setupCentralScanning;
- (void)_updateDevicePosition:(id)a3;
- (void)_updateHealthDevices;
- (void)alertSheetDismissed:(id)a3;
- (void)allowBluetoothScans:(BOOL)a3;
- (void)applicationDidBecomeActive:(id)a3;
- (void)applicationDidEnterBackground:(id)a3;
- (void)applicationWillEnterForeground:(id)a3;
- (void)applicationWillResignActive:(id)a3;
- (void)authenticationRequestHandler:(id)a3;
- (void)bluetoothDenylistChanged:(id)a3;
- (void)cancelledConnectionAttemptOnTransport:(unint64_t)a3;
- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6;
- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManager:(id)a3 didUpdatePeripheralConnectionState:(id)a4;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)cleanupAlerts;
- (void)cleanupPairing;
- (void)dealloc;
- (void)deviceConnectedHandler:(id)a3;
- (void)deviceDisconnectedHandler:(id)a3;
- (void)deviceDiscoveredHandler:(id)a3;
- (void)devicePairedHandler:(id)a3;
- (void)deviceRemovedHandler:(id)a3;
- (void)deviceUnpairedHandler:(id)a3;
- (void)deviceUpdatedHandler:(id)a3;
- (void)effectiveMCSettingsDidChange:(id)a3;
- (void)fetchDADevices;
- (void)forcePushDetailViewForDevice:(id)a3;
- (void)handleDASessionEvent:(id)a3;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)healthDeviceUnregisteredHandler:(id)a3;
- (void)init;
- (void)markLEAudioDevice:(id)a3;
- (void)migrateHKPairedHealthDevices;
- (void)notifyBluetoothSettingsAppStateIsActive:(BOOL)a3;
- (void)pairingAgent:(id)a3 peerDidCompletePairing:(id)a4;
- (void)pairingAgent:(id)a3 peerDidFailToCompletePairing:(id)a4 error:(id)a5;
- (void)pairingAgent:(id)a3 peerDidUnpair:(id)a4;
- (void)peripheral:(id)a3 didCompleteChannelSoundingProcedure:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverServices:(id)a4;
- (void)peripheral:(id)a3 didOpenL2CAPChannel:(id)a4 error:(id)a5;
- (void)peripheralConnectionTimeout:(id)a3;
- (void)peripheralDidUpdateName:(id)a3;
- (void)pinRequestHandler:(id)a3;
- (void)powerChanged;
- (void)powerChangedHandler:(id)a3;
- (void)refreshCTKDDevices;
- (void)refreshUI;
- (void)registerForNotifications;
- (void)reinitDASession;
- (void)reloadCellForSpecifierID:(id)a3 animated:(BOOL)a4;
- (void)sessionDidConnect:(id)a3;
- (void)setBluetoothEnabled:(id)a3 specifier:(id)a4;
- (void)setBluetoothIsBusy:(BOOL)a3;
- (void)setSSPConfirmation:(int64_t)a3 forDevice:(id)a4;
- (void)showPairingAlert:(id)a3;
- (void)showPencilConnectionAttemptAlert:(int)a3;
- (void)showSyncContactsPopup:(id)a3;
- (void)showSyncContactsPrivacyPopup:(id)a3;
- (void)showUpgradeOSPopup:(id)a3;
- (void)sspConfirmationHandler:(id)a3;
- (void)sspNumericComparisonHandler:(id)a3;
- (void)sspPasskeyDisplayHandler:(id)a3;
- (void)startIncomingCarPlaySetup:(id)a3 andPasskey:(id)a4;
- (void)startOutgoingCarPlaySetup:(id)a3;
- (void)startedConnectionAttemptOnTransport:(unint64_t)a3;
- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateCTKDCounterparts:(id)a3 leDevice:(id)a4;
- (void)updateFirmwareUpdateRequiredDevicesList:(id)a3;
- (void)updateMainGroupFooter;
- (void)updatePoorConnectedDevicesList:(id)a3;
- (void)updateUI:(BOOL)a3;
- (void)userDidTapWalletLink:(id)a3;
- (void)userDidTapWatchLink:(id)a3;
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
    v3 = [MEMORY[0x277CBEAA8] date];
    [v3 timeIntervalSince1970];
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

    v47 = [(CBCentralManager *)v2->_centralManager sharedPairingAgent];
    [v47 setDelegate:v2];

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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v4 removeObserver:self];

  [(BTSDevicesController *)self allowBluetoothConnections:0];
  [(BTAlert *)self->_alert dismiss];
  v5 = [(CBCentralManager *)self->_centralManager sharedPairingAgent];
  [v5 setDelegate:0];

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

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [v11 objectForKey:@"path"];
  v8 = [v11 objectForKey:@"root"];
  if ([v7 length])
  {
    if ([v7 isEqualToString:@"AccessoryDetail"])
    {
      v9 = [v11 objectForKeyedSubscript:@"identifier"];
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
  v6[2](v6);
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

- (void)applicationWillResignActive:(id)a3
{
  [(BTSDevicesController *)self notifyBluetoothSettingsAppStateIsActive:0];
  [(BTSDevicesController *)self allowBluetoothConnections:0];
  self->_togglingPower = 0;
  [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) setEnabled:1];
  [(BTSDevicesController *)self setBluetoothIsBusy:0];
  [(BTSDevicesController *)self cleanupPairing];

  [(BTSDevicesController *)self cleanupAlerts];
}

- (void)applicationDidBecomeActive:(id)a3
{
  [(BTSDevicesController *)self notifyBluetoothSettingsAppStateIsActive:1];

  [(BTSDevicesController *)self allowBluetoothConnections:1];
}

- (void)applicationWillEnterForeground:(id)a3
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

- (void)applicationDidEnterBackground:(id)a3
{
  v4 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_23C0F7000, v4, OS_LOG_TYPE_DEFAULT, "applicationDidEnterBackground. Deregister for bluetooth notifications", v12, 2u);
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self];

  v6 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v6 removeObserver:self];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:self selector:sel_applicationWillResignActive_ name:*MEMORY[0x277D76768] object:0];

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 addObserver:self selector:sel_applicationWillTerminate_ name:*MEMORY[0x277D76770] object:0];

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 addObserver:self selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];

  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 addObserver:self selector:sel_applicationWillEnterForeground_ name:*MEMORY[0x277D76758] object:0];

  v11 = [(CBCentralManager *)self->_centralManager sharedPairingAgent];
  [v11 setDelegate:0];

  [(CBCentralManager *)self->_centralManager setDelegate:0];
  self->_uiRefreshed = 0;
}

- (void)notifyBluetoothSettingsAppStateIsActive:(BOOL)a3
{
  notify_set_state([(BTSDevicesController *)self bluetoothSettingsAppStateNotifyToken], a3);

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

- (BOOL)classicDeviceIsApple:(id)a3
{
  v3 = a3;
  v4 = ![v3 vendorIdSrc] && (objc_msgSend(v3, "vendorId") == 1452 || objc_msgSend(v3, "vendorId") == 76) || objc_msgSend(v3, "vendorIdSrc") == 2 && objc_msgSend(v3, "vendorId") == 1452 || objc_msgSend(v3, "vendorIdSrc") == 1 && objc_msgSend(v3, "vendorId") == 76;

  return v4;
}

- (BOOL)isClassicAudioDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 type] == 16 || objc_msgSend(v3, "type") == 17 || objc_msgSend(v3, "type") == 19 || objc_msgSend(v3, "type") == 20 || objc_msgSend(v3, "type") == 47 || objc_msgSend(v3, "type") == 22 || objc_msgSend(v3, "type") == 21 || objc_msgSend(v3, "type") == 23;

  return v4;
}

- (void)powerChanged
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CF3248] sharedInstance];
  v4 = [v3 enabled];

  v5 = [(CBCentralManager *)self->_centralManager state]== 5 || [(CBCentralManager *)self->_centralManager state]== 10;
  if (v5 == v4 && self->_power != v4)
  {
    self->_power = v4;
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
    v6 = [(CBCentralManager *)self->_centralManager sharedPairingAgent];
    v7 = [v6 retrievePairedPeers];

    v8 = [v7 countByEnumeratingWithState:&v36 objects:v43 count:16];
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
            objc_enumerationMutation(v7);
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

        v9 = [v7 countByEnumeratingWithState:&v36 objects:v43 count:16];
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
                v25 = [v24 isManagedByDeviceAccess];
                v26 = sharedBluetoothSettingsLogComponent();
                v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
                if (v25)
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

- (void)powerChangedHandler:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CF3248] sharedInstance];
  v6 = [v5 enabled];

  v7 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v4 name];
    v9 = v8;
    v10 = "off";
    if (v6)
    {
      v10 = "on";
    }

    v12 = 138412546;
    v13 = v8;
    v14 = 2080;
    v15 = v10;
    _os_log_impl(&dword_23C0F7000, v7, OS_LOG_TYPE_DEFAULT, "Received %@ with power state %s", &v12, 0x16u);
  }

  [(BTSDevicesController *)self powerChanged];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)deviceDiscoveredHandler:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v4 name];
    v8 = [v5 name];
    v18 = 136315650;
    v19 = "[BTSDevicesController deviceDiscoveredHandler:]";
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&dword_23C0F7000, v6, OS_LOG_TYPE_INFO, "%s received %@ for device %@", &v18, 0x20u);
  }

  if (self->_power && !self->_togglingPower)
  {
    v9 = [BTSDeviceClassic deviceWithDevice:v5];
    devicesDict = self->_devicesDict;
    v11 = [v5 address];
    v12 = [(NSMutableDictionary *)devicesDict objectForKey:v11];

    if (v12)
    {
      v13 = [v9 identifier];
      v14 = [(BTSDevicesController *)self specifierForID:v13];

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

- (void)devicePairedHandler:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 name];
    v8 = [v5 name];
    *buf = 136315906;
    *v60 = "[BTSDevicesController devicePairedHandler:]";
    *&v60[8] = 2112;
    *&v60[10] = v7;
    v61 = 2112;
    v62 = v8;
    v63 = 2048;
    v64 = self;
    _os_log_impl(&dword_23C0F7000, v6, OS_LOG_TYPE_DEFAULT, "%s received %@ for device %@ for BTSDeviceController instance %p", buf, 0x2Au);
  }

  v9 = [(PSSpecifier *)self->_currentDeviceSpecifier userInfo];
  v10 = [v9 objectForKey:@"PIN-ended"];

  if (self->_power && !self->_togglingPower)
  {
    v11 = [v5 address];
    v12 = [(PSSpecifier *)self->_currentDeviceSpecifier identifier];
    if ([v11 isEqualToString:v12])
    {
    }

    else
    {
      pendingOtherRadioDevicesDict = self->_pendingOtherRadioDevicesDict;
      v14 = [v5 address];
      v15 = [(NSMutableDictionary *)pendingOtherRadioDevicesDict objectForKeyedSubscript:v14];

      if (v15)
      {
        v16 = [BTSDeviceClassic deviceWithDevice:v5];
        [(BTSDevicesController *)self _addDevice:v16];

        v17 = [BTSDeviceClassic deviceWithDevice:v5];
        [(BTSDevicesController *)self _updateDevicePosition:v17];
        goto LABEL_54;
      }
    }

    [(BTSDevicesController *)self cleanupPairing];
    v18 = [(PSSpecifier *)self->_currentDeviceSpecifier userInfo];
    v19 = [v18 objectForKey:@"reverse-pairing"];
    v20 = [v19 BOOLValue];

    if (v20)
    {
      [(BTSDevicesController *)self setBluetoothIsBusy:0];
    }

    v21 = [v4 name];
    v22 = [v21 isEqualToString:*MEMORY[0x277CF3208]];

    if (v22)
    {
      if (self->_alert || ([v10 isEqualToString:@"cancelled"] & 1) != 0)
      {
LABEL_49:
        v50 = [MEMORY[0x277CF3248] sharedInstance];
        if ([v50 wasDeviceDiscovered:v5])
        {
        }

        else
        {
          v51 = [v5 paired];

          if ((v51 & 1) == 0)
          {
            v17 = [BTSDeviceClassic deviceWithDevice:v5];
            [(BTSDevicesController *)self _removeDevice:v17];
            goto LABEL_54;
          }
        }

        v17 = [v5 address];
        [(BTSDevicesController *)self reloadCellForSpecifierID:v17];
LABEL_54:

        goto LABEL_55;
      }

      v23 = [BTAlert alloc];
      v24 = [BTSDeviceClassic deviceWithDevice:v5];
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

      v30 = [(BTSDevicesController *)self rootController];
      v31 = [v30 visibleViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
LABEL_39:
        if (![v10 isEqualToString:@"entered"])
        {
          v47 = [v4 userInfo];
          v46 = [v47 objectForKey:*MEMORY[0x277CF31D8]];

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
      v48 = [(BTSDevicesController *)self transitionCoordinator];
      if (v48)
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
        v57 = self;
        v58 = v46;
        [v48 animateAlongsideTransition:0 completion:&v53];
      }

      else
      {
        [(BTAlert *)self->_alert showAlertWithResult:v46];
      }

      goto LABEL_49;
    }

    v35 = self->_pendingOtherRadioDevicesDict;
    v36 = [v5 address];
    v37 = [(NSMutableDictionary *)v35 objectForKeyedSubscript:v36];

    if (v37)
    {
      goto LABEL_24;
    }

    v38 = [BTSDeviceClassic deviceWithDevice:v5];
    [(BTSDevicesController *)self _updateDevicePosition:v38];

    v39 = [v4 name];
    v40 = [v39 isEqualToString:*MEMORY[0x277CF3210]];

    if (v40)
    {
LABEL_24:
      [(BTSDevicesController *)self reloadSpecifiers];
    }

    v41 = [v5 type];
    v42 = [v5 isServiceSupported:2];
    v43 = [v5 syncSettings];
    if (-[BTSDevicesController isiPhone](self, "isiPhone") && ([v5 isServiceSupported:0x40000] & 1) == 0 && (objc_msgSend(v5, "type") == 22 || objc_msgSend(v5, "type") == 17))
    {
      [v5 setSyncSettings:v43 & 0xFFFF00FF];
      [(BTSDevicesController *)self showSyncContactsPrivacyPopup:v5];
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
        *v60 = v41;
        *&v60[4] = 2080;
        *&v60[6] = v45;
        _os_log_impl(&dword_23C0F7000, v44, OS_LOG_TYPE_DEFAULT, "Contact privacy alert ignored for device type : %x with phonebook service %s supported", buf, 0x12u);
      }

      [v5 setSyncSettings:v43 | 0x100000000];
    }

    if ([v5 vendorId] == 76 && objc_msgSend(v5, "productId") >= 0x2007 && objc_msgSend(v5, "productId") <= 0x2008)
    {
      [(BTSDevicesController *)self showUpgradeOSPopup:v5];
    }
  }

LABEL_55:

  v52 = *MEMORY[0x277D85DE8];
}

- (void)deviceUpdatedHandler:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v4 name];
    v8 = [v5 name];
    v18 = 136315650;
    v19 = "[BTSDevicesController deviceUpdatedHandler:]";
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&dword_23C0F7000, v6, OS_LOG_TYPE_INFO, "%s received %@ for device %@", &v18, 0x20u);
  }

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 postNotificationName:@"BluetoothDeviceUpdatedNotificationConfig" object:v5];

  if (self->_power && !self->_togglingPower)
  {
    devicesDict = self->_devicesDict;
    v11 = [v5 address];
    v12 = [(NSMutableDictionary *)devicesDict objectForKey:v11];

    if (v12)
    {
      v13 = [v5 address];
      v14 = [(BTSDevicesController *)self specifierForID:v13];

      v15 = [v5 name];
      [(PSSpecifier *)v14 setName:v15];
      [(PSSpecifier *)v14 setProperty:v15 forKey:*MEMORY[0x277D40170]];
      if (self->_bluetoothIsBusy && v14 == self->_currentDeviceSpecifier && [v5 paired])
      {
        [(BTSDevicesController *)self setBluetoothIsBusy:0];
      }

      v16 = [BTSDeviceClassic deviceWithDevice:v5];
      [(BTSDevicesController *)self _updateDevicePosition:v16];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)deviceConnectedHandler:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 name];
    v8 = [v5 name];
    v30 = 136315906;
    v31 = "[BTSDevicesController deviceConnectedHandler:]";
    v32 = 2112;
    v33 = v7;
    v34 = 2112;
    v35 = v8;
    v36 = 2048;
    v37 = self;
    _os_log_impl(&dword_23C0F7000, v6, OS_LOG_TYPE_DEFAULT, "%s received %@ for device %@ for BTSDeviceController instance %p", &v30, 0x2Au);
  }

  if (self->_power && !self->_togglingPower)
  {
    v9 = [v5 address];
    v10 = [(PSSpecifier *)self->_currentDeviceSpecifier identifier];
    v11 = [v9 isEqualToString:v10];

    if (!v11)
    {
      goto LABEL_15;
    }

    [(BTSDevicesController *)self cleanupPairing];
    v12 = [(PSSpecifier *)self->_currentDeviceSpecifier userInfo];
    v13 = [v12 objectForKey:@"PIN-ended"];

    v14 = [v4 name];
    if ([v14 isEqualToString:*MEMORY[0x277CF3188]] && !self->_alert && (objc_msgSend(v13, "isEqualToString:", @"cancelled") & 1) == 0)
    {
      v15 = [v5 connected];

      if (v15)
      {
LABEL_14:
        [(BTSDevicesController *)self setBluetoothIsBusy:0];
        [(BTSDevicesController *)self allowBluetoothScans:1];

LABEL_15:
        if ([v5 isTemporaryPaired])
        {
          [(BTSDevicesController *)self reloadSpecifiers];
        }

        else
        {
          v27 = [v5 address];
          [(BTSDevicesController *)self reloadCellForSpecifierID:v27];

          v28 = [BTSDeviceClassic deviceWithDevice:v5];
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
      v17 = [BTSDeviceClassic deviceWithDevice:v5];
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
      v22 = [v4 userInfo];
      v23 = *MEMORY[0x277CF31D8];
      v24 = [v22 objectForKey:*MEMORY[0x277CF31D8]];
      [v24 unsignedIntValue];

      v25 = self->_alert;
      v14 = [v4 userInfo];
      v26 = [v14 objectForKey:v23];
      [(BTAlert *)v25 showAlertWithResult:v26];
    }

    goto LABEL_14;
  }

LABEL_23:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)deviceDisconnectedHandler:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 name];
    v8 = [v5 name];
    v12 = 136315650;
    v13 = "[BTSDevicesController deviceDisconnectedHandler:]";
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_23C0F7000, v6, OS_LOG_TYPE_DEFAULT, "%s received %@ for device %@", &v12, 0x20u);
  }

  if (self->_power && !self->_togglingPower)
  {
    if ([v5 isTemporaryPaired])
    {
      [(BTSDevicesController *)self reloadSpecifiers];
    }

    else
    {
      v9 = [v5 address];
      [(BTSDevicesController *)self reloadCellForSpecifierID:v9 animated:0];

      v10 = [BTSDeviceClassic deviceWithDevice:v5];
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

- (void)deviceRemovedHandler:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 name];
    v8 = [v5 name];
    v14 = 136315650;
    v15 = "[BTSDevicesController deviceRemovedHandler:]";
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_23C0F7000, v6, OS_LOG_TYPE_DEFAULT, "%s received %@ for device %@", &v14, 0x20u);
  }

  if (self->_power && !self->_togglingPower && ([v5 paired] & 1) == 0)
  {
    v9 = [MEMORY[0x277CF3248] sharedInstance];
    v10 = [v9 connectingDevices];
    v11 = [v10 containsObject:v5];

    if ((v11 & 1) == 0)
    {
      v12 = [BTSDeviceClassic deviceWithDevice:v5];
      [(BTSDevicesController *)self _removeDevice:v12];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)deviceUnpairedHandler:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 name];
    v8 = [v5 name];
    v15 = 136315650;
    v16 = "[BTSDevicesController deviceUnpairedHandler:]";
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_23C0F7000, v6, OS_LOG_TYPE_DEFAULT, "%s received %@ for device %@", &v15, 0x20u);
  }

  v9 = [BTSDeviceClassic deviceWithDevice:v5];
  v10 = [MEMORY[0x277CF3248] sharedInstance];
  v11 = [v10 wasDeviceDiscovered:v5];

  v12 = sharedBluetoothSettingsLogComponent();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v11)
  {
    if (v13)
    {
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&dword_23C0F7000, v12, OS_LOG_TYPE_INFO, "Device %@ was unpaired and was discovered - updating position", &v15, 0xCu);
    }

    [(BTSDevicesController *)self _updateDevicePosition:v9];
  }

  else
  {
    if (v13)
    {
      v15 = 138412290;
      v16 = v5;
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

- (void)authenticationRequestHandler:(id)a3
{
  v72 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_power && !self->_togglingPower)
  {
    v5 = [(BTSDevicesController *)self rootController];
    v6 = [v5 visibleViewController];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || self->_sspAlert || self->_alert)
    {

      goto LABEL_7;
    }

    syncContactsCarplayAlert = self->_syncContactsCarplayAlert;

    if (syncContactsCarplayAlert)
    {
LABEL_7:
      v7 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [BTSDevicesController authenticationRequestHandler:?];
      }

      goto LABEL_9;
    }

    v10 = [v4 name];
    v11 = *MEMORY[0x277CF3228];
    if ([v10 isEqualToString:*MEMORY[0x277CF3228]])
    {
    }

    else
    {
      v12 = [v4 name];
      v13 = [v12 isEqualToString:*MEMORY[0x277CF3218]];

      if (!v13)
      {
        v7 = [v4 object];
LABEL_17:
        v15 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v4 name];
          v17 = [v7 name];
          *buf = 136315906;
          v65 = "[BTSDevicesController authenticationRequestHandler:]";
          v66 = 2112;
          v67 = v16;
          v68 = 2112;
          v69 = v17;
          v70 = 2048;
          v71 = self;
          _os_log_impl(&dword_23C0F7000, v15, OS_LOG_TYPE_DEFAULT, "%s received %@ for device %@ for BTSDeviceController instance %p", buf, 0x2Au);
        }

        [(BTSDevicesController *)self setBluetoothIsBusy:1];
        currentDeviceSpecifier = self->_currentDeviceSpecifier;
        if (currentDeviceSpecifier)
        {
          v19 = [(PSSpecifier *)currentDeviceSpecifier userInfo];
          [v19 removeObjectForKey:@"reverse-pairing"];
        }

        else
        {
          if ([v7 majorClass]== 256)
          {
            v20 = [v4 userInfo];
            v21 = [v20 valueForKey:@"delayedPairingForNR"];

            if (!v21)
            {
              v53 = sharedBluetoothSettingsLogComponent();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_23C0F7000, v53, OS_LOG_TYPE_INFO, "Delaying incoming pairing attempt from computer to try to retrieve the name…", buf, 2u);
              }

              v54 = MEMORY[0x277CBEB38];
              v55 = [v4 userInfo];
              v37 = [v54 dictionaryWithDictionary:v55];

              [v37 setValue:&stru_284EE3458 forKey:@"delayedPairingForNR"];
              v56 = MEMORY[0x277CCAB88];
              v57 = [v4 name];
              v58 = [v4 object];
              v59 = [v56 notificationWithName:v57 object:v58 userInfo:v37];
              [(BTSDevicesController *)self performSelector:sel_authenticationRequestHandler_ withObject:v59 afterDelay:1.0];

LABEL_55:
LABEL_9:

              goto LABEL_10;
            }
          }

          v22 = [v7 address];
          v19 = [(BTSDevicesController *)self specifierForID:v22];

          v23 = sharedBluetoothSettingsLogComponent();
          v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
          if (v19)
          {
            if (v24)
            {
              *buf = 136315394;
              v65 = "[BTSDevicesController authenticationRequestHandler:]";
              v66 = 2112;
              v67 = v19;
              _os_log_impl(&dword_23C0F7000, v23, OS_LOG_TYPE_DEFAULT, "%s reverse-pairing attempt from %@", buf, 0x16u);
            }

            objc_storeStrong(&self->_currentDeviceSpecifier, v19);
            v25 = [(PSSpecifier *)self->_currentDeviceSpecifier identifier];
            [(BTSDevicesController *)self reloadCellForSpecifierID:v25];
          }

          else
          {
            if (v24)
            {
              *buf = 136315138;
              v65 = "[BTSDevicesController authenticationRequestHandler:]";
              _os_log_impl(&dword_23C0F7000, v23, OS_LOG_TYPE_DEFAULT, "%s reverse-pairing attempt from previously unknown device", buf, 0xCu);
            }

            v26 = [BTSDeviceClassic deviceWithDevice:v7];
            v27 = [(BTSDevicesController *)self _specifierForDevice:v26];
            v28 = self->_currentDeviceSpecifier;
            self->_currentDeviceSpecifier = v27;

            v25 = [BTSDeviceClassic deviceWithDevice:v7];
            [(BTSDevicesController *)self _addDevice:v25];
          }

          v29 = [(PSSpecifier *)self->_currentDeviceSpecifier userInfo];
          [v29 setObject:*MEMORY[0x277CBED28] forKey:@"reverse-pairing"];
        }

        v30 = [(PSSpecifier *)self->_currentDeviceSpecifier userInfo];
        [v30 removeObjectForKey:@"PIN-ended"];

        if (!self->_currentDeviceSpecifier || (-[NSObject address](v7, "address"), v31 = objc_claimAutoreleasedReturnValue(), -[PSSpecifier identifier](self->_currentDeviceSpecifier, "identifier"), v32 = objc_claimAutoreleasedReturnValue(), v33 = [v31 isEqualToString:v32], v32, v31, !v33))
        {
          v41 = sharedBluetoothSettingsLogComponent();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            [BTSDevicesController authenticationRequestHandler:];
          }

          goto LABEL_9;
        }

        if (-[NSObject type](v7, "type") != 24 || ([v4 name], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "isEqualToString:", *MEMORY[0x277CF3200]), v34, !v35))
        {
          v42 = [v7 type];
          if ([(BTSDevicesController *)self isiPad]&& (v42 & 0xFFFFFFFB) == 0x19)
          {
            v43 = [v4 name];
            v44 = *MEMORY[0x277CF3200];
            v45 = [v43 isEqualToString:*MEMORY[0x277CF3200]];

            if (v45)
            {
              v46 = sharedBluetoothSettingsLogComponent();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_23C0F7000, v46, OS_LOG_TYPE_DEFAULT, "Entering pairing flow for 2.0 mouses/trackpads", buf, 2u);
              }

              v47 = [[BTSSPPairingRequest alloc] initWithDevice:v7 andSpecifier:self->_currentDeviceSpecifier];
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

          v49 = [v4 name];
          v50 = [v49 isEqualToString:v44];

          if (v50)
          {
            [(BTSDevicesController *)self pinRequestHandler:v4];
          }

          else
          {
            v51 = [v4 name];
            v52 = [v51 isEqualToString:*MEMORY[0x277CF3220]];

            if (v52)
            {
              [(BTSDevicesController *)self sspConfirmationHandler:v4];
            }

            else
            {
              v60 = [v4 name];
              v61 = [v60 isEqualToString:v11];

              if (v61)
              {
                [(BTSDevicesController *)self sspNumericComparisonHandler:v4];
              }

              else
              {
                v62 = [v4 name];
                v63 = [v62 isEqualToString:*MEMORY[0x277CF3218]];

                if (v63)
                {
                  [(BTSDevicesController *)self sspPasskeyDisplayHandler:v4];
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
        [v7 setPIN:v38];

        v39 = [[BTSSPPairingRequest alloc] initWithDevice:v7 andSpecifier:self->_currentDeviceSpecifier];
        v40 = self->_sspAlert;
        self->_sspAlert = v39;

        [(BTSSPPairingRequest *)self->_sspAlert setPairingStyle:3 andPasskey:v37];
        [(BTSSPPairingRequest *)self->_sspAlert setDelegate:self];
        [(BTSSPPairingRequest *)self->_sspAlert show];
        goto LABEL_55;
      }
    }

    v14 = [v4 object];
    v7 = [v14 valueForKey:@"device"];

    goto LABEL_17;
  }

LABEL_10:

  v8 = *MEMORY[0x277D85DE8];
}

- (void)pinRequestHandler:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 name];
    v8 = [v5 name];
    v12 = 136315650;
    v13 = "[BTSDevicesController pinRequestHandler:]";
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
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

- (void)sspConfirmationHandler:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 name];
    v8 = [v5 name];
    v12 = 136315650;
    v13 = "[BTSDevicesController sspConfirmationHandler:]";
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_23C0F7000, v6, OS_LOG_TYPE_DEFAULT, "%s received %@ for device %@", &v12, 0x20u);
  }

  v9 = [[BTSSPPairingRequest alloc] initWithDevice:v5 andSpecifier:self->_currentDeviceSpecifier];
  sspAlert = self->_sspAlert;
  self->_sspAlert = v9;

  [(BTSSPPairingRequest *)self->_sspAlert setPairingStyle:0 andPasskey:0];
  [(BTSSPPairingRequest *)self->_sspAlert setDelegate:self];
  [(BTSSPPairingRequest *)self->_sspAlert show];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)sspNumericComparisonHandler:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  v6 = [v5 valueForKey:@"device"];
  v7 = [v5 valueForKey:@"value"];
  v8 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v4 name];
    v10 = [v6 name];
    v14 = 136315906;
    v15 = "[BTSDevicesController sspNumericComparisonHandler:]";
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    v20 = 2048;
    v21 = self;
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

- (void)sspPasskeyDisplayHandler:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  v6 = [v5 valueForKey:@"device"];
  v7 = [v5 valueForKey:@"value"];
  v8 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v4 name];
    v10 = [v6 name];
    v14 = 136315650;
    v15 = "[BTSDevicesController sspPasskeyDisplayHandler:]";
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
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

- (void)bluetoothDenylistChanged:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__BTSDevicesController_bluetoothDenylistChanged___block_invoke;
  block[3] = &unk_278BB03E0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)centralManagerDidUpdateState:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 state];
    if (v6 > 0xA)
    {
      v7 = "?";
    }

    else
    {
      v7 = off_278BB06E0[v6];
    }

    v9 = 136315138;
    v10 = v7;
    _os_log_impl(&dword_23C0F7000, v5, OS_LOG_TYPE_DEFAULT, "Received centralManagerDidUpdateState %s", &v9, 0xCu);
  }

  [(BTSDevicesController *)self powerChanged];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [(BTSDevicesController *)self _getDeviceForPeripheral:v8];
  if (v10)
  {
    [v8 setDelegate:self];
    if (-[BTSDevicesController isChannelSoundingTestingEnabled](self, "isChannelSoundingTestingEnabled") && ([v10 isChannelSoundingDevice] & 1) == 0)
    {
      v11 = [v9 objectForKeyedSubscript:*MEMORY[0x277CBDD30]];
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
    v19 = [v10 identifier];
    v20 = [(NSMutableDictionary *)devicesDict objectForKey:v19];

    if (v20)
    {
      v21 = [v10 identifier];
      v22 = [(BTSDevicesController *)self specifierForID:v21];

      v23 = [v22 name];
      v24 = [v10 name];
      v25 = [v23 isEqualToString:v24];

      if ((v25 & 1) == 0)
      {
        v26 = [v10 name];
        [v22 setName:v26];

        v27 = [v10 name];
        [v22 setProperty:v27 forKey:*MEMORY[0x277D40170]];
      }

      if (-[BTSDevicesController isLEAudioLiveOnEnabled](self, "isLEAudioLiveOnEnabled") && [v10 isLEAudioSupported])
      {
        [(BTSDevicesController *)self markLEAudioDevice:v10];
      }

      [(BTSDevicesController *)self _updateDevicePosition:v10];
      v28 = [v10 identifier];
      [(BTSDevicesController *)self reloadCellForSpecifierID:v28];
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

- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5
{
  v6 = [(BTSDevicesController *)self _getDeviceForPeripheral:a4];
  if (v6)
  {
    v11 = v6;
    v7 = [v6 identifier];
    v8 = [(PSSpecifier *)self->_currentDeviceSpecifier identifier];
    v9 = [v7 isEqualToString:v8];

    if (v9)
    {
      [(BTSDevicesController *)self setBluetoothIsBusy:0];
    }

    v10 = [v11 identifier];
    [(BTSDevicesController *)self reloadCellForSpecifierID:v10];

    v6 = v11;
  }
}

- (void)centralManager:(id)a3 didUpdatePeripheralConnectionState:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(BTSDevicesController *)self _getDeviceForPeripheral:v5];
  if (v6)
  {
    v7 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v23 = 138412290;
      v24 = v5;
      _os_log_impl(&dword_23C0F7000, v7, OS_LOG_TYPE_INFO, "didUpdatePeripheralConnectionState for device %@", &v23, 0xCu);
    }

    if ([v6 connected])
    {
      v8 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v23 = 138412290;
        v24 = v5;
        _os_log_impl(&dword_23C0F7000, v8, OS_LOG_TYPE_INFO, "Discovering services for device %@", &v23, 0xCu);
      }

      [v5 setDelegate:self];
      v9 = [(NSArray *)self->_healthServices arrayByAddingObjectsFromArray:self->_hidServices];
      if ([(BTSDevicesController *)self isChannelSoundingTestingEnabled])
      {
        v10 = [v9 mutableCopy];
        v11 = [MEMORY[0x277CBE0A0] UUIDWithString:@"185B"];
        [v10 addObject:v11];

        v12 = [v10 copy];
        v9 = v12;
      }

      [v5 discoverServices:v9];
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
            v20 = [(CBCentralManager *)self->_centralManager sharedPairingAgent];
            [v20 pairPeer:v5];
          }
        }
      }
    }

    else
    {
      v17 = [v6 identifier];
      v18 = [(PSSpecifier *)self->_currentDeviceSpecifier identifier];
      v19 = [v17 isEqualToString:v18];

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
    v21 = [v6 identifier];
    [(BTSDevicesController *)self reloadCellForSpecifierID:v21];

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
    v13 = [(BTSDevicesController *)self _getDeviceForCTKDPeripheral:v5];
    if (v13)
    {
      v14 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138412290;
        v24 = v5;
        _os_log_impl(&dword_23C0F7000, v14, OS_LOG_TYPE_DEFAULT, "CTKD device %@ connection state updated", &v23, 0xCu);
      }

      [(BTSDevicesController *)self _updateDevicePosition:v13];
      v15 = [v13 classicDevice];
      v16 = [v15 address];
      [(BTSDevicesController *)self reloadCellForSpecifierID:v16];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_peripheralDidCompletePairing:(id)a3
{
  v10 = a3;
  v4 = [v10 identifier];
  v5 = [(PSSpecifier *)self->_currentDeviceSpecifier identifier];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    [(BTSDevicesController *)self setBluetoothIsBusy:0];
  }

  [(BTSDevicesController *)self _updateDevicePosition:v10];
  v7 = [v10 identifier];
  [(BTSDevicesController *)self reloadCellForSpecifierID:v7];

  if ([v10 connected])
  {
    if ([v10 isLimitedConnectivityDevice])
    {
      [(NSMutableSet *)self->_connectedPoorBehaviorDevices addObject:v10];
      self->_mainFooterNeedsUpdate = 1;
      [(BTSDevicesController *)self updateMainGroupFooter];
    }

    if ([v10 isFirmwareUpdateRequiredDevice])
    {
      [(NSMutableSet *)self->_connectedFirmwareUpdateRequiredDevices addObject:v10];
      self->_mainFooterNeedsUpdate = 1;
      [(BTSDevicesController *)self updateMainGroupFooter];
    }

    if ([v10 isHIDDevice])
    {
      [(NSMutableSet *)self->_connectedHIDDevices addObject:v10];
      self->_mainFooterNeedsUpdate = 1;
      [(BTSDevicesController *)self updateMainGroupFooter];
    }

    if ([v10 isChannelSoundingDevice] && -[BTSDevicesController isChannelSoundingTestingEnabled](self, "isChannelSoundingTestingEnabled"))
    {
      v8 = v10;
      v9 = [v8 channelSoundingL2CAP];

      if (!v9)
      {
        [v8 openChannelSoundingL2CAP];
      }
    }
  }
}

- (void)pairingAgent:(id)a3 peerDidCompletePairing:(id)a4
{
  v5 = [(BTSDevicesController *)self _getDeviceForPeripheral:a4];
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
          v7 = [v5 healthDeviceType];

          if (v7)
          {
            [v5 setUserSelectedHealthDataSyncConfig:0];
          }
        }
      }
    }
  }
}

- (void)pairingAgent:(id)a3 peerDidFailToCompletePairing:(id)a4 error:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(BTSDevicesController *)self _getDeviceForPeripheral:v6];
  if ([v6 state])
  {
    [(CBCentralManager *)self->_centralManager cancelPeripheralConnection:v6];
  }

  if (v7)
  {
    v8 = [v7 identifier];
    v9 = [(PSSpecifier *)self->_currentDeviceSpecifier identifier];
    v10 = [v8 isEqualToString:v9];

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

- (void)pairingAgent:(id)a3 peerDidUnpair:(id)a4
{
  v5 = [(BTSDevicesController *)self _getDeviceForPeripheral:a4];
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
        v9 = [v6 identifier];
        v10 = [v8 initWithUUIDString:v9];
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __51__BTSDevicesController_pairingAgent_peerDidUnpair___block_invoke;
        v12[3] = &unk_278BB0408;
        v13 = v6;
        [(HKHealthStore *)healthKitStore unregisterPeripheralIdentifier:v10 withCompletion:v12];
      }
    }

    [(BTSDevicesController *)self _updateDevicePosition:v6];
    v11 = [v6 identifier];
    [(BTSDevicesController *)self reloadCellForSpecifierID:v11];
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

- (void)peripheralDidUpdateName:(id)a3
{
  v4 = [(BTSDevicesController *)self _getDeviceForPeripheral:a3];
  if (v4)
  {
    v9 = v4;
    v5 = [v4 identifier];
    v6 = [(BTSDevicesController *)self specifierForID:v5];

    v7 = [v9 name];
    [v6 setName:v7];

    v8 = [v9 name];
    [v6 setProperty:v8 forKey:*MEMORY[0x277D40170]];

    [(BTSDevicesController *)self _updateDevicePosition:v9];
    v4 = v9;
  }
}

- (void)peripheralConnectionTimeout:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = [v4 identifier];
  v6 = [(PSSpecifier *)self->_currentDeviceSpecifier identifier];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    if (([v4 connected] & 1) == 0)
    {
      v8 = [[BTAlert alloc] initWithDevice:v4];
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
      [v4 disconnect];
    }

    [(BTSDevicesController *)self setBluetoothIsBusy:0];
    v12 = [v4 identifier];
    [(BTSDevicesController *)self reloadCellForSpecifierID:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)peripheral:(id)a3 didDiscoverServices:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BTSDevicesController peripheral:didDiscoverServices:];
    }
  }

  else
  {
    v8 = [(BTSDevicesController *)self _getDeviceForPeripheral:v6];
    if (v8)
    {
      v9 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [v6 services];
        *buf = 138412546;
        v49 = v6;
        v50 = 2112;
        v51 = v10;
        _os_log_impl(&dword_23C0F7000, v9, OS_LOG_TYPE_INFO, "Device %@ supports services %@", buf, 0x16u);
      }

      v36 = v8;

      v39 = [MEMORY[0x277CBEB98] setWithArray:self->_healthServices];
      [MEMORY[0x277CBEB58] set];
      v38 = v37 = v6;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v11 = [v6 services];
      v12 = [v11 countByEnumeratingWithState:&v43 objects:v47 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = 0;
        v15 = *v44;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            v17 = self;
            if (*v44 != v15)
            {
              objc_enumerationMutation(v11);
            }

            v18 = *(*(&v43 + 1) + 8 * i);
            v19 = [v18 UUID];
            v20 = [v39 containsObject:v19];

            if (v20)
            {
              v21 = [v18 UUID];
              v22 = [v21 UUIDString];
              [v38 addObject:v22];
            }

            self = v17;
            hidServices = v17->_hidServices;
            v24 = [v18 UUID];
            LOBYTE(hidServices) = [(NSArray *)hidServices containsObject:v24];

            v14 |= hidServices;
          }

          v13 = [v11 countByEnumeratingWithState:&v43 objects:v47 count:16];
        }

        while (v13);
      }

      else
      {
        v14 = 0;
      }

      v25 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDFD0]];
      v26 = [v25 UUIDString];
      v27 = [v38 containsObject:v26];

      v8 = v36;
      if ((v14 & 1) != 0 && ([(NSMutableSet *)self->_connectedHIDDevices containsObject:v36]& 1) == 0)
      {
        [(NSMutableSet *)self->_connectedHIDDevices addObject:v36];
        self->_mainFooterNeedsUpdate = 1;
        [(BTSDevicesController *)self updateMainGroupFooter];
      }

      v7 = 0;
      v6 = v37;
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
            v32 = [v37 identifier];
            v33 = [v37 name];
            v34 = [v38 allObjects];
            v40[0] = MEMORY[0x277D85DD0];
            v40[1] = 3221225472;
            v40[2] = __55__BTSDevicesController_peripheral_didDiscoverServices___block_invoke;
            v40[3] = &unk_278BB0430;
            v41 = v37;
            v42 = v38;
            [(HKHealthStore *)healthKitStore registerPeripheralIdentifier:v32 name:v33 services:v34 withCompletion:v40];
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

- (void)peripheral:(id)a3 didOpenL2CAPChannel:(id)a4 error:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sharedBluetoothSettingsLogComponent();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = [v10 description];
      v15 = 138412546;
      v16 = v8;
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
    v16 = v8;
    _os_log_impl(&dword_23C0F7000, v11, OS_LOG_TYPE_DEFAULT, "Peripheral %@ did open L2CAP channel", &v15, 0xCu);
  }

  if (-[BTSDevicesController isChannelSoundingTestingEnabled](self, "isChannelSoundingTestingEnabled") && [v9 PSM] == 128)
  {
    v11 = [(BTSDevicesController *)self _getDeviceForPeripheral:v8];
    if ([v11 isChannelSoundingDevice])
    {
      [v11 setChannelSoundingL2CAP:v9];
      [(CBCentralManager *)self->_centralManager csSecurityEnable:v8];
      [(CBCentralManager *)self->_centralManager csSetDefaultSettings:v8 options:&unk_284EE73D0];
    }

    goto LABEL_4;
  }

LABEL_5:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)peripheral:(id)a3 didCompleteChannelSoundingProcedure:(id)a4 error:(id)a5
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a3;
  v9 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&dword_23C0F7000, v9, OS_LOG_TYPE_DEFAULT, "Completed channel sounding procedure with results: %@", &v12, 0xCu);
  }

  v10 = [(BTSDevicesController *)self _getDeviceForPeripheral:v8];

  [v10 sendChannelSoundingResults:v7];
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

- (void)handleDASessionEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 eventType];
  if (v5 <= 40)
  {
    if (v5 != 10)
    {
      if (v5 == 20)
      {
        v6 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *v14 = 0;
          _os_log_impl(&dword_23C0F7000, v6, OS_LOG_TYPE_INFO, "DAEventTypeInvalidated for BTSettings", v14, 2u);
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

  if (v5 != 41)
  {
    if (v5 != 42)
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
    v11 = v4;
    v6 = [v10 defaultCenter];
    v12 = [v11 device];

    v13 = [v12 identifier];
    [v6 postNotificationName:@"DADeviceLost" object:v13];

LABEL_22:
  }

LABEL_23:
}

- (void)setSSPConfirmation:(int64_t)a3 forDevice:(id)a4
{
  v11 = a4;
  if (a3)
  {
    v6 = [(PSSpecifier *)self->_currentDeviceSpecifier userInfo];
    [v6 setObject:@"cancelled" forKey:@"PIN-ended"];

    v7 = [MEMORY[0x277CF3248] sharedInstance];
    v8 = v7;
    v9 = a3;
  }

  else
  {
    if (-[BTSDevicesController isiPhone](self, "isiPhone") && [v11 isServiceSupported:0x40000])
    {
      [v11 setSyncSettings:{objc_msgSend(v11, "syncSettings") & 0xFFFF00FFLL}];
      [(BTSDevicesController *)self showSyncContactsPopup:v11];
      goto LABEL_8;
    }

    v10 = [(PSSpecifier *)self->_currentDeviceSpecifier userInfo];
    [v10 setObject:@"accepted" forKey:@"PIN-ended"];

    v7 = [MEMORY[0x277CF3248] sharedInstance];
    v8 = v7;
    v9 = 0;
  }

  [v7 acceptSSP:v9 forDevice:v11];

LABEL_8:
}

- (void)showPairingAlert:(id)a3
{
  v4 = a3;
  v5 = [(BTSDevicesController *)self view];
  v6 = [v5 window];

  if (v6)
  {
    v7 = MEMORY[0x277D75D28];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __41__BTSDevicesController_showPairingAlert___block_invoke;
    v8[3] = &unk_278BB0318;
    v8[4] = self;
    v9 = v4;
    [v7 _performWithoutDeferringTransitions:v8];
  }
}

- (id)_getDeviceForPeripheral:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  devicesDict = self->_devicesDict;
  v6 = [v4 identifier];
  v7 = [v6 UUIDString];
  v8 = [(NSMutableDictionary *)devicesDict objectForKey:v7];

  if (v8)
  {
    if ([v4 hasTag:@"_MANAGED_BY_WALLET_"])
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
      if (![v4 hasTag:@"_MANAGED_BY_ALIRO_WALLET_"])
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

  v8 = [BTSDeviceLE deviceWithPeripheral:v4 manager:self->_centralManager];
  if (![(BTSDevicesController *)self shouldHideDevice:v8])
  {
    if ([v4 hasTag:@"_MANAGED_BY_WALLET_"])
    {
      [v8 setManagedByWallet:1];
      v11 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v39) = 0;
        _os_log_impl(&dword_23C0F7000, v11, OS_LOG_TYPE_DEFAULT, "DCK : Digital Car Key are special", &v39, 2u);
      }
    }

    if ([v4 hasTag:@"_MANAGED_BY_ALIRO_WALLET_"])
    {
      [v8 setManagedByAliroWallet:1];
      v12 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v39) = 0;
        _os_log_impl(&dword_23C0F7000, v12, OS_LOG_TYPE_DEFAULT, "Aliro : Home Key are special", &v39, 2u);
      }
    }

    v13 = [v4 customProperty:@"Fitness"];

    if (v13)
    {
      [v8 setHealthDevice:1];
    }

    if (![v8 supportsCTKD])
    {
      v9 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [v8 name];
        v39 = 138412290;
        v40 = v33;
        _os_log_impl(&dword_23C0F7000, v9, OS_LOG_TYPE_DEFAULT, "CTKD : Device %@ does not support CTKD", &v39, 0xCu);
      }

      goto LABEL_29;
    }

    v14 = [MEMORY[0x277CF3248] sharedInstance];
    v15 = [v4 identifier];
    v9 = [v14 deviceFromIdentifier:v15];

    v16 = [BTSDeviceClassic deviceWithDevice:v9];
    v17 = self->_devicesDict;
    v18 = [v16 classicDevice];
    v19 = [v18 address];
    v20 = [(NSMutableDictionary *)v17 objectForKey:v19];

    if (v20)
    {
      [v20 setCtkdDevice:1];
      if ([v8 isManagedByDeviceAccess])
      {
        knownDADevices = self->_knownDADevices;
        v22 = [v4 identifier];
        v23 = [(NSMutableDictionary *)knownDADevices objectForKeyedSubscript:v22];
        [v8 setUnderlyingDADevice:v23];

        v24 = [v8 name];
        [v20 setAccessorySetupKitDisplayName:v24];

        [v20 setDenyIncomingClassicConnection:{objc_msgSend(v8, "shouldDenyIncomingClassicConnection")}];
      }

      v25 = self->_devicesDict;
      v26 = [v16 classicDevice];
      v27 = [v26 address];
      [(NSMutableDictionary *)v25 setObject:v20 forKey:v27];

      v28 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        [BTSDevicesController _getDeviceForPeripheral:];
      }

      v29 = [v4 identifier];
      v30 = [v29 UUIDString];

      if (v30)
      {
        v31 = [(NSMutableDictionary *)self->_ctkdLeDevicesDict objectForKey:v30];

        if (!v31)
        {
          [v8 setCtkdDevice:1];
          [(NSMutableDictionary *)self->_ctkdLeDevicesDict setObject:v8 forKey:v30];
          [(BTSDevicesController *)self updateCTKDCounterparts:v20 leDevice:v8];
        }
      }
    }

    else
    {
      v34 = [v4 hasTag:@"HasTS"];
      v35 = sharedBluetoothSettingsLogComponent();
      v30 = v35;
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
        v36 = [v8 name];
        v39 = 138412290;
        v40 = v36;
        _os_log_impl(&dword_23C0F7000, v30, OS_LOG_TYPE_INFO, "CTKD : Device %@ missing from list of classic paired devices", &v39, 0xCu);
      }
    }
  }

  v32 = 0;
LABEL_41:

  v37 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)_getDeviceForCTKDPeripheral:(id)a3
{
  v4 = a3;
  ctkdLeDevicesDict = self->_ctkdLeDevicesDict;
  v6 = [v4 identifier];
  v7 = [v6 UUIDString];
  v8 = [(NSMutableDictionary *)ctkdLeDevicesDict objectForKey:v7];

  if (v8)
  {
    v9 = [MEMORY[0x277CF3248] sharedInstance];
    v10 = [v4 identifier];
    v11 = [v9 deviceFromIdentifier:v10];

    v12 = [BTSDeviceClassic deviceWithDevice:v11];
    v13 = [v12 classicDevice];
    v14 = [v13 address];

    v15 = [(NSMutableDictionary *)self->_devicesDict objectForKey:v14];
    if (([v8 isManagedByWallet] & 1) != 0 || objc_msgSend(v8, "isManagedByAliroWallet"))
    {
      v16 = [(NSMutableDictionary *)self->managedByWalletDictionary objectForKey:v14];

      if (!v16)
      {
        [(NSMutableDictionary *)self->managedByWalletDictionary setValue:MEMORY[0x277CBEC38] forKey:v14];
      }
    }

    if ([v8 doesSupportBackgroundNI] && (-[NSMutableDictionary objectForKey:](self->supportsBackgroundNIDictionary, "objectForKey:", v14), v17 = objc_claimAutoreleasedReturnValue(), v17, !v17))
    {
      [(NSMutableDictionary *)self->supportsBackgroundNIDictionary setValue:MEMORY[0x277CBEC38] forKey:v14];
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

- (void)_addDevice:(id)a3
{
  v12 = a3;
  if ([(BTSDevicesController *)self shouldDisplayDevice:?])
  {
    v4 = [v12 identifier];
    if (v4)
    {
      v5 = v4;
      devicesDict = self->_devicesDict;
      v7 = [v12 identifier];
      v8 = [(NSMutableDictionary *)devicesDict objectForKey:v7];

      if (!v8)
      {
        v9 = self->_devicesDict;
        v10 = [v12 identifier];
        [(NSMutableDictionary *)v9 setObject:v12 forKey:v10];

        v11 = [(BTSDevicesController *)self _specifierForDevice:v12];
        [(BTSDevicesController *)self _addDeviceSpecifier:v11 withDevice:v12];
      }
    }
  }
}

- (void)_addDeviceSpecifier:(id)a3 withDevice:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(BTSDevicesController *)self specifierForID:@"MY_DEVICES"];
  if (v8)
  {

LABEL_7:
    v27 = v6;
    if ([v7 isMyDevice])
    {
      v15 = @"MY_DEVICES";
    }

    else
    {
      v15 = @"DEVICES";
    }

    v16 = [(BTSDevicesController *)self indexOfSpecifierID:v15];
    v12 = [MEMORY[0x277CBEB18] array];
    v17 = *MEMORY[0x277D3FC48];
    v18 = v16 + 1;
    if (v16 + 1 < [*(&self->super.super.super.super.super.isa + v17) count])
    {
      v19 = v16 + 1;
      do
      {
        v20 = [(BTSDevicesController *)self specifierAtIndex:v19];
        v21 = [v20 userInfo];
        v22 = [v21 objectForKey:@"bt-device"];

        if (!v22)
        {
          break;
        }

        v23 = [v7 isMyDevice];
        if (v23 == [v22 isMyDevice])
        {
          [v12 addObject:v22];
        }

        ++v19;
      }

      while (v19 < [*(&self->super.super.super.super.super.isa + v17) count]);
    }

    [v12 addObject:v7];
    [v12 sortUsingSelector:sel_compare_];
    v24 = [v12 indexOfObject:v7];
    v25 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [BTSDevicesController _addDeviceSpecifier:withDevice:];
    }

    v6 = v27;
    [(BTSDevicesController *)self insertSpecifier:v27 atIndex:v18 + v24 animated:1];
    goto LABEL_19;
  }

  if (![v7 isMyDevice])
  {
    goto LABEL_7;
  }

  v9 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v7 name];
    *buf = 138412290;
    v30 = v10;
    _os_log_impl(&dword_23C0F7000, v9, OS_LOG_TYPE_INFO, "Adding first known device %@", buf, 0xCu);
  }

  v28[0] = self->_myDevicesGroupSpec;
  v28[1] = v6;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  [(BTSDevicesController *)self insertContiguousSpecifiers:v11 afterSpecifierID:@"BLUETOOTH" animated:1];

  v12 = [(PSSpecifier *)self->_otherDevicesGroupSpec propertyForKey:*MEMORY[0x277D3FFB0]];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"OTHER_DEVICES" value:&stru_284EE3458 table:@"Devices"];
  [v12 setName:v14];

LABEL_19:
  v26 = *MEMORY[0x277D85DE8];
}

- (void)_removeDeviceSpecifier:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(BTSDevicesController *)self beginUpdates];
  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v18 = 138412546;
    *&v18[4] = v4;
    v19 = 2048;
    v20 = [(BTSDevicesController *)self indexOfSpecifier:v4];
    _os_log_impl(&dword_23C0F7000, v5, OS_LOG_TYPE_INFO, "Removing specifier %@ at index %lu", v18, 0x16u);
  }

  [(BTSDevicesController *)self removeSpecifier:v4 animated:1];
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

      v10 = [(BTSDevicesController *)self isMainSettingsPane];
      v11 = [(BTSDevicesController *)self table];
      if (v10)
      {
        v12 = [(BTSDevicesController *)self tableView:v11 viewForHeaderInSection:2];

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
        v12 = [(BTSDevicesController *)self tableView:v11 viewForHeaderInSection:1];

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

- (void)_removeDevice:(id)a3
{
  v4 = a3;
  devicesDict = self->_devicesDict;
  v12 = v4;
  v6 = [v4 identifier];
  v7 = [(NSMutableDictionary *)devicesDict objectForKey:v6];

  if (v7)
  {
    v8 = [v12 identifier];
    v9 = [(BTSDevicesController *)self specifierForID:v8];

    if (v9 && v9 == self->_currentDeviceSpecifier)
    {
      [v12 disconnect];
      [(BTSDevicesController *)self setBluetoothIsBusy:0];
    }

    v10 = self->_devicesDict;
    v11 = [v12 identifier];
    [(NSMutableDictionary *)v10 removeObjectForKey:v11];

    [(BTSDevicesController *)self _removeDeviceSpecifier:v9];
  }
}

- (void)allowBluetoothScans:(BOOL)a3
{
  if (a3)
  {
    v5 = [MEMORY[0x277D75128] sharedApplication];
    v6 = [v5 applicationState];

    if (v6)
    {
      return;
    }

    self->_allowScanning = a3;
    v8 = [MEMORY[0x277CF3248] sharedInstance];
    [v8 setDeviceScanningEnabled:1];
  }

  else
  {
    self->_allowScanning = 0;
    v7 = [MEMORY[0x277CF3248] sharedInstance];
    [v7 setDeviceScanningEnabled:0];

    v8 = [MEMORY[0x277CF3248] sharedInstance];
    [v8 resetDeviceScanning];
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

- (void)healthDeviceUnregisteredHandler:(id)a3
{
  v4 = [a3 object];
  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [BTSDevicesController healthDeviceUnregisteredHandler:];
  }

  if ([v4 isHealthDevice])
  {
    [v4 setHealthDevice:0];
    if (_os_feature_enabled_impl())
    {
      [v4 unpair];
    }

    else
    {
      healthKitStore = self->_healthKitStore;
      v7 = objc_alloc(MEMORY[0x277CCAD78]);
      v8 = [v4 identifier];
      v9 = [v7 initWithUUIDString:v8];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __56__BTSDevicesController_healthDeviceUnregisteredHandler___block_invoke;
      v10[3] = &unk_278BB0408;
      v11 = v4;
      [(HKHealthStore *)healthKitStore unregisterPeripheralIdentifier:v9 withCompletion:v10];
    }

    [(BTSDevicesController *)self _updateDevicePosition:v4];
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

- (void)userDidTapWatchLink:(id)a3
{
  v4 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"bridge:"];
  [v4 openSensitiveURL:v3 withOptions:0];
}

- (void)userDidTapWalletLink:(id)a3
{
  v4 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"wallet:"];
  [v4 openSensitiveURL:v3 withOptions:0];
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
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  self->_bluetoothRestricted = [v3 isBluetoothModificationAllowed] ^ 1;

  v4 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (v4)
  {
    goto LABEL_78;
  }

  v142 = *MEMORY[0x277D3FC48];
  v5 = [MEMORY[0x277CF3248] sharedInstance];
  v6 = [MEMORY[0x277CF3248] sharedInstance];
  self->_denylistEnabled = [v6 denylistEnabled];

  v7 = *MEMORY[0x277D3FD20];
  v8 = [*(&self->super.super.super.super.super.isa + v7) userInfo];
  v9 = [v8 objectForKeyedSubscript:@"invoking-client-id"];
  invokingClientID = self->_invokingClientID;
  self->_invokingClientID = v9;

  v11 = [*(&self->super.super.super.super.super.isa + v7) userInfo];
  v12 = [v11 objectForKeyedSubscript:@"custom-localized-title"];
  customTitle = self->_customTitle;
  self->_customTitle = v12;

  v14 = [*(&self->super.super.super.super.super.isa + v7) userInfo];
  v15 = [v14 objectForKeyedSubscript:@"show-apple-devices"];
  self->_showAppleDevices = [v15 BOOLValue];

  v16 = [*(&self->super.super.super.super.super.isa + v7) userInfo];
  v17 = [v16 objectForKeyedSubscript:@"show-audio-devices-only"];
  self->_showAudioDevicesOnly = [v17 BOOLValue];

  v18 = [*(&self->super.super.super.super.super.isa + v7) userInfo];
  v19 = [v18 objectForKeyedSubscript:@"show-car-stereo-devices"];
  self->_showCarStereoDevices = [v19 BOOLValue];

  v20 = [*(&self->super.super.super.super.super.isa + v7) userInfo];
  v21 = [v20 objectForKeyedSubscript:@"show-speaker-devices"];
  self->_showSpeakerDevices = [v21 BOOLValue];

  v22 = [*(&self->super.super.super.super.super.isa + v7) userInfo];
  v23 = [v22 objectForKeyedSubscript:@"show-le-devices"];
  self->_showLEDevices = [v23 BOOLValue];

  v144 = self;
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
  v40 = self;
  v41 = [(BTSDevicesController *)self loadSpecifiersFromPlistName:@"Devices" target:self];
  v42 = [v39 arrayWithArray:v41];

  v145 = [MEMORY[0x277CBEB18] array];
  if ([(BTSDevicesController *)self isMainSettingsPane]|| !self->_power)
  {
    v43 = [v42 objectAtIndexedSubscript:0];
    [v145 addObject:v43];

    v44 = [(BTSDevicesController *)self _heroPlacardSpecifiers];
    [v145 addObjectsFromArray:v44];

    v45 = [v42 objectAtIndexedSubscript:1];
    [v145 addObject:v45];
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
      v52 = [(BTSDevicesController *)self _knownDevicesSpecifiers];
      if ([v52 count])
      {
        [v145 addObject:self->_myDevicesGroupSpec];
        [v145 addObjectsFromArray:v52];
      }
    }

    v53 = [MEMORY[0x277D262A0] sharedConnection];
    v162 = *MEMORY[0x277D25DA0];
    v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v162 count:1];
    v55 = [v53 localizedRestrictionSourceDescriptionForFeatures:v54];
    restrictionDetail = self->_restrictionDetail;
    self->_restrictionDetail = v55;

    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    obj = v145;
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

      [v145 addObject:v65];
      v69 = MEMORY[0x277D3FAD8];
      v70 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v38 = 0x277CBE000;
      v71 = [v70 localizedStringForKey:@"ALLOW_NEW_CONNECTIONS" value:&stru_284EE3458 table:@"Devices"];
      v72 = [v69 preferenceSpecifierNamed:v71 target:self set:0 get:0 detail:0 cell:13 edit:0];

      v42 = v67;
      [v72 setIdentifier:@"DENYLIST_ACTION_ID"];
      [v145 addObject:v72];
    }

    v73 = [v42 objectAtIndexedSubscript:4];
    otherDevicesGroupSpec = self->_otherDevicesGroupSpec;
    self->_otherDevicesGroupSpec = v73;

    if (MGGetBoolAnswer())
    {
      v75 = [MEMORY[0x277D2BCF8] sharedInstance];
      v76 = [v75 isPaired];

      if ((v76 & 1) == 0)
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
        v40 = self;

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

    if (v40->_power)
    {
      obj = [(BTSDevicesController *)v40 _shareDevicesSpecifiers];
      v141 = v42;
      if ([obj count])
      {
        v94 = [v42 objectAtIndexedSubscript:2];
        sharingDevicesGroupSpec = v40->_sharingDevicesGroupSpec;
        v40->_sharingDevicesGroupSpec = v94;

        v96 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v97 = [v96 localizedStringForKey:@"SHARING_WITH" value:&stru_284EE3458 table:@"Devices"];
        [(PSSpecifier *)v40->_sharingDevicesGroupSpec setName:v97];

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
              v104 = v144->_sharingDevicesGroupSpec;
              v105 = MEMORY[0x277CCACA8];
              v106 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v107 = [v106 localizedStringForKey:@"SHARING_NOW" value:&stru_284EE3458 table:@"Devices"];
              v108 = [v103 name];
              v109 = [v105 stringWithFormat:v107, v108];
              [(PSSpecifier *)v104 setProperty:v109 forKey:v101];
            }

            v99 = [v143 countByEnumeratingWithState:&v151 objects:v160 count:16];
          }

          while (v99);
        }

        v40 = v144;
        [v145 addObject:v144->_sharingDevicesGroupSpec];
        [v145 addObjectsFromArray:v143];
        v48 = v142;
        v38 = 0x277CBE000uLL;
      }

      v110 = [(BTSDevicesController *)v40 _knownDevicesSpecifiers];
      if ([v110 count])
      {
        [v145 addObject:v40->_myDevicesGroupSpec];
        [v145 addObjectsFromArray:v110];
        v111 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v112 = [v111 localizedStringForKey:@"OTHER_DEVICES" value:&stru_284EE3458 table:@"Devices"];
        [(PSSpecifier *)v40->_otherDevicesGroupSpec setName:v112];

        v113 = *(v38 + 2840);
        v114 = [MEMORY[0x277CF3248] sharedInstance];
        v115 = [v114 connectingDevices];
        v116 = [v113 arrayWithArray:v115];

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

              v124 = [*(*(&v147 + 1) + 8 * k) address];
              v125 = [v145 specifierForID:v124];

              if (v125)
              {
                [(BTSDevicesController *)v40 setBluetoothIsBusy:1];
                objc_storeStrong(&v40->_currentDeviceSpecifier, v125);
              }
            }

            v121 = [v119 countByEnumeratingWithState:&v147 objects:v159 count:16];
          }

          while (v121);
        }

        v42 = v141;
      }

      [v145 addObject:v40->_otherDevicesGroupSpec];
    }

    else
    {
      v126 = [(BTSDevicesController *)v40 powerOffWarningString];
      v110 = [v145 objectAtIndexedSubscript:0];
      obj = v126;
      [v110 setProperty:v126 forKey:*MEMORY[0x277D3FF88]];
    }
  }

  objc_storeStrong((&v40->super.super.super.super.super.isa + v48), v145);
  if (v40->_pendingSetupDeviceID)
  {
    v127 = [MEMORY[0x277CF3248] sharedInstance];
    v128 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v40->_pendingSetupDeviceID];
    v129 = [v127 deviceFromIdentifier:v128];

    v130 = [v129 address];
    v131 = [(NSMutableDictionary *)v40->_devicesDict objectForKeyedSubscript:v130];

    if (v131)
    {
      v132 = [(NSMutableDictionary *)v40->_devicesDict objectForKeyedSubscript:v130];
      ctkdCounterpartDevicesDict = v40->_ctkdCounterpartDevicesDict;
      v134 = [v132 identifier];
      v135 = [(NSMutableDictionary *)ctkdCounterpartDevicesDict objectForKeyedSubscript:v134];

      if (v135)
      {
        v136 = [v135 underlyingDADevice];

        if (v136)
        {
          [(BTSDevicesController *)v40 forcePushDetailViewForDevice:v132];
          pendingSetupDeviceID = v40->_pendingSetupDeviceID;
          v40->_pendingSetupDeviceID = 0;
        }
      }
    }
  }

  v4 = *(&v40->super.super.super.super.super.isa + v48);
LABEL_78:
  v138 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)powerOffWarningString
{
  if ([(BTSDevicesController *)self isMainSettingsPane])
  {
    self->_exposureNotificationManagerEnabled = [(ENManager *)self->_exposureNotificationManager exposureNotificationEnabled];
    v3 = [MEMORY[0x277D54C20] autoUnlockEnabled];
    v4 = MGGetBoolAnswer();
    exposureNotificationManagerEnabled = self->_exposureNotificationManagerEnabled;
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = v6;
    if (v4)
    {
      if (exposureNotificationManagerEnabled)
      {
        if (v3)
        {
          v8 = @"POWER_OFF_WARNING_WITH_EN_PAU_THR";
        }

        else
        {
          v8 = @"POWER_OFF_WARNING_WITH_EN_THR";
        }
      }

      else if (v3)
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
      if (v3)
      {
        v8 = @"POWER_OFF_WARNING_WITH_EN_PAU";
      }

      else
      {
        v8 = @"POWER_OFF_WARNING_WITH_EN";
      }
    }

    else if (v3)
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

- (id)namesOfDevices:(id)a3 displayableOnly:(BOOL)a4
{
  v4 = a4;
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v22 = v6;
  v8 = [v6 allObjects];
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    v12 = !v4;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = [v14 name];
        if (v15)
        {
          v16 = v15;
          v17 = [(BTSDevicesController *)self shouldDisplayDevice:v14]| v12;

          if (v17 == 1)
          {
            v18 = [v14 name];
            [v7 addObject:v18];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  v19 = [v7 copy];
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)localizedList:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v3;
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

- (id)makeWarningAttributedString:(id)a3
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n\n %@", a3];
  v4 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v3];
  v5 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle.fill"];
  v6 = [v5 imageWithRenderingMode:1];

  v7 = [MEMORY[0x277D74270] textAttachmentWithImage:v6];
  v8 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v7];
  [v4 insertAttributedString:v8 atIndex:2];

  return v4;
}

- (id)_specifierForDevice:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v40 = v4;
    _os_log_impl(&dword_23C0F7000, v5, OS_LOG_TYPE_DEFAULT, "Creating specifier for device: %@.", buf, 0xCu);
  }

  v6 = [v4 productName];
  if ([(BTSDevicesController *)self nicknameEnabled])
  {
    v7 = [v4 name];

    v6 = v7;
  }

  v8 = [v4 classicDevice];
  if (v8)
  {
    v9 = v8;
    v10 = [v4 classicDevice];
    v11 = [v10 magicPaired];

    if (v11)
    {
      v12 = [v4 name];

      v6 = v12;
    }
  }

  if (!v6 || [(__CFString *)v6 isEqualToString:&stru_284EE3458])
  {

    v6 = @" ";
  }

  v13 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
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

  [v13 setName:v6];
  [v19 setObject:v6 forKey:*MEMORY[0x277D40170]];
  v20 = [v4 identifier];
  [v19 setObject:v20 forKey:*MEMORY[0x277D3FFB8]];

  [v19 setObject:@"BTSDeviceConfigController" forKey:v16];
  [v13 setProperties:v19];
  v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v21 setObject:v4 forKey:@"bt-device"];
  if ([v4 isCTKDDevice])
  {
    centralManager = self->_centralManager;
    v23 = [v4 classicDevice];
    v24 = [v23 address];
    v25 = [(CBCentralManager *)centralManager retrievePeripheralWithAddress:v24];

    v26 = [BTSDeviceLE deviceWithPeripheral:v25 manager:self->_centralManager];
    if ([v26 isManagedByDeviceAccess])
    {
      knownDADevices = self->_knownDADevices;
      v28 = [v25 identifier];
      v29 = [(NSMutableDictionary *)knownDADevices objectForKeyedSubscript:v28];
      [v26 setUnderlyingDADevice:v29];
    }

    v30 = @"ctkd-device";
  }

  else
  {
    dualRadioCounterpartDevicesDict = self->_dualRadioCounterpartDevicesDict;
    v32 = [v4 identifier];
    v33 = [(NSMutableDictionary *)dualRadioCounterpartDevicesDict objectForKeyedSubscript:v32];

    if (!v33)
    {
      goto LABEL_18;
    }

    v34 = self->_dualRadioCounterpartDevicesDict;
    v25 = [v4 identifier];
    v26 = [(NSMutableDictionary *)v34 objectForKeyedSubscript:v25];
    v30 = @"linked-le-device";
  }

  [v21 setObject:v26 forKey:v30];

LABEL_18:
  [v13 setUserInfo:v21];

  v35 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_specifierForSharingDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = v5;
  if (!v5 || [(__CFString *)v5 isEqualToString:&stru_284EE3458])
  {

    v6 = @" ";
  }

  v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  [v7 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [v7 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
  [v7 setName:v6];
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v8 setObject:v4 forKey:@"bt-device"];

  [v7 setUserInfo:v8];

  return v7;
}

- (id)_knownDevicesSpecifiers
{
  v160 = *MEMORY[0x277D85DE8];
  v110 = [MEMORY[0x277CBEB58] set];
  v108 = [MEMORY[0x277CBEB38] dictionary];
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v3 = [MEMORY[0x277CF3248] sharedInstance];
  v4 = [v3 pairedDevices];

  v5 = v4;
  v6 = [v4 countByEnumeratingWithState:&v144 objects:v159 count:16];
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
        v12 = [v11 classicDevice];
        v13 = [v12 address];

        v14 = [(NSMutableDictionary *)self->managedByWalletDictionary objectForKey:v13];

        if (v14)
        {
          [v11 setManagedByWallet:1];
          [v11 setManagedByAliroWallet:1];
        }

        v15 = [(NSMutableDictionary *)self->supportsBackgroundNIDictionary objectForKey:v13];

        if (v15)
        {
          [v11 setSupportsBackgroundNI:1];
        }

        if (([v10 isTemporaryPaired] & 1) == 0)
        {
          [v110 addObject:v11];
          [v108 setObject:v11 forKeyedSubscript:v13];
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

  v16 = [MEMORY[0x277CBEB38] dictionary];
  v106 = [MEMORY[0x277CBEB38] dictionary];
  v107 = v16;
  if (self->_power)
  {
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v17 = [(CBCentralManager *)self->_centralManager sharedPairingAgent];
    v18 = [v17 retrievePairedPeers];

    v19 = [v18 countByEnumeratingWithState:&v140 objects:v158 count:16];
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
            objc_enumerationMutation(v18);
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

              v26 = [v23 identifier];
              [v107 setObject:v23 forKeyedSubscript:v26];
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

        v20 = [v18 countByEnumeratingWithState:&v140 objects:v158 count:16];
      }

      while (v20);
    }

    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v27 = [(CBCentralManager *)self->_centralManager retrieveConnectedPeripheralsWithServices:0 allowAll:1];
    v28 = [v27 countByEnumeratingWithState:&v136 objects:v155 count:16];
    v16 = v107;
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

                  v35 = [v32 identifier];
                  [v107 setObject:v32 forKeyedSubscript:v35];
                  goto LABEL_52;
                }

                [v110 addObject:v33];
              }

              else
              {
                v35 = sharedBluetoothSettingsLogComponent();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v157 = v32;
                  _os_log_impl(&dword_23C0F7000, v35, OS_LOG_TYPE_DEFAULT, "Peripheral %@ should not be visible in Settings. Ignoring.", buf, 0xCu);
                }

LABEL_52:
              }
            }

            v16 = v107;
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
      v47 = [v46 identifier];
      [v16 setObject:0 forKeyedSubscript:v47];

      v48 = [BTSDeviceLE deviceWithPeripheral:v46 manager:self->_centralManager];
      v49 = v48;
      if (v48)
      {
        if ([v48 supportsCTKD])
        {
          v50 = sharedBluetoothSettingsLogComponent();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v157 = v46;
            v51 = v50;
            v52 = "Not showing peripheral because it's CTKD and will be shown with the classic device instead: %@";
LABEL_73:
            _os_log_impl(&dword_23C0F7000, v51, OS_LOG_TYPE_DEFAULT, v52, buf, 0xCu);
          }
        }

        else
        {
          v53 = [v49 relatedFutureRadioAddress];

          if (v53)
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
            v56 = [v49 relatedFutureRadioAddress];
            [(NSMutableDictionary *)pendingOtherRadioDevicesDict setObject:v49 forKey:v56];

            goto LABEL_88;
          }

          v57 = [v49 linkedRadioAddress];

          if (!v57)
          {
            goto LABEL_87;
          }

          v58 = self->_pendingOtherRadioDevicesDict;
          v59 = [v49 linkedRadioAddress];
          [(NSMutableDictionary *)v58 setObject:0 forKeyedSubscript:v59];

          v60 = [v49 linkedRadioAddress];
          v61 = [v108 objectForKeyedSubscript:v60];

          v62 = sharedBluetoothSettingsLogComponent();
          v63 = v62;
          if (!v61)
          {
            v16 = v107;
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

          v16 = v107;
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v157 = v46;
            _os_log_impl(&dword_23C0F7000, v63, OS_LOG_TYPE_DEFAULT, "Not showing peripheral because it's linked to another classic radio and will be shown with the classic device instead: %@", buf, 0xCu);
          }

          v50 = [v46 identifier];
          [v106 setObject:v46 forKeyedSubscript:v50];
        }
      }

      else
      {
        v50 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v157 = v46;
          v51 = v50;
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
  v64 = [v16 allValues];
  v65 = [v64 countByEnumeratingWithState:&v124 objects:v151 count:16];
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
          objc_enumerationMutation(v64);
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

      v66 = [v64 countByEnumeratingWithState:&v124 objects:v151 count:16];
    }

    while (v66);
  }

  [v110 unionSet:self->_knownHealthDevices];
  v73 = [MEMORY[0x277CBEB18] array];
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
        v81 = [v79 identifier];
        [(NSMutableDictionary *)devicesDict setObject:v79 forKey:v81];
      }

      v76 = [v74 countByEnumeratingWithState:&v120 objects:v150 count:16];
    }

    while (v76);
  }

  [(BTSDevicesController *)self refreshCTKDDevices];
  v82 = v106;
  if ([v106 count])
  {
    v111 = v73;
    v83 = [(BTSDevicesController *)self mergeDualRadioDevices:v106];
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
          v90 = [v88 identifier];
          [(NSMutableDictionary *)v89 setObject:v88 forKey:v90];
        }

        v85 = [v83 countByEnumeratingWithState:&v116 objects:v149 count:16];
      }

      while (v85);
    }

    v82 = v106;
    v73 = v111;
  }

  else
  {
    [(NSMutableDictionary *)self->_dualRadioCounterpartDevicesDict removeAllObjects];
  }

  v91 = [v74 allObjects];
  v92 = [v91 sortedArrayUsingComparator:&__block_literal_global];

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
          [v73 addObject:v99];
        }
      }

      v95 = [v93 countByEnumeratingWithState:&v112 objects:v148 count:16];
    }

    while (v95);
  }

  v100 = *MEMORY[0x277D85DE8];

  return v73;
}

- (id)_shareDevicesSpecifiers
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v4 = [MEMORY[0x277CF3248] sharedInstance];
  v5 = [v4 connectedDevices];

  v6 = [v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        if ([v10 isTemporaryPaired])
        {
          v11 = [BTSDeviceClassic deviceWithDevice:v10];
          [v3 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v7);
  }

  v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"name" ascending:1];
  v37 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
  v27 = v3;
  v14 = [v3 sortedArrayUsingDescriptors:v13];

  v15 = [MEMORY[0x277CBEB18] array];
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
          [v15 addObject:v22];

          sharingDevicesDict = self->_sharingDevicesDict;
          v24 = [v21 identifier];
          [(NSMutableDictionary *)sharingDevicesDict setObject:v21 forKey:v24];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v18);
  }

  v25 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)_retrievedRegisteredHealthDevices:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__BTSDevicesController__retrievedRegisteredHealthDevices___block_invoke;
  v7[3] = &unk_278BB0478;
  v7[4] = self;
  [v4 enumerateObjectsUsingBlock:v7];
  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = v4;
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

- (void)_updateDevicePosition:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(BTSDevicesController *)self specifierForID:v5];

  if (v6)
  {
    v30 = 0x7FFFFFFFFFFFFFFFLL;
    [(BTSDevicesController *)self getGroup:&v30 row:0 ofSpecifier:v6];
    if (v30 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [(BTSDevicesController *)self specifierAtIndex:[(BTSDevicesController *)self indexOfGroup:?]];
      if ([v4 isMyDevice] && v7 == self->_myDevicesGroupSpec || (objc_msgSend(v4, "isMyDevice") & 1) == 0 && v7 == self->_otherDevicesGroupSpec)
      {
        v8 = [(BTSDevicesController *)self indexOfSpecifier:v6];
        v9 = [(BTSDevicesController *)self specifierAtIndex:v8 - 1];
        v10 = [v9 userInfo];
        v11 = [v10 objectForKey:@"bt-device"];

        v12 = [(BTSDevicesController *)self specifierAtIndex:v8 + 1];
        v13 = [v12 userInfo];
        v14 = [v13 objectForKey:@"bt-device"];

        LODWORD(v12) = [v11 isMyDevice];
        if (v12 == [v4 isMyDevice])
        {
          v17 = [v11 name];
          v18 = [v4 name];
          v15 = [v17 caseInsensitiveCompare:v18] == -1 || v11 == 0;
        }

        else
        {
          v15 = v11 == 0;
        }

        v20 = [v14 isMyDevice];
        if (v20 == [v4 isMyDevice])
        {
          v22 = [v14 name];
          v23 = [v4 name];
          v21 = [v22 caseInsensitiveCompare:v23] == -1 || v14 == 0;
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
            v26 = [v4 identifier];
            *buf = 138412290;
            v32 = v26;
            _os_log_impl(&dword_23C0F7000, v25, OS_LOG_TYPE_INFO, "Reloading correctly located device %@", buf, 0xCu);
          }

          v27 = [v4 identifier];
          [(BTSDevicesController *)self reloadCellForSpecifierID:v27];

          goto LABEL_37;
        }
      }
    }

    v28 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [BTSDevicesController _updateDevicePosition:v4];
    }

    [(BTSDevicesController *)self beginUpdates];
    [(BTSDevicesController *)self _removeDeviceSpecifier:v6];
    [(BTSDevicesController *)self _addDeviceSpecifier:v6 withDevice:v4];
    [(BTSDevicesController *)self endUpdates];
  }

  else
  {
    v16 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [BTSDevicesController _updateDevicePosition:v4];
    }
  }

LABEL_37:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)updateUI:(BOOL)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = [(BTSDevicesController *)self specifierForID:@"MAIN_GROUP"];
  if (a3)
  {
    v6 = MEMORY[0x277CBEB18];
    v7 = [(BTSDevicesController *)self _shareDevicesSpecifiers];
    v8 = [v6 arrayWithArray:v7];

    v9 = MEMORY[0x277CBEB18];
    v10 = [(BTSDevicesController *)self _knownDevicesSpecifiers];
    v11 = [v9 arrayWithArray:v10];

    if ([v8 count])
    {
      sharingDevicesGroupSpec = self->_sharingDevicesGroupSpec;
      if (sharingDevicesGroupSpec)
      {
        [v8 insertObject:sharingDevicesGroupSpec atIndex:0];
      }
    }

    if ([v11 count])
    {
      v30 = v5;
      [v11 insertObject:self->_myDevicesGroupSpec atIndex:0];
      v13 = MEMORY[0x277CBEB18];
      v14 = [MEMORY[0x277CF3248] sharedInstance];
      v15 = [v14 connectingDevices];
      v16 = [v13 arrayWithArray:v15];

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

            v23 = [*(*(&v31 + 1) + 8 * i) address];
            v24 = [v11 specifierForID:v23];

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
      [v11 addObject:self->_otherDevicesGroupSpec];
    }

    [(BTSDevicesController *)self beginUpdates];
    if ([v8 count])
    {
      [(BTSDevicesController *)self addSpecifiersFromArray:v8 animated:1];
    }

    [(BTSDevicesController *)self addSpecifiersFromArray:v11 animated:1];
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

  v8 = [(BTSDevicesController *)self powerOffWarningString];
  [v5 setProperty:v8 forKey:*MEMORY[0x277D3FF88]];
  [(BTSDevicesController *)self reloadSpecifier:v5 animated:1];
  v27 = [(BTSDevicesController *)self parentViewController];

  if (v27)
  {
    v11 = [(BTSDevicesController *)self rootController];
    v28 = [v11 popToViewController:self animated:1];
LABEL_27:
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)updatePoorConnectedDevicesList:(id)a3
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
  v12 = [MEMORY[0x277CF3248] sharedInstance];
  v13 = [v12 connectedDevices];

  v14 = [v13 countByEnumeratingWithState:&v23 objects:v32 count:16];
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
        objc_enumerationMutation(v13);
      }

      v18 = [BTSDeviceClassic deviceWithDevice:*(*(&v23 + 1) + 8 * j)];
      v19 = [v18 isLimitedConnectivityDevice];
      connectedPoorBehaviorDevices = self->_connectedPoorBehaviorDevices;
      if (v19)
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

    v15 = [v13 countByEnumeratingWithState:&v23 objects:v32 count:16];
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

- (void)updateFirmwareUpdateRequiredDevicesList:(id)a3
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

- (id)bluetoothEnabled:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CF3248] sharedInstance];
  v6 = [v5 powerState];
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
    v27 = v6;
    _os_log_impl(&dword_23C0F7000, v7, OS_LOG_TYPE_INFO, "%s - toggling: %s, powerstate: %d", v25, 0x1Cu);
  }

  v10 = [MEMORY[0x277D29518] sharedInstance];
  if ([v10 isStoreDemoModeEnabled:0])
  {
    v11 = [MEMORY[0x277D29528] sharedInstance];
    v12 = [v11 isBetterTogetherDemoDevice] ^ 1;
  }

  else
  {
    v12 = 1;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithInt:v12];
  v14 = *MEMORY[0x277D3FF38];
  [v4 setProperty:v13 forKey:*MEMORY[0x277D3FF38]];

  v15 = v6 == 1 || self->_togglingPower;
  v16 = [v5 available] & v15;
  v17 = [MEMORY[0x277CCABB0] numberWithBool:v16];
  [v4 setProperty:v17 forKey:*MEMORY[0x277D3FEA8]];

  v18 = v16 == 1 && !self->_power;
  if (self->_bluetoothRestricted)
  {
    v19 = 0;
  }

  else
  {
    v19 = [v5 available];
  }

  v20 = [MEMORY[0x277CCABB0] numberWithBool:v19];
  [v4 setProperty:v20 forKey:v14];

  v21 = v6 == 2 || v18;
  v22 = [MEMORY[0x277CCABB0] numberWithInt:v21];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (void)setBluetoothEnabled:(id)a3 specifier:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a3 BOOLValue];
  v8 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v38 = v7;
    _os_log_impl(&dword_23C0F7000, v8, OS_LOG_TYPE_DEFAULT, "Toggle setBluetoothEnabled : %d", buf, 8u);
  }

  if (self->_power != v7)
  {
    if (v7)
    {
      goto LABEL_6;
    }

    v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v10 = [v9 persistentDomainForName:@"com.apple.bluetooth.settings"];
    v11 = [v10 objectForKey:@"HideGizmoPowerWarning"];

    if (v11)
    {
LABEL_6:
      [(BTSDevicesController *)self updatePowerState:v7 powerSpec:v6];
    }

    else
    {
      v13 = MEMORY[0x277D75110];
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v15 = [v14 localizedStringForKey:@"POWER_WARNING_TITLE" value:&stru_284EE3458 table:@"Devices"];
      v16 = [(BTSDevicesController *)self powerOffWarningString];
      v17 = [v13 alertControllerWithTitle:v15 message:v16 preferredStyle:1];

      v18 = MEMORY[0x277D750F8];
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"CANCEL" value:&stru_284EE3458 table:@"Devices"];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __54__BTSDevicesController_setBluetoothEnabled_specifier___block_invoke_2;
      v34[3] = &unk_278BB04E8;
      v36 = &__block_literal_global_577;
      v34[4] = self;
      v21 = v6;
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
      v31 = self;
      v32 = v21;
      v33 = &__block_literal_global_577;
      v26 = [v23 actionWithTitle:v25 style:0 handler:&v27];
      [v17 addAction:{v26, v27, v28, v29, v30, v31}];

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

- (void)setBluetoothIsBusy:(BOOL)a3
{
  if (a3)
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

- (void)alertSheetDismissed:(id)a3
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

  v7 = [(BTSDevicesController *)self rootController];
  v8 = [v7 visibleViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [(BTSDevicesController *)self rootController];
    v11 = [v10 visibleViewController];
    v12 = [v11 parentViewController];
    [v12 dismiss];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)cleanupPairing
{
  [(BTSSPPairingRequest *)self->_sspAlert dismiss];
  sspAlert = self->_sspAlert;
  self->_sspAlert = 0;

  v4 = [(BTSDevicesController *)self rootController];
  v5 = [v4 visibleViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(BTSDevicesController *)self rootController];
    v8 = [v7 visibleViewController];
    v9 = [v8 parentViewController];
    [v9 dismiss];
  }

  syncContactsCarplayAlert = self->_syncContactsCarplayAlert;
  if (syncContactsCarplayAlert)
  {
    [(UIAlertController *)syncContactsCarplayAlert dismissViewControllerAnimated:1 completion:0];
    v11 = [(PSSpecifier *)self->_currentDeviceSpecifier userInfo];
    [v11 setObject:@"cancelled" forKey:@"PIN-ended"];

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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel_applicationWillResignActive_ name:*MEMORY[0x277D76768] object:0];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:self selector:sel_applicationWillTerminate_ name:*MEMORY[0x277D76770] object:0];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 addObserver:self selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:self selector:sel_applicationDidEnterBackground_ name:*MEMORY[0x277D76660] object:0];

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 addObserver:self selector:sel_healthDeviceUnregisteredHandler_ name:@"BTSUnregisterHealthDeviceNotification" object:0];

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 addObserver:self selector:sel_powerChangedHandler_ name:*MEMORY[0x277CF3168] object:0];

  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 addObserver:self selector:sel_powerChangedHandler_ name:*MEMORY[0x277CF3230] object:0];

  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  [v11 addObserver:self selector:sel_deviceDiscoveredHandler_ name:*MEMORY[0x277CF31A8] object:0];

  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 addObserver:self selector:sel_deviceUpdatedHandler_ name:*MEMORY[0x277CF31D0] object:0];

  v13 = [MEMORY[0x277CCAB98] defaultCenter];
  [v13 addObserver:self selector:sel_deviceRemovedHandler_ name:*MEMORY[0x277CF31B0] object:0];

  v14 = [MEMORY[0x277CCAB98] defaultCenter];
  [v14 addObserver:self selector:sel_deviceUnpairedHandler_ name:*MEMORY[0x277CF31C8] object:0];

  v15 = [MEMORY[0x277CCAB98] defaultCenter];
  [v15 addObserver:self selector:sel_devicePairedStatusChangedHandler_ name:*MEMORY[0x277CF31F8] object:0];

  v16 = [MEMORY[0x277CCAB98] defaultCenter];
  [v16 addObserver:self selector:sel_deviceConnectedHandler_ name:*MEMORY[0x277CF3190] object:0];

  v17 = [MEMORY[0x277CCAB98] defaultCenter];
  [v17 addObserver:self selector:sel_deviceConnectedHandler_ name:*MEMORY[0x277CF3188] object:0];

  v18 = [MEMORY[0x277CCAB98] defaultCenter];
  [v18 addObserver:self selector:sel_deviceDisconnectedHandler_ name:*MEMORY[0x277CF31A0] object:0];

  v19 = [MEMORY[0x277CCAB98] defaultCenter];
  [v19 addObserver:self selector:sel_devicePairedHandler_ name:*MEMORY[0x277CF3208] object:0];

  v20 = [MEMORY[0x277CCAB98] defaultCenter];
  [v20 addObserver:self selector:sel_devicePairedHandler_ name:*MEMORY[0x277CF3210] object:0];

  v21 = [MEMORY[0x277CCAB98] defaultCenter];
  [v21 addObserver:self selector:sel_authenticationRequestHandler_ name:*MEMORY[0x277CF3200] object:0];

  v22 = [MEMORY[0x277CCAB98] defaultCenter];
  [v22 addObserver:self selector:sel_authenticationRequestHandler_ name:*MEMORY[0x277CF3220] object:0];

  v23 = [MEMORY[0x277CCAB98] defaultCenter];
  [v23 addObserver:self selector:sel_authenticationRequestHandler_ name:*MEMORY[0x277CF3228] object:0];

  v24 = [MEMORY[0x277CCAB98] defaultCenter];
  [v24 addObserver:self selector:sel_authenticationRequestHandler_ name:*MEMORY[0x277CF3218] object:0];

  v25 = [MEMORY[0x277CCAB98] defaultCenter];
  [v25 addObserver:self selector:sel_effectiveMCSettingsDidChange_ name:*MEMORY[0x277D25CA0] object:0];

  v26 = [MEMORY[0x277CCAB98] defaultCenter];
  [v26 addObserver:self selector:sel_deviceUpdatedHandler_ name:*MEMORY[0x277CF31F0] object:0];

  v27 = [MEMORY[0x277CCAB98] defaultCenter];
  [v27 addObserver:self selector:sel_bluetoothDenylistChanged_ name:*MEMORY[0x277CF3178] object:0];

  v28 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v28 addObserver:self selector:sel_updatePoorConnectedDevicesList_ name:@"com.apple.bluetooth.leHIDBehaviorKnown" object:0];

  v29 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v29 addObserver:self selector:sel_updateFirmwareUpdateRequiredDevicesList_ name:@"com.apple.bluetooth.leDeviceFirmwareUpdateWarning" object:0];

  v30 = [MEMORY[0x277CCAB98] defaultCenter];
  [v30 addObserver:self selector:sel_reloadSpecifiers name:*MEMORY[0x277D76810] object:0];
}

- (void)refreshUI
{
  [(NSMutableDictionary *)self->_devicesDict removeAllObjects];
  [(NSMutableDictionary *)self->_sharingDevicesDict removeAllObjects];
  [(NSMutableDictionary *)self->_ctkdLeDevicesDict removeAllObjects];
  [(NSMutableSet *)self->_connectedPoorBehaviorDevices removeAllObjects];
  [(NSMutableSet *)self->_connectedFirmwareUpdateRequiredDevices removeAllObjects];
  [(NSMutableSet *)self->_connectedHIDDevices removeAllObjects];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76768] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x277D76770] object:0];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self name:*MEMORY[0x277D76648] object:0];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 removeObserver:self name:*MEMORY[0x277D76758] object:0];

  v7 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_23C0F7000, v7, OS_LOG_TYPE_DEFAULT, "Re-register for bluetooth notifications", v9, 2u);
  }

  v8 = [(CBCentralManager *)self->_centralManager sharedPairingAgent];
  [v8 setDelegate:self];

  [(CBCentralManager *)self->_centralManager setDelegate:self];
  [(BTSDevicesController *)self reinitDASession];
  [(BTSDevicesController *)self registerForNotifications];
  [(BTSDevicesController *)self reloadSpecifiers];
  self->_uiRefreshed = 1;
}

- (void)reloadCellForSpecifierID:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = [(BTSDevicesController *)self specifierForID:a3];
  v7 = [(BTSDevicesController *)self indexPathForSpecifier:v6];

  if (v7)
  {
    v8 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]);
    v12[0] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    if (v4)
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

- (void)forcePushDetailViewForDevice:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v42 = "[BTSDevicesController forcePushDetailViewForDevice:]";
    v43 = 2112;
    v44 = v4;
    _os_log_impl(&dword_23C0F7000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  v6 = [(BTSDevicesController *)self navigationController];
  v7 = [v6 topViewController];
  v8 = [v7 childViewControllers];
  v9 = [v8 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = [(BTSDevicesController *)self navigationController];
    v12 = [v11 topViewController];
    v13 = [v12 childViewControllers];
    v14 = [v13 firstObject];

    v15 = [v14 device];
    v16 = [v15 identifier];
    v17 = [v4 identifier];
    v18 = [v16 isEqualToString:v17];

    if (v18)
    {
      v19 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v42 = v4;
        _os_log_impl(&dword_23C0F7000, v19, OS_LOG_TYPE_DEFAULT, "Stop Force Push to Detail View because we're already in this page for device %@", buf, 0xCu);
      }

      goto LABEL_11;
    }
  }

  v14 = objc_alloc_init(MEMORY[0x277D0FB70]);
  v20 = objc_alloc_init(MEMORY[0x277D3FAD8]);
  [v14 setSpecifier:v20];

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

  v26 = [v4 name];
  [v19 setObject:v26 forKey:*MEMORY[0x277D40170]];

  v27 = [v4 identifier];
  [v19 setObject:v27 forKey:*MEMORY[0x277D3FFB8]];

  [v19 setObject:@"BTSDeviceConfigController" forKey:v23];
  v28 = [v14 specifier];
  [v28 setProperties:v19];

  v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v29 setObject:v4 forKey:@"bt-device"];
  if ([v4 isCTKDDevice])
  {
    centralManager = self->_centralManager;
    v31 = [v4 classicDevice];
    v32 = [v31 address];
    v33 = [(CBCentralManager *)centralManager retrievePeripheralWithAddress:v32];

    ctkdCounterpartDevicesDict = self->_ctkdCounterpartDevicesDict;
    v35 = [v4 identifier];
    v36 = [(NSMutableDictionary *)ctkdCounterpartDevicesDict objectForKeyedSubscript:v35];

    [v29 setObject:v36 forKey:@"ctkd-device"];
  }

  v37 = [v14 specifier];
  [v37 setUserInfo:v29];

  [(BTSDevicesController *)self showController:v14];
LABEL_11:

  v38 = *MEMORY[0x277D85DE8];
}

- (id)mergeDualRadioDevices:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C0F7000, v5, OS_LOG_TYPE_DEFAULT, "Merging dual radio devices from AccessorySetupKit", buf, 2u);
  }

  v32 = [MEMORY[0x277CBEB38] dictionary];
  v33 = [MEMORY[0x277CBEB18] array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v31 = v4;
  v6 = [v4 allValues];
  v35 = [v6 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v35)
  {
    v7 = *v38;
    v8 = 0x27E1EF000uLL;
    v34 = v6;
    v36 = self;
    do
    {
      v9 = 0;
      do
      {
        if (*v38 != v7)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v37 + 1) + 8 * v9);
        v11 = [BTSDeviceLE deviceWithPeripheral:v10 manager:*(&self->super.super.super.super.super.isa + *(v8 + 1448))];
        v12 = [v11 linkedRadioAddress];
        v13 = sharedBluetoothSettingsLogComponent();
        v14 = v13;
        if (v11)
        {
          v15 = v12 == 0;
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
            v42 = v12;
            _os_log_impl(&dword_23C0F7000, v14, OS_LOG_TYPE_DEFAULT, "Device linked radio address: %@", buf, 0xCu);
          }

          v14 = [(NSMutableDictionary *)v36->_devicesDict objectForKey:v12];
          if (!v14 || ![v11 isManagedByDeviceAccess])
          {
            goto LABEL_23;
          }

          knownDADevices = v36->_knownDADevices;
          v18 = [v10 identifier];
          v19 = [(NSMutableDictionary *)knownDADevices objectForKeyedSubscript:v18];
          [v11 setUnderlyingDADevice:v19];

          ctkdCounterpartDevicesDict = v36->_ctkdCounterpartDevicesDict;
          v21 = [v14 identifier];
          v22 = [(NSMutableDictionary *)ctkdCounterpartDevicesDict objectForKeyedSubscript:v21];

          if (v22)
          {
            v23 = sharedBluetoothSettingsLogComponent();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v42 = v14;
              _os_log_error_impl(&dword_23C0F7000, v23, OS_LOG_TYPE_ERROR, "We cannot link to the new classic device because it's already linked to another LE device due to CTKD %@", buf, 0xCu);
            }

            [v33 addObject:v11];
            v6 = v34;
LABEL_23:
            v8 = 0x27E1EF000;
            self = v36;
            goto LABEL_24;
          }

          v24 = [v11 name];
          [v14 setAccessorySetupKitDisplayName:v24];

          self = v36;
          [(NSMutableDictionary *)v36->_devicesDict setObject:v14 forKey:v12];
          v25 = [v14 identifier];
          [(NSMutableDictionary *)v32 setObject:v11 forKeyedSubscript:v25];

          v26 = [v11 identifier];
          [(NSMutableDictionary *)v32 setObject:v14 forKeyedSubscript:v26];

          v6 = v34;
          v8 = 0x27E1EF000;
        }

LABEL_24:

        ++v9;
      }

      while (v35 != v9);
      v27 = [v6 countByEnumeratingWithState:&v37 objects:v43 count:16];
      v35 = v27;
    }

    while (v27);
  }

  dualRadioCounterpartDevicesDict = self->_dualRadioCounterpartDevicesDict;
  self->_dualRadioCounterpartDevicesDict = v32;

  v29 = *MEMORY[0x277D85DE8];

  return v33;
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
    v4 = [(CBCentralManager *)self->_centralManager sharedPairingAgent];
    v5 = [v4 retrievePairedPeers];

    obj = v5;
    v6 = [v5 countByEnumeratingWithState:&v44 objects:v52 count:16];
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
              v16 = [v12 identifier];
              *buf = 138412290;
              v49 = v16;
              _os_log_impl(&dword_23C0F7000, v15, OS_LOG_TYPE_DEFAULT, "Get derived device for CTKD device: %@", buf, 0xCu);
            }

            v17 = [MEMORY[0x277CF3248] sharedInstance];
            v18 = [v12 identifier];
            v19 = [v17 deviceFromIdentifier:v18];

            v43 = v19;
            v20 = [BTSDeviceClassic deviceWithDevice:v19];
            devicesDict = self->_devicesDict;
            v22 = [v20 classicDevice];
            v23 = [v22 address];
            v24 = [(NSMutableDictionary *)devicesDict objectForKey:v23];

            if (v24)
            {
              [v24 setCtkdDevice:1];
              if ([v14 isManagedByDeviceAccess])
              {
                knownDADevices = self->_knownDADevices;
                v26 = [v12 identifier];
                v27 = [(NSMutableDictionary *)knownDADevices objectForKeyedSubscript:v26];
                [v14 setUnderlyingDADevice:v27];

                v28 = [v14 name];
                [v24 setAccessorySetupKitDisplayName:v28];

                [v24 setDenyIncomingClassicConnection:{objc_msgSend(v14, "shouldDenyIncomingClassicConnection")}];
              }

              v29 = self->_devicesDict;
              v30 = [v20 classicDevice];
              v31 = [v30 address];
              [(NSMutableDictionary *)v29 setObject:v24 forKey:v31];

              v32 = sharedBluetoothSettingsLogComponent();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
              {
                v36 = [v14 name];
                v37 = [v24 isCTKDDevice];
                *buf = v39;
                v49 = v36;
                v50 = 1024;
                v51 = v37;
                _os_log_debug_impl(&dword_23C0F7000, v32, OS_LOG_TYPE_DEBUG, "CTKD : classic device found in list %@ with CTKD : %d", buf, 0x12u);
              }

              v33 = [v12 identifier];
              v34 = [v33 UUIDString];

              if (v34)
              {
                v35 = [(NSMutableDictionary *)self->_ctkdLeDevicesDict objectForKey:v34];

                if (!v35)
                {
                  [v14 setCtkdDevice:1];
                  [(NSMutableDictionary *)self->_ctkdLeDevicesDict setObject:v14 forKey:v34];
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

- (void)updateCTKDCounterparts:(id)a3 leDevice:(id)a4
{
  ctkdCounterpartDevicesDict = self->_ctkdCounterpartDevicesDict;
  v7 = a4;
  v8 = a3;
  v9 = [v8 identifier];
  [(NSMutableDictionary *)ctkdCounterpartDevicesDict setObject:v7 forKeyedSubscript:v9];

  v10 = self->_ctkdCounterpartDevicesDict;
  v11 = [v7 identifier];

  [(NSMutableDictionary *)v10 setObject:v8 forKeyedSubscript:v11];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v44.receiver = self;
  v44.super_class = BTSDevicesController;
  v6 = a4;
  v7 = [(BTSDevicesController *)&v44 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(BTSDevicesController *)self indexForIndexPath:v6];

  v9 = objc_opt_class();
  if (v9 == objc_opt_class())
  {
    v11 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark.circle.fill"];
    v12 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v11];
    v21 = [MEMORY[0x277D75348] lightGrayColor];
    [v12 setTintColor:v21];

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
      v13 = [v12 userInfo];
      v14 = [v13 objectForKeyedSubscript:@"bt-device"];

      if ([v14 paired] & 1) != 0 || (objc_msgSend(v14, "isHealthDevice") & 1) != 0 || (objc_msgSend(v14, "isManagedByDeviceAccess"))
      {
        v15 = 1;
      }

      else
      {
        v15 = [v14 isManagedByAliroWallet];
      }

      LOBYTE(v16) = [v14 connected];
      if ([v14 isCTKDDevice])
      {
        centralManager = self->_centralManager;
        v18 = [v14 classicDevice];
        v19 = [v18 address];
        v20 = [(CBCentralManager *)centralManager retrievePeripheralWithAddress:v19];

        if ([v14 connected])
        {
          v16 = 1;
        }

        else
        {
          v16 = [v20 isConnectedToSystem];
        }

        v22 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [v11 title];
          *buf = 138412546;
          v46 = v23;
          v47 = 1024;
          v48 = v16;
          _os_log_impl(&dword_23C0F7000, v22, OS_LOG_TYPE_DEFAULT, "CTKD : cell %@ is connected %d", buf, 0x12u);
        }
      }

      dualRadioCounterpartDevicesDict = self->_dualRadioCounterpartDevicesDict;
      v25 = [v14 identifier];
      v26 = [(NSMutableDictionary *)dualRadioCounterpartDevicesDict objectForKeyedSubscript:v25];

      v27 = (v26 != 0) | v16;
      if (v26 && (v16 & 1) == 0)
      {
        v28 = self->_dualRadioCounterpartDevicesDict;
        v29 = [v14 identifier];
        v30 = [(NSMutableDictionary *)v28 objectForKeyedSubscript:v29];
        v27 = [v30 connected];
      }

      v43 = 0;
      if ([v14 isMyDevice] && (objc_msgSend(v14, "isApplePencil:", &v43) & 1) == 0 && objc_msgSend(v14, "isLimitedConnectivityDevice"))
      {
        [v11 setHasLimitedConnectivity:1];
      }

      v31 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = [v11 title];
        *buf = 138413058;
        v46 = v32;
        v47 = 1024;
        v48 = v15;
        v49 = 1024;
        v50 = v27 & 1;
        v51 = 2112;
        v52 = v14;
        _os_log_impl(&dword_23C0F7000, v31, OS_LOG_TYPE_INFO, "Setting cell %@ paired %d and connected %d, device:%@", buf, 0x22u);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        ctkdCounterpartDevicesDict = self->_ctkdCounterpartDevicesDict;
        v34 = [v14 identifier];
        v35 = [(NSMutableDictionary *)ctkdCounterpartDevicesDict objectForKeyedSubscript:v34];

        v36 = [v35 shouldDenyIncomingClassicConnection];
      }

      else
      {
        if ([v14 shouldDenyIncomingClassicConnection])
        {
          v36 = 1;
          goto LABEL_31;
        }

        v35 = [v14 relatedFutureRadioAddress];
        v36 = v35 != 0;
      }

LABEL_31:
      [v11 setDeviceStatePaired:v15 andConnected:v27 & 1 andPendingSetup:v36];
      if (self->_bluetoothIsBusy)
      {
        v37 = [v14 identifier];
        v38 = [(PSSpecifier *)self->_currentDeviceSpecifier identifier];
        v39 = [v37 isEqualToString:v38];

        if (v39)
        {
          if (v15)
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

- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(BTSDevicesController *)self indexForIndexPath:v5];
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
        v21 = [v5 row];
        v22 = [v5 section];
        v23 = [*(&self->super.super.super.super.super.isa + v8) count];
        v27 = 134219008;
        v28 = v21;
        v29 = 2048;
        v30 = v22;
        v31 = 2048;
        v32 = v6;
        v33 = 2048;
        v34 = v7;
        v35 = 2048;
        v36 = v23;
        _os_log_error_impl(&dword_23C0F7000, v11, OS_LOG_TYPE_ERROR, "Invalid index %ld in section %ld; rowIndex : %ld\t myDevicesGroupIndex : %ld\ttotal specifiers count %lu", &v27, 0x34u);
      }

      [(BTSDevicesController *)self reloadSpecifiers];
      v6 = [(BTSDevicesController *)self indexForIndexPath:v5];
      v12 = [(BTSDevicesController *)self indexOfSpecifierID:@"MY_DEVICES"];
      [*(&self->super.super.super.super.super.isa + v8) count];
      v13 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v24 = [v5 row];
        v25 = [v5 section];
        v26 = [*(&self->super.super.super.super.super.isa + v8) count];
        v27 = 134219008;
        v28 = v24;
        v29 = 2048;
        v30 = v25;
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

- (BOOL)isDeviceSupported:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBE0B0] isDeviceSupportedWithType:objc_msgSend(v3 VIDsrc:"type") VID:objc_msgSend(v3 PID:{"vendorIdSrc"), objc_msgSend(v3, "vendorId"), objc_msgSend(v3, "productId")}];
  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v3 type];
    v7 = [v3 vendorIdSrc];
    v8 = [v3 vendorId];
    v9 = [v3 productId];
    v13 = 136316418;
    v14 = "[BTSDevicesController isDeviceSupported:]";
    v10 = "UNSUPPORTED";
    v16 = v6;
    v15 = 1024;
    if (v4)
    {
      v10 = "SUPPORTED";
    }

    v17 = 1024;
    v18 = v7;
    v19 = 1024;
    v20 = v8;
    v21 = 1024;
    v22 = v9;
    v23 = 2080;
    v24 = v10;
    _os_log_impl(&dword_23C0F7000, v5, OS_LOG_TYPE_INFO, "%s - type=%d vendorSrc=%d VID=0x%04X PID=0x%04X: %s", &v13, 0x2Eu);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BTSDevicesController *)self specifierAtIndex:[(BTSDevicesController *)self indexForIndexPath:v7]];
  v9 = [v8 userInfo];
  v10 = [v9 objectForKey:@"bt-device"];

  if (!self->_bluetoothIsBusy)
  {
    v11 = [(BTSDevicesController *)self specifierForID:@"DENYLIST_ACTION_ID"];

    if (v11 == v8)
    {
      v12 = [MEMORY[0x277CF3248] sharedInstance];
      v13 = [v12 denylistEnabled];

      if (v13)
      {
        v14 = [MEMORY[0x277CF3248] sharedInstance];
        [v14 setDenylistEnabled:0];

        [(BTSDevicesController *)self reloadSpecifiers];
      }
    }
  }

  if (v10)
  {
    v15 = [v6 cellForRowAtIndexPath:v7];
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

    v17 = [v10 classicDevice];
    v18 = [(BTSDevicesController *)self isDeviceSupported:v17];

    v53 = v15;
    if (v18)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v10;
        v20 = [v19 device];
        v21 = [v20 isServiceSupported:4096];

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
        v34 = [v10 identifier];
        v35 = [(NSMutableDictionary *)sharingDevicesDict objectForKey:v34];

        if (v35)
        {
          [v10 unpair];
          v36 = self->_sharingDevicesDict;
          v37 = [v10 identifier];
          [(NSMutableDictionary *)v36 removeObjectForKey:v37];

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

                v44 = [MEMORY[0x277CF3248] sharedInstance];
                [v44 setDenylistEnabled:0];
              }

              [(BTSDevicesController *)self setBluetoothIsBusy:1];
              [(BTSDevicesController *)self allowBluetoothScans:0];
              v45 = [v10 identifier];
              v46 = [(BTSDevicesController *)self indexOfSpecifierID:v45];

              if (v46 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v47 = [v6 cellForRowAtIndexPath:v7];
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
          v49 = [v38 identifier];
          v50 = [(BTSDevicesController *)self indexOfSpecifierID:v49];

          if (v50 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v51 = [v6 cellForRowAtIndexPath:v7];
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

- (double)tableView:(id)a3 estimatedHeightForFooterInSection:(int64_t)a4
{
  v6 = a3;
  if (!a4 || a4 == 1 && (self->_denylistEnabled || [(NSMutableDictionary *)self->_sharingDevicesDict count]) || self->_denylistEnabled)
  {
    v7 = 42.0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = BTSDevicesController;
    [(BTSDevicesController *)&v10 tableView:v6 heightForFooterInSection:a4];
    v7 = v9;
  }

  return v7;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v62[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (a4 || self->_denylistEnabled)
  {
    v60.receiver = self;
    v60.super_class = BTSDevicesController;
    v7 = [(BTSDevicesController *)&v60 tableView:v6 viewForFooterInSection:a4];
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
      v23 = [(BTSDevicesController *)self connectedPoorBehaviorDeviceNames];
      v53 = v23;
      v54 = v22;
      if ([v23 count])
      {
        if ([v23 count] <= 1)
        {
          v24 = @"SINGULAR";
        }

        else
        {
          v24 = @"PLURAL";
        }

        v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_DISCOVERABLE_WARNING_%@", v22, v24, v23, v22];
        v26 = [(BTSDevicesController *)self localizedList:v23];
        v27 = MEMORY[0x277CCACA8];
        v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v29 = [v28 localizedStringForKey:v25 value:&stru_284EE3458 table:@"Devices"];
        v30 = [v27 localizedStringWithFormat:v29, v26];

        v31 = [(BTSDevicesController *)self makeWarningAttributedString:v30];
        [v19 appendAttributedString:v31];
      }

      v32 = [(BTSDevicesController *)self connectedFirmwareUpdateRequiredDeviceNames];
      if ([v32 count])
      {
        if ([v32 count] <= 1)
        {
          v33 = @"SINGULAR";
        }

        else
        {
          v33 = @"PLURAL";
        }

        v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"FIRMWARE_WARNING_%@", v33];
        v35 = [(BTSDevicesController *)self localizedList:v32];
        v36 = MEMORY[0x277CCACA8];
        v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v38 = [v37 localizedStringForKey:v34 value:&stru_284EE3458 table:@"Devices"];
        v39 = [v36 localizedStringWithFormat:v38, v35];

        v40 = [(BTSDevicesController *)self makeWarningAttributedString:v39];
        [v19 appendAttributedString:v40];
      }

      v41 = objc_opt_new();
      [v41 setAlignment:4];
      v42 = [MEMORY[0x277D756E0] groupedFooterConfiguration];
      v43 = [v42 textProperties];
      v44 = [v43 font];

      v45 = [v42 textProperties];
      v46 = [v45 color];

      v47 = *MEMORY[0x277D740A8];
      v61[0] = *MEMORY[0x277D740C0];
      v61[1] = v47;
      v62[0] = v46;
      v62[1] = v44;
      v61[2] = *MEMORY[0x277D74118];
      v62[2] = v41;
      v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:3];
      [v19 addAttributes:v48 range:{0, objc_msgSend(v19, "length")}];

      v7 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:@"MainGroupFooterId"];
      v49 = [v7 textLabel];
      [v49 setTextAlignment:4];

      v50 = [v7 textLabel];
      [v50 setNumberOfLines:0];

      v51 = [v7 textLabel];
      [v51 setAttributedText:v19];

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

- (void)showSyncContactsPopup:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v35 = "[BTSDevicesController showSyncContactsPopup:]";
    v36 = 2048;
    v37 = self;
    v38 = 2112;
    v39 = v4;
    _os_log_impl(&dword_23C0F7000, v5, OS_LOG_TYPE_DEFAULT, "%s Showing Sync Contacts Popup from BTSDeviceController instance %p, for device: %@", buf, 0x20u);
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __46__BTSDevicesController_showSyncContactsPopup___block_invoke;
  v32[3] = &unk_278BB0580;
  v32[4] = self;
  v33 = v4;
  v27 = v4;
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

- (void)showSyncContactsPrivacyPopup:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v57 = "[BTSDevicesController showSyncContactsPrivacyPopup:]";
    v58 = 2048;
    v59 = self;
    v60 = 2112;
    v61 = v5;
    _os_log_impl(&dword_23C0F7000, v6, OS_LOG_TYPE_DEFAULT, "%s Showing Sync Contacts Popup from BTSDeviceController instance %p, for device: %@", buf, 0x20u);
  }

  objc_storeStrong(&_currentDevice, a3);
  v46 = v5;
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
    v20 = [v46 address];
    v21 = [(NSMutableDictionary *)devicesDict objectForKeyedSubscript:v20];
    v22 = _currentBTSDevice;
    _currentBTSDevice = v21;

    [(BTSDevicesController *)self setNotification:CFUserNotificationCreate(0, 100.0, 3uLL, buf, v17)];
    [(BTSDevicesController *)self setRunLoopSource:CFUserNotificationCreateRunLoopSource(0, [(BTSDevicesController *)self notification], NotificationCallback, 0)];
    Main = CFRunLoopGetMain();
    v24 = [(BTSDevicesController *)self runLoopSource];
    CFRunLoopAddSource(Main, v24, *MEMORY[0x277CBF048]);
  }

  else
  {
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __53__BTSDevicesController_showSyncContactsPrivacyPopup___block_invoke;
    v51[3] = &unk_278BB0580;
    v52 = v5;
    v53 = self;
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

- (void)showPencilConnectionAttemptAlert:(int)a3
{
  v16 = objc_alloc_init(MEMORY[0x277CCACA8]);
  if (a3 <= 2)
  {
    v5 = off_278BB0738[a3];
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

- (void)effectiveMCSettingsDidChange:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__BTSDevicesController_effectiveMCSettingsDidChange___block_invoke;
  block[3] = &unk_278BB03E0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)startedConnectionAttemptOnTransport:(unint64_t)a3
{
  if (a3 == 3)
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

- (void)cancelledConnectionAttemptOnTransport:(unint64_t)a3
{
  if (a3 == 3)
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

- (void)sessionDidConnect:(id)a3
{
  v4 = [a3 configuration];
  v5 = [v4 transportType];

  if (v5 == 3)
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

- (void)showUpgradeOSPopup:(id)a3
{
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __43__BTSDevicesController_showUpgradeOSPopup___block_invoke;
  v28[3] = &unk_278BB05D0;
  v28[4] = self;
  v23 = MEMORY[0x23EEC8440](v28, a2, a3);
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

- (id)getLECarPlay:(id)a3
{
  v4 = a3;
  if ([v4 paired])
  {
    centralManager = self->_centralManager;
    v6 = [v4 identifier];
    v7 = [(CBCentralManager *)centralManager retrievePeripheralWithAddress:v6];

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

- (BOOL)isSupportCarPlaySetup:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(BTSDevicesController *)self isiPhone]|| ![(BTSDevicesController *)self isCarPlaySetupEnabled])
  {
    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (([v4 paired] & 1) == 0 && objc_msgSend(v4, "isCarPlayDevice"))
    {
      v5 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v4;
        _os_log_impl(&dword_23C0F7000, v5, OS_LOG_TYPE_DEFAULT, "Unpaired classic CarPlay, no CarPlay setup: %@", &v11, 0xCu);
      }

      v6 = 0;
      goto LABEL_19;
    }

    if ([(BTSDevicesController *)self isLECarPlayEnabled])
    {
      v8 = [(BTSDevicesController *)self getLECarPlay:v4];

      if (v8)
      {
        v5 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 138412290;
          v12 = v4;
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

  if (!-[BTSDevicesController isLECarPlayEnabled](self, "isLECarPlayEnabled") || ![v4 isCarPlayDevice])
  {
    goto LABEL_20;
  }

  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
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
  v3 = [v2 isCarPlaySetupEnabled];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)startOutgoingCarPlaySetup:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = v4;
  v7 = v6;
  if (isKindOfClass)
  {
    v8 = [v6 device];
    v9 = [v8 address];
    [(BTSDevicesController *)self allowBluetoothConnections:0];
    v10 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&dword_23C0F7000, v10, OS_LOG_TYPE_DEFAULT, "CarPlay setup for classic device, %@", buf, 0xCu);
    }

    objc_initWeak(buf, v8);
    objc_copyWeak(&v13, buf);
    CRStartBluetoothClassicPairing();
    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  else
  {
    v8 = [v6 identifier];
    v9 = [v7 name];
    v11 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v8;
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

- (void)startIncomingCarPlaySetup:(id)a3 andPasskey:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 address];
  v8 = [v5 name];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%06u", objc_msgSend(v6, "unsignedIntValue")];
  v10 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v5;
    _os_log_impl(&dword_23C0F7000, v10, OS_LOG_TYPE_DEFAULT, "CarPlay setup for classic device, %@", buf, 0xCu);
  }

  objc_initWeak(buf, v5);
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

- (void)markLEAudioDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(BTSDevicesController *)self specifierForID:v5];

  if (v6)
  {
    v7 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_23C0F7000, v7, OS_LOG_TYPE_DEFAULT, "Mark LEAudio device", v10, 2u);
    }

    v8 = [v4 name];
    v9 = [@"[LEAudio]" stringByAppendingString:v8];
    [v6 setName:v9];
  }
}

- (BOOL)BOOLFromBluetoothPreferences:(id)a3
{
  keyExistsAndHasValidFormat = 0;
  v3 = a3;
  CFPreferencesAppSynchronize(@"com.apple.BTServer");
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v3, @"com.apple.BTServer", &keyExistsAndHasValidFormat);

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
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [v3 persistentDomainForName:@"com.apple.bluetooth.settings"];
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
        v9 = v3;
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

- (id)_headphoneSettingsControllerFor:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x277D0FB80] modernSettingsUIFFEnabled])
  {
    v4 = [v3 userInfo];
    v5 = [v4 objectForKeyedSubscript:@"bt-device"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v4 objectForKeyedSubscript:@"bt-device"];

      if (v6)
      {
        v7 = [v6 device];
        if ([v7 isGenuineAirPods])
        {
          v8 = [v6 device];
          v9 = [v8 isAppleAudioDevice];

          if (v9)
          {
            v10 = [v6 device];
            v11 = [v10 address];
            v12 = [v11 stringByReplacingOccurrencesOfString:@":" withString:@"-"];

            v13 = [MEMORY[0x277D0FC08] shared];
            v14 = [v13 connectedHeadphones];
            v15 = [v14 objectForKeyedSubscript:v12];

            v16 = [objc_alloc(MEMORY[0x277D0FB78]) initWithHeadphoneDevice:v15 btsDevice:v6];
            v17 = [MEMORY[0x277D0FB78] deviceKey];
            [v4 setObject:v16 forKey:v17];

            [v3 setUserInfo:v4];
            v18 = [MEMORY[0x277D0FB80] controllerForSpecifier:v3];
            [v3 setTarget:v18];

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

  v4 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
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