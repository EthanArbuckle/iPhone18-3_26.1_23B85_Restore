@interface HNDMouseKeyDevice
- (BOOL)handleHIDEvent:(id)event;
- (BOOL)keyRepeatTimerIsRunning;
- (HNDMouseKeyDevice)init;
- (double)mouseKeysMovementDelay;
- (int64_t)mouseKeysMovementMultiplier;
- (unint64_t)mouseKeyActionForKeyCode:(unsigned __int16)code;
- (void)canUseMainKeyboardKeysPreferenceDidChange;
- (void)invalidateTimers;
- (void)movePointerWithMouseKeyAction:(unint64_t)action increment:(double)increment;
- (void)reevaluateTimers;
- (void)repeatMouseKeyMovementAction:(unint64_t)action;
- (void)resetInternalState;
- (void)startMovementHoldWithMouseKeyAction:(unint64_t)action;
- (void)unload;
@end

@implementation HNDMouseKeyDevice

- (HNDMouseKeyDevice)init
{
  v15.receiver = self;
  v15.super_class = HNDMouseKeyDevice;
  v2 = [(HNDMouseDevice *)&v15 init];
  if (v2)
  {
    v3 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    initialDelayTimer = v2->_initialDelayTimer;
    v2->_initialDelayTimer = v3;

    v5 = objc_opt_new();
    activeDownMovementDirections = v2->_activeDownMovementDirections;
    v2->_activeDownMovementDirections = v5;

    objc_initWeak(&location, v2);
    v7 = +[AXSettings sharedInstance];
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_10006762C;
    v12 = &unk_1001D3460;
    objc_copyWeak(&v13, &location);
    [v7 registerUpdateBlock:&v9 forRetrieveSelector:"assistiveTouchMouseKeysUseMainKeyboardKeys" withListener:v2];

    objc_destroyWeak(&v13);
    [(HNDMouseKeyDevice *)v2 canUseMainKeyboardKeysPreferenceDidChange:v9];
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)unload
{
  [(HNDMouseKeyDevice *)self resetInternalState];
  v3.receiver = self;
  v3.super_class = HNDMouseKeyDevice;
  [(HNDDevice *)&v3 unload];
}

- (void)canUseMainKeyboardKeysPreferenceDidChange
{
  v3 = +[AXSettings sharedInstance];
  self->_canUseMainKeyboardKeys = [v3 assistiveTouchMouseKeysUseMainKeyboardKeys];

  [(HNDMouseKeyDevice *)self resetInternalState];
}

- (void)resetInternalState
{
  [(HNDMouseKeyDevice *)self invalidateTimers];
  activeDownMovementDirections = self->_activeDownMovementDirections;

  [(NSMutableArray *)activeDownMovementDirections removeAllObjects];
}

- (unint64_t)mouseKeyActionForKeyCode:(unsigned __int16)code
{
  if ((code - 88) < 0xC)
  {
    return qword_1001BD2C8[(code - 88)];
  }

  if (!self->_canUseMainKeyboardKeys)
  {
    return 0;
  }

  if (code > 36)
  {
    if (code > 78)
    {
      if (code <= 80)
      {
        if (code == 79)
        {
          return 5;
        }

        return 4;
      }

      if (code == 81)
      {
        return 7;
      }

      if (code != 82)
      {
        return 0;
      }
    }

    else
    {
      if (code > 39)
      {
        if (code != 40)
        {
          if (code == 55)
          {
            return 11;
          }

          return 0;
        }

        return 12;
      }

      if (code != 37)
      {
        if (code == 38)
        {
          return 3;
        }

        return 0;
      }
    }

    return 2;
  }

  if (code > 15)
  {
    if (code <= 23)
    {
      if (code == 16)
      {
        return 10;
      }

      if (code != 18)
      {
        return 0;
      }

      return 5;
    }

    if (code != 24)
    {
      return code == 36;
    }

    return 4;
  }

  if (code > 13)
  {
    if (code != 14)
    {
      return 8;
    }

    return 7;
  }

  if (code != 12)
  {
    if (code == 13)
    {
      return 6;
    }

    return 0;
  }

  return 9;
}

- (BOOL)handleHIDEvent:(id)event
{
  eventCopy = event;
  keyInfo = [eventCopy keyInfo];
  if (!keyInfo)
  {
    goto LABEL_13;
  }

  v6 = +[AXSettings sharedInstance];
  if (![v6 assistiveTouchMouseKeysEnabled] || !_AXSAssistiveTouchEnabled())
  {

LABEL_12:
    LOBYTE(keyInfo) = 0;
    goto LABEL_13;
  }

  IsSwitchControlRunning = UIAccessibilityIsSwitchControlRunning();

  if (IsSwitchControlRunning)
  {
    goto LABEL_12;
  }

  v8 = ASTLogMouse();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10012990C(eventCopy, v8);
  }

  keyInfo2 = [eventCopy keyInfo];
  keyCode = [keyInfo2 keyCode];

  keyInfo = [(HNDMouseKeyDevice *)self mouseKeyActionForKeyCode:keyCode];
  if ([eventCopy type] == 11)
  {
    if ([(HNDMouseKeyDevice *)self mouseKeyActionIsMovement:keyInfo])
    {
      activeDownMovementDirections = self->_activeDownMovementDirections;
      v12 = [NSNumber numberWithUnsignedInteger:keyInfo];
      [(NSMutableArray *)activeDownMovementDirections removeObject:v12];

      if (![(HNDMouseKeyDevice *)self keyRepeatTimerIsRunning])
      {
        [(HNDMouseKeyDevice *)self movePointerWithMouseKeyAction:keyInfo];
      }
    }

    else
    {
      if (keyInfo != 12)
      {
        if (keyInfo == 9)
        {
          v14 = [objc_allocWithZone(HNDEvent) init];
          [v14 setType:2];
          LOBYTE(keyInfo) = 1;
          [v14 setButtonNumber:1];
          delegate = [(HNDDevice *)self delegate];
          [delegate device:self didPostEvent:v14];
        }

        else
        {
          LOBYTE(keyInfo) = 0;
        }

        goto LABEL_27;
      }

      v18 = [objc_allocWithZone(HNDEvent) init];
      [v18 setType:2];
      [v18 setButtonNumber:2];
      [v18 setActionOverride:AXAssistiveTouchIconTypeOpenMenu];
      delegate2 = [(HNDDevice *)self delegate];
      [delegate2 device:self didPostEvent:v18];
    }

    LOBYTE(keyInfo) = 1;
LABEL_27:
    [(HNDMouseKeyDevice *)self reevaluateTimers];
    goto LABEL_13;
  }

  if ([eventCopy type] != 10)
  {
    goto LABEL_12;
  }

  if (keyInfo > 10)
  {
    if (keyInfo == 11)
    {
      keyInfo = [objc_allocWithZone(HNDEvent) init];
      [keyInfo setType:2];
      goto LABEL_34;
    }

    if (keyInfo == 12)
    {
      v16 = [objc_allocWithZone(HNDEvent) init];
      LOBYTE(keyInfo) = 1;
      [v16 setType:1];
      [v16 setButtonNumber:2];
      [v16 setActionOverride:AXAssistiveTouchIconTypeOpenMenu];
      delegate3 = [(HNDDevice *)self delegate];
      [delegate3 device:self didPostEvent:v16];

      goto LABEL_13;
    }
  }

  else if (keyInfo == 9 || keyInfo == 10)
  {
    keyInfo = [objc_allocWithZone(HNDEvent) init];
    [keyInfo setType:1];
LABEL_34:
    [keyInfo setButtonNumber:1];
    delegate4 = [(HNDDevice *)self delegate];
    [delegate4 device:self didPostEvent:keyInfo];

    LOBYTE(keyInfo) = 1;
    goto LABEL_13;
  }

  if (![(HNDMouseKeyDevice *)self mouseKeyActionIsMovement:keyInfo])
  {
    goto LABEL_12;
  }

  v20 = [NSNumber numberWithUnsignedInteger:keyInfo];
  if ([(NSMutableArray *)self->_activeDownMovementDirections containsObject:v20])
  {
    [(NSMutableArray *)self->_activeDownMovementDirections removeObject:v20];
  }

  [(NSMutableArray *)self->_activeDownMovementDirections addObject:v20];
  [(HNDMouseKeyDevice *)self startMovementHoldWithMouseKeyAction:keyInfo];

  LOBYTE(keyInfo) = 1;
LABEL_13:

  return keyInfo;
}

- (void)reevaluateTimers
{
  [(HNDMouseKeyDevice *)self invalidateTimers];
  lastObject = [(NSMutableArray *)self->_activeDownMovementDirections lastObject];
  unsignedIntegerValue = [lastObject unsignedIntegerValue];

  if ([(HNDMouseKeyDevice *)self mouseKeyActionIsMovement:unsignedIntegerValue])
  {

    [(HNDMouseKeyDevice *)self repeatMouseKeyMovementAction:unsignedIntegerValue];
  }
}

- (int64_t)mouseKeysMovementMultiplier
{
  v2 = +[AXSettings sharedInstance];
  assistiveTouchMouseKeysMaxSpeed = [v2 assistiveTouchMouseKeysMaxSpeed];

  return assistiveTouchMouseKeysMaxSpeed + 1;
}

- (double)mouseKeysMovementDelay
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchMouseKeysDelay] * -0.1 + 0.405;

  return v3;
}

- (void)movePointerWithMouseKeyAction:(unint64_t)action increment:(double)increment
{
  v6 = 0.0;
  if (action <= 4)
  {
    if (action <= 2)
    {
      if (action != 1)
      {
        if (action != 2)
        {
          return;
        }

        v7 = -1.0;
        goto LABEL_19;
      }

      v7 = -1.0;
      goto LABEL_15;
    }

    if (action != 3)
    {
      v7 = 0.0;
LABEL_15:
      v6 = -1.0 - increment;
      goto LABEL_19;
    }

    v7 = -1.0;
LABEL_18:
    v6 = increment + 1.0;
    goto LABEL_19;
  }

  v7 = 1.0;
  if (action <= 6)
  {
    if (action != 5)
    {
      goto LABEL_15;
    }

    v7 = 0.0;
    goto LABEL_18;
  }

  if (action != 7)
  {
    if (action != 8)
    {
      return;
    }

    goto LABEL_18;
  }

LABEL_19:
  v8 = v6 * [(HNDMouseKeyDevice *)self mouseKeysMovementMultiplier];
  v9 = v7 - increment;
  if (v7 > 0.0)
  {
    v9 = v7 + increment;
  }

  if (v7 == 0.0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v9;
  }

  v11 = v10 * [(HNDMouseKeyDevice *)self mouseKeysMovementMultiplier];
  v13 = [objc_allocWithZone(HNDEvent) init];
  [v13 setType:3];
  [v13 setDeltaX:v8];
  [v13 setDeltaY:v11];
  delegate = [(HNDDevice *)self delegate];
  [delegate device:self didPostEvent:v13];
}

- (void)startMovementHoldWithMouseKeyAction:(unint64_t)action
{
  [(HNDMouseKeyDevice *)self invalidateTimers];
  [(HNDMouseKeyDevice *)self movePointerWithMouseKeyAction:action];
  objc_initWeak(&location, self);
  initialDelayTimer = self->_initialDelayTimer;
  [(HNDMouseKeyDevice *)self mouseKeysMovementDelay];
  v7 = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100068098;
  v8[3] = &unk_1001D56F8;
  objc_copyWeak(v9, &location);
  v9[1] = action;
  [(AXDispatchTimer *)initialDelayTimer afterDelay:v8 processBlock:v7];
  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

- (void)repeatMouseKeyMovementAction:(unint64_t)action
{
  [(HNDMouseKeyDevice *)self invalidateTimers];
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v12[3] = 0;
  objc_initWeak(&location, self);
  [(HNDMouseKeyDevice *)self mouseKeysRepeatDelay];
  v6 = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100068238;
  v9[3] = &unk_1001D5720;
  v9[4] = v12;
  objc_copyWeak(v10, &location);
  v10[1] = action;
  v7 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:v9 block:v6];
  repeatTimer = self->_repeatTimer;
  self->_repeatTimer = v7;

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
  _Block_object_dispose(v12, 8);
}

- (BOOL)keyRepeatTimerIsRunning
{
  repeatTimer = self->_repeatTimer;
  if (repeatTimer)
  {
    LOBYTE(repeatTimer) = [(NSTimer *)repeatTimer isValid];
  }

  return repeatTimer;
}

- (void)invalidateTimers
{
  [(AXDispatchTimer *)self->_initialDelayTimer cancel];
  [(NSTimer *)self->_repeatTimer invalidate];
  repeatTimer = self->_repeatTimer;
  self->_repeatTimer = 0;
}

@end