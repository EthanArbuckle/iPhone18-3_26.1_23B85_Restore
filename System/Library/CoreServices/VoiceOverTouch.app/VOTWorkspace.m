@interface VOTWorkspace
- (AXMLanguageTranslator)languageTranslator;
- (AXVoiceOverActivity)selectedActivity;
- (BOOL)_userHasDisabledUSBRM;
- (BOOL)activeBrailleAlertsPreference;
- (BOOL)activeBrailleGeneralStatusCellPreference;
- (BOOL)activeBrailleTextStatusCellPreference;
- (BOOL)allowSingleLetterSearching;
- (BOOL)brailleFormattingEnabled;
- (BOOL)brailleStartAutoActivateOnTextFields;
- (BOOL)hintsEnabled;
- (BOOL)isBaseSystemSpokenEqualToLocalization;
- (BOOL)isRingerSwitchSilent;
- (BOOL)keyboardBrailleUIEnabled;
- (BOOL)perkinsChordKeyboardInputEnabled;
- (BOOL)perkinsKeyboardInputEnabled;
- (BOOL)softwareKeyboardManagerShouldSetHardwareKeyboardAttached:(id)a3 hardwareKeyboardIsCurrentlyAttached:(BOOL)a4 newHardwareKeyboardAttachedValue:(BOOL *)a5;
- (BOOL)userRecentlyUnlockedDevice;
- (BOOL)userUnlockedDevice;
- (BRLTTable)selectedBrailleInputTable;
- (BRLTTable)selectedBrailleTable;
- (CGPoint)convertDevicePointToZoomedPoint:(CGPoint)a3;
- (CGPoint)fingerPosition;
- (NSArray)activities;
- (NSArray)brailleLanguageRotorItems;
- (NSArray)focusedApplications;
- (NSArray)languageRotorItems;
- (NSArray)punctuationGroups;
- (NSString)previousRotorVoiceIdentifier;
- (NSString)selectedLanguage;
- (NSString)systemSpokenLanguage;
- (VOTWorkspace)init;
- (VOTWorkspaceUnitTestDelegate)unitTestDelegate;
- (double)activeBrailleAutoAdvanceDuration;
- (double)speechRateFromSettings;
- (float64x2_t)_updateMainScreenSize:(double)a3 scale:;
- (id)_assetUpdaterClient;
- (id)_systemBootTime;
- (id)_validateAssetFromResults:(id)a3;
- (id)applicationForCurrentElement;
- (id)applicationForElement:(id)a3;
- (id)applicationForPID:(int)a3;
- (id)currentElementRotorString;
- (id)defaultPunctuationGroup;
- (id)lastScreenChangeTime;
- (id)phoneticStringForCharacter:(id)a3 andVoiceIdentifier:(id)a4;
- (id)punctuationGroupForUUID:(id)a3;
- (int)_callCenterQueue_currentCallState;
- (int)currentCallState;
- (int64_t)activeBrailleInputPreference;
- (int64_t)activeBrailleOutputPreference;
- (int64_t)containerOutputFeedback;
- (int64_t)navigationStyle;
- (int64_t)typingMode;
- (void)_activeAudioRouteChanged:(id)a3;
- (void)_applyVoiceOverMigrations;
- (void)_callStatusChanged:(id)a3;
- (void)_checkVoiceOverWasConfirmed;
- (void)_crystalBMigrateDuckingVolumePreferences;
- (void)_handleBluetoothEnablement;
- (void)_handleOnenessCheck;
- (void)_handleReachabilityChanges;
- (void)_handleSystemMuteKey:(id)a3;
- (void)_initialize;
- (void)_initializeCaptionModel;
- (void)_installLanguageTranslationModelForLanguageIfNeeded:(id)a3;
- (void)_languageChanged;
- (void)_localeChanged:(id)a3;
- (void)_migratePreferencesIfNeeded;
- (void)_postKeyboardEvent:(id)a3 modifiers:(id)a4 keyCode:(id)a5;
- (void)_postKeyboardEventWithCharacters:(id)a3 originalCharacters:(id)a4 modifiers:(id)a5 keyCode:(id)a6;
- (void)_postKeyboardEventWithKeyCode:(unsigned __int16)a3 characters:(id)a4 originalCharacters:(id)a5 modifierState:(unsigned int)a6 eventType:(unsigned int)a7;
- (void)_postKeyboardEventWithKeyCode:(unsigned __int16)a3 characters:(id)a4 originalCharacters:(id)a5 modifierState:(unsigned int)a6 isKeyDown:(BOOL)a7;
- (void)_postKeyboardEventsForModifiers:(unsigned int)a3 isKeyDown:(BOOL)a4;
- (void)_postNextLanguageEvent;
- (void)_preferenceUseDigitalCrownNavigationChanged;
- (void)_preferencesActivitiesChanged;
- (void)_preferencesAlwaysUseNemethForMathChange;
- (void)_preferencesCaptionPanelChanged;
- (void)_preferencesNavigateImagesOptionChange;
- (void)_preferencesSelectedActivityChanged;
- (void)_preferencesSpeakHintsChange;
- (void)_preferencesSpeakNotifications;
- (void)_preferencesSpeakingRateInRotorChanged;
- (void)_preferencesSpeechRateChange;
- (void)_preferencesTypingPitchChange;
- (void)_registerForExternalDevices;
- (void)_registerForPreferenceChanges;
- (void)_registerForUserSwitches;
- (void)_registerWithSpringBoard;
- (void)_registerWithSystem;
- (void)_resetOrientationAndAnnounce:(BOOL)a3 updateApplication:(BOOL)a4;
- (void)_screenChange:(id)a3;
- (void)_selectedBrailleGesturesInputTableChanged;
- (void)_selectedBrailleInputTableChanged;
- (void)_selectedBrailleTableChanged;
- (void)_selfDestruct;
- (void)_sendGreetingMessage;
- (void)_setDeviceOrientation:(int64_t)a3 shouldAnnounce:(BOOL)a4 updateApplication:(BOOL)a5;
- (void)_setUSBRMPreferenceDisabled;
- (void)_showConfirmPanel;
- (void)_showVOTNoHomeButtonGestureAlert;
- (void)_speakCorrectionsChanged;
- (void)_stopRunLoop;
- (void)_temporarilyChangeQuickNav:(id)a3;
- (void)_testFetchWebElementRects;
- (void)_tigrisMigrateLanguageRotors;
- (void)_updateActivityListeners;
- (void)_updatePointerVoiceOverOptions;
- (void)_updateScreenCurtainEnabled:(BOOL)a3;
- (void)_voiceOverTouchEnabledChange:(__CFString *)a3;
- (void)_voiceOverUsageConfirmed;
- (void)_yukonMigrateLanguageRotors;
- (void)addMisspellingsForString:(id)a3;
- (void)assetController:(id)a3 didFinishDownloadingAsset:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6 hasRemainingDownloads:(BOOL)a7;
- (void)assetController:(id)a3 didFinishRefreshingAssets:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6;
- (void)assetController:(id)a3 didUpdateCatalogForPolicy:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6;
- (void)currentElementDidUpdate:(id)a3;
- (void)dealloc;
- (void)dispatchCommand:(id)a3 bypassGesturedInput:(BOOL)a4;
- (void)handleAppleTVRemoteEvent:(id)a3 eventOrigin:(int64_t)a4 isRTL:(BOOL)a5;
- (void)handleBluetoothBrailleDisplayConnected;
- (void)handleLockButtonPress:(id)a3;
- (void)handleMediaKeyPress:(id)a3;
- (void)handleMenuButtonPress:(id)a3;
- (void)handleProximityEvent:(id)a3;
- (void)handleReturnToSpringBoard;
- (void)handleRingerSwitchSwitched:(id)a3;
- (void)handleSetForcedOrientation:(int64_t)a3 shouldAnnounce:(BOOL)a4;
- (void)handleSystemWideServerDied;
- (void)handleUSBMFiBrailleDisplayConnected;
- (void)handleUnsetForcedOrientationAndAnnounce:(BOOL)a3;
- (void)handleVolumeButtonPress:(id)a3;
- (void)keyboardManagerHandleKeyDown:(BOOL)a3 keyCode:(unsigned __int16)a4 modifierState:(unsigned int)a5 eventOrigin:(int64_t)a6;
- (void)loadUIKit;
- (void)mlElementDetectorReceivedFrames:(id)a3 labels:(id)a4 uiClasses:(id)a5;
- (void)mlElementDetectorScrollToVisibleOccurred:(CGPoint)a3;
- (void)mlElementDetectorUpdatedElements;
- (void)outputRequestFinished:(id)a3;
- (void)performEjectButtonPress;
- (void)performHomeButtonPress;
- (void)performNextLanguageButtonPress;
- (void)performVolumeDownButtonPress;
- (void)performVolumeUpButtonPress;
- (void)postKeyboardEvent:(BOOL)a3 modifiers:(unsigned int)a4 keyCode:(unsigned __int16)a5;
- (void)postKeyboardEventWithCharacters:(id)a3 originalCharacters:(id)a4 modifiers:(unsigned int)a5 keyCode:(unsigned __int16)a6;
- (void)preferencesBrailleLanguageRotorItemsChanged:(id)a3;
- (void)preferencesLanguageRotorItemsChanged:(id)a3;
- (void)punctuationGroupsChanged:(id)a3;
- (void)refreshBraille:(BOOL)a3 rotorSelection:(id)a4;
- (void)resetSystemBatteryLowState;
- (void)rotateDeviceOrientation:(BOOL)a3;
- (void)run;
- (void)screenLockOccurred;
- (void)setAllowSingleLetterSearching:(BOOL)a3;
- (void)setElementManager:(id)a3;
- (void)setKeyboardBrailleUIEnabled:(BOOL)a3;
- (void)setPerkinsChordKeyboardInputEnabled:(BOOL)a3;
- (void)setPerkinsKeyboardInputEnabled:(BOOL)a3;
- (void)setScreenCurtainEnabled:(BOOL)a3;
- (void)setScreenCurtainSuspended:(BOOL)a3;
- (void)setScreenOn:(BOOL)a3 silently:(BOOL)a4;
- (void)setSelectedActivity:(id)a3;
- (void)setSelectedBrailleGesturesInputTable:(id)a3;
- (void)setSelectedBrailleInputTable:(id)a3;
- (void)setSelectedBrailleTable:(id)a3;
- (void)setSelectedLanguage:(id)a3;
- (void)setSoundMuted:(BOOL)a3;
- (void)setSpeechMuted:(BOOL)a3;
- (void)setTvInteractionMode:(int64_t)a3;
- (void)setTypingMode:(int64_t)a3;
- (void)setUnitTestSystemSpokenLanguage:(id)a3;
- (void)setUseDigitalCrownNavigationEnabled:(BOOL)a3;
- (void)setVoiceOverMuted:(BOOL)a3 sendRequest:(BOOL)a4;
- (void)softwareKeyboardManagerWillUpdateKeyboardState:(id)a3;
- (void)stop:(int)a3;
- (void)systemSpokenLanguageChanged:(id)a3;
- (void)temporarilyChangeQuickNavState:(BOOL)a3;
- (void)unitTestSetBrailleRotorItems:(id)a3;
- (void)unmuteEligibleEventOccured;
- (void)userInteractedWithDeviceWithHand:(BOOL)a3;
- (void)willSwitchUser;
@end

@implementation VOTWorkspace

- (VOTWorkspace)init
{
  v2 = self;
  if (VOTSharedWorkspace)
  {
    v3 = VOTSharedWorkspace;
    goto LABEL_19;
  }

  v58.receiver = self;
  v58.super_class = VOTWorkspace;
  v4 = [(VOTWorkspace *)&v58 init];
  v2 = v4;
  if (!v4)
  {
LABEL_18:
    v3 = 0;
    goto LABEL_19;
  }

  if (![(VOTWorkspace *)v4 isAccessibilityEnabled])
  {
    v46 = +[AXSubsystemVoiceOverLifeCycle sharedInstance];
    v47 = [v46 ignoreLogging];

    if ((v47 & 1) == 0)
    {
      v48 = +[AXSubsystemVoiceOverLifeCycle identifier];
      v49 = AXLoggerForFacility();

      v50 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = AXColorizeFormatLog();
        v52 = _AXStringForArgs();
        if (os_log_type_enabled(v49, v50))
        {
          *buf = 138543362;
          v60 = v52;
          _os_log_impl(&_mh_execute_header, v49, v50, "%{public}@", buf, 0xCu);
        }
      }
    }

    goto LABEL_18;
  }

  objc_storeStrong(&VOTSharedWorkspace, v2);
  [(VOTWorkspace *)v2 setDisableVoiceOverSettingOnStop:1];
  AXDevicePrimeDisplayManager();
  _AXSVoiceOverTouchEnabled();
  _AXSVoiceOverTouchUsageConfirmed();
  _AXSApplicationAccessibilityEnabled();
  _AXSBrailleScreenInputEnabled();
  v54 = vdupq_n_s64(0xC1E6CEAF20000000);
  *&v2->_lastLockButtonPress = v54;
  v2->_lastKeyboardKeyPress = -3061152000.0;
  v2->_lastDeviceInteractionEvent = CFAbsoluteTimeGetCurrent();
  v2->_lastUnmuteEvent = CFAbsoluteTimeGetCurrent();
  *&v2->_screenOnTime = v54;
  v2->_lastPowerCheck = -3061152000.0;
  postKeyThreadKey = v2->_postKeyThreadKey;
  v2->_postKeyThreadKey = @"VOTPostKey";

  v6 = objc_alloc_init(NSLock);
  systemLangaugeLock = v2->_systemLangaugeLock;
  v2->_systemLangaugeLock = v6;

  v8 = objc_alloc_init(NSLock);
  brailleLangaugeLock = v2->_brailleLangaugeLock;
  v2->_brailleLangaugeLock = v8;

  v2->_forcedOrientation = 0;
  v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v11 = dispatch_queue_create("voiceover.keyposting.workspace", v10);
  keyPostingQueue = v2->_keyPostingQueue;
  v2->_keyPostingQueue = v11;

  v13 = dispatch_queue_create("voiceover.avaccessqueue.workspace", 0);
  avAccessQueue = v2->_avAccessQueue;
  v2->_avAccessQueue = v13;

  v15 = +[VOTConfiguration rootConfiguration];
  v16 = [v15 preferenceForKey:@"WebsiteLanguageMappingOverride"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = +[NSDictionary dictionary];

    v16 = v17;
  }

  v18 = [v16 mutableCopy];
  [(VOTWorkspace *)v2 setWebsiteLanguageMappingOverrides:v18];

  v19 = objc_alloc_init(AXCharacterSoundMap);
  characterSoundMap = v2->_characterSoundMap;
  v2->_characterSoundMap = v19;

  v21 = AXLogSpeechAssetDownload();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = [(VOTWorkspace *)v2 _assetUpdaterClient];
    *buf = 138477827;
    v60 = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Retrieve cloud data: %{private}@", buf, 0xCu);
  }

  v23 = [(VOTWorkspace *)v2 _assetUpdaterClient];
  v24 = +[AXAccessQueue mainAccessQueue];
  [v23 sendAsynchronousMessage:&__NSDictionary0__struct withIdentifier:3 targetAccessQueue:v24 completion:0];

  if ((AXDeviceIsAudioAccessory() & 1) == 0)
  {
    v25 = objc_alloc_init(VOTVisionEngine);
    [(VOTWorkspace *)v2 setVisionEngine:v25];
  }

  v26 = [[UITextChecker alloc] _initWithAsynchronousLoading:1];
  textChecker = v2->_textChecker;
  v2->_textChecker = v26;

  v28 = +[NSNotificationCenter defaultCenter];
  v29 = dispatch_queue_create("vo-call-center-queue", 0);
  callCenterQueue = v2->_callCenterQueue;
  v2->_callCenterQueue = v29;

  v31 = [[TUCallCenter alloc] initWithQueue:v2->_callCenterQueue];
  callCenter = v2->_callCenter;
  v2->_callCenter = v31;

  v33 = v2->_callCenterQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100041830;
  block[3] = &unk_1001C7778;
  v34 = v2;
  v56 = v34;
  v57 = v28;
  v35 = v28;
  dispatch_async(v33, block);
  [(VOTWorkspace *)v34 _applyVoiceOverMigrations];
  v36 = dispatch_queue_create("com.apple.accessibility.VOT.MC", 0);
  managedConfigurationQueue = v34->_managedConfigurationQueue;
  v34->_managedConfigurationQueue = v36;

  v38 = +[AXSettings sharedInstance];
  v34->_automaticAccessibilityVisualizationsEnabled = [v38 automaticAccessibilityVisualizationsEnabled];

  v39 = +[AXSettings sharedInstance];
  v34->_automaticAccessibilityEnabled = [v39 automaticAccessibilityEnabled];

  v40 = +[AXSettings sharedInstance];
  [v40 setLiveRecognitionOverlayOpen:0];

  v34->_currentRotorDetectionMode = 2;
  v41 = +[AXSettings sharedInstance];
  v42 = [v41 imageCaptioningDisabledApps];
  [(VOTWorkspace *)v34 setImageCaptioningDisabledApps:v42];

  v43 = +[NSNotificationCenter defaultCenter];
  [v43 addObserver:v34 selector:"_screenChange:" name:@"UpdateElement" object:0];

  v44 = objc_alloc_init(_TtC3vot11VOTSettings);
  votSettings = v34->_votSettings;
  v34->_votSettings = v44;

  [(VOTSettings *)v34->_votSettings initialize];
  v2 = v34;

  v3 = v2;
LABEL_19:

  return v3;
}

- (void)_callStatusChanged:(id)a3
{
  v4 = [(VOTWorkspace *)self telephonyIsActive];
  -[VOTWorkspace setTelephonyIsActive:](self, "setTelephonyIsActive:", [VOTSharedWorkspace _callCenterQueue_currentCallState] != 0);
  if (v4 != [(VOTWorkspace *)self telephonyIsActive]&& ![(VOTWorkspace *)self telephonyIsActive])
  {
    [(VOTWorkspace *)self setLastTelephonyCallActive:CFAbsoluteTimeGetCurrent()];
  }

  v5 = VOTLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109120;
    v7[1] = [VOTSharedWorkspace telephonyIsActive];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Call status changed, updating call active status: %d", v7, 8u);
  }

  v6 = +[VOTOutputManager outputManager];
  [v6 callStatusChanged];
}

- (void)_applyVoiceOverMigrations
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100041AFC;
  block[3] = &unk_1001C76E8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_crystalBMigrateDuckingVolumePreferences
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"_AccessibilityMigration__DuckingVolumePrefs_18.2.1"];
  v4 = [v3 BOOLValue];

  if ((v4 & 1) == 0)
  {
    v5 = +[AXSettings sharedInstance];
    [v5 voiceOverMediaDuckingAmount];
    v7 = v6;

    if (v7 < 0.25)
    {
      v8 = +[AXSettings sharedInstance];
      [v8 setVoiceOverMediaDuckingAmount:0.800000012];
    }

    v9 = +[AXSettings sharedInstance];
    [v9 voiceOverMediaDuckingAmount];
    v11 = v10;

    if (v11 > 1.0)
    {
      v12 = +[AXSettings sharedInstance];
      [v12 voiceOverMediaDuckingAmount];
      v14 = 2.0 - v13;
      v15 = +[AXSettings sharedInstance];
      [v15 setVoiceOverMediaDuckingAmount:v14];
    }

    v16 = +[AXSettings sharedInstance];
    [v16 voiceOverEffectiveSpeakingVolume];
    v18 = v17;

    if (v18 == 0.0)
    {
      v19 = +[AXSettings sharedInstance];
      LODWORD(v20) = 1.0;
      [v19 setVoiceOverEffectiveSpeakingVolume:v20];
    }

    v21 = +[NSUserDefaults standardUserDefaults];
    [v21 setObject:&__kCFBooleanTrue forKey:@"_AccessibilityMigration__DuckingVolumePrefs_18.2.1"];
  }
}

- (BOOL)hintsEnabled
{
  v3 = [(VOTWorkspace *)self elementManager];
  v4 = [(VOTWorkspace *)self currentElement];
  v5 = [v3 determineActivityForElement:v4];

  v6 = [v5 hints];

  if (v6)
  {
    v7 = [v5 hints];
    hintsEnabled = [v7 BOOLValue];
  }

  else
  {
    hintsEnabled = self->_hintsEnabled;
  }

  return hintsEnabled & 1;
}

- (BOOL)brailleFormattingEnabled
{
  v3 = [(VOTWorkspace *)self elementManager];
  v4 = [(VOTWorkspace *)self currentElement];
  v5 = [v3 determineActivityForElement:v4];

  v6 = [v5 brailleFormatting];

  if (v6)
  {
    v7 = [v5 brailleFormatting];
    v8 = [v7 BOOLValue];
  }

  else
  {
    v7 = +[AXSettings sharedInstance];
    v8 = [v7 voiceOverBrailleFormattingEnabled];
  }

  v9 = v8;

  return v9;
}

- (BOOL)brailleStartAutoActivateOnTextFields
{
  v3 = [(VOTWorkspace *)self elementManager];
  v4 = [(VOTWorkspace *)self currentElement];
  v5 = [v3 determineActivityForElement:v4];

  v6 = [v5 brailleStartAutoActivateOnTextFields];

  if (v6)
  {
    v7 = [v5 brailleStartAutoActivateOnTextFields];
    v8 = [v7 BOOLValue];
  }

  else
  {
    v7 = +[AXSettings sharedInstance];
    v8 = [v7 voiceOverTouchBrailleGesturesAutoActivateOnTextFields];
  }

  v9 = v8;

  return v9;
}

- (int64_t)containerOutputFeedback
{
  v3 = [(VOTWorkspace *)self elementManager];
  v4 = [(VOTWorkspace *)self currentElement];
  v5 = [v3 determineActivityForElement:v4];

  v6 = [v5 containerFeedback];

  if (v6)
  {
    v7 = [v5 containerFeedback];
    containerOutputFeedback = [v7 integerValue];
  }

  else
  {
    containerOutputFeedback = self->_containerOutputFeedback;
  }

  return containerOutputFeedback;
}

- (int64_t)activeBrailleInputPreference
{
  v3 = [(VOTWorkspace *)self elementManager];
  v4 = [(VOTWorkspace *)self currentElement];
  v5 = [v3 determineActivityForElement:v4];

  v6 = [v5 brailleInput];

  if (v6)
  {
    v7 = VOTLogActivities();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v5 brailleInput];
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Using activity braille input: %@", &v13, 0xCu);
    }

    v9 = [v5 brailleInput];
    v10 = [v9 integerValue];
  }

  else
  {
    v9 = +[AXSettings sharedInstance];
    v10 = [v9 voiceOverTouchBrailleDisplayInputMode];
  }

  v11 = v10;

  return v11;
}

- (int64_t)activeBrailleOutputPreference
{
  v3 = [(VOTWorkspace *)self elementManager];
  v4 = [(VOTWorkspace *)self currentElement];
  v5 = [v3 determineActivityForElement:v4];

  v6 = [v5 brailleOutput];

  if (v6)
  {
    v7 = VOTLogActivities();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v5 brailleOutput];
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Using activity braille output: %@", &v13, 0xCu);
    }

    v9 = [v5 brailleOutput];
    v10 = [v9 integerValue];
  }

  else
  {
    v9 = +[AXSettings sharedInstance];
    v10 = [v9 voiceOverTouchBrailleDisplayOutputMode];
  }

  v11 = v10;

  return v11;
}

- (BOOL)activeBrailleTextStatusCellPreference
{
  v3 = [(VOTWorkspace *)self elementManager];
  v4 = [(VOTWorkspace *)self currentElement];
  v5 = [v3 determineActivityForElement:v4];

  v6 = [v5 brailleStatusCellText];

  if (v6)
  {
    v7 = VOTLogActivities();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v5 brailleStatusCellText];
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Using activity braille text status cell: %@", &v13, 0xCu);
    }

    v9 = [v5 brailleStatusCellText];
    v10 = [v9 BOOLValue];
  }

  else
  {
    v9 = +[AXSettings sharedInstance];
    v10 = [v9 voiceOverTouchBrailleShowTextStyleStatus];
  }

  v11 = v10;

  return v11;
}

- (BOOL)activeBrailleAlertsPreference
{
  v3 = [(VOTWorkspace *)self elementManager];
  v4 = [(VOTWorkspace *)self currentElement];
  v5 = [v3 determineActivityForElement:v4];

  v6 = [v5 brailleAlerts];

  if (v6)
  {
    v7 = VOTLogActivities();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v5 brailleAlerts];
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Using activity braille alerts: %@", &v12, 0xCu);
    }

    v9 = [v5 brailleAlerts];
    brailleAlertsEnabled = [v9 BOOLValue];
  }

  else
  {
    brailleAlertsEnabled = self->_brailleAlertsEnabled;
  }

  return brailleAlertsEnabled & 1;
}

- (BOOL)activeBrailleGeneralStatusCellPreference
{
  v3 = [(VOTWorkspace *)self elementManager];
  v4 = [(VOTWorkspace *)self currentElement];
  v5 = [v3 determineActivityForElement:v4];

  v6 = [v5 brailleStatusCellGeneral];

  if (v6)
  {
    v7 = VOTLogActivities();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v5 brailleStatusCellGeneral];
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Using activity braille general status cell: %@", &v13, 0xCu);
    }

    v9 = [v5 brailleStatusCellGeneral];
    v10 = [v9 BOOLValue];
  }

  else
  {
    v9 = +[AXSettings sharedInstance];
    v10 = [v9 voiceOverTouchBrailleShowGeneralStatus];
  }

  v11 = v10;

  return v11;
}

- (double)activeBrailleAutoAdvanceDuration
{
  v3 = [(VOTWorkspace *)self elementManager];
  v4 = [(VOTWorkspace *)self currentElement];
  v5 = [v3 determineActivityForElement:v4];

  v6 = [v5 brailleAutoAdvanceDuration];

  if (v6)
  {
    v7 = VOTLogActivities();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v5 brailleAutoAdvanceDuration];
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Using activity braille auto advance duration: %@", &v13, 0xCu);
    }

    v9 = [v5 brailleAutoAdvanceDuration];
    [v9 doubleValue];
  }

  else
  {
    v9 = +[AXSettings sharedInstance];
    [v9 voiceOverBrailleAutoAdvanceDuration];
  }

  v11 = v10;

  return v11;
}

- (void)_screenChange:(id)a3
{
  v4 = [(VOTWorkspace *)self elementManager];
  v5 = [(VOTWorkspace *)self currentElement];
  v6 = [v4 determineActivityForElement:v5];

  if (v6)
  {
    [(VOTWorkspace *)self _updateActivityListeners];
  }
}

- (void)_tigrisMigrateLanguageRotors
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"_AccessibilityMigration_MigrateLanguageRotors_11.0"];
  v4 = [v3 BOOLValue];

  if ((v4 & 1) == 0)
  {
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v5 = _AXSVoiceOverTouchCopyLanguageRotorItems();
    v6 = [v5 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v31;
      v9 = AXSpeechSourceKeyVoiceOver;
      v27 = *v31;
      do
      {
        v10 = 0;
        v28 = v7;
        do
        {
          if (*v31 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = [*(*(&v30 + 1) + 8 * v10) objectForKey:{@"RotorItem", v25, v26}];
          v12 = AXLanguageConvertToCanonicalForm();
          v29 = 0;
          v13 = +[AXSettings sharedInstance];
          v14 = [v13 speechVoiceIdentifierForLanguage:v12 sourceKey:v9 exists:&v29];

          if ((v29 & 1) == 0)
          {
            v15 = +[AXSettings sharedInstance];
            [v15 setSpeechVoiceIdentifier:v14 forLanguage:v12 sourceKey:v9];

            v16 = +[AXSubsystemDataMigrator sharedInstance];
            v17 = [v16 ignoreLogging];

            if ((v17 & 1) == 0)
            {
              v18 = v5;
              v19 = +[AXSubsystemDataMigrator identifier];
              v20 = AXLoggerForFacility();

              v21 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v20, v21))
              {
                v22 = AXColorizeFormatLog();
                v25 = v12;
                v26 = v14;
                v23 = _AXStringForArgs();
                if (os_log_type_enabled(v20, v21))
                {
                  *buf = 138543362;
                  v35 = v23;
                  _os_log_impl(&_mh_execute_header, v20, v21, "%{public}@", buf, 0xCu);
                }
              }

              v5 = v18;
              v8 = v27;
              v7 = v28;
            }
          }

          v10 = v10 + 1;
        }

        while (v7 != v10);
        v7 = [v5 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v7);
    }

    v24 = +[NSUserDefaults standardUserDefaults];
    [v24 setObject:&__kCFBooleanTrue forKey:@"_AccessibilityMigration_MigrateLanguageRotors_11.0"];
  }
}

- (void)_yukonMigrateLanguageRotors
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"_AccessibilityMigration_MigrateLanguageRotors_13.0"];
  v4 = [v3 BOOLValue];

  if ((v4 & 1) == 0)
  {
    v17 = 0;
    v5 = +[AXSettings sharedInstance];
    v6 = AXSpeechSourceKeyVoiceOver;
    v7 = [v5 speechVoiceIdentifierForLanguage:@"en-IN" sourceKey:AXSpeechSourceKeyVoiceOver exists:&v17];

    if ((v17 & 1) == 0)
    {
      v8 = +[AXSettings sharedInstance];
      [v8 setSpeechVoiceIdentifier:v7 forLanguage:@"en-IN" sourceKey:v6];

      v9 = +[AXSubsystemDataMigrator sharedInstance];
      LOBYTE(v8) = [v9 ignoreLogging];

      if ((v8 & 1) == 0)
      {
        v10 = +[AXSubsystemDataMigrator identifier];
        v11 = AXLoggerForFacility();

        v12 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = AXColorizeFormatLog();
          v16 = v7;
          v14 = _AXStringForArgs();
          if (os_log_type_enabled(v11, v12))
          {
            *buf = 138543362;
            v19 = v14;
            _os_log_impl(&_mh_execute_header, v11, v12, "%{public}@", buf, 0xCu);
          }
        }
      }
    }

    v15 = +[NSUserDefaults standardUserDefaults];
    [v15 setObject:&__kCFBooleanTrue forKey:@"_AccessibilityMigration_MigrateLanguageRotors_13.0"];
  }
}

- (id)_assetUpdaterClient
{
  if (qword_1001FEC18 != -1)
  {
    sub_100129EBC();
  }

  v3 = qword_1001FEC10;

  return v3;
}

- (BOOL)allowSingleLetterSearching
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 voiceOverTouchSingleLetterQuickNavEnabled];

  return v3;
}

- (void)setAllowSingleLetterSearching:(BOOL)a3
{
  v3 = a3;
  v4 = +[AXSettings sharedInstance];
  [v4 setVoiceOverTouchSingleLetterQuickNavEnabled:v3];
}

- (void)setTvInteractionMode:(int64_t)a3
{
  self->_tvInteractionMode = a3;
  v4 = +[AXSettings sharedInstance];
  [v4 setVoiceOverPreferredTVInteractionMode:a3];
}

- (BOOL)perkinsKeyboardInputEnabled
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 voiceOverTouchPerkinsKeyboardInputEnabled];

  return v3;
}

- (void)setPerkinsKeyboardInputEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = +[AXSettings sharedInstance];
  [v4 setVoiceOverTouchPerkinsKeyboardInputEnabled:v3];
}

- (BOOL)keyboardBrailleUIEnabled
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 voiceOverTouchKeyboardBrailleUIEnabled];

  return v3;
}

- (void)setKeyboardBrailleUIEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = +[AXSettings sharedInstance];
  [v4 setVoiceOverTouchKeyboardBrailleUIEnabled:v3];
}

- (BOOL)perkinsChordKeyboardInputEnabled
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 voiceOverTouchPerkinsChordKeyboardInputEnabled];

  return v3;
}

- (void)setPerkinsChordKeyboardInputEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = +[AXSettings sharedInstance];
  [v4 setVoiceOverTouchPerkinsChordKeyboardInputEnabled:v3];
}

- (void)softwareKeyboardManagerWillUpdateKeyboardState:(id)a3
{
  triggeredKBAttachState = self->_triggeredKBAttachState;
  v5 = triggeredKBAttachState < 1;
  v6 = triggeredKBAttachState - 1;
  if (!v5)
  {
    self->_triggeredKBAttachState = v6;
    v7 = VOTLogKeyboard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = self->_triggeredKBAttachState;
      v21 = 134217984;
      v22 = v8;
      v9 = "Triggered KB attach state count is: %ld";
      v10 = v7;
      v11 = 12;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v9, &v21, v11);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v12 = +[VOTCrashManager sharedInstance];
  if (![v12 didStartFromCrashState])
  {

    goto LABEL_9;
  }

  originalKBAttachedStateIsValid = self->_originalKBAttachedStateIsValid;

  if (originalKBAttachedStateIsValid)
  {
LABEL_9:
    v18 = [(VOTWorkspace *)self softwareKeyboardManager];
    self->_originalKBAttachedState = [v18 isHardwareKeyboardAttached];

    v16 = +[VOTConfiguration rootConfiguration];
    v19 = [NSNumber numberWithBool:self->_originalKBAttachedState];
    [v16 setPreference:v19 forKey:@"kVOTOriginaKBAttachedKey"];

    goto LABEL_10;
  }

  v14 = +[VOTConfiguration rootConfiguration];
  v15 = [v14 preferenceForKey:@"kVOTOriginaKBAttachedKey"];
  self->_originalKBAttachedState = [v15 BOOLValue];

  v16 = VOTLogKeyboard();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    originalKBAttachedState = self->_originalKBAttachedState;
    v21 = 67109120;
    LODWORD(v22) = originalKBAttachedState;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Have to use what we stored for original KB state: %d", &v21, 8u);
  }

LABEL_10:

  self->_originalKBAttachedStateIsValid = 1;
  v7 = VOTLogKeyboard();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v20 = self->_originalKBAttachedState;
    v21 = 67109120;
    LODWORD(v22) = v20;
    v9 = "Original KB attached state is: %d";
    v10 = v7;
    v11 = 8;
    goto LABEL_12;
  }

LABEL_13:
}

- (BOOL)softwareKeyboardManagerShouldSetHardwareKeyboardAttached:(id)a3 hardwareKeyboardIsCurrentlyAttached:(BOOL)a4 newHardwareKeyboardAttachedValue:(BOOL *)a5
{
  originalKBAttachedState = self->_originalKBAttachedState;
  if (originalKBAttachedState != a4)
  {
    *a5 = originalKBAttachedState;
  }

  return originalKBAttachedState != a4;
}

- (void)mlElementDetectorScrollToVisibleOccurred:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(VOTWorkspace *)self elementManager];
  [v5 processExternalScrollToVisible:{x, y}];
}

- (void)mlElementDetectorUpdatedElements
{
  v3 = AXMediaLogElementVision();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "ML elements updated, processing layout change", v5, 2u);
  }

  v4 = [(VOTWorkspace *)self elementManager];
  [v4 processExternalElementUpdate];
}

- (void)mlElementDetectorReceivedFrames:(id)a3 labels:(id)a4 uiClasses:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AXMediaLogElementVision();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 count]);
    v16 = 138412290;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "ML elements got some frames %@", &v16, 0xCu);
  }

  [(VOTWorkspace *)self automaticAccessibilityVisualizationsEnabled];
  if (v13 == 0.0)
  {
    v15 = +[VOTDisplayManager displayManager];
    [v15 setElementFrames:&__NSArray0__struct];
  }

  else
  {
    v14 = [(VOTWorkspace *)self elementManager];
    [v14 updateCurrentElementFrame];

    v15 = +[VOTDisplayManager displayManager];
    [v15 setElementFrames:v8 labels:v9 uiClasses:v10];
  }
}

- (void)_initialize
{
  if (AXDeviceIsAudioAccessory())
  {
    _AXSVoiceOverTouchSetUsageConfirmed();
  }

  v3 = +[VOTCrashManager sharedInstance];
  [v3 handleStartUp];

  v4 = +[VOTConfiguration rootConfiguration];
  [v4 setPreference:&__kCFBooleanTrue forKey:@"VOTIsRunningKey"];

  GSInitialize();
  +[AXEventKeyInfoRepresentation prepareForKeycodeTranslation];
  _AXSVoiceOverTouchSetActive2DBrailleDisplays();
  _AXSBrailleScreenInputSetEnabled();
  v5 = objc_opt_new();
  softwareKeyboardManager = self->_softwareKeyboardManager;
  self->_softwareKeyboardManager = v5;

  [(AXUISoftwareKeyboardManager *)self->_softwareKeyboardManager setDelegate:self];
  [AXUIElement applyElementAttributeCacheScheme:1];
  if ([(VOTWorkspace *)self usesDisplayManager])
  {
    v7 = [[AXMDisplayManager alloc] initAndWaitForMainDisplayConfiguration];
    [(VOTWorkspace *)self setDisplayManager:v7];

    v8 = [(VOTWorkspace *)self displayManager];
    sub_1000509A4(v8);

    v9 = *&xmmword_1001FF150;
    if (*&xmmword_1001FF150 <= 0.0)
    {
      _AXAssert();
    }

    v10 = +[NSNotificationCenter defaultCenter];
    v11 = +[NSOperationQueue mainQueue];
    v12 = [v10 addObserverForName:AXMDisplayManagerMainDisplayWasUpdatedNotification object:0 queue:v11 usingBlock:&stru_1001C8480];
  }

  v13 = [[VOSCommandManager alloc] initPreferringUserProfile];
  [(VOTWorkspace *)self setUserCommandManager:v13];

  objc_initWeak(&location, self);
  v14 = +[AXSettings sharedInstance];
  v75[0] = _NSConcreteStackBlock;
  v75[1] = 3221225472;
  v75[2] = sub_1000443D8;
  v75[3] = &unk_1001C78D8;
  objc_copyWeak(&v76, &location);
  v15 = objc_loadWeakRetained(&location);
  [v14 registerUpdateBlock:v75 forRetrieveSelector:"voiceOverCustomCommandProfile" withListener:v15];

  objc_destroyWeak(&v76);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_100044430, @"DBSMagnifyModeDidChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  if (_AXSVoiceOverTouchEnabled() || self->_inUnitTestMode)
  {
    self->_orientation = 1;
    self->_applicationOrientation = 1;
    self->_screenOn = 1;
    v17 = +[VOTSystemServerInstance serverInstance];
    v18 = [objc_allocWithZone(NSMutableDictionary) init];
    appCache = self->_appCache;
    self->_appCache = v18;

    v20 = +[NSMutableDictionary dictionary];
    appCacheWithExactPID = self->_appCacheWithExactPID;
    self->_appCacheWithExactPID = v20;

    self->_appCacheLock._os_unfair_lock_opaque = 0;
    sub_100052220();
    sub_1000522A0();
    [(VOTWorkspace *)self _migratePreferencesIfNeeded];
    [(VOTWorkspace *)self _registerForPreferenceChanges];
    v22 = +[AXSettings sharedInstance];
    self->_textDetectionEnabled = [v22 voiceOverShouldSpeakDiscoveredText];

    v23 = +[AXSettings sharedInstance];
    self->_buttonIconDetectionEnabled = [v23 voiceOverAutomaticButtonLabels];

    v24 = +[AXSettings sharedInstance];
    self->_imageCaptionsEnabled = [v24 voiceOverImageCaptionsEnabled];

    v25 = +[AXSettings sharedInstance];
    self->_customContentImportance = [v25 voiceOverContentDescriptionLevel];

    v26 = +[AXSettings sharedInstance];
    self->_containerOutputFeedback = [v26 voiceOverContainerOutputFeedback];

    v27 = +[AXSettings sharedInstance];
    self->_moreContentOutputFeedback = [v27 voiceOverMoreContentOutputFeedback];

    v28 = +[AXSettings sharedInstance];
    self->_soundEffectsEnabled = [v28 voiceOverSoundEffectsEnabled];

    v29 = +[AXSettings sharedInstance];
    self->_numberFeedback = [v29 voiceOverNumberFeedback];

    v30 = +[AXSettings sharedInstance];
    self->_emojiFeedback = [v30 voiceOverVerbosityEmojiFeedback];

    v31 = +[AXSettings sharedInstance];
    self->_brailleAlertsEnabled = [v31 voiceOverBrailleAlertsEnabled];

    self->_typingMode = _AXSVoiceOverTouchTypingMode();
    [AXUIMLElement setFrameDelegate:self];
    [(VOTWorkspace *)self systemSpokenLanguageChanged:0];
    v32 = [objc_allocWithZone(VOTElementManager) init];
    objc_storeStrong(&self->_elementManager, v32);
    objc_storeStrong(&self->_rotorManager, v32);
    objc_storeStrong(&self->_directTouchManager, v32);
    v33 = +[VOTKeyboardManager keyboardManager];
    keyboardManager = self->_keyboardManager;
    self->_keyboardManager = v33;

    [(VOTKeyboardManager *)self->_keyboardManager setCommandManager:self->_userCommandManager];
    v35 = [objc_allocWithZone(VOTEventFactory) init];
    eventFactory = self->_eventFactory;
    self->_eventFactory = v35;

    [(VOTEventFactory *)self->_eventFactory setElementManager:self->_elementManager];
    [(VOTEventFactory *)self->_eventFactory setRotorManager:self->_rotorManager];
    [(VOTEventFactory *)self->_eventFactory setDirectTouchManager:self->_directTouchManager];
    [(VOTEventFactory *)self->_eventFactory setDelegate:self];
    self->_retryState.lastTime = -3061152000.0;
    self->_retryState.connected = 1;
    *&buf = kAXSVoiceOverTouchSpeakingRateChangedNotification;
    *(&buf + 1) = kAXSVoiceOverTouchUsageConfirmedNotification;
    v80 = kAXSVoiceOverTouchLanguageRotorChangedNotification;
    v81 = kAXSVoiceOverTouchBrailleLanguageRotorChangedNotification;
    v82 = kAXSVoiceOverTouchScreenCurtainNotification;
    v83 = @"com.apple.language.changed";
    v84 = @"com.apple.purplebuddy.LanguageResetReady";
    v85 = @"com.apple.preferences.sounds.changed";
    v86 = kTTSPreferencesSpokenLanguageChangedNotification;
    v37 = CFNotificationCenterGetDarwinNotifyCenter();
    for (i = 0; i != 72; i += 8)
    {
      CFNotificationCenterAddObserver(v37, self, sub_10004448C, *(&buf + i), 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, self, sub_10004448C, kAXSVoiceOverTouchEnabledNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v40 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(v40, self, sub_10004448C, kAXSVoiceOverTouchTypingModeChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    if (!_AXSApplicationAccessibilityEnabled())
    {
      _AXSApplicationAccessibilitySetEnabled();
    }

    [(VOTWorkspace *)self setWasEnabledThroughAccessory:_AXSVoiceOverTouchEnabledThroughAccessory() != 0];
    AXPerformBlockOnMainThreadAfterDelay();
    if (![(VOTWorkspace *)self voiceOverIsConfirmed])
    {
      [(VOTWorkspace *)self performSelector:"_checkVoiceOverWasConfirmed" withObject:0 afterDelay:30.0];
      [(VOTWorkspace *)self performSelector:"_showConfirmPanel" withObject:0 afterDelay:0.5];
    }

    if (AXDeviceHasHomeButton())
    {
      IsPad = AXDeviceIsPad();
    }

    else
    {
      IsPad = 1;
    }

    [(VOTWorkspace *)self setSupportsHomeGestures:IsPad];
    if ((AXDeviceHasHomeButton() & 1) == 0 && !_AXSVoiceOverTouchUserHasReadNoHomeButtonGestureDescription())
    {
      [(VOTWorkspace *)self performSelector:"_showVOTNoHomeButtonGestureAlert" withObject:0 afterDelay:0.5];
    }

    v42 = +[NSNotificationCenter defaultCenter];
    v43 = +[AVSystemController sharedAVSystemController];
    v78[0] = AVSystemController_ActiveAudioRouteDidChangeNotification;
    v78[1] = AVSystemController_SomeSessionIsPlayingDidChangeNotification;
    v44 = [NSArray arrayWithObjects:v78 count:2];
    [v43 setAttribute:v44 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];

    [v42 addObserver:self selector:"_activeAudioRouteChanged:" name:AVSystemController_ActiveAudioRouteDidChangeNotification object:v43];
    [v42 addObserver:self selector:"_localeChanged:" name:NSCurrentLocaleDidChangeNotification object:0];
    [(VOTWorkspace *)self _activeAudioRouteChanged:0];
    [(VOTWorkspace *)self _preferencesTypingPitchChange];
    [(VOTWorkspace *)self preferencesLanguageRotorItemsChanged:0];
    [(VOTWorkspace *)self preferencesBrailleLanguageRotorItemsChanged:0];
    [(VOTWorkspace *)self _preferencesSpeakingRateInRotorChanged];
    [(VOTWorkspace *)self _preferencesAlwaysUseNemethForMathChange];
    [(VOTWorkspace *)self _preferencesSpeakHintsChange];
    [(VOTWorkspace *)self _preferencesNavigateImagesOptionChange];
    [(VOTWorkspace *)self _preferencesSpeakNotifications];
    [(VOTWorkspace *)self preferencesKeyboardClickStatusChange:0];
    [(VOTWorkspace *)self handleRingerSwitchSwitched:0];
    [(VOTWorkspace *)self _preferencesActivitiesChanged];
    [(VOTWorkspace *)self _preferencesSelectedActivityChanged];
    [(VOTWorkspace *)self _preferencesCaptionPanelChanged];
    [(VOTWorkspace *)self _preferencesSelectedLanguageChanged];
    [(VOTWorkspace *)self _selectedBrailleTableChanged];
    [(VOTWorkspace *)self _selectedBrailleInputTableChanged];
    [(VOTWorkspace *)self _selectedBrailleGesturesInputTableChanged];
    v45 = +[AXSettings sharedInstance];
    self->_navigationStyle = [v45 voiceOverNavigationStyle];

    v46 = +[AXSettings sharedInstance];
    -[VOTWorkspace setNavigationDirection:](self, "setNavigationDirection:", [v46 voiceOverNavigationDirectionMode]);

    v47 = +[AXSettings sharedInstance];
    -[VOTWorkspace setUpdateRotorWithElement:](self, "setUpdateRotorWithElement:", [v47 voiceOverRotorUpdatesWithElement]);

    [(VOTWorkspace *)self _sendGreetingMessage];
    [(VOTWorkspace *)self _registerWithSystem];
    [(VOTWorkspace *)self _registerForUserSwitches];
    v48 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(v48, kAXSVoiceOverLaunchedNotification, 0, 0, 1u);
    v49 = +[NSDistributedNotificationCenter defaultCenter];
    v50 = AXSSVoiceOverPunctuationGroupsChangedNotification;
    [v49 addObserver:self selector:"punctuationGroupsChanged:" name:AXSSVoiceOverPunctuationGroupsChangedNotification object:0];

    v51 = +[NSNotificationCenter defaultCenter];
    [v51 addObserver:self selector:"punctuationGroupsChanged:" name:v50 object:0];

    v52 = +[VOTElement systemWideElement];
    [v52 sendTouchCancelledEvent];

    v74 = 0;
    if (!_AXSAccessibilityGetBooleaniTunesPreference())
    {
      AXPerformBlockOnMainThreadAfterDelay();
    }

    if (AXInPreboardScenario())
    {
      v53 = +[VOTOutputManager outputManager];
      LODWORD(v54) = 0.75;
      [v53 setSystemVolume:v54];

      v55 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterAddObserver(v55, 0, sub_1000447F4, AXInPreBoardScenarioUpdatedNotification, 0, CFNotificationSuspensionBehaviorCoalesce);
    }

    [(VOTWorkspace *)self _updatePointerVoiceOverOptions];
    v56 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v56, self, sub_100044958, kAXSPointerVoiceOverCursorOptionPreferenceDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v57 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v57, self, sub_100044958, kAXSVoiceOverSpeakUnderPointerPreferenceDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v58 = +[VOTDebugManager sharedInstance];
    [v58 setElementManager:self->_elementManager];
    v59 = +[AXSettings sharedInstance];
    v60 = [v59 voiceOverAlwaysTurnOnBluetooth];

    if (v60)
    {
      v73[5] = _NSConcreteStackBlock;
      v73[6] = 3221225472;
      v73[7] = sub_100044964;
      v73[8] = &unk_1001C76E8;
      v73[9] = self;
      AXPerformBlockOnMainThreadAfterDelay();
    }

    [(VOTWorkspace *)self _registerForExternalDevices];
    [(VOTWorkspace *)self performSelector:"_registerForExternalDevices" withObject:0 afterDelay:5.0];
    v61 = +[NSNotificationCenter defaultCenter];
    v62 = +[AVOutputContext sharedSystemAudioContext];
    v73[0] = _NSConcreteStackBlock;
    v73[1] = 3221225472;
    v73[2] = sub_10004496C;
    v73[3] = &unk_1001C7710;
    v73[4] = self;
    v63 = [v61 addObserverForName:AVOutputContextOutputDeviceDidChangeNotification object:v62 queue:0 usingBlock:v73];

    [(VOTWorkspace *)self _handleOnenessCheck];
    v64 = VOTLogElement();
    if (os_signpost_enabled(v64))
    {
      *v72 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v64, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "VOT-Startup", "", v72, 2u);
    }
  }

  else
  {
    v65 = +[AXSubsystemVoiceOverLifeCycle sharedInstance];
    v66 = [v65 ignoreLogging];

    if ((v66 & 1) == 0)
    {
      v67 = +[AXSubsystemVoiceOverLifeCycle identifier];
      v68 = AXLoggerForFacility();

      v69 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = AXColorizeFormatLog();
        v71 = _AXStringForArgs();
        if (os_log_type_enabled(v68, v69))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v71;
          _os_log_impl(&_mh_execute_header, v68, v69, "%{public}@", &buf, 0xCu);
        }
      }
    }

    _AXSVoiceOverTouchSetEnabled();
    [(VOTWorkspace *)self stop:1];
  }

  objc_destroyWeak(&location);
}

- (void)_initializeCaptionModel
{
  v3 = VOTLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting caption model retrieval", v7, 2u);
  }

  v4 = [(VOTWorkspace *)self imageCaptionModelAssetPolicy];
  v5 = [AXAssetController assetControllerWithPolicy:v4 qosClass:25];
  assetController = self->_assetController;
  self->_assetController = v5;

  [(AXAssetController *)self->_assetController setUserInitiated:1];
  [(AXAssetController *)self->_assetController addObserver:self];
  [(AXAssetController *)self->_assetController refreshAssetsByForceUpdatingCatalog:1 updatingCatalogIfNeeded:1 catalogRefreshOverrideTimeout:0 completion:0];
}

- (void)_handleOnenessCheck
{
  v3 = +[AVOutputContext sharedAudioPresentationOutputContext];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 outputDevices];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v10 + 1) + 8 * i) isActivatedForContinuityScreen])
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = VOTLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [NSNumber numberWithBool:v5];
    *buf = 138412290;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Oneness active: %@", buf, 0xCu);
  }

  [(VOTWorkspace *)self setIsOnenessActive:v5];
}

- (void)_handleBluetoothEnablement
{
  v2 = +[VOSBluetoothManager sharedInstance];
  v3 = [v2 enabled];

  v4 = VOTLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [NSNumber numberWithBool:v3];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Checking for whether Bluetooth needs to be enabled: enabled: %@", &v7, 0xCu);
  }

  if ((v3 & 1) == 0)
  {
    v6 = +[AXSpringBoardServer server];
    [v6 setBluetoothPowerEnabled:1];
  }
}

- (void)_updatePointerVoiceOverOptions
{
  [(VOTWorkspace *)self setPointerVoiceOverCursorOption:_AXSPointerVoiceOverCursorOption()];
  [(VOTWorkspace *)self setSpeakUnderPointer:_AXSVoiceOverSpeakUnderPointerEnabled() != 0];
  _AXSVoiceOverSpeakUnderPointerDelay();
  v4 = v3;

  [(VOTWorkspace *)self setSpeakUnderPointerDelay:v4];
}

- (void)_migratePreferencesIfNeeded
{
  v2 = CFPreferencesCopyAppValue(@"VoiceOverTypingMode", @"com.apple.VoiceOverTouch");
  if (v2)
  {
    v3 = v2;
    [v2 integerValue];
    _AXSVoiceOverTouchSetTypingMode();
    CFPreferencesSetAppValue(@"VoiceOverTypingMode", 0, @"com.apple.VoiceOverTouch");
    v2 = v3;
  }
}

- (void)_registerForUserSwitches
{
  v3 = +[UMUserManager sharedManager];
  [v3 registerUserSwitchStakeHolder:self];
}

- (void)willSwitchUser
{
  if ((AXDeviceIsMultiUser() & 1) == 0)
  {
    _AXAssert();
  }

  AXSessionIsLoginSession();
}

- (void)_handleReachabilityChanges
{
  v3 = [(VOTWorkspace *)self reachabilityIdentifier];
  if (v3)
  {
  }

  else if (+[AXSpringBoardServer isAvailable])
  {
    v4 = +[AXSpringBoardServer server];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100045364;
    v6[3] = &unk_1001C8538;
    v6[4] = self;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100045558;
    v5[3] = &unk_1001C8560;
    v5[4] = self;
    [v4 registerReachabilityHandler:v6 withIdentifierCallback:v5];
  }
}

- (void)_registerForPreferenceChanges
{
  v3 = +[AXSettings sharedInstance];
  [v3 registerUpdateBlock:&stru_1001C8580 forRetrieveSelector:"enableVoiceOverCaptions" withListener:self];

  v4 = +[AXSettings sharedInstance];
  [v4 registerUpdateBlock:&stru_1001C85A0 forRetrieveSelector:"speakCorrectionsEnabled" withListener:self];

  v5 = +[AXSettings sharedInstance];
  [v5 registerUpdateBlock:&stru_1001C85C0 forRetrieveSelector:"voiceOverHintsEnabled" withListener:self];

  v6 = +[AXSettings sharedInstance];
  [v6 registerUpdateBlock:&stru_1001C85E0 forRetrieveSelector:"voiceOverPitchChangeEnabled" withListener:self];

  v7 = +[AXSettings sharedInstance];
  [v7 registerUpdateBlock:&stru_1001C8600 forRetrieveSelector:"voiceOverBannerNotificationOutput" withListener:self];

  v8 = +[AXSettings sharedInstance];
  [v8 registerUpdateBlock:&stru_1001C8620 forRetrieveSelector:"voiceOverLockedScreenNotificationOutput" withListener:self];

  v9 = +[AXSettings sharedInstance];
  [v9 registerUpdateBlock:&stru_1001C8640 forRetrieveSelector:"voiceOverUseRingerSwitchToControlNotificationOutput" withListener:self];

  v10 = +[AXSettings sharedInstance];
  [v10 registerUpdateBlock:&stru_1001C8660 forRetrieveSelector:"voiceOverSpeakingRateInRotorEnabled" withListener:self];

  v11 = +[AXSettings sharedInstance];
  [v11 registerUpdateBlock:&stru_1001C8680 forRetrieveSelector:"voiceOverNavigateImagesOption" withListener:self];

  v12 = +[AXSettings sharedInstance];
  [v12 registerUpdateBlock:&stru_1001C86A0 forRetrieveSelector:"voiceOverSpeakingRateForLanguage:" withListener:self];

  v13 = +[AXSettings sharedInstance];
  [v13 registerUpdateBlock:&stru_1001C86C0 forRetrieveSelector:"voiceOverAlwaysUseNemethCodeForMathEnabled" withListener:self];

  v14 = +[AXSettings sharedInstance];
  [v14 registerUpdateBlock:&stru_1001C86E0 forRetrieveSelector:"voiceOverUseDigitalCrownNavigation" withListener:self];

  v15 = +[AXSettings sharedInstance];
  [v15 registerUpdateBlock:&stru_1001C8700 forRetrieveSelector:"voiceOverActivities" withListener:self];

  v16 = +[AXSettings sharedInstance];
  [v16 registerUpdateBlock:&stru_1001C8720 forRetrieveSelector:"voiceOverSelectedActivity" withListener:self];

  v17 = +[AXSettings sharedInstance];
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_100046004;
  v55[3] = &unk_1001C76E8;
  v55[4] = self;
  [v17 registerUpdateBlock:v55 forRetrieveSelector:"voiceOverDefaultPunctuationGroup" withListener:self];

  v18 = +[AXSettings sharedInstance];
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_100046014;
  v54[3] = &unk_1001C76E8;
  v54[4] = self;
  [v18 registerUpdateBlock:v54 forRetrieveSelector:"voiceOverImageCaptionsEnabled" withListener:self];

  v19 = +[AXSettings sharedInstance];
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_100046070;
  v53[3] = &unk_1001C76E8;
  v53[4] = self;
  [v19 registerUpdateBlock:v53 forRetrieveSelector:"voiceOverShouldSpeakDiscoveredText" withListener:self];

  v20 = +[AXSettings sharedInstance];
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_1000460CC;
  v52[3] = &unk_1001C76E8;
  v52[4] = self;
  [v20 registerUpdateBlock:v52 forRetrieveSelector:"voiceOverAutomaticButtonLabels" withListener:self];

  v21 = +[AXSettings sharedInstance];
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_100046128;
  v51[3] = &unk_1001C76E8;
  v51[4] = self;
  [v21 registerUpdateBlock:v51 forRetrieveSelector:"voiceOverContentDescriptionLevel" withListener:self];

  v22 = +[AXSettings sharedInstance];
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_100046184;
  v50[3] = &unk_1001C76E8;
  v50[4] = self;
  [v22 registerUpdateBlock:v50 forRetrieveSelector:"voiceOverContainerOutputFeedback" withListener:self];

  v23 = +[AXSettings sharedInstance];
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_1000461E0;
  v49[3] = &unk_1001C76E8;
  v49[4] = self;
  [v23 registerUpdateBlock:v49 forRetrieveSelector:"voiceOverMoreContentOutputFeedback" withListener:self];

  v24 = +[AXSettings sharedInstance];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_10004623C;
  v48[3] = &unk_1001C76E8;
  v48[4] = self;
  [v24 registerUpdateBlock:v48 forRetrieveSelector:"voiceOverSoundEffectsEnabled" withListener:self];

  v25 = +[AXSettings sharedInstance];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_100046298;
  v47[3] = &unk_1001C76E8;
  v47[4] = self;
  [v25 registerUpdateBlock:v47 forRetrieveSelector:"voiceOverNumberFeedback" withListener:self];

  v26 = +[AXSettings sharedInstance];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1000462F4;
  v46[3] = &unk_1001C76E8;
  v46[4] = self;
  [v26 registerUpdateBlock:v46 forRetrieveSelector:"voiceOverVerbosityEmojiFeedback" withListener:self];

  v27 = +[AXSettings sharedInstance];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_100046350;
  v45[3] = &unk_1001C76E8;
  v45[4] = self;
  [v27 registerUpdateBlock:v45 forRetrieveSelector:"voiceOverBrailleAlertsEnabled" withListener:self];

  v28 = +[AXSettings sharedInstance];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_1000463AC;
  v44[3] = &unk_1001C76E8;
  v44[4] = self;
  [v28 registerUpdateBlock:v44 forRetrieveSelector:"imageCaptioningDisabledApps" withListener:self];

  v29 = +[AXSettings sharedInstance];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100046414;
  v43[3] = &unk_1001C76E8;
  v43[4] = self;
  [v29 registerUpdateBlock:v43 forRetrieveSelector:"automaticAccessibilityEnabled" withListener:self];

  v30 = +[AXSettings sharedInstance];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100046474;
  v42[3] = &unk_1001C76E8;
  v42[4] = self;
  [v30 registerUpdateBlock:v42 forRetrieveSelector:"automaticAccessibilityVisualizationsEnabled" withListener:self];

  v31 = +[AXSettings sharedInstance];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_1000464D4;
  v41[3] = &unk_1001C76E8;
  v41[4] = self;
  [v31 registerUpdateBlock:v41 forRetrieveSelector:"voiceOverNavigationStyle" withListener:self];

  v32 = +[AXSettings sharedInstance];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100046534;
  v40[3] = &unk_1001C76E8;
  v40[4] = self;
  [v32 registerUpdateBlock:v40 forRetrieveSelector:"voiceOverNavigationDirectionMode" withListener:self];

  v33 = +[AXSettings sharedInstance];
  [v33 registerUpdateBlock:&stru_1001C8740 forRetrieveSelector:"voiceOverSelectedLanguage" withListener:self];

  v34 = +[AXSettings sharedInstance];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000465A0;
  v39[3] = &unk_1001C76E8;
  v39[4] = self;
  [v34 registerUpdateBlock:v39 forRetrieveSelector:"voiceOverRotorUpdatesWithElement" withListener:self];

  v35 = +[AXSettings sharedInstance];
  [v35 registerUpdateBlock:&stru_1001C8760 forRetrieveSelector:"voiceOverBrailleTableIdentifier" withListener:self];

  v36 = +[AXSettings sharedInstance];
  [v36 registerUpdateBlock:&stru_1001C8780 forRetrieveSelector:"voiceOverTouchBrailleDisplayOutputTableIdentifier" withListener:self];

  v37 = +[AXSettings sharedInstance];
  [v37 registerUpdateBlock:&stru_1001C87A0 forRetrieveSelector:"voiceOverTouchBrailleDisplayInputTableIdentifier" withListener:self];

  v38 = +[AXSettings sharedInstance];
  [v38 registerUpdateBlock:&stru_1001C87C0 forRetrieveSelector:"voiceOverTouchBrailleGesturesInputTableIdentifier" withListener:self];
}

- (void)dealloc
{
  v3 = VOTSharedWorkspace;
  VOTSharedWorkspace = 0;

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  [(NSLock *)self->_systemLangaugeLock lock];
  [(NSLock *)self->_systemLangaugeLock unlock];
  v6.receiver = self;
  v6.super_class = VOTWorkspace;
  [(VOTWorkspace *)&v6 dealloc];
}

- (void)_preferencesSelectedActivityChanged
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 voiceOverSelectedActivity];

  v5 = self;
  objc_sync_enter(v5);
  selectedActivity = v5->_selectedActivity;
  v5->_selectedActivity = v4;

  objc_sync_exit(v5);

  [(VOTWorkspace *)v5 _updateActivityListeners];
}

- (void)currentElementDidUpdate:(id)a3
{
  v4 = a3;
  v3 = v4;
  AXPerformBlockAsynchronouslyOnMainThread();
}

- (void)addMisspellingsForString:(id)a3
{
  v3 = a3;
  if ([v3 hasAttribute:UIAccessibilityTokenResolveMisspelledLocally])
  {
    v4 = [v3 length];
    v5 = +[UIKeyboardInputModeController sharedInputModeController];
    v6 = 0;
    *&v7 = 138412290;
    v17 = v7;
    while (1)
    {
      v8 = [v5 currentInputMode];
      if (!v8)
      {
        v8 = [v5 currentSystemInputMode];
      }

      textChecker = self->_textChecker;
      v10 = [v8 primaryLanguage];
      v11 = [(UITextChecker *)textChecker rangeOfMisspelledWordInString:v3 range:0 startingAt:v4 wrap:v6 language:0, v10];
      v13 = v12;

      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v21.location = 0;
      v21.length = v4;
      v22.location = v11;
      v22.length = v13;
      v14 = NSIntersectionRange(v21, v22);
      [v3 addAttribute:kCFBooleanTrue forKey:UIAccessibilityTokenMisspelled withRange:{v14.location, v14.length}];
      v15 = AXLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v3 substringWithRange:{v14.location, v14.length}];
        *buf = v17;
        v20 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "added: %@", buf, 0xCu);
      }

      v6 = &v11[v13];
      if (v6 >= v4)
      {
        goto LABEL_11;
      }
    }

LABEL_11:
  }
}

- (void)_updateActivityListeners
{
  v2 = +[VOTBrailleManager manager];
  [v2 updateStatusCellPrefs];

  v3 = +[VOTBrailleManager manager];
  [v3 updateBrailleInputSettings];

  v4 = +[VOTBrailleManager manager];
  [v4 updateBrailleOutputSettings];

  v5 = +[VOTBrailleManager manager];
  [v5 updateBrailleLanguage];

  v6 = +[VOTBrailleManager manager];
  [v6 updateBrailleAutoAdvancePrefs];

  v7 = +[VOTBrailleManager manager];
  [v7 updatePrefersNonBlinkingCursorIndicatorPrefs];
}

- (void)_preferencesActivitiesChanged
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 voiceOverActivities];
  v5 = [v4 copy];

  v6 = VOTLogActivities();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v15 = 138412290;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Activities changed: new: %@", &v15, 0xCu);
  }

  v7 = self;
  objc_sync_enter(v7);
  [(VOTWorkspace *)v7 setActivities:v5];
  if (v7->_selectedActivity)
  {
    v8 = [(VOTWorkspace *)v7 activities];
    v9 = [v8 indexOfObject:v7->_selectedActivity];

    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      selectedActivity = v7->_selectedActivity;
      v7->_selectedActivity = 0;
    }

    else
    {
      selectedActivity = [(VOTWorkspace *)v7 activities];
      v11 = [selectedActivity objectAtIndexedSubscript:v9];
      v12 = v7->_selectedActivity;
      v7->_selectedActivity = v11;
    }
  }

  objc_sync_exit(v7);

  v13 = VOTLogActivities();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [(VOTWorkspace *)v7 activities];
    v15 = 138412290;
    v16 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "VO loading activities: %@", &v15, 0xCu);
  }
}

- (AXVoiceOverActivity)selectedActivity
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_selectedActivity;
  objc_sync_exit(v2);

  return v3;
}

- (NSString)previousRotorVoiceIdentifier
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_previousRotorVoiceIdentifier;
  objc_sync_exit(v2);

  return v3;
}

- (NSArray)activities
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSArray *)v2->_activities copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)_registerForExternalDevices
{
  v3 = +[VOTExternalAccessoryManager accessoryManager];
  [v3 startListening];

  v4 = +[VOTExternalAccessoryManager accessoryManager];
  [v4 setElementManager:self->_elementManager];
}

- (void)handleSystemWideServerDied
{
  v3 = +[AXSubsystemVoiceOver sharedInstance];
  v4 = [v3 ignoreLogging];

  if ((v4 & 1) == 0)
  {
    v5 = +[AXSubsystemVoiceOver identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      connected = self->_retryState.connected;
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        *buf = 138543362;
        v20 = v9;
        _os_log_impl(&_mh_execute_header, v6, v7, "%{public}@", buf, 0xCu);
      }
    }
  }

  if (self->_retryState.connected)
  {
    self->_retryState.lastRecordedTimeOfDeath = CFAbsoluteTimeGetCurrent();
    self->_retryState.connected = 0;
    v10 = +[VOTSpringBoardConnection defaultConnection];
    [v10 informConnectionDied];

    [(VOTEventFactory *)self->_eventFactory resetEventFactory];
    [(VOTElementManagementProtocol *)self->_elementManager systemServerDied];
  }

  v11 = [(VOTWorkspace *)self reachabilityIdentifier];

  if (v11)
  {
    v12 = +[AXSpringBoardServer server];
    v13 = [(VOTWorkspace *)self reachabilityIdentifier];
    [v12 removeReachabilityHandler:v13];

    [(VOTWorkspace *)self setReachabilityIdentifier:0];
  }

  [(VOTEventFactory *)self->_eventFactory unregisterForEvents];
  +[VOTElement resetSystemAppElement];
  Current = CFAbsoluteTimeGetCurrent();
  if (Current - self->_retryState.lastTime > 60.0)
  {
    self->_retryState.delay = 0.5;
    self->_retryState.count = 1;
LABEL_14:
    delay = self->_retryState.delay;
    goto LABEL_15;
  }

  v15 = self->_retryState.count + 1;
  self->_retryState.count = v15;
  HIDWORD(v16) = -858993459 * v15;
  LODWORD(v16) = -858993459 * v15;
  if ((v16 >> 1) >= 0x1999999A)
  {
    goto LABEL_14;
  }

  self->_retryState.count = 0;
  delay = self->_retryState.delay + self->_retryState.delay;
  self->_retryState.delay = delay;
LABEL_15:
  if (delay > 5.0)
  {
    self->_retryState.delay = 5.0;
    delay = 5.0;
  }

  self->_retryState.lastTime = Current;
  [(VOTWorkspace *)self performSelector:"_registerWithSystem" withObject:0 afterDelay:delay];
}

- (void)_registerWithSpringBoard
{
  v3 = +[VOTSpringBoardConnection defaultConnection];
  v4 = v3;
  if (v3 && ([v3 isConnected] & 1) == 0)
  {
    [v4 restartConnection];
    AXPerformBlockOnMainThreadAfterDelay();
  }

  else
  {
    if (!self->_screenCurtainEnabled)
    {
      if (_AXSVoiceOverTouchUsageConfirmed())
      {
        v5 = +[VOTConfiguration rootConfiguration];
        v6 = [v5 preferenceForKey:@"ScreenCurtain"];

        if (v6)
        {
          [v6 BOOLValue];
          _AXSVoiceOverTouchSetScreenCurtainEnabled();
          v7 = +[VOTConfiguration rootConfiguration];
          [v7 setPreference:0 forKey:@"ScreenCurtain"];
        }

        [(VOTWorkspace *)self _updateScreenCurtainEnabled:0];
      }

      else
      {
        _AXSVoiceOverTouchSetScreenCurtainEnabled();
      }
    }

    lastRecordedTimeOfDeath = self->_retryState.lastRecordedTimeOfDeath;
    v9 = VOTLogLifeCycle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v21 = lastRecordedTimeOfDeath > -3061152000.0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Will force screen curtain update %d", buf, 8u);
    }

    [(VOTWorkspace *)self _updateScreenCurtainEnabled:lastRecordedTimeOfDeath > -3061152000.0];
    v10 = +[VOTConfiguration rootConfiguration];
    v11 = [v10 preferenceForKey:@"DeviceRotation"];

    if (v11)
    {
      v12 = [v11 BOOLValue];
      v13 = +[VOTElement systemWideElement];
      [v13 setRotationCapabilityEnabled:v12];
    }

    else
    {
      LOBYTE(v12) = 1;
    }

    v14 = +[VOTElement springBoardApplication];
    v15 = [v14 isSystemSleeping];

    if ((v15 & 1) == 0)
    {
      v16 = +[VOTOutputRequest createRequest];
      if ((v12 & 1) == 0)
      {
        v17 = [VOTSharedWorkspace selectedLanguage];
        v18 = sub_1000516CC(off_1001FDDD0, @"rotation.capability.off", 0, v17);
        v19 = [v16 addString:v18 withLanguage:v17];
      }

      if ([v16 containsActions])
      {
        [v16 setGeneratesBraille:1];
        [v16 send];
      }
    }

    [(VOTWorkspace *)self _handleReachabilityChanges];
    self->_retryState.lastRecordedTimeOfDeath = -3061152000.0;
  }
}

- (void)_updateScreenCurtainEnabled:(BOOL)a3
{
  v3 = a3;
  screenCurtainEnabled = self->_screenCurtainEnabled;
  if (screenCurtainEnabled != _AXSVoiceOverTouchScreenCurtainEnabled() || v3)
  {
    if (_AXSVoiceOverTouchUsageConfirmed())
    {
      self->_screenCurtainEnabled = _AXSVoiceOverTouchScreenCurtainEnabled() != 0;
    }

    v7 = +[VOTSpringBoardConnection defaultConnection];
    [v7 setScreenCurtainEnabled:self->_screenCurtainEnabled];

    v8 = +[VOTDisplayManager displayManager];
    [v8 setScreenCurtainEnabled:self->_screenCurtainEnabled];

    if (!v3)
    {
      v9 = +[VOTOutputManager outputManager];
      if (self->_screenCurtainEnabled)
      {
        v10 = @"screen.curtain.on";
      }

      else
      {
        v10 = @"screen.curtain.off";
      }

      v11 = sub_1000511CC(off_1001FDDD0, v10, 0);
      [v9 speakSimpleString:v11];
    }

    v12 = VOTLogLifeCycle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = self->_screenCurtainEnabled;
      v14[0] = 67109376;
      v14[1] = v3;
      v15 = 1024;
      v16 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Updating screen curtain[%d] to value %d", v14, 0xEu);
    }
  }
}

- (void)_registerWithSystem
{
  if (![(VOTWorkspace *)self inUnitTestMode]&& [(VOTEventFactory *)self->_eventFactory registerForEvents]&& (AXInPreboardScenario() & 1) == 0 && (AXInCheckerBoardScenario() & 1) == 0 && (AXDeviceIsAudioAccessory() & 1) == 0)
  {
    if (self->_retryState.connected)
    {
      [(VOTElementManagementProtocol *)self->_elementManager voiceOverDidRegisterWithSystem];
    }

    else
    {
      self->_retryState.connected = 1;
    }

    [NSThread sleepForTimeInterval:0.25];
    v3 = +[VOTElement systemWideElement];
    [v3 setEventCaptureMode:1];

    [(VOTWorkspace *)self _registerWithSpringBoard];
    [(VOTWorkspace *)self resetSystemBatteryLowState];
    self->_vtwFlags.isInternalInstall = AXIsInternalInstall();
  }
}

- (id)_systemBootTime
{
  *v7 = 0x1500000001;
  v5 = 0;
  v6 = 0;
  v4 = 16;
  if (sysctl(v7, 2u, &v5, &v4, 0, 0) == -1)
  {
    v2 = 0;
  }

  else
  {
    v2 = [NSDate dateWithTimeIntervalSince1970:v6 / 1000000.0 + v5];
  }

  return v2;
}

- (void)_sendGreetingMessage
{
  if ([(VOTWorkspace *)self inUnitTestMode])
  {
    return;
  }

  v22 = sub_1000511CC(off_1001FDDD0, @"welcome.message", 0);
  v3 = +[VOTCrashManager sharedInstance];
  v4 = [v3 didStartFromCrashState];

  if (v4)
  {
    if (AXIsInternalInstall() && (+[VOTConfiguration rootConfiguration](VOTConfiguration, "rootConfiguration"), v5 = objc_claimAutoreleasedReturnValue(), [v5 preferenceForKey:@"VOTAlwaysSayVoiceOverOn"], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "BOOLValue"), v6, v5, v7))
    {
      v8 = [(VOTWorkspace *)self _systemBootTime];
      v9 = +[NSDate date];
      v10 = v9;
      if (v8)
      {
        [v9 timeIntervalSinceDate:v8];
        if (v11 > 25.0)
        {
          v20 = @"Crashed";
          v21 = @"__AXStringForVariablesSentinel";
          v12 = __AXStringForVariables();

          v22 = v12;
        }
      }
    }

    else
    {
      v8 = v22;
      v22 = 0;
    }
  }

  v13 = [VOTElement springBoardApplication:v20];
  v14 = [v13 isSystemSleeping];

  if (!v22)
  {
    if (!v14)
    {
      goto LABEL_19;
    }

LABEL_18:
    [(VOTElementManagementProtocol *)self->_elementManager handleNotification:1004 withData:0 forElement:0];
    goto LABEL_19;
  }

  if (v14)
  {
    goto LABEL_18;
  }

  v15 = +[VOTElement systemAppApplication];
  if ([v15 isSiriTalkingOrListening])
  {
LABEL_16:

    goto LABEL_19;
  }

  v16 = +[VOTElement systemAppApplication];
  v17 = [v16 isVoiceControlRunning];

  if ((v17 & 1) == 0)
  {
    v18 = sub_1000095FC(v22, 1, 0);
    v15 = +[VOTOutputManager outputManager];
    v19 = +[VOSOutputEvent Startup];
    [v15 sendEvent:v19];

    goto LABEL_16;
  }

LABEL_19:
}

- (void)run
{
  v3 = +[NSDate distantFuture];
  [v3 timeIntervalSinceReferenceDate];

  self->_runLoop = CFRunLoopGetCurrent();
  v4 = objc_autoreleasePoolPush();
  self->_vtwFlags.isRunLoopEnabled = 1;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"VOTDidLaunch", 0, 0, 1u);
  v6 = os_transaction_create();
  [(VOTWorkspace *)self setVotTransaction:v6];

  [(VOTWorkspace *)self _initialize];
  v7 = +[AXPerformanceTestReportingServer server];
  [v7 voiceOverTouchDidLaunch];

  objc_autoreleasePoolPop(v4);
  do
  {
    v8 = objc_autoreleasePoolPush();
    CFRunLoopRunSpecific();
    objc_autoreleasePoolPop(v8);
  }

  while (self->_vtwFlags.isRunLoopEnabled);
  if ([(VOTWorkspace *)self disableVoiceOverSettingOnStop])
  {
    v9 = +[AXSubsystemVoiceOverLifeCycle sharedInstance];
    v10 = [v9 ignoreLogging];

    if ((v10 & 1) == 0)
    {
      v11 = +[AXSubsystemVoiceOverLifeCycle identifier];
      v12 = AXLoggerForFacility();

      v13 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = AXColorizeFormatLog();
        v15 = _AXStringForArgs();
        if (os_log_type_enabled(v12, v13))
        {
          v16 = 138543362;
          v17 = v15;
          _os_log_impl(&_mh_execute_header, v12, v13, "%{public}@", &v16, 0xCu);
        }
      }
    }

    _AXSVoiceOverTouchSetEnabled();
  }
}

- (void)loadUIKit
{
  if (qword_1001FEC20 != -1)
  {
    sub_100129ED0();
  }
}

- (void)_showConfirmPanel
{
  v2 = +[VOTSpringBoardConnection defaultConnection];
  [v2 showSpringBoardVOConfirmation:1];
}

- (void)_showVOTNoHomeButtonGestureAlert
{
  _AXSVoiceOverTouchSetUserHasReadNoHomeButtonGestureDescription();
  v2 = +[VOTSpringBoardConnection defaultConnection];
  [v2 showSpringboardNoHomeButtonGestureAlert];
}

- (void)_checkVoiceOverWasConfirmed
{
  if (![(VOTWorkspace *)self voiceOverIsConfirmed])
  {
    v2 = +[VOTSpringBoardConnection defaultConnection];
    [v2 showSpringBoardVOConfirmation:0];

    _AXSVoiceOverTouchSetEnabled();
    if (_AXSCanDisableApplicationAccessibility())
    {

      _AXSApplicationAccessibilitySetEnabled();
    }
  }
}

- (void)_voiceOverUsageConfirmed
{
  [(VOTWorkspace *)self _checkVoiceOverWasConfirmed];

  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_checkVoiceOverWasConfirmed" object:0];
}

- (void)_voiceOverTouchEnabledChange:(__CFString *)a3
{
  if ([VOTSharedWorkspace inUnitTestMode])
  {
    v5 = +[AXSubsystemVoiceOverLifeCycle sharedInstance];
    v6 = [v5 ignoreLogging];

    if ((v6 & 1) == 0)
    {
      v7 = +[AXSubsystemVoiceOverLifeCycle identifier];
      v8 = AXLoggerForFacility();

      v9 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = AXColorizeFormatLog();
        v11 = _AXStringForArgs();
        if (os_log_type_enabled(v8, v9))
        {
          *buf = 138543362;
          v35 = v11;
          _os_log_impl(&_mh_execute_header, v8, v9, "%{public}@", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    _AXSForcePreferenceUpdate();
    if (CFEqual(a3, kAXSVoiceOverTouchEnabledNotification))
    {
      v12 = +[AXSubsystemVoiceOverLifeCycle sharedInstance];
      v13 = [v12 ignoreLogging];

      if ((v13 & 1) == 0)
      {
        v14 = +[AXSubsystemVoiceOverLifeCycle identifier];
        v15 = AXLoggerForFacility();

        v16 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = AXColorizeFormatLog();
          v18 = _AXStringForArgs();
          if (os_log_type_enabled(v15, v16))
          {
            *buf = 138543362;
            v35 = v18;
            _os_log_impl(&_mh_execute_header, v15, v16, "%{public}@", buf, 0xCu);
          }
        }
      }
    }

    if (self->_didSendShutdownSignal || [(VOTWorkspace *)self isVoiceOverTouchPreferenceEnabled])
    {
      AXInPreboardScenario();
      v19 = +[AXSubsystemVoiceOverLifeCycle sharedInstance];
      v20 = [v19 ignoreLogging];

      if ((v20 & 1) == 0)
      {
        v21 = +[AXSubsystemVoiceOverLifeCycle identifier];
        v22 = AXLoggerForFacility();

        v23 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = AXColorizeFormatLog();
          v33 = [NSNumber numberWithBool:[(VOTWorkspace *)self isVoiceOverTouchPreferenceEnabled]];
          v25 = _AXStringForArgs();

          if (os_log_type_enabled(v22, v23))
          {
            *buf = 138543362;
            v35 = v25;
            _os_log_impl(&_mh_execute_header, v22, v23, "%{public}@", buf, 0xCu);
          }
        }
      }
    }

    else
    {
      self->_didSendShutdownSignal = 1;
      v26 = +[AXSubsystemVoiceOverLifeCycle sharedInstance];
      v27 = [v26 ignoreLogging];

      if ((v27 & 1) == 0)
      {
        v28 = +[AXSubsystemVoiceOverLifeCycle identifier];
        v29 = AXLoggerForFacility();

        v30 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = AXColorizeFormatLog();
          v32 = _AXStringForArgs();
          if (os_log_type_enabled(v29, v30))
          {
            *buf = 138543362;
            v35 = v32;
            _os_log_impl(&_mh_execute_header, v29, v30, "%{public}@", buf, 0xCu);
          }
        }
      }

      [(VOTWorkspace *)self stop:0];
    }
  }
}

- (int64_t)navigationStyle
{
  v3 = [(VOTWorkspace *)self elementManager];
  v4 = [(VOTWorkspace *)self currentElement];
  v5 = [v3 determineActivityForElement:v4];

  v6 = [v5 navigationStyle];

  if (v6)
  {
    v7 = [v5 navigationStyle];
    navigationStyle = [v7 intValue];
  }

  else
  {
    navigationStyle = self->_navigationStyle;
  }

  return navigationStyle;
}

- (int64_t)typingMode
{
  v3 = [(VOTWorkspace *)self elementManager];
  v4 = [(VOTWorkspace *)self currentElement];
  v5 = [v3 determineActivityForElement:v4];

  v6 = [v5 typingStyle];

  if (v6)
  {
    v7 = [v5 typingStyle];
    typingMode = [v7 intValue];
  }

  else
  {
    typingMode = self->_typingMode;
  }

  return typingMode;
}

- (void)setTypingMode:(int64_t)a3
{
  if (self->_typingMode != a3)
  {
    self->_typingMode = a3;
    _AXSVoiceOverTouchSetTypingMode();
    v5 = [(VOTEventFactory *)self->_eventFactory directInteractionKeyboardManager];
    [v5 updateTypingMode];
  }
}

- (void)dispatchCommand:(id)a3 bypassGesturedInput:(BOOL)a4
{
  v6 = a3;
  if (a4 || ![(VOTEventFactory *)self->_eventFactory processEventAsGesturedTextInput:v6])
  {
    [(VOTElementManagementProtocol *)self->_elementManager handleEvent:v6];
  }

  _objc_release_x1();
}

- (void)_postKeyboardEventWithCharacters:(id)a3 originalCharacters:(id)a4 modifiers:(id)a5 keyCode:(id)a6
{
  v17 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v11 unsignedIntValue];
  v14 = [v12 unsignedShortValue];
  [(VOTWorkspace *)self _postKeyboardEventsForModifiers:v13 isKeyDown:1];
  [(VOTWorkspace *)self _postKeyboardEventWithKeyCode:v14 characters:v17 originalCharacters:v10 modifierState:v13 isKeyDown:1];
  [(VOTWorkspace *)self _postKeyboardEventWithKeyCode:v14 characters:v17 originalCharacters:v10 modifierState:v13 isKeyDown:0];
  [(VOTWorkspace *)self _postKeyboardEventsForModifiers:v13 isKeyDown:0];
  v15 = [(VOTWorkspace *)self unitTestDelegate];

  if (v15)
  {
    v16 = [(VOTWorkspace *)self unitTestDelegate];
    [v16 didPostKeyboardEventsWithCharacters:v17 originalCharacters:v10 modifiers:v11 keyCode:v12];
  }
}

- (void)_postKeyboardEventsForModifiers:(unsigned int)a3 isKeyDown:(BOOL)a4
{
  if (!a3)
  {
    return;
  }

  v4 = a4;
  v5 = a3;
  if (a4)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    LODWORD(v7) = a3;
  }

  if (a3)
  {
    if (a4)
    {
      v7 = 1;
    }

    else
    {
      v7 = a3 & 0xFFFFFFFE;
    }

    [(VOTWorkspace *)self _postKeyboardEventWithKeyCode:227 modifierState:v7 isKeyDown:a4];
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else if ((a3 & 2) == 0)
  {
    goto LABEL_7;
  }

  v8 = v7 & 0xFFFFFFFD;
  if (v4)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  LODWORD(v7) = v8 | v9;
  [(VOTWorkspace *)self _postKeyboardEventWithKeyCode:226 modifierState:v8 | v9 isKeyDown:v4];
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      return;
    }

    goto LABEL_22;
  }

LABEL_18:
  v10 = v7 & 0xFFFFFFFB;
  if (v4)
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  LODWORD(v7) = v10 | v11;
  [(VOTWorkspace *)self _postKeyboardEventWithKeyCode:224 modifierState:v10 | v11 isKeyDown:v4];
  if ((v5 & 8) != 0)
  {
LABEL_22:
    if (v4)
    {
      v12 = 8;
    }

    else
    {
      v12 = 0;
    }

    [(VOTWorkspace *)self _postKeyboardEventWithKeyCode:225 modifierState:v7 & 0xFFFFFFF7 | v12 isKeyDown:v4];
  }
}

- (void)_postKeyboardEventWithKeyCode:(unsigned __int16)a3 characters:(id)a4 originalCharacters:(id)a5 modifierState:(unsigned int)a6 isKeyDown:(BOOL)a7
{
  if (a7)
  {
    [(VOTWorkspace *)self _postKeyboardEventWithKeyCode:a3 characters:a4 originalCharacters:a5 modifierState:*&a6 eventType:10];
  }

  else
  {
    [(VOTWorkspace *)self _postKeyboardEventWithKeyCode:a3 characters:a4 originalCharacters:a5 modifierState:*&a6 eventType:11];
  }
}

- (void)_postKeyboardEventWithKeyCode:(unsigned __int16)a3 characters:(id)a4 originalCharacters:(id)a5 modifierState:(unsigned int)a6 eventType:(unsigned int)a7
{
  v7 = *&a7;
  v8 = *&a6;
  v10 = a3;
  v12 = a5;
  v13 = a4;
  v15 = [AXEventRepresentation keyRepresentationWithType:v7];
  v14 = [v15 keyInfo];
  [v14 setKeyCode:v10];
  [v14 setModifierState:v8];
  [v14 setUnmodifiedInput:v12];

  [v14 setModifiedInput:v13];
  [(VOTWorkspace *)self handleKeyboardKeyEvent:v15 eventOrigin:1];
  self->_lastKeyboardKeyPress = CFAbsoluteTimeGetCurrent();
  self->_isPostingKeyboardEvents = 1;
  [NSThread sleepForTimeInterval:0.00100000005];
}

- (void)_postKeyboardEvent:(id)a3 modifiers:(id)a4 keyCode:(id)a5
{
  v8 = a5;
  v9 = a3;
  LODWORD(a4) = [a4 unsignedIntValue];
  v10 = [v8 unsignedShortValue];

  LODWORD(v8) = [v9 BOOLValue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100048A44;
  v19[3] = &unk_1001C8808;
  v19[4] = self;
  v20 = a4;
  v21 = v8;
  v11 = objc_retainBlock(v19);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100048A58;
  v15[3] = &unk_1001C8830;
  v15[4] = self;
  v17 = v10;
  v16 = a4;
  v18 = v8;
  v12 = objc_retainBlock(v15);
  v13 = v12;
  if (v8)
  {
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  (v12[2])();
  (v14[2])(v14);
}

- (void)postKeyboardEvent:(BOOL)a3 modifiers:(unsigned int)a4 keyCode:(unsigned __int16)a5
{
  keyPostingQueue = self->_keyPostingQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100048AF8;
  v6[3] = &unk_1001C8830;
  v6[4] = self;
  v9 = a3;
  v7 = a4;
  v8 = a5;
  dispatch_async(keyPostingQueue, v6);
}

- (void)postKeyboardEventWithCharacters:(id)a3 originalCharacters:(id)a4 modifiers:(unsigned int)a5 keyCode:(unsigned __int16)a6
{
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (v10 && v11)
  {
    keyPostingQueue = self->_keyPostingQueue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100048C80;
    v14[3] = &unk_1001C8858;
    v14[4] = self;
    v15 = v10;
    v16 = v12;
    v17 = a5;
    v18 = a6;
    dispatch_async(keyPostingQueue, v14);
  }
}

- (NSArray)focusedApplications
{
  v2 = [(VOTElementManagementProtocol *)self->_elementManager isItemChooserVisible];
  v3 = +[VOTElement systemAppApplication];
  v4 = v3;
  if (v2)
  {
    v8 = v3;
    v5 = [NSArray arrayWithObjects:&v8 count:1];
  }

  else
  {
    v5 = [v3 focusedApplications];
  }

  v6 = v5;

  return v6;
}

- (void)_preferencesAlwaysUseNemethForMathChange
{
  v2 = +[VOTBrailleManager manager];
  [v2 updateUsesNemethForMath];
}

- (void)_preferenceUseDigitalCrownNavigationChanged
{
  v3 = +[AXSettings sharedInstance];
  self->_useDigitalCrownNavigation = [v3 voiceOverUseDigitalCrownNavigation];
}

- (void)setUseDigitalCrownNavigationEnabled:(BOOL)a3
{
  v3 = a3;
  self->_useDigitalCrownNavigation = a3;
  v4 = +[AXSettings sharedInstance];
  [v4 setVoiceOverUseDigitalCrownNavigation:v3];
}

- (void)_preferencesTypingPitchChange
{
  v3 = +[AXSettings sharedInstance];
  -[VOTWorkspace setTypingPitchChangeEnabled:](self, "setTypingPitchChangeEnabled:", [v3 voiceOverPitchChangeEnabled]);
}

- (void)_preferencesSpeakHintsChange
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 voiceOverHintsEnabled];

  [(VOTWorkspace *)self setHintsEnabled:v4];
}

- (void)_preferencesNavigateImagesOptionChange
{
  v3 = +[AXSettings sharedInstance];
  -[VOTWorkspace setNavigateImagesOption:](self, "setNavigateImagesOption:", [v3 voiceOverNavigateImagesOption]);
}

- (void)_preferencesSpeechRateChange
{
  v3 = +[VOTOutputManager outputManager];
  v2 = +[VOTExternalAccessoryManager accessoryManager];
  [v2 updateSpeakingRate];
}

- (void)_preferencesSpeakingRateInRotorChanged
{
  v3 = +[AXSettings sharedInstance];
  -[VOTWorkspace setSpeakingRateInRotor:](self, "setSpeakingRateInRotor:", [v3 voiceOverSpeakingRateInRotorEnabled]);
}

- (void)_preferencesSpeakNotifications
{
  v3 = +[AXSettings sharedInstance];
  -[VOTWorkspace setNotificationsWhenLockedOutput:](self, "setNotificationsWhenLockedOutput:", [v3 voiceOverLockedScreenNotificationOutput]);

  v4 = +[AXSettings sharedInstance];
  -[VOTWorkspace setBannerNotificationsOutput:](self, "setBannerNotificationsOutput:", [v4 voiceOverBannerNotificationOutput]);

  v5 = +[AXSettings sharedInstance];
  -[VOTWorkspace setUseRingerSwitchForNotificationOutput:](self, "setUseRingerSwitchForNotificationOutput:", [v5 voiceOverUseRingerSwitchToControlNotificationOutput]);
}

- (void)preferencesLanguageRotorItemsChanged:(id)a3
{
  v4 = _AXSVoiceOverTouchCopyLanguageRotorItems();
  [(NSLock *)self->_systemLangaugeLock lock];
  v5 = [objc_allocWithZone(NSMutableArray) init];
  v6 = [objc_allocWithZone(NSMutableDictionary) init];
  [v6 setObject:kCFBooleanTrue forKey:@"Default"];
  v16 = v6;
  [(NSArray *)v5 addObject:v6];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 objectForKey:@"Enabled"];
        v14 = [v13 BOOLValue];

        if (v14)
        {
          [(NSArray *)v5 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  if ([(NSArray *)v5 count]== 1)
  {
    [(NSArray *)v5 removeAllObjects];
  }

  enabledLanguageRotorItems = self->_enabledLanguageRotorItems;
  self->_enabledLanguageRotorItems = v5;

  [(NSLock *)self->_systemLangaugeLock unlock];
}

- (void)preferencesBrailleLanguageRotorItemsChanged:(id)a3
{
  if (![(VOTWorkspace *)self inUnitTestMode])
  {
    VOSCrystalMigrateBrailleTableReplacements();
    v4 = +[AXSettings sharedInstance];
    v5 = [v4 voiceOverBrailleLanguageRotorItems];

    v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = [v12 objectForKeyedSubscript:{@"Enabled", v18}];
          v14 = [v13 BOOLValue];

          if (v14)
          {
            [(NSArray *)v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    enabledBrailleLanguageRotorItems = self->_enabledBrailleLanguageRotorItems;
    self->_enabledBrailleLanguageRotorItems = v6;
    v16 = v6;

    v17 = +[VOTBrailleManager manager];

    [v17 updateBrailleLanguage];
  }
}

- (id)phoneticStringForCharacter:(id)a3 andVoiceIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7 || (+[TTSSpeechSynthesizer voiceForIdentifier:](TTSSpeechSynthesizer, "voiceForIdentifier:", v7), v8 = objc_claimAutoreleasedReturnValue(), [v8 language], v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    v10 = [(VOTWorkspace *)self selectedLanguage];
    if (!v10)
    {
      v10 = [(VOTWorkspace *)self systemSpokenLanguage];
    }

    v9 = v10;
  }

  v11 = [(AXCharacterSoundMap *)self->_characterSoundMap phoneticStringForCharacter:v6 forLanguage:v9 andVoiceIdentifier:v7];

  return v11;
}

- (void)setSelectedActivity:(id)a3
{
  objc_storeStrong(&self->_selectedActivity, a3);
  v4 = a3;
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverSelectedActivity:v4];
}

- (void)systemSpokenLanguageChanged:(id)a3
{
  v5 = [(VOTWorkspace *)self systemSpokenLanguage];
  nullsub_3();
  v4 = +[VOTBrailleManager manager];
  [v4 updateBrailleLanguage];

  [(VOTWorkspace *)self _installLanguageTranslationModelForLanguageIfNeeded:v5];
}

- (AXMLanguageTranslator)languageTranslator
{
  languageTranslator = self->_languageTranslator;
  if (!languageTranslator)
  {
    v4 = objc_alloc_init(AXMLanguageTranslator);
    v5 = self->_languageTranslator;
    self->_languageTranslator = v4;

    languageTranslator = self->_languageTranslator;
  }

  return languageTranslator;
}

- (void)_installLanguageTranslationModelForLanguageIfNeeded:(id)a3
{
  v4 = a3;
  v5 = AXMediaLogLanguageTranslation();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Checking if VO should install translation model for: %@", &v7, 0xCu);
  }

  if ([(VOTWorkspace *)self imageCaptionsEnabled])
  {
    v6 = [(VOTWorkspace *)self languageTranslator];
    [v6 installOfflineTranslationModelForLanguageCodeIfNeeded:v4 progress:&stru_1001C8898 completion:&stru_1001C8918];
  }

  else
  {
    v6 = AXMediaLogLanguageTranslation();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Image descriptions not enabled. Will not download translation assets", &v7, 2u);
    }
  }
}

- (id)punctuationGroupForUUID:(id)a3
{
  v4 = a3;
  v5 = [(VOTWorkspace *)self punctuationGroups];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100049BCC;
  v10[3] = &unk_1001C8940;
  v11 = v4;
  v6 = v4;
  v7 = [v5 ax_filteredArrayUsingBlock:v10];
  v8 = [v7 lastObject];

  return v8;
}

- (NSArray)punctuationGroups
{
  v2 = self;
  objc_sync_enter(v2);
  punctuationGroups = v2->_punctuationGroups;
  if (!punctuationGroups)
  {
    v4 = +[AXSSPunctuationManager sharedDatabase];
    v5 = [v4 punctuationGroups];

    if (v5)
    {
      v6 = +[NSMutableArray array];
      v7 = v2->_punctuationGroups;
      v2->_punctuationGroups = v6;

      [(NSMutableArray *)v2->_punctuationGroups axSafelyAddObjectsFromArray:v5];
      defaultPunctuationGroup = v2->_defaultPunctuationGroup;
      v2->_defaultPunctuationGroup = 0;
    }

    punctuationGroups = v2->_punctuationGroups;
  }

  v9 = [(NSMutableArray *)punctuationGroups copy];
  objc_sync_exit(v2);

  return v9;
}

- (id)defaultPunctuationGroup
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_defaultPunctuationGroup)
  {
    v3 = +[AXSettings sharedInstance];
    v4 = [v3 voiceOverDefaultPunctuationGroup];
    v5 = [(VOTWorkspace *)v2 punctuationGroupForUUID:v4];
    defaultPunctuationGroup = v2->_defaultPunctuationGroup;
    v2->_defaultPunctuationGroup = v5;

    if (!v2->_defaultPunctuationGroup)
    {
      v7 = [(VOTWorkspace *)v2 punctuationGroupForUUID:AXSSVoiceOverPunctuationGroupSome];
      v8 = v2->_defaultPunctuationGroup;
      v2->_defaultPunctuationGroup = v7;
    }
  }

  objc_sync_exit(v2);

  v9 = v2->_defaultPunctuationGroup;

  return v9;
}

- (void)punctuationGroupsChanged:(id)a3
{
  v3 = a3;
  v4 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Punctuation groups changed: %@", buf, 0xCu);
  }

  AXPerformBlockAsynchronouslyOnMainThread();
}

- (void)setVoiceOverMuted:(BOOL)a3 sendRequest:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(VOTWorkspace *)self voiceOverIsConfirmed])
  {
    self->_voiceOverMuted = v5;
    [(VOTWorkspace *)self setSpeechMuted:v5];
    if (v4)
    {
      v12 = [objc_allocWithZone(VOTOutputRequest) init];
      if (self->_voiceOverMuted)
      {
        v7 = @"voiceover.muted.off";
      }

      else
      {
        v7 = @"voiceover.muted.on";
      }

      v8 = sub_1000511CC(off_1001FDDD0, v7, 0);
      v9 = [v12 addString:v8];

      v10 = [v12 lastAction];
      [v10 setObject:kCFBooleanTrue forVariant:25];

      sub_100009588(v12);
      if (self->_voiceOverMuted)
      {
        [v12 setCompletionBlock:&stru_1001C8980];
      }

      else
      {
        v11 = +[VOTOutputManager outputManagerIfExists];
        [v11 updateAudioSessionProperties];
      }

      [v12 send];
    }
  }
}

- (void)setScreenCurtainEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(VOTWorkspace *)self voiceOverIsConfirmed])
  {
    if (v3 && ([VOTSharedWorkspace loadUIKit], objc_msgSend(AXSafeClassFromString(), "isRunningInStoreDemoMode")))
    {
      v12 = [VOTSharedWorkspace selectedLanguage];
      v5 = sub_1000516CC(off_1001FDDD0, @"screen.curtain.disabled.in.store.mode", 0, v12);
      v6 = sub_1000095FC(v5, 0, v12);

      _AXSVoiceOverTouchSetScreenCurtainEnabled();
    }

    else
    {
      self->_screenCurtainEnabled = v3;
      v7 = +[VOTSpringBoardConnection defaultConnection];
      [v7 setScreenCurtainEnabled:self->_screenCurtainEnabled];

      v8 = +[VOTDisplayManager displayManager];
      [v8 setScreenCurtainEnabled:self->_screenCurtainEnabled];

      v9 = +[VOTOutputManager outputManager];
      if (self->_screenCurtainEnabled)
      {
        v10 = @"screen.curtain.on";
      }

      else
      {
        v10 = @"screen.curtain.off";
      }

      v11 = sub_1000511CC(off_1001FDDD0, v10, 0);
      [v9 speakSimpleString:v11];

      if (_AXSVoiceOverTouchUsageConfirmed())
      {

        _AXSVoiceOverTouchSetScreenCurtainEnabled();
      }
    }
  }
}

- (void)setScreenCurtainSuspended:(BOOL)a3
{
  v3 = a3;
  if ([(VOTWorkspace *)self screenCurtainEnabled]&& self->_screenCurtainSuspended != v3)
  {
    v5 = +[VOTSpringBoardConnection defaultConnection];
    [v5 setScreenCurtainEnabled:!v3];

    v6 = +[VOTDisplayManager displayManager];
    [v6 setScreenCurtainEnabled:!v3];

    v7 = +[VOTDisplayManager displayManager];
    [v7 clearCursorFrame];

    v8 = +[VOTOutputManager outputManager];
    if (self->_screenCurtainSuspended)
    {
      v9 = @"screen.curtain.on";
    }

    else
    {
      v9 = @"screen.curtain.off";
    }

    v10 = sub_1000511CC(off_1001FDDD0, v9, 0);
    [v8 speakSimpleString:v10];
  }

  self->_screenCurtainSuspended = v3;
}

- (void)_stopRunLoop
{
  self->_vtwFlags.isRunLoopEnabled = 0;
  runLoop = self->_runLoop;
  if (runLoop)
  {
    CFRunLoopStop(runLoop);
  }
}

- (void)outputRequestFinished:(id)a3
{
  v4 = a3;
  [NSObject cancelPreviousPerformRequestsWithTarget:self];
  completionRequest = self->_completionRequest;

  if (completionRequest == v4)
  {

    [(VOTWorkspace *)self _stopRunLoop];
  }
}

- (void)stop:(int)a3
{
  v5 = +[VOTElement systemWideElement];
  [v5 unsetEventCaptureMode:1];

  v6 = +[VOTOutputManager outputManager];
  [v6 setSoundCurtainEnabled:0];

  v7 = +[VOTExternalAccessoryManager accessoryManager];
  [v7 stopListening];

  _AXSVoiceOverTouchSetActive2DBrailleDisplays();
  if (!self->_completionRequest)
  {
    v8 = +[VOTOutputManager outputManagerIfExists];
    [v8 stopSpeakingAtBoundary:0];
  }

  if (!byte_1001FEC28)
  {
    [(VOTEventFactory *)self->_eventFactory shutdown];
    v9 = +[VOTDisplayManager displayManager];
    [v9 shutdown];

    if (!a3)
    {
      v10 = [objc_allocWithZone(VOTOutputRequest) init];
      v11 = [VOTSharedWorkspace selectedLanguage];
      v12 = sub_1000516CC(off_1001FDDD0, @"voiceover.off", 0, v11);
      v13 = [(VOTOutputRequest *)v10 addString:v12 withLanguage:v11];

      [(VOTOutputRequest *)v10 setLastSystemRequest:1];
      [(VOTOutputRequest *)v10 setCompletionDelegate:self];
      [(VOTOutputRequest *)v10 setCannotBeInterrupted:1];
      [(VOTOutputRequest *)v10 setGeneratesBraille:1];
      [(VOTOutputRequest *)v10 send];
      completionRequest = self->_completionRequest;
      self->_completionRequest = v10;
    }

    if (self->_isPostingKeyboardEvents)
    {
      ++self->_triggeredKBAttachState;
      v15 = [(VOTWorkspace *)self softwareKeyboardManager];
      [v15 _overrideSetHardwareKeyboardAttached:self->_originalKBAttachedState];

      v16 = VOTLogKeyboard();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        originalKBAttachedState = self->_originalKBAttachedState;
        v22[0] = 67109120;
        v22[1] = originalKBAttachedState;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Resetting hw keyboard state to: %d", v22, 8u);
      }
    }
  }

  v18 = +[VOTElement systemWideElement];
  [v18 sendTouchCancelledEvent];

  v19 = +[VOTSpringBoardConnection defaultConnection];
  [v19 setScreenCurtainEnabled:0];

  v20 = +[VOTDisplayManager displayManager];
  [v20 setScreenCurtainEnabled:0];

  v21 = +[VOTConfiguration rootConfiguration];
  [v21 setPreference:0 forKey:@"VOTIsRunningKey"];

  if (a3 == 1)
  {
    byte_1001FEC28 = 2;
LABEL_15:
    [(VOTWorkspace *)self _stopRunLoop];
    goto LABEL_16;
  }

  if (byte_1001FEC28 == 2)
  {
    goto LABEL_15;
  }

  if (!byte_1001FEC28)
  {
    [(VOTWorkspace *)self performSelector:"outputRequestFinished:" withObject:self->_completionRequest afterDelay:5.0];
  }

LABEL_16:
  ++byte_1001FEC28;
}

- (void)_selfDestruct
{
  if (AXGuidedAccessGetAvailability() != 6)
  {
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    v13[0] = @"com.apple.mediaserverd";
    v13[1] = AX_BackBoardBundleName;
    v13[2] = AX_SpringBoardBundleName;
    v3 = [NSArray arrayWithObjects:v13 count:3, 0, 0];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = AXPidForLaunchLabel();
          kill(v8, 15);
          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
      }

      while (v5);
    }

    [(VOTWorkspace *)self _stopRunLoop];
  }
}

- (void)handleVolumeButtonPress:(id)a3
{
  v13 = a3;
  v4 = +[VOTOutputManager outputManager];
  v5 = [v4 isSpeaking];

  if ((v5 & 1) == 0)
  {
    v6 = [(VOTEventFactory *)self->_eventFactory currentElement];
    v7 = [v6 application];
    v8 = [v7 isCameraIrisOpen];

    if ((v8 & 1) == 0)
    {
      v9 = +[AXSystemAppServer server];
      [v9 isMediaPlayingForApp:0 completionHandler:&stru_1001C89C0];
    }
  }

  v10 = +[VOTCommandHelper commandHelper];
  if ([v10 helpEnabled] && objc_msgSend(v13, "subtype") != 226)
  {
    v11 = [objc_allocWithZone(VOTKeyInfo) initWithEventRepresentation:v13];
    v12 = [VOTEvent keyEventWithCommand:0 keyInfo:v11];
    [v10 processHelpForEvent:v12];
  }
}

- (void)handleMenuButtonPress:(id)a3
{
  [(VOTWorkspace *)self _checkVoiceOverWasConfirmed];
  [(VOTEventFactory *)self->_eventFactory resetEventFactory];
  v4 = +[VOTCommandHelper commandHelper];
  v5 = [v4 helpEnabled];

  if (v5)
  {
    v6 = [VOTSharedWorkspace selectedLanguage];
    v7 = sub_1000516CC(off_1001FDDD0, @"home.button.pressed", 0, v6);
    v8 = sub_1000095FC(v7, 0, v6);

    v9 = sub_1000516CC(off_1001FDDD0, @"stopping.help.mode", 0, v6);
    v10 = sub_1000095FC(v9, 2, v6);

    v11 = +[VOTCommandHelper commandHelper];
    [v11 setHelpEnabled:0];
  }

  [(VOTElementManagementProtocol *)self->_elementManager handleStateReset];
  self->_lastHomeButtonPress = CFAbsoluteTimeGetCurrent();
}

- (void)handleAppleTVRemoteEvent:(id)a3 eventOrigin:(int64_t)a4 isRTL:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = [v7 type];
  if (v8 > 1203)
  {
    if (v8 > 1205)
    {
      if (v8 != 1206)
      {
        if (v8 == 1207)
        {
          goto LABEL_29;
        }

LABEL_13:
        v9 = +[AXSubsystemVoiceOver sharedInstance];
        v10 = [v9 ignoreLogging];

        if ((v10 & 1) == 0)
        {
          v11 = +[AXSubsystemVoiceOver identifier];
          v12 = AXLoggerForFacility();

          v13 = AXOSLogLevelFromAXLogLevel();
          if (os_log_type_enabled(v12, v13))
          {
            v14 = AXColorizeFormatLog();
            v15 = _AXStringForArgs();
            if (os_log_type_enabled(v12, v13))
            {
              *buf = 138543362;
              v21 = v15;
              _os_log_impl(&_mh_execute_header, v12, v13, "%{public}@", buf, 0xCu);
            }
          }

          goto LABEL_28;
        }

        goto LABEL_29;
      }

      v17 = &kVOTEventCommandPreviousElement;
      v18 = &kVOTEventCommandNextElement;
    }

    else
    {
      if (v8 != 1204)
      {
        goto LABEL_29;
      }

      v17 = &kVOTEventCommandNextElement;
      v18 = &kVOTEventCommandPreviousElement;
    }

    if (!v5)
    {
      v17 = v18;
    }

    v19 = *v17;
  }

  else
  {
    if (v8 > 1201)
    {
      if (v8 != 1202)
      {
        goto LABEL_29;
      }

      v16 = &kVOTEventCommandSearchRotorDown;
    }

    else
    {
      if (v8 != 1200)
      {
        if (v8 == 1201)
        {
          goto LABEL_29;
        }

        goto LABEL_13;
      }

      v16 = &kVOTEventCommandSearchRotorUp;
    }

    v19 = *v16;
  }

  v12 = [VOTEvent appleTVRemoteEventWithCommand:v19 info:0];
  if (v12)
  {
    [(VOTElementManagementProtocol *)self->_elementManager updateNavigationModeForClassicRemote];
    [(VOTElementManagementProtocol *)self->_elementManager handleEvent:v12];
LABEL_28:
  }

LABEL_29:
}

- (void)_temporarilyChangeQuickNav:(id)a3
{
  keyboardManager = self->_keyboardManager;
  v4 = [a3 BOOLValue];

  [(VOTKeyboardManager *)keyboardManager updateQuickNavState:v4];
}

- (void)temporarilyChangeQuickNavState:(BOOL)a3
{
  keyPostingQueue = self->_keyPostingQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004AFB4;
  v4[3] = &unk_1001C89E8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(keyPostingQueue, v4);
}

- (void)_handleSystemMuteKey:(id)a3
{
  v4 = a3;
  v5 = [v4 eventRecord];
  v6 = [v5 originalType];

  if (v6 != 1026)
  {
    v7 = +[VOTOutputManager outputManager];
    if ([v7 isSystemMuted])
    {
      v8 = [v4 eventRecord];
      [(VOTKeyboardManager *)self->_keyboardManager postEvent:v8];
      v9 = [v8 copy];

      [v9 setType:1026];
      [v9 setOriginalType:1026];
      [(VOTKeyboardManager *)self->_keyboardManager postEvent:v9];
      v16[2] = _NSConcreteStackBlock;
      v16[3] = 3221225472;
      v16[4] = sub_10004B224;
      v16[5] = &unk_1001C76E8;
      v10 = &v17;
      v17 = v7;
      AXPerformBlockOnMainThreadAfterDelay();
    }

    else
    {
      v9 = +[VOTOutputRequest createRequest];
      v11 = off_1001FDDD0;
      v12 = [VOTSharedWorkspace selectedLanguage];
      v13 = sub_1000511CC(v11, @"system.muted", v12);
      v14 = [v9 addString:v13];

      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10004B2AC;
      v15[3] = &unk_1001C8A10;
      v10 = v16;
      v16[0] = v4;
      v16[1] = self;
      [v9 setCompletionBlock:v15];
      [v9 send];
    }
  }
}

- (void)handleMediaKeyPress:(id)a3
{
  v7 = a3;
  v4 = +[VOTCommandHelper commandHelper];
  v5 = [objc_allocWithZone(VOTKeyInfo) initWithEventRepresentation:v7];
  if ([v4 helpEnabled])
  {
    if ([v5 isMediaKey])
    {
      v6 = [VOTEvent keyEventWithCommand:0 keyInfo:v5];
      [v4 processHelpForEvent:v6];
    }
  }

  else if ([v7 originalType] == 1025 || objc_msgSend(v7, "originalType") == 1026)
  {
    [(VOTWorkspace *)self performSelector:"_handleSystemMuteKey:" withObject:v5 afterDelay:0.5];
  }

  else
  {
    [(VOTKeyboardManager *)self->_keyboardManager postEvent:v7];
  }
}

- (void)handleLockButtonPress:(id)a3
{
  [(VOTWorkspace *)self _checkVoiceOverWasConfirmed];
  self->_lastLockButtonPress = CFAbsoluteTimeGetCurrent();
  v4 = +[VOTCommandHelper commandHelper];
  [v4 setHelpEnabled:0];

  eventFactory = self->_eventFactory;

  [(VOTEventFactory *)eventFactory resetEventFactory];
}

- (void)handleProximityEvent:(id)a3
{
  elementManager = self->_elementManager;
  v4 = [VOTEvent internalEventWithCommand:kVOTEventCommandCancelSpeaking info:0];
  [(VOTElementManagementProtocol *)elementManager handleEvent:v4];
}

- (void)handleRingerSwitchSwitched:(id)a3
{
  if ((+[AXSpringBoardServer isAvailable]& 1) != 0)
  {
    v4 = +[AXSpringBoardServer server];
    self->_vtwFlags.ringerSwitchSilent = [v4 isRingerMuted];
  }

  else
  {
    self->_vtwFlags.ringerSwitchSilent = 0;
  }
}

- (void)handleSetForcedOrientation:(int64_t)a3 shouldAnnounce:(BOOL)a4
{
  if (a3)
  {
    if (self->_forcedOrientation != a3)
    {
      self->_forcedOrientation = a3;
      [(VOTWorkspace *)self _resetOrientationAndAnnounce:a4 updateApplication:0];
    }
  }

  else
  {
    _AXAssert();
  }
}

- (void)handleUnsetForcedOrientationAndAnnounce:(BOOL)a3
{
  if (self->_forcedOrientation)
  {
    self->_forcedOrientation = 0;
    [(VOTWorkspace *)self _resetOrientationAndAnnounce:a3 updateApplication:0];
  }
}

- (void)handleReturnToSpringBoard
{
  [(VOTElementManagementProtocol *)self->_elementManager handleHomeButtonPress];

  [(VOTWorkspace *)self performSelector:"resetOrientation" withObject:0 afterDelay:0.35];
}

- (CGPoint)fingerPosition
{
  [(VOTEventFactory *)self->_eventFactory fingerPosition];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)_languageChanged
{
  v2 = [(VOTWorkspace *)self currentElement];
  v3 = [v2 application];
  v4 = [v3 isSetupBuddy];

  if ((v4 & 1) == 0)
  {
    exit(1);
  }
}

- (void)_preferencesCaptionPanelChanged
{
  v3 = +[AXSettings sharedInstance];
  -[VOTWorkspace setCaptionPanelEnabled:](self, "setCaptionPanelEnabled:", [v3 enableVoiceOverCaptions]);
}

- (void)_speakCorrectionsChanged
{
  v3 = +[AXSettings sharedInstance];
  self->_vtwFlags.speakAutocorrectionsEnabled = [v3 speakCorrectionsEnabled];
}

- (void)_setDeviceOrientation:(int64_t)a3 shouldAnnounce:(BOOL)a4 updateApplication:(BOOL)a5
{
  v5 = a5;
  orientation = self->_orientation;
  if (orientation == a3 || a3 == 1 && !orientation || !a3 && orientation == 1)
  {
    if (byte_1001FEC29)
    {
      return;
    }

    v8 = 0;
    self->_orientation = a3;
  }

  else
  {
    self->_orientation = a3;
    if (a4)
    {
      v8 = [(VOTWorkspace *)self announceOrientationChanges];
    }

    else
    {
      v8 = 0;
    }
  }

  v30 = [VOTSharedWorkspace selectedLanguage];
  v9 = 0;
  v10 = self->_orientation;
  if (v10 > 2)
  {
    if (v10 == 3)
    {
      [(VOTEventFactory *)self->_eventFactory setOrientation:3];
      byte_1001FEC29 = 1;
      v13 = sub_1000516CC(off_1001FDDD0, @"rotate.landscape.left", 0, v30);
      HasHomeButton = AXDeviceHasHomeButton();
      v15 = off_1001FDDD0;
      if (HasHomeButton)
      {
        v16 = @"landscape.right.hint";
      }

      else
      {
        v16 = @"landscape.right.hint.charge.port";
      }
    }

    else
    {
      v13 = 0;
      if (v10 != 4)
      {
        goto LABEL_26;
      }

      [(VOTEventFactory *)self->_eventFactory setOrientation:2];
      byte_1001FEC29 = 1;
      v13 = sub_1000516CC(off_1001FDDD0, @"rotate.landscape.right", 0, v30);
      v14 = AXDeviceHasHomeButton();
      v15 = off_1001FDDD0;
      if (v14)
      {
        v16 = @"landscape.left.hint";
      }

      else
      {
        v16 = @"landscape.left.hint.charge.port";
      }
    }

    v9 = sub_1000516CC(v15, v16, 0, v30);
  }

  else
  {
    if (v10 >= 2)
    {
      v13 = 0;
      if (v10 != 2)
      {
        goto LABEL_26;
      }

      [(VOTEventFactory *)self->_eventFactory setOrientation:1];
      byte_1001FEC29 = 1;
      v11 = off_1001FDDD0;
      v12 = @"rotate.portrait.upsidedown";
    }

    else
    {
      [(VOTEventFactory *)self->_eventFactory setOrientation:0];
      byte_1001FEC29 = 1;
      v11 = off_1001FDDD0;
      v12 = @"rotate.portrait";
    }

    v13 = sub_1000516CC(v11, v12, 0, v30);
    v9 = 0;
  }

LABEL_26:
  v18 = [(VOTElementManagementProtocol *)self->_elementManager currentElement];
  v19 = [v18 application];

  v20 = +[VOTElement springBoardApplication];
  if (v8 && [(VOTElementManagementProtocol *)self->_elementManager shouldAllowSpeaking])
  {
    v21 = [v19 isTourGuideRunning];
  }

  else
  {
    v21 = 1;
  }

  if (([v20 isSystemSleeping] & 1) == 0 && !((-[VOTWorkspace currentCallState](self, "currentCallState") != 0) | v21 & 1))
  {
    v22 = sub_1000095FC(v13, 1, v30);
    if (v9)
    {
      if ([VOTSharedWorkspace hintsEnabled])
      {
        v23 = [objc_allocWithZone(VOTOutputRequest) init];
        LODWORD(v24) = 1061997773;
        [v23 addPause:v24];
        v25 = [v23 addString:v9 withLanguage:v30];
        [v23 send];
      }
    }
  }

  v26 = +[VOTDisplayManager displayManager];
  [v26 setCursorFrameForElement:0];

  +[AXUIMLElement clearCaches];
  if (v5)
  {
    elementManager = self->_elementManager;
    v28 = [NSNumber numberWithBool:0];
    [(VOTElementManagementProtocol *)elementManager performSelector:"updateApplicationAndSpeak:" withObject:v28 afterDelay:0.35];
  }

  else
  {
    v28 = +[VOTDisplayManager displayManager];
    v29 = [(VOTWorkspace *)self currentElement];
    [v28 setCursorFrameForElement:v29];
  }
}

- (void)_resetOrientationAndAnnounce:(BOOL)a3 updateApplication:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [VOTSharedWorkspace applicationForCurrentElement];
  v8 = [v7 applicationOrientation];

  if (!v8)
  {
    v9 = +[VOTElement systemAppApplication];
    v8 = [v9 applicationOrientation];
  }

  self->_applicationOrientation = v8;
  if (self->_forcedOrientation)
  {
    forcedOrientation = self->_forcedOrientation;
  }

  else
  {
    forcedOrientation = v8;
  }

  [(VOTWorkspace *)self _setDeviceOrientation:forcedOrientation shouldAnnounce:v5 updateApplication:v4];
}

- (void)rotateDeviceOrientation:(BOOL)a3
{
  v3 = a3;
  v4 = +[VOTElement systemAppApplication];
  v5 = [v4 applicationOrientation];

  if (v5 > 2)
  {
    if (v5 != 3)
    {
      if (v5 != 4)
      {
        return;
      }

      v6 = !v3;
      v7 = 1;
      goto LABEL_7;
    }

    v9 = !v3;
    v10 = 1;
  }

  else
  {
    if (v5 < 2)
    {
      v6 = !v3;
      v7 = 3;
LABEL_7:
      if (v6)
      {
        v8 = v7;
      }

      else
      {
        v8 = v7 + 1;
      }

      goto LABEL_16;
    }

    if (v5 != 2)
    {
      return;
    }

    v9 = !v3;
    v10 = 3;
  }

  if (v9)
  {
    v8 = v10 + 1;
  }

  else
  {
    v8 = v10;
  }

LABEL_16:
  v11 = +[VOTElement systemWideElement];
  [v11 setDeviceOrientation:v8];
}

- (void)resetSystemBatteryLowState
{
  isSystemBatteryLow = self->_isSystemBatteryLow;
  v4 = +[VOTElement springBoardApplication];
  v5 = [v4 isSystemBatteryLow];

  if (isSystemBatteryLow != v5)
  {
    self->_isSystemBatteryLow ^= 1u;
    v6 = VOTSharedWorkspace;

    [v6 refreshBraille:0 rotorSelection:0];
  }
}

- (void)performHomeButtonPress
{
  v2 = [AXEventRepresentation buttonRepresentationWithType:1000];
  v3 = +[AXBackBoardServer server];
  [v3 postEvent:v2 systemEvent:1];

  v5 = [AXEventRepresentation buttonRepresentationWithType:1001];

  v4 = +[AXBackBoardServer server];
  [v4 postEvent:v5 systemEvent:1];

  [NSThread sleepForTimeInterval:0.15];
}

- (void)performVolumeUpButtonPress
{
  v3 = +[AXPISystemActionHelper sharedInstance];
  [v3 pressVolumeUpButtonDown];

  v4 = +[AXPISystemActionHelper sharedInstance];
  [v4 liftVolumeUpButtonUp];

  v5 = [AXEventRepresentation buttonRepresentationWithType:1007];
  [(VOTWorkspace *)self performSelectorOnMainThread:"_wst_handleVolumeButtonPress:" withObject:v5 waitUntilDone:0];
}

- (void)performVolumeDownButtonPress
{
  v3 = +[AXPISystemActionHelper sharedInstance];
  [v3 pressVolumeDownButtonDown];

  v4 = +[AXPISystemActionHelper sharedInstance];
  [v4 liftVolumeDownButtonUp];

  v5 = [AXEventRepresentation buttonRepresentationWithType:1009];
  [(VOTWorkspace *)self performSelectorOnMainThread:"_wst_handleVolumeButtonPress:" withObject:v5 waitUntilDone:0];
}

- (void)performEjectButtonPress
{
  v3 = +[VOTBrailleManager manager];
  v4 = [v3 handleShowOnscreenKeyboardToggle];

  if ((v4 & 1) == 0)
  {
    v5 = [AXEventRepresentation buttonRepresentationWithType:1029];
    [(VOTWorkspace *)self performSelectorOnMainThread:"_wst_handleMediaKeyPress:" withObject:v5 waitUntilDone:0];
    v6 = [AXEventRepresentation buttonRepresentationWithType:1030];

    [(VOTWorkspace *)self performSelectorOnMainThread:"_wst_handleMediaKeyPress:" withObject:v6 waitUntilDone:0];
  }
}

- (void)performNextLanguageButtonPress
{
  keyPostingQueue = self->_keyPostingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004C18C;
  block[3] = &unk_1001C76E8;
  block[4] = self;
  dispatch_async(keyPostingQueue, block);
}

- (void)keyboardManagerHandleKeyDown:(BOOL)a3 keyCode:(unsigned __int16)a4 modifierState:(unsigned int)a5 eventOrigin:(int64_t)a6
{
  v7 = *&a5;
  v8 = a4;
  v9 = a3;
  v13 = objc_alloc_init(AXEventKeyInfoRepresentation);
  [v13 setKeyDown:v9];
  [v13 setKeyCode:v8];
  [v13 setModifierState:v7];
  [v13 setUsagePage:7];
  v10 = objc_alloc_init(AXEventRepresentation);
  [v10 setKeyInfo:v13];
  if (v9)
  {
    v11 = 10;
  }

  else
  {
    v11 = 11;
  }

  [v10 setType:v11];
  [v10 setFlags:1];
  v12 = +[VOTKeyboardManager keyboardManager];
  [v12 handleKeyboardKeyEvent:v10 eventOrigin:a6];
}

- (void)_postNextLanguageEvent
{
  [(VOTWorkspace *)self keyboardManagerHandleKeyDown:1 keyCode:224 modifierState:4 eventOrigin:4];
  [(VOTWorkspace *)self keyboardManagerHandleKeyDown:1 keyCode:44 modifierState:4 eventOrigin:4];
  [(VOTWorkspace *)self keyboardManagerHandleKeyDown:0 keyCode:44 modifierState:4 eventOrigin:4];

  [(VOTWorkspace *)self keyboardManagerHandleKeyDown:0 keyCode:224 modifierState:0 eventOrigin:4];
}

- (void)refreshBraille:(BOOL)a3 rotorSelection:(id)a4
{
  v4 = a3;
  v8 = a4;
  v5 = [VOTEvent brailleEventWithCommand:kVOTEventCommandBrailleRefreshBrailleLine info:0];
  v6 = v5;
  v7 = &kCFBooleanTrue;
  if (!v4)
  {
    v7 = &kCFBooleanFalse;
  }

  [v5 setObject:*v7 forIndex:106];
  if (v8)
  {
    [v6 setObject:v8 forIndex:109];
  }

  [VOTSharedWorkspace dispatchCommand:v6];
}

- (void)setSoundMuted:(BOOL)a3
{
  self->_soundMuted = a3;
  Current = CFAbsoluteTimeGetCurrent();

  [(VOTWorkspace *)self setLastSoundMuteToggleTime:Current];
}

- (void)setSpeechMuted:(BOOL)a3
{
  self->_speechMuted = a3;
  Current = CFAbsoluteTimeGetCurrent();

  [(VOTWorkspace *)self setLastSpeechMuteToggleTime:Current];
}

- (void)userInteractedWithDeviceWithHand:(BOOL)a3
{
  self->_lastDeviceInteractionEvent = CFAbsoluteTimeGetCurrent();
  v5 = +[VOTBrailleManager manager];
  [v5 setLastUserInteractionTime:self->_lastDeviceInteractionEvent];

  if (a3 || ([VOTSharedWorkspace keyboardBrailleUIEnabled] & 1) == 0)
  {
    v6 = +[VOTBrailleManager manager];
    [v6 userInteractedWithDeviceWithoutBraille];
  }
}

- (void)unmuteEligibleEventOccured
{
  self->_lastUnmuteEvent = CFAbsoluteTimeGetCurrent();
  v3 = +[VOTBrailleManager manager];
  [v3 setLastUserInteractionTime:self->_lastUnmuteEvent];
}

- (void)screenLockOccurred
{
  self->_lastDeviceLock = CFAbsoluteTimeGetCurrent();
  eventFactory = self->_eventFactory;

  [(VOTEventFactory *)eventFactory screenLockOccurred];
}

- (void)setScreenOn:(BOOL)a3 silently:(BOOL)a4
{
  self->_screenOn = a3;
  Current = CFAbsoluteTimeGetCurrent();
  if (a3)
  {
    self->_screenOnTime = Current;
    if (!a4)
    {

      [(VOTWorkspace *)self unmuteEligibleEventOccured];
    }
  }

  else
  {
    self->_screenOffTime = Current;
  }
}

- (double)speechRateFromSettings
{
  if (self->_inUnitTestMode && ([(VOTWorkspace *)self unitTestSpeechRate], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [(VOTWorkspace *)self unitTestSpeechRate];
    [v4 doubleValue];
    v6 = v5;

    return v6;
  }

  else
  {
    _AXSVoiceOverTouchSpeakingRate();
    return v8;
  }
}

- (int)_callCenterQueue_currentCallState
{
  v3 = [(TUCallCenter *)self->_callCenter audioOrVideoCallWithStatus:4];

  if (v3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
    v5 = [(TUCallCenter *)self->_callCenter audioOrVideoCallWithStatus:1];

    if (!v5)
    {
      v6 = [(TUCallCenter *)self->_callCenter audioOrVideoCallWithStatus:3];

      if (v6)
      {
        v4 = 3;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  v7 = VOTLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9[0] = 67109120;
    v9[1] = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Call state: %d", v9, 8u);
  }

  return v4;
}

- (int)currentCallState
{
  if (self->_inUnitTestMode)
  {

    return [(VOTWorkspace *)self currentCallStateForUnitTests];
  }

  else
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    if ((AXInPreboardScenario() & 1) == 0 && (AXInCheckerBoardScenario() & 1) == 0)
    {
      callCenterQueue = self->_callCenterQueue;
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10004C8A8;
      v6[3] = &unk_1001C77F0;
      v6[4] = self;
      v6[5] = &v7;
      dispatch_sync(callCenterQueue, v6);
    }

    v4 = *(v8 + 6);
    _Block_object_dispose(&v7, 8);
    return v4;
  }
}

- (void)_activeAudioRouteChanged:(id)a3
{
  avAccessQueue = self->_avAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004C950;
  block[3] = &unk_1001C76E8;
  block[4] = self;
  dispatch_async(avAccessQueue, block);
}

- (void)_localeChanged:(id)a3
{
  [(VOTWorkspace *)self _selectedBrailleTableChanged];

  [(VOTWorkspace *)self _preferencesAlwaysUseNemethForMathChange];
}

- (BOOL)userUnlockedDevice
{
  if (!self->_inUnitTestMode || ![(VOTWorkspace *)self overridePropertiesForTesting])
  {
    return self->_lastDeviceLock < self->_lastUnmuteEvent;
  }

  return [(VOTWorkspace *)self userUnlockedDeviceForUnitTesting];
}

- (BOOL)userRecentlyUnlockedDevice
{
  if (self->_inUnitTestMode && [(VOTWorkspace *)self overridePropertiesForTesting])
  {

    return [(VOTWorkspace *)self userRecentlyUnlockedDeviceForUnitTesting];
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    return Current - self->_lastLockButtonPress < 4.0 || Current - self->_lastHomeButtonPress < 4.0;
  }
}

- (BOOL)isRingerSwitchSilent
{
  if (self->_inUnitTestMode && [(VOTWorkspace *)self overridePropertiesForTesting])
  {

    return [(VOTWorkspace *)self isRingerSwitchSilentForUnitTesting];
  }

  else
  {
    if ((byte_1001FEC2A & 1) == 0)
    {
      [(VOTWorkspace *)self handleRingerSwitchSwitched:0];
      byte_1001FEC2A = 1;
    }

    return self->_vtwFlags.ringerSwitchSilent;
  }
}

- (NSArray)languageRotorItems
{
  v3 = [(VOTWorkspace *)self additionalLanguageRotorItem];

  if (v3)
  {
    v15 = @"RotorItem";
    v4 = [(VOTWorkspace *)self additionalLanguageRotorItem];
    v16 = v4;
    v3 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  }

  [(NSLock *)self->_systemLangaugeLock lock];
  enabledLanguageRotorItems = self->_enabledLanguageRotorItems;
  if (!enabledLanguageRotorItems)
  {
    [(VOTWorkspace *)self preferencesLanguageRotorItemsChanged:0];
    enabledLanguageRotorItems = self->_enabledLanguageRotorItems;
  }

  v6 = [(NSArray *)enabledLanguageRotorItems copy];
  [(NSLock *)self->_systemLangaugeLock unlock];
  if (v6)
  {
    if (v3)
    {
      v7 = [v6 arrayByAddingObject:v3];
    }

    else
    {
      v7 = v6;
    }

    v10 = v7;
  }

  else if (v3)
  {
    v13[0] = @"Default";
    v13[1] = @"RotorItem";
    v14[0] = &__kCFBooleanTrue;
    v8 = [VOTSharedWorkspace systemSpokenLanguage];
    v14[1] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];

    v12[0] = v3;
    v12[1] = v9;
    v10 = [NSArray arrayWithObjects:v12 count:2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSArray)brailleLanguageRotorItems
{
  enabledBrailleLanguageRotorItems = self->_enabledBrailleLanguageRotorItems;
  if (!enabledBrailleLanguageRotorItems)
  {
    [(VOTWorkspace *)self preferencesBrailleLanguageRotorItemsChanged:0];
    enabledBrailleLanguageRotorItems = self->_enabledBrailleLanguageRotorItems;
  }

  return enabledBrailleLanguageRotorItems;
}

- (void)unitTestSetBrailleRotorItems:(id)a3
{
  v6 = a3;
  if ([(VOTWorkspace *)self inUnitTestMode])
  {
    v4 = [v6 copy];
    enabledBrailleLanguageRotorItems = self->_enabledBrailleLanguageRotorItems;
    self->_enabledBrailleLanguageRotorItems = v4;
  }
}

- (void)setSelectedLanguage:(id)a3
{
  v4 = a3;
  v5 = [(VOTWorkspace *)self votSettings];
  [v5 setSelectedLanguageIdentifier:v4];
}

- (NSString)selectedLanguage
{
  v2 = [(VOTWorkspace *)self votSettings];
  v3 = [v2 selectedLanguageIdentifier];

  return v3;
}

- (void)setSelectedBrailleTable:(id)a3
{
  v14 = a3;
  [(NSLock *)self->_brailleLangaugeLock lock];
  v5 = [(BRLTTable *)self->_selectedBrailleTable copy];
  [(NSLock *)self->_brailleLangaugeLock unlock];
  if (([v14 isEqual:v5] & 1) == 0)
  {
    [(NSLock *)self->_brailleLangaugeLock lock];
    objc_storeStrong(&self->_selectedBrailleTable, a3);
    [(NSLock *)self->_brailleLangaugeLock unlock];
    if (![(VOTWorkspace *)self inUnitTestMode])
    {
      v6 = [v14 identifier];
      v7 = +[AXSettings sharedInstance];
      [v7 setVoiceOverBrailleTableIdentifier:v6];

      v8 = [v14 identifier];
      v9 = +[AXSettings sharedInstance];
      [v9 setVoiceOverTouchBrailleDisplayOutputTableIdentifier:v8];
    }

    v10 = +[AXSettings sharedInstance];
    v11 = [v10 voiceOverTouchBrailleDisplaySyncInputOutputTables];

    if (v11)
    {
      [(NSLock *)self->_brailleLangaugeLock lock];
      objc_storeStrong(&self->_selectedBrailleInputTable, a3);
      [(NSLock *)self->_brailleLangaugeLock unlock];
      if (![(VOTWorkspace *)self inUnitTestMode])
      {
        v12 = [v14 identifier];
        v13 = +[AXSettings sharedInstance];
        [v13 setVoiceOverTouchBrailleDisplayInputTableIdentifier:v12];
      }
    }
  }
}

- (BRLTTable)selectedBrailleTable
{
  v3 = [(VOTWorkspace *)self elementManager];
  v4 = [(VOTWorkspace *)self currentElement];
  v5 = [v3 determineActivityForElement:v4];

  v6 = [v5 brailleTable];

  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = [BRLTTable alloc];
  v8 = [v5 brailleTable];
  v9 = [v7 initWithIdentifier:v8];

  v10 = VOTLogActivities();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Using activity table: %@", &v12, 0xCu);
  }

  if (!v9)
  {
LABEL_5:
    [(NSLock *)self->_brailleLangaugeLock lock];
    v9 = [(BRLTTable *)self->_selectedBrailleTable copy];
    [(NSLock *)self->_brailleLangaugeLock unlock];
  }

  return v9;
}

- (void)_selectedBrailleTableChanged
{
  VOSCrystalMigrateBrailleTableReplacements();
  v3 = +[AXSettings sharedInstance];
  v6 = [v3 voiceOverTouchBrailleDisplayOutputTableIdentifier];

  if (v6)
  {
    v4 = [[BRLTTable alloc] initWithIdentifier:v6];
    [(VOTWorkspace *)self setSelectedBrailleTable:v4];
  }

  v5 = +[VOTBrailleManager manager];
  [v5 updateBrailleLanguage];
}

- (void)setSelectedBrailleInputTable:(id)a3
{
  v12 = a3;
  [(NSLock *)self->_brailleLangaugeLock lock];
  v5 = [(BRLTTable *)self->_selectedBrailleInputTable copy];
  [(NSLock *)self->_brailleLangaugeLock unlock];
  if (([v12 isEqual:v5] & 1) == 0)
  {
    [(NSLock *)self->_brailleLangaugeLock lock];
    objc_storeStrong(&self->_selectedBrailleInputTable, a3);
    [(NSLock *)self->_brailleLangaugeLock unlock];
    if (![(VOTWorkspace *)self inUnitTestMode])
    {
      v6 = [v12 identifier];
      v7 = +[AXSettings sharedInstance];
      [v7 setVoiceOverTouchBrailleDisplayInputTableIdentifier:v6];
    }

    v8 = +[AXSettings sharedInstance];
    v9 = [v8 voiceOverTouchBrailleDisplaySyncInputOutputTables];

    if (v9)
    {
      [(NSLock *)self->_brailleLangaugeLock lock];
      objc_storeStrong(&self->_selectedBrailleTable, a3);
      [(NSLock *)self->_brailleLangaugeLock unlock];
      if (![(VOTWorkspace *)self inUnitTestMode])
      {
        v10 = [v12 identifier];
        v11 = +[AXSettings sharedInstance];
        [v11 setVoiceOverTouchBrailleDisplayOutputTableIdentifier:v10];
      }
    }
  }
}

- (BRLTTable)selectedBrailleInputTable
{
  v3 = [(VOTWorkspace *)self elementManager];
  v4 = [(VOTWorkspace *)self currentElement];
  v5 = [v3 determineActivityForElement:v4];

  v6 = [v5 brailleInputTable];

  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = [BRLTTable alloc];
  v8 = [v5 brailleInputTable];
  v9 = [v7 initWithIdentifier:v8];

  v10 = VOTLogActivities();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Using activity input table: %@", &v12, 0xCu);
  }

  if (!v9)
  {
LABEL_5:
    v9 = self->_selectedBrailleInputTable;
  }

  return v9;
}

- (void)_selectedBrailleInputTableChanged
{
  VOSCrystalMigrateBrailleTableReplacements();
  v3 = +[AXSettings sharedInstance];
  v7 = [v3 voiceOverTouchBrailleDisplayInputTableIdentifier];

  if (v7)
  {
    v4 = [[BRLTTable alloc] initWithIdentifier:v7];
    selectedBrailleInputTable = self->_selectedBrailleInputTable;
    self->_selectedBrailleInputTable = v4;
  }

  v6 = +[VOTBrailleManager manager];
  [v6 updateBrailleLanguage];
}

- (void)setSelectedBrailleGesturesInputTable:(id)a3
{
  v7 = a3;
  if (([v7 isEqual:self->_selectedBrailleGesturesInputTable] & 1) == 0)
  {
    objc_storeStrong(&self->_selectedBrailleGesturesInputTable, a3);
    if (![(VOTWorkspace *)self inUnitTestMode])
    {
      v5 = [v7 identifier];
      v6 = +[AXSettings sharedInstance];
      [v6 setVoiceOverTouchBrailleGesturesInputTableIdentifier:v5];
    }
  }
}

- (void)_selectedBrailleGesturesInputTableChanged
{
  VOSCrystalMigrateBrailleTableReplacements();
  v3 = +[AXSettings sharedInstance];
  v6 = [v3 voiceOverTouchBrailleGesturesInputTableIdentifier];

  if (v6)
  {
    v4 = [[BRLTTable alloc] initWithIdentifier:v6];
    selectedBrailleGesturesInputTable = self->_selectedBrailleGesturesInputTable;
    self->_selectedBrailleGesturesInputTable = v4;
  }
}

- (BOOL)isBaseSystemSpokenEqualToLocalization
{
  v3 = [(VOTWorkspace *)self systemSpokenLanguage];
  v4 = [(VOTWorkspace *)self selectedLanguage];
  if (v4)
  {
    if (v3)
    {
      v5 = [v3 rangeOfString:@"-"];
      if (v5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = [v3 substringToIndex:v5];

        v3 = v6;
      }

      v7 = [v4 rangeOfString:@"-"];
      if (v7 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = [v4 substringToIndex:v7];

        v4 = v8;
      }

      v9 = [v3 isEqualToString:v4];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)applicationForCurrentElement
{
  v3 = [(VOTElementManagementProtocol *)self->_elementManager currentElement];
  v4 = [(VOTWorkspace *)self applicationForElement:v3];

  return v4;
}

- (id)applicationForElement:(id)a3
{
  v3 = a3;
  if ([v3 isApplication])
  {
    v4 = AXRetainAutorelease();
LABEL_5:
    v5 = v4;
    goto LABEL_15;
  }

  if ([VOTSharedWorkspace inUnitTestMode])
  {
    v4 = [v3 elementForAttribute:2017];
    goto LABEL_5;
  }

  v6 = [v3 pid];
  if (v6 != kAXUIServerFakePid && v6 <= -2)
  {
    v8 = -v6;
  }

  else
  {
    v8 = v6;
  }

  [NSNumber numberWithInteger:v8];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_10004DA7C;
  v22 = sub_10004DA8C;
  v9 = v23 = 0;
  AX_PERFORM_WITH_LOCK();
  v10 = v19[5];
  if (!v10)
  {
    v11 = [v3 elementForAttribute:2017];
    v12 = v19[5];
    v19[5] = v11;

    v16 = v3;
    v17 = v9;
    AX_PERFORM_WITH_LOCK();
    v13 = [v19[5] copyWithCache];
    v14 = v19[5];
    v19[5] = v13;

    v10 = v19[5];
  }

  v5 = v10;

  _Block_object_dispose(&v18, 8);
LABEL_15:

  return v5;
}

- (id)applicationForPID:(int)a3
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10004DA7C;
  v9 = sub_10004DA8C;
  v10 = 0;
  AX_PERFORM_WITH_LOCK();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (BOOL)_userHasDisabledUSBRM
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 userBoolValueForSetting:MCFeatureUSBRestrictedModeAllowed] == 2;

  return v3;
}

- (void)_setUSBRMPreferenceDisabled
{
  v2 = +[MCProfileConnection sharedConnection];
  [v2 setBoolValue:0 forSetting:MCFeatureUSBRestrictedModeAllowed];

  v3 = _AXSGetUSBRMDisablers() | 1;

  __AXSSetUSBRMDisablers(v3);
}

- (void)handleBluetoothBrailleDisplayConnected
{
  v2 = +[VOTConfiguration rootConfiguration];
  v3 = [v2 preferenceForKey:@"kVOTBTAlwaysOnAsk"];
  v4 = [v3 BOOLValue];

  if ((v4 & 1) == 0)
  {
    v5 = +[VOTConfiguration rootConfiguration];
    [v5 setPreference:&__kCFBooleanTrue forKey:@"kVOTBTAlwaysOnAsk"];

    v6 = +[AXSpringBoardServer server];
    [v6 showAlert:17 withHandler:&stru_1001C8AA8];
  }
}

- (id)_validateAssetFromResults:(id)a3
{
  v3 = a3;
  v4 = [AXAsset newsestCompatibleImageCaptionModelAssetFromAssets:v3 withStage:@"Stable" language:@"en" isInstalled:1 isDownloadable:0];
  if (!v4)
  {
    v4 = [AXAsset newsestCompatibleImageCaptionModelAssetFromAssets:v3 withStage:@"Stable" language:@"en" isInstalled:0 isDownloadable:1];
  }

  return v4;
}

- (void)assetController:(id)a3 didFinishRefreshingAssets:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6
{
  v8 = a4;
  v9 = a6;
  v10 = VOTLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Refreshed assets: %@ %@", buf, 0x16u);
  }

  v11 = [(VOTWorkspace *)self _validateAssetFromResults:v8];
  v12 = VOTLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Using asset: %@", buf, 0xCu);
  }

  if (v11 && ([v11 isInstalled] & 1) == 0)
  {
    v13 = VOTLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Downloading asset: %@", buf, 0xCu);
    }

    assetController = self->_assetController;
    v16 = v11;
    v15 = [NSArray arrayWithObjects:&v16 count:1];
    [(AXAssetController *)assetController downloadAssets:v15 successStartBlock:&stru_1001C8AC8];
  }
}

- (void)assetController:(id)a3 didFinishDownloadingAsset:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6 hasRemainingDownloads:(BOOL)a7
{
  v8 = a4;
  v9 = a6;
  v10 = VOTLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Finished downloading: %@ %@", &v11, 0x16u);
  }
}

- (void)assetController:(id)a3 didUpdateCatalogForPolicy:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6
{
  v7 = a5;
  v8 = a4;
  v9 = a6;
  v10 = VOTLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [NSNumber numberWithBool:v7];
    v12 = 138412802;
    v13 = v8;
    v14 = 2112;
    v15 = v11;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Did update catalog: %@ %@ %@", &v12, 0x20u);
  }
}

- (void)handleUSBMFiBrailleDisplayConnected
{
  if (AXDeviceIsUnlocked())
  {
    v3 = +[AXSettings sharedInstance];
    if (([v3 voiceOverUserDidReadUSBRestrictedModeAlert] & 1) != 0 || -[VOTWorkspace _userHasDisabledUSBRM](self, "_userHasDisabledUSBRM"))
    {
      v4 = +[AXSettings sharedInstance];
      v5 = [v4 voiceOverShouldDisallowUSBRestrictedMode];

      if (!v5)
      {
        return;
      }
    }

    else
    {
    }

    v7 = +[AXSettings sharedInstance];
    [v7 setVoiceOverShouldDisallowUSBRestrictedMode:0];

    v13 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = -5;
    v20 = 7;
    *buf = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_10004F2DC;
    v17 = &unk_1001C8B18;
    v18 = &v21;
    v19 = &v13;
    if (ACMKernelControl())
    {
      v8 = 0;
    }

    else
    {
      v8 = *(v22 + 6) == 0;
    }

    _Block_object_dispose(&v21, 8);
    if ((v13 & 0x10) != 0)
    {
      v9 = 15;
    }

    else
    {
      v9 = 13;
    }

    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = 13;
    }

    v11 = +[AXSpringBoardServer server];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10004E6B8;
    v12[3] = &unk_1001C8AF0;
    v12[4] = self;
    [v11 showAlert:v10 withHandler:v12];
  }

  else
  {
    v6 = VOTLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Not showing USB restricted mode alert because device is locked", buf, 2u);
    }
  }
}

- (CGPoint)convertDevicePointToZoomedPoint:(CGPoint)a3
{
  [(VOTEventFactory *)self->_eventFactory convertDevicePointToZoomedPoint:a3.x, a3.y];
  result.y = v4;
  result.x = v3;
  return result;
}

- (NSString)systemSpokenLanguage
{
  v3 = [(VOTWorkspace *)self unitTestSystemSpokenLanguage];

  if (v3)
  {
    v4 = [(VOTWorkspace *)self unitTestSystemSpokenLanguage];
  }

  else
  {
    v5 = [(VOTWorkspace *)self votSettings];
    v4 = [v5 systemLanguageIdentifier];
  }

  return v4;
}

- (void)setUnitTestSystemSpokenLanguage:(id)a3
{
  objc_storeStrong(&self->_unitTestSystemSpokenLanguage, a3);
  v4 = a3;
  v5 = +[VOTOutputManager outputManager];

  [v5 updateSupportedLanguageMap];
}

- (VOTWorkspaceUnitTestDelegate)unitTestDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_unitTestDelegate);

  return WeakRetained;
}

- (void)setElementManager:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_elementManager, a3);
  if ([v5 conformsToProtocol:&OBJC_PROTOCOL___VOTRotorManagementProtocol])
  {
    [(VOTWorkspace *)self setRotorManager:v5];
  }
}

- (id)lastScreenChangeTime
{
  [(VOTElementManagementProtocol *)self->_elementManager lastScreenChangeNotificationTime];

  return [NSDate dateWithTimeIntervalSince1970:?];
}

- (id)currentElementRotorString
{
  v2 = [(VOTElementManagementProtocol *)self->_elementManager elementRotor];
  v3 = [v2 currentRotorString];

  return v3;
}

- (void)_testFetchWebElementRects
{
  v2 = [(VOTElementManagementProtocol *)self->_elementManager valueForKey:@"_currentElement"];
  if ([v2 doesHaveTraits:kAXWebContentTrait])
  {
    v3 = VOTLogElement();
    if (os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "FetchWebElementRects", "", buf, 2u);
    }

    v4 = 2000;
    do
    {
      [v2 updateFrame];
      --v4;
    }

    while (v4);
    v5 = VOTLogElement();
    if (os_signpost_enabled(v5))
    {
      *v6 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "FetchWebElementRects", "", v6, 2u);
    }
  }
}

- (float64x2_t)_updateMainScreenSize:(double)a3 scale:
{
  *&xmmword_1001FF150 = a1.f64[0];
  *(&xmmword_1001FF150 + 1) = a2;
  qword_1001FF160 = *&a3;
  a1.f64[1] = a2;
  __asm { FMOV            V2.2D, #0.5 }

  result = vmulq_f64(a1, _Q2);
  xmmword_1001FF170 = result;
  qword_1001FF180 = *&result.f64[0];
  *algn_1001FF188 = a2 / 3.0;
  return result;
}

@end