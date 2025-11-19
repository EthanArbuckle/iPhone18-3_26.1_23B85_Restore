@interface SoundDetectionController
- (BOOL)_isFeatureEnabled;
- (SoundDetectionController)init;
- (id)_internalSettingsButton;
- (id)numberOfEnabledDetectors;
- (id)soundDetectionEnabled;
- (id)specifiers;
- (void)_enableSoundDetection:(BOOL)a3;
- (void)_internalSettingsPressed:(id)a3;
- (void)_navigateToDataCollectionView:(id)a3;
- (void)_reloadSettings;
- (void)_showHeySiriConfirmationAlert;
- (void)_showInternalDataCollectionAlert;
- (void)_updateAssetStatusCell:(int64_t)a3 error:(id)a4 downloaded:(int64_t)a5 expected:(int64_t)a6;
- (void)dealloc;
- (void)detectorStore:(id)a3 didFinishRefreshingDetectors:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6;
- (void)detectorStore:(id)a3 totalSizeExpected:(int64_t)a4 downloadProgressTotalWritten:(int64_t)a5 remainingTimeExpected:(double)a6 isStalled:(BOOL)a7;
- (void)detectorsReadyForDetectorStore:(id)a3;
- (void)optOutCustomSoundRecognition:(id)a3;
- (void)setSoundDetectionEnabled:(id)a3;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)updateDetectorSpecifiersAnimated:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SoundDetectionController

- (SoundDetectionController)init
{
  v16.receiver = self;
  v16.super_class = SoundDetectionController;
  v2 = [(AccessibilitySettingsBaseController *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v2->_assetsReady = 0;
    v2->_wantsAssetDownloadIfNeeded = 1;
    objc_initWeak(&location, v2);
    v4 = +[AXSDSettings sharedInstance];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __32__SoundDetectionController_init__block_invoke;
    v13[3] = &unk_255388;
    objc_copyWeak(&v14, &location);
    [v4 registerUpdateBlock:v13 forRetrieveSelector:"soundDetectionState" withListener:v3];

    v5 = +[AXSDSettings sharedInstance];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __32__SoundDetectionController_init__block_invoke_2;
    v11[3] = &unk_255388;
    objc_copyWeak(&v12, &location);
    [v5 registerUpdateBlock:v11 forRetrieveSelector:"enabledSoundDetectionTypes" withListener:v3];

    v6 = +[AXSettings sharedInstance];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __32__SoundDetectionController_init__block_invoke_3;
    v9[3] = &unk_255388;
    objc_copyWeak(&v10, &location);
    [v6 registerUpdateBlock:v9 forRetrieveSelector:"isNameRecognitionEnabled" withListener:v3];

    v7 = v3;
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __32__SoundDetectionController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadSettings];
}

void __32__SoundDetectionController_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadSettings];
}

void __32__SoundDetectionController_init__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = SoundDetectionController;
  [(SoundDetectionController *)&v10 viewDidLoad];
  v3 = +[AXSDDetectorStore sharedInstance];
  [v3 addObserver:self];

  v4 = +[AXSDDetectorStore sharedInstance];
  [v4 loadDetectors];

  if (AXIsInternalInstall())
  {
    v5 = [(SoundDetectionController *)self navigationItem];
    v6 = [(SoundDetectionController *)self _internalSettingsButton];
    [v5 setRightBarButtonItem:v6];
  }

  v7 = [(SoundDetectionController *)self table];
  v8 = objc_opt_class();
  v9 = +[AXAssetStatusInfoCell cellReuseIdentifier];
  [v7 registerClass:v8 forCellReuseIdentifier:v9];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = SoundDetectionController;
  [(AccessibilitySettingsBaseController *)&v6 viewWillAppear:a3];
  v4 = +[AXSDDetectorStore sharedInstance];
  [v4 addObserver:self];

  [(SoundDetectionController *)self setAssetsReady:0];
  if ([(SoundDetectionController *)self _isFeatureEnabled])
  {
    v5 = +[AXSDDetectorStore sharedInstance];
    -[SoundDetectionController setAssetsReady:](self, "setAssetsReady:", [v5 areDetectorsReady]);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = SoundDetectionController;
  [(SoundDetectionController *)&v3 viewWillDisappear:a3];
}

- (BOOL)_isFeatureEnabled
{
  v2 = +[AXSDSettings sharedInstance];
  v3 = [v2 soundDetectionEnabled];

  return v3;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.AXUISettingsListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v4)
  {
    goto LABEL_20;
  }

  v5 = +[NSMutableArray array];
  v6 = +[PSSpecifier emptyGroupSpecifier];
  v7 = AXLocStringKeyForModel();
  v8 = PSIDKey;
  [v6 setProperty:@"SoundDetectionGroup" forKey:PSIDKey];
  v35 = v7;
  if (AXDeviceSupportsNameRecognition())
  {
    v9 = PSFooterTextGroupKey;
  }

  else
  {
    v10 = settingsLocString(v7, @"SoundDetection");
    v9 = PSFooterTextGroupKey;
    [v6 setProperty:v10 forKey:PSFooterTextGroupKey];
  }

  [v5 addObject:v6];
  v11 = settingsLocString(@"SOUND_RECOGNITION", @"SoundDetection");
  v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:"setSoundDetectionEnabled:" get:"soundDetectionEnabled" detail:0 cell:6 edit:0];

  [v12 setProperty:@"SoundDetection" forKey:v8];
  [v5 addObject:v12];
  v13 = [PSSpecifier preferenceSpecifierNamed:&stru_25D420 target:self set:0 get:0 detail:0 cell:-1 edit:0];

  [v13 setProperty:@"Downloading" forKey:v8];
  [v13 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v13 setAx_assetState:0];
  [v5 addObject:v13];
  assetStatusSpecifier = self->_assetStatusSpecifier;
  self->_assetStatusSpecifier = v13;
  v15 = v13;

  [(PSSpecifier *)self->_assetStatusSpecifier setAx_assetDeleteButtonHidden:1];
  [(PSSpecifier *)self->_assetStatusSpecifier setAx_assetDownloadButtonHidden:1];
  v16 = [PSSpecifier groupSpecifierWithName:0];

  [v16 setProperty:@"DetectorsGroup" forKey:v8];
  v17 = settingsLocString(@"SOUND_DETECTORS_FOOTER", @"SoundDetection");
  [v16 setProperty:v17 forKey:v9];

  [(SoundDetectionController *)self setSoundDetectorsGroupSpecifier:v16];
  v18 = settingsLocString(@"SOUND_DETECTORS", @"SoundDetection");
  v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:0 get:"numberOfEnabledDetectors" detail:objc_opt_class() cell:2 edit:0];

  [v19 setProperty:@"Sounds" forKey:v8];
  [(SoundDetectionController *)self setSoundDetectorsSpecifier:v19];
  if (AXIsInternalInstall())
  {
    v20 = [PSSpecifier preferenceSpecifierNamed:@"Enroll in False Positive Collection" target:self set:0 get:0 detail:0 cell:2 edit:0];

    [v20 setButtonAction:"_navigateToDataCollectionView:"];
    [v20 setProperty:kCFBooleanTrue forKey:PSEnabledKey];
    [v20 setProperty:@"DataCollection" forKey:v8];
    [(SoundDetectionController *)self setEnrollSpecifier:v20];
    v19 = [PSSpecifier preferenceSpecifierNamed:@"History" target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v19 setProperty:@"History" forKey:v8];
    [(SoundDetectionController *)self setHistorySpecifier:v19];
  }

  v21 = +[AXSDSettings sharedInstance];
  v22 = v35;
  if (![v21 soundDetectionEnabled])
  {
    goto LABEL_16;
  }

  v23 = [(SoundDetectionController *)self assetsReady];

  if (!v23)
  {
    goto LABEL_17;
  }

  v24 = [(SoundDetectionController *)self soundDetectorsGroupSpecifier];
  [v5 addObject:v24];

  v25 = [(SoundDetectionController *)self soundDetectorsSpecifier];
  [v5 addObject:v25];

  if (!AXIsInternalInstall())
  {
    goto LABEL_17;
  }

  if ((+[AXSDSoundDetectionController isEnrolledInDataCollection]& 1) == 0)
  {
    v26 = [(SoundDetectionController *)self enrollSpecifier];

    if (v26)
    {
      v27 = [(SoundDetectionController *)self enrollSpecifier];
LABEL_15:
      v21 = v27;
      [v5 addObject:v27];
LABEL_16:

      goto LABEL_17;
    }
  }

  v28 = [(SoundDetectionController *)self historySpecifier];

  if (v28)
  {
    v27 = [(SoundDetectionController *)self historySpecifier];
    goto LABEL_15;
  }

LABEL_17:
  if (AXDeviceIsKShotMedinaEnabled())
  {
    v29 = [PSSpecifier groupSpecifierWithID:@"MedinaGroup"];

    [v5 addObject:v29];
    v30 = settingsLocString(@"CUSTOM_SOUNDS_OPT_OUT", @"Accessibility-MedinaPreBoard");
    v31 = [PSSpecifier preferenceSpecifierNamed:v30 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v31 setButtonAction:"optOutCustomSoundRecognition:"];
    [v31 setProperty:@"Medina" forKey:v8];
    [v5 addObject:v31];
    v6 = v29;
    v19 = v31;
    v22 = v35;
  }

  v32 = +[PSSpecifier emptyGroupSpecifier];

  [v5 addObject:v32];
  v33 = *&self->super.AXUISettingsListController_opaque[v3];
  *&self->super.AXUISettingsListController_opaque[v3] = v5;

  v4 = *&self->super.AXUISettingsListController_opaque[v3];
LABEL_20:

  return v4;
}

- (id)soundDetectionEnabled
{
  v2 = +[AXSDSettings sharedInstance];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 soundDetectionEnabled]);

  return v3;
}

- (void)setSoundDetectionEnabled:(id)a3
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSDSettings sharedInstance];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 soundDetectionState];

    v8 = +[AXSDSettings sharedInstance];
    v9 = [v8 enabledSoundDetectionTypes];
    v10 = [v9 count];
    v11 = +[AXSDSettings sharedInstance];
    v12 = [v11 enabledKShotDetectorIdentifiers];
    v13 = [v12 count];

    v14 = +[VTPreferences sharedPreferences];
    v15 = [v14 voiceTriggerEnabled];

    v16 = AXDeviceSupportsConcurrentHPLPMics();
    if (!(v10 + v13) || v7 == &dword_0 + 2 || !v15 || (v16 & 1) != 0)
    {
      [(SoundDetectionController *)self _enableSoundDetection:v10 != -v13];
    }

    else
    {
      [(SoundDetectionController *)self _showHeySiriConfirmationAlert];
    }
  }

  else
  {
    [v5 setSoundDetectionState:0 source:AXSDSettingsEventSourceSettingsApp];
  }

  [(SoundDetectionController *)self updateDetectorSpecifiersAnimated:1];
}

- (void)_enableSoundDetection:(BOOL)a3
{
  v3 = a3;
  v5 = +[AXSDSettings sharedInstance];
  v6 = v5;
  if (v3)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v5 setSoundDetectionState:v7 source:AXSDSettingsEventSourceSettingsApp];

  if (AXIsInternalInstall() && (+[AXSDSoundDetectionController wasPromptedForDataCollection]& 1) == 0)
  {

    [(SoundDetectionController *)self _showInternalDataCollectionAlert];
  }
}

- (void)updateDetectorSpecifiersAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(SoundDetectionController *)self specifiers];
  v6 = +[AXSDSettings sharedInstance];
  if ([v6 soundDetectionEnabled])
  {
    v7 = [(SoundDetectionController *)self assetsReady];
  }

  else
  {
    v7 = 0;
  }

  v8 = [NSMutableArray alloc];
  v9 = [(SoundDetectionController *)self soundDetectorsGroupSpecifier];
  v22[0] = v9;
  v10 = [(SoundDetectionController *)self soundDetectorsSpecifier];
  v22[1] = v10;
  v11 = [NSArray arrayWithObjects:v22 count:2];
  v12 = [v8 initWithArray:v11];

  if (AXIsInternalInstall())
  {
    if ((+[AXSDSoundDetectionController isEnrolledInDataCollection]& 1) != 0)
    {
      [(SoundDetectionController *)self historySpecifier];
    }

    else
    {
      [(SoundDetectionController *)self enrollSpecifier];
    }
    v13 = ;
    [v12 addObject:v13];
  }

  v14 = [(SoundDetectionController *)self soundDetectorsGroupSpecifier];
  if (v14)
  {
    v15 = v14;
    v16 = [(SoundDetectionController *)self soundDetectorsSpecifier];

    if (v16)
    {
      [(SoundDetectionController *)self beginUpdates];
      if (v7)
      {
        v17 = [(SoundDetectionController *)self soundDetectorsGroupSpecifier];
        v18 = [v5 containsObject:v17];

        if ((v18 & 1) == 0)
        {
          [(SoundDetectionController *)self insertContiguousSpecifiers:v12 afterSpecifierID:@"Downloading" animated:v3];
        }
      }

      else
      {
        [(SoundDetectionController *)self removeContiguousSpecifiers:v12 animated:v3];
      }

      [(SoundDetectionController *)self endUpdates];
    }
  }

  if (v7)
  {
    v19 = [[AXUIClient alloc] initWithIdentifier:@"AXAssetClient-sounddetectionmodule" serviceBundleName:@"AXAssetAndDataServer"];
    v20 = +[AXAccessQueue mainAccessQueue];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = __61__SoundDetectionController_updateDetectorSpecifiersAnimated___block_invoke;
    v21[3] = &unk_257F40;
    v21[4] = self;
    [v19 sendAsynchronousMessage:&__NSDictionary0__struct withIdentifier:9 targetAccessQueue:v20 completion:v21];
  }
}

void __61__SoundDetectionController_updateDetectorSpecifiersAnimated___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 objectForKey:@"installed"];
    v8 = [v7 BOOLValue];

    if (v8)
    {
      v9 = AXLogUltron();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Sound Recognition Control Center Module was installed.", v15, 2u);
      }

      v10 = settingsLocString(@"SOUND_RECOGNITION_CONTROL_CENTER_TITLE", @"Accessibility");
      v11 = settingsLocString(@"SOUND_RECOGNITION_CONTROL_CENTER_DESCRIPTION", @"Accessibility");
      v12 = [UIAlertController alertControllerWithTitle:v10 message:v11 preferredStyle:1];

      v13 = settingsLocString(@"OK", @"Accessibility");
      v14 = [UIAlertAction actionWithTitle:v13 style:0 handler:&__block_literal_global_45];

      [v12 addAction:v14];
      [*(a1 + 32) presentViewController:v12 animated:1 completion:0];
    }
  }
}

void __61__SoundDetectionController_updateDetectorSpecifiersAnimated___block_invoke_399(id a1, UIAlertAction *a2)
{
  v2 = AXLogUltron();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Sound Recognition Control Center Module was installed and acknowledged.", v3, 2u);
  }
}

- (id)numberOfEnabledDetectors
{
  v2 = +[AXSDSettings sharedInstance];
  v3 = [v2 enabledSoundDetectionTypes];

  v4 = +[AXSDSettings sharedInstance];
  v5 = [v4 enabledSoundDetectionTypes];
  v6 = [v5 count];

  v7 = &v6[-[v3 containsObject:AXSDSoundDetectionTypeApplianceBeeps]];
  v8 = &v7[-[v3 containsObject:AXSDSoundDetectionTypeApplianceBuzzes]];
  v9 = +[AXSDSettings sharedInstance];
  v10 = [v9 enabledKShotDetectorIdentifiers];
  v11 = [v10 count] + v8;

  if (v11)
  {
    [NSString localizedStringWithFormat:@"%li", v11];
  }

  else
  {
    settingsLocString(@"NONE", @"SoundDetection");
  }
  v12 = ;

  return v12;
}

- (void)optOutCustomSoundRecognition:(id)a3
{
  v4 = settingsLocString(@"OPT_OUT_SECURE_INTENT_CUSTOM_SOUND_TITLE", @"Accessibility-MedinaPreBoard");
  v5 = AXLocStringKeyForModel();
  v6 = settingsLocString(v5, @"Accessibility-MedinaPreBoard");
  v11 = [UIAlertController alertControllerWithTitle:v4 message:v6 preferredStyle:1];

  v7 = settingsLocString(@"OPT_OUT_SECURE_INTENT_CUSTOM_SOUND_CANCEL", @"Accessibility-MedinaPreBoard");
  v8 = [UIAlertAction actionWithTitle:v7 style:1 handler:&__block_literal_global_419];

  [v11 addAction:v8];
  v9 = settingsLocString(@"OPT_OUT_SECURE_INTENT_CUSTOM_SOUND_OK", @"Accessibility-MedinaPreBoard");
  v10 = [UIAlertAction actionWithTitle:v9 style:2 handler:&__block_literal_global_424];

  [v11 addAction:v10];
  [(SoundDetectionController *)self presentViewController:v11 animated:1 completion:0];
}

void __57__SoundDetectionController_optOutCustomSoundRecognition___block_invoke_2(id a1, UIAlertAction *a2)
{
  v2 = [[LAStorage alloc] initWithDomain:0 authenticationContext:0];
  [v2 setBool:0 forKey:20 completionHandler:&__block_literal_global_428];
}

void __57__SoundDetectionController_optOutCustomSoundRecognition___block_invoke_3(id a1, NSError *a2)
{
  v2 = a2;
  v3 = AXLogUltronKShot();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "KShot Preboard Unenrolled completed with error: %@", &v4, 0xCu);
  }
}

- (void)_navigateToDataCollectionView:(id)a3
{
  v4 = [NSURL URLWithString:@"prefs:root=INTERNAL_SETTINGS&path=Accessibility/DataCollectionStudies/SoundDetection"];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 openSensitiveURL:v4 withOptions:0];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = +[AXSDDetectorStore sharedInstance];
  [v4 removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v6.receiver = self;
  v6.super_class = SoundDetectionController;
  [(AccessibilitySettingsBaseController *)&v6 dealloc];
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v10 = a4;
  v7 = [(SoundDetectionController *)self specifierForIndexPath:a5];
  v8 = [v7 propertyForKey:PSIDKey];
  v9 = [v8 isEqualToString:@"Downloading"];

  if (v9)
  {
    [v10 setAccessibilityTraits:UIAccessibilityTraitStaticText];
  }
}

- (void)_reloadSettings
{
  v3 = +[AXSDDetectorStore sharedInstance];
  v4 = [v3 hasInProgressDownloads];

  if ([(SoundDetectionController *)self _isFeatureEnabled]&& ![(SoundDetectionController *)self assetsReady])
  {
    if (v4)
    {
      goto LABEL_9;
    }

    v5 = +[AXSDDetectorStore sharedInstance];
    [v5 downloadDetectors];
    goto LABEL_8;
  }

  if (![(SoundDetectionController *)self _isFeatureEnabled]&& ((v4 ^ 1) & 1) == 0)
  {
    v5 = +[AXSDDetectorStore sharedInstance];
    [v5 stopDownloadOfDetectors];
LABEL_8:
  }

LABEL_9:
  [(SoundDetectionController *)self updateDetectorSpecifiersAnimated:1];
  [(SoundDetectionController *)self reloadSpecifierID:@"SoundDetection"];

  [(SoundDetectionController *)self reloadSpecifierID:@"Sounds"];
}

- (id)_internalSettingsButton
{
  v3 = [UIImage systemImageNamed:@"gear"];
  v4 = [[UIBarButtonItem alloc] initWithImage:v3 style:0 target:self action:"_internalSettingsPressed:"];

  return v4;
}

- (void)_internalSettingsPressed:(id)a3
{
  v4 = [NSURL URLWithString:@"prefs:root=INTERNAL_SETTINGS&path=Accessibility/Assets"];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 openSensitiveURL:v4 withOptions:0];
}

- (void)_showHeySiriConfirmationAlert
{
  v3 = settingsLocString(@"CONFIRMATION_ALERT_TITLE", @"SoundDetection");
  v4 = settingsLocString(@"CONFIRMATION_ALERT_BODY", @"SoundDetection");
  v5 = [UIAlertController alertControllerWithTitle:v3 message:v4 preferredStyle:1];

  v6 = settingsLocString(@"CONFIRMATION_ALERT_CANCEL", @"SoundDetection");
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __57__SoundDetectionController__showHeySiriConfirmationAlert__block_invoke;
  v11[3] = &unk_2557A8;
  v11[4] = self;
  v7 = [UIAlertAction actionWithTitle:v6 style:1 handler:v11];

  v8 = settingsLocString(@"CONFIRMATION_ALERT_OK", @"SoundDetection");
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __57__SoundDetectionController__showHeySiriConfirmationAlert__block_invoke_2;
  v10[3] = &unk_2557A8;
  v10[4] = self;
  v9 = [UIAlertAction actionWithTitle:v8 style:0 handler:v10];

  [v5 addAction:v7];
  [v5 addAction:v9];
  [(SoundDetectionController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)_showInternalDataCollectionAlert
{
  if (AXIsInternalInstall())
  {
    v3 = [UIAlertController alertControllerWithTitle:@"Sound Detection False Positives" message:@"Enabling Data Collection allows us to record the audio that triggered any detectors you have enabled while the Sound Recognition feature is running. These recording can be used report False Positives via the Notification or here in Settings." preferredStyle:1];
    v4 = [UIAlertAction actionWithTitle:@"No" style:1 handler:&__block_literal_global_469];
    objc_initWeak(&location, self);
    v6 = _NSConcreteStackBlock;
    v7 = 3221225472;
    v8 = __60__SoundDetectionController__showInternalDataCollectionAlert__block_invoke_2;
    v9 = &unk_255BF8;
    objc_copyWeak(&v10, &location);
    v5 = [UIAlertAction actionWithTitle:@"Learn More" style:0 handler:&v6];
    [v3 addAction:{v4, v6, v7, v8, v9}];
    [v3 addAction:v5];
    [(SoundDetectionController *)self presentViewController:v3 animated:1 completion:&__block_literal_global_474];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __60__SoundDetectionController__showInternalDataCollectionAlert__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _navigateToDataCollectionView:0];
}

- (void)_updateAssetStatusCell:(int64_t)a3 error:(id)a4 downloaded:(int64_t)a5 expected:(int64_t)a6
{
  assetStatusSpecifier = self->_assetStatusSpecifier;
  v11 = a4;
  [(PSSpecifier *)assetStatusSpecifier setAx_assetState:a3];
  [(PSSpecifier *)self->_assetStatusSpecifier setAx_asset:0];
  [(PSSpecifier *)self->_assetStatusSpecifier setAx_assetError:v11];

  [(PSSpecifier *)self->_assetStatusSpecifier setAx_assetDownloadBytesReceived:a5];
  [(PSSpecifier *)self->_assetStatusSpecifier setAx_assetDownloadBytesExpected:a6];
  [(PSSpecifier *)self->_assetStatusSpecifier setAx_assetUnarchivedFileSize:a6];
  v12 = self->_assetStatusSpecifier;

  [(SoundDetectionController *)self reloadSpecifier:v12];
}

- (void)detectorsReadyForDetectorStore:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __59__SoundDetectionController_detectorsReadyForDetectorStore___block_invoke;
  v4[3] = &unk_255538;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

void __59__SoundDetectionController_detectorsReadyForDetectorStore___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateAssetStatusCell:4 error:0 downloaded:objc_msgSend(*(a1 + 40) expected:{"totalUnarchivedFileSize"), objc_msgSend(*(a1 + 40), "totalUnarchivedFileSize")}];
  v2 = +[AXSDSettings sharedInstance];
  v3 = [v2 supportedSoundDetectionTypes];
  v9 = [NSSet setWithArray:v3];

  v4 = +[AXSDSettings sharedInstance];
  v5 = [v4 enabledSoundDetectionTypes];
  v6 = [NSMutableSet setWithArray:v5];

  [v6 intersectSet:v9];
  v7 = +[AXSDSettings sharedInstance];
  v8 = [v6 allObjects];
  [v7 setEnabledSoundDetectionTypes:v8];

  [*(a1 + 32) setAssetsReady:1];
  [*(a1 + 32) _reloadSettings];
}

- (void)detectorStore:(id)a3 didFinishRefreshingDetectors:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = AXLogUltron();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v16 = objc_opt_class();
    v17 = v16;
    *buf = 138413058;
    v24 = v16;
    v25 = 2048;
    v26 = [v11 count];
    v27 = 1024;
    v28 = v7;
    v29 = 2112;
    v30 = v12;
    _os_log_debug_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "[%@]: did finish refreshing detectors: %lu - was successful: %d - error: %@", buf, 0x26u);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = __91__SoundDetectionController_detectorStore_didFinishRefreshingDetectors_wasSuccessful_error___block_invoke;
  v18[3] = &unk_257AD0;
  v22 = v7;
  v19 = v10;
  v20 = self;
  v21 = v12;
  v14 = v12;
  v15 = v10;
  dispatch_async(&_dispatch_main_q, v18);
}

id __91__SoundDetectionController_detectorStore_didFinishRefreshingDetectors_wasSuccessful_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) totalUnarchivedFileSize];
  if ((*(a1 + 56) & 1) == 0)
  {
    v7 = AXLogUltron();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __91__SoundDetectionController_detectorStore_didFinishRefreshingDetectors_wasSuccessful_error___block_invoke_cold_1(a1, v7);
    }

    [*(a1 + 40) _updateAssetStatusCell:5 error:*(a1 + 48) downloaded:0 expected:v2];
    v8 = *(a1 + 40);
    return [v8 _reloadSettings];
  }

  v3 = (a1 + 40);
  [*(a1 + 40) setAssetsReady:{objc_msgSend(*(a1 + 32), "areDetectorsReady")}];
  if ([*(a1 + 40) _isFeatureEnabled] && objc_msgSend(*v3, "assetsReady"))
  {
    [*v3 _updateAssetStatusCell:4 error:0 downloaded:0 expected:v2];
    v4 = AXLogUltron();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v14 = 138412290;
      *&v14[4] = objc_opt_class();
      v5 = *&v14[4];
      v6 = "[%@]: Feature enabled. Sound Detection assets are ready";
LABEL_18:
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, v6, v14, 0xCu);

      goto LABEL_19;
    }

    goto LABEL_19;
  }

  v9 = [*v3 _isFeatureEnabled];
  v10 = *v3;
  if (v9)
  {
    v11 = [v10 assetsReady];
    v10 = *v3;
    if ((v11 & 1) == 0 && v10[168] == 1)
    {
      v10[168] = 0;
      [*(a1 + 32) downloadDetectors];
      [*(a1 + 40) _updateAssetStatusCell:2 error:0 downloaded:0 expected:v2];
      v4 = AXLogUltron();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v14 = 138412290;
        *&v14[4] = objc_opt_class();
        v5 = *&v14[4];
        v6 = "[%@]: Feature enabled. Sound Detection assets are not ready";
        goto LABEL_18;
      }

LABEL_19:

      v8 = *v3;
      return [v8 _reloadSettings];
    }
  }

  if (([v10 _isFeatureEnabled] & 1) == 0 && objc_msgSend(*v3, "assetsReady"))
  {
    [*v3 _updateAssetStatusCell:4 error:0 downloaded:0 expected:v2];
    v4 = AXLogUltron();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v14 = 138412290;
      *&v14[4] = objc_opt_class();
      v5 = *&v14[4];
      v6 = "[%@]: Sound Detection is not enabled but assets are still present on device";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v13 = AXLogUltron();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    __91__SoundDetectionController_detectorStore_didFinishRefreshingDetectors_wasSuccessful_error___block_invoke_cold_2(v3, v13);
  }

  return [*v3 _updateAssetStatusCell:1 error:0 downloaded:0 expected:v2];
}

- (void)detectorStore:(id)a3 totalSizeExpected:(int64_t)a4 downloadProgressTotalWritten:(int64_t)a5 remainingTimeExpected:(double)a6 isStalled:(BOOL)a7
{
  v11 = AXLogUltron();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [SoundDetectionController detectorStore:a4 totalSizeExpected:a5 downloadProgressTotalWritten:v11 remainingTimeExpected:? isStalled:?];
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __121__SoundDetectionController_detectorStore_totalSizeExpected_downloadProgressTotalWritten_remainingTimeExpected_isStalled___block_invoke;
  v12[3] = &unk_257AF8;
  v12[5] = a5;
  v12[6] = a4;
  v12[4] = self;
  v13 = a7;
  dispatch_async(&_dispatch_main_q, v12);
}

id __121__SoundDetectionController_detectorStore_totalSizeExpected_downloadProgressTotalWritten_remainingTimeExpected_isStalled___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  if (v2 == v3)
  {
    v5 = 4;
    v3 = v2;
  }

  else if (*(a1 + 56))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  return [v4 _updateAssetStatusCell:v5 error:0 downloaded:v2 expected:v3];
}

void __91__SoundDetectionController_detectorStore_didFinishRefreshingDetectors_wasSuccessful_error___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = objc_opt_class();
  v5 = *(a1 + 48);
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  v6 = v4;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "[%@]: refresh wasn't successful. error: %@", &v7, 0x16u);
}

void __91__SoundDetectionController_detectorStore_didFinishRefreshingDetectors_wasSuccessful_error___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = 138412290;
  v5 = objc_opt_class();
  v3 = v5;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "[%@]: Sound Detection is not enabled. Nothing was matched in refresh assets function.", &v4, 0xCu);
}

- (void)detectorStore:(os_log_t)log totalSizeExpected:downloadProgressTotalWritten:remainingTimeExpected:isStalled:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "totalExpected: %lld, totalWritten: %lld", &v3, 0x16u);
}

@end