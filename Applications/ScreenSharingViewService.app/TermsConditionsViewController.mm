@interface TermsConditionsViewController
- (TermsConditionsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)machineModel;
- (unint64_t)supportedInterfaceOrientations;
- (void)agree:(id)agree;
- (void)decline:(id)decline;
- (void)didReceiveMemoryWarning;
- (void)postPauseResumeCommand:(int)command;
- (void)setUserInfo:(id)info;
- (void)toggleIsAppleSupportRequest;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation TermsConditionsViewController

- (TermsConditionsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v23.receiver = self;
  v23.super_class = TermsConditionsViewController;
  v8 = [(TermsConditionsViewController *)&v23 initWithNibName:nameCopy bundle:bundleCopy];
  if (v8)
  {
    if (qword_10000D2E8 != -1)
    {
      sub_100003C1C();
    }

    v9 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.ScreenSharingViewServiceHelper" options:0];
    [(TermsConditionsViewController *)v8 setHelperToolConnection:v9];

    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ViewServiceProtocol];
    helperToolConnection = [(TermsConditionsViewController *)v8 helperToolConnection];
    [helperToolConnection setRemoteObjectInterface:v10];

    v12 = v8;
    v22 = v12;
    v13 = [(TermsConditionsViewController *)v12 helperToolConnection:_NSConcreteStackBlock];
    [v13 setInvalidationHandler:&v21];

    helperToolConnection2 = [(TermsConditionsViewController *)v12 helperToolConnection];
    [helperToolConnection2 resume];

    helperToolConnection3 = [(TermsConditionsViewController *)v12 helperToolConnection];
    v16 = [helperToolConnection3 remoteObjectProxyWithErrorHandler:&stru_100008310];
    [(TermsConditionsViewController *)v12 setHelperTool:v16];

    helperTool = [(TermsConditionsViewController *)v12 helperTool];
    v24 = @"pid";
    v18 = [NSNumber numberWithInt:getpid()];
    v25 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [helperTool pidNotification:v19];
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
    userInfoSet = [(TermsConditionsViewController *)self userInfoSet];
    *buf = 67109120;
    v11 = userInfoSet;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "self.userInfoSet %d", buf, 8u);
  }

  v4 = +[NSBundle mainBundle];
  v5 = [v4 pathForResource:@"TermsConditions" ofType:@"txt"];

  if (v5)
  {
    v6 = [NSString stringWithContentsOfFile:v5 encoding:4 error:0];
    termsTextView = [(TermsConditionsViewController *)self termsTextView];
    [termsTextView setText:v6];
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

- (void)traitCollectionDidChange:(id)change
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
  termsHeaderTextView = [(TermsConditionsViewController *)self termsHeaderTextView];
  [termsHeaderTextView setFont:v15];

  if (v9 <= v13)
  {
    v17 = v9;
  }

  else
  {
    v17 = v13;
  }

  termsSubHeaderTextView = [(TermsConditionsViewController *)self termsSubHeaderTextView];
  font = [termsSubHeaderTextView font];
  v20 = [font fontWithSize:v17];
  termsSubHeaderTextView2 = [(TermsConditionsViewController *)self termsSubHeaderTextView];
  [termsSubHeaderTextView2 setFont:v20];

  if (v12 > v14)
  {
    v12 = v14;
  }

  termsTextView = [(TermsConditionsViewController *)self termsTextView];
  font2 = [termsTextView font];
  v23 = [font2 fontWithSize:v12];
  termsTextView2 = [(TermsConditionsViewController *)self termsTextView];
  [termsTextView2 setFont:v23];
}

- (void)setUserInfo:(id)info
{
  infoCopy = info;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v37 = 138412290;
    v38 = infoCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "userinfo called with %@", &v37, 0xCu);
  }

  if (infoCopy)
  {
    v5 = [infoCopy objectForKeyedSubscript:@"isAppleSupportRequest"];
    if (v5)
    {
      v6 = v5;
      v7 = [infoCopy objectForKeyedSubscript:@"isAppleSupportRequest"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v9 = [infoCopy objectForKeyedSubscript:@"isAppleSupportRequest"];
        -[TermsConditionsViewController setIsAppleSupportRequest:](self, "setIsAppleSupportRequest:", [v9 BOOLValue]);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          isAppleSupportRequest = [(TermsConditionsViewController *)self isAppleSupportRequest];
          v37 = 67109120;
          LODWORD(v38) = isAppleSupportRequest;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Apple Support %d", &v37, 8u);
        }
      }
    }

    v11 = [infoCopy objectForKeyedSubscript:@"isPaused"];
    if (v11)
    {
      v12 = v11;
      v13 = [infoCopy objectForKeyedSubscript:@"isPaused"];
      objc_opt_class();
      v14 = objc_opt_isKindOfClass();

      if (v14)
      {
        v15 = [infoCopy objectForKeyedSubscript:@"isPaused"];
        -[TermsConditionsViewController setIsPaused:](self, "setIsPaused:", [v15 BOOLValue]);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          isPaused = [(TermsConditionsViewController *)self isPaused];
          v37 = 67109120;
          LODWORD(v38) = isPaused;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "isPaused %d", &v37, 8u);
        }
      }
    }

    v17 = [infoCopy objectForKeyedSubscript:@"isSessionActive"];
    if (v17)
    {
      v18 = v17;
      v19 = [infoCopy objectForKeyedSubscript:@"isSessionActive"];
      objc_opt_class();
      v20 = objc_opt_isKindOfClass();

      if (v20)
      {
        v21 = [infoCopy objectForKeyedSubscript:@"isSessionActive"];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          bOOLValue = [v21 BOOLValue];
          v37 = 67109120;
          LODWORD(v38) = bOOLValue;
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

    v25 = [infoCopy objectForKeyedSubscript:@"isShareSettings"];
    if (v25)
    {
      v26 = v25;
      v27 = [infoCopy objectForKeyedSubscript:@"isShareSettings"];
      objc_opt_class();
      v28 = objc_opt_isKindOfClass();

      if (v28)
      {
        v29 = [infoCopy objectForKeyedSubscript:@"isShareSettings"];
        -[TermsConditionsViewController setShareSettingsRequest:](self, "setShareSettingsRequest:", [v29 BOOLValue]);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          shareSettingsRequest = [(TermsConditionsViewController *)self shareSettingsRequest];
          v37 = 67109120;
          LODWORD(v38) = shareSettingsRequest;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Share settings %d", &v37, 8u);
        }
      }
    }

    v31 = [infoCopy objectForKeyedSubscript:@"isEnded"];
    if (v31)
    {
      v32 = v31;
      v33 = [infoCopy objectForKeyedSubscript:@"isEnded"];
      objc_opt_class();
      v34 = objc_opt_isKindOfClass();

      if (v34)
      {
        v35 = [infoCopy objectForKeyedSubscript:@"isEnded"];
        -[TermsConditionsViewController setIsEnded:](self, "setIsEnded:", [v35 BOOLValue]);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          isEnded = [(TermsConditionsViewController *)self isEnded];
          v37 = 67109120;
          LODWORD(v38) = isEnded;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "isEnded %d", &v37, 8u);
        }
      }
    }

    [(TermsConditionsViewController *)self setUserInfoSet:1];
  }
}

- (void)postPauseResumeCommand:(int)command
{
  v10 = @"result";
  v4 = [NSNumber numberWithInteger:command];
  v11 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];

  helperTool = [(TermsConditionsViewController *)self helperTool];
  v7 = v5;
  if (helperTool)
  {
    [helperTool pauseResumeResponse:v7];
    v8 = +[NSRunLoop currentRunLoop];
    v9 = [NSDate dateWithTimeIntervalSinceNow:0.25];
    [v8 runUntilDate:v9];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100003BD4();
  }
}

- (void)agree:(id)agree
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "user agreed to T&C", v4, 2u);
  }

  [(TermsConditionsViewController *)self postResultNotification:1];
}

- (void)decline:(id)decline
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
      environment = [v5 environment];
      v7 = [environment objectForKey:@"SIMULATOR_MODEL_IDENTIFIER"];

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