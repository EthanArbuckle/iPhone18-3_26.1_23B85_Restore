@interface AKWalrusRequestProvider
- (AKWalrusRequestProvider)initWithContext:(id)a3 urlBagKey:(id)a4;
- (BOOL)_validateDataForVerifyEnableWalrusAllowedRequest:(id)a3 error:(id *)a4;
- (BOOL)_validateDataForWalrusStateUpdateToServerRequest:(id)a3 error:(id *)a4;
- (BOOL)_validateJSONResponseData:(id)a3 error:(id *)a4;
- (BOOL)signRequest:(id)a3 error:(id *)a4;
- (BOOL)validateResponseData:(id)a3 error:(id *)a4;
- (id)_AKAuthContextWithUsername:(id)a3 password:(id)a4;
- (id)parseRefreshUrl:(id)a3;
- (unint64_t)expectedResponseType;
- (unint64_t)requestBodyType;
- (void)getPETForUsername:(id)a3 password:(id)a4 completion:(id)a5;
- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7;
@end

@implementation AKWalrusRequestProvider

- (AKWalrusRequestProvider)initWithContext:(id)a3 urlBagKey:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v4 = v12;
  v12 = 0;
  v9.receiver = v4;
  v9.super_class = AKWalrusRequestProvider;
  v8 = [(AKURLRequestProviderImpl *)&v9 initWithContext:location[0] urlBagKey:v10 shouldCacheResource:0];
  v12 = v8;
  objc_storeStrong(&v12, v8);
  if (v8)
  {
    objc_storeStrong(&v12->_walrusContext, location[0]);
  }

  v6 = _objc_retain(v12);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v6;
}

- (unint64_t)expectedResponseType
{
  v3 = [(AKWalrusRequestProvider *)self reqInterceptToken];
  v5 = 0;
  v4 = 1;
  if (!v3)
  {
    v6 = [(AKWalrusRequestProvider *)self refreshUrl];
    v5 = 1;
    v4 = v6 != 0;
  }

  if (v5)
  {
    _objc_release(v6);
  }

  _objc_release(v3);
  return !v4;
}

- (unint64_t)requestBodyType
{
  v3 = [(AKWalrusRequestProvider *)self refreshUrl];
  _objc_release(v3);
  return v3 == 0;
}

- (BOOL)signRequest:(id)a3 error:(id *)a4
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22[1] = a4;
  v11 = [AKDServerUIController alloc];
  v12 = [(AKURLRequestProviderImpl *)v24 client];
  v22[0] = [(AKDServerUIController *)v11 initWithClient:?];
  _objc_release(v12);
  v13 = [AKAppleIDAuthenticationContext alloc];
  v14 = [(AKWalrusRequestProvider *)v24 walrusContext];
  v21 = [v13 initWithAuthenticatedServerRequestContext:?];
  _objc_release(v14);
  [v21 set_shouldSendIdentityTokenForRemoteUI:1];
  [v21 set_shouldSendGrandSlamTokensForRemoteUI:1];
  v20 = [v22[0] resourceLoadDelegateWithContext:v21];
  [v20 setShouldSendPhoneNumber:1];
  [v20 setShouldSendSigningHeaders:1];
  v15 = [(AKURLRequestProviderImpl *)v24 urlBagKey];
  [v20 setInitialURLRequestKey:?];
  _objc_release(v15);
  v16 = [(AKURLRequestProviderImpl *)v24 urlBagKey];
  [v20 setBagUrlKey:?];
  _objc_release(v16);
  v17 = [(AKURLRequestProviderImpl *)v24 dataCenterIdentifier];
  [v20 setDataCenterIdentifier:?];
  _objc_release(v17);
  v18 = [(AKWalrusRequestProvider *)v24 walrusContext];
  [v20 setCliMode:{-[AKWalrusContext cliMode](v18, "cliMode")}];
  _objc_release(v18);
  [v20 signRequest:location[0]];
  v19 = [(AKWalrusRequestProvider *)v24 secondaryToken];
  _objc_release(v19);
  if (v19)
  {
    v8 = location[0];
    v9 = [(AKWalrusRequestProvider *)v24 secondaryToken];
    [v8 setValue:? forHTTPHeaderField:?];
    _objc_release(v9);
  }

  v7 = [(AKWalrusRequestProvider *)v24 reqInterceptToken];
  _objc_release(v7);
  if (v7)
  {
    v5 = location[0];
    v6 = [(AKWalrusRequestProvider *)v24 reqInterceptToken];
    [v5 setValue:? forHTTPHeaderField:?];
    _objc_release(v6);
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

- (BOOL)validateResponseData:(id)a3 error:(id *)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = a4;
  v7 = [(AKWalrusRequestProvider *)v13 reqInterceptToken];
  _objc_release(v7);
  if (v7)
  {
    v14 = 1;
    v10 = 1;
  }

  else
  {
    v5 = [(AKWalrusRequestProvider *)v13 secondaryToken];
    _objc_release(v5);
    if (v5)
    {
      v14 = [(AKWalrusRequestProvider *)v13 _validateJSONResponseData:location[0] error:v11];
      v10 = 1;
    }

    else
    {
      v8.receiver = v13;
      v8.super_class = AKWalrusRequestProvider;
      v9 = [(AKURLRequestProviderImpl *)&v8 validateResponseData:location[0] error:v11];
      if (v9)
      {
        v14 = [(AKWalrusRequestProvider *)v13 _validateJSONResponseData:location[0] error:v11];
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

- (BOOL)_validateJSONResponseData:(id)a3 error:(id *)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = [(AKURLRequestProviderImpl *)v13 urlBagKey];
  v10 = 0;
  v9 = 1;
  if (![(NSString *)v8 isEqualToString:AKURLBagKeyCustodianDataRecoveryServiceDisableComplete])
  {
    v11 = [(AKURLRequestProviderImpl *)v13 urlBagKey];
    v10 = 1;
    v9 = [(NSString *)v11 isEqualToString:AKURLBagKeyCustodianDataRecoveryServiceEnableComplete];
  }

  if (v10)
  {
    _objc_release(v11);
  }

  _objc_release(v8);
  if (v9)
  {
    v14 = [(AKWalrusRequestProvider *)v13 _validateDataForWalrusStateUpdateToServerRequest:location[0] error:a4];
  }

  else
  {
    v5 = [(AKURLRequestProviderImpl *)v13 urlBagKey];
    v6 = [(NSString *)v5 isEqualToString:AKURLBagKeyCustodianDataRecoveryServiceDisable];
    _objc_release(v5);
    if (v6)
    {
      v14 = [(AKWalrusRequestProvider *)v13 _validateDataForVerifyEnableWalrusAllowedRequest:location[0] error:a4];
    }

    else
    {
      v14 = 0;
    }
  }

  objc_storeStrong(location, 0);
  return v14 & 1;
}

- (BOOL)_validateDataForVerifyEnableWalrusAllowedRequest:(id)a3 error:(id *)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = a4;
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
      if (v24)
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
          *v24 = v14;
          _objc_release(v13);
          objc_storeStrong(&v21, 0);
        }

        else
        {
          v11 = [NSError errorWithDomain:AKWalrusErrorDomain code:-5001 userInfo:0];
          v5 = v11;
          *v24 = v11;
        }
      }

      v26 = 0;
      v22 = 1;
    }

    else
    {
      if (v24)
      {
        v8 = AKWalrusErrorDomain;
        v27 = NSLocalizedDescriptionKey;
        v28 = @"Unknown error occurred while checking if enabling walrus is allowed.";
        v9 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v10 = [NSError errorWithDomain:v8 code:-5001 userInfo:?];
        v6 = v10;
        *v24 = v10;
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

- (BOOL)_validateDataForWalrusStateUpdateToServerRequest:(id)a3 error:(id *)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = a4;
  v21 = [AAFSerialization dictionaryFromObject:location[0] ofType:@"application/json"];
  v17 = [v21 objectForKeyedSubscript:@"status"];
  v18 = [v17 isEqualToString:@"failure"];
  _objc_release(v17);
  if (v18)
  {
    if (v22)
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
        *v22 = v14;
        _objc_release(v13);
        objc_storeStrong(&v19, 0);
      }

      else
      {
        v7 = [NSError errorWithDomain:AKWalrusErrorDomain code:-5001 userInfo:0];
        v5 = v7;
        *v22 = v7;
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

- (id)parseRefreshUrl:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [NSXMLParser alloc];
  v6 = [v3 initWithData:location[0]];
  [v6 setDelegate:v8];
  [v6 parse];
  v5 = [(AKWalrusRequestProvider *)v8 refreshUrl];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = 0;
  objc_storeStrong(&v14, a5);
  v13 = 0;
  objc_storeStrong(&v13, a6);
  v12 = 0;
  objc_storeStrong(&v12, a7);
  if ([v15 isEqualToString:@"clientInfo"])
  {
    v11 = [v12 objectForKey:@"refreshUrl"];
    [(AKWalrusRequestProvider *)v17 setRefreshUrl:v11];
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (id)_AKAuthContextWithUsername:(id)a3 password:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = objc_alloc_init(AKAppleIDAuthenticationContext);
  v7 = [(AKWalrusRequestProvider *)v12 walrusContext];
  v6 = [(AKWalrusContext *)v7 altDSID];
  [v9 setAltDSID:?];
  _objc_release(v6);
  _objc_release(v7);
  [v9 setUsername:location[0]];
  [v9 _setPassword:v10];
  [v9 setAuthenticationType:1];
  v8 = _objc_retain(v9);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (void)getPETForUsername:(id)a3 password:(id)a4 completion:(id)a5
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16 = 0;
  objc_storeStrong(&v16, a5);
  v15 = [(AKWalrusRequestProvider *)v19 _AKAuthContextWithUsername:location[0] password:v17];
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