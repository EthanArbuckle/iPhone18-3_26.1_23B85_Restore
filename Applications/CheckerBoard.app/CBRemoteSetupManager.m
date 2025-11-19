@interface CBRemoteSetupManager
+ (CBRemoteSetupManager)sharedInstance;
- (BOOL)setOverrideAuthPin:(id)a3;
- (CBRemoteSetupManager)init;
- (void)_handleRemoteSetupFinished;
- (void)_handleSetupServerFinished;
- (void)_processBasicConfigFromEvent:(id)a3;
- (void)_reachabilityChanged:(id)a3;
- (void)changeDesiredAuthType:(int)a3;
- (void)dealloc;
- (void)endRemoteSetupBroadcast;
- (void)handleSetupEvent:(id)a3;
- (void)restartRemoteSetupBroadcast;
- (void)sendAuthPassword:(id)a3;
- (void)setupFailed;
- (void)startRemoteSetupBroadcast;
@end

@implementation CBRemoteSetupManager

+ (CBRemoteSetupManager)sharedInstance
{
  if (qword_100092338 != -1)
  {
    sub_100046C4C();
  }

  v3 = qword_100092330;

  return v3;
}

- (CBRemoteSetupManager)init
{
  v8.receiver = self;
  v8.super_class = CBRemoteSetupManager;
  v2 = [(CBRemoteSetupManager *)&v8 init];
  v3 = v2;
  if (v2)
  {
    setupServer = v2->_setupServer;
    v2->_setupServer = 0;

    v3->_broadcastingForSetup = 0;
    remoteLocaleCode = v3->_remoteLocaleCode;
    v3->_remoteLocaleCode = 0;

    overridePin = v3->_overridePin;
    v3->_overridePin = 0;

    v3->_preferredPasswordType = 8;
    v3->_setupState = 1;
  }

  return v3;
}

- (void)dealloc
{
  [(CBRemoteSetupManager *)self endRemoteSetupBroadcast];
  v3.receiver = self;
  v3.super_class = CBRemoteSetupManager;
  [(CBRemoteSetupManager *)&v3 dealloc];
}

- (void)startRemoteSetupBroadcast
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting broadcast for remote setup", buf, 2u);
  }

  v4 = [(CBRemoteSetupManager *)self setupServer];

  if (v4)
  {
    v5 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "We already have a setup server. Tearing down...", buf, 2u);
    }

    [(CBRemoteSetupManager *)self endRemoteSetupBroadcast];
  }

  v6 = objc_alloc_init(SKSetupFieldDiagnosticsServer);
  [(CBRemoteSetupManager *)self setSetupServer:v6];

  v7 = [(CBRemoteSetupManager *)self overridePin];

  if (v7)
  {
    v8 = [(CBRemoteSetupManager *)self overridePin];
    v9 = [(CBRemoteSetupManager *)self setupServer];
    [v9 setPassword:v8];

    [(CBRemoteSetupManager *)self setPreferredPasswordType:2];
  }

  v10 = [(CBRemoteSetupManager *)self preferredPasswordType];
  v11 = [(CBRemoteSetupManager *)self setupServer];
  [v11 setPasswordType:v10];

  objc_initWeak(&location, self);
  objc_copyWeak(&v17, &location);
  v12 = [(CBRemoteSetupManager *)self setupServer:_NSConcreteStackBlock];
  [v12 setEventHandler:&v16];

  v13 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(CBRemoteSetupManager *)self setupServer];
    *buf = 138412290;
    v20 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Beginning setup broadcast with setup server %@", buf, 0xCu);
  }

  [(CBRemoteSetupManager *)self setBroadcastingForSetup:1];
  [(CBRemoteSetupManager *)self setSetupState:2];
  v15 = [(CBRemoteSetupManager *)self setupServer];
  [v15 activate];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)endRemoteSetupBroadcast
{
  [(CBRemoteSetupManager *)self setBroadcastingForSetup:0];
  [(CBRemoteSetupManager *)self setSetupState:1];
  v3 = [(CBRemoteSetupManager *)self setupServer];

  if (v3)
  {
    v4 = [(CBRemoteSetupManager *)self setupServer];
    [v4 invalidate];

    [(CBRemoteSetupManager *)self setSetupServer:0];
  }
}

- (void)restartRemoteSetupBroadcast
{
  [(CBRemoteSetupManager *)self endRemoteSetupBroadcast];
  v3 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000CA54;
  block[3] = &unk_10007D540;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (BOOL)setOverrideAuthPin:(id)a3
{
  v4 = a3;
  v5 = [(CBRemoteSetupManager *)self broadcastingForSetup];
  if (v4 && (v5 & 1) == 0 && [v4 length] == 6)
  {
    [(CBRemoteSetupManager *)self setOverridePin:v4];
    v6 = 1;
  }

  else
  {
    v7 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100046C60(v4, self, v7);
    }

    v6 = 0;
  }

  return v6;
}

- (void)sendAuthPassword:(id)a3
{
  v4 = a3;
  v5 = [(CBRemoteSetupManager *)self broadcastingForSetup];
  v6 = CheckerBoardLogHandleForCategory();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending password %@ to SetupKit", &v9, 0xCu);
    }

    v7 = [(CBRemoteSetupManager *)self setupServer];
    v8 = [[SKAuthenticationResponseEvent alloc] initWithPassword:v4];
    [v7 postEvent:v8];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100046D00(v7);
  }
}

- (void)changeDesiredAuthType:(int)a3
{
  v3 = *&a3;
  if ([(CBRemoteSetupManager *)self broadcastingForSetup])
  {
    [(CBRemoteSetupManager *)self setPreferredPasswordType:v3];

    [(CBRemoteSetupManager *)self restartRemoteSetupBroadcast];
  }
}

- (void)setupFailed
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setup failed", v5, 2u);
  }

  [(CBRemoteSetupManager *)self endRemoteSetupBroadcast];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"CBRemoteSetupFailedNotification" object:self];
}

- (void)handleSetupEvent:(id)a3
{
  v4 = a3;
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setup server event %@", buf, 0xCu);
  }

  v6 = [v4 eventType];
  if (v6 > 40)
  {
    if (v6 > 119)
    {
      if (v6 != 120)
      {
        if (v6 != 140)
        {
          if (v6 == 300)
          {
            v7 = CheckerBoardLogHandleForCategory();
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setup server received updated configuration", buf, 2u);
            }

            [(CBRemoteSetupManager *)self _processBasicConfigFromEvent:v4];
            goto LABEL_50;
          }

          goto LABEL_46;
        }

        v27 = CheckerBoardLogHandleForCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Setup server authentication completed", buf, 2u);
        }

        [(CBRemoteSetupManager *)self setSetupState:4];
        v11 = +[NSNotificationCenter defaultCenter];
        [v11 postNotificationName:@"CBRemoteSetupConfiguringNotification" object:self];
LABEL_45:

        goto LABEL_50;
      }

      v25 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 passwordType]);
        *buf = 138412290;
        v36 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Setup server wants us to respond with a password of auth type %@", buf, 0xCu);
      }

      [(CBRemoteSetupManager *)self setSetupState:3];
      v11 = +[NSNotificationCenter defaultCenter];
      v31 = @"type";
      v12 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 passwordType]);
      v32 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v14 = @"CBRemoteSetupAuthenticationRequestNotification";
      goto LABEL_40;
    }

    if (v6 != 41)
    {
      if (v6 != 110)
      {
        goto LABEL_46;
      }

      v15 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v4 password];
        v17 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 passwordType]);
        *buf = 138412546;
        v36 = v16;
        v37 = 2112;
        v38 = v17;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Setup server wants us to show the pin %@ with auth type %@", buf, 0x16u);
      }

      [(CBRemoteSetupManager *)self setSetupState:3];
      v11 = +[NSNotificationCenter defaultCenter];
      v33[0] = @"type";
      v12 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 passwordType]);
      v33[1] = @"pin";
      v34[0] = v12;
      v13 = [v4 password];
      v34[1] = v13;
      v18 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:2];
      [v11 postNotificationName:@"CBRemoteSetupAuthenticaitonDisplayNotification" object:self userInfo:v18];

      goto LABEL_41;
    }

    goto LABEL_28;
  }

  if (v6 > 29)
  {
    if (v6 == 30)
    {
LABEL_28:
      if ([(CBRemoteSetupManager *)self broadcastingForSetup]&& [(CBRemoteSetupManager *)self setupState]== 4)
      {
        v19 = CheckerBoardLogHandleForCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_100046D44(v19);
        }

        [(CBRemoteSetupManager *)self setupFailed];
      }

      else if ([(CBRemoteSetupManager *)self setupState]== 3)
      {
        [(CBRemoteSetupManager *)self setSetupState:0];
        v20 = +[NSNotificationCenter defaultCenter];
        [v20 postNotificationName:@"CBRemoteSetupCancelledNotification" object:self userInfo:0];

        [(CBRemoteSetupManager *)self restartRemoteSetupBroadcast];
      }

      goto LABEL_50;
    }

    if (v6 != 40)
    {
      goto LABEL_46;
    }

    v9 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Setup server has connected to a device", buf, 2u);
    }

    v10 = [(CBRemoteSetupManager *)self overridePin];

    if (v10)
    {
      v11 = +[NSNotificationCenter defaultCenter];
      v12 = [(CBRemoteSetupManager *)self overridePin:@"type"];
      v30[1] = v12;
      v13 = [NSDictionary dictionaryWithObjects:v30 forKeys:&v29 count:2];
      v14 = @"CBRemoteSetupAuthenticaitonDisplayNotification";
LABEL_40:
      [v11 postNotificationName:v14 object:self userInfo:v13];
LABEL_41:

      goto LABEL_45;
    }
  }

  else
  {
    if (v6 == 10)
    {
      v21 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v22 = "Setup server started";
        v23 = v21;
        v24 = 2;
LABEL_48:
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
      }

LABEL_49:

      goto LABEL_50;
    }

    if (v6 != 20)
    {
LABEL_46:
      v21 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [v4 eventType];
        *buf = 138412546;
        v36 = v4;
        v37 = 1024;
        LODWORD(v38) = v28;
        v22 = "Unhandled setup event %@ with type %d";
        v23 = v21;
        v24 = 18;
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    v8 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setup server is finished.", buf, 2u);
    }

    [(CBRemoteSetupManager *)self _handleSetupServerFinished];
  }

LABEL_50:
}

- (void)_processBasicConfigFromEvent:(id)a3
{
  v4 = [a3 basicConfig];
  v5 = [v4 objectForKeyedSubscript:@"_locale"];
  [(CBRemoteSetupManager *)self setRemoteLocaleCode:v5];

  v6 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(CBRemoteSetupManager *)self remoteLocaleCode];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Locale from basic config: %@", &v8, 0xCu);
  }
}

- (void)_handleSetupServerFinished
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setup server finished. Checking for network reachability", buf, 2u);
  }

  [(CBRemoteSetupManager *)self endRemoteSetupBroadcast];
  *buf = 0;
  v14 = buf;
  v15 = 0x3032000000;
  v16 = sub_10000D74C;
  v17 = sub_10000D75C;
  v4 = self;
  v18 = v4;
  v5 = +[CPNetworkObserver sharedNetworkObserver];
  if ([v5 isNetworkReachable])
  {
    v6 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Network is reachable. Completing remote setup flow", v12, 2u);
    }

    [(CBRemoteSetupManager *)v4 _handleRemoteSetupFinished];
  }

  else
  {
    v7 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Network is unreachable. Waiting for network...", v12, 2u);
    }

    [v5 addObserver:v4 selector:"_reachabilityChanged:" forHostname:@"apple.com"];
    v8 = dispatch_time(0, 10000000000);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000D764;
    v9[3] = &unk_10007D980;
    v10 = v5;
    v11 = buf;
    dispatch_after(v8, &_dispatch_main_q, v9);
  }

  _Block_object_dispose(buf, 8);
}

- (void)_reachabilityChanged:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 userInfo];

    if (v6)
    {
      v7 = [v5 userInfo];
      v8 = [v7 objectForKeyedSubscript:CPNetworkObserverReachable];
      v9 = [v8 BOOLValue];

      v10 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13[0] = 67109120;
        v13[1] = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Network reachable from notification: %d", v13, 8u);
      }

      if (v9)
      {
        v11 = CheckerBoardLogHandleForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v13[0]) = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Network is now reachable. Completing remote setup.", v13, 2u);
        }

        v12 = +[CPNetworkObserver sharedNetworkObserver];
        [v12 removeObserver:self];

        [(CBRemoteSetupManager *)self _handleRemoteSetupFinished];
      }
    }
  }
}

- (void)_handleRemoteSetupFinished
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Remote setup completed!", v5, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"CBRemoteSetupCompletedNotification" object:self];

  [(CBRemoteSetupManager *)self endRemoteSetupBroadcast];
}

@end