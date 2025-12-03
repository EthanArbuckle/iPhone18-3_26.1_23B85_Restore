@interface FBALoginViewController
- (id)authenticationContext;
- (id)environmentDescription;
- (id)log;
- (void)hideLogInUI;
- (void)showLogInUI;
- (void)signInViewController:(id)controller didCompleteWithAuthenticationResults:(id)results completionHandler:(id)handler;
- (void)signInViewController:(id)controller shouldContinueWithAuthenticationResults:(id)results error:(id)error forContext:(id)context completion:(id)completion;
- (void)signInViewControllerDidCancel:(id)cancel;
- (void)signInViewControllerDidSelectChildSignIn:(id)in;
- (void)signInViewControllerDidSkip:(id)skip;
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

  signInViewController = [(FBALoginViewController *)self signInViewController];
  [signInViewController setDelegate:self];

  signInViewController2 = [(FBALoginViewController *)self signInViewController];
  [signInViewController2 setAllowsAccountCreation:0];

  signInViewController3 = [(FBALoginViewController *)self signInViewController];
  [signInViewController3 setCanEditUsername:1];

  signInViewController4 = [(FBALoginViewController *)self signInViewController];
  [signInViewController4 setShowServiceIcons:0];

  v10 = [UIImage imageNamed:@"fba-ios-128"];
  signInViewController5 = [(FBALoginViewController *)self signInViewController];
  [signInViewController5 setHeaderImage:v10];

  prefilledUsername = [(FBALoginViewController *)self prefilledUsername];
  signInViewController6 = [(FBALoginViewController *)self signInViewController];
  [signInViewController6 setUsername:prefilledUsername];

  if (+[FBARootSplitViewController presentsAuthKitUIModally])
  {
    if (([(FBALoginViewController *)self pendingStartupUI]& 2) != 0)
    {
      storyboard = [(FBALoginViewController *)self storyboard];
      signInViewController8 = [storyboard instantiateViewControllerWithIdentifier:@"FBALegalViewController"];

      objc_initWeak(&location, self);
      v34 = _NSConcreteStackBlock;
      v35 = 3221225472;
      v36 = sub_100009158;
      v37 = &unk_1000DE618;
      objc_copyWeak(&v39, &location);
      selfCopy = self;
      [signInViewController8 setCompletion:&v34];
      v32 = [UINavigationController alloc];
      v33 = [v32 initWithRootViewController:{signInViewController8, v34, v35, v36, v37}];
      [v33 setToolbarHidden:0];
      [(FBALoginViewController *)self presentViewController:v33 animated:0 completion:0];

      objc_destroyWeak(&v39);
      objc_destroyWeak(&location);
    }

    else
    {
      signInViewController7 = [(FBALoginViewController *)self signInViewController];
      [signInViewController7 setModalInPresentation:1];

      signInViewController8 = [(FBALoginViewController *)self signInViewController];
      [(FBALoginViewController *)self presentViewController:signInViewController8 animated:0 completion:0];
    }
  }

  else
  {
    view = [(FBALoginViewController *)self view];
    signInViewController9 = [(FBALoginViewController *)self signInViewController];
    view2 = [signInViewController9 view];
    [view addSubview:view2];

    signInViewController10 = [(FBALoginViewController *)self signInViewController];
    [signInViewController10 willMoveToParentViewController:self];

    signInViewController11 = [(FBALoginViewController *)self signInViewController];
    [(FBALoginViewController *)self addChildViewController:signInViewController11];

    signInViewController12 = [(FBALoginViewController *)self signInViewController];
    [signInViewController12 didMoveToParentViewController:self];

    signInViewController13 = [(FBALoginViewController *)self signInViewController];
    view3 = [signInViewController13 view];
    [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

    v42[0] = @"childView";
    signInViewController14 = [(FBALoginViewController *)self signInViewController];
    view4 = [signInViewController14 view];
    v43[0] = view4;
    v42[1] = @"containerView";
    view5 = [(FBALoginViewController *)self view];
    v43[1] = view5;
    signInViewController8 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];

    v27 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-padding-[childView]-padding-|", 0, &off_1000E5F10, signInViewController8);
    v28 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-padding-[childView]-padding-|", 0, &off_1000E5F38, signInViewController8);
    view6 = [(FBALoginViewController *)self view];
    [view6 addConstraints:v27];

    view7 = [(FBALoginViewController *)self view];
    [view7 addConstraints:v28];
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
  signInViewController = [(FBALoginViewController *)self signInViewController];
  view = [signInViewController view];

  if (view && [view isHidden])
  {
    v4 = +[FBALog appHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "showing login UI", v5, 2u);
    }

    [view setHidden:0];
  }
}

- (void)hideLogInUI
{
  signInViewController = [(FBALoginViewController *)self signInViewController];
  view = [signInViewController view];

  if (view)
  {
    v4 = +[FBALog appHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "hiding login UI", v5, 2u);
    }

    [view setHidden:1];
  }
}

- (void)updateLoginViewVisibility
{
  v3 = +[FBKData sharedInstance];
  loginManager = [v3 loginManager];
  loginState = [loginManager loginState];

  if (loginState == 1)
  {

    [(FBALoginViewController *)self hideLogInUI];
  }

  else
  {

    [(FBALoginViewController *)self showLogInUI];
  }
}

- (void)signInViewController:(id)controller didCompleteWithAuthenticationResults:(id)results completionHandler:(id)handler
{
  resultsCopy = results;
  handlerCopy = handler;
  v9 = sub_100009310();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v18 = "[FBALoginViewController signInViewController:didCompleteWithAuthenticationResults:completionHandler:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%{public}s", buf, 0xCu);
  }

  v10 = [resultsCopy objectForKeyedSubscript:AKAuthenticationUsernameKey];
  v11 = [(FBALoginViewController *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1000920C8(v10, resultsCopy, v11);
  }

  v12 = +[FBKData sharedInstance];
  loginManager = [v12 loginManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100009860;
  v15[3] = &unk_1000DE640;
  v15[4] = self;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [loginManager loginWithUsername:v10 authenticationResults:resultsCopy completion:v15];
}

- (void)signInViewControllerDidCancel:(id)cancel
{
  v3 = sub_100009310();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[FBALoginViewController signInViewControllerDidCancel:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}s", &v4, 0xCu);
  }
}

- (void)signInViewControllerDidSkip:(id)skip
{
  v3 = sub_100009310();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[FBALoginViewController signInViewControllerDidSkip:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}s", &v4, 0xCu);
  }
}

- (void)signInViewController:(id)controller shouldContinueWithAuthenticationResults:(id)results error:(id)error forContext:(id)context completion:(id)completion
{
  errorCopy = error;
  completionCopy = completion;
  v10 = sub_100009310();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136446210;
    v13 = "[FBALoginViewController signInViewController:shouldContinueWithAuthenticationResults:error:forContext:completion:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}s", &v12, 0xCu);
  }

  if (errorCopy)
  {
    v11 = sub_100009310();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100092188(errorCopy, v11);
    }
  }

  completionCopy[2](completionCopy, errorCopy == 0);
}

- (void)signInViewControllerDidSelectChildSignIn:(id)in
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
  loginManager = [v4 loginManager];
  v6 = [loginManager authenticationContextForUsername:0];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"FEEDBACK_ASSISTANT" value:&stru_1000E2210 table:0];
  [v6 setTitle:v8];

  environmentDescription = [(FBALoginViewController *)self environmentDescription];
  if (environmentDescription)
  {
    [v6 setReason:environmentDescription];
  }

  signInViewController = [(FBALoginViewController *)self signInViewController];
  [v6 setPresentingViewController:signInViewController];

  return v6;
}

@end