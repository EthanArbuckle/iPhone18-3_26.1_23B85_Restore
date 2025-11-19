@interface BKSAccelerometer
- (BKSAccelerometer)init;
- (BKSAccelerometerDelegate)delegate;
- (int64_t)currentDeviceOrientation;
- (void)_checkIn;
- (void)_checkOut;
- (void)_orientationDidChange;
- (void)_registerForOrientationNotifications;
- (void)_serverWasRestarted;
- (void)_updateOrientationServer;
- (void)dealloc;
- (void)setAccelerometerEventsEnabled:(BOOL)a3;
- (void)setOrientationEventsEnabled:(BOOL)a3;
- (void)setPassiveOrientationEvents:(BOOL)a3;
- (void)setUpdateInterval:(double)a3;
- (void)setXThreshold:(float)a3;
- (void)setYThreshold:(float)a3;
- (void)setZThreshold:(float)a3;
@end

@implementation BKSAccelerometer

- (BKSAccelerometer)init
{
  v13 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = BKSAccelerometer;
  v2 = [(BKSAccelerometer *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    lock = v2->_lock;
    v2->_lock = v3;

    if (notify_register_check("com.apple.backboardd.rawOrientation", &v2->_orientationCheckToken))
    {
      v5 = BKLogCommon();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = objc_opt_class();
        *buf = 138543362;
        v12 = v8;
        v9 = v8;
        _os_log_error_impl(&dword_186345000, v5, OS_LOG_TYPE_ERROR, "%{public}@ unable to create notifyd token for device orientation", buf, 0xCu);
      }
    }

    v2->_passiveOrientationEvents = 1;
    mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &v2->_orientationPort);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

- (int64_t)currentDeviceOrientation
{
  state64 = 0;
  notify_get_state(self->_orientationCheckToken, &state64);
  return state64;
}

- (void)_updateOrientationServer
{
  v3 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  orientationPort = self->_orientationPort;
  orientationEventsEnabled = self->_orientationEventsEnabled;
  passiveOrientationEvents = self->_passiveOrientationEvents;

  _BKSHIDSetOrientationClientEventsEnabled(v3, orientationPort, orientationEventsEnabled, passiveOrientationEvents);
}

- (void)_registerForOrientationNotifications
{
  v3 = dispatch_get_global_queue(0, 0);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __56__BKSAccelerometer__registerForOrientationNotifications__block_invoke;
  handler[3] = &unk_1E6F46F60;
  handler[4] = self;
  notify_register_dispatch("com.apple.backboardd.rawOrientation", &self->_orientationNotificationsToken, v3, handler);
}

- (void)_checkIn
{
  name.perform = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__checkIn object:0];
  if (!self->_accelerometerEventsSource)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, self, _serverWasRestarted, @"kBKSHIDServerDiedNotification", 0, 0);
    LODWORD(name.version) = 0;
    v5 = MEMORY[0x1E69E9A60];
    v6 = mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &name);
    if (v6)
    {
      v16 = v6;
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = objc_opt_class();
      [v17 handleFailureInMethod:a2 object:self file:@"BKSAccelerometer.m" lineNumber:147 description:{@"%@ unable to allocate notification receive port: %s", v18, mach_error_string(v16)}];
    }

    v20 = 2;
    MEMORY[0x186605820](*v5, LODWORD(name.version), 1, &v20, 1);
    v7 = BKCreateMIGServerSourceWithContext(&_BKXXBKAccelerometer_subsystem, name.version, 0, self);
    self->_accelerometerEventsSource = v7;
    if (!v7)
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      [v19 handleFailureInMethod:a2 object:self file:@"BKSAccelerometer.m" lineNumber:154 description:{@"%@ unable to create run loop source", objc_opt_class()}];
    }

    Current = CFRunLoopGetCurrent();
    self->_accelerometerEventsRunLoop = Current;
    CFRetain(Current);
    CFRunLoopAddSource(self->_accelerometerEventsRunLoop, self->_accelerometerEventsSource, *MEMORY[0x1E695E8D0]);
  }

  v9 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  accelerometerEventsSource = self->_accelerometerEventsSource;
  memset(&name.info, 0, 64);
  name.version = 1;
  CFRunLoopSourceGetContext(accelerometerEventsSource, &name);
  v11 = _BKSHIDSetAccelerometerClientEventsEnabled(v9, *name.info, 0, self->_updateInterval, self->_xThreshold, self->_yThreshold, self->_zThreshold);
  if (v11)
  {
    v12 = v11;
    if (v11 == 268435460)
    {
      v13 = [MEMORY[0x1E695DEC8] arrayWithObject:*MEMORY[0x1E695DA28]];
      [(BKSAccelerometer *)self performSelector:sel__checkIn withObject:0 afterDelay:v13 inModes:1.0];
    }

    else
    {
      v13 = BKLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = mach_error_string(v12);
        LODWORD(name.version) = 136446210;
        *(&name.version + 4) = v15;
        _os_log_error_impl(&dword_186345000, v13, OS_LOG_TYPE_ERROR, "BKSetAccelerometerClientEventsEnabled failed: %{public}s", &name, 0xCu);
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_checkOut
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__checkIn object:0];
  if (self->_accelerometerEventsSource)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterRemoveObserver(LocalCenter, self, @"kBKSHIDServerDiedNotification", 0);
    accelerometerEventsSource = self->_accelerometerEventsSource;
    memset(&context.info, 0, 64);
    context.version = 1;
    CFRunLoopSourceGetContext(accelerometerEventsSource, &context);
    v5 = *context.info;
    CFRunLoopSourceInvalidate(self->_accelerometerEventsSource);
    CFRelease(self->_accelerometerEventsSource);
    self->_accelerometerEventsSource = 0;
    CFRelease(self->_accelerometerEventsRunLoop);
    v6 = MEMORY[0x1E69E9A60];
    self->_accelerometerEventsRunLoop = 0;
    v7 = *v6;

    mach_port_mod_refs(v7, v5, 1u, -1);
  }
}

- (BKSAccelerometerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_orientationDidChange
{
  v3 = [(BKSAccelerometer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 accelerometer:self didChangeDeviceOrientation:{-[BKSAccelerometer currentDeviceOrientation](self, "currentDeviceOrientation")}];
  }
}

- (void)setOrientationEventsEnabled:(BOOL)a3
{
  if (self->_orientationEventsEnabled != a3)
  {
    v3 = a3;
    self->_orientationEventsEnabled = a3;
    [(BKSAccelerometer *)self _updateOrientationServer];
    if (v3)
    {
      v5 = [MEMORY[0x1E696AF00] currentThread];
      orientationEventsThread = self->_orientationEventsThread;
      self->_orientationEventsThread = v5;

      [(BKSAccelerometer *)self _registerForOrientationNotifications];
    }

    else
    {
      notify_cancel(self->_orientationNotificationsToken);
      v7 = self->_orientationEventsThread;
      self->_orientationEventsThread = 0;
    }
  }
}

- (void)setPassiveOrientationEvents:(BOOL)a3
{
  if (self->_passiveOrientationEvents != a3)
  {
    self->_passiveOrientationEvents = a3;
    [(BKSAccelerometer *)self _updateOrientationServer];
  }
}

- (void)_serverWasRestarted
{
  [(NSLock *)self->_lock lock];
  if (self->_accelerometerEventsSource)
  {
    [(BKSAccelerometer *)self _checkIn];
  }

  if (self->_orientationEventsEnabled)
  {
    [(BKSAccelerometer *)self _updateOrientationServer];
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)setZThreshold:(float)a3
{
  if (self->_zThreshold != a3)
  {
    self->_zThreshold = a3;
    [(NSLock *)self->_lock lock];
    if (self->_accelerometerEventsSource)
    {
      [(BKSAccelerometer *)self _checkIn];
    }

    lock = self->_lock;

    [(NSLock *)lock unlock];
  }
}

- (void)setYThreshold:(float)a3
{
  if (self->_yThreshold != a3)
  {
    self->_yThreshold = a3;
    [(NSLock *)self->_lock lock];
    if (self->_accelerometerEventsSource)
    {
      [(BKSAccelerometer *)self _checkIn];
    }

    lock = self->_lock;

    [(NSLock *)lock unlock];
  }
}

- (void)setXThreshold:(float)a3
{
  if (self->_xThreshold != a3)
  {
    self->_xThreshold = a3;
    [(NSLock *)self->_lock lock];
    if (self->_accelerometerEventsSource)
    {
      [(BKSAccelerometer *)self _checkIn];
    }

    lock = self->_lock;

    [(NSLock *)lock unlock];
  }
}

- (void)setUpdateInterval:(double)a3
{
  if (self->_updateInterval != a3)
  {
    self->_updateInterval = a3;
    [(NSLock *)self->_lock lock];
    if (self->_accelerometerEventsSource)
    {
      [(BKSAccelerometer *)self _checkIn];
    }

    lock = self->_lock;

    [(NSLock *)lock unlock];
  }
}

- (void)setAccelerometerEventsEnabled:(BOOL)a3
{
  v3 = a3;
  [(NSLock *)self->_lock lock];
  if ([(BKSAccelerometer *)self accelerometerEventsEnabled]!= v3)
  {
    if (v3)
    {
      [(BKSAccelerometer *)self _checkIn];
    }

    else
    {
      [(BKSAccelerometer *)self _checkOut];
    }
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)dealloc
{
  [(BKSAccelerometer *)self setAccelerometerEventsEnabled:0];
  [(BKSAccelerometer *)self setOrientationEventsEnabled:0];
  notify_cancel(self->_orientationCheckToken);
  orientationPort = self->_orientationPort;
  if (orientationPort + 1 >= 2)
  {
    mach_port_mod_refs(*MEMORY[0x1E69E9A60], orientationPort, 1u, -1);
  }

  v4.receiver = self;
  v4.super_class = BKSAccelerometer;
  [(BKSAccelerometer *)&v4 dealloc];
}

@end