@interface AKSRPService
- (AKSRPService)initWithClient:(id)a3;
- (AKSRPService)initWithClient:(id)a3 requestDispatcher:(id)a4;
- (BOOL)_shouldClearCKForFailedMagicAuthWithError:(int64_t)a3 authContextHelper:(id)a4;
- (id)_anisetteActionTargetForServerResponse:(id)a3 andContext:(id)a4;
- (id)_authContext:(id)a3;
- (void)_attemptUCRTHealingWithResponse:(id)a3;
- (void)_continueSRPContractWithAuthURL:(id)a3 context:(id)a4 completion:(id)a5;
- (void)_doURLSwitchWithServerResponse:(id)a3 context:(id)a4 completion:(id)a5;
- (void)_handleError:(id)a3 withServerResponse:(id)a4 context:(id)a5 andCompletion:(id)a6;
- (void)_healUCRTWithAppleID:(id)a3 passwordPET:(id)a4;
- (void)_parseFailedServerResponse:(id)a3 withError:(id)a4 context:(id)a5 completion:(id)a6;
- (void)_reprovisionAnisetteWithServerResponse:(id)a3 context:(id)a4 completion:(id)a5;
- (void)_resyncAnisetteWithServerResponse:(id)a3 context:(id)a4 completion:(id)a5;
- (void)performSRPContractWithContext:(id)a3 completion:(id)a4;
@end

@implementation AKSRPService

- (AKSRPService)initWithClient:(id)a3 requestDispatcher:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v4 = v11;
  v11 = 0;
  v8.receiver = v4;
  v8.super_class = AKSRPService;
  v11 = [(AKSRPService *)&v8 init];
  objc_storeStrong(&v11, v11);
  if (v11)
  {
    objc_storeStrong(&v11->_client, location[0]);
    objc_storeStrong(&v11->_requestDispatcher, v9);
  }

  v6 = _objc_retain(v11);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v6;
}

- (AKSRPService)initWithClient:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = v9;
  v4 = location[0];
  v6 = +[AKRequestDispatcher sharedDispatcher];
  v9 = 0;
  v9 = [(AKSRPService *)v5 initWithClient:v4 requestDispatcher:?];
  v7 = _objc_retain(v9);
  _objc_release(v6);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v7;
}

- (void)performSRPContractWithContext:(id)a3 completion:(id)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v7 = [location[0] altDSID];
  v6 = [AKURLBag bagForAltDSID:?];
  v5 = AKURLBagKeyBasicAuthKey;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100111898;
  v11 = &unk_100323998;
  v12 = _objc_retain(v17);
  v13 = _objc_retain(location[0]);
  v14 = _objc_retain(v15);
  [v6 urlForKey:v5 completion:?];
  _objc_release(v6);
  _objc_release(v7);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)_continueSRPContractWithAuthURL:(id)a3 context:(id)a4 completion:(id)a5
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = 0;
  objc_storeStrong(&v18, a5);
  v9 = [AKSRPRequest alloc];
  v7 = location[0];
  v8 = v19;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100111C28;
  v13 = &unk_1003239C0;
  v16 = _objc_retain(v18);
  v14 = _objc_retain(v21);
  v15 = _objc_retain(v19);
  v17 = [(AKSRPRequest *)v9 initWithURL:v7 contextHelper:v8 completionHandler:?];
  [(AKRequestDispatcher *)v21->_requestDispatcher submitDispatchableRequest:v17];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

- (void)_attemptUCRTHealingWithResponse:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [location[0] appleID];
  v3 = [location[0] passwordEquivalentToken];
  v4 = [v3 stringValue];
  _objc_release(v3);
  [(AKSRPService *)v7 _healUCRTWithAppleID:v5 passwordPET:v4];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)_healUCRTWithAppleID:(id)a3 passwordPET:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = os_transaction_create();
  queue = dispatch_get_global_queue(21, 0);
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_100112048;
  v10 = &unk_10031F050;
  v11 = _objc_retain(location[0]);
  v12 = _objc_retain(v15);
  v13 = _objc_retain(v14);
  dispatch_async(queue, &v6);
  _objc_release(queue);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)_parseFailedServerResponse:(id)a3 withError:(id)a4 context:(id)a5 completion:(id)a6
{
  v38 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v36 = 0;
  objc_storeStrong(&v36, a4);
  v35 = 0;
  objc_storeStrong(&v35, a5);
  v34 = 0;
  objc_storeStrong(&v34, a6);
  v33 = _AKLogSystem();
  v32 = OS_LOG_TYPE_ERROR;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    sub_1000194D4(v39, v36);
    _os_log_error_impl(&_mh_execute_header, v33, v32, "SRP authentication with server failed! Error: %@", v39, 0xCu);
  }

  objc_storeStrong(&v33, 0);
  if ([location[0] isAnisetteResyncRequired])
  {
    [(AKSRPService *)v38 _resyncAnisetteWithServerResponse:location[0] context:v35 completion:v34];
  }

  else if ([location[0] isAnisetteReprovisioningRequired])
  {
    v31 = [NSError ak_generalErrorWithCode:-8027 errorDomain:AKAnisetteErrorDomain underlyingError:v36];
    v30 = [AAFAnalyticsEvent ak_analyticsEventWithEventName:@"com.apple.authkit.midInvalidated" error:v31];
    v16 = +[AKAnalyticsReporterRTC rtcAnalyticsReporter];
    [v16 sendEvent:v30];
    _objc_release(v16);
    [(AKSRPService *)v38 _reprovisionAnisetteWithServerResponse:location[0] context:v35 completion:v34];
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v31, 0);
  }

  else if ([location[0] isURLSwitchingRequired])
  {
    [(AKSRPService *)v38 _doURLSwitchWithServerResponse:location[0] context:v35 completion:v34];
  }

  else if (([location[0] isRetryRequired] & 1) == 0 || objc_msgSend(v35, "retryAuth"))
  {
    if ([location[0] isSecondaryActionRequired])
    {
      v26 = _AKLogSystem();
      v25 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v26;
        v13 = v25;
        sub_10001CEEC(v24);
        _os_log_impl(&_mh_execute_header, v12, v13, "Auth failed but the server says to try a secondary auth action anyway. Let's how this goes...", v24, 2u);
      }

      objc_storeStrong(&v26, 0);
      (*(v34 + 2))(v34, location[0], 0);
    }

    else if (v36 && [v36 code] == 6)
    {
      v10 = +[AKFeatureManager sharedManager];
      v11 = 0;
      if ([v10 isServerBackoffEnabled])
      {
        v11 = [location[0] isServerBackoff];
      }

      v6 = -7120;
      if ((v11 & 1) == 0)
      {
        v6 = -7005;
      }

      v9 = v6;
      _objc_release(v10);
      v23[1] = v9;
      v23[0] = [NSError ak_errorWithCode:v9 underlyingError:v36];
      if ([v35 retryAuth])
      {
        (*(v34 + 2))(v34, 0, v23[0]);
      }

      else
      {
        v22 = _AKLogSystem();
        v21 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v7 = v22;
          v8 = v21;
          sub_10001CEEC(v20);
          _os_log_impl(&_mh_execute_header, v7, v8, "Network error. Retrying auth once...", v20, 2u);
        }

        objc_storeStrong(&v22, 0);
        [v35 setRetryAuth:1];
        [(AKSRPService *)v38 performSRPContractWithContext:v35 completion:v34];
      }

      objc_storeStrong(v23, 0);
    }

    else
    {
      [(AKSRPService *)v38 _handleError:v36 withServerResponse:location[0] context:v35 andCompletion:v34];
    }
  }

  else
  {
    v29 = _AKLogSystem();
    v28 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v29;
      v15 = v28;
      sub_10001CEEC(v27);
      _os_log_impl(&_mh_execute_header, v14, v15, "Server told us to retry. Retrying auth...", v27, 2u);
    }

    objc_storeStrong(&v29, 0);
    [v35 setRetryAuth:1];
    [(AKSRPService *)v38 performSRPContractWithContext:v35 completion:v34];
  }

  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
}

- (id)_anisetteActionTargetForServerResponse:(id)a3 andContext:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  if ([location[0] shouldProxyAnisetteAction])
  {
    v6 = [v8 authContext];
    v10 = [v6 proxiedDevice];
    _objc_release(v6);
  }

  else
  {
    v10 = +[AKDevice currentDevice];
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  v4 = v10;

  return v4;
}

- (void)_resyncAnisetteWithServerResponse:(id)a3 context:(id)a4 completion:(id)a5
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v28 = 0;
  objc_storeStrong(&v28, a5);
  v27 = _AKLogSystem();
  v26 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    log = v27;
    type = v26;
    sub_10001CEEC(v25);
    _os_log_impl(&_mh_execute_header, log, type, "Need Anisette resync...", v25, 2u);
  }

  objc_storeStrong(&v27, 0);
  v24 = [(AKSRPService *)v31 _anisetteActionTargetForServerResponse:location[0] andContext:v29];
  v6 = [AKAnisetteProvisioningService alloc];
  client = v31->_client;
  v7 = [v29 authContext];
  v23 = [(AKAnisetteProvisioningService *)v6 initWithClient:client authenticationContext:?];
  _objc_release(v7);
  v9 = v23;
  v10 = [location[0] anisetteResyncData];
  v8 = v24;
  v15 = _NSConcreteStackBlock;
  v16 = -1073741824;
  v17 = 0;
  v18 = sub_100112B58;
  v19 = &unk_1003217F8;
  v20 = _objc_retain(v31);
  v21 = _objc_retain(v29);
  v22 = _objc_retain(v28);
  [(AKAnisetteProvisioningService *)v9 syncAnisetteWithSIMData:v10 device:v8 completion:&v15];
  _objc_release(v10);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

- (void)_reprovisionAnisetteWithServerResponse:(id)a3 context:(id)a4 completion:(id)a5
{
  v30 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v28 = 0;
  objc_storeStrong(&v28, a4);
  v27 = 0;
  objc_storeStrong(&v27, a5);
  v26 = _AKLogSystem();
  v25 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    log = v26;
    type = v25;
    sub_10001CEEC(v24);
    _os_log_impl(&_mh_execute_header, log, type, "Need Anisette reprovisioning...", v24, 2u);
  }

  objc_storeStrong(&v26, 0);
  v23 = [(AKSRPService *)v30 _anisetteActionTargetForServerResponse:location[0] andContext:v28];
  v6 = [AKAnisetteProvisioningService alloc];
  client = v30->_client;
  v7 = [v28 authContext];
  v22 = [(AKAnisetteProvisioningService *)v6 initWithClient:client authenticationContext:?];
  _objc_release(v7);
  v9 = v22;
  v8 = v23;
  v14 = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_100113178;
  v18 = &unk_1003217F8;
  v19 = _objc_retain(v30);
  v20 = _objc_retain(v28);
  v21 = _objc_retain(v27);
  [(AKAnisetteProvisioningService *)v9 eraseAnisetteForDevice:v8 completion:&v14];
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

- (void)_doURLSwitchWithServerResponse:(id)a3 context:(id)a4 completion:(id)a5
{
  v35 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v33 = 0;
  objc_storeStrong(&v33, a4);
  v32 = 0;
  objc_storeStrong(&v32, a5);
  v31 = _AKLogSystem();
  v30 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    log = v31;
    type = v30;
    sub_10001CEEC(v29);
    _os_log_impl(&_mh_execute_header, log, type, "URLSwitching needed...", v29, 2u);
  }

  objc_storeStrong(&v31, 0);
  v12 = [location[0] urlSwitchingData];
  _objc_release(v12);
  if (v12)
  {
    v7 = [v33 altDSID];
    v6 = [AKURLBag bagForAltDSID:?];
    v5 = [location[0] urlSwitchingData];
    v17 = _NSConcreteStackBlock;
    v18 = -1073741824;
    v19 = 0;
    v20 = sub_100113870;
    v21 = &unk_1003217F8;
    v22 = _objc_retain(v35);
    v23 = _objc_retain(v33);
    v24 = _objc_retain(v32);
    [v6 forceUpdateBagWithUrlSwitchData:v5 completion:&v17];
    _objc_release(v5);
    _objc_release(v6);
    _objc_release(v7);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v22, 0);
    v25 = 0;
  }

  else
  {
    v28 = _AKLogSystem();
    v27 = 16;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v10 = v28;
      v11 = v27;
      sub_10001CEEC(v26);
      _os_log_error_impl(&_mh_execute_header, v10, v11, "Server requested to switch URL but no URLSwitch data is available, Ignoring URL switch", v26, 2u);
    }

    objc_storeStrong(&v28, 0);
    v8 = v32;
    v9 = [NSError ak_errorWithCode:-7087];
    v8[2](v8, 0);
    _objc_release(v9);
    v25 = 1;
  }

  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
}

- (id)_authContext:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  v7 = [location[0] authContext];
  v9 = 0;
  isKindOfClass = 0;
  if (v7)
  {
    v10 = [location[0] authContext];
    v9 = 1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  if (v9)
  {
    _objc_release(v10);
  }

  _objc_release(v7);
  if (isKindOfClass)
  {
    v3 = [location[0] authContext];
    v4 = v11;
    v11 = v3;
    _objc_release(v4);
  }

  v6 = _objc_retain(v11);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (void)_handleError:(id)a3 withServerResponse:(id)a4 context:(id)a5 andCompletion:(id)a6
{
  v53 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v51 = 0;
  objc_storeStrong(&v51, a4);
  v50 = 0;
  objc_storeStrong(&v50, a5);
  v49 = 0;
  objc_storeStrong(&v49, a6);
  v48 = objc_alloc_init(NSMutableDictionary);
  v47 = objc_alloc_init(NSMutableDictionary);
  v30 = [v51 errorMessage];
  v45 = 0;
  v31 = 0;
  if (v30)
  {
    v46 = [v51 errorMessageTitle];
    v45 = 1;
    v31 = v46 != 0;
  }

  if (v45)
  {
    _objc_release(v46);
  }

  _objc_release(v30);
  if (v31)
  {
    v25 = [v51 errorMessageTitle];
    [v47 setObject:? forKeyedSubscript:?];
    _objc_release(v25);
    v26 = [v51 errorMessage];
    [v47 setObject:? forKeyedSubscript:?];
    _objc_release(v26);
  }

  else
  {
    v24 = [v51 errorMessage];
    _objc_release(v24);
    if (v24)
    {
      v23 = [v51 errorMessage];
      [v47 setObject:? forKeyedSubscript:?];
      _objc_release(v23);
    }
  }

  v44 = 0;
  if ([v51 errorCode])
  {
    v6 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", AKAppleIDAuthenticationServerErrorDomain, [v51 errorCode], 0);
    v7 = v44;
    v44 = v6;
    _objc_release(v7);
    if ([v51 subErrorCode])
    {
      v43 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", AKAppleIDAuthenticationServerErrorDomain, [v51 subErrorCode]);
      v21 = v44;
      v54 = NSUnderlyingErrorKey;
      v55 = v43;
      v22 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      v8 = [v21 ak_errorByAppendingUserInfo:?];
      v9 = v44;
      v44 = v8;
      _objc_release(v9);
      _objc_release(v22);
      objc_storeStrong(&v43, 0);
    }
  }

  if (location[0])
  {
    v19 = [location[0] underlyingErrors];
    v20 = 0;
    if (![v19 count])
    {
      v20 = v44 != 0;
    }

    _objc_release(v19);
    if (v20)
    {
      v42 = objc_alloc_init(NSMutableDictionary);
      [v42 setObject:v44 forKeyedSubscript:NSUnderlyingErrorKey];
      [v42 addEntriesFromDictionary:v47];
      v10 = [location[0] ak_errorByAppendingUserInfo:v42];
      v11 = location[0];
      location[0] = v10;
      _objc_release(v11);
      objc_storeStrong(&v42, 0);
    }

    [v48 setObject:location[0] forKeyedSubscript:NSUnderlyingErrorKey];
  }

  else if (v44)
  {
    [v48 setObject:v44 forKeyedSubscript:NSUnderlyingErrorKey];
  }

  v41 = -7018;
  if ([v51 errorCode] == -20101 || objc_msgSend(v51, "errorCode") == -22406 || objc_msgSend(v51, "errorCode") == -22407)
  {
    v41 = -7006;
  }

  if ([v51 errorCode] == -28043)
  {
    v41 = -7093;
  }

  if ([v51 errorCode] == -28044)
  {
    v41 = -7094;
  }

  if ([v51 errorCode] == -80039)
  {
    v41 = -7120;
  }

  v40 = 0;
  v39 = [v50 authKitAccount];
  if (v39)
  {
    v38 = +[AKAccountManager sharedInstance];
    v40 = [v38 isManagedAppleIDForAccount:v39];
    if (v40)
    {
      v37 = [v38 managedOrganizationNameForAccount:v39];
      v18 = [v50 client];
      v36 = [v18 localizedAppName];
      _objc_release(v18);
      [v48 setObject:&__kCFBooleanTrue forKeyedSubscript:AKIsManagedAccountKey];
      if ([v37 length])
      {
        [v48 setObject:v37 forKeyedSubscript:AKManagedOrganizationNameKey];
      }

      if ([v36 length])
      {
        [v48 setObject:v36 forKeyedSubscript:AKManagedLocalizedAppNameKey];
      }

      if ([v51 errorCode] == -24019)
      {
        v41 = -7027;
      }

      objc_storeStrong(&v36, 0);
      objc_storeStrong(&v37, 0);
    }

    objc_storeStrong(&v38, 0);
  }

  if ([v51 errorCode] == -310003)
  {
    v41 = -7100;
  }

  if ([v51 errorCode] == -27420)
  {
    v41 = -7095;
  }

  v35 = 0;
  if (v44 && v41 == -7018)
  {
    objc_storeStrong(&v35, location[0]);
  }

  else
  {
    [v48 addEntriesFromDictionary:v47];
    v12 = [NSError errorWithDomain:AKAppleIDAuthenticationErrorDomain code:v41 userInfo:v48];
    v13 = v35;
    v35 = v12;
    _objc_release(v13);
  }

  v34 = [(AKSRPService *)v53 _authContext:v50];
  if ([v51 errorCode] == -22406 || objc_msgSend(v51, "errorCode") == -22407 || -[AKSRPService _shouldClearCKForFailedMagicAuthWithError:authContextHelper:](v53, "_shouldClearCKForFailedMagicAuthWithError:authContextHelper:", objc_msgSend(v51, "errorCode"), v50))
  {
    [v50 clearContinuationTokenIfSupportedWithError:v35];
  }

  v32 = 0;
  v17 = 0;
  if ([v51 errorCode] == -22446)
  {
    v33 = [v50 passwordResetToken];
    v32 = 1;
    v17 = v33 != 0;
  }

  if (v32)
  {
    _objc_release(v33);
  }

  if (v17)
  {
    v16 = +[AKAccountManager sharedInstance];
    v14 = v39;
    v15 = [v34 telemetryFlowID];
    [AKAccountManager removePasswordResetTokenForAccount:v16 telemetryFlowID:"removePasswordResetTokenForAccount:telemetryFlowID:error:" error:v14];
    _objc_release(v15);
    _objc_release(v16);
  }

  if (v49)
  {
    (*(v49 + 2))();
  }

  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_shouldClearCKForFailedMagicAuthWithError:(int64_t)a3 authContextHelper:(id)a4
{
  v15 = self;
  v14 = a2;
  v13 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  if (v13 == -22446 && (v7 = [location authContext], v8 = objc_msgSend(v7, "companionDevice"), _objc_release(v8), _objc_release(v7), v8))
  {
    v11 = _AKLogSystem();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      log = v11;
      type = v10;
      sub_10001CEEC(v9);
      _os_log_impl(&_mh_execute_header, log, type, "Invalid PRK returned from server and we're doing a companion auth. We should clear CK", v9, 2u);
    }

    objc_storeStrong(&v11, 0);
    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  objc_storeStrong(&location, 0);
  return v16 & 1;
}

@end