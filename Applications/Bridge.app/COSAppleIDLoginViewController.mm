@interface COSAppleIDLoginViewController
+ (BOOL)controllerNeedsToRun;
+ (BOOL)showAlertIfLackingConnectivityAndPresentAlertWithPresentingViewController:(id)controller;
+ (id)accountTypeString;
+ (id)appleIDServiceState;
+ (void)showAlertForLoginFailureWithError:(id)error presentingViewController:(id)controller;
- (ACAccount)idmsAccount;
- (BOOL)controllerAllowsNavigatingBackTo;
- (BOOL)holdBeforeDisplaying;
- (BOOL)holdWithWaitScreen;
- (BOOL)registerActivationObserver;
- (COSAppleIDLoginViewController)init;
- (id)alternateButtonTitle;
- (id)appendUsernameToDetailText:(id)text;
- (id)localizedWaitScreenDescription;
- (id)okayButtonTitle;
- (id)suggestedButtonTitle;
- (unint64_t)authenticationMode;
- (void)_finishedActivating;
- (void)allowUserInteractions:(BOOL)interactions;
- (void)alternateButtonPressed:(id)pressed;
- (void)appleIDAuthController:(id)controller didSignInWithSuccess:(BOOL)success error:(id)error;
- (void)attachAuthStateAfterReleasingHoldToPresentController;
- (void)checkAndReleaseHold;
- (void)dealloc;
- (void)didEstablishHold;
- (void)didSendSignInRequestToWatchFromAppleIDAuthContoller:(id)contoller;
- (void)markEndOfHoldActivity;
- (void)recoverCredentials;
- (void)saveiTunesStoreAccountToPairedDeviceIfForSameAppleID;
- (void)setAwaitingActivationIfNotActivated;
- (void)setWaitingForSignInResponseFromWatch:(BOOL)watch;
- (void)signInFailedWithError:(id)error;
- (void)signInToAccountWithPassword:(id)password;
- (void)silentSignInStateChanged:(id)changed;
- (void)startNetworkRequest;
- (void)stopNetworkRequest;
- (void)suggestedButtonPressed:(id)pressed;
- (void)tappedSkipButton:(id)button;
- (void)viewDidLoad;
@end

@implementation COSAppleIDLoginViewController

+ (BOOL)controllerNeedsToRun
{
  appleIDServiceState = [objc_opt_class() appleIDServiceState];
  accountTypeString = [objc_opt_class() accountTypeString];
  if (([appleIDServiceState signedIn] & 1) == 0 && !objc_msgSend(appleIDServiceState, "signInSkipped"))
  {
    if ([appleIDServiceState silentSignInSuccessful])
    {
      v7 = pbb_accountsignin_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = accountTypeString;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Skipping %@ sign in: silent sign in was successfull", &v11, 0xCu);
      }

      [PBBridgeCAReporter recordSigninEventPair:0];
      goto LABEL_6;
    }

    v8 = +[COSAppleIDSignInModel accountForServiceType:](COSAppleIDSignInModel, "accountForServiceType:", [objc_opt_class() appleIDServiceType]);
    v5 = v8 != 0;
    if (v8)
    {
      if (![objc_opt_class() controllerNeedsToRunForCurrentService])
      {
        v5 = 0;
        goto LABEL_21;
      }

      v9 = pbb_accountsignin_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = accountTypeString;
        v10 = "Presenting %@ sign in";
LABEL_18:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, &v11, 0xCu);
      }
    }

    else
    {
      v9 = pbb_accountsignin_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = accountTypeString;
        v10 = "Skipping %@ sign in: no account";
        goto LABEL_18;
      }
    }

LABEL_21:
    goto LABEL_7;
  }

  v4 = pbb_accountsignin_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "+[COSAppleIDLoginViewController controllerNeedsToRun]";
    v13 = 2112;
    v14 = accountTypeString;
    v15 = 2112;
    v16 = appleIDServiceState;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: User already skipped/signed in. %@ ServiceState: %@", &v11, 0x20u);
  }

LABEL_6:
  v5 = 0;
LABEL_7:

  return v5;
}

- (BOOL)controllerAllowsNavigatingBackTo
{
  appleIDServiceState = [objc_opt_class() appleIDServiceState];
  signedIn = [appleIDServiceState signedIn];

  return signedIn ^ 1;
}

- (COSAppleIDLoginViewController)init
{
  v9.receiver = self;
  v9.super_class = COSAppleIDLoginViewController;
  v2 = [(COSOptinViewController *)&v9 init];
  v3 = v2;
  if (v2)
  {
    [(COSAppleIDLoginViewController *)v2 setStyle:42];
    v4 = objc_alloc_init(ACAccountStore);
    accountStore = v3->_accountStore;
    v3->_accountStore = v4;

    activeWatch = [UIApp activeWatch];
    device = v3->_device;
    v3->_device = activeWatch;
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = COSAppleIDLoginViewController;
  [(COSAppleIDLoginViewController *)&v4 dealloc];
}

- (id)suggestedButtonTitle
{
  authenticationMode = [(COSAppleIDLoginViewController *)self authenticationMode];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (authenticationMode == 2)
  {
    v5 = @"APPLEID_SIGN_IN";
  }

  else
  {
    v5 = @"APPLEID_PWD_PLACEHOLDER";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_10026E598 table:@"Localizable"];

  return v6;
}

- (id)alternateButtonTitle
{
  if ([(COSAppleIDLoginViewController *)self authenticationMode]== 2)
  {
    v2 = 0;
  }

  else
  {
    v3 = +[NSBundle mainBundle];
    v2 = [v3 localizedStringForKey:@"APPLEID_FORGOT" value:&stru_10026E598 table:@"Localizable"];
  }

  return v2;
}

- (id)okayButtonTitle
{
  if ([(COSAppleIDLoginViewController *)self allowSkipping])
  {
    v2 = +[NSBundle mainBundle];
    v3 = [v2 localizedStringForKey:@"APPLEID_SKIP" value:&stru_10026E598 table:@"Localizable"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)suggestedButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  appleIDServiceState = [objc_opt_class() appleIDServiceState];
  [appleIDServiceState setSignInSkipped:0];

  if (![COSAppleIDLoginViewController showAlertIfLackingConnectivityAndPresentAlertWithPresentingViewController:self])
  {
    if ([(COSAppleIDLoginViewController *)self authenticationMode]== 2)
    {
      v6 = pbb_accountsignin_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Attempting federated authentication for Apple ID", buf, 2u);
      }

      [(COSAppleIDLoginViewController *)self signInToAccountWithPassword:0];
    }

    else
    {
      titleString = [(COSAppleIDLoginViewController *)self titleString];
      v8 = +[NSBundle mainBundle];
      v9 = [v8 localizedStringForKey:@"APPLEID_PASSWORD_PROMPT_%@" value:&stru_10026E598 table:@"Localizable"];
      username = [(COSAppleIDLoginViewController *)self username];
      v11 = [NSString stringWithFormat:v9, username];

      v12 = [UIAlertController alertControllerWithTitle:titleString message:v11 preferredStyle:1];
      *buf = 0;
      v22 = buf;
      v23 = 0x3032000000;
      v24 = sub_100008C5C;
      v25 = sub_100009D20;
      v26 = 0;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000F87BC;
      v20[3] = &unk_10026BB68;
      v20[4] = buf;
      [v12 addTextFieldWithConfigurationHandler:v20];
      v13 = +[NSBundle mainBundle];
      v14 = [v13 localizedStringForKey:@"APPLEID_CANCEL" value:&stru_10026E598 table:@"Localizable"];
      v15 = [UIAlertAction actionWithTitle:v14 style:1 handler:0];

      [v12 addAction:v15];
      v16 = +[NSBundle mainBundle];
      v17 = [v16 localizedStringForKey:@"APPLEID_SIGN_IN" value:&stru_10026E598 table:@"Localizable"];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1000F8854;
      v19[3] = &unk_10026BB90;
      v19[4] = self;
      v19[5] = buf;
      v18 = [UIAlertAction actionWithTitle:v17 style:0 handler:v19];

      [v12 addAction:v18];
      [(COSAppleIDLoginViewController *)self presentViewController:v12 animated:1 completion:0];

      _Block_object_dispose(buf, 8);
    }
  }
}

- (void)alternateButtonPressed:(id)pressed
{
  appleIDServiceState = [objc_opt_class() appleIDServiceState];
  [appleIDServiceState setSignInSkipped:0];

  if (![COSAppleIDLoginViewController showAlertIfLackingConnectivityAndPresentAlertWithPresentingViewController:self])
  {
    appleIDServiceState2 = [objc_opt_class() appleIDServiceState];
    [appleIDServiceState2 setRecoveringCredentials:1];

    [(COSAppleIDLoginViewController *)self startNetworkRequest];

    [(COSAppleIDLoginViewController *)self recoverCredentials];
  }
}

- (void)tappedSkipButton:(id)button
{
  v4 = pbb_accountsignin_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[COSAppleIDLoginViewController tappedSkipButton:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Tapped Skip Button", &v7, 0xCu);
  }

  appleIDServiceState = [objc_opt_class() appleIDServiceState];
  [appleIDServiceState setSignInSkipped:1];

  delegate = [(COSAppleIDLoginViewController *)self delegate];
  [delegate buddyControllerDone:self];
}

- (void)signInFailedWithError:(id)error
{
  errorCopy = error;
  [objc_opt_class() showAlertForLoginFailureWithError:errorCopy presentingViewController:self];
}

- (id)appendUsernameToDetailText:(id)text
{
  textCopy = text;
  username = [(COSAppleIDLoginViewController *)self username];
  v6 = [textCopy stringByAppendingFormat:@"\n\n%@", username];

  return v6;
}

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = COSAppleIDLoginViewController;
  [(COSAppleIDLoginViewController *)&v21 viewDidLoad];
  v3 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
  activityIndicator = self->_activityIndicator;
  self->_activityIndicator = v3;

  [(UIActivityIndicatorView *)self->_activityIndicator setAlpha:0.0];
  contentView = [(COSAppleIDLoginViewController *)self contentView];
  [contentView addSubview:self->_activityIndicator];

  [(UIActivityIndicatorView *)self->_activityIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
  topAnchor = [(UIActivityIndicatorView *)self->_activityIndicator topAnchor];
  contentView2 = [(COSAppleIDLoginViewController *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v9 setActive:1];

  bottomAnchor = [(UIActivityIndicatorView *)self->_activityIndicator bottomAnchor];
  contentView3 = [(COSAppleIDLoginViewController *)self contentView];
  bottomAnchor2 = [contentView3 bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v13 setActive:1];

  centerXAnchor = [(UIActivityIndicatorView *)self->_activityIndicator centerXAnchor];
  contentView4 = [(COSAppleIDLoginViewController *)self contentView];
  centerXAnchor2 = [contentView4 centerXAnchor];
  v17 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v17 setActive:1];

  LOBYTE(contentView4) = [(COSAppleIDLoginViewController *)self allowSkipping];
  okayButton = [(COSAppleIDLoginViewController *)self okayButton];
  v19 = okayButton;
  if (contentView4)
  {
    [okayButton removeTarget:self action:0 forControlEvents:64];

    okayButton2 = [(COSAppleIDLoginViewController *)self okayButton];
    [okayButton2 addTarget:self action:"tappedSkipButton:" forControlEvents:64];
  }

  else
  {
    [okayButton setHidden:1];

    okayButton2 = [(COSAppleIDLoginViewController *)self okayButton];
    [okayButton2 setUserInteractionEnabled:0];
  }
}

- (void)startNetworkRequest
{
  [(COSAppleIDLoginViewController *)self allowUserInteractions:0];
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000F8E2C;
  v3[3] = &unk_100268430;
  objc_copyWeak(&v4, &location);
  [UIView animateWithDuration:v3 animations:0 completion:0.25];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)stopNetworkRequest
{
  [(COSAppleIDLoginViewController *)self allowUserInteractions:1];
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000F9034;
  v3[3] = &unk_100268430;
  objc_copyWeak(&v4, &location);
  [UIView animateWithDuration:v3 animations:0 completion:0.25];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)allowUserInteractions:(BOOL)interactions
{
  interactionsCopy = interactions;
  navigationController = [(COSAppleIDLoginViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];

  topItem = [navigationBar topItem];
  [topItem setHidesBackButton:interactionsCopy ^ 1 animated:1];
  leftBarButtonItem = [topItem leftBarButtonItem];
  [leftBarButtonItem setEnabled:interactionsCopy];

  suggestedChoiceButton = [(COSAppleIDLoginViewController *)self suggestedChoiceButton];
  [suggestedChoiceButton setEnabled:interactionsCopy];

  alternateChoiceButton = [(COSAppleIDLoginViewController *)self alternateChoiceButton];
  [alternateChoiceButton setEnabled:interactionsCopy];

  okayButton = [(COSAppleIDLoginViewController *)self okayButton];
  [okayButton setEnabled:interactionsCopy];
}

- (void)recoverCredentials
{
  performanceMonitorActivityName = [(COSAppleIDLoginViewController *)self performanceMonitorActivityName];
  v4 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
  [v4 beginMacroActivity:performanceMonitorActivityName beginTime:CFAbsoluteTimeGetCurrent()];

  v5 = pbb_accountsignin_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Recovering credentials of Apple ID account", v11, 2u);
  }

  kdebug_trace();
  v6 = [COSAppleIDAuthController alloc];
  accountStore = self->_accountStore;
  account = [(COSAppleIDLoginViewController *)self account];
  v9 = [(COSAppleIDAuthController *)v6 initWithAccountStore:accountStore account:account timeout:self->_device device:0.0];

  [(COSAppleIDAuthController *)v9 setDelegate:self];
  appleIDServiceState = [objc_opt_class() appleIDServiceState];
  [appleIDServiceState setAuthController:v9];

  [(COSAppleIDAuthController *)v9 startRecoveringCredentials];
}

+ (BOOL)showAlertIfLackingConnectivityAndPresentAlertWithPresentingViewController:(id)controller
{
  controllerCopy = controller;
  if (+[PSAirplaneModeSettingsDetail isEnabled](PSAirplaneModeSettingsDetail, "isEnabled") && (+[PSWiFiSettingsDetail isEnabled]& 1) == 0)
  {
    v5 = pbb_accountsignin_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10018A368(controllerCopy, v5);
    }

    v6 = +[NSBundle mainBundle];
    v7 = SFLocalizableWAPIStringKeyForKey();
    v8 = [v6 localizedStringForKey:v7 value:&stru_10026E598 table:@"Localizable"];
    v4 = 1;
    v9 = [UIAlertController alertControllerWithTitle:v8 message:0 preferredStyle:1];

    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"APPLEID_AIRPLANE_OK" value:&stru_10026E598 table:@"Localizable"];
    v12 = [UIAlertAction actionWithTitle:v11 style:1 handler:&stru_10026BBB0];
    [v9 addAction:v12];

    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"APPLEID_AIRPLANE_TURN_OFF" value:&stru_10026E598 table:@"Localizable"];
    v15 = [UIAlertAction actionWithTitle:v14 style:0 handler:&stru_10026BBD0];
    [v9 addAction:v15];

    [controllerCopy presentViewController:v9 animated:1 completion:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)showAlertForLoginFailureWithError:(id)error presentingViewController:(id)controller
{
  errorCopy = error;
  controllerCopy = controller;
  domain = [errorCopy domain];
  v8 = [domain isEqualToString:AKAppleIDAuthenticationErrorDomain];

  if (!v8 || [errorCopy code] != -7003)
  {
    domain2 = [errorCopy domain];
    if ([domain2 isEqualToString:ACErrorDomain])
    {
      code = [errorCopy code];

      if (code == 10)
      {
        v11 = +[NSBundle mainBundle];
        v12 = [v11 localizedStringForKey:@"CANT_LOGIN_GENERIC_TITLE" value:&stru_10026E598 table:@"Localizable"];
        userInfo = [UIAlertController alertControllerWithTitle:v12 message:0 preferredStyle:1];

        v14 = +[NSBundle mainBundle];
        v15 = [v14 localizedStringForKey:@"APPLEID_ERROR_UNLOCK_MESSAGE" value:&stru_10026E598 table:@"Localizable"];
        v16 = [UIAlertAction actionWithTitle:v15 style:0 handler:0];
        [userInfo addAction:v16];

        v17 = pbb_accountsignin_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10018A450(v17, v18, v19, v20, v21, v22, v23, v24);
        }

        [controllerCopy presentViewController:userInfo animated:1 completion:0];
        goto LABEL_41;
      }
    }

    else
    {
    }

    domain3 = [errorCopy domain];
    if ([domain3 isEqualToString:@"com.apple.appleaccount"])
    {
      code2 = [errorCopy code];

      if (code2 == -6)
      {
        userInfo = [errorCopy userInfo];
        v27 = [userInfo objectForKeyedSubscript:kAAErrorDetailsTitleKey];
        v28 = [userInfo objectForKeyedSubscript:kAAErrorDetailsMessageKey];
        v29 = [UIAlertController alertControllerWithTitle:v27 message:v28 preferredStyle:1];

        v30 = kAAErrorDetailsDismissButtonTitleKey;
        v31 = [userInfo objectForKeyedSubscript:kAAErrorDetailsDismissButtonTitleKey];

        if (v31)
        {
          v32 = [userInfo objectForKeyedSubscript:v30];
          v33 = [UIAlertAction actionWithTitle:v32 style:1 handler:0];
          [v29 addAction:v33];
        }

        v34 = kAAErrorDetailsActionButtonTitleKey;
        v35 = [userInfo objectForKeyedSubscript:kAAErrorDetailsActionButtonTitleKey];

        if (v35)
        {
          v36 = [userInfo objectForKeyedSubscript:v34];
          v83[0] = _NSConcreteStackBlock;
          v83[1] = 3221225472;
          v83[2] = sub_1000FA024;
          v83[3] = &unk_100268580;
          v84 = userInfo;
          v37 = [UIAlertAction actionWithTitle:v36 style:0 handler:v83];
          [v29 addAction:v37];
        }

        v38 = pbb_accountsignin_log();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          sub_10018A418(v38, v39, v40, v41, v42, v43, v44, v45);
        }

        [controllerCopy presentViewController:v29 animated:1 completion:0];
        goto LABEL_40;
      }
    }

    else
    {
    }

    userInfo2 = [errorCopy userInfo];
    v47 = AMSAuthenticateErrorDialogKey;
    v48 = [userInfo2 objectForKeyedSubscript:AMSAuthenticateErrorDialogKey];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      userInfo = v48;
    }

    else
    {
      userInfo = 0;
    }

    if (userInfo)
    {
      v82 = 0;
      v49 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:userInfo error:&v82];
      v29 = v82;
    }

    else
    {
      v50 = pbb_accountsignin_log();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "error.userInfo[AMSAuthenticateErrorDialogKey] is null", buf, 2u);
      }

      v49 = 0;
      v29 = 0;
    }

    v51 = pbb_accountsignin_log();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v86 = v49;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "AMSDialogRequest returned %@ from error.userInfo[AMSAuthenticateErrorDialogKey]", buf, 0xCu);
    }

    if (v49)
    {
      goto LABEL_36;
    }

    userInfo3 = [errorCopy userInfo];
    v53 = [userInfo3 objectForKeyedSubscript:NSUnderlyingErrorKey];

    userInfo4 = [v53 userInfo];
    v55 = [userInfo4 objectForKeyedSubscript:v47];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = v55;
    }

    else
    {
      v49 = 0;
    }

    v56 = pbb_accountsignin_log();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v86 = v49;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "AMSDialogRequest returned %@ from error.userInfo[NSUnderlyingErrorKey].[AMSAuthenticateErrorDialogKey]", buf, 0xCu);
    }

    if (v49)
    {
LABEL_36:
      v57 = pbb_accountsignin_log();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Presenting AMS dialog! 🍾", buf, 2u);
      }

      v58 = [[AMSUIAlertDialogTask alloc] initWithRequest:v49 presentingViewController:controllerCopy];
      present = [v58 present];
      [present addFinishBlock:&stru_10026BC10];
LABEL_39:

LABEL_40:
LABEL_41:

      goto LABEL_42;
    }

    v60 = pbb_accountsignin_log();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "NOT presenting AMS dialog... just doing the same old thing we've always done", buf, 2u);
    }

    userInfo5 = [errorCopy userInfo];
    v62 = [userInfo5 objectForKey:kAAProtocolErrorResponseDictionaryKey];

    v81 = v62;
    if (v62)
    {
      v63 = [v62 objectForKey:kAAProtocolErrorMessageKey];
      v58 = [v62 objectForKey:kAAProtocolErrorTitleKey];
      present = [v62 objectForKey:kAAProtocolErrorCancelButtonTitleKey];
      if (v63)
      {
        v49 = v63;
        if ([v63 length])
        {
LABEL_55:
          if (!v58 || ![v58 length])
          {
            v67 = +[NSBundle mainBundle];
            v68 = [v67 localizedStringForKey:@"CANT_LOGIN_GENERIC_TITLE" value:&stru_10026E598 table:@"Localizable"];

            v58 = v68;
          }

          if (!present || ![present length])
          {
            v69 = +[NSBundle mainBundle];
            v70 = [v69 localizedStringForKey:@"OK" value:&stru_10026E598 table:@"Localizable"];

            present = v70;
          }

          v71 = [UIAlertController alertControllerWithTitle:v58 message:v49 preferredStyle:1];
          v72 = [UIAlertAction actionWithTitle:present style:1 handler:0];
          [v71 addAction:v72];

          v73 = pbb_accountsignin_log();
          if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
          {
            sub_10018A3E0(v73, v74, v75, v76, v77, v78, v79, v80);
          }

          [controllerCopy presentViewController:v71 animated:1 completion:0];
          goto LABEL_39;
        }
      }
    }

    else
    {
      v63 = 0;
      v58 = 0;
      present = 0;
    }

    if (sub_100009A74())
    {
      userInfo6 = [errorCopy userInfo];
      v65 = [userInfo6 objectForKeyedSubscript:NSLocalizedDescriptionKey];
      v49 = [NSString stringWithFormat:@"[Internal] error: %@", v65, v81];
    }

    else
    {
      v66 = +[NSBundle mainBundle];
      v49 = [v66 localizedStringForKey:@"CANT_LOGIN_UNKNOWN_ERROR" value:&stru_10026E598 table:@"Localizable"];

      userInfo6 = pbb_accountsignin_log();
      if (os_log_type_enabled(userInfo6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v86 = errorCopy;
        _os_log_impl(&_mh_execute_header, userInfo6, OS_LOG_TYPE_DEFAULT, "Using generic login error message for error %@", buf, 0xCu);
      }
    }

    goto LABEL_55;
  }

LABEL_42:
}

- (BOOL)registerActivationObserver
{
  v3 = +[UIApplication sharedApplication];
  isActivated = [v3 isActivated];

  if ((isActivated & 1) == 0)
  {
    if (PBLogPerformanceMetrics())
    {
      v5 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      activationHoldActivityIdentifier = [(COSAppleIDLoginViewController *)self activationHoldActivityIdentifier];
      [v5 beginMacroActivity:activationHoldActivityIdentifier beginTime:CFAbsoluteTimeGetCurrent()];
    }

    v7 = pbb_accountsignin_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Holding (%@) because gizmo is not activated", &v12, 0xCu);
    }

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:self selector:"_finishedActivating" name:PBBridgeGizmoDidFinishActivatingNotification object:0];
  }

  return isActivated ^ 1;
}

- (void)setAwaitingActivationIfNotActivated
{
  v2 = +[UIApplication sharedApplication];
  isActivated = [v2 isActivated];

  if ((isActivated & 1) == 0)
  {
    setupController = [UIApp setupController];
    activationManager = [setupController activationManager];
    [activationManager setAwaitingActivation:1];
  }
}

- (void)_finishedActivating
{
  if (PBLogPerformanceMetrics())
  {
    activationHoldActivityIdentifier = [(COSAppleIDLoginViewController *)self activationHoldActivityIdentifier];
    v4 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    [v4 endMacroActivity:activationHoldActivityIdentifier beginTime:CFAbsoluteTimeGetCurrent()];
    v6 = v5;

    [PBBridgeCAReporter pushTimingForTypeNamed:activationHoldActivityIdentifier withValue:v6];
  }

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:self name:PBBridgeGizmoDidFinishActivatingNotification object:0];

  [(COSAppleIDLoginViewController *)self finishedActivating];
}

+ (id)appleIDServiceState
{
  setupController = [UIApp setupController];
  appleIDSignInModel = [setupController appleIDSignInModel];
  v4 = [appleIDSignInModel stateForServiceType:{objc_msgSend(objc_opt_class(), "appleIDServiceType")}];

  return v4;
}

- (void)signInToAccountWithPassword:(id)password
{
  passwordCopy = password;
  v5 = pbb_accountsignin_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    account = [(COSAppleIDLoginViewController *)self account];
    v19 = 138412546;
    v20 = account;
    v21 = 2112;
    v22 = objc_opt_class();
    v7 = v22;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Signing in to account: %@ (%@)", &v19, 0x16u);
  }

  [(COSAppleIDLoginViewController *)self startNetworkRequest];
  performanceMonitorActivityName = [(COSAppleIDLoginViewController *)self performanceMonitorActivityName];
  v9 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
  [v9 beginMacroActivity:performanceMonitorActivityName beginTime:CFAbsoluteTimeGetCurrent()];

  v10 = pbb_accountsignin_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    appleIDServiceType = [objc_opt_class() appleIDServiceType];
    v12 = sub_1000EAA90(appleIDServiceType);
    v19 = 138412290;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Signing in %@ account", &v19, 0xCu);
  }

  kdebug_trace();
  v13 = [COSAppleIDAuthController alloc];
  accountStore = self->_accountStore;
  account2 = [(COSAppleIDLoginViewController *)self account];
  v16 = [(COSAppleIDAuthController *)v13 initWithAccountStore:accountStore account:account2 timeout:self->_device device:0.0];

  [(COSAppleIDAuthController *)v16 setDelegate:self];
  appleIDServiceState = [objc_opt_class() appleIDServiceState];
  [appleIDServiceState setAuthController:v16];

  accountTypeString = [objc_opt_class() accountTypeString];
  [(COSAppleIDAuthController *)v16 setSignInAccountType:accountTypeString];

  [(COSAppleIDAuthController *)v16 startSigningInWithPassword:passwordCopy];
  if (passwordCopy)
  {
    [(COSAppleIDLoginViewController *)self _signInToAccountWithPassword:passwordCopy];
  }
}

+ (id)accountTypeString
{
  appleIDServiceType = [objc_opt_class() appleIDServiceType];

  return sub_1000EAA90(appleIDServiceType);
}

- (void)saveiTunesStoreAccountToPairedDeviceIfForSameAppleID
{
  device = [(COSAppleIDLoginViewController *)self device];
  v4 = [[NSUUID alloc] initWithUUIDString:@"1F1097A5-5A0B-4795-9FBE-B206DB49FA1D"];
  v5 = [device supportsCapability:v4];

  if (v5)
  {
    v10 = +[COSiTunesStoreAuthController iTunesStoreAccountInAccountStore];
    account = [(COSAppleIDLoginViewController *)self account];
    v7 = [COSAppleIDUtilities checkIfAccount:v10 isForSameAppleIDAsAccount:account];

    if (v7)
    {
      delegate = [(COSAppleIDLoginViewController *)self delegate];
      accountStore = [(COSAppleIDLoginViewController *)self accountStore];
      [delegate saveCombinedPasswordBasediTunesStoreAccount:v10 fromAccountStore:accountStore];
    }
  }
}

- (void)appleIDAuthController:(id)controller didSignInWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  controllerCopy = controller;
  errorCopy = error;
  appleIDServiceState = [objc_opt_class() appleIDServiceState];
  authController = [appleIDServiceState authController];
  [authController setDelegate:0];

  [appleIDServiceState setAuthController:0];
  [appleIDServiceState setRecoveringCredentials:0];
  kdebug_trace();
  performanceMonitorActivityName = [(COSAppleIDLoginViewController *)self performanceMonitorActivityName];
  performanceMonitorCATiming = [(COSAppleIDLoginViewController *)self performanceMonitorCATiming];
  v12 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
  [v12 endMacroActivity:performanceMonitorActivityName beginTime:CFAbsoluteTimeGetCurrent()];
  v14 = v13;

  [PBBridgeCAReporter pushTimingType:performanceMonitorCATiming withValue:v14];
  accountTypeString = [objc_opt_class() accountTypeString];
  setupController = [UIApp setupController];
  pairingReportManager = [setupController pairingReportManager];

  v18 = BRSignInPairingTimeEventForAccountType();
  v19 = BRSignInPairingTimeEventForAccountType();
  v20 = [NSNumber numberWithBool:successCopy];
  [pairingReportManager addPairingTimeEventToPairingReportPlist:v18 withValue:v20 withError:0];

  [pairingReportManager checkInWithClosingPairingTimeEvent:v19];
  if (successCopy)
  {
    v21 = errorCopy;
    objc_initWeak(&location, self);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000FAD78;
    v26[3] = &unk_100268458;
    objc_copyWeak(&v27, &location);
    v26[4] = self;
    [(COSAppleIDLoginViewController *)self loggedInSuccessfullyWithBuddyControllerDoneBlock:v26];
    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  else
  {
    v22 = BRSignInFailureErrorForAccountType();
    v21 = errorCopy;
    v23 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
    [pairingReportManager addPairingTimeEventToPairingReportPlist:v22 withValue:v23 withError:0];

    [(COSAppleIDLoginViewController *)self stopNetworkRequest];
    [(COSAppleIDLoginViewController *)self signInFailedWithError:errorCopy];
  }
}

- (void)didSendSignInRequestToWatchFromAppleIDAuthContoller:(id)contoller
{
  setupController = [UIApp setupController];
  if (([setupController nextControllerToPresentAfterBlockedOnSignInStep] & 1) == 0)
  {
    appleIDServiceState = [objc_opt_class() appleIDServiceState];
    authController = [appleIDServiceState authController];
    [authController setDelegate:0];

    v7 = pbb_accountsignin_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Waiting for sign-in response from watch and segueing to present non-Apple ID buddy screens", v9, 2u);
    }

    delegate = [(COSAppleIDLoginViewController *)self delegate];
    [delegate buddyControllerDoneForSignIn:self];
  }
}

- (ACAccount)idmsAccount
{
  idmsAccount = self->_idmsAccount;
  if (!idmsAccount)
  {
    accountStore = [(COSAppleIDLoginViewController *)self accountStore];
    account = [(COSAppleIDLoginViewController *)self account];
    v6 = [COSAppleIDAuthController lookupIDMSAccountWithAccountStore:accountStore matchingAccount:account];
    v7 = self->_idmsAccount;
    self->_idmsAccount = v6;

    idmsAccount = self->_idmsAccount;
  }

  return idmsAccount;
}

- (unint64_t)authenticationMode
{
  idmsAccount = [(COSAppleIDLoginViewController *)self idmsAccount];
  v3 = [idmsAccount accountPropertyForKey:AKAuthMode];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setWaitingForSignInResponseFromWatch:(BOOL)watch
{
  watchCopy = watch;
  v5 = pbb_accountsignin_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[COSAppleIDLoginViewController setWaitingForSignInResponseFromWatch:]";
    v10 = 1024;
    v11 = watchCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: waiting: %d", &v8, 0x12u);
  }

  if (watchCopy)
  {
    [(COSAppleIDLoginViewController *)self loadViewIfNeeded];
    [(COSAppleIDLoginViewController *)self startNetworkRequest];
  }

  else
  {
    [(COSAppleIDLoginViewController *)self stopNetworkRequest];
    appleIDServiceState = [objc_opt_class() appleIDServiceState];
    authController = [appleIDServiceState authController];
    [authController resetWatchSignInResponse];
  }
}

- (void)attachAuthStateAfterReleasingHoldToPresentController
{
  v3 = pbb_accountsignin_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[COSAppleIDLoginViewController attachAuthStateAfterReleasingHoldToPresentController]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  appleIDServiceState = [objc_opt_class() appleIDServiceState];
  authController = [appleIDServiceState authController];

  if (!authController)
  {
    goto LABEL_11;
  }

  [authController setDelegate:self];
  if (([authController waitingForWatchSignInAfterInteractiveAuth] & 1) == 0)
  {
    if ([authController watchSignInResult])
    {
      if ([authController watchSignInResult] == 2)
      {
        objc_initWeak(buf, self);
        v8 = _NSConcreteStackBlock;
        v9 = 3221225472;
        v10 = sub_1000FB2F4;
        v11 = &unk_100268458;
        objc_copyWeak(&v13, buf);
        selfCopy = self;
        [(COSAppleIDLoginViewController *)self loggedInSuccessfullyWithBuddyControllerDoneBlock:&v8];
        objc_destroyWeak(&v13);
        objc_destroyWeak(buf);
      }

      else if ([authController watchSignInResult] == 1)
      {
        watchSignInErrorResult = [authController watchSignInErrorResult];
        [(COSAppleIDLoginViewController *)self signInFailedWithError:watchSignInErrorResult];
      }
    }

LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  v6 = 1;
LABEL_12:
  [(COSAppleIDLoginViewController *)self setWaitingForSignInResponseFromWatch:v6, v8, v9, v10, v11];
}

- (BOOL)holdBeforeDisplaying
{
  if (PBLogPerformanceMetrics())
  {
    v3 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    holdActivityIdentifier = [(COSAppleIDLoginViewController *)self holdActivityIdentifier];
    [v3 beginMacroActivity:holdActivityIdentifier beginTime:CFAbsoluteTimeGetCurrent()];
  }

  appleIDServiceState = [objc_opt_class() appleIDServiceState];
  silentSignInSuccessful = [appleIDServiceState silentSignInSuccessful];

  if ((silentSignInSuccessful & 1) == 0)
  {
    [(COSAppleIDLoginViewController *)self registerActivationObserver];
    appleIDServiceState2 = [objc_opt_class() appleIDServiceState];
    waitingForSilentSigninToComplete = [appleIDServiceState2 waitingForSilentSigninToComplete];

    if (waitingForSilentSigninToComplete)
    {
      v9 = pbb_accountsignin_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v14 = 138412290;
        v15 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Holding (%@) because silent sign-in is ongoing", &v14, 0xCu);
      }

      v12 = +[NSNotificationCenter defaultCenter];
      [v12 addObserver:self selector:"silentSignInStateChanged:" name:@"COSBuddyAppleIDSilentSignInChangeNotification" object:0];
    }
  }

  return 1;
}

- (void)didEstablishHold
{
  [(COSAppleIDLoginViewController *)self setAwaitingActivationIfNotActivated];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FB598;
  block[3] = &unk_1002682F0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)silentSignInStateChanged:(id)changed
{
  appleIDServiceState = [objc_opt_class() appleIDServiceState];
  waitingForSilentSigninToComplete = [appleIDServiceState waitingForSilentSigninToComplete];

  if ((waitingForSilentSigninToComplete & 1) == 0)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:self name:@"COSBuddyAppleIDSilentSignInChangeNotification" object:0];

    [(COSAppleIDLoginViewController *)self checkAndReleaseHold];
  }
}

- (void)checkAndReleaseHold
{
  delegate = [(COSAppleIDLoginViewController *)self delegate];
  v4 = [delegate buddyControllerIsBeingHeldOff:self];

  if (!v4)
  {
    return;
  }

  appleIDServiceState = [objc_opt_class() appleIDServiceState];
  waitingForSilentSigninToComplete = [appleIDServiceState waitingForSilentSigninToComplete];

  appleIDServiceState2 = [objc_opt_class() appleIDServiceState];
  silentSignInSuccessful = [appleIDServiceState2 silentSignInSuccessful];

  appleIDServiceState3 = [objc_opt_class() appleIDServiceState];
  signedIn = [appleIDServiceState3 signedIn];

  appleIDServiceState4 = [objc_opt_class() appleIDServiceState];
  signInSkipped = [appleIDServiceState4 signInSkipped];

  completedCustomHoldActivities = [(COSAppleIDLoginViewController *)self completedCustomHoldActivities];
  v14 = +[UIApplication sharedApplication];
  isActivated = [v14 isActivated];

  v16 = pbb_accountsignin_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v26 = 138413826;
    v27 = v18;
    v28 = 1024;
    v29 = waitingForSilentSigninToComplete;
    v30 = 1024;
    v31 = silentSignInSuccessful;
    v32 = 1024;
    v33 = isActivated;
    v34 = 1024;
    v35 = completedCustomHoldActivities;
    v36 = 1024;
    v37 = signedIn;
    v38 = 1024;
    v39 = signInSkipped;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Checking if can release hold (%@); waitingForSilentSignInToComplete: (%{BOOL}d); silentSignInWasSuccessful: (%{BOOL}d); activated: (%{BOOL}d); completedHoldActivitiesForAccount: (%{BOOL}d) signedIn: (%{BOOL}d) signInSkipped: (%{BOOL}d)", &v26, 0x30u);
  }

  if (silentSignInSuccessful & 1 | ((waitingForSilentSigninToComplete & 1) == 0))
  {
    goto LABEL_7;
  }

  setupController = [UIApp setupController];
  if ([setupController nextControllerToPresentAfterBlockedOnSignInStep])
  {

LABEL_7:
    if (!(waitingForSilentSigninToComplete & 1 | ((isActivated & 1) == 0)))
    {
      if ((silentSignInSuccessful | signedIn | signInSkipped))
      {
        [(COSAppleIDLoginViewController *)self markEndOfHoldActivity];
        delegate2 = [(COSAppleIDLoginViewController *)self delegate];
        [delegate2 buddyControllerReleaseHoldAndSkip:self];
      }

      else if (completedCustomHoldActivities)
      {
        [(COSAppleIDLoginViewController *)self markEndOfHoldActivity];
        delegate3 = [(COSAppleIDLoginViewController *)self delegate];
        [delegate3 buddyControllerReleaseHold:self];

        [(COSAppleIDLoginViewController *)self attachAuthStateAfterReleasingHoldToPresentController];
      }
    }

    return;
  }

  appleIDServiceState5 = [objc_opt_class() appleIDServiceState];
  authController = [appleIDServiceState5 authController];
  [authController setDelegate:0];

  v23 = pbb_accountsignin_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v26) = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Waiting for silent sign-in and segueing to present non-Apple ID buddy screens", &v26, 2u);
  }

  [(COSAppleIDLoginViewController *)self markEndOfHoldActivity];
  delegate4 = [(COSAppleIDLoginViewController *)self delegate];
  [delegate4 buddyControllerDoneForSignIn:self];
}

- (void)markEndOfHoldActivity
{
  if (PBLogPerformanceMetrics())
  {
    holdActivityIdentifier = [(COSAppleIDLoginViewController *)self holdActivityIdentifier];
    v3 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    [v3 endMacroActivity:holdActivityIdentifier beginTime:CFAbsoluteTimeGetCurrent()];
    v5 = v4;

    [PBBridgeCAReporter pushTimingForTypeNamed:holdActivityIdentifier withValue:v5];
  }
}

- (BOOL)holdWithWaitScreen
{
  setupController = [UIApp setupController];
  activationManager = [setupController activationManager];

  if ([activationManager awaitingActivation])
  {
    v4 = [activationManager didPresentFlow] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (id)localizedWaitScreenDescription
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"APPLEID_ACCOUNT_HOLD_DESCRIPTION" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

@end