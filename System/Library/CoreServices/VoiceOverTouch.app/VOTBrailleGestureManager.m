@interface VOTBrailleGestureManager
- (BOOL)_canUseContractedBraille;
- (BOOL)_handleAdjustTextSegmentTypeEvent:(id)a3;
- (BOOL)_handleAllFingersLifted;
- (BOOL)_handleCarriageReturnSwipe;
- (BOOL)_handleWordBreak:(id)a3 includeSpace:(BOOL)a4;
- (BOOL)_hasContractedBraillePreference;
- (BOOL)_isAdjustTextSegmentEvent:(id)a3;
- (BOOL)_isAdjustTextSegmentTypeEvent:(id)a3;
- (BOOL)_isCalibrationEndPattern:(id)a3;
- (BOOL)_isCalibrationStartPattern:(id)a3;
- (BOOL)_isCarriageReturnSwipeEvent:(id)a3;
- (BOOL)_isNextBrailleUsageEvent:(id)a3;
- (BOOL)_isPreviousBrailleUsageEvent:(id)a3;
- (BOOL)_isSelectEvent:(id)a3;
- (BOOL)_isToggleLockedConfigurationEvent:(id)a3;
- (BOOL)_isTranslateImmediatelyEvent:(id)a3;
- (BOOL)_isTypingModeSingleHandVariant;
- (BOOL)_patternIncludesEveryFinger:(id)a3;
- (BOOL)_requiresCandidateSelection;
- (BOOL)_requiresLaTeXInput;
- (BOOL)_shouldReverseDots;
- (BOOL)_shouldUseContractedBraille;
- (BOOL)_shouldUseEightDotBraille;
- (BOOL)allowsElementMovement;
- (BOOL)gesturesControlRotor;
- (BOOL)isBackspaceEvent:(id)a3;
- (BOOL)isNextBrailleTableEvent:(id)a3;
- (BOOL)isNextKeyboardLanguageEvent:(id)a3;
- (BOOL)isNextSuggestionEvent:(id)a3;
- (BOOL)isPreviousSuggestionEvent:(id)a3;
- (BOOL)isReturnKeyEvent:(id)a3;
- (BOOL)isSelectItemEvent:(id)a3;
- (BOOL)isSpaceEvent:(id)a3;
- (BOOL)isWordBackspaceEvent:(id)a3;
- (BOOL)performCustomBackspace;
- (BOOL)performCustomWordBackspace;
- (BOOL)performNextBrailleTableCommand;
- (BOOL)performNextKeyboardLanguage;
- (BOOL)processEvent:(id)a3;
- (BOOL)processTouchLocations:(id)a3 isFirstTouch:(BOOL)a4 isCancelTouch:(BOOL)a5;
- (BOOL)wantsToStayActive;
- (VOTBrailleGestureManager)init;
- (VOTBrailleGestureManagerDelegate)brailleGestureManagerDelegate;
- (id)_languageCodeForBrailleTable;
- (id)_languageCodeForSpeakingAndBrailleTranslation;
- (id)_languageCodeForSpellChecking;
- (id)_newBrailleInput;
- (id)_outputRequestForText:(id)a3 hint:(id)a4 useKeyboardLanguage:(BOOL)a5 shouldQueue:(BOOL)a6 isInsert:(BOOL)a7 isSuggestion:(BOOL)a8 isDelete:(BOOL)a9 speakLiterally:(BOOL)a10 otherLanguage:(id)a11;
- (id)_printBrailleForTouchPoints:(id)a3;
- (id)_spokenStringForPrintBraille:(id)a3 useLongForm:(BOOL)a4;
- (id)_touchLocationsByFilteringOutEdges:(id)a3;
- (id)_touchPointsForCalibrationGivenFirstPoints:(id)a3 lastPoints:(id)a4;
- (id)nameSearcherEntriesPassingSearchFrom:(id)a3;
- (unint64_t)_numberOfDots;
- (unint64_t)mode;
- (void)_announceBrailleTypingPropertiesIncludingOrientation:(BOOL)a3 typingMode:(BOOL)a4 forUnlockConfiguration:(BOOL)a5;
- (void)_announceRespectingSoundSettingsRequest:(id)a3 event:(id)a4 hint:(id)a5;
- (void)_appendOrientationToAnnouncement:(id)a3;
- (void)_applyCandidateInDirection:(int64_t)a3;
- (void)_applySuggestionToElement:(id)a3 direction:(int64_t)a4;
- (void)_beginExploringDotPatterns;
- (void)_calibrateWithTouchPoints:(id)a3 silently:(BOOL)a4;
- (void)_cancelWarningTones;
- (void)_cleanUpTouchesIncludingCalibrationStartPoints:(BOOL)a3;
- (void)_commitBufferedBraille;
- (void)_commitLoneLeftColumnIfNeeded;
- (void)_endExploringDotPatterns;
- (void)_enumerateDotNumbersForPrintBraille:(id)a3 usingBlock:(id)a4;
- (void)_finishCharacterAcceptenceTest;
- (void)_flashInsertedTextIfAllowed:(id)a3;
- (void)_handleCalibrationTimeout;
- (void)_handleChangeUsage:(BOOL)a3;
- (void)_handleFingersOnScreen:(id)a3 didAddOrRemoveFingers:(BOOL)a4;
- (void)_handlePrintBraille:(id)a3;
- (void)_handleSingleHandCalibration;
- (void)_handleTouchPoints:(id)a3;
- (void)_handleTranslateImmediately;
- (void)_inputBrailleFromSeriesOfTouchPoints:(id)a3;
- (void)_inputBrailleFromTouchPoints:(id)a3;
- (void)_insertCurrentSelectedCandidate;
- (void)_insertCurrentSelectedSuggestion:(id)a3;
- (void)_issueCommands:(id)a3;
- (void)_issueSingleCommand:(id)a3;
- (void)_outputChosenCandidate:(id)a3;
- (void)_outputChosenSuggestion:(id)a3;
- (void)_playBonk;
- (void)_playHapticFeedbackIfNeeded;
- (void)_playWarningTone;
- (void)_playWarningTones:(unint64_t)a3 completion:(id)a4;
- (void)_proceedAcceptanceTestWithEnteredCell:(id)a3;
- (void)_replaceRotorEventWithTextMovementEvent:(id)a3;
- (void)_scheduleExploringModeIfNeeded;
- (void)_speakPrintBrailleForExploration;
- (void)_speakText:(id)a3 hint:(id)a4 useKeyboardLanguage:(BOOL)a5 shouldQueue:(BOOL)a6 isInsert:(BOOL)a7 isSuggestion:(BOOL)a8 isDelete:(BOOL)a9 speakLiterally:(BOOL)a10 otherLanguage:(id)a11;
- (void)_speakText:(id)a3 useKeyboardLanguage:(BOOL)a4 shouldQueue:(BOOL)a5 isInsert:(BOOL)a6 isDelete:(BOOL)a7 speakLiterally:(BOOL)a8;
- (void)_typePrintBraille:(id)a3;
- (void)_updateBrailleTypingPropertiesAndDelayAnnouncement:(BOOL)a3 forUnlockConfiguration:(BOOL)a4 preferSingleHand:(BOOL)a5;
- (void)_updateBrailleUI;
- (void)_updateDotNumberCirclesForPrintBraille:(id)a3;
- (void)_updateDotNumbersWithReversed:(BOOL)a3;
- (void)_updateDotPositions;
- (void)_updateShouldUseContractedBraille;
- (void)accelerometer:(id)a3 didChangeDeviceOrientation:(int64_t)a4;
- (void)applyNextSuggestionToElement:(id)a3;
- (void)applyPreviousSuggestionToElement:(id)a3;
- (void)clearCurrentString;
- (void)currentElementDidChange;
- (void)dealloc;
- (void)didInputBackspace;
- (void)didInputWordBackspace;
- (void)didSelectItem;
- (void)eventFactoryDidBeginSplitGesture:(id)a3;
- (void)flushCharacterBuffer;
- (void)handleBrailleGestureWithLeftPatternDictionary:(id)a3 rightPatternDictionary:(id)a4;
- (void)inputSpaceForElement:(id)a3;
- (void)pressReturnKeyForElement:(id)a3;
- (void)sendCarriageReturnForElement:(id)a3;
- (void)setActive:(BOOL)a3 usage:(int64_t)a4 preferSingleHand:(BOOL)a5;
- (void)setLeftSideInput:(id)a3;
- (void)setTypingMode:(int64_t)a3;
- (void)setUsage:(int64_t)a3 userInitiated:(BOOL)a4;
- (void)updateWithString:(id)a3;
@end

@implementation VOTBrailleGestureManager

- (VOTBrailleGestureManager)init
{
  v34.receiver = self;
  v34.super_class = VOTBrailleGestureManager;
  v2 = [(VOTGesturedTextInputManager *)&v34 init];
  if (v2)
  {
    v3 = objc_alloc_init(VOTBrailleGestureTranslator);
    gestureTranslator = v2->_gestureTranslator;
    v2->_gestureTranslator = v3;

    [(VOTBrailleGestureTranslator *)v2->_gestureTranslator setDelegate:v2];
    v5 = objc_alloc_init(VOTBrailleGestureSpellingSuggestionHandler);
    spellingSuggestionHandler = v2->_spellingSuggestionHandler;
    v2->_spellingSuggestionHandler = v5;

    v7 = objc_alloc_init(VOTBrailleGestureCandidateManager);
    candidateManager = v2->_candidateManager;
    v2->_candidateManager = v7;

    v9 = objc_alloc_init(BKSAccelerometer);
    accelerometer = v2->_accelerometer;
    v2->_accelerometer = v9;

    [(BKSAccelerometer *)v2->_accelerometer setDelegate:v2];
    v11 = objc_alloc_init(NSMutableDictionary);
    allTouchLocationsByIdentifier = v2->_allTouchLocationsByIdentifier;
    v2->_allTouchLocationsByIdentifier = v11;

    v13 = objc_alloc_init(NSMutableDictionary);
    firstTouchLocationsByIdentifier = v2->_firstTouchLocationsByIdentifier;
    v2->_firstTouchLocationsByIdentifier = v13;

    v15 = objc_alloc_init(AXDispatchTimer);
    logBSIUsageTimer = v2->_logBSIUsageTimer;
    v2->_logBSIUsageTimer = v15;

    v17 = objc_alloc_init(AXDispatchTimer);
    initialOrientationTimer = v2->_initialOrientationTimer;
    v2->_initialOrientationTimer = v17;

    v19 = [[VOTTextMovementManager alloc] initWithSegments:&off_1001DBB10];
    movementManager = v2->_movementManager;
    v2->_movementManager = v19;

    v21 = +[AXSettings sharedInstance];
    v2->_usesTypingSoundFeedback = [v21 voiceOverTouchBrailleGesturesUsesTypingSoundFeedback];

    v22 = +[AXSettings sharedInstance];
    v2->_usesHapticFeedback = [v22 voiceOverTouchBrailleGesturesUsesHapticFeedback];

    objc_initWeak(&location, v2);
    v23 = +[AXSettings sharedInstance];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000FB94C;
    v31[3] = &unk_1001C78D8;
    objc_copyWeak(&v32, &location);
    [v23 registerUpdateBlock:v31 forRetrieveSelector:"voiceOverTouchBrailleShouldReverseDots" withListener:v2];

    objc_destroyWeak(&v32);
    v24 = +[AXSettings sharedInstance];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000FB98C;
    v29[3] = &unk_1001C78D8;
    objc_copyWeak(&v30, &location);
    [v24 registerUpdateBlock:v29 forRetrieveSelector:"voiceOverTouchBrailleGesturesUsesTypingSoundFeedback" withListener:v2];

    objc_destroyWeak(&v30);
    v25 = +[AXSettings sharedInstance];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000FB9FC;
    v27[3] = &unk_1001C78D8;
    objc_copyWeak(&v28, &location);
    [v25 registerUpdateBlock:v27 forRetrieveSelector:"voiceOverTouchBrailleGesturesUsesHapticFeedback" withListener:v2];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  [(BKSAccelerometer *)self->_accelerometer setDelegate:0];
  [(BSInvalidatable *)self->_disableIdleTimerAssertion invalidate];
  v3.receiver = self;
  v3.super_class = VOTBrailleGestureManager;
  [(VOTBrailleGestureManager *)&v3 dealloc];
}

- (void)setActive:(BOOL)a3 usage:(int64_t)a4 preferSingleHand:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v9 = [(VOTGesturedTextInputManager *)self isActive];
  v48.receiver = self;
  v48.super_class = VOTBrailleGestureManager;
  [(VOTGesturedTextInputManager *)&v48 setActive:v7];
  [(VOTBrailleGestureTranslator *)self->_gestureTranslator setActive:v7];
  v10 = [(VOTBrailleGestureManager *)self usage];
  _AXSBrailleScreenInputSetEnabled();
  if (v7 && (v9 & 1) == 0)
  {
    self->_usage = a4;
    [(VOTBrailleGestureManager *)self setDidInitialCalibration:0];
    [(VOTBrailleGestureManager *)self setDidStartFullGesture:0];
    [(VOTBrailleGestureManager *)self setDidAnnounceBrailleTypingProperties:0];
    [(BKSAccelerometer *)self->_accelerometer setPassiveOrientationEvents:0];
    [(BKSAccelerometer *)self->_accelerometer setOrientationEventsEnabled:1];
    [(VOTBrailleGestureManager *)self _updateShouldUseContractedBraille];
    [(VOTBrailleGestureManager *)self setLeftSideInput:0];
    [(VOTBrailleGestureManager *)self setStylusInput:@"⠀"];
    [(VOTBrailleGestureManager *)self _updateBrailleTypingPropertiesAndDelayAnnouncement:1 forUnlockConfiguration:0 preferSingleHand:v5];
    v11 = +[VOTElement systemAppApplication];
    [v11 setRotationCapabilityEnabled:0];

    v12 = +[VOTDisplayManager displayManager];
    v13 = [(VOTBrailleGestureManager *)self keyboardOrientation];
    v14 = [(VOTBrailleGestureTranslator *)self->_gestureTranslator dotNumberPositions];
    [v12 showBrailleUIWithOrientation:v13 dotPositions:v14 typingMode:{-[VOTBrailleGestureManager typingMode](self, "typingMode")}];

    v15 = [(VOTBrailleGestureManager *)self disableIdleTimerAssertion];

    if (!v15)
    {
      v16 = +[AXUserEventTimer sharedInstance];
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = [v16 acquireAssertionToDisableIdleTimerWithReason:v18];
      [(VOTBrailleGestureManager *)self setDisableIdleTimerAssertion:v19];
    }

    v20 = [(VOTBrailleGestureManager *)self lockScreenDimmingTimer];

    if (!v20)
    {
      v21 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
      [(VOTBrailleGestureManager *)self setLockScreenDimmingTimer:v21];

      v22 = [(VOTBrailleGestureManager *)self lockScreenDimmingTimer];
      [v22 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    }

    v23 = [(VOTBrailleGestureManager *)self lockScreenDimmingTimer];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_1000FC1B0;
    v47[3] = &unk_1001C76E8;
    v47[4] = self;
    [v23 afterDelay:v47 processBlock:30.0];

    v24 = [(VOTBrailleGestureManager *)self logBSIUsageTimer];
    [v24 afterDelay:&stru_1001CB100 processBlock:0 cancelBlock:15.0];

    v25 = [(VOTBrailleGestureManager *)self movementManager];
    [v25 setSegment:1];

    v26 = [(VOTBrailleGestureManager *)self initialOrientationTimer];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_1000FC254;
    v46[3] = &unk_1001C76E8;
    v46[4] = self;
    [v26 afterDelay:v46 processBlock:0.1];

    if (a4 == 1)
    {
      v27 = sub_1000511CC(off_1001FDDD0, @"entering.bsi.in.command.mode", 0);
      v28 = +[VOSOutputEvent BSIDidEnableCommand];
    }

    else
    {
      if (a4)
      {
LABEL_20:
        v39 = +[AXSettings sharedInstance];
        v40 = [v39 voiceOverTouchBrailleGesturesCharacterAcceptanceTestBraille];

        if (v40)
        {
          v41 = +[NSMutableCharacterSet whitespaceAndNewlineCharacterSet];
          [v41 addCharactersInString:@"⠀"];
          v42 = +[AXSettings sharedInstance];
          v43 = [v42 voiceOverTouchBrailleGesturesCharacterAcceptanceTestBraille];
          v44 = [v43 componentsSeparatedByCharactersInSet:v41];

          v45 = [v44 componentsJoinedByString:&stru_1001CBF90];
          [(VOTBrailleGestureManager *)self setCharacterAcceptanceTestBrailleWithoutWhitespace:v45];
        }

        else
        {
          [(VOTBrailleGestureManager *)self setCharacterAcceptanceTestBrailleWithoutWhitespace:0];
        }

        [(VOTBrailleGestureManager *)self setCharacterAcceptanceTestBrailleIndex:0];
        [(VOTBrailleGestureManager *)self setCharacterAcceptanceTestAcceptedCount:0];
        return;
      }

      v27 = sub_1000511CC(off_1001FDDD0, @"entering.bsi", 0);
      v28 = +[VOSOutputEvent BSIDidEnableTyping];
    }

    v38 = v28;
    [(VOTBrailleGestureManager *)self _announceRespectingSoundSettingsRequest:v27 event:v28];

    goto LABEL_20;
  }

  if (v7 || ((v9 ^ 1) & 1) != 0)
  {
    if (v7 && v10 != a4)
    {
      [(VOTBrailleGestureManager *)self setUsage:a4];
    }
  }

  else
  {
    if (![(VOTBrailleGestureTranslator *)self->_gestureTranslator isBufferSecure])
    {
      v29 = [(VOTBrailleGestureTranslator *)self->_gestureTranslator translateExistingInputWithMode:[(VOTBrailleGestureManager *)self mode]];
      [(VOTBrailleGestureManager *)self updateWithString:v29];
    }

    [(VOTBrailleGestureManager *)self clearCurrentString];
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_handleCalibrationTimeout" object:0];
    [(VOTBrailleGestureManager *)self _cleanUpTouchesIncludingCalibrationStartPoints:1];
    [(BKSAccelerometer *)self->_accelerometer setPassiveOrientationEvents:1];
    [(BKSAccelerometer *)self->_accelerometer setOrientationEventsEnabled:0];
    [(VOTBrailleGestureManager *)self _updateBrailleTypingPropertiesAndDelayAnnouncement:0];
    v30 = +[VOTDisplayManager displayManager];
    [v30 hideBrailleUI];

    [(VOTBrailleGestureSpellingSuggestionHandler *)self->_spellingSuggestionHandler clearSpellingSuggestions];
    [(VOTBrailleGestureCandidateManager *)self->_candidateManager deactivate];
    [(VOTBrailleGestureTranslator *)self->_gestureTranslator savePersistentGestureData];
    v31 = +[VOTElement systemAppApplication];
    [v31 setRotationCapabilityEnabled:1];

    v32 = [(VOTBrailleGestureManager *)self disableIdleTimerAssertion];
    [v32 invalidate];

    [(VOTBrailleGestureManager *)self setDisableIdleTimerAssertion:0];
    v33 = [(VOTBrailleGestureManager *)self lockScreenDimmingTimer];
    [v33 cancel];

    v34 = [(VOTBrailleGestureManager *)self logBSIUsageTimer];
    [v34 cancel];

    v35 = [(VOTBrailleGestureManager *)self initialOrientationTimer];
    [v35 cancel];

    v36 = sub_1000511CC(off_1001FDDD0, @"stopping.bsi", 0);
    v37 = +[VOSOutputEvent BSIDidDisable];
    [(VOTBrailleGestureManager *)self _announceRespectingSoundSettingsRequest:v36 event:v37];
  }
}

- (BOOL)wantsToStayActive
{
  LODWORD(v3) = [(VOTGesturedTextInputManager *)self isActive];
  if (v3)
  {
    v3 = [(VOTBrailleGestureManager *)self usage];
    if (v3 != 1)
    {
      v4 = +[AXSettings sharedInstance];
      v5 = [v4 voiceOverTouchBrailleGestureControl];

      LOBYTE(v3) = v5;
    }
  }

  return v3;
}

- (BOOL)allowsElementMovement
{
  v3 = [VOTSharedWorkspace currentElement];
  [v3 updateGesturedTextInputAttributes];
  if ([(VOTGesturedTextInputManager *)self isActive]&& ![(VOTBrailleGestureManager *)self usage])
  {
    v6 = [v3 gesturedTextInputAttributes];
    if ([v6 acceptsRawInput])
    {
      v4 = [v3 isVisible] ^ 1;
    }

    else
    {
      LOBYTE(v4) = 1;
    }
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (void)setUsage:(int64_t)a3 userInitiated:(BOOL)a4
{
  if ([(VOTGesturedTextInputManager *)self isActive:a3])
  {
    usage = self->_usage;
    self->_usage = a3;
    if (usage != a3)
    {
      if (!usage)
      {
        [(VOTBrailleGestureManager *)self _commitBufferedBraille];
      }

      if (a3 == 1)
      {
        v9 = sub_1000511CC(off_1001FDDD0, @"bsi.command.mode", 0);
        v7 = +[VOSOutputEvent BSIDidEnableCommand];
        v8 = sub_1000511CC(off_1001FDDD0, @"bsi.command.mode.hint", 0);
        [(VOTBrailleGestureManager *)self _announceRespectingSoundSettingsRequest:v9 event:v7 hint:v8];
      }

      else
      {
        if (a3)
        {
          return;
        }

        v9 = sub_1000511CC(off_1001FDDD0, @"bsi.braille.entry", 0);
        v7 = +[VOSOutputEvent BSIDidEnableTyping];
        [(VOTBrailleGestureManager *)self _announceRespectingSoundSettingsRequest:v9 event:v7];
      }
    }
  }
}

- (void)clearCurrentString
{
  v3.receiver = self;
  v3.super_class = VOTBrailleGestureManager;
  [(VOTGesturedTextInputManager *)&v3 clearCurrentString];
  [(VOTBrailleGestureTranslator *)self->_gestureTranslator clearBrailleBuffer];
}

- (BOOL)processEvent:(id)a3
{
  v4 = a3;
  if ([(VOTBrailleGestureManager *)self gesturesControlRotor])
  {
    v5 = [(VOTGesturedTextInputManager *)self currentElementAttributes];
    v6 = [v5 acceptsRawInput];

    if (v6)
    {
      [(VOTBrailleGestureManager *)self _replaceRotorEventWithTextMovementEvent:v4];
    }
  }

  if ([(VOTBrailleGestureManager *)self _isNextBrailleUsageEvent:v4])
  {
    v28 = _NSConcreteStackBlock;
    v29 = 3221225472;
    v30 = sub_1000FC968;
    v31 = &unk_1001C76E8;
    v32 = self;
LABEL_10:
    AXPerformBlockOnMainThread();
LABEL_11:
    v7 = 1;
    goto LABEL_12;
  }

  if ([(VOTBrailleGestureManager *)self _isPreviousBrailleUsageEvent:v4])
  {
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_1000FC974;
    v26 = &unk_1001C76E8;
    v27 = self;
    goto LABEL_10;
  }

  if ([(VOTBrailleGestureManager *)self _isTranslateImmediatelyEvent:v4])
  {
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_1000FC980;
    v21 = &unk_1001C76E8;
    v22 = self;
    goto LABEL_10;
  }

  if ([(VOTBrailleGestureManager *)self _isCarriageReturnSwipeEvent:v4])
  {
    if ([(VOTBrailleGestureManager *)self _handleCarriageReturnSwipe])
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

  if ([(VOTBrailleGestureManager *)self _isToggleLockedConfigurationEvent:v4])
  {
    v9 = +[AXSettings sharedInstance];
    if ([v9 voiceOverTouchBrailleGesturesShouldUseLockedConfiguration])
    {
      [v9 setVoiceOverTouchBrailleGesturesShouldUseLockedConfiguration:0];
      [(VOTBrailleGestureManager *)self _updateBrailleTypingPropertiesAndDelayAnnouncement:0 forUnlockConfiguration:1];
      [(VOTBrailleGestureManager *)self _updateBrailleUI];
    }

    else
    {
      v15 = sub_1000511CC(off_1001FDDD0, @"braille.locked.configuration", 0);
      [(VOTBrailleGestureManager *)self _speakText:v15 useKeyboardLanguage:0];

      [v9 setVoiceOverTouchBrailleGesturesLockedOrientation:{-[VOTBrailleGestureManager keyboardOrientation](self, "keyboardOrientation")}];
      [v9 setVoiceOverTouchBrailleGesturesLockedTypingMode:{-[VOTBrailleGestureManager typingMode](self, "typingMode")}];
      [v9 setVoiceOverTouchBrailleGesturesShouldUseLockedConfiguration:1];
    }

    goto LABEL_11;
  }

  if ([(VOTBrailleGestureManager *)self _isAdjustTextSegmentEvent:v4]|| [(VOTBrailleGestureManager *)self _isSelectEvent:v4])
  {
    v10 = VOTLogEvent();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v4 command];
      v12 = [(VOTBrailleGestureManager *)self movementManager];
      *buf = 138412546;
      v34 = v11;
      v35 = 1024;
      v36 = [v12 segment];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Passing up %@ event with segment:%d.", buf, 0x12u);
    }

    v13 = [(VOTBrailleGestureManager *)self movementManager];
    v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v13 segment]);
    [v4 setObject:v14 forIndex:118];

    [(VOTBrailleGestureManager *)self setSplitting:1];
    [(VOTBrailleGestureManager *)self _endExploringDotPatterns];
    goto LABEL_24;
  }

  if (![(VOTBrailleGestureManager *)self _isAdjustTextSegmentTypeEvent:v4]|| (v16 = [(VOTBrailleGestureManager *)self _handleAdjustTextSegmentTypeEvent:v4], v7 = 1, [(VOTBrailleGestureManager *)self setSplitting:1], [(VOTBrailleGestureManager *)self _endExploringDotPatterns], (v16 & 1) == 0))
  {
LABEL_24:
    v17.receiver = self;
    v17.super_class = VOTBrailleGestureManager;
    v7 = [(VOTGesturedTextInputManager *)&v17 processEvent:v4];
  }

LABEL_12:

  return v7;
}

- (void)_replaceRotorEventWithTextMovementEvent:(id)a3
{
  v6 = a3;
  if ([(VOTBrailleGestureManager *)self isRotorLeftEvent:?])
  {
    v4 = v6;
    v5 = &kVOTEventCommandNextTextSegmentType;
  }

  else if ([(VOTBrailleGestureManager *)self isRotorRightEvent:v6])
  {
    v4 = v6;
    v5 = &kVOTEventCommandPreviousTextSegmentType;
  }

  else if ([(VOTBrailleGestureManager *)self isRotorDownEvent:v6])
  {
    v4 = v6;
    v5 = &kVOTEventCommandNextTextSegment;
  }

  else if ([(VOTBrailleGestureManager *)self isRotorUpEvent:v6])
  {
    v4 = v6;
    v5 = &kVOTEventCommandPreviousTextSegment;
  }

  else if ([(VOTBrailleGestureManager *)self isTextSelectionForwardEvent:v6])
  {
    v4 = v6;
    v5 = &kVOTEventCommandSelectRight;
  }

  else
  {
    if (![(VOTBrailleGestureManager *)self isTextSelectionBackwardEvent:v6])
    {
      goto LABEL_14;
    }

    v4 = v6;
    v5 = &kVOTEventCommandSelectLeft;
  }

  [v4 setCommand:*v5];
LABEL_14:
}

- (BOOL)processTouchLocations:(id)a3 isFirstTouch:(BOOL)a4 isCancelTouch:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  if (![(VOTBrailleGestureManager *)self typingMode]|| [(VOTBrailleGestureManager *)self _isTypingModeInputColumnsVariant])
  {
    v9 = [(VOTBrailleGestureManager *)self _touchLocationsByFilteringOutEdges:v8];

    v8 = v9;
  }

  if (![v8 count])
  {
    v10 = [(VOTBrailleGestureManager *)self lastTouchLocationsByIdentifier];
    v11 = [v10 count];

    if (!v11)
    {
      goto LABEL_30;
    }
  }

  if (!v6 && ![(VOTBrailleGestureManager *)self didStartFullGesture])
  {
    if (![(VOTBrailleGestureManager *)self didInitialCalibration])
    {
      if ([(VOTBrailleGestureManager *)self _isTypingModeInputColumnsVariant])
      {
        v16 = ([(VOTBrailleGestureManager *)self _shouldUseEightDotBraille]? 4 : 3);
        if ([v8 count] == v16)
        {
          v17 = [v8 allValues];
          [(VOTBrailleGestureManager *)self _calibrateWithTouchPoints:v17 silently:1];
          [(VOTBrailleGestureManager *)self _updateBrailleUI];
        }
      }

      [(VOTBrailleGestureManager *)self setDidInitialCalibration:1];
    }

    goto LABEL_30;
  }

  v12 = [v8 count];
  v13 = [(VOTBrailleGestureManager *)self lastTouchLocationsByIdentifier];
  v14 = [v13 count];

  if (v12 != v14 && [(VOTBrailleGestureManager *)self _isTypingModeInputColumnsVariant])
  {
    if ([(VOTBrailleGestureManager *)self _shouldUseEightDotBraille])
    {
      v15 = 4;
    }

    else
    {
      v15 = 3;
    }

    if ([v8 count] == v15)
    {
      [(VOTBrailleGestureManager *)self performSelector:"_handleSingleHandCalibration" withObject:0 afterDelay:1.0];
    }

    else
    {
      [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_handleSingleHandCalibration" object:0];
    }
  }

  [(VOTBrailleGestureManager *)self setLastTouchLocationsByIdentifier:v8];
  if ([v8 count] || v12 == v14)
  {
    if (v6)
    {
      [(VOTBrailleGestureManager *)self setDidStartFullGesture:1];
      [(VOTBrailleGestureManager *)self setShouldUpdateDotPositions:1];
    }

    [(VOTBrailleGestureManager *)self _handleFingersOnScreen:v8 didAddOrRemoveFingers:v12 != v14];
LABEL_30:
    v18 = 0;
    goto LABEL_31;
  }

  [(VOTBrailleGestureManager *)self setOverridePrintBrailleWithAllSixDots:v5 & ~AXDeviceSupportsManyTouches()];
  v18 = [(VOTBrailleGestureManager *)self _handleAllFingersLifted];
LABEL_31:

  return v18;
}

- (id)_touchLocationsByFilteringOutEdges:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [v6 objectForKeyedSubscript:{v11, v21}];
        [v12 ax_CGPointValue];
        v14 = v13;
        v16 = v15;

        v17 = v14 / sub_100051A04([(VOTBrailleGestureManager *)self keyboardOrientation]);
        if (v17 > 0.05 && v17 < 0.95)
        {
          v17 = v16 / v18;
          if (v16 / v18 > 0.05 && v17 < 0.95)
          {
            v19 = [v6 objectForKeyedSubscript:v11];
            [v5 setObject:v19 forKeyedSubscript:v11];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:{16, v17}];
    }

    while (v8);
  }

  return v5;
}

- (void)setTypingMode:(int64_t)a3
{
  if (self->_typingMode != a3)
  {
    v5 = [(VOTBrailleGestureTranslator *)self->_gestureTranslator translateExistingInputWithMode:[(VOTBrailleGestureManager *)self mode]];
    [(VOTBrailleGestureManager *)self updateWithString:v5];

    if ([(VOTBrailleGestureManager *)self _isTypingModeInputColumnsVariant])
    {
      v6 = [(VOTBrailleGestureManager *)self leftSideInput];
      [(VOTBrailleGestureManager *)self _updateDotNumbersWithReversed:v6 != 0];
    }

    else
    {
      [(VOTBrailleGestureManager *)self setLeftSideInput:0];
    }

    if ((a3 - 5) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      [(VOTBrailleGestureManager *)self setStylusInput:@"⠀"];
    }

    self->_typingMode = a3;
  }
}

- (BOOL)_isTypingModeSingleHandVariant
{
  if ([(VOTBrailleGestureManager *)self _isTypingModeInputColumnsVariant])
  {
    return 1;
  }

  return [(VOTBrailleGestureManager *)self _isTypingModeStylusVariant];
}

- (void)inputSpaceForElement:(id)a3
{
  v4 = a3;
  if (![(VOTBrailleGestureManager *)self _isTypingModeInputColumnsVariant])
  {
    if (![(VOTBrailleGestureManager *)self _isTypingModeStylusVariant])
    {
      goto LABEL_6;
    }

    v7 = [(VOTBrailleGestureManager *)self stylusInput];
    v8 = [v7 isEqualToString:@"⠀"];

    if (v8)
    {
      goto LABEL_6;
    }

    v10 = &off_1001DBB40;
LABEL_11:
    [(VOTBrailleGestureManager *)self _handleTouchPoints:v10];
    goto LABEL_22;
  }

  v5 = [(VOTBrailleGestureManager *)self leftSideInput];
  v6 = [v5 isEqualToString:@"⠀"];

  if (!v6)
  {
    v10 = &off_1001DBB28;
    goto LABEL_11;
  }

  [(VOTBrailleGestureManager *)self setLeftSideInput:0];
LABEL_6:
  if ([(VOTBrailleGestureManager *)self _requiresCandidateSelection])
  {
    v9 = [(VOTBrailleGestureTranslator *)self->_gestureTranslator translateExistingInputWithMode:[(VOTBrailleGestureManager *)self mode]];
    if ([v9 length])
    {
      [(VOTBrailleGestureManager *)self _applyNextCandidate];
LABEL_17:

      goto LABEL_22;
    }
  }

  if ([(VOTBrailleGestureManager *)self _requiresLaTeXInput])
  {
    v9 = [[BRLTBrailleChar alloc] initWithBits:0];
    gestureTranslator = self->_gestureTranslator;
    v12 = [v9 unicode];
    [(VOTBrailleGestureTranslator *)gestureTranslator addPrintBrailleToBuffer:v12 language:0];

    [(VOTBrailleGestureTranslator *)self->_gestureTranslator didInputSpace];
    v13 = +[AXSettings sharedInstance];
    v14 = [v13 voiceOverBrailleGesturesTypingFeedback];

    if ((v14 & 0xFFFFFFFFFFFFFFFDLL) == 0)
    {
      v15 = [(VOTGesturedTextInputManager *)self currentElementAttributes];
      v16 = [v15 shouldPlayKeyboardSecureClickSound];

      if ((v16 & 1) == 0)
      {
        v17 = +[VOTWorkspace sharedWorkspace];
        v18 = [v17 selectedLanguage];
        v19 = sub_100051B24(32, @"UnicodeHex.", @"VOTOutputPunctuation", v18);

        [(VOTBrailleGestureManager *)self _speakText:v19 useKeyboardLanguage:0];
      }
    }

    goto LABEL_17;
  }

  if (![(VOTBrailleGestureManager *)self _handleWordBreak:v4 includeSpace:1])
  {
    v22.receiver = self;
    v22.super_class = VOTBrailleGestureManager;
    [(VOTGesturedTextInputManager *)&v22 inputSpaceForElement:v4];
  }

  [(VOTBrailleGestureManager *)self clearCurrentString];
  [(VOTBrailleGestureTranslator *)self->_gestureTranslator didInputSpace];
  [(VOTBrailleGestureSpellingSuggestionHandler *)self->_spellingSuggestionHandler clearSpellingSuggestions];
  if ([(VOTBrailleGestureManager *)self usesTypingSoundFeedback])
  {
    v20 = +[VOTOutputManager outputManager];
    v21 = +[VOSOutputEvent BSIDidEnterSpace];
    [v20 sendEvent:v21];
  }

LABEL_22:
}

- (void)pressReturnKeyForElement:(id)a3
{
  v4 = a3;
  if ([(VOTBrailleGestureManager *)self _requiresCandidateSelection])
  {
    v5 = [(VOTBrailleGestureTranslator *)self->_gestureTranslator translateExistingInputWithMode:[(VOTBrailleGestureManager *)self mode]];
    if ([v5 length])
    {
      [(VOTBrailleGestureManager *)self _handleWordBreak:v4 includeSpace:0];
      [(VOTBrailleGestureManager *)self clearCurrentString];
      [(VOTBrailleGestureCandidateManager *)self->_candidateManager deactivate];

      goto LABEL_11;
    }
  }

  if ([(VOTBrailleGestureManager *)self _requiresLaTeXInput])
  {
    [(VOTBrailleGestureTranslator *)self->_gestureTranslator addPrintBrailleToBuffer:@"\n" language:0];
    [(VOTBrailleGestureTranslator *)self->_gestureTranslator didPressReturnKey];
    v6 = +[AXSettings sharedInstance];
    v7 = [v6 voiceOverBrailleGesturesTypingFeedback];

    if ((v7 & 0xFFFFFFFFFFFFFFFDLL) == 0)
    {
      v8 = [(VOTGesturedTextInputManager *)self currentElementAttributes];
      v9 = [v8 shouldPlayKeyboardSecureClickSound];

      if ((v9 & 1) == 0)
      {
        v10 = +[VOTWorkspace sharedWorkspace];
        v11 = [v10 selectedLanguage];
        v12 = sub_100051B24(10, @"UnicodeHex.", @"VOTOutputPunctuation", v11);

        [(VOTBrailleGestureManager *)self _speakText:v12 useKeyboardLanguage:0];
      }
    }
  }

  else
  {
    [(VOTBrailleGestureManager *)self _handleWordBreak:v4 includeSpace:0];
    v15.receiver = self;
    v15.super_class = VOTBrailleGestureManager;
    [(VOTGesturedTextInputManager *)&v15 pressReturnKeyForElement:v4];
    [(VOTBrailleGestureTranslator *)self->_gestureTranslator didPressReturnKey];
    [(VOTBrailleGestureSpellingSuggestionHandler *)self->_spellingSuggestionHandler clearSpellingSuggestions];
    if ([(VOTBrailleGestureManager *)self usesTypingSoundFeedback])
    {
      v13 = +[VOTOutputManager outputManager];
      v14 = +[VOSOutputEvent BSIDidCarriageReturn];
      [v13 sendEvent:v14];
    }
  }

LABEL_11:
}

- (void)sendCarriageReturnForElement:(id)a3
{
  v4 = a3;
  [(VOTBrailleGestureManager *)self _handleWordBreak:v4 includeSpace:0];
  v5.receiver = self;
  v5.super_class = VOTBrailleGestureManager;
  [(VOTGesturedTextInputManager *)&v5 sendCarriageReturnForElement:v4];

  [(VOTBrailleGestureTranslator *)self->_gestureTranslator didPressReturnKey];
  [(VOTBrailleGestureSpellingSuggestionHandler *)self->_spellingSuggestionHandler clearSpellingSuggestions];
  [(VOTBrailleGestureCandidateManager *)self->_candidateManager deactivate];
}

- (BOOL)_handleWordBreak:(id)a3 includeSpace:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(VOTBrailleGestureManager *)self _commitLoneLeftColumnIfNeeded];
  if ([(VOTBrailleGestureCandidateManager *)self->_candidateManager isActive])
  {
    [(VOTBrailleGestureManager *)self _insertCurrentSelectedCandidate];
  }

  else
  {
    v7 = [(VOTBrailleGestureSpellingSuggestionHandler *)self->_spellingSuggestionHandler currentSpellingSuggestion];

    if (v7)
    {
      [(VOTBrailleGestureManager *)self _insertCurrentSelectedSuggestion:v6];
    }

    else
    {
      if (![(VOTBrailleGestureManager *)self _shouldUseContractedBraille]&& ![(VOTBrailleGestureManager *)self _requiresCandidateSelection])
      {
        v12 = 0;
        goto LABEL_14;
      }

      v8 = [(VOTBrailleGestureTranslator *)self->_gestureTranslator translateExistingInputWithMode:[(VOTBrailleGestureManager *)self mode]];
      v9 = &stru_1001CBF90;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = &stru_1001CBF90;
      }

      if (v4)
      {
        v9 = @" ";
      }

      v11 = [NSString stringWithFormat:@"%@%@", v10, v9];
      [(VOTBrailleGestureManager *)self updateWithString:v11];
    }
  }

  v12 = 1;
LABEL_14:

  return v12;
}

- (void)updateWithString:(id)a3
{
  v4 = a3;
  v5 = VOTLogBrailleGestures();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100130CFC();
  }

  v6.receiver = self;
  v6.super_class = VOTBrailleGestureManager;
  [(VOTGesturedTextInputManager *)&v6 updateWithString:v4];
}

- (BOOL)_shouldReverseDots
{
  if (self->_typingMode == 5)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v4 = +[AXSettings sharedInstance];
    if ([v4 voiceOverTouchBrailleShouldReverseDots])
    {
      v2 = ![(VOTBrailleGestureManager *)self _isTypingModeSingleHandVariant];
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2;
}

- (BOOL)_handleAdjustTextSegmentTypeEvent:(id)a3
{
  v4 = [a3 command];
  v5 = [v4 isEqualToString:kVOTEventCommandNextTextSegmentType];

  v6 = [(VOTBrailleGestureManager *)self movementManager];
  v7 = v6;
  if (v5)
  {
    [v6 nextSegment];
  }

  else
  {
    [v6 previousSegment];
  }

  v8 = [VOTSharedWorkspace selectedLanguage];
  v9 = [(VOTBrailleGestureManager *)self movementManager];
  v10 = [v9 localizedSegmentName];

  v11 = sub_1000095FC(v10, 0, v8);
  return 1;
}

- (unint64_t)mode
{
  if ([(VOTBrailleGestureManager *)self translationOverride])
  {

    return [(VOTBrailleGestureManager *)self translationOverride];
  }

  else
  {
    v4 = [(VOTBrailleGestureManager *)self _shouldUseEightDotBraille];
    v5 = [(VOTBrailleGestureManager *)self _shouldUseContractedBraille];
    v6 = [(VOTBrailleGestureManager *)self _requiresLaTeXInput];

    return _BRLTModeForFlags(v4, v5, v6);
  }
}

- (BOOL)isReturnKeyEvent:(id)a3
{
  v3 = [a3 command];
  v4 = [v3 isEqualToString:kVOTEventCommandGesturedTextInputPerformReturnEquivalent];

  return v4;
}

- (BOOL)isSpaceEvent:(id)a3
{
  v3 = [a3 command];
  v4 = [v3 isEqualToString:kVOTEventCommandGesturedTextInputInsertSpace];

  return v4;
}

- (BOOL)isBackspaceEvent:(id)a3
{
  v3 = [a3 command];
  v4 = [v3 isEqualToString:kVOTEventCommandGesturedTextInputBackspace];

  return v4;
}

- (BOOL)isWordBackspaceEvent:(id)a3
{
  v3 = [a3 command];
  v4 = [v3 isEqualToString:kVOTEventCommandGesturedTextInputDeleteWord];

  return v4;
}

- (BOOL)isNextSuggestionEvent:(id)a3
{
  v3 = [a3 command];
  v4 = [v3 isEqualToString:kVOTEventCommandGesturedTextInputNextSuggestion];

  return v4;
}

- (BOOL)isPreviousSuggestionEvent:(id)a3
{
  v3 = [a3 command];
  v4 = [v3 isEqualToString:kVOTEventCommandGesturedTextInputPreviousSuggestion];

  return v4;
}

- (BOOL)isSelectItemEvent:(id)a3
{
  v4 = a3;
  if ([(VOTBrailleGestureManager *)self isReturnKeyEvent:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v4 command];
    v5 = [v6 isEqualToString:kVOTEventCommandGesturedTextInputLaunchApp];
  }

  return v5;
}

- (BOOL)isNextKeyboardLanguageEvent:(id)a3
{
  v3 = [a3 command];
  v4 = [v3 isEqualToString:kVOTEventCommandGesturedTextInputNextKeyboardLanguage];

  return v4;
}

- (BOOL)performNextKeyboardLanguage
{
  v2 = +[VOTWorkspace sharedWorkspace];
  [v2 performNextLanguageButtonPress];

  return 1;
}

- (BOOL)isNextBrailleTableEvent:(id)a3
{
  v3 = [a3 command];
  v4 = [v3 isEqualToString:kVOTEventCommandGesturedTextInputNextBrailleTable];

  return v4;
}

- (BOOL)performNextBrailleTableCommand
{
  [(VOTBrailleGestureManager *)self _commitBufferedBraille];
  v3 = [VOTSharedWorkspace brailleLanguageRotorItems];
  v4 = [v3 ax_filteredArrayUsingBlock:&stru_1001CB120];

  if ([v4 count] > 1)
  {
    v5 = [VOTSharedWorkspace selectedBrailleGesturesInputTable];
    v6 = [v5 identifier];

    if ([v4 count])
    {
      v7 = 0;
      while (1)
      {
        v8 = [v4 objectAtIndexedSubscript:v7];
        v9 = VOSBrailleTableForRotorItem();
        v10 = [v9 identifier];

        LOBYTE(v8) = [v6 isEqual:v10];
        if (v8)
        {
          break;
        }

        if (++v7 >= [v4 count])
        {
          v7 = 0;
          break;
        }
      }

      v11 = v7 + 1;
    }

    else
    {
      v11 = 1;
    }

    v12 = [v4 objectAtIndex:{v11 % objc_msgSend(v4, "count")}];
    v13 = VOSBrailleTableForRotorItem();
    v14 = [(VOTBrailleGestureManager *)self _shouldUseEightDotBraille];
    v15 = [BRLTTable alloc];
    v16 = [v13 identifier];
    v17 = [v15 initWithIdentifier:v16];
    [VOTSharedWorkspace setSelectedBrailleGesturesInputTable:v17];

    v18 = [(VOTBrailleGestureManager *)self _shouldUseEightDotBraille];
    if (v14 != v18)
    {
      v19 = v18;
      LOBYTE(v29) = 1;
      _AXLogWithFacility();
      gestureTranslator = self->_gestureTranslator;
      v21 = [(VOTBrailleGestureManager *)self typingMode:v29];
      v22 = sub_100051A04([(VOTBrailleGestureManager *)self keyboardOrientation]);
      [(VOTBrailleGestureTranslator *)gestureTranslator setTypingMode:v21 keyboardSize:v19 shouldUseEightDotBraille:[(VOTBrailleGestureManager *)self _shouldReverseDots] shouldReverseDots:v22, v23];
      [(VOTBrailleGestureManager *)self _updateBrailleUI];
    }

    v24 = +[VOTOutputRequest createRequest];
    v25 = +[VOTBrailleManager manager];
    v26 = [v25 nameForSpokenAnnouncementOfBrailleTable:v13];
    v27 = [v24 addString:v26];

    [v24 setCannotBeInterrupted:1];
    [v24 send];
  }

  else
  {
    [(VOTBrailleGestureManager *)self _playBonk];
  }

  return 1;
}

- (void)_commitBufferedBraille
{
  [(VOTBrailleGestureManager *)self _commitLoneLeftColumnIfNeeded];
  v3 = [(VOTBrailleGestureTranslator *)self->_gestureTranslator translateExistingInputWithMode:[(VOTBrailleGestureManager *)self mode]];
  [(VOTBrailleGestureManager *)self updateWithString:v3];

  [(VOTBrailleGestureManager *)self clearCurrentString];
  [(VOTBrailleGestureSpellingSuggestionHandler *)self->_spellingSuggestionHandler clearSpellingSuggestions];
  candidateManager = self->_candidateManager;

  [(VOTBrailleGestureCandidateManager *)candidateManager deactivate];
}

- (void)_insertCurrentSelectedSuggestion:(id)a3
{
  spellingSuggestionHandler = self->_spellingSuggestionHandler;
  v5 = a3;
  v6 = [(VOTBrailleGestureManager *)self _languageCodeForSpellChecking];
  v9 = [(VOTBrailleGestureSpellingSuggestionHandler *)spellingSuggestionHandler applySpellingSuggestionForResponder:v5 languageCode:v6];

  v7 = [(VOTGesturedTextInputManager *)self currentElementAttributes];
  LODWORD(v5) = [v7 shouldEchoCharacter];

  if (v5)
  {
    LOWORD(v8) = 0;
    [(VOTBrailleGestureManager *)self _speakText:v9 hint:0 useKeyboardLanguage:1 shouldQueue:0 isInsert:1 isSuggestion:0 isDelete:v8 speakLiterally:0 otherLanguage:?];
  }

  [(VOTBrailleGestureSpellingSuggestionHandler *)self->_spellingSuggestionHandler clearSpellingSuggestions];
}

- (void)_outputChosenSuggestion:(id)a3
{
  v7 = a3;
  if (v7)
  {
    v4 = [(VOTGesturedTextInputManager *)self currentElementAttributes];
    v5 = [v4 shouldEchoCharacter];

    if (v5)
    {
      LOWORD(v6) = 0;
      [(VOTBrailleGestureManager *)self _speakText:v7 hint:0 useKeyboardLanguage:1 shouldQueue:0 isInsert:0 isSuggestion:1 isDelete:v6 speakLiterally:0 otherLanguage:?];
    }
  }

  else
  {
    [(VOTBrailleGestureManager *)self _playBonk];
  }

  [(VOTBrailleGestureManager *)self _flashInsertedTextIfAllowed:v7];
}

- (void)_applySuggestionToElement:(id)a3 direction:(int64_t)a4
{
  gestureTranslator = self->_gestureTranslator;
  v7 = a3;
  v8 = [(VOTBrailleGestureTranslator *)gestureTranslator translateExistingInputWithMode:[(VOTBrailleGestureManager *)self mode]];
  v9 = VOTLogBrailleGestures();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v14 = 138412290;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Translate existing input: %@", &v14, 0xCu);
  }

  [(VOTBrailleGestureManager *)self updateWithString:v8];
  spellingSuggestionHandler = self->_spellingSuggestionHandler;
  v11 = [(VOTBrailleGestureManager *)self _languageCodeForSpellChecking];
  [(VOTBrailleGestureSpellingSuggestionHandler *)spellingSuggestionHandler selectNextSpellingSuggestionInDirection:a4 responder:v7 languageCode:v11];

  v12 = [(VOTBrailleGestureSpellingSuggestionHandler *)self->_spellingSuggestionHandler currentSpellingSuggestion];
  [(VOTBrailleGestureManager *)self _outputChosenSuggestion:v12];
  v13 = VOTLogBrailleGestures();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = 138412290;
    v15 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Spelling suggestion suggested: %@", &v14, 0xCu);
  }
}

- (void)applyNextSuggestionToElement:(id)a3
{
  v4 = a3;
  if ([(VOTBrailleGestureManager *)self _requiresCandidateSelection])
  {
    [(VOTBrailleGestureManager *)self _applyNextCandidate];
  }

  else
  {
    [(VOTBrailleGestureManager *)self _applySuggestionToElement:v4 direction:1];
  }
}

- (void)applyPreviousSuggestionToElement:(id)a3
{
  v4 = a3;
  if ([(VOTBrailleGestureManager *)self _requiresCandidateSelection])
  {
    [(VOTBrailleGestureManager *)self _applyPreviousCandidate];
  }

  else
  {
    [(VOTBrailleGestureManager *)self _applySuggestionToElement:v4 direction:2];
  }
}

- (BOOL)performCustomBackspace
{
  v3 = [(VOTBrailleGestureManager *)self leftSideInput];

  if (v3)
  {
    v4 = [(VOTBrailleGestureManager *)self leftSideInput];
    [(VOTBrailleGestureManager *)self setLeftSideInput:0];
    if (!v4)
    {
      goto LABEL_18;
    }

LABEL_6:
    v7 = [(VOTBrailleGestureManager *)self _isTypingModeSingleHandVariant];
    if (v7)
    {
      v8 = [(VOTBrailleGestureManager *)self _spokenStringForPrintBraille:v4 useLongForm:1];
      [(VOTBrailleGestureManager *)self _speakText:v8 useKeyboardLanguage:0 shouldQueue:0 isInsert:0 isDelete:1 speakLiterally:0];
    }

    if ([(VOTBrailleGestureManager *)self _canUseContractedBraille]&& [(VOTBrailleGestureManager *)self _shouldUseContractedBraille]|| [(VOTBrailleGestureManager *)self _requiresLaTeXInput])
    {
      v9 = v7 ^ 1;
      v10 = [(VOTGesturedTextInputManager *)self currentElementAttributes];
      v11 = [v10 shouldEchoCharacter] & v9;

      if (v11 != 1)
      {
LABEL_16:
        [(VOTBrailleGestureSpellingSuggestionHandler *)self->_spellingSuggestionHandler clearSpellingSuggestions];
        [(VOTBrailleGestureCandidateManager *)self->_candidateManager deactivate];
        [(VOTBrailleGestureManager *)self _updateBrailleUI];
        LOBYTE(v12) = 1;
        goto LABEL_19;
      }

      v12 = [(VOTBrailleGestureManager *)self _spokenStringForPrintBraille:v4 useLongForm:1];
      [(VOTBrailleGestureManager *)self _speakText:v12 useKeyboardLanguage:0 shouldQueue:0 isInsert:0 isDelete:1 speakLiterally:0];
    }

    else
    {
      v12 = [(VOTBrailleGestureTranslator *)self->_gestureTranslator translateExistingInputWithMode:[(VOTBrailleGestureManager *)self mode]];
      if (!v12)
      {
        goto LABEL_19;
      }

      [(VOTBrailleGestureManager *)self updateWithString:v12];
    }

    goto LABEL_16;
  }

  v5 = [(VOTBrailleGestureManager *)self stylusInput];
  v6 = [v5 isEqualToString:@"⠀"];

  if (v6)
  {
    v4 = [(VOTBrailleGestureTranslator *)self->_gestureTranslator popLastBrailleCellFromBuffer];
    if (v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v4 = [(VOTBrailleGestureManager *)self stylusInput];
    [(VOTBrailleGestureManager *)self setStylusInput:@"⠀"];
    if (v4)
    {
      goto LABEL_6;
    }
  }

LABEL_18:
  LOBYTE(v12) = 0;
LABEL_19:
  if ([(VOTBrailleGestureManager *)self usesTypingSoundFeedback])
  {
    v13 = +[VOTOutputManager outputManager];
    v14 = +[VOSOutputEvent BSIDidDelete];
    [v13 sendEvent:v14];
  }

  return v12;
}

- (BOOL)performCustomWordBackspace
{
  if ([(VOTBrailleGestureManager *)self _isTypingModeSingleHandVariant])
  {
    [(VOTBrailleGestureManager *)self _commitLoneLeftColumnIfNeeded];
  }

  v3 = [(VOTBrailleGestureTranslator *)self->_gestureTranslator translatedTextOfBufferWithMode:[(VOTBrailleGestureManager *)self mode]];
  v4 = [v3 length];
  if (v4)
  {
    v5 = [(VOTGesturedTextInputManager *)self currentElementAttributes];
    v6 = [v5 shouldEchoCharacter];

    if (v6)
    {
      [(VOTBrailleGestureManager *)self _speakText:v3 useKeyboardLanguage:0 shouldQueue:0 isInsert:0 isDelete:1 speakLiterally:0];
    }

    [(VOTBrailleGestureTranslator *)self->_gestureTranslator clearBrailleBuffer];
    v7 = [(VOTGesturedTextInputManager *)self delegate];
    [v7 gesturedTextInputManager:self accessCurrentGesturedTextInputElement:&stru_1001CB160];
  }

  return v4 != 0;
}

- (void)didInputBackspace
{
  [(VOTBrailleGestureTranslator *)self->_gestureTranslator didInputBackspace];
  [(VOTBrailleGestureSpellingSuggestionHandler *)self->_spellingSuggestionHandler clearSpellingSuggestions];
  candidateManager = self->_candidateManager;

  [(VOTBrailleGestureCandidateManager *)candidateManager deactivate];
}

- (void)didInputWordBackspace
{
  [(VOTBrailleGestureSpellingSuggestionHandler *)self->_spellingSuggestionHandler clearSpellingSuggestions];
  candidateManager = self->_candidateManager;

  [(VOTBrailleGestureCandidateManager *)candidateManager deactivate];
}

- (void)didSelectItem
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 voiceOverTouchBrailleGestureControl];

  if (v4)
  {

    [(VOTBrailleGestureManager *)self setUsage:1];
  }
}

- (void)currentElementDidChange
{
  [(VOTBrailleGestureManager *)self clearCurrentString];
  [(VOTBrailleGestureSpellingSuggestionHandler *)self->_spellingSuggestionHandler clearSpellingSuggestions];
  candidateManager = self->_candidateManager;

  [(VOTBrailleGestureCandidateManager *)candidateManager deactivate];
}

- (void)eventFactoryDidBeginSplitGesture:(id)a3
{
  v3 = VOTLogEvent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100130D64(v3);
  }

  v4 = +[VOTOutputManager outputManager];
  v5 = +[VOSOutputEvent AutofillDidAppear];
  [v4 sendEvent:v5];
}

- (BOOL)gesturesControlRotor
{
  if ([(VOTBrailleGestureManager *)self usage]== 1)
  {
    return ![(VOTBrailleGestureManager *)self _isTypingModeSingleHandVariant];
  }

  else
  {
    return 0;
  }
}

- (BOOL)_shouldUseEightDotBraille
{
  v3 = [VOTSharedWorkspace selectedBrailleGesturesInputTable];
  if ([v3 supportsTranslationMode8Dot])
  {
    v4 = [(VOTBrailleGestureManager *)self _deviceSupportsMoreThanFiveTouches];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)_numberOfDots
{
  if ([(VOTBrailleGestureManager *)self _shouldUseEightDotBraille])
  {
    return 8;
  }

  else
  {
    return 6;
  }
}

- (void)_appendOrientationToAnnouncement:(id)a3
{
  v4 = a3;
  v5 = +[VOTWorkspace sharedWorkspace];
  v6 = [v5 hintsEnabled];

  [VOTSharedWorkspace selectedLanguage];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000FEDD0;
  v7 = v18[3] = &unk_1001C8FE0;
  v19 = v7;
  v8 = objc_retainBlock(v18);
  v9 = [(VOTBrailleGestureManager *)self keyboardOrientation];
  if (v9 <= 2)
  {
    if (v9 == 1)
    {
      v10 = off_1001FDDD0;
      v11 = @"rotate.portrait";
      goto LABEL_11;
    }

    if (v9 == 2)
    {
      v10 = off_1001FDDD0;
      v11 = @"rotate.portrait.upsidedown";
LABEL_11:
      v14 = sub_1000516CC(v10, v11, 0, v7);
LABEL_18:
      v17 = v14;
      [v4 appendStringWithComma:v14];

      goto LABEL_19;
    }

    goto LABEL_9;
  }

  if (v9 == 3)
  {
    v15 = sub_1000516CC(off_1001FDDD0, @"rotate.landscape.left", 0, v7);
    [v4 appendStringWithComma:v15];

    if (!v6)
    {
      goto LABEL_19;
    }

    v13 = [(VOTBrailleGestureManager *)self typingMode]== 0;
LABEL_14:
    v16 = v13;
    v14 = (v8[2])(v8, v16);
    goto LABEL_18;
  }

  if (v9 != 4)
  {
LABEL_9:
    _AXLogWithFacility();
    goto LABEL_19;
  }

  v12 = sub_1000516CC(off_1001FDDD0, @"rotate.landscape.right", 0, v7);
  [v4 appendStringWithComma:v12];

  if (v6)
  {
    v13 = [(VOTBrailleGestureManager *)self typingMode]== 1;
    goto LABEL_14;
  }

LABEL_19:
}

- (void)_announceBrailleTypingPropertiesIncludingOrientation:(BOOL)a3 typingMode:(BOOL)a4 forUnlockConfiguration:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v22 = +[NSMutableString string];
  v9 = [VOTSharedWorkspace selectedLanguage];
  v10 = +[AXSettings sharedInstance];
  v11 = [v10 voiceOverTouchBrailleGesturesShouldUseLockedConfiguration];

  if ((v11 & 1) != 0 || v5)
  {
    if (v11)
    {
      v19 = @"braille.locked.configuration";
    }

    else
    {
      v19 = @"braille.unlocked.configuration";
    }

    v20 = sub_1000516CC(off_1001FDDD0, v19, 0, v9);
    [v22 appendStringWithComma:v20];

    if (!v7)
    {
LABEL_4:
      if (!v6)
      {
        goto LABEL_11;
      }

      goto LABEL_5;
    }
  }

  else if (!v7)
  {
    goto LABEL_4;
  }

  [(VOTBrailleGestureManager *)self _appendOrientationToAnnouncement:v22];
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_5:
  v12 = [(VOTBrailleGestureManager *)self typingMode];
  v13 = @"braille.single.hand";
  if (!v12)
  {
    v13 = @"braille.screen.away";
  }

  if (v12 == 1)
  {
    v14 = @"braille.table.top";
  }

  else
  {
    v14 = v13;
  }

  v15 = sub_1000516CC(off_1001FDDD0, v14, 0, v9);
  [v22 appendStringWithComma:v15];

LABEL_11:
  if (-[VOTBrailleGestureTranslator areDotNumberPositionsCalibrated](self->_gestureTranslator, "areDotNumberPositionsCalibrated") || (+[AXSettings sharedInstance](AXSettings, "sharedInstance"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 voiceOverTouchBrailleGesturesDidPlayCalibrationHint], v16, (v17 & 1) != 0))
  {
    v18 = 0;
  }

  else
  {
    if ([(VOTBrailleGestureManager *)self _deviceSupportsMoreThanFiveTouches])
    {
      v21 = @"braille.calibrate.instructions.ideal";
    }

    else
    {
      v21 = @"braille.calibrate.instructions.fallback";
    }

    v18 = sub_1000511CC(off_1001FDDD0, v21, 0);
  }

  [(VOTBrailleGestureManager *)self _speakText:v22 hint:v18];
  [(VOTBrailleGestureManager *)self setDidAnnounceBrailleTypingProperties:1];
}

- (void)_updateBrailleTypingPropertiesAndDelayAnnouncement:(BOOL)a3 forUnlockConfiguration:(BOOL)a4 preferSingleHand:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v9 = [(VOTBrailleGestureManager *)self brailleTypingPropertiesAnnouncementTimer];
  [v9 cancel];

  if ([(VOTGesturedTextInputManager *)self isActive])
  {
    v39 = v6;
    v10 = [(VOTBrailleGestureManager *)self keyboardOrientation];
    v11 = +[AXSettings sharedInstance];
    IsPad = AXDeviceIsPad();
    v13 = [v11 voiceOverTouchBrailleGesturesShouldUseLockedConfiguration];
    v14 = v13;
    if (v13)
    {
      v15 = [v11 voiceOverTouchBrailleGesturesLockedTypingMode];
      v16 = [v11 voiceOverTouchBrailleGesturesLockedOrientation];
      if (VOSSingleHandBSIEnabled() && v5)
      {
        v17 = +[AXSettings sharedInstance];
        v18 = [v17 voiceOverTouchBrailleGesturesSingleHandStyle];

        if ((v18 - 1) >= 3)
        {
          v15 = 2;
        }

        else
        {
          v15 = (v18 + 2);
        }

        v16 = 1;
      }

LABEL_47:
      v31 = [(VOTBrailleGestureManager *)self typingMode];
      [(VOTBrailleGestureManager *)self setTypingMode:v15];
      [(VOTBrailleGestureManager *)self setKeyboardOrientation:v16];
      gestureTranslator = self->_gestureTranslator;
      v33 = sub_100051A04(v16);
      [(VOTBrailleGestureTranslator *)gestureTranslator setTypingMode:v15 keyboardSize:[(VOTBrailleGestureManager *)self _shouldUseEightDotBraille] shouldUseEightDotBraille:[(VOTBrailleGestureManager *)self _shouldReverseDots] shouldReverseDots:v33, v34];
      v35 = [(VOTBrailleGestureManager *)self brailleGestureManagerDelegate];
      [v35 brailleGestureManager:self setForcedOrientation:v16 shouldAnnounce:0];

      if ((v14 & 1) == 0)
      {
        if (v7)
        {
          if ([(VOTBrailleGestureManager *)self didAnnounceBrailleTypingProperties])
          {
            _AXAssert();
          }

          v36 = [(VOTBrailleGestureManager *)self brailleTypingPropertiesAnnouncementTimer];

          if (!v36)
          {
            v37 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
            [(VOTBrailleGestureManager *)self setBrailleTypingPropertiesAnnouncementTimer:v37];
          }

          v38 = [(VOTBrailleGestureManager *)self brailleTypingPropertiesAnnouncementTimer];
          v41[0] = _NSConcreteStackBlock;
          v41[1] = 3221225472;
          v41[2] = sub_1000FF4F0;
          v41[3] = &unk_1001C89E8;
          v41[4] = self;
          v42 = v39;
          [v38 afterDelay:v41 processBlock:1.0];
        }

        else
        {
          [(VOTBrailleGestureManager *)self _announceBrailleTypingPropertiesIncludingOrientation:v10 != v16 typingMode:v31 != v15 forUnlockConfiguration:v39];
        }
      }

      return;
    }

    v16 = [VOTSharedWorkspace deviceOrientation];
    v19 = sub_100052300([(BKSAccelerometer *)self->_accelerometer currentDeviceOrientation]);
    v20 = VOSSingleHandBSIEnabled();
    if (v19 == 5)
    {
      v21 = 1;
    }

    else
    {
      v22 = v20 ^ 1;
      if (v19 != 1)
      {
        v22 = 1;
      }

      if (v22)
      {
        v21 = 0;
      }

      else
      {
        v23 = +[AXSettings sharedInstance];
        v24 = [v23 voiceOverTouchBrailleGesturesSingleHandStyle];

        if ((v24 - 1) >= 3)
        {
          v21 = 2;
        }

        else
        {
          v21 = (v24 + 2);
        }
      }

      v25 = VOSSingleHandBSIEnabled();
      if (v19 == 1 && (v25 & 1) != 0)
      {
        v16 = 1;
        goto LABEL_34;
      }

      if ((v19 - 3) < 2)
      {
        goto LABEL_33;
      }
    }

    if (!IsPad)
    {
      if ((v16 - 3) < 2)
      {
        goto LABEL_34;
      }

      if ((v10 - 3) > 1)
      {
        goto LABEL_18;
      }

      goto LABEL_27;
    }

    if ((v19 - 1) >= 2)
    {
      if ((v16 - 1) < 4)
      {
LABEL_34:
        v26 = v10 - 3;
        v27 = [(VOTBrailleGestureManager *)self typingMode];
        v28 = 3;
        if (v10 == 3)
        {
          v28 = 4;
        }

        v29 = 1;
        if (v27)
        {
          v29 = v21;
          v28 = v10;
        }

        if (v21 != 1)
        {
          v29 = v21;
          v28 = v10;
        }

        if (v10 != v16)
        {
          v29 = v21;
          v28 = v16;
        }

        v30 = v26 == 1;
        if (v26 <= 1)
        {
          v15 = v29;
        }

        else
        {
          v15 = v21;
        }

        if (v30 || v10 == 3)
        {
          v16 = v28;
        }

        goto LABEL_47;
      }

      if ((v10 - 1) >= 4)
      {
LABEL_18:
        v16 = 4;
        goto LABEL_34;
      }

LABEL_27:
      v16 = v10;
      goto LABEL_34;
    }

LABEL_33:
    v16 = v19;
    goto LABEL_34;
  }

  [(VOTBrailleGestureManager *)self setKeyboardOrientation:0];
  v40 = [(VOTBrailleGestureManager *)self brailleGestureManagerDelegate];
  [v40 brailleGestureManager:self unsetForcedOrientationAndAnnounce:{-[VOTBrailleGestureManager didAnnounceBrailleTypingProperties](self, "didAnnounceBrailleTypingProperties")}];
}

- (void)_updateShouldUseContractedBraille
{
  if ([(VOTBrailleGestureManager *)self _hasContractedBraillePreference])
  {
    v3 = [(VOTBrailleGestureManager *)self _canUseContractedBraille];
  }

  else
  {
    v3 = 0;
  }

  gestureTranslator = self->_gestureTranslator;

  [(VOTBrailleGestureTranslator *)gestureTranslator setShouldUseContractedBraille:v3];
}

- (BOOL)_canUseContractedBraille
{
  v2 = [(VOTGesturedTextInputManager *)self currentElementAttributes];
  v3 = [v2 acceptsContractedBraille];

  return v3;
}

- (BOOL)_hasContractedBraillePreference
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 voiceOverTouchBrailleGesturesInputMode] == 3;

  return v3;
}

- (BOOL)_shouldUseContractedBraille
{
  v3 = [VOTSharedWorkspace selectedBrailleGesturesInputTable];
  if ([v3 supportsTranslationModeContracted])
  {
    v4 = 1;
  }

  else
  {
    v4 = [(VOTBrailleGestureManager *)self _requiresCandidateSelection];
  }

  return v4;
}

- (BOOL)_requiresLaTeXInput
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(VOTGesturedTextInputManager *)self delegate];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000FF714;
  v5[3] = &unk_1001C8C20;
  v5[4] = &v6;
  [v3 gesturedTextInputManager:v2 accessCurrentGesturedTextInputElement:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (BOOL)_requiresCandidateSelection
{
  v2 = [(VOTBrailleGestureManager *)self _languageCodeForSpellChecking];
  v3 = [v2 hasPrefix:@"ja"];

  return v3;
}

- (BOOL)_patternIncludesEveryFinger:(id)a3
{
  v4 = a3;
  if (-[VOTBrailleGestureManager _shouldUseEightDotBraille](self, "_shouldUseEightDotBraille") && ([v4 isEqualToString:@"⣿"] & 1) != 0)
  {
    v5 = 1;
  }

  else if ([(VOTBrailleGestureManager *)self _shouldUseEightDotBraille])
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 isEqualToString:@"⠿"];
  }

  return v5;
}

- (BOOL)_isCalibrationStartPattern:(id)a3
{
  v4 = a3;
  if ([(VOTBrailleGestureManager *)self _deviceSupportsMoreThanFiveTouches])
  {
    v5 = [(VOTBrailleGestureManager *)self _patternIncludesEveryFinger:v4];
  }

  else
  {
    v5 = [v4 isEqualToString:@"⠸"];
  }

  v6 = v5;

  return v6;
}

- (BOOL)_isCalibrationEndPattern:(id)a3
{
  v4 = a3;
  if ([(VOTBrailleGestureManager *)self _deviceSupportsMoreThanFiveTouches])
  {
    v5 = [(VOTBrailleGestureManager *)self _patternIncludesEveryFinger:v4];
  }

  else
  {
    v5 = [v4 isEqualToString:@"⠇"];
  }

  v6 = v5;

  return v6;
}

- (id)_touchPointsForCalibrationGivenFirstPoints:(id)a3 lastPoints:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(VOTBrailleGestureManager *)self _isTypingModeInputColumnsVariant]|| [(VOTBrailleGestureManager *)self _deviceSupportsMoreThanFiveTouches])
  {
    v8 = v7;
  }

  else
  {
    v8 = [v6 arrayByAddingObjectsFromArray:v7];
  }

  v9 = v8;

  return v9;
}

- (void)_beginExploringDotPatterns
{
  if (![(VOTBrailleGestureManager *)self isSplitting])
  {
    [(VOTBrailleGestureManager *)self setExploring:1];
    [(VOTBrailleGestureManager *)self _speakPrintBrailleForExploration];
    if (![(VOTBrailleGestureManager *)self shouldUpdateDotPositions])
    {
      [(VOTBrailleGestureManager *)self setShouldUpdateDotPositions:1];
      v3 = [(VOTBrailleGestureManager *)self lastPrintBrailleCharacter];
      [(VOTBrailleGestureManager *)self _updateDotNumberCirclesForPrintBraille:v3];
    }
  }
}

- (void)_endExploringDotPatterns
{
  [(VOTBrailleGestureManager *)self setExploring:0];
  [(VOTBrailleGestureManager *)self setDidAnnounceExplorationMode:0];

  [(VOTBrailleGestureManager *)self _cancelWarningTones];
}

- (void)_calibrateWithTouchPoints:(id)a3 silently:(BOOL)a4
{
  v9 = a3;
  if (![(VOTBrailleGestureManager *)self _isTypingModeStylusVariant])
  {
    [(VOTBrailleGestureTranslator *)self->_gestureTranslator calibrateWithTouchPoints:v9];
    if (!a4)
    {
      v6 = sub_1000511CC(off_1001FDDD0, @"braille.calibrate.announcement", 0);
      v7 = +[VOSOutputEvent BSIDidCalibrate];
      [(VOTBrailleGestureManager *)self _announceRespectingSoundSettingsRequest:v6 event:v7];
    }

    v8 = +[VOTUserEventManager sharedInstance];
    [v8 userEventOccurred];
  }

  _objc_release_x2();
}

- (void)_speakPrintBrailleForExploration
{
  v3 = [(VOTBrailleGestureManager *)self speakingDelayTimer];

  if (!v3)
  {
    v4 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    [(VOTBrailleGestureManager *)self setSpeakingDelayTimer:v4];

    v5 = [(VOTBrailleGestureManager *)self speakingDelayTimer];
    [v5 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
  }

  v6 = [(VOTBrailleGestureManager *)self speakingDelayTimer];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000FFC48;
  v7[3] = &unk_1001C76E8;
  v7[4] = self;
  [v6 afterDelay:v7 processBlock:0.3];
}

- (void)_enumerateDotNumbersForPrintBraille:(id)a3 usingBlock:(id)a4
{
  v10 = a3;
  v6 = a4;
  if ([v10 length] >= 2)
  {
    _AXAssert();
  }

  if ([v10 length] == 1)
  {
    v7 = [v10 characterAtIndex:0];
    if ([(VOTBrailleGestureManager *)self _numberOfDots])
    {
      v8 = 1;
      do
      {
        v6[2](v6, v8, (v7 >> (v8 - 1)) & 1);
        ++v8;
      }

      while (v8 <= [(VOTBrailleGestureManager *)self _numberOfDots]);
    }
  }

  else if ([(VOTBrailleGestureManager *)self _numberOfDots])
  {
    v9 = 1;
    do
    {
      v6[2](v6, v9++, 0);
    }

    while (v9 <= [(VOTBrailleGestureManager *)self _numberOfDots]);
  }
}

- (id)_spokenStringForPrintBraille:(id)a3 useLongForm:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 length] >= 2)
  {
    _AXAssert();
  }

  [NSMutableArray arrayWithCapacity:[(VOTBrailleGestureManager *)self _numberOfDots]];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100100084;
  v7 = v17 = &unk_1001CB188;
  v18 = v7;
  [(VOTBrailleGestureManager *)self _enumerateDotNumbersForPrintBraille:v6 usingBlock:&v14];

  if ([v7 count])
  {
    v8 = sub_1000511CC(off_1001FDDD0, @"braille.dot.pattern.separator", 0);
    v9 = [v7 componentsJoinedByString:v8];

    if (v4)
    {
      if ([v7 count] == 1)
      {
        v10 = @"braille.dot.pattern.singular";
      }

      else
      {
        v10 = @"braille.dot.pattern.plural";
      }

      v11 = sub_1000511CC(off_1001FDDD0, v10, 0);
      v12 = [NSString localizedStringWithFormat:v11, v9, v14, v15, v16, v17];

      v9 = v12;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_handleCalibrationTimeout
{
  v3 = [(VOTBrailleGestureManager *)self calibrationStartTouchPoints];

  if (!v3)
  {
    _AXAssert();
  }

  v4 = [(VOTBrailleGestureManager *)self calibrationStartTouchPoints];
  [(VOTBrailleGestureManager *)self _inputBrailleFromTouchPoints:v4];

  [(VOTBrailleGestureManager *)self setCalibrationStartTouchPoints:0];
}

- (BOOL)_handleAllFingersLifted
{
  v3 = [(VOTBrailleGestureManager *)self calibrationStartTouchPoints];

  if (v3)
  {
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_handleCalibrationTimeout" object:0];
  }

  [(VOTBrailleGestureManager *)self setSplitting:0];
  if (![(VOTBrailleGestureManager *)self isExploring]&& ![(VOTBrailleGestureManager *)self didMoveFingersTooFarForInput]&& ![(VOTBrailleGestureManager *)self didEnterInvalidGesture])
  {
    v7 = [(NSMutableDictionary *)self->_allTouchLocationsByIdentifier allValues];
    v8 = [(VOTBrailleGestureManager *)self _printBrailleForTouchPoints:v7];
    if (v3)
    {
      v9 = [(VOTBrailleGestureManager *)self _isCalibrationEndPattern:v8];
      v10 = [(VOTBrailleGestureManager *)self calibrationStartTouchPoints];
      v11 = v10;
      if (v9)
      {
        v12 = [(VOTBrailleGestureManager *)self _touchPointsForCalibrationGivenFirstPoints:v10 lastPoints:v7];
        [(VOTBrailleGestureManager *)self _calibrateWithTouchPoints:v12];
      }

      else
      {
        v15[0] = v10;
        v15[1] = v7;
        v12 = [NSArray arrayWithObjects:v15 count:2];
        [(VOTBrailleGestureManager *)self _inputBrailleFromSeriesOfTouchPoints:v12];
      }
    }

    else
    {
      if ([(VOTBrailleGestureManager *)self _isCalibrationStartPattern:v8])
      {
        [(VOTBrailleGestureManager *)self setCalibrationStartTouchPoints:v7];
        v13 = [(VOTBrailleGestureManager *)self _deviceSupportsMoreThanFiveTouches];
        v14 = 0.5;
        if (v13)
        {
          v14 = 0.25;
        }

        [(VOTBrailleGestureManager *)self performSelector:"_handleCalibrationTimeout" withObject:0 afterDelay:v14];
        v5 = 0;
        goto LABEL_18;
      }

      if ([(VOTBrailleGestureManager *)self shouldIgnoreBrailleFromNextAllFingersLifted])
      {
        [(VOTBrailleGestureManager *)self setShouldIgnoreBrailleFromNextAllFingersLifted:0];
      }

      else
      {
        [(VOTBrailleGestureManager *)self _inputBrailleFromTouchPoints:v7];
      }
    }

    v5 = 1;
LABEL_18:
    [(VOTBrailleGestureManager *)self _updateBrailleUI];

    v4 = 1;
    goto LABEL_7;
  }

  v4 = 0;
  v5 = 1;
LABEL_7:
  [(VOTBrailleGestureManager *)self _cleanUpTouchesIncludingCalibrationStartPoints:v5];
  return v4;
}

- (void)_cleanUpTouchesIncludingCalibrationStartPoints:(BOOL)a3
{
  v3 = a3;
  [(NSMutableDictionary *)self->_allTouchLocationsByIdentifier removeAllObjects];
  [(NSMutableDictionary *)self->_firstTouchLocationsByIdentifier removeAllObjects];
  [(VOTBrailleGestureManager *)self setDidMoveFingersTooFarForInput:0];
  [(VOTBrailleGestureManager *)self setDidEnterInvalidGesture:0];
  [(VOTBrailleGestureManager *)self setLastPrintBrailleCharacter:0];
  [(VOTBrailleGestureManager *)self _updateDotNumberCirclesForPrintBraille:0];
  [(VOTBrailleGestureManager *)self _endExploringDotPatterns];
  v5 = [(VOTBrailleGestureManager *)self speakingDelayTimer];
  [v5 cancel];

  if (v3)
  {

    [(VOTBrailleGestureManager *)self setCalibrationStartTouchPoints:0];
  }
}

- (void)_handleFingersOnScreen:(id)a3 didAddOrRemoveFingers:(BOOL)a4
{
  v31 = a4;
  v5 = a3;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v33 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:v10];
        [(NSMutableDictionary *)self->_allTouchLocationsByIdentifier setObject:v11 forKeyedSubscript:v10];

        v12 = [(NSMutableDictionary *)self->_firstTouchLocationsByIdentifier objectForKeyedSubscript:v10];

        if (v12)
        {
          if (![(VOTBrailleGestureManager *)self didMoveFingersTooFarForInput])
          {
            v13 = [(NSMutableDictionary *)self->_allTouchLocationsByIdentifier objectForKeyedSubscript:v10];
            [v13 ax_CGPointValue];
            v14 = [(NSMutableDictionary *)self->_firstTouchLocationsByIdentifier objectForKeyedSubscript:v10];
            [v14 ax_CGPointValue];
            SCRCMathGetDistanceBetweenPoints();
            v16 = v15;

            if (v16 > 45.0)
            {
              [(VOTBrailleGestureManager *)self setDidMoveFingersTooFarForInput:1];
            }
          }
        }

        else
        {
          v17 = [v5 objectForKeyedSubscript:v10];
          [(NSMutableDictionary *)self->_firstTouchLocationsByIdentifier setObject:v17 forKeyedSubscript:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v7);
  }

  v18 = [(VOTBrailleGestureManager *)self _newBrailleInput];
  v19 = [v5 allValues];
  v37 = v19;
  v20 = [NSArray arrayWithObjects:&v37 count:1];
  [v18 setSeriesOfTouchPoints:v20];

  gestureTranslator = self->_gestureTranslator;
  v32 = 0;
  v22 = [(VOTBrailleGestureTranslator *)gestureTranslator printBrailleForInput:v18 error:&v32];
  v23 = v32;
  v24 = [v23 domain];
  if ([v24 isEqualToString:@"VOTBrailleGestureErrorDomain"])
  {
    v25 = [v23 code];

    if (v25 == 1 && ![(VOTBrailleGestureManager *)self didEnterInvalidGesture])
    {
      v26 = sub_1000511CC(off_1001FDDD0, @"braille.too.many.touches.format", 0);
      [(VOTBrailleGestureManager *)self _numberOfDots];
      v27 = AXFormatInteger();
      v28 = [NSString stringWithFormat:v26, v27];
      [(VOTBrailleGestureManager *)self _speakText:v28 useKeyboardLanguage:0];

      [(VOTBrailleGestureManager *)self setDidEnterInvalidGesture:1];
    }
  }

  else
  {
  }

  v29 = [(VOTBrailleGestureManager *)self lastPrintBrailleCharacter];
  v30 = [v29 isEqualToString:v22];

  if ((v30 & 1) == 0)
  {
    [(VOTBrailleGestureManager *)self setLastPrintBrailleCharacter:v22];
    if ([(VOTBrailleGestureManager *)self isExploring])
    {
      [(VOTBrailleGestureManager *)self _speakPrintBrailleForExploration];
    }

    else if (!v31)
    {
      [(VOTBrailleGestureManager *)self _updateDotNumberCirclesForPrintBraille:0];
      [(VOTBrailleGestureManager *)self setShouldUpdateDotPositions:0];
    }

    if ([(VOTBrailleGestureManager *)self shouldUpdateDotPositions])
    {
      [(VOTBrailleGestureManager *)self _updateDotNumberCirclesForPrintBraille:v22];
    }
  }

  if (v31 && ![(VOTBrailleGestureManager *)self isSplitting])
  {
    [(VOTBrailleGestureManager *)self _scheduleExploringModeIfNeeded];
  }
}

- (id)_newBrailleInput
{
  v3 = objc_alloc_init(VOTBrailleGestureInput);
  v4 = [(VOTBrailleGestureManager *)self _languageCodeForSpeakingAndBrailleTranslation];
  [(VOTBrailleGestureInput *)v3 setLanguageCode:v4];

  return v3;
}

- (void)_updateDotNumberCirclesForPrintBraille:(id)a3
{
  v4 = a3;
  +[NSMutableArray array];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001009A0;
  v8 = v7[3] = &unk_1001CB188;
  v5 = v8;
  [(VOTBrailleGestureManager *)self _enumerateDotNumbersForPrintBraille:v4 usingBlock:v7];

  v6 = +[VOTDisplayManager displayManager];
  [v6 highlightBrailleDots:v5];
}

- (void)_updateDotNumbersWithReversed:(BOOL)a3
{
  v3 = a3;
  v4 = +[VOTDisplayManager displayManager];
  [v4 displayBrailleDotNumbersWithReversed:v3];
}

- (void)_scheduleExploringModeIfNeeded
{
  if (![(VOTBrailleGestureManager *)self isExploring])
  {
    v3 = [(VOTBrailleGestureManager *)self warningTonesTimer];

    if (!v3)
    {
      v4 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
      [(VOTBrailleGestureManager *)self setWarningTonesTimer:v4];

      v5 = [(VOTBrailleGestureManager *)self warningTonesTimer];
      [v5 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    }

    v6 = [(VOTBrailleGestureManager *)self warningTonesTimer];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100100B58;
    v7[3] = &unk_1001C76E8;
    v7[4] = self;
    [v6 afterDelay:v7 processBlock:1.0];
  }
}

- (BOOL)_isNextBrailleUsageEvent:(id)a3
{
  v3 = [a3 command];
  v4 = [v3 isEqualToString:kVOTEventCommandBSINextBrailleMode];

  return v4;
}

- (BOOL)_isPreviousBrailleUsageEvent:(id)a3
{
  v3 = [a3 command];
  v4 = [v3 isEqualToString:kVOTEventCommandBSIPreviousBrailleMode];

  return v4;
}

- (BOOL)_isTranslateImmediatelyEvent:(id)a3
{
  v3 = [a3 command];
  v4 = [v3 isEqualToString:kVOTEventCommandBSITranslateImmediately];

  return v4;
}

- (BOOL)_isToggleLockedConfigurationEvent:(id)a3
{
  v3 = [a3 command];
  v4 = [v3 isEqualToString:kVOTEventCommandBSIOrientationLock];

  return v4;
}

- (BOOL)_isCarriageReturnSwipeEvent:(id)a3
{
  v3 = [a3 command];
  v4 = [v3 isEqualToString:kVOTEventCommandBSIQuickAction];

  return v4;
}

- (BOOL)_isSelectEvent:(id)a3
{
  v3 = a3;
  v4 = [v3 command];
  if ([v4 isEqualToString:kVOTEventCommandSelectLeft])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 command];
    v5 = [v6 isEqualToString:kVOTEventCommandSelectRight];
  }

  return v5;
}

- (BOOL)_isAdjustTextSegmentEvent:(id)a3
{
  v3 = a3;
  v4 = [v3 command];
  if ([v4 isEqualToString:kVOTEventCommandNextTextSegment])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 command];
    v5 = [v6 isEqualToString:kVOTEventCommandPreviousTextSegment];
  }

  return v5;
}

- (BOOL)_isAdjustTextSegmentTypeEvent:(id)a3
{
  v3 = a3;
  v4 = [v3 command];
  if ([v4 isEqualToString:kVOTEventCommandNextTextSegmentType])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 command];
    v5 = [v6 isEqualToString:kVOTEventCommandPreviousTextSegmentType];
  }

  return v5;
}

- (void)_inputBrailleFromTouchPoints:(id)a3
{
  if (a3)
  {
    v6 = a3;
    v4 = a3;
    v5 = [NSArray arrayWithObjects:&v6 count:1];

    [(VOTBrailleGestureManager *)self _inputBrailleFromSeriesOfTouchPoints:v5, v6];
  }
}

- (void)_inputBrailleFromSeriesOfTouchPoints:(id)a3
{
  v4 = a3;
  if ([(VOTBrailleGestureManager *)self isExploring])
  {
    _AXAssert();
  }

  [(VOTBrailleGestureManager *)self _handleTouchPoints:v4];
}

- (id)_printBrailleForTouchPoints:(id)a3
{
  v4 = a3;
  v5 = [(VOTBrailleGestureManager *)self _newBrailleInput];
  v9 = v4;
  v6 = [NSArray arrayWithObjects:&v9 count:1];
  [v5 setSeriesOfTouchPoints:v6];

  v7 = [(VOTBrailleGestureTranslator *)self->_gestureTranslator printBrailleForInput:v5 error:0];

  return v7;
}

- (void)_handleChangeUsage:(BOOL)a3
{
  [(VOTBrailleGestureManager *)self setUsage:[(VOTBrailleGestureManager *)self usage]== 0 userInitiated:1];

  [(VOTBrailleGestureManager *)self clearCurrentString];
}

- (void)_handleTranslateImmediately
{
  if ([(VOTBrailleGestureManager *)self _shouldUseContractedBraille]|| [(VOTBrailleGestureManager *)self _requiresLaTeXInput])
  {
    v7 = +[VOTOutputRequest createRequest];
    v3 = sub_1000511CC(off_1001FDDD0, @"braille.translate.event", 0);
    v4 = [v7 addString:v3];

    if ([VOTSharedWorkspace typingPitchChangeEnabled])
    {
      v5 = [v7 lastAction];
      [v5 setObject:&off_1001D9970 forVariant:32];
    }

    [v7 setCannotBeInterrupted:1];
    [v7 send];
    v6 = [(VOTBrailleGestureTranslator *)self->_gestureTranslator translateExistingInputWithMode:[(VOTBrailleGestureManager *)self mode]];
    [(VOTBrailleGestureManager *)self updateWithString:v6];

    [(VOTBrailleGestureManager *)self clearCurrentString];
  }

  else
  {

    [(VOTBrailleGestureManager *)self _playBonk];
  }
}

- (id)_languageCodeForBrailleTable
{
  v2 = [VOTSharedWorkspace selectedBrailleGesturesInputTable];
  v3 = [v2 language];

  v4 = [NSLocale localeWithLocaleIdentifier:v3];
  v5 = [v4 languageCode];

  return v5;
}

- (id)_languageCodeForSpellChecking
{
  v2 = [(VOTBrailleGestureManager *)self _languageCodeForBrailleTable];
  v3 = [v2 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

  return v3;
}

- (id)_languageCodeForSpeakingAndBrailleTranslation
{
  v2 = [(VOTBrailleGestureManager *)self _languageCodeForBrailleTable];
  v3 = VOTLogBrailleGestures();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v14 = 138543362;
    v15 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Language code from keyboard in app is %{public}@", &v14, 0xCu);
  }

  v4 = AXCRemapLanguageCodeToFallbackIfNeccessary();
  v5 = AXLanguageConvertToCanonicalForm();

  v6 = AXRetrieveSupportedAccessibilityLanguages();
  v7 = v6;
  if (!v6 || !v5)
  {
    goto LABEL_8;
  }

  if ([v6 containsObject:v5])
  {
    goto LABEL_17;
  }

  v8 = [(__CFString *)v5 rangeOfString:@"-"];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL || (-[__CFString substringToIndex:](v5, "substringToIndex:", v8), v9 = objc_claimAutoreleasedReturnValue(), v5, v5 = v9, ![v7 containsObject:v9]))
  {
  }

  else
  {
LABEL_8:
    if (v5)
    {
      goto LABEL_17;
    }
  }

  v10 = +[VOTWorkspace sharedWorkspace];
  v5 = [v10 systemSpokenLanguage];

  v11 = VOTLogBrailleGestures();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Language code from workspace is %{public}@", &v14, 0xCu);
  }

  if (!v5)
  {
    v12 = VOTLogBrailleGestures();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Had to fall back to using English.", &v14, 2u);
    }

    v5 = @"en";
  }

LABEL_17:

  return v5;
}

- (BOOL)_handleCarriageReturnSwipe
{
  v3 = [(VOTGesturedTextInputManager *)self delegate];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10010160C;
  v5[3] = &unk_1001CB1B0;
  v5[4] = self;
  [v3 gesturedTextInputManager:self accessCurrentGesturedTextInputElement:v5];

  return 1;
}

- (void)handleBrailleGestureWithLeftPatternDictionary:(id)a3 rightPatternDictionary:(id)a4
{
  v6 = a4;
  v10 = [VOTBrailleGestureHalfPattern halfPatternWithDictionaryRepresentation:a3];
  v7 = [VOTBrailleGestureHalfPattern halfPatternWithDictionaryRepresentation:v6];

  v8 = [[VOTBrailleGesturePattern alloc] initWithLeftDots:v10 rightDots:v7];
  v9 = [(VOTBrailleGestureTranslator *)self->_gestureTranslator printBrailleForGesturePattern:v8];
  [(VOTBrailleGestureManager *)self _handlePrintBraille:v9];
}

- (void)_handlePrintBraille:(id)a3
{
  v7 = a3;
  if ((AXDeviceSupportsManyTouches() & 1) != 0 || ![(VOTBrailleGestureManager *)self overridePrintBrailleWithAllSixDots])
  {
    v4 = v7;
  }

  else
  {

    v4 = @"⠿";
  }

  v8 = v4;
  [(VOTBrailleGestureManager *)self _proceedAcceptanceTestWithEnteredCell:?];
  v5 = [(VOTBrailleGestureManager *)self usage];
  if (v5 == 1)
  {
    v5 = [(VOTBrailleGestureManager *)self _issueCommands:v8];
  }

  else
  {
    v6 = v8;
    if (v5)
    {
      goto LABEL_10;
    }

    v5 = [(VOTBrailleGestureManager *)self _typePrintBraille:v8];
  }

  v6 = v8;
LABEL_10:

  _objc_release_x1(v5, v6);
}

- (void)_issueCommands:(id)a3
{
  v6 = a3;
  if ([v6 length])
  {
    v4 = 0;
    do
    {
      v5 = [v6 substringWithRange:{v4, 1}];
      [(VOTBrailleGestureManager *)self _issueSingleCommand:v5];

      ++v4;
    }

    while (v4 < [v6 length]);
  }
}

- (void)_issueSingleCommand:(id)a3
{
  v3 = a3;
  v4 = +[VOTBrailleManager manager];
  [v4 handleBSICommandModeInput:v3];
}

- (void)_typePrintBraille:(id)a3
{
  v4 = a3;
  v5 = [(VOTBrailleGestureManager *)self mode];
  v6 = [(VOTGesturedTextInputManager *)self currentElementAttributes];
  v7 = [v6 isActiveResponder];

  v8 = [(VOTGesturedTextInputManager *)self currentElementAttributes];
  v9 = [v8 shouldPlayKeyboardSecureClickSound];

  v33 = v7;
  if (v5 - 5 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v10 = ([(VOTBrailleGestureManager *)self _canUseContractedBraille]| v7) ^ 1 | v9;
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  v11 = [(VOTBrailleGestureTranslator *)self->_gestureTranslator translatedTextForPrintBraille:v4 mode:v5];
  gestureTranslator = self->_gestureTranslator;
  v13 = [(VOTBrailleGestureManager *)self _languageCodeForSpeakingAndBrailleTranslation];
  [(VOTBrailleGestureTranslator *)gestureTranslator addPrintBrailleToBuffer:v4 language:v13];

  if (v9)
  {
    [(VOTBrailleGestureTranslator *)self->_gestureTranslator markBufferSecure];
  }

  v14 = [(VOTGesturedTextInputManager *)self currentString];
  v15 = [(VOTBrailleGestureTranslator *)self->_gestureTranslator translateExistingInputWithMode:v5];
  v16 = [v14 commonPrefixWithString:v11 options:0];
  v17 = [v15 substringFromIndex:{objc_msgSend(v16, "length")}];

  v18 = VOTLogBrailleGestures();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138478595;
    v35 = v14;
    v36 = 2113;
    v37 = v4;
    v38 = 2113;
    v39 = v11;
    v40 = 2113;
    v41 = v17;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "existingText = %{private}@, printBraille = %{private}@, translatedText = %{private}@, textToBeInserted = %{private}@", buf, 0x2Au);
  }

  if (v5 == 4)
  {
    v19 = v4;
  }

  else
  {
    v19 = v11;
  }

  [(VOTBrailleGestureManager *)self _flashInsertedTextIfAllowed:v19];
  if (v10)
  {
    [(VOTBrailleGestureManager *)self updateWithString:v15];
  }

  if (v14 == v11 || [v14 isEqualToString:v11])
  {
    v20 = [(VOTGesturedTextInputManager *)self currentElementAttributes];
    if (![v20 shouldEchoCharacter])
    {
LABEL_29:

      goto LABEL_30;
    }

    v21 = [v4 length];

    if (v21)
    {
      v22 = +[AXSettings sharedInstance];
      v23 = [v22 voiceOverBrailleGesturesTypingFeedback];

      if ((v23 & 0xFFFFFFFFFFFFFFFDLL) == 0)
      {
        v24 = +[NSString stringWithUnichar:](NSString, "stringWithUnichar:", [v4 characterAtIndex:{objc_msgSend(v4, "rangeOfComposedCharacterSequenceAtIndex:", objc_msgSend(v4, "length") - 1)}]);
        v20 = [(VOTBrailleGestureManager *)self _spokenStringForPrintBraille:v24 useLongForm:1];

        v25 = VOTLogBrailleGestures();
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_27;
        }

LABEL_26:
        sub_100130DA8();
LABEL_27:

        v31 = [(VOTGesturedTextInputManager *)self currentElementAttributes];
        v32 = [v31 shouldPlayKeyboardSecureClickSound];

        if ((v32 & 1) == 0)
        {
          [(VOTBrailleGestureManager *)self _speakText:v20 useKeyboardLanguage:v33 shouldQueue:0 isInsert:1 isDelete:0 speakLiterally:0];
        }

        goto LABEL_29;
      }
    }
  }

  else
  {
    v26 = +[AXSettings sharedInstance];
    v27 = [v26 voiceOverBrailleGesturesTypingFeedback];

    if (!(((v27 & 0xFFFFFFFFFFFFFFFDLL) != 0) | v10 & 1))
    {
      if (v5 == 4)
      {
        v30 = +[NSString stringWithUnichar:](NSString, "stringWithUnichar:", [v4 characterAtIndex:{objc_msgSend(v4, "rangeOfComposedCharacterSequenceAtIndex:", objc_msgSend(v4, "length") - 1)}]);
        v20 = [(VOTBrailleGestureManager *)self _spokenStringForPrintBraille:v30 useLongForm:1];

        v25 = VOTLogBrailleGestures();
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      if (v5 == 3)
      {
        v28 = [(VOTGesturedTextInputManager *)self currentElementAttributes];
        v29 = [v28 shouldPlayKeyboardSecureClickSound];

        if ((v29 & 1) == 0)
        {
          [(VOTBrailleGestureManager *)self _speakText:v11 useKeyboardLanguage:v33 shouldQueue:0 isInsert:1 isDelete:0 speakLiterally:1];
        }
      }
    }
  }

LABEL_30:
  [(VOTBrailleGestureSpellingSuggestionHandler *)self->_spellingSuggestionHandler clearSpellingSuggestions];
  [(VOTBrailleGestureCandidateManager *)self->_candidateManager deactivate];
}

- (void)_handleTouchPoints:(id)a3
{
  v4 = a3;
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_handleTouchPoints:" object:v4];
  v5 = [(VOTBrailleGestureManager *)self _newBrailleInput];
  [v5 setSeriesOfTouchPoints:v4];
  v6 = +[AXSettings sharedInstance];
  v7 = [v6 voiceOverTouchBrailleGesturesLearnsDotPositions];

  v8 = ![(VOTBrailleGestureManager *)self _isTypingModeStylusVariant];
  gestureTranslator = self->_gestureTranslator;
  v38 = 0;
  v10 = [(VOTBrailleGestureTranslator *)gestureTranslator printBrailleForAllTouchPointsInInput:v5 shouldLearn:v8 & v7 error:&v38];
  v11 = v38;
  if (v10 && [v10 length])
  {
    if ([(VOTBrailleGestureManager *)self _isTypingModeInputColumnsVariant])
    {
      v12 = [(VOTBrailleGestureManager *)self leftSideInput];
      if (v12)
      {
      }

      else if (![(VOTBrailleGestureManager *)self shouldIgnoreBrailleFromNextAllFingersLifted])
      {
        [(VOTBrailleGestureManager *)self setLeftSideInput:v10];
        if ([v10 isEqualToString:@"⠀"])
        {
          goto LABEL_33;
        }

        v36 = +[AXSettings sharedInstance];
        v37 = [v36 voiceOverTouchBrailleGesutresSingleHandUsesDotNumbersFeedback];

        if (!v37)
        {
          goto LABEL_33;
        }

        v29 = [(VOTBrailleGestureManager *)self _spokenStringForPrintBraille:v10 useLongForm:1];
        [(VOTBrailleGestureManager *)self _speakText:v29 useKeyboardLanguage:0 shouldQueue:0 isInsert:1 isDelete:0 speakLiterally:0];
        goto LABEL_27;
      }

      v17 = [(VOTBrailleGestureManager *)self leftSideInput];
      v18 = [v17 characterAtIndex:0];

      v19 = [v10 characterAtIndex:0];
      v20 = 8 * (v19 & 1);
      v21 = v20 | v18;
      if ((v19 & 2) != 0)
      {
        v21 = v20 | v18 | 0x10;
        v20 = (8 * (v19 & 1)) | 0x10;
      }

      if ((v19 & 4) != 0)
      {
        v21 |= 0x20u;
        v20 |= 0x20u;
      }

      if ((v19 & 0x40) != 0)
      {
        v21 |= 0x80u;
        v22 = v20 | 0x80;
      }

      else
      {
        v22 = v20;
      }

      v16 = [NSString stringWithUnichar:(v21 + 10240)];

      [(VOTBrailleGestureManager *)self setLeftSideInput:0];
      v23 = +[AXSettings sharedInstance];
      v24 = [v23 voiceOverBrailleGesturesTypingFeedback];

      if ((v24 & 0xFFFFFFFFFFFFFFFDLL) != 0)
      {
        v25 = +[AXSettings sharedInstance];
        v26 = [v25 voiceOverTouchBrailleGesutresSingleHandUsesDotNumbersFeedback];

        if (v26)
        {
          v27 = [NSString stringWithUnichar:(v22 + 10240)];
          v28 = [(VOTBrailleGestureManager *)self _spokenStringForPrintBraille:v27 useLongForm:1];
          [(VOTBrailleGestureManager *)self _speakText:v28 useKeyboardLanguage:0 shouldQueue:0 isInsert:1 isDelete:0 speakLiterally:0];
        }
      }

      goto LABEL_23;
    }

    if (![(VOTBrailleGestureManager *)self _isTypingModeStylusVariant])
    {
      goto LABEL_24;
    }

    v14 = [v10 isEqualToString:@"⠀"];
    v15 = [(VOTBrailleGestureManager *)self stylusInput];
    v16 = v15;
    if (v14)
    {

      [(VOTBrailleGestureManager *)self setStylusInput:@"⠀"];
LABEL_23:
      v10 = v16;
LABEL_24:
      [(VOTBrailleGestureManager *)self _handlePrintBraille:v10];
      if ([(VOTBrailleGestureManager *)self usage]|| ![(VOTBrailleGestureManager *)self usesTypingSoundFeedback])
      {
        goto LABEL_33;
      }

      v29 = +[VOTOutputManager outputManager];
      v30 = +[VOSOutputEvent BSIDidType];
      [v29 sendEvent:v30];

LABEL_27:
LABEL_33:
      [(VOTBrailleGestureManager *)self _playHapticFeedbackIfNeeded];
      goto LABEL_34;
    }

    v31 = [v15 characterAtIndex:0];

    v32 = +[NSString stringWithUnichar:](NSString, "stringWithUnichar:", (([v10 characterAtIndex:0] | v31) + 10240));
    [(VOTBrailleGestureManager *)self setStylusInput:v32];

    v33 = +[AXSettings sharedInstance];
    v34 = [v33 voiceOverTouchBrailleGesutresSingleHandUsesDotNumbersFeedback];

    if (v34)
    {
      v35 = [(VOTBrailleGestureManager *)self _spokenStringForPrintBraille:v10 useLongForm:1];
      [(VOTBrailleGestureManager *)self _speakText:v35 useKeyboardLanguage:0 shouldQueue:0 isInsert:1 isDelete:0 speakLiterally:0];
    }
  }

  else
  {
    v13 = VOTLogBrailleGestures();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100130E10();
    }
  }

LABEL_34:
}

- (void)_applyCandidateInDirection:(int64_t)a3
{
  v5 = [(VOTBrailleGestureTranslator *)self->_gestureTranslator translateExistingInputWithMode:[(VOTBrailleGestureManager *)self mode]];
  v6 = VOTLogBrailleGestures();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Translate existing input: %@", &v11, 0xCu);
  }

  if (![(VOTBrailleGestureCandidateManager *)self->_candidateManager isActive])
  {
    candidateManager = self->_candidateManager;
    v8 = [(VOTBrailleGestureManager *)self _languageCodeForSpellChecking];
    [(VOTBrailleGestureCandidateManager *)candidateManager analyzeString:v5 language:v8];

    goto LABEL_9;
  }

  if (a3 == 2)
  {
    if ([(VOTBrailleGestureCandidateManager *)self->_candidateManager hasPreviousCandidate])
    {
      [(VOTBrailleGestureCandidateManager *)self->_candidateManager moveToPreviousCandidate];
      goto LABEL_9;
    }
  }

  else if (a3 == 1 && [(VOTBrailleGestureCandidateManager *)self->_candidateManager hasNextCandidate])
  {
    [(VOTBrailleGestureCandidateManager *)self->_candidateManager moveToNextCandidate];
LABEL_9:
    v9 = [(VOTBrailleGestureCandidateManager *)self->_candidateManager currentCandidateSurfaceString];
    goto LABEL_13;
  }

  v9 = 0;
LABEL_13:
  [(VOTBrailleGestureManager *)self _outputChosenCandidate:v9];
  v10 = VOTLogBrailleGestures();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Candidate presented: %@", &v11, 0xCu);
  }
}

- (void)_insertCurrentSelectedCandidate
{
  if ([(VOTBrailleGestureCandidateManager *)self->_candidateManager isActive])
  {
    v3 = [(VOTBrailleGestureCandidateManager *)self->_candidateManager currentCandidateSurfaceString];
    [(VOTBrailleGestureManager *)self updateWithString:v3];
    [(VOTBrailleGestureCandidateManager *)self->_candidateManager didSelectCurrentCandidate];
    [(VOTBrailleGestureCandidateManager *)self->_candidateManager deactivate];
  }
}

- (void)_outputChosenCandidate:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = +[AXLanguageManager sharedInstance];
    v6 = [(VOTBrailleGestureManager *)self _languageCodeForSpellChecking];
    v7 = [v5 descriptionOfWord:v4 forLanguage:v6];

    v8 = [(VOTBrailleGestureManager *)self _languageCodeForSpellChecking];
    LOWORD(v10) = 0;
    [(VOTBrailleGestureManager *)self _speakText:v7 hint:0 useKeyboardLanguage:0 shouldQueue:0 isInsert:0 isSuggestion:0 isDelete:v10 speakLiterally:v8 otherLanguage:?];
  }

  else
  {
    v9 = 0;
    [(VOTBrailleGestureManager *)self _playBonk];
  }

  [(VOTBrailleGestureManager *)self _flashInsertedTextIfAllowed:a3];
}

- (void)_commitLoneLeftColumnIfNeeded
{
  v3 = [(VOTBrailleGestureManager *)self leftSideInput];

  if (v3)
  {
    gestureTranslator = self->_gestureTranslator;
    v6 = [(VOTBrailleGestureManager *)self leftSideInput];
    v5 = [(VOTBrailleGestureManager *)self _languageCodeForSpeakingAndBrailleTranslation];
    [(VOTBrailleGestureTranslator *)gestureTranslator addPrintBrailleToBuffer:v6 language:v5];
  }
}

- (void)_handleSingleHandCalibration
{
  v3 = [(NSMutableDictionary *)self->_allTouchLocationsByIdentifier allValues];
  [(VOTBrailleGestureManager *)self _calibrateWithTouchPoints:v3];
  [(VOTBrailleGestureManager *)self _updateBrailleUI];
  [(VOTBrailleGestureManager *)self _cleanUpTouchesIncludingCalibrationStartPoints:0];
  [(VOTBrailleGestureManager *)self _endExploringDotPatterns];
  [(VOTBrailleGestureManager *)self setShouldIgnoreBrailleFromNextAllFingersLifted:1];
}

- (void)flushCharacterBuffer
{
  v3 = [(VOTBrailleGestureManager *)self usage];
  if (![(VOTBrailleGestureManager *)self _isTypingModeInputColumnsVariant])
  {
    if (![(VOTBrailleGestureManager *)self _isTypingModeStylusVariant])
    {
      return;
    }

    v6 = [(VOTBrailleGestureManager *)self stylusInput];
    v7 = [v6 isEqualToString:@"⠀"];

    v5 = &off_1001DBB70;
    if (!v7)
    {
      goto LABEL_8;
    }

LABEL_6:
    if (v3 != 1)
    {
      return;
    }

    goto LABEL_8;
  }

  v4 = [(VOTBrailleGestureManager *)self leftSideInput];

  v5 = &off_1001DBB58;
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_8:

  [(VOTBrailleGestureManager *)self _handleTouchPoints:v5];
}

- (void)setLeftSideInput:(id)a3
{
  objc_storeStrong(&self->_leftSideInput, a3);

  [(VOTBrailleGestureManager *)self _updateDotNumbersWithReversed:a3 != 0];
}

- (void)_updateBrailleUI
{
  v3 = [(VOTBrailleGestureTranslator *)self->_gestureTranslator dotNumberPositions];
  v4 = VOTLogBrailleGestures();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "updating BSI UI with dot positions: %@", &v6, 0xCu);
  }

  v5 = +[VOTDisplayManager displayManager];
  [v5 updateBrailleUIWithOrientation:-[VOTBrailleGestureManager keyboardOrientation](self dotPositions:"keyboardOrientation") typingMode:{v3, -[VOTBrailleGestureManager typingMode](self, "typingMode")}];
}

- (void)_flashInsertedTextIfAllowed:(id)a3
{
  v7 = a3;
  v4 = [(VOTGesturedTextInputManager *)self currentElementAttributes];
  if ([v4 shouldEchoCharacter])
  {
    v5 = +[AXSettings sharedInstance];
    v6 = [v5 voiceOverTouchBrailleGesturesDisplaysEnteredText];

    if (!v6)
    {
      goto LABEL_5;
    }

    v4 = +[VOTDisplayManager displayManager];
    [v4 flashBrailleInsertedText:v7];
  }

LABEL_5:
}

- (void)_updateDotPositions
{
  gestureTranslator = self->_gestureTranslator;
  v4 = [(VOTBrailleGestureManager *)self typingMode];
  v5 = sub_100051A04([(VOTBrailleGestureManager *)self keyboardOrientation]);
  [(VOTBrailleGestureTranslator *)gestureTranslator setTypingMode:v4 keyboardSize:[(VOTBrailleGestureManager *)self _shouldUseEightDotBraille] shouldUseEightDotBraille:[(VOTBrailleGestureManager *)self _shouldReverseDots] shouldReverseDots:v5, v6];

  [(VOTBrailleGestureManager *)self _updateBrailleUI];
}

- (void)_speakText:(id)a3 useKeyboardLanguage:(BOOL)a4 shouldQueue:(BOOL)a5 isInsert:(BOOL)a6 isDelete:(BOOL)a7 speakLiterally:(BOOL)a8
{
  BYTE1(v8) = a8;
  LOBYTE(v8) = a7;
  [(VOTBrailleGestureManager *)self _speakText:a3 hint:0 useKeyboardLanguage:a4 shouldQueue:a5 isInsert:a6 isSuggestion:0 isDelete:v8 speakLiterally:0 otherLanguage:?];
}

- (void)_speakText:(id)a3 hint:(id)a4 useKeyboardLanguage:(BOOL)a5 shouldQueue:(BOOL)a6 isInsert:(BOOL)a7 isSuggestion:(BOOL)a8 isDelete:(BOOL)a9 speakLiterally:(BOOL)a10 otherLanguage:(id)a11
{
  LOWORD(v11) = __PAIR16__(a10, a9);
  v12 = [(VOTBrailleGestureManager *)self _outputRequestForText:a3 hint:a4 useKeyboardLanguage:a5 shouldQueue:a6 isInsert:a7 isSuggestion:a8 isDelete:v11 speakLiterally:a11 otherLanguage:?];
  [v12 send];
}

- (id)_outputRequestForText:(id)a3 hint:(id)a4 useKeyboardLanguage:(BOOL)a5 shouldQueue:(BOOL)a6 isInsert:(BOOL)a7 isSuggestion:(BOOL)a8 isDelete:(BOOL)a9 speakLiterally:(BOOL)a10 otherLanguage:(id)a11
{
  v11 = a8;
  v12 = a7;
  v13 = a6;
  v17 = a3;
  v51 = a4;
  v18 = a11;
  v19 = objc_alloc_init(VOTOutputRequest);
  v20 = v19;
  if (v13)
  {
    [(VOTOutputRequest *)v19 setDoesNotInterrupt:1];
  }

  if (a5)
  {
    v21 = [(VOTBrailleGestureManager *)self _languageCodeForSpeakingAndBrailleTranslation];
    v22 = [(VOTOutputRequest *)v20 addString:v17 withLanguage:v21];
  }

  else
  {
    v23 = [(VOTOutputRequest *)v20 addString:v17 withLanguage:v18];
  }

  v24 = [VOTSharedWorkspace typingPitchChangeEnabled];
  v25 = a9;
  if ((v12 || a9 || v11) && v24)
  {
    v49 = v18;
    if (a9)
    {
      v26 = +[AXSettings sharedInstance];
      v27 = [v26 voiceOverDeletionFeedback];

      if (v27 == 1)
      {
        v28 = 0.75;
      }

      else
      {
        v28 = 1.0;
      }
    }

    else
    {
      v29 = 1.5;
      if (!v11)
      {
        v29 = 1.0;
      }

      if (v12)
      {
        v28 = 1.0;
      }

      else
      {
        v28 = v29;
      }
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = v20;
    v30 = [(VOTOutputRequest *)v20 outputActions];
    v31 = [v30 countByEnumeratingWithState:&v52 objects:v56 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v53;
      v34 = v28;
      do
      {
        for (i = 0; i != v32; i = i + 1)
        {
          if (*v53 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v36 = *(*(&v52 + 1) + 8 * i);
          v37 = [v36 string];
          v38 = sub_10005088C(v37);

          if (v38)
          {
            *&v39 = 1.5;
          }

          else
          {
            *&v39 = v34;
          }

          v40 = [NSNumber numberWithFloat:v39];
          [v36 setObject:v40 forVariant:32];

          if (a10)
          {
            [v36 setObject:&__kCFBooleanTrue forVariant:28];
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v52 objects:v56 count:16];
      }

      while (v32);
    }

    v20 = v50;
    v18 = v49;
    v25 = a9;
  }

  if (v25)
  {
    v41 = +[AXSettings sharedInstance];
    v42 = [v41 voiceOverDeletionFeedback];

    if (v42 == 2)
    {
      v43 = [(VOTOutputRequest *)v20 outputActions];
      [v43 enumerateObjectsUsingBlock:&stru_1001CB1D0];
    }
  }

  if ([v51 length])
  {
    v44 = +[VOTWorkspace sharedWorkspace];
    v45 = [v44 hintsEnabled];

    if (v45)
    {
      LODWORD(v46) = 1061997773;
      [(VOTOutputRequest *)v20 addPause:v46];
      v47 = [(VOTOutputRequest *)v20 addString:v51];
      [(VOTOutputRequest *)v20 setCompletionBlock:&stru_1001CB1F0];
    }
  }

  return v20;
}

- (void)_playBonk
{
  v3 = +[VOTOutputManager outputManager];
  v2 = +[VOSOutputEvent BoundaryEncountered];
  [v3 sendEvent:v2];
}

- (void)_playWarningTone
{
  v3 = +[VOTOutputManager outputManager];
  v2 = +[VOSOutputEvent FolderWillOpen];
  [v3 sendEvent:v2];
}

- (void)_playWarningTones:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  [(VOTBrailleGestureManager *)self _playWarningTone];
  v7 = [(VOTBrailleGestureManager *)self warningTonesTimer];

  if (v7)
  {
    if (![(VOTBrailleGestureManager *)self isSplitting])
    {
      if (a3 < 2)
      {
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_1001031C0;
        v10[3] = &unk_1001CB218;
        v10[4] = self;
        v11 = v6;
        dispatch_async(&_dispatch_main_q, v10);
        v8 = v11;
      }

      else
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001030FC;
        block[3] = &unk_1001C7A18;
        block[4] = self;
        v14 = a3;
        v13 = v6;
        dispatch_async(&_dispatch_main_q, block);
        v8 = v13;
      }
    }
  }

  else
  {
    v9 = VOTLogBrailleGestures();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100130E84(v9);
    }
  }
}

- (void)_cancelWarningTones
{
  v3 = [(VOTBrailleGestureManager *)self warningTonesTimer];
  [v3 cancel];

  [(VOTBrailleGestureManager *)self setWarningTonesTimer:0];
}

- (void)_announceRespectingSoundSettingsRequest:(id)a3 event:(id)a4 hint:(id)a5
{
  v20 = a3;
  v7 = a4;
  v8 = a5;
  v9 = +[AXSettings sharedInstance];
  v10 = [v9 voiceOverTouchBrailleGesturesSoundOption];

  if (v20 && (v10 & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    if (v8 && (+[AXSettings sharedInstance](AXSettings, "sharedInstance"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 voiceOverHintsEnabled], v11, (v12 & 1) != 0))
    {
      v13 = objc_alloc_init(VOTOutputRequest);
      v14 = [VOTSharedWorkspace selectedLanguage];
      v15 = [(VOTOutputRequest *)v13 addString:v20 withLanguage:v14];

      LODWORD(v16) = 1061997773;
      [(VOTOutputRequest *)v13 addPause:v16];
      v17 = [(VOTOutputRequest *)v13 addString:v8];
      [(VOTOutputRequest *)v13 send];
    }

    else
    {
      v13 = [VOTSharedWorkspace selectedLanguage];
      v18 = sub_1000095FC(v20, 1, v13);
    }
  }

  if (v7 && v10 - 1 <= 1)
  {
    v19 = +[VOTOutputManager outputManager];
    [v19 sendEvent:v7];
  }
}

- (void)_playHapticFeedbackIfNeeded
{
  if ([(VOTBrailleGestureManager *)self usesHapticFeedback])
  {
    v3 = +[VOTOutputManager outputManager];
    v2 = +[VOSOutputEvent BSIDidEnterChord];
    [v3 sendEvent:v2];
  }
}

- (id)nameSearcherEntriesPassingSearchFrom:(id)a3
{
  v4 = a3;
  v5 = [(VOTBrailleGestureTranslator *)self->_gestureTranslator translateExistingInputWithMode:[(VOTBrailleGestureManager *)self mode]];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &stru_1001CBF90;
  }

  v24 = objc_opt_new();
  v23 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v26 = *v29;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v29 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v27 = 0;
        gestureTranslator = self->_gestureTranslator;
        v12 = [v10 name];
        v13 = [(VOTBrailleGestureTranslator *)gestureTranslator isExistingInputContainedIn:v12 withMode:[(VOTBrailleGestureManager *)self mode] isPrefix:&v27];

        v14 = [v10 name];
        v15 = [v14 localizedLowercaseString];
        v16 = [(__CFString *)v6 localizedLowercaseString];
        v17 = [v15 hasPrefix:v16];

        v18 = [v10 name];
        v19 = [v18 localizedCaseInsensitiveContainsString:v6];

        if ((v13 & 1) != 0 || v19)
        {
          if ((v27 | v17))
          {
            v20 = v24;
          }

          else
          {
            v20 = v23;
          }

          [v20 addObject:v10];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v8);
  }

  v21 = [v24 arrayByAddingObjectsFromArray:v23];

  return v21;
}

- (void)accelerometer:(id)a3 didChangeDeviceOrientation:(int64_t)a4
{
  v6 = [AXSettings sharedInstance:a3];
  if ([v6 voiceOverTouchBrailleGesturesShouldUseLockedConfiguration])
  {
  }

  else
  {
    v5 = [(VOTGesturedTextInputManager *)self isActive];

    if (v5)
    {
      [(VOTBrailleGestureManager *)self _updateBrailleTypingPropertiesAndDelayAnnouncement:0];

      [(VOTBrailleGestureManager *)self _updateBrailleUI];
    }
  }
}

- (void)_proceedAcceptanceTestWithEnteredCell:(id)a3
{
  v13 = a3;
  v4 = [(VOTBrailleGestureManager *)self characterAcceptanceTestBrailleWithoutWhitespace];

  if (v4)
  {
    v5 = [(VOTBrailleGestureManager *)self characterAcceptanceTestBrailleIndex];
    v6 = [(VOTBrailleGestureManager *)self characterAcceptanceTestBrailleWithoutWhitespace];
    v7 = [v6 length];

    if (v5 < v7)
    {
      v8 = [(VOTBrailleGestureManager *)self characterAcceptanceTestBrailleWithoutWhitespace];
      v9 = [v8 substringWithRange:{-[VOTBrailleGestureManager characterAcceptanceTestBrailleIndex](self, "characterAcceptanceTestBrailleIndex"), 1}];

      if ([v13 isEqualToString:v9])
      {
        [(VOTBrailleGestureManager *)self setCharacterAcceptanceTestAcceptedCount:[(VOTBrailleGestureManager *)self characterAcceptanceTestAcceptedCount]+ 1];
      }

      [(VOTBrailleGestureManager *)self setCharacterAcceptanceTestBrailleIndex:[(VOTBrailleGestureManager *)self characterAcceptanceTestBrailleIndex]+ 1];
      v10 = [(VOTBrailleGestureManager *)self characterAcceptanceTestBrailleIndex];
      v11 = [(VOTBrailleGestureManager *)self characterAcceptanceTestBrailleWithoutWhitespace];
      v12 = [v11 length];

      if (v10 >= v12)
      {
        [(VOTBrailleGestureManager *)self _finishCharacterAcceptenceTest];
      }
    }
  }
}

- (void)_finishCharacterAcceptenceTest
{
  v3 = [(VOTBrailleGestureManager *)self characterAcceptanceTestBrailleWithoutWhitespace];

  if (v3)
  {
    v4 = [(VOTBrailleGestureManager *)self characterAcceptanceTestBrailleIndex];
    v5 = [(VOTBrailleGestureManager *)self characterAcceptanceTestBrailleWithoutWhitespace];
    v6 = [v5 length];

    if (v4 < v6)
    {
      v7 = VOTLogBrailleGestures();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(VOTBrailleGestureManager *)self characterAcceptanceTestBrailleWithoutWhitespace];
        v14 = 138412290;
        v15 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BSI character acceptence test: didn't type the whole string %@", &v14, 0xCu);
      }
    }

    v9 = VOTLogBrailleGestures();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [NSNumber numberWithInteger:[(VOTBrailleGestureManager *)self characterAcceptanceTestAcceptedCount]];
      v11 = [NSNumber numberWithInteger:[(VOTBrailleGestureManager *)self characterAcceptanceTestBrailleIndex]];
      v12 = [(VOTBrailleGestureManager *)self characterAcceptanceTestBrailleWithoutWhitespace];
      v14 = 138412802;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "BSI character acceptance test: result: %@ out of %@ accepted for %@", &v14, 0x20u);
    }

    [(VOTBrailleGestureManager *)self setCharacterAcceptanceTestBrailleWithoutWhitespace:0];
    v13 = +[AXSettings sharedInstance];
    [v13 setVoiceOverTouchBrailleGesturesCharacterAcceptanceTestBraille:0];
  }
}

- (VOTBrailleGestureManagerDelegate)brailleGestureManagerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_brailleGestureManagerDelegate);

  return WeakRetained;
}

@end