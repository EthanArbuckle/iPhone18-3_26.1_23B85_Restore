@interface COSSOSSettingsViewController
- (BOOL)canEditMedicalIDContacts;
- (BOOL)showKappaInfo;
- (BOOL)showNewtonInfo;
- (BOOL)useMedicalEmergencyContacts;
- (COSSOSSettingsViewController)init;
- (COSSOSSettingsViewControllerDelegate)navBarDelegate;
- (_NSRange)rangeOfReplacementString:(id)a3 inFormatString:(id)a4;
- (id)_createKappaSpecifiers;
- (id)_createNewtonSpecifiers;
- (id)_descriptionOfNumberOfFallDetectionApps:(id)a3;
- (id)kappaTriggersEmergencySOS:(id)a3;
- (id)longPressTriggersEmergencySOS:(id)a3;
- (id)newtonTriggersEmergencySOS:(id)a3;
- (id)specifiers;
- (void)_addFooterFormat:(id)a3 footerLink:(id)a4 toSpecifier:(id)a5 withAction:(id)a6;
- (void)_createKappaAPISpecifiers;
- (void)_didSelectFallDetectionDataSharing:(id)a3;
- (void)_editMedicalID;
- (void)_setNewtonModeChangeForSpecifier:(id)a3;
- (void)_updateSOSContactsList;
- (void)addEmergencyContactsToSpecifiers:(id)a3;
- (void)addSOSContactsToSpecifiers:(id)a3;
- (void)dealloc;
- (void)learnMore;
- (void)presentConfirmationWithTitle:(id)a3 message:(id)a4 cancelTitle:(id)a5 cancelHandler:(id)a6 confirmTitle:(id)a7 confirmHandler:(id)a8;
- (void)setHealthStore:(id)a3;
- (void)setKappaTriggersEmergencySOS:(id)a3 forSpecifier:(id)a4;
- (void)setLongPressTriggersEmergencySOS:(id)a3 forSpecifier:(id)a4;
- (void)setNewtonTriggersEmergencySOS:(id)a3 forSpecifier:(id)a4;
- (void)sosContactsChanged:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation COSSOSSettingsViewController

- (BOOL)useMedicalEmergencyContacts
{
  if (!self->_haveSetUseMedicalEmergencyContacts)
  {
    self->_useMedicalEmergencyContacts = 1;
    v3 = +[UIApplication sharedApplication];
    v4 = [v3 activeWatch];

    v5 = [[NSUUID alloc] initWithUUIDString:@"CCBCAB2C-F590-4386-BC88-BFBEE2C2F7F4"];
    self->_deviceSupportsMedicalContacts = [v4 supportsCapability:v5];

    if (self->_deviceSupportsMedicalContacts)
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x2050000000;
      v6 = qword_1002BD5F0;
      v14 = qword_1002BD5F0;
      if (!qword_1002BD5F0)
      {
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_1000EA3A4;
        v10[3] = &unk_1002680D0;
        v10[4] = &v11;
        sub_1000EA3A4(v10);
        v6 = v12[3];
      }

      v7 = v6;
      _Block_object_dispose(&v11, 8);
      v8 = [v6 sharedInstance];
      self->_useMedicalEmergencyContacts = [v8 isAllowedToMessageSOSContacts];
    }

    else
    {
      self->_useMedicalEmergencyContacts = 0;
    }

    self->_haveSetUseMedicalEmergencyContacts = 1;
  }

  return self->_useMedicalEmergencyContacts;
}

- (COSSOSSettingsViewController)init
{
  v26.receiver = self;
  v26.super_class = COSSOSSettingsViewController;
  v2 = [(COSSOSSettingsViewController *)&v26 init];
  if (v2)
  {
    v3 = objc_alloc_init(HKHealthStore);
    [(COSSOSSettingsViewController *)v2 setHealthStore:v3];

    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v4 = qword_1002BD600;
    v31 = qword_1002BD600;
    if (!qword_1002BD600)
    {
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1000EA570;
      v27[3] = &unk_1002680D0;
      v27[4] = &v28;
      sub_1000EA570(v27);
      v4 = v29[3];
    }

    v5 = v4;
    _Block_object_dispose(&v28, 8);
    v6 = objc_opt_new();
    sosLegacyContactsManager = v2->_sosLegacyContactsManager;
    v2->_sosLegacyContactsManager = v6;

    v8 = +[NSNotificationCenter defaultCenter];
    v9 = sub_1000E79C0();
    [v8 addObserver:v2 selector:"sosContactsChanged:" name:v9 object:0];

    v2->_wristDetectionEnabled = 1;
    v2->_newtonEligibility = 1;
    v10 = UIApp;
    v11 = [v10 activeWatch];
    v12 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.Carousel" pairedDevice:v11];
    v13 = v12;
    if (v12)
    {
      LOBYTE(v27[0]) = 0;
      v14 = [v12 BOOLForKey:@"DisableWristDetection" keyExistsAndHasValidFormat:v27];
      if (LOBYTE(v27[0]) == 1)
      {
        v2->_wristDetectionEnabled = v14 ^ 1;
      }
    }

    v15 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    calendar = v2->_calendar;
    v2->_calendar = v15;

    v17 = [v11 valueForProperty:NRDevicePropertyIsAltAccount];
    v2->_isTinker = [v17 BOOLValue];

    if (v2->_isTinker)
    {
      v18 = [v11 pairingID];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1000E7AC4;
      v24[3] = &unk_10026B928;
      v25 = v2;
      sub_10002E5B0(v18, &_dispatch_main_q, v24);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_1000E7AD0, @"SOSNewtonStateChangedNotification", 0, 1024);
    v20 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v20, v2, sub_1000E7AD0, @"SOSLongPressTriggersEmergencyStateChangedNotification", 0, 1024);
    v21 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v21, v2, sub_1000E7AD0, @"SOSKappaStateChangedNotification", 0, 1024);
    v22 = +[NSNotificationCenter defaultCenter];
    [v22 addObserver:v2 selector:"reloadSpecifiers" name:UIApplicationWillEnterForegroundNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"SOSLongPressTriggersEmergencyStateChangedNotification", 0);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v4, self, @"SOSNewtonStateChangedNotification", 0);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v5, self, @"SOSKappaStateChangedNotification", 0);
  v6 = +[NSNotificationCenter defaultCenter];
  v7 = sub_1000E79C0();
  [v6 removeObserver:self name:v7 object:0];

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 removeObserver:self name:UIApplicationWillEnterForegroundNotification object:0];

  v9.receiver = self;
  v9.super_class = COSSOSSettingsViewController;
  [(COSSOSSettingsViewController *)&v9 dealloc];
}

- (void)sosContactsChanged:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E7C48;
  block[3] = &unk_1002682F0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_updateSOSContactsList
{
  if ([(COSSOSSettingsViewController *)self useMedicalEmergencyContacts])
  {
    sosContactsManager = self->_sosContactsManager;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000E7CE0;
    v4[3] = &unk_10026A560;
    v4[4] = self;
    [(SOSContactsManager *)sosContactsManager SOSContactsWithTimeout:v4 andCompletion:5.0];
  }
}

- (void)setHealthStore:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_healthStore, a3);
  if ([(COSSOSSettingsViewController *)self canEditMedicalIDContacts])
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v6 = qword_1002BD610;
    v21 = qword_1002BD610;
    if (!qword_1002BD610)
    {
      v13 = _NSConcreteStackBlock;
      v14 = 3221225472;
      v15 = sub_1000EA618;
      v16 = &unk_1002680D0;
      v17 = &v18;
      sub_1000EA618(&v13);
      v6 = v19[3];
    }

    v7 = v6;
    _Block_object_dispose(&v18, 8);
    v8 = [[v6 alloc] initWithHealthStore:self->_healthStore];
    sosContactsManager = self->_sosContactsManager;
    self->_sosContactsManager = v8;
  }

  [(COSSOSSettingsViewController *)self _updateSOSContactsList];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v10 = qword_1002BD618;
  v21 = qword_1002BD618;
  if (!qword_1002BD618)
  {
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1000EA670;
    v16 = &unk_1002680D0;
    v17 = &v18;
    sub_1000EA670(&v13);
    v10 = v19[3];
  }

  v11 = v10;
  _Block_object_dispose(&v18, 8);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000E7FEC;
  v12[3] = &unk_100268158;
  v12[4] = self;
  [v10 newtonEligibilityWithHealthStore:v5 completion:v12];
}

- (BOOL)showNewtonInfo
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 activeWatch];

  if (BPSDeviceHasCapabilityForString())
  {
    v4 = [sub_1000E8134() newtonTriggersEmergencySOSNumber];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)showKappaInfo
{
  v2 = [sub_1000E8134() isKappaDetectionSupportedOnActiveWatch];
  if (v2)
  {
    v3 = sub_1000E8134();

    LOBYTE(v2) = [v3 isKappaVisible];
  }

  return v2;
}

- (id)_createKappaSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [PSSpecifier groupSpecifierWithID:@"CRASH_DETECT_TRIGGERS_SOS_GROUP_ID"];
  v5 = [sub_1000E8134() crashDetectionTitleDescription];
  [v4 setName:v5];

  v6 = [sub_1000E8134() crashDetectionWatchFooterDescription];
  [v4 setProperty:v6 forKey:PSFooterTextGroupKey];

  [v3 addObject:v4];
  v7 = [sub_1000E8134() crashDetectionSwitchDescription];
  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:"setKappaTriggersEmergencySOS:forSpecifier:" get:"kappaTriggersEmergencySOS:" detail:0 cell:6 edit:0];

  [v8 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  [v8 setIdentifier:@"CRASH_DETECT_TRIGGERS_SOS_ID"];
  [v3 addObject:v8];
  if (self->_kappaAPISpecifiers)
  {
    [v3 addObjectsFromArray:?];
  }

  return v3;
}

- (void)_createKappaAPISpecifiers
{
  v3 = [sub_1000E8134() getKappaThirdPartyApp];
  if (v3)
  {
    objc_initWeak(&location, self);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000E8560;
    v6[3] = &unk_10026B978;
    objc_copyWeak(&v8, &location);
    v7 = v3;
    [v7 getLocalizedNameForPairedDeviceWithCompletion:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  else
  {
    kappaApiAppName = self->_kappaApiAppName;
    self->_kappaApiAppName = 0;

    kappaAPISpecifiers = self->_kappaAPISpecifiers;
    self->_kappaAPISpecifiers = 0;

    self->_needsReloadSpecifiers = 1;
  }
}

- (void)setKappaTriggersEmergencySOS:(id)a3 forSpecifier:(id)a4
{
  v5 = a3;
  v6 = sub_1000E8134();
  v7 = [v5 BOOLValue];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000E88AC;
  v8[3] = &unk_100269800;
  v8[4] = self;
  [v6 setKappaTriggersEmergencySOS:v7 isWristDetectionEnabled:-[COSSOSSettingsViewController wristDetectionEnabled](self confirmationDelegate:"wristDetectionEnabled") completion:{self, v8}];
}

- (id)kappaTriggersEmergencySOS:(id)a3
{
  v3 = [(COSSOSSettingsViewController *)self isTinker];
  v4 = sub_1000E8134();
  if (v3)
  {
    v5 = [v4 kappaTriggersEmergencySOSTinker];
  }

  else
  {
    v5 = [v4 kappaTriggersEmergencySOS];
  }

  v6 = [NSNumber numberWithBool:v5];

  return v6;
}

- (void)addEmergencyContactsToSpecifiers:(id)a3
{
  v4 = a3;
  v5 = [v4 specifierForID:@"SOS_CONTACTS_GROUP_ID"];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"SOS_EMERGENCY_CONTACTS_HEADER" value:&stru_10026E598 table:@"SOSSettings"];
  [v5 setName:v7];

  if ([(NSArray *)self->_emergencyContacts count])
  {
    v17 = v5;
    v8 = [v4 indexOfObject:v5];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = self->_emergencyContacts;
    v9 = [(NSArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = [v13 name];
          v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:"getContactDestination:" detail:0 cell:4 edit:0];

          v16 = [v13 phoneNumber];
          [v15 setProperty:v16 forKey:@"COSEmergencySOSFormattedDestination"];

          [v15 setProperty:v13 forKey:@"COSEmergencyContactObj"];
          [v4 insertObject:v15 atIndex:++v8];
        }

        v10 = [(NSArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v5 = v17;
  }

  else
  {
    [v5 setName:0];
  }
}

- (void)addSOSContactsToSpecifiers:(id)a3
{
  v4 = a3;
  v5 = [v4 specifierForID:@"SOS_CONTACTS_GROUP_ID"];
  v6 = [(SOSLegacyContactsManager *)self->_sosLegacyContactsManager SOSLegacyContacts];
  if ([v6 count])
  {
    v17 = v5;
    v7 = [v4 indexOfObject:v5];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v16 = v6;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = [v12 name];
          v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:"getContactDestination:" detail:0 cell:4 edit:0];

          v15 = [v12 phoneNumber];
          [v14 setProperty:v15 forKey:@"COSEmergencySOSFormattedDestination"];

          [v4 insertObject:v14 atIndex:++v7];
        }

        v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    v6 = v16;
    v5 = v17;
  }

  else
  {
    [v5 setName:0];
  }
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(COSSOSSettingsViewController *)self loadSpecifiersFromPlistName:@"SOSSettings" target:self];
    v6 = [v5 specifierForID:@"SOS_TRIGGER_ANIMATION_GROUP"];
    v7 = [sub_1000E8134() watchTriggerAnimationFooterDescription];
    v8 = PSFooterTextGroupKey;
    v29 = v6;
    [v6 setProperty:v7 forKey:PSFooterTextGroupKey];

    v9 = [v5 specifierForID:@"SOS_TRIGGER_ANIMATION"];
    [v9 setProperty:objc_opt_class() forKey:PSCellClassKey];
    +[COSSOSTriggerAnimationCell preferredCellHeight];
    v10 = [NSNumber numberWithDouble:?];
    [v9 setProperty:v10 forKey:PSTableCellHeightKey];

    v11 = [v5 specifierForID:@"LONG_PRESS_TRIGGERS_SOS_GROUP_ID"];
    v12 = [sub_1000E8134() holdSideButtonFooterDescription];
    [v11 setProperty:v12 forKey:v8];

    v13 = [v5 specifierForID:@"LONG_PRESS_TRIGGERS_SOS_ID"];
    v14 = [sub_1000E8134() holdSideButtonTitleDescription];
    [v13 setName:v14];

    [v13 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    if ([(COSSOSSettingsViewController *)self showKappaInfo])
    {
      v15 = [(COSSOSSettingsViewController *)self _createKappaSpecifiers];
      v16 = [v5 indexOfSpecifierWithID:@"SOS_CONTACTS_GROUP_ID"];
      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", v16, [v15 count]);
        [v5 insertObjects:v15 atIndexes:v17];
      }
    }

    if ([(COSSOSSettingsViewController *)self showNewtonInfo])
    {
      v18 = [(COSSOSSettingsViewController *)self _createNewtonSpecifiers];
      v19 = [v5 indexOfSpecifierWithID:@"SOS_CONTACTS_GROUP_ID"];
      if (v19 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v20 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", v19, [v18 count]);
        [v5 insertObjects:v18 atIndexes:v20];
      }
    }

    if ([(COSSOSSettingsViewController *)self useMedicalEmergencyContacts])
    {
      [(COSSOSSettingsViewController *)self addEmergencyContactsToSpecifiers:v5];
    }

    else
    {
      [(COSSOSSettingsViewController *)self addSOSContactsToSpecifiers:v5];
    }

    if (![(COSSOSSettingsViewController *)self canEditMedicalIDContacts])
    {
      v21 = [v5 indexOfSpecifierWithID:@"SOS_OPEN_HEALTH_ID"];
      if (v21 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v5 removeObjectAtIndex:v21];
      }
    }

    v22 = [NSBundle bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"SOS_CONTACTS_GROUP_FOOTER" value:&stru_10026E598 table:@"SOSSettings"];

    v24 = [NSBundle bundleForClass:objc_opt_class()];
    v25 = [v24 localizedStringForKey:@"SOS_ADD_EMERGENCY_CONTACT_LINK" value:&stru_10026E598 table:@"SOSSettings"];
    v26 = [v5 specifierForID:@"SOS_CONTACTS_GROUP_ID"];
    [(COSSOSSettingsViewController *)self _addFooterFormat:v23 footerLink:v25 toSpecifier:v26 withAction:@"learnMore"];

    v27 = *&self->BPSListController_opaque[v3];
    *&self->BPSListController_opaque[v3] = v5;

    v4 = *&self->BPSListController_opaque[v3];
  }

  return v4;
}

- (id)_createNewtonSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [PSSpecifier groupSpecifierWithID:@"FALL_DETECT_TRIGGERS_SOS_GROUP_ID"];
  v5 = [sub_1000E8134() fallDetectionTitleDescription];
  [v4 setName:v5];

  v6 = [sub_1000E8134() fallDetectionFooterDescription];
  [v4 setProperty:v6 forKey:PSFooterTextGroupKey];

  [v3 addObject:v4];
  v7 = [sub_1000E8134() fallDetectionTitleDescription];
  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:"setNewtonTriggersEmergencySOS:forSpecifier:" get:"newtonTriggersEmergencySOS:" detail:0 cell:6 edit:0];

  [v8 setIdentifier:@"FALL_DETECT_TRIGGERS_SOS_ID"];
  [v3 addObject:v8];
  v9 = +[UIApplication sharedApplication];
  v10 = [v9 activeWatch];

  v11 = [[NSUUID alloc] initWithUUIDString:@"98409C1B-D02D-400B-9F63-33784EFEDA85"];
  v12 = [v10 supportsCapability:v11];

  if (v12 && [sub_1000E8134() newtonTriggersEmergencySOS])
  {
    v13 = [sub_1000E8134() fallDetectionOnlyDuringWorkoutsTitleDescription];
    v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v14 setIdentifier:@"FALL_DETECT_TRIGGERS_SOS_WORKOUTS_ID"];
    [v14 setButtonAction:"_setNewtonModeChangeForSpecifier:"];
    v15 = PSAllowMultilineTitleKey;
    [v14 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    v16 = [sub_1000E8134() fallDetectionAlwaysOnTitleDescription];
    v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v17 setIdentifier:@"FALL_DETECT_TRIGGERS_SOS_ALL_DAY_ID"];
    [v17 setButtonAction:"_setNewtonModeChangeForSpecifier:"];
    [v17 setProperty:&__kCFBooleanTrue forKey:v15];
    if ([sub_1000E8134() newtonTriggersEmergencySOSWorkouts])
    {
      v18 = v14;
    }

    else
    {
      v18 = v17;
    }

    v19 = PSIsRadioGroupKey;
    v20 = v18;
    [v4 setProperty:&__kCFBooleanTrue forKey:v19];
    [v4 setProperty:v20 forKey:PSRadioGroupCheckedSpecifierKey];
    [v3 addObject:v17];
    [v3 addObject:v14];
  }

  if (![(COSSOSSettingsViewController *)self isTinker])
  {
    if ([(NSSet *)self->_tccAppIDs count])
    {
      v21 = [(COSSOSSettingsViewController *)self newtonTriggersEmergencySOS:v8];
      v22 = [v21 BOOLValue];

      if (v22)
      {
        v23 = [NSBundle bundleForClass:objc_opt_class()];
        v24 = [v23 localizedStringForKey:@"SOS_FALL_DETECTION_DATA_SHARING" value:&stru_10026E598 table:@"SOSSettings"];
        v25 = [PSSpecifier preferenceSpecifierNamed:v24 target:self set:0 get:"_descriptionOfNumberOfFallDetectionApps:" detail:0 cell:2 edit:0];

        [v25 setIdentifier:@"FALL_DATA_SHARING_SOS_ID"];
        [v25 setControllerLoadAction:"_didSelectFallDetectionDataSharing:"];
        [v25 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
        [v3 addObject:v25];
      }
    }
  }

  return v3;
}

- (id)_descriptionOfNumberOfFallDetectionApps:(id)a3
{
  v3 = [(NSSet *)self->_tccAppIDs count];
  if (v3)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"SOS_FALL_DETECTION_DATA_SHARING_APPS_COUNT" value:&stru_10026E598 table:@"SOSSettings"];
    v3 = [NSString stringWithFormat:v5, v3];
  }

  return v3;
}

- (void)_didSelectFallDetectionDataSharing:(id)a3
{
  v5 = objc_alloc_init(COSSOSSettingsFallDataSharingViewController);
  v4 = [(COSSOSSettingsViewController *)self navigationController];
  [v4 pushViewController:v5 animated:1];
}

- (void)_addFooterFormat:(id)a3 footerLink:(id)a4 toSpecifier:(id)a5 withAction:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v21 = [NSString stringWithFormat:v13, v12];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  [v11 setProperty:v15 forKey:PSFooterCellClassGroupKey];

  [v11 setProperty:v21 forKey:PSFooterHyperlinkViewTitleKey];
  v16 = [(COSSOSSettingsViewController *)self rangeOfReplacementString:v12 inFormatString:v13];
  v18 = v17;

  v23.location = v16;
  v23.length = v18;
  v19 = NSStringFromRange(v23);
  [v11 setProperty:v19 forKey:PSFooterHyperlinkViewLinkRangeKey];

  v20 = [NSValue valueWithNonretainedObject:self];
  [v11 setProperty:v20 forKey:PSFooterHyperlinkViewTargetKey];

  [v11 setProperty:v10 forKey:PSFooterHyperlinkViewActionKey];
}

- (_NSRange)rangeOfReplacementString:(id)a3 inFormatString:(id)a4
{
  v5 = a3;
  v6 = [a4 rangeOfString:@"%@"];
  v7 = [v5 length];

  v8 = v6;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = COSSOSSettingsViewController;
  [(COSSOSSettingsViewController *)&v11 viewWillAppear:a3];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 bundleURL];

  v6 = [_NSLocalizedStringResource alloc];
  v7 = +[NSLocale currentLocale];
  v8 = [v6 initWithKey:@"SOS_MODE" table:@"Settings" locale:v7 bundleURL:v5];

  v9 = [NSURL URLWithString:@"bridge:root=SOS_MODE_ID"];
  [BPSWatchSettingsNavigationDonation emitNavigationEventForSystemSettingWithIconSpecifierIdentifier:@"SOS_MODE_ID" title:v8 localizedNavigationComponents:&__NSArray0__struct deepLink:v9];

  if ([(COSSOSSettingsViewController *)self showNewtonInfo])
  {
    v10 = +[COSSOSSettingsFallDataSharingViewController fallDetectionAppIDs];
    [(COSSOSSettingsViewController *)self setTccAppIDs:v10];

    [(COSSOSSettingsViewController *)self reloadSpecifiers];
  }

  [(COSSOSSettingsViewController *)self _createKappaAPISpecifiers];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = COSSOSSettingsViewController;
  [(COSSOSSettingsViewController *)&v4 viewDidAppear:a3];
  if (self->_needsReloadSpecifiers)
  {
    [(COSSOSSettingsViewController *)self reloadSpecifiers];
    self->_needsReloadSpecifiers = 0;
  }
}

- (BOOL)canEditMedicalIDContacts
{
  if (![(COSSOSSettingsViewController *)self isTinker])
  {
    return 1;
  }

  v3 = [(COSSOSSettingsViewController *)self healthStore];
  v4 = v3 != 0;

  return v4;
}

- (void)setLongPressTriggersEmergencySOS:(id)a3 forSpecifier:(id)a4
{
  v5 = a3;
  v6 = sub_1000E8134();
  v7 = [v5 BOOLValue];

  [v6 setLongPressTriggersEmergencySOS:v7];

  [(COSSOSSettingsViewController *)self reloadSpecifiers];
}

- (void)setNewtonTriggersEmergencySOS:(id)a3 forSpecifier:(id)a4
{
  v5 = a3;
  v6 = sub_1000E8134();
  v7 = [v5 BOOLValue];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000E9C58;
  v8[3] = &unk_100269800;
  v8[4] = self;
  [v6 setNewtonTriggersEmergencySOS:v7 isWristDetectionEnabled:-[COSSOSSettingsViewController wristDetectionEnabled](self newtonEligibility:"wristDetectionEnabled") confirmationDelegate:-[COSSOSSettingsViewController newtonEligibility](self completion:{"newtonEligibility"), self, v8}];
}

- (id)newtonTriggersEmergencySOS:(id)a3
{
  v3 = [sub_1000E8134() newtonTriggersEmergencySOS];

  return [NSNumber numberWithBool:v3];
}

- (void)_setNewtonModeChangeForSpecifier:(id)a3
{
  v4 = [a3 identifier];
  v5 = [v4 isEqualToString:@"FALL_DETECT_TRIGGERS_SOS_WORKOUTS_ID"];

  v6 = sub_1000E8134();
  v7 = [(COSSOSSettingsViewController *)self wristDetectionEnabled];
  v8 = [(COSSOSSettingsViewController *)self newtonEligibility];

  [v6 setNewtonTriggersEmergencySOSWorkoutsOnly:v5 isWristDetectionEnabled:v7 newtonEligibility:v8 confirmationDelegate:self completion:&stru_10026B998];
}

- (id)longPressTriggersEmergencySOS:(id)a3
{
  v3 = [sub_1000E8134() longPressTriggersEmergencySOS];

  return [NSNumber numberWithBool:v3];
}

- (void)_editMedicalID
{
  v3 = +[MIUIDisplayConfiguration standardConfiguration];
  [v3 setAccessPoint:8];
  [v3 setEntryPoint:1];
  [v3 setSuggestHealthData:1];
  v4 = [MIUIMedicalIDViewController alloc];
  v5 = [(COSSOSSettingsViewController *)self healthStore];
  v6 = [v4 initWithHealthStore:v5 displayConfiguration:v3];

  v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_dismissMedicalID"];
  v8 = [v6 navigationItem];
  [v8 setRightBarButtonItem:v7];

  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v9 = qword_1002BD628;
  v16 = qword_1002BD628;
  if (!qword_1002BD628)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000EA720;
    v12[3] = &unk_1002680D0;
    v12[4] = &v13;
    sub_1000EA720(v12);
    v9 = v14[3];
  }

  v10 = v9;
  _Block_object_dispose(&v13, 8);
  v11 = [[v9 alloc] initWithRootViewController:v6];
  [(COSSOSSettingsViewController *)self presentViewController:v11 animated:1 completion:0];
}

- (void)learnMore
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v3 = qword_1002BD638;
  v10 = qword_1002BD638;
  if (!qword_1002BD638)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000EA8D8;
    v6[3] = &unk_1002680D0;
    v6[4] = &v7;
    sub_1000EA8D8(v6);
    v3 = v8[3];
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);
  v5 = [v3 presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.emergencysos"];
  [v5 setDarkMode:1];
  [v5 setPresentingViewController:self];
  [v5 present];
}

- (void)presentConfirmationWithTitle:(id)a3 message:(id)a4 cancelTitle:(id)a5 cancelHandler:(id)a6 confirmTitle:(id)a7 confirmHandler:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  [sub_1000E8134() presentConfirmationOnViewController:self title:v19 message:v18 cancelTitle:v17 cancelHandler:v16 confirmTitle:v15 confirmHandler:v14];
}

- (COSSOSSettingsViewControllerDelegate)navBarDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_navBarDelegate);

  return WeakRetained;
}

@end