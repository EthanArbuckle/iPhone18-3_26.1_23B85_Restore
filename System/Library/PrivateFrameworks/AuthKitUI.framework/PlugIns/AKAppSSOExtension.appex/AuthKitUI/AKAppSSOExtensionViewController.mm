@interface AKAppSSOExtensionViewController
- (AKAppSSOExtensionViewController)init;
- (BOOL)_auditTokenFromData:(id)a3 auditToken:(id *)a4;
- (BOOL)_canProcessRequestForFirstParty:(id)a3;
- (BOOL)checkEntitlementForAuditToken:(id *)a3 entitlement:(id)a4;
- (id)topPresentedViewControllerForController:(id)a3;
- (void)_handleUnknowRequest:(id)a3;
- (void)_performAuthorizationWithRequest:(id)a3;
- (void)_performPasswordResetNativeTakeOverWithRequest:(id)a3;
- (void)beginAuthorizationWithRequest:(id)a3;
- (void)cancelAuthorizationWithRequest:(id)a3;
- (void)viewDidLoad;
@end

@implementation AKAppSSOExtensionViewController

- (AKAppSSOExtensionViewController)init
{
  v7 = a2;
  v8 = 0;
  v6.receiver = self;
  v6.super_class = AKAppSSOExtensionViewController;
  v8 = [(AKAppSSOExtensionViewController *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    v2 = objc_alloc_init(AKWebAuthorizationController);
    proxy = v8->_proxy;
    v8->_proxy = v2;
  }

  v5 = v8;
  objc_storeStrong(&v8, 0);
  return v5;
}

- (void)viewDidLoad
{
  v6 = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = AKAppSSOExtensionViewController;
  [(AKAppSSOExtensionViewController *)&v4 viewDidLoad];
  v3 = +[UIColor clearColor];
  v2 = [(AKAppSSOExtensionViewController *)v6 view];
  [v2 setBackgroundColor:v3];
}

- (void)beginAuthorizationWithRequest:(id)a3
{
  v46 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v44 = _AKLogSystem();
  v43 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [location[0] url];
    sub_100007B1C(v47, v20);
    _os_log_impl(&_mh_execute_header, v44, v43, "Begin authorization request with url %@", v47, 0xCu);
  }

  objc_storeStrong(&v44, 0);
  proxy = v46->_proxy;
  v16 = [location[0] url];
  v42 = [(AKWebAuthorizationController *)proxy _parseURLQueryParams:?];

  v41 = [location[0] url];
  v17 = [location[0] authorizationOptions];
  v18 = [v17 objectForKeyedSubscript:SOAuthorizationOptionInitiatorOrigin];
  v19 = [NSURL URLWithString:?];
  v38 = 0;
  v36 = 0;
  if (v19)
  {
    v3 = v19;
  }

  else
  {
    v39 = [v42 objectForKeyedSubscript:@"originURL"];
    v38 = 1;
    v37 = [NSURL URLWithString:?];
    v36 = 1;
    v3 = v37;
  }

  v40 = v3;
  if (v36)
  {
  }

  if (v38)
  {
  }

  if (v40)
  {
    v4 = v40;
  }

  else
  {
    v4 = v41;
  }

  v35 = v4;
  v34 = [AKAuthorizationController isURLFromAppleOwnedDomain:v4];
  if ((v34 & 1) == 0 || [(AKAppSSOExtensionViewController *)v46 _canProcessRequestForFirstParty:location[0]])
  {
    v11 = [location[0] url];
    v12 = [AKAuthorizationController appSSORequestTypeForURL:?];

    v29[1] = v12;
    if (v12)
    {
      if (v12 == 1)
      {
        v29[0] = _AKLogSystem();
        v28 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v29[0], OS_LOG_TYPE_DEFAULT))
        {
          v9 = v29[0];
          v10 = v28;
          sub_100007B5C(v27);
          _os_log_impl(&_mh_execute_header, v9, v10, "SSO Request type: authorization/authentication", v27, 2u);
        }

        objc_storeStrong(v29, 0);
        [(AKAppSSOExtensionViewController *)v46 _performAuthorizationWithRequest:location[0]];
      }

      else if (v12 == 2)
      {
        v26 = _AKLogSystem();
        v25 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v7 = v26;
          v8 = v25;
          sub_100007B5C(v24);
          _os_log_impl(&_mh_execute_header, v7, v8, "SSO Request type: password reset native take over", v24, 2u);
        }

        objc_storeStrong(&v26, 0);
        [(AKAppSSOExtensionViewController *)v46 _performPasswordResetNativeTakeOverWithRequest:location[0]];
      }
    }

    else
    {
      v23 = _AKLogSystem();
      v22 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v23;
        v6 = v22;
        sub_100007B5C(v21);
        _os_log_impl(&_mh_execute_header, v5, v6, "SSO Request type: unknown", v21, 2u);
      }

      objc_storeStrong(&v23, 0);
      [(AKAppSSOExtensionViewController *)v46 _handleUnknowRequest:location[0]];
    }

    v30 = 0;
  }

  else
  {
    v33 = _AKLogSystem();
    v32 = 16;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v13 = v33;
      v14 = v32;
      sub_100007B5C(v31);
      _os_log_error_impl(&_mh_execute_header, v13, v14, "Caller is not entitled for first party origin. Authorization request not handled.", v31, 2u);
    }

    objc_storeStrong(&v33, 0);
    [location[0] doNotHandle];
    v30 = 1;
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
}

- (void)cancelAuthorizationWithRequest:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = _AKLogSystem();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    log = v7;
    type = v6;
    sub_100007B5C(v5);
    _os_log_impl(&_mh_execute_header, log, type, "AKAppSSOExtensionViewController cancelAuthorizationWithRequest called", v5, 2u);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)_performAuthorizationWithRequest:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(AKWebAuthorizationController *)v4->_proxy beginAuthorizationWithRequest:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_performPasswordResetNativeTakeOverWithRequest:(id)a3
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = +[AKFeatureManager sharedManager];
  v8 = [v7 isForgotPasswordNativeTakeoverEnabled];

  if (v8)
  {
    v16 = objc_alloc_init(AKPasswordResetController);
    v4 = v16;
    v3 = location[0];
    v9 = _NSConcreteStackBlock;
    v10 = -1073741824;
    v11 = 0;
    v12 = sub_10000B52C;
    v13 = &unk_100018770;
    v14 = location[0];
    v15 = v16;
    [(AKPasswordResetController *)v4 presentPasswordResetForRequest:v3 completion:&v9];
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v16, 0);
    v17 = 0;
  }

  else
  {
    v20 = _AKLogSystem();
    v19 = 2;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      log = v20;
      type = v19;
      sub_100007B5C(v18);
      _os_log_debug_impl(&_mh_execute_header, log, type, "Password reset native take over feature not enabled", v18, 2u);
    }

    objc_storeStrong(&v20, 0);
    [(AKAppSSOExtensionViewController *)v22 _handleUnknowRequest:location[0]];
    v17 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)_handleUnknowRequest:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [NSError errorWithDomain:AKAppleIDAuthenticationErrorDomain code:-7111 userInfo:0];
  [location[0] completeWithError:v3];
  objc_storeStrong(&v3, 0);
  objc_storeStrong(location, 0);
}

- (id)topPresentedViewControllerForController:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = location[0];
  while (1)
  {
    v7 = [v8 presentedViewController];

    if (!v7)
    {
      break;
    }

    v3 = [v8 presentedViewController];
    v4 = v8;
    v8 = v3;
  }

  v6 = v8;
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (BOOL)_canProcessRequestForFirstParty:(id)a3
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = +[AKURLBag sharedBag];
  v8 = [v7 isFirstPartyURLEntitlementCheckDisabled];

  if (v8 == 1)
  {
    v16 = _AKLogSystem();
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      log = v16;
      type = v15;
      sub_100007B5C(v14);
      _os_log_impl(&_mh_execute_header, log, type, "Server has disabled the entitlement checks for first party URLs. Proceeding.", v14, 2u);
    }

    objc_storeStrong(&v16, 0);
    v19 = 1;
    v13 = 1;
  }

  else
  {
    v4 = [location[0] authorizationRequest];
    v12 = [v4 auditTokenData];

    v10 = 0u;
    v11 = 0u;
    if ([(AKAppSSOExtensionViewController *)v18 _auditTokenFromData:v12 auditToken:&v10])
    {
      v9[0] = v10;
      v9[1] = v11;
      v19 = [(AKAppSSOExtensionViewController *)v18 checkEntitlementForAuditToken:v9 entitlement:@"com.apple.developer.web-browser"];
    }

    else
    {
      v19 = 0;
    }

    v13 = 1;
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(location, 0);
  return v19 & 1;
}

- (BOOL)_auditTokenFromData:(id)a3 auditToken:(id *)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = a4;
  if (location[0])
  {
    if ([location[0] length] == 32)
    {
      if (v10)
      {
        v6 = location[0];
        v4 = location[0];
        [v6 bytes];
        __memcpy_chk();
      }

      v12 = 1;
      v9 = 1;
    }

    else
    {
      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        sub_10000B80C(v13, [location[0] length]);
        _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Unexpected size of auditToken: %u", v13, 8u);
      }

      objc_storeStrong(&oslog, 0);
      v12 = 0;
      v9 = 1;
    }
  }

  else
  {
    v12 = 0;
    v9 = 1;
  }

  objc_storeStrong(location, 0);
  return v12 & 1;
}

- (BOOL)checkEntitlementForAuditToken:(id *)a3 entitlement:(id)a4
{
  location[3] = self;
  location[2] = a2;
  location[1] = a3;
  location[0] = 0;
  objc_storeStrong(location, a4);
  token = *a3;
  v21 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);
  v19 = 0;
  error = 0;
  cf = 0;
  if (v21)
  {
    cf = SecTaskCopyValueForEntitlement(v21, location[0], &error);
    v16 = error;
    if (cf && (v7 = CFGetTypeID(cf), v7 == CFBooleanGetTypeID()))
    {
      v19 = CFBooleanGetValue(cf) != 0;
      oslog = _AKLogSystem();
      type = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        if (v19)
        {
          v4 = @"YES";
        }

        else
        {
          v4 = @"NO";
        }

        sub_1000087C0(v26, location[0], v4);
        _os_log_impl(&_mh_execute_header, oslog, type, "Process hasEntitlement to %@: %@", v26, 0x16u);
      }

      objc_storeStrong(&oslog, 0);
    }

    else if (v16)
    {
      v13 = _AKLogSystem();
      v12 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000087C0(v25, location[0], v16);
        _os_log_error_impl(&_mh_execute_header, v13, v12, "SecTaskCopyValueForEntitlement failed for %@, error: %@", v25, 0x16u);
      }

      objc_storeStrong(&v13, 0);
    }

    else
    {
      v11 = _AKLogSystem();
      v10 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        sub_100007B1C(v24, location[0]);
        _os_log_impl(&_mh_execute_header, v11, v10, "Entitlement %@ is not present", v24, 0xCu);
      }

      objc_storeStrong(&v11, 0);
    }

    objc_storeStrong(&v16, 0);
  }

  else
  {
    v9 = _AKLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100007B1C(v23, location[0]);
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "SecTaskCreateWithAuditToken failed for entitlement %@", v23, 0xCu);
    }

    objc_storeStrong(&v9, 0);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  v6 = v19;
  objc_storeStrong(location, 0);
  return v6;
}

@end