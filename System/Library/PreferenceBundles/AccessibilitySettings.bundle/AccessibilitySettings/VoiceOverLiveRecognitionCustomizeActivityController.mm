@interface VoiceOverLiveRecognitionCustomizeActivityController
- (BOOL)_isEditingExistingPhrase;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (UITextField)activityNameTextField;
- (id)automaticFlashlightEnabled:(id)a3;
- (id)doorsBrailleEnabled:(id)a3;
- (id)doorsHapticsEnabled:(id)a3;
- (id)doorsSoundEnabled:(id)a3;
- (id)doorsSpeechEnabled:(id)a3;
- (id)furnitureBrailleEnabled:(id)a3;
- (id)furnitureHapticsEnabled:(id)a3;
- (id)furnitureSoundEnabled:(id)a3;
- (id)furnitureSpeechEnabled:(id)a3;
- (id)peopleBrailleEnabled:(id)a3;
- (id)peopleHapticsEnabled:(id)a3;
- (id)peopleSoundsEnabled:(id)a3;
- (id)peopleSpeechEnabled:(id)a3;
- (id)pointAndSpeakBrailleEnabled:(id)a3;
- (id)pointAndSpeakHapticsEnabled:(id)a3;
- (id)pointAndSpeakSoundsEnabled:(id)a3;
- (id)pointAndSpeakSpeechEnabled:(id)a3;
- (id)scenesBrailleEnabled:(id)a3;
- (id)scenesSpeechEnabled:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)textBrailleEnabled:(id)a3;
- (id)textSpeechEnabled:(id)a3;
- (void)_addDetectorPreferencesSpecifiers:(id)a3;
- (void)_addDetectorTypeSpecifiers:(id)a3;
- (void)_saveButtonTapped:(id)a3;
- (void)setAutomaticFlashlight:(id)a3 specifier:(id)a4;
- (void)setDoorsBrailleEnabled:(id)a3 specifier:(id)a4;
- (void)setDoorsHapticsEnabled:(id)a3 specifier:(id)a4;
- (void)setDoorsSoundsEnabled:(id)a3 specifier:(id)a4;
- (void)setDoorsSpeechEnabled:(id)a3 specifier:(id)a4;
- (void)setFurnitureBrailleEnabled:(id)a3 specifier:(id)a4;
- (void)setFurnitureHapticsEnabled:(id)a3 specifier:(id)a4;
- (void)setFurnitureSoundsEnabled:(id)a3 specifier:(id)a4;
- (void)setFurnitureSpeechEnabled:(id)a3 specifier:(id)a4;
- (void)setPeopleBrailleEnabled:(id)a3 specifier:(id)a4;
- (void)setPeopleHapticsEnabled:(id)a3 specifier:(id)a4;
- (void)setPeopleSoundsEnabled:(id)a3 specifier:(id)a4;
- (void)setPeopleSpeechEnabled:(id)a3 specifier:(id)a4;
- (void)setPointAndSpeakBrailleEnabled:(id)a3 specifier:(id)a4;
- (void)setPointAndSpeakHapticsEnabled:(id)a3 specifier:(id)a4;
- (void)setPointAndSpeakSoundsEnabled:(id)a3 specifier:(id)a4;
- (void)setPointAndSpeakSpeechEnabled:(id)a3 specifier:(id)a4;
- (void)setScenesBrailleEnabled:(id)a3 specifier:(id)a4;
- (void)setScenesSpeechEnabled:(id)a3 specifier:(id)a4;
- (void)setTextBrailleEnabled:(id)a3 specifier:(id)a4;
- (void)setTextSpeechEnabled:(id)a3 specifier:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation VoiceOverLiveRecognitionCustomizeActivityController

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = VoiceOverLiveRecognitionCustomizeActivityController;
  [(VoiceOverLiveRecognitionCustomizeActivityController *)&v8 viewDidLoad];
  v3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:3 target:self action:"_saveButtonTapped:"];
  v4 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  [v4 setRightBarButtonItem:v3];

  v5 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  v6 = [v5 rightBarButtonItem];
  [v6 setEnabled:0];

  v7 = settingsLocString(@"VO_LIVE_RECOGNITION_ADD_ACTIVITY", @"VoiceOverSettings");
  [(VoiceOverLiveRecognitionCustomizeActivityController *)self setTitle:v7];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = [PSSpecifier groupSpecifierWithID:@"ActivitiesGroup"];
    v7 = settingsLocString(@"VO_LIVE_RECOGNITION_ADD_ACTIVITY_FOOTER", @"VoiceOverSettings");
    [v6 setProperty:v7 forKey:PSFooterTextGroupKey];

    [v5 addObject:v6];
    v8 = settingsLocString(@"VO_LIVE_RECOGNITION_ACTIVITY", @"VoiceOverSettings");
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:"_setDummyTextValue:" get:"_dummyTextValue" detail:0 cell:8 edit:0];

    [v9 setProperty:@"ActivityName" forKey:PSIDKey];
    [v9 setKeyboardType:0 autoCaps:2 autoCorrection:2];
    [v5 addObject:v9];
    [(VoiceOverLiveRecognitionCustomizeActivityController *)self _addDetectorTypeSpecifiers:v5];
    [(VoiceOverLiveRecognitionCustomizeActivityController *)self _addDetectorPreferencesSpecifiers:v5];
    v10 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)_addDetectorTypeSpecifiers:(id)a3
{
  v18 = a3;
  v3 = settingsLocString(@"VO_LIVE_RECOGNITION_ACTIVITY_DETECTORS", @"VoiceOverSettings");
  v4 = [PSSpecifier groupSpecifierWithName:v3];

  v5 = PSIDKey;
  [v4 setProperty:@"DetectionModeGroup" forKey:PSIDKey];
  v6 = settingsLocString(@"VO_LIVE_RECOGNITION_ACTIVITY_DETECTORS_FOOTERS", @"VoiceOverSettings");
  [v4 setProperty:v6 forKey:PSFooterTextGroupKey];

  [v18 addObject:v4];
  v7 = AXParameterizedLocalizedString();
  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:0 set:0 get:0 detail:0 cell:3 edit:0];

  [v8 setProperty:@"DetectionModeScenes" forKey:v5];
  [v18 addObject:v8];
  if (AXDeviceSupportsDetectionMode())
  {
    v9 = AXParameterizedLocalizedString();
    v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v10 setProperty:@"DetectionModePeople" forKey:v5];
    [v18 addObject:v10];
    v11 = AXParameterizedLocalizedString();
    v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v12 setProperty:@"DetectionModeDoors" forKey:v5];
    [v18 addObject:v12];
    v13 = AXParameterizedLocalizedString();
    v8 = [PSSpecifier preferenceSpecifierNamed:v13 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v8 setProperty:@"DetectionModeFurniture" forKey:v5];
    [v18 addObject:v8];
  }

  v14 = AXParameterizedLocalizedString();
  v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:0 set:0 get:0 detail:0 cell:3 edit:0];

  [v15 setProperty:@"DetectionModeText" forKey:v5];
  [v18 addObject:v15];
  v16 = AXParameterizedLocalizedString();
  v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:0 set:0 get:0 detail:0 cell:3 edit:0];

  [v17 setProperty:@"DetectionModePointAndSpeak" forKey:v5];
  [v18 addObject:v17];
}

- (void)_addDetectorPreferencesSpecifiers:(id)a3
{
  v58 = a3;
  v4 = +[PSSpecifier emptyGroupSpecifier];
  [v58 addObject:v4];
  v5 = AXParameterizedLocalizedString();
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:"setAutomaticFlashlight:specifier:" get:"automaticFlashlightEnabled:" detail:0 cell:6 edit:0];

  v7 = PSIDKey;
  [v6 setProperty:@"AutomaticFlashlight" forKey:PSIDKey];
  [v58 addObject:v6];
  v8 = AXParameterizedLocalizedString();
  v9 = [PSSpecifier groupSpecifierWithName:v8];

  [v58 addObject:v9];
  v10 = AXParameterizedLocalizedString();
  v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:"setScenesSpeechEnabled:specifier:" get:"scenesSpeechEnabled:" detail:0 cell:6 edit:0];

  [v11 setProperty:@"ScenesSpeech" forKey:v7];
  [v58 addObject:v11];
  v12 = AXParameterizedLocalizedString();
  v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:"setScenesBrailleEnabled:specifier:" get:"scenesBrailleEnabled:" detail:0 cell:6 edit:0];

  [v13 setProperty:@"ScenesBraille" forKey:v7];
  [v58 addObject:v13];
  if (AXDeviceSupportsDetectionMode())
  {
    v14 = AXParameterizedLocalizedString();
    v15 = [PSSpecifier groupSpecifierWithName:v14];

    [v58 addObject:v15];
    v16 = AXParameterizedLocalizedString();
    v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:"setPeopleSpeechEnabled:specifier:" get:"peopleSpeechEnabled:" detail:0 cell:6 edit:0];

    [v17 setProperty:@"PeopleSpeech" forKey:v7];
    [v58 addObject:v17];
    v18 = AXParameterizedLocalizedString();
    v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:"setPeopleBrailleEnabled:specifier:" get:"peopleBrailleEnabled:" detail:0 cell:6 edit:0];

    [v19 setProperty:@"PeopleBraille" forKey:v7];
    [v58 addObject:v19];
    v20 = AXParameterizedLocalizedString();
    v21 = [PSSpecifier preferenceSpecifierNamed:v20 target:self set:"setPeopleSoundsEnabled:specifier:" get:"peopleSoundsEnabled:" detail:0 cell:6 edit:0];

    [v21 setProperty:@"PeopleSounds" forKey:v7];
    [v58 addObject:v21];
    v22 = AXParameterizedLocalizedString();
    v23 = [PSSpecifier preferenceSpecifierNamed:v22 target:self set:"setPeopleHapticsEnabled:specifier:" get:"peopleHapticsEnabled:" detail:0 cell:6 edit:0];

    [v23 setProperty:@"PeopleHaptics" forKey:v7];
    [v58 addObject:v23];
    v24 = AXParameterizedLocalizedString();
    v25 = [PSSpecifier groupSpecifierWithName:v24];

    [v58 addObject:v25];
    v26 = AXParameterizedLocalizedString();
    v27 = [PSSpecifier preferenceSpecifierNamed:v26 target:self set:"setDoorsSpeechEnabled:specifier:" get:"doorsSpeechEnabled:" detail:0 cell:6 edit:0];

    [v27 setProperty:@"DoorsSpeech" forKey:v7];
    [v58 addObject:v27];
    v28 = AXParameterizedLocalizedString();
    v29 = [PSSpecifier preferenceSpecifierNamed:v28 target:self set:"setDoorsBrailleEnabled:specifier:" get:"doorsBrailleEnabled:" detail:0 cell:6 edit:0];

    [v29 setProperty:@"DoorsBraille" forKey:v7];
    [v58 addObject:v29];
    v30 = AXParameterizedLocalizedString();
    v31 = [PSSpecifier preferenceSpecifierNamed:v30 target:self set:"setDoorsSoundsEnabled:specifier:" get:"doorsSoundEnabled:" detail:0 cell:6 edit:0];

    [v31 setProperty:@"DoorsSounds" forKey:v7];
    [v58 addObject:v31];
    v32 = AXParameterizedLocalizedString();
    v33 = [PSSpecifier preferenceSpecifierNamed:v32 target:self set:"setDoorsHapticsEnabled:specifier:" get:"doorsHapticsEnabled:" detail:0 cell:6 edit:0];

    [v33 setProperty:@"DoorsHaptics" forKey:v7];
    [v58 addObject:v33];
    v34 = AXParameterizedLocalizedString();
    v9 = [PSSpecifier groupSpecifierWithName:v34];

    [v58 addObject:v9];
    v35 = AXParameterizedLocalizedString();
    v36 = [PSSpecifier preferenceSpecifierNamed:v35 target:self set:"setFurnitureSpeechEnabled:specifier:" get:"furnitureSpeechEnabled:" detail:0 cell:6 edit:0];

    [v36 setProperty:@"FurnitureSpeech" forKey:v7];
    [v58 addObject:v36];
    v37 = AXParameterizedLocalizedString();
    v38 = [PSSpecifier preferenceSpecifierNamed:v37 target:self set:"setFurnitureBrailleEnabled:specifier:" get:"furnitureBrailleEnabled:" detail:0 cell:6 edit:0];

    [v38 setProperty:@"FurnitureBraille" forKey:v7];
    [v58 addObject:v38];
    v39 = AXParameterizedLocalizedString();
    v40 = [PSSpecifier preferenceSpecifierNamed:v39 target:self set:"setFurnitureSoundsEnabled:specifier:" get:"furnitureSoundEnabled:" detail:0 cell:6 edit:0];

    [v40 setProperty:@"FurnitureSounds" forKey:v7];
    [v58 addObject:v40];
    v41 = AXParameterizedLocalizedString();
    v13 = [PSSpecifier preferenceSpecifierNamed:v41 target:self set:"setFurnitureHapticsEnabled:specifier:" get:"furnitureHapticsEnabled:" detail:0 cell:6 edit:0];

    [v13 setProperty:@"FurnitureHaptics" forKey:v7];
    [v58 addObject:v13];
  }

  v42 = AXParameterizedLocalizedString();
  v43 = [PSSpecifier groupSpecifierWithName:v42];

  [v58 addObject:v43];
  v44 = AXParameterizedLocalizedString();
  v45 = [PSSpecifier preferenceSpecifierNamed:v44 target:self set:"setTextSpeechEnabled:specifier:" get:"textSpeechEnabled:" detail:0 cell:6 edit:0];

  [v45 setProperty:@"TextSpeech" forKey:v7];
  [v58 addObject:v45];
  v46 = AXParameterizedLocalizedString();
  v47 = [PSSpecifier preferenceSpecifierNamed:v46 target:self set:"setTextBrailleEnabled:specifier:" get:"textBrailleEnabled:" detail:0 cell:6 edit:0];

  [v47 setProperty:@"TextBraille" forKey:v7];
  [v58 addObject:v47];
  v48 = AXParameterizedLocalizedString();
  v49 = [PSSpecifier groupSpecifierWithName:v48];

  [v58 addObject:v49];
  v50 = AXParameterizedLocalizedString();
  v51 = [PSSpecifier preferenceSpecifierNamed:v50 target:self set:"setPointAndSpeakSpeechEnabled:specifier:" get:"pointAndSpeakSpeechEnabled:" detail:0 cell:6 edit:0];

  [v51 setProperty:@"PointSpeakSpeech" forKey:v7];
  [v58 addObject:v51];
  v52 = AXParameterizedLocalizedString();
  v53 = [PSSpecifier preferenceSpecifierNamed:v52 target:self set:"setPointAndSpeakBrailleEnabled:specifier:" get:"pointAndSpeakBrailleEnabled:" detail:0 cell:6 edit:0];

  [v53 setProperty:@"PointSpeakBraille" forKey:v7];
  [v58 addObject:v53];
  v54 = AXParameterizedLocalizedString();
  v55 = [PSSpecifier preferenceSpecifierNamed:v54 target:self set:"setPointAndSpeakSoundsEnabled:specifier:" get:"pointAndSpeakSoundsEnabled:" detail:0 cell:6 edit:0];

  [v55 setProperty:@"PointSpeakSounds" forKey:v7];
  [v58 addObject:v55];
  v56 = AXParameterizedLocalizedString();
  v57 = [PSSpecifier preferenceSpecifierNamed:v56 target:self set:"setPointAndSpeakHapticsEnabled:specifier:" get:"pointAndSpeakHapticsEnabled:" detail:0 cell:6 edit:0];

  [v57 setProperty:@"PointSpeakHaptics" forKey:v7];
  [v58 addObject:v57];
}

- (BOOL)_isEditingExistingPhrase
{
  v2 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivityName];
  v3 = v2 != 0;

  return v3;
}

- (UITextField)activityNameTextField
{
  v2 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self cachedCellForSpecifierID:@"ActivityName"];
  v3 = [v2 editableTextField];

  return v3;
}

- (void)_saveButtonTapped:(id)a3
{
  v4 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self activityNameTextField];
  v18 = [v4 text];

  if ([v18 length])
  {
    v5 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
    [v5 setName:v18];

    v6 = +[AXSettings sharedInstance];
    v7 = [v6 liveRecognitionActivities];
    v8 = [v7 mutableCopy];

    v9 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
    [v8 setObject:v9 forKeyedSubscript:v18];

    v10 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivityName];
    if (v10)
    {
      v11 = v10;
      v12 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivityName];
      v13 = [v18 isEqualToString:v12];

      if ((v13 & 1) == 0)
      {
        v14 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivityName];
        [v8 removeObjectForKey:v14];
      }
    }

    v15 = +[AXSettings sharedInstance];
    [v15 setLiveRecognitionActivities:v8];

    v16 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationController];
    v17 = [v16 popViewControllerAnimated:1];
  }
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = &stru_25D420;
  }

  v12 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self activityNameTextField];

  if (v12 == v9)
  {
    v13 = [v9 text];
    v14 = [v13 stringByReplacingCharactersInRange:location withString:{length, v11}];

    v17 = 0;
    if ([v14 length])
    {
      v15 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self currentActivities];
      v16 = [v15 containsObject:v14];

      if (!v16)
      {
        v17 = 1;
      }
    }

    v18 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
    v19 = [v18 rightBarButtonItem];
    [v19 setEnabled:v17];
  }

  return 1;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v30.receiver = self;
  v30.super_class = VoiceOverLiveRecognitionCustomizeActivityController;
  v5 = [(VoiceOverLiveRecognitionCustomizeActivityController *)&v30 tableView:a3 cellForRowAtIndexPath:a4];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_24;
    }

    v13 = v5;
    v11 = [v13 specifier];
    v14 = PSIDKey;
    v15 = [v11 propertyForKey:PSIDKey];
    v16 = [v15 isEqualToString:@"DetectionModeScenes"];

    if (v16)
    {
      v12 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
      v17 = [v12 scenes];
    }

    else
    {
      v18 = [v11 propertyForKey:v14];
      v19 = [v18 isEqualToString:@"DetectionModePeople"];

      if (v19)
      {
        v12 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
        v17 = [v12 peopleDetection];
      }

      else
      {
        v20 = [v11 propertyForKey:v14];
        v21 = [v20 isEqualToString:@"DetectionModeDoors"];

        if (v21)
        {
          v12 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
          v17 = [v12 doorsDetection];
        }

        else
        {
          v22 = [v11 propertyForKey:v14];
          v23 = [v22 isEqualToString:@"DetectionModeFurniture"];

          if (v23)
          {
            v12 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
            v17 = [v12 furnitureDetection];
          }

          else
          {
            v24 = [v11 propertyForKey:v14];
            v25 = [v24 isEqualToString:@"DetectionModeText"];

            if (v25)
            {
              v12 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
              v17 = [v12 textDetection];
            }

            else
            {
              v26 = [v11 propertyForKey:v14];
              v27 = [v26 isEqualToString:@"DetectionModePointAndSpeak"];

              if (!v27)
              {
LABEL_22:

                goto LABEL_23;
              }

              v12 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
              v17 = [v12 pointAndSpeak];
            }
          }
        }
      }
    }

    if (v17)
    {
      v28 = 3;
    }

    else
    {
      v28 = 0;
    }

    [v13 setAccessoryType:v28];
LABEL_21:

    goto LABEL_22;
  }

  v6 = v5;
  v7 = [v6 textField];
  [v7 setDelegate:self];

  v8 = [v6 textField];
  v9 = [v8 text];
  v10 = [v9 length];

  if (!v10)
  {
    v11 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivityName];
    v12 = [v6 textField];
    [v12 setText:v11];
    goto LABEL_21;
  }

LABEL_23:

LABEL_24:

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v43.receiver = self;
  v43.super_class = VoiceOverLiveRecognitionCustomizeActivityController;
  v6 = a4;
  v7 = a3;
  [(VoiceOverLiveRecognitionCustomizeActivityController *)&v43 tableView:v7 didSelectRowAtIndexPath:v6];
  v42.receiver = self;
  v42.super_class = VoiceOverLiveRecognitionCustomizeActivityController;
  v8 = [(VoiceOverLiveRecognitionCustomizeActivityController *)&v42 tableView:v7 cellForRowAtIndexPath:v6];

  v9 = [v8 specifier];
  v10 = PSIDKey;
  v11 = [v9 propertyForKey:PSIDKey];
  v12 = [v11 isEqualToString:@"DetectionModeScenes"];

  if (v12)
  {
    v13 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
    v14 = [v13 rightBarButtonItem];
    [v14 setEnabled:1];

    v15 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
    LODWORD(v14) = [v15 scenes];

    v16 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
    [v16 setScenes:v14 ^ 1];
LABEL_13:

    [(VoiceOverLiveRecognitionCustomizeActivityController *)self reloadSpecifierID:@"DetectionModeGroup"];
    goto LABEL_14;
  }

  v17 = [v9 propertyForKey:v10];
  v18 = [v17 isEqualToString:@"DetectionModePeople"];

  if (v18)
  {
    v19 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
    v20 = [v19 rightBarButtonItem];
    [v20 setEnabled:1];

    v21 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
    LODWORD(v20) = [v21 peopleDetection];

    v16 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
    [v16 setPeopleDetection:v20 ^ 1];
    goto LABEL_13;
  }

  v22 = [v9 propertyForKey:v10];
  v23 = [v22 isEqualToString:@"DetectionModeDoors"];

  if (v23)
  {
    v24 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
    v25 = [v24 rightBarButtonItem];
    [v25 setEnabled:1];

    v26 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
    LODWORD(v25) = [v26 doorsDetection];

    v16 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
    [v16 setDoorsDetection:v25 ^ 1];
    goto LABEL_13;
  }

  v27 = [v9 propertyForKey:v10];
  v28 = [v27 isEqualToString:@"DetectionModeFurniture"];

  if (v28)
  {
    v29 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
    v30 = [v29 rightBarButtonItem];
    [v30 setEnabled:1];

    v31 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
    LODWORD(v30) = [v31 furnitureDetection];

    v16 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
    [v16 setFurnitureDetection:v30 ^ 1];
    goto LABEL_13;
  }

  v32 = [v9 propertyForKey:v10];
  v33 = [v32 isEqualToString:@"DetectionModeText"];

  if (v33)
  {
    v34 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
    v35 = [v34 rightBarButtonItem];
    [v35 setEnabled:1];

    v36 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
    LODWORD(v35) = [v36 textDetection];

    v16 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
    [v16 setTextDetection:v35 ^ 1];
    goto LABEL_13;
  }

  v37 = [v9 propertyForKey:v10];
  v38 = [v37 isEqualToString:@"DetectionModePointAndSpeak"];

  if (v38)
  {
    v39 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
    v40 = [v39 rightBarButtonItem];
    [v40 setEnabled:1];

    v41 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
    LODWORD(v40) = [v41 pointAndSpeak];

    v16 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
    [v16 setPointAndSpeak:v40 ^ 1];
    goto LABEL_13;
  }

LABEL_14:
}

- (void)setAutomaticFlashlight:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  v7 = [v6 rightBarButtonItem];
  [v7 setEnabled:1];

  v9 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v8 = [v5 BOOLValue];

  [v9 setAutomaticFlashlightEnabled:v8];
}

- (id)automaticFlashlightEnabled:(id)a3
{
  v3 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 automaticFlashlightEnabled]);

  return v4;
}

- (void)setScenesSpeechEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  v7 = [v6 rightBarButtonItem];
  [v7 setEnabled:1];

  v9 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v8 = [v5 BOOLValue];

  [v9 setSceneFeedbacksSpeech:v8];
}

- (id)scenesSpeechEnabled:(id)a3
{
  v3 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 sceneFeedbacksSpeech]);

  return v4;
}

- (void)setScenesBrailleEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  v7 = [v6 rightBarButtonItem];
  [v7 setEnabled:1];

  v9 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v8 = [v5 BOOLValue];

  [v9 setSceneFeedbacksBraille:v8];
}

- (id)scenesBrailleEnabled:(id)a3
{
  v3 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 sceneFeedbacksBraille]);

  return v4;
}

- (void)setPeopleSpeechEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  v7 = [v6 rightBarButtonItem];
  [v7 setEnabled:1];

  v9 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v8 = [v5 BOOLValue];

  [v9 setPeopleFeedbacksSpeech:v8];
}

- (id)peopleSpeechEnabled:(id)a3
{
  v3 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 peopleFeedbacksSpeech]);

  return v4;
}

- (void)setPeopleBrailleEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  v7 = [v6 rightBarButtonItem];
  [v7 setEnabled:1];

  v9 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v8 = [v5 BOOLValue];

  [v9 setPeopleFeedbacksBraille:v8];
}

- (id)peopleBrailleEnabled:(id)a3
{
  v3 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 peopleFeedbacksBraille]);

  return v4;
}

- (void)setPeopleSoundsEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  v7 = [v6 rightBarButtonItem];
  [v7 setEnabled:1];

  v9 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v8 = [v5 BOOLValue];

  [v9 setPeopleFeedbacksSounds:v8];
}

- (id)peopleSoundsEnabled:(id)a3
{
  v3 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 peopleFeedbacksSounds]);

  return v4;
}

- (void)setPeopleHapticsEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  v7 = [v6 rightBarButtonItem];
  [v7 setEnabled:1];

  v9 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v8 = [v5 BOOLValue];

  [v9 setPeopleFeedbacksHaptics:v8];
}

- (id)peopleHapticsEnabled:(id)a3
{
  v3 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 peopleFeedbacksHaptics]);

  return v4;
}

- (void)setDoorsSpeechEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  v7 = [v6 rightBarButtonItem];
  [v7 setEnabled:1];

  v9 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v8 = [v5 BOOLValue];

  [v9 setDoorsFeedbacksSpeech:v8];
}

- (id)doorsSpeechEnabled:(id)a3
{
  v3 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 doorsFeedbacksSpeech]);

  return v4;
}

- (void)setDoorsBrailleEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  v7 = [v6 rightBarButtonItem];
  [v7 setEnabled:1];

  v9 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v8 = [v5 BOOLValue];

  [v9 setDoorsFeedbacksBraille:v8];
}

- (id)doorsBrailleEnabled:(id)a3
{
  v3 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 doorsFeedbacksBraille]);

  return v4;
}

- (void)setDoorsSoundsEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  v7 = [v6 rightBarButtonItem];
  [v7 setEnabled:1];

  v9 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v8 = [v5 BOOLValue];

  [v9 setDoorsFeedbacksSounds:v8];
}

- (id)doorsSoundEnabled:(id)a3
{
  v3 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 doorsFeedbacksSounds]);

  return v4;
}

- (void)setDoorsHapticsEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  v7 = [v6 rightBarButtonItem];
  [v7 setEnabled:1];

  v9 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v8 = [v5 BOOLValue];

  [v9 setDoorsFeedbacksHaptics:v8];
}

- (id)doorsHapticsEnabled:(id)a3
{
  v3 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 doorsFeedbacksHaptics]);

  return v4;
}

- (void)setFurnitureSpeechEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  v7 = [v6 rightBarButtonItem];
  [v7 setEnabled:1];

  v9 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v8 = [v5 BOOLValue];

  [v9 setFurnitureFeedbacksSpeech:v8];
}

- (id)furnitureSpeechEnabled:(id)a3
{
  v3 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 furnitureFeedbacksSpeech]);

  return v4;
}

- (void)setFurnitureBrailleEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  v7 = [v6 rightBarButtonItem];
  [v7 setEnabled:1];

  v9 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v8 = [v5 BOOLValue];

  [v9 setFurnitureFeedbacksBraille:v8];
}

- (id)furnitureBrailleEnabled:(id)a3
{
  v3 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 furnitureFeedbacksBraille]);

  return v4;
}

- (void)setFurnitureSoundsEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  v7 = [v6 rightBarButtonItem];
  [v7 setEnabled:1];

  v9 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v8 = [v5 BOOLValue];

  [v9 setFurnitureFeedbacksSounds:v8];
}

- (id)furnitureSoundEnabled:(id)a3
{
  v3 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 furnitureFeedbacksSounds]);

  return v4;
}

- (void)setFurnitureHapticsEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  v7 = [v6 rightBarButtonItem];
  [v7 setEnabled:1];

  v9 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v8 = [v5 BOOLValue];

  [v9 setFurnitureFeedbacksHaptics:v8];
}

- (id)furnitureHapticsEnabled:(id)a3
{
  v3 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 furnitureFeedbacksHaptics]);

  return v4;
}

- (void)setTextSpeechEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  v7 = [v6 rightBarButtonItem];
  [v7 setEnabled:1];

  v9 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v8 = [v5 BOOLValue];

  [v9 setTextFeedbacksSpeech:v8];
}

- (id)textSpeechEnabled:(id)a3
{
  v3 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 textFeedbacksSpeech]);

  return v4;
}

- (void)setTextBrailleEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  v7 = [v6 rightBarButtonItem];
  [v7 setEnabled:1];

  v9 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v8 = [v5 BOOLValue];

  [v9 setTextFeedbacksBraille:v8];
}

- (id)textBrailleEnabled:(id)a3
{
  v3 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 textFeedbacksBraille]);

  return v4;
}

- (void)setPointAndSpeakSpeechEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  v7 = [v6 rightBarButtonItem];
  [v7 setEnabled:1];

  v9 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v8 = [v5 BOOLValue];

  [v9 setPointAndSpeakFeedbacksSpeech:v8];
}

- (id)pointAndSpeakSpeechEnabled:(id)a3
{
  v3 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 pointAndSpeakFeedbacksSpeech]);

  return v4;
}

- (void)setPointAndSpeakBrailleEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  v7 = [v6 rightBarButtonItem];
  [v7 setEnabled:1];

  v9 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v8 = [v5 BOOLValue];

  [v9 setPointAndSpeakFeedbacksBraille:v8];
}

- (id)pointAndSpeakBrailleEnabled:(id)a3
{
  v3 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 pointAndSpeakFeedbacksBraille]);

  return v4;
}

- (void)setPointAndSpeakSoundsEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  v7 = [v6 rightBarButtonItem];
  [v7 setEnabled:1];

  v9 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v8 = [v5 BOOLValue];

  [v9 setPointAndSpeakFeedbacksSounds:v8];
}

- (id)pointAndSpeakSoundsEnabled:(id)a3
{
  v3 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 pointAndSpeakFeedbacksSounds]);

  return v4;
}

- (void)setPointAndSpeakHapticsEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  v7 = [v6 rightBarButtonItem];
  [v7 setEnabled:1];

  v9 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v8 = [v5 BOOLValue];

  [v9 setPointAndSpeakFeedbacksHaptics:v8];
}

- (id)pointAndSpeakHapticsEnabled:(id)a3
{
  v3 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 pointAndSpeakFeedbacksHaptics]);

  return v4;
}

@end