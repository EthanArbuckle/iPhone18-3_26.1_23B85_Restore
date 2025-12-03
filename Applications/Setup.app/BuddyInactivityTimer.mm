@interface BuddyInactivityTimer
- (BuddyInactivityTimer)init;
- (void)_enableShelfLifeMode;
- (void)_removePowerLog;
- (void)_timerFired:(id)fired;
- (void)start;
- (void)stop;
@end

@implementation BuddyInactivityTimer

- (BuddyInactivityTimer)init
{
  v6 = a2;
  location = 0;
  v5.receiver = self;
  v5.super_class = BuddyInactivityTimer;
  location = [(BuddyInactivityTimer *)&v5 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:location selector:"_batteryStateDidChange" name:UIDeviceBatteryStateDidChangeNotification object:0];
    objc_storeStrong(&v4, 0);
  }

  v2 = location;
  objc_storeStrong(&location, 0);
  return v2;
}

- (void)stop
{
  selfCopy = self;
  oslog[1] = a2;
  timer = [(BuddyInactivityTimer *)self timer];
  v3 = timer == 0;

  if (!v3)
  {
    oslog[0] = _BYLoggingFacility();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = oslog[0];
      v5 = v8;
      sub_10006AA68(v7);
      _os_log_impl(&_mh_execute_header, v4, v5, "Stopping inactivity timer...", v7, 2u);
    }

    objc_storeStrong(oslog, 0);
    timer2 = [(BuddyInactivityTimer *)selfCopy timer];
    [(PCPersistentTimer *)timer2 invalidate];

    [(BuddyInactivityTimer *)selfCopy setTimer:0];
  }
}

- (void)start
{
  selfCopy = self;
  v23 = a2;
  timer = [(BuddyInactivityTimer *)self timer];

  if (!timer)
  {
    v3 = +[UIApplication sharedApplication];
    applicationState = [(UIApplication *)v3 applicationState];

    v22 = applicationState;
    if (applicationState == 2 || v22 == 1)
    {
      v7 = +[UIDevice currentDevice];
      batteryState = [(UIDevice *)v7 batteryState];

      if (batteryState == 1)
      {
        v10 = dispatch_get_global_queue(0, 0);
        block = _NSConcreteStackBlock;
        v12 = -1073741824;
        v13 = 0;
        v14 = sub_1001910D0;
        v15 = &unk_10032B0D0;
        v16 = selfCopy;
        dispatch_async(v10, &block);

        objc_storeStrong(&v16, 0);
      }

      else
      {
        v18 = _BYLoggingFacility();
        v17 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v9 = +[UIDevice currentDevice];
          sub_100077E48(v25, [(UIDevice *)v9 batteryState]);
          _os_log_impl(&_mh_execute_header, v18, v17, "Device is not unplugged (%ld); not starting inactivity timer...", v25, 0xCu);
        }

        objc_storeStrong(&v18, 0);
      }
    }

    else
    {
      oslog = _BYLoggingFacility();
      v20 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v5 = oslog;
        v6 = v20;
        sub_10006AA68(buf);
        _os_log_impl(&_mh_execute_header, v5, v6, "Setup is still active; not starting inactivity timer...", buf, 2u);
      }

      objc_storeStrong(&oslog, 0);
    }
  }
}

- (void)_timerFired:(id)fired
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, fired);
  v15 = _BYLoggingFacility();
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v15;
    v4 = v14;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v3, v4, "Inactivity timer fired; determining if we should shutdown...", buf, 2u);
  }

  objc_storeStrong(&v15, 0);
  timer = [(BuddyInactivityTimer *)selfCopy timer];
  [(PCPersistentTimer *)timer invalidate];

  [(BuddyInactivityTimer *)selfCopy setTimer:0];
  v6 = +[FMDFMIPManager sharedInstance];
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_1001916DC;
  v11 = &unk_10032E0E8;
  v12 = selfCopy;
  [(FMDFMIPManager *)v6 activationLockInfoFromDeviceWithCompletion:&v7];

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)_removePowerLog
{
  oslog[2] = &self->super;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v15;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "Removing power log...", buf, 2u);
  }

  objc_storeStrong(oslog, 0);
  if (+[BuddyPowerLog removeLog])
  {
    v13 = _BYLoggingFacility();
    v12 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v13;
      v5 = v12;
      sub_10006AA68(v11);
      _os_log_impl(&_mh_execute_header, v4, v5, "Successfully removed power log", v11, 2u);
    }

    objc_storeStrong(&v13, 0);
  }

  else
  {
    v10 = _BYLoggingFacility();
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v6 = v10;
      v7 = v9;
      sub_10006AA68(v8);
      _os_log_error_impl(&_mh_execute_header, v6, v7, "Failed to remove power log", v8, 2u);
    }

    objc_storeStrong(&v10, 0);
  }
}

- (void)_enableShelfLifeMode
{
  selfCopy = self;
  v33 = a2;
  v32 = MGGetProductType();
  if (v32 == 1169082144 || v32 == 3001488778 || v32 == 3885279870 || v32 == 4201643249)
  {
    location = _BYLoggingFacility();
    v30 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      v2 = location;
      v3 = v30;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v2, v3, "Not enabling shelf life mode; hardware supports older variant", buf, 2u);
    }

    objc_storeStrong(&location, 0);
  }

  else
  {
    v28 = objc_alloc_init(BuddySMC);
    v27 = @"BCSL";
    if ([v28 hasKey:@"BCSL"])
    {
      v22 = 1;
      if ([v28 writeNumber:1 forKey:@"BCSL"])
      {
        v18 = [v28 numberForKey:@"BCSL"];
        if ([v18 intValue] == 2)
        {
          v17 = _BYLoggingFacility();
          v16 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v8 = v17;
            v9 = v16;
            sub_10006AA68(v15);
            _os_log_impl(&_mh_execute_header, v8, v9, "Successfully enabled shelf life mode", v15, 2u);
          }

          objc_storeStrong(&v17, 0);
        }

        else
        {
          v14 = _BYLoggingFacility();
          v13 = 16;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v10 = v14;
            v11 = v13;
            sub_10006AA68(v12);
            _os_log_error_impl(&_mh_execute_header, v10, v11, "Failed to validate shelf life mode was enabled", v12, 2u);
          }

          objc_storeStrong(&v14, 0);
        }

        objc_storeStrong(&v18, 0);
        v23 = 0;
      }

      else
      {
        v21 = _BYLoggingFacility();
        v20 = 16;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v6 = v21;
          v7 = v20;
          sub_10006AA68(v19);
          _os_log_error_impl(&_mh_execute_header, v6, v7, "Failed to enable shelf life mode", v19, 2u);
        }

        objc_storeStrong(&v21, 0);
        v23 = 1;
      }
    }

    else
    {
      oslog = _BYLoggingFacility();
      v25 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v4 = oslog;
        v5 = v25;
        sub_10006AA68(v24);
        _os_log_impl(&_mh_execute_header, v4, v5, "Not enabling shelf life mode; hardware does not support it", v24, 2u);
      }

      objc_storeStrong(&oslog, 0);
      v23 = 1;
    }

    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v28, 0);
  }
}

@end