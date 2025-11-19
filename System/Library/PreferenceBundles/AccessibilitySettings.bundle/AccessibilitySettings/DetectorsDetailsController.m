@interface DetectorsDetailsController
- (DetectorsDetailsController)init;
- (id)_customDetectorIsEnabledForSpec:(id)a3;
- (id)currentToneSelectedForSpecifier:(id)a3;
- (id)footerTextForSpec:(id)a3;
- (id)isDetectorEnabledForSpecifier:(id)a3;
- (id)specifiers;
- (void)_bugButtonTapped;
- (void)_confirmedSetDetectorEnabled:(BOOL)a3 forSpec:(id)a4;
- (void)_deleteButtonTapped:(id)a3;
- (void)_kShotModelCreationCompleted;
- (void)_setCustomDetectorEnabled:(id)a3 forSpec:(id)a4;
- (void)_showConfirmationAlertForSpec:(id)a3;
- (void)_updateSoundDetectionState;
- (void)confirmationViewAcceptedForSpecifier:(id)a3;
- (void)confirmationViewAlternateAcceptedForSpecifier:(id)a3;
- (void)confirmationViewCancelledForSpecifier:(id)a3;
- (void)dealloc;
- (void)setDetectorEnabled:(id)a3 forSpec:(id)a4;
- (void)setSpecifier:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation DetectorsDetailsController

- (DetectorsDetailsController)init
{
  v7.receiver = self;
  v7.super_class = DetectorsDetailsController;
  v2 = [(DetectorsDetailsController *)&v7 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _kShotModelCreationCompleted, @"com.apple.accessibility.kshot.model.complete", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v4 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v4, v2, _kShotModelCreationError, @"com.apple.accessibility.kshot.model.error", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v5 = v2;
  }

  return v2;
}

- (void)viewWillAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = DetectorsDetailsController;
  [(DetectorsDetailsController *)&v10 viewWillAppear:a3];
  if (AXIsInternalInstall())
  {
    v4 = [(DetectorsDetailsController *)self specifier];
    v5 = [v4 propertyForKey:@"AssociatedDetector"];

    if (v5)
    {
      v6 = [UIBarButtonItem alloc];
      v7 = settingsLocString(@"BUG_BUTTON", @"SoundDetection");
      v8 = [v6 initWithTitle:v7 style:0 target:self action:"_bugButtonTapped"];
      v9 = [(DetectorsDetailsController *)self navigationItem];
      [v9 setRightBarButtonItem:v8];
    }
  }
}

- (id)specifiers
{
  v2 = OBJC_IVAR___PSListController__specifiers;
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    goto LABEL_13;
  }

  v5 = [(DetectorsDetailsController *)self specifier];
  v6 = +[NSMutableArray array];
  v7 = [v5 propertyForKey:@"alertType"];
  alertTypeDescription = self->_alertTypeDescription;
  self->_alertTypeDescription = v7;

  v9 = [v5 propertyForKey:@"accountIdentifier"];
  alertTopic = self->_alertTopic;
  self->_alertTopic = v9;

  v11 = [v5 propertyForKey:@"AXSoundDetectionTypes"];
  v12 = [v5 propertyForKey:@"IsCustomSound"];

  v40 = v6;
  if (v12)
  {
    v13 = +[PSSpecifier emptyGroupSpecifier];
    v14 = [(DetectorsDetailsController *)self specifier];
    v15 = [(DetectorsDetailsController *)self footerTextForSpec:v14];
    [v13 setProperty:v15 forKey:PSFooterTextGroupKey];

    v16 = PSIDKey;
    [v13 setProperty:@"GroupSpecKey" forKey:PSIDKey];
    [v6 addObject:v13];
  }

  else
  {
    v16 = PSIDKey;
  }

  v17 = [(DetectorsDetailsController *)self specifier];
  v18 = [v17 name];
  v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:"setDetectorEnabled:forSpec:" get:"isDetectorEnabledForSpecifier:" detail:0 cell:6 edit:0];

  v20 = [(DetectorsDetailsController *)self specifier];
  v21 = [v20 identifier];
  [v19 setProperty:v21 forKey:v16];

  v22 = [(DetectorsDetailsController *)self specifier];
  v23 = [v22 propertyForKey:@"IsCustomSound"];

  if (!v23)
  {
    goto LABEL_10;
  }

  v39 = v11;
  v24 = [(DetectorsDetailsController *)self specifier];
  v25 = [v24 propertyForKey:@"AssociatedDetector"];

  if (![v25 modelFailed])
  {
    v32 = [(DetectorsDetailsController *)self specifier];
    v33 = [v32 name];
    v34 = [PSSpecifier preferenceSpecifierNamed:v33 target:self set:"_setCustomDetectorEnabled:forSpec:" get:"_customDetectorIsEnabledForSpec:" detail:0 cell:6 edit:0];

    [v34 setProperty:v25 forKey:@"AssociatedDetector"];
    v35 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v25 isModelReady]);
    [v34 setProperty:v35 forKey:PSEnabledKey];

    [v34 setProperty:@"EnableSpecKey" forKey:v16];
    v19 = v34;
    v11 = v39;
LABEL_10:
    [v19 setProperty:v11 forKey:@"AXSoundDetectionTypes"];
    [v40 addObject:v19];
    v28 = v40;
    v36 = settingsLocString(@"SOUND_ALERT_TONES", @"SoundDetection");
    v30 = [PSSpecifier preferenceSpecifierNamed:v36 target:self set:0 get:"currentToneSelectedForSpecifier:" detail:objc_opt_class() cell:2 edit:0];

    [v30 setProperty:self->_alertTypeDescription forKey:@"alertType"];
    [v30 setProperty:self->_alertTopic forKey:@"accountIdentifier"];
    [v30 setProperty:v11 forKey:@"AXSoundDetectionTypes"];
    [v40 addObject:v30];
    v37 = v40;
    v25 = *&self->AXUISettingsBaseListController_opaque[v2];
    *&self->AXUISettingsBaseListController_opaque[v2] = v37;
    v31 = 1;
    goto LABEL_11;
  }

  v26 = +[PSSpecifier emptyGroupSpecifier];
  v27 = settingsLocString(@"TRAINING_FAILED_DETAIL", @"SoundDetection");
  [v26 setProperty:v27 forKey:PSFooterTextGroupKey];

  v28 = v40;
  [v40 addObject:v26];
  v29 = settingsLocString(@"RECORD_AGAIN", @"SoundDetection");
  v30 = [PSSpecifier deleteButtonSpecifierWithName:v29 target:self action:"_deleteButtonTapped:"];

  [v40 addObject:v30];
  objc_storeStrong(&self->AXUISettingsBaseListController_opaque[v2], v40);
  v19 = *&self->AXUISettingsBaseListController_opaque[v2];

  v31 = 0;
  v11 = v39;
LABEL_11:

  if (!v31)
  {
    goto LABEL_14;
  }

  v3 = *&self->AXUISettingsBaseListController_opaque[v2];
LABEL_13:
  v19 = v3;
LABEL_14:

  return v19;
}

- (void)_deleteButtonTapped:(id)a3
{
  v4 = [(DetectorsDetailsController *)self specifier];
  v5 = [v4 propertyForKey:@"AssociatedDetector"];

  v6 = AXLogUltronKShot();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Delete button tapped for detector: %@", &v13, 0xCu);
  }

  v7 = objc_alloc_init(PSConfirmationSpecifier);
  v8 = settingsLocString(@"TRAINING_FAILED_DETAIL", @"SoundDetection");
  [v7 setPrompt:v8];

  v9 = settingsLocString(@"RECORD_AGAIN", @"SoundDetection");
  [v7 setTitle:v9];

  v10 = settingsLocString(@"RECORD_AGAIN", @"SoundDetection");
  [v7 setOkButton:v10];

  v11 = settingsLocString(@"REMOVE_SOUND", @"SoundDetection");
  [v7 setAlternateButton:v11];

  v12 = settingsLocString(@"CANCEL_BUTTON", @"SoundDetection");
  [v7 setCancelButton:v12];

  [v7 setProperty:&__kCFBooleanTrue forKey:PSConfirmationAlternateDestructiveKey];
  [(DetectorsDetailsController *)self showConfirmationViewForSpecifier:v7];
}

- (void)setSpecifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = DetectorsDetailsController;
  v4 = a3;
  [(DetectorsDetailsController *)&v6 setSpecifier:v4];
  v5 = [v4 name];

  [(DetectorsDetailsController *)self setTitle:v5];
}

- (void)setDetectorEnabled:(id)a3 forSpec:(id)a4
{
  v15 = a4;
  v6 = [a3 BOOLValue];
  v7 = +[AXSDSettings sharedInstance];
  v8 = [v7 enabledSoundDetectionTypes];
  v9 = [v8 count];

  v10 = +[VTPreferences sharedPreferences];
  v11 = [v10 voiceTriggerEnabled];

  v12 = AXDeviceSupportsConcurrentHPLPMics();
  if (v9)
  {
    v13 = 1;
  }

  else
  {
    v13 = v6 == 0;
  }

  v14 = v13 || v11 == 0;
  if (v14 || (v12 & 1) != 0)
  {
    [(DetectorsDetailsController *)self _confirmedSetDetectorEnabled:v6 forSpec:v15];
  }

  else
  {
    [(DetectorsDetailsController *)self _showConfirmationAlertForSpec:v15];
  }
}

- (id)isDetectorEnabledForSpecifier:(id)a3
{
  [a3 propertyForKey:@"AXSoundDetectionTypes"];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = +[AXSDSettings sharedInstance];
        v9 = [v8 enabledSoundDetectionTypes];
        LOBYTE(v7) = [v9 containsObject:v7];

        if (v7)
        {
          v4 = &dword_0 + 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = [NSNumber numberWithBool:v4];

  return v10;
}

- (id)currentToneSelectedForSpecifier:(id)a3
{
  v4 = TLAlertTypeFromString();
  v5 = +[TLToneManager sharedToneManager];
  v6 = [v5 currentToneIdentifierForAlertType:v4 topic:self->_alertTopic];

  v7 = +[TLToneManager sharedToneManager];
  v8 = [v7 nameForToneIdentifier:v6];

  return v8;
}

- (void)_setCustomDetectorEnabled:(id)a3 forSpec:(id)a4
{
  v6 = a3;
  v7 = [a4 propertyForKey:@"AssociatedDetector"];
  v8 = AXLogUltron();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DetectorsDetailsController _setCustomDetectorEnabled:v7 forSpec:v8];
  }

  v9 = +[AXSDSettings sharedInstance];
  v10 = [v6 BOOLValue];

  [v9 setKShotDetectorIsEnabled:v7 isEnabled:v10];
  [(DetectorsDetailsController *)self _updateSoundDetectionState];
}

- (id)_customDetectorIsEnabledForSpec:(id)a3
{
  v3 = [a3 propertyForKey:@"AssociatedDetector"];
  if ([v3 isModelReady])
  {
    v4 = +[AXSDSettings sharedInstance];
    v5 = [v4 enabledKShotDetectorIdentifiers];
    v6 = [v3 identifier];
    v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 containsObject:v6]);
  }

  else
  {
    v7 = &__kCFBooleanTrue;
  }

  return v7;
}

- (id)footerTextForSpec:(id)a3
{
  v3 = [a3 propertyForKey:@"AssociatedDetector"];
  if ([v3 isModelReady])
  {
    v4 = &stru_25D420;
  }

  else
  {
    v4 = settingsLocString(@"TRAINING_PROGRESS_FOOTER", @"SoundDetection");
  }

  return v4;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.accessibility.kshot.model.complete", 0);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v4, self, @"com.apple.accessibility.kshot.model.error", 0);
  v5.receiver = self;
  v5.super_class = DetectorsDetailsController;
  [(DetectorsDetailsController *)&v5 dealloc];
}

- (void)_kShotModelCreationCompleted
{
  v4 = [(DetectorsDetailsController *)self specifierForID:@"EnableSpecKey"];
  [v4 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
  v3 = [(DetectorsDetailsController *)self specifierForID:@"GroupSpecKey"];
  [v3 setProperty:&stru_25D420 forKey:PSFooterTextGroupKey];
  [(DetectorsDetailsController *)self reloadSpecifiers];
}

- (void)_bugButtonTapped
{
  v3 = [(DetectorsDetailsController *)self specifier];
  v4 = [v3 propertyForKey:@"AssociatedDetector"];

  v5 = settingsLocString(@"TTR_ALERT_TITLE", @"SoundDetection");
  v6 = settingsLocString(@"TTR_ALERT_MESSAGE", @"SoundDetection");
  v7 = [UIAlertController alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  v8 = settingsLocString(@"TTR_CONTINUE_TITLE", @"SoundDetection");
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __46__DetectorsDetailsController__bugButtonTapped__block_invoke;
  v13[3] = &unk_2557A8;
  v14 = v4;
  v9 = v4;
  v10 = [UIAlertAction actionWithTitle:v8 style:0 handler:v13];

  [v7 addAction:v10];
  v11 = settingsLocString(@"TTR_CANCEL_TITLE", @"SoundDetection");
  v12 = [UIAlertAction actionWithTitle:v11 style:1 handler:&__block_literal_global_30];

  [v7 addAction:v12];
  [(DetectorsDetailsController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)_showConfirmationAlertForSpec:(id)a3
{
  v4 = a3;
  v5 = settingsLocString(@"CONFIRMATION_ALERT_TITLE", @"SoundDetection");
  v6 = settingsLocString(@"CONFIRMATION_ALERT_BODY", @"SoundDetection");
  v7 = [UIAlertController alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  v8 = settingsLocString(@"CONFIRMATION_ALERT_CANCEL", @"SoundDetection");
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __60__DetectorsDetailsController__showConfirmationAlertForSpec___block_invoke;
  v15[3] = &unk_2557A8;
  v15[4] = self;
  v9 = [UIAlertAction actionWithTitle:v8 style:1 handler:v15];

  v10 = settingsLocString(@"CONFIRMATION_ALERT_OK", @"SoundDetection");
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __60__DetectorsDetailsController__showConfirmationAlertForSpec___block_invoke_2;
  v13[3] = &unk_256AA0;
  v13[4] = self;
  v14 = v4;
  v11 = v4;
  v12 = [UIAlertAction actionWithTitle:v10 style:0 handler:v13];

  [v7 addAction:v9];
  [v7 addAction:v12];
  [(DetectorsDetailsController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)_confirmedSetDetectorEnabled:(BOOL)a3 forSpec:(id)a4
{
  v6 = [a4 propertyForKey:@"AXSoundDetectionTypes"];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = +[AXSDSettings sharedInstance];
        v13 = v12;
        if (a3)
        {
          [v12 addSoundDetectionType:v11];
        }

        else
        {
          [v12 removeSoundDetectionType:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [(DetectorsDetailsController *)self _updateSoundDetectionState];
}

- (void)_updateSoundDetectionState
{
  v2 = +[AXSDSettings sharedInstance];
  v3 = [v2 enabledSoundDetectionTypes];
  v4 = [v3 count];
  v5 = +[AXSDSettings sharedInstance];
  v6 = [v5 enabledKShotDetectorIdentifiers];
  if ([v6 count] + v4)
  {
  }

  else
  {
    v7 = +[AXSDSettings sharedInstance];
    v8 = [v7 soundDetectionState];

    if (v8 == &dword_0 + 2)
    {
      v9 = +[AXSDSettings sharedInstance];
      v10 = AXSDSettingsEventSourceSettingsApp;
      v18 = v9;
      v11 = 1;
LABEL_9:
      [v9 setSoundDetectionState:v11 source:v10];
      goto LABEL_10;
    }
  }

  v18 = +[AXSDSettings sharedInstance];
  v12 = [v18 enabledSoundDetectionTypes];
  v13 = [v12 count];
  v14 = +[AXSDSettings sharedInstance];
  v15 = [v14 enabledKShotDetectorIdentifiers];
  if ([v15 count] + v13)
  {
    v16 = +[AXSDSettings sharedInstance];
    v17 = [v16 soundDetectionState];

    if (v17 != &dword_0 + 1)
    {
      return;
    }

    v9 = +[AXSDSettings sharedInstance];
    v10 = AXSDSettingsEventSourceSettingsApp;
    v18 = v9;
    v11 = 2;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)confirmationViewAcceptedForSpecifier:(id)a3
{
  v4 = [(DetectorsDetailsController *)self specifier];
  v5 = [v4 propertyForKey:@"AssociatedDetector"];

  v6 = AXLogUltronKShot();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Confirmation was accepted for the 'Retrain' action. Resetting the failed state and removing all audio recordings related to detector: %@", &v9, 0xCu);
  }

  v7 = +[AXSDSettings sharedInstance];
  [v7 deleteTrainingFilesForDetector:v5];

  v8 = +[AXSDSettings sharedInstance];
  [v8 setKShotDetectorModelFailed:v5 modelFailed:0];

  [(DetectorsDetailsController *)self popToViewController:self animated:1 destinationClass:objc_opt_class()];
  [(DetectorsDetailsController *)self reloadSpecifiers];
}

- (void)confirmationViewAlternateAcceptedForSpecifier:(id)a3
{
  v4 = [(DetectorsDetailsController *)self specifier];
  v5 = [v4 propertyForKey:@"AssociatedDetector"];

  v6 = AXLogUltronKShot();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Confirmation was accepted for the 'Delete' action. Removing all settings related to detector: %@", &v9, 0xCu);
  }

  v7 = +[AXSDSettings sharedInstance];
  [v7 setDetectorIsEnabled:v5 isEnabled:0];

  v8 = +[AXSDSettings sharedInstance];
  [v8 removeKShotDetector:v5];

  [(DetectorsDetailsController *)self popToViewController:self animated:1 destinationClass:objc_opt_class()];
  [(DetectorsDetailsController *)self reloadSpecifiers];
}

- (void)confirmationViewCancelledForSpecifier:(id)a3
{
  v4 = [(DetectorsDetailsController *)self specifier];
  v5 = [v4 propertyForKey:@"AssociatedDetector"];

  v6 = AXLogUltronKShot();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Confirmation was cancelled. Not making any changes to detector: %@", &v7, 0xCu);
  }

  [(DetectorsDetailsController *)self reloadSpecifiers];
}

- (void)_setCustomDetectorEnabled:(void *)a1 forSpec:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v4 = [a1 name];
  v5 = [a1 identifier];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Enable/Disable custom detector in settings %@ %@", &v6, 0x16u);
}

@end