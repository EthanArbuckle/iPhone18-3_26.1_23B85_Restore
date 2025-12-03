@interface HNDGamePadDevice
- (BOOL)_astGameControllerEnabled;
- (HNDGamePadDevice)init;
- (void)_controllerConnected:(id)connected;
- (void)_controllerDidBecomeCurrent:(id)current;
- (void)_sendEventForButtonNumber:(unint64_t)number value:(BOOL)value;
- (void)_sendEventForCurrentDisplacement:(id)displacement;
- (void)_setupCurrentController;
- (void)_toggleIgnoreInputs;
- (void)dealloc;
- (void)handleReportCallback:(int)callback report:(char *)report reportLength:(int64_t)length;
- (void)handleValueCallback:(__IOHIDValue *)callback;
- (void)setCurrentGameController:(id)controller;
- (void)setCurrentlyTappingAndHolding:(BOOL)holding;
@end

@implementation HNDGamePadDevice

- (HNDGamePadDevice)init
{
  v19.receiver = self;
  v19.super_class = HNDGamePadDevice;
  v2 = [(HNDGamePadDevice *)&v19 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v4 = qword_100218AB0;
    v28 = qword_100218AB0;
    if (!qword_100218AB0)
    {
      v20 = _NSConcreteStackBlock;
      v21 = 3221225472;
      v22 = sub_10006A3D8;
      v23 = &unk_1001D4B88;
      v24 = &v25;
      v5 = sub_10006A428();
      v6 = dlsym(v5, "GCControllerDidConnectNotification");
      *(v24[1] + 24) = v6;
      qword_100218AB0 = *(v24[1] + 24);
      v4 = v26[3];
    }

    _Block_object_dispose(&v25, 8);
    if (!v4)
    {
      sub_100129A1C();
    }

    [v3 addObserver:v2 selector:"_controllerConnected:" name:*v4 object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v8 = qword_100218AC0;
    v28 = qword_100218AC0;
    if (!qword_100218AC0)
    {
      v20 = _NSConcreteStackBlock;
      v21 = 3221225472;
      v22 = sub_10006A594;
      v23 = &unk_1001D4B88;
      v24 = &v25;
      v9 = sub_10006A428();
      v10 = dlsym(v9, "GCControllerDidBecomeCurrentNotification");
      *(v24[1] + 24) = v10;
      qword_100218AC0 = *(v24[1] + 24);
      v8 = v26[3];
    }

    _Block_object_dispose(&v25, 8);
    if (!v8)
    {
      sub_1001299A4();
    }

    [v7 addObserver:v2 selector:"_controllerDidBecomeCurrent:" name:*v8 object:0];

    current = [sub_1000692DC() current];
    currentGameController = v2->_currentGameController;
    v2->_currentGameController = current;
    v13 = current;

    [(HNDGamePadDevice *)v2 _setupCurrentController];
    v14 = [CADisplayLink displayLinkWithTarget:v2 selector:"_sendEventForCurrentDisplacement:"];
    displayLink = v2->_displayLink;
    v2->_displayLink = v14;

    v29 = CAFrameRateRangeMake(5.0, 30.0, 30.0);
    [(CADisplayLink *)v2->_displayLink setPreferredFrameRateRange:*&v29.minimum, *&v29.maximum, *&v29.preferred];
    v16 = v2->_displayLink;
    v17 = +[NSRunLoop currentRunLoop];
    [(CADisplayLink *)v16 addToRunLoop:v17 forMode:NSRunLoopCommonModes];
  }

  return v2;
}

- (void)setCurrentGameController:(id)controller
{
  objc_storeStrong(&self->_currentGameController, controller);

  [(HNDGamePadDevice *)self _setupCurrentController];
}

- (void)_sendEventForCurrentDisplacement:(id)displacement
{
  [(HNDGamePadDevice *)self currentLeftXDisplacement];
  v5 = v4;
  [(HNDGamePadDevice *)self currentLeftYDisplacement];
  v7 = v6;
  [(HNDGamePadDevice *)self currentRightXDisplacement];
  v9 = v8;
  [(HNDGamePadDevice *)self currentRightYDisplacement];
  v11 = v10;
  v12 = fmax(fabsf(v5), fabsf(v7));
  v13 = v12 > 0.1;
  if (v12 <= 0.1)
  {
    v14 = 0.8;
  }

  else
  {
    v14 = 5.0;
  }

  if (v12 <= 0.1 && fabsf(v9) <= 0.1 && fabsf(v10) <= 0.1 || [(HNDGamePadDevice *)self isIgnoringInputs])
  {
    v19 = 0.0;
    [(HNDGamePadDevice *)self setCurrentXDisplacement:0.0];
  }

  else
  {
    if (v13)
    {
      v15 = v5;
    }

    else
    {
      v15 = v9;
    }

    v16 = v14 * v15;
    *&v16 = v16;
    if (v13)
    {
      v17 = v7;
    }

    else
    {
      v17 = v11;
    }

    [(HNDGamePadDevice *)self setCurrentXDisplacement:v16];
    v18 = v14 * -v17;
    v19 = v18;
  }

  *&v18 = v19;
  [(HNDGamePadDevice *)self setCurrentYDisplacement:v18];
  [(HNDGamePadDevice *)self currentXDisplacement];
  if (v20 != 0.0 || ([(HNDGamePadDevice *)self currentYDisplacement], v21 != 0.0))
  {
    v25 = [objc_allocWithZone(HNDEvent) init];
    [v25 setType:3];
    [(HNDGamePadDevice *)self currentXDisplacement];
    [v25 setDeltaX:v22];
    [(HNDGamePadDevice *)self currentYDisplacement];
    [v25 setDeltaY:v23];
    [v25 setIsGamepadEvent:1];
    delegate = [(HNDDevice *)self delegate];
    [delegate device:self didPostEvent:v25];
  }
}

- (void)_sendEventForButtonNumber:(unint64_t)number value:(BOOL)value
{
  valueCopy = value;
  if (![(HNDGamePadDevice *)self isIgnoringInputs])
  {
    if (valueCopy)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    if (number == 4 && valueCopy)
    {
      [(HNDGamePadDevice *)self setCurrentlyTappingAndHolding:[(HNDGamePadDevice *)self isCurrentlyTappingAndHolding]^ 1];
      v11 = objc_opt_new();
      number = 1;
      if ([(HNDGamePadDevice *)self isCurrentlyTappingAndHolding])
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }

      [v11 setType:v8];
      [v11 setButtonNumber:1];
    }

    else
    {
      if (number == 4)
      {
        return;
      }

      v11 = objc_opt_new();
      [v11 setType:v7];
      [v11 setButtonNumber:number];
    }

    v9 = [(HNDDevice *)self actionOverrideForUsagePage:0 usage:number];
    [v11 setActionOverride:v9];

    [v11 setIsGamepadEvent:1];
    delegate = [(HNDDevice *)self delegate];
    [delegate device:self didPostEvent:v11];
  }
}

- (void)_setupCurrentController
{
  LOBYTE(location[0]) = 0;
  sub_1000692DC();
  currentGameController = [(HNDGamePadDevice *)self currentGameController];
  v4 = __UIAccessibilityCastAsClass();

  objc_initWeak(location, self);
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100069BC0;
  v31[3] = &unk_1001D5770;
  objc_copyWeak(&v32, location);
  extendedGamepad = [v4 extendedGamepad];
  buttonA = [extendedGamepad buttonA];
  [buttonA setValueChangedHandler:v31];

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100069C14;
  v29[3] = &unk_1001D5770;
  objc_copyWeak(&v30, location);
  extendedGamepad2 = [v4 extendedGamepad];
  buttonB = [extendedGamepad2 buttonB];
  [buttonB setValueChangedHandler:v29];

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100069C68;
  v27[3] = &unk_1001D5770;
  objc_copyWeak(&v28, location);
  extendedGamepad3 = [v4 extendedGamepad];
  buttonX = [extendedGamepad3 buttonX];
  [buttonX setValueChangedHandler:v27];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100069CBC;
  v25[3] = &unk_1001D5770;
  objc_copyWeak(&v26, location);
  extendedGamepad4 = [v4 extendedGamepad];
  buttonY = [extendedGamepad4 buttonY];
  [buttonY setValueChangedHandler:v25];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100069D10;
  v23[3] = &unk_1001D5798;
  objc_copyWeak(&v24, location);
  extendedGamepad5 = [v4 extendedGamepad];
  leftThumbstick = [extendedGamepad5 leftThumbstick];
  [leftThumbstick setValueChangedHandler:v23];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100069D88;
  v21[3] = &unk_1001D5798;
  objc_copyWeak(&v22, location);
  extendedGamepad6 = [v4 extendedGamepad];
  rightThumbstick = [extendedGamepad6 rightThumbstick];
  [rightThumbstick setValueChangedHandler:v21];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100069E00;
  v19[3] = &unk_1001D5770;
  objc_copyWeak(&v20, location);
  extendedGamepad7 = [v4 extendedGamepad];
  buttonMenu = [extendedGamepad7 buttonMenu];
  [buttonMenu setValueChangedHandler:v19];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&v32);
  objc_destroyWeak(location);
}

- (void)_controllerConnected:(id)connected
{
  connectedCopy = connected;
  sub_1000692DC();
  object = [connectedCopy object];
  v6 = __UIAccessibilityCastAsClass();

  [(HNDGamePadDevice *)self setCurrentGameController:v6];
}

- (void)_controllerDidBecomeCurrent:(id)current
{
  currentCopy = current;
  sub_1000692DC();
  object = [currentCopy object];
  v6 = __UIAccessibilityCastAsClass();

  [(HNDGamePadDevice *)self setCurrentGameController:v6];
}

- (BOOL)_astGameControllerEnabled
{
  v2 = +[AXSettings sharedInstance];
  if ([v2 assistiveTouchGameControllerEnabled] && _AXSAssistiveTouchEnabled())
  {
    v3 = !UIAccessibilityIsSwitchControlRunning();
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)handleReportCallback:(int)callback report:(char *)report reportLength:(int64_t)length
{
  v7 = *&callback;
  if (![(HNDGamePadDevice *)self _astGameControllerEnabled])
  {
    v9.receiver = self;
    v9.super_class = HNDGamePadDevice;
    [(HNDDevice *)&v9 handleReportCallback:v7 report:report reportLength:length];
  }
}

- (void)handleValueCallback:(__IOHIDValue *)callback
{
  if (![(HNDGamePadDevice *)self _astGameControllerEnabled])
  {
    v5.receiver = self;
    v5.super_class = HNDGamePadDevice;
    [(HNDDevice *)&v5 handleValueCallback:callback];
  }
}

- (void)_toggleIgnoreInputs
{
  isIgnoringInputs = [(HNDGamePadDevice *)self isIgnoringInputs];
  [(HNDGamePadDevice *)self setIgnoringInputs:isIgnoringInputs ^ 1];
  if (isIgnoringInputs)
  {
    v4 = @"GAME_MODE_DISABLED";
  }

  else
  {
    v4 = @"GAME_MODE_ENABLED";
  }

  v8 = sub_100042B24(v4);
  v5 = +[HNDHandManager sharedManager];
  currentDisplayManager = [v5 currentDisplayManager];
  rocker = [currentDisplayManager rocker];
  [rocker showBannerWithText:v8];
}

- (void)setCurrentlyTappingAndHolding:(BOOL)holding
{
  if (self->_currentlyTappingAndHolding != holding)
  {
    self->_currentlyTappingAndHolding = holding;
    if (holding)
    {
      v4 = @"TAP_AND_HOLD_ENABLED";
    }

    else
    {
      v4 = @"TAP_AND_HOLD_DISABLED";
    }

    v8 = sub_100042B24(v4);
    v5 = +[HNDHandManager sharedManager];
    currentDisplayManager = [v5 currentDisplayManager];
    rocker = [currentDisplayManager rocker];
    [rocker showBannerWithText:v8];
  }
}

- (void)dealloc
{
  [(CADisplayLink *)self->_displayLink invalidate];
  v3.receiver = self;
  v3.super_class = HNDGamePadDevice;
  [(HNDDevice *)&v3 dealloc];
}

@end