@interface Application
- (Application)init;
- (id)_getTopViewController;
- (void)_handleTriplePress;
- (void)_initRoutingRules;
- (void)_initializeAccessibilityFeatures;
- (void)_invalidatePowerAndVolumeUpLongPressTimer;
- (void)_invalidatePowerButtonLongPressTimer;
- (void)_invalidatePowerButtonPressTimer;
- (void)_powerAndVolumeUpLongPressFired:(id)fired;
- (void)_powerButtonLongPressFired:(id)fired;
- (void)_powerButtonPressCountTimerFired:(id)fired;
- (void)_resetButtonsStatesUIKitWorkaround;
- (void)_resetPowerButtonPressCount;
- (void)_showExitConfirmation;
- (void)_showMenuView;
- (void)_showNeRDBootConfirmation;
- (void)_showPowerDownView;
- (void)_startPowerAndVolumeUpLongPressTimerIfNeeded;
- (void)_startPowerButtonPressCountTimer;
- (void)handlePressEvent:(id)event phase:(int64_t)phase;
@end

@implementation Application

- (Application)init
{
  v7.receiver = self;
  v7.super_class = Application;
  v2 = [(Application *)&v7 init];
  if (v2)
  {
    v3 = sub_100012608();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v9 = "[Application init]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: Principal class created", buf, 0xCu);
    }

    v2->_isPowerButtonDown = 0;
    v2->_isVolumeUpButtonDown = 0;
    v2->_isActionTriggeredForCurrentPressSequence = 0;
    v2->_powerButtonPressCount = 0;
    v2->_axSettingsImported = 0;
    [(Application *)v2 _initRoutingRules];
    v4 = +[DisplayManager sharedInstance];
    v5 = sub_100012608();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v9 = "[Application init]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Device Recovery Assistant init complete", buf, 0xCu);
    }
  }

  return v2;
}

- (void)handlePressEvent:(id)event phase:(int64_t)phase
{
  if (![event _hidEvent])
  {
    v11 = sub_100012608();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 136446210;
      *&v34[4] = "[Application handlePressEvent:phase:]";
      v12 = "%{public}s: Physical HID button event does not exist";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, v34, 0xCu);
    }

LABEL_13:

    return;
  }

  if (IOHIDEventGetType() != 3)
  {
    v11 = sub_100012608();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 136446210;
      *&v34[4] = "[Application handlePressEvent:phase:]";
      v12 = "%{public}s: HID Event is not of type Keyboard (i.e. isn't handled by us)";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  IntegerValue = IOHIDEventGetIntegerValue();
  v7 = IOHIDEventGetIntegerValue();
  v8 = v7 | (IntegerValue << 16);
  v9 = sub_100012608();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v34 = 136447746;
    *&v34[4] = "[Application handlePressEvent:phase:]";
    *&v34[12] = 1024;
    *&v34[14] = IntegerValue;
    *&v34[18] = 1024;
    *&v34[20] = v7;
    v35 = 2048;
    phaseCopy = phase;
    v37 = 1024;
    v38 = v7 | (IntegerValue << 16);
    v39 = 1024;
    isPowerButtonDown = [(Application *)self isPowerButtonDown];
    v41 = 1024;
    isVolumeUpButtonDown = [(Application *)self isVolumeUpButtonDown];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: [Keyboard HID Event Info] usagePage: 0x%x, usage: 0x%x, phase: %ld, hash: 0x%x. Currently, isPowerButtonDown:%d, isVolumeUpButtonDown:%d", v34, 0x34u);
  }

  if (v8 <= 786664)
  {
    if (v8 == 786480)
    {
      isPowerButtonDown2 = [(Application *)self isPowerButtonDown];
      if (phase)
      {
        if (isPowerButtonDown2)
        {
          [(Application *)self setIsPowerButtonDown:0];
          [(Application *)self _invalidatePowerButtonLongPressTimer];
          [(Application *)self _invalidatePowerAndVolumeUpLongPressTimer];
          v19 = sub_100012608();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *v34 = 136446210;
            *&v34[4] = "[Application handlePressEvent:phase:]";
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}s: Power button up.", v34, 0xCu);
          }

          [(Application *)self setPowerButtonPressCount:[(Application *)self powerButtonPressCount]+ 1];
          v20 = sub_100012608();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            powerButtonPressCount = [(Application *)self powerButtonPressCount];
            *v34 = 136446466;
            *&v34[4] = "[Application handlePressEvent:phase:]";
            *&v34[12] = 2048;
            *&v34[14] = powerButtonPressCount;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}s: Power button press count: %ld", v34, 0x16u);
          }

          if ([(Application *)self powerButtonPressCount]>= 3)
          {
            v22 = sub_100012608();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *v34 = 136446210;
              *&v34[4] = "[Application handlePressEvent:phase:]";
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}s: Triple press detected! Performing action.", v34, 0xCu);
            }

            [(Application *)self _handleTriplePress];
            [(Application *)self _resetPowerButtonPressCount];
          }

          if (![(Application *)self isActionTriggeredForCurrentPressSequence])
          {
            v23 = sub_100012608();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *v34 = 136446210;
              *&v34[4] = "[Application handlePressEvent:phase:]";
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}s: Power button short press detected. Toggling display power.", v34, 0xCu);
            }

            v24 = +[DisplayManager sharedInstance];
            [v24 toggleDisplay];

            [(Application *)self setIsActionTriggeredForCurrentPressSequence:1];
          }
        }
      }

      else if ((isPowerButtonDown2 & 1) == 0)
      {
        [(Application *)self setIsPowerButtonDown:1];
        [(Application *)self setIsActionTriggeredForCurrentPressSequence:0];
        [(Application *)self _invalidatePowerButtonLongPressTimer];
        v31 = [NSTimer scheduledTimerWithTimeInterval:self target:"_powerButtonLongPressFired:" selector:0 userInfo:0 repeats:1.0];
        [(Application *)self setPowerButtonLongPressTimer:v31];

        v32 = sub_100012608();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *v34 = 136446210;
          *&v34[4] = "[Application handlePressEvent:phase:]";
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}s: Power button down. Started power long press timer.", v34, 0xCu);
        }

        [(Application *)self _startPowerAndVolumeUpLongPressTimerIfNeeded];
        if (![(Application *)self powerButtonPressCount])
        {
          [(Application *)self _startPowerButtonPressCountTimer];
        }
      }

      goto LABEL_54;
    }

    v10 = 64;
LABEL_17:
    if (v8 != (v10 | 0xC0000))
    {
      v17 = sub_100012608();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *v34 = 136446466;
        *&v34[4] = "[Application handlePressEvent:phase:]";
        *&v34[12] = 2048;
        *&v34[14] = phase;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: HID Event phase %ld isn't caught/handled by us", v34, 0x16u);
      }

      goto LABEL_54;
    }

    if (!phase)
    {
      v14 = sub_100012608();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v34 = 136446210;
        *&v34[4] = "[Application handlePressEvent:phase:]";
        v16 = "%{public}s: Volume Down/Home button down.";
        goto LABEL_48;
      }

      goto LABEL_53;
    }

    isActionTriggeredForCurrentPressSequence = [(Application *)self isActionTriggeredForCurrentPressSequence];
    v14 = sub_100012608();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (isActionTriggeredForCurrentPressSequence)
    {
      if (v15)
      {
        *v34 = 136446210;
        *&v34[4] = "[Application handlePressEvent:phase:]";
        v16 = "%{public}s: Volume Down/Home button up. Skipping undim as another action was triggered.";
LABEL_48:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v16, v34, 0xCu);
        goto LABEL_53;
      }

      goto LABEL_53;
    }

    if (v15)
    {
      *v34 = 136446210;
      *&v34[4] = "[Application handlePressEvent:phase:]";
      v29 = "%{public}s: Volume Down/Home button up. Undimming display if needed.";
LABEL_51:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v29, v34, 0xCu);
      goto LABEL_52;
    }

    goto LABEL_52;
  }

  if (v8 != 786665)
  {
    v10 = 234;
    goto LABEL_17;
  }

  isVolumeUpButtonDown2 = [(Application *)self isVolumeUpButtonDown];
  if (!phase)
  {
    if ((isVolumeUpButtonDown2 & 1) == 0)
    {
      [(Application *)self setIsVolumeUpButtonDown:1];
      v33 = sub_100012608();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *v34 = 136446210;
        *&v34[4] = "[Application handlePressEvent:phase:]";
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}s: Volume Up button down.", v34, 0xCu);
      }

      [(Application *)self _startPowerAndVolumeUpLongPressTimerIfNeeded];
    }

    goto LABEL_54;
  }

  if (isVolumeUpButtonDown2)
  {
    [(Application *)self setIsVolumeUpButtonDown:0];
    [(Application *)self _invalidatePowerAndVolumeUpLongPressTimer];
    v26 = sub_100012608();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 136446210;
      *&v34[4] = "[Application handlePressEvent:phase:]";
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}s: Volume Up button up.", v34, 0xCu);
    }

    isActionTriggeredForCurrentPressSequence2 = [(Application *)self isActionTriggeredForCurrentPressSequence];
    v14 = sub_100012608();
    v28 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (isActionTriggeredForCurrentPressSequence2)
    {
      if (v28)
      {
        *v34 = 136446210;
        *&v34[4] = "[Application handlePressEvent:phase:]";
        v16 = "%{public}s: Volume Up button up. Skipping undim as another action was triggered.";
        goto LABEL_48;
      }

LABEL_53:

      goto LABEL_54;
    }

    if (v28)
    {
      *v34 = 136446210;
      *&v34[4] = "[Application handlePressEvent:phase:]";
      v29 = "%{public}s: Volume Up button short press detected. Undimming display if needed.";
      goto LABEL_51;
    }

LABEL_52:

    v14 = +[DisplayManager sharedInstance];
    [v14 undimDisplay];
    goto LABEL_53;
  }

LABEL_54:
  if (![(Application *)self isPowerButtonDown]&& ![(Application *)self isVolumeUpButtonDown])
  {
    [(Application *)self setIsActionTriggeredForCurrentPressSequence:0];
    if ([(Application *)self powerButtonPressCount]>= 1)
    {
      powerButtonPressTimer = [(Application *)self powerButtonPressTimer];

      if (!powerButtonPressTimer)
      {
        [(Application *)self _resetPowerButtonPressCount];
      }
    }
  }
}

- (void)_invalidatePowerButtonLongPressTimer
{
  powerButtonLongPressTimer = [(Application *)self powerButtonLongPressTimer];

  if (powerButtonLongPressTimer)
  {
    powerButtonLongPressTimer2 = [(Application *)self powerButtonLongPressTimer];
    [powerButtonLongPressTimer2 invalidate];

    [(Application *)self setPowerButtonLongPressTimer:0];
    v5 = sub_100012608();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136446210;
      v7 = "[Application _invalidatePowerButtonLongPressTimer]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Invalidated power long press timer.", &v6, 0xCu);
    }
  }
}

- (void)_invalidatePowerAndVolumeUpLongPressTimer
{
  powerAndVolumeUpLongPressTimer = [(Application *)self powerAndVolumeUpLongPressTimer];

  if (powerAndVolumeUpLongPressTimer)
  {
    powerAndVolumeUpLongPressTimer2 = [(Application *)self powerAndVolumeUpLongPressTimer];
    [powerAndVolumeUpLongPressTimer2 invalidate];

    [(Application *)self setPowerAndVolumeUpLongPressTimer:0];
    v5 = sub_100012608();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136446210;
      v7 = "[Application _invalidatePowerAndVolumeUpLongPressTimer]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Invalidated power+volume up long press timer.", &v6, 0xCu);
    }
  }
}

- (void)_invalidatePowerButtonPressTimer
{
  powerButtonPressTimer = [(Application *)self powerButtonPressTimer];

  if (powerButtonPressTimer)
  {
    powerButtonPressTimer2 = [(Application *)self powerButtonPressTimer];
    [powerButtonPressTimer2 invalidate];

    [(Application *)self setPowerButtonPressTimer:0];
    v5 = sub_100012608();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136446210;
      v7 = "[Application _invalidatePowerButtonPressTimer]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Invalidated power button press count timer.", &v6, 0xCu);
    }
  }
}

- (void)_startPowerButtonPressCountTimer
{
  [(Application *)self _invalidatePowerButtonPressTimer];
  v3 = [NSTimer scheduledTimerWithTimeInterval:self target:"_powerButtonPressCountTimerFired:" selector:0 userInfo:0 repeats:1.0];
  [(Application *)self setPowerButtonPressTimer:v3];

  v4 = sub_100012608();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = "[Application _startPowerButtonPressCountTimer]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Started power button press count timer (1 second timeout).", &v5, 0xCu);
  }
}

- (void)_powerButtonPressCountTimerFired:(id)fired
{
  v4 = sub_100012608();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[Application _powerButtonPressCountTimerFired:]";
    v7 = 2048;
    powerButtonPressCount = [(Application *)self powerButtonPressCount];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Power button press count timer expired. Resetting count from %ld to 0.", &v5, 0x16u);
  }

  [(Application *)self _resetPowerButtonPressCount];
  [(Application *)self setPowerButtonPressTimer:0];
}

- (void)_resetPowerButtonPressCount
{
  [(Application *)self setPowerButtonPressCount:0];
  [(Application *)self _invalidatePowerButtonPressTimer];
  v3 = sub_100012608();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[Application _resetPowerButtonPressCount]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: Reset power button press count.", &v4, 0xCu);
  }
}

- (void)_handleTriplePress
{
  v3 = sub_100012608();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v13 = "[Application _handleTriplePress]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: Handling triple press action.", buf, 0xCu);
  }

  if ([(Application *)self axSettingsImported])
  {
    v4 = _AXSVoiceOverTouchEnabled();
    v5 = sub_100012608();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (v4)
      {
        v6 = "enabled";
      }

      else
      {
        v6 = "disabled";
      }

      *buf = 136446466;
      v13 = "[Application _handleTriplePress]";
      v14 = 2080;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Current VoiceOver state: %s. Toggling...", buf, 0x16u);
    }

    _AXSVoiceOverTouchSetUsageConfirmed();
    _AXSVoiceOverTouchSetEnabled();
    if (v4)
    {
      v7 = +[DisplayManager sharedInstance];
      [v7 undimDisplay];
    }

    v8 = sub_100012608();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (v4)
      {
        v9 = "disabled";
      }

      else
      {
        v9 = "enabled";
      }

      *buf = 136446466;
      v13 = "[Application _handleTriplePress]";
      v14 = 2080;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: VoiceOver toggled to: %s", buf, 0x16u);
    }
  }

  else
  {
    v10 = sub_100012608();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v13 = "[Application _handleTriplePress]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: First triple-press detected. Loading accessibility settings from daemon and enabling voiceover", buf, 0xCu);
    }

    v8 = +[DeviceRecoveryController sharedController];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100002BE0;
    v11[3] = &unk_1000286E0;
    v11[4] = self;
    [v8 loadAccessibilitySettingsToDefaultsWithCompletion:v11];
  }
}

- (void)_startPowerAndVolumeUpLongPressTimerIfNeeded
{
  [(Application *)self powerAndVolumeUpLongPressTimer];
  if (objc_claimAutoreleasedReturnValue() || ![(Application *)self isPowerButtonDown])
  {

    _objc_release_x1();
  }

  else if ([(Application *)self isVolumeUpButtonDown])
  {
    [(Application *)self _invalidatePowerButtonLongPressTimer];
    v3 = [NSTimer scheduledTimerWithTimeInterval:self target:"_powerAndVolumeUpLongPressFired:" selector:0 userInfo:0 repeats:1.0];
    [(Application *)self setPowerAndVolumeUpLongPressTimer:v3];

    v4 = sub_100012608();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v6 = "[Application _startPowerAndVolumeUpLongPressTimerIfNeeded]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Started power+volume up long press timer.", buf, 0xCu);
    }
  }
}

- (void)_powerButtonLongPressFired:(id)fired
{
  v4 = sub_100012608();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136446210;
    v13 = "[Application _powerButtonLongPressFired:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Power long press timer fired.", &v12, 0xCu);
  }

  v5 = sub_100012608();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136446210;
    v13 = "[Application _powerButtonLongPressFired:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Attempting to undim display due to power long press timer.", &v12, 0xCu);
  }

  v6 = +[DisplayManager sharedInstance];
  [v6 undimDisplay];

  if (![(Application *)self isPowerButtonDown]|| [(Application *)self isVolumeUpButtonDown]|| [(Application *)self isActionTriggeredForCurrentPressSequence])
  {
    v7 = sub_100012608();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      isPowerButtonDown = [(Application *)self isPowerButtonDown];
      isVolumeUpButtonDown = [(Application *)self isVolumeUpButtonDown];
      isActionTriggeredForCurrentPressSequence = [(Application *)self isActionTriggeredForCurrentPressSequence];
      v12 = 136446978;
      v13 = "[Application _powerButtonLongPressFired:]";
      v14 = 1024;
      v15 = isPowerButtonDown;
      v16 = 1024;
      v17 = isVolumeUpButtonDown;
      v18 = 1024;
      v19 = isActionTriggeredForCurrentPressSequence;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: Power long press conditions not met (Power:%d, VolUp:%d, ActionTriggered:%d). Menu not shown.", &v12, 0x1Eu);
    }
  }

  else
  {
    v11 = sub_100012608();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136446210;
      v13 = "[Application _powerButtonLongPressFired:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: Power button long press conditions met. Showing menu view.", &v12, 0xCu);
    }

    [(Application *)self setIsActionTriggeredForCurrentPressSequence:1];
    [(Application *)self _showMenuView];
  }

  [(Application *)self setPowerButtonLongPressTimer:0];
}

- (void)_powerAndVolumeUpLongPressFired:(id)fired
{
  v4 = sub_100012608();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136446210;
    v13 = "[Application _powerAndVolumeUpLongPressFired:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Power+Volume up long press timer fired.", &v12, 0xCu);
  }

  v5 = sub_100012608();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136446210;
    v13 = "[Application _powerAndVolumeUpLongPressFired:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Attempting to undim display due to power+volUp long press timer.", &v12, 0xCu);
  }

  v6 = +[DisplayManager sharedInstance];
  [v6 undimDisplay];

  if ([(Application *)self isPowerButtonDown]&& [(Application *)self isVolumeUpButtonDown]&& ![(Application *)self isActionTriggeredForCurrentPressSequence])
  {
    v11 = sub_100012608();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136446210;
      v13 = "[Application _powerAndVolumeUpLongPressFired:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: Power + Volume Up long press conditions met. Showing power down view.", &v12, 0xCu);
    }

    [(Application *)self setIsActionTriggeredForCurrentPressSequence:1];
    [(Application *)self _invalidatePowerButtonLongPressTimer];
    [(Application *)self _showPowerDownView];
    [(Application *)self _resetButtonsStatesUIKitWorkaround];
  }

  else
  {
    v7 = sub_100012608();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      isPowerButtonDown = [(Application *)self isPowerButtonDown];
      isVolumeUpButtonDown = [(Application *)self isVolumeUpButtonDown];
      isActionTriggeredForCurrentPressSequence = [(Application *)self isActionTriggeredForCurrentPressSequence];
      v12 = 136446978;
      v13 = "[Application _powerAndVolumeUpLongPressFired:]";
      v14 = 1024;
      v15 = isPowerButtonDown;
      v16 = 1024;
      v17 = isVolumeUpButtonDown;
      v18 = 1024;
      v19 = isActionTriggeredForCurrentPressSequence;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: Power+VolUp long press conditions not met (Power:%d, VolUp:%d, ActionTriggered:%d). Power down view not shown.", &v12, 0x1Eu);
    }
  }

  [(Application *)self setPowerAndVolumeUpLongPressTimer:0];
}

- (void)_initRoutingRules
{
  v2 = +[BKSHIDEventDisplay builtinDisplay];
  v3 = +[BKSHIDEventDisplay nullDisplay];
  v4 = [NSSet setWithObjects:v2, v3, 0];

  v5 = +[BKSMutableHIDEventDiscreteDispatchingPredicate defaultSystemPredicate];
  v6 = +[BKSMutableHIDEventDiscreteDispatchingPredicate defaultFocusPredicate];
  v7 = objc_opt_new();
  [v5 setDisplays:v4];
  v27 = v4;
  [v6 setDisplays:v4];
  v8 = [BKSHIDEventDescriptor descriptorWithEventType:42];
  v9 = [BKSHIDEventVendorDefinedDescriptor descriptorWithPage:65280 usage:102];
  v10 = [NSSet setWithObjects:v8, v9, 0];

  [v7 setSenderDescriptors:0];
  v24 = v10;
  [v7 setDescriptors:v10];
  v11 = +[BKSHIDEventDeferringEnvironment ui_cameraCaptureButtonEnvironment];
  v12 = [BKSHIDEventDispatchingTarget targetForDeferringEnvironment:v11];

  v13 = +[BKSHIDEventDispatchingTarget systemTarget];
  v26 = v5;
  v14 = [BKSHIDEventDiscreteDispatchingRule ruleForDispatchingDiscreteEventsMatchingPredicate:v5 toTarget:v13];

  v15 = +[BKSHIDEventDispatchingTarget keyboardFocusTarget];
  v16 = [BKSHIDEventDiscreteDispatchingRule ruleForDispatchingDiscreteEventsMatchingPredicate:v6 toTarget:v15];

  v17 = +[BKSHIDEventDispatchingTarget systemTarget];
  v18 = [BKSHIDEventDiscreteDispatchingRule ruleForDispatchingDiscreteEventsMatchingPredicate:v7 toTarget:v17];

  v19 = [BKSHIDEventDiscreteDispatchingRule ruleForDispatchingDiscreteEventsMatchingPredicate:v7 toTarget:v12];
  v20 = +[BKSHIDEventDeliveryManager sharedInstance];
  v30[0] = v14;
  v30[1] = v16;
  v30[2] = v18;
  v30[3] = v19;
  v21 = [NSArray arrayWithObjects:v30 count:4];
  v22 = [v20 dispatchDiscreteEventsForReason:@"SB-Default" withRules:v21];
  [(Application *)self setDispatchingAssertion:v22];

  v23 = sub_100012608();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v29 = "[Application _initRoutingRules]";
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}s: HID Routing rules initialized.", buf, 0xCu);
  }
}

- (void)_initializeAccessibilityFeatures
{
  if ([(Application *)self axSettingsImported])
  {
    v3 = sub_100012608();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136446210;
      v5 = "[Application _initializeAccessibilityFeatures]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: Accessibility settings already imported. Skipping...", &v4, 0xCu);
    }
  }

  else
  {
    [(Application *)self setAxSettingsImported:1];
    if (_AXSVoiceOverTouchEnabled())
    {
      _AXSVoiceOverTouchSetEnabled();
    }

    if (_AXSAssistiveTouchEnabled())
    {
      _AXSAssistiveTouchSetEnabled();
    }

    if (_AXSAssistiveTouchScannerEnabled())
    {
      _AXSAssistiveTouchScannerSetEnabled();
    }

    if (_AXSCommandAndControlEnabled())
    {
      _AXSCommandAndControlSetEnabled();
    }

    if (_AXSInvertColorsEnabled())
    {

      __AXSInvertColorsSetEnabled(1);
    }
  }
}

- (void)_resetButtonsStatesUIKitWorkaround
{
  v3 = sub_100012608();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[Application _resetButtonsStatesUIKitWorkaround]";
    v6 = 2112;
    v7 = @"rdar://151218296";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: Reset buttons' internal states after UIKit responder chain changes as a workaround for %@", &v4, 0x16u);
  }

  [(Application *)self setIsPowerButtonDown:0];
  [(Application *)self setIsVolumeUpButtonDown:0];
  [(Application *)self _resetPowerButtonPressCount];
}

- (void)_showPowerDownView
{
  v3 = +[DREAlertManager sharedInstance];
  alertVisible = [v3 alertVisible];

  v5 = sub_100012608();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (alertVisible)
  {
    if (v6)
    {
      *buf = 136446210;
      v9 = "[Application _showPowerDownView]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Power down view requested, but an alert is already presented.", buf, 0xCu);
    }
  }

  else
  {
    if (v6)
    {
      *buf = 136446210;
      v9 = "[Application _showPowerDownView]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Showing power down view.", buf, 0xCu);
    }

    v5 = +[DREAlertManager sharedInstance];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000039D0;
    v7[3] = &unk_100028748;
    v7[4] = self;
    [v5 showPowerDownWithCompletion:0 response:v7];
  }
}

- (id)_getTopViewController
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = +[UIApplication sharedApplication];
  connectedScenes = [v2 connectedScenes];

  v4 = [connectedScenes countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(connectedScenes);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if (![v8 activationState])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            keyWindow = [v8 keyWindow];
            if (keyWindow)
            {
              v10 = keyWindow;
              goto LABEL_13;
            }
          }
        }
      }

      v5 = [connectedScenes countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_13:

  rootViewController = [v10 rootViewController];

  return rootViewController;
}

- (void)_showExitConfirmation
{
  _getTopViewController = [(Application *)self _getTopViewController];
  view = [_getTopViewController view];
  window = [view window];
  windowScene = [window windowScene];
  delegate = [windowScene delegate];

  [delegate promptToCancelAndRebootFromViewController:_getTopViewController];
}

- (void)_showNeRDBootConfirmation
{
  _getTopViewController = [(Application *)self _getTopViewController];
  view = [_getTopViewController view];
  window = [view window];
  windowScene = [window windowScene];
  delegate = [windowScene delegate];

  [delegate promptToBootToNeRDFromViewController:_getTopViewController];
}

- (void)_showMenuView
{
  v3 = +[DREAlertManager sharedInstance];
  alertVisible = [v3 alertVisible];

  v5 = sub_100012608();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (alertVisible)
  {
    if (v6)
    {
      *buf = 136446210;
      v10 = "[Application _showMenuView]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Menu view requested, but an alert is already presented.", buf, 0xCu);
    }
  }

  else
  {
    if (v6)
    {
      *buf = 136446210;
      v10 = "[Application _showMenuView]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Showing menu view.", buf, 0xCu);
    }

    v7 = +[DREAlertManager sharedInstance];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100004098;
    v8[3] = &unk_100028748;
    v8[4] = self;
    [v7 showMenuSheetWithOptions:7 completion:0 response:v8];

    [(Application *)self _resetButtonsStatesUIKitWorkaround];
  }
}

@end