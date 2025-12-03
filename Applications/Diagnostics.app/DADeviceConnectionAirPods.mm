@interface DADeviceConnectionAirPods
- (BOOL)connect;
- (BOOL)disconnect;
- (DADeviceConnectionAirPods)initWithState:(id)state bluetoothDevice:(id)device;
- (void)DADeviceAirPodsSessionWillStartNotification:(id)notification;
- (void)_btDeviceConnectFailedNotification:(id)notification;
- (void)_btDeviceConnectSuccessNotification:(id)notification;
- (void)_btDeviceDisconnectFailedNotification:(id)notification;
- (void)_btDeviceDisconnectSuccessNotification:(id)notification;
- (void)allowSessionAccessoryDisconnectForDuration:(id)duration;
- (void)didFinishSendingResultForTest:(id)test;
- (void)end;
- (void)endIgnoringDisconnects;
- (void)start;
- (void)unpair;
@end

@implementation DADeviceConnectionAirPods

- (DADeviceConnectionAirPods)initWithState:(id)state bluetoothDevice:(id)device
{
  deviceCopy = device;
  v24.receiver = self;
  v24.super_class = DADeviceConnectionAirPods;
  v8 = [(DADeviceConnectionLocal *)&v24 initWithState:state];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_airpodsDevice, device);
    v10 = dispatch_semaphore_create(0);
    connectSemaphore = v9->_connectSemaphore;
    v9->_connectSemaphore = v10;

    v12 = dispatch_semaphore_create(0);
    disconnectSemaphore = v9->_disconnectSemaphore;
    v9->_disconnectSemaphore = v12;

    v14 = dispatch_queue_create("com.apple.Diagnostics.airpodsConnectivity", 0);
    connectionCommandQueue = v9->_connectionCommandQueue;
    v9->_connectionCommandQueue = v14;

    v9->_lastConnectionState = [deviceCopy connected];
    v16 = +[BluetoothManager sharedInstance];
    btManager = v9->_btManager;
    v9->_btManager = v16;

    v9->_unpairOnTestCompletion = 0;
    v9->_isIgnoringDisconnect = 0;
    v9->_hasIgnoredDisconnect = 0;
    if (v9->_btManager)
    {
      v18 = +[NSNotificationCenter defaultCenter];
      [v18 addObserver:v9 selector:"_btDeviceConnectSuccessNotification:" name:BluetoothDeviceConnectSuccessNotification object:0];

      v19 = +[NSNotificationCenter defaultCenter];
      [v19 addObserver:v9 selector:"_btDeviceConnectFailedNotification:" name:BluetoothDeviceConnectFailedNotification object:0];

      v20 = +[NSNotificationCenter defaultCenter];
      [v20 addObserver:v9 selector:"_btDeviceDisconnectSuccessNotification:" name:BluetoothDeviceDisconnectSuccessNotification object:0];

      v21 = +[NSNotificationCenter defaultCenter];
      [v21 addObserver:v9 selector:"_btDeviceDisconnectFailedNotification:" name:BluetoothDeviceDisconnectFailedNotification object:0];

      v22 = +[NSNotificationCenter defaultCenter];
      [v22 addObserver:v9 selector:"DADeviceAirPodsSessionWillStartNotification:" name:@"com.apple.Diagnostics.airPodsSessionWillStart" object:0];
    }

    else
    {
      v22 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10015952C(v22);
      }
    }
  }

  return v9;
}

- (BOOL)connect
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    airpodsDevice = [(DADeviceConnectionAirPods *)self airpodsDevice];
    v11 = 138412290;
    v12 = airpodsDevice;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Connecting to AirPods %@...", &v11, 0xCu);
  }

  [(DADeviceConnectionAirPods *)self setConnecting:1];
  airpodsDevice2 = [(DADeviceConnectionAirPods *)self airpodsDevice];
  [airpodsDevice2 connect];

  connectSemaphore = [(DADeviceConnectionAirPods *)self connectSemaphore];
  v7 = dispatch_time(0, 15000000000);
  v8 = dispatch_semaphore_wait(connectSemaphore, v7);

  if (v8)
  {
    v9 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100159570(self);
    }
  }

  [(DADeviceConnectionAirPods *)self setConnecting:0];
  return v8 == 0;
}

- (BOOL)disconnect
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    airpodsDevice = [(DADeviceConnectionAirPods *)self airpodsDevice];
    v11 = 138412290;
    v12 = airpodsDevice;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Disconnecting from AirPods %@...", &v11, 0xCu);
  }

  [(DADeviceConnectionAirPods *)self setDisconnecting:1];
  airpodsDevice2 = [(DADeviceConnectionAirPods *)self airpodsDevice];
  [airpodsDevice2 disconnect];

  disconnectSemaphore = [(DADeviceConnectionAirPods *)self disconnectSemaphore];
  v7 = dispatch_time(0, 15000000000);
  v8 = dispatch_semaphore_wait(disconnectSemaphore, v7);

  if (v8)
  {
    v9 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100159570(self);
    }
  }

  [(DADeviceConnectionAirPods *)self setDisconnecting:0];
  return v8 == 0;
}

- (void)start
{
  connectionCommandQueue = [(DADeviceConnectionAirPods *)self connectionCommandQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029AE4;
  block[3] = &unk_1001BC580;
  block[4] = self;
  dispatch_async(connectionCommandQueue, block);
}

- (void)end
{
  connectionCommandQueue = [(DADeviceConnectionAirPods *)self connectionCommandQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029D0C;
  block[3] = &unk_1001BC580;
  block[4] = self;
  dispatch_async(connectionCommandQueue, block);
}

- (void)didFinishSendingResultForTest:(id)test
{
  v7.receiver = self;
  v7.super_class = DADeviceConnectionAirPods;
  [(DADeviceConnectionLocal *)&v7 didFinishSendingResultForTest:test];
  if ([(DADeviceConnectionAirPods *)self unpairOnTestCompletion])
  {
    v4 = dispatch_time(0, 2000000000);
    v5 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100029E60;
    block[3] = &unk_1001BC580;
    block[4] = self;
    dispatch_after(v4, v5, block);
  }
}

- (void)DADeviceAirPodsSessionWillStartNotification:(id)notification
{
  userInfo = [notification userInfo];
  v11 = [userInfo objectForKeyedSubscript:@"DADeviceAirPodsDeviceKey"];

  lastConnectionState = [(DADeviceConnectionAirPods *)self lastConnectionState];
  v6 = v11;
  if (lastConnectionState)
  {
    airpodsDevice = [(DADeviceConnectionAirPods *)self airpodsDevice];

    v6 = v11;
    if (airpodsDevice != v11)
    {
      state = [(DADeviceConnectionLocal *)self state];
      if ([state phase])
      {
        state2 = [(DADeviceConnectionLocal *)self state];
        phase = [state2 phase];

        if (phase != 1)
        {
          [(DADeviceConnectionAirPods *)self end];
LABEL_8:
          v6 = v11;
          goto LABEL_9;
        }
      }

      else
      {
      }

      [(DADeviceConnectionAirPods *)self disconnect];
      goto LABEL_8;
    }
  }

LABEL_9:
}

- (void)unpair
{
  objc_initWeak(&location, self);
  connectionCommandQueue = [(DADeviceConnectionAirPods *)self connectionCommandQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002A0E4;
  v4[3] = &unk_1001BC698;
  objc_copyWeak(&v5, &location);
  dispatch_async(connectionCommandQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)allowSessionAccessoryDisconnectForDuration:(id)duration
{
  durationCopy = duration;
  intValue = [durationCopy intValue];
  v6 = DiagnosticLogHandleForCategory();
  v7 = v6;
  if (intValue <= 0)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001595F8(durationCopy, v7);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = durationCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Ignoring accessory disconnects for %@ seconds", &v8, 0xCu);
    }

    [(DADeviceConnectionAirPods *)self setIsIgnoringDisconnect:1];
    [durationCopy doubleValue];
    v7 = [NSTimer scheduledTimerWithTimeInterval:self target:"endIgnoringDisconnects" selector:0 userInfo:0 repeats:?];
    [(DADeviceConnectionAirPods *)self setIgnoreDisconnectTimer:v7];
  }
}

- (void)endIgnoringDisconnects
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Resuming handling for accessory disconnects", buf, 2u);
  }

  ignoreDisconnectTimer = [(DADeviceConnectionAirPods *)self ignoreDisconnectTimer];

  if (ignoreDisconnectTimer)
  {
    ignoreDisconnectTimer2 = [(DADeviceConnectionAirPods *)self ignoreDisconnectTimer];
    [ignoreDisconnectTimer2 invalidate];

    [(DADeviceConnectionAirPods *)self setIgnoreDisconnectTimer:0];
  }

  if ([(DADeviceConnectionAirPods *)self hasIgnoredDisconnect]&& ![(DADeviceConnectionAirPods *)self lastConnectionState])
  {
    v6 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Accessory is in a disconnected state upon resuming handling. Ending the session immediately.", v9, 2u);
    }

    state = [(DADeviceConnectionLocal *)self state];
    [state setPhase:1];

    state2 = [(DADeviceConnectionLocal *)self state];
    [state2 addErrorCode:12 userInfo:0];
  }

  [(DADeviceConnectionAirPods *)self setIsIgnoringDisconnect:0];
  [(DADeviceConnectionAirPods *)self setHasIgnoredDisconnect:0];
}

- (void)_btDeviceConnectSuccessNotification:(id)notification
{
  object = [notification object];
  airpodsDevice = [(DADeviceConnectionAirPods *)self airpodsDevice];
  v6 = [object isEqual:airpodsDevice];

  if (v6)
  {
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      airpodsDevice2 = [(DADeviceConnectionAirPods *)self airpodsDevice];
      v10 = 138412290;
      v11 = airpodsDevice2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AirPods device %@ has connected successfully!", &v10, 0xCu);
    }

    if ([(DADeviceConnectionAirPods *)self connecting])
    {
      connectSemaphore = [(DADeviceConnectionAirPods *)self connectSemaphore];
      dispatch_semaphore_signal(connectSemaphore);
    }

    [(DADeviceConnectionAirPods *)self setLastConnectionState:1];
  }
}

- (void)_btDeviceConnectFailedNotification:(id)notification
{
  object = [notification object];
  airpodsDevice = [(DADeviceConnectionAirPods *)self airpodsDevice];
  v6 = [object isEqual:airpodsDevice];

  if (v6)
  {
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      airpodsDevice2 = [(DADeviceConnectionAirPods *)self airpodsDevice];
      v10 = 138412290;
      v11 = airpodsDevice2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AirPods device %@ failed to connect!", &v10, 0xCu);
    }

    if ([(DADeviceConnectionAirPods *)self connecting])
    {
      connectSemaphore = [(DADeviceConnectionAirPods *)self connectSemaphore];
      dispatch_semaphore_signal(connectSemaphore);
    }

    [(DADeviceConnectionAirPods *)self setLastConnectionState:0];
  }
}

- (void)_btDeviceDisconnectSuccessNotification:(id)notification
{
  object = [notification object];
  airpodsDevice = [(DADeviceConnectionAirPods *)self airpodsDevice];
  v6 = [object isEqual:airpodsDevice];

  if (v6)
  {
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      airpodsDevice2 = [(DADeviceConnectionAirPods *)self airpodsDevice];
      v14 = 138412290;
      v15 = airpodsDevice2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AirPods device %@ has disconected!", &v14, 0xCu);
    }

    if ([(DADeviceConnectionAirPods *)self disconnecting])
    {
      v9 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Disconnect was expected", &v14, 2u);
      }

      disconnectSemaphore = [(DADeviceConnectionAirPods *)self disconnectSemaphore];
      dispatch_semaphore_signal(disconnectSemaphore);
    }

    else
    {
      if ([(DADeviceConnectionAirPods *)self isIgnoringDisconnect])
      {
        v11 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v14) = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Disconnect is temporairly ignored", &v14, 2u);
        }

        [(DADeviceConnectionAirPods *)self setHasIgnoredDisconnect:1];
        goto LABEL_17;
      }

      if (![(DADeviceConnectionAirPods *)self lastConnectionState])
      {
LABEL_17:
        [(DADeviceConnectionAirPods *)self setLastConnectionState:0];
        return;
      }

      v12 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100159670(v12);
      }

      state = [(DADeviceConnectionLocal *)self state];
      [state setPhase:1];

      disconnectSemaphore = [(DADeviceConnectionLocal *)self state];
      [disconnectSemaphore addErrorCode:12 userInfo:0];
    }

    goto LABEL_17;
  }
}

- (void)_btDeviceDisconnectFailedNotification:(id)notification
{
  object = [notification object];
  airpodsDevice = [(DADeviceConnectionAirPods *)self airpodsDevice];
  v6 = [object isEqual:airpodsDevice];

  if (v6)
  {
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      airpodsDevice2 = [(DADeviceConnectionAirPods *)self airpodsDevice];
      v11 = 138412290;
      v12 = airpodsDevice2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AirPods device %@ has failed to disconnect!", &v11, 0xCu);
    }

    if ([(DADeviceConnectionAirPods *)self disconnecting])
    {
      disconnectSemaphore = [(DADeviceConnectionAirPods *)self disconnectSemaphore];
      dispatch_semaphore_signal(disconnectSemaphore);
    }

    else
    {
      if (![(DADeviceConnectionAirPods *)self lastConnectionState])
      {
LABEL_9:
        [(DADeviceConnectionAirPods *)self setLastConnectionState:0];
        return;
      }

      state = [(DADeviceConnectionLocal *)self state];
      [state setPhase:1];

      disconnectSemaphore = [(DADeviceConnectionLocal *)self state];
      [disconnectSemaphore addErrorCode:12 userInfo:0];
    }

    goto LABEL_9;
  }
}

@end