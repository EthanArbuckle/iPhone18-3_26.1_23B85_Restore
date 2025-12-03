@interface DetectorsController
- (BOOL)_isAlarmsFull;
- (BOOL)_isHouseholdFull;
- (BOOL)_shouldUseKShotEnrollment;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path;
- (DetectorsController)init;
- (id)_customDetectorIsEnabledForSpec:(id)spec;
- (id)_internalSettingsButton;
- (id)isDetectorEnabledForSpecifier:(id)specifier;
- (id)numberOfSoundRecordings:(id)recordings;
- (id)specifiers;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)_donePressed;
- (void)_editPressed:(id)pressed;
- (void)_internalSettingsPressed:(id)pressed;
- (void)_manageEditButton;
- (void)_manageRecordCustomSoundButtons;
- (void)_presentKShotOnboardingController:(id)controller;
- (void)_presentKShotOnboardingControllerWithCategory:(id)category;
- (void)_presentKShotOnboardingControllerWithDetector:(id)detector;
- (void)_presentKShotOnboardingWithSender:(id)sender;
- (void)_reloadSettings;
- (void)_startKShotOnboarding:(id)onboarding;
- (void)_startRenameSoundFlow:(id)flow;
- (void)cancelCustomDetectorTrainingForTarget:(id)target;
- (void)dealloc;
- (void)exitedOnboardingFlow;
- (void)loadCustomDetectorsFromSettings;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)renameDetector:(id)detector to:(id)to;
- (void)secureIntentViewControllerDidCancel:(id)cancel;
- (void)secureIntentViewControllerDidFinish:(id)finish;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation DetectorsController

- (DetectorsController)init
{
  v23.receiver = self;
  v23.super_class = DetectorsController;
  v2 = [(DetectorsController *)&v23 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    customDetectors = v2->_customDetectors;
    v2->_customDetectors = v3;

    cachedSpecifier = v2->_cachedSpecifier;
    v2->_cachedSpecifier = 0;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _kShotModelCreationCompleted_0, @"com.apple.accessibility.kshot.model.complete", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v7 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v7, v2, _kShotModelCreationError_0, @"com.apple.accessibility.kshot.model.error", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    objc_initWeak(&location, v2);
    v8 = +[AXSDSettings sharedInstance];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = __27__DetectorsController_init__block_invoke;
    v20[3] = &unk_255388;
    objc_copyWeak(&v21, &location);
    [v8 registerUpdateBlock:v20 forRetrieveSelector:"soundDetectionState" withListener:v2];

    v9 = +[AXSDSettings sharedInstance];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = __27__DetectorsController_init__block_invoke_2;
    v18[3] = &unk_255388;
    objc_copyWeak(&v19, &location);
    [v9 registerUpdateBlock:v18 forRetrieveSelector:"enabledSoundDetectionTypes" withListener:v2];

    v10 = +[AXSDSettings sharedInstance];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __27__DetectorsController_init__block_invoke_3;
    v16[3] = &unk_255388;
    objc_copyWeak(&v17, &location);
    [v10 registerUpdateBlock:v16 forRetrieveSelector:"isActivelyTrainingAKShotModel" withListener:v2];

    v11 = +[AXSDSettings sharedInstance];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __27__DetectorsController_init__block_invoke_4;
    v14[3] = &unk_255388;
    objc_copyWeak(&v15, &location);
    [v11 registerUpdateBlock:v14 forRetrieveSelector:"kShotDetectors" withListener:v2];

    v12 = v2;
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __27__DetectorsController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadSettings];
}

void __27__DetectorsController_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadSettings];
}

void __27__DetectorsController_init__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadSettings];
}

void __27__DetectorsController_init__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadSettings];
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    goto LABEL_58;
  }

  v68 = OBJC_IVAR___PSListController__specifiers;
  v67 = +[NSMutableArray array];
  selfCopy = self;
  v4 = [(DetectorsController *)self loadSpecifiersFromPlistName:@"DetectorSettings" target:self];
  v5 = [v4 mutableCopy];

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v80 objects:v86 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v81;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v81 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v80 + 1) + 8 * i);
        if ([v11 cellType] == &dword_0 + 2)
        {
          v12 = [v11 propertyForKey:@"AXSoundDetectionTypes"];
          if ([v12 count])
          {
            firstObject = [v12 firstObject];
            v14 = +[AXSDSettings sharedInstance];
            v15 = [v14 soundAlertTopicForSoundDetectionType:firstObject];
            [v11 setProperty:v15 forKey:@"accountIdentifier"];
          }

          [v11 setProperty:@"TLAlertTypeSoundRecognition" forKey:@"alertType"];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v80 objects:v86 count:16];
    }

    while (v8);
  }

  v16 = +[AXSDSettings sharedInstance];
  supportedSoundDetectionTypes = [v16 supportedSoundDetectionTypes];

  v70 = +[NSMutableArray array];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = v6;
  v18 = [obj countByEnumeratingWithState:&v76 objects:v85 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v77;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v77 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v76 + 1) + 8 * j);
        v23 = [v22 propertyForKey:@"AXSoundDetectionTypes"];
        v24 = v23;
        if (v23)
        {
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v25 = v23;
          v26 = [v25 countByEnumeratingWithState:&v72 objects:v84 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v73;
            while (2)
            {
              for (k = 0; k != v27; k = k + 1)
              {
                if (*v73 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                if ([supportedSoundDetectionTypes containsObject:*(*(&v72 + 1) + 8 * k)])
                {

                  goto LABEL_29;
                }
              }

              v27 = [v25 countByEnumeratingWithState:&v72 objects:v84 count:16];
              if (v27)
              {
                continue;
              }

              break;
            }
          }

          [v70 addObject:v22];
        }

LABEL_29:
      }

      v19 = [obj countByEnumeratingWithState:&v76 objects:v85 count:16];
    }

    while (v19);
  }

  [obj removeObjectsInArray:v70];
  v30 = +[NSProcessInfo processInfo];
  if ([v30 physicalMemory] < 0x77359400)
  {
    v32 = selfCopy;
LABEL_51:

    goto LABEL_52;
  }

  v31 = _os_feature_enabled_impl();

  v32 = selfCopy;
  if (v31)
  {
    [(DetectorsController *)selfCopy loadCustomDetectorsFromSettings];
    v33 = settingsLocString(@"CUSTOM_ALARM", @"SoundDetection");
    v30 = [PSSpecifier preferenceSpecifierNamed:v33 target:selfCopy set:0 get:0 detail:0 cell:13 edit:0];

    [v30 setButtonAction:"_startKShotOnboarding:"];
    v34 = PSIDKey;
    [v30 setProperty:@"RecordCustomAlarmSpec" forKey:PSIDKey];
    [v30 setProperty:AXSDDetectorCategoryAlarm forKey:@"kCategoryKey"];
    v35 = PSAllowMultilineTitleKey;
    [v30 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    v65 = v34;
    if ([(DetectorsController *)selfCopy _isAlarmsFull])
    {
      v36 = 0;
    }

    else
    {
      v37 = +[AXSDSettings sharedInstance];
      v36 = [v37 isActivelyTrainingAKShotModel] ^ 1;
    }

    v38 = [NSNumber numberWithBool:v36];
    v39 = PSEnabledKey;
    [v30 setProperty:v38 forKey:PSEnabledKey];

    v40 = [obj specifierForID:@"last_alarm_spec"];
    v41 = [obj specifierForID:@"alarms_group"];
    if ([(DetectorsController *)selfCopy _isAlarmsFull])
    {
      v42 = settingsLocString(@"MAX_REACHED_ALARM", @"SoundDetection");
      v43 = PSFooterTextGroupKey;
      [v41 setProperty:v42 forKey:PSFooterTextGroupKey];
    }

    else
    {
      v43 = PSFooterTextGroupKey;
      [v41 setProperty:0 forKey:PSFooterTextGroupKey];
    }

    if (AXRuntimeCheck_HasANE())
    {
      [obj ps_insertObject:v30 afterObject:v40];
    }

    v66 = v40;
    v44 = settingsLocString(@"CUSTOM_APPLIANCE", @"SoundDetection");
    v45 = [PSSpecifier preferenceSpecifierNamed:v44 target:selfCopy set:0 get:0 detail:0 cell:13 edit:0];

    [v45 setButtonAction:"_startKShotOnboarding:"];
    [v45 setProperty:@"RecordCustomHouseholdSpec" forKey:v65];
    [v45 setProperty:AXSDDetectorCategoryHousehold forKey:@"kCategoryKey"];
    [v45 setProperty:&__kCFBooleanTrue forKey:v35];
    if ([(DetectorsController *)selfCopy _isHouseholdFull])
    {
      v46 = 0;
    }

    else
    {
      v47 = +[AXSDSettings sharedInstance];
      v46 = [v47 isActivelyTrainingAKShotModel] ^ 1;
    }

    v48 = [NSNumber numberWithBool:v46];
    [v45 setProperty:v48 forKey:v39];

    v49 = [obj specifierForID:@"last_household_spec"];
    v50 = [obj specifierForID:@"household_group"];
    if ([(DetectorsController *)selfCopy _isHouseholdFull])
    {
      v51 = settingsLocString(@"MAX_REACHED_APPLIANCE", @"SoundDetection");
      [v50 setProperty:v51 forKey:v43];
    }

    else
    {
      [v50 setProperty:0 forKey:v43];
    }

    if (AXRuntimeCheck_HasANE())
    {
      [obj ps_insertObject:v45 afterObject:v49];
    }

    customDetectors = [(DetectorsController *)selfCopy customDetectors];
    v53 = [customDetectors objectForKeyedSubscript:AXSDDetectorCategoryHousehold];
    [obj ps_insertObjectsFromArray:v53 afterObject:v49];

    customDetectors2 = [(DetectorsController *)selfCopy customDetectors];
    v55 = [customDetectors2 objectForKeyedSubscript:AXSDDetectorCategoryAlarm];
    [obj ps_insertObjectsFromArray:v55 afterObject:v66];

    goto LABEL_51;
  }

LABEL_52:
  v56 = [obj count];
  if (v56 - 1 >= 0)
  {
    v57 = v56;
    v58 = 0;
    do
    {
      v59 = [obj objectAtIndexedSubscript:--v57];
      cellType = [v59 cellType];
      if (!(v58 | cellType))
      {
        [obj removeObjectAtIndex:v57];
      }

      v58 = cellType;
    }

    while (v57 > 0);
  }

  [v67 addObjectsFromArray:obj];
  v61 = [PSSpecifier groupSpecifierWithName:0];
  [v67 addObject:v61];
  v62 = +[PSSpecifier emptyGroupSpecifier];
  [v67 addObject:v62];

  v63 = *&v32->AXUISettingsBaseListController_opaque[v68];
  *&v32->AXUISettingsBaseListController_opaque[v68] = v67;

  v3 = *&v32->AXUISettingsBaseListController_opaque[v68];
LABEL_58:

  return v3;
}

- (id)isDetectorEnabledForSpecifier:(id)specifier
{
  v3 = [specifier propertyForKey:@"AXSoundDetectionTypes"];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  v5 = @"OFF";
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = +[AXSDSettings sharedInstance];
        enabledSoundDetectionTypes = [v11 enabledSoundDetectionTypes];
        LOBYTE(v10) = [enabledSoundDetectionTypes containsObject:v10];

        v7 |= v10;
      }

      v6 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
    if (v7)
    {
      v5 = @"ON";
    }
  }

  v13 = settingsLocString(v5, @"Accessibility");

  return v13;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v5.receiver = self;
  v5.super_class = DetectorsController;
  [(DetectorsController *)&v5 dealloc];
}

- (void)_reloadSettings
{
  [(DetectorsController *)self reloadSpecifiers];

  [(DetectorsController *)self _manageRecordCustomSoundButtons];
}

- (id)_internalSettingsButton
{
  v3 = [UIImage systemImageNamed:@"gear"];
  v4 = [[UIBarButtonItem alloc] initWithImage:v3 style:0 target:self action:"_internalSettingsPressed:"];

  return v4;
}

- (void)_internalSettingsPressed:(id)pressed
{
  v4 = [NSURL URLWithString:@"prefs:root=INTERNAL_SETTINGS&path=Accessibility/Assets"];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 openSensitiveURL:v4 withOptions:0];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = DetectorsController;
  [(DetectorsController *)&v5 viewDidLoad];
  table = [(DetectorsController *)self table];
  [table setAllowsSelectionDuringEditing:1];

  [(DetectorsController *)self _manageEditButton];
  [(DetectorsController *)self _manageRecordCustomSoundButtons];
  navigationController = [(DetectorsController *)self navigationController];
  [navigationController setDelegate:self];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = DetectorsController;
  [(DetectorsController *)&v4 viewWillAppear:appear];
  if (*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers])
  {
    [(DetectorsController *)self reloadSpecifiers];
  }
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  viewControllerCopy = viewController;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {

    [(DetectorsController *)self reloadSpecifiers];
  }
}

- (void)_presentKShotOnboardingWithSender:(id)sender
{
  senderCopy = sender;
  v5 = [senderCopy propertyForKey:@"AssociatedDetector"];

  if (v5)
  {
    v6 = [senderCopy propertyForKey:@"AssociatedDetector"];

    [(DetectorsController *)self _presentKShotOnboardingControllerWithDetector:v6];
  }

  else
  {
    v6 = [senderCopy propertyForKey:@"kCategoryKey"];

    [(DetectorsController *)self _presentKShotOnboardingControllerWithCategory:v6];
  }
}

- (void)_startKShotOnboarding:(id)onboarding
{
  onboardingCopy = onboarding;
  if ([(DetectorsController *)self isEditing])
  {
    [(DetectorsController *)self setEditing:0 animated:1];
    [(DetectorsController *)self _manageEditButton];
  }

  [(DetectorsController *)self _shouldUseKShotEnrollment];
  [(DetectorsController *)self _presentKShotOnboardingWithSender:onboardingCopy];
}

- (void)_presentKShotOnboardingControllerWithCategory:(id)category
{
  categoryCopy = category;
  v5 = [[CustomDetectorOnboardingController alloc] initWithCategory:categoryCopy];

  [(DetectorsController *)self _presentKShotOnboardingController:v5];
}

- (void)_presentKShotOnboardingControllerWithDetector:(id)detector
{
  detectorCopy = detector;
  v5 = [[CustomDetectorOnboardingController alloc] initWithDetector:detectorCopy];

  [(DetectorsController *)self _presentKShotOnboardingController:v5];
}

- (void)_presentKShotOnboardingController:(id)controller
{
  controllerCopy = controller;
  v4 = +[UIApplication sharedApplication];
  [v4 setIdleTimerDisabled:1];

  [controllerCopy setCustomDetectorDelegate:self];
  [(DetectorsController *)self presentViewController:controllerCopy animated:1 completion:0];
}

- (void)_startRenameSoundFlow:(id)flow
{
  flowCopy = flow;
  v5 = [[RenameDetectorFlowController alloc] initWithDetectorSpecifier:flowCopy];

  [(RenameDetectorFlowController *)v5 setRenameDetectorDelegate:self];
  [(DetectorsController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)loadCustomDetectorsFromSettings
{
  v31 = +[NSMutableArray array];
  v30 = +[NSMutableArray array];
  v2 = +[AXSDDetectorStore sharedInstance];
  customDetectors = [v2 customDetectors];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = customDetectors;
  v4 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v33;
    v27 = PSEnabledKey;
    v8 = PSIDKey;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        buf[0] = 0;
        objc_opt_class();
        v11 = __UIAccessibilityCastAsClass();
        if (buf[0] == 1)
        {
          abort();
        }

        v12 = v11;
        if (v11)
        {
          recordings = [v11 recordings];
          v14 = [recordings count];
          if (recordings)
          {
            v15 = v14 > 4;
          }

          else
          {
            v15 = 0;
          }

          if (v15 || ([v12 isModelReady] & 1) != 0)
          {
            name = [v12 name];
            v17 = [PSSpecifier preferenceSpecifierNamed:name target:self set:0 get:"_customDetectorIsEnabledForSpec:" detail:objc_opt_class() cell:2 edit:0];
          }

          else
          {
            name2 = [v12 name];
            v17 = [PSSpecifier preferenceSpecifierNamed:name2 target:self set:0 get:"numberOfSoundRecordings:" detail:0 cell:2 edit:0];

            [v17 setButtonAction:"_startKShotOnboarding:"];
            [v17 setProperty:kCFBooleanTrue forKey:v27];
          }

          identifier = [v12 identifier];
          [v17 setProperty:identifier forKey:v8];

          [v17 setProperty:v12 forKey:@"AssociatedDetector"];
          category = [v12 category];
          [v17 setProperty:category forKey:@"kCategoryKey"];

          [v17 setProperty:&__kCFBooleanTrue forKey:@"IsCustomSound"];
          [v17 setProperty:@"TLAlertTypeSoundRecognition" forKey:@"alertType"];
          identifier2 = [v12 identifier];
          [v17 setProperty:identifier2 forKey:@"accountIdentifier"];

          category2 = [v12 category];
          v23 = [category2 isEqualToString:AXSDDetectorCategoryAlarm];

          if (v23)
          {
            v24 = v31;
          }

          else
          {
            v24 = v30;
          }

          [v24 addObject:v17];
          v6 = v17;
        }

        else
        {
          recordings = AXLogUltron();
          if (os_log_type_enabled(recordings, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v37 = v10;
            _os_log_error_impl(&dword_0, recordings, OS_LOG_TYPE_ERROR, "Recieved a detector that was not a custom detector. Detector: %@", buf, 0xCu);
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  customDetectors2 = [(DetectorsController *)self customDetectors];
  [customDetectors2 setObject:v31 forKey:AXSDDetectorCategoryAlarm];

  customDetectors3 = [(DetectorsController *)self customDetectors];
  [customDetectors3 setObject:v30 forKey:AXSDDetectorCategoryHousehold];
}

- (id)numberOfSoundRecordings:(id)recordings
{
  v3 = [recordings propertyForKey:@"AssociatedDetector"];
  recordings = [v3 recordings];
  v5 = [recordings count];

  v6 = settingsLocString(@"OF_FIVE", @"SoundDetection");
  v7 = [NSString localizedStringWithFormat:v6, v5, 5];

  return v7;
}

- (BOOL)_isAlarmsFull
{
  customDetectors = [(DetectorsController *)self customDetectors];
  v3 = [customDetectors objectForKey:AXSDDetectorCategoryAlarm];
  v4 = [v3 count] > 9;

  return v4;
}

- (BOOL)_isHouseholdFull
{
  customDetectors = [(DetectorsController *)self customDetectors];
  v3 = [customDetectors objectForKey:AXSDDetectorCategoryHousehold];
  v4 = [v3 count] > 9;

  return v4;
}

- (id)_customDetectorIsEnabledForSpec:(id)spec
{
  v3 = [spec propertyForKey:@"AssociatedDetector"];
  if ([v3 modelFailed])
  {
    v4 = @"TRAINING_FAILED";
    v5 = @"SoundDetection";
  }

  else
  {
    v6 = +[AXSDSettings sharedInstance];
    enabledKShotDetectorIdentifiers = [v6 enabledKShotDetectorIdentifiers];
    identifier = [v3 identifier];
    v9 = [enabledKShotDetectorIdentifiers containsObject:identifier];

    if (v9)
    {
      v4 = @"ON";
    }

    else
    {
      v4 = @"OFF";
    }

    v5 = @"Accessibility";
  }

  v10 = settingsLocString(v4, v5);

  return v10;
}

- (void)_manageEditButton
{
  v3 = AXIsInternalInstall();
  customDetectors = [(DetectorsController *)self customDetectors];
  v5 = [customDetectors count];

  if (v3)
  {
    if (v5)
    {
      if (([(DetectorsController *)self isEditing]& 1) != 0)
      {
        return;
      }

      editButtonItem = [(DetectorsController *)self editButtonItem];
      [editButtonItem setAction:"_editPressed:"];

      navigationItem = [(DetectorsController *)self navigationItem];
      editButtonItem2 = [(DetectorsController *)self editButtonItem];
      v17[0] = editButtonItem2;
      _internalSettingsButton = [(DetectorsController *)self _internalSettingsButton];
      v17[1] = _internalSettingsButton;
      v10 = [NSArray arrayWithObjects:v17 count:2];
      [navigationItem setRightBarButtonItems:v10];
    }

    else
    {
      [(DetectorsController *)self setEditing:0 animated:1];
      navigationItem = [(DetectorsController *)self navigationItem];
      _internalSettingsButton2 = [(DetectorsController *)self _internalSettingsButton];
      v16 = _internalSettingsButton2;
      v14 = [NSArray arrayWithObjects:&v16 count:1];
      [navigationItem setRightBarButtonItems:v14];
    }
  }

  else
  {
    if (v5)
    {
      if (([(DetectorsController *)self isEditing]& 1) != 0)
      {
        return;
      }

      editButtonItem3 = [(DetectorsController *)self editButtonItem];
      [editButtonItem3 setAction:"_editPressed:"];

      navigationItem2 = [(DetectorsController *)self navigationItem];
      editButtonItem4 = [(DetectorsController *)self editButtonItem];
      [navigationItem2 setRightBarButtonItem:editButtonItem4];
    }

    else
    {
      [(DetectorsController *)self setEditing:0 animated:1];
      navigationItem2 = [(DetectorsController *)self navigationItem];
      [navigationItem2 setRightBarButtonItem:0];
    }
  }
}

- (void)_manageRecordCustomSoundButtons
{
  v3 = +[NSProcessInfo processInfo];
  physicalMemory = [v3 physicalMemory];

  if (physicalMemory >= 0x77359400)
  {
    v13 = [(DetectorsController *)self specifierForID:@"RecordCustomAlarmSpec"];
    if ([(DetectorsController *)self _isAlarmsFull])
    {
      v5 = 0;
    }

    else
    {
      v6 = +[AXSDSettings sharedInstance];
      v5 = [v6 isActivelyTrainingAKShotModel] ^ 1;
    }

    v7 = [NSNumber numberWithBool:v5];
    v8 = PSEnabledKey;
    [v13 setProperty:v7 forKey:PSEnabledKey];

    [(DetectorsController *)self reloadSpecifier:v13];
    v9 = [(DetectorsController *)self specifierForID:@"RecordCustomHouseholdSpec"];
    if ([(DetectorsController *)self _isHouseholdFull])
    {
      v10 = 0;
    }

    else
    {
      v11 = +[AXSDSettings sharedInstance];
      v10 = [v11 isActivelyTrainingAKShotModel] ^ 1;
    }

    v12 = [NSNumber numberWithBool:v10];
    [v9 setProperty:v12 forKey:v8];

    [(DetectorsController *)self reloadSpecifier:v9];
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v8.receiver = self;
  v8.super_class = DetectorsController;
  [DetectorsController setEditing:"setEditing:animated:" animated:?];
  table = [(DetectorsController *)self table];
  [table setEditing:editingCopy animated:animatedCopy];
}

- (void)_editPressed:(id)pressed
{
  [(DetectorsController *)self setEditing:1 animated:1];
  editButtonItem = [(DetectorsController *)self editButtonItem];
  [editButtonItem setAction:"_donePressed"];
}

- (void)_donePressed
{
  [(DetectorsController *)self setEditing:0 animated:1];
  [(DetectorsController *)self _manageEditButton];

  [(DetectorsController *)self _reloadSettings];
}

- (void)exitedOnboardingFlow
{
  [(DetectorsController *)self _reloadSettings];
  [(DetectorsController *)self _manageEditButton];
  v3 = +[UIApplication sharedApplication];
  [v3 setIdleTimerDisabled:0];
}

- (void)renameDetector:(id)detector to:(id)to
{
  toCopy = to;
  detectorCopy = detector;
  [detectorCopy setName:toCopy];
  [(DetectorsController *)self reloadSpecifier:detectorCopy];
  v9 = [detectorCopy propertyForKey:@"AssociatedDetector"];

  v8 = +[AXSDSettings sharedInstance];
  [v8 editKShotDetectorName:v9 newName:toCopy];
}

- (void)cancelCustomDetectorTrainingForTarget:(id)target
{
  if (target)
  {
    targetCopy = target;
    v5 = +[AXSDSettings sharedInstance];
    [v5 removeKShotDetector:targetCopy];

    [(DetectorsController *)self _reloadSettings];
  }
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  v4 = [(DetectorsController *)self specifierAtIndex:[(DetectorsController *)self indexForIndexPath:path]];
  v5 = [v4 propertyForKey:@"IsCustomSound"];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v4 = [(DetectorsController *)self specifierAtIndex:[(DetectorsController *)self indexForIndexPath:path]];
  v5 = [v4 propertyForKey:@"IsCustomSound"];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path
{
  v4 = [(DetectorsController *)self specifierAtIndex:[(DetectorsController *)self indexForIndexPath:path]];
  v5 = [v4 propertyForKey:@"IsCustomSound"];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  v13 = [(DetectorsController *)self specifierAtIndex:[(DetectorsController *)self indexForIndexPath:path]];
  v7 = [v13 propertyForKey:@"AssociatedDetector"];
  if (style == 1)
  {
    customDetectors = [(DetectorsController *)self customDetectors];
    v9 = [v13 propertyForKey:@"kCategoryKey"];
    v10 = [customDetectors objectForKey:v9];
    [v10 removeObject:v13];

    [(DetectorsController *)self removeSpecifier:v13 animated:1];
    v11 = +[AXSDSettings sharedInstance];
    [v11 setDetectorIsEnabled:v7 isEnabled:0];

    v12 = +[AXSDSettings sharedInstance];
    [v12 removeKShotDetector:v7];
  }

  [(DetectorsController *)self _manageRecordCustomSoundButtons];
  [(DetectorsController *)self performSelector:"_manageEditButton" withObject:self afterDelay:0.1];
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v5 = [(DetectorsController *)self specifierAtIndex:[(DetectorsController *)self indexForIndexPath:path]];
  if ([(DetectorsController *)self isEditing])
  {
    v6 = [v5 propertyForKey:@"IsCustomSound"];
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(DetectorsController *)self specifierAtIndex:[(DetectorsController *)self indexForIndexPath:pathCopy]];
  if (-[DetectorsController isEditing](self, "isEditing") && ([v6 propertyForKey:@"IsCustomSound"], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "BOOLValue"), v7, !v8))
  {
    v9 = 0;
  }

  else
  {
    v9 = pathCopy;
  }

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(DetectorsController *)self specifierAtIndex:[(DetectorsController *)self indexForIndexPath:pathCopy]];
  if (-[DetectorsController isEditing](self, "isEditing") && ([v8 propertyForKey:@"IsCustomSound"], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "BOOLValue"), v9, v10))
  {
    [(DetectorsController *)self _startRenameSoundFlow:v8];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = DetectorsController;
    [(DetectorsController *)&v11 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }
}

- (BOOL)_shouldUseKShotEnrollment
{
  if (AXRuntimeCheck_SoundRecognitionMedinaKShotEnrollmentEnabled())
  {
    return AXDeviceIsKShotMedinaEnabled() ^ 1;
  }

  v2 = +[AXSDSettings sharedInstance];
  forceMedinaSupport = [v2 forceMedinaSupport];

  if (forceMedinaSupport)
  {
    return AXDeviceIsKShotMedinaEnabled() ^ 1;
  }

  else
  {
    return 0;
  }
}

- (void)secureIntentViewControllerDidCancel:(id)cancel
{
  v3 = AXLogUltronKShot();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "SecureIntent: Secure Intent view was cancelled.", v4, 2u);
  }
}

- (void)secureIntentViewControllerDidFinish:(id)finish
{
  isEnrolled = [finish isEnrolled];
  v5 = AXLogUltronKShot();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (isEnrolled)
  {
    if (v6)
    {
      cachedSpecifier = self->_cachedSpecifier;
      v8 = 138412290;
      v9 = cachedSpecifier;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "SecureIntent: Secure Intent did finish. Continue training with cached specifier: %@", &v8, 0xCu);
    }

    [(DetectorsController *)self _startKShotOnboarding:self->_cachedSpecifier];
  }

  else
  {
    if (v6)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "SecureIntent: Secure Intent did finish but still not authenticated. Will not present training view.", &v8, 2u);
    }
  }
}

@end