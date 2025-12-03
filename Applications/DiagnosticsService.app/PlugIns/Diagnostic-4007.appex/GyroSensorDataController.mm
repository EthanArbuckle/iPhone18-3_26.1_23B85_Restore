@interface GyroSensorDataController
- (void)finish;
- (void)handleHIDEvent:(__IOHIDEvent *)event;
- (void)start;
- (void)teardown;
@end

@implementation GyroSensorDataController

- (void)start
{
  [(GyroSensorDataController *)self setGyroDataCount:0];
  v3 = +[DAHIDEventMonitor sharedInstance];
  [(GyroSensorDataController *)self setEventMonitor:v3];

  eventMonitor = [(GyroSensorDataController *)self eventMonitor];
  [eventMonitor setDelegate:self];

  if (([(GyroSensorDataController *)self isCancelled]& 1) == 0)
  {
    eventMonitor2 = [(GyroSensorDataController *)self eventMonitor];
    v6 = [NSSet setWithObject:&off_1000044D0];
    v7 = [eventMonitor2 startMonitoringWithHIDEvents:v6];

    if (v7 && (-[GyroSensorDataController eventMonitor](self, "eventMonitor"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 serviceClientSetPropertyValue:+[NSNumber numberWithInt:](NSNumber forKey:"numberWithInt:" forHIDEvent:{10000), @"ReportInterval", 1}], v8, v9))
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
      result = [(GyroSensorDataController *)self result];
      [result setStatusCode:&off_1000044E8];

      [(GyroSensorDataController *)self setFinished:1];
    }
  }
}

- (void)handleHIDEvent:(__IOHIDEvent *)event
{
  if (([(GyroSensorDataController *)self isCancelled]& 1) == 0 && IOHIDEventGetType() == 20)
  {
    IOHIDEventGetFloatValue();
    *&v4 = v4;
    v5 = [NSNumber numberWithFloat:v4];

    IOHIDEventGetFloatValue();
    *&v6 = v6;
    v7 = [NSNumber numberWithFloat:v6];

    IOHIDEventGetFloatValue();
    *&v8 = v8;
    v9 = [NSNumber numberWithFloat:v8];

    if (v5)
    {
      if (v7 && v9)
      {
        v10 = [(GyroSensorDataController *)self gyroDataCount]+ 1;

        [(GyroSensorDataController *)self setGyroDataCount:v10];
      }
    }
  }
}

- (void)finish
{
  if (([(GyroSensorDataController *)self isCancelled]& 1) == 0)
  {
    [(GyroSensorDataController *)self teardown];
    gyroDataCount = [(GyroSensorDataController *)self gyroDataCount];
    v4 = DiagnosticLogHandleForCategory();
    v5 = v4;
    if (gyroDataCount < 1)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100002664(v5);
      }

      v6 = &off_100004518;
    }

    else
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v8[0] = 67109120;
        v8[1] = [(GyroSensorDataController *)self gyroDataCount];
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Gyroscope found. (%d)", v8, 8u);
      }

      v6 = &off_100004500;
    }

    result = [(GyroSensorDataController *)self result];
    [result setStatusCode:v6];
  }

  [(GyroSensorDataController *)self setFinished:1];
}

- (void)teardown
{
  eventMonitor = [(GyroSensorDataController *)self eventMonitor];

  if (eventMonitor)
  {
    eventMonitor2 = [(GyroSensorDataController *)self eventMonitor];
    currentlyMonitoring = [eventMonitor2 currentlyMonitoring];

    if (currentlyMonitoring)
    {
      eventMonitor3 = [(GyroSensorDataController *)self eventMonitor];
      [eventMonitor3 stopMonitoring];
    }

    [(GyroSensorDataController *)self setEventMonitor:0];
  }
}

@end