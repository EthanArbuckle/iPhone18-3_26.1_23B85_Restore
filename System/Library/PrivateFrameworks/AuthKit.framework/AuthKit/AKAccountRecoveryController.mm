@interface AKAccountRecoveryController
+ (BOOL)shouldProcessServerUIRequest:(id)a3;
- (AKAccountRecoveryController)initWithUILiaison:(id)a3 client:(id)a4;
- (AKAccountRecoveryController)initWithUILiaison:(id)a3 client:(id)a4 requestDispatcher:(id)a5;
- (id)_recoveryContextFromServerInfo:(id)a3 error:(id *)a4;
- (void)persistRecoveryKeyWithContext:(id)a3 authContext:(id)a4 completion:(id)a5;
- (void)renewRecoveryTokenWithContext:(id)a3 completion:(id)a4;
- (void)retrieveRecoveryDataForServerContext:(id)a3 recoveryInfo:(id)a4 completion:(id)a5;
- (void)verifyMasterKey:(id)a3 withContext:(id)a4 completion:(id)a5;
@end

@implementation AKAccountRecoveryController

- (AKAccountRecoveryController)initWithUILiaison:(id)a3 client:(id)a4 requestDispatcher:(id)a5
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = 0;
  objc_storeStrong(&v11, a5);
  v5 = v14;
  v14 = 0;
  v10.receiver = v5;
  v10.super_class = AKAccountRecoveryController;
  v14 = [(AKAccountRecoveryController *)&v10 init];
  objc_storeStrong(&v14, v14);
  if (v14)
  {
    objc_storeStrong(&v14->_authUILiaison, location[0]);
    objc_storeStrong(&v14->_client, v12);
    objc_storeStrong(&v14->_requestDispatcher, v11);
  }

  v7 = _objc_retain(v14);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v14, 0);
  return v7;
}

- (AKAccountRecoveryController)initWithUILiaison:(id)a3 client:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v8 = v13;
  v6 = location[0];
  v7 = v11;
  v9 = +[AKRequestDispatcher sharedDispatcher];
  v13 = 0;
  v13 = [(AKAccountRecoveryController *)v8 initWithUILiaison:v6 client:v7 requestDispatcher:?];
  v10 = _objc_retain(v13);
  _objc_release(v9);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v13, 0);
  return v10;
}

+ (BOOL)shouldProcessServerUIRequest:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [location[0] objectForKeyedSubscript:AKActionHeaderKey];
  v4 = 1;
  if (([v5 isEqualToString:AKActionValidateMK] & 1) == 0)
  {
    v4 = [v5 isEqualToString:AKActionStartICSC];
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (void)retrieveRecoveryDataForServerContext:(id)a3 recoveryInfo:(id)a4 completion:(id)a5
{
  v36 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v34 = 0;
  objc_storeStrong(&v34, a4);
  v33 = 0;
  objc_storeStrong(&v33, a5);
  v32 = 0;
  v30 = 0;
  v12 = [(AKAccountRecoveryController *)v36 _recoveryContextFromServerInfo:v34 error:&v30];
  objc_storeStrong(&v32, v30);
  v31 = v12;
  if (v12)
  {
    v29 = _AKLogSystem();
    v28 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v31 description];
      sub_1000194D4(v37, v11);
      _os_log_impl(&_mh_execute_header, v29, v28, "AKAccountRecoveryController recoveryContext is valid %@:", v37, 0xCu);
      _objc_release(v11);
    }

    objc_storeStrong(&v29, 0);
    objc_initWeak(&from, v36);
    authUILiaison = v36->_authUILiaison;
    v7 = [location[0] authContext];
    v8 = v31;
    client = v36->_client;
    v18 = _NSConcreteStackBlock;
    v19 = -1073741824;
    v20 = 0;
    v21 = sub_10003C940;
    v22 = &unk_10031FB88;
    objc_copyWeak(&v26, &from);
    v23 = _objc_retain(location[0]);
    v24 = _objc_retain(v31);
    v25 = _objc_retain(v33);
    [(AKAuthenticationUILiaison *)authUILiaison presentNativeRecoveryUIForContext:v7 recoveryContext:v8 client:client completion:&v18];
    _objc_release(v7);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v23, 0);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&from);
  }

  else
  {
    oslog = _AKLogSystem();
    v16 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v5 = oslog;
      v6 = v16;
      sub_10001CEEC(v15);
      _os_log_error_impl(&_mh_execute_header, v5, v6, "Invalid native recovery server response detected", v15, 2u);
    }

    objc_storeStrong(&oslog, 0);
    (*(v33 + 2))(v33, 0, 0, v32);
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
}

- (void)renewRecoveryTokenWithContext:(id)a3 completion:(id)a4
{
  v47 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v45 = 0;
  objc_storeStrong(&v45, a4);
  v44 = [location[0] decodedRecoveryIdentityTokenString];
  if ([(AKClient *)v47->_client hasInternalPrivateAccess])
  {
    if ([v44 length])
    {
      v9 = [location[0] authContext];
      v36 = [v9 altDSID];
      _objc_release(v9);
      v10 = [AKURLBag bagForAltDSID:v36];
      v35 = [v10 renewRecoveryTokenURL];
      _objc_release(v10);
      v34 = [[NSMutableURLRequest alloc] initWithURL:v35];
      [v34 setHTTPMethod:@"POST"];
      v11 = [(AKClient *)v47->_client name];
      [v34 ak_addClientApp:?];
      _objc_release(v11);
      v12 = [(AKClient *)v47->_client bundleID];
      [v34 ak_addClientBundleIDHeader:?];
      _objc_release(v12);
      [v34 ak_addClientInfoHeader];
      [v34 ak_addDeviceUDIDHeader];
      [v34 ak_addInternalBuildHeader];
      [v34 ak_addSeedBuildHeader];
      [v34 ak_addFeatureMaskHeader];
      v14 = [location[0] authContext];
      v13 = [v14 altDSID];
      [v34 ak_addAuthorizationHeaderWithIdentityToken:v44 forAltDSID:?];
      _objc_release(v13);
      _objc_release(v14);
      v48[0] = AKRequestBodyKey;
      v49[0] = &__NSDictionary0__struct;
      v48[1] = AKRequestHeadersKey;
      v49[1] = &__NSDictionary0__struct;
      v33 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:2];
      [v34 ak_setBodyWithParameters:v33];
      v32 = _AKLogSystem();
      v31 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v32;
        v8 = v31;
        sub_10001CEEC(v30);
        _os_log_impl(&_mh_execute_header, v7, v8, "Recovery token renewal will start.", v30, 2u);
      }

      objc_storeStrong(&v32, 0);
      v6 = +[AKURLSession sharedURLSession];
      v5 = v34;
      v24 = _NSConcreteStackBlock;
      v25 = -1073741824;
      v26 = 0;
      v27 = sub_10003DC28;
      v28 = &unk_10031FBB0;
      v29 = _objc_retain(v45);
      v4 = [v6 beginDataTaskWithRequest:v5 completionHandler:&v24];
      _objc_release(v6);
      objc_storeStrong(&v29, 0);
      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v34, 0);
      objc_storeStrong(&v35, 0);
      objc_storeStrong(&v36, 0);
      v40 = 0;
    }

    else
    {
      v39 = _AKLogSystem();
      v38 = 16;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v17 = v39;
        v18 = v38;
        sub_10001CEEC(v37);
        _os_log_error_impl(&_mh_execute_header, v17, v18, "Missing identity token", v37, 2u);
      }

      objc_storeStrong(&v39, 0);
      v15 = v45;
      v16 = [NSError ak_errorWithCode:-7056];
      v15[2](v15, 0);
      _objc_release(v16);
      v40 = 1;
    }
  }

  else
  {
    v43 = _AKLogSystem();
    v42 = 16;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      log = v43;
      type = v42;
      sub_10001CEEC(v41);
      _os_log_error_impl(&_mh_execute_header, log, type, "Internal or private access entitlement required but missing!", v41, 2u);
    }

    objc_storeStrong(&v43, 0);
    v19 = v45;
    v20 = [NSError ak_errorWithCode:-7026];
    v19[2](v19, 0);
    _objc_release(v20);
    v40 = 1;
  }

  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(location, 0);
}

- (void)verifyMasterKey:(id)a3 withContext:(id)a4 completion:(id)a5
{
  v36 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v34 = 0;
  objc_storeStrong(&v34, a4);
  v33 = 0;
  objc_storeStrong(&v33, a5);
  if ([(AKClient *)v36->_client hasInternalPrivateAccess])
  {
    v5 = [AKSRPAuthenticationContextHelper alloc];
    v6 = [v34 authContext];
    v28 = [(AKSRPAuthenticationContextHelper *)v5 initWithContext:?];
    _objc_release(v6);
    [(AKSRPContextHelper *)v28 setAccountRecoveryMasterKey:location[0]];
    v7 = [v34 decodedRecoveryIdentityTokenString];
    [(AKSRPContextHelper *)v28 setDecodedRecoveryIdentityToken:?];
    _objc_release(v7);
    v8 = [v34 decodedRecoveryPETString];
    [(AKSRPContextHelper *)v28 setDecodedRecoveryPET:?];
    _objc_release(v8);
    [(AKSRPContextHelper *)v28 setClient:v36->_client];
    [(AKSRPContextHelper *)v28 setIgnoreInternalTokens:1];
    v9 = [v34 authContext];
    v27 = [v9 altDSID];
    _objc_release(v9);
    v11 = [AKURLBag bagForAltDSID:v27];
    v10 = AKURLBagKeyBasicAuthKey;
    v18 = _NSConcreteStackBlock;
    v19 = -1073741824;
    v20 = 0;
    v21 = sub_10003E4E8;
    v22 = &unk_10031FC00;
    v23 = _objc_retain(v28);
    v24 = _objc_retain(v34);
    v26 = _objc_retain(v33);
    v25 = _objc_retain(v36);
    [v11 urlForKey:v10 completion:&v18];
    _objc_release(v11);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v28, 0);
    v29 = 0;
  }

  else
  {
    v32 = _AKLogSystem();
    v31 = 16;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      log = v32;
      type = v31;
      sub_10001CEEC(v30);
      _os_log_error_impl(&_mh_execute_header, log, type, "Internal or private access entitlement required but missing!", v30, 2u);
    }

    objc_storeStrong(&v32, 0);
    v12 = v33;
    v13 = [NSError ak_errorWithCode:-7026];
    v12[2](v12, 0);
    _objc_release(v13);
    v29 = 1;
  }

  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
}

- (void)persistRecoveryKeyWithContext:(id)a3 authContext:(id)a4 completion:(id)a5
{
  location[2] = self;
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
    _os_log_impl(&_mh_execute_header, log, type, "Attempting to persist verifier", v25, 2u);
  }

  objc_storeStrong(&v27, 0);
  v24 = 0;
  v23 = 0;
  v22 = 1;
  objc_storeStrong(&v24, AKURLBagKeyStoreModernRecovery);
  v5 = [AKGrandSlamRequestProvider alloc];
  v21 = [(AKURLRequestProviderImpl *)v5 initWithContext:v29 urlBagKey:v24];
  v7 = [location[0] verifier];
  [(AKURLRequestProviderImpl *)v21 setAuthKitBody:?];
  _objc_release(v7);
  [(AKGrandSlamRequestProvider *)v21 setShouldSendIdentityToken:v22 & 1];
  [(AKGrandSlamRequestProvider *)v21 setRequestBodyType:v23];
  [(AKGrandSlamRequestProvider *)v21 setExpectedResponseType:v23];
  v6 = [AKServiceControllerImpl alloc];
  v20 = [(AKServiceControllerImpl *)v6 initWithRequestProvider:v21];
  v19 = objc_alloc_init(AKAuthHandlerImpl);
  [(AKServiceControllerImpl *)v20 setAuthenticationDelegate:v19];
  v8 = v20;
  v13 = _NSConcreteStackBlock;
  v14 = -1073741824;
  v15 = 0;
  v16 = sub_10003F118;
  v17 = &unk_10031FC28;
  v18 = _objc_retain(v28);
  [(AKServiceControllerImpl *)v8 executeRequestWithCompletion:&v13];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

- (id)_recoveryContextFromServerInfo:(id)a3 error:(id *)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = a4;
  v21 = [AKAccountRecoveryContext recoveryContextWithServerInfo:location[0]];
  if ([v21 isValid])
  {
    v20 = _AKLogSystem();
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      log = v20;
      type = v19;
      sub_10001CEEC(v18);
      _os_log_impl(&_mh_execute_header, log, type, "Recovery context is valid...", v18, 2u);
    }

    objc_storeStrong(&v20, 0);
    v24 = _objc_retain(v21);
    v17 = 1;
  }

  else
  {
    v16 = _AKLogSystem();
    v15 = 16;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v8 = v16;
      v9 = v15;
      sub_10001CEEC(v14);
      _os_log_error_impl(&_mh_execute_header, v8, v9, "Recovery context is invalid...", v14, 2u);
    }

    objc_storeStrong(&v16, 0);
    if (v22)
    {
      v7 = [NSError ak_errorWithCode:-7059];
      v4 = v7;
      *v22 = v7;
      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v25, *v22);
        _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "_recoveryContextFromServerInfo error: %@", v25, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }

    v24 = 0;
    v17 = 1;
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  v5 = v24;

  return v5;
}

@end