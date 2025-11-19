@interface GAXEventProcessor
- (BOOL)_eventLooksLikeVolumeButtonPress:(id)a3;
- (BOOL)_handleGAXActiveSystemEvent:(id)a3 gaxState:(id *)a4;
- (BOOL)_handleGAXWorkspaceSystemEvent:(id)a3 gaxState:(id *)a4;
- (BOOL)_handleSystemEvent:(id)a3;
- (BOOL)_prevalidateEvent:(id)a3;
- (BOOL)_shouldSwallowTouchEvent:(id)a3 gaxState:(id *)a4;
- (BOOL)_touchEvent:(id)a3 isForWindowWithContextID:(unsigned int)a4 gaxState:(id *)a5;
- (BOOL)_touchEventIsForAccessibilityFeatures:(id)a3 gaxState:(id *)a4;
- (BOOL)_touchEventIsForAssistiveTouch:(id)a3 gaxState:(id *)a4;
- (BOOL)_touchEventIsForTripleClickSheet:(id)a3 gaxState:(id *)a4;
- (BOOL)_touchEventIsForVoiceOverItemChooser:(id)a3 gaxState:(id *)a4;
- (GAXEventProcessor)init;
- (GAXEventProcessorDelegate)delegate;
- (void)_postLockButtonPressWithDown:(id)a3 up:(id)a4;
- (void)_updateLocalEventStateWithEvent:(id)a3;
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

- (BOOL)_handleSystemEvent:(id)a3
{
  v4 = a3;
  [(GAXEventProcessor *)self _updateLocalEventStateWithEvent:v4];
  if ([(GAXEventProcessor *)self _prevalidateEvent:v4])
  {
    memset(v11, 0, 28);
    v5 = [(GAXEventProcessor *)self delegate];
    v6 = v5;
    if (v5)
    {
      [v5 gaxStateWithGAXEventProcessor:self];
    }

    else
    {
      memset(v11, 0, 28);
    }

    if (LODWORD(v11[0]) == 2)
    {
      *v10 = v11[0];
      *&v10[12] = *(v11 + 12);
      v8 = [(GAXEventProcessor *)self _handleGAXActiveSystemEvent:v4 gaxState:v10];
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
      v8 = [(GAXEventProcessor *)self _handleGAXWorkspaceSystemEvent:v4 gaxState:v10];
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

- (BOOL)_handleGAXWorkspaceSystemEvent:(id)a3 gaxState:(id *)a4
{
  v5 = [a3 type];
  if ((AXEventTypeIsOrientationChange() & 1) == 0)
  {
    if (v5 == 1010)
    {
      return 1;
    }

    if (v5 == 1011)
    {
      v6 = [(GAXEventProcessor *)self delegate];
      [v6 eventProcessor:self transitionToMode:0];

      return 1;
    }
  }

  return 0;
}

- (BOOL)_eventLooksLikeVolumeButtonPress:(id)a3
{
  v3 = a3;
  [v3 type];
  if (AXEventTypeIsVolumeButtonPress())
  {
    v4 = 1;
  }

  else
  {
    v5 = [v3 keyInfo];
    v6 = [v5 usagePage];

    if (v6 == 7)
    {
      v7 = [v3 keyInfo];
      if ([v7 keyCode] == 68)
      {
        v4 = 1;
      }

      else
      {
        v8 = [v3 keyInfo];
        v4 = [v8 keyCode] == 69;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)_postLockButtonPressWithDown:(id)a3 up:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[AXEventTapManager sharedManager];
  [v7 sendEvent:v6 afterTap:AXEventTapIdentifierGuidedAccess useGSEvent:0 namedTaps:0 options:0];

  v8 = dispatch_time(0, 50000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10D00;
  block[3] = &unk_4C958;
  v11 = v5;
  v9 = v5;
  dispatch_after(v8, &_dispatch_main_q, block);
}

- (BOOL)_handleGAXActiveSystemEvent:(id)a3 gaxState:(id *)a4
{
  v7 = a3;
  v8 = [v7 type];
  if (AXEventTypeIsLockButtonPress())
  {
    v9 = GAXLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      var0 = a4->var0;
      v11 = (*(a4 + 6) >> 12) & 1;
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
      v13 = a4->var0;
      v14 = (*(a4 + 6) >> 12) & 1;
      *buf = 67109376;
      *&buf[4] = v13;
      *&buf[8] = 1024;
      *&buf[10] = v14;
      v12 = "Home button press. Mode: %i, allows exit: %i";
      goto LABEL_7;
    }
  }

LABEL_9:
  if (a4->var0 != 2)
  {
    goto LABEL_25;
  }

  if ((*(a4 + 24) & 8) != 0)
  {
    if (!AXEventTypeIsTouch() || (var1 = a4->var1, (AX_EventRepresentationContainsOnlyPathsForContextID() & 1) == 0) && (*buf = *&a4->var0, *&buf[12] = *&a4->var3, ![(GAXEventProcessor *)self _touchEventIsForAccessibilityFeatures:v7 gaxState:buf]))
    {
      v17 = v8 != 3200;
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (AXEventTypeIsLockButtonPress())
  {
    if (AXDeviceHasHomeButton())
    {
      if ((*(a4 + 6) & 0x800) == 0 || self->_forceDisableLockButton)
      {
        v15 = [(GAXEventProcessor *)self delegate];
        [v15 unlockDeviceWithEventProcessor:self];

        if ((*(a4 + 25) & 0x10) != 0)
        {
          v16 = [(GAXEventProcessor *)self delegate];
          v17 = 1;
          [v16 eventProcessor:self showAlertWithType:1];

          goto LABEL_26;
        }

        goto LABEL_47;
      }
    }

    else if ((*(a4 + 6) & 0x1800) != 0x800)
    {
      if (v8 != 1011)
      {
        objc_storeStrong(&self->_savedSideDown, a3);
        [(AXDispatchTimer *)self->_sideButtonActionTimer cancel];
        goto LABEL_47;
      }

      +[NSDate timeIntervalSinceReferenceDate];
      if ((*(a4 + 25) & 0x10) != 0)
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
            v26 = [(GAXEventProcessor *)self delegate];
            [v26 unlockDeviceWithEventProcessor:self];

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
        v32[0] = *&a4->var0;
        *(v32 + 12) = *&a4->var3;
        v31 = v7;
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

  if ([(GAXEventProcessor *)self _eventLooksLikeVolumeButtonPress:v7])
  {
    v19 = (*(a4 + 25) & 0x40) == 0;
  }

  else if ((AXEventTypeIsMotion() & 1) != 0 || (AXEventTypeIsShake() & 1) != 0 || AXEventTypeIsOrientationChange())
  {
    v19 = (*(a4 + 26) & 1) == 0;
  }

  else
  {
    if (!AXEventTypeIsRingerSwitchStateChange())
    {
      if (AXEventTypeIsTouch())
      {
        *buf = *&a4->var0;
        *&buf[12] = *&a4->var3;
        v17 = [(GAXEventProcessor *)self _shouldSwallowTouchEvent:v7 gaxState:buf];
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    v19 = (*(a4 + 25) & 0x80) == 0;
  }

  v17 = v19;
LABEL_26:

  return v17;
}

- (BOOL)_touchEventIsForAccessibilityFeatures:(id)a3 gaxState:(id *)a4
{
  v6 = a3;
  *v9 = *&a4->var0;
  *&v9[12] = *&a4->var3;
  if ([(GAXEventProcessor *)self _touchEventIsForAssistiveTouch:v6 gaxState:v9]|| (*v9 = *&a4->var0, *&v9[12] = *&a4->var3, [(GAXEventProcessor *)self _touchEventIsForTripleClickSheet:v6 gaxState:v9]))
  {
    v7 = 1;
  }

  else
  {
    *v9 = *&a4->var0;
    *&v9[12] = *&a4->var3;
    v7 = [(GAXEventProcessor *)self _touchEventIsForVoiceOverItemChooser:v6 gaxState:v9];
  }

  return v7;
}

- (BOOL)_touchEventIsForAssistiveTouch:(id)a3 gaxState:(id *)a4
{
  v6 = a3;
  if (_AXSAssistiveTouchEnabled())
  {
    v7 = [v6 handInfo];
    v8 = [v7 paths];
    v9 = [v8 count];

    if (v9 == &dword_0 + 1)
    {
      sp = a4->var4;
      if (!sp)
      {
        bootstrap_look_up(bootstrap_port, "com.apple.assistivetouchd", &sp);
        v10 = [(GAXEventProcessor *)self delegate];
        [v10 eventProcessor:self updateAssistiveTouchBootstrapPort:sp];
      }

      v11 = +[CAWindowServer serverIfRunning];
      v12 = [v11 displays];
      v13 = [v12 firstObject];

      v14 = [v7 paths];
      v15 = [v14 objectAtIndexedSubscript:0];

      v16 = +[CAWindowServer serverIfRunning];
      v17 = [v16 displays];
      v18 = [v17 firstObject];
      [v15 pathLocation];
      v19 = [v18 contextIdAtPosition:?];

      v20 = [v15 pathWindowContextID];
      LODWORD(v17) = sp;
      if (v17 == [v13 clientPortOfContextId:v19])
      {
        v21 = 1;
      }

      else
      {
        v22 = sp;
        v21 = v22 == [v13 clientPortOfContextId:v20];
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

- (BOOL)_touchEventIsForTripleClickSheet:(id)a3 gaxState:(id *)a4
{
  v6 = a3;
  v13 = 0;
  v7 = [(GAXEventProcessor *)self delegate];
  [v7 eventProcessor:self shouldAllowTripleClickSheet:&v13 + 1 tripleClickAlertIsVisible:&v13];

  if (HIBYTE(v13) == 1 && v13 == 1)
  {
    var3 = a4->var3;
    if (!var3)
    {
      v9 = GAXLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_2AC00(v9);
      }
    }

    *v12 = *&a4->var0;
    *&v12[12] = *&a4->var3;
    v10 = [(GAXEventProcessor *)self _touchEvent:v6 isForWindowWithContextID:var3 gaxState:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_touchEventIsForVoiceOverItemChooser:(id)a3 gaxState:(id *)a4
{
  var2 = a4->var2;
  if (!var2)
  {
    return 0;
  }

  v7[0] = *&a4->var0;
  *(v7 + 12) = *&a4->var3;
  return [(GAXEventProcessor *)self _touchEvent:a3 isForWindowWithContextID:var2 gaxState:v7];
}

- (BOOL)_touchEvent:(id)a3 isForWindowWithContextID:(unsigned int)a4 gaxState:(id *)a5
{
  if (a4)
  {
    v6 = [a3 handInfo];
    v7 = [v6 paths];
    v8 = [v7 count];

    if (v8 == &dword_0 + 1)
    {
      v9 = [v6 paths];
      v10 = [v9 objectAtIndexedSubscript:0];

      v11 = +[CAWindowServer serverIfRunning];
      v12 = [v11 displays];
      v13 = [v12 firstObject];
      [v10 pathLocation];
      v14 = [v13 contextIdAtPosition:?];

      v15 = v14 == a4;
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

- (BOOL)_shouldSwallowTouchEvent:(id)a3 gaxState:(id *)a4
{
  v6 = a3;
  *v16 = *&a4->var0;
  *&v16[12] = *&a4->var3;
  if ([(GAXEventProcessor *)self _touchEventIsForAccessibilityFeatures:v6 gaxState:v16]|| (*v16 = *&a4->var0, *&v16[12] = *&a4->var3, [(GAXEventProcessor *)self _allowingAllTouchByOverride:v16]))
  {
    v7 = 0;
  }

  else
  {
    *v16 = *&a4->var0;
    *&v16[12] = *&a4->var3;
    if ([(GAXEventProcessor *)self _ignoringAllTouchByOverride:v16])
    {
      v7 = 1;
    }

    else
    {
      v9 = [(GAXEventProcessor *)self delegate];
      v10 = [v9 ignoredTouchRegionsForEventProcessor:self];

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
        v7 = (*(a4 + 25) & 4) == 0;
      }
    }
  }

  return v7;
}

- (void)_updateLocalEventStateWithEvent:(id)a3
{
  v4 = [a3 type];
  if (v4 > 1009)
  {
    if (v4 == 1010)
    {
      v5 = 1;
    }

    else
    {
      if (v4 != 1011)
      {
        return;
      }

      v5 = 0;
    }

    v6 = &OBJC_IVAR___GAXEventProcessor__lockButtonIsDown;
  }

  else
  {
    if (v4 == 1000)
    {
      v5 = 1;
    }

    else
    {
      if (v4 != 1001)
      {
        return;
      }

      v5 = 0;
    }

    v6 = &OBJC_IVAR___GAXEventProcessor__homeButtonIsDown;
  }

  self->AXEventProcessor_opaque[*v6] = v5;
}

- (BOOL)_prevalidateEvent:(id)a3
{
  v4 = a3;
  +[NSDate timeIntervalSinceReferenceDate];
  v6 = v5;
  v7 = [v4 type];

  if (v7 == 1011)
  {
    return !self->_blockedLastLockButtonDownEvent;
  }

  if (v7 != 1010 || !AXDeviceHasHomeButton())
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