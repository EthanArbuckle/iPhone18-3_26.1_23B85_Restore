@interface AKDServerUIController
- (AKDServerUIController)initWithClient:(id)a3;
- (AKDServerUIController)initWithLiaison:(id)a3 client:(id)a4 delegate:(id)a5;
- (id)_AKIDSCertificateFetchQueue;
- (id)_errorFromServerResponse:(id)a3;
- (id)_fetchPhoneInformationWithAdditionalInfo:(id)a3 error:(id *)a4;
- (id)resourceLoadDelegateWithContext:(id)a3;
- (id)resourceLoadDelegateWithContext:(id)a3 authResponse:(id)a4;
- (void)_decorateLoadDelegate:(id)a3 withContext:(id)a4;
- (void)_fetchIDSCertificateWithContext:(id)a3 completionHandler:(id)a4;
- (void)_reportPacTelemetryForEvent:(id)a3 context:(id)a4 error:(id)a5;
- (void)_showServerUIWithContext:(id)a3 completion:(id)a4;
- (void)getServerUILoadDelegateWithContext:(id)a3 completion:(id)a4;
- (void)getServerUILoadDelegateWithServerContext:(id)a3 completion:(id)a4;
- (void)showServerUIWithContext:(id)a3 completion:(id)a4;
@end

@implementation AKDServerUIController

- (AKDServerUIController)initWithClient:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6 = [(AKDServerUIController *)v3 init];
  v8 = v6;
  objc_storeStrong(&v8, v6);
  if (v6)
  {
    objc_storeStrong(&v8->_client, location[0]);
  }

  v5 = _objc_retain(v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (AKDServerUIController)initWithLiaison:(id)a3 client:(id)a4 delegate:(id)a5
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
  v10 = [(AKDServerUIController *)v5 init];
  v14 = v10;
  objc_storeStrong(&v14, v10);
  if (v10)
  {
    objc_storeStrong(&v14->_authUILiaison, location[0]);
    objc_storeWeak(&v14->_delegate, v11);
    objc_storeStrong(&v14->_client, v12);
  }

  v7 = _objc_retain(v14);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v14, 0);
  return v7;
}

- (id)_AKIDSCertificateFetchQueue
{
  v5 = &unk_100374890;
  location = 0;
  objc_storeStrong(&location, &stru_100324DD0);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100374888;

  return v2;
}

- (void)showServerUIWithContext:(id)a3 completion:(id)a4
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v19 = _AKLogSystem();
  v18 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [location[0] requestConfiguration];
    sub_1000194D4(v23, v7);
    _os_log_impl(&_mh_execute_header, v19, v18, "Asking client to show server UI with %@...", v23, 0xCu);
    _objc_release(v7);
  }

  objc_storeStrong(&v19, 0);
  v6 = [location[0] requestConfiguration];
  v17 = [v6 resourceLoadDelegate];
  _objc_release(v6);
  if (v17)
  {
    [(AKDServerUIController *)v22 _showServerUIWithContext:location[0] completion:v20];
  }

  else
  {
    v5 = v22;
    v4 = location[0];
    v9 = _NSConcreteStackBlock;
    v10 = -1073741824;
    v11 = 0;
    v12 = sub_1001635FC;
    v13 = &unk_100324DF8;
    v16 = _objc_retain(v20);
    v14 = _objc_retain(location[0]);
    v15 = _objc_retain(v22);
    [(AKDServerUIController *)v5 getServerUILoadDelegateWithServerContext:v4 completion:&v9];
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v16, 0);
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)_showServerUIWithContext:(id)a3 completion:(id)a4
{
  v30 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v28 = 0;
  objc_storeStrong(&v28, a4);
  v27 = _AKLogSystem();
  v26 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v12 = [location[0] requestConfiguration];
    v11 = [v12 request];
    v10 = [location[0] requestConfiguration];
    v9 = [v10 request];
    v8 = [v9 allHTTPHeaderFields];
    sub_10001B098(v31, v11, v8);
    _os_log_debug_impl(&_mh_execute_header, v27, v26, "Showing server UI with request: %@, %@", v31, 0x16u);
    _objc_release(v8);
    _objc_release(v9);
    _objc_release(v10);
    _objc_release(v11);
    _objc_release(v12);
  }

  objc_storeStrong(&v27, 0);
  v25 = [location[0] authContext];
  objc_initWeak(&from, v30);
  authUILiaison = v30->_authUILiaison;
  v6 = v25;
  client = v30->_client;
  v4 = [location[0] requestConfiguration];
  v14 = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_100163BB8;
  v18 = &unk_100324E48;
  objc_copyWeak(v23, &from);
  v19 = _objc_retain(location[0]);
  v22 = _objc_retain(v28);
  v20 = _objc_retain(v30);
  v21 = _objc_retain(v25);
  [(AKAuthenticationUILiaison *)authUILiaison presentServerProvidedUIForContext:v6 client:client withConfiguration:v4 completion:&v14];
  _objc_release(v4);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v19, 0);
  objc_destroyWeak(v23);
  objc_destroyWeak(&from);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

- (id)_errorFromServerResponse:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = [AKAppleIDServerResourceLoadDelegate signalFromServerResponse:location[0]];
  if (v26 == 2)
  {
    v25 = _AKLogSystem();
    v24 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      log = v25;
      type = v24;
      sub_10001CEEC(v23);
      _os_log_impl(&_mh_execute_header, log, type, "Server UI-based authentication has been canceled.", v23, 2u);
    }

    objc_storeStrong(&v25, 0);
    v28 = [NSError ak_errorWithCode:-7003];
    v22 = 1;
  }

  else if (v26 == 1)
  {
    v21 = _AKLogSystem();
    v20 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v21;
      v10 = v20;
      sub_10001CEEC(v19);
      _os_log_impl(&_mh_execute_header, v9, v10, "Server UI has been skipped.", v19, 2u);
    }

    objc_storeStrong(&v21, 0);
    v28 = [NSError ak_errorWithCode:-7038];
    v22 = 1;
  }

  else if (v26 == 5)
  {
    v18 = _AKLogSystem();
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v18;
      v8 = v17;
      sub_10001CEEC(v16);
      _os_log_impl(&_mh_execute_header, v7, v8, "User elected to try again", v16, 2u);
    }

    objc_storeStrong(&v18, 0);
    v28 = [NSError ak_errorWithCode:-7062];
    v22 = 1;
  }

  else if (v26)
  {
    v28 = 0;
    v22 = 1;
  }

  else
  {
    oslog = _AKLogSystem();
    v14 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v5 = oslog;
      v6 = v14;
      sub_10001CEEC(v13);
      _os_log_error_impl(&_mh_execute_header, v5, v6, "Unknown action signal from server UI final response!", v13, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v28 = [NSError ak_errorWithCode:-7039];
    v22 = 1;
  }

  objc_storeStrong(location, 0);
  v3 = v28;

  return v3;
}

- (void)getServerUILoadDelegateWithServerContext:(id)a3 completion:(id)a4
{
  v33 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v31 = 0;
  objc_storeStrong(&v31, a4);
  v30 = 0;
  v29 = [location[0] initiatingServerResponse];
  if (v29)
  {
    v28 = _AKLogSystem();
    v27 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      log = v28;
      type = v27;
      sub_10001CEEC(v26);
      _os_log_impl(&_mh_execute_header, log, type, "Creating resource load delegate with auth response", v26, 2u);
    }

    objc_storeStrong(&v28, 0);
    v12 = v33;
    v13 = [location[0] authContext];
    v4 = [AKDServerUIController resourceLoadDelegateWithContext:v12 authResponse:"resourceLoadDelegateWithContext:authResponse:"];
    v5 = v30;
    v30 = v4;
    _objc_release(v5);
    _objc_release(v13);
  }

  else
  {
    v10 = v33;
    v11 = [location[0] authContext];
    v6 = [(AKDServerUIController *)v10 resourceLoadDelegateWithContext:?];
    v7 = v30;
    v30 = v6;
    _objc_release(v7);
    _objc_release(v11);
  }

  v8 = v33;
  v9 = [location[0] authContext];
  v17 = _NSConcreteStackBlock;
  v18 = -1073741824;
  v19 = 0;
  v20 = sub_100164DC4;
  v21 = &unk_100324E70;
  v22 = _objc_retain(v30);
  v23 = _objc_retain(v33);
  v24 = _objc_retain(location[0]);
  v25 = _objc_retain(v31);
  [(AKDServerUIController *)v8 _fetchIDSCertificateWithContext:v9 completionHandler:&v17];
  _objc_release(v9);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
}

- (void)getServerUILoadDelegateWithContext:(id)a3 completion:(id)a4
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  v21 = _AKLogSystem();
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    log = v21;
    type = v20;
    sub_10001CEEC(v19);
    _os_log_impl(&_mh_execute_header, log, type, "Fetching resource load delegate", v19, 2u);
  }

  objc_storeStrong(&v21, 0);
  v18 = [(AKDServerUIController *)v24 resourceLoadDelegateWithContext:location[0]];
  v5 = v24;
  v4 = location[0];
  v9 = _NSConcreteStackBlock;
  v10 = -1073741824;
  v11 = 0;
  v12 = sub_1001652F4;
  v13 = &unk_100324E70;
  v14 = _objc_retain(v18);
  v15 = _objc_retain(v24);
  v16 = _objc_retain(location[0]);
  v17 = _objc_retain(v22);
  [(AKDServerUIController *)v5 _fetchIDSCertificateWithContext:v4 completionHandler:&v9];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (id)resourceLoadDelegateWithContext:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = objc_alloc_init(AKAppleIDServerResourceLoadDelegate);
  [(AKDServerUIController *)v7 _decorateLoadDelegate:v5 withContext:location[0]];
  v4 = _objc_retain(v5);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (id)resourceLoadDelegateWithContext:(id)a3 authResponse:(id)a4
{
  v40 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v38 = 0;
  objc_storeStrong(&v38, a4);
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v28 = [location[0] proxiedDevice];
  _objc_release(v28);
  if (v28)
  {
    v33 = _AKLogSystem();
    v32 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      log = v33;
      v25 = v32;
      sub_10001CEEC(v31);
      _os_log_impl(&_mh_execute_header, log, v25, "Auth response received is for proxy, initializing resource load delegate accordingly", v31, 2u);
    }

    objc_storeStrong(&v33, 0);
    v19 = +[AKAccountManager sharedInstance];
    v8 = [(AKAccountManager *)v19 altDSIDforPrimaryiCloudAccount];
    v9 = v37;
    v37 = v8;
    _objc_release(v9);
    _objc_release(v19);
    v20 = +[AKAccountManager sharedInstance];
    v30 = [(AKAccountManager *)v20 authKitAccountWithAltDSID:v37 error:0];
    _objc_release(v20);
    v22 = +[AKAccountManager sharedInstance];
    v21 = [(AKAccountManager *)v22 masterTokenForAccount:v30];
    v10 = [v21 stringValue];
    v11 = v36;
    v36 = v10;
    _objc_release(v11);
    _objc_release(v21);
    _objc_release(v22);
    v12 = [v38 altDSID];
    v13 = v35;
    v35 = v12;
    _objc_release(v13);
    v23 = [v38 masterToken];
    v14 = [v23 stringValue];
    v15 = v34;
    v34 = v14;
    _objc_release(v15);
    _objc_release(v23);
    objc_storeStrong(&v30, 0);
  }

  else
  {
    v4 = [v38 altDSID];
    v5 = v37;
    v37 = v4;
    _objc_release(v5);
    v26 = [v38 masterToken];
    v6 = [v26 stringValue];
    v7 = v36;
    v36 = v6;
    _objc_release(v7);
    _objc_release(v26);
  }

  v16 = [AKAppleIDServerResourceLoadDelegate alloc];
  v29 = [v16 initWithAltDSID:v37 identityToken:v36];
  [v29 setProxiedAltDSID:v35];
  [v29 setProxiedIdentityToken:v34];
  [v29 setShouldSendSigningHeaders:{objc_msgSend(v38, "requireSigningHeaders")}];
  [(AKDServerUIController *)v40 _decorateLoadDelegate:v29 withContext:location[0]];
  v18 = _objc_retain(v29);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);

  return v18;
}

- (void)_decorateLoadDelegate:(id)a3 withContext:(id)a4
{
  v41 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v39 = 0;
  objc_storeStrong(&v39, a4);
  [location[0] decorateWithContext:v39];
  v24 = location[0];
  v25 = [(AKClient *)v41->_client name];
  [v24 setClientAppName:?];
  _objc_release(v25);
  v26 = location[0];
  v27 = [(AKClient *)v41->_client bundleID];
  [v26 setClientBundleID:?];
  _objc_release(v27);
  v38 = 0;
  v36 = 0;
  v28 = [v39 authKitAccount:&v36];
  objc_storeStrong(&v38, v36);
  v37 = v28;
  if (v28)
  {
    if ([v39 _shouldSendGrandSlamTokensForRemoteUI])
    {
      v16 = location[0];
      v18 = +[AKAccountManager sharedInstance];
      v17 = [(AKAccountManager *)v18 hearbeatTokenForAccount:v37];
      [v16 setHeartbeatToken:?];
      _objc_release(v17);
      _objc_release(v18);
      v19 = location[0];
      v21 = +[AKAccountManager sharedInstance];
      v20 = [(AKAccountManager *)v21 activeServiceNamesForAccount:v37];
      [v19 setLoggedInServices:?];
      _objc_release(v20);
      _objc_release(v21);
      v32 = 0;
      v22 = 0;
      if ([v39 _shouldSendIdentityTokenForRemoteUI])
      {
        v33 = [location[0] identityToken];
        v32 = 1;
        v22 = v33 == 0;
      }

      if (v32)
      {
        _objc_release(v33);
      }

      if (v22)
      {
        v12 = location[0];
        v15 = +[AKAccountManager sharedInstance];
        v14 = [(AKAccountManager *)v15 masterTokenForAccount:v37];
        v13 = [v14 stringValue];
        [v12 setIdentityToken:?];
        _objc_release(v13);
        _objc_release(v14);
        _objc_release(v15);
      }

      if ([v39 needsCredentialRecovery] & 1) != 0 || (objc_msgSend(v39, "needsPasswordChange"))
      {
        v6 = location[0];
        v8 = +[AKAccountManager sharedInstance];
        v7 = [(AKAccountManager *)v8 continuationTokenForAccount:v37];
        [v6 setContinuationToken:?];
        _objc_release(v7);
        _objc_release(v8);
        v9 = location[0];
        v11 = +[AKAccountManager sharedInstance];
        v10 = [(AKAccountManager *)v11 passwordResetTokenForAccount:v37];
        [v9 setPasswordResetToken:?];
        _objc_release(v10);
        _objc_release(v11);
      }
    }

    else
    {
      v31 = _AKLogSystem();
      v30 = 2;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v4 = v31;
        v5 = v30;
        sub_10001CEEC(v29);
        _os_log_debug_impl(&_mh_execute_header, v4, v5, "Context explicitly does not want GS tokens for server UI, moving on...", v29, 2u);
      }

      objc_storeStrong(&v31, 0);
    }
  }

  else
  {
    v35 = _AKLogSystem();
    v34 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v42, v38);
      _os_log_impl(&_mh_execute_header, v35, v34, "Could not find an existing AuthKit account, so we can't attach account specific headers: %@", v42, 0xCu);
    }

    objc_storeStrong(&v35, 0);
  }

  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
}

- (void)_fetchIDSCertificateWithContext:(id)a3 completionHandler:(id)a4
{
  v43 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v41 = 0;
  objc_storeStrong(&v41, a4);
  v17 = +[AKDevice currentDevice];
  v18 = [v17 isMultiUserMode];
  _objc_release(v17);
  if (v18)
  {
    v14 = v41;
    v15 = [NSError ak_errorWithCode:-7027];
    v14[2](v14, 0);
    _objc_release(v15);
  }

  else
  {
    v40 = _AKLogSystem();
    v39 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      log = v40;
      type = v39;
      sub_10001CEEC(v38);
      _os_log_impl(&_mh_execute_header, log, type, "Attempting to fetch IDS certificate...", v38, 2u);
    }

    objc_storeStrong(&v40, 0);
    v37 = 0uLL;
    v11 = _AKSignpostLogSystem();
    *&v36 = _AKSignpostCreate();
    *(&v36 + 1) = v4;
    _objc_release(v11);
    v35 = _AKSignpostLogSystem();
    v34 = 1;
    v33 = v36;
    if (v36 && v33 != -1 && os_signpost_enabled(v35))
    {
      v8 = v35;
      v9 = v34;
      spid = v33;
      sub_10001CEEC(v32);
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, v9, spid, "FetchIDSPhoneCertificate", " enableTelemetry=YES ", v32, 2u);
    }

    objc_storeStrong(&v35, 0);
    v31 = _AKSignpostLogSystem();
    v30 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      sub_100036FE8(v44, v36);
      _os_log_impl(&_mh_execute_header, v31, v30, "BEGIN [%lld]: FetchIDSPhoneCertificate  enableTelemetry=YES ", v44, 0xCu);
    }

    objc_storeStrong(&v31, 0);
    v37 = v36;
    v5 = [IDSPhoneCertificateVendor alloc];
    v6 = [(AKDServerUIController *)v43 _AKIDSCertificateFetchQueue];
    v29 = [v5 initWithQueue:?];
    _objc_release(v6);
    v7 = v29;
    v19 = _NSConcreteStackBlock;
    v20 = -1073741824;
    v21 = 0;
    v22 = sub_100166578;
    v23 = &unk_100324E98;
    v28 = v37;
    v24 = _objc_retain(v43);
    v25 = _objc_retain(location[0]);
    v26 = _objc_retain(v29);
    v27 = _objc_retain(v41);
    [v7 generatePhoneAuthenticationSignatureOverData:0 withCompletion:&v19];
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v29, 0);
  }

  objc_storeStrong(&v41, 0);
  objc_storeStrong(location, 0);
}

- (id)_fetchPhoneInformationWithAdditionalInfo:(id)a3 error:(id *)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = +[AKCarrierBundleUtilities sharedInstance];
  v7 = [(AKCarrierBundleUtilities *)v6 phoneBundleInfoWithAdditionalInfo:location[0] error:a4];
  _objc_release(v6);
  objc_storeStrong(location, 0);

  return v7;
}

- (void)_reportPacTelemetryForEvent:(id)a3 context:(id)a4 error:(id)a5
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13 = 0;
  objc_storeStrong(&v13, a5);
  v12 = _AKLogSystem();
  v11 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_10001B098(v17, location[0], v13);
    _os_log_debug_impl(&_mh_execute_header, v12, v11, "Begin reporting PAC event %@ with error: %@", v17, 0x16u);
  }

  objc_storeStrong(&v12, 0);
  v10 = [AAFAnalyticsEvent ak_analyticsEventWithContext:v14 eventName:location[0] error:v13];
  if (v13)
  {
    v5 = &__kCFBooleanFalse;
  }

  else
  {
    v5 = &__kCFBooleanTrue;
  }

  [v10 setObject:v5 forKeyedSubscript:kAAFDidSucceed];
  v6 = +[AKAnalyticsReporterRTC rtcAnalyticsReporter];
  [v6 sendEvent:v10];
  _objc_release(v6);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v16, location[0]);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Finish reporting PAC event %@.", v16, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

@end