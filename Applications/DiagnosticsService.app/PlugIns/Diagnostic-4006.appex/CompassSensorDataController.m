@interface CompassSensorDataController
- (void)finish;
- (void)handleHIDEvent:(__IOHIDEvent *)a3;
- (void)start;
- (void)teardown;
@end

@implementation CompassSensorDataController

- (void)start
{
  [(CompassSensorDataController *)self setCompassDataCount:0];
  v3 = +[DAHIDEventMonitor sharedInstance];
  [(CompassSensorDataController *)self setEventMonitor:v3];

  v4 = [(CompassSensorDataController *)self eventMonitor];
  [v4 setDelegate:self];

  if (([(CompassSensorDataController *)self isCancelled]& 1) == 0)
  {
    v5 = [(CompassSensorDataController *)self eventMonitor];
    v6 = [NSSet setWithObject:&off_1000043C8];
    v7 = [v5 startMonitoringWithHIDEvents:v6];

    if (v7 && (-[CompassSensorDataController eventMonitor](self, "eventMonitor"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 serviceClientSetPropertyValue:+[NSNumber numberWithInt:](NSNumber forKey:"numberWithInt:" forHIDEvent:{10000), @"ReportInterval", 4}], v8, v9))
    {
      v10 = dispatch_time(0, 2000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100001098;
      block[3] = &unk_100004230;
      block[4] = self;
      dispatch_after(v10, &_dispatch_main_q, block);
    }

    else
    {
      v11 = [(CompassSensorDataController *)self result];
      [v11 setStatusCode:&off_1000043E0];

      [(CompassSensorDataController *)self setFinished:1];
    }
  }
}

- (void)handleHIDEvent:(__IOHIDEvent *)a3
{
  if (([(CompassSensorDataController *)self isCancelled]& 1) == 0 && IOHIDEventGetType() == 21)
  {
    IOHIDEventGetFloatValue();
    IOHIDEventGetFloatValue();
    IOHIDEventGetFloatValue();
    v4 = [(CompassSensorDataController *)self compassDataCount]+ 1;

    [(CompassSensorDataController *)self setCompassDataCount:v4];
  }
}

- (void)finish
{
  if (([(CompassSensorDataController *)self isCancelled]& 1) == 0)
  {
    [(CompassSensorDataController *)self teardown];
    v3 = [(CompassSensorDataController *)self compassDataCount];
    v4 = DiagnosticLogHandleForCategory();
    v5 = v4;
    if (v3 < 1)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100002538(v5);
      }

      v6 = &off_100004410;
    }

    else
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v8[0] = 67109120;
        v8[1] = [(CompassSensorDataController *)self compassDataCount];
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Compass found. (%d)", v8, 8u);
      }

      v6 = &off_1000043F8;
    }

    v7 = [(CompassSensorDataController *)self result];
    [v7 setStatusCode:v6];
  }

  [(CompassSensorDataController *)self setFinished:1];
}

- (void)teardown
{
  v3 = [(CompassSensorDataController *)self eventMonitor];

  if (v3)
  {
    v4 = [(CompassSensorDataController *)self eventMonitor];
    v5 = [v4 currentlyMonitoring];

    if (v5)
    {
      v6 = [(CompassSensorDataController *)self eventMonitor];
      [v6 stopMonitoring];
    }

    [(CompassSensorDataController *)self setEventMonitor:0];
  }
}

@end