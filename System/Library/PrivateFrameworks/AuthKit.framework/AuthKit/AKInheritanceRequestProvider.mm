@interface AKInheritanceRequestProvider
- (AKInheritanceRequestProvider)initWithContext:(id)context urlBagKey:(id)key;
- (BOOL)signRequest:(id)request error:(id *)error;
- (BOOL)validateResponseData:(id)data error:(id *)error;
- (id)_bodyForBeneficiaryAliasEndpoint;
- (id)_bodyForBeneficiaryEndpoint;
- (id)authKitBody;
@end

@implementation AKInheritanceRequestProvider

- (AKInheritanceRequestProvider)initWithContext:(id)context urlBagKey:(id)key
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
  v9.super_class = AKInheritanceRequestProvider;
  v8 = [(AKURLRequestProviderImpl *)&v9 initWithContext:location[0] urlBagKey:v10 shouldCacheResource:0];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    [(AKInheritanceRequestProvider *)selfCopy setInheritanceContext:location[0]];
  }

  v6 = _objc_retain(selfCopy);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (id)authKitBody
{
  urlBagKey = [(AKURLRequestProviderImpl *)self urlBagKey];
  v9 = 0;
  v7 = 0;
  v6 = 1;
  if (![(NSString *)urlBagKey isEqualToString:AKURLBagKeyInheritanceSetupBeneficiaryKey])
  {
    urlBagKey2 = [(AKURLRequestProviderImpl *)self urlBagKey];
    v9 = 1;
    v6 = 1;
    if (![(NSString *)urlBagKey2 isEqualToString:AKURLBagKeyInheritanceUpdateBeneficiaryKey])
    {
      urlBagKey3 = [(AKURLRequestProviderImpl *)self urlBagKey];
      v7 = 1;
      v6 = [(NSString *)urlBagKey3 isEqualToString:AKURLBagKeyInheritanceRemoveBeneficiaryKey];
    }
  }

  if (v7)
  {
    _objc_release(urlBagKey3);
  }

  if (v9)
  {
    _objc_release(urlBagKey2);
  }

  _objc_release(urlBagKey);
  if (v6)
  {
    _bodyForBeneficiaryEndpoint = [(AKInheritanceRequestProvider *)self _bodyForBeneficiaryEndpoint];
  }

  else
  {
    urlBagKey4 = [(AKURLRequestProviderImpl *)self urlBagKey];
    v4 = [(NSString *)urlBagKey4 isEqualToString:AKURLBagKeyInheritanceSetupBeneficiaryAliasKey];
    _objc_release(urlBagKey4);
    if (v4)
    {
      _bodyForBeneficiaryEndpoint = [(AKInheritanceRequestProvider *)self _bodyForBeneficiaryAliasEndpoint];
    }

    else
    {
      _bodyForBeneficiaryEndpoint = 0;
    }
  }

  return _bodyForBeneficiaryEndpoint;
}

- (BOOL)signRequest:(id)request error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  errorCopy = error;
  v11 = [AKDServerUIController alloc];
  client = [(AKURLRequestProviderImpl *)selfCopy client];
  v25 = [(AKDServerUIController *)v11 initWithClient:?];
  _objc_release(client);
  v13 = [AKAppleIDAuthenticationContext alloc];
  inheritanceContext = [(AKInheritanceRequestProvider *)selfCopy inheritanceContext];
  v24 = [v13 initWithAuthenticatedServerRequestContext:?];
  _objc_release(inheritanceContext);
  [v24 set_shouldSendIdentityTokenForRemoteUI:{-[AKInheritanceRequestProvider signWithIdentityToken](selfCopy, "signWithIdentityToken")}];
  [v24 set_shouldSendGrandSlamTokensForRemoteUI:1];
  v23 = [v25 resourceLoadDelegateWithContext:v24];
  urlBagKey = [(AKURLRequestProviderImpl *)selfCopy urlBagKey];
  [v23 setInitialURLRequestKey:?];
  _objc_release(urlBagKey);
  urlBagKey2 = [(AKURLRequestProviderImpl *)selfCopy urlBagKey];
  [v23 setBagUrlKey:?];
  _objc_release(urlBagKey2);
  dataCenterIdentifier = [(AKURLRequestProviderImpl *)selfCopy dataCenterIdentifier];
  [v23 setDataCenterIdentifier:?];
  _objc_release(dataCenterIdentifier);
  inheritanceContext2 = [(AKInheritanceRequestProvider *)selfCopy inheritanceContext];
  beneficiarySetupToken = [(AKInheritanceContext *)inheritanceContext2 beneficiarySetupToken];
  [v23 setServiceToken:?];
  _objc_release(beneficiarySetupToken);
  _objc_release(inheritanceContext2);
  urlBagKey3 = [(AKURLRequestProviderImpl *)selfCopy urlBagKey];
  v21 = [(NSString *)urlBagKey3 isEqualToString:AKURLBagKeyInheritanceSetupBeneficiaryAliasKey];
  _objc_release(urlBagKey3);
  if (v21)
  {
    [v23 setServiceToken:0];
  }

  heartbeatToken = [v23 heartbeatToken];
  _objc_release(heartbeatToken);
  if (heartbeatToken)
  {
    [v23 signRequestWithCommonHeaders:location[0]];
    v29 = 1;
  }

  else
  {
    v22 = _AKLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      inheritanceContext3 = [(AKInheritanceRequestProvider *)selfCopy inheritanceContext];
      altDSID = [(AKInheritanceContext *)inheritanceContext3 altDSID];
      sub_1000194D4(v30, altDSID);
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find heartbeat token for account %@", v30, 0xCu);
      _objc_release(altDSID);
      _objc_release(inheritanceContext3);
    }

    objc_storeStrong(&v22, 0);
    if (errorCopy)
    {
      v6 = [NSError ak_errorWithCode:-7042];
      v4 = v6;
      *errorCopy = v6;
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
  selfCopy = self;
  v22[1] = a2;
  v22[0] = +[NSMutableDictionary dictionary];
  inheritanceContext = [(AKInheritanceRequestProvider *)selfCopy inheritanceContext];
  beneficiaryIdentifier = [(AKInheritanceContext *)inheritanceContext beneficiaryIdentifier];
  _objc_release(beneficiaryIdentifier);
  _objc_release(inheritanceContext);
  if (beneficiaryIdentifier)
  {
    inheritanceContext2 = [(AKInheritanceRequestProvider *)selfCopy inheritanceContext];
    beneficiaryIdentifier2 = [(AKInheritanceContext *)inheritanceContext2 beneficiaryIdentifier];
    [v22[0] setObject:? forKeyedSubscript:?];
    _objc_release(beneficiaryIdentifier2);
    _objc_release(inheritanceContext2);
  }

  inheritanceContext3 = [(AKInheritanceRequestProvider *)selfCopy inheritanceContext];
  accessKey = [(AKInheritanceContext *)inheritanceContext3 accessKey];
  _objc_release(accessKey);
  _objc_release(inheritanceContext3);
  if (accessKey)
  {
    inheritanceContext4 = [(AKInheritanceRequestProvider *)selfCopy inheritanceContext];
    accessKey2 = [(AKInheritanceContext *)inheritanceContext4 accessKey];
    claimTokenString = [accessKey2 claimTokenString];
    [v22[0] setObject:? forKeyedSubscript:?];
    _objc_release(claimTokenString);
    _objc_release(accessKey2);
    _objc_release(inheritanceContext4);
    inheritanceContext5 = [(AKInheritanceRequestProvider *)selfCopy inheritanceContext];
    accessKey3 = [(AKInheritanceContext *)inheritanceContext5 accessKey];
    wrappedKeyData = [accessKey3 wrappedKeyData];
    v21 = [wrappedKeyData base64EncodedStringWithOptions:0];
    _objc_release(wrappedKeyData);
    _objc_release(accessKey3);
    _objc_release(inheritanceContext5);
    [v22[0] setObject:v21 forKeyedSubscript:@"beneficiaryWrappedKey"];
    objc_storeStrong(&v21, 0);
  }

  inheritanceContext6 = [(AKInheritanceRequestProvider *)selfCopy inheritanceContext];
  manifest = [(AKInheritanceContext *)inheritanceContext6 manifest];
  _objc_release(manifest);
  _objc_release(inheritanceContext6);
  if (manifest)
  {
    inheritanceContext7 = [(AKInheritanceRequestProvider *)selfCopy inheritanceContext];
    manifest2 = [(AKInheritanceContext *)inheritanceContext7 manifest];
    parsableRepresentation = [manifest2 parsableRepresentation];
    [v22[0] setObject:? forKeyedSubscript:?];
    _objc_release(parsableRepresentation);
    _objc_release(manifest2);
    _objc_release(inheritanceContext7);
  }

  v3 = _objc_retain(v22[0]);
  objc_storeStrong(v22, 0);

  return v3;
}

- (id)_bodyForBeneficiaryAliasEndpoint
{
  selfCopy = self;
  v17[1] = a2;
  v17[0] = +[NSMutableDictionary dictionary];
  inheritanceContext = [(AKInheritanceRequestProvider *)selfCopy inheritanceContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  _objc_release(inheritanceContext);
  if (isKindOfClass)
  {
    location = [(AKInheritanceRequestProvider *)selfCopy inheritanceContext];
    accessKeyString = [location accessKeyString];
    _objc_release(accessKeyString);
    if (accessKeyString)
    {
      accessKeyString2 = [location accessKeyString];
      uppercaseString = [accessKeyString2 uppercaseString];
      [v17[0] setObject:? forKeyedSubscript:?];
      _objc_release(uppercaseString);
      _objc_release(accessKeyString2);
    }

    beneficiaryPassword = [location beneficiaryPassword];
    _objc_release(beneficiaryPassword);
    if (beneficiaryPassword)
    {
      beneficiaryPassword2 = [location beneficiaryPassword];
      [v17[0] setObject:? forKeyedSubscript:?];
      _objc_release(beneficiaryPassword2);
    }

    beneficiaryFirstName = [location beneficiaryFirstName];
    _objc_release(beneficiaryFirstName);
    if (beneficiaryFirstName)
    {
      beneficiaryFirstName2 = [location beneficiaryFirstName];
      [v17[0] setObject:? forKeyedSubscript:?];
      _objc_release(beneficiaryFirstName2);
    }

    beneficiaryLastName = [location beneficiaryLastName];
    _objc_release(beneficiaryLastName);
    if (beneficiaryLastName)
    {
      beneficiaryLastName2 = [location beneficiaryLastName];
      [v17[0] setObject:? forKeyedSubscript:?];
      _objc_release(beneficiaryLastName2);
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

- (BOOL)validateResponseData:(id)data error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  errorCopy = error;
  v15.receiver = selfCopy;
  v15.super_class = AKInheritanceRequestProvider;
  v16 = [(AKURLRequestProviderImpl *)&v15 validateResponseData:location[0] error:error];
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
        *errorCopy = v8;
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