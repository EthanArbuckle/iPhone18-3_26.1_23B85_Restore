@interface DisplayManager
+ (id)sharedInstance;
- (DisplayManager)init;
- (id)configurationWithAttentionLostTimeout:(double)a3;
- (void)_allowIdleSleep;
- (void)_disableTapToWake;
- (void)_enableTapToWake;
- (void)_initTapToWake;
- (void)_powerChangedOnService:(unsigned int)a3 messageType:(unsigned int)a4 messageArgument:(void *)a5;
- (void)_preventIdleSleep;
- (void)_preventIdleSleepForNumberOfSeconds:(float)a3;
- (void)_screenBlanked;
- (void)_setHIDUILockedState:(BOOL)a3;
- (void)_tapToWake:(id)a3;
- (void)_undimDisplay;
- (void)dealloc;
- (void)dimDisplay;
- (void)enableIdleSleep;
- (void)resetIdleTimerAndUndim:(BOOL)a3;
- (void)setIdleTimerDisabled:(BOOL)a3 forReason:(id)a4;
- (void)setPreventIdleSleep:(BOOL)a3 forReason:(id)a4;
- (void)toggleDisplay;
- (void)undimDisplay;
@end

@implementation DisplayManager

+ (id)sharedInstance
{
  if (qword_100032128 != -1)
  {
    sub_10001272C();
  }

  v3 = qword_100032120;

  return v3;
}

- (DisplayManager)init
{
  v14.receiver = self;
  v14.super_class = DisplayManager;
  v2 = [(DisplayManager *)&v14 init];
  if (v2)
  {
    v3 = sub_100012608();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v16 = "[DisplayManager init]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Registering idle timer notifications…", buf, 0xCu);
    }

    v4 = objc_alloc_init(NSMutableSet);
    idleTimerDisabledReasons = v2->_idleTimerDisabledReasons;
    v2->_idleTimerDisabledReasons = v4;

    v6 = [(DisplayManager *)v2 configurationWithAttentionLostTimeout:30.0];
    v7 = objc_alloc_init(AWAttentionAwarenessClient);
    attentionAwarenessClient = v2->_attentionAwarenessClient;
    v2->_attentionAwarenessClient = v7;

    [(AWAttentionAwarenessClient *)v2->_attentionAwarenessClient setConfiguration:v6 shouldReset:1];
    [(DisplayManager *)v2 _initTapToWake];
    objc_initWeak(buf, v2);
    v9 = v2->_attentionAwarenessClient;
    v10 = &_dispatch_main_q;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100005058;
    v12[3] = &unk_100028820;
    objc_copyWeak(&v13, buf);
    [(AWAttentionAwarenessClient *)v9 setEventHandlerWithQueue:&_dispatch_main_q block:v12];

    BKSHIDServicesAmbientLightSensorEnableAutoBrightness();
    v2->_displayDim = 0;
    [(DisplayManager *)v2 _undimDisplay];
    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  return v2;
}

- (void)dealloc
{
  v3 = sub_100012608();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v9 = "[DisplayManager dealloc]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Dealloc was called", buf, 0xCu);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  p_rootDomainConnect = &self->_rootDomainConnect;
  if (self->_rootDomainConnect)
  {
    v6 = sub_100012608();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v9 = "[DisplayManager dealloc]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Deregistering and closing connection", buf, 0xCu);
    }

    IODeregisterForSystemPower(&self->_rootDomainConnect);
    IOServiceClose(*p_rootDomainConnect);
    *p_rootDomainConnect = 0;
  }

  v7.receiver = self;
  v7.super_class = DisplayManager;
  [(DisplayManager *)&v7 dealloc];
}

- (id)configurationWithAttentionLostTimeout:(double)a3
{
  v4 = objc_alloc_init(AWAttentionAwarenessConfiguration);
  [v4 setIdentifier:@"DRIdleTimer"];
  [v4 setEventMask:3967];
  [v4 setAttentionLostTimeout:a3];

  return v4;
}

- (void)_setHIDUILockedState:(BOOL)a3
{
  if (byte_100031918 != a3)
  {
    v3 = a3;
    v4 = sub_100012608();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136446466;
      v6 = "[DisplayManager _setHIDUILockedState:]";
      v7 = 1024;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Setting UI locked state to %d", &v5, 0x12u);
    }

    BKSHIDServicesSetHIDUILockedState();
    byte_100031918 = v3;
  }
}

- (void)_undimDisplay
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"DRScreenWillUndimNotification" object:0];

  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_screenBlanked" object:0];
  [(DisplayManager *)self _disableTapToWake];
  v4 = sub_100012608();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v12 = "[DisplayManager _undimDisplay]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Undimming display…", buf, 0xCu);
  }

  BKSDisplayServicesSetScreenBlanked();
  BKSHIDServicesSetBacklightFactorWithFadeDuration();
  [(DisplayManager *)self setDisplayDim:0];
  attentionAwarenessClient = self->_attentionAwarenessClient;
  v10 = 0;
  v6 = [(AWAttentionAwarenessClient *)attentionAwarenessClient resumeWithError:&v10];
  v7 = v10;
  if ((v6 & 1) == 0)
  {
    v8 = sub_100012608();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100012740();
    }
  }

  [(DisplayManager *)self _preventIdleSleep];
  [(DisplayManager *)self _setHIDUILockedState:0];
  v9 = +[NSNotificationCenter defaultCenter];
  [v9 postNotificationName:@"DRScreenDidUndimNotification" object:0];
}

- (void)undimDisplay
{
  if ([(DisplayManager *)self isDisplayDim])
  {
    v3 = sub_100012608();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136446210;
      v5 = "[DisplayManager undimDisplay]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Display is off. Turning display on…", &v4, 0xCu);
    }

    [(DisplayManager *)self _undimDisplay];
  }
}

- (void)toggleDisplay
{
  v3 = [(DisplayManager *)self isDisplayDim];
  v4 = sub_100012608();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = 136446210;
      v7 = "[DisplayManager toggleDisplay]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Toggling display. Display is off, undimming display…", &v6, 0xCu);
    }

    [(DisplayManager *)self undimDisplay];
  }

  else
  {
    if (v5)
    {
      v6 = 136446210;
      v7 = "[DisplayManager toggleDisplay]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Toggling display. Display is on, dimming display…", &v6, 0xCu);
    }

    [(DisplayManager *)self dimDisplay];
  }
}

- (void)dimDisplay
{
  if (![(DisplayManager *)self isDisplayDim])
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 postNotificationName:@"DRScreenWillDimNotification" object:0];

    v4 = sub_100012608();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v15 = "[DisplayManager dimDisplay]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Dimming display…", buf, 0xCu);
    }

    BKSHIDServicesSetBacklightFactorWithFadeDuration();
    [(DisplayManager *)self setDisplayDim:1];
    attentionAwarenessClient = self->_attentionAwarenessClient;
    v12 = 0;
    v6 = [(AWAttentionAwarenessClient *)attentionAwarenessClient suspendWithError:&v12];
    v7 = v12;
    if ((v6 & 1) == 0)
    {
      v9 = sub_100012608();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000127BC();
      }
    }

    LODWORD(v8) = 1.0;
    [(DisplayManager *)self _preventIdleSleepForNumberOfSeconds:v8];
    [(DisplayManager *)self _setHIDUILockedState:1];
    v13 = NSRunLoopCommonModes;
    v10 = [NSArray arrayWithObjects:&v13 count:1];
    [(DisplayManager *)self performSelector:"_screenBlanked" withObject:0 afterDelay:v10 inModes:0.25];

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 postNotificationName:@"DRScreenDidDimNotification" object:0];
  }
}

- (void)_screenBlanked
{
  BKSDisplayServicesSetScreenBlanked();

  [(DisplayManager *)self _enableTapToWake];
}

- (void)_allowIdleSleep
{
  v3 = sub_100012608();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[DisplayManager _allowIdleSleep]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Allowing idle sleep…", &v4, 0xCu);
  }

  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_allowIdleSleep" object:0];
  [(DisplayManager *)self setPreventIdleSleep:0 forReason:@"backlight"];
}

- (void)_preventIdleSleep
{
  v3 = sub_100012608();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[DisplayManager _preventIdleSleep]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Preventing idle sleep…", &v4, 0xCu);
  }

  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_allowIdleSleep" object:0];
  [(DisplayManager *)self setPreventIdleSleep:1 forReason:@"backlight"];
}

- (void)_preventIdleSleepForNumberOfSeconds:(float)a3
{
  if ([(DisplayManager *)self isDisplayDim])
  {
    v5 = sub_100012608();
    v6 = a3;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v10 = "[DisplayManager _preventIdleSleepForNumberOfSeconds:]";
      v11 = 2048;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Preventing idle sleep for %f seconds…", buf, 0x16u);
    }

    [(DisplayManager *)self _preventIdleSleep];
    v8 = NSRunLoopCommonModes;
    v7 = [NSArray arrayWithObjects:&v8 count:1];
    [(DisplayManager *)self performSelector:"_allowIdleSleep" withObject:0 afterDelay:v7 inModes:v6];
  }
}

- (void)_powerChangedOnService:(unsigned int)a3 messageType:(unsigned int)a4 messageArgument:(void *)a5
{
  v8 = sub_100012608();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136446466;
    v17 = "[DisplayManager _powerChangedOnService:messageType:messageArgument:]";
    v18 = 1024;
    v19 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Received power notification %u", &v16, 0x12u);
  }

  HIDWORD(v10) = a4 + 536870288;
  LODWORD(v10) = a4 + 536870288;
  v9 = v10 >> 4;
  if (v9 > 1)
  {
    switch(v9)
    {
      case 2:
        v11 = sub_100012608();
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
LABEL_19:

          return;
        }

        v16 = 136446210;
        v17 = "[DisplayManager _powerChangedOnService:messageType:messageArgument:]";
        v12 = "%{public}s: [DisplayManager] Received kIOMessageSystemWillNotSleep";
        break;
      case 9:
        v15 = sub_100012608();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136446210;
          v17 = "[DisplayManager _powerChangedOnService:messageType:messageArgument:]";
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Received kIOMessageSystemHasPoweredOn", &v16, 0xCu);
        }

        v11 = +[NSNotificationCenter defaultCenter];
        [v11 postNotificationName:@"DRDidWakeFromSleepNotification" object:0 userInfo:0];
        goto LABEL_19;
      case 11:
        v11 = sub_100012608();
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        v16 = 136446210;
        v17 = "[DisplayManager _powerChangedOnService:messageType:messageArgument:]";
        v12 = "%{public}s: [DisplayManager] Received kIOMessageSystemWillPowerOn";
        break;
      default:
        return;
    }

    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, &v16, 0xCu);
    goto LABEL_19;
  }

  if (v9)
  {
    if (v9 != 1)
    {
      return;
    }

    v13 = sub_100012608();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v16 = 136446210;
    v17 = "[DisplayManager _powerChangedOnService:messageType:messageArgument:]";
    v14 = "%{public}s: [DisplayManager] Received kIOMessageSystemWillSleep";
    goto LABEL_22;
  }

  v13 = sub_100012608();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136446210;
    v17 = "[DisplayManager _powerChangedOnService:messageType:messageArgument:]";
    v14 = "%{public}s: [DisplayManager] Received kIOMessageCanSystemSleep";
LABEL_22:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, &v16, 0xCu);
  }

LABEL_23:

  IOAllowPowerChange(self->_rootDomainConnect, a5);
}

- (void)enableIdleSleep
{
  v3 = sub_100012608();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = "[DisplayManager enableIdleSleep]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Enabling idle sleep…", buf, 0xCu);
  }

  notifier = 0;
  *buf = 0;
  v4 = IORegistryEntryFromPath(kIOMainPortDefault, "IOPower:/IOPowerConnection/IOPMrootDomain");
  v5 = IORegisterForSystemPower(self, buf, sub_10000618C, &notifier);
  self->_rootDomainConnect = v5;
  if (v5)
  {
    RunLoopSource = IONotificationPortGetRunLoopSource(*buf);
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
  }

  else
  {
    v8 = sub_100012608();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100012838();
    }
  }

  valuePtr = 1;
  v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  IORegistryEntrySetCFProperty(v4, @"System Boot Complete", kCFBooleanTrue);
  IORegistryEntrySetCFProperty(v4, @"System Idle Seconds", v9);
  CFRelease(v9);
  AssertionID = 0;
  IOPMAssertionCreateWithName(@"EnableIdleSleep", 0xFFu, @"com.apple.DeviceRecovery.enableidlesleep", &AssertionID);
  [(DisplayManager *)self setPreventIdleSleep:1 forReason:0];
  [(DisplayManager *)self setFinishedBoot:1];
}

- (void)setPreventIdleSleep:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = sub_100012608();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136446722;
    v15 = "[DisplayManager setPreventIdleSleep:forReason:]";
    v16 = 1024;
    v17 = v4;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Preventing idle sleep (%d) for reason: %@", &v14, 0x1Cu);
  }

  [(DisplayManager *)self finishedBoot];
  if (v6)
  {
    v8 = qword_100032138;
    if (v4)
    {
      if (!qword_100032138)
      {
        v9 = [[NSMutableSet alloc] initWithCapacity:2];
        v10 = qword_100032138;
        qword_100032138 = v9;

        v8 = qword_100032138;
      }

      [v8 addObject:v6];
      goto LABEL_12;
    }

    [qword_100032138 removeObject:v6];
  }

  else if (v4)
  {
    goto LABEL_12;
  }

  if (![qword_100032138 count])
  {
    if (byte_100032140 != 1)
    {
      goto LABEL_17;
    }

    v13 = sub_100012608();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136446210;
      v15 = "[DisplayManager setPreventIdleSleep:forReason:]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Releasing kIOPMAssertionTypeNoIdleSleep assertion", &v14, 0xCu);
    }

    IOPMAssertionRelease(dword_100032130);
    v12 = 0;
    goto LABEL_16;
  }

LABEL_12:
  if ((byte_100032140 & 1) == 0)
  {
    v11 = sub_100012608();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136446210;
      v15 = "[DisplayManager setPreventIdleSleep:forReason:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Taking out kIOPMAssertionTypeNoIdleSleep assertion", &v14, 0xCu);
    }

    v12 = IOPMAssertionCreateWithName(@"NoIdleSleepAssertion", 0xFFu, @"com.apple.DeviceRecovery.idle", &dword_100032130) == 0;
LABEL_16:
    byte_100032140 = v12;
  }

LABEL_17:
}

- (void)resetIdleTimerAndUndim:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100012608();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v16 = "[DisplayManager resetIdleTimerAndUndim:]";
    v17 = 1024;
    LODWORD(v18) = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Resetting idle timer and undim %d", buf, 0x12u);
  }

  if (v3)
  {
    [(DisplayManager *)self undimDisplay];
  }

  if (![(DisplayManager *)self isDisplayDim])
  {
    v6 = [(DisplayManager *)self idleTimerDisabledReasons];
    if ([v6 count])
    {
      v7 = 1.79769313e308;
    }

    else
    {
      v7 = 30.0;
    }

    v8 = [(DisplayManager *)self configurationWithAttentionLostTimeout:v7];
    v9 = sub_100012608();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v16 = "[DisplayManager resetIdleTimerAndUndim:]";
      v17 = 2048;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Setting a new attention awareness configuration with timeout: %f", buf, 0x16u);
    }

    v10 = [(DisplayManager *)self attentionAwarenessClient];
    v14 = 0;
    v11 = [v10 setConfiguration:v8 shouldReset:1 error:&v14];
    v12 = v14;

    if ((v11 & 1) == 0)
    {
      v13 = sub_100012608();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000128B8();
      }
    }
  }
}

- (void)setIdleTimerDisabled:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = sub_100012608();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136446466;
    v15 = "[DisplayManager setIdleTimerDisabled:forReason:]";
    v16 = 1024;
    LODWORD(v17) = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Attempting to set idle timer disabled to %d", &v14, 0x12u);
  }

  if (v6)
  {
    v8 = [(DisplayManager *)self idleTimerDisabledReasons];
    v9 = [v8 containsObject:v6];

    if (v4)
    {
      if ((v9 & 1) == 0)
      {
        v10 = sub_100012608();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 136446466;
          v15 = "[DisplayManager setIdleTimerDisabled:forReason:]";
          v16 = 2112;
          v17 = v6;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Adding idle timer disabled reason: %@", &v14, 0x16u);
        }

        v11 = [(DisplayManager *)self idleTimerDisabledReasons];
        [v11 addObject:v6];
LABEL_16:

        [(DisplayManager *)self resetIdleTimerAndUndim:1];
      }
    }

    else if (v9)
    {
      v13 = sub_100012608();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136446466;
        v15 = "[DisplayManager setIdleTimerDisabled:forReason:]";
        v16 = 2112;
        v17 = v6;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Removing idle timer disabled reason: %@", &v14, 0x16u);
      }

      v11 = [(DisplayManager *)self idleTimerDisabledReasons];
      [v11 removeObject:v6];
      goto LABEL_16;
    }
  }

  else
  {
    v12 = sub_100012608();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136446210;
      v15 = "[DisplayManager setIdleTimerDisabled:forReason:]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Ignoring request since idle timer disabled reason was not specified…", &v14, 0xCu);
    }
  }
}

- (void)_initTapToWake
{
  v3 = sub_100012608();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136446210;
    v15 = "[DisplayManager _initTapToWake]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Initializing tap to wake", &v14, 0xCu);
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
    v11 = [v7 displayIdentity];
    [v6 addGestureRecognizer:v10 toDisplayWithIdentity:v11];

    v12 = sub_100012608();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136446210;
      v15 = "[DisplayManager _initTapToWake]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Tap to wake is supported and has been set up.", &v14, 0xCu);
    }

    v13 = sub_100012608();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100012934();
    }
  }

  else
  {
    v6 = sub_100012608();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136446210;
      v15 = "[DisplayManager _initTapToWake]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Hardware does not support tap to wake.", &v14, 0xCu);
    }
  }
}

- (void)_tapToWake:(id)a3
{
  if ([a3 state] == 3)
  {
    v4 = sub_100012608();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136446210;
      v6 = "[DisplayManager _tapToWake:]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Tap to wake performed!", &v5, 0xCu);
    }

    if ([(DisplayManager *)self isDisplayDim])
    {
      [(DisplayManager *)self resetIdleTimerAndUndim:1];
    }
  }
}

- (void)_enableTapToWake
{
  if ([(DisplayManager *)self tapToWakeSupported]== 1)
  {
    dispatch_async(&_dispatch_main_q, &stru_100028840);
    v3 = [(DisplayManager *)self tapToWakeGestureRecognizer];
    [v3 setEnabled:1];

    v4 = sub_100012608();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136446210;
      v6 = "[DisplayManager _enableTapToWake]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Tap to Wake enabled", &v5, 0xCu);
    }
  }
}

- (void)_disableTapToWake
{
  if ([(DisplayManager *)self tapToWakeSupported]== 1)
  {
    v3 = [(DisplayManager *)self tapToWakeGestureRecognizer];
    [v3 setEnabled:0];

    dispatch_async(&_dispatch_main_q, &stru_100028860);
    v4 = sub_100012608();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136446210;
      v6 = "[DisplayManager _disableTapToWake]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Tap to Wake disabled", &v5, 0xCu);
    }
  }
}

@end