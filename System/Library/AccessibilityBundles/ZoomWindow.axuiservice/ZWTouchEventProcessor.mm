@interface ZWTouchEventProcessor
- (BOOL)_handleEvent:(id)event;
- (BOOL)_handleTouchEvent:(id)event;
- (BOOL)_handleWheelEvent:(id)event;
- (BOOL)_handleZoomGreySupportAccessibilityEvent:(id)event;
- (BOOL)_ignoreEventWhileStylusInUse:(id)use;
- (BOOL)_isZoomContextID:(unsigned int)d;
- (BOOL)_panBackwardOnMainDisplay;
- (BOOL)_panForwardOnMainDisplay;
- (BOOL)_shouldFilterPointerEvent:(id)event;
- (BOOL)_toggleZoomOnMainDisplay;
- (BOOL)handlePointerEvent:(id)event;
- (CGPoint)_convertZoomOffset:(CGPoint)result toScreenCoordinatesFromInterfaceOrientation:(int64_t)orientation;
- (CGPoint)_convertZoomPointToSystemPoint:(CGPoint)point lensFrame:(CGRect)frame offset:(CGPoint)offset zoomFactor:(double)factor;
- (CGPoint)_flipCoordinates:(CGPoint)result orientation:(int64_t)orientation screenSize:(CGSize)size;
- (CGPoint)_shiftPointForReplicators:(CGPoint)replicators;
- (ZWTouchEventProcessor)initWithHIDTapIdentifier:(id)identifier HIDEventTapPriority:(int)priority systemEventTapIdentifier:(id)tapIdentifier systemEventTapPriority:(int)tapPriority;
- (id)zoomDelegateForEvent:(id)event;
- (unint64_t)_mapAXEventToZoomGreyAction:(id)action;
- (void)_cleanEventUpdateMap;
- (void)_dispatchZoomRemapEvent:(id)event;
- (void)_dispatchZoomRemapEvent:(id)event lensFrame:(CGRect)frame offset:(CGPoint)offset zoomFactor:(double)factor applyZoom:(BOOL)zoom menuScreenRect:(CGRect)rect;
- (void)_dispatchZoomRemapUpdate:(id)update;
- (void)_postCancelEvent;
- (void)_setupZoomGreyObservers;
- (void)_updateZoomHandGesturesActionCustomizations;
- (void)dealloc;
- (void)disableSleepTimer:(BOOL)timer;
- (void)dispatchEventToSystem:(id)system;
- (void)postHandCancelWithSenderID:(unint64_t)d;
@end

@implementation ZWTouchEventProcessor

- (ZWTouchEventProcessor)initWithHIDTapIdentifier:(id)identifier HIDEventTapPriority:(int)priority systemEventTapIdentifier:(id)tapIdentifier systemEventTapPriority:(int)tapPriority
{
  v6 = *&tapPriority;
  v8 = *&priority;
  identifierCopy = identifier;
  tapIdentifierCopy = tapIdentifier;
  v32.receiver = self;
  v32.super_class = ZWTouchEventProcessor;
  v12 = [(ZWEventProcessor *)&v32 initWithHIDTapIdentifier:identifierCopy HIDEventTapPriority:v8 systemEventTapIdentifier:tapIdentifierCopy systemEventTapPriority:v6];
  if (v12)
  {
    v13 = [ZOTFullscreenEventHandler alloc];
    hIDEventReceiveThread = [(ZWTouchEventProcessor *)v12 HIDEventReceiveThread];
    v15 = [(ZOTFullscreenEventHandler *)v13 initWithEventThread:hIDEventReceiveThread];
    fullscreenEventHandler = v12->_fullscreenEventHandler;
    v12->_fullscreenEventHandler = v15;

    [(ZOTFullscreenEventHandler *)v12->_fullscreenEventHandler setEventDelegate:v12];
    v17 = objc_alloc_init(NSMutableArray);
    fullScreenEventQueue = v12->_fullScreenEventQueue;
    v12->_fullScreenEventQueue = v17;

    v19 = objc_alloc_init(NSMutableDictionary);
    eventIdentifiersToFinalLocations = v12->_eventIdentifiersToFinalLocations;
    v12->_eventIdentifiersToFinalLocations = v19;

    v21 = objc_alloc_init(AXDispatchTimer);
    eventUpdateMapCleanerTimer = v12->_eventUpdateMapCleanerTimer;
    v12->_eventUpdateMapCleanerTimer = v21;

    [(AXDispatchTimer *)v12->_eventUpdateMapCleanerTimer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    objc_initWeak(&location, v12);
    v23 = +[AXSettings sharedInstance];
    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = __118__ZWTouchEventProcessor_initWithHIDTapIdentifier_HIDEventTapPriority_systemEventTapIdentifier_systemEventTapPriority___block_invoke;
    v29 = &unk_78CD8;
    objc_copyWeak(&v30, &location);
    [v23 registerUpdateBlock:&v26 forRetrieveSelector:"zoomTrackpadGestureEnabled" withListener:v12];

    objc_destroyWeak(&v30);
    v24 = [AXSettings sharedInstance:v26];
    v12->_stealTrackpadGestures = [v24 zoomTrackpadGestureEnabled];

    [(ZWTouchEventProcessor *)v12 _setupZoomGreyObservers];
    objc_destroyWeak(&location);
  }

  return v12;
}

void __118__ZWTouchEventProcessor_initWithHIDTapIdentifier_HIDEventTapPriority_systemEventTapIdentifier_systemEventTapPriority___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = +[AXSettings sharedInstance];
  WeakRetained[140] = [v1 zoomTrackpadGestureEnabled];
}

- (void)_setupZoomGreyObservers
{
  v3 = +[AXSettings sharedInstance];
  zoomHandGesturesActionCustomizations = [v3 zoomHandGesturesActionCustomizations];
  handGestureCommandDict = self->_handGestureCommandDict;
  self->_handGestureCommandDict = zoomHandGesturesActionCustomizations;

  objc_initWeak(&location, self);
  v6 = +[AXSettings sharedInstance];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __48__ZWTouchEventProcessor__setupZoomGreyObservers__block_invoke;
  v7[3] = &unk_78CD8;
  objc_copyWeak(&v8, &location);
  [v6 registerUpdateBlock:v7 forRetrieveSelector:"zoomHandGesturesActionCustomizations" withListener:self];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __48__ZWTouchEventProcessor__setupZoomGreyObservers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateZoomHandGesturesActionCustomizations];
}

- (void)dealloc
{
  [(ZOTFullscreenEventHandler *)self->_fullscreenEventHandler setEventDelegate:0];
  [(BSInvalidatable *)self->_sleepTimerDisabledAssertion invalidate];
  v3.receiver = self;
  v3.super_class = ZWTouchEventProcessor;
  [(ZWEventProcessor *)&v3 dealloc];
}

- (BOOL)_handleEvent:(id)event
{
  eventCopy = event;
  v5 = [eventCopy senderID] + 0x7FFFFFF7E8CE6C8ELL;
  if (v5 < 8 && ((0x87u >> v5) & 1) != 0 || ([eventCopy accessibilityData], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "eventSenderIdentifier"), v6, v7 == &dword_0 + 3))
  {
    v8 = 0;
    goto LABEL_47;
  }

  if ([eventCopy type] == 3001)
  {
    handInfo = [eventCopy handInfo];
    eventType = [handInfo eventType];

    if (eventType == 11)
    {
      hidPostThread = [(ZWEventProcessor *)self hidPostThread];
      v8 = 1;
      [hidPostThread performSelector:"_dispatchZoomRemapUpdate:" onTarget:self count:1 objects:eventCopy];
      goto LABEL_46;
    }

    eventUpdateMapCleanerTimer = self->_eventUpdateMapCleanerTimer;
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = __38__ZWTouchEventProcessor__handleEvent___block_invoke;
    v48[3] = &unk_78D00;
    v48[4] = self;
    [(AXDispatchTimer *)eventUpdateMapCleanerTimer afterDelay:v48 processBlock:1.0];
    trackpadHandEvent = [eventCopy copy];
    v14 = [(ZWTouchEventProcessor *)self _handleTouchEvent:trackpadHandEvent];
    goto LABEL_11;
  }

  if ([eventCopy type] == 1100)
  {
    goto LABEL_9;
  }

  if ([eventCopy type] == 3200 && self->_stealTrackpadGestures)
  {
    pointerControllerInfo = [eventCopy pointerControllerInfo];
    trackpadHandEvent = [pointerControllerInfo trackpadHandEvent];

    if (!trackpadHandEvent)
    {
      v8 = 0;
      goto LABEL_12;
    }

    v14 = [(ZOTFullscreenEventHandler *)self->_fullscreenEventHandler handleTrackpadEvent:trackpadHandEvent];
LABEL_11:
    v8 = v14;
LABEL_12:

    goto LABEL_42;
  }

  if ([eventCopy type] != 10 && objc_msgSend(eventCopy, "type") != 11)
  {
LABEL_9:
    v8 = 0;
    goto LABEL_42;
  }

  v16 = +[ZoomServicesKeyboardManager sharedInstance];
  v17 = [v16 keyboardCommandForEvent:eventCopy];

  if (v17 == &dword_0 + 2)
  {
    fullscreenEventHandler = [(ZWTouchEventProcessor *)self fullscreenEventHandler];
    isAnyDisplayZoomedIn = [fullscreenEventHandler isAnyDisplayZoomedIn];

    if (isAnyDisplayZoomedIn)
    {
      fullscreenEventHandler2 = [(ZWTouchEventProcessor *)self fullscreenEventHandler];
      mainDisplayDelegate = [(ZWEventProcessor *)self mainDisplayDelegate];
      v22 = [fullscreenEventHandler2 isDisplayZoomedIn:mainDisplayDelegate];

      if (v22)
      {
        mainDisplayDelegate2 = [(ZWEventProcessor *)self mainDisplayDelegate];
        [mainDisplayDelegate2 eventProcessor:self didReceiveKeyboardEventWithCommand:2];
      }

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      externalDisplayDelegates = [(ZWEventProcessor *)self externalDisplayDelegates];
      v25 = [externalDisplayDelegates countByEnumeratingWithState:&v40 objects:v49 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v41;
        do
        {
          for (i = 0; i != v26; i = i + 1)
          {
            if (*v41 != v27)
            {
              objc_enumerationMutation(externalDisplayDelegates);
            }

            v29 = *(*(&v40 + 1) + 8 * i);
            fullscreenEventHandler3 = [(ZWTouchEventProcessor *)self fullscreenEventHandler];
            v31 = [fullscreenEventHandler3 isDisplayZoomedIn:v29];

            if (v31)
            {
              [v29 eventProcessor:self didReceiveKeyboardEventWithCommand:2];
            }
          }

          v26 = [externalDisplayDelegates countByEnumeratingWithState:&v40 objects:v49 count:16];
        }

        while (v26);
      }
    }

    else
    {
      mainDisplayDelegate3 = [(ZWEventProcessor *)self mainDisplayDelegate];
      [mainDisplayDelegate3 eventProcessor:self didReceiveKeyboardEventWithCommand:2];

      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      externalDisplayDelegates = [(ZWEventProcessor *)self externalDisplayDelegates];
      v33 = [externalDisplayDelegates countByEnumeratingWithState:&v44 objects:v50 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v45;
        do
        {
          for (j = 0; j != v34; j = j + 1)
          {
            if (*v45 != v35)
            {
              objc_enumerationMutation(externalDisplayDelegates);
            }

            [*(*(&v44 + 1) + 8 * j) eventProcessor:self didReceiveKeyboardEventWithCommand:2];
          }

          v34 = [externalDisplayDelegates countByEnumeratingWithState:&v44 objects:v50 count:16];
        }

        while (v34);
      }
    }
  }

  else
  {
    externalDisplayDelegates = [(ZWTouchEventProcessor *)self zoomDelegateForEvent:eventCopy];
    [externalDisplayDelegates eventProcessor:self didReceiveKeyboardEventWithCommand:v17];
  }

  v8 = (v17 - 17) < 0xFFFFFFFFFFFFFFFDLL;
LABEL_42:
  if ([eventCopy type] != 5000)
  {
    goto LABEL_47;
  }

  hidPostThread = [eventCopy accessibilityData];
  if ([hidPostThread page] != &dword_0 + 2)
  {
LABEL_46:

    goto LABEL_47;
  }

  v37 = +[AXSettings sharedInstance];
  zoomHandGesturesEnabled = [v37 zoomHandGesturesEnabled];

  if (zoomHandGesturesEnabled)
  {
    v8 = [(ZWTouchEventProcessor *)self _handleZoomGreySupportAccessibilityEvent:eventCopy];
  }

LABEL_47:

  return v8;
}

void __38__ZWTouchEventProcessor__handleEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hidPostThread];
  [v2 performSelector:"_cleanEventUpdateMap" onTarget:*(a1 + 32) count:0 objects:0];
}

- (BOOL)_handleWheelEvent:(id)event
{
  eventCopy = event;
  v5 = [(ZWTouchEventProcessor *)self zoomDelegateForEvent:eventCopy];
  scrollAmount = [eventCopy scrollAmount];
  scrollAccelAmount = [eventCopy scrollAccelAmount];

  LOBYTE(self) = [v5 eventProcessor:self didGetWheelEventWithDelta:&scrollAmount[scrollAccelAmount]];
  return self;
}

- (BOOL)_handleTouchEvent:(id)event
{
  eventCopy = event;
  handInfo = [eventCopy handInfo];
  eventType = [handInfo eventType];

  v7 = [eventCopy denormalizedEventRepresentation:0 descale:1];

  handInfo2 = [v7 handInfo];
  paths = [handInfo2 paths];
  firstPath = [paths firstPath];
  [firstPath pathLocation];
  v12 = v11;
  v14 = v13;

  v15 = ZOTEventRealFingerCount(v7);
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v70 = 0u;
  memset(&v69, 0, sizeof(v69));
  memset(&v68, 0, sizeof(v68));
  v66 = 0u;
  memset(&v67, 0, sizeof(v67));
  v65 = 0u;
  mainDisplayDelegate = [(ZWEventProcessor *)self mainDisplayDelegate];
  v17 = mainDisplayDelegate;
  if (mainDisplayDelegate)
  {
    [mainDisplayDelegate currentUIContextForEventProcessor:self];
  }

  else
  {
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v70 = 0u;
    memset(&v69, 0, sizeof(v69));
    memset(&v68, 0, sizeof(v68));
    v66 = 0u;
    memset(&v67, 0, sizeof(v67));
    v65 = 0u;
  }

  if (eventType == 1)
  {
    if (self->_userIsTouchingScreen)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __43__ZWTouchEventProcessor__handleTouchEvent___block_invoke;
      block[3] = &unk_78D00;
      v64 = v7;
      dispatch_async(&_dispatch_main_q, block);
    }

    handInfo3 = [v7 handInfo];
    self->_stylusIsTouchingScreen = [handInfo3 isStylus];

    self->_userIsTouchingScreen = 1;
    self->_firstTouchWentIntoLensContent = 0;
    [(ZOTFullscreenEventHandler *)self->_fullscreenEventHandler setFirstTouchWentIntoLensContent:0];
    self->_firstTouchWentIntoLensContentOuterPerimeter = 0;
    self->_firstTouchWentIntoSlug = 0;
    mainDisplayDelegate2 = [(ZWEventProcessor *)self mainDisplayDelegate];
    [mainDisplayDelegate2 removeHomeGestureAssertionWithEventProcessor:self];

    mainDisplayDelegate3 = [(ZWEventProcessor *)self mainDisplayDelegate];
    [mainDisplayDelegate3 eventProcessor:self didGetFirstTouchAtLocation:{v12, v14}];

    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = __43__ZWTouchEventProcessor__handleTouchEvent___block_invoke_2;
    v62[3] = &unk_78D00;
    v62[4] = self;
    dispatch_async(&_dispatch_main_q, v62);
  }

  else
  {
    if (eventType > 8)
    {
      if (eventType != 10 && (eventType != 9 || !self->_userIsTouchingScreen))
      {
        goto LABEL_18;
      }
    }

    else if (eventType != 6 && eventType != 8)
    {
      goto LABEL_18;
    }

    self->_userIsTouchingScreen = 0;
    handInfo4 = [v7 handInfo];
    isStylus = [handInfo4 isStylus];
    stylusIsTouchingScreen = 0;
    if ((isStylus & 1) == 0)
    {
      stylusIsTouchingScreen = self->_stylusIsTouchingScreen;
    }

    self->_stylusIsTouchingScreen = stylusIsTouchingScreen;

    mainDisplayDelegate4 = [(ZWEventProcessor *)self mainDisplayDelegate];
    [mainDisplayDelegate4 lastFingerWasLiftedWithEventProcessor:self firstTouchWentIntoSlug:self->_firstTouchWentIntoSlug];

    mainDisplayDelegate5 = [(ZWEventProcessor *)self mainDisplayDelegate];
    [mainDisplayDelegate5 removeHomeGestureAssertionWithEventProcessor:self];
  }

LABEL_18:
  mainDisplayDelegate6 = [(ZWEventProcessor *)self mainDisplayDelegate];
  v27 = [mainDisplayDelegate6 isBrailleInputUIShowingWithEventProcessor:self];

  if ((v27 & 1) == 0)
  {
    v29 = WORD4(v80);
    if ((BYTE8(v80) & 0xA) != 0 || (BYTE8(v80) & 0x31) == 1)
    {
      if (v15 != 3)
      {
        goto LABEL_19;
      }

      -[ZOTFullscreenEventHandler postHandCancelWithSenderID:](self->_fullscreenEventHandler, "postHandCancelWithSenderID:", [v7 senderID]);
LABEL_50:
      v28 = 1;
      goto LABEL_51;
    }

    if (v15 != 1)
    {
      goto LABEL_38;
    }

    if (self->_firstTouchWentIntoSlug)
    {
      if (eventType != 1)
      {
        if ((WORD4(v80) & 0x200) == 0)
        {
LABEL_26:
          if (!ZOTEventMeetsOrbThreshold(v7) || (WORD4(v80) & 0x800) != 0)
          {
LABEL_28:
            if (self->_firstTouchWentIntoSlug)
            {
              goto LABEL_59;
            }

LABEL_38:
            IsEmpty = CGRectIsEmpty(v69);
            v82.x = v12;
            v82.y = v14;
            if (CGRectContainsPoint(v69, v82) && (BYTE8(v80) & 4) == 0 && v15 < 2)
            {
              goto LABEL_19;
            }

            if (!IsEmpty)
            {
              mainDisplayDelegate7 = [(ZWEventProcessor *)self mainDisplayDelegate];
              [mainDisplayDelegate7 didGetTouchOutsideZoomMenuWithEventProcessor:self];
LABEL_49:

              goto LABEL_50;
            }

            v34 = ZWZoomLensBorderThicknessForTouches();
            v86 = CGRectInset(v67, v34, v34);
            x = v86.origin.x;
            y = v86.origin.y;
            height = v86.size.height;
            width = v86.size.width;
            v87 = CGRectInset(v67, -v34, -v34);
            v37 = v87.origin.x;
            v38 = v87.origin.y;
            v39 = v87.size.width;
            v40 = v87.size.height;
            v41 = WORD4(v80);
            if ((BYTE8(v80) & 0x10) != 0)
            {
              v42 = 0;
            }

            else
            {
              v83.x = v12;
              v83.y = v14;
              v42 = CGRectContainsPoint(v87, v83);
              v41 = WORD4(v80);
            }

            if ((v41 & 0x100) != 0 && !v42)
            {
              mainDisplayDelegate7 = [(ZWEventProcessor *)self mainDisplayDelegate];
              [mainDisplayDelegate7 didGetTouchOutsideLensChromeWithEventProcessor:self];
              goto LABEL_49;
            }

            if (eventType == 1)
            {
              v88.origin.x = x;
              v88.origin.y = y;
              v88.size.height = height;
              v88.size.width = width;
              v84.x = v12;
              v84.y = v14;
              v45 = CGRectContainsPoint(v88, v84);
              self->_firstTouchWentIntoLensContent = v45;
              [(ZOTFullscreenEventHandler *)self->_fullscreenEventHandler setFirstTouchWentIntoLensContent:(v45 | (WORD4(v80) >> 4)) & 1];
              v89.origin.x = v37;
              v89.origin.y = v38;
              v89.size.width = v39;
              v89.size.height = v40;
              v85.x = v12;
              v85.y = v14;
              self->_firstTouchWentIntoLensContentOuterPerimeter = CGRectContainsPoint(v89, v85);
              v41 = WORD4(v80);
            }

            v46 = (v41 & 0x90) == 0;
            v47 = v46 && v42;
            v48 = v46 && v42 || self->_firstTouchWentIntoLensContent;
            if (v47 == 1 && !self->_firstTouchWentIntoLensContent)
            {
              v48 = 0;
              if (v15 == 1 && (v41 & 4) == 0)
              {
LABEL_59:
                if (self->_userIsTouchingScreen)
                {
                  mainDisplayDelegate8 = [(ZWEventProcessor *)self mainDisplayDelegate];
                  [mainDisplayDelegate8 blockHomeGestureIfNeededWithEventProcessor:self];
                }

                goto LABEL_19;
              }
            }

            if ((v41 & 4) != 0)
            {
              if (eventType != 1 || (v41 & 0x100) != 0)
              {
                goto LABEL_70;
              }
            }

            else if ((v41 & 0x20) != 0)
            {
              if ((((v41 & 0x100) == 0) & *&v48 & ((v41 & 0x40) >> 6)) == 0)
              {
                goto LABEL_70;
              }
            }

            else
            {
              v50 = (v41 >> 8) & 1;
              if (eventType != 1)
              {
                v50 = 1;
              }

              if ((v50 | v42))
              {
                goto LABEL_70;
              }
            }

            v61[0] = _NSConcreteStackBlock;
            v61[1] = 3221225472;
            v61[2] = __43__ZWTouchEventProcessor__handleTouchEvent___block_invoke_3;
            v61[3] = &unk_78D00;
            v61[4] = self;
            dispatch_async(&_dispatch_main_q, v61);
LABEL_70:
            v31 = [v7 normalizedEventRepresentation:0 scale:1];

            if ((BYTE8(v80) & 4) != 0)
            {
              if (self->_firstTouchWentIntoLensContentOuterPerimeter)
              {
                mainDisplayDelegate9 = [(ZWEventProcessor *)self mainDisplayDelegate];
                v53 = [mainDisplayDelegate9 currentInterfaceOrientationForEventProcessor:self];

                [(ZWTouchEventProcessor *)self _convertZoomOffset:v53 toScreenCoordinatesFromInterfaceOrientation:*(&v79 + 1), *&v80];
                [(ZWTouchEventProcessor *)self _convertZoomPointToSystemPoint:v12 lensFrame:v14 offset:*&v67.origin zoomFactor:*&v67.size, v54, v55, v70];
                v12 = v56;
                v14 = v57;
              }

              v60[0] = _NSConcreteStackBlock;
              v60[1] = 3221225472;
              v60[2] = __43__ZWTouchEventProcessor__handleTouchEvent___block_invoke_4;
              v60[3] = &unk_78D28;
              v60[4] = self;
              *&v60[5] = v12;
              *&v60[6] = v14;
              dispatch_async(&_dispatch_main_q, v60);
              v51 = [(ZOTFullscreenEventHandler *)self->_fullscreenEventHandler handleSpeakUnderFingerEvent:v31];
              goto LABEL_78;
            }

            if ((WORD4(v80) & 0x1000) != 0)
            {
              [(ZOTFullscreenEventHandler *)self->_fullscreenEventHandler handleDragEvent:v31];
            }

            fullscreenEventHandler = self->_fullscreenEventHandler;
LABEL_74:
            v51 = [(ZOTFullscreenEventHandler *)fullscreenEventHandler handleEvent:v31];
LABEL_78:
            v28 = v51;
            goto LABEL_52;
          }

LABEL_37:
          v31 = [v7 normalizedEventRepresentation:0 scale:1];

          [v31 setAllowsZoomOrb:1];
          fullscreenEventHandler = self->_fullscreenEventHandler;
          goto LABEL_74;
        }

LABEL_36:
        if ((v29 & 0x800) != 0)
        {
          goto LABEL_28;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v81.x = v12;
      v81.y = v14;
      v30 = CGRectContainsPoint(v68, v81);
      if (eventType != 1 || !v30)
      {
        goto LABEL_38;
      }

      v29 = WORD4(v80);
    }

    self->_firstTouchWentIntoSlug = 1;
    if ((v29 & 0x200) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

LABEL_19:
  v28 = 0;
LABEL_51:
  v31 = v7;
LABEL_52:

  return v28;
}

uint64_t __43__ZWTouchEventProcessor__handleTouchEvent___block_invoke(uint64_t a1)
{
  result = AXIsInternalInstall();
  if (result)
  {
    [*(a1 + 32) creatorHIDEvent];
    return _AXLogWithFacility();
  }

  return result;
}

void __43__ZWTouchEventProcessor__handleTouchEvent___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) mainDisplayDelegate];
  [v2 enableZoomWindowHitTestingWithEventProcessor:*(a1 + 32)];
}

void __43__ZWTouchEventProcessor__handleTouchEvent___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) mainDisplayDelegate];
  [v2 disableZoomWindowHitTestingWithEventProcessor:*(a1 + 32)];
}

void __43__ZWTouchEventProcessor__handleTouchEvent___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[72] == 1)
  {
    v3 = [v2 mainDisplayDelegate];
    [v3 eventProcessor:*(a1 + 32) didGetTouchInSpeakFingerMode:*(*(a1 + 32) + 106) firstTouchWentIntoLens:{*(a1 + 40), *(a1 + 48)}];
  }
}

- (id)zoomDelegateForEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy contextId])
  {
    lastPointerContextID = [eventCopy contextId];
  }

  else
  {
    lastPointerContextID = self->_lastPointerContextID;
  }

  mainDisplayDelegate = [(ZWEventProcessor *)self mainDisplayDelegate];
  if ([mainDisplayDelegate currentWindowContextIdForEventProcessor:self] != lastPointerContextID)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    externalDisplayDelegates = [(ZWEventProcessor *)self externalDisplayDelegates];
    v8 = [externalDisplayDelegates countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(externalDisplayDelegates);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if (lastPointerContextID == [v12 currentWindowContextIdForEventProcessor:self])
          {
            v13 = v12;

            mainDisplayDelegate = v13;
            goto LABEL_15;
          }
        }

        v9 = [externalDisplayDelegates countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  return mainDisplayDelegate;
}

- (BOOL)_isZoomContextID:(unsigned int)d
{
  mainDisplayDelegate = [(ZWEventProcessor *)self mainDisplayDelegate];
  v6 = [mainDisplayDelegate currentWindowContextIdForEventProcessor:self];

  if (v6 == d)
  {
    return 1;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  externalDisplayDelegates = [(ZWEventProcessor *)self externalDisplayDelegates];
  v9 = [externalDisplayDelegates countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(externalDisplayDelegates);
        }

        if ([*(*(&v14 + 1) + 8 * i) currentWindowContextIdForEventProcessor:self] == d)
        {
          v7 = 1;
          goto LABEL_13;
        }
      }

      v10 = [externalDisplayDelegates countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_13:

  return v7;
}

- (BOOL)handlePointerEvent:(id)event
{
  eventCopy = event;
  if (-[ZWTouchEventProcessor _isZoomContextID:](self, "_isZoomContextID:", [eventCopy contextId]))
  {
    pointerControllerInfo = [eventCopy pointerControllerInfo];
    v6 = pointerControllerInfo;
    if (pointerControllerInfo && [pointerControllerInfo pointerIsAbsolute])
    {
      [v6 pointerX];
      v8 = v7;
      [v6 pointerY];
      v10 = v9;
      v11 = [(ZWTouchEventProcessor *)self zoomDelegateForEvent:eventCopy];
      v12 = +[AXBackBoardServer server];
      [v12 convertPoint:objc_msgSend(eventCopy fromContextId:"contextId") displayId:{objc_msgSend(v11, "currentDisplayIdForEventProcessor:", self), v8, v10}];
      v14 = v13;
      v16 = v15;

      v17 = [v11 currentInterfaceOrientationForEventProcessor:self];
      v18 = v17;
      if ((v17 - 3) >= 2)
      {
        v19 = v16;
      }

      else
      {
        v19 = v14;
      }

      if ((v17 - 3) < 2)
      {
        v14 = v16;
      }

      [v11 currentScreenSizeForEventProcessor:self];
      [(ZWTouchEventProcessor *)self _flipCoordinates:v18 orientation:v14 screenSize:v19, v20, v21];
      v23 = v22;
      v25 = v24;
      if (v11)
      {
        [v11 currentUIContextForEventProcessor:{self, 0, 0, 0, 0, 0, 0}];
        v27 = 0;
        v26 = 0;
        v29 = 0;
        v28 = 0;
      }

      else
      {
        v29 = 0;
        v28 = 0;
        v27 = 0;
        v26 = 0;
      }

      IsEmpty = CGRectIsEmpty(*&v26);
      [v11 eventProcessor:self didGetPointerEventAtLocation:eventCopy withEventRep:{v23, v25}];
      self->_lastPointerContextID = [eventCopy contextId];
      [v11 disableZoomWindowHitTestingWithEventProcessor:self];
      if (IsEmpty)
      {
        [v6 pointerButtonMask];
        v30 = v32 != 0.0;
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (BOOL)_shouldFilterPointerEvent:(id)event
{
  eventCopy = event;
  if (ZWLaserIsEnabled())
  {
    pointerControllerInfo = [eventCopy pointerControllerInfo];
    scrollEvent = [pointerControllerInfo scrollEvent];
    if (scrollEvent)
    {
      v7 = [(ZWTouchEventProcessor *)self _handleWheelEvent:scrollEvent];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CGPoint)_flipCoordinates:(CGPoint)result orientation:(int64_t)orientation screenSize:(CGSize)size
{
  v5 = size.height - result.y;
  v6 = size.width - result.x;
  if (orientation == 4)
  {
    x = v6;
  }

  else
  {
    x = result.x;
  }

  if (orientation == 3)
  {
    result.y = v5;
  }

  else
  {
    result.x = x;
  }

  if (orientation == 2)
  {
    result.x = v6;
    result.y = v5;
  }

  return result;
}

- (CGPoint)_shiftPointForReplicators:(CGPoint)replicators
{
  y = replicators.y;
  x = replicators.x;
  v10 = 0u;
  v6 = [(ZWEventProcessor *)self mainDisplayDelegate:0];
  v7 = v6;
  if (v6)
  {
    [v6 currentUIContextForEventProcessor:self];
  }

  else
  {
    v10 = 0u;
  }

  v8 = x;
  v9 = y - *(&v10 + 1);
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)_convertZoomPointToSystemPoint:(CGPoint)point lensFrame:(CGRect)frame offset:(CGPoint)offset zoomFactor:(double)factor
{
  y = offset.y;
  x = offset.x;
  v8 = point.y;
  v9 = point.x;
  v39 = 0u;
  memset(&v38, 0, sizeof(v38));
  memset(&v37, 0, sizeof(v37));
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  mainDisplayDelegate = [(ZWEventProcessor *)self mainDisplayDelegate];
  v12 = mainDisplayDelegate;
  if (mainDisplayDelegate)
  {
    [mainDisplayDelegate currentUIContextForEventProcessor:self];
  }

  else
  {
    v39 = 0u;
    memset(&v38, 0, sizeof(v38));
    memset(&v37, 0, sizeof(v37));
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
  }

  AX_CGRectGetCenter();
  if ((BYTE8(v39) & 0x20) == 0)
  {
    v15 = x + v13 + (v9 - v13) / factor;
    v16 = y + v14 + (v8 - v14) / factor;
    goto LABEL_21;
  }

  mainDisplayDelegate2 = [(ZWEventProcessor *)self mainDisplayDelegate];
  v18 = [mainDisplayDelegate2 currentInterfaceOrientationForEventProcessor:self];

  if ((v18 - 3) >= 2)
  {
    v19 = v9;
  }

  else
  {
    v19 = v8;
  }

  if ((v18 - 3) >= 2)
  {
    v20 = v8;
  }

  else
  {
    v20 = v9;
  }

  mainDisplayDelegate3 = [(ZWEventProcessor *)self mainDisplayDelegate];
  [mainDisplayDelegate3 currentScreenSizeForEventProcessor:self];
  v23 = v22;
  v25 = v24;

  [(ZWTouchEventProcessor *)self _flipCoordinates:v18 orientation:v19 screenSize:v20, v23, v25];
  v27 = v26;
  v29 = v28;
  v41.x = v26;
  v41.y = v28;
  if (!CGRectContainsPoint(v37, v41))
  {
    v42.x = v27;
    v42.y = v29;
    if (!CGRectContainsPoint(v38, v42) && (WORD4(v39) & 0x180) == 0)
    {
      if (self->_firstTouchWentIntoLensContent)
      {
        v27 = *&v36 * 0.5 + *&v35 + (v27 - (*&v34 * 0.5 + *&v33)) / *&v34 * *&v36;
        v29 = *(&v36 + 1) * 0.5 + *(&v35 + 1) + (v29 - (*(&v34 + 1) * 0.5 + *(&v33 + 1))) / *(&v34 + 1) * *(&v36 + 1);
      }

      else if ((BYTE8(v39) & 0x40) != 0)
      {
        goto LABEL_19;
      }

      [(ZWTouchEventProcessor *)self _shiftPointForReplicators:v27, v29];
      v27 = v30;
      v29 = v31;
    }
  }

LABEL_19:
  [(ZWTouchEventProcessor *)self _flipCoordinates:v18 orientation:v27 screenSize:v29, v23, v25];
  v32 = v15;
  if ((v18 - 3) < 2)
  {
    v15 = v16;
    v16 = v32;
  }

LABEL_21:
  result.y = v16;
  result.x = v15;
  return result;
}

- (void)_cleanEventUpdateMap
{
  if ([(NSMutableDictionary *)self->_eventIdentifiersToFinalLocations count])
  {
    [(NSMutableDictionary *)self->_eventIdentifiersToFinalLocations count];
    _AXLogWithFacility();
  }

  eventIdentifiersToFinalLocations = self->_eventIdentifiersToFinalLocations;

  [(NSMutableDictionary *)eventIdentifiersToFinalLocations removeAllObjects];
}

- (void)_dispatchZoomRemapUpdate:(id)update
{
  updateCopy = update;
  v4 = -[ZWSenderIDGenerationCountPair initWithSenderID:generationCount:]([ZWSenderIDGenerationCountPair alloc], "initWithSenderID:generationCount:", [updateCopy senderID], objc_msgSend(updateCopy, "generationCount"));
  v5 = [(NSMutableDictionary *)self->_eventIdentifiersToFinalLocations objectForKeyedSubscript:v4];
  if (v5)
  {
    handInfo = [updateCopy handInfo];
    pathsIncludingMayBeginEvents = [handInfo pathsIncludingMayBeginEvents];
    v8 = [pathsIncludingMayBeginEvents count];
    v9 = [v5 count];

    v10 = [v5 count];
    if (v8 == v9)
    {
      if (v10)
      {
        v11 = 0;
        v12 = 1;
        do
        {
          v13 = [v5 objectAtIndexedSubscript:v11];
          [v13 CGPointValue];
          v15 = v14;
          v17 = v16;
          handInfo2 = [updateCopy handInfo];
          pathsIncludingMayBeginEvents2 = [handInfo2 pathsIncludingMayBeginEvents];
          v20 = [pathsIncludingMayBeginEvents2 objectAtIndexedSubscript:v11];
          [v20 setPathLocation:{v15, v17}];

          v11 = v12;
        }

        while ([v5 count] > v12++);
      }

      v22 = +[AXEventTapManager sharedManager];
      handInfo3 = [updateCopy handInfo];
      if ([handInfo3 isStylus])
      {
        v24 = 0x8000000817319379;
      }

      else
      {
        v24 = 0x8000000817319374;
      }

      [v22 sendHIDSystemEvent:updateCopy senderID:v24];
    }

    else
    {
      handInfo4 = [updateCopy handInfo];
      paths = [handInfo4 paths];
      [paths count];
      _AXLogWithFacility();
    }
  }

  else
  {
    [updateCopy generationCount];
    _AXLogWithFacility();
  }
}

- (BOOL)_ignoreEventWhileStylusInUse:(id)use
{
  if (!self->_stylusIsTouchingScreen)
  {
    return 0;
  }

  handInfo = [use handInfo];
  eventType = [handInfo eventType];

  return eventType == 10 || (eventType & 0xFFFFFFFE) == 8;
}

- (void)_dispatchZoomRemapEvent:(id)event
{
  eventCopy = event;
  if (![(ZWTouchEventProcessor *)self _ignoreEventWhileStylusInUse:eventCopy])
  {
    if ([eventCopy willBeUpdated])
    {
      v5 = -[ZWSenderIDGenerationCountPair initWithSenderID:generationCount:]([ZWSenderIDGenerationCountPair alloc], "initWithSenderID:generationCount:", [eventCopy senderID], objc_msgSend(eventCopy, "generationCount"));
      handInfo = [eventCopy handInfo];
      pathsIncludingMayBeginEvents = [handInfo pathsIncludingMayBeginEvents];
      v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [pathsIncludingMayBeginEvents count]);

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      handInfo2 = [eventCopy handInfo];
      pathsIncludingMayBeginEvents2 = [handInfo2 pathsIncludingMayBeginEvents];

      v11 = [pathsIncludingMayBeginEvents2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v20;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(pathsIncludingMayBeginEvents2);
            }

            [*(*(&v19 + 1) + 8 * i) pathLocation];
            v15 = [NSValue valueWithCGPoint:?];
            [v8 addObject:v15];
          }

          v12 = [pathsIncludingMayBeginEvents2 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v12);
      }

      [(NSMutableDictionary *)self->_eventIdentifiersToFinalLocations setObject:v8 forKeyedSubscript:v5];
    }

    self->_lastSentPathIndexMask = [eventCopy pathIndexMask];
    [eventCopy setUseOriginalHIDTime:1];
    v16 = +[AXEventTapManager sharedManager];
    handInfo3 = [eventCopy handInfo];
    if ([handInfo3 isStylus])
    {
      v18 = 0x8000000817319379;
    }

    else
    {
      v18 = 0x8000000817319374;
    }

    [v16 sendHIDSystemEvent:eventCopy senderID:v18];
  }
}

- (void)_dispatchZoomRemapEvent:(id)event lensFrame:(CGRect)frame offset:(CGPoint)offset zoomFactor:(double)factor applyZoom:(BOOL)zoom menuScreenRect:(CGRect)rect
{
  zoomCopy = zoom;
  eventCopy = event;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  mainDisplayDelegate = [(ZWEventProcessor *)self mainDisplayDelegate];
  v12 = mainDisplayDelegate;
  if (mainDisplayDelegate)
  {
    [mainDisplayDelegate currentUIContextForEventProcessor:self];
  }

  else
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
  }

  handInfo = [eventCopy handInfo];
  pathsIncludingMayBeginEvents = [handInfo pathsIncludingMayBeginEvents];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = pathsIncludingMayBeginEvents;
  v16 = [v15 countByEnumeratingWithState:&v29 objects:v52 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v29 + 1) + 8 * i);
        [v20 pathLocation];
        if (zoomCopy)
        {
          [(ZWTouchEventProcessor *)self _convertZoomPointToSystemPoint:v21 lensFrame:v22 offset:frame.origin.x zoomFactor:frame.origin.y, frame.size.width, frame.size.height, offset.x, offset.y, *&factor];
          v53.x = v23;
          v53.y = v24;
          CGRectContainsPoint(rect, v53);
        }

        else if ((BYTE8(v51) & 0x20) != 0)
        {
          [(ZWTouchEventProcessor *)self _convertZoomPointToSystemPoint:v21 lensFrame:v22 offset:frame.origin.x zoomFactor:frame.origin.y, frame.size.width, frame.size.height, offset.x, offset.y, *&factor];
        }

        AXNormalizePoint();
        [v20 setPathLocation:?];
      }

      v17 = [v15 countByEnumeratingWithState:&v29 objects:v52 count:16];
    }

    while (v17);
  }

  hidPostThread = [(ZWEventProcessor *)self hidPostThread];
  [hidPostThread performSelector:"_dispatchZoomRemapEvent:" onTarget:self count:1 objects:eventCopy];
}

- (CGPoint)_convertZoomOffset:(CGPoint)result toScreenCoordinatesFromInterfaceOrientation:(int64_t)orientation
{
  v4 = 0.0;
  v5 = -result.y;
  if (orientation == 4)
  {
    x = -result.x;
  }

  else
  {
    x = 0.0;
  }

  if (orientation == 4)
  {
    y = result.y;
  }

  else
  {
    y = 0.0;
  }

  if (orientation == 3)
  {
    x = result.x;
    y = -result.y;
  }

  if (orientation == 2)
  {
    v4 = -result.x;
  }

  else
  {
    v5 = 0.0;
  }

  if (orientation >= 2)
  {
    result.y = v5;
    result.x = v4;
  }

  if (orientation > 2)
  {
    result.y = x;
    result.x = y;
  }

  return result;
}

- (void)dispatchEventToSystem:(id)system
{
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v24 = 0u;
  v22 = 0u;
  memset(&v23, 0, sizeof(v23));
  v21 = 0u;
  systemCopy = system;
  mainDisplayDelegate = [(ZWEventProcessor *)self mainDisplayDelegate];
  v6 = mainDisplayDelegate;
  if (mainDisplayDelegate)
  {
    [mainDisplayDelegate currentUIContextForEventProcessor:self];
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    v24 = 0u;
    v22 = 0u;
    memset(&v23, 0, sizeof(v23));
    v21 = 0u;
  }

  record = [systemCopy record];

  v8 = [record denormalizedEventRepresentation:0 descale:1];

  handInfo = [v8 handInfo];
  eventType = [handInfo eventType];

  if (eventType == 1)
  {
    self->_applyZoomToEventDispatch = 1;
    if ((BYTE8(v27) & 0x10) == 0)
    {
      if ((BYTE8(v27) & 0x80) != 0 || ([v8 handInfo], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "paths"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "firstPath"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "pathLocation"), v28.x = v14, v28.y = v15, v16 = CGRectContainsPoint(v23, v28), v13, v12, v11, !v16))
      {
        self->_applyZoomToEventDispatch = 0;
      }
    }
  }

  mainDisplayDelegate2 = [(ZWEventProcessor *)self mainDisplayDelegate];
  v18 = [mainDisplayDelegate2 currentInterfaceOrientationForEventProcessor:self];

  [(ZWTouchEventProcessor *)self _convertZoomOffset:v18 toScreenCoordinatesFromInterfaceOrientation:*(&v26 + 1), *&v27];
  [(ZWTouchEventProcessor *)self _dispatchZoomRemapEvent:v8 lensFrame:self->_applyZoomToEventDispatch offset:*&v23.origin zoomFactor:*&v23.size applyZoom:v19 menuScreenRect:v20, 0.0, v24, v25, v21, v22];
}

- (void)_postCancelEvent
{
  v5 = [AXEventRepresentation cancelEventForPathIndexMask:0];
  v2 = +[AXEventTapManager sharedManager];
  handInfo = [v5 handInfo];
  if ([handInfo isStylus])
  {
    v4 = 0x8000000817319379;
  }

  else
  {
    v4 = 0x8000000817319374;
  }

  [v2 sendHIDSystemEvent:v5 senderID:v4];
}

- (void)postHandCancelWithSenderID:(unint64_t)d
{
  BKSHIDServicesCancelTouchesOnMainDisplay();
  hidPostThread = [(ZWEventProcessor *)self hidPostThread];
  [hidPostThread performSelector:"_postCancelEvent" onTarget:self count:0 objects:0];
}

- (void)disableSleepTimer:(BOOL)timer
{
  sleepTimerDisabledAssertion = self->_sleepTimerDisabledAssertion;
  if (timer)
  {
    if (sleepTimerDisabledAssertion)
    {
      return;
    }

    v8 = +[AXUserEventTimer sharedInstance];
    v5 = [v8 acquireAssertionToDisableIdleTimerWithReason:@"Accessibility-ZWTouchEventProcessor"];
    v6 = self->_sleepTimerDisabledAssertion;
    self->_sleepTimerDisabledAssertion = v5;

    v7 = v8;
  }

  else
  {
    if (!sleepTimerDisabledAssertion)
    {
      return;
    }

    [(BSInvalidatable *)sleepTimerDisabledAssertion invalidate];
    v7 = self->_sleepTimerDisabledAssertion;
    self->_sleepTimerDisabledAssertion = 0;
  }
}

- (void)_updateZoomHandGesturesActionCustomizations
{
  v5 = +[AXSettings sharedInstance];
  zoomHandGesturesActionCustomizations = [v5 zoomHandGesturesActionCustomizations];
  handGestureCommandDict = self->_handGestureCommandDict;
  self->_handGestureCommandDict = zoomHandGesturesActionCustomizations;
}

- (BOOL)_handleZoomGreySupportAccessibilityEvent:(id)event
{
  v4 = [(ZWTouchEventProcessor *)self _mapAXEventToZoomGreyAction:event];
  v8 = 0u;
  v5 = [(ZWEventProcessor *)self mainDisplayDelegate:0];
  v6 = v5;
  if (v5)
  {
    [v5 currentUIContextForEventProcessor:self];
  }

  else
  {
    v8 = 0u;
  }

  if ((BYTE8(v8) & 0x80) == 0)
  {
    if (v4 == 3)
    {
      return [(ZWTouchEventProcessor *)self _panBackwardOnMainDisplay];
    }

    if (v4 == 2)
    {
      return [(ZWTouchEventProcessor *)self _panForwardOnMainDisplay];
    }
  }

  if (v4 == 1)
  {
    return [(ZWTouchEventProcessor *)self _toggleZoomOnMainDisplay];
  }

  else
  {
    return 0;
  }
}

- (unint64_t)_mapAXEventToZoomGreyAction:(id)action
{
  accessibilityData = [action accessibilityData];
  handGestureCommandDict = self->_handGestureCommandDict;
  v6 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [accessibilityData usage]);
  v7 = [(NSDictionary *)handGestureCommandDict objectForKeyedSubscript:v6];

  unsignedIntegerValue = [v7 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (BOOL)_toggleZoomOnMainDisplay
{
  mainDisplayDelegate = [(ZWEventProcessor *)self mainDisplayDelegate];
  [mainDisplayDelegate didGetToggleZoomGestureWithEventProcessor:self];

  return 1;
}

- (BOOL)_panForwardOnMainDisplay
{
  mainDisplayDelegate = [(ZWEventProcessor *)self mainDisplayDelegate];
  [mainDisplayDelegate eventProcessor:self didGetPanEventWithDelta:kZoomGreyPanValue];

  return 1;
}

- (BOOL)_panBackwardOnMainDisplay
{
  mainDisplayDelegate = [(ZWEventProcessor *)self mainDisplayDelegate];
  [mainDisplayDelegate eventProcessor:self didGetPanEventWithDelta:-kZoomGreyPanValue];

  return 1;
}

@end