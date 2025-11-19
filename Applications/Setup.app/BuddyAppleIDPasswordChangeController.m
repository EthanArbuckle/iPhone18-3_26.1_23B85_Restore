@interface BuddyAppleIDPasswordChangeController
+ (BOOL)controllerNeedsToRun;
- (BOOL)authenticationController:(id)a3 shouldContinueWithAuthenticationResults:(id)a4 error:(id)a5 forContext:(id)a6;
- (BuddyAppleIDPasswordChangeController)init;
- (void)_retryFlowIfPossibleOrFailWithError:(id)a3;
- (void)_startFlow;
- (void)_stopSpinning;
- (void)controllerDone;
- (void)createAndRecoverAccountWithUsername:(id)a3 password:(id)a4 rawPassword:(id)a5 completion:(id)a6;
- (void)networkChangedFromNetworkType:(int)a3 toNetworkType:(int)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation BuddyAppleIDPasswordChangeController

+ (BOOL)controllerNeedsToRun
{
  v9 = a1;
  v8 = a2;
  v2 = +[BYManagedAppleIDBootstrap sharedManager];
  v3 = [v2 passwordChangeFlowNeedsToRun];

  v7 = v3 & 1;
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

- (void)viewDidAppear:(BOOL)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v6.receiver = self;
  v6.super_class = BuddyAppleIDPasswordChangeController;
  [(BuddyAppleIDPasswordChangeController *)&v6 viewDidAppear:a3];
  v3 = +[BYNetworkMonitor sharedInstance];
  [(BYNetworkMonitor *)v3 addObserver:v9];

  v4 = [(BuddyAppleIDPasswordChangeController *)v9 navigationController];
  originalNavController = v9->_originalNavController;
  v9->_originalNavController = v4;

  [(BuddyAppleIDPasswordChangeController *)v9 setFlowRetryCount:0];
  [(BuddyAppleIDPasswordChangeController *)v9 setShouldRetryFlow:0];
  [(BuddyAppleIDPasswordChangeController *)v9 _startFlow];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v3 = [(BuddyAppleIDPasswordChangeController *)self navigationController];
  originalNavController = v8->_originalNavController;
  v8->_originalNavController = v3;

  v5.receiver = v8;
  v5.super_class = BuddyAppleIDPasswordChangeController;
  [(BuddyAppleIDPasswordChangeController *)&v5 viewDidDisappear:v6];
}

- (void)_retryFlowIfPossibleOrFailWithError:(id)a3
{
  v48 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0] && [(BuddyAppleIDPasswordChangeController *)v48 shouldRetryFlow]&& [(BuddyAppleIDPasswordChangeController *)v48 flowRetryCount]< 2)
  {
    [(BuddyAppleIDPasswordChangeController *)v48 setFlowRetryCount:[(BuddyAppleIDPasswordChangeController *)v48 flowRetryCount]+ 1];
    v46 = _BYLoggingFacility();
    v45 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      sub_100077E48(buf, [(BuddyAppleIDPasswordChangeController *)v48 flowRetryCount]);
      _os_log_impl(&_mh_execute_header, v46, v45, "Retrying Apple ID Password Change flow, retry count: %ld", buf, 0xCu);
    }

    objc_storeStrong(&v46, 0);
    v3 = +[BYNetworkMonitor sharedInstance];
    v39 = _NSConcreteStackBlock;
    v40 = -1073741824;
    v41 = 0;
    v42 = sub_10009DB20;
    v43 = &unk_10032B2E0;
    v44 = v48;
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
        v36 = [location[0] domain];
        v35 = 1;
        v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v36, [location[0] code]);
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
      v5 = [location[0] localizedDescription];
      v6 = [NSString localizedStringWithFormat:@"\n(internal message): %@", v5];
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

    v12 = [location[0] domain];
    v13 = 0;
    if ([v12 isEqualToString:AKAppleIDAuthenticationErrorDomain])
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
    v27 = v48;
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
  v46 = self;
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
  [v37[5] setDelegate:v46];
  v35 = +[UMUserManager sharedManager];
  v34 = [v35 currentUser];
  v33 = [v34 username];
  v32 = [v34 alternateDSID];
  v4 = +[BYManagedAppleIDBootstrap sharedManager];
  v31 = [v4 shortLivedToken];

  oslog = _BYLoggingFacility();
  v29 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_10009E5BC(v49, v33, v32, v31);
    _os_log_debug_impl(&_mh_execute_header, oslog, v29, "Username = %@, altDSID = %@, SLT = %@", v49, 0x20u);
  }

  objc_storeStrong(&oslog, 0);
  if (v33 && v32 && v31)
  {
    v5 = objc_alloc_init(AKAppleIDAuthenticationPurpleBuddyContext);
    context = v46->_context;
    v46->_context = v5;

    v7 = v46->_context;
    v8 = [(BuddyAppleIDPasswordChangeController *)v46 navigationController];
    [(AKAppleIDAuthenticationPurpleBuddyContext *)v7 setPresentingViewController:v8];

    [(AKAppleIDAuthenticationPurpleBuddyContext *)v46->_context setUsername:v33];
    [(AKAppleIDAuthenticationPurpleBuddyContext *)v46->_context _setShortLivedToken:v31];
    [(AKAppleIDAuthenticationPurpleBuddyContext *)v46->_context setAltDSID:v32];
    [(AKAppleIDAuthenticationPurpleBuddyContext *)v46->_context setShouldForceInteractiveAuth:0];
    [(AKAppleIDAuthenticationPurpleBuddyContext *)v46->_context setShouldUpdatePersistentServiceTokens:1];
    [(AKAppleIDAuthenticationPurpleBuddyContext *)v46->_context setServiceType:1];
    v28 = objc_opt_new();
    v9 = [v28 aa_primaryAppleAccount];
    LOBYTE(v7) = v9 != 0;

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
      [(AKAppleIDAuthenticationPurpleBuddyContext *)v46->_context setFirstTimeLogin:1];
    }

    v11 = v37[5];
    v12 = v46->_context;
    v19 = _NSConcreteStackBlock;
    v20 = -1073741824;
    v21 = 0;
    v22 = sub_10009E5E4;
    v23 = &unk_10032BB38;
    v24[0] = v46;
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
      sub_10009E5BC(v47, v33, v32, v31);
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Username = %@, altDSID = %@, SLT = %@", v47, 0x20u);
    }

    objc_storeStrong(&v15, 0);
    [(BuddyAppleIDPasswordChangeController *)v46 _retryFlowIfPossibleOrFailWithError:0];
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  _Block_object_dispose(&v36, 8);
  objc_storeStrong(&v42, 0);
}

- (void)_stopSpinning
{
  [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"passwordchange", a2];
  v2 = [(UINavigationController *)self->_originalNavController topViewController];
  v3 = [(UIViewController *)v2 navigationItem];
  [(UINavigationItem *)v3 setTitle:0];

  v4 = [(UINavigationController *)self->_originalNavController topViewController];
  v5 = [(UIViewController *)v4 view];
  v6 = [(UIView *)v5 window];
  [(UIWindow *)v6 setUserInteractionEnabled:1];
}

- (BOOL)authenticationController:(id)a3 shouldContinueWithAuthenticationResults:(id)a4 error:(id)a5 forContext:(id)a6
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = 0;
  objc_storeStrong(&v18, a5);
  v17 = 0;
  objc_storeStrong(&v17, a6);
  v9 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_10009ED28;
  v15 = &unk_10032B0D0;
  v16 = v21;
  dispatch_async(v9, &block);

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  return 1;
}

- (void)createAndRecoverAccountWithUsername:(id)a3 password:(id)a4 rawPassword:(id)a5 completion:(id)a6
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = 0;
  objc_storeStrong(&v25, a4);
  v24 = 0;
  objc_storeStrong(&v24, a5);
  v23 = 0;
  objc_storeStrong(&v23, a6);
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
  v2 = [(BuddyAppleIDPasswordChangeController *)self delegate];
  [v2 flowItemDone:self nextItemClass:objc_opt_class()];
}

- (void)networkChangedFromNetworkType:(int)a3 toNetworkType:(int)a4
{
  v4 = 0;
  if (a3 == 1)
  {
    v4 = a4 == 0;
  }

  [(BuddyAppleIDPasswordChangeController *)self setShouldRetryFlow:v4];
}

@end