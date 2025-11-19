@interface RepairResultViewController
- (BOOL)isDenied;
- (BOOL)isLostMode;
- (BOOL)isNetworkError;
- (void)_restartButtonTapped:(id)a3;
- (void)_tryAgainButtonTapped:(id)a3;
- (void)cancel;
- (void)endTestWithStatusCode:(int64_t)a3 error:(id)a4;
- (void)handleButtonEvent:(unint64_t)a3;
- (void)moveToNextViewController;
- (void)setupView;
- (void)setupWithInputs:(id)a3 responder:(id)a4;
- (void)teardown;
- (void)viewDidLoad;
@end

@implementation RepairResultViewController

- (void)setupWithInputs:(id)a3 responder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = handleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "[RepairResultViewController setupWithInputs:responder:]";
    *&buf[12] = 2112;
    *&buf[14] = v6;
    *&buf[22] = 2112;
    v29 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: %@, %@", buf, 0x20u);
  }

  [(RepairResultViewController *)self setInputs:v6];
  v9 = [(RepairResultViewController *)self inputs];
  v10 = v9 == 0;

  if (v10)
  {
    v11 = [(RepairResultViewController *)self result];
    [v11 setStatusCode:&off_100008788];

    [(RepairResultViewController *)self setFinished:1];
  }

  v12 = handleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Register physical button events", buf, 2u);
  }

  if (!sub_100002B80())
  {
    v13 = handleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100003B58(v13);
    }

    v14 = [(RepairResultViewController *)self result];
    [v14 setStatusCode:&off_1000087A0];

    [(RepairResultViewController *)self setFinished:1];
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v15 = qword_10000CDC8;
  v27 = qword_10000CDC8;
  if (!qword_10000CDC8)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100002CC4;
    v29 = &unk_100008330;
    v30 = &v24;
    sub_100002CC4(buf);
    v15 = v25[3];
  }

  v16 = v15;
  _Block_object_dispose(&v24, 8);
  v17 = objc_opt_new();
  [(RepairResultViewController *)self setButtonEventMonitor:v17];

  v18 = [(RepairResultViewController *)self buttonEventMonitor];
  LODWORD(v17) = v18 == 0;

  if (v17)
  {
    v19 = handleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100003B9C(v19);
    }

    v20 = [(RepairResultViewController *)self result];
    [v20 setStatusCode:&off_1000087A0];

    [(RepairResultViewController *)self setFinished:1];
  }

  objc_initWeak(buf, self);
  v21 = [(RepairResultViewController *)self buttonEventMonitor];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100001338;
  v22[3] = &unk_100008240;
  objc_copyWeak(&v23, buf);
  [v21 startWithPriority:200 completion:v22];

  objc_destroyWeak(&v23);
  objc_destroyWeak(buf);
}

- (void)cancel
{
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[RepairResultViewController cancel]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  [(RepairResultViewController *)self setFinished:1];
}

- (void)teardown
{
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[RepairResultViewController teardown]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v4 = [(RepairResultViewController *)self buttonEventMonitor];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100001590;
  v5[3] = &unk_100008268;
  v5[4] = self;
  [v4 stopWithCompletion:v5];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = RepairResultViewController;
  [(RepairResultViewController *)&v4 viewDidLoad];
  [(RepairResultViewController *)self setShouldShowPressHomeLabel:0];
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[RepairResultViewController viewDidLoad]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }
}

- (void)setupView
{
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v74 = 136315138;
    v75 = "[RepairResultViewController setupView]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v74, 0xCu);
  }

  v4 = objc_opt_new();
  [(RepairResultViewController *)self setViewControllers:v4];

  v5 = [(RepairResultViewController *)self inputs];
  v6 = [v5 testStatusCode];
  v7 = [v6 isEqual:&off_1000087B8];

  if (v7)
  {
    v8 = [(RepairResultViewController *)self inputs];
    v9 = [v8 removedPartSPC];
    v10 = [v9 count];

    if (v10)
    {
      v11 = [FailedPartViewController alloc];
      v12 = [(RepairResultViewController *)self inputs];
      v13 = [v12 removedPartSPC];
      v14 = [(FailedPartViewController *)v11 initWithComponents:v13];

      v15 = @"checkmark.circle";
      v16 = @"TEST_DONE_DETAILS";
      v17 = @"TEST_DONE_TITLE";
      if (!v14)
      {
LABEL_7:

        v19 = 0;
        goto LABEL_19;
      }

LABEL_6:
      [(FailedPartViewController *)v14 setCoordinator:self];
      v18 = [(RepairResultViewController *)self viewControllers];
      [v18 addObject:v14];

      goto LABEL_7;
    }

    v19 = 0;
    v15 = @"checkmark.circle";
    v16 = @"TEST_DONE_DETAILS";
    v17 = @"TEST_DONE_TITLE";
  }

  else if ([(RepairResultViewController *)self isNetworkError])
  {
    v15 = @"exclamationmark.triangle";
    v19 = 1;
    v16 = @"TEST_RETRY_DETAILS";
    v17 = @"TEST_RETRY_TITLE";
  }

  else if ([(RepairResultViewController *)self isLostMode])
  {
    v19 = 0;
    v15 = @"exclamationmark.triangle";
    v16 = @"LOST_MODE_DETAIL_TEXT";
    v17 = @"LOST_MODE_TITLE";
  }

  else if ([(RepairResultViewController *)self isDenied])
  {
    v19 = 0;
    v15 = @"exclamationmark.triangle";
    v16 = @"DENIED_DETAIL_TEXT";
    v17 = @"DENIED_TITLE";
  }

  else
  {
    v20 = [(RepairResultViewController *)self inputs];
    v21 = [v20 removedPartSPC];
    v22 = [v21 count];

    if (v22)
    {
      v23 = [FailedPartViewController alloc];
      v24 = [(RepairResultViewController *)self inputs];
      v25 = [v24 removedPartSPC];
      v14 = [(FailedPartViewController *)v23 initWithComponents:v25];

      v15 = @"arrowtriangle.left.circle";
      v16 = @"TEST_FAILED_DETAILS";
      v17 = @"TEST_FAILED_TITLE";
      if (!v14)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    v19 = 0;
    v15 = @"arrowtriangle.left.circle";
    v16 = @"TEST_FAILED_DETAILS";
    v17 = @"TEST_FAILED_TITLE";
  }

LABEL_19:
  v26 = +[NSBundle mainBundle];
  v27 = [v26 localizedStringForKey:v17 value:&stru_100008370 table:@"RepairResultPlugin-Release"];

  v28 = +[NSBundle mainBundle];
  v29 = [v28 localizedStringForKey:v16 value:&stru_100008370 table:@"RepairResultPlugin-Release"];

  v30 = [[OBTableWelcomeController alloc] initWithTitle:v27 detailText:v29 symbolName:v15 adoptTableViewScrollView:0];
  [(RepairResultViewController *)self setContentViewController:v30];

  v31 = [(RepairResultViewController *)self contentViewController];
  v32 = [v31 navigationItem];
  [v32 setHidesBackButton:1];

  v33 = [(RepairResultViewController *)self contentViewController];
  [v33 setScrollingDisabled:1];

  v34 = [(RepairResultViewController *)self contentViewController];
  v35 = [v34 buttonTray];
  [v35 setHidden:0];

  v36 = +[OBBoldTrayButton boldButton];
  [(RepairResultViewController *)self setBoldButton:v36];

  v37 = [(RepairResultViewController *)self boldButton];
  v38 = +[NSBundle mainBundle];
  v39 = v38;
  if (v19)
  {
    v40 = [v38 localizedStringForKey:@"TRY_AGAIN" value:&stru_100008370 table:@"RepairResultPlugin-Release"];
    [v37 setTitle:v40 forState:0];

    v41 = [(RepairResultViewController *)self boldButton];
    [v41 addTarget:self action:"_tryAgainButtonTapped:" forControlEvents:64];

    v42 = [(RepairResultViewController *)self contentViewController];
    v43 = [v42 buttonTray];
    v44 = [(RepairResultViewController *)self boldButton];
    [v43 addButton:v44];

    v45 = +[OBLinkTrayButton linkButton];
    [(RepairResultViewController *)self setLinkButton:v45];

    v46 = [(RepairResultViewController *)self linkButton];
    v47 = +[NSBundle mainBundle];
    v48 = [v47 localizedStringForKey:@"RESTART" value:&stru_100008370 table:@"RepairResultPlugin-Release"];
    [v46 setTitle:v48 forState:0];

    v49 = [(RepairResultViewController *)self linkButton];
    [v49 addTarget:self action:"_restartButtonTapped:" forControlEvents:64];

    v50 = [(RepairResultViewController *)self contentViewController];
    v51 = [v50 buttonTray];
    [(RepairResultViewController *)self linkButton];
  }

  else
  {
    v52 = [v38 localizedStringForKey:@"RESTART" value:&stru_100008370 table:@"RepairResultPlugin-Release"];
    [v37 setTitle:v52 forState:0];

    v53 = [(RepairResultViewController *)self boldButton];
    [v53 addTarget:self action:"_restartButtonTapped:" forControlEvents:64];

    v50 = [(RepairResultViewController *)self contentViewController];
    v51 = [v50 buttonTray];
    [(RepairResultViewController *)self boldButton];
  }
  v54 = ;
  [v51 addButton:v54];

  v55 = [(RepairResultViewController *)self viewControllers];
  v56 = [(RepairResultViewController *)self contentViewController];
  [v55 addObject:v56];

  v57 = objc_opt_new();
  [(RepairResultViewController *)self setNavigationController:v57];

  v58 = [(RepairResultViewController *)self view];
  [v58 bounds];
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v67 = [(RepairResultViewController *)self navigationController];
  v68 = [v67 view];
  [v68 setFrame:{v60, v62, v64, v66}];

  v69 = [(RepairResultViewController *)self view];
  v70 = [(RepairResultViewController *)self navigationController];
  v71 = [v70 view];
  [v69 addSubview:v71];

  v72 = [(RepairResultViewController *)self navigationController];
  [(RepairResultViewController *)self addChildViewController:v72];

  [(RepairResultViewController *)self moveToNextViewController];
  v73 = [(RepairResultViewController *)self navigationController];
  [v73 didMoveToParentViewController:self];
}

- (void)moveToNextViewController
{
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[RepairResultViewController moveToNextViewController]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v12, 0xCu);
  }

  v4 = [(RepairResultViewController *)self viewControllers];
  v5 = [v4 count];

  v6 = handleForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Move to next view", &v12, 2u);
    }

    v8 = [(RepairResultViewController *)self navigationController];
    v9 = [(RepairResultViewController *)self viewControllers];
    v10 = [v9 objectAtIndexedSubscript:0];
    [v8 pushViewController:v10 animated:1];

    v11 = [(RepairResultViewController *)self viewControllers];
    [v11 removeObjectAtIndex:0];
  }

  else
  {
    if (v7)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No more views.", &v12, 2u);
    }

    [(RepairResultViewController *)self endTestWithStatusCode:0 error:0];
  }
}

- (void)_restartButtonTapped:(id)a3
{
  v4 = handleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Restart button tapped", buf, 2u);
  }

  v5 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:0];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"ALERT_RESTART" value:&stru_100008370 table:@"RepairResultPlugin-Release"];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100002368;
  v12[3] = &unk_100008290;
  v12[4] = self;
  v8 = [UIAlertAction actionWithTitle:v7 style:0 handler:v12];
  [v5 addAction:v8];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"ALERT_CANCEL" value:&stru_100008370 table:@"RepairResultPlugin-Release"];
  v11 = [UIAlertAction actionWithTitle:v10 style:1 handler:&stru_1000082D0];
  [v5 addAction:v11];

  [(RepairResultViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)_tryAgainButtonTapped:(id)a3
{
  v4 = handleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Try Again button tapped", v5, 2u);
  }

  [(RepairResultViewController *)self endTestWithStatusCode:-86 error:0];
}

- (void)handleButtonEvent:(unint64_t)a3
{
  v4 = handleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = a3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Physical button event: %ld", &v5, 0xCu);
  }
}

- (BOOL)isNetworkError
{
  v3 = [(RepairResultViewController *)self inputs];
  v4 = [v3 testIdentifier];
  v5 = [v4 isEqual:&off_1000087D0];

  if (v5)
  {
    v6 = [(RepairResultViewController *)self inputs];
    v7 = [v6 testStatusCode];
    v8 = [v7 isEqual:&off_1000087E8];

    if (v8)
    {
      return 1;
    }
  }

  v9 = [(RepairResultViewController *)self inputs];
  v10 = [v9 testIdentifier];
  v11 = [v10 isEqual:&off_100008800];

  if (v11)
  {
    v12 = [(RepairResultViewController *)self inputs];
    v13 = [v12 testStatusCode];
    v14 = [v13 isEqual:&off_100008818];

    if (v14)
    {
      return 1;
    }
  }

  v15 = [(RepairResultViewController *)self inputs];
  v16 = [v15 testIdentifier];
  v17 = [v16 isEqual:&off_100008830];

  if (!v17)
  {
    return 0;
  }

  v18 = [(RepairResultViewController *)self inputs];
  v19 = [v18 testStatusCode];
  v20 = [v19 isEqual:&off_1000087E8];

  return (v20 & 1) != 0;
}

- (BOOL)isLostMode
{
  v3 = [(RepairResultViewController *)self inputs];
  v4 = [v3 testIdentifier];
  v5 = [v4 isEqual:&off_100008848];

  result = 0;
  if (v5)
  {
    v6 = [(RepairResultViewController *)self inputs];
    v7 = [v6 testStatusCode];
    v8 = [v7 isEqual:&off_100008860];

    if (v8)
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)isDenied
{
  v3 = [(RepairResultViewController *)self inputs];
  v4 = [v3 testIdentifier];
  v5 = [v4 isEqual:&off_100008848];

  result = 0;
  if (v5)
  {
    v6 = [(RepairResultViewController *)self inputs];
    v7 = [v6 testStatusCode];
    v8 = [v7 isEqual:&off_100008878];

    if (v8)
    {
      return 1;
    }
  }

  return result;
}

- (void)endTestWithStatusCode:(int64_t)a3 error:(id)a4
{
  v6 = a4;
  v7 = [NSNumber numberWithInteger:a3];
  v8 = [(RepairResultViewController *)self result];
  [v8 setStatusCode:v7];

  v15[0] = @"error";
  v9 = [v6 description];
  v10 = v9;
  if (!v9)
  {
    v10 = +[NSNull null];
  }

  v15[1] = @"errorCode";
  v16[0] = v10;
  v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 code]);
  v12 = v11;
  if (!v11)
  {
    v12 = +[NSNull null];
  }

  v16[1] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
  v14 = [(RepairResultViewController *)self result];
  [v14 setData:v13];

  if (!v11)
  {
  }

  if (!v9)
  {
  }

  [(RepairResultViewController *)self setFinished:1];
}

@end