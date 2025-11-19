@interface XADEventManager
+ (id)sharedManager;
- (BOOL)_initializeAXObserverIfNeeded;
- (BOOL)_iosEventFilter:(id)a3;
- (XADEventManager)init;
- (XADEventManagerDelegate)delegate;
- (XADEventManagerDelegate)delegateForInspectorManager;
- (__AXUIElement)_axUIElementForNativeFocusItemChangedNotification:(id)a3;
- (id)_localizedNotificationString:(int)a3;
- (id)_preprocessEventForSimulator:(id)a3;
- (void)_handleAccessibilityNotification:(int)a3 forElement:(__AXUIElement *)a4;
- (void)_handleFocusMovedToElement:(id)a3;
- (void)_handleIOHIDEvent:(id)a3;
- (void)_registerForAXNotifications:(BOOL)a3;
- (void)_setLockScreenDimTimerEnabled:(BOOL)a3;
- (void)_startListening;
- (void)_stopListening;
- (void)_touchedElementAtPoint:(CGPoint)a3;
- (void)connectionInterrupted;
- (void)dealloc;
- (void)setSnarfingEvents:(BOOL)a3;
@end

@implementation XADEventManager

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001550;
  block[3] = &unk_100018878;
  block[4] = a1;
  if (qword_10001DD48 != -1)
  {
    dispatch_once(&qword_10001DD48, block);
  }

  v2 = qword_10001DD40;

  return v2;
}

- (XADEventManager)init
{
  v7.receiver = self;
  v7.super_class = XADEventManager;
  v2 = [(XADEventManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001638;
    block[3] = &unk_1000188A0;
    v6 = v2;
    dispatch_async(&_dispatch_main_q, block);
  }

  return v3;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->__disableIdleTimerAssertion invalidate];
  v3.receiver = self;
  v3.super_class = XADEventManager;
  [(XADEventManager *)&v3 dealloc];
}

- (void)_touchedElementAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(XADEventManager *)self delegate];
  [v6 eventManager:self eventToHighlightPoint:{x, y}];
}

- (void)_setLockScreenDimTimerEnabled:(BOOL)a3
{
  if (byte_10001DB48 != a3)
  {
    byte_10001DB48 = a3;
    if (a3)
    {
      v4 = [(XADEventManager *)self _disableIdleTimerAssertion];
      [v4 invalidate];

      [(XADEventManager *)self set_disableIdleTimerAssertion:0];
    }

    else
    {
      v8 = +[AXUserEventTimer sharedInstance];
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = [v8 acquireAssertionToDisableIdleTimerWithReason:v6];
      [(XADEventManager *)self set_disableIdleTimerAssertion:v7];
    }
  }
}

- (void)_handleIOHIDEvent:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v20 = [a3 denormalizedEventRepresentation:0 descale:1];
  if ([v20 type] == 3001)
  {
    if (-[XADEventManager stopSnarfingOnTouchUp](self, "stopSnarfingOnTouchUp") && ([v20 handInfo], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "currentFingerCount"), v6, !v7))
    {
      [(XADEventManager *)self setSnarfingEvents:0];
      v19 = [(XADEventManager *)self delegate];
      [v19 eventManager:self stoppedSnarfingEvents:1];
    }

    else
    {
      v8 = [v20 handInfo];
      v9 = [v8 eventType];

      if (v9 != 10)
      {
        v10 = [v20 handInfo];
        v11 = [v10 eventType];

        if (v11 != 11)
        {
          [v20 neuterUpdates];
          [(XADEventManager *)self _setLockScreenDimTimerEnabled:0];
          v12 = [v20 handInfo];
          v13 = [v12 paths];
          v14 = [v13 firstPath];
          [v14 pathLocation];
          v16 = v15;
          v18 = v17;

          [(XADEventManager *)self _touchedElementAtPoint:v16, v18];
        }
      }
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (id)_preprocessEventForSimulator:(id)a3
{
  v3 = [a3 denormalizedEventRepresentation:1 descale:1];
  v4 = [v3 handInfo];
  v5 = [v4 paths];
  v6 = [v5 firstPath];
  [v6 pathLocation];
  v8 = v7;
  v10 = v9;

  v11 = +[AXBackBoardServer server];
  v12 = [v11 contextIdForPosition:{v8, v10}];

  [v3 setContextId:v12];

  return v3;
}

- (BOOL)_iosEventFilter:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 type] && (objc_msgSend(v5, "type"), (AXEventTypeIsVolumeButtonPress() & 1) == 0) && objc_msgSend(v5, "senderID") != 0x8000000817319375 && objc_msgSend(v5, "type") == 3001)
  {
    v6 = [v5 handInfo];
    v7 = [v6 paths];

    if ([v7 count])
    {
      [(XADEventManager *)self performSelectorOnMainThread:"_handleIOHIDEvent:" withObject:v5 waitUntilDone:0];
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_stopListening
{
  v4 = [(XADEventManager *)self _eventProcessor];
  v3 = [(XADEventManager *)self _eventProcessor];

  if (v3)
  {
    [(XADEventManager *)self set_eventProcessor:0];
    [v4 endHandlingHIDEventsForReason:@"AccessibilityAudit"];
  }
}

- (void)connectionInterrupted
{
  [(XADEventManager *)self setSnarfingEvents:0];

  [(XADEventManager *)self _registerForNotifications:0];
}

- (void)setSnarfingEvents:(BOOL)a3
{
  self->_snarfingEvents = a3;
  if (a3)
  {
    [(XADEventManager *)self _startListening];
  }

  else
  {
    [(XADEventManager *)self _setLockScreenDimTimerEnabled:1];
    [(XADEventManager *)self _stopListening];
  }

  _AXSAXInspectorSetEnabled();
}

- (void)_startListening
{
  v3 = [(XADEventManager *)self _eventProcessor];

  if (!v3)
  {
    v4 = [[AXEventProcessor alloc] initWithHIDTapIdentifier:@"AccessibilityAudit" HIDEventTapPriority:30 systemEventTapIdentifier:0 systemEventTapPriority:30];
    [(XADEventManager *)self set_eventProcessor:v4];

    v5 = [(XADEventManager *)self _eventProcessor];
    [v5 setHIDEventFilterMask:9];

    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x3032000000;
    v10[3] = sub_100001DDC;
    v10[4] = sub_100001DEC;
    v6 = self;
    v11 = v6;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100001DF4;
    v9[3] = &unk_1000188C8;
    v9[4] = v10;
    v7 = [(XADEventManager *)v6 _eventProcessor];
    [v7 setHIDEventHandler:v9];

    v8 = [(XADEventManager *)v6 _eventProcessor];
    [v8 beginHandlingHIDEventsForReason:@"AccessibilityAudit"];

    _Block_object_dispose(v10, 8);
  }
}

- (BOOL)_initializeAXObserverIfNeeded
{
  if ([(XADEventManager *)self _axEventObserver])
  {
    goto LABEL_5;
  }

  AXUIElementRegisterSystemWideServerDeathCallback();
  pid = 0;
  AXUIElementGetPid(+[AXUIElement systemWideAXUIElement], &pid);
  if (![(XADEventManager *)self _axEventObserver])
  {
    v7 = 0;
    if (AXObserverCreate(pid, sub_100001F44, &v7))
    {
      LOBYTE(RunLoopSource) = 0;
      return RunLoopSource;
    }

    [(XADEventManager *)self set_axEventObserver:v7];
  }

  RunLoopSource = AXObserverGetRunLoopSource([(XADEventManager *)self _axEventObserver]);
  if (RunLoopSource)
  {
    v4 = RunLoopSource;
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddSource(Current, v4, kCFRunLoopDefaultMode);
LABEL_5:
    LOBYTE(RunLoopSource) = 1;
  }

  return RunLoopSource;
}

- (void)_registerForAXNotifications:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    [(XADEventManager *)self _initializeAXObserverIfNeeded];
  }

  if ([(XADEventManager *)self _axEventObserver])
  {
    v5 = +[AXUIElement systemWideAXUIElement];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = [(XADEventManager *)self _accessibilityNotificationsToObserve];
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v33 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v22;
      v11 = @"unregister";
      if (v3)
      {
        v11 = @"register";
      }

      v20 = v11;
      *&v8 = 136315906;
      v19 = v8;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = [v13 intValue];
          v15 = [(XADEventManager *)self _axEventObserver];
          if (v3)
          {
            v16 = AXObserverAddNotification(v15, v5, v14, self);
          }

          else
          {
            v16 = AXObserverRemoveNotification(v15, v5, v14);
          }

          v17 = v16;
          if (v16)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v18 = [NSNumber numberWithInt:v17];
              *buf = v19;
              v26 = "[XADEventManager _registerForAXNotifications:]";
              v27 = 2112;
              v28 = v20;
              v29 = 2112;
              v30 = v13;
              v31 = 2112;
              v32 = v18;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: could not %@ for notification:%@. Error:%@", buf, 0x2Au);
            }
          }
        }

        v9 = [v6 countByEnumeratingWithState:&v21 objects:v33 count:16];
      }

      while (v9);
    }
  }
}

- (void)_handleFocusMovedToElement:(id)a3
{
  v4 = a3;
  v5 = [(XADEventManager *)self delegate];
  [v5 eventManager:self systemFocusDidMoveToElement:v4];
}

- (__AXUIElement)_axUIElementForNativeFocusItemChangedNotification:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_8;
  }

  v5 = CFGetTypeID(v3);
  v6 = v4;
  if (v5 == AXUIElementGetTypeID())
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_8:
    v6 = 0;
    goto LABEL_11;
  }

  v7 = [(__AXUIElement *)v4 objectForKeyedSubscript:kAXElementKey];
  v8 = v7;
  if (v7)
  {
    v9 = CFGetTypeID(v7);
    if (v9 == AXUIElementGetTypeID())
    {
      v6 = v8;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_11:
  return v6;
}

- (void)_handleAccessibilityNotification:(int)a3 forElement:(__AXUIElement *)a4
{
  v15 = [(XADEventManager *)self _localizedNotificationString:?];
  v58[0] = 0;
  v58[1] = v58;
  v58[2] = 0x3032000000;
  v58[3] = sub_100001DDC;
  v58[4] = sub_100001DEC;
  v59 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = sub_100001DDC;
  v56 = sub_100001DEC;
  v57 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = sub_100001DDC;
  v50 = sub_100001DEC;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_100001DDC;
  v44 = sub_100001DEC;
  v45 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_100001DDC;
  v38 = sub_100001DEC;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_100001DDC;
  v32 = sub_100001DEC;
  v33 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = sub_100001DDC;
  v26[4] = sub_100001DEC;
  v27 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000027F0;
  block[3] = &unk_1000188F0;
  v18 = v58;
  v19 = &v52;
  v20 = &v46;
  v21 = &v40;
  v22 = &v34;
  v23 = v26;
  v24 = &v28;
  v25 = a4;
  v7 = v5;
  v17 = v7;
  dispatch_async(v6, block);

  v8 = dispatch_time(0, 3000000000);
  if (dispatch_semaphore_wait(v7, v8) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10000D4D8();
  }

  v9 = [(XADEventManager *)self delegate];
  v10 = v41[5];
  [v9 eventManager:self notificationReceived:a3 notification:v15 traits:v29[5] label:v53[5] value:v47[5] hint:v10 identifier:v35[5]];

  v11 = [(XADEventManager *)self delegateForInspectorManager];
  v12 = v41[5];
  [v11 eventManager:self notificationReceived:a3 notification:v15 traits:v29[5] label:v53[5] value:v47[5] hint:v12 identifier:v35[5]];

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v52, 8);

  _Block_object_dispose(v58, 8);
}

- (id)_localizedNotificationString:(int)a3
{
  if ((a3 - 1000) > 9)
  {
    return 0;
  }

  else
  {
    return off_100018910[a3 - 1000];
  }
}

- (XADEventManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (XADEventManagerDelegate)delegateForInspectorManager
{
  WeakRetained = objc_loadWeakRetained(&self->_delegateForInspectorManager);

  return WeakRetained;
}

@end