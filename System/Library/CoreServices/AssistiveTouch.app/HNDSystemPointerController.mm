@interface HNDSystemPointerController
- (BKSHIDEventPointerAttributes)currentSystemPointerPointAttributes;
- (BOOL)_accessibilityShouldIgnoreEventRep:(id)a3;
- (BOOL)_handleRepostedButtonEventWithTimestamp:(unint64_t)a3 buttonMask:(unsigned int)a4 senderID:(unint64_t)a5;
- (BOOL)handleEventRepresentationForMovement:(id)a3;
- (BOOL)handleEventRepresentationFromFilter:(id)a3;
- (CGPoint)currentAbsoluteSystemPointerPoint;
- (CGPoint)currentSystemPointerPoint;
- (HNDSystemPointerController)init;
- (id)_localDataForAttributes:(id)a3;
- (id)customizableMouseForEventSenderID:(unint64_t)a3 serviceClient:(__IOHIDServiceClient *)a4;
- (unsigned)buttonMaskForSenderID:(unint64_t)a3;
- (void)_finishHandlingEventRepresentation:(id)a3 forButtonsWithSenderID:(unint64_t)a4 lastButtonMask:(unsigned int)a5 buttonMask:(unsigned int)a6;
- (void)_recordAndRepostEventRepresentation:(id)a3 forButtonsWithSenderID:(unint64_t)a4 buttonMask:(unsigned int)a5;
- (void)_recordRepostedButtonEventWithTimestamp:(unint64_t)a3 buttonMask:(unsigned int)a4 senderID:(unint64_t)a5;
- (void)addPointerStreamObserver:(id)a3;
- (void)cleanup;
- (void)clearCachedCustomizableMouse;
- (void)dealloc;
- (void)hideSystemPointer:(BOOL)a3 forClient:(id)a4;
- (void)informDelegatesOfEvent:(id)a3;
- (void)removeGlobalMouseEventsForDisplayID:(unsigned int)a3;
- (void)removePointerStreamObserver:(id)a3;
- (void)requestGlobalMouseEventsForDisplay:(id)a3 displayID:(unsigned int)a4 targetContextID:(unsigned int)a5;
- (void)setButtonMask:(unsigned int)a3 forSenderID:(unint64_t)a4;
- (void)setCurrentAbsoluteSystemPointerPoint:(CGPoint)a3;
- (void)setCurrentAbsoluteSystemPointerPoint:(CGPoint)a3 withAttributes:(id)a4 pointerAttributes:(id)a5;
- (void)setCurrentSystemPointerPoint:(CGPoint)a3;
- (void)setCurrentSystemPointerPointAttributes:(id)a3;
- (void)updateSensitivityMultiplier;
@end

@implementation HNDSystemPointerController

- (HNDSystemPointerController)init
{
  v34.receiver = self;
  v34.super_class = HNDSystemPointerController;
  v2 = [(HNDSystemPointerController *)&v34 init];
  v3 = v2;
  if (v2)
  {
    v2->_buttonMaskLock._os_unfair_lock_opaque = 0;
    v2->_customizableMouseLock._os_unfair_lock_opaque = 0;
    v2->_repostedButtonEventsLock._os_unfair_lock_opaque = 0;
    v2->_currentPointerPointLock._os_unfair_lock_opaque = 0;
    v4 = +[NSMutableArray array];
    pointerStreamData = v3->_pointerStreamData;
    v3->_pointerStreamData = v4;

    v6 = +[NSMutableDictionary dictionary];
    buttonMaskBySenderID = v3->_buttonMaskBySenderID;
    v3->_buttonMaskBySenderID = v6;

    v8 = objc_opt_new();
    pointerClientController = v3->_pointerClientController;
    v3->_pointerClientController = v8;

    [(PSPointerClientController *)v3->_pointerClientController setDelegate:v3];
    v3->_currentSystemPointerPoint = HNDPointNull;
    v3->_currentAbsoluteSystemPointerPoint = HNDPointNull;
    v10 = +[NSMutableDictionary dictionary];
    customizableMouseBySenderID = v3->_customizableMouseBySenderID;
    v3->_customizableMouseBySenderID = v10;

    v12 = dispatch_queue_create("com.apple.AssistiveTouch.HNDSystemPointerController.ObserverQueue", 0);
    observerQueue = v3->_observerQueue;
    v3->_observerQueue = v12;

    v14 = dispatch_queue_create("com.apple.AssistiveTouch.HNDSystemPointerController.PointConversionQueue", 0);
    pointConversionQueue = v3->_pointConversionQueue;
    v3->_pointConversionQueue = v14;

    objc_initWeak(&location, v3);
    v16 = +[AXSettings sharedInstance];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000805B0;
    v31[3] = &unk_1001D3460;
    objc_copyWeak(&v32, &location);
    [v16 registerUpdateBlock:v31 forRetrieveSelector:"assistiveTouchMouseCustomizedClickActions" withListener:v3];

    objc_destroyWeak(&v32);
    v17 = +[AXSettings sharedInstance];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000805F0;
    v29[3] = &unk_1001D3460;
    objc_copyWeak(&v30, &location);
    [v17 registerUpdateBlock:v29 forRetrieveSelector:"assistiveTouchSpeed" withListener:v3];

    objc_destroyWeak(&v30);
    [(HNDSystemPointerController *)v3 updateSensitivityMultiplier];
    v18 = [NSString stringWithFormat:@"%@-%p", objc_opt_class(), v3];
    eventTapIdentifier = v3->_eventTapIdentifier;
    v3->_eventTapIdentifier = v18;

    v20 = [[AXEventProcessor alloc] initWithHIDTapIdentifier:v3->_eventTapIdentifier HIDEventTapPriority:26 systemEventTapIdentifier:0 systemEventTapPriority:0];
    eventProcessor = v3->_eventProcessor;
    v3->_eventProcessor = v20;

    [(AXEventProcessor *)v3->_eventProcessor setHIDEventFilterMask:16];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100080630;
    v27[3] = &unk_1001D5BC0;
    objc_copyWeak(&v28, &location);
    [(AXEventProcessor *)v3->_eventProcessor setHIDEventHandler:v27];
    [(AXEventProcessor *)v3->_eventProcessor beginHandlingHIDEventsForReason:v3->_eventTapIdentifier];
    v22 = objc_alloc_init(NSMutableSet);
    hidePointerClients = v3->_hidePointerClients;
    v3->_hidePointerClients = v22;

    v24 = +[NSMutableDictionary dictionary];
    disabledIDMappingRegistry = v3->_disabledIDMappingRegistry;
    v3->_disabledIDMappingRegistry = v24;

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)requestGlobalMouseEventsForDisplay:(id)a3 displayID:(unsigned int)a4 targetContextID:(unsigned int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v8 = a3;
  v11 = objc_opt_new();
  [v11 setHardwareIdentifier:v8];
  [v11 setContextID:v5];
  [v11 setDisplayID:v6];
  v9 = +[BKSMousePointerService sharedInstance];
  v10 = [v9 requestGlobalMouseEventsForDisplay:v8 targetContextID:v5];

  [v11 setPointerStream:v10];
  [(NSMutableArray *)self->_pointerStreamData addObject:v11];
}

- (void)removeGlobalMouseEventsForDisplayID:(unsigned int)a3
{
  pointerStreamData = self->_pointerStreamData;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100080818;
  v8[3] = &unk_1001D5BE0;
  v9 = a3;
  v5 = [(NSMutableArray *)pointerStreamData axFirstObjectsUsingBlock:v8];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 pointerStream];
    [v7 invalidate];

    [(NSMutableArray *)self->_pointerStreamData removeObject:v6];
  }
}

- (void)cleanup
{
  [(NSMutableArray *)self->_pointerStreamData enumerateObjectsUsingBlock:&stru_1001D5C20];
  pointerStreamData = self->_pointerStreamData;

  [(NSMutableArray *)pointerStreamData removeAllObjects];
}

- (void)dealloc
{
  [(HNDSystemPointerController *)self cleanup];
  [(PSPointerClientController *)self->_pointerClientController invalidate];
  [(BSInvalidatable *)self->_hidePointerAssertion invalidate];
  [(AXEventProcessor *)self->_eventProcessor endHandlingHIDEventsForReason:self->_eventTapIdentifier];
  v3.receiver = self;
  v3.super_class = HNDSystemPointerController;
  [(HNDSystemPointerController *)&v3 dealloc];
}

- (CGPoint)currentSystemPointerPoint
{
  os_unfair_lock_lock(&self->_currentPointerPointLock);
  x = self->_currentSystemPointerPoint.x;
  y = self->_currentSystemPointerPoint.y;
  os_unfair_lock_unlock(&self->_currentPointerPointLock);
  v5 = x;
  v6 = y;
  result.y = v6;
  result.x = v5;
  return result;
}

- (void)setCurrentSystemPointerPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  os_unfair_lock_lock(&self->_currentPointerPointLock);
  self->_currentSystemPointerPoint.x = x;
  self->_currentSystemPointerPoint.y = y;

  os_unfair_lock_unlock(&self->_currentPointerPointLock);
}

- (CGPoint)currentAbsoluteSystemPointerPoint
{
  os_unfair_lock_lock(&self->_currentPointerPointLock);
  x = self->_currentAbsoluteSystemPointerPoint.x;
  y = self->_currentAbsoluteSystemPointerPoint.y;
  os_unfair_lock_unlock(&self->_currentPointerPointLock);
  v5 = x;
  v6 = y;
  result.y = v6;
  result.x = v5;
  return result;
}

- (void)setCurrentAbsoluteSystemPointerPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  os_unfair_lock_lock(&self->_currentPointerPointLock);
  self->_currentAbsoluteSystemPointerPoint.x = x;
  self->_currentAbsoluteSystemPointerPoint.y = y;

  os_unfair_lock_unlock(&self->_currentPointerPointLock);
}

- (void)setCurrentAbsoluteSystemPointerPoint:(CGPoint)a3 withAttributes:(id)a4 pointerAttributes:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a5;
  v10 = a4;
  os_unfair_lock_lock(&self->_currentPointerPointLock);
  self->_currentAbsoluteSystemPointerPoint.x = x;
  self->_currentAbsoluteSystemPointerPoint.y = y;
  currentSystemPointerPointAttributes = self->_currentSystemPointerPointAttributes;
  self->_currentSystemPointerPointAttributes = v9;
  v12 = v9;

  v13 = [v10 display];

  v14 = [v13 safeStringForKey:@"_hardwareIdentifier"];
  currentSystemPointerHardwareIdentifier = self->_currentSystemPointerHardwareIdentifier;
  self->_currentSystemPointerHardwareIdentifier = v14;

  os_unfair_lock_unlock(&self->_currentPointerPointLock);
}

- (BKSHIDEventPointerAttributes)currentSystemPointerPointAttributes
{
  os_unfair_lock_lock(&self->_currentPointerPointLock);
  v3 = self->_currentSystemPointerPointAttributes;
  os_unfair_lock_unlock(&self->_currentPointerPointLock);

  return v3;
}

- (void)setCurrentSystemPointerPointAttributes:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_currentPointerPointLock);
  currentSystemPointerPointAttributes = self->_currentSystemPointerPointAttributes;
  self->_currentSystemPointerPointAttributes = v4;

  os_unfair_lock_unlock(&self->_currentPointerPointLock);
}

- (unsigned)buttonMaskForSenderID:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_buttonMaskLock);
  buttonMaskBySenderID = self->_buttonMaskBySenderID;
  v6 = [NSNumber numberWithUnsignedLongLong:a3];
  v7 = [(NSMutableDictionary *)buttonMaskBySenderID objectForKey:v6];

  os_unfair_lock_unlock(&self->_buttonMaskLock);
  LODWORD(v6) = [v7 intValue];

  return v6;
}

- (void)setButtonMask:(unsigned int)a3 forSenderID:(unint64_t)a4
{
  v5 = *&a3;
  os_unfair_lock_lock(&self->_buttonMaskLock);
  buttonMaskBySenderID = self->_buttonMaskBySenderID;
  v8 = [NSNumber numberWithUnsignedInt:v5];
  v9 = [NSNumber numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)buttonMaskBySenderID setObject:v8 forKey:v9];

  os_unfair_lock_unlock(&self->_buttonMaskLock);
}

- (void)updateSensitivityMultiplier
{
  v4 = +[AXSettings sharedInstance];
  [v4 assistiveTouchSpeed];
  self->_cachedSensitivityMultiplier = v3;
}

- (void)clearCachedCustomizableMouse
{
  os_unfair_lock_lock(&self->_customizableMouseLock);
  [(NSMutableDictionary *)self->_customizableMouseBySenderID removeAllObjects];

  os_unfair_lock_unlock(&self->_customizableMouseLock);
}

- (id)customizableMouseForEventSenderID:(unint64_t)a3 serviceClient:(__IOHIDServiceClient *)a4
{
  if (+[HNDVirtualHIDMouse eventServiceID]== a3)
  {
    goto LABEL_2;
  }

  os_unfair_lock_lock(&self->_customizableMouseLock);
  customizableMouseBySenderID = self->_customizableMouseBySenderID;
  v9 = [NSNumber numberWithUnsignedLongLong:a3];
  v7 = [(NSMutableDictionary *)customizableMouseBySenderID objectForKey:v9];

  os_unfair_lock_unlock(&self->_customizableMouseLock);
  if (!v7)
  {
    if (!a4 || (v11 = CFGetTypeID(a4), v11 != IOHIDServiceClientGetTypeID()))
    {
LABEL_2:
      v7 = 0;
      goto LABEL_4;
    }

    v7 = [AXCustomizableMouse mouseForHIDServiceClient:a4];
    if (v7)
    {
      os_unfair_lock_lock(&self->_customizableMouseLock);
      v12 = self->_customizableMouseBySenderID;
      v13 = [NSNumber numberWithUnsignedLongLong:a3];
      [(NSMutableDictionary *)v12 setObject:v7 forKey:v13];

      os_unfair_lock_unlock(&self->_customizableMouseLock);
    }
  }

LABEL_4:

  return v7;
}

- (BOOL)handleEventRepresentationForMovement:(id)a3
{
  v4 = a3;
  v5 = [v4 pointerControllerInfo];
  v6 = 0;
  if ([v4 type] == 3200 && v5)
  {
    if ([v5 pointerIsAbsolute])
    {
      [v5 pointerX];
      v8 = v7;
      [v5 pointerY];
      v10 = v9;
      if (vabdd_f64(*&qword_100218AE0, v8) >= 0.1 || vabdd_f64(*&qword_100218AE8, v9) >= 0.1)
      {
        qword_100218AE0 = *&v8;
        qword_100218AE8 = *&v9;
        v11 = [(HNDSystemPointerController *)self pointConversionQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100081000;
        block[3] = &unk_1001D5C48;
        v17 = v8;
        v18 = v10;
        v14 = v4;
        v15 = self;
        v16 = v5;
        dispatch_async(v11, block);
      }

      v6 = 1;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)_localDataForAttributes:(id)a3
{
  v4 = [a3 display];
  v5 = [v4 safeStringForKey:@"_hardwareIdentifier"];

  pointerStreamData = self->_pointerStreamData;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000812C8;
  v10[3] = &unk_1001D5C70;
  v7 = v5;
  v11 = v7;
  v8 = [(NSMutableArray *)pointerStreamData axFirstObjectsUsingBlock:v10];
  if (!v8)
  {
    v8 = [(NSMutableArray *)self->_pointerStreamData axFirstObjectsUsingBlock:&stru_1001D5CB0];
  }

  return v8;
}

- (BOOL)handleEventRepresentationFromFilter:(id)a3
{
  v4 = a3;
  if ((AXIsInternalInstall() & 1) == 0)
  {
    ASTLogSystemPointerController();
  }

  v5 = ASTLogSystemPointerController();
  v6 = os_signpost_id_generate(v5);

  v7 = ASTLogSystemPointerController();
  v8 = v7;
  v9 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "AXEventProcessor event tap with priority:kAssistiveTouchEventFilterPriority + 1", "", buf, 2u);
  }

  v10 = [v4 pointerControllerInfo];
  if ([v4 type] != 3200 || !v10)
  {
    v14 = ASTLogSystemPointerController();
    v12 = v14;
    if (v9 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v14))
    {
      goto LABEL_34;
    }

    *buf = 0;
    v13 = "For reason: !kAXEventTypePointer";
    goto LABEL_15;
  }

  if (![(HNDSystemPointerController *)self _accessibilityShouldIgnoreEventRep:v4])
  {
    v15 = [v4 accessibilityData];
    v16 = [v15 usage];

    if (v16 != 4)
    {
      v17 = +[HNDHandManager sharedManager];
      v18 = [v17 lastMoveWasMouse];

      if ((v18 & 1) == 0)
      {
        [v4 creatorHIDEvent];
        v19 = BKSHIDEventGetBaseAttributes();
        v20 = [(HNDSystemPointerController *)self _localDataForAttributes:v19];
        if (v20)
        {
          v21 = +[HNDHandManager sharedManager];
          v22 = [v20 hardwareIdentifier];
          v23 = [v21 displayManagerForHardwareIdentifier:v22];

          [v23 screenPoint];
          v25 = v24;
          v27 = v26;
          v28 = +[BKSMousePointerService sharedInstance];
          v29 = [[BKSContextRelativePoint alloc] initWithPoint:objc_msgSend(v20 contextID:{"contextID"), v25, v27}];
          [v28 setContextRelativePointerPosition:v29 onDisplay:0 withAnimationParameters:0 restrictingToPID:0xFFFFFFFFLL];

          [(HNDSystemPointerController *)self setCurrentAbsoluteSystemPointerPoint:v25, v27];
          v30 = [v23 hardwareIdentifier];
          [(HNDSystemPointerController *)self setCurrentSystemPointerHardwareIdentifier:v30];
        }
      }

      v31 = +[HNDHandManager sharedManager];
      [v10 pointerX];
      v33 = v32;
      [v10 pointerAccelX];
      v35 = v33 + v34;
      [v10 pointerY];
      v37 = v36;
      [v10 pointerAccelY];
      [v31 mouseEventRecordedWithDelta:{v35, v37 + v38}];
    }

    v39 = [v4 senderID];
    [v10 pointerButtonMask];
    v41 = v40;
    if (-[HNDSystemPointerController _handleRepostedButtonEventWithTimestamp:buttonMask:senderID:](self, "_handleRepostedButtonEventWithTimestamp:buttonMask:senderID:", [v4 HIDTime], v41, v39))
    {
      v42 = ASTLogSystemPointerController();
      v12 = v42;
      if (v9 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v42))
      {
        goto LABEL_34;
      }

      *buf = 0;
      v13 = "For reason: _handleRepostedButtonEventWithTimestamp";
      goto LABEL_15;
    }

    if ([(HNDSystemPointerController *)self buttonMaskForSenderID:v39]== v41)
    {
      v43 = [v4 pointerControllerInfo];
      if (([v43 pointerIsAbsolute] & 1) != 0 || (v44 = objc_msgSend(v4, "senderID"), v44 == +[HNDVirtualHIDMouse eventServiceID](HNDVirtualHIDMouse, "eventServiceID")) || vabdd_f64(self->_cachedSensitivityMultiplier, kAXSAssistiveTouchSpeedDefault) < 0.001)
      {

        goto LABEL_31;
      }

      v51 = [v10 isPointerMove];

      if (!v51)
      {
LABEL_31:
        v45 = ASTLogSystemPointerController();
        v12 = v45;
        if (v9 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v45))
        {
          goto LABEL_34;
        }

        *buf = 0;
        v13 = "For reason: buttonMask == lastButtonMask but did not repost";
        goto LABEL_15;
      }

      v55 = v4;
      AXPerformBlockAsynchronouslyOnMainThread();
      v52 = ASTLogSystemPointerController();
      v53 = v52;
      if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v52))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v53, OS_SIGNPOST_INTERVAL_END, v6, "AXEventProcessor event tap with priority:kAssistiveTouchEventFilterPriority + 1", "For reason: _recordAndRepostEventRepresentation", buf, 2u);
      }

      v50 = v55;
    }

    else
    {
      [(HNDSystemPointerController *)self setButtonMask:v41 forSenderID:v39];
      v54 = v4;
      AXPerformBlockAsynchronouslyOnMainThread();
      v48 = ASTLogSystemPointerController();
      v49 = v48;
      if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v49, OS_SIGNPOST_INTERVAL_END, v6, "AXEventProcessor event tap with priority:kAssistiveTouchEventFilterPriority + 1", "", buf, 2u);
      }

      v50 = v54;
    }

    v46 = 1;
    goto LABEL_35;
  }

  v11 = ASTLogSystemPointerController();
  v12 = v11;
  if (v9 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v11))
  {
    goto LABEL_34;
  }

  *buf = 0;
  v13 = "For reason: _accessibilityShouldIgnoreEventRep";
LABEL_15:
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, v6, "AXEventProcessor event tap with priority:kAssistiveTouchEventFilterPriority + 1", v13, buf, 2u);
LABEL_34:

  v46 = 0;
LABEL_35:

  return v46;
}

- (BOOL)_handleRepostedButtonEventWithTimestamp:(unint64_t)a3 buttonMask:(unsigned int)a4 senderID:(unint64_t)a5
{
  v6 = *&a4;
  v9 = objc_opt_new();
  [v9 setTimestamp:a3];
  [v9 setButtonMask:v6];
  os_unfair_lock_lock(&self->_repostedButtonEventsLock);
  repostedButtonEventsBySenderID = self->_repostedButtonEventsBySenderID;
  v11 = [NSNumber numberWithUnsignedLongLong:a5];
  v12 = [(NSMutableDictionary *)repostedButtonEventsBySenderID objectForKeyedSubscript:v11];

  v13 = [v12 containsObject:v9];
  if (v13)
  {
    [v12 removeObject:v9];
  }

  os_unfair_lock_unlock(&self->_repostedButtonEventsLock);

  return v13;
}

- (void)_recordRepostedButtonEventWithTimestamp:(unint64_t)a3 buttonMask:(unsigned int)a4 senderID:(unint64_t)a5
{
  v6 = *&a4;
  v9 = objc_opt_new();
  [v9 setTimestamp:a3];
  [v9 setButtonMask:v6];
  os_unfair_lock_lock(&self->_repostedButtonEventsLock);
  repostedButtonEventsBySenderID = self->_repostedButtonEventsBySenderID;
  if (!repostedButtonEventsBySenderID)
  {
    v11 = +[NSMutableDictionary dictionary];
    v12 = self->_repostedButtonEventsBySenderID;
    self->_repostedButtonEventsBySenderID = v11;

    repostedButtonEventsBySenderID = self->_repostedButtonEventsBySenderID;
  }

  v13 = [NSNumber numberWithUnsignedLongLong:a5];
  v14 = [(NSMutableDictionary *)repostedButtonEventsBySenderID objectForKeyedSubscript:v13];

  if (!v14)
  {
    v14 = +[NSCountedSet set];
    v15 = self->_repostedButtonEventsBySenderID;
    v16 = [NSNumber numberWithUnsignedLongLong:a5];
    [(NSMutableDictionary *)v15 setObject:v14 forKeyedSubscript:v16];
  }

  if ([v14 containsObject:v9])
  {
    v17 = ASTLogMouse();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      sub_100129D5C(v9, v17);
    }
  }

  [v14 addObject:v9];
  os_unfair_lock_unlock(&self->_repostedButtonEventsLock);
}

- (void)_finishHandlingEventRepresentation:(id)a3 forButtonsWithSenderID:(unint64_t)a4 lastButtonMask:(unsigned int)a5 buttonMask:(unsigned int)a6
{
  v10 = a3;
  v11 = objc_alloc_init(HNDEvent);
  [(HNDSystemPointerController *)self currentSystemPointerPoint];
  [(HNDEvent *)v11 setLocation:?];
  v12 = objc_autoreleasePoolPush();
  v29 = a4;
  v31 = -[HNDSystemPointerController customizableMouseForEventSenderID:serviceClient:](self, "customizableMouseForEventSenderID:serviceClient:", a4, [v10 creatorHIDServiceClient]);
  v30 = a6;
  v13 = sub_10004401C(a5, a6);
  v14 = [v13 upButton];
  v15 = [v13 downButton];
  v16 = v15;
  if (v14)
  {
    v17 = 2;
    v15 = v14;
  }

  else
  {
    if (!v15)
    {
      goto LABEL_6;
    }

    v17 = 1;
  }

  v18 = [v15 integerValue];
  [(HNDEvent *)v11 setType:v17];
  [(HNDEvent *)v11 setButtonNumber:v18];
  v19 = [v31 customActionForButtonNumber:v18];
  [(HNDEvent *)v11 setActionOverride:v19];

  v20 = [(HNDSystemPointerController *)self currentSystemPointerHardwareIdentifier];
  [(HNDEvent *)v11 setHardwareIdentifier:v20];

LABEL_6:
  v21 = +[HNDHandManager sharedManager];
  if ([v21 shouldHandleSystemPointerButtonEvent:v11])
  {
  }

  else
  {
    v28 = v16;
    v22 = a5;
    v23 = v12;
    v24 = +[HNDHandManager sharedManager];
    v25 = [v24 hitTestsViewAtSystemPointerPoint];

    if ((v25 & 1) == 0)
    {
      [(HNDSystemPointerController *)self _recordAndRepostEventRepresentation:v10 forButtonsWithSenderID:v29 buttonMask:v30];
    }

    v12 = v23;
    a5 = v22;
    v16 = v28;
  }

  v26 = ASTLogMouse();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v27 = NSStringFromBOOL();
    *buf = 134219010;
    v33 = v29;
    v34 = 1024;
    v35 = v30;
    v36 = 1024;
    v37 = a5;
    v38 = 2112;
    v39 = v27;
    v40 = 2112;
    v41 = v11;
    _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "senderID=%llu, buttonMask=%u, lastButtonMask=%u, shouldFilterEvent=%@, event=%@", buf, 0x2Cu);
  }

  objc_autoreleasePoolPop(v12);
  [(HNDSystemPointerController *)self informDelegatesOfEvent:v11];
}

- (void)_recordAndRepostEventRepresentation:(id)a3 forButtonsWithSenderID:(unint64_t)a4 buttonMask:(unsigned int)a5
{
  v5 = *&a5;
  v8 = a3;
  -[HNDSystemPointerController _recordRepostedButtonEventWithTimestamp:buttonMask:senderID:](self, "_recordRepostedButtonEventWithTimestamp:buttonMask:senderID:", [v8 HIDTime], v5, a4);
  v9 = +[AXEventTapManager sharedManager];
  [v9 sendHIDSystemEvent:v8 repostCreatorHIDEvent:1 senderID:a4];
}

- (BOOL)_accessibilityShouldIgnoreEventRep:(id)a3
{
  v4 = [a3 creatorHIDServiceClient];
  v5 = v4;
  if (v4)
  {
    v6 = IOHIDServiceClientCopyProperty(v4, @"PrimaryUsagePage");
    v7 = CFGetTypeID(v6);
    if (v7 == CFNumberGetTypeID() && [v6 unsignedIntValue] == 96)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v8 = IOHIDServiceClientGetRegistryID(v5);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [(HNDSystemPointerController *)self disabledIDMappingRegistry];
        v10 = [v9 objectForKeyedSubscript:v8];

        if (v10)
        {
          LOBYTE(v5) = [v10 BOOLValue];
        }

        else
        {
          v12 = IOHIDServiceClientCopyProperty(v5, @"DisableAccessibilityEventTranslation");
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v5 = [v12 BOOLValue];
          }

          else
          {
            v5 = 0;
          }

          v13 = [(HNDSystemPointerController *)self disabledIDMappingRegistry];
          v14 = [NSNumber numberWithBool:v5];
          [v13 setObject:v14 forKey:v8];
        }
      }

      else
      {
        v11 = ASTLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_100129DD4(v8, v11);
        }

        LOBYTE(v5) = 0;
      }
    }
  }

  return v5;
}

- (void)informDelegatesOfEvent:(id)a3
{
  v4 = a3;
  observerQueue = self->_observerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000822C0;
  v7[3] = &unk_1001D36E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(observerQueue, v7);
}

- (void)addPointerStreamObserver:(id)a3
{
  v4 = a3;
  observerQueue = self->_observerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100082450;
  v7[3] = &unk_1001D36E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(observerQueue, v7);
}

- (void)removePointerStreamObserver:(id)a3
{
  v4 = a3;
  observerQueue = self->_observerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100082550;
  v7[3] = &unk_1001D36E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(observerQueue, v7);
}

- (void)hideSystemPointer:(BOOL)a3 forClient:(id)a4
{
  v4 = a3;
  v6 = a4;
  hidePointerClients = self->_hidePointerClients;
  if (v4)
  {
    [(NSMutableSet *)hidePointerClients addObject:v6];
    if (!self->_hidePointerAssertion)
    {
      v8 = [(PSPointerClientController *)self->_pointerClientController persistentlyHidePointerAssertionForReason:3];
      hidePointerAssertion = self->_hidePointerAssertion;
      self->_hidePointerAssertion = v8;

      v10 = ASTLogMouse();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v16 = 0;
        v11 = "hideSystemPointer = YES";
        v12 = &v16;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v11, v12, 2u);
        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

  else
  {
    [(NSMutableSet *)hidePointerClients removeObject:v6];
    if (![(NSMutableSet *)self->_hidePointerClients count])
    {
      v13 = self->_hidePointerAssertion;
      if (v13)
      {
        [(BSInvalidatable *)v13 invalidate];
        v14 = self->_hidePointerAssertion;
        self->_hidePointerAssertion = 0;

        v10 = ASTLogMouse();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v15 = 0;
          v11 = "hideSystemPointer = NO";
          v12 = &v15;
          goto LABEL_9;
        }

LABEL_10:
      }
    }
  }
}

@end