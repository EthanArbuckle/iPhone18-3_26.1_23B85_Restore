@interface COSAppleIDLoginViewController
+ (BOOL)controllerNeedsToRun;
+ (BOOL)showAlertIfLackingConnectivityAndPresentAlertWithPresentingViewController:(id)a3;
+ (id)accountTypeString;
+ (id)appleIDServiceState;
+ (void)showAlertForLoginFailureWithError:(id)a3 presentingViewController:(id)a4;
- (ACAccount)idmsAccount;
- (BOOL)controllerAllowsNavigatingBackTo;
- (BOOL)holdBeforeDisplaying;
- (BOOL)holdWithWaitScreen;
- (BOOL)registerActivationObserver;
- (COSAppleIDLoginViewController)init;
- (id)alternateButtonTitle;
- (id)appendUsernameToDetailText:(id)a3;
- (id)localizedWaitScreenDescription;
- (id)okayButtonTitle;
- (id)suggestedButtonTitle;
- (unint64_t)authenticationMode;
- (void)_finishedActivating;
- (void)allowUserInteractions:(BOOL)a3;
- (void)alternateButtonPressed:(id)a3;
- (void)appleIDAuthController:(id)a3 didSignInWithSuccess:(BOOL)a4 error:(id)a5;
- (void)attachAuthStateAfterReleasingHoldToPresentController;
- (void)checkAndReleaseHold;
- (void)dealloc;
- (void)didEstablishHold;
- (void)didSendSignInRequestToWatchFromAppleIDAuthContoller:(id)a3;
- (void)markEndOfHoldActivity;
- (void)recoverCredentials;
- (void)saveiTunesStoreAccountToPairedDeviceIfForSameAppleID;
- (void)setAwaitingActivationIfNotActivated;
- (void)setWaitingForSignInResponseFromWatch:(BOOL)a3;
- (void)signInFailedWithError:(id)a3;
- (void)signInToAccountWithPassword:(id)a3;
- (void)silentSignInStateChanged:(id)a3;
- (void)startNetworkRequest;
- (void)stopNetworkRequest;
- (void)suggestedButtonPressed:(id)a3;
- (void)tappedSkipButton:(id)a3;
- (void)viewDidLoad;
@end

@implementation COSAppleIDLoginViewController

+ (BOOL)controllerNeedsToRun
{
  v2 = [objc_opt_class() appleIDServiceState];
  v3 = [objc_opt_class() accountTypeString];
  if (([v2 signedIn] & 1) == 0 && !objc_msgSend(v2, "signInSkipped"))
  {
    if ([v2 silentSignInSuccessful])
    {
      v7 = pbb_accountsignin_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v3;
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
        v12 = v3;
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
        v12 = v3;
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
    v14 = v3;
    v15 = 2112;
    v16 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: User already skipped/signed in. %@ ServiceState: %@", &v11, 0x20u);
  }

LABEL_6:
  v5 = 0;
LABEL_7:

  return v5;
}

- (BOOL)controllerAllowsNavigatingBackTo
{
  v2 = [objc_opt_class() appleIDServiceState];
  v3 = [v2 signedIn];

  return v3 ^ 1;
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

    v6 = [UIApp activeWatch];
    device = v3->_device;
    v3->_device = v6;
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
  v2 = [(COSAppleIDLoginViewController *)self authenticationMode];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (v2 == 2)
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

- (void)suggestedButtonPressed:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() appleIDServiceState];
  [v5 setSignInSkipped:0];

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
      v7 = [(COSAppleIDLoginViewController *)self titleString];
      v8 = +[NSBundle mainBundle];
      v9 = [v8 localizedStringForKey:@"APPLEID_PASSWORD_PROMPT_%@" value:&stru_10026E598 table:@"Localizable"];
      v10 = [(COSAppleIDLoginViewController *)self username];
      v11 = [NSString stringWithFormat:v9, v10];

      v12 = [UIAlertController alertControllerWithTitle:v7 message:v11 preferredStyle:1];
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

- (void)alternateButtonPressed:(id)a3
{
  v4 = [objc_opt_class() appleIDServiceState];
  [v4 setSignInSkipped:0];

  if (![COSAppleIDLoginViewController showAlertIfLackingConnectivityAndPresentAlertWithPresentingViewController:self])
  {
    v5 = [objc_opt_class() appleIDServiceState];
    [v5 setRecoveringCredentials:1];

    [(COSAppleIDLoginViewController *)self startNetworkRequest];

    [(COSAppleIDLoginViewController *)self recoverCredentials];
  }
}

- (void)tappedSkipButton:(id)a3
{
  v4 = pbb_accountsignin_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[COSAppleIDLoginViewController tappedSkipButton:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Tapped Skip Button", &v7, 0xCu);
  }

  v5 = [objc_opt_class() appleIDServiceState];
  [v5 setSignInSkipped:1];

  v6 = [(COSAppleIDLoginViewController *)self delegate];
  [v6 buddyControllerDone:self];
}

- (void)signInFailedWithError:(id)a3
{
  v4 = a3;
  [objc_opt_class() showAlertForLoginFailureWithError:v4 presentingViewController:self];
}

- (id)appendUsernameToDetailText:(id)a3
{
  v4 = a3;
  v5 = [(COSAppleIDLoginViewController *)self username];
  v6 = [v4 stringByAppendingFormat:@"\n\n%@", v5];

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
  v5 = [(COSAppleIDLoginViewController *)self contentView];
  [v5 addSubview:self->_activityIndicator];

  [(UIActivityIndicatorView *)self->_activityIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [(UIActivityIndicatorView *)self->_activityIndicator topAnchor];
  v7 = [(COSAppleIDLoginViewController *)self contentView];
  v8 = [v7 topAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];
  [v9 setActive:1];

  v10 = [(UIActivityIndicatorView *)self->_activityIndicator bottomAnchor];
  v11 = [(COSAppleIDLoginViewController *)self contentView];
  v12 = [v11 bottomAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  [v13 setActive:1];

  v14 = [(UIActivityIndicatorView *)self->_activityIndicator centerXAnchor];
  v15 = [(COSAppleIDLoginViewController *)self contentView];
  v16 = [v15 centerXAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  [v17 setActive:1];

  LOBYTE(v15) = [(COSAppleIDLoginViewController *)self allowSkipping];
  v18 = [(COSAppleIDLoginViewController *)self okayButton];
  v19 = v18;
  if (v15)
  {
    [v18 removeTarget:self action:0 forControlEvents:64];

    v20 = [(COSAppleIDLoginViewController *)self okayButton];
    [v20 addTarget:self action:"tappedSkipButton:" forControlEvents:64];
  }

  else
  {
    [v18 setHidden:1];

    v20 = [(COSAppleIDLoginViewController *)self okayButton];
    [v20 setUserInteractionEnabled:0];
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

- (void)allowUserInteractions:(BOOL)a3
{
  v3 = a3;
  v5 = [(COSAppleIDLoginViewController *)self navigationController];
  v11 = [v5 navigationBar];

  v6 = [v11 topItem];
  [v6 setHidesBackButton:v3 ^ 1 animated:1];
  v7 = [v6 leftBarButtonItem];
  [v7 setEnabled:v3];

  v8 = [(COSAppleIDLoginViewController *)self suggestedChoiceButton];
  [v8 setEnabled:v3];

  v9 = [(COSAppleIDLoginViewController *)self alternateChoiceButton];
  [v9 setEnabled:v3];

  v10 = [(COSAppleIDLoginViewController *)self okayButton];
  [v10 setEnabled:v3];
}

- (void)recoverCredentials
{
  v3 = [(COSAppleIDLoginViewController *)self performanceMonitorActivityName];
  v4 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
  [v4 beginMacroActivity:v3 beginTime:CFAbsoluteTimeGetCurrent()];

  v5 = pbb_accountsignin_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Recovering credentials of Apple ID account", v11, 2u);
  }

  kdebug_trace();
  v6 = [COSAppleIDAuthController alloc];
  accountStore = self->_accountStore;
  v8 = [(COSAppleIDLoginViewController *)self account];
  v9 = [(COSAppleIDAuthController *)v6 initWithAccountStore:accountStore account:v8 timeout:self->_device device:0.0];

  [(COSAppleIDAuthController *)v9 setDelegate:self];
  v10 = [objc_opt_class() appleIDServiceState];
  [v10 setAuthController:v9];

  [(COSAppleIDAuthController *)v9 startRecoveringCredentials];
}

+ (BOOL)showAlertIfLackingConnectivityAndPresentAlertWithPresentingViewController:(id)a3
{
  v3 = a3;
  if (+[PSAirplaneModeSettingsDetail isEnabled](PSAirplaneModeSettingsDetail, "isEnabled") && (+[PSWiFiSettingsDetail isEnabled]& 1) == 0)
  {
    v5 = pbb_accountsignin_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10018A368(v3, v5);
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

    [v3 presentViewController:v9 animated:1 completion:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)showAlertForLoginFailureWithError:(id)a3 presentingViewController:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 domain];
  v8 = [v7 isEqualToString:AKAppleIDAuthenticationErrorDomain];

  if (!v8 || [v5 code] != -7003)
  {
    v9 = [v5 domain];
    if ([v9 isEqualToString:ACErrorDomain])
    {
      v10 = [v5 code];

      if (v10 == 10)
      {
        v11 = +[NSBundle mainBundle];
        v12 = [v11 localizedStringForKey:@"CANT_LOGIN_GENERIC_TITLE" value:&stru_10026E598 table:@"Localizable"];
        v13 = [UIAlertController alertControllerWithTitle:v12 message:0 preferredStyle:1];

        v14 = +[NSBundle mainBundle];
        v15 = [v14 localizedStringForKey:@"APPLEID_ERROR_UNLOCK_MESSAGE" value:&stru_10026E598 table:@"Localizable"];
        v16 = [UIAlertAction actionWithTitle:v15 style:0 handler:0];
        [v13 addAction:v16];

        v17 = pbb_accountsignin_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10018A450(v17, v18, v19, v20, v21, v22, v23, v24);
        }

        [v6 presentViewController:v13 animated:1 completion:0];
        goto LABEL_41;
      }
    }

    else
    {
    }

    v25 = [v5 domain];
    if ([v25 isEqualToString:@"com.apple.appleaccount"])
    {
      v26 = [v5 code];

      if (v26 == -6)
      {
        v13 = [v5 userInfo];
        v27 = [v13 objectForKeyedSubscript:kAAErrorDetailsTitleKey];
        v28 = [v13 objectForKeyedSubscript:kAAErrorDetailsMessageKey];
        v29 = [UIAlertController alertControllerWithTitle:v27 message:v28 preferredStyle:1];

        v30 = kAAErrorDetailsDismissButtonTitleKey;
        v31 = [v13 objectForKeyedSubscript:kAAErrorDetailsDismissButtonTitleKey];

        if (v31)
        {
          v32 = [v13 objectForKeyedSubscript:v30];
          v33 = [UIAlertAction actionWithTitle:v32 style:1 handler:0];
          [v29 addAction:v33];
        }

        v34 = kAAErrorDetailsActionButtonTitleKey;
        v35 = [v13 objectForKeyedSubscript:kAAErrorDetailsActionButtonTitleKey];

        if (v35)
        {
          v36 = [v13 objectForKeyedSubscript:v34];
          v83[0] = _NSConcreteStackBlock;
          v83[1] = 3221225472;
          v83[2] = sub_1000FA024;
          v83[3] = &unk_100268580;
          v84 = v13;
          v37 = [UIAlertAction actionWithTitle:v36 style:0 handler:v83];
          [v29 addAction:v37];
        }

        v38 = pbb_accountsignin_log();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          sub_10018A418(v38, v39, v40, v41, v42, v43, v44, v45);
        }

        [v6 presentViewController:v29 animated:1 completion:0];
        goto LABEL_40;
      }
    }

    else
    {
    }

    v46 = [v5 userInfo];
    v47 = AMSAuthenticateErrorDialogKey;
    v48 = [v46 objectForKeyedSubscript:AMSAuthenticateErrorDialogKey];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v48;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      v82 = 0;
      v49 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v13 error:&v82];
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

    v52 = [v5 userInfo];
    v53 = [v52 objectForKeyedSubscript:NSUnderlyingErrorKey];

    v54 = [v53 userInfo];
    v55 = [v54 objectForKeyedSubscript:v47];

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

      v58 = [[AMSUIAlertDialogTask alloc] initWithRequest:v49 presentingViewController:v6];
      v59 = [v58 present];
      [v59 addFinishBlock:&stru_10026BC10];
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

    v61 = [v5 userInfo];
    v62 = [v61 objectForKey:kAAProtocolErrorResponseDictionaryKey];

    v81 = v62;
    if (v62)
    {
      v63 = [v62 objectForKey:kAAProtocolErrorMessageKey];
      v58 = [v62 objectForKey:kAAProtocolErrorTitleKey];
      v59 = [v62 objectForKey:kAAProtocolErrorCancelButtonTitleKey];
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

          if (!v59 || ![v59 length])
          {
            v69 = +[NSBundle mainBundle];
            v70 = [v69 localizedStringForKey:@"OK" value:&stru_10026E598 table:@"Localizable"];

            v59 = v70;
          }

          v71 = [UIAlertController alertControllerWithTitle:v58 message:v49 preferredStyle:1];
          v72 = [UIAlertAction actionWithTitle:v59 style:1 handler:0];
          [v71 addAction:v72];

          v73 = pbb_accountsignin_log();
          if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
          {
            sub_10018A3E0(v73, v74, v75, v76, v77, v78, v79, v80);
          }

          [v6 presentViewController:v71 animated:1 completion:0];
          goto LABEL_39;
        }
      }
    }

    else
    {
      v63 = 0;
      v58 = 0;
      v59 = 0;
    }

    if (sub_100009A74())
    {
      v64 = [v5 userInfo];
      v65 = [v64 objectForKeyedSubscript:NSLocalizedDescriptionKey];
      v49 = [NSString stringWithFormat:@"[Internal] error: %@", v65, v81];
    }

    else
    {
      v66 = +[NSBundle mainBundle];
      v49 = [v66 localizedStringForKey:@"CANT_LOGIN_UNKNOWN_ERROR" value:&stru_10026E598 table:@"Localizable"];

      v64 = pbb_accountsignin_log();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v86 = v5;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Using generic login error message for error %@", buf, 0xCu);
      }
    }

    goto LABEL_55;
  }

LABEL_42:
}

- (BOOL)registerActivationObserver
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 isActivated];

  if ((v4 & 1) == 0)
  {
    if (PBLogPerformanceMetrics())
    {
      v5 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      v6 = [(COSAppleIDLoginViewController *)self activationHoldActivityIdentifier];
      [v5 beginMacroActivity:v6 beginTime:CFAbsoluteTimeGetCurrent()];
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

  return v4 ^ 1;
}

- (void)setAwaitingActivationIfNotActivated
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 isActivated];

  if ((v3 & 1) == 0)
  {
    v5 = [UIApp setupController];
    v4 = [v5 activationManager];
    [v4 setAwaitingActivation:1];
  }
}

- (void)_finishedActivating
{
  if (PBLogPerformanceMetrics())
  {
    v3 = [(COSAppleIDLoginViewController *)self activationHoldActivityIdentifier];
    v4 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    [v4 endMacroActivity:v3 beginTime:CFAbsoluteTimeGetCurrent()];
    v6 = v5;

    [PBBridgeCAReporter pushTimingForTypeNamed:v3 withValue:v6];
  }

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:self name:PBBridgeGizmoDidFinishActivatingNotification object:0];

  [(COSAppleIDLoginViewController *)self finishedActivating];
}

+ (id)appleIDServiceState
{
  v2 = [UIApp setupController];
  v3 = [v2 appleIDSignInModel];
  v4 = [v3 stateForServiceType:{objc_msgSend(objc_opt_class(), "appleIDServiceType")}];

  return v4;
}

- (void)signInToAccountWithPassword:(id)a3
{
  v4 = a3;
  v5 = pbb_accountsignin_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(COSAppleIDLoginViewController *)self account];
    v19 = 138412546;
    v20 = v6;
    v21 = 2112;
    v22 = objc_opt_class();
    v7 = v22;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Signing in to account: %@ (%@)", &v19, 0x16u);
  }

  [(COSAppleIDLoginViewController *)self startNetworkRequest];
  v8 = [(COSAppleIDLoginViewController *)self performanceMonitorActivityName];
  v9 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
  [v9 beginMacroActivity:v8 beginTime:CFAbsoluteTimeGetCurrent()];

  v10 = pbb_accountsignin_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [objc_opt_class() appleIDServiceType];
    v12 = sub_1000EAA90(v11);
    v19 = 138412290;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Signing in %@ account", &v19, 0xCu);
  }

  kdebug_trace();
  v13 = [COSAppleIDAuthController alloc];
  accountStore = self->_accountStore;
  v15 = [(COSAppleIDLoginViewController *)self account];
  v16 = [(COSAppleIDAuthController *)v13 initWithAccountStore:accountStore account:v15 timeout:self->_device device:0.0];

  [(COSAppleIDAuthController *)v16 setDelegate:self];
  v17 = [objc_opt_class() appleIDServiceState];
  [v17 setAuthController:v16];

  v18 = [objc_opt_class() accountTypeString];
  [(COSAppleIDAuthController *)v16 setSignInAccountType:v18];

  [(COSAppleIDAuthController *)v16 startSigningInWithPassword:v4];
  if (v4)
  {
    [(COSAppleIDLoginViewController *)self _signInToAccountWithPassword:v4];
  }
}

+ (id)accountTypeString
{
  v2 = [objc_opt_class() appleIDServiceType];

  return sub_1000EAA90(v2);
}

- (void)saveiTunesStoreAccountToPairedDeviceIfForSameAppleID
{
  v3 = [(COSAppleIDLoginViewController *)self device];
  v4 = [[NSUUID alloc] initWithUUIDString:@"1F1097A5-5A0B-4795-9FBE-B206DB49FA1D"];
  v5 = [v3 supportsCapability:v4];

  if (v5)
  {
    v10 = +[COSiTunesStoreAuthController iTunesStoreAccountInAccountStore];
    v6 = [(COSAppleIDLoginViewController *)self account];
    v7 = [COSAppleIDUtilities checkIfAccount:v10 isForSameAppleIDAsAccount:v6];

    if (v7)
    {
      v8 = [(COSAppleIDLoginViewController *)self delegate];
      v9 = [(COSAppleIDLoginViewController *)self accountStore];
      [v8 saveCombinedPasswordBasediTunesStoreAccount:v10 fromAccountStore:v9];
    }
  }
}

- (void)appleIDAuthController:(id)a3 didSignInWithSuccess:(BOOL)a4 error:(id)a5
{
  v6 = a4;
  v24 = a3;
  v25 = a5;
  v8 = [objc_opt_class() appleIDServiceState];
  v9 = [v8 authController];
  [v9 setDelegate:0];

  [v8 setAuthController:0];
  [v8 setRecoveringCredentials:0];
  kdebug_trace();
  v10 = [(COSAppleIDLoginViewController *)self performanceMonitorActivityName];
  v11 = [(COSAppleIDLoginViewController *)self performanceMonitorCATiming];
  v12 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
  [v12 endMacroActivity:v10 beginTime:CFAbsoluteTimeGetCurrent()];
  v14 = v13;

  [PBBridgeCAReporter pushTimingType:v11 withValue:v14];
  v15 = [objc_opt_class() accountTypeString];
  v16 = [UIApp setupController];
  v17 = [v16 pairingReportManager];

  v18 = BRSignInPairingTimeEventForAccountType();
  v19 = BRSignInPairingTimeEventForAccountType();
  v20 = [NSNumber numberWithBool:v6];
  [v17 addPairingTimeEventToPairingReportPlist:v18 withValue:v20 withError:0];

  [v17 checkInWithClosingPairingTimeEvent:v19];
  if (v6)
  {
    v21 = v25;
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
    v21 = v25;
    v23 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v25 code]);
    [v17 addPairingTimeEventToPairingReportPlist:v22 withValue:v23 withError:0];

    [(COSAppleIDLoginViewController *)self stopNetworkRequest];
    [(COSAppleIDLoginViewController *)self signInFailedWithError:v25];
  }
}

- (void)didSendSignInRequestToWatchFromAppleIDAuthContoller:(id)a3
{
  v4 = [UIApp setupController];
  if (([v4 nextControllerToPresentAfterBlockedOnSignInStep] & 1) == 0)
  {
    v5 = [objc_opt_class() appleIDServiceState];
    v6 = [v5 authController];
    [v6 setDelegate:0];

    v7 = pbb_accountsignin_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Waiting for sign-in response from watch and segueing to present non-Apple ID buddy screens", v9, 2u);
    }

    v8 = [(COSAppleIDLoginViewController *)self delegate];
    [v8 buddyControllerDoneForSignIn:self];
  }
}

- (ACAccount)idmsAccount
{
  idmsAccount = self->_idmsAccount;
  if (!idmsAccount)
  {
    v4 = [(COSAppleIDLoginViewController *)self accountStore];
    v5 = [(COSAppleIDLoginViewController *)self account];
    v6 = [COSAppleIDAuthController lookupIDMSAccountWithAccountStore:v4 matchingAccount:v5];
    v7 = self->_idmsAccount;
    self->_idmsAccount = v6;

    idmsAccount = self->_idmsAccount;
  }

  return idmsAccount;
}

- (unint64_t)authenticationMode
{
  v2 = [(COSAppleIDLoginViewController *)self idmsAccount];
  v3 = [v2 accountPropertyForKey:AKAuthMode];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (void)setWaitingForSignInResponseFromWatch:(BOOL)a3
{
  v3 = a3;
  v5 = pbb_accountsignin_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[COSAppleIDLoginViewController setWaitingForSignInResponseFromWatch:]";
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: waiting: %d", &v8, 0x12u);
  }

  if (v3)
  {
    [(COSAppleIDLoginViewController *)self loadViewIfNeeded];
    [(COSAppleIDLoginViewController *)self startNetworkRequest];
  }

  else
  {
    [(COSAppleIDLoginViewController *)self stopNetworkRequest];
    v6 = [objc_opt_class() appleIDServiceState];
    v7 = [v6 authController];
    [v7 resetWatchSignInResponse];
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

  v4 = [objc_opt_class() appleIDServiceState];
  v5 = [v4 authController];

  if (!v5)
  {
    goto LABEL_11;
  }

  [v5 setDelegate:self];
  if (([v5 waitingForWatchSignInAfterInteractiveAuth] & 1) == 0)
  {
    if ([v5 watchSignInResult])
    {
      if ([v5 watchSignInResult] == 2)
      {
        objc_initWeak(buf, self);
        v8 = _NSConcreteStackBlock;
        v9 = 3221225472;
        v10 = sub_1000FB2F4;
        v11 = &unk_100268458;
        objc_copyWeak(&v13, buf);
        v12 = self;
        [(COSAppleIDLoginViewController *)self loggedInSuccessfullyWithBuddyControllerDoneBlock:&v8];
        objc_destroyWeak(&v13);
        objc_destroyWeak(buf);
      }

      else if ([v5 watchSignInResult] == 1)
      {
        v7 = [v5 watchSignInErrorResult];
        [(COSAppleIDLoginViewController *)self signInFailedWithError:v7];
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
    v4 = [(COSAppleIDLoginViewController *)self holdActivityIdentifier];
    [v3 beginMacroActivity:v4 beginTime:CFAbsoluteTimeGetCurrent()];
  }

  v5 = [objc_opt_class() appleIDServiceState];
  v6 = [v5 silentSignInSuccessful];

  if ((v6 & 1) == 0)
  {
    [(COSAppleIDLoginViewController *)self registerActivationObserver];
    v7 = [objc_opt_class() appleIDServiceState];
    v8 = [v7 waitingForSilentSigninToComplete];

    if (v8)
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

- (void)silentSignInStateChanged:(id)a3
{
  v4 = [objc_opt_class() appleIDServiceState];
  v5 = [v4 waitingForSilentSigninToComplete];

  if ((v5 & 1) == 0)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:self name:@"COSBuddyAppleIDSilentSignInChangeNotification" object:0];

    [(COSAppleIDLoginViewController *)self checkAndReleaseHold];
  }
}

- (void)checkAndReleaseHold
{
  v3 = [(COSAppleIDLoginViewController *)self delegate];
  v4 = [v3 buddyControllerIsBeingHeldOff:self];

  if (!v4)
  {
    return;
  }

  v5 = [objc_opt_class() appleIDServiceState];
  v6 = [v5 waitingForSilentSigninToComplete];

  v7 = [objc_opt_class() appleIDServiceState];
  v8 = [v7 silentSignInSuccessful];

  v9 = [objc_opt_class() appleIDServiceState];
  v10 = [v9 signedIn];

  v11 = [objc_opt_class() appleIDServiceState];
  v12 = [v11 signInSkipped];

  v13 = [(COSAppleIDLoginViewController *)self completedCustomHoldActivities];
  v14 = +[UIApplication sharedApplication];
  v15 = [v14 isActivated];

  v16 = pbb_accountsignin_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v26 = 138413826;
    v27 = v18;
    v28 = 1024;
    v29 = v6;
    v30 = 1024;
    v31 = v8;
    v32 = 1024;
    v33 = v15;
    v34 = 1024;
    v35 = v13;
    v36 = 1024;
    v37 = v10;
    v38 = 1024;
    v39 = v12;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Checking if can release hold (%@); waitingForSilentSignInToComplete: (%{BOOL}d); silentSignInWasSuccessful: (%{BOOL}d); activated: (%{BOOL}d); completedHoldActivitiesForAccount: (%{BOOL}d) signedIn: (%{BOOL}d) signInSkipped: (%{BOOL}d)", &v26, 0x30u);
  }

  if (v8 & 1 | ((v6 & 1) == 0))
  {
    goto LABEL_7;
  }

  v19 = [UIApp setupController];
  if ([v19 nextControllerToPresentAfterBlockedOnSignInStep])
  {

LABEL_7:
    if (!(v6 & 1 | ((v15 & 1) == 0)))
    {
      if ((v8 | v10 | v12))
      {
        [(COSAppleIDLoginViewController *)self markEndOfHoldActivity];
        v20 = [(COSAppleIDLoginViewController *)self delegate];
        [v20 buddyControllerReleaseHoldAndSkip:self];
      }

      else if (v13)
      {
        [(COSAppleIDLoginViewController *)self markEndOfHoldActivity];
        v25 = [(COSAppleIDLoginViewController *)self delegate];
        [v25 buddyControllerReleaseHold:self];

        [(COSAppleIDLoginViewController *)self attachAuthStateAfterReleasingHoldToPresentController];
      }
    }

    return;
  }

  v21 = [objc_opt_class() appleIDServiceState];
  v22 = [v21 authController];
  [v22 setDelegate:0];

  v23 = pbb_accountsignin_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v26) = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Waiting for silent sign-in and segueing to present non-Apple ID buddy screens", &v26, 2u);
  }

  [(COSAppleIDLoginViewController *)self markEndOfHoldActivity];
  v24 = [(COSAppleIDLoginViewController *)self delegate];
  [v24 buddyControllerDoneForSignIn:self];
}

- (void)markEndOfHoldActivity
{
  if (PBLogPerformanceMetrics())
  {
    v6 = [(COSAppleIDLoginViewController *)self holdActivityIdentifier];
    v3 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    [v3 endMacroActivity:v6 beginTime:CFAbsoluteTimeGetCurrent()];
    v5 = v4;

    [PBBridgeCAReporter pushTimingForTypeNamed:v6 withValue:v5];
  }
}

- (BOOL)holdWithWaitScreen
{
  v2 = [UIApp setupController];
  v3 = [v2 activationManager];

  if ([v3 awaitingActivation])
  {
    v4 = [v3 didPresentFlow] ^ 1;
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