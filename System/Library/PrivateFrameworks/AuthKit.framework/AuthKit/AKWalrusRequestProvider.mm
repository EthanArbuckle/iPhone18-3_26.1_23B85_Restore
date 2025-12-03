@interface AKWalrusRequestProvider
- (AKWalrusRequestProvider)initWithContext:(id)context urlBagKey:(id)key;
- (BOOL)_validateDataForVerifyEnableWalrusAllowedRequest:(id)request error:(id *)error;
- (BOOL)_validateDataForWalrusStateUpdateToServerRequest:(id)request error:(id *)error;
- (BOOL)_validateJSONResponseData:(id)data error:(id *)error;
- (BOOL)signRequest:(id)request error:(id *)error;
- (BOOL)validateResponseData:(id)data error:(id *)error;
- (id)_AKAuthContextWithUsername:(id)username password:(id)password;
- (id)parseRefreshUrl:(id)url;
- (unint64_t)expectedResponseType;
- (unint64_t)requestBodyType;
- (void)getPETForUsername:(id)username password:(id)password completion:(id)completion;
- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
@end

@implementation AKWalrusRequestProvider

- (AKWalrusRequestProvider)initWithContext:(id)context urlBagKey:(id)key
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v10 = 0;
  objc_storeStrong(&v10, key);
  v4 = selfCopy;
  selfCopy = 0;
  v9.receiver = v4;
  v9.super_class = AKWalrusRequestProvider;
  v8 = [(AKURLRequestProviderImpl *)&v9 initWithContext:location[0] urlBagKey:v10 shouldCacheResource:0];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    objc_storeStrong(&selfCopy->_walrusContext, location[0]);
  }

  v6 = _objc_retain(selfCopy);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (unint64_t)expectedResponseType
{
  reqInterceptToken = [(AKWalrusRequestProvider *)self reqInterceptToken];
  v5 = 0;
  v4 = 1;
  if (!reqInterceptToken)
  {
    refreshUrl = [(AKWalrusRequestProvider *)self refreshUrl];
    v5 = 1;
    v4 = refreshUrl != 0;
  }

  if (v5)
  {
    _objc_release(refreshUrl);
  }

  _objc_release(reqInterceptToken);
  return !v4;
}

- (unint64_t)requestBodyType
{
  refreshUrl = [(AKWalrusRequestProvider *)self refreshUrl];
  _objc_release(refreshUrl);
  return refreshUrl == 0;
}

- (BOOL)signRequest:(id)request error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v22[1] = error;
  v11 = [AKDServerUIController alloc];
  client = [(AKURLRequestProviderImpl *)selfCopy client];
  v22[0] = [(AKDServerUIController *)v11 initWithClient:?];
  _objc_release(client);
  v13 = [AKAppleIDAuthenticationContext alloc];
  walrusContext = [(AKWalrusRequestProvider *)selfCopy walrusContext];
  v21 = [v13 initWithAuthenticatedServerRequestContext:?];
  _objc_release(walrusContext);
  [v21 set_shouldSendIdentityTokenForRemoteUI:1];
  [v21 set_shouldSendGrandSlamTokensForRemoteUI:1];
  v20 = [v22[0] resourceLoadDelegateWithContext:v21];
  [v20 setShouldSendPhoneNumber:1];
  [v20 setShouldSendSigningHeaders:1];
  urlBagKey = [(AKURLRequestProviderImpl *)selfCopy urlBagKey];
  [v20 setInitialURLRequestKey:?];
  _objc_release(urlBagKey);
  urlBagKey2 = [(AKURLRequestProviderImpl *)selfCopy urlBagKey];
  [v20 setBagUrlKey:?];
  _objc_release(urlBagKey2);
  dataCenterIdentifier = [(AKURLRequestProviderImpl *)selfCopy dataCenterIdentifier];
  [v20 setDataCenterIdentifier:?];
  _objc_release(dataCenterIdentifier);
  walrusContext2 = [(AKWalrusRequestProvider *)selfCopy walrusContext];
  [v20 setCliMode:{-[AKWalrusContext cliMode](walrusContext2, "cliMode")}];
  _objc_release(walrusContext2);
  [v20 signRequest:location[0]];
  secondaryToken = [(AKWalrusRequestProvider *)selfCopy secondaryToken];
  _objc_release(secondaryToken);
  if (secondaryToken)
  {
    v8 = location[0];
    secondaryToken2 = [(AKWalrusRequestProvider *)selfCopy secondaryToken];
    [v8 setValue:? forHTTPHeaderField:?];
    _objc_release(secondaryToken2);
  }

  reqInterceptToken = [(AKWalrusRequestProvider *)selfCopy reqInterceptToken];
  _objc_release(reqInterceptToken);
  if (reqInterceptToken)
  {
    v5 = location[0];
    reqInterceptToken2 = [(AKWalrusRequestProvider *)selfCopy reqInterceptToken];
    [v5 setValue:? forHTTPHeaderField:?];
    _objc_release(reqInterceptToken2);
  }

  else
  {
    [location[0] setValue:@"application/json" forHTTPHeaderField:@"Accept"];
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(v22, 0);
  objc_storeStrong(location, 0);
  return 1;
}

- (BOOL)validateResponseData:(id)data error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  errorCopy = error;
  reqInterceptToken = [(AKWalrusRequestProvider *)selfCopy reqInterceptToken];
  _objc_release(reqInterceptToken);
  if (reqInterceptToken)
  {
    v14 = 1;
    v10 = 1;
  }

  else
  {
    secondaryToken = [(AKWalrusRequestProvider *)selfCopy secondaryToken];
    _objc_release(secondaryToken);
    if (secondaryToken)
    {
      v14 = [(AKWalrusRequestProvider *)selfCopy _validateJSONResponseData:location[0] error:errorCopy];
      v10 = 1;
    }

    else
    {
      v8.receiver = selfCopy;
      v8.super_class = AKWalrusRequestProvider;
      v9 = [(AKURLRequestProviderImpl *)&v8 validateResponseData:location[0] error:errorCopy];
      if (v9)
      {
        v14 = [(AKWalrusRequestProvider *)selfCopy _validateJSONResponseData:location[0] error:errorCopy];
      }

      else
      {
        v14 = v9 & 1;
      }

      v10 = 1;
    }
  }

  objc_storeStrong(location, 0);
  return v14 & 1;
}

- (BOOL)_validateJSONResponseData:(id)data error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  urlBagKey = [(AKURLRequestProviderImpl *)selfCopy urlBagKey];
  v10 = 0;
  v9 = 1;
  if (![(NSString *)urlBagKey isEqualToString:AKURLBagKeyCustodianDataRecoveryServiceDisableComplete])
  {
    urlBagKey2 = [(AKURLRequestProviderImpl *)selfCopy urlBagKey];
    v10 = 1;
    v9 = [(NSString *)urlBagKey2 isEqualToString:AKURLBagKeyCustodianDataRecoveryServiceEnableComplete];
  }

  if (v10)
  {
    _objc_release(urlBagKey2);
  }

  _objc_release(urlBagKey);
  if (v9)
  {
    v14 = [(AKWalrusRequestProvider *)selfCopy _validateDataForWalrusStateUpdateToServerRequest:location[0] error:error];
  }

  else
  {
    urlBagKey3 = [(AKURLRequestProviderImpl *)selfCopy urlBagKey];
    v6 = [(NSString *)urlBagKey3 isEqualToString:AKURLBagKeyCustodianDataRecoveryServiceDisable];
    _objc_release(urlBagKey3);
    if (v6)
    {
      v14 = [(AKWalrusRequestProvider *)selfCopy _validateDataForVerifyEnableWalrusAllowedRequest:location[0] error:error];
    }

    else
    {
      v14 = 0;
    }
  }

  objc_storeStrong(location, 0);
  return v14 & 1;
}

- (BOOL)_validateDataForVerifyEnableWalrusAllowedRequest:(id)request error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  errorCopy = error;
  v23 = [AAFSerialization dictionaryFromObject:location[0] ofType:@"application/json"];
  v19 = [v23 objectForKeyedSubscript:@"eligibilityStatus"];
  v20 = [v19 isEqualToString:@"eligible"];
  _objc_release(v19);
  if (v20)
  {
    v26 = 1;
    v22 = 1;
  }

  else
  {
    v16 = [v23 objectForKeyedSubscript:@"eligibilityStatus"];
    v17 = [v16 isEqualToString:@"ineligible"];
    _objc_release(v16);
    if (v17)
    {
      if (errorCopy)
      {
        v15 = [v23 objectForKeyedSubscript:@"ineligibilityReason"];
        _objc_release(v15);
        if (v15)
        {
          v21 = [v23 objectForKeyedSubscript:@"ineligibilityReason"];
          v12 = AKWalrusErrorDomain;
          v29 = NSLocalizedDescriptionKey;
          v30 = v21;
          v13 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
          v14 = [NSError errorWithDomain:v12 code:-5001 userInfo:?];
          v4 = v14;
          *errorCopy = v14;
          _objc_release(v13);
          objc_storeStrong(&v21, 0);
        }

        else
        {
          v11 = [NSError errorWithDomain:AKWalrusErrorDomain code:-5001 userInfo:0];
          v5 = v11;
          *errorCopy = v11;
        }
      }

      v26 = 0;
      v22 = 1;
    }

    else
    {
      if (errorCopy)
      {
        v8 = AKWalrusErrorDomain;
        v27 = NSLocalizedDescriptionKey;
        v28 = @"Unknown error occurred while checking if enabling walrus is allowed.";
        v9 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v10 = [NSError errorWithDomain:v8 code:-5001 userInfo:?];
        v6 = v10;
        *errorCopy = v10;
        _objc_release(v9);
      }

      v26 = 0;
      v22 = 1;
    }
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  return v26 & 1;
}

- (BOOL)_validateDataForWalrusStateUpdateToServerRequest:(id)request error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  errorCopy = error;
  v21 = [AAFSerialization dictionaryFromObject:location[0] ofType:@"application/json"];
  v17 = [v21 objectForKeyedSubscript:@"status"];
  v18 = [v17 isEqualToString:@"failure"];
  _objc_release(v17);
  if (v18)
  {
    if (errorCopy)
    {
      v15 = [v21 objectForKeyedSubscript:@"error"];
      _objc_release(v15);
      if (v15)
      {
        v8 = [v21 objectForKeyedSubscript:@"error"];
        v9 = [v8 objectForKeyedSubscript:?];
        _objc_release(v9);
        _objc_release(v8);
        v20 = v9;
        v10 = [v21 objectForKeyedSubscript:@"code"];
        v19 = [v10 objectForKeyedSubscript:@"text"];
        _objc_release(v10);
        v11 = AKWalrusErrorDomain;
        v12 = v20;
        v25 = NSLocalizedDescriptionKey;
        v26 = v19;
        v13 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        v14 = [NSError errorWithDomain:v11 code:v12 userInfo:?];
        v4 = v14;
        *errorCopy = v14;
        _objc_release(v13);
        objc_storeStrong(&v19, 0);
      }

      else
      {
        v7 = [NSError errorWithDomain:AKWalrusErrorDomain code:-5001 userInfo:0];
        v5 = v7;
        *errorCopy = v7;
      }
    }

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  return v24 & 1;
}

- (id)parseRefreshUrl:(id)url
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, url);
  v3 = [NSXMLParser alloc];
  v6 = [v3 initWithData:location[0]];
  [v6 setDelegate:selfCopy];
  [v6 parse];
  refreshUrl = [(AKWalrusRequestProvider *)selfCopy refreshUrl];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return refreshUrl;
}

- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, parser);
  v15 = 0;
  objc_storeStrong(&v15, element);
  v14 = 0;
  objc_storeStrong(&v14, i);
  v13 = 0;
  objc_storeStrong(&v13, name);
  v12 = 0;
  objc_storeStrong(&v12, attributes);
  if ([v15 isEqualToString:@"clientInfo"])
  {
    v11 = [v12 objectForKey:@"refreshUrl"];
    [(AKWalrusRequestProvider *)selfCopy setRefreshUrl:v11];
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (id)_AKAuthContextWithUsername:(id)username password:(id)password
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, username);
  v10 = 0;
  objc_storeStrong(&v10, password);
  v9 = objc_alloc_init(AKAppleIDAuthenticationContext);
  walrusContext = [(AKWalrusRequestProvider *)selfCopy walrusContext];
  altDSID = [(AKWalrusContext *)walrusContext altDSID];
  [v9 setAltDSID:?];
  _objc_release(altDSID);
  _objc_release(walrusContext);
  [v9 setUsername:location[0]];
  [v9 _setPassword:v10];
  [v9 setAuthenticationType:1];
  v8 = _objc_retain(v9);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (void)getPETForUsername:(id)username password:(id)password completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, username);
  v17 = 0;
  objc_storeStrong(&v17, password);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  v15 = [(AKWalrusRequestProvider *)selfCopy _AKAuthContextWithUsername:location[0] password:v17];
  v14 = objc_alloc_init(AKAppleIDAuthenticationController);
  v8 = v14;
  v7 = v15;
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1000E0F08;
  v12 = &unk_100321258;
  v13 = _objc_retain(v16);
  [v8 authenticateWithContext:v7 completion:?];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

@end