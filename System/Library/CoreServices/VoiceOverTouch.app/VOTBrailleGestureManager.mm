@interface VOTBrailleGestureManager
- (BOOL)_canUseContractedBraille;
- (BOOL)_handleAdjustTextSegmentTypeEvent:(id)event;
- (BOOL)_handleAllFingersLifted;
- (BOOL)_handleCarriageReturnSwipe;
- (BOOL)_handleWordBreak:(id)break includeSpace:(BOOL)space;
- (BOOL)_hasContractedBraillePreference;
- (BOOL)_isAdjustTextSegmentEvent:(id)event;
- (BOOL)_isAdjustTextSegmentTypeEvent:(id)event;
- (BOOL)_isCalibrationEndPattern:(id)pattern;
- (BOOL)_isCalibrationStartPattern:(id)pattern;
- (BOOL)_isCarriageReturnSwipeEvent:(id)event;
- (BOOL)_isNextBrailleUsageEvent:(id)event;
- (BOOL)_isPreviousBrailleUsageEvent:(id)event;
- (BOOL)_isSelectEvent:(id)event;
- (BOOL)_isToggleLockedConfigurationEvent:(id)event;
- (BOOL)_isTranslateImmediatelyEvent:(id)event;
- (BOOL)_isTypingModeSingleHandVariant;
- (BOOL)_patternIncludesEveryFinger:(id)finger;
- (BOOL)_requiresCandidateSelection;
- (BOOL)_requiresLaTeXInput;
- (BOOL)_shouldReverseDots;
- (BOOL)_shouldUseContractedBraille;
- (BOOL)_shouldUseEightDotBraille;
- (BOOL)allowsElementMovement;
- (BOOL)gesturesControlRotor;
- (BOOL)isBackspaceEvent:(id)event;
- (BOOL)isNextBrailleTableEvent:(id)event;
- (BOOL)isNextKeyboardLanguageEvent:(id)event;
- (BOOL)isNextSuggestionEvent:(id)event;
- (BOOL)isPreviousSuggestionEvent:(id)event;
- (BOOL)isReturnKeyEvent:(id)event;
- (BOOL)isSelectItemEvent:(id)event;
- (BOOL)isSpaceEvent:(id)event;
- (BOOL)isWordBackspaceEvent:(id)event;
- (BOOL)performCustomBackspace;
- (BOOL)performCustomWordBackspace;
- (BOOL)performNextBrailleTableCommand;
- (BOOL)performNextKeyboardLanguage;
- (BOOL)processEvent:(id)event;
- (BOOL)processTouchLocations:(id)locations isFirstTouch:(BOOL)touch isCancelTouch:(BOOL)cancelTouch;
- (BOOL)wantsToStayActive;
- (VOTBrailleGestureManager)init;
- (VOTBrailleGestureManagerDelegate)brailleGestureManagerDelegate;
- (id)_languageCodeForBrailleTable;
- (id)_languageCodeForSpeakingAndBrailleTranslation;
- (id)_languageCodeForSpellChecking;
- (id)_newBrailleInput;
- (id)_outputRequestForText:(id)text hint:(id)hint useKeyboardLanguage:(BOOL)language shouldQueue:(BOOL)queue isInsert:(BOOL)insert isSuggestion:(BOOL)suggestion isDelete:(BOOL)delete speakLiterally:(BOOL)self0 otherLanguage:(id)self1;
- (id)_printBrailleForTouchPoints:(id)points;
- (id)_spokenStringForPrintBraille:(id)braille useLongForm:(BOOL)form;
- (id)_touchLocationsByFilteringOutEdges:(id)edges;
- (id)_touchPointsForCalibrationGivenFirstPoints:(id)points lastPoints:(id)lastPoints;
- (id)nameSearcherEntriesPassingSearchFrom:(id)from;
- (unint64_t)_numberOfDots;
- (unint64_t)mode;
- (void)_announceBrailleTypingPropertiesIncludingOrientation:(BOOL)orientation typingMode:(BOOL)mode forUnlockConfiguration:(BOOL)configuration;
- (void)_announceRespectingSoundSettingsRequest:(id)request event:(id)event hint:(id)hint;
- (void)_appendOrientationToAnnouncement:(id)announcement;
- (void)_applyCandidateInDirection:(int64_t)direction;
- (void)_applySuggestionToElement:(id)element direction:(int64_t)direction;
- (void)_beginExploringDotPatterns;
- (void)_calibrateWithTouchPoints:(id)points silently:(BOOL)silently;
- (void)_cancelWarningTones;
- (void)_cleanUpTouchesIncludingCalibrationStartPoints:(BOOL)points;
- (void)_commitBufferedBraille;
- (void)_commitLoneLeftColumnIfNeeded;
- (void)_endExploringDotPatterns;
- (void)_enumerateDotNumbersForPrintBraille:(id)braille usingBlock:(id)block;
- (void)_finishCharacterAcceptenceTest;
- (void)_flashInsertedTextIfAllowed:(id)allowed;
- (void)_handleCalibrationTimeout;
- (void)_handleChangeUsage:(BOOL)usage;
- (void)_handleFingersOnScreen:(id)screen didAddOrRemoveFingers:(BOOL)fingers;
- (void)_handlePrintBraille:(id)braille;
- (void)_handleSingleHandCalibration;
- (void)_handleTouchPoints:(id)points;
- (void)_handleTranslateImmediately;
- (void)_inputBrailleFromSeriesOfTouchPoints:(id)points;
- (void)_inputBrailleFromTouchPoints:(id)points;
- (void)_insertCurrentSelectedCandidate;
- (void)_insertCurrentSelectedSuggestion:(id)suggestion;
- (void)_issueCommands:(id)commands;
- (void)_issueSingleCommand:(id)command;
- (void)_outputChosenCandidate:(id)candidate;
- (void)_outputChosenSuggestion:(id)suggestion;
- (void)_playBonk;
- (void)_playHapticFeedbackIfNeeded;
- (void)_playWarningTone;
- (void)_playWarningTones:(unint64_t)tones completion:(id)completion;
- (void)_proceedAcceptanceTestWithEnteredCell:(id)cell;
- (void)_replaceRotorEventWithTextMovementEvent:(id)event;
- (void)_scheduleExploringModeIfNeeded;
- (void)_speakPrintBrailleForExploration;
- (void)_speakText:(id)text hint:(id)hint useKeyboardLanguage:(BOOL)language shouldQueue:(BOOL)queue isInsert:(BOOL)insert isSuggestion:(BOOL)suggestion isDelete:(BOOL)delete speakLiterally:(BOOL)self0 otherLanguage:(id)self1;
- (void)_speakText:(id)text useKeyboardLanguage:(BOOL)language shouldQueue:(BOOL)queue isInsert:(BOOL)insert isDelete:(BOOL)delete speakLiterally:(BOOL)literally;
- (void)_typePrintBraille:(id)braille;
- (void)_updateBrailleTypingPropertiesAndDelayAnnouncement:(BOOL)announcement forUnlockConfiguration:(BOOL)configuration preferSingleHand:(BOOL)hand;
- (void)_updateBrailleUI;
- (void)_updateDotNumberCirclesForPrintBraille:(id)braille;
- (void)_updateDotNumbersWithReversed:(BOOL)reversed;
- (void)_updateDotPositions;
- (void)_updateShouldUseContractedBraille;
- (void)accelerometer:(id)accelerometer didChangeDeviceOrientation:(int64_t)orientation;
- (void)applyNextSuggestionToElement:(id)element;
- (void)applyPreviousSuggestionToElement:(id)element;
- (void)clearCurrentString;
- (void)currentElementDidChange;
- (void)dealloc;
- (void)didInputBackspace;
- (void)didInputWordBackspace;
- (void)didSelectItem;
- (void)eventFactoryDidBeginSplitGesture:(id)gesture;
- (void)flushCharacterBuffer;
- (void)handleBrailleGestureWithLeftPatternDictionary:(id)dictionary rightPatternDictionary:(id)patternDictionary;
- (void)inputSpaceForElement:(id)element;
- (void)pressReturnKeyForElement:(id)element;
- (void)sendCarriageReturnForElement:(id)element;
- (void)setActive:(BOOL)active usage:(int64_t)usage preferSingleHand:(BOOL)hand;
- (void)setLeftSideInput:(id)input;
- (void)setTypingMode:(int64_t)mode;
- (void)setUsage:(int64_t)usage userInitiated:(BOOL)initiated;
- (void)updateWithString:(id)string;
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

- (void)setActive:(BOOL)active usage:(int64_t)usage preferSingleHand:(BOOL)hand
{
  handCopy = hand;
  activeCopy = active;
  isActive = [(VOTGesturedTextInputManager *)self isActive];
  v48.receiver = self;
  v48.super_class = VOTBrailleGestureManager;
  [(VOTGesturedTextInputManager *)&v48 setActive:activeCopy];
  [(VOTBrailleGestureTranslator *)self->_gestureTranslator setActive:activeCopy];
  usage = [(VOTBrailleGestureManager *)self usage];
  _AXSBrailleScreenInputSetEnabled();
  if (activeCopy && (isActive & 1) == 0)
  {
    self->_usage = usage;
    [(VOTBrailleGestureManager *)self setDidInitialCalibration:0];
    [(VOTBrailleGestureManager *)self setDidStartFullGesture:0];
    [(VOTBrailleGestureManager *)self setDidAnnounceBrailleTypingProperties:0];
    [(BKSAccelerometer *)self->_accelerometer setPassiveOrientationEvents:0];
    [(BKSAccelerometer *)self->_accelerometer setOrientationEventsEnabled:1];
    [(VOTBrailleGestureManager *)self _updateShouldUseContractedBraille];
    [(VOTBrailleGestureManager *)self setLeftSideInput:0];
    [(VOTBrailleGestureManager *)self setStylusInput:@"⠀"];
    [(VOTBrailleGestureManager *)self _updateBrailleTypingPropertiesAndDelayAnnouncement:1 forUnlockConfiguration:0 preferSingleHand:handCopy];
    v11 = +[VOTElement systemAppApplication];
    [v11 setRotationCapabilityEnabled:0];

    v12 = +[VOTDisplayManager displayManager];
    keyboardOrientation = [(VOTBrailleGestureManager *)self keyboardOrientation];
    dotNumberPositions = [(VOTBrailleGestureTranslator *)self->_gestureTranslator dotNumberPositions];
    [v12 showBrailleUIWithOrientation:keyboardOrientation dotPositions:dotNumberPositions typingMode:{-[VOTBrailleGestureManager typingMode](self, "typingMode")}];

    disableIdleTimerAssertion = [(VOTBrailleGestureManager *)self disableIdleTimerAssertion];

    if (!disableIdleTimerAssertion)
    {
      v16 = +[AXUserEventTimer sharedInstance];
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = [v16 acquireAssertionToDisableIdleTimerWithReason:v18];
      [(VOTBrailleGestureManager *)self setDisableIdleTimerAssertion:v19];
    }

    lockScreenDimmingTimer = [(VOTBrailleGestureManager *)self lockScreenDimmingTimer];

    if (!lockScreenDimmingTimer)
    {
      v21 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
      [(VOTBrailleGestureManager *)self setLockScreenDimmingTimer:v21];

      lockScreenDimmingTimer2 = [(VOTBrailleGestureManager *)self lockScreenDimmingTimer];
      [lockScreenDimmingTimer2 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    }

    lockScreenDimmingTimer3 = [(VOTBrailleGestureManager *)self lockScreenDimmingTimer];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_1000FC1B0;
    v47[3] = &unk_1001C76E8;
    v47[4] = self;
    [lockScreenDimmingTimer3 afterDelay:v47 processBlock:30.0];

    logBSIUsageTimer = [(VOTBrailleGestureManager *)self logBSIUsageTimer];
    [logBSIUsageTimer afterDelay:&stru_1001CB100 processBlock:0 cancelBlock:15.0];

    movementManager = [(VOTBrailleGestureManager *)self movementManager];
    [movementManager setSegment:1];

    initialOrientationTimer = [(VOTBrailleGestureManager *)self initialOrientationTimer];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_1000FC254;
    v46[3] = &unk_1001C76E8;
    v46[4] = self;
    [initialOrientationTimer afterDelay:v46 processBlock:0.1];

    if (usage == 1)
    {
      v27 = sub_1000511CC(off_1001FDDD0, @"entering.bsi.in.command.mode", 0);
      v28 = +[VOSOutputEvent BSIDidEnableCommand];
    }

    else
    {
      if (usage)
      {
LABEL_20:
        v39 = +[AXSettings sharedInstance];
        voiceOverTouchBrailleGesturesCharacterAcceptanceTestBraille = [v39 voiceOverTouchBrailleGesturesCharacterAcceptanceTestBraille];

        if (voiceOverTouchBrailleGesturesCharacterAcceptanceTestBraille)
        {
          v41 = +[NSMutableCharacterSet whitespaceAndNewlineCharacterSet];
          [v41 addCharactersInString:@"⠀"];
          v42 = +[AXSettings sharedInstance];
          voiceOverTouchBrailleGesturesCharacterAcceptanceTestBraille2 = [v42 voiceOverTouchBrailleGesturesCharacterAcceptanceTestBraille];
          v44 = [voiceOverTouchBrailleGesturesCharacterAcceptanceTestBraille2 componentsSeparatedByCharactersInSet:v41];

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

  if (activeCopy || ((isActive ^ 1) & 1) != 0)
  {
    if (activeCopy && usage != usage)
    {
      [(VOTBrailleGestureManager *)self setUsage:usage];
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

    disableIdleTimerAssertion2 = [(VOTBrailleGestureManager *)self disableIdleTimerAssertion];
    [disableIdleTimerAssertion2 invalidate];

    [(VOTBrailleGestureManager *)self setDisableIdleTimerAssertion:0];
    lockScreenDimmingTimer4 = [(VOTBrailleGestureManager *)self lockScreenDimmingTimer];
    [lockScreenDimmingTimer4 cancel];

    logBSIUsageTimer2 = [(VOTBrailleGestureManager *)self logBSIUsageTimer];
    [logBSIUsageTimer2 cancel];

    initialOrientationTimer2 = [(VOTBrailleGestureManager *)self initialOrientationTimer];
    [initialOrientationTimer2 cancel];

    v36 = sub_1000511CC(off_1001FDDD0, @"stopping.bsi", 0);
    v37 = +[VOSOutputEvent BSIDidDisable];
    [(VOTBrailleGestureManager *)self _announceRespectingSoundSettingsRequest:v36 event:v37];
  }
}

- (BOOL)wantsToStayActive
{
  LODWORD(usage) = [(VOTGesturedTextInputManager *)self isActive];
  if (usage)
  {
    usage = [(VOTBrailleGestureManager *)self usage];
    if (usage != 1)
    {
      v4 = +[AXSettings sharedInstance];
      voiceOverTouchBrailleGestureControl = [v4 voiceOverTouchBrailleGestureControl];

      LOBYTE(usage) = voiceOverTouchBrailleGestureControl;
    }
  }

  return usage;
}

- (BOOL)allowsElementMovement
{
  currentElement = [VOTSharedWorkspace currentElement];
  [currentElement updateGesturedTextInputAttributes];
  if ([(VOTGesturedTextInputManager *)self isActive]&& ![(VOTBrailleGestureManager *)self usage])
  {
    gesturedTextInputAttributes = [currentElement gesturedTextInputAttributes];
    if ([gesturedTextInputAttributes acceptsRawInput])
    {
      v4 = [currentElement isVisible] ^ 1;
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

- (void)setUsage:(int64_t)usage userInitiated:(BOOL)initiated
{
  if ([(VOTGesturedTextInputManager *)self isActive:usage])
  {
    usage = self->_usage;
    self->_usage = usage;
    if (usage != usage)
    {
      if (!usage)
      {
        [(VOTBrailleGestureManager *)self _commitBufferedBraille];
      }

      if (usage == 1)
      {
        v9 = sub_1000511CC(off_1001FDDD0, @"bsi.command.mode", 0);
        v7 = +[VOSOutputEvent BSIDidEnableCommand];
        v8 = sub_1000511CC(off_1001FDDD0, @"bsi.command.mode.hint", 0);
        [(VOTBrailleGestureManager *)self _announceRespectingSoundSettingsRequest:v9 event:v7 hint:v8];
      }

      else
      {
        if (usage)
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

- (BOOL)processEvent:(id)event
{
  eventCopy = event;
  if ([(VOTBrailleGestureManager *)self gesturesControlRotor])
  {
    currentElementAttributes = [(VOTGesturedTextInputManager *)self currentElementAttributes];
    acceptsRawInput = [currentElementAttributes acceptsRawInput];

    if (acceptsRawInput)
    {
      [(VOTBrailleGestureManager *)self _replaceRotorEventWithTextMovementEvent:eventCopy];
    }
  }

  if ([(VOTBrailleGestureManager *)self _isNextBrailleUsageEvent:eventCopy])
  {
    v28 = _NSConcreteStackBlock;
    v29 = 3221225472;
    v30 = sub_1000FC968;
    v31 = &unk_1001C76E8;
    selfCopy = self;
LABEL_10:
    AXPerformBlockOnMainThread();
LABEL_11:
    v7 = 1;
    goto LABEL_12;
  }

  if ([(VOTBrailleGestureManager *)self _isPreviousBrailleUsageEvent:eventCopy])
  {
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_1000FC974;
    v26 = &unk_1001C76E8;
    selfCopy2 = self;
    goto LABEL_10;
  }

  if ([(VOTBrailleGestureManager *)self _isTranslateImmediatelyEvent:eventCopy])
  {
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_1000FC980;
    v21 = &unk_1001C76E8;
    selfCopy3 = self;
    goto LABEL_10;
  }

  if ([(VOTBrailleGestureManager *)self _isCarriageReturnSwipeEvent:eventCopy])
  {
    if ([(VOTBrailleGestureManager *)self _handleCarriageReturnSwipe])
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

  if ([(VOTBrailleGestureManager *)self _isToggleLockedConfigurationEvent:eventCopy])
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

  if ([(VOTBrailleGestureManager *)self _isAdjustTextSegmentEvent:eventCopy]|| [(VOTBrailleGestureManager *)self _isSelectEvent:eventCopy])
  {
    v10 = VOTLogEvent();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      command = [eventCopy command];
      movementManager = [(VOTBrailleGestureManager *)self movementManager];
      *buf = 138412546;
      v34 = command;
      v35 = 1024;
      segment = [movementManager segment];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Passing up %@ event with segment:%d.", buf, 0x12u);
    }

    movementManager2 = [(VOTBrailleGestureManager *)self movementManager];
    v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [movementManager2 segment]);
    [eventCopy setObject:v14 forIndex:118];

    [(VOTBrailleGestureManager *)self setSplitting:1];
    [(VOTBrailleGestureManager *)self _endExploringDotPatterns];
    goto LABEL_24;
  }

  if (![(VOTBrailleGestureManager *)self _isAdjustTextSegmentTypeEvent:eventCopy]|| (v16 = [(VOTBrailleGestureManager *)self _handleAdjustTextSegmentTypeEvent:eventCopy], v7 = 1, [(VOTBrailleGestureManager *)self setSplitting:1], [(VOTBrailleGestureManager *)self _endExploringDotPatterns], (v16 & 1) == 0))
  {
LABEL_24:
    v17.receiver = self;
    v17.super_class = VOTBrailleGestureManager;
    v7 = [(VOTGesturedTextInputManager *)&v17 processEvent:eventCopy];
  }

LABEL_12:

  return v7;
}

- (void)_replaceRotorEventWithTextMovementEvent:(id)event
{
  eventCopy = event;
  if ([(VOTBrailleGestureManager *)self isRotorLeftEvent:?])
  {
    v4 = eventCopy;
    v5 = &kVOTEventCommandNextTextSegmentType;
  }

  else if ([(VOTBrailleGestureManager *)self isRotorRightEvent:eventCopy])
  {
    v4 = eventCopy;
    v5 = &kVOTEventCommandPreviousTextSegmentType;
  }

  else if ([(VOTBrailleGestureManager *)self isRotorDownEvent:eventCopy])
  {
    v4 = eventCopy;
    v5 = &kVOTEventCommandNextTextSegment;
  }

  else if ([(VOTBrailleGestureManager *)self isRotorUpEvent:eventCopy])
  {
    v4 = eventCopy;
    v5 = &kVOTEventCommandPreviousTextSegment;
  }

  else if ([(VOTBrailleGestureManager *)self isTextSelectionForwardEvent:eventCopy])
  {
    v4 = eventCopy;
    v5 = &kVOTEventCommandSelectRight;
  }

  else
  {
    if (![(VOTBrailleGestureManager *)self isTextSelectionBackwardEvent:eventCopy])
    {
      goto LABEL_14;
    }

    v4 = eventCopy;
    v5 = &kVOTEventCommandSelectLeft;
  }

  [v4 setCommand:*v5];
LABEL_14:
}

- (BOOL)processTouchLocations:(id)locations isFirstTouch:(BOOL)touch isCancelTouch:(BOOL)cancelTouch
{
  cancelTouchCopy = cancelTouch;
  touchCopy = touch;
  locationsCopy = locations;
  if (![(VOTBrailleGestureManager *)self typingMode]|| [(VOTBrailleGestureManager *)self _isTypingModeInputColumnsVariant])
  {
    v9 = [(VOTBrailleGestureManager *)self _touchLocationsByFilteringOutEdges:locationsCopy];

    locationsCopy = v9;
  }

  if (![locationsCopy count])
  {
    lastTouchLocationsByIdentifier = [(VOTBrailleGestureManager *)self lastTouchLocationsByIdentifier];
    v11 = [lastTouchLocationsByIdentifier count];

    if (!v11)
    {
      goto LABEL_30;
    }
  }

  if (!touchCopy && ![(VOTBrailleGestureManager *)self didStartFullGesture])
  {
    if (![(VOTBrailleGestureManager *)self didInitialCalibration])
    {
      if ([(VOTBrailleGestureManager *)self _isTypingModeInputColumnsVariant])
      {
        v16 = ([(VOTBrailleGestureManager *)self _shouldUseEightDotBraille]? 4 : 3);
        if ([locationsCopy count] == v16)
        {
          allValues = [locationsCopy allValues];
          [(VOTBrailleGestureManager *)self _calibrateWithTouchPoints:allValues silently:1];
          [(VOTBrailleGestureManager *)self _updateBrailleUI];
        }
      }

      [(VOTBrailleGestureManager *)self setDidInitialCalibration:1];
    }

    goto LABEL_30;
  }

  v12 = [locationsCopy count];
  lastTouchLocationsByIdentifier2 = [(VOTBrailleGestureManager *)self lastTouchLocationsByIdentifier];
  v14 = [lastTouchLocationsByIdentifier2 count];

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

    if ([locationsCopy count] == v15)
    {
      [(VOTBrailleGestureManager *)self performSelector:"_handleSingleHandCalibration" withObject:0 afterDelay:1.0];
    }

    else
    {
      [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_handleSingleHandCalibration" object:0];
    }
  }

  [(VOTBrailleGestureManager *)self setLastTouchLocationsByIdentifier:locationsCopy];
  if ([locationsCopy count] || v12 == v14)
  {
    if (touchCopy)
    {
      [(VOTBrailleGestureManager *)self setDidStartFullGesture:1];
      [(VOTBrailleGestureManager *)self setShouldUpdateDotPositions:1];
    }

    [(VOTBrailleGestureManager *)self _handleFingersOnScreen:locationsCopy didAddOrRemoveFingers:v12 != v14];
LABEL_30:
    _handleAllFingersLifted = 0;
    goto LABEL_31;
  }

  [(VOTBrailleGestureManager *)self setOverridePrintBrailleWithAllSixDots:cancelTouchCopy & ~AXDeviceSupportsManyTouches()];
  _handleAllFingersLifted = [(VOTBrailleGestureManager *)self _handleAllFingersLifted];
LABEL_31:

  return _handleAllFingersLifted;
}

- (id)_touchLocationsByFilteringOutEdges:(id)edges
{
  edgesCopy = edges;
  v5 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = edgesCopy;
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

- (void)setTypingMode:(int64_t)mode
{
  if (self->_typingMode != mode)
  {
    v5 = [(VOTBrailleGestureTranslator *)self->_gestureTranslator translateExistingInputWithMode:[(VOTBrailleGestureManager *)self mode]];
    [(VOTBrailleGestureManager *)self updateWithString:v5];

    if ([(VOTBrailleGestureManager *)self _isTypingModeInputColumnsVariant])
    {
      leftSideInput = [(VOTBrailleGestureManager *)self leftSideInput];
      [(VOTBrailleGestureManager *)self _updateDotNumbersWithReversed:leftSideInput != 0];
    }

    else
    {
      [(VOTBrailleGestureManager *)self setLeftSideInput:0];
    }

    if ((mode - 5) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      [(VOTBrailleGestureManager *)self setStylusInput:@"⠀"];
    }

    self->_typingMode = mode;
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

- (void)inputSpaceForElement:(id)element
{
  elementCopy = element;
  if (![(VOTBrailleGestureManager *)self _isTypingModeInputColumnsVariant])
  {
    if (![(VOTBrailleGestureManager *)self _isTypingModeStylusVariant])
    {
      goto LABEL_6;
    }

    stylusInput = [(VOTBrailleGestureManager *)self stylusInput];
    v8 = [stylusInput isEqualToString:@"⠀"];

    if (v8)
    {
      goto LABEL_6;
    }

    v10 = &off_1001DBB40;
LABEL_11:
    [(VOTBrailleGestureManager *)self _handleTouchPoints:v10];
    goto LABEL_22;
  }

  leftSideInput = [(VOTBrailleGestureManager *)self leftSideInput];
  v6 = [leftSideInput isEqualToString:@"⠀"];

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
    unicode = [v9 unicode];
    [(VOTBrailleGestureTranslator *)gestureTranslator addPrintBrailleToBuffer:unicode language:0];

    [(VOTBrailleGestureTranslator *)self->_gestureTranslator didInputSpace];
    v13 = +[AXSettings sharedInstance];
    voiceOverBrailleGesturesTypingFeedback = [v13 voiceOverBrailleGesturesTypingFeedback];

    if ((voiceOverBrailleGesturesTypingFeedback & 0xFFFFFFFFFFFFFFFDLL) == 0)
    {
      currentElementAttributes = [(VOTGesturedTextInputManager *)self currentElementAttributes];
      shouldPlayKeyboardSecureClickSound = [currentElementAttributes shouldPlayKeyboardSecureClickSound];

      if ((shouldPlayKeyboardSecureClickSound & 1) == 0)
      {
        v17 = +[VOTWorkspace sharedWorkspace];
        selectedLanguage = [v17 selectedLanguage];
        v19 = sub_100051B24(32, @"UnicodeHex.", @"VOTOutputPunctuation", selectedLanguage);

        [(VOTBrailleGestureManager *)self _speakText:v19 useKeyboardLanguage:0];
      }
    }

    goto LABEL_17;
  }

  if (![(VOTBrailleGestureManager *)self _handleWordBreak:elementCopy includeSpace:1])
  {
    v22.receiver = self;
    v22.super_class = VOTBrailleGestureManager;
    [(VOTGesturedTextInputManager *)&v22 inputSpaceForElement:elementCopy];
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

- (void)pressReturnKeyForElement:(id)element
{
  elementCopy = element;
  if ([(VOTBrailleGestureManager *)self _requiresCandidateSelection])
  {
    v5 = [(VOTBrailleGestureTranslator *)self->_gestureTranslator translateExistingInputWithMode:[(VOTBrailleGestureManager *)self mode]];
    if ([v5 length])
    {
      [(VOTBrailleGestureManager *)self _handleWordBreak:elementCopy includeSpace:0];
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
    voiceOverBrailleGesturesTypingFeedback = [v6 voiceOverBrailleGesturesTypingFeedback];

    if ((voiceOverBrailleGesturesTypingFeedback & 0xFFFFFFFFFFFFFFFDLL) == 0)
    {
      currentElementAttributes = [(VOTGesturedTextInputManager *)self currentElementAttributes];
      shouldPlayKeyboardSecureClickSound = [currentElementAttributes shouldPlayKeyboardSecureClickSound];

      if ((shouldPlayKeyboardSecureClickSound & 1) == 0)
      {
        v10 = +[VOTWorkspace sharedWorkspace];
        selectedLanguage = [v10 selectedLanguage];
        v12 = sub_100051B24(10, @"UnicodeHex.", @"VOTOutputPunctuation", selectedLanguage);

        [(VOTBrailleGestureManager *)self _speakText:v12 useKeyboardLanguage:0];
      }
    }
  }

  else
  {
    [(VOTBrailleGestureManager *)self _handleWordBreak:elementCopy includeSpace:0];
    v15.receiver = self;
    v15.super_class = VOTBrailleGestureManager;
    [(VOTGesturedTextInputManager *)&v15 pressReturnKeyForElement:elementCopy];
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

- (void)sendCarriageReturnForElement:(id)element
{
  elementCopy = element;
  [(VOTBrailleGestureManager *)self _handleWordBreak:elementCopy includeSpace:0];
  v5.receiver = self;
  v5.super_class = VOTBrailleGestureManager;
  [(VOTGesturedTextInputManager *)&v5 sendCarriageReturnForElement:elementCopy];

  [(VOTBrailleGestureTranslator *)self->_gestureTranslator didPressReturnKey];
  [(VOTBrailleGestureSpellingSuggestionHandler *)self->_spellingSuggestionHandler clearSpellingSuggestions];
  [(VOTBrailleGestureCandidateManager *)self->_candidateManager deactivate];
}

- (BOOL)_handleWordBreak:(id)break includeSpace:(BOOL)space
{
  spaceCopy = space;
  breakCopy = break;
  [(VOTBrailleGestureManager *)self _commitLoneLeftColumnIfNeeded];
  if ([(VOTBrailleGestureCandidateManager *)self->_candidateManager isActive])
  {
    [(VOTBrailleGestureManager *)self _insertCurrentSelectedCandidate];
  }

  else
  {
    currentSpellingSuggestion = [(VOTBrailleGestureSpellingSuggestionHandler *)self->_spellingSuggestionHandler currentSpellingSuggestion];

    if (currentSpellingSuggestion)
    {
      [(VOTBrailleGestureManager *)self _insertCurrentSelectedSuggestion:breakCopy];
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

      if (spaceCopy)
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

- (void)updateWithString:(id)string
{
  stringCopy = string;
  v5 = VOTLogBrailleGestures();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100130CFC();
  }

  v6.receiver = self;
  v6.super_class = VOTBrailleGestureManager;
  [(VOTGesturedTextInputManager *)&v6 updateWithString:stringCopy];
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

- (BOOL)_handleAdjustTextSegmentTypeEvent:(id)event
{
  command = [event command];
  v5 = [command isEqualToString:kVOTEventCommandNextTextSegmentType];

  movementManager = [(VOTBrailleGestureManager *)self movementManager];
  v7 = movementManager;
  if (v5)
  {
    [movementManager nextSegment];
  }

  else
  {
    [movementManager previousSegment];
  }

  selectedLanguage = [VOTSharedWorkspace selectedLanguage];
  movementManager2 = [(VOTBrailleGestureManager *)self movementManager];
  localizedSegmentName = [movementManager2 localizedSegmentName];

  v11 = sub_1000095FC(localizedSegmentName, 0, selectedLanguage);
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
    _shouldUseEightDotBraille = [(VOTBrailleGestureManager *)self _shouldUseEightDotBraille];
    _shouldUseContractedBraille = [(VOTBrailleGestureManager *)self _shouldUseContractedBraille];
    _requiresLaTeXInput = [(VOTBrailleGestureManager *)self _requiresLaTeXInput];

    return _BRLTModeForFlags(_shouldUseEightDotBraille, _shouldUseContractedBraille, _requiresLaTeXInput);
  }
}

- (BOOL)isReturnKeyEvent:(id)event
{
  command = [event command];
  v4 = [command isEqualToString:kVOTEventCommandGesturedTextInputPerformReturnEquivalent];

  return v4;
}

- (BOOL)isSpaceEvent:(id)event
{
  command = [event command];
  v4 = [command isEqualToString:kVOTEventCommandGesturedTextInputInsertSpace];

  return v4;
}

- (BOOL)isBackspaceEvent:(id)event
{
  command = [event command];
  v4 = [command isEqualToString:kVOTEventCommandGesturedTextInputBackspace];

  return v4;
}

- (BOOL)isWordBackspaceEvent:(id)event
{
  command = [event command];
  v4 = [command isEqualToString:kVOTEventCommandGesturedTextInputDeleteWord];

  return v4;
}

- (BOOL)isNextSuggestionEvent:(id)event
{
  command = [event command];
  v4 = [command isEqualToString:kVOTEventCommandGesturedTextInputNextSuggestion];

  return v4;
}

- (BOOL)isPreviousSuggestionEvent:(id)event
{
  command = [event command];
  v4 = [command isEqualToString:kVOTEventCommandGesturedTextInputPreviousSuggestion];

  return v4;
}

- (BOOL)isSelectItemEvent:(id)event
{
  eventCopy = event;
  if ([(VOTBrailleGestureManager *)self isReturnKeyEvent:eventCopy])
  {
    v5 = 1;
  }

  else
  {
    command = [eventCopy command];
    v5 = [command isEqualToString:kVOTEventCommandGesturedTextInputLaunchApp];
  }

  return v5;
}

- (BOOL)isNextKeyboardLanguageEvent:(id)event
{
  command = [event command];
  v4 = [command isEqualToString:kVOTEventCommandGesturedTextInputNextKeyboardLanguage];

  return v4;
}

- (BOOL)performNextKeyboardLanguage
{
  v2 = +[VOTWorkspace sharedWorkspace];
  [v2 performNextLanguageButtonPress];

  return 1;
}

- (BOOL)isNextBrailleTableEvent:(id)event
{
  command = [event command];
  v4 = [command isEqualToString:kVOTEventCommandGesturedTextInputNextBrailleTable];

  return v4;
}

- (BOOL)performNextBrailleTableCommand
{
  [(VOTBrailleGestureManager *)self _commitBufferedBraille];
  brailleLanguageRotorItems = [VOTSharedWorkspace brailleLanguageRotorItems];
  v4 = [brailleLanguageRotorItems ax_filteredArrayUsingBlock:&stru_1001CB120];

  if ([v4 count] > 1)
  {
    selectedBrailleGesturesInputTable = [VOTSharedWorkspace selectedBrailleGesturesInputTable];
    identifier = [selectedBrailleGesturesInputTable identifier];

    if ([v4 count])
    {
      v7 = 0;
      while (1)
      {
        v8 = [v4 objectAtIndexedSubscript:v7];
        v9 = VOSBrailleTableForRotorItem();
        identifier2 = [v9 identifier];

        LOBYTE(v8) = [identifier isEqual:identifier2];
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
    _shouldUseEightDotBraille = [(VOTBrailleGestureManager *)self _shouldUseEightDotBraille];
    v15 = [BRLTTable alloc];
    identifier3 = [v13 identifier];
    v17 = [v15 initWithIdentifier:identifier3];
    [VOTSharedWorkspace setSelectedBrailleGesturesInputTable:v17];

    _shouldUseEightDotBraille2 = [(VOTBrailleGestureManager *)self _shouldUseEightDotBraille];
    if (_shouldUseEightDotBraille != _shouldUseEightDotBraille2)
    {
      v19 = _shouldUseEightDotBraille2;
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

- (void)_insertCurrentSelectedSuggestion:(id)suggestion
{
  spellingSuggestionHandler = self->_spellingSuggestionHandler;
  suggestionCopy = suggestion;
  _languageCodeForSpellChecking = [(VOTBrailleGestureManager *)self _languageCodeForSpellChecking];
  v9 = [(VOTBrailleGestureSpellingSuggestionHandler *)spellingSuggestionHandler applySpellingSuggestionForResponder:suggestionCopy languageCode:_languageCodeForSpellChecking];

  currentElementAttributes = [(VOTGesturedTextInputManager *)self currentElementAttributes];
  LODWORD(suggestionCopy) = [currentElementAttributes shouldEchoCharacter];

  if (suggestionCopy)
  {
    LOWORD(v8) = 0;
    [(VOTBrailleGestureManager *)self _speakText:v9 hint:0 useKeyboardLanguage:1 shouldQueue:0 isInsert:1 isSuggestion:0 isDelete:v8 speakLiterally:0 otherLanguage:?];
  }

  [(VOTBrailleGestureSpellingSuggestionHandler *)self->_spellingSuggestionHandler clearSpellingSuggestions];
}

- (void)_outputChosenSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  if (suggestionCopy)
  {
    currentElementAttributes = [(VOTGesturedTextInputManager *)self currentElementAttributes];
    shouldEchoCharacter = [currentElementAttributes shouldEchoCharacter];

    if (shouldEchoCharacter)
    {
      LOWORD(v6) = 0;
      [(VOTBrailleGestureManager *)self _speakText:suggestionCopy hint:0 useKeyboardLanguage:1 shouldQueue:0 isInsert:0 isSuggestion:1 isDelete:v6 speakLiterally:0 otherLanguage:?];
    }
  }

  else
  {
    [(VOTBrailleGestureManager *)self _playBonk];
  }

  [(VOTBrailleGestureManager *)self _flashInsertedTextIfAllowed:suggestionCopy];
}

- (void)_applySuggestionToElement:(id)element direction:(int64_t)direction
{
  gestureTranslator = self->_gestureTranslator;
  elementCopy = element;
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
  _languageCodeForSpellChecking = [(VOTBrailleGestureManager *)self _languageCodeForSpellChecking];
  [(VOTBrailleGestureSpellingSuggestionHandler *)spellingSuggestionHandler selectNextSpellingSuggestionInDirection:direction responder:elementCopy languageCode:_languageCodeForSpellChecking];

  currentSpellingSuggestion = [(VOTBrailleGestureSpellingSuggestionHandler *)self->_spellingSuggestionHandler currentSpellingSuggestion];
  [(VOTBrailleGestureManager *)self _outputChosenSuggestion:currentSpellingSuggestion];
  v13 = VOTLogBrailleGestures();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = 138412290;
    v15 = currentSpellingSuggestion;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Spelling suggestion suggested: %@", &v14, 0xCu);
  }
}

- (void)applyNextSuggestionToElement:(id)element
{
  elementCopy = element;
  if ([(VOTBrailleGestureManager *)self _requiresCandidateSelection])
  {
    [(VOTBrailleGestureManager *)self _applyNextCandidate];
  }

  else
  {
    [(VOTBrailleGestureManager *)self _applySuggestionToElement:elementCopy direction:1];
  }
}

- (void)applyPreviousSuggestionToElement:(id)element
{
  elementCopy = element;
  if ([(VOTBrailleGestureManager *)self _requiresCandidateSelection])
  {
    [(VOTBrailleGestureManager *)self _applyPreviousCandidate];
  }

  else
  {
    [(VOTBrailleGestureManager *)self _applySuggestionToElement:elementCopy direction:2];
  }
}

- (BOOL)performCustomBackspace
{
  leftSideInput = [(VOTBrailleGestureManager *)self leftSideInput];

  if (leftSideInput)
  {
    leftSideInput2 = [(VOTBrailleGestureManager *)self leftSideInput];
    [(VOTBrailleGestureManager *)self setLeftSideInput:0];
    if (!leftSideInput2)
    {
      goto LABEL_18;
    }

LABEL_6:
    _isTypingModeSingleHandVariant = [(VOTBrailleGestureManager *)self _isTypingModeSingleHandVariant];
    if (_isTypingModeSingleHandVariant)
    {
      v8 = [(VOTBrailleGestureManager *)self _spokenStringForPrintBraille:leftSideInput2 useLongForm:1];
      [(VOTBrailleGestureManager *)self _speakText:v8 useKeyboardLanguage:0 shouldQueue:0 isInsert:0 isDelete:1 speakLiterally:0];
    }

    if ([(VOTBrailleGestureManager *)self _canUseContractedBraille]&& [(VOTBrailleGestureManager *)self _shouldUseContractedBraille]|| [(VOTBrailleGestureManager *)self _requiresLaTeXInput])
    {
      v9 = _isTypingModeSingleHandVariant ^ 1;
      currentElementAttributes = [(VOTGesturedTextInputManager *)self currentElementAttributes];
      v11 = [currentElementAttributes shouldEchoCharacter] & v9;

      if (v11 != 1)
      {
LABEL_16:
        [(VOTBrailleGestureSpellingSuggestionHandler *)self->_spellingSuggestionHandler clearSpellingSuggestions];
        [(VOTBrailleGestureCandidateManager *)self->_candidateManager deactivate];
        [(VOTBrailleGestureManager *)self _updateBrailleUI];
        LOBYTE(v12) = 1;
        goto LABEL_19;
      }

      v12 = [(VOTBrailleGestureManager *)self _spokenStringForPrintBraille:leftSideInput2 useLongForm:1];
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

  stylusInput = [(VOTBrailleGestureManager *)self stylusInput];
  v6 = [stylusInput isEqualToString:@"⠀"];

  if (v6)
  {
    leftSideInput2 = [(VOTBrailleGestureTranslator *)self->_gestureTranslator popLastBrailleCellFromBuffer];
    if (leftSideInput2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    leftSideInput2 = [(VOTBrailleGestureManager *)self stylusInput];
    [(VOTBrailleGestureManager *)self setStylusInput:@"⠀"];
    if (leftSideInput2)
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
    currentElementAttributes = [(VOTGesturedTextInputManager *)self currentElementAttributes];
    shouldEchoCharacter = [currentElementAttributes shouldEchoCharacter];

    if (shouldEchoCharacter)
    {
      [(VOTBrailleGestureManager *)self _speakText:v3 useKeyboardLanguage:0 shouldQueue:0 isInsert:0 isDelete:1 speakLiterally:0];
    }

    [(VOTBrailleGestureTranslator *)self->_gestureTranslator clearBrailleBuffer];
    delegate = [(VOTGesturedTextInputManager *)self delegate];
    [delegate gesturedTextInputManager:self accessCurrentGesturedTextInputElement:&stru_1001CB160];
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
  voiceOverTouchBrailleGestureControl = [v3 voiceOverTouchBrailleGestureControl];

  if (voiceOverTouchBrailleGestureControl)
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

- (void)eventFactoryDidBeginSplitGesture:(id)gesture
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
  selectedBrailleGesturesInputTable = [VOTSharedWorkspace selectedBrailleGesturesInputTable];
  if ([selectedBrailleGesturesInputTable supportsTranslationMode8Dot])
  {
    _deviceSupportsMoreThanFiveTouches = [(VOTBrailleGestureManager *)self _deviceSupportsMoreThanFiveTouches];
  }

  else
  {
    _deviceSupportsMoreThanFiveTouches = 0;
  }

  return _deviceSupportsMoreThanFiveTouches;
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

- (void)_appendOrientationToAnnouncement:(id)announcement
{
  announcementCopy = announcement;
  v5 = +[VOTWorkspace sharedWorkspace];
  hintsEnabled = [v5 hintsEnabled];

  [VOTSharedWorkspace selectedLanguage];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000FEDD0;
  v7 = v18[3] = &unk_1001C8FE0;
  v19 = v7;
  v8 = objc_retainBlock(v18);
  keyboardOrientation = [(VOTBrailleGestureManager *)self keyboardOrientation];
  if (keyboardOrientation <= 2)
  {
    if (keyboardOrientation == 1)
    {
      v10 = off_1001FDDD0;
      v11 = @"rotate.portrait";
      goto LABEL_11;
    }

    if (keyboardOrientation == 2)
    {
      v10 = off_1001FDDD0;
      v11 = @"rotate.portrait.upsidedown";
LABEL_11:
      v14 = sub_1000516CC(v10, v11, 0, v7);
LABEL_18:
      v17 = v14;
      [announcementCopy appendStringWithComma:v14];

      goto LABEL_19;
    }

    goto LABEL_9;
  }

  if (keyboardOrientation == 3)
  {
    v15 = sub_1000516CC(off_1001FDDD0, @"rotate.landscape.left", 0, v7);
    [announcementCopy appendStringWithComma:v15];

    if (!hintsEnabled)
    {
      goto LABEL_19;
    }

    v13 = [(VOTBrailleGestureManager *)self typingMode]== 0;
LABEL_14:
    v16 = v13;
    v14 = (v8[2])(v8, v16);
    goto LABEL_18;
  }

  if (keyboardOrientation != 4)
  {
LABEL_9:
    _AXLogWithFacility();
    goto LABEL_19;
  }

  v12 = sub_1000516CC(off_1001FDDD0, @"rotate.landscape.right", 0, v7);
  [announcementCopy appendStringWithComma:v12];

  if (hintsEnabled)
  {
    v13 = [(VOTBrailleGestureManager *)self typingMode]== 1;
    goto LABEL_14;
  }

LABEL_19:
}

- (void)_announceBrailleTypingPropertiesIncludingOrientation:(BOOL)orientation typingMode:(BOOL)mode forUnlockConfiguration:(BOOL)configuration
{
  configurationCopy = configuration;
  modeCopy = mode;
  orientationCopy = orientation;
  v22 = +[NSMutableString string];
  selectedLanguage = [VOTSharedWorkspace selectedLanguage];
  v10 = +[AXSettings sharedInstance];
  voiceOverTouchBrailleGesturesShouldUseLockedConfiguration = [v10 voiceOverTouchBrailleGesturesShouldUseLockedConfiguration];

  if ((voiceOverTouchBrailleGesturesShouldUseLockedConfiguration & 1) != 0 || configurationCopy)
  {
    if (voiceOverTouchBrailleGesturesShouldUseLockedConfiguration)
    {
      v19 = @"braille.locked.configuration";
    }

    else
    {
      v19 = @"braille.unlocked.configuration";
    }

    v20 = sub_1000516CC(off_1001FDDD0, v19, 0, selectedLanguage);
    [v22 appendStringWithComma:v20];

    if (!orientationCopy)
    {
LABEL_4:
      if (!modeCopy)
      {
        goto LABEL_11;
      }

      goto LABEL_5;
    }
  }

  else if (!orientationCopy)
  {
    goto LABEL_4;
  }

  [(VOTBrailleGestureManager *)self _appendOrientationToAnnouncement:v22];
  if (!modeCopy)
  {
    goto LABEL_11;
  }

LABEL_5:
  typingMode = [(VOTBrailleGestureManager *)self typingMode];
  v13 = @"braille.single.hand";
  if (!typingMode)
  {
    v13 = @"braille.screen.away";
  }

  if (typingMode == 1)
  {
    v14 = @"braille.table.top";
  }

  else
  {
    v14 = v13;
  }

  v15 = sub_1000516CC(off_1001FDDD0, v14, 0, selectedLanguage);
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

- (void)_updateBrailleTypingPropertiesAndDelayAnnouncement:(BOOL)announcement forUnlockConfiguration:(BOOL)configuration preferSingleHand:(BOOL)hand
{
  handCopy = hand;
  configurationCopy = configuration;
  announcementCopy = announcement;
  brailleTypingPropertiesAnnouncementTimer = [(VOTBrailleGestureManager *)self brailleTypingPropertiesAnnouncementTimer];
  [brailleTypingPropertiesAnnouncementTimer cancel];

  if ([(VOTGesturedTextInputManager *)self isActive])
  {
    v39 = configurationCopy;
    keyboardOrientation = [(VOTBrailleGestureManager *)self keyboardOrientation];
    v11 = +[AXSettings sharedInstance];
    IsPad = AXDeviceIsPad();
    voiceOverTouchBrailleGesturesShouldUseLockedConfiguration = [v11 voiceOverTouchBrailleGesturesShouldUseLockedConfiguration];
    v14 = voiceOverTouchBrailleGesturesShouldUseLockedConfiguration;
    if (voiceOverTouchBrailleGesturesShouldUseLockedConfiguration)
    {
      voiceOverTouchBrailleGesturesLockedTypingMode = [v11 voiceOverTouchBrailleGesturesLockedTypingMode];
      voiceOverTouchBrailleGesturesLockedOrientation = [v11 voiceOverTouchBrailleGesturesLockedOrientation];
      if (VOSSingleHandBSIEnabled() && handCopy)
      {
        v17 = +[AXSettings sharedInstance];
        voiceOverTouchBrailleGesturesSingleHandStyle = [v17 voiceOverTouchBrailleGesturesSingleHandStyle];

        if ((voiceOverTouchBrailleGesturesSingleHandStyle - 1) >= 3)
        {
          voiceOverTouchBrailleGesturesLockedTypingMode = 2;
        }

        else
        {
          voiceOverTouchBrailleGesturesLockedTypingMode = (voiceOverTouchBrailleGesturesSingleHandStyle + 2);
        }

        voiceOverTouchBrailleGesturesLockedOrientation = 1;
      }

LABEL_47:
      typingMode = [(VOTBrailleGestureManager *)self typingMode];
      [(VOTBrailleGestureManager *)self setTypingMode:voiceOverTouchBrailleGesturesLockedTypingMode];
      [(VOTBrailleGestureManager *)self setKeyboardOrientation:voiceOverTouchBrailleGesturesLockedOrientation];
      gestureTranslator = self->_gestureTranslator;
      v33 = sub_100051A04(voiceOverTouchBrailleGesturesLockedOrientation);
      [(VOTBrailleGestureTranslator *)gestureTranslator setTypingMode:voiceOverTouchBrailleGesturesLockedTypingMode keyboardSize:[(VOTBrailleGestureManager *)self _shouldUseEightDotBraille] shouldUseEightDotBraille:[(VOTBrailleGestureManager *)self _shouldReverseDots] shouldReverseDots:v33, v34];
      brailleGestureManagerDelegate = [(VOTBrailleGestureManager *)self brailleGestureManagerDelegate];
      [brailleGestureManagerDelegate brailleGestureManager:self setForcedOrientation:voiceOverTouchBrailleGesturesLockedOrientation shouldAnnounce:0];

      if ((v14 & 1) == 0)
      {
        if (announcementCopy)
        {
          if ([(VOTBrailleGestureManager *)self didAnnounceBrailleTypingProperties])
          {
            _AXAssert();
          }

          brailleTypingPropertiesAnnouncementTimer2 = [(VOTBrailleGestureManager *)self brailleTypingPropertiesAnnouncementTimer];

          if (!brailleTypingPropertiesAnnouncementTimer2)
          {
            v37 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
            [(VOTBrailleGestureManager *)self setBrailleTypingPropertiesAnnouncementTimer:v37];
          }

          brailleTypingPropertiesAnnouncementTimer3 = [(VOTBrailleGestureManager *)self brailleTypingPropertiesAnnouncementTimer];
          v41[0] = _NSConcreteStackBlock;
          v41[1] = 3221225472;
          v41[2] = sub_1000FF4F0;
          v41[3] = &unk_1001C89E8;
          v41[4] = self;
          v42 = v39;
          [brailleTypingPropertiesAnnouncementTimer3 afterDelay:v41 processBlock:1.0];
        }

        else
        {
          [(VOTBrailleGestureManager *)self _announceBrailleTypingPropertiesIncludingOrientation:keyboardOrientation != voiceOverTouchBrailleGesturesLockedOrientation typingMode:typingMode != voiceOverTouchBrailleGesturesLockedTypingMode forUnlockConfiguration:v39];
        }
      }

      return;
    }

    voiceOverTouchBrailleGesturesLockedOrientation = [VOTSharedWorkspace deviceOrientation];
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
        voiceOverTouchBrailleGesturesSingleHandStyle2 = [v23 voiceOverTouchBrailleGesturesSingleHandStyle];

        if ((voiceOverTouchBrailleGesturesSingleHandStyle2 - 1) >= 3)
        {
          v21 = 2;
        }

        else
        {
          v21 = (voiceOverTouchBrailleGesturesSingleHandStyle2 + 2);
        }
      }

      v25 = VOSSingleHandBSIEnabled();
      if (v19 == 1 && (v25 & 1) != 0)
      {
        voiceOverTouchBrailleGesturesLockedOrientation = 1;
        goto LABEL_34;
      }

      if ((v19 - 3) < 2)
      {
        goto LABEL_33;
      }
    }

    if (!IsPad)
    {
      if ((voiceOverTouchBrailleGesturesLockedOrientation - 3) < 2)
      {
        goto LABEL_34;
      }

      if ((keyboardOrientation - 3) > 1)
      {
        goto LABEL_18;
      }

      goto LABEL_27;
    }

    if ((v19 - 1) >= 2)
    {
      if ((voiceOverTouchBrailleGesturesLockedOrientation - 1) < 4)
      {
LABEL_34:
        v26 = keyboardOrientation - 3;
        typingMode2 = [(VOTBrailleGestureManager *)self typingMode];
        v28 = 3;
        if (keyboardOrientation == 3)
        {
          v28 = 4;
        }

        v29 = 1;
        if (typingMode2)
        {
          v29 = v21;
          v28 = keyboardOrientation;
        }

        if (v21 != 1)
        {
          v29 = v21;
          v28 = keyboardOrientation;
        }

        if (keyboardOrientation != voiceOverTouchBrailleGesturesLockedOrientation)
        {
          v29 = v21;
          v28 = voiceOverTouchBrailleGesturesLockedOrientation;
        }

        v30 = v26 == 1;
        if (v26 <= 1)
        {
          voiceOverTouchBrailleGesturesLockedTypingMode = v29;
        }

        else
        {
          voiceOverTouchBrailleGesturesLockedTypingMode = v21;
        }

        if (v30 || keyboardOrientation == 3)
        {
          voiceOverTouchBrailleGesturesLockedOrientation = v28;
        }

        goto LABEL_47;
      }

      if ((keyboardOrientation - 1) >= 4)
      {
LABEL_18:
        voiceOverTouchBrailleGesturesLockedOrientation = 4;
        goto LABEL_34;
      }

LABEL_27:
      voiceOverTouchBrailleGesturesLockedOrientation = keyboardOrientation;
      goto LABEL_34;
    }

LABEL_33:
    voiceOverTouchBrailleGesturesLockedOrientation = v19;
    goto LABEL_34;
  }

  [(VOTBrailleGestureManager *)self setKeyboardOrientation:0];
  brailleGestureManagerDelegate2 = [(VOTBrailleGestureManager *)self brailleGestureManagerDelegate];
  [brailleGestureManagerDelegate2 brailleGestureManager:self unsetForcedOrientationAndAnnounce:{-[VOTBrailleGestureManager didAnnounceBrailleTypingProperties](self, "didAnnounceBrailleTypingProperties")}];
}

- (void)_updateShouldUseContractedBraille
{
  if ([(VOTBrailleGestureManager *)self _hasContractedBraillePreference])
  {
    _canUseContractedBraille = [(VOTBrailleGestureManager *)self _canUseContractedBraille];
  }

  else
  {
    _canUseContractedBraille = 0;
  }

  gestureTranslator = self->_gestureTranslator;

  [(VOTBrailleGestureTranslator *)gestureTranslator setShouldUseContractedBraille:_canUseContractedBraille];
}

- (BOOL)_canUseContractedBraille
{
  currentElementAttributes = [(VOTGesturedTextInputManager *)self currentElementAttributes];
  acceptsContractedBraille = [currentElementAttributes acceptsContractedBraille];

  return acceptsContractedBraille;
}

- (BOOL)_hasContractedBraillePreference
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 voiceOverTouchBrailleGesturesInputMode] == 3;

  return v3;
}

- (BOOL)_shouldUseContractedBraille
{
  selectedBrailleGesturesInputTable = [VOTSharedWorkspace selectedBrailleGesturesInputTable];
  if ([selectedBrailleGesturesInputTable supportsTranslationModeContracted])
  {
    _requiresCandidateSelection = 1;
  }

  else
  {
    _requiresCandidateSelection = [(VOTBrailleGestureManager *)self _requiresCandidateSelection];
  }

  return _requiresCandidateSelection;
}

- (BOOL)_requiresLaTeXInput
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  delegate = [(VOTGesturedTextInputManager *)self delegate];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000FF714;
  v5[3] = &unk_1001C8C20;
  v5[4] = &v6;
  [delegate gesturedTextInputManager:selfCopy accessCurrentGesturedTextInputElement:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (BOOL)_requiresCandidateSelection
{
  _languageCodeForSpellChecking = [(VOTBrailleGestureManager *)self _languageCodeForSpellChecking];
  v3 = [_languageCodeForSpellChecking hasPrefix:@"ja"];

  return v3;
}

- (BOOL)_patternIncludesEveryFinger:(id)finger
{
  fingerCopy = finger;
  if (-[VOTBrailleGestureManager _shouldUseEightDotBraille](self, "_shouldUseEightDotBraille") && ([fingerCopy isEqualToString:@"⣿"] & 1) != 0)
  {
    v5 = 1;
  }

  else if ([(VOTBrailleGestureManager *)self _shouldUseEightDotBraille])
  {
    v5 = 0;
  }

  else
  {
    v5 = [fingerCopy isEqualToString:@"⠿"];
  }

  return v5;
}

- (BOOL)_isCalibrationStartPattern:(id)pattern
{
  patternCopy = pattern;
  if ([(VOTBrailleGestureManager *)self _deviceSupportsMoreThanFiveTouches])
  {
    v5 = [(VOTBrailleGestureManager *)self _patternIncludesEveryFinger:patternCopy];
  }

  else
  {
    v5 = [patternCopy isEqualToString:@"⠸"];
  }

  v6 = v5;

  return v6;
}

- (BOOL)_isCalibrationEndPattern:(id)pattern
{
  patternCopy = pattern;
  if ([(VOTBrailleGestureManager *)self _deviceSupportsMoreThanFiveTouches])
  {
    v5 = [(VOTBrailleGestureManager *)self _patternIncludesEveryFinger:patternCopy];
  }

  else
  {
    v5 = [patternCopy isEqualToString:@"⠇"];
  }

  v6 = v5;

  return v6;
}

- (id)_touchPointsForCalibrationGivenFirstPoints:(id)points lastPoints:(id)lastPoints
{
  pointsCopy = points;
  lastPointsCopy = lastPoints;
  if ([(VOTBrailleGestureManager *)self _isTypingModeInputColumnsVariant]|| [(VOTBrailleGestureManager *)self _deviceSupportsMoreThanFiveTouches])
  {
    v8 = lastPointsCopy;
  }

  else
  {
    v8 = [pointsCopy arrayByAddingObjectsFromArray:lastPointsCopy];
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
      lastPrintBrailleCharacter = [(VOTBrailleGestureManager *)self lastPrintBrailleCharacter];
      [(VOTBrailleGestureManager *)self _updateDotNumberCirclesForPrintBraille:lastPrintBrailleCharacter];
    }
  }
}

- (void)_endExploringDotPatterns
{
  [(VOTBrailleGestureManager *)self setExploring:0];
  [(VOTBrailleGestureManager *)self setDidAnnounceExplorationMode:0];

  [(VOTBrailleGestureManager *)self _cancelWarningTones];
}

- (void)_calibrateWithTouchPoints:(id)points silently:(BOOL)silently
{
  pointsCopy = points;
  if (![(VOTBrailleGestureManager *)self _isTypingModeStylusVariant])
  {
    [(VOTBrailleGestureTranslator *)self->_gestureTranslator calibrateWithTouchPoints:pointsCopy];
    if (!silently)
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
  speakingDelayTimer = [(VOTBrailleGestureManager *)self speakingDelayTimer];

  if (!speakingDelayTimer)
  {
    v4 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    [(VOTBrailleGestureManager *)self setSpeakingDelayTimer:v4];

    speakingDelayTimer2 = [(VOTBrailleGestureManager *)self speakingDelayTimer];
    [speakingDelayTimer2 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
  }

  speakingDelayTimer3 = [(VOTBrailleGestureManager *)self speakingDelayTimer];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000FFC48;
  v7[3] = &unk_1001C76E8;
  v7[4] = self;
  [speakingDelayTimer3 afterDelay:v7 processBlock:0.3];
}

- (void)_enumerateDotNumbersForPrintBraille:(id)braille usingBlock:(id)block
{
  brailleCopy = braille;
  blockCopy = block;
  if ([brailleCopy length] >= 2)
  {
    _AXAssert();
  }

  if ([brailleCopy length] == 1)
  {
    v7 = [brailleCopy characterAtIndex:0];
    if ([(VOTBrailleGestureManager *)self _numberOfDots])
    {
      v8 = 1;
      do
      {
        blockCopy[2](blockCopy, v8, (v7 >> (v8 - 1)) & 1);
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
      blockCopy[2](blockCopy, v9++, 0);
    }

    while (v9 <= [(VOTBrailleGestureManager *)self _numberOfDots]);
  }
}

- (id)_spokenStringForPrintBraille:(id)braille useLongForm:(BOOL)form
{
  formCopy = form;
  brailleCopy = braille;
  if ([brailleCopy length] >= 2)
  {
    _AXAssert();
  }

  [NSMutableArray arrayWithCapacity:[(VOTBrailleGestureManager *)self _numberOfDots]];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100100084;
  v7 = v17 = &unk_1001CB188;
  v18 = v7;
  [(VOTBrailleGestureManager *)self _enumerateDotNumbersForPrintBraille:brailleCopy usingBlock:&v14];

  if ([v7 count])
  {
    v8 = sub_1000511CC(off_1001FDDD0, @"braille.dot.pattern.separator", 0);
    v9 = [v7 componentsJoinedByString:v8];

    if (formCopy)
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
  calibrationStartTouchPoints = [(VOTBrailleGestureManager *)self calibrationStartTouchPoints];

  if (!calibrationStartTouchPoints)
  {
    _AXAssert();
  }

  calibrationStartTouchPoints2 = [(VOTBrailleGestureManager *)self calibrationStartTouchPoints];
  [(VOTBrailleGestureManager *)self _inputBrailleFromTouchPoints:calibrationStartTouchPoints2];

  [(VOTBrailleGestureManager *)self setCalibrationStartTouchPoints:0];
}

- (BOOL)_handleAllFingersLifted
{
  calibrationStartTouchPoints = [(VOTBrailleGestureManager *)self calibrationStartTouchPoints];

  if (calibrationStartTouchPoints)
  {
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_handleCalibrationTimeout" object:0];
  }

  [(VOTBrailleGestureManager *)self setSplitting:0];
  if (![(VOTBrailleGestureManager *)self isExploring]&& ![(VOTBrailleGestureManager *)self didMoveFingersTooFarForInput]&& ![(VOTBrailleGestureManager *)self didEnterInvalidGesture])
  {
    allValues = [(NSMutableDictionary *)self->_allTouchLocationsByIdentifier allValues];
    v8 = [(VOTBrailleGestureManager *)self _printBrailleForTouchPoints:allValues];
    if (calibrationStartTouchPoints)
    {
      v9 = [(VOTBrailleGestureManager *)self _isCalibrationEndPattern:v8];
      calibrationStartTouchPoints2 = [(VOTBrailleGestureManager *)self calibrationStartTouchPoints];
      v11 = calibrationStartTouchPoints2;
      if (v9)
      {
        v12 = [(VOTBrailleGestureManager *)self _touchPointsForCalibrationGivenFirstPoints:calibrationStartTouchPoints2 lastPoints:allValues];
        [(VOTBrailleGestureManager *)self _calibrateWithTouchPoints:v12];
      }

      else
      {
        v15[0] = calibrationStartTouchPoints2;
        v15[1] = allValues;
        v12 = [NSArray arrayWithObjects:v15 count:2];
        [(VOTBrailleGestureManager *)self _inputBrailleFromSeriesOfTouchPoints:v12];
      }
    }

    else
    {
      if ([(VOTBrailleGestureManager *)self _isCalibrationStartPattern:v8])
      {
        [(VOTBrailleGestureManager *)self setCalibrationStartTouchPoints:allValues];
        _deviceSupportsMoreThanFiveTouches = [(VOTBrailleGestureManager *)self _deviceSupportsMoreThanFiveTouches];
        v14 = 0.5;
        if (_deviceSupportsMoreThanFiveTouches)
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
        [(VOTBrailleGestureManager *)self _inputBrailleFromTouchPoints:allValues];
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

- (void)_cleanUpTouchesIncludingCalibrationStartPoints:(BOOL)points
{
  pointsCopy = points;
  [(NSMutableDictionary *)self->_allTouchLocationsByIdentifier removeAllObjects];
  [(NSMutableDictionary *)self->_firstTouchLocationsByIdentifier removeAllObjects];
  [(VOTBrailleGestureManager *)self setDidMoveFingersTooFarForInput:0];
  [(VOTBrailleGestureManager *)self setDidEnterInvalidGesture:0];
  [(VOTBrailleGestureManager *)self setLastPrintBrailleCharacter:0];
  [(VOTBrailleGestureManager *)self _updateDotNumberCirclesForPrintBraille:0];
  [(VOTBrailleGestureManager *)self _endExploringDotPatterns];
  speakingDelayTimer = [(VOTBrailleGestureManager *)self speakingDelayTimer];
  [speakingDelayTimer cancel];

  if (pointsCopy)
  {

    [(VOTBrailleGestureManager *)self setCalibrationStartTouchPoints:0];
  }
}

- (void)_handleFingersOnScreen:(id)screen didAddOrRemoveFingers:(BOOL)fingers
{
  fingersCopy = fingers;
  screenCopy = screen;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = [screenCopy countByEnumeratingWithState:&v33 objects:v38 count:16];
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
          objc_enumerationMutation(screenCopy);
        }

        v10 = *(*(&v33 + 1) + 8 * i);
        v11 = [screenCopy objectForKeyedSubscript:v10];
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
          v17 = [screenCopy objectForKeyedSubscript:v10];
          [(NSMutableDictionary *)self->_firstTouchLocationsByIdentifier setObject:v17 forKeyedSubscript:v10];
        }
      }

      v7 = [screenCopy countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v7);
  }

  _newBrailleInput = [(VOTBrailleGestureManager *)self _newBrailleInput];
  allValues = [screenCopy allValues];
  v37 = allValues;
  v20 = [NSArray arrayWithObjects:&v37 count:1];
  [_newBrailleInput setSeriesOfTouchPoints:v20];

  gestureTranslator = self->_gestureTranslator;
  v32 = 0;
  v22 = [(VOTBrailleGestureTranslator *)gestureTranslator printBrailleForInput:_newBrailleInput error:&v32];
  v23 = v32;
  domain = [v23 domain];
  if ([domain isEqualToString:@"VOTBrailleGestureErrorDomain"])
  {
    code = [v23 code];

    if (code == 1 && ![(VOTBrailleGestureManager *)self didEnterInvalidGesture])
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

  lastPrintBrailleCharacter = [(VOTBrailleGestureManager *)self lastPrintBrailleCharacter];
  v30 = [lastPrintBrailleCharacter isEqualToString:v22];

  if ((v30 & 1) == 0)
  {
    [(VOTBrailleGestureManager *)self setLastPrintBrailleCharacter:v22];
    if ([(VOTBrailleGestureManager *)self isExploring])
    {
      [(VOTBrailleGestureManager *)self _speakPrintBrailleForExploration];
    }

    else if (!fingersCopy)
    {
      [(VOTBrailleGestureManager *)self _updateDotNumberCirclesForPrintBraille:0];
      [(VOTBrailleGestureManager *)self setShouldUpdateDotPositions:0];
    }

    if ([(VOTBrailleGestureManager *)self shouldUpdateDotPositions])
    {
      [(VOTBrailleGestureManager *)self _updateDotNumberCirclesForPrintBraille:v22];
    }
  }

  if (fingersCopy && ![(VOTBrailleGestureManager *)self isSplitting])
  {
    [(VOTBrailleGestureManager *)self _scheduleExploringModeIfNeeded];
  }
}

- (id)_newBrailleInput
{
  v3 = objc_alloc_init(VOTBrailleGestureInput);
  _languageCodeForSpeakingAndBrailleTranslation = [(VOTBrailleGestureManager *)self _languageCodeForSpeakingAndBrailleTranslation];
  [(VOTBrailleGestureInput *)v3 setLanguageCode:_languageCodeForSpeakingAndBrailleTranslation];

  return v3;
}

- (void)_updateDotNumberCirclesForPrintBraille:(id)braille
{
  brailleCopy = braille;
  +[NSMutableArray array];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001009A0;
  v8 = v7[3] = &unk_1001CB188;
  v5 = v8;
  [(VOTBrailleGestureManager *)self _enumerateDotNumbersForPrintBraille:brailleCopy usingBlock:v7];

  v6 = +[VOTDisplayManager displayManager];
  [v6 highlightBrailleDots:v5];
}

- (void)_updateDotNumbersWithReversed:(BOOL)reversed
{
  reversedCopy = reversed;
  v4 = +[VOTDisplayManager displayManager];
  [v4 displayBrailleDotNumbersWithReversed:reversedCopy];
}

- (void)_scheduleExploringModeIfNeeded
{
  if (![(VOTBrailleGestureManager *)self isExploring])
  {
    warningTonesTimer = [(VOTBrailleGestureManager *)self warningTonesTimer];

    if (!warningTonesTimer)
    {
      v4 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
      [(VOTBrailleGestureManager *)self setWarningTonesTimer:v4];

      warningTonesTimer2 = [(VOTBrailleGestureManager *)self warningTonesTimer];
      [warningTonesTimer2 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    }

    warningTonesTimer3 = [(VOTBrailleGestureManager *)self warningTonesTimer];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100100B58;
    v7[3] = &unk_1001C76E8;
    v7[4] = self;
    [warningTonesTimer3 afterDelay:v7 processBlock:1.0];
  }
}

- (BOOL)_isNextBrailleUsageEvent:(id)event
{
  command = [event command];
  v4 = [command isEqualToString:kVOTEventCommandBSINextBrailleMode];

  return v4;
}

- (BOOL)_isPreviousBrailleUsageEvent:(id)event
{
  command = [event command];
  v4 = [command isEqualToString:kVOTEventCommandBSIPreviousBrailleMode];

  return v4;
}

- (BOOL)_isTranslateImmediatelyEvent:(id)event
{
  command = [event command];
  v4 = [command isEqualToString:kVOTEventCommandBSITranslateImmediately];

  return v4;
}

- (BOOL)_isToggleLockedConfigurationEvent:(id)event
{
  command = [event command];
  v4 = [command isEqualToString:kVOTEventCommandBSIOrientationLock];

  return v4;
}

- (BOOL)_isCarriageReturnSwipeEvent:(id)event
{
  command = [event command];
  v4 = [command isEqualToString:kVOTEventCommandBSIQuickAction];

  return v4;
}

- (BOOL)_isSelectEvent:(id)event
{
  eventCopy = event;
  command = [eventCopy command];
  if ([command isEqualToString:kVOTEventCommandSelectLeft])
  {
    v5 = 1;
  }

  else
  {
    command2 = [eventCopy command];
    v5 = [command2 isEqualToString:kVOTEventCommandSelectRight];
  }

  return v5;
}

- (BOOL)_isAdjustTextSegmentEvent:(id)event
{
  eventCopy = event;
  command = [eventCopy command];
  if ([command isEqualToString:kVOTEventCommandNextTextSegment])
  {
    v5 = 1;
  }

  else
  {
    command2 = [eventCopy command];
    v5 = [command2 isEqualToString:kVOTEventCommandPreviousTextSegment];
  }

  return v5;
}

- (BOOL)_isAdjustTextSegmentTypeEvent:(id)event
{
  eventCopy = event;
  command = [eventCopy command];
  if ([command isEqualToString:kVOTEventCommandNextTextSegmentType])
  {
    v5 = 1;
  }

  else
  {
    command2 = [eventCopy command];
    v5 = [command2 isEqualToString:kVOTEventCommandPreviousTextSegmentType];
  }

  return v5;
}

- (void)_inputBrailleFromTouchPoints:(id)points
{
  if (points)
  {
    pointsCopy = points;
    pointsCopy2 = points;
    v5 = [NSArray arrayWithObjects:&pointsCopy count:1];

    [(VOTBrailleGestureManager *)self _inputBrailleFromSeriesOfTouchPoints:v5, pointsCopy];
  }
}

- (void)_inputBrailleFromSeriesOfTouchPoints:(id)points
{
  pointsCopy = points;
  if ([(VOTBrailleGestureManager *)self isExploring])
  {
    _AXAssert();
  }

  [(VOTBrailleGestureManager *)self _handleTouchPoints:pointsCopy];
}

- (id)_printBrailleForTouchPoints:(id)points
{
  pointsCopy = points;
  _newBrailleInput = [(VOTBrailleGestureManager *)self _newBrailleInput];
  v9 = pointsCopy;
  v6 = [NSArray arrayWithObjects:&v9 count:1];
  [_newBrailleInput setSeriesOfTouchPoints:v6];

  v7 = [(VOTBrailleGestureTranslator *)self->_gestureTranslator printBrailleForInput:_newBrailleInput error:0];

  return v7;
}

- (void)_handleChangeUsage:(BOOL)usage
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
      lastAction = [v7 lastAction];
      [lastAction setObject:&off_1001D9970 forVariant:32];
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
  selectedBrailleGesturesInputTable = [VOTSharedWorkspace selectedBrailleGesturesInputTable];
  language = [selectedBrailleGesturesInputTable language];

  v4 = [NSLocale localeWithLocaleIdentifier:language];
  languageCode = [v4 languageCode];

  return languageCode;
}

- (id)_languageCodeForSpellChecking
{
  _languageCodeForBrailleTable = [(VOTBrailleGestureManager *)self _languageCodeForBrailleTable];
  v3 = [_languageCodeForBrailleTable stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

  return v3;
}

- (id)_languageCodeForSpeakingAndBrailleTranslation
{
  _languageCodeForBrailleTable = [(VOTBrailleGestureManager *)self _languageCodeForBrailleTable];
  v3 = VOTLogBrailleGestures();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v14 = 138543362;
    v15 = _languageCodeForBrailleTable;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Language code from keyboard in app is %{public}@", &v14, 0xCu);
  }

  v4 = AXCRemapLanguageCodeToFallbackIfNeccessary();
  systemSpokenLanguage = AXLanguageConvertToCanonicalForm();

  v6 = AXRetrieveSupportedAccessibilityLanguages();
  v7 = v6;
  if (!v6 || !systemSpokenLanguage)
  {
    goto LABEL_8;
  }

  if ([v6 containsObject:systemSpokenLanguage])
  {
    goto LABEL_17;
  }

  v8 = [(__CFString *)systemSpokenLanguage rangeOfString:@"-"];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL || (-[__CFString substringToIndex:](systemSpokenLanguage, "substringToIndex:", v8), v9 = objc_claimAutoreleasedReturnValue(), systemSpokenLanguage, systemSpokenLanguage = v9, ![v7 containsObject:v9]))
  {
  }

  else
  {
LABEL_8:
    if (systemSpokenLanguage)
    {
      goto LABEL_17;
    }
  }

  v10 = +[VOTWorkspace sharedWorkspace];
  systemSpokenLanguage = [v10 systemSpokenLanguage];

  v11 = VOTLogBrailleGestures();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = systemSpokenLanguage;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Language code from workspace is %{public}@", &v14, 0xCu);
  }

  if (!systemSpokenLanguage)
  {
    v12 = VOTLogBrailleGestures();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Had to fall back to using English.", &v14, 2u);
    }

    systemSpokenLanguage = @"en";
  }

LABEL_17:

  return systemSpokenLanguage;
}

- (BOOL)_handleCarriageReturnSwipe
{
  delegate = [(VOTGesturedTextInputManager *)self delegate];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10010160C;
  v5[3] = &unk_1001CB1B0;
  v5[4] = self;
  [delegate gesturedTextInputManager:self accessCurrentGesturedTextInputElement:v5];

  return 1;
}

- (void)handleBrailleGestureWithLeftPatternDictionary:(id)dictionary rightPatternDictionary:(id)patternDictionary
{
  patternDictionaryCopy = patternDictionary;
  v10 = [VOTBrailleGestureHalfPattern halfPatternWithDictionaryRepresentation:dictionary];
  v7 = [VOTBrailleGestureHalfPattern halfPatternWithDictionaryRepresentation:patternDictionaryCopy];

  v8 = [[VOTBrailleGesturePattern alloc] initWithLeftDots:v10 rightDots:v7];
  v9 = [(VOTBrailleGestureTranslator *)self->_gestureTranslator printBrailleForGesturePattern:v8];
  [(VOTBrailleGestureManager *)self _handlePrintBraille:v9];
}

- (void)_handlePrintBraille:(id)braille
{
  brailleCopy = braille;
  if ((AXDeviceSupportsManyTouches() & 1) != 0 || ![(VOTBrailleGestureManager *)self overridePrintBrailleWithAllSixDots])
  {
    v4 = brailleCopy;
  }

  else
  {

    v4 = @"⠿";
  }

  v8 = v4;
  [(VOTBrailleGestureManager *)self _proceedAcceptanceTestWithEnteredCell:?];
  usage = [(VOTBrailleGestureManager *)self usage];
  if (usage == 1)
  {
    usage = [(VOTBrailleGestureManager *)self _issueCommands:v8];
  }

  else
  {
    v6 = v8;
    if (usage)
    {
      goto LABEL_10;
    }

    usage = [(VOTBrailleGestureManager *)self _typePrintBraille:v8];
  }

  v6 = v8;
LABEL_10:

  _objc_release_x1(usage, v6);
}

- (void)_issueCommands:(id)commands
{
  commandsCopy = commands;
  if ([commandsCopy length])
  {
    v4 = 0;
    do
    {
      v5 = [commandsCopy substringWithRange:{v4, 1}];
      [(VOTBrailleGestureManager *)self _issueSingleCommand:v5];

      ++v4;
    }

    while (v4 < [commandsCopy length]);
  }
}

- (void)_issueSingleCommand:(id)command
{
  commandCopy = command;
  v4 = +[VOTBrailleManager manager];
  [v4 handleBSICommandModeInput:commandCopy];
}

- (void)_typePrintBraille:(id)braille
{
  brailleCopy = braille;
  mode = [(VOTBrailleGestureManager *)self mode];
  currentElementAttributes = [(VOTGesturedTextInputManager *)self currentElementAttributes];
  isActiveResponder = [currentElementAttributes isActiveResponder];

  currentElementAttributes2 = [(VOTGesturedTextInputManager *)self currentElementAttributes];
  shouldPlayKeyboardSecureClickSound = [currentElementAttributes2 shouldPlayKeyboardSecureClickSound];

  v33 = isActiveResponder;
  if (mode - 5 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v10 = ([(VOTBrailleGestureManager *)self _canUseContractedBraille]| isActiveResponder) ^ 1 | shouldPlayKeyboardSecureClickSound;
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  v11 = [(VOTBrailleGestureTranslator *)self->_gestureTranslator translatedTextForPrintBraille:brailleCopy mode:mode];
  gestureTranslator = self->_gestureTranslator;
  _languageCodeForSpeakingAndBrailleTranslation = [(VOTBrailleGestureManager *)self _languageCodeForSpeakingAndBrailleTranslation];
  [(VOTBrailleGestureTranslator *)gestureTranslator addPrintBrailleToBuffer:brailleCopy language:_languageCodeForSpeakingAndBrailleTranslation];

  if (shouldPlayKeyboardSecureClickSound)
  {
    [(VOTBrailleGestureTranslator *)self->_gestureTranslator markBufferSecure];
  }

  currentString = [(VOTGesturedTextInputManager *)self currentString];
  v15 = [(VOTBrailleGestureTranslator *)self->_gestureTranslator translateExistingInputWithMode:mode];
  v16 = [currentString commonPrefixWithString:v11 options:0];
  v17 = [v15 substringFromIndex:{objc_msgSend(v16, "length")}];

  v18 = VOTLogBrailleGestures();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138478595;
    v35 = currentString;
    v36 = 2113;
    v37 = brailleCopy;
    v38 = 2113;
    v39 = v11;
    v40 = 2113;
    v41 = v17;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "existingText = %{private}@, printBraille = %{private}@, translatedText = %{private}@, textToBeInserted = %{private}@", buf, 0x2Au);
  }

  if (mode == 4)
  {
    v19 = brailleCopy;
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

  if (currentString == v11 || [currentString isEqualToString:v11])
  {
    currentElementAttributes3 = [(VOTGesturedTextInputManager *)self currentElementAttributes];
    if (![currentElementAttributes3 shouldEchoCharacter])
    {
LABEL_29:

      goto LABEL_30;
    }

    v21 = [brailleCopy length];

    if (v21)
    {
      v22 = +[AXSettings sharedInstance];
      voiceOverBrailleGesturesTypingFeedback = [v22 voiceOverBrailleGesturesTypingFeedback];

      if ((voiceOverBrailleGesturesTypingFeedback & 0xFFFFFFFFFFFFFFFDLL) == 0)
      {
        v24 = +[NSString stringWithUnichar:](NSString, "stringWithUnichar:", [brailleCopy characterAtIndex:{objc_msgSend(brailleCopy, "rangeOfComposedCharacterSequenceAtIndex:", objc_msgSend(brailleCopy, "length") - 1)}]);
        currentElementAttributes3 = [(VOTBrailleGestureManager *)self _spokenStringForPrintBraille:v24 useLongForm:1];

        v25 = VOTLogBrailleGestures();
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_27;
        }

LABEL_26:
        sub_100130DA8();
LABEL_27:

        currentElementAttributes4 = [(VOTGesturedTextInputManager *)self currentElementAttributes];
        shouldPlayKeyboardSecureClickSound2 = [currentElementAttributes4 shouldPlayKeyboardSecureClickSound];

        if ((shouldPlayKeyboardSecureClickSound2 & 1) == 0)
        {
          [(VOTBrailleGestureManager *)self _speakText:currentElementAttributes3 useKeyboardLanguage:v33 shouldQueue:0 isInsert:1 isDelete:0 speakLiterally:0];
        }

        goto LABEL_29;
      }
    }
  }

  else
  {
    v26 = +[AXSettings sharedInstance];
    voiceOverBrailleGesturesTypingFeedback2 = [v26 voiceOverBrailleGesturesTypingFeedback];

    if (!(((voiceOverBrailleGesturesTypingFeedback2 & 0xFFFFFFFFFFFFFFFDLL) != 0) | v10 & 1))
    {
      if (mode == 4)
      {
        v30 = +[NSString stringWithUnichar:](NSString, "stringWithUnichar:", [brailleCopy characterAtIndex:{objc_msgSend(brailleCopy, "rangeOfComposedCharacterSequenceAtIndex:", objc_msgSend(brailleCopy, "length") - 1)}]);
        currentElementAttributes3 = [(VOTBrailleGestureManager *)self _spokenStringForPrintBraille:v30 useLongForm:1];

        v25 = VOTLogBrailleGestures();
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      if (mode == 3)
      {
        currentElementAttributes5 = [(VOTGesturedTextInputManager *)self currentElementAttributes];
        shouldPlayKeyboardSecureClickSound3 = [currentElementAttributes5 shouldPlayKeyboardSecureClickSound];

        if ((shouldPlayKeyboardSecureClickSound3 & 1) == 0)
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

- (void)_handleTouchPoints:(id)points
{
  pointsCopy = points;
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_handleTouchPoints:" object:pointsCopy];
  _newBrailleInput = [(VOTBrailleGestureManager *)self _newBrailleInput];
  [_newBrailleInput setSeriesOfTouchPoints:pointsCopy];
  v6 = +[AXSettings sharedInstance];
  voiceOverTouchBrailleGesturesLearnsDotPositions = [v6 voiceOverTouchBrailleGesturesLearnsDotPositions];

  v8 = ![(VOTBrailleGestureManager *)self _isTypingModeStylusVariant];
  gestureTranslator = self->_gestureTranslator;
  v38 = 0;
  v10 = [(VOTBrailleGestureTranslator *)gestureTranslator printBrailleForAllTouchPointsInInput:_newBrailleInput shouldLearn:v8 & voiceOverTouchBrailleGesturesLearnsDotPositions error:&v38];
  v11 = v38;
  if (v10 && [v10 length])
  {
    if ([(VOTBrailleGestureManager *)self _isTypingModeInputColumnsVariant])
    {
      leftSideInput = [(VOTBrailleGestureManager *)self leftSideInput];
      if (leftSideInput)
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
        voiceOverTouchBrailleGesutresSingleHandUsesDotNumbersFeedback = [v36 voiceOverTouchBrailleGesutresSingleHandUsesDotNumbersFeedback];

        if (!voiceOverTouchBrailleGesutresSingleHandUsesDotNumbersFeedback)
        {
          goto LABEL_33;
        }

        v29 = [(VOTBrailleGestureManager *)self _spokenStringForPrintBraille:v10 useLongForm:1];
        [(VOTBrailleGestureManager *)self _speakText:v29 useKeyboardLanguage:0 shouldQueue:0 isInsert:1 isDelete:0 speakLiterally:0];
        goto LABEL_27;
      }

      leftSideInput2 = [(VOTBrailleGestureManager *)self leftSideInput];
      v18 = [leftSideInput2 characterAtIndex:0];

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
      voiceOverBrailleGesturesTypingFeedback = [v23 voiceOverBrailleGesturesTypingFeedback];

      if ((voiceOverBrailleGesturesTypingFeedback & 0xFFFFFFFFFFFFFFFDLL) != 0)
      {
        v25 = +[AXSettings sharedInstance];
        voiceOverTouchBrailleGesutresSingleHandUsesDotNumbersFeedback2 = [v25 voiceOverTouchBrailleGesutresSingleHandUsesDotNumbersFeedback];

        if (voiceOverTouchBrailleGesutresSingleHandUsesDotNumbersFeedback2)
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
    stylusInput = [(VOTBrailleGestureManager *)self stylusInput];
    v16 = stylusInput;
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

    v31 = [stylusInput characterAtIndex:0];

    v32 = +[NSString stringWithUnichar:](NSString, "stringWithUnichar:", (([v10 characterAtIndex:0] | v31) + 10240));
    [(VOTBrailleGestureManager *)self setStylusInput:v32];

    v33 = +[AXSettings sharedInstance];
    voiceOverTouchBrailleGesutresSingleHandUsesDotNumbersFeedback3 = [v33 voiceOverTouchBrailleGesutresSingleHandUsesDotNumbersFeedback];

    if (voiceOverTouchBrailleGesutresSingleHandUsesDotNumbersFeedback3)
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

- (void)_applyCandidateInDirection:(int64_t)direction
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
    _languageCodeForSpellChecking = [(VOTBrailleGestureManager *)self _languageCodeForSpellChecking];
    [(VOTBrailleGestureCandidateManager *)candidateManager analyzeString:v5 language:_languageCodeForSpellChecking];

    goto LABEL_9;
  }

  if (direction == 2)
  {
    if ([(VOTBrailleGestureCandidateManager *)self->_candidateManager hasPreviousCandidate])
    {
      [(VOTBrailleGestureCandidateManager *)self->_candidateManager moveToPreviousCandidate];
      goto LABEL_9;
    }
  }

  else if (direction == 1 && [(VOTBrailleGestureCandidateManager *)self->_candidateManager hasNextCandidate])
  {
    [(VOTBrailleGestureCandidateManager *)self->_candidateManager moveToNextCandidate];
LABEL_9:
    currentCandidateSurfaceString = [(VOTBrailleGestureCandidateManager *)self->_candidateManager currentCandidateSurfaceString];
    goto LABEL_13;
  }

  currentCandidateSurfaceString = 0;
LABEL_13:
  [(VOTBrailleGestureManager *)self _outputChosenCandidate:currentCandidateSurfaceString];
  v10 = VOTLogBrailleGestures();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = currentCandidateSurfaceString;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Candidate presented: %@", &v11, 0xCu);
  }
}

- (void)_insertCurrentSelectedCandidate
{
  if ([(VOTBrailleGestureCandidateManager *)self->_candidateManager isActive])
  {
    currentCandidateSurfaceString = [(VOTBrailleGestureCandidateManager *)self->_candidateManager currentCandidateSurfaceString];
    [(VOTBrailleGestureManager *)self updateWithString:currentCandidateSurfaceString];
    [(VOTBrailleGestureCandidateManager *)self->_candidateManager didSelectCurrentCandidate];
    [(VOTBrailleGestureCandidateManager *)self->_candidateManager deactivate];
  }
}

- (void)_outputChosenCandidate:(id)candidate
{
  if (candidate)
  {
    candidateCopy = candidate;
    v5 = +[AXLanguageManager sharedInstance];
    _languageCodeForSpellChecking = [(VOTBrailleGestureManager *)self _languageCodeForSpellChecking];
    v7 = [v5 descriptionOfWord:candidateCopy forLanguage:_languageCodeForSpellChecking];

    _languageCodeForSpellChecking2 = [(VOTBrailleGestureManager *)self _languageCodeForSpellChecking];
    LOWORD(v10) = 0;
    [(VOTBrailleGestureManager *)self _speakText:v7 hint:0 useKeyboardLanguage:0 shouldQueue:0 isInsert:0 isSuggestion:0 isDelete:v10 speakLiterally:_languageCodeForSpellChecking2 otherLanguage:?];
  }

  else
  {
    v9 = 0;
    [(VOTBrailleGestureManager *)self _playBonk];
  }

  [(VOTBrailleGestureManager *)self _flashInsertedTextIfAllowed:candidate];
}

- (void)_commitLoneLeftColumnIfNeeded
{
  leftSideInput = [(VOTBrailleGestureManager *)self leftSideInput];

  if (leftSideInput)
  {
    gestureTranslator = self->_gestureTranslator;
    leftSideInput2 = [(VOTBrailleGestureManager *)self leftSideInput];
    _languageCodeForSpeakingAndBrailleTranslation = [(VOTBrailleGestureManager *)self _languageCodeForSpeakingAndBrailleTranslation];
    [(VOTBrailleGestureTranslator *)gestureTranslator addPrintBrailleToBuffer:leftSideInput2 language:_languageCodeForSpeakingAndBrailleTranslation];
  }
}

- (void)_handleSingleHandCalibration
{
  allValues = [(NSMutableDictionary *)self->_allTouchLocationsByIdentifier allValues];
  [(VOTBrailleGestureManager *)self _calibrateWithTouchPoints:allValues];
  [(VOTBrailleGestureManager *)self _updateBrailleUI];
  [(VOTBrailleGestureManager *)self _cleanUpTouchesIncludingCalibrationStartPoints:0];
  [(VOTBrailleGestureManager *)self _endExploringDotPatterns];
  [(VOTBrailleGestureManager *)self setShouldIgnoreBrailleFromNextAllFingersLifted:1];
}

- (void)flushCharacterBuffer
{
  usage = [(VOTBrailleGestureManager *)self usage];
  if (![(VOTBrailleGestureManager *)self _isTypingModeInputColumnsVariant])
  {
    if (![(VOTBrailleGestureManager *)self _isTypingModeStylusVariant])
    {
      return;
    }

    stylusInput = [(VOTBrailleGestureManager *)self stylusInput];
    v7 = [stylusInput isEqualToString:@"⠀"];

    v5 = &off_1001DBB70;
    if (!v7)
    {
      goto LABEL_8;
    }

LABEL_6:
    if (usage != 1)
    {
      return;
    }

    goto LABEL_8;
  }

  leftSideInput = [(VOTBrailleGestureManager *)self leftSideInput];

  v5 = &off_1001DBB58;
  if (!leftSideInput)
  {
    goto LABEL_6;
  }

LABEL_8:

  [(VOTBrailleGestureManager *)self _handleTouchPoints:v5];
}

- (void)setLeftSideInput:(id)input
{
  objc_storeStrong(&self->_leftSideInput, input);

  [(VOTBrailleGestureManager *)self _updateDotNumbersWithReversed:input != 0];
}

- (void)_updateBrailleUI
{
  dotNumberPositions = [(VOTBrailleGestureTranslator *)self->_gestureTranslator dotNumberPositions];
  v4 = VOTLogBrailleGestures();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = dotNumberPositions;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "updating BSI UI with dot positions: %@", &v6, 0xCu);
  }

  v5 = +[VOTDisplayManager displayManager];
  [v5 updateBrailleUIWithOrientation:-[VOTBrailleGestureManager keyboardOrientation](self dotPositions:"keyboardOrientation") typingMode:{dotNumberPositions, -[VOTBrailleGestureManager typingMode](self, "typingMode")}];
}

- (void)_flashInsertedTextIfAllowed:(id)allowed
{
  allowedCopy = allowed;
  currentElementAttributes = [(VOTGesturedTextInputManager *)self currentElementAttributes];
  if ([currentElementAttributes shouldEchoCharacter])
  {
    v5 = +[AXSettings sharedInstance];
    voiceOverTouchBrailleGesturesDisplaysEnteredText = [v5 voiceOverTouchBrailleGesturesDisplaysEnteredText];

    if (!voiceOverTouchBrailleGesturesDisplaysEnteredText)
    {
      goto LABEL_5;
    }

    currentElementAttributes = +[VOTDisplayManager displayManager];
    [currentElementAttributes flashBrailleInsertedText:allowedCopy];
  }

LABEL_5:
}

- (void)_updateDotPositions
{
  gestureTranslator = self->_gestureTranslator;
  typingMode = [(VOTBrailleGestureManager *)self typingMode];
  v5 = sub_100051A04([(VOTBrailleGestureManager *)self keyboardOrientation]);
  [(VOTBrailleGestureTranslator *)gestureTranslator setTypingMode:typingMode keyboardSize:[(VOTBrailleGestureManager *)self _shouldUseEightDotBraille] shouldUseEightDotBraille:[(VOTBrailleGestureManager *)self _shouldReverseDots] shouldReverseDots:v5, v6];

  [(VOTBrailleGestureManager *)self _updateBrailleUI];
}

- (void)_speakText:(id)text useKeyboardLanguage:(BOOL)language shouldQueue:(BOOL)queue isInsert:(BOOL)insert isDelete:(BOOL)delete speakLiterally:(BOOL)literally
{
  BYTE1(v8) = literally;
  LOBYTE(v8) = delete;
  [(VOTBrailleGestureManager *)self _speakText:text hint:0 useKeyboardLanguage:language shouldQueue:queue isInsert:insert isSuggestion:0 isDelete:v8 speakLiterally:0 otherLanguage:?];
}

- (void)_speakText:(id)text hint:(id)hint useKeyboardLanguage:(BOOL)language shouldQueue:(BOOL)queue isInsert:(BOOL)insert isSuggestion:(BOOL)suggestion isDelete:(BOOL)delete speakLiterally:(BOOL)self0 otherLanguage:(id)self1
{
  LOWORD(v11) = __PAIR16__(literally, delete);
  v12 = [(VOTBrailleGestureManager *)self _outputRequestForText:text hint:hint useKeyboardLanguage:language shouldQueue:queue isInsert:insert isSuggestion:suggestion isDelete:v11 speakLiterally:otherLanguage otherLanguage:?];
  [v12 send];
}

- (id)_outputRequestForText:(id)text hint:(id)hint useKeyboardLanguage:(BOOL)language shouldQueue:(BOOL)queue isInsert:(BOOL)insert isSuggestion:(BOOL)suggestion isDelete:(BOOL)delete speakLiterally:(BOOL)self0 otherLanguage:(id)self1
{
  suggestionCopy = suggestion;
  insertCopy = insert;
  queueCopy = queue;
  textCopy = text;
  hintCopy = hint;
  otherLanguageCopy = otherLanguage;
  v19 = objc_alloc_init(VOTOutputRequest);
  v20 = v19;
  if (queueCopy)
  {
    [(VOTOutputRequest *)v19 setDoesNotInterrupt:1];
  }

  if (language)
  {
    _languageCodeForSpeakingAndBrailleTranslation = [(VOTBrailleGestureManager *)self _languageCodeForSpeakingAndBrailleTranslation];
    v22 = [(VOTOutputRequest *)v20 addString:textCopy withLanguage:_languageCodeForSpeakingAndBrailleTranslation];
  }

  else
  {
    v23 = [(VOTOutputRequest *)v20 addString:textCopy withLanguage:otherLanguageCopy];
  }

  typingPitchChangeEnabled = [VOTSharedWorkspace typingPitchChangeEnabled];
  deleteCopy2 = delete;
  if ((insertCopy || delete || suggestionCopy) && typingPitchChangeEnabled)
  {
    v49 = otherLanguageCopy;
    if (delete)
    {
      v26 = +[AXSettings sharedInstance];
      voiceOverDeletionFeedback = [v26 voiceOverDeletionFeedback];

      if (voiceOverDeletionFeedback == 1)
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
      if (!suggestionCopy)
      {
        v29 = 1.0;
      }

      if (insertCopy)
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
    outputActions = [(VOTOutputRequest *)v20 outputActions];
    v31 = [outputActions countByEnumeratingWithState:&v52 objects:v56 count:16];
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
            objc_enumerationMutation(outputActions);
          }

          v36 = *(*(&v52 + 1) + 8 * i);
          string = [v36 string];
          v38 = sub_10005088C(string);

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

          if (literally)
          {
            [v36 setObject:&__kCFBooleanTrue forVariant:28];
          }
        }

        v32 = [outputActions countByEnumeratingWithState:&v52 objects:v56 count:16];
      }

      while (v32);
    }

    v20 = v50;
    otherLanguageCopy = v49;
    deleteCopy2 = delete;
  }

  if (deleteCopy2)
  {
    v41 = +[AXSettings sharedInstance];
    voiceOverDeletionFeedback2 = [v41 voiceOverDeletionFeedback];

    if (voiceOverDeletionFeedback2 == 2)
    {
      outputActions2 = [(VOTOutputRequest *)v20 outputActions];
      [outputActions2 enumerateObjectsUsingBlock:&stru_1001CB1D0];
    }
  }

  if ([hintCopy length])
  {
    v44 = +[VOTWorkspace sharedWorkspace];
    hintsEnabled = [v44 hintsEnabled];

    if (hintsEnabled)
    {
      LODWORD(v46) = 1061997773;
      [(VOTOutputRequest *)v20 addPause:v46];
      v47 = [(VOTOutputRequest *)v20 addString:hintCopy];
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

- (void)_playWarningTones:(unint64_t)tones completion:(id)completion
{
  completionCopy = completion;
  [(VOTBrailleGestureManager *)self _playWarningTone];
  warningTonesTimer = [(VOTBrailleGestureManager *)self warningTonesTimer];

  if (warningTonesTimer)
  {
    if (![(VOTBrailleGestureManager *)self isSplitting])
    {
      if (tones < 2)
      {
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_1001031C0;
        v10[3] = &unk_1001CB218;
        v10[4] = self;
        v11 = completionCopy;
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
        tonesCopy = tones;
        v13 = completionCopy;
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
  warningTonesTimer = [(VOTBrailleGestureManager *)self warningTonesTimer];
  [warningTonesTimer cancel];

  [(VOTBrailleGestureManager *)self setWarningTonesTimer:0];
}

- (void)_announceRespectingSoundSettingsRequest:(id)request event:(id)event hint:(id)hint
{
  requestCopy = request;
  eventCopy = event;
  hintCopy = hint;
  v9 = +[AXSettings sharedInstance];
  voiceOverTouchBrailleGesturesSoundOption = [v9 voiceOverTouchBrailleGesturesSoundOption];

  if (requestCopy && (voiceOverTouchBrailleGesturesSoundOption & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    if (hintCopy && (+[AXSettings sharedInstance](AXSettings, "sharedInstance"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 voiceOverHintsEnabled], v11, (v12 & 1) != 0))
    {
      selectedLanguage2 = objc_alloc_init(VOTOutputRequest);
      selectedLanguage = [VOTSharedWorkspace selectedLanguage];
      v15 = [(VOTOutputRequest *)selectedLanguage2 addString:requestCopy withLanguage:selectedLanguage];

      LODWORD(v16) = 1061997773;
      [(VOTOutputRequest *)selectedLanguage2 addPause:v16];
      v17 = [(VOTOutputRequest *)selectedLanguage2 addString:hintCopy];
      [(VOTOutputRequest *)selectedLanguage2 send];
    }

    else
    {
      selectedLanguage2 = [VOTSharedWorkspace selectedLanguage];
      v18 = sub_1000095FC(requestCopy, 1, selectedLanguage2);
    }
  }

  if (eventCopy && voiceOverTouchBrailleGesturesSoundOption - 1 <= 1)
  {
    v19 = +[VOTOutputManager outputManager];
    [v19 sendEvent:eventCopy];
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

- (id)nameSearcherEntriesPassingSearchFrom:(id)from
{
  fromCopy = from;
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
  obj = fromCopy;
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
        name = [v10 name];
        v13 = [(VOTBrailleGestureTranslator *)gestureTranslator isExistingInputContainedIn:name withMode:[(VOTBrailleGestureManager *)self mode] isPrefix:&v27];

        name2 = [v10 name];
        localizedLowercaseString = [name2 localizedLowercaseString];
        localizedLowercaseString2 = [(__CFString *)v6 localizedLowercaseString];
        v17 = [localizedLowercaseString hasPrefix:localizedLowercaseString2];

        name3 = [v10 name];
        v19 = [name3 localizedCaseInsensitiveContainsString:v6];

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

- (void)accelerometer:(id)accelerometer didChangeDeviceOrientation:(int64_t)orientation
{
  v6 = [AXSettings sharedInstance:accelerometer];
  if ([v6 voiceOverTouchBrailleGesturesShouldUseLockedConfiguration])
  {
  }

  else
  {
    isActive = [(VOTGesturedTextInputManager *)self isActive];

    if (isActive)
    {
      [(VOTBrailleGestureManager *)self _updateBrailleTypingPropertiesAndDelayAnnouncement:0];

      [(VOTBrailleGestureManager *)self _updateBrailleUI];
    }
  }
}

- (void)_proceedAcceptanceTestWithEnteredCell:(id)cell
{
  cellCopy = cell;
  characterAcceptanceTestBrailleWithoutWhitespace = [(VOTBrailleGestureManager *)self characterAcceptanceTestBrailleWithoutWhitespace];

  if (characterAcceptanceTestBrailleWithoutWhitespace)
  {
    characterAcceptanceTestBrailleIndex = [(VOTBrailleGestureManager *)self characterAcceptanceTestBrailleIndex];
    characterAcceptanceTestBrailleWithoutWhitespace2 = [(VOTBrailleGestureManager *)self characterAcceptanceTestBrailleWithoutWhitespace];
    v7 = [characterAcceptanceTestBrailleWithoutWhitespace2 length];

    if (characterAcceptanceTestBrailleIndex < v7)
    {
      characterAcceptanceTestBrailleWithoutWhitespace3 = [(VOTBrailleGestureManager *)self characterAcceptanceTestBrailleWithoutWhitespace];
      v9 = [characterAcceptanceTestBrailleWithoutWhitespace3 substringWithRange:{-[VOTBrailleGestureManager characterAcceptanceTestBrailleIndex](self, "characterAcceptanceTestBrailleIndex"), 1}];

      if ([cellCopy isEqualToString:v9])
      {
        [(VOTBrailleGestureManager *)self setCharacterAcceptanceTestAcceptedCount:[(VOTBrailleGestureManager *)self characterAcceptanceTestAcceptedCount]+ 1];
      }

      [(VOTBrailleGestureManager *)self setCharacterAcceptanceTestBrailleIndex:[(VOTBrailleGestureManager *)self characterAcceptanceTestBrailleIndex]+ 1];
      characterAcceptanceTestBrailleIndex2 = [(VOTBrailleGestureManager *)self characterAcceptanceTestBrailleIndex];
      characterAcceptanceTestBrailleWithoutWhitespace4 = [(VOTBrailleGestureManager *)self characterAcceptanceTestBrailleWithoutWhitespace];
      v12 = [characterAcceptanceTestBrailleWithoutWhitespace4 length];

      if (characterAcceptanceTestBrailleIndex2 >= v12)
      {
        [(VOTBrailleGestureManager *)self _finishCharacterAcceptenceTest];
      }
    }
  }
}

- (void)_finishCharacterAcceptenceTest
{
  characterAcceptanceTestBrailleWithoutWhitespace = [(VOTBrailleGestureManager *)self characterAcceptanceTestBrailleWithoutWhitespace];

  if (characterAcceptanceTestBrailleWithoutWhitespace)
  {
    characterAcceptanceTestBrailleIndex = [(VOTBrailleGestureManager *)self characterAcceptanceTestBrailleIndex];
    characterAcceptanceTestBrailleWithoutWhitespace2 = [(VOTBrailleGestureManager *)self characterAcceptanceTestBrailleWithoutWhitespace];
    v6 = [characterAcceptanceTestBrailleWithoutWhitespace2 length];

    if (characterAcceptanceTestBrailleIndex < v6)
    {
      v7 = VOTLogBrailleGestures();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        characterAcceptanceTestBrailleWithoutWhitespace3 = [(VOTBrailleGestureManager *)self characterAcceptanceTestBrailleWithoutWhitespace];
        v14 = 138412290;
        v15 = characterAcceptanceTestBrailleWithoutWhitespace3;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BSI character acceptence test: didn't type the whole string %@", &v14, 0xCu);
      }
    }

    v9 = VOTLogBrailleGestures();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [NSNumber numberWithInteger:[(VOTBrailleGestureManager *)self characterAcceptanceTestAcceptedCount]];
      v11 = [NSNumber numberWithInteger:[(VOTBrailleGestureManager *)self characterAcceptanceTestBrailleIndex]];
      characterAcceptanceTestBrailleWithoutWhitespace4 = [(VOTBrailleGestureManager *)self characterAcceptanceTestBrailleWithoutWhitespace];
      v14 = 138412802;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = characterAcceptanceTestBrailleWithoutWhitespace4;
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