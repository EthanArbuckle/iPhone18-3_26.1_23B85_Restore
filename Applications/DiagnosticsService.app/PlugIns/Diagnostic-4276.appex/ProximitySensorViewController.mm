@interface ProximitySensorViewController
- (id)downloadImageAsset:(id)a3 withResponder:(id)a4 error:(id *)a5;
- (id)instructionImageForPhase:(unint64_t)a3;
- (void)beginTest;
- (void)cleanUp;
- (void)disableProximitySensor;
- (void)enableProximitySensor;
- (void)endTest;
- (void)finishEarlyWithStatus:(int64_t)a3;
- (void)handleHIDEvent:(__IOHIDEvent *)a3;
- (void)hideInstructionImageAnimated:(BOOL)a3;
- (void)holdTimerFinished:(id)a3;
- (void)resetHoldTimerWithProximityState:(unint64_t)a3;
- (void)resetTimeoutTimer;
- (void)setProximityState:(unint64_t)a3;
- (void)setTestPhase:(unint64_t)a3;
- (void)setupUI;
- (void)setupWithInputs:(id)a3 responder:(id)a4;
- (void)showAlertWithTitle:(id)a3 message:(id)a4;
- (void)showInstructionImageForPhase:(unint64_t)a3 animated:(BOOL)a4;
- (void)stopHoldTimer;
- (void)stopTimeoutTimer;
- (void)timeoutOccurred;
@end

@implementation ProximitySensorViewController

- (void)setupWithInputs:(id)a3 responder:(id)a4
{
  v6 = a4;
  [(ProximitySensorViewController *)self setInputs:a3];
  v7 = [(ProximitySensorViewController *)self inputs];
  v8 = [v7 downImageFileName];
  v9 = [v8 isEqualToString:&stru_10000C750];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = [(ProximitySensorViewController *)self inputs];
    v12 = [v11 downImageFileName];
    v34 = 0;
    v13 = [(ProximitySensorViewController *)self downloadImageAsset:v12 withResponder:v6 error:&v34];
    v10 = v34;
    [(ProximitySensorViewController *)self setDownImage:v13];

    if (v10)
    {
      -[ProximitySensorViewController finishEarlyWithStatus:](self, "finishEarlyWithStatus:", [v10 code]);
    }
  }

  v14 = [(ProximitySensorViewController *)self inputs];
  v15 = [v14 upImageFileName];
  v16 = [v15 isEqualToString:&stru_10000C750];

  if ((v16 & 1) == 0)
  {
    v17 = [(ProximitySensorViewController *)self inputs];
    v18 = [v17 upImageFileName];
    v33 = v10;
    v19 = [(ProximitySensorViewController *)self downloadImageAsset:v18 withResponder:v6 error:&v33];
    v20 = v33;

    [(ProximitySensorViewController *)self setUpImage:v19];
    if (v20)
    {
      -[ProximitySensorViewController finishEarlyWithStatus:](self, "finishEarlyWithStatus:", [v20 code]);
      v10 = v20;
    }

    else
    {
      v10 = 0;
    }
  }

  v21 = +[DAOpticalProximityManager sharedInstance];
  v22 = [v21 opticalSensorPresent];

  v23 = v22 ^ 1;
  v24 = off_10000C2E8;
  if (v22)
  {
    v24 = &off_10000C2F0;
  }

  v25 = [(__objc2_class *)*v24 sharedInstance];
  [(ProximitySensorViewController *)self setProximityManager:v25];

  [(ProximitySensorViewController *)self setSensorType:v23];
  v26 = +[DSTestAutomation sharedInstance];
  LODWORD(v25) = [v26 testAutomationEnabled];

  if (v25)
  {
    v35[0] = @"noInputTimeout";
    v27 = [(ProximitySensorViewController *)self inputs];
    v28 = [v27 noInputTimeout];
    v29 = numberOrNull(v28);
    v36[0] = v29;
    v35[1] = @"holdTime";
    v30 = [(ProximitySensorViewController *)self inputs];
    v31 = [v30 holdTime];
    v36[1] = v31;
    v32 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];
    [DSTestAutomation postConfiguration:v32];
  }

  [(ProximitySensorViewController *)self setupUI];
}

- (id)downloadImageAsset:(id)a3 withResponder:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_100002BDC;
  v38 = sub_100002BEC;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_100002BDC;
  v32 = sub_100002BEC;
  v33 = 0;
  v10 = dispatch_semaphore_create(0);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100002BF4;
  v23[3] = &unk_10000C4D0;
  v11 = v8;
  v24 = v11;
  v26 = &v34;
  v27 = &v28;
  v12 = v10;
  v25 = v12;
  [v9 getAsset:v11 completion:v23];
  v13 = [(ProximitySensorViewController *)self inputs];
  v14 = [v13 assetDownloadTimeout];
  [v14 doubleValue];
  v16 = dispatch_time(0, (v15 * 1000000000.0));
  v17 = dispatch_semaphore_wait(v12, v16);

  if (v17)
  {
    v40 = NSLocalizedDescriptionKey;
    v41 = @"Timed out downloading image asset.";
    v18 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v19 = [NSError errorWithDomain:@"DAProximitySensorErrorDomain" code:-6 userInfo:v18];
    v20 = v29[5];
    v29[5] = v19;
  }

  if (a5)
  {
    *a5 = v29[5];
  }

  v21 = v35[5];

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  return v21;
}

- (void)setupUI
{
  v4 = +[UIColor whiteColor];
  v3 = [(ProximitySensorViewController *)self view];
  [v3 setBackgroundColor:v4];
}

- (void)cleanUp
{
  [(ProximitySensorViewController *)self stopTimeoutTimer];
  [(ProximitySensorViewController *)self stopHoldTimer];
  [(ProximitySensorViewController *)self disableProximitySensor];
  v3 = [(ProximitySensorViewController *)self eventMonitor];

  if (v3)
  {
    v4 = [(ProximitySensorViewController *)self eventMonitor];
    v5 = [v4 currentlyMonitoring];

    if (v5)
    {
      v6 = [(ProximitySensorViewController *)self eventMonitor];
      [v6 stopMonitoring];
    }

    [(ProximitySensorViewController *)self setEventMonitor:0];
  }

  v7 = [(ProximitySensorViewController *)self proximityManager];

  if (v7)
  {
    v8 = [(ProximitySensorViewController *)self proximityManager];
    v9 = [v8 isUpdating];

    if (v9)
    {
      v10 = [(ProximitySensorViewController *)self proximityManager];
      [v10 stopProximitySensorUpdates];
    }

    [(ProximitySensorViewController *)self setProximityManager:0];
  }
}

- (void)setProximityState:(unint64_t)a3
{
  self->_proximityState = a3;
  if ([(ProximitySensorViewController *)self timedOut])
  {
    return;
  }

  v5 = [(ProximitySensorViewController *)self testPhase];
  switch(v5)
  {
    case 2uLL:
      goto LABEL_6;
    case 1uLL:
      if (a3)
      {
        return;
      }

      goto LABEL_9;
    case 0uLL:
LABEL_6:
      if (a3 != 1)
      {
        return;
      }

LABEL_9:
      v6 = [(ProximitySensorViewController *)self testPhase]+ 1;

      [(ProximitySensorViewController *)self setTestPhase:v6];
      return;
  }

  v7 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1000062A4(self);
  }
}

- (void)setTestPhase:(unint64_t)a3
{
  self->_testPhase = a3;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v7 = +[DSTestAutomation sharedInstance];
      v8 = [v7 testAutomationEnabled];

      if (v8)
      {
        [DSTestAutomation postInteractiveTestEvent:@"BeganListeningForProximityStateChange" info:&off_10000CCB8];
      }

      goto LABEL_20;
    }

    if (a3 != 3)
    {
      goto LABEL_12;
    }

    [(ProximitySensorViewController *)self endTest];

    [(ProximitySensorViewController *)self hideInstructionImageAnimated:1];
  }

  else
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v4 = +[DSTestAutomation sharedInstance];
        v5 = [v4 testAutomationEnabled];

        if (v5)
        {
          [DSTestAutomation postInteractiveTestEvent:@"BeganListeningForProximityStateChange" info:&off_10000CC90];
        }

LABEL_20:
        [(ProximitySensorViewController *)self resetTimeoutTimer];

        [ProximitySensorViewController showInstructionImageForPhase:"showInstructionImageForPhase:animated:" animated:?];
        return;
      }

LABEL_12:
      v6 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10000633C(self);
      }

      return;
    }

    [(ProximitySensorViewController *)self beginTest];
  }
}

- (void)beginTest
{
  v3 = [(ProximitySensorViewController *)self result];
  [v3 setStatusCode:&off_10000CAA8];

  [(ProximitySensorViewController *)self setTimedOut:0];
  [(ProximitySensorViewController *)self enableProximitySensor];

  [(ProximitySensorViewController *)self setProximityState:1];
}

- (void)endTest
{
  [(ProximitySensorViewController *)self cleanUp];
  if (![(ProximitySensorViewController *)self sensorType])
  {
    v3 = [(ProximitySensorViewController *)self proximityManager];
    v4 = [v3 sensorData];
    v5 = [NSMutableDictionary dictionaryWithDictionary:v4];

    v6 = [NSNumber numberWithLong:[(ProximitySensorViewController *)self actualCloseStateThreshold]];
    [v5 setObject:v6 forKeyedSubscript:@"actualCloseStateThreshold"];

    v7 = [(ProximitySensorViewController *)self result];
    [v7 setData:v5];
  }

  [(ProximitySensorViewController *)self setFinished:1];
}

- (void)finishEarlyWithStatus:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];
  v5 = [(ProximitySensorViewController *)self result];
  [v5 setStatusCode:v4];

  [(ProximitySensorViewController *)self setFinished:1];
}

- (void)showAlertWithTitle:(id)a3 message:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(ProximitySensorViewController *)self stopTimeoutTimer];
  [(ProximitySensorViewController *)self setTimedOut:1];
  [(ProximitySensorViewController *)self hideInstructionImageAnimated:1];
  v8 = [UIAlertController alertControllerWithTitle:v7 message:v6 preferredStyle:1];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"SKIP" value:&stru_10000C750 table:0];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100003628;
  v16[3] = &unk_10000C4F8;
  v16[4] = self;
  v11 = [UIAlertAction actionWithTitle:v10 style:0 handler:v16];
  [v8 addAction:v11];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"RETRY" value:&stru_10000C750 table:0];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000036F8;
  v15[3] = &unk_10000C4F8;
  v15[4] = self;
  v14 = [UIAlertAction actionWithTitle:v13 style:1 handler:v15];
  [v8 addAction:v14];

  [(ProximitySensorViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)enableProximitySensor
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Requesting Backboard HID Services to set proximity detection mode to passive.", buf, 2u);
  }

  BKSHIDServicesRequestProximityDetectionMode();
  v4 = [(ProximitySensorViewController *)self eventMonitor];
  if (v4)
  {

LABEL_6:
    *buf = 0;
    v14 = buf;
    v15 = 0x2020000000;
    v16 = [(ProximitySensorViewController *)self proximityState];
    v5 = [(ProximitySensorViewController *)self proximityManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000038FC;
    v12[3] = &unk_10000C520;
    v12[4] = self;
    v12[5] = buf;
    v6 = [v5 startProximitySensorUpdatesWithHandler:v12];

    if ((v6 & 1) == 0)
    {
      [(ProximitySensorViewController *)self finishEarlyWithStatus:-4];
    }

    _Block_object_dispose(buf, 8);
    return;
  }

  if ([(ProximitySensorViewController *)self sensorType])
  {
    goto LABEL_6;
  }

  v7 = +[DAHIDEventMonitor sharedInstance];
  [(ProximitySensorViewController *)self setEventMonitor:v7];

  v8 = [(ProximitySensorViewController *)self eventMonitor];
  [v8 setDelegate:self];

  v9 = [(ProximitySensorViewController *)self eventMonitor];
  v10 = [NSSet setWithObject:&off_10000CB08];
  v11 = [v9 startMonitoringWithHIDEvents:v10];

  if ((v11 & 1) == 0)
  {
    [(ProximitySensorViewController *)self finishEarlyWithStatus:-3];
  }
}

- (void)disableProximitySensor
{
  v3 = [(ProximitySensorViewController *)self eventMonitor];

  if (v3)
  {
    v4 = [(ProximitySensorViewController *)self eventMonitor];
    v5 = [v4 currentlyMonitoring];

    if (v5)
    {
      v6 = [(ProximitySensorViewController *)self eventMonitor];
      [v6 stopMonitoring];
    }

    [(ProximitySensorViewController *)self setEventMonitor:0];
  }

  else if ([(ProximitySensorViewController *)self sensorType]== 1)
  {
    v7 = [(ProximitySensorViewController *)self proximityManager];
    v8 = [v7 isUpdating];

    if (v8)
    {
      v9 = [(ProximitySensorViewController *)self proximityManager];
      [v9 stopProximitySensorUpdates];
    }
  }

  v10 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Requesting Backboard HID Services to restore proximity detection mode.", v11, 2u);
  }

  BKSHIDServicesRequestProximityDetectionMode();
}

- (void)handleHIDEvent:(__IOHIDEvent *)a3
{
  if (IOHIDEventGetType() == 14)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    if (IntegerValue < 1)
    {
      v5 = 1;
    }

    else
    {
      [(ProximitySensorViewController *)self setActualCloseStateThreshold:IntegerValue];
      v5 = 0;
    }

    [(ProximitySensorViewController *)self resetHoldTimerWithProximityState:v5];
  }
}

- (void)timeoutOccurred
{
  [(ProximitySensorViewController *)self disableProximitySensor];
  v4 = +[NSBundle mainBundle];
  v3 = [v4 localizedStringForKey:@"NO_INPUT_DETECTED" value:&stru_10000C750 table:0];
  [(ProximitySensorViewController *)self showAlertWithTitle:v3 message:0];
}

- (void)resetTimeoutTimer
{
  [(ProximitySensorViewController *)self stopTimeoutTimer];
  [(ProximitySensorViewController *)self setTimedOut:0];
  v3 = [(ProximitySensorViewController *)self inputs];
  v4 = [v3 noInputTimeout];

  if (v4)
  {
    v7 = [(ProximitySensorViewController *)self inputs];
    v5 = [v7 noInputTimeout];
    [v5 doubleValue];
    v6 = [NSTimer scheduledTimerWithTimeInterval:self target:"timeoutOccurred" selector:0 userInfo:0 repeats:?];
    [(ProximitySensorViewController *)self setTimeoutTimer:v6];
  }
}

- (void)stopTimeoutTimer
{
  v3 = [(ProximitySensorViewController *)self timeoutTimer];

  if (v3)
  {
    v4 = [(ProximitySensorViewController *)self timeoutTimer];
    [v4 invalidate];

    [(ProximitySensorViewController *)self setTimeoutTimer:0];
  }
}

- (void)holdTimerFinished:(id)a3
{
  v5 = a3;
  if (![(ProximitySensorViewController *)self timedOut])
  {
    v4 = [v5 userInfo];
    -[ProximitySensorViewController setProximityState:](self, "setProximityState:", [v4 unsignedIntegerValue]);
  }
}

- (void)resetHoldTimerWithProximityState:(unint64_t)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100003E00;
  v3[3] = &unk_10000C548;
  v3[4] = self;
  v3[5] = a3;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)stopHoldTimer
{
  v3 = [(ProximitySensorViewController *)self holdTimer];

  if (v3)
  {
    v4 = [(ProximitySensorViewController *)self holdTimer];
    [v4 invalidate];

    [(ProximitySensorViewController *)self setHoldTimer:0];
  }
}

- (id)instructionImageForPhase:(unint64_t)a3
{
  if (a3 == 1)
  {
    v7 = [(ProximitySensorViewController *)self downImage];

    if (v7)
    {
      v6 = [(ProximitySensorViewController *)self downImage];
      goto LABEL_7;
    }
  }

  else if (a3 == 2)
  {
    v5 = [(ProximitySensorViewController *)self upImage];

    if (v5)
    {
      v6 = [(ProximitySensorViewController *)self upImage];
LABEL_7:
      v8 = v6;
      goto LABEL_15;
    }
  }

  v9 = [(ProximitySensorViewController *)self view];
  v10 = [v9 window];
  v11 = [v10 windowScene];
  v12 = [v11 screen];
  [v12 bounds];
  v14 = v13;
  v16 = v15;

  v17 = [(ProximitySensorViewController *)self view];
  v18 = [v17 window];
  v19 = [v18 windowScene];
  v20 = [v19 screen];
  [v20 scale];
  v22 = v21;

  v23 = +[NSMutableString string];
  v24 = v23;
  if (a3 == 2)
  {
    v25 = @"up-";
  }

  else
  {
    if (a3 != 1)
    {
      v8 = 0;
      goto LABEL_14;
    }

    v25 = @"down-";
  }

  [v23 appendString:v25];
  v26 = [NSNumber numberWithDouble:v14 * v22];
  v27 = [NSNumber numberWithDouble:v16 * v22];
  [v24 appendFormat:@"%@-%@.png", v26, v27];

  v8 = [UIImage imageNamed:v24];
LABEL_14:

LABEL_15:

  return v8;
}

- (void)showInstructionImageForPhase:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(ProximitySensorViewController *)self instructionImageView];

  if (v7)
  {
    v8 = [(ProximitySensorViewController *)self instructionImageView];
    [v8 removeFromSuperview];

    [(ProximitySensorViewController *)self setInstructionImageView:0];
  }

  v9 = [UIImageView alloc];
  v10 = [(ProximitySensorViewController *)self view];
  [v10 bounds];
  v11 = [v9 initWithFrame:?];
  [(ProximitySensorViewController *)self setInstructionImageView:v11];

  v12 = [(ProximitySensorViewController *)self instructionImageForPhase:a3];
  v13 = [(ProximitySensorViewController *)self instructionImageView];
  [v13 setImage:v12];

  if (v4)
  {
    v14 = [(ProximitySensorViewController *)self instructionImageView];
    [v14 setAlpha:0.0];

    v15 = [(ProximitySensorViewController *)self view];
    v16 = [(ProximitySensorViewController *)self instructionImageView];
    [v15 addSubview:v16];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10000436C;
    v19[3] = &unk_10000C470;
    v19[4] = self;
    [UIView animateWithDuration:0x10000 delay:v19 options:0 animations:0.25 completion:0.0];
  }

  else
  {
    v18 = [(ProximitySensorViewController *)self view];
    v17 = [(ProximitySensorViewController *)self instructionImageView];
    [v18 addSubview:v17];
  }
}

- (void)hideInstructionImageAnimated:(BOOL)a3
{
  if (a3)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100004474;
    v4[3] = &unk_10000C470;
    v4[4] = self;
    [UIView animateWithDuration:0x20000 delay:v4 options:0 animations:0.25 completion:0.0];
  }

  else
  {
    v3 = [(ProximitySensorViewController *)self instructionImageView];
    [v3 setAlpha:0.0];
  }
}

@end