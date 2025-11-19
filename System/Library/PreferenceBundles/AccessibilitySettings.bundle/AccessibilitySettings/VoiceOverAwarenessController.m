@interface VoiceOverAwarenessController
- (id)_imageDescriptionsEnabled:(id)a3;
- (id)_neuralEnabled:(id)a3;
- (id)_neuralFeedback:(id)a3;
- (id)_ocrEnabled:(id)a3;
- (id)specifiers;
- (void)loadView;
- (void)setDiscoveredTextEnabled:(id)a3 specifier:(id)a4;
@end

@implementation VoiceOverAwarenessController

- (id)specifiers
{
  v3 = *&self->super.AXUISettingsListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v36 = OBJC_IVAR___PSListController__specifiers;
    v4 = +[NSMutableArray array];
    v5 = +[PSSpecifier emptyGroupSpecifier];
    v6 = AXLocStringKeyForModel();
    v7 = settingsLocString(v6, @"VoiceOverSettings");
    v8 = PSFooterTextGroupKey;
    [v5 setProperty:v7 forKey:PSFooterTextGroupKey];

    [v4 addObject:v5];
    if (AXDeviceSupportsLiveRecognition())
    {
      v9 = +[PSSpecifier emptyGroupSpecifier];

      v10 = AXLocStringKeyForModel();
      v11 = settingsLocString(v10, @"VoiceOverSettings");
      [v9 setProperty:v11 forKey:v8];

      [v4 addObject:v9];
      v12 = settingsLocString(@"VO_REAL_WORLD_DETECTION", @"VoiceOverSettings");
      v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

      [v13 setIdentifier:@"VO_REAL_WORLD_DETECTION"];
      [v4 addObject:v13];

      v5 = v9;
    }

    v14 = +[PSSpecifier emptyGroupSpecifier];

    v15 = AXLocStringKeyForModel();
    v16 = settingsLocString(v15, @"VoiceOverSettings");
    [v14 setProperty:v16 forKey:v8];

    [v4 addObject:v14];
    v17 = settingsLocString(@"VO_IMAGE_DESCRIPTIONS", @"VoiceOverSettings");
    v18 = [PSSpecifier preferenceSpecifierNamed:v17 target:self set:0 get:"_imageDescriptionsEnabled:" detail:objc_opt_class() cell:2 edit:0];

    [v18 setIdentifier:@"VO_IMAGE_DESCRIPTIONS"];
    [v4 addObject:v18];
    v19 = +[PSSpecifier emptyGroupSpecifier];

    v20 = AXLocStringKeyForModel();
    v21 = settingsLocString(v20, @"VoiceOverSettings");
    [v19 setProperty:v21 forKey:v8];

    [v4 addObject:v19];
    v22 = settingsLocString(@"VO_SCREEN_RECOGNITION", @"VoiceOverSettings");
    v23 = [PSSpecifier preferenceSpecifierNamed:v22 target:self set:0 get:"_neuralEnabled:" detail:objc_opt_class() cell:2 edit:0];

    [v23 setIdentifier:@"VO_SCREEN_RECOGNITION"];
    [v4 addObject:v23];
    v24 = +[PSSpecifier emptyGroupSpecifier];

    v25 = AXLocStringKeyForModel();
    v26 = settingsLocString(v25, @"VoiceOverSettings");
    [v24 setProperty:v26 forKey:v8];

    [v4 addObject:v24];
    v27 = settingsLocString(@"VO_OCR", @"VoiceOverSettings");
    v28 = [PSSpecifier preferenceSpecifierNamed:v27 target:self set:"setDiscoveredTextEnabled:specifier:" get:"_ocrEnabled:" detail:0 cell:6 edit:0];

    [v28 setIdentifier:@"VO_OCR"];
    [v4 addObject:v28];
    v29 = +[PSSpecifier emptyGroupSpecifier];

    v30 = settingsLocString(@"VO_FEEDBACK_FOOTER", @"VoiceOverSettings");
    [v29 setProperty:v30 forKey:v8];

    [v4 addObject:v29];
    v31 = settingsLocString(@"VO_FEEDBACK", @"VoiceOverSettings");
    v32 = [PSSpecifier preferenceSpecifierNamed:v31 target:self set:0 get:"_neuralFeedback:" detail:objc_opt_class() cell:2 edit:0];

    [v32 setIdentifier:@"VO_FEEDBACK"];
    [v4 addObject:v32];
    v33 = [v4 copy];
    v34 = *&self->super.AXUISettingsListController_opaque[v36];
    *&self->super.AXUISettingsListController_opaque[v36] = v33;

    v3 = *&self->super.AXUISettingsListController_opaque[v36];
  }

  return v3;
}

- (void)loadView
{
  v16.receiver = self;
  v16.super_class = VoiceOverAwarenessController;
  [(VoiceOverAwarenessController *)&v16 loadView];
  objc_initWeak(&location, self);
  v3 = +[AXSettings sharedInstance];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __40__VoiceOverAwarenessController_loadView__block_invoke;
  v13[3] = &unk_257960;
  v13[4] = self;
  objc_copyWeak(&v14, &location);
  [v3 registerUpdateBlock:v13 forRetrieveSelector:"voiceOverImageCaptionsEnabled" withListener:self];

  objc_destroyWeak(&v14);
  v4 = +[AXSettings sharedInstance];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __40__VoiceOverAwarenessController_loadView__block_invoke_339;
  v11[3] = &unk_255388;
  objc_copyWeak(&v12, &location);
  [v4 registerUpdateBlock:v11 forRetrieveSelector:"automaticAccessibilityEnabled" withListener:self];

  objc_destroyWeak(&v12);
  v5 = +[AXSettings sharedInstance];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __40__VoiceOverAwarenessController_loadView__block_invoke_2;
  v9[3] = &unk_255388;
  objc_copyWeak(&v10, &location);
  [v5 registerUpdateBlock:v9 forRetrieveSelector:"voiceOverShouldSpeakDiscoveredText" withListener:self];

  objc_destroyWeak(&v10);
  v6 = +[AXSettings sharedInstance];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __40__VoiceOverAwarenessController_loadView__block_invoke_3;
  v7[3] = &unk_255388;
  objc_copyWeak(&v8, &location);
  [v6 registerUpdateBlock:v7 forRetrieveSelector:"voiceOverNeuralElementFeedback" withListener:self];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __40__VoiceOverAwarenessController_loadView__block_invoke(uint64_t a1)
{
  v2 = AXLogAssetLoader();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = +[AXSettings sharedInstance];
    v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverImageCaptionsEnabled]);
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "voiceOverImageCaptionsEnabled pref did change. newValue=%@ self=%@", &v7, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained reloadSpecifiers];
}

void __40__VoiceOverAwarenessController_loadView__block_invoke_339(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void __40__VoiceOverAwarenessController_loadView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void __40__VoiceOverAwarenessController_loadView__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

- (id)_imageDescriptionsEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  if ([v3 voiceOverImageCaptionsEnabled])
  {
    v4 = @"ON";
  }

  else
  {
    v4 = @"OFF";
  }

  v5 = settingsLocString(v4, @"Accessibility");

  return v5;
}

- (id)_neuralEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  if ([v3 automaticAccessibilityEnabled])
  {
    v4 = @"ON";
  }

  else
  {
    v4 = @"OFF";
  }

  v5 = settingsLocString(v4, @"Accessibility");

  return v5;
}

- (void)setDiscoveredTextEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverShouldSpeakDiscoveredText:v4];
}

- (id)_ocrEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverShouldSpeakDiscoveredText]);

  return v4;
}

- (id)_neuralFeedback:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 voiceOverNeuralElementFeedback];

  v5 = @"FEEDBACK_PLAY_TONE";
  if (!v4)
  {
    v5 = @"FEEDBACK_SPEAK";
  }

  if (v4 == &dword_0 + 2)
  {
    v6 = @"FEEDBACK_DO_NOTHING";
  }

  else
  {
    v6 = v5;
  }

  v7 = settingsLocString(v6, @"VoiceOverSettings");

  return v7;
}

@end