@interface GAXEventProcessor
- (BOOL)_eventLooksLikeVolumeButtonPress:(id)press;
- (BOOL)_handleGAXActiveSystemEvent:(id)event gaxState:(id *)state;
- (BOOL)_handleGAXWorkspaceSystemEvent:(id)event gaxState:(id *)state;
- (BOOL)_handleSystemEvent:(id)event;
- (BOOL)_prevalidateEvent:(id)event;
- (BOOL)_shouldSwallowTouchEvent:(id)event gaxState:(id *)state;
- (BOOL)_touchEvent:(id)event isForWindowWithContextID:(unsigned int)d gaxState:(id *)state;
- (BOOL)_touchEventIsForAccessibilityFeatures:(id)features gaxState:(id *)state;
- (BOOL)_touchEventIsForAssistiveTouch:(id)touch gaxState:(id *)state;
- (BOOL)_touchEventIsForTripleClickSheet:(id)sheet gaxState:(id *)state;
- (BOOL)_touchEventIsForVoiceOverItemChooser:(id)chooser gaxState:(id *)state;
- (GAXEventProcessor)init;
- (GAXEventProcessorDelegate)delegate;
- (void)_postLockButtonPressWithDown:(id)down up:(id)up;
- (void)_updateLocalEventStateWithEvent:(id)event;
@end

@implementation GAXEventProcessor

- (GAXEventProcessor)init
{
  v16.receiver = self;
  v16.super_class = GAXEventProcessor;
  v2 = [(GAXEventProcessor *)&v16 initWithHIDTapIdentifier:AXEventHIDTapIdentifierGuidedAccess HIDEventTapPriority:50 systemEventTapIdentifier:AXEventTapIdentifierGuidedAccess systemEventTapPriority:50];
  v3 = v2;
  if (v2)
  {
    [(GAXEventProcessor *)v2 setShouldNotifyUserEventOccurred:1];
    objc_initWeak(&location, v3);
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_10754;
    v13 = &unk_4D3C0;
    objc_copyWeak(&v14, &location);
    [(GAXEventProcessor *)v3 setSystemEventHandler:&v10];
    v4 = dispatch_queue_create("com.apple.GuidedAccess.sideButtonAction", 0);
    sideButtonActionQueue = v3->_sideButtonActionQueue;
    v3->_sideButtonActionQueue = v4;

    v6 = [AXDispatchTimer alloc];
    v7 = [v6 initWithTargetSerialQueue:{v3->_sideButtonActionQueue, v10, v11, v12, v13}];
    sideButtonActionTimer = v3->_sideButtonActionTimer;
    v3->_sideButtonActionTimer = v7;

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (BOOL)_handleSystemEvent:(id)event
{
  eventCopy = event;
  [(GAXEventProcessor *)self _updateLocalEventStateWithEvent:eventCopy];
  if ([(GAXEventProcessor *)self _prevalidateEvent:eventCopy])
  {
    memset(v11, 0, 28);
    delegate = [(GAXEventProcessor *)self delegate];
    v6 = delegate;
    if (delegate)
    {
      [delegate gaxStateWithGAXEventProcessor:self];
    }

    else
    {
      memset(v11, 0, 28);
    }

    if (LODWORD(v11[0]) == 2)
    {
      *v10 = v11[0];
      *&v10[12] = *(v11 + 12);
      v8 = [(GAXEventProcessor *)self _handleGAXActiveSystemEvent:eventCopy gaxState:v10];
    }

    else
    {
      if (LODWORD(v11[0]) != 1)
      {
        v7 = 0;
        goto LABEL_9;
      }

      *v10 = v11[0];
      *&v10[12] = *(v11 + 12);
      v8 = [(GAXEventProcessor *)self _handleGAXWorkspaceSystemEvent:eventCopy gaxState:v10];
    }

    v7 = v8;
  }

  else
  {
    v7 = 1;
  }

LABEL_9:
  [NSNumber numberWithBool:v7];

  return v7;
}

- (BOOL)_handleGAXWorkspaceSystemEvent:(id)event gaxState:(id *)state
{
  type = [event type];
  if ((AXEventTypeIsOrientationChange() & 1) == 0)
  {
    if (type == 1010)
    {
      return 1;
    }

    if (type == 1011)
    {
      delegate = [(GAXEventProcessor *)self delegate];
      [delegate eventProcessor:self transitionToMode:0];

      return 1;
    }
  }

  return 0;
}

- (BOOL)_eventLooksLikeVolumeButtonPress:(id)press
{
  pressCopy = press;
  [pressCopy type];
  if (AXEventTypeIsVolumeButtonPress())
  {
    v4 = 1;
  }

  else
  {
    keyInfo = [pressCopy keyInfo];
    usagePage = [keyInfo usagePage];

    if (usagePage == 7)
    {
      keyInfo2 = [pressCopy keyInfo];
      if ([keyInfo2 keyCode] == 68)
      {
        v4 = 1;
      }

      else
      {
        keyInfo3 = [pressCopy keyInfo];
        v4 = [keyInfo3 keyCode] == 69;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)_postLockButtonPressWithDown:(id)down up:(id)up
{
  upCopy = up;
  downCopy = down;
  v7 = +[AXEventTapManager sharedManager];
  [v7 sendEvent:downCopy afterTap:AXEventTapIdentifierGuidedAccess useGSEvent:0 namedTaps:0 options:0];

  v8 = dispatch_time(0, 50000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10D00;
  block[3] = &unk_4C958;
  v11 = upCopy;
  v9 = upCopy;
  dispatch_after(v8, &_dispatch_main_q, block);
}

- (BOOL)_handleGAXActiveSystemEvent:(id)event gaxState:(id *)state
{
  eventCopy = event;
  type = [eventCopy type];
  if (AXEventTypeIsLockButtonPress())
  {
    v9 = GAXLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      var0 = state->var0;
      v11 = (*(state + 6) >> 12) & 1;
      *buf = 67109376;
      *&buf[4] = var0;
      *&buf[8] = 1024;
      *&buf[10] = v11;
      v12 = "Lock button press. Mode: %i, allows exit: %i";
LABEL_7:
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, v12, buf, 0xEu);
    }
  }

  else
  {
    if (!AXEventTypeIsHomeButtonPress())
    {
      goto LABEL_9;
    }

    v9 = GAXLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = state->var0;
      v14 = (*(state + 6) >> 12) & 1;
      *buf = 67109376;
      *&buf[4] = v13;
      *&buf[8] = 1024;
      *&buf[10] = v14;
      v12 = "Home button press. Mode: %i, allows exit: %i";
      goto LABEL_7;
    }
  }

LABEL_9:
  if (state->var0 != 2)
  {
    goto LABEL_25;
  }

  if ((*(state + 24) & 8) != 0)
  {
    if (!AXEventTypeIsTouch() || (var1 = state->var1, (AX_EventRepresentationContainsOnlyPathsForContextID() & 1) == 0) && (*buf = *&state->var0, *&buf[12] = *&state->var3, ![(GAXEventProcessor *)self _touchEventIsForAccessibilityFeatures:eventCopy gaxState:buf]))
    {
      v17 = type != 3200;
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (AXEventTypeIsLockButtonPress())
  {
    if (AXDeviceHasHomeButton())
    {
      if ((*(state + 6) & 0x800) == 0 || self->_forceDisableLockButton)
      {
        delegate = [(GAXEventProcessor *)self delegate];
        [delegate unlockDeviceWithEventProcessor:self];

        if ((*(state + 25) & 0x10) != 0)
        {
          delegate2 = [(GAXEventProcessor *)self delegate];
          v17 = 1;
          [delegate2 eventProcessor:self showAlertWithType:1];

          goto LABEL_26;
        }

        goto LABEL_47;
      }
    }

    else if ((*(state + 6) & 0x1800) != 0x800)
    {
      if (type != 1011)
      {
        objc_storeStrong(&self->_savedSideDown, event);
        [(AXDispatchTimer *)self->_sideButtonActionTimer cancel];
        goto LABEL_47;
      }

      +[NSDate timeIntervalSinceReferenceDate];
      if ((*(state + 25) & 0x10) != 0)
      {
        v22 = v21;
        v23 = v21 - self->_lastD2XSideButtonUpTime;
        _AXSHomeClickSpeed();
        if (v23 < v24 || self->_lastD2XSideButtonUpTime == 0.0)
        {
          v25 = self->_sideButtonPresses + 1;
          self->_sideButtonPresses = v25;
          self->_lastD2XSideButtonUpTime = v22;
          if (v25 == 3)
          {
            delegate3 = [(GAXEventProcessor *)self delegate];
            [delegate3 unlockDeviceWithEventProcessor:self];

            _AXSHandleTripleClickHomeButtonPress();
            self->_sideButtonPresses = 0;
            self->_lastD2XSideButtonUpTime = 0.0;
            goto LABEL_47;
          }
        }

        else
        {
          self->_sideButtonPresses = 0;
          self->_lastD2XSideButtonUpTime = v22;
        }

        sideButtonActionTimer = self->_sideButtonActionTimer;
        _AXSHomeClickSpeed();
        v29 = v28;
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_111C4;
        v30[3] = &unk_4D428;
        v30[4] = self;
        v32[0] = *&state->var0;
        *(v32 + 12) = *&state->var3;
        v31 = eventCopy;
        [(AXDispatchTimer *)sideButtonActionTimer afterDelay:v30 processBlock:v29];
      }

LABEL_47:
      v17 = 1;
      goto LABEL_26;
    }

LABEL_25:
    v17 = 0;
    goto LABEL_26;
  }

  if (AXEventTypeIsHomeButtonPress())
  {
    goto LABEL_25;
  }

  if ([(GAXEventProcessor *)self _eventLooksLikeVolumeButtonPress:eventCopy])
  {
    v19 = (*(state + 25) & 0x40) == 0;
  }

  else if ((AXEventTypeIsMotion() & 1) != 0 || (AXEventTypeIsShake() & 1) != 0 || AXEventTypeIsOrientationChange())
  {
    v19 = (*(state + 26) & 1) == 0;
  }

  else
  {
    if (!AXEventTypeIsRingerSwitchStateChange())
    {
      if (AXEventTypeIsTouch())
      {
        *buf = *&state->var0;
        *&buf[12] = *&state->var3;
        v17 = [(GAXEventProcessor *)self _shouldSwallowTouchEvent:eventCopy gaxState:buf];
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    v19 = (*(state + 25) & 0x80) == 0;
  }

  v17 = v19;
LABEL_26:

  return v17;
}

- (BOOL)_touchEventIsForAccessibilityFeatures:(id)features gaxState:(id *)state
{
  featuresCopy = features;
  *v9 = *&state->var0;
  *&v9[12] = *&state->var3;
  if ([(GAXEventProcessor *)self _touchEventIsForAssistiveTouch:featuresCopy gaxState:v9]|| (*v9 = *&state->var0, *&v9[12] = *&state->var3, [(GAXEventProcessor *)self _touchEventIsForTripleClickSheet:featuresCopy gaxState:v9]))
  {
    v7 = 1;
  }

  else
  {
    *v9 = *&state->var0;
    *&v9[12] = *&state->var3;
    v7 = [(GAXEventProcessor *)self _touchEventIsForVoiceOverItemChooser:featuresCopy gaxState:v9];
  }

  return v7;
}

- (BOOL)_touchEventIsForAssistiveTouch:(id)touch gaxState:(id *)state
{
  touchCopy = touch;
  if (_AXSAssistiveTouchEnabled())
  {
    handInfo = [touchCopy handInfo];
    paths = [handInfo paths];
    v9 = [paths count];

    if (v9 == &dword_0 + 1)
    {
      sp = state->var4;
      if (!sp)
      {
        bootstrap_look_up(bootstrap_port, "com.apple.assistivetouchd", &sp);
        delegate = [(GAXEventProcessor *)self delegate];
        [delegate eventProcessor:self updateAssistiveTouchBootstrapPort:sp];
      }

      v11 = +[CAWindowServer serverIfRunning];
      displays = [v11 displays];
      firstObject = [displays firstObject];

      paths2 = [handInfo paths];
      v15 = [paths2 objectAtIndexedSubscript:0];

      v16 = +[CAWindowServer serverIfRunning];
      displays2 = [v16 displays];
      firstObject2 = [displays2 firstObject];
      [v15 pathLocation];
      v19 = [firstObject2 contextIdAtPosition:?];

      pathWindowContextID = [v15 pathWindowContextID];
      LODWORD(displays2) = sp;
      if (displays2 == [firstObject clientPortOfContextId:v19])
      {
        v21 = 1;
      }

      else
      {
        v22 = sp;
        v21 = v22 == [firstObject clientPortOfContextId:pathWindowContextID];
      }
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)_touchEventIsForTripleClickSheet:(id)sheet gaxState:(id *)state
{
  sheetCopy = sheet;
  v13 = 0;
  delegate = [(GAXEventProcessor *)self delegate];
  [delegate eventProcessor:self shouldAllowTripleClickSheet:&v13 + 1 tripleClickAlertIsVisible:&v13];

  if (HIBYTE(v13) == 1 && v13 == 1)
  {
    var3 = state->var3;
    if (!var3)
    {
      v9 = GAXLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_2AC00(v9);
      }
    }

    *v12 = *&state->var0;
    *&v12[12] = *&state->var3;
    v10 = [(GAXEventProcessor *)self _touchEvent:sheetCopy isForWindowWithContextID:var3 gaxState:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_touchEventIsForVoiceOverItemChooser:(id)chooser gaxState:(id *)state
{
  var2 = state->var2;
  if (!var2)
  {
    return 0;
  }

  v7[0] = *&state->var0;
  *(v7 + 12) = *&state->var3;
  return [(GAXEventProcessor *)self _touchEvent:chooser isForWindowWithContextID:var2 gaxState:v7];
}

- (BOOL)_touchEvent:(id)event isForWindowWithContextID:(unsigned int)d gaxState:(id *)state
{
  if (d)
  {
    handInfo = [event handInfo];
    paths = [handInfo paths];
    v8 = [paths count];

    if (v8 == &dword_0 + 1)
    {
      paths2 = [handInfo paths];
      v10 = [paths2 objectAtIndexedSubscript:0];

      v11 = +[CAWindowServer serverIfRunning];
      displays = [v11 displays];
      firstObject = [displays firstObject];
      [v10 pathLocation];
      v14 = [firstObject contextIdAtPosition:?];

      v15 = v14 == d;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v16 = GAXLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_2AC44(v16);
    }

    return 0;
  }

  return v15;
}

- (BOOL)_shouldSwallowTouchEvent:(id)event gaxState:(id *)state
{
  eventCopy = event;
  *v16 = *&state->var0;
  *&v16[12] = *&state->var3;
  if ([(GAXEventProcessor *)self _touchEventIsForAccessibilityFeatures:eventCopy gaxState:v16]|| (*v16 = *&state->var0, *&v16[12] = *&state->var3, [(GAXEventProcessor *)self _allowingAllTouchByOverride:v16]))
  {
    v7 = 0;
  }

  else
  {
    *v16 = *&state->var0;
    *&v16[12] = *&state->var3;
    if ([(GAXEventProcessor *)self _ignoringAllTouchByOverride:v16])
    {
      v7 = 1;
    }

    else
    {
      delegate = [(GAXEventProcessor *)self delegate];
      v10 = [delegate ignoredTouchRegionsForEventProcessor:self];

      if (v10 && (Count = CFArrayGetCount(v10)) != 0)
      {
        v12 = Count;
        if (Count < 1)
        {
LABEL_16:
          v7 = 0;
        }

        else
        {
          v13 = 1;
          while (1)
          {
            CFArrayGetValueAtIndex(v10, v13 - 1);
            if (AX_EventRepresentationContainsAnyTouchesInPath())
            {
              break;
            }

            self->_sentCancelEventForSnarfedTouch = 0;
            if (v13++ >= v12)
            {
              goto LABEL_16;
            }
          }

          v7 = 1;
          if (!self->_sentCancelEventForSnarfedTouch)
          {
            BKSHIDServicesCancelTouchesOnMainDisplay();
            self->_sentCancelEventForSnarfedTouch = 1;
          }
        }
      }

      else
      {
        v7 = (*(state + 25) & 4) == 0;
      }
    }
  }

  return v7;
}

- (void)_updateLocalEventStateWithEvent:(id)event
{
  type = [event type];
  if (type > 1009)
  {
    if (type == 1010)
    {
      v5 = 1;
    }

    else
    {
      if (type != 1011)
      {
        return;
      }

      v5 = 0;
    }

    v6 = &OBJC_IVAR___GAXEventProcessor__lockButtonIsDown;
  }

  else
  {
    if (type == 1000)
    {
      v5 = 1;
    }

    else
    {
      if (type != 1001)
      {
        return;
      }

      v5 = 0;
    }

    v6 = &OBJC_IVAR___GAXEventProcessor__homeButtonIsDown;
  }

  self->AXEventProcessor_opaque[*v6] = v5;
}

- (BOOL)_prevalidateEvent:(id)event
{
  eventCopy = event;
  +[NSDate timeIntervalSinceReferenceDate];
  v6 = v5;
  type = [eventCopy type];

  if (type == 1011)
  {
    return !self->_blockedLastLockButtonDownEvent;
  }

  if (type != 1010 || !AXDeviceHasHomeButton())
  {
    return 1;
  }

  if (!self->_homeButtonIsDown && vabdd_f64(v6, self->_lastPrevalidatedLockButtonUpTime) >= 1.0)
  {
    self->_blockedLastLockButtonDownEvent = 0;
    +[NSDate timeIntervalSinceReferenceDate];
    self->_lastPrevalidatedLockButtonUpTime = v9;
    return 1;
  }

  v8 = 0;
  self->_blockedLastLockButtonDownEvent = 1;
  return v8;
}

- (GAXEventProcessorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end