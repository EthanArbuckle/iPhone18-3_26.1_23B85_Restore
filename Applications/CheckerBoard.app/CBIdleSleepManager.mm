@interface CBIdleSleepManager
+ (id)sharedInstance;
- (CBIdleSleepManager)init;
- (id)configurationWithAttentionLostTimeout:(double)timeout;
- (void)_allowIdleSleep;
- (void)_disableTapToWake;
- (void)_enableTapToWake;
- (void)_initTapToWake;
- (void)_powerChangedOnService:(unsigned int)service messageType:(unsigned int)type messageArgument:(void *)argument;
- (void)_preventIdleSleep;
- (void)_preventIdleSleepForNumberOfSeconds:(float)seconds;
- (void)_screenBlanked;
- (void)_setHIDUILockedState:(BOOL)state;
- (void)_tapToWake:(id)wake;
- (void)_undimDisplay;
- (void)dealloc;
- (void)dimDisplay;
- (void)enableIdleSleep;
- (void)resetIdleTimerAndUndim:(BOOL)undim;
- (void)setIdleTimerDisabled:(BOOL)disabled forReason:(id)reason;
- (void)setPreventIdleSleep:(BOOL)sleep forReason:(id)reason;
- (void)undimDisplay;
@end

@implementation CBIdleSleepManager

+ (id)sharedInstance
{
  if (qword_1000923C0 != -1)
  {
    sub_100047504();
  }

  v3 = qword_1000923B8;

  return v3;
}

- (CBIdleSleepManager)init
{
  v15.receiver = self;
  v15.super_class = CBIdleSleepManager;
  v2 = [(CBIdleSleepManager *)&v15 init];
  if (v2)
  {
    v3 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[CBIdleSleepManager] Registering idle timer notifications…", buf, 2u);
    }

    v4 = objc_alloc_init(NSMutableSet);
    idleTimerDisabledReasons = v2->_idleTimerDisabledReasons;
    v2->_idleTimerDisabledReasons = v4;

    v6 = [(CBIdleSleepManager *)v2 configurationWithAttentionLostTimeout:30.0];
    v7 = objc_alloc_init(AWAttentionAwarenessClient);
    attentionAwarenessClient = v2->_attentionAwarenessClient;
    v2->_attentionAwarenessClient = v7;

    [(AWAttentionAwarenessClient *)v2->_attentionAwarenessClient setConfiguration:v6 shouldReset:1];
    [(CBIdleSleepManager *)v2 _initTapToWake];
    objc_initWeak(buf, v2);
    v9 = v2->_attentionAwarenessClient;
    v10 = &_dispatch_main_q;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10001FF68;
    v12[3] = &unk_10007DFD0;
    objc_copyWeak(&v13, buf);
    [(AWAttentionAwarenessClient *)v9 setEventHandlerWithQueue:&_dispatch_main_q block:v12];

    BKSHIDServicesAmbientLightSensorEnableAutoBrightness();
    v2->_displayDim = 0;
    [(CBIdleSleepManager *)v2 _undimDisplay];
    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  return v2;
}

- (void)dealloc
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[CBIdleSleepManager] Dealloc was called", buf, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  p_rootDomainConnect = &self->_rootDomainConnect;
  if (self->_rootDomainConnect)
  {
    v6 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[CBIdleSleepManager] Deregistering and closing connection", buf, 2u);
    }

    IODeregisterForSystemPower(&self->_rootDomainConnect);
    IOServiceClose(*p_rootDomainConnect);
    *p_rootDomainConnect = 0;
  }

  v7.receiver = self;
  v7.super_class = CBIdleSleepManager;
  [(CBIdleSleepManager *)&v7 dealloc];
}

- (id)configurationWithAttentionLostTimeout:(double)timeout
{
  v4 = objc_alloc_init(AWAttentionAwarenessConfiguration);
  [v4 setIdentifier:@"CBIdleTimer"];
  [v4 setEventMask:3967];
  [v4 setAttentionLostTimeout:timeout];

  return v4;
}

- (void)_setHIDUILockedState:(BOOL)state
{
  if (byte_1000918F8 != state)
  {
    stateCopy = state;
    v4 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109120;
      v5[1] = stateCopy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[CBIdleSleepManager] Setting UI locked state to %d", v5, 8u);
    }

    BKSHIDServicesSetHIDUILockedState();
    byte_1000918F8 = stateCopy;
  }
}

- (void)_undimDisplay
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"CBScreenWillUndimNotification" object:0];

  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_screenBlanked" object:0];
  [(CBIdleSleepManager *)self _disableTapToWake];
  v4 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[CBIdleSleepManager] Undimming display…", buf, 2u);
  }

  BKSDisplayServicesSetScreenBlanked();
  BKSHIDServicesSetBacklightFactorWithFadeDuration();
  [(CBIdleSleepManager *)self setDisplayDim:0];
  attentionAwarenessClient = self->_attentionAwarenessClient;
  v16 = 0;
  v6 = [(AWAttentionAwarenessClient *)attentionAwarenessClient resumeWithError:&v16];
  v7 = v16;
  if ((v6 & 1) == 0)
  {
    v8 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100047518(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  [(CBIdleSleepManager *)self _preventIdleSleep];
  [(CBIdleSleepManager *)self _setHIDUILockedState:0];
  v15 = +[NSNotificationCenter defaultCenter];
  [v15 postNotificationName:@"CBScreenDidUndimNotification" object:0];
}

- (void)undimDisplay
{
  if ([(CBIdleSleepManager *)self isDisplayDim])
  {
    v3 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[CBIdleSleepManager] Display is off. Turning display on…", v4, 2u);
    }

    [(CBIdleSleepManager *)self _undimDisplay];
  }
}

- (void)dimDisplay
{
  if (![(CBIdleSleepManager *)self isDisplayDim])
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 postNotificationName:@"CBScreenWillDimNotification" object:0];

    v4 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[CBIdleSleepManager] Dimming display…", buf, 2u);
    }

    BKSHIDServicesSetBacklightFactorWithFadeDuration();
    [(CBIdleSleepManager *)self setDisplayDim:1];
    attentionAwarenessClient = self->_attentionAwarenessClient;
    v18 = 0;
    v6 = [(AWAttentionAwarenessClient *)attentionAwarenessClient suspendWithError:&v18];
    v7 = v18;
    if ((v6 & 1) == 0)
    {
      v9 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100047584(v7, v9, v10, v11, v12, v13, v14, v15);
      }
    }

    LODWORD(v8) = 1.0;
    [(CBIdleSleepManager *)self _preventIdleSleepForNumberOfSeconds:v8];
    [(CBIdleSleepManager *)self resetIdleTimerAndUndim:0];
    [(CBIdleSleepManager *)self _setHIDUILockedState:1];
    v20 = NSRunLoopCommonModes;
    v16 = [NSArray arrayWithObjects:&v20 count:1];
    [(CBIdleSleepManager *)self performSelector:"_screenBlanked" withObject:0 afterDelay:v16 inModes:0.25];

    v17 = +[NSNotificationCenter defaultCenter];
    [v17 postNotificationName:@"CBScreenDidDimNotification" object:0];
  }
}

- (void)_screenBlanked
{
  BKSDisplayServicesSetScreenBlanked();

  [(CBIdleSleepManager *)self _enableTapToWake];
}

- (void)_allowIdleSleep
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[CBIdleSleepManager] Allowing idle sleep…", v4, 2u);
  }

  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_allowIdleSleep" object:0];
  [(CBIdleSleepManager *)self setPreventIdleSleep:0 forReason:@"backlight"];
}

- (void)_preventIdleSleep
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[CBIdleSleepManager] Preventing idle sleep…", v4, 2u);
  }

  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_allowIdleSleep" object:0];
  [(CBIdleSleepManager *)self setPreventIdleSleep:1 forReason:@"backlight"];
}

- (void)_preventIdleSleepForNumberOfSeconds:(float)seconds
{
  if ([(CBIdleSleepManager *)self isDisplayDim])
  {
    v5 = CheckerBoardLogHandleForCategory();
    secondsCopy = seconds;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v10 = secondsCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[CBIdleSleepManager] Preventing idle sleep for %f seconds…", buf, 0xCu);
    }

    [(CBIdleSleepManager *)self _preventIdleSleep];
    v8 = NSRunLoopCommonModes;
    v7 = [NSArray arrayWithObjects:&v8 count:1];
    [(CBIdleSleepManager *)self performSelector:"_allowIdleSleep" withObject:0 afterDelay:v7 inModes:secondsCopy];
  }
}

- (void)_powerChangedOnService:(unsigned int)service messageType:(unsigned int)type messageArgument:(void *)argument
{
  v8 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 67109120;
    v16[1] = type;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[CBIdleSleepManager] Received power notification %u", v16, 8u);
  }

  HIDWORD(v10) = type + 536870288;
  LODWORD(v10) = type + 536870288;
  v9 = v10 >> 4;
  if (v9 > 1)
  {
    switch(v9)
    {
      case 2:
        v11 = CheckerBoardLogHandleForCategory();
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
LABEL_19:

          return;
        }

        LOWORD(v16[0]) = 0;
        v12 = "[CBIdleSleepManager] Received kIOMessageSystemWillNotSleep";
        break;
      case 9:
        v15 = CheckerBoardLogHandleForCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v16[0]) = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[CBIdleSleepManager] Received kIOMessageSystemHasPoweredOn", v16, 2u);
        }

        v11 = +[NSNotificationCenter defaultCenter];
        [v11 postNotificationName:@"CBDidWakeFromSleepNotification" object:0 userInfo:0];
        goto LABEL_19;
      case 11:
        v11 = CheckerBoardLogHandleForCategory();
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        LOWORD(v16[0]) = 0;
        v12 = "[CBIdleSleepManager] Received kIOMessageSystemWillPowerOn";
        break;
      default:
        return;
    }

    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, v16, 2u);
    goto LABEL_19;
  }

  if (v9)
  {
    if (v9 != 1)
    {
      return;
    }

    v13 = CheckerBoardLogHandleForCategory();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    LOWORD(v16[0]) = 0;
    v14 = "[CBIdleSleepManager] Received kIOMessageSystemWillSleep";
    goto LABEL_22;
  }

  v13 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16[0]) = 0;
    v14 = "[CBIdleSleepManager] Received kIOMessageCanSystemSleep";
LABEL_22:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, v16, 2u);
  }

LABEL_23:

  IOAllowPowerChange(self->_rootDomainConnect, argument);
}

- (void)enableIdleSleep
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[CBIdleSleepManager] Enabling idle sleep…", buf, 2u);
  }

  notifier = 0;
  *buf = 0;
  v4 = IORegistryEntryFromPath(kIOMasterPortDefault, "IOPower:/IOPowerConnection/IOPMrootDomain");
  v5 = IORegisterForSystemPower(self, buf, sub_100020D78, &notifier);
  self->_rootDomainConnect = v5;
  if (v5)
  {
    RunLoopSource = IONotificationPortGetRunLoopSource(*buf);
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
  }

  else
  {
    v8 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1000475F0(v8);
    }
  }

  valuePtr = 1;
  v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  IORegistryEntrySetCFProperty(v4, @"System Boot Complete", kCFBooleanTrue);
  IORegistryEntrySetCFProperty(v4, @"System Idle Seconds", v9);
  CFRelease(v9);
  AssertionID = 0;
  IOPMAssertionCreateWithName(@"EnableIdleSleep", 0xFFu, @"com.apple.CheckerBoard.enableidlesleep", &AssertionID);
  [(CBIdleSleepManager *)self setPreventIdleSleep:1 forReason:0];
  [(CBIdleSleepManager *)self setFinishedBoot:1];
}

- (void)setPreventIdleSleep:(BOOL)sleep forReason:(id)reason
{
  sleepCopy = sleep;
  reasonCopy = reason;
  v7 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109378;
    v14[1] = sleepCopy;
    v15 = 2112;
    v16 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[CBIdleSleepManager] Preventing idle sleep (%d) for reason: %@", v14, 0x12u);
  }

  [(CBIdleSleepManager *)self finishedBoot];
  if (reasonCopy)
  {
    v8 = qword_1000923D0;
    if (sleepCopy)
    {
      if (!qword_1000923D0)
      {
        v9 = [[NSMutableSet alloc] initWithCapacity:2];
        v10 = qword_1000923D0;
        qword_1000923D0 = v9;

        v8 = qword_1000923D0;
      }

      [v8 addObject:reasonCopy];
      goto LABEL_12;
    }

    [qword_1000923D0 removeObject:reasonCopy];
  }

  else if (sleepCopy)
  {
    goto LABEL_12;
  }

  if (![qword_1000923D0 count])
  {
    if (byte_1000923D8 != 1)
    {
      goto LABEL_17;
    }

    v13 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14[0]) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[CBIdleSleepManager] Releasing kIOPMAssertionTypeNoIdleSleep assertion", v14, 2u);
    }

    IOPMAssertionRelease(dword_1000923C8);
    v12 = 0;
    goto LABEL_16;
  }

LABEL_12:
  if ((byte_1000923D8 & 1) == 0)
  {
    v11 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14[0]) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[CBIdleSleepManager] Taking out kIOPMAssertionTypeNoIdleSleep assertion", v14, 2u);
    }

    v12 = IOPMAssertionCreateWithName(@"NoIdleSleepAssertion", 0xFFu, @"com.apple.CheckerBoard.idle", &dword_1000923C8) == 0;
LABEL_16:
    byte_1000923D8 = v12;
  }

LABEL_17:
}

- (void)resetIdleTimerAndUndim:(BOOL)undim
{
  undimCopy = undim;
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v22) = undimCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[CBIdleSleepManager] Resetting idle timer and undim %d", buf, 8u);
  }

  if (undimCopy)
  {
    [(CBIdleSleepManager *)self undimDisplay];
  }

  if (![(CBIdleSleepManager *)self isDisplayDim])
  {
    idleTimerDisabledReasons = [(CBIdleSleepManager *)self idleTimerDisabledReasons];
    if ([idleTimerDisabledReasons count])
    {
      v7 = 1.79769313e308;
    }

    else
    {
      v7 = 30.0;
    }

    v8 = [(CBIdleSleepManager *)self configurationWithAttentionLostTimeout:v7];
    v9 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[CBIdleSleepManager] Setting a new attention awareness configuration with timeout: %f", buf, 0xCu);
    }

    attentionAwarenessClient = [(CBIdleSleepManager *)self attentionAwarenessClient];
    v20 = 0;
    v11 = [attentionAwarenessClient setConfiguration:v8 shouldReset:1 error:&v20];
    v12 = v20;

    if ((v11 & 1) == 0)
    {
      v13 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100047634(v12, v13, v14, v15, v16, v17, v18, v19);
      }
    }
  }
}

- (void)setIdleTimerDisabled:(BOOL)disabled forReason:(id)reason
{
  disabledCopy = disabled;
  reasonCopy = reason;
  v7 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 67109120;
    LODWORD(v15) = disabledCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[CBIdleSleepManager] Attempting to set idle timer disabled to %d", &v14, 8u);
  }

  if (reasonCopy)
  {
    idleTimerDisabledReasons = [(CBIdleSleepManager *)self idleTimerDisabledReasons];
    v9 = [idleTimerDisabledReasons containsObject:reasonCopy];

    if (disabledCopy)
    {
      if ((v9 & 1) == 0)
      {
        v10 = CheckerBoardLogHandleForCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138412290;
          v15 = reasonCopy;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[CBIdleSleepManager] Adding idle timer disabled reason: %@", &v14, 0xCu);
        }

        idleTimerDisabledReasons2 = [(CBIdleSleepManager *)self idleTimerDisabledReasons];
        [idleTimerDisabledReasons2 addObject:reasonCopy];
LABEL_16:

        [(CBIdleSleepManager *)self resetIdleTimerAndUndim:1];
      }
    }

    else if (v9)
    {
      v13 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = reasonCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[CBIdleSleepManager] Removing idle timer disabled reason: %@", &v14, 0xCu);
      }

      idleTimerDisabledReasons2 = [(CBIdleSleepManager *)self idleTimerDisabledReasons];
      [idleTimerDisabledReasons2 removeObject:reasonCopy];
      goto LABEL_16;
    }
  }

  else
  {
    v12 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[CBIdleSleepManager] Ignoring request since idle timer disabled reason was not specified…", &v14, 2u);
    }
  }
}

- (void)_initTapToWake
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[CBIdleSleepManager] Initializing tap to wake", buf, 2u);
  }

  v4 = MGGetBoolAnswer();
  v5 = 1;
  if (!v4)
  {
    v5 = 2;
  }

  self->_tapToWakeSupported = v5;
  if (v4)
  {
    v6 = +[_UISystemGestureManager sharedInstance];
    v7 = +[UIScreen mainScreen];
    v8 = [[SBFTapToWakeGestureRecognizer alloc] initWithTarget:self action:"_tapToWake:"];
    tapToWakeGestureRecognizer = self->_tapToWakeGestureRecognizer;
    self->_tapToWakeGestureRecognizer = v8;

    [(SBFTapToWakeGestureRecognizer *)self->_tapToWakeGestureRecognizer setEnabled:0];
    v10 = self->_tapToWakeGestureRecognizer;
    displayIdentity = [v7 displayIdentity];
    [v6 addGestureRecognizer:v10 toDisplayWithIdentity:displayIdentity];

    v12 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[CBIdleSleepManager] Tap to wake is supported and has been set up.", v14, 2u);
    }
  }

  else
  {
    v6 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[CBIdleSleepManager] Hardware does not support tap to wake.", v13, 2u);
    }
  }
}

- (void)_tapToWake:(id)wake
{
  if ([wake state] == 3)
  {
    v4 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[CBIdleSleepManager] Tap to wake performed!", v5, 2u);
    }

    if ([(CBIdleSleepManager *)self isDisplayDim])
    {
      [(CBIdleSleepManager *)self resetIdleTimerAndUndim:1];
    }
  }
}

- (void)_enableTapToWake
{
  if ([(CBIdleSleepManager *)self tapToWakeSupported]== 1)
  {
    dispatch_async(&_dispatch_main_q, &stru_10007DFF0);
    tapToWakeGestureRecognizer = [(CBIdleSleepManager *)self tapToWakeGestureRecognizer];
    [tapToWakeGestureRecognizer setEnabled:1];

    v4 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[CBIdleSleepManager] Tap to Wake enabled", v5, 2u);
    }
  }
}

- (void)_disableTapToWake
{
  if ([(CBIdleSleepManager *)self tapToWakeSupported]== 1)
  {
    tapToWakeGestureRecognizer = [(CBIdleSleepManager *)self tapToWakeGestureRecognizer];
    [tapToWakeGestureRecognizer setEnabled:0];

    dispatch_async(&_dispatch_main_q, &stru_10007E010);
    v4 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[CBIdleSleepManager] Tap to Wake disabled", v5, 2u);
    }
  }
}

@end