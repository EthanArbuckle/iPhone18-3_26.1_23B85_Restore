@interface BarometerSensorDataController
- (void)finish;
- (void)handleHIDEvent:(__IOHIDEvent *)event;
- (void)start;
- (void)teardown;
@end

@implementation BarometerSensorDataController

- (void)start
{
  [(BarometerSensorDataController *)self setBarometerDataCount:0];
  v3 = +[DAHIDEventMonitor sharedInstance];
  [(BarometerSensorDataController *)self setEventMonitor:v3];

  eventMonitor = [(BarometerSensorDataController *)self eventMonitor];
  [eventMonitor setDelegate:self];

  if (([(BarometerSensorDataController *)self isCancelled]& 1) == 0)
  {
    eventMonitor2 = [(BarometerSensorDataController *)self eventMonitor];
    v6 = [NSSet setWithObject:&off_1000044D0];
    v7 = [eventMonitor2 startMonitoringWithHIDEvents:v6];

    if (v7 && (-[BarometerSensorDataController eventMonitor](self, "eventMonitor"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 serviceClientSetPropertyValue:+[NSNumber numberWithInt:](NSNumber forKey:"numberWithInt:" forHIDEvent:{40000), @"ReportInterval", 5}], v8, v9))
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
      result = [(BarometerSensorDataController *)self result];
      [result setStatusCode:&off_1000044E8];

      [(BarometerSensorDataController *)self setFinished:1];
    }
  }
}

- (void)handleHIDEvent:(__IOHIDEvent *)event
{
  if (([(BarometerSensorDataController *)self isCancelled]& 1) == 0 && IOHIDEventGetType() == 31)
  {
    IOHIDEventGetFloatValue();
    v4 = [(BarometerSensorDataController *)self barometerDataCount]+ 1;

    [(BarometerSensorDataController *)self setBarometerDataCount:v4];
  }
}

- (void)finish
{
  if (([(BarometerSensorDataController *)self isCancelled]& 1) == 0)
  {
    [(BarometerSensorDataController *)self teardown];
    barometerDataCount = [(BarometerSensorDataController *)self barometerDataCount];
    v4 = DiagnosticLogHandleForCategory();
    v5 = v4;
    if (barometerDataCount < 1)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1000025CC(v5);
      }

      v6 = &off_100004518;
    }

    else
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v8[0] = 67109120;
        v8[1] = [(BarometerSensorDataController *)self barometerDataCount];
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Barometer found. (%d)", v8, 8u);
      }

      v6 = &off_100004500;
    }

    result = [(BarometerSensorDataController *)self result];
    [result setStatusCode:v6];
  }

  [(BarometerSensorDataController *)self setFinished:1];
}

- (void)teardown
{
  eventMonitor = [(BarometerSensorDataController *)self eventMonitor];

  if (eventMonitor)
  {
    eventMonitor2 = [(BarometerSensorDataController *)self eventMonitor];
    currentlyMonitoring = [eventMonitor2 currentlyMonitoring];

    if (currentlyMonitoring)
    {
      eventMonitor3 = [(BarometerSensorDataController *)self eventMonitor];
      [eventMonitor3 stopMonitoring];
    }

    [(BarometerSensorDataController *)self setEventMonitor:0];
  }
}

@end