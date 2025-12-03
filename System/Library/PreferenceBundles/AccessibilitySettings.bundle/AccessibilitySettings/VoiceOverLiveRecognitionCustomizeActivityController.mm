@interface VoiceOverLiveRecognitionCustomizeActivityController
- (BOOL)_isEditingExistingPhrase;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (UITextField)activityNameTextField;
- (id)automaticFlashlightEnabled:(id)enabled;
- (id)doorsBrailleEnabled:(id)enabled;
- (id)doorsHapticsEnabled:(id)enabled;
- (id)doorsSoundEnabled:(id)enabled;
- (id)doorsSpeechEnabled:(id)enabled;
- (id)furnitureBrailleEnabled:(id)enabled;
- (id)furnitureHapticsEnabled:(id)enabled;
- (id)furnitureSoundEnabled:(id)enabled;
- (id)furnitureSpeechEnabled:(id)enabled;
- (id)peopleBrailleEnabled:(id)enabled;
- (id)peopleHapticsEnabled:(id)enabled;
- (id)peopleSoundsEnabled:(id)enabled;
- (id)peopleSpeechEnabled:(id)enabled;
- (id)pointAndSpeakBrailleEnabled:(id)enabled;
- (id)pointAndSpeakHapticsEnabled:(id)enabled;
- (id)pointAndSpeakSoundsEnabled:(id)enabled;
- (id)pointAndSpeakSpeechEnabled:(id)enabled;
- (id)scenesBrailleEnabled:(id)enabled;
- (id)scenesSpeechEnabled:(id)enabled;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)textBrailleEnabled:(id)enabled;
- (id)textSpeechEnabled:(id)enabled;
- (void)_addDetectorPreferencesSpecifiers:(id)specifiers;
- (void)_addDetectorTypeSpecifiers:(id)specifiers;
- (void)_saveButtonTapped:(id)tapped;
- (void)setAutomaticFlashlight:(id)flashlight specifier:(id)specifier;
- (void)setDoorsBrailleEnabled:(id)enabled specifier:(id)specifier;
- (void)setDoorsHapticsEnabled:(id)enabled specifier:(id)specifier;
- (void)setDoorsSoundsEnabled:(id)enabled specifier:(id)specifier;
- (void)setDoorsSpeechEnabled:(id)enabled specifier:(id)specifier;
- (void)setFurnitureBrailleEnabled:(id)enabled specifier:(id)specifier;
- (void)setFurnitureHapticsEnabled:(id)enabled specifier:(id)specifier;
- (void)setFurnitureSoundsEnabled:(id)enabled specifier:(id)specifier;
- (void)setFurnitureSpeechEnabled:(id)enabled specifier:(id)specifier;
- (void)setPeopleBrailleEnabled:(id)enabled specifier:(id)specifier;
- (void)setPeopleHapticsEnabled:(id)enabled specifier:(id)specifier;
- (void)setPeopleSoundsEnabled:(id)enabled specifier:(id)specifier;
- (void)setPeopleSpeechEnabled:(id)enabled specifier:(id)specifier;
- (void)setPointAndSpeakBrailleEnabled:(id)enabled specifier:(id)specifier;
- (void)setPointAndSpeakHapticsEnabled:(id)enabled specifier:(id)specifier;
- (void)setPointAndSpeakSoundsEnabled:(id)enabled specifier:(id)specifier;
- (void)setPointAndSpeakSpeechEnabled:(id)enabled specifier:(id)specifier;
- (void)setScenesBrailleEnabled:(id)enabled specifier:(id)specifier;
- (void)setScenesSpeechEnabled:(id)enabled specifier:(id)specifier;
- (void)setTextBrailleEnabled:(id)enabled specifier:(id)specifier;
- (void)setTextSpeechEnabled:(id)enabled specifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation VoiceOverLiveRecognitionCustomizeActivityController

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = VoiceOverLiveRecognitionCustomizeActivityController;
  [(VoiceOverLiveRecognitionCustomizeActivityController *)&v8 viewDidLoad];
  v3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:3 target:self action:"_saveButtonTapped:"];
  navigationItem = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v3];

  navigationItem2 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  rightBarButtonItem = [navigationItem2 rightBarButtonItem];
  [rightBarButtonItem setEnabled:0];

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

- (void)_addDetectorTypeSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v3 = settingsLocString(@"VO_LIVE_RECOGNITION_ACTIVITY_DETECTORS", @"VoiceOverSettings");
  v4 = [PSSpecifier groupSpecifierWithName:v3];

  v5 = PSIDKey;
  [v4 setProperty:@"DetectionModeGroup" forKey:PSIDKey];
  v6 = settingsLocString(@"VO_LIVE_RECOGNITION_ACTIVITY_DETECTORS_FOOTERS", @"VoiceOverSettings");
  [v4 setProperty:v6 forKey:PSFooterTextGroupKey];

  [specifiersCopy addObject:v4];
  v7 = AXParameterizedLocalizedString();
  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:0 set:0 get:0 detail:0 cell:3 edit:0];

  [v8 setProperty:@"DetectionModeScenes" forKey:v5];
  [specifiersCopy addObject:v8];
  if (AXDeviceSupportsDetectionMode())
  {
    v9 = AXParameterizedLocalizedString();
    v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v10 setProperty:@"DetectionModePeople" forKey:v5];
    [specifiersCopy addObject:v10];
    v11 = AXParameterizedLocalizedString();
    v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v12 setProperty:@"DetectionModeDoors" forKey:v5];
    [specifiersCopy addObject:v12];
    v13 = AXParameterizedLocalizedString();
    v8 = [PSSpecifier preferenceSpecifierNamed:v13 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v8 setProperty:@"DetectionModeFurniture" forKey:v5];
    [specifiersCopy addObject:v8];
  }

  v14 = AXParameterizedLocalizedString();
  v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:0 set:0 get:0 detail:0 cell:3 edit:0];

  [v15 setProperty:@"DetectionModeText" forKey:v5];
  [specifiersCopy addObject:v15];
  v16 = AXParameterizedLocalizedString();
  v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:0 set:0 get:0 detail:0 cell:3 edit:0];

  [v17 setProperty:@"DetectionModePointAndSpeak" forKey:v5];
  [specifiersCopy addObject:v17];
}

- (void)_addDetectorPreferencesSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v4 = +[PSSpecifier emptyGroupSpecifier];
  [specifiersCopy addObject:v4];
  v5 = AXParameterizedLocalizedString();
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:"setAutomaticFlashlight:specifier:" get:"automaticFlashlightEnabled:" detail:0 cell:6 edit:0];

  v7 = PSIDKey;
  [v6 setProperty:@"AutomaticFlashlight" forKey:PSIDKey];
  [specifiersCopy addObject:v6];
  v8 = AXParameterizedLocalizedString();
  v9 = [PSSpecifier groupSpecifierWithName:v8];

  [specifiersCopy addObject:v9];
  v10 = AXParameterizedLocalizedString();
  v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:"setScenesSpeechEnabled:specifier:" get:"scenesSpeechEnabled:" detail:0 cell:6 edit:0];

  [v11 setProperty:@"ScenesSpeech" forKey:v7];
  [specifiersCopy addObject:v11];
  v12 = AXParameterizedLocalizedString();
  v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:"setScenesBrailleEnabled:specifier:" get:"scenesBrailleEnabled:" detail:0 cell:6 edit:0];

  [v13 setProperty:@"ScenesBraille" forKey:v7];
  [specifiersCopy addObject:v13];
  if (AXDeviceSupportsDetectionMode())
  {
    v14 = AXParameterizedLocalizedString();
    v15 = [PSSpecifier groupSpecifierWithName:v14];

    [specifiersCopy addObject:v15];
    v16 = AXParameterizedLocalizedString();
    v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:"setPeopleSpeechEnabled:specifier:" get:"peopleSpeechEnabled:" detail:0 cell:6 edit:0];

    [v17 setProperty:@"PeopleSpeech" forKey:v7];
    [specifiersCopy addObject:v17];
    v18 = AXParameterizedLocalizedString();
    v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:"setPeopleBrailleEnabled:specifier:" get:"peopleBrailleEnabled:" detail:0 cell:6 edit:0];

    [v19 setProperty:@"PeopleBraille" forKey:v7];
    [specifiersCopy addObject:v19];
    v20 = AXParameterizedLocalizedString();
    v21 = [PSSpecifier preferenceSpecifierNamed:v20 target:self set:"setPeopleSoundsEnabled:specifier:" get:"peopleSoundsEnabled:" detail:0 cell:6 edit:0];

    [v21 setProperty:@"PeopleSounds" forKey:v7];
    [specifiersCopy addObject:v21];
    v22 = AXParameterizedLocalizedString();
    v23 = [PSSpecifier preferenceSpecifierNamed:v22 target:self set:"setPeopleHapticsEnabled:specifier:" get:"peopleHapticsEnabled:" detail:0 cell:6 edit:0];

    [v23 setProperty:@"PeopleHaptics" forKey:v7];
    [specifiersCopy addObject:v23];
    v24 = AXParameterizedLocalizedString();
    v25 = [PSSpecifier groupSpecifierWithName:v24];

    [specifiersCopy addObject:v25];
    v26 = AXParameterizedLocalizedString();
    v27 = [PSSpecifier preferenceSpecifierNamed:v26 target:self set:"setDoorsSpeechEnabled:specifier:" get:"doorsSpeechEnabled:" detail:0 cell:6 edit:0];

    [v27 setProperty:@"DoorsSpeech" forKey:v7];
    [specifiersCopy addObject:v27];
    v28 = AXParameterizedLocalizedString();
    v29 = [PSSpecifier preferenceSpecifierNamed:v28 target:self set:"setDoorsBrailleEnabled:specifier:" get:"doorsBrailleEnabled:" detail:0 cell:6 edit:0];

    [v29 setProperty:@"DoorsBraille" forKey:v7];
    [specifiersCopy addObject:v29];
    v30 = AXParameterizedLocalizedString();
    v31 = [PSSpecifier preferenceSpecifierNamed:v30 target:self set:"setDoorsSoundsEnabled:specifier:" get:"doorsSoundEnabled:" detail:0 cell:6 edit:0];

    [v31 setProperty:@"DoorsSounds" forKey:v7];
    [specifiersCopy addObject:v31];
    v32 = AXParameterizedLocalizedString();
    v33 = [PSSpecifier preferenceSpecifierNamed:v32 target:self set:"setDoorsHapticsEnabled:specifier:" get:"doorsHapticsEnabled:" detail:0 cell:6 edit:0];

    [v33 setProperty:@"DoorsHaptics" forKey:v7];
    [specifiersCopy addObject:v33];
    v34 = AXParameterizedLocalizedString();
    v9 = [PSSpecifier groupSpecifierWithName:v34];

    [specifiersCopy addObject:v9];
    v35 = AXParameterizedLocalizedString();
    v36 = [PSSpecifier preferenceSpecifierNamed:v35 target:self set:"setFurnitureSpeechEnabled:specifier:" get:"furnitureSpeechEnabled:" detail:0 cell:6 edit:0];

    [v36 setProperty:@"FurnitureSpeech" forKey:v7];
    [specifiersCopy addObject:v36];
    v37 = AXParameterizedLocalizedString();
    v38 = [PSSpecifier preferenceSpecifierNamed:v37 target:self set:"setFurnitureBrailleEnabled:specifier:" get:"furnitureBrailleEnabled:" detail:0 cell:6 edit:0];

    [v38 setProperty:@"FurnitureBraille" forKey:v7];
    [specifiersCopy addObject:v38];
    v39 = AXParameterizedLocalizedString();
    v40 = [PSSpecifier preferenceSpecifierNamed:v39 target:self set:"setFurnitureSoundsEnabled:specifier:" get:"furnitureSoundEnabled:" detail:0 cell:6 edit:0];

    [v40 setProperty:@"FurnitureSounds" forKey:v7];
    [specifiersCopy addObject:v40];
    v41 = AXParameterizedLocalizedString();
    v13 = [PSSpecifier preferenceSpecifierNamed:v41 target:self set:"setFurnitureHapticsEnabled:specifier:" get:"furnitureHapticsEnabled:" detail:0 cell:6 edit:0];

    [v13 setProperty:@"FurnitureHaptics" forKey:v7];
    [specifiersCopy addObject:v13];
  }

  v42 = AXParameterizedLocalizedString();
  v43 = [PSSpecifier groupSpecifierWithName:v42];

  [specifiersCopy addObject:v43];
  v44 = AXParameterizedLocalizedString();
  v45 = [PSSpecifier preferenceSpecifierNamed:v44 target:self set:"setTextSpeechEnabled:specifier:" get:"textSpeechEnabled:" detail:0 cell:6 edit:0];

  [v45 setProperty:@"TextSpeech" forKey:v7];
  [specifiersCopy addObject:v45];
  v46 = AXParameterizedLocalizedString();
  v47 = [PSSpecifier preferenceSpecifierNamed:v46 target:self set:"setTextBrailleEnabled:specifier:" get:"textBrailleEnabled:" detail:0 cell:6 edit:0];

  [v47 setProperty:@"TextBraille" forKey:v7];
  [specifiersCopy addObject:v47];
  v48 = AXParameterizedLocalizedString();
  v49 = [PSSpecifier groupSpecifierWithName:v48];

  [specifiersCopy addObject:v49];
  v50 = AXParameterizedLocalizedString();
  v51 = [PSSpecifier preferenceSpecifierNamed:v50 target:self set:"setPointAndSpeakSpeechEnabled:specifier:" get:"pointAndSpeakSpeechEnabled:" detail:0 cell:6 edit:0];

  [v51 setProperty:@"PointSpeakSpeech" forKey:v7];
  [specifiersCopy addObject:v51];
  v52 = AXParameterizedLocalizedString();
  v53 = [PSSpecifier preferenceSpecifierNamed:v52 target:self set:"setPointAndSpeakBrailleEnabled:specifier:" get:"pointAndSpeakBrailleEnabled:" detail:0 cell:6 edit:0];

  [v53 setProperty:@"PointSpeakBraille" forKey:v7];
  [specifiersCopy addObject:v53];
  v54 = AXParameterizedLocalizedString();
  v55 = [PSSpecifier preferenceSpecifierNamed:v54 target:self set:"setPointAndSpeakSoundsEnabled:specifier:" get:"pointAndSpeakSoundsEnabled:" detail:0 cell:6 edit:0];

  [v55 setProperty:@"PointSpeakSounds" forKey:v7];
  [specifiersCopy addObject:v55];
  v56 = AXParameterizedLocalizedString();
  v57 = [PSSpecifier preferenceSpecifierNamed:v56 target:self set:"setPointAndSpeakHapticsEnabled:specifier:" get:"pointAndSpeakHapticsEnabled:" detail:0 cell:6 edit:0];

  [v57 setProperty:@"PointSpeakHaptics" forKey:v7];
  [specifiersCopy addObject:v57];
}

- (BOOL)_isEditingExistingPhrase
{
  editingActivityName = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivityName];
  v3 = editingActivityName != 0;

  return v3;
}

- (UITextField)activityNameTextField
{
  v2 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self cachedCellForSpecifierID:@"ActivityName"];
  editableTextField = [v2 editableTextField];

  return editableTextField;
}

- (void)_saveButtonTapped:(id)tapped
{
  activityNameTextField = [(VoiceOverLiveRecognitionCustomizeActivityController *)self activityNameTextField];
  text = [activityNameTextField text];

  if ([text length])
  {
    editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
    [editingActivity setName:text];

    v6 = +[AXSettings sharedInstance];
    liveRecognitionActivities = [v6 liveRecognitionActivities];
    v8 = [liveRecognitionActivities mutableCopy];

    editingActivity2 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
    [v8 setObject:editingActivity2 forKeyedSubscript:text];

    editingActivityName = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivityName];
    if (editingActivityName)
    {
      v11 = editingActivityName;
      editingActivityName2 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivityName];
      v13 = [text isEqualToString:editingActivityName2];

      if ((v13 & 1) == 0)
      {
        editingActivityName3 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivityName];
        [v8 removeObjectForKey:editingActivityName3];
      }
    }

    v15 = +[AXSettings sharedInstance];
    [v15 setLiveRecognitionActivities:v8];

    navigationController = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationController];
    v17 = [navigationController popViewControllerAnimated:1];
  }
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  if (stringCopy)
  {
    v11 = stringCopy;
  }

  else
  {
    v11 = &stru_25D420;
  }

  activityNameTextField = [(VoiceOverLiveRecognitionCustomizeActivityController *)self activityNameTextField];

  if (activityNameTextField == fieldCopy)
  {
    text = [fieldCopy text];
    v14 = [text stringByReplacingCharactersInRange:location withString:{length, v11}];

    v17 = 0;
    if ([v14 length])
    {
      currentActivities = [(VoiceOverLiveRecognitionCustomizeActivityController *)self currentActivities];
      v16 = [currentActivities containsObject:v14];

      if (!v16)
      {
        v17 = 1;
      }
    }

    navigationItem = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setEnabled:v17];
  }

  return 1;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v30.receiver = self;
  v30.super_class = VoiceOverLiveRecognitionCustomizeActivityController;
  v5 = [(VoiceOverLiveRecognitionCustomizeActivityController *)&v30 tableView:view cellForRowAtIndexPath:path];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_24;
    }

    v13 = v5;
    specifier = [v13 specifier];
    v14 = PSIDKey;
    v15 = [specifier propertyForKey:PSIDKey];
    v16 = [v15 isEqualToString:@"DetectionModeScenes"];

    if (v16)
    {
      editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
      scenes = [editingActivity scenes];
    }

    else
    {
      v18 = [specifier propertyForKey:v14];
      v19 = [v18 isEqualToString:@"DetectionModePeople"];

      if (v19)
      {
        editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
        scenes = [editingActivity peopleDetection];
      }

      else
      {
        v20 = [specifier propertyForKey:v14];
        v21 = [v20 isEqualToString:@"DetectionModeDoors"];

        if (v21)
        {
          editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
          scenes = [editingActivity doorsDetection];
        }

        else
        {
          v22 = [specifier propertyForKey:v14];
          v23 = [v22 isEqualToString:@"DetectionModeFurniture"];

          if (v23)
          {
            editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
            scenes = [editingActivity furnitureDetection];
          }

          else
          {
            v24 = [specifier propertyForKey:v14];
            v25 = [v24 isEqualToString:@"DetectionModeText"];

            if (v25)
            {
              editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
              scenes = [editingActivity textDetection];
            }

            else
            {
              v26 = [specifier propertyForKey:v14];
              v27 = [v26 isEqualToString:@"DetectionModePointAndSpeak"];

              if (!v27)
              {
LABEL_22:

                goto LABEL_23;
              }

              editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
              scenes = [editingActivity pointAndSpeak];
            }
          }
        }
      }
    }

    if (scenes)
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
  textField = [v6 textField];
  [textField setDelegate:self];

  textField2 = [v6 textField];
  text = [textField2 text];
  v10 = [text length];

  if (!v10)
  {
    specifier = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivityName];
    editingActivity = [v6 textField];
    [editingActivity setText:specifier];
    goto LABEL_21;
  }

LABEL_23:

LABEL_24:

  return v5;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v43.receiver = self;
  v43.super_class = VoiceOverLiveRecognitionCustomizeActivityController;
  pathCopy = path;
  viewCopy = view;
  [(VoiceOverLiveRecognitionCustomizeActivityController *)&v43 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v42.receiver = self;
  v42.super_class = VoiceOverLiveRecognitionCustomizeActivityController;
  v8 = [(VoiceOverLiveRecognitionCustomizeActivityController *)&v42 tableView:viewCopy cellForRowAtIndexPath:pathCopy];

  specifier = [v8 specifier];
  v10 = PSIDKey;
  v11 = [specifier propertyForKey:PSIDKey];
  v12 = [v11 isEqualToString:@"DetectionModeScenes"];

  if (v12)
  {
    navigationItem = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setEnabled:1];

    editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
    LODWORD(rightBarButtonItem) = [editingActivity scenes];

    editingActivity2 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
    [editingActivity2 setScenes:rightBarButtonItem ^ 1];
LABEL_13:

    [(VoiceOverLiveRecognitionCustomizeActivityController *)self reloadSpecifierID:@"DetectionModeGroup"];
    goto LABEL_14;
  }

  v17 = [specifier propertyForKey:v10];
  v18 = [v17 isEqualToString:@"DetectionModePeople"];

  if (v18)
  {
    navigationItem2 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
    rightBarButtonItem2 = [navigationItem2 rightBarButtonItem];
    [rightBarButtonItem2 setEnabled:1];

    editingActivity3 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
    LODWORD(rightBarButtonItem2) = [editingActivity3 peopleDetection];

    editingActivity2 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
    [editingActivity2 setPeopleDetection:rightBarButtonItem2 ^ 1];
    goto LABEL_13;
  }

  v22 = [specifier propertyForKey:v10];
  v23 = [v22 isEqualToString:@"DetectionModeDoors"];

  if (v23)
  {
    navigationItem3 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
    rightBarButtonItem3 = [navigationItem3 rightBarButtonItem];
    [rightBarButtonItem3 setEnabled:1];

    editingActivity4 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
    LODWORD(rightBarButtonItem3) = [editingActivity4 doorsDetection];

    editingActivity2 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
    [editingActivity2 setDoorsDetection:rightBarButtonItem3 ^ 1];
    goto LABEL_13;
  }

  v27 = [specifier propertyForKey:v10];
  v28 = [v27 isEqualToString:@"DetectionModeFurniture"];

  if (v28)
  {
    navigationItem4 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
    rightBarButtonItem4 = [navigationItem4 rightBarButtonItem];
    [rightBarButtonItem4 setEnabled:1];

    editingActivity5 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
    LODWORD(rightBarButtonItem4) = [editingActivity5 furnitureDetection];

    editingActivity2 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
    [editingActivity2 setFurnitureDetection:rightBarButtonItem4 ^ 1];
    goto LABEL_13;
  }

  v32 = [specifier propertyForKey:v10];
  v33 = [v32 isEqualToString:@"DetectionModeText"];

  if (v33)
  {
    navigationItem5 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
    rightBarButtonItem5 = [navigationItem5 rightBarButtonItem];
    [rightBarButtonItem5 setEnabled:1];

    editingActivity6 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
    LODWORD(rightBarButtonItem5) = [editingActivity6 textDetection];

    editingActivity2 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
    [editingActivity2 setTextDetection:rightBarButtonItem5 ^ 1];
    goto LABEL_13;
  }

  v37 = [specifier propertyForKey:v10];
  v38 = [v37 isEqualToString:@"DetectionModePointAndSpeak"];

  if (v38)
  {
    navigationItem6 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
    rightBarButtonItem6 = [navigationItem6 rightBarButtonItem];
    [rightBarButtonItem6 setEnabled:1];

    editingActivity7 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
    LODWORD(rightBarButtonItem6) = [editingActivity7 pointAndSpeak];

    editingActivity2 = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
    [editingActivity2 setPointAndSpeak:rightBarButtonItem6 ^ 1];
    goto LABEL_13;
  }

LABEL_14:
}

- (void)setAutomaticFlashlight:(id)flashlight specifier:(id)specifier
{
  flashlightCopy = flashlight;
  navigationItem = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];

  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  bOOLValue = [flashlightCopy BOOLValue];

  [editingActivity setAutomaticFlashlightEnabled:bOOLValue];
}

- (id)automaticFlashlightEnabled:(id)enabled
{
  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [editingActivity automaticFlashlightEnabled]);

  return v4;
}

- (void)setScenesSpeechEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  navigationItem = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];

  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  bOOLValue = [enabledCopy BOOLValue];

  [editingActivity setSceneFeedbacksSpeech:bOOLValue];
}

- (id)scenesSpeechEnabled:(id)enabled
{
  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [editingActivity sceneFeedbacksSpeech]);

  return v4;
}

- (void)setScenesBrailleEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  navigationItem = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];

  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  bOOLValue = [enabledCopy BOOLValue];

  [editingActivity setSceneFeedbacksBraille:bOOLValue];
}

- (id)scenesBrailleEnabled:(id)enabled
{
  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [editingActivity sceneFeedbacksBraille]);

  return v4;
}

- (void)setPeopleSpeechEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  navigationItem = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];

  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  bOOLValue = [enabledCopy BOOLValue];

  [editingActivity setPeopleFeedbacksSpeech:bOOLValue];
}

- (id)peopleSpeechEnabled:(id)enabled
{
  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [editingActivity peopleFeedbacksSpeech]);

  return v4;
}

- (void)setPeopleBrailleEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  navigationItem = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];

  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  bOOLValue = [enabledCopy BOOLValue];

  [editingActivity setPeopleFeedbacksBraille:bOOLValue];
}

- (id)peopleBrailleEnabled:(id)enabled
{
  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [editingActivity peopleFeedbacksBraille]);

  return v4;
}

- (void)setPeopleSoundsEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  navigationItem = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];

  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  bOOLValue = [enabledCopy BOOLValue];

  [editingActivity setPeopleFeedbacksSounds:bOOLValue];
}

- (id)peopleSoundsEnabled:(id)enabled
{
  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [editingActivity peopleFeedbacksSounds]);

  return v4;
}

- (void)setPeopleHapticsEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  navigationItem = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];

  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  bOOLValue = [enabledCopy BOOLValue];

  [editingActivity setPeopleFeedbacksHaptics:bOOLValue];
}

- (id)peopleHapticsEnabled:(id)enabled
{
  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [editingActivity peopleFeedbacksHaptics]);

  return v4;
}

- (void)setDoorsSpeechEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  navigationItem = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];

  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  bOOLValue = [enabledCopy BOOLValue];

  [editingActivity setDoorsFeedbacksSpeech:bOOLValue];
}

- (id)doorsSpeechEnabled:(id)enabled
{
  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [editingActivity doorsFeedbacksSpeech]);

  return v4;
}

- (void)setDoorsBrailleEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  navigationItem = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];

  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  bOOLValue = [enabledCopy BOOLValue];

  [editingActivity setDoorsFeedbacksBraille:bOOLValue];
}

- (id)doorsBrailleEnabled:(id)enabled
{
  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [editingActivity doorsFeedbacksBraille]);

  return v4;
}

- (void)setDoorsSoundsEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  navigationItem = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];

  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  bOOLValue = [enabledCopy BOOLValue];

  [editingActivity setDoorsFeedbacksSounds:bOOLValue];
}

- (id)doorsSoundEnabled:(id)enabled
{
  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [editingActivity doorsFeedbacksSounds]);

  return v4;
}

- (void)setDoorsHapticsEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  navigationItem = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];

  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  bOOLValue = [enabledCopy BOOLValue];

  [editingActivity setDoorsFeedbacksHaptics:bOOLValue];
}

- (id)doorsHapticsEnabled:(id)enabled
{
  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [editingActivity doorsFeedbacksHaptics]);

  return v4;
}

- (void)setFurnitureSpeechEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  navigationItem = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];

  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  bOOLValue = [enabledCopy BOOLValue];

  [editingActivity setFurnitureFeedbacksSpeech:bOOLValue];
}

- (id)furnitureSpeechEnabled:(id)enabled
{
  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [editingActivity furnitureFeedbacksSpeech]);

  return v4;
}

- (void)setFurnitureBrailleEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  navigationItem = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];

  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  bOOLValue = [enabledCopy BOOLValue];

  [editingActivity setFurnitureFeedbacksBraille:bOOLValue];
}

- (id)furnitureBrailleEnabled:(id)enabled
{
  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [editingActivity furnitureFeedbacksBraille]);

  return v4;
}

- (void)setFurnitureSoundsEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  navigationItem = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];

  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  bOOLValue = [enabledCopy BOOLValue];

  [editingActivity setFurnitureFeedbacksSounds:bOOLValue];
}

- (id)furnitureSoundEnabled:(id)enabled
{
  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [editingActivity furnitureFeedbacksSounds]);

  return v4;
}

- (void)setFurnitureHapticsEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  navigationItem = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];

  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  bOOLValue = [enabledCopy BOOLValue];

  [editingActivity setFurnitureFeedbacksHaptics:bOOLValue];
}

- (id)furnitureHapticsEnabled:(id)enabled
{
  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [editingActivity furnitureFeedbacksHaptics]);

  return v4;
}

- (void)setTextSpeechEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  navigationItem = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];

  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  bOOLValue = [enabledCopy BOOLValue];

  [editingActivity setTextFeedbacksSpeech:bOOLValue];
}

- (id)textSpeechEnabled:(id)enabled
{
  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [editingActivity textFeedbacksSpeech]);

  return v4;
}

- (void)setTextBrailleEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  navigationItem = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];

  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  bOOLValue = [enabledCopy BOOLValue];

  [editingActivity setTextFeedbacksBraille:bOOLValue];
}

- (id)textBrailleEnabled:(id)enabled
{
  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [editingActivity textFeedbacksBraille]);

  return v4;
}

- (void)setPointAndSpeakSpeechEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  navigationItem = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];

  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  bOOLValue = [enabledCopy BOOLValue];

  [editingActivity setPointAndSpeakFeedbacksSpeech:bOOLValue];
}

- (id)pointAndSpeakSpeechEnabled:(id)enabled
{
  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [editingActivity pointAndSpeakFeedbacksSpeech]);

  return v4;
}

- (void)setPointAndSpeakBrailleEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  navigationItem = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];

  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  bOOLValue = [enabledCopy BOOLValue];

  [editingActivity setPointAndSpeakFeedbacksBraille:bOOLValue];
}

- (id)pointAndSpeakBrailleEnabled:(id)enabled
{
  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [editingActivity pointAndSpeakFeedbacksBraille]);

  return v4;
}

- (void)setPointAndSpeakSoundsEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  navigationItem = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];

  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  bOOLValue = [enabledCopy BOOLValue];

  [editingActivity setPointAndSpeakFeedbacksSounds:bOOLValue];
}

- (id)pointAndSpeakSoundsEnabled:(id)enabled
{
  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [editingActivity pointAndSpeakFeedbacksSounds]);

  return v4;
}

- (void)setPointAndSpeakHapticsEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  navigationItem = [(VoiceOverLiveRecognitionCustomizeActivityController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];

  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  bOOLValue = [enabledCopy BOOLValue];

  [editingActivity setPointAndSpeakFeedbacksHaptics:bOOLValue];
}

- (id)pointAndSpeakHapticsEnabled:(id)enabled
{
  editingActivity = [(VoiceOverLiveRecognitionCustomizeActivityController *)self editingActivity];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [editingActivity pointAndSpeakFeedbacksHaptics]);

  return v4;
}

@end