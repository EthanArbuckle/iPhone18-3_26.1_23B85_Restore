@interface COSAppleIDAuthController
+ (BOOL)isTermsUpdateNeededError:(id)error;
+ (BOOL)shouldAttemptPasswordLessSignInForAccount:(id)account inAccountStore:(id)store;
+ (BOOL)signInEndResultForValue:(BOOL)value error:(id)error;
+ (id)DSIDForIDMSAccount:(id)account;
+ (id)altDSIDForIDMSAccount:(id)account;
+ (id)amsSaveOptions;
+ (id)lookupIDMSAccountWithAccountStore:(id)store matchingAccount:(id)account;
+ (void)saveToPairedDeviceAccount:(id)account fromAccountStore:(id)store withOptions:(id)options completion:(id)completion;
+ (void)saveVerifiedRawPassword:(id)password forAccountIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (BOOL)isCurrentAccountiTunesAccount;
- (COSAppleIDAuthController)initWithAccountStore:(id)store account:(id)account timeout:(double)timeout device:(id)device;
- (COSAppleIDAuthControllerDelegate)delegate;
- (UIViewController)presentingController;
- (id)authenticationContext;
- (id)baseAppContext;
- (id)companionSaveOptions;
- (id)httpHeadersForRemoteAuthUI;
- (id)optionsForPLTAuthWithTokens:(id)tokens;
- (id)remoteUIStyle;
- (id)tinkerFamilyMemberFromAuthenticationResultsForInternalUseByUpdatingtinkerSignInID;
- (void)_resetTermsInformation;
- (void)_resumeSatelliteSignin;
- (void)attemptMagicSignIn;
- (void)authenticatedWithResults:(id)results error:(id)error;
- (void)cancelSignInTimer;
- (void)contextDidDismissLoginAlertController:(id)controller;
- (void)contextDidEndPresentingSecondaryUI:(id)i;
- (void)contextDidPresentLoginAlertController:(id)controller;
- (void)contextWillBeginPresentingSecondaryUI:(id)i;
- (void)contextWillDismissLoginAlertController:(id)controller;
- (void)dealloc;
- (void)genericTermsRemoteUI:(id)i acceptedTermsInfo:(id)info;
- (void)genericTermsRemoteUI:(id)i didFinishWithSuccess:(BOOL)success;
- (void)performProxiedAuthentication;
- (void)presentTermsWithCachedAuthResultsForDSID:(id)d;
- (void)reauthFamilyCircleByExistingAuthenticationResultsWithCompletion:(id)completion;
- (void)repairGuardianAccount:(id)account;
- (void)reportSignInCompletionWithSuccess:(BOOL)success error:(id)error;
- (void)resetWatchSignInResponse;
- (void)saveAccountToPairedDevice;
- (void)saveAccountToPairedDeviceForPLTAuthWithTokens:(id)tokens;
- (void)saveAccountToPairedDeviceWithOptions:(id)options;
- (void)saveAccountToPairedDeviceWithRawPassword:(id)password;
- (void)savedAccountToPairedDeviceWithSuccess:(BOOL)success error:(id)error;
- (void)signInTimerFired;
- (void)signInViewController:(id)controller didCompleteWithAuthenticationResults:(id)results;
- (void)startAccountActionWithContext:(id)context;
- (void)startRecoveringCredentials;
- (void)startSatelliteSigninWithProgressCompletion:(id)completion;
- (void)startSignInTimer;
- (void)startSigningInWithPassword:(id)password;
- (void)startSigningInWithoutPassword;
- (void)waitForSatelliteSigninWithProgressCompletion:(id)completion;
- (void)willPresentModalNavigationController:(id)controller;
@end

@implementation COSAppleIDAuthController

+ (id)DSIDForIDMSAccount:(id)account
{
  accountCopy = account;
  v4 = +[AKAccountManager sharedInstance];
  v5 = [v4 DSIDForAccount:accountCopy];

  stringValue = [v5 stringValue];

  return stringValue;
}

+ (id)altDSIDForIDMSAccount:(id)account
{
  accountCopy = account;
  v4 = +[AKAccountManager sharedInstance];
  v5 = [v4 altDSIDForAccount:accountCopy];

  return v5;
}

+ (BOOL)shouldAttemptPasswordLessSignInForAccount:(id)account inAccountStore:(id)store
{
  accountCopy = account;
  storeCopy = store;
  if (accountCopy)
  {
    v7 = +[MCProfileConnection sharedConnection];
    isPasscodeSet = [v7 isPasscodeSet];

    if (isPasscodeSet)
    {
      v9 = [objc_opt_class() lookupIDMSAccountWithAccountStore:storeCopy matchingAccount:accountCopy];
      if (v9)
      {
        v10 = +[AKAccountManager sharedInstance];
        v11 = [v10 continuationTokenForAccount:v9];

        v12 = +[AKAccountManager sharedInstance];
        v13 = [v12 passwordResetTokenForAccount:v9];

        if (v11 && v13)
        {
          v14 = 1;
LABEL_16:

          goto LABEL_17;
        }

        v15 = pbb_accountsignin_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [NSNumber numberWithBool:v11 != 0];
          v17 = [NSNumber numberWithBool:v13 != 0];
          v19 = 138412802;
          v20 = accountCopy;
          v21 = 2112;
          v22 = v16;
          v23 = 2112;
          v24 = v17;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Will skip silent sign-in for account: (%@); hasCK: %@ hasPRK: %@", &v19, 0x20u);
        }
      }

      else
      {
        v15 = pbb_accountsignin_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138412290;
          v20 = accountCopy;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Will skip silent sign-in for account: (%@); No matching IDMS account.", &v19, 0xCu);
        }
      }
    }

    else
    {
      v9 = pbb_accountsignin_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = accountCopy;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Will skip silent sign-in for account: (%@); No passcode set.", &v19, 0xCu);
      }
    }

    v14 = 0;
    goto LABEL_16;
  }

  v14 = 0;
LABEL_17:

  return v14;
}

+ (void)saveToPairedDeviceAccount:(id)account fromAccountStore:(id)store withOptions:(id)options completion:(id)completion
{
  accountCopy = account;
  optionsCopy = options;
  completionCopy = completion;
  storeCopy = store;
  v13 = pbb_accountsignin_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_retainBlock(completionCopy);
    *buf = 134218498;
    v22 = accountCopy;
    v23 = 2112;
    v24 = optionsCopy;
    v25 = 2048;
    v26 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Saving Account (%p) to paired device with options: (%@); completion: (%p)", buf, 0x20u);
  }

  v15 = [[ACAccountCredential alloc] initWithPassword:0];
  [accountCopy setCredential:v15];

  [accountCopy setAuthenticated:0];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000FE4F8;
  v18[3] = &unk_10026BD88;
  v19 = accountCopy;
  v20 = completionCopy;
  v16 = completionCopy;
  v17 = accountCopy;
  [storeCopy saveAccount:v17 toPairedDeviceWithOptions:optionsCopy completion:v18];
}

+ (BOOL)signInEndResultForValue:(BOOL)value error:(id)error
{
  errorCopy = error;
  v6 = errorCopy;
  if (value)
  {
    v7 = 0;
  }

  else
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:ACErrorDomain])
    {
      v7 = [v6 code] == 5;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 || value;
}

+ (BOOL)isTermsUpdateNeededError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:AASignInErrorDomain] && objc_msgSend(errorCopy, "code") == -8010)
  {
    userInfo = [errorCopy userInfo];

    if (!userInfo)
    {
      v10 = 0;
      goto LABEL_8;
    }

    userInfo2 = [errorCopy userInfo];
    domain = [userInfo2 objectForKeyedSubscript:NSUnderlyingErrorKey];

    userInfo3 = [domain userInfo];
    if (userInfo3)
    {
      userInfo4 = [domain userInfo];
      v9 = [userInfo4 objectForKeyedSubscript:kAAProtocolErrorKey];
      v10 = [v9 isEqualToString:kAAProtocolErrorMobileMeTermsOfServiceUpdate];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_8:
  return v10;
}

- (COSAppleIDAuthController)initWithAccountStore:(id)store account:(id)account timeout:(double)timeout device:(id)device
{
  storeCopy = store;
  accountCopy = account;
  deviceCopy = device;
  selfCopy = 0;
  if (storeCopy && accountCopy)
  {
    v20.receiver = self;
    v20.super_class = COSAppleIDAuthController;
    v15 = [(COSAppleIDAuthController *)&v20 init];
    v16 = v15;
    if (v15)
    {
      objc_storeStrong(&v15->_accountStore, store);
      objc_storeStrong(&v16->_account, account);
      v16->_timeout = timeout;
      account = v16->_account;
      v18 = [[ACAccountCredential alloc] initWithPassword:0];
      [(ACAccount *)account setCredential:v18];

      [(ACAccount *)v16->_account setAuthenticated:0];
      objc_storeStrong(&v16->_watchDevice, device);
    }

    self = v16;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)dealloc
{
  [(COSAppleIDAuthController *)self cancelSignInTimer];
  v3.receiver = self;
  v3.super_class = COSAppleIDAuthController;
  [(COSAppleIDAuthController *)&v3 dealloc];
}

- (void)startSigningInWithoutPassword
{
  v3 = pbb_accountsignin_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    account = self->_account;
    timeout = self->_timeout;
    v10 = 138412546;
    v11 = account;
    v12 = 2048;
    v13 = timeout;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting password-less sign-in for account: (%@); timer: (%f)", &v10, 0x16u);
  }

  setupController = [UIApp setupController];
  pairingReportManager = [setupController pairingReportManager];

  signInAccountType = [(COSAppleIDAuthController *)self signInAccountType];
  v9 = BRSignInPairingTimeEventForAccountType();

  [pairingReportManager checkInWithOpenPairingTimeEvent:v9];
  [(COSAppleIDAuthController *)self startSignInTimer];
  [(COSAppleIDAuthController *)self attemptMagicSignIn];
}

- (void)startSigningInWithPassword:(id)password
{
  passwordCopy = password;
  v6 = pbb_accountsignin_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    account = self->_account;
    timeout = self->_timeout;
    *buf = 138412802;
    v23 = account;
    v24 = 2048;
    v25 = timeout;
    v26 = 1024;
    v27 = passwordCopy != 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Starting interactive sign-in for account: (%@); timer: (%f) password: %{BOOL}d", buf, 0x1Cu);
  }

  setupController = [UIApp setupController];
  pairingReportManager = [setupController pairingReportManager];

  signInAccountType = [(COSAppleIDAuthController *)self signInAccountType];
  v12 = BRSignInPairingTimeEventForAccountType();

  [pairingReportManager checkInWithOpenPairingTimeEvent:v12];
  [(COSAppleIDAuthController *)self startSignInTimer];
  objc_storeStrong(&self->_password, password);
  self->_hasStartedFallbackFlow = 1;
  watchDevice = self->_watchDevice;
  v14 = [[NSUUID alloc] initWithUUIDString:@"25B1B001-1F02-49A0-B7E7-6225BA6B004D"];
  if (([(NRDevice *)watchDevice supportsCapability:v14]& 1) != 0)
  {
    v15 = +[UIApplication sharedApplication];
    bridgeController = [v15 bridgeController];

    if (bridgeController)
    {
      if (self->_proxiedDevice)
      {
        [(COSAppleIDAuthController *)self performProxiedAuthentication];
      }

      else
      {
        v18 = pbb_accountsignin_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Proxied Authenication.  Getting AKDevice from the watch", buf, 2u);
        }

        v19 = +[UIApplication sharedApplication];
        bridgeController2 = [v19 bridgeController];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_1000FEDCC;
        v21[3] = &unk_100268958;
        v21[4] = self;
        [bridgeController2 requestProxiedDeviceForWatchWithCompletion:v21];
      }

      goto LABEL_11;
    }
  }

  else
  {
  }

  v17 = pbb_accountsignin_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Can't get AKDevice explicitly, falling back to force failing silent auth", buf, 2u);
  }

  [(COSAppleIDAuthController *)self saveAccountToPairedDevice];
LABEL_11:
}

- (void)startRecoveringCredentials
{
  v3 = pbb_accountsignin_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    account = self->_account;
    *buf = 136315394;
    v16 = "[COSAppleIDAuthController startRecoveringCredentials]";
    v17 = 2112;
    v18 = account;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: Starting password-recovery for account: (%@)", buf, 0x16u);
  }

  password = self->_password;
  self->_password = 0;

  self->_hasStartedFallbackFlow = 1;
  self->_needsCredentialRecovery = 1;
  watchDevice = self->_watchDevice;
  v7 = [[NSUUID alloc] initWithUUIDString:@"25B1B001-1F02-49A0-B7E7-6225BA6B004D"];
  if (([(NRDevice *)watchDevice supportsCapability:v7]& 1) != 0)
  {
    v8 = +[UIApplication sharedApplication];
    bridgeController = [v8 bridgeController];

    if (bridgeController)
    {
      if (self->_proxiedDevice)
      {
        [(COSAppleIDAuthController *)self performProxiedAuthentication];
      }

      else
      {
        v11 = pbb_accountsignin_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Proxied Authenication.  Getting AKDevice from the watch", buf, 2u);
        }

        v12 = +[UIApplication sharedApplication];
        bridgeController2 = [v12 bridgeController];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_1000FF08C;
        v14[3] = &unk_100268958;
        v14[4] = self;
        [bridgeController2 requestProxiedDeviceForWatchWithCompletion:v14];
      }

      return;
    }
  }

  else
  {
  }

  v10 = pbb_accountsignin_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Can't get AKDevice explicitly, falling back to force failing silent auth", buf, 2u);
  }

  [(COSAppleIDAuthController *)self saveAccountToPairedDevice];
}

- (void)startSignInTimer
{
  if (self->_timeout != 0.0)
  {
    location[5] = v2;
    location[6] = v3;
    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
    timerSource = self->_timerSource;
    self->_timerSource = v5;

    if (self->_timerSource)
    {
      objc_initWeak(location, self);
      timeout = self->_timeout;
      v8 = 100000000 * timeout;
      v9 = self->_timerSource;
      v10 = dispatch_time(0, 1000000000 * timeout);
      dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, v8);
      v11 = self->_timerSource;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000FF21C;
      v12[3] = &unk_100268430;
      objc_copyWeak(&v13, location);
      dispatch_source_set_event_handler(v11, v12);
      dispatch_resume(self->_timerSource);
      objc_destroyWeak(&v13);
      objc_destroyWeak(location);
    }
  }
}

- (void)cancelSignInTimer
{
  timerSource = self->_timerSource;
  if (timerSource)
  {
    dispatch_source_cancel(timerSource);
    v4 = self->_timerSource;
    self->_timerSource = 0;
  }
}

- (void)signInTimerFired
{
  v3 = pbb_accountsignin_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    account = self->_account;
    v6 = 138412290;
    v7 = account;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Sign-in timer fired for account: (%@)", &v6, 0xCu);
  }

  v5 = sub_1000FF37C(2, 0);
  [(COSAppleIDAuthController *)self reportSignInCompletionWithSuccess:0 error:v5];
}

+ (id)lookupIDMSAccountWithAccountStore:(id)store matchingAccount:(id)account
{
  storeCopy = store;
  accountCopy = account;
  v7 = [storeCopy accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierIDMS];
  if (v7)
  {
    [storeCopy accountsWithAccountType:v7];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v17 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          if ([COSAppleIDUtilities checkIfAccount:v12 isForSameAppleIDAsAccount:accountCopy, v14])
          {
            v9 = v12;
            goto LABEL_12;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)attemptMagicSignIn
{
  v3 = [objc_opt_class() lookupIDMSAccountWithAccountStore:self->_accountStore matchingAccount:self->_account];
  objc_storeStrong(&self->_idmsAccount, v3);
  idmsAccount = self->_idmsAccount;
  if (idmsAccount)
  {
    v20 = 0;
    v5 = [(ACAccount *)idmsAccount credentialWithError:&v20];
    v6 = v20;
    v7 = pbb_accountsignin_log();
    v8 = v7;
    if (v6 || !v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10018A530();
      }

      v13 = sub_1000FF37C(0, v6);
      [(COSAppleIDAuthController *)self reportSignInCompletionWithSuccess:0 error:v13];
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = self->_idmsAccount;
        accountStore = self->_accountStore;
        *buf = 138412546;
        v22 = v9;
        v23 = 2112;
        v24 = accountStore;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Saving IDMS account (%@) with account store: (%@)", buf, 0x16u);
      }

      v11 = self->_accountStore;
      v12 = self->_idmsAccount;
      v15 = _NSConcreteStackBlock;
      v16 = 3221225472;
      v17 = sub_1000FF824;
      v18 = &unk_1002682C8;
      v19 = v3;
      [(ACAccountStore *)v11 saveAccount:v12 toPairedDeviceWithOptions:0 completion:&v15];
      [(COSAppleIDAuthController *)self saveAccountToPairedDevice:v15];
      v13 = v19;
    }
  }

  else
  {
    v14 = pbb_accountsignin_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10018A5A4();
    }

    v6 = sub_1000FF37C(0, 0);
    [(COSAppleIDAuthController *)self reportSignInCompletionWithSuccess:0 error:v6];
  }
}

- (BOOL)isCurrentAccountiTunesAccount
{
  accountType = [(ACAccount *)self->_account accountType];
  identifier = [accountType identifier];
  v4 = [identifier isEqualToString:ACAccountTypeIdentifieriTunesStore];

  return v4;
}

+ (id)amsSaveOptions
{
  v2 = objc_opt_new();
  [v2 setObject:&__kCFBooleanFalse forKeyedSubscript:AMSAuthenticateOptionsAllowServerDialogs];
  [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:AMSAuthenticateOptionsIgnoreAccountConversion];

  return v2;
}

- (id)companionSaveOptions
{
  v3 = objc_opt_new();
  v4 = +[AKDevice currentDevice];
  serverFriendlyDescription = [v4 serverFriendlyDescription];

  if (serverFriendlyDescription)
  {
    [v3 setObject:serverFriendlyDescription forKeyedSubscript:kAASaveOptionCompanionDeviceClientInfoKey];
  }

  v6 = +[AKDevice currentDevice];
  uniqueDeviceIdentifier = [v6 uniqueDeviceIdentifier];

  if (uniqueDeviceIdentifier)
  {
    [v3 setObject:uniqueDeviceIdentifier forKeyedSubscript:kAASaveOptionCompanionDeviceUDIDKey];
  }

  if ([(COSAppleIDAuthController *)self isCurrentAccountiTunesAccount])
  {
    amsSaveOptions = [objc_opt_class() amsSaveOptions];
    [v3 addEntriesFromDictionary:amsSaveOptions];
  }

  return v3;
}

- (void)saveAccountToPairedDevice
{
  companionSaveOptions = [(COSAppleIDAuthController *)self companionSaveOptions];
  account = self->_account;
  v4 = [[ACAccountCredential alloc] initWithPassword:0];
  [(ACAccount *)account setCredential:v4];

  [(COSAppleIDAuthController *)self saveAccountToPairedDeviceWithOptions:companionSaveOptions];
}

- (void)saveAccountToPairedDeviceWithOptions:(id)options
{
  optionsCopy = options;
  objc_initWeak(&location, self);
  v5 = pbb_accountsignin_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    accountStore = self->_accountStore;
    account = self->_account;
    *buf = 138412802;
    v17 = account;
    v18 = 2112;
    v19 = accountStore;
    v20 = 2112;
    v21 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Saving account (%@) to paired device with account store: (%@) and options: (%@)", buf, 0x20u);
  }

  v8 = self->_account;
  v9 = self->_accountStore;
  v10 = self->_account;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000FFD08;
  v12[3] = &unk_10026BDB0;
  v11 = v8;
  v13 = v11;
  objc_copyWeak(&v14, &location);
  [(ACAccountStore *)v9 saveAccount:v10 toPairedDeviceWithOptions:optionsCopy completion:v12];
  objc_destroyWeak(&v14);

  objc_destroyWeak(&location);
}

- (void)savedAccountToPairedDeviceWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  errorCopy = error;
  v7 = errorCopy;
  if (self->_didComplete)
  {
    goto LABEL_23;
  }

  if (successCopy)
  {
    v8 = pbb_accountsignin_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Successfully signed-in.", &v23, 2u);
    }

    selfCopy2 = self;
    v10 = 1;
    v11 = 0;
    goto LABEL_22;
  }

  if (self->_proxiedDevice)
  {
    v12 = pbb_accountsignin_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10018A5E0();
    }

LABEL_21:

    selfCopy2 = self;
    v10 = 0;
    v11 = v7;
LABEL_22:
    [(COSAppleIDAuthController *)selfCopy2 reportSignInCompletionWithSuccess:v10 error:v11];
    goto LABEL_23;
  }

  domain = [errorCopy domain];
  if (![domain isEqualToString:@"com.apple.appleaccount"])
  {

LABEL_19:
    v12 = pbb_accountsignin_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10018A650();
    }

    goto LABEL_21;
  }

  code = [v7 code];

  if (code != -7)
  {
    goto LABEL_19;
  }

  if (self->_hasStartedFallbackFlow)
  {
    userInfo = [v7 userInfo];
    v16 = [userInfo objectForKeyedSubscript:kAAErrorDetailsProxiedDeviceDataKey];
    v17 = v16;
    if (v16)
    {
      v16 = [AKDevice deviceWithSerializedData:v16];
    }

    proxiedDevice = self->_proxiedDevice;
    self->_proxiedDevice = v16;

    [(AKDevice *)self->_proxiedDevice setLinkType:2];
    v19 = pbb_accountsignin_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = self->_proxiedDevice;
      v23 = 138412546;
      v24 = v20;
      v25 = 2048;
      v26 = [(AKDevice *)v17 length];
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Watch AKDevice: (%@); AKDevice data: (%lu bytes)", &v23, 0x16u);
    }

    if (self->_proxiedDevice)
    {
      [(COSAppleIDAuthController *)self performProxiedAuthentication];
    }

    else
    {
      v22 = sub_1000FF37C(1, v7);
      [(COSAppleIDAuthController *)self reportSignInCompletionWithSuccess:0 error:v22];
    }
  }

  else
  {
    v21 = pbb_accountsignin_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10018A6C0();
    }

    userInfo = sub_1000FF37C(0, v7);
    [(COSAppleIDAuthController *)self reportSignInCompletionWithSuccess:0 error:userInfo];
  }

LABEL_23:
}

- (void)performProxiedAuthentication
{
  v3 = objc_alloc_init(AKAppleIDAuthenticationWatchBuddyContext);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = objc_loadWeakRetained(&self->_delegate);
  v7 = [v6 appleIDAuthControllerRequestsPresentingViewController:self];

  v8 = pbb_accountsignin_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Calling out to AuthKit. Presenting View Controller: (%@)", buf, 0xCu);
  }

  if (v7)
  {
    [v3 setPresentingViewController:v7];

LABEL_6:
    username = [(ACAccount *)self->_account username];
    [v3 setUsername:username];

    [v3 setPassword:self->_password];
    [v3 setIsUsernameEditable:0];
    httpHeadersForRemoteAuthUI = [(COSAppleIDAuthController *)self httpHeadersForRemoteAuthUI];
    [v3 setHttpHeadersForRemoteUI:httpHeadersForRemoteAuthUI];

    [v3 setProxiedDevice:self->_proxiedDevice];
    [v3 setNeedsCredentialRecovery:self->_needsCredentialRecovery];
    objc_storeStrong(&self->_watchBuddyAuthContext, v3);
    objc_initWeak(&location, self);
    v11 = objc_alloc_init(AKAppleIDAuthenticationController);
    authController = self->_authController;
    self->_authController = v11;

    v13 = pbb_accountsignin_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->_authController;
      *buf = 138412290;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Authenticating using AuthKit controller: (%@)", buf, 0xCu);
    }

    v15 = self->_authController;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1001004B4;
    v16[3] = &unk_100268980;
    objc_copyWeak(&v17, &location);
    [(AKAppleIDAuthenticationController *)v15 authenticateWithContext:v3 completion:v16];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (void)authenticatedWithResults:(id)results error:(id)error
{
  resultsCopy = results;
  errorCopy = error;
  if (!self->_didComplete)
  {
    authController = self->_authController;
    self->_authController = 0;

    if (errorCopy)
    {
      v9 = pbb_accountsignin_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10018A730();
      }

      [(COSAppleIDAuthController *)self reportSignInCompletionWithSuccess:0 error:errorCopy];
    }

    else
    {
      v10 = [resultsCopy objectForKeyedSubscript:AKAuthenticationRawPasswordKey];
      v11 = [resultsCopy objectForKeyedSubscript:AKAuthenticationIDMSTokenKey];
      v12 = [v11 objectForKeyedSubscript:AKPasswordlessTokenKey];
      if ([v12 length] && _os_feature_enabled_impl())
      {
        v13 = pbb_accountsignin_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Saving account to pair device with passwordlessToken.", buf, 2u);
        }

        [(COSAppleIDAuthController *)self saveAccountToPairedDeviceForPLTAuthWithTokens:v11];
      }

      else
      {
        v14 = [v10 length];
        v15 = pbb_accountsignin_log();
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        if (v14)
        {
          if (v16)
          {
            LOWORD(buf[0]) = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Saving account to pair device with raw password.", buf, 2u);
          }

          objc_initWeak(buf, self);
          v17 = objc_opt_class();
          identifier = [(ACAccount *)self->_account identifier];
          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_100100974;
          v20[3] = &unk_100268458;
          objc_copyWeak(&v22, buf);
          v21 = v10;
          [v17 saveVerifiedRawPassword:v21 forAccountIdentifier:identifier withCompletionHandler:v20];

          objc_destroyWeak(&v22);
          objc_destroyWeak(buf);
        }

        else
        {
          if (v16)
          {
            LOWORD(buf[0]) = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No raw password or passwordless token available for proxied auth.", buf, 2u);
          }

          v19 = sub_1000FF37C(1, 0);
          [(COSAppleIDAuthController *)self reportSignInCompletionWithSuccess:0 error:v19];
        }
      }
    }
  }
}

+ (void)saveVerifiedRawPassword:(id)password forAccountIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  passwordCopy = password;
  identifierCopy = identifier;
  handlerCopy = handler;
  v10 = pbb_accountsignin_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Saving verified account locally for account identifier (%@)", buf, 0xCu);
  }

  v11 = objc_alloc_init(ACAccountStore);
  v12 = [v11 accountWithIdentifier:identifierCopy];
  v13 = v12;
  if (v12)
  {
    [v12 _aa_setRawPassword:passwordCopy];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100100C64;
    v15[3] = &unk_100268E98;
    v16 = handlerCopy;
    [v11 saveVerifiedAccount:v13 withCompletionHandler:v15];
  }

  else
  {
    v14 = pbb_bridge_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v18 = identifierCopy;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Could not find account with identifier (%@) in account store (%@)", buf, 0x16u);
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }
}

- (void)saveAccountToPairedDeviceWithRawPassword:(id)password
{
  passwordCopy = password;
  accountType = [(ACAccount *)self->_account accountType];
  identifier = [accountType identifier];

  v7 = pbb_accountsignin_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = identifier;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Save Account of type identifier: %@", &v18, 0xCu);
  }

  watchDevice = self->_watchDevice;
  v9 = [[NSUUID alloc] initWithUUIDString:@"37CF71A8-CFCC-41D9-ADE7-704585AFA68B"];
  v10 = [(NRDevice *)watchDevice supportsCapability:v9];

  v11 = pbb_accountsignin_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [NSNumber numberWithBool:v10];
    v18 = 138412290;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Supports iTunes PET? %@", &v18, 0xCu);
  }

  if (v10 && [identifier isEqualToString:ACAccountTypeIdentifieriTunesStore])
  {
    v13 = [[ACAccountCredential alloc] initWithPassword:0];
    [(ACAccount *)self->_account setCredential:v13];
    [v13 setCredentialItem:passwordCopy forKey:ACRawPasswordKey];
  }

  else
  {
    account = self->_account;
    v13 = [ACAccountCredential credentialWithPassword:passwordCopy];
    [(ACAccount *)account setCredential:v13];
  }

  self->_waitingForWatchSignInAfterInteractiveAuth = 1;
  [(COSAppleIDAuthController *)self resetWatchSignInResponse];
  [(COSAppleIDAuthController *)self saveAccountToPairedDeviceWithOptions:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v17 = objc_loadWeakRetained(&self->_delegate);
    [v17 didSendSignInRequestToWatchFromAppleIDAuthContoller:self];
  }
}

- (void)resetWatchSignInResponse
{
  watchSignInErrorResult = self->_watchSignInErrorResult;
  self->_watchSignInResult = 0;
  self->_watchSignInErrorResult = 0;
}

- (void)saveAccountToPairedDeviceForPLTAuthWithTokens:(id)tokens
{
  v4 = [(COSAppleIDAuthController *)self optionsForPLTAuthWithTokens:tokens];
  v5 = [v4 objectForKeyedSubscript:kAASaveOptionPasswordlessTokenKey];
  if (v5)
  {
    v6 = [objc_opt_class() lookupIDMSAccountWithAccountStore:self->_accountStore matchingAccount:self->_account];
    objc_storeStrong(&self->_idmsAccount, v6);
    idmsAccount = self->_idmsAccount;
    if (idmsAccount)
    {
      v26 = 0;
      v8 = [(ACAccount *)idmsAccount credentialWithError:&v26];
      v9 = v26;
      if (v9 || !v8)
      {
        v20 = pbb_accountsignin_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_10018A530();
        }

        v17 = sub_1000FF37C(0, v9);
        [(COSAppleIDAuthController *)self reportSignInCompletionWithSuccess:0 error:v17];
      }

      else
      {
        [v8 setCredentialItem:0 forKey:ACContinuationTokenKey];
        v10 = pbb_accountsignin_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = self->_idmsAccount;
          accountStore = self->_accountStore;
          *buf = 138412546;
          v28 = v11;
          v29 = 2112;
          v30 = accountStore;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Saving IDMS account (%@) with account store: (%@)", buf, 0x16u);
        }

        v13 = self->_accountStore;
        v14 = self->_idmsAccount;
        v21 = _NSConcreteStackBlock;
        v22 = 3221225472;
        v23 = sub_1001012EC;
        v24 = &unk_1002682C8;
        v25 = v6;
        [(ACAccountStore *)v13 saveAccount:v14 toPairedDeviceWithOptions:0 completion:&v21];
        self->_waitingForWatchSignInAfterInteractiveAuth = 1;
        [(COSAppleIDAuthController *)self resetWatchSignInResponse:v21];
        [(COSAppleIDAuthController *)self saveAccountToPairedDeviceWithOptions:v4];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        LOBYTE(v14) = objc_opt_respondsToSelector();

        if (v14)
        {
          v16 = objc_loadWeakRetained(&self->_delegate);
          [v16 didSendSignInRequestToWatchFromAppleIDAuthContoller:self];
        }

        v17 = v25;
      }
    }

    else
    {
      v19 = pbb_accountsignin_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10018A5A4();
      }

      v9 = sub_1000FF37C(0, 0);
      [(COSAppleIDAuthController *)self reportSignInCompletionWithSuccess:0 error:v9];
    }
  }

  else
  {
    v18 = pbb_accountsignin_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10018A7A0();
    }

    v6 = sub_1000FF37C(0, 0);
    [(COSAppleIDAuthController *)self reportSignInCompletionWithSuccess:0 error:v6];
  }
}

- (id)optionsForPLTAuthWithTokens:(id)tokens
{
  tokensCopy = tokens;
  v4 = objc_opt_new();
  v5 = [tokensCopy objectForKeyedSubscript:AKPasswordlessTokenKey];
  v6 = [tokensCopy objectForKeyedSubscript:AKIdmsDataTokenKey];

  if (v5 && [v5 length])
  {
    v7 = pbb_accountsignin_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Adding passwordlessToken to options.", buf, 2u);
    }

    [v4 setObject:v5 forKeyedSubscript:kAASaveOptionPasswordlessTokenKey];
  }

  if (v6 && [v6 length])
  {
    v8 = pbb_accountsignin_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Adding idmsDataToken to options.", v10, 2u);
    }

    [v4 setObject:v6 forKeyedSubscript:kAASaveOptionIdmsDataTokenKey];
  }

  return v4;
}

- (id)httpHeadersForRemoteAuthUI
{
  v2 = [(NRDevice *)self->_watchDevice valueForProperty:NRDevicePropertyModelNumber];
  if (v2)
  {
    v3 = +[COSAAGenericTermsUIRequest deviceModelHeaderName];
    v6 = v3;
    v7 = v2;
    v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)reportSignInCompletionWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  self->_didComplete = 1;
  errorCopy = error;
  [(COSAppleIDAuthController *)self cancelSignInTimer];
  authController = self->_authController;
  if (authController)
  {
    [(AKAppleIDAuthenticationController *)authController setDelegate:0];
    v8 = self->_authController;
    self->_authController = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = WeakRetained;
  if (successCopy)
  {
    v10 = 0;
  }

  else
  {
    v10 = errorCopy;
  }

  [WeakRetained appleIDAuthController:self didSignInWithSuccess:successCopy error:v10];
}

- (void)_resetTermsInformation
{
  proxiedTermsRemoteUI = self->_proxiedTermsRemoteUI;
  self->_proxiedTermsRemoteUI = 0;

  acceptedTermsInfo = self->_acceptedTermsInfo;
  self->_acceptedTermsInfo = 0;
}

- (void)startSatelliteSigninWithProgressCompletion:(id)completion
{
  completionCopy = completion;
  [(COSAppleIDAuthController *)self _resetTermsInformation];
  self->_satelliteSignInStatus = 0;
  satelliteSignInDetailedError = self->_satelliteSignInDetailedError;
  self->_satelliteSignInDetailedError = 0;

  satelliteSignInErrorDescription = self->_satelliteSignInErrorDescription;
  self->_satelliteSignInErrorDescription = 0;

  v7 = objc_retainBlock(completionCopy);
  satelliteSignInCompletion = self->_satelliteSignInCompletion;
  self->_satelliteSignInCompletion = v7;

  [(COSAppleIDAuthController *)self _resumeSatelliteSignin];
}

- (void)waitForSatelliteSigninWithProgressCompletion:(id)completion
{
  v4 = objc_retainBlock(completion);
  satelliteSignInCompletion = self->_satelliteSignInCompletion;
  self->_satelliteSignInCompletion = v4;

  if (self->_satelliteSignInStatus)
  {
    v6 = *(self->_satelliteSignInCompletion + 2);

    v6();
  }

  else
  {
    v7 = pbb_accountsignin_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ignoring current status", v8, 2u);
    }
  }
}

- (void)_resumeSatelliteSignin
{
  v3 = [(NSDictionary *)self->_authenticationResults objectForKeyedSubscript:AKAuthenticationUsernameKey];
  v4 = [(NSDictionary *)self->_authenticationResults objectForKeyedSubscript:AKAuthenticationRawPasswordKey];
  v5 = [(NSDictionary *)self->_authenticationResults objectForKeyedSubscript:AKAuthenticationAlternateDSIDKey];
  v21 = [(NSDictionary *)self->_authenticationResults objectForKeyedSubscript:AKAuthenticationDSIDKey];
  v6 = +[NRPairedDeviceRegistry sharedInstance];
  v7 = +[NRPairedDeviceRegistry activeDeviceSelectorBlock];
  v8 = [v6 getAllDevicesWithArchivedAltAccountDevicesMatching:v7];
  firstObject = [v8 firstObject];

  if (firstObject)
  {
    v10 = +[NRPairedDeviceRegistry sharedInstance];
    [v10 pairingClientSetAltAccountName:v3 altDSID:v5 forDevice:firstObject completion:&stru_10026BDD0];
  }

  else
  {
    v10 = pbb_accountsignin_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10018A7DC();
    }
  }

  v11 = +[UIApplication sharedApplication];
  setupController = [v11 setupController];

  v13 = objc_opt_new();
  [v13 setUsername:v3];
  [v13 setPassword:v4];
  [v13 setAcceptedTermsInfo:self->_acceptedTermsInfo];
  pairingParentFamilyMember = [setupController pairingParentFamilyMember];
  appleID = [pairingParentFamilyMember appleID];
  [v13 setPairingParentUsername:appleID];

  pairingParentFamilyMember2 = [setupController pairingParentFamilyMember];
  altDSID = [pairingParentFamilyMember2 altDSID];
  [v13 setPairingParentAltDSID:altDSID];

  objc_initWeak(&location, self);
  v18 = +[UIApplication sharedApplication];
  bridgeController = [v18 bridgeController];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100101B94;
  v22[3] = &unk_10026BE20;
  objc_copyWeak(&v24, &location);
  v20 = v21;
  v23 = v20;
  [bridgeController sendTinkerAccountCredentialsWithContext:v13 completion:v22];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)presentTermsWithCachedAuthResultsForDSID:(id)d
{
  v4 = UIApp;
  dCopy = d;
  setupController = [v4 setupController];
  navigationController = [setupController navigationController];

  v7 = [(NSDictionary *)self->_authenticationResults mutableCopy];
  [v7 setObject:dCopy forKeyedSubscript:AKAuthenticationDSIDKey];

  v8 = [[AAUIProxiedTermsRemoteUI alloc] initWithAuthResults:v7 proxiedDevice:self->_proxiedDevice appProvidedContext:@"tinker"];
  proxiedTermsRemoteUI = self->_proxiedTermsRemoteUI;
  self->_proxiedTermsRemoteUI = v8;

  [(AAUIProxiedTermsRemoteUI *)self->_proxiedTermsRemoteUI setDelegate:self];
  v10 = self->_proxiedTermsRemoteUI;
  topViewController = [navigationController topViewController];
  [(AAUIProxiedTermsRemoteUI *)v10 presentFromViewController:topViewController modal:1];
}

- (void)repairGuardianAccount:(id)account
{
  accountCopy = account;
  v5 = pbb_accountsignin_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v28 = "[COSAppleIDAuthController repairGuardianAccount:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100102364;
  v25[3] = &unk_10026BD88;
  v25[4] = self;
  v6 = accountCopy;
  v26 = v6;
  v7 = objc_retainBlock(v25);
  v8 = [CDPStateController alloc];
  v9 = +[CDPAccount sharedInstance];
  contextForPrimaryAccount = [v9 contextForPrimaryAccount];
  v11 = [v8 initWithContext:contextForPrimaryAccount];

  v24 = 0;
  LOBYTE(contextForPrimaryAccount) = [v11 isManateeAvailable:&v24];
  v12 = v24;
  if (contextForPrimaryAccount)
  {
    v13 = pbb_accountsignin_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v28 = "[COSAppleIDAuthController repairGuardianAccount:]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s Manatee available", buf, 0xCu);
    }

    (v7[2])(v7, 1, 0);
  }

  else
  {
    v14 = [CDPUIDeviceToDeviceEncryptionFlowContext alloc];
    v15 = +[CDPAccount sharedInstance];
    primaryAccountAltDSID = [v15 primaryAccountAltDSID];
    v17 = [v14 initWithAltDSID:primaryAccountAltDSID];

    v18 = +[NSBundle mainBundle];
    v19 = [v18 localizedStringForKey:@"GUARDIAN_ACCOUNT_REPAIR_FEATURE_NAME" value:&stru_10026E598 table:@"Localizable-tinker"];
    [v17 setFeatureName:v19];

    [v17 setDeviceToDeviceEncryptionUpgradeUIStyle:0];
    [v17 setDeviceToDeviceEncryptionUpgradeType:0];
    WeakRetained = objc_loadWeakRetained(&self->_presentingController);
    [v17 setPresentingViewController:WeakRetained];

    [v17 setSecurityUpgradeContext:AKSecurityUpgradeContextTinker];
    v21 = [[CDPUIDeviceToDeviceEncryptionHelper alloc] initWithContext:v17];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10010257C;
    v22[3] = &unk_100268E98;
    v23 = v7;
    [v21 performDeviceToDeviceEncryptionStateRepairWithCompletion:v22];

    v12 = v17;
  }
}

- (id)baseAppContext
{
  v3 = objc_alloc_init(AKAppleIDAuthenticationInAppContext);
  WeakRetained = objc_loadWeakRetained(&self->_presentingController);
  [v3 setPresentingViewController:WeakRetained];

  [v3 setServiceType:1];
  [v3 _setProxyingForApp:1];
  [v3 setDelegate:self];
  [v3 setAppProvidedContext:@"tinker"];
  v5 = +[CDPAccount sharedInstance];
  primaryAccountAltDSID = [v5 primaryAccountAltDSID];
  [v3 setAltDSID:primaryAccountAltDSID];

  return v3;
}

- (void)startAccountActionWithContext:(id)context
{
  contextCopy = context;
  v5 = objc_alloc_init(AKAppleIDAuthenticationController);
  AKAppleIDAuthController = self->_AKAppleIDAuthController;
  self->_AKAppleIDAuthController = v5;

  v7 = self->_AKAppleIDAuthController;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10010270C;
  v8[3] = &unk_10026BE48;
  v8[4] = self;
  [(AKAppleIDAuthenticationController *)v7 authenticateWithContext:contextCopy completion:v8];
}

- (void)reauthFamilyCircleByExistingAuthenticationResultsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = self->_authenticationResults;
  v6 = [(NSDictionary *)v5 objectForKeyedSubscript:AKAuthenticationRawPasswordKey];
  if (v6)
  {
    v7 = pbb_accountsignin_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v41 = "[COSAppleIDAuthController reauthFamilyCircleByExistingAuthenticationResultsWithCompletion:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s received results", buf, 0xCu);
    }

    v8 = [[NSMutableDictionary alloc] initWithDictionary:&off_100282028];
    v34 = [(NSDictionary *)v5 objectForKeyedSubscript:AKAuthenticationUsernameKey];
    v9 = AKAuthenticationDSIDKey;
    v10 = [(NSDictionary *)v5 objectForKeyedSubscript:AKAuthenticationDSIDKey];

    if (v10)
    {
      v11 = [(NSDictionary *)v5 objectForKeyedSubscript:v9];
      [v8 setObject:v11 forKeyedSubscript:@"memberId"];
    }

    else
    {
      v11 = pbb_accountsignin_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10018A920();
      }
    }

    v13 = AKAuthenticationAlternateDSIDKey;
    v14 = [(NSDictionary *)v5 objectForKeyedSubscript:AKAuthenticationAlternateDSIDKey];

    if (v14)
    {
      v15 = [(NSDictionary *)v5 objectForKeyedSubscript:v13];
      [v8 setObject:v15 forKeyedSubscript:@"altDSID"];
    }

    else
    {
      v15 = pbb_accountsignin_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10018A95C();
      }
    }

    v16 = [(NSDictionary *)v5 objectForKeyedSubscript:AKAuthenticationIDMSTokenKey];
    v17 = [v16 objectForKeyedSubscript:@"com.apple.gs.icloud.family.auth"];

    if (v17)
    {
      v18 = [v16 objectForKeyedSubscript:@"com.apple.gs.icloud.family.auth"];
      [v8 setObject:v18 forKeyedSubscript:@"com.apple.gs.icloud.family.auth"];
    }

    else
    {
      v18 = pbb_accountsignin_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10018A998();
      }
    }

    v19 = [FACircleContext alloc];
    v20 = [v19 initWithEventType:FACircleEventTypeFamilyRepair];
    [v20 setAdditionalParameters:v8];
    v21 = objc_alloc_init(AKAppleIDAuthenticationContext);
    authContext = self->_authContext;
    self->_authContext = v21;

    [(AKAppleIDAuthenticationContext *)self->_authContext setProxiedDevice:self->_proxiedDevice];
    [(AKAppleIDAuthenticationContext *)self->_authContext setNeedsNewAppleID:1];
    v23 = [v8 objectForKeyedSubscript:v13];
    [(AKAppleIDAuthenticationContext *)self->_authContext setAltDSID:v23];

    [(AKAppleIDAuthenticationContext *)self->_authContext setUsername:v34];
    v24 = [v8 objectForKeyedSubscript:v9];
    [(AKAppleIDAuthenticationContext *)self->_authContext setDSID:v24];

    if (self->_authContext)
    {
      [v20 setAuthContext:?];
    }

    else
    {
      v25 = pbb_accountsignin_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10018A9D4();
      }
    }

    v26 = pbb_accountsignin_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Performing FamilyCircle Reauth Check", buf, 2u);
    }

    v27 = [FACircleStateController alloc];
    WeakRetained = objc_loadWeakRetained(&self->_presentingController);
    v29 = [v27 initWithPresenter:WeakRetained];
    circleStateController = self->_circleStateController;
    self->_circleStateController = v29;

    v31 = self->_circleStateController;
    v32 = objc_opt_new();
    [(FACircleStateController *)v31 setCustomRUIStyle:v32];

    objc_initWeak(buf, self);
    v33 = self->_circleStateController;
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100102D88;
    v35[3] = &unk_10026BE70;
    objc_copyWeak(&v39, buf);
    v36 = v5;
    v12 = v34;
    v37 = v12;
    v38 = completionCopy;
    [(FACircleStateController *)v33 performWithContext:v20 completion:v35];

    objc_destroyWeak(&v39);
    objc_destroyWeak(buf);
  }

  else
  {
    v12 = 0;
  }
}

- (id)tinkerFamilyMemberFromAuthenticationResultsForInternalUseByUpdatingtinkerSignInID
{
  v3 = [(NSDictionary *)self->_authenticationResults objectForKeyedSubscript:AKAuthenticationUsernameKey];
  setupController = [UIApp setupController];
  [setupController setTinkerSignInId:v3];

  v5 = objc_alloc_init(NSMutableDictionary);
  [v5 setObject:v3 forKeyedSubscript:@"member-apple-id"];
  v6 = [(NSDictionary *)self->_authenticationResults objectForKeyedSubscript:AKAuthenticationDSIDKey];
  [v5 setObject:v6 forKeyedSubscript:@"member-dsid"];

  v7 = [(NSDictionary *)self->_authenticationResults objectForKeyedSubscript:AKAuthenticationAlternateDSIDKey];
  [v5 setObject:v7 forKeyedSubscript:@"member-altDSID"];

  v8 = [(NSDictionary *)self->_authenticationResults objectForKeyedSubscript:AKAuthenticationFirstNameKey];
  [v5 setObject:v8 forKeyedSubscript:@"member-first-name"];

  v9 = [(NSDictionary *)self->_authenticationResults objectForKeyedSubscript:AKAuthenticationLastNameKey];
  [v5 setObject:v9 forKeyedSubscript:@"member-last-name"];

  v10 = [(NSDictionary *)self->_authenticationResults objectForKeyedSubscript:AKAuthenticationIsUnderageKey];
  [v5 setObject:v10 forKeyedSubscript:@"member-is-child-account"];

  v11 = [[FAFamilyMember alloc] initWithDictionaryRepresentation:v5];
  v12 = pbb_accountsignin_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v5;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "tinkerMemberInfo: %@ tinkerFamilyMember: %@", &v14, 0x16u);
  }

  return v11;
}

- (void)signInViewController:(id)controller didCompleteWithAuthenticationResults:(id)results
{
  resultsCopy = results;
  v6 = pbb_accountsignin_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "TinkerSignin signInController:didCompleteWithSuccess", v9, 2u);
  }

  authenticationResults = self->_authenticationResults;
  self->_authenticationResults = resultsCopy;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained appleIDAuthController:self didSignInWithSuccess:1 error:0];
}

- (id)authenticationContext
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  v5 = pbb_accountsignin_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Delegate responds to authenticationContext: %@", &v12, 0xCu);
    }

    v8 = objc_loadWeakRetained(&self->_delegate);
    authenticationContext = [v8 authenticationContext];
  }

  else
  {
    if (v6)
    {
      v10 = objc_loadWeakRetained(&self->_delegate);
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Delegate does not respond to authenticationContext: %@", &v12, 0xCu);
    }

    authenticationContext = [(COSAppleIDAuthController *)self baseAppContext];
  }

  return authenticationContext;
}

- (void)contextDidPresentLoginAlertController:(id)controller
{
  v3 = pbb_accountsignin_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[COSAppleIDAuthController contextDidPresentLoginAlertController:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AKAppleIDAuthenticationInAppContextDelegate - %s", &v4, 0xCu);
  }
}

- (void)contextWillDismissLoginAlertController:(id)controller
{
  v3 = pbb_accountsignin_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[COSAppleIDAuthController contextWillDismissLoginAlertController:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AKAppleIDAuthenticationInAppContextDelegate - %s", &v4, 0xCu);
  }
}

- (void)contextDidDismissLoginAlertController:(id)controller
{
  v3 = pbb_accountsignin_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[COSAppleIDAuthController contextDidDismissLoginAlertController:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AKAppleIDAuthenticationInAppContextDelegate - %s", &v4, 0xCu);
  }
}

- (void)contextWillBeginPresentingSecondaryUI:(id)i
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 secondaryUIWillShow];
  }

  v7 = pbb_accountsignin_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[COSAppleIDAuthController contextWillBeginPresentingSecondaryUI:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AKAppleIDAuthenticationInAppContextDelegate - %s", &v8, 0xCu);
  }
}

- (void)contextDidEndPresentingSecondaryUI:(id)i
{
  v3 = pbb_accountsignin_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[COSAppleIDAuthController contextDidEndPresentingSecondaryUI:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AKAppleIDAuthenticationInAppContextDelegate - %s", &v4, 0xCu);
  }
}

- (id)remoteUIStyle
{
  v2 = objc_opt_new();

  return v2;
}

- (void)willPresentModalNavigationController:(id)controller
{
  navigationBar = [controller navigationBar];
  BPSApplyStyleToNavBar();
}

- (void)genericTermsRemoteUI:(id)i didFinishWithSuccess:(BOOL)success
{
  successCopy = success;
  v6 = pbb_accountsignin_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[COSAppleIDAuthController genericTermsRemoteUI:didFinishWithSuccess:]";
    v11 = 1024;
    v12 = successCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s success: %d", &v9, 0x12u);
  }

  if (successCopy)
  {
    [(COSAppleIDAuthController *)self _resumeSatelliteSignin];
  }

  else
  {
    satelliteSignInCompletion = self->_satelliteSignInCompletion;
    v8 = [NSError errorWithDomain:@"com.aple.COSSatelliteSignInErrorDomain" code:1 userInfo:0];
    satelliteSignInCompletion[2](satelliteSignInCompletion, -1, 0, v8);
  }
}

- (void)genericTermsRemoteUI:(id)i acceptedTermsInfo:(id)info
{
  infoCopy = info;
  v6 = pbb_accountsignin_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[COSAppleIDAuthController genericTermsRemoteUI:acceptedTermsInfo:]";
    v11 = 2114;
    v12 = infoCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s terms info: %{public}@", &v9, 0x16u);
  }

  v7 = [infoCopy copy];
  acceptedTermsInfo = self->_acceptedTermsInfo;
  self->_acceptedTermsInfo = v7;
}

- (UIViewController)presentingController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingController);

  return WeakRetained;
}

- (COSAppleIDAuthControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end