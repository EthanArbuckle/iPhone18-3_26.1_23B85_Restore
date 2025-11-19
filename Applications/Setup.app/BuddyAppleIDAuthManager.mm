@interface BuddyAppleIDAuthManager
+ (id)_contextForPrimaryAccount;
+ (id)_contextForPrimaryAccountSilentAuth;
+ (id)_contextFromAuthenticationResults:(id)a3 requiresAppleMAID:(BOOL)a4;
+ (id)managerWithNavigationController:(id)a3 passcodeCacheManager:(id)a4;
+ (void)_authWithContext:(id)a3 completion:(id)a4;
+ (void)silentAuthenticationForPrimaryAccountWithCompletion:(id)a3;
+ (void)silentAuthenticationWithAuthenticationResults:(id)a3 requiresAppleMAID:(BOOL)a4 completion:(id)a5;
- (BuddyAppleIDAuthManager)initWithNavigationController:(id)a3 passcodeCacheManager:(id)a4;
- (id)authContext;
- (void)_authenticateWithSignInController:(id)a3 completion:(id)a4;
- (void)authenticateWithSignInController:(id)a3 username:(id)a4 password:(id)a5 altDSID:(id)a6 completion:(id)a7;
- (void)authenticateWithSignInController:(id)a3 username:(id)a4 password:(id)a5 completion:(id)a6;
- (void)fetchAuthModeForUsername:(id)a3 requiresAppleMAID:(BOOL)a4 completion:(id)a5;
@end

@implementation BuddyAppleIDAuthManager

+ (id)managerWithNavigationController:(id)a3 passcodeCacheManager:(id)a4
{
  v13 = a1;
  v12 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  if (!location)
  {
    v5 = +[NSAssertionHandler currentHandler];
    [(NSAssertionHandler *)v5 handleFailureInMethod:v12 object:v13 file:@"BuddyAppleIDAuthManager.m" lineNumber:50 description:@"Invalid parameter not satisfying: %@", @"navigationController != nil"];
  }

  v6 = [v13 alloc];
  v9 = [v6 initWithNavigationController:location passcodeCacheManager:v10];
  v7 = v9;
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
  return v7;
}

- (BuddyAppleIDAuthManager)initWithNavigationController:(id)a3 passcodeCacheManager:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  obj = 0;
  objc_storeStrong(&obj, a4);
  v5 = v11;
  v11 = 0;
  v8.receiver = v5;
  v8.super_class = BuddyAppleIDAuthManager;
  v11 = [(BuddyAppleIDAuthManager *)&v8 init];
  objc_storeStrong(&v11, v11);
  if (v11)
  {
    objc_storeWeak(v11 + 2, location[0]);
    objc_storeStrong(v11 + 7, obj);
  }

  v6 = v11;
  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v6;
}

+ (void)silentAuthenticationForPrimaryAccountWithCompletion:(id)a3
{
  v6 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [objc_opt_class() _contextForPrimaryAccountSilentAuth];
  [v6 _authWithContext:v3 completion:{location[0], v3}];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

+ (void)silentAuthenticationWithAuthenticationResults:(id)a3 requiresAppleMAID:(BOOL)a4 completion:(id)a5
{
  v12 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = a4;
  v9 = 0;
  objc_storeStrong(&v9, a5);
  v7 = [objc_opt_class() _contextFromAuthenticationResults:location[0] requiresAppleMAID:v10];
  [v12 _authWithContext:v7 completion:{v9, v7}];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

+ (void)_authWithContext:(id)a3 completion:(id)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5 = objc_alloc_init(AKAppleIDAuthenticationController);
  [v5 authenticateWithContext:location[0] completion:v6];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

+ (id)_contextForPrimaryAccountSilentAuth
{
  location[2] = a1;
  location[1] = a2;
  location[0] = [a1 _contextForPrimaryAccount];
  [location[0] setShouldPreventInteractiveAuth:1];
  [location[0] setIsUsernameEditable:0];
  v2 = location[0];
  objc_storeStrong(location, 0);
  return v2;
}

+ (id)_contextFromAuthenticationResults:(id)a3 requiresAppleMAID:(BOOL)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = a4;
  v10 = objc_opt_new();
  v5 = [location[0] objectForKeyedSubscript:AKAuthenticationUsernameKey];
  [v10 setUsername:v5];

  v6 = [location[0] objectForKeyedSubscript:AKAuthenticationAlternateDSIDKey];
  [v10 setAltDSID:v6];

  [v10 setAuthenticationType:1];
  [v10 setIsUsernameEditable:0];
  v7 = [location[0] objectForKeyedSubscript:AKAuthenticationIdentityTokenKey];
  [v10 _setIdentityToken:v7];

  if (v11 && (+[DMCFeatureOverrides allowAnyMAIDToSignIn]& 1) == 0)
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
  v8[2] = a1;
  v8[1] = a2;
  v8[0] = objc_alloc_init(ACAccountStore);
  v7 = [v8[0] aa_primaryAppleAccount];
  location = objc_alloc_init(AKAppleIDAuthenticationContext);
  v2 = [v7 aa_altDSID];
  [location setAltDSID:v2];

  v3 = [v7 username];
  [location setUsername:v3];

  v4 = location;
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(v8, 0);
  return v4;
}

- (id)authContext
{
  v15 = self;
  location[1] = a2;
  if (!self->_authContext)
  {
    v2 = objc_opt_new();
    authContext = v15->_authContext;
    v15->_authContext = v2;

    v4 = v15->_authContext;
    WeakRetained = objc_loadWeakRetained(&v15->_nav);
    [(AKAppleIDAuthenticationPurpleBuddyContext *)v4 setPresentingViewController:WeakRetained];

    [(AKAppleIDAuthenticationPurpleBuddyContext *)v15->_authContext setShouldOfferSecurityUpgrade:v15->_shouldOfferSecurityUpgrade];
    [(AKAppleIDAuthenticationPurpleBuddyContext *)v15->_authContext setFirstTimeLogin:v15->_firstTimeLogin];
    if (v15->_serviceType)
    {
      serviceType = v15->_serviceType;
    }

    else
    {
      serviceType = 1;
    }

    [(AKAppleIDAuthenticationPurpleBuddyContext *)v15->_authContext setServiceType:serviceType];
    if ([(BuddyAppleIDAuthManager *)v15 hasContinuationKey])
    {
      [(AKAppleIDAuthenticationPurpleBuddyContext *)v15->_authContext setShouldForceInteractiveAuth:0];
      [(AKAppleIDAuthenticationPurpleBuddyContext *)v15->_authContext setShouldPreventInteractiveAuth:1];
      [(AKAppleIDAuthenticationPurpleBuddyContext *)v15->_authContext setIsUsernameEditable:0];
    }

    v7 = [(AKAppleIDAuthenticationPurpleBuddyContext *)v15->_authContext httpHeadersForRemoteUI];
    v8 = [v7 mutableCopy];
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

    [(AKAppleIDAuthenticationPurpleBuddyContext *)v15->_authContext setHttpHeadersForRemoteUI:location[0]];
    objc_storeStrong(location, 0);
  }

  v10 = v15->_authContext;

  return v10;
}

- (void)_authenticateWithSignInController:(id)a3 completion:(id)a4
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  objc_storeWeak(&v24->_signInController, location[0]);
  [location[0] setEnabled:0];
  v21 = objc_opt_new();
  v5 = [(BuddyAppleIDAuthManager *)v24 authContext];
  [v5 setAnticipateEscrowAttempt:1];

  v6 = [(BuddyAppleIDAuthManager *)v24 authContext];
  [v6 setShouldRequestConfigurationInfo:1];

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
  v10 = [(BuddyAppleIDAuthManager *)v24 authContext];
  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_1000EFC84;
  v15 = &unk_10032CBC8;
  v16 = location[0];
  v17 = v22;
  [v9 authenticateWithContext:v10 completion:&v11];

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)authenticateWithSignInController:(id)a3 username:(id)a4 password:(id)a5 completion:(id)a6
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = 0;
  objc_storeStrong(&v10, a5);
  v9 = 0;
  objc_storeStrong(&v9, a6);
  [(BuddyAppleIDAuthManager *)v13 authenticateWithSignInController:location[0] username:v11 password:v10 altDSID:0 completion:v9];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)authenticateWithSignInController:(id)a3 username:(id)a4 password:(id)a5 altDSID:(id)a6 completion:(id)a7
{
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = 0;
  objc_storeStrong(&v25, a4);
  v24 = 0;
  objc_storeStrong(&v24, a5);
  v23 = 0;
  objc_storeStrong(&v23, a6);
  v22 = 0;
  objc_storeStrong(&v22, a7);
  objc_storeStrong(&v27->_authContext, 0);
  v11 = v25;
  v12 = +[NSCharacterSet whitespaceCharacterSet];
  v13 = [v11 stringByTrimmingCharactersInSet:v12];
  v14 = v25;
  v25 = v13;

  v15 = [(BuddyAppleIDAuthManager *)v27 authContext];
  [v15 setUsername:v25];

  v16 = [(BuddyAppleIDAuthManager *)v27 authContext];
  [v16 _setPassword:v24];

  if (v27->_accountToUpgrade)
  {
    authContext = v27->_authContext;
    v18 = [(ACAccount *)v27->_accountToUpgrade aa_personID];
    [(AKAppleIDAuthenticationPurpleBuddyContext *)authContext setDSID:v18];

    v19 = v27->_authContext;
    v20 = [(ACAccount *)v27->_accountToUpgrade aa_altDSID];
    [(AKAppleIDAuthenticationPurpleBuddyContext *)v19 setAltDSID:v20];
  }

  else if (v23)
  {
    v21 = [(BuddyAppleIDAuthManager *)v27 authContext];
    [v21 setAltDSID:v23];
  }

  [(BuddyAppleIDAuthManager *)v27 _authenticateWithSignInController:location[0] completion:v22];
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchAuthModeForUsername:(id)a3 requiresAppleMAID:(BOOL)a4 completion:(id)a5
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = a4;
  v25 = 0;
  objc_storeStrong(&v25, a5);
  v24 = objc_opt_new();
  v7 = location[0];
  v8 = +[NSCharacterSet whitespaceCharacterSet];
  v9 = [v7 stringByTrimmingCharactersInSet:v8];
  v10 = location[0];
  location[0] = v9;

  [v24 setUsername:location[0]];
  if (v26)
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