@interface HearingAidController
- (HearingAidController)init;
- (id)accessibilityPreferenceForSpecifier:(id)a3;
- (id)hearingAidComplaince:(id)a3;
- (id)specifiers;
- (void)_handleAvailableDevicesChanged:(id)a3;
- (void)accessibilitySetPreference:(id)a3 specifier:(id)a4;
- (void)beginSearching;
- (void)callObserver:(id)a3 callChanged:(id)a4;
- (void)dealloc;
- (void)displayPairingFailureAlertForDevice:(id)a3;
- (void)handleResignActive;
- (void)hearingServerDidDie:(id)a3;
- (void)insertBluetoothAvailabilityToSpecifiers:(id)a3;
- (void)insertPlaceholderSpecifierIfNeeded;
- (void)insertSearchingToSpecifiers:(id)a3;
- (void)refreshAvailableDevices;
- (void)setBluetoothAvailability:(BOOL)a3;
- (void)setBluetoothAvailable:(id)a3;
- (void)setHearingAidCompliance:(id)a3 specifier:(id)a4;
- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewHearingAidDetailsWithSpecifier:(id)a3;
- (void)willBecomeActive;
- (void)willResignActive;
@end

@implementation HearingAidController

- (HearingAidController)init
{
  v8.receiver = self;
  v8.super_class = HearingAidController;
  v2 = [(HearingAidController *)&v8 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = +[HUAccessoryManager sharedInstance];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_25D60;
    v5[3] = &unk_48C28;
    objc_copyWeak(&v6, &location);
    [v3 registerBluetoothStateBlock:v5 withListener:v2];

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[AXHAServer sharedInstance];
  [v3 sendMessagesPriorityDefault];

  v4 = +[AXHAServer sharedInstance];
  [v4 unregisterUpdateListener:self];

  v5 = +[AXHAServer sharedInstance];
  [v5 setDelegate:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self];

  [(CXCallObserver *)self->_callObserver setDelegate:0 queue:0];
  v7 = HCLogHearingAids();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "HearingAidController deallocated", buf, 2u);
  }

  v8.receiver = self;
  v8.super_class = HearingAidController;
  [(HearingAidController *)&v8 dealloc];
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = HearingAidController;
  [(HearingAidController *)&v15 viewDidLoad];
  v3 = +[NSMutableArray array];
  [(HearingAidController *)self setAvailableDevices:v3];

  v4 = +[AXHAServer sharedInstance];
  [v4 sendMessagesPriorityHigh];

  v5 = +[AXHAServer sharedInstance];
  [v5 startServerWithDelegate:self];

  v6 = objc_opt_new();
  callObserver = self->_callObserver;
  self->_callObserver = v6;

  [(CXCallObserver *)self->_callObserver setDelegate:self queue:0];
  v8 = [(HearingAidController *)self table];
  v9 = objc_opt_class();
  v10 = +[HearingPlaceholderCell cellReuseIdentifier];
  [v8 registerClass:v9 forCellReuseIdentifier:v10];

  v11 = [(HearingAidController *)self table];
  v12 = objc_opt_class();
  v13 = +[HearingAidConnectionTableCell cellReuseIdentifier];
  [v11 registerClass:v12 forCellReuseIdentifier:v13];

  v14 = +[NSNotificationCenter defaultCenter];
  [v14 addObserver:self selector:"handleResignActive" name:UIApplicationWillResignActiveNotification object:0];
}

- (void)willBecomeActive
{
  v6.receiver = self;
  v6.super_class = HearingAidController;
  [(HearingAidController *)&v6 willBecomeActive];
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "HearingAidController will become active", v5, 2u);
  }

  v4 = +[AXHAServer sharedInstance];
  [v4 sendMessagesPriorityHigh];

  [(HearingAidController *)self beginSearching];
}

- (void)willResignActive
{
  v7.receiver = self;
  v7.super_class = HearingAidController;
  [(HearingAidController *)&v7 willResignActive];
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "HearingAidController will resign active", v6, 2u);
  }

  v4 = +[AXHAServer sharedInstance];
  [v4 sendMessagesPriorityDefault];

  v5 = +[AXHAServer sharedInstance];
  [v5 unregisterUpdateListener:self];
}

- (void)handleResignActive
{
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "HearingAidController will handle resign active notification", v6, 2u);
  }

  v4 = +[AXHAServer sharedInstance];
  [v4 sendMessagesPriorityDefault];

  v5 = +[AXHAServer sharedInstance];
  [v5 unregisterUpdateListener:self];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v4)
  {
    goto LABEL_43;
  }

  v5 = [(HearingAidController *)self loadSpecifiersFromPlistName:@"HearingAidSettings" target:self];
  v6 = [v5 mutableCopy];

  +[NSMutableArray array];
  v45 = v44 = self;
  v43 = v3;
  if (self->_bluetoothAvailable)
  {
    v7 = [(HearingAidController *)self availableDevices];
    v8 = [v7 count];

    if (v8)
    {
      v9 = [(HearingAidController *)self availableDevices];
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_26BB8;
      v51[3] = &unk_491C0;
      v52 = v6;
      [v9 enumerateObjectsUsingBlock:v51];
    }

    else
    {
      [(HearingAidController *)self insertSearchingToSpecifiers:v6];
    }

    v10 = hearingSettingsLocString(@"MFiEducationFooter", @"HearingAidSettings");
    v11 = +[HUHearingAidSettings sharedInstance];
    v12 = [v11 pairedHearingAids];

    if (!v12)
    {
      goto LABEL_26;
    }

    v13 = _AXSTripleClickCopyOptions();
    v14 = _AXSTripleClickContainsOption();
    if (v13)
    {
      CFRelease(v13);
    }

    if ((+[HCUtilities deviceHasHomeButton]& 1) != 0)
    {
      v15 = @"HearingAidFooterText";
    }

    else
    {
      v15 = [@"HearingAidFooterText" stringByAppendingString:@"_NHB"];
      if (+[HCUtilities deviceIsPad])
      {
        v16 = [(__CFString *)v15 stringByAppendingString:@"_IPAD"];

        v15 = v16;
      }
    }

    if (v14)
    {
      v17 = v15;
    }

    else
    {
      v17 = @"HearingAidFooterText_Off";
    }

    v18 = hearingSettingsLocString(v17, @"HearingAidSettings");

    v19 = +[HUHearingAidSettings sharedInstance];
    v20 = [v19 isiCloudPaired];

    if (v20)
    {
      if ((+[HCUtilities deviceIsPhone]& 1) != 0)
      {
        v21 = @"HearingAidFooterText_iCloud_iPhone";
LABEL_24:
        v22 = hearingSettingsLocString(v21, @"HearingAidSettings");

        v18 = v22;
        goto LABEL_25;
      }

      if ((+[HCUtilities deviceIsPad]& 1) != 0)
      {
        v21 = @"HearingAidFooterText_iCloud_iPad";
        goto LABEL_24;
      }

      if (+[HCUtilities deviceIsPod])
      {
        v21 = @"HearingAidFooterText_iCloud_iPod";
        goto LABEL_24;
      }
    }

LABEL_25:

    v10 = v18;
LABEL_26:
    v23 = [v6 firstObject];
    [v23 setProperty:v10 forKey:PSFooterTextGroupKey];

    goto LABEL_27;
  }

  [(HearingAidController *)self insertBluetoothAvailabilityToSpecifiers:v6];
LABEL_27:
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v6;
  v24 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v48;
    v27 = PSAllowMultilineTitleKey;
    v28 = PSKeyNameKey;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v48 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v47 + 1) + 8 * i);
        [v30 setProperty:&__kCFBooleanTrue forKey:v27];
        v31 = [v30 properties];
        v32 = [v31 objectForKey:v28];

        if (([v32 hasPrefix:@"HearingAudioRouting"] & 1) != 0 || (objc_msgSend(v32, "hasPrefix:", @"HearingAidRingtone") & 1) != 0 || (objc_msgSend(v32, "hasPrefix:", @"HearingMultidevice") & 1) != 0 || objc_msgSend(v32, "hasPrefix:", @"HearingAidSystemSounds"))
        {
          v33 = +[HUHearingAidSettings sharedInstance];
          v34 = [v33 pairedHearingAids];

          if (!v34)
          {
            [v45 addObject:v30];
          }
        }
      }

      v25 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v25);
  }

  if (+[HCUtilities deviceIsPhone])
  {
    v35 = hearingSettingsLocString(@"HearingAidCompliance", @"HearingAidSettings");
    v36 = [PSSpecifier groupSpecifierWithName:v35];

    v37 = hearingSettingsLocString(@"HearingAidComplianceInstructions", @"HearingAidSettings");
    [v36 setProperty:v37 forKey:PSFooterTextGroupKey];

    [obj addObject:v36];
    v38 = hearingSettingsLocString(@"HearingAidCompliance", @"HearingAidSettings");
    v39 = [PSSpecifier preferenceSpecifierNamed:v38 target:v44 set:"setHearingAidCompliance:specifier:" get:"hearingAidComplaince:" detail:0 cell:6 edit:0];

    [v39 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    [v39 setProperty:@"HEARING_AID_COMPLIANCE" forKey:PSIDKey];
    [obj addObject:v39];
  }

  [obj removeObjectsInArray:v45];
  v40 = [obj copy];
  v41 = *&v44->PSListController_opaque[v43];
  *&v44->PSListController_opaque[v43] = v40;

  v4 = *&v44->PSListController_opaque[v43];
LABEL_43:

  return v4;
}

- (id)hearingAidComplaince:(id)a3
{
  v3 = AXHACHearingAidComplianceEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (void)setHearingAidCompliance:(id)a3 specifier:(id)a4
{
  [a3 BOOLValue];
  AXHACHearingAidComplianceSetEnabled();
  if (a3)
  {
    if (_AXSEarpieceNoiseCancellationEnabled())
    {
      v6 = objc_alloc_init(PSConfirmationSpecifier);
      if ((+[HCUtilities deviceIsPad]& 1) == 0)
      {
        v7 = hearingSettingsLocString(@"HearingAlertButtonTitle", @"HearingAidSettings");
        [v6 setTitle:v7];
      }

      v8 = hearingSettingsLocString(@"NoiseCancellationHacToggleMessage", @"HearingAidSettings");
      [v6 setPrompt:v8];

      v9 = hearingSettingsLocString(@"HearingAlertButtonTitle", @"HearingAidSettings");
      [v6 setOkButton:v9];

      [(HearingAidController *)self showConfirmationViewForSpecifier:v6];
    }

    _AXSEarpieceNoiseCancellationSetEnabled();
  }
}

- (void)setBluetoothAvailable:(id)a3
{
  if ([a3 BOOLValue])
  {
    v4 = +[HUAccessoryManager sharedInstance];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_26DDC;
    v5[3] = &unk_48AD0;
    v5[4] = self;
    [v4 turnBluetoothOnWithCompletion:v5];
  }
}

- (void)setBluetoothAvailability:(BOOL)a3
{
  self->_bluetoothAvailable = a3;
  AXPerformBlockOnMainThread();
  [(HearingAidController *)self beginSearching];
}

- (id)accessibilityPreferenceForSpecifier:(id)a3
{
  v3 = [a3 properties];
  v4 = [v3 objectForKey:PSKeyNameKey];

  if ([v4 isEqualToString:@"HearingAidCompliance"])
  {
    v5 = [NSNumber numberWithBool:AXHACHearingAidComplianceEnabled() != 0];
LABEL_5:
    v6 = v5;
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"HearingAidRingtone"])
  {
    v5 = [NSNumber numberWithUnsignedChar:_AXSHearingAidRingtoneStreamingEnabled()];
    goto LABEL_5;
  }

  if ([v4 isEqualToString:@"HearingMultideviceSettings"])
  {
    v7 = +[HUHearingAidSettings sharedInstance];
    v8 = [v7 multideviceSettingsEnabled];
LABEL_12:
    v6 = [NSNumber numberWithBool:v8];

    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"HearingMultideviceAudio"])
  {
    v7 = +[HUHearingAidSettings sharedInstance];
    v8 = [v7 multideviceAudioEnabled];
    goto LABEL_12;
  }

  if ([v4 isEqualToString:@"HearingAidSystemSounds"])
  {
    v7 = +[HUHearingAidSettings sharedInstance];
    v8 = [v7 shouldStreamSystemSounds];
    goto LABEL_12;
  }

  v6 = 0;
LABEL_13:

  return v6;
}

- (void)accessibilitySetPreference:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = [a4 properties];
  v11 = [v7 objectForKey:PSKeyNameKey];

  v8 = [v6 BOOLValue];
  if ([v11 isEqualToString:@"HearingAidCompliance"])
  {
    AXHACHearingAidComplianceSetEnabled();
    if (v8)
    {
      _AXSEarpieceNoiseCancellationSetEnabled();
    }

    v9 = [(HearingAidController *)self parentController];
    [v9 reload];
  }

  else
  {
    if ([v11 isEqualToString:@"HearingAidRingtone"])
    {
      _AXSHearingAidRingtoneStreamingSetEnabled();
      goto LABEL_14;
    }

    if ([v11 isEqualToString:@"HearingMultideviceSettings"])
    {
      v10 = +[HUHearingAidSettings sharedInstance];
      [v10 setMultideviceSettingsEnabled:v8];
    }

    else if ([v11 isEqualToString:@"HearingMultideviceAudio"])
    {
      v10 = +[HUHearingAidSettings sharedInstance];
      [v10 setMultideviceAudioEnabled:v8];
    }

    else
    {
      if (![v11 isEqualToString:@"HearingAidSystemSounds"])
      {
        goto LABEL_14;
      }

      v10 = +[HUHearingAidSettings sharedInstance];
      [v10 setShouldStreamSystemSounds:v8];
    }
  }

LABEL_14:
}

- (void)refreshAvailableDevices
{
  v3 = [(HearingAidController *)self deviceUpdateLock];

  if (!v3)
  {
    v4 = objc_alloc_init(NSLock);
    [(HearingAidController *)self setDeviceUpdateLock:v4];
  }

  if (self->_bluetoothAvailable)
  {
    objc_initWeak(&location, self);
    v5 = +[HUHearingAidSettings sharedInstance];
    v6 = [v5 pairedHearingAids];

    if (v6)
    {
      v7 = +[AXHAServer sharedInstance];
      v8 = objc_loadWeakRetained(&location);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_27448;
      v16[3] = &unk_49228;
      objc_copyWeak(&v17, &location);
      [v7 registerListener:v8 forPropertyUpdateHandler:v16];

      objc_destroyWeak(&v17);
    }

    v9 = +[AXHAServer sharedInstance];
    v10 = objc_loadWeakRetained(&location);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_274F8;
    v14[3] = &unk_49108;
    objc_copyWeak(&v15, &location);
    [v9 registerListener:v10 forAvailableDeviceHandler:v14];

    v11 = +[AXHAServer sharedInstance];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_2760C;
    v12[3] = &unk_49228;
    objc_copyWeak(&v13, &location);
    [v11 registerListener:self forControlMessageHandler:v12];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

- (void)_handleAvailableDevicesChanged:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    +[NSMutableArray array];
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_27CFC;
    v19 = &unk_492E0;
    v5 = v20 = self;
    v21 = v5;
    [v4 enumerateObjectsUsingBlock:&v16];
    if (![v5 count])
    {
LABEL_10:

      goto LABEL_11;
    }

    v6 = [v5 sortedArrayUsingComparator:&stru_49320];
    v7 = [(HearingAidController *)self availableDevices];
    if ([v7 count])
    {
      v8 = [(HearingAidController *)self availableDevices];
      v9 = [v8 objectAtIndex:0];
      v10 = [(HearingAidController *)self indexOfSpecifier:v9];

      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = [(HearingAidController *)self availableDevices];
        [(HearingAidController *)self replaceContiguousSpecifiers:v11 withSpecifiers:v5 animated:1];

LABEL_9:
        v15 = [(HearingAidController *)self availableDevices];
        [v15 setArray:v5];

        goto LABEL_10;
      }
    }

    else
    {
    }

    v14 = [(HearingAidController *)self availableDevices];
    [(HearingAidController *)self removeContiguousSpecifiers:v14 animated:0];

    [(HearingAidController *)self insertContiguousSpecifiers:v5 atIndex:1 animated:0];
    [(HearingAidController *)self removeSpecifierID:@"PLACEHOLDER" animated:0];
    goto LABEL_9;
  }

  v12 = [(HearingAidController *)self availableDevices];
  [(HearingAidController *)self removeContiguousSpecifiers:v12 animated:0];

  v13 = [(HearingAidController *)self availableDevices];
  [v13 removeAllObjects];

  [(HearingAidController *)self insertPlaceholderSpecifierIfNeeded];
LABEL_11:
}

- (void)beginSearching
{
  if (!self->_pairingManager)
  {
    v3 = [[CBPeripheralManager alloc] initWithDelegate:self queue:0];
    pairingManager = self->_pairingManager;
    self->_pairingManager = v3;
  }

  if (self->_bluetoothAvailable)
  {

    [(HearingAidController *)self refreshAvailableDevices];
  }
}

- (void)viewHearingAidDetailsWithSpecifier:(id)a3
{
  v4 = *(a3 + OBJC_IVAR___PSSpecifier_detailControllerClass);
  v5 = a3;
  v6 = objc_alloc_init(v4);
  if (!v6)
  {
    v6 = objc_alloc_init(PSDetailController);
  }

  v8 = v6;
  v7 = [(HearingAidController *)self rootController];
  [v8 setRootController:v7];

  [v8 setParentController:self];
  [v8 setSpecifier:v5];

  [(HearingAidController *)self showController:v8 animate:1];
}

- (void)displayPairingFailureAlertForDevice:(id)a3
{
  v4 = a3;
  if ([v4 isPaired] && (objc_msgSend(v4, "isBluetoothPaired") & 1) == 0)
  {
    v5 = +[HUHearingAidSettings sharedInstance];
    v6 = [v5 pairedHearingAids];
    if (v6)
    {
      pairingAlertController = self->_pairingAlertController;

      if (!pairingAlertController)
      {
        v8 = hearingSettingsLocString(@"HearingPairingFailureTitle", @"HearingAidSettings");
        v9 = hearingSettingsLocString(@"HearingPairingFailureMessage", @"HearingAidSettings");
        v10 = [UIAlertController alertControllerWithTitle:v8 message:v9 preferredStyle:1];
        v11 = self->_pairingAlertController;
        self->_pairingAlertController = v10;

        v12 = self->_pairingAlertController;
        v13 = hearingSettingsLocString(@"HearingAlertButtonTitle", @"HearingAidSettings");
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_282BC;
        v15[3] = &unk_48EA0;
        v15[4] = self;
        v14 = [UIAlertAction actionWithTitle:v13 style:0 handler:v15];
        [(UIAlertController *)v12 addAction:v14];

        [(HearingAidController *)self presentViewController:self->_pairingAlertController animated:1 completion:&stru_49340];
      }
    }

    else
    {
    }
  }
}

- (void)insertPlaceholderSpecifierIfNeeded
{
  v3 = [(HearingAidController *)self availableDevices];
  v4 = [v3 count];

  if (!v4)
  {
    if (self->_bluetoothAvailable)
    {
      v5 = [(HearingAidController *)self specifierForID:@"PLACEHOLDER"];

      if (!v5)
      {
        [(HearingAidController *)self insertSearchingToSpecifiers:0];
      }

      v6 = @"HEARING_AID_BLUETOOTH";
    }

    else
    {
      v7 = [(HearingAidController *)self specifierForID:@"HEARING_AID_BLUETOOTH"];

      if (!v7)
      {
        [(HearingAidController *)self insertBluetoothAvailabilityToSpecifiers:0];
      }

      v6 = @"PLACEHOLDER";
    }

    [(HearingAidController *)self removeSpecifierID:v6 animated:0];
  }
}

- (void)insertSearchingToSpecifiers:(id)a3
{
  v7 = a3;
  v4 = hearingSettingsLocString(@"SearchingPlaceholder", @"HearingAidSettings");
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:0 get:"valueForSpecifier:" detail:objc_opt_class() cell:4 edit:0];

  [v5 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v5 setIdentifier:@"PLACEHOLDER"];
  v6 = [NSNumber numberWithBool:0];
  [v5 setProperty:v6 forKey:PSEnabledKey];

  if (v7)
  {
    [v7 insertObject:v5 atIndex:1];
  }

  else
  {
    [(HearingAidController *)self insertSpecifier:v5 atIndex:1 animated:0];
  }
}

- (void)insertBluetoothAvailabilityToSpecifiers:(id)a3
{
  v9 = a3;
  v4 = hearingSettingsLocString(@"BluetoothDisabledTitle", @"HearingAidSettings");
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:"setBluetoothAvailable:" get:"bluetoothAvailable" detail:0 cell:6 edit:0];

  [v5 setProperty:@"HEARING_AID_BLUETOOTH" forKey:PSIDKey];
  if (v9)
  {
    [v9 insertObject:v5 atIndex:1];
    v6 = [v9 firstObject];
  }

  else
  {
    [(HearingAidController *)self insertSpecifier:v5 atIndex:1 animated:0];
    v7 = [(HearingAidController *)self specifiers];
    v6 = [v7 firstObject];
  }

  v8 = hearingSettingsLocString(@"BluetoothDisabledDescription", @"HearingAidSettings");
  [v6 setProperty:v8 forKey:PSFooterTextGroupKey];

  if (!v9)
  {
    [(HearingAidController *)self reloadSpecifier:v6];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v23.receiver = self;
  v23.super_class = HearingAidController;
  v6 = a4;
  v7 = a3;
  [(HearingAidController *)&v23 tableView:v7 didSelectRowAtIndexPath:v6];
  v8 = [v7 cellForRowAtIndexPath:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 device];
    if (([v9 isPaired] & 1) == 0)
    {
      v12 = HCLogHearingAids();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = v9;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "HearingAidController: User requested to pair Hearing Aids\n%@", buf, 0xCu);
      }

      [v9 connect];
      [v9 setKeepInSync:1];
      [v9 setValue:&__kCFBooleanTrue forProperty:0x4000000];
      v13 = [(HearingAidController *)self availableDevices];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_28A04;
      v21[3] = &unk_48D90;
      v22 = v8;
      [v13 enumerateObjectsUsingBlock:v21];

      if ((+[HCUtilities deviceHasHomeButton]& 1) != 0)
      {
        v14 = @"HearingAidFooterText";
      }

      else
      {
        v14 = [@"HearingAidFooterText" stringByAppendingString:@"_NHB"];
        if (+[HCUtilities deviceIsPad])
        {
          v15 = [(__CFString *)v14 stringByAppendingString:@"_IPAD"];

          v14 = v15;
        }
      }

      v16 = hearingSettingsLocString(v14, @"HearingAidSettings");
      v17 = [(HearingAidController *)self specifierAtIndex:0];
      [v17 setProperty:v16 forKey:PSFooterTextGroupKey];
      [(HearingAidController *)self reloadSpecifier:v17];

      goto LABEL_14;
    }

    v10 = +[HUHearingAidSettings sharedInstance];
    if ([v10 isiCloudPaired])
    {
      v11 = +[HUHearingAidSettings sharedInstance];
      if (![v11 isPairedWithFakeHearingAids])
      {
        v18 = +[AXHAServer sharedInstance];
        v19 = [v18 hearingAidReachable];

        if (v19)
        {
          v20 = +[AXHAServer sharedInstance];
          [v20 requestHearingAidConnectionWithReason:4];

          [(HearingAidController *)self displayPairingFailureAlertForDevice:v9];
        }

        goto LABEL_14;
      }
    }

LABEL_14:
  }
}

- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4
{
  v5 = [(HearingAidController *)self indexForIndexPath:a4];
  v6 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v5];
  [(HearingAidController *)self viewHearingAidDetailsWithSpecifier:v6];
}

- (void)hearingServerDidDie:(id)a3
{
  v4 = +[AXHAServer sharedInstance];
  [v4 startServerWithDelegate:self];
}

- (void)callObserver:(id)a3 callChanged:(id)a4
{
  v5 = a4;
  v6 = HCLogHearingAids();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109376;
    v7[1] = [v5 hasConnected];
    v8 = 1024;
    v9 = [v5 hasEnded];
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Call: connected %d, ended %d", v7, 0xEu);
  }

  -[HearingAidController _updateHACSwitchSettingWithStatus:](self, "_updateHACSwitchSettingWithStatus:", [v5 hasEnded]);
}

@end