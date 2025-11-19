@interface TouchResponseViewController
- (void)batteryStateChanged;
- (void)checkIfAllViewsHaveBeenTouched;
- (void)cleanUp;
- (void)endTestWithStatusCode:(id)a3;
- (void)highlightView:(id)a3;
- (void)noInputTimedOut;
- (void)setupView;
- (void)setupWithInputs:(id)a3 responder:(id)a4;
- (void)start;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation TouchResponseViewController

- (void)setupWithInputs:(id)a3 responder:(id)a4
{
  [(TouchResponseViewController *)self setInputs:a3, a4];
  [(TouchResponseViewController *)self setTestFinished:0];
  v5 = objc_alloc_init(NSMutableArray);
  [(TouchResponseViewController *)self setTouchRegions:v5];

  v6 = objc_alloc_init(MultiTouchHelper);
  [(TouchResponseViewController *)self setMultiTouchHelper:v6];

  v7 = [(TouchResponseViewController *)self inputs];
  v8 = [v7 connectedToPowerRequired];

  if (v8)
  {
    v9 = +[UIDevice currentDevice];
    [(TouchResponseViewController *)self setDevice:v9];

    v10 = [(TouchResponseViewController *)self device];
    [v10 setBatteryMonitoringEnabled:1];
  }

  v11 = +[DSTestAutomation sharedInstance];
  v12 = [v11 testAutomationEnabled];

  if (v12)
  {
    v24[0] = @"touchMap";
    v23 = [(TouchResponseViewController *)self inputs];
    v13 = [v23 touchMapDictionary];
    v25[0] = v13;
    v24[1] = @"blockColor";
    v14 = [(TouchResponseViewController *)self inputs];
    v15 = [v14 blockColor];
    v25[1] = v15;
    v24[2] = @"noInputTimeout";
    v16 = [(TouchResponseViewController *)self inputs];
    [v16 noInputTimeout];
    v17 = [NSNumber numberWithDouble:?];
    v25[2] = v17;
    v24[3] = @"timeoutSeconds";
    v18 = [(TouchResponseViewController *)self inputs];
    [v18 timeoutSeconds];
    v19 = [NSNumber numberWithDouble:?];
    v25[3] = v19;
    v24[4] = @"connectedToPowerRequired";
    v20 = [(TouchResponseViewController *)self inputs];
    v21 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v20 connectedToPowerRequired]);
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
  v3 = [(TouchResponseViewController *)self inputs];
  [v3 noInputTimeout];
  v4 = [NSTimer scheduledTimerWithTimeInterval:self target:"noInputTimedOut" selector:0 userInfo:0 repeats:?];
  [(TouchResponseViewController *)self setTimeoutTimer:v4];

  v5 = [(TouchResponseViewController *)self inputs];
  LODWORD(v3) = [v5 connectedToPowerRequired];

  if (v3)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:self selector:"batteryStateChanged" name:UIDeviceBatteryStateDidChangeNotification object:0];

    v7 = [(TouchResponseViewController *)self multiTouchHelper];
    v8 = [v7 isPowerConnected];

    if ((v8 & 1) == 0)
    {

      [(TouchResponseViewController *)self endTestWithStatusCode:&off_1000086A8];
    }
  }
}

- (void)setupView
{
  v3 = +[UIColor whiteColor];
  v4 = [(TouchResponseViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(TouchResponseViewController *)self view];
  v6 = [v5 window];
  v7 = [v6 windowScene];
  v8 = [v7 screen];
  [v8 nativeScale];
  v10 = v9;

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = [(TouchResponseViewController *)self inputs];
  v12 = [v11 touchMap];

  v13 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
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
          objc_enumerationMutation(v12);
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

        v28 = [(TouchResponseViewController *)self touchRegions];
        [v28 addObject:v26];

        v29 = [(TouchResponseViewController *)self view];
        [v29 addSubview:v26];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v14);
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  v6 = [(TouchResponseViewController *)self view];
  v7 = [v5 anyObject];

  v8 = [(TouchResponseViewController *)self view];
  [v7 locationInView:v8];
  v9 = [v6 hitTest:0 withEvent:?];

  if (v9 && [v9 tag] == 1)
  {
    [(TouchResponseViewController *)self highlightView:v9];
  }

  _objc_release_x1();
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [a3 allObjects];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = [(TouchResponseViewController *)self view];
        v12 = [(TouchResponseViewController *)self view];
        [v10 locationInView:v12];
        v13 = [v11 hitTest:0 withEvent:?];

        if (v13 && [v13 tag] == 1)
        {
          [(TouchResponseViewController *)self highlightView:v13];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [a3 allObjects];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = [(TouchResponseViewController *)self view];
        v12 = [(TouchResponseViewController *)self view];
        [v10 locationInView:v12];
        v13 = [v11 hitTest:0 withEvent:?];

        if (v13 && [v13 tag] == 1)
        {
          [(TouchResponseViewController *)self highlightView:v13];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)highlightView:(id)a3
{
  v4 = a3;
  v5 = [(TouchResponseViewController *)self timeoutTimer];

  if (v5)
  {
    v6 = [(TouchResponseViewController *)self timeoutTimer];
    [v6 invalidate];

    [(TouchResponseViewController *)self setTimeoutTimer:0];
  }

  v7 = [(TouchResponseViewController *)self inputs];
  [v7 timeoutSeconds];
  v8 = [NSTimer scheduledTimerWithTimeInterval:self target:"timedOut" selector:0 userInfo:0 repeats:?];
  [(TouchResponseViewController *)self setTimeoutTimer:v8];

  v9 = +[NSDate date];
  [(TouchResponseViewController *)self setStartDate:v9];

  v10 = [(TouchResponseViewController *)self inputs];
  v11 = [v10 blockColor];
  [v4 setBackgroundColor:v11];

  [v4 setTag:0];

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
  v3 = [(TouchResponseViewController *)self timeoutTimer];

  if (v3)
  {
    v4 = [(TouchResponseViewController *)self timeoutTimer];
    [v4 invalidate];

    [(TouchResponseViewController *)self setTimeoutTimer:0];
  }

  v5 = [(TouchResponseViewController *)self inputs];
  v6 = [v5 connectedToPowerRequired];

  if (v6)
  {
    v7 = [(TouchResponseViewController *)self device];
    [v7 setBatteryMonitoringEnabled:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 removeObserver:self];
  }
}

- (void)endTestWithStatusCode:(id)a3
{
  v4 = a3;
  if (![(TouchResponseViewController *)self testFinished])
  {
    [(TouchResponseViewController *)self setTestFinished:1];
    [(TouchResponseViewController *)self cleanUp];
    v5 = [(TouchResponseViewController *)self result];
    [v5 setStatusCode:v4];

    v6 = [(TouchResponseViewController *)self result];
    v7 = [v6 statusCode];
    v8 = [v7 isEqualToNumber:&off_1000086D8];

    if (v8)
    {
      v9 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100002F74(v9);
      }

LABEL_8:

      v13 = [(TouchResponseViewController *)self result];
      [v13 setData:&__NSDictionary0__struct];

      [(TouchResponseViewController *)self setFinished:1];
      goto LABEL_19;
    }

    v10 = [(TouchResponseViewController *)self result];
    v11 = [v10 statusCode];
    v12 = [v11 isEqualToNumber:&off_1000086A8];

    if (v12)
    {
      v9 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100002F30(v9);
      }

      goto LABEL_8;
    }

    v44 = v4;
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

    v27 = [(TouchResponseViewController *)self view];
    v28 = [v27 window];
    v29 = [v28 windowScene];
    v30 = [v29 screen];
    [v30 bounds];
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
    v45 = [(TouchResponseViewController *)self multiTouchHelper];
    v36 = [v35 initWithBool:{objc_msgSend(v45, "isBatteryCharging")}];
    v55[3] = v36;
    v54[4] = @"isPluggedIntoPower";
    v37 = [NSNumber alloc];
    v38 = [(TouchResponseViewController *)self multiTouchHelper];
    v39 = [v37 initWithBool:{objc_msgSend(v38, "isPowerConnected")}];
    v55[4] = v39;
    v54[5] = @"temperatureData";
    v40 = [(TouchResponseViewController *)self multiTouchHelper];
    v41 = [v40 temperatureData];
    v55[5] = v41;
    v42 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:6];
    v43 = [(TouchResponseViewController *)self result];
    [v43 setData:v42];

    [(TouchResponseViewController *)self performSelector:"finish" withObject:0 afterDelay:0.5];
    v4 = v44;
  }

LABEL_19:
}

- (void)batteryStateChanged
{
  v3 = [(TouchResponseViewController *)self device];
  if ([v3 batteryState] == 1)
  {
  }

  else
  {
    v4 = [(TouchResponseViewController *)self device];
    v5 = [v4 batteryState];

    if (v5)
    {
      return;
    }
  }

  [(TouchResponseViewController *)self endTestWithStatusCode:&off_1000086A8];
}

@end