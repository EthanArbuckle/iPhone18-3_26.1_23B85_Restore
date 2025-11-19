@interface AXHapticMusicController
- (BOOL)_showUserStudySpecifiers;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)enhancedPercussionEnabled:(id)a3;
- (id)enhancedVocalsEnabled:(id)a3;
- (id)hapticMusicEnabled:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5;
- (void)_endNowPlayingSession;
- (void)_fetchUpdatePlayingInformation;
- (void)_generateAppSpecifiers;
- (void)_handleNowPlayingActivation;
- (void)_playHapticIntensitySample;
- (void)_startSample;
- (void)_stopSample;
- (void)_toggleSample:(id)a3;
- (void)_updateNowPlayingGroup;
- (void)_updateNowPlayingGroupWithInfo:(id)a3;
- (void)_updateNowPlayingInfo:(double)a3;
- (void)_updatePlaySampleString:(id)a3 reload:(BOOL)a4;
- (void)dealloc;
- (void)doneButtonTapped:(id)a3;
- (void)setEnhancedPercussionEnabled:(id)a3 specifier:(id)a4;
- (void)setEnhancedVocalsEnabled:(id)a3 specifier:(id)a4;
- (void)setHapticMusicEnabled:(id)a3 specifier:(id)a4;
- (void)showHapticMusicLearnMore;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)toggleSample:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willResignActive;
@end

@implementation AXHapticMusicController

- (BOOL)_showUserStudySpecifiers
{
  v2 = _AXSHapticMusicEnabled();
  if (v2)
  {

    LOBYTE(v2) = AXIsInternalInstall();
  }

  return v2;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = AXHapticMusicController;
  [(AXHapticMusicController *)&v10 viewDidLoad];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _settingsChange, kAXSHapticMusicPreferenceDidChangeNotification, 0, 1028);
  objc_initWeak(&location, self);
  v4 = +[MAMusicHapticsManager sharedManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __38__AXHapticMusicController_viewDidLoad__block_invoke;
  v7[3] = &unk_2582E0;
  objc_copyWeak(&v8, &location);
  v5 = [v4 addStatusObserver:v7];
  statusObserverToken = self->_statusObserverToken;
  self->_statusObserverToken = v5;

  AXPerformBlockAsynchronouslyOnMainThread();
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __38__AXHapticMusicController_viewDidLoad__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = AXLogHapticMusic();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [NSNumber numberWithBool:a3];
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Haptic Status for sample: %@, Active: %@", &v9, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fetchUpdatePlayingInformation];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AXHapticMusicController;
  [(AccessibilitySettingsBaseController *)&v4 viewWillAppear:a3];
  [(AXHapticMusicController *)self _updateNowPlayingGroup];
}

- (void)dealloc
{
  if (self->_notificationToken)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self->_notificationToken];
  }

  v4 = +[MAMusicHapticsManager sharedManager];
  [v4 removeStatusObserver:self->_statusObserverToken];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v6.receiver = self;
  v6.super_class = AXHapticMusicController;
  [(AccessibilitySettingsBaseController *)&v6 dealloc];
}

- (id)specifiers
{
  v3 = *&self->super.AXUISettingsListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v53 = OBJC_IVAR___PSListController__specifiers;
    val = self;
    v60 = [objc_allocWithZone(NSMutableArray) init];
    v58 = +[PSSpecifier emptyGroupSpecifier];
    v55 = AXUILocalizedStringForKeyWithTable();
    v54 = AXUILocalizedStringForKeyWithTable();
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [v58 setProperty:v5 forKey:PSFooterCellClassGroupKey];

    objc_initWeak(&location, val);
    v83[0] = @"contentLabel";
    v83[1] = @"alreadyLocalized";
    v84[0] = v55;
    v84[1] = &__kCFBooleanTrue;
    v6 = [NSDictionary dictionaryWithObjects:v84 forKeys:v83 count:2];
    v85[0] = v6;
    v81[0] = @"moreLabel";
    v81[1] = @"alreadyLocalized";
    v82[0] = v54;
    v82[1] = &__kCFBooleanTrue;
    v81[2] = @"customActionBlock";
    v70[0] = _NSConcreteStackBlock;
    v70[1] = 3221225472;
    v70[2] = __37__AXHapticMusicController_specifiers__block_invoke;
    v70[3] = &unk_255388;
    objc_copyWeak(&v71, &location);
    v7 = objc_retainBlock(v70);
    v82[2] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v82 forKeys:v81 count:3];
    v85[1] = v8;
    v9 = [NSArray arrayWithObjects:v85 count:2];
    v56 = [v9 mutableCopy];

    v10 = AXTeachableFeatureMusicHaptics;
    v57 = [AXTeachableMomentsManager teachableItemsForFeature:AXTeachableFeatureMusicHaptics];
    if ([v57 count])
    {
      v79[0] = @"moreLabel";
      v11 = AXUILocalizedStringForKeyWithTable();
      v80[0] = v11;
      v79[1] = @"additionalTitleLabel";
      v12 = settingsLocString(@"HAPTIC_MUSIC_TITLE", @"Accessibility");
      v80[1] = v12;
      v80[2] = &__kCFBooleanTrue;
      v79[2] = @"alreadyLocalized";
      v79[3] = @"symbolName";
      v80[3] = @"apple.haptics.and.music.note";
      v13 = [NSDictionary dictionaryWithObjects:v80 forKeys:v79 count:4];
      v52 = [v13 mutableCopy];

      v14 = objc_opt_new();
      v77[0] = @"sectionLabel";
      v15 = [AXTeachableMomentsManager notificationTitleForFeature:v10];
      v77[1] = @"alreadyLocalized";
      v78[0] = v15;
      v78[1] = &__kCFBooleanTrue;
      v16 = [NSDictionary dictionaryWithObjects:v78 forKeys:v77 count:2];
      [v14 addObject:v16];

      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v17 = v57;
      v18 = [v17 countByEnumeratingWithState:&v66 objects:v76 count:16];
      if (v18)
      {
        v19 = *v67;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v67 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = *(*(&v66 + 1) + 8 * i);
            v74[0] = @"headerLabel";
            v22 = [v21 itemTitle];
            v75[0] = v22;
            v74[1] = @"contentLabel";
            v23 = [v21 itemDescription];
            v74[2] = @"alreadyLocalized";
            v75[1] = v23;
            v75[2] = &__kCFBooleanTrue;
            v24 = [NSDictionary dictionaryWithObjects:v75 forKeys:v74 count:3];
            [v14 addObject:v24];
          }

          v18 = [v17 countByEnumeratingWithState:&v66 objects:v76 count:16];
        }

        while (v18);
      }

      [v52 setObject:v14 forKey:@"additionalContent"];
      [v56 addObject:v52];
    }

    [v58 setProperty:v56 forKey:@"content"];
    [v60 addObject:v58];
    v25 = AXUILocalizedStringForKeyWithTable();
    v26 = [PSSpecifier preferenceSpecifierNamed:v25 target:val set:"setHapticMusicEnabled:specifier:" get:"hapticMusicEnabled:" detail:0 cell:6 edit:0];

    v27 = PSIDKey;
    [v26 setProperty:@"HapticMusic" forKey:PSIDKey];
    [v60 addObject:v26];
    if (_AXSHapticMusicEnabled())
    {
      v28 = +[PSSpecifier emptyGroupSpecifier];

      [v60 addObject:v28];
      v26 = [PSSpecifier preferenceSpecifierNamed:0 target:val set:0 get:0 detail:0 cell:13 edit:0];

      [(AXHapticMusicController *)val _updatePlaySampleString:v26 reload:0];
      [v26 setButtonAction:"toggleSample:"];
      [v26 setProperty:@"ToggleSample" forKey:v27];
      [v60 addObject:v26];
      if (_os_feature_enabled_impl())
      {
        v29 = AXUILocalizedStringForKeyWithTable();
        v30 = [PSSpecifier groupSpecifierWithName:v29];

        v31 = +[AXSettings sharedInstance];
        v32 = [v31 hapticMusicAlgorithmSelections];

        [v32 containsObject:SHHapticPatternAlgorithmVocals];
        v33 = AXUILocalizedStringForKeyWithTable();
        [v30 setProperty:v33 forKey:PSFooterTextGroupKey];

        [v60 addObject:v30];
        [v30 setProperty:@"AlgorithmSelection" forKey:v27];
        objc_storeStrong(&val->_hapticModeGroupSpecifier, v30);
        v34 = AXUILocalizedStringForKeyWithTable();
        v35 = [PSSpecifier preferenceSpecifierNamed:v34 target:0 set:0 get:0 detail:0 cell:3 edit:0];

        [v35 setProperty:@"Default" forKey:v27];
        [v60 addObject:v35];
        v36 = AXUILocalizedStringForKeyWithTable();
        v37 = [PSSpecifier preferenceSpecifierNamed:v36 target:0 set:0 get:0 detail:0 cell:3 edit:0];

        [v37 setProperty:@"Vocals" forKey:v27];
        [v60 addObject:v37];

        v38 = AXUILocalizedStringForKeyWithTable();
        v39 = [PSSpecifier groupSpecifierWithName:v38];

        [v60 addObject:v39];
        v40 = [PSSpecifier preferenceSpecifierNamed:0 target:val set:0 get:0 detail:0 cell:-1 edit:0];
        [v40 setProperty:@"HapticMusicIntensity" forKey:v27];
        [v40 setProperty:&__block_literal_global_50 forKey:@"Getter"];
        v65[0] = _NSConcreteStackBlock;
        v65[1] = 3221225472;
        v65[2] = __37__AXHapticMusicController_specifiers__block_invoke_3;
        v65[3] = &unk_258348;
        v65[4] = val;
        v41 = objc_retainBlock(v65);
        [v40 setProperty:v41 forKey:@"Setter"];

        [v60 addObject:v40];
      }
    }

    if ([(NSMutableArray *)val->_appSpecifiers count])
    {
      v42 = AXUILocalizedStringForKeyWithTable();
      v43 = [PSSpecifier groupSpecifierWithName:v42];

      v44 = AXUILocalizedStringForKeyWithTable();
      [v43 setProperty:v44 forKey:PSFooterTextGroupKey];

      [v43 setProperty:@"Apps" forKey:v27];
      [v60 addObject:v43];
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v45 = val->_appSpecifiers;
      v46 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v61 objects:v73 count:16];
      if (v46)
      {
        v47 = *v62;
        do
        {
          for (j = 0; j != v46; j = j + 1)
          {
            if (*v62 != v47)
            {
              objc_enumerationMutation(v45);
            }

            [v60 addObject:*(*(&v61 + 1) + 8 * j)];
          }

          v46 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v61 objects:v73 count:16];
        }

        while (v46);
      }
    }

    [(AXHapticMusicController *)val setupLongTitleSpecifiers:v60];
    v49 = [v60 copy];
    v50 = *&val->super.AXUISettingsListController_opaque[v53];
    *&val->super.AXUISettingsListController_opaque[v53] = v49;

    objc_destroyWeak(&v71);
    objc_destroyWeak(&location);

    v3 = *&val->super.AXUISettingsListController_opaque[v53];
  }

  return v3;
}

void __37__AXHapticMusicController_specifiers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained showHapticMusicLearnMore];
}

double __37__AXHapticMusicController_specifiers__block_invoke_2(id a1)
{
  v1 = +[AXSettings sharedInstance];
  [v1 hapticMusicIntensity];
  v3 = v2;

  return v3;
}

id __37__AXHapticMusicController_specifiers__block_invoke_3(uint64_t a1, double a2)
{
  v4 = +[AXSettings sharedInstance];
  [v4 setHapticMusicIntensity:a2];

  v5 = *(a1 + 32);

  return [v5 _playHapticIntensitySample];
}

- (void)_playHapticIntensitySample
{
  if (self->_hapticEngine)
  {
    goto LABEL_2;
  }

  v10 = [CHHapticEngine alloc];
  auxiliarySession = self->_auxiliarySession;
  v28 = 0;
  v12 = [v10 initWithAudioSession:auxiliarySession error:&v28];
  v7 = v28;
  hapticEngine = self->_hapticEngine;
  self->_hapticEngine = v12;

  [(CHHapticEngine *)self->_hapticEngine setPlaysHapticsOnly:1];
  [(CHHapticEngine *)self->_hapticEngine setAutoShutdownEnabled:1];
  if (v7)
  {
    v6 = AXLogHapticMusic();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *buf = 138412290;
    v30 = v7;
    v14 = "Engine error: %@";
LABEL_13:
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, v14, buf, 0xCu);
    goto LABEL_20;
  }

  v16 = self->_hapticEngine;
  v27 = 0;
  [(CHHapticEngine *)v16 startAndReturnError:&v27];
  v17 = v27;
  if (v17)
  {
    v7 = v17;
    v6 = AXLogHapticMusic();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *buf = 138412290;
    v30 = v7;
    v14 = "Start error: %@";
    goto LABEL_13;
  }

LABEL_2:
  v3 = [CHHapticPattern alloc];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 URLForResource:@"MusicHaptics_FirmSample" withExtension:@"ahap"];
  v26 = 0;
  v6 = [v3 initWithContentsOfURL:v5 error:&v26];
  v7 = v26;

  if (v7)
  {
    v8 = AXLogHapticMusic();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v7;
      v9 = "Sample error: %@";
LABEL_18:
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 0xCu);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  if (self->_player)
  {
    v15 = 0;
  }

  else
  {
    v18 = self->_hapticEngine;
    v25 = 0;
    v19 = [(CHHapticEngine *)v18 createAdvancedPlayerWithPattern:v6 error:&v25];
    v15 = v25;
    player = self->_player;
    self->_player = v19;
  }

  v21 = +[AXSettings sharedInstance];
  [v21 hapticMusicIntensity];
  *&v22 = v22;
  [(CHHapticAdvancedPatternPlayerExtended *)self->_player setVolume:v22];

  v23 = self->_player;
  v24 = v15;
  [(CHHapticAdvancedPatternPlayerExtended *)v23 startAtTime:&v24 error:0.0];
  v7 = v24;

  if (v7)
  {
    v8 = AXLogHapticMusic();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v7;
      v9 = "Player error: %@";
      goto LABEL_18;
    }

LABEL_19:
  }

LABEL_20:
}

- (void)_updateNowPlayingGroup
{
  if ([(AXHapticMusicController *)self _showUserStudySpecifiers])
  {
    if (!self->_client)
    {
      v3 = [AXUIClient alloc];
      v4 = [(AXHapticMusicController *)self _serviceName];
      v5 = [v3 initWithIdentifier:@"HapticMusicClient-Settings" serviceBundleName:v4];
      client = self->_client;
      self->_client = v5;
    }

    [(AXHapticMusicController *)self _fetchUpdatePlayingInformation];
  }
}

- (void)_fetchUpdatePlayingInformation
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __57__AXHapticMusicController__fetchUpdatePlayingInformation__block_invoke;
  block[3] = &unk_2553B0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __57__AXHapticMusicController__fetchUpdatePlayingInformation__block_invoke(uint64_t a1)
{
  v2 = AXLogHapticMusic();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 224);
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "Fetching now playing info: %@", buf, 0xCu);
  }

  v4 = *(*(a1 + 32) + 224);
  v10 = 0;
  v5 = [v4 sendSynchronousMessage:&__NSDictionary0__struct withIdentifier:4 error:&v10];
  v6 = v10;
  if (v6)
  {
    v7 = AXLogHapticMusic();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __57__AXHapticMusicController__fetchUpdatePlayingInformation__block_invoke_cold_1(v6, v7);
    }
  }

  v8 = AXLogHapticMusic();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v12 = v5;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Fetched now playing info: %@", buf, 0xCu);
  }

  if ([*(a1 + 32) _showUserStudySpecifiers])
  {
    v9 = v5;
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

- (void)_updateNowPlayingGroupWithInfo:(id)a3
{
  v28 = a3;
  v4 = [(AXHapticMusicController *)self specifiers];
  v5 = [v4 ax_filteredArrayUsingBlock:&__block_literal_global_434];

  [(AXHapticMusicController *)self setSpecifiers:v5];
  if ([v28 count])
  {
    v6 = +[NSMutableArray array];
    v26 = [PSSpecifier groupSpecifierWithName:@"Track Information (INTERNAL)"];
    [v26 setProperty:@"NowPlayingGroup" forKey:PSIDKey];
    [v26 setProperty:@"NowPlayingGroup" forKey:@"Group"];
    [v6 addObject:v26];
    v7 = [PSSpecifier preferenceSpecifierNamed:@"Title" target:self set:0 get:"_nowPlayingValue:" detail:0 cell:4 edit:0];
    v8 = [v28 objectForKeyedSubscript:@"title"];
    [v7 setProperty:v8 forKey:@"titleValue"];

    [v7 setProperty:@"NowPlayingGroup" forKey:@"Group"];
    [v6 addObject:v7];
    v9 = [PSSpecifier preferenceSpecifierNamed:@"Artist" target:self set:0 get:"_nowPlayingValue:" detail:0 cell:4 edit:0];

    v10 = [v28 objectForKeyedSubscript:@"artist"];
    [v9 setProperty:v10 forKey:@"titleValue"];

    [v9 setProperty:@"NowPlayingGroup" forKey:@"Group"];
    [v6 addObject:v9];
    v11 = [PSSpecifier preferenceSpecifierNamed:@"Adam ID" target:self set:0 get:"_nowPlayingValue:" detail:0 cell:4 edit:0];

    [v28 objectForKeyedSubscript:@"adamID"];
    v12 = v27 = v5;
    v13 = [NSString stringWithFormat:@"%@", v12];
    [v11 setProperty:v13 forKey:@"titleValue"];

    [v11 setProperty:@"NowPlayingGroup" forKey:@"Group"];
    [v6 addObject:v11];
    v14 = [PSSpecifier preferenceSpecifierNamed:@"Haptics Version" target:self set:0 get:"_nowPlayingValue:" detail:0 cell:4 edit:0];

    v15 = [v28 objectForKeyedSubscript:@"version"];
    [v14 setProperty:v15 forKey:@"titleValue"];

    [v14 setProperty:@"NowPlayingGroup" forKey:@"Group"];
    [v6 addObject:v14];
    v16 = [PSSpecifier preferenceSpecifierNamed:@"Created On" target:self set:0 get:"_nowPlayingValue:" detail:0 cell:4 edit:0];

    v17 = [v28 objectForKeyedSubscript:@"createdDate"];
    [v16 setProperty:v17 forKey:@"titleValue"];

    [v16 setProperty:@"NowPlayingGroup" forKey:@"Group"];
    [v6 addObject:v16];
    v18 = [PSSpecifier preferenceSpecifierNamed:@"Variant" target:self set:0 get:"_nowPlayingValue:" detail:0 cell:4 edit:0];

    v19 = [v28 objectForKeyedSubscript:@"variant"];
    [v18 setProperty:v19 forKey:@"titleValue"];

    [v18 setProperty:@"NowPlayingGroup" forKey:@"Group"];
    [v6 addObject:v18];
    v20 = [PSSpecifier preferenceSpecifierNamed:@"Event Counts" target:self set:0 get:"_nowPlayingValue:" detail:0 cell:4 edit:0];

    v21 = [v28 objectForKeyedSubscript:@"transientEventCount"];
    v22 = [v28 objectForKeyedSubscript:@"continuousEventCount"];
    v23 = [NSString stringWithFormat:@"%@ Transients / %@ Continuous", v21, v22];
    [v20 setProperty:v23 forKey:@"titleValue"];

    [v20 setProperty:@"NowPlayingGroup" forKey:@"Group"];
    [v6 addObject:v20];
    [(AXHapticMusicController *)self setupLongTitleSpecifiers:v6];
    v24 = [(AXHapticMusicController *)self specifiers];
    v25 = [v24 lastObject];
    [(AXHapticMusicController *)self insertContiguousSpecifiers:v6 afterSpecifier:v25 animated:1];

    v5 = v27;
  }
}

BOOL __58__AXHapticMusicController__updateNowPlayingGroupWithInfo___block_invoke(id a1, PSSpecifier *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(PSSpecifier *)a2 propertyForKey:@"Group", a4];
  v5 = [v4 isEqualToString:@"NowPlayingGroup"];

  return v5 ^ 1;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v17.receiver = self;
  v17.super_class = AXHapticMusicController;
  v6 = a4;
  [(AXHapticMusicController *)&v17 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(AXHapticMusicController *)self specifierForIndexPath:v6, v17.receiver, v17.super_class];

  v8 = +[AXSettings sharedInstance];
  v9 = [v8 hapticMusicAlgorithmSelections];
  v10 = [v9 mutableCopy];

  if (!v10)
  {
    v10 = +[NSMutableArray array];
  }

  v11 = [v7 propertyForKey:PSIDKey];
  if ([v11 isEqualToString:@"Default"])
  {
    v12 = +[NSMutableArray array];

    v10 = v12;
LABEL_9:
    hapticModeGroupSpecifier = self->_hapticModeGroupSpecifier;
    v15 = AXUILocalizedStringForKeyWithTable();
    [(PSSpecifier *)hapticModeGroupSpecifier setProperty:v15 forKey:PSFooterTextGroupKey];

    goto LABEL_10;
  }

  if ([v11 isEqualToString:@"Vocals"])
  {
    v13 = SHHapticPatternAlgorithmVocals;
    if ([v10 containsObject:SHHapticPatternAlgorithmVocals])
    {
      [v10 removeObject:v13];
    }

    else
    {
      [v10 addObject:v13];
    }

    goto LABEL_9;
  }

LABEL_10:
  v16 = +[AXSettings sharedInstance];
  [v16 setHapticMusicAlgorithmSelections:v10];

  [(AXHapticMusicController *)self reloadSpecifiers];
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = +[AXSettings sharedInstance];
  v10 = [v9 hapticMusicAlgorithmSelections];

  v22 = v7;
  v11 = [(AXHapticMusicController *)self specifierForIndexPath:v8];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = PSIDKey;
    v13 = [v11 propertyForKey:PSIDKey];
    if ([v13 isEqualToString:@"Default"])
    {
      v14 = [v10 count];

      if (!v14)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    v15 = [v11 propertyForKey:v12];
    if ([v15 isEqualToString:@"Vocals"])
    {
      v16 = [v10 containsObject:SHHapticPatternAlgorithmVocals];

      if (v16)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    v17 = [v11 propertyForKey:v12];
    if ([v17 isEqualToString:@"Percussive"])
    {
      v18 = [v10 containsObject:SHHapticPatternAlgorithmPercussive];

      if (v18)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    v19 = [v11 propertyForKey:v12];
    if ([v19 isEqualToString:@"Instrumentals"])
    {
      v20 = [v10 containsObject:SHHapticPatternAlgorithmInstrumental];

      if (v20)
      {
LABEL_16:
        v21 = 1;
LABEL_19:
        [v22 setChecked:v21];
        goto LABEL_20;
      }
    }

    else
    {
    }

    v21 = 0;
    goto LABEL_19;
  }

LABEL_20:
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AXHapticMusicController *)self specifierForIndexPath:v7];
  v9 = [v8 propertyForKey:PSIDKey];
  v10 = [v9 isEqualToString:@"AXHapticMusicPlaybackView"];

  if (v10)
  {
    v11 = UITableViewAutomaticDimension;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = AXHapticMusicController;
    [(AXHapticMusicController *)&v14 tableView:v6 heightForRowAtIndexPath:v7];
    v11 = v12;
  }

  return v11;
}

- (void)_updatePlaySampleString:(id)a3 reload:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  [(AXHapticMusicController *)self isPlayingSample];
  v6 = AXUILocalizedStringForKeyWithTable();
  [v7 setProperty:v6 forKey:PSTitleKey];
  [v7 setName:v6];
  if (v4)
  {
    [(AXHapticMusicController *)self reloadSpecifier:v7];
  }
}

- (void)toggleSample:(id)a3
{
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 URLForResource:@"MusicHaptics_SampleTrack" withExtension:@"wav"];
  [(AXHapticMusicController *)self _toggleSample:v5];

  v6 = [(AXHapticMusicController *)self specifierForID:@"ToggleSample"];
  [(AXHapticMusicController *)self _updatePlaySampleString:v6 reload:1];
}

- (void)_endNowPlayingSession
{
  [(AVAudioSession *)self->_auxiliarySession setActive:0 error:0];
  MRMediaRemoteSetCanBeNowPlayingApplication();
  v3 = +[UIApplication sharedApplication];
  [v3 endReceivingRemoteControlEvents];

  v4 = [(MPNowPlayingSession *)self->_nowPlayingSession nowPlayingInfoCenter];
  [v4 setNowPlayingInfo:0];

  v5 = +[MPRemoteCommandCenter sharedCommandCenter];
  v6 = [v5 pauseCommand];
  [v6 removeTarget:self->_pauseToken];

  v8 = +[MPRemoteCommandCenter sharedCommandCenter];
  v7 = [v8 playCommand];
  [v7 removeTarget:self->_playToken];
}

- (void)willResignActive
{
  v3.receiver = self;
  v3.super_class = AXHapticMusicController;
  [(AXHapticMusicController *)&v3 willResignActive];
  [(AXHapticMusicController *)self _stopSample];
  [(AXHapticMusicController *)self _endNowPlayingSession];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AXHapticMusicController;
  [(AXHapticMusicController *)&v4 viewWillDisappear:a3];
  [(AXHapticMusicController *)self _stopSample];
  [(AXHapticMusicController *)self _endNowPlayingSession];
}

- (void)_stopSample
{
  [(AVPlayer *)self->_samplePlayer pause];
  [(AXHapticMusicController *)self setIsPlayingSample:0];
  [(AXHapticMusicController *)self _endNowPlayingSession];
  v3 = [(AXHapticMusicController *)self specifierForID:@"ToggleSample"];
  [(AXHapticMusicController *)self _updatePlaySampleString:v3 reload:1];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v13.receiver = self;
  v13.super_class = AXHapticMusicController;
  v6 = a4;
  v7 = [(AXHapticMusicController *)&v13 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(AXHapticMusicController *)self specifierForIndexPath:v6, v13.receiver, v13.super_class];

  v9 = [v8 propertyForKey:PSIDKey];
  LODWORD(v6) = [v9 isEqualToString:@"HapticMusicIntensity"];

  if (v6)
  {
    v10 = [[AXHapticMusicIntensityCell alloc] initWithStyle:0 reuseIdentifier:@"Intensity" specifier:v8];
  }

  else
  {
    v10 = v7;
  }

  v11 = v10;

  return v11;
}

- (void)_toggleSample:(id)a3
{
  v4 = a3;
  if (!self->_samplePlayer)
  {
    v5 = [[AVPlayer alloc] initWithURL:v4];
    samplePlayer = self->_samplePlayer;
    self->_samplePlayer = v5;

    if (!self->_notificationToken)
    {
      objc_initWeak(&location, self);
      v7 = +[NSNotificationCenter defaultCenter];
      v8 = [(AVPlayer *)self->_samplePlayer currentItem];
      v9 = +[NSOperationQueue mainQueue];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = __41__AXHapticMusicController__toggleSample___block_invoke;
      v35[3] = &unk_2581B0;
      objc_copyWeak(&v36, &location);
      v10 = [v7 addObserverForName:AVPlayerItemDidPlayToEndTimeNotification object:v8 queue:v9 usingBlock:v35];
      notificationToken = self->_notificationToken;
      self->_notificationToken = v10;

      objc_destroyWeak(&v36);
      objc_destroyWeak(&location);
    }

    auxiliarySession = self->_auxiliarySession;
    if (!auxiliarySession)
    {
      v13 = +[AVAudioSession auxiliarySession];
      v14 = self->_auxiliarySession;
      self->_auxiliarySession = v13;

      v15 = +[NSNotificationCenter defaultCenter];
      [v15 addObserver:self selector:"_handleInterruption:" name:AVAudioSessionInterruptionNotification object:self->_auxiliarySession];

      auxiliarySession = self->_auxiliarySession;
    }

    [(AVPlayer *)self->_samplePlayer setAudioSession:auxiliarySession];
    [(AVAudioSession *)self->_auxiliarySession setCategory:AVAudioSessionCategoryPlayback error:0];
    objc_initWeak(&from, self);
    v16 = self->_samplePlayer;
    CMTimeMakeWithSeconds(&location, 0.01, 1000000000);
    v17 = [NSValue valueWithCMTime:&location];
    v38 = v17;
    v18 = [NSArray arrayWithObjects:&v38 count:1];
    v19 = &_dispatch_main_q;
    v27 = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = __41__AXHapticMusicController__toggleSample___block_invoke_2;
    v30 = &unk_255818;
    objc_copyWeak(&v32, &from);
    v31 = self;
    v20 = [(AVPlayer *)v16 addBoundaryTimeObserverForTimes:v18 queue:&_dispatch_main_q usingBlock:&v27];

    v21 = [MPNowPlayingSession alloc];
    v37 = self->_samplePlayer;
    v22 = [NSArray arrayWithObjects:&v37 count:1, v27, v28, v29, v30];
    v23 = [v21 initWithPlayers:v22];
    nowPlayingSession = self->_nowPlayingSession;
    self->_nowPlayingSession = v23;

    objc_destroyWeak(&v32);
    objc_destroyWeak(&from);
  }

  v25 = [(AXHapticMusicController *)self isPlayingSample];
  v26 = self->_auxiliarySession;
  if (v25)
  {
    [(AVAudioSession *)v26 setActive:0 error:0];
    [(AXHapticMusicController *)self _stopSample];
  }

  else
  {
    [(AVAudioSession *)v26 setActive:1 error:0];
    [(AXHapticMusicController *)self _startSample];
  }
}

void __41__AXHapticMusicController__toggleSample___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sampleFinished];
}

void __41__AXHapticMusicController__toggleSample___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(*(a1 + 32) + 168);
    if (v3)
    {
      [v3 currentTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    [WeakRetained _updateNowPlayingInfo:CMTimeGetSeconds(&time) + 0.01];
  }
}

- (void)_generateAppSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  appSpecifiers = self->_appSpecifiers;
  v26 = self;
  self->_appSpecifiers = v3;

  v5 = AXInstalledApps();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    v9 = AX_PreferencesBundleName;
    v25 = PSIDKey;
    v24 = PSLazyIconAppID;
    v23 = PSLazyIconLoading;
    v22 = PSIconImageKey;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        if (AXApplicationSupportsHapticMusic())
        {
          v12 = [v11 bundleIdentifier];
          v13 = [v12 isEqualToString:v9];

          if ((v13 & 1) == 0)
          {
            v14 = [v11 localizedName];
            v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:0 set:0 get:0 detail:0 cell:3 edit:0];

            v16 = [v11 bundleIdentifier];
            [v15 setProperty:v16 forKey:v25];

            v17 = [v11 bundleIdentifier];
            [v15 setProperty:v17 forKey:@"BundleIdentifier"];

            v18 = [v11 bundleIdentifier];
            LODWORD(v14) = AXFlipsIconRightToLeftForAppID(v18);

            v19 = [v11 bundleIdentifier];
            v20 = v19;
            if (v14)
            {
              v21 = AXImageIconForAppID(v19);
              [v15 setProperty:v21 forKey:v22];
            }

            else
            {
              [v15 setProperty:v19 forKey:v24];

              [v15 setProperty:&__kCFBooleanTrue forKey:v23];
            }

            [(NSMutableArray *)v26->_appSpecifiers addObject:v15];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v7);
  }

  [(AXHapticMusicController *)v26 reloadSpecifiers];
}

- (void)_startSample
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 hapticMusicActive];

  if ((v4 & 1) == 0)
  {
    v5 = +[AXSettings sharedInstance];
    [v5 setHapticMusicActive:1];

    v6 = AXLogHapticMusic();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Setting active state to on since sample was requested", buf, 2u);
    }
  }

  [(AXHapticMusicController *)self setIsPlayingSample:1];
  MRMediaRemoteSetCanBeNowPlayingApplication();
  v7 = [(MPNowPlayingSession *)self->_nowPlayingSession nowPlayingInfoCenter];
  [v7 setNowPlayingInfo:0];

  v8 = +[UIApplication sharedApplication];
  [v8 beginReceivingRemoteControlEvents];

  v9 = AXLogHapticMusic();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Starting playback sample", buf, 2u);
  }

  samplePlayer = self->_samplePlayer;
  CMTimeMakeWithSeconds(buf, 0.0, 1000000000);
  [(AVPlayer *)samplePlayer seekToTime:buf];
  [(AVPlayer *)self->_samplePlayer play];
  objc_initWeak(buf, self);
  nowPlayingSession = self->_nowPlayingSession;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __39__AXHapticMusicController__startSample__block_invoke;
  v12[3] = &unk_258390;
  v12[4] = self;
  objc_copyWeak(&v13, buf);
  [(MPNowPlayingSession *)nowPlayingSession becomeActiveIfPossibleWithCompletion:v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

void __39__AXHapticMusicController__startSample__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = AXLogHapticMusic();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [NSNumber numberWithBool:a2];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Tried to make now playing active: %@", &v7, 0xCu);
  }

  if (a2)
  {
    [*(a1 + 32) _updateNowPlayingInfo:0.0];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _handleNowPlayingActivation];
  }
}

- (void)_updateNowPlayingInfo:(double)a3
{
  v5 = AXLogHapticMusic();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSNumber numberWithDouble:a3];
    LODWORD(v13.value) = 138412290;
    *(&v13.value + 4) = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Posting now playing info: %@", &v13, 0xCu);
  }

  v7 = [(MPNowPlayingSession *)self->_nowPlayingSession nowPlayingInfoCenter];
  v14[0] = MPNowPlayingInfoPropertyElapsedPlaybackTime;
  v8 = [NSNumber numberWithDouble:a3];
  v15[0] = v8;
  v15[1] = &off_27D190;
  v14[1] = MPNowPlayingInfoPropertyPlaybackRate;
  v14[2] = MPMediaItemPropertyPlaybackDuration;
  v9 = [(AVPlayer *)self->_samplePlayer currentItem];
  v10 = v9;
  if (v9)
  {
    [v9 duration];
  }

  else
  {
    memset(&v13, 0, sizeof(v13));
  }

  v11 = [NSNumber numberWithDouble:CMTimeGetSeconds(&v13)];
  v15[2] = v11;
  v15[3] = @"Music Haptics Sample";
  v14[3] = MPMediaItemPropertyTitle;
  v14[4] = MPMediaItemPropertyArtist;
  v15[4] = @"Apple, Inc";
  v15[5] = &off_27AE00;
  v14[5] = MPNowPlayingInfoPropertyMediaType;
  v14[6] = MPNowPlayingInfoPropertyExternalContentIdentifier;
  v14[7] = MPNowPlayingInfoPropertyInternationalStandardRecordingCode;
  v15[6] = kAXHapticMusicSampleTrackISRCCode;
  v15[7] = kAXHapticMusicSampleTrackISRCCode;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:8];
  [v7 setNowPlayingInfo:v12];
}

- (void)_handleNowPlayingActivation
{
  objc_initWeak(&location, self);
  v3 = +[MPRemoteCommandCenter sharedCommandCenter];
  v4 = [v3 previousTrackCommand];
  [v4 setEnabled:0];

  v5 = +[MPRemoteCommandCenter sharedCommandCenter];
  v6 = [v5 nextTrackCommand];
  [v6 setEnabled:0];

  v7 = +[MPRemoteCommandCenter sharedCommandCenter];
  v8 = [v7 pauseCommand];
  [v8 setEnabled:1];

  v9 = +[MPRemoteCommandCenter sharedCommandCenter];
  v10 = [v9 pauseCommand];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = __54__AXHapticMusicController__handleNowPlayingActivation__block_invoke;
  v22[3] = &unk_2583B8;
  objc_copyWeak(&v23, &location);
  v11 = [v10 addTargetWithHandler:v22];
  pauseToken = self->_pauseToken;
  self->_pauseToken = v11;

  v13 = +[MPRemoteCommandCenter sharedCommandCenter];
  v14 = [v13 playCommand];
  [v14 setEnabled:1];

  v15 = +[MPRemoteCommandCenter sharedCommandCenter];
  v16 = [v15 playCommand];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = __54__AXHapticMusicController__handleNowPlayingActivation__block_invoke_2;
  v20[3] = &unk_2583B8;
  objc_copyWeak(&v21, &location);
  v17 = [v16 addTargetWithHandler:v20];
  playToken = self->_playToken;
  self->_playToken = v17;

  v19 = +[MAMusicHapticsManager sharedManager];
  [v19 checkHapticTrackAvailabilityForMediaMatchingCode:kAXHapticMusicSampleTrackISRCCode completionHandler:&__block_literal_global_557];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

uint64_t __54__AXHapticMusicController__handleNowPlayingActivation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _stopSample];

  return 0;
}

uint64_t __54__AXHapticMusicController__handleNowPlayingActivation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startSample];

  return 0;
}

void __54__AXHapticMusicController__handleNowPlayingActivation__block_invoke_3(id a1, BOOL a2)
{
  v2 = a2;
  v3 = AXLogHapticMusic();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [NSNumber numberWithBool:v2];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Haptic track is available for sample: %@", &v5, 0xCu);
  }
}

- (void)setEnhancedPercussionEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setHapticMusicEnhancedPercussion:v4];
}

- (id)enhancedPercussionEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 hapticMusicEnhancedPercussion]);

  return v4;
}

- (void)setEnhancedVocalsEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setHapticMusicEnhancedVocals:v4];
}

- (id)enhancedVocalsEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 hapticMusicEnhancedVocals]);

  return v4;
}

- (void)showHapticMusicLearnMore
{
  MGGetBoolAnswer();
  v3 = [OBTextWelcomeController alloc];
  v4 = AXUILocalizedStringForKeyWithTable();
  v5 = AXUILocalizedStringForKeyWithTable();
  v6 = [UIImage _systemImageNamed:@"apple.haptics.and.music.note"];
  v7 = +[UIColor systemPinkColor];
  v8 = [v6 imageWithTintColor:v7 renderingMode:1];
  v22 = [v3 initWithTitle:v4 detailText:v5 icon:v8];

  v9 = AXUILocalizedStringForKeyWithTable();
  [v22 addSectionWithHeader:v9 content:&stru_25D420];

  v10 = AXUILocalizedStringForKeyWithTable();
  [v22 addBulletedListItemWithTitle:v10 description:&stru_25D420];

  v11 = AXUILocalizedStringForKeyWithTable();
  [v22 addBulletedListItemWithTitle:v11 description:&stru_25D420];

  v12 = AXUILocalizedStringForKeyWithTable();
  [v22 addBulletedListItemWithTitle:v12 description:&stru_25D420];

  v13 = AXUILocalizedStringForKeyWithTable();
  [v22 addSectionWithHeader:v13 content:&stru_25D420];

  v14 = AXUILocalizedStringForKeyWithTable();
  [v22 addBulletedListItemWithTitle:v14 description:&stru_25D420];

  v15 = AXUILocalizedStringForKeyWithTable();
  [v22 addBulletedListItemWithTitle:v15 description:&stru_25D420];

  v16 = AXUILocalizedStringForKeyWithTable();
  [v22 addBulletedListItemWithTitle:v16 description:&stru_25D420];

  v17 = AXUILocalizedStringForKeyWithTable();
  [v22 addBulletedListItemWithTitle:v17 description:&stru_25D420];

  v18 = [[OBNavigationController alloc] initWithRootViewController:v22];
  learnMoreNavigationController = self->_learnMoreNavigationController;
  self->_learnMoreNavigationController = v18;

  v20 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"doneButtonTapped:"];
  v21 = [v22 navigationItem];
  [v21 setRightBarButtonItem:v20];

  [(AXHapticMusicController *)self presentViewController:self->_learnMoreNavigationController animated:1 completion:0];
}

- (void)doneButtonTapped:(id)a3
{
  learnMoreNavigationController = self->_learnMoreNavigationController;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __44__AXHapticMusicController_doneButtonTapped___block_invoke;
  v4[3] = &unk_2553B0;
  v4[4] = self;
  [(OBNavigationController *)learnMoreNavigationController dismissViewControllerAnimated:1 completion:v4];
}

void __44__AXHapticMusicController_doneButtonTapped___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 160);
  *(v1 + 160) = 0;
}

- (void)setHapticMusicEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = AXLogHapticMusic();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Setting haptic music: %@", &v9, 0xCu);
  }

  [v5 BOOLValue];
  _AXSSetHapticMusicEnabled();
  if ([v5 BOOLValue])
  {
    v7 = +[AXSettings sharedInstance];
    [v7 setHapticMusicActive:1];
  }

  if (([v5 BOOLValue] & 1) == 0)
  {
    [(AXHapticMusicController *)self _stopSample];
  }

  v8 = +[AXSettings sharedInstance];
  [v8 setHapticMusicToggledInPreferences:1];
}

- (id)hapticMusicEnabled:(id)a3
{
  v3 = _AXSHapticMusicEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v5 = [(AXHapticMusicController *)self specifierForIndexPath:a4, a5.x, a5.y];
  v6 = [v5 propertyForKey:@"Group"];
  v7 = [v6 isEqualToString:@"NowPlayingGroup"];

  if (v7)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __85__AXHapticMusicController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke;
    v10[3] = &unk_258428;
    v11 = v5;
    v8 = [UIContextMenuConfiguration configurationWithIdentifier:@"Hello" previewProvider:0 actionProvider:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __85__AXHapticMusicController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableArray array];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __85__AXHapticMusicController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke_2;
  v8[3] = &unk_258400;
  v9 = *(a1 + 32);
  v5 = [UIAction actionWithTitle:@"Copy" image:0 identifier:0 handler:v8];
  [v4 addObject:v5];

  [v4 addObjectsFromArray:v3];
  v6 = [UIMenu menuWithTitle:&stru_25D420 children:v4];

  return v6;
}

void __85__AXHapticMusicController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke_2(uint64_t a1)
{
  v3 = +[UIPasteboard generalPasteboard];
  v2 = [*(a1 + 32) propertyForKey:@"titleValue"];
  [v3 setString:v2];
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AXHapticMusicController *)self specifierForIndexPath:v7];
  v9 = [v8 propertyForKey:@"BundleIdentifier"];
  if (v9)
  {
  }

  else
  {
    v10 = [v8 propertyForKey:PSIDKey];
    v11 = [v10 isEqualToString:@"HapticMusicIntensity"];

    if ((v11 & 1) == 0)
    {
      v14.receiver = self;
      v14.super_class = AXHapticMusicController;
      v12 = [(AXHapticMusicController *)&v14 tableView:v6 shouldHighlightRowAtIndexPath:v7];
      goto LABEL_5;
    }
  }

  v12 = 0;
LABEL_5:

  return v12;
}

void __57__AXHapticMusicController__fetchUpdatePlayingInformation__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Error fetching now playing info: %@", &v2, 0xCu);
}

@end