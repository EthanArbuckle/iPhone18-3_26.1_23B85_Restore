@interface TermsConditionsViewController
- (TermsConditionsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)machineModel;
- (unint64_t)supportedInterfaceOrientations;
- (void)agree:(id)a3;
- (void)decline:(id)a3;
- (void)didReceiveMemoryWarning;
- (void)postPauseResumeCommand:(int)a3;
- (void)setUserInfo:(id)a3;
- (void)toggleIsAppleSupportRequest;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation TermsConditionsViewController

- (TermsConditionsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = TermsConditionsViewController;
  v8 = [(TermsConditionsViewController *)&v23 initWithNibName:v6 bundle:v7];
  if (v8)
  {
    if (qword_10000D2E8 != -1)
    {
      sub_100003C1C();
    }

    v9 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.ScreenSharingViewServiceHelper" options:0];
    [(TermsConditionsViewController *)v8 setHelperToolConnection:v9];

    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ViewServiceProtocol];
    v11 = [(TermsConditionsViewController *)v8 helperToolConnection];
    [v11 setRemoteObjectInterface:v10];

    v12 = v8;
    v22 = v12;
    v13 = [(TermsConditionsViewController *)v12 helperToolConnection:_NSConcreteStackBlock];
    [v13 setInvalidationHandler:&v21];

    v14 = [(TermsConditionsViewController *)v12 helperToolConnection];
    [v14 resume];

    v15 = [(TermsConditionsViewController *)v12 helperToolConnection];
    v16 = [v15 remoteObjectProxyWithErrorHandler:&stru_100008310];
    [(TermsConditionsViewController *)v12 setHelperTool:v16];

    v17 = [(TermsConditionsViewController *)v12 helperTool];
    v24 = @"pid";
    v18 = [NSNumber numberWithInt:getpid()];
    v25 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [v17 pidNotification:v19];
  }

  return v8;
}

- (unint64_t)supportedInterfaceOrientations
{
  if (byte_10000D2F0 != 1)
  {
    return 2;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = TermsConditionsViewController;
  return [(TermsConditionsViewController *)&v5 supportedInterfaceOrientations];
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = TermsConditionsViewController;
  [(TermsConditionsViewController *)&v9 viewDidLoad];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "view did load", buf, 2u);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [(TermsConditionsViewController *)self userInfoSet];
    *buf = 67109120;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "self.userInfoSet %d", buf, 8u);
  }

  v4 = +[NSBundle mainBundle];
  v5 = [v4 pathForResource:@"TermsConditions" ofType:@"txt"];

  if (v5)
  {
    v6 = [NSString stringWithContentsOfFile:v5 encoding:4 error:0];
    v7 = [(TermsConditionsViewController *)self termsTextView];
    [v7 setText:v6];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "No T&C - assume decline", buf, 2u);
    }

    [(TermsConditionsViewController *)self postResultNotification:0];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002920;
  block[3] = &unk_100008248;
  block[4] = self;
  if (qword_10000D2F8 != -1)
  {
    dispatch_once(&qword_10000D2F8, block);
  }

  [(TermsConditionsViewController *)self traitCollectionDidChange:0];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = TermsConditionsViewController;
  [(TermsConditionsViewController *)&v2 didReceiveMemoryWarning];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2];
  [v4 pointSize];
  v6 = v5;

  v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v7 pointSize];
  v9 = v8;

  v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v10 pointSize];
  v12 = v11;

  if (byte_10000D2F0)
  {
    v13 = 36.0;
  }

  else
  {
    v13 = 20.0;
  }

  if (byte_10000D2F0)
  {
    v14 = 33.0;
  }

  else
  {
    v14 = 18.0;
  }

  v15 = [UIFont systemFontOfSize:v6 weight:UIFontWeightSemibold];
  v16 = [(TermsConditionsViewController *)self termsHeaderTextView];
  [v16 setFont:v15];

  if (v9 <= v13)
  {
    v17 = v9;
  }

  else
  {
    v17 = v13;
  }

  v18 = [(TermsConditionsViewController *)self termsSubHeaderTextView];
  v19 = [v18 font];
  v20 = [v19 fontWithSize:v17];
  v21 = [(TermsConditionsViewController *)self termsSubHeaderTextView];
  [v21 setFont:v20];

  if (v12 > v14)
  {
    v12 = v14;
  }

  v25 = [(TermsConditionsViewController *)self termsTextView];
  v22 = [v25 font];
  v23 = [v22 fontWithSize:v12];
  v24 = [(TermsConditionsViewController *)self termsTextView];
  [v24 setFont:v23];
}

- (void)setUserInfo:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v37 = 138412290;
    v38 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "userinfo called with %@", &v37, 0xCu);
  }

  if (v4)
  {
    v5 = [v4 objectForKeyedSubscript:@"isAppleSupportRequest"];
    if (v5)
    {
      v6 = v5;
      v7 = [v4 objectForKeyedSubscript:@"isAppleSupportRequest"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v9 = [v4 objectForKeyedSubscript:@"isAppleSupportRequest"];
        -[TermsConditionsViewController setIsAppleSupportRequest:](self, "setIsAppleSupportRequest:", [v9 BOOLValue]);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [(TermsConditionsViewController *)self isAppleSupportRequest];
          v37 = 67109120;
          LODWORD(v38) = v10;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Apple Support %d", &v37, 8u);
        }
      }
    }

    v11 = [v4 objectForKeyedSubscript:@"isPaused"];
    if (v11)
    {
      v12 = v11;
      v13 = [v4 objectForKeyedSubscript:@"isPaused"];
      objc_opt_class();
      v14 = objc_opt_isKindOfClass();

      if (v14)
      {
        v15 = [v4 objectForKeyedSubscript:@"isPaused"];
        -[TermsConditionsViewController setIsPaused:](self, "setIsPaused:", [v15 BOOLValue]);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [(TermsConditionsViewController *)self isPaused];
          v37 = 67109120;
          LODWORD(v38) = v16;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "isPaused %d", &v37, 8u);
        }
      }
    }

    v17 = [v4 objectForKeyedSubscript:@"isSessionActive"];
    if (v17)
    {
      v18 = v17;
      v19 = [v4 objectForKeyedSubscript:@"isSessionActive"];
      objc_opt_class();
      v20 = objc_opt_isKindOfClass();

      if (v20)
      {
        v21 = [v4 objectForKeyedSubscript:@"isSessionActive"];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [v21 BOOLValue];
          v37 = 67109120;
          LODWORD(v38) = v22;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "session active %d", &v37, 8u);
        }

        if (([v21 BOOLValue] & 1) == 0)
        {
          v23 = +[NSNotificationCenter defaultCenter];
          v24 = [NSNotification notificationWithName:@"sessionEnded" object:0];
          [v23 postNotification:v24];
        }
      }
    }

    v25 = [v4 objectForKeyedSubscript:@"isShareSettings"];
    if (v25)
    {
      v26 = v25;
      v27 = [v4 objectForKeyedSubscript:@"isShareSettings"];
      objc_opt_class();
      v28 = objc_opt_isKindOfClass();

      if (v28)
      {
        v29 = [v4 objectForKeyedSubscript:@"isShareSettings"];
        -[TermsConditionsViewController setShareSettingsRequest:](self, "setShareSettingsRequest:", [v29 BOOLValue]);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v30 = [(TermsConditionsViewController *)self shareSettingsRequest];
          v37 = 67109120;
          LODWORD(v38) = v30;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Share settings %d", &v37, 8u);
        }
      }
    }

    v31 = [v4 objectForKeyedSubscript:@"isEnded"];
    if (v31)
    {
      v32 = v31;
      v33 = [v4 objectForKeyedSubscript:@"isEnded"];
      objc_opt_class();
      v34 = objc_opt_isKindOfClass();

      if (v34)
      {
        v35 = [v4 objectForKeyedSubscript:@"isEnded"];
        -[TermsConditionsViewController setIsEnded:](self, "setIsEnded:", [v35 BOOLValue]);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v36 = [(TermsConditionsViewController *)self isEnded];
          v37 = 67109120;
          LODWORD(v38) = v36;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "isEnded %d", &v37, 8u);
        }
      }
    }

    [(TermsConditionsViewController *)self setUserInfoSet:1];
  }
}

- (void)postPauseResumeCommand:(int)a3
{
  v10 = @"result";
  v4 = [NSNumber numberWithInteger:a3];
  v11 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];

  v6 = [(TermsConditionsViewController *)self helperTool];
  v7 = v5;
  if (v6)
  {
    [v6 pauseResumeResponse:v7];
    v8 = +[NSRunLoop currentRunLoop];
    v9 = [NSDate dateWithTimeIntervalSinceNow:0.25];
    [v8 runUntilDate:v9];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100003BD4();
  }
}

- (void)agree:(id)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "user agreed to T&C", v4, 2u);
  }

  [(TermsConditionsViewController *)self postResultNotification:1];
}

- (void)decline:(id)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "user declined T&C", v4, 2u);
  }

  [(TermsConditionsViewController *)self postResultNotification:0];
}

- (id)machineModel
{
  *v12 = 0x1B00000006;
  v8 = 0;
  memset(v11, 0, sizeof(v11));
  v2 = 0;
  if (!sysctl(v12, 2u, 0, &v8, 0, 0))
  {
    if (v8 > 0xFF)
    {
      v2 = 0;
      goto LABEL_6;
    }

    v2 = 0;
    if (!sysctl(v12, 2u, v11, &v8, 0, 0))
    {
      v4 = [NSString alloc];
      v2 = [v4 initWithCString:v11 length:v8];
    }

    if ([v2 hasPrefix:@"Mac"])
    {
      v5 = +[NSProcessInfo processInfo];
      v6 = [v5 environment];
      v7 = [v6 objectForKey:@"SIMULATOR_MODEL_IDENTIFIER"];

      v2 = v7;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "modelString: %@", buf, 0xCu);
  }

LABEL_6:

  return v2;
}

- (void)toggleIsAppleSupportRequest
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000380C;
  v3[3] = &unk_100008338;
  v3[4] = self;
  v2 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:v3 block:1.0];
}

@end