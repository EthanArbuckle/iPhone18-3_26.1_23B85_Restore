@interface AKGrandSlamRequestProvider
- (AKAppleIDServerResourceLoadDelegate)loadDelegate;
- (BOOL)signRequest:(id)request error:(id *)error;
- (BOOL)validateResponseData:(id)data error:(id *)error;
@end

@implementation AKGrandSlamRequestProvider

- (AKAppleIDServerResourceLoadDelegate)loadDelegate
{
  selfCopy = self;
  v16[1] = a2;
  shouldSendIdentityToken = [(AKGrandSlamRequestProvider *)self shouldSendIdentityToken];
  concreteAuthenticationContext = [(AKURLRequestProviderImpl *)selfCopy concreteAuthenticationContext];
  [(AKAppleIDAuthenticationContext *)concreteAuthenticationContext set_shouldSendIdentityTokenForRemoteUI:shouldSendIdentityToken];
  _objc_release(concreteAuthenticationContext);
  v5 = [AKDServerUIController alloc];
  client = [(AKURLRequestProviderImpl *)selfCopy client];
  v16[0] = [(AKDServerUIController *)v5 initWithClient:?];
  _objc_release(client);
  v7 = v16[0];
  concreteAuthenticationContext2 = [(AKURLRequestProviderImpl *)selfCopy concreteAuthenticationContext];
  v15 = [v7 resourceLoadDelegateWithContext:?];
  _objc_release(concreteAuthenticationContext2);
  urlBagKey = [(AKURLRequestProviderImpl *)selfCopy urlBagKey];
  [v15 setInitialURLRequestKey:?];
  _objc_release(urlBagKey);
  urlBagKey2 = [(AKURLRequestProviderImpl *)selfCopy urlBagKey];
  [v15 setBagUrlKey:?];
  _objc_release(urlBagKey2);
  dataCenterIdentifier = [(AKURLRequestProviderImpl *)selfCopy dataCenterIdentifier];
  [v15 setDataCenterIdentifier:?];
  _objc_release(dataCenterIdentifier);
  client2 = [(AKURLRequestProviderImpl *)selfCopy client];
  bundleID = [(AKClient *)client2 bundleID];
  [v15 setClientBundleID:?];
  _objc_release(bundleID);
  _objc_release(client2);
  v14 = _objc_retain(v15);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v16, 0);

  return v14;
}

- (BOOL)signRequest:(id)request error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  errorCopy = error;
  if (![(AKGrandSlamRequestProvider *)selfCopy authenticatedRequest]|| (v18 = [(AKGrandSlamRequestProvider *)selfCopy loadDelegate], v19 = [(AKAppleIDServerResourceLoadDelegate *)v18 heartbeatToken], _objc_release(v19), _objc_release(v18), v19))
  {
    loadDelegate = [(AKGrandSlamRequestProvider *)selfCopy loadDelegate];
    _objc_release(loadDelegate);
    if (loadDelegate)
    {
      loadDelegate2 = [(AKGrandSlamRequestProvider *)selfCopy loadDelegate];
      [(AKAppleIDServerResourceLoadDelegate *)loadDelegate2 signRequestWithCommonHeaders:location[0]];
      _objc_release(loadDelegate2);
      v27 = 0;
      concreteAuthenticationContext = [(AKURLRequestProviderImpl *)selfCopy concreteAuthenticationContext];
      v25 = v27;
      v12 = [(AKAppleIDAuthenticationContext *)concreteAuthenticationContext authKitAccount:&v25];
      objc_storeStrong(&v27, v25);
      v26 = v12;
      _objc_release(concreteAuthenticationContext);
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
      context = [(AKURLRequestProviderImpl *)selfCopy context];
      altDSID = [(AKAuthenticatedServerRequest *)context altDSID];
      sub_1000194D4(v36, altDSID);
      _os_log_error_impl(&_mh_execute_header, v30, v29, "Could not find heartbeat token for account %@", v36, 0xCu);
      _objc_release(altDSID);
      _objc_release(context);
    }

    objc_storeStrong(&v30, 0);
    if (errorCopy)
    {
      v15 = [NSError ak_errorWithCode:-7042];
      v4 = v15;
      *errorCopy = v15;
    }

    v34 = 0;
    v28 = 1;
  }

  objc_storeStrong(location, 0);
  return v34 & 1;
}

- (BOOL)validateResponseData:(id)data error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  errorCopy = error;
  v10.receiver = selfCopy;
  v10.super_class = AKGrandSlamRequestProvider;
  v11 = [(AKURLRequestProviderImpl *)&v10 validateResponseData:location[0] error:error];
  if (errorCopy && *errorCopy)
  {
    v6 = [AKGrandSlamResponseHandler alloc];
    context = [(AKURLRequestProviderImpl *)selfCopy context];
    v9 = [(AKGrandSlamResponseHandler *)v6 initWithContext:?];
    _objc_release(context);
    [(AKGrandSlamResponseHandler *)v9 handleResponseError:*errorCopy];
    objc_storeStrong(&v9, 0);
  }

  v5 = v11;
  objc_storeStrong(location, 0);
  return v5 & 1;
}

@end