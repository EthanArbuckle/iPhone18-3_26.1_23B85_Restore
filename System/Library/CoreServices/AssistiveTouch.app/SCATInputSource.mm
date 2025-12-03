@interface SCATInputSource
- (BOOL)inputHoldEnabled;
- (BOOL)longPressEnabled;
- (SCATInputSource)init;
- (SCATInputSourceDelegate)delegate;
- (double)inputHoldDuration;
- (double)longPressDuration;
- (double)totalLongPressDuration;
- (id)_interDeviceActionForIdentifier:(id)identifier;
- (id)_switchEventWithAction:(id)action longPressAction:(id)pressAction start:(BOOL)start switchIdentifier:(id)identifier switchDisplayName:(id)name;
- (int64_t)_identifierForInterDeviceAction:(id)action;
- (void)_clearActions;
- (void)_handleAction:(id)action longPressAction:(id)pressAction start:(BOOL)start switchIdentifier:(id)identifier switchDisplayName:(id)name;
- (void)_handleInterDeviceBailOut;
- (void)beginSimulatedLongPressForInputSource:(id)source;
- (void)endSimulatedLongPressForInputSource:(id)source;
- (void)setDelegate:(id)delegate queue:(id)queue;
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
    longPressTimer = [(SCATInputSource *)v3 longPressTimer];
    [longPressTimer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];

    longPressTimer2 = [(SCATInputSource *)v3 longPressTimer];
    [longPressTimer2 setLabel:@"input long press timer"];
  }

  return v3;
}

- (void)setDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  if (queueCopy)
  {
    v7 = +[AXAccessQueue mainAccessQueue];

    if (v7 != queueCopy)
    {
      _AXAssert();
    }
  }

  [(SCATInputSource *)self setDelegate:delegateCopy];
  [(SCATInputSource *)self setQueue:queueCopy];
}

- (void)_clearActions
{
  actions = [(SCATInputSource *)self actions];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    actions2 = [(SCATInputSource *)self actions];
    [actions2 removeAllObjects];
  }

  [(SCATInputSource *)self setActions:0];
  [(SCATInputSource *)self setLongPressActionIdentifier:0];

  [(SCATInputSource *)self setFallbackActionBlock:0];
}

- (BOOL)longPressEnabled
{
  v2 = +[AXSettings sharedInstance];
  assistiveTouchLongPressEnabled = [v2 assistiveTouchLongPressEnabled];

  return assistiveTouchLongPressEnabled;
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
  assistiveTouchInputHoldEnabled = [v2 assistiveTouchInputHoldEnabled];

  return assistiveTouchInputHoldEnabled;
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

- (id)_interDeviceActionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  action = [identifierCopy action];
  v5 = 0;
  if (action <= 205)
  {
    if (action <= 106)
    {
      if (action > 102)
      {
        if (action > 104)
        {
          if (action == 105)
          {
            v6 = &AXSSSwitchActionMoveToPreviousItem;
          }

          else
          {
            v6 = &AXSSSwitchActionStop;
          }
        }

        else if (action == 103)
        {
          v6 = &AXSSSwitchActionSelect;
        }

        else
        {
          v6 = &AXSSSwitchActionMoveToNextItem;
        }
      }

      else if (action > 100)
      {
        if (action == 101)
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
        if (!action)
        {
          goto LABEL_5;
        }

        if (action != 100)
        {
          goto LABEL_67;
        }

        v6 = &AXSSSwitchActionActivate;
      }

      goto LABEL_66;
    }

    if (action > 200)
    {
      if (action <= 202)
      {
        if (action == 201)
        {
          v6 = &AXSSSwitchActionHome;
        }

        else
        {
          v6 = &AXSSSwitchActionNotificationCenter;
        }
      }

      else if (action == 203)
      {
        v6 = &AXSSSwitchActionSiri;
      }

      else if (action == 204)
      {
        v6 = &AXSSSwitchActionVolumeDown;
      }

      else
      {
        v6 = &AXSSSwitchActionVolumeUp;
      }

      goto LABEL_66;
    }

    if (action > 108)
    {
      if (action == 109)
      {
        v5 = @"selectandresumeautoscanning";
        goto LABEL_67;
      }

      if (action != 200)
      {
        goto LABEL_67;
      }

      v6 = &AXSSSwitchActionAppSwitcher;
      goto LABEL_66;
    }

    if (action != 107)
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

  if (action > 299)
  {
    if (action <= 303)
    {
      if (action > 301)
      {
        if (action == 302)
        {
          v6 = &AXSSSwitchActionATVHome;
        }

        else
        {
          v6 = &AXSSSwitchActionATVPlayPause;
        }
      }

      else if (action == 300)
      {
        v6 = &AXSSSwitchActionATVSelect;
      }

      else
      {
        v6 = &AXSSSwitchActionATVMenu;
      }

      goto LABEL_66;
    }

    if (action <= 305)
    {
      if (action == 304)
      {
        v6 = &AXSSSwitchActionATVArrowUp;
      }

      else
      {
        v6 = &AXSSSwitchActionATVArrowDown;
      }

      goto LABEL_66;
    }

    switch(action)
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

  if (action <= 208)
  {
    if (action == 206)
    {
      v6 = &AXSSSwitchActionForceTouch;
    }

    else if (action == 207)
    {
      v6 = &AXSSSwitchActionDictation;
    }

    else
    {
      v6 = &AXSSSwitchActionTripleClick;
    }

    goto LABEL_66;
  }

  if ((action - 210) < 5)
  {
LABEL_5:
    v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [identifierCopy action]);
    _AXLogWithFacility();

LABEL_32:
    v5 = 0;
    goto LABEL_67;
  }

  if (action == 209)
  {
    v6 = &AXSSSwitchActionControlCenter;
    goto LABEL_66;
  }

LABEL_67:

  return v5;
}

- (int64_t)_identifierForInterDeviceAction:(id)action
{
  actionCopy = action;
  if ([actionCopy isEqualToString:AXSSSwitchActionRun])
  {
    v4 = 102;
  }

  else if ([actionCopy isEqualToString:AXSSSwitchActionStop])
  {
    v4 = 106;
  }

  else if ([actionCopy isEqualToString:AXSSSwitchActionSelect])
  {
    v4 = 103;
  }

  else if ([actionCopy isEqualToString:@"selectandresumeautoscanning"])
  {
    v4 = 109;
  }

  else if ([actionCopy isEqualToString:AXSSSwitchActionMoveToNextItem])
  {
    v4 = 104;
  }

  else if ([actionCopy isEqualToString:AXSSSwitchActionMoveToPreviousItem])
  {
    v4 = 105;
  }

  else if ([actionCopy isEqualToString:AXSSSwitchActionActivate])
  {
    v4 = 100;
  }

  else if ([actionCopy isEqualToString:AXSSSwitchActionMenu])
  {
    v4 = 101;
  }

  else if ([actionCopy isEqualToString:AXSSSwitchActionAppSwitcher])
  {
    v4 = 200;
  }

  else if ([actionCopy isEqualToString:AXSSSwitchActionHome])
  {
    v4 = 201;
  }

  else if ([actionCopy isEqualToString:AXSSSwitchActionSiri])
  {
    v4 = 203;
  }

  else if ([actionCopy isEqualToString:AXSSSwitchActionVolumeDown])
  {
    v4 = 204;
  }

  else if ([actionCopy isEqualToString:AXSSSwitchActionVolumeUp])
  {
    v4 = 205;
  }

  else if ([actionCopy isEqualToString:AXSSSwitchActionForceTouch])
  {
    v4 = 206;
  }

  else if ([actionCopy isEqualToString:AXSSSwitchActionDictation])
  {
    v4 = 207;
  }

  else if ([actionCopy isEqualToString:AXSSSwitchActionTripleClick])
  {
    v4 = 208;
  }

  else if ([actionCopy isEqualToString:AXSSSwitchActionControlCenter])
  {
    v4 = 209;
  }

  else if ([actionCopy isEqualToString:AXSSSwitchActionNotificationCenter])
  {
    v4 = 202;
  }

  else if ([actionCopy isEqualToString:AXSSSwitchActionSiriShortcutsMenu])
  {
    v4 = 107;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_switchEventWithAction:(id)action longPressAction:(id)pressAction start:(BOOL)start switchIdentifier:(id)identifier switchDisplayName:(id)name
{
  startCopy = start;
  nameCopy = name;
  identifierCopy = identifier;
  pressActionCopy = pressAction;
  v15 = [(SCATInputSource *)self _interDeviceActionForIdentifier:action];
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
  v19 = [(SCATInputSource *)self _interDeviceActionForIdentifier:pressActionCopy];

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
  v22 = [v21 initWithSwitchIdentifier:identifierCopy switchDisplayName:nameCopy deviceIdentifier:qword_100218BC8 actions:v18 longPressActions:v20 isDown:startCopy];

  return v22;
}

- (void)_handleInterDeviceBailOut
{
  delegate = [(SCATInputSource *)self delegate];
  [delegate handleInterDeviceBailOutForInputSource:self];
}

- (void)_handleAction:(id)action longPressAction:(id)pressAction start:(BOOL)start switchIdentifier:(id)identifier switchDisplayName:(id)name
{
  startCopy = start;
  actionCopy = action;
  pressActionCopy = pressAction;
  identifierCopy = identifier;
  nameCopy = name;
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_handleInterDeviceBailOut" object:0];
  if (!+[NSThread isMainThread])
  {
    _AXAssert();
  }

  queue = [(SCATInputSource *)self queue];
  v17 = +[AXAccessQueue mainAccessQueue];

  if (queue != v17)
  {
    _AXAssert();
  }

  delegate = [(SCATInputSource *)self delegate];
  v19 = [delegate shouldForwardSwitchEventsForInputSource:self];

  if (!v19)
  {
    if (startCopy)
    {
      longPressEnabled = [(SCATInputSource *)self longPressEnabled];
      [(SCATInputSource *)self setButtonDownStartTime:CFAbsoluteTimeGetCurrent()];
      if (longPressEnabled && [pressActionCopy action])
      {
        delegate2 = [(SCATInputSource *)self delegate];
        [delegate2 didBeginLongPressForInputSource:self];

        objc_initWeak(&location, self);
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_1000C9D38;
        v43[3] = &unk_1001D3438;
        objc_copyWeak(&v45, &location);
        v44 = actionCopy;
        [(SCATInputSource *)self setFallbackActionBlock:v43];
        longPressTimer = [(SCATInputSource *)self longPressTimer];
        [(SCATInputSource *)self totalLongPressDuration];
        v26 = v25;
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_1000C9D90;
        v40[3] = &unk_1001D3438;
        objc_copyWeak(&v42, &location);
        v41 = pressActionCopy;
        [longPressTimer afterDelay:v40 processBlock:v26];

        objc_destroyWeak(&v42);
        objc_destroyWeak(&v45);
        objc_destroyWeak(&location);
        goto LABEL_24;
      }

      selfCopy2 = self;
      v38 = actionCopy;
      v39 = 1;
    }

    else
    {
      longPressTimer2 = [(SCATInputSource *)self longPressTimer];
      isPending = [longPressTimer2 isPending];

      if (isPending)
      {
        delegate3 = [(SCATInputSource *)self delegate];
        [delegate3 didEndLongPressForInputSource:self];

        longPressTimer3 = [(SCATInputSource *)self longPressTimer];
        [longPressTimer3 cancel];
      }

      Current = CFAbsoluteTimeGetCurrent();
      [(SCATInputSource *)self buttonDownStartTime];
      v33 = v32;
      fallbackActionBlock = [(SCATInputSource *)self fallbackActionBlock];

      if (fallbackActionBlock)
      {
        [(SCATInputSource *)self inputHoldDuration];
        if (Current - v33 >= v35 || ![(SCATInputSource *)self inputHoldEnabled])
        {
          fallbackActionBlock2 = [(SCATInputSource *)self fallbackActionBlock];
          fallbackActionBlock2[2]();
        }

        [(SCATInputSource *)self setFallbackActionBlock:0];
      }

      selfCopy2 = self;
      v38 = actionCopy;
      v39 = 0;
    }

    [(SCATInputSource *)selfCopy2 _didReceiveActionWithIdentifier:v38 start:v39 ignoreInputHold:0];
    goto LABEL_24;
  }

  if (startCopy)
  {
    [(SCATInputSource *)self performSelector:"_handleInterDeviceBailOut" withObject:0 afterDelay:10.0];
  }

  if ([actionCopy action])
  {
    delegate4 = [(SCATInputSource *)self delegate];
    v21 = [(SCATInputSource *)self _switchEventWithAction:actionCopy longPressAction:pressActionCopy start:startCopy switchIdentifier:identifierCopy switchDisplayName:nameCopy];
    [delegate4 inputSource:self forwardSwitchEvent:v21];
  }

LABEL_24:
}

- (void)beginSimulatedLongPressForInputSource:(id)source
{
  sourceCopy = source;
  delegate = [(SCATInputSource *)self delegate];
  [delegate didBeginLongPressForInputSource:sourceCopy];
}

- (void)endSimulatedLongPressForInputSource:(id)source
{
  sourceCopy = source;
  delegate = [(SCATInputSource *)self delegate];
  [delegate didEndLongPressForInputSource:sourceCopy];
}

- (SCATInputSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end