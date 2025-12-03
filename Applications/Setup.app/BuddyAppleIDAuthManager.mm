@interface BuddyAppleIDAuthManager
+ (id)_contextForPrimaryAccount;
+ (id)_contextForPrimaryAccountSilentAuth;
+ (id)_contextFromAuthenticationResults:(id)results requiresAppleMAID:(BOOL)d;
+ (id)managerWithNavigationController:(id)controller passcodeCacheManager:(id)manager;
+ (void)_authWithContext:(id)context completion:(id)completion;
+ (void)silentAuthenticationForPrimaryAccountWithCompletion:(id)completion;
+ (void)silentAuthenticationWithAuthenticationResults:(id)results requiresAppleMAID:(BOOL)d completion:(id)completion;
- (BuddyAppleIDAuthManager)initWithNavigationController:(id)controller passcodeCacheManager:(id)manager;
- (id)authContext;
- (void)_authenticateWithSignInController:(id)controller completion:(id)completion;
- (void)authenticateWithSignInController:(id)controller username:(id)username password:(id)password altDSID:(id)d completion:(id)completion;
- (void)authenticateWithSignInController:(id)controller username:(id)username password:(id)password completion:(id)completion;
- (void)fetchAuthModeForUsername:(id)username requiresAppleMAID:(BOOL)d completion:(id)completion;
@end

@implementation BuddyAppleIDAuthManager

+ (id)managerWithNavigationController:(id)controller passcodeCacheManager:(id)manager
{
  selfCopy = self;
  v12 = a2;
  location = 0;
  objc_storeStrong(&location, controller);
  v10 = 0;
  objc_storeStrong(&v10, manager);
  if (!location)
  {
    v5 = +[NSAssertionHandler currentHandler];
    [(NSAssertionHandler *)v5 handleFailureInMethod:v12 object:selfCopy file:@"BuddyAppleIDAuthManager.m" lineNumber:50 description:@"Invalid parameter not satisfying: %@", @"navigationController != nil"];
  }

  v6 = [selfCopy alloc];
  v9 = [v6 initWithNavigationController:location passcodeCacheManager:v10];
  v7 = v9;
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
  return v7;
}

- (BuddyAppleIDAuthManager)initWithNavigationController:(id)controller passcodeCacheManager:(id)manager
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  obj = 0;
  objc_storeStrong(&obj, manager);
  v5 = selfCopy;
  selfCopy = 0;
  v8.receiver = v5;
  v8.super_class = BuddyAppleIDAuthManager;
  selfCopy = [(BuddyAppleIDAuthManager *)&v8 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeWeak(selfCopy + 2, location[0]);
    objc_storeStrong(selfCopy + 7, obj);
  }

  v6 = selfCopy;
  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

+ (void)silentAuthenticationForPrimaryAccountWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  _contextForPrimaryAccountSilentAuth = [objc_opt_class() _contextForPrimaryAccountSilentAuth];
  [selfCopy _authWithContext:_contextForPrimaryAccountSilentAuth completion:{location[0], _contextForPrimaryAccountSilentAuth}];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

+ (void)silentAuthenticationWithAuthenticationResults:(id)results requiresAppleMAID:(BOOL)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  dCopy = d;
  v9 = 0;
  objc_storeStrong(&v9, completion);
  v7 = [objc_opt_class() _contextFromAuthenticationResults:location[0] requiresAppleMAID:dCopy];
  [selfCopy _authWithContext:v7 completion:{v9, v7}];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

+ (void)_authWithContext:(id)context completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v6 = 0;
  objc_storeStrong(&v6, completion);
  v5 = objc_alloc_init(AKAppleIDAuthenticationController);
  [v5 authenticateWithContext:location[0] completion:v6];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

+ (id)_contextForPrimaryAccountSilentAuth
{
  location[2] = self;
  location[1] = a2;
  location[0] = [self _contextForPrimaryAccount];
  [location[0] setShouldPreventInteractiveAuth:1];
  [location[0] setIsUsernameEditable:0];
  v2 = location[0];
  objc_storeStrong(location, 0);
  return v2;
}

+ (id)_contextFromAuthenticationResults:(id)results requiresAppleMAID:(BOOL)d
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  dCopy = d;
  v10 = objc_opt_new();
  v5 = [location[0] objectForKeyedSubscript:AKAuthenticationUsernameKey];
  [v10 setUsername:v5];

  v6 = [location[0] objectForKeyedSubscript:AKAuthenticationAlternateDSIDKey];
  [v10 setAltDSID:v6];

  [v10 setAuthenticationType:1];
  [v10 setIsUsernameEditable:0];
  v7 = [location[0] objectForKeyedSubscript:AKAuthenticationIdentityTokenKey];
  [v10 _setIdentityToken:v7];

  if (dCopy && (+[DMCFeatureOverrides allowAnyMAIDToSignIn]& 1) == 0)
  {
    [v10 setAppProvidedContext:kAppleMAIDSignInProvidedContext];
  }

  v8 = v10;
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return v8;
}

+ (id)_contextForPrimaryAccount
{
  v8[2] = self;
  v8[1] = a2;
  v8[0] = objc_alloc_init(ACAccountStore);
  aa_primaryAppleAccount = [v8[0] aa_primaryAppleAccount];
  location = objc_alloc_init(AKAppleIDAuthenticationContext);
  aa_altDSID = [aa_primaryAppleAccount aa_altDSID];
  [location setAltDSID:aa_altDSID];

  username = [aa_primaryAppleAccount username];
  [location setUsername:username];

  v4 = location;
  objc_storeStrong(&location, 0);
  objc_storeStrong(&aa_primaryAppleAccount, 0);
  objc_storeStrong(v8, 0);
  return v4;
}

- (id)authContext
{
  selfCopy = self;
  location[1] = a2;
  if (!self->_authContext)
  {
    v2 = objc_opt_new();
    authContext = selfCopy->_authContext;
    selfCopy->_authContext = v2;

    v4 = selfCopy->_authContext;
    WeakRetained = objc_loadWeakRetained(&selfCopy->_nav);
    [(AKAppleIDAuthenticationPurpleBuddyContext *)v4 setPresentingViewController:WeakRetained];

    [(AKAppleIDAuthenticationPurpleBuddyContext *)selfCopy->_authContext setShouldOfferSecurityUpgrade:selfCopy->_shouldOfferSecurityUpgrade];
    [(AKAppleIDAuthenticationPurpleBuddyContext *)selfCopy->_authContext setFirstTimeLogin:selfCopy->_firstTimeLogin];
    if (selfCopy->_serviceType)
    {
      serviceType = selfCopy->_serviceType;
    }

    else
    {
      serviceType = 1;
    }

    [(AKAppleIDAuthenticationPurpleBuddyContext *)selfCopy->_authContext setServiceType:serviceType];
    if ([(BuddyAppleIDAuthManager *)selfCopy hasContinuationKey])
    {
      [(AKAppleIDAuthenticationPurpleBuddyContext *)selfCopy->_authContext setShouldForceInteractiveAuth:0];
      [(AKAppleIDAuthenticationPurpleBuddyContext *)selfCopy->_authContext setShouldPreventInteractiveAuth:1];
      [(AKAppleIDAuthenticationPurpleBuddyContext *)selfCopy->_authContext setIsUsernameEditable:0];
    }

    httpHeadersForRemoteUI = [(AKAppleIDAuthenticationPurpleBuddyContext *)selfCopy->_authContext httpHeadersForRemoteUI];
    v8 = [httpHeadersForRemoteUI mutableCopy];
    v9 = v8;
    v12 = 0;
    if (!v8)
    {
      v8 = objc_opt_new();
      v13 = v8;
      v12 = 1;
    }

    location[0] = v8;
    if (v12)
    {
    }

    if ((+[BYWarranty shouldDisplay]& 1) != 0)
    {
      [location[0] setObject:@"true" forKey:@"X-MMe-Show-Warranty"];
    }

    [(AKAppleIDAuthenticationPurpleBuddyContext *)selfCopy->_authContext setHttpHeadersForRemoteUI:location[0]];
    objc_storeStrong(location, 0);
  }

  v10 = selfCopy->_authContext;

  return v10;
}

- (void)_authenticateWithSignInController:(id)controller completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v22 = 0;
  objc_storeStrong(&v22, completion);
  objc_storeWeak(&selfCopy->_signInController, location[0]);
  [location[0] setEnabled:0];
  v21 = objc_opt_new();
  authContext = [(BuddyAppleIDAuthManager *)selfCopy authContext];
  [authContext setAnticipateEscrowAttempt:1];

  authContext2 = [(BuddyAppleIDAuthManager *)selfCopy authContext];
  [authContext2 setShouldRequestConfigurationInfo:1];

  oslog = _BYLoggingFacility();
  v19 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = oslog;
    v8 = v19;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v7, v8, "Starting authenticateWithContext...", buf, 2u);
  }

  objc_storeStrong(&oslog, 0);
  v9 = v21;
  authContext3 = [(BuddyAppleIDAuthManager *)selfCopy authContext];
  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_1000EFC84;
  v15 = &unk_10032CBC8;
  v16 = location[0];
  v17 = v22;
  [v9 authenticateWithContext:authContext3 completion:&v11];

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)authenticateWithSignInController:(id)controller username:(id)username password:(id)password completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v11 = 0;
  objc_storeStrong(&v11, username);
  v10 = 0;
  objc_storeStrong(&v10, password);
  v9 = 0;
  objc_storeStrong(&v9, completion);
  [(BuddyAppleIDAuthManager *)selfCopy authenticateWithSignInController:location[0] username:v11 password:v10 altDSID:0 completion:v9];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)authenticateWithSignInController:(id)controller username:(id)username password:(id)password altDSID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v25 = 0;
  objc_storeStrong(&v25, username);
  v24 = 0;
  objc_storeStrong(&v24, password);
  v23 = 0;
  objc_storeStrong(&v23, d);
  v22 = 0;
  objc_storeStrong(&v22, completion);
  objc_storeStrong(&selfCopy->_authContext, 0);
  v11 = v25;
  v12 = +[NSCharacterSet whitespaceCharacterSet];
  v13 = [v11 stringByTrimmingCharactersInSet:v12];
  v14 = v25;
  v25 = v13;

  authContext = [(BuddyAppleIDAuthManager *)selfCopy authContext];
  [authContext setUsername:v25];

  authContext2 = [(BuddyAppleIDAuthManager *)selfCopy authContext];
  [authContext2 _setPassword:v24];

  if (selfCopy->_accountToUpgrade)
  {
    authContext = selfCopy->_authContext;
    aa_personID = [(ACAccount *)selfCopy->_accountToUpgrade aa_personID];
    [(AKAppleIDAuthenticationPurpleBuddyContext *)authContext setDSID:aa_personID];

    v19 = selfCopy->_authContext;
    aa_altDSID = [(ACAccount *)selfCopy->_accountToUpgrade aa_altDSID];
    [(AKAppleIDAuthenticationPurpleBuddyContext *)v19 setAltDSID:aa_altDSID];
  }

  else if (v23)
  {
    authContext3 = [(BuddyAppleIDAuthManager *)selfCopy authContext];
    [authContext3 setAltDSID:v23];
  }

  [(BuddyAppleIDAuthManager *)selfCopy _authenticateWithSignInController:location[0] completion:v22];
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchAuthModeForUsername:(id)username requiresAppleMAID:(BOOL)d completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, username);
  dCopy = d;
  v25 = 0;
  objc_storeStrong(&v25, completion);
  v24 = objc_opt_new();
  v7 = location[0];
  v8 = +[NSCharacterSet whitespaceCharacterSet];
  v9 = [v7 stringByTrimmingCharactersInSet:v8];
  v10 = location[0];
  location[0] = v9;

  [v24 setUsername:location[0]];
  if (dCopy)
  {
    [v24 setAppProvidedContext:kAppleMAIDSignInProvidedContext];
  }

  oslog = _BYLoggingFacility();
  v22 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = oslog;
    v12 = v22;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v11, v12, "Fetching auth mode for account", buf, 2u);
  }

  objc_storeStrong(&oslog, 0);
  v20 = objc_opt_new();
  v13 = v24;
  v14 = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_1000F078C;
  v18 = &unk_10032CC18;
  v19 = v25;
  [v20 fetchAuthModeWithContext:v13 completion:&v14];
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

@end