@interface CBApplication
+ (id)_newApplicationInitializationContext;
+ (void)initializeAppSupportService;
- (BOOL)__handleHIDEvent:(__IOHIDEvent *)a3;
- (BOOL)_hasHomeButton;
- (BOOL)_isLockButtonTimerValid;
- (CBApplication)init;
- (void)_cancelLockButtonTimer;
- (void)_createInitialAppScene;
- (void)_diagsLaunchedAction;
- (void)_disableUSBRestrictedMode;
- (void)_handleHIDEvent:(__IOHIDEvent *)a3;
- (void)_handleThermalWarningScreenPresentation;
- (void)_hideWiFiSettingsAction;
- (void)_homeButtonDown;
- (void)_homeButtonUp;
- (void)_initRoutingRules;
- (void)_lockButtonDown;
- (void)_lockButtonLongPress;
- (void)_lockButtonUp;
- (void)_registerForNotifications;
- (void)_ringerSwitchDown;
- (void)_ringerSwitchUp;
- (void)_showPowerDownView;
- (void)_showWiFiSettingsAction;
- (void)_startLockButtonTimer;
- (void)batteryStatusDidChange:(id)a3;
- (void)handlePressEvent:(id)a3;
- (void)setLockButtonTimer:(id)a3;
@end

@implementation CBApplication

- (CBApplication)init
{
  v13.receiver = self;
  v13.super_class = CBApplication;
  v2 = [(CBApplication *)&v13 init];
  if (v2)
  {
    v3 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Principal class created", v12, 2u);
    }

    v2->_allowWiFiSettingsAction = 0;
    v4 = [UINotificationFeedbackGenerator alloc];
    v5 = +[_UINotificationFeedbackGeneratorConfiguration privateConfiguration];
    v6 = [v4 initWithConfiguration:v5];
    notificationFeedbackGenerator = v2->_notificationFeedbackGenerator;
    v2->_notificationFeedbackGenerator = v6;

    [(CBApplication *)v2 _initRoutingRules];
    [(CBApplication *)v2 _registerForNotifications];
    v8 = +[CBLocationController sharedLocationController];
    v9 = +[CBUserSettings sharedInstance];
    [v9 applyPreUISettingsFromNvram];

    [(CBApplication *)v2 _disableUSBRestrictedMode];
    v10 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "CheckerBoard init complete", v12, 2u);
    }
  }

  return v2;
}

- (void)_initRoutingRules
{
  v2 = +[BKSHIDEventDisplay builtinDisplay];
  v3 = +[BKSHIDEventDisplay nullDisplay];
  v4 = [NSSet setWithObjects:v2, v3, 0];

  v23 = +[BKSMutableHIDEventDiscreteDispatchingPredicate defaultSystemPredicate];
  [v23 setDisplays:v4];
  v5 = +[BKSHIDEventDispatchingTarget systemTarget];
  v6 = [BKSHIDEventDiscreteDispatchingRule ruleForDispatchingDiscreteEventsMatchingPredicate:v23 toTarget:v5];

  v7 = +[BKSMutableHIDEventDiscreteDispatchingPredicate defaultFocusPredicate];
  [v7 setDisplays:v4];
  v8 = +[BKSHIDEventDispatchingTarget keyboardFocusTarget];
  v22 = [BKSHIDEventDiscreteDispatchingRule ruleForDispatchingDiscreteEventsMatchingPredicate:v7 toTarget:v8];

  v9 = [BKSHIDEventDescriptor descriptorWithEventType:42];
  v10 = [BKSHIDEventVendorDefinedDescriptor descriptorWithPage:65280 usage:102];
  v11 = [NSSet setWithObjects:v9, v10, 0];

  v12 = objc_alloc_init(BKSMutableHIDEventDiscreteDispatchingPredicate);
  [v12 setSenderDescriptors:0];
  [v12 setDescriptors:v11];
  v13 = +[BKSHIDEventDispatchingTarget systemTarget];
  v14 = [BKSHIDEventDiscreteDispatchingRule ruleForDispatchingDiscreteEventsMatchingPredicate:v12 toTarget:v13];

  v15 = +[BKSHIDEventDeferringEnvironment ui_cameraCaptureButtonEnvironment];
  v16 = [BKSHIDEventDispatchingTarget targetForDeferringEnvironment:v15];

  v17 = [BKSHIDEventDiscreteDispatchingRule ruleForDispatchingDiscreteEventsMatchingPredicate:v12 toTarget:v16];
  v18 = +[BKSHIDEventDeliveryManager sharedInstance];
  v25[0] = v6;
  v25[1] = v22;
  v25[2] = v14;
  v25[3] = v17;
  v19 = [NSArray arrayWithObjects:v25 count:4];
  v20 = [v18 dispatchDiscreteEventsForReason:@"SB-Default" withRules:v19];
  dispatchingAssertion = self->_dispatchingAssertion;
  self->_dispatchingAssertion = v20;
}

- (void)_disableUSBRestrictedMode
{
  v2 = +[CBEnvironmentManager sharedInstance];
  v3 = [v2 currentEnvironment];

  if (v3 == 1)
  {
    v9 = 3;
    v10 = 0;
    if (ACMKernelControl())
    {
      return;
    }

    v4 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 0;
      v5 = "Disable USB restricted mode.";
      v6 = &v7;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
    }
  }

  else
  {
    v4 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "Environment does not support disabling USB restricted mode.";
      v6 = buf;
      goto LABEL_7;
    }
  }
}

+ (void)initializeAppSupportService
{
  if (qword_100092450 != -1)
  {
    sub_1000479CC();
  }
}

- (void)_registerForNotifications
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Registering for thermal notifications…", v8, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_handleThermalWarningScreenPresentation" name:@"CBThermalBlockedDidChangeNotification" object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_showWiFiSettingsAction" name:@"CBNetworkViewControllerDidAdvanceToNextSceneNotification" object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"_diagsLaunchedAction" name:@"CBEndGameViewControllerLaunchingPrimaryAppNotification" object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"_hideWiFiSettingsAction" name:@"AppManagerPrimaryAppDidExit" object:0];
}

- (void)_showWiFiSettingsAction
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Allowing [Wi-Fi Settings] action…", v4, 2u);
  }

  [(CBApplication *)self setAllowWiFiSettingsAction:1];
}

- (void)_hideWiFiSettingsAction
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Forbidding [Wi-Fi Settings] action…", v4, 2u);
  }

  [(CBApplication *)self setAllowWiFiSettingsAction:0];
}

- (void)_diagsLaunchedAction
{
  [(CBApplication *)self _showWiFiSettingsAction];
  v2 = +[CBBootIntentManager sharedInstance];
  [v2 deleteBootIntentSourceData];
}

- (void)_handleHIDEvent:(__IOHIDEvent *)a3
{
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handle HID Event: %@", buf, 0xCu);
  }

  if (![(CBApplication *)self __handleHIDEvent:a3])
  {
    v6 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Letting UIKit handle the HID event", buf, 2u);
    }

    v7.receiver = self;
    v7.super_class = CBApplication;
    [(CBApplication *)&v7 _handleHIDEvent:a3];
  }
}

- (void)handlePressEvent:(id)a3
{
  v4 = a3;
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handle Physical Button Event: %@", &v10, 0xCu);
  }

  v6 = [v4 _hidEvent];
  v7 = CheckerBoardLogHandleForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v6)
  {
    if (v8)
    {
      LOWORD(v10) = 0;
      v9 = "Physical HID button event does not exist";
      goto LABEL_11;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (v8)
  {
    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Physical HID button event exists", &v10, 2u);
  }

  if (![(CBApplication *)self __handleHIDEvent:v6])
  {
    v7 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      v9 = "Physical HID button was not handled";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v9, &v10, 2u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

LABEL_13:
}

- (BOOL)__handleHIDEvent:(__IOHIDEvent *)a3
{
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    *v18 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling HID Event: %@", &v17, 0xCu);
  }

  if (!a3)
  {
    v13 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "HID Event does not exist", &v17, 2u);
    }

    goto LABEL_15;
  }

  if (IOHIDEventGetType() != 3)
  {
LABEL_15:
    v14 = CheckerBoardLogHandleForCategory();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
LABEL_18:

      return 0;
    }

    LOWORD(v17) = 0;
    v15 = "HID Event is not of type Keyboard";
LABEL_17:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, &v17, 2u);
    goto LABEL_18;
  }

  IntegerValue = IOHIDEventGetIntegerValue();
  v7 = IOHIDEventGetIntegerValue();
  v8 = IOHIDEventGetIntegerValue();
  v9 = IOHIDEventGetIntegerValue();
  Phase = IOHIDEventGetPhase();
  v11 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 67110144;
    *v18 = IntegerValue;
    *&v18[4] = 1024;
    *&v18[6] = v7;
    v19 = 1024;
    v20 = v8 != 0;
    v21 = 1024;
    v22 = v9 != 0;
    v23 = 1024;
    v24 = (Phase >> 2) & 1;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[Keyboard HID Event Info] usagePage: 0x%x, usage: 0x%x, downEvent: %d, longPress: %d, terminalEvent: %d", &v17, 0x20u);
  }

  v12 = v7 | (IntegerValue << 16);
  if (v12 == 720942)
  {
    if (v8)
    {
      [(CBApplication *)self _ringerSwitchDown];
    }

    else
    {
      [(CBApplication *)self _ringerSwitchUp];
    }

    return 1;
  }

  if (v12 == 786480)
  {
    if (v8)
    {
      [(CBApplication *)self _lockButtonDown];
    }

    else
    {
      [(CBApplication *)self _lockButtonUp];
    }

    return 1;
  }

  if (v12 != 786496)
  {
    v14 = CheckerBoardLogHandleForCategory();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    LOWORD(v17) = 0;
    v15 = "HID Event was not handle by us";
    goto LABEL_17;
  }

  if (v8)
  {
    [(CBApplication *)self _homeButtonDown];
  }

  else
  {
    [(CBApplication *)self _homeButtonUp];
  }

  return 1;
}

- (void)_homeButtonDown
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Home button down", buf, 2u);
  }

  v4 = +[CBIdleSleepManager sharedInstance];
  if ([v4 isDisplayDim])
  {
    v5 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Display is off. Turning display on and resetting idle timer…", v6, 2u);
    }

    [(CBApplication *)self setHomeButtonPressedWithDisplayDim:1];
    [v4 resetIdleTimerAndUndim:1];
  }

  else
  {
    [(CBApplication *)self setHomeButtonPressedWithDisplayDim:0];
  }
}

- (void)_homeButtonUp
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Home button up", buf, 2u);
  }

  v4 = +[CBEnvironmentManager sharedInstance];
  [v4 currentEnvironment];

  if ([(CBApplication *)self homeButtonPressedWithDisplayDim])
  {
    v5 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(CBApplication *)self homeButtonPressedWithDisplayDim];
      *buf = 67109120;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Preventing Home button action sheet from being presented since the screen is on (%d)", buf, 8u);
    }
  }

  else
  {
    v7 = [(CBApplication *)self allowWiFiSettingsAction];
    if ([(CBApplication *)self _hasHomeButton])
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 | 2;
    }

    v9 = +[CBUserSettings sharedInstance];
    v10 = [v9 shouldShowInfoPane];

    if (v10)
    {
      v11 = v8 | 4;
    }

    else
    {
      v11 = v8;
    }

    v12 = +[CBAlertManager sharedInstance];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10002DBD0;
    v13[3] = &unk_10007E440;
    v13[4] = self;
    [v12 showMenuSheetWithOptions:v11 completion:0 response:v13];
  }
}

- (void)_ringerSwitchDown
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Ringer Switch toggled Tone", v3, 2u);
  }
}

- (void)_ringerSwitchUp
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Ringer Switch toggled Silent", buf, 2u);
  }

  v4 = +[UIDevice currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if ((v5 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v6 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "🎉 Let there be vibration! 🎉", v8, 2u);
    }

    v7 = [(CBApplication *)self notificationFeedbackGenerator];
    [v7 _privateNotificationOccurred:1004];
  }
}

- (void)_lockButtonDown
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Sleep/Wake Button down", buf, 2u);
  }

  v4 = +[CBIdleSleepManager sharedInstance];
  if ([v4 isDisplayDim])
  {
    [(CBApplication *)self setLockButtonPressedWithDisplayDim:1];
    v5 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Display is off. Turning display on and resetting idle timer…", v12, 2u);
    }

    [v4 resetIdleTimerAndUndim:1];
  }

  else
  {
    [(CBApplication *)self setLockButtonPressedWithDisplayDim:0];
  }

  v6 = +[CBAlertManager sharedInstance];
  v7 = [v6 powerDownVisible];

  v8 = CheckerBoardLogHandleForCategory();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not starting a timer since Power Down UI is visible", v10, 2u);
    }
  }

  else
  {
    if (v9)
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Display should be on now with no visible Power Down UI. Starting lock button long press timer…", v11, 2u);
    }

    [(CBApplication *)self _startLockButtonTimer];
  }
}

- (void)_startLockButtonTimer
{
  [(CBApplication *)self setLockButtonLongPressed:0];
  v3 = [(CBApplication *)self _hasHomeButton];
  v4 = 0.4;
  if (v3)
  {
    v4 = 3.0;
  }

  v5 = [NSTimer scheduledTimerWithTimeInterval:self target:"_lockButtonLongPress" selector:0 userInfo:0 repeats:v4];
  [(CBApplication *)self setLockButtonTimer:v5];
}

- (void)_lockButtonLongPress
{
  [(CBApplication *)self setLockButtonLongPressed:1];
  if ([(CBApplication *)self _hasHomeButton])
  {
    v3 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Sleep/Wake Button long press - Presenting Power Down UI…", v4, 2u);
    }

    [(CBApplication *)self _showPowerDownView];
  }

  else
  {

    [(CBApplication *)self _homeButtonUp];
  }
}

- (void)_showPowerDownView
{
  v2 = +[CBAlertManager sharedInstance];
  [v2 showPowerDownWithCompletion:0 response:&stru_10007E460];
}

- (BOOL)_isLockButtonTimerValid
{
  v2 = [(CBApplication *)self lockButtonTimer];
  v3 = v2 != 0;

  return v3;
}

- (void)_cancelLockButtonTimer
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Canceling lock button timer…", v4, 2u);
  }

  [(CBApplication *)self setLockButtonTimer:0];
}

- (void)setLockButtonTimer:(id)a3
{
  v5 = a3;
  if (self->_lockButtonTimer != v5)
  {
    v6 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting lock button timer…", v7, 2u);
    }

    [(NSTimer *)self->_lockButtonTimer invalidate];
    objc_storeStrong(&self->_lockButtonTimer, a3);
  }
}

- (void)_lockButtonUp
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Sleep/Wake Button up", v13, 2u);
  }

  v4 = [(CBApplication *)self _isLockButtonTimerValid];
  [(CBApplication *)self _cancelLockButtonTimer];
  if (!v4 || [(CBApplication *)self lockButtonPressedWithDisplayDim])
  {
    goto LABEL_8;
  }

  v5 = +[CBAlertManager sharedInstance];
  if ([v5 powerDownVisible])
  {

    goto LABEL_8;
  }

  v6 = [(CBApplication *)self lockButtonLongPressed];

  if (v6)
  {
LABEL_8:
    v7 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(CBApplication *)self lockButtonPressedWithDisplayDim];
      v9 = +[CBAlertManager sharedInstance];
      v10 = [v9 powerDownVisible];
      v11 = [(CBApplication *)self lockButtonLongPressed];
      v13[0] = 67109632;
      v13[1] = v8;
      v14 = 1024;
      v15 = v10;
      v16 = 1024;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Not turning the display off since the screen is on (%d), Power Down UI is visible (%d), and lock button was long pressed (%d)", v13, 0x14u);
    }

    goto LABEL_10;
  }

  v12 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13[0]) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Display is on. Turning display off…", v13, 2u);
  }

  v7 = +[CBIdleSleepManager sharedInstance];
  [v7 dimDisplay];
LABEL_10:
}

- (void)_handleThermalWarningScreenPresentation
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Handling thermal warning screen…", v5, 2u);
  }

  v3 = +[CBThermalManager sharedInstance];
  if ([v3 isThermalBlocked])
  {
    v4 = +[CBAlertManager sharedInstance];
    [v4 showThermalWarningWithCompletion:0];
LABEL_7:

    goto LABEL_8;
  }

  if (([v3 isThermalBlocked] & 1) == 0)
  {
    v4 = +[CBAlertManager sharedInstance];
    [v4 dismissThermalWarningWithCompletion:0];
    goto LABEL_7;
  }

LABEL_8:
}

- (BOOL)_hasHomeButton
{
  v2 = +[BSPlatform sharedInstance];
  v3 = [v2 homeButtonType] != 2;

  return v3;
}

+ (id)_newApplicationInitializationContext
{
  v2 = [[UISMutableDeviceContext alloc] initWithDeviceInfoValues:&__NSDictionary0__struct];
  v3 = +[BSPlatform sharedInstance];
  v4 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 deviceClass]);
  [v2 setDeviceInfoValue:v4 forKey:UISDeviceContextDeviceClassKey];

  v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 homeButtonType]);
  [v2 setDeviceInfoValue:v5 forKey:UISDeviceContextHomeButtonTypeKey];

  MGGetFloat32Answer();
  v6 = [NSNumber numberWithFloat:?];
  [v2 setDeviceInfoValue:v6 forKey:UISDeviceContextDeviceCornerRadiusKey];

  v7 = [UISMutableDisplayContext alloc];
  v8 = +[FBDisplayManager sharedInstance];
  v9 = [v8 mainConfiguration];
  v10 = [v7 initWithDisplayConfiguration:v9];

  v11 = sub_1000352D8();
  v12 = +[FBDisplayManager sharedInstance];
  v13 = [v12 mainConfiguration];
  [v10 setDisplayConfiguration:v13];

  v14 = sub_1000364DC(v11);
  [v10 setDisplayEdgeInfo:v14];

  v15 = sub_1000368D4(v11);
  [v10 setExclusionArea:v15];

  [v10 setArtworkSubtype:sub_1000353D0()];
  v16 = +[UIUserInterfaceStyleArbiter sharedInstance];
  v17 = v16;
  if (v16)
  {
    [v10 setUserInterfaceStyle:{objc_msgSend(v16, "currentStyle")}];
  }

  v18 = [[UISMutableApplicationInitializationContext alloc] initWithDisplayContext:v10 deviceContext:v2 persistedSceneIdentifiers:0 supportAppSceneRequests:1];
  v19 = +[NSBundle mainBundle];
  v20 = [v19 bundleIdentifier];
  v21 = [FBSSceneIdentity identityForIdentifier:v20];

  v22 = +[FBSceneManager sharedInstance];
  v23 = [v22 newSceneIdentityTokenForIdentity:v21];

  [v18 setDefaultSceneToken:v23];
  return v18;
}

- (void)_createInitialAppScene
{
  v2 = +[FBSMutableSceneDefinition definition];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 bundleIdentifier];
  v5 = [FBSSceneIdentity identityForIdentifier:v4];
  [v2 setIdentity:v5];

  v6 = +[FBSSceneClientIdentity localIdentity];
  [v2 setClientIdentity:v6];

  v7 = +[UIApplicationSceneSpecification specification];
  [v2 setSpecification:v7];

  v8 = [v2 specification];
  v9 = [FBSMutableSceneParameters parametersForSpecification:v8];

  [v9 updateSettingsWithBlock:&stru_10007E4A0];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002EC04;
  v13[3] = &unk_10007E358;
  v14 = v9;
  v10 = v9;
  [v10 updateClientSettingsWithBlock:v13];
  v11 = +[FBSceneManager sharedInstance];
  v12 = [v11 createSceneWithDefinition:v2 initialParameters:v10];
}

- (void)batteryStatusDidChange:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"AtCriticalLevel"];
  v5 = [v4 BOOLValue];

  v6 = [v3 objectForKey:@"ExternalConnected"];

  [v6 BOOLValue];
  if (v5)
  {
    v7 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Battery is at a critical level. Sending out shutdown notification before shutting down.", buf, 2u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.springboard.deviceWillShutDown", 0, 0, 1u);
    sleep(4u);
    BSDispatchMain();
  }
}

@end