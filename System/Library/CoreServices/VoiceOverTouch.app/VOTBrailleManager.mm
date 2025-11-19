@interface VOTBrailleManager
+ (double)currentDefaultBrailleAlertTimeout;
+ (id)manager;
- (BOOL)_brailleShouldTryToTurnPage:(id)a3 direction:(int64_t)a4;
- (BOOL)_handleKeyboardModifierCommands:(id)a3;
- (BOOL)_isActiveUserDisplayConfig:(id)a3;
- (BOOL)_isBrailleUIEnabled;
- (BOOL)_languageIsCJK;
- (BOOL)_languageIsNBSC;
- (BOOL)_shouldIncludeServiceNameForSpokenBrailleRotorAnnouncementOfTable:(id)a3 rotorItems:(id)a4 locale:(id)a5;
- (BOOL)_shouldTriggerBrailleUI;
- (BOOL)_supportsMode:(int64_t)a3;
- (BOOL)bluetoothBrailleDisplayConnected;
- (BOOL)brailleEnabled;
- (BOOL)handleCommandIfActiveBrailleRelated:(id)a3;
- (BOOL)handleKeyboardPerkinsInput:(id)a3 chordOnly:(BOOL)a4;
- (BOOL)handleShowOnscreenKeyboardToggle;
- (BOOL)hasActiveBrailleDisplay;
- (BOOL)testingHasActiveDisplay;
- (BRLTTable)brailleInputTableFromSettings;
- (BRLTTable)brailleTableFromSettings;
- (NSArray)textReplacementEntries;
- (SCROBrailleClient)testingBrailleClient;
- (VOTBrailleManager)init;
- (_NSRange)brailleLineRange;
- (_NSRange)rangeOfCellRepresentingCharacterAtIndex:(int64_t)a3;
- (id)_defaultLanguageRotorItem;
- (id)_localeIdentifierForTableIdentifier:(id)a3;
- (id)_tableIdentifierFromDefaultRotorItem:(id)a3 forLocale:(id)a4;
- (id)adjustBrailleLanguageRotorInDirection:(int64_t)a3 isDefault:(BOOL *)a4 input:(BOOL)a5;
- (id)nameForSpokenAnnouncementOfBrailleTable:(id)a3;
- (int64_t)_adjustedRotorIndex:(int64_t)a3 inDirection:(int64_t)a4 rotorItems:(id)a5;
- (int64_t)_indexOfBrailleTable:(id)a3 inRotorItems:(id)a4;
- (int64_t)inputContractionMode;
- (int64_t)outputContractionMode;
- (unint64_t)testingBrailleElementIndex;
- (unsigned)persistentKeyModifiers;
- (void)_activateBrailleUIWithCommand:(id)a3;
- (void)_announceBrailleUIStateChange:(BOOL)a3;
- (void)_dispatchBrailleDidPanWithSuccess:(id)a3 elementToken:(id)a4 appToken:(id)a5 direction:(id)a6 lineOffset:(id)a7;
- (void)_dispatchPlanarPanFailedIsLeft:(id)a3;
- (void)_displayBrailleElementHint;
- (void)_elementsRetrieved:(id)a3;
- (void)_filterUnacceptableBrailleStrings:(id)a3;
- (void)_handleBrailleAnnouncementModeOn:(id)a3;
- (void)_handleBrailleConfigurationChanged:(id)a3;
- (void)_handleBrailleKeypress:(id)a3;
- (void)_handleBraillePanBeginning:(id)a3;
- (void)_handleBraillePanEnd:(id)a3;
- (void)_handleBraillePanLeft:(id)a3;
- (void)_handleBraillePanRight:(id)a3;
- (void)_handleBraillePlayBorderHitSound;
- (void)_handleBraillePlayCommandNotSupportedSound;
- (void)_handleBraillePlayDisplayConnectionSound:(id)a3;
- (void)_handleBrailleReplaceTextRange:(id)a3 withString:(id)a4 cursor:(id)a5;
- (void)_handleBrailleRouter:(id)a3;
- (void)_handleBrailleSpeechRequest:(id)a3 language:(id)a4 shouldQueue:(id)a5;
- (void)_handleBrailleStatusRouter:(id)a3;
- (void)_handleBrailleTable:(id)a3 input:(BOOL)a4;
- (void)_handleBrailleUIRequest:(id)a3;
- (void)_handleDisplayModeChanged:(id)a3;
- (void)_handleEvent:(id)a3;
- (void)_handleStatusRouterForIndex:(int64_t)a3;
- (void)_initializeCommands;
- (void)_initializeExpandedStatusCellDictionaries;
- (void)_refreshBrailleLinePreferringPositionOverRotorSelection:(BOOL)a3 knownLineRange:(BOOL)a4 updatedPosition:(id)a5 updateBrailleElement:(BOOL)a6;
- (void)_resetBrailleCursor;
- (void)_setAutomaticBrailleTranslationEnabled:(BOOL)a3;
- (void)_setBrailleElement:(id)a3 resetBrailleCursor:(id)a4 rotorSelection:(id)a5;
- (void)_setBrailleInputTable:(id)a3;
- (void)_setBrailleString:(id)a3 type:(id)a4 timeout:(id)a5 priority:(id)a6 langCode:(id)a7 brailleLineRangeValue:(id)a8;
- (void)_setBrailleTable:(id)a3;
- (void)_setBrailleUIActive:(id)a3 withOptions:(id)a4;
- (void)_setInputContractionMode:(int)a3;
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
- (void)activateBrailleUIWithCommand:(id)a3;
- (void)announceBrailleTable:(id)a3 isDefault:(BOOL)a4;
- (void)applyBrailleSubstitutions:(id)a3;
- (void)configureForUnitTesting;
- (void)dealloc;
- (void)elementsRetrieved:(id)a3 finished:(BOOL)a4;
- (void)handleBSICommandModeInput:(id)a3;
- (void)handleBrailleConfigurationChanged:(id)a3;
- (void)handleBrailleDeletedUntranslatedText:(id)a3 speakLiterally:(BOOL)a4;
- (void)handleBrailleDidDisconnect:(id)a3;
- (void)handleBrailleDidPanLeft:(id)a3 elementToken:(id)a4 appToken:(id)a5 lineOffset:(id)a6;
- (void)handleBrailleDidPanRight:(id)a3 elementToken:(id)a4 appToken:(id)a5 lineOffset:(id)a6;
- (void)handleBrailleDidReconnect:(id)a3;
- (void)handleBrailleDidShowNextAnnouncement:(id)a3;
- (void)handleBrailleDidShowPreviousAnnouncement:(id)a3;
- (void)handleBrailleDisplayCopyStringToClipboard:(id)a3;
- (void)handleBrailleInsertedUntranslatedText:(id)a3 speakLiterally:(BOOL)a4;
- (void)handleBrailleKeypress:(id)a3;
- (void)handleBraillePlayBorderHitSound;
- (void)handleBraillePlayCommandNotSupportedSound;
- (void)handleBraillePlayDisplayConnectionSound:(id)a3;
- (void)handleBrailleReplaceTextRange:(_NSRange)a3 withString:(id)a4 cursor:(unint64_t)a5;
- (void)handleBrailleSpeechRequest:(id)a3 language:(id)a4 shouldQueue:(BOOL)a5;
- (void)handleBrailleStartEditing;
- (void)handleBrailleUIRequest:(id)a3;
- (void)handleDidBrailleUIEnd;
- (void)handleDisplayModeChanged:(id)a3;
- (void)handleEvent:(id)a3;
- (void)handlePlanarPanFailedIsLeft:(BOOL)a3;
- (void)handleSettingsChange:(id)a3;
- (void)handleUserEventOccured;
- (void)refreshBrailleForTerminalCommand:(id)a3 cursor:(int64_t)a4;
- (void)refreshBrailleForTerminalOutput:(id)a3;
- (void)refreshBrailleLine;
- (void)resetTestingAggregatedStatus;
- (void)setBrailleElement:(id)a3 resetBrailleCursor:(BOOL)a4 rotorSelection:(id)a5;
- (void)setBrailleMap:(id)a3;
- (void)setBrailleString:(id)a3 type:(int)a4 timeout:(double)a5 langCode:(id)a6 brailleLineRange:(_NSRange)a7 isBrailleLineRangeKnown:(BOOL)a8;
- (void)setBrailleUIActive:(BOOL)a3 withOptions:(id)a4;
- (void)setLastUserInteractionTime:(double)a3;
- (void)setPersistentKeyModifiers:(unsigned int)a3;
- (void)setPlanarData:(id)a3;
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
  v3 = [v2 voiceOverBrailleAlertShowUntilDismissed];

  if (v3)
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

    v39 = [(_KSTextReplacementClientStore *)v3->_textReplacementStore textReplacementEntries];
    textReplacementEntries = v3->_textReplacementEntries;
    v3->_textReplacementEntries = v39;

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
  v3 = [(_KSTextReplacementClientStore *)self->_textReplacementStore textReplacementEntries];
  textReplacementEntries = self->_textReplacementEntries;
  self->_textReplacementEntries = v3;

  _objc_release_x1(v3, textReplacementEntries);
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
  v2 = [VOTSharedWorkspace activeBrailleOutputPreference];
  v3 = AXLogBrailleHW();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Braille output updated: %d", v4, 8u);
  }

  if (v2 == 3)
  {
    if (!_AXSVoiceOverTouchBrailleContractionMode())
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v2 != 2)
  {
    if (v2 != 1)
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
  v3 = [VOTSharedWorkspace activeBrailleInputPreference];
  v4 = AXLogBrailleHW();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Braille input updated: %d", v6, 8u);
  }

  [(VOTBrailleManager *)self _setInputContractionMode:v3 != 3];
  v5 = +[AXSettings sharedInstance];
  -[VOTBrailleManager _setAutomaticBrailleTranslationEnabled:](self, "_setAutomaticBrailleTranslationEnabled:", [v5 voiceOverBrailleGradeTwoAutoTranslateEnabled]);
}

- (void)_setInputContractionMode:(int)a3
{
  if (self->_cachedContractionMode != a3)
  {
    self->_cachedContractionMode = a3;
    [(SCROBrailleClient *)self->_brailleClient setInputContractionMode:?];
  }
}

- (void)_setAutomaticBrailleTranslationEnabled:(BOOL)a3
{
  if (self->_cachedAutoBrailleTranslationEnabled != a3)
  {
    self->_cachedAutoBrailleTranslationEnabled = a3;
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
  v3 = [(VOTElement *)self->_brailleElement application];
  v4 = [v3 realtimeElements];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v6)
  {
    v8 = 0;
    v9 = 0;
    goto LABEL_16;
  }

  v7 = v6;
  v8 = 0;
  v9 = 0;
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
        if (v9)
        {
          v9 = 1;
          if ((v8 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v9 = [v12 realtimeElementUnread];
          if ((v8 & 1) == 0)
          {
LABEL_9:
            v8 = [v12 realtimeElementCompleted];
            continue;
          }
        }

        v8 = 1;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  }

  while (v7);
LABEL_16:

  -[_VOTBrailleManagerStatus setShowRealtime:](self->_status, "setShowRealtime:", [v5 count] != 0);
  if ((v9 & 1) == 0)
  {
    [(_VOTBrailleManagerStatus *)self->_status setRealtimeBlinking:0];
    LOBYTE(v17) = 0;
    goto LABEL_34;
  }

  Current = CFAbsoluteTimeGetCurrent();
  status = self->_status;
  if ((Current - self->_lastRealtimeUpdate > 3.0) | v8 & 1)
  {
    v15 = [(_VOTBrailleManagerStatus *)status realtimeBlinking];
    v16 = self->_status;
    if (v15)
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
  v18 = [(_VOTBrailleManagerStatus *)self->_status realtimeBlinking];
  v19 = self->_status;
  if (v18)
  {
    if ([(_VOTBrailleManagerStatus *)v19 realtimeBlinkIsUp])
    {
      [(_VOTBrailleManagerStatus *)self->_status setRealtime:[(_VOTBrailleManagerStatus *)self->_status realtime]| 2];
      [(_VOTBrailleManagerStatus *)self->_status setRealtime:[(_VOTBrailleManagerStatus *)self->_status realtime]| 4];
      [(_VOTBrailleManagerStatus *)self->_status setRealtime:[(_VOTBrailleManagerStatus *)self->_status realtime]| 0x10];
      [(_VOTBrailleManagerStatus *)self->_status setRealtime:[(_VOTBrailleManagerStatus *)self->_status realtime]| 0x20];
      if (v8)
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
  v3 = [(SCROBrailleClient *)self->_brailleClient driverConfiguration];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([(VOTBrailleManager *)self _isActiveUserDisplayConfig:v8])
        {
          v9 = [v8 objectForKey:kSCROBrailleDisplayPostsKeyboardEvents];
          v10 = [v9 BOOLValue];

          if (v10)
          {
            v11 = 1;
            goto LABEL_12;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)adjustBrailleLanguageRotorInDirection:(int64_t)a3 isDefault:(BOOL *)a4 input:(BOOL)a5
{
  v5 = a5;
  v9 = [VOTSharedWorkspace brailleLanguageRotorItems];
  v10 = [v9 ax_filteredArrayUsingBlock:&stru_1001CAB38];

  if (v5)
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
      v32 = a3;
      v33 = 2112;
      v34 = v11;
      v35 = 2112;
      v36 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Handling braille language rotor movement. dir:%ld selected:%@, items:%@", &v31, 0x20u);
    }

    v16 = [v10 objectAtIndexedSubscript:{-[VOTBrailleManager _adjustedRotorIndex:inDirection:rotorItems:](self, "_adjustedRotorIndex:inDirection:rotorItems:", -[VOTBrailleManager _indexOfBrailleTable:inRotorItems:](self, "_indexOfBrailleTable:inRotorItems:", v11, v10), a3, v10)}];
    v17 = [v16 objectForKeyedSubscript:@"RotorItem"];
    v18 = VOSBrailleTableForRotorItem();
    v19 = [v18 tableIdentifier];

    if (v5)
    {
      [VOTSharedWorkspace setSelectedBrailleInputTable:v18];
    }

    else
    {
      [VOTSharedWorkspace setSelectedBrailleTable:v18];
    }

    v21 = [VOTSharedWorkspace applicationForCurrentElement];
    v22 = +[AXSettings sharedInstance];
    v23 = [v22 voiceOverTouchBrailleDisplaySyncInputOutputTables];

    v24 = [v21 activeKeyboard];

    if (v24 && v23 | v5)
    {
      v25 = [v21 currentSoftwareKeyboardLanguage];
      v26 = [v21 currentSoftwareKeyboardLayout];
      v27 = +[AXSettings sharedInstance];
      [v27 setPreferredBrailleTableIdentifier:v19 forKeyboardLanguage:v25 keyboardLayout:v26];
    }

    v28 = +[VOTBrailleManager manager];
    v29 = v28;
    if (v5)
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
      v32 = a3;
      v33 = 2112;
      v34 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Handling braille language rotor movement with empty braille language list. dir:%ld selected:%@", &v31, 0x16u);
    }

    v20 = 0;
    if (a4)
    {
      *a4 = 0;
    }
  }

  return v20;
}

- (void)announceBrailleTable:(id)a3 isDefault:(BOOL)a4
{
  v4 = a4;
  v6 = VOTSharedWorkspace;
  v7 = a3;
  v14 = [v6 brailleLanguageRotorItems];
  v8 = +[AXLanguageManager sharedInstance];
  v9 = [v8 userLocale];
  LOBYTE(self) = [(VOTBrailleManager *)self _shouldIncludeServiceNameForSpokenBrailleRotorAnnouncementOfTable:v7 rotorItems:v14 locale:v9];

  if (self)
  {
    [v7 localizedNameWithService];
  }

  else
  {
    [v7 localizedName];
  }
  v10 = ;

  if (v4)
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

- (int64_t)_indexOfBrailleTable:(id)a3 inRotorItems:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 count])
  {
    v7 = 0;
    while (1)
    {
      v8 = [v6 objectAtIndexedSubscript:v7];
      v9 = v8;
      if (!v5)
      {
        v10 = [v8 objectForKeyedSubscript:@"Default"];
        v11 = [v10 BOOLValue];

        if (v11)
        {
          break;
        }
      }

      v12 = [v9 objectForKeyedSubscript:@"RotorItem"];
      v13 = [v5 identifier];
      v14 = [v12 isEqualToString:v13];

      if (v14)
      {
        goto LABEL_8;
      }

      if ([v6 count] <= ++v7)
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

- (BOOL)_shouldIncludeServiceNameForSpokenBrailleRotorAnnouncementOfTable:(id)a3 rotorItems:(id)a4 locale:(id)a5
{
  v7 = a3;
  v8 = a4;
  v29 = a5;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v8;
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
      v15 = [v14 BOOLValue];

      if (v15)
      {
        v16 = [v13 objectForKeyedSubscript:@"LanguageDefaults"];
        v17 = [v29 localeIdentifier];
        v18 = [v16 objectForKeyedSubscript:v17];

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
        v16 = [v13 objectForKeyedSubscript:@"RotorItem"];
        v19 = [v20 initWithIdentifier:v16];
      }

      v16 = [v19 serviceIdentifier];
      v21 = [v7 serviceIdentifier];
      if (![v16 isEqualToString:v21])
      {
        v22 = v19;
        v23 = [v19 localizedName];
        v24 = v7;
        v25 = [v7 localizedName];
        v31 = [v23 isEqualToString:v25];

        if (v31)
        {

          v26 = 1;
          v7 = v24;
          goto LABEL_20;
        }

        v7 = v24;
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

- (id)nameForSpokenAnnouncementOfBrailleTable:(id)a3
{
  v3 = a3;
  v4 = [VOTSharedWorkspace brailleLanguageRotorItems];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = VOSBrailleTableForRotorItem();
        v11 = [v3 identifier];
        v12 = [v10 identifier];
        v13 = [v11 isEqualToString:v12];

        if ((v13 & 1) == 0)
        {
          v14 = [v10 localizedLanguage];
          v15 = [v3 localizedLanguage];
          v16 = [v14 isEqualToString:v15];

          if (v16)
          {
            v17 = [v10 localizedName];
            v18 = [v3 localizedName];
            v19 = [v17 isEqualToString:v18];

            v7 |= v19;
            LOBYTE(v23) = 1;
          }

          else
          {
            BYTE4(v23) = 1;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
    if (v7)
    {
      v20 = [v3 localizedNameWithService];
      goto LABEL_19;
    }

    if ((v23 & 0x100000000) != 0)
    {
      if (v23)
      {
        [v3 localizedName];
      }

      else
      {
        [v3 localizedLanguage];
      }
      v20 = ;
      goto LABEL_19;
    }
  }

  v20 = [v3 localizedVariant];
LABEL_19:
  v21 = v20;

  return v21;
}

- (int64_t)_adjustedRotorIndex:(int64_t)a3 inDirection:(int64_t)a4 rotorItems:(id)a5
{
  if (a4 == 2)
  {
    v5 = a3 - 1;
  }

  else
  {
    v5 = a3 + 1;
  }

  v6 = [a5 count];
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
    v4 = [v3 voiceOverTouchBrailleDisplayOutputTableIdentifier];

    if (v4)
    {
      v5 = [[BRLTTable alloc] initWithIdentifier:v4];
      [VOTSharedWorkspace setSelectedBrailleTable:v5];
    }

    v6 = +[AXSettings sharedInstance];
    v7 = [v6 voiceOverTouchBrailleDisplayInputTableIdentifier];

    if (v7)
    {
      v8 = [[BRLTTable alloc] initWithIdentifier:v7];
      [VOTSharedWorkspace setSelectedBrailleInputTable:v8];
    }
  }

  v9 = [VOTSharedWorkspace systemSpokenLanguage];
  v10 = +[VOTBrailleManager manager];
  v11 = [v10 brailleTableFromSettings];

  v12 = +[VOTBrailleManager manager];
  v13 = [v12 brailleInputTableFromSettings];

  v14 = BRLLogTranslation();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v19 = 138412290;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Current table updated: %@", &v19, 0xCu);
  }

  threadKey = self->_threadKey;
  [(VOTBrailleManager *)self threadWaitTime];
  [(VOTBrailleManager *)self performSelector:"_setCurrentDefaultTable:" withThreadKey:threadKey waitTime:0 cancelMask:1 count:v11 objects:?];
  v16 = self->_threadKey;
  [(VOTBrailleManager *)self threadWaitTime];
  [(VOTBrailleManager *)self performSelector:"_setBrailleTable:" withThreadKey:v16 waitTime:0 cancelMask:1 count:v11 objects:?];
  v17 = self->_threadKey;
  [(VOTBrailleManager *)self threadWaitTime];
  [(VOTBrailleManager *)self performSelector:"_setBrailleInputTable:" withThreadKey:v17 waitTime:0 cancelMask:1 count:v13 objects:?];
  v18 = self->_threadKey;
  [(VOTBrailleManager *)self threadWaitTime];
  [(VOTBrailleManager *)self performSelector:"_setBrailleSubstitutionLanguage:" withThreadKey:v18 waitTime:0 cancelMask:1 count:v9 objects:?];
}

- (void)_setBrailleTable:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = BRLLogTranslation();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Setting braille table %@", &v11, 0xCu);
    }

    objc_storeStrong(&self->_currentSetTable, a3);
    brailleClient = self->_brailleClient;
    v8 = [v5 identifier];
    [(SCROBrailleClient *)brailleClient setTableIdentifier:v8];

    v9 = [(VOTBrailleManager *)self tableSetCallback];

    if (v9)
    {
      v10 = [(VOTBrailleManager *)self tableSetCallback];
      (v10)[2](v10, v5);
    }
  }
}

- (void)_setBrailleInputTable:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = BRLLogTranslation();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Setting braille input table %@", &v9, 0xCu);
    }

    objc_storeStrong(&self->_currentSetInputTable, a3);
    brailleClient = self->_brailleClient;
    v8 = [v5 identifier];
    [(SCROBrailleClient *)brailleClient setInputTableIdentifier:v8];
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
  v3 = [(BRLTTable *)self->_currentSetTable language];
  if ([v3 hasPrefix:@"yue"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(BRLTTable *)self->_currentSetTable language];
    if ([v5 hasPrefix:@"cmn"])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(BRLTTable *)self->_currentSetTable language];
      if ([v6 hasPrefix:@"kor"])
      {
        v4 = 1;
      }

      else
      {
        v7 = [(BRLTTable *)self->_currentSetTable language];
        v4 = [v7 hasPrefix:@"jpn"];
      }
    }
  }

  return v4;
}

- (BOOL)_languageIsNBSC
{
  v2 = [(BRLTTable *)self->_currentSetTable identifier];
  v3 = [v2 hasPrefix:@"com.apple.scrod.braille.table.nbsc"];

  return v3;
}

- (void)handleSettingsChange:(id)a3
{
  if ([a3 isEqualToString:kAXSVoiceOverTouchBrailleMasterStatusCellIndexChangedNotification])
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

- (void)handleEvent:(id)a3
{
  threadKey = self->_threadKey;
  v5 = a3;
  [(VOTBrailleManager *)self threadWaitTime];
  [(VOTBrailleManager *)self performSelector:"_handleEvent:" withThreadKey:threadKey waitTime:0 cancelMask:1 count:v5 objects:?];
}

- (void)_handleEvent:(id)a3
{
  v4 = a3;
  v5 = +[VOTUserEventManager sharedInstance];
  [v5 userEventOccurred];

  commands = self->_commands;
  v7 = [v4 command];
  v9 = -[AXIndexMap objectForIndex:](commands, "objectForIndex:", [v7 hash]);

  v8 = [v9 target];
  [v8 performSelector:objc_msgSend(v9 withObject:{"selector"), v4}];
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

- (void)_handleBraillePanLeft:(id)a3
{
  v7 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  if (Current - self->_lastPanTime > 2.0)
  {
    [(VOTBrailleManager *)self setPanEnabled:1];
  }

  if ([(VOTBrailleManager *)self panEnabled])
  {
    self->_lastPanTime = Current;
    v5 = [v7 objectForIndex:104];
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

- (void)_handleBraillePanBeginning:(id)a3
{
  v8 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  if (Current - self->_lastPanTime > 2.0)
  {
    [(VOTBrailleManager *)self setPanEnabled:1];
  }

  if ([(VOTBrailleManager *)self panEnabled])
  {
    self->_lastPanTime = Current;
    v5 = [v8 objectForIndex:104];
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

- (void)_handleBraillePanEnd:(id)a3
{
  v8 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  if (Current - self->_lastPanTime > 2.0)
  {
    [(VOTBrailleManager *)self setPanEnabled:1];
  }

  if ([(VOTBrailleManager *)self panEnabled])
  {
    self->_lastPanTime = Current;
    v5 = [v8 objectForIndex:104];
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

- (void)_handleBraillePanRight:(id)a3
{
  v7 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  if (Current - self->_lastPanTime > 2.0)
  {
    [(VOTBrailleManager *)self setPanEnabled:1];
  }

  if ([(VOTBrailleManager *)self panEnabled])
  {
    self->_lastPanTime = Current;
    v5 = [v7 objectForIndex:104];
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

- (BOOL)_supportsMode:(int64_t)a3
{
  v4 = _AXSVoiceOverTouchCopyBrailleTableIdentifier();
  v5 = [[BRLTTable alloc] initWithIdentifier:v4];
  v6 = v5;
  if (a3 == 2)
  {
    if (v4)
    {
      v7 = [v5 supportsTranslationMode8Dot];
      goto LABEL_7;
    }

LABEL_8:
    v8 = 1;
    goto LABEL_9;
  }

  if (a3 != 3 || !v4)
  {
    goto LABEL_8;
  }

  v7 = [v5 supportsTranslationModeContracted];
LABEL_7:
  v8 = v7;
LABEL_9:

  return v8;
}

- (int64_t)outputContractionMode
{
  v3 = [(SCROBrailleClient *)self->_brailleClient contractionMode];
  v4 = [(SCROBrailleClient *)self->_brailleClient showEightDotBraille];
  v5 = 3;
  if (v3)
  {
    v5 = 1;
  }

  if (v3 == 1 && v4 == 1)
  {
    v7 = 2;
  }

  else
  {
    v7 = v5;
  }

  if (v3 == 1 && v4 == 0)
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
  v3 = [(SCROBrailleClient *)self->_brailleClient inputContractionMode];
  v4 = [(SCROBrailleClient *)self->_brailleClient inputEightDotBraille];
  v5 = 3;
  if (v3)
  {
    v5 = 1;
  }

  if (v3 == 1 && v4 == 1)
  {
    v7 = 2;
  }

  else
  {
    v7 = v5;
  }

  if (v3 == 1 && v4 == 0)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

- (void)_handleBrailleTable:(id)a3 input:(BOOL)a4
{
  v4 = a4;
  v6 = [VOTSharedWorkspace brailleLanguageRotorItems];
  v28 = [v6 ax_filteredArrayUsingBlock:&stru_1001CAB58];

  if (v4)
  {
    [VOTSharedWorkspace selectedBrailleInputTable];
  }

  else
  {
    [VOTSharedWorkspace selectedBrailleTable];
  }
  v7 = ;
  v8 = [v7 identifier];

  if ([v28 count])
  {
    v9 = 1;
    while (1)
    {
      v10 = [v28 objectAtIndexedSubscript:v9 - 1];
      v11 = VOSBrailleTableForRotorItem();
      v12 = [v11 identifier];

      if ([v8 isEqual:v12])
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
  if (v4)
  {
    [VOTSharedWorkspace setSelectedBrailleInputTable:v16];
    v17 = +[AXSettings sharedInstance];
    v18 = [v17 voiceOverTouchBrailleDisplaySyncInputOutputTables];

    v19 = off_1001FDDD0;
    if (!v18)
    {
      v20 = @"braille.input.format.change";
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  [VOTSharedWorkspace setSelectedBrailleTable:v16];
  v21 = +[AXSettings sharedInstance];
  v22 = [v21 voiceOverTouchBrailleDisplaySyncInputOutputTables];

  v19 = off_1001FDDD0;
  if (v22)
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

- (void)_handleBrailleAnnouncementModeOn:(id)a3
{
  v4 = [(SCROBrailleClient *)self->_brailleClient displayMode];
  brailleClient = self->_brailleClient;
  if (v4 == 2)
  {

    [(SCROBrailleClient *)brailleClient exitCurrentDisplayMode];
  }

  else
  {

    [(SCROBrailleClient *)brailleClient setAnnouncementsDisplayMode];
  }
}

- (void)_handleBrailleRouter:(id)a3
{
  self->_lastBraillePanDirection = -1;
  v4 = [a3 objectForIndex:104];
  v5 = v4;
  if (v4 && self->_brailleElement)
  {
    v37 = 0;
    v38 = 0;
    v36 = 0;
    if ([v4 getRouterIndex:&v38 token:&v37 location:&v36 appToken:0] && v37 == self->_brailleElementIndex)
    {
      v6 = [(VOTElement *)self->_brailleElement brailleTextEntrySupported];
      brailleElement = self->_brailleElement;
      if (v6)
      {
        v8 = [(VOTElement *)brailleElement textInputElement];
        if (!v8)
        {
          v8 = self->_brailleElement;
        }

        if (self->_brailleLineRange.location == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_22;
        }

        v9 = [(VOTElement *)v8 value];
        v10 = [v9 substringWithRange:{self->_brailleLineRange.location, self->_brailleLineRange.length}];

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
          v15 = [(VOTElement *)v8 selectedTextRange];
          v16 = &v13[self->_brailleLineRange.location];
          if (v16 >= v15)
          {
            v17 = v15;
          }

          else
          {
            v17 = &v13[self->_brailleLineRange.location];
          }

          if (v16 <= v15)
          {
            v16 = v15;
          }

          v18 = v16 - v17;
        }

        else
        {
          if (([(SCROBrailleClient *)self->_brailleClient inputEightDotBraille]& 1) == 0 && ![(VOTBrailleManager *)self _languageIsCJK])
          {
            v34 = [VOTSharedWorkspace suppressSelectionChangeNotificationCount];
            [VOTSharedWorkspace setSuppressSelectionChangeNotificationCount:v34 + 1];
          }

          v18 = 0;
          v17 = &v13[self->_brailleLineRange.location];
        }

        [(VOTElement *)v8 setSelectedTextRange:v17 refreshBraille:v18, 0];
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
          v8 = [(VOTElement *)self->_brailleElement pageContent];
          v25 = [(VOTElement *)v8 ax_wordFromPosition:v36 + self->_brailleLineRange.location inDirection:0];
          v27 = v26;
          if (&v25[v26] <= [(VOTElement *)v8 length])
          {
            v28 = [(VOTElement *)v8 substringWithRange:v25, v27];
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
          v8 = [VOTEvent brailleEventWithCommand:kVOTEventCommandSimpleTap info:0];
          [VOTSharedWorkspace dispatchCommand:v8];
          goto LABEL_22;
        }

        if (self->_brailleLineRange.location != 0x7FFFFFFFFFFFFFFFLL && v36 <= self->_brailleLineRange.length)
        {
          v8 = [(VOTElement *)self->_brailleElement mathBrailleDescription];
          v31 = [(VOTElement *)v8 attributesAtIndex:v36 + self->_brailleLineRange.location effectiveRange:0];
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
      v20 = [v19 ignoreLogging];

      if ((v20 & 1) == 0)
      {
        v21 = +[AXSubsystemVoiceOver identifier];
        v8 = AXLoggerForFacility();

        v22 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(&v8->super, v22))
        {
          v23 = AXColorizeFormatLog();
          v24 = _AXStringForArgs();
          if (os_log_type_enabled(&v8->super, v22))
          {
            *buf = 138543362;
            v40 = v24;
            _os_log_impl(&_mh_execute_header, &v8->super, v22, "%{public}@", buf, 0xCu);
          }
        }

        goto LABEL_22;
      }
    }
  }
}

- (void)_handleBrailleStatusRouter:(id)a3
{
  v4 = [a3 objectForIndex:104];
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
  v3 = [(_VOTBrailleManagerStatus *)self->_status generalDict];

  if (!v3)
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
  v4 = [v3 voiceOverBrailleWordWrapEnabled];

  v5 = AXLogBrailleHW();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Word wrap updated: %d", v6, 8u);
  }

  [(SCROBrailleClient *)self->_brailleClient setWordWrapEnabled:v4];
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
  v3 = [(_VOTBrailleManagerStatus *)self->_status showGeneral];
  v4 = [(_VOTBrailleManagerStatus *)self->_status showText];
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

  if (v3 != [(_VOTBrailleManagerStatus *)self->_status showGeneral]|| v4 != [(_VOTBrailleManagerStatus *)self->_status showText])
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
      v12 = [(VOTElement *)self->_brailleElement textInputElement];
      v13 = v12;
      if (v12)
      {
        v14 = v12;

        v11 = v14;
      }
    }

    v15 = [(VOTElement *)v11 selectedTextRange];
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = v15;
      v18 = v16;
      v19 = [(VOTElement *)v11 value];
      v20 = [v19 length];

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
      v43 = [(_VOTBrailleManagerStatus *)self->_status text];
      if ((v27[2])(v27, UIAccessibilityTokenBlockquoteLevel))
      {
        v44 = 0x80;
      }

      else
      {
        v44 = 0;
      }

      [(_VOTBrailleManagerStatus *)self->_status setText:v44 & 0x80 | v43 & 0x7Fu];
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

- (void)_handleStatusRouterForIndex:(int64_t)a3
{
  if ([(_VOTBrailleManagerStatus *)self->_status showGeneral])
  {
    if (a3)
    {
      v12 = 0;
    }

    else
    {
      v12 = [(_VOTBrailleManagerStatus *)self->_status generalDict];
      v6 = [NSNumber numberWithInteger:0];
      [v12 setObject:v6 forKey:kSCROStatusAttributeCellIndex];
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
    v12 = 0;
  }

  if ([(_VOTBrailleManagerStatus *)self->_status showText])
  {
    if (v5 == a3)
    {
      v7 = [(_VOTBrailleManagerStatus *)self->_status textDict];

      v8 = [NSNumber numberWithInteger:a3];
      [v7 setObject:v8 forKey:kSCROStatusAttributeCellIndex];

      v12 = v7;
    }

    ++v5;
  }

  if ([(_VOTBrailleManagerStatus *)self->_status showRealtime]&& v5 == a3)
  {
    v9 = kVOTEventCommandNextRealtimeElement;
    v10 = [VOTEvent brailleEventWithCommand:v9 info:0];
    [VOTSharedWorkspace dispatchCommand:v10];
  }

  v11 = v12;
  if (v12)
  {
    [(SCROBrailleClient *)self->_brailleClient setExpandedStatusDisplayModeWithStatus:v12];
    [(SCROBrailleClient *)self->_brailleClient displayIfNeeded];
    v11 = v12;
  }
}

- (void)applyBrailleSubstitutions:(id)a3
{
  if (self->_usesBrailleSubstitutions)
  {
    v5 = a3;
    v8 = +[SCROBrailleSubstitutionManager sharedInstance];
    v6 = [(VOTBrailleManager *)self brailleSubstitutionLanguage];
    v7 = [v8 stringWithBrailleSubstitutions:v5 withLanguage:v6];
    [v5 setString:v7];
  }
}

- (void)_filterUnacceptableBrailleStrings:(id)a3
{
  v6 = a3;
  v3 = +[NSMutableCharacterSet controlCharacterSet];
  [v3 removeCharactersInRange:{28, 1}];
  [v3 removeCharactersInRange:{31, 1}];
  if ([v6 length])
  {
    do
    {
      v4 = [v6 string];
      v5 = [v4 rangeOfCharacterFromSet:v3];

      if (v5 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      [v6 replaceCharactersInRange:v5 withString:{1, &stru_1001CBF90}];
    }

    while (v5 + 1 < [v6 length]);
  }
}

- (void)setBrailleString:(id)a3 type:(int)a4 timeout:(double)a5 langCode:(id)a6 brailleLineRange:(_NSRange)a7 isBrailleLineRangeKnown:(BOOL)a8
{
  length = a7.length;
  location = a7.location;
  v13 = *&a4;
  v15 = a3;
  v16 = a6;
  if (![v15 length])
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
    v22 = [NSNumber numberWithDouble:a5];
    v23 = v22;
    if (a8)
    {
      v24 = [NSValue valueWithRange:location, length];
      [(VOTBrailleManager *)self performSelector:"_setBrailleString:type:timeout:priority:langCode:brailleLineRangeValue:" withThreadKey:threadKey waitTime:0 cancelMask:6 count:v15 objects:v20, v21, v23, &off_1001DA898, v16, v24];
    }

    else
    {
      [(VOTBrailleManager *)self performSelector:"_setBrailleString:type:timeout:priority:langCode:brailleLineRangeValue:" withThreadKey:threadKey waitTime:0 cancelMask:6 count:v15 objects:v20, v21, v22, &off_1001DA898, v16, 0];
    }
  }
}

- (void)_setBrailleString:(id)a3 type:(id)a4 timeout:(id)a5 priority:(id)a6 langCode:(id)a7 brailleLineRangeValue:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v59 = a6;
  v17 = a7;
  v60 = a8;
  [(VOTBrailleManager *)self _filterUnacceptableBrailleStrings:v14];
  currentSetTable = self->_currentSetTable;
  if (!currentSetTable)
  {
    objc_storeStrong(&self->_currentSetTable, self->_currentDefaultTable);
    currentSetTable = self->_currentSetTable;
  }

  v61 = [(BRLTTable *)currentSetTable copy];
  if (v17 && [v14 length])
  {
    v58 = v16;
    [v14 addAttribute:kSCROLanguageAttribute value:v17 range:{0, objc_msgSend(v14, "length")}];
    v19 = +[AXSettings sharedInstance];
    v20 = [v19 preferredBrailleTableIdentifierForKeyboardLanguage:v17 keyboardLayout:0];

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
      v23 = [NSLocale localeWithLocaleIdentifier:v17];
      v24 = [BRLTTableEnumerator defaultTableForLocale:v23];

      v25 = [(BRLTTable *)self->_currentDefaultTable language];
      v26 = [v24 language];
      v27 = [v25 isEqualToString:v26];

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

    v29 = [(BRLTTable *)v21 tableIdentifier];
    v30 = [(BRLTTable *)self->_currentSetTable tableIdentifier];
    v31 = [v29 isEqualToString:v30];

    if ((v31 & 1) == 0)
    {
      [(VOTBrailleManager *)self _setBrailleTable:v21];
      v22 = 1;
      goto LABEL_17;
    }

LABEL_15:
    v22 = 0;
LABEL_17:

    v16 = v58;
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
    v63 = v14;
    v64 = 1024;
    v65 = [v15 intValue];
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "set braille string: %{private}@ type: %d", buf, 0x12u);
  }

  v33 = +[VOTPlanarBrailleManager manager];
  v34 = [v33 zoomOutActive];

  if ((v34 & 1) == 0)
  {
    v35 = [v15 intValue];
    v36 = 0;
    if (v35 > 2)
    {
      if (v35 == 3)
      {
        if ([v14 length])
        {
          brailleClient = self->_brailleClient;
          v38 = [v14 string];
          [(SCROBrailleClient *)brailleClient setAnnouncementString:v38];
          goto LABEL_37;
        }

LABEL_41:
        v36 = 0;
        goto LABEL_42;
      }

      if (v35 == 4)
      {
        if (v60)
        {
          self->_brailleLineRange.location = [v60 rangeValue];
          self->_brailleLineRange.length = v40;
          v41 = self;
          v42 = 1;
        }

        else
        {
          v41 = self;
          v42 = 0;
        }

        [(VOTBrailleManager *)v41 _refreshBrailleLinePreferringPositionOverRotorSelection:0 knownLineRange:v42 updatedPosition:0];
        goto LABEL_41;
      }
    }

    else
    {
      if (v35 == 1)
      {
        if ([v14 length])
        {
          v43 = [v14 attributesAtIndex:0 effectiveRange:0];
          v44 = [v43 allKeys];
          v45 = [v44 containsObject:kSCROTokenAttribute];

          if ((v45 & 1) == 0)
          {
            v46 = kSCROTokenAttribute;
            v47 = [NSNumber numberWithUnsignedInteger:self->_brailleElementIndex];
            [v14 addAttribute:v46 value:v47 range:{0, objc_msgSend(v14, "length")}];
          }
        }

        [(SCROBrailleClient *)self->_brailleClient setMainAttributedString:v14];
        goto LABEL_38;
      }

      if (v35 == 2)
      {
        if ([VOTSharedWorkspace brailleAlertsEnabled] && objc_msgSend(v14, "length"))
        {
          v37 = self->_brailleClient;
          v38 = [v14 string];
          [v16 doubleValue];
          -[SCROBrailleClient setAlertString:timeout:priority:](v37, "setAlertString:timeout:priority:", v38, [v59 intValue], v39);
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
    v49 = [(VOTBrailleManager *)self brailleStringSetCallback];

    if (v49)
    {
      v50 = [(VOTBrailleManager *)self brailleStringSetCallback];
      (v50)[2](v50, v14, [v15 intValue], v36);
    }

    if (v22)
    {
      [(VOTBrailleManager *)self _setBrailleTable:v61];
    }

    v51 = +[AXSubsystemVoiceOver sharedInstance];
    v52 = [v51 ignoreLogging];

    if ((v52 & 1) == 0)
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

- (void)setBrailleElement:(id)a3 resetBrailleCursor:(BOOL)a4 rotorSelection:(id)a5
{
  v6 = a4;
  v14 = a3;
  v8 = a5;
  if ([(VOTBrailleManager *)self brailleEnabled])
  {
    threadKey = self->_threadKey;
    [(VOTBrailleManager *)self threadWaitTime];
    v11 = v10;
    v12 = [v14 copyWithCache];
    v13 = [NSNumber numberWithBool:v6];
    [(VOTBrailleManager *)self performSelector:"_setBrailleElement:resetBrailleCursor:rotorSelection:" withThreadKey:threadKey waitTime:0 cancelMask:3 count:v12 objects:v11, v13, v8];
  }
}

- (void)_setBrailleElement:(id)a3 resetBrailleCursor:(id)a4 rotorSelection:(id)a5
{
  v26 = a3;
  v9 = a4;
  v10 = a5;
  if ([(VOTBrailleManager *)self testingBrailleElementLocked])
  {
    goto LABEL_36;
  }

  p_brailleElement = &self->_brailleElement;
  v12 = [v26 isEqual:self->_brailleElement];
  objc_storeStrong(&self->_brailleElement, a3);
  if (self->_rotorSelection != v10)
  {
    objc_storeStrong(&self->_rotorSelection, a5);
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
      v19 = [*p_brailleElement label];
      v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v19 length]);
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_27;
  }

  if ([v9 BOOLValue] && objc_msgSend(*p_brailleElement, "brailleTextEntrySupported"))
  {
    [(VOTElement *)self->_brailleElement updateCache];
    [(VOTBrailleManager *)self _resetBrailleCursor];
    v13 = 0;
    v14 = 0;
    goto LABEL_30;
  }

  if (([v9 BOOLValue] & 1) != 0 || (objc_msgSend(*p_brailleElement, "isReadingContent") & 1) != 0 || (brailleLineOffset = self->_brailleLineOffset, brailleLineOffset == -1))
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
  v20 = [VOTSharedWorkspace hasActive2DBrailleDisplay];
  v21 = +[VOTPlanarBrailleManager manager];
  v22 = [v21 zoomOutActive];

  if ((v22 & 1) != 0 || v20)
  {
    v23 = +[VOTPlanarBrailleManager manager];
    [v23 setPlanarBrailleElement:v26];
  }

  [(VOTBrailleManager *)self _updateRealtimeElementStatus];
  v24 = [(VOTBrailleManager *)self elementSetCallback];

  if (v24)
  {
    v25 = [(VOTBrailleManager *)self elementSetCallback];
    (v25)[2](v25, self->_brailleElement);
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

- (void)_refreshBrailleLinePreferringPositionOverRotorSelection:(BOOL)a3 knownLineRange:(BOOL)a4 updatedPosition:(id)a5 updateBrailleElement:(BOOL)a6
{
  v6 = a6;
  v8 = a3;
  v64 = a5;
  brailleElement = self->_brailleElement;
  if (!brailleElement)
  {
    v11 = [objc_allocWithZone(NSMutableAttributedString) initWithString:@" "];
    v22 = kSCROTokenAttribute;
    v23 = [NSNumber numberWithUnsignedInteger:0];
    [v11 addAttribute:v22 value:v23 range:{0, objc_msgSend(v11, "length")}];
    goto LABEL_77;
  }

  v60 = a4;
  v61 = v8;
  if (v6)
  {
    [(VOTElement *)brailleElement updateCache];
  }

  v11 = [objc_allocWithZone(NSMutableAttributedString) init];
  v12 = self->_brailleElement;
  v13 = [(VOTElement *)self->_brailleElement brailleTextEntrySupported];
  v14 = [(VOTElement *)self->_brailleElement textInputElement];
  v15 = [(VOTElement *)self->_brailleElement textInputElementRange];
  v16 = v15;
  v18 = v17;
  if (v14)
  {
    v19 = v13;
  }

  else
  {
    v19 = 0;
  }

  if (v15 == 0x7FFFFFFF)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  if ([(VOTElement *)self->_brailleElement isReadingContent])
  {
    v21 = 1;
  }

  else
  {
    v21 = [(VOTElement *)self->_brailleElement includeDuringContentReading];
  }

  v63 = v12;
  if (v20)
  {
    [v14 updateCache];
    v24 = v14;

    v63 = v24;
  }

  p_brailleLineRange = &self->_brailleLineRange;
  if (self->_brailleLineRange.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!self->_lastBraillePanSucceeded && ((self->_lastBraillePanDirection == 0) & v13) == 1)
    {
      if (v20)
      {
        v26 = [v14 value];
        if (&v16[v18])
        {
          v27 = &v16[v18 - 1];
LABEL_35:
          v33 = 1;
LABEL_40:
          self->_brailleLineRange.location = [v26 lineRangeForRange:{v27, v33}];
          self->_brailleLineRange.length = v34;

          goto LABEL_44;
        }
      }

      else
      {
        v26 = [(VOTElement *)self->_brailleElement value];
        if ([v26 length])
        {
          v27 = [v26 length] - 1;
          goto LABEL_35;
        }
      }

      v27 = 0;
      v33 = 0;
      goto LABEL_40;
    }

    if (v13)
    {
      if (v20)
      {
        v28 = [v14 selectedTextRange];
        if (v28 == 0x7FFFFFFF)
        {
          goto LABEL_43;
        }

        v30 = &v28[v29];
        if (&v28[v29] < v16 || v30 > &v16[v18])
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (self->_lastBraillePanDirection == 1)
        {
          v31 = 0;
          v32 = 0;
        }

        else
        {
          v31 = [(VOTElement *)self->_brailleElement selectedTextRange];
        }

        if (v31 == 0x7FFFFFFF)
        {
          v16 = 0;
LABEL_43:
          p_brailleLineRange->location = v16;
          goto LABEL_44;
        }

        v30 = &v31[v32];
      }

      v16 = v30;
      goto LABEL_43;
    }

    if (v21 && !self->_lastBraillePanDirection)
    {
      v56 = [(VOTElement *)self->_brailleElement pageContent];
      self->_brailleLineRange.location = [v56 lineRangeForRange:{objc_msgSend(v56, "length") - 1, 1}];
      self->_brailleLineRange.length = v57;
    }

    else
    {
      p_brailleLineRange->location = 0;
    }
  }

LABEL_44:
  v35 = [(VOTElement *)self->_brailleElement touchContainer];
  if (v64)
  {
    location = [v64 integerValue];
  }

  else
  {
    location = self->_brailleLineRange.location;
  }

  v62 = v14;
  if (!v21)
  {
    v41 = v13;
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
  v41 = v13;
  if (self->_lastRefreshTrigger == 1)
  {
    location = self->_bookCursorPosition;
  }

LABEL_60:
  rotorSelection = self->_rotorSelection;
  v43 = [(VOTBrailleManager *)self previousTouchContainer];
  v44 = [v35 isEqual:v43] ^ 1;
  v45 = [(VOTBrailleManager *)self previousElement];
  LOWORD(v59) = 256;
  BYTE1(v58) = v44;
  LOBYTE(v58) = v60;
  [VOTElement addTextualInformationToBrailleLine:v63 forPosition:"addTextualInformationToBrailleLine:forPosition:rotorSelection:shouldPreferRotorSelection:lineRange:descriptionRange:lineRangeKnown:isNewTouchContainer:previousElement:updateValue:singleLine:" rotorSelection:v11 shouldPreferRotorSelection:location lineRange:rotorSelection descriptionRange:!v61 lineRangeKnown:&self->_brailleLineRange isNewTouchContainer:&self->_brailleDescriptionRange previousElement:v58 updateValue:v45 singleLine:v59];

  if (self->_lastRefreshTrigger == 1)
  {
    v46 = [NSNumber numberWithInteger:self->_trailingBookCursorPosition - self->_brailleLineRange.location];

    v64 = v46;
  }

  [(VOTBrailleManager *)self setPreviousTouchContainer:v35];
  v23 = v63;
  [(VOTBrailleManager *)self setPreviousElement:v63];
  if (v64)
  {
    v47 = v41;
  }

  else
  {
    v47 = 1;
  }

  if (v47)
  {
    if (v64 || self->_lastBraillePanSucceeded)
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
    v50 = [v64 integerValue];
    if (v50 < [v11 length])
    {
      v51 = &kSCROBrailleOffsetAttribute;
      v49 = v64;
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
    v3 = [(VOTElement *)self->_brailleElement hint];
    if ([v3 length])
    {
      if ([v3 isAXAttributedString])
      {
        v4 = [v3 string];
        [v10 appendString:v4];
      }

      else
      {
        [v10 appendString:v3];
      }
    }

    v5 = [(VOTElement *)self->_brailleElement instructions];

    if ([v5 length])
    {
      if ([v10 length])
      {
        [v10 appendString:{@", "}];
      }

      [v10 appendString:v5];
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

- (void)handleBrailleConfigurationChanged:(id)a3
{
  v4 = a3;
  v5 = VOTLogBraille();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Braille config change handler called: isConfigured = %@", &v7, 0xCu);
  }

  threadKey = self->_threadKey;
  [(VOTBrailleManager *)self threadWaitTime];
  [(VOTBrailleManager *)self performSelector:"_handleBrailleConfigurationChanged:" withThreadKey:threadKey waitTime:0 cancelMask:1 count:v4 objects:?];
  [(NSCondition *)self->_brailleClientConnectionCondition lock];
  if ([(SCROBrailleClient *)self->_brailleClient isConnected])
  {
    [(NSCondition *)self->_brailleClientConnectionCondition broadcast];
  }

  [(NSCondition *)self->_brailleClientConnectionCondition unlock];
}

- (void)handleBrailleDidDisconnect:(id)a3
{
  v4 = [NSNumber numberWithBool:0];
  [(VOTBrailleManager *)self handleBrailleConfigurationChanged:v4];
}

- (void)handleBrailleDidReconnect:(id)a3
{
  v4 = [NSNumber numberWithBool:1];
  [(VOTBrailleManager *)self handleBrailleConfigurationChanged:v4];
}

- (void)_handleBrailleConfigurationChanged:(id)a3
{
  v4 = [(SCROBrailleClient *)self->_brailleClient driverConfiguration];
  self->_primaryDisplayToken = 0;
  self->_hasActiveDisplay = [(VOTBrailleManager *)self testingHasActiveDisplay];
  v5 = VOTLogBraille();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    hasActiveDisplay = self->_hasActiveDisplay;
    *buf = 138412546;
    v34 = v4;
    v35 = 1024;
    v36 = hasActiveDisplay;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Driver config = %@, testingHasActiveDisplay = %d", buf, 0x12u);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = v4;
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
        v14 = [v13 unsignedIntegerValue];

        if (v14 == 1)
        {
          v15 = [v12 objectForKey:kSCROBrailleDisplayIsPrimary];
          v16 = [v15 BOOLValue];

          if (v16)
          {
            v17 = [v12 objectForKey:kSCROBrailleDisplayToken];
            self->_primaryDisplayToken = [v17 integerValue];

            v18 = [v12 objectForKey:kSCROBrailleDisplayTransport];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = [v18 unsignedIntegerValue];
              v20 = 1;
              if (v19 != 8 && v19 != 2)
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
          v22 = [v21 unsignedIntegerValue];

          if (v22 == 4)
          {
            [VOTSharedWorkspace handleUSBMFiBrailleDisplayConnected];
          }

          else
          {
            v23 = [v12 objectForKey:kSCROBrailleDisplayTransport];
            v24 = [v23 unsignedIntegerValue];

            if (v24 == 2)
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
    v26 = [VOTSharedWorkspace softwareKeyboardManager];
    [v26 removeReasonToDisableSoftwareKeyboard:@"BrailleManager"];

    brailleElement = self->_brailleElement;
    self->_brailleElement = 0;

    [(VOTBrailleManager *)self _resetBrailleCursor];
  }

  [(VOTBrailleManager *)self bluetoothBrailleDisplayConnected];
  _AXSBrailleInputDeviceSetConnected();
  AXPerformBlockAsynchronouslyOnMainThread();
}

- (BOOL)_isActiveUserDisplayConfig:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:kSCROBrailleDisplayState];
  if ([v4 unsignedIntegerValue] == 1)
  {
    v5 = [v3 objectForKey:@"BrailleDisplayIsSystemVirtual"];
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
  v2 = [(VOTBrailleManager *)self hasActiveBrailleDisplay];
  if (v2)
  {
    v3 = +[AXSettings sharedInstance];
    v4 = [v3 voiceOverShowSoftwareKeyboardWithBraille];

    v5 = +[AXSettings sharedInstance];
    [v5 setVoiceOverShowSoftwareKeyboardWithBraille:v4 ^ 1];
  }

  return v2;
}

- (void)_updateOnscreenKeyboardSettings
{
  if (AXUIKeyboardIsOOP())
  {
    v3 = +[VOTElement inputUIApplication];
    v4 = [v3 uiElement];
  }

  else
  {
    v3 = [VOTSharedWorkspace currentElement];
    v5 = [v3 application];
    v4 = [v5 uiElement];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(SCROBrailleClient *)self->_brailleClient driverConfiguration];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v7)
  {

LABEL_17:
    v18 = +[NSNull null];
    [v4 setAXAttribute:2603 withObject:v18];

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
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v19 + 1) + 8 * i);
      if ([(VOTBrailleManager *)self _isActiveUserDisplayConfig:v12])
      {
        v13 = [v12 objectForKey:kSCROBrailleDisplayPostsKeyboardEvents];
        v14 = [v13 BOOLValue];

        if (v14)
        {
          v15 = [VOTSharedWorkspace softwareKeyboardManager];
          v9 = 1;
          [v15 setIsHardwareKeyboardAttached:1];

          v16 = +[AXSettings sharedInstance];
          v17 = [v16 voiceOverShowSoftwareKeyboardWithBraille];

          [v4 setAXAttribute:2603 withBOOL:v17];
        }
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v8);

  if ((v9 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_18:
}

- (void)handleBrailleKeypress:(id)a3
{
  threadKey = self->_threadKey;
  v5 = a3;
  [(VOTBrailleManager *)self threadWaitTime];
  [(VOTBrailleManager *)self performSelector:"_handleBrailleKeypress:" withThreadKey:threadKey waitTime:0 cancelMask:1 count:v5 objects:?];

  v6 = +[VOTUserEventManager sharedInstance];
  [v6 userEventOccurred];
}

- (void)handleUserEventOccured
{
  v2 = +[VOTUserEventManager sharedInstance];
  [v2 userEventOccurred];
}

- (void)handleBrailleReplaceTextRange:(_NSRange)a3 withString:(id)a4 cursor:(unint64_t)a5
{
  length = a3.length;
  location = a3.location;
  threadKey = self->_threadKey;
  v10 = a4;
  v12 = [NSValue valueWithRange:location, length];
  v11 = [NSNumber numberWithUnsignedInteger:a5];
  [(VOTBrailleManager *)self performSelector:"_handleBrailleReplaceTextRange:withString:cursor:" withThreadKey:threadKey count:3 objects:v12, v10, v11];
}

- (void)_handleBrailleKeypress:(id)a3
{
  v4 = a3;
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
  obj = v4;
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
            v15 = [v14 zoomOutActive];

            if (v15)
            {
              *buf = 0;
              v39 = [obj firstObject];
              [v39 getRouterIndex:buf token:0 location:0 appToken:0];

              v40 = +[VOTPlanarBrailleManager manager];
              v41 = *buf;
              v42 = +[AXSettings sharedInstance];
              v43 = [v40 elementAtRelativeIndex:{v41 / (objc_msgSend(v42, "voiceOverTouchBrailleZoomOutNumCellsPerElement") + 1)}];

              if (v43)
              {
                v44 = [VOTSharedWorkspace elementManager];
                [v44 moveToElement:v43];
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
              v30 = [v29 helpEnabled];

              if (v30)
              {
                if (([v8 isEqualToString:kVOTEventCommandBraillePanRight] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", kVOTEventCommandBraillePanLeft) & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", kVOTEventCommandBraillePanBeginning) & 1) != 0 || objc_msgSend(v8, "isEqualToString:", kVOTEventCommandBraillePanEnd) || objc_msgSend(v8, "isEqualToString:", kVOTEventCommandEscape) && (+[VOTCommandHelper commandHelper](VOTCommandHelper, "commandHelper"), v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "practiceElement"), v32 = objc_claimAutoreleasedReturnValue(), v33 = v32 == 0, v32, v31, v33))
                {
                  [v28 setBypassHelp:1];
                }

                else
                {
                  v34 = [v7 identifier];
                  v35 = [v52 buttonNamesForInputIdentifier:v34 forDisplayWithToken:{objc_msgSend(v7, "displayToken")}];
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
              v17 = [v16 zoomOutActive];

              if (v17)
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
              v19 = [v18 zoomOutActive];

              if (v19)
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
              v20 = [(SCROBrailleClient *)self->_brailleClient mainAttributedString];
              v21 = [v20 length];
              v55[0] = _NSConcreteStackBlock;
              v55[1] = 3221225472;
              v56[0] = sub_1000DB2CC;
              v56[1] = &unk_1001CAB80;
              v56[2] = buf;
              [v20 enumerateAttribute:kSCROCursorAttribute inRange:0 options:v21 usingBlock:{0, v55}];
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
                  v25 = [v24 zoomOutActive];

                  if ((v25 & 1) == 0)
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

  v46 = [(VOTBrailleManager *)self keypressCallback];
  v47 = v46 == 0;

  if (!v47)
  {
    v48 = [(VOTBrailleManager *)self keypressCallback];
    (v48)[2](v48, obj);
  }
}

- (BOOL)handleCommandIfActiveBrailleRelated:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:kVOTEventCommandEscape])
  {
    v5 = +[VOTPlanarBrailleManager manager];
    v6 = [v5 zoomOutActive];

    if (v6)
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

  if ([v4 isEqualToString:kVOTEventCommandBrailleAnnouncementModeOn])
  {
    v8 = [(SCROBrailleClient *)self->_brailleClient displayMode];
    brailleClient = self->_brailleClient;
    if (v8 == 2)
    {
LABEL_9:
      [(SCROBrailleClient *)brailleClient exitCurrentDisplayMode];
      goto LABEL_10;
    }

    [(SCROBrailleClient *)brailleClient setAnnouncementsDisplayMode];
  }

  else if ([v4 isEqualToString:kVOTEventCommandPreviousElement])
  {
    v11 = [(SCROBrailleClient *)self->_brailleClient displayMode];
    if (v11 != 3)
    {
      if (v11 == 2)
      {
        [(SCROBrailleClient *)self->_brailleClient showPreviousAnnouncement];
      }

      else
      {
        v14 = [(SCROBrailleClient *)self->_brailleClient isCandidateSelectionOn];
        v15 = self->_brailleClient;
        if (v14)
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
    if (![v4 isEqualToString:kVOTEventCommandNextElement])
    {
      if ([v4 isEqualToString:kVOTEventCommandReturn] && !-[VOTElement doesHaveAllTraits:](self->_brailleElement, "doesHaveAllTraits:", kAXTextEntryTrait))
      {
        v13 = +[VOTTextSearchManager sharedManager];
        if ([v13 textSearchModeIsOn])
        {
        }

        else
        {
          v18 = [(VOTBrailleManager *)self hasActiveBrailleDisplay];

          if (v18)
          {
            [(VOTBrailleManager *)self _showBrailleUIMigrationMessage];
          }
        }
      }

      goto LABEL_33;
    }

    v12 = [(SCROBrailleClient *)self->_brailleClient displayMode];
    if (v12 != 3)
    {
      if (v12 == 2)
      {
        [(SCROBrailleClient *)self->_brailleClient showNextAnnouncement];
      }

      else
      {
        v16 = [(SCROBrailleClient *)self->_brailleClient isCandidateSelectionOn];
        v17 = self->_brailleClient;
        if (v16)
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

- (BOOL)_handleKeyboardModifierCommands:(id)a3
{
  v29 = a3;
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
  v17 = v29;
  v39 = v17;
  v40 = self;
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
  v35 = self;
  v26 = v18;
  v36 = v26;
  v37 = &v43;
  [v24 enumerateKeysAndObjectsUsingBlock:v33];
  LOBYTE(v21) = *(v44 + 24);

  _Block_object_dispose(&v43, 8);
  return v21 & 1;
}

- (void)_handleBrailleReplaceTextRange:(id)a3 withString:(id)a4 cursor:(id)a5
{
  v8 = a3;
  v9 = a4;
  v111 = a5;
  v121 = 0;
  v122 = &v121;
  v123 = 0x3032000000;
  v124 = sub_1000DC914;
  v125 = sub_1000DC924;
  v10 = v9;
  v126 = v10;
  v11 = self->_brailleElement;
  v12 = [(VOTElement *)self->_brailleElement textInputElement];
  v110 = v12;
  if (v12 && [(VOTElement *)self->_brailleElement textInputElementRange]!= 0x7FFFFFFF)
  {
    v13 = v12;

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

    v19 = [v8 rangeValue];
    v21 = v20;
    v106 = v8;
    v22 = [(VOTElement *)v11 value];
    location = self->_brailleLineRange.location;
    v107 = v22;
    if (location <= [v22 length])
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
    v27 = sub_100053ECC(v19, v21, v108);
    v29 = v28;
    v30 = [v111 unsignedIntegerValue];
    v31 = v30;
    v116 = 0;
    v117 = &v116;
    v118 = 0x2020000000;
    v119 = 0;
    if (v30 <= v19)
    {
      v33 = sub_100053E44(v30, v108);
    }

    else if (v30 <= &v19[[v10 length]])
    {
      v33 = &v31[v27 - v19];
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
    v40 = [v39 voiceOverHardwareTypingFeedback];

    v109 = [(VOTElement *)v11 value];
    v127.length = [v109 length];
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
        if ((v40 - 3) < 0xFFFFFFFFFFFFFFFELL)
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
          v99 = [(VOTElement *)v11 value];
          v100 = [v99 length];

          if (v98 <= v100)
          {
            v101 = v117[3];
            if (v101 != [(VOTElement *)v11 selectedTextRange]|| v102)
            {
              [(VOTElement *)v11 setSelectedTextRange:v101 refreshBraille:0, 1];
            }
          }

          _Block_object_dispose(&v116, 8);
          v8 = v106;
          v25 = v107;
          goto LABEL_88;
        }

        v49 = [objc_allocWithZone(VOTOutputRequest) init];
        v53 = v122[5];
        v54 = [(VOTBrailleManager *)self _localeIdentifierForCurrentTable];
        v55 = [v49 addString:v53 withLanguage:v54];

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

            v63 = [v57 characterIsMember:{objc_msgSend(v109, "characterAtIndex:", v59)}];
            v58 = v61 + 1;
          }

          while ((v63 & 1) == 0);
          v49 = v56;
          if (v60 < v41)
          {
            v128.length = [v109 length];
            v128.location = 0;
            v130.location = v60;
            v130.length = v61;
            v64 = NSIntersectionRange(v128, v130);
            v65 = [v109 substringWithRange:{v64.location, v64.length}];
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
      if ((v40 - 3) < 0xFFFFFFFFFFFFFFFELL)
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
        v45 = [v109 substringWithRange:{v42.location, v42.length}];
      }

      [(VOTElement *)v11 setSelectedTextRange:&v41[v29] refreshBraille:0, 0];
      [(VOTElement *)v11 replaceCharactersAtCursor:v29 withString:v122[5] source:2];
      v104 = v45;
      v46 = [v122[5] length];
      v47 = [v109 length];
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
        [v109 substringWithRange:{v42.location, v42.length}];
        v70 = v49 = v104;
        v71 = [v70 length];
        v72 = [v10 length];
        v73 = [objc_allocWithZone(VOTOutputRequest) init];
        if (v104)
        {
          v74 = [[AXAttributedString alloc] initWithString:v104];
          [v74 setAttribute:&__kCFBooleanTrue forKey:UIAccessibilityTokenLowPitch];
          v75 = [(VOTBrailleManager *)self _localeIdentifierForCurrentTable];
          v76 = [v73 addAttributedString:v74 withLanguage:v75];
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
          v75 = [(VOTBrailleManager *)self _localeIdentifierForCurrentTable];
          v80 = [v73 addString:v74 withLanguage:v75];
        }

        [v73 setGeneratesBraille:0];
        v81 = v73;
        v82 = v70;
        v83 = +[NSCharacterSet wordBreakCharacterSet];
        if ([v10 length] && objc_msgSend(v83, "characterIsMember:", objc_msgSend(v10, "characterAtIndex:", objc_msgSend(v10, "length") - 1)) && objc_msgSend(v109, "length") >= v103)
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

            v88 = [v83 characterIsMember:{objc_msgSend(v109, "characterAtIndex:", v85)}];
            v84 = v87 + 1;
          }

          while ((v88 & 1) == 0);
          v49 = v104;
          if (v86 < v103)
          {
            v89 = [v109 substringWithRange:{v86, v87}];
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
                  v95 = [v81 lastAction];
                  LODWORD(v96) = 1062836634;
                  v97 = [NSNumber numberWithFloat:v96];
                  [v95 setObject:v97 forVariant:32];
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

  v15 = [v8 rangeValue];
  v17 = v16;
  v18 = [v111 unsignedIntegerValue];
  [v14 handleReplaceRange:v15 withString:v17 cursor:{v122[5], v18}];
LABEL_89:

  _Block_object_dispose(&v121, 8);
}

- (void)handleBrailleInsertedUntranslatedText:(id)a3 speakLiterally:(BOOL)a4
{
  v4 = a4;
  v27 = a3;
  v6 = self->_brailleElement;
  v7 = [(VOTElement *)self->_brailleElement textInputElement];
  if (v7 && [(VOTElement *)self->_brailleElement textInputElementRange]!= 0x7FFFFFFF)
  {
    v8 = v7;

    v6 = v8;
  }

  v9 = kAXSecureTextFieldTrait;
  if ([(VOTElement *)v6 doesHaveTraits:kAXSecureTextFieldTrait])
  {
    v10 = 1;
  }

  else
  {
    v11 = [(VOTElement *)v6 application];
    v12 = [v11 firstResponderElement];
    v10 = [v12 doesHaveTraits:v9];
  }

  v13 = +[AXFirstResponderValueChangeManager sharedInstance];
  v14 = [v13 wordBreakSet];

  v15 = +[AXSettings sharedInstance];
  v16 = [v15 voiceOverHardwareTypingFeedback];

  if ((v10 & 1) == 0 && (v16 | 2) == 2)
  {
    v17 = [objc_allocWithZone(VOTOutputRequest) init];
    v18 = [v27 length];
    if (v16 == 2 && v18 && [v14 characterIsMember:{objc_msgSend(v27, "characterAtIndex:", 0)}])
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
      v20 = [[AXAttributedString alloc] initWithString:v27];
      v19 = [NSNumber numberWithBool:v4];
      [v20 setAttribute:v19 forKey:UIAccessibilityTokenLiteralText];
    }

    v21 = [(VOTBrailleManager *)self _localeIdentifierForCurrentInputTable];
    v22 = [v17 addAttributedString:v20 withLanguage:v21];

    if ([VOTSharedWorkspace typingPitchChangeEnabled])
    {
      v23 = [v17 outputActions];
      v24 = [v23 lastObject];
      LODWORD(v25) = 1.5;
      v26 = [NSNumber numberWithFloat:v25];
      [v24 setObject:v26 forVariant:32];
    }

    [v17 setGeneratesBraille:0];
    [v17 send];
  }
}

- (void)handleBrailleDeletedUntranslatedText:(id)a3 speakLiterally:(BOOL)a4
{
  v4 = a4;
  v37 = a3;
  v6 = self->_brailleElement;
  v7 = [(VOTElement *)self->_brailleElement textInputElement];
  if (v7 && [(VOTElement *)self->_brailleElement textInputElementRange]!= 0x7FFFFFFF)
  {
    v8 = v7;

    v6 = v8;
  }

  v9 = kAXSecureTextFieldTrait;
  if ([(VOTElement *)v6 doesHaveTraits:kAXSecureTextFieldTrait])
  {
    v10 = 0;
  }

  else
  {
    v11 = [(VOTElement *)v6 application];
    v12 = [v11 firstResponderElement];
    v13 = [v12 doesHaveTraits:v9];

    v10 = v13 ^ 1;
  }

  v14 = +[AXSettings sharedInstance];
  v15 = [v14 voiceOverHardwareTypingFeedback];

  if (v10 && (v15 & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    v16 = [objc_allocWithZone(VOTOutputRequest) init];
    v17 = +[AXSettings sharedInstance];
    v18 = [v17 voiceOverDeletionFeedback];

    if (v18)
    {
      v19 = +[AXSettings sharedInstance];
      v20 = [v19 voiceOverDeletionFeedback];

      if (v20 == 3)
      {
        v21 = 0;
        v22 = 0x7FFFFFFFFFFFFFFFLL;
        v23 = &stru_1001CBF90;
      }

      else
      {
        v23 = v37;
        v21 = 0;
        v22 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v24 = sub_1000511CC(off_1001FDDD0, @"delete.text.prefix", 0);
      v22 = [v24 rangeOfString:@"%@"];
      v21 = [v37 length];
      v36 = v37;
      v23 = AXCFormattedString();
    }

    v25 = [(VOTBrailleManager *)self _localeIdentifierForCurrentTable];
    v26 = [v16 addString:v23 withLanguage:v25];

    if (v4 && v22 != 0x7FFFFFFFFFFFFFFFLL && v21 == 1)
    {
      v27 = +[NSMutableIndexSet indexSet];
      [v27 addIndexesInRange:{v22, 1}];
      v28 = [v16 outputActions];
      v29 = [v28 lastObject];
      [v29 setObject:v27 forVariant:29];
    }

    [v16 setGeneratesBraille:0];
    v30 = +[AXSettings sharedInstance];
    v31 = [v30 voiceOverDeletionFeedback];

    if (v31 == 1)
    {
      v32 = [v16 outputActions];
      [v32 enumerateObjectsUsingBlock:&stru_1001CAC38];
    }

    v33 = +[AXSettings sharedInstance];
    v34 = [v33 voiceOverDeletionFeedback];

    if (v34 == 2)
    {
      v35 = [v16 outputActions];
      [v35 enumerateObjectsUsingBlock:&stru_1001CAC58];
    }

    [v16 send];
  }
}

- (void)handleBrailleSpeechRequest:(id)a3 language:(id)a4 shouldQueue:(BOOL)a5
{
  v5 = a5;
  threadKey = self->_threadKey;
  v9 = a4;
  v10 = a3;
  [(VOTBrailleManager *)self threadWaitTime];
  v12 = v11;
  v13 = [NSNumber numberWithBool:v5];
  [(VOTBrailleManager *)self performSelector:"_handleBrailleSpeechRequest:language:shouldQueue:" withThreadKey:threadKey waitTime:0 cancelMask:3 count:v10 objects:v12, v9, v13];
}

- (void)_handleBrailleSpeechRequest:(id)a3 language:(id)a4 shouldQueue:(id)a5
{
  v13 = a4;
  v7 = a5;
  v8 = a3;
  v9 = [objc_allocWithZone(VOTOutputRequest) init];
  v10 = [[AXAttributedString alloc] initWithString:v8];

  v11 = [v9 addAttributedString:v10 withLanguage:v13];
  [v9 setGeneratesBraille:0];
  v12 = [v7 BOOLValue];

  [v9 setDoesNotInterrupt:v12];
  [v9 send];
}

- (void)handleBrailleDidPanLeft:(id)a3 elementToken:(id)a4 appToken:(id)a5 lineOffset:(id)a6
{
  threadKey = self->_threadKey;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  [(VOTBrailleManager *)self threadWaitTime];
  v16 = v15;
  v17 = [NSNumber numberWithInt:0];
  [(VOTBrailleManager *)self performSelector:"_dispatchBrailleDidPanWithSuccess:elementToken:appToken:direction:lineOffset:" withThreadKey:threadKey waitTime:0 cancelMask:5 count:v14 objects:v16, v13, v12, v17, v11];

  v18 = +[VOTUserEventManager sharedInstance];
  [v18 userEventOccurred];
}

- (void)handleBrailleDidPanRight:(id)a3 elementToken:(id)a4 appToken:(id)a5 lineOffset:(id)a6
{
  threadKey = self->_threadKey;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  [(VOTBrailleManager *)self threadWaitTime];
  v16 = v15;
  v17 = [NSNumber numberWithInt:1];
  [(VOTBrailleManager *)self performSelector:"_dispatchBrailleDidPanWithSuccess:elementToken:appToken:direction:lineOffset:" withThreadKey:threadKey waitTime:0 cancelMask:5 count:v14 objects:v16, v13, v12, v17, v11];

  v18 = +[VOTUserEventManager sharedInstance];
  [v18 userEventOccurred];
}

- (void)handleBrailleDisplayCopyStringToClipboard:(id)a3
{
  v3 = a3;
  v4 = +[AXSpringBoardServer server];
  [v4 copyStringToPasteboard:v3];
}

- (BOOL)_brailleShouldTryToTurnPage:(id)a3 direction:(int64_t)a4
{
  v6 = +[AXSettings sharedInstance];
  v7 = [v6 voiceOverTouchBraillePanningAutoTurnsReadingContent];

  if (!v7)
  {
    return 0;
  }

  brailleElement = self->_brailleElement;
  if (a4 == 2)
  {
    if ([(VOTElement *)brailleElement isReadingContent])
    {
      v9 = 1;
    }

    else
    {
      v9 = [(VOTElement *)self->_brailleElement includeDuringContentReading];
    }

    v11 = [(VOTElement *)self->_brailleElement previousElement];
    if ([v11 isReadingContent])
    {
      LOBYTE(v12) = 0;
    }

    else
    {
      v13 = [(VOTElement *)self->_brailleElement previousElement];
      v12 = [v13 includeDuringContentReading] ^ 1;
    }

    return v9 & v12;
  }

  else
  {

    return [(VOTElement *)brailleElement readingContentCausesPageTurn];
  }
}

- (void)_dispatchBrailleDidPanWithSuccess:(id)a3 elementToken:(id)a4 appToken:(id)a5 direction:(id)a6 lineOffset:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = VOTLogBraille();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v44 = v13;
    v45 = 2112;
    v46 = v11;
    v47 = 2112;
    v48 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "braille pan direction: %@, success: %@, lineoffset: %@", buf, 0x20u);
  }

  self->_lastBraillePanDirection = [v13 intValue];
  self->_lastBraillePanSucceeded = [v11 BOOLValue];
  self->_brailleLineOffset = [v14 integerValue];
  if (([v11 BOOLValue] & 1) == 0)
  {
    v16 = +[VOTCommandHelper commandHelper];
    v17 = [v16 helpEnabled];

    if (v17)
    {
      v18 = [v13 intValue];
      v19 = &kVOTEventCommandBraillePanLeft;
      if (v18)
      {
        v19 = &kVOTEventCommandBraillePanRight;
      }

      v20 = *v19;
      v21 = [VOTEvent brailleEventWithCommand:v20 info:0];
      [VOTSharedWorkspace dispatchCommand:v21];
      goto LABEL_17;
    }

    v22 = [(SCROBrailleClient *)self->_brailleClient displayMode];
    if (v22 <= 1)
    {
      if (v22)
      {
        if (v22 != 1)
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
        if ([v13 intValue])
        {
          if ([v13 intValue] == 1)
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

      if ([v12 unsignedIntegerValue] != self->_brailleElementIndex)
      {
        goto LABEL_18;
      }

      v25 = [v13 intValue];
      location = self->_brailleLineRange.location;
      if (v25)
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
              v28 = [(VOTElement *)self->_brailleElement textInputElement];
              if (v28)
              {
                v29 = [(VOTElement *)self->_brailleElement textInputElementRange];
                if (v29 != 0x7FFFFFFF && self->_brailleLineRange.location > v29 + v30)
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
          v39 = [(VOTElement *)self->_brailleElement nextElement];
          v40 = [v39 isLiveCaptionsTextView];

          if (!v40)
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
            v28 = [(VOTElement *)self->_brailleElement textInputElement];
            if (v28)
            {
              v33 = [(VOTElement *)self->_brailleElement textInputElementRange];
              if (v33 != 0x7FFFFFFF && self->_brailleLineRange.location < v33)
              {
                v31 = &kVOTEventCommandPreviousElement;
LABEL_44:
                v34 = *v31;
                v35 = v28;
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
          v37 = [(VOTElement *)self->_brailleElement previousElement];
          v38 = [v37 isLiveCaptionsTextView];

          if (!v38)
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

    if (v22 == 3)
    {
LABEL_16:
      v21 = +[VOTOutputManager outputManager];
      v20 = +[VOSOutputEvent BoundaryEncountered];
      [v21 sendEvent:v20];
LABEL_17:

      goto LABEL_18;
    }

    if (v22 == 2)
    {
      v23 = [v13 intValue];
      brailleClient = self->_brailleClient;
      if (v23)
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

- (void)handlePlanarPanFailedIsLeft:(BOOL)a3
{
  v3 = a3;
  threadKey = self->_threadKey;
  [(VOTBrailleManager *)self threadWaitTime];
  v7 = v6;
  v8 = [NSNumber numberWithBool:v3];
  [(VOTBrailleManager *)self performSelector:"_dispatchPlanarPanFailedIsLeft:" withThreadKey:threadKey waitTime:0 cancelMask:1 count:v8 objects:v7];

  v9 = +[VOTUserEventManager sharedInstance];
  [v9 userEventOccurred];
}

- (void)_dispatchPlanarPanFailedIsLeft:(id)a3
{
  v3 = a3;
  v5 = +[VOTPlanarBrailleManager manager];
  v4 = [v3 BOOLValue];

  [v5 handlePlanarPanFailedIsLeft:v4];
}

- (void)setPersistentKeyModifiers:(unsigned int)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000DDE68;
  v3[3] = &unk_1001CA1E0;
  v3[4] = self;
  v4 = a3;
  [(VOTBrailleManager *)self performAsyncBlock:v3 forThreadKey:self->_threadKey];
}

- (void)setLastUserInteractionTime:(double)a3
{
  if (a3 - self->_lastUserInteractionTime >= 2.0)
  {
    self->_lastUserInteractionTime = a3;
    v5 = AXLogBrailleHW();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v8 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Setting last user interaction time: %f", buf, 0xCu);
    }

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000DDF9C;
    v6[3] = &unk_1001C7900;
    v6[4] = self;
    *&v6[5] = a3;
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

- (void)setBrailleMap:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000DE168;
  v5[3] = &unk_1001C7778;
  v6 = self;
  v7 = a3;
  threadKey = v6->_threadKey;
  v4 = v7;
  [(VOTBrailleManager *)v6 performAsyncBlock:v5 forThreadKey:threadKey];
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

- (void)handleBraillePlayDisplayConnectionSound:(id)a3
{
  threadKey = self->_threadKey;
  v5 = a3;
  [(VOTBrailleManager *)self threadWaitTime];
  [(VOTBrailleManager *)self performSelector:"_handleBraillePlayDisplayConnectionSound:" withThreadKey:threadKey waitTime:0 cancelMask:1 count:v5 objects:?];
}

- (void)_handleBraillePlayDisplayConnectionSound:(id)a3
{
  v4 = [a3 BOOLValue];
  v5 = +[VOTOutputManager outputManager];
  if (v4)
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
  v4 = [(SCROBrailleClient *)self->_brailleClient driverConfiguration];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
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
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v21 + 1) + 8 * i);
      v10 = [v9 objectForKeyedSubscript:kSCROBrailleDisplayCanvasDescriptor];
      v11 = [v9 objectForKeyedSubscript:kSCROBrailleDisplayIsMultiLine];
      v12 = [v11 BOOLValue];

      if (v10 && [v10 width] && objc_msgSend(v10, "height"))
      {
        v13 = [v10 width];
        v14 = [v10 height];
      }

      else
      {
        if (!v12)
        {
          goto LABEL_13;
        }

        v13 = 0.0;
        v20 = 1;
        v14 = 0.0;
      }

      v15 = v13;
      v16 = NSStringFromCGSize(*(&v14 - 1));
      [v3 addObject:v16];

LABEL_13:
    }

    v6 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
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

- (void)handleDisplayModeChanged:(id)a3
{
  threadKey = self->_threadKey;
  v5 = a3;
  [(VOTBrailleManager *)self threadWaitTime];
  [(VOTBrailleManager *)self performSelector:"_handleDisplayModeChanged:" withThreadKey:threadKey waitTime:0 cancelMask:1 count:v5 objects:?];
}

- (void)_handleDisplayModeChanged:(id)a3
{
  v6 = a3;
  if ([(SCRCTargetSelectorTimer *)self->_hintTimer isPending]&& ([(SCRCTargetSelectorTimer *)self->_hintTimer isCancelled]& 1) == 0)
  {
    v4 = [v6 intValue];
    v5 = kCFAbsoluteTimeIntervalSince1904;
    if (!v4)
    {
      v5 = 2.0;
    }

    [(SCRCTargetSelectorTimer *)self->_hintTimer dispatchAfterDelay:v5];
  }
}

- (void)handleBrailleDidShowPreviousAnnouncement:(id)a3
{
  v3 = [a3 BOOLValue];
  v5 = +[VOTOutputManager outputManager];
  if (v3)
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

- (void)handleBrailleDidShowNextAnnouncement:(id)a3
{
  v3 = [a3 BOOLValue];
  v5 = +[VOTOutputManager outputManager];
  if (v3)
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
  v3 = [VOTSharedWorkspace selectedBrailleTable];
  if (!v3)
  {
    v4 = +[AXLanguageManager sharedInstance];
    v5 = [v4 userLocale];

    v6 = [(VOTBrailleManager *)self _defaultLanguageRotorItem];
    v7 = [(VOTBrailleManager *)self _tableIdentifierFromDefaultRotorItem:v6 forLocale:v5];
    if (v7)
    {
      v8 = [[BRLTTable alloc] initWithIdentifier:v7];
    }

    else
    {
      v8 = [BRLTTableEnumerator defaultTableForLocale:v5];
    }

    v3 = v8;
  }

  return v3;
}

- (BRLTTable)brailleInputTableFromSettings
{
  v3 = [VOTSharedWorkspace selectedBrailleInputTable];
  if (!v3)
  {
    v4 = +[AXLanguageManager sharedInstance];
    v5 = [v4 userLocale];

    v6 = [(VOTBrailleManager *)self _defaultLanguageRotorItem];
    v7 = [(VOTBrailleManager *)self _tableIdentifierFromDefaultRotorItem:v6 forLocale:v5];
    if (v7)
    {
      v8 = [[BRLTTable alloc] initWithIdentifier:v7];
    }

    else
    {
      v8 = [BRLTTableEnumerator defaultTableForLocale:v5];
    }

    v3 = v8;
  }

  return v3;
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
        v9 = [v8 BOOLValue];

        if (v9)
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

- (id)_tableIdentifierFromDefaultRotorItem:(id)a3 forLocale:(id)a4
{
  v5 = a4;
  v6 = [a3 objectForKeyedSubscript:@"LanguageDefaults"];
  v7 = [v5 localeIdentifier];

  v8 = [v6 objectForKeyedSubscript:v7];

  return v8;
}

- (id)_localeIdentifierForTableIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[BRLTTable alloc] initWithIdentifier:v3];

  v5 = [v4 localeIdentifier];

  return v5;
}

- (BOOL)testingHasActiveDisplay
{
  if (self->_testingHasActiveDisplay)
  {
    return 1;
  }

  v3 = +[AXSettings sharedInstance];
  v4 = [v3 voiceOverTouchUpdateBrailleWithoutConnectedDisplay];

  return v4;
}

- (unint64_t)testingBrailleElementIndex
{
  v2 = [(VOTBrailleManager *)self valueForKeyPath:@"_brailleElementIndex" forThreadKey:self->_threadKey waitTime:kSCRCThreadWaitForever];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (_NSRange)rangeOfCellRepresentingCharacterAtIndex:(int64_t)a3
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000DF068;
  v9[3] = &unk_1001CACA8;
  v9[4] = self;
  v9[5] = a3;
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

- (void)refreshBrailleForTerminalOutput:(id)a3
{
  v4 = a3;
  v5 = [NSAttributedString alloc];
  v9[0] = kSCROTokenAttribute;
  v6 = [NSNumber numberWithUnsignedInteger:self->_brailleElementIndex];
  v9[1] = kSCROTerminalOutputAttribute;
  v10[0] = v6;
  v10[1] = &__kCFBooleanTrue;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  v8 = [v5 initWithString:v4 attributes:v7];

  [(SCROBrailleClient *)self->_brailleClient setMainAttributedString:v8];
  [(SCROBrailleClient *)self->_brailleClient displayIfNeeded];
}

- (void)refreshBrailleForTerminalCommand:(id)a3 cursor:(int64_t)a4
{
  v6 = a3;
  v7 = [NSMutableAttributedString alloc];
  v17 = kSCROEditableTextAttribute;
  v18 = &__kCFBooleanTrue;
  v8 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v9 = [v7 initWithString:v6 attributes:v8];

  v10 = [NSMutableAttributedString alloc];
  v15 = kSCROEditableTextPaddingAttribute;
  v16 = &__kCFBooleanTrue;
  v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v12 = [v10 initWithString:@" " attributes:v11];

  [v9 appendAttributedString:v12];
  [v9 addAttribute:kSCROCursorAttribute value:&__kCFBooleanTrue range:{a4, 1}];
  v13 = kSCROTokenAttribute;
  v14 = [NSNumber numberWithUnsignedInteger:self->_brailleElementIndex];
  [v9 addAttribute:v13 value:v14 range:{0, objc_msgSend(v9, "length")}];

  [(SCROBrailleClient *)self->_brailleClient setMainAttributedString:v9];
  [(SCROBrailleClient *)self->_brailleClient displayIfNeeded];
}

- (void)setPlanarData:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000DF5E0;
  v5[3] = &unk_1001C7778;
  v6 = self;
  v7 = a3;
  threadKey = v6->_threadKey;
  v4 = v7;
  [(VOTBrailleManager *)v6 performAsyncBlock:v5 forThreadKey:threadKey];
}

- (BOOL)handleKeyboardPerkinsInput:(id)a3 chordOnly:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 keyCode];
  if (v7 <= 78)
  {
    if (v7 == 40)
    {
      v8 = &kVOTEventCommandReturn;
      goto LABEL_21;
    }

    if (v7 != 41)
    {
      if (v7 != 42)
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

    if ([VOTSharedWorkspace perkinsKeyboardInputEnabled] && objc_msgSend(v6, "keyDown"))
    {
      v12 = [VOTEvent keyEventWithCommand:kVOTEventCommandTogglePerkinsKeyboardInput keyInfo:0];
      v13 = [VOTSharedWorkspace elementManager];
      [v13 handleEvent:v12];
    }

LABEL_28:
    [(NSLock *)self->_keyboardVirtualDisplayLock lock];
    if (qword_1001FEE10 != -1)
    {
      sub_10012EAB0();
    }

    v14 = qword_1001FEE08;
    v15 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v6 keyCode]);
    v16 = [v14 objectForKeyedSubscript:v15];

    v17 = [v16 unsignedIntegerValue];
    if (v4 && v16)
    {
      if ((self->_keyboardVirtualDisplayRegisteredKeys & 0x200) == 0 && v17 != 512)
      {
        [(NSLock *)self->_keyboardVirtualDisplayLock unlock];
        goto LABEL_45;
      }
    }

    else if (v4 || !v16)
    {
      [(NSLock *)self->_keyboardVirtualDisplayLock unlock];
      if (!v16 && [v6 keyCode] >= 4 && objc_msgSend(v6, "keyCode") <= 0x38)
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

    v18 = [v6 keyDown];
    keyboardVirtualDisplayDownKeys = self->_keyboardVirtualDisplayDownKeys;
    if (v18)
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
      if (v4 && (v24 & 1) != 0)
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

  if (v7 <= 80)
  {
    if (v7 == 79)
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

  if (v7 != 81)
  {
    if (v7 == 82 && ([(SCROBrailleClient *)self->_brailleClient isBrailleUIActive]& 1) != 0)
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
  if ([v6 keyDown])
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

- (void)handleBSICommandModeInput:(id)a3
{
  v4 = [a3 characterAtIndex:0];
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
    v3 = [v2 voiceOverTouchBrailleUIMigrationMessageAnnounced];

    if ((v3 & 1) == 0)
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

- (void)activateBrailleUIWithCommand:(id)a3
{
  threadKey = self->_threadKey;
  v5 = a3;
  [(VOTBrailleManager *)self threadWaitTime];
  [(VOTBrailleManager *)self performSelector:"_activateBrailleUIWithCommand:" withThreadKey:threadKey waitTime:0 cancelMask:1 count:v5 objects:?];
}

- (void)_activateBrailleUIWithCommand:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:kVOTEventCommandActivateBrailleUILaunchApp])
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

  if ([v4 isEqualToString:kVOTEventCommandActivateBrailleUIChooseItem])
  {
    v5 = 1;
    goto LABEL_15;
  }

  if ([v4 isEqualToString:kVOTEventCommandActivateBrailleUIBrailleNotes])
  {
    v5 = 2;
    goto LABEL_15;
  }

  if ([v4 isEqualToString:kVOTEventCommandActivateBrailleUIFinder])
  {
    v5 = 3;
    goto LABEL_15;
  }

  if ([v4 isEqualToString:kVOTEventCommandActivateBrailleUINemethCalculator])
  {
    v5 = 4;
    goto LABEL_15;
  }

  if ([v4 isEqualToString:kVOTEventCommandActivateBrailleUILiveCaptions])
  {
    v5 = 5;
    goto LABEL_15;
  }

  if ([v4 isEqualToString:kVOTEventCommandActivateBrailleUIDateTime])
  {
    v5 = 6;
    goto LABEL_15;
  }

LABEL_16:
}

- (void)setBrailleUIActive:(BOOL)a3 withOptions:(id)a4
{
  v4 = a3;
  threadKey = self->_threadKey;
  v7 = a4;
  [(VOTBrailleManager *)self threadWaitTime];
  v9 = v8;
  v10 = [NSNumber numberWithBool:v4];
  [(VOTBrailleManager *)self performSelector:"_setBrailleUIActive:withOptions:" withThreadKey:threadKey waitTime:0 cancelMask:2 count:v10 objects:v9, v7];
}

- (void)_setBrailleUIActive:(id)a3 withOptions:(id)a4
{
  v8 = a4;
  v6 = [a3 BOOLValue];
  brailleClient = self->_brailleClient;
  if (v6)
  {
    [(SCROBrailleClient *)brailleClient startBrailleUIWithOptions:v8];
  }

  else
  {
    [(SCROBrailleClient *)brailleClient endBrailleUIWithOptions:v8];
  }
}

- (void)handleDidBrailleUIEnd
{
  [(VOTBrailleManager *)self _announceBrailleUIStateChange:0];
  v2 = VOTSharedWorkspace;

  [v2 setKeyboardBrailleUIEnabled:0];
}

- (void)_announceBrailleUIStateChange:(BOOL)a3
{
  v3 = a3;
  if (a3)
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
    v9 = [NSNumber numberWithBool:v3];
    v10 = 138412290;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Braille Access: %@", &v10, 0xCu);
  }
}

- (void)handleBrailleUIRequest:(id)a3
{
  threadKey = self->_threadKey;
  v5 = a3;
  [(VOTBrailleManager *)self threadWaitTime];
  [(VOTBrailleManager *)self performSelector:"_handleBrailleUIRequest:" withThreadKey:threadKey waitTime:0 cancelMask:1 count:v5 objects:?];

  v6 = +[VOTUserEventManager sharedInstance];
  [v6 userEventOccurred];
}

- (void)_handleBrailleUIRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:kSCROBrailleUIRequestTypeKey];
  v6 = [v5 unsignedIntegerValue];

  if (v6 <= 2)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        [(VOTBrailleManager *)self _refreshBrailleLine];
        goto LABEL_29;
      }

      if (v6 == 2)
      {
        v12 = objc_opt_new();
        v13 = +[VOTElement springBoardApplication];
        v14 = [v13 launchableApps];

        v15 = +[VOTElement springBoardApplication];
        v16 = [v15 appIconValues];

        v27 = _NSConcreteStackBlock;
        v28 = 3221225472;
        v29 = sub_1000E07D4;
        v30 = &unk_1001C82E0;
        v31 = v16;
        v32 = v12;
        v17 = v12;
        v18 = v16;
        [v14 enumerateKeysAndObjectsUsingBlock:&v27];
        [(SCROBrailleClient *)self->_brailleClient handleBrailleUIResponse:v17 forRequest:v4, v27, v28, v29, v30];

        goto LABEL_27;
      }
    }

    else if ([(VOTBrailleManager *)self _shouldTriggerBrailleUI])
    {
      v19 = +[UIPasteboard generalPasteboard];
      v20 = [v19 string];

      if (v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = &stru_1001CBF90;
      }

      [(SCROBrailleClient *)self->_brailleClient handleBrailleUIResponse:v21 forRequest:v4];
    }
  }

  else
  {
    if (v6 <= 4)
    {
      if (v6 != 3)
      {
        v7 = [(VOTBrailleManager *)self elementFetcher];

        if (!v7)
        {
          v8 = objc_opt_new();
          [(VOTBrailleManager *)self setElementFetcher:v8];

          v9 = [(VOTBrailleManager *)self elementFetcher];
          [v9 setDelegate:self];
        }

        v10 = [(VOTBrailleManager *)self elementFetcher];
        v11 = [VOTSharedWorkspace currentElement];
        [v10 retrieveElementsWithElement:v11 groupNavigationStyle:{objc_msgSend(VOTSharedWorkspace, "navigationStyleHonorsGroups")}];
        goto LABEL_14;
      }

      v14 = [v4 objectForKeyedSubscript:kSCROBrailleUIRequestLaunchAppIDKey];
      if (v14)
      {
        v22 = +[VOTElement springBoardApplication];
        [v22 launchAppWithDisplayID:v14];
      }

      [(VOTBrailleManager *)self refreshBrailleLine];
LABEL_27:

      goto LABEL_29;
    }

    if (v6 == 5)
    {
      v23 = [v4 objectForKeyedSubscript:kSCROBrailleUIRequestChooseElementIDKey];
      if (!v23)
      {
        goto LABEL_29;
      }

      v14 = v23;
      v24 = [(VOTBrailleManager *)self brailleUIHashToElementCache];
      v25 = [v24 objectForKeyedSubscript:v14];

      if (v25)
      {
        v26 = [VOTSharedWorkspace elementManager];
        [v26 moveToElement:v25];
      }

      goto LABEL_27;
    }

    if (v6 == 6)
    {
      v10 = [v4 objectForKeyedSubscript:kSCROBrailleUIRequestTextToWriteToPasteBoardKey];
      v11 = +[UIPasteboard generalPasteboard];
      [v11 setValue:v10 forPasteboardType:kUTTypePlainText];
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
  v4 = [v3 zoomOutActive];

  if ((v4 & 1) != 0 || ![(VOTBrailleManager *)self _isBrailleUIEnabled])
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

- (void)elementsRetrieved:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v9 = v6;
    v7 = [v6 count] > 0x3E8;
    v6 = v9;
    if (!v7)
    {
      threadKey = self->_threadKey;
      [(VOTBrailleManager *)self threadWaitTime];
      [(VOTBrailleManager *)self performSelector:"_elementsRetrieved:" withThreadKey:threadKey waitTime:0 cancelMask:1 count:v9 objects:?];
      v6 = v9;
    }
  }
}

- (void)_elementsRetrieved:(id)a3
{
  v4 = a3;
  v5 = [(VOTBrailleManager *)self elementFetcher];
  [v5 forceUpdate];

  v20 = v4;
  v6 = sub_1000535B8(v4);
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
        v14 = [v13 itemChooserName];
        v29[0] = v14;
        v28[1] = kSCROBrailleUIResponseElementsInfoElementIDKey;
        v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v13 hash]);
        v29[1] = v15;
        v16 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];

        [v7 addObject:v16];
        v17 = [(VOTBrailleManager *)self brailleUIHashToElementCache];
        v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v13 hash]);
        [v17 setObject:v13 forKeyedSubscript:v18];

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