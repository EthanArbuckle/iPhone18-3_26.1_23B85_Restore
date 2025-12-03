@interface TouchResponseViewController
- (void)batteryStateChanged;
- (void)checkIfAllViewsHaveBeenTouched;
- (void)cleanUp;
- (void)endTestWithStatusCode:(id)code;
- (void)highlightView:(id)view;
- (void)noInputTimedOut;
- (void)setupView;
- (void)setupWithInputs:(id)inputs responder:(id)responder;
- (void)start;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation TouchResponseViewController

- (void)setupWithInputs:(id)inputs responder:(id)responder
{
  [(TouchResponseViewController *)self setInputs:inputs, responder];
  [(TouchResponseViewController *)self setTestFinished:0];
  v5 = objc_alloc_init(NSMutableArray);
  [(TouchResponseViewController *)self setTouchRegions:v5];

  v6 = objc_alloc_init(MultiTouchHelper);
  [(TouchResponseViewController *)self setMultiTouchHelper:v6];

  inputs = [(TouchResponseViewController *)self inputs];
  connectedToPowerRequired = [inputs connectedToPowerRequired];

  if (connectedToPowerRequired)
  {
    v9 = +[UIDevice currentDevice];
    [(TouchResponseViewController *)self setDevice:v9];

    device = [(TouchResponseViewController *)self device];
    [device setBatteryMonitoringEnabled:1];
  }

  v11 = +[DSTestAutomation sharedInstance];
  testAutomationEnabled = [v11 testAutomationEnabled];

  if (testAutomationEnabled)
  {
    v24[0] = @"touchMap";
    inputs2 = [(TouchResponseViewController *)self inputs];
    touchMapDictionary = [inputs2 touchMapDictionary];
    v25[0] = touchMapDictionary;
    v24[1] = @"blockColor";
    inputs3 = [(TouchResponseViewController *)self inputs];
    blockColor = [inputs3 blockColor];
    v25[1] = blockColor;
    v24[2] = @"noInputTimeout";
    inputs4 = [(TouchResponseViewController *)self inputs];
    [inputs4 noInputTimeout];
    v17 = [NSNumber numberWithDouble:?];
    v25[2] = v17;
    v24[3] = @"timeoutSeconds";
    inputs5 = [(TouchResponseViewController *)self inputs];
    [inputs5 timeoutSeconds];
    v19 = [NSNumber numberWithDouble:?];
    v25[3] = v19;
    v24[4] = @"connectedToPowerRequired";
    inputs6 = [(TouchResponseViewController *)self inputs];
    v21 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [inputs6 connectedToPowerRequired]);
    v25[4] = v21;
    v22 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:5];
    [DSTestAutomation postConfiguration:v22];
  }
}

- (void)noInputTimedOut
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"NO_INPUT_DETECTED" value:&stru_1000084A8 table:0];
  v5 = [UIAlertController alertControllerWithTitle:0 message:v4 preferredStyle:1];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"RETRY" value:&stru_1000084A8 table:0];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100001658;
  v13[3] = &unk_100008230;
  v13[4] = self;
  v8 = [UIAlertAction actionWithTitle:v7 style:0 handler:v13];
  [v5 addAction:v8];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"CONTINUE" value:&stru_1000084A8 table:0];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000016E4;
  v12[3] = &unk_100008230;
  v12[4] = self;
  v11 = [UIAlertAction actionWithTitle:v10 style:0 handler:v12];
  [v5 addAction:v11];

  [(TouchResponseViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)start
{
  [(TouchResponseViewController *)self setupView];
  inputs = [(TouchResponseViewController *)self inputs];
  [inputs noInputTimeout];
  v4 = [NSTimer scheduledTimerWithTimeInterval:self target:"noInputTimedOut" selector:0 userInfo:0 repeats:?];
  [(TouchResponseViewController *)self setTimeoutTimer:v4];

  inputs2 = [(TouchResponseViewController *)self inputs];
  LODWORD(inputs) = [inputs2 connectedToPowerRequired];

  if (inputs)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:self selector:"batteryStateChanged" name:UIDeviceBatteryStateDidChangeNotification object:0];

    multiTouchHelper = [(TouchResponseViewController *)self multiTouchHelper];
    isPowerConnected = [multiTouchHelper isPowerConnected];

    if ((isPowerConnected & 1) == 0)
    {

      [(TouchResponseViewController *)self endTestWithStatusCode:&off_1000086A8];
    }
  }
}

- (void)setupView
{
  v3 = +[UIColor whiteColor];
  view = [(TouchResponseViewController *)self view];
  [view setBackgroundColor:v3];

  view2 = [(TouchResponseViewController *)self view];
  window = [view2 window];
  windowScene = [window windowScene];
  screen = [windowScene screen];
  [screen nativeScale];
  v10 = v9;

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  inputs = [(TouchResponseViewController *)self inputs];
  touchMap = [inputs touchMap];

  v13 = [touchMap countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    do
    {
      v16 = 0;
      do
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(touchMap);
        }

        v17 = *(*(&v30 + 1) + 8 * v16);
        v18 = [UIView alloc];
        [v17 x];
        v20 = v19 / v10;
        [v17 y];
        v22 = v21 / v10;
        [v17 width];
        v24 = v23 / v10;
        [v17 height];
        v26 = [v18 initWithFrame:{v20, v22, v24, v25 / v10}];
        [v26 setTag:1];
        v27 = +[UIColor whiteColor];
        [v26 setBackgroundColor:v27];

        touchRegions = [(TouchResponseViewController *)self touchRegions];
        [touchRegions addObject:v26];

        view3 = [(TouchResponseViewController *)self view];
        [view3 addSubview:v26];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [touchMap countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v14);
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  view = [(TouchResponseViewController *)self view];
  anyObject = [beganCopy anyObject];

  view2 = [(TouchResponseViewController *)self view];
  [anyObject locationInView:view2];
  v9 = [view hitTest:0 withEvent:?];

  if (v9 && [v9 tag] == 1)
  {
    [(TouchResponseViewController *)self highlightView:v9];
  }

  _objc_release_x1();
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allObjects = [moved allObjects];
  v6 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allObjects);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        view = [(TouchResponseViewController *)self view];
        view2 = [(TouchResponseViewController *)self view];
        [v10 locationInView:view2];
        v13 = [view hitTest:0 withEvent:?];

        if (v13 && [v13 tag] == 1)
        {
          [(TouchResponseViewController *)self highlightView:v13];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allObjects = [ended allObjects];
  v6 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allObjects);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        view = [(TouchResponseViewController *)self view];
        view2 = [(TouchResponseViewController *)self view];
        [v10 locationInView:view2];
        v13 = [view hitTest:0 withEvent:?];

        if (v13 && [v13 tag] == 1)
        {
          [(TouchResponseViewController *)self highlightView:v13];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)highlightView:(id)view
{
  viewCopy = view;
  timeoutTimer = [(TouchResponseViewController *)self timeoutTimer];

  if (timeoutTimer)
  {
    timeoutTimer2 = [(TouchResponseViewController *)self timeoutTimer];
    [timeoutTimer2 invalidate];

    [(TouchResponseViewController *)self setTimeoutTimer:0];
  }

  inputs = [(TouchResponseViewController *)self inputs];
  [inputs timeoutSeconds];
  v8 = [NSTimer scheduledTimerWithTimeInterval:self target:"timedOut" selector:0 userInfo:0 repeats:?];
  [(TouchResponseViewController *)self setTimeoutTimer:v8];

  v9 = +[NSDate date];
  [(TouchResponseViewController *)self setStartDate:v9];

  inputs2 = [(TouchResponseViewController *)self inputs];
  blockColor = [inputs2 blockColor];
  [viewCopy setBackgroundColor:blockColor];

  [viewCopy setTag:0];

  [(TouchResponseViewController *)self checkIfAllViewsHaveBeenTouched];
}

- (void)checkIfAllViewsHaveBeenTouched
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001FD4;
  block[3] = &unk_100008258;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)cleanUp
{
  timeoutTimer = [(TouchResponseViewController *)self timeoutTimer];

  if (timeoutTimer)
  {
    timeoutTimer2 = [(TouchResponseViewController *)self timeoutTimer];
    [timeoutTimer2 invalidate];

    [(TouchResponseViewController *)self setTimeoutTimer:0];
  }

  inputs = [(TouchResponseViewController *)self inputs];
  connectedToPowerRequired = [inputs connectedToPowerRequired];

  if (connectedToPowerRequired)
  {
    device = [(TouchResponseViewController *)self device];
    [device setBatteryMonitoringEnabled:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 removeObserver:self];
  }
}

- (void)endTestWithStatusCode:(id)code
{
  codeCopy = code;
  if (![(TouchResponseViewController *)self testFinished])
  {
    [(TouchResponseViewController *)self setTestFinished:1];
    [(TouchResponseViewController *)self cleanUp];
    result = [(TouchResponseViewController *)self result];
    [result setStatusCode:codeCopy];

    result2 = [(TouchResponseViewController *)self result];
    statusCode = [result2 statusCode];
    v8 = [statusCode isEqualToNumber:&off_1000086D8];

    if (v8)
    {
      v9 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100002F74(v9);
      }

LABEL_8:

      result3 = [(TouchResponseViewController *)self result];
      [result3 setData:&__NSDictionary0__struct];

      [(TouchResponseViewController *)self setFinished:1];
      goto LABEL_19;
    }

    result4 = [(TouchResponseViewController *)self result];
    statusCode2 = [result4 statusCode];
    v12 = [statusCode2 isEqualToNumber:&off_1000086A8];

    if (v12)
    {
      v9 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100002F30(v9);
      }

      goto LABEL_8;
    }

    v44 = codeCopy;
    v47 = objc_alloc_init(NSMutableArray);
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = [(TouchResponseViewController *)self touchRegions];
    v14 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v51;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v51 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v50 + 1) + 8 * i);
          if ([v18 tag] == 1)
          {
            v56[0] = @"xPos";
            [v18 frame];
            v19 = [NSNumber numberWithDouble:?];
            v57[0] = v19;
            v56[1] = @"yPos";
            [v18 frame];
            v21 = [NSNumber numberWithDouble:v20];
            v57[1] = v21;
            v56[2] = @"width";
            [v18 frame];
            v23 = [NSNumber numberWithDouble:v22];
            v57[2] = v23;
            v56[3] = @"height";
            [v18 frame];
            v25 = [NSNumber numberWithDouble:v24];
            v57[3] = v25;
            v26 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:4];
            [v47 addObject:v26];
          }
        }

        v15 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
      }

      while (v15);
    }

    view = [(TouchResponseViewController *)self view];
    window = [view window];
    windowScene = [window windowScene];
    screen = [windowScene screen];
    [screen bounds];
    v32 = v31;
    v34 = v33;

    v54[0] = @"displayResX";
    obja = [NSNumber numberWithDouble:v32];
    v55[0] = obja;
    v54[1] = @"displayResY";
    v46 = [NSNumber numberWithDouble:v34];
    v55[1] = v46;
    v55[2] = v47;
    v54[2] = @"missedRegions";
    v54[3] = @"isCharging";
    v35 = [NSNumber alloc];
    multiTouchHelper = [(TouchResponseViewController *)self multiTouchHelper];
    v36 = [v35 initWithBool:{objc_msgSend(multiTouchHelper, "isBatteryCharging")}];
    v55[3] = v36;
    v54[4] = @"isPluggedIntoPower";
    v37 = [NSNumber alloc];
    multiTouchHelper2 = [(TouchResponseViewController *)self multiTouchHelper];
    v39 = [v37 initWithBool:{objc_msgSend(multiTouchHelper2, "isPowerConnected")}];
    v55[4] = v39;
    v54[5] = @"temperatureData";
    multiTouchHelper3 = [(TouchResponseViewController *)self multiTouchHelper];
    temperatureData = [multiTouchHelper3 temperatureData];
    v55[5] = temperatureData;
    v42 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:6];
    result5 = [(TouchResponseViewController *)self result];
    [result5 setData:v42];

    [(TouchResponseViewController *)self performSelector:"finish" withObject:0 afterDelay:0.5];
    codeCopy = v44;
  }

LABEL_19:
}

- (void)batteryStateChanged
{
  device = [(TouchResponseViewController *)self device];
  if ([device batteryState] == 1)
  {
  }

  else
  {
    device2 = [(TouchResponseViewController *)self device];
    batteryState = [device2 batteryState];

    if (batteryState)
    {
      return;
    }
  }

  [(TouchResponseViewController *)self endTestWithStatusCode:&off_1000086A8];
}

@end