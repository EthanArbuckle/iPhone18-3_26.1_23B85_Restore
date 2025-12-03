@interface VoiceOverBrailleController
- (BOOL)shouldAddBTLEDevice:(id)device;
- (BOOL)shouldAddClassicDevice:(id)device;
- (VoiceOverBrailleController)init;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_brailleAutoEnableBluetooth:(id)bluetooth;
- (id)_brailleDisplayAlertDuration:(id)duration;
- (id)_brailleDisplayAutoAdvance:(id)advance;
- (id)_brailleDisplayDebounceTimeout:(id)timeout;
- (id)_stringForBrailleMode:(int64_t)mode;
- (id)alwaysUseNemethEnabled:(id)enabled;
- (id)brailleDisplayInput:(id)input;
- (id)brailleDisplayOutput:(id)output;
- (id)brailleFormattingEnabled:(id)enabled;
- (id)brailleTableCount:(id)count;
- (id)brailleUsesUnderlineCursorEnabled:(id)enabled;
- (id)contractedBrailleEnabled:(id)enabled;
- (id)detailSpecifiersForDevice:(id)device withTarget:(id)target;
- (id)eightDotBrailleEnabled:(id)enabled;
- (id)gradeTwoAutoTranslatedEnabled:(id)enabled;
- (id)pairedDeviceSpecifiers;
- (id)panningAutoturnReadingContent:(id)content;
- (id)perkinsChordKeyboardInputEnabled:(id)enabled;
- (id)softwareKeyboardWithBrailleEnabled:(id)enabled;
- (id)soundCurtainEnabled:(id)enabled;
- (id)specifiers;
- (id)syncTablesEnabled:(id)enabled;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)wordWrapEnabled:(id)enabled;
- (void)_bluetoothDeviceLoadFailedTimerFireMethod:(id)method;
- (void)_connectToBrailleClient:(BOOL)client;
- (void)_handleBrailleConfigurationChanged;
- (void)_handleFailedToLoadBluetoothDevice:(id)device;
- (void)_handleSettingsChange:(id)change;
- (void)_setBrailleAutoEnableBluetooth:(id)bluetooth specifier:(id)specifier;
- (void)_startDeviceLoadFailedTimer;
- (void)_stopDeviceLoadFailedTimer;
- (void)_tipLoaded:(id)loaded;
- (void)_updateBrailleWritingCell;
- (void)dealloc;
- (void)deviceConnected:(id)connected;
- (void)loadSettings;
- (void)setAlwaysUseNemethEnabled:(id)enabled specifier:(id)specifier;
- (void)setBluetoothIsBusy:(BOOL)busy;
- (void)setBrailleFormattingEnabled:(id)enabled specifier:(id)specifier;
- (void)setBrailleUsesUnderlineCursorEnabled:(id)enabled specifier:(id)specifier;
- (void)setContractedBrailleEnabled:(id)enabled specifier:(id)specifier;
- (void)setEightDotBrailleEnabled:(id)enabled specifier:(id)specifier;
- (void)setGradeTwoAutoTransateEnabled:(id)enabled specifier:(id)specifier;
- (void)setPanningAutoturnReadingContent:(id)content specifier:(id)specifier;
- (void)setPerkinsChordKeyboardInputEnabled:(id)enabled specifier:(id)specifier;
- (void)setSoftwareKeyboardWithBrailleEnabled:(id)enabled specifier:(id)specifier;
- (void)setSoundCurtainEnabled:(id)enabled specifier:(id)specifier;
- (void)setSyncTablesEnabled:(id)enabled specifier:(id)specifier;
- (void)setWordWrapEnabled:(id)enabled specifier:(id)specifier;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation VoiceOverBrailleController

- (VoiceOverBrailleController)init
{
  v45.receiver = self;
  v45.super_class = VoiceOverBrailleController;
  v2 = [(AXBluetoothDevicesController *)&v45 init];
  v3 = v2;
  if (v2)
  {
    [(AXBluetoothDevicesController *)v2 setAuthorizedServices:8224];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, _handleSettingsChange, kAXSVoiceOverTouchBrailleMasterStatusCellIndexChangedNotification, 0, 1028);
    v5 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v5, v3, _handleSettingsChange, kAXSVoiceOverTouchBrailleVirtualStatusAlignmentChangedNotification, 0, 1028);
    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v6, v3, _handleSettingsChange, kAXSVoiceOverTouchBrailleContractionModeChangedNotification, 0, 1028);
    v7 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v7, v3, _handleSettingsChange, kAXSVoiceOverTouchBrailleEightDotModeChangedNotification, 0, 1028);
    v8 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v8, v3, _handleSettingsChange, kAXSVoiceOverTouchBrailleTableIdentifierChangedNotification, 0, 1028);
    v9 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v9, v3, _handleSettingsChange, kAXSVoiceOverTouchBrailleLanguageRotorChangedNotification, 0, 1028);
    v10 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v10, v3, _handleSettingsChange, kAXSVoiceOverTouchTactileGraphicsDisplayChangedNotification, 0, 1028);
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v3 selector:"_coreBluetoothReady:" name:VOSBluetoothCoreBluetoothManagerReadyNotification object:0];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v3 selector:"_tipLoaded:" name:@"AXTipLoaded" object:0];

    objc_initWeak(&location, v3);
    v13 = +[AXSettings sharedInstance];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = __34__VoiceOverBrailleController_init__block_invoke;
    v42[3] = &unk_255388;
    objc_copyWeak(&v43, &location);
    [v13 registerUpdateBlock:v42 forRetrieveSelector:"voiceOverBrailleTableIdentifier" withListener:v3];

    objc_destroyWeak(&v43);
    v14 = +[AXSettings sharedInstance];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = __34__VoiceOverBrailleController_init__block_invoke_2;
    v40[3] = &unk_255388;
    objc_copyWeak(&v41, &location);
    [v14 registerUpdateBlock:v40 forRetrieveSelector:"voiceOverBrailleAlertDisplayDuration" withListener:v3];

    objc_destroyWeak(&v41);
    v15 = +[AXSettings sharedInstance];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = __34__VoiceOverBrailleController_init__block_invoke_3;
    v38[3] = &unk_255388;
    objc_copyWeak(&v39, &location);
    [v15 registerUpdateBlock:v38 forRetrieveSelector:"voiceOverBrailleAlertShowUntilDismissed" withListener:v3];

    objc_destroyWeak(&v39);
    v16 = +[AXSettings sharedInstance];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = __34__VoiceOverBrailleController_init__block_invoke_4;
    v36[3] = &unk_255388;
    objc_copyWeak(&v37, &location);
    [v16 registerUpdateBlock:v36 forRetrieveSelector:"voiceOverBrailleAlertsEnabled" withListener:v3];

    objc_destroyWeak(&v37);
    v17 = +[AXSettings sharedInstance];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = __34__VoiceOverBrailleController_init__block_invoke_5;
    v34[3] = &unk_255388;
    objc_copyWeak(&v35, &location);
    [v17 registerUpdateBlock:v34 forRetrieveSelector:"voiceOverTouchBrailleDisplayOutputMode" withListener:v3];

    objc_destroyWeak(&v35);
    v18 = +[AXSettings sharedInstance];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = __34__VoiceOverBrailleController_init__block_invoke_6;
    v32[3] = &unk_255388;
    objc_copyWeak(&v33, &location);
    [v18 registerUpdateBlock:v32 forRetrieveSelector:"voiceOverTouchBrailleDisplayInputMode" withListener:v3];

    objc_destroyWeak(&v33);
    v19 = +[AXSettings sharedInstance];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = __34__VoiceOverBrailleController_init__block_invoke_7;
    v30[3] = &unk_255388;
    objc_copyWeak(&v31, &location);
    [v19 registerUpdateBlock:v30 forRetrieveSelector:"voiceOverBrailleKeyDebounceTimeout" withListener:v3];

    objc_destroyWeak(&v31);
    v20 = +[AXSettings sharedInstance];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = __34__VoiceOverBrailleController_init__block_invoke_8;
    v28[3] = &unk_255388;
    objc_copyWeak(&v29, &location);
    [v20 registerUpdateBlock:v28 forRetrieveSelector:"voiceOverBrailleAutoAdvanceDuration" withListener:v3];

    objc_destroyWeak(&v29);
    v21 = +[AXSettings sharedInstance];
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = __34__VoiceOverBrailleController_init__block_invoke_9;
    v26 = &unk_255388;
    objc_copyWeak(&v27, &location);
    [v21 registerUpdateBlock:&v23 forRetrieveSelector:"voiceOverAlwaysTurnOnBluetooth" withListener:v3];

    objc_destroyWeak(&v27);
    [(VoiceOverBrailleController *)v3 loadSettings:v23];
    objc_destroyWeak(&location);
  }

  return v3;
}

void __34__VoiceOverBrailleController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleSettingsChange:0];
}

void __34__VoiceOverBrailleController_init__block_invoke_2(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v1 = [v2 specifierForID:@"voiceOverBrailleAlertDisplayDuration"];
  [v2 reloadSpecifier:v1 animated:0];
}

void __34__VoiceOverBrailleController_init__block_invoke_3(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v1 = [v2 specifierForID:@"voiceOverBrailleAlertDisplayDuration"];
  [v2 reloadSpecifier:v1 animated:0];
}

void __34__VoiceOverBrailleController_init__block_invoke_4(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v1 = [v2 specifierForID:@"voiceOverBrailleAlertDisplayDuration"];
  [v2 reloadSpecifier:v1 animated:0];
}

void __34__VoiceOverBrailleController_init__block_invoke_5(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v1 = [v2 specifierForID:@"BrailleDisplayOutput"];
  [v2 reloadSpecifier:v1 animated:1];
}

void __34__VoiceOverBrailleController_init__block_invoke_6(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v1 = [v2 specifierForID:@"BrailleDisplayInput"];
  [v2 reloadSpecifier:v1 animated:1];
}

void __34__VoiceOverBrailleController_init__block_invoke_7(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v1 = [v2 specifierForID:@"voiceOverBrailleDebounceTimeout"];
  [v2 reloadSpecifier:v1 animated:1];
}

void __34__VoiceOverBrailleController_init__block_invoke_8(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v1 = [v2 specifierForID:@"voiceOverBrailleAutoAdvance"];
  [v2 reloadSpecifier:v1 animated:1];
}

void __34__VoiceOverBrailleController_init__block_invoke_9(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v1 = [v2 specifierForID:@"voiceOverAlwaysTurnOnBluetooth"];
  [v2 reloadSpecifier:v1 animated:1];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  [(VoiceOverBrailleController *)self _connectToBrailleClient:0];
  [(VoiceOverBrailleController *)self _stopDeviceLoadFailedTimer];
  v4.receiver = self;
  v4.super_class = VoiceOverBrailleController;
  [(AXBluetoothDevicesController *)&v4 dealloc];
}

- (void)loadSettings
{
  mainSpecifiersGroup = [(AXBluetoothDevicesController *)self mainSpecifiersGroup];

  if (!mainSpecifiersGroup)
  {
    v4 = [VoiceOverBrailleController loadSpecifiersFromPlistName:"loadSpecifiersFromPlistName:target:" target:?];
    v22 = [NSMutableArray arrayWithArray:v4];

    v5 = AXUILocalizedStringForKey();
    v21 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:"_brailleDisplayAlertDuration:" detail:objc_opt_class() cell:2 edit:0];

    v6 = PSIDKey;
    [v21 setProperty:@"voiceOverBrailleAlertDisplayDuration" forKey:PSIDKey];
    [v22 addObject:v21];
    v7 = settingsLocString(@"BRAILLE_DISPLAY_KEY_DEBOUNCE_TIMEOUT", @"VoiceOverBrailleOptions");
    v20 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:"_brailleDisplayDebounceTimeout:" detail:objc_opt_class() cell:2 edit:0];

    [v20 setProperty:@"voiceOverBrailleDebounceTimeout" forKey:v6];
    [v22 addObject:v20];
    v8 = settingsLocString(@"BRAILLE_DISPLAY_AUTO_ADVANCE", @"VoiceOverBrailleOptions");
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:"_brailleDisplayAutoAdvance:" detail:objc_opt_class() cell:2 edit:0];

    [v9 setProperty:@"voiceOverBrailleAutoAdvance" forKey:v6];
    [v22 addObject:v9];
    v10 = +[PSSpecifier emptyGroupSpecifier];
    v11 = AXLocStringKeyForModel();
    v12 = settingsLocString(v11, @"VoiceOverSettings");
    v13 = PSFooterTextGroupKey;
    [v10 setProperty:v12 forKey:PSFooterTextGroupKey];

    [v22 addObject:v10];
    v14 = settingsLocString(@"SOUND_CURTAIN", @"VoiceOverSettings");
    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:"setSoundCurtainEnabled:specifier:" get:"soundCurtainEnabled:" detail:0 cell:6 edit:0];

    [v15 setProperty:@"SOUND_CURTAIN" forKey:v6];
    [v22 addObject:v15];
    v16 = +[PSSpecifier emptyGroupSpecifier];
    v17 = settingsLocString(@"BRAILLE_BLUETOOTH_AUTO_ENABLE_FOOTER", @"VoiceOverBrailleOptions");
    [v16 setProperty:v17 forKey:v13];

    [v22 addObject:v16];
    v18 = settingsLocString(@"BRAILLE_BLUETOOTH_AUTO_ENABLE", @"VoiceOverBrailleOptions");
    v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:"_setBrailleAutoEnableBluetooth:specifier:" get:"_brailleAutoEnableBluetooth:" detail:0 cell:6 edit:0];

    [v19 setProperty:@"voiceOverAlwaysTurnOnBluetooth" forKey:v6];
    [v22 addObject:v19];
    [(AXBluetoothDevicesController *)self setMainSpecifiersGroup:v22];
  }
}

- (id)perkinsChordKeyboardInputEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverTouchPerkinsChordKeyboardInputEnabled]);

  return v4;
}

- (void)setPerkinsChordKeyboardInputEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverTouchPerkinsChordKeyboardInputEnabled:bOOLValue];
}

- (id)soundCurtainEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverSoundCurtain]);

  return v4;
}

- (void)setSoundCurtainEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  if ([enabledCopy BOOLValue])
  {
    v8 = settingsLocString(@"SOUND_CURTAIN", @"VoiceOverSettings");
    v9 = settingsLocString(@"CONFIRM_SOUND_CURTAIN_MESSAGE", @"VoiceOverSettings");
    v10 = [UIAlertController alertControllerWithTitle:v8 message:v9 preferredStyle:1];

    objc_initWeak(&location, self);
    v11 = AXUILocalizedStringForKey();
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = __63__VoiceOverBrailleController_setSoundCurtainEnabled_specifier___block_invoke;
    v18[3] = &unk_255BF8;
    objc_copyWeak(&v19, &location);
    v12 = [UIAlertAction actionWithTitle:v11 style:1 handler:v18];

    [v10 addAction:v12];
    v13 = AXUILocalizedStringForKey();
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __63__VoiceOverBrailleController_setSoundCurtainEnabled_specifier___block_invoke_2;
    v16[3] = &unk_2557A8;
    v17 = enabledCopy;
    v14 = [UIAlertAction actionWithTitle:v13 style:0 handler:v16];

    [v10 addAction:v14];
    [(VoiceOverBrailleController *)self presentViewController:v10 animated:1 completion:0];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    bOOLValue = [enabledCopy BOOLValue];
    v10 = +[AXSettings sharedInstance];
    [v10 setVoiceOverSoundCurtain:bOOLValue];
  }
}

void __63__VoiceOverBrailleController_setSoundCurtainEnabled_specifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"SOUND_CURTAIN"];
}

void __63__VoiceOverBrailleController_setSoundCurtainEnabled_specifier___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) BOOLValue];
  v2 = +[AXSettings sharedInstance];
  [v2 setVoiceOverSoundCurtain:v1];
}

- (id)_brailleAutoEnableBluetooth:(id)bluetooth
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverAlwaysTurnOnBluetooth]);

  return v4;
}

- (void)_setBrailleAutoEnableBluetooth:(id)bluetooth specifier:(id)specifier
{
  bOOLValue = [bluetooth BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverAlwaysTurnOnBluetooth:bOOLValue];
}

- (id)brailleTableCount:(id)count
{
  v3 = +[AXSettings sharedInstance];
  voiceOverBrailleLanguageRotorItems = [v3 voiceOverBrailleLanguageRotorItems];
  v5 = [voiceOverBrailleLanguageRotorItems count];

  if (v5 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  return [NSString localizedStringWithFormat:@"%d", v6];
}

- (id)detailSpecifiersForDevice:(id)device withTarget:(id)target
{
  deviceCopy = device;
  v7 = [(VoiceOverBrailleController *)self loadSpecifiersFromPlistName:@"BrailleBluetoothDeviceConfig" target:target];
  v8 = [NSArray arrayWithArray:v7];

  v9 = [v8 objectAtIndex:1];
  v12 = @"bt-device";
  v13 = deviceCopy;
  v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];

  [v9 setUserInfo:v10];

  return v8;
}

- (void)_tipLoaded:(id)loaded
{
  if (!self->_tipLoaded)
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

void __41__VoiceOverBrailleController__tipLoaded___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) specifierForID:@"Braille_TipKit"];
  v3 = [*(a1 + 32) cellForSpecifier:v2];
  [v3 instrinsicContentHeight];
  *(*(a1 + 32) + 264) = v4;
  [*(a1 + 32) reloadSpecifier:v2];
  *(*(a1 + 32) + 258) = 1;
  v5 = AXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSNumber numberWithDouble:*(*(a1 + 32) + 264)];
    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Tip loaded, resetting specifier, height: %@ %@", &v7, 0x16u);
  }
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(VoiceOverBrailleController *)self specifierForIndexPath:pathCopy];
  v9 = [v8 propertyForKey:PSCellClassKey];
  v10 = [v9 isEqual:objc_opt_class()];

  if (v10)
  {
    tipHeight = self->_tipHeight;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = VoiceOverBrailleController;
    [(VoiceOverBrailleController *)&v14 tableView:viewCopy heightForRowAtIndexPath:pathCopy];
    tipHeight = v12;
  }

  return tipHeight;
}

- (id)specifiers
{
  v30.receiver = self;
  v30.super_class = VoiceOverBrailleController;
  specifiers = [(AXBluetoothDevicesController *)&v30 specifiers];
  v4 = objc_opt_new();
  if ([specifiers count])
  {
    v5 = 0;
    v6 = PSIDKey;
    do
    {
      v7 = [specifiers objectAtIndexedSubscript:v5];
      v8 = [v7 propertyForKey:v6];
      v9 = [v8 isEqualToString:@"Braille_TipKitGroup"];

      if (v9)
      {
        goto LABEL_21;
      }

      v10 = [v7 propertyForKey:v6];
      v11 = [v10 isEqualToString:@"Braille_TipKit"];

      if (v11)
      {
        goto LABEL_21;
      }

      v12 = [v7 propertyForKey:v6];
      v13 = [v12 isEqualToString:@"BRAILLE_SYNC_TABLES"];

      if (v13)
      {
LABEL_6:
        if ((VOSCustomBrailleEnabled() & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      v14 = [v7 propertyForKey:v6];
      v15 = [v14 isEqualToString:@"BrailleDisplayOutput"];

      if (v15)
      {
        if (VOSCustomBrailleEnabled())
        {
          v16 = +[AXSettings sharedInstance];
          voiceOverTouchBrailleDisplaySyncInputOutputTables = [v16 voiceOverTouchBrailleDisplaySyncInputOutputTables];

          if (voiceOverTouchBrailleDisplaySyncInputOutputTables)
          {
            settingsLocString(@"BrailleDisplaySyncedInputOutputTitle", @"VoiceOverBrailleOptions");
          }

          else
          {
            settingsLocString(@"BrailleDisplayOutputTitle", @"VoiceOverBrailleOptions");
          }
          v18 = ;
          [v7 setName:v18];
          goto LABEL_19;
        }
      }

      else
      {
        v19 = [v7 propertyForKey:v6];
        v20 = [v19 isEqualToString:@"BrailleDisplayInput"];

        if (v20)
        {
          if (VOSCustomBrailleEnabled())
          {
            v31 = v7;
            v18 = [NSArray arrayWithObjects:&v31 count:1];
            [(VoiceOverBrailleController *)self setDetailItems:v18];
LABEL_19:
          }
        }

        else
        {
          v21 = [v7 propertyForKey:v6];
          v22 = [v21 isEqualToString:@"GRADE2_AUTO_TRANSLATE"];

          if (v22)
          {
            goto LABEL_6;
          }

          v23 = [v7 propertyForKey:v6];
          v24 = [v23 isEqualToString:@"BrailleUI"];

          if (v24 && (_os_feature_enabled_impl() & 1) == 0)
          {
            ++v5;
            goto LABEL_21;
          }
        }
      }

LABEL_20:
      [v4 addObject:v7];
LABEL_21:

      ++v5;
    }

    while (v5 < [specifiers count]);
  }

  if (VOSCustomBrailleEnabled())
  {
    v25 = +[AXSettings sharedInstance];
    voiceOverTouchBrailleDisplaySyncInputOutputTables2 = [v25 voiceOverTouchBrailleDisplaySyncInputOutputTables];
  }

  else
  {
    voiceOverTouchBrailleDisplaySyncInputOutputTables2 = 0;
  }

  v27 = [(VoiceOverBrailleController *)self specifiersByRemovingDetailItemsFromOriginalSpecifiers:v4 ifHidden:voiceOverTouchBrailleDisplaySyncInputOutputTables2];
  v28 = *&self->super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers] = v27;

  return v4;
}

- (id)pairedDeviceSpecifiers
{
  v55.receiver = self;
  v55.super_class = VoiceOverBrailleController;
  pairedDeviceSpecifiers = [(AXBluetoothDevicesController *)&v55 pairedDeviceSpecifiers];
  v43 = [pairedDeviceSpecifiers mutableCopy];

  v36 = _AXSVoiceOverTouchCopyTactileGraphicsDisplay();
  if (v36)
  {
    v3 = [[NSUUID alloc] initWithUUIDString:v36];
    if (v3)
    {
      v4 = +[VOSBluetoothManager sharedInstance];
      centralManager = [v4 centralManager];
      v58 = v3;
      v6 = [NSArray arrayWithObjects:&v58 count:1];
      v7 = [centralManager retrievePeripheralsWithIdentifiers:v6];

      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v51 objects:v57 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v52;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v52 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [(AXBluetoothDevicesController *)self getDeviceForPeripheral:*(*(&v51 + 1) + 8 * i)];
            v49[0] = _NSConcreteStackBlock;
            v49[1] = 3221225472;
            v49[2] = __52__VoiceOverBrailleController_pairedDeviceSpecifiers__block_invoke;
            v49[3] = &unk_2575C0;
            v14 = v13;
            v50 = v14;
            if (([v43 ax_containsObjectUsingBlock:v49] & 1) == 0)
            {
              v15 = [(AXBluetoothDevicesController *)self specifierForDevice:v14];
              [v43 addObject:v15];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v51 objects:v57 count:16];
        }

        while (v10);
      }
    }
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = [(SCROBrailleClient *)self->_brailleClient driverConfiguration];
  v16 = [obj countByEnumeratingWithState:&v45 objects:v56 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v46;
    v40 = PSTitleKey;
    v38 = PSDetailControllerClassKey;
    v39 = PSIDKey;
    v37 = *v46;
    do
    {
      v19 = 0;
      v41 = v17;
      do
      {
        if (*v46 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v45 + 1) + 8 * v19);
        v21 = [v20 objectForKey:kSCROBrailleDisplayBrailleVendorProductId];
        v22 = [v20 objectForKey:kSCROBrailleDisplayBluetoothAddress];
        v23 = v22;
        if (v21)
        {
          v24 = v22 == 0;
        }

        else
        {
          v24 = 0;
        }

        if (v24)
        {
          v25 = objc_opt_new();
          v26 = [v20 objectForKey:kSCROBrailleDisplayBrailleProductName];
          if (!v26)
          {
            v26 = [v20 objectForKey:kSCROBrailleDisplayBrailleManufacturerName];
          }

          v27 = settingsLocString(@"USB_BRAILLE", @"VoiceOverBrailleOptions");
          v28 = AXCFormattedString();

          [v25 setName:{v28, v26}];
          [v25 setIdentifier:v21];
          [v25 setAddress:v21];
          v29 = [PSSpecifier preferenceSpecifierNamed:v28 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
          v30 = [objc_allocWithZone(NSMutableDictionary) init];
          [v30 setObject:v28 forKey:v40];
          [v30 setObject:v21 forKey:v39];
          v31 = objc_opt_class();
          v32 = NSStringFromClass(v31);
          [v30 setObject:v32 forKey:v38];

          [v29 setProperties:v30];
          v33 = [objc_allocWithZone(NSMutableDictionary) init];
          [v33 setObject:v25 forKey:@"bt-device"];
          [v29 setUserInfo:v33];
          [v43 addObject:v29];

          v18 = v37;
          v17 = v41;
        }

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [obj countByEnumeratingWithState:&v45 objects:v56 count:16];
    }

    while (v17);
  }

  v34 = [v43 sortedArrayUsingComparator:&__block_literal_global_33];

  return v34;
}

id __52__VoiceOverBrailleController_pairedDeviceSpecifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 propertyForKey:@"bt-device"];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

int64_t __52__VoiceOverBrailleController_pairedDeviceSpecifiers__block_invoke_2(id a1, PSSpecifier *a2, PSSpecifier *a3)
{
  v4 = a3;
  v5 = [(PSSpecifier *)a2 name];
  v6 = [(PSSpecifier *)v4 name];

  v7 = [v5 localizedCompare:v6];
  return v7;
}

- (id)_brailleDisplayAlertDuration:(id)duration
{
  v3 = +[AXSettings sharedInstance];
  voiceOverBrailleAlertsEnabled = [v3 voiceOverBrailleAlertsEnabled];

  if ((voiceOverBrailleAlertsEnabled & 1) == 0)
  {
    v7 = @"OFF";
    goto LABEL_5;
  }

  v5 = +[AXSettings sharedInstance];
  voiceOverBrailleAlertShowUntilDismissed = [v5 voiceOverBrailleAlertShowUntilDismissed];

  if (voiceOverBrailleAlertShowUntilDismissed)
  {
    v7 = @"FOREVER_TIME_BRAILLE_ALERTS";
LABEL_5:
    v8 = settingsLocString(v7, @"Accessibility");
    goto LABEL_7;
  }

  v9 = +[AXSettings sharedInstance];
  [v9 voiceOverBrailleAlertDisplayDuration];
  v8 = AXLocalizedTimeSummary();

LABEL_7:

  return v8;
}

- (id)_brailleDisplayDebounceTimeout:(id)timeout
{
  v3 = +[AXSettings sharedInstance];
  [v3 voiceOverBrailleKeyDebounceTimeout];
  v4 = AXLocalizedTimeSummary();

  return v4;
}

- (id)_brailleDisplayAutoAdvance:(id)advance
{
  v3 = +[AXSettings sharedInstance];
  [v3 voiceOverBrailleAutoAdvanceDuration];
  v4 = AXLocalizedTimeSummary();

  return v4;
}

- (id)brailleDisplayOutput:(id)output
{
  v4 = VOSCustomBrailleEnabled();
  v5 = +[AXSettings sharedInstance];
  v6 = v5;
  if (v4)
  {
    voiceOverTouchBrailleDisplayOutputTableIdentifier = [v5 voiceOverTouchBrailleDisplayOutputTableIdentifier];

    v8 = [[BRLTTable alloc] initWithIdentifier:voiceOverTouchBrailleDisplayOutputTableIdentifier];
    localizedName = [v8 localizedName];

    v6 = voiceOverTouchBrailleDisplayOutputTableIdentifier;
  }

  else
  {
    localizedName = -[VoiceOverBrailleController _stringForBrailleMode:](self, "_stringForBrailleMode:", [v5 voiceOverTouchBrailleDisplayOutputMode]);
  }

  return localizedName;
}

- (id)_stringForBrailleMode:(int64_t)mode
{
  if ((mode - 1) > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = settingsLocString(*(&off_257628 + mode - 1), @"VoiceOverBrailleOptions");
  }

  return v4;
}

- (id)brailleDisplayInput:(id)input
{
  v4 = VOSCustomBrailleEnabled();
  v5 = +[AXSettings sharedInstance];
  voiceOverTouchBrailleDisplayInputTableIdentifier = v5;
  if (v4)
  {
    voiceOverTouchBrailleDisplaySyncInputOutputTables = [v5 voiceOverTouchBrailleDisplaySyncInputOutputTables];

    if (voiceOverTouchBrailleDisplaySyncInputOutputTables)
    {
      v8 = +[AXSettings sharedInstance];
      voiceOverTouchBrailleDisplayOutputTableIdentifier = [v8 voiceOverTouchBrailleDisplayOutputTableIdentifier];
      v10 = +[AXSettings sharedInstance];
      [v10 setVoiceOverTouchBrailleDisplayInputTableIdentifier:voiceOverTouchBrailleDisplayOutputTableIdentifier];
    }

    v11 = +[AXSettings sharedInstance];
    voiceOverTouchBrailleDisplayInputTableIdentifier = [v11 voiceOverTouchBrailleDisplayInputTableIdentifier];

    v12 = [[BRLTTable alloc] initWithIdentifier:voiceOverTouchBrailleDisplayInputTableIdentifier];
    localizedName = [v12 localizedName];
  }

  else
  {
    localizedName = -[VoiceOverBrailleController _stringForBrailleMode:](self, "_stringForBrailleMode:", [v5 voiceOverTouchBrailleDisplayInputMode]);
  }

  return localizedName;
}

- (id)panningAutoturnReadingContent:(id)content
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverTouchBraillePanningAutoTurnsReadingContent]);

  return v4;
}

- (void)setPanningAutoturnReadingContent:(id)content specifier:(id)specifier
{
  bOOLValue = [content BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverTouchBraillePanningAutoTurnsReadingContent:bOOLValue];
}

- (id)brailleFormattingEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverBrailleFormattingEnabled]);

  return v4;
}

- (void)setBrailleFormattingEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverBrailleFormattingEnabled:bOOLValue];
}

- (id)wordWrapEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverBrailleWordWrapEnabled]);

  return v4;
}

- (void)setWordWrapEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverBrailleWordWrapEnabled:bOOLValue];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = VoiceOverBrailleController;
  [(AXBluetoothDevicesController *)&v4 viewDidAppear:appear];
  [(AXBluetoothDevicesController *)self setScanningEnabled:1];
  [(AXBluetoothDevicesController *)self showBluetoothPowerAlert:1];
  [(VoiceOverBrailleController *)self _connectToBrailleClient:1];
  [(VoiceOverBrailleController *)self _handleBrailleConfigurationChanged];
  [(VoiceOverBrailleController *)self _updateBrailleWritingCell];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = VoiceOverBrailleController;
  [(VoiceOverBrailleController *)&v7 viewWillAppear:appear];
  VOSCrystalMigrateBrailleTableReplacements();
  VOSRepairBrailleTableSettings();
  v4 = [(VoiceOverBrailleController *)self specifierForID:@"BrailleDisplayOutput"];
  [(VoiceOverBrailleController *)self reloadSpecifier:v4];

  v5 = [(VoiceOverBrailleController *)self specifierForID:@"BrailleDisplayInput"];
  [(VoiceOverBrailleController *)self reloadSpecifier:v5];

  v6 = [(VoiceOverBrailleController *)self specifierForID:@"BrailleGesturesInput"];
  [(VoiceOverBrailleController *)self reloadSpecifier:v6];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(VoiceOverBrailleController *)self _stopDeviceLoadFailedTimer];
  [(VoiceOverBrailleController *)self _updateBrailleWritingCell];
  v5.receiver = self;
  v5.super_class = VoiceOverBrailleController;
  [(VoiceOverBrailleController *)&v5 viewWillDisappear:disappearCopy];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = VoiceOverBrailleController;
  v4 = [(AXBluetoothDevicesController *)&v7 tableView:view cellForRowAtIndexPath:path];
  textLabel = [v4 textLabel];
  [textLabel setNumberOfLines:0];

  return v4;
}

- (id)syncTablesEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverTouchBrailleDisplaySyncInputOutputTables]);

  return v4;
}

- (void)setSyncTablesEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  v8 = +[AXSettings sharedInstance];
  voiceOverTouchBrailleDisplaySyncInputOutputTables = [v8 voiceOverTouchBrailleDisplaySyncInputOutputTables];

  bOOLValue = [enabledCopy BOOLValue];
  if (voiceOverTouchBrailleDisplaySyncInputOutputTables != bOOLValue)
  {
    v11 = bOOLValue;
    v12 = +[AXSettings sharedInstance];
    v13 = v12;
    if (v11)
    {
      voiceOverTouchBrailleDisplayInputTableIdentifier = [v12 voiceOverTouchBrailleDisplayInputTableIdentifier];
      v15 = +[AXSettings sharedInstance];
      voiceOverTouchBrailleDisplayOutputTableIdentifier = [v15 voiceOverTouchBrailleDisplayOutputTableIdentifier];
      v17 = [voiceOverTouchBrailleDisplayInputTableIdentifier isEqualToString:voiceOverTouchBrailleDisplayOutputTableIdentifier];

      if (!v17)
      {
        v21 = settingsLocString(@"BRAILLE_IO_SYNC_CHANGES_INPUT_TITLE", @"VoiceOverSettings");
        v22 = settingsLocString(@"BRAILLE_IO_SYNC_CHANGES_INPUT_MESSAGE", @"VoiceOverSettings");
        v23 = [UIAlertController alertControllerWithTitle:v21 message:v22 preferredStyle:1];

        objc_initWeak(&location, self);
        v24 = AXUILocalizedStringForKey();
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = __61__VoiceOverBrailleController_setSyncTablesEnabled_specifier___block_invoke;
        v30[3] = &unk_255BF8;
        objc_copyWeak(&v31, &location);
        v25 = [UIAlertAction actionWithTitle:v24 style:1 handler:v30];

        [v23 addAction:v25];
        v26 = AXUILocalizedStringForKey();
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = __61__VoiceOverBrailleController_setSyncTablesEnabled_specifier___block_invoke_2;
        v28[3] = &unk_257608;
        v28[4] = self;
        v29 = v11;
        v27 = [UIAlertAction actionWithTitle:v26 style:0 handler:v28];

        [v23 addAction:v27];
        [(VoiceOverBrailleController *)self presentViewController:v23 animated:1 completion:0];

        objc_destroyWeak(&v31);
        objc_destroyWeak(&location);

        goto LABEL_8;
      }

      v18 = +[AXSettings sharedInstance];
      [v18 setVoiceOverTouchBrailleDisplaySyncInputOutputTables:1];

      selfCopy2 = self;
      v20 = 1;
    }

    else
    {
      [v12 setVoiceOverTouchBrailleDisplaySyncInputOutputTables:0];

      selfCopy2 = self;
      v20 = 0;
    }

    [(VoiceOverBrailleController *)selfCopy2 setDetailItemsHidden:v20];
    [(AXBluetoothDevicesController *)self reloadSpecifiers];
  }

LABEL_8:
}

void __61__VoiceOverBrailleController_setSyncTablesEnabled_specifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"BRAILLE_SYNC_TABLES"];
}

id __61__VoiceOverBrailleController_setSyncTablesEnabled_specifier___block_invoke_2(uint64_t a1)
{
  v2 = +[AXSettings sharedInstance];
  [v2 setVoiceOverTouchBrailleDisplaySyncInputOutputTables:1];

  v3 = +[AXSettings sharedInstance];
  v4 = [v3 voiceOverTouchBrailleDisplayOutputTableIdentifier];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverTouchBrailleDisplayInputTableIdentifier:v4];

  [*(a1 + 32) setDetailItemsHidden:*(a1 + 40)];
  v6 = *(a1 + 32);

  return [v6 reloadSpecifiers];
}

- (id)gradeTwoAutoTranslatedEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverBrailleGradeTwoAutoTranslateEnabled]);

  return v4;
}

- (void)setGradeTwoAutoTransateEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverBrailleGradeTwoAutoTranslateEnabled:bOOLValue];
}

- (id)softwareKeyboardWithBrailleEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverShowSoftwareKeyboardWithBraille]);

  return v4;
}

- (void)setSoftwareKeyboardWithBrailleEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverShowSoftwareKeyboardWithBraille:bOOLValue];
}

- (void)_handleSettingsChange:(id)change
{
  changeCopy = change;
  if (([changeCopy isEqualToString:kAXSVoiceOverTouchBrailleContractionModeChangedNotification] & 1) == 0 && (objc_msgSend(changeCopy, "isEqualToString:", kAXSVoiceOverTouchBrailleEightDotModeChangedNotification) & 1) == 0 && !objc_msgSend(changeCopy, "isEqualToString:", kAXSVoiceOverTouchBrailleTableIdentifierChangedNotification))
  {
    if ([changeCopy isEqualToString:kAXSVoiceOverTouchTactileGraphicsDisplayChangedNotification])
    {
      [(AXBluetoothDevicesController *)self reloadSpecifiers];
    }

    else
    {
      [(VoiceOverBrailleController *)self reloadSpecifierID:@"tableIdentifier" animated:1];
    }

    goto LABEL_19;
  }

  v4 = _AXSVoiceOverTouchCopyBrailleTableIdentifier();
  v5 = [[BRLTTable alloc] initWithIdentifier:v4];
  v23 = v5;
  if (v4)
  {
    v6 = v5;
    supportsTranslationModeContracted = [v5 supportsTranslationModeContracted];
    supportsTranslationMode8Dot = [v6 supportsTranslationMode8Dot];
    if (!supportsTranslationModeContracted)
    {
      v9 = 0;
      v10 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    supportsTranslationMode8Dot = 1;
  }

  v10 = _AXSVoiceOverTouchBrailleContractionMode() == 0;
  v9 = 1;
LABEL_9:
  v11 = 0;
  if (!v10 && supportsTranslationMode8Dot)
  {
    v11 = _AXSVoiceOverTouchBrailleEightDotMode() != 0;
  }

  v12 = [(VoiceOverBrailleController *)self specifierForID:@"CONTRACTION_MODE"];
  v13 = PSEnabledKey;
  v14 = [v12 propertyForKey:PSEnabledKey];
  bOOLValue = [v14 BOOLValue];

  v16 = [NSNumber numberWithBool:v9];
  [v12 setProperty:v16 forKey:v13];

  [(VoiceOverBrailleController *)self beginUpdates];
  if (self->_isContractedBrailleEnabled != v10 || v9 != bOOLValue)
  {
    [(VoiceOverBrailleController *)self reloadSpecifierID:@"CONTRACTION_MODE" animated:1];
  }

  v17 = [(VoiceOverBrailleController *)self specifierForID:@"EIGHTDOT_MODE"];
  v18 = [v17 propertyForKey:v13];
  bOOLValue2 = [v18 BOOLValue];

  v20 = [NSNumber numberWithBool:supportsTranslationMode8Dot & !v10];
  [v17 setProperty:v20 forKey:v13];

  if (v11 != self->_isEightDotBrailleEnabled || ([v17 propertyForKey:v13], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "BOOLValue"), v21, bOOLValue2 != v22))
  {
    [(VoiceOverBrailleController *)self reloadSpecifier:v17 animated:1];
  }

  [(VoiceOverBrailleController *)self _updateBrailleWritingCell];
  [(VoiceOverBrailleController *)self endUpdates];

LABEL_19:
}

- (void)_updateBrailleWritingCell
{
  v3 = _AXSVoiceOverTouchBrailleContractionMode() == 0;
  v4 = [(VoiceOverBrailleController *)self specifierForID:@"WRITING_CONTRACTION_MODE"];
  v5 = [NSNumber numberWithBool:v3];
  [v4 setProperty:v5 forKey:PSEnabledKey];

  [(VoiceOverBrailleController *)self reloadSpecifierID:@"WRITING_CONTRACTION_MODE"];
}

- (BOOL)shouldAddClassicDevice:(id)device
{
  deviceCopy = device;
  if (![deviceCopy paired])
  {
LABEL_7:
    v8 = +[VOSBluetoothManager sharedInstance];
    v6 = [v8 isValidBrailleDevice:deviceCopy];

    goto LABEL_8;
  }

  v4 = +[VOSBluetoothManager sharedInstance];
  v5 = [v4 isPairedDeviceBrailleDisplay:deviceCopy];

  if ((v5 & 1) == 0)
  {
    v7 = AXLogBrailleHW();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = deviceCopy;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Item is paired, but not in list, check if valid: %@", &v10, 0xCu);
    }

    goto LABEL_7;
  }

  v6 = 1;
LABEL_8:

  return v6;
}

- (BOOL)shouldAddBTLEDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy paired])
  {
    v5 = +[VOSBluetoothManager sharedInstance];
    v6 = [v5 isPairedDeviceBrailleDisplay:deviceCopy];
  }

  else
  {
    name = [deviceCopy name];
    v8 = [name containsString:@"AirPods"];

    if (v8)
    {
      v6 = 0;
    }

    else
    {
      v10.receiver = self;
      v10.super_class = VoiceOverBrailleController;
      v6 = [(AXBluetoothDevicesController *)&v10 shouldAddBTLEDevice:deviceCopy];
    }
  }

  return v6;
}

- (void)deviceConnected:(id)connected
{
  connectedCopy = connected;
  v5 = AXLogBrailleHW();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = connectedCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Device connected: %@", &v8, 0xCu);
  }

  if ([connectedCopy isClassicDevice])
  {
    address = [connectedCopy address];
    [(SCROBrailleClient *)self->_brailleClient loadDisplayWithBluetoothDeviceAddress:address];
LABEL_9:
    [(VoiceOverBrailleController *)self _startDeviceLoadFailedTimer];

    goto LABEL_10;
  }

  if ([connectedCopy isBTLEDevice])
  {
    address = [connectedCopy identifier];
    v7 = AXLogBrailleHW();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = connectedCopy;
      v10 = 2112;
      v11 = address;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Handling LE device: %@ %@", &v8, 0x16u);
    }

    [(SCROBrailleClient *)self->_brailleClient loadTactileGraphicsDisplayWithBLEIdentifier:address];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)_startDeviceLoadFailedTimer
{
  bluetoothDeviceLoadFailedTimer = self->_bluetoothDeviceLoadFailedTimer;
  if (bluetoothDeviceLoadFailedTimer)
  {
    [(NSTimer *)bluetoothDeviceLoadFailedTimer invalidate];
  }

  self->_bluetoothDeviceLoadFailedTimer = [NSTimer scheduledTimerWithTimeInterval:self target:"_bluetoothDeviceLoadFailedTimerFireMethod:" selector:0 userInfo:0 repeats:30.0];

  _objc_release_x1();
}

- (void)_stopDeviceLoadFailedTimer
{
  [(NSTimer *)self->_bluetoothDeviceLoadFailedTimer invalidate];
  bluetoothDeviceLoadFailedTimer = self->_bluetoothDeviceLoadFailedTimer;
  self->_bluetoothDeviceLoadFailedTimer = 0;
}

- (void)_bluetoothDeviceLoadFailedTimerFireMethod:(id)method
{
  bluetoothDeviceLoadFailedTimer = self->_bluetoothDeviceLoadFailedTimer;
  self->_bluetoothDeviceLoadFailedTimer = 0;

  identifier = [(PSSpecifier *)self->super._currentDeviceSpecifier identifier];
  [(VoiceOverBrailleController *)self _handleFailedToLoadBluetoothDevice:identifier];
}

- (id)contractedBrailleEnabled:(id)enabled
{
  v4 = _AXSVoiceOverTouchCopyBrailleTableIdentifier();
  v5 = [[BRLTTable alloc] initWithIdentifier:v4];
  v6 = v5;
  v7 = (!v4 || [v5 supportsTranslationModeContracted]) && _AXSVoiceOverTouchBrailleContractionMode() == 0;
  self->_isContractedBrailleEnabled = v7;
  v8 = [NSNumber numberWithBool:?];

  return v8;
}

- (void)setContractedBrailleEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  self->_isContractedBrailleEnabled = bOOLValue;
  v6 = bOOLValue ^ 1;

  __AXSVoiceOverTouchSetBrailleContractionMode(v6);
}

- (id)eightDotBrailleEnabled:(id)enabled
{
  v4 = _AXSVoiceOverTouchCopyBrailleTableIdentifier();
  v5 = [[BRLTTable alloc] initWithIdentifier:v4];
  v6 = v5;
  if (v4)
  {
    if ([v5 supportsTranslationModeContracted])
    {
      v7 = _AXSVoiceOverTouchBrailleContractionMode() == 0;
    }

    else
    {
      v7 = 0;
    }

    supportsTranslationMode8Dot = [v6 supportsTranslationMode8Dot];
    v8 = 0;
    if (v7 || !supportsTranslationMode8Dot)
    {
      goto LABEL_10;
    }
  }

  else if (!_AXSVoiceOverTouchBrailleContractionMode())
  {
    v8 = 0;
    goto LABEL_10;
  }

  v8 = _AXSVoiceOverTouchBrailleEightDotMode() != 0;
LABEL_10:
  self->_isEightDotBrailleEnabled = v8;
  v10 = [NSNumber numberWithBool:?];

  return v10;
}

- (void)setEightDotBrailleEnabled:(id)enabled specifier:(id)specifier
{
  self->_isEightDotBrailleEnabled = [enabled BOOLValue];

  __AXSVoiceOverTouchSetBrailleEightDotMode();
}

- (id)alwaysUseNemethEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverAlwaysUseNemethCodeForMathEnabled]);

  return v4;
}

- (void)setAlwaysUseNemethEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  v6 = +[AXSettings sharedInstance];
  bOOLValue = [enabledCopy BOOLValue];

  [v6 setVoiceOverAlwaysUseNemethCodeForMathEnabled:bOOLValue];
}

- (void)setBluetoothIsBusy:(BOOL)busy
{
  v5.receiver = self;
  v5.super_class = VoiceOverBrailleController;
  [(AXBluetoothDevicesController *)&v5 setBluetoothIsBusy:?];
  if (!busy)
  {
    [(VoiceOverBrailleController *)self _stopDeviceLoadFailedTimer];
  }
}

- (id)brailleUsesUnderlineCursorEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverTouchBrailleUsesUnderlineCursor]);

  return v4;
}

- (void)setBrailleUsesUnderlineCursorEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  v6 = +[AXSettings sharedInstance];
  bOOLValue = [enabledCopy BOOLValue];

  [v6 setVoiceOverTouchBrailleUsesUnderlineCursor:bOOLValue];
}

- (void)_connectToBrailleClient:(BOOL)client
{
  brailleClient = self->_brailleClient;
  if (client)
  {
    if (!brailleClient)
    {
      v6 = [objc_allocWithZone(SCROBrailleClient) initWithDelegate:self];
      v7 = self->_brailleClient;
      self->_brailleClient = v6;

      [(SCROBrailleClient *)self->_brailleClient setKeepConnectionAlive:1];
      v8 = self->_brailleClient;

      [(SCROBrailleClient *)v8 setDisplayDescriptorCallbackEnabled:0];
    }
  }

  else
  {
    [(SCROBrailleClient *)brailleClient setDelegate:0];
    [(SCROBrailleClient *)self->_brailleClient setKeepConnectionAlive:0];
    v5 = self->_brailleClient;
    self->_brailleClient = 0;
  }
}

- (void)_handleBrailleConfigurationChanged
{
  [(VoiceOverBrailleController *)self beginUpdates];
  [(AXBluetoothDevicesController *)self updatePairedDevices];

  [(VoiceOverBrailleController *)self endUpdates];
}

- (void)_handleFailedToLoadBluetoothDevice:(id)device
{
  deviceCopy = device;
  if ([(AXBluetoothDevicesController *)self bluetoothIsBusy])
  {
    identifier = [(PSSpecifier *)self->super._currentDeviceSpecifier identifier];
    v5 = [identifier isEqualToString:deviceCopy];

    if (v5)
    {
      [(VoiceOverBrailleController *)self setBluetoothIsBusy:0];
      [(VoiceOverBrailleController *)self reloadSpecifierID:deviceCopy animated:0];
      v6 = [(NSMutableDictionary *)self->super._devicesDict objectForKey:deviceCopy];
      if (v6)
      {
        rootController = [(VoiceOverBrailleController *)self rootController];
        presentedViewController = [rootController presentedViewController];

        if (!presentedViewController)
        {
          alert = self->super._alert;
          if (alert)
          {
            [(VoiceOverBluetoothAlert *)alert dismiss];
            v10 = self->super._alert;
            self->super._alert = 0;
          }

          v11 = [objc_allocWithZone(VoiceOverBluetoothAlert) initWithDevice:v6];
          v12 = self->super._alert;
          self->super._alert = v11;

          v13 = self->super._alert;
          v14 = [NSNumber numberWithUnsignedInteger:VOBTDriverLoadingError];
          [(VoiceOverBluetoothAlert *)v13 showAlertWithResult:v14];
        }
      }
    }
  }
}

@end