@interface ProximitySensorViewController
- (id)downloadImageAsset:(id)asset withResponder:(id)responder error:(id *)error;
- (id)instructionImageForPhase:(unint64_t)phase;
- (void)beginTest;
- (void)cleanUp;
- (void)disableProximitySensor;
- (void)enableProximitySensor;
- (void)endTest;
- (void)finishEarlyWithStatus:(int64_t)status;
- (void)handleHIDEvent:(__IOHIDEvent *)event;
- (void)hideInstructionImageAnimated:(BOOL)animated;
- (void)holdTimerFinished:(id)finished;
- (void)resetHoldTimerWithProximityState:(unint64_t)state;
- (void)resetTimeoutTimer;
- (void)setProximityState:(unint64_t)state;
- (void)setTestPhase:(unint64_t)phase;
- (void)setupUI;
- (void)setupWithInputs:(id)inputs responder:(id)responder;
- (void)showAlertWithTitle:(id)title message:(id)message;
- (void)showInstructionImageForPhase:(unint64_t)phase animated:(BOOL)animated;
- (void)stopHoldTimer;
- (void)stopTimeoutTimer;
- (void)timeoutOccurred;
@end

@implementation ProximitySensorViewController

- (void)setupWithInputs:(id)inputs responder:(id)responder
{
  responderCopy = responder;
  [(ProximitySensorViewController *)self setInputs:inputs];
  inputs = [(ProximitySensorViewController *)self inputs];
  downImageFileName = [inputs downImageFileName];
  v9 = [downImageFileName isEqualToString:&stru_10000C750];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    inputs2 = [(ProximitySensorViewController *)self inputs];
    downImageFileName2 = [inputs2 downImageFileName];
    v34 = 0;
    v13 = [(ProximitySensorViewController *)self downloadImageAsset:downImageFileName2 withResponder:responderCopy error:&v34];
    v10 = v34;
    [(ProximitySensorViewController *)self setDownImage:v13];

    if (v10)
    {
      -[ProximitySensorViewController finishEarlyWithStatus:](self, "finishEarlyWithStatus:", [v10 code]);
    }
  }

  inputs3 = [(ProximitySensorViewController *)self inputs];
  upImageFileName = [inputs3 upImageFileName];
  v16 = [upImageFileName isEqualToString:&stru_10000C750];

  if ((v16 & 1) == 0)
  {
    inputs4 = [(ProximitySensorViewController *)self inputs];
    upImageFileName2 = [inputs4 upImageFileName];
    v33 = v10;
    v19 = [(ProximitySensorViewController *)self downloadImageAsset:upImageFileName2 withResponder:responderCopy error:&v33];
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
  opticalSensorPresent = [v21 opticalSensorPresent];

  v23 = opticalSensorPresent ^ 1;
  v24 = off_10000C2E8;
  if (opticalSensorPresent)
  {
    v24 = &off_10000C2F0;
  }

  sharedInstance = [(__objc2_class *)*v24 sharedInstance];
  [(ProximitySensorViewController *)self setProximityManager:sharedInstance];

  [(ProximitySensorViewController *)self setSensorType:v23];
  v26 = +[DSTestAutomation sharedInstance];
  LODWORD(sharedInstance) = [v26 testAutomationEnabled];

  if (sharedInstance)
  {
    v35[0] = @"noInputTimeout";
    inputs5 = [(ProximitySensorViewController *)self inputs];
    noInputTimeout = [inputs5 noInputTimeout];
    v29 = numberOrNull(noInputTimeout);
    v36[0] = v29;
    v35[1] = @"holdTime";
    inputs6 = [(ProximitySensorViewController *)self inputs];
    holdTime = [inputs6 holdTime];
    v36[1] = holdTime;
    v32 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];
    [DSTestAutomation postConfiguration:v32];
  }

  [(ProximitySensorViewController *)self setupUI];
}

- (id)downloadImageAsset:(id)asset withResponder:(id)responder error:(id *)error
{
  assetCopy = asset;
  responderCopy = responder;
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
  v11 = assetCopy;
  v24 = v11;
  v26 = &v34;
  v27 = &v28;
  v12 = v10;
  v25 = v12;
  [responderCopy getAsset:v11 completion:v23];
  inputs = [(ProximitySensorViewController *)self inputs];
  assetDownloadTimeout = [inputs assetDownloadTimeout];
  [assetDownloadTimeout doubleValue];
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

  if (error)
  {
    *error = v29[5];
  }

  v21 = v35[5];

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  return v21;
}

- (void)setupUI
{
  v4 = +[UIColor whiteColor];
  view = [(ProximitySensorViewController *)self view];
  [view setBackgroundColor:v4];
}

- (void)cleanUp
{
  [(ProximitySensorViewController *)self stopTimeoutTimer];
  [(ProximitySensorViewController *)self stopHoldTimer];
  [(ProximitySensorViewController *)self disableProximitySensor];
  eventMonitor = [(ProximitySensorViewController *)self eventMonitor];

  if (eventMonitor)
  {
    eventMonitor2 = [(ProximitySensorViewController *)self eventMonitor];
    currentlyMonitoring = [eventMonitor2 currentlyMonitoring];

    if (currentlyMonitoring)
    {
      eventMonitor3 = [(ProximitySensorViewController *)self eventMonitor];
      [eventMonitor3 stopMonitoring];
    }

    [(ProximitySensorViewController *)self setEventMonitor:0];
  }

  proximityManager = [(ProximitySensorViewController *)self proximityManager];

  if (proximityManager)
  {
    proximityManager2 = [(ProximitySensorViewController *)self proximityManager];
    isUpdating = [proximityManager2 isUpdating];

    if (isUpdating)
    {
      proximityManager3 = [(ProximitySensorViewController *)self proximityManager];
      [proximityManager3 stopProximitySensorUpdates];
    }

    [(ProximitySensorViewController *)self setProximityManager:0];
  }
}

- (void)setProximityState:(unint64_t)state
{
  self->_proximityState = state;
  if ([(ProximitySensorViewController *)self timedOut])
  {
    return;
  }

  testPhase = [(ProximitySensorViewController *)self testPhase];
  switch(testPhase)
  {
    case 2uLL:
      goto LABEL_6;
    case 1uLL:
      if (state)
      {
        return;
      }

      goto LABEL_9;
    case 0uLL:
LABEL_6:
      if (state != 1)
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

- (void)setTestPhase:(unint64_t)phase
{
  self->_testPhase = phase;
  if (phase > 1)
  {
    if (phase == 2)
    {
      v7 = +[DSTestAutomation sharedInstance];
      testAutomationEnabled = [v7 testAutomationEnabled];

      if (testAutomationEnabled)
      {
        [DSTestAutomation postInteractiveTestEvent:@"BeganListeningForProximityStateChange" info:&off_10000CCB8];
      }

      goto LABEL_20;
    }

    if (phase != 3)
    {
      goto LABEL_12;
    }

    [(ProximitySensorViewController *)self endTest];

    [(ProximitySensorViewController *)self hideInstructionImageAnimated:1];
  }

  else
  {
    if (phase)
    {
      if (phase == 1)
      {
        v4 = +[DSTestAutomation sharedInstance];
        testAutomationEnabled2 = [v4 testAutomationEnabled];

        if (testAutomationEnabled2)
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
  result = [(ProximitySensorViewController *)self result];
  [result setStatusCode:&off_10000CAA8];

  [(ProximitySensorViewController *)self setTimedOut:0];
  [(ProximitySensorViewController *)self enableProximitySensor];

  [(ProximitySensorViewController *)self setProximityState:1];
}

- (void)endTest
{
  [(ProximitySensorViewController *)self cleanUp];
  if (![(ProximitySensorViewController *)self sensorType])
  {
    proximityManager = [(ProximitySensorViewController *)self proximityManager];
    sensorData = [proximityManager sensorData];
    v5 = [NSMutableDictionary dictionaryWithDictionary:sensorData];

    v6 = [NSNumber numberWithLong:[(ProximitySensorViewController *)self actualCloseStateThreshold]];
    [v5 setObject:v6 forKeyedSubscript:@"actualCloseStateThreshold"];

    result = [(ProximitySensorViewController *)self result];
    [result setData:v5];
  }

  [(ProximitySensorViewController *)self setFinished:1];
}

- (void)finishEarlyWithStatus:(int64_t)status
{
  v4 = [NSNumber numberWithInteger:status];
  result = [(ProximitySensorViewController *)self result];
  [result setStatusCode:v4];

  [(ProximitySensorViewController *)self setFinished:1];
}

- (void)showAlertWithTitle:(id)title message:(id)message
{
  messageCopy = message;
  titleCopy = title;
  [(ProximitySensorViewController *)self stopTimeoutTimer];
  [(ProximitySensorViewController *)self setTimedOut:1];
  [(ProximitySensorViewController *)self hideInstructionImageAnimated:1];
  v8 = [UIAlertController alertControllerWithTitle:titleCopy message:messageCopy preferredStyle:1];

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
  eventMonitor = [(ProximitySensorViewController *)self eventMonitor];
  if (eventMonitor)
  {

LABEL_6:
    *buf = 0;
    v14 = buf;
    v15 = 0x2020000000;
    proximityState = [(ProximitySensorViewController *)self proximityState];
    proximityManager = [(ProximitySensorViewController *)self proximityManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000038FC;
    v12[3] = &unk_10000C520;
    v12[4] = self;
    v12[5] = buf;
    v6 = [proximityManager startProximitySensorUpdatesWithHandler:v12];

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

  eventMonitor2 = [(ProximitySensorViewController *)self eventMonitor];
  [eventMonitor2 setDelegate:self];

  eventMonitor3 = [(ProximitySensorViewController *)self eventMonitor];
  v10 = [NSSet setWithObject:&off_10000CB08];
  v11 = [eventMonitor3 startMonitoringWithHIDEvents:v10];

  if ((v11 & 1) == 0)
  {
    [(ProximitySensorViewController *)self finishEarlyWithStatus:-3];
  }
}

- (void)disableProximitySensor
{
  eventMonitor = [(ProximitySensorViewController *)self eventMonitor];

  if (eventMonitor)
  {
    eventMonitor2 = [(ProximitySensorViewController *)self eventMonitor];
    currentlyMonitoring = [eventMonitor2 currentlyMonitoring];

    if (currentlyMonitoring)
    {
      eventMonitor3 = [(ProximitySensorViewController *)self eventMonitor];
      [eventMonitor3 stopMonitoring];
    }

    [(ProximitySensorViewController *)self setEventMonitor:0];
  }

  else if ([(ProximitySensorViewController *)self sensorType]== 1)
  {
    proximityManager = [(ProximitySensorViewController *)self proximityManager];
    isUpdating = [proximityManager isUpdating];

    if (isUpdating)
    {
      proximityManager2 = [(ProximitySensorViewController *)self proximityManager];
      [proximityManager2 stopProximitySensorUpdates];
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

- (void)handleHIDEvent:(__IOHIDEvent *)event
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
  inputs = [(ProximitySensorViewController *)self inputs];
  noInputTimeout = [inputs noInputTimeout];

  if (noInputTimeout)
  {
    inputs2 = [(ProximitySensorViewController *)self inputs];
    noInputTimeout2 = [inputs2 noInputTimeout];
    [noInputTimeout2 doubleValue];
    v6 = [NSTimer scheduledTimerWithTimeInterval:self target:"timeoutOccurred" selector:0 userInfo:0 repeats:?];
    [(ProximitySensorViewController *)self setTimeoutTimer:v6];
  }
}

- (void)stopTimeoutTimer
{
  timeoutTimer = [(ProximitySensorViewController *)self timeoutTimer];

  if (timeoutTimer)
  {
    timeoutTimer2 = [(ProximitySensorViewController *)self timeoutTimer];
    [timeoutTimer2 invalidate];

    [(ProximitySensorViewController *)self setTimeoutTimer:0];
  }
}

- (void)holdTimerFinished:(id)finished
{
  finishedCopy = finished;
  if (![(ProximitySensorViewController *)self timedOut])
  {
    userInfo = [finishedCopy userInfo];
    -[ProximitySensorViewController setProximityState:](self, "setProximityState:", [userInfo unsignedIntegerValue]);
  }
}

- (void)resetHoldTimerWithProximityState:(unint64_t)state
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100003E00;
  v3[3] = &unk_10000C548;
  v3[4] = self;
  v3[5] = state;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)stopHoldTimer
{
  holdTimer = [(ProximitySensorViewController *)self holdTimer];

  if (holdTimer)
  {
    holdTimer2 = [(ProximitySensorViewController *)self holdTimer];
    [holdTimer2 invalidate];

    [(ProximitySensorViewController *)self setHoldTimer:0];
  }
}

- (id)instructionImageForPhase:(unint64_t)phase
{
  if (phase == 1)
  {
    downImage = [(ProximitySensorViewController *)self downImage];

    if (downImage)
    {
      downImage2 = [(ProximitySensorViewController *)self downImage];
      goto LABEL_7;
    }
  }

  else if (phase == 2)
  {
    upImage = [(ProximitySensorViewController *)self upImage];

    if (upImage)
    {
      downImage2 = [(ProximitySensorViewController *)self upImage];
LABEL_7:
      v8 = downImage2;
      goto LABEL_15;
    }
  }

  view = [(ProximitySensorViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  screen = [windowScene screen];
  [screen bounds];
  v14 = v13;
  v16 = v15;

  view2 = [(ProximitySensorViewController *)self view];
  window2 = [view2 window];
  windowScene2 = [window2 windowScene];
  screen2 = [windowScene2 screen];
  [screen2 scale];
  v22 = v21;

  v23 = +[NSMutableString string];
  v24 = v23;
  if (phase == 2)
  {
    v25 = @"up-";
  }

  else
  {
    if (phase != 1)
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

- (void)showInstructionImageForPhase:(unint64_t)phase animated:(BOOL)animated
{
  animatedCopy = animated;
  instructionImageView = [(ProximitySensorViewController *)self instructionImageView];

  if (instructionImageView)
  {
    instructionImageView2 = [(ProximitySensorViewController *)self instructionImageView];
    [instructionImageView2 removeFromSuperview];

    [(ProximitySensorViewController *)self setInstructionImageView:0];
  }

  v9 = [UIImageView alloc];
  view = [(ProximitySensorViewController *)self view];
  [view bounds];
  v11 = [v9 initWithFrame:?];
  [(ProximitySensorViewController *)self setInstructionImageView:v11];

  v12 = [(ProximitySensorViewController *)self instructionImageForPhase:phase];
  instructionImageView3 = [(ProximitySensorViewController *)self instructionImageView];
  [instructionImageView3 setImage:v12];

  if (animatedCopy)
  {
    instructionImageView4 = [(ProximitySensorViewController *)self instructionImageView];
    [instructionImageView4 setAlpha:0.0];

    view2 = [(ProximitySensorViewController *)self view];
    instructionImageView5 = [(ProximitySensorViewController *)self instructionImageView];
    [view2 addSubview:instructionImageView5];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10000436C;
    v19[3] = &unk_10000C470;
    v19[4] = self;
    [UIView animateWithDuration:0x10000 delay:v19 options:0 animations:0.25 completion:0.0];
  }

  else
  {
    view3 = [(ProximitySensorViewController *)self view];
    instructionImageView6 = [(ProximitySensorViewController *)self instructionImageView];
    [view3 addSubview:instructionImageView6];
  }
}

- (void)hideInstructionImageAnimated:(BOOL)animated
{
  if (animated)
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
    instructionImageView = [(ProximitySensorViewController *)self instructionImageView];
    [instructionImageView setAlpha:0.0];
  }
}

@end