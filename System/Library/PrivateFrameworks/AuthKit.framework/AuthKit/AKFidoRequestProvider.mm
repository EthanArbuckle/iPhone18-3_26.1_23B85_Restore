@interface AKFidoRequestProvider
- (BOOL)signRequest:(id)request error:(id *)error;
- (BOOL)validateResponseData:(id)data error:(id *)error;
- (id)loadDelegate;
@end

@implementation AKFidoRequestProvider

- (id)loadDelegate
{
  selfCopy = self;
  v15[1] = a2;
  concreteAuthenticationContext = [(AKURLRequestProviderImpl *)self concreteAuthenticationContext];
  [(AKAppleIDAuthenticationContext *)concreteAuthenticationContext set_shouldSendIdentityTokenForRemoteUI:1];
  _objc_release(concreteAuthenticationContext);
  v4 = [AKDServerUIController alloc];
  client = [(AKURLRequestProviderImpl *)selfCopy client];
  v15[0] = [(AKDServerUIController *)v4 initWithClient:?];
  _objc_release(client);
  v6 = v15[0];
  concreteAuthenticationContext2 = [(AKURLRequestProviderImpl *)selfCopy concreteAuthenticationContext];
  v14 = [v6 resourceLoadDelegateWithContext:?];
  _objc_release(concreteAuthenticationContext2);
  urlBagKey = [(AKURLRequestProviderImpl *)selfCopy urlBagKey];
  [v14 setInitialURLRequestKey:?];
  _objc_release(urlBagKey);
  urlBagKey2 = [(AKURLRequestProviderImpl *)selfCopy urlBagKey];
  [v14 setBagUrlKey:?];
  _objc_release(urlBagKey2);
  dataCenterIdentifier = [(AKURLRequestProviderImpl *)selfCopy dataCenterIdentifier];
  [v14 setDataCenterIdentifier:?];
  _objc_release(dataCenterIdentifier);
  [v14 setShouldSendPhoneNumber:1];
  [v14 setShouldSendSigningHeaders:1];
  concreteAuthenticationContext3 = [(AKURLRequestProviderImpl *)selfCopy concreteAuthenticationContext];
  _identityToken = [(AKAppleIDAuthenticationContext *)concreteAuthenticationContext3 _identityToken];
  [v14 setIdentityToken:?];
  _objc_release(_identityToken);
  _objc_release(concreteAuthenticationContext3);
  v13 = _objc_retain(v14);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(v15, 0);

  return v13;
}

- (BOOL)signRequest:(id)request error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  errorCopy = error;
  v9.receiver = selfCopy;
  v9.super_class = AKFidoRequestProvider;
  if ([(AKGrandSlamRequestProvider *)&v9 signRequest:location[0] error:error])
  {
    recoveryToken = [(AKFidoRequestProvider *)selfCopy recoveryToken];
    _objc_release(recoveryToken);
    if (recoveryToken)
    {
      v5 = location[0];
      recoveryToken2 = [(AKFidoRequestProvider *)selfCopy recoveryToken];
      [v5 ak_addFidoRecoveryTokenHeader:?];
      _objc_release(recoveryToken2);
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

- (BOOL)validateResponseData:(id)data error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  errorCopy = error;
  v15.receiver = selfCopy;
  v15.super_class = AKFidoRequestProvider;
  v16 = [(AKGrandSlamRequestProvider *)&v15 validateResponseData:location[0] error:error];
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
        *errorCopy = v8;
        v16 = 0;
        objc_storeStrong(&v10, 0);
      }

      objc_storeStrong(&v13, 0);
    }

    else
    {
      errorCopy = 0;
    }

    objc_storeStrong(&v14, 0);
  }

  v6 = v16;
  objc_storeStrong(location, 0);
  return v6 & 1;
}

@end