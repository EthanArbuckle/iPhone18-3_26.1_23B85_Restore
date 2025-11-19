@interface AKFidoRequestProvider
- (BOOL)signRequest:(id)a3 error:(id *)a4;
- (BOOL)validateResponseData:(id)a3 error:(id *)a4;
- (id)loadDelegate;
@end

@implementation AKFidoRequestProvider

- (id)loadDelegate
{
  v16 = self;
  v15[1] = a2;
  v3 = [(AKURLRequestProviderImpl *)self concreteAuthenticationContext];
  [(AKAppleIDAuthenticationContext *)v3 set_shouldSendIdentityTokenForRemoteUI:1];
  _objc_release(v3);
  v4 = [AKDServerUIController alloc];
  v5 = [(AKURLRequestProviderImpl *)v16 client];
  v15[0] = [(AKDServerUIController *)v4 initWithClient:?];
  _objc_release(v5);
  v6 = v15[0];
  v7 = [(AKURLRequestProviderImpl *)v16 concreteAuthenticationContext];
  v14 = [v6 resourceLoadDelegateWithContext:?];
  _objc_release(v7);
  v8 = [(AKURLRequestProviderImpl *)v16 urlBagKey];
  [v14 setInitialURLRequestKey:?];
  _objc_release(v8);
  v9 = [(AKURLRequestProviderImpl *)v16 urlBagKey];
  [v14 setBagUrlKey:?];
  _objc_release(v9);
  v10 = [(AKURLRequestProviderImpl *)v16 dataCenterIdentifier];
  [v14 setDataCenterIdentifier:?];
  _objc_release(v10);
  [v14 setShouldSendPhoneNumber:1];
  [v14 setShouldSendSigningHeaders:1];
  v12 = [(AKURLRequestProviderImpl *)v16 concreteAuthenticationContext];
  v11 = [(AKAppleIDAuthenticationContext *)v12 _identityToken];
  [v14 setIdentityToken:?];
  _objc_release(v11);
  _objc_release(v12);
  v13 = _objc_retain(v14);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(v15, 0);

  return v13;
}

- (BOOL)signRequest:(id)a3 error:(id *)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = a4;
  v9.receiver = v12;
  v9.super_class = AKFidoRequestProvider;
  if ([(AKGrandSlamRequestProvider *)&v9 signRequest:location[0] error:a4])
  {
    v7 = [(AKFidoRequestProvider *)v12 recoveryToken];
    _objc_release(v7);
    if (v7)
    {
      v5 = location[0];
      v6 = [(AKFidoRequestProvider *)v12 recoveryToken];
      [v5 ak_addFidoRecoveryTokenHeader:?];
      _objc_release(v6);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  objc_storeStrong(location, 0);
  return v13 & 1;
}

- (BOOL)validateResponseData:(id)a3 error:(id *)a4
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = a4;
  v15.receiver = v19;
  v15.super_class = AKFidoRequestProvider;
  v16 = [(AKGrandSlamRequestProvider *)&v15 validateResponseData:location[0] error:a4];
  if ((v16 & 1) == 1)
  {
    v14 = [AAFSerialization dictionaryFromObject:location[0] ofType:@"application/json"];
    if (v14)
    {
      v13 = [v14 objectForKeyedSubscript:AKErrorStatusCodeKey];
      if (v13 && [v13 integerValue])
      {
        oslog = _AKLogFido();
        type = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          sub_10006A654(v22, [v13 intValue]);
          _os_log_error_impl(&_mh_execute_header, oslog, type, "Server request failed with error code: %i", v22, 8u);
        }

        objc_storeStrong(&oslog, 0);
        v20[0] = NSLocalizedDescriptionKey;
        v7 = [v14 objectForKeyedSubscript:AKErrorMessageKey];
        v21[0] = v7;
        v20[1] = AKErrorStatusCodeKey;
        v21[1] = v13;
        v10 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
        _objc_release(v7);
        v8 = [NSError ak_errorWithCode:-7010 userInfo:v10];
        v4 = v8;
        *v17 = v8;
        v16 = 0;
        objc_storeStrong(&v10, 0);
      }

      objc_storeStrong(&v13, 0);
    }

    else
    {
      v17 = 0;
    }

    objc_storeStrong(&v14, 0);
  }

  v6 = v16;
  objc_storeStrong(location, 0);
  return v6 & 1;
}

@end