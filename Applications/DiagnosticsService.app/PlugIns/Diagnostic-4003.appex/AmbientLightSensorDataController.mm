@interface AmbientLightSensorDataController
- (void)finish;
- (void)handleHIDEvent:(__IOHIDEvent *)event;
- (void)setupWithInputs:(id)inputs responder:(id)responder;
- (void)start;
- (void)teardown;
@end

@implementation AmbientLightSensorDataController

- (void)setupWithInputs:(id)inputs responder:(id)responder
{
  responderCopy = responder;
  if ([responderCopy conformsToProtocol:&OBJC_PROTOCOL___DKBrightnessResponder])
  {
    [(AmbientLightSensorDataController *)self setBrightnessResponder:responderCopy];
  }
}

- (void)start
{
  [(AmbientLightSensorDataController *)self setALSDataCount:0];
  brightnessResponder = [(AmbientLightSensorDataController *)self brightnessResponder];

  v4 = DiagnosticLogHandleForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (brightnessResponder)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Using DKBrightnessResponder to increase brightness for ALS", buf, 2u);
    }

    brightnessResponder2 = [(AmbientLightSensorDataController *)self brightnessResponder];
    LODWORD(v7) = 1.0;
    [brightnessResponder2 setScreenToBrightness:1 animate:v7];
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

    brightnessSystemClient = [(AmbientLightSensorDataController *)self brightnessSystemClient];
    v10 = [brightnessSystemClient copyPropertyForKey:@"DisplayBrightnessFactor"];
    [(AmbientLightSensorDataController *)self setBrightnessFactor:v10];

    brightnessSystemClient2 = [(AmbientLightSensorDataController *)self brightnessSystemClient];
    [brightnessSystemClient2 setProperty:&off_100008570 forKey:@"DisplayBrightnessFactor"];

    brightnessResponder2 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(brightnessResponder2, OS_LOG_TYPE_DEFAULT))
    {
      brightnessFactor = [(AmbientLightSensorDataController *)self brightnessFactor];
      *buf = 138412290;
      v24 = brightnessFactor;
      _os_log_impl(&_mh_execute_header, brightnessResponder2, OS_LOG_TYPE_DEFAULT, "Brightness factor is %@", buf, 0xCu);
    }
  }

  v13 = +[DAHIDEventMonitor sharedInstance];
  [(AmbientLightSensorDataController *)self setEventMonitor:v13];

  eventMonitor = [(AmbientLightSensorDataController *)self eventMonitor];
  [eventMonitor setDelegate:self];

  if (([(AmbientLightSensorDataController *)self isCancelled]& 1) == 0)
  {
    eventMonitor2 = [(AmbientLightSensorDataController *)self eventMonitor];
    v16 = [NSSet setWithObject:&off_100008510];
    v17 = [eventMonitor2 startMonitoringWithHIDEvents:v16];

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
      result = [(AmbientLightSensorDataController *)self result];
      [result setStatusCode:&off_100008528];

      [(AmbientLightSensorDataController *)self setFinished:1];
    }
  }
}

- (void)handleHIDEvent:(__IOHIDEvent *)event
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
    aLSDataCount = [(AmbientLightSensorDataController *)self ALSDataCount];
    v4 = DiagnosticLogHandleForCategory();
    v5 = v4;
    if (aLSDataCount < 1)
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

    result = [(AmbientLightSensorDataController *)self result];
    [result setStatusCode:v6];
  }

  [(AmbientLightSensorDataController *)self setFinished:1];
}

- (void)teardown
{
  eventMonitor = [(AmbientLightSensorDataController *)self eventMonitor];

  if (eventMonitor)
  {
    eventMonitor2 = [(AmbientLightSensorDataController *)self eventMonitor];
    currentlyMonitoring = [eventMonitor2 currentlyMonitoring];

    if (currentlyMonitoring)
    {
      eventMonitor3 = [(AmbientLightSensorDataController *)self eventMonitor];
      [eventMonitor3 stopMonitoring];
    }

    [(AmbientLightSensorDataController *)self setEventMonitor:0];
  }

  brightnessResponder = [(AmbientLightSensorDataController *)self brightnessResponder];
  if (brightnessResponder)
  {
  }

  else
  {
    brightnessSystemClient = [(AmbientLightSensorDataController *)self brightnessSystemClient];
    if (brightnessSystemClient)
    {
      v9 = brightnessSystemClient;
      brightnessFactor = [(AmbientLightSensorDataController *)self brightnessFactor];

      if (brightnessFactor)
      {
        brightnessSystemClient2 = [(AmbientLightSensorDataController *)self brightnessSystemClient];
        brightnessFactor2 = [(AmbientLightSensorDataController *)self brightnessFactor];
        [brightnessSystemClient2 setProperty:brightnessFactor2 forKey:@"DisplayBrightnessFactor"];

        [(AmbientLightSensorDataController *)self setBrightnessSystemClient:0];

        [(AmbientLightSensorDataController *)self setBrightnessFactor:0];
      }
    }
  }
}

@end