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
- (BOOL)softwareKeyboardManagerShouldSetHardwareKeyboardAttached:(id)attached hardwareKeyboardIsCurrentlyAttached:(BOOL)currentlyAttached newHardwareKeyboardAttachedValue:(BOOL *)value;
- (BOOL)userRecentlyUnlockedDevice;
- (BOOL)userUnlockedDevice;
- (BRLTTable)selectedBrailleInputTable;
- (BRLTTable)selectedBrailleTable;
- (CGPoint)convertDevicePointToZoomedPoint:(CGPoint)point;
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
- (float64x2_t)_updateMainScreenSize:(double)size scale:;
- (id)_assetUpdaterClient;
- (id)_systemBootTime;
- (id)_validateAssetFromResults:(id)results;
- (id)applicationForCurrentElement;
- (id)applicationForElement:(id)element;
- (id)applicationForPID:(int)d;
- (id)currentElementRotorString;
- (id)defaultPunctuationGroup;
- (id)lastScreenChangeTime;
- (id)phoneticStringForCharacter:(id)character andVoiceIdentifier:(id)identifier;
- (id)punctuationGroupForUUID:(id)d;
- (int)_callCenterQueue_currentCallState;
- (int)currentCallState;
- (int64_t)activeBrailleInputPreference;
- (int64_t)activeBrailleOutputPreference;
- (int64_t)containerOutputFeedback;
- (int64_t)navigationStyle;
- (int64_t)typingMode;
- (void)_activeAudioRouteChanged:(id)changed;
- (void)_applyVoiceOverMigrations;
- (void)_callStatusChanged:(id)changed;
- (void)_checkVoiceOverWasConfirmed;
- (void)_crystalBMigrateDuckingVolumePreferences;
- (void)_handleBluetoothEnablement;
- (void)_handleOnenessCheck;
- (void)_handleReachabilityChanges;
- (void)_handleSystemMuteKey:(id)key;
- (void)_initialize;
- (void)_initializeCaptionModel;
- (void)_installLanguageTranslationModelForLanguageIfNeeded:(id)needed;
- (void)_languageChanged;
- (void)_localeChanged:(id)changed;
- (void)_migratePreferencesIfNeeded;
- (void)_postKeyboardEvent:(id)event modifiers:(id)modifiers keyCode:(id)code;
- (void)_postKeyboardEventWithCharacters:(id)characters originalCharacters:(id)originalCharacters modifiers:(id)modifiers keyCode:(id)code;
- (void)_postKeyboardEventWithKeyCode:(unsigned __int16)code characters:(id)characters originalCharacters:(id)originalCharacters modifierState:(unsigned int)state eventType:(unsigned int)type;
- (void)_postKeyboardEventWithKeyCode:(unsigned __int16)code characters:(id)characters originalCharacters:(id)originalCharacters modifierState:(unsigned int)state isKeyDown:(BOOL)down;
- (void)_postKeyboardEventsForModifiers:(unsigned int)modifiers isKeyDown:(BOOL)down;
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
- (void)_resetOrientationAndAnnounce:(BOOL)announce updateApplication:(BOOL)application;
- (void)_screenChange:(id)change;
- (void)_selectedBrailleGesturesInputTableChanged;
- (void)_selectedBrailleInputTableChanged;
- (void)_selectedBrailleTableChanged;
- (void)_selfDestruct;
- (void)_sendGreetingMessage;
- (void)_setDeviceOrientation:(int64_t)orientation shouldAnnounce:(BOOL)announce updateApplication:(BOOL)application;
- (void)_setUSBRMPreferenceDisabled;
- (void)_showConfirmPanel;
- (void)_showVOTNoHomeButtonGestureAlert;
- (void)_speakCorrectionsChanged;
- (void)_stopRunLoop;
- (void)_temporarilyChangeQuickNav:(id)nav;
- (void)_testFetchWebElementRects;
- (void)_tigrisMigrateLanguageRotors;
- (void)_updateActivityListeners;
- (void)_updatePointerVoiceOverOptions;
- (void)_updateScreenCurtainEnabled:(BOOL)enabled;
- (void)_voiceOverTouchEnabledChange:(__CFString *)change;
- (void)_voiceOverUsageConfirmed;
- (void)_yukonMigrateLanguageRotors;
- (void)addMisspellingsForString:(id)string;
- (void)assetController:(id)controller didFinishDownloadingAsset:(id)asset wasSuccessful:(BOOL)successful error:(id)error hasRemainingDownloads:(BOOL)downloads;
- (void)assetController:(id)controller didFinishRefreshingAssets:(id)assets wasSuccessful:(BOOL)successful error:(id)error;
- (void)assetController:(id)controller didUpdateCatalogForPolicy:(id)policy wasSuccessful:(BOOL)successful error:(id)error;
- (void)currentElementDidUpdate:(id)update;
- (void)dealloc;
- (void)dispatchCommand:(id)command bypassGesturedInput:(BOOL)input;
- (void)handleAppleTVRemoteEvent:(id)event eventOrigin:(int64_t)origin isRTL:(BOOL)l;
- (void)handleBluetoothBrailleDisplayConnected;
- (void)handleLockButtonPress:(id)press;
- (void)handleMediaKeyPress:(id)press;
- (void)handleMenuButtonPress:(id)press;
- (void)handleProximityEvent:(id)event;
- (void)handleReturnToSpringBoard;
- (void)handleRingerSwitchSwitched:(id)switched;
- (void)handleSetForcedOrientation:(int64_t)orientation shouldAnnounce:(BOOL)announce;
- (void)handleSystemWideServerDied;
- (void)handleUSBMFiBrailleDisplayConnected;
- (void)handleUnsetForcedOrientationAndAnnounce:(BOOL)announce;
- (void)handleVolumeButtonPress:(id)press;
- (void)keyboardManagerHandleKeyDown:(BOOL)down keyCode:(unsigned __int16)code modifierState:(unsigned int)state eventOrigin:(int64_t)origin;
- (void)loadUIKit;
- (void)mlElementDetectorReceivedFrames:(id)frames labels:(id)labels uiClasses:(id)classes;
- (void)mlElementDetectorScrollToVisibleOccurred:(CGPoint)occurred;
- (void)mlElementDetectorUpdatedElements;
- (void)outputRequestFinished:(id)finished;
- (void)performEjectButtonPress;
- (void)performHomeButtonPress;
- (void)performNextLanguageButtonPress;
- (void)performVolumeDownButtonPress;
- (void)performVolumeUpButtonPress;
- (void)postKeyboardEvent:(BOOL)event modifiers:(unsigned int)modifiers keyCode:(unsigned __int16)code;
- (void)postKeyboardEventWithCharacters:(id)characters originalCharacters:(id)originalCharacters modifiers:(unsigned int)modifiers keyCode:(unsigned __int16)code;
- (void)preferencesBrailleLanguageRotorItemsChanged:(id)changed;
- (void)preferencesLanguageRotorItemsChanged:(id)changed;
- (void)punctuationGroupsChanged:(id)changed;
- (void)refreshBraille:(BOOL)braille rotorSelection:(id)selection;
- (void)resetSystemBatteryLowState;
- (void)rotateDeviceOrientation:(BOOL)orientation;
- (void)run;
- (void)screenLockOccurred;
- (void)setAllowSingleLetterSearching:(BOOL)searching;
- (void)setElementManager:(id)manager;
- (void)setKeyboardBrailleUIEnabled:(BOOL)enabled;
- (void)setPerkinsChordKeyboardInputEnabled:(BOOL)enabled;
- (void)setPerkinsKeyboardInputEnabled:(BOOL)enabled;
- (void)setScreenCurtainEnabled:(BOOL)enabled;
- (void)setScreenCurtainSuspended:(BOOL)suspended;
- (void)setScreenOn:(BOOL)on silently:(BOOL)silently;
- (void)setSelectedActivity:(id)activity;
- (void)setSelectedBrailleGesturesInputTable:(id)table;
- (void)setSelectedBrailleInputTable:(id)table;
- (void)setSelectedBrailleTable:(id)table;
- (void)setSelectedLanguage:(id)language;
- (void)setSoundMuted:(BOOL)muted;
- (void)setSpeechMuted:(BOOL)muted;
- (void)setTvInteractionMode:(int64_t)mode;
- (void)setTypingMode:(int64_t)mode;
- (void)setUnitTestSystemSpokenLanguage:(id)language;
- (void)setUseDigitalCrownNavigationEnabled:(BOOL)enabled;
- (void)setVoiceOverMuted:(BOOL)muted sendRequest:(BOOL)request;
- (void)softwareKeyboardManagerWillUpdateKeyboardState:(id)state;
- (void)stop:(int)stop;
- (void)systemSpokenLanguageChanged:(id)changed;
- (void)temporarilyChangeQuickNavState:(BOOL)state;
- (void)unitTestSetBrailleRotorItems:(id)items;
- (void)unmuteEligibleEventOccured;
- (void)userInteractedWithDeviceWithHand:(BOOL)hand;
- (void)willSwitchUser;
@end

@implementation VOTWorkspace

- (VOTWorkspace)init
{
  selfCopy = self;
  if (VOTSharedWorkspace)
  {
    v3 = VOTSharedWorkspace;
    goto LABEL_19;
  }

  v58.receiver = self;
  v58.super_class = VOTWorkspace;
  v4 = [(VOTWorkspace *)&v58 init];
  selfCopy = v4;
  if (!v4)
  {
LABEL_18:
    v3 = 0;
    goto LABEL_19;
  }

  if (![(VOTWorkspace *)v4 isAccessibilityEnabled])
  {
    v46 = +[AXSubsystemVoiceOverLifeCycle sharedInstance];
    ignoreLogging = [v46 ignoreLogging];

    if ((ignoreLogging & 1) == 0)
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

  objc_storeStrong(&VOTSharedWorkspace, selfCopy);
  [(VOTWorkspace *)selfCopy setDisableVoiceOverSettingOnStop:1];
  AXDevicePrimeDisplayManager();
  _AXSVoiceOverTouchEnabled();
  _AXSVoiceOverTouchUsageConfirmed();
  _AXSApplicationAccessibilityEnabled();
  _AXSBrailleScreenInputEnabled();
  v54 = vdupq_n_s64(0xC1E6CEAF20000000);
  *&selfCopy->_lastLockButtonPress = v54;
  selfCopy->_lastKeyboardKeyPress = -3061152000.0;
  selfCopy->_lastDeviceInteractionEvent = CFAbsoluteTimeGetCurrent();
  selfCopy->_lastUnmuteEvent = CFAbsoluteTimeGetCurrent();
  *&selfCopy->_screenOnTime = v54;
  selfCopy->_lastPowerCheck = -3061152000.0;
  postKeyThreadKey = selfCopy->_postKeyThreadKey;
  selfCopy->_postKeyThreadKey = @"VOTPostKey";

  v6 = objc_alloc_init(NSLock);
  systemLangaugeLock = selfCopy->_systemLangaugeLock;
  selfCopy->_systemLangaugeLock = v6;

  v8 = objc_alloc_init(NSLock);
  brailleLangaugeLock = selfCopy->_brailleLangaugeLock;
  selfCopy->_brailleLangaugeLock = v8;

  selfCopy->_forcedOrientation = 0;
  v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v11 = dispatch_queue_create("voiceover.keyposting.workspace", v10);
  keyPostingQueue = selfCopy->_keyPostingQueue;
  selfCopy->_keyPostingQueue = v11;

  v13 = dispatch_queue_create("voiceover.avaccessqueue.workspace", 0);
  avAccessQueue = selfCopy->_avAccessQueue;
  selfCopy->_avAccessQueue = v13;

  v15 = +[VOTConfiguration rootConfiguration];
  v16 = [v15 preferenceForKey:@"WebsiteLanguageMappingOverride"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = +[NSDictionary dictionary];

    v16 = v17;
  }

  v18 = [v16 mutableCopy];
  [(VOTWorkspace *)selfCopy setWebsiteLanguageMappingOverrides:v18];

  v19 = objc_alloc_init(AXCharacterSoundMap);
  characterSoundMap = selfCopy->_characterSoundMap;
  selfCopy->_characterSoundMap = v19;

  v21 = AXLogSpeechAssetDownload();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    _assetUpdaterClient = [(VOTWorkspace *)selfCopy _assetUpdaterClient];
    *buf = 138477827;
    v60 = _assetUpdaterClient;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Retrieve cloud data: %{private}@", buf, 0xCu);
  }

  _assetUpdaterClient2 = [(VOTWorkspace *)selfCopy _assetUpdaterClient];
  v24 = +[AXAccessQueue mainAccessQueue];
  [_assetUpdaterClient2 sendAsynchronousMessage:&__NSDictionary0__struct withIdentifier:3 targetAccessQueue:v24 completion:0];

  if ((AXDeviceIsAudioAccessory() & 1) == 0)
  {
    v25 = objc_alloc_init(VOTVisionEngine);
    [(VOTWorkspace *)selfCopy setVisionEngine:v25];
  }

  v26 = [[UITextChecker alloc] _initWithAsynchronousLoading:1];
  textChecker = selfCopy->_textChecker;
  selfCopy->_textChecker = v26;

  v28 = +[NSNotificationCenter defaultCenter];
  v29 = dispatch_queue_create("vo-call-center-queue", 0);
  callCenterQueue = selfCopy->_callCenterQueue;
  selfCopy->_callCenterQueue = v29;

  v31 = [[TUCallCenter alloc] initWithQueue:selfCopy->_callCenterQueue];
  callCenter = selfCopy->_callCenter;
  selfCopy->_callCenter = v31;

  v33 = selfCopy->_callCenterQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100041830;
  block[3] = &unk_1001C7778;
  v34 = selfCopy;
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
  imageCaptioningDisabledApps = [v41 imageCaptioningDisabledApps];
  [(VOTWorkspace *)v34 setImageCaptioningDisabledApps:imageCaptioningDisabledApps];

  v43 = +[NSNotificationCenter defaultCenter];
  [v43 addObserver:v34 selector:"_screenChange:" name:@"UpdateElement" object:0];

  v44 = objc_alloc_init(_TtC3vot11VOTSettings);
  votSettings = v34->_votSettings;
  v34->_votSettings = v44;

  [(VOTSettings *)v34->_votSettings initialize];
  selfCopy = v34;

  v3 = selfCopy;
LABEL_19:

  return v3;
}

- (void)_callStatusChanged:(id)changed
{
  telephonyIsActive = [(VOTWorkspace *)self telephonyIsActive];
  -[VOTWorkspace setTelephonyIsActive:](self, "setTelephonyIsActive:", [VOTSharedWorkspace _callCenterQueue_currentCallState] != 0);
  if (telephonyIsActive != [(VOTWorkspace *)self telephonyIsActive]&& ![(VOTWorkspace *)self telephonyIsActive])
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
  bOOLValue = [v3 BOOLValue];

  if ((bOOLValue & 1) == 0)
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
  elementManager = [(VOTWorkspace *)self elementManager];
  currentElement = [(VOTWorkspace *)self currentElement];
  v5 = [elementManager determineActivityForElement:currentElement];

  hints = [v5 hints];

  if (hints)
  {
    hints2 = [v5 hints];
    hintsEnabled = [hints2 BOOLValue];
  }

  else
  {
    hintsEnabled = self->_hintsEnabled;
  }

  return hintsEnabled & 1;
}

- (BOOL)brailleFormattingEnabled
{
  elementManager = [(VOTWorkspace *)self elementManager];
  currentElement = [(VOTWorkspace *)self currentElement];
  v5 = [elementManager determineActivityForElement:currentElement];

  brailleFormatting = [v5 brailleFormatting];

  if (brailleFormatting)
  {
    brailleFormatting2 = [v5 brailleFormatting];
    bOOLValue = [brailleFormatting2 BOOLValue];
  }

  else
  {
    brailleFormatting2 = +[AXSettings sharedInstance];
    bOOLValue = [brailleFormatting2 voiceOverBrailleFormattingEnabled];
  }

  v9 = bOOLValue;

  return v9;
}

- (BOOL)brailleStartAutoActivateOnTextFields
{
  elementManager = [(VOTWorkspace *)self elementManager];
  currentElement = [(VOTWorkspace *)self currentElement];
  v5 = [elementManager determineActivityForElement:currentElement];

  brailleStartAutoActivateOnTextFields = [v5 brailleStartAutoActivateOnTextFields];

  if (brailleStartAutoActivateOnTextFields)
  {
    brailleStartAutoActivateOnTextFields2 = [v5 brailleStartAutoActivateOnTextFields];
    bOOLValue = [brailleStartAutoActivateOnTextFields2 BOOLValue];
  }

  else
  {
    brailleStartAutoActivateOnTextFields2 = +[AXSettings sharedInstance];
    bOOLValue = [brailleStartAutoActivateOnTextFields2 voiceOverTouchBrailleGesturesAutoActivateOnTextFields];
  }

  v9 = bOOLValue;

  return v9;
}

- (int64_t)containerOutputFeedback
{
  elementManager = [(VOTWorkspace *)self elementManager];
  currentElement = [(VOTWorkspace *)self currentElement];
  v5 = [elementManager determineActivityForElement:currentElement];

  containerFeedback = [v5 containerFeedback];

  if (containerFeedback)
  {
    containerFeedback2 = [v5 containerFeedback];
    containerOutputFeedback = [containerFeedback2 integerValue];
  }

  else
  {
    containerOutputFeedback = self->_containerOutputFeedback;
  }

  return containerOutputFeedback;
}

- (int64_t)activeBrailleInputPreference
{
  elementManager = [(VOTWorkspace *)self elementManager];
  currentElement = [(VOTWorkspace *)self currentElement];
  v5 = [elementManager determineActivityForElement:currentElement];

  brailleInput = [v5 brailleInput];

  if (brailleInput)
  {
    v7 = VOTLogActivities();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      brailleInput2 = [v5 brailleInput];
      v13 = 138412290;
      v14 = brailleInput2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Using activity braille input: %@", &v13, 0xCu);
    }

    brailleInput3 = [v5 brailleInput];
    integerValue = [brailleInput3 integerValue];
  }

  else
  {
    brailleInput3 = +[AXSettings sharedInstance];
    integerValue = [brailleInput3 voiceOverTouchBrailleDisplayInputMode];
  }

  v11 = integerValue;

  return v11;
}

- (int64_t)activeBrailleOutputPreference
{
  elementManager = [(VOTWorkspace *)self elementManager];
  currentElement = [(VOTWorkspace *)self currentElement];
  v5 = [elementManager determineActivityForElement:currentElement];

  brailleOutput = [v5 brailleOutput];

  if (brailleOutput)
  {
    v7 = VOTLogActivities();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      brailleOutput2 = [v5 brailleOutput];
      v13 = 138412290;
      v14 = brailleOutput2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Using activity braille output: %@", &v13, 0xCu);
    }

    brailleOutput3 = [v5 brailleOutput];
    integerValue = [brailleOutput3 integerValue];
  }

  else
  {
    brailleOutput3 = +[AXSettings sharedInstance];
    integerValue = [brailleOutput3 voiceOverTouchBrailleDisplayOutputMode];
  }

  v11 = integerValue;

  return v11;
}

- (BOOL)activeBrailleTextStatusCellPreference
{
  elementManager = [(VOTWorkspace *)self elementManager];
  currentElement = [(VOTWorkspace *)self currentElement];
  v5 = [elementManager determineActivityForElement:currentElement];

  brailleStatusCellText = [v5 brailleStatusCellText];

  if (brailleStatusCellText)
  {
    v7 = VOTLogActivities();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      brailleStatusCellText2 = [v5 brailleStatusCellText];
      v13 = 138412290;
      v14 = brailleStatusCellText2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Using activity braille text status cell: %@", &v13, 0xCu);
    }

    brailleStatusCellText3 = [v5 brailleStatusCellText];
    bOOLValue = [brailleStatusCellText3 BOOLValue];
  }

  else
  {
    brailleStatusCellText3 = +[AXSettings sharedInstance];
    bOOLValue = [brailleStatusCellText3 voiceOverTouchBrailleShowTextStyleStatus];
  }

  v11 = bOOLValue;

  return v11;
}

- (BOOL)activeBrailleAlertsPreference
{
  elementManager = [(VOTWorkspace *)self elementManager];
  currentElement = [(VOTWorkspace *)self currentElement];
  v5 = [elementManager determineActivityForElement:currentElement];

  brailleAlerts = [v5 brailleAlerts];

  if (brailleAlerts)
  {
    v7 = VOTLogActivities();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      brailleAlerts2 = [v5 brailleAlerts];
      v12 = 138412290;
      v13 = brailleAlerts2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Using activity braille alerts: %@", &v12, 0xCu);
    }

    brailleAlerts3 = [v5 brailleAlerts];
    brailleAlertsEnabled = [brailleAlerts3 BOOLValue];
  }

  else
  {
    brailleAlertsEnabled = self->_brailleAlertsEnabled;
  }

  return brailleAlertsEnabled & 1;
}

- (BOOL)activeBrailleGeneralStatusCellPreference
{
  elementManager = [(VOTWorkspace *)self elementManager];
  currentElement = [(VOTWorkspace *)self currentElement];
  v5 = [elementManager determineActivityForElement:currentElement];

  brailleStatusCellGeneral = [v5 brailleStatusCellGeneral];

  if (brailleStatusCellGeneral)
  {
    v7 = VOTLogActivities();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      brailleStatusCellGeneral2 = [v5 brailleStatusCellGeneral];
      v13 = 138412290;
      v14 = brailleStatusCellGeneral2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Using activity braille general status cell: %@", &v13, 0xCu);
    }

    brailleStatusCellGeneral3 = [v5 brailleStatusCellGeneral];
    bOOLValue = [brailleStatusCellGeneral3 BOOLValue];
  }

  else
  {
    brailleStatusCellGeneral3 = +[AXSettings sharedInstance];
    bOOLValue = [brailleStatusCellGeneral3 voiceOverTouchBrailleShowGeneralStatus];
  }

  v11 = bOOLValue;

  return v11;
}

- (double)activeBrailleAutoAdvanceDuration
{
  elementManager = [(VOTWorkspace *)self elementManager];
  currentElement = [(VOTWorkspace *)self currentElement];
  v5 = [elementManager determineActivityForElement:currentElement];

  brailleAutoAdvanceDuration = [v5 brailleAutoAdvanceDuration];

  if (brailleAutoAdvanceDuration)
  {
    v7 = VOTLogActivities();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      brailleAutoAdvanceDuration2 = [v5 brailleAutoAdvanceDuration];
      v13 = 138412290;
      v14 = brailleAutoAdvanceDuration2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Using activity braille auto advance duration: %@", &v13, 0xCu);
    }

    brailleAutoAdvanceDuration3 = [v5 brailleAutoAdvanceDuration];
    [brailleAutoAdvanceDuration3 doubleValue];
  }

  else
  {
    brailleAutoAdvanceDuration3 = +[AXSettings sharedInstance];
    [brailleAutoAdvanceDuration3 voiceOverBrailleAutoAdvanceDuration];
  }

  v11 = v10;

  return v11;
}

- (void)_screenChange:(id)change
{
  elementManager = [(VOTWorkspace *)self elementManager];
  currentElement = [(VOTWorkspace *)self currentElement];
  v6 = [elementManager determineActivityForElement:currentElement];

  if (v6)
  {
    [(VOTWorkspace *)self _updateActivityListeners];
  }
}

- (void)_tigrisMigrateLanguageRotors
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"_AccessibilityMigration_MigrateLanguageRotors_11.0"];
  bOOLValue = [v3 BOOLValue];

  if ((bOOLValue & 1) == 0)
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
            ignoreLogging = [v16 ignoreLogging];

            if ((ignoreLogging & 1) == 0)
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
  bOOLValue = [v3 BOOLValue];

  if ((bOOLValue & 1) == 0)
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
  voiceOverTouchSingleLetterQuickNavEnabled = [v2 voiceOverTouchSingleLetterQuickNavEnabled];

  return voiceOverTouchSingleLetterQuickNavEnabled;
}

- (void)setAllowSingleLetterSearching:(BOOL)searching
{
  searchingCopy = searching;
  v4 = +[AXSettings sharedInstance];
  [v4 setVoiceOverTouchSingleLetterQuickNavEnabled:searchingCopy];
}

- (void)setTvInteractionMode:(int64_t)mode
{
  self->_tvInteractionMode = mode;
  v4 = +[AXSettings sharedInstance];
  [v4 setVoiceOverPreferredTVInteractionMode:mode];
}

- (BOOL)perkinsKeyboardInputEnabled
{
  v2 = +[AXSettings sharedInstance];
  voiceOverTouchPerkinsKeyboardInputEnabled = [v2 voiceOverTouchPerkinsKeyboardInputEnabled];

  return voiceOverTouchPerkinsKeyboardInputEnabled;
}

- (void)setPerkinsKeyboardInputEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4 = +[AXSettings sharedInstance];
  [v4 setVoiceOverTouchPerkinsKeyboardInputEnabled:enabledCopy];
}

- (BOOL)keyboardBrailleUIEnabled
{
  v2 = +[AXSettings sharedInstance];
  voiceOverTouchKeyboardBrailleUIEnabled = [v2 voiceOverTouchKeyboardBrailleUIEnabled];

  return voiceOverTouchKeyboardBrailleUIEnabled;
}

- (void)setKeyboardBrailleUIEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4 = +[AXSettings sharedInstance];
  [v4 setVoiceOverTouchKeyboardBrailleUIEnabled:enabledCopy];
}

- (BOOL)perkinsChordKeyboardInputEnabled
{
  v2 = +[AXSettings sharedInstance];
  voiceOverTouchPerkinsChordKeyboardInputEnabled = [v2 voiceOverTouchPerkinsChordKeyboardInputEnabled];

  return voiceOverTouchPerkinsChordKeyboardInputEnabled;
}

- (void)setPerkinsChordKeyboardInputEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4 = +[AXSettings sharedInstance];
  [v4 setVoiceOverTouchPerkinsChordKeyboardInputEnabled:enabledCopy];
}

- (void)softwareKeyboardManagerWillUpdateKeyboardState:(id)state
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
    softwareKeyboardManager = [(VOTWorkspace *)self softwareKeyboardManager];
    self->_originalKBAttachedState = [softwareKeyboardManager isHardwareKeyboardAttached];

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

- (BOOL)softwareKeyboardManagerShouldSetHardwareKeyboardAttached:(id)attached hardwareKeyboardIsCurrentlyAttached:(BOOL)currentlyAttached newHardwareKeyboardAttachedValue:(BOOL *)value
{
  originalKBAttachedState = self->_originalKBAttachedState;
  if (originalKBAttachedState != currentlyAttached)
  {
    *value = originalKBAttachedState;
  }

  return originalKBAttachedState != currentlyAttached;
}

- (void)mlElementDetectorScrollToVisibleOccurred:(CGPoint)occurred
{
  y = occurred.y;
  x = occurred.x;
  elementManager = [(VOTWorkspace *)self elementManager];
  [elementManager processExternalScrollToVisible:{x, y}];
}

- (void)mlElementDetectorUpdatedElements
{
  v3 = AXMediaLogElementVision();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "ML elements updated, processing layout change", v5, 2u);
  }

  elementManager = [(VOTWorkspace *)self elementManager];
  [elementManager processExternalElementUpdate];
}

- (void)mlElementDetectorReceivedFrames:(id)frames labels:(id)labels uiClasses:(id)classes
{
  framesCopy = frames;
  labelsCopy = labels;
  classesCopy = classes;
  v11 = AXMediaLogElementVision();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [framesCopy count]);
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
    elementManager = [(VOTWorkspace *)self elementManager];
    [elementManager updateCurrentElementFrame];

    v15 = +[VOTDisplayManager displayManager];
    [v15 setElementFrames:framesCopy labels:labelsCopy uiClasses:classesCopy];
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
    initAndWaitForMainDisplayConfiguration = [[AXMDisplayManager alloc] initAndWaitForMainDisplayConfiguration];
    [(VOTWorkspace *)self setDisplayManager:initAndWaitForMainDisplayConfiguration];

    displayManager = [(VOTWorkspace *)self displayManager];
    sub_1000509A4(displayManager);

    v9 = *&xmmword_1001FF150;
    if (*&xmmword_1001FF150 <= 0.0)
    {
      _AXAssert();
    }

    v10 = +[NSNotificationCenter defaultCenter];
    v11 = +[NSOperationQueue mainQueue];
    v12 = [v10 addObserverForName:AXMDisplayManagerMainDisplayWasUpdatedNotification object:0 queue:v11 usingBlock:&stru_1001C8480];
  }

  initPreferringUserProfile = [[VOSCommandManager alloc] initPreferringUserProfile];
  [(VOTWorkspace *)self setUserCommandManager:initPreferringUserProfile];

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
    voiceOverAlwaysTurnOnBluetooth = [v59 voiceOverAlwaysTurnOnBluetooth];

    if (voiceOverAlwaysTurnOnBluetooth)
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
    ignoreLogging = [v65 ignoreLogging];

    if ((ignoreLogging & 1) == 0)
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

  imageCaptionModelAssetPolicy = [(VOTWorkspace *)self imageCaptionModelAssetPolicy];
  v5 = [AXAssetController assetControllerWithPolicy:imageCaptionModelAssetPolicy qosClass:25];
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
  outputDevices = [v3 outputDevices];
  v5 = [outputDevices countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(outputDevices);
        }

        if ([*(*(&v10 + 1) + 8 * i) isActivatedForContinuityScreen])
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [outputDevices countByEnumeratingWithState:&v10 objects:v16 count:16];
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
  enabled = [v2 enabled];

  v4 = VOTLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [NSNumber numberWithBool:enabled];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Checking for whether Bluetooth needs to be enabled: enabled: %@", &v7, 0xCu);
  }

  if ((enabled & 1) == 0)
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
  reachabilityIdentifier = [(VOTWorkspace *)self reachabilityIdentifier];
  if (reachabilityIdentifier)
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
  voiceOverSelectedActivity = [v3 voiceOverSelectedActivity];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  selectedActivity = selfCopy->_selectedActivity;
  selfCopy->_selectedActivity = voiceOverSelectedActivity;

  objc_sync_exit(selfCopy);

  [(VOTWorkspace *)selfCopy _updateActivityListeners];
}

- (void)currentElementDidUpdate:(id)update
{
  updateCopy = update;
  v3 = updateCopy;
  AXPerformBlockAsynchronouslyOnMainThread();
}

- (void)addMisspellingsForString:(id)string
{
  stringCopy = string;
  if ([stringCopy hasAttribute:UIAccessibilityTokenResolveMisspelledLocally])
  {
    v4 = [stringCopy length];
    v5 = +[UIKeyboardInputModeController sharedInputModeController];
    v6 = 0;
    *&v7 = 138412290;
    v17 = v7;
    while (1)
    {
      currentInputMode = [v5 currentInputMode];
      if (!currentInputMode)
      {
        currentInputMode = [v5 currentSystemInputMode];
      }

      textChecker = self->_textChecker;
      primaryLanguage = [currentInputMode primaryLanguage];
      v11 = [(UITextChecker *)textChecker rangeOfMisspelledWordInString:stringCopy range:0 startingAt:v4 wrap:v6 language:0, primaryLanguage];
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
      [stringCopy addAttribute:kCFBooleanTrue forKey:UIAccessibilityTokenMisspelled withRange:{v14.location, v14.length}];
      v15 = AXLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [stringCopy substringWithRange:{v14.location, v14.length}];
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
  voiceOverActivities = [v3 voiceOverActivities];
  v5 = [voiceOverActivities copy];

  v6 = VOTLogActivities();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v15 = 138412290;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Activities changed: new: %@", &v15, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(VOTWorkspace *)selfCopy setActivities:v5];
  if (selfCopy->_selectedActivity)
  {
    activities = [(VOTWorkspace *)selfCopy activities];
    v9 = [activities indexOfObject:selfCopy->_selectedActivity];

    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      selectedActivity = selfCopy->_selectedActivity;
      selfCopy->_selectedActivity = 0;
    }

    else
    {
      selectedActivity = [(VOTWorkspace *)selfCopy activities];
      v11 = [selectedActivity objectAtIndexedSubscript:v9];
      v12 = selfCopy->_selectedActivity;
      selfCopy->_selectedActivity = v11;
    }
  }

  objc_sync_exit(selfCopy);

  v13 = VOTLogActivities();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    activities2 = [(VOTWorkspace *)selfCopy activities];
    v15 = 138412290;
    v16 = activities2;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "VO loading activities: %@", &v15, 0xCu);
  }
}

- (AXVoiceOverActivity)selectedActivity
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_selectedActivity;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSString)previousRotorVoiceIdentifier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_previousRotorVoiceIdentifier;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSArray)activities
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSArray *)selfCopy->_activities copy];
  objc_sync_exit(selfCopy);

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
  ignoreLogging = [v3 ignoreLogging];

  if ((ignoreLogging & 1) == 0)
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

  reachabilityIdentifier = [(VOTWorkspace *)self reachabilityIdentifier];

  if (reachabilityIdentifier)
  {
    v12 = +[AXSpringBoardServer server];
    reachabilityIdentifier2 = [(VOTWorkspace *)self reachabilityIdentifier];
    [v12 removeReachabilityHandler:reachabilityIdentifier2];

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
      bOOLValue = [v11 BOOLValue];
      v13 = +[VOTElement systemWideElement];
      [v13 setRotationCapabilityEnabled:bOOLValue];
    }

    else
    {
      LOBYTE(bOOLValue) = 1;
    }

    v14 = +[VOTElement springBoardApplication];
    isSystemSleeping = [v14 isSystemSleeping];

    if ((isSystemSleeping & 1) == 0)
    {
      v16 = +[VOTOutputRequest createRequest];
      if ((bOOLValue & 1) == 0)
      {
        selectedLanguage = [VOTSharedWorkspace selectedLanguage];
        v18 = sub_1000516CC(off_1001FDDD0, @"rotation.capability.off", 0, selectedLanguage);
        v19 = [v16 addString:v18 withLanguage:selectedLanguage];
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

- (void)_updateScreenCurtainEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  screenCurtainEnabled = self->_screenCurtainEnabled;
  if (screenCurtainEnabled != _AXSVoiceOverTouchScreenCurtainEnabled() || enabledCopy)
  {
    if (_AXSVoiceOverTouchUsageConfirmed())
    {
      self->_screenCurtainEnabled = _AXSVoiceOverTouchScreenCurtainEnabled() != 0;
    }

    v7 = +[VOTSpringBoardConnection defaultConnection];
    [v7 setScreenCurtainEnabled:self->_screenCurtainEnabled];

    v8 = +[VOTDisplayManager displayManager];
    [v8 setScreenCurtainEnabled:self->_screenCurtainEnabled];

    if (!enabledCopy)
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
      v14[1] = enabledCopy;
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
  didStartFromCrashState = [v3 didStartFromCrashState];

  if (didStartFromCrashState)
  {
    if (AXIsInternalInstall() && (+[VOTConfiguration rootConfiguration](VOTConfiguration, "rootConfiguration"), v5 = objc_claimAutoreleasedReturnValue(), [v5 preferenceForKey:@"VOTAlwaysSayVoiceOverOn"], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "BOOLValue"), v6, v5, v7))
    {
      _systemBootTime = [(VOTWorkspace *)self _systemBootTime];
      v9 = +[NSDate date];
      v10 = v9;
      if (_systemBootTime)
      {
        [v9 timeIntervalSinceDate:_systemBootTime];
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
      _systemBootTime = v22;
      v22 = 0;
    }
  }

  v13 = [VOTElement springBoardApplication:v20];
  isSystemSleeping = [v13 isSystemSleeping];

  if (!v22)
  {
    if (!isSystemSleeping)
    {
      goto LABEL_19;
    }

LABEL_18:
    [(VOTElementManagementProtocol *)self->_elementManager handleNotification:1004 withData:0 forElement:0];
    goto LABEL_19;
  }

  if (isSystemSleeping)
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
  isVoiceControlRunning = [v16 isVoiceControlRunning];

  if ((isVoiceControlRunning & 1) == 0)
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
    ignoreLogging = [v9 ignoreLogging];

    if ((ignoreLogging & 1) == 0)
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

- (void)_voiceOverTouchEnabledChange:(__CFString *)change
{
  if ([VOTSharedWorkspace inUnitTestMode])
  {
    v5 = +[AXSubsystemVoiceOverLifeCycle sharedInstance];
    ignoreLogging = [v5 ignoreLogging];

    if ((ignoreLogging & 1) == 0)
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
    if (CFEqual(change, kAXSVoiceOverTouchEnabledNotification))
    {
      v12 = +[AXSubsystemVoiceOverLifeCycle sharedInstance];
      ignoreLogging2 = [v12 ignoreLogging];

      if ((ignoreLogging2 & 1) == 0)
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
      ignoreLogging3 = [v19 ignoreLogging];

      if ((ignoreLogging3 & 1) == 0)
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
      ignoreLogging4 = [v26 ignoreLogging];

      if ((ignoreLogging4 & 1) == 0)
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
  elementManager = [(VOTWorkspace *)self elementManager];
  currentElement = [(VOTWorkspace *)self currentElement];
  v5 = [elementManager determineActivityForElement:currentElement];

  navigationStyle = [v5 navigationStyle];

  if (navigationStyle)
  {
    navigationStyle2 = [v5 navigationStyle];
    navigationStyle = [navigationStyle2 intValue];
  }

  else
  {
    navigationStyle = self->_navigationStyle;
  }

  return navigationStyle;
}

- (int64_t)typingMode
{
  elementManager = [(VOTWorkspace *)self elementManager];
  currentElement = [(VOTWorkspace *)self currentElement];
  v5 = [elementManager determineActivityForElement:currentElement];

  typingStyle = [v5 typingStyle];

  if (typingStyle)
  {
    typingStyle2 = [v5 typingStyle];
    typingMode = [typingStyle2 intValue];
  }

  else
  {
    typingMode = self->_typingMode;
  }

  return typingMode;
}

- (void)setTypingMode:(int64_t)mode
{
  if (self->_typingMode != mode)
  {
    self->_typingMode = mode;
    _AXSVoiceOverTouchSetTypingMode();
    directInteractionKeyboardManager = [(VOTEventFactory *)self->_eventFactory directInteractionKeyboardManager];
    [directInteractionKeyboardManager updateTypingMode];
  }
}

- (void)dispatchCommand:(id)command bypassGesturedInput:(BOOL)input
{
  commandCopy = command;
  if (input || ![(VOTEventFactory *)self->_eventFactory processEventAsGesturedTextInput:commandCopy])
  {
    [(VOTElementManagementProtocol *)self->_elementManager handleEvent:commandCopy];
  }

  _objc_release_x1();
}

- (void)_postKeyboardEventWithCharacters:(id)characters originalCharacters:(id)originalCharacters modifiers:(id)modifiers keyCode:(id)code
{
  charactersCopy = characters;
  originalCharactersCopy = originalCharacters;
  modifiersCopy = modifiers;
  codeCopy = code;
  unsignedIntValue = [modifiersCopy unsignedIntValue];
  unsignedShortValue = [codeCopy unsignedShortValue];
  [(VOTWorkspace *)self _postKeyboardEventsForModifiers:unsignedIntValue isKeyDown:1];
  [(VOTWorkspace *)self _postKeyboardEventWithKeyCode:unsignedShortValue characters:charactersCopy originalCharacters:originalCharactersCopy modifierState:unsignedIntValue isKeyDown:1];
  [(VOTWorkspace *)self _postKeyboardEventWithKeyCode:unsignedShortValue characters:charactersCopy originalCharacters:originalCharactersCopy modifierState:unsignedIntValue isKeyDown:0];
  [(VOTWorkspace *)self _postKeyboardEventsForModifiers:unsignedIntValue isKeyDown:0];
  unitTestDelegate = [(VOTWorkspace *)self unitTestDelegate];

  if (unitTestDelegate)
  {
    unitTestDelegate2 = [(VOTWorkspace *)self unitTestDelegate];
    [unitTestDelegate2 didPostKeyboardEventsWithCharacters:charactersCopy originalCharacters:originalCharactersCopy modifiers:modifiersCopy keyCode:codeCopy];
  }
}

- (void)_postKeyboardEventsForModifiers:(unsigned int)modifiers isKeyDown:(BOOL)down
{
  if (!modifiers)
  {
    return;
  }

  downCopy = down;
  modifiersCopy = modifiers;
  if (down)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    LODWORD(v7) = modifiers;
  }

  if (modifiers)
  {
    if (down)
    {
      v7 = 1;
    }

    else
    {
      v7 = modifiers & 0xFFFFFFFE;
    }

    [(VOTWorkspace *)self _postKeyboardEventWithKeyCode:227 modifierState:v7 isKeyDown:down];
    if ((modifiersCopy & 2) == 0)
    {
LABEL_7:
      if ((modifiersCopy & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else if ((modifiers & 2) == 0)
  {
    goto LABEL_7;
  }

  v8 = v7 & 0xFFFFFFFD;
  if (downCopy)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  LODWORD(v7) = v8 | v9;
  [(VOTWorkspace *)self _postKeyboardEventWithKeyCode:226 modifierState:v8 | v9 isKeyDown:downCopy];
  if ((modifiersCopy & 4) == 0)
  {
LABEL_8:
    if ((modifiersCopy & 8) == 0)
    {
      return;
    }

    goto LABEL_22;
  }

LABEL_18:
  v10 = v7 & 0xFFFFFFFB;
  if (downCopy)
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  LODWORD(v7) = v10 | v11;
  [(VOTWorkspace *)self _postKeyboardEventWithKeyCode:224 modifierState:v10 | v11 isKeyDown:downCopy];
  if ((modifiersCopy & 8) != 0)
  {
LABEL_22:
    if (downCopy)
    {
      v12 = 8;
    }

    else
    {
      v12 = 0;
    }

    [(VOTWorkspace *)self _postKeyboardEventWithKeyCode:225 modifierState:v7 & 0xFFFFFFF7 | v12 isKeyDown:downCopy];
  }
}

- (void)_postKeyboardEventWithKeyCode:(unsigned __int16)code characters:(id)characters originalCharacters:(id)originalCharacters modifierState:(unsigned int)state isKeyDown:(BOOL)down
{
  if (down)
  {
    [(VOTWorkspace *)self _postKeyboardEventWithKeyCode:code characters:characters originalCharacters:originalCharacters modifierState:*&state eventType:10];
  }

  else
  {
    [(VOTWorkspace *)self _postKeyboardEventWithKeyCode:code characters:characters originalCharacters:originalCharacters modifierState:*&state eventType:11];
  }
}

- (void)_postKeyboardEventWithKeyCode:(unsigned __int16)code characters:(id)characters originalCharacters:(id)originalCharacters modifierState:(unsigned int)state eventType:(unsigned int)type
{
  v7 = *&type;
  v8 = *&state;
  codeCopy = code;
  originalCharactersCopy = originalCharacters;
  charactersCopy = characters;
  v15 = [AXEventRepresentation keyRepresentationWithType:v7];
  keyInfo = [v15 keyInfo];
  [keyInfo setKeyCode:codeCopy];
  [keyInfo setModifierState:v8];
  [keyInfo setUnmodifiedInput:originalCharactersCopy];

  [keyInfo setModifiedInput:charactersCopy];
  [(VOTWorkspace *)self handleKeyboardKeyEvent:v15 eventOrigin:1];
  self->_lastKeyboardKeyPress = CFAbsoluteTimeGetCurrent();
  self->_isPostingKeyboardEvents = 1;
  [NSThread sleepForTimeInterval:0.00100000005];
}

- (void)_postKeyboardEvent:(id)event modifiers:(id)modifiers keyCode:(id)code
{
  codeCopy = code;
  eventCopy = event;
  LODWORD(modifiers) = [modifiers unsignedIntValue];
  unsignedShortValue = [codeCopy unsignedShortValue];

  LODWORD(codeCopy) = [eventCopy BOOLValue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100048A44;
  v19[3] = &unk_1001C8808;
  v19[4] = self;
  modifiersCopy = modifiers;
  v21 = codeCopy;
  v11 = objc_retainBlock(v19);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100048A58;
  v15[3] = &unk_1001C8830;
  v15[4] = self;
  v17 = unsignedShortValue;
  modifiersCopy2 = modifiers;
  v18 = codeCopy;
  v12 = objc_retainBlock(v15);
  v13 = v12;
  if (codeCopy)
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

- (void)postKeyboardEvent:(BOOL)event modifiers:(unsigned int)modifiers keyCode:(unsigned __int16)code
{
  keyPostingQueue = self->_keyPostingQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100048AF8;
  v6[3] = &unk_1001C8830;
  v6[4] = self;
  eventCopy = event;
  modifiersCopy = modifiers;
  codeCopy = code;
  dispatch_async(keyPostingQueue, v6);
}

- (void)postKeyboardEventWithCharacters:(id)characters originalCharacters:(id)originalCharacters modifiers:(unsigned int)modifiers keyCode:(unsigned __int16)code
{
  charactersCopy = characters;
  originalCharactersCopy = originalCharacters;
  v12 = originalCharactersCopy;
  if (charactersCopy && originalCharactersCopy)
  {
    keyPostingQueue = self->_keyPostingQueue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100048C80;
    v14[3] = &unk_1001C8858;
    v14[4] = self;
    v15 = charactersCopy;
    v16 = v12;
    modifiersCopy = modifiers;
    codeCopy = code;
    dispatch_async(keyPostingQueue, v14);
  }
}

- (NSArray)focusedApplications
{
  isItemChooserVisible = [(VOTElementManagementProtocol *)self->_elementManager isItemChooserVisible];
  v3 = +[VOTElement systemAppApplication];
  v4 = v3;
  if (isItemChooserVisible)
  {
    v8 = v3;
    focusedApplications = [NSArray arrayWithObjects:&v8 count:1];
  }

  else
  {
    focusedApplications = [v3 focusedApplications];
  }

  v6 = focusedApplications;

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

- (void)setUseDigitalCrownNavigationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_useDigitalCrownNavigation = enabled;
  v4 = +[AXSettings sharedInstance];
  [v4 setVoiceOverUseDigitalCrownNavigation:enabledCopy];
}

- (void)_preferencesTypingPitchChange
{
  v3 = +[AXSettings sharedInstance];
  -[VOTWorkspace setTypingPitchChangeEnabled:](self, "setTypingPitchChangeEnabled:", [v3 voiceOverPitchChangeEnabled]);
}

- (void)_preferencesSpeakHintsChange
{
  v3 = +[AXSettings sharedInstance];
  voiceOverHintsEnabled = [v3 voiceOverHintsEnabled];

  [(VOTWorkspace *)self setHintsEnabled:voiceOverHintsEnabled];
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

- (void)preferencesLanguageRotorItemsChanged:(id)changed
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
        bOOLValue = [v13 BOOLValue];

        if (bOOLValue)
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

- (void)preferencesBrailleLanguageRotorItemsChanged:(id)changed
{
  if (![(VOTWorkspace *)self inUnitTestMode])
  {
    VOSCrystalMigrateBrailleTableReplacements();
    v4 = +[AXSettings sharedInstance];
    voiceOverBrailleLanguageRotorItems = [v4 voiceOverBrailleLanguageRotorItems];

    v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [voiceOverBrailleLanguageRotorItems count]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = voiceOverBrailleLanguageRotorItems;
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
          bOOLValue = [v13 BOOLValue];

          if (bOOLValue)
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

- (id)phoneticStringForCharacter:(id)character andVoiceIdentifier:(id)identifier
{
  characterCopy = character;
  identifierCopy = identifier;
  if (!identifierCopy || (+[TTSSpeechSynthesizer voiceForIdentifier:](TTSSpeechSynthesizer, "voiceForIdentifier:", identifierCopy), v8 = objc_claimAutoreleasedReturnValue(), [v8 language], v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    selectedLanguage = [(VOTWorkspace *)self selectedLanguage];
    if (!selectedLanguage)
    {
      selectedLanguage = [(VOTWorkspace *)self systemSpokenLanguage];
    }

    v9 = selectedLanguage;
  }

  v11 = [(AXCharacterSoundMap *)self->_characterSoundMap phoneticStringForCharacter:characterCopy forLanguage:v9 andVoiceIdentifier:identifierCopy];

  return v11;
}

- (void)setSelectedActivity:(id)activity
{
  objc_storeStrong(&self->_selectedActivity, activity);
  activityCopy = activity;
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverSelectedActivity:activityCopy];
}

- (void)systemSpokenLanguageChanged:(id)changed
{
  systemSpokenLanguage = [(VOTWorkspace *)self systemSpokenLanguage];
  nullsub_3();
  v4 = +[VOTBrailleManager manager];
  [v4 updateBrailleLanguage];

  [(VOTWorkspace *)self _installLanguageTranslationModelForLanguageIfNeeded:systemSpokenLanguage];
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

- (void)_installLanguageTranslationModelForLanguageIfNeeded:(id)needed
{
  neededCopy = needed;
  v5 = AXMediaLogLanguageTranslation();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = neededCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Checking if VO should install translation model for: %@", &v7, 0xCu);
  }

  if ([(VOTWorkspace *)self imageCaptionsEnabled])
  {
    languageTranslator = [(VOTWorkspace *)self languageTranslator];
    [languageTranslator installOfflineTranslationModelForLanguageCodeIfNeeded:neededCopy progress:&stru_1001C8898 completion:&stru_1001C8918];
  }

  else
  {
    languageTranslator = AXMediaLogLanguageTranslation();
    if (os_log_type_enabled(languageTranslator, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, languageTranslator, OS_LOG_TYPE_DEFAULT, "Image descriptions not enabled. Will not download translation assets", &v7, 2u);
    }
  }
}

- (id)punctuationGroupForUUID:(id)d
{
  dCopy = d;
  punctuationGroups = [(VOTWorkspace *)self punctuationGroups];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100049BCC;
  v10[3] = &unk_1001C8940;
  v11 = dCopy;
  v6 = dCopy;
  v7 = [punctuationGroups ax_filteredArrayUsingBlock:v10];
  lastObject = [v7 lastObject];

  return lastObject;
}

- (NSArray)punctuationGroups
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  punctuationGroups = selfCopy->_punctuationGroups;
  if (!punctuationGroups)
  {
    v4 = +[AXSSPunctuationManager sharedDatabase];
    punctuationGroups = [v4 punctuationGroups];

    if (punctuationGroups)
    {
      v6 = +[NSMutableArray array];
      v7 = selfCopy->_punctuationGroups;
      selfCopy->_punctuationGroups = v6;

      [(NSMutableArray *)selfCopy->_punctuationGroups axSafelyAddObjectsFromArray:punctuationGroups];
      defaultPunctuationGroup = selfCopy->_defaultPunctuationGroup;
      selfCopy->_defaultPunctuationGroup = 0;
    }

    punctuationGroups = selfCopy->_punctuationGroups;
  }

  v9 = [(NSMutableArray *)punctuationGroups copy];
  objc_sync_exit(selfCopy);

  return v9;
}

- (id)defaultPunctuationGroup
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_defaultPunctuationGroup)
  {
    v3 = +[AXSettings sharedInstance];
    voiceOverDefaultPunctuationGroup = [v3 voiceOverDefaultPunctuationGroup];
    v5 = [(VOTWorkspace *)selfCopy punctuationGroupForUUID:voiceOverDefaultPunctuationGroup];
    defaultPunctuationGroup = selfCopy->_defaultPunctuationGroup;
    selfCopy->_defaultPunctuationGroup = v5;

    if (!selfCopy->_defaultPunctuationGroup)
    {
      v7 = [(VOTWorkspace *)selfCopy punctuationGroupForUUID:AXSSVoiceOverPunctuationGroupSome];
      v8 = selfCopy->_defaultPunctuationGroup;
      selfCopy->_defaultPunctuationGroup = v7;
    }
  }

  objc_sync_exit(selfCopy);

  v9 = selfCopy->_defaultPunctuationGroup;

  return v9;
}

- (void)punctuationGroupsChanged:(id)changed
{
  changedCopy = changed;
  v4 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v6 = changedCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Punctuation groups changed: %@", buf, 0xCu);
  }

  AXPerformBlockAsynchronouslyOnMainThread();
}

- (void)setVoiceOverMuted:(BOOL)muted sendRequest:(BOOL)request
{
  requestCopy = request;
  mutedCopy = muted;
  if ([(VOTWorkspace *)self voiceOverIsConfirmed])
  {
    self->_voiceOverMuted = mutedCopy;
    [(VOTWorkspace *)self setSpeechMuted:mutedCopy];
    if (requestCopy)
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

      lastAction = [v12 lastAction];
      [lastAction setObject:kCFBooleanTrue forVariant:25];

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

- (void)setScreenCurtainEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(VOTWorkspace *)self voiceOverIsConfirmed])
  {
    if (enabledCopy && ([VOTSharedWorkspace loadUIKit], objc_msgSend(AXSafeClassFromString(), "isRunningInStoreDemoMode")))
    {
      selectedLanguage = [VOTSharedWorkspace selectedLanguage];
      v5 = sub_1000516CC(off_1001FDDD0, @"screen.curtain.disabled.in.store.mode", 0, selectedLanguage);
      v6 = sub_1000095FC(v5, 0, selectedLanguage);

      _AXSVoiceOverTouchSetScreenCurtainEnabled();
    }

    else
    {
      self->_screenCurtainEnabled = enabledCopy;
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

- (void)setScreenCurtainSuspended:(BOOL)suspended
{
  suspendedCopy = suspended;
  if ([(VOTWorkspace *)self screenCurtainEnabled]&& self->_screenCurtainSuspended != suspendedCopy)
  {
    v5 = +[VOTSpringBoardConnection defaultConnection];
    [v5 setScreenCurtainEnabled:!suspendedCopy];

    v6 = +[VOTDisplayManager displayManager];
    [v6 setScreenCurtainEnabled:!suspendedCopy];

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

  self->_screenCurtainSuspended = suspendedCopy;
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

- (void)outputRequestFinished:(id)finished
{
  finishedCopy = finished;
  [NSObject cancelPreviousPerformRequestsWithTarget:self];
  completionRequest = self->_completionRequest;

  if (completionRequest == finishedCopy)
  {

    [(VOTWorkspace *)self _stopRunLoop];
  }
}

- (void)stop:(int)stop
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

    if (!stop)
    {
      v10 = [objc_allocWithZone(VOTOutputRequest) init];
      selectedLanguage = [VOTSharedWorkspace selectedLanguage];
      v12 = sub_1000516CC(off_1001FDDD0, @"voiceover.off", 0, selectedLanguage);
      v13 = [(VOTOutputRequest *)v10 addString:v12 withLanguage:selectedLanguage];

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
      softwareKeyboardManager = [(VOTWorkspace *)self softwareKeyboardManager];
      [softwareKeyboardManager _overrideSetHardwareKeyboardAttached:self->_originalKBAttachedState];

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

  if (stop == 1)
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

- (void)handleVolumeButtonPress:(id)press
{
  pressCopy = press;
  v4 = +[VOTOutputManager outputManager];
  isSpeaking = [v4 isSpeaking];

  if ((isSpeaking & 1) == 0)
  {
    currentElement = [(VOTEventFactory *)self->_eventFactory currentElement];
    application = [currentElement application];
    isCameraIrisOpen = [application isCameraIrisOpen];

    if ((isCameraIrisOpen & 1) == 0)
    {
      v9 = +[AXSystemAppServer server];
      [v9 isMediaPlayingForApp:0 completionHandler:&stru_1001C89C0];
    }
  }

  v10 = +[VOTCommandHelper commandHelper];
  if ([v10 helpEnabled] && objc_msgSend(pressCopy, "subtype") != 226)
  {
    v11 = [objc_allocWithZone(VOTKeyInfo) initWithEventRepresentation:pressCopy];
    v12 = [VOTEvent keyEventWithCommand:0 keyInfo:v11];
    [v10 processHelpForEvent:v12];
  }
}

- (void)handleMenuButtonPress:(id)press
{
  [(VOTWorkspace *)self _checkVoiceOverWasConfirmed];
  [(VOTEventFactory *)self->_eventFactory resetEventFactory];
  v4 = +[VOTCommandHelper commandHelper];
  helpEnabled = [v4 helpEnabled];

  if (helpEnabled)
  {
    selectedLanguage = [VOTSharedWorkspace selectedLanguage];
    v7 = sub_1000516CC(off_1001FDDD0, @"home.button.pressed", 0, selectedLanguage);
    v8 = sub_1000095FC(v7, 0, selectedLanguage);

    v9 = sub_1000516CC(off_1001FDDD0, @"stopping.help.mode", 0, selectedLanguage);
    v10 = sub_1000095FC(v9, 2, selectedLanguage);

    v11 = +[VOTCommandHelper commandHelper];
    [v11 setHelpEnabled:0];
  }

  [(VOTElementManagementProtocol *)self->_elementManager handleStateReset];
  self->_lastHomeButtonPress = CFAbsoluteTimeGetCurrent();
}

- (void)handleAppleTVRemoteEvent:(id)event eventOrigin:(int64_t)origin isRTL:(BOOL)l
{
  lCopy = l;
  eventCopy = event;
  type = [eventCopy type];
  if (type > 1203)
  {
    if (type > 1205)
    {
      if (type != 1206)
      {
        if (type == 1207)
        {
          goto LABEL_29;
        }

LABEL_13:
        v9 = +[AXSubsystemVoiceOver sharedInstance];
        ignoreLogging = [v9 ignoreLogging];

        if ((ignoreLogging & 1) == 0)
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
      if (type != 1204)
      {
        goto LABEL_29;
      }

      v17 = &kVOTEventCommandNextElement;
      v18 = &kVOTEventCommandPreviousElement;
    }

    if (!lCopy)
    {
      v17 = v18;
    }

    v19 = *v17;
  }

  else
  {
    if (type > 1201)
    {
      if (type != 1202)
      {
        goto LABEL_29;
      }

      v16 = &kVOTEventCommandSearchRotorDown;
    }

    else
    {
      if (type != 1200)
      {
        if (type == 1201)
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

- (void)_temporarilyChangeQuickNav:(id)nav
{
  keyboardManager = self->_keyboardManager;
  bOOLValue = [nav BOOLValue];

  [(VOTKeyboardManager *)keyboardManager updateQuickNavState:bOOLValue];
}

- (void)temporarilyChangeQuickNavState:(BOOL)state
{
  keyPostingQueue = self->_keyPostingQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004AFB4;
  v4[3] = &unk_1001C89E8;
  v4[4] = self;
  stateCopy = state;
  dispatch_async(keyPostingQueue, v4);
}

- (void)_handleSystemMuteKey:(id)key
{
  keyCopy = key;
  eventRecord = [keyCopy eventRecord];
  originalType = [eventRecord originalType];

  if (originalType != 1026)
  {
    v7 = +[VOTOutputManager outputManager];
    if ([v7 isSystemMuted])
    {
      eventRecord2 = [keyCopy eventRecord];
      [(VOTKeyboardManager *)self->_keyboardManager postEvent:eventRecord2];
      v9 = [eventRecord2 copy];

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
      selectedLanguage = [VOTSharedWorkspace selectedLanguage];
      v13 = sub_1000511CC(v11, @"system.muted", selectedLanguage);
      v14 = [v9 addString:v13];

      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10004B2AC;
      v15[3] = &unk_1001C8A10;
      v10 = v16;
      v16[0] = keyCopy;
      v16[1] = self;
      [v9 setCompletionBlock:v15];
      [v9 send];
    }
  }
}

- (void)handleMediaKeyPress:(id)press
{
  pressCopy = press;
  v4 = +[VOTCommandHelper commandHelper];
  v5 = [objc_allocWithZone(VOTKeyInfo) initWithEventRepresentation:pressCopy];
  if ([v4 helpEnabled])
  {
    if ([v5 isMediaKey])
    {
      v6 = [VOTEvent keyEventWithCommand:0 keyInfo:v5];
      [v4 processHelpForEvent:v6];
    }
  }

  else if ([pressCopy originalType] == 1025 || objc_msgSend(pressCopy, "originalType") == 1026)
  {
    [(VOTWorkspace *)self performSelector:"_handleSystemMuteKey:" withObject:v5 afterDelay:0.5];
  }

  else
  {
    [(VOTKeyboardManager *)self->_keyboardManager postEvent:pressCopy];
  }
}

- (void)handleLockButtonPress:(id)press
{
  [(VOTWorkspace *)self _checkVoiceOverWasConfirmed];
  self->_lastLockButtonPress = CFAbsoluteTimeGetCurrent();
  v4 = +[VOTCommandHelper commandHelper];
  [v4 setHelpEnabled:0];

  eventFactory = self->_eventFactory;

  [(VOTEventFactory *)eventFactory resetEventFactory];
}

- (void)handleProximityEvent:(id)event
{
  elementManager = self->_elementManager;
  v4 = [VOTEvent internalEventWithCommand:kVOTEventCommandCancelSpeaking info:0];
  [(VOTElementManagementProtocol *)elementManager handleEvent:v4];
}

- (void)handleRingerSwitchSwitched:(id)switched
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

- (void)handleSetForcedOrientation:(int64_t)orientation shouldAnnounce:(BOOL)announce
{
  if (orientation)
  {
    if (self->_forcedOrientation != orientation)
    {
      self->_forcedOrientation = orientation;
      [(VOTWorkspace *)self _resetOrientationAndAnnounce:announce updateApplication:0];
    }
  }

  else
  {
    _AXAssert();
  }
}

- (void)handleUnsetForcedOrientationAndAnnounce:(BOOL)announce
{
  if (self->_forcedOrientation)
  {
    self->_forcedOrientation = 0;
    [(VOTWorkspace *)self _resetOrientationAndAnnounce:announce updateApplication:0];
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
  currentElement = [(VOTWorkspace *)self currentElement];
  application = [currentElement application];
  isSetupBuddy = [application isSetupBuddy];

  if ((isSetupBuddy & 1) == 0)
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

- (void)_setDeviceOrientation:(int64_t)orientation shouldAnnounce:(BOOL)announce updateApplication:(BOOL)application
{
  applicationCopy = application;
  orientation = self->_orientation;
  if (orientation == orientation || orientation == 1 && !orientation || !orientation && orientation == 1)
  {
    if (byte_1001FEC29)
    {
      return;
    }

    announceOrientationChanges = 0;
    self->_orientation = orientation;
  }

  else
  {
    self->_orientation = orientation;
    if (announce)
    {
      announceOrientationChanges = [(VOTWorkspace *)self announceOrientationChanges];
    }

    else
    {
      announceOrientationChanges = 0;
    }
  }

  selectedLanguage = [VOTSharedWorkspace selectedLanguage];
  v9 = 0;
  v10 = self->_orientation;
  if (v10 > 2)
  {
    if (v10 == 3)
    {
      [(VOTEventFactory *)self->_eventFactory setOrientation:3];
      byte_1001FEC29 = 1;
      v13 = sub_1000516CC(off_1001FDDD0, @"rotate.landscape.left", 0, selectedLanguage);
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
      v13 = sub_1000516CC(off_1001FDDD0, @"rotate.landscape.right", 0, selectedLanguage);
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

    v9 = sub_1000516CC(v15, v16, 0, selectedLanguage);
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

    v13 = sub_1000516CC(v11, v12, 0, selectedLanguage);
    v9 = 0;
  }

LABEL_26:
  currentElement = [(VOTElementManagementProtocol *)self->_elementManager currentElement];
  application = [currentElement application];

  v20 = +[VOTElement springBoardApplication];
  if (announceOrientationChanges && [(VOTElementManagementProtocol *)self->_elementManager shouldAllowSpeaking])
  {
    isTourGuideRunning = [application isTourGuideRunning];
  }

  else
  {
    isTourGuideRunning = 1;
  }

  if (([v20 isSystemSleeping] & 1) == 0 && !((-[VOTWorkspace currentCallState](self, "currentCallState") != 0) | isTourGuideRunning & 1))
  {
    v22 = sub_1000095FC(v13, 1, selectedLanguage);
    if (v9)
    {
      if ([VOTSharedWorkspace hintsEnabled])
      {
        v23 = [objc_allocWithZone(VOTOutputRequest) init];
        LODWORD(v24) = 1061997773;
        [v23 addPause:v24];
        v25 = [v23 addString:v9 withLanguage:selectedLanguage];
        [v23 send];
      }
    }
  }

  v26 = +[VOTDisplayManager displayManager];
  [v26 setCursorFrameForElement:0];

  +[AXUIMLElement clearCaches];
  if (applicationCopy)
  {
    elementManager = self->_elementManager;
    v28 = [NSNumber numberWithBool:0];
    [(VOTElementManagementProtocol *)elementManager performSelector:"updateApplicationAndSpeak:" withObject:v28 afterDelay:0.35];
  }

  else
  {
    v28 = +[VOTDisplayManager displayManager];
    currentElement2 = [(VOTWorkspace *)self currentElement];
    [v28 setCursorFrameForElement:currentElement2];
  }
}

- (void)_resetOrientationAndAnnounce:(BOOL)announce updateApplication:(BOOL)application
{
  applicationCopy = application;
  announceCopy = announce;
  applicationForCurrentElement = [VOTSharedWorkspace applicationForCurrentElement];
  applicationOrientation = [applicationForCurrentElement applicationOrientation];

  if (!applicationOrientation)
  {
    v9 = +[VOTElement systemAppApplication];
    applicationOrientation = [v9 applicationOrientation];
  }

  self->_applicationOrientation = applicationOrientation;
  if (self->_forcedOrientation)
  {
    forcedOrientation = self->_forcedOrientation;
  }

  else
  {
    forcedOrientation = applicationOrientation;
  }

  [(VOTWorkspace *)self _setDeviceOrientation:forcedOrientation shouldAnnounce:announceCopy updateApplication:applicationCopy];
}

- (void)rotateDeviceOrientation:(BOOL)orientation
{
  orientationCopy = orientation;
  v4 = +[VOTElement systemAppApplication];
  applicationOrientation = [v4 applicationOrientation];

  if (applicationOrientation > 2)
  {
    if (applicationOrientation != 3)
    {
      if (applicationOrientation != 4)
      {
        return;
      }

      v6 = !orientationCopy;
      v7 = 1;
      goto LABEL_7;
    }

    v9 = !orientationCopy;
    v10 = 1;
  }

  else
  {
    if (applicationOrientation < 2)
    {
      v6 = !orientationCopy;
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

    if (applicationOrientation != 2)
    {
      return;
    }

    v9 = !orientationCopy;
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
  isSystemBatteryLow = [v4 isSystemBatteryLow];

  if (isSystemBatteryLow != isSystemBatteryLow)
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
  handleShowOnscreenKeyboardToggle = [v3 handleShowOnscreenKeyboardToggle];

  if ((handleShowOnscreenKeyboardToggle & 1) == 0)
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

- (void)keyboardManagerHandleKeyDown:(BOOL)down keyCode:(unsigned __int16)code modifierState:(unsigned int)state eventOrigin:(int64_t)origin
{
  v7 = *&state;
  codeCopy = code;
  downCopy = down;
  v13 = objc_alloc_init(AXEventKeyInfoRepresentation);
  [v13 setKeyDown:downCopy];
  [v13 setKeyCode:codeCopy];
  [v13 setModifierState:v7];
  [v13 setUsagePage:7];
  v10 = objc_alloc_init(AXEventRepresentation);
  [v10 setKeyInfo:v13];
  if (downCopy)
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
  [v12 handleKeyboardKeyEvent:v10 eventOrigin:origin];
}

- (void)_postNextLanguageEvent
{
  [(VOTWorkspace *)self keyboardManagerHandleKeyDown:1 keyCode:224 modifierState:4 eventOrigin:4];
  [(VOTWorkspace *)self keyboardManagerHandleKeyDown:1 keyCode:44 modifierState:4 eventOrigin:4];
  [(VOTWorkspace *)self keyboardManagerHandleKeyDown:0 keyCode:44 modifierState:4 eventOrigin:4];

  [(VOTWorkspace *)self keyboardManagerHandleKeyDown:0 keyCode:224 modifierState:0 eventOrigin:4];
}

- (void)refreshBraille:(BOOL)braille rotorSelection:(id)selection
{
  brailleCopy = braille;
  selectionCopy = selection;
  v5 = [VOTEvent brailleEventWithCommand:kVOTEventCommandBrailleRefreshBrailleLine info:0];
  v6 = v5;
  v7 = &kCFBooleanTrue;
  if (!brailleCopy)
  {
    v7 = &kCFBooleanFalse;
  }

  [v5 setObject:*v7 forIndex:106];
  if (selectionCopy)
  {
    [v6 setObject:selectionCopy forIndex:109];
  }

  [VOTSharedWorkspace dispatchCommand:v6];
}

- (void)setSoundMuted:(BOOL)muted
{
  self->_soundMuted = muted;
  Current = CFAbsoluteTimeGetCurrent();

  [(VOTWorkspace *)self setLastSoundMuteToggleTime:Current];
}

- (void)setSpeechMuted:(BOOL)muted
{
  self->_speechMuted = muted;
  Current = CFAbsoluteTimeGetCurrent();

  [(VOTWorkspace *)self setLastSpeechMuteToggleTime:Current];
}

- (void)userInteractedWithDeviceWithHand:(BOOL)hand
{
  self->_lastDeviceInteractionEvent = CFAbsoluteTimeGetCurrent();
  v5 = +[VOTBrailleManager manager];
  [v5 setLastUserInteractionTime:self->_lastDeviceInteractionEvent];

  if (hand || ([VOTSharedWorkspace keyboardBrailleUIEnabled] & 1) == 0)
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

- (void)setScreenOn:(BOOL)on silently:(BOOL)silently
{
  self->_screenOn = on;
  Current = CFAbsoluteTimeGetCurrent();
  if (on)
  {
    self->_screenOnTime = Current;
    if (!silently)
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
    unitTestSpeechRate = [(VOTWorkspace *)self unitTestSpeechRate];
    [unitTestSpeechRate doubleValue];
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

- (void)_activeAudioRouteChanged:(id)changed
{
  avAccessQueue = self->_avAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004C950;
  block[3] = &unk_1001C76E8;
  block[4] = self;
  dispatch_async(avAccessQueue, block);
}

- (void)_localeChanged:(id)changed
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
  additionalLanguageRotorItem = [(VOTWorkspace *)self additionalLanguageRotorItem];

  if (additionalLanguageRotorItem)
  {
    v15 = @"RotorItem";
    additionalLanguageRotorItem2 = [(VOTWorkspace *)self additionalLanguageRotorItem];
    v16 = additionalLanguageRotorItem2;
    additionalLanguageRotorItem = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
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
    if (additionalLanguageRotorItem)
    {
      v7 = [v6 arrayByAddingObject:additionalLanguageRotorItem];
    }

    else
    {
      v7 = v6;
    }

    v10 = v7;
  }

  else if (additionalLanguageRotorItem)
  {
    v13[0] = @"Default";
    v13[1] = @"RotorItem";
    v14[0] = &__kCFBooleanTrue;
    systemSpokenLanguage = [VOTSharedWorkspace systemSpokenLanguage];
    v14[1] = systemSpokenLanguage;
    v9 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];

    v12[0] = additionalLanguageRotorItem;
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

- (void)unitTestSetBrailleRotorItems:(id)items
{
  itemsCopy = items;
  if ([(VOTWorkspace *)self inUnitTestMode])
  {
    v4 = [itemsCopy copy];
    enabledBrailleLanguageRotorItems = self->_enabledBrailleLanguageRotorItems;
    self->_enabledBrailleLanguageRotorItems = v4;
  }
}

- (void)setSelectedLanguage:(id)language
{
  languageCopy = language;
  votSettings = [(VOTWorkspace *)self votSettings];
  [votSettings setSelectedLanguageIdentifier:languageCopy];
}

- (NSString)selectedLanguage
{
  votSettings = [(VOTWorkspace *)self votSettings];
  selectedLanguageIdentifier = [votSettings selectedLanguageIdentifier];

  return selectedLanguageIdentifier;
}

- (void)setSelectedBrailleTable:(id)table
{
  tableCopy = table;
  [(NSLock *)self->_brailleLangaugeLock lock];
  v5 = [(BRLTTable *)self->_selectedBrailleTable copy];
  [(NSLock *)self->_brailleLangaugeLock unlock];
  if (([tableCopy isEqual:v5] & 1) == 0)
  {
    [(NSLock *)self->_brailleLangaugeLock lock];
    objc_storeStrong(&self->_selectedBrailleTable, table);
    [(NSLock *)self->_brailleLangaugeLock unlock];
    if (![(VOTWorkspace *)self inUnitTestMode])
    {
      identifier = [tableCopy identifier];
      v7 = +[AXSettings sharedInstance];
      [v7 setVoiceOverBrailleTableIdentifier:identifier];

      identifier2 = [tableCopy identifier];
      v9 = +[AXSettings sharedInstance];
      [v9 setVoiceOverTouchBrailleDisplayOutputTableIdentifier:identifier2];
    }

    v10 = +[AXSettings sharedInstance];
    voiceOverTouchBrailleDisplaySyncInputOutputTables = [v10 voiceOverTouchBrailleDisplaySyncInputOutputTables];

    if (voiceOverTouchBrailleDisplaySyncInputOutputTables)
    {
      [(NSLock *)self->_brailleLangaugeLock lock];
      objc_storeStrong(&self->_selectedBrailleInputTable, table);
      [(NSLock *)self->_brailleLangaugeLock unlock];
      if (![(VOTWorkspace *)self inUnitTestMode])
      {
        identifier3 = [tableCopy identifier];
        v13 = +[AXSettings sharedInstance];
        [v13 setVoiceOverTouchBrailleDisplayInputTableIdentifier:identifier3];
      }
    }
  }
}

- (BRLTTable)selectedBrailleTable
{
  elementManager = [(VOTWorkspace *)self elementManager];
  currentElement = [(VOTWorkspace *)self currentElement];
  v5 = [elementManager determineActivityForElement:currentElement];

  brailleTable = [v5 brailleTable];

  if (!brailleTable)
  {
    goto LABEL_5;
  }

  v7 = [BRLTTable alloc];
  brailleTable2 = [v5 brailleTable];
  v9 = [v7 initWithIdentifier:brailleTable2];

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
  voiceOverTouchBrailleDisplayOutputTableIdentifier = [v3 voiceOverTouchBrailleDisplayOutputTableIdentifier];

  if (voiceOverTouchBrailleDisplayOutputTableIdentifier)
  {
    v4 = [[BRLTTable alloc] initWithIdentifier:voiceOverTouchBrailleDisplayOutputTableIdentifier];
    [(VOTWorkspace *)self setSelectedBrailleTable:v4];
  }

  v5 = +[VOTBrailleManager manager];
  [v5 updateBrailleLanguage];
}

- (void)setSelectedBrailleInputTable:(id)table
{
  tableCopy = table;
  [(NSLock *)self->_brailleLangaugeLock lock];
  v5 = [(BRLTTable *)self->_selectedBrailleInputTable copy];
  [(NSLock *)self->_brailleLangaugeLock unlock];
  if (([tableCopy isEqual:v5] & 1) == 0)
  {
    [(NSLock *)self->_brailleLangaugeLock lock];
    objc_storeStrong(&self->_selectedBrailleInputTable, table);
    [(NSLock *)self->_brailleLangaugeLock unlock];
    if (![(VOTWorkspace *)self inUnitTestMode])
    {
      identifier = [tableCopy identifier];
      v7 = +[AXSettings sharedInstance];
      [v7 setVoiceOverTouchBrailleDisplayInputTableIdentifier:identifier];
    }

    v8 = +[AXSettings sharedInstance];
    voiceOverTouchBrailleDisplaySyncInputOutputTables = [v8 voiceOverTouchBrailleDisplaySyncInputOutputTables];

    if (voiceOverTouchBrailleDisplaySyncInputOutputTables)
    {
      [(NSLock *)self->_brailleLangaugeLock lock];
      objc_storeStrong(&self->_selectedBrailleTable, table);
      [(NSLock *)self->_brailleLangaugeLock unlock];
      if (![(VOTWorkspace *)self inUnitTestMode])
      {
        identifier2 = [tableCopy identifier];
        v11 = +[AXSettings sharedInstance];
        [v11 setVoiceOverTouchBrailleDisplayOutputTableIdentifier:identifier2];
      }
    }
  }
}

- (BRLTTable)selectedBrailleInputTable
{
  elementManager = [(VOTWorkspace *)self elementManager];
  currentElement = [(VOTWorkspace *)self currentElement];
  v5 = [elementManager determineActivityForElement:currentElement];

  brailleInputTable = [v5 brailleInputTable];

  if (!brailleInputTable)
  {
    goto LABEL_5;
  }

  v7 = [BRLTTable alloc];
  brailleInputTable2 = [v5 brailleInputTable];
  v9 = [v7 initWithIdentifier:brailleInputTable2];

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
  voiceOverTouchBrailleDisplayInputTableIdentifier = [v3 voiceOverTouchBrailleDisplayInputTableIdentifier];

  if (voiceOverTouchBrailleDisplayInputTableIdentifier)
  {
    v4 = [[BRLTTable alloc] initWithIdentifier:voiceOverTouchBrailleDisplayInputTableIdentifier];
    selectedBrailleInputTable = self->_selectedBrailleInputTable;
    self->_selectedBrailleInputTable = v4;
  }

  v6 = +[VOTBrailleManager manager];
  [v6 updateBrailleLanguage];
}

- (void)setSelectedBrailleGesturesInputTable:(id)table
{
  tableCopy = table;
  if (([tableCopy isEqual:self->_selectedBrailleGesturesInputTable] & 1) == 0)
  {
    objc_storeStrong(&self->_selectedBrailleGesturesInputTable, table);
    if (![(VOTWorkspace *)self inUnitTestMode])
    {
      identifier = [tableCopy identifier];
      v6 = +[AXSettings sharedInstance];
      [v6 setVoiceOverTouchBrailleGesturesInputTableIdentifier:identifier];
    }
  }
}

- (void)_selectedBrailleGesturesInputTableChanged
{
  VOSCrystalMigrateBrailleTableReplacements();
  v3 = +[AXSettings sharedInstance];
  voiceOverTouchBrailleGesturesInputTableIdentifier = [v3 voiceOverTouchBrailleGesturesInputTableIdentifier];

  if (voiceOverTouchBrailleGesturesInputTableIdentifier)
  {
    v4 = [[BRLTTable alloc] initWithIdentifier:voiceOverTouchBrailleGesturesInputTableIdentifier];
    selectedBrailleGesturesInputTable = self->_selectedBrailleGesturesInputTable;
    self->_selectedBrailleGesturesInputTable = v4;
  }
}

- (BOOL)isBaseSystemSpokenEqualToLocalization
{
  systemSpokenLanguage = [(VOTWorkspace *)self systemSpokenLanguage];
  selectedLanguage = [(VOTWorkspace *)self selectedLanguage];
  if (selectedLanguage)
  {
    if (systemSpokenLanguage)
    {
      v5 = [systemSpokenLanguage rangeOfString:@"-"];
      if (v5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = [systemSpokenLanguage substringToIndex:v5];

        systemSpokenLanguage = v6;
      }

      v7 = [selectedLanguage rangeOfString:@"-"];
      if (v7 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = [selectedLanguage substringToIndex:v7];

        selectedLanguage = v8;
      }

      v9 = [systemSpokenLanguage isEqualToString:selectedLanguage];
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
  currentElement = [(VOTElementManagementProtocol *)self->_elementManager currentElement];
  v4 = [(VOTWorkspace *)self applicationForElement:currentElement];

  return v4;
}

- (id)applicationForElement:(id)element
{
  elementCopy = element;
  if ([elementCopy isApplication])
  {
    v4 = AXRetainAutorelease();
LABEL_5:
    v5 = v4;
    goto LABEL_15;
  }

  if ([VOTSharedWorkspace inUnitTestMode])
  {
    v4 = [elementCopy elementForAttribute:2017];
    goto LABEL_5;
  }

  v6 = [elementCopy pid];
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
    v11 = [elementCopy elementForAttribute:2017];
    v12 = v19[5];
    v19[5] = v11;

    v16 = elementCopy;
    v17 = v9;
    AX_PERFORM_WITH_LOCK();
    copyWithCache = [v19[5] copyWithCache];
    v14 = v19[5];
    v19[5] = copyWithCache;

    v10 = v19[5];
  }

  v5 = v10;

  _Block_object_dispose(&v18, 8);
LABEL_15:

  return v5;
}

- (id)applicationForPID:(int)d
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
  bOOLValue = [v3 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v5 = +[VOTConfiguration rootConfiguration];
    [v5 setPreference:&__kCFBooleanTrue forKey:@"kVOTBTAlwaysOnAsk"];

    v6 = +[AXSpringBoardServer server];
    [v6 showAlert:17 withHandler:&stru_1001C8AA8];
  }
}

- (id)_validateAssetFromResults:(id)results
{
  resultsCopy = results;
  v4 = [AXAsset newsestCompatibleImageCaptionModelAssetFromAssets:resultsCopy withStage:@"Stable" language:@"en" isInstalled:1 isDownloadable:0];
  if (!v4)
  {
    v4 = [AXAsset newsestCompatibleImageCaptionModelAssetFromAssets:resultsCopy withStage:@"Stable" language:@"en" isInstalled:0 isDownloadable:1];
  }

  return v4;
}

- (void)assetController:(id)controller didFinishRefreshingAssets:(id)assets wasSuccessful:(BOOL)successful error:(id)error
{
  assetsCopy = assets;
  errorCopy = error;
  v10 = VOTLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v18 = assetsCopy;
    v19 = 2112;
    v20 = errorCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Refreshed assets: %@ %@", buf, 0x16u);
  }

  v11 = [(VOTWorkspace *)self _validateAssetFromResults:assetsCopy];
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

- (void)assetController:(id)controller didFinishDownloadingAsset:(id)asset wasSuccessful:(BOOL)successful error:(id)error hasRemainingDownloads:(BOOL)downloads
{
  assetCopy = asset;
  errorCopy = error;
  v10 = VOTLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = 138412546;
    v12 = assetCopy;
    v13 = 2112;
    v14 = errorCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Finished downloading: %@ %@", &v11, 0x16u);
  }
}

- (void)assetController:(id)controller didUpdateCatalogForPolicy:(id)policy wasSuccessful:(BOOL)successful error:(id)error
{
  successfulCopy = successful;
  policyCopy = policy;
  errorCopy = error;
  v10 = VOTLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [NSNumber numberWithBool:successfulCopy];
    v12 = 138412802;
    v13 = policyCopy;
    v14 = 2112;
    v15 = v11;
    v16 = 2112;
    v17 = errorCopy;
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
      voiceOverShouldDisallowUSBRestrictedMode = [v4 voiceOverShouldDisallowUSBRestrictedMode];

      if (!voiceOverShouldDisallowUSBRestrictedMode)
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

- (CGPoint)convertDevicePointToZoomedPoint:(CGPoint)point
{
  [(VOTEventFactory *)self->_eventFactory convertDevicePointToZoomedPoint:point.x, point.y];
  result.y = v4;
  result.x = v3;
  return result;
}

- (NSString)systemSpokenLanguage
{
  unitTestSystemSpokenLanguage = [(VOTWorkspace *)self unitTestSystemSpokenLanguage];

  if (unitTestSystemSpokenLanguage)
  {
    unitTestSystemSpokenLanguage2 = [(VOTWorkspace *)self unitTestSystemSpokenLanguage];
  }

  else
  {
    votSettings = [(VOTWorkspace *)self votSettings];
    unitTestSystemSpokenLanguage2 = [votSettings systemLanguageIdentifier];
  }

  return unitTestSystemSpokenLanguage2;
}

- (void)setUnitTestSystemSpokenLanguage:(id)language
{
  objc_storeStrong(&self->_unitTestSystemSpokenLanguage, language);
  languageCopy = language;
  v5 = +[VOTOutputManager outputManager];

  [v5 updateSupportedLanguageMap];
}

- (VOTWorkspaceUnitTestDelegate)unitTestDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_unitTestDelegate);

  return WeakRetained;
}

- (void)setElementManager:(id)manager
{
  managerCopy = manager;
  objc_storeStrong(&self->_elementManager, manager);
  if ([managerCopy conformsToProtocol:&OBJC_PROTOCOL___VOTRotorManagementProtocol])
  {
    [(VOTWorkspace *)self setRotorManager:managerCopy];
  }
}

- (id)lastScreenChangeTime
{
  [(VOTElementManagementProtocol *)self->_elementManager lastScreenChangeNotificationTime];

  return [NSDate dateWithTimeIntervalSince1970:?];
}

- (id)currentElementRotorString
{
  elementRotor = [(VOTElementManagementProtocol *)self->_elementManager elementRotor];
  currentRotorString = [elementRotor currentRotorString];

  return currentRotorString;
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

- (float64x2_t)_updateMainScreenSize:(double)size scale:
{
  *&xmmword_1001FF150 = self.f64[0];
  *(&xmmword_1001FF150 + 1) = a2;
  qword_1001FF160 = *&size;
  self.f64[1] = a2;
  __asm { FMOV            V2.2D, #0.5 }

  result = vmulq_f64(self, _Q2);
  xmmword_1001FF170 = result;
  qword_1001FF180 = *&result.f64[0];
  *algn_1001FF188 = a2 / 3.0;
  return result;
}

@end