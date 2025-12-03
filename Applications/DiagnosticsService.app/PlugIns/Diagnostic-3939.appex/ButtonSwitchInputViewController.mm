@interface ButtonSwitchInputViewController
- (BOOL)setupTest;
- (void)_downloadSpriteImageUsingResponder:(id)responder;
- (void)cleanUpWithCompletion:(id)completion;
- (void)didReceiveButtonEvent:(unint64_t)event;
- (void)endTestWithStatusCode:(id)code;
- (void)handleHIDEvent:(__IOHIDEvent *)event;
- (void)noInputTimedOut;
- (void)playHaptic;
- (void)resetTimer;
- (void)setupTouchButtonInteractions;
- (void)setupView;
- (void)setupWithInputs:(id)inputs responder:(id)responder;
- (void)shouldShowViewControllerInHostApp:(id)app;
- (void)showNextSegment;
- (void)showTransitionWithRange:(_NSRange)range WithCompletionHandler:(id)handler;
- (void)startTimer;
- (void)teardown;
@end

@implementation ButtonSwitchInputViewController

- (void)setupWithInputs:(id)inputs responder:(id)responder
{
  inputsCopy = inputs;
  responderCopy = responder;
  [(ButtonSwitchInputViewController *)self setInputs:inputsCopy];
  [(ButtonSwitchInputViewController *)self setupTest];
  inputs = [(ButtonSwitchInputViewController *)self inputs];
  buttonSwitchSpecification = [inputs buttonSwitchSpecification];

  if (buttonSwitchSpecification)
  {
    objc_initWeak(&location, self);
    v9 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100004DB0;
    block[3] = &unk_1000104D8;
    objc_copyWeak(&v78, &location);
    v77 = responderCopy;
    dispatch_async(v9, block);

    objc_destroyWeak(&v78);
    objc_destroyWeak(&location);
    [(ButtonSwitchInputViewController *)self setTargetButtonEvents:0xFFFFFFFFLL];
    inputs2 = [(ButtonSwitchInputViewController *)self inputs];
    identifier = [inputs2 identifier];
    v12 = [identifier isEqualToString:@"Home"];

    if (v12)
    {
      [(ButtonSwitchInputViewController *)self setTargetButtonEvents:3];
    }

    else
    {
      inputs3 = [(ButtonSwitchInputViewController *)self inputs];
      identifier2 = [inputs3 identifier];
      v16 = [identifier2 isEqualToString:@"RingerButton"];

      if (v16)
      {
        [(ButtonSwitchInputViewController *)self setTargetButtonEvents:805306368];
      }

      else
      {
        inputs4 = [(ButtonSwitchInputViewController *)self inputs];
        identifier3 = [inputs4 identifier];
        v19 = [identifier3 isEqualToString:@"Ringer"];

        if (v19)
        {
          [(ButtonSwitchInputViewController *)self setTargetButtonEvents:12];
        }

        else
        {
          inputs5 = [(ButtonSwitchInputViewController *)self inputs];
          identifier4 = [inputs5 identifier];
          v22 = [identifier4 isEqualToString:@"Sleep"];

          if (v22)
          {
            [(ButtonSwitchInputViewController *)self setTargetButtonEvents:48];
          }

          else
          {
            inputs6 = [(ButtonSwitchInputViewController *)self inputs];
            identifier5 = [inputs6 identifier];
            v25 = [identifier5 isEqualToString:@"VolumeIncrement"];

            if (v25)
            {
              [(ButtonSwitchInputViewController *)self setTargetButtonEvents:192];
            }

            else
            {
              inputs7 = [(ButtonSwitchInputViewController *)self inputs];
              identifier6 = [inputs7 identifier];
              v28 = [identifier6 isEqualToString:@"VolumeDecrement"];

              if (v28)
              {
                [(ButtonSwitchInputViewController *)self setTargetButtonEvents:768];
              }

              else
              {
                inputs8 = [(ButtonSwitchInputViewController *)self inputs];
                identifier7 = [inputs8 identifier];
                v31 = [identifier7 isEqualToString:@"DigitalCrown"];

                if (v31)
                {
                  [(ButtonSwitchInputViewController *)self setTargetButtonEvents:3072];
                }

                else
                {
                  inputs9 = [(ButtonSwitchInputViewController *)self inputs];
                  identifier8 = [inputs9 identifier];
                  v34 = [identifier8 isEqualToString:@"Side"];

                  if (v34)
                  {
                    [(ButtonSwitchInputViewController *)self setTargetButtonEvents:12288];
                  }

                  else
                  {
                    inputs10 = [(ButtonSwitchInputViewController *)self inputs];
                    identifier9 = [inputs10 identifier];
                    v37 = [identifier9 isEqualToString:@"App"];

                    if (v37)
                    {
                      [(ButtonSwitchInputViewController *)self setTargetButtonEvents:201326592];
                    }

                    else
                    {
                      inputs11 = [(ButtonSwitchInputViewController *)self inputs];
                      identifier10 = [inputs11 identifier];
                      v40 = [identifier10 isEqualToString:@"Camera"];

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
                          hapticEngine = [(ButtonSwitchInputViewController *)self hapticEngine];
                          v73[0] = _NSConcreteStackBlock;
                          v73[1] = 3221225472;
                          v73[2] = sub_100004E00;
                          v73[3] = &unk_100010500;
                          objc_copyWeak(&v74, &location);
                          [hapticEngine setResetHandler:v73];

                          hapticEngine2 = [(ButtonSwitchInputViewController *)self hapticEngine];
                          [hapticEngine2 setStoppedHandler:&stru_100010540];

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
    buttonEventMonitor = [(ButtonSwitchInputViewController *)self buttonEventMonitor];
    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = sub_100004F94;
    v71[3] = &unk_100010500;
    objc_copyWeak(&v72, &location);
    [buttonEventMonitor startWithPriority:200 completion:v71];

    inputs12 = [(ButtonSwitchInputViewController *)self inputs];
    switchParameters = [inputs12 switchParameters];

    if (switchParameters)
    {
      v51 = [DAButtonSwitchState alloc];
      inputs13 = [(ButtonSwitchInputViewController *)self inputs];
      identifier11 = [inputs13 identifier];
      inputs14 = [(ButtonSwitchInputViewController *)self inputs];
      switchParameters2 = [(DAButtonSwitchState *)inputs14 switchParameters];
      v56 = -[DAButtonSwitchState initWithIdentifier:startingState:](v51, "initWithIdentifier:startingState:", identifier11, [switchParameters2 startingState]);
      [(ButtonSwitchInputViewController *)self setButtonSwitchState:v56];
    }

    else
    {
      inputs15 = [(ButtonSwitchInputViewController *)self inputs];
      buttonParameters = [inputs15 buttonParameters];

      if (!buttonParameters)
      {
LABEL_35:
        [(ButtonSwitchInputViewController *)self setIsInputMonitoringPaused:0];
        [(ButtonSwitchInputViewController *)self setButtonFailure:0];
        v60 = objc_alloc_init(NSMutableArray);
        [(ButtonSwitchInputViewController *)self setAllResults:v60];

        v61 = +[DSTestAutomation sharedInstance];
        testAutomationEnabled = [v61 testAutomationEnabled];

        if (testAutomationEnabled)
        {
          v80[0] = @"parameters";
          inputs16 = [(ButtonSwitchInputViewController *)self inputs];
          parameters = [inputs16 parameters];
          v81[0] = parameters;
          v80[1] = @"predicates";
          inputs17 = [(ButtonSwitchInputViewController *)self inputs];
          predicates = [inputs17 predicates];
          v81[1] = predicates;
          v80[2] = @"specifications";
          inputs18 = [(ButtonSwitchInputViewController *)self inputs];
          specifications = [inputs18 specifications];
          v81[2] = specifications;
          v69 = [NSDictionary dictionaryWithObjects:v81 forKeys:v80 count:3];
          [DSTestAutomation postConfiguration:v69];
        }

        objc_destroyWeak(&v72);
        objc_destroyWeak(&location);
        goto LABEL_38;
      }

      v59 = [DAButtonSwitchState alloc];
      inputs13 = [(ButtonSwitchInputViewController *)self inputs];
      identifier11 = [inputs13 identifier];
      inputs14 = [(DAButtonSwitchState *)v59 initWithIdentifier:identifier11];
      [(ButtonSwitchInputViewController *)self setButtonSwitchState:inputs14];
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

- (void)_downloadSpriteImageUsingResponder:(id)responder
{
  responderCopy = responder;
  v5 = dispatch_semaphore_create(0);
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_100005344;
  v31 = sub_100005354;
  v32 = 0;
  inputs = [(ButtonSwitchInputViewController *)self inputs];
  buttonSwitchSpecification = [inputs buttonSwitchSpecification];
  asset = [buttonSwitchSpecification asset];
  name = [asset name];
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_10000535C;
  v24 = &unk_100010568;
  v26 = &v27;
  v10 = v5;
  v25 = v10;
  [responderCopy getAsset:name completion:&v21];

  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  if (v28[5])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v12 = [UIImage alloc];
    v13 = [v12 initWithData:{v28[5], v21, v22, v23, v24}];
    [(ButtonSwitchInputViewController *)selfCopy setSpriteImage:v13];

    spriteImageDownloadCompletion = [(ButtonSwitchInputViewController *)selfCopy spriteImageDownloadCompletion];

    if (spriteImageDownloadCompletion)
    {
      spriteImageDownloadCompletion2 = [(ButtonSwitchInputViewController *)selfCopy spriteImageDownloadCompletion];
      spriteImageDownloadCompletion2[2]();

      [(ButtonSwitchInputViewController *)selfCopy setSpriteImageDownloadCompletion:0];
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v16 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [(ButtonSwitchInputViewController *)self inputs:v21];
      buttonSwitchSpecification2 = [v17 buttonSwitchSpecification];
      asset2 = [buttonSwitchSpecification2 asset];
      name2 = [asset2 name];
      *buf = 138412290;
      v34 = name2;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to download asset %@", buf, 0xCu);
    }

    [(ButtonSwitchInputViewController *)self endTestWithStatusCode:&off_1000111D0];
  }

  _Block_object_dispose(&v27, 8);
}

- (void)shouldShowViewControllerInHostApp:(id)app
{
  appCopy = app;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  spriteImage = [(ButtonSwitchInputViewController *)selfCopy spriteImage];

  if (spriteImage)
  {
    appCopy[2](appCopy, 1);
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000054B4;
    v7[3] = &unk_100010590;
    v8 = appCopy;
    [(ButtonSwitchInputViewController *)selfCopy setSpriteImageDownloadCompletion:v7];
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)setupTest
{
  inputs = [(ButtonSwitchInputViewController *)self inputs];
  type = [inputs type];
  v5 = [type isEqualToString:@"Button"];

  inputs2 = [(ButtonSwitchInputViewController *)self inputs];
  v7 = inputs2;
  if (v5)
  {
    buttonParameters = [inputs2 buttonParameters];

    [(ButtonSwitchInputViewController *)self setCurrentSegment:0xFFFFFFFFLL];
    [(ButtonSwitchInputViewController *)self setIsSecondEvent:0];
LABEL_8:

    return buttonParameters != 0;
  }

  type2 = [inputs2 type];
  v10 = [type2 isEqualToString:@"Switch"];

  inputs3 = [(ButtonSwitchInputViewController *)self inputs];
  inputs4 = inputs3;
  if (v10)
  {
    switchParameters = [inputs3 switchParameters];
LABEL_7:
    buttonParameters = switchParameters;

    [(ButtonSwitchInputViewController *)self setCurrentSegment:0xFFFFFFFFLL];
    goto LABEL_8;
  }

  type3 = [inputs3 type];
  v15 = [type3 isEqualToString:@"TouchButton"];

  if (v15)
  {
    inputs4 = [(ButtonSwitchInputViewController *)self inputs];
    switchParameters = [inputs4 touchButtonParameters];
    goto LABEL_7;
  }

  return 0;
}

- (void)setupView
{
  v3 = +[UIColor whiteColor];
  view = [(ButtonSwitchInputViewController *)self view];
  [view setBackgroundColor:v3];

  v5 = [UIImageView alloc];
  inputs = [(ButtonSwitchInputViewController *)self inputs];
  buttonSwitchSpecification = [inputs buttonSwitchSpecification];
  [buttonSwitchSpecification position];
  v8 = [v5 initWithFrame:?];
  [(ButtonSwitchInputViewController *)self setTestImage:v8];

  view2 = [(ButtonSwitchInputViewController *)self view];
  testImage = [(ButtonSwitchInputViewController *)self testImage];
  [view2 addSubview:testImage];

  inputs2 = [(ButtonSwitchInputViewController *)self inputs];
  switchParameters = [inputs2 switchParameters];

  if (switchParameters)
  {
    checkCurrentSwitchState = [(ButtonSwitchInputViewController *)self checkCurrentSwitchState];
    inputs3 = [(ButtonSwitchInputViewController *)self inputs];
    switchParameters2 = [inputs3 switchParameters];
    startingState = [switchParameters2 startingState];

    if (checkCurrentSwitchState == startingState)
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
    view = [(ButtonSwitchInputViewController *)self view];
    [view addInteraction:v4];
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
  inputs = [(ButtonSwitchInputViewController *)self inputs];
  buttonParameters = [inputs buttonParameters];
  if (buttonParameters)
  {
    inputs2 = [(ButtonSwitchInputViewController *)self inputs];
    buttonParameters2 = [inputs2 buttonParameters];
    segments = [buttonParameters2 segments];
    v9 = [segments count];
    if (v9 <= [(ButtonSwitchInputViewController *)self currentSegment])
    {

      goto LABEL_17;
    }

    v29 = segments;
    v30 = buttonParameters2;
    v31 = inputs2;
  }

  inputs3 = [(ButtonSwitchInputViewController *)self inputs];
  switchParameters = [inputs3 switchParameters];
  if (switchParameters)
  {
    inputs4 = [(ButtonSwitchInputViewController *)self inputs];
    switchParameters2 = [inputs4 switchParameters];
    states = [switchParameters2 states];
    v14 = [states count];
    if (v14 <= [(ButtonSwitchInputViewController *)self currentSegment])
    {
      v23 = 1;
LABEL_13:

      goto LABEL_14;
    }

    v27 = switchParameters2;
    v28 = inputs4;
  }

  inputs5 = [(ButtonSwitchInputViewController *)self inputs];
  touchButtonParameters = [inputs5 touchButtonParameters];
  if (touchButtonParameters)
  {
    v17 = touchButtonParameters;
    [(ButtonSwitchInputViewController *)self inputs];
    v18 = v26 = inputs;
    [v18 touchButtonParameters];
    v25 = inputs3;
    v20 = v19 = states;
    targetEvents = [v20 targetEvents];
    v22 = [targetEvents count];
    v23 = v22 <= [(ButtonSwitchInputViewController *)self currentSegment];

    states = v19;
    inputs3 = v25;

    inputs = v26;
  }

  else
  {

    v23 = 0;
  }

  switchParameters2 = v27;
  inputs4 = v28;
  if (switchParameters)
  {
    goto LABEL_13;
  }

LABEL_14:

  if (buttonParameters)
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

- (void)showTransitionWithRange:(_NSRange)range WithCompletionHandler:(id)handler
{
  length = range.length;
  location = range.location;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (length)
  {
    testImage = [(ButtonSwitchInputViewController *)self testImage];
    spriteImage = [(ButtonSwitchInputViewController *)self spriteImage];
    inputs = [(ButtonSwitchInputViewController *)self inputs];
    buttonSwitchSpecification = [inputs buttonSwitchSpecification];
    asset = [buttonSwitchSpecification asset];
    [asset size];
    v14 = [DASpriteImage imagesFromSprite:spriteImage inRange:location withImageSize:length];
    [testImage setAnimationImages:v14];

    v15 = length / 60.0;
    testImage2 = [(ButtonSwitchInputViewController *)self testImage];
    [testImage2 setAnimationRepeatCount:1];

    testImage3 = [(ButtonSwitchInputViewController *)self testImage];
    [testImage3 setAnimationDuration:v15];

    testImage4 = [(ButtonSwitchInputViewController *)self testImage];
    [testImage4 startAnimating];

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
    (*(handlerCopy + 2))(handlerCopy);
  }
}

- (void)cleanUpWithCompletion:(id)completion
{
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100006220;
  v11 = &unk_1000105E0;
  selfCopy = self;
  completionCopy = completion;
  v4 = completionCopy;
  v5 = objc_retainBlock(&v8);
  v6 = [(ButtonSwitchInputViewController *)self buttonEventMonitor:v8];

  if (v6)
  {
    buttonEventMonitor = [(ButtonSwitchInputViewController *)self buttonEventMonitor];
    [buttonEventMonitor stopWithCompletion:v5];
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

- (void)endTestWithStatusCode:(id)code
{
  codeCopy = code;
  if ([codeCopy isEqualToNumber:&off_100011248])
  {
    hapticPlaybackLock = [(ButtonSwitchInputViewController *)self hapticPlaybackLock];

    if (hapticPlaybackLock)
    {
      hapticPlaybackLock2 = [(ButtonSwitchInputViewController *)self hapticPlaybackLock];
      v7 = [NSDate dateWithTimeIntervalSinceNow:1.5];
      v8 = [hapticPlaybackLock2 lockBeforeDate:v7];

      if ((v8 & 1) == 0)
      {
        v9 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_100008918();
        }

        codeCopy = &off_100011260;
      }
    }
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000065C0;
  v11[3] = &unk_1000105B8;
  v11[4] = self;
  v12 = codeCopy;
  v10 = codeCopy;
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

  buttonEventMonitor = [(ButtonSwitchInputViewController *)self buttonEventMonitor];

  if (buttonEventMonitor)
  {
    buttonEventMonitor2 = [(ButtonSwitchInputViewController *)self buttonEventMonitor];
    [buttonEventMonitor2 removeTarget:self];
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
  selfCopy = self;
  v14 = [UIAlertAction actionWithTitle:v13 style:0 handler:&v15];
  [v8 addAction:{v14, v15, v16, v17, v18}];

  [(ButtonSwitchInputViewController *)self presentViewController:v8 animated:1 completion:0];
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);

  objc_destroyWeak(buf);
}

- (void)startTimer
{
  inputs = [(ButtonSwitchInputViewController *)self inputs];
  type = [inputs type];
  v5 = [type isEqualToString:@"Button"];

  inputs2 = [(ButtonSwitchInputViewController *)self inputs];
  inputs4 = inputs2;
  if (v5)
  {
    buttonParameters = [inputs2 buttonParameters];
LABEL_7:
    v19 = buttonParameters;

    v14 = v19;
    goto LABEL_8;
  }

  type2 = [inputs2 type];
  v10 = [type2 isEqualToString:@"Switch"];

  inputs3 = [(ButtonSwitchInputViewController *)self inputs];
  inputs4 = inputs3;
  if (v10)
  {
    buttonParameters = [inputs3 switchParameters];
    goto LABEL_7;
  }

  type3 = [inputs3 type];
  v13 = [type3 isEqualToString:@"TouchButton"];

  if (v13)
  {
    inputs4 = [(ButtonSwitchInputViewController *)self inputs];
    buttonParameters = [inputs4 touchButtonParameters];
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
  inputs = [(ButtonSwitchInputViewController *)self inputs];
  buttonParameters = [inputs buttonParameters];

  inputs2 = [(ButtonSwitchInputViewController *)self inputs];
  inputs4 = inputs2;
  if (buttonParameters)
  {
    buttonParameters2 = [inputs2 buttonParameters];
LABEL_7:
    v13 = buttonParameters2;

    timeoutTimer = [(ButtonSwitchInputViewController *)self timeoutTimer];
    [timeoutTimer invalidate];

    [v13 noInputTimeout];
    v12 = [NSTimer scheduledTimerWithTimeInterval:self target:"noInputTimedOut" selector:0 userInfo:0 repeats:?];
    [(ButtonSwitchInputViewController *)self setTimeoutTimer:v12];

    return;
  }

  switchParameters = [inputs2 switchParameters];

  inputs3 = [(ButtonSwitchInputViewController *)self inputs];
  inputs4 = inputs3;
  if (switchParameters)
  {
    buttonParameters2 = [inputs3 switchParameters];
    goto LABEL_7;
  }

  touchButtonParameters = [inputs3 touchButtonParameters];

  if (touchButtonParameters)
  {
    inputs4 = [(ButtonSwitchInputViewController *)self inputs];
    buttonParameters2 = [inputs4 touchButtonParameters];
    goto LABEL_7;
  }

  [(ButtonSwitchInputViewController *)self endTestWithStatusCode:&off_100011278];
}

- (void)didReceiveButtonEvent:(unint64_t)event
{
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    eventCopy3 = event;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Recieved hardware button event %x", buf, 8u);
  }

  if (([(ButtonSwitchInputViewController *)self currentSegment]& 0x80000000) == 0)
  {
    v6 = +[NSDate date];
    [v6 timeIntervalSince1970];
    v8 = [NSNumber numberWithUnsignedLongLong:(v7 * 1000.0)];

    inputs = [(ButtonSwitchInputViewController *)self inputs];
    buttonParameters = [inputs buttonParameters];
    inputs2 = [(ButtonSwitchInputViewController *)self inputs];
    v12 = inputs2;
    if (buttonParameters)
    {
      [inputs2 buttonParameters];
    }

    else
    {
      [inputs2 switchParameters];
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

    buttonSwitchState = [(ButtonSwitchInputViewController *)self buttonSwitchState];
    v36 = 0;
    v37 = 0;
    v15 = [buttonSwitchState isEventAcceptable:event type:&v37 eventType:&v36];
    v16 = v37;
    v17 = v36;

    v18 = DiagnosticLogHandleForCategory();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v19)
      {
        *buf = 67109120;
        eventCopy3 = event;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Button event %x is acceptable", buf, 8u);
      }

      allResults = [(ButtonSwitchInputViewController *)self allResults];
      v42[0] = v16;
      v41[0] = @"type";
      v41[1] = @"identifier";
      inputs3 = [(ButtonSwitchInputViewController *)self inputs];
      identifier = [inputs3 identifier];
      v42[1] = identifier;
      v42[2] = v17;
      v41[2] = @"eventType";
      v41[3] = @"timestamp";
      v42[3] = v8;
      v23 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:4];
      [allResults addObject:v23];

      inputs4 = [(ButtonSwitchInputViewController *)self inputs];
      buttonParameters2 = [inputs4 buttonParameters];

      if (buttonParameters2)
      {
        if ([(ButtonSwitchInputViewController *)self isSecondEvent])
        {
          [(ButtonSwitchInputViewController *)self setCurrentSegmentActionCount:[(ButtonSwitchInputViewController *)self currentSegmentActionCount]+ 1];
          inputs5 = [(ButtonSwitchInputViewController *)self inputs];
          buttonParameters3 = [inputs5 buttonParameters];
          segments = [buttonParameters3 segments];
          v29 = [segments objectAtIndexedSubscript:{-[ButtonSwitchInputViewController currentSegment](self, "currentSegment")}];

          LODWORD(inputs5) = [(ButtonSwitchInputViewController *)self currentSegmentActionCount];
          if (inputs5 >= [v29 numberOfActions])
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

      inputs6 = [(ButtonSwitchInputViewController *)self inputs];
      switchParameters = [inputs6 switchParameters];

      if (!switchParameters)
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
        eventCopy3 = event;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Button event %x is unacceptable!", buf, 8u);
      }

      allResults2 = [(ButtonSwitchInputViewController *)self allResults];
      v40[0] = v16;
      v39[0] = @"type";
      v39[1] = @"identifier";
      inputs7 = [(ButtonSwitchInputViewController *)self inputs];
      identifier2 = [inputs7 identifier];
      v40[1] = identifier2;
      v40[2] = v17;
      v39[2] = @"eventType";
      v39[3] = @"timestamp";
      v40[3] = v8;
      v33 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:4];
      [allResults2 addObject:v33];

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

- (void)handleHIDEvent:(__IOHIDEvent *)event
{
  if (([(ButtonSwitchInputViewController *)self isCancelled]& 1) == 0 && ([(ButtonSwitchInputViewController *)self isFinished]& 1) == 0)
  {
    v5 = dispatch_get_global_queue(25, 0);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000076B4;
    v6[3] = &unk_100010630;
    v6[4] = self;
    v6[5] = event;
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
  hapticEngine = [(ButtonSwitchInputViewController *)self hapticEngine];
  v23 = v8;
  v10 = [hapticEngine createPlayerWithPattern:v7 error:&v23];
  v11 = v23;

  v25 = v10;
  objc_initWeak(&location, self);
  hapticEngine2 = [(ButtonSwitchInputViewController *)self hapticEngine];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100008100;
  v20[3] = &unk_100010658;
  objc_copyWeak(&v21, &location);
  v20[4] = self;
  [hapticEngine2 notifyWhenPlayersFinished:v20];

  hapticPlaybackLock = [(ButtonSwitchInputViewController *)self hapticPlaybackLock];

  if (hapticPlaybackLock && (-[ButtonSwitchInputViewController hapticPlaybackLock](self, "hapticPlaybackLock"), v14 = objc_claimAutoreleasedReturnValue(), +[NSDate dateWithTimeIntervalSinceNow:](NSDate, "dateWithTimeIntervalSinceNow:", 1.5), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v14 lockBeforeDate:v15], v15, v14, (v16 & 1) == 0))
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
    hapticEngine3 = [(ButtonSwitchInputViewController *)self hapticEngine];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000081A0;
    v19[3] = &unk_100010680;
    v19[4] = v24;
    [hapticEngine3 startWithCompletionHandler:v19];
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
  _Block_object_dispose(v24, 8);
}

@end