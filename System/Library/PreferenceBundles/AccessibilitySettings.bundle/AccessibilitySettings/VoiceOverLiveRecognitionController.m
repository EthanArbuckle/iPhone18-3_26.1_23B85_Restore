@interface VoiceOverLiveRecognitionController
- (VoiceOverLiveRecognitionController)init;
- (id)automaticFlashlightEnabled:(id)a3;
- (id)chatGPTEnabled:(id)a3;
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
- (id)textBrailleEnabled:(id)a3;
- (id)textSpeechEnabled:(id)a3;
- (void)_showLiveRecognitionActivitiesViewController:(id)a3;
- (void)_showLiveRecognitionRotorViewController:(id)a3;
- (void)setAutomaticFlashlight:(id)a3 specifier:(id)a4;
- (void)setChatGPT:(id)a3 specifier:(id)a4;
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
- (void)updateFeedbacks:(id)a3 withType:(int64_t)a4 addFeedback:(BOOL)a5;
@end

@implementation VoiceOverLiveRecognitionController

- (VoiceOverLiveRecognitionController)init
{
  v7.receiver = self;
  v7.super_class = VoiceOverLiveRecognitionController;
  v2 = [(VoiceOverLiveRecognitionController *)&v7 init];
  if (v2)
  {
    v3 = settingsLocString(@"VO_REAL_WORLD_DETECTION", @"VoiceOverSettings");
    v4 = [(VoiceOverLiveRecognitionController *)v2 navigationItem];
    [v4 setTitle:v3];

    v5 = v2;
  }

  return v2;
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v69 = OBJC_IVAR___PSListController__specifiers;
    v4 = +[NSMutableArray array];
    v5 = settingsLocString(@"VO_LIVE_RECOGNITION_ROTOR", @"VoiceOverSettings");
    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v6 setButtonAction:"_showLiveRecognitionRotorViewController:"];
    v7 = PSIDKey;
    [v6 setProperty:@"LiveRecognitionRotor" forKey:PSIDKey];
    [v4 addObject:v6];
    v8 = settingsLocString(@"VO_LIVE_RECOGNITION_ACTIVITIES", @"VoiceOverSettings");
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v9 setButtonAction:"_showLiveRecognitionActivitiesViewController:"];
    [v9 setProperty:@"LiveRecognitionActivities" forKey:v7];
    v68 = v9;
    [v4 addObject:v9];
    v10 = +[PSSpecifier emptyGroupSpecifier];
    v11 = +[PSSpecifier emptyGroupSpecifier];
    v12 = +[PSSpecifier emptyGroupSpecifier];

    v13 = AXParameterizedLocalizedString();
    [v12 setProperty:v13 forKey:PSFooterTextGroupKey];

    [v4 addObject:v12];
    v14 = AXParameterizedLocalizedString();
    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:"setAutomaticFlashlight:specifier:" get:"automaticFlashlightEnabled:" detail:0 cell:6 edit:0];

    [v15 setProperty:@"AutomaticFlashlight" forKey:v7];
    [v4 addObject:v15];
    v16 = AXParameterizedLocalizedString();
    v17 = [PSSpecifier groupSpecifierWithName:v16];

    [v4 addObject:v17];
    v18 = AXParameterizedLocalizedString();
    v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:"setScenesSpeechEnabled:specifier:" get:"scenesSpeechEnabled:" detail:0 cell:6 edit:0];

    [v19 setProperty:@"ScenesSpeech" forKey:v7];
    [v4 addObject:v19];
    v20 = AXParameterizedLocalizedString();
    v21 = [PSSpecifier preferenceSpecifierNamed:v20 target:self set:"setScenesBrailleEnabled:specifier:" get:"scenesBrailleEnabled:" detail:0 cell:6 edit:0];

    [v21 setProperty:@"ScenesBraille" forKey:v7];
    [v4 addObject:v21];
    if (AXDeviceSupportsDetectionMode())
    {
      v22 = AXParameterizedLocalizedString();
      v23 = [PSSpecifier groupSpecifierWithName:v22];

      [v4 addObject:v23];
      v24 = AXParameterizedLocalizedString();
      v25 = [PSSpecifier preferenceSpecifierNamed:v24 target:self set:"setPeopleSpeechEnabled:specifier:" get:"peopleSpeechEnabled:" detail:0 cell:6 edit:0];

      [v25 setProperty:@"PeopleSpeech" forKey:v7];
      [v4 addObject:v25];
      v26 = AXParameterizedLocalizedString();
      v27 = [PSSpecifier preferenceSpecifierNamed:v26 target:self set:"setPeopleBrailleEnabled:specifier:" get:"peopleBrailleEnabled:" detail:0 cell:6 edit:0];

      [v27 setProperty:@"PeopleBraille" forKey:v7];
      [v4 addObject:v27];
      v28 = AXParameterizedLocalizedString();
      v29 = [PSSpecifier preferenceSpecifierNamed:v28 target:self set:"setPeopleSoundsEnabled:specifier:" get:"peopleSoundsEnabled:" detail:0 cell:6 edit:0];

      [v29 setProperty:@"PeopleSounds" forKey:v7];
      [v4 addObject:v29];
      v30 = AXParameterizedLocalizedString();
      v31 = [PSSpecifier preferenceSpecifierNamed:v30 target:self set:"setPeopleHapticsEnabled:specifier:" get:"peopleHapticsEnabled:" detail:0 cell:6 edit:0];

      [v31 setProperty:@"PeopleHaptics" forKey:v7];
      [v4 addObject:v31];
      v32 = AXParameterizedLocalizedString();
      v33 = [PSSpecifier groupSpecifierWithName:v32];

      [v4 addObject:v33];
      v34 = AXParameterizedLocalizedString();
      v35 = [PSSpecifier preferenceSpecifierNamed:v34 target:self set:"setDoorsSpeechEnabled:specifier:" get:"doorsSpeechEnabled:" detail:0 cell:6 edit:0];

      [v35 setProperty:@"DoorsSpeech" forKey:v7];
      [v4 addObject:v35];
      v36 = AXParameterizedLocalizedString();
      v37 = [PSSpecifier preferenceSpecifierNamed:v36 target:self set:"setDoorsBrailleEnabled:specifier:" get:"doorsBrailleEnabled:" detail:0 cell:6 edit:0];

      [v37 setProperty:@"DoorsBraille" forKey:v7];
      [v4 addObject:v37];
      v38 = AXParameterizedLocalizedString();
      v39 = [PSSpecifier preferenceSpecifierNamed:v38 target:self set:"setDoorsSoundsEnabled:specifier:" get:"doorsSoundEnabled:" detail:0 cell:6 edit:0];

      [v39 setProperty:@"DoorsSounds" forKey:v7];
      [v4 addObject:v39];
      v40 = AXParameterizedLocalizedString();
      v41 = [PSSpecifier preferenceSpecifierNamed:v40 target:self set:"setDoorsHapticsEnabled:specifier:" get:"doorsHapticsEnabled:" detail:0 cell:6 edit:0];

      [v41 setProperty:@"DoorsHaptics" forKey:v7];
      [v4 addObject:v41];
      v42 = AXParameterizedLocalizedString();
      v17 = [PSSpecifier groupSpecifierWithName:v42];

      [v4 addObject:v17];
      v43 = AXParameterizedLocalizedString();
      v44 = [PSSpecifier preferenceSpecifierNamed:v43 target:self set:"setFurnitureSpeechEnabled:specifier:" get:"furnitureSpeechEnabled:" detail:0 cell:6 edit:0];

      [v44 setProperty:@"FurnitureSpeech" forKey:v7];
      [v4 addObject:v44];
      v45 = AXParameterizedLocalizedString();
      v46 = [PSSpecifier preferenceSpecifierNamed:v45 target:self set:"setFurnitureBrailleEnabled:specifier:" get:"furnitureBrailleEnabled:" detail:0 cell:6 edit:0];

      [v46 setProperty:@"FurnitureBraille" forKey:v7];
      [v4 addObject:v46];
      v47 = AXParameterizedLocalizedString();
      v48 = [PSSpecifier preferenceSpecifierNamed:v47 target:self set:"setFurnitureSoundsEnabled:specifier:" get:"furnitureSoundEnabled:" detail:0 cell:6 edit:0];

      [v48 setProperty:@"FurnitureSounds" forKey:v7];
      [v4 addObject:v48];
      v49 = AXParameterizedLocalizedString();
      v21 = [PSSpecifier preferenceSpecifierNamed:v49 target:self set:"setFurnitureHapticsEnabled:specifier:" get:"furnitureHapticsEnabled:" detail:0 cell:6 edit:0];

      [v21 setProperty:@"FurnitureHaptics" forKey:v7];
      [v4 addObject:v21];
    }

    v50 = AXParameterizedLocalizedString();
    v51 = [PSSpecifier groupSpecifierWithName:v50];

    [v4 addObject:v51];
    v52 = AXParameterizedLocalizedString();
    v53 = [PSSpecifier preferenceSpecifierNamed:v52 target:self set:"setTextSpeechEnabled:specifier:" get:"textSpeechEnabled:" detail:0 cell:6 edit:0];

    [v53 setProperty:@"TextSpeech" forKey:v7];
    [v4 addObject:v53];
    v54 = AXParameterizedLocalizedString();
    v55 = [PSSpecifier preferenceSpecifierNamed:v54 target:self set:"setTextBrailleEnabled:specifier:" get:"textBrailleEnabled:" detail:0 cell:6 edit:0];

    [v55 setProperty:@"TextBraille" forKey:v7];
    [v4 addObject:v55];
    v56 = AXParameterizedLocalizedString();
    v57 = [PSSpecifier groupSpecifierWithName:v56];

    [v4 addObject:v57];
    v58 = AXParameterizedLocalizedString();
    v59 = [PSSpecifier preferenceSpecifierNamed:v58 target:self set:"setPointAndSpeakSpeechEnabled:specifier:" get:"pointAndSpeakSpeechEnabled:" detail:0 cell:6 edit:0];

    [v59 setProperty:@"PointSpeakSpeech" forKey:v7];
    [v4 addObject:v59];
    v60 = AXParameterizedLocalizedString();
    v61 = [PSSpecifier preferenceSpecifierNamed:v60 target:self set:"setPointAndSpeakBrailleEnabled:specifier:" get:"pointAndSpeakBrailleEnabled:" detail:0 cell:6 edit:0];

    [v61 setProperty:@"PointSpeakBraille" forKey:v7];
    [v4 addObject:v61];
    v62 = AXParameterizedLocalizedString();
    v63 = [PSSpecifier preferenceSpecifierNamed:v62 target:self set:"setPointAndSpeakSoundsEnabled:specifier:" get:"pointAndSpeakSoundsEnabled:" detail:0 cell:6 edit:0];

    [v63 setProperty:@"PointSpeakSounds" forKey:v7];
    [v4 addObject:v63];
    v64 = AXParameterizedLocalizedString();
    v65 = [PSSpecifier preferenceSpecifierNamed:v64 target:self set:"setPointAndSpeakHapticsEnabled:specifier:" get:"pointAndSpeakHapticsEnabled:" detail:0 cell:6 edit:0];

    [v65 setProperty:@"PointSpeakHaptics" forKey:v7];
    [v4 addObject:v65];
    v66 = *&self->AXUISettingsBaseListController_opaque[v69];
    *&self->AXUISettingsBaseListController_opaque[v69] = v4;

    v3 = *&self->AXUISettingsBaseListController_opaque[v69];
  }

  return v3;
}

- (void)_showLiveRecognitionRotorViewController:(id)a3
{
  v4 = a3;
  v6 = [[VoiceOverLiveRecognitionRotorController alloc] initWithNibName:0 bundle:0];
  [(VoiceOverLiveRecognitionRotorController *)v6 setParentController:self];
  v5 = [(VoiceOverLiveRecognitionController *)self rootController];
  [(VoiceOverLiveRecognitionRotorController *)v6 setRootController:v5];

  [(VoiceOverLiveRecognitionRotorController *)v6 setSpecifier:v4];
  [(VoiceOverLiveRecognitionController *)self showController:v6 animate:1];
}

- (void)_showLiveRecognitionActivitiesViewController:(id)a3
{
  v4 = a3;
  v6 = [[VoiceOverLiveRecognitionActivitiesController alloc] initWithNibName:0 bundle:0];
  [(VoiceOverLiveRecognitionActivitiesController *)v6 setParentController:self];
  v5 = [(VoiceOverLiveRecognitionController *)self rootController];
  [(VoiceOverLiveRecognitionActivitiesController *)v6 setRootController:v5];

  [(VoiceOverLiveRecognitionActivitiesController *)v6 setSpecifier:v4];
  [(VoiceOverLiveRecognitionController *)self showController:v6 animate:1];
}

- (void)setChatGPT:(id)a3 specifier:(id)a4
{
  v7 = a3;
  if ([v7 BOOLValue])
  {
    v5 = objc_alloc_init(VoiceOverExternalIntelligenceController);
    v6 = [(VoiceOverExternalIntelligenceController *)v5 makeOnboardingViewController];
    [v6 setModalPresentationStyle:1];
    [(VoiceOverLiveRecognitionController *)self presentViewController:v6 animated:1 completion:0];
  }

  else
  {
    v5 = +[AXSettings sharedInstance];
    -[VoiceOverExternalIntelligenceController setLiveRecognitionChatGPTEnabled:](v5, "setLiveRecognitionChatGPTEnabled:", [v7 BOOLValue]);
  }
}

- (id)chatGPTEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 liveRecognitionChatGPTEnabled]);

  return v4;
}

- (void)setAutomaticFlashlight:(id)a3 specifier:(id)a4
{
  v4 = a3;
  v6 = +[AXSettings sharedInstance];
  v5 = [v4 BOOLValue];

  [v6 setLiveRecognitionAutomaticFlashlightEnabled:v5];
}

- (id)automaticFlashlightEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 liveRecognitionAutomaticFlashlightEnabled]);

  return v4;
}

- (void)updateFeedbacks:(id)a3 withType:(int64_t)a4 addFeedback:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v7 = [NSNumber numberWithInteger:a4];
  if (v5)
  {
    [v8 addObject:v7];
  }

  else if ([v8 containsObject:v7])
  {
    [v8 removeObject:v7];
  }
}

- (void)setScenesSpeechEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = +[AXSettings sharedInstance];
  v7 = [v6 liveRecognitionSceneFeedbacks];
  v10 = [v7 mutableCopy];

  v8 = [v5 BOOLValue];
  [(VoiceOverLiveRecognitionController *)self updateFeedbacks:v10 withType:0 addFeedback:v8];
  v9 = +[AXSettings sharedInstance];
  [v9 setLiveRecognitionSceneFeedbacks:v10];
}

- (id)scenesSpeechEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 liveRecognitionSceneFeedbacks];
  v5 = [NSNumber numberWithInteger:0];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 containsObject:v5]);

  return v6;
}

- (void)setScenesBrailleEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = +[AXSettings sharedInstance];
  v7 = [v6 liveRecognitionSceneFeedbacks];
  v10 = [v7 mutableCopy];

  v8 = [v5 BOOLValue];
  [(VoiceOverLiveRecognitionController *)self updateFeedbacks:v10 withType:1 addFeedback:v8];
  v9 = +[AXSettings sharedInstance];
  [v9 setLiveRecognitionSceneFeedbacks:v10];
}

- (id)scenesBrailleEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 liveRecognitionSceneFeedbacks];
  v5 = [NSNumber numberWithInteger:1];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 containsObject:v5]);

  return v6;
}

- (void)setPeopleSpeechEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = +[AXSettings sharedInstance];
  v7 = [v6 liveRecognitionPeopleFeedbacks];
  v10 = [v7 mutableCopy];

  v8 = [v5 BOOLValue];
  [(VoiceOverLiveRecognitionController *)self updateFeedbacks:v10 withType:0 addFeedback:v8];
  v9 = +[AXSettings sharedInstance];
  [v9 setLiveRecognitionPeopleFeedbacks:v10];
}

- (id)peopleSpeechEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 liveRecognitionPeopleFeedbacks];
  v5 = [NSNumber numberWithInteger:0];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 containsObject:v5]);

  return v6;
}

- (void)setPeopleBrailleEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = +[AXSettings sharedInstance];
  v7 = [v6 liveRecognitionPeopleFeedbacks];
  v10 = [v7 mutableCopy];

  v8 = [v5 BOOLValue];
  [(VoiceOverLiveRecognitionController *)self updateFeedbacks:v10 withType:1 addFeedback:v8];
  v9 = +[AXSettings sharedInstance];
  [v9 setLiveRecognitionPeopleFeedbacks:v10];
}

- (id)peopleBrailleEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 liveRecognitionPeopleFeedbacks];
  v5 = [NSNumber numberWithInteger:1];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 containsObject:v5]);

  return v6;
}

- (void)setPeopleSoundsEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = +[AXSettings sharedInstance];
  v7 = [v6 liveRecognitionPeopleFeedbacks];
  v10 = [v7 mutableCopy];

  v8 = [v5 BOOLValue];
  [(VoiceOverLiveRecognitionController *)self updateFeedbacks:v10 withType:2 addFeedback:v8];
  v9 = +[AXSettings sharedInstance];
  [v9 setLiveRecognitionPeopleFeedbacks:v10];
}

- (id)peopleSoundsEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 liveRecognitionPeopleFeedbacks];
  v5 = [NSNumber numberWithInteger:2];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 containsObject:v5]);

  return v6;
}

- (void)setPeopleHapticsEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = +[AXSettings sharedInstance];
  v7 = [v6 liveRecognitionPeopleFeedbacks];
  v10 = [v7 mutableCopy];

  v8 = [v5 BOOLValue];
  [(VoiceOverLiveRecognitionController *)self updateFeedbacks:v10 withType:3 addFeedback:v8];
  v9 = +[AXSettings sharedInstance];
  [v9 setLiveRecognitionPeopleFeedbacks:v10];
}

- (id)peopleHapticsEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 liveRecognitionPeopleFeedbacks];
  v5 = [NSNumber numberWithInteger:3];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 containsObject:v5]);

  return v6;
}

- (void)setDoorsSpeechEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = +[AXSettings sharedInstance];
  v7 = [v6 liveRecognitionDoorsFeedbacks];
  v10 = [v7 mutableCopy];

  v8 = [v5 BOOLValue];
  [(VoiceOverLiveRecognitionController *)self updateFeedbacks:v10 withType:0 addFeedback:v8];
  v9 = +[AXSettings sharedInstance];
  [v9 setLiveRecognitionDoorsFeedbacks:v10];
}

- (id)doorsSpeechEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 liveRecognitionDoorsFeedbacks];
  v5 = [NSNumber numberWithInteger:0];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 containsObject:v5]);

  return v6;
}

- (void)setDoorsBrailleEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = +[AXSettings sharedInstance];
  v7 = [v6 liveRecognitionDoorsFeedbacks];
  v10 = [v7 mutableCopy];

  v8 = [v5 BOOLValue];
  [(VoiceOverLiveRecognitionController *)self updateFeedbacks:v10 withType:1 addFeedback:v8];
  v9 = +[AXSettings sharedInstance];
  [v9 setLiveRecognitionDoorsFeedbacks:v10];
}

- (id)doorsBrailleEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 liveRecognitionDoorsFeedbacks];
  v5 = [NSNumber numberWithInteger:1];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 containsObject:v5]);

  return v6;
}

- (void)setDoorsSoundsEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = +[AXSettings sharedInstance];
  v7 = [v6 liveRecognitionDoorsFeedbacks];
  v10 = [v7 mutableCopy];

  v8 = [v5 BOOLValue];
  [(VoiceOverLiveRecognitionController *)self updateFeedbacks:v10 withType:2 addFeedback:v8];
  v9 = +[AXSettings sharedInstance];
  [v9 setLiveRecognitionDoorsFeedbacks:v10];
}

- (id)doorsSoundEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 liveRecognitionDoorsFeedbacks];
  v5 = [NSNumber numberWithInteger:2];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 containsObject:v5]);

  return v6;
}

- (void)setDoorsHapticsEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = +[AXSettings sharedInstance];
  v7 = [v6 liveRecognitionDoorsFeedbacks];
  v10 = [v7 mutableCopy];

  v8 = [v5 BOOLValue];
  [(VoiceOverLiveRecognitionController *)self updateFeedbacks:v10 withType:3 addFeedback:v8];
  v9 = +[AXSettings sharedInstance];
  [v9 setLiveRecognitionDoorsFeedbacks:v10];
}

- (id)doorsHapticsEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 liveRecognitionDoorsFeedbacks];
  v5 = [NSNumber numberWithInteger:3];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 containsObject:v5]);

  return v6;
}

- (void)setFurnitureSpeechEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = +[AXSettings sharedInstance];
  v7 = [v6 liveRecognitionFurnitureFeedbacks];
  v10 = [v7 mutableCopy];

  v8 = [v5 BOOLValue];
  [(VoiceOverLiveRecognitionController *)self updateFeedbacks:v10 withType:0 addFeedback:v8];
  v9 = +[AXSettings sharedInstance];
  [v9 setLiveRecognitionFurnitureFeedbacks:v10];
}

- (id)furnitureSpeechEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 liveRecognitionFurnitureFeedbacks];
  v5 = [NSNumber numberWithInteger:0];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 containsObject:v5]);

  return v6;
}

- (void)setFurnitureBrailleEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = +[AXSettings sharedInstance];
  v7 = [v6 liveRecognitionFurnitureFeedbacks];
  v10 = [v7 mutableCopy];

  v8 = [v5 BOOLValue];
  [(VoiceOverLiveRecognitionController *)self updateFeedbacks:v10 withType:1 addFeedback:v8];
  v9 = +[AXSettings sharedInstance];
  [v9 setLiveRecognitionFurnitureFeedbacks:v10];
}

- (id)furnitureBrailleEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 liveRecognitionFurnitureFeedbacks];
  v5 = [NSNumber numberWithInteger:1];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 containsObject:v5]);

  return v6;
}

- (void)setFurnitureSoundsEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = +[AXSettings sharedInstance];
  v7 = [v6 liveRecognitionFurnitureFeedbacks];
  v10 = [v7 mutableCopy];

  v8 = [v5 BOOLValue];
  [(VoiceOverLiveRecognitionController *)self updateFeedbacks:v10 withType:2 addFeedback:v8];
  v9 = +[AXSettings sharedInstance];
  [v9 setLiveRecognitionFurnitureFeedbacks:v10];
}

- (id)furnitureSoundEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 liveRecognitionFurnitureFeedbacks];
  v5 = [NSNumber numberWithInteger:2];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 containsObject:v5]);

  return v6;
}

- (void)setFurnitureHapticsEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = +[AXSettings sharedInstance];
  v7 = [v6 liveRecognitionFurnitureFeedbacks];
  v10 = [v7 mutableCopy];

  v8 = [v5 BOOLValue];
  [(VoiceOverLiveRecognitionController *)self updateFeedbacks:v10 withType:3 addFeedback:v8];
  v9 = +[AXSettings sharedInstance];
  [v9 setLiveRecognitionFurnitureFeedbacks:v10];
}

- (id)furnitureHapticsEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 liveRecognitionFurnitureFeedbacks];
  v5 = [NSNumber numberWithInteger:3];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 containsObject:v5]);

  return v6;
}

- (void)setTextSpeechEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = +[AXSettings sharedInstance];
  v7 = [v6 liveRecognitionTextFeedbacks];
  v10 = [v7 mutableCopy];

  v8 = [v5 BOOLValue];
  [(VoiceOverLiveRecognitionController *)self updateFeedbacks:v10 withType:0 addFeedback:v8];
  v9 = +[AXSettings sharedInstance];
  [v9 setLiveRecognitionTextFeedbacks:v10];
}

- (id)textSpeechEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 liveRecognitionTextFeedbacks];
  v5 = [NSNumber numberWithInteger:0];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 containsObject:v5]);

  return v6;
}

- (void)setTextBrailleEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = +[AXSettings sharedInstance];
  v7 = [v6 liveRecognitionTextFeedbacks];
  v10 = [v7 mutableCopy];

  v8 = [v5 BOOLValue];
  [(VoiceOverLiveRecognitionController *)self updateFeedbacks:v10 withType:1 addFeedback:v8];
  v9 = +[AXSettings sharedInstance];
  [v9 setLiveRecognitionTextFeedbacks:v10];
}

- (id)textBrailleEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 liveRecognitionTextFeedbacks];
  v5 = [NSNumber numberWithInteger:1];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 containsObject:v5]);

  return v6;
}

- (void)setPointAndSpeakSpeechEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = +[AXSettings sharedInstance];
  v7 = [v6 liveRecognitionPointAndSpeakFeedbacks];
  v10 = [v7 mutableCopy];

  v8 = [v5 BOOLValue];
  [(VoiceOverLiveRecognitionController *)self updateFeedbacks:v10 withType:0 addFeedback:v8];
  v9 = +[AXSettings sharedInstance];
  [v9 setLiveRecognitionPointAndSpeakFeedbacks:v10];
}

- (id)pointAndSpeakSpeechEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 liveRecognitionPointAndSpeakFeedbacks];
  v5 = [NSNumber numberWithInteger:0];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 containsObject:v5]);

  return v6;
}

- (void)setPointAndSpeakBrailleEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = +[AXSettings sharedInstance];
  v7 = [v6 liveRecognitionPointAndSpeakFeedbacks];
  v10 = [v7 mutableCopy];

  v8 = [v5 BOOLValue];
  [(VoiceOverLiveRecognitionController *)self updateFeedbacks:v10 withType:1 addFeedback:v8];
  v9 = +[AXSettings sharedInstance];
  [v9 setLiveRecognitionPointAndSpeakFeedbacks:v10];
}

- (id)pointAndSpeakBrailleEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 liveRecognitionPointAndSpeakFeedbacks];
  v5 = [NSNumber numberWithInteger:1];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 containsObject:v5]);

  return v6;
}

- (void)setPointAndSpeakSoundsEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = +[AXSettings sharedInstance];
  v7 = [v6 liveRecognitionPointAndSpeakFeedbacks];
  v10 = [v7 mutableCopy];

  v8 = [v5 BOOLValue];
  [(VoiceOverLiveRecognitionController *)self updateFeedbacks:v10 withType:2 addFeedback:v8];
  v9 = +[AXSettings sharedInstance];
  [v9 setLiveRecognitionPointAndSpeakFeedbacks:v10];
}

- (id)pointAndSpeakSoundsEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 liveRecognitionPointAndSpeakFeedbacks];
  v5 = [NSNumber numberWithInteger:2];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 containsObject:v5]);

  return v6;
}

- (void)setPointAndSpeakHapticsEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = +[AXSettings sharedInstance];
  v7 = [v6 liveRecognitionPointAndSpeakFeedbacks];
  v10 = [v7 mutableCopy];

  v8 = [v5 BOOLValue];
  [(VoiceOverLiveRecognitionController *)self updateFeedbacks:v10 withType:3 addFeedback:v8];
  v9 = +[AXSettings sharedInstance];
  [v9 setLiveRecognitionPointAndSpeakFeedbacks:v10];
}

- (id)pointAndSpeakHapticsEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 liveRecognitionPointAndSpeakFeedbacks];
  v5 = [NSNumber numberWithInteger:3];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 containsObject:v5]);

  return v6;
}

@end