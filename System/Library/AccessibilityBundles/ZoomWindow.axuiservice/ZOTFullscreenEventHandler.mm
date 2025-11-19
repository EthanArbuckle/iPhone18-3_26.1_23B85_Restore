@interface ZOTFullscreenEventHandler
- (BOOL)_autoPanIfNecessaryWithEvent:(id)a3 isDragging:(BOOL)a4;
- (BOOL)_handleEvent:(id)a3;
- (BOOL)_handleTrackpadEvent:(id)a3;
- (BOOL)_verifyZoomActionIsAppropriate:(id)a3;
- (BOOL)handleDragEvent:(id)a3;
- (BOOL)handleEvent:(id)a3;
- (BOOL)handleSpeakUnderFingerEvent:(id)a3;
- (BOOL)handleTrackpadEvent:(id)a3;
- (BOOL)isAnyDisplayZoomedIn;
- (BOOL)isMainDisplayZoomedIn;
- (CGPoint)_middleFingerForEvent:(id)a3;
- (ZOTFullscreenEventHandler)initWithEventThread:(id)a3;
- (ZOTFullscreenEventHandlerDelegate)eventDelegate;
- (ZOTFullscreenZoomHandlerDelegate)zoomDelegate;
- (double)_currentVelocity:(id)a3;
- (id)_descriptionForEvent:(id)a3;
- (unint64_t)_senderIDForRepostingOfEvent:(id)a3;
- (void)_clearState;
- (void)_drainEventRepostQueue:(id)a3 replayEvents:(BOOL)a4 updateEventTimestamps:(BOOL)a5;
- (void)_eventPostTimerCallback;
- (void)_handleDoubleTapEvent:(id)a3 newLocation:(CGPoint)a4;
- (void)_handleTrackpadDoubleTapEvent:(id)a3 newLocation:(CGPoint)a4;
- (void)_handleVoiceOverMultiTapActionWithEvent:(id)a3 tapCount:(int64_t)a4;
- (void)_scheduleTapTimeout:(BOOL)a3;
- (void)_updateAutopanWhileDragging:(BOOL)a3;
- (void)_updateVelocityAndVectorWithEventLocation:(CGPoint)a3 startPoint:(CGPoint)a4 endPoint:(CGPoint)a5 forTrackpad:(BOOL)a6;
- (void)postHandCancelWithSenderID:(unint64_t)a3;
@end

@implementation ZOTFullscreenEventHandler

- (ZOTFullscreenEventHandler)initWithEventThread:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = ZOTFullscreenEventHandler;
  v5 = [(ZOTFullscreenEventHandler *)&v31 init];
  v6 = v5;
  if (v5)
  {
    v5->_orbFinger = -1;
    v7 = ZOTTimeUnset;
    *&v5->_snarfLastTime = ZOTTimeUnset;
    v5->_lastPanTime = v7;
    v5->_velocityLastTime = v7;
    v5->_trackpadVelocityLastTime = v7;
    v5->_tapDoubleLastTime = v7;
    v5->_tapLastTime = v7;
    v5->_trackpadTapDoubleLastTime = v7;
    v5->_trackpadTapLastTime = v7;
    v5->_lastAppTransition = v7;
    v5->_flickTime = v7;
    v5->_autopanDelay = v7;
    v5->_borderpanStartTime = v7;
    v5->_twoFingerTapDownWithHold = v7;
    v5->_firstFingerDownTime = v7;
    v5->_secondFingerDownTime = v7;
    v5->_thirdFingerDownTime = v7;
    v5->_anyFingerDownTime = v7;
    v5->_firstTrackpadFingerDownTime = v7;
    v5->_secondTrackpadFingerDownTime = v7;
    v5->_thirdTrackpadFingerDownTime = v7;
    v5->_anyTrackpadFingerDownTime = v7;
    v5->_currentFingerCount = 0;
    v5->_oneFingerWasDown = 0;
    v8 = [[AXThreadTimer alloc] initWithThread:v4];
    autopanTimer = v6->_autopanTimer;
    v6->_autopanTimer = v8;

    v10 = [[AXThreadTimer alloc] initWithThread:v4];
    multiTapTimer = v6->_multiTapTimer;
    v6->_multiTapTimer = v10;

    v12 = [[AXThreadTimer alloc] initWithThread:v4];
    passthruEventTimer = v6->_passthruEventTimer;
    v6->_passthruEventTimer = v12;

    v14 = [[AXThreadTimer alloc] initWithThread:v4];
    tapCountResetTimer = v6->_tapCountResetTimer;
    v6->_tapCountResetTimer = v14;

    v16 = [[AXThreadTimer alloc] initWithThread:v4];
    trackpadTapCountResetTimer = v6->_trackpadTapCountResetTimer;
    v6->_trackpadTapCountResetTimer = v16;

    v18 = [[AXThreadTimer alloc] initWithThread:v4];
    editingGestureHoldTimer = v6->_editingGestureHoldTimer;
    v6->_editingGestureHoldTimer = v18;

    v20 = [[AXThreadTimer alloc] initWithThread:v4];
    hoverTextTapTimer = v6->_hoverTextTapTimer;
    v6->_hoverTextTapTimer = v20;

    v22 = +[NSMutableArray array];
    eventReplayQueue = v6->_eventReplayQueue;
    v6->_eventReplayQueue = v22;

    v24 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v25 = dispatch_queue_create("com.apple.accessibility.zoomEventDispatch", v24);
    eventReplayDispatchQueue = v6->_eventReplayDispatchQueue;
    v6->_eventReplayDispatchQueue = v25;

    v27 = +[NSPointerArray weakObjectsPointerArray];
    externalDisplayZoomDelegates = v6->_externalDisplayZoomDelegates;
    v6->_externalDisplayZoomDelegates = v27;

    v29 = v6;
  }

  return v6;
}

- (BOOL)isMainDisplayZoomedIn
{
  v2 = self;
  v3 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
  LOBYTE(v2) = [(ZOTFullscreenEventHandler *)v2 isDisplayZoomedIn:v3];

  return v2;
}

- (BOOL)isAnyDisplayZoomedIn
{
  if ([(ZOTFullscreenEventHandler *)self isMainDisplayZoomedIn])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v4 = [(ZOTFullscreenEventHandler *)self externalDisplayZoomDelegates];
    v3 = [v4 count];

    if (v3)
    {
      v5 = 0;
      do
      {
        v3 = [(ZOTFullscreenEventHandler *)self externalDisplayZoomDelegates];
        v6 = [v3 pointerAtIndex:v5];

        LODWORD(v3) = [(ZOTFullscreenEventHandler *)self isDisplayZoomedIn:v6];
        if (v3)
        {
          break;
        }

        ++v5;
        v7 = [(ZOTFullscreenEventHandler *)self externalDisplayZoomDelegates];
        v8 = [v7 count];
      }

      while (v8 > v5);
    }
  }

  return v3;
}

- (BOOL)_verifyZoomActionIsAppropriate:(id)a3
{
  v4 = a3;
  v5 = 1;
  if (![(ZOTFullscreenEventHandler *)self isMainDisplayZoomedIn])
  {
    Current = CFAbsoluteTimeGetCurrent();
    secondFingerDownTime = self->_secondFingerDownTime;
    v8 = secondFingerDownTime == ZOTTimeUnset || Current - secondFingerDownTime <= 0.75;
    if (!v8 || ((firstFingerDownTime = self->_firstFingerDownTime, v10 = Current - firstFingerDownTime, firstFingerDownTime != ZOTTimeUnset) ? (v11 = v10 <= 0.75) : (v11 = 1), !v11 || -[ZOTFullscreenEventHandler _allowsFingerDistanceToAffectZoom](self, "_allowsFingerDistanceToAffectZoom", v10) && (([v4 fingerAtIndex:0], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "location"), v12, objc_msgSend(v4, "fingerAtIndex:", 1), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "location"), v13, objc_msgSend(v4, "fingerAtIndex:", 2), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "location"), v14, SCRCMathGetDistanceBetweenPoints(), v15 > 0.75) || (SCRCMathGetDistanceBetweenPoints(), v16 > 0.75) || (SCRCMathGetDistanceBetweenPoints(), v17 > 0.75))))
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)postHandCancelWithSenderID:(unint64_t)a3
{
  v4 = [(ZOTFullscreenEventHandler *)self eventDelegate];
  [v4 postHandCancelWithSenderID:a3];
}

- (BOOL)handleEvent:(id)a3
{
  v4 = [ZOTEvent createEventFromEventRepresentation:a3];
  LOBYTE(self) = [(ZOTFullscreenEventHandler *)self _handleEvent:v4];

  return self;
}

- (BOOL)handleTrackpadEvent:(id)a3
{
  v4 = [ZOTEvent createEventFromEventRepresentation:a3];
  LOBYTE(self) = [(ZOTFullscreenEventHandler *)self _handleTrackpadEvent:v4];

  return self;
}

- (BOOL)handleSpeakUnderFingerEvent:(id)a3
{
  v4 = [ZOTEvent createEventFromEventRepresentation:a3];
  v5 = v4;
  x = CGPointZero.x;
  y = CGPointZero.y;
  if (CGPointZero.x == self->_initialSingleFingerLocation.x && y == self->_initialSingleFingerLocation.y)
  {
    [v4 magneticLocation];
    self->_initialSingleFingerLocation.x = x;
    self->_initialSingleFingerLocation.y = y;
    self->_snarfing = 1;
  }

  [(ZOTFullscreenEventHandler *)self _autoPanIfNecessaryWithEvent:v5, x, y];
  if ([v5 handEventType] == 6)
  {
    [(ZOTFullscreenEventHandler *)self _clearState];
  }

  return 1;
}

- (BOOL)handleDragEvent:(id)a3
{
  v4 = [ZOTEvent createEventFromEventRepresentation:a3];
  v5 = v4;
  x = CGPointZero.x;
  y = CGPointZero.y;
  if (CGPointZero.x == self->_initialSingleFingerLocation.x && y == self->_initialSingleFingerLocation.y)
  {
    [v4 magneticLocation];
    self->_initialSingleFingerLocation.x = x;
    self->_initialSingleFingerLocation.y = y;
    self->_snarfing = 1;
  }

  [(ZOTFullscreenEventHandler *)self _autoPanIfNecessaryWithEvent:v5 isDragging:1, x, y];

  return 0;
}

- (BOOL)_handleEvent:(id)a3
{
  v5 = a3;
  [v5 time];
  v7 = v6;
  v8 = [v5 handEventType];
  v9 = v8;
  v10 = v7 - *&_handleEvent__LastEventTime < 0.016 && _handleEvent__LastEventType == v8;
  if (!v10 || (self->_zoomPanning ? (v11 = v8 == 2) : (v11 = 0), !v11))
  {
    obj = a3;
    v178 = [v5 fingerCount];
    v12 = [v5 isTouchEventWeCareAbout];
    v13 = self->_eventFingersTracking || v7 - self->_snarfLastTime < 0.12;
    self->_snarfing = v13;
    self->_orbZoomToggled &= v13;
    v14 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
    v15 = [v14 isZoomMovingWithVelocityWithFullscreenEventHandler:self];

    if (self->_zoomDisabledForApp)
    {
      v16 = [(ZOTFullscreenEventHandler *)self eventDelegate];
      [v16 dispatchEventToSystem:v5];

      goto LABEL_228;
    }

    LODWORD(v176) = v15;
    anyFingerDown = self->_anyFingerDown;
    self->_currentFingerCount = v178;
    v18 = [v5 fingerCount] != 0;
    self->_anyFingerDown = v18;
    if (!self->_orbSnarfing)
    {
      v19 = [v5 record];
      if ([v19 allowsZoomOrb])
      {
        v20 = [v5 record];
        v21 = ZOTEventMeetsOrbThreshold(v20);

        v18 = self->_anyFingerDown;
        if (v21)
        {
          if (v18)
          {
            v22 = [v5 fingerAtIndex:0];
            [v22 location];
            v24 = v23;

            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = __42__ZOTFullscreenEventHandler__handleEvent___block_invoke;
            block[3] = &unk_78D28;
            block[4] = self;
            block[5] = ZOTDenormalizePoint(v24);
            block[6] = v25;
            dispatch_async(&_dispatch_main_q, block);
            v26 = [v5 record];
            -[ZOTFullscreenEventHandler postHandCancelWithSenderID:](self, "postHandCancelWithSenderID:", [v26 senderID]);

            self->_orbSnarfing = 1;
            goto LABEL_228;
          }

LABEL_26:
          if (v18)
          {
            self->_wasPassingThroughSystemGesture = 0;
            if (v18 != anyFingerDown)
            {
              v33 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
              [(ZOTFullscreenEventHandler *)self _middleFingerForEvent:v5];
              [v33 fullscreenEventHandler:self didReceiveAnyFingerDownAtLocation:?];

              if (v178 == &dword_0 + 1)
              {
                v34 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
                v35 = [v34 interfaceOrientationWithFullscreenEventHandler:self];
                [(ZOTFullscreenEventHandler *)self _middleFingerForEvent:v5];
                v38 = v37;
                if (v35 == 4)
                {
                  v39 = 1.0 - v37;
                  v38 = v36;
                }

                else if (v35 == 3)
                {
                  v39 = v37;
                  v38 = 1.0 - v36;
                }

                else
                {
                  v39 = v36;
                  if (v35 == 2)
                  {
                    v38 = 1.0 - v37;
                    v39 = 1.0 - v36;
                  }
                }

                v43 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
                [v43 fullscreenEventHandler:self didReceiveOneFingerDownAtLocation:{v39, v38}];

                self->_oneFingerWasDown = 1;
              }
            }
          }

          else if (v18 != anyFingerDown)
          {
            v40 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
            [(ZOTFullscreenEventHandler *)self _middleFingerForEvent:v5];
            [v40 fullscreenEventHandler:self didReceiveAnyFingerUpAtLocation:?];

            if (self->_oneFingerWasDown)
            {
              self->_oneFingerWasDown = 0;
            }
          }

          if ([v5 handEventType] == 1 || objc_msgSend(v5, "handEventType") == 5)
          {
            objc_storeStrong(&self->_lastDownEvent, obj);
          }

          if (![(ZOTFullscreenEventHandler *)self isMainDisplayZoomedIn]&& !self->_zooming && !self->_shouldPerformEditingGesture)
          {
            eventReplayQueue = self->_eventReplayQueue;
            v45 = [v5 record];
            [(NSMutableArray *)eventReplayQueue addObject:v45];
          }

          if (([v5 handEventType] & 0xFFFFFFFB) == 1 && (v178 - 1) <= 2)
          {
            *(&self->_firstFingerDownTime + (v178 - 1)) = v7;
          }

          if (self->_anyFingerDown)
          {
            v46 = ZOTTimeUnset;
            if (self->_anyFingerDownTime == ZOTTimeUnset)
            {
              self->_anyFingerDownTime = v7;
            }

LABEL_69:
            v200 = 0u;
            v201 = 0u;
            v198 = 0u;
            v199 = 0u;
            v53 = [v5 record];
            v54 = [v53 handInfo];
            v55 = [v54 paths];

            v56 = [v55 countByEnumeratingWithState:&v198 objects:v206 count:16];
            if (v56)
            {
              v57 = *v199;
              v58 = 0.0;
              do
              {
                for (i = 0; i != v56; i = i + 1)
                {
                  if (*v199 != v57)
                  {
                    objc_enumerationMutation(v55);
                  }

                  v60 = *(*(&v198 + 1) + 8 * i);
                  [v60 orbValue];
                  if (v58 < v61)
                  {
                    [v60 orbValue];
                    v58 = v62;
                  }
                }

                v56 = [v55 countByEnumeratingWithState:&v198 objects:v206 count:16];
              }

              while (v56);
            }

            if (v12 && !self->_snarfing && (v178 == &dword_0 + 3 || self->_isTrackingHoverText) && !self->_ignoreSnarfingForFingerSession && [(ZOTFullscreenEventHandler *)self _verifyZoomActionIsAppropriate:v5])
            {
              [(AXThreadTimer *)self->_eventPostTimer cancel];
              v63 = &_dispatch_main_q;
              v197[0] = _NSConcreteStackBlock;
              v197[1] = 3221225472;
              v197[2] = __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_4;
              v197[3] = &unk_78D00;
              v197[4] = self;
              dispatch_async(&_dispatch_main_q, v197);

              self->_snarfing = 1;
              [(ZOTFullscreenEventHandler *)self _middleFingerForEvent:v5];
              self->_tapPoint.x = v64;
              self->_tapPoint.y = v65;
              [(AXThreadTimer *)self->_autopanTimer cancel];
              v66 = [v5 record];
              -[ZOTFullscreenEventHandler postHandCancelWithSenderID:](self, "postHandCancelWithSenderID:", [v66 senderID]);

              autopanDownEvent = self->_autopanDownEvent;
              self->_autopanDownEvent = 0;

              v68 = [(ZOTFullscreenEventHandler *)self eventDelegate];
              [v68 disableSleepTimer:1];
            }

            IsPad = AXDeviceIsPad();
            if (v178 > 3)
            {
              v70 = IsPad;
            }

            else
            {
              v70 = 0;
            }

            if (v70 == 1 && !self->_zooming && !self->_zoomPanning)
            {
              self->_ignoreSnarfingForFingerSession = 1;
            }

            if (self->_snarfing)
            {
              v71 = [v5 record];
              v72 = [v71 handInfo];
              if ([v72 initialFingerCount])
              {
                v73 = [v5 record];
                v74 = [v73 handInfo];
                v75 = [v74 lifetimeFingerCount] < 3;

                if (v75)
                {
                  self->_snarfLastTime = v46;
                  v76 = ZOOMLogEvents();
                  if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
                  {
                    v12 = [v5 record];
                    *buf = 138412290;
                    *&buf[4] = v12;
                    _os_log_impl(&dword_0, v76, OS_LOG_TYPE_INFO, "one of the fingers we were tracking with zoom was cancelled, so stop snarfing: %@", buf, 0xCu);
                  }

                  [(AXThreadTimer *)self->_tapCountResetTimer cancel];
                  goto LABEL_98;
                }
              }

              else
              {
              }
            }

            if (!self->_snarfing)
            {
              if (v178)
              {
                v84 = v12;
              }

              else
              {
                v84 = 1;
              }

              if ((v84 & 1) == 0)
              {
                v89 = [(ZOTFullscreenEventHandler *)self eventDelegate];
                [v89 dispatchEventToSystem:v5];

                if (self->_allowTimedEventPosting)
                {
                  objc_initWeak(buf, self);
                  eventPostTimer = self->_eventPostTimer;
                  v181[0] = _NSConcreteStackBlock;
                  v181[1] = 3221225472;
                  v181[2] = __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_10;
                  v181[3] = &unk_78D00;
                  v181[4] = self;
                  [(AXThreadTimer *)eventPostTimer afterDelay:v181 processBlock:0.0799999982];
                  objc_destroyWeak(buf);
                }

                goto LABEL_227;
              }

              if (v178)
              {
                v85 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
                v86 = [v85 isZoomMovingWithVelocityWithFullscreenEventHandler:self];

                if (v86)
                {
                  v180[0] = _NSConcreteStackBlock;
                  v180[1] = 3221225472;
                  v180[2] = __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_11;
                  v180[3] = &unk_78D00;
                  v180[4] = self;
                  dispatch_async(&_dispatch_main_q, v180);
                  self->_snarfLastTime = v7;
                }

                else
                {
                  v107 = [(ZOTFullscreenEventHandler *)self _hasReachedFlickVelocity:v5];
                  if (v178 == &dword_0 + 1)
                  {
                    v108 = v107;
                  }

                  else
                  {
                    v108 = 0;
                  }

                  if (v108 == 1)
                  {
                    [(AXThreadTimer *)self->_autopanTimer cancel];
                    if (self->_autopanDownEvent)
                    {
                      v109 = [(ZOTFullscreenEventHandler *)self eventDelegate];
                      [v109 dispatchEventToSystem:self->_autopanDownEvent];

                      v110 = self->_autopanDownEvent;
                      self->_autopanDownEvent = 0;
                    }

                    self->_borderpanMode = 0;
                    v111 = [(ZOTFullscreenEventHandler *)self eventDelegate];
                    [v111 dispatchEventToSystem:v5];
                  }

                  else
                  {
                    v112 = [(ZOTFullscreenEventHandler *)self eventDelegate];
                    [v112 dispatchEventToSystem:v5];

                    v113 = self->_autopanDownEvent;
                    self->_autopanDownEvent = 0;
                  }
                }

                goto LABEL_227;
              }

LABEL_115:
              if (self->_sendingUnzoomedPanFingers)
              {
                v87 = [(ZOTFullscreenEventHandler *)self eventDelegate];
                [v87 postHandCancelWithSenderID:0x8000000817319374];

                self->_sendingUnzoomedPanFingers = 0;
                [(ZOTFullscreenEventHandler *)self _clearState];
              }

              else
              {
                if (self->_anyFingerDownTime == v46 && !self->_wasPassingThroughSystemGesture && (-[ZOTEvent handEventType](self->_lastEvent, "handEventType") != 9 || [v5 handEventType] != 10))
                {
                  v179 = [v5 record];
                  v91 = [v179 handInfo];
                  v92 = [v91 isStylus];
                  if (v92 && ([v5 record], v176 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v176, "handInfo"), v175 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v175, "paths"), v174 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v174, "firstObject"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "altitude"), v93 > 0.0))
                  {
                  }

                  else
                  {
                    v149 = [v5 record];
                    v150 = [v149 handInfo];
                    v151 = [v150 pathsIncludingMayBeginEvents];
                    v152 = [v151 count];

                    if (v92)
                    {
                    }

                    if (!v152)
                    {
                      goto LABEL_227;
                    }
                  }
                }

                if ([(AXThreadTimer *)self->_autopanTimer isPending])
                {
                  if (([(AXThreadTimer *)self->_autopanTimer isCancelled]& 1) == 0)
                  {
                    autopanEvent = self->_autopanEvent;
                    if (autopanEvent)
                    {
                      if (!self->_snarfing)
                      {
                        v155 = [(ZOTFullscreenEventHandler *)self eventDelegate];
                        [v155 dispatchEventToSystem:self->_autopanEvent];

                        autopanEvent = self->_autopanEvent;
                      }

                      self->_autopanEvent = 0;
                    }
                  }
                }

                v156 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
                [v156 endZoomMovementWithFullscreenEventHandler:self];

                if (!self->_snarfing || self->_wasPassingThroughSystemGesture)
                {
                  v157 = [(ZOTFullscreenEventHandler *)self eventDelegate];
                  [v157 dispatchEventToSystem:v5];
                }

                [(ZOTFullscreenEventHandler *)self _clearState];
                [(AXThreadTimer *)self->_passthruEventTimer cancel];
                v158 = [(ZOTFullscreenEventHandler *)self eventDelegate];
                [v158 resetEventQueue];
              }

LABEL_227:
              objc_storeStrong(&self->_lastEvent, obj);
              _handleEvent__LastEventTime = *&v7;
              _handleEvent__LastEventType = v9;
              goto LABEL_228;
            }

            if (!self->_zooming && !self->_zoomPanning && v178 >= 4)
            {
              self->_snarfing = 0;
              self->_ignoreSnarfingForFingerSession = 1;
              self->_eventFingersTracking = 0;
              v88 = [(ZOTFullscreenEventHandler *)self eventDelegate];
              [v88 dispatchEventToSystem:v5];

              goto LABEL_227;
            }

            if (!v12 || self->_isTrackingHoverText)
            {
LABEL_106:
              if (v178)
              {
                goto LABEL_227;
              }

              goto LABEL_115;
            }

            self->_snarfLastTime = v7;
            [(AXThreadTimer *)self->_eventPostTimer cancel];
            v94 = [(ZOTFullscreenEventHandler *)self eventDelegate];
            [v94 resetEventQueue];

            self->_eventFingersTracking = 1;
            snarfFingerCount = self->_snarfFingerCount;
            if (v178)
            {
              v96 = [v5 fingerWithIdentifier:self->_snarfFingerIdentifier];
              if (v96 && !([v5 chordChanged] & 1 | (snarfFingerCount != v178)))
              {
                [v96 location];
                v99 = v125;
                v101 = v126;
                v97 = v96;
              }

              else
              {
                v97 = [v5 fingerAtIndex:0];

                self->_snarfFingerIdentifier = [v97 identifier];
                [v97 location];
                v99 = v98;
                v101 = v100;
                v102 = fabs(v100) != INFINITY;
                if (fabs(v98) == INFINITY || !v102)
                {
                  v103 = [v5 record];
                  [v103 location];
                  v99 = v104;
                  v101 = v105;
                }

                y = self->_trackingLocation.y;
                self->_offsetLocation.x = self->_trackingLocation.x - v99;
                self->_offsetLocation.y = y - v101;
                self->_velocityLastTime = v46;
              }

              v127 = v178;
              v128 = fabs(v101) != INFINITY;
              if (fabs(v99) == INFINITY || !v128)
              {
                v129 = [v5 record];
                [v129 location];
                v99 = v130;
                v101 = v131;

                v127 = v178;
              }

              self->_snarfFingerCount = v127;
              v132 = v99 + self->_offsetLocation.x;
              v133 = v101 + self->_offsetLocation.y;
              self->_trackingLocation.x = v132;
              self->_trackingLocation.y = v133;
              tapCount = self->_tapCount;
              if (tapCount > 1)
              {
                v142 = 0.0;
              }

              else
              {
                *buf = 0;
                v196 = 0.0;
                [v5 averageLocation];
                v137 = v135;
                v138 = v136;
                if (self->_velocityLastTime == v46)
                {
                  self->_velocityLocation.x = v135;
                  self->_velocityLocation.y = v136;
                  self->_lastPanTime = v46;
                }

                v139 = ZOTDenormalizePoint(v135);
                ZOTFlipDenormalizedPoint(v139);
                v140 = ZOTDenormalizePoint(self->_velocityLocation.x);
                ZOTFlipDenormalizedPoint(v140);
                self->_velocityLocation.x = v137;
                self->_velocityLocation.y = v138;
                SCRCMathGetVectorAndDistanceForPoints();
                v141 = ZOTMainScreenScaleFactor();
                tapCount = self->_tapCount;
                v142 = v196 / v141;
              }

              if (tapCount)
              {
                if (tapCount == 1)
                {
                  [v5 averageLocation];
                  [ZOTFullscreenEventHandler _updateVelocityAndVectorWithEventLocation:"_updateVelocityAndVectorWithEventLocation:startPoint:endPoint:forTrackpad:" startPoint:0 endPoint:? forTrackpad:?];
                  [(AXThreadTimer *)self->_tapCountResetTimer cancel];
                  [(AXThreadTimer *)self->_multiTapTimer cancel];
                  if (([(AXThreadTimer *)self->_editingGestureHoldTimer isPending]& 1) != 0)
                  {
                    v143 = 1;
                  }

                  else
                  {
                    v143 = [(AXThreadTimer *)self->_editingGestureHoldTimer isActive];
                  }

                  if (!self->_zooming && ([(ZOTFullscreenEventHandler *)self isMainDisplayZoomedIn]|| _AXSVoiceOverTouchEnabled()) && ((self->_shouldPerformEditingGesture | v143) & 1) == 0)
                  {
                    objc_initWeak(buf, self);
                    editingGestureHoldTimer = self->_editingGestureHoldTimer;
                    v194[0] = _NSConcreteStackBlock;
                    v194[1] = 3221225472;
                    v194[2] = __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_286;
                    v194[3] = &unk_78CD8;
                    objc_copyWeak(&v195, buf);
                    v192[0] = _NSConcreteStackBlock;
                    v192[1] = 3221225472;
                    v192[2] = __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_2_287;
                    v192[3] = &unk_78CD8;
                    objc_copyWeak(&v193, buf);
                    [(AXThreadTimer *)editingGestureHoldTimer afterDelay:v194 processBlock:v192 cancelBlock:0.5];
                    objc_destroyWeak(&v193);
                    objc_destroyWeak(&v195);
                    objc_destroyWeak(buf);
                  }

                  [(ZOTFullscreenEventHandler *)self _handleDoubleTapEvent:v5 newLocation:v132, v133];
                }

LABEL_226:

                goto LABEL_227;
              }

              [(AXThreadTimer *)self->_tapCountResetTimer cancel];
              if (!_AXSVoiceOverTouchEnabled() && fabs(self->_mainDisplayZoomLevel + -1.0) < 0.1 && v142 < 20.0)
              {
                self->_sendingUnzoomedPanFingers = 1;
                v144 = self->_lastEvent;
                objc_initWeak(buf, self);
                autopanTimer = self->_autopanTimer;
                v189[0] = _NSConcreteStackBlock;
                v189[1] = 3221225472;
                v189[2] = __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_3_288;
                v189[3] = &unk_78E00;
                objc_copyWeak(&v191, buf);
                v146 = v144;
                v190 = v146;
                [(AXThreadTimer *)autopanTimer afterDelay:v189 processBlock:0.5];

                objc_destroyWeak(&v191);
                objc_destroyWeak(buf);
              }

              if (self->_sendingUnzoomedPanFingers)
              {
                goto LABEL_224;
              }

              v147 = fabs(v142) + self->_pannerTrackDistance;
              self->_pannerTrackDistance = v147;
              if (v147 <= 20.0 || _AXSVoiceOverTouchEnabled() && v7 - self->_anyFingerDownTime <= 0.175)
              {
                goto LABEL_224;
              }

              self->_lastPanTime = v7;
              if (snarfFingerCount != v178)
              {
                self->_borderpanStartTime = v7 + 0.300000012;
              }

              borderpanMode = self->_borderpanMode;
              if (v178 == &dword_0 + 1)
              {
                if (self->_borderpanMode)
                {
                  goto LABEL_184;
                }

                if (v7 > self->_borderpanStartTime)
                {
                  goto LABEL_218;
                }

                SCRCMathGetAverage();
                borderpanMode = self->_borderpanMode;
                if (v169 < 125.0)
                {
LABEL_184:
                  if (borderpanMode)
                  {
LABEL_219:
                    x = CGPointZero.x;
                    if (CGPointZero.x == self->_initialSingleFingerLocation.x)
                    {
                      x = CGPointZero.y;
                      if (x == self->_initialSingleFingerLocation.y)
                      {
                        [v5 magneticLocation];
                        self->_initialSingleFingerLocation.x = x;
                        self->_initialSingleFingerLocation.y = v164;
                      }
                    }

                    if (self->_snarfing)
                    {
                      [(ZOTFullscreenEventHandler *)self _autoPanIfNecessaryWithEvent:v5, x];
                    }

                    goto LABEL_224;
                  }

LABEL_218:
                  v162 = &_dispatch_main_q;
                  v188[0] = _NSConcreteStackBlock;
                  v188[1] = 3221225472;
                  v188[2] = __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_4_289;
                  v188[3] = &unk_78D00;
                  v188[4] = self;
                  dispatch_async(&_dispatch_main_q, v188);

                  self->_borderpanMode = 1;
                  goto LABEL_219;
                }

                if (!self->_borderpanMode)
                {
LABEL_224:
                  if (v7 - *&_handleEvent__LastUpdateTime >= 0.016)
                  {
                    [v5 averageLocation];
                    [ZOTFullscreenEventHandler _updateVelocityAndVectorWithEventLocation:"_updateVelocityAndVectorWithEventLocation:startPoint:endPoint:forTrackpad:" startPoint:0 endPoint:? forTrackpad:?];
                    _handleEvent__LastUpdateTime = *&v7;
                  }

                  goto LABEL_226;
                }
              }

              else if (!self->_borderpanMode)
              {
LABEL_216:
                self->_zoomPanning = 1;
                v161 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
                [v161 fullscreenEventHandler:self updateZoomMovementWithPoint:ZOTDenormalizePoint(self->_trackingLocation.x)];

                goto LABEL_224;
              }

              [(AXThreadTimer *)self->_autopanTimer cancel];
              self->_borderpanMode = 0;
              goto LABEL_216;
            }

            if (!snarfFingerCount || [v5 handEventType] == 8)
            {
LABEL_98:
              self->_velocityLastTime = v46;
              self->_offsetLocation = CGPointZero;
              SCRCMathClearAverage();
              self->_zooming = 0;
              self->_zoomStartOffset = 0.0;
              self->_pannerTrackDistance = 0.0;
              self->_tapDoubleTracking = 0;
              self->_eventFingersTracking = 0;
              self->_zoomPanning = 0;
              self->_snarfFingerCount = 0;
              [(AXThreadTimer *)self->_editingGestureHoldTimer cancel];
              self->_shouldPerformEditingGesture = 0;
              v77 = &_dispatch_main_q;
              v182[0] = _NSConcreteStackBlock;
              v182[1] = 3221225472;
              v182[2] = __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_9;
              v182[3] = &unk_78D00;
              v182[4] = self;
              dispatch_async(&_dispatch_main_q, v182);

              if (!self->_currentlyTransititioningBetweenApps || v7 - self->_lastAppTransition > 1.0)
              {
                v78 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
                v12 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
                [v12 storedZoomLevelWithFullscreenEventHandler:self];
                v80 = v79;
                v81 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
                [v81 zoomLocationWithFullscreenEventHandler:self];
                [v78 fullscreenEventHandler:self storeZoomLevel:-[ZOTFullscreenEventHandler isMainDisplayZoomedIn](self location:"isMainDisplayZoomedIn") ^ 1 zoomed:self->_applicationKey forKey:{v80, v82, v83}];
              }

              goto LABEL_106;
            }

            if (self->_pannerTrackDistance > 20.0 && !self->_borderpanMode)
            {
              v114 = &_dispatch_main_q;
              v187[0] = _NSConcreteStackBlock;
              v187[1] = 3221225472;
              v187[2] = __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_5;
              v187[3] = &unk_78D00;
              v187[4] = self;
              dispatch_async(&_dispatch_main_q, v187);

              SCRCMathGetAverage();
              v116 = v115;
              if (self->_tapCount != 2)
              {
                if (_AXSVoiceOverTouchEnabled())
                {
                  if (self->_snarfing)
                  {
                    if (v7 - self->_anyFingerDownTime < 0.35 || (-[ZOTFullscreenEventHandler zoomDelegate](self, "zoomDelegate"), v117 = objc_claimAutoreleasedReturnValue(), [v117 zoomLevelWithFullscreenEventHandler:self], v119 = v118 < AXZoomMinimumZoomLevel + 0.000001, v117, v119))
                    {
                      currentVector = self->_currentVector;
                      v121 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
                      v122 = ZOTConvertVectorToScreenStandard([v121 interfaceOrientationWithFullscreenEventHandler:self], currentVector);

                      if (v116 <= 125.0)
                      {
                        v172 = 0;
                      }

                      else
                      {
                        v123 = v122;
                        if (v123 <= 45.0 || v123 >= 315.0)
                        {
                          v124 = +[VOSGesture ThreeFingerFlickRight];
                        }

                        else if (v123 <= 45.0 || v123 > 135.0)
                        {
                          if (v123 <= 135.0 || v123 > 225.0)
                          {
                            v172 = 0;
                            if (v123 < 225.0 || v123 > 315.0)
                            {
                              goto LABEL_252;
                            }

                            v124 = +[VOSGesture ThreeFingerFlickDown];
                          }

                          else
                          {
                            v124 = +[VOSGesture ThreeFingerFlickLeft];
                          }
                        }

                        else
                        {
                          v124 = +[VOSGesture ThreeFingerFlickUp];
                        }

                        v172 = v124;
                      }

LABEL_252:
                      v12 = [NSKeyedArchiver archivedDataWithRootObject:v172 requiringSecureCoding:1 error:0];
                      v173 = +[AXVoiceOverServer server];
                      [v173 triggerGesture:v12];

                      goto LABEL_98;
                    }
                  }
                }
              }

              v12 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
              [v12 fullscreenEventHandler:self continueZoomMovementWithVelocity:v116 angle:self->_currentVector];
            }

            if ((v176 & 1) != 0 || v7 - self->_lastPanTime < 0.25 || self->_zooming || self->_shouldPerformEditingGesture)
            {
              self->_tapCount = 0;
              if (self->_shouldPerformEditingGesture)
              {
                v159 = [NSMutableArray alloc];
                v12 = [v5 record];
                v160 = [v159 initWithObjects:{v12, 0}];

                [(ZOTFullscreenEventHandler *)self _drainEventRepostQueue:v160 replayEvents:1 updateEventTimestamps:1];
              }

              self->_tapLastTime = v46;
              self->_tapDoubleLastTime = v46;
              self->_lastPanTime = v46;
            }

            else
            {
              v166 = self->_tapCount;
              if (v166 < 1 || v7 - self->_tapLastTime <= 0.25)
              {
                self->_tapCount = v166 + 1;
                self->_tapLastTime = v7;
                if (!_AXSVoiceOverTouchEnabled())
                {
                  [(ZOTFullscreenEventHandler *)self _scheduleTapTimeout];
                }

                if (_AXSVoiceOverTouchEnabled())
                {
                  [(AXThreadTimer *)self->_multiTapTimer cancel];
                  objc_initWeak(buf, self);
                  v167 = self->_tapCount;
                  multiTapTimer = self->_multiTapTimer;
                  v183[0] = _NSConcreteStackBlock;
                  v183[1] = 3221225472;
                  v183[2] = __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_7;
                  v183[3] = &unk_78E28;
                  objc_copyWeak(v185, buf);
                  v184 = v5;
                  v185[1] = v167;
                  [(AXThreadTimer *)multiTapTimer afterDelay:v183 processBlock:&__block_literal_global_1 cancelBlock:0.275];

                  objc_destroyWeak(v185);
                  objc_destroyWeak(buf);
                }

                else
                {
                  v170 = self->_tapCount;
                  if (v170 >= 3)
                  {
                    if (v170 == 3)
                    {
                      [(AXThreadTimer *)self->_tapCountResetTimer cancel];
                      [(AXThreadTimer *)self->_editingGestureHoldTimer cancel];
                      v171 = &_dispatch_main_q;
                      v186[0] = _NSConcreteStackBlock;
                      v186[1] = 3221225472;
                      v186[2] = __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_6;
                      v186[3] = &unk_78D00;
                      v186[4] = self;
                      dispatch_async(&_dispatch_main_q, v186);
                    }

                    self->_tapCount = 0;
                    self->_tapLastTime = v46;
                  }
                }
              }

              else
              {
                self->_tapCount = 1;
                self->_tapLastTime = v7;
                self->_sendingUnzoomedPanFingers = 0;
              }
            }

            goto LABEL_98;
          }

          v46 = ZOTTimeUnset;
          *&self->_twoFingerTapDownWithHold = ZOTTimeUnset;
          self->_firstFingerDownTime = v46;
          self->_secondFingerDownTime = v46;
          self->_thirdFingerDownTime = v46;
          if (_AXSVoiceOverTouchEnabled())
          {
            SCRCMathGetAverage();
            *&v47 = v47;
            if (*&v47 > 125.0 && self->_shouldPerformEditingGesture)
            {
              v48 = self->_currentVector;
              v49 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
              v50 = ZOTConvertVectorToScreenStandard([v49 interfaceOrientationWithFullscreenEventHandler:self], v48);

              v51 = 43;
              if (v50 > 45.0 && v50 < 315.0)
              {
                if (v50 <= 45.0 || v50 > 135.0)
                {
                  if (v50 <= 135.0 || v50 > 225.0)
                  {
                    if (v50 < 225.0 || v50 > 315.0)
                    {
                      goto LABEL_68;
                    }

                    v51 = 40;
                  }

                  else
                  {
                    v51 = 42;
                  }
                }

                else
                {
                  v51 = 41;
                }
              }

              v52 = +[AXVoiceOverServer server];
              [v52 triggerCommand:v51];
            }
          }

LABEL_68:
          [(ZOTFullscreenEventHandler *)self _scheduleTapTimeout];
          goto LABEL_69;
        }
      }

      else
      {

        v18 = self->_anyFingerDown;
      }
    }

    if (!self->_orbSnarfing)
    {
      goto LABEL_26;
    }

    if (v18)
    {
      orbFinger = self->_orbFinger;
      if (orbFinger == -1)
      {
        v28 = [v5 fingerAtIndex:0];
        self->_orbFinger = [v28 identifier];

        orbFinger = self->_orbFinger;
      }

      v29 = [v5 fingerWithIdentifier:orbFinger];
      [v29 location];
      v31 = v30;

      v202[0] = _NSConcreteStackBlock;
      v202[1] = 3221225472;
      v202[2] = __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_3;
      v202[3] = &unk_78D28;
      v202[4] = self;
      v202[5] = ZOTDenormalizePoint(v31);
      v202[6] = v32;
      dispatch_async(&_dispatch_main_q, v202);
    }

    else
    {
      [(ZOTFullscreenEventHandler *)self _middleFingerForEvent:v5];
      v203[0] = _NSConcreteStackBlock;
      v203[1] = 3221225472;
      v203[2] = __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_2;
      v203[3] = &unk_78D28;
      v203[4] = self;
      v203[5] = ZOTDenormalizePoint(v41);
      v203[6] = v42;
      dispatch_async(&_dispatch_main_q, v203);
      self->_orbSnarfing = 0;
      self->_orbFinger = -1;
    }
  }

LABEL_228:

  return 1;
}

void __42__ZOTFullscreenEventHandler__handleEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) zoomDelegate];
  [v2 fullscreenEventHandler:*(a1 + 32) didStartOrbAtLocation:{*(a1 + 40), *(a1 + 48)}];
}

void __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) zoomDelegate];
  [v2 fullscreenEventHandler:*(a1 + 32) didEndOrbAtLocation:{*(a1 + 40), *(a1 + 48)}];
}

void __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) zoomDelegate];
  [v2 fullscreenEventHandler:*(a1 + 32) updateOrbMovementAtLocation:{*(a1 + 40), *(a1 + 48)}];
}

void __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) zoomDelegate];
  [v2 stopZoomMovementWithVelocityWithFullscreenEventHandler:*(a1 + 32)];
}

void __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_286(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  WeakRetained[1493] = 1;
  if (_AXSVoiceOverTouchEnabled())
  {
    v1 = +[AXVoiceOverServer server];
    [v1 triggerCommand:39];
  }
}

void __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_2_287(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _drainEventRepostQueue:*(WeakRetained + 205) replayEvents:0 updateEventTimestamps:0];
  *(WeakRetained + 1493) = 0;
}

void __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_3_288(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained[200] == 1)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained eventDelegate];
    [v3 dispatchEventToSystem:*(a1 + 32)];

    WeakRetained = v4;
  }
}

void __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_4_289(uint64_t a1)
{
  v2 = [*(a1 + 32) zoomDelegate];
  [v2 endZoomMovementWithFullscreenEventHandler:*(a1 + 32)];
}

void __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) zoomDelegate];
  [v2 endZoomMovementWithFullscreenEventHandler:*(a1 + 32)];
}

void __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_6(uint64_t a1)
{
  v2 = ZOTDenormalizePoint(*(*(a1 + 32) + 1224));
  v4 = v3;
  v5 = [*(a1 + 32) zoomDelegate];
  [v5 fullscreenEventHandler:*(a1 + 32) didReceiveThreeFingerTripleTapAtLocation:{v2, v4}];
}

void __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleVoiceOverMultiTapActionWithEvent:*(a1 + 32) tapCount:*(a1 + 48)];
}

void __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_9(uint64_t a1)
{
  v2 = [*(a1 + 32) zoomDelegate];
  [v2 updateStoredZoomedLevelWithFullscreenEventHandler:*(a1 + 32)];
}

void __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_11(uint64_t a1)
{
  v2 = [*(a1 + 32) zoomDelegate];
  [v2 stopZoomMovementWithVelocityWithFullscreenEventHandler:*(a1 + 32)];
}

- (BOOL)_handleTrackpadEvent:(id)a3
{
  v4 = a3;
  [(ZOTEvent *)v4 time];
  v6 = v5;
  v7 = [(ZOTEvent *)v4 fingerCount];
  v8 = [(ZOTEvent *)v4 isTouchEventWeCareAbout];
  v9 = v8;
  v10 = self->_trackpadEventFingersTracking || *&v6 - self->_snarfLastTime < 0.12;
  self->_trackpadSnarfing = v10;
  if (self->_trackpadTapCount == 1)
  {
    if (v7 == &dword_0 + 3)
    {
      v11 = v8 ^ 1;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 1;
  }

  self->_anyTrackpadFingerDown = [(ZOTEvent *)v4 fingerCount]!= 0;
  if (([(ZOTEvent *)v4 handEventType]& 0xFFFFFFFB) == 1)
  {
    if ([(ZOTEvent *)v4 fingerCount]== &dword_0 + 1)
    {
      v13 = 1552;
    }

    else if ([(ZOTEvent *)v4 fingerCount]== &dword_0 + 2)
    {
      v13 = 1560;
    }

    else
    {
      if ([(ZOTEvent *)v4 fingerCount]!= &dword_0 + 3)
      {
        goto LABEL_17;
      }

      v13 = 1568;
    }

    *(&self->super.isa + v13) = v6;
  }

LABEL_17:
  if (self->_anyTrackpadFingerDown)
  {
    anyTrackpadFingerDownTime = self->_anyTrackpadFingerDownTime;
    v15 = ZOTTimeUnset;
    if (anyTrackpadFingerDownTime == ZOTTimeUnset)
    {
      self->_anyTrackpadFingerDownTime = *&v6;
    }
  }

  else
  {
    v15 = ZOTTimeUnset;
    *&self->_firstTrackpadFingerDownTime = ZOTTimeUnset;
    self->_secondTrackpadFingerDownTime = v15;
    self->_thirdTrackpadFingerDownTime = v15;
    [(ZOTFullscreenEventHandler *)self _scheduleTrackpadTapTimeout];
  }

  if (v9 && !self->_trackpadSnarfing && v7 == &dword_0 + 3)
  {
    secondTrackpadFingerDownTime = self->_secondTrackpadFingerDownTime;
    v12 = *&v6 - secondTrackpadFingerDownTime;
    v17 = secondTrackpadFingerDownTime == v15;
    anyTrackpadFingerDownTime = 0.75;
    if (!v17 && v12 > 0.75)
    {
      goto LABEL_40;
    }

    firstTrackpadFingerDownTime = self->_firstTrackpadFingerDownTime;
    if (firstTrackpadFingerDownTime != v15)
    {
      anyTrackpadFingerDownTime = *&v6 - firstTrackpadFingerDownTime;
      v12 = 0.75;
      if (anyTrackpadFingerDownTime > 0.75)
      {
        goto LABEL_40;
      }
    }

    self->_trackpadSnarfing = 1;
    v20 = [(ZOTEvent *)v4 record];
    -[ZOTFullscreenEventHandler postHandCancelWithSenderID:](self, "postHandCancelWithSenderID:", [v20 senderID]);

    v21 = [(ZOTFullscreenEventHandler *)self eventDelegate];
    [v21 disableSleepTimer:1];

    if (!self->_trackpadSnarfing)
    {
      goto LABEL_79;
    }
  }

  else if (!self->_trackpadSnarfing)
  {
    goto LABEL_40;
  }

  v22 = [(ZOTEvent *)v4 record];
  v23 = [v22 handInfo];
  if ([v23 initialFingerCount])
  {
    v24 = [(ZOTEvent *)v4 record];
    v25 = [v24 handInfo];
    v26 = [v25 lifetimeFingerCount];

    if (v26 <= 2)
    {
      v27 = ZOOMLogEvents();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = [(ZOTEvent *)v4 record];
        *buf = 138412290;
        *&buf[4] = v28;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "one of the trackpad fingers we were tracking with zoom was cancelled, so stop snarfing: %@", buf, 0xCu);
      }

      [(AXThreadTimer *)self->_trackpadTapCountResetTimer cancel];
      goto LABEL_71;
    }
  }

  else
  {
  }

LABEL_40:
  if ((self->_trackpadSnarfing & v9 & 1) == 0)
  {
LABEL_74:
    if (!v7 && (self->_anyTrackpadFingerDownTime != v15 || [(ZOTEvent *)self->_lastTrackpadEvent handEventType]== 9 && [(ZOTEvent *)v4 handEventType]== 10))
    {
      v61 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
      [v61 zoomLevelWithFullscreenEventHandler:self];
      self->_mainDisplayZoomLevel = v62;

      self->_anyTrackpadFingerDownTime = v15;
      self->_trackpadZooming = 0;
    }

    goto LABEL_79;
  }

  self->_trackpadEventFingersTracking = 1;
  trackpadSnarfFingerCount = self->_trackpadSnarfFingerCount;
  if (!v7)
  {
    if (trackpadSnarfFingerCount && [(ZOTEvent *)v4 handEventType:anyTrackpadFingerDownTime]!= 8)
    {
      if (self->_trackpadZooming)
      {
        self->_trackpadTapCount = 0;
        self->_trackpadTapLastTime = v15;
        self->_trackpadTapDoubleLastTime = v15;
      }

      else
      {
        trackpadTapCount = self->_trackpadTapCount;
        if (trackpadTapCount < 1 || *&v6 - self->_trackpadTapLastTime <= 0.25)
        {
          self->_trackpadTapCount = trackpadTapCount + 1;
          self->_trackpadTapLastTime = *&v6;
          [(ZOTFullscreenEventHandler *)self _scheduleTrackpadTapTimeout];
          v53 = self->_trackpadTapCount;
          if (v53 == 3)
          {
            [(AXThreadTimer *)self->_trackpadTapCountResetTimer cancel];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = __50__ZOTFullscreenEventHandler__handleTrackpadEvent___block_invoke;
            block[3] = &unk_78D00;
            block[4] = self;
            dispatch_async(&_dispatch_main_q, block);
          }

          else if (v53 < 4)
          {
            goto LABEL_71;
          }

          self->_trackpadTapCount = 0;
          self->_trackpadTapLastTime = v15;
          goto LABEL_71;
        }

        self->_trackpadTapCount = 1;
        self->_trackpadTapLastTime = *&v6;
      }
    }

LABEL_71:
    self->_trackpadVelocityLastTime = v15;
    self->_trackpadOffsetLocation = CGPointZero;
    SCRCMathClearAverage();
    self->_trackpadZooming = 0;
    self->_zoomStartOffset = 0.0;
    self->_tapDoubleTrackingForTrackpad = 0;
    self->_trackpadEventFingersTracking = 0;
    self->_trackpadSnarfFingerCount = 0;
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = __50__ZOTFullscreenEventHandler__handleTrackpadEvent___block_invoke_2;
    v66[3] = &unk_78D00;
    v66[4] = self;
    dispatch_async(&_dispatch_main_q, v66);
    if (!self->_currentlyTransititioningBetweenApps || *&v6 - self->_lastAppTransition > 1.0)
    {
      v54 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
      v55 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
      [v55 storedZoomLevelWithFullscreenEventHandler:self];
      v57 = v56;
      v58 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
      [v58 zoomLocationWithFullscreenEventHandler:self];
      [v54 fullscreenEventHandler:self storeZoomLevel:-[ZOTFullscreenEventHandler isMainDisplayZoomedIn](self location:"isMainDisplayZoomedIn") ^ 1 zoomed:self->_applicationKey forKey:{v57, v59, v60}];
    }

    goto LABEL_74;
  }

  v30 = [(ZOTEvent *)v4 fingerWithIdentifier:self->_trackpadSnarfFingerIdentifier, anyTrackpadFingerDownTime, v12];
  if (v30 && ![(ZOTEvent *)v4 chordChanged]&& trackpadSnarfFingerCount == v7)
  {
    [v30 location];
    v32 = v31;
    v34 = v33;
  }

  else
  {
    v35 = [(ZOTEvent *)v4 fingerAtIndex:0];

    self->_trackpadSnarfFingerIdentifier = [v35 identifier];
    [v35 location];
    v32 = v36;
    v34 = v37;
    v38 = fabs(v37) != INFINITY;
    if (fabs(v36) == INFINITY || !v38)
    {
      v39 = [(ZOTEvent *)v4 record];
      [v39 location];
      v32 = v40;
      v34 = v41;
    }

    y = self->_trackingTrackpadLocation.y;
    self->_trackpadOffsetLocation.x = self->_trackingTrackpadLocation.x - v32;
    self->_trackpadOffsetLocation.y = y - v34;
    self->_trackpadVelocityLastTime = v15;
    v30 = v35;
  }

  v43 = fabs(v34) != INFINITY;
  if (fabs(v32) == INFINITY || !v43)
  {
    v44 = [(ZOTEvent *)v4 record];
    [v44 location];
    v32 = v45;
    v34 = v46;
  }

  self->_trackpadSnarfFingerCount = v7;
  v47 = v32 + self->_trackpadOffsetLocation.x;
  v48 = v34 + self->_trackpadOffsetLocation.y;
  self->_trackingTrackpadLocation.x = v47;
  self->_trackingTrackpadLocation.y = v48;
  v49 = self->_trackpadTapCount;
  if (v49 > 1 || (block[5] = 0, *buf = 0, [(ZOTEvent *)v4 averageLocation], self->_trackpadVelocityLocation.x = v50, self->_trackpadVelocityLocation.y = v51, SCRCMathGetVectorAndDistanceForPoints(), (v49 = self->_trackpadTapCount) != 0))
  {
    if (v49 == 1)
    {
      [(ZOTEvent *)v4 averageLocation];
      [ZOTFullscreenEventHandler _updateVelocityAndVectorWithEventLocation:"_updateVelocityAndVectorWithEventLocation:startPoint:endPoint:forTrackpad:" startPoint:1 endPoint:? forTrackpad:?];
      [(AXThreadTimer *)self->_trackpadTapCountResetTimer cancel];
      [(ZOTFullscreenEventHandler *)self _handleTrackpadDoubleTapEvent:v4 newLocation:v47, v48];
    }
  }

  else
  {
    [(AXThreadTimer *)self->_trackpadTapCountResetTimer cancel];
  }

LABEL_79:
  lastTrackpadEvent = self->_lastTrackpadEvent;
  self->_lastTrackpadEvent = v4;

  if ((v11 & 1) == 0)
  {
    v64 = [(ZOTFullscreenEventHandler *)self eventDelegate];
    [v64 postHandCancelWithSenderID:0x8000000817319374];
  }

  return v11 ^ 1;
}

void __50__ZOTFullscreenEventHandler__handleTrackpadEvent___block_invoke(uint64_t a1)
{
  v2 = ZOTDenormalizePoint(0.5);
  v4 = v3;
  v5 = [*(a1 + 32) zoomDelegate];
  [v5 fullscreenEventHandler:*(a1 + 32) didReceiveThreeFingerTripleTapAtLocation:{v2, v4}];
}

void __50__ZOTFullscreenEventHandler__handleTrackpadEvent___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) zoomDelegate];
  [v2 updateStoredZoomedLevelWithFullscreenEventHandler:*(a1 + 32)];
}

- (void)_eventPostTimerCallback
{
  self->_allowTimedEventPosting = 0;
  v2 = [(ZOTFullscreenEventHandler *)self eventDelegate];
  [v2 dispatchEntireEventQueue];
}

- (void)_clearState
{
  [(AXThreadTimer *)self->_autopanTimer cancel];
  autopanEvent = self->_autopanEvent;
  self->_autopanEvent = 0;

  v4 = [(ZOTFullscreenEventHandler *)self eventDelegate];
  [v4 disableSleepTimer:0];

  self->_borderpanMode = 0;
  self->_allowTimedEventPosting = 1;
  self->_pannerTrackDistance = 0.0;
  if (self->_ignoreSnarfingForFingerSession)
  {
    self->_wasPassingThroughSystemGesture = 1;
  }

  self->_ignoreSnarfingForFingerSession = 0;
  self->_zoomPanning = 0;
  v5 = ZOTTimeUnset;
  *&self->_anyFingerDownTime = ZOTTimeUnset;
  v6 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
  [v6 zoomLevelWithFullscreenEventHandler:self];
  self->_mainDisplayZoomLevel = v7;

  self->_timerFingerCount = 0;
  self->_flicking = 0;
  v8 = CGPointZero;
  self->_flickLocation = CGPointZero;
  self->_flickTime = v5;
  self->_pinchDetectionDistance = 0.0;
  self->_initialSingleFingerLocation = v8;
  v9 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
  [v9 fullscreenEventHandler:self setUsingRelativePushPanning:0];

  self->_firstTouchWentIntoLensContent = 0;
}

- (BOOL)_autoPanIfNecessaryWithEvent:(id)a3 isDragging:(BOOL)a4
{
  v7 = a3;
  v28 = 0.0;
  [v7 magneticLocation];
  v9 = v8;
  v11 = v10;
  v12 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
  v13 = [v12 interfaceOrientationWithFullscreenEventHandler:self];
  v14 = 1.0 - v9;
  if (v13 == 2)
  {
    v15 = 1.0 - v9;
  }

  else
  {
    v15 = v9;
  }

  if (v13 == 2)
  {
    v16 = 1.0 - v11;
  }

  else
  {
    v16 = v11;
  }

  if (v13 == 3)
  {
    v15 = v11;
  }

  else
  {
    v14 = v16;
  }

  if (v13 == 4)
  {
    v17 = 1.0 - v11;
  }

  else
  {
    v17 = v15;
  }

  if (v13 != 4)
  {
    v9 = v14;
  }

  v18 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
  if (![v18 fullscreenEventHandler:self autopanShouldStartWithPoint:&v28 speedFactor:0 initialSingleFingerLocation:v17 fingerCount:v9 pointHasBeenMapped:{self->_initialSingleFingerLocation.x, self->_initialSingleFingerLocation.y, objc_msgSend(v7, "fingerCount")}])
  {

    goto LABEL_21;
  }

  firstTouchWentIntoLensContent = self->_firstTouchWentIntoLensContent;

  if (!firstTouchWentIntoLensContent)
  {
LABEL_21:
    [(AXThreadTimer *)self->_autopanTimer cancel];
    v22 = 0;
    goto LABEL_29;
  }

  v20 = v28;
  self->_autopanSpeedFactor = v28;
  v21 = 0.0;
  if (v20 > 0.0)
  {
    if (v20 >= 0.100000001)
    {
      v21 = 0.00200000009 / v20;
    }

    else
    {
      v21 = 0.0200000014;
    }
  }

  self->_autopanDelay = v21;
  objc_storeStrong(&self->_autopanEvent, a3);
  if ([v7 handEventType] == 1)
  {
    objc_storeStrong(&self->_autopanDownEvent, a3);
  }

  if (![(AXThreadTimer *)self->_autopanTimer isPending]|| [(AXThreadTimer *)self->_autopanTimer isCancelled])
  {
    objc_initWeak(&location, self);
    autopanTimer = self->_autopanTimer;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = __69__ZOTFullscreenEventHandler__autoPanIfNecessaryWithEvent_isDragging___block_invoke;
    v25[3] = &unk_78BD0;
    v25[4] = self;
    v26 = a4;
    [(AXThreadTimer *)autopanTimer afterDelay:v25 processBlock:0.1];
    objc_destroyWeak(&location);
  }

  v22 = 1;
LABEL_29:

  return v22;
}

- (void)_updateAutopanWhileDragging:(BOOL)a3
{
  v5 = [(AXThreadTimer *)self->_autopanTimer isCancelled];
  autopanEvent = self->_autopanEvent;
  if (!v5)
  {
    [(ZOTEvent *)autopanEvent magneticLocation];
    v9 = v8;
    v11 = v10;
    v12 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
    v13 = [v12 interfaceOrientationWithFullscreenEventHandler:self];
    v14 = 1.0 - v9;
    if (v13 == 2)
    {
      v15 = 1.0 - v9;
    }

    else
    {
      v15 = v9;
    }

    if (v13 == 2)
    {
      v16 = 1.0 - v11;
    }

    else
    {
      v16 = v11;
    }

    if (v13 == 3)
    {
      v15 = v11;
    }

    else
    {
      v14 = v16;
    }

    if (v13 == 4)
    {
      v17 = 1.0 - v11;
    }

    else
    {
      v17 = v15;
    }

    if (v13 == 4)
    {
      v18 = v9;
    }

    else
    {
      v18 = v14;
    }

    v19 = self->_autopanSpeedFactor * 4.0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __57__ZOTFullscreenEventHandler__updateAutopanWhileDragging___block_invoke;
    block[3] = &unk_78E70;
    block[4] = self;
    *&block[5] = v17;
    *&block[6] = v18;
    *&block[7] = v19;
    dispatch_async(&_dispatch_main_q, block);
    v20 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
    if (([v20 usingRelativePushPanningWithFullscreenEventHandler:self] & 1) == 0)
    {
      snarfing = self->_snarfing;

      if (snarfing || a3 || (-1431655765 * _updateAutopanWhileDragging__ToggleCount + 715827882) > 0x55555554)
      {
        goto LABEL_25;
      }

      v20 = [(ZOTEvent *)self->_autopanEvent copyWithZone:0];
      [(AXThreadTimer *)self->_eventPostTimer cancel];
      v23 = [(ZOTFullscreenEventHandler *)self eventDelegate];
      [v23 dispatchEventToSystem:v20];
    }

LABEL_25:
    ++_updateAutopanWhileDragging__ToggleCount;
    objc_initWeak(&location, self);
    autopanTimer = self->_autopanTimer;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = __57__ZOTFullscreenEventHandler__updateAutopanWhileDragging___block_invoke_2;
    v24[3] = &unk_78BD0;
    v24[4] = self;
    v25 = a3;
    [(AXThreadTimer *)autopanTimer afterDelay:v24 processBlock:0.0166666675];
    objc_destroyWeak(&location);
    return;
  }

  self->_autopanEvent = 0;

  autopanDownEvent = self->_autopanDownEvent;
  self->_autopanDownEvent = 0;
}

void __57__ZOTFullscreenEventHandler__updateAutopanWhileDragging___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) zoomDelegate];
  [v2 fullscreenEventHandler:*(a1 + 40) autopanWithLocation:*(a1 + 48) initialSingleFingerLocation:*(*(a1 + 32) + 1472) distance:*(*(a1 + 32) + 1480) animationDuration:*(a1 + 56) useGutterDistance:0.0166666675 pointHasBeenMapped:?];
}

- (void)_handleTrackpadDoubleTapEvent:(id)a3 newLocation:(CGPoint)a4
{
  y = a4.y;
  v6 = a3;
  if (self->_tapDoubleTrackingForTrackpad)
  {
    y = self->_zoomerTrackpadTrackStart;
  }

  else
  {
    self->_zoomerTrackpadTrackStart = y;
    self->_tapDoubleTrackingForTrackpad = 1;
  }

  v7 = self->_trackingTrackpadLocation.y;
  v8 = vabdd_f64(y, v7);
  if (self->_trackpadZooming || v8 > 0.0500000007)
  {
    v9 = y - v7;
    if (self->_trackpadZooming)
    {
      zoomStartOffset = self->_zoomStartOffset;
    }

    else
    {
      v11 = ZOOMLogEvents();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        trackpadZooming = self->_trackpadZooming;
        zoomerTrackpadTrackStart = self->_zoomerTrackpadTrackStart;
        *buf = 67110144;
        v22 = trackpadZooming;
        v23 = 1024;
        v24 = v8 > 0.0500000007;
        v25 = 2048;
        v26 = zoomerTrackpadTrackStart;
        v27 = 2048;
        v28 = v7;
        v29 = 2048;
        v30 = v9;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Zooming. Canceling timer. trackpadZooming:%d deltaExceeded:%d zoomerTrackpadTrackStart:%f zoomValue:%f normalizedDelta:%f", buf, 0x2Cu);
      }

      self->_trackpadZooming = 1;
      *v14.i64 = -v9;
      v15.i64[0] = 0x3FA99999A0000000;
      v16.f64[0] = NAN;
      v16.f64[1] = NAN;
      *&zoomStartOffset = vbslq_s8(vnegq_f64(v16), v15, v14).u64[0];
      self->_zoomStartOffset = zoomStartOffset;
    }

    v17 = v9 + zoomStartOffset;
    v18 = AXZoomMinimumZoomLevel;
    v19 = self->_mainDisplayZoomLevel + v17 * (AXZoomMaximumZoomLevel - AXZoomMinimumZoomLevel) * 0.5;
    if (v19 >= AXZoomMinimumZoomLevel + 0.000001)
    {
      v18 = v19;
      if (v19 > AXZoomMaximumZoomLevel)
      {
        v18 = AXZoomMaximumZoomLevel;
      }
    }

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = __71__ZOTFullscreenEventHandler__handleTrackpadDoubleTapEvent_newLocation___block_invoke;
    v20[3] = &unk_78E98;
    v20[4] = self;
    *&v20[5] = v18;
    dispatch_async(&_dispatch_main_q, v20);
  }
}

void __71__ZOTFullscreenEventHandler__handleTrackpadDoubleTapEvent_newLocation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) zoomDelegate];
  [v2 fullscreenEventHandler:*(a1 + 32) setZoomLevelFromTrackpadGesture:*(a1 + 40)];
}

- (void)_handleDoubleTapEvent:(id)a3 newLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  if ([v7 fingerCount] == &dword_0 + 3)
  {
    [(ZOTFullscreenEventHandler *)self _middleFingerForEvent:v7];
    self->_tapPoint.x = v8;
    self->_tapPoint.y = v9;
  }

  if (self->_tapDoubleTracking)
  {
    deviceOrientation = self->_deviceOrientation;
  }

  else
  {
    v11 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
    self->_deviceOrientation = [v11 interfaceOrientationWithFullscreenEventHandler:self];

    deviceOrientation = self->_deviceOrientation;
    if (deviceOrientation != 4)
    {
      if (deviceOrientation == 3)
      {
        x = 1.0 - x;
      }

      else if (deviceOrientation == 2)
      {
        x = 1.0 - y;
      }

      else
      {
        x = y;
      }
    }

    self->_zoomerTrackStart = x;
    self->_tapDoubleTracking = 1;
  }

  v12 = self->_trackingLocation.x;
  if (deviceOrientation != 4)
  {
    if (deviceOrientation == 3)
    {
      v12 = 1.0 - v12;
    }

    else if (deviceOrientation == 2)
    {
      v12 = 1.0 - self->_trackingLocation.y;
    }

    else
    {
      v12 = self->_trackingLocation.y;
    }
  }

  v13 = ZOTDenormalizeValue(self->_zoomerTrackStart - v12);
  if (self->_shouldPerformEditingGesture)
  {
    if (!_AXSVoiceOverTouchEnabled())
    {
      if ([(NSMutableArray *)self->_eventReplayQueue count])
      {
        [(ZOTFullscreenEventHandler *)self _drainEventRepostQueue:self->_eventReplayQueue replayEvents:1 updateEventTimestamps:1];
      }

      v14 = +[AXEventTapManager sharedManager];
      v15 = [(ZOTFullscreenEventHandler *)self _zoomSenderIdentifierData];
      v16 = [v7 record];
      [v16 setAccessibilityData:v15];

      v17 = [v7 record];
      [v17 applyAccessibilityDataToCreatorHIDEvent];

      v18 = [v7 record];
      v19 = [(ZOTFullscreenEventHandler *)self _senderIDForRepostingOfEvent:v18];

      v20 = [v7 record];
      [v14 sendHIDSystemEvent:v20 repostCreatorHIDEvent:1 senderID:v19];

      goto LABEL_29;
    }
  }

  else
  {
    v21 = v13;
    v22 = fabs(v13);
    if (self->_zooming || v22 > 20.0)
    {
      if (self->_zooming)
      {
        zoomStartOffset = self->_zoomStartOffset;
      }

      else
      {
        v27 = ZOOMLogEvents();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          zooming = self->_zooming;
          zoomerTrackStart = self->_zoomerTrackStart;
          *buf = 67110144;
          v39 = zooming;
          v40 = 1024;
          v41 = v22 > 20.0;
          v42 = 2048;
          v43 = zoomerTrackStart;
          v44 = 2048;
          v45 = v12;
          v46 = 2048;
          v47 = v21;
          _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "Zooming. Canceling timer. zooming:%d deltaExceeded:%d zoomTrackerStart:%f zoomValue:%f normalizedDelta:%f", buf, 0x2Cu);
        }

        [(AXThreadTimer *)self->_editingGestureHoldTimer cancel];
        self->_zooming = 1;
        *v30.i64 = -v21;
        v31.i64[0] = 20.0;
        v32.f64[0] = NAN;
        v32.f64[1] = NAN;
        *&zoomStartOffset = vbslq_s8(vnegq_f64(v32), v31, v30).u64[0];
        self->_zoomStartOffset = zoomStartOffset;
      }

      v33 = (v21 + zoomStartOffset) * (AXZoomMaximumZoomLevel - AXZoomMinimumZoomLevel);
      ZOTMainScreenSize();
      v35 = self->_mainDisplayZoomLevel + ZOTMainScreenScaleFactor() * (v33 / v34);
      v36 = AXZoomMinimumZoomLevel;
      if (v35 >= AXZoomMinimumZoomLevel + 0.000001)
      {
        v36 = v35;
        if (v35 > AXZoomMaximumZoomLevel)
        {
          v36 = AXZoomMaximumZoomLevel;
        }
      }

      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = __63__ZOTFullscreenEventHandler__handleDoubleTapEvent_newLocation___block_invoke;
      v37[3] = &unk_78E98;
      v37[4] = self;
      *&v37[5] = v36;
      dispatch_async(&_dispatch_main_q, v37);
    }

    else if (([(AXThreadTimer *)self->_editingGestureHoldTimer isPending]& 1) != 0 || [(AXThreadTimer *)self->_editingGestureHoldTimer isActive])
    {
      v23 = [(NSMutableArray *)self->_eventReplayQueue lastObject];
      v24 = [v7 record];

      if (v23 != v24)
      {
        eventReplayQueue = self->_eventReplayQueue;
        v14 = [v7 record];
        [(NSMutableArray *)eventReplayQueue addObject:v14];
LABEL_29:
      }
    }
  }
}

void __63__ZOTFullscreenEventHandler__handleDoubleTapEvent_newLocation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) zoomDelegate];
  [v2 fullscreenEventHandler:*(a1 + 32) setZoomLevel:*(a1 + 40) duration:0.0];
}

- (void)_handleVoiceOverMultiTapActionWithEvent:(id)a3 tapCount:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 <= 2)
  {
    if (a4 == 1)
    {
      v8 = +[VOSGesture ThreeFingerSingleTap];
      goto LABEL_13;
    }

    if (a4 == 2)
    {
      [v6 time];
      self->_tapDoubleLastTime = v9;
      if ([(ZOTFullscreenEventHandler *)self isAnyDisplayZoomedIn])
      {
        v10 = v17;
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = __78__ZOTFullscreenEventHandler__handleVoiceOverMultiTapActionWithEvent_tapCount___block_invoke_2;
        v17[3] = &unk_78D00;
        v17[4] = self;
      }

      else
      {
        v14 = ZOTDenormalizePoint(self->_tapPoint.x);
        v10 = block;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = __78__ZOTFullscreenEventHandler__handleVoiceOverMultiTapActionWithEvent_tapCount___block_invoke;
        block[3] = &unk_78D28;
        block[4] = self;
        *&block[5] = v14;
        block[6] = v15;
      }

      dispatch_async(&_dispatch_main_q, v10);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = __78__ZOTFullscreenEventHandler__handleVoiceOverMultiTapActionWithEvent_tapCount___block_invoke_3;
      v16[3] = &unk_78D00;
      v16[4] = self;
      dispatch_async(&_dispatch_main_q, v16);
    }
  }

  else
  {
    switch(a4)
    {
      case 3:
        v8 = +[VOSGesture ThreeFingerDoubleTap];
        goto LABEL_13;
      case 4:
        v8 = +[VOSGesture ThreeFingerTripleTap];
        goto LABEL_13;
      case 5:
        v8 = +[VOSGesture ThreeFingerQuadrupleTap];
LABEL_13:
        v11 = v8;
        v12 = [NSKeyedArchiver archivedDataWithRootObject:v8 requiringSecureCoding:1 error:0];

        v13 = +[AXVoiceOverServer server];
        [v13 triggerGesture:v12];

        break;
    }
  }

  self->_tapCount = 0;
  *&self->_tapLastTime = ZOTTimeUnset;
}

void __78__ZOTFullscreenEventHandler__handleVoiceOverMultiTapActionWithEvent_tapCount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) zoomDelegate];
  [v2 fullscreenEventHandler:*(a1 + 32) didReceiveThreeFingerDoubleTapAtLocation:{*(a1 + 40), *(a1 + 48)}];

  v3 = [*(a1 + 32) zoomDelegate];
  [v3 zoomLevelWithFullscreenEventHandler:*(a1 + 32)];
  *(*(a1 + 32) + 1328) = v4;

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [*(a1 + 32) externalDisplayZoomDelegates];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) fullscreenEventHandler:*(a1 + 32) didReceiveThreeFingerDoubleTapAtLocation:ZOTDenormalizePoint(0.5)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

void __78__ZOTFullscreenEventHandler__handleVoiceOverMultiTapActionWithEvent_tapCount___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) isMainDisplayZoomedIn])
  {
    v2 = [*(a1 + 32) zoomDelegate];
    [v2 fullscreenEventHandler:*(a1 + 32) didReceiveThreeFingerDoubleTapAtLocation:{CGPointZero.x, CGPointZero.y}];

    v3 = [*(a1 + 32) zoomDelegate];
    [v3 zoomLevelWithFullscreenEventHandler:*(a1 + 32)];
    *(*(a1 + 32) + 1328) = v4;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [*(a1 + 32) externalDisplayZoomDelegates];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    y = CGPointZero.y;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if ([*(a1 + 32) isDisplayZoomedIn:v11])
        {
          [v11 fullscreenEventHandler:*(a1 + 32) didReceiveThreeFingerDoubleTapAtLocation:{CGPointZero.x, y}];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

void __78__ZOTFullscreenEventHandler__handleVoiceOverMultiTapActionWithEvent_tapCount___block_invoke_3(uint64_t a1)
{
  v9 = [*(a1 + 32) zoomDelegate];
  v2 = *(a1 + 32);
  v3 = [v2 zoomDelegate];
  [v3 storedZoomLevelWithFullscreenEventHandler:*(a1 + 32)];
  v5 = v4;
  v6 = [*(a1 + 32) zoomDelegate];
  [v6 zoomLocationWithFullscreenEventHandler:*(a1 + 32)];
  [v9 fullscreenEventHandler:v2 storeZoomLevel:objc_msgSend(*(a1 + 32) location:"isMainDisplayZoomedIn") ^ 1 zoomed:*(*(a1 + 32) + 1296) forKey:{v5, v7, v8}];
}

- (double)_currentVelocity:(id)a3
{
  v4 = a3;
  [v4 averageLocation];
  v7 = v5;
  v8 = v6;
  if (self->_flickTime == ZOTTimeUnset)
  {
    self->_flickLocation.x = v5;
    self->_flickLocation.y = v6;
  }

  [v4 time];
  v10 = v9;

  v11 = v10 - self->_flickTime;
  self->_flickTime = v10;
  SCRCMathGetDistanceBetweenPoints();
  self->_flickLocation.x = v7;
  self->_flickLocation.y = v8;
  result = v12 / v11;
  if (v11 <= 0.0)
  {
    return 0.0;
  }

  return result;
}

- (CGPoint)_middleFingerForEvent:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (ZOTIsWildcat == 1)
  {
    v6 = ZOTDeviceRotation();
    v7 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
    v8 = [v7 interfaceOrientationWithFullscreenEventHandler:self];

    v9 = v8 == 2 && v6 == 2;
    v10 = v8 != 2 && v6 == 2;
    if (v8 == 3)
    {
      v9 = 0;
      v11 = v6 == 2;
    }

    else
    {
      v11 = 0;
    }

    if (v8 == 3)
    {
      v10 = 0;
    }

    v12 = v8 != 4 && v9;
    v13 = v8 != 4 && v11;
    v14 = v8 == 4 && v6 == 2;
    v15 = v8 != 4 && v10;
    v16 = [v5 fingerAtIndex:0];
    [v16 location];
    v18 = v17;
    v20 = v19;

    v21 = [v5 fingerCount];
    if (v21 >= 2)
    {
      v22 = v21;
      for (i = 1; i != v22; ++i)
      {
        v24 = [v5 fingerAtIndex:i];
        [v24 location];
        v26 = v25;
        v28 = v27;

        if (v12 && v26 < v18)
        {
          v29 = v26;
        }

        else
        {
          v29 = v18;
        }

        v30 = v26 > v29 && v15;
        if (v30 || v12 && v26 < v18)
        {
          v31 = v28;
        }

        else
        {
          v31 = v20;
        }

        v32 = v14 && v28 < v31;
        if (v14 && v28 < v31)
        {
          v31 = v28;
        }

        if (v13 && v28 > v31)
        {
          v20 = v28;
        }

        else
        {
          v20 = v31;
        }

        if ((v13 && v28 > v31) | (v32 | v30) & 1)
        {
          v18 = v26;
        }

        else
        {
          v18 = v29;
        }
      }
    }
  }

  else
  {
    [v4 magneticLocation];
    v18 = v33;
    v20 = v34;
  }

  v35 = v18;
  v36 = v20;
  result.y = v36;
  result.x = v35;
  return result;
}

- (void)_drainEventRepostQueue:(id)a3 replayEvents:(BOOL)a4 updateEventTimestamps:(BOOL)a5
{
  v22 = a5;
  v5 = a4;
  v7 = a3;
  if (v5)
  {
    v21 = +[AXEventTapManager sharedManager];
    v20 = [(ZOTFullscreenEventHandler *)self _zoomSenderIdentifierData];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v18 = v7;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v28;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v27 + 1) + 8 * i);
          v14 = [v13 HIDTime];
          v15 = v14;
          if (!v10)
          {
            v10 = v14;
          }

          if (v22 && [v13 creatorHIDEvent])
          {
            [v13 setHIDTime:mach_absolute_time()];
            IOHIDEventSetTimeStamp();
          }

          v16 = dispatch_time(0, v15 - v10);
          eventReplayDispatchQueue = self->_eventReplayDispatchQueue;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = __87__ZOTFullscreenEventHandler__drainEventRepostQueue_replayEvents_updateEventTimestamps___block_invoke;
          block[3] = &unk_78EC0;
          block[4] = v13;
          v24 = v20;
          v25 = v21;
          v26 = self;
          dispatch_after(v16, eventReplayDispatchQueue, block);
        }

        v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v9);
    }

    v7 = v18;
  }

  [v7 removeAllObjects];
}

id __87__ZOTFullscreenEventHandler__drainEventRepostQueue_replayEvents_updateEventTimestamps___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAccessibilityData:*(a1 + 40)];
  [*(a1 + 32) applyAccessibilityDataToCreatorHIDEvent];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 56) _senderIDForRepostingOfEvent:v2];

  return [v3 sendHIDSystemEvent:v2 repostCreatorHIDEvent:1 senderID:v4];
}

- (id)_descriptionForEvent:(id)a3
{
  v3 = a3;
  v4 = [v3 handInfo];
  v5 = objc_alloc_init(NSMutableString);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v4 eventType];
  v8 = AXDebugDescriptionForAXHandEventType();
  [v5 appendFormat:@"<%@ %p> %12@", v7, v3, v8];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [v4 paths];
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
        v16 = v15;
        [v14 pathLocation];
        [v5 appendFormat:@" {%5.3f, %5.3f}", v16, v17];
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  return v5;
}

- (void)_updateVelocityAndVectorWithEventLocation:(CGPoint)a3 startPoint:(CGPoint)a4 endPoint:(CGPoint)a5 forTrackpad:(BOOL)a6
{
  v6 = a6;
  Current = CFAbsoluteTimeGetCurrent();
  v15 = 0.0;
  SCRCMathGetVectorAndDistanceForPoints();
  if (v6)
  {
    v9 = 1120;
  }

  else
  {
    v15 = 0.0 / ZOTMainScreenScaleFactor();
    v9 = 1112;
  }

  v10 = *(&self->super.isa + v9);
  if (v10 != ZOTTimeUnset)
  {
    v11 = Current - v10;
    if (Current - v10 == 0.0)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = v15 / v11;
    }

    if (v11 < 0.2 || v12 > 125.0)
    {
      if (v6)
      {
        v13 = &_updateVelocityAndVectorWithEventLocation_startPoint_endPoint_forTrackpad__LastTrackpadVector;
      }

      else
      {
        v13 = &_updateVelocityAndVectorWithEventLocation_startPoint_endPoint_forTrackpad__LastVector;
      }

      SCRCMathUpdateAverage();
      if (*v13 <= 0.0 || vabdd_f64(*v13, 0.0) >= 20.0)
      {
        if (v6)
        {
          _updateVelocityAndVectorWithEventLocation_startPoint_endPoint_forTrackpad__LastTrackpadVector = 0;
          goto LABEL_23;
        }

        _updateVelocityAndVectorWithEventLocation_startPoint_endPoint_forTrackpad__LastVector = 0;
      }

      else
      {
        if (v6)
        {
          self->_currentTrackpadVector = 0.0;
          goto LABEL_23;
        }

        self->_currentVector = 0.0;
      }

LABEL_26:
      v14 = 1112;
      goto LABEL_27;
    }

    if (v11 > 0.2)
    {
      SCRCMathClearAverage();
    }
  }

  if (!v6)
  {
    goto LABEL_26;
  }

LABEL_23:
  v14 = 1120;
LABEL_27:
  *(&self->super.isa + v14) = Current;
}

- (unint64_t)_senderIDForRepostingOfEvent:(id)a3
{
  v3 = a3;
  if ([v3 creatorHIDEvent])
  {
    SenderID = IOHIDEventGetSenderID();
  }

  else
  {
    SenderID = [v3 senderID];
  }

  v5 = SenderID;

  return v5;
}

- (void)_scheduleTapTimeout:(BOOL)a3
{
  v3 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  if (_AXSVoiceOverTouchEnabled())
  {
    v6 = v3;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6 == 0;
  v8 = (&dword_0 + 3);
  if (v7)
  {
    v8 = &dword_4;
  }

  v9 = 1280;
  if (v3)
  {
    v9 = 1288;
  }

  v10 = 0.25;
  if (*(&self->super.isa + v9) == v8)
  {
    v11 = 1200;
    if (v3)
    {
      v11 = 1216;
    }

    v10 = Current - *(&self->super.isa + v11) + 0.05;
  }

  v12 = 1600;
  if (v3)
  {
    v12 = 1608;
  }

  v13 = *(&self->super.isa + v12);
  [v13 cancel];
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __49__ZOTFullscreenEventHandler__scheduleTapTimeout___block_invoke;
  v14[3] = &unk_78F38;
  objc_copyWeak(v15, &location);
  v16 = v3;
  v14[4] = self;
  v15[1] = *&Current;
  [v13 afterDelay:v14 processBlock:&__block_literal_global_305 cancelBlock:v10];
  objc_destroyWeak(v15);
  objc_destroyWeak(&location);
}

void __49__ZOTFullscreenEventHandler__scheduleTapTimeout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = _AXSVoiceOverTouchEnabled();
  if (!v3 || (*(a1 + 56) & 1) != 0)
  {
    v4 = 1280;
    if ((v3 != 0) | *(a1 + 56) & 1)
    {
      v4 = 1288;
    }

    v5 = *&WeakRetained[v4];
    if (v5 == 2)
    {
      v8 = *(a1 + 48);
      if ((v3 != 0) | *(a1 + 56) & 1)
      {
        *(WeakRetained + 151) = v8;
        v9 = -1.0;
        v10 = -1.0;
      }

      else
      {
        *(WeakRetained + 149) = v8;
        v9 = ZOTDenormalizePoint(*(WeakRetained + 153));
        v10 = v11;
      }

      if ([WeakRetained isAnyDisplayZoomedIn])
      {
        v12 = v16;
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = __49__ZOTFullscreenEventHandler__scheduleTapTimeout___block_invoke_3;
        v16[3] = &unk_78D00;
        v16[4] = WeakRetained;
      }

      else
      {
        v12 = v14;
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = __49__ZOTFullscreenEventHandler__scheduleTapTimeout___block_invoke_301;
        v14[3] = &unk_78F10;
        *&v14[5] = v9;
        *&v14[6] = v10;
        v14[4] = WeakRetained;
        v15 = *(a1 + 56);
      }

      dispatch_async(&_dispatch_main_q, v12);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = __49__ZOTFullscreenEventHandler__scheduleTapTimeout___block_invoke_302;
      v13[3] = &unk_78D00;
      v13[4] = WeakRetained;
      dispatch_async(&_dispatch_main_q, v13);
    }

    else if (v5 == 1)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __49__ZOTFullscreenEventHandler__scheduleTapTimeout___block_invoke_2;
      block[3] = &unk_78EE8;
      v18 = *(a1 + 56);
      v6 = *(a1 + 32);
      block[4] = WeakRetained;
      block[5] = v6;
      dispatch_async(&_dispatch_main_q, block);
      if (*(a1 + 56) == 1)
      {
        v7 = WeakRetained[1337] == 0;
        goto LABEL_19;
      }

      if ((WeakRetained[1336] & 1) == 0)
      {
        v7 = [WeakRetained isMainDisplayZoomedIn] ^ 1;
        goto LABEL_19;
      }
    }
  }

  v7 = 0;
LABEL_19:
  if (*(a1 + 56) == 1)
  {
    *(WeakRetained + 161) = 0;
    *(WeakRetained + 152) = ZOTTimeUnset;
  }

  else
  {
    *(WeakRetained + 160) = 0;
    *(WeakRetained + 150) = ZOTTimeUnset;
    [WeakRetained _drainEventRepostQueue:*(WeakRetained + 205) replayEvents:v7 updateEventTimestamps:0];
  }
}

void __49__ZOTFullscreenEventHandler__scheduleTapTimeout___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) zoomDelegate];
  v3 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    v4 = ZOTDenormalizePoint(0.5);
  }

  else
  {
    [*(a1 + 32) _middleFingerForEvent:*(v3 + 176)];
  }

  [v2 fullscreenEventHandler:v3 didReceiveThreeFingerSingleTapAtLocation:v4];

  v5 = [*(a1 + 32) zoomDelegate];
  [v5 zoomLevelWithFullscreenEventHandler:*(a1 + 32)];
  *(*(a1 + 32) + 1328) = v6;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [*(a1 + 32) externalDisplayZoomDelegates];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11) fullscreenEventHandler:*(a1 + 40) didReceiveThreeFingerSingleTapAtLocation:ZOTDenormalizePoint(0.5)];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

void __49__ZOTFullscreenEventHandler__scheduleTapTimeout___block_invoke_3(uint64_t a1)
{
  v2 = ZOOMLogEvents();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "3. did receive three finger double tap at {0,0}", buf, 2u);
  }

  if ([*(a1 + 32) isMainDisplayZoomedIn])
  {
    v3 = [*(a1 + 32) zoomDelegate];
    [v3 fullscreenEventHandler:*(a1 + 32) didReceiveThreeFingerDoubleTapAtLocation:{CGPointZero.x, CGPointZero.y}];

    v4 = [*(a1 + 32) zoomDelegate];
    [v4 zoomLevelWithFullscreenEventHandler:*(a1 + 32)];
    *(*(a1 + 32) + 1328) = v5;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [*(a1 + 32) externalDisplayZoomDelegates];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    y = CGPointZero.y;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if ([*(a1 + 32) isDisplayZoomedIn:v12])
        {
          [v12 fullscreenEventHandler:*(a1 + 32) didReceiveThreeFingerDoubleTapAtLocation:{CGPointZero.x, y}];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v8);
  }
}

void __49__ZOTFullscreenEventHandler__scheduleTapTimeout___block_invoke_301(uint64_t a1)
{
  v2 = ZOOMLogEvents();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = NSStringFromPoint(*(a1 + 40));
    *buf = 138412290;
    v22 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "4. did receive three finger double tap at %@", buf, 0xCu);
  }

  v4 = [*(a1 + 32) zoomDelegate];
  [v4 fullscreenEventHandler:*(a1 + 32) didReceiveThreeFingerDoubleTapAtLocation:{*(a1 + 40), *(a1 + 48)}];

  v5 = [*(a1 + 32) zoomDelegate];
  [v5 zoomLevelWithFullscreenEventHandler:*(a1 + 32)];
  *(*(a1 + 32) + 1328) = v6;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [*(a1 + 32) externalDisplayZoomDelegates];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        v13 = *(a1 + 32);
        v14 = -1.0;
        v15 = -1.0;
        if ((*(a1 + 56) & 1) == 0)
        {
          v14 = ZOTDenormalizePoint(0.5);
        }

        [v12 fullscreenEventHandler:v13 didReceiveThreeFingerDoubleTapAtLocation:{v14, v15}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

void __49__ZOTFullscreenEventHandler__scheduleTapTimeout___block_invoke_302(uint64_t a1)
{
  v2 = [*(a1 + 32) zoomDelegate];
  [v2 updateSystemGestureDisablingAssertionsWithFullscreenEventHandler:*(a1 + 32)];
}

- (ZOTFullscreenEventHandlerDelegate)eventDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_eventDelegate);

  return WeakRetained;
}

- (ZOTFullscreenZoomHandlerDelegate)zoomDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_zoomDelegate);

  return WeakRetained;
}

@end