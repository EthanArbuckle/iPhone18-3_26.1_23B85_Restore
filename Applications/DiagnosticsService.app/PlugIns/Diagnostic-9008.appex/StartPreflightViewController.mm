@interface StartPreflightViewController
- (BOOL)activationLockCheck;
- (BOOL)preflightPhase1:(id *)phase1;
- (BOOL)preflightPhase2:(id *)phase2;
- (BOOL)shouldPresentInHostApp;
- (id)signData:(id)data;
- (void)activationLockComplete;
- (void)cancel;
- (void)endTestWithStatusCode:(int64_t)code error:(id)error;
- (void)handleButtonEvent:(unint64_t)event;
- (void)moveToNextViewController;
- (void)setupActivationLockView;
- (void)setupWithInputs:(id)inputs responder:(id)responder;
- (void)start;
- (void)teardown;
- (void)viewDidLoad;
@end

@implementation StartPreflightViewController

- (void)setupWithInputs:(id)inputs responder:(id)responder
{
  inputsCopy = inputs;
  responderCopy = responder;
  v8 = handleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "[StartPreflightViewController setupWithInputs:responder:]";
    *&buf[12] = 2112;
    *&buf[14] = inputsCopy;
    *&buf[22] = 2112;
    v30 = responderCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: %@, %@", buf, 0x20u);
  }

  [(StartPreflightViewController *)self setInputs:inputsCopy];
  inputs = [(StartPreflightViewController *)self inputs];
  v10 = inputs == 0;

  if (v10)
  {
    result = [(StartPreflightViewController *)self result];
    [result setStatusCode:&off_100019558];

    [(StartPreflightViewController *)self setFinished:1];
  }

  v12 = handleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Register physical button events", buf, 2u);
  }

  if (!sub_1000086F8())
  {
    v13 = handleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10000D2E4();
    }

    result2 = [(StartPreflightViewController *)self result];
    [result2 setStatusCode:&off_100019570];

    [(StartPreflightViewController *)self setFinished:1];
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v15 = qword_10001DEA8;
  v28 = qword_10001DEA8;
  if (!qword_10001DEA8)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10000883C;
    v30 = &unk_1000189F8;
    v31 = &v25;
    sub_10000883C(buf);
    v15 = v26[3];
  }

  v16 = v15;
  _Block_object_dispose(&v25, 8);
  v17 = objc_opt_new();
  [(StartPreflightViewController *)self setButtonEventMonitor:v17];

  buttonEventMonitor = [(StartPreflightViewController *)self buttonEventMonitor];
  LODWORD(v17) = buttonEventMonitor == 0;

  if (v17)
  {
    v19 = handleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10000D318();
    }

    result3 = [(StartPreflightViewController *)self result];
    [result3 setStatusCode:&off_100019570];

    [(StartPreflightViewController *)self setFinished:1];
  }

  objc_initWeak(buf, self);
  buttonEventMonitor2 = [(StartPreflightViewController *)self buttonEventMonitor];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100006028;
  v23[3] = &unk_100018948;
  objc_copyWeak(&v24, buf);
  [buttonEventMonitor2 startWithPriority:200 completion:v23];

  v22 = dispatch_semaphore_create(0);
  [(StartPreflightViewController *)self setUiNeededKnownSemaphore:v22];

  [(StartPreflightViewController *)self setActivationLockChallengeNeeded:0];
  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);
}

- (void)start
{
  result = [(StartPreflightViewController *)self result];
  [result setStatusCode:&off_100019588];

  LOBYTE(result) = MGGetBoolAnswer();
  v4 = MGGetBoolAnswer();
  if (result & 1) != 0 || (v4)
  {
    v14 = 0;
    v6 = [(StartPreflightViewController *)self preflightPhase1:&v14];
    v7 = v14;
    if (v6)
    {
      activationLockCheck = [(StartPreflightViewController *)self activationLockCheck];
      uiNeededKnownSemaphore = [(StartPreflightViewController *)self uiNeededKnownSemaphore];
      dispatch_semaphore_signal(uiNeededKnownSemaphore);

      if (activationLockCheck)
      {
        if ([(StartPreflightViewController *)self activationLockChallengeNeeded])
        {
          [(StartPreflightViewController *)self setupActivationLockView];
        }

        else
        {
          [(StartPreflightViewController *)self activationLockComplete];
        }

        goto LABEL_13;
      }

      selfCopy2 = self;
      v12 = -77;
      v13 = 0;
    }

    else
    {
      uiNeededKnownSemaphore2 = [(StartPreflightViewController *)self uiNeededKnownSemaphore];
      dispatch_semaphore_signal(uiNeededKnownSemaphore2);

      selfCopy2 = self;
      v12 = -78;
      v13 = v7;
    }

    [(StartPreflightViewController *)selfCopy2 endTestWithStatusCode:v12 error:v13];
LABEL_13:

    return;
  }

  uiNeededKnownSemaphore3 = [(StartPreflightViewController *)self uiNeededKnownSemaphore];
  dispatch_semaphore_signal(uiNeededKnownSemaphore3);

  [(StartPreflightViewController *)self endTestWithStatusCode:-6 error:0];
}

- (void)cancel
{
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[StartPreflightViewController cancel]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  [(StartPreflightViewController *)self setFinished:1];
}

- (void)teardown
{
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[StartPreflightViewController teardown]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  buttonEventMonitor = [(StartPreflightViewController *)self buttonEventMonitor];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000063DC;
  v5[3] = &unk_100018970;
  v5[4] = self;
  [buttonEventMonitor stopWithCompletion:v5];
}

- (BOOL)shouldPresentInHostApp
{
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[StartPreflightViewController shouldPresentInHostApp]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  uiNeededKnownSemaphore = [(StartPreflightViewController *)self uiNeededKnownSemaphore];
  dispatch_semaphore_wait(uiNeededKnownSemaphore, 0xFFFFFFFFFFFFFFFFLL);

  return [(StartPreflightViewController *)self activationLockChallengeNeeded];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = StartPreflightViewController;
  [(StartPreflightViewController *)&v4 viewDidLoad];
  [(StartPreflightViewController *)self setShouldShowPressHomeLabel:0];
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[StartPreflightViewController viewDidLoad]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }
}

- (void)setupActivationLockView
{
  v2 = handleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v72 = "[StartPreflightViewController setupActivationLockView]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v3 = objc_opt_new();
  [(StartPreflightViewController *)self setViewControllers:v3];

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = [(StartPreflightViewController *)self chimeraLockComponents];
  v51 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
  if (v51)
  {
    v50 = *v65;
    do
    {
      v4 = 0;
      do
      {
        if (*v65 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v53 = v4;
        v5 = *(*(&v64 + 1) + 8 * v4);
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v6 = [v5 objectForKeyedSubscript:@"spc"];
        v7 = [v6 countByEnumeratingWithState:&v60 objects:v69 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v61;
          do
          {
            for (i = 0; i != v8; i = i + 1)
            {
              if (*v61 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v60 + 1) + 8 * i);
              v12 = [ChimeraLockViewController alloc];
              v13 = [v5 objectForKeyedSubscript:@"status"];
              v14 = [(ChimeraLockViewController *)v12 initWithComponent:v11 status:v13];

              if (v14)
              {
                [(ChimeraLockViewController *)v14 setCoordinator:self];
                viewControllers = [(StartPreflightViewController *)self viewControllers];
                [viewControllers addObject:v14];
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v60 objects:v69 count:16];
          }

          while (v8);
        }

        v4 = v53 + 1;
      }

      while (v53 + 1 != v51);
      v51 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
    }

    while (v51);
  }

  v52 = objc_opt_new();
  v16 = objc_opt_new();
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  activationLockComponents = [(StartPreflightViewController *)self activationLockComponents];
  v17 = [activationLockComponents countByEnumeratingWithState:&v56 objects:v68 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v57;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v57 != v19)
        {
          objc_enumerationMutation(activationLockComponents);
        }

        v21 = *(*(&v56 + 1) + 8 * j);
        v22 = [TokenChallenger alloc];
        v23 = [v21 objectForKeyedSubscript:@"token"];
        v24 = [v21 objectForKeyedSubscript:@"spc"];
        v25 = [v21 objectForKeyedSubscript:@"type"];
        v26 = [v21 objectForKeyedSubscript:@"endpoint"];
        v27 = [NSURL URLWithString:v26];
        v28 = [(TokenChallenger *)v22 initWithToken:v23 components:v24 fdrTypes:v25 endpoint:v27 signer:self];
        [v16 addObject:v28];
      }

      v18 = [activationLockComponents countByEnumeratingWithState:&v56 objects:v68 count:16];
    }

    while (v18);
  }

  if ([v16 count])
  {
    v29 = [[ActivationLockViewController alloc] initWithTokenChallengers:v16 authenticator:v52];
    v30 = v29;
    if (v29)
    {
      [(ActivationLockViewController *)v29 setCoordinator:self];
      viewControllers2 = [(StartPreflightViewController *)self viewControllers];
      [viewControllers2 addObject:v30];
    }
  }

  v32 = objc_opt_new();
  [(StartPreflightViewController *)self setNavigationController:v32];

  view = [(StartPreflightViewController *)self view];
  [view bounds];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  navigationController = [(StartPreflightViewController *)self navigationController];
  view2 = [navigationController view];
  [view2 setFrame:{v35, v37, v39, v41}];

  view3 = [(StartPreflightViewController *)self view];
  navigationController2 = [(StartPreflightViewController *)self navigationController];
  view4 = [navigationController2 view];
  [view3 addSubview:view4];

  navigationController3 = [(StartPreflightViewController *)self navigationController];
  [(StartPreflightViewController *)self addChildViewController:navigationController3];

  [(StartPreflightViewController *)self moveToNextViewController];
  navigationController4 = [(StartPreflightViewController *)self navigationController];
  [navigationController4 didMoveToParentViewController:self];
}

- (void)moveToNextViewController
{
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[StartPreflightViewController moveToNextViewController]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  viewControllers = [(StartPreflightViewController *)self viewControllers];
  v5 = [viewControllers count];

  v6 = handleForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Move to next view", buf, 2u);
    }

    navigationController = [(StartPreflightViewController *)self navigationController];
    viewControllers2 = [(StartPreflightViewController *)self viewControllers];
    v10 = [viewControllers2 objectAtIndexedSubscript:0];
    [navigationController pushViewController:v10 animated:1];

    viewControllers3 = [(StartPreflightViewController *)self viewControllers];
    [viewControllers3 removeObjectAtIndex:0];
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No more views. Activation lock complete", buf, 2u);
    }

    v12 = dispatch_get_global_queue(21, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100006E70;
    block[3] = &unk_100018970;
    block[4] = self;
    dispatch_async(v12, block);
  }
}

- (void)handleButtonEvent:(unint64_t)event
{
  v4 = handleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    eventCopy = event;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Physical button event: %ld", &v5, 0xCu);
  }
}

- (void)endTestWithStatusCode:(int64_t)code error:(id)error
{
  errorCopy = error;
  if (code)
  {
    v7 = [NSNumber numberWithInteger:code];
    result = [(StartPreflightViewController *)self result];
    [result setStatusCode:v7];

    v39[0] = @"error";
    v9 = [errorCopy description];
    v10 = v9;
    if (!v9)
    {
      v10 = +[NSNull null];
    }

    v39[1] = @"errorCode";
    v40[0] = v10;
    v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
    v12 = v11;
    if (!v11)
    {
      v12 = +[NSNull null];
    }

    v40[1] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:2];
    result2 = [(StartPreflightViewController *)self result];
    [result2 setData:v13];

    if (!v11)
    {
    }

    if (!v9)
    {
    }

    [(StartPreflightViewController *)self setFinished:1];
    goto LABEL_42;
  }

  preflightRIK = [(StartPreflightViewController *)self preflightRIK];

  if (!preflightRIK)
  {
    v17 = 0;
    goto LABEL_17;
  }

  preflightRIK2 = [(StartPreflightViewController *)self preflightRIK];
  v17 = [preflightRIK2 base64EncodedStringWithOptions:0];

  if (v17)
  {
LABEL_17:
    v19 = 0;
    goto LABEL_18;
  }

  v18 = handleForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_10000D34C();
  }

  v17 = 0;
  v19 = -87;
LABEL_18:
  preflightResults = [(StartPreflightViewController *)self preflightResults];

  if (preflightResults)
  {
    preflightResults2 = [(StartPreflightViewController *)self preflightResults];
    v22 = [CRPreflightUtils spcResults:preflightResults2];

    v23 = [v22 objectForKeyedSubscript:@"sealed"];
    v24 = [v22 objectForKeyedSubscript:@"pass"];
    preflightResults = [v24 mutableCopy];
    if (v23 && [v23 count])
    {
      [preflightResults addObject:@"RECOVER"];
    }

    if (!preflightResults || ![preflightResults count])
    {
      v25 = handleForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10000D380();
      }

      v19 = -88;
    }
  }

  v26 = [NSNumber numberWithInteger:v19];
  result3 = [(StartPreflightViewController *)self result];
  [result3 setStatusCode:v26];

  v41[0] = @"error";
  v28 = [errorCopy description];
  v29 = v28;
  if (!v28)
  {
    v28 = +[NSNull null];
  }

  v37 = v28;
  v38 = errorCopy;
  v42[0] = v28;
  v41[1] = @"errorCode";
  v30 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
  v31 = v30;
  if (!v30)
  {
    v31 = +[NSNull null];
  }

  v42[1] = v31;
  v41[2] = @"preflightRIK";
  v32 = v17;
  v33 = v17;
  if (!v17)
  {
    v32 = +[NSNull null];
  }

  v42[2] = v32;
  v41[3] = @"preflightPartSPC";
  v34 = preflightResults;
  if (!preflightResults)
  {
    v34 = +[NSNull null];
  }

  v42[3] = v34;
  v35 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:4];
  result4 = [(StartPreflightViewController *)self result];
  [result4 setData:v35];

  if (preflightResults)
  {
    if (v33)
    {
      goto LABEL_38;
    }

LABEL_44:

    if (v30)
    {
      goto LABEL_39;
    }

LABEL_45:

    goto LABEL_39;
  }

  if (!v33)
  {
    goto LABEL_44;
  }

LABEL_38:
  if (!v30)
  {
    goto LABEL_45;
  }

LABEL_39:

  if (!v29)
  {
  }

  [(StartPreflightViewController *)self setFinished:1];
  errorCopy = v38;
LABEL_42:
}

- (BOOL)activationLockCheck
{
  selfCopy = self;
  preflightResponsePhase1 = [(StartPreflightViewController *)self preflightResponsePhase1];
  v4 = [CRPreflightUtils activationResults:preflightResponsePhase1];

  v30 = +[NSMutableArray array];
  v29 = +[NSMutableArray array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v33;
    v27 = selfCopy;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v33 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v32 + 1) + 8 * v8);
      v10 = [v9 objectForKeyedSubscript:{@"status", v27}];
      v11 = [v9 objectForKeyedSubscript:@"spc"];
      v12 = [v9 objectForKeyedSubscript:@"type"];
      v13 = [v9 objectForKeyedSubscript:@"endpoint"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v24 = handleForCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_10000D3B4();
        }

        goto LABEL_39;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v24 = handleForCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_10000D3E8();
        }

        goto LABEL_39;
      }

      if (![v11 count] || !objc_msgSend(v12, "count") || (v14 = objc_msgSend(v11, "count"), v14 != objc_msgSend(v12, "count")))
      {
        v24 = handleForCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_10000D484(v11, v12, v24);
        }

        goto LABEL_39;
      }

      if ([v10 isEqualToString:@"CHALLENGED"])
      {
        v15 = [v9 objectForKeyedSubscript:@"token"];

        if (!v15)
        {
          v24 = handleForCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            sub_10000D450();
          }

          goto LABEL_39;
        }

        v16 = [v9 objectForKeyedSubscript:@"endpoint"];

        v17 = v29;
        if (!v16)
        {
          v24 = handleForCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            sub_10000D41C();
          }

LABEL_39:
          v20 = obj;

          v23 = 0;
          goto LABEL_40;
        }
      }

      else
      {
        v18 = [v10 isEqualToString:@"DENIED"];
        v17 = v30;
        if ((v18 & 1) == 0)
        {
          v19 = [v10 isEqualToString:@"LOST"];
          v17 = v30;
          if (!v19)
          {
            goto LABEL_18;
          }
        }
      }

      [v17 addObject:v9];
LABEL_18:

      if (v6 == ++v8)
      {
        v6 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
        selfCopy = v27;
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v20 = obj;

  if ([v30 count])
  {
    v21 = handleForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Chimera lock needed", buf, 2u);
    }

    [(StartPreflightViewController *)selfCopy setChimeraLockComponents:v30];
    [(StartPreflightViewController *)selfCopy setActivationLockChallengeNeeded:1];
  }

  if ([v29 count])
  {
    v22 = handleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Activation lock needed", buf, 2u);
    }

    [(StartPreflightViewController *)selfCopy setActivationLockComponents:v29];
    v23 = 1;
    [(StartPreflightViewController *)selfCopy setActivationLockChallengeNeeded:1];
  }

  else
  {
    v23 = 1;
  }

LABEL_40:

  return v23;
}

- (BOOL)preflightPhase1:(id *)phase1
{
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_100007C70;
  v39 = sub_100007C80;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100007C70;
  v33 = sub_100007C80;
  v34 = 0;
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = dispatch_semaphore_create(0);
  v7 = objc_opt_new();
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_100007C88;
  v24 = &unk_100018998;
  v26 = &v41;
  v27 = &v35;
  v28 = &v29;
  v8 = v6;
  v25 = v8;
  [v7 preflightPhase1:v5 withReply:&v21];
  v9 = dispatch_time(0, 120000000000);
  if (dispatch_semaphore_wait(v8, v9))
  {
    v10 = handleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10000D534();
    }

LABEL_4:

    goto LABEL_5;
  }

  if (*(v42 + 24) == 1 && !v30[5])
  {
    v14 = v36[5];
    if (v14)
    {
      v15 = [v14 objectForKeyedSubscript:{@"keyBlob", v21, v22, v23, v24}];
      if (v15)
      {
        v16 = [v36[5] objectForKeyedSubscript:@"baaCert"];
        if (v16)
        {
          v17 = [v36[5] objectForKeyedSubscript:@"responsePhase1"];

          if (v17)
          {
            v18 = [v36[5] objectForKeyedSubscript:@"keyBlob"];
            [(StartPreflightViewController *)self setPreflightRIK:v18];

            v19 = [v36[5] objectForKeyedSubscript:@"baaCert"];
            [(StartPreflightViewController *)self setPreflightBaaCert:v19];

            v20 = [v36[5] objectForKeyedSubscript:@"responsePhase1"];
            [(StartPreflightViewController *)self setPreflightResponsePhase1:v20];

            v11 = 1;
            goto LABEL_6;
          }
        }

        else
        {
        }
      }
    }

    v10 = handleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10000D59C();
    }

    goto LABEL_4;
  }

  v13 = handleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_10000D568();
  }

  if (phase1)
  {
    v11 = 0;
    *phase1 = v30[5];
    goto LABEL_6;
  }

LABEL_5:
  v11 = 0;
LABEL_6:

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);

  _Block_object_dispose(&v41, 8);
  return v11;
}

- (BOOL)preflightPhase2:(id *)phase2
{
  v5 = objc_opt_new();
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_100007C70;
  v32 = sub_100007C80;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100007C70;
  v26 = sub_100007C80;
  v27 = 0;
  v6 = dispatch_semaphore_create(0);
  v7 = objc_alloc_init(NSMutableDictionary);
  preflightRIK = [(StartPreflightViewController *)self preflightRIK];
  [v7 setObject:preflightRIK forKeyedSubscript:@"keyBlob"];

  preflightResponsePhase1 = [(StartPreflightViewController *)self preflightResponsePhase1];
  [v7 setObject:preflightResponsePhase1 forKeyedSubscript:@"responsePhase1"];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000817C;
  v17[3] = &unk_100018998;
  v19 = &v34;
  v20 = &v28;
  v21 = &v22;
  v10 = v6;
  v18 = v10;
  [v5 preflightPhase2:v7 withReply:v17];
  v11 = dispatch_time(0, 120000000000);
  if (dispatch_semaphore_wait(v10, v11))
  {
    v12 = handleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10000D5D0();
    }
  }

  else
  {
    if (*(v35 + 24) == 1 && !v23[5])
    {
      [(StartPreflightViewController *)self setPreflightResults:v29[5]];
      v13 = 1;
      goto LABEL_13;
    }

    v14 = handleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Preflight phase 2 failed", v16, 2u);
    }

    if (phase2)
    {
      v13 = 0;
      *phase2 = v23[5];
      goto LABEL_13;
    }
  }

  v13 = 0;
LABEL_13:

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&v34, 8);
  return v13;
}

- (void)activationLockComplete
{
  v7 = 0;
  v3 = [(StartPreflightViewController *)self preflightPhase2:&v7];
  v4 = v7;
  if (v3)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = -79;
    v6 = v4;
  }

  [(StartPreflightViewController *)self endTestWithStatusCode:v5 error:v6];
}

- (id)signData:(id)data
{
  dataCopy = data;
  v5 = objc_opt_new();
  preflightRIK = [(StartPreflightViewController *)self preflightRIK];
  v7 = [v5 sign:dataCopy keyBlob:preflightRIK];

  return v7;
}

@end