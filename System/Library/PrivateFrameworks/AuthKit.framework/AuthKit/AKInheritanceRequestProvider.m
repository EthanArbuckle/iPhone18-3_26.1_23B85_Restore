@interface AKInheritanceRequestProvider
- (AKInheritanceRequestProvider)initWithContext:(id)a3 urlBagKey:(id)a4;
- (BOOL)signRequest:(id)a3 error:(id *)a4;
- (BOOL)validateResponseData:(id)a3 error:(id *)a4;
- (id)_bodyForBeneficiaryAliasEndpoint;
- (id)_bodyForBeneficiaryEndpoint;
- (id)authKitBody;
@end

@implementation AKInheritanceRequestProvider

- (AKInheritanceRequestProvider)initWithContext:(id)a3 urlBagKey:(id)a4
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
  v9.super_class = AKInheritanceRequestProvider;
  v8 = [(AKURLRequestProviderImpl *)&v9 initWithContext:location[0] urlBagKey:v10 shouldCacheResource:0];
  v12 = v8;
  objc_storeStrong(&v12, v8);
  if (v8)
  {
    [(AKInheritanceRequestProvider *)v12 setInheritanceContext:location[0]];
  }

  v6 = _objc_retain(v12);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v6;
}

- (id)authKitBody
{
  v5 = [(AKURLRequestProviderImpl *)self urlBagKey];
  v9 = 0;
  v7 = 0;
  v6 = 1;
  if (![(NSString *)v5 isEqualToString:AKURLBagKeyInheritanceSetupBeneficiaryKey])
  {
    v10 = [(AKURLRequestProviderImpl *)self urlBagKey];
    v9 = 1;
    v6 = 1;
    if (![(NSString *)v10 isEqualToString:AKURLBagKeyInheritanceUpdateBeneficiaryKey])
    {
      v8 = [(AKURLRequestProviderImpl *)self urlBagKey];
      v7 = 1;
      v6 = [(NSString *)v8 isEqualToString:AKURLBagKeyInheritanceRemoveBeneficiaryKey];
    }
  }

  if (v7)
  {
    _objc_release(v8);
  }

  if (v9)
  {
    _objc_release(v10);
  }

  _objc_release(v5);
  if (v6)
  {
    v12 = [(AKInheritanceRequestProvider *)self _bodyForBeneficiaryEndpoint];
  }

  else
  {
    v3 = [(AKURLRequestProviderImpl *)self urlBagKey];
    v4 = [(NSString *)v3 isEqualToString:AKURLBagKeyInheritanceSetupBeneficiaryAliasKey];
    _objc_release(v3);
    if (v4)
    {
      v12 = [(AKInheritanceRequestProvider *)self _bodyForBeneficiaryAliasEndpoint];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (BOOL)signRequest:(id)a3 error:(id *)a4
{
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = a4;
  v11 = [AKDServerUIController alloc];
  v12 = [(AKURLRequestProviderImpl *)v28 client];
  v25 = [(AKDServerUIController *)v11 initWithClient:?];
  _objc_release(v12);
  v13 = [AKAppleIDAuthenticationContext alloc];
  v14 = [(AKInheritanceRequestProvider *)v28 inheritanceContext];
  v24 = [v13 initWithAuthenticatedServerRequestContext:?];
  _objc_release(v14);
  [v24 set_shouldSendIdentityTokenForRemoteUI:{-[AKInheritanceRequestProvider signWithIdentityToken](v28, "signWithIdentityToken")}];
  [v24 set_shouldSendGrandSlamTokensForRemoteUI:1];
  v23 = [v25 resourceLoadDelegateWithContext:v24];
  v15 = [(AKURLRequestProviderImpl *)v28 urlBagKey];
  [v23 setInitialURLRequestKey:?];
  _objc_release(v15);
  v16 = [(AKURLRequestProviderImpl *)v28 urlBagKey];
  [v23 setBagUrlKey:?];
  _objc_release(v16);
  v17 = [(AKURLRequestProviderImpl *)v28 dataCenterIdentifier];
  [v23 setDataCenterIdentifier:?];
  _objc_release(v17);
  v19 = [(AKInheritanceRequestProvider *)v28 inheritanceContext];
  v18 = [(AKInheritanceContext *)v19 beneficiarySetupToken];
  [v23 setServiceToken:?];
  _objc_release(v18);
  _objc_release(v19);
  v20 = [(AKURLRequestProviderImpl *)v28 urlBagKey];
  v21 = [(NSString *)v20 isEqualToString:AKURLBagKeyInheritanceSetupBeneficiaryAliasKey];
  _objc_release(v20);
  if (v21)
  {
    [v23 setServiceToken:0];
  }

  v9 = [v23 heartbeatToken];
  _objc_release(v9);
  if (v9)
  {
    [v23 signRequestWithCommonHeaders:location[0]];
    v29 = 1;
  }

  else
  {
    v22 = _AKLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v8 = [(AKInheritanceRequestProvider *)v28 inheritanceContext];
      v7 = [(AKInheritanceContext *)v8 altDSID];
      sub_1000194D4(v30, v7);
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find heartbeat token for account %@", v30, 0xCu);
      _objc_release(v7);
      _objc_release(v8);
    }

    objc_storeStrong(&v22, 0);
    if (v26)
    {
      v6 = [NSError ak_errorWithCode:-7042];
      v4 = v6;
      *v26 = v6;
    }

    v29 = 0;
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
  return v29 & 1;
}

- (id)_bodyForBeneficiaryEndpoint
{
  v23 = self;
  v22[1] = a2;
  v22[0] = +[NSMutableDictionary dictionary];
  v19 = [(AKInheritanceRequestProvider *)v23 inheritanceContext];
  v20 = [(AKInheritanceContext *)v19 beneficiaryIdentifier];
  _objc_release(v20);
  _objc_release(v19);
  if (v20)
  {
    v18 = [(AKInheritanceRequestProvider *)v23 inheritanceContext];
    v17 = [(AKInheritanceContext *)v18 beneficiaryIdentifier];
    [v22[0] setObject:? forKeyedSubscript:?];
    _objc_release(v17);
    _objc_release(v18);
  }

  v15 = [(AKInheritanceRequestProvider *)v23 inheritanceContext];
  v16 = [(AKInheritanceContext *)v15 accessKey];
  _objc_release(v16);
  _objc_release(v15);
  if (v16)
  {
    v11 = [(AKInheritanceRequestProvider *)v23 inheritanceContext];
    v10 = [(AKInheritanceContext *)v11 accessKey];
    v9 = [v10 claimTokenString];
    [v22[0] setObject:? forKeyedSubscript:?];
    _objc_release(v9);
    _objc_release(v10);
    _objc_release(v11);
    v14 = [(AKInheritanceRequestProvider *)v23 inheritanceContext];
    v13 = [(AKInheritanceContext *)v14 accessKey];
    v12 = [v13 wrappedKeyData];
    v21 = [v12 base64EncodedStringWithOptions:0];
    _objc_release(v12);
    _objc_release(v13);
    _objc_release(v14);
    [v22[0] setObject:v21 forKeyedSubscript:@"beneficiaryWrappedKey"];
    objc_storeStrong(&v21, 0);
  }

  v7 = [(AKInheritanceRequestProvider *)v23 inheritanceContext];
  v8 = [(AKInheritanceContext *)v7 manifest];
  _objc_release(v8);
  _objc_release(v7);
  if (v8)
  {
    v6 = [(AKInheritanceRequestProvider *)v23 inheritanceContext];
    v5 = [(AKInheritanceContext *)v6 manifest];
    v4 = [v5 parsableRepresentation];
    [v22[0] setObject:? forKeyedSubscript:?];
    _objc_release(v4);
    _objc_release(v5);
    _objc_release(v6);
  }

  v3 = _objc_retain(v22[0]);
  objc_storeStrong(v22, 0);

  return v3;
}

- (id)_bodyForBeneficiaryAliasEndpoint
{
  v18 = self;
  v17[1] = a2;
  v17[0] = +[NSMutableDictionary dictionary];
  v13 = [(AKInheritanceRequestProvider *)v18 inheritanceContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  _objc_release(v13);
  if (isKindOfClass)
  {
    location = [(AKInheritanceRequestProvider *)v18 inheritanceContext];
    v12 = [location accessKeyString];
    _objc_release(v12);
    if (v12)
    {
      v11 = [location accessKeyString];
      v10 = [v11 uppercaseString];
      [v17[0] setObject:? forKeyedSubscript:?];
      _objc_release(v10);
      _objc_release(v11);
    }

    v9 = [location beneficiaryPassword];
    _objc_release(v9);
    if (v9)
    {
      v8 = [location beneficiaryPassword];
      [v17[0] setObject:? forKeyedSubscript:?];
      _objc_release(v8);
    }

    v7 = [location beneficiaryFirstName];
    _objc_release(v7);
    if (v7)
    {
      v6 = [location beneficiaryFirstName];
      [v17[0] setObject:? forKeyedSubscript:?];
      _objc_release(v6);
    }

    v5 = [location beneficiaryLastName];
    _objc_release(v5);
    if (v5)
    {
      v4 = [location beneficiaryLastName];
      [v17[0] setObject:? forKeyedSubscript:?];
      _objc_release(v4);
    }

    v19 = _objc_retain(v17[0]);
    v16 = 1;
    objc_storeStrong(&location, 0);
  }

  else
  {
    v19 = _objc_retain(v17[0]);
    v16 = 1;
  }

  objc_storeStrong(v17, 0);
  v2 = v19;

  return v2;
}

- (BOOL)validateResponseData:(id)a3 error:(id *)a4
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = a4;
  v15.receiver = v19;
  v15.super_class = AKInheritanceRequestProvider;
  v16 = [(AKURLRequestProviderImpl *)&v15 validateResponseData:location[0] error:a4];
  if ((v16 & 1) == 1)
  {
    v14 = [AAFSerialization dictionaryFromObject:location[0] ofType:@"application/json"];
    if (v14)
    {
      v13 = [v14 objectForKeyedSubscript:AKErrorStatusCodeKey];
      if (v13 && [v13 integerValue])
      {
        oslog = _AKLogSystem();
        type = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          sub_10006A654(v22, [v13 intValue]);
          _os_log_error_impl(&_mh_execute_header, oslog, type, "Inheritance Server request failed with error code: %i", v22, 8u);
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

    objc_storeStrong(&v14, 0);
  }

  v6 = v16;
  objc_storeStrong(location, 0);
  return v6 & 1;
}

@end