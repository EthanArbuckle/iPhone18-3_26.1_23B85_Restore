@interface WirelessModemController
- (BOOL)_wiFiPower;
- (WirelessModemController)init;
- (id)_bandPreferenceSpecFooterLabel;
- (id)_bandPreferenceSpecLabel;
- (id)_groupPlacardSpec;
- (id)_placardSpec;
- (id)_wiFiPassword;
- (id)bandPreference;
- (id)bandPreferenceSpec;
- (id)dataUsageString;
- (id)familyShareSpecifier;
- (id)internetTethering:(id)a3;
- (id)passwordSpec;
- (id)setupViewSpec;
- (id)shareOption;
- (id)shareSpecifier;
- (id)specifiers;
- (id)stateFooterSpec;
- (id)tetheringSwitchSpec;
- (id)usageSpecifier;
- (void)_btAuthenticationRequestHandler:(id)a3;
- (void)_btDevicePairedHandler:(id)a3;
- (void)_btPinRequestHandler:(id)a3;
- (void)_btPowerChangedHandler:(id)a3;
- (void)_btSSPConfirmationHandler:(id)a3;
- (void)_btSSPNumericComparisonHandler:(id)a3;
- (void)_btSSPPasskeyDisplayHandler:(id)a3;
- (void)_managedConfigurationChangedHandler:(id)a3;
- (void)_misStateChangedHandler:(id)a3;
- (void)_registerAllNotificationObservers;
- (void)_setMISDiscoveryStateEnabled:(BOOL)a3 effectiveImmediately:(BOOL)a4 forceBand:(BOOL)a5;
- (void)_setWiFiPassword:(id)a3;
- (void)_unregisterAllNotificationObservers;
- (void)_updatePersonalHotspotModificationDisableState;
- (void)_updateTetheringText:(BOOL)a3;
- (void)_wiFiPowerChangedHandler;
- (void)allowWirelessConnections:(BOOL)a3;
- (void)cleanupPairing;
- (void)dealloc;
- (void)setBandPreference:(id)a3 specifier:(id)a4;
- (void)setInternetTethering:(id)a3 specifier:(id)a4;
- (void)setPersonalHotspotModificationDisableState:(BOOL)a3;
- (void)setShareOption:(id)a3;
- (void)terminateSearching:(BOOL)a3;
- (void)updateInstructionsSection:(int)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation WirelessModemController

- (WirelessModemController)init
{
  v18.receiver = self;
  v18.super_class = WirelessModemController;
  v2 = [(WirelessModemController *)&v18 init];
  if (v2)
  {
    v2->_wifiClient = WiFiManagerClientCreate();
    v2->_wifiIsWAPI = MGGetBoolAnswer();
    v3 = NSClassFromString(&cfstr_Btspaircontrol.isa);
    v2->_btPairControllerClass = v3;
    if (!v3)
    {
      v4 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PreferenceBundles/BluetoothSettings.bundle"];
      [v4 load];

      v2->_btPairControllerClass = NSClassFromString(&cfstr_Btspaircontrol.isa);
    }

    v2->_btPairSetupClass = NSClassFromString(&cfstr_Btspairsetup.isa);
    v2->_btSSPRequestClass = NSClassFromString(&cfstr_Btssppairingre.isa);
    v2->_btAlertClass = NSClassFromString(&cfstr_Btalert.isa);
    v2->_btClassicDeviceClass = NSClassFromString(&cfstr_Btsdeviceclass.isa);
    if (v2->_wifiClient)
    {
      v2->_wifiTetheringSupported = WiFiManagerClientIsTetheringSupported() != 0;
      v2->_personalHotspotModificationDisabled = WiFiManagerClientIsPersonalHotspotModificationDisabled() != 0;
      v5 = WiFiManagerClientCopyProperty();
      v6 = v5;
      if (v5)
      {
        v2->_showBandPreferenceUI = [v5 BOOLValue];
        v7 = WMSLogComponent();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [WirelessModemController init];
        }
      }

      if (!v2->_showBandPreferenceUI)
      {
        v2->_showBandPreferenceUI = 1;
      }
    }

    if (v2->_wifiTetheringSupported)
    {
      v8 = WiFiManagerClientCopyDevices();
      if ([v8 count])
      {
        v2->_wifiDevice = [v8 objectAtIndexedSubscript:0];
        CFRunLoopGetCurrent();
        WiFiManagerClientScheduleWithRunLoop();
        v9 = objc_initWeak(&location, v2);
        WiFiDeviceClientRegisterPowerCallback();

        objc_destroyWeak(&location);
      }
    }

    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 bundleIdentifier];

    CFPreferencesSynchronize(v11, *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
    LOBYTE(location) = 0;
    if (CFPreferencesGetAppBooleanValue(@"ShowBTPowerPrompt", v11, &location))
    {
      v12 = 1;
    }

    else
    {
      v12 = location == 0;
    }

    v13 = v12;
    v2->_showBTPowerPrompt = v13;
  }

  v14 = dispatch_queue_create("com.apple.wirelessmodemsettings.phsettings-serial", 0);
  serialQueue = v2->_serialQueue;
  v2->_serialQueue = v14;

  return v2;
}

- (void)terminateSearching:(BOOL)a3
{
  if (self->_wifiTetheringSupported)
  {
    [(WirelessModemController *)self _setMISDiscoveryStateEnabled:0 effectiveImmediately:a3];
  }

  v4 = [MEMORY[0x277CF3248] sharedInstance];
  [v4 setDiscoverable:0];

  v5 = [MEMORY[0x277CF3248] sharedInstance];
  [v5 setConnectable:0];

  [(WirelessModemController *)self cleanupPairing];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = WirelessModemController;
  [(WirelessModemController *)&v3 viewDidLoad];
  v2 = WMSUIEventDictionary(@"view-ph", 0);
  WMSubmitUIEventMetric(v2);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = [(WirelessModemController *)self navigationController];
  v5 = [v4 childViewControllers];
  v6 = [v5 lastObject];

  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [(WirelessModemController *)self _unregisterAllNotificationObservers];
    [(WirelessModemController *)self terminateSearching:0];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = WirelessModemController;
  [(WirelessModemController *)&v10 viewDidAppear:a3];
  [(WirelessModemController *)self _registerAllNotificationObservers];
  [(WirelessModemController *)self allowWirelessConnections:1];
  if (_os_feature_enabled_impl())
  {
    v4 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.PersonalHotspot"];
    v5 = objc_alloc(MEMORY[0x277CCAEB8]);
    v6 = [MEMORY[0x277CBEAF8] currentLocale];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 bundleURL];
    v9 = [v5 initWithKey:@"Personal Hotspot" table:0 locale:v6 bundleURL:v8];

    if (objc_opt_respondsToSelector())
    {
      [(WirelessModemController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.personal-hotspot" title:v9 localizedNavigationComponents:MEMORY[0x277CBEBF8] deepLink:v4];
    }
  }
}

- (void)willMoveToParentViewController:(id)a3
{
  v8.receiver = self;
  v8.super_class = WirelessModemController;
  [(WirelessModemController *)&v8 willMoveToParentViewController:?];
  if (!a3)
  {
    v5 = [(WirelessModemController *)self parentViewController];
    v6 = [v5 navigationItem];
    [v6 setTitleView:0];

    v7 = [(WirelessModemController *)self navigationItem];
    [v7 setTitleView:0];
  }
}

- (void)dealloc
{
  [(WirelessModemController *)self _unregisterAllNotificationObservers];
  [(WirelessModemController *)self allowWirelessConnections:0];
  if (self->_wifiTetheringSupported)
  {
    CFRunLoopGetCurrent();
    WiFiManagerClientUnscheduleFromRunLoop();
  }

  [(UIAlertController *)self->_powerAlert dismissViewControllerAnimated:1 completion:0];
  [self->_btSSPAlert dismiss];
  [self->_btAlert dismiss];
  wifiDevice = self->_wifiDevice;
  if (wifiDevice)
  {
    CFRelease(wifiDevice);
  }

  wifiClient = self->_wifiClient;
  if (wifiClient)
  {
    CFRelease(wifiClient);
  }

  v5.receiver = self;
  v5.super_class = WirelessModemController;
  [(WirelessModemController *)&v5 dealloc];
}

- (void)_misStateChangedHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__WirelessModemController__misStateChangedHandler___block_invoke;
  v6[3] = &unk_278BB50C8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __51__WirelessModemController__misStateChangedHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"State"];
  v4 = [v3 unsignedIntValue];

  v5 = *(a1 + 40);
  if (v4 > 0x3FD)
  {
    [v5 _updateTetheringText:0];
    v7 = *(a1 + 40);
    v8 = v7[187];

    [v7 reloadSpecifier:v8];
  }

  else
  {
    [v5[185] dismissViewControllerAnimated:1 completion:0];
    [*(*(a1 + 40) + 1624) dismiss];
    [*(a1 + 40) cleanupPairing];
    v9 = [*(a1 + 40) rootController];
    v6 = [v9 popViewControllerAnimated:1];
  }
}

- (void)allowWirelessConnections:(BOOL)a3
{
  v3 = a3;
  if (!a3 || (-[WirelessModemController view](self, "view"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 _isInAWindow], v5, v6))
  {
    v7 = [MEMORY[0x277CF3248] sharedInstance];
    [v7 setDiscoverable:v3];

    v8 = [MEMORY[0x277CF3248] sharedInstance];
    [v8 setConnectable:v3];

    if (self->_wifiTetheringSupported)
    {

      [(WirelessModemController *)self _setMISDiscoveryStateEnabled:v3 effectiveImmediately:v3];
    }
  }
}

- (void)_managedConfigurationChangedHandler:(id)a3
{
  v4 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__WirelessModemController__managedConfigurationChangedHandler___block_invoke;
  block[3] = &unk_278BB5258;
  block[4] = self;
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

- (void)_updatePersonalHotspotModificationDisableState
{
  IsPersonalHotspotModificationDisabled = WiFiManagerClientIsPersonalHotspotModificationDisabled();
  v4 = WMSLogComponent();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [WirelessModemController _updatePersonalHotspotModificationDisableState];
  }

  [(WirelessModemController *)self setPersonalHotspotModificationDisableState:IsPersonalHotspotModificationDisabled != 0];
}

- (void)setPersonalHotspotModificationDisableState:(BOOL)a3
{
  if (self->_personalHotspotModificationDisabled == a3)
  {
    v3 = WMSLogComponent();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [WirelessModemController setPersonalHotspotModificationDisableState:];
    }
  }

  else
  {
    self->_personalHotspotModificationDisabled = a3;
    tetheringSwitchSpec = self->_tetheringSwitchSpec;
    if (a3)
    {
      v6 = MEMORY[0x277CBEC28];
    }

    else
    {
      v6 = MEMORY[0x277CBEC38];
    }

    [(PSSpecifier *)tetheringSwitchSpec setProperty:v6 forKey:*MEMORY[0x277D3FF38]];
    v7 = self->_tetheringSwitchSpec;

    [(WirelessModemController *)self reloadSpecifier:v7 animated:0];
  }
}

- (void)_registerAllNotificationObservers
{
  if (!self->_didRegisteredNotificationObservers)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:self selector:sel_applicationWillResign_ name:@"UIApplicationWillResignActiveNotification" object:0];

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:self selector:sel_applicationDidBecomeActive_ name:@"UIApplicationDidBecomeActiveNotification" object:0];

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:self selector:sel__misStateChangedHandler_ name:@"MISManagerStateChangedNotification" object:0];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:self selector:sel__btPowerChangedHandler_ name:*MEMORY[0x277CF3168] object:0];

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:self selector:sel__btPowerChangedHandler_ name:*MEMORY[0x277CF3230] object:0];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:self selector:sel__btAuthenticationRequestHandler_ name:*MEMORY[0x277CF3200] object:0];

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:self selector:sel__btDevicePairedHandler_ name:*MEMORY[0x277CF3208] object:0];

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:self selector:sel__btDevicePairedHandler_ name:*MEMORY[0x277CF3210] object:0];

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:self selector:sel__btAuthenticationRequestHandler_ name:*MEMORY[0x277CF3220] object:0];

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:self selector:sel__btAuthenticationRequestHandler_ name:*MEMORY[0x277CF3228] object:0];

    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 addObserver:self selector:sel__btAuthenticationRequestHandler_ name:*MEMORY[0x277CF3218] object:0];

    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 addObserver:self selector:sel__managedConfigurationChangedHandler_ name:*MEMORY[0x277D25CA0] object:0];

    self->_didRegisteredNotificationObservers = 1;
  }
}

- (void)_unregisterAllNotificationObservers
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  if (self->_wifiDevice)
  {
    WiFiDeviceClientRegisterPowerCallback();
  }

  self->_didRegisteredNotificationObservers = 0;
}

- (void)_setMISDiscoveryStateEnabled:(BOOL)a3 effectiveImmediately:(BOOL)a4 forceBand:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v14[2] = *MEMORY[0x277D85DE8];
  v8 = WMSLogComponent();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [WirelessModemController _setMISDiscoveryStateEnabled:v7 effectiveImmediately:v6 forceBand:v8];
  }

  v13[0] = @"SOFTAP_ENABLE";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  v13[1] = @"SOFTAP_IMMEDIATE_DISABLE";
  v14[0] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  v14[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  if (v5)
  {
    v12 = [v11 mutableCopy];
    [v12 setObject:MEMORY[0x277CBEC38] forKey:@"SOFTAP_FORCE_2_4G_CHANNEL"];

    v11 = v12;
  }

  WiFiManagerClientSetMISDiscoveryStateExt();
}

- (void)_wiFiPowerChangedHandler
{
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__WirelessModemController__wiFiPowerChangedHandler__block_invoke;
  block[3] = &unk_278BB52A8;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_sync(serialQueue, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __51__WirelessModemController__wiFiPowerChangedHandler__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__WirelessModemController__wiFiPowerChangedHandler__block_invoke_2;
  block[3] = &unk_278BB5280;
  objc_copyWeak(&v5, (a1 + 40));
  dispatch_async(MEMORY[0x277D85CD0], block);
  v2 = *(a1 + 32);
  if (*(v2 + 1473) == 1)
  {
    *(v2 + 1473) = 0;
    if ((*(*(a1 + 32) + 1472) & 1) == 0)
    {
      v3 = +[MISManager sharedManager];
      [v3 setState:1023];
    }
  }

  if (WiFiDeviceClientGetPower())
  {
    [*(a1 + 32) _setMISDiscoveryStateEnabled:1 effectiveImmediately:0];
  }

  objc_destroyWeak(&v5);
}

void __51__WirelessModemController__wiFiPowerChangedHandler__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateTetheringText:0];
}

- (BOOL)_wiFiPower
{
  if (self->_wifiTetheringSupported)
  {
    wifiDevice = self->_wifiDevice;
    if (wifiDevice)
    {
      LOBYTE(wifiDevice) = WiFiDeviceClientGetPower() != 0;
    }
  }

  else
  {
    LOBYTE(wifiDevice) = 0;
  }

  return wifiDevice;
}

- (void)_setWiFiPassword:(id)a3
{
  v4 = a3;
  if (self->_wifiClient)
  {
    v6 = v4;
    v5 = v4;
    WiFiManagerClientSetMisPassword();
    v4 = v6;
  }
}

- (id)_wiFiPassword
{
  if (!self->_wifiClient)
  {
    goto LABEL_5;
  }

  v3 = WiFiManagerClientCopyMisPassword();
  if ([v3 length])
  {
    goto LABEL_6;
  }

  v4 = +[WiFiPasswordController generateDefaultPassword];

  if (v4)
  {
    [(WirelessModemController *)self _setWiFiPassword:v4];
    v5 = WMSUIEventDictionary(@"generated-ph-password", 0);
    WMSubmitUIEventMetric(v5);

    v3 = v4;
  }

  else
  {
LABEL_5:
    v3 = 0;
  }

LABEL_6:

  return v3;
}

- (void)setBandPreference:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [v5 BOOLValue];
  [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6];
  WiFiManagerClientSetProperty();
  v7 = WMSLogComponent();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [WirelessModemController setBandPreference:specifier:];
  }

  [(WirelessModemController *)self _setMISDiscoveryStateEnabled:1 effectiveImmediately:1 forceBand:v6];
  v8 = [v5 BOOLValue];

  if (v8)
  {
    v9 = @"true";
  }

  else
  {
    v9 = @"false";
  }

  v10 = WMSUIEventDictionary(@"toggle-ph-compatibility", v9);
  WMSubmitUIEventMetric(v10);
}

- (id)bandPreference
{
  v2 = WiFiManagerClientCopyProperty();
  v3 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v2, "intValue") == 1}];

  return v3;
}

- (void)_btPowerChangedHandler:(id)a3
{
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__WirelessModemController__btPowerChangedHandler___block_invoke;
  block[3] = &unk_278BB52D0;
  block[4] = self;
  objc_copyWeak(&v6, &location);
  dispatch_sync(serialQueue, block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __50__WirelessModemController__btPowerChangedHandler___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__WirelessModemController__btPowerChangedHandler___block_invoke_2;
  block[3] = &unk_278BB5258;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
  v2 = *(a1 + 32);
  if (*(v2 + 1472) == 1)
  {
    *(v2 + 1472) = 0;
    if ((*(*(a1 + 32) + 1473) & 1) == 0)
    {
      v3 = +[MISManager sharedManager];
      [v3 setState:1023];
    }
  }

  v4 = [MEMORY[0x277CF3248] sharedInstance];
  v5 = [v4 powered];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (v5)
  {
    [WeakRetained allowWirelessConnections:1];
  }

  else
  {
    [WeakRetained cleanupPairing];
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 1504);
  *(v8 + 1504) = 0;
}

- (void)_btAuthenticationRequestHandler:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_btPairControllerClass && self->_btPairSetupClass && self->_btSSPRequestClass)
  {
    v6 = [(WirelessModemController *)self rootController];
    v7 = [v6 visibleViewController];
    if ((objc_opt_isKindOfClass() & 1) != 0 || self->_btSSPAlert)
    {

      goto LABEL_7;
    }

    btAlert = self->_btAlert;

    if (btAlert)
    {
LABEL_7:
      v8 = WMSLogComponent();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [WirelessModemController _btAuthenticationRequestHandler:];
      }

LABEL_9:

      goto LABEL_10;
    }

    if (!self->_waitingOnBTPower && !self->_currentDeviceSpecifier)
    {
      v10 = [v5 name];
      v11 = *MEMORY[0x277CF3228];
      if ([v10 isEqualToString:*MEMORY[0x277CF3228]])
      {
      }

      else
      {
        v12 = [v5 name];
        v13 = [v12 isEqualToString:*MEMORY[0x277CF3218]];

        if (!v13)
        {
          v8 = [v5 object];
          goto LABEL_19;
        }
      }

      v14 = [v5 object];
      v8 = [v14 objectForKeyedSubscript:@"device"];

LABEL_19:
      v15 = WMSLogComponent();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v46 = NSStringFromSelector(a2);
        v44 = [v5 name];
        [v8 name];
        *buf = 138412802;
        v48 = v46;
        v49 = 2112;
        v50 = v44;
        v52 = v51 = 2112;
        v45 = v52;
        _os_log_error_impl(&dword_23C15F000, v15, OS_LOG_TYPE_ERROR, "%@ received %@ for device %@", buf, 0x20u);
      }

      if (-[NSObject majorClass](v8, "majorClass") == 256 && ([v5 userInfo], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "valueForKey:", @"delayedPairingForNR"), v17 = objc_claimAutoreleasedReturnValue(), v17, v16, !v17))
      {
        v36 = WMSLogComponent();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          [WirelessModemController _btAuthenticationRequestHandler:];
        }

        v37 = MEMORY[0x277CBEB38];
        v38 = [v5 userInfo];
        v24 = [v37 dictionaryWithDictionary:v38];

        [v24 setObject:&stru_284EED640 forKeyedSubscript:@"delayedPairingForNR"];
        v39 = MEMORY[0x277CCAB88];
        v28 = [v5 name];
        v40 = [v5 object];
        v41 = [v39 notificationWithName:v28 object:v40 userInfo:v24];
        [(WirelessModemController *)self performSelector:sel__btAuthenticationRequestHandler_ withObject:v41 afterDelay:1.0];
      }

      else
      {
        v18 = [v8 name];
        v19 = v18;
        v20 = &stru_284EED640;
        if (v18)
        {
          v20 = v18;
        }

        v21 = v20;

        v22 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v21 target:self set:0 get:0 detail:0 cell:1 edit:0];
        currentDeviceSpecifier = self->_currentDeviceSpecifier;
        self->_currentDeviceSpecifier = v22;

        v24 = [MEMORY[0x277CBEB38] dictionary];
        v25 = NSStringFromClass(self->_btPairSetupClass);
        [v24 setObject:v25 forKeyedSubscript:*MEMORY[0x277D3FF08]];

        v26 = NSStringFromClass(self->_btPairControllerClass);
        [v24 setObject:v26 forKeyedSubscript:*MEMORY[0x277D400B8]];

        [v24 setObject:@"PSLinkCell" forKeyedSubscript:*MEMORY[0x277D40138]];
        [v24 setObject:v21 forKeyedSubscript:*MEMORY[0x277D40170]];

        v27 = [v8 address];
        [v24 setObject:v27 forKeyedSubscript:*MEMORY[0x277D3FFB8]];

        [(PSSpecifier *)self->_currentDeviceSpecifier setProperties:v24];
        v28 = [MEMORY[0x277CBEB38] dictionary];
        v29 = [(objc_class *)self->_btClassicDeviceClass deviceWithDevice:v8];
        [v28 setObject:v29 forKeyedSubscript:@"bt-device"];

        [v28 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"reverse-pairing"];
        [(PSSpecifier *)self->_currentDeviceSpecifier setUserInfo:v28];
        v30 = [v5 name];
        v31 = [v30 isEqualToString:*MEMORY[0x277CF3200]];

        if (v31)
        {
          [(WirelessModemController *)self _btPinRequestHandler:v5];
        }

        else
        {
          v32 = [v5 name];
          v33 = [v32 isEqualToString:*MEMORY[0x277CF3220]];

          if (v33)
          {
            [(WirelessModemController *)self _btSSPConfirmationHandler:v5];
          }

          else
          {
            v34 = [v5 name];
            v35 = [v34 isEqualToString:v11];

            if (v35)
            {
              [(WirelessModemController *)self _btSSPNumericComparisonHandler:v5];
            }

            else
            {
              v42 = [v5 name];
              v43 = [v42 isEqualToString:*MEMORY[0x277CF3218]];

              if (v43)
              {
                [(WirelessModemController *)self _btSSPPasskeyDisplayHandler:v5];
              }
            }
          }
        }
      }

      goto LABEL_9;
    }
  }

LABEL_10:
}

- (void)_btPinRequestHandler:(id)a3
{
  v5 = a3;
  v6 = WMSLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(WirelessModemController *)a2 _btPinRequestHandler:v5, v6];
  }

  v7 = objc_alloc_init(self->_btPairSetupClass);
  [(WirelessModemController *)self setShowingSetupController:1];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD10]));
  [v7 setRootController:WeakRetained];

  [v7 setParentController:self];
  [v7 setSpecifier:self->_currentDeviceSpecifier];
  objc_storeWeak((self->_currentDeviceSpecifier + *MEMORY[0x277D3FCB8]), self);
  [(WirelessModemController *)self showController:v7];
}

- (void)_btSSPConfirmationHandler:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 object];
  v7 = WMSLogComponent();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = NSStringFromSelector(a2);
    v11 = [v5 name];
    v12 = [v6 name];
    v13 = 138412802;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    _os_log_error_impl(&dword_23C15F000, v7, OS_LOG_TYPE_ERROR, "%@ received %@ for device %@", &v13, 0x20u);
  }

  v8 = [objc_alloc(self->_btSSPRequestClass) initWithDevice:v6 andSpecifier:self->_currentDeviceSpecifier];
  btSSPAlert = self->_btSSPAlert;
  self->_btSSPAlert = v8;

  [self->_btSSPAlert setPairingStyle:0 andPasskey:0];
  [self->_btSSPAlert setDelegate:self];
  [self->_btSSPAlert show];
}

- (void)_btSSPNumericComparisonHandler:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 object];
  v7 = [v6 objectForKeyedSubscript:@"device"];
  v8 = [v6 objectForKeyedSubscript:@"value"];
  v9 = WMSLogComponent();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v12 = NSStringFromSelector(a2);
    v13 = [v5 name];
    v14 = [v7 name];
    v15 = 138412802;
    v16 = v12;
    v17 = 2112;
    v18 = v13;
    v19 = 2112;
    v20 = v14;
    _os_log_error_impl(&dword_23C15F000, v9, OS_LOG_TYPE_ERROR, "%@ received %@ for device %@", &v15, 0x20u);
  }

  v10 = [objc_alloc(self->_btSSPRequestClass) initWithDevice:v7 andSpecifier:self->_currentDeviceSpecifier];
  btSSPAlert = self->_btSSPAlert;
  self->_btSSPAlert = v10;

  [self->_btSSPAlert setPairingStyle:1 andPasskey:v8];
  [self->_btSSPAlert setDelegate:self];
  [self->_btSSPAlert show];
}

- (void)_btSSPPasskeyDisplayHandler:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 object];
  v7 = [v6 objectForKeyedSubscript:@"device"];
  v8 = [v6 objectForKeyedSubscript:@"value"];
  v9 = WMSLogComponent();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v12 = NSStringFromSelector(a2);
    v13 = [v5 name];
    v14 = [v7 name];
    v15 = 138412802;
    v16 = v12;
    v17 = 2112;
    v18 = v13;
    v19 = 2112;
    v20 = v14;
    _os_log_error_impl(&dword_23C15F000, v9, OS_LOG_TYPE_ERROR, "%@ received %@ for device %@", &v15, 0x20u);
  }

  v10 = [objc_alloc(self->_btSSPRequestClass) initWithDevice:v7 andSpecifier:self->_currentDeviceSpecifier];
  btSSPAlert = self->_btSSPAlert;
  self->_btSSPAlert = v10;

  [self->_btSSPAlert setPairingStyle:2 andPasskey:v8];
  [self->_btSSPAlert setDelegate:self];
  [self->_btSSPAlert show];
}

- (void)_btDevicePairedHandler:(id)a3
{
  v24 = a3;
  v4 = [v24 object];
  v5 = [v4 address];
  v6 = [(PSSpecifier *)self->_currentDeviceSpecifier identifier];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = [(PSSpecifier *)self->_currentDeviceSpecifier userInfo];
    v9 = [v8 objectForKey:@"PIN-ended"];

    v10 = [(PSSpecifier *)self->_currentDeviceSpecifier userInfo];
    [v10 removeObjectForKey:@"PIN-ended"];

    v11 = [v24 name];
    v12 = [v11 isEqualToString:*MEMORY[0x277CF3208]];

    if (v12)
    {
      if (!self->_btAlert)
      {
        v13 = [objc_alloc(self->_btAlertClass) initWithDevice:v4];
        btAlert = self->_btAlert;
        self->_btAlert = v13;

        [self->_btAlert setDelegate:self];
        if (v9 || ((btSSPAlert = self->_btSSPAlert) == 0 || [btSSPAlert pairingStyle] == 2 || objc_msgSend(self->_btSSPAlert, "pairingStyle") == 3) && (-[WirelessModemController rootController](self, "rootController"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "visibleViewController"), v17 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v17, v16, (isKindOfClass & 1) == 0))
        {
          if (![v9 isEqualToString:@"entered"])
          {
            v22 = [v24 userInfo];
            v21 = [v22 objectForKeyedSubscript:*MEMORY[0x277CF31D8]];

            goto LABEL_15;
          }

          v19 = MEMORY[0x277CCABB0];
          v20 = 156;
        }

        else
        {
          v19 = MEMORY[0x277CCABB0];
          v20 = 1;
        }

        v21 = [v19 numberWithUnsignedInt:v20];
LABEL_15:
        [(WirelessModemController *)self cleanupPairing];
        [self->_btAlert showAlertWithResult:v21];
      }
    }

    else
    {
      [(WirelessModemController *)self cleanupPairing];
    }

    currentDeviceSpecifier = self->_currentDeviceSpecifier;
    self->_currentDeviceSpecifier = 0;
  }
}

- (void)cleanupPairing
{
  [self->_btSSPAlert dismiss];
  btSSPAlert = self->_btSSPAlert;
  self->_btSSPAlert = 0;

  v4 = [(WirelessModemController *)self rootController];
  v5 = [v4 visibleViewController];
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [(WirelessModemController *)self rootController];
    v7 = [v9 visibleViewController];
    v8 = [v7 parentViewController];
    [v8 performSelector:sel_dismiss];
  }
}

- (id)internetTethering:(id)a3
{
  v6 = 0;
  v3 = +[MISManager sharedManager];
  [v3 getState:&v6 andReason:0];

  v4 = [MEMORY[0x277CCABB0] numberWithInt:v6 == 1023];

  return v4;
}

- (void)setInternetTethering:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v152[0] = 1022;
  v8 = [v6 BOOLValue];
  if (v8)
  {
    v9 = 1023;
  }

  else
  {
    v9 = 1022;
  }

  v10 = +[MISManager sharedManager];
  [v10 getState:v152 andReason:0];

  if (v152[0] != v9)
  {
    if ((v152[0] == 1022) & v8) != 1 || (([MEMORY[0x277CF3248] sharedInstance], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "enabled"), v12, v14 = -[WirelessModemController _wiFiPower](self, "_wiFiPower"), v15 = v14, (v13) || !self->_showBTPowerPrompt) && (!self->_wifiTetheringSupported || self->_wifiDevice == 0 || v14))
    {
      [(WirelessModemController *)self updateInstructionsSection:v9];
      v16 = +[MISManager sharedManager];
      [v16 setState:v9];

      if ([v6 BOOLValue])
      {
        v17 = @"true";
      }

      else
      {
        v17 = @"false";
      }

      v18 = WMSUIEventDictionary(@"toggle-ph-discovery", v17);
      WMSubmitUIEventMetric(v18);

      goto LABEL_54;
    }

    v19 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v7 setProperty:v19 forKey:*MEMORY[0x277D3FEA8]];

    [(WirelessModemController *)self reloadSpecifier:v7];
    v132 = v7;
    if (v13)
    {
      v125 = MEMORY[0x277D75110];
      v20 = MEMORY[0x277CCACA8];
      v133 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v21 = [v133 localizedStringForKey:@"POWER_ALERT_WF_OFF_TITLE" value:&stru_284EED640 table:?];
      v121 = v21;
      wifiIsWAPI = self->_wifiIsWAPI;
      v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v123 = v23;
      if (wifiIsWAPI)
      {
        v24 = @"WIFI_CH";
      }

      else
      {
        v24 = @"WIFI";
      }

      v120 = [v23 localizedStringForKey:v24 value:&stru_284EED640 table:@"WirelessModemSettings"];
      v25 = [v20 stringWithFormat:v21, v120];
      v26 = MEMORY[0x277CCACA8];
      v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v28 = [v27 localizedStringForKey:@"POWER_ALERT_WF_OFF_MESSAGE" value:&stru_284EED640 table:@"WirelessModemSettings"];
      v29 = self->_wifiIsWAPI;
      v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v31 = v30;
      if (v29)
      {
        v32 = @"WIFI_CH";
      }

      else
      {
        v32 = @"WIFI";
      }

      v33 = [v30 localizedStringForKey:v32 value:&stru_284EED640 table:@"WirelessModemSettings"];
      v34 = [v26 stringWithFormat:v28, v33];
      v35 = [v125 alertControllerWithTitle:v25 message:v34 preferredStyle:1];
      powerAlert = self->_powerAlert;
      self->_powerAlert = v35;

      objc_initWeak(&location, self->_powerAlert);
      v37 = MEMORY[0x277D750F8];
      v38 = MEMORY[0x277CCACA8];
      v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v40 = [v39 localizedStringForKey:@"POWER_ALERT_WF_OFF_CANCEL_BUTTON" value:&stru_284EED640 table:@"WirelessModemSettings"];
      if (self->_wifiIsWAPI)
      {
        v41 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        [v41 localizedStringForKey:@"WIFI_CH" value:&stru_284EED640 table:@"WirelessModemSettings"];
      }

      else
      {
        v41 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        [v41 localizedStringForKey:@"WIFI" value:&stru_284EED640 table:@"WirelessModemSettings"];
      }
      v74 = ;
      v75 = [v38 stringWithFormat:v40, v74];
      v137[0] = MEMORY[0x277D85DD0];
      v137[1] = 3221225472;
      v137[2] = __58__WirelessModemController_setInternetTethering_specifier___block_invoke_7;
      v137[3] = &unk_278BB52F8;
      objc_copyWeak(&v138, &location);
      v127 = [v37 actionWithTitle:v75 style:1 handler:v137];

      v76 = MEMORY[0x277D750F8];
      v77 = MEMORY[0x277CCACA8];
      v78 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v79 = [v78 localizedStringForKey:@"POWER_ALERT_WF_OFF_OK_BUTTON" value:&stru_284EED640 table:@"WirelessModemSettings"];
      if (self->_wifiIsWAPI)
      {
        v80 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        [v80 localizedStringForKey:@"WIFI_CH" value:&stru_284EED640 table:@"WirelessModemSettings"];
      }

      else
      {
        v80 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        [v80 localizedStringForKey:@"WIFI" value:&stru_284EED640 table:@"WirelessModemSettings"];
      }
      v81 = ;
      v82 = [v77 stringWithFormat:v79, v81];
      v135[0] = MEMORY[0x277D85DD0];
      v135[1] = 3221225472;
      v135[2] = __58__WirelessModemController_setInternetTethering_specifier___block_invoke_8;
      v135[3] = &unk_278BB5320;
      v135[4] = self;
      objc_copyWeak(&v136, &location);
      v83 = [v76 actionWithTitle:v82 style:0 handler:v135];

      [(UIAlertController *)self->_powerAlert addAction:v127];
      [(UIAlertController *)self->_powerAlert addAction:v83];

      objc_destroyWeak(&v136);
      v84 = v137;
LABEL_52:
      objc_destroyWeak(v84 + 4);
      objc_destroyWeak(&location);
      v7 = v132;
      goto LABEL_53;
    }

    if (self->_wifiTetheringSupported)
    {
      v134 = MEMORY[0x277D75110];
      if (self->_wifiDevice != 0 && !v15)
      {
        v85 = MEMORY[0x277CCACA8];
        v130 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v86 = [v130 localizedStringForKey:@"POWER_ALERT_BOTH_OFF_TITLE" value:&stru_284EED640 table:?];
        v124 = v86;
        v87 = self->_wifiIsWAPI;
        v88 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v128 = v88;
        if (v87)
        {
          v89 = @"WIFI_CH";
        }

        else
        {
          v89 = @"WIFI";
        }

        v122 = [v88 localizedStringForKey:v89 value:&stru_284EED640 table:@"WirelessModemSettings"];
        v90 = [v85 stringWithFormat:v86, v122];
        v91 = MEMORY[0x277CCACA8];
        v92 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v93 = [v92 localizedStringForKey:@"POWER_ALERT_BOTH_OFF_MESSAGE" value:&stru_284EED640 table:@"WirelessModemSettings"];
        v94 = self->_wifiIsWAPI;
        v95 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v96 = v95;
        if (v94)
        {
          v97 = @"WIFI_CH";
        }

        else
        {
          v97 = @"WIFI";
        }

        v98 = [v95 localizedStringForKey:v97 value:&stru_284EED640 table:@"WirelessModemSettings"];
        v99 = [v91 stringWithFormat:v93, v98];
        v100 = [v134 alertControllerWithTitle:v90 message:v99 preferredStyle:1];
        v101 = self->_powerAlert;
        self->_powerAlert = v100;

        objc_initWeak(&location, self->_powerAlert);
        v102 = MEMORY[0x277D750F8];
        v103 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v104 = [v103 localizedStringForKey:@"POWER_ALERT_BOTH_OFF_CANCEL_BUTTON" value:&stru_284EED640 table:@"WirelessModemSettings"];
        v149[0] = MEMORY[0x277D85DD0];
        v149[1] = 3221225472;
        v149[2] = __58__WirelessModemController_setInternetTethering_specifier___block_invoke;
        v149[3] = &unk_278BB52F8;
        objc_copyWeak(&v150, &location);
        v131 = [v102 actionWithTitle:v104 style:1 handler:v149];

        v105 = MEMORY[0x277D750F8];
        v106 = MEMORY[0x277CCACA8];
        v107 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v108 = [v107 localizedStringForKey:@"POWER_ALERT_BOTH_OFF_OK_BUTTON" value:&stru_284EED640 table:@"WirelessModemSettings"];
        if (self->_wifiIsWAPI)
        {
          v109 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          [v109 localizedStringForKey:@"WIFI_CH" value:&stru_284EED640 table:@"WirelessModemSettings"];
        }

        else
        {
          v109 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          [v109 localizedStringForKey:@"WIFI" value:&stru_284EED640 table:@"WirelessModemSettings"];
        }
        v117 = ;
        v118 = [v106 stringWithFormat:v108, v117];
        v147[0] = MEMORY[0x277D85DD0];
        v147[1] = 3221225472;
        v147[2] = __58__WirelessModemController_setInternetTethering_specifier___block_invoke_2;
        v147[3] = &unk_278BB5320;
        v147[4] = self;
        objc_copyWeak(&v148, &location);
        v119 = [v105 actionWithTitle:v118 style:0 handler:v147];

        [(UIAlertController *)self->_powerAlert addAction:v131];
        [(UIAlertController *)self->_powerAlert addAction:v119];

        objc_destroyWeak(&v148);
        v84 = v149;
        goto LABEL_52;
      }

      v129 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v126 = [v129 localizedStringForKey:@"POWER_ALERT_BT_OFF_TITLE" value:&stru_284EED640 table:@"WirelessModemSettings"];
      v42 = MEMORY[0x277CCACA8];
      v43 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v44 = [v43 localizedStringForKey:@"POWER_ALERT_BT_OFF_MESSAGE" value:&stru_284EED640 table:@"WirelessModemSettings"];
      v45 = self->_wifiIsWAPI;
      v46 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v47 = v46;
      if (v45)
      {
        v48 = @"WIFI_CH";
      }

      else
      {
        v48 = @"WIFI";
      }

      v49 = [v46 localizedStringForKey:v48 value:&stru_284EED640 table:@"WirelessModemSettings"];
      v50 = [v42 stringWithFormat:v44, v49];
      v51 = [v134 alertControllerWithTitle:v126 message:v50 preferredStyle:1];
      v52 = self->_powerAlert;
      self->_powerAlert = v51;

      objc_initWeak(&location, self->_powerAlert);
      v53 = MEMORY[0x277D750F8];
      v54 = MEMORY[0x277CCACA8];
      v55 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v56 = [v55 localizedStringForKey:@"POWER_ALERT_BT_OFF_CANCEL_BUTTON" value:&stru_284EED640 table:@"WirelessModemSettings"];
      if (self->_wifiIsWAPI)
      {
        v57 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        [v57 localizedStringForKey:@"WIFI_CH" value:&stru_284EED640 table:@"WirelessModemSettings"];
      }

      else
      {
        v57 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        [v57 localizedStringForKey:@"WIFI" value:&stru_284EED640 table:@"WirelessModemSettings"];
      }
      v110 = ;
      v111 = [v54 stringWithFormat:v56, v110];
      v141[0] = MEMORY[0x277D85DD0];
      v141[1] = 3221225472;
      v141[2] = __58__WirelessModemController_setInternetTethering_specifier___block_invoke_5;
      v141[3] = &unk_278BB5320;
      v141[4] = self;
      objc_copyWeak(&v142, &location);
      v112 = [v53 actionWithTitle:v111 style:1 handler:v141];

      v113 = MEMORY[0x277D750F8];
      v114 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v115 = [v114 localizedStringForKey:@"POWER_ALERT_BT_OFF_OK_BUTTON" value:&stru_284EED640 table:@"WirelessModemSettings"];
      v139[0] = MEMORY[0x277D85DD0];
      v139[1] = 3221225472;
      v139[2] = __58__WirelessModemController_setInternetTethering_specifier___block_invoke_6;
      v139[3] = &unk_278BB5320;
      v139[4] = self;
      objc_copyWeak(&v140, &location);
      v116 = [v113 actionWithTitle:v115 style:0 handler:v139];

      [(UIAlertController *)self->_powerAlert addAction:v112];
      [(UIAlertController *)self->_powerAlert addAction:v116];

      objc_destroyWeak(&v140);
      v73 = &v142;
    }

    else
    {
      v58 = MEMORY[0x277D75110];
      v59 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v60 = [v59 localizedStringForKey:@"POWER_ALERT_BT_ONLY_OFF_TITLE" value:&stru_284EED640 table:@"WirelessModemSettings"];
      v61 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v62 = [v61 localizedStringForKey:@"POWER_ALERT_BT_ONLY_OFF_MESSAGE" value:&stru_284EED640 table:@"WirelessModemSettings"];
      v63 = [v58 alertControllerWithTitle:v60 message:v62 preferredStyle:1];
      v64 = self->_powerAlert;
      self->_powerAlert = v63;

      objc_initWeak(&location, self->_powerAlert);
      v65 = MEMORY[0x277D750F8];
      v66 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v67 = [v66 localizedStringForKey:@"POWER_ALERT_BT_ONLY_OFF_CANCEL_BUTTON" value:&stru_284EED640 table:@"WirelessModemSettings"];
      v145[0] = MEMORY[0x277D85DD0];
      v145[1] = 3221225472;
      v145[2] = __58__WirelessModemController_setInternetTethering_specifier___block_invoke_3;
      v145[3] = &unk_278BB5320;
      v145[4] = self;
      objc_copyWeak(&v146, &location);
      v68 = [v65 actionWithTitle:v67 style:1 handler:v145];

      v69 = MEMORY[0x277D750F8];
      v70 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v71 = [v70 localizedStringForKey:@"POWER_ALERT_BT_ONLY_OFF_OK_BUTTON" value:&stru_284EED640 table:@"WirelessModemSettings"];
      v143[0] = MEMORY[0x277D85DD0];
      v143[1] = 3221225472;
      v143[2] = __58__WirelessModemController_setInternetTethering_specifier___block_invoke_4;
      v143[3] = &unk_278BB5320;
      v143[4] = self;
      objc_copyWeak(&v144, &location);
      v72 = [v69 actionWithTitle:v71 style:0 handler:v143];

      [(UIAlertController *)self->_powerAlert addAction:v68];
      [(UIAlertController *)self->_powerAlert addAction:v72];

      objc_destroyWeak(&v144);
      v73 = &v146;
    }

    objc_destroyWeak(v73);
    objc_destroyWeak(&location);
    v7 = v132;
LABEL_53:
    [(WirelessModemController *)self presentViewController:self->_powerAlert animated:1 completion:0];
    goto LABEL_54;
  }

  v11 = WMSLogComponent();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [(WirelessModemController *)v152 setInternetTethering:v6 specifier:v11];
  }

  [(WirelessModemController *)self updateInstructionsSection:v152[0]];
LABEL_54:
}

void __58__WirelessModemController_setInternetTethering_specifier___block_invoke(uint64_t a1)
{
  v2 = +[MISManager sharedManager];
  [v2 setState:1023];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

void __58__WirelessModemController_setInternetTethering_specifier___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 1473) = 1;
  *(*(a1 + 32) + 1472) = 1;
  WiFiManagerClientSetPower();
  v2 = [MEMORY[0x277CF3248] sharedInstance];
  [v2 setPowered:1];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

void __58__WirelessModemController_setInternetTethering_specifier___block_invoke_3(uint64_t a1)
{
  *(*(a1 + 32) + 1476) = 0;
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  applicationID = [v2 bundleIdentifier];

  CFPreferencesSetAppValue(@"ShowBTPowerPrompt", *MEMORY[0x277CBED10], applicationID);
  CFPreferencesSynchronize(applicationID, *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v3 = +[MISManager sharedManager];
  [v3 setState:1023];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

void __58__WirelessModemController_setInternetTethering_specifier___block_invoke_4(uint64_t a1)
{
  *(*(a1 + 32) + 1472) = 1;
  v2 = [MEMORY[0x277CF3248] sharedInstance];
  [v2 setPowered:1];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

void __58__WirelessModemController_setInternetTethering_specifier___block_invoke_5(uint64_t a1)
{
  *(*(a1 + 32) + 1476) = 0;
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  applicationID = [v2 bundleIdentifier];

  CFPreferencesSetAppValue(@"ShowBTPowerPrompt", *MEMORY[0x277CBED10], applicationID);
  CFPreferencesSynchronize(applicationID, *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v3 = +[MISManager sharedManager];
  [v3 setState:1023];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

void __58__WirelessModemController_setInternetTethering_specifier___block_invoke_6(uint64_t a1)
{
  *(*(a1 + 32) + 1472) = 1;
  v2 = [MEMORY[0x277CF3248] sharedInstance];
  [v2 setPowered:1];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

void __58__WirelessModemController_setInternetTethering_specifier___block_invoke_7(uint64_t a1)
{
  v2 = +[MISManager sharedManager];
  [v2 setState:1023];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

void __58__WirelessModemController_setInternetTethering_specifier___block_invoke_8(uint64_t a1)
{
  *(*(a1 + 32) + 1473) = 1;
  WiFiManagerClientSetPower();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (void)updateInstructionsSection:(int)a3
{
  if (a3 == 1022)
  {
    [(WirelessModemController *)self removeSpecifier:self->_setupViewSpec];
  }

  else if (a3 == 1023)
  {
    v3 = 2;
    if (self->_familyHotspotEnabled)
    {
      v3 = 3;
    }

    [(WirelessModemController *)self insertSpecifier:self->_setupViewSpec atEndOfGroup:v3 + self->_showBandPreferenceUI animated:1];
  }
}

- (void)_updateTetheringText:(BOOL)a3
{
  v3 = a3;
  v27 = 0;
  v5 = +[MISManager sharedManager];
  [v5 getState:&v27 + 4 andReason:&v27];

  v6 = *MEMORY[0x277D3FF38];
  if (self->_personalHotspotModificationDisabled)
  {
    v7 = MEMORY[0x277CBEC28];
  }

  else
  {
    v7 = MEMORY[0x277CBEC38];
  }

  [(PSSpecifier *)self->_tetheringSwitchSpec setProperty:v7 forKey:*MEMORY[0x277D3FF38]];
  if (!self->_waitingOnWifiPower && !self->_waitingOnBTPower)
  {
    [(PSSpecifier *)self->_tetheringSwitchSpec setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FEA8]];
  }

  if (HIDWORD(v27) == 1023)
  {
    v8 = [MEMORY[0x277CF3248] sharedInstance];
    v9 = [v8 enabled];

    v10 = [(WirelessModemController *)self _wiFiPower];
    if ((v9 & 1) != 0 || v10)
    {
      v24 = MEMORY[0x277CCACA8];
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = [v11 localizedStringForKey:@"TETHERING_TEXT_DEFAULT" value:&stru_284EED640 table:@"WirelessModemSettings"];
      v14 = WMSGetCurrentDeviceName();
      v17 = [v24 stringWithFormat:v13, v14];
    }

    else
    {
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = MEMORY[0x277CCACA8];
      v13 = [MEMORY[0x277D75418] currentDevice];
      v14 = [v13 model];
      v15 = [v14 uppercaseString];
      v16 = [v12 stringWithFormat:@"%@_%@", @"TETHERING_TEXT_USB", v15];
      v17 = [v11 localizedStringForKey:v16 value:&stru_284EED640 table:@"WirelessModemSettings"];
    }
  }

  else
  {
    v18 = MEMORY[0x277CCACA8];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"TETHERING_TEXT_DEFAULT" value:&stru_284EED640 table:@"WirelessModemSettings"];
    v21 = WMSGetCurrentDeviceName();
    v17 = [v18 stringWithFormat:v20, v21];

    if (HIDWORD(v27) != 1022 || v27 == 4 && (+[MISManager sharedManager](MISManager, "sharedManager"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 didUserPreventData], v22, v23))
    {
      [(PSSpecifier *)self->_tetheringSwitchSpec setProperty:MEMORY[0x277CBEC28] forKey:v6];
    }
  }

  stateFooterSpec = self->_stateFooterSpec;
  if (v3)
  {
    [(PSSpecifier *)stateFooterSpec setProperty:v17 forKey:@"TextFooterInitialText"];
  }

  else
  {
    v26 = [(PSSpecifier *)stateFooterSpec propertyForKey:*MEMORY[0x277D3FFB0]];
    [v26 setText:v17];

    [(WirelessModemController *)self reloadSpecifier:self->_stateFooterSpec animated:0];
  }
}

- (id)shareOption
{
  ShareMyPersonalHotspotMode = WiFiManagerClientGetShareMyPersonalHotspotMode();
  if (ShareMyPersonalHotspotMode > 2)
  {
    return &unk_284EEFB70;
  }

  else
  {
    return qword_278BB5340[ShareMyPersonalHotspotMode];
  }
}

- (void)setShareOption:(id)a3
{
  v3 = a3;
  if (([v3 isEqual:&unk_284EEFB70] & 1) == 0 && (objc_msgSend(v3, "isEqual:", &unk_284EEFB88) & 1) == 0 && (objc_msgSend(v3, "isEqual:", &unk_284EEFB58) & 1) == 0)
  {
    v4 = WMSLogComponent();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [WirelessModemController setShareOption:];
    }
  }

  WiFiManagerClientSetShareMyPersonalHotspotMode();
  v5 = WMSLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [WirelessModemController setShareOption:];
  }
}

- (id)shareSpecifier
{
  v17[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"FAMILY_HOTSPOT_OFF" value:&stru_284EED640 table:@"WirelessModemSettings"];
  v17[0] = v5;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"FAMILY_HOTSPOT_ASK" value:&stru_284EED640 table:@"WirelessModemSettings"];
  v17[1] = v7;
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"FAMILY_HOTSPOT_AUTOMATIC" value:&stru_284EED640 table:@"WirelessModemSettings"];
  v17[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  v11 = [v3 initWithArray:v10];

  v12 = MEMORY[0x277D3FAD8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"FAMILY_HOTSPOT" value:&stru_284EED640 table:@"WirelessModemSettings"];
  v15 = [v12 preferenceSpecifierNamed:v14 target:self set:sel_setShareOption_ get:sel_shareOption detail:objc_opt_class() cell:2 edit:0];

  [v15 setValues:&unk_284EEFBB8 titles:v11];

  return v15;
}

- (id)familyShareSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"FAMILY_SHARING_TITLE" value:&stru_284EED640 table:@"WirelessModemSettings"];
  wifiIsWAPI = self->_wifiIsWAPI;
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = v8;
  if (wifiIsWAPI)
  {
    v10 = @"WIFI_CH";
  }

  else
  {
    v10 = @"WIFI";
  }

  v11 = [v8 localizedStringForKey:v10 value:&stru_284EED640 table:@"WirelessModemSettings"];
  v12 = [v4 stringWithFormat:v6, v11];
  v13 = [v3 preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  return v13;
}

- (id)dataUsageString
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = WiFiManagerClientCopyProperty();
  if (v2)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v20 = v2;
    obj = v2;
    v24 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    v3 = 0;
    v4 = 0;
    v5 = 0;
    if (v24)
    {
      v23 = *v36;
      v22 = *MEMORY[0x277D29938];
      v30 = *MEMORY[0x277D29950];
      v29 = *MEMORY[0x277D29930];
      v28 = *MEMORY[0x277D29910];
      v27 = *MEMORY[0x277D29918];
      do
      {
        v6 = 0;
        do
        {
          if (*v36 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = v6;
          v7 = [*(*(&v35 + 1) + 8 * v6) objectForKey:v22];
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v26 = v7;
          v8 = [v7 countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v32;
            do
            {
              v11 = 0;
              v12 = v3;
              v13 = v4;
              do
              {
                if (*v32 != v10)
                {
                  objc_enumerationMutation(v26);
                }

                v14 = *(*(&v31 + 1) + 8 * v11);
                v15 = [v14 objectForKey:v30];
                v16 = [v14 objectForKey:v29];
                v3 = [v14 objectForKey:v28];

                v4 = [v14 objectForKey:v27];

                v17 = [v16 unsignedIntegerValue];
                v5 += v17 + [v15 unsignedIntegerValue];

                ++v11;
                v12 = v3;
                v13 = v4;
              }

              while (v9 != v11);
              v9 = [v26 countByEnumeratingWithState:&v31 objects:v39 count:16];
            }

            while (v9);
          }

          v6 = v25 + 1;
        }

        while (v25 + 1 != v24);
        v24 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v24);
    }

    if (v5)
    {
      v18 = [MEMORY[0x277CCA8E8] stringFromByteCount:v5 countStyle:0];
    }

    else
    {
      v18 = &stru_284EED640;
    }

    v2 = v20;
  }

  else
  {
    v18 = &stru_284EED640;
  }

  return v18;
}

- (id)usageSpecifier
{
  v3 = WiFiManagerClientCopyProperty();
  if (v3 && (-[WirelessModemController dataUsageString](self, "dataUsageString"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isEqualToString:&stru_284EED640], v4, (v5 & 1) == 0))
  {
    v7 = MEMORY[0x277D3FAD8];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"HOTSPOT_USAGE" value:&stru_284EED640 table:@"WirelessModemSettings"];
    v6 = [v7 preferenceSpecifierNamed:v9 target:self set:0 get:sel_dataUsageString detail:objc_opt_class() cell:2 edit:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_groupPlacardSpec
{
  v2 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  [v2 setIdentifier:@"PLACARD_GROUP"];

  return v2;
}

- (id)_placardSpec
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"TETHERING_TITLE" value:&stru_284EED640 table:@"WirelessModemSettings"];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"PLACARD_SUBTITLE" value:&stru_284EED640 table:@"WirelessModemSettings"];

  v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  [v7 setIdentifier:@"PLACARD"];
  [v7 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [v7 setProperty:v6 forKey:*MEMORY[0x277D40160]];
  [v7 setProperty:@"com.apple.graphic-icon.personal-hotspot" forKey:*MEMORY[0x277D3FFD8]];

  return v7;
}

- (id)tetheringSwitchSpec
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"ALLOW_OTHERS" value:&stru_284EED640 table:@"WirelessModemSettings"];
  wifiIsWAPI = self->_wifiIsWAPI;
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = v7;
  if (wifiIsWAPI)
  {
    v9 = @"WIFI_CH";
  }

  else
  {
    v9 = @"WIFI";
  }

  v10 = [v7 localizedStringForKey:v9 value:&stru_284EED640 table:@"WirelessModemSettings"];
  v11 = [v3 stringWithFormat:v5, v10];

  v12 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v11 target:self set:sel_setInternetTethering_specifier_ get:sel_internetTethering_ detail:0 cell:6 edit:0];

  return v12;
}

- (id)passwordSpec
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"WIFI_PASSWORD" value:&stru_284EED640 table:@"WirelessModemSettings"];
  wifiIsWAPI = self->_wifiIsWAPI;
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = v8;
  if (wifiIsWAPI)
  {
    v10 = @"WIFI_CH";
  }

  else
  {
    v10 = @"WIFI";
  }

  v11 = [v8 localizedStringForKey:v10 value:&stru_284EED640 table:@"WirelessModemSettings"];
  v12 = [v4 stringWithFormat:v6, v11];
  v13 = [v3 preferenceSpecifierNamed:v12 target:self set:0 get:sel_wifiPassword_ detail:objc_opt_class() cell:2 edit:0];

  return v13;
}

- (id)setupViewSpec
{
  v3 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  v4 = [v3 properties];
  [v4 setValue:@"TetheringSetupView" forKey:*MEMORY[0x277D3FFA0]];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_wifiTetheringSupported];
  [v3 setProperty:v5 forKey:@"SupportsWifi"];

  return v3;
}

- (id)stateFooterSpec
{
  v2 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  v3 = [v2 properties];
  [v3 setValue:@"TetheringSwitchFooterView" forKey:*MEMORY[0x277D3FFA0]];

  return v2;
}

- (id)bandPreferenceSpec
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = [(WirelessModemController *)self _bandPreferenceSpecLabel];
  v5 = [v3 preferenceSpecifierNamed:v4 target:self set:sel_setBandPreference_specifier_ get:sel_bandPreference detail:0 cell:6 edit:0];

  return v5;
}

- (id)_bandPreferenceSpecLabel
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"MAXIMIZE_COMPATIBILITY" value:&stru_284EED640 table:@"WirelessModemSettings"];

  return v3;
}

- (id)_bandPreferenceSpecFooterLabel
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"MAXIMIZE_COMPATIBILITY_FOOTER" value:&stru_284EED640 table:@"WirelessModemSettings"];

  return v3;
}

- (id)specifiers
{
  v69[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (v4)
  {
    goto LABEL_47;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [MEMORY[0x277D75418] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  v8 = v7 & 0xFFFFFFFFFFFFFFFBLL;
  v9 = MEMORY[0x277CCACA8];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = v10;
  if (v8 == 1)
  {
    v12 = @"INSTANT_HOTSPOT_IPAD";
  }

  else
  {
    v12 = @"INSTANT_HOTSPOT_IPHONE";
  }

  v13 = [v10 localizedStringForKey:v12 value:&stru_284EED640 table:@"WirelessModemSettings"];
  wifiIsWAPI = self->_wifiIsWAPI;
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = v15;
  if (wifiIsWAPI)
  {
    v17 = @"WIFI_CH";
  }

  else
  {
    v17 = @"WIFI";
  }

  v18 = [v15 localizedStringForKey:v17 value:&stru_284EED640 table:@"WirelessModemSettings"];
  v19 = [v9 stringWithFormat:v13, v18];

  v62 = WiFiManagerClientCopyFamilyHotspotPreferences();
  if (v62 && [v62 count])
  {
    self->_familyHotspotEnabled = 1;
    v20 = WMSLogComponent();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [WirelessModemController specifiers];
    }
  }

  else
  {
    self->_familyHotspotEnabled = 0;
  }

  placardSpec = self->_placardSpec;
  if (placardSpec)
  {
    v65 = placardSpec;
LABEL_17:
    v23 = [(WirelessModemController *)self _groupPlacardSpec];
    v69[0] = v23;
    v69[1] = v65;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:2];
    [v5 addObjectsFromArray:v24];

    goto LABEL_18;
  }

  v22 = [(WirelessModemController *)self _placardSpec];
  objc_storeStrong(&self->_placardSpec, v22);
  v65 = v22;
  if (v22)
  {
    goto LABEL_17;
  }

  v65 = 0;
LABEL_18:
  tetheringGroupSpec = self->_tetheringGroupSpec;
  if (tetheringGroupSpec)
  {
    v64 = tetheringGroupSpec;
  }

  else
  {
    v64 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    objc_storeStrong(&self->_tetheringGroupSpec, v64);
  }

  tetheringSwitchSpec = self->_tetheringSwitchSpec;
  if (tetheringSwitchSpec)
  {
    v63 = tetheringSwitchSpec;
  }

  else
  {
    v63 = [(WirelessModemController *)self tetheringSwitchSpec];
    objc_storeStrong(&self->_tetheringSwitchSpec, v63);
  }

  passwordSpec = self->_passwordSpec;
  if (passwordSpec)
  {
    v28 = passwordSpec;
  }

  else
  {
    v28 = [(WirelessModemController *)self passwordSpec];
    objc_storeStrong(&self->_passwordSpec, v28);
  }

  stateFooterSpec = self->_stateFooterSpec;
  if (stateFooterSpec)
  {
    v30 = stateFooterSpec;
  }

  else
  {
    v30 = [(WirelessModemController *)self stateFooterSpec];
    objc_storeStrong(&self->_stateFooterSpec, v30);
  }

  v68[0] = v64;
  v68[1] = v63;
  v68[2] = v28;
  v68[3] = v30;
  v61 = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:4];
  [v5 addObjectsFromArray:v31];

  if (self->_familyHotspotEnabled)
  {
    v32 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:0];
    v59 = MEMORY[0x277CCACA8];
    v60 = v28;
    v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v34 = [v33 localizedStringForKey:@"FAMILY_SHARING" value:&stru_284EED640 table:@"WirelessModemSettings"];
    v35 = v19;
    v36 = v3;
    v37 = v5;
    v38 = self->_wifiIsWAPI;
    v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v40 = v39;
    v41 = !v38;
    v5 = v37;
    v3 = v36;
    if (v41)
    {
      v42 = @"WIFI";
    }

    else
    {
      v42 = @"WIFI_CH";
    }

    v43 = [v39 localizedStringForKey:v42 value:&stru_284EED640 table:@"WirelessModemSettings"];
    v44 = [v59 stringWithFormat:v34, v43];
    [v32 setProperty:v44 forKey:*MEMORY[0x277D3FF88]];

    v19 = v35;
    v28 = v60;

    v45 = [(WirelessModemController *)self familyShareSpecifier];
    v67[0] = v32;
    v67[1] = v45;
    v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:2];
    [v5 addObjectsFromArray:v46];
  }

  if (self->_showBandPreferenceUI)
  {
    bandPreferenceSpec = self->_bandPreferenceSpec;
    if (bandPreferenceSpec)
    {
      v48 = bandPreferenceSpec;
LABEL_40:
      v49 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
      v50 = [(WirelessModemController *)self _bandPreferenceSpecFooterLabel];
      [v49 setProperty:v50 forKey:*MEMORY[0x277D3FF88]];

      v66[0] = v49;
      v66[1] = v48;
      v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:2];
      [v5 addObjectsFromArray:v51];

      goto LABEL_41;
    }

    v48 = [(WirelessModemController *)self bandPreferenceSpec];
    objc_storeStrong(&self->_bandPreferenceSpec, v48);
    if (v48)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v48 = 0;
  }

LABEL_41:
  setupViewSpec = self->_setupViewSpec;
  if (setupViewSpec)
  {
    v53 = setupViewSpec;
  }

  else
  {
    v53 = [(WirelessModemController *)self setupViewSpec];
    objc_storeStrong(&self->_setupViewSpec, v53);
  }

  v54 = [(WirelessModemController *)self internetTethering:0];
  v55 = [v54 BOOLValue];

  if (v55)
  {
    [v5 addObject:v53];
  }

  [(WirelessModemController *)self _updateTetheringText:1];
  v56 = *(&self->super.super.super.super.super.isa + v3);
  *(&self->super.super.super.super.super.isa + v3) = v5;
  v57 = v5;

  v4 = *(&self->super.super.super.super.super.isa + v3);
LABEL_47:

  return v4;
}

- (void)_setMISDiscoveryStateEnabled:(char)a1 effectiveImmediately:(char)a2 forceBand:(os_log_t)log .cold.1(char a1, char a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  v4 = "[WirelessModemController _setMISDiscoveryStateEnabled:effectiveImmediately:forceBand:]";
  v5 = 1024;
  v6 = a1 & 1;
  v7 = 1024;
  v8 = a2 & 1;
  _os_log_error_impl(&dword_23C15F000, log, OS_LOG_TYPE_ERROR, "%s: enabled: %d immediately: %d", &v3, 0x18u);
}

- (void)_btPinRequestHandler:(NSObject *)a3 .cold.1(const char *a1, void *a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a1);
  v6 = [a2 name];
  v7 = [a2 object];
  v8 = [v7 name];
  v9 = 138412802;
  v10 = v5;
  v11 = 2112;
  v12 = v6;
  v13 = 2112;
  v14 = v8;
  _os_log_error_impl(&dword_23C15F000, a3, OS_LOG_TYPE_ERROR, "%@ received %@ for device %@", &v9, 0x20u);
}

- (void)setInternetTethering:(NSObject *)a3 specifier:.cold.1(int *a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = 136315650;
  v6 = "[WirelessModemController setInternetTethering:specifier:]";
  v7 = 1024;
  v8 = v4;
  v9 = 1024;
  v10 = [a2 BOOLValue];
  _os_log_error_impl(&dword_23C15F000, a3, OS_LOG_TYPE_ERROR, "%s: no change to state=%d value=%d", &v5, 0x18u);
}

@end