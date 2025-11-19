@interface GKCloudServiceOwner
+ (NSArray)supportedServices;
- (BOOL)BOOLFromAuthenticationContext:(id)a3 key:(id)a4;
- (GKCloudServiceOwner)initWithAccountStore:(id)a3;
- (id)DSIDForAccount:(id)a3 service:(id)a4;
- (id)accountForService:(id)a3;
- (id)accountMatchingUsername:(id)a3 serviceType:(id)a4;
- (id)accountsForService:(id)a3;
- (id)altDSIDForAccount:(id)a3 service:(id)a4;
- (id)nameComponentsForAccount:(id)a3 service:(id)a4;
- (void)authenticateWithContext:(id)a3 completion:(id)a4;
- (void)signInService:(id)a3 withContext:(id)a4 completion:(id)a5;
- (void)signOutService:(id)a3 withContext:(id)a4 completion:(id)a5;
@end

@implementation GKCloudServiceOwner

+ (NSArray)supportedServices
{
  v4 = AIDAServiceTypeGameCenter;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (GKCloudServiceOwner)initWithAccountStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = GKCloudServiceOwner;
  v6 = [(GKCloudServiceOwner *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountStore, a3);
  }

  return v7;
}

- (id)accountForService:(id)a3
{
  v3 = [(GKCloudServiceOwner *)self accountsForService:a3];
  v4 = [v3 firstObject];

  return v4;
}

- (id)accountMatchingUsername:(id)a3 serviceType:(id)a4
{
  v6 = a3;
  v7 = [(GKCloudServiceOwner *)self accountsForService:a4];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1014;
  v14[3] = &unk_41D8;
  v8 = v6;
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

  v12 = [v9 firstObject];

  return v12;
}

- (id)accountsForService:(id)a3
{
  accountStore = self->_accountStore;
  v4 = [(GKCloudServiceOwner *)self _gameCenterAccountType];
  v5 = [(ACAccountStore *)accountStore accountsWithAccountType:v4];

  return v5;
}

- (void)signInService:(id)a3 withContext:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [NSUserDefaults alloc];
  v12 = [v11 initWithSuiteName:GKDaemonIdentifier];
  v13 = [v9 signInContexts];
  v14 = [v13 objectForKeyedSubscript:AIDAServiceTypeGameCenter];
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

  if (([v9 shouldForceOperation] | v15))
  {
    [v12 removeObjectForKey:GKOptedOutOfGameCenter];
  }

  else
  {
    v18 = [v12 objectForKey:GKOptedOutOfGameCenter];
    v19 = [v18 BOOLValue];

    if (v19)
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
    v25 = [v24 isGameCenterRestricted];

    if (v25)
    {
      goto LABEL_16;
    }

    v28 = [v9 authenticationResults];
    v29 = [v28 objectForKeyedSubscript:AKAuthenticationAppleIDAuthModeKey];
    v30 = [v29 unsignedIntegerValue];

    if (v30 == &dword_0 + 2)
    {
      v26 = 4;
      goto LABEL_17;
    }

    v31 = [v9 authenticationResults];
    v27 = [v31 objectForKeyedSubscript:AKAuthenticationUsernameKey];

    v32 = [(GKCloudServiceOwner *)self accountMatchingUsername:v27 serviceType:v8];
    v33 = [NSString stringWithFormat:@"%s:%d %s", "GKCloudServiceOwner.m", 201, "[GKCloudServiceOwner signInService:withContext:completion:]"];
    v34 = [GKDispatchGroup dispatchGroupWithName:v33];

    if (v32)
    {
      if (([v9 shouldForceOperation] & 1) == 0)
      {
        v35 = +[GKDaemonProxy proxyForLocalPlayer];
        v36 = [v35 utilityServicePrivate];
        [v36 updateNotificationTopicsForcefully:0];

        v10[2](v10, 1, 0);
        goto LABEL_27;
      }

      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_15C8;
      v40[3] = &unk_4228;
      v40[4] = self;
      v41 = v8;
      v42 = v9;
      [v34 perform:v40];
    }

    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1684;
    v37[3] = &unk_4250;
    v37[4] = self;
    v38 = v9;
    v39 = v10;
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
  v10[2](v10, 0, v22);
LABEL_19:
}

- (void)authenticateWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 authenticationResults];
  v9 = [v8 objectForKeyedSubscript:AKAuthenticationUsernameKey];

  v10 = [v6 authenticationResults];
  v11 = [v10 objectForKeyedSubscript:AKAuthenticationPasswordKey];

  v12 = [v6 viewController];
  v13 = [GKLocalPlayerAuthenticator authenticatorForPlayerWithUsername:v9 password:v11 withPresentingViewController:v12];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1DA8(v12);
  }

  v14 = [v6 authenticationResults];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1824;
  v16[3] = &unk_4278;
  v16[4] = self;
  v17 = v7;
  v15 = v7;
  [v13 authenticateWithAuthKitResults:v14 completionHandler:v16];
}

- (void)signOutService:(id)a3 withContext:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = +[GKPreferences shared];
  v10 = [v9 isAccountModificationRestricted];

  if (v10)
  {
    v11 = [NSError userErrorForCode:10 underlyingError:0];
    v8[2](v8, 0, v11);
  }

  else
  {
    v11 = +[GKLocalPlayer localPlayer];
    if (v11)
    {
      v12 = [v7 signOutContexts];
      v13 = [v12 objectForKeyedSubscript:AIDAServiceTypeGameCenter];
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
      v18 = v8;
      [v11 signOutAndOptOut:v14 completionHandler:v17];
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_1EA8();
      }

      v8[2](v8, 0, 0);
    }
  }
}

- (BOOL)BOOLFromAuthenticationContext:(id)a3 key:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 BOOLValueFromKey:v6 defaultValue:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)nameComponentsForAccount:(id)a3 service:(id)a4
{
  v4 = [GKLocalPlayer localPlayer:a3];
  v5 = objc_alloc_init(NSPersonNameComponents);
  v6 = [v4 firstName];
  [v5 setGivenName:v6];

  v7 = [v4 lastName];
  [v5 setFamilyName:v7];

  v8 = [v4 alias];
  [v5 setNickname:v8];

  return v5;
}

- (id)DSIDForAccount:(id)a3 service:(id)a4
{
  v4 = [a3 objectForKeyedSubscript:{@"dsid", a4}];
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

- (id)altDSIDForAccount:(id)a3 service:(id)a4
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"GKEnvironment"];
  v6 = [NSString stringWithFormat:@"altDSID-%@", v5];

  v7 = [v4 objectForKeyedSubscript:v6];

  return v7;
}

@end