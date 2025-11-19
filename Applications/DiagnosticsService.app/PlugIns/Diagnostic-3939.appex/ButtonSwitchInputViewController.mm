@interface ButtonSwitchInputViewController
- (BOOL)setupTest;
- (void)_downloadSpriteImageUsingResponder:(id)a3;
- (void)cleanUpWithCompletion:(id)a3;
- (void)didReceiveButtonEvent:(unint64_t)a3;
- (void)endTestWithStatusCode:(id)a3;
- (void)handleHIDEvent:(__IOHIDEvent *)a3;
- (void)noInputTimedOut;
- (void)playHaptic;
- (void)resetTimer;
- (void)setupTouchButtonInteractions;
- (void)setupView;
- (void)setupWithInputs:(id)a3 responder:(id)a4;
- (void)shouldShowViewControllerInHostApp:(id)a3;
- (void)showNextSegment;
- (void)showTransitionWithRange:(_NSRange)a3 WithCompletionHandler:(id)a4;
- (void)startTimer;
- (void)teardown;
@end

@implementation ButtonSwitchInputViewController

- (void)setupWithInputs:(id)a3 responder:(id)a4
{
  v6 = a3;
  v70 = a4;
  [(ButtonSwitchInputViewController *)self setInputs:v6];
  [(ButtonSwitchInputViewController *)self setupTest];
  v7 = [(ButtonSwitchInputViewController *)self inputs];
  v8 = [v7 buttonSwitchSpecification];

  if (v8)
  {
    objc_initWeak(&location, self);
    v9 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100004DB0;
    block[3] = &unk_1000104D8;
    objc_copyWeak(&v78, &location);
    v77 = v70;
    dispatch_async(v9, block);

    objc_destroyWeak(&v78);
    objc_destroyWeak(&location);
    [(ButtonSwitchInputViewController *)self setTargetButtonEvents:0xFFFFFFFFLL];
    v10 = [(ButtonSwitchInputViewController *)self inputs];
    v11 = [v10 identifier];
    v12 = [v11 isEqualToString:@"Home"];

    if (v12)
    {
      [(ButtonSwitchInputViewController *)self setTargetButtonEvents:3];
    }

    else
    {
      v14 = [(ButtonSwitchInputViewController *)self inputs];
      v15 = [v14 identifier];
      v16 = [v15 isEqualToString:@"RingerButton"];

      if (v16)
      {
        [(ButtonSwitchInputViewController *)self setTargetButtonEvents:805306368];
      }

      else
      {
        v17 = [(ButtonSwitchInputViewController *)self inputs];
        v18 = [v17 identifier];
        v19 = [v18 isEqualToString:@"Ringer"];

        if (v19)
        {
          [(ButtonSwitchInputViewController *)self setTargetButtonEvents:12];
        }

        else
        {
          v20 = [(ButtonSwitchInputViewController *)self inputs];
          v21 = [v20 identifier];
          v22 = [v21 isEqualToString:@"Sleep"];

          if (v22)
          {
            [(ButtonSwitchInputViewController *)self setTargetButtonEvents:48];
          }

          else
          {
            v23 = [(ButtonSwitchInputViewController *)self inputs];
            v24 = [v23 identifier];
            v25 = [v24 isEqualToString:@"VolumeIncrement"];

            if (v25)
            {
              [(ButtonSwitchInputViewController *)self setTargetButtonEvents:192];
            }

            else
            {
              v26 = [(ButtonSwitchInputViewController *)self inputs];
              v27 = [v26 identifier];
              v28 = [v27 isEqualToString:@"VolumeDecrement"];

              if (v28)
              {
                [(ButtonSwitchInputViewController *)self setTargetButtonEvents:768];
              }

              else
              {
                v29 = [(ButtonSwitchInputViewController *)self inputs];
                v30 = [v29 identifier];
                v31 = [v30 isEqualToString:@"DigitalCrown"];

                if (v31)
                {
                  [(ButtonSwitchInputViewController *)self setTargetButtonEvents:3072];
                }

                else
                {
                  v32 = [(ButtonSwitchInputViewController *)self inputs];
                  v33 = [v32 identifier];
                  v34 = [v33 isEqualToString:@"Side"];

                  if (v34)
                  {
                    [(ButtonSwitchInputViewController *)self setTargetButtonEvents:12288];
                  }

                  else
                  {
                    v35 = [(ButtonSwitchInputViewController *)self inputs];
                    v36 = [v35 identifier];
                    v37 = [v36 isEqualToString:@"App"];

                    if (v37)
                    {
                      [(ButtonSwitchInputViewController *)self setTargetButtonEvents:201326592];
                    }

                    else
                    {
                      v38 = [(ButtonSwitchInputViewController *)self inputs];
                      v39 = [v38 identifier];
                      v40 = [v39 isEqualToString:@"Camera"];

                      if (v40)
                      {
                        [(ButtonSwitchInputViewController *)self setTargetButtonEvents:0];
                        v75 = 0;
                        v41 = [[CHHapticEngine alloc] initAndReturnError:&v75];
                        v42 = v75;
                        [(ButtonSwitchInputViewController *)self setHapticEngine:v41];

                        if (v42)
                        {
                          v43 = DiagnosticLogHandleForCategory();
                          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                          {
                            sub_1000087F4();
                          }

                          [(ButtonSwitchInputViewController *)self setHapticEngine:0];
                        }

                        else
                        {
                          objc_initWeak(&location, self);
                          v44 = [(ButtonSwitchInputViewController *)self hapticEngine];
                          v73[0] = _NSConcreteStackBlock;
                          v73[1] = 3221225472;
                          v73[2] = sub_100004E00;
                          v73[3] = &unk_100010500;
                          objc_copyWeak(&v74, &location);
                          [v44 setResetHandler:v73];

                          v45 = [(ButtonSwitchInputViewController *)self hapticEngine];
                          [v45 setStoppedHandler:&stru_100010540];

                          v46 = objc_alloc_init(NSLock);
                          [(ButtonSwitchInputViewController *)self setHapticPlaybackLock:v46];

                          objc_destroyWeak(&v74);
                          objc_destroyWeak(&location);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v47 = objc_alloc_init(DSHardwareButtonEventMonitor);
    [(ButtonSwitchInputViewController *)self setButtonEventMonitor:v47];

    objc_initWeak(&location, self);
    v48 = [(ButtonSwitchInputViewController *)self buttonEventMonitor];
    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = sub_100004F94;
    v71[3] = &unk_100010500;
    objc_copyWeak(&v72, &location);
    [v48 startWithPriority:200 completion:v71];

    v49 = [(ButtonSwitchInputViewController *)self inputs];
    v50 = [v49 switchParameters];

    if (v50)
    {
      v51 = [DAButtonSwitchState alloc];
      v52 = [(ButtonSwitchInputViewController *)self inputs];
      v53 = [v52 identifier];
      v54 = [(ButtonSwitchInputViewController *)self inputs];
      v55 = [(DAButtonSwitchState *)v54 switchParameters];
      v56 = -[DAButtonSwitchState initWithIdentifier:startingState:](v51, "initWithIdentifier:startingState:", v53, [v55 startingState]);
      [(ButtonSwitchInputViewController *)self setButtonSwitchState:v56];
    }

    else
    {
      v57 = [(ButtonSwitchInputViewController *)self inputs];
      v58 = [v57 buttonParameters];

      if (!v58)
      {
LABEL_35:
        [(ButtonSwitchInputViewController *)self setIsInputMonitoringPaused:0];
        [(ButtonSwitchInputViewController *)self setButtonFailure:0];
        v60 = objc_alloc_init(NSMutableArray);
        [(ButtonSwitchInputViewController *)self setAllResults:v60];

        v61 = +[DSTestAutomation sharedInstance];
        v62 = [v61 testAutomationEnabled];

        if (v62)
        {
          v80[0] = @"parameters";
          v63 = [(ButtonSwitchInputViewController *)self inputs];
          v64 = [v63 parameters];
          v81[0] = v64;
          v80[1] = @"predicates";
          v65 = [(ButtonSwitchInputViewController *)self inputs];
          v66 = [v65 predicates];
          v81[1] = v66;
          v80[2] = @"specifications";
          v67 = [(ButtonSwitchInputViewController *)self inputs];
          v68 = [v67 specifications];
          v81[2] = v68;
          v69 = [NSDictionary dictionaryWithObjects:v81 forKeys:v80 count:3];
          [DSTestAutomation postConfiguration:v69];
        }

        objc_destroyWeak(&v72);
        objc_destroyWeak(&location);
        goto LABEL_38;
      }

      v59 = [DAButtonSwitchState alloc];
      v52 = [(ButtonSwitchInputViewController *)self inputs];
      v53 = [v52 identifier];
      v54 = [(DAButtonSwitchState *)v59 initWithIdentifier:v53];
      [(ButtonSwitchInputViewController *)self setButtonSwitchState:v54];
    }

    goto LABEL_35;
  }

  v13 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_100008868();
  }

  [(ButtonSwitchInputViewController *)self endTestWithStatusCode:&off_1000111B8];
LABEL_38:
}

- (void)_downloadSpriteImageUsingResponder:(id)a3
{
  v4 = a3;
  v5 = dispatch_semaphore_create(0);
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_100005344;
  v31 = sub_100005354;
  v32 = 0;
  v6 = [(ButtonSwitchInputViewController *)self inputs];
  v7 = [v6 buttonSwitchSpecification];
  v8 = [v7 asset];
  v9 = [v8 name];
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_10000535C;
  v24 = &unk_100010568;
  v26 = &v27;
  v10 = v5;
  v25 = v10;
  [v4 getAsset:v9 completion:&v21];

  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  if (v28[5])
  {
    v11 = self;
    objc_sync_enter(v11);
    v12 = [UIImage alloc];
    v13 = [v12 initWithData:{v28[5], v21, v22, v23, v24}];
    [(ButtonSwitchInputViewController *)v11 setSpriteImage:v13];

    v14 = [(ButtonSwitchInputViewController *)v11 spriteImageDownloadCompletion];

    if (v14)
    {
      v15 = [(ButtonSwitchInputViewController *)v11 spriteImageDownloadCompletion];
      v15[2]();

      [(ButtonSwitchInputViewController *)v11 setSpriteImageDownloadCompletion:0];
    }

    objc_sync_exit(v11);
  }

  else
  {
    v16 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [(ButtonSwitchInputViewController *)self inputs:v21];
      v18 = [v17 buttonSwitchSpecification];
      v19 = [v18 asset];
      v20 = [v19 name];
      *buf = 138412290;
      v34 = v20;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to download asset %@", buf, 0xCu);
    }

    [(ButtonSwitchInputViewController *)self endTestWithStatusCode:&off_1000111D0];
  }

  _Block_object_dispose(&v27, 8);
}

- (void)shouldShowViewControllerInHostApp:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(ButtonSwitchInputViewController *)v5 spriteImage];

  if (v6)
  {
    v4[2](v4, 1);
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000054B4;
    v7[3] = &unk_100010590;
    v8 = v4;
    [(ButtonSwitchInputViewController *)v5 setSpriteImageDownloadCompletion:v7];
  }

  objc_sync_exit(v5);
}

- (BOOL)setupTest
{
  v3 = [(ButtonSwitchInputViewController *)self inputs];
  v4 = [v3 type];
  v5 = [v4 isEqualToString:@"Button"];

  v6 = [(ButtonSwitchInputViewController *)self inputs];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 buttonParameters];

    [(ButtonSwitchInputViewController *)self setCurrentSegment:0xFFFFFFFFLL];
    [(ButtonSwitchInputViewController *)self setIsSecondEvent:0];
LABEL_8:

    return v8 != 0;
  }

  v9 = [v6 type];
  v10 = [v9 isEqualToString:@"Switch"];

  v11 = [(ButtonSwitchInputViewController *)self inputs];
  v12 = v11;
  if (v10)
  {
    v13 = [v11 switchParameters];
LABEL_7:
    v8 = v13;

    [(ButtonSwitchInputViewController *)self setCurrentSegment:0xFFFFFFFFLL];
    goto LABEL_8;
  }

  v14 = [v11 type];
  v15 = [v14 isEqualToString:@"TouchButton"];

  if (v15)
  {
    v12 = [(ButtonSwitchInputViewController *)self inputs];
    v13 = [v12 touchButtonParameters];
    goto LABEL_7;
  }

  return 0;
}

- (void)setupView
{
  v3 = +[UIColor whiteColor];
  v4 = [(ButtonSwitchInputViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [UIImageView alloc];
  v6 = [(ButtonSwitchInputViewController *)self inputs];
  v7 = [v6 buttonSwitchSpecification];
  [v7 position];
  v8 = [v5 initWithFrame:?];
  [(ButtonSwitchInputViewController *)self setTestImage:v8];

  v9 = [(ButtonSwitchInputViewController *)self view];
  v10 = [(ButtonSwitchInputViewController *)self testImage];
  [v9 addSubview:v10];

  v11 = [(ButtonSwitchInputViewController *)self inputs];
  v12 = [v11 switchParameters];

  if (v12)
  {
    v13 = [(ButtonSwitchInputViewController *)self checkCurrentSwitchState];
    v14 = [(ButtonSwitchInputViewController *)self inputs];
    v15 = [v14 switchParameters];
    v16 = [v15 startingState];

    if (v13 == v16)
    {
      [(ButtonSwitchInputViewController *)self setCurrentSegment:[(ButtonSwitchInputViewController *)self currentSegment]+ 1];
    }

    else
    {
      [(ButtonSwitchInputViewController *)self endTestWithStatusCode:&off_1000111E8];
    }
  }

  [(ButtonSwitchInputViewController *)self showNextSegment];
}

- (void)setupTouchButtonInteractions
{
  if (+[CBSUtilities isCheckerBoardActive])
  {
    +[CBSUtilities enableTouchButtonEvents];
  }

  else
  {
    v3 = [_UIPhysicalButtonConfiguration _cameraCaptureShutterConfigurationWithOptionsProvider:0];
    v4 = [[_UIPhysicalButtonInteraction alloc] initWithConfigurations:v3 delegate:self];
    v5 = [(ButtonSwitchInputViewController *)self view];
    [v5 addInteraction:v4];
  }

  v8 = +[DAHIDEventMonitor sharedInstance];
  [v8 setDelegate:self];
  v6 = [NSSet setWithObject:&off_100011200];
  v7 = [v8 startMonitoringWithHIDEvents:v6];

  if ((v7 & 1) == 0)
  {
    [(ButtonSwitchInputViewController *)self endTestWithStatusCode:&off_100011218];
  }
}

- (void)showNextSegment
{
  [(ButtonSwitchInputViewController *)self setCurrentSegment:[(ButtonSwitchInputViewController *)self currentSegment]+ 1];
  [(ButtonSwitchInputViewController *)self setCurrentSegmentActionCount:0];
  v4 = [(ButtonSwitchInputViewController *)self inputs];
  v5 = [v4 buttonParameters];
  if (v5)
  {
    v6 = [(ButtonSwitchInputViewController *)self inputs];
    v7 = [v6 buttonParameters];
    v8 = [v7 segments];
    v9 = [v8 count];
    if (v9 <= [(ButtonSwitchInputViewController *)self currentSegment])
    {

      goto LABEL_17;
    }

    v29 = v8;
    v30 = v7;
    v31 = v6;
  }

  v10 = [(ButtonSwitchInputViewController *)self inputs];
  v11 = [v10 switchParameters];
  if (v11)
  {
    v12 = [(ButtonSwitchInputViewController *)self inputs];
    v13 = [v12 switchParameters];
    v2 = [v13 states];
    v14 = [v2 count];
    if (v14 <= [(ButtonSwitchInputViewController *)self currentSegment])
    {
      v23 = 1;
LABEL_13:

      goto LABEL_14;
    }

    v27 = v13;
    v28 = v12;
  }

  v15 = [(ButtonSwitchInputViewController *)self inputs];
  v16 = [v15 touchButtonParameters];
  if (v16)
  {
    v17 = v16;
    [(ButtonSwitchInputViewController *)self inputs];
    v18 = v26 = v4;
    [v18 touchButtonParameters];
    v25 = v10;
    v20 = v19 = v2;
    v21 = [v20 targetEvents];
    v22 = [v21 count];
    v23 = v22 <= [(ButtonSwitchInputViewController *)self currentSegment];

    v2 = v19;
    v10 = v25;

    v4 = v26;
  }

  else
  {

    v23 = 0;
  }

  v13 = v27;
  v12 = v28;
  if (v11)
  {
    goto LABEL_13;
  }

LABEL_14:

  if (v5)
  {
  }

  if (!v23)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005BF0;
    block[3] = &unk_100010438;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
    return;
  }

LABEL_17:
  if ([(ButtonSwitchInputViewController *)self buttonFailure])
  {
    v24 = &off_100011230;
  }

  else
  {
    v24 = &off_100011248;
  }

  [(ButtonSwitchInputViewController *)self endTestWithStatusCode:v24];
}

- (void)showTransitionWithRange:(_NSRange)a3 WithCompletionHandler:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = v7;
  if (length)
  {
    v9 = [(ButtonSwitchInputViewController *)self testImage];
    v10 = [(ButtonSwitchInputViewController *)self spriteImage];
    v11 = [(ButtonSwitchInputViewController *)self inputs];
    v12 = [v11 buttonSwitchSpecification];
    v13 = [v12 asset];
    [v13 size];
    v14 = [DASpriteImage imagesFromSprite:v10 inRange:location withImageSize:length];
    [v9 setAnimationImages:v14];

    v15 = length / 60.0;
    v16 = [(ButtonSwitchInputViewController *)self testImage];
    [v16 setAnimationRepeatCount:1];

    v17 = [(ButtonSwitchInputViewController *)self testImage];
    [v17 setAnimationDuration:v15];

    v18 = [(ButtonSwitchInputViewController *)self testImage];
    [v18 startAnimating];

    v19 = dispatch_time(0, (v15 * 1000000000.0));
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000611C;
    block[3] = &unk_100010590;
    v21 = v8;
    dispatch_after(v19, &_dispatch_main_q, block);
  }

  else
  {
    (*(v7 + 2))(v7);
  }
}

- (void)cleanUpWithCompletion:(id)a3
{
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100006220;
  v11 = &unk_1000105E0;
  v12 = self;
  v13 = a3;
  v4 = v13;
  v5 = objc_retainBlock(&v8);
  v6 = [(ButtonSwitchInputViewController *)self buttonEventMonitor:v8];

  if (v6)
  {
    v7 = [(ButtonSwitchInputViewController *)self buttonEventMonitor];
    [v7 stopWithCompletion:v5];
  }

  else
  {
    (v5[2])(v5);
  }
}

- (void)teardown
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100006468;
  v4[3] = &unk_100010438;
  v5 = dispatch_semaphore_create(0);
  v3 = v5;
  [(ButtonSwitchInputViewController *)self cleanUpWithCompletion:v4];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)endTestWithStatusCode:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToNumber:&off_100011248])
  {
    v5 = [(ButtonSwitchInputViewController *)self hapticPlaybackLock];

    if (v5)
    {
      v6 = [(ButtonSwitchInputViewController *)self hapticPlaybackLock];
      v7 = [NSDate dateWithTimeIntervalSinceNow:1.5];
      v8 = [v6 lockBeforeDate:v7];

      if ((v8 & 1) == 0)
      {
        v9 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_100008918();
        }

        v4 = &off_100011260;
      }
    }
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000065C0;
  v11[3] = &unk_1000105B8;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  dispatch_async(&_dispatch_main_q, v11);
}

- (void)noInputTimedOut
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "No Input Timeout called", buf, 2u);
  }

  v4 = [(ButtonSwitchInputViewController *)self buttonEventMonitor];

  if (v4)
  {
    v5 = [(ButtonSwitchInputViewController *)self buttonEventMonitor];
    [v5 removeTarget:self];
  }

  [(ButtonSwitchInputViewController *)self setIsInputMonitoringPaused:1];
  objc_initWeak(buf, self);
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"NO_INPUT_DETECTED" value:&stru_100010E88 table:0];
  v8 = [UIAlertController alertControllerWithTitle:0 message:v7 preferredStyle:1];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"RETRY" value:&stru_100010E88 table:0];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100006A64;
  v21[3] = &unk_100010608;
  objc_copyWeak(&v22, buf);
  v21[4] = self;
  v11 = [UIAlertAction actionWithTitle:v10 style:0 handler:v21];
  [v8 addAction:v11];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"CONTINUE" value:&stru_100010E88 table:0];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100006BB0;
  v18 = &unk_100010608;
  objc_copyWeak(&v20, buf);
  v19 = self;
  v14 = [UIAlertAction actionWithTitle:v13 style:0 handler:&v15];
  [v8 addAction:{v14, v15, v16, v17, v18}];

  [(ButtonSwitchInputViewController *)self presentViewController:v8 animated:1 completion:0];
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);

  objc_destroyWeak(buf);
}

- (void)startTimer
{
  v3 = [(ButtonSwitchInputViewController *)self inputs];
  v4 = [v3 type];
  v5 = [v4 isEqualToString:@"Button"];

  v6 = [(ButtonSwitchInputViewController *)self inputs];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 buttonParameters];
LABEL_7:
    v19 = v8;

    v14 = v19;
    goto LABEL_8;
  }

  v9 = [v6 type];
  v10 = [v9 isEqualToString:@"Switch"];

  v11 = [(ButtonSwitchInputViewController *)self inputs];
  v7 = v11;
  if (v10)
  {
    v8 = [v11 switchParameters];
    goto LABEL_7;
  }

  v12 = [v11 type];
  v13 = [v12 isEqualToString:@"TouchButton"];

  if (v13)
  {
    v7 = [(ButtonSwitchInputViewController *)self inputs];
    v8 = [v7 touchButtonParameters];
    goto LABEL_7;
  }

  v14 = 0;
LABEL_8:
  v20 = v14;
  [v14 listenForInputTimeout];
  if (v15 == 0.0)
  {
    [v20 noInputTimeout];
    if (v17 == 0.0)
    {
      goto LABEL_13;
    }

    [v20 noInputTimeout];
    v16 = "noInputTimedOut";
  }

  else
  {
    [v20 listenForInputTimeout];
    v16 = "timedOut";
  }

  v18 = [NSTimer scheduledTimerWithTimeInterval:self target:v16 selector:0 userInfo:0 repeats:?];
  [(ButtonSwitchInputViewController *)self setTimeoutTimer:v18];

LABEL_13:
}

- (void)resetTimer
{
  v3 = [(ButtonSwitchInputViewController *)self inputs];
  v4 = [v3 buttonParameters];

  v5 = [(ButtonSwitchInputViewController *)self inputs];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 buttonParameters];
LABEL_7:
    v13 = v7;

    v11 = [(ButtonSwitchInputViewController *)self timeoutTimer];
    [v11 invalidate];

    [v13 noInputTimeout];
    v12 = [NSTimer scheduledTimerWithTimeInterval:self target:"noInputTimedOut" selector:0 userInfo:0 repeats:?];
    [(ButtonSwitchInputViewController *)self setTimeoutTimer:v12];

    return;
  }

  v8 = [v5 switchParameters];

  v9 = [(ButtonSwitchInputViewController *)self inputs];
  v6 = v9;
  if (v8)
  {
    v7 = [v9 switchParameters];
    goto LABEL_7;
  }

  v10 = [v9 touchButtonParameters];

  if (v10)
  {
    v6 = [(ButtonSwitchInputViewController *)self inputs];
    v7 = [v6 touchButtonParameters];
    goto LABEL_7;
  }

  [(ButtonSwitchInputViewController *)self endTestWithStatusCode:&off_100011278];
}

- (void)didReceiveButtonEvent:(unint64_t)a3
{
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v44 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Recieved hardware button event %x", buf, 8u);
  }

  if (([(ButtonSwitchInputViewController *)self currentSegment]& 0x80000000) == 0)
  {
    v6 = +[NSDate date];
    [v6 timeIntervalSince1970];
    v8 = [NSNumber numberWithUnsignedLongLong:(v7 * 1000.0)];

    v9 = [(ButtonSwitchInputViewController *)self inputs];
    v10 = [v9 buttonParameters];
    v11 = [(ButtonSwitchInputViewController *)self inputs];
    v12 = v11;
    if (v10)
    {
      [v11 buttonParameters];
    }

    else
    {
      [v11 switchParameters];
    }
    v13 = ;

    if (v13 && [v13 resetTimer])
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000758C;
      block[3] = &unk_100010438;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }

    v14 = [(ButtonSwitchInputViewController *)self buttonSwitchState];
    v36 = 0;
    v37 = 0;
    v15 = [v14 isEventAcceptable:a3 type:&v37 eventType:&v36];
    v16 = v37;
    v17 = v36;

    v18 = DiagnosticLogHandleForCategory();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v19)
      {
        *buf = 67109120;
        v44 = a3;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Button event %x is acceptable", buf, 8u);
      }

      v20 = [(ButtonSwitchInputViewController *)self allResults];
      v42[0] = v16;
      v41[0] = @"type";
      v41[1] = @"identifier";
      v21 = [(ButtonSwitchInputViewController *)self inputs];
      v22 = [v21 identifier];
      v42[1] = v22;
      v42[2] = v17;
      v41[2] = @"eventType";
      v41[3] = @"timestamp";
      v42[3] = v8;
      v23 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:4];
      [v20 addObject:v23];

      v24 = [(ButtonSwitchInputViewController *)self inputs];
      v25 = [v24 buttonParameters];

      if (v25)
      {
        if ([(ButtonSwitchInputViewController *)self isSecondEvent])
        {
          [(ButtonSwitchInputViewController *)self setCurrentSegmentActionCount:[(ButtonSwitchInputViewController *)self currentSegmentActionCount]+ 1];
          v26 = [(ButtonSwitchInputViewController *)self inputs];
          v27 = [v26 buttonParameters];
          v28 = [v27 segments];
          v29 = [v28 objectAtIndexedSubscript:{-[ButtonSwitchInputViewController currentSegment](self, "currentSegment")}];

          LODWORD(v26) = [(ButtonSwitchInputViewController *)self currentSegmentActionCount];
          if (v26 >= [v29 numberOfActions])
          {
            [(ButtonSwitchInputViewController *)self showNextSegment];
          }

          [(ButtonSwitchInputViewController *)self setIsSecondEvent:0];
        }

        else
        {
          [(ButtonSwitchInputViewController *)self setIsSecondEvent:1];
        }

        goto LABEL_27;
      }

      v34 = [(ButtonSwitchInputViewController *)self inputs];
      v35 = [v34 switchParameters];

      if (!v35)
      {
LABEL_27:

        goto LABEL_28;
      }

      [(ButtonSwitchInputViewController *)self setCurrentSegmentActionCount:[(ButtonSwitchInputViewController *)self currentSegmentActionCount]+ 1];
    }

    else
    {
      if (v19)
      {
        *buf = 67109120;
        v44 = a3;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Button event %x is unacceptable!", buf, 8u);
      }

      v30 = [(ButtonSwitchInputViewController *)self allResults];
      v40[0] = v16;
      v39[0] = @"type";
      v39[1] = @"identifier";
      v31 = [(ButtonSwitchInputViewController *)self inputs];
      v32 = [v31 identifier];
      v40[1] = v32;
      v40[2] = v17;
      v39[2] = @"eventType";
      v39[3] = @"timestamp";
      v40[3] = v8;
      v33 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:4];
      [v30 addObject:v33];

      [(ButtonSwitchInputViewController *)self setButtonFailure:1];
    }

    [(ButtonSwitchInputViewController *)self showNextSegment];
    goto LABEL_27;
  }

  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Ignoring event as initial segment has not yet been started", buf, 2u);
  }

LABEL_28:
}

- (void)handleHIDEvent:(__IOHIDEvent *)a3
{
  if (([(ButtonSwitchInputViewController *)self isCancelled]& 1) == 0 && ([(ButtonSwitchInputViewController *)self isFinished]& 1) == 0)
  {
    v5 = dispatch_get_global_queue(25, 0);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000076B4;
    v6[3] = &unk_100010630;
    v6[4] = self;
    v6[5] = a3;
    dispatch_sync(v5, v6);
  }
}

- (void)playHaptic
{
  v32 = CHHapticPatternKeyPattern;
  v29 = CHHapticPatternKeyEvent;
  v27[0] = CHHapticPatternKeyEventType;
  v27[1] = CHHapticPatternKeyTime;
  v28[0] = CHHapticEventTypeHapticTransient;
  v28[1] = &off_100011310;
  v27[2] = CHHapticPatternKeyEventDuration;
  v28[2] = &off_100011320;
  v3 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:3];
  v30 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v31 = v4;
  v5 = [NSArray arrayWithObjects:&v31 count:1];
  v33 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];

  v26 = 0;
  v7 = [[CHHapticPattern alloc] initWithDictionary:v6 error:&v26];
  v8 = v26;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = sub_100005344;
  v24[4] = sub_100005354;
  v9 = [(ButtonSwitchInputViewController *)self hapticEngine];
  v23 = v8;
  v10 = [v9 createPlayerWithPattern:v7 error:&v23];
  v11 = v23;

  v25 = v10;
  objc_initWeak(&location, self);
  v12 = [(ButtonSwitchInputViewController *)self hapticEngine];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100008100;
  v20[3] = &unk_100010658;
  objc_copyWeak(&v21, &location);
  v20[4] = self;
  [v12 notifyWhenPlayersFinished:v20];

  v13 = [(ButtonSwitchInputViewController *)self hapticPlaybackLock];

  if (v13 && (-[ButtonSwitchInputViewController hapticPlaybackLock](self, "hapticPlaybackLock"), v14 = objc_claimAutoreleasedReturnValue(), +[NSDate dateWithTimeIntervalSinceNow:](NSDate, "dateWithTimeIntervalSinceNow:", 1.5), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v14 lockBeforeDate:v15], v15, v14, (v16 & 1) == 0))
  {
    v18 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000089CC();
    }

    [(ButtonSwitchInputViewController *)self endTestWithStatusCode:&off_100011260];
  }

  else
  {
    v17 = [(ButtonSwitchInputViewController *)self hapticEngine];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000081A0;
    v19[3] = &unk_100010680;
    v19[4] = v24;
    [v17 startWithCompletionHandler:v19];
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
  _Block_object_dispose(v24, 8);
}

@end