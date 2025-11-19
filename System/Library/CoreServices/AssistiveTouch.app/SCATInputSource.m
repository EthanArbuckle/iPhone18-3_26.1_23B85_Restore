@interface SCATInputSource
- (BOOL)inputHoldEnabled;
- (BOOL)longPressEnabled;
- (SCATInputSource)init;
- (SCATInputSourceDelegate)delegate;
- (double)inputHoldDuration;
- (double)longPressDuration;
- (double)totalLongPressDuration;
- (id)_interDeviceActionForIdentifier:(id)a3;
- (id)_switchEventWithAction:(id)a3 longPressAction:(id)a4 start:(BOOL)a5 switchIdentifier:(id)a6 switchDisplayName:(id)a7;
- (int64_t)_identifierForInterDeviceAction:(id)a3;
- (void)_clearActions;
- (void)_handleAction:(id)a3 longPressAction:(id)a4 start:(BOOL)a5 switchIdentifier:(id)a6 switchDisplayName:(id)a7;
- (void)_handleInterDeviceBailOut;
- (void)beginSimulatedLongPressForInputSource:(id)a3;
- (void)endSimulatedLongPressForInputSource:(id)a3;
- (void)setDelegate:(id)a3 queue:(id)a4;
@end

@implementation SCATInputSource

- (SCATInputSource)init
{
  v8.receiver = self;
  v8.super_class = SCATInputSource;
  v2 = [(SCATInputSource *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(SCATInputSource *)v2 setLongPressActionIdentifier:0];
    [(SCATInputSource *)v3 setButtonDownStartTime:-9.22337204e18];
    v4 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    [(SCATInputSource *)v3 setLongPressTimer:v4];
    v5 = [(SCATInputSource *)v3 longPressTimer];
    [v5 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];

    v6 = [(SCATInputSource *)v3 longPressTimer];
    [v6 setLabel:@"input long press timer"];
  }

  return v3;
}

- (void)setDelegate:(id)a3 queue:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = +[AXAccessQueue mainAccessQueue];

    if (v7 != v6)
    {
      _AXAssert();
    }
  }

  [(SCATInputSource *)self setDelegate:v8];
  [(SCATInputSource *)self setQueue:v6];
}

- (void)_clearActions
{
  v3 = [(SCATInputSource *)self actions];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(SCATInputSource *)self actions];
    [v5 removeAllObjects];
  }

  [(SCATInputSource *)self setActions:0];
  [(SCATInputSource *)self setLongPressActionIdentifier:0];

  [(SCATInputSource *)self setFallbackActionBlock:0];
}

- (BOOL)longPressEnabled
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchLongPressEnabled];

  return v3;
}

- (double)longPressDuration
{
  v2 = +[AXSettings sharedInstance];
  [v2 assistiveTouchLongPressDuration];
  v4 = v3;

  return v4;
}

- (BOOL)inputHoldEnabled
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchInputHoldEnabled];

  return v3;
}

- (double)inputHoldDuration
{
  v2 = +[AXSettings sharedInstance];
  [v2 assistiveTouchInputHoldDuration];
  v4 = v3;

  return v4;
}

- (double)totalLongPressDuration
{
  v3 = 0.0;
  if ([(SCATInputSource *)self inputHoldEnabled])
  {
    [(SCATInputSource *)self inputHoldDuration];
    v3 = v4;
  }

  [(SCATInputSource *)self longPressDuration];
  return v3 + v5;
}

- (id)_interDeviceActionForIdentifier:(id)a3
{
  v3 = a3;
  v4 = [v3 action];
  v5 = 0;
  if (v4 <= 205)
  {
    if (v4 <= 106)
    {
      if (v4 > 102)
      {
        if (v4 > 104)
        {
          if (v4 == 105)
          {
            v6 = &AXSSSwitchActionMoveToPreviousItem;
          }

          else
          {
            v6 = &AXSSSwitchActionStop;
          }
        }

        else if (v4 == 103)
        {
          v6 = &AXSSSwitchActionSelect;
        }

        else
        {
          v6 = &AXSSSwitchActionMoveToNextItem;
        }
      }

      else if (v4 > 100)
      {
        if (v4 == 101)
        {
          v6 = &AXSSSwitchActionMenu;
        }

        else
        {
          v6 = &AXSSSwitchActionRun;
        }
      }

      else
      {
        if (!v4)
        {
          goto LABEL_5;
        }

        if (v4 != 100)
        {
          goto LABEL_67;
        }

        v6 = &AXSSSwitchActionActivate;
      }

      goto LABEL_66;
    }

    if (v4 > 200)
    {
      if (v4 <= 202)
      {
        if (v4 == 201)
        {
          v6 = &AXSSSwitchActionHome;
        }

        else
        {
          v6 = &AXSSSwitchActionNotificationCenter;
        }
      }

      else if (v4 == 203)
      {
        v6 = &AXSSSwitchActionSiri;
      }

      else if (v4 == 204)
      {
        v6 = &AXSSSwitchActionVolumeDown;
      }

      else
      {
        v6 = &AXSSSwitchActionVolumeUp;
      }

      goto LABEL_66;
    }

    if (v4 > 108)
    {
      if (v4 == 109)
      {
        v5 = @"selectandresumeautoscanning";
        goto LABEL_67;
      }

      if (v4 != 200)
      {
        goto LABEL_67;
      }

      v6 = &AXSSSwitchActionAppSwitcher;
      goto LABEL_66;
    }

    if (v4 != 107)
    {
LABEL_31:
      _AXLogWithFacility();
      goto LABEL_32;
    }

    v6 = &AXSSSwitchActionSiriShortcutsMenu;
LABEL_66:
    v5 = *v6;
    goto LABEL_67;
  }

  if (v4 > 299)
  {
    if (v4 <= 303)
    {
      if (v4 > 301)
      {
        if (v4 == 302)
        {
          v6 = &AXSSSwitchActionATVHome;
        }

        else
        {
          v6 = &AXSSSwitchActionATVPlayPause;
        }
      }

      else if (v4 == 300)
      {
        v6 = &AXSSSwitchActionATVSelect;
      }

      else
      {
        v6 = &AXSSSwitchActionATVMenu;
      }

      goto LABEL_66;
    }

    if (v4 <= 305)
    {
      if (v4 == 304)
      {
        v6 = &AXSSSwitchActionATVArrowUp;
      }

      else
      {
        v6 = &AXSSSwitchActionATVArrowDown;
      }

      goto LABEL_66;
    }

    switch(v4)
    {
      case 306:
        v6 = &AXSSSwitchActionATVArrowLeft;
        break;
      case 307:
        v6 = &AXSSSwitchActionATVArrowRight;
        break;
      case 400:
        goto LABEL_31;
      default:
        goto LABEL_67;
    }

    goto LABEL_66;
  }

  if (v4 <= 208)
  {
    if (v4 == 206)
    {
      v6 = &AXSSSwitchActionForceTouch;
    }

    else if (v4 == 207)
    {
      v6 = &AXSSSwitchActionDictation;
    }

    else
    {
      v6 = &AXSSSwitchActionTripleClick;
    }

    goto LABEL_66;
  }

  if ((v4 - 210) < 5)
  {
LABEL_5:
    v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 action]);
    _AXLogWithFacility();

LABEL_32:
    v5 = 0;
    goto LABEL_67;
  }

  if (v4 == 209)
  {
    v6 = &AXSSSwitchActionControlCenter;
    goto LABEL_66;
  }

LABEL_67:

  return v5;
}

- (int64_t)_identifierForInterDeviceAction:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:AXSSSwitchActionRun])
  {
    v4 = 102;
  }

  else if ([v3 isEqualToString:AXSSSwitchActionStop])
  {
    v4 = 106;
  }

  else if ([v3 isEqualToString:AXSSSwitchActionSelect])
  {
    v4 = 103;
  }

  else if ([v3 isEqualToString:@"selectandresumeautoscanning"])
  {
    v4 = 109;
  }

  else if ([v3 isEqualToString:AXSSSwitchActionMoveToNextItem])
  {
    v4 = 104;
  }

  else if ([v3 isEqualToString:AXSSSwitchActionMoveToPreviousItem])
  {
    v4 = 105;
  }

  else if ([v3 isEqualToString:AXSSSwitchActionActivate])
  {
    v4 = 100;
  }

  else if ([v3 isEqualToString:AXSSSwitchActionMenu])
  {
    v4 = 101;
  }

  else if ([v3 isEqualToString:AXSSSwitchActionAppSwitcher])
  {
    v4 = 200;
  }

  else if ([v3 isEqualToString:AXSSSwitchActionHome])
  {
    v4 = 201;
  }

  else if ([v3 isEqualToString:AXSSSwitchActionSiri])
  {
    v4 = 203;
  }

  else if ([v3 isEqualToString:AXSSSwitchActionVolumeDown])
  {
    v4 = 204;
  }

  else if ([v3 isEqualToString:AXSSSwitchActionVolumeUp])
  {
    v4 = 205;
  }

  else if ([v3 isEqualToString:AXSSSwitchActionForceTouch])
  {
    v4 = 206;
  }

  else if ([v3 isEqualToString:AXSSSwitchActionDictation])
  {
    v4 = 207;
  }

  else if ([v3 isEqualToString:AXSSSwitchActionTripleClick])
  {
    v4 = 208;
  }

  else if ([v3 isEqualToString:AXSSSwitchActionControlCenter])
  {
    v4 = 209;
  }

  else if ([v3 isEqualToString:AXSSSwitchActionNotificationCenter])
  {
    v4 = 202;
  }

  else if ([v3 isEqualToString:AXSSSwitchActionSiriShortcutsMenu])
  {
    v4 = 107;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_switchEventWithAction:(id)a3 longPressAction:(id)a4 start:(BOOL)a5 switchIdentifier:(id)a6 switchDisplayName:(id)a7
{
  v8 = a5;
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = [(SCATInputSource *)self _interDeviceActionForIdentifier:a3];
  v16 = v15;
  if (v15)
  {
    v25 = v15;
    v17 = &v25;
  }

  else
  {
    _AXAssert();
    v26 = AXSSSwitchActionSelect;
    v17 = &v26;
  }

  v18 = [NSArray arrayWithObjects:v17 count:1];
  v19 = [(SCATInputSource *)self _interDeviceActionForIdentifier:v14];

  if (v19)
  {
    v24 = v19;
    v20 = [NSArray arrayWithObjects:&v24 count:1];
  }

  else
  {
    v20 = 0;
  }

  if (qword_100218BD0 != -1)
  {
    sub_10012AE18();
  }

  v21 = [AXSSInterDeviceSwitchEvent alloc];
  v22 = [v21 initWithSwitchIdentifier:v13 switchDisplayName:v12 deviceIdentifier:qword_100218BC8 actions:v18 longPressActions:v20 isDown:v8];

  return v22;
}

- (void)_handleInterDeviceBailOut
{
  v3 = [(SCATInputSource *)self delegate];
  [v3 handleInterDeviceBailOutForInputSource:self];
}

- (void)_handleAction:(id)a3 longPressAction:(id)a4 start:(BOOL)a5 switchIdentifier:(id)a6 switchDisplayName:(id)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_handleInterDeviceBailOut" object:0];
  if (!+[NSThread isMainThread])
  {
    _AXAssert();
  }

  v16 = [(SCATInputSource *)self queue];
  v17 = +[AXAccessQueue mainAccessQueue];

  if (v16 != v17)
  {
    _AXAssert();
  }

  v18 = [(SCATInputSource *)self delegate];
  v19 = [v18 shouldForwardSwitchEventsForInputSource:self];

  if (!v19)
  {
    if (v9)
    {
      v22 = [(SCATInputSource *)self longPressEnabled];
      [(SCATInputSource *)self setButtonDownStartTime:CFAbsoluteTimeGetCurrent()];
      if (v22 && [v13 action])
      {
        v23 = [(SCATInputSource *)self delegate];
        [v23 didBeginLongPressForInputSource:self];

        objc_initWeak(&location, self);
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_1000C9D38;
        v43[3] = &unk_1001D3438;
        objc_copyWeak(&v45, &location);
        v44 = v12;
        [(SCATInputSource *)self setFallbackActionBlock:v43];
        v24 = [(SCATInputSource *)self longPressTimer];
        [(SCATInputSource *)self totalLongPressDuration];
        v26 = v25;
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_1000C9D90;
        v40[3] = &unk_1001D3438;
        objc_copyWeak(&v42, &location);
        v41 = v13;
        [v24 afterDelay:v40 processBlock:v26];

        objc_destroyWeak(&v42);
        objc_destroyWeak(&v45);
        objc_destroyWeak(&location);
        goto LABEL_24;
      }

      v37 = self;
      v38 = v12;
      v39 = 1;
    }

    else
    {
      v27 = [(SCATInputSource *)self longPressTimer];
      v28 = [v27 isPending];

      if (v28)
      {
        v29 = [(SCATInputSource *)self delegate];
        [v29 didEndLongPressForInputSource:self];

        v30 = [(SCATInputSource *)self longPressTimer];
        [v30 cancel];
      }

      Current = CFAbsoluteTimeGetCurrent();
      [(SCATInputSource *)self buttonDownStartTime];
      v33 = v32;
      v34 = [(SCATInputSource *)self fallbackActionBlock];

      if (v34)
      {
        [(SCATInputSource *)self inputHoldDuration];
        if (Current - v33 >= v35 || ![(SCATInputSource *)self inputHoldEnabled])
        {
          v36 = [(SCATInputSource *)self fallbackActionBlock];
          v36[2]();
        }

        [(SCATInputSource *)self setFallbackActionBlock:0];
      }

      v37 = self;
      v38 = v12;
      v39 = 0;
    }

    [(SCATInputSource *)v37 _didReceiveActionWithIdentifier:v38 start:v39 ignoreInputHold:0];
    goto LABEL_24;
  }

  if (v9)
  {
    [(SCATInputSource *)self performSelector:"_handleInterDeviceBailOut" withObject:0 afterDelay:10.0];
  }

  if ([v12 action])
  {
    v20 = [(SCATInputSource *)self delegate];
    v21 = [(SCATInputSource *)self _switchEventWithAction:v12 longPressAction:v13 start:v9 switchIdentifier:v14 switchDisplayName:v15];
    [v20 inputSource:self forwardSwitchEvent:v21];
  }

LABEL_24:
}

- (void)beginSimulatedLongPressForInputSource:(id)a3
{
  v4 = a3;
  v5 = [(SCATInputSource *)self delegate];
  [v5 didBeginLongPressForInputSource:v4];
}

- (void)endSimulatedLongPressForInputSource:(id)a3
{
  v4 = a3;
  v5 = [(SCATInputSource *)self delegate];
  [v5 didEndLongPressForInputSource:v4];
}

- (SCATInputSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end