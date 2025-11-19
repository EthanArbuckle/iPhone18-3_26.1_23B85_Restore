@interface AmbientLightSensorDataController
- (void)finish;
- (void)handleHIDEvent:(__IOHIDEvent *)a3;
- (void)setupWithInputs:(id)a3 responder:(id)a4;
- (void)start;
- (void)teardown;
@end

@implementation AmbientLightSensorDataController

- (void)setupWithInputs:(id)a3 responder:(id)a4
{
  v5 = a4;
  if ([v5 conformsToProtocol:&OBJC_PROTOCOL___DKBrightnessResponder])
  {
    [(AmbientLightSensorDataController *)self setBrightnessResponder:v5];
  }
}

- (void)start
{
  [(AmbientLightSensorDataController *)self setALSDataCount:0];
  v3 = [(AmbientLightSensorDataController *)self brightnessResponder];

  v4 = DiagnosticLogHandleForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Using DKBrightnessResponder to increase brightness for ALS", buf, 2u);
    }

    v6 = [(AmbientLightSensorDataController *)self brightnessResponder];
    LODWORD(v7) = 1.0;
    [v6 setScreenToBrightness:1 animate:v7];
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "No DKBrightnessResponder. Falling back to CoreBrightness", buf, 2u);
    }

    v8 = objc_alloc_init(BrightnessSystemClient);
    [(AmbientLightSensorDataController *)self setBrightnessSystemClient:v8];

    v9 = [(AmbientLightSensorDataController *)self brightnessSystemClient];
    v10 = [v9 copyPropertyForKey:@"DisplayBrightnessFactor"];
    [(AmbientLightSensorDataController *)self setBrightnessFactor:v10];

    v11 = [(AmbientLightSensorDataController *)self brightnessSystemClient];
    [v11 setProperty:&off_100008570 forKey:@"DisplayBrightnessFactor"];

    v6 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(AmbientLightSensorDataController *)self brightnessFactor];
      *buf = 138412290;
      v24 = v12;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Brightness factor is %@", buf, 0xCu);
    }
  }

  v13 = +[DAHIDEventMonitor sharedInstance];
  [(AmbientLightSensorDataController *)self setEventMonitor:v13];

  v14 = [(AmbientLightSensorDataController *)self eventMonitor];
  [v14 setDelegate:self];

  if (([(AmbientLightSensorDataController *)self isCancelled]& 1) == 0)
  {
    v15 = [(AmbientLightSensorDataController *)self eventMonitor];
    v16 = [NSSet setWithObject:&off_100008510];
    v17 = [v15 startMonitoringWithHIDEvents:v16];

    if (v17 && (-[AmbientLightSensorDataController eventMonitor](self, "eventMonitor"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 serviceClientSetPropertyValue:+[NSNumber numberWithInt:](NSNumber forKey:"numberWithInt:" forHIDEvent:{100000), @"ReportInterval", 6}], v18, v19))
    {
      v20 = dispatch_time(0, 2000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100002498;
      block[3] = &unk_1000082A8;
      block[4] = self;
      dispatch_after(v20, &_dispatch_main_q, block);
    }

    else
    {
      v21 = [(AmbientLightSensorDataController *)self result];
      [v21 setStatusCode:&off_100008528];

      [(AmbientLightSensorDataController *)self setFinished:1];
    }
  }
}

- (void)handleHIDEvent:(__IOHIDEvent *)a3
{
  if (([(AmbientLightSensorDataController *)self isCancelled]& 1) == 0 && IOHIDEventGetType() == 12)
  {
    IOHIDEventGetFloatValue();
    IOHIDEventGetFloatValue();
    IOHIDEventGetFloatValue();
    IOHIDEventGetFloatValue();
    IOHIDEventGetFloatValue();
    v4 = [(AmbientLightSensorDataController *)self ALSDataCount]+ 1;

    [(AmbientLightSensorDataController *)self setALSDataCount:v4];
  }
}

- (void)finish
{
  if (([(AmbientLightSensorDataController *)self isCancelled]& 1) == 0)
  {
    [(AmbientLightSensorDataController *)self teardown];
    v3 = [(AmbientLightSensorDataController *)self ALSDataCount];
    v4 = DiagnosticLogHandleForCategory();
    v5 = v4;
    if (v3 < 1)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100002AF0(v5);
      }

      v6 = &off_100008558;
    }

    else
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v8[0] = 67109120;
        v8[1] = [(AmbientLightSensorDataController *)self ALSDataCount];
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Ambient Light Sensor found. (%d)", v8, 8u);
      }

      v6 = &off_100008540;
    }

    v7 = [(AmbientLightSensorDataController *)self result];
    [v7 setStatusCode:v6];
  }

  [(AmbientLightSensorDataController *)self setFinished:1];
}

- (void)teardown
{
  v3 = [(AmbientLightSensorDataController *)self eventMonitor];

  if (v3)
  {
    v4 = [(AmbientLightSensorDataController *)self eventMonitor];
    v5 = [v4 currentlyMonitoring];

    if (v5)
    {
      v6 = [(AmbientLightSensorDataController *)self eventMonitor];
      [v6 stopMonitoring];
    }

    [(AmbientLightSensorDataController *)self setEventMonitor:0];
  }

  v7 = [(AmbientLightSensorDataController *)self brightnessResponder];
  if (v7)
  {
  }

  else
  {
    v8 = [(AmbientLightSensorDataController *)self brightnessSystemClient];
    if (v8)
    {
      v9 = v8;
      v10 = [(AmbientLightSensorDataController *)self brightnessFactor];

      if (v10)
      {
        v11 = [(AmbientLightSensorDataController *)self brightnessSystemClient];
        v12 = [(AmbientLightSensorDataController *)self brightnessFactor];
        [v11 setProperty:v12 forKey:@"DisplayBrightnessFactor"];

        [(AmbientLightSensorDataController *)self setBrightnessSystemClient:0];

        [(AmbientLightSensorDataController *)self setBrightnessFactor:0];
      }
    }
  }
}

@end