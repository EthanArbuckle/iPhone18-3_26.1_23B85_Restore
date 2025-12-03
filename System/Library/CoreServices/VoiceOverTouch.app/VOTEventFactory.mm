@interface VOTEventFactory
+ (void)initialize;
- (BOOL)_atvEventFilter:(id)filter;
- (BOOL)_canScribbleWithElement:(id)element;
- (BOOL)_gestureEventIsInvalid:(id)invalid;
- (BOOL)_handleAccessibilityEvent:(id)event;
- (BOOL)_handleDirectInteractionEvent:(id)event;
- (BOOL)_handleVoiceOverGreySupportAccessibilityEvent:(id)event;
- (BOOL)_iosEventFilter:(id)filter;
- (BOOL)_isEdgePressSupportedAtPosition:(CGPoint)position;
- (BOOL)_isPreviewElementSelected;
- (BOOL)_isTapAndHoldPending;
- (BOOL)_shouldAttemptTracking;
- (BOOL)_shouldUseGesturedTextInputManager;
- (BOOL)_twoFingersDistant:(id)distant;
- (BOOL)_updateFingersInSystemControlLocation:(CGPoint)location fingerCount:(unint64_t)count isLift:(BOOL)lift;
- (BOOL)_willStartEdgePanGestureForEvent:(id)event;
- (BOOL)brailleInputActive;
- (BOOL)brailleInputAllowsElementMovement;
- (BOOL)brailleInputShouldBeDeactivatedByEscape;
- (BOOL)brailleInputWantsToStayActive;
- (BOOL)handleVOSGesture:(id)gesture;
- (BOOL)handwritingInputActive;
- (BOOL)mapsExplorationInputActive;
- (BOOL)processEventAsGesturedTextInput:(id)input;
- (BOOL)registerForEvents;
- (CGPoint)_averagePointForLastDownEvent;
- (CGPoint)_convertZoomPointToDevicePoint:(CGPoint)point;
- (CGPoint)_startPointForScribbleWithElement:(id)element originalStartPoint:(CGPoint)point;
- (CGPoint)_updateTapAndHoldLocationDataForElement:(id)element;
- (CGPoint)adjustedPointForFactoryPoint:(CGPoint)point forOrientation:(int64_t)orientation;
- (CGPoint)convertDevicePointToZoomedPoint:(CGPoint)point;
- (CGPoint)fingerPosition;
- (CGRect)_convertFrame:(CGRect)frame toPortraitFromOrientation:(int64_t)orientation;
- (VOTDirectTouchManagementProtocol)directTouchManager;
- (VOTElement)currentElement;
- (VOTElementManagementProtocol)elementManager;
- (VOTEventFactory)init;
- (VOTEventFactoryCallbackProtocol)delegate;
- (VOTHandwritingManager)handwritingManager;
- (VOTRotorManagementProtocol)rotorManager;
- (double)_edgeGestureScaleFactor:(BOOL)factor;
- (double)_edgePanGestureStartThreshold;
- (id)_brailleGestureManager;
- (id)_commandResolver;
- (id)_currentGesturedTextInputManagerAndCommandResolver:(id)resolver forCommandResolver:(BOOL)commandResolver;
- (id)_handleGestureKeyboardTappingCallback:(unint64_t)callback fingerCount:(unint64_t)count isDown:(BOOL)down originalLocation:(CGPoint)location convertedLocation:(CGPoint)convertedLocation;
- (id)_mapAXEventToVOTEvent:(id)event;
- (id)_mapsExplorationGestureManager;
- (id)_preprocessEventForSimulator:(id)simulator;
- (id)_touchLocationsForGestureEvent:(id)event;
- (id)_updateEdgePanGestureForState:(int64_t)state;
- (id)tapAndHoldContextNumbers;
- (id)votActionForEdgePanGestureState:(unint64_t)state;
- (int)_registerForAXNotifications:(BOOL)notifications;
- (int)_systemControlPosition:(CGPoint)position fingerCount:(unint64_t)count;
- (int64_t)brailleInputTypingMode;
- (void)_audioAccPostEvent:(id)event withButton:(unint64_t)button timeOffset:(double)offset;
- (void)_beginAudiographScrubbingMode;
- (void)_beginNativeSliding:(id)sliding;
- (void)_cancelScribbleTapAndHoldModeTimeout;
- (void)_cancelTapAndHold:(CGPoint)hold forScribble:(BOOL)scribble;
- (void)_cancelTapAndHoldWithValue:(id)value;
- (void)_cancelUpdateScribbleTapAndHoldModeOffset;
- (void)_commitDeferredZoomInfo;
- (void)_commitDeferredZoomInfoIfAppropriate;
- (void)_contextlessTouchWithHandType:(unsigned int)type location:(CGPoint)location force:(double)force altitude:(double)altitude azimuth:(double)azimuth;
- (void)_convertZoomRecordToDeviceRecord:(id)record;
- (void)_edgePanGestureSpeakHintTimerFired;
- (void)_endAudiographScrubbingMode;
- (void)_endScribbleTapAndHoldMode;
- (void)_feedEventToHandwritingRecognition:(id)recognition;
- (void)_gestureTrackingCallbackWithFactory:(id)factory isHandlingSystemControlEvent:(BOOL)event;
- (void)_handleAudiographScrubbingPositionChanged;
- (void)_handleBSIStateChangedNotification:(id)notification;
- (void)_handleElementPreviewNotification:(id)notification;
- (void)_handleEventWithData:(id)data;
- (void)_handleIOHIDEvent:(id)event;
- (void)_handleRotorChangedNotification:(id)notification;
- (void)_handleSOSMedicalIDShown;
- (void)_liftFromTapAndHoldAndResetFingers:(BOOL)fingers;
- (void)_liftPreviewFinger;
- (void)_markTapAndHoldOffsetAsDirty;
- (void)_outputElementSummaryFired;
- (void)_playFeedbackForGestureState:(unint64_t)state gestureComplete:(BOOL)complete;
- (void)_processGestureEvent:(id)event;
- (void)_processIdle:(CGPoint)idle;
- (void)_processTapAndHoldMode:(id)mode;
- (void)_reducePreviewFingerStartingForce:(double)force;
- (void)_registerForIOHIDUsage;
- (void)_registerForZoomListener;
- (void)_resetSystemControlStatus;
- (void)_scheduleUpdateScribbleTapAndHoldModeOffset;
- (void)_sendSystemControlEvent:(id)event;
- (void)_setFingerCount:(unint64_t)count;
- (void)_simulateEdgePress;
- (void)_simulatePeekAndSwitchToTapHoldMode;
- (void)_simulatePop;
- (void)_simulatePreviewActionGesture;
- (void)_startLabelElementSoundPlay;
- (void)_startScribbleTapAndHoldModeTimeout;
- (void)_startTouchDownForTapAndHoldActionWithCenter:(id)center force:(id)force altitude:(id)altitude azimuth:(id)azimuth;
- (void)_stopMemorizingSession;
- (void)_switchToTrackingMode;
- (void)_systemControlLocationTimer;
- (void)_tapHoldFired:(id)fired;
- (void)_threeFingerHoldFired;
- (void)_touchDownAtPoint:(CGPoint)point withForce:(double)force altitude:(double)altitude azimuth:(double)azimuth;
- (void)_touchDragAtPoint:(CGPoint)point withForce:(double)force altitude:(double)altitude azimuth:(double)azimuth;
- (void)_touchLiftAtPoint:(CGPoint)point;
- (void)_transitionToGestureState:(unint64_t)state playHaptic:(BOOL)haptic;
- (void)_twoFingerHoldFired;
- (void)_updateCurrentElementOrbGestureMode;
- (void)_updateDelayUntilSpeakUnderTouch;
- (void)_updateFirstnessOfTrackingEvent:(id)event;
- (void)_updateTapSpeedFromPreferences;
- (void)_updateVoiceOverHandGesturesActionCustomizations;
- (void)_volumeChangeTimer;
- (void)_wakeTapFired;
- (void)brailleGestureManager:(id)manager setForcedOrientation:(int64_t)orientation shouldAnnounce:(BOOL)announce;
- (void)brailleGestureManager:(id)manager unsetForcedOrientationAndAnnounce:(BOOL)announce;
- (void)cancelTapAndHold:(CGPoint)hold;
- (void)currentElementDidUpdate:(id)update;
- (void)dealloc;
- (void)directInteractionElementsUpdated:(id)updated;
- (void)directInteractionModeStatus:(BOOL)status;
- (void)firstResponderDidUpdate:(id)update;
- (void)gestureFactoryDidBeginSplitGesture:(id)gesture;
- (void)gestureSplitTappingCallbackWithFactory:(id)factory;
- (void)gestureTappingCallbackWithFactory:(id)factory;
- (void)gesturedTextInputManager:(id)manager accessCurrentGesturedTextInputElement:(id)element;
- (void)gesturedTextInputManager:(id)manager moveToElementMatchingRotorType:(int64_t)type inDirection:(int64_t)direction;
- (void)nowPlayingChanged:(id)changed;
- (void)processEvent:(id)event;
- (void)screenLockOccurred;
- (void)setCurrentElement:(id)element;
- (void)setElementManager:(id)manager;
- (void)shutdown;
- (void)startTapAndHoldMode:(BOOL)mode;
- (void)unregisterForEvents;
- (void)updateOrientation;
@end

@implementation VOTEventFactory

- (VOTHandwritingManager)handwritingManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C4254;
  block[3] = &unk_1001C76E8;
  block[4] = self;
  if (qword_1001FED90 != -1)
  {
    dispatch_once(&qword_1001FED90, block);
  }

  return qword_1001FED88;
}

- (BOOL)handwritingInputActive
{
  handwritingManager = [(VOTEventFactory *)self handwritingManager];
  isActive = [handwritingManager isActive];

  return isActive;
}

- (id)_brailleGestureManager
{
  brailleGestureManager = self->_brailleGestureManager;
  if (!brailleGestureManager)
  {
    v4 = objc_alloc_init(VOTBrailleGestureManager);
    v5 = self->_brailleGestureManager;
    self->_brailleGestureManager = v4;

    [(VOTGesturedTextInputManager *)self->_brailleGestureManager setDelegate:self];
    [(VOTBrailleGestureManager *)self->_brailleGestureManager setBrailleGestureManagerDelegate:self];
    brailleGestureManager = self->_brailleGestureManager;
  }

  return brailleGestureManager;
}

- (BOOL)brailleInputActive
{
  _brailleGestureManager = [(VOTEventFactory *)self _brailleGestureManager];
  isActive = [_brailleGestureManager isActive];

  return isActive;
}

- (int64_t)brailleInputTypingMode
{
  _brailleGestureManager = [(VOTEventFactory *)self _brailleGestureManager];
  typingMode = [_brailleGestureManager typingMode];

  return typingMode;
}

- (BOOL)brailleInputAllowsElementMovement
{
  _brailleGestureManager = [(VOTEventFactory *)self _brailleGestureManager];
  allowsElementMovement = [_brailleGestureManager allowsElementMovement];

  return allowsElementMovement;
}

- (BOOL)brailleInputWantsToStayActive
{
  _brailleGestureManager = [(VOTEventFactory *)self _brailleGestureManager];
  wantsToStayActive = [_brailleGestureManager wantsToStayActive];

  return wantsToStayActive;
}

- (BOOL)brailleInputShouldBeDeactivatedByEscape
{
  _brailleGestureManager = [(VOTEventFactory *)self _brailleGestureManager];
  shouldBeDeactivatedByEscape = [_brailleGestureManager shouldBeDeactivatedByEscape];

  return shouldBeDeactivatedByEscape;
}

- (id)_mapsExplorationGestureManager
{
  mapsExplorationGestureManager = self->_mapsExplorationGestureManager;
  if (!mapsExplorationGestureManager)
  {
    v4 = objc_opt_new();
    v5 = self->_mapsExplorationGestureManager;
    self->_mapsExplorationGestureManager = v4;

    [(VOTGesturedTextInputManager *)self->_mapsExplorationGestureManager setDelegate:self];
    mapsExplorationGestureManager = self->_mapsExplorationGestureManager;
  }

  return mapsExplorationGestureManager;
}

- (BOOL)mapsExplorationInputActive
{
  mapsExplorationGestureManager = self->_mapsExplorationGestureManager;
  if (mapsExplorationGestureManager)
  {
    LOBYTE(mapsExplorationGestureManager) = [(VOTGesturedTextInputManager *)mapsExplorationGestureManager isActive];
  }

  return mapsExplorationGestureManager;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = +[ZoomServices sharedInstance];
    [v2 registerInterestInZoomAttributes];
  }
}

- (VOTEventFactory)init
{
  v78.receiver = self;
  v78.super_class = VOTEventFactory;
  v2 = [(VOTEventFactory *)&v78 init];
  if (v2)
  {
    AXDeviceSizeMM();
    v4 = v3;
    v6 = v5;
    v7 = [objc_allocWithZone(SCRCGestureFactory) initWithSize:v2 delegate:0 threadKey:{v3, v5}];
    gestureFactory = v2->_gestureFactory;
    v2->_gestureFactory = v7;

    if (v4 >= v6)
    {
      v9 = v4;
    }

    else
    {
      v9 = v6;
    }

    [(SCRCGestureFactory *)v2->_gestureFactory setFlickSpeed:(0.9 / fmax(v9 / 74.0, 0.5) + -0.9) / 0.6];
    [(VOTEventFactory *)v2 _updateTapSpeedFromPreferences];
    v2->_currentElementLock._os_unfair_lock_opaque = 0;
    v10 = objc_alloc_init(NSMutableArray);
    tapAndHoldContextIds = v2->_tapAndHoldContextIds;
    v2->_tapAndHoldContextIds = v10;

    v2->_tapAndHoldLock._os_unfair_lock_opaque = 0;
    v12 = objc_alloc_init(NSMutableArray);
    previewFingerContextId = v2->_previewFingerContextId;
    v2->_previewFingerContextId = v12;

    v14 = [[SCRCThreadKey alloc] initWithObject:v2];
    threadKey = v2->_threadKey;
    v2->_threadKey = v14;

    v16 = [objc_allocWithZone(SCRCTargetSelectorTimer) initWithTarget:v2 selector:"_tapHoldFired:" threadKey:0];
    tapHoldTimer = v2->_tapHoldTimer;
    v2->_tapHoldTimer = v16;

    v18 = [objc_allocWithZone(SCRCTargetSelectorTimer) initWithTarget:v2 selector:"_outputElementSummaryFired" threadKey:0];
    elementSummaryTimer = v2->_elementSummaryTimer;
    v2->_elementSummaryTimer = v18;

    v20 = [objc_allocWithZone(SCRCTargetSelectorTimer) initWithTarget:v2 selector:"_twoFingerHoldFired" threadKey:0];
    twoFingerHoldTimer = v2->_twoFingerHoldTimer;
    v2->_twoFingerHoldTimer = v20;

    v22 = [objc_allocWithZone(SCRCTargetSelectorTimer) initWithTarget:v2 selector:"_threeFingerHoldFired" threadKey:0];
    threeFingerHoldTimer = v2->_threeFingerHoldTimer;
    v2->_threeFingerHoldTimer = v22;

    v24 = [objc_allocWithZone(SCRCTargetSelectorTimer) initWithTarget:v2 selector:"_startLabelElementSoundPlay" threadKey:0];
    memorizeSoundTimer = v2->_memorizeSoundTimer;
    v2->_memorizeSoundTimer = v24;

    v26 = [objc_allocWithZone(SCRCTargetSelectorTimer) initWithTarget:v2 selector:"_systemControlLocationTimer" threadKey:0];
    systemControlLocationTimer = v2->_systemControlLocationTimer;
    v2->_systemControlLocationTimer = v26;

    v28 = [objc_allocWithZone(SCRCTargetSelectorTimer) initWithTarget:v2 selector:"_volumeChangeTimer" threadKey:0];
    volumeChangeTimer = v2->_volumeChangeTimer;
    v2->_volumeChangeTimer = v28;

    v30 = [objc_allocWithZone(SCRCTargetSelectorTimer) initWithTarget:v2 selector:"_wakeTapFired" threadKey:0];
    wakeTapTimer = v2->_wakeTapTimer;
    v2->_wakeTapTimer = v30;

    v32 = [objc_allocWithZone(SCRCTargetSelectorTimer) initWithTarget:v2 selector:"_edgePanGestureSpeakHintTimerFired" threadKey:0];
    edgePanGestureSpeakHintTimer = v2->_edgePanGestureSpeakHintTimer;
    v2->_edgePanGestureSpeakHintTimer = v32;

    v34 = +[NSNotificationCenter defaultCenter];
    v35 = off_1001FDF08;
    v36 = +[NSOperationQueue currentQueue];
    v76[0] = _NSConcreteStackBlock;
    v76[1] = 3221225472;
    v76[2] = sub_1000C4D44;
    v76[3] = &unk_1001C7710;
    v37 = v2;
    v77 = v37;
    v38 = [v34 addObserverForName:v35 object:0 queue:v36 usingBlock:v76];

    v39 = +[NSNotificationCenter defaultCenter];
    v40 = off_1001FDF10;
    v41 = +[NSOperationQueue currentQueue];
    v74[0] = _NSConcreteStackBlock;
    v74[1] = 3221225472;
    v74[2] = sub_1000C4DB4;
    v74[3] = &unk_1001C7710;
    v42 = v37;
    v75 = v42;
    v43 = [v39 addObserverForName:v40 object:0 queue:v41 usingBlock:v74];

    objc_initWeak(&location, v42);
    v44 = +[NSNotificationCenter defaultCenter];
    v45 = +[NSOperationQueue currentQueue];
    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = sub_1000C4EAC;
    v71[3] = &unk_1001C7710;
    v46 = v42;
    v72 = v46;
    v47 = [v44 addObserverForName:@"VOTRotorChangedNotification" object:0 queue:v45 usingBlock:v71];

    v48 = +[NSNotificationCenter defaultCenter];
    v49 = +[NSOperationQueue currentQueue];
    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = sub_1000C4EB8;
    v69[3] = &unk_1001C7710;
    v50 = v46;
    v70 = v50;
    v51 = [v48 addObserverForName:@"VOTBSIStateChangedNotification" object:0 queue:v49 usingBlock:v69];

    v50[68] = 0xC1E6CEAF20000000;
    v50[49] = 0xC1E6CEAF20000000;
    v50[27] = 0xC1E6CEAF20000000;
    v50[77] = 0x3FF199999999999ALL;
    *(v50 + 25) = CFAbsoluteTimeGetCurrent();
    v52 = objc_alloc_init(VOTDirectInteractionKeyboardManager);
    v53 = v50[113];
    v50[113] = v52;

    [v50[113] setDelegate:v50];
    [v50[113] updateTypingMode];
    [v50 _registerForIOHIDUsage];
    [v50 _updateDelayUntilSpeakUnderTouch];
    v54 = +[AXSettings sharedInstance];
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_1000C4EC4;
    v67[3] = &unk_1001C78D8;
    objc_copyWeak(&v68, &location);
    [v54 registerUpdateBlock:v67 forRetrieveSelector:"voiceOverDelayUntilSpeakUnderTouch" withListener:v50];

    objc_destroyWeak(&v68);
    v55 = +[AXSettings sharedInstance];
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_1000C4F04;
    v65[3] = &unk_1001C78D8;
    objc_copyWeak(&v66, &location);
    [v55 registerUpdateBlock:v65 forRetrieveSelector:"voiceOverDoubleTapInterval" withListener:v50];

    objc_destroyWeak(&v66);
    v56 = +[AXHapticFeedbackManager sharedManager];
    [v56 playHapticFeedbackForType:20];

    v57 = +[AXSettings sharedInstance];
    voiceOverHandGesturesActionCustomizations = [v57 voiceOverHandGesturesActionCustomizations];
    v59 = v50[106];
    v50[106] = voiceOverHandGesturesActionCustomizations;

    v60 = +[AXSettings sharedInstance];
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_1000C4F44;
    v63[3] = &unk_1001C78D8;
    objc_copyWeak(&v64, &location);
    [v60 registerUpdateBlock:v63 forRetrieveSelector:"voiceOverHandGesturesActionCustomizations" withListener:v50];

    objc_destroyWeak(&v64);
    v61 = v50;

    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)_updateDelayUntilSpeakUnderTouch
{
  v4 = +[AXSettings sharedInstance];
  [v4 voiceOverDelayUntilSpeakUnderTouch];
  self->_delayUntilSpeakInterval = v3;
}

- (void)_updateTapSpeedFromPreferences
{
  v3 = +[AXSettings sharedInstance];
  [v3 voiceOverDoubleTapInterval];
  v5 = (v4 - kAXSVoiceOverDoubleTapIntervalMin) / (kAXSVoiceOverDoubleTapIntervalMax - kAXSVoiceOverDoubleTapIntervalMin) * -2.0 + 1.0;

  gestureFactory = self->_gestureFactory;

  [(SCRCGestureFactory *)gestureFactory setTapSpeed:v5];
}

- (void)_wakeTapFired
{
  watchWakeTapCount = self->_watchWakeTapCount;
  if (watchWakeTapCount == 2)
  {
    v10 = &kVOTEventCommandWatchWakeDoubleTap;
    goto LABEL_16;
  }

  if (watchWakeTapCount == 1)
  {
    if ([(NSMutableArray *)self->_snarfedWatchWakeRecords count])
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v4 = self->_snarfedWatchWakeRecords;
      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v12;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v12 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = [VOTGestureEvent gestureEventWithEventRepresentation:*(*(&v11 + 1) + 8 * i), v11];
            [(VOTEventFactory *)self _processGestureEvent:v9];
          }

          v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v6);
      }

      goto LABEL_17;
    }

    v10 = &kVOTEventCommandWatchWakeTap;
LABEL_16:
    v4 = [VOTEvent internalEventWithCommand:*v10 info:0];
    [(VOTEventFactory *)self processEvent:v4];
LABEL_17:

    goto LABEL_18;
  }

  if (watchWakeTapCount >= 3)
  {
    v10 = &kVOTEventCommandWatchWakeTripleTap;
    goto LABEL_16;
  }

LABEL_18:
  self->_watchWakeTapCount = 0;
  [(NSMutableArray *)self->_snarfedWatchWakeRecords removeAllObjects];
}

- (void)_handleIOHIDEvent:(id)event
{
  v4 = [(VOTEventFactory *)self _denormalizeEventRepresentation:event];
  if ([v4 type] == 3001)
  {
    handInfo = [v4 handInfo];
    if ([handInfo eventType] == 1)
    {
    }

    else
    {
      handInfo2 = [v4 handInfo];
      if ([handInfo2 eventType] != 5)
      {

        goto LABEL_9;
      }

      handInfo3 = [v4 handInfo];
      paths = [handInfo3 paths];
      v9 = [paths count];

      if (v9 != 1)
      {
        goto LABEL_9;
      }
    }

    [(VOTEventFactory *)self _commitDeferredZoomInfo];
  }

LABEL_9:
  if (_AXSZoomTouchEnabled())
  {
    LODWORD(v10) = dword_1001FED98;
    if (*&dword_1001FED98 > 1.0 && !CGRectIsEmpty(*ymmword_1001FEDA0) && (AXInPreboardScenario() & 1) == 0 && (AXInCheckerBoardScenario() & 1) == 0 && ([VOTSharedWorkspace brailleInputActive] & 1) == 0)
    {
      [(VOTEventFactory *)self _convertZoomRecordToDeviceRecord:v4];
    }
  }

  type = [v4 type];
  if (type > 1199)
  {
    if ((type - 1200) <= 7)
    {
      if (((1 << (type + 80)) & 0xAF) != 0)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v13 = WeakRetained;
        v14 = v4;
        v15 = 0;
      }

      else
      {
        currentElement = [(VOTEventFactory *)self currentElement];
        isRTL = [currentElement isRTL];

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v13 = WeakRetained;
        v14 = v4;
        v15 = isRTL;
      }

      [WeakRetained handleAppleTVRemoteEvent:v14 eventOrigin:7 isRTL:v15];
      goto LABEL_43;
    }

    if ((type - 4500) >= 2)
    {
      if (type != 3001)
      {
        goto LABEL_44;
      }

      handInfo4 = [v4 handInfo];
      eventType = [handInfo4 eventType];

      if (eventType == 10)
      {
        goto LABEL_44;
      }

      handInfo5 = [v4 handInfo];
      eventType2 = [handInfo5 eventType];

      if (eventType2 == 11)
      {
        goto LABEL_44;
      }

      [v4 neuterUpdates];
      if ([(VOTEventFactory *)self shouldSnarfEventForTapWakeGesture:v4])
      {
        v23 = sub_1000C50AC([v4 HIDTime]);
        handInfo6 = [v4 handInfo];
        eventType3 = [handInfo6 eventType];

        if (eventType3 == 6)
        {
          wakeTapTimer = self->_wakeTapTimer;
          ++self->_watchWakeTapCount;
          self->_lastWatchWakeUpTime = v23;
          [(SCRCTargetSelectorTimer *)wakeTapTimer cancel];
          [(SCRCTargetSelectorTimer *)self->_wakeTapTimer dispatchAfterDelay:0.699999988];
          v27 = AXLogTapticTime();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            watchWakeTapCount = self->_watchWakeTapCount;
            v41 = 134218240;
            v42 = watchWakeTapCount;
            v43 = 2048;
            v44 = v23;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "watchWakeTapCount=%lu, timestamp=%f", &v41, 0x16u);
          }
        }

        [(NSMutableArray *)self->_snarfedWatchWakeRecords addObject:v4];
        goto LABEL_44;
      }

      v36 = [VOTGestureEvent gestureEventWithEventRepresentation:v4];
      [(VOTEventFactory *)self _processGestureEvent:v36];
      self->_watchWakeTapCount = 0;
      [(NSMutableArray *)self->_snarfedWatchWakeRecords removeAllObjects];
LABEL_61:

      goto LABEL_44;
    }

LABEL_40:
    v13 = objc_loadWeakRetained(&self->_delegate);
    [v13 handleKeyboardKeyEvent:v4 eventOrigin:4];
LABEL_43:

    goto LABEL_44;
  }

  if (type <= 1028)
  {
    if ((type - 10) >= 3)
    {
      goto LABEL_44;
    }

    goto LABEL_40;
  }

  if ((type - 1029) <= 4 && type != 1031)
  {
    goto LABEL_40;
  }

  if (type == 1100)
  {
    v31 = sub_1000C50AC([v4 HIDTime]);
    if (v31 - self->_lastScrollEventTime >= 0.25)
    {
      v32 = 0;
      self->_currentAccumulatedScroll = 0;
    }

    else
    {
      v32 = 1;
    }

    self->_scrollWheelIsActive = v32;
    self->_lastScrollEventTime = v31;
    scrollAmount = [v4 scrollAmount];
    if ([VOTSharedWorkspace deviceOrientation] == 2)
    {
      v34 = -scrollAmount;
    }

    else
    {
      v34 = scrollAmount;
    }

    v35 = v34 + self->_currentAccumulatedScroll;
    self->_currentAccumulatedScroll = v35;
    if (!self->_scrollWheelIsActive)
    {
      goto LABEL_44;
    }

    if (v35 < 51)
    {
      if (v35 > -51)
      {
        goto LABEL_44;
      }

      v36 = [VOTEvent internalEventWithCommand:kVOTEventCommandNextElement info:0];
      v37 = self->_currentAccumulatedScroll + 50;
    }

    else
    {
      v36 = [VOTEvent internalEventWithCommand:kVOTEventCommandPreviousElement info:0];
      v37 = self->_currentAccumulatedScroll - 50;
    }

    self->_currentAccumulatedScroll = v37;
    [(VOTEventFactory *)self processEvent:v36];
    goto LABEL_61;
  }

  if (type == 1102)
  {
    self->_lastWatchWakeUpTime = sub_1000C50AC([v4 HIDTime]);
    if (!self->_aotEnabled || ([v4 location], v17 == CGPointZero.x) && v16 == CGPointZero.y)
    {
      snarfedWatchWakeRecords = self->_snarfedWatchWakeRecords;
      self->_snarfedWatchWakeRecords = 0;
    }

    else
    {
      v38 = self->_snarfedWatchWakeRecords;
      if (!v38)
      {
        v39 = objc_opt_new();
        v40 = self->_snarfedWatchWakeRecords;
        self->_snarfedWatchWakeRecords = v39;

        v38 = self->_snarfedWatchWakeRecords;
      }

      [(NSMutableArray *)v38 removeAllObjects];
    }
  }

LABEL_44:
  [VOTSharedWorkspace userInteractedWithDeviceWithHand:{objc_msgSend(v4, "type") == 3001}];
}

- (id)_preprocessEventForSimulator:(id)simulator
{
  v3 = [simulator denormalizedEventRepresentation:1 descale:1];
  handInfo = [v3 handInfo];
  paths = [handInfo paths];
  firstPath = [paths firstPath];
  [firstPath pathLocation];
  v8 = v7;
  v10 = v9;

  v11 = +[AXBackBoardServer server];
  v12 = [v11 contextIdForPosition:{v8, v10}];

  [v3 setContextId:v12];
  AXConvertPointToHostedCoordinates();
  _AXUIScreenConvertToCAScreen();
  v14 = v13;
  v16 = v15;
  handInfo2 = [v3 handInfo];
  paths2 = [handInfo2 paths];
  firstPath2 = [paths2 firstPath];
  [firstPath2 setPathLocation:{v14, v16}];

  return v3;
}

- (BOOL)_atvEventFilter:(id)filter
{
  filterCopy = filter;
  v5 = filterCopy;
  if (filterCopy && [filterCopy type] && objc_msgSend(v5, "senderID") != 0x8000000817319373 && objc_msgSend(v5, "senderID") != 0x8000000817319375)
  {
    if ([v5 type] == 3001)
    {
      elementManager = [(VOTEventFactory *)self elementManager];
      inDirectTouchMode = [elementManager inDirectTouchMode];

      elementManager2 = [(VOTEventFactory *)self elementManager];
      tvIsInteractingWithRotor = [elementManager2 tvIsInteractingWithRotor];

      v11 = [(VOTSimpleClickButtonInterceptor *)self->_selectButtonInterceptor touchEventOccurred:v5 inTVDirectTouch:inDirectTouchMode];
      if (!inDirectTouchMode || (tvIsInteractingWithRotor & 1) == 0 && [v5 fingerCount] < 2)
      {
        LOBYTE(inDirectTouchMode) = inDirectTouchMode ^ 1;
        if (((v11 ^ 1 | tvIsInteractingWithRotor) & 1) == 0)
        {
          goto LABEL_6;
        }

LABEL_17:
        [(VOTEventFactory *)self performSelectorOnMainThread:"_handleIOHIDEvent:" withObject:v5 waitUntilDone:0];
        goto LABEL_7;
      }

LABEL_16:
      LOBYTE(inDirectTouchMode) = 1;
      goto LABEL_17;
    }

    if ([v5 type] >= 0x4B0 && objc_msgSend(v5, "type") < 0x4B8)
    {
      goto LABEL_16;
    }

    if ([v5 type] == 1032)
    {
      playButtonInterceptor = self->_playButtonInterceptor;
LABEL_26:
      [playButtonInterceptor buttonDownOccurred:v5];
      goto LABEL_27;
    }

    if ([v5 type] == 1033)
    {
      menuButtonInterceptor = self->_playButtonInterceptor;
    }

    else
    {
      if ([v5 type] == 1220 || objc_msgSend(v5, "type") == 1218)
      {
        playButtonInterceptor = self->_selectButtonInterceptor;
        goto LABEL_26;
      }

      if ([v5 type] == 1216)
      {
        playButtonInterceptor = self->_menuButtonInterceptor;
        goto LABEL_26;
      }

      if ([v5 type] == 1217)
      {
        menuButtonInterceptor = self->_menuButtonInterceptor;
      }

      else
      {
        if ([v5 type] != 1221 && objc_msgSend(v5, "type") != 1219)
        {
          inDirectTouchMode = [v5 keyInfo];

          if (!inDirectTouchMode)
          {
            goto LABEL_6;
          }

          [v5 type];
          if (AXEventTypeIsVolumeButtonPress())
          {
            goto LABEL_5;
          }

          [v5 type];
          if (AXEventTypeIsMuteButtonPress())
          {
            goto LABEL_5;
          }

          goto LABEL_16;
        }

        v14 = +[NSNotificationCenter defaultCenter];
        [v14 postNotificationName:@"VOTEventFactoryDidReceiveSelectButtonUpEvent" object:0];

        menuButtonInterceptor = self->_selectButtonInterceptor;
      }
    }

    [menuButtonInterceptor buttonUpOccurred:v5];
LABEL_27:
    LOBYTE(inDirectTouchMode) = 1;
    goto LABEL_6;
  }

LABEL_5:
  LOBYTE(inDirectTouchMode) = 0;
LABEL_6:
  AXPerformBlockOnMainThread();
LABEL_7:

  return inDirectTouchMode;
}

- (void)_audioAccPostEvent:(id)event withButton:(unint64_t)button timeOffset:(double)offset
{
  eventCopy = event;
  v9 = eventCopy;
  if (!self->_audioAccIOSystemPostBackClient)
  {
    self->_audioAccIOSystemPostBackClient = IOHIDEventSystemClientCreate();
    eventCopy = v9;
  }

  creatorHIDEvent = [eventCopy creatorHIDEvent];
  if (self->_audioAccIOSystemPostBackClient)
  {
    v8 = creatorHIDEvent == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    IOHIDEventGetType();
    IOHIDEventSetSenderID();
    mach_absolute_time();
    sub_1000C50AC(0xF4240uLL);
    IOHIDEventSetTimeStamp();
    IOHIDEventSetIntegerValue();
    IOHIDEventSystemClientDispatchEvent();
  }
}

- (void)nowPlayingChanged:(id)changed
{
  v3 = dispatch_get_global_queue(0, 0);
  MRMediaRemoteGetNowPlayingApplicationIsPlaying();
}

- (BOOL)_iosEventFilter:(id)filter
{
  filterCopy = filter;
  if ([filterCopy senderID] == 0x8000000817319373 || objc_msgSend(filterCopy, "senderID") == 0x8000000817319375 || objc_msgSend(filterCopy, "senderID") == 0x8000000817319372 || objc_msgSend(filterCopy, "type") == 1013 || objc_msgSend(filterCopy, "type") == 1012)
  {
    goto LABEL_6;
  }

  keyInfo = [filterCopy keyInfo];
  if ([keyInfo keyCode] == 10)
  {
    keyInfo2 = [filterCopy keyInfo];
    usagePage = [keyInfo2 usagePage];

    if (usagePage == 255)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  type = [filterCopy type];
  if (AXDeviceIsPhone())
  {
    if (type == 10)
    {
      keyInfo3 = [filterCopy keyInfo];
      [keyInfo3 translateKeycode];

      keyInfo4 = [filterCopy keyInfo];
      keyCode = [keyInfo4 keyCode];

      keyInfo5 = [filterCopy keyInfo];
      modifierState = [keyInfo5 modifierState];

      keyInfo6 = [filterCopy keyInfo];
      modifierState2 = [keyInfo6 modifierState];

      if ((modifierState & 1) != 0 && keyCode == 43)
      {
        v18 = +[VOTSpringBoardConnection defaultConnection];
        v19 = v18;
        if ((modifierState2 & 8) != 0)
        {
          [v18 sendProgrammaticAppSwitch:0];

          v5 = 1;
        }

        else
        {
          v5 = 1;
          [v18 sendProgrammaticAppSwitch:1];
        }

        goto LABEL_7;
      }
    }
  }

  if (!filterCopy || ![filterCopy type] || (objc_msgSend(filterCopy, "type"), (AXEventTypeIsHomeButtonPress() & 1) != 0) || (objc_msgSend(filterCopy, "type"), (AXEventTypeIsLockButtonPress() & 1) != 0))
  {
LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  [filterCopy type];
  if (AXEventTypeIsVolumeButtonPress())
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained handleTurnOffSoundAndCurtainEvent:filterCopy];

    goto LABEL_6;
  }

  if ([filterCopy senderID] == 0x8000000817319375)
  {
    goto LABEL_6;
  }

  if ([filterCopy type] == 3001)
  {
    handInfo = [filterCopy handInfo];
    eventType = [handInfo eventType];

    if (eventType == 12)
    {
      goto LABEL_6;
    }
  }

  if ([filterCopy type] == 1100)
  {
    elementManager = [(VOTEventFactory *)self elementManager];
    shouldSnarfCrown = [elementManager shouldSnarfCrown];

    if (!shouldSnarfCrown)
    {
      goto LABEL_6;
    }
  }

  if ([filterCopy type] == 3200)
  {
    goto LABEL_6;
  }

  v25 = [filterCopy type] != 1102 && objc_msgSend(filterCopy, "type") != 1101;
  if ([filterCopy type] == 5000)
  {
    accessibilityData = [filterCopy accessibilityData];
    page = [accessibilityData page];

    if (page == 2)
    {
      v28 = [(VOTEventFactory *)self _handleVoiceOverGreySupportAccessibilityEvent:filterCopy];
LABEL_40:
      v5 = v28;
      goto LABEL_7;
    }
  }

  if ([filterCopy type] == 5000)
  {
    v28 = [(VOTEventFactory *)self _handleAccessibilityEvent:filterCopy];
    goto LABEL_40;
  }

  if ([filterCopy type] == 3001)
  {
    handInfo2 = [filterCopy handInfo];
    handEventMask = [handInfo2 handEventMask];

    if ((handEventMask & 0x20000) != 0)
    {
      goto LABEL_6;
    }
  }

  [(VOTEventFactory *)self performSelectorOnMainThread:"_handleIOHIDEvent:" withObject:filterCopy waitUntilDone:0];
  handInfo3 = [filterCopy handInfo];
  paths = [handInfo3 paths];

  if ((self->_flags.allowingSystemGesturePassthrough || paths && [paths count] >= 5 && AXDeviceIsPad() && !self->_flags.sendingToDirectTouch) && (-[VOTEventFactory _currentGesturedTextInputManager](self, "_currentGesturedTextInputManager"), v33 = objc_claimAutoreleasedReturnValue(), v33, !v33))
  {
    if (paths && [paths count])
    {
      handInfo4 = [filterCopy handInfo];
      v35 = [handInfo4 currentFingerCount] != 0;
    }

    else
    {
      v35 = 0;
    }

    v36 = 0;
    self->_flags.allowingSystemGesturePassthrough = v35;
  }

  else
  {
    v36 = [filterCopy type] != 1042 && objc_msgSend(filterCopy, "type") != 1043 && v25;
  }

  v5 = v36;
LABEL_7:

  return v5;
}

- (void)_registerForIOHIDUsage
{
  v3 = [[AXEventProcessor alloc] initWithHIDTapIdentifier:@"VoiceOverTouch" HIDEventTapPriority:15 systemEventTapIdentifier:0 systemEventTapPriority:15];
  [(VOTEventFactory *)self setEventProcessor:v3];

  if (AXDeviceIsAudioAccessory())
  {
    eventProcessor = [(VOTEventFactory *)self eventProcessor];
    v5 = eventProcessor;
    v6 = 3;
  }

  else
  {
    IsTV = AXDeviceIsTV();
    eventProcessor = [(VOTEventFactory *)self eventProcessor];
    v5 = eventProcessor;
    if (IsTV)
    {
      v6 = 256;
    }

    else
    {
      v6 = 171;
    }
  }

  [eventProcessor setHIDEventFilterMask:v6];

  objc_initWeak(&location, self);
  eventProcessor2 = [(VOTEventFactory *)self eventProcessor];
  [eventProcessor2 setFailedToHandleEventInTime:&stru_1001CA978];

  LOBYTE(eventProcessor2) = AXDeviceIsAudioAccessory();
  v9 = AXDeviceIsTV();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000C6548;
  v12[3] = &unk_1001CA9A0;
  v14 = eventProcessor2;
  objc_copyWeak(&v13, &location);
  v15 = v9;
  eventProcessor3 = [(VOTEventFactory *)self eventProcessor];
  [eventProcessor3 setHIDEventHandler:v12];

  eventProcessor4 = [(VOTEventFactory *)self eventProcessor];
  [eventProcessor4 beginHandlingHIDEventsForReason:@"VoiceOver wants them"];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_registerForZoomListener
{
  if (!self->_zoomListenerIdentifier)
  {
    v9[7] = v2;
    v9[8] = v3;
    v5 = +[ZoomServices sharedInstance];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000C66F4;
    v9[3] = &unk_1001C8538;
    v9[4] = self;
    v6 = [v5 registerForCoalescedZoomAttributesWithChangedHandler:v9 onDisplay:0];
    zoomListenerIdentifier = self->_zoomListenerIdentifier;
    self->_zoomListenerIdentifier = v6;

    if (!self->_zoomListenerIdentifier)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_1000C6834, kAXSZoomTouchEnabledNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }
  }
}

- (void)shutdown
{
  eventProcessor = [(VOTEventFactory *)self eventProcessor];
  [eventProcessor endHandlingHIDEventsForReason:@"VoiceOver wants them"];

  [(VOTEventFactory *)self setEventProcessor:0];

  [(VOTEventFactory *)self unregisterForEvents];
}

- (void)dealloc
{
  if (self->_axEventObserver)
  {
    [(VOTEventFactory *)self _registerForAXNotifications:0];
    CFRelease(self->_axEventObserver);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, kAXSZoomTouchEnabledNotification, 0);
  v4 = +[ZoomServices sharedInstance];
  [v4 removeCoalescedZoomAttributesChangedHandler:self->_zoomListenerIdentifier];

  eventProcessor = [(VOTEventFactory *)self eventProcessor];
  [eventProcessor cleanup];

  previewFingerContextId = self->_previewFingerContextId;
  self->_previewFingerContextId = 0;

  [(SCRCTargetSelectorTimer *)self->_systemControlLocationTimer invalidate];
  systemControlLocationTimer = self->_systemControlLocationTimer;
  self->_systemControlLocationTimer = 0;

  [(SCRCTargetSelectorTimer *)self->_tapHoldTimer invalidate];
  tapHoldTimer = self->_tapHoldTimer;
  self->_tapHoldTimer = 0;

  [(SCRCTargetSelectorTimer *)self->_elementSummaryTimer invalidate];
  elementSummaryTimer = self->_elementSummaryTimer;
  self->_elementSummaryTimer = 0;

  [(SCRCTargetSelectorTimer *)self->_twoFingerHoldTimer invalidate];
  twoFingerHoldTimer = self->_twoFingerHoldTimer;
  self->_twoFingerHoldTimer = 0;

  [(SCRCTargetSelectorTimer *)self->_threeFingerHoldTimer invalidate];
  threeFingerHoldTimer = self->_threeFingerHoldTimer;
  self->_threeFingerHoldTimer = 0;

  [(SCRCTargetSelectorTimer *)self->_memorizeSoundTimer invalidate];
  memorizeSoundTimer = self->_memorizeSoundTimer;
  self->_memorizeSoundTimer = 0;

  [(SCRCTargetSelectorTimer *)self->_volumeChangeTimer invalidate];
  volumeChangeTimer = self->_volumeChangeTimer;
  self->_volumeChangeTimer = 0;

  [(SCRCTargetSelectorTimer *)self->_wakeTapTimer invalidate];
  wakeTapTimer = self->_wakeTapTimer;
  self->_wakeTapTimer = 0;

  [(SCRCTargetSelectorTimer *)self->_edgePanGestureSpeakHintTimer invalidate];
  edgePanGestureSpeakHintTimer = self->_edgePanGestureSpeakHintTimer;
  self->_edgePanGestureSpeakHintTimer = 0;

  [(VOTBrailleGestureManager *)self->_brailleGestureManager setBrailleGestureManagerDelegate:0];
  [(VOTGesturedTextInputManager *)self->_brailleGestureManager setDelegate:0];
  [(VOTMapsExplorationGestureManager *)self->_mapsExplorationGestureManager setMapsExplorationGestureManagerDelegate:0];
  playButtonInterceptor = self->_playButtonInterceptor;
  self->_playButtonInterceptor = 0;

  selectButtonInterceptor = self->_selectButtonInterceptor;
  self->_selectButtonInterceptor = 0;

  menuButtonInterceptor = self->_menuButtonInterceptor;
  self->_menuButtonInterceptor = 0;

  v19.receiver = self;
  v19.super_class = VOTEventFactory;
  [(VOTEventFactory *)&v19 dealloc];
}

- (void)screenLockOccurred
{
  handwritingManager = [(VOTEventFactory *)self handwritingManager];
  [handwritingManager setActive:0];

  brailleGestureManager = self->_brailleGestureManager;

  [(VOTBrailleGestureManager *)brailleGestureManager setActive:0];
}

- (void)_handleRotorChangedNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:@"kVOTRotorChangedNotificationOldRotor"];
  intValue = [v6 intValue];

  userInfo2 = [notificationCopy userInfo];

  v9 = [userInfo2 objectForKey:@"kVOTRotorChangedNotificationNewRotor"];
  intValue2 = [v9 intValue];
  v11 = intValue2;

  if (intValue2 == 60)
  {
    currentElement = [(VOTEventFactory *)self currentElement];
    elementForGesturedTextInput = [currentElement elementForGesturedTextInput];

    if (!elementForGesturedTextInput)
    {
      _AXAssert();
    }

    [elementForGesturedTextInput updateGesturedTextInputAttributes];
    gesturedTextInputAttributes = [elementForGesturedTextInput gesturedTextInputAttributes];
    handwritingManager = [(VOTEventFactory *)self handwritingManager];
    [handwritingManager updateCharacterModesWithHandwritingAttributes:gesturedTextInputAttributes];

    handwritingManager2 = [(VOTEventFactory *)self handwritingManager];
    [handwritingManager2 announceActiveCharacterModeWithDelay:1];

    goto LABEL_7;
  }

  if (intValue == 60)
  {
    handwritingManager3 = [(VOTEventFactory *)self handwritingManager];
    [handwritingManager3 cancelAnnounceActiveCharacterMode];

    elementForGesturedTextInput = [(VOTEventFactory *)self handwritingManager];
    [elementForGesturedTextInput clearCurrentString];
LABEL_7:
  }

  handwritingManager4 = [(VOTEventFactory *)self handwritingManager];
  [handwritingManager4 setActive:v11 == 60];

  if (v11 == 61 || intValue == 61 && (-[VOTEventFactory _brailleGestureManager](self, "_brailleGestureManager"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 shouldBeDeactivatedByEscape], v20, v21))
  {
    _brailleGestureManager = [(VOTEventFactory *)self _brailleGestureManager];
    [_brailleGestureManager setActive:v11 == 61];
  }

  if (sub_1000F8768(v11) && !sub_1000F8768(intValue))
  {
    v22 = VOTLogHandwriting();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Posting AXVoiceOverDidEnableGesturedTextInputNotification", buf, 2u);
    }

    v23 = &AXVoiceOverDidEnableGesturedTextInputNotification;
    goto LABEL_22;
  }

  if (!sub_1000F8768(v11) && sub_1000F8768(intValue))
  {
    v22 = VOTLogHandwriting();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Posting AXVoiceOverDidDisableGesturedTextInputNotification", v25, 2u);
    }

    v23 = &AXVoiceOverDidDisableGesturedTextInputNotification;
LABEL_22:

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, *v23, 0, 0, 1u);
  }
}

- (void)_handleBSIStateChangedNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:@"VOTBSIStateChangedNotificationActive"];
  bOOLValue = [v6 BOOLValue];

  userInfo2 = [notificationCopy userInfo];
  v9 = [userInfo2 objectForKey:@"VOTBSIStateChangedNotificationUsage"];
  integerValue = [v9 integerValue];

  userInfo3 = [notificationCopy userInfo];

  v12 = [userInfo3 objectForKey:@"VOTBSIStateChangedNotificationPreferSingleHand"];
  bOOLValue2 = [v12 BOOLValue];

  _brailleGestureManager = [(VOTEventFactory *)self _brailleGestureManager];
  [_brailleGestureManager setActive:bOOLValue usage:integerValue preferSingleHand:bOOLValue2];
}

- (void)unregisterForEvents
{
  if (self->_axEventObserver)
  {
    [(VOTEventFactory *)self _registerForAXNotifications:0];
    CFRelease(self->_axEventObserver);
    self->_axEventObserver = 0;
  }

  v3 = +[ZoomServices sharedInstance];
  [v3 removeCoalescedZoomAttributesChangedHandler:self->_zoomListenerIdentifier];

  zoomListenerIdentifier = self->_zoomListenerIdentifier;
  self->_zoomListenerIdentifier = 0;
}

- (BOOL)registerForEvents
{
  if (AXDeviceIsAudioAccessory())
  {
    return 0;
  }

  v3 = VOTLogEvent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Registering for GS Events", buf, 2u);
  }

  AXUIElementRegisterSystemWideServerDeathCallback();
  pid = 0;
  AXUIElementGetPid(+[AXUIElement systemWideAXUIElement], &pid);
  axEventObserver = self->_axEventObserver;
  if (axEventObserver)
  {
LABEL_5:
    RunLoopSource = AXObserverGetRunLoopSource(axEventObserver);
    if (RunLoopSource)
    {
      v6 = RunLoopSource;
      Current = CFRunLoopGetCurrent();
      CFRunLoopAddSource(Current, v6, kCFRunLoopDefaultMode);
      v8 = [(VOTEventFactory *)self _registerForAXNotifications:1];
      if (!v8)
      {
        [(VOTEventFactory *)self _registerForZoomListener];
        return 1;
      }

      v9 = v8;
      v10 = VOTLogEvent();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        goto LABEL_18;
      }

      *buf = 134217984;
      v24 = v9;
      v11 = "Could not register for AX notifications. err %ld";
      v12 = v10;
      v13 = 12;
    }

    else
    {
      v10 = VOTLogEvent();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
LABEL_18:

        goto LABEL_19;
      }

      *buf = 0;
      v11 = "Could not get AX run loop";
      v12 = v10;
      v13 = 2;
    }

    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v11, buf, v13);
    goto LABEL_18;
  }

  if (AXObserverCreate(pid, sub_1000C7250, &self->_axEventObserver) == kAXErrorSuccess)
  {
    axEventObserver = self->_axEventObserver;
    goto LABEL_5;
  }

  v14 = +[AXSubsystemVoiceOver sharedInstance];
  ignoreLogging = [v14 ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    v16 = +[AXSubsystemVoiceOver identifier];
    v10 = AXLoggerForFacility();

    v17 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v10, v17))
    {
      v18 = AXColorizeFormatLog();
      v19 = _AXStringForArgs();
      if (os_log_type_enabled(v10, v17))
      {
        *buf = 138543362;
        v24 = v19;
        _os_log_impl(&_mh_execute_header, v10, v17, "%{public}@", buf, 0xCu);
      }
    }

    goto LABEL_18;
  }

LABEL_19:
  v20 = objc_autoreleasePoolPush();
  [VOTSharedWorkspace handleSystemWideServerDied];
  objc_autoreleasePoolPop(v20);
  return 0;
}

- (int)_registerForAXNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  v5 = +[AXUIElement systemWideAXUIElement];
  _notificationsToRegister = [(VOTEventFactory *)self _notificationsToRegister];
  if ([_notificationsToRegister count])
  {
    v8 = 0;
    v9 = 0;
    if (notificationsCopy)
    {
      v10 = @"register";
    }

    else
    {
      v10 = @"unregister";
    }

    v11 = 1;
    *&v7 = 138543874;
    v23 = v7;
    do
    {
      axEventObserver = self->_axEventObserver;
      v13 = [_notificationsToRegister objectAtIndexedSubscript:{v8, v23}];
      intValue = [v13 intValue];
      if (notificationsCopy)
      {
        v15 = AXObserverAddNotification(axEventObserver, v5, intValue, self);
      }

      else
      {
        v15 = AXObserverRemoveNotification(axEventObserver, v5, intValue);
      }

      v16 = v15;

      if (v16)
      {
        v17 = VOTLogNotifications();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v19 = [_notificationsToRegister objectAtIndexedSubscript:v8];
          intValue2 = [v19 intValue];
          *buf = v23;
          v25 = v10;
          v26 = 1024;
          v27 = intValue2;
          v28 = 1024;
          v29 = v16;
          _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Unable to %{public}@ for notification %d. Error: %d", buf, 0x18u);
        }

        if (!v9)
        {
          v9 = v16;
        }
      }

      v8 = v11;
    }

    while ([_notificationsToRegister count] > v11++);
    if (v9)
    {
      v21 = VOTLogNotifications();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        sub_10012E15C();
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_handleSOSMedicalIDShown
{
  v2 = VOTLogEvent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Will try to reset screen curtain because medical ID is shown", v3, 2u);
  }

  if (_AXSVoiceOverTouchScreenCurtainEnabled())
  {
    _AXSVoiceOverTouchScreenCurtainEnabled();
    _AXSVoiceOverTouchSetScreenCurtainEnabled();
  }
}

- (id)_commandResolver
{
  v3 = +[VOSCommandResolver resolverForCurrentHost];
  v4 = [(VOTEventFactory *)self _currentGesturedTextInputManagerAndCommandResolver:v3 forCommandResolver:1];
  v5 = +[AXSettings sharedInstance];
  voiceOverNavigationDirectionMode = [v5 voiceOverNavigationDirectionMode];

  if (voiceOverNavigationDirectionMode)
  {
    if (voiceOverNavigationDirectionMode == 2)
    {
      v7 = v3;
      v8 = 0;
    }

    else
    {
      if (voiceOverNavigationDirectionMode != 1)
      {
        goto LABEL_8;
      }

      v7 = v3;
      v8 = 1;
    }

    [v7 setShouldApplyRTL:v8];
  }

  else
  {
    currentElement = [(VOTEventFactory *)self currentElement];
    [v3 setShouldApplyRTL:{objc_msgSend(currentElement, "applicationIsRTL")}];
  }

LABEL_8:

  return v3;
}

- (id)_currentGesturedTextInputManagerAndCommandResolver:(id)resolver forCommandResolver:(BOOL)commandResolver
{
  commandResolverCopy = commandResolver;
  resolverCopy = resolver;
  v7 = +[VOTCommandHelper commandHelper];
  helpEnabled = [v7 helpEnabled];

  if (helpEnabled)
  {
    v9 = !commandResolverCopy;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = +[VOTCommandHelper commandHelper];
    [v11 practiceRegion];
    v13 = v12;
    v15 = v14;

    v10 = CGSizeZero.height != v15 || CGSizeZero.width != v13;
  }

  rotorManager = [(VOTEventFactory *)self rotorManager];
  currentRotorType = [rotorManager currentRotorType];

  if (currentRotorType == 60)
  {
    helpEnabled = [(VOTEventFactory *)self currentElement];
    if ([helpEnabled doesHaveTraitsForGesturedTextInput])
    {

LABEL_19:
      handwritingManager = [(VOTEventFactory *)self handwritingManager];
      helpEnabled = +[VOSScreenreaderMode Handwriting];
      [resolverCopy setScreenreaderMode:helpEnabled];
LABEL_22:

      goto LABEL_23;
    }

    if (!v10)
    {
      handwritingManager = 0;
      goto LABEL_22;
    }
  }

  else if (!v10)
  {
    goto LABEL_20;
  }

  v18 = +[AXSettings sharedInstance];
  voiceOverHelpMode = [v18 voiceOverHelpMode];

  if (currentRotorType == 60)
  {
  }

  if (voiceOverHelpMode == 1)
  {
    goto LABEL_19;
  }

LABEL_20:
  handwritingManager = 0;
LABEL_23:
  _brailleGestureManager = [(VOTEventFactory *)self _brailleGestureManager];
  isActive = [_brailleGestureManager isActive];
  if ((isActive & 1) == 0 && v10)
  {
    v23 = +[AXSettings sharedInstance];
    voiceOverHelpMode2 = [v23 voiceOverHelpMode];

    if (voiceOverHelpMode2 != 2)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (isActive)
  {
LABEL_28:
    _brailleGestureManager2 = [(VOTEventFactory *)self _brailleGestureManager];

    v26 = +[VOSScreenreaderMode BrailleScreenInput];
    [resolverCopy setScreenreaderMode:v26];

    [resolverCopy setBsiTypingMode:{objc_msgSend(_brailleGestureManager2, "typingMode") == 0}];
    handwritingManager = _brailleGestureManager2;
  }

LABEL_29:
  if (currentRotorType == 64)
  {
    _mapsExplorationGestureManager = [(VOTEventFactory *)self _mapsExplorationGestureManager];
    isActive2 = [_mapsExplorationGestureManager isActive];

    if (isActive2)
    {
      _mapsExplorationGestureManager2 = [(VOTEventFactory *)self _mapsExplorationGestureManager];

      handwritingManager = _mapsExplorationGestureManager2;
    }
  }

  return handwritingManager;
}

- (BOOL)processEventAsGesturedTextInput:(id)input
{
  inputCopy = input;
  if ([inputCopy isSystemServerEvent])
  {
    v5 = 0;
  }

  else
  {
    _currentGesturedTextInputManager = [(VOTEventFactory *)self _currentGesturedTextInputManager];
    v7 = _currentGesturedTextInputManager;
    if (_currentGesturedTextInputManager)
    {
      v5 = [_currentGesturedTextInputManager processEvent:inputCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)processEvent:(id)event
{
  eventCopy = event;
  if (![(VOTEventFactory *)self processEventAsGesturedTextInput:eventCopy])
  {
    directInteractionKeyboardManager = [(VOTEventFactory *)self directInteractionKeyboardManager];
    inDirectInteractionTypingMode = [directInteractionKeyboardManager inDirectInteractionTypingMode];

    if (!inDirectInteractionTypingMode || (-[VOTEventFactory directInteractionKeyboardManager](self, "directInteractionKeyboardManager"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 processEvent:eventCopy], v7, (v8 & 1) == 0))
    {
      v9 = VOTLogEvent();
      if (os_signpost_enabled(v9))
      {
        *v15 = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ProcessEvent", "", v15, 2u);
      }

      command = [eventCopy command];
      if (![command isEqualToString:kVOTEventCommandIdle])
      {
        command2 = [eventCopy command];
        if (![command2 isEqualToString:kVOTEventCommandWatchWakeDoubleTap])
        {
          command3 = [eventCopy command];
          v14 = [command3 isEqualToString:kVOTEventCommandWatchWakeTripleTap];

          if ((v14 & 1) == 0)
          {
            [VOTSharedWorkspace unmuteEligibleEventOccured];
          }

          goto LABEL_10;
        }
      }

LABEL_10:
      WeakRetained = objc_loadWeakRetained(&self->_elementManager);
      [WeakRetained handleEvent:eventCopy];
    }
  }
}

- (BOOL)_isTapAndHoldPending
{
  isPending = [(SCRCTargetSelectorTimer *)self->_tapHoldTimer isPending];
  if (isPending)
  {
    LOBYTE(isPending) = [(SCRCTargetSelectorTimer *)self->_tapHoldTimer isCancelled]^ 1;
  }

  return isPending;
}

- (BOOL)_shouldAttemptTracking
{
  if (self->_flags.tapAndHoldMode)
  {
    _tapAndHoldModeIsForScribble = [(VOTEventFactory *)self _tapAndHoldModeIsForScribble];
    if (!_tapAndHoldModeIsForScribble)
    {
      return _tapAndHoldModeIsForScribble;
    }

    _isStylusGesture = [(VOTEventFactory *)self _isStylusGesture];
  }

  else
  {
    _isStylusGesture = 0;
  }

  LOBYTE(_tapAndHoldModeIsForScribble) = 0;
  if (self->_fingerCount && (_isStylusGesture & 1) == 0)
  {
    if ([(VOTEventFactory *)self _isTapAndHoldPending])
    {
      LOBYTE(_tapAndHoldModeIsForScribble) = self->_travelDistance >= 0.119999997;
    }

    else
    {
      LOBYTE(_tapAndHoldModeIsForScribble) = 1;
    }
  }

  return _tapAndHoldModeIsForScribble;
}

- (BOOL)_isEdgePressSupportedAtPosition:(CGPoint)position
{
  x = position.x;
  if ([VOTSharedWorkspace supportsHomeGestures])
  {
    return 0;
  }

  v5 = +[VOTElement springBoardApplication];
  applicationIsRTL = [v5 applicationIsRTL];

  if (applicationIsRTL)
  {
    return x > 0.93;
  }

  else
  {
    return x < 0.07;
  }
}

- (void)_updateFirstnessOfTrackingEvent:(id)event
{
  if (self->_flags.hasSentFirstTrackingEventForGesture)
  {

    [event setObject:&__kCFBooleanFalse forIndex:113];
  }

  else
  {
    [event setObject:&__kCFBooleanTrue forIndex:113];
    self->_flags.hasSentFirstTrackingEventForGesture = 1;
  }
}

- (void)_gestureTrackingCallbackWithFactory:(id)factory isHandlingSystemControlEvent:(BOOL)event
{
  factoryCopy = factory;
  Current = CFAbsoluteTimeGetCurrent();
  [(VOTGestureEvent *)self->_lastDownEvent time];
  if (Current - v8 >= self->_delayUntilSpeakInterval)
  {
    if ([(VOTEventFactory *)self mapsExplorationInputActive])
    {
      v9 = [VOTEvent touchEventWithCommand:kVOTEventCommandTracking info:0];
      v10 = VOTSharedWorkspace;
      [factoryCopy rawLocation];
      [v10 convertDevicePointToZoomedPoint:sub_1000517DC(v11)];
      [v9 setTouchPoint:?];
      [(VOTEventFactory *)self _updateFirstnessOfTrackingEvent:v9];
      [(VOTEventFactory *)self processEvent:v9];

      goto LABEL_46;
    }

    v12 = VOTLogEvent();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_10012E1E0();
    }

    if (![(VOTEventFactory *)self _shouldUseGesturedTextInputManager]&& (self->_edgePanGestureState | 8) == 8)
    {
      AXForceTouchThresholdPop();
      if (v13 >= self->_previewFingerStartingForce + 50.0)
      {
        v14 = v13;
      }

      else
      {
        v14 = self->_previewFingerStartingForce + 50.0;
      }

      v15 = CFAbsoluteTimeGetCurrent() - self->_previewPopDelayTime;
      if (v15 <= 1.0)
      {
        currentTouchForce = self->_currentTouchForce;
      }

      else
      {
        [factoryCopy firstFingerPressure];
        currentTouchForce = v16;
      }

      if (!_AXSForceTouchEnabled())
      {
LABEL_32:
        if (self->_flags.orbMode)
        {
          self->_flags.orbMode = 0;
          self->_flags.tapAndHoldMode = 0;
        }

        if ([(VOTEventFactory *)self _shouldAttemptTracking])
        {
          if (self->_flags.sendingToNativeSlide && ![(VOTGestureEvent *)self->_currentGestureEvent isDownEvent])
          {
            eventRepresentation = [(VOTGestureEvent *)self->_currentGestureEvent eventRepresentation];
            v25 = [eventRepresentation copy];

            handInfo = [v25 handInfo];
            paths = [handInfo paths];
            v28 = [paths objectAtIndex:0];
            [v28 pathLocation];
            v30 = v29;
            v32 = v31;

            sub_1000C4128(v25, self->_nativeSlidingCenter.x + v30 - self->_nativeSlidingOffset.x, self->_nativeSlidingCenter.y + v32 - self->_nativeSlidingOffset.y);
            v33 = +[VOTElement systemWideElement];
            [v33 repostEvent:v25];
          }

          if (!event)
          {
            v34 = [VOTEvent touchEventWithCommand:kVOTEventCommandTracking info:0];
            [factoryCopy firstFingerPressure];
            [v34 setTouchForce:?];
            [factoryCopy rawLocation];
            [v34 setTouchRawLocation:?];
            [factoryCopy rawLocation];
            [(VOTEventFactory *)self convertDevicePointToZoomedPoint:sub_1000517DC(v35)];
            [v34 setTouchPoint:?];
            [v34 setObject:self->_currentGestureEvent forIndex:108];
            [(VOTEventFactory *)self _updateFirstnessOfTrackingEvent:v34];
            [(VOTEventFactory *)self processEvent:v34];
          }

          if ([(VOTEventFactory *)self _isTapAndHoldPending])
          {
            [(VOTEventFactory *)self _cancelTapAndHold:CGPointZero.x, CGPointZero.y];
          }
        }

        goto LABEL_46;
      }

      v18 = v14;
      v19 = VOTLogEvent();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v39 = v15 > 1.0;
        [factoryCopy firstFingerPressure];
        v41 = v40;
        AXForceTouchThresholdPeek();
        isInPreview = self->_isInPreview;
        currentOrbGestureMode = self->_currentOrbGestureMode;
        previewFingerStartingForce = self->_previewFingerStartingForce;
        v46 = 134219776;
        v47 = currentTouchForce;
        v48 = 2048;
        v49 = v41;
        v50 = 1024;
        v51 = v39;
        v52 = 2048;
        v53 = v45;
        v54 = 2048;
        v55 = v18;
        v56 = 1024;
        v57 = isInPreview;
        v58 = 2048;
        v59 = currentOrbGestureMode;
        v60 = 2048;
        v61 = previewFingerStartingForce;
        _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Force touch: first value: %f (factory orb: %f) [pop delay: %d] (peek: %f), current pop: %f (inPreview: %d), gesture mode: %ld starting force: %f", &v46, 0x4Au);
      }

      AXForceTouchThresholdPeek();
      if (currentTouchForce > v20)
      {
        [factoryCopy rawLocation];
        if ([(VOTEventFactory *)self _isEdgePressSupportedAtPosition:?])
        {
          [(VOTEventFactory *)self _simulateEdgePress];
          goto LABEL_46;
        }
      }

      AXForceTouchThresholdPeek();
      if (currentTouchForce <= v21 || self->_isInPreview)
      {
        if (currentTouchForce > v18 && self->_isInPreview && self->_currentOrbGestureMode == 2)
        {
          v22 = VOTLogEvent();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            sub_10012E27C();
          }

          [(VOTEventFactory *)self _simulatePop];
        }

        else if (currentTouchForce < self->_previewFingerStartingForce)
        {
          v23 = VOTLogEvent();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            sub_10012E248();
          }

          [(VOTEventFactory *)self _reducePreviewFingerStartingForce:currentTouchForce];
        }

        goto LABEL_32;
      }

      currentElement = [(VOTEventFactory *)self currentElement];
      supportsDirectionOrbManipulation = [currentElement supportsDirectionOrbManipulation];

      if (supportsDirectionOrbManipulation)
      {
        v38 = VOTLogEvent();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          sub_10012E214();
        }

        [(VOTEventFactory *)self _simulatePeekAndSwitchToTapHoldMode];
      }
    }
  }

LABEL_46:
}

- (void)_volumeChangeTimer
{
  v3 = &kVOTEventCommandIncreaseSystemVolume;
  v4 = self->_volumeChangeDistance - self->_oldVolumeChangeDistance;
  if (v4 <= 0.0)
  {
    v3 = &kVOTEventCommandDecreaseSystemVolume;
  }

  v5 = *v3;
  v9 = [objc_allocWithZone(AXIndexMap) init];
  *&v6 = fabsf(v4);
  v7 = [NSNumber numberWithFloat:v6];
  [v9 setObject:v7 forIndex:110];

  v8 = [VOTEvent internalEventWithCommand:v5 info:v9];
  [(VOTEventFactory *)self processEvent:v8];
  self->_oldVolumeChangeDistance = self->_volumeChangeDistance;
}

- (void)_systemControlLocationTimer
{
  WeakRetained = objc_loadWeakRetained(&self->_elementManager);
  if ([WeakRetained allowsSystemControlEventForPosition:self->_systemControlPosition])
  {
    tapAndHoldMode = self->_flags.tapAndHoldMode;

    if (!tapAndHoldMode)
    {
      v4 = +[VOTOutputManager outputManager];
      [v4 playSoundFast:@"Sounds/Edge.aiff"];

      self->_systemControlActivated = 1;
      self->_systemControlStartSwipeTime = -3061152000.0;
    }
  }

  else
  {
  }
}

- (int)_systemControlPosition:(CGPoint)position fingerCount:(unint64_t)count
{
  y = position.y;
  x = position.x;
  deviceOrientation = [VOTSharedWorkspace deviceOrientation];
  IsPad = AXDeviceIsPad();
  v10 = 60.0;
  if (IsPad)
  {
    v10 = 120.0;
  }

  if (x >= 20.0 || fabs(y + *(&xmmword_1001FF150 + 1) * -0.5) >= v10)
  {
    if (x <= *&xmmword_1001FF150 + -20.0 || fabs(y + *(&xmmword_1001FF150 + 1) * -0.5) >= v10)
    {
      if (y >= 20.0 || fabs(x + *&xmmword_1001FF150 * -0.5) >= v10)
      {
        if (y <= *(&xmmword_1001FF150 + 1) + -20.0 || fabs(x + *&xmmword_1001FF150 * -0.5) >= v10)
        {
          v11 = 0;
        }

        else
        {
          v11 = 2;
        }
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = 4;
    }
  }

  else
  {
    v11 = 3;
  }

  if (deviceOrientation == 4)
  {
    v12 = v11 - 1;
    if ((v11 - 1) > 3)
    {
      goto LABEL_26;
    }

    v13 = &unk_10017E5B0;
  }

  else if (deviceOrientation == 3)
  {
    v12 = v11 - 1;
    if ((v11 - 1) >= 4)
    {
      goto LABEL_26;
    }

    v13 = &unk_10017E5A0;
  }

  else
  {
    if (deviceOrientation != 2)
    {
      goto LABEL_26;
    }

    v12 = v11 - 1;
    if ((v11 - 1) >= 4)
    {
      goto LABEL_26;
    }

    v13 = &unk_10017E590;
  }

  v11 = v13[v12];
LABEL_26:
  if (count == 1)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  if (v11 == 1 && count == 2)
  {
    v16 = 5;
  }

  else
  {
    v16 = v14;
  }

  WeakRetained = objc_loadWeakRetained(&self->_elementManager);
  v18 = [WeakRetained allowsSystemControlEventForPosition:v16];

  if (v18)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

- (void)_sendSystemControlEvent:(id)event
{
  eventCopy = event;
  systemControlPosition = self->_systemControlPosition;
  v7 = eventCopy;
  if (systemControlPosition <= 2)
  {
    if (systemControlPosition == 1)
    {
      v6 = &kVOTEventCommandSystemShowNotificationCenter;
      goto LABEL_12;
    }

    if (systemControlPosition == 2)
    {
      v6 = &kVOTEventCommandSystemShowControlCenter;
      goto LABEL_12;
    }
  }

  else
  {
    switch(systemControlPosition)
    {
      case 3:
        v6 = &kVOTEventCommandSystemControlLeft;
        goto LABEL_12;
      case 4:
        v6 = &kVOTEventCommandSystemControlRight;
        goto LABEL_12;
      case 5:
        v6 = &kVOTEventCommandSystemControlTwoTop;
LABEL_12:
        [eventCopy setCommand:*v6];
        goto LABEL_13;
    }
  }

  _AXAssert();
LABEL_13:
  [(VOTEventFactory *)self processEvent:v7];
  self->_systemControlActivated = 0;
}

- (void)_resetSystemControlStatus
{
  [(SCRCTargetSelectorTimer *)self->_systemControlLocationTimer cancel];
  self->_systemControlStartPoint = CGPointZero;
  self->_systemControlActivated = 0;
  *&self->_systemControlStartSwipeTime = xmmword_10017E560;
}

- (CGPoint)_averagePointForLastDownEvent
{
  eventRepresentation = [(VOTGestureEvent *)self->_lastDownEvent eventRepresentation];
  handInfo = [eventRepresentation handInfo];
  paths = [handInfo paths];

  x = CGPointZero.x;
  y = CGPointZero.y;
  v7 = [paths count];
  if (v7)
  {
    v8 = v7;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = paths;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          [v14 pathLocation];
          x = x + v15;
          [v14 pathLocation];
          y = y + v16;
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    x = x / v8;
    y = y / v8;
  }

  v17 = x;
  v18 = y;
  result.y = v18;
  result.x = v17;
  return result;
}

- (BOOL)_updateFingersInSystemControlLocation:(CGPoint)location fingerCount:(unint64_t)count isLift:(BOOL)lift
{
  y = location.y;
  x = location.x;
  v8 = [(VOTEventFactory *)self _systemControlPosition:count fingerCount:lift];
  v9 = v8;
  if (!self->_systemControlActivated)
  {
    if (!v8)
    {
      v14 = CGPointZero.y;
      if (CGPointZero.x != self->_systemControlStartPoint.x || v14 != self->_systemControlStartPoint.y)
      {
        [(VOTEventFactory *)self _resetSystemControlStatus:CGPointZero.x];
      }

      return 0;
    }

    goto LABEL_18;
  }

  if (self->_systemControlStartSwipeTime == -3061152000.0)
  {
    self->_systemControlStartSwipeTime = CFAbsoluteTimeGetCurrent();
  }

  v30 = 0;
  SCRCMathGetVectorAndDistanceForPoints();
  if (0.0 <= 37.5 || CFAbsoluteTimeGetCurrent() - self->_systemControlStartSwipeTime >= 0.65)
  {
    if (CFAbsoluteTimeGetCurrent() - self->_systemControlStartSwipeTime <= 0.65)
    {
      return 0;
    }

    [(VOTEventFactory *)self _resetSystemControlStatus];
LABEL_18:
    if ([(SCRCTargetSelectorTimer *)self->_systemControlLocationTimer isPending]&& ([(SCRCTargetSelectorTimer *)self->_systemControlLocationTimer isCancelled]& 1) == 0)
    {
      SCRCMathGetDistanceBetweenPoints();
      if (v25 > 20.0)
      {
        self->_systemControlStartPoint = CGPointZero;
        self->_systemControlPosition = 0;
        [(SCRCTargetSelectorTimer *)self->_systemControlLocationTimer cancel];
      }
    }

    else
    {
      [(VOTEventFactory *)self _averagePointForLastDownEvent];
      SCRCMathGetDistanceBetweenPoints();
      if (v16 <= 30.0)
      {
        Current = CFAbsoluteTimeGetCurrent();
        [(VOTGestureEvent *)self->_lastDownEvent time];
        if (Current - v18 <= 1.75)
        {
          currentElement = [(VOTEventFactory *)self currentElement];
          v20 = [currentElement doesHaveTraits:kAXKeyboardKeyTrait];
          [currentElement frame];
          if (!v20 || (v32.x = x, v32.y = y, !CGRectContainsPoint(*&v21, v32)))
          {
            if (!self->_systemControlActivated)
            {
              self->_systemControlStartPoint.x = x;
              self->_systemControlStartPoint.y = y;
              self->_systemControlPosition = v9;
              [(SCRCTargetSelectorTimer *)self->_systemControlLocationTimer dispatchAfterDelay:self->_systemControlFingerDownFollowupTime];
            }
          }
        }
      }
    }

    return 0;
  }

  deviceOrientation = [VOTSharedWorkspace deviceOrientation];
  v11 = 0.0;
  if ((deviceOrientation - 2) <= 2)
  {
    v11 = dbl_10017E5C8[(deviceOrientation - 2)];
  }

  v12 = v11 + 0.0;
  v31 = v12;
  v13 = 360.0;
  if (v12 <= 360.0)
  {
    if (v12 >= 0.0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v13 = -360.0;
  }

  v12 = v12 + v13;
  v31 = v12;
LABEL_31:
  result = 0;
  systemControlPosition = self->_systemControlPosition;
  if (systemControlPosition <= 2)
  {
    if (systemControlPosition == 1)
    {
      goto LABEL_39;
    }

    if (systemControlPosition != 2)
    {
      return result;
    }

    v28 = -90.0;
  }

  else
  {
    if (systemControlPosition != 3)
    {
      if (systemControlPosition != 4)
      {
        if (systemControlPosition != 5)
        {
          return result;
        }

LABEL_39:
        if (fabs(v12 + -270.0) >= 20.0)
        {
          return 0;
        }

LABEL_48:
        v29 = [VOTEvent touchEventWithCommand:kVOTEventCommandTracking info:0, *&v31];
        [v29 setTouchPoint:{x, y}];
        [v29 setObject:self->_currentGestureEvent forIndex:108];
        [(VOTEventFactory *)self _sendSystemControlEvent:v29];

        return 1;
      }

      if (v12 > 340.0)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    }

    v28 = -180.0;
  }

  v12 = fabs(v12 + v28);
LABEL_45:
  if (v12 < 20.0)
  {
    goto LABEL_48;
  }

  return 0;
}

- (void)gestureSplitTappingCallbackWithFactory:(id)factory
{
  factoryCopy = factory;
  _currentGesturedTextInputManager = [(VOTEventFactory *)self _currentGesturedTextInputManager];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    _shouldUseGesturedTextInputManager = [(VOTEventFactory *)self _shouldUseGesturedTextInputManager];

    v6 = factoryCopy;
    if (_shouldUseGesturedTextInputManager)
    {
      goto LABEL_5;
    }
  }

  [factoryCopy rawLocation];
  [(VOTEventFactory *)self convertDevicePointToZoomedPoint:sub_1000517DC(v7)];
  v9 = v8;
  v11 = v10;
  v12 = [objc_allocWithZone(AXIndexMap) init];
  v13 = [NSValue valueWithPoint:v9, v11];
  [v12 setObject:v13 forIndex:101];

  v14 = [VOTEvent touchEventWithCommand:kVOTEventCommandSplitTapTap info:v12];
  [(VOTEventFactory *)self processEvent:v14];

  v6 = factoryCopy;
LABEL_5:
}

- (void)gestureFactoryDidBeginSplitGesture:(id)gesture
{
  if (!self->_flags.splitSlide)
  {
    v4 = VOTLogEvent();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10012E2B0();
    }

    _currentGesturedTextInputManager = [(VOTEventFactory *)self _currentGesturedTextInputManager];
    [_currentGesturedTextInputManager eventFactoryDidBeginSplitGesture:self];
  }
}

- (id)_handleGestureKeyboardTappingCallback:(unint64_t)callback fingerCount:(unint64_t)count isDown:(BOOL)down originalLocation:(CGPoint)location convertedLocation:(CGPoint)convertedLocation
{
  y = convertedLocation.y;
  x = convertedLocation.x;
  v9 = location.y;
  v10 = location.x;
  v15 = +[VOTWorkspace sharedWorkspace];
  userCommandManager = [v15 userCommandManager];

  directInteractionKeyboardManager = [(VOTEventFactory *)self directInteractionKeyboardManager];
  [directInteractionKeyboardManager gestureKeyboardRegion];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  if (callback == 1 && count == 1)
  {
    v32.origin.x = v19;
    v32.origin.y = v21;
    v32.size.width = v23;
    v32.size.height = v25;
    v31.x = x;
    v31.y = y;
    if (CGRectContainsPoint(v32, v31))
    {
      v26 = [VOTEvent touchEventWithCommand:kVOTEventCommandGestureTypingType info:0];
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
    if (callback == 2 && count == 2 && !down)
    {
      v27 = +[VOSGesture TwoFingerDoubleTap];
      _commandResolver = [(VOTEventFactory *)self _commandResolver];
      v26 = [userCommandManager eventForTouchGesture:v27 resolver:_commandResolver];
    }
  }

  [v26 setTouchPoint:{v10, v9}];

  return v26;
}

- (void)gestureTappingCallbackWithFactory:(id)factory
{
  factoryCopy = factory;
  v5 = VOTLogEvent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10012E2E4(factoryCopy);
  }

  v6 = +[VOTWorkspace sharedWorkspace];
  userCommandManager = [v6 userCommandManager];

  [factoryCopy rawLocation];
  [(VOTEventFactory *)self convertDevicePointToZoomedPoint:sub_1000517DC(v8)];
  v10 = v9;
  v12 = v11;
  [factoryCopy firstFingerPressure];
  v14 = v13;
  v15 = [factoryCopy tapCount] + self->_watchWakeTapCount;
  v16 = self->_delayUntilSpeakInterval > 0.001 && v15 == 1;
  if (v16 && [factoryCopy fingerCount] == 1)
  {
    v17 = VOTLogEvent();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [NSNumber numberWithDouble:self->_delayUntilSpeakInterval];
      *v80 = 138412290;
      *&v80[4] = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Ignoring tap because tap to speak is set to %@", v80, 0xCu);
    }

    goto LABEL_129;
  }

  tapIsDown = [factoryCopy tapIsDown];
  -[VOTEventFactory _setFingerCount:](self, "_setFingerCount:", [factoryCopy fingerCount]);
  if (objc_opt_respondsToSelector())
  {
    [factoryCopy tapTotalFingerCount];
  }

  if (self->_flags.tapAndHoldMode && [(VOTEventFactory *)self _tapAndHoldModeIsForScribble]&& [(VOTEventFactory *)self _isStylusGesture])
  {
    v17 = VOTLogEvent();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *v80 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Scribble: Ignoring tapping callback for stylus, because scribble was in progress.", v80, 2u);
    }

    goto LABEL_129;
  }

  [(VOTEventFactory *)self _cancelTapAndHold:CGPointZero.x, CGPointZero.y];
  _currentGesturedTextInputManager = [(VOTEventFactory *)self _currentGesturedTextInputManager];
  v17 = _currentGesturedTextInputManager;
  if (_currentGesturedTextInputManager && ([_currentGesturedTextInputManager processTapWithFingerCount:self->_fingerCount]& 1) != 0)
  {
    goto LABEL_129;
  }

  inDirectInteractionTypingMode = [(VOTDirectInteractionKeyboardManager *)self->_directInteractionKeyboardManager inDirectInteractionTypingMode];
  v22 = +[VOTElement systemWideElement];
  keyboardElement = [(VOTDirectInteractionKeyboardManager *)self->_directInteractionKeyboardManager keyboardElement];
  [v22 convertPoint:objc_msgSend(keyboardElement toContextId:{"windowContextId"), v10, v12}];
  v25 = v24;
  v27 = v26;

  if (inDirectInteractionTypingMode)
  {
    [(VOTDirectInteractionKeyboardManager *)self->_directInteractionKeyboardManager gestureKeyboardRegion];
    v85.x = v25;
    v85.y = v27;
    if (CGRectContainsPoint(v86, v85) && (![(VOTDirectInteractionKeyboardManager *)self->_directInteractionKeyboardManager isEmojiKeyboard]|| [(VOTDirectInteractionKeyboardManager *)self->_directInteractionKeyboardManager isEmojiKey]))
    {
      v28 = [(VOTEventFactory *)self _handleGestureKeyboardTappingCallback:v15 fingerCount:self->_fingerCount isDown:tapIsDown originalLocation:v10 convertedLocation:v12, v25, v27];
      if (v28)
      {
        v29 = v28;
        v30 = [NSValue valueWithPoint:v25, v27];
        [v29 setObject:v30 forIndex:115];

        [(VOTEventFactory *)self processEvent:v29];
        goto LABEL_129;
      }
    }
  }

  if (v15 == 1)
  {
    fingerCount = self->_fingerCount;
    if (fingerCount != 3)
    {
      if (fingerCount != 2)
      {
        if (fingerCount == 1)
        {
          if (self->_flags.sendingToNativeSlide)
          {
            goto LABEL_129;
          }

          v32 = [VOTEvent touchEventWithCommand:kVOTEventCommandTracking info:0];
          [v32 setTouchPoint:v10, v12];
          [factoryCopy rawLocation];
          [v32 setTouchRawLocation:?];
          [v32 setTouchForce:v14];
          if (v32)
          {
            [(VOTEventFactory *)self processEvent:v32];
          }

          [(SCRCGestureFactory *)self->_gestureFactory rawLocation];
          [(VOTEventFactory *)self _processIdle:sub_1000517DC(v33)];
          goto LABEL_124;
        }

        if (!((fingerCount != 4) | tapIsDown & 1))
        {
          v47 = +[VOSGesture FourFingerSingleTap];
          _commandResolver = [(VOTEventFactory *)self _commandResolver];
          v32 = [userCommandManager eventForTouchGesture:v47 resolver:_commandResolver];

          if (!v32)
          {
            [factoryCopy tapPoint];
            -[VOTEventFactory adjustedPointForFactoryPoint:forOrientation:](self, "adjustedPointForFactoryPoint:forOrientation:", [factoryCopy orientation], v49, v50);
            v52 = v51;
            v54 = v53;
            if (AXDeviceIsPad() && fabs(v54 + -0.5) <= fabs(v52 + -0.5))
            {
              if (v52 >= 0.5)
              {
                v55 = &kVOTEventCommandRightElementCommunity;
              }

              else
              {
                v55 = &kVOTEventCommandLeftElementCommunity;
              }
            }

            else if (v54 >= 0.5)
            {
              v55 = &kVOTEventCommandLastElement;
            }

            else
            {
              v55 = &kVOTEventCommandFirstElement;
            }

            goto LABEL_134;
          }

LABEL_123:
          [(VOTEventFactory *)self processEvent:v32];
LABEL_124:

          goto LABEL_125;
        }

        goto LABEL_125;
      }

      if (tapIsDown)
      {
        goto LABEL_125;
      }

      if ([(VOTEventFactory *)self _twoFingersDistant:factoryCopy])
      {
        +[VOSGesture TwoDistantFingerSingleTap];
      }

      else
      {
        +[VOSGesture TwoFingerSingleTap];
      }

      goto LABEL_50;
    }

    if (self->_flags.firedElementSummaryTimer)
    {
      if (tapIsDown)
      {
        goto LABEL_125;
      }

      v32 = 0;
LABEL_88:
      self->_flags.firedElementSummaryTimer = 0;
      if (!v32)
      {
        goto LABEL_125;
      }

      goto LABEL_123;
    }

    elementSummaryTimer = self->_elementSummaryTimer;
    if ((tapIsDown & 1) == 0)
    {
      [(SCRCTargetSelectorTimer *)elementSummaryTimer cancel];
      v62 = +[VOSGesture ThreeFingerSingleTap];
      _commandResolver2 = [(VOTEventFactory *)self _commandResolver];
      v32 = [userCommandManager eventForTouchGesture:v62 resolver:_commandResolver2];

      goto LABEL_88;
    }

    if ([(SCRCTargetSelectorTimer *)elementSummaryTimer isPending]&& ![(SCRCTargetSelectorTimer *)self->_elementSummaryTimer isCancelled])
    {
      goto LABEL_125;
    }

    threeFingerHoldTimer = self->_elementSummaryTimer;
    v61 = 0.5;
LABEL_95:
    [(SCRCTargetSelectorTimer *)threeFingerHoldTimer dispatchAfterDelay:v61];
    goto LABEL_125;
  }

  if (v15 == 4)
  {
    v43 = self->_fingerCount;
    if (v43 != 1)
    {
      if ((v43 != 3) | tapIsDown & 1)
      {
        if ((v43 != 2) | tapIsDown & 1)
        {
          if ((v43 != 4) | tapIsDown & 1)
          {
            goto LABEL_125;
          }

          v38 = +[VOSGesture FourFingerQuadrupleTap];
        }

        else
        {
          v38 = +[VOSGesture TwoFingerQuadrupleTap];
        }
      }

      else
      {
        v38 = +[VOSGesture ThreeFingerQuadrupleTap];
      }

      goto LABEL_121;
    }

    if (tapIsDown)
    {
      goto LABEL_125;
    }

    v44 = [objc_allocWithZone(AXIndexMap) init];
    v45 = [NSValue valueWithPoint:v10, v12];
    [v44 setObject:v45 forIndex:101];

    v46 = +[VOSGesture OneFingerQuadrupleTap];
    goto LABEL_116;
  }

  if (v15 != 3)
  {
    if (v15 != 2)
    {
      goto LABEL_125;
    }

    v34 = self->_fingerCount;
    if (v34 == 3)
    {
      if ((tapIsDown & 1) == 0)
      {
        v38 = +[VOSGesture ThreeFingerDoubleTap];
        goto LABEL_121;
      }

      if ((AXDeviceIsPad() & 1) == 0)
      {
        v64 = +[AXSettings sharedInstance];
        voiceOverTouchBrailleGesturesActivationGestureEnabled = [v64 voiceOverTouchBrailleGesturesActivationGestureEnabled];

        if (!voiceOverTouchBrailleGesturesActivationGestureEnabled)
        {
          goto LABEL_125;
        }
      }

      [(SCRCTargetSelectorTimer *)self->_elementSummaryTimer cancel];
      [(SCRCTargetSelectorTimer *)self->_threeFingerHoldTimer cancel];
      self->_flags.memorizingData = 1;
      threeFingerHoldTimer = self->_threeFingerHoldTimer;
      v61 = 0.25;
      goto LABEL_95;
    }

    if (v34 == 2)
    {
      if ([(VOTEventFactory *)self _twoFingersDistant:factoryCopy])
      {
        if (tapIsDown)
        {
          goto LABEL_125;
        }

        v38 = +[VOSGesture TwoDistantFingerDoubleTap];
      }

      else
      {
        v67 = +[VOTCommandHelper commandHelper];
        helpEnabled = [v67 helpEnabled];

        if (helpEnabled)
        {
          if (tapIsDown)
          {
            v55 = &kVOTEventCommandLabelElement;
LABEL_134:
            v71 = [VOTEvent touchEventWithCommand:*v55 info:0];
LABEL_135:
            v32 = v71;
            if (!v71)
            {
              goto LABEL_125;
            }

            goto LABEL_123;
          }
        }

        else
        {
          if (tapIsDown)
          {
            [(SCRCTargetSelectorTimer *)self->_twoFingerHoldTimer cancel];
            self->_flags.memorizingData = 1;
            self->_flags.didPlayStartLabelSound = 0;
            [(VOTEventFactory *)self performSelector:"_startLabelElementSoundPlay" withObject:0 afterDelay:0.25];
            [(SCRCTargetSelectorTimer *)self->_twoFingerHoldTimer dispatchAfterDelay:1.5];
            self->_flags.twoFingerTapAndSlide = 1;
            self->_oldVolumeChangeDistance = 0.0;
            goto LABEL_125;
          }

          [(VOTEventFactory *)self _stopMemorizingSession];
        }

        v38 = +[VOSGesture TwoFingerDoubleTap];
      }

      goto LABEL_121;
    }

    if (v34 != 1)
    {
      if ((v34 != 4) | tapIsDown & 1)
      {
        if ((v34 != 5) | tapIsDown & 1)
        {
          goto LABEL_125;
        }

        v38 = +[VOSGesture FiveFingerDoubleTap];
      }

      else
      {
        v38 = +[VOSGesture FourFingerDoubleTap];
      }

      goto LABEL_121;
    }

    if (tapIsDown)
    {
      [factoryCopy multiTapFrame];
      if (!v17 && v35 < 0.330000013 && v36 < 0.330000013)
      {
        [factoryCopy tapInterval];
        if (v37 > 0.100000001 && self->_travelDistance < 0.100000001)
        {
          [(SCRCTargetSelectorTimer *)self->_tapHoldTimer dispatchAfterDelay:&__kCFBooleanTrue withObject:0.5];
        }
      }

      goto LABEL_125;
    }

    v69 = +[VOTWorkspace sharedWorkspace];
    voiceOverIsIdle = [v69 voiceOverIsIdle];

    if (voiceOverIsIdle)
    {
      v42 = &kVOTEventCommandWatchWakeDoubleTap;
      goto LABEL_109;
    }

    v44 = [objc_allocWithZone(AXIndexMap) init];
    v72 = [NSValue valueWithPoint:v10, v12];
    [v44 setObject:v72 forIndex:101];

    *&v73 = v14;
    v74 = [NSNumber numberWithFloat:v73];
    [v44 setObject:v74 forIndex:111];

    v46 = +[VOSGesture OneFingerDoubleTap];
    goto LABEL_116;
  }

  v39 = self->_fingerCount;
  if (v39 == 1)
  {
    if (tapIsDown)
    {
      goto LABEL_125;
    }

    v40 = +[VOTWorkspace sharedWorkspace];
    voiceOverIsIdle2 = [v40 voiceOverIsIdle];

    if (voiceOverIsIdle2)
    {
      v42 = &kVOTEventCommandWatchWakeTripleTap;
LABEL_109:
      v71 = [VOTEvent internalEventWithCommand:*v42 info:0];
      goto LABEL_135;
    }

    v44 = [objc_allocWithZone(AXIndexMap) init];
    v66 = [NSValue valueWithPoint:v10, v12];
    [v44 setObject:v66 forIndex:101];

    v46 = +[VOSGesture OneFingerTripleTap];
LABEL_116:
    _commandResolver4 = v46;
    _commandResolver3 = [(VOTEventFactory *)self _commandResolver];
    v32 = [userCommandManager eventForTouchGesture:_commandResolver4 resolver:_commandResolver3 info:v44];

    goto LABEL_122;
  }

  if (!((v39 != 3) | tapIsDown & 1))
  {
    v38 = +[VOSGesture ThreeFingerTripleTap];
    goto LABEL_121;
  }

  if (!((v39 != 2) | tapIsDown & 1))
  {
    if ([(VOTEventFactory *)self _twoFingersDistant:factoryCopy])
    {
      +[VOSGesture TwoDistantFingerTripleTap];
    }

    else
    {
      +[VOSGesture TwoFingerTripleTap];
    }

    v38 = LABEL_50:;
LABEL_121:
    v44 = v38;
    _commandResolver4 = [(VOTEventFactory *)self _commandResolver];
    v32 = [userCommandManager eventForTouchGesture:v44 resolver:_commandResolver4];
LABEL_122:

    if (v32)
    {
      goto LABEL_123;
    }

    goto LABEL_125;
  }

  if (!((v39 != 4) | tapIsDown & 1))
  {
    v56 = +[VOSGesture FourFingerTripleTap];
    _commandResolver5 = [(VOTEventFactory *)self _commandResolver];
    v32 = [userCommandManager eventForTouchGesture:v56 resolver:_commandResolver5];

    if (v32)
    {
      goto LABEL_123;
    }

    if ([VOTSharedWorkspace isInternalInstall])
    {
      v58 = AXPidForLaunchLabel();
      if (v58 < 0)
      {
        v32 = VOTLogCommon();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_10012E3A4();
        }

        goto LABEL_124;
      }

      kill(v58, 15);
    }
  }

LABEL_125:
  v77 = VOTLogEvent();
  if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
  {
    v78 = self->_fingerCount;
    v79 = @"UP";
    *v80 = 134218498;
    if (tapIsDown)
    {
      v79 = @"DOWN";
    }

    *&v80[4] = v78;
    v81 = 2048;
    v82 = v15;
    v83 = 2114;
    v84 = v79;
    _os_log_debug_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEBUG, "fingerCount: %ld tapCount: %ld %{public}@", v80, 0x20u);
  }

  if ((tapIsDown & 1) == 0)
  {
    [(VOTEventFactory *)self _setFingerCount:0];
  }

  [(SCRCTargetSelectorTimer *)self->_wakeTapTimer cancel];
  self->_watchWakeTapCount = 0;
  [(NSMutableArray *)self->_snarfedWatchWakeRecords removeAllObjects];
LABEL_129:
}

- (BOOL)_twoFingersDistant:(id)distant
{
  distantCopy = distant;
  [distantCopy rawLocation];
  v5 = v4;
  v7 = v6;
  [distantCopy rawAverageLocation];
  v9 = v8;
  v11 = v10;

  v12 = vabdd_f64(v7, v11);
  v13 = v12 + v12;
  IsPad = AXDeviceIsPad();
  v15 = vabdd_f64(v5, v9);
  v16 = fmax(v13, v15 + v15) > 0.5;
  if (IsPad)
  {
    return v16;
  }

  else
  {
    return v13 > 0.5;
  }
}

- (CGPoint)adjustedPointForFactoryPoint:(CGPoint)point forOrientation:(int64_t)orientation
{
  v4 = 1.0 - point.x;
  if (orientation == 1)
  {
    y = 1.0 - point.y;
  }

  else
  {
    y = point.y;
  }

  if (orientation == 1)
  {
    x = 1.0 - point.x;
  }

  else
  {
    x = point.x;
  }

  if (orientation == 2)
  {
    v7 = 1.0 - point.y;
  }

  else
  {
    point.x = y;
    v7 = x;
  }

  if (orientation == 3)
  {
    v8 = v4;
  }

  else
  {
    v8 = point.x;
  }

  if (orientation == 3)
  {
    v9 = point.y;
  }

  else
  {
    v9 = v7;
  }

  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (void)_feedEventToHandwritingRecognition:(id)recognition
{
  recognitionCopy = recognition;
  _currentGesturedTextInputManager = [(VOTEventFactory *)self _currentGesturedTextInputManager];
  handwritingManager = [(VOTEventFactory *)self handwritingManager];
  if (_currentGesturedTextInputManager != handwritingManager || [recognitionCopy fingerCount] > 1)
  {

LABEL_4:
    _handwritingCaptureTimer = [(VOTEventFactory *)self _handwritingCaptureTimer];
    [_handwritingCaptureTimer cancel];
    goto LABEL_5;
  }

  isCancelEvent = [recognitionCopy isCancelEvent];

  if (isCancelEvent)
  {
    goto LABEL_4;
  }

  _handwritingCaptureTimer = [(VOTEventFactory *)self handwritingManager];
  if (![recognitionCopy isLiftEvent])
  {
    _handwritingCaptureTimer2 = [(VOTEventFactory *)self _handwritingCaptureTimer];
    [_handwritingCaptureTimer2 cancel];

    eventRepresentation = [recognitionCopy eventRepresentation];
    handInfo = [eventRepresentation handInfo];
    paths = [handInfo paths];
    firstPath = [paths firstPath];
    [firstPath pathLocation];
    v17 = v16;
    v19 = v18;

    handwritingManager2 = [(VOTEventFactory *)self handwritingManager];
    [handwritingManager2 addPointToSession:{v17, v19}];

    if ([_handwritingCaptureTimer state])
    {
      if ([_handwritingCaptureTimer state] != 2)
      {
LABEL_16:

        goto LABEL_5;
      }

      v21 = 4;
    }

    else
    {
      v21 = 1;
    }

    [_handwritingCaptureTimer setState:v21];
    goto LABEL_16;
  }

  [_handwritingCaptureTimer endCurrentStroke];
  _handwritingCaptureTimer3 = [(VOTEventFactory *)self _handwritingCaptureTimer];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000CA0A0;
  v22[3] = &unk_1001C76E8;
  v10 = _handwritingCaptureTimer;
  v23 = v10;
  [_handwritingCaptureTimer3 afterDelay:v22 processBlock:0.25];

  if ([v10 state] == 1)
  {
    [v10 setState:2];
  }

LABEL_5:
}

- (BOOL)_shouldUseGesturedTextInputManager
{
  _currentGesturedTextInputManager = [(VOTEventFactory *)self _currentGesturedTextInputManager];
  v3 = _currentGesturedTextInputManager != 0;

  return v3;
}

- (BOOL)_handleDirectInteractionEvent:(id)event
{
  eventCopy = event;
  if (-[VOTEventFactory _willStartEdgePanGestureForEvent:](self, "_willStartEdgePanGestureForEvent:", eventCopy) || self->_edgePanGestureState || (-[VOTEventFactory directInteractionKeyboardManager](self, "directInteractionKeyboardManager"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 inDirectInteractionTypingMode], v5, (v6 & 1) != 0) || (WeakRetained = objc_loadWeakRetained(&self->_directTouchManager), v8 = objc_msgSend(WeakRetained, "inDirectTouchMode"), WeakRetained, !v8))
  {
    v58 = 0;
    goto LABEL_53;
  }

  v9 = self->_directInteractionElements;
  if (![(NSArray *)v9 count])
  {
    v58 = 0;
    goto LABEL_64;
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = v9;
  v10 = [(NSArray *)obj countByEnumeratingWithState:&v83 objects:v89 count:16];
  if (!v10)
  {
    v58 = 0;
    goto LABEL_63;
  }

  v11 = v10;
  v72 = v9;
  v12 = 0;
  v74 = *v84;
LABEL_8:
  v13 = 0;
  while (1)
  {
    if (*v84 != v74)
    {
      objc_enumerationMutation(obj);
    }

    v14 = *(*(&v83 + 1) + 8 * v13);
    [v14 frame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = +[VOTElement systemWideElement];
    [v23 convertRect:objc_msgSend(v14 fromContextId:{"windowContextId"), v16, v18, v20, v22}];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    sendingToDirectTouch = self->_flags.sendingToDirectTouch;
    if (([v14 directTouchOptions] & 2) != 0 && !objc_msgSend(v14, "activatedDirectTouchThatRequiredActivation"))
    {
      goto LABEL_46;
    }

    if (sendingToDirectTouch)
    {
      v33 = 1;
      if (v12)
      {
        goto LABEL_44;
      }
    }

    else if (-[VOTGestureEvent isDownEvent](eventCopy, "isDownEvent") || (v34 = objc_loadWeakRetained(&self->_directTouchManager), v35 = [v34 shouldTurnTrackingIntoDirectTouch], v34, v35))
    {
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      fingers = [(VOTGestureEvent *)eventCopy fingers];
      v37 = [fingers countByEnumeratingWithState:&v79 objects:v88 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v80;
        while (2)
        {
          for (i = 0; i != v38; i = i + 1)
          {
            if (*v80 != v39)
            {
              objc_enumerationMutation(fingers);
            }

            [*(*(&v79 + 1) + 8 * i) location];
            v90.x = sub_1000517DC(v41);
            v90.y = v42;
            v92.origin.x = v25;
            v92.origin.y = v27;
            v92.size.width = v29;
            v92.size.height = v31;
            if (CGRectContainsPoint(v92, v90))
            {
              currentElement = [(VOTEventFactory *)self currentElement];
              v44 = [currentElement isEqual:v14];

              if ((v44 & 1) == 0)
              {
                v45 = objc_loadWeakRetained(&self->_directTouchManager);
                [v45 setDirectInteractionElement:v14];
              }

              [(VOTEventFactory *)self setLastTouchedDirectTouchElement:v14];
              v33 = 1;
              goto LABEL_30;
            }
          }

          v38 = [fingers countByEnumeratingWithState:&v79 objects:v88 count:16];
          if (v38)
          {
            continue;
          }

          break;
        }
      }

      v33 = 0;
LABEL_30:

      v46 = objc_loadWeakRetained(&self->_directTouchManager);
      shouldTurnTrackingIntoDirectTouch = [v46 shouldTurnTrackingIntoDirectTouch];

      if (shouldTurnTrackingIntoDirectTouch)
      {
        v48 = self->_lastDownEvent;

        v49 = objc_loadWeakRetained(&self->_directTouchManager);
        [v49 setShouldTurnTrackingIntoDirectTouch:0];

        eventCopy = v48;
      }

      if (v12)
      {
LABEL_44:
        v12 = 1;
        goto LABEL_45;
      }
    }

    else
    {
      v33 = 0;
      if (v12)
      {
        goto LABEL_44;
      }
    }

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    fingers2 = [(VOTGestureEvent *)eventCopy fingers];
    v51 = [fingers2 countByEnumeratingWithState:&v75 objects:v87 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v76;
      while (2)
      {
        for (j = 0; j != v52; j = j + 1)
        {
          if (*v76 != v53)
          {
            objc_enumerationMutation(fingers2);
          }

          [*(*(&v75 + 1) + 8 * j) location];
          v91.x = sub_1000517DC(v55);
          v91.y = v56;
          v93.origin.x = v25;
          v93.origin.y = v27;
          v93.size.width = v29;
          v93.size.height = v31;
          if (CGRectContainsPoint(v93, v91))
          {
            [(VOTEventFactory *)self setLastTouchedDirectTouchElement:v14];

            goto LABEL_44;
          }
        }

        v52 = [fingers2 countByEnumeratingWithState:&v75 objects:v87 count:16];
        if (v52)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
    if (!v33)
    {
      goto LABEL_46;
    }

LABEL_45:
    if (!self->_flags.allowingSystemGesturePassthrough)
    {
      break;
    }

LABEL_46:
    if (++v13 == v11)
    {
      v57 = [(NSArray *)obj countByEnumeratingWithState:&v83 objects:v89 count:16];
      v11 = v57;
      if (!v57)
      {
        v58 = 0;
        v9 = v72;
        goto LABEL_63;
      }

      goto LABEL_8;
    }
  }

  v60 = objc_loadWeakRetained(&self->_elementManager);
  currentElement2 = [v60 currentElement];

  if ([(NSArray *)self->_directInteractionElements containsObject:currentElement2])
  {
    v9 = v72;
  }

  else
  {
    directInteractionElements = self->_directInteractionElements;
    lastTouchedDirectTouchElement = [(VOTEventFactory *)self lastTouchedDirectTouchElement];
    LODWORD(directInteractionElements) = [(NSArray *)directInteractionElements containsObject:lastTouchedDirectTouchElement];

    v9 = v72;
    if (directInteractionElements)
    {
      [(VOTEventFactory *)self lastTouchedDirectTouchElement];
    }

    else
    {
      LOBYTE(v71) = 1;
      _AXLogWithFacility();
      [(NSArray *)self->_directInteractionElements firstObject:v71];
    }
    v64 = ;

    currentElement2 = v64;
  }

  windowContextId = [currentElement2 windowContextId];
  eventRepresentation = [(VOTGestureEvent *)eventCopy eventRepresentation];
  [eventRepresentation setContextId:windowContextId];

  eventRepresentation2 = [(VOTGestureEvent *)eventCopy eventRepresentation];
  [eventRepresentation2 setSenderID:0x8000000817319373];

  v68 = +[AXBackBoardServer server];
  eventRepresentation3 = [(VOTGestureEvent *)eventCopy eventRepresentation];
  v58 = 1;
  v70 = [eventRepresentation3 normalizedEventRepresentation:0 scale:1];
  [v68 postEvent:v70 systemEvent:0];

  self->_flags.sendingToDirectTouch = 1;
LABEL_63:

LABEL_64:
LABEL_53:

  return v58;
}

- (BOOL)_gestureEventIsInvalid:(id)invalid
{
  invalidCopy = invalid;
  if ([invalidCopy isLiftEvent])
  {
    if (!self->_flags.gestureSawDownEvent)
    {
      isNonLiftingInRangeEvent = 1;
      goto LABEL_9;
    }

    self->_flags.gestureSawDownEvent = 0;
  }

  if (([invalidCopy isDownEvent] & 1) != 0 || objc_msgSend(invalidCopy, "isMovedEvent"))
  {
    self->_flags.gestureSawDownEvent = 1;
  }

  isNonLiftingInRangeEvent = [invalidCopy isNonLiftingInRangeEvent];
LABEL_9:

  return isNonLiftingInRangeEvent;
}

- (void)updateOrientation
{
  directInteractionKeyboardManager = [(VOTEventFactory *)self directInteractionKeyboardManager];
  [directInteractionKeyboardManager updateKeyboardElement];
}

- (id)_touchLocationsForGestureEvent:(id)event
{
  eventCopy = event;
  v5 = +[NSMutableDictionary dictionary];
  if (([eventCopy isLiftEvent] & 1) == 0 && (objc_msgSend(eventCopy, "isCancelEvent") & 1) == 0)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = eventCopy;
    eventRepresentation = [eventCopy eventRepresentation];
    handInfo = [eventRepresentation handInfo];
    paths = [handInfo paths];

    v9 = [paths countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(paths);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          [v13 pathLocation];
          v16 = [NSValue valueWithPoint:sub_10005199C([(SCRCGestureFactory *)self->_gestureFactory orientation], v14, v15)];
          v17 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v13 pathIndex]);
          [v5 setObject:v16 forKeyedSubscript:v17];
        }

        v10 = [paths countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    eventCopy = v19;
  }

  return v5;
}

- (BOOL)_willStartEdgePanGestureForEvent:(id)event
{
  eventCopy = event;
  if (([VOTSharedWorkspace supportsHomeGestures] & 1) != 0 || objc_msgSend(VOTSharedWorkspace, "inUnitTestMode"))
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    fingers = [eventCopy fingers];
    v6 = [fingers countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(fingers);
          }

          v10 = *(*(&v22 + 1) + 8 * i);
          orientation = [(SCRCGestureFactory *)self->_gestureFactory orientation];
          [v10 location];
          [(VOTEventFactory *)self adjustedPointForFactoryPoint:orientation forOrientation:?];
          v13 = v12;
          [(VOTEventFactory *)self _edgePanGestureStartThreshold];
          v15 = v14;
          reachabilityActive = [VOTSharedWorkspace reachabilityActive];
          v17 = v15;
          if (reachabilityActive)
          {
            [VOTSharedWorkspace reachabilityOffset];
            v17 = v15 + v18;
          }

          if (!self->_edgePanGestureState)
          {
            v17 = 1.0 - v17;
            if (1.0 - v13 <= v15 || 1.0 - v13 >= v17)
            {
              v20 = 1;
              goto LABEL_19;
            }
          }
        }

        v7 = [fingers countByEnumeratingWithState:&v22 objects:v26 count:{16, v17}];
      }

      while (v7);
    }

    v20 = 0;
LABEL_19:
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (double)_edgeGestureScaleFactor:(BOOL)factor
{
  factorCopy = factor;
  if (!factor && AXDeviceIsPhone())
  {
    AXDeviceSizeMM();
    v6 = fmax(v4, v5);
    return 135.0 / v6;
  }

  v7 = 1.0;
  if (AXDeviceIsPad())
  {
    AXDeviceSizeMM();
    v10 = fmin(v8, v9);
    v6 = fmax(v8, v9);
    if (factorCopy)
    {
      v6 = v10;
    }

    return 135.0 / v6;
  }

  return v7;
}

- (id)_updateEdgePanGestureForState:(int64_t)state
{
  if (![VOTSharedWorkspace supportsHomeGestures])
  {
    goto LABEL_43;
  }

  orientation = [(SCRCGestureFactory *)self->_gestureFactory orientation];
  v6 = orientation;
  v7 = 0;
  if (state > 1)
  {
    if (state != 2)
    {
      if (state != 8)
      {
        goto LABEL_44;
      }

      [(VOTEventFactory *)self _transitionToGestureState:0];
      goto LABEL_43;
    }

    if ((self->_edgePanGestureState & 0xFFFFFFFFFFFFFFF7) == 0)
    {
LABEL_43:
      v7 = 0;
      goto LABEL_44;
    }

    v24 = orientation & 0xFFFFFFFFFFFFFFFELL;
    y = self->_edgePanGestureStartPoint.y;
    helpEnabled = y != 1.0;
    [(SCRCGestureFactory *)self->_gestureFactory endLocation];
    [(VOTEventFactory *)self adjustedPointForFactoryPoint:v6 forOrientation:?];
    v28 = v27;
    v30 = v29;
    x = self->_edgePanGestureStartPoint.x;
    v31 = self->_edgePanGestureStartPoint.y;
    v33 = v31 - v29;
    v34 = vabdd_f64(v31, v30);
    if (y != 1.0 && v33 > 0.0)
    {
      v35 = 0.0;
    }

    else
    {
      v35 = v34;
    }

    Current = CFAbsoluteTimeGetCurrent();
    edgePanGestureState = self->_edgePanGestureState;
    [(SCRCGestureFactory *)self->_gestureFactory startLocation];
    v39 = v38;
    v41 = v40;
    [(SCRCGestureFactory *)self->_gestureFactory endLocation];
    v44 = v41 == v43 && v39 == v42;
    if (v24 == 2)
    {
      IsPad = AXDeviceIsPad();
      v46 = 0.100000001;
      if (IsPad)
      {
        v46 = 0.300000012;
      }
    }

    else
    {
      v46 = 0.300000012;
    }

    v47 = vabdd_f64(x, v28);
    if (edgePanGestureState == 1)
    {
      v48 = Current - self->_edgePanGestureStartTime;
      v49 = v48 > 1.5;
      if (v48 > 0.5)
      {
        v50 = v35 < 0.200000003 && v44;
LABEL_38:
        if (v47 > v46 || v49 || v50)
        {
          [(VOTEventFactory *)self _transitionToGestureState:8];
        }

        if (self->_edgePanGestureState == 8)
        {
          goto LABEL_43;
        }

        [(VOTEventFactory *)self _edgeGestureScaleFactor:v24 == 2];
        v53 = v52 * 0.5;
        [(VOTEventFactory *)self _edgeGestureScaleFactor:v24 == 2];
        v56 = v55 * 0.200000003;
        if (y != 1.0 && [VOTSharedWorkspace reachabilityActive])
        {
          v53 = v53 / 1.5;
          v56 = v56 / 1.5;
        }

        if (v35 >= v53)
        {
          v58 = +[AXSpringBoardServer server];
          v59 = [v58 isScreenLockedWithPasscode:0];

          v60 = +[AXSpringBoardServer server];
          if ([v60 isNotificationCenterVisible])
          {
            isControlCenterVisible = 1;
          }

          else
          {
            v62 = +[AXSpringBoardServer server];
            isControlCenterVisible = [v62 isControlCenterVisible];
          }

          if (y != 1.0 && isControlCenterVisible)
          {
            v63 = +[VOTCommandHelper commandHelper];
            helpEnabled = [v63 helpEnabled];
          }

          if (y != 1.0 || ((v59 ^ 1) & 1) != 0)
          {
            v67 = y == 1.0;
            v66 = (y == 1.0) | helpEnabled;
            v68 = 4;
            v69 = 7;
          }

          else
          {
            v64 = +[VOTCommandHelper commandHelper];
            helpEnabled2 = [v64 helpEnabled];

            v66 = helpEnabled2 | helpEnabled;
            v67 = helpEnabled2 == 0;
            v68 = 7;
            v69 = 4;
          }

          if (v67)
          {
            v54 = v68;
          }

          else
          {
            v54 = v69;
          }

          if ((v66 & 1) == 0)
          {
            goto LABEL_80;
          }
        }

        else
        {
          if (v35 < v56)
          {
            if (self->_edgePanGestureState != 1)
            {
              if (AXDeviceIsPhone())
              {
                v57 = 5;
              }

              else
              {
                v57 = 9;
              }

              if (y != 1.0)
              {
                if (AXDeviceIsPhone())
                {
                  v57 = 2;
                }

                else
                {
                  v57 = 10;
                }
              }

              if (v44)
              {
                [(VOTEventFactory *)self _transitionToGestureState:2];
LABEL_81:
                if (self->_edgePanGesturePausePoint.x == CGPointZero.x && self->_edgePanGesturePausePoint.y == CGPointZero.y)
                {
                  self->_edgePanGesturePausePoint.x = v28;
                  self->_edgePanGesturePausePoint.y = v30;
                  [(SCRCTargetSelectorTimer *)self->_edgePanGestureSpeakHintTimer dispatchAfterDelay:0.800000012];
                  goto LABEL_43;
                }

                goto LABEL_95;
              }

              v70 = self->_edgePanGestureState;
              if (v70 != v57)
              {
                if (v24 == 2)
                {
                  v71 = 0;
                }

                else
                {
                  v71 = SBSIsReachabilityEnabled() != 0;
                  v70 = self->_edgePanGestureState;
                }

                if (v70 == 2 || ((v57 - 9) < 2 ? (v72 = 1) : (v72 = v71), (v72 & 1) == 0))
                {
                  v57 = 2;
                }

                [(VOTEventFactory *)self _transitionToGestureState:v57];
              }

LABEL_95:
              if (vabdd_f64(self->_edgePanGesturePausePoint.y, v30) <= 0.00999999978 && vabdd_f64(self->_edgePanGesturePausePoint.x, v28) <= 0.00999999978)
              {
                goto LABEL_43;
              }

              [(SCRCTargetSelectorTimer *)self->_edgePanGestureSpeakHintTimer cancel];
              v7 = 0;
              self->_edgePanGesturePausePoint = CGPointZero;
              goto LABEL_44;
            }

LABEL_80:
            if (v44)
            {
              goto LABEL_81;
            }

            goto LABEL_95;
          }

          if (y == 1.0)
          {
            v54 = 3;
          }

          else
          {
            v54 = 6;
          }
        }

        [(VOTEventFactory *)self _transitionToGestureState:v54];
        goto LABEL_80;
      }
    }

    else
    {
      v49 = 0;
    }

    v50 = 0;
    goto LABEL_38;
  }

  if (!state)
  {
    v23 = [(VOTEventFactory *)self votActionForEdgePanGestureState:self->_edgePanGestureState];
    if (v23)
    {
      [(VOTEventFactory *)self _playFeedbackForGestureState:self->_edgePanGestureState gestureComplete:1];
      v7 = [VOTEvent touchEventWithCommand:v23 info:0];
    }

    else
    {
      v7 = 0;
    }

    [(VOTEventFactory *)self _transitionToGestureState:0];

    goto LABEL_44;
  }

  if (state == 1)
  {
    [(SCRCGestureFactory *)self->_gestureFactory startLocation];
    [(VOTEventFactory *)self adjustedPointForFactoryPoint:v6 forOrientation:?];
    v9 = v8;
    v11 = v10;
    [(VOTEventFactory *)self _edgePanGestureStartThreshold];
    v13 = v12;
    reachabilityActive = [VOTSharedWorkspace reachabilityActive];
    v15 = reachabilityActive;
    v16 = v13;
    if (reachabilityActive)
    {
      [VOTSharedWorkspace reachabilityOffset];
      v16 = v13 + v17;
    }

    v7 = 0;
    v18 = 1.0 - v11 <= v13;
    if (1.0 - v11 >= 1.0 - v16)
    {
      v18 = 1;
    }

    if (!self->_edgePanGestureState && v18)
    {
      v73[1] = 3221225472;
      v73[0] = _NSConcreteStackBlock;
      v73[2] = sub_1000CB21C;
      v73[3] = &unk_1001CA9C8;
      v73[4] = self;
      v73[5] = v9;
      *&v73[6] = v11;
      v74 = 1.0 - v11 <= v13;
      v75 = v15;
      v19 = objc_retainBlock(v73);
      (v19[2])(v19, v20, v21, v22);

      goto LABEL_43;
    }
  }

LABEL_44:

  return v7;
}

- (void)_transitionToGestureState:(unint64_t)state playHaptic:(BOOL)haptic
{
  if (self->_edgePanGestureState != state)
  {
    hapticCopy = haptic;
    v7 = VOTLogEvent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (state > 0xA)
      {
        v8 = &stru_1001CBF90;
      }

      else
      {
        v8 = off_1001CAA30[state];
      }

      v9 = NSStringFromBOOL();
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "_transitionToGestureState=%@, playHaptic=%@", &v10, 0x16u);
    }

    self->_edgePanGestureState = state;
    if (hapticCopy)
    {
      [(VOTEventFactory *)self _playFeedbackForGestureState:state gestureComplete:0];
    }
  }
}

- (void)_playFeedbackForGestureState:(unint64_t)state gestureComplete:(BOOL)complete
{
  v4 = 0;
  v5 = 0;
  v6 = -1;
  if (state <= 5)
  {
    if (state > 2)
    {
      if (state != 3)
      {
        if (state != 4)
        {
          goto LABEL_26;
        }

        goto LABEL_34;
      }

      goto LABEL_27;
    }

    v8 = -1;
    v10 = @"Sounds/VOTOrbSound1-OrbHW.aiff";
    if (state == 2)
    {
      v11 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    if (state == 2)
    {
      v6 = 8;
    }

    v7 = state == 1;
    if (state == 1)
    {
      v5 = @"Sounds/VOTOrbSound1-OrbHW.aiff";
    }

    else
    {
      v5 = v10;
    }

    if (state == 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = v11;
    }

    goto LABEL_21;
  }

  if (state <= 8)
  {
    if (state == 6)
    {
LABEL_27:
      v4 = 1;
      v5 = @"Sounds/VOTOrbSound2-OrbHW.aiff";
      v6 = 6;
      goto LABEL_28;
    }

    if (state == 7)
    {
LABEL_34:
      v5 = @"Sounds/VOTOrbSound3-OrbHW.aiff";
      v6 = 7;
      goto LABEL_35;
    }

    v7 = state == 8;
    v8 = 11;
    v5 = 0;
    v9 = 1;
LABEL_21:
    if (v7)
    {
      v6 = v8;
    }

    if (v9)
    {
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  if (state - 9 < 2)
  {
LABEL_26:
    v5 = 0;
    v6 = 8;
    goto LABEL_35;
  }

LABEL_28:
  if (v4)
  {
    goto LABEL_35;
  }

LABEL_29:
  if (!complete)
  {
    if (!v5)
    {
      return;
    }

    goto LABEL_31;
  }

LABEL_35:
  if (complete)
  {
    v5 = 0;
    v12 = 12;
  }

  else
  {
    v12 = v6;
  }

  v13 = +[AXHapticFeedbackManager sharedManager];
  [v13 playHapticFeedbackForType:v12];

  if (v5)
  {
LABEL_31:
    v14 = +[VOTOutputManager outputManager];
    [v14 playSoundFast:v5];
  }
}

- (void)_processGestureEvent:(id)event
{
  eventCopy = event;
  objc_storeStrong(&self->_currentGestureEvent, event);
  _currentGesturedTextInputManager = [(VOTEventFactory *)self _currentGesturedTextInputManager];
  v7 = +[VOTWorkspace sharedWorkspace];
  userCommandManager = [v7 userCommandManager];

  if (!_currentGesturedTextInputManager && [(VOTEventFactory *)self _handleDirectInteractionEvent:eventCopy])
  {
    if (([eventCopy isCancelEvent] & 1) != 0 || objc_msgSend(eventCopy, "isLiftEvent"))
    {
      self->_flags.sendingToDirectTouch = 0;
    }

    if (CFAbsoluteTimeGetCurrent() - *&qword_1001FE358 > 4.0)
    {
      v9 = +[VOTUserEventManager sharedInstance];
      [v9 userEventOccurred];

      qword_1001FE358 = CFAbsoluteTimeGetCurrent();
    }

    goto LABEL_251;
  }

  if ([(VOTEventFactory *)self _gestureEventIsInvalid:eventCopy])
  {
    goto LABEL_251;
  }

  if ([(VOTEventFactory *)self _handleOrbEvent:eventCopy])
  {
    v10 = 1;
  }

  else
  {
    [(VOTEventFactory *)self _feedEventToHandwritingRecognition:eventCopy];
    _brailleGestureManager = [(VOTEventFactory *)self _brailleGestureManager];

    if (_currentGesturedTextInputManager == _brailleGestureManager)
    {
      _brailleGestureManager2 = [(VOTEventFactory *)self _brailleGestureManager];
      v13 = [(VOTEventFactory *)self _touchLocationsForGestureEvent:eventCopy];
      v10 = [_brailleGestureManager2 processTouchLocations:v13 isFirstTouch:objc_msgSend(eventCopy isCancelTouch:{"isDownEvent"), objc_msgSend(eventCopy, "isCancelEvent")}];
    }

    else
    {
      v10 = 0;
    }
  }

  [(SCRCGestureFactory *)self->_gestureFactory setSplitFlickEnabled:[(VOTEventFactory *)self brailleInputActive]];
  [(SCRCGestureFactory *)self->_gestureFactory setUsesAbsoluteDistanceForPinch:[(VOTEventFactory *)self brailleInputActive]];
  [(SCRCGestureFactory *)self->_gestureFactory handleGestureEvent:eventCopy];
  if (v10)
  {
    [(VOTEventFactory *)self resetEventFactory];
    [(VOTEventFactory *)self _setFingerCount:0];
    goto LABEL_251;
  }

  [(SCRCGestureFactory *)self->_gestureFactory distance];
  v15 = v14;
  if (!self->_flags.tapAndHoldMode || -[VOTEventFactory _tapAndHoldModeIsForScribble](self, "_tapAndHoldModeIsForScribble") && ![eventCopy isStylusEvent])
  {
    gestureState = [(SCRCGestureFactory *)self->_gestureFactory gestureState];
    direction = [(SCRCGestureFactory *)self->_gestureFactory direction];
    fingerCount = [(SCRCGestureFactory *)self->_gestureFactory fingerCount];
    fingerCount2 = [eventCopy fingerCount];
    if ([eventCopy isDownEvent])
    {
      objc_storeStrong(&self->_lastDownEvent, event);
      v20 = AXLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        lastDownEvent = self->_lastDownEvent;
        *buf = 138412290;
        *&buf[4] = lastDownEvent;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Last down %@", buf, 0xCu);
      }

      self->_flags.hasSentFirstTrackingEventForGesture = 0;
    }

    if (fingerCount2)
    {
      [(SCRCGestureFactory *)self->_gestureFactory distance];
      self->_travelDistance = v22 + self->_travelDistance;
    }

    else
    {
      self->_travelDistance = 0.0;
    }

    if (self->_flags.memorizingData && [eventCopy fingerCount] != 2)
    {
      [(VOTEventFactory *)self _stopMemorizingSession];
      v28 = 0;
LABEL_250:
      self->_state = gestureState;
      self->_direction = direction;
      [(VOTEventFactory *)self _commitDeferredZoomInfoIfAppropriate];

      goto LABEL_251;
    }

    v216 = direction;
    [(SCRCGestureFactory *)self->_gestureFactory rawAverageLocation];
    [(VOTEventFactory *)self convertDevicePointToZoomedPoint:sub_1000517DC(v23)];
    v26 = -[VOTEventFactory _updateFingersInSystemControlLocation:fingerCount:isLift:](self, "_updateFingersInSystemControlLocation:fingerCount:isLift:", -[SCRCGestureFactory fingerCount](self->_gestureFactory, "fingerCount"), [eventCopy isLiftEvent], v24, v25);
    systemControlActivated = self->_systemControlActivated;
    v28 = [(VOTEventFactory *)self _updateEdgePanGestureForState:gestureState];
    v29 = 0;
    v30 = systemControlActivated | v26;
    switch(gestureState)
    {
      case 0uLL:
        v29 = 0;
        self->_rotorSoundZone = 0;
        self->_continuityZone = 0;
        goto LABEL_205;
      case 1uLL:
      case 3uLL:
        goto LABEL_205;
      case 2uLL:
        [eventCopy time];
        v77 = v76;
        if (vabdd_f64(v76, self->_lastEchoTime) <= 0.00100000005)
        {
          goto LABEL_204;
        }

        [(VOTEventFactory *)self _gestureTrackingCallbackWithFactory:self->_gestureFactory isHandlingSystemControlEvent:v30 & 1];
        self->_lastEchoTime = v77;
        v29 = 1;
        goto LABEL_205;
      case 4uLL:
        v201 = fingerCount2;
        WeakRetained = objc_loadWeakRetained(&self->_rotorManager);
        rotorEnabled = [WeakRetained rotorEnabled];

        if (!rotorEnabled)
        {
          v29 = 0;
          fingerCount2 = v201;
          goto LABEL_205;
        }

        v59 = v15;
        v60 = floorf(v59 / 0.03);
        v61 = ceilf(v59 / 0.03);
        if (v15 > 0.0)
        {
          v61 = v60;
        }

        v62 = v61;
        rotorSoundZone = self->_rotorSoundZone;
        if (rotorSoundZone <= v61)
        {
          if (rotorSoundZone >= v61)
          {
            v86 = 0;
            goto LABEL_143;
          }

          v64 = +[VOSOutputEvent NextRotorProgress];
        }

        else
        {
          v64 = +[VOSOutputEvent PreviousRotorProgress];
        }

        v86 = v64;
LABEL_143:
        self->_rotorSoundZone = v62;
        [eventCopy time];
        rotateStartTime = self->_rotateStartTime;
        if (rotateStartTime == -3061152000.0)
        {
          self->_rotateStartTime = v102;
          rotateStartTime = v102;
        }

        v104 = flt_10017E538[v102 - rotateStartTime > 0.2];
        v105 = -1;
        if (v15 > 0.0)
        {
          v105 = 1;
        }

        self->_rotateDirection = v105;
        v106 = v59 / v104;
        v107 = floorf(v106);
        v108 = ceilf(v106);
        if (v15 > 0.0)
        {
          v108 = v107;
        }

        continuityZone = self->_continuityZone;
        v213 = v108;
        if (continuityZone <= v108)
        {
          if (continuityZone >= v108)
          {
            goto LABEL_154;
          }

          v110 = v86;
          v114 = +[VOSGesture TwoFingerRotateClockwise];
          _commandResolver = [(VOTEventFactory *)self _commandResolver];
          v208 = [userCommandManager eventForTouchGesture:v114 resolver:_commandResolver];

          v113 = +[VOSOutputEvent DidSelectNextRotor];
        }

        else
        {
          v110 = v86;
          v111 = +[VOSGesture TwoFingerRotateCounterclockwise];
          _commandResolver2 = [(VOTEventFactory *)self _commandResolver];
          v208 = [userCommandManager eventForTouchGesture:v111 resolver:_commandResolver2];

          v113 = +[VOSOutputEvent DidSelectPreviousRotor];
        }

        v86 = v113;
        v28 = v208;

LABEL_154:
        fingerCount2 = v201;
        if (v86)
        {
          +[VOTOutputManager outputManager];
          v117 = v116 = v86;
          [v117 sendEvent:v116];

          v86 = v116;
        }

        self->_continuityZone = v213;
        [(VOTEventFactory *)self _stopMemorizingSession];
LABEL_157:

        goto LABEL_204;
      case 5uLL:
        if ([(VOTEventFactory *)self brailleInputActive])
        {
          goto LABEL_204;
        }

        [(SCRCGestureFactory *)self->_gestureFactory distance];
        v66 = sub_1000517F4(v65);
        startPinchDistance = self->_startPinchDistance;
        if (startPinchDistance == 0.0)
        {
          self->_startPinchDistance = v66;
          startPinchDistance = v66;
        }

        v68 = (v66 - startPinchDistance) / 20.0;
        v69 = ceilf(v68);
        v70 = floorf(v68);
        if (v15 < 0.0)
        {
          v70 = v69;
        }

        v71 = v70;
        v72 = v70;
        v73 = self->_continuityZone;
        if (v72 == v73)
        {
          goto LABEL_139;
        }

        if (v72 >= v73)
        {
          if (v72 <= v73)
          {
            goto LABEL_139;
          }

          v74 = &kVOTEventCommandSelectRight;
        }

        else
        {
          v74 = &kVOTEventCommandSelectLeft;
        }

        v97 = [VOTEvent touchEventWithCommand:*v74 info:0];

        v28 = v97;
LABEL_139:
        self->_continuityZone = v71;
LABEL_203:
        [(VOTEventFactory *)self _stopMemorizingSession];
        goto LABEL_204;
      case 6uLL:
        if (fingerCount != 2)
        {
          goto LABEL_204;
        }

        if (self->_flags.twoFingerTapAndSlide && v216 == 6)
        {
          CFAbsoluteTimeGetCurrent();
          v216 = 6;
          goto LABEL_204;
        }

        if (v216)
        {
          continuityDistance = self->_zigzag.continuityDistance;
          if (fabs(v15) >= fabs(continuityDistance))
          {
            v95 = 0;
            self->_zigzag.distanceTraveled = 0.0;
          }

          else
          {
            self->_zigzag.distanceTraveled = continuityDistance;
            if (continuityDistance <= 0.1)
            {
              if (continuityDistance >= -0.1)
              {
                v95 = 0;
              }

              else
              {
                v95 = -1;
              }
            }

            else
            {
              v95 = 1;
            }
          }

          if (v95 != self->_zigzag.direction)
          {
            count = self->_zigzag.count;
            if (!count)
            {
              [(SCRCGestureFactory *)self->_gestureFactory rawLocation];
              self->_zigzag.firstCountPoint.x = v138;
              self->_zigzag.firstCountPoint.y = v139;
              count = self->_zigzag.count;
            }

            self->_zigzag.count = count + 1;
          }

          self->_zigzag.direction = v95;
        }

        else
        {
          self->_zigzag.count = 0;
        }

        v29 = 0;
        self->_zigzag.continuityDistance = v15;
        goto LABEL_205;
      case 8uLL:
      case 9uLL:
        if ([eventCopy didFallThruToDevice])
        {
          goto LABEL_204;
        }

        v31 = fingerCount2;
        v32 = [objc_allocWithZone(AXIndexMap) init];
        [(SCRCGestureFactory *)self->_gestureFactory startLocation];
        v34 = v33;
        [(SCRCGestureFactory *)self->_gestureFactory endLocation];
        v36 = v35;
        [(SCRCGestureFactory *)self->_gestureFactory directionalSlope];
        v38 = v37;
        v39 = [NSValue valueWithPoint:sub_1000517DC((v34 + v36) * 0.5)];
        [v32 setObject:v39 forIndex:101];

        v40 = v216;
        v41 = 3;
        if (v216 != 1)
        {
          v41 = 4;
        }

        if (v38 > 0.75 && (v216 - 1) < 2)
        {
          v40 = v41;
        }

        v216 = v40;
        if (v40 > 2)
        {
          if (v40 == 4)
          {
            if (![(VOTDirectInteractionKeyboardManager *)self->_directInteractionKeyboardManager inGestureMode])
            {
              v43 = +[VOSGesture OneFingerFlickDown];
              goto LABEL_179;
            }

            v87 = &kVOTEventCommandGestureTypingPreviousSuggestion;
          }

          else
          {
            if (v40 != 3)
            {
              goto LABEL_181;
            }

            if (![(VOTDirectInteractionKeyboardManager *)self->_directInteractionKeyboardManager inGestureMode])
            {
              v43 = +[VOSGesture OneFingerFlickUp];
              goto LABEL_179;
            }

            v87 = &kVOTEventCommandGestureTypingNextSuggestion;
          }
        }

        else
        {
          if (v40 != 1)
          {
            if (v40 == 2 && ![(VOTDirectInteractionKeyboardManager *)self->_directInteractionKeyboardManager inGestureMode])
            {
              v43 = +[VOSGesture OneFingerFlickRight];
LABEL_179:
              v128 = v43;
              v215 = v43;
              _commandResolver3 = [(VOTEventFactory *)self _commandResolver];
              v96 = [userCommandManager eventForTouchGesture:v128 resolver:_commandResolver3 info:v32];

              v28 = v215;
              goto LABEL_180;
            }

LABEL_181:

LABEL_182:
            v29 = 0;
            fingerCount2 = v31;
            goto LABEL_205;
          }

          if (![(VOTDirectInteractionKeyboardManager *)self->_directInteractionKeyboardManager inGestureMode])
          {
            v43 = +[VOSGesture OneFingerFlickLeft];
            goto LABEL_179;
          }

          v87 = &kVOTEventCommandGestureTypingDelete;
        }

        v96 = [VOTEvent touchEventWithCommand:*v87 info:v32];
LABEL_180:

        v28 = v96;
        goto LABEL_181;
      case 0xAuLL:
        v31 = fingerCount2;
        v81 = objc_loadWeakRetained(&self->_rotorManager);
        rotorEnabled2 = [v81 rotorEnabled];

        if (!rotorEnabled2)
        {
          goto LABEL_182;
        }

        [eventCopy time];
        if (v83 - self->_rotateStartTime < 0.2 && !self->_continuityZone)
        {
          if (self->_rotateDirection < 0)
          {
            v143 = +[VOSGesture TwoFingerRotateCounterclockwise];
            _commandResolver4 = [(VOTEventFactory *)self _commandResolver];
            v212 = [userCommandManager eventForTouchGesture:v143 resolver:_commandResolver4];

            +[VOSOutputEvent DidSelectPreviousRotor];
          }

          else
          {
            v84 = +[VOSGesture TwoFingerRotateClockwise];
            _commandResolver5 = [(VOTEventFactory *)self _commandResolver];
            v212 = [userCommandManager eventForTouchGesture:v84 resolver:_commandResolver5];

            +[VOSOutputEvent DidSelectNextRotor];
          }
          v145 = ;
          v28 = v212;
          if (v145)
          {
            v146 = +[VOTOutputManager outputManager];
            [v146 sendEvent:v145];
          }
        }

        fingerCount2 = v31;
        self->_flags.rotating = 0;
        self->_rotorSoundZone = 0;
        self->_continuityZone = 0;
        self->_rotateStartTime = -3061152000.0;
        self->_rotateDirection = 0;
        goto LABEL_203;
      case 0xBuLL:
        self->_continuityZone = 0;
        self->_startPinchDistance = 0.0;
        if (![(VOTEventFactory *)self brailleInputActive])
        {
          goto LABEL_204;
        }

        v53 = +[VOSGesture TwoFingerPinch];
        [(VOTEventFactory *)self _commandResolver];
        v55 = v54 = fingerCount2;
        [userCommandManager eventForTouchGesture:v53 resolver:v55];
        v56 = v205 = fingerCount;

        fingerCount2 = v54;
        v29 = 0;
        v28 = v56;
        fingerCount = v205;
        goto LABEL_205;
      case 0xCuLL:
        if ((fingerCount != 2) | v30 & 1)
        {
          if (fingerCount != 3 || fingerCount2)
          {
            if (fingerCount != 4 || fingerCount2)
            {
              v29 = 0;
              goto LABEL_205;
            }

            if (v216 != 5)
            {
              if (v216 != 6)
              {
                goto LABEL_171;
              }

              v88 = 4;
              [(SCRCGestureFactory *)self->_gestureFactory distance];
              if (v89 >= 0.0)
              {
                +[VOSGesture FourFingerFlickUp];
              }

              else
              {
                +[VOSGesture FourFingerFlickDown];
              }
              v90 = ;
LABEL_272:
              v194 = v90;
              _commandResolver6 = [(VOTEventFactory *)self _commandResolver];
              v187 = [userCommandManager eventForTouchGesture:v194 resolver:_commandResolver6];

              v214 = 0;
              v188 = 6;
              goto LABEL_273;
            }

            v88 = 4;
            [(SCRCGestureFactory *)self->_gestureFactory distance];
            if (v140 >= 0.0)
            {
              +[VOSGesture FourFingerFlickRight];
            }

            else
            {
              +[VOSGesture FourFingerFlickLeft];
            }
          }

          else
          {
            if (self->_flags.threeFingerTapAndSlide)
            {
              if (AXDeviceIsPad())
              {
                if (v216 == 5)
                {
                  [(SCRCGestureFactory *)self->_gestureFactory distance];
                  if (v184 >= 0.0)
                  {
                    +[VOSGesture ThreeFingerDoubleTapHoldAndFlickRight];
                  }

                  else
                  {
                    +[VOSGesture ThreeFingerDoubleTapHoldAndFlickLeft];
                  }
                  v196 = ;
                  _commandResolver7 = [(VOTEventFactory *)self _commandResolver];
                  v192 = [userCommandManager eventForTouchGesture:v196 resolver:_commandResolver7];

                  v193 = VOTLogEvent();
                  if (os_log_type_enabled(v193, OS_LOG_TYPE_DEBUG))
                  {
                    sub_10012E58C(v192);
                  }
                }

                else
                {
                  if (v216 != 6)
                  {
LABEL_279:
                    v214 = 0;
                    self->_flags.threeFingerTapAndSlide = 0;
                    goto LABEL_207;
                  }

                  [(SCRCGestureFactory *)self->_gestureFactory distance];
                  if (v75 >= 0.0)
                  {
                    +[VOSGesture ThreeFingerDoubleTapHoldAndFlickDown];
                  }

                  else
                  {
                    +[VOSGesture ThreeFingerDoubleTapHoldAndFlickUp];
                  }
                  v190 = ;
                  _commandResolver8 = [(VOTEventFactory *)self _commandResolver];
                  v192 = [userCommandManager eventForTouchGesture:v190 resolver:_commandResolver8];

                  v193 = VOTLogEvent();
                  if (os_log_type_enabled(v193, OS_LOG_TYPE_DEBUG))
                  {
                    sub_10012E618(v192);
                  }
                }

                fingerCount = 3;
                fingerCount2 = 0;

                v28 = v192;
                goto LABEL_279;
              }

LABEL_171:
              v214 = 0;
              goto LABEL_207;
            }

            [(SCRCTargetSelectorTimer *)self->_threeFingerHoldTimer cancel];
            if (v216 != 5)
            {
              if (v216 != 6)
              {
                goto LABEL_171;
              }

              v88 = 3;
              [(SCRCGestureFactory *)self->_gestureFactory distance];
              if (v123 >= 0.0)
              {
                v90 = +[VOSGesture ThreeFingerFlickUp];
              }

              else
              {
                if ([(VOTDirectInteractionKeyboardManager *)self->_directInteractionKeyboardManager inGestureMode])
                {
                  v124 = [VOTEvent touchEventWithCommand:kVOTEventCommandGestureTypingNextInternationalKeyboard info:0];

                  v214 = 0;
                  v216 = 6;
                  v28 = v124;
LABEL_274:
                  fingerCount = v88;
                  fingerCount2 = 0;
                  goto LABEL_207;
                }

                v90 = +[VOSGesture ThreeFingerFlickDown];
              }

              goto LABEL_272;
            }

            v88 = 3;
            [(SCRCGestureFactory *)self->_gestureFactory distance];
            if (v142 >= 0.0)
            {
              +[VOSGesture ThreeFingerFlickRight];
            }

            else
            {
              +[VOSGesture ThreeFingerFlickLeft];
            }
          }
          v141 = ;
          v185 = v141;
          _commandResolver9 = [(VOTEventFactory *)self _commandResolver];
          v187 = [userCommandManager eventForTouchGesture:v185 resolver:_commandResolver9];

          v214 = 0;
          v188 = 5;
LABEL_273:
          v216 = v188;
          v28 = v187;
          goto LABEL_274;
        }

        if (!fingerCount2 && self->_flags.twoFingerTapAndSlide)
        {
          self->_flags.twoFingerTapAndSlide = 0;
          self->_volumeChangeDistance = 0.0;
LABEL_284:
          v29 = 0;
          self->_zigzag.direction = 0;
          self->_zigzag.count = 0;
          self->_zigzag.continuityDistance = 0.0;
LABEL_205:
          v214 = v29;
          if (fingerCount2 == 1)
          {
            if (![eventCopy isDownEvent])
            {
              goto LABEL_217;
            }

            v206 = fingerCount;
            v210 = v28;
            v148 = 1;
            v204 = gestureState;
            currentElement = [(VOTEventFactory *)self currentElement];
            eventRepresentation = [eventCopy eventRepresentation];
            handInfo = [eventRepresentation handInfo];
            paths = [handInfo paths];
            firstPath = [paths firstPath];
            [firstPath pathLocation];
            v156 = v155;
            v158 = v157;

            if (![currentElement doesHaveTraits:kAXAllowsNativeSlidingTrait])
            {
              gestureState = v204;
              fingerCount = v206;
              goto LABEL_216;
            }

            [currentElement frame];
            v218.x = v156;
            v218.y = v158;
            gestureState = v204;
            fingerCount = v206;
            if (!CGRectContainsPoint(v219, v218) || CFAbsoluteTimeGetCurrent() - self->_lastNativeSlideCancel <= 1.0)
            {
              goto LABEL_216;
            }

            self->_flags.sendingToNativeSlide = 1;
            eventRepresentation2 = [(VOTGestureEvent *)self->_currentGestureEvent eventRepresentation];
            handInfo2 = [eventRepresentation2 handInfo];
            paths2 = [handInfo2 paths];
            firstPath2 = [paths2 firstPath];
            [firstPath2 pathLocation];
            self->_nativeSlidingOffset.x = v162;
            self->_nativeSlidingOffset.y = v163;

            fingerCount = v206;
            gestureState = v204;

            [currentElement centerPoint];
            self->_nativeSlidingCenter.x = v164;
            self->_nativeSlidingCenter.y = v165;
            sub_1000C4128(eventRepresentation2, v164, v165);
            v166 = +[VOTElement systemWideElement];
            [v166 repostEvent:eventRepresentation2];

LABEL_209:
LABEL_216:

            fingerCount2 = v148;
            v28 = v210;
LABEL_217:
            if (!v28)
            {
              goto LABEL_235;
            }

            [(SCRCGestureFactory *)self->_gestureFactory velocity];
            [v28 setTouchVelocity:?];
            [v28 setFingerCount:fingerCount];
            v167 = VOTLogEvent();
            v168 = os_log_type_enabled(v167, OS_LOG_TYPE_DEBUG);
            if (!_currentGesturedTextInputManager)
            {
              if (v168)
              {
                sub_10012E7D8();
              }

              [(VOTEventFactory *)self processEvent:v28];
              goto LABEL_234;
            }

            if (v168)
            {
              sub_10012E748();
            }

            v169 = [_currentGesturedTextInputManager processEvent:v28];
            v170 = v169;
            if (qword_1001FEDE8 == -1)
            {
              if ((v169 & 1) == 0)
              {
LABEL_223:
                v171 = qword_1001FEDE0;
                command = [v28 command];
                if ([v171 containsObject:command])
                {

LABEL_229:
                  v174 = VOTLogEvent();
                  if (os_log_type_enabled(v174, OS_LOG_TYPE_DEBUG))
                  {
                    sub_10012E7A4();
                  }

                  [(VOTEventFactory *)self processEvent:v28];
                  goto LABEL_232;
                }

                handwritingOnly = self->_flags.handwritingOnly;

                if (handwritingOnly)
                {
                  goto LABEL_229;
                }

LABEL_235:
                v178 = 0;
LABEL_236:
                if (gestureState == 2)
                {
                  v179 = fingerCount;
                }

                else
                {
                  v179 = fingerCount2;
                }

                self->_fingerCount = v179;
                if (v179)
                {
                  goto LABEL_247;
                }

                if (!self->_flags.tapAndHoldMode)
                {
                  if (gestureState)
                  {
                    if (self->_state == 2)
                    {
                      v180 = v214;
                    }

                    else
                    {
                      v180 = 1;
                    }

                    if (v180)
                    {
                      goto LABEL_247;
                    }
                  }

                  else if (v214)
                  {
                    goto LABEL_247;
                  }
                }

                [(SCRCGestureFactory *)self->_gestureFactory rawLocation];
                [(VOTEventFactory *)self _processIdle:sub_1000517DC(v181)];
LABEL_247:
                if (v178)
                {
                  [(VOTEventFactory *)self setLastGestureEvent:v28];
                }

                direction = v216;
                goto LABEL_250;
              }
            }

            else
            {
              sub_10012E77C();
              if ((v170 & 1) == 0)
              {
                goto LABEL_223;
              }
            }

LABEL_232:
            _handwritingCaptureTimer = [(VOTEventFactory *)self _handwritingCaptureTimer];
            [_handwritingCaptureTimer cancel];

            handwritingManager = [(VOTEventFactory *)self handwritingManager];

            if (_currentGesturedTextInputManager == handwritingManager)
            {
              handwritingManager2 = [(VOTEventFactory *)self handwritingManager];
              [handwritingManager2 resetSession];
            }

LABEL_234:
            v178 = 1;
            goto LABEL_236;
          }

          if (fingerCount2)
          {
            goto LABEL_217;
          }

LABEL_207:
          v147 = objc_loadWeakRetained(&self->_rotorManager);
          [v147 hideVisualRotor];

          if (!self->_flags.sendingToNativeSlide)
          {
            goto LABEL_217;
          }

          v210 = v28;
          v148 = fingerCount2;
          self->_flags.sendingToNativeSlide = 0;
          currentElement = +[VOTElement systemWideElement];
          eventRepresentation2 = [(VOTGestureEvent *)self->_currentGestureEvent eventRepresentation];
          [currentElement repostEvent:eventRepresentation2];
          goto LABEL_209;
        }

        v91 = self->_zigzag.count;
        if (v91 > 2 || v91 == 2 && fabs(self->_zigzag.continuityDistance) > 0.05)
        {
          y = self->_zigzag.firstCountPoint.y;
          [(SCRCGestureFactory *)self->_gestureFactory rawLocation];
          if (vabdd_f64(y, v93) > 0.3)
          {
            self->_zigzag.count = 0;
            self->_zigzag.continuityDistance = 0.0;
            goto LABEL_204;
          }

          v129 = +[VOSGesture TwoFingerScrub];
          [(VOTEventFactory *)self _commandResolver];
          v131 = v130 = fingerCount;
          v132 = [userCommandManager eventForTouchGesture:v129 resolver:v131];
          v133 = v28;
          v134 = fingerCount2;
          v135 = v132;

          fingerCount = v130;
          v136 = v135;
          fingerCount2 = v134;
          v28 = v136;
          goto LABEL_284;
        }

        if (v216 == 5)
        {
          v203 = fingerCount2;
          v121 = fingerCount;
          [(SCRCGestureFactory *)self->_gestureFactory distance];
          if (v182 >= 0.0)
          {
            +[VOSGesture TwoFingerFlickRight];
          }

          else
          {
            +[VOSGesture TwoFingerFlickLeft];
          }
          v183 = ;
        }

        else
        {
          if (v216 != 6)
          {
            goto LABEL_284;
          }

          [(SCRCGestureFactory *)self->_gestureFactory distance];
          v119 = v118;
          inGestureMode = [(VOTDirectInteractionKeyboardManager *)self->_directInteractionKeyboardManager inGestureMode];
          v203 = fingerCount2;
          v121 = fingerCount;
          if (v119 >= 0.0)
          {
            if (inGestureMode)
            {
              v122 = &kVOTEventCommandGestureTypingPreviousKeyplane;
              goto LABEL_266;
            }

            v183 = +[VOSGesture TwoFingerFlickUp];
          }

          else
          {
            if (inGestureMode)
            {
              v122 = &kVOTEventCommandGestureTypingNextKeyplane;
LABEL_266:
              v189 = [VOTEvent touchEventWithCommand:*v122 info:0];

              v28 = v189;
LABEL_283:
              fingerCount = v121;
              fingerCount2 = v203;
              goto LABEL_284;
            }

            v183 = +[VOSGesture TwoFingerFlickDown];
          }
        }

        v198 = v183;
        _commandResolver10 = [(VOTEventFactory *)self _commandResolver];
        v200 = [userCommandManager eventForTouchGesture:v198 resolver:_commandResolver10];

        v28 = v200;
        goto LABEL_283;
      case 0x10uLL:
        if (self->_flags.splitSlide)
        {
          goto LABEL_204;
        }

        self->_flags.splitSlide = 1;
        v29 = 0;
        self->_splitSlideFingerCount = fingerCount2;
        goto LABEL_205;
      case 0x13uLL:
        if (self->_flags.splitSlide)
        {
          v44 = objc_alloc_init(AXIndexMap);
          [(SCRCGestureFactory *)self->_gestureFactory startLocation];
          v46 = v45;
          [(SCRCGestureFactory *)self->_gestureFactory endLocation];
          v48 = [NSValue valueWithPoint:sub_1000517DC((v46 + v47) * 0.5)];
          [v44 setObject:v48 forIndex:101];

          v49 = VOTLogEvent();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            sub_10012E478(self, v49);
          }

          *buf = 0;
          SCRCMathGetVectorAndDistanceForPoints();
          if (self->_splitSlideFingerCount == 2 && v216 == 5)
          {
            v207 = v28;
            v211 = v44;
            [(SCRCGestureFactory *)self->_gestureFactory distance];
            v50 = fingerCount2;
            v51 = fingerCount;
            if (v52 >= 0.0)
            {
              +[VOSGesture TwoFingerSplitFlickRight];
            }

            else
            {
              +[VOSGesture TwoFingerSplitFlickLeft];
            }
            v98 = ;
            _commandResolver11 = [(VOTEventFactory *)self _commandResolver];
            v100 = [userCommandManager eventForTouchGesture:v98 resolver:_commandResolver11];

            v101 = v100;
            fingerCount = v51;
            fingerCount2 = v50;
            v28 = v101;
            v44 = v211;
          }

          self->_flags.splitSlide = 0;
          self->_flags.handwritingOnly = 1;
          self->_splitSlideFingerCount = 0;
        }

        goto LABEL_204;
      case 0x14uLL:
        if (!self->_flags.splitFlick)
        {
          self->_flags.splitFlick = 1;
        }

        goto LABEL_204;
      case 0x15uLL:
        if (!self->_flags.splitFlick)
        {
          goto LABEL_204;
        }

        v78 = VOTLogEvent();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
        {
          sub_10012E4F4(v216);
        }

        if (v216 > 2)
        {
          if (v216 == 4)
          {
            v202 = fingerCount2;
            v79 = fingerCount;
            v80 = +[VOSGesture OneFingerSplitFlickDown];
          }

          else
          {
            if (v216 != 3)
            {
              goto LABEL_175;
            }

            v202 = fingerCount2;
            v79 = fingerCount;
            v80 = +[VOSGesture OneFingerSplitFlickUp];
          }
        }

        else if (v216 == 1)
        {
          v202 = fingerCount2;
          v79 = fingerCount;
          v80 = +[VOSGesture OneFingerSplitFlickLeft];
        }

        else
        {
          if (v216 != 2)
          {
            goto LABEL_175;
          }

          v202 = fingerCount2;
          v79 = fingerCount;
          v80 = +[VOSGesture OneFingerSplitFlickRight];
        }

        v125 = v80;
        _commandResolver12 = [(VOTEventFactory *)self _commandResolver];
        v127 = [userCommandManager eventForTouchGesture:v125 resolver:_commandResolver12];

        v28 = v127;
        fingerCount = v79;
        fingerCount2 = v202;
LABEL_175:
        *&self->_flags.splitFlick = 256;
LABEL_204:
        v29 = 0;
        goto LABEL_205;
      default:
        v86 = VOTLogEvent();
        if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
        {
          sub_10012E6A4();
        }

        goto LABEL_157;
    }
  }

  if ([eventCopy fingerCount])
  {
    self->_travelDistance = v15 + self->_travelDistance;
  }

  [(VOTEventFactory *)self _processTapAndHoldMode:eventCopy];
LABEL_251:
}

- (void)_commitDeferredZoomInfo
{
  if (!CGRectIsNull(*ymmword_1001FEDC0))
  {
    [objc_opt_class() _updateZoomFrame:{*ymmword_1001FEDC0, *&ymmword_1001FEDC0[16], *&ymmword_1001FEDC0[24]}];
    size = CGRectNull.size;
    *ymmword_1001FEDC0 = CGRectNull.origin;
    *&ymmword_1001FEDC0[16] = size;
  }
}

- (void)_commitDeferredZoomInfoIfAppropriate
{
  if ((self->_state | 2) != 3)
  {
    [(VOTEventFactory *)self _commitDeferredZoomInfo];
  }
}

- (void)setCurrentElement:(id)element
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6[5] = _NSConcreteStackBlock;
  v6[6] = 3221225472;
  v6[7] = sub_1000CD1B4;
  v6[8] = &unk_1001C77A0;
  elementCopy = element;
  v7 = elementCopy;
  selfCopy = self;
  v9 = &v10;
  AX_PERFORM_WITH_LOCK();
  if ([elementCopy doesHaveTraits:kAXKeyboardKeyTrait])
  {
    directInteractionKeyboardManager = [(VOTEventFactory *)self directInteractionKeyboardManager];
    [directInteractionKeyboardManager updateKeyboardElement];
  }

  if (*(v11 + 24) == 1 && [(VOTEventFactory *)self brailleInputActive])
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000CD228;
    v6[3] = &unk_1001C76E8;
    v6[4] = self;
    [(VOTEventFactory *)self performAsyncBlock:v6 forThreadKey:self->_threadKey];
  }

  _Block_object_dispose(&v10, 8);
}

- (VOTElement)currentElement
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_1000CD338;
  v8 = sub_1000CD348;
  v9 = 0;
  AX_PERFORM_WITH_LOCK();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

- (void)startTapAndHoldMode:(BOOL)mode
{
  tapHoldTimer = self->_tapHoldTimer;
  v4 = [NSNumber numberWithBool:mode];
  [(SCRCTargetSelectorTimer *)tapHoldTimer dispatchAfterDelay:v4 withObject:0.0];
}

- (void)_beginNativeSliding:(id)sliding
{
  if (sliding)
  {
    currentGestureEvent = self->_currentGestureEvent;
    if (currentGestureEvent)
    {
      slidingCopy = sliding;
      eventRepresentation = [(VOTGestureEvent *)currentGestureEvent eventRepresentation];
      self->_flags.sendingToNativeSlide = 1;
      handInfo = [eventRepresentation handInfo];
      paths = [handInfo paths];
      firstPath = [paths firstPath];
      [firstPath pathLocation];
      self->_nativeSlidingOffset.x = v9;
      self->_nativeSlidingOffset.y = v10;

      [slidingCopy centerPoint];
      v12 = v11;
      v14 = v13;

      self->_nativeSlidingCenter.x = v12;
      self->_nativeSlidingCenter.y = v14;
      sub_1000C4128(eventRepresentation, v12, v14);
      v15 = +[VOTElement systemWideElement];
      [v15 repostEvent:eventRepresentation];
    }
  }
}

- (void)_outputElementSummaryFired
{
  v3 = [VOTEvent touchEventWithCommand:kVOTEventCommandOutputElementSummary info:0];
  self->_flags.firedElementSummaryTimer = 1;
  [(VOTEventFactory *)self processEvent:v3];
}

- (void)cancelTapAndHold:(CGPoint)hold
{
  threadKey = self->_threadKey;
  v5 = [NSValue valueWithPoint:hold.x, hold.y];
  [(VOTEventFactory *)self performSelector:"_cancelTapAndHoldWithValue:" withThreadKey:threadKey count:1 objects:v5];
}

- (void)_cancelTapAndHoldWithValue:(id)value
{
  [value pointValue];

  [(VOTEventFactory *)self _cancelTapAndHold:?];
}

- (void)_cancelTapAndHold:(CGPoint)hold forScribble:(BOOL)scribble
{
  if (self->_flags.tapAndHoldMode)
  {
    scribbleCopy = scribble;
    y = hold.y;
    x = hold.x;
    if ([(VOTEventFactory *)self _tapAndHoldModeIsForScribble]&& !scribbleCopy)
    {
      v8 = VOTLogEvent();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Scribble: Not canceling tap and hold, because scribble was in progress.", buf, 2u);
      }

      goto LABEL_6;
    }

    if (self->_flags.tapAndHoldMode)
    {
      v9 = VOTLogEvent();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_10012E80C(x, y);
      }

      WeakRetained = objc_loadWeakRetained(&self->_elementManager);
      [WeakRetained performSelector:"updateCurrentElementFrame" withObject:0 afterDelay:0.25];

      self->_flags.tapAndHoldMode = 0;
      v11 = +[VOTSpringBoardConnection defaultConnection];
      [v11 setInPassthroughMode:0];

      if (CGPointZero.x == x && CGPointZero.y == y)
      {
        [(VOTEventFactory *)self _touchLiftAtPoint:x, y];
        goto LABEL_20;
      }

      if ([(VOTEventFactory *)self _systemControlPosition:1 fingerCount:self->_systemControlStartPoint.x, self->_systemControlStartPoint.y]== 1)
      {
        *buf = 0;
        SCRCMathGetVectorAndDistanceForPoints();
        hold.x = 0.0;
        if (0.0 > 37.5)
        {
          hold.x = 0.0;
          if (0.0 > 255.0 && 0.0 < 290.0)
          {
            self->_systemControlPosition = 1;
            v8 = [VOTEvent internalEventWithCommand:kVOTEventCommandSystemShowNotificationCenter info:0, 0.0];
            [(VOTEventFactory *)self _sendSystemControlEvent:v8];
LABEL_6:
          }
        }
      }
    }
  }

LABEL_20:
  [(SCRCTargetSelectorTimer *)self->_tapHoldTimer cancel];
}

- (void)setElementManager:(id)manager
{
  obj = manager;
  WeakRetained = objc_loadWeakRetained(&self->_elementManager);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_elementManager, obj);
    [obj setUpdateDelegate:self];
  }
}

- (void)directInteractionElementsUpdated:(id)updated
{
  v4 = [updated copy];
  directInteractionElements = self->_directInteractionElements;
  self->_directInteractionElements = v4;

  _objc_release_x1(v4, directInteractionElements);
}

- (void)currentElementDidUpdate:(id)update
{
  updateCopy = update;
  [(VOTEventFactory *)self setCurrentElement:updateCopy];
  [VOTSharedWorkspace currentElementDidUpdate:updateCopy];
}

- (void)firstResponderDidUpdate:(id)update
{
  updateCopy = update;
  if (self->_firstResponder != updateCopy)
  {
    objc_storeStrong(&self->_firstResponder, update);
    if (self->_flags.tapAndHoldMode)
    {
      if ([(VOTEventFactory *)self _tapAndHoldModeIsForScribble])
      {
        v6 = [(VOTEventFactory *)self _canScribbleWithElement:updateCopy];
        v7 = VOTLogEvent();
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
        if (v6)
        {
          if (v8)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Scribble: Switching to new first responder while scribbling.", buf, 2u);
          }

          objc_storeStrong(&self->_tapAndHoldScribbleElement, update);
          self->_flags.tapAndHoldOffsetNeedsUpdate = 1;
        }

        else
        {
          if (v8)
          {
            *v9 = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Scribble: Ending because first responder changed.", v9, 2u);
          }

          [(VOTEventFactory *)self _endScribbleTapAndHoldMode];
        }
      }
    }
  }
}

- (void)_startLabelElementSoundPlay
{
  if (self->_flags.memorizingData)
  {
    v3 = +[VOTOutputManager outputManager];
    v4 = +[VOSOutputEvent ItemMemorizationInProgress];
    [v3 sendEvent:v4];

    [(SCRCTargetSelectorTimer *)self->_memorizeSoundTimer dispatchAfterDelay:0.5];
    self->_flags.didPlayStartLabelSound = 1;
  }
}

- (void)_stopMemorizingSession
{
  [NSThread cancelPreviousPerformRequestsWithTarget:self selector:"_startLabelElementSoundPlay" object:0];
  [(SCRCTargetSelectorTimer *)self->_twoFingerHoldTimer cancel];
  [(SCRCTargetSelectorTimer *)self->_memorizeSoundTimer cancel];
  if (self->_flags.didPlayStartLabelSound && self->_flags.memorizingData)
  {
    v3 = +[VOTOutputManager outputManager];
    v4 = +[VOSOutputEvent ItemMemorizationFailed];
    [v3 sendEvent:v4];
  }

  self->_flags.memorizingData = 0;
  self->_flags.didPlayStartLabelSound = 0;
}

- (void)_edgePanGestureSpeakHintTimerFired
{
  v2 = self->_edgePanGestureState - 2;
  if (v2 <= 5 && ((0x37u >> v2) & 1) != 0)
  {
    v3 = sub_1000511CC(off_1001FDDD0, off_1001CAA88[v2], 0);
    if (v3)
    {
      v5 = v3;
      v4 = sub_1000095FC(v3, 0, 0);
    }
  }
}

- (void)_tapHoldFired:(id)fired
{
  firedCopy = fired;
  if ([VOTSharedWorkspace inUnitTestMode])
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 postNotificationName:@"TapHoldFired" object:0];
  }

  v6 = +[VOTCommandHelper commandHelper];
  helpEnabled = [v6 helpEnabled];

  if (helpEnabled)
  {
    currentElement = [VOTEvent touchEventWithCommand:kVOTEventCommandTapAndHoldMode info:0];
    [(SCRCGestureFactory *)self->_gestureFactory rawLocation];
    [(VOTEventFactory *)self convertDevicePointToZoomedPoint:sub_1000517DC(v9)];
    [currentElement setTouchPoint:?];
    [(SCRCGestureFactory *)self->_gestureFactory rawLocation];
    [currentElement setTouchRawLocation:?];
    [(VOTEventFactory *)self processEvent:currentElement];
  }

  else
  {
    if (([(SCRCTargetSelectorTimer *)self->_tapHoldTimer isCancelled]& 1) != 0)
    {
      goto LABEL_7;
    }

    currentElement = [(VOTEventFactory *)self currentElement];
    if (currentElement)
    {
      if (AXDeviceSupportsSonification() && ([currentElement supportsAudiographs] & 1) != 0)
      {
        if (AXDeviceSupportsSonification())
        {
          v10 = VOTLogEvent();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            sub_10012E8CC();
          }

          [(VOTEventFactory *)self _beginAudiographScrubbingMode];
        }

        goto LABEL_5;
      }

      v11 = VOTLogEvent();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_10012E898();
      }

      [(SCRCGestureFactory *)self->_gestureFactory firstFingerPressure];
      v13 = v12;
      [(SCRCGestureFactory *)self->_gestureFactory firstFingerAltitude];
      v15 = v14;
      [(SCRCGestureFactory *)self->_gestureFactory firstFingerAzimuth];
      v17 = v16;
      self->_tapAndHoldFingerType = [(VOTEventFactory *)self _isStylusGesture];
      if (self->_firstResponder && [currentElement isEqual:*&v17] && -[VOTEventFactory _canScribbleWithElement:](self, "_canScribbleWithElement:", currentElement) && self->_tapAndHoldFingerType == 1)
      {
        v18 = VOTLogEvent();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Scribble: Starting.", buf, 2u);
        }

        objc_storeStrong(&self->_tapAndHoldScribbleElement, currentElement);
      }

      else
      {
        tapAndHoldScribbleElement = self->_tapAndHoldScribbleElement;
        self->_tapAndHoldScribbleElement = 0;

        [(VOTEventFactory *)self _cancelScribbleTapAndHoldModeTimeout];
        [(VOTEventFactory *)self _cancelUpdateScribbleTapAndHoldModeOffset];
      }

      if ([(VOTEventFactory *)self _tapAndHoldModeIsForScribble])
      {
        prefersContextlessPassthrough = 0;
      }

      else
      {
        prefersContextlessPassthrough = [currentElement prefersContextlessPassthrough];
      }

      [(VOTEventFactory *)self _updateTapAndHoldLocationDataForElement:currentElement];
      v22 = v21;
      v24 = v23;
      if (![(VOTEventFactory *)self _tapAndHoldModeIsForScribble])
      {
        v25 = +[VOTDisplayManager displayManager];
        [v25 clearCursorFrame];
      }

      windowContextId = [currentElement windowContextId];
      v27 = +[AXBackBoardServer server];
      v28 = [v27 contextIdHostingContextId:windowContextId];

      v44 = _NSConcreteStackBlock;
      v45 = 3221225472;
      v46 = sub_1000CE1EC;
      v47 = &unk_1001C7900;
      selfCopy = self;
      v49 = windowContextId;
      v50 = v28;
      AX_PERFORM_WITH_LOCK();
      self->_flags.tapAndHoldModeContextless = prefersContextlessPassthrough;
      self->_flags.tapAndHoldMode = 1;
      if ([(VOTEventFactory *)self _tapAndHoldModeIsForScribble])
      {
        v29 = +[VOTOutputManager outputManager];
        v30 = +[VOSOutputEvent TVDidBeginInteractionWithRotor];
        [v29 sendEvent:v30];
      }

      else if (firedCopy && !self->_flags.orbMode && [VOTSharedWorkspace soundEffectsEnabled])
      {
        objc_initWeak(buf, self);
        v35 = +[VOTOutputManager outputManager];
        v38 = _NSConcreteStackBlock;
        v39 = 3221225472;
        v40 = sub_1000CE294;
        v41 = &unk_1001CAA10;
        objc_copyWeak(v42, buf);
        v42[1] = v22;
        v42[2] = v24;
        v42[3] = v13;
        v42[4] = v15;
        v42[5] = v17;
        [v35 addVOSEventFinishedHandler:&v38 forIdentifier:@"PassThroughHandler"];

        v36 = [VOTOutputManager outputManager:v38];
        v37 = +[VOSOutputEvent DidBeginPassthrough];
        [v36 sendEvent:v37];

        objc_destroyWeak(v42);
        objc_destroyWeak(buf);
        goto LABEL_5;
      }

      v31 = [NSValue valueWithPoint:*&v22, *&v24];
      v32 = [NSNumber numberWithDouble:*&v13];
      v33 = [NSNumber numberWithDouble:*&v15];
      v34 = [NSNumber numberWithDouble:*&v17];
      [(VOTEventFactory *)self _startTouchDownForTapAndHoldActionWithCenter:v31 force:v32 altitude:v33 azimuth:v34];
    }
  }

LABEL_5:

LABEL_7:
}

- (CGPoint)_updateTapAndHoldLocationDataForElement:(id)element
{
  elementCopy = element;
  self->_flags.tapAndHoldOffsetNeedsUpdate = 0;
  [elementCopy centerPoint];
  v6 = -1.0;
  v8 = v7 == -1.0 && v5 == -1.0;
  x = -1.0;
  if (!v8)
  {
    [elementCopy updateVisiblePoint];
    [elementCopy visiblePoint];
    [elementCopy windowContextId];
    [elementCopy displayId];
    AXConvertPointFromHostedCoordinates();
    x = v10;
    v6 = v11;
  }

  WeakRetained = objc_loadWeakRetained(&self->_elementManager);
  [WeakRetained currentLineFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = CGPointZero.y == v16 && CGPointZero.x == v14;
  if (([elementCopy doesHaveTraits:{kAXIsEditingTrait, CGPointZero.x}] & 1) != 0 || (objc_msgSend(elementCopy, "doesHaveTraits:", kAXTextAreaTrait) & 1) == 0)
  {
    v22 = [elementCopy doesHaveTraits:kAXWebContentTrait | kAXStaticTextTrait] ^ 1;
  }

  else
  {
    v22 = 0;
  }

  v44.origin.x = v14;
  v44.origin.y = v16;
  v44.size.width = v18;
  v44.size.height = v20;
  MidX = CGRectGetMidX(v44);
  v45.origin.x = v14;
  v45.origin.y = v16;
  v45.size.width = v18;
  v45.size.height = v20;
  MidY = CGRectGetMidY(v45);
  v25 = +[VOTElement systemWideElement];
  [v25 convertPoint:objc_msgSend(elementCopy toContextId:{"windowContextId"), MidX, MidY}];
  v27 = v26;
  v29 = v28;

  if (((v21 | v22) & 1) == 0 || ([elementCopy dataDetectorURL:{v27, v29}], v30 = objc_claimAutoreleasedReturnValue(), v30, v30))
  {
    v6 = MidY;
    x = MidX;
  }

  [(SCRCGestureFactory *)self->_gestureFactory rawLocation];
  self->_tapHoldOffset.x = sub_1000517DC(v31);
  p_tapHoldOffset = &self->_tapHoldOffset;
  self->_tapHoldOffset.y = v33;
  p_y = &self->_tapHoldOffset.y;
  [(VOTEventFactory *)self convertDevicePointToZoomedPoint:?];
  self->_tapHoldOffset.x = v35;
  self->_tapHoldOffset.y = v36;
  if ([(VOTEventFactory *)self _tapAndHoldModeIsForScribble])
  {
    if (v8)
    {
      v37 = VOTLogEvent();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
      {
        sub_10012E900();
      }

      goto LABEL_22;
    }

    [(VOTEventFactory *)self _startPointForScribbleWithElement:elementCopy originalStartPoint:x, v6];
    x = v38;
    v6 = v39;
  }

  else if (v8)
  {
LABEL_22:
    x = p_tapHoldOffset->x;
    v6 = *p_y;
    *p_tapHoldOffset = CGPointZero;
    goto LABEL_25;
  }

  p_tapHoldOffset->x = x - p_tapHoldOffset->x;
  *p_y = v6 - *p_y;
LABEL_25:
  self->_systemControlStartPoint.x = x;
  self->_systemControlStartPoint.y = v6;
  if ([elementCopy doesHaveTraits:kAXTableIndexTrait])
  {
    if ([VOTSharedWorkspace deviceOrientation] - 3 >= 2)
    {
      v40 = &self->_tapHoldOffset.y;
    }

    else
    {
      v40 = &self->_tapHoldOffset;
    }

    v40->x = 0.0;
  }

  v41 = x;
  v42 = v6;
  result.y = v42;
  result.x = v41;
  return result;
}

- (CGPoint)_startPointForScribbleWithElement:(id)element originalStartPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  orientation = [(SCRCGestureFactory *)self->_gestureFactory orientation];
  if (orientation > 1)
  {
    if (orientation == 2)
    {
      v8 = -30.0;
    }

    else
    {
      if (orientation != 3)
      {
        goto LABEL_12;
      }

      v8 = 30.0;
    }

    y = y + v8;
    goto LABEL_12;
  }

  if (!orientation)
  {
    v7 = 30.0;
    goto LABEL_9;
  }

  if (orientation == 1)
  {
    v7 = -30.0;
LABEL_9:
    x = x + v7;
  }

LABEL_12:
  v9 = x;
  v10 = y;
  result.y = v10;
  result.x = v9;
  return result;
}

- (void)_startTouchDownForTapAndHoldActionWithCenter:(id)center force:(id)force altitude:(id)altitude azimuth:(id)azimuth
{
  if (self->_flags.tapAndHoldMode)
  {
    azimuthCopy = azimuth;
    altitudeCopy = altitude;
    forceCopy = force;
    [center pointValue];
    v15 = v14;
    v17 = v16;
    [forceCopy doubleValue];
    v19 = v18;

    [altitudeCopy doubleValue];
    v21 = v20;

    [azimuthCopy doubleValue];
    v23 = v22;

    [(VOTEventFactory *)self _touchDownAtPoint:v15 withForce:v17 altitude:v19 azimuth:v21, v23];
    v24 = +[VOTSpringBoardConnection defaultConnection];
    [v24 setInPassthroughMode:1];
  }
}

- (void)_twoFingerHoldFired
{
  self->_flags.memorizingData = 0;
  [(SCRCTargetSelectorTimer *)self->_memorizeSoundTimer cancel];
  v3 = +[VOTWorkspace sharedWorkspace];
  userCommandManager = [v3 userCommandManager];

  v4 = +[VOSGesture TwoFingerSingleTapAndHold];
  _commandResolver = [(VOTEventFactory *)self _commandResolver];
  v6 = [userCommandManager eventForTouchGesture:v4 resolver:_commandResolver info:0];

  v7 = +[VOTOutputManager outputManager];
  v8 = +[VOSOutputEvent ItemMemorizationSucceeded];
  [v7 sendEvent:v8];

  [(VOTEventFactory *)self processEvent:v6];
}

- (void)_threeFingerHoldFired
{
  self->_flags.memorizingData = 0;
  if (AXDeviceIsPad())
  {
    self->_flags.threeFingerTapAndSlide = 1;
    v3 = &kVOTEventCommandShowEditingHUD;
  }

  else
  {
    v3 = &kVOTEventCommandActivateBrailleScreenInputPreferringSingleHand;
  }

  v4 = [VOTEvent touchEventWithCommand:*v3 info:0];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(VOTEventFactory *)self processEvent:v4];
    v5 = v6;
  }

  _objc_release_x1(v4, v5);
}

- (void)_contextlessTouchWithHandType:(unsigned int)type location:(CGPoint)location force:(double)force altitude:(double)altitude azimuth:(double)azimuth
{
  v10 = *&type;
  AXNormalizePoint();
  v33 = [AXEventRepresentation touchRepresentationWithHandType:v10 location:?];
  handInfo = [v33 handInfo];
  paths = [handInfo paths];
  firstPath = [paths firstPath];
  [firstPath setTransducerType:2];

  handInfo2 = [v33 handInfo];
  paths2 = [handInfo2 paths];
  firstPath2 = [paths2 firstPath];
  *&force = force;
  LODWORD(v18) = LODWORD(force);
  [firstPath2 setOrbValue:v18];

  if (self->_tapAndHoldFingerType == 1)
  {
    handInfo3 = [v33 handInfo];
    paths3 = [handInfo3 paths];
    firstPath3 = [paths3 firstPath];
    [firstPath3 setTransducerType:0];

    handInfo4 = [v33 handInfo];
    paths4 = [handInfo4 paths];
    firstPath4 = [paths4 firstPath];
    altitudeCopy = altitude;
    *&v26 = altitudeCopy;
    [firstPath4 setAltitude:v26];

    handInfo5 = [v33 handInfo];
    paths5 = [handInfo5 paths];
    firstPath5 = [paths5 firstPath];
    azimuthCopy = azimuth;
    *&v31 = azimuthCopy;
    [firstPath5 setAzimuth:v31];
  }

  v32 = +[AXEventTapManager sharedManager];
  [v32 sendHIDSystemEvent:v33 senderID:0x8000000817319373];
}

- (void)_touchDownAtPoint:(CGPoint)point withForce:(double)force altitude:(double)altitude azimuth:(double)azimuth
{
  y = point.y;
  x = point.x;
  if (!self->_flags.tapAndHoldModeContextless)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    tapAndHoldContextNumbers = [(VOTEventFactory *)self tapAndHoldContextNumbers];
    v13 = [tapAndHoldContextNumbers countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (!v13)
    {
      goto LABEL_17;
    }

    v14 = v13;
    v15 = *v22;
    while (1)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(tapAndHoldContextNumbers);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        tapAndHoldFingerType = self->_tapAndHoldFingerType;
        if (tapAndHoldFingerType != 1)
        {
          if (!tapAndHoldFingerType)
          {
            v19 = +[VOTElement systemWideElement];
            [v19 postFingerTouchAtPoint:objc_msgSend(v17 withForce:"unsignedIntValue") withContextId:{x, y, force}];
            goto LABEL_15;
          }

          v20 = self->_tapAndHoldFingerType;
          _AXAssert();
        }

        v19 = +[VOTElement systemWideElement];
        [v19 postStylusTouchAtPoint:objc_msgSend(v17 withForce:"unsignedIntValue") altitude:x azimuth:y withContextId:{force, altitude, azimuth}];
LABEL_15:
      }

      v14 = [tapAndHoldContextNumbers countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (!v14)
      {
LABEL_17:

        return;
      }
    }
  }

  [VOTEventFactory _contextlessTouchWithHandType:"_contextlessTouchWithHandType:location:force:altitude:azimuth:" location:1 force:? altitude:? azimuth:?];
}

- (void)_touchDragAtPoint:(CGPoint)point withForce:(double)force altitude:(double)altitude azimuth:(double)azimuth
{
  y = point.y;
  x = point.x;
  if (!self->_flags.tapAndHoldModeContextless)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    tapAndHoldContextNumbers = [(VOTEventFactory *)self tapAndHoldContextNumbers];
    v13 = [tapAndHoldContextNumbers countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (!v13)
    {
      goto LABEL_17;
    }

    v14 = v13;
    v15 = *v22;
    while (1)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(tapAndHoldContextNumbers);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        tapAndHoldFingerType = self->_tapAndHoldFingerType;
        if (tapAndHoldFingerType != 1)
        {
          if (!tapAndHoldFingerType)
          {
            v19 = +[VOTElement systemWideElement];
            [v19 postFingerDragAtPoint:objc_msgSend(v17 withForce:"unsignedIntValue") withContextId:{x, y, force}];
            goto LABEL_15;
          }

          v20 = self->_tapAndHoldFingerType;
          _AXAssert();
        }

        v19 = +[VOTElement systemWideElement];
        [v19 postStylusDragAtPoint:objc_msgSend(v17 withForce:"unsignedIntValue") altitude:x azimuth:y withContextId:{force, altitude, azimuth}];
LABEL_15:
      }

      v14 = [tapAndHoldContextNumbers countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (!v14)
      {
LABEL_17:

        return;
      }
    }
  }

  [VOTEventFactory _contextlessTouchWithHandType:"_contextlessTouchWithHandType:location:force:altitude:azimuth:" location:2 force:? altitude:? azimuth:?];
}

- (id)tapAndHoldContextNumbers
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_1000CD338;
  v8 = sub_1000CD348;
  v9 = 0;
  AX_PERFORM_WITH_LOCK();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

- (void)_touchLiftAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (self->_flags.tapAndHoldModeContextless)
  {
    [(VOTEventFactory *)self _contextlessTouchWithHandType:6 location:point.x force:point.y altitude:0.0 azimuth:0.0, 0.0];
    goto LABEL_16;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  tapAndHoldContextNumbers = [(VOTEventFactory *)self tapAndHoldContextNumbers];
  v7 = [tapAndHoldContextNumbers countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = v7;
  v9 = *v16;
  do
  {
    v10 = 0;
    do
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(tapAndHoldContextNumbers);
      }

      v11 = *(*(&v15 + 1) + 8 * v10);
      tapAndHoldFingerType = self->_tapAndHoldFingerType;
      if (tapAndHoldFingerType != 1)
      {
        if (!tapAndHoldFingerType)
        {
          v13 = +[VOTElement systemWideElement];
          [v13 postFingerLiftAtPoint:objc_msgSend(v11 withContextId:{"unsignedIntValue"), x, y}];
          goto LABEL_13;
        }

        v14 = self->_tapAndHoldFingerType;
        _AXAssert();
      }

      v13 = +[VOTElement systemWideElement];
      [v13 postStylusLiftAtPoint:objc_msgSend(v11 withContextId:{"unsignedIntValue"), x, y}];
LABEL_13:

      v10 = v10 + 1;
    }

    while (v8 != v10);
    v8 = [tapAndHoldContextNumbers countByEnumeratingWithState:&v15 objects:v19 count:16];
  }

  while (v8);
LABEL_15:

LABEL_16:
  if (AXDeviceSupportsSonification())
  {
    [(VOTEventFactory *)self _endAudiographScrubbingMode];
  }
}

- (void)_processIdle:(CGPoint)idle
{
  y = idle.y;
  x = idle.x;
  *&self->_flags.twoFingerTapAndSlide = 0;
  [(VOTEventFactory *)self _cancelTapAndHold:?];
  [(VOTEventFactory *)self _stopMemorizingSession];
  self->_flags.splitSlide = 0;
  self->_flags.handwritingOnly = 0;
  [(SCRCTargetSelectorTimer *)self->_systemControlLocationTimer cancel];
  self->_systemControlActivated = 0;
  *&self->_systemControlStartSwipeTime = xmmword_10017E570;
  v6 = [VOTEvent touchEventWithCommand:kVOTEventCommandIdle info:0];
  [v6 setTouchPoint:{x, y}];
  [(VOTEventFactory *)self processEvent:v6];
  if ([(VOTEventFactory *)self _shouldDismissPreviewOnLift]&& ![(VOTEventFactory *)self _isPreviewElementSelected])
  {
    [(VOTEventFactory *)self _liftFromTapAndHoldAndResetFingers:1];
  }

  else
  {
    self->_isPreviewPinned = 1;
  }
}

- (void)_processTapAndHoldMode:(id)mode
{
  modeCopy = mode;
  if (self->_flags.orbMode && ([(SCRCGestureFactory *)self->_gestureFactory firstFingerPressure], v6 = v5, AXForceTouchThresholdPeek(), v6 < v7))
  {
    [(VOTEventFactory *)self _switchToTrackingMode];
  }

  else
  {
    v8 = +[VOTCommandHelper commandHelper];
    helpEnabled = [v8 helpEnabled];

    if ((helpEnabled & 1) == 0)
    {
      if ([modeCopy fingerCount] == 1)
      {
        if (self->_flags.audiographScrubbingMode)
        {
          if (AXDeviceSupportsSonification())
          {
            [(VOTEventFactory *)self _handleAudiographScrubbingPositionChanged];
          }
        }

        else
        {
          [(SCRCGestureFactory *)self->_gestureFactory rawLocation];
          v11 = sub_1000517DC(v10);
          v13 = v12;
          [(SCRCGestureFactory *)self->_gestureFactory firstFingerPressure];
          v15 = v14;
          [(SCRCGestureFactory *)self->_gestureFactory firstFingerAltitude];
          v17 = v16;
          [(SCRCGestureFactory *)self->_gestureFactory firstFingerAzimuth];
          v19 = v18;
          if (-[VOTEventFactory _tapAndHoldModeIsForScribble](self, "_tapAndHoldModeIsForScribble") && [modeCopy isDownEvent])
          {
            if (self->_flags.tapAndHoldOffsetNeedsUpdate)
            {
              [(VOTEventFactory *)self _updateTapAndHoldLocationDataForElement:self->_firstResponder];
            }

            v20 = 1;
          }

          else
          {
            v20 = 0;
          }

          [(VOTEventFactory *)self convertDevicePointToZoomedPoint:v11 + self->_tapHoldOffset.x, v13 + self->_tapHoldOffset.y];
          v25 = v23;
          v26 = v24;
          if (v20)
          {
            if (![(VOTEventFactory *)self _isStylusGesture])
            {
              v27 = VOTLogEvent();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
              {
                sub_10012E940();
              }
            }

            [(VOTEventFactory *)self _cancelScribbleTapAndHoldModeTimeout];
            [(VOTEventFactory *)self _cancelUpdateScribbleTapAndHoldModeOffset];
            [(VOTEventFactory *)self _touchDownAtPoint:v25 withForce:v26 altitude:v15 azimuth:v17, v19];
          }

          else
          {
            [(VOTEventFactory *)self _touchDragAtPoint:v23 withForce:v24 altitude:v15 azimuth:v17, v19];
          }

          v28 = [VOTEvent touchEventWithCommand:kVOTEventCommandTapAndHoldEventMonitor info:0];
          [v28 setTouchPoint:{v25, v26}];
          [(SCRCGestureFactory *)self->_gestureFactory rawLocation];
          [v28 setTouchRawLocation:?];
          [v28 setTouchForce:v15];
          [(VOTEventFactory *)self processEvent:v28];
        }
      }

      else if (self->_flags.audiographScrubbingMode)
      {
        [(VOTEventFactory *)self _endAudiographScrubbingMode];
      }

      else if ([(VOTEventFactory *)self _tapAndHoldModeIsForScribble])
      {
        v21 = VOTLogEvent();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Scribble: Lift occurred, but not ending tap and hold because scribble was in progress.", v29, 2u);
        }

        [(SCRCGestureFactory *)self->_gestureFactory rawLocation];
        [(VOTEventFactory *)self _touchLiftAtPoint:sub_1000517DC(v22)];
        [(VOTEventFactory *)self _startScribbleTapAndHoldModeTimeout];
        [(VOTEventFactory *)self _scheduleUpdateScribbleTapAndHoldModeOffset];
      }

      else
      {
        [(VOTEventFactory *)self _liftFromTapAndHoldAndResetFingers:1];
      }
    }
  }
}

- (void)_cancelScribbleTapAndHoldModeTimeout
{
  v3 = VOTLogEvent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Scribble: Cancel timeout.", v4, 2u);
  }

  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_endScribbleTapAndHoldMode" object:0];
}

- (void)_startScribbleTapAndHoldModeTimeout
{
  [(VOTEventFactory *)self _cancelScribbleTapAndHoldModeTimeout];
  v3 = VOTLogEvent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Scribble: Will end after delay.", v4, 2u);
  }

  [(VOTEventFactory *)self performSelector:"_endScribbleTapAndHoldMode" withObject:0 afterDelay:5.0];
}

- (void)_endScribbleTapAndHoldMode
{
  if (self->_flags.tapAndHoldMode)
  {
    v9 = v2;
    v10 = v3;
    if ([(VOTEventFactory *)self _tapAndHoldModeIsForScribble])
    {
      [(VOTEventFactory *)self _cancelScribbleTapAndHoldModeTimeout];
      v5 = VOTLogEvent();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Scribble: Ending.", v8, 2u);
      }

      [(VOTEventFactory *)self _cancelTapAndHold:1 forScribble:CGPointZero.x, CGPointZero.y];
      v6 = +[VOTOutputManager outputManager];
      v7 = +[VOSOutputEvent TVDidEndInteractionWithRotor];
      [v6 sendEvent:v7];
    }
  }
}

- (void)_cancelUpdateScribbleTapAndHoldModeOffset
{
  v3 = VOTLogEvent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Scribble: Cancel update for offset.", v4, 2u);
  }

  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_markTapAndHoldOffsetAsDirty" object:0];
}

- (void)_scheduleUpdateScribbleTapAndHoldModeOffset
{
  [(VOTEventFactory *)self _cancelUpdateScribbleTapAndHoldModeOffset];
  v3 = VOTLogEvent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Scribble: Will update offset after delay.", v4, 2u);
  }

  [(VOTEventFactory *)self performSelector:"_markTapAndHoldOffsetAsDirty" withObject:0 afterDelay:1.0];
}

- (void)_markTapAndHoldOffsetAsDirty
{
  [(VOTEventFactory *)self _cancelUpdateScribbleTapAndHoldModeOffset];
  v3 = VOTLogEvent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Scribble: Set flag that offset needs update.", v4, 2u);
  }

  self->_flags.tapAndHoldOffsetNeedsUpdate = 1;
}

- (void)_liftFromTapAndHoldAndResetFingers:(BOOL)fingers
{
  fingersCopy = fingers;
  v5 = VOTLogEvent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10012E980(fingersCopy, v5);
  }

  [(SCRCGestureFactory *)self->_gestureFactory rawLocation];
  v7 = sub_1000517DC(v6);
  v9 = v8;
  [(VOTEventFactory *)self _cancelTapAndHold:?];
  [(VOTEventFactory *)self _touchLiftAtPoint:v7 + self->_tapHoldOffset.x, v9 + self->_tapHoldOffset.y];
  [(VOTEventFactory *)self _liftPreviewFinger];
  AXPerformBlockOnMainThreadAfterDelay();
  if (fingersCopy)
  {
    [(VOTEventFactory *)self _setFingerCount:0];
  }
}

- (BOOL)_canScribbleWithElement:(id)element
{
  elementCopy = element;
  if (AXDeviceSupportsPencil())
  {
    v4 = [elementCopy doesHaveTraits:kAXTextEntryTrait];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_beginAudiographScrubbingMode
{
  if (AXDeviceSupportsSonification())
  {
    self->_flags.tapAndHoldMode = 1;
    tapAndHoldScribbleElement = self->_tapAndHoldScribbleElement;
    self->_tapAndHoldScribbleElement = 0;

    if (!self->_flags.orbMode)
    {
      v4 = +[VOTOutputManager outputManager];
      v5 = +[VOSOutputEvent DidBeginPassthrough];
      [v4 sendEvent:v5];
    }

    self->_flags.audiographScrubbingMode = 1;
    [(SCRCGestureFactory *)self->_gestureFactory rawLocation];
    self->_audiographScrubbingPreviousLocation.x = sub_10005199C([(SCRCGestureFactory *)self->_gestureFactory orientation], v6, v7);
    self->_audiographScrubbingPreviousLocation.y = v8;
    v9 = +[VOTAudiographManager sharedManager];
    [v9 beginScrubbingSession];
  }
}

- (void)_handleAudiographScrubbingPositionChanged
{
  if (AXDeviceSupportsSonification())
  {
    [(SCRCGestureFactory *)self->_gestureFactory rawLocation];
    v5 = sub_10005199C([(SCRCGestureFactory *)self->_gestureFactory orientation], v3, v4);
    v7 = v6;
    v8 = (v5 - self->_audiographScrubbingPreviousLocation.x) * 1.5;
    if (v8 != 0.0)
    {
      v9 = +[VOTAudiographManager sharedManager];
      [v9 currentPlaybackPosition];
      v11 = v10;

      v12 = v8 + v11;
      v13 = v11 > 0.00001;
      v14 = 1.0;
      if (1.0 - v11 <= 0.00001)
      {
        v13 = 0;
      }

      self->_canPlayBoundaryFeedback = v13;
      if (v12 >= 0.0)
      {
        v16 = v12 > 1.0 && v13;
        if (v12 <= 1.0)
        {
          v17 = v12;
        }

        else
        {
          v17 = 1.0;
        }

        if (v16 != 1)
        {
          goto LABEL_15;
        }

        v15 = 3;
      }

      else
      {
        v14 = 0.0;
        if (!v13)
        {
          v17 = 0.0;
          goto LABEL_15;
        }

        v15 = 18;
      }

      v18 = +[VOTAudiographManager sharedManager];
      [v18 playHapticWithType:v15];

      v19 = +[VOTOutputManager outputManager];
      v20 = +[VOSOutputEvent BoundaryEncountered];
      [v19 sendEvent:v20];

      v17 = v14;
LABEL_15:
      v21 = +[VOTAudiographManager sharedManager];
      [v21 scrubToPosition:v17];

      self->_audiographScrubbingPreviousLocation.x = v5;
      self->_audiographScrubbingPreviousLocation.y = v7;
    }
  }
}

- (void)_endAudiographScrubbingMode
{
  if (AXDeviceSupportsSonification())
  {
    v3 = +[VOTAudiographManager sharedManager];
    isScrubbing = [v3 isScrubbing];

    if (isScrubbing)
    {
      v5 = +[VOTAudiographManager sharedManager];
      [v5 endScrubbingSession];

      self->_flags.audiographScrubbingMode = 0;
    }
  }
}

- (void)_handleElementPreviewNotification:(id)notification
{
  v4 = [notification isEqualToNumber:&__kCFBooleanTrue];
  self->_isInPreview = v4;
  if (v4)
  {
    self->_previewStartTime = CFAbsoluteTimeGetCurrent();
    [(VOTEventFactory *)self _updateCurrentElementOrbGestureMode];

    [(VOTEventFactory *)self _switchToTrackingMode];
  }

  else
  {
    self->_isPreviewPinned = 0;

    [(VOTEventFactory *)self _liftPreviewFinger];
  }
}

- (CGPoint)convertDevicePointToZoomedPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (_AXSZoomTouchEnabled() && *&dword_1001FED98 > 1.0 && !CGRectIsEmpty(*ymmword_1001FEDA0) && (AXInCheckerBoardScenario() & 1) == 0 && (AXInPreboardScenario() & 1) == 0)
  {
    LODWORD(v6) = dword_1001FED98;
    if (*&dword_1001FED98 == 0.0)
    {
      v7 = +[ZoomServices sharedInstance];
      [v7 zoomLevelOnDisplay:0];
      *&v8 = v8;
      dword_1001FED98 = LODWORD(v8);

      v9 = +[ZoomServices sharedInstance];
      [v9 zoomFrameOnDisplay:0];
      [VOTEventFactory _updateZoomFrame:?];
    }

    [(VOTEventFactory *)self _convertFrame:[(SCRCGestureFactory *)self->_gestureFactory orientation] toPortraitFromOrientation:*ymmword_1001FEDA0, *&ymmword_1001FEDA0[8], *&ymmword_1001FEDA0[16], *&ymmword_1001FEDA0[24]];
    x = floor(v12 + x / *&xmmword_1001FF150 * v10);
    y = floor(v13 + v11 * (y / *(&xmmword_1001FF150 + 1)));
  }

  v14 = x;
  v15 = y;
  result.y = v15;
  result.x = v14;
  return result;
}

- (CGRect)_convertFrame:(CGRect)frame toPortraitFromOrientation:(int64_t)orientation
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  switch(orientation)
  {
    case 3:
      v12 = *&xmmword_1001FF150;
      v9 = v12 - CGRectGetMaxY(frame);
      goto LABEL_7;
    case 2:
      v11 = *(&xmmword_1001FF150 + 1);
      x = v11 - CGRectGetMaxX(frame);
      v9 = y;
LABEL_7:
      v13 = height;
      height = width;
      goto LABEL_10;
    case 1:
      v8 = *&xmmword_1001FF150;
      v9 = v8 - CGRectGetMaxX(frame);
      v10 = *(&xmmword_1001FF150 + 1);
      v17.origin.x = x;
      v17.origin.y = y;
      v17.size.width = width;
      v17.size.height = height;
      x = v10 - CGRectGetMaxY(v17);
      break;
    default:
      v9 = frame.origin.x;
      x = frame.origin.y;
      break;
  }

  v13 = width;
LABEL_10:
  v14 = v9;
  v15 = x;
  v16 = height;
  result.size.height = v16;
  result.size.width = v13;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGPoint)_convertZoomPointToDevicePoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(VOTEventFactory *)self _convertFrame:[(SCRCGestureFactory *)self->_gestureFactory orientation] toPortraitFromOrientation:*ymmword_1001FEDA0, *&ymmword_1001FEDA0[8], *&ymmword_1001FEDA0[16], *&ymmword_1001FEDA0[24]];
  v9 = *&xmmword_1001FF150 * ((x - v5) / v7);
  v10 = *(&xmmword_1001FF150 + 1) * ((y - v6) / v8);
  result.y = v10;
  result.x = v9;
  return result;
}

- (void)_convertZoomRecordToDeviceRecord:(id)record
{
  recordCopy = record;
  if ([recordCopy type] == 3001)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    handInfo = [recordCopy handInfo];
    paths = [handInfo paths];

    v7 = [paths countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(paths);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          [v11 pathLocation];
          [(VOTEventFactory *)self _convertZoomPointToDevicePoint:?];
          [v11 setPathLocation:?];
        }

        v8 = [paths countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)_handleEventWithData:(id)data
{
  additionalFlags = [AXEventRepresentation representationWithData:data];
  v5 = additionalFlags;
  if (additionalFlags)
  {
    v14 = additionalFlags;
    additionalFlags = [additionalFlags additionalFlags];
    v5 = v14;
    if ((additionalFlags & 0x2000000) != 0)
    {
      additionalFlags = [v14 senderID];
      v5 = v14;
      if (additionalFlags != 0x8000000817319373)
      {
        if (_AXSZoomTouchEnabled())
        {
          LODWORD(v6) = dword_1001FED98;
          if (*&dword_1001FED98 > 1.0 && !CGRectIsEmpty(*ymmword_1001FEDA0) && (AXInPreboardScenario() & 1) == 0 && (AXInCheckerBoardScenario() & 1) == 0)
          {
            [(VOTEventFactory *)self _convertZoomRecordToDeviceRecord:v14];
          }
        }

        originalType = [v14 originalType];
        v8 = originalType;
        if (originalType > 1024)
        {
          if (originalType < 1031)
          {
            WeakRetained = objc_loadWeakRetained(&self->_delegate);
            [WeakRetained handleMediaKeyPress:v14];
LABEL_32:

            goto LABEL_33;
          }

          if ((originalType - 1032) >= 2)
          {
            if (originalType != 1031)
            {
              if (originalType == 3001)
              {
                v10 = +[AXElement systemWideElement];
                isPassivelyListeningForEvents = [v10 isPassivelyListeningForEvents];

                if ((isPassivelyListeningForEvents & 1) == 0)
                {
                  _AXAssert();
                }
              }

              goto LABEL_33;
            }

            WeakRetained = objc_loadWeakRetained(&self->_delegate);
            [WeakRetained handleProximityEvent:v14];
            goto LABEL_32;
          }

          v12 = objc_loadWeakRetained(&self->_delegate);
          [v12 handlePlayPauseKeyPress:v14];

LABEL_28:
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained handleRingerSwitchSwitched:v14];
          goto LABEL_32;
        }

        if (originalType > 1009)
        {
          if ((originalType - 1012) < 2)
          {
            goto LABEL_28;
          }

          if (originalType != 1010)
          {
            if (originalType == 1011)
            {
              WeakRetained = objc_loadWeakRetained(&self->_delegate);
              [WeakRetained handleLockButtonPress:v14];
              goto LABEL_32;
            }

LABEL_33:
            additionalFlags = [VOTSharedWorkspace userInteractedWithDeviceWithHand:v8 == 3001];
            v5 = v14;
            goto LABEL_34;
          }
        }

        else
        {
          if (originalType != 1001)
          {
            if (originalType != 1007 && originalType != 1009)
            {
              goto LABEL_33;
            }

            WeakRetained = objc_loadWeakRetained(&self->_delegate);
            [WeakRetained handleVolumeButtonPress:v14];
            goto LABEL_32;
          }

          v13 = objc_loadWeakRetained(&self->_delegate);
          [v13 handleMenuButtonPress:v14];
        }

        [VOTSharedWorkspace unmuteEligibleEventOccured];
        goto LABEL_33;
      }
    }
  }

LABEL_34:

  _objc_release_x1(additionalFlags, v5);
}

- (CGPoint)fingerPosition
{
  [(SCRCGestureFactory *)self->_gestureFactory rawLocation];

  v3 = sub_1000517DC(v2);
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)_setFingerCount:(unint64_t)count
{
  self->_fingerCount = count;
  if (!count)
  {
    [(VOTEventFactory *)self _commitDeferredZoomInfo];
  }
}

- (void)directInteractionModeStatus:(BOOL)status
{
  if (status)
  {
    directInteractionKeyboardManager = [(VOTEventFactory *)self directInteractionKeyboardManager];
    [directInteractionKeyboardManager gestureKeyboardRegion];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    [(VOTEventFactory *)self _convertFrame:[(SCRCGestureFactory *)self->_gestureFactory orientation] toPortraitFromOrientation:v6, v8, v10, v12];
    v14 = v13;
    x = sub_1000517C4(v15);
    y = v17;
    width = sub_1000517C4(v14);
    height = v20;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  gestureFactory = self->_gestureFactory;

  [(SCRCGestureFactory *)gestureFactory setTapSpeedTimeThreshold:3 forRegion:0.0 fingerCount:x, y, width, height];
}

- (BOOL)_isPreviewElementSelected
{
  currentElement = [(VOTEventFactory *)self currentElement];
  identifier = [currentElement identifier];
  v4 = [identifier isEqualToString:@"PreviewContainerElement"];

  return v4;
}

- (void)_simulatePreviewActionGesture
{
  y = self->_previewFingerLocation.y;
  if (y >= 1)
  {
    do
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v4 = self->_previewFingerContextId;
      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v14;
        v8 = fmax(y, 0.0);
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v14 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v10 = *(*(&v13 + 1) + 8 * i);
            self->_previewFingerLocation.y = v8;
            v11 = +[VOTElement systemWideElement];
            [v11 postFingerDragAtPoint:objc_msgSend(v10 withForce:"unsignedIntValue") withContextId:{self->_previewFingerLocation.x, self->_previewFingerLocation.y, 0.0}];
          }

          v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v6);
      }

      usleep(0x3E8u);
      v12 = __OFSUB__(y, 5);
      y -= 5;
    }

    while (!((y < 0) ^ v12 | (y == 0)));
  }

  AXPerformBlockOnMainThreadAfterDelay();
}

- (void)_reducePreviewFingerStartingForce:(double)force
{
  for (i = self->_previewFingerStartingForce; i > force; i = self->_previewFingerStartingForce)
  {
    self->_previewFingerStartingForce = fmax(force, i + -2.0);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = self->_previewFingerContextId;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * v10);
          v12 = +[VOTElement systemWideElement];
          [v12 postFingerTouchAtPoint:objc_msgSend(v11 withForce:"unsignedIntValue") withContextId:{self->_previewFingerLocation.x, self->_previewFingerLocation.y, self->_previewFingerStartingForce}];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    usleep(5u);
  }
}

- (void)_simulatePop
{
  self->_isInPreview = 0;
  self->_isPreviewPinned = 0;
  AXForceTouchThresholdPeekPopMidpoint();
  [(VOTEventFactory *)self _reducePreviewFingerStartingForce:?];
  previewFingerStartingForce = self->_previewFingerStartingForce;
  self->_currentTouchForce = previewFingerStartingForce;
  AXForceTouchThresholdPop();
  if (previewFingerStartingForce <= v4)
  {
    do
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v5 = self->_previewFingerContextId;
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v15;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v15 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v14 + 1) + 8 * i);
            v11 = +[VOTElement systemWideElement];
            [v11 postFingerTouchAtPoint:objc_msgSend(v10 withForce:"unsignedIntValue") withContextId:{self->_previewFingerLocation.x, self->_previewFingerLocation.y, self->_currentTouchForce}];
          }

          v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v7);
      }

      usleep(5u);
      v12 = self->_currentTouchForce + 2.0;
      self->_currentTouchForce = v12;
      AXForceTouchThresholdPop();
    }

    while (v12 <= v13);
  }

  AXPerformBlockOnMainThreadAfterDelay();
}

- (void)_simulateEdgePress
{
  if (vabdd_f64(CFAbsoluteTimeGetCurrent(), self->_lastEdgePressTime) > 2.0)
  {
    self->_lastEdgePressTime = CFAbsoluteTimeGetCurrent();
    v6 = objc_alloc_init(VOTEvent);
    [(VOTEvent *)v6 setCommand:kVOTEventCommandHomeButtonPress];
    elementManager = [(VOTEventFactory *)self elementManager];
    [elementManager handleEvent:v6];

    elementManager2 = [(VOTEventFactory *)self elementManager];
    [elementManager2 handleEvent:v6];

    v5 = +[AXSpringBoardServer server];
    [v5 simulateEdgePressHaptics];
  }
}

- (void)_simulatePeekAndSwitchToTapHoldMode
{
  currentElement = [(VOTEventFactory *)self currentElement];
  v4 = currentElement;
  if (currentElement)
  {
    [currentElement centerPoint];
    v6 = -1.0;
    v8 = v7 == -1.0 && v5 == -1.0;
    v9 = -1.0;
    if (!v8)
    {
      [v4 updateVisiblePoint];
      [v4 visiblePoint];
      [v4 windowContextId];
      [v4 displayId];
      AXConvertPointFromHostedCoordinates();
      v9 = v10;
      v6 = v11;
    }

    WeakRetained = objc_loadWeakRetained(&self->_elementManager);
    [WeakRetained currentLineFrame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21 = CGPointZero.y == v16 && CGPointZero.x == v14;
    if (([v4 doesHaveTraits:{kAXIsEditingTrait, CGPointZero.x}] & 1) != 0 || (objc_msgSend(v4, "doesHaveTraits:", kAXTextAreaTrait) & 1) == 0)
    {
      v22 = [v4 doesHaveTraits:kAXWebContentTrait | kAXStaticTextTrait] ^ 1;
    }

    else
    {
      v22 = 0;
    }

    v56.origin.x = v14;
    v56.origin.y = v16;
    v56.size.width = v18;
    v56.size.height = v20;
    MidX = CGRectGetMidX(v56);
    v57.origin.x = v14;
    v57.origin.y = v16;
    v57.size.width = v18;
    v57.size.height = v20;
    MidY = CGRectGetMidY(v57);
    v25 = +[VOTElement systemWideElement];
    [v25 convertPoint:objc_msgSend(v4 toContextId:{"windowContextId"), MidX, MidY}];
    v27 = v26;
    v29 = v28;

    if (((v21 | v22) & 1) == 0 || ([v4 dataDetectorURL:{v27, v29}], v30 = objc_claimAutoreleasedReturnValue(), v30, v30))
    {
      v6 = MidY;
      v9 = MidX;
    }

    windowContextId = [v4 windowContextId];
    v32 = +[AXBackBoardServer server];
    v33 = [v32 contextIdHostingContextId:windowContextId];

    v48 = _NSConcreteStackBlock;
    v49 = 3221225472;
    v50 = sub_1000D1388;
    v51 = &unk_1001C7900;
    selfCopy = self;
    v53 = windowContextId;
    v54 = v33;
    AX_PERFORM_WITH_LOCK();
    self->_currentTouchForce = 0.0;
    AXForceTouchThresholdPeek();
    if (v34 > 0.0)
    {
      do
      {
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        tapAndHoldContextNumbers = [(VOTEventFactory *)self tapAndHoldContextNumbers];
        v36 = [tapAndHoldContextNumbers countByEnumeratingWithState:&v44 objects:v55 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v45;
          do
          {
            for (i = 0; i != v37; i = i + 1)
            {
              if (*v45 != v38)
              {
                objc_enumerationMutation(tapAndHoldContextNumbers);
              }

              v40 = *(*(&v44 + 1) + 8 * i);
              v41 = +[VOTElement systemWideElement];
              [v41 postFingerTouchAtPoint:objc_msgSend(v40 withForce:"unsignedIntValue") withContextId:{v9, v6, self->_currentTouchForce}];
            }

            v37 = [tapAndHoldContextNumbers countByEnumeratingWithState:&v44 objects:v55 count:16];
          }

          while (v37);
        }

        usleep(0x3E8u);
        v42 = self->_currentTouchForce + 30.0;
        self->_currentTouchForce = v42;
        AXForceTouchThresholdPeek();
      }

      while (v42 < v43);
    }
  }

  self->_flags.orbMode = 1;
  [(SCRCTargetSelectorTimer *)self->_tapHoldTimer dispatchAfterDelay:&__kCFBooleanTrue withObject:0.0];
}

- (void)_switchToTrackingMode
{
  self->_flags.tapAndHoldMode = 0;
  self->_flags.orbMode = 0;
  [(SCRCGestureFactory *)self->_gestureFactory rawLocation];
  v4 = sub_1000517DC(v3);
  v6 = v5;
  [(SCRCGestureFactory *)self->_gestureFactory firstFingerPressure];
  v8 = v7;
  [(VOTEventFactory *)self convertDevicePointToZoomedPoint:v4, v6];
  v11 = v9;
  v12 = v10;
  if (self->_isInPreview)
  {
    self->_previewFingerStartingForce = v8;
    self->_previewFingerLocation.x = v9;
    self->_previewFingerLocation.y = v10;
    self->_previewPopDelayTime = CFAbsoluteTimeGetCurrent();
    currentElement = [(VOTEventFactory *)self currentElement];
    if (currentElement)
    {
      [(NSMutableArray *)self->_previewFingerContextId removeAllObjects];
      windowContextId = [currentElement windowContextId];
      previewFingerContextId = self->_previewFingerContextId;
      v16 = [NSNumber numberWithUnsignedInt:windowContextId];
      [(NSMutableArray *)previewFingerContextId addObject:v16];

      v17 = +[AXBackBoardServer server];
      v18 = [v17 contextIdHostingContextId:windowContextId];

      v19 = self->_previewFingerContextId;
      v20 = [NSNumber numberWithUnsignedInt:v18];
      [(NSMutableArray *)v19 addObject:v20];
    }
  }

  else
  {
    [(VOTEventFactory *)self _liftFromTapAndHoldAndResetFingers:0];
  }

  v22 = objc_alloc_init(AXIndexMap);
  [v22 setObject:&__kCFBooleanTrue forIndex:112];
  v21 = [VOTEvent touchEventWithCommand:kVOTEventCommandTracking info:v22];
  [(VOTEventFactory *)self _updateFirstnessOfTrackingEvent:v21];
  [v21 setTouchPoint:{v11, v12}];
  [(SCRCGestureFactory *)self->_gestureFactory rawLocation];
  [v21 setTouchRawLocation:?];
  [v21 setTouchForce:v8];
  [(VOTEventFactory *)self processEvent:v21];
}

- (void)_liftPreviewFinger
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_previewFingerContextId;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = +[VOTElement systemWideElement];
        [v9 postFingerLiftAtPoint:objc_msgSend(v8 withContextId:{"unsignedIntValue"), self->_previewFingerLocation.x, self->_previewFingerLocation.y}];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_previewFingerContextId removeAllObjects];
}

- (void)_updateCurrentElementOrbGestureMode
{
  self->_currentOrbGestureMode = 2;
  currentElement = [(VOTEventFactory *)self currentElement];
  isValid = [currentElement isValid];

  if (isValid)
  {
    currentElement2 = [(VOTEventFactory *)self currentElement];
    uiElement = [currentElement2 uiElement];
    v7 = [uiElement arrayWithAXAttribute:2063];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = [v13 objectForKeyedSubscript:{@"AXSupportedGestureTypeKey", v17}];
          integerValue = [v14 integerValue];

          if (integerValue == 6)
          {
            v16 = [v13 objectForKeyedSubscript:@"AXOrbGestureMode"];
            self->_currentOrbGestureMode = [v16 intValue];

            goto LABEL_12;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

- (double)_edgePanGestureStartThreshold
{
  v2 = dbl_10017E580[([(SCRCGestureFactory *)self->_gestureFactory orientation]& 0xFFFFFFFFFFFFFFFELL) == 2];
  IsPad = AXDeviceIsPad();
  result = 0.0199999996;
  if (!IsPad)
  {
    return v2;
  }

  return result;
}

- (id)votActionForEdgePanGestureState:(unint64_t)state
{
  v4 = state - 3;
  if (state - 3 <= 7 && ((0xDFu >> v4) & 1) != 0)
  {
    v5 = **(&off_1001CAAB8 + v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)gesturedTextInputManager:(id)manager moveToElementMatchingRotorType:(int64_t)type inDirection:(int64_t)direction
{
  elementManager = [(VOTEventFactory *)self elementManager];
  [elementManager moveToElementMatchingRotorType:type inDirection:direction];
}

- (void)gesturedTextInputManager:(id)manager accessCurrentGesturedTextInputElement:(id)element
{
  elementCopy = element;
  currentElement = [(VOTEventFactory *)self currentElement];
  elementForGesturedTextInput = [currentElement elementForGesturedTextInput];

  if (!elementForGesturedTextInput)
  {
    elementForGesturedTextInput = [(VOTEventFactory *)self currentElement];
  }

  elementCopy[2](elementCopy, elementForGesturedTextInput);
}

- (void)brailleGestureManager:(id)manager setForcedOrientation:(int64_t)orientation shouldAnnounce:(BOOL)announce
{
  announceCopy = announce;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained handleSetForcedOrientation:orientation shouldAnnounce:announceCopy];
}

- (void)brailleGestureManager:(id)manager unsetForcedOrientationAndAnnounce:(BOOL)announce
{
  announceCopy = announce;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained handleUnsetForcedOrientationAndAnnounce:announceCopy];
}

- (BOOL)_handleAccessibilityEvent:(id)event
{
  accessibilityData = [event accessibilityData];
  if ([accessibilityData page] != 1)
  {
    goto LABEL_8;
  }

  if ([accessibilityData usage] == 1)
  {
    +[VOSGesture BackTapDoubleTap];
  }

  else
  {
    +[VOSGesture BackTapTripleTap];
  }
  v5 = ;
  v6 = +[VOTWorkspace sharedWorkspace];
  userCommandManager = [v6 userCommandManager];

  _commandResolver = [(VOTEventFactory *)self _commandResolver];
  v9 = [userCommandManager eventForTouchGesture:v5 resolver:_commandResolver];

  if (!v9)
  {

LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v10 = v9;
  AXPerformBlockAsynchronouslyOnMainThread();

  v11 = 1;
LABEL_9:

  return v11;
}

- (BOOL)handleVOSGesture:(id)gesture
{
  gestureCopy = gesture;
  if (!gestureCopy)
  {
    goto LABEL_5;
  }

  userCommandManager = [VOTSharedWorkspace userCommandManager];
  _commandResolver = [(VOTEventFactory *)self _commandResolver];
  v7 = [userCommandManager eventForTouchGesture:gestureCopy resolver:_commandResolver];

  if (!v7)
  {

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = v7;
  AXPerformBlockAsynchronouslyOnMainThread();

  v9 = 1;
LABEL_6:

  return v9;
}

- (void)_updateVoiceOverHandGesturesActionCustomizations
{
  v5 = +[AXSettings sharedInstance];
  voiceOverHandGesturesActionCustomizations = [v5 voiceOverHandGesturesActionCustomizations];
  handGestureCommandDict = self->_handGestureCommandDict;
  self->_handGestureCommandDict = voiceOverHandGesturesActionCustomizations;
}

- (BOOL)_handleVoiceOverGreySupportAccessibilityEvent:(id)event
{
  v3 = [(VOTEventFactory *)self _mapAXEventToVOTEvent:event];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    AXPerformBlockAsynchronouslyOnMainThread();
  }

  return v4 != 0;
}

- (id)_mapAXEventToVOTEvent:(id)event
{
  accessibilityData = [event accessibilityData];
  handGestureCommandDict = self->_handGestureCommandDict;
  v6 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [accessibilityData usage]);
  v7 = [(NSDictionary *)handGestureCommandDict objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [VOTEvent internalEventWithCommand:v7 info:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (VOTElementManagementProtocol)elementManager
{
  WeakRetained = objc_loadWeakRetained(&self->_elementManager);

  return WeakRetained;
}

- (VOTRotorManagementProtocol)rotorManager
{
  WeakRetained = objc_loadWeakRetained(&self->_rotorManager);

  return WeakRetained;
}

- (VOTDirectTouchManagementProtocol)directTouchManager
{
  WeakRetained = objc_loadWeakRetained(&self->_directTouchManager);

  return WeakRetained;
}

- (VOTEventFactoryCallbackProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end