@interface BuddyAppleIDPasswordChangeController
+ (BOOL)controllerNeedsToRun;
- (BOOL)authenticationController:(id)controller shouldContinueWithAuthenticationResults:(id)results error:(id)error forContext:(id)context;
- (BuddyAppleIDPasswordChangeController)init;
- (void)_retryFlowIfPossibleOrFailWithError:(id)error;
- (void)_startFlow;
- (void)_stopSpinning;
- (void)controllerDone;
- (void)createAndRecoverAccountWithUsername:(id)username password:(id)password rawPassword:(id)rawPassword completion:(id)completion;
- (void)networkChangedFromNetworkType:(int)type toNetworkType:(int)networkType;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation BuddyAppleIDPasswordChangeController

+ (BOOL)controllerNeedsToRun
{
  selfCopy = self;
  v8 = a2;
  v2 = +[BYManagedAppleIDBootstrap sharedManager];
  passwordChangeFlowNeedsToRun = [v2 passwordChangeFlowNeedsToRun];

  v7 = passwordChangeFlowNeedsToRun & 1;
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v4 = @"YASE";
    }

    else
    {
      v4 = @"NERP";
    }

    sub_100071CBC(buf, v4);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Password change flow needs to run = %{public}@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  return v7 & 1;
}

- (BuddyAppleIDPasswordChangeController)init
{
  v5 = a2;
  location = 0;
  v4.receiver = self;
  v4.super_class = BuddyAppleIDPasswordChangeController;
  location = [(BuddyAppleIDPasswordChangeController *)&v4 initWithSpinnerText:&stru_10032F900];
  v2 = location;
  objc_storeStrong(&location, 0);
  return v2;
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v8 = a2;
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = BuddyAppleIDPasswordChangeController;
  [(BuddyAppleIDPasswordChangeController *)&v6 viewDidAppear:appear];
  v3 = +[BYNetworkMonitor sharedInstance];
  [(BYNetworkMonitor *)v3 addObserver:selfCopy];

  navigationController = [(BuddyAppleIDPasswordChangeController *)selfCopy navigationController];
  originalNavController = selfCopy->_originalNavController;
  selfCopy->_originalNavController = navigationController;

  [(BuddyAppleIDPasswordChangeController *)selfCopy setFlowRetryCount:0];
  [(BuddyAppleIDPasswordChangeController *)selfCopy setShouldRetryFlow:0];
  [(BuddyAppleIDPasswordChangeController *)selfCopy _startFlow];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v7 = a2;
  disappearCopy = disappear;
  navigationController = [(BuddyAppleIDPasswordChangeController *)self navigationController];
  originalNavController = selfCopy->_originalNavController;
  selfCopy->_originalNavController = navigationController;

  v5.receiver = selfCopy;
  v5.super_class = BuddyAppleIDPasswordChangeController;
  [(BuddyAppleIDPasswordChangeController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)_retryFlowIfPossibleOrFailWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  if (location[0] && [(BuddyAppleIDPasswordChangeController *)selfCopy shouldRetryFlow]&& [(BuddyAppleIDPasswordChangeController *)selfCopy flowRetryCount]< 2)
  {
    [(BuddyAppleIDPasswordChangeController *)selfCopy setFlowRetryCount:[(BuddyAppleIDPasswordChangeController *)selfCopy flowRetryCount]+ 1];
    v46 = _BYLoggingFacility();
    v45 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      sub_100077E48(buf, [(BuddyAppleIDPasswordChangeController *)selfCopy flowRetryCount]);
      _os_log_impl(&_mh_execute_header, v46, v45, "Retrying Apple ID Password Change flow, retry count: %ld", buf, 0xCu);
    }

    objc_storeStrong(&v46, 0);
    v3 = +[BYNetworkMonitor sharedInstance];
    v39 = _NSConcreteStackBlock;
    v40 = -1073741824;
    v41 = 0;
    v42 = sub_10009DB20;
    v43 = &unk_10032B2E0;
    v44 = selfCopy;
    [(BYNetworkMonitor *)v3 withMinimumNetworkType:1 timeout:&v39 runBlock:20.0];

    objc_storeStrong(&v44, 0);
  }

  else
  {
    oslog = _BYLoggingFacility();
    v37 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v35 = 0;
      v33 = 0;
      if (_BYIsInternalInstall())
      {
        v4 = location[0];
      }

      else if (location[0])
      {
        domain = [location[0] domain];
        v35 = 1;
        v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain, [location[0] code]);
        v34 = v4;
        v33 = 1;
      }

      else
      {
        v4 = 0;
      }

      sub_100071CBC(v49, v4);
      _os_log_impl(&_mh_execute_header, oslog, v37, "Failed password change: %{public}@", v49, 0xCu);
      if (v33)
      {
      }

      if (v35)
      {
      }
    }

    objc_storeStrong(&oslog, 0);
    v32 = &stru_10032F900;
    if (MGGetBoolAnswer() & 1)
    {
      localizedDescription = [location[0] localizedDescription];
      v6 = [NSString localizedStringWithFormat:@"\n(internal message): %@", localizedDescription];
      v7 = v32;
      v32 = v6;
    }

    v8 = +[NSBundle mainBundle];
    v30 = [(NSBundle *)v8 localizedStringForKey:@"SLT_UPGRADE_ERROR_TITLE" value:&stru_10032F900 table:@"Localizable"];

    v9 = +[NSBundle mainBundle];
    v10 = [(NSBundle *)v9 localizedStringForKey:@"SLT_UPGRADE_ERROR_MESSAGE" value:&stru_10032F900 table:@"Localizable"];
    v29 = [NSString localizedStringWithFormat:@"%@%@", v10, v32];

    v11 = +[NSBundle mainBundle];
    v28 = [(NSBundle *)v11 localizedStringForKey:@"OK" value:&stru_10032F900 table:@"Localizable"];

    domain2 = [location[0] domain];
    v13 = 0;
    if ([domain2 isEqualToString:AKAppleIDAuthenticationErrorDomain])
    {
      v13 = [location[0] code] == -7027;
    }

    if (v13)
    {
      v14 = +[NSBundle mainBundle];
      v15 = [(NSBundle *)v14 localizedStringForKey:@"SLT_EXPIRED_TITLE" value:&stru_10032F900 table:@"Localizable"];
      v16 = v30;
      v30 = v15;
    }

    v17 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v19 = -1073741824;
    v20 = 0;
    v21 = sub_10009DC40;
    v22 = &unk_10032BA98;
    v23 = v30;
    v24 = v29;
    v25 = v28;
    v26 = location[0];
    v27 = selfCopy;
    dispatch_async(v17, &block);

    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v32, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)_startFlow
{
  selfCopy = self;
  location[1] = a2;
  location[0] = _BYLoggingFacility();
  v44 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = location[0];
    v3 = v44;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "Show Change Password sign in!", buf, 2u);
  }

  objc_storeStrong(location, 0);
  v36 = 0;
  v37 = &v36;
  v38 = 838860800;
  v39 = 48;
  v40 = sub_10009E56C;
  v41 = sub_10009E5B0;
  v42 = objc_opt_new();
  [v37[5] setDelegate:selfCopy];
  v35 = +[UMUserManager sharedManager];
  currentUser = [v35 currentUser];
  username = [currentUser username];
  alternateDSID = [currentUser alternateDSID];
  v4 = +[BYManagedAppleIDBootstrap sharedManager];
  shortLivedToken = [v4 shortLivedToken];

  oslog = _BYLoggingFacility();
  v29 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_10009E5BC(v49, username, alternateDSID, shortLivedToken);
    _os_log_debug_impl(&_mh_execute_header, oslog, v29, "Username = %@, altDSID = %@, SLT = %@", v49, 0x20u);
  }

  objc_storeStrong(&oslog, 0);
  if (username && alternateDSID && shortLivedToken)
  {
    v5 = objc_alloc_init(AKAppleIDAuthenticationPurpleBuddyContext);
    context = selfCopy->_context;
    selfCopy->_context = v5;

    v7 = selfCopy->_context;
    navigationController = [(BuddyAppleIDPasswordChangeController *)selfCopy navigationController];
    [(AKAppleIDAuthenticationPurpleBuddyContext *)v7 setPresentingViewController:navigationController];

    [(AKAppleIDAuthenticationPurpleBuddyContext *)selfCopy->_context setUsername:username];
    [(AKAppleIDAuthenticationPurpleBuddyContext *)selfCopy->_context _setShortLivedToken:shortLivedToken];
    [(AKAppleIDAuthenticationPurpleBuddyContext *)selfCopy->_context setAltDSID:alternateDSID];
    [(AKAppleIDAuthenticationPurpleBuddyContext *)selfCopy->_context setShouldForceInteractiveAuth:0];
    [(AKAppleIDAuthenticationPurpleBuddyContext *)selfCopy->_context setShouldUpdatePersistentServiceTokens:1];
    [(AKAppleIDAuthenticationPurpleBuddyContext *)selfCopy->_context setServiceType:1];
    v28 = objc_opt_new();
    aa_primaryAppleAccount = [v28 aa_primaryAppleAccount];
    LOBYTE(v7) = aa_primaryAppleAccount != 0;

    v27 = v7 & 1;
    v26 = _BYLoggingFacility();
    v25 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      if (v27)
      {
        v10 = @"YASE";
      }

      else
      {
        v10 = @"NERP";
      }

      sub_100071CBC(v48, v10);
      _os_log_impl(&_mh_execute_header, v26, v25, "Primary account exists: %{public}@", v48, 0xCu);
    }

    objc_storeStrong(&v26, 0);
    if ((v27 & 1) == 0)
    {
      [(AKAppleIDAuthenticationPurpleBuddyContext *)selfCopy->_context setFirstTimeLogin:1];
    }

    v11 = v37[5];
    v12 = selfCopy->_context;
    v19 = _NSConcreteStackBlock;
    v20 = -1073741824;
    v21 = 0;
    v22 = sub_10009E5E4;
    v23 = &unk_10032BB38;
    v24[0] = selfCopy;
    v24[1] = &v36;
    [v11 authenticateWithContext:v12 completion:&v19];
    objc_storeStrong(v24, 0);
    objc_storeStrong(&v28, 0);
  }

  else
  {
    v18 = _BYLoggingFacility();
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v18;
      v14 = v17;
      sub_10006AA68(v16);
      _os_log_impl(&_mh_execute_header, v13, v14, "Missing edu login information!", v16, 2u);
    }

    objc_storeStrong(&v18, 0);
    v15 = _BYLoggingFacility();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      sub_10009E5BC(v47, username, alternateDSID, shortLivedToken);
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Username = %@, altDSID = %@, SLT = %@", v47, 0x20u);
    }

    objc_storeStrong(&v15, 0);
    [(BuddyAppleIDPasswordChangeController *)selfCopy _retryFlowIfPossibleOrFailWithError:0];
  }

  objc_storeStrong(&shortLivedToken, 0);
  objc_storeStrong(&alternateDSID, 0);
  objc_storeStrong(&username, 0);
  objc_storeStrong(&currentUser, 0);
  objc_storeStrong(&v35, 0);
  _Block_object_dispose(&v36, 8);
  objc_storeStrong(&v42, 0);
}

- (void)_stopSpinning
{
  [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"passwordchange", a2];
  topViewController = [(UINavigationController *)self->_originalNavController topViewController];
  navigationItem = [(UIViewController *)topViewController navigationItem];
  [(UINavigationItem *)navigationItem setTitle:0];

  topViewController2 = [(UINavigationController *)self->_originalNavController topViewController];
  view = [(UIViewController *)topViewController2 view];
  window = [(UIView *)view window];
  [(UIWindow *)window setUserInteractionEnabled:1];
}

- (BOOL)authenticationController:(id)controller shouldContinueWithAuthenticationResults:(id)results error:(id)error forContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v19 = 0;
  objc_storeStrong(&v19, results);
  v18 = 0;
  objc_storeStrong(&v18, error);
  v17 = 0;
  objc_storeStrong(&v17, context);
  v9 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_10009ED28;
  v15 = &unk_10032B0D0;
  v16 = selfCopy;
  dispatch_async(v9, &block);

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  return 1;
}

- (void)createAndRecoverAccountWithUsername:(id)username password:(id)password rawPassword:(id)rawPassword completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, username);
  v25 = 0;
  objc_storeStrong(&v25, password);
  v24 = 0;
  objc_storeStrong(&v24, rawPassword);
  v23 = 0;
  objc_storeStrong(&v23, completion);
  v9 = [BYAppleIDAccountsManager alloc];
  v10 = +[BYManagedAppleIDBootstrap delegateBundleIDsForManagedAccount];
  v22 = [v9 initForDelegateBundleIDs:v10];

  v11 = location[0];
  v12 = v25;
  v13 = v24;
  v14 = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_10009F0B4;
  v18 = &unk_10032BB60;
  v19 = v24;
  v20 = v22;
  v21 = v23;
  [v22 loginDelegateAccountsWithUsername:v11 password:v12 rawPassword:v13 skipiTunes:0 onlyAppleIDPlugin:0 completion:&v14];
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

- (void)controllerDone
{
  delegate = [(BuddyAppleIDPasswordChangeController *)self delegate];
  [delegate flowItemDone:self nextItemClass:objc_opt_class()];
}

- (void)networkChangedFromNetworkType:(int)type toNetworkType:(int)networkType
{
  v4 = 0;
  if (type == 1)
  {
    v4 = networkType == 0;
  }

  [(BuddyAppleIDPasswordChangeController *)self setShouldRetryFlow:v4];
}

@end