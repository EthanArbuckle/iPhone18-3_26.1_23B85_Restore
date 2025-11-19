@interface CBThermalManager
+ (id)sharedInstance;
- (BOOL)_isLevelBlocked:(int64_t)a3;
- (BOOL)isThermalBlocked;
- (CBThermalManager)init;
- (void)_beginThermalJetsamCPUSampling;
- (void)_calculateAppsCPUTimesWithCompletion:(id)a3;
- (void)_killThermallyActiveApplication;
- (void)_killThermallyActiveDiagnosticsApplication;
- (void)_respondToCurrentThermalCondition;
- (void)dealloc;
- (void)startListeningForThermalEvents;
@end

@implementation CBThermalManager

+ (id)sharedInstance
{
  if (qword_1000922E8 != -1)
  {
    sub_100044FD4();
  }

  v3 = qword_1000922E0;

  return v3;
}

- (CBThermalManager)init
{
  v6.receiver = self;
  v6.super_class = CBThermalManager;
  v2 = [(CBThermalManager *)&v6 init];
  if (v2)
  {
    v3 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting up thermal manager…", v5, 2u);
    }

    *(v2 + 12) = -1;
    *(v2 + 3) = 0;
    v2[8] = 0;
  }

  return v2;
}

- (void)dealloc
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dealloc was called", buf, 2u);
  }

  notify_cancel([(CBThermalManager *)self coldTempToken]);
  notify_cancel([(CBThermalManager *)self sunlightStateToken]);
  [NSObject cancelPreviousPerformRequestsWithTarget:self];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v5.receiver = self;
  v5.super_class = CBThermalManager;
  [(CBThermalManager *)&v5 dealloc];
}

- (BOOL)isThermalBlocked
{
  v2 = [(CBThermalManager *)self _isLevelBlocked:[(CBThermalManager *)self level]];
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Thermal blocked %d", v5, 8u);
  }

  return v2;
}

- (BOOL)_isLevelBlocked:(int64_t)a3
{
  v3 = a3 - 3;
  v4 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3 < 2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Level blocked %d", v6, 8u);
  }

  return v3 < 2;
}

- (void)startListeningForThermalEvents
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Registering thermal notifications…", buf, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v5 = [NSString stringWithCString:kOSThermalNotificationName encoding:4];
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_100006398, v5, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100006410;
  handler[3] = &unk_10007D6B8;
  handler[4] = self;
  notify_register_dispatch("com.apple.system.thermalpressurelevel.cold", &self->_coldTempToken, &_dispatch_main_q, handler);
  [(CBThermalManager *)self _respondToCurrentThermalCondition];
  if (notify_register_check("com.apple.system.thermalsunlightstate", &self->_sunlightStateToken))
  {
    v6 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100044FE8(v6);
    }
  }
}

- (void)_respondToCurrentThermalCondition
{
  v4 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Responding to current thermal condition…", buf, 2u);
  }

  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:a2 object:0];
  v5 = OSThermalNotificationCurrentLevel();
  if (v5 >= _OSThermalNotificationLevelForBehavior())
  {
    [(CBThermalManager *)self _beginThermalJetsamCPUSampling];
  }

  else if ([(CBThermalManager *)self sampling])
  {
    v6 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Thermal status level is %d. Canceling CPU usage sampling…", buf, 8u);
    }

    [(CBThermalManager *)self setSampling:0];
  }

  state64 = 0;
  notify_get_state([(CBThermalManager *)self coldTempToken], &state64);
  v7 = [(CBThermalManager *)self level];
  v8 = [(CBThermalManager *)self isInSunlight];
  if (v5 >= _OSThermalNotificationLevelForBehavior())
  {
    v10 = 4;
  }

  else if (v5 >= _OSThermalNotificationLevelForBehavior())
  {
    v10 = 3;
  }

  else if (v5 >= _OSThermalNotificationLevelForBehavior())
  {
    v10 = 2;
  }

  else if (v5 >= _OSThermalNotificationLevelForBehavior())
  {
    v10 = 1;
  }

  else
  {
    v9 = -2;
    if (state64 != 30)
    {
      v9 = 0;
    }

    if (state64 == 20)
    {
      v10 = -1;
    }

    else
    {
      v10 = v9;
    }
  }

  [(CBThermalManager *)self setLevel:v10];
  if ([(CBThermalManager *)self level])
  {
    *buf = 0;
    if (notify_get_state([(CBThermalManager *)self sunlightStateToken], buf))
    {
      v11 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10004502C(v11);
      }
    }

    else
    {
      [(CBThermalManager *)self setInSunlight:*buf != 0];
    }
  }

  if (v7 != [(CBThermalManager *)self level]|| v8 != [(CBThermalManager *)self isInSunlight])
  {
    v12 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(CBThermalManager *)self level];
      v14 = [(CBThermalManager *)self isInSunlight];
      *buf = 134218240;
      *&buf[4] = v13;
      v24 = 1024;
      v25 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Device is at level (%ld) and in sunlight (%d). inPosting thermal conditions did change notification", buf, 0x12u);
    }

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 postNotificationName:@"CBThermalConditionsDidChangeNotification" object:self userInfo:0];
  }

  v16 = [(CBThermalManager *)self _isLevelBlocked:v7];
  v17 = [(CBThermalManager *)self isThermalBlocked];
  if (v16 != v17)
  {
    v18 = v17;
    v19 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = @"un";
      if (v18)
      {
        v20 = &stru_10007EAB0;
      }

      *buf = 138412290;
      *&buf[4] = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Device is %@blocked. Posting thermal blocked did change notification", buf, 0xCu);
    }

    v21 = +[NSNotificationCenter defaultCenter];
    [v21 postNotificationName:@"CBThermalBlockedDidChangeNotification" object:self userInfo:0];
  }
}

- (void)_beginThermalJetsamCPUSampling
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Begin thermal jetsam CPU sampling…", buf, 2u);
  }

  if ([(CBThermalManager *)self sampling])
  {
    v4 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "We are already sampling for killing…", buf, 2u);
    }
  }

  else
  {
    v5 = OSThermalNotificationCurrentLevel();
    v6 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Thermal status level is urgent (%d). Starting CPU usage sampling…", buf, 8u);
    }

    [(CBThermalManager *)self setSampling:1];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100006A24;
    v7[3] = &unk_10007D6E0;
    v7[4] = self;
    [(CBThermalManager *)self _calculateAppsCPUTimesWithCompletion:v7];
  }
}

- (void)_calculateAppsCPUTimesWithCompletion:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Creating dictionary with applications to kill…", buf, 2u);
    }

    v5 = +[NSMutableDictionary dictionary];
    v6 = +[FBProcessManager sharedInstance];
    v7 = [v6 allApplicationProcesses];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          [v12 elapsedCPUTime];
          v13 = [NSNumber numberWithDouble:?];
          v14 = [v12 bundleIdentifier];
          [v5 setObject:v13 forKey:v14];
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v9);
    }

    v3[2](v3, v5);
  }
}

- (void)_killThermallyActiveApplication
{
  v3 = [(CBThermalManager *)self sampling];
  v4 = CheckerBoardLogHandleForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "We are sampling so we must kill", buf, 2u);
    }

    [(CBThermalManager *)self _killThermallyActiveDiagnosticsApplication];
  }

  else
  {
    if (v5)
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "We are no longer sampling so no more killing", v6, 2u);
    }
  }
}

- (void)_killThermallyActiveDiagnosticsApplication
{
  if ([(CBThermalManager *)self sampling])
  {
    v3 = OSThermalNotificationCurrentLevel();
    v4 = +[CBAppManager sharedInstance];
    v5 = [v4 primaryAppBundleID];
    v6 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      v10 = v3;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Thermal status level is urgent (%d). Attempt to kill %@", buf, 0x12u);
    }

    [v4 terminateAppWithBundleID:v5 reason:4 reportCrash:1 description:0 completion:0];
    v8 = NSRunLoopCommonModes;
    v7 = [NSArray arrayWithObjects:&v8 count:1];
    [(CBThermalManager *)self performSelector:"_respondToCurrentThermalCondition" withObject:0 afterDelay:v7 inModes:30.0];
  }

  [(CBThermalManager *)self setSampling:0];
}

@end