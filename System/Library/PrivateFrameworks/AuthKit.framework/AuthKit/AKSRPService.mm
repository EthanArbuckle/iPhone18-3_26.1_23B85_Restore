@interface AKSRPService
- (AKSRPService)initWithClient:(id)client;
- (AKSRPService)initWithClient:(id)client requestDispatcher:(id)dispatcher;
- (BOOL)_shouldClearCKForFailedMagicAuthWithError:(int64_t)error authContextHelper:(id)helper;
- (id)_anisetteActionTargetForServerResponse:(id)response andContext:(id)context;
- (id)_authContext:(id)context;
- (void)_attemptUCRTHealingWithResponse:(id)response;
- (void)_continueSRPContractWithAuthURL:(id)l context:(id)context completion:(id)completion;
- (void)_doURLSwitchWithServerResponse:(id)response context:(id)context completion:(id)completion;
- (void)_handleError:(id)error withServerResponse:(id)response context:(id)context andCompletion:(id)completion;
- (void)_healUCRTWithAppleID:(id)d passwordPET:(id)t;
- (void)_parseFailedServerResponse:(id)response withError:(id)error context:(id)context completion:(id)completion;
- (void)_reprovisionAnisetteWithServerResponse:(id)response context:(id)context completion:(id)completion;
- (void)_resyncAnisetteWithServerResponse:(id)response context:(id)context completion:(id)completion;
- (void)performSRPContractWithContext:(id)context completion:(id)completion;
@end

@implementation AKSRPService

- (AKSRPService)initWithClient:(id)client requestDispatcher:(id)dispatcher
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v9 = 0;
  objc_storeStrong(&v9, dispatcher);
  v4 = selfCopy;
  selfCopy = 0;
  v8.receiver = v4;
  v8.super_class = AKSRPService;
  selfCopy = [(AKSRPService *)&v8 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_client, location[0]);
    objc_storeStrong(&selfCopy->_requestDispatcher, v9);
  }

  v6 = _objc_retain(selfCopy);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (AKSRPService)initWithClient:(id)client
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v5 = selfCopy;
  v4 = location[0];
  v6 = +[AKRequestDispatcher sharedDispatcher];
  selfCopy = 0;
  selfCopy = [(AKSRPService *)v5 initWithClient:v4 requestDispatcher:?];
  v7 = _objc_retain(selfCopy);
  _objc_release(v6);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (void)performSRPContractWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v15 = 0;
  objc_storeStrong(&v15, completion);
  altDSID = [location[0] altDSID];
  v6 = [AKURLBag bagForAltDSID:?];
  v5 = AKURLBagKeyBasicAuthKey;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100111898;
  v11 = &unk_100323998;
  v12 = _objc_retain(selfCopy);
  v13 = _objc_retain(location[0]);
  v14 = _objc_retain(v15);
  [v6 urlForKey:v5 completion:?];
  _objc_release(v6);
  _objc_release(altDSID);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)_continueSRPContractWithAuthURL:(id)l context:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v19 = 0;
  objc_storeStrong(&v19, context);
  v18 = 0;
  objc_storeStrong(&v18, completion);
  v9 = [AKSRPRequest alloc];
  v7 = location[0];
  v8 = v19;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100111C28;
  v13 = &unk_1003239C0;
  v16 = _objc_retain(v18);
  v14 = _objc_retain(selfCopy);
  v15 = _objc_retain(v19);
  v17 = [(AKSRPRequest *)v9 initWithURL:v7 contextHelper:v8 completionHandler:?];
  [(AKRequestDispatcher *)selfCopy->_requestDispatcher submitDispatchableRequest:v17];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

- (void)_attemptUCRTHealingWithResponse:(id)response
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  appleID = [location[0] appleID];
  passwordEquivalentToken = [location[0] passwordEquivalentToken];
  stringValue = [passwordEquivalentToken stringValue];
  _objc_release(passwordEquivalentToken);
  [(AKSRPService *)selfCopy _healUCRTWithAppleID:appleID passwordPET:stringValue];
  objc_storeStrong(&stringValue, 0);
  objc_storeStrong(&appleID, 0);
  objc_storeStrong(location, 0);
}

- (void)_healUCRTWithAppleID:(id)d passwordPET:(id)t
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v15 = 0;
  objc_storeStrong(&v15, t);
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

- (void)_parseFailedServerResponse:(id)response withError:(id)error context:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v36 = 0;
  objc_storeStrong(&v36, error);
  v35 = 0;
  objc_storeStrong(&v35, context);
  v34 = 0;
  objc_storeStrong(&v34, completion);
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
    [(AKSRPService *)selfCopy _resyncAnisetteWithServerResponse:location[0] context:v35 completion:v34];
  }

  else if ([location[0] isAnisetteReprovisioningRequired])
  {
    v31 = [NSError ak_generalErrorWithCode:-8027 errorDomain:AKAnisetteErrorDomain underlyingError:v36];
    v30 = [AAFAnalyticsEvent ak_analyticsEventWithEventName:@"com.apple.authkit.midInvalidated" error:v31];
    v16 = +[AKAnalyticsReporterRTC rtcAnalyticsReporter];
    [v16 sendEvent:v30];
    _objc_release(v16);
    [(AKSRPService *)selfCopy _reprovisionAnisetteWithServerResponse:location[0] context:v35 completion:v34];
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v31, 0);
  }

  else if ([location[0] isURLSwitchingRequired])
  {
    [(AKSRPService *)selfCopy _doURLSwitchWithServerResponse:location[0] context:v35 completion:v34];
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
      isServerBackoff = 0;
      if ([v10 isServerBackoffEnabled])
      {
        isServerBackoff = [location[0] isServerBackoff];
      }

      v6 = -7120;
      if ((isServerBackoff & 1) == 0)
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
        [(AKSRPService *)selfCopy performSRPContractWithContext:v35 completion:v34];
      }

      objc_storeStrong(v23, 0);
    }

    else
    {
      [(AKSRPService *)selfCopy _handleError:v36 withServerResponse:location[0] context:v35 andCompletion:v34];
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
    [(AKSRPService *)selfCopy performSRPContractWithContext:v35 completion:v34];
  }

  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
}

- (id)_anisetteActionTargetForServerResponse:(id)response andContext:(id)context
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v8 = 0;
  objc_storeStrong(&v8, context);
  if ([location[0] shouldProxyAnisetteAction])
  {
    authContext = [v8 authContext];
    proxiedDevice = [authContext proxiedDevice];
    _objc_release(authContext);
  }

  else
  {
    proxiedDevice = +[AKDevice currentDevice];
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  v4 = proxiedDevice;

  return v4;
}

- (void)_resyncAnisetteWithServerResponse:(id)response context:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v29 = 0;
  objc_storeStrong(&v29, context);
  v28 = 0;
  objc_storeStrong(&v28, completion);
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
  v24 = [(AKSRPService *)selfCopy _anisetteActionTargetForServerResponse:location[0] andContext:v29];
  v6 = [AKAnisetteProvisioningService alloc];
  client = selfCopy->_client;
  authContext = [v29 authContext];
  v23 = [(AKAnisetteProvisioningService *)v6 initWithClient:client authenticationContext:?];
  _objc_release(authContext);
  v9 = v23;
  anisetteResyncData = [location[0] anisetteResyncData];
  v8 = v24;
  v15 = _NSConcreteStackBlock;
  v16 = -1073741824;
  v17 = 0;
  v18 = sub_100112B58;
  v19 = &unk_1003217F8;
  v20 = _objc_retain(selfCopy);
  v21 = _objc_retain(v29);
  v22 = _objc_retain(v28);
  [(AKAnisetteProvisioningService *)v9 syncAnisetteWithSIMData:anisetteResyncData device:v8 completion:&v15];
  _objc_release(anisetteResyncData);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

- (void)_reprovisionAnisetteWithServerResponse:(id)response context:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v28 = 0;
  objc_storeStrong(&v28, context);
  v27 = 0;
  objc_storeStrong(&v27, completion);
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
  v23 = [(AKSRPService *)selfCopy _anisetteActionTargetForServerResponse:location[0] andContext:v28];
  v6 = [AKAnisetteProvisioningService alloc];
  client = selfCopy->_client;
  authContext = [v28 authContext];
  v22 = [(AKAnisetteProvisioningService *)v6 initWithClient:client authenticationContext:?];
  _objc_release(authContext);
  v9 = v22;
  v8 = v23;
  v14 = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_100113178;
  v18 = &unk_1003217F8;
  v19 = _objc_retain(selfCopy);
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

- (void)_doURLSwitchWithServerResponse:(id)response context:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v33 = 0;
  objc_storeStrong(&v33, context);
  v32 = 0;
  objc_storeStrong(&v32, completion);
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
  urlSwitchingData = [location[0] urlSwitchingData];
  _objc_release(urlSwitchingData);
  if (urlSwitchingData)
  {
    altDSID = [v33 altDSID];
    v6 = [AKURLBag bagForAltDSID:?];
    urlSwitchingData2 = [location[0] urlSwitchingData];
    v17 = _NSConcreteStackBlock;
    v18 = -1073741824;
    v19 = 0;
    v20 = sub_100113870;
    v21 = &unk_1003217F8;
    v22 = _objc_retain(selfCopy);
    v23 = _objc_retain(v33);
    v24 = _objc_retain(v32);
    [v6 forceUpdateBagWithUrlSwitchData:urlSwitchingData2 completion:&v17];
    _objc_release(urlSwitchingData2);
    _objc_release(v6);
    _objc_release(altDSID);
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

- (id)_authContext:(id)context
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v11 = 0;
  authContext = [location[0] authContext];
  v9 = 0;
  isKindOfClass = 0;
  if (authContext)
  {
    authContext2 = [location[0] authContext];
    v9 = 1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  if (v9)
  {
    _objc_release(authContext2);
  }

  _objc_release(authContext);
  if (isKindOfClass)
  {
    authContext3 = [location[0] authContext];
    v4 = v11;
    v11 = authContext3;
    _objc_release(v4);
  }

  v6 = _objc_retain(v11);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (void)_handleError:(id)error withServerResponse:(id)response context:(id)context andCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v51 = 0;
  objc_storeStrong(&v51, response);
  v50 = 0;
  objc_storeStrong(&v50, context);
  v49 = 0;
  objc_storeStrong(&v49, completion);
  v48 = objc_alloc_init(NSMutableDictionary);
  v47 = objc_alloc_init(NSMutableDictionary);
  errorMessage = [v51 errorMessage];
  v45 = 0;
  v31 = 0;
  if (errorMessage)
  {
    errorMessageTitle = [v51 errorMessageTitle];
    v45 = 1;
    v31 = errorMessageTitle != 0;
  }

  if (v45)
  {
    _objc_release(errorMessageTitle);
  }

  _objc_release(errorMessage);
  if (v31)
  {
    errorMessageTitle2 = [v51 errorMessageTitle];
    [v47 setObject:? forKeyedSubscript:?];
    _objc_release(errorMessageTitle2);
    errorMessage2 = [v51 errorMessage];
    [v47 setObject:? forKeyedSubscript:?];
    _objc_release(errorMessage2);
  }

  else
  {
    errorMessage3 = [v51 errorMessage];
    _objc_release(errorMessage3);
    if (errorMessage3)
    {
      errorMessage4 = [v51 errorMessage];
      [v47 setObject:? forKeyedSubscript:?];
      _objc_release(errorMessage4);
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
    underlyingErrors = [location[0] underlyingErrors];
    v20 = 0;
    if (![underlyingErrors count])
    {
      v20 = v44 != 0;
    }

    _objc_release(underlyingErrors);
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
  authKitAccount = [v50 authKitAccount];
  if (authKitAccount)
  {
    v38 = +[AKAccountManager sharedInstance];
    v40 = [v38 isManagedAppleIDForAccount:authKitAccount];
    if (v40)
    {
      v37 = [v38 managedOrganizationNameForAccount:authKitAccount];
      client = [v50 client];
      localizedAppName = [client localizedAppName];
      _objc_release(client);
      [v48 setObject:&__kCFBooleanTrue forKeyedSubscript:AKIsManagedAccountKey];
      if ([v37 length])
      {
        [v48 setObject:v37 forKeyedSubscript:AKManagedOrganizationNameKey];
      }

      if ([localizedAppName length])
      {
        [v48 setObject:localizedAppName forKeyedSubscript:AKManagedLocalizedAppNameKey];
      }

      if ([v51 errorCode] == -24019)
      {
        v41 = -7027;
      }

      objc_storeStrong(&localizedAppName, 0);
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

  v34 = [(AKSRPService *)selfCopy _authContext:v50];
  if ([v51 errorCode] == -22406 || objc_msgSend(v51, "errorCode") == -22407 || -[AKSRPService _shouldClearCKForFailedMagicAuthWithError:authContextHelper:](selfCopy, "_shouldClearCKForFailedMagicAuthWithError:authContextHelper:", objc_msgSend(v51, "errorCode"), v50))
  {
    [v50 clearContinuationTokenIfSupportedWithError:v35];
  }

  v32 = 0;
  v17 = 0;
  if ([v51 errorCode] == -22446)
  {
    passwordResetToken = [v50 passwordResetToken];
    v32 = 1;
    v17 = passwordResetToken != 0;
  }

  if (v32)
  {
    _objc_release(passwordResetToken);
  }

  if (v17)
  {
    v16 = +[AKAccountManager sharedInstance];
    v14 = authKitAccount;
    telemetryFlowID = [v34 telemetryFlowID];
    [AKAccountManager removePasswordResetTokenForAccount:v16 telemetryFlowID:"removePasswordResetTokenForAccount:telemetryFlowID:error:" error:v14];
    _objc_release(telemetryFlowID);
    _objc_release(v16);
  }

  if (v49)
  {
    (*(v49 + 2))();
  }

  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&authKitAccount, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_shouldClearCKForFailedMagicAuthWithError:(int64_t)error authContextHelper:(id)helper
{
  selfCopy = self;
  v14 = a2;
  errorCopy = error;
  location = 0;
  objc_storeStrong(&location, helper);
  if (errorCopy == -22446 && (v7 = [location authContext], v8 = objc_msgSend(v7, "companionDevice"), _objc_release(v8), _objc_release(v7), v8))
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