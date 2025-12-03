@interface GKCloudServiceOwner
+ (NSArray)supportedServices;
- (BOOL)BOOLFromAuthenticationContext:(id)context key:(id)key;
- (GKCloudServiceOwner)initWithAccountStore:(id)store;
- (id)DSIDForAccount:(id)account service:(id)service;
- (id)accountForService:(id)service;
- (id)accountMatchingUsername:(id)username serviceType:(id)type;
- (id)accountsForService:(id)service;
- (id)altDSIDForAccount:(id)account service:(id)service;
- (id)nameComponentsForAccount:(id)account service:(id)service;
- (void)authenticateWithContext:(id)context completion:(id)completion;
- (void)signInService:(id)service withContext:(id)context completion:(id)completion;
- (void)signOutService:(id)service withContext:(id)context completion:(id)completion;
@end

@implementation GKCloudServiceOwner

+ (NSArray)supportedServices
{
  v4 = AIDAServiceTypeGameCenter;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (GKCloudServiceOwner)initWithAccountStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = GKCloudServiceOwner;
  v6 = [(GKCloudServiceOwner *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountStore, store);
  }

  return v7;
}

- (id)accountForService:(id)service
{
  v3 = [(GKCloudServiceOwner *)self accountsForService:service];
  firstObject = [v3 firstObject];

  return firstObject;
}

- (id)accountMatchingUsername:(id)username serviceType:(id)type
{
  usernameCopy = username;
  v7 = [(GKCloudServiceOwner *)self accountsForService:type];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1014;
  v14[3] = &unk_41D8;
  v8 = usernameCopy;
  v15 = v8;
  v9 = [v7 _gkFilterWithBlock:v14];
  if ([v9 count] >= 2)
  {
    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
    }

    v11 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_1D64(v11);
    }
  }

  firstObject = [v9 firstObject];

  return firstObject;
}

- (id)accountsForService:(id)service
{
  accountStore = self->_accountStore;
  _gameCenterAccountType = [(GKCloudServiceOwner *)self _gameCenterAccountType];
  v5 = [(ACAccountStore *)accountStore accountsWithAccountType:_gameCenterAccountType];

  return v5;
}

- (void)signInService:(id)service withContext:(id)context completion:(id)completion
{
  serviceCopy = service;
  contextCopy = context;
  completionCopy = completion;
  v11 = [NSUserDefaults alloc];
  v12 = [v11 initWithSuiteName:GKDaemonIdentifier];
  signInContexts = [contextCopy signInContexts];
  v14 = [signInContexts objectForKeyedSubscript:AIDAServiceTypeGameCenter];
  v15 = [(GKCloudServiceOwner *)self BOOLFromAuthenticationContext:v14 key:@"settingsToggleSignIn"];

  v16 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v17 = GKOSLoggers();
    v16 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v44 = v15;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Attempting to sign in with opt in flag of %d", buf, 8u);
  }

  if (([contextCopy shouldForceOperation] | v15))
  {
    [v12 removeObjectForKey:GKOptedOutOfGameCenter];
  }

  else
  {
    v18 = [v12 objectForKey:GKOptedOutOfGameCenter];
    bOOLValue = [v18 BOOLValue];

    if (bOOLValue)
    {
      v20 = os_log_GKGeneral;
      if (!os_log_GKGeneral)
      {
        v21 = GKOSLoggers();
        v20 = os_log_GKGeneral;
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "Game Center cloud service owner is ignoring callback after authentication since user has opted out of Game Center.", buf, 2u);
      }

      v22 = [NSError errorWithDomain:GKInternalErrorDomain code:100 userInfo:0];
      goto LABEL_18;
    }
  }

  v23 = +[GKPreferences shared];
  if (![v23 isAccountModificationRestricted])
  {
    v24 = +[GKPreferences shared];
    isGameCenterRestricted = [v24 isGameCenterRestricted];

    if (isGameCenterRestricted)
    {
      goto LABEL_16;
    }

    authenticationResults = [contextCopy authenticationResults];
    v29 = [authenticationResults objectForKeyedSubscript:AKAuthenticationAppleIDAuthModeKey];
    unsignedIntegerValue = [v29 unsignedIntegerValue];

    if (unsignedIntegerValue == &dword_0 + 2)
    {
      v26 = 4;
      goto LABEL_17;
    }

    authenticationResults2 = [contextCopy authenticationResults];
    v27 = [authenticationResults2 objectForKeyedSubscript:AKAuthenticationUsernameKey];

    v32 = [(GKCloudServiceOwner *)self accountMatchingUsername:v27 serviceType:serviceCopy];
    v33 = [NSString stringWithFormat:@"%s:%d %s", "GKCloudServiceOwner.m", 201, "[GKCloudServiceOwner signInService:withContext:completion:]"];
    v34 = [GKDispatchGroup dispatchGroupWithName:v33];

    if (v32)
    {
      if (([contextCopy shouldForceOperation] & 1) == 0)
      {
        v35 = +[GKDaemonProxy proxyForLocalPlayer];
        utilityServicePrivate = [v35 utilityServicePrivate];
        [utilityServicePrivate updateNotificationTopicsForcefully:0];

        completionCopy[2](completionCopy, 1, 0);
        goto LABEL_27;
      }

      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_15C8;
      v40[3] = &unk_4228;
      v40[4] = self;
      v41 = serviceCopy;
      v42 = contextCopy;
      [v34 perform:v40];
    }

    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1684;
    v37[3] = &unk_4250;
    v37[4] = self;
    v38 = contextCopy;
    v39 = completionCopy;
    [v34 notifyOnMainQueueWithBlock:v37];

LABEL_27:
    goto LABEL_19;
  }

LABEL_16:
  v26 = 10;
LABEL_17:
  v22 = [NSError userErrorForCode:v26 underlyingError:0];
LABEL_18:
  v27 = v22;
  completionCopy[2](completionCopy, 0, v22);
LABEL_19:
}

- (void)authenticateWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  authenticationResults = [contextCopy authenticationResults];
  v9 = [authenticationResults objectForKeyedSubscript:AKAuthenticationUsernameKey];

  authenticationResults2 = [contextCopy authenticationResults];
  v11 = [authenticationResults2 objectForKeyedSubscript:AKAuthenticationPasswordKey];

  viewController = [contextCopy viewController];
  v13 = [GKLocalPlayerAuthenticator authenticatorForPlayerWithUsername:v9 password:v11 withPresentingViewController:viewController];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1DA8(viewController);
  }

  authenticationResults3 = [contextCopy authenticationResults];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1824;
  v16[3] = &unk_4278;
  v16[4] = self;
  v17 = completionCopy;
  v15 = completionCopy;
  [v13 authenticateWithAuthKitResults:authenticationResults3 completionHandler:v16];
}

- (void)signOutService:(id)service withContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v9 = +[GKPreferences shared];
  isAccountModificationRestricted = [v9 isAccountModificationRestricted];

  if (isAccountModificationRestricted)
  {
    v11 = [NSError userErrorForCode:10 underlyingError:0];
    completionCopy[2](completionCopy, 0, v11);
  }

  else
  {
    v11 = +[GKLocalPlayer localPlayer];
    if (v11)
    {
      signOutContexts = [contextCopy signOutContexts];
      v13 = [signOutContexts objectForKeyedSubscript:AIDAServiceTypeGameCenter];
      v14 = [(GKCloudServiceOwner *)self BOOLFromAuthenticationContext:v13 key:@"settingsToggleSignOut"];

      v15 = os_log_GKGeneral;
      if (!os_log_GKGeneral)
      {
        v16 = GKOSLoggers();
        v15 = os_log_GKGeneral;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v20 = v14;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Signing out with opt out flag of %d", buf, 8u);
      }

      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1AF8;
      v17[3] = &unk_42A0;
      v18 = completionCopy;
      [v11 signOutAndOptOut:v14 completionHandler:v17];
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_1EA8();
      }

      completionCopy[2](completionCopy, 0, 0);
    }
  }
}

- (BOOL)BOOLFromAuthenticationContext:(id)context key:(id)key
{
  contextCopy = context;
  keyCopy = key;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [contextCopy BOOLValueFromKey:keyCopy defaultValue:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)nameComponentsForAccount:(id)account service:(id)service
{
  v4 = [GKLocalPlayer localPlayer:account];
  v5 = objc_alloc_init(NSPersonNameComponents);
  firstName = [v4 firstName];
  [v5 setGivenName:firstName];

  lastName = [v4 lastName];
  [v5 setFamilyName:lastName];

  alias = [v4 alias];
  [v5 setNickname:alias];

  return v5;
}

- (id)DSIDForAccount:(id)account service:(id)service
{
  v4 = [account objectForKeyedSubscript:{@"dsid", service}];
  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)altDSIDForAccount:(id)account service:(id)service
{
  accountCopy = account;
  v5 = [accountCopy objectForKeyedSubscript:@"GKEnvironment"];
  v6 = [NSString stringWithFormat:@"altDSID-%@", v5];

  v7 = [accountCopy objectForKeyedSubscript:v6];

  return v7;
}

@end