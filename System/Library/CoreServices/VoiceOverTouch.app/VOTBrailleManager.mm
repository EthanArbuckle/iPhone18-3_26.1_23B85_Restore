@interface VOTBrailleManager
+ (double)currentDefaultBrailleAlertTimeout;
+ (id)manager;
- (BOOL)_brailleShouldTryToTurnPage:(id)page direction:(int64_t)direction;
- (BOOL)_handleKeyboardModifierCommands:(id)commands;
- (BOOL)_isActiveUserDisplayConfig:(id)config;
- (BOOL)_isBrailleUIEnabled;
- (BOOL)_languageIsCJK;
- (BOOL)_languageIsNBSC;
- (BOOL)_shouldIncludeServiceNameForSpokenBrailleRotorAnnouncementOfTable:(id)table rotorItems:(id)items locale:(id)locale;
- (BOOL)_shouldTriggerBrailleUI;
- (BOOL)_supportsMode:(int64_t)mode;
- (BOOL)bluetoothBrailleDisplayConnected;
- (BOOL)brailleEnabled;
- (BOOL)handleCommandIfActiveBrailleRelated:(id)related;
- (BOOL)handleKeyboardPerkinsInput:(id)input chordOnly:(BOOL)only;
- (BOOL)handleShowOnscreenKeyboardToggle;
- (BOOL)hasActiveBrailleDisplay;
- (BOOL)testingHasActiveDisplay;
- (BRLTTable)brailleInputTableFromSettings;
- (BRLTTable)brailleTableFromSettings;
- (NSArray)textReplacementEntries;
- (SCROBrailleClient)testingBrailleClient;
- (VOTBrailleManager)init;
- (_NSRange)brailleLineRange;
- (_NSRange)rangeOfCellRepresentingCharacterAtIndex:(int64_t)index;
- (id)_defaultLanguageRotorItem;
- (id)_localeIdentifierForTableIdentifier:(id)identifier;
- (id)_tableIdentifierFromDefaultRotorItem:(id)item forLocale:(id)locale;
- (id)adjustBrailleLanguageRotorInDirection:(int64_t)direction isDefault:(BOOL *)default input:(BOOL)input;
- (id)nameForSpokenAnnouncementOfBrailleTable:(id)table;
- (int64_t)_adjustedRotorIndex:(int64_t)index inDirection:(int64_t)direction rotorItems:(id)items;
- (int64_t)_indexOfBrailleTable:(id)table inRotorItems:(id)items;
- (int64_t)inputContractionMode;
- (int64_t)outputContractionMode;
- (unint64_t)testingBrailleElementIndex;
- (unsigned)persistentKeyModifiers;
- (void)_activateBrailleUIWithCommand:(id)command;
- (void)_announceBrailleUIStateChange:(BOOL)change;
- (void)_dispatchBrailleDidPanWithSuccess:(id)success elementToken:(id)token appToken:(id)appToken direction:(id)direction lineOffset:(id)offset;
- (void)_dispatchPlanarPanFailedIsLeft:(id)left;
- (void)_displayBrailleElementHint;
- (void)_elementsRetrieved:(id)retrieved;
- (void)_filterUnacceptableBrailleStrings:(id)strings;
- (void)_handleBrailleAnnouncementModeOn:(id)on;
- (void)_handleBrailleConfigurationChanged:(id)changed;
- (void)_handleBrailleKeypress:(id)keypress;
- (void)_handleBraillePanBeginning:(id)beginning;
- (void)_handleBraillePanEnd:(id)end;
- (void)_handleBraillePanLeft:(id)left;
- (void)_handleBraillePanRight:(id)right;
- (void)_handleBraillePlayBorderHitSound;
- (void)_handleBraillePlayCommandNotSupportedSound;
- (void)_handleBraillePlayDisplayConnectionSound:(id)sound;
- (void)_handleBrailleReplaceTextRange:(id)range withString:(id)string cursor:(id)cursor;
- (void)_handleBrailleRouter:(id)router;
- (void)_handleBrailleSpeechRequest:(id)request language:(id)language shouldQueue:(id)queue;
- (void)_handleBrailleStatusRouter:(id)router;
- (void)_handleBrailleTable:(id)table input:(BOOL)input;
- (void)_handleBrailleUIRequest:(id)request;
- (void)_handleDisplayModeChanged:(id)changed;
- (void)_handleEvent:(id)event;
- (void)_handleStatusRouterForIndex:(int64_t)index;
- (void)_initializeCommands;
- (void)_initializeExpandedStatusCellDictionaries;
- (void)_refreshBrailleLinePreferringPositionOverRotorSelection:(BOOL)selection knownLineRange:(BOOL)range updatedPosition:(id)position updateBrailleElement:(BOOL)element;
- (void)_resetBrailleCursor;
- (void)_setAutomaticBrailleTranslationEnabled:(BOOL)enabled;
- (void)_setBrailleElement:(id)element resetBrailleCursor:(id)cursor rotorSelection:(id)selection;
- (void)_setBrailleInputTable:(id)table;
- (void)_setBrailleString:(id)string type:(id)type timeout:(id)timeout priority:(id)priority langCode:(id)code brailleLineRangeValue:(id)value;
- (void)_setBrailleTable:(id)table;
- (void)_setBrailleUIActive:(id)active withOptions:(id)options;
- (void)_setInputContractionMode:(int)mode;
- (void)_showBrailleUIMigrationMessage;
- (void)_thread_initiateScrodConnection;
- (void)_toggleBrailleUIActive;
- (void)_updateBrailleAutoAdvancePrefs;
- (void)_updateBrailleKeyDebouncePrefs;
- (void)_updateHelpEnabled;
- (void)_updateOnscreenKeyboardSettings;
- (void)_updatePrefersNonBlinkingCursorIndicatorPrefs;
- (void)_updateRealtimeElementStatus;
- (void)_updateRealtimeElementStatusFromTimer;
- (void)_updateStatusCellPrefs;
- (void)_updateStatusCells;
- (void)_updateTactileGraphicsDisplays;
- (void)_updateTextReplacementEntries;
- (void)_updateWordWrapPrefs;
- (void)_waitForBrailleClientConnection;
- (void)activateBrailleUIWithCommand:(id)command;
- (void)announceBrailleTable:(id)table isDefault:(BOOL)default;
- (void)applyBrailleSubstitutions:(id)substitutions;
- (void)configureForUnitTesting;
- (void)dealloc;
- (void)elementsRetrieved:(id)retrieved finished:(BOOL)finished;
- (void)handleBSICommandModeInput:(id)input;
- (void)handleBrailleConfigurationChanged:(id)changed;
- (void)handleBrailleDeletedUntranslatedText:(id)text speakLiterally:(BOOL)literally;
- (void)handleBrailleDidDisconnect:(id)disconnect;
- (void)handleBrailleDidPanLeft:(id)left elementToken:(id)token appToken:(id)appToken lineOffset:(id)offset;
- (void)handleBrailleDidPanRight:(id)right elementToken:(id)token appToken:(id)appToken lineOffset:(id)offset;
- (void)handleBrailleDidReconnect:(id)reconnect;
- (void)handleBrailleDidShowNextAnnouncement:(id)announcement;
- (void)handleBrailleDidShowPreviousAnnouncement:(id)announcement;
- (void)handleBrailleDisplayCopyStringToClipboard:(id)clipboard;
- (void)handleBrailleInsertedUntranslatedText:(id)text speakLiterally:(BOOL)literally;
- (void)handleBrailleKeypress:(id)keypress;
- (void)handleBraillePlayBorderHitSound;
- (void)handleBraillePlayCommandNotSupportedSound;
- (void)handleBraillePlayDisplayConnectionSound:(id)sound;
- (void)handleBrailleReplaceTextRange:(_NSRange)range withString:(id)string cursor:(unint64_t)cursor;
- (void)handleBrailleSpeechRequest:(id)request language:(id)language shouldQueue:(BOOL)queue;
- (void)handleBrailleStartEditing;
- (void)handleBrailleUIRequest:(id)request;
- (void)handleDidBrailleUIEnd;
- (void)handleDisplayModeChanged:(id)changed;
- (void)handleEvent:(id)event;
- (void)handlePlanarPanFailedIsLeft:(BOOL)left;
- (void)handleSettingsChange:(id)change;
- (void)handleUserEventOccured;
- (void)refreshBrailleForTerminalCommand:(id)command cursor:(int64_t)cursor;
- (void)refreshBrailleForTerminalOutput:(id)output;
- (void)refreshBrailleLine;
- (void)resetTestingAggregatedStatus;
- (void)setBrailleElement:(id)element resetBrailleCursor:(BOOL)cursor rotorSelection:(id)selection;
- (void)setBrailleMap:(id)map;
- (void)setBrailleString:(id)string type:(int)type timeout:(double)timeout langCode:(id)code brailleLineRange:(_NSRange)range isBrailleLineRangeKnown:(BOOL)known;
- (void)setBrailleUIActive:(BOOL)active withOptions:(id)options;
- (void)setLastUserInteractionTime:(double)time;
- (void)setPersistentKeyModifiers:(unsigned int)modifiers;
- (void)setPlanarData:(id)data;
- (void)testingExitDisplayMode;
- (void)toggleBrailleUIActive;
- (void)updateBrailleAutoAdvancePrefs;
- (void)updateBrailleInputSettings;
- (void)updateBrailleLanguage;
- (void)updateBrailleOutputSettings;
- (void)updatePrefersNonBlinkingCursorIndicatorPrefs;
- (void)updateStatusCellPrefs;
- (void)updateUsesNemethForMath;
- (void)userInteractedWithDeviceWithoutBraille;
@end

@implementation VOTBrailleManager

+ (id)manager
{
  if (AXDeviceIsAudioAccessory())
  {
    v2 = 0;
  }

  else
  {
    if (qword_1001FEE00 != -1)
    {
      sub_10012E9FC();
    }

    v2 = qword_1001FEDF8;
  }

  return v2;
}

+ (double)currentDefaultBrailleAlertTimeout
{
  v2 = +[AXSettings sharedInstance];
  voiceOverBrailleAlertShowUntilDismissed = [v2 voiceOverBrailleAlertShowUntilDismissed];

  if (voiceOverBrailleAlertShowUntilDismissed)
  {
    return 1.79769313e308;
  }

  v5 = +[AXSettings sharedInstance];
  [v5 voiceOverBrailleAlertDisplayDuration];
  v7 = v6;

  return v7;
}

- (VOTBrailleManager)init
{
  v70.receiver = self;
  v70.super_class = VOTBrailleManager;
  v2 = [(VOTBrailleManager *)&v70 init];
  v3 = v2;
  if (v2)
  {
    [(VOTBrailleManager *)v2 setThreadWaitTime:kSCRCThreadNoWait];
    v4 = objc_alloc_init(_VOTBrailleManagerStatus);
    status = v3->_status;
    v3->_status = v4;

    v6 = [objc_allocWithZone(SCRCThreadKey) initWithObject:v3];
    threadKey = v3->_threadKey;
    v3->_threadKey = v6;

    [(VOTBrailleManager *)v3 setUsesBrailleSubstitutions:1];
    v8 = [objc_allocWithZone(NSMutableCharacterSet) init];
    delimiters = v3->_delimiters;
    v3->_delimiters = v8;

    v10 = v3->_delimiters;
    v11 = +[NSCharacterSet whitespaceCharacterSet];
    [(NSMutableCharacterSet *)v10 formUnionWithCharacterSet:v11];

    v12 = v3->_delimiters;
    v13 = +[NSCharacterSet punctuationCharacterSet];
    [(NSMutableCharacterSet *)v12 formUnionWithCharacterSet:v13];

    v14 = [objc_allocWithZone(AXIndexMap) init];
    commands = v3->_commands;
    v3->_commands = v14;

    [(VOTBrailleManager *)v3 _initializeCommands];
    [(VOTBrailleManager *)v3 _updateStatusCellPrefs];
    [(VOTBrailleManager *)v3 performSelector:"updateBrailleLanguage" withObject:0 afterDelay:1.0];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, sub_1000D3CE0, kAXSVoiceOverTouchBrailleMasterStatusCellIndexChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v17 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v17, v3, sub_1000D3CF8, kAXSPrefersNonBlinkingCursorIndicatorDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    objc_initWeak(&location, v3);
    v18 = +[AXSettings sharedInstance];
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_1000D3D10;
    v67[3] = &unk_1001C78D8;
    objc_copyWeak(&v68, &location);
    [v18 registerUpdateBlock:v67 forRetrieveSelector:"voiceOverBrailleGradeTwoAutoTranslateEnabled" withListener:v3];

    objc_destroyWeak(&v68);
    v19 = +[AXSettings sharedInstance];
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_1000D3D50;
    v65[3] = &unk_1001C78D8;
    objc_copyWeak(&v66, &location);
    [v19 registerUpdateBlock:v65 forRetrieveSelector:"voiceOverTouchBrailleDisplayInputMode" withListener:v3];

    objc_destroyWeak(&v66);
    v20 = +[AXSettings sharedInstance];
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_1000D3D90;
    v63[3] = &unk_1001C78D8;
    objc_copyWeak(&v64, &location);
    [v20 registerUpdateBlock:v63 forRetrieveSelector:"voiceOverTouchBrailleDisplayOutputMode" withListener:v3];

    objc_destroyWeak(&v64);
    v21 = +[AXSettings sharedInstance];
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_1000D3DD0;
    v61[3] = &unk_1001C78D8;
    objc_copyWeak(&v62, &location);
    v22 = objc_loadWeakRetained(&location);
    [v21 registerUpdateBlock:v61 forRetrieveSelector:"voiceOverShowSoftwareKeyboardWithBraille" withListener:v22];

    objc_destroyWeak(&v62);
    v23 = +[AXSettings sharedInstance];
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_1000D3E10;
    v59[3] = &unk_1001C78D8;
    objc_copyWeak(&v60, &location);
    [v23 registerUpdateBlock:v59 forRetrieveSelector:"voiceOverTouchBrailleShowTextStyleStatus" withListener:v3];

    objc_destroyWeak(&v60);
    v24 = +[AXSettings sharedInstance];
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_1000D3E50;
    v57[3] = &unk_1001C78D8;
    objc_copyWeak(&v58, &location);
    [v24 registerUpdateBlock:v57 forRetrieveSelector:"voiceOverTouchBrailleShowGeneralStatus" withListener:v3];

    objc_destroyWeak(&v58);
    v25 = +[AXSettings sharedInstance];
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_1000D3E90;
    v55[3] = &unk_1001C78D8;
    objc_copyWeak(&v56, &location);
    [v25 registerUpdateBlock:v55 forRetrieveSelector:"voiceOverBrailleWordWrapEnabled" withListener:v3];

    objc_destroyWeak(&v56);
    v26 = +[AXSettings sharedInstance];
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_1000D3ED0;
    v53[3] = &unk_1001C78D8;
    objc_copyWeak(&v54, &location);
    [v26 registerUpdateBlock:v53 forRetrieveSelector:"voiceOverBrailleKeyDebounceTimeout" withListener:v3];

    objc_destroyWeak(&v54);
    v27 = +[AXSettings sharedInstance];
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_1000D3F10;
    v51[3] = &unk_1001C78D8;
    objc_copyWeak(&v52, &location);
    [v27 registerUpdateBlock:v51 forRetrieveSelector:"voiceOverTouchUpdateBrailleWithoutConnectedDisplay" withListener:v3];

    objc_destroyWeak(&v52);
    v28 = +[AXSettings sharedInstance];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_1000D3F7C;
    v49[3] = &unk_1001C78D8;
    objc_copyWeak(&v50, &location);
    [v28 registerUpdateBlock:v49 forRetrieveSelector:"voiceOverBrailleAutoAdvanceDuration" withListener:v3];

    objc_destroyWeak(&v50);
    v29 = +[NSNotificationCenter defaultCenter];
    [v29 addObserver:v3 selector:"_updateHelpEnabled" name:@"VOTHelpEnabledChangedNotification" object:0];

    [(VOTBrailleManager *)v3 _updateHelpEnabled];
    v3->_lastBraillePanDirection = -1;
    v3->_lastRefreshTrigger = 0;
    v3->_bookCursorPosition = -1;
    v3->_trailingBookCursorPosition = -1;
    v30 = [objc_allocWithZone(SCRCTargetSelectorTimer) initWithTarget:v3 selector:"_displayBrailleElementHint" threadKey:v3->_threadKey];
    hintTimer = v3->_hintTimer;
    v3->_hintTimer = v30;

    v32 = [objc_allocWithZone(SCRCTargetSelectorTimer) initWithTarget:v3 selector:"_updateRealtimeElementStatusFromTimer" threadKey:v3->_threadKey];
    updateRealtimeStatusTimer = v3->_updateRealtimeStatusTimer;
    v3->_updateRealtimeStatusTimer = v32;

    [(VOTBrailleManager *)v3 _resetBrailleCursor];
    v34 = objc_alloc_init(NSCondition);
    brailleClientConnectionCondition = v3->_brailleClientConnectionCondition;
    v3->_brailleClientConnectionCondition = v34;

    v36 = +[VOTPlanarBrailleManager manager];
    [v36 setDelegate:v3];

    v37 = objc_alloc_init(_KSTextReplacementClientStore);
    textReplacementStore = v3->_textReplacementStore;
    v3->_textReplacementStore = v37;

    textReplacementEntries = [(_KSTextReplacementClientStore *)v3->_textReplacementStore textReplacementEntries];
    textReplacementEntries = v3->_textReplacementEntries;
    v3->_textReplacementEntries = textReplacementEntries;

    v41 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v41, v3, sub_1000D3FBC, KSTextReplacementDidChangeNotification, 0, 0);
    v42 = +[AXSettings sharedInstance];
    LODWORD(v22) = [v42 voiceOverTouchUpdateBrailleWithoutConnectedDisplay];

    if (v22)
    {
      v3->_hasActiveDisplay = 1;
    }

    v3->_panEnabled = 1;
    v3->_lastPanTime = 0.0;
    v43 = objc_opt_new();
    keyboardVirtualDisplayLock = v3->_keyboardVirtualDisplayLock;
    v3->_keyboardVirtualDisplayLock = v43;

    v45 = objc_opt_new();
    keyboardVirtualDisplayDownKeys = v3->_keyboardVirtualDisplayDownKeys;
    v3->_keyboardVirtualDisplayDownKeys = v45;

    [(VOTBrailleManager *)v3 _initiateScrodConnection];
    v47 = v3;
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)dealloc
{
  [(SCRCTargetSelectorTimer *)self->_updateRealtimeStatusTimer invalidate];
  [(SCRCTargetSelectorTimer *)self->_hintTimer invalidate];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = VOTBrailleManager;
  [(VOTBrailleManager *)&v4 dealloc];
}

- (void)_thread_initiateScrodConnection
{
  v3 = VOTLogBraille();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Initiate scrod connection; create _brailleClient", buf, 2u);
  }

  v4 = [objc_allocWithZone(SCROBrailleClient) initWithDelegate:self];
  brailleClient = self->_brailleClient;
  self->_brailleClient = v4;

  [(SCROBrailleClient *)self->_brailleClient setKeepConnectionAlive:1];
  [(VOTBrailleManager *)self _waitForBrailleClientConnection];
  [(SCROBrailleClient *)self->_brailleClient setDisplayDescriptorCallbackEnabled:0];
  [(VOTBrailleManager *)self updateBrailleInputSettings];
  [(VOTBrailleManager *)self updateBrailleOutputSettings];
  [(VOTBrailleManager *)self _updateWordWrapPrefs];
  [(VOTBrailleManager *)self _updateBrailleKeyDebouncePrefs];
  [(VOTBrailleManager *)self _updateBrailleAutoAdvancePrefs];
  [(VOTBrailleManager *)self _updatePrefersNonBlinkingCursorIndicatorPrefs];
  [(VOTBrailleManager *)self _setBrailleTable:self->_currentDefaultTable];
  [(VOTBrailleManager *)self _setBrailleInputTable:self->_currentDefaultTable];
  [(VOTBrailleManager *)self updateUsesNemethForMath];
  [(VOTBrailleManager *)self bluetoothBrailleDisplayConnected];
  _AXSBrailleInputDeviceSetConnected();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_1000D425C, kSCRODisplayConfigurationChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  [(VOTBrailleManager *)self _handleBrailleConfigurationChanged:&__kCFBooleanTrue];
  v7 = VOTLogBraille();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Posting kAXSVoiceOverTouchBrailleReconnectionTriggeredNotification", v9, 2u);
  }

  v8 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(v8, kAXSVoiceOverTouchBrailleReconnectionTriggeredNotification, 0, 0, 1u);
  VOSCrystalMigrateBrailleTableReplacements();
  VOSRepairBrailleTableSettings();
}

- (void)_updateTextReplacementEntries
{
  textReplacementEntries = [(_KSTextReplacementClientStore *)self->_textReplacementStore textReplacementEntries];
  textReplacementEntries = self->_textReplacementEntries;
  self->_textReplacementEntries = textReplacementEntries;

  _objc_release_x1(textReplacementEntries, textReplacementEntries);
}

- (NSArray)textReplacementEntries
{
  textReplacementEntries = self->_textReplacementEntries;
  if (!textReplacementEntries)
  {
    [(VOTBrailleManager *)self _updateTextReplacementEntries];
    textReplacementEntries = self->_textReplacementEntries;
  }

  return textReplacementEntries;
}

- (void)updateBrailleOutputSettings
{
  activeBrailleOutputPreference = [VOTSharedWorkspace activeBrailleOutputPreference];
  v3 = AXLogBrailleHW();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = activeBrailleOutputPreference;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Braille output updated: %d", v4, 8u);
  }

  if (activeBrailleOutputPreference == 3)
  {
    if (!_AXSVoiceOverTouchBrailleContractionMode())
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (activeBrailleOutputPreference != 2)
  {
    if (activeBrailleOutputPreference != 1)
    {
      return;
    }

    if (_AXSVoiceOverTouchBrailleContractionMode() == 1)
    {
LABEL_14:
      if (!_AXSVoiceOverTouchBrailleEightDotMode())
      {
        return;
      }

      goto LABEL_15;
    }

LABEL_13:
    _AXSVoiceOverTouchSetBrailleContractionMode();
    goto LABEL_14;
  }

  if (_AXSVoiceOverTouchBrailleContractionMode() != 1)
  {
    _AXSVoiceOverTouchSetBrailleContractionMode();
  }

  if (_AXSVoiceOverTouchBrailleEightDotMode() != 1)
  {
LABEL_15:
    _AXSVoiceOverTouchSetBrailleEightDotMode();
  }
}

- (void)updateBrailleInputSettings
{
  activeBrailleInputPreference = [VOTSharedWorkspace activeBrailleInputPreference];
  v4 = AXLogBrailleHW();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = activeBrailleInputPreference;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Braille input updated: %d", v6, 8u);
  }

  [(VOTBrailleManager *)self _setInputContractionMode:activeBrailleInputPreference != 3];
  v5 = +[AXSettings sharedInstance];
  -[VOTBrailleManager _setAutomaticBrailleTranslationEnabled:](self, "_setAutomaticBrailleTranslationEnabled:", [v5 voiceOverBrailleGradeTwoAutoTranslateEnabled]);
}

- (void)_setInputContractionMode:(int)mode
{
  if (self->_cachedContractionMode != mode)
  {
    self->_cachedContractionMode = mode;
    [(SCROBrailleClient *)self->_brailleClient setInputContractionMode:?];
  }
}

- (void)_setAutomaticBrailleTranslationEnabled:(BOOL)enabled
{
  if (self->_cachedAutoBrailleTranslationEnabled != enabled)
  {
    self->_cachedAutoBrailleTranslationEnabled = enabled;
    [(SCROBrailleClient *)self->_brailleClient setAutomaticBrailleTranslationEnabled:?];
  }
}

- (void)_waitForBrailleClientConnection
{
  [(NSCondition *)self->_brailleClientConnectionCondition lock];
  if (([(SCROBrailleClient *)self->_brailleClient isConnected]& 1) == 0)
  {
    brailleClientConnectionCondition = self->_brailleClientConnectionCondition;
    v4 = [NSDate dateWithTimeIntervalSinceNow:5.0];
    [(NSCondition *)brailleClientConnectionCondition waitUntilDate:v4];
  }

  v5 = self->_brailleClientConnectionCondition;

  [(NSCondition *)v5 unlock];
}

- (void)_updateRealtimeElementStatusFromTimer
{
  [(VOTBrailleManager *)self _updateRealtimeElementStatus];
  status = self->_status;
  v4 = [(_VOTBrailleManagerStatus *)status realtimeSpinnerCount]+ 1;

  [(_VOTBrailleManagerStatus *)status setRealtimeSpinnerCount:v4];
}

- (void)_updateRealtimeElementStatus
{
  application = [(VOTElement *)self->_brailleElement application];
  realtimeElements = [application realtimeElements];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = realtimeElements;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v6)
  {
    realtimeElementCompleted = 0;
    realtimeElementUnread = 0;
    goto LABEL_16;
  }

  v7 = v6;
  realtimeElementCompleted = 0;
  realtimeElementUnread = 0;
  v10 = *v22;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v22 != v10)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v21 + 1) + 8 * i);
      if (![(VOTElement *)self->_brailleElement isEqual:v12, v21])
      {
        if (realtimeElementUnread)
        {
          realtimeElementUnread = 1;
          if ((realtimeElementCompleted & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        else
        {
          realtimeElementUnread = [v12 realtimeElementUnread];
          if ((realtimeElementCompleted & 1) == 0)
          {
LABEL_9:
            realtimeElementCompleted = [v12 realtimeElementCompleted];
            continue;
          }
        }

        realtimeElementCompleted = 1;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  }

  while (v7);
LABEL_16:

  -[_VOTBrailleManagerStatus setShowRealtime:](self->_status, "setShowRealtime:", [v5 count] != 0);
  if ((realtimeElementUnread & 1) == 0)
  {
    [(_VOTBrailleManagerStatus *)self->_status setRealtimeBlinking:0];
    LOBYTE(v17) = 0;
    goto LABEL_34;
  }

  Current = CFAbsoluteTimeGetCurrent();
  status = self->_status;
  if ((Current - self->_lastRealtimeUpdate > 3.0) | realtimeElementCompleted & 1)
  {
    realtimeBlinking = [(_VOTBrailleManagerStatus *)status realtimeBlinking];
    v16 = self->_status;
    if (realtimeBlinking)
    {
      [(_VOTBrailleManagerStatus *)self->_status setRealtimeBlinkIsUp:[(_VOTBrailleManagerStatus *)v16 realtimeBlinkIsUp]^ 1];
    }

    else
    {
      [(_VOTBrailleManagerStatus *)v16 setRealtimeBlinking:1];
      [(_VOTBrailleManagerStatus *)self->_status setRealtimeBlinkIsUp:1];
      [(_VOTBrailleManagerStatus *)self->_status setRealtimeSpinnerCount:0];
    }
  }

  else
  {
    [(_VOTBrailleManagerStatus *)status setRealtimeBlinking:0];
  }

  if (([(SCRCTargetSelectorTimer *)self->_updateRealtimeStatusTimer isPending]& 1) == 0)
  {
    [(SCRCTargetSelectorTimer *)self->_updateRealtimeStatusTimer dispatchAfterDelay:0.5];
  }

  [(_VOTBrailleManagerStatus *)self->_status setRealtime:0];
  realtimeBlinking2 = [(_VOTBrailleManagerStatus *)self->_status realtimeBlinking];
  v19 = self->_status;
  if (realtimeBlinking2)
  {
    if ([(_VOTBrailleManagerStatus *)v19 realtimeBlinkIsUp])
    {
      [(_VOTBrailleManagerStatus *)self->_status setRealtime:[(_VOTBrailleManagerStatus *)self->_status realtime]| 2];
      [(_VOTBrailleManagerStatus *)self->_status setRealtime:[(_VOTBrailleManagerStatus *)self->_status realtime]| 4];
      [(_VOTBrailleManagerStatus *)self->_status setRealtime:[(_VOTBrailleManagerStatus *)self->_status realtime]| 0x10];
      [(_VOTBrailleManagerStatus *)self->_status setRealtime:[(_VOTBrailleManagerStatus *)self->_status realtime]| 0x20];
      if (realtimeElementCompleted)
      {
        [(_VOTBrailleManagerStatus *)self->_status setRealtime:[(_VOTBrailleManagerStatus *)self->_status realtime]| 1];
        [(_VOTBrailleManagerStatus *)self->_status setRealtime:[(_VOTBrailleManagerStatus *)self->_status realtime]| 8];
        [(_VOTBrailleManagerStatus *)self->_status setRealtime:[(_VOTBrailleManagerStatus *)self->_status realtime]| 0x40];
        v17 = [(_VOTBrailleManagerStatus *)self->_status realtime]| 0xFFFFFF80;
        goto LABEL_34;
      }
    }
  }

  else
  {
    v20 = [(_VOTBrailleManagerStatus *)v19 realtimeSpinnerCount]& 3;
    if ((!v20 || ([(_VOTBrailleManagerStatus *)self->_status setRealtime:[(_VOTBrailleManagerStatus *)self->_status realtime]| 2], v20 != 1)) && ([(_VOTBrailleManagerStatus *)self->_status setRealtime:[(_VOTBrailleManagerStatus *)self->_status realtime]| 0x10], v20 == 2) || ([(_VOTBrailleManagerStatus *)self->_status setRealtime:[(_VOTBrailleManagerStatus *)self->_status realtime]| 0x20], v20 != 3))
    {
      v17 = [(_VOTBrailleManagerStatus *)self->_status realtime]| 4;
LABEL_34:
      [(_VOTBrailleManagerStatus *)self->_status setRealtime:v17, v21];
    }
  }

  [(VOTBrailleManager *)self _updateStatusCells];
}

- (BOOL)hasActiveBrailleDisplay
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  driverConfiguration = [(SCROBrailleClient *)self->_brailleClient driverConfiguration];
  v4 = [driverConfiguration countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(driverConfiguration);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([(VOTBrailleManager *)self _isActiveUserDisplayConfig:v8])
        {
          v9 = [v8 objectForKey:kSCROBrailleDisplayPostsKeyboardEvents];
          bOOLValue = [v9 BOOLValue];

          if (bOOLValue)
          {
            v11 = 1;
            goto LABEL_12;
          }
        }
      }

      v5 = [driverConfiguration countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (id)adjustBrailleLanguageRotorInDirection:(int64_t)direction isDefault:(BOOL *)default input:(BOOL)input
{
  inputCopy = input;
  brailleLanguageRotorItems = [VOTSharedWorkspace brailleLanguageRotorItems];
  v10 = [brailleLanguageRotorItems ax_filteredArrayUsingBlock:&stru_1001CAB38];

  if (inputCopy)
  {
    [VOTSharedWorkspace selectedBrailleInputTable];
  }

  else
  {
    [VOTSharedWorkspace selectedBrailleTable];
  }
  v11 = ;
  v12 = [v10 count];
  v13 = VOTLogBraille();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      v15 = [v10 debugDescription];
      v31 = 134218498;
      directionCopy2 = direction;
      v33 = 2112;
      v34 = v11;
      v35 = 2112;
      v36 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Handling braille language rotor movement. dir:%ld selected:%@, items:%@", &v31, 0x20u);
    }

    v16 = [v10 objectAtIndexedSubscript:{-[VOTBrailleManager _adjustedRotorIndex:inDirection:rotorItems:](self, "_adjustedRotorIndex:inDirection:rotorItems:", -[VOTBrailleManager _indexOfBrailleTable:inRotorItems:](self, "_indexOfBrailleTable:inRotorItems:", v11, v10), direction, v10)}];
    v17 = [v16 objectForKeyedSubscript:@"RotorItem"];
    v18 = VOSBrailleTableForRotorItem();
    tableIdentifier = [v18 tableIdentifier];

    if (inputCopy)
    {
      [VOTSharedWorkspace setSelectedBrailleInputTable:v18];
    }

    else
    {
      [VOTSharedWorkspace setSelectedBrailleTable:v18];
    }

    applicationForCurrentElement = [VOTSharedWorkspace applicationForCurrentElement];
    v22 = +[AXSettings sharedInstance];
    voiceOverTouchBrailleDisplaySyncInputOutputTables = [v22 voiceOverTouchBrailleDisplaySyncInputOutputTables];

    activeKeyboard = [applicationForCurrentElement activeKeyboard];

    if (activeKeyboard && voiceOverTouchBrailleDisplaySyncInputOutputTables | inputCopy)
    {
      currentSoftwareKeyboardLanguage = [applicationForCurrentElement currentSoftwareKeyboardLanguage];
      currentSoftwareKeyboardLayout = [applicationForCurrentElement currentSoftwareKeyboardLayout];
      v27 = +[AXSettings sharedInstance];
      [v27 setPreferredBrailleTableIdentifier:tableIdentifier forKeyboardLanguage:currentSoftwareKeyboardLanguage keyboardLayout:currentSoftwareKeyboardLayout];
    }

    v28 = +[VOTBrailleManager manager];
    v29 = v28;
    if (inputCopy)
    {
      [v28 brailleInputTableFromSettings];
    }

    else
    {
      [v28 brailleTableFromSettings];
    }
    v20 = ;
  }

  else
  {
    if (v14)
    {
      v31 = 134218242;
      directionCopy2 = direction;
      v33 = 2112;
      v34 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Handling braille language rotor movement with empty braille language list. dir:%ld selected:%@", &v31, 0x16u);
    }

    v20 = 0;
    if (default)
    {
      *default = 0;
    }
  }

  return v20;
}

- (void)announceBrailleTable:(id)table isDefault:(BOOL)default
{
  defaultCopy = default;
  v6 = VOTSharedWorkspace;
  tableCopy = table;
  brailleLanguageRotorItems = [v6 brailleLanguageRotorItems];
  v8 = +[AXLanguageManager sharedInstance];
  userLocale = [v8 userLocale];
  LOBYTE(self) = [(VOTBrailleManager *)self _shouldIncludeServiceNameForSpokenBrailleRotorAnnouncementOfTable:tableCopy rotorItems:brailleLanguageRotorItems locale:userLocale];

  if (self)
  {
    [tableCopy localizedNameWithService];
  }

  else
  {
    [tableCopy localizedName];
  }
  v10 = ;

  if (defaultCopy)
  {
    v11 = sub_1000511CC(off_1001FDDD0, @"default.language.format", 0);
    v12 = [NSString stringWithFormat:v11, v10];
  }

  else
  {
    v12 = v10;
  }

  v13 = +[VOTOutputManager outputManager];
  [v13 speakSimpleString:v12];
}

- (int64_t)_indexOfBrailleTable:(id)table inRotorItems:(id)items
{
  tableCopy = table;
  itemsCopy = items;
  if ([itemsCopy count])
  {
    v7 = 0;
    while (1)
    {
      v8 = [itemsCopy objectAtIndexedSubscript:v7];
      v9 = v8;
      if (!tableCopy)
      {
        v10 = [v8 objectForKeyedSubscript:@"Default"];
        bOOLValue = [v10 BOOLValue];

        if (bOOLValue)
        {
          break;
        }
      }

      v12 = [v9 objectForKeyedSubscript:@"RotorItem"];
      identifier = [tableCopy identifier];
      v14 = [v12 isEqualToString:identifier];

      if (v14)
      {
        goto LABEL_8;
      }

      if ([itemsCopy count] <= ++v7)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v7 = 0;
  }

LABEL_8:

  return v7;
}

- (BOOL)_shouldIncludeServiceNameForSpokenBrailleRotorAnnouncementOfTable:(id)table rotorItems:(id)items locale:(id)locale
{
  tableCopy = table;
  itemsCopy = items;
  localeCopy = locale;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = itemsCopy;
  v9 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v33;
LABEL_3:
    v12 = 0;
    v28 = v10;
    while (1)
    {
      if (*v33 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v32 + 1) + 8 * v12);
      v14 = [v13 objectForKeyedSubscript:{@"Default", v28}];
      bOOLValue = [v14 BOOLValue];

      if (bOOLValue)
      {
        serviceIdentifier = [v13 objectForKeyedSubscript:@"LanguageDefaults"];
        localeIdentifier = [localeCopy localeIdentifier];
        v18 = [serviceIdentifier objectForKeyedSubscript:localeIdentifier];

        if (!v18)
        {
          v19 = 0;
          goto LABEL_15;
        }

        v19 = [[BRLTTable alloc] initWithIdentifier:v18];
      }

      else
      {
        v20 = [BRLTTable alloc];
        serviceIdentifier = [v13 objectForKeyedSubscript:@"RotorItem"];
        v19 = [v20 initWithIdentifier:serviceIdentifier];
      }

      serviceIdentifier = [v19 serviceIdentifier];
      serviceIdentifier2 = [tableCopy serviceIdentifier];
      if (![serviceIdentifier isEqualToString:serviceIdentifier2])
      {
        v22 = v19;
        localizedName = [v19 localizedName];
        v24 = tableCopy;
        localizedName2 = [tableCopy localizedName];
        v31 = [localizedName isEqualToString:localizedName2];

        if (v31)
        {

          v26 = 1;
          tableCopy = v24;
          goto LABEL_20;
        }

        tableCopy = v24;
        v10 = v28;
        v19 = v22;
        goto LABEL_16;
      }

LABEL_15:
LABEL_16:

      if (v10 == ++v12)
      {
        v10 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v26 = 0;
LABEL_20:

  return v26;
}

- (id)nameForSpokenAnnouncementOfBrailleTable:(id)table
{
  tableCopy = table;
  brailleLanguageRotorItems = [VOTSharedWorkspace brailleLanguageRotorItems];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = [brailleLanguageRotorItems countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v23 = 0;
    v7 = 0;
    v8 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(brailleLanguageRotorItems);
        }

        v10 = VOSBrailleTableForRotorItem();
        identifier = [tableCopy identifier];
        identifier2 = [v10 identifier];
        v13 = [identifier isEqualToString:identifier2];

        if ((v13 & 1) == 0)
        {
          localizedLanguage = [v10 localizedLanguage];
          localizedLanguage2 = [tableCopy localizedLanguage];
          v16 = [localizedLanguage isEqualToString:localizedLanguage2];

          if (v16)
          {
            localizedName = [v10 localizedName];
            localizedName2 = [tableCopy localizedName];
            v19 = [localizedName isEqualToString:localizedName2];

            v7 |= v19;
            LOBYTE(v23) = 1;
          }

          else
          {
            BYTE4(v23) = 1;
          }
        }
      }

      v6 = [brailleLanguageRotorItems countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
    if (v7)
    {
      localizedNameWithService = [tableCopy localizedNameWithService];
      goto LABEL_19;
    }

    if ((v23 & 0x100000000) != 0)
    {
      if (v23)
      {
        [tableCopy localizedName];
      }

      else
      {
        [tableCopy localizedLanguage];
      }
      localizedNameWithService = ;
      goto LABEL_19;
    }
  }

  localizedNameWithService = [tableCopy localizedVariant];
LABEL_19:
  v21 = localizedNameWithService;

  return v21;
}

- (int64_t)_adjustedRotorIndex:(int64_t)index inDirection:(int64_t)direction rotorItems:(id)items
{
  if (direction == 2)
  {
    v5 = index - 1;
  }

  else
  {
    v5 = index + 1;
  }

  v6 = [items count];
  if (v5 >= v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  if (v5 >= 0)
  {
    return v7;
  }

  else
  {
    return v6 - 1;
  }
}

- (void)updateBrailleLanguage
{
  if (([VOTSharedWorkspace inUnitTestMode] & 1) == 0)
  {
    VOSCrystalMigrateBrailleTableReplacements();
    v3 = +[AXSettings sharedInstance];
    voiceOverTouchBrailleDisplayOutputTableIdentifier = [v3 voiceOverTouchBrailleDisplayOutputTableIdentifier];

    if (voiceOverTouchBrailleDisplayOutputTableIdentifier)
    {
      v5 = [[BRLTTable alloc] initWithIdentifier:voiceOverTouchBrailleDisplayOutputTableIdentifier];
      [VOTSharedWorkspace setSelectedBrailleTable:v5];
    }

    v6 = +[AXSettings sharedInstance];
    voiceOverTouchBrailleDisplayInputTableIdentifier = [v6 voiceOverTouchBrailleDisplayInputTableIdentifier];

    if (voiceOverTouchBrailleDisplayInputTableIdentifier)
    {
      v8 = [[BRLTTable alloc] initWithIdentifier:voiceOverTouchBrailleDisplayInputTableIdentifier];
      [VOTSharedWorkspace setSelectedBrailleInputTable:v8];
    }
  }

  systemSpokenLanguage = [VOTSharedWorkspace systemSpokenLanguage];
  v10 = +[VOTBrailleManager manager];
  brailleTableFromSettings = [v10 brailleTableFromSettings];

  v12 = +[VOTBrailleManager manager];
  brailleInputTableFromSettings = [v12 brailleInputTableFromSettings];

  v14 = BRLLogTranslation();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v19 = 138412290;
    v20 = brailleTableFromSettings;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Current table updated: %@", &v19, 0xCu);
  }

  threadKey = self->_threadKey;
  [(VOTBrailleManager *)self threadWaitTime];
  [(VOTBrailleManager *)self performSelector:"_setCurrentDefaultTable:" withThreadKey:threadKey waitTime:0 cancelMask:1 count:brailleTableFromSettings objects:?];
  v16 = self->_threadKey;
  [(VOTBrailleManager *)self threadWaitTime];
  [(VOTBrailleManager *)self performSelector:"_setBrailleTable:" withThreadKey:v16 waitTime:0 cancelMask:1 count:brailleTableFromSettings objects:?];
  v17 = self->_threadKey;
  [(VOTBrailleManager *)self threadWaitTime];
  [(VOTBrailleManager *)self performSelector:"_setBrailleInputTable:" withThreadKey:v17 waitTime:0 cancelMask:1 count:brailleInputTableFromSettings objects:?];
  v18 = self->_threadKey;
  [(VOTBrailleManager *)self threadWaitTime];
  [(VOTBrailleManager *)self performSelector:"_setBrailleSubstitutionLanguage:" withThreadKey:v18 waitTime:0 cancelMask:1 count:systemSpokenLanguage objects:?];
}

- (void)_setBrailleTable:(id)table
{
  tableCopy = table;
  if (tableCopy)
  {
    v6 = BRLLogTranslation();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = tableCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Setting braille table %@", &v11, 0xCu);
    }

    objc_storeStrong(&self->_currentSetTable, table);
    brailleClient = self->_brailleClient;
    identifier = [tableCopy identifier];
    [(SCROBrailleClient *)brailleClient setTableIdentifier:identifier];

    tableSetCallback = [(VOTBrailleManager *)self tableSetCallback];

    if (tableSetCallback)
    {
      tableSetCallback2 = [(VOTBrailleManager *)self tableSetCallback];
      (tableSetCallback2)[2](tableSetCallback2, tableCopy);
    }
  }
}

- (void)_setBrailleInputTable:(id)table
{
  tableCopy = table;
  if (tableCopy)
  {
    v6 = BRLLogTranslation();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = tableCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Setting braille input table %@", &v9, 0xCu);
    }

    objc_storeStrong(&self->_currentSetInputTable, table);
    brailleClient = self->_brailleClient;
    identifier = [tableCopy identifier];
    [(SCROBrailleClient *)brailleClient setInputTableIdentifier:identifier];
  }
}

- (void)updateUsesNemethForMath
{
  brailleClient = self->_brailleClient;
  v3 = +[AXSettings sharedInstance];
  -[SCROBrailleClient setAlwaysUsesNemethCodeForTechnicalText:](brailleClient, "setAlwaysUsesNemethCodeForTechnicalText:", [v3 voiceOverAlwaysUseNemethCodeForMathEnabled]);
}

- (BOOL)_languageIsCJK
{
  language = [(BRLTTable *)self->_currentSetTable language];
  if ([language hasPrefix:@"yue"])
  {
    v4 = 1;
  }

  else
  {
    language2 = [(BRLTTable *)self->_currentSetTable language];
    if ([language2 hasPrefix:@"cmn"])
    {
      v4 = 1;
    }

    else
    {
      language3 = [(BRLTTable *)self->_currentSetTable language];
      if ([language3 hasPrefix:@"kor"])
      {
        v4 = 1;
      }

      else
      {
        language4 = [(BRLTTable *)self->_currentSetTable language];
        v4 = [language4 hasPrefix:@"jpn"];
      }
    }
  }

  return v4;
}

- (BOOL)_languageIsNBSC
{
  identifier = [(BRLTTable *)self->_currentSetTable identifier];
  v3 = [identifier hasPrefix:@"com.apple.scrod.braille.table.nbsc"];

  return v3;
}

- (void)handleSettingsChange:(id)change
{
  if ([change isEqualToString:kAXSVoiceOverTouchBrailleMasterStatusCellIndexChangedNotification])
  {

    [(VOTBrailleManager *)self updateStatusCellPrefs];
  }
}

- (void)updateStatusCellPrefs
{
  threadKey = self->_threadKey;
  [(VOTBrailleManager *)self threadWaitTime];

  [(VOTBrailleManager *)self performSelector:"_updateStatusCellPrefs" withThreadKey:threadKey waitTime:0 cancelMask:0 count:0 objects:?];
}

- (void)updatePrefersNonBlinkingCursorIndicatorPrefs
{
  threadKey = self->_threadKey;
  [(VOTBrailleManager *)self threadWaitTime];

  [(VOTBrailleManager *)self performSelector:"_updatePrefersNonBlinkingCursorIndicatorPrefs" withThreadKey:threadKey waitTime:0 cancelMask:0 count:0 objects:?];
}

- (void)_updatePrefersNonBlinkingCursorIndicatorPrefs
{
  v3 = _AXSPrefersNonBlinkingCursorIndicator() == 0;
  brailleClient = self->_brailleClient;

  [(SCROBrailleClient *)brailleClient setBlinkEnabled:v3];
}

- (void)handleEvent:(id)event
{
  threadKey = self->_threadKey;
  eventCopy = event;
  [(VOTBrailleManager *)self threadWaitTime];
  [(VOTBrailleManager *)self performSelector:"_handleEvent:" withThreadKey:threadKey waitTime:0 cancelMask:1 count:eventCopy objects:?];
}

- (void)_handleEvent:(id)event
{
  eventCopy = event;
  v5 = +[VOTUserEventManager sharedInstance];
  [v5 userEventOccurred];

  commands = self->_commands;
  command = [eventCopy command];
  v9 = -[AXIndexMap objectForIndex:](commands, "objectForIndex:", [command hash]);

  target = [v9 target];
  [target performSelector:objc_msgSend(v9 withObject:{"selector"), eventCopy}];
}

- (void)_initializeCommands
{
  commands = self->_commands;
  v4 = [SCRCTargetSelector targetSelectorWithTarget:self selector:"_handleBraillePanLeft:"];
  -[AXIndexMap setObject:forIndex:](commands, "setObject:forIndex:", v4, [kVOTEventCommandBraillePanLeft hash]);

  v5 = self->_commands;
  v6 = [SCRCTargetSelector targetSelectorWithTarget:self selector:"_handleBraillePanRight:"];
  -[AXIndexMap setObject:forIndex:](v5, "setObject:forIndex:", v6, [kVOTEventCommandBraillePanRight hash]);

  v7 = self->_commands;
  v8 = [SCRCTargetSelector targetSelectorWithTarget:self selector:"_handleBraillePanBeginning:"];
  -[AXIndexMap setObject:forIndex:](v7, "setObject:forIndex:", v8, [kVOTEventCommandBraillePanBeginning hash]);

  v9 = self->_commands;
  v10 = [SCRCTargetSelector targetSelectorWithTarget:self selector:"_handleBraillePanEnd:"];
  -[AXIndexMap setObject:forIndex:](v9, "setObject:forIndex:", v10, [kVOTEventCommandBraillePanEnd hash]);

  v11 = self->_commands;
  v12 = [SCRCTargetSelector targetSelectorWithTarget:self selector:"_handleBrailleNextInputTable:"];
  -[AXIndexMap setObject:forIndex:](v11, "setObject:forIndex:", v12, [kVOTEventCommandBrailleNextInputTable hash]);

  v13 = self->_commands;
  v14 = [SCRCTargetSelector targetSelectorWithTarget:self selector:"_handleBrailleNextOutputTable:"];
  -[AXIndexMap setObject:forIndex:](v13, "setObject:forIndex:", v14, [kVOTEventCommandBrailleNextOutputTable hash]);

  v15 = self->_commands;
  v16 = [SCRCTargetSelector targetSelectorWithTarget:self selector:"_handleBrailleAnnouncementModeOn:"];
  -[AXIndexMap setObject:forIndex:](v15, "setObject:forIndex:", v16, [kVOTEventCommandBrailleAnnouncementModeOn hash]);

  v17 = self->_commands;
  v18 = [SCRCTargetSelector targetSelectorWithTarget:self selector:"_handleBrailleRouter:"];
  -[AXIndexMap setObject:forIndex:](v17, "setObject:forIndex:", v18, [kVOTEventCommandBrailleRouter hash]);

  v19 = self->_commands;
  v20 = [SCRCTargetSelector targetSelectorWithTarget:self selector:"_handleBrailleStatusRouter:"];
  -[AXIndexMap setObject:forIndex:](v19, "setObject:forIndex:", v20, [kVOTEventCommandBrailleStatusRouter hash]);

  v21 = self->_commands;
  v22 = [SCRCTargetSelector targetSelectorWithTarget:self selector:"_handleBrailleTranslate:"];
  -[AXIndexMap setObject:forIndex:](v21, "setObject:forIndex:", v22, [kVOTEventCommandBrailleTranslate hash]);
}

- (void)_handleBraillePanLeft:(id)left
{
  leftCopy = left;
  Current = CFAbsoluteTimeGetCurrent();
  if (Current - self->_lastPanTime > 2.0)
  {
    [(VOTBrailleManager *)self setPanEnabled:1];
  }

  if ([(VOTBrailleManager *)self panEnabled])
  {
    self->_lastPanTime = Current;
    v5 = [leftCopy objectForIndex:104];
    if (!v5)
    {
      v5 = objc_alloc_init(SCROBrailleKey);
      [v5 setDisplayToken:self->_primaryDisplayToken];
    }

    -[SCROBrailleClient panDisplayLeft:](self->_brailleClient, "panDisplayLeft:", [v5 displayToken]);
  }

  else
  {
    v5 = +[VOTOutputManager outputManager];
    v6 = +[VOSOutputEvent UnknownCommand];
    [v5 sendEvent:v6];
  }
}

- (void)_handleBraillePanBeginning:(id)beginning
{
  beginningCopy = beginning;
  Current = CFAbsoluteTimeGetCurrent();
  if (Current - self->_lastPanTime > 2.0)
  {
    [(VOTBrailleManager *)self setPanEnabled:1];
  }

  if ([(VOTBrailleManager *)self panEnabled])
  {
    self->_lastPanTime = Current;
    v5 = [beginningCopy objectForIndex:104];
    v6 = v5;
    if (v5)
    {
      -[SCROBrailleClient panDisplayBeginning:](self->_brailleClient, "panDisplayBeginning:", [v5 displayToken]);
    }
  }

  else
  {
    v6 = +[VOTOutputManager outputManager];
    v7 = +[VOSOutputEvent UnknownCommand];
    [v6 sendEvent:v7];
  }
}

- (void)_handleBraillePanEnd:(id)end
{
  endCopy = end;
  Current = CFAbsoluteTimeGetCurrent();
  if (Current - self->_lastPanTime > 2.0)
  {
    [(VOTBrailleManager *)self setPanEnabled:1];
  }

  if ([(VOTBrailleManager *)self panEnabled])
  {
    self->_lastPanTime = Current;
    v5 = [endCopy objectForIndex:104];
    v6 = v5;
    if (v5)
    {
      -[SCROBrailleClient panDisplayEnd:](self->_brailleClient, "panDisplayEnd:", [v5 displayToken]);
    }
  }

  else
  {
    v6 = +[VOTOutputManager outputManager];
    v7 = +[VOSOutputEvent UnknownCommand];
    [v6 sendEvent:v7];
  }
}

- (void)_handleBraillePanRight:(id)right
{
  rightCopy = right;
  Current = CFAbsoluteTimeGetCurrent();
  if (Current - self->_lastPanTime > 2.0)
  {
    [(VOTBrailleManager *)self setPanEnabled:1];
  }

  if ([(VOTBrailleManager *)self panEnabled])
  {
    self->_lastPanTime = Current;
    v5 = [rightCopy objectForIndex:104];
    if (!v5)
    {
      v5 = objc_alloc_init(SCROBrailleKey);
      [v5 setDisplayToken:self->_primaryDisplayToken];
    }

    -[SCROBrailleClient panDisplayRight:](self->_brailleClient, "panDisplayRight:", [v5 displayToken]);
  }

  else
  {
    v5 = +[VOTOutputManager outputManager];
    v6 = +[VOSOutputEvent UnknownCommand];
    [v5 sendEvent:v6];
  }
}

- (BOOL)_supportsMode:(int64_t)mode
{
  v4 = _AXSVoiceOverTouchCopyBrailleTableIdentifier();
  v5 = [[BRLTTable alloc] initWithIdentifier:v4];
  v6 = v5;
  if (mode == 2)
  {
    if (v4)
    {
      supportsTranslationMode8Dot = [v5 supportsTranslationMode8Dot];
      goto LABEL_7;
    }

LABEL_8:
    v8 = 1;
    goto LABEL_9;
  }

  if (mode != 3 || !v4)
  {
    goto LABEL_8;
  }

  supportsTranslationMode8Dot = [v5 supportsTranslationModeContracted];
LABEL_7:
  v8 = supportsTranslationMode8Dot;
LABEL_9:

  return v8;
}

- (int64_t)outputContractionMode
{
  contractionMode = [(SCROBrailleClient *)self->_brailleClient contractionMode];
  showEightDotBraille = [(SCROBrailleClient *)self->_brailleClient showEightDotBraille];
  v5 = 3;
  if (contractionMode)
  {
    v5 = 1;
  }

  if (contractionMode == 1 && showEightDotBraille == 1)
  {
    v7 = 2;
  }

  else
  {
    v7 = v5;
  }

  if (contractionMode == 1 && showEightDotBraille == 0)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

- (int64_t)inputContractionMode
{
  inputContractionMode = [(SCROBrailleClient *)self->_brailleClient inputContractionMode];
  inputEightDotBraille = [(SCROBrailleClient *)self->_brailleClient inputEightDotBraille];
  v5 = 3;
  if (inputContractionMode)
  {
    v5 = 1;
  }

  if (inputContractionMode == 1 && inputEightDotBraille == 1)
  {
    v7 = 2;
  }

  else
  {
    v7 = v5;
  }

  if (inputContractionMode == 1 && inputEightDotBraille == 0)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

- (void)_handleBrailleTable:(id)table input:(BOOL)input
{
  inputCopy = input;
  brailleLanguageRotorItems = [VOTSharedWorkspace brailleLanguageRotorItems];
  v28 = [brailleLanguageRotorItems ax_filteredArrayUsingBlock:&stru_1001CAB58];

  if (inputCopy)
  {
    [VOTSharedWorkspace selectedBrailleInputTable];
  }

  else
  {
    [VOTSharedWorkspace selectedBrailleTable];
  }
  v7 = ;
  identifier = [v7 identifier];

  if ([v28 count])
  {
    v9 = 1;
    while (1)
    {
      v10 = [v28 objectAtIndexedSubscript:v9 - 1];
      v11 = VOSBrailleTableForRotorItem();
      identifier2 = [v11 identifier];

      if ([identifier isEqual:identifier2])
      {
        break;
      }

      if (v9++ >= [v28 count])
      {
        goto LABEL_9;
      }
    }

    if ([v28 count] == v9)
    {
      v14 = 0;
    }

    else
    {
      v14 = v9;
    }
  }

  else
  {
LABEL_9:
    v14 = 0;
  }

  v15 = [v28 objectAtIndex:v14];
  v16 = VOSBrailleTableForRotorItem();
  if (inputCopy)
  {
    [VOTSharedWorkspace setSelectedBrailleInputTable:v16];
    v17 = +[AXSettings sharedInstance];
    voiceOverTouchBrailleDisplaySyncInputOutputTables = [v17 voiceOverTouchBrailleDisplaySyncInputOutputTables];

    v19 = off_1001FDDD0;
    if (!voiceOverTouchBrailleDisplaySyncInputOutputTables)
    {
      v20 = @"braille.input.format.change";
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  [VOTSharedWorkspace setSelectedBrailleTable:v16];
  v21 = +[AXSettings sharedInstance];
  voiceOverTouchBrailleDisplaySyncInputOutputTables2 = [v21 voiceOverTouchBrailleDisplaySyncInputOutputTables];

  v19 = off_1001FDDD0;
  if (voiceOverTouchBrailleDisplaySyncInputOutputTables2)
  {
LABEL_18:
    v20 = @"braille.table.format.change";
    goto LABEL_20;
  }

  v20 = @"braille.output.format.change";
LABEL_20:
  v23 = sub_1000511CC(v19, v20, 0);
  v24 = [(VOTBrailleManager *)self nameForSpokenAnnouncementOfBrailleTable:v16];
  v25 = AXCFormattedString();
  v26 = +[VOTOutputRequest createRequest];
  v27 = [v26 addString:v25];
  [v26 setGeneratesBraille:1];
  [v26 setBrailleType:2];
  [v26 send];
  [(VOTBrailleManager *)self updateBrailleLanguage];
}

- (void)testingExitDisplayMode
{
  threadKey = self->_threadKey;
  [(VOTBrailleManager *)self threadWaitTime];

  [(VOTBrailleManager *)self performSelector:"_exitDisplayMode" withThreadKey:threadKey waitTime:0 cancelMask:0 count:0 objects:?];
}

- (void)_handleBrailleAnnouncementModeOn:(id)on
{
  displayMode = [(SCROBrailleClient *)self->_brailleClient displayMode];
  brailleClient = self->_brailleClient;
  if (displayMode == 2)
  {

    [(SCROBrailleClient *)brailleClient exitCurrentDisplayMode];
  }

  else
  {

    [(SCROBrailleClient *)brailleClient setAnnouncementsDisplayMode];
  }
}

- (void)_handleBrailleRouter:(id)router
{
  self->_lastBraillePanDirection = -1;
  v4 = [router objectForIndex:104];
  v5 = v4;
  if (v4 && self->_brailleElement)
  {
    v37 = 0;
    v38 = 0;
    v36 = 0;
    if ([v4 getRouterIndex:&v38 token:&v37 location:&v36 appToken:0] && v37 == self->_brailleElementIndex)
    {
      brailleTextEntrySupported = [(VOTElement *)self->_brailleElement brailleTextEntrySupported];
      brailleElement = self->_brailleElement;
      if (brailleTextEntrySupported)
      {
        textInputElement = [(VOTElement *)brailleElement textInputElement];
        if (!textInputElement)
        {
          textInputElement = self->_brailleElement;
        }

        if (self->_brailleLineRange.location == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_22;
        }

        value = [(VOTElement *)textInputElement value];
        v10 = [value substringWithRange:{self->_brailleLineRange.location, self->_brailleLineRange.length}];

        v35 = 0;
        v11 = sub_1000539B8(v10, &v35);
        v12 = v35;
        v13 = sub_100053E44(v36, v12);
        length = self->_brailleLineRange.length;

        if (v13 > length)
        {
          goto LABEL_22;
        }

        if ([v5 isSecondaryRouter])
        {
          selectedTextRange = [(VOTElement *)textInputElement selectedTextRange];
          v16 = &v13[self->_brailleLineRange.location];
          if (v16 >= selectedTextRange)
          {
            v17 = selectedTextRange;
          }

          else
          {
            v17 = &v13[self->_brailleLineRange.location];
          }

          if (v16 <= selectedTextRange)
          {
            v16 = selectedTextRange;
          }

          v18 = v16 - v17;
        }

        else
        {
          if (([(SCROBrailleClient *)self->_brailleClient inputEightDotBraille]& 1) == 0 && ![(VOTBrailleManager *)self _languageIsCJK])
          {
            suppressSelectionChangeNotificationCount = [VOTSharedWorkspace suppressSelectionChangeNotificationCount];
            [VOTSharedWorkspace setSuppressSelectionChangeNotificationCount:suppressSelectionChangeNotificationCount + 1];
          }

          v18 = 0;
          v17 = &v13[self->_brailleLineRange.location];
        }

        [(VOTElement *)textInputElement setSelectedTextRange:v17 refreshBraille:v18, 0];
        [(VOTBrailleManager *)self _refreshBrailleLinePreferringPositionOverRotorSelection:1 knownLineRange:0 updatedPosition:0];
        v28 = +[VOTOutputManager outputManager];
        v29 = +[VOSOutputEvent InsertionPointDidMove];
        [v28 sendEvent:v29];
        goto LABEL_41;
      }

      if ([(VOTElement *)brailleElement isReadingContent])
      {
        if (self->_brailleLineRange.location != 0x7FFFFFFFFFFFFFFFLL && v36 <= self->_brailleLineRange.length)
        {
          textInputElement = [(VOTElement *)self->_brailleElement pageContent];
          v25 = [(VOTElement *)textInputElement ax_wordFromPosition:v36 + self->_brailleLineRange.location inDirection:0];
          v27 = v26;
          if (&v25[v26] <= [(VOTElement *)textInputElement length])
          {
            v28 = [(VOTElement *)textInputElement substringWithRange:v25, v27];
            if (![v28 length])
            {
LABEL_42:

              goto LABEL_22;
            }

            v29 = +[VOTOutputRequest createRequest];
            [v29 setGeneratesBraille:0];
            v30 = [v29 addString:v28];
            [v29 send];
LABEL_41:

            goto LABEL_42;
          }

LABEL_22:
        }
      }

      else
      {
        if (![(VOTElement *)self->_brailleElement doesHaveTraits:kAXMathEquationTrait])
        {
          textInputElement = [VOTEvent brailleEventWithCommand:kVOTEventCommandSimpleTap info:0];
          [VOTSharedWorkspace dispatchCommand:textInputElement];
          goto LABEL_22;
        }

        if (self->_brailleLineRange.location != 0x7FFFFFFFFFFFFFFFLL && v36 <= self->_brailleLineRange.length)
        {
          textInputElement = [(VOTElement *)self->_brailleElement mathBrailleDescription];
          v31 = [(VOTElement *)textInputElement attributesAtIndex:v36 + self->_brailleLineRange.location effectiveRange:0];
          v32 = [v31 objectForKey:UIAccessibilityTokenMathTreePosition];
          if (v32)
          {
            v33 = [VOTEvent brailleEventWithCommand:kVOTEventCommandSearchRotorSetMathPosition info:0];
            [v33 setObject:v32 forIndex:109];
            [VOTSharedWorkspace dispatchCommand:v33];
          }

          else
          {
            v33 = NSStringFromRange(self->_brailleLineRange);
            _AXLogWithFacility();
          }

          goto LABEL_22;
        }
      }
    }

    else
    {
      v19 = +[AXSubsystemVoiceOver sharedInstance];
      ignoreLogging = [v19 ignoreLogging];

      if ((ignoreLogging & 1) == 0)
      {
        v21 = +[AXSubsystemVoiceOver identifier];
        textInputElement = AXLoggerForFacility();

        v22 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(&textInputElement->super, v22))
        {
          v23 = AXColorizeFormatLog();
          v24 = _AXStringForArgs();
          if (os_log_type_enabled(&textInputElement->super, v22))
          {
            *buf = 138543362;
            v40 = v24;
            _os_log_impl(&_mh_execute_header, &textInputElement->super, v22, "%{public}@", buf, 0xCu);
          }
        }

        goto LABEL_22;
      }
    }
  }
}

- (void)_handleBrailleStatusRouter:(id)router
{
  v4 = [router objectForIndex:104];
  v5 = v4;
  if (v4)
  {
    v7 = 0;
    v8 = 0;
    v6 = 0;
    if ([v4 getRouterIndex:&v8 token:&v7 location:&v6 appToken:0])
    {
      [(VOTBrailleManager *)self _handleStatusRouterForIndex:v8];
    }
  }
}

- (void)_initializeExpandedStatusCellDictionaries
{
  generalDict = [(_VOTBrailleManagerStatus *)self->_status generalDict];

  if (!generalDict)
  {
    v36 = +[SCROBrailleClient statusAttributeDotText];
    v34 = objc_allocWithZone(NSMutableDictionary);
    v32 = sub_1000511CC(off_1001FDDD0, @"braille.status.general.title", 0);
    v4 = kSCROStatusAttributeCellTitle;
    v5 = sub_1000511CC(off_1001FDDD0, @"braille.status.general.dot.3", 0);
    v6 = [v36 objectAtIndexedSubscript:2];
    v7 = sub_1000511CC(off_1001FDDD0, @"braille.status.general.dot.4", 0);
    v8 = [v36 objectAtIndexedSubscript:3];
    v9 = sub_1000511CC(off_1001FDDD0, @"braille.status.general.dot.5", 0);
    v10 = [v36 objectAtIndexedSubscript:4];
    v11 = sub_1000511CC(off_1001FDDD0, @"braille.status.general.dot.6", 0);
    v12 = [v36 objectAtIndexedSubscript:5];
    v13 = [v34 initWithObjectsAndKeys:{v32, v4, v5, v6, v7, v8, v9, v10, v11, v12, 0}];
    [(_VOTBrailleManagerStatus *)self->_status setGeneralDict:v13];

    v29 = objc_allocWithZone(NSMutableDictionary);
    v28 = sub_1000511CC(off_1001FDDD0, @"braille.status.text.title", 0);
    v27 = kSCROStatusAttributeCellTitle;
    v26 = sub_1000511CC(off_1001FDDD0, @"braille.status.text.dot.1", 0);
    v35 = [v36 objectAtIndexedSubscript:0];
    v33 = sub_1000511CC(off_1001FDDD0, @"braille.status.text.dot.2", 0);
    v25 = [v36 objectAtIndexedSubscript:1];
    v31 = sub_1000511CC(off_1001FDDD0, @"braille.status.text.dot.3", 0);
    v24 = [v36 objectAtIndexedSubscript:2];
    v30 = sub_1000511CC(off_1001FDDD0, @"braille.status.text.dot.4", 0);
    v23 = [v36 objectAtIndexedSubscript:3];
    v22 = sub_1000511CC(off_1001FDDD0, @"braille.status.text.dot.5", 0);
    v21 = [v36 objectAtIndexedSubscript:4];
    v14 = sub_1000511CC(off_1001FDDD0, @"braille.status.text.dot.6", 0);
    v20 = [v36 objectAtIndexedSubscript:5];
    v15 = sub_1000511CC(off_1001FDDD0, @"braille.status.text.dot.7", 0);
    v16 = [v36 objectAtIndexedSubscript:6];
    v17 = sub_1000511CC(off_1001FDDD0, @"braille.status.text.dot.8", 0);
    v18 = [v36 objectAtIndexedSubscript:7];
    v19 = [v29 initWithObjectsAndKeys:{v28, v27, v26, v35, v33, v25, v31, v24, v30, v23, v22, v21, v14, v20, v15, v16, v17, v18, 0}];
    [(_VOTBrailleManagerStatus *)self->_status setTextDict:v19];
  }
}

- (void)_updateWordWrapPrefs
{
  v3 = +[AXSettings sharedInstance];
  voiceOverBrailleWordWrapEnabled = [v3 voiceOverBrailleWordWrapEnabled];

  v5 = AXLogBrailleHW();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = voiceOverBrailleWordWrapEnabled;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Word wrap updated: %d", v6, 8u);
  }

  [(SCROBrailleClient *)self->_brailleClient setWordWrapEnabled:voiceOverBrailleWordWrapEnabled];
}

- (void)_updateBrailleKeyDebouncePrefs
{
  brailleClient = self->_brailleClient;
  v3 = +[AXSettings sharedInstance];
  [v3 voiceOverBrailleKeyDebounceTimeout];
  [(SCROBrailleClient *)brailleClient setBrailleChordDebounceTimeout:?];
}

- (void)updateBrailleAutoAdvancePrefs
{
  threadKey = self->_threadKey;
  [(VOTBrailleManager *)self threadWaitTime];

  [(VOTBrailleManager *)self performSelector:"_updateBrailleAutoAdvancePrefs" withThreadKey:threadKey waitTime:0 cancelMask:0 count:0 objects:?];
}

- (void)_updateBrailleAutoAdvancePrefs
{
  [(SCROBrailleClient *)self->_brailleClient setAutoAdvanceEnabled:self->_autoAdvanceEnabled];
  [VOTSharedWorkspace activeBrailleAutoAdvanceDuration];
  brailleClient = self->_brailleClient;

  [(SCROBrailleClient *)brailleClient setAutoAdvanceDuration:?];
}

- (void)_updateHelpEnabled
{
  brailleClient = self->_brailleClient;
  v4 = +[VOTCommandHelper commandHelper];
  -[SCROBrailleClient setSingleLetterInputIsOn:](brailleClient, "setSingleLetterInputIsOn:", [v4 helpEnabled]);

  v5 = +[VOTCommandHelper commandHelper];
  self->_testingKeyboardHelpOn = [v5 helpEnabled];
}

- (BOOL)bluetoothBrailleDisplayConnected
{
  if (self->_primaryDisplayIsBluetooth)
  {
    primaryDisplayToken = self->_primaryDisplayToken;
    if (primaryDisplayToken)
    {
      LOBYTE(primaryDisplayToken) = self->_hasActiveDisplay;
    }
  }

  else
  {
    LOBYTE(primaryDisplayToken) = 0;
  }

  return primaryDisplayToken & 1;
}

- (void)_updateStatusCellPrefs
{
  showGeneral = [(_VOTBrailleManagerStatus *)self->_status showGeneral];
  showText = [(_VOTBrailleManagerStatus *)self->_status showText];
  -[_VOTBrailleManagerStatus setShowGeneral:](self->_status, "setShowGeneral:", [VOTSharedWorkspace activeBrailleGeneralStatusCellPreference]);
  -[_VOTBrailleManagerStatus setShowText:](self->_status, "setShowText:", [VOTSharedWorkspace activeBrailleTextStatusCellPreference]);
  if ([(_VOTBrailleManagerStatus *)self->_status showGeneral]|| [(_VOTBrailleManagerStatus *)self->_status showText])
  {
    [(VOTBrailleManager *)self _initializeExpandedStatusCellDictionaries];
  }

  else
  {
    [(_VOTBrailleManagerStatus *)self->_status setGeneralDict:0];
    [(_VOTBrailleManagerStatus *)self->_status setTextDict:0];
  }

  if (showGeneral != [(_VOTBrailleManagerStatus *)self->_status showGeneral]|| showText != [(_VOTBrailleManagerStatus *)self->_status showText])
  {

    [(VOTBrailleManager *)self _updateStatusCells];
  }
}

- (void)_updateStatusCells
{
  v58 = 0;
  v57 = 0;
  if ([(_VOTBrailleManagerStatus *)self->_status showGeneral])
  {
    [(_VOTBrailleManagerStatus *)self->_status setGeneral:0];
    v3 = [(_VOTBrailleManagerStatus *)self->_status general]& 0xFFFFFFFB;
    if ([VOTSharedWorkspace speechMuted])
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    [(_VOTBrailleManagerStatus *)self->_status setGeneral:v4 | v3];
    v5 = [(_VOTBrailleManagerStatus *)self->_status general]& 0xFFFFFFF7;
    if ([VOTSharedWorkspace isSystemBatteryLow])
    {
      v6 = 8;
    }

    else
    {
      v6 = 0;
    }

    [(_VOTBrailleManagerStatus *)self->_status setGeneral:v6 | v5];
    -[_VOTBrailleManagerStatus setGeneral:](self->_status, "setGeneral:", -[_VOTBrailleManagerStatus general](self->_status, "general") & 0xFFFFFFEF | (16 * ([VOTSharedWorkspace deviceOrientation] - 3 < 2)));
    v7 = [(_VOTBrailleManagerStatus *)self->_status general]& 0xFFFFFFDF;
    if ([VOTSharedWorkspace screenCurtainEnabled])
    {
      v8 = 32;
    }

    else
    {
      v8 = 0;
    }

    [(_VOTBrailleManagerStatus *)self->_status setGeneral:v8 | v7];
    v9 = 0;
    LOBYTE(v57) = [(_VOTBrailleManagerStatus *)self->_status general];
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v9 = -1;
  }

  if ([(_VOTBrailleManagerStatus *)self->_status showText])
  {
    v11 = self->_brailleElement;
    if ([(VOTElement *)self->_brailleElement brailleTextEntrySupported])
    {
      textInputElement = [(VOTElement *)self->_brailleElement textInputElement];
      v13 = textInputElement;
      if (textInputElement)
      {
        v14 = textInputElement;

        v11 = v14;
      }
    }

    selectedTextRange = [(VOTElement *)v11 selectedTextRange];
    if (selectedTextRange != 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = selectedTextRange;
      v18 = v16;
      value = [(VOTElement *)v11 value];
      v20 = [value length];

      if (v17 >= v20)
      {
        v22 = 0;
      }

      else
      {
        if (v18 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v18;
        }

        v22 = [(VOTElement *)v11 attributedValueForRange:v17, v21];
        [VOTSharedWorkspace addMisspellingsForString:v22];
      }

      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_1000D7FE0;
      v55[3] = &unk_1001CABA8;
      v23 = v22;
      v56 = v23;
      v24 = objc_retainBlock(v55);
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_1000D8118;
      v53[3] = &unk_1001CABA8;
      v25 = v23;
      v54 = v25;
      v26 = objc_retainBlock(v53);
      v48 = _NSConcreteStackBlock;
      v49 = 3221225472;
      v50 = sub_1000D8228;
      v51 = &unk_1001CABA8;
      v52 = v25;
      v46 = v25;
      v27 = objc_retainBlock(&v48);
      [(_VOTBrailleManagerStatus *)self->_status setText:0];
      v28 = [(_VOTBrailleManagerStatus *)self->_status text]& 0xFE;
      if (BKSHIDServicesIsCapsLockLightOn())
      {
        v29 = v28 + 1;
      }

      else
      {
        v29 = v28;
      }

      [(_VOTBrailleManagerStatus *)self->_status setText:v29, v46, v48, v49, v50, v51];
      v30 = [(_VOTBrailleManagerStatus *)self->_status text]& 0xFFFFFFFD;
      v31 = (v24 + 16);
      if ((*(v24 + 2))(v24, UIAccessibilityTokenBold))
      {
        v32 = 2;
      }

      else
      {
        v32 = 0;
      }

      [(_VOTBrailleManagerStatus *)self->_status setText:v32 | v30];
      v33 = [(_VOTBrailleManagerStatus *)self->_status text]& 0xFFFFFFFB;
      if ((*v31)(v24, UIAccessibilityTokenItalic))
      {
        v34 = 4;
      }

      else
      {
        v34 = 0;
      }

      [(_VOTBrailleManagerStatus *)self->_status setText:v34 | v33];
      v35 = [(_VOTBrailleManagerStatus *)self->_status text]& 0xFFFFFFF7;
      if ((*v31)(v24, UIAccessibilityTokenMisspelled))
      {
        v36 = 8;
      }

      else
      {
        v36 = 0;
      }

      [(_VOTBrailleManagerStatus *)self->_status setText:v36 | v35];
      v37 = [(_VOTBrailleManagerStatus *)self->_status text]& 0xFFFFFFEF;
      if ((*v31)(v24, UIAccessibilityTokenUnderline))
      {
        v38 = 16;
      }

      else
      {
        v38 = 0;
      }

      [(_VOTBrailleManagerStatus *)self->_status setText:v38 | v37];
      v39 = [(_VOTBrailleManagerStatus *)self->_status text]& 0xFFFFFFDF;
      if ((v26[2])(v26, UIAccessibilityTokenForegroundColor))
      {
        v40 = 32;
      }

      else
      {
        v40 = 0;
      }

      [(_VOTBrailleManagerStatus *)self->_status setText:v40 | v39];
      v41 = [(_VOTBrailleManagerStatus *)self->_status text]& 0xFFFFFFBF;
      if ((v27[2])(v27, AXUIAccessibilityTextAttributeHeadingLevel))
      {
        v42 = 64;
      }

      else
      {
        v42 = 0;
      }

      [(_VOTBrailleManagerStatus *)self->_status setText:v42 | v41];
      text = [(_VOTBrailleManagerStatus *)self->_status text];
      if ((v27[2])(v27, UIAccessibilityTokenBlockquoteLevel))
      {
        v44 = 0x80;
      }

      else
      {
        v44 = 0;
      }

      [(_VOTBrailleManagerStatus *)self->_status setText:v44 & 0x80 | text & 0x7Fu];
    }

    *(&v57 | v10++) = [(_VOTBrailleManagerStatus *)self->_status text];
  }

  if ([(_VOTBrailleManagerStatus *)self->_status showRealtime])
  {
    *(&v57 + v10++) = [(_VOTBrailleManagerStatus *)self->_status realtime];
  }

  v45 = [objc_allocWithZone(NSMutableData) initWithBytes:&v57 length:v10];
  if ([VOTSharedWorkspace inUnitTestMode])
  {
    objc_storeStrong(&self->_testingAggregatedStatus, v45);
  }

  [(SCROBrailleClient *)self->_brailleClient setMasterStatusCellIndex:v9];
  [(SCROBrailleClient *)self->_brailleClient setAggregatedStatus:v45];
  [(SCROBrailleClient *)self->_brailleClient displayIfNeeded];
}

- (void)_handleStatusRouterForIndex:(int64_t)index
{
  if ([(_VOTBrailleManagerStatus *)self->_status showGeneral])
  {
    if (index)
    {
      generalDict = 0;
    }

    else
    {
      generalDict = [(_VOTBrailleManagerStatus *)self->_status generalDict];
      v6 = [NSNumber numberWithInteger:0];
      [generalDict setObject:v6 forKey:kSCROStatusAttributeCellIndex];
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
    generalDict = 0;
  }

  if ([(_VOTBrailleManagerStatus *)self->_status showText])
  {
    if (v5 == index)
    {
      textDict = [(_VOTBrailleManagerStatus *)self->_status textDict];

      v8 = [NSNumber numberWithInteger:index];
      [textDict setObject:v8 forKey:kSCROStatusAttributeCellIndex];

      generalDict = textDict;
    }

    ++v5;
  }

  if ([(_VOTBrailleManagerStatus *)self->_status showRealtime]&& v5 == index)
  {
    v9 = kVOTEventCommandNextRealtimeElement;
    v10 = [VOTEvent brailleEventWithCommand:v9 info:0];
    [VOTSharedWorkspace dispatchCommand:v10];
  }

  v11 = generalDict;
  if (generalDict)
  {
    [(SCROBrailleClient *)self->_brailleClient setExpandedStatusDisplayModeWithStatus:generalDict];
    [(SCROBrailleClient *)self->_brailleClient displayIfNeeded];
    v11 = generalDict;
  }
}

- (void)applyBrailleSubstitutions:(id)substitutions
{
  if (self->_usesBrailleSubstitutions)
  {
    substitutionsCopy = substitutions;
    v8 = +[SCROBrailleSubstitutionManager sharedInstance];
    brailleSubstitutionLanguage = [(VOTBrailleManager *)self brailleSubstitutionLanguage];
    v7 = [v8 stringWithBrailleSubstitutions:substitutionsCopy withLanguage:brailleSubstitutionLanguage];
    [substitutionsCopy setString:v7];
  }
}

- (void)_filterUnacceptableBrailleStrings:(id)strings
{
  stringsCopy = strings;
  v3 = +[NSMutableCharacterSet controlCharacterSet];
  [v3 removeCharactersInRange:{28, 1}];
  [v3 removeCharactersInRange:{31, 1}];
  if ([stringsCopy length])
  {
    do
    {
      string = [stringsCopy string];
      v5 = [string rangeOfCharacterFromSet:v3];

      if (v5 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      [stringsCopy replaceCharactersInRange:v5 withString:{1, &stru_1001CBF90}];
    }

    while (v5 + 1 < [stringsCopy length]);
  }
}

- (void)setBrailleString:(id)string type:(int)type timeout:(double)timeout langCode:(id)code brailleLineRange:(_NSRange)range isBrailleLineRangeKnown:(BOOL)known
{
  length = range.length;
  location = range.location;
  v13 = *&type;
  stringCopy = string;
  codeCopy = code;
  if (![stringCopy length])
  {
    v17 = VOTLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10012EA10(v17);
    }
  }

  if ([(VOTBrailleManager *)self brailleEnabled])
  {
    threadKey = self->_threadKey;
    [(VOTBrailleManager *)self threadWaitTime];
    v20 = v19;
    v21 = [NSNumber numberWithUnsignedInt:v13];
    v22 = [NSNumber numberWithDouble:timeout];
    v23 = v22;
    if (known)
    {
      v24 = [NSValue valueWithRange:location, length];
      [(VOTBrailleManager *)self performSelector:"_setBrailleString:type:timeout:priority:langCode:brailleLineRangeValue:" withThreadKey:threadKey waitTime:0 cancelMask:6 count:stringCopy objects:v20, v21, v23, &off_1001DA898, codeCopy, v24];
    }

    else
    {
      [(VOTBrailleManager *)self performSelector:"_setBrailleString:type:timeout:priority:langCode:brailleLineRangeValue:" withThreadKey:threadKey waitTime:0 cancelMask:6 count:stringCopy objects:v20, v21, v22, &off_1001DA898, codeCopy, 0];
    }
  }
}

- (void)_setBrailleString:(id)string type:(id)type timeout:(id)timeout priority:(id)priority langCode:(id)code brailleLineRangeValue:(id)value
{
  stringCopy = string;
  typeCopy = type;
  timeoutCopy = timeout;
  priorityCopy = priority;
  codeCopy = code;
  valueCopy = value;
  [(VOTBrailleManager *)self _filterUnacceptableBrailleStrings:stringCopy];
  currentSetTable = self->_currentSetTable;
  if (!currentSetTable)
  {
    objc_storeStrong(&self->_currentSetTable, self->_currentDefaultTable);
    currentSetTable = self->_currentSetTable;
  }

  v61 = [(BRLTTable *)currentSetTable copy];
  if (codeCopy && [stringCopy length])
  {
    v58 = timeoutCopy;
    [stringCopy addAttribute:kSCROLanguageAttribute value:codeCopy range:{0, objc_msgSend(stringCopy, "length")}];
    v19 = +[AXSettings sharedInstance];
    v20 = [v19 preferredBrailleTableIdentifierForKeyboardLanguage:codeCopy keyboardLayout:0];

    if (v20)
    {
      v21 = [[BRLTTable alloc] initWithIdentifier:v20];
      if (!v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v23 = [NSLocale localeWithLocaleIdentifier:codeCopy];
      v24 = [BRLTTableEnumerator defaultTableForLocale:v23];

      language = [(BRLTTable *)self->_currentDefaultTable language];
      language2 = [v24 language];
      v27 = [language isEqualToString:language2];

      currentDefaultTable = v24;
      if (v27)
      {
        currentDefaultTable = self->_currentDefaultTable;
      }

      v21 = currentDefaultTable;

      if (!v21)
      {
        goto LABEL_15;
      }
    }

    tableIdentifier = [(BRLTTable *)v21 tableIdentifier];
    tableIdentifier2 = [(BRLTTable *)self->_currentSetTable tableIdentifier];
    v31 = [tableIdentifier isEqualToString:tableIdentifier2];

    if ((v31 & 1) == 0)
    {
      [(VOTBrailleManager *)self _setBrailleTable:v21];
      v22 = 1;
      goto LABEL_17;
    }

LABEL_15:
    v22 = 0;
LABEL_17:

    timeoutCopy = v58;
    goto LABEL_18;
  }

  if (([(BRLTTable *)self->_currentDefaultTable isEqual:self->_currentSetTable]& 1) == 0)
  {
    [(VOTBrailleManager *)self _setBrailleTable:self->_currentDefaultTable];
  }

  v22 = 0;
LABEL_18:
  v32 = AXLogBrailleHW();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478083;
    v63 = stringCopy;
    v64 = 1024;
    intValue = [typeCopy intValue];
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "set braille string: %{private}@ type: %d", buf, 0x12u);
  }

  v33 = +[VOTPlanarBrailleManager manager];
  zoomOutActive = [v33 zoomOutActive];

  if ((zoomOutActive & 1) == 0)
  {
    intValue2 = [typeCopy intValue];
    v36 = 0;
    if (intValue2 > 2)
    {
      if (intValue2 == 3)
      {
        if ([stringCopy length])
        {
          brailleClient = self->_brailleClient;
          string = [stringCopy string];
          [(SCROBrailleClient *)brailleClient setAnnouncementString:string];
          goto LABEL_37;
        }

LABEL_41:
        v36 = 0;
        goto LABEL_42;
      }

      if (intValue2 == 4)
      {
        if (valueCopy)
        {
          self->_brailleLineRange.location = [valueCopy rangeValue];
          self->_brailleLineRange.length = v40;
          selfCopy2 = self;
          v42 = 1;
        }

        else
        {
          selfCopy2 = self;
          v42 = 0;
        }

        [(VOTBrailleManager *)selfCopy2 _refreshBrailleLinePreferringPositionOverRotorSelection:0 knownLineRange:v42 updatedPosition:0];
        goto LABEL_41;
      }
    }

    else
    {
      if (intValue2 == 1)
      {
        if ([stringCopy length])
        {
          v43 = [stringCopy attributesAtIndex:0 effectiveRange:0];
          allKeys = [v43 allKeys];
          v45 = [allKeys containsObject:kSCROTokenAttribute];

          if ((v45 & 1) == 0)
          {
            v46 = kSCROTokenAttribute;
            v47 = [NSNumber numberWithUnsignedInteger:self->_brailleElementIndex];
            [stringCopy addAttribute:v46 value:v47 range:{0, objc_msgSend(stringCopy, "length")}];
          }
        }

        [(SCROBrailleClient *)self->_brailleClient setMainAttributedString:stringCopy];
        goto LABEL_38;
      }

      if (intValue2 == 2)
      {
        if ([VOTSharedWorkspace brailleAlertsEnabled] && objc_msgSend(stringCopy, "length"))
        {
          v37 = self->_brailleClient;
          string = [stringCopy string];
          [timeoutCopy doubleValue];
          -[SCROBrailleClient setAlertString:timeout:priority:](v37, "setAlertString:timeout:priority:", string, [priorityCopy intValue], v39);
LABEL_37:

LABEL_38:
          v36 = 1;
          goto LABEL_42;
        }

        goto LABEL_41;
      }
    }

LABEL_42:
    [(VOTBrailleManager *)self _updateStatusCells];
    [(SCROBrailleClient *)self->_brailleClient displayIfNeeded];
    brailleStringSetCallback = [(VOTBrailleManager *)self brailleStringSetCallback];

    if (brailleStringSetCallback)
    {
      brailleStringSetCallback2 = [(VOTBrailleManager *)self brailleStringSetCallback];
      (brailleStringSetCallback2)[2](brailleStringSetCallback2, stringCopy, [typeCopy intValue], v36);
    }

    if (v22)
    {
      [(VOTBrailleManager *)self _setBrailleTable:v61];
    }

    v51 = +[AXSubsystemVoiceOver sharedInstance];
    ignoreLogging = [v51 ignoreLogging];

    if ((ignoreLogging & 1) == 0)
    {
      v53 = +[AXSubsystemVoiceOver identifier];
      v54 = AXLoggerForFacility();

      v55 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = AXColorizeFormatLog();
        v57 = _AXStringForArgs();
        if (os_log_type_enabled(v54, v55))
        {
          *buf = 138543362;
          v63 = v57;
          _os_log_impl(&_mh_execute_header, v54, v55, "%{public}@", buf, 0xCu);
        }
      }
    }
  }
}

- (void)setBrailleElement:(id)element resetBrailleCursor:(BOOL)cursor rotorSelection:(id)selection
{
  cursorCopy = cursor;
  elementCopy = element;
  selectionCopy = selection;
  if ([(VOTBrailleManager *)self brailleEnabled])
  {
    threadKey = self->_threadKey;
    [(VOTBrailleManager *)self threadWaitTime];
    v11 = v10;
    copyWithCache = [elementCopy copyWithCache];
    v13 = [NSNumber numberWithBool:cursorCopy];
    [(VOTBrailleManager *)self performSelector:"_setBrailleElement:resetBrailleCursor:rotorSelection:" withThreadKey:threadKey waitTime:0 cancelMask:3 count:copyWithCache objects:v11, v13, selectionCopy];
  }
}

- (void)_setBrailleElement:(id)element resetBrailleCursor:(id)cursor rotorSelection:(id)selection
{
  elementCopy = element;
  cursorCopy = cursor;
  selectionCopy = selection;
  if ([(VOTBrailleManager *)self testingBrailleElementLocked])
  {
    goto LABEL_36;
  }

  p_brailleElement = &self->_brailleElement;
  v12 = [elementCopy isEqual:self->_brailleElement];
  objc_storeStrong(&self->_brailleElement, element);
  if (self->_rotorSelection != selectionCopy)
  {
    objc_storeStrong(&self->_rotorSelection, selection);
  }

  if ((v12 & 1) == 0)
  {
    [(SCROBrailleClient *)self->_brailleClient cancelCandidateSelection];
    brailleElement = self->_brailleElement;
    if (!brailleElement)
    {
      [(SCRCTargetSelectorTimer *)self->_hintTimer cancel];
      v14 = 0;
LABEL_28:
      [(VOTBrailleManager *)self _resetBrailleCursor];
      goto LABEL_29;
    }

    brailleElementIndex = self->_brailleElementIndex;
    if (brailleElementIndex + 1 > 1)
    {
      v17 = brailleElementIndex + 1;
    }

    else
    {
      v17 = 1;
    }

    self->_brailleElementIndex = v17;
    if (self->_lastBraillePanDirection == 1)
    {
      if ([(VOTElement *)brailleElement isLiveCaptionsParagraphView])
      {
        v14 = &off_1001DA8B0;
LABEL_27:
        [(SCRCTargetSelectorTimer *)self->_hintTimer dispatchAfterDelay:2.0];
        goto LABEL_28;
      }

      brailleElement = *p_brailleElement;
    }

    if ([(VOTElement *)brailleElement isLiveCaptionsTextView])
    {
      label = [*p_brailleElement label];
      v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [label length]);
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_27;
  }

  if ([cursorCopy BOOLValue] && objc_msgSend(*p_brailleElement, "brailleTextEntrySupported"))
  {
    [(VOTElement *)self->_brailleElement updateCache];
    [(VOTBrailleManager *)self _resetBrailleCursor];
    v13 = 0;
    v14 = 0;
    goto LABEL_30;
  }

  if (([cursorCopy BOOLValue] & 1) != 0 || (objc_msgSend(*p_brailleElement, "isReadingContent") & 1) != 0 || (brailleLineOffset = self->_brailleLineOffset, brailleLineOffset == -1))
  {
    if (![*p_brailleElement isLiveCaptionsTextView])
    {
      v14 = 0;
      goto LABEL_29;
    }

    brailleLineOffset = self->_brailleLineOffset;
  }

  v14 = [NSNumber numberWithInteger:brailleLineOffset];
LABEL_29:
  v13 = 1;
LABEL_30:
  [(VOTBrailleManager *)self _refreshBrailleLinePreferringPositionOverRotorSelection:0 knownLineRange:0 updatedPosition:v14 updateBrailleElement:v13];
  hasActive2DBrailleDisplay = [VOTSharedWorkspace hasActive2DBrailleDisplay];
  v21 = +[VOTPlanarBrailleManager manager];
  zoomOutActive = [v21 zoomOutActive];

  if ((zoomOutActive & 1) != 0 || hasActive2DBrailleDisplay)
  {
    v23 = +[VOTPlanarBrailleManager manager];
    [v23 setPlanarBrailleElement:elementCopy];
  }

  [(VOTBrailleManager *)self _updateRealtimeElementStatus];
  elementSetCallback = [(VOTBrailleManager *)self elementSetCallback];

  if (elementSetCallback)
  {
    elementSetCallback2 = [(VOTBrailleManager *)self elementSetCallback];
    (elementSetCallback2)[2](elementSetCallback2, self->_brailleElement);
  }

LABEL_36:
}

- (void)_resetBrailleCursor
{
  self->_brailleLineRange = xmmword_10017E1D0;
  self->_brailleDescriptionRange = self->_brailleLineRange;
  self->_brailleLineOffset = -1;
}

- (void)refreshBrailleLine
{
  threadKey = self->_threadKey;
  [(VOTBrailleManager *)self threadWaitTime];

  [(VOTBrailleManager *)self performSelector:"_refreshBrailleLine" withThreadKey:threadKey waitTime:0 cancelMask:0 count:0 objects:?];
}

- (void)_refreshBrailleLinePreferringPositionOverRotorSelection:(BOOL)selection knownLineRange:(BOOL)range updatedPosition:(id)position updateBrailleElement:(BOOL)element
{
  elementCopy = element;
  selectionCopy = selection;
  positionCopy = position;
  brailleElement = self->_brailleElement;
  if (!brailleElement)
  {
    v11 = [objc_allocWithZone(NSMutableAttributedString) initWithString:@" "];
    v22 = kSCROTokenAttribute;
    v23 = [NSNumber numberWithUnsignedInteger:0];
    [v11 addAttribute:v22 value:v23 range:{0, objc_msgSend(v11, "length")}];
    goto LABEL_77;
  }

  rangeCopy = range;
  v61 = selectionCopy;
  if (elementCopy)
  {
    [(VOTElement *)brailleElement updateCache];
  }

  v11 = [objc_allocWithZone(NSMutableAttributedString) init];
  v12 = self->_brailleElement;
  brailleTextEntrySupported = [(VOTElement *)self->_brailleElement brailleTextEntrySupported];
  textInputElement = [(VOTElement *)self->_brailleElement textInputElement];
  textInputElementRange = [(VOTElement *)self->_brailleElement textInputElementRange];
  v16 = textInputElementRange;
  v18 = v17;
  if (textInputElement)
  {
    v19 = brailleTextEntrySupported;
  }

  else
  {
    v19 = 0;
  }

  if (textInputElementRange == 0x7FFFFFFF)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  if ([(VOTElement *)self->_brailleElement isReadingContent])
  {
    includeDuringContentReading = 1;
  }

  else
  {
    includeDuringContentReading = [(VOTElement *)self->_brailleElement includeDuringContentReading];
  }

  v63 = v12;
  if (v20)
  {
    [textInputElement updateCache];
    v24 = textInputElement;

    v63 = v24;
  }

  p_brailleLineRange = &self->_brailleLineRange;
  if (self->_brailleLineRange.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!self->_lastBraillePanSucceeded && ((self->_lastBraillePanDirection == 0) & brailleTextEntrySupported) == 1)
    {
      if (v20)
      {
        value = [textInputElement value];
        if (&v16[v18])
        {
          v27 = &v16[v18 - 1];
LABEL_35:
          v33 = 1;
LABEL_40:
          self->_brailleLineRange.location = [value lineRangeForRange:{v27, v33}];
          self->_brailleLineRange.length = v34;

          goto LABEL_44;
        }
      }

      else
      {
        value = [(VOTElement *)self->_brailleElement value];
        if ([value length])
        {
          v27 = [value length] - 1;
          goto LABEL_35;
        }
      }

      v27 = 0;
      v33 = 0;
      goto LABEL_40;
    }

    if (brailleTextEntrySupported)
    {
      if (v20)
      {
        selectedTextRange = [textInputElement selectedTextRange];
        if (selectedTextRange == 0x7FFFFFFF)
        {
          goto LABEL_43;
        }

        v30 = &selectedTextRange[v29];
        if (&selectedTextRange[v29] < v16 || v30 > &v16[v18])
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (self->_lastBraillePanDirection == 1)
        {
          selectedTextRange2 = 0;
          v32 = 0;
        }

        else
        {
          selectedTextRange2 = [(VOTElement *)self->_brailleElement selectedTextRange];
        }

        if (selectedTextRange2 == 0x7FFFFFFF)
        {
          v16 = 0;
LABEL_43:
          p_brailleLineRange->location = v16;
          goto LABEL_44;
        }

        v30 = &selectedTextRange2[v32];
      }

      v16 = v30;
      goto LABEL_43;
    }

    if (includeDuringContentReading && !self->_lastBraillePanDirection)
    {
      pageContent = [(VOTElement *)self->_brailleElement pageContent];
      self->_brailleLineRange.location = [pageContent lineRangeForRange:{objc_msgSend(pageContent, "length") - 1, 1}];
      self->_brailleLineRange.length = v57;
    }

    else
    {
      p_brailleLineRange->location = 0;
    }
  }

LABEL_44:
  touchContainer = [(VOTElement *)self->_brailleElement touchContainer];
  if (positionCopy)
  {
    location = [positionCopy integerValue];
  }

  else
  {
    location = self->_brailleLineRange.location;
  }

  v62 = textInputElement;
  if (!includeDuringContentReading)
  {
    v41 = brailleTextEntrySupported;
    goto LABEL_60;
  }

  v37 = self->_brailleLineRange.location;
  if (!self->_lastBraillePanDirection)
  {
    length = self->_brailleLineRange.length;
LABEL_57:
    location = (length + v37);
    goto LABEL_58;
  }

  bookCursorPosition = self->_bookCursorPosition;
  length = self->_brailleLineRange.length;
  v40 = bookCursorPosition - v37 < length && bookCursorPosition > v37;
  if (v40 || bookCursorPosition == length + v37)
  {
    goto LABEL_57;
  }

LABEL_58:
  v41 = brailleTextEntrySupported;
  if (self->_lastRefreshTrigger == 1)
  {
    location = self->_bookCursorPosition;
  }

LABEL_60:
  rotorSelection = self->_rotorSelection;
  previousTouchContainer = [(VOTBrailleManager *)self previousTouchContainer];
  v44 = [touchContainer isEqual:previousTouchContainer] ^ 1;
  previousElement = [(VOTBrailleManager *)self previousElement];
  LOWORD(v59) = 256;
  BYTE1(v58) = v44;
  LOBYTE(v58) = rangeCopy;
  [VOTElement addTextualInformationToBrailleLine:v63 forPosition:"addTextualInformationToBrailleLine:forPosition:rotorSelection:shouldPreferRotorSelection:lineRange:descriptionRange:lineRangeKnown:isNewTouchContainer:previousElement:updateValue:singleLine:" rotorSelection:v11 shouldPreferRotorSelection:location lineRange:rotorSelection descriptionRange:!v61 lineRangeKnown:&self->_brailleLineRange isNewTouchContainer:&self->_brailleDescriptionRange previousElement:v58 updateValue:previousElement singleLine:v59];

  if (self->_lastRefreshTrigger == 1)
  {
    v46 = [NSNumber numberWithInteger:self->_trailingBookCursorPosition - self->_brailleLineRange.location];

    positionCopy = v46;
  }

  [(VOTBrailleManager *)self setPreviousTouchContainer:touchContainer];
  v23 = v63;
  [(VOTBrailleManager *)self setPreviousElement:v63];
  if (positionCopy)
  {
    v47 = v41;
  }

  else
  {
    v47 = 1;
  }

  if (v47)
  {
    if (positionCopy || self->_lastBraillePanSucceeded)
    {
      goto LABEL_74;
    }

    lastBraillePanDirection = self->_lastBraillePanDirection;
    if (!lastBraillePanDirection)
    {
      v49 = &off_1001DA8C8;
      goto LABEL_82;
    }

    if (lastBraillePanDirection == 1)
    {
      v49 = &off_1001DA8E0;
LABEL_82:
      v51 = &kSCROLineFocusAttribute;
      goto LABEL_73;
    }
  }

  else
  {
    integerValue = [positionCopy integerValue];
    if (integerValue < [v11 length])
    {
      v51 = &kSCROBrailleOffsetAttribute;
      v49 = positionCopy;
LABEL_73:
      [v11 addAttribute:*v51 value:v49 range:{0, objc_msgSend(v11, "length")}];
    }
  }

LABEL_74:
  v52 = [v11 length];
  if (v52)
  {
    v53 = v52;
    v54 = kSCROTokenAttribute;
    v55 = [NSNumber numberWithUnsignedInteger:self->_brailleElementIndex];
    [v11 addAttribute:v54 value:v55 range:{0, v53}];
  }

LABEL_77:
  [(VOTBrailleManager *)self _setBrailleString:v11 type:&off_1001DA8E0 timeout:0 priority:0 langCode:0 brailleLineRangeValue:0];
  self->_lastBraillePanDirection = -1;
  self->_lastRefreshTrigger = 0;
}

- (void)_displayBrailleElementHint
{
  if (self->_brailleElement && [VOTSharedWorkspace hintsEnabled])
  {
    v10 = [objc_allocWithZone(NSMutableString) init];
    hint = [(VOTElement *)self->_brailleElement hint];
    if ([hint length])
    {
      if ([hint isAXAttributedString])
      {
        string = [hint string];
        [v10 appendString:string];
      }

      else
      {
        [v10 appendString:hint];
      }
    }

    instructions = [(VOTElement *)self->_brailleElement instructions];

    if ([instructions length])
    {
      if ([v10 length])
      {
        [v10 appendString:{@", "}];
      }

      [v10 appendString:instructions];
    }

    if ([v10 length])
    {
      v6 = [objc_allocWithZone(NSMutableAttributedString) initWithString:v10];
      v7 = [NSNumber numberWithInt:2];
      +[VOTBrailleManager currentDefaultBrailleAlertTimeout];
      v8 = [NSNumber numberWithDouble:?];
      v9 = [NSNumber numberWithInt:10];
      [(VOTBrailleManager *)self _setBrailleString:v6 type:v7 timeout:v8 priority:v9 langCode:0 brailleLineRangeValue:0];
    }
  }
}

- (void)handleBrailleConfigurationChanged:(id)changed
{
  changedCopy = changed;
  v5 = VOTLogBraille();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = changedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Braille config change handler called: isConfigured = %@", &v7, 0xCu);
  }

  threadKey = self->_threadKey;
  [(VOTBrailleManager *)self threadWaitTime];
  [(VOTBrailleManager *)self performSelector:"_handleBrailleConfigurationChanged:" withThreadKey:threadKey waitTime:0 cancelMask:1 count:changedCopy objects:?];
  [(NSCondition *)self->_brailleClientConnectionCondition lock];
  if ([(SCROBrailleClient *)self->_brailleClient isConnected])
  {
    [(NSCondition *)self->_brailleClientConnectionCondition broadcast];
  }

  [(NSCondition *)self->_brailleClientConnectionCondition unlock];
}

- (void)handleBrailleDidDisconnect:(id)disconnect
{
  v4 = [NSNumber numberWithBool:0];
  [(VOTBrailleManager *)self handleBrailleConfigurationChanged:v4];
}

- (void)handleBrailleDidReconnect:(id)reconnect
{
  v4 = [NSNumber numberWithBool:1];
  [(VOTBrailleManager *)self handleBrailleConfigurationChanged:v4];
}

- (void)_handleBrailleConfigurationChanged:(id)changed
{
  driverConfiguration = [(SCROBrailleClient *)self->_brailleClient driverConfiguration];
  self->_primaryDisplayToken = 0;
  self->_hasActiveDisplay = [(VOTBrailleManager *)self testingHasActiveDisplay];
  v5 = VOTLogBraille();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    hasActiveDisplay = self->_hasActiveDisplay;
    *buf = 138412546;
    v34 = driverConfiguration;
    v35 = 1024;
    v36 = hasActiveDisplay;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Driver config = %@, testingHasActiveDisplay = %d", buf, 0x12u);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = driverConfiguration;
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        v13 = [v12 objectForKey:{kSCROBrailleDisplayState, v28}];
        unsignedIntegerValue = [v13 unsignedIntegerValue];

        if (unsignedIntegerValue == 1)
        {
          v15 = [v12 objectForKey:kSCROBrailleDisplayIsPrimary];
          bOOLValue = [v15 BOOLValue];

          if (bOOLValue)
          {
            v17 = [v12 objectForKey:kSCROBrailleDisplayToken];
            self->_primaryDisplayToken = [v17 integerValue];

            v18 = [v12 objectForKey:kSCROBrailleDisplayTransport];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              unsignedIntegerValue2 = [v18 unsignedIntegerValue];
              v20 = 1;
              if (unsignedIntegerValue2 != 8 && unsignedIntegerValue2 != 2)
              {
LABEL_16:

                goto LABEL_17;
              }
            }

            else
            {
              v20 = 0;
            }

            self->_primaryDisplayIsBluetooth = v20;
            goto LABEL_16;
          }

LABEL_17:
          v21 = [v12 objectForKey:kSCROBrailleDisplayTransport];
          unsignedIntegerValue3 = [v21 unsignedIntegerValue];

          if (unsignedIntegerValue3 == 4)
          {
            [VOTSharedWorkspace handleUSBMFiBrailleDisplayConnected];
          }

          else
          {
            v23 = [v12 objectForKey:kSCROBrailleDisplayTransport];
            unsignedIntegerValue4 = [v23 unsignedIntegerValue];

            if (unsignedIntegerValue4 == 2)
            {
              [VOTSharedWorkspace handleBluetoothBrailleDisplayConnected];
            }
          }

          if ([(VOTBrailleManager *)self _isActiveUserDisplayConfig:v12])
          {
            self->_hasActiveDisplay = 1;
          }

          continue;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v9);
  }

  [(VOTBrailleManager *)self _updateOnscreenKeyboardSettings];
  v25 = +[SCROMobileBrailleDisplayInputManager sharedManager];
  [v25 configureWithDriverConfiguration:v7];

  [(SCROBrailleClient *)self->_brailleClient setKeepConnectionAlive:1];
  if (self->_hasActiveDisplay)
  {
    if (([VOTSharedWorkspace inUnitTestMode] & 1) == 0)
    {
      [VOTSharedWorkspace refreshBraille:0 rotorSelection:self->_rotorSelection];
    }

    [(VOTBrailleManager *)self _setBrailleTable:self->_currentSetTable, v28];
    [(VOTBrailleManager *)self _setBrailleInputTable:self->_currentSetInputTable];
  }

  else
  {
    softwareKeyboardManager = [VOTSharedWorkspace softwareKeyboardManager];
    [softwareKeyboardManager removeReasonToDisableSoftwareKeyboard:@"BrailleManager"];

    brailleElement = self->_brailleElement;
    self->_brailleElement = 0;

    [(VOTBrailleManager *)self _resetBrailleCursor];
  }

  [(VOTBrailleManager *)self bluetoothBrailleDisplayConnected];
  _AXSBrailleInputDeviceSetConnected();
  AXPerformBlockAsynchronouslyOnMainThread();
}

- (BOOL)_isActiveUserDisplayConfig:(id)config
{
  configCopy = config;
  v4 = [configCopy objectForKey:kSCROBrailleDisplayState];
  if ([v4 unsignedIntegerValue] == 1)
  {
    v5 = [configCopy objectForKey:@"BrailleDisplayIsSystemVirtual"];
    v6 = [v5 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)handleShowOnscreenKeyboardToggle
{
  hasActiveBrailleDisplay = [(VOTBrailleManager *)self hasActiveBrailleDisplay];
  if (hasActiveBrailleDisplay)
  {
    v3 = +[AXSettings sharedInstance];
    voiceOverShowSoftwareKeyboardWithBraille = [v3 voiceOverShowSoftwareKeyboardWithBraille];

    v5 = +[AXSettings sharedInstance];
    [v5 setVoiceOverShowSoftwareKeyboardWithBraille:voiceOverShowSoftwareKeyboardWithBraille ^ 1];
  }

  return hasActiveBrailleDisplay;
}

- (void)_updateOnscreenKeyboardSettings
{
  if (AXUIKeyboardIsOOP())
  {
    currentElement = +[VOTElement inputUIApplication];
    uiElement = [currentElement uiElement];
  }

  else
  {
    currentElement = [VOTSharedWorkspace currentElement];
    application = [currentElement application];
    uiElement = [application uiElement];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  driverConfiguration = [(SCROBrailleClient *)self->_brailleClient driverConfiguration];
  v7 = [driverConfiguration countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v7)
  {

LABEL_17:
    v18 = +[NSNull null];
    [uiElement setAXAttribute:2603 withObject:v18];

    goto LABEL_18;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v20;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v20 != v10)
      {
        objc_enumerationMutation(driverConfiguration);
      }

      v12 = *(*(&v19 + 1) + 8 * i);
      if ([(VOTBrailleManager *)self _isActiveUserDisplayConfig:v12])
      {
        v13 = [v12 objectForKey:kSCROBrailleDisplayPostsKeyboardEvents];
        bOOLValue = [v13 BOOLValue];

        if (bOOLValue)
        {
          softwareKeyboardManager = [VOTSharedWorkspace softwareKeyboardManager];
          v9 = 1;
          [softwareKeyboardManager setIsHardwareKeyboardAttached:1];

          v16 = +[AXSettings sharedInstance];
          voiceOverShowSoftwareKeyboardWithBraille = [v16 voiceOverShowSoftwareKeyboardWithBraille];

          [uiElement setAXAttribute:2603 withBOOL:voiceOverShowSoftwareKeyboardWithBraille];
        }
      }
    }

    v8 = [driverConfiguration countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v8);

  if ((v9 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_18:
}

- (void)handleBrailleKeypress:(id)keypress
{
  threadKey = self->_threadKey;
  keypressCopy = keypress;
  [(VOTBrailleManager *)self threadWaitTime];
  [(VOTBrailleManager *)self performSelector:"_handleBrailleKeypress:" withThreadKey:threadKey waitTime:0 cancelMask:1 count:keypressCopy objects:?];

  v6 = +[VOTUserEventManager sharedInstance];
  [v6 userEventOccurred];
}

- (void)handleUserEventOccured
{
  v2 = +[VOTUserEventManager sharedInstance];
  [v2 userEventOccurred];
}

- (void)handleBrailleReplaceTextRange:(_NSRange)range withString:(id)string cursor:(unint64_t)cursor
{
  length = range.length;
  location = range.location;
  threadKey = self->_threadKey;
  stringCopy = string;
  v12 = [NSValue valueWithRange:location, length];
  v11 = [NSNumber numberWithUnsignedInteger:cursor];
  [(VOTBrailleManager *)self performSelector:"_handleBrailleReplaceTextRange:withString:cursor:" withThreadKey:threadKey count:3 objects:v12, stringCopy, v11];
}

- (void)_handleBrailleKeypress:(id)keypress
{
  keypressCopy = keypress;
  if ([(SCRCTargetSelectorTimer *)self->_hintTimer isPending]&& ([(SCRCTargetSelectorTimer *)self->_hintTimer isCancelled]& 1) == 0)
  {
    [(SCRCTargetSelectorTimer *)self->_hintTimer dispatchAfterDelay:2.0];
  }

  v52 = +[SCROMobileBrailleDisplayInputManager sharedManager];
  objc_opt_self();
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = keypressCopy;
  v5 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (v5)
  {
    v54 = *v58;
    v51 = kBRLTBrailleKeyboardKeyModifierNull;
    v50 = v56;
    do
    {
      v6 = 0;
      do
      {
        if (*v58 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v57 + 1) + 8 * v6);
        if (objc_opt_isKindOfClass())
        {
          sub_1000DA4B8(v7);
          [(SCROBrailleClient *)self->_brailleClient setPersistentKeyModifiers:self->_toggledModifiers];
          goto LABEL_50;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v7 command];
        }

        else
        {
          [v52 commandForBrailleKey:{v7, v50}];
        }
        v8 = ;
        v9 = AXLogBrailleHW();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = v8;
          *&buf[12] = 2112;
          *&buf[14] = v7;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Dispatch braille command: %@ %@", buf, 0x16u);
        }

        if (v8)
        {
          v10 = [(VOTBrailleManager *)self _handleKeyboardModifierCommands:v8];
          v63[0] = kVOTEventCommandTab;
          v63[1] = kVOTEventCommandReturn;
          v64[0] = &off_1001DA8F8;
          v64[1] = &off_1001DA910;
          v63[2] = kVOTEventCommandLeftArrow;
          v63[3] = kVOTEventCommandRightArrow;
          v64[2] = &off_1001DA928;
          v64[3] = &off_1001DA940;
          v63[4] = kVOTEventCommandUpArrow;
          v63[5] = kVOTEventCommandDownArrow;
          v64[4] = &off_1001DA958;
          v64[5] = &off_1001DA970;
          v11 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:6];
          v12 = [v11 objectForKey:v8];
          if (v12)
          {
            v13 = [(SCROBrailleClient *)self->_brailleClient persistentKeyModifiers]== v51;

            if (!v13)
            {
              v37 = objc_alloc_init(SCROBrailleKeyboardKey);
              v38 = [v11 objectForKey:v8];
              [v37 setKeyCode:{objc_msgSend(v38, "unsignedIntegerValue")}];

              [v37 setModifiers:{-[SCROBrailleClient persistentKeyModifiers](self->_brailleClient, "persistentKeyModifiers")}];
              sub_1000DA4B8(v37);
              [(SCROBrailleClient *)self->_brailleClient setPersistentKeyModifiers:self->_toggledModifiers];

LABEL_76:
              goto LABEL_77;
            }
          }

          if ([v8 isEqualToString:{kVOTEventCommandBrailleRouter, v50}])
          {
            v14 = +[VOTPlanarBrailleManager manager];
            zoomOutActive = [v14 zoomOutActive];

            if (zoomOutActive)
            {
              *buf = 0;
              firstObject = [obj firstObject];
              [firstObject getRouterIndex:buf token:0 location:0 appToken:0];

              v40 = +[VOTPlanarBrailleManager manager];
              v41 = *buf;
              v42 = +[AXSettings sharedInstance];
              v43 = [v40 elementAtRelativeIndex:{v41 / (objc_msgSend(v42, "voiceOverTouchBrailleZoomOutNumCellsPerElement") + 1)}];

              if (v43)
              {
                elementManager = [VOTSharedWorkspace elementManager];
                [elementManager moveToElement:v43];
              }

              v45 = +[VOTPlanarBrailleManager manager];
              [v45 setZoomOutActive:0];

              goto LABEL_76;
            }

            if ([(SCROBrailleClient *)self->_brailleClient displayMode]- 1 <= 2)
            {
              [(SCROBrailleClient *)self->_brailleClient exitCurrentDisplayMode];
              goto LABEL_46;
            }

LABEL_45:
            if (v10)
            {
              goto LABEL_46;
            }

LABEL_53:
            if ([(SCROBrailleClient *)self->_brailleClient displayMode]- 4 <= 0xFFFFFFFD)
            {
              v27 = [objc_allocWithZone(AXIndexMap) init];
              [v27 setObject:v7 forIndex:104];
              v28 = [VOTEvent brailleEventWithCommand:v8 info:v27];
              v29 = +[VOTCommandHelper commandHelper];
              helpEnabled = [v29 helpEnabled];

              if (helpEnabled)
              {
                if (([v8 isEqualToString:kVOTEventCommandBraillePanRight] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", kVOTEventCommandBraillePanLeft) & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", kVOTEventCommandBraillePanBeginning) & 1) != 0 || objc_msgSend(v8, "isEqualToString:", kVOTEventCommandBraillePanEnd) || objc_msgSend(v8, "isEqualToString:", kVOTEventCommandEscape) && (+[VOTCommandHelper commandHelper](VOTCommandHelper, "commandHelper"), v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "practiceElement"), v32 = objc_claimAutoreleasedReturnValue(), v33 = v32 == 0, v32, v31, v33))
                {
                  [v28 setBypassHelp:1];
                }

                else
                {
                  identifier = [v7 identifier];
                  v35 = [v52 buttonNamesForInputIdentifier:identifier forDisplayWithToken:{objc_msgSend(v7, "displayToken")}];
                  [v28 setObject:v35 forIndex:105];
                }
              }

              [VOTSharedWorkspace dispatchCommand:v28 bypassGesturedInput:{objc_msgSend(VOTSharedWorkspace, "brailleInputActive")}];

              goto LABEL_47;
            }
          }

          else
          {
            if ([v8 isEqualToString:kVOTEventCommandBraillePanLeft])
            {
              v16 = +[VOTPlanarBrailleManager manager];
              zoomOutActive2 = [v16 zoomOutActive];

              if (zoomOutActive2)
              {
                goto LABEL_73;
              }

              if (([(SCROBrailleClient *)self->_brailleClient displayMode]& 0xFFFFFFFE) != 2)
              {
                goto LABEL_45;
              }

              -[SCROBrailleClient panDisplayLeft:](self->_brailleClient, "panDisplayLeft:", [v7 displayToken]);
              goto LABEL_46;
            }

            if ([v8 isEqualToString:kVOTEventCommandBraillePanRight])
            {
              v18 = +[VOTPlanarBrailleManager manager];
              zoomOutActive3 = [v18 zoomOutActive];

              if (zoomOutActive3)
              {
                goto LABEL_75;
              }

              if (([(SCROBrailleClient *)self->_brailleClient displayMode]& 0xFFFFFFFE) != 2)
              {
                goto LABEL_45;
              }

              -[SCROBrailleClient panDisplayRight:](self->_brailleClient, "panDisplayRight:", [v7 displayToken]);
              goto LABEL_46;
            }

            if ([v8 isEqualToString:kVOTEventCommandBraillePlanarPanLeft])
            {
LABEL_73:
              -[SCROBrailleClient planarPanDisplayLeft:](self->_brailleClient, "planarPanDisplayLeft:", [v7 displayToken]);
              goto LABEL_76;
            }

            if ([v8 isEqualToString:kVOTEventCommandBraillePlanarPanRight])
            {
LABEL_75:
              -[SCROBrailleClient planarPanDisplayRight:](self->_brailleClient, "planarPanDisplayRight:", [v7 displayToken]);
              goto LABEL_76;
            }

            if ([v8 isEqualToString:kVOTEventCommandDelete])
            {
              if ([(SCROBrailleClient *)self->_brailleClient contractionMode])
              {
                goto LABEL_45;
              }

              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2020000000;
              v62 = 0x7FFFFFFFFFFFFFFFLL;
              mainAttributedString = [(SCROBrailleClient *)self->_brailleClient mainAttributedString];
              v21 = [mainAttributedString length];
              v55[0] = _NSConcreteStackBlock;
              v55[1] = 3221225472;
              v56[0] = sub_1000DB2CC;
              v56[1] = &unk_1001CAB80;
              v56[2] = buf;
              [mainAttributedString enumerateAttribute:kSCROCursorAttribute inRange:0 options:v21 usingBlock:{0, v55}];
              v22 = *(*&buf[8] + 24);
              if (v22 != 0x7FFFFFFFFFFFFFFFLL)
              {
                if (v22 >= 1)
                {
                  *(*&buf[8] + 24) = --v22;
                }

                [(SCROBrailleClient *)self->_brailleClient rangeOfCellRepresentingCharacterAtIndex:v22];
                if (v23)
                {
                  [(VOTElement *)self->_brailleElement replaceCharactersAtCursor:v23 withString:&stru_1001CBF90 source:2];

                  _Block_object_dispose(buf, 8);
                  goto LABEL_46;
                }
              }

              _Block_object_dispose(buf, 8);
              if ((v10 & 1) == 0)
              {
                goto LABEL_53;
              }
            }

            else
            {
              if ([v8 isEqualToString:kVOTEventCommandBrailleTranslateBrailleToClipboard])
              {
                [(SCROBrailleClient *)self->_brailleClient translateBrailleToClipboard];
                goto LABEL_45;
              }

              if ([v8 isEqualToString:kVOTEventCommandBrailleToggleZoomOut])
              {
                if (![VOTSharedWorkspace hasActive2DBrailleDisplay])
                {
                  v24 = +[VOTPlanarBrailleManager manager];
                  zoomOutActive4 = [v24 zoomOutActive];

                  if ((zoomOutActive4 & 1) == 0)
                  {
                    v49 = +[VOTPlanarBrailleManager manager];
                    [v49 setZoomOutActive:1];

                    goto LABEL_76;
                  }
                }

                goto LABEL_45;
              }

              if ((([(VOTBrailleManager *)self handleCommandIfActiveBrailleRelated:v8]| v10) & 1) == 0)
              {
                goto LABEL_53;
              }
            }

LABEL_46:
            v26 = VOTSharedWorkspace;
            v27 = [VOTEvent brailleEventWithCommand:kVOTEventCommandStopReadAll info:0];
            [v26 dispatchCommand:v27];
LABEL_47:
          }
        }

LABEL_50:
        v6 = v6 + 1;
      }

      while (v5 != v6);
      v36 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
      v5 = v36;
    }

    while (v36);
  }

LABEL_77:

  keypressCallback = [(VOTBrailleManager *)self keypressCallback];
  v47 = keypressCallback == 0;

  if (!v47)
  {
    keypressCallback2 = [(VOTBrailleManager *)self keypressCallback];
    (keypressCallback2)[2](keypressCallback2, obj);
  }
}

- (BOOL)handleCommandIfActiveBrailleRelated:(id)related
{
  relatedCopy = related;
  if ([relatedCopy isEqualToString:kVOTEventCommandEscape])
  {
    v5 = +[VOTPlanarBrailleManager manager];
    zoomOutActive = [v5 zoomOutActive];

    if (zoomOutActive)
    {
      v7 = +[VOTPlanarBrailleManager manager];
      [v7 setZoomOutActive:0];

      [(VOTBrailleManager *)self refreshBrailleLine];
LABEL_33:
      v10 = 0;
      goto LABEL_34;
    }

    if ([(SCROBrailleClient *)self->_brailleClient displayMode]- 1 > 2)
    {
      goto LABEL_33;
    }

    brailleClient = self->_brailleClient;
    goto LABEL_9;
  }

  if ([relatedCopy isEqualToString:kVOTEventCommandBrailleAnnouncementModeOn])
  {
    displayMode = [(SCROBrailleClient *)self->_brailleClient displayMode];
    brailleClient = self->_brailleClient;
    if (displayMode == 2)
    {
LABEL_9:
      [(SCROBrailleClient *)brailleClient exitCurrentDisplayMode];
      goto LABEL_10;
    }

    [(SCROBrailleClient *)brailleClient setAnnouncementsDisplayMode];
  }

  else if ([relatedCopy isEqualToString:kVOTEventCommandPreviousElement])
  {
    displayMode2 = [(SCROBrailleClient *)self->_brailleClient displayMode];
    if (displayMode2 != 3)
    {
      if (displayMode2 == 2)
      {
        [(SCROBrailleClient *)self->_brailleClient showPreviousAnnouncement];
      }

      else
      {
        isCandidateSelectionOn = [(SCROBrailleClient *)self->_brailleClient isCandidateSelectionOn];
        v15 = self->_brailleClient;
        if (isCandidateSelectionOn)
        {
          [(SCROBrailleClient *)v15 showPreviousCandidate];
        }

        else
        {
          if (![(SCROBrailleClient *)v15 isWordDescriptionOn])
          {
            goto LABEL_33;
          }

          [(SCROBrailleClient *)self->_brailleClient showPreviousWordDescription];
        }
      }
    }
  }

  else
  {
    if (![relatedCopy isEqualToString:kVOTEventCommandNextElement])
    {
      if ([relatedCopy isEqualToString:kVOTEventCommandReturn] && !-[VOTElement doesHaveAllTraits:](self->_brailleElement, "doesHaveAllTraits:", kAXTextEntryTrait))
      {
        v13 = +[VOTTextSearchManager sharedManager];
        if ([v13 textSearchModeIsOn])
        {
        }

        else
        {
          hasActiveBrailleDisplay = [(VOTBrailleManager *)self hasActiveBrailleDisplay];

          if (hasActiveBrailleDisplay)
          {
            [(VOTBrailleManager *)self _showBrailleUIMigrationMessage];
          }
        }
      }

      goto LABEL_33;
    }

    displayMode3 = [(SCROBrailleClient *)self->_brailleClient displayMode];
    if (displayMode3 != 3)
    {
      if (displayMode3 == 2)
      {
        [(SCROBrailleClient *)self->_brailleClient showNextAnnouncement];
      }

      else
      {
        isCandidateSelectionOn2 = [(SCROBrailleClient *)self->_brailleClient isCandidateSelectionOn];
        v17 = self->_brailleClient;
        if (isCandidateSelectionOn2)
        {
          [(SCROBrailleClient *)v17 showNextCandidate];
        }

        else
        {
          if (![(SCROBrailleClient *)v17 isWordDescriptionOn])
          {
            goto LABEL_33;
          }

          [(SCROBrailleClient *)self->_brailleClient showNextWordDescription];
        }
      }
    }
  }

LABEL_10:
  v10 = 1;
LABEL_34:

  return v10;
}

- (BOOL)_handleKeyboardModifierCommands:(id)commands
{
  commandsCopy = commands;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v3 = kBRLTBrailleKeyboardKeyModifierCommand;
  v4 = [NSNumber numberWithUnsignedInt:kBRLTBrailleKeyboardKeyModifierCommand];
  v51[0] = v4;
  v52[0] = @"command";
  v32 = kBRLTBrailleKeyboardKeyModifierShift;
  v5 = [NSNumber numberWithUnsignedInt:?];
  v51[1] = v5;
  v52[1] = @"shift";
  v6 = kBRLTBrailleKeyboardKeyModifierOption;
  v7 = [NSNumber numberWithUnsignedInt:kBRLTBrailleKeyboardKeyModifierOption];
  v51[2] = v7;
  v52[2] = @"option";
  v8 = kBRLTBrailleKeyboardKeyModifierControl;
  v9 = [NSNumber numberWithUnsignedInt:kBRLTBrailleKeyboardKeyModifierControl];
  v51[3] = v9;
  v52[3] = @"control";
  v10 = kBRLTBrailleKeyboardKeyModifierSecondaryFn;
  v11 = [NSNumber numberWithUnsignedInt:kBRLTBrailleKeyboardKeyModifierSecondaryFn];
  v51[4] = v11;
  v52[4] = @"fn";
  v28 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:5];

  v49[0] = kVOTEventCommandModifierCommand;
  v12 = [NSNumber numberWithUnsignedInt:v3];
  v50[0] = v12;
  v49[1] = kVOTEventCommandModifierShift;
  v13 = [NSNumber numberWithUnsignedInt:v32];
  v50[1] = v13;
  v49[2] = kVOTEventCommandModifierOption;
  v14 = [NSNumber numberWithUnsignedInt:v6];
  v50[2] = v14;
  v49[3] = kVOTEventCommandModifierControl;
  v15 = [NSNumber numberWithUnsignedInt:v8];
  v50[3] = v15;
  v49[4] = kVOTEventCommandModifierFn;
  v16 = [NSNumber numberWithUnsignedInt:v10];
  v50[4] = v16;
  v30 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:5];

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1000DBA70;
  v38[3] = &unk_1001CABF0;
  v17 = commandsCopy;
  v39 = v17;
  selfCopy = self;
  v18 = v28;
  v41 = v18;
  v42 = &v43;
  [v30 enumerateKeysAndObjectsUsingBlock:v38];
  v47[0] = kVOTEventCommandModifierCommandToggle;
  v19 = [NSNumber numberWithUnsignedInt:v3];
  v48[0] = v19;
  v47[1] = kVOTEventCommandModifierShiftToggle;
  v20 = [NSNumber numberWithUnsignedInt:v32];
  v48[1] = v20;
  v47[2] = kVOTEventCommandModifierOptionToggle;
  v21 = [NSNumber numberWithUnsignedInt:v6];
  v48[2] = v21;
  v47[3] = kVOTEventCommandModifierControlToggle;
  v22 = [NSNumber numberWithUnsignedInt:v8];
  v48[3] = v22;
  v47[4] = kVOTEventCommandModifierFnToggle;
  v23 = [NSNumber numberWithUnsignedInt:v10];
  v48[4] = v23;
  v24 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:5];

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000DBBA4;
  v33[3] = &unk_1001CABF0;
  v25 = v17;
  v34 = v25;
  selfCopy2 = self;
  v26 = v18;
  v36 = v26;
  v37 = &v43;
  [v24 enumerateKeysAndObjectsUsingBlock:v33];
  LOBYTE(v21) = *(v44 + 24);

  _Block_object_dispose(&v43, 8);
  return v21 & 1;
}

- (void)_handleBrailleReplaceTextRange:(id)range withString:(id)string cursor:(id)cursor
{
  rangeCopy = range;
  stringCopy = string;
  cursorCopy = cursor;
  v121 = 0;
  v122 = &v121;
  v123 = 0x3032000000;
  v124 = sub_1000DC914;
  v125 = sub_1000DC924;
  v10 = stringCopy;
  v126 = v10;
  v11 = self->_brailleElement;
  textInputElement = [(VOTElement *)self->_brailleElement textInputElement];
  v110 = textInputElement;
  if (textInputElement && [(VOTElement *)self->_brailleElement textInputElementRange]!= 0x7FFFFFFF)
  {
    v13 = textInputElement;

    v11 = v13;
  }

  v14 = +[VOTTextSearchManager sharedManager];
  if (![v14 textSearchModeIsOn])
  {
    if (![(VOTElement *)v11 brailleTextEntrySupported])
    {
      v25 = objc_alloc_init(SCROBrailleKeyboardKey);
      [v25 setKeyString:v122[5]];
      sub_1000DA4B8(v25);
      [(VOTBrailleManager *)self _refreshBrailleLine];
LABEL_88:

      goto LABEL_89;
    }

    rangeValue = [rangeCopy rangeValue];
    v21 = v20;
    v106 = rangeCopy;
    value = [(VOTElement *)v11 value];
    location = self->_brailleLineRange.location;
    v107 = value;
    if (location <= [value length])
    {
      v24 = [v107 substringFromIndex:self->_brailleLineRange.location];
    }

    else
    {
      v24 = &stru_1001CBF90;
    }

    v120 = 0;
    v105 = v24;
    v26 = sub_1000539B8(v24, &v120);
    v108 = v120;
    v27 = sub_100053ECC(rangeValue, v21, v108);
    v29 = v28;
    unsignedIntegerValue = [cursorCopy unsignedIntegerValue];
    v31 = unsignedIntegerValue;
    v116 = 0;
    v117 = &v116;
    v118 = 0x2020000000;
    v119 = 0;
    if (unsignedIntegerValue <= rangeValue)
    {
      v33 = sub_100053E44(unsignedIntegerValue, v108);
    }

    else if (unsignedIntegerValue <= &rangeValue[[v10 length]])
    {
      v33 = &v31[v27 - rangeValue];
    }

    else
    {
      v32 = sub_100053E44(&v31[v21] - [v10 length], v108);
      v33 = &v32[[v10 length] - v29];
    }

    v34 = v117;
    v117[3] = v33;
    v35 = self->_brailleLineRange.location;
    if (v33 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v34[3] = &v33[v35];
    }

    if ((AXDeviceIsAudioAccessory() & 1) == 0)
    {
      v112[0] = _NSConcreteStackBlock;
      v112[1] = 3221225472;
      v112[2] = sub_1000DC92C;
      v112[3] = &unk_1001CAC18;
      v114 = &v121;
      v112[4] = self;
      v115 = &v116;
      v113 = v11;
      v36 = objc_retainBlock(v112);
      v37 = +[NSCharacterSet whitespaceCharacterSet];
      v38 = (v36[2])(v36, v37);

      if ((v38 & 1) == 0)
      {
        (v36[2])(v36, self->_delimiters);
      }
    }

    v39 = +[AXSettings sharedInstance];
    voiceOverHardwareTypingFeedback = [v39 voiceOverHardwareTypingFeedback];

    value2 = [(VOTElement *)v11 value];
    v127.length = [value2 length];
    v41 = &v27[v35];
    v127.location = 0;
    v129.location = v41;
    v129.length = v29;
    v42 = NSIntersectionRange(v127, v129);
    if (!v29 || v42.location == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v41 != [(VOTElement *)v11 selectedTextRange]|| v29 != v50)
      {
        [(VOTElement *)v11 setSelectedTextRange:v41 refreshBraille:v29, 0];
      }

      if ([(VOTBrailleManager *)self _languageIsCJK]&& ![(VOTBrailleManager *)self _languageIsNBSC])
      {
        v49 = objc_alloc_init(SCROBrailleKeyboardKey);
        [v49 setKeyString:v122[5]];
        sub_1000DA4B8(v49);
      }

      else
      {
        [(VOTElement *)v11 insertText:v122[5] source:2];
        v51 = [(VOTElement *)v11 doesHaveTraits:kAXSecureTextFieldTrait];
        if ((voiceOverHardwareTypingFeedback - 3) < 0xFFFFFFFFFFFFFFFELL)
        {
          v52 = 1;
        }

        else
        {
          v52 = v51;
        }

        if (v52)
        {
LABEL_83:
          v98 = v117[3];
          value3 = [(VOTElement *)v11 value];
          v100 = [value3 length];

          if (v98 <= v100)
          {
            v101 = v117[3];
            if (v101 != [(VOTElement *)v11 selectedTextRange]|| v102)
            {
              [(VOTElement *)v11 setSelectedTextRange:v101 refreshBraille:0, 1];
            }
          }

          _Block_object_dispose(&v116, 8);
          rangeCopy = v106;
          v25 = v107;
          goto LABEL_88;
        }

        v49 = [objc_allocWithZone(VOTOutputRequest) init];
        v53 = v122[5];
        _localeIdentifierForCurrentTable = [(VOTBrailleManager *)self _localeIdentifierForCurrentTable];
        v55 = [v49 addString:v53 withLanguage:_localeIdentifierForCurrentTable];

        if (!v29 && [v122[5] isEqualToString:@" "])
        {
          v56 = v49;
          v57 = +[NSCharacterSet whitespaceNewlineAndSpecialCharacterSet];
          v58 = 0;
          v59 = v41;
          do
          {
            v60 = v59;
            v61 = v58;
            v62 = v59-- < 1;
            if (v62)
            {
              break;
            }

            v63 = [v57 characterIsMember:{objc_msgSend(value2, "characterAtIndex:", v59)}];
            v58 = v61 + 1;
          }

          while ((v63 & 1) == 0);
          v49 = v56;
          if (v60 < v41)
          {
            v128.length = [value2 length];
            v128.location = 0;
            v130.location = v60;
            v130.length = v61;
            v64 = NSIntersectionRange(v128, v130);
            v65 = [value2 substringWithRange:{v64.location, v64.length}];
            v66 = [AXAttributedString stringWithString:v65];

            v67 = [v56 addString:v66];
            [VOTSharedWorkspace addMisspellingsForString:v66];
            if ([v66 hasAttribute:UIAccessibilityTokenMisspelled])
            {
              v68 = sub_1000511CC(off_1001FDDD0, @"misspelled", 0);
              v69 = [v56 addString:v68];
            }
          }
        }

        [v49 setGeneratesBraille:0];
        [v49 setDoesNotInterrupt:1];
        [v49 send];
      }
    }

    else
    {
      v43 = [(VOTElement *)v11 doesHaveTraits:kAXSecureTextFieldTrait];
      if ((voiceOverHardwareTypingFeedback - 3) < 0xFFFFFFFFFFFFFFFELL)
      {
        v44 = 1;
      }

      else
      {
        v44 = v43;
      }

      if ((v44 & 1) != 0 || [v122[5] length])
      {
        v45 = 0;
      }

      else
      {
        v45 = [value2 substringWithRange:{v42.location, v42.length}];
      }

      [(VOTElement *)v11 setSelectedTextRange:&v41[v29] refreshBraille:0, 0];
      [(VOTElement *)v11 replaceCharactersAtCursor:v29 withString:v122[5] source:2];
      v104 = v45;
      v46 = [v122[5] length];
      v47 = [value2 length];
      v48 = &v41[v46];
      if (&v41[v46] >= v47)
      {
        v48 = v47;
      }

      v103 = v48;
      if (v44)
      {
        v49 = v104;
      }

      else
      {
        [value2 substringWithRange:{v42.location, v42.length}];
        v70 = v49 = v104;
        v71 = [v70 length];
        v72 = [v10 length];
        v73 = [objc_allocWithZone(VOTOutputRequest) init];
        if (v104)
        {
          v74 = [[AXAttributedString alloc] initWithString:v104];
          [v74 setAttribute:&__kCFBooleanTrue forKey:UIAccessibilityTokenLowPitch];
          _localeIdentifierForCurrentTable2 = [(VOTBrailleManager *)self _localeIdentifierForCurrentTable];
          v76 = [v73 addAttributedString:v74 withLanguage:_localeIdentifierForCurrentTable2];
        }

        else
        {
          if (v71 >= v72)
          {
            v77 = v72;
          }

          else
          {
            v77 = v71;
          }

          if (v77 < 1)
          {
            v78 = 0;
          }

          else
          {
            v78 = 0;
            while (1)
            {
              v79 = [v70 characterAtIndex:v78];
              if (v79 != [v10 characterAtIndex:v78])
              {
                break;
              }

              if (v77 == ++v78)
              {
                v78 = v77;
                break;
              }
            }
          }

          v74 = [v10 substringFromIndex:v78];
          _localeIdentifierForCurrentTable2 = [(VOTBrailleManager *)self _localeIdentifierForCurrentTable];
          v80 = [v73 addString:v74 withLanguage:_localeIdentifierForCurrentTable2];
        }

        [v73 setGeneratesBraille:0];
        v81 = v73;
        v82 = v70;
        v83 = +[NSCharacterSet wordBreakCharacterSet];
        if ([v10 length] && objc_msgSend(v83, "characterIsMember:", objc_msgSend(v10, "characterAtIndex:", objc_msgSend(v10, "length") - 1)) && objc_msgSend(value2, "length") >= v103)
        {
          v84 = 0;
          v85 = v103;
          do
          {
            v86 = v85;
            v87 = v84;
            v62 = v85-- < 1;
            if (v62)
            {
              break;
            }

            v88 = [v83 characterIsMember:{objc_msgSend(value2, "characterAtIndex:", v85)}];
            v84 = v87 + 1;
          }

          while ((v88 & 1) == 0);
          v49 = v104;
          if (v86 < v103)
          {
            v89 = [value2 substringWithRange:{v86, v87}];
            v90 = [AXAttributedString stringWithString:v89];

            [VOTSharedWorkspace addMisspellingsForString:v90];
            v49 = v104;
            if ([v90 hasAttribute:UIAccessibilityTokenMisspelled])
            {
              v91 = +[UIKeyboardPreferencesController sharedPreferencesController];
              v92 = [v91 BOOLForKey:10];

              if (v92)
              {
                v93 = sub_1000511CC(off_1001FDDD0, @"misspelled", 0);
                v94 = [v81 addString:v93];

                if ([VOTSharedWorkspace typingPitchChangeEnabled])
                {
                  lastAction = [v81 lastAction];
                  LODWORD(v96) = 1062836634;
                  v97 = [NSNumber numberWithFloat:v96];
                  [lastAction setObject:v97 forVariant:32];
                }

                [v81 setGeneratesBraille:1];
                [v81 setBrailleType:2];
              }
            }
          }
        }

        [v81 send];
      }
    }

    goto LABEL_83;
  }

  rangeValue2 = [rangeCopy rangeValue];
  v17 = v16;
  unsignedIntegerValue2 = [cursorCopy unsignedIntegerValue];
  [v14 handleReplaceRange:rangeValue2 withString:v17 cursor:{v122[5], unsignedIntegerValue2}];
LABEL_89:

  _Block_object_dispose(&v121, 8);
}

- (void)handleBrailleInsertedUntranslatedText:(id)text speakLiterally:(BOOL)literally
{
  literallyCopy = literally;
  textCopy = text;
  v6 = self->_brailleElement;
  textInputElement = [(VOTElement *)self->_brailleElement textInputElement];
  if (textInputElement && [(VOTElement *)self->_brailleElement textInputElementRange]!= 0x7FFFFFFF)
  {
    v8 = textInputElement;

    v6 = v8;
  }

  v9 = kAXSecureTextFieldTrait;
  if ([(VOTElement *)v6 doesHaveTraits:kAXSecureTextFieldTrait])
  {
    v10 = 1;
  }

  else
  {
    application = [(VOTElement *)v6 application];
    firstResponderElement = [application firstResponderElement];
    v10 = [firstResponderElement doesHaveTraits:v9];
  }

  v13 = +[AXFirstResponderValueChangeManager sharedInstance];
  wordBreakSet = [v13 wordBreakSet];

  v15 = +[AXSettings sharedInstance];
  voiceOverHardwareTypingFeedback = [v15 voiceOverHardwareTypingFeedback];

  if ((v10 & 1) == 0 && (voiceOverHardwareTypingFeedback | 2) == 2)
  {
    v17 = [objc_allocWithZone(VOTOutputRequest) init];
    v18 = [textCopy length];
    if (voiceOverHardwareTypingFeedback == 2 && v18 && [wordBreakSet characterIsMember:{objc_msgSend(textCopy, "characterAtIndex:", 0)}])
    {
      v19 = sub_100053424(v6, 0);
      if (v19)
      {
        v20 = [[AXAttributedString alloc] initWithString:v19];
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = [[AXAttributedString alloc] initWithString:textCopy];
      v19 = [NSNumber numberWithBool:literallyCopy];
      [v20 setAttribute:v19 forKey:UIAccessibilityTokenLiteralText];
    }

    _localeIdentifierForCurrentInputTable = [(VOTBrailleManager *)self _localeIdentifierForCurrentInputTable];
    v22 = [v17 addAttributedString:v20 withLanguage:_localeIdentifierForCurrentInputTable];

    if ([VOTSharedWorkspace typingPitchChangeEnabled])
    {
      outputActions = [v17 outputActions];
      lastObject = [outputActions lastObject];
      LODWORD(v25) = 1.5;
      v26 = [NSNumber numberWithFloat:v25];
      [lastObject setObject:v26 forVariant:32];
    }

    [v17 setGeneratesBraille:0];
    [v17 send];
  }
}

- (void)handleBrailleDeletedUntranslatedText:(id)text speakLiterally:(BOOL)literally
{
  literallyCopy = literally;
  textCopy = text;
  v6 = self->_brailleElement;
  textInputElement = [(VOTElement *)self->_brailleElement textInputElement];
  if (textInputElement && [(VOTElement *)self->_brailleElement textInputElementRange]!= 0x7FFFFFFF)
  {
    v8 = textInputElement;

    v6 = v8;
  }

  v9 = kAXSecureTextFieldTrait;
  if ([(VOTElement *)v6 doesHaveTraits:kAXSecureTextFieldTrait])
  {
    v10 = 0;
  }

  else
  {
    application = [(VOTElement *)v6 application];
    firstResponderElement = [application firstResponderElement];
    v13 = [firstResponderElement doesHaveTraits:v9];

    v10 = v13 ^ 1;
  }

  v14 = +[AXSettings sharedInstance];
  voiceOverHardwareTypingFeedback = [v14 voiceOverHardwareTypingFeedback];

  if (v10 && (voiceOverHardwareTypingFeedback & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    v16 = [objc_allocWithZone(VOTOutputRequest) init];
    v17 = +[AXSettings sharedInstance];
    voiceOverDeletionFeedback = [v17 voiceOverDeletionFeedback];

    if (voiceOverDeletionFeedback)
    {
      v19 = +[AXSettings sharedInstance];
      voiceOverDeletionFeedback2 = [v19 voiceOverDeletionFeedback];

      if (voiceOverDeletionFeedback2 == 3)
      {
        v21 = 0;
        v22 = 0x7FFFFFFFFFFFFFFFLL;
        v23 = &stru_1001CBF90;
      }

      else
      {
        v23 = textCopy;
        v21 = 0;
        v22 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v24 = sub_1000511CC(off_1001FDDD0, @"delete.text.prefix", 0);
      v22 = [v24 rangeOfString:@"%@"];
      v21 = [textCopy length];
      v36 = textCopy;
      v23 = AXCFormattedString();
    }

    _localeIdentifierForCurrentTable = [(VOTBrailleManager *)self _localeIdentifierForCurrentTable];
    v26 = [v16 addString:v23 withLanguage:_localeIdentifierForCurrentTable];

    if (literallyCopy && v22 != 0x7FFFFFFFFFFFFFFFLL && v21 == 1)
    {
      v27 = +[NSMutableIndexSet indexSet];
      [v27 addIndexesInRange:{v22, 1}];
      outputActions = [v16 outputActions];
      lastObject = [outputActions lastObject];
      [lastObject setObject:v27 forVariant:29];
    }

    [v16 setGeneratesBraille:0];
    v30 = +[AXSettings sharedInstance];
    voiceOverDeletionFeedback3 = [v30 voiceOverDeletionFeedback];

    if (voiceOverDeletionFeedback3 == 1)
    {
      outputActions2 = [v16 outputActions];
      [outputActions2 enumerateObjectsUsingBlock:&stru_1001CAC38];
    }

    v33 = +[AXSettings sharedInstance];
    voiceOverDeletionFeedback4 = [v33 voiceOverDeletionFeedback];

    if (voiceOverDeletionFeedback4 == 2)
    {
      outputActions3 = [v16 outputActions];
      [outputActions3 enumerateObjectsUsingBlock:&stru_1001CAC58];
    }

    [v16 send];
  }
}

- (void)handleBrailleSpeechRequest:(id)request language:(id)language shouldQueue:(BOOL)queue
{
  queueCopy = queue;
  threadKey = self->_threadKey;
  languageCopy = language;
  requestCopy = request;
  [(VOTBrailleManager *)self threadWaitTime];
  v12 = v11;
  v13 = [NSNumber numberWithBool:queueCopy];
  [(VOTBrailleManager *)self performSelector:"_handleBrailleSpeechRequest:language:shouldQueue:" withThreadKey:threadKey waitTime:0 cancelMask:3 count:requestCopy objects:v12, languageCopy, v13];
}

- (void)_handleBrailleSpeechRequest:(id)request language:(id)language shouldQueue:(id)queue
{
  languageCopy = language;
  queueCopy = queue;
  requestCopy = request;
  v9 = [objc_allocWithZone(VOTOutputRequest) init];
  v10 = [[AXAttributedString alloc] initWithString:requestCopy];

  v11 = [v9 addAttributedString:v10 withLanguage:languageCopy];
  [v9 setGeneratesBraille:0];
  bOOLValue = [queueCopy BOOLValue];

  [v9 setDoesNotInterrupt:bOOLValue];
  [v9 send];
}

- (void)handleBrailleDidPanLeft:(id)left elementToken:(id)token appToken:(id)appToken lineOffset:(id)offset
{
  threadKey = self->_threadKey;
  offsetCopy = offset;
  appTokenCopy = appToken;
  tokenCopy = token;
  leftCopy = left;
  [(VOTBrailleManager *)self threadWaitTime];
  v16 = v15;
  v17 = [NSNumber numberWithInt:0];
  [(VOTBrailleManager *)self performSelector:"_dispatchBrailleDidPanWithSuccess:elementToken:appToken:direction:lineOffset:" withThreadKey:threadKey waitTime:0 cancelMask:5 count:leftCopy objects:v16, tokenCopy, appTokenCopy, v17, offsetCopy];

  v18 = +[VOTUserEventManager sharedInstance];
  [v18 userEventOccurred];
}

- (void)handleBrailleDidPanRight:(id)right elementToken:(id)token appToken:(id)appToken lineOffset:(id)offset
{
  threadKey = self->_threadKey;
  offsetCopy = offset;
  appTokenCopy = appToken;
  tokenCopy = token;
  rightCopy = right;
  [(VOTBrailleManager *)self threadWaitTime];
  v16 = v15;
  v17 = [NSNumber numberWithInt:1];
  [(VOTBrailleManager *)self performSelector:"_dispatchBrailleDidPanWithSuccess:elementToken:appToken:direction:lineOffset:" withThreadKey:threadKey waitTime:0 cancelMask:5 count:rightCopy objects:v16, tokenCopy, appTokenCopy, v17, offsetCopy];

  v18 = +[VOTUserEventManager sharedInstance];
  [v18 userEventOccurred];
}

- (void)handleBrailleDisplayCopyStringToClipboard:(id)clipboard
{
  clipboardCopy = clipboard;
  v4 = +[AXSpringBoardServer server];
  [v4 copyStringToPasteboard:clipboardCopy];
}

- (BOOL)_brailleShouldTryToTurnPage:(id)page direction:(int64_t)direction
{
  v6 = +[AXSettings sharedInstance];
  voiceOverTouchBraillePanningAutoTurnsReadingContent = [v6 voiceOverTouchBraillePanningAutoTurnsReadingContent];

  if (!voiceOverTouchBraillePanningAutoTurnsReadingContent)
  {
    return 0;
  }

  brailleElement = self->_brailleElement;
  if (direction == 2)
  {
    if ([(VOTElement *)brailleElement isReadingContent])
    {
      includeDuringContentReading = 1;
    }

    else
    {
      includeDuringContentReading = [(VOTElement *)self->_brailleElement includeDuringContentReading];
    }

    previousElement = [(VOTElement *)self->_brailleElement previousElement];
    if ([previousElement isReadingContent])
    {
      LOBYTE(v12) = 0;
    }

    else
    {
      previousElement2 = [(VOTElement *)self->_brailleElement previousElement];
      v12 = [previousElement2 includeDuringContentReading] ^ 1;
    }

    return includeDuringContentReading & v12;
  }

  else
  {

    return [(VOTElement *)brailleElement readingContentCausesPageTurn];
  }
}

- (void)_dispatchBrailleDidPanWithSuccess:(id)success elementToken:(id)token appToken:(id)appToken direction:(id)direction lineOffset:(id)offset
{
  successCopy = success;
  tokenCopy = token;
  directionCopy = direction;
  offsetCopy = offset;
  v15 = VOTLogBraille();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v44 = directionCopy;
    v45 = 2112;
    v46 = successCopy;
    v47 = 2112;
    v48 = offsetCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "braille pan direction: %@, success: %@, lineoffset: %@", buf, 0x20u);
  }

  self->_lastBraillePanDirection = [directionCopy intValue];
  self->_lastBraillePanSucceeded = [successCopy BOOLValue];
  self->_brailleLineOffset = [offsetCopy integerValue];
  if (([successCopy BOOLValue] & 1) == 0)
  {
    v16 = +[VOTCommandHelper commandHelper];
    helpEnabled = [v16 helpEnabled];

    if (helpEnabled)
    {
      intValue = [directionCopy intValue];
      v19 = &kVOTEventCommandBraillePanLeft;
      if (intValue)
      {
        v19 = &kVOTEventCommandBraillePanRight;
      }

      v20 = *v19;
      v21 = [VOTEvent brailleEventWithCommand:v20 info:0];
      [VOTSharedWorkspace dispatchCommand:v21];
      goto LABEL_17;
    }

    displayMode = [(SCROBrailleClient *)self->_brailleClient displayMode];
    if (displayMode <= 1)
    {
      if (displayMode)
      {
        if (displayMode != 1)
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      }

      if (([(SCROBrailleClient *)self->_brailleClient isCandidateSelectionOn]& 1) != 0)
      {
        goto LABEL_18;
      }

      if ([(SCROBrailleClient *)self->_brailleClient isWordDescriptionOn])
      {
        if ([directionCopy intValue])
        {
          if ([directionCopy intValue] == 1)
          {
            [(SCROBrailleClient *)self->_brailleClient showNextWordDescription];
          }
        }

        else
        {
          [(SCROBrailleClient *)self->_brailleClient showPreviousWordDescription];
        }

        goto LABEL_18;
      }

      if ([tokenCopy unsignedIntegerValue] != self->_brailleElementIndex)
      {
        goto LABEL_18;
      }

      intValue2 = [directionCopy intValue];
      location = self->_brailleLineRange.location;
      if (intValue2)
      {
        if (location != 0x7FFFFFFFFFFFFFFFLL)
        {
          v27 = self->_brailleLineRange.length + location;
          if (v27 < self->_brailleDescriptionRange.length + self->_brailleDescriptionRange.location)
          {
            self->_brailleLineRange.location = v27 + 1;
            self->_brailleLineRange.length = 0;
            if ([(VOTElement *)self->_brailleElement brailleTextEntrySupported])
            {
              textInputElement = [(VOTElement *)self->_brailleElement textInputElement];
              if (textInputElement)
              {
                textInputElementRange = [(VOTElement *)self->_brailleElement textInputElementRange];
                if (textInputElementRange != 0x7FFFFFFF && self->_brailleLineRange.location > textInputElementRange + v30)
                {
                  v31 = &kVOTEventCommandNextElement;
                  goto LABEL_44;
                }
              }

LABEL_54:

              goto LABEL_55;
            }

            goto LABEL_55;
          }
        }

        if ([(VOTBrailleManager *)self _brailleShouldTryToTurnPage:self->_brailleElement direction:1])
        {
          v32 = kVOTEventCommandScrollRightPage;
LABEL_50:
          v36 = v32;
          self->_brailleLineRange = xmmword_10017E1D0;
          goto LABEL_59;
        }

        if ([(VOTElement *)self->_brailleElement isLiveCaptionsTextView])
        {
          nextElement = [(VOTElement *)self->_brailleElement nextElement];
          isLiveCaptionsTextView = [nextElement isLiveCaptionsTextView];

          if (!isLiveCaptionsTextView)
          {
            goto LABEL_56;
          }
        }

        v41 = &kVOTEventCommandNextElement;
      }

      else
      {
        if (location != 0x7FFFFFFFFFFFFFFFLL && location > self->_brailleDescriptionRange.location)
        {
          self->_brailleLineRange.location = location - 1;
          self->_brailleLineRange.length = 0;
          if ([(VOTElement *)self->_brailleElement brailleTextEntrySupported])
          {
            textInputElement = [(VOTElement *)self->_brailleElement textInputElement];
            if (textInputElement)
            {
              textInputElementRange2 = [(VOTElement *)self->_brailleElement textInputElementRange];
              if (textInputElementRange2 != 0x7FFFFFFF && self->_brailleLineRange.location < textInputElementRange2)
              {
                v31 = &kVOTEventCommandPreviousElement;
LABEL_44:
                v34 = *v31;
                v35 = textInputElement;
                v36 = v34;

                if (v36)
                {
                  goto LABEL_59;
                }

                goto LABEL_55;
              }
            }

            goto LABEL_54;
          }

LABEL_55:
          [(VOTBrailleManager *)self _refreshBrailleLinePreferringPositionOverRotorSelection:1 knownLineRange:0 updatedPosition:0];
LABEL_56:
          v36 = 0;
          goto LABEL_59;
        }

        if ([(VOTElement *)self->_brailleElement isLiveCaptionsTextView])
        {
          previousElement = [(VOTElement *)self->_brailleElement previousElement];
          isLiveCaptionsTextView2 = [previousElement isLiveCaptionsTextView];

          if (!isLiveCaptionsTextView2)
          {
            goto LABEL_56;
          }
        }

        if ([(VOTBrailleManager *)self _brailleShouldTryToTurnPage:self->_brailleElement direction:2])
        {
          v32 = kVOTEventCommandScrollLeftPage;
          goto LABEL_50;
        }

        v41 = &kVOTEventCommandPreviousElement;
      }

      v36 = *v41;
LABEL_59:
      if (v36 == kVOTEventCommandScrollLeftPage || v36 == kVOTEventCommandScrollRightPage)
      {
        [(VOTBrailleManager *)self setPanEnabled:0];
        AXPerformBlockOnMainThreadAfterDelay();
      }

      if (v36)
      {
        v42 = [VOTEvent brailleEventWithCommand:v36 info:0];
        [v42 setObject:&__kCFBooleanTrue forIndex:119];
        [VOTSharedWorkspace dispatchCommand:v42];
      }

      goto LABEL_18;
    }

    if (displayMode == 3)
    {
LABEL_16:
      v21 = +[VOTOutputManager outputManager];
      v20 = +[VOSOutputEvent BoundaryEncountered];
      [v21 sendEvent:v20];
LABEL_17:

      goto LABEL_18;
    }

    if (displayMode == 2)
    {
      intValue3 = [directionCopy intValue];
      brailleClient = self->_brailleClient;
      if (intValue3)
      {
        [(SCROBrailleClient *)brailleClient showNextAnnouncement];
      }

      else
      {
        [(SCROBrailleClient *)brailleClient showPreviousAnnouncement];
      }
    }
  }

LABEL_18:
}

- (void)handlePlanarPanFailedIsLeft:(BOOL)left
{
  leftCopy = left;
  threadKey = self->_threadKey;
  [(VOTBrailleManager *)self threadWaitTime];
  v7 = v6;
  v8 = [NSNumber numberWithBool:leftCopy];
  [(VOTBrailleManager *)self performSelector:"_dispatchPlanarPanFailedIsLeft:" withThreadKey:threadKey waitTime:0 cancelMask:1 count:v8 objects:v7];

  v9 = +[VOTUserEventManager sharedInstance];
  [v9 userEventOccurred];
}

- (void)_dispatchPlanarPanFailedIsLeft:(id)left
{
  leftCopy = left;
  v5 = +[VOTPlanarBrailleManager manager];
  bOOLValue = [leftCopy BOOLValue];

  [v5 handlePlanarPanFailedIsLeft:bOOLValue];
}

- (void)setPersistentKeyModifiers:(unsigned int)modifiers
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000DDE68;
  v3[3] = &unk_1001CA1E0;
  v3[4] = self;
  modifiersCopy = modifiers;
  [(VOTBrailleManager *)self performAsyncBlock:v3 forThreadKey:self->_threadKey];
}

- (void)setLastUserInteractionTime:(double)time
{
  if (time - self->_lastUserInteractionTime >= 2.0)
  {
    self->_lastUserInteractionTime = time;
    v5 = AXLogBrailleHW();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      timeCopy = time;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Setting last user interaction time: %f", buf, 0xCu);
    }

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000DDF9C;
    v6[3] = &unk_1001C7900;
    v6[4] = self;
    *&v6[5] = time;
    [(VOTBrailleManager *)self performAsyncBlock:v6 forThreadKey:self->_threadKey];
  }
}

- (void)userInteractedWithDeviceWithoutBraille
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000DE01C;
  v2[3] = &unk_1001C76E8;
  v2[4] = self;
  [(VOTBrailleManager *)self performAsyncBlock:v2 forThreadKey:self->_threadKey];
}

- (void)setBrailleMap:(id)map
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000DE168;
  v5[3] = &unk_1001C7778;
  selfCopy = self;
  mapCopy = map;
  threadKey = selfCopy->_threadKey;
  v4 = mapCopy;
  [(VOTBrailleManager *)selfCopy performAsyncBlock:v5 forThreadKey:threadKey];
}

- (unsigned)persistentKeyModifiers
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000DE214;
  v6[3] = &unk_1001CAC80;
  v6[4] = self;
  threadKey = self->_threadKey;
  [(VOTBrailleManager *)self threadWaitTime];
  v4 = [(VOTBrailleManager *)self valueForBlock:v6 forThreadKey:threadKey waitTime:?];
  LODWORD(threadKey) = [v4 unsignedIntValue];

  return threadKey;
}

- (void)handleBraillePlayDisplayConnectionSound:(id)sound
{
  threadKey = self->_threadKey;
  soundCopy = sound;
  [(VOTBrailleManager *)self threadWaitTime];
  [(VOTBrailleManager *)self performSelector:"_handleBraillePlayDisplayConnectionSound:" withThreadKey:threadKey waitTime:0 cancelMask:1 count:soundCopy objects:?];
}

- (void)_handleBraillePlayDisplayConnectionSound:(id)sound
{
  bOOLValue = [sound BOOLValue];
  v5 = +[VOTOutputManager outputManager];
  if (bOOLValue)
  {
    +[VOSOutputEvent BrailleDisplayConnected];
  }

  else
  {
    +[VOSOutputEvent BrailleDisplayDisconnected];
  }
  v6 = ;
  [v5 sendEvent:v6];

  [(VOTBrailleManager *)self _updateTactileGraphicsDisplays];
}

- (void)_updateTactileGraphicsDisplays
{
  v3 = +[NSMutableArray array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  driverConfiguration = [(SCROBrailleClient *)self->_brailleClient driverConfiguration];
  v5 = [driverConfiguration countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (!v5)
  {
    v20 = 0;
    goto LABEL_17;
  }

  v6 = v5;
  v20 = 0;
  v7 = *v22;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v22 != v7)
      {
        objc_enumerationMutation(driverConfiguration);
      }

      v9 = *(*(&v21 + 1) + 8 * i);
      v10 = [v9 objectForKeyedSubscript:kSCROBrailleDisplayCanvasDescriptor];
      v11 = [v9 objectForKeyedSubscript:kSCROBrailleDisplayIsMultiLine];
      bOOLValue = [v11 BOOLValue];

      if (v10 && [v10 width] && objc_msgSend(v10, "height"))
      {
        width = [v10 width];
        height = [v10 height];
      }

      else
      {
        if (!bOOLValue)
        {
          goto LABEL_13;
        }

        width = 0.0;
        v20 = 1;
        height = 0.0;
      }

      v15 = width;
      v16 = NSStringFromCGSize(*(&height - 1));
      [v3 addObject:v16];

LABEL_13:
    }

    v6 = [driverConfiguration countByEnumeratingWithState:&v21 objects:v27 count:16];
  }

  while (v6);
LABEL_17:

  v17 = AXLogBrailleHW();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v3;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Updating tactile graphics: %@", buf, 0xCu);
  }

  v18 = [v3 copy];
  _AXSVoiceOverTouchSetActive2DBrailleDisplays();

  if (v20)
  {
    v19 = +[VOTPlanarBrailleManager manager];
    [v19 avoidImageModeWithDirection:1];
  }
}

- (void)handleBraillePlayBorderHitSound
{
  threadKey = self->_threadKey;
  [(VOTBrailleManager *)self threadWaitTime];

  [(VOTBrailleManager *)self performSelector:"_handleBraillePlayBorderHitSound" withThreadKey:threadKey waitTime:0 cancelMask:0 count:0 objects:?];
}

- (void)_handleBraillePlayBorderHitSound
{
  v3 = +[VOTOutputManager outputManager];
  v2 = +[VOSOutputEvent BoundaryEncountered];
  [v3 sendEvent:v2];
}

- (void)handleBraillePlayCommandNotSupportedSound
{
  threadKey = self->_threadKey;
  [(VOTBrailleManager *)self threadWaitTime];

  [(VOTBrailleManager *)self performSelector:"_handleBraillePlayCommandNotSupportedSound" withThreadKey:threadKey waitTime:0 cancelMask:0 count:0 objects:?];
}

- (void)_handleBraillePlayCommandNotSupportedSound
{
  v3 = +[VOTOutputManager outputManager];
  v2 = +[VOSOutputEvent BoundaryEncountered];
  [v3 sendEvent:v2];
}

- (void)handleDisplayModeChanged:(id)changed
{
  threadKey = self->_threadKey;
  changedCopy = changed;
  [(VOTBrailleManager *)self threadWaitTime];
  [(VOTBrailleManager *)self performSelector:"_handleDisplayModeChanged:" withThreadKey:threadKey waitTime:0 cancelMask:1 count:changedCopy objects:?];
}

- (void)_handleDisplayModeChanged:(id)changed
{
  changedCopy = changed;
  if ([(SCRCTargetSelectorTimer *)self->_hintTimer isPending]&& ([(SCRCTargetSelectorTimer *)self->_hintTimer isCancelled]& 1) == 0)
  {
    intValue = [changedCopy intValue];
    v5 = kCFAbsoluteTimeIntervalSince1904;
    if (!intValue)
    {
      v5 = 2.0;
    }

    [(SCRCTargetSelectorTimer *)self->_hintTimer dispatchAfterDelay:v5];
  }
}

- (void)handleBrailleDidShowPreviousAnnouncement:(id)announcement
{
  bOOLValue = [announcement BOOLValue];
  v5 = +[VOTOutputManager outputManager];
  if (bOOLValue)
  {
    +[VOSOutputEvent DidWrapBackwards];
  }

  else
  {
    +[VOSOutputEvent BoundaryEncountered];
  }
  v4 = ;
  [v5 sendEvent:v4];
}

- (void)handleBrailleDidShowNextAnnouncement:(id)announcement
{
  bOOLValue = [announcement BOOLValue];
  v5 = +[VOTOutputManager outputManager];
  if (bOOLValue)
  {
    +[VOSOutputEvent DidWrapForwards];
  }

  else
  {
    +[VOSOutputEvent BoundaryEncountered];
  }
  v4 = ;
  [v5 sendEvent:v4];
}

- (void)handleBrailleStartEditing
{
  if (![(VOTElement *)self->_brailleElement brailleTextEntrySupported])
  {
    v3 = [NSAttributedString alloc];
    v7[0] = kSCROEditableTextAttribute;
    v7[1] = kSCROEditableTextPaddingAttribute;
    v8[0] = &__kCFBooleanTrue;
    v8[1] = &__kCFBooleanTrue;
    v7[2] = kSCROTokenAttribute;
    v4 = [NSNumber numberWithUnsignedInteger:self->_brailleElementIndex];
    v7[3] = kSCROCursorAttribute;
    v8[2] = v4;
    v8[3] = &__kCFBooleanTrue;
    v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];
    v6 = [v3 initWithString:@" " attributes:v5];

    [(SCROBrailleClient *)self->_brailleClient setMainAttributedString:v6];
    [(SCROBrailleClient *)self->_brailleClient displayIfNeeded];
  }
}

- (BRLTTable)brailleTableFromSettings
{
  selectedBrailleTable = [VOTSharedWorkspace selectedBrailleTable];
  if (!selectedBrailleTable)
  {
    v4 = +[AXLanguageManager sharedInstance];
    userLocale = [v4 userLocale];

    _defaultLanguageRotorItem = [(VOTBrailleManager *)self _defaultLanguageRotorItem];
    v7 = [(VOTBrailleManager *)self _tableIdentifierFromDefaultRotorItem:_defaultLanguageRotorItem forLocale:userLocale];
    if (v7)
    {
      v8 = [[BRLTTable alloc] initWithIdentifier:v7];
    }

    else
    {
      v8 = [BRLTTableEnumerator defaultTableForLocale:userLocale];
    }

    selectedBrailleTable = v8;
  }

  return selectedBrailleTable;
}

- (BRLTTable)brailleInputTableFromSettings
{
  selectedBrailleInputTable = [VOTSharedWorkspace selectedBrailleInputTable];
  if (!selectedBrailleInputTable)
  {
    v4 = +[AXLanguageManager sharedInstance];
    userLocale = [v4 userLocale];

    _defaultLanguageRotorItem = [(VOTBrailleManager *)self _defaultLanguageRotorItem];
    v7 = [(VOTBrailleManager *)self _tableIdentifierFromDefaultRotorItem:_defaultLanguageRotorItem forLocale:userLocale];
    if (v7)
    {
      v8 = [[BRLTTable alloc] initWithIdentifier:v7];
    }

    else
    {
      v8 = [BRLTTableEnumerator defaultTableForLocale:userLocale];
    }

    selectedBrailleInputTable = v8;
  }

  return selectedBrailleInputTable;
}

- (id)_defaultLanguageRotorItem
{
  [VOTSharedWorkspace brailleLanguageRotorItems];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 objectForKeyedSubscript:{@"Default", v12}];
        bOOLValue = [v8 BOOLValue];

        if (bOOLValue)
        {
          v10 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)_tableIdentifierFromDefaultRotorItem:(id)item forLocale:(id)locale
{
  localeCopy = locale;
  v6 = [item objectForKeyedSubscript:@"LanguageDefaults"];
  localeIdentifier = [localeCopy localeIdentifier];

  v8 = [v6 objectForKeyedSubscript:localeIdentifier];

  return v8;
}

- (id)_localeIdentifierForTableIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[BRLTTable alloc] initWithIdentifier:identifierCopy];

  localeIdentifier = [v4 localeIdentifier];

  return localeIdentifier;
}

- (BOOL)testingHasActiveDisplay
{
  if (self->_testingHasActiveDisplay)
  {
    return 1;
  }

  v3 = +[AXSettings sharedInstance];
  voiceOverTouchUpdateBrailleWithoutConnectedDisplay = [v3 voiceOverTouchUpdateBrailleWithoutConnectedDisplay];

  return voiceOverTouchUpdateBrailleWithoutConnectedDisplay;
}

- (unint64_t)testingBrailleElementIndex
{
  v2 = [(VOTBrailleManager *)self valueForKeyPath:@"_brailleElementIndex" forThreadKey:self->_threadKey waitTime:kSCRCThreadWaitForever];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (_NSRange)rangeOfCellRepresentingCharacterAtIndex:(int64_t)index
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000DF068;
  v9[3] = &unk_1001CACA8;
  v9[4] = self;
  v9[5] = index;
  threadKey = self->_threadKey;
  [(VOTBrailleManager *)self threadWaitTime:_NSConcreteStackBlock];
  v5 = [(VOTBrailleManager *)self valueForBlock:v9 forThreadKey:threadKey waitTime:?];
  v6 = NSRangeFromString(v5);

  location = v6.location;
  length = v6.length;
  result.length = length;
  result.location = location;
  return result;
}

- (SCROBrailleClient)testingBrailleClient
{
  threadKey = self->_threadKey;
  [(VOTBrailleManager *)self threadWaitTime];
  [(VOTBrailleManager *)self performSelector:"testingBrailleElement" withThreadKey:threadKey waitTime:0 cancelMask:0 count:0 objects:?];
  brailleClient = self->_brailleClient;

  return brailleClient;
}

- (void)configureForUnitTesting
{
  [(VOTBrailleManager *)self setThreadWaitTime:kSCRCThreadWaitMedium];

  [(VOTBrailleManager *)self setTestingHasActiveDisplay:1];
}

- (BOOL)brailleEnabled
{
  if (AXDeviceIsAudioAccessory())
  {
    return 0;
  }

  if (self->_hasActiveDisplay)
  {
    return 1;
  }

  return [(VOTBrailleManager *)self testingHasActiveDisplay];
}

- (void)resetTestingAggregatedStatus
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000DF23C;
  v2[3] = &unk_1001C76E8;
  v2[4] = self;
  [(VOTBrailleManager *)self performAsyncBlock:v2 forThreadKey:self->_threadKey];
}

- (void)refreshBrailleForTerminalOutput:(id)output
{
  outputCopy = output;
  v5 = [NSAttributedString alloc];
  v9[0] = kSCROTokenAttribute;
  v6 = [NSNumber numberWithUnsignedInteger:self->_brailleElementIndex];
  v9[1] = kSCROTerminalOutputAttribute;
  v10[0] = v6;
  v10[1] = &__kCFBooleanTrue;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  v8 = [v5 initWithString:outputCopy attributes:v7];

  [(SCROBrailleClient *)self->_brailleClient setMainAttributedString:v8];
  [(SCROBrailleClient *)self->_brailleClient displayIfNeeded];
}

- (void)refreshBrailleForTerminalCommand:(id)command cursor:(int64_t)cursor
{
  commandCopy = command;
  v7 = [NSMutableAttributedString alloc];
  v17 = kSCROEditableTextAttribute;
  v18 = &__kCFBooleanTrue;
  v8 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v9 = [v7 initWithString:commandCopy attributes:v8];

  v10 = [NSMutableAttributedString alloc];
  v15 = kSCROEditableTextPaddingAttribute;
  v16 = &__kCFBooleanTrue;
  v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v12 = [v10 initWithString:@" " attributes:v11];

  [v9 appendAttributedString:v12];
  [v9 addAttribute:kSCROCursorAttribute value:&__kCFBooleanTrue range:{cursor, 1}];
  v13 = kSCROTokenAttribute;
  v14 = [NSNumber numberWithUnsignedInteger:self->_brailleElementIndex];
  [v9 addAttribute:v13 value:v14 range:{0, objc_msgSend(v9, "length")}];

  [(SCROBrailleClient *)self->_brailleClient setMainAttributedString:v9];
  [(SCROBrailleClient *)self->_brailleClient displayIfNeeded];
}

- (void)setPlanarData:(id)data
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000DF5E0;
  v5[3] = &unk_1001C7778;
  selfCopy = self;
  dataCopy = data;
  threadKey = selfCopy->_threadKey;
  v4 = dataCopy;
  [(VOTBrailleManager *)selfCopy performAsyncBlock:v5 forThreadKey:threadKey];
}

- (BOOL)handleKeyboardPerkinsInput:(id)input chordOnly:(BOOL)only
{
  onlyCopy = only;
  inputCopy = input;
  keyCode = [inputCopy keyCode];
  if (keyCode <= 78)
  {
    if (keyCode == 40)
    {
      v8 = &kVOTEventCommandReturn;
      goto LABEL_21;
    }

    if (keyCode != 41)
    {
      if (keyCode != 42)
      {
        goto LABEL_28;
      }

      v8 = &kVOTEventCommandDelete;
      goto LABEL_21;
    }

    if (([(SCROBrailleClient *)self->_brailleClient isBrailleUIActive]& 1) != 0)
    {
      v8 = &kVOTEventCommandEscape;
      goto LABEL_21;
    }

    if ([VOTSharedWorkspace perkinsKeyboardInputEnabled] && objc_msgSend(inputCopy, "keyDown"))
    {
      v12 = [VOTEvent keyEventWithCommand:kVOTEventCommandTogglePerkinsKeyboardInput keyInfo:0];
      elementManager = [VOTSharedWorkspace elementManager];
      [elementManager handleEvent:v12];
    }

LABEL_28:
    [(NSLock *)self->_keyboardVirtualDisplayLock lock];
    if (qword_1001FEE10 != -1)
    {
      sub_10012EAB0();
    }

    v14 = qword_1001FEE08;
    v15 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [inputCopy keyCode]);
    v16 = [v14 objectForKeyedSubscript:v15];

    unsignedIntegerValue = [v16 unsignedIntegerValue];
    if (onlyCopy && v16)
    {
      if ((self->_keyboardVirtualDisplayRegisteredKeys & 0x200) == 0 && unsignedIntegerValue != 512)
      {
        [(NSLock *)self->_keyboardVirtualDisplayLock unlock];
        goto LABEL_45;
      }
    }

    else if (onlyCopy || !v16)
    {
      [(NSLock *)self->_keyboardVirtualDisplayLock unlock];
      if (!v16 && [inputCopy keyCode] >= 4 && objc_msgSend(inputCopy, "keyCode") <= 0x38)
      {
        v21 = +[VOTOutputManager outputManager];
        v22 = +[VOSOutputEvent BoundaryEncountered];
        [v21 sendEvent:v22];

        v11 = 1;
LABEL_65:

        v10 = 0;
        goto LABEL_66;
      }

LABEL_45:
      v11 = 0;
      goto LABEL_65;
    }

    keyDown = [inputCopy keyDown];
    keyboardVirtualDisplayDownKeys = self->_keyboardVirtualDisplayDownKeys;
    if (keyDown)
    {
      [(NSMutableSet *)keyboardVirtualDisplayDownKeys addObject:v16];
      v20 = self->_keyboardVirtualDisplayRegisteredKeys | [v16 unsignedIntegerValue];
      self->_keyboardVirtualDisplayRegisteredKeys = v20;
      v11 = 1;
      if (v20 != 512 && (v20 & 0x200) != 0)
      {
        self->_keyboardVirtualDisplayIsEnteringChord = 1;
      }

      goto LABEL_64;
    }

    [(NSMutableSet *)keyboardVirtualDisplayDownKeys removeObject:v16];
    v23 = [(NSMutableSet *)self->_keyboardVirtualDisplayDownKeys count];
    if ([(NSMutableSet *)self->_keyboardVirtualDisplayDownKeys count]== 1)
    {
      v24 = [(NSMutableSet *)self->_keyboardVirtualDisplayDownKeys containsObject:&off_1001DAB38];
      v25 = v24;
      if (onlyCopy && (v24 & 1) != 0)
      {
        keyboardVirtualDisplayRegisteredKeys = self->_keyboardVirtualDisplayRegisteredKeys;
        v32 = 0;
        v33 = &v32;
        v34 = 0x2020000000;
        v27 = self->_keyboardVirtualDisplayRegisteredKeys;
        v35 = v27;
        v28 = 1;
        if (keyboardVirtualDisplayRegisteredKeys == 512)
        {
          v11 = 0;
          goto LABEL_61;
        }

        v25 = 1;
LABEL_57:
        if (v27 != 512 || !self->_keyboardVirtualDisplayIsEnteringChord)
        {
          v31[0] = _NSConcreteStackBlock;
          v31[1] = 3221225472;
          v31[2] = sub_1000DFC00;
          v31[3] = &unk_1001CACF0;
          v31[4] = self;
          v31[5] = &v32;
          [(VOTBrailleManager *)self performAsyncBlock:v31 forThreadKey:self->_threadKey];
        }

        v11 = 1;
        if ((v25 & 1) == 0)
        {
          v29 = 0;
          goto LABEL_63;
        }

LABEL_61:
        v29 = 512;
LABEL_63:
        self->_keyboardVirtualDisplayRegisteredKeys = v29;
        self->_keyboardVirtualDisplayIsEnteringChord = v28;
        _Block_object_dispose(&v32, 8);
        goto LABEL_64;
      }
    }

    else
    {
      v25 = 0;
    }

    if (v23 && (v25 & 1) == 0)
    {
      v11 = 1;
LABEL_64:
      [(NSLock *)self->_keyboardVirtualDisplayLock unlock];
      goto LABEL_65;
    }

    v28 = v25 & 1;
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v27 = self->_keyboardVirtualDisplayRegisteredKeys;
    v35 = v27;
    goto LABEL_57;
  }

  if (keyCode <= 80)
  {
    if (keyCode == 79)
    {
      if (![(SCROBrailleClient *)self->_brailleClient isBrailleUIActive])
      {
        goto LABEL_28;
      }

      v8 = &kVOTEventCommandNextCharacter;
    }

    else
    {
      if (([(SCROBrailleClient *)self->_brailleClient isBrailleUIActive]& 1) == 0)
      {
        goto LABEL_28;
      }

      v8 = &kVOTEventCommandPreviousCharacter;
    }

    goto LABEL_21;
  }

  if (keyCode != 81)
  {
    if (keyCode == 82 && ([(SCROBrailleClient *)self->_brailleClient isBrailleUIActive]& 1) != 0)
    {
      v8 = &kVOTEventCommandPreviousElement;
      goto LABEL_21;
    }

    goto LABEL_28;
  }

  if (([(SCROBrailleClient *)self->_brailleClient isBrailleUIActive]& 1) == 0)
  {
    goto LABEL_28;
  }

  v8 = &kVOTEventCommandNextElement;
LABEL_21:
  v9 = *v8;
  if (!v9)
  {
    goto LABEL_28;
  }

  v10 = v9;
  if ([inputCopy keyDown])
  {
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1000DFAC8;
    v36[3] = &unk_1001C7778;
    v36[4] = self;
    v10 = v10;
    v37 = v10;
    [(VOTBrailleManager *)self performAsyncBlock:v36 forThreadKey:self->_threadKey];
  }

  v11 = 1;
LABEL_66:

  return v11;
}

- (void)handleBSICommandModeInput:(id)input
{
  v4 = [input characterAtIndex:0];
  v5 = 0;
  v6 = 512;
  do
  {
    v7 = v5 + 1;
    if ((v4 >> v5))
    {
      if (v7 > 8)
      {
        v8 = 0;
      }

      else
      {
        v8 = qword_10017E5E0[v5];
      }

      v6 |= v8;
    }

    v5 = v7;
  }

  while (v7 != 8);
  if (objc_opt_respondsToSelector())
  {
    brailleClient = self->_brailleClient;

    [(SCROBrailleClient *)brailleClient systemVirtualDisplayPressKeyChord:v6];
  }
}

- (void)_showBrailleUIMigrationMessage
{
  if ([(VOTBrailleManager *)self _isBrailleUIEnabled])
  {
    v2 = +[AXSettings sharedInstance];
    voiceOverTouchBrailleUIMigrationMessageAnnounced = [v2 voiceOverTouchBrailleUIMigrationMessageAnnounced];

    if ((voiceOverTouchBrailleUIMigrationMessageAnnounced & 1) == 0)
    {
      v7 = objc_opt_new();
      v4 = sub_1000511CC(off_1001FDDD0, @"braille.ui.migration.alert", 0);
      v5 = [v7 addString:v4];

      [v7 setGeneratesBraille:1];
      [v7 setBrailleType:2];
      [v7 setCannotBeInterrupted:1];
      [v7 send];
      v6 = +[AXSettings sharedInstance];
      [v6 setVoiceOverTouchBrailleUIMigrationMessageAnnounced:1];
    }
  }
}

- (void)toggleBrailleUIActive
{
  threadKey = self->_threadKey;
  [(VOTBrailleManager *)self threadWaitTime];

  [(VOTBrailleManager *)self performSelector:"_toggleBrailleUIActive" withThreadKey:threadKey waitTime:0 cancelMask:0 count:0 objects:?];
}

- (void)_toggleBrailleUIActive
{
  if ([(SCROBrailleClient *)self->_brailleClient isBrailleUIActive])
  {
    v3 = &__kCFBooleanFalse;
  }

  else
  {
    v3 = &__kCFBooleanTrue;
  }

  [(VOTBrailleManager *)self _setBrailleUIActive:v3 withOptions:&__NSDictionary0__struct];
}

- (void)activateBrailleUIWithCommand:(id)command
{
  threadKey = self->_threadKey;
  commandCopy = command;
  [(VOTBrailleManager *)self threadWaitTime];
  [(VOTBrailleManager *)self performSelector:"_activateBrailleUIWithCommand:" withThreadKey:threadKey waitTime:0 cancelMask:1 count:commandCopy objects:?];
}

- (void)_activateBrailleUIWithCommand:(id)command
{
  commandCopy = command;
  if ([commandCopy isEqualToString:kVOTEventCommandActivateBrailleUILaunchApp])
  {
    v5 = 0;
LABEL_15:
    v8 = @"openInApp";
    v6 = [NSNumber numberWithUnsignedInteger:v5];
    v9 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    [(VOTBrailleManager *)self _setBrailleUIActive:&__kCFBooleanTrue withOptions:v7];

    goto LABEL_16;
  }

  if ([commandCopy isEqualToString:kVOTEventCommandActivateBrailleUIChooseItem])
  {
    v5 = 1;
    goto LABEL_15;
  }

  if ([commandCopy isEqualToString:kVOTEventCommandActivateBrailleUIBrailleNotes])
  {
    v5 = 2;
    goto LABEL_15;
  }

  if ([commandCopy isEqualToString:kVOTEventCommandActivateBrailleUIFinder])
  {
    v5 = 3;
    goto LABEL_15;
  }

  if ([commandCopy isEqualToString:kVOTEventCommandActivateBrailleUINemethCalculator])
  {
    v5 = 4;
    goto LABEL_15;
  }

  if ([commandCopy isEqualToString:kVOTEventCommandActivateBrailleUILiveCaptions])
  {
    v5 = 5;
    goto LABEL_15;
  }

  if ([commandCopy isEqualToString:kVOTEventCommandActivateBrailleUIDateTime])
  {
    v5 = 6;
    goto LABEL_15;
  }

LABEL_16:
}

- (void)setBrailleUIActive:(BOOL)active withOptions:(id)options
{
  activeCopy = active;
  threadKey = self->_threadKey;
  optionsCopy = options;
  [(VOTBrailleManager *)self threadWaitTime];
  v9 = v8;
  v10 = [NSNumber numberWithBool:activeCopy];
  [(VOTBrailleManager *)self performSelector:"_setBrailleUIActive:withOptions:" withThreadKey:threadKey waitTime:0 cancelMask:2 count:v10 objects:v9, optionsCopy];
}

- (void)_setBrailleUIActive:(id)active withOptions:(id)options
{
  optionsCopy = options;
  bOOLValue = [active BOOLValue];
  brailleClient = self->_brailleClient;
  if (bOOLValue)
  {
    [(SCROBrailleClient *)brailleClient startBrailleUIWithOptions:optionsCopy];
  }

  else
  {
    [(SCROBrailleClient *)brailleClient endBrailleUIWithOptions:optionsCopy];
  }
}

- (void)handleDidBrailleUIEnd
{
  [(VOTBrailleManager *)self _announceBrailleUIStateChange:0];
  v2 = VOTSharedWorkspace;

  [v2 setKeyboardBrailleUIEnabled:0];
}

- (void)_announceBrailleUIStateChange:(BOOL)change
{
  changeCopy = change;
  if (change)
  {
    v4 = @"braille.ui.on";
  }

  else
  {
    v4 = @"braille.ui.off";
  }

  v5 = sub_1000511CC(off_1001FDDD0, v4, 0);
  v6 = [objc_allocWithZone(VOTOutputRequest) init];
  v7 = [v6 addString:v5];
  [v6 setCannotBeInterrupted:1];
  sub_100009588(v6);
  [v6 send];
  v8 = VOTLogBraille();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [NSNumber numberWithBool:changeCopy];
    v10 = 138412290;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Braille Access: %@", &v10, 0xCu);
  }
}

- (void)handleBrailleUIRequest:(id)request
{
  threadKey = self->_threadKey;
  requestCopy = request;
  [(VOTBrailleManager *)self threadWaitTime];
  [(VOTBrailleManager *)self performSelector:"_handleBrailleUIRequest:" withThreadKey:threadKey waitTime:0 cancelMask:1 count:requestCopy objects:?];

  v6 = +[VOTUserEventManager sharedInstance];
  [v6 userEventOccurred];
}

- (void)_handleBrailleUIRequest:(id)request
{
  requestCopy = request;
  v5 = [requestCopy objectForKeyedSubscript:kSCROBrailleUIRequestTypeKey];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  if (unsignedIntegerValue <= 2)
  {
    if (unsignedIntegerValue)
    {
      if (unsignedIntegerValue == 1)
      {
        [(VOTBrailleManager *)self _refreshBrailleLine];
        goto LABEL_29;
      }

      if (unsignedIntegerValue == 2)
      {
        v12 = objc_opt_new();
        v13 = +[VOTElement springBoardApplication];
        launchableApps = [v13 launchableApps];

        v15 = +[VOTElement springBoardApplication];
        appIconValues = [v15 appIconValues];

        v27 = _NSConcreteStackBlock;
        v28 = 3221225472;
        v29 = sub_1000E07D4;
        v30 = &unk_1001C82E0;
        v31 = appIconValues;
        v32 = v12;
        v17 = v12;
        v18 = appIconValues;
        [launchableApps enumerateKeysAndObjectsUsingBlock:&v27];
        [(SCROBrailleClient *)self->_brailleClient handleBrailleUIResponse:v17 forRequest:requestCopy, v27, v28, v29, v30];

        goto LABEL_27;
      }
    }

    else if ([(VOTBrailleManager *)self _shouldTriggerBrailleUI])
    {
      v19 = +[UIPasteboard generalPasteboard];
      string = [v19 string];

      if (string)
      {
        v21 = string;
      }

      else
      {
        v21 = &stru_1001CBF90;
      }

      [(SCROBrailleClient *)self->_brailleClient handleBrailleUIResponse:v21 forRequest:requestCopy];
    }
  }

  else
  {
    if (unsignedIntegerValue <= 4)
    {
      if (unsignedIntegerValue != 3)
      {
        elementFetcher = [(VOTBrailleManager *)self elementFetcher];

        if (!elementFetcher)
        {
          v8 = objc_opt_new();
          [(VOTBrailleManager *)self setElementFetcher:v8];

          elementFetcher2 = [(VOTBrailleManager *)self elementFetcher];
          [elementFetcher2 setDelegate:self];
        }

        elementFetcher3 = [(VOTBrailleManager *)self elementFetcher];
        currentElement = [VOTSharedWorkspace currentElement];
        [elementFetcher3 retrieveElementsWithElement:currentElement groupNavigationStyle:{objc_msgSend(VOTSharedWorkspace, "navigationStyleHonorsGroups")}];
        goto LABEL_14;
      }

      launchableApps = [requestCopy objectForKeyedSubscript:kSCROBrailleUIRequestLaunchAppIDKey];
      if (launchableApps)
      {
        v22 = +[VOTElement springBoardApplication];
        [v22 launchAppWithDisplayID:launchableApps];
      }

      [(VOTBrailleManager *)self refreshBrailleLine];
LABEL_27:

      goto LABEL_29;
    }

    if (unsignedIntegerValue == 5)
    {
      v23 = [requestCopy objectForKeyedSubscript:kSCROBrailleUIRequestChooseElementIDKey];
      if (!v23)
      {
        goto LABEL_29;
      }

      launchableApps = v23;
      brailleUIHashToElementCache = [(VOTBrailleManager *)self brailleUIHashToElementCache];
      v25 = [brailleUIHashToElementCache objectForKeyedSubscript:launchableApps];

      if (v25)
      {
        elementManager = [VOTSharedWorkspace elementManager];
        [elementManager moveToElement:v25];
      }

      goto LABEL_27;
    }

    if (unsignedIntegerValue == 6)
    {
      elementFetcher3 = [requestCopy objectForKeyedSubscript:kSCROBrailleUIRequestTextToWriteToPasteBoardKey];
      currentElement = +[UIPasteboard generalPasteboard];
      [currentElement setValue:elementFetcher3 forPasteboardType:kUTTypePlainText];
LABEL_14:
    }
  }

LABEL_29:
}

- (BOOL)_isBrailleUIEnabled
{
  if (qword_1001FEE20 != -1)
  {
    sub_10012EAC4();
  }

  return byte_1001FEE18;
}

- (BOOL)_shouldTriggerBrailleUI
{
  v3 = +[VOTPlanarBrailleManager manager];
  zoomOutActive = [v3 zoomOutActive];

  if ((zoomOutActive & 1) != 0 || ![(VOTBrailleManager *)self _isBrailleUIEnabled])
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v5 = +[VOTTextSearchManager sharedManager];
    v6 = [v5 textSearchModeIsOn] ^ 1;
  }

  return v6;
}

- (void)elementsRetrieved:(id)retrieved finished:(BOOL)finished
{
  finishedCopy = finished;
  retrievedCopy = retrieved;
  if (finishedCopy)
  {
    v9 = retrievedCopy;
    v7 = [retrievedCopy count] > 0x3E8;
    retrievedCopy = v9;
    if (!v7)
    {
      threadKey = self->_threadKey;
      [(VOTBrailleManager *)self threadWaitTime];
      [(VOTBrailleManager *)self performSelector:"_elementsRetrieved:" withThreadKey:threadKey waitTime:0 cancelMask:1 count:v9 objects:?];
      retrievedCopy = v9;
    }
  }
}

- (void)_elementsRetrieved:(id)retrieved
{
  retrievedCopy = retrieved;
  elementFetcher = [(VOTBrailleManager *)self elementFetcher];
  [elementFetcher forceUpdate];

  v20 = retrievedCopy;
  v6 = sub_1000535B8(retrievedCopy);
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  [(VOTBrailleManager *)self setBrailleUIHashToElementCache:v8];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v22 + 1) + 8 * v12);
        v28[0] = kSCROBrailleUIResponseElementsInfoElementNameKey;
        itemChooserName = [v13 itemChooserName];
        v29[0] = itemChooserName;
        v28[1] = kSCROBrailleUIResponseElementsInfoElementIDKey;
        v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v13 hash]);
        v29[1] = v15;
        v16 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];

        [v7 addObject:v16];
        brailleUIHashToElementCache = [(VOTBrailleManager *)self brailleUIHashToElementCache];
        v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v13 hash]);
        [brailleUIHashToElementCache setObject:v13 forKeyedSubscript:v18];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v10);
  }

  v26 = kSCROBrailleUIRequestTypeKey;
  v27 = &off_1001DA9E8;
  v19 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  [(SCROBrailleClient *)self->_brailleClient handleBrailleUIResponse:v7 forRequest:v19];
}

- (_NSRange)brailleLineRange
{
  length = self->_brailleLineRange.length;
  location = self->_brailleLineRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end