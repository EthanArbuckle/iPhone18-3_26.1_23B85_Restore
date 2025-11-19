@interface AKGrandSlamRequestProvider
- (AKAppleIDServerResourceLoadDelegate)loadDelegate;
- (BOOL)signRequest:(id)a3 error:(id *)a4;
- (BOOL)validateResponseData:(id)a3 error:(id *)a4;
@end

@implementation AKGrandSlamRequestProvider

- (AKAppleIDServerResourceLoadDelegate)loadDelegate
{
  v17 = self;
  v16[1] = a2;
  v3 = [(AKGrandSlamRequestProvider *)self shouldSendIdentityToken];
  v4 = [(AKURLRequestProviderImpl *)v17 concreteAuthenticationContext];
  [(AKAppleIDAuthenticationContext *)v4 set_shouldSendIdentityTokenForRemoteUI:v3];
  _objc_release(v4);
  v5 = [AKDServerUIController alloc];
  v6 = [(AKURLRequestProviderImpl *)v17 client];
  v16[0] = [(AKDServerUIController *)v5 initWithClient:?];
  _objc_release(v6);
  v7 = v16[0];
  v8 = [(AKURLRequestProviderImpl *)v17 concreteAuthenticationContext];
  v15 = [v7 resourceLoadDelegateWithContext:?];
  _objc_release(v8);
  v9 = [(AKURLRequestProviderImpl *)v17 urlBagKey];
  [v15 setInitialURLRequestKey:?];
  _objc_release(v9);
  v10 = [(AKURLRequestProviderImpl *)v17 urlBagKey];
  [v15 setBagUrlKey:?];
  _objc_release(v10);
  v11 = [(AKURLRequestProviderImpl *)v17 dataCenterIdentifier];
  [v15 setDataCenterIdentifier:?];
  _objc_release(v11);
  v13 = [(AKURLRequestProviderImpl *)v17 client];
  v12 = [(AKClient *)v13 bundleID];
  [v15 setClientBundleID:?];
  _objc_release(v12);
  _objc_release(v13);
  v14 = _objc_retain(v15);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v16, 0);

  return v14;
}

- (BOOL)signRequest:(id)a3 error:(id *)a4
{
  v33 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v31 = a4;
  if (![(AKGrandSlamRequestProvider *)v33 authenticatedRequest]|| (v18 = [(AKGrandSlamRequestProvider *)v33 loadDelegate], v19 = [(AKAppleIDServerResourceLoadDelegate *)v18 heartbeatToken], _objc_release(v19), _objc_release(v18), v19))
  {
    v14 = [(AKGrandSlamRequestProvider *)v33 loadDelegate];
    _objc_release(v14);
    if (v14)
    {
      v11 = [(AKGrandSlamRequestProvider *)v33 loadDelegate];
      [(AKAppleIDServerResourceLoadDelegate *)v11 signRequestWithCommonHeaders:location[0]];
      _objc_release(v11);
      v27 = 0;
      v13 = [(AKURLRequestProviderImpl *)v33 concreteAuthenticationContext];
      v25 = v27;
      v12 = [(AKAppleIDAuthenticationContext *)v13 authKitAccount:&v25];
      objc_storeStrong(&v27, v25);
      v26 = v12;
      _objc_release(v13);
      if (v27)
      {
        v21 = _AKLogSystem();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          sub_1000194D4(v35, v27);
          _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Failed to attach continuation-token presence header due to account fetch error: %@", v35, 0xCu);
        }

        objc_storeStrong(&v21, 0);
      }

      else
      {
        v24 = _AKLogSystem();
        v23 = 2;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v9 = v24;
          v10 = v23;
          sub_10001CEEC(v22);
          _os_log_debug_impl(&_mh_execute_header, v9, v10, "Attaching continuation-token presence header", v22, 2u);
        }

        objc_storeStrong(&v24, 0);
        v6 = location[0];
        v8 = +[AKAccountManager sharedInstance];
        v7 = [(AKAccountManager *)v8 continuationTokenForAccount:v26];
        [v6 ak_addContinutationKeyPresenceHeader:?];
        _objc_release(v7);
        _objc_release(v8);
      }

      v34 = 1;
      v28 = 1;
      objc_storeStrong(&v26, 0);
      objc_storeStrong(&v27, 0);
    }

    else
    {
      v34 = 0;
      v28 = 1;
    }
  }

  else
  {
    v30 = _AKLogSystem();
    v29 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v17 = [(AKURLRequestProviderImpl *)v33 context];
      v16 = [(AKAuthenticatedServerRequest *)v17 altDSID];
      sub_1000194D4(v36, v16);
      _os_log_error_impl(&_mh_execute_header, v30, v29, "Could not find heartbeat token for account %@", v36, 0xCu);
      _objc_release(v16);
      _objc_release(v17);
    }

    objc_storeStrong(&v30, 0);
    if (v31)
    {
      v15 = [NSError ak_errorWithCode:-7042];
      v4 = v15;
      *v31 = v15;
    }

    v34 = 0;
    v28 = 1;
  }

  objc_storeStrong(location, 0);
  return v34 & 1;
}

- (BOOL)validateResponseData:(id)a3 error:(id *)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = a4;
  v10.receiver = v14;
  v10.super_class = AKGrandSlamRequestProvider;
  v11 = [(AKURLRequestProviderImpl *)&v10 validateResponseData:location[0] error:a4];
  if (v12 && *v12)
  {
    v6 = [AKGrandSlamResponseHandler alloc];
    v7 = [(AKURLRequestProviderImpl *)v14 context];
    v9 = [(AKGrandSlamResponseHandler *)v6 initWithContext:?];
    _objc_release(v7);
    [(AKGrandSlamResponseHandler *)v9 handleResponseError:*v12];
    objc_storeStrong(&v9, 0);
  }

  v5 = v11;
  objc_storeStrong(location, 0);
  return v5 & 1;
}

@end