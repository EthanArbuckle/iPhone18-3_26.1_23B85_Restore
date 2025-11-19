@interface SSActiveViewController
- (SSActiveViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)sendResultAndTerminate:(int)a3;
- (void)setUserInfo:(id)a3;
- (void)showControls;
- (void)viewDidLoad;
@end

@implementation SSActiveViewController

- (SSActiveViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v22.receiver = self;
  v22.super_class = SSActiveViewController;
  v9 = [(SSActiveViewController *)&v22 initWithNibName:@"SSActiveViewController2" bundle:v8];

  if (v9)
  {
    v10 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.ScreenSharingViewServiceHelper" options:0];
    [(SSActiveViewController *)v9 setHelperToolConnection:v10];

    v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ViewServiceProtocol];
    v12 = [(SSActiveViewController *)v9 helperToolConnection];
    [v12 setRemoteObjectInterface:v11];

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100001204;
    v20[3] = &unk_100008248;
    v13 = v9;
    v21 = v13;
    v14 = [(SSActiveViewController *)v13 helperToolConnection];
    [v14 setInvalidationHandler:v20];

    v15 = [(SSActiveViewController *)v13 helperToolConnection];
    [v15 resume];

    v16 = [(SSActiveViewController *)v13 helperToolConnection];
    v17 = [v16 remoteObjectProxyWithErrorHandler:&stru_100008288];
    [(SSActiveViewController *)v13 setHelperTool:v17];

    v18 = [(SSActiveViewController *)v13 helperTool];
    sub_100000E20(v18);
  }

  return v9;
}

- (void)dealloc
{
  [(SSActiveViewController *)self setHelperToolConnection:0];
  [(SSActiveViewController *)self setHelperToolBackChannelInterface:0];
  [(SSActiveViewController *)self setHelperTool:0];
  [(SSActiveViewController *)self setViewerName:0];
  v3.receiver = self;
  v3.super_class = SSActiveViewController;
  [(SSActiveViewController *)&v3 dealloc];
}

- (void)showControls
{
  v3 = [(SSActiveViewController *)self isPausedNumber];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"kSSScreenSharingPaused" value:&stru_1000083F8 table:0];
    v7 = 0;
  }

  else
  {
    v8 = [(SSActiveViewController *)self viewerName];

    if (v8)
    {
      v7 = [(SSActiveViewController *)self viewerName];
    }

    else
    {
      v9 = +[NSBundle mainBundle];
      v7 = [v9 localizedStringForKey:@"kSSAppleCare" value:&stru_1000083F8 table:0];
    }

    v5 = +[NSBundle mainBundle];
    v10 = [v5 localizedStringForKey:@"kSSViewingScreen" value:&stru_1000083F8 table:0];
    v11 = [(SSActiveViewController *)self viewerName];
    v6 = [NSString stringWithFormat:v10, v11];
  }

  v12 = [UIAlertController alertControllerWithTitle:v7 message:v6 preferredStyle:1];
  v13 = [(SSActiveViewController *)self isPausedNumber];
  v14 = [v13 BOOLValue];

  if (!v14)
  {
    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"kSSPauseScreenSharing" value:&stru_1000083F8 table:0];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100001830;
    v32[3] = &unk_1000082B0;
    v32[4] = self;
    v19 = v32;
    goto LABEL_11;
  }

  v15 = [(SSActiveViewController *)self isScreenLockedNumber];
  v16 = [v15 BOOLValue];

  if ((v16 & 1) == 0)
  {
    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"kSSResumeScreenSharing" value:&stru_1000083F8 table:0];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100001824;
    v33[3] = &unk_1000082B0;
    v33[4] = self;
    v19 = v33;
LABEL_11:
    v20 = [UIAlertAction actionWithTitle:v18 style:0 handler:v19];
    [v12 addAction:v20];
  }

  v21 = +[NSBundle mainBundle];
  v22 = [v21 localizedStringForKey:@"kSSCancel" value:&stru_1000083F8 table:0];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10000183C;
  v31[3] = &unk_1000082B0;
  v31[4] = self;
  v23 = [UIAlertAction actionWithTitle:v22 style:1 handler:v31];
  [v12 addAction:v23];

  v24 = +[NSBundle mainBundle];
  v25 = [v24 localizedStringForKey:@"kSSEndScreenSharing" value:&stru_1000083F8 table:0];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100001848;
  v30[3] = &unk_1000082B0;
  v30[4] = self;
  v26 = [UIAlertAction actionWithTitle:v25 style:2 handler:v30];
  [v12 addAction:v26];

  v27 = [(SSActiveViewController *)self popoverPresentationController];
  v28 = [(SSActiveViewController *)self view];
  [v27 setSourceView:v28];

  v29 = [(SSActiveViewController *)self view];
  [v29 bounds];
  [v27 setSourceRect:?];

  [(SSActiveViewController *)self presentViewController:v12 animated:1 completion:0];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = SSActiveViewController;
  [(SSActiveViewController *)&v2 viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = SSActiveViewController;
  [(SSActiveViewController *)&v2 didReceiveMemoryWarning];
}

- (void)setUserInfo:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "setUserInfo begin", &v19, 2u);
  }

  if (v4)
  {
    v5 = [v4 objectForKeyedSubscript:@"isPaused"];

    if (v5)
    {
      v6 = [v4 objectForKeyedSubscript:@"isPaused"];
      [(SSActiveViewController *)self setIsPausedNumber:v6];
    }

    v7 = [v4 objectForKeyedSubscript:@"isScreenLocked"];

    if (v7)
    {
      v8 = [v4 objectForKeyedSubscript:@"isScreenLocked"];
      [(SSActiveViewController *)self setIsScreenLockedNumber:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"viewerName"];

    if (v9)
    {
      v10 = [v4 objectForKeyedSubscript:@"viewerName"];
      [(SSActiveViewController *)self setViewerName:v10];

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(SSActiveViewController *)self viewerName];
        v12 = [v11 UTF8String];
        v19 = 136315138;
        v20 = v12;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "*****set viewer name %s", &v19, 0xCu);
      }
    }

    v13 = [v4 objectForKeyedSubscript:@"isAppleSupportRequest"];
    if (v13)
    {
      v14 = v13;
      v15 = [v4 objectForKeyedSubscript:@"isAppleSupportRequest"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v17 = [v4 objectForKeyedSubscript:@"isAppleSupportRequest"];
        -[SSActiveViewController setIsAppleSupportRequest:](self, "setIsAppleSupportRequest:", [v17 BOOLValue]);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [(SSActiveViewController *)self isAppleSupportRequest];
          v19 = 67109120;
          LODWORD(v20) = v18;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Apple Support %d", &v19, 8u);
        }
      }
    }

    [(SSActiveViewController *)self setUserInfoSet:1];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "userInfo:%@", &v19, 0xCu);
    }
  }
}

- (void)sendResultAndTerminate:(int)a3
{
  v8 = @"result";
  v4 = [NSNumber numberWithInteger:a3];
  v9 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];

  v6 = [(SSActiveViewController *)self helperTool];
  sub_100000F4C(v6, v5);

  [(NSXPCConnection *)self->helperToolConnection invalidate];
  v7 = +[UIApplication sharedApplication];
  [v7 terminateWithSuccess];
}

@end