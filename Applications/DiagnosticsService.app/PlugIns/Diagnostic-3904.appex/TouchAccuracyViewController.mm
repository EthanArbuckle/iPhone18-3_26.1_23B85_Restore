@interface TouchAccuracyViewController
- (CGPoint)touchLocation;
- (void)batteryStateChanged;
- (void)checkForNextTarget;
- (void)cleanUp;
- (void)endTestWithStatusCode:(id)a3;
- (void)handleTouch:(id)a3;
- (void)handleTouchBegan:(id)a3;
- (void)handleTouchEnded:(id)a3;
- (void)noInputTimedOut;
- (void)placeNextTarget:(id)a3;
- (void)setupView;
- (void)setupWithInputs:(id)a3 responder:(id)a4;
- (void)shufflePositions;
- (void)start;
- (void)timedOut;
@end

@implementation TouchAccuracyViewController

- (void)setupWithInputs:(id)a3 responder:(id)a4
{
  [(TouchAccuracyViewController *)self setInputs:a3, a4];
  [(TouchAccuracyViewController *)self setGoodTaps:0];
  [(TouchAccuracyViewController *)self setBadTaps:0];
  v5 = objc_alloc_init(NSMutableArray);
  [(TouchAccuracyViewController *)self setAllResults:v5];

  v6 = objc_alloc_init(MultiTouchHelper);
  [(TouchAccuracyViewController *)self setMultiTouchHelper:v6];

  [(TouchAccuracyViewController *)self setTouchStatus:0];
  [(TouchAccuracyViewController *)self shufflePositions];
  v7 = [(TouchAccuracyViewController *)self inputs];
  v8 = [v7 connectedToPowerRequired];

  if (v8)
  {
    v9 = +[UIDevice currentDevice];
    [(TouchAccuracyViewController *)self setDevice:v9];

    v10 = [(TouchAccuracyViewController *)self device];
    [v10 setBatteryMonitoringEnabled:1];
  }

  v11 = +[DSTestAutomation sharedInstance];
  v12 = [v11 testAutomationEnabled];

  if (v12)
  {
    v26[0] = @"blockWidth";
    v25 = [(TouchAccuracyViewController *)self inputs];
    [v25 blockWidth];
    v24 = [NSNumber numberWithDouble:?];
    v27[0] = v24;
    v26[1] = @"blockHeight";
    v23 = [(TouchAccuracyViewController *)self inputs];
    [v23 blockHeight];
    v13 = [NSNumber numberWithDouble:?];
    v27[1] = v13;
    v26[2] = @"positions";
    v14 = [(TouchAccuracyViewController *)self inputs];
    v15 = [v14 positions];
    v27[2] = v15;
    v26[3] = @"noInputTimeout";
    v16 = [(TouchAccuracyViewController *)self inputs];
    [v16 noInputTimeout];
    v17 = [NSNumber numberWithDouble:?];
    v27[3] = v17;
    v26[4] = @"partialInputTimeout";
    v18 = [(TouchAccuracyViewController *)self inputs];
    [v18 partialInputTimeout];
    v19 = [NSNumber numberWithDouble:?];
    v27[4] = v19;
    v26[5] = @"connectedToPowerRequired";
    v20 = [(TouchAccuracyViewController *)self inputs];
    v21 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v20 connectedToPowerRequired]);
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
  v4 = [(TouchAccuracyViewController *)self inputs];
  v5 = [v4 numberOfBlocks];

  if (v3 < v5)
  {
    v3 = v3;
    do
    {
      v6 = [(TouchAccuracyViewController *)self inputs];
      v7 = [v6 positions];
      v8 = [v7 objectAtIndexedSubscript:v3];

      v9 = [(TouchAccuracyViewController *)self allResults];
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
      [v9 addObject:v14];

      ++v3;
      v15 = [(TouchAccuracyViewController *)self inputs];
      LODWORD(v8) = [v15 numberOfBlocks];
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
  v3 = [(TouchAccuracyViewController *)self view];
  [v3 addGestureRecognizer:v10];

  v4 = [(TouchAccuracyViewController *)self inputs];
  [v4 noInputTimeout];
  v5 = [NSTimer scheduledTimerWithTimeInterval:self target:"noInputTimedOut" selector:0 userInfo:0 repeats:?];
  [(TouchAccuracyViewController *)self setTimeoutTimer:v5];

  v6 = [(TouchAccuracyViewController *)self inputs];
  LODWORD(v4) = [v6 connectedToPowerRequired];

  if (v4)
  {
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:self selector:"batteryStateChanged" name:UIDeviceBatteryStateDidChangeNotification object:0];

    v8 = [(TouchAccuracyViewController *)self multiTouchHelper];
    v9 = [v8 isPowerConnected];

    if ((v9 & 1) == 0)
    {
      [(TouchAccuracyViewController *)self endTestWithStatusCode:&off_100008818];
    }
  }
}

- (void)shufflePositions
{
  v3 = [(TouchAccuracyViewController *)self inputs];
  v4 = [v3 positions];
  v5 = [v4 count];

  v6 = [(TouchAccuracyViewController *)self inputs];
  v7 = [v6 positions];
  v11 = [v7 mutableCopy];

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
  v10 = [(TouchAccuracyViewController *)self inputs];
  [v10 setPositions:v9];
}

- (void)setupView
{
  v3 = +[UIColor whiteColor];
  v4 = [(TouchAccuracyViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [UIView alloc];
  v6 = [(TouchAccuracyViewController *)self inputs];
  [v6 blockWidth];
  v8 = v7;
  v9 = [(TouchAccuracyViewController *)self inputs];
  [v9 blockHeight];
  v11 = [v5 initWithFrame:{0.0, 0.0, v8, v10}];
  [(TouchAccuracyViewController *)self setTargetView:v11];

  v12 = [UIColor colorWithHexValue:@"007AFF" error:0];
  v13 = [v12 CGColor];
  v14 = [(TouchAccuracyViewController *)self targetView];
  v15 = [v14 layer];
  [v15 setBorderColor:v13];

  v16 = [(TouchAccuracyViewController *)self targetView];
  v17 = +[UIColor clearColor];
  [v16 setBackgroundColor:v17];

  v18 = [(TouchAccuracyViewController *)self targetView];
  v19 = [v18 layer];
  [v19 setBorderWidth:1.5];

  v20 = [(TouchAccuracyViewController *)self view];
  v21 = [(TouchAccuracyViewController *)self targetView];
  [v20 addSubview:v21];

  v22 = [(TouchAccuracyViewController *)self targetView];
  [(TouchAccuracyViewController *)self placeNextTarget:v22];
}

- (void)placeNextTarget:(id)a3
{
  v4 = a3;
  v5 = [(TouchAccuracyViewController *)self totalTaps];
  v6 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v34 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Index of the next target: %lu", buf, 0xCu);
  }

  v7 = [(TouchAccuracyViewController *)self inputs];
  v8 = [v7 positions];
  v9 = [v8 count];

  if (v9 > v5)
  {
    v10 = [(TouchAccuracyViewController *)self inputs];
    v11 = [v10 positions];
    v12 = [v11 objectAtIndexedSubscript:v5];

    v13 = [v12 objectForKeyedSubscript:@"xPos"];
    [v13 doubleValue];
    v15 = v14;
    v16 = [v12 objectForKeyedSubscript:@"yPos"];
    [v16 doubleValue];
    [v4 setCenter:{v15, v17}];

    v18 = +[DSTestAutomation sharedInstance];
    LODWORD(v16) = [v18 testAutomationEnabled];

    if (v16)
    {
      v31[0] = @"width";
      v30 = [(TouchAccuracyViewController *)self targetView];
      [v30 frame];
      v20 = [NSNumber numberWithDouble:v19];
      v32[0] = v20;
      v31[1] = @"height";
      v21 = [(TouchAccuracyViewController *)self targetView];
      [v21 frame];
      v23 = [NSNumber numberWithDouble:v22];
      v32[1] = v23;
      v31[2] = @"x";
      v24 = [(TouchAccuracyViewController *)self targetView];
      [v24 center];
      v25 = [NSNumber numberWithDouble:?];
      v32[2] = v25;
      v31[3] = @"y";
      v26 = [(TouchAccuracyViewController *)self targetView];
      [v26 center];
      v28 = [NSNumber numberWithDouble:v27];
      v32[3] = v28;
      v29 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:4];
      [DSTestAutomation postInteractiveTestEvent:@"TapTargetAppeared" info:v29];
    }
  }
}

- (void)handleTouch:(id)a3
{
  v4 = a3;
  if ([v4 state] == 1)
  {
    [(TouchAccuracyViewController *)self handleTouchBegan:v4];
  }

  else if ([v4 state] == 3 || objc_msgSend(v4, "state") == 4)
  {
    [(TouchAccuracyViewController *)self handleTouchEnded:v4];
  }
}

- (void)handleTouchBegan:(id)a3
{
  v4 = a3;
  if (![(TouchAccuracyViewController *)self touchStatus])
  {
    v5 = [(TouchAccuracyViewController *)self view];
    [v4 locationInView:v5];
    [(TouchAccuracyViewController *)self setTouchLocation:?];

    v6 = [(TouchAccuracyViewController *)self view];
    [(TouchAccuracyViewController *)self touchLocation];
    v7 = [v6 hitTest:0 withEvent:?];
    v8 = [(TouchAccuracyViewController *)self targetView];

    v9 = DiagnosticLogHandleForCategory();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
    if (v7 == v8)
    {
      if (v10)
      {
        *buf = 67109120;
        v13 = [(TouchAccuracyViewController *)self totalTaps];
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
        v13 = [(TouchAccuracyViewController *)self totalTaps];
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "#%d Missed!", buf, 8u);
      }

      [(TouchAccuracyViewController *)self setTouchStatus:1];
    }
  }
}

- (void)handleTouchEnded:(id)a3
{
  if ([(TouchAccuracyViewController *)self touchStatus])
  {
    v4 = [(TouchAccuracyViewController *)self touchStatus];
    if (v4 == 2)
    {
      [(TouchAccuracyViewController *)self setGoodTaps:[(TouchAccuracyViewController *)self goodTaps]+ 1];
    }

    else
    {
      [(TouchAccuracyViewController *)self setBadTaps:[(TouchAccuracyViewController *)self badTaps]+ 1];
    }

    v5 = v4 == 2;
    v6 = [(TouchAccuracyViewController *)self allResults];
    v17[0] = @"tapX";
    [(TouchAccuracyViewController *)self touchLocation];
    v7 = [NSNumber numberWithDouble:?];
    v18[0] = v7;
    v17[1] = @"tapY";
    [(TouchAccuracyViewController *)self touchLocation];
    v9 = [NSNumber numberWithDouble:v8];
    v18[1] = v9;
    v17[2] = @"targetX";
    v10 = [(TouchAccuracyViewController *)self targetView];
    [v10 center];
    v11 = [NSNumber numberWithDouble:?];
    v18[2] = v11;
    v17[3] = @"targetY";
    v12 = [(TouchAccuracyViewController *)self targetView];
    [v12 center];
    v14 = [NSNumber numberWithDouble:v13];
    v18[3] = v14;
    v17[4] = @"hit";
    v15 = [NSNumber numberWithBool:v5];
    v18[4] = v15;
    v16 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:5];
    [v6 addObject:v16];

    [(TouchAccuracyViewController *)self checkForNextTarget];
  }
}

- (void)checkForNextTarget
{
  v3 = [(TouchAccuracyViewController *)self timeoutTimer];

  if (v3)
  {
    v4 = [(TouchAccuracyViewController *)self timeoutTimer];
    [v4 invalidate];

    [(TouchAccuracyViewController *)self setTimeoutTimer:0];
  }

  v5 = [(TouchAccuracyViewController *)self inputs];
  [v5 partialInputTimeout];
  v6 = [NSTimer scheduledTimerWithTimeInterval:self target:"timedOut" selector:0 userInfo:0 repeats:?];
  [(TouchAccuracyViewController *)self setTimeoutTimer:v6];

  LODWORD(v6) = [(TouchAccuracyViewController *)self totalTaps];
  v7 = [(TouchAccuracyViewController *)self inputs];
  v8 = [v7 numberOfBlocks];

  if (v6 >= v8)
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
    v10 = [(TouchAccuracyViewController *)self targetView];
    [v10 setBackgroundColor:v9];

    v12 = [(TouchAccuracyViewController *)self targetView];
    [(TouchAccuracyViewController *)self placeNextTarget:v12];
  }
}

- (void)cleanUp
{
  v3 = [(TouchAccuracyViewController *)self timeoutTimer];

  if (v3)
  {
    v4 = [(TouchAccuracyViewController *)self timeoutTimer];
    [v4 invalidate];

    [(TouchAccuracyViewController *)self setTimeoutTimer:0];
  }

  v5 = [(TouchAccuracyViewController *)self inputs];
  v6 = [v5 connectedToPowerRequired];

  if (v6)
  {
    v7 = [(TouchAccuracyViewController *)self device];
    [v7 setBatteryMonitoringEnabled:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 removeObserver:self];
  }
}

- (void)endTestWithStatusCode:(id)a3
{
  v4 = a3;
  [(TouchAccuracyViewController *)self cleanUp];
  v5 = [(TouchAccuracyViewController *)self result];
  [v5 setStatusCode:v4];

  v6 = [(TouchAccuracyViewController *)self result];
  v7 = [v6 statusCode];
  v8 = [v7 isEqualToNumber:&off_100008848];

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
    v10 = [(TouchAccuracyViewController *)self result];
    v11 = [v10 statusCode];
    v12 = [v11 isEqualToNumber:&off_100008818];

    if (!v12)
    {
      v14 = [(TouchAccuracyViewController *)self view];
      v15 = [v14 window];
      v16 = [v15 windowScene];
      v17 = [v16 screen];
      [v17 bounds];
      v19 = v18;
      v21 = v20;

      v34[0] = @"displayResX";
      v13 = [NSNumber numberWithDouble:v19];
      v35[0] = v13;
      v34[1] = @"displayResY";
      v33 = [NSNumber numberWithDouble:v21];
      v35[1] = v33;
      v34[2] = @"allTaps";
      v32 = [(TouchAccuracyViewController *)self allResults];
      v35[2] = v32;
      v34[3] = @"isCharging";
      v22 = [NSNumber alloc];
      v23 = [(TouchAccuracyViewController *)self multiTouchHelper];
      v24 = [v22 initWithBool:{objc_msgSend(v23, "isBatteryCharging")}];
      v35[3] = v24;
      v34[4] = @"isPluggedIntoPower";
      v25 = [NSNumber alloc];
      v26 = [(TouchAccuracyViewController *)self multiTouchHelper];
      v27 = [v25 initWithBool:{objc_msgSend(v26, "isPowerConnected")}];
      v35[4] = v27;
      v34[5] = @"temperatureData";
      v28 = [(TouchAccuracyViewController *)self multiTouchHelper];
      v29 = [v28 temperatureData];
      v35[5] = v29;
      v30 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:6];
      v31 = [(TouchAccuracyViewController *)self result];
      [v31 setData:v30];

      goto LABEL_9;
    }

    v9 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100003274(v9);
    }
  }

  v13 = [(TouchAccuracyViewController *)self result];
  [v13 setData:&__NSDictionary0__struct];
LABEL_9:

  [(TouchAccuracyViewController *)self setFinished:1];
}

- (void)batteryStateChanged
{
  v3 = [(TouchAccuracyViewController *)self device];
  if ([v3 batteryState] == 1)
  {
  }

  else
  {
    v4 = [(TouchAccuracyViewController *)self device];
    v5 = [v4 batteryState];

    if (v5)
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