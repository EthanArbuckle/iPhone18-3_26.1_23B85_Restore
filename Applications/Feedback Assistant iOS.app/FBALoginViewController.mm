@interface FBALoginViewController
- (id)authenticationContext;
- (id)environmentDescription;
- (id)log;
- (void)hideLogInUI;
- (void)showLogInUI;
- (void)signInViewController:(id)a3 didCompleteWithAuthenticationResults:(id)a4 completionHandler:(id)a5;
- (void)signInViewController:(id)a3 shouldContinueWithAuthenticationResults:(id)a4 error:(id)a5 forContext:(id)a6 completion:(id)a7;
- (void)signInViewControllerDidCancel:(id)a3;
- (void)signInViewControllerDidSelectChildSignIn:(id)a3;
- (void)signInViewControllerDidSkip:(id)a3;
- (void)updateLoginViewVisibility;
- (void)viewDidLoad;
@end

@implementation FBALoginViewController

- (id)log
{
  if (qword_10010AF38 != -1)
  {
    sub_10009205C();
  }

  v3 = qword_10010AF30;

  return v3;
}

- (void)viewDidLoad
{
  v41.receiver = self;
  v41.super_class = FBALoginViewController;
  [(FBALoginViewController *)&v41 viewDidLoad];
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 stringForKey:@"LastSuccessfulLogin"];
  [(FBALoginViewController *)self setPrefilledUsername:v4];

  v5 = objc_alloc_init(AAUISignInViewController);
  [(FBALoginViewController *)self setSignInViewController:v5];

  v6 = [(FBALoginViewController *)self signInViewController];
  [v6 setDelegate:self];

  v7 = [(FBALoginViewController *)self signInViewController];
  [v7 setAllowsAccountCreation:0];

  v8 = [(FBALoginViewController *)self signInViewController];
  [v8 setCanEditUsername:1];

  v9 = [(FBALoginViewController *)self signInViewController];
  [v9 setShowServiceIcons:0];

  v10 = [UIImage imageNamed:@"fba-ios-128"];
  v11 = [(FBALoginViewController *)self signInViewController];
  [v11 setHeaderImage:v10];

  v12 = [(FBALoginViewController *)self prefilledUsername];
  v13 = [(FBALoginViewController *)self signInViewController];
  [v13 setUsername:v12];

  if (+[FBARootSplitViewController presentsAuthKitUIModally])
  {
    if (([(FBALoginViewController *)self pendingStartupUI]& 2) != 0)
    {
      v31 = [(FBALoginViewController *)self storyboard];
      v15 = [v31 instantiateViewControllerWithIdentifier:@"FBALegalViewController"];

      objc_initWeak(&location, self);
      v34 = _NSConcreteStackBlock;
      v35 = 3221225472;
      v36 = sub_100009158;
      v37 = &unk_1000DE618;
      objc_copyWeak(&v39, &location);
      v38 = self;
      [v15 setCompletion:&v34];
      v32 = [UINavigationController alloc];
      v33 = [v32 initWithRootViewController:{v15, v34, v35, v36, v37}];
      [v33 setToolbarHidden:0];
      [(FBALoginViewController *)self presentViewController:v33 animated:0 completion:0];

      objc_destroyWeak(&v39);
      objc_destroyWeak(&location);
    }

    else
    {
      v14 = [(FBALoginViewController *)self signInViewController];
      [v14 setModalInPresentation:1];

      v15 = [(FBALoginViewController *)self signInViewController];
      [(FBALoginViewController *)self presentViewController:v15 animated:0 completion:0];
    }
  }

  else
  {
    v16 = [(FBALoginViewController *)self view];
    v17 = [(FBALoginViewController *)self signInViewController];
    v18 = [v17 view];
    [v16 addSubview:v18];

    v19 = [(FBALoginViewController *)self signInViewController];
    [v19 willMoveToParentViewController:self];

    v20 = [(FBALoginViewController *)self signInViewController];
    [(FBALoginViewController *)self addChildViewController:v20];

    v21 = [(FBALoginViewController *)self signInViewController];
    [v21 didMoveToParentViewController:self];

    v22 = [(FBALoginViewController *)self signInViewController];
    v23 = [v22 view];
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

    v42[0] = @"childView";
    v24 = [(FBALoginViewController *)self signInViewController];
    v25 = [v24 view];
    v43[0] = v25;
    v42[1] = @"containerView";
    v26 = [(FBALoginViewController *)self view];
    v43[1] = v26;
    v15 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];

    v27 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-padding-[childView]-padding-|", 0, &off_1000E5F10, v15);
    v28 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-padding-[childView]-padding-|", 0, &off_1000E5F38, v15);
    v29 = [(FBALoginViewController *)self view];
    [v29 addConstraints:v27];

    v30 = [(FBALoginViewController *)self view];
    [v30 addConstraints:v28];
  }
}

- (id)environmentDescription
{
  if (FBKIsInternalInstall())
  {
    v2 = +[iFBAConstants environment];
    v3 = +[iFBAConstants currentIDMSEnvironmentMatchesCurrentFBKSEnvironment];
    if ((v3 & (v2 == 0)) != 0)
    {
      v4 = 0;
    }

    else
    {
      v4 = @"[Error: FBA ≠ IDMS Environment]";
    }

    if ((v3 & (v2 == 0)) == 0 && v3)
    {
      v5 = +[iFBAConstants environment]- 1;
      if (v5 > 3u)
      {
        v6 = @"Prod";
      }

      else
      {
        v6 = *(&off_1000DE680 + v5);
      }

      v4 = [NSString stringWithFormat:@"[Environment: %@]", v6];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)showLogInUI
{
  v2 = [(FBALoginViewController *)self signInViewController];
  v3 = [v2 view];

  if (v3 && [v3 isHidden])
  {
    v4 = +[FBALog appHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "showing login UI", v5, 2u);
    }

    [v3 setHidden:0];
  }
}

- (void)hideLogInUI
{
  v2 = [(FBALoginViewController *)self signInViewController];
  v3 = [v2 view];

  if (v3)
  {
    v4 = +[FBALog appHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "hiding login UI", v5, 2u);
    }

    [v3 setHidden:1];
  }
}

- (void)updateLoginViewVisibility
{
  v3 = +[FBKData sharedInstance];
  v4 = [v3 loginManager];
  v5 = [v4 loginState];

  if (v5 == 1)
  {

    [(FBALoginViewController *)self hideLogInUI];
  }

  else
  {

    [(FBALoginViewController *)self showLogInUI];
  }
}

- (void)signInViewController:(id)a3 didCompleteWithAuthenticationResults:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = sub_100009310();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v18 = "[FBALoginViewController signInViewController:didCompleteWithAuthenticationResults:completionHandler:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%{public}s", buf, 0xCu);
  }

  v10 = [v7 objectForKeyedSubscript:AKAuthenticationUsernameKey];
  v11 = [(FBALoginViewController *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1000920C8(v10, v7, v11);
  }

  v12 = +[FBKData sharedInstance];
  v13 = [v12 loginManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100009860;
  v15[3] = &unk_1000DE640;
  v15[4] = self;
  v16 = v8;
  v14 = v8;
  [v13 loginWithUsername:v10 authenticationResults:v7 completion:v15];
}

- (void)signInViewControllerDidCancel:(id)a3
{
  v3 = sub_100009310();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[FBALoginViewController signInViewControllerDidCancel:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}s", &v4, 0xCu);
  }
}

- (void)signInViewControllerDidSkip:(id)a3
{
  v3 = sub_100009310();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[FBALoginViewController signInViewControllerDidSkip:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}s", &v4, 0xCu);
  }
}

- (void)signInViewController:(id)a3 shouldContinueWithAuthenticationResults:(id)a4 error:(id)a5 forContext:(id)a6 completion:(id)a7
{
  v8 = a5;
  v9 = a7;
  v10 = sub_100009310();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136446210;
    v13 = "[FBALoginViewController signInViewController:shouldContinueWithAuthenticationResults:error:forContext:completion:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}s", &v12, 0xCu);
  }

  if (v8)
  {
    v11 = sub_100009310();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100092188(v8, v11);
    }
  }

  v9[2](v9, v8 == 0);
}

- (void)signInViewControllerDidSelectChildSignIn:(id)a3
{
  v3 = sub_100009310();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[FBALoginViewController signInViewControllerDidSelectChildSignIn:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}s", &v4, 0xCu);
  }
}

- (id)authenticationContext
{
  v3 = sub_100009310();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136446210;
    v13 = "[FBALoginViewController authenticationContext]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}s", &v12, 0xCu);
  }

  v4 = +[FBKData sharedInstance];
  v5 = [v4 loginManager];
  v6 = [v5 authenticationContextForUsername:0];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"FEEDBACK_ASSISTANT" value:&stru_1000E2210 table:0];
  [v6 setTitle:v8];

  v9 = [(FBALoginViewController *)self environmentDescription];
  if (v9)
  {
    [v6 setReason:v9];
  }

  v10 = [(FBALoginViewController *)self signInViewController];
  [v6 setPresentingViewController:v10];

  return v6;
}

@end