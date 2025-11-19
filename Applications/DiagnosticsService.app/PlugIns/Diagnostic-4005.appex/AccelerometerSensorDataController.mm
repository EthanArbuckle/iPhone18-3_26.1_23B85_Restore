@interface AccelerometerSensorDataController
- (void)finish;
- (void)handleHIDEvent:(__IOHIDEvent *)a3;
- (void)start;
- (void)teardown;
@end

@implementation AccelerometerSensorDataController

- (void)start
{
  [(AccelerometerSensorDataController *)self setAccelerometerDataCount:0];
  v3 = +[DAHIDEventMonitor sharedInstance];
  [(AccelerometerSensorDataController *)self setEventMonitor:v3];

  v4 = [(AccelerometerSensorDataController *)self eventMonitor];
  [v4 setDelegate:self];

  if (([(AccelerometerSensorDataController *)self isCancelled]& 1) == 0)
  {
    v5 = [(AccelerometerSensorDataController *)self eventMonitor];
    v6 = [NSSet setWithObject:&off_1000044D0];
    v7 = [v5 startMonitoringWithHIDEvents:v6];

    if (v7 && (-[AccelerometerSensorDataController eventMonitor](self, "eventMonitor"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 serviceClientSetPropertyValue:+[NSNumber numberWithInt:](NSNumber forKey:"numberWithInt:" forHIDEvent:{10000), @"ReportInterval", 0}], v8, v9))
    {
      v10 = dispatch_time(0, 2000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000218C;
      block[3] = &unk_100004298;
      block[4] = self;
      dispatch_after(v10, &_dispatch_main_q, block);
    }

    else
    {
      v11 = [(AccelerometerSensorDataController *)self result];
      [v11 setStatusCode:&off_1000044E8];

      [(AccelerometerSensorDataController *)self setFinished:1];
    }
  }
}

- (void)handleHIDEvent:(__IOHIDEvent *)a3
{
  if (([(AccelerometerSensorDataController *)self isCancelled]& 1) == 0 && IOHIDEventGetType() == 13)
  {
    IOHIDEventGetFloatValue();
    IOHIDEventGetFloatValue();
    IOHIDEventGetFloatValue();
    v4 = [(AccelerometerSensorDataController *)self accelerometerDataCount]+ 1;

    [(AccelerometerSensorDataController *)self setAccelerometerDataCount:v4];
  }
}

- (void)finish
{
  if (([(AccelerometerSensorDataController *)self isCancelled]& 1) == 0)
  {
    [(AccelerometerSensorDataController *)self teardown];
    v3 = [(AccelerometerSensorDataController *)self accelerometerDataCount];
    v4 = DiagnosticLogHandleForCategory();
    v5 = v4;
    if (v3 < 1)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100002620(v5);
      }

      v6 = &off_100004518;
    }

    else
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v8[0] = 67109120;
        v8[1] = [(AccelerometerSensorDataController *)self accelerometerDataCount];
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Accelerometer found. (%d)", v8, 8u);
      }

      v6 = &off_100004500;
    }

    v7 = [(AccelerometerSensorDataController *)self result];
    [v7 setStatusCode:v6];
  }

  [(AccelerometerSensorDataController *)self setFinished:1];
}

- (void)teardown
{
  v3 = [(AccelerometerSensorDataController *)self eventMonitor];

  if (v3)
  {
    v4 = [(AccelerometerSensorDataController *)self eventMonitor];
    v5 = [v4 currentlyMonitoring];

    if (v5)
    {
      v6 = [(AccelerometerSensorDataController *)self eventMonitor];
      [v6 stopMonitoring];
    }

    [(AccelerometerSensorDataController *)self setEventMonitor:0];
  }
}

@end