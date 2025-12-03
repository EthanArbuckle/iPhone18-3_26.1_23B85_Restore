@interface TouchAccuracyViewController
- (CGPoint)touchLocation;
- (void)batteryStateChanged;
- (void)checkForNextTarget;
- (void)cleanUp;
- (void)endTestWithStatusCode:(id)code;
- (void)handleTouch:(id)touch;
- (void)handleTouchBegan:(id)began;
- (void)handleTouchEnded:(id)ended;
- (void)noInputTimedOut;
- (void)placeNextTarget:(id)target;
- (void)setupView;
- (void)setupWithInputs:(id)inputs responder:(id)responder;
- (void)shufflePositions;
- (void)start;
- (void)timedOut;
@end

@implementation TouchAccuracyViewController

- (void)setupWithInputs:(id)inputs responder:(id)responder
{
  [(TouchAccuracyViewController *)self setInputs:inputs, responder];
  [(TouchAccuracyViewController *)self setGoodTaps:0];
  [(TouchAccuracyViewController *)self setBadTaps:0];
  v5 = objc_alloc_init(NSMutableArray);
  [(TouchAccuracyViewController *)self setAllResults:v5];

  v6 = objc_alloc_init(MultiTouchHelper);
  [(TouchAccuracyViewController *)self setMultiTouchHelper:v6];

  [(TouchAccuracyViewController *)self setTouchStatus:0];
  [(TouchAccuracyViewController *)self shufflePositions];
  inputs = [(TouchAccuracyViewController *)self inputs];
  connectedToPowerRequired = [inputs connectedToPowerRequired];

  if (connectedToPowerRequired)
  {
    v9 = +[UIDevice currentDevice];
    [(TouchAccuracyViewController *)self setDevice:v9];

    device = [(TouchAccuracyViewController *)self device];
    [device setBatteryMonitoringEnabled:1];
  }

  v11 = +[DSTestAutomation sharedInstance];
  testAutomationEnabled = [v11 testAutomationEnabled];

  if (testAutomationEnabled)
  {
    v26[0] = @"blockWidth";
    inputs2 = [(TouchAccuracyViewController *)self inputs];
    [inputs2 blockWidth];
    v24 = [NSNumber numberWithDouble:?];
    v27[0] = v24;
    v26[1] = @"blockHeight";
    inputs3 = [(TouchAccuracyViewController *)self inputs];
    [inputs3 blockHeight];
    v13 = [NSNumber numberWithDouble:?];
    v27[1] = v13;
    v26[2] = @"positions";
    inputs4 = [(TouchAccuracyViewController *)self inputs];
    positions = [inputs4 positions];
    v27[2] = positions;
    v26[3] = @"noInputTimeout";
    inputs5 = [(TouchAccuracyViewController *)self inputs];
    [inputs5 noInputTimeout];
    v17 = [NSNumber numberWithDouble:?];
    v27[3] = v17;
    v26[4] = @"partialInputTimeout";
    inputs6 = [(TouchAccuracyViewController *)self inputs];
    [inputs6 partialInputTimeout];
    v19 = [NSNumber numberWithDouble:?];
    v27[4] = v19;
    v26[5] = @"connectedToPowerRequired";
    inputs7 = [(TouchAccuracyViewController *)self inputs];
    v21 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [inputs7 connectedToPowerRequired]);
    v27[5] = v21;
    v22 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:6];
    [DSTestAutomation postConfiguration:v22];
  }
}

- (void)noInputTimedOut
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"NO_INPUT_DETECTED" value:&stru_100008580 table:0];
  v5 = [UIAlertController alertControllerWithTitle:0 message:v4 preferredStyle:1];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"RETRY" value:&stru_100008580 table:0];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000016E8;
  v13[3] = &unk_100008298;
  v13[4] = self;
  v8 = [UIAlertAction actionWithTitle:v7 style:0 handler:v13];
  [v5 addAction:v8];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"CONTINUE" value:&stru_100008580 table:0];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100001774;
  v12[3] = &unk_100008298;
  v12[4] = self;
  v11 = [UIAlertAction actionWithTitle:v10 style:0 handler:v12];
  [v5 addAction:v11];

  [(TouchAccuracyViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)timedOut
{
  LODWORD(v3) = [(TouchAccuracyViewController *)self totalTaps];
  inputs = [(TouchAccuracyViewController *)self inputs];
  numberOfBlocks = [inputs numberOfBlocks];

  if (v3 < numberOfBlocks)
  {
    v3 = v3;
    do
    {
      inputs2 = [(TouchAccuracyViewController *)self inputs];
      positions = [inputs2 positions];
      v8 = [positions objectAtIndexedSubscript:v3];

      allResults = [(TouchAccuracyViewController *)self allResults];
      v16[0] = @"tapX";
      v10 = +[NSNull null];
      v17[0] = v10;
      v16[1] = @"tapY";
      v11 = +[NSNull null];
      v17[1] = v11;
      v16[2] = @"targetX";
      v12 = [v8 objectForKeyedSubscript:@"xPos"];
      v17[2] = v12;
      v16[3] = @"targetY";
      v13 = [v8 objectForKeyedSubscript:@"yPos"];
      v16[4] = @"hit";
      v17[3] = v13;
      v17[4] = &__kCFBooleanFalse;
      v14 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:5];
      [allResults addObject:v14];

      ++v3;
      inputs3 = [(TouchAccuracyViewController *)self inputs];
      LODWORD(v8) = [inputs3 numberOfBlocks];
    }

    while (v3 < v8);
  }

  [(TouchAccuracyViewController *)self endTestWithStatusCode:&off_100008800];
}

- (void)start
{
  [(TouchAccuracyViewController *)self setupView];
  v10 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"handleTouch:"];
  [v10 setMinimumPressDuration:0.0];
  view = [(TouchAccuracyViewController *)self view];
  [view addGestureRecognizer:v10];

  inputs = [(TouchAccuracyViewController *)self inputs];
  [inputs noInputTimeout];
  v5 = [NSTimer scheduledTimerWithTimeInterval:self target:"noInputTimedOut" selector:0 userInfo:0 repeats:?];
  [(TouchAccuracyViewController *)self setTimeoutTimer:v5];

  inputs2 = [(TouchAccuracyViewController *)self inputs];
  LODWORD(inputs) = [inputs2 connectedToPowerRequired];

  if (inputs)
  {
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:self selector:"batteryStateChanged" name:UIDeviceBatteryStateDidChangeNotification object:0];

    multiTouchHelper = [(TouchAccuracyViewController *)self multiTouchHelper];
    isPowerConnected = [multiTouchHelper isPowerConnected];

    if ((isPowerConnected & 1) == 0)
    {
      [(TouchAccuracyViewController *)self endTestWithStatusCode:&off_100008818];
    }
  }
}

- (void)shufflePositions
{
  inputs = [(TouchAccuracyViewController *)self inputs];
  positions = [inputs positions];
  v5 = [positions count];

  inputs2 = [(TouchAccuracyViewController *)self inputs];
  positions2 = [inputs2 positions];
  v11 = [positions2 mutableCopy];

  if (v5)
  {
    v8 = 0;
    do
    {
      [v11 exchangeObjectAtIndex:v8 withObjectAtIndex:v8 + arc4random_uniform(v5)];
      ++v8;
      --v5;
    }

    while (v5);
  }

  v9 = [v11 copy];
  inputs3 = [(TouchAccuracyViewController *)self inputs];
  [inputs3 setPositions:v9];
}

- (void)setupView
{
  v3 = +[UIColor whiteColor];
  view = [(TouchAccuracyViewController *)self view];
  [view setBackgroundColor:v3];

  v5 = [UIView alloc];
  inputs = [(TouchAccuracyViewController *)self inputs];
  [inputs blockWidth];
  v8 = v7;
  inputs2 = [(TouchAccuracyViewController *)self inputs];
  [inputs2 blockHeight];
  v11 = [v5 initWithFrame:{0.0, 0.0, v8, v10}];
  [(TouchAccuracyViewController *)self setTargetView:v11];

  v12 = [UIColor colorWithHexValue:@"007AFF" error:0];
  cGColor = [v12 CGColor];
  targetView = [(TouchAccuracyViewController *)self targetView];
  layer = [targetView layer];
  [layer setBorderColor:cGColor];

  targetView2 = [(TouchAccuracyViewController *)self targetView];
  v17 = +[UIColor clearColor];
  [targetView2 setBackgroundColor:v17];

  targetView3 = [(TouchAccuracyViewController *)self targetView];
  layer2 = [targetView3 layer];
  [layer2 setBorderWidth:1.5];

  view2 = [(TouchAccuracyViewController *)self view];
  targetView4 = [(TouchAccuracyViewController *)self targetView];
  [view2 addSubview:targetView4];

  targetView5 = [(TouchAccuracyViewController *)self targetView];
  [(TouchAccuracyViewController *)self placeNextTarget:targetView5];
}

- (void)placeNextTarget:(id)target
{
  targetCopy = target;
  totalTaps = [(TouchAccuracyViewController *)self totalTaps];
  v6 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v34 = totalTaps;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Index of the next target: %lu", buf, 0xCu);
  }

  inputs = [(TouchAccuracyViewController *)self inputs];
  positions = [inputs positions];
  v9 = [positions count];

  if (v9 > totalTaps)
  {
    inputs2 = [(TouchAccuracyViewController *)self inputs];
    positions2 = [inputs2 positions];
    v12 = [positions2 objectAtIndexedSubscript:totalTaps];

    v13 = [v12 objectForKeyedSubscript:@"xPos"];
    [v13 doubleValue];
    v15 = v14;
    v16 = [v12 objectForKeyedSubscript:@"yPos"];
    [v16 doubleValue];
    [targetCopy setCenter:{v15, v17}];

    v18 = +[DSTestAutomation sharedInstance];
    LODWORD(v16) = [v18 testAutomationEnabled];

    if (v16)
    {
      v31[0] = @"width";
      targetView = [(TouchAccuracyViewController *)self targetView];
      [targetView frame];
      v20 = [NSNumber numberWithDouble:v19];
      v32[0] = v20;
      v31[1] = @"height";
      targetView2 = [(TouchAccuracyViewController *)self targetView];
      [targetView2 frame];
      v23 = [NSNumber numberWithDouble:v22];
      v32[1] = v23;
      v31[2] = @"x";
      targetView3 = [(TouchAccuracyViewController *)self targetView];
      [targetView3 center];
      v25 = [NSNumber numberWithDouble:?];
      v32[2] = v25;
      v31[3] = @"y";
      targetView4 = [(TouchAccuracyViewController *)self targetView];
      [targetView4 center];
      v28 = [NSNumber numberWithDouble:v27];
      v32[3] = v28;
      v29 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:4];
      [DSTestAutomation postInteractiveTestEvent:@"TapTargetAppeared" info:v29];
    }
  }
}

- (void)handleTouch:(id)touch
{
  touchCopy = touch;
  if ([touchCopy state] == 1)
  {
    [(TouchAccuracyViewController *)self handleTouchBegan:touchCopy];
  }

  else if ([touchCopy state] == 3 || objc_msgSend(touchCopy, "state") == 4)
  {
    [(TouchAccuracyViewController *)self handleTouchEnded:touchCopy];
  }
}

- (void)handleTouchBegan:(id)began
{
  beganCopy = began;
  if (![(TouchAccuracyViewController *)self touchStatus])
  {
    view = [(TouchAccuracyViewController *)self view];
    [beganCopy locationInView:view];
    [(TouchAccuracyViewController *)self setTouchLocation:?];

    view2 = [(TouchAccuracyViewController *)self view];
    [(TouchAccuracyViewController *)self touchLocation];
    v7 = [view2 hitTest:0 withEvent:?];
    targetView = [(TouchAccuracyViewController *)self targetView];

    v9 = DiagnosticLogHandleForCategory();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
    if (v7 == targetView)
    {
      if (v10)
      {
        *buf = 67109120;
        totalTaps = [(TouchAccuracyViewController *)self totalTaps];
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "#%d Hit!", buf, 8u);
      }

      [(TouchAccuracyViewController *)self setTouchStatus:2];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000023F4;
      v11[3] = &unk_1000082C0;
      v11[4] = self;
      [UIView animateWithDuration:v11 animations:0.25];
    }

    else
    {
      if (v10)
      {
        *buf = 67109120;
        totalTaps = [(TouchAccuracyViewController *)self totalTaps];
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "#%d Missed!", buf, 8u);
      }

      [(TouchAccuracyViewController *)self setTouchStatus:1];
    }
  }
}

- (void)handleTouchEnded:(id)ended
{
  if ([(TouchAccuracyViewController *)self touchStatus])
  {
    touchStatus = [(TouchAccuracyViewController *)self touchStatus];
    if (touchStatus == 2)
    {
      [(TouchAccuracyViewController *)self setGoodTaps:[(TouchAccuracyViewController *)self goodTaps]+ 1];
    }

    else
    {
      [(TouchAccuracyViewController *)self setBadTaps:[(TouchAccuracyViewController *)self badTaps]+ 1];
    }

    v5 = touchStatus == 2;
    allResults = [(TouchAccuracyViewController *)self allResults];
    v17[0] = @"tapX";
    [(TouchAccuracyViewController *)self touchLocation];
    v7 = [NSNumber numberWithDouble:?];
    v18[0] = v7;
    v17[1] = @"tapY";
    [(TouchAccuracyViewController *)self touchLocation];
    v9 = [NSNumber numberWithDouble:v8];
    v18[1] = v9;
    v17[2] = @"targetX";
    targetView = [(TouchAccuracyViewController *)self targetView];
    [targetView center];
    v11 = [NSNumber numberWithDouble:?];
    v18[2] = v11;
    v17[3] = @"targetY";
    targetView2 = [(TouchAccuracyViewController *)self targetView];
    [targetView2 center];
    v14 = [NSNumber numberWithDouble:v13];
    v18[3] = v14;
    v17[4] = @"hit";
    v15 = [NSNumber numberWithBool:v5];
    v18[4] = v15;
    v16 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:5];
    [allResults addObject:v16];

    [(TouchAccuracyViewController *)self checkForNextTarget];
  }
}

- (void)checkForNextTarget
{
  timeoutTimer = [(TouchAccuracyViewController *)self timeoutTimer];

  if (timeoutTimer)
  {
    timeoutTimer2 = [(TouchAccuracyViewController *)self timeoutTimer];
    [timeoutTimer2 invalidate];

    [(TouchAccuracyViewController *)self setTimeoutTimer:0];
  }

  inputs = [(TouchAccuracyViewController *)self inputs];
  [inputs partialInputTimeout];
  v6 = [NSTimer scheduledTimerWithTimeInterval:self target:"timedOut" selector:0 userInfo:0 repeats:?];
  [(TouchAccuracyViewController *)self setTimeoutTimer:v6];

  LODWORD(v6) = [(TouchAccuracyViewController *)self totalTaps];
  inputs2 = [(TouchAccuracyViewController *)self inputs];
  numberOfBlocks = [inputs2 numberOfBlocks];

  if (v6 >= numberOfBlocks)
  {
    if ([(TouchAccuracyViewController *)self badTaps]< 1)
    {
      v11 = &off_100008830;
    }

    else
    {
      v11 = &off_100008800;
    }

    [(TouchAccuracyViewController *)self endTestWithStatusCode:v11];
  }

  else
  {
    [(TouchAccuracyViewController *)self setTouchLocation:CGPointZero.x, CGPointZero.y];
    [(TouchAccuracyViewController *)self setTouchStatus:0];
    v9 = +[UIColor clearColor];
    targetView = [(TouchAccuracyViewController *)self targetView];
    [targetView setBackgroundColor:v9];

    targetView2 = [(TouchAccuracyViewController *)self targetView];
    [(TouchAccuracyViewController *)self placeNextTarget:targetView2];
  }
}

- (void)cleanUp
{
  timeoutTimer = [(TouchAccuracyViewController *)self timeoutTimer];

  if (timeoutTimer)
  {
    timeoutTimer2 = [(TouchAccuracyViewController *)self timeoutTimer];
    [timeoutTimer2 invalidate];

    [(TouchAccuracyViewController *)self setTimeoutTimer:0];
  }

  inputs = [(TouchAccuracyViewController *)self inputs];
  connectedToPowerRequired = [inputs connectedToPowerRequired];

  if (connectedToPowerRequired)
  {
    device = [(TouchAccuracyViewController *)self device];
    [device setBatteryMonitoringEnabled:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 removeObserver:self];
  }
}

- (void)endTestWithStatusCode:(id)code
{
  codeCopy = code;
  [(TouchAccuracyViewController *)self cleanUp];
  result = [(TouchAccuracyViewController *)self result];
  [result setStatusCode:codeCopy];

  result2 = [(TouchAccuracyViewController *)self result];
  statusCode = [result2 statusCode];
  v8 = [statusCode isEqualToNumber:&off_100008848];

  if (v8)
  {
    v9 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000032B8(v9);
    }
  }

  else
  {
    result3 = [(TouchAccuracyViewController *)self result];
    statusCode2 = [result3 statusCode];
    v12 = [statusCode2 isEqualToNumber:&off_100008818];

    if (!v12)
    {
      view = [(TouchAccuracyViewController *)self view];
      window = [view window];
      windowScene = [window windowScene];
      screen = [windowScene screen];
      [screen bounds];
      v19 = v18;
      v21 = v20;

      v34[0] = @"displayResX";
      result5 = [NSNumber numberWithDouble:v19];
      v35[0] = result5;
      v34[1] = @"displayResY";
      v33 = [NSNumber numberWithDouble:v21];
      v35[1] = v33;
      v34[2] = @"allTaps";
      allResults = [(TouchAccuracyViewController *)self allResults];
      v35[2] = allResults;
      v34[3] = @"isCharging";
      v22 = [NSNumber alloc];
      multiTouchHelper = [(TouchAccuracyViewController *)self multiTouchHelper];
      v24 = [v22 initWithBool:{objc_msgSend(multiTouchHelper, "isBatteryCharging")}];
      v35[3] = v24;
      v34[4] = @"isPluggedIntoPower";
      v25 = [NSNumber alloc];
      multiTouchHelper2 = [(TouchAccuracyViewController *)self multiTouchHelper];
      v27 = [v25 initWithBool:{objc_msgSend(multiTouchHelper2, "isPowerConnected")}];
      v35[4] = v27;
      v34[5] = @"temperatureData";
      multiTouchHelper3 = [(TouchAccuracyViewController *)self multiTouchHelper];
      temperatureData = [multiTouchHelper3 temperatureData];
      v35[5] = temperatureData;
      v30 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:6];
      result4 = [(TouchAccuracyViewController *)self result];
      [result4 setData:v30];

      goto LABEL_9;
    }

    v9 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100003274(v9);
    }
  }

  result5 = [(TouchAccuracyViewController *)self result];
  [result5 setData:&__NSDictionary0__struct];
LABEL_9:

  [(TouchAccuracyViewController *)self setFinished:1];
}

- (void)batteryStateChanged
{
  device = [(TouchAccuracyViewController *)self device];
  if ([device batteryState] == 1)
  {
  }

  else
  {
    device2 = [(TouchAccuracyViewController *)self device];
    batteryState = [device2 batteryState];

    if (batteryState)
    {
      return;
    }
  }

  [(TouchAccuracyViewController *)self endTestWithStatusCode:&off_100008818];
}

- (CGPoint)touchLocation
{
  x = self->_touchLocation.x;
  y = self->_touchLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end