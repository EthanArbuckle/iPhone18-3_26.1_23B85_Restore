@interface DeviceAngleController
- (id)readDeviceAnglesFrom:(id)a3;
- (void)start;
- (void)teardown;
@end

@implementation DeviceAngleController

- (void)start
{
  v3 = objc_alloc_init(CMMotionManager);
  [(DeviceAngleController *)self setMotionManager:v3];

  v4 = [(DeviceAngleController *)self motionManager];
  v5 = [v4 isDeviceMotionAvailable];

  if (v5)
  {
    v6 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v23 = 0x3FB99999A0000000;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "About to start monitoring for motion with interval %f", buf, 0xCu);
    }

    v7 = dispatch_semaphore_create(0);
    v8 = objc_alloc_init(NSOperationQueue);
    v9 = [(DeviceAngleController *)self motionManager];
    [v9 setDeviceMotionUpdateInterval:0.100000001];

    v10 = [(DeviceAngleController *)self motionManager];
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_100000F2C;
    v19 = &unk_1000040F8;
    v11 = v7;
    v20 = v11;
    v21 = self;
    [v10 startDeviceMotionUpdatesToQueue:v8 withHandler:&v16];

    v12 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v11, v12))
    {
      v13 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000013A4(v13);
      }

      v14 = [(DeviceAngleController *)self result:v16];
      [v14 setStatusCode:&off_1000041F0];

      [(DeviceAngleController *)self setFinished:1];
    }
  }

  else
  {
    v15 = [(DeviceAngleController *)self result];
    [v15 setStatusCode:&off_1000041A8];

    [(DeviceAngleController *)self setFinished:1];
  }
}

- (void)teardown
{
  v3 = [(DeviceAngleController *)self motionManager];

  if (v3)
  {
    v4 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Stopping motion updates", v6, 2u);
    }

    v5 = [(DeviceAngleController *)self motionManager];
    [v5 stopDeviceMotionUpdates];

    [(DeviceAngleController *)self setMotionManager:0];
  }
}

- (id)readDeviceAnglesFrom:(id)a3
{
  v3 = [a3 attitude];
  [v3 roll];
  v5 = v4 * 57.2957802;
  [v3 pitch];
  v7 = v6 * 57.2957802;
  [v3 yaw];
  v9 = v8 * 57.2957802;
  v10 = [NSString stringWithFormat:@"%f", v7];
  v11 = [NSString stringWithFormat:@"%f", v5];
  v12 = [NSString stringWithFormat:@"%f", v9];
  v18[0] = @"pitch";
  v18[1] = @"roll";
  v19[0] = v10;
  v19[1] = v11;
  v18[2] = @"yaw";
  v19[2] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];
  v14 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Motion result is %@", buf, 0xCu);
  }

  return v13;
}

@end