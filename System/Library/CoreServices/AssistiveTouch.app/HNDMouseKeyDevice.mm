@interface HNDMouseKeyDevice
- (BOOL)handleHIDEvent:(id)a3;
- (BOOL)keyRepeatTimerIsRunning;
- (HNDMouseKeyDevice)init;
- (double)mouseKeysMovementDelay;
- (int64_t)mouseKeysMovementMultiplier;
- (unint64_t)mouseKeyActionForKeyCode:(unsigned __int16)a3;
- (void)canUseMainKeyboardKeysPreferenceDidChange;
- (void)invalidateTimers;
- (void)movePointerWithMouseKeyAction:(unint64_t)a3 increment:(double)a4;
- (void)reevaluateTimers;
- (void)repeatMouseKeyMovementAction:(unint64_t)a3;
- (void)resetInternalState;
- (void)startMovementHoldWithMouseKeyAction:(unint64_t)a3;
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

- (unint64_t)mouseKeyActionForKeyCode:(unsigned __int16)a3
{
  if ((a3 - 88) < 0xC)
  {
    return qword_1001BD2C8[(a3 - 88)];
  }

  if (!self->_canUseMainKeyboardKeys)
  {
    return 0;
  }

  if (a3 > 36)
  {
    if (a3 > 78)
    {
      if (a3 <= 80)
      {
        if (a3 == 79)
        {
          return 5;
        }

        return 4;
      }

      if (a3 == 81)
      {
        return 7;
      }

      if (a3 != 82)
      {
        return 0;
      }
    }

    else
    {
      if (a3 > 39)
      {
        if (a3 != 40)
        {
          if (a3 == 55)
          {
            return 11;
          }

          return 0;
        }

        return 12;
      }

      if (a3 != 37)
      {
        if (a3 == 38)
        {
          return 3;
        }

        return 0;
      }
    }

    return 2;
  }

  if (a3 > 15)
  {
    if (a3 <= 23)
    {
      if (a3 == 16)
      {
        return 10;
      }

      if (a3 != 18)
      {
        return 0;
      }

      return 5;
    }

    if (a3 != 24)
    {
      return a3 == 36;
    }

    return 4;
  }

  if (a3 > 13)
  {
    if (a3 != 14)
    {
      return 8;
    }

    return 7;
  }

  if (a3 != 12)
  {
    if (a3 == 13)
    {
      return 6;
    }

    return 0;
  }

  return 9;
}

- (BOOL)handleHIDEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 keyInfo];
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = +[AXSettings sharedInstance];
  if (![v6 assistiveTouchMouseKeysEnabled] || !_AXSAssistiveTouchEnabled())
  {

LABEL_12:
    LOBYTE(v5) = 0;
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
    sub_10012990C(v4, v8);
  }

  v9 = [v4 keyInfo];
  v10 = [v9 keyCode];

  v5 = [(HNDMouseKeyDevice *)self mouseKeyActionForKeyCode:v10];
  if ([v4 type] == 11)
  {
    if ([(HNDMouseKeyDevice *)self mouseKeyActionIsMovement:v5])
    {
      activeDownMovementDirections = self->_activeDownMovementDirections;
      v12 = [NSNumber numberWithUnsignedInteger:v5];
      [(NSMutableArray *)activeDownMovementDirections removeObject:v12];

      if (![(HNDMouseKeyDevice *)self keyRepeatTimerIsRunning])
      {
        [(HNDMouseKeyDevice *)self movePointerWithMouseKeyAction:v5];
      }
    }

    else
    {
      if (v5 != 12)
      {
        if (v5 == 9)
        {
          v14 = [objc_allocWithZone(HNDEvent) init];
          [v14 setType:2];
          LOBYTE(v5) = 1;
          [v14 setButtonNumber:1];
          v15 = [(HNDDevice *)self delegate];
          [v15 device:self didPostEvent:v14];
        }

        else
        {
          LOBYTE(v5) = 0;
        }

        goto LABEL_27;
      }

      v18 = [objc_allocWithZone(HNDEvent) init];
      [v18 setType:2];
      [v18 setButtonNumber:2];
      [v18 setActionOverride:AXAssistiveTouchIconTypeOpenMenu];
      v19 = [(HNDDevice *)self delegate];
      [v19 device:self didPostEvent:v18];
    }

    LOBYTE(v5) = 1;
LABEL_27:
    [(HNDMouseKeyDevice *)self reevaluateTimers];
    goto LABEL_13;
  }

  if ([v4 type] != 10)
  {
    goto LABEL_12;
  }

  if (v5 > 10)
  {
    if (v5 == 11)
    {
      v5 = [objc_allocWithZone(HNDEvent) init];
      [v5 setType:2];
      goto LABEL_34;
    }

    if (v5 == 12)
    {
      v16 = [objc_allocWithZone(HNDEvent) init];
      LOBYTE(v5) = 1;
      [v16 setType:1];
      [v16 setButtonNumber:2];
      [v16 setActionOverride:AXAssistiveTouchIconTypeOpenMenu];
      v17 = [(HNDDevice *)self delegate];
      [v17 device:self didPostEvent:v16];

      goto LABEL_13;
    }
  }

  else if (v5 == 9 || v5 == 10)
  {
    v5 = [objc_allocWithZone(HNDEvent) init];
    [v5 setType:1];
LABEL_34:
    [v5 setButtonNumber:1];
    v21 = [(HNDDevice *)self delegate];
    [v21 device:self didPostEvent:v5];

    LOBYTE(v5) = 1;
    goto LABEL_13;
  }

  if (![(HNDMouseKeyDevice *)self mouseKeyActionIsMovement:v5])
  {
    goto LABEL_12;
  }

  v20 = [NSNumber numberWithUnsignedInteger:v5];
  if ([(NSMutableArray *)self->_activeDownMovementDirections containsObject:v20])
  {
    [(NSMutableArray *)self->_activeDownMovementDirections removeObject:v20];
  }

  [(NSMutableArray *)self->_activeDownMovementDirections addObject:v20];
  [(HNDMouseKeyDevice *)self startMovementHoldWithMouseKeyAction:v5];

  LOBYTE(v5) = 1;
LABEL_13:

  return v5;
}

- (void)reevaluateTimers
{
  [(HNDMouseKeyDevice *)self invalidateTimers];
  v3 = [(NSMutableArray *)self->_activeDownMovementDirections lastObject];
  v4 = [v3 unsignedIntegerValue];

  if ([(HNDMouseKeyDevice *)self mouseKeyActionIsMovement:v4])
  {

    [(HNDMouseKeyDevice *)self repeatMouseKeyMovementAction:v4];
  }
}

- (int64_t)mouseKeysMovementMultiplier
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchMouseKeysMaxSpeed];

  return v3 + 1;
}

- (double)mouseKeysMovementDelay
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchMouseKeysDelay] * -0.1 + 0.405;

  return v3;
}

- (void)movePointerWithMouseKeyAction:(unint64_t)a3 increment:(double)a4
{
  v6 = 0.0;
  if (a3 <= 4)
  {
    if (a3 <= 2)
    {
      if (a3 != 1)
      {
        if (a3 != 2)
        {
          return;
        }

        v7 = -1.0;
        goto LABEL_19;
      }

      v7 = -1.0;
      goto LABEL_15;
    }

    if (a3 != 3)
    {
      v7 = 0.0;
LABEL_15:
      v6 = -1.0 - a4;
      goto LABEL_19;
    }

    v7 = -1.0;
LABEL_18:
    v6 = a4 + 1.0;
    goto LABEL_19;
  }

  v7 = 1.0;
  if (a3 <= 6)
  {
    if (a3 != 5)
    {
      goto LABEL_15;
    }

    v7 = 0.0;
    goto LABEL_18;
  }

  if (a3 != 7)
  {
    if (a3 != 8)
    {
      return;
    }

    goto LABEL_18;
  }

LABEL_19:
  v8 = v6 * [(HNDMouseKeyDevice *)self mouseKeysMovementMultiplier];
  v9 = v7 - a4;
  if (v7 > 0.0)
  {
    v9 = v7 + a4;
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
  v12 = [(HNDDevice *)self delegate];
  [v12 device:self didPostEvent:v13];
}

- (void)startMovementHoldWithMouseKeyAction:(unint64_t)a3
{
  [(HNDMouseKeyDevice *)self invalidateTimers];
  [(HNDMouseKeyDevice *)self movePointerWithMouseKeyAction:a3];
  objc_initWeak(&location, self);
  initialDelayTimer = self->_initialDelayTimer;
  [(HNDMouseKeyDevice *)self mouseKeysMovementDelay];
  v7 = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100068098;
  v8[3] = &unk_1001D56F8;
  objc_copyWeak(v9, &location);
  v9[1] = a3;
  [(AXDispatchTimer *)initialDelayTimer afterDelay:v8 processBlock:v7];
  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

- (void)repeatMouseKeyMovementAction:(unint64_t)a3
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
  v10[1] = a3;
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