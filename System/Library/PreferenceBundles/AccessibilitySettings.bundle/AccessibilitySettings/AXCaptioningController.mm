@interface AXCaptioningController
- (AXCaptioningController)init;
- (id)_localizedAudioTranscriptionsFooterText;
- (id)currentTheme:(id)theme;
- (id)preferSDHEnabled:(id)enabled;
- (id)showAudioTranscriptions:(id)transcriptions;
- (id)showOnSkipBack:(id)back;
- (id)showSubtitlesWhenLanguageMismatch:(id)mismatch;
- (id)showSubtitlesWhenMuted:(id)muted;
- (id)specifiers;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (void)_handleWorkoutVoiceFeatureAvailabilityChanged;
- (void)setPreferSDHEnabled:(id)enabled specifier:(id)specifier;
- (void)setShowAudioTranscriptions:(id)transcriptions specifier:(id)specifier;
- (void)setShowOnSkipBack:(id)back specifier:(id)specifier;
- (void)setShowSubtitlesWhenLanguageMismatch:(id)mismatch specifier:(id)specifier;
- (void)setShowSubtitlesWhenMuted:(id)muted specifier:(id)specifier;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AXCaptioningController

- (AXCaptioningController)init
{
  v10.receiver = self;
  v10.super_class = AXCaptioningController;
  v2 = [(AccessibilitySettingsBaseController *)&v10 init];
  if (v2 && _os_feature_enabled_impl())
  {
    v3 = objc_alloc_init(WorkoutVoiceAvailabilityProviderBridge);
    v4 = *(v2 + 166);
    *(v2 + 166) = v3;

    objc_initWeak(&location, v2);
    v5 = *(v2 + 166);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = __30__AXCaptioningController_init__block_invoke;
    v7[3] = &unk_255BD0;
    objc_copyWeak(&v8, &location);
    [v5 refreshIsFeatureSupportedWithCompletionHandler:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __30__AXCaptioningController_init__block_invoke(uint64_t a1, char a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __30__AXCaptioningController_init__block_invoke_2;
  v2[3] = &unk_258470;
  v4 = a2;
  objc_copyWeak(&v3, (a1 + 32));
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
}

void __30__AXCaptioningController_init__block_invoke_2(uint64_t a1)
{
  v2 = AXLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 40))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "[WorkoutVoice] isFeatureSupported=%@", &v7, 0xCu);
  }

  v4 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setWorkoutVoiceIsSupported:v4];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 _handleWorkoutVoiceFeatureAvailabilityChanged];
}

- (id)specifiers
{
  v3 = *&self->super.AXUISettingsListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v28 = OBJC_IVAR___PSListController__specifiers;
    v4 = [objc_allocWithZone(NSMutableArray) init];
    v5 = +[PSSpecifier emptyGroupSpecifier];
    v6 = settingsLocString(@"SDH_FOOTER_TEXT", @"Captioning");
    v29 = PSFooterTextGroupKey;
    [v5 setProperty:v6 forKey:?];

    [v4 addObject:v5];
    v7 = settingsLocString(@"PREFER_SDH", @"Captioning");
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:"setPreferSDHEnabled:specifier:" get:"preferSDHEnabled:" detail:0 cell:6 edit:0];

    v9 = PSIDKey;
    [v8 setProperty:@"PREFER_SDH" forKey:PSIDKey];
    v10 = AXInBuddySetupKey;
    [v8 setProperty:&__kCFBooleanFalse forKey:AXInBuddySetupKey];
    [v4 addObject:v8];
    v11 = +[PSSpecifier emptyGroupSpecifier];

    [v4 addObject:v11];
    v12 = settingsLocString(@"CAPTION_THEME", @"Captioning");
    v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:"currentTheme:" detail:objc_opt_class() cell:2 edit:0];

    [v13 setProperty:@"CAPTION_THEME" forKey:v9];
    [v13 setProperty:&__kCFBooleanFalse forKey:v10];
    [v13 setIdentifier:@"currentTheme"];
    [v4 addObject:v13];
    v14 = +[PSSpecifier emptyGroupSpecifier];

    _localizedAudioTranscriptionsFooterText = [(AXCaptioningController *)self _localizedAudioTranscriptionsFooterText];
    [v14 setProperty:_localizedAudioTranscriptionsFooterText forKey:v29];

    [v14 setIdentifier:@"AudioTranscriptionsGroup"];
    [v4 addObject:v14];
    v16 = settingsLocString(@"SHOW_AUDIO_TRANSCRIPTIONS", @"Captioning-dinnerbell");
    v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:"setShowAudioTranscriptions:specifier:" get:"showAudioTranscriptions:" detail:0 cell:6 edit:0];

    [v17 setProperty:@"SHOW_AUDIO_TRANSCRIPTIONS" forKey:v9];
    [v17 setProperty:&__kCFBooleanFalse forKey:v10];
    [v4 addObject:v17];
    if (AXHasCapability())
    {
      v18 = settingsLocString(@"AUTOMATIC_SUBTITLES", @"Captioning");
      v19 = [PSSpecifier groupSpecifierWithName:v18];

      v20 = settingsLocString(@"SHOW_WHEN_MUTED_FOOTER", @"Captioning");
      [v19 setProperty:v20 forKey:v29];

      [v4 addObject:v19];
      v21 = settingsLocString(@"SHOW_WHEN_MUTED", @"Captioning");
      v22 = [PSSpecifier preferenceSpecifierNamed:v21 target:self set:"setShowSubtitlesWhenMuted:specifier:" get:"showSubtitlesWhenMuted:" detail:0 cell:6 edit:0];

      [v22 setProperty:@"SHOW_WHEN_MUTED" forKey:v9];
      [v22 setProperty:&__kCFBooleanFalse forKey:v10];
      [v4 addObject:v22];
      v23 = +[PSSpecifier emptyGroupSpecifier];

      v24 = settingsLocString(@"SHOW_ON_SKIP_BACK_FOOTER", @"Captioning");
      [v23 setProperty:v24 forKey:v29];

      [v4 addObject:v23];
      v25 = settingsLocString(@"SHOW_ON_SKIP_BACK", @"Captioning");
      v17 = [PSSpecifier preferenceSpecifierNamed:v25 target:self set:"setShowOnSkipBack:specifier:" get:"showOnSkipBack:" detail:0 cell:6 edit:0];

      [v17 setProperty:@"SHOW_ON_SKIP_BACK" forKey:v9];
      [v17 setProperty:&__kCFBooleanFalse forKey:v10];
      [v4 addObject:v17];
    }

    [(AXCaptioningController *)self setupLongTitleSpecifiers:v4];
    v26 = *&self->super.AXUISettingsListController_opaque[v28];
    *&self->super.AXUISettingsListController_opaque[v28] = v4;

    v3 = *&self->super.AXUISettingsListController_opaque[v28];
  }

  return v3;
}

- (id)showOnSkipBack:(id)back
{
  v3 = _AXSAutomaticSubtitlesShowOnSkipBack();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (void)setShowOnSkipBack:(id)back specifier:(id)specifier
{
  bOOLValue = [back BOOLValue];

  __AXSSetAutomaticSubtitlesShowOnSkipBack(bOOLValue);
}

- (id)showSubtitlesWhenMuted:(id)muted
{
  v3 = _AXSAutomaticSubtitlesShowWhenMuted();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (void)setShowSubtitlesWhenMuted:(id)muted specifier:(id)specifier
{
  bOOLValue = [muted BOOLValue];

  __AXSSetAutomaticSubtitlesShowWhenMuted(bOOLValue);
}

- (id)showSubtitlesWhenLanguageMismatch:(id)mismatch
{
  v3 = _AXSAutomaticSubtitlesShowWhenLanguageMismatch();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (void)setShowSubtitlesWhenLanguageMismatch:(id)mismatch specifier:(id)specifier
{
  bOOLValue = [mismatch BOOLValue];

  __AXSSetAutomaticSubtitlesShowWhenLanguageMismatch(bOOLValue);
}

- (id)showAudioTranscriptions:(id)transcriptions
{
  v3 = _AXSShowAudioTranscriptions();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (void)setShowAudioTranscriptions:(id)transcriptions specifier:(id)specifier
{
  transcriptionsCopy = transcriptions;
  specifierCopy = specifier;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __63__AXCaptioningController_setShowAudioTranscriptions_specifier___block_invoke;
  v15[3] = &unk_255538;
  v8 = transcriptionsCopy;
  v16 = v8;
  selfCopy = self;
  v9 = objc_retainBlock(v15);
  if ([v8 BOOLValue] && (+[AFPreferences sharedPreferences](AFPreferences, "sharedPreferences"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "dictationIsEnabled"), v10, (v11 & 1) == 0))
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __63__AXCaptioningController_setShowAudioTranscriptions_specifier___block_invoke_2;
    v12[3] = &unk_2584C0;
    v14 = v9;
    v12[4] = self;
    v13 = specifierCopy;
    [TIAssistantSettings presentDialogForType:0 withCompletionHandler:v12];
  }

  else
  {
    (v9[2])(v9);
  }
}

id __63__AXCaptioningController_setShowAudioTranscriptions_specifier___block_invoke(uint64_t a1)
{
  [*(a1 + 32) BOOLValue];
  _AXSSetShowAudioTranscriptions();
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = kAXSAccessibilityPreferenceDomain;

  return [v2 setGizmoPref:v3 forKey:@"ShowAudioTranscriptionsEnabled" domain:v4];
}

void __63__AXCaptioningController_setShowAudioTranscriptions_specifier___block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 48);
  v2 = *(a1 + 40);
  AXPerformBlockOnMainThreadAfterDelay();
}

void __63__AXCaptioningController_setShowAudioTranscriptions_specifier___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 == 2)
  {
    [*(a1 + 32) reloadSpecifier:*(a1 + 40)];
    v6 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.siri"];
    [v6 setPresentingViewController:*(a1 + 32)];
    [v6 present];
  }

  else if (v2 == 1)
  {
    v3 = *(*(a1 + 48) + 16);

    v3();
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    [v4 reloadSpecifier:v5];
  }
}

- (id)currentTheme:(id)theme
{
  active = MACaptionAppearancePrefCopyActiveProfileID();
  v4 = MACaptionAppearancePrefCopyProfileName();
  if (active)
  {
    CFRelease(active);
  }

  return v4;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AXCaptioningController;
  [(AccessibilitySettingsBaseController *)&v4 viewWillAppear:appear];
  [(AXCaptioningController *)self reloadSpecifierID:@"currentTheme"];
}

- (void)setPreferSDHEnabled:(id)enabled specifier:(id)specifier
{
  [enabled BOOLValue];
  _AXSClosedCaptionsSetEnabled();
  v4 = +[HUUtilities sharedUtilities];
  [v4 updateHearingFeatureUsage];
}

- (id)preferSDHEnabled:(id)enabled
{
  v3 = _AXSClosedCaptionsEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v13.receiver = self;
  v13.super_class = AXCaptioningController;
  v5 = [(AXCaptioningController *)&v13 tableView:view titleForFooterInSection:?];
  v6 = +[NSLocale preferredLanguages];
  if ([v6 count])
  {
    v7 = [v6 objectAtIndex:0];
    v8 = [v7 hasPrefix:@"en"];

    if (!section)
    {
      if (v8)
      {
        v9 = +[UIDevice currentDevice];
        userInterfaceIdiom = [v9 userInterfaceIdiom];

        if (userInterfaceIdiom == &dword_0 + 1)
        {
          v11 = [v5 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_25D420];

          v5 = v11;
        }
      }
    }
  }

  return v5;
}

- (id)_localizedAudioTranscriptionsFooterText
{
  if ([(AXCaptioningController *)self workoutVoiceIsSupported]&& _os_feature_enabled_impl())
  {
    v2 = @"AUDIO_TRANSCRIPTIONS_WITH_WORKOUT_BUDDY_FOOTER";
    v3 = @"Captioning-Kahana";
  }

  else
  {
    v2 = @"SHOW_AUDIO_TRANSCRIPTIONS_FOOTER";
    v3 = @"Captioning-dinnerbell";
  }

  v4 = settingsLocString(v2, v3);

  return v4;
}

- (void)_handleWorkoutVoiceFeatureAvailabilityChanged
{
  specifiers = [(AXCaptioningController *)self specifiers];
  v5 = [specifiers specifierForID:@"AudioTranscriptionsGroup"];

  if (v5)
  {
    _localizedAudioTranscriptionsFooterText = [(AXCaptioningController *)self _localizedAudioTranscriptionsFooterText];
    [v5 setProperty:_localizedAudioTranscriptionsFooterText forKey:PSFooterTextGroupKey];

    [(AXCaptioningController *)self reloadSpecifier:v5];
  }
}

@end