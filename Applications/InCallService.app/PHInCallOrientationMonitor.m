@interface PHInCallOrientationMonitor
+ (id)sharedInstance;
- (BOOL)isSpringBoardInterfaceOrientationLocked;
- (PHInCallOrientationMonitor)init;
- (int64_t)activeInterfaceOrientation;
- (int64_t)currentOrientation;
- (int64_t)deviceOrientation;
- (int64_t)lastValidOrientation;
- (int64_t)springBoardLockedInterfaceOrientation;
- (void)_updateCachedOrientationValues;
- (void)accelerometer:(id)a3 didChangeDeviceOrientation:(int64_t)a4;
- (void)dealloc;
- (void)setCurrentOrientation:(int64_t)a3;
- (void)setIsOrientationLocked:(BOOL)a3;
- (void)setOrientationEventsEnabled:(BOOL)a3;
@end

@implementation PHInCallOrientationMonitor

+ (id)sharedInstance
{
  if (qword_1003B0F98 != -1)
  {
    sub_1002570F8();
  }

  v3 = qword_1003B0F90;

  return v3;
}

- (PHInCallOrientationMonitor)init
{
  v7.receiver = self;
  v7.super_class = PHInCallOrientationMonitor;
  v2 = [(PHInCallOrientationMonitor *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(BKSAccelerometer);
    accelerometer = v2->_accelerometer;
    v2->_accelerometer = v3;

    [(BKSAccelerometer *)v2->_accelerometer setDelegate:v2];
    [(PHInCallOrientationMonitor *)v2 _updateCachedOrientationValues];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_10010F3D4, @"com.apple.backboardd.orientationlock", 0, CFNotificationSuspensionBehaviorDrop);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  [(BKSAccelerometer *)self->_accelerometer setOrientationEventsEnabled:0];
  [(BKSAccelerometer *)self->_accelerometer setPassiveOrientationEvents:1];
  [(BKSAccelerometer *)self->_accelerometer setDelegate:0];
  v4.receiver = self;
  v4.super_class = PHInCallOrientationMonitor;
  [(PHInCallOrientationMonitor *)&v4 dealloc];
}

- (void)_updateCachedOrientationValues
{
  [(PHInCallOrientationMonitor *)self setCurrentOrientation:[(BKSAccelerometer *)self->_accelerometer currentDeviceOrientation]];
  if ([(PHInCallOrientationMonitor *)self isSpringBoardInterfaceOrientationLocked])
  {
    self->_lockedOrientation = [(PHInCallOrientationMonitor *)self springBoardLockedInterfaceOrientation];
    self->_isOrientationLocked = 1;
  }
}

- (void)setOrientationEventsEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setOrientationEventsEnabled: %d", v7, 8u);
  }

  [(BKSAccelerometer *)self->_accelerometer setOrientationEventsEnabled:v3];
  v6 = v3 ^ 1;
  [(BKSAccelerometer *)self->_accelerometer setPassiveOrientationEvents:v6];
  if ((v6 & 1) == 0)
  {
    [(PHInCallOrientationMonitor *)self _updateCachedOrientationValues];
  }
}

- (void)accelerometer:(id)a3 didChangeDeviceOrientation:(int64_t)a4
{
  v6 = sub_100004F84();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v17 = [(PHInCallOrientationMonitor *)self currentOrientation];
    v18 = 2048;
    v19 = a4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "accelerometer orientation change from %ld to %ld", buf, 0x16u);
  }

  [(PHInCallOrientationMonitor *)self setCurrentOrientation:a4];
  v7 = +[PHPIPController defaultPIPController];
  v8 = [v7 isPipped];

  if (![(PHInCallOrientationMonitor *)self isOrientationLocked]|| v8)
  {
    v9 = sub_100004F84();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = @"PHInCallOrientationEventNotification";
      v18 = 2048;
      v19 = a4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "posting %@ for orientation: %ld", buf, 0x16u);
    }

    v10 = +[NSNotificationCenter defaultCenter];
    v11 = [NSNumber numberWithInteger:a4, @"kPHInCallOrientationType"];
    v14[1] = @"kPHLastValidInCallOrientationType";
    v15[0] = v11;
    v12 = [NSNumber numberWithInteger:[(PHInCallOrientationMonitor *)self lastValidOrientation]];
    v15[1] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
    [v10 postNotificationName:@"PHInCallOrientationEventNotification" object:0 userInfo:v13];
  }
}

- (int64_t)currentOrientation
{
  if (![(PHInCallOrientationMonitor *)self isOrientationLocked])
  {
    return self->_currentOrientation;
  }

  v3 = +[UIApplication sharedApplication];
  v4 = [v3 delegate];
  v5 = [v4 isPresentingAmbient];
  v6 = 40;
  if (v5)
  {
    v6 = 16;
  }

  v7 = *(&self->super.isa + v6);

  return v7;
}

- (void)setCurrentOrientation:(int64_t)a3
{
  self->_currentOrientation = a3;
  if ((a3 - 1) <= 3)
  {
    [(PHInCallOrientationMonitor *)self setLastValidOrientation:?];
  }
}

- (int64_t)lastValidOrientation
{
  if ([(PHInCallOrientationMonitor *)self isOrientationLocked])
  {
    v3 = +[UIApplication sharedApplication];
    v4 = [v3 delegate];
    v5 = [v4 isPresentingAmbient];

    if ((v5 & 1) == 0)
    {
      self->_lastValidOrientation = [(PHInCallOrientationMonitor *)self lockedOrientation];
    }
  }

  result = self->_lastValidOrientation;
  if (!result)
  {
    result = [(PHInCallOrientationMonitor *)self deviceOrientation];
    self->_lastValidOrientation = result;
  }

  if ((result - 1) >= 4)
  {
    v7 = UIApp;

    return [v7 statusBarOrientation];
  }

  return result;
}

- (int64_t)deviceOrientation
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 delegate];
  v4 = [v3 currentInCallScene];
  v5 = [v4 interfaceOrientation];

  return v5;
}

- (int64_t)activeInterfaceOrientation
{
  if (+[PHUIConfiguration canAutoRotateInCallUIForFaceTime])
  {
    if ([(PHInCallOrientationMonitor *)self isOrientationLocked])
    {
      lockedOrientation = self->_lockedOrientation;
      v4 = sub_100004F84();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 67109120;
        v8 = lockedOrientation;
        v5 = "activeInterfaceOrientation: device allows UI rotation and is orientation locked to %d";
LABEL_10:
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, &v7, 8u);
      }
    }

    else
    {
      lockedOrientation = BKHIDServicesGetNonFlatDeviceOrientation();
      v4 = sub_100004F84();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 67109120;
        v8 = lockedOrientation;
        v5 = "activeInterfaceOrientation: device allows UI rotation and the last flat orientation was %d";
        goto LABEL_10;
      }
    }
  }

  else
  {
    v4 = sub_100004F84();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "activeInterfaceOrientation: we'll default to UIInterfaceOrientationPortrait", &v7, 2u);
    }

    lockedOrientation = 1;
  }

  return lockedOrientation;
}

- (BOOL)isSpringBoardInterfaceOrientationLocked
{
  if (byte_1003B0FA4)
  {
    state64 = 0;
  }

  else if (notify_register_check("com.apple.backboardd.orientationlock", &dword_1003B0FA0))
  {
    state64 = 0;
    if ((byte_1003B0FA4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    byte_1003B0FA4 = 1;
    state64 = 0;
  }

  notify_get_state(dword_1003B0FA0, &state64);
  return state64 != 0;
}

- (int64_t)springBoardLockedInterfaceOrientation
{
  if (byte_1003B0FAC)
  {
    state64 = 1;
    goto LABEL_7;
  }

  if (!notify_register_check("com.apple.backboardd.orientation", &dword_1003B0FA8))
  {
    byte_1003B0FAC = 1;
    state64 = 1;
    goto LABEL_7;
  }

  result = 1;
  state64 = 1;
  if (byte_1003B0FAC)
  {
LABEL_7:
    notify_get_state(dword_1003B0FA8, &state64);
    return state64;
  }

  return result;
}

- (void)setIsOrientationLocked:(BOOL)a3
{
  if (self->_isOrientationLocked != a3)
  {
    v3 = a3;
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v15 = v3;
      v16 = 2048;
      v17 = [(PHInCallOrientationMonitor *)self lockedOrientation];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "set orientation locked: %d to orientation: %ld", buf, 0x12u);
    }

    self->_isOrientationLocked = v3;
    v6 = +[NSNotificationCenter defaultCenter];
    if (v3)
    {
      v7 = [NSNumber numberWithInteger:[(PHInCallOrientationMonitor *)self lockedOrientation]];
      v11 = v7;
      v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
      [v6 postNotificationName:@"PHInCallOrientationEventNotification" object:0 userInfo:v8];
    }

    else
    {
      v12[0] = @"kPHInCallOrientationType";
      v7 = [NSNumber numberWithInteger:[(PHInCallOrientationMonitor *)self currentOrientation]];
      v12[1] = @"kPHLastValidInCallOrientationType";
      v13[0] = v7;
      v8 = [NSNumber numberWithInteger:[(PHInCallOrientationMonitor *)self lastValidOrientation]];
      v13[1] = v8;
      v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
      [v6 postNotificationName:@"PHInCallOrientationEventNotification" object:0 userInfo:v9];
    }
  }
}

@end