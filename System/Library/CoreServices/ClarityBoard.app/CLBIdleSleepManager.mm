@interface CLBIdleSleepManager
+ (id)sharedInstance;
- (CLBIdleSleepManager)init;
- (double)_nextLockTimeDuration;
- (id)_configurationWithAttentionLostTimeout:(double)timeout;
- (id)_descriptionForTimeout:(double)timeout;
- (id)acquireIdleTimerAssertionWithConfiguration:(id)configuration fromClient:(id)client forReason:(id)reason;
- (void)_allowIdleSleep;
- (void)_disableTapToWake;
- (void)_enableTapToWake;
- (void)_initTapToWake;
- (void)_powerChangedOnService:(unsigned int)service messageType:(unsigned int)type messageArgument:(void *)argument;
- (void)_preventIdleSleep;
- (void)_preventIdleSleepForNumberOfSeconds:(float)seconds;
- (void)_resetIdleTimerAndUndim:(BOOL)undim forReason:(int64_t)reason;
- (void)_setHIDUILockedState:(BOOL)state;
- (void)_setUpAutoLockTime;
- (void)_tapToWake:(id)wake;
- (void)_undimDisplayForReason:(int64_t)reason;
- (void)dealloc;
- (void)dimDisplay;
- (void)enableIdleSleep;
- (void)setIdleTimerDisabled:(BOOL)disabled forReason:(id)reason;
- (void)setPreventIdleSleep:(BOOL)sleep forReason:(id)reason;
- (void)setShouldSleepForLock:(BOOL)lock;
@end

@implementation CLBIdleSleepManager

+ (id)sharedInstance
{
  if (qword_1003311A8 != -1)
  {
    sub_1002855B0();
  }

  v3 = qword_1003311A0;

  return v3;
}

- (CLBIdleSleepManager)init
{
  v22.receiver = self;
  v22.super_class = CLBIdleSleepManager;
  v2 = [(CLBIdleSleepManager *)&v22 init];
  if (v2)
  {
    v3 = +[CLFLog commonLog];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Registering idle timer notifications…", buf, 2u);
    }

    v4 = objc_alloc_init(NSMutableSet);
    idleTimerDisabledReasons = v2->_idleTimerDisabledReasons;
    v2->_idleTimerDisabledReasons = v4;

    v2->_autoLockDisabled = 0;
    [(CLBIdleSleepManager *)v2 _setUpAutoLockTime];
    v6 = objc_alloc_init(AWAttentionAwarenessClient);
    attentionAwarenessClient = v2->_attentionAwarenessClient;
    v2->_attentionAwarenessClient = v6;

    [(CLBIdleSleepManager *)v2 _nextLockTimeDuration];
    v9 = v8;
    v10 = [(CLBIdleSleepManager *)v2 _configurationWithAttentionLostTimeout:?];
    v11 = +[CLFLog commonLog];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(CLBIdleSleepManager *)v2 _descriptionForTimeout:v9];
      *buf = 138412290;
      v24 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Initializing with attention awareness configuration with timeout: %@", buf, 0xCu);
    }

    [(AWAttentionAwarenessClient *)v2->_attentionAwarenessClient setConfiguration:v10 shouldReset:1];
    [(CLBIdleSleepManager *)v2 _initTapToWake];
    objc_initWeak(buf, v2);
    v13 = v2->_attentionAwarenessClient;
    v14 = &_dispatch_main_q;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100022C94;
    v20[3] = &unk_1002FCFB0;
    objc_copyWeak(&v21, buf);
    [(AWAttentionAwarenessClient *)v13 setEventHandlerWithQueue:&_dispatch_main_q block:v20];

    v2->_displayDim = 1;
    v2->_proximitySensorCovered = 1;
    [(CLBIdleSleepManager *)v2 _undimDisplayForReason:6];
    v15 = dispatch_queue_create("IdleTimerService", 0);
    serviceCalloutQueue = v2->_serviceCalloutQueue;
    v2->_serviceCalloutQueue = v15;

    v17 = [[ITIdleTimerStateService alloc] initWithDispatchQueue:v2->_serviceCalloutQueue delegate:v2];
    idleTimerStateService = v2->_idleTimerStateService;
    v2->_idleTimerStateService = v17;

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[CLFLog commonLog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dealloc was called", buf, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  p_rootDomainConnect = &self->_rootDomainConnect;
  if (self->_rootDomainConnect)
  {
    v6 = +[CLFLog commonLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Deregistering and closing connection", buf, 2u);
    }

    IODeregisterForSystemPower(&self->_rootDomainConnect);
    IOServiceClose(*p_rootDomainConnect);
    *p_rootDomainConnect = 0;
  }

  v7.receiver = self;
  v7.super_class = CLBIdleSleepManager;
  [(CLBIdleSleepManager *)&v7 dealloc];
}

- (void)setShouldSleepForLock:(BOOL)lock
{
  if (self->_shouldSleepForLock != lock)
  {
    lockCopy = lock;
    self->_shouldSleepForLock = lock;
    v5 = +[CLFLog commonLog];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = lockCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Should sleep for lock: %i", v6, 8u);
    }

    [(CLBIdleSleepManager *)self resetIdleTimer];
  }
}

- (void)_setHIDUILockedState:(BOOL)state
{
  if (byte_10032B3F0 != state)
  {
    stateCopy = state;
    v4 = +[CLFLog commonLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109120;
      v5[1] = stateCopy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting UI locked state to %d", v5, 8u);
    }

    BKSHIDServicesSetHIDUILockedState();
    byte_10032B3F0 = stateCopy;
  }
}

- (void)_undimDisplayForReason:(int64_t)reason
{
  if ([(CLBIdleSleepManager *)self isDisplayDim])
  {
    v5 = +[CLFLog commonLog];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Display is off. Turning display on…", buf, 2u);
    }

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 postNotificationName:@"CLBScreenWillUndimNotification" object:0];

    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_enableTapToWake" object:0];
    [(CLBIdleSleepManager *)self _disableTapToWake];
    v7 = +[CLBBacklightController sharedInstance];
    [v7 setPreferredFactor:100 forReason:reason];

    [(CLBIdleSleepManager *)self setDisplayDim:0];
    attentionAwarenessClient = self->_attentionAwarenessClient;
    v19 = 0;
    LOBYTE(v7) = [(AWAttentionAwarenessClient *)attentionAwarenessClient resumeWithError:&v19];
    v9 = v19;
    if ((v7 & 1) == 0)
    {
      v10 = +[CLFLog commonLog];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1002855C4(v9, v10, v11, v12, v13, v14, v15, v16);
      }
    }

    [(CLBIdleSleepManager *)self _preventIdleSleep];
    [(CLBIdleSleepManager *)self _setHIDUILockedState:0];
    v17 = +[NSNotificationCenter defaultCenter];
    [v17 postNotificationName:@"CLBScreenDidUndimNotification" object:0];

    v18 = +[NSDate now];
    [(CLBIdleSleepManager *)self setLastUndimDate:v18];
  }
}

- (void)dimDisplay
{
  if (![(CLBIdleSleepManager *)self isDisplayDim])
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 postNotificationName:@"CLBScreenWillDimNotification" object:0];

    v4 = +[CLFLog commonLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Dimming display…", buf, 2u);
    }

    v5 = +[CLBBacklightController sharedInstance];
    [v5 setPreferredFactor:0 forReason:2];

    [(CLBIdleSleepManager *)self setDisplayDim:1];
    attentionAwarenessClient = self->_attentionAwarenessClient;
    v18 = 0;
    v7 = [(AWAttentionAwarenessClient *)attentionAwarenessClient suspendWithError:&v18];
    v8 = v18;
    if ((v7 & 1) == 0)
    {
      v10 = +[CLFLog commonLog];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100285630(v8, v10, v11, v12, v13, v14, v15, v16);
      }
    }

    LODWORD(v9) = 1.0;
    [(CLBIdleSleepManager *)self _preventIdleSleepForNumberOfSeconds:v9];
    [(CLBIdleSleepManager *)self resetIdleTimer];
    [(CLBIdleSleepManager *)self _setHIDUILockedState:1];
    v20 = NSRunLoopCommonModes;
    v17 = [NSArray arrayWithObjects:&v20 count:1];
    [(CLBIdleSleepManager *)self performSelector:"_enableTapToWake" withObject:0 afterDelay:v17 inModes:0.25];

    AXPerformBlockOnMainThreadAfterDelay();
    [(CLBIdleSleepManager *)self setProximitySensorCovered:1];
    [(CLBIdleSleepManager *)self setDidReportProximityEvent:0];
  }
}

- (void)_allowIdleSleep
{
  v3 = +[CLFLog commonLog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Allowing idle sleep…", v4, 2u);
  }

  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_allowIdleSleep" object:0];
  [(CLBIdleSleepManager *)self setPreventIdleSleep:0 forReason:@"backlight"];
}

- (void)_preventIdleSleep
{
  v3 = +[CLFLog commonLog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Preventing idle sleep…", v4, 2u);
  }

  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_allowIdleSleep" object:0];
  [(CLBIdleSleepManager *)self setPreventIdleSleep:1 forReason:@"backlight"];
}

- (void)_preventIdleSleepForNumberOfSeconds:(float)seconds
{
  if ([(CLBIdleSleepManager *)self isDisplayDim])
  {
    v5 = +[CLFLog commonLog];
    secondsCopy = seconds;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v10 = secondsCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Preventing idle sleep for %f seconds…", buf, 0xCu);
    }

    [(CLBIdleSleepManager *)self _preventIdleSleep];
    v8 = NSRunLoopCommonModes;
    v7 = [NSArray arrayWithObjects:&v8 count:1];
    [(CLBIdleSleepManager *)self performSelector:"_allowIdleSleep" withObject:0 afterDelay:v7 inModes:secondsCopy];
  }
}

- (void)_setUpAutoLockTime
{
  v3 = +[MCProfileConnection sharedConnection];
  v4 = [v3 effectiveValueForSetting:MCFeatureAutoLockTime];

  if (v4)
  {
    [v4 doubleValue];
    self->_autoLockTime = v5;
    intValue = [v4 intValue];
    v7 = +[CLFLog commonLog];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (intValue == 0x7FFFFFFF)
    {
      if (v8)
      {
        LOWORD(v11) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AutoLock is set to never", &v11, 2u);
      }

      self->_autoLockDisabled = 1;
    }

    else
    {
      if (v8)
      {
        autoLockTime = self->_autoLockTime;
        v11 = 134217984;
        v12 = autoLockTime;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AutoLock set to %f", &v11, 0xCu);
      }
    }
  }

  else
  {
    self->_autoLockTime = 30.0;
    v9 = +[CLFLog commonLog];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Unable to retrieve MCFeatureAutoLockTime using kDefaultAutoLockTime for AutoLock", &v11, 2u);
    }
  }
}

- (void)_powerChangedOnService:(unsigned int)service messageType:(unsigned int)type messageArgument:(void *)argument
{
  v8 = +[CLFLog commonLog];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 67109120;
    v16[1] = type;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received power notification %u", v16, 8u);
  }

  HIDWORD(v10) = type + 536870288;
  LODWORD(v10) = type + 536870288;
  v9 = v10 >> 4;
  if (v9 > 1)
  {
    switch(v9)
    {
      case 2:
        v11 = +[CLFLog commonLog];
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
LABEL_19:

          return;
        }

        LOWORD(v16[0]) = 0;
        v12 = "Received kIOMessageSystemWillNotSleep";
        break;
      case 9:
        v15 = +[CLFLog commonLog];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v16[0]) = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received kIOMessageSystemHasPoweredOn", v16, 2u);
        }

        v11 = +[NSNotificationCenter defaultCenter];
        [v11 postNotificationName:@"CLBDidWakeFromSleepNotification" object:0 userInfo:0];
        goto LABEL_19;
      case 11:
        v11 = +[CLFLog commonLog];
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        LOWORD(v16[0]) = 0;
        v12 = "Received kIOMessageSystemWillPowerOn";
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

    v13 = +[CLFLog commonLog];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    LOWORD(v16[0]) = 0;
    v14 = "Received kIOMessageSystemWillSleep";
    goto LABEL_22;
  }

  v13 = +[CLFLog commonLog];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16[0]) = 0;
    v14 = "Received kIOMessageCanSystemSleep";
LABEL_22:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, v16, 2u);
  }

LABEL_23:

  IOAllowPowerChange(self->_rootDomainConnect, argument);
}

- (void)enableIdleSleep
{
  v3 = +[CLFLog commonLog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Enabling idle sleep…", buf, 2u);
  }

  notifier = 0;
  *buf = 0;
  v4 = IORegistryEntryFromPath(kIOMainPortDefault, "IOPower:/IOPowerConnection/IOPMrootDomain");
  v5 = IORegisterForSystemPower(self, buf, sub_100023CC0, &notifier);
  self->_rootDomainConnect = v5;
  if (v5)
  {
    RunLoopSource = IONotificationPortGetRunLoopSource(*buf);
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
  }

  else
  {
    v8 = +[CLFLog commonLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_10028569C(v8);
    }
  }

  valuePtr = 1;
  v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  IORegistryEntrySetCFProperty(v4, @"System Boot Complete", kCFBooleanTrue);
  IORegistryEntrySetCFProperty(v4, @"System Idle Seconds", v9);
  CFRelease(v9);
  AssertionID = 0;
  IOPMAssertionCreateWithName(@"EnableIdleSleep", 0xFFu, @"com.apple.ClarityBoard.enableidlesleep", &AssertionID);
  [(CLBIdleSleepManager *)self setPreventIdleSleep:1 forReason:0];
  [(CLBIdleSleepManager *)self setFinishedBoot:1];
}

- (void)setPreventIdleSleep:(BOOL)sleep forReason:(id)reason
{
  sleepCopy = sleep;
  reasonCopy = reason;
  v7 = +[CLFLog commonLog];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109378;
    v14[1] = sleepCopy;
    v15 = 2112;
    v16 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Preventing idle sleep (%d) for reason: %@", v14, 0x12u);
  }

  [(CLBIdleSleepManager *)self finishedBoot];
  if (reasonCopy)
  {
    v8 = qword_1003311B8;
    if (sleepCopy)
    {
      if (!qword_1003311B8)
      {
        v9 = [[NSMutableSet alloc] initWithCapacity:2];
        v10 = qword_1003311B8;
        qword_1003311B8 = v9;

        v8 = qword_1003311B8;
      }

      [v8 addObject:reasonCopy];
      goto LABEL_12;
    }

    [qword_1003311B8 removeObject:reasonCopy];
  }

  else if (sleepCopy)
  {
    goto LABEL_12;
  }

  if (![qword_1003311B8 count])
  {
    if (byte_1003311C0 != 1)
    {
      goto LABEL_17;
    }

    v13 = +[CLFLog commonLog];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14[0]) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Releasing kIOPMAssertionTypeNoIdleSleep assertion", v14, 2u);
    }

    IOPMAssertionRelease(dword_1003311B0);
    v12 = 0;
    goto LABEL_16;
  }

LABEL_12:
  if ((byte_1003311C0 & 1) == 0)
  {
    v11 = +[CLFLog commonLog];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14[0]) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Taking out kIOPMAssertionTypeNoIdleSleep assertion", v14, 2u);
    }

    v12 = IOPMAssertionCreateWithName(@"NoIdleSleepAssertion", 0xFFu, @"com.apple.CheckerBoard.idle", &dword_1003311B0) == 0;
LABEL_16:
    byte_1003311C0 = v12;
  }

LABEL_17:
}

- (id)_descriptionForTimeout:(double)timeout
{
  if (timeout == 1.79769313e308)
  {
    v5 = @"infinite";
  }

  else
  {
    v5 = [NSNumber numberWithDouble:v3];
  }

  return v5;
}

- (double)_nextLockTimeDuration
{
  autoLockTime = self->_autoLockTime;
  idleTimerDisabledReasons = [(CLBIdleSleepManager *)self idleTimerDisabledReasons];
  v5 = [idleTimerDisabledReasons count];

  if (v5)
  {
    v6 = +[CLFLog commonLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      idleTimerDisabledReasons2 = [(CLBIdleSleepManager *)self idleTimerDisabledReasons];
      v9 = 138412290;
      v10 = idleTimerDisabledReasons2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Idle timer should be disabled because of the following reasons: %@", &v9, 0xCu);
    }
  }

  else
  {
    if ([(CLBIdleSleepManager *)self shouldSleepForLock])
    {
      v6 = +[CLFLog commonLog];
      autoLockTime = 5.0;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Idle timer should sleep for lock screen. Setting auto lock time to kLockScreenAutoLockTime", &v9, 2u);
      }

      goto LABEL_5;
    }

    if (![(CLBIdleSleepManager *)self isAutoLockDisabled])
    {
      return autoLockTime;
    }

    v6 = +[CLFLog commonLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Auto Lock is disabled", &v9, 2u);
    }
  }

  autoLockTime = 1.79769313e308;
LABEL_5:

  return autoLockTime;
}

- (id)_configurationWithAttentionLostTimeout:(double)timeout
{
  v4 = objc_alloc_init(AWAttentionAwarenessConfiguration);
  [v4 setIdentifier:@"CLBIdleTimer"];
  [v4 setEventMask:3967];
  [v4 setAttentionLostTimeout:timeout];

  return v4;
}

- (void)_resetIdleTimerAndUndim:(BOOL)undim forReason:(int64_t)reason
{
  undimCopy = undim;
  v7 = +[CLFLog commonLog];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v25) = undimCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Resetting idle timer and undim %d", buf, 8u);
  }

  if (undimCopy)
  {
    [(CLBIdleSleepManager *)self _undimDisplayForReason:reason];
  }

  if (![(CLBIdleSleepManager *)self isDisplayDim])
  {
    [(CLBIdleSleepManager *)self _nextLockTimeDuration];
    v9 = v8;
    v10 = [(CLBIdleSleepManager *)self _configurationWithAttentionLostTimeout:?];
    v11 = +[CLFLog commonLog];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(CLBIdleSleepManager *)self _descriptionForTimeout:v9];
      *buf = 138412290;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Setting a new attention awareness configuration with timeout: %@", buf, 0xCu);
    }

    attentionAwarenessClient = [(CLBIdleSleepManager *)self attentionAwarenessClient];
    v23 = 0;
    v14 = [attentionAwarenessClient setConfiguration:v10 shouldReset:1 error:&v23];
    v15 = v23;

    if ((v14 & 1) == 0)
    {
      v16 = +[CLFLog commonLog];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1002856E0(v15, v16, v17, v18, v19, v20, v21, v22);
      }
    }
  }
}

- (void)setIdleTimerDisabled:(BOOL)disabled forReason:(id)reason
{
  disabledCopy = disabled;
  reasonCopy = reason;
  v7 = +[CLFLog commonLog];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 67109120;
    LODWORD(v15) = disabledCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Attempting to set idle timer disabled to %d", &v14, 8u);
  }

  if (reasonCopy)
  {
    idleTimerDisabledReasons = [(CLBIdleSleepManager *)self idleTimerDisabledReasons];
    v9 = [idleTimerDisabledReasons containsObject:reasonCopy];

    if (disabledCopy)
    {
      if ((v9 & 1) == 0)
      {
        v10 = +[CLFLog commonLog];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v14 = 138412290;
          v15 = reasonCopy;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Adding idle timer disabled reason: %@", &v14, 0xCu);
        }

        idleTimerDisabledReasons2 = [(CLBIdleSleepManager *)self idleTimerDisabledReasons];
        [idleTimerDisabledReasons2 addObject:reasonCopy];
LABEL_16:

        [(CLBIdleSleepManager *)self resetIdleTimer];
      }
    }

    else if (v9)
    {
      v13 = +[CLFLog commonLog];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = 138412290;
        v15 = reasonCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Removing idle timer disabled reason: %@", &v14, 0xCu);
      }

      idleTimerDisabledReasons2 = [(CLBIdleSleepManager *)self idleTimerDisabledReasons];
      [idleTimerDisabledReasons2 removeObject:reasonCopy];
      goto LABEL_16;
    }
  }

  else
  {
    v12 = +[CLFLog commonLog];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Ignoring request since idle timer disabled reason was not specified…", &v14, 2u);
    }
  }
}

- (void)_initTapToWake
{
  v3 = +[CLFLog commonLog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Initializing tap to wake", buf, 2u);
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
    v6 = [[SBFTapToWakeGestureRecognizer alloc] initWithTarget:self action:"_tapToWake:"];
    tapToWakeGestureRecognizer = self->_tapToWakeGestureRecognizer;
    self->_tapToWakeGestureRecognizer = v6;

    [(SBFTapToWakeGestureRecognizer *)self->_tapToWakeGestureRecognizer setEnabled:0];
    v8 = +[_UISystemGestureManager sharedInstance];
    v9 = self->_tapToWakeGestureRecognizer;
    v10 = +[FBDisplayManager mainConfiguration];
    identity = [v10 identity];
    [v8 addGestureRecognizer:v9 recognitionEvent:2 toDisplayWithIdentity:identity];

    v12 = +[CLFLog commonLog];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Tap to wake is supported and has been set up.", v14, 2u);
    }
  }

  else
  {
    v8 = +[CLFLog commonLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Hardware does not support tap to wake.", v13, 2u);
    }
  }
}

- (void)_tapToWake:(id)wake
{
  if ([wake state] == 3)
  {
    v4 = +[CLFLog commonLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Tap to wake performed!", v5, 2u);
    }

    if ([(CLBIdleSleepManager *)self isDisplayDim])
    {
      [(CLBIdleSleepManager *)self resetIdleTimerAndUndimForReason:7];
    }
  }
}

- (void)_enableTapToWake
{
  if ([(CLBIdleSleepManager *)self tapToWakeSupported]== 1)
  {
    v3 = +[UIKeyboard activeKeyboard];
    v4 = v3;
    if (v3 && ([v3 isMinimized] & 1) == 0)
    {
      [v4 setMinimized:1];
    }

    v5 = [BKSTouchStream alloc];
    tapToWakeWindow = [(CLBIdleSleepManager *)self tapToWakeWindow];
    _contextId = [tapToWakeWindow _contextId];
    v8 = objc_alloc_init(BKSTouchStreamPolicy);
    v9 = [v5 initWithContextID:_contextId displayUUID:0 identifier:1 policy:v8];
    [(CLBIdleSleepManager *)self setTapToWakeTouchStream:v9];

    tapToWakeGestureRecognizer = [(CLBIdleSleepManager *)self tapToWakeGestureRecognizer];
    [tapToWakeGestureRecognizer setEnabled:1];

    v11 = +[CLFLog commonLog];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Tap to Wake enabled", v12, 2u);
    }
  }
}

- (void)_disableTapToWake
{
  if ([(CLBIdleSleepManager *)self tapToWakeSupported]== 1)
  {
    tapToWakeGestureRecognizer = [(CLBIdleSleepManager *)self tapToWakeGestureRecognizer];
    [tapToWakeGestureRecognizer setEnabled:0];

    tapToWakeTouchStream = [(CLBIdleSleepManager *)self tapToWakeTouchStream];

    if (tapToWakeTouchStream)
    {
      tapToWakeTouchStream2 = [(CLBIdleSleepManager *)self tapToWakeTouchStream];
      [tapToWakeTouchStream2 invalidate];

      [(CLBIdleSleepManager *)self setTapToWakeTouchStream:0];
    }

    v6 = +[UIKeyboard activeKeyboard];
    if (v6)
    {
      [v6 setMinimized:{+[UIKeyboard isInHardwareKeyboardMode](UIKeyboard, "isInHardwareKeyboardMode")}];
    }

    v7 = +[CLFLog commonLog];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Tap to Wake disabled", v8, 2u);
    }
  }
}

- (id)acquireIdleTimerAssertionWithConfiguration:(id)configuration fromClient:(id)client forReason:(id)reason
{
  configurationCopy = configuration;
  clientCopy = client;
  reasonCopy = reason;
  serviceCalloutQueue = [(CLBIdleSleepManager *)self serviceCalloutQueue];
  BSDispatchQueueAssert();

  v12 = +[CLFLog commonLog];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    bundleIdentifier = [clientCopy bundleIdentifier];
    *buf = 138544130;
    v30 = v14;
    v31 = 2114;
    v32 = configurationCopy;
    v33 = 2114;
    v34 = bundleIdentifier;
    v35 = 2114;
    v36 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@ - acquireIdleTimerAssertionWithConfiguration:%{public}@ fromClient:%{public}@ forReason:%{public}@]", buf, 0x2Au);
  }

  if ([configurationCopy disablesTimer])
  {
    [(CLBIdleSleepManager *)self setIdleTimerDisabled:1 forReason:reasonCopy];
    objc_initWeak(buf, self);
    bundleIdentifier2 = [clientCopy bundleIdentifier];
    v17 = [NSString stringWithFormat:@"%@:%@", @"IdleTimerClient", bundleIdentifier2];

    v18 = [BSSimpleAssertion alloc];
    serviceCalloutQueue2 = [(CLBIdleSleepManager *)self serviceCalloutQueue];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100024DAC;
    v26[3] = &unk_1002FCFF8;
    objc_copyWeak(&v28, buf);
    v26[4] = self;
    v27 = reasonCopy;
    v20 = [v18 initWithIdentifier:v17 forReason:v27 queue:serviceCalloutQueue2 invalidationBlock:v26];

    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }

  else
  {
    v21 = +[CLFLog commonLog];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      bundleIdentifier3 = [clientCopy bundleIdentifier];
      *buf = 138543874;
      v30 = v24;
      v31 = 2114;
      v32 = configurationCopy;
      v33 = 2114;
      v34 = bundleIdentifier3;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "[%{public}@ - requested configuration: %{public}@ from client: %{public}@ is not supported.]", buf, 0x20u);
    }

    v20 = 0;
  }

  return v20;
}

@end