@interface VoiceOverController
+ (void)setVoiceOverEnabled:(BOOL)a3;
- (BOOL)_shouldEnableVoiceOverSwitch;
- (BOOL)cachedBrailleDisplayIsPaired:(id)a3;
- (VOSCommandManager)commandManager;
- (VoiceOverController)init;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_generateVOPracticeSpecifiers;
- (id)_generateVOTutorialSpecifiers;
- (id)brailleDisplayNameForSpecifier:(id)a3;
- (id)captionPanelForSpecifier:(id)a3;
- (id)cursorStyleForSpecifier:(id)a3;
- (id)doubleTapInterval:(id)a3;
- (id)navigateImagesPreferenceForSpecifier:(id)a3;
- (id)navigationStyle:(id)a3;
- (id)screenCurtainEnabled:(id)a3;
- (id)soundEffectsEnabled:(id)a3;
- (id)speakingRate:(id)a3;
- (id)speakingRateInRotor:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)voiceOverCursorOptionDescription:(id)a3;
- (id)voiceOverDelayUntilSpeakInterval:(id)a3;
- (id)voiceOverIgnoreTrackpad:(id)a3;
- (id)voiceOverSpeakUnderPointerDescription:(id)a3;
- (id)voiceOverTouchEnabled:(id)a3;
- (void)_bluetoothBrailleDisplayChange;
- (void)_changeVOActivationSpecifierIntoButtonCell:(id)a3;
- (void)_changeVOActivationSpecifierIntoSwitchCell:(id)a3;
- (void)_handleEnablingVoiceOverWithActivationBlock:(id)a3 cancelBlock:(id)a4;
- (void)_manageGestureHelpButton;
- (void)_tipLoaded:(id)a3;
- (void)_traitCollectionDidChange:(id)a3;
- (void)_updateSpecifierItemInfo:(id)a3 parentInfo:(id)a4 index:(int64_t)a5;
- (void)_updateTutorialButtonForOneness;
- (void)_updateVOTTutorialSpecifier:(id)a3;
- (void)cursorStyleSetPreference:(id)a3 specifier:(id)a4;
- (void)dealloc;
- (void)displayVoiceOverTutorialView;
- (void)reload;
- (void)resetVoiceOverSettings:(id)a3;
- (void)setCaptionPanel:(id)a3 specifier:(id)a4;
- (void)setScreenCurtainEnabled:(id)a3 specifier:(id)a4;
- (void)setSoundEffectsEnabled:(id)a3 specifier:(id)a4;
- (void)setSpeakingRate:(id)a3 specifier:(id)a4;
- (void)setSpeakingRateInRotor:(id)a3 specifier:(id)a4;
- (void)setVoiceOverIgnoreTrackpad:(id)a3 specifier:(id)a4;
- (void)setVoiceOverTouchEnabled:(id)a3 specifier:(id)a4;
- (void)startGestureHelp:(id)a3;
- (void)startVoiceOverTutorial:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)voiceOverActivateWorkaround:(id)a3;
@end

@implementation VoiceOverController

- (VOSCommandManager)commandManager
{
  commandManager = self->_commandManager;
  if (!commandManager)
  {
    v4 = [[VOSCommandManager alloc] initPreferringUserProfile];
    v5 = self->_commandManager;
    self->_commandManager = v4;

    commandManager = self->_commandManager;
  }

  return commandManager;
}

- (VoiceOverController)init
{
  v58.receiver = self;
  v58.super_class = VoiceOverController;
  v2 = [(VoiceOverController *)&v58 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _reloadSettings, kAXSVoiceOverTouchEnabledNotification, 0, 1028);
    v4 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v4, v2, _reloadSettings, kAXSVoiceOverTouchEnabledThroughAccessoryNotification, 0, 1028);
    v5 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v5, v2, _reloadSettingsSpeakingRate, @"_AXNotification_VoiceOverDefaultVoiceSelections", 0, 1028);
    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v6, v2, _handleContinuityDisplayStateChanged_0, kAXSContinuityDisplayStateChangedNotification, 0, 1028);
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"_coreBluetoothReady:" name:VOSBluetoothCoreBluetoothManagerReadyNotification object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"_tipLoaded:" name:@"AXTipLoaded" object:0];

    objc_initWeak(&location, v2);
    v9 = +[AXSettings sharedInstance];
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = __27__VoiceOverController_init__block_invoke;
    v55[3] = &unk_255388;
    objc_copyWeak(&v56, &location);
    [v9 registerUpdateBlock:v55 forRetrieveSelector:"voiceOverPitchChangeEnabled" withListener:v2];

    objc_destroyWeak(&v56);
    v10 = +[AXSettings sharedInstance];
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = __27__VoiceOverController_init__block_invoke_2;
    v53[3] = &unk_255388;
    objc_copyWeak(&v54, &location);
    [v10 registerUpdateBlock:v53 forRetrieveSelector:"voiceOverPhoneticsFeedback" withListener:v2];

    objc_destroyWeak(&v54);
    v11 = +[AXSettings sharedInstance];
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = __27__VoiceOverController_init__block_invoke_3;
    v51[3] = &unk_255388;
    objc_copyWeak(&v52, &location);
    [v11 registerUpdateBlock:v51 forRetrieveSelector:"voiceOverHintsEnabled" withListener:v2];

    objc_destroyWeak(&v52);
    v12 = +[AXSettings sharedInstance];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = __27__VoiceOverController_init__block_invoke_4;
    v49[3] = &unk_255388;
    objc_copyWeak(&v50, &location);
    [v12 registerUpdateBlock:v49 forRetrieveSelector:"voiceOverNavigateImagesOption" withListener:v2];

    objc_destroyWeak(&v50);
    v13 = +[AXSettings sharedInstance];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = __27__VoiceOverController_init__block_invoke_5;
    v47[3] = &unk_255388;
    objc_copyWeak(&v48, &location);
    [v13 registerUpdateBlock:v47 forRetrieveSelector:"voiceOverActivationWorkaround" withListener:v2];

    objc_destroyWeak(&v48);
    v14 = +[AXSettings sharedInstance];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = __27__VoiceOverController_init__block_invoke_6;
    v45[3] = &unk_255388;
    objc_copyWeak(&v46, &location);
    [v14 registerUpdateBlock:v45 forRetrieveSelector:"voiceOverSoundEffectsEnabled" withListener:v2];

    objc_destroyWeak(&v46);
    v15 = +[AXSettings sharedInstance];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = __27__VoiceOverController_init__block_invoke_7;
    v43[3] = &unk_255388;
    objc_copyWeak(&v44, &location);
    [v15 registerUpdateBlock:v43 forRetrieveSelector:"voiceOverDoubleTapInterval" withListener:v2];

    objc_destroyWeak(&v44);
    v16 = +[AXSettings sharedInstance];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = __27__VoiceOverController_init__block_invoke_8;
    v41[3] = &unk_255388;
    objc_copyWeak(&v42, &location);
    [v16 registerUpdateBlock:v41 forRetrieveSelector:"voiceOverKeyboardModifierChoice" withListener:v2];

    objc_destroyWeak(&v42);
    v17 = +[AXSettings sharedInstance];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = __27__VoiceOverController_init__block_invoke_9;
    v39[3] = &unk_255388;
    objc_copyWeak(&v40, &location);
    [v17 registerUpdateBlock:v39 forRetrieveSelector:"voiceOverNavigationStyle" withListener:v2];

    objc_destroyWeak(&v40);
    v18 = +[AXSettings sharedInstance];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = __27__VoiceOverController_init__block_invoke_10;
    v37[3] = &unk_255388;
    objc_copyWeak(&v38, &location);
    [v18 registerUpdateBlock:v37 forRetrieveSelector:"voiceOverBrailleDisplays" withListener:v2];

    objc_destroyWeak(&v38);
    v19 = +[AXSettings sharedInstance];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = __27__VoiceOverController_init__block_invoke_11;
    v35[3] = &unk_255388;
    objc_copyWeak(&v36, &location);
    [v19 registerUpdateBlock:v35 forRetrieveSelector:"voiceOverSpeakingRate" withListener:v2];

    objc_destroyWeak(&v36);
    v20 = +[AXSettings sharedInstance];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = __27__VoiceOverController_init__block_invoke_12;
    v33[3] = &unk_255388;
    objc_copyWeak(&v34, &location);
    [v20 registerUpdateBlock:v33 forRetrieveSelector:"voiceOverVoiceRotors" withListener:v2];

    objc_destroyWeak(&v34);
    v21 = +[AXSettings sharedInstance];
    v28 = _NSConcreteStackBlock;
    v29 = 3221225472;
    v30 = __27__VoiceOverController_init__block_invoke_13;
    v31 = &unk_255388;
    objc_copyWeak(&v32, &location);
    [v21 registerUpdateBlock:&v28 forRetrieveSelector:"voiceOverCurrentRotorVoiceIdentifier" withListener:v2];

    objc_destroyWeak(&v32);
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, v2, _reloadSettings, kAXSAssistiveTouchScannerEnabledNotification, 0, 1028);
    v23 = [AXSettings sharedInstance:v28];
    v24 = [v23 laserEnabled];

    if (v24)
    {
      v25 = +[AXPointerDeviceManager sharedInstance];
      [v25 addObserver:v2];
    }

    v26 = v2;
    objc_destroyWeak(&location);
  }

  return v2;
}

void __27__VoiceOverController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reload];
}

void __27__VoiceOverController_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reload];
}

void __27__VoiceOverController_init__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reload];
}

void __27__VoiceOverController_init__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reload];
}

void __27__VoiceOverController_init__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reload];
}

void __27__VoiceOverController_init__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reload];
}

void __27__VoiceOverController_init__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reload];
}

void __27__VoiceOverController_init__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reload];
}

void __27__VoiceOverController_init__block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reload];
}

void __27__VoiceOverController_init__block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reload];
}

void __27__VoiceOverController_init__block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reload];
}

void __27__VoiceOverController_init__block_invoke_12(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reload];
}

void __27__VoiceOverController_init__block_invoke_13(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reload];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveEveryObserver(LocalCenter, self);
  v5 = +[AXPointerDeviceManager sharedInstance];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = VoiceOverController;
  [(VoiceOverController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = VoiceOverController;
  [(VoiceOverController *)&v12 viewDidLoad];
  objc_initWeak(&location, self);
  v13 = objc_opt_class();
  v3 = [NSArray arrayWithObjects:&v13 count:1];
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = __34__VoiceOverController_viewDidLoad__block_invoke;
  v9 = &unk_255658;
  objc_copyWeak(&v10, &location);
  v4 = [(VoiceOverController *)self registerForTraitChanges:v3 withHandler:&v6];

  v5 = [VOSBluetoothManager sharedInstance:v6];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __34__VoiceOverController_viewDidLoad__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _traitCollectionDidChange:v4];
}

- (void)_tipLoaded:(id)a3
{
  if (!self->_tipLoaded)
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

void __34__VoiceOverController__tipLoaded___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) specifierForID:@"VO_TipKit"];
  v3 = [*(a1 + 32) cellForSpecifier:v2];
  [v3 instrinsicContentHeight];
  *(*(a1 + 32) + 184) = v4;
  [*(a1 + 32) reloadSpecifier:v2];
  *(*(a1 + 32) + 177) = 1;
  v5 = AXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSNumber numberWithDouble:*(*(a1 + 32) + 184)];
    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Tip loaded, resetting specifier, height: %@ %@", &v7, 0x16u);
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = VoiceOverController;
  [(VoiceOverController *)&v4 viewWillAppear:a3];
  [(VoiceOverController *)self _updateSpecifiers];
}

- (void)_traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = [(VoiceOverController *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  if (v6 != v7)
  {

    [(VoiceOverController *)self _updateSpecifiers];
  }
}

- (void)_manageGestureHelpButton
{
  if (_AXSVoiceOverTouchEnabled())
  {
    v3 = [(VoiceOverController *)self specifierForID:@"VoiceOverTouchGestureHelpEnabled"];

    if (!v3)
    {
      [(VoiceOverController *)self beginUpdates];
      v4 = [(VoiceOverController *)self _generateVOPracticeSpecifiers];
      [(VoiceOverController *)self insertContiguousSpecifiers:v4 afterSpecifierID:@"VoiceOverTouchEnabled"];

      [(VoiceOverController *)self endUpdates];
    }
  }

  else
  {
    v5 = [(VoiceOverController *)self specifierForID:@"VoiceOverTouchGestureHelpEnabledGroup"];
    v6 = [(VoiceOverController *)self specifierForID:@"VoiceOverTouchGestureHelpEnabled"];
    v7 = v6;
    if (v5 && v6)
    {
      [(VoiceOverController *)self beginUpdates];
      v9[0] = v5;
      v9[1] = v7;
      v8 = [NSArray arrayWithObjects:v9 count:2];
      [(VoiceOverController *)self removeContiguousSpecifiers:v8 animated:1];

      [(VoiceOverController *)self endUpdates];
    }
  }
}

- (id)_generateVOPracticeSpecifiers
{
  v3 = +[PSSpecifier emptyGroupSpecifier];
  v4 = PSIDKey;
  [v3 setProperty:@"VoiceOverTouchGestureHelpEnabledGroup" forKey:PSIDKey];
  v5 = settingsLocString(@"VOICEOVER_GESTURE_HELP_BUTTON_TITLE", @"VoiceOverSettings");
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v6 setProperty:@"VoiceOverTouchGestureHelpEnabled" forKey:v4];
  [v6 setButtonAction:"startGestureHelp:"];
  v9[0] = v3;
  v9[1] = v6;
  v7 = [NSArray arrayWithObjects:v9 count:2];

  return v7;
}

- (id)_generateVOTutorialSpecifiers
{
  v3 = +[PSSpecifier emptyGroupSpecifier];
  v4 = PSIDKey;
  [v3 setProperty:@"VoiceOverTouchTutorialEnabledGroup" forKey:PSIDKey];
  v5 = settingsLocString(@"VOICEOVER_TUTORIAL_BUTTON_TITLE", @"VoiceOverSettings");
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v6 setProperty:@"VoiceOverTouchTutorialEnabled" forKey:v4];
  [v6 setButtonAction:"startVoiceOverTutorial:"];
  v7 = +[AXSpringBoardServer server];
  v8 = [v7 isContinuitySessionActive];

  v9 = [NSNumber numberWithBool:v8 ^ 1];
  [v6 setProperty:v9 forKey:PSEnabledKey];

  v12[0] = v3;
  v12[1] = v6;
  v10 = [NSArray arrayWithObjects:v12 count:2];

  return v10;
}

- (BOOL)_shouldEnableVoiceOverSwitch
{
  if (_AXSAssistiveTouchScannerEnabled())
  {
    return 0;
  }

  if (_AXSVoiceOverTouchEnabled())
  {
    return _AXSVoiceOverTouchEnabledThroughAccessory() == 0;
  }

  return 1;
}

- (void)reload
{
  if (self->_ignoreNextReload)
  {
    self->_ignoreNextReload = 0;
  }

  else
  {
    v3 = +[AXSettings sharedInstance];
    v4 = [v3 voiceOverActivationWorkaround];

    if ((v4 - 1) <= 1)
    {
      v5 = _AXSVoiceOverTouchEnabled();
      v6 = [(VoiceOverController *)self specifierForID:@"VoiceOverTouchEnabled"];
      if (v5)
      {
        [(VoiceOverController *)self _changeVOActivationSpecifierIntoSwitchCell:v6];
      }

      else
      {
        [(VoiceOverController *)self _changeVOActivationSpecifierIntoButtonCell:v6];
      }
    }

    v7 = [(VoiceOverController *)self specifierForID:@"VoiceOverTouchEnabled"];
    v8 = [NSNumber numberWithBool:[(VoiceOverController *)self _shouldEnableVoiceOverSwitch]];
    [v7 setProperty:v8 forKey:PSEnabledKey];

    v9.receiver = self;
    v9.super_class = VoiceOverController;
    [(VoiceOverController *)&v9 reload];
    [(VoiceOverController *)self _manageGestureHelpButton];
    [(VoiceOverController *)self _manageVoiceOverTutorialButton];
  }
}

- (void)_bluetoothBrailleDisplayChange
{
  v3 = AXLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "BRAILLE DISPLAY CHANGE: ", v5, 2u);
  }

  v4 = [(VoiceOverController *)self specifierForKey:@"braille"];
  [(VoiceOverController *)self reloadSpecifier:v4 animated:0];
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v77 = OBJC_IVAR___PSListController__specifiers;
    v88 = [objc_allocWithZone(NSMutableArray) init];
    val = self;
    v4 = [(VoiceOverController *)self loadSpecifiersFromPlistName:@"VoiceOverSettings" target:self];
    v96 = AXHasCapability();
    v94 = [NSSet setWithArray:&off_27C980];
    v91 = [NSSet setWithArray:&off_27C998];
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    obj = v4;
    v97 = [obj countByEnumeratingWithState:&v101 objects:v105 count:16];
    if (v97)
    {
      v95 = *v102;
      v93 = PSKeyNameKey;
      v92 = PSSpecifierIsSearchableKey;
      v79 = PSCellClassKey;
      v86 = PSFooterTextGroupKey;
      v87 = PSEnabledKey;
      v84 = PSSliderLeftImageKey;
      v85 = PSSliderRightImageKey;
      v82 = PSSliderSegmentCount;
      v83 = PSSliderIsSegmented;
      v80 = PSSliderSnapsToSegment;
      v81 = PSSliderLocksToSegment;
      v78 = PSDetailControllerClassKey;
      v5 = PSIDKey;
      do
      {
        for (i = 0; i != v97; i = i + 1)
        {
          if (*v102 != v95)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v101 + 1) + 8 * i);
          if ((v96 & 1) == 0)
          {
            v8 = [*(*(&v101 + 1) + 8 * i) propertyForKey:v93];
            v9 = [v8 isEqualToString:@"NeuralVoiceOver"];

            if (v9)
            {
              [v7 setProperty:&__kCFBooleanFalse forKey:v92];
              continue;
            }
          }

          v10 = [v7 propertyForKey:v5];
          if ([v94 containsObject:v10] && (AXDeviceSupportsVoicesRotor() & 1) == 0 || objc_msgSend(v91, "containsObject:", v10) && AXDeviceSupportsVoicesRotor())
          {
            [v7 setProperty:&__kCFBooleanFalse forKey:v92];
          }

          else if (![v10 isEqualToString:@"VoiceOverDelayUntilSpeak"] || AXHasCapability())
          {
            v11 = +[NSUserDefaults standardUserDefaults];
            v12 = [v11 BOOLForKey:@"LiveRecognitionTipKitSeen_18_0"];

            if (!v12 || ([v7 propertyForKey:v5], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", @"VO_TipKitGroup"), v13, (v14 & 1) == 0))
            {
              v15 = [v7 propertyForKey:v5];
              v16 = [v15 isEqualToString:@"VO_TipKit"];

              if (!v16)
              {
                goto LABEL_28;
              }

              if ((v12 & 1) == 0)
              {
                objc_initWeak(&location, val);
                [v7 setProperty:objc_opt_class() forKey:v79];
                v17 = settingsLocString(@"VO_REAL_WORLD_DETECTION", @"VoiceOverSettings");
                [v7 setProperty:v17 forKey:@"Title"];

                v18 = AXLocStringKeyForModel();
                v19 = settingsLocString(v18, @"VoiceOverSettings");
                [v7 setProperty:v19 forKey:@"Description"];

                [v7 setProperty:&off_279918 forKey:@"tipType"];
                if (UIAccessibilityIsVoiceOverRunning())
                {
                  v20 = settingsLocString(@"LiveRecognition_Tip_URLText", @"VoiceOverSettings");
                  [v7 setProperty:v20 forKey:@"URLText"];
                }

                [v7 setProperty:&__block_literal_global_0 forKey:@"ButtonCallback"];
                v98[0] = _NSConcreteStackBlock;
                v98[1] = 3221225472;
                v98[2] = __33__VoiceOverController_specifiers__block_invoke_3;
                v98[3] = &unk_255388;
                objc_copyWeak(&v99, &location);
                v21 = objc_retainBlock(v98);
                [v7 setProperty:v21 forKey:@"CloseCallback"];

                if (_UISolariumEnabled())
                {
                  v22 = [NSBundle bundleForClass:objc_opt_class()];
                  [UIImage imageNamed:@"live-recognition-tip-new" inBundle:v22];
                }

                else
                {
                  v22 = [NSBundle bundleForClass:objc_opt_class()];
                  [UIImage imageNamed:@"live-recognition-tip" inBundle:v22];
                }
                v23 = ;
                [v7 setProperty:v23 forKey:@"Icon"];

                [v7 setProperty:&__kCFBooleanTrue forKey:@"IconIgnoresInvertColors"];
                objc_destroyWeak(&v99);
                objc_destroyWeak(&location);
LABEL_28:
                v24 = [v7 propertyForKey:v5];
                v25 = [v24 isEqualToString:@"QuickSettingsGroup"];

                if (v25)
                {
                  v26 = +[VOSCommandResolver resolverForCurrentHost];
                  v27 = [[VOSCommandManager alloc] initPreferringUserProfile];
                  v28 = +[VOSCommand ToggleSettingsHUD];
                  v29 = [v27 gestureBindingsForCommand:v28 withResolver:v26];
                  v30 = [v29 anyObject];

                  if (v30)
                  {
                    v31 = settingsLocString(@"QUICK_SETTINGS_USAGE_HINT", @"VoiceOverSettings");
                    v32 = [v30 localizedName];
                    v33 = [NSString localizedStringWithFormat:v31, v32];

                    [v7 setProperty:v33 forKey:v86];
                  }
                }

                v34 = [v7 propertyForKey:v5];
                v35 = [v34 isEqualToString:@"NavigationStyle"];

                if (!v35 || _os_feature_enabled_impl())
                {
                  [v88 addObject:v7];
                  v36 = [v7 propertyForKey:v5];
                  v37 = [v36 isEqualToString:@"VoiceOverTouchEnabled"];

                  if (v37)
                  {
                    v38 = [NSNumber numberWithBool:[(VoiceOverController *)val _shouldEnableVoiceOverSwitch]];
                    [v7 setProperty:v38 forKey:v87];

                    v39 = +[AXSettings sharedInstance];
                    v40 = [v39 voiceOverActivationWorkaround];

                    if ((v40 - 1) > 1)
                    {
                      if (v40 == &dword_0 + 3)
                      {
                        v41 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:0 edit:0];
                        v42 = settingsLocString(@"VOICEOVER_ACTIVATION_DISABLED", @"VoiceOverSettings");
                        [v41 setProperty:v42 forKey:v86];

                        [v88 insertObject:v41 atIndex:0];
                        [v7 setProperty:&__kCFBooleanFalse forKey:v87];
                        [v88 removeObject:v7];
                        [v88 insertObject:v7 atIndex:1];
                      }
                    }

                    else if (!_AXSVoiceOverTouchEnabled())
                    {
                      [(VoiceOverController *)val _changeVOActivationSpecifierIntoButtonCell:v7];
                    }
                  }

                  v43 = [v7 propertyForKey:v93];
                  v44 = [v43 isEqualToString:@"VoiceOverTouchSpeakingRate"];

                  if (v44)
                  {
                    v45 = AXHareImage();
                    [v7 setProperty:v45 forKey:v85];

                    v46 = AXTortoiseImage();
                    [v7 setProperty:v46 forKey:v84];

                    [v7 setProperty:&__kCFBooleanTrue forKey:v83];
                    [v7 setProperty:&off_279930 forKey:v82];
                    [v7 setProperty:&__kCFBooleanFalse forKey:v81];
                    [v7 setProperty:&__kCFBooleanTrue forKey:v80];
                  }

                  v47 = [v7 propertyForKey:v5];
                  v48 = [v47 isEqualToString:@"VOEnabledGroup"];

                  if (v48)
                  {
                    [(VoiceOverController *)val _updateVOTTutorialSpecifier:v7];
                  }

                  v49 = [v7 propertyForKey:v5];
                  if ([v49 isEqualToString:@"Braille"])
                  {
                    v50 = [(VoiceOverController *)val inSetup];

                    if (v50)
                    {
                      [v7 setProperty:objc_opt_class() forKey:v78];
                    }
                  }

                  else
                  {
                  }
                }
              }
            }
          }
        }

        v97 = [obj countByEnumeratingWithState:&v101 objects:v105 count:16];
      }

      while (v97);
    }

    v51 = +[AXSettings sharedInstance];
    v52 = [v51 laserEnabled];

    if (v52)
    {
      v53 = +[AXPointerDeviceManager sharedInstance];
      v54 = [v53 connectedDevices];
      v55 = [v54 count] == 0;

      if (!v55)
      {
        v56 = [v88 lastObject];
        v57 = [v56 cellType];

        if (v57)
        {
          v58 = +[PSSpecifier emptyGroupSpecifier];
          [v58 setProperty:@"pointerGroup" forKey:PSIDKey];
          [v88 addObject:v58];
        }

        v59 = v57 == 0;
        v60 = [v88 lastObject];
        v61 = settingsLocString(@"VoiceOverPointerSectionTitle", @"Accessibility-hello");
        [v60 setName:v61];

        v62 = settingsLocString(@"VoiceOverCursorOption", @"Accessibility-hello");
        v63 = [PSSpecifier preferenceSpecifierNamed:v62 target:val set:0 get:"voiceOverCursorOptionDescription:" detail:objc_opt_class() cell:2 edit:0];

        [v88 addObject:v63];
        v64 = settingsLocString(@"VoiceOverSpeakUnderPointer", @"Accessibility-hello");
        v65 = [PSSpecifier preferenceSpecifierNamed:v64 target:val set:0 get:"voiceOverSpeakUnderPointerDescription:" detail:objc_opt_class() cell:2 edit:0];

        [v88 addObject:v65];
        v66 = settingsLocString(@"IgnoreTrackpad", @"Accessibility-hello");
        v67 = [PSSpecifier preferenceSpecifierNamed:v66 target:val set:"setVoiceOverIgnoreTrackpad:specifier:" get:"voiceOverIgnoreTrackpad:" detail:0 cell:6 edit:0];

        [v88 addObject:v67];
        if (v59)
        {
          v68 = +[PSSpecifier emptyGroupSpecifier];
          [v68 setProperty:@"lastGroup" forKey:PSIDKey];
          [v88 addObject:v68];
        }
      }
    }

    [(VoiceOverController *)val filterBuddy:v88];
    v69 = [v88 indexOfSpecifierWithID:@"VoiceOverTouchEnabled"];
    v70 = [(VoiceOverController *)val _generateVOTutorialSpecifiers];
    [v88 insertObjects:v70 atIndex:v69 + 1];

    if (_AXSVoiceOverTouchEnabled())
    {
      v71 = [(VoiceOverController *)val _generateVOPracticeSpecifiers];
      [v88 insertObjects:v71 atIndex:v69 + 1];
    }

    v72 = settingsLocString(@"VOICEOVER_RESET_SETTINGS_BUTTON", @"VoiceOverSettings");
    v73 = [PSSpecifier deleteButtonSpecifierWithName:v72 target:val action:"resetVoiceOverSettings:"];

    [v73 setProperty:@"resetSettingsButton" forKey:PSIDKey];
    v74 = [NSNumber numberWithBool:1];
    [v73 setProperty:v74 forKey:PSConfirmationDestructiveKey];

    [v73 setProperty:&__kCFBooleanFalse forKey:AXInBuddySetupKey];
    [v88 addObject:v73];
    v75 = *&val->AXUISettingsBaseListController_opaque[v77];
    *&val->AXUISettingsBaseListController_opaque[v77] = v88;

    v3 = *&val->AXUISettingsBaseListController_opaque[v77];
  }

  return v3;
}

void __33__VoiceOverController_specifiers__block_invoke_2(id a1)
{
  v1 = +[AXPISystemActionHelper sharedInstance];
  [v1 activateDetectionMode];
}

void __33__VoiceOverController_specifiers__block_invoke_3(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockAsynchronouslyOnMainThread();
  objc_destroyWeak(&v1);
}

void __33__VoiceOverController_specifiers__block_invoke_4(uint64_t a1)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 setBool:1 forKey:@"LiveRecognitionTipKitSeen_18_0"];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];

  v4 = UIAccessibilityLayoutChangedNotification;

  UIAccessibilityPostNotification(v4, 0);
}

- (void)_updateTutorialButtonForOneness
{
  v6 = [(VoiceOverController *)self specifierForID:@"VoiceOverTouchTutorialEnabled"];
  v3 = +[AXSpringBoardServer server];
  v4 = [v3 isContinuitySessionActive];

  v5 = [NSNumber numberWithBool:v4 ^ 1];
  [v6 setProperty:v5 forKey:PSEnabledKey];

  [(VoiceOverController *)self reloadSpecifier:v6];
}

- (void)setVoiceOverIgnoreTrackpad:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverIgnoreTrackpad:v4];
}

- (id)voiceOverIgnoreTrackpad:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverIgnoreTrackpad]);

  return v4;
}

- (id)voiceOverCursorOptionDescription:(id)a3
{
  v3 = _AXSPointerVoiceOverCursorOption();

  return [AXPointerControllerVoiceOverCursorOptions localizedNameForVoiceOverCursorOption:v3];
}

- (id)voiceOverSpeakUnderPointerDescription:(id)a3
{
  if (_AXSVoiceOverSpeakUnderPointerEnabled())
  {
    _AXSVoiceOverSpeakUnderPointerDelay();
    AXLocalizedTimeSummary();
  }

  else
  {
    settingsLocString(@"VoiceOverSpeakUnderPointerDisabled", @"Accessibility-hello");
  }
  v3 = ;

  return v3;
}

- (void)_updateSpecifierItemInfo:(id)a3 parentInfo:(id)a4 index:(int64_t)a5
{
  v6 = a3;
  v7 = a4;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = [&off_27C9B0 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    v19 = v23;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(&off_27C9B0);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = [v6 objectForKey:v12];
        if ([&off_27C9C8 containsObject:v13])
        {
          v14 = [v6 mutableCopy];
          v15 = [NSString stringWithFormat:@"%@_IPAD", v13, v19];
          [v14 setObject:v15 forKey:v12];
        }

        else
        {
          v14 = 0;
        }

        v16 = [v6 objectForKeyedSubscript:@"additionalContent"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = [v16 mutableCopy];
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v23[0] = __65__VoiceOverController__updateSpecifierItemInfo_parentInfo_index___block_invoke;
          v23[1] = &unk_2556C0;
          v23[2] = self;
          v24 = v17;
          v18 = v17;
          [v18 enumerateObjectsUsingBlock:v22];
          if (!v14)
          {
            v14 = [v6 mutableCopy];
          }

          [v14 setObject:v18 forKey:@"additionalContent"];
        }

        if (v14)
        {
          [v7 replaceObjectAtIndex:a5 withObject:v14];
        }
      }

      v9 = [&off_27C9B0 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }
}

- (void)_updateVOTTutorialSpecifier:(id)a3
{
  v4 = a3;
  v5 = [v4 propertyForKey:@"content"];
  v6 = [v5 mutableCopy];

  if (AXDeviceIsPad())
  {
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = __51__VoiceOverController__updateVOTTutorialSpecifier___block_invoke;
    v49[3] = &unk_2556C0;
    v49[4] = self;
    v50 = v6;
    [v50 enumerateObjectsUsingBlock:v49];
  }

  else
  {
    if (AXDeviceHasHomeButton())
    {
      v7 = &__block_literal_global_587;
LABEL_9:
      v9 = [v6 indexesOfObjectsPassingTest:v7];
      [v6 removeObjectsAtIndexes:v9];

      goto LABEL_10;
    }

    v8 = [v6 indexesOfObjectsPassingTest:&__block_literal_global_577];
    [v6 removeObjectsAtIndexes:v8];
  }

  if (!MGGetBoolAnswer() || !SBSIsReachabilityEnabled())
  {
    v7 = &__block_literal_global_582;
    goto LABEL_9;
  }

LABEL_10:
  if ([v6 count] == &dword_4)
  {
    v39 = v6;
    v40 = v4;
    v10 = AXTeachableFeatureVoiceOver;
    v11 = [AXTeachableMomentsManager teachableItemsForFeature:AXTeachableFeatureVoiceOver];
    v12 = AXTeachableFeatureBraille;
    v13 = [AXTeachableMomentsManager teachableItemsForFeature:AXTeachableFeatureBraille];
    v14 = objc_opt_new();
    if ([v11 count])
    {
      v38 = v12;
      v61[0] = @"sectionLabel";
      v15 = [AXTeachableMomentsManager notificationTitleForFeature:v10];
      v61[1] = @"alreadyLocalized";
      v62[0] = v15;
      v62[1] = &__kCFBooleanTrue;
      v16 = [NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:2];
      [v14 addObject:v16];

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v17 = v11;
      v18 = [v17 countByEnumeratingWithState:&v45 objects:v60 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v46;
        do
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v46 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v45 + 1) + 8 * i);
            v58[0] = @"headerLabel";
            v23 = [v22 itemTitle];
            v59[0] = v23;
            v58[1] = @"contentLabel";
            v24 = [v22 itemDescription];
            v58[2] = @"alreadyLocalized";
            v59[1] = v24;
            v59[2] = &__kCFBooleanTrue;
            v25 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:3];
            [v14 addObject:v25];
          }

          v19 = [v17 countByEnumeratingWithState:&v45 objects:v60 count:16];
        }

        while (v19);
      }

      v12 = v38;
    }

    if ([v13 count])
    {
      v56[0] = @"sectionLabel";
      v26 = [AXTeachableMomentsManager notificationTitleForFeature:v12];
      v56[1] = @"alreadyLocalized";
      v57[0] = v26;
      v57[1] = &__kCFBooleanTrue;
      v27 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:2];
      [v14 addObject:v27];

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v28 = v13;
      v29 = [v28 countByEnumeratingWithState:&v41 objects:v55 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v42;
        do
        {
          for (j = 0; j != v30; j = j + 1)
          {
            if (*v42 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v41 + 1) + 8 * j);
            v53[0] = @"headerLabel";
            v34 = [v33 itemTitle];
            v54[0] = v34;
            v53[1] = @"contentLabel";
            v35 = [v33 itemDescription];
            v53[2] = @"alreadyLocalized";
            v54[1] = v35;
            v54[2] = &__kCFBooleanTrue;
            v36 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:3];
            [v14 addObject:v36];
          }

          v30 = [v28 countByEnumeratingWithState:&v41 objects:v55 count:16];
        }

        while (v30);
      }
    }

    v6 = v39;
    if ([v14 count])
    {
      v51[0] = @"moreLabel";
      v51[1] = @"additionalTitleLabel";
      v52[0] = @"VoiceOverTouchWhatsNewLabel";
      v52[1] = @"VOICEOVER_TITLE";
      v51[2] = @"additionalContent";
      v51[3] = @"symbolName";
      v52[2] = v14;
      v52[3] = @"voiceover";
      v37 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:4];
      [v39 addObject:v37];
    }

    v4 = v40;
  }

  [v4 setProperty:v6 forKey:@"content"];
}

BOOL __51__VoiceOverController__updateVOTTutorialSpecifier___block_invoke_2(id a1, NSDictionary *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(NSDictionary *)a2 objectForKey:@"contentLabel", a4];
  v5 = [v4 isEqualToString:@"DOCK_INSTRUCTION"];

  return v5;
}

BOOL __51__VoiceOverController__updateVOTTutorialSpecifier___block_invoke_3(id a1, NSDictionary *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(NSDictionary *)a2 objectForKey:@"contentLabel", a4];
  v5 = [v4 isEqualToString:@"REACHABILITY_INSTRUCTION"];

  return v5;
}

BOOL __51__VoiceOverController__updateVOTTutorialSpecifier___block_invoke_4(id a1, NSDictionary *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(NSDictionary *)a2 objectForKey:@"contentLabel", a4];
  if ([v4 isEqualToString:@"HOME_INSTRUCTION"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"APP_SWITCHER_INSTRUCTION") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"REACHABILITY_INSTRUCTION") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"CC_SWITCHER_INSTRUCTION") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"NC_SWITCHER_INSTRUCTION"))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:@"DOCK_INSTRUCTION"];
  }

  return v5;
}

- (void)_changeVOActivationSpecifierIntoButtonCell:(id)a3
{
  if (*(a3 + OBJC_IVAR___PSSpecifier_cellType) != 13)
  {
    *(a3 + OBJC_IVAR___PSSpecifier_cellType) = 13;
    v4 = a3;
    [v4 setButtonAction:"voiceOverActivateWorkaround:"];
    [v4 setProperty:@"PSButtonCell" forKey:PSTableCellClassKey];
    [v4 setProperty:&off_279948 forKey:@"mode"];
    [v4 removePropertyForKey:PSGetterKey];
    [v4 removePropertyForKey:PSSetterKey];
    v5 = NSStringFromSelector([v4 buttonAction]);
    [v4 setProperty:v5 forKey:PSButtonActionKey];
  }
}

- (void)_changeVOActivationSpecifierIntoSwitchCell:(id)a3
{
  if (*(a3 + OBJC_IVAR___PSSpecifier_cellType) != 6)
  {
    *(a3 + OBJC_IVAR___PSSpecifier_cellType) = 6;
    *(a3 + OBJC_IVAR___PSSpecifier_getter) = "voiceOverTouchEnabled:";
    *(a3 + OBJC_IVAR___PSSpecifier_setter) = "setVoiceOverTouchEnabled:specifier:";
    v5 = a3;
    [v5 setTarget:self];
    [v5 setProperty:@"PSSwitchCell" forKey:PSTableCellClassKey];
    v6 = NSStringFromSelector(*&v5[OBJC_IVAR___PSSpecifier_getter]);
    [v5 setProperty:v6 forKey:PSGetterKey];

    v7 = NSStringFromSelector(*&v5[OBJC_IVAR___PSSpecifier_setter]);
    [v5 setProperty:v7 forKey:PSSetterKey];
  }
}

- (void)voiceOverActivateWorkaround:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 voiceOverActivationWorkaround];

  if (v4 == &dword_0 + 2)
  {
    v5 = &AXStartListeningForVoiceOverVibrationActivationNotification;
  }

  else
  {
    if (v4 != &dword_0 + 1)
    {
      return;
    }

    v5 = &AXStartVoiceOverSwipeDetectionActivationNotification;
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v7 = *v5;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v7, 0, 0, 1u);
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(VoiceOverController *)self specifierForIndexPath:v7];
  v9 = [v8 propertyForKey:PSCellClassKey];
  v10 = [v9 isEqual:objc_opt_class()];

  if (v10)
  {
    tipHeight = self->_tipHeight;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = VoiceOverController;
    [(VoiceOverController *)&v14 tableView:v6 heightForRowAtIndexPath:v7];
    tipHeight = v12;
  }

  return tipHeight;
}

+ (void)setVoiceOverEnabled:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    if (+[UIApplication isRunningInStoreDemoMode])
    {
      _AXSVoiceOverTouchSetUsageConfirmed();
    }

    _AXSVoiceOverTouchUserHasReadNoHomeButtonGestureDescription();
    _AXSVoiceOverTouchSetEnabled();
    _AXSVoiceOverTouchSetUIEnabled();
  }

  else
  {
    _AXSVoiceOverTouchSetEnabled();
    _AXSVoiceOverTouchSetUIEnabled();
    if (!_AXSCanDisableApplicationAccessibility())
    {
      return;
    }
  }

  __AXSApplicationAccessibilitySetEnabled(v3);
}

- (void)_handleEnablingVoiceOverWithActivationBlock:(id)a3 cancelBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((+[AXLanguageManager voiceOverSupportedInCurrentLanguage]& 1) != 0 || _AXSVoiceOverTouchUsageConfirmed())
  {
    v6[2](v6);
  }

  else
  {
    v8 = settingsLocString(@"VoiceOverNotSupportedInLanguageTitle", @"VoiceOverSettings");
    v9 = settingsLocString(@"VoiceOverNotSupportedInLanguageMessage", @"VoiceOverSettings");
    v10 = +[AXLanguageManager sharedInstance];
    v11 = [v10 dialectForSystemLanguage];
    v12 = [v11 languageNameInNativeLocale];
    v13 = [NSString stringWithFormat:v9, v12];
    v14 = [UIAlertController alertControllerWithTitle:v8 message:v13 preferredStyle:1];

    v15 = settingsLocString(@"CANCEL", @"Accessibility");
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = __79__VoiceOverController__handleEnablingVoiceOverWithActivationBlock_cancelBlock___block_invoke;
    v24[3] = &unk_2554C0;
    v25 = v7;
    v16 = [UIAlertAction actionWithTitle:v15 style:1 handler:v24];

    [v14 addAction:v16];
    v17 = settingsLocString(@"OK", @"Accessibility");
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = __79__VoiceOverController__handleEnablingVoiceOverWithActivationBlock_cancelBlock___block_invoke_2;
    v22[3] = &unk_2554C0;
    v23 = v6;
    v18 = [UIAlertAction actionWithTitle:v17 style:0 handler:v22];

    [v14 addAction:v18];
    v19 = [(VoiceOverController *)self view];
    v20 = [v19 window];
    v21 = [v20 rootViewController];
    [v21 presentViewController:v14 animated:1 completion:0];
  }
}

- (void)setVoiceOverTouchEnabled:(id)a3 specifier:(id)a4
{
  v5 = [a3 BOOLValue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __58__VoiceOverController_setVoiceOverTouchEnabled_specifier___block_invoke;
  v15[3] = &unk_2554E8;
  v15[4] = self;
  v16 = v5;
  v6 = objc_retainBlock(v15);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __58__VoiceOverController_setVoiceOverTouchEnabled_specifier___block_invoke_2;
  v13[3] = &__block_descriptor_33_e5_v8__0l;
  v14 = v5;
  v7 = objc_retainBlock(v13);
  if (([(VoiceOverController *)self inSetup]& 1) != 0)
  {
    [(VoiceOverController *)self _handleEnablingVoiceOverWithActivationBlock:v7 cancelBlock:v6];
  }

  else
  {
    v8 = [(VoiceOverController *)self parentController];
    v9 = settingsLocString(@"CONFIRM_VOT_REMOVAL", @"Accessibility");
    v10 = kAXSVoiceOverTouchEnabledByiTunesPreference;
    v11 = [(VoiceOverController *)self view];
    v12 = [v11 window];
    [v8 confirmDisablingWithString:v9 forKey:v10 confirmedBlock:v7 canceledBlock:v6 inWindow:v12];
  }
}

void __58__VoiceOverController_setVoiceOverTouchEnabled_specifier___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) specifierForKey:@"VoiceOverTouchEnabled"];
  v2 = [NSNumber numberWithInt:*(a1 + 40) ^ 1u];
  [v3 setProperty:v2 forKey:PSValueKey];

  [*(a1 + 32) reloadSpecifier:v3];
}

- (void)startGestureHelp:(id)a3
{
  if (!self->_gestureHelpViewController)
  {
    v4 = [objc_allocWithZone(VoiceOverGestureHelpViewController) init];
    gestureHelpViewController = self->_gestureHelpViewController;
    self->_gestureHelpViewController = v4;
  }

  v6 = [[VoiceOverGestureHelpNavigationController alloc] initWithRootViewController:self->_gestureHelpViewController];
  [(VoiceOverController *)self presentViewController:v6 animated:1 completion:&__block_literal_global_657];
}

- (void)displayVoiceOverTutorialView
{
  if (AXDeviceSupportsVoiceOverOnboarding())
  {
    v2 = +[AXSpringBoardServer server];
    [v2 launchOnboardingViewService:@"voiceover"];
  }
}

- (void)startVoiceOverTutorial:(id)a3
{
  if (_AXSVoiceOverTouchEnabled() || AXProcessIsSetup())
  {

    [(VoiceOverController *)self displayVoiceOverTutorialView];
  }

  else
  {
    v4 = settingsLocString(@"VOICEOVER_TUTORIAL_ALERT_TITLE", @"VoiceOverSettings");
    v5 = settingsLocString(@"VOICEOVER_TUTORIAL_ALERT_TEXT", @"VoiceOverSettings");
    v6 = [UIAlertController alertControllerWithTitle:v4 message:v5 preferredStyle:0];

    v7 = settingsLocString(@"VOICEOVER_TUTORIAL_ALERT_LAUNCH_WITH_VO_ON_BUTTON", @"VoiceOverSettings");
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __46__VoiceOverController_startVoiceOverTutorial___block_invoke;
    v17[3] = &unk_2557A8;
    v17[4] = self;
    v8 = [UIAlertAction actionWithTitle:v7 style:0 handler:v17];

    [v6 addAction:v8];
    v9 = settingsLocString(@"VOICEOVER_TUTORIAL_ALERT_LAUNCH_WITH_VO_OFF_BUTTON", @"VoiceOverSettings");
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __46__VoiceOverController_startVoiceOverTutorial___block_invoke_2;
    v16[3] = &unk_2557A8;
    v16[4] = self;
    v10 = [UIAlertAction actionWithTitle:v9 style:0 handler:v16];

    [v6 addAction:v10];
    v11 = settingsLocString(@"CANCEL", @"Accessibility");
    v12 = [UIAlertAction actionWithTitle:v11 style:1 handler:0];

    [v6 addAction:v12];
    v13 = [(VoiceOverController *)self view];
    v14 = [v13 window];
    v15 = [v14 rootViewController];
    [v15 presentViewController:v6 animated:1 completion:0];
  }
}

id __46__VoiceOverController_startVoiceOverTutorial___block_invoke(uint64_t a1)
{
  _AXSVoiceOverTouchSetUsageConfirmed();
  _AXSVoiceOverTouchSetUserHasReadNoHomeButtonGestureDescription();
  _AXSVoiceOverTouchSetEnabled();
  v2 = *(a1 + 32);

  return [v2 displayVoiceOverTutorialView];
}

- (void)resetVoiceOverSettings:(id)a3
{
  v4 = settingsLocString(@"VOICEOVER_RESET_SETTINGS_POPUP_TITLE", @"VoiceOverSettings");
  v5 = settingsLocString(@"VOICEOVER_RESET_SETTINGS_ALERT_TEXT", @"VoiceOverSettings");
  v6 = [UIAlertController alertControllerWithTitle:v4 message:v5 preferredStyle:0];

  v7 = settingsLocString(@"VOICEOVER_RESET_SETTINGS_ALERT_CONFIRM", @"VoiceOverSettings");
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __46__VoiceOverController_resetVoiceOverSettings___block_invoke;
  v14[3] = &unk_2557A8;
  v14[4] = self;
  v8 = [UIAlertAction actionWithTitle:v7 style:2 handler:v14];

  [v6 addAction:v8];
  v9 = settingsLocString(@"CANCEL", @"Accessibility");
  v10 = [UIAlertAction actionWithTitle:v9 style:1 handler:0];

  [v6 addAction:v10];
  v11 = [(VoiceOverController *)self view];
  v12 = [v11 window];
  v13 = [v12 rootViewController];
  [v13 presentViewController:v6 animated:1 completion:0];
}

void __46__VoiceOverController_resetVoiceOverSettings___block_invoke(uint64_t a1)
{
  v2 = +[AXSettings sharedInstance];
  [v2 resetAllVoiceOverSettings];

  v3 = [*(a1 + 32) commandManager];
  [v3 restoreDefaultProfile];
}

- (id)voiceOverTouchEnabled:(id)a3
{
  v3 = _AXSVoiceOverTouchEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (void)setSpeakingRate:(id)a3 specifier:(id)a4
{
  self->_ignoreNextReload = 1;
  v5 = a3;
  [(VoiceOverController *)self setLastSpeechRateAdjustmentTime:CFAbsoluteTimeGetCurrent()];
  [v5 floatValue];
  v7 = v6;

  v9 = +[AXSettings sharedInstance];
  LODWORD(v8) = v7;
  [v9 setVoiceOverEffectiveSpeakingRate:v8];
}

- (id)speakingRate:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  [v3 voiceOverEffectiveSpeakingRate];
  v4 = [NSNumber numberWithFloat:?];

  return v4;
}

- (void)setSoundEffectsEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverSoundEffectsEnabled:v4];
}

- (id)soundEffectsEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverSoundEffectsEnabled]);

  return v4;
}

- (BOOL)cachedBrailleDisplayIsPaired:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = +[VOSBluetoothManager sharedInstance];
  v6 = [v5 pairedDevices];
  [v4 axSafelyAddObjectsFromArray:v6];

  v7 = +[VOSBluetoothManager sharedInstance];
  v8 = [v7 pairedBTLEDevices];
  [v4 axSafelyAddObjectsFromArray:v8];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __52__VoiceOverController_cachedBrailleDisplayIsPaired___block_invoke;
  v11[3] = &unk_2557D0;
  v12 = v3;
  v9 = v3;
  LOBYTE(v7) = [v4 ax_containsObjectUsingBlock:v11];

  return v7;
}

id __52__VoiceOverController_cachedBrailleDisplayIsPaired___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 address];
  v4 = [*(a1 + 32) objectForKey:kSCROBrailleDisplayBluetoothAddress];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (id)brailleDisplayNameForSpecifier:(id)a3
{
  v4 = +[NSMutableArray array];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = +[AXSettings sharedInstance];
  v6 = [v5 voiceOverBrailleDisplays];

  v7 = [v6 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        v12 = [v11 objectForKey:kSCROBrailleDisplayBluetoothName];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [(VoiceOverController *)self cachedBrailleDisplayIsPaired:v11])
        {
          [v4 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v8);
  }

  v13 = _AXSVoiceOverTouchCopyTactileGraphicsDisplay();
  if (v13)
  {
    v14 = [[NSUUID alloc] initWithUUIDString:v13];
    if (v14)
    {
      v15 = +[VOSBluetoothManager sharedInstance];
      v16 = [v15 centralManager];
      v39 = v14;
      v17 = [NSArray arrayWithObjects:&v39 count:1];
      v18 = [v16 retrievePeripheralsWithIdentifiers:v17];

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v31;
        do
        {
          for (j = 0; j != v21; j = j + 1)
          {
            if (*v31 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v30 + 1) + 8 * j);
            v25 = [v24 name];
            v26 = [v4 containsObject:v25];

            if ((v26 & 1) == 0)
            {
              v27 = [v24 name];
              [v4 addObject:v27];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
        }

        while (v21);
      }
    }
  }

  v28 = [NSListFormatter localizedStringByJoiningStrings:v4, v30];

  return v28;
}

- (void)setCaptionPanel:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setEnableVoiceOverCaptions:v4];
}

- (id)captionPanelForSpecifier:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 enableVoiceOverCaptions]);

  return v4;
}

- (void)setScreenCurtainEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];

  __AXSVoiceOverTouchSetScreenCurtainEnabled(v4);
}

- (id)screenCurtainEnabled:(id)a3
{
  v3 = _AXSVoiceOverTouchScreenCurtainEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (void)cursorStyleSetPreference:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverLargeCursorEnabled:v4];
}

- (id)cursorStyleForSpecifier:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverLargeCursorEnabled]);

  return v4;
}

- (id)navigateImagesPreferenceForSpecifier:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 voiceOverNavigateImagesOption];

  v5 = @"NAV_IMG_NEVER";
  if (v4 == &dword_0 + 2)
  {
    v5 = @"NAV_IMG_W_DESCRIPTIONS_SHORT";
  }

  if (v4 == &dword_0 + 1)
  {
    v6 = @"NAV_IMG_ALWAYS";
  }

  else
  {
    v6 = v5;
  }

  v7 = settingsLocString(v6, @"VoiceOverSettings");

  return v7;
}

- (void)setSpeakingRateInRotor:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverSpeakingRateInRotorEnabled:v4];
}

- (id)speakingRateInRotor:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverSpeakingRateInRotorEnabled]);

  return v4;
}

- (id)voiceOverDelayUntilSpeakInterval:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  [v3 voiceOverDelayUntilSpeakUnderTouch];
  v4 = AXLocalizedTimeSummary();

  return v4;
}

- (id)doubleTapInterval:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  [v3 voiceOverDoubleTapInterval];
  v4 = AXLocalizedTimeSummary();

  return v4;
}

- (id)navigationStyle:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 voiceOverNavigationStyle];

  if (!v4)
  {
    v5 = @"NAVIGATION_STYLE_FLAT";
    goto LABEL_5;
  }

  if (v4 == &dword_0 + 1)
  {
    v5 = @"NAVIGATION_STYLE_GROUPS";
LABEL_5:
    v6 = settingsLocString(v5, @"VoiceOverSettings");
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7.receiver = self;
  v7.super_class = VoiceOverController;
  v4 = [(VoiceOverController *)&v7 tableView:a3 cellForRowAtIndexPath:a4];
  v5 = [v4 textLabel];
  [v5 setNumberOfLines:0];

  return v4;
}

@end