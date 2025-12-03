@interface AKEducationEnterpriseRequestProvider
- (BOOL)signRequest:(id)request error:(id *)error;
- (id)_authKitAccount;
- (id)_continuationToken;
- (id)_passwordResetToken;
- (void)_signWithProxiedDeviceHeaders:(id)headers;
@end

@implementation AKEducationEnterpriseRequestProvider

- (BOOL)signRequest:(id)request error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  errorCopy = error;
  v32.receiver = selfCopy;
  v32.super_class = AKEducationEnterpriseRequestProvider;
  if ([(AKGrandSlamRequestProvider *)&v32 signRequest:location[0] error:error])
  {
    concreteAuthenticationContext = [(AKURLRequestProviderImpl *)selfCopy concreteAuthenticationContext];
    desiredInternalTokens = [(AKAppleIDAuthenticationContext *)concreteAuthenticationContext desiredInternalTokens];
    v17 = [desiredInternalTokens containsObject:AKAuthenticationInternalTokenCK];
    _objc_release(desiredInternalTokens);
    _objc_release(concreteAuthenticationContext);
    v31 = v17;
    v18 = +[AKDevice currentDevice];
    isProtectedWithPasscode = [v18 isProtectedWithPasscode];
    _objc_release(v18);
    v30 = isProtectedWithPasscode;
    if (v17)
    {
      _continuationToken = [(AKEducationEnterpriseRequestProvider *)selfCopy _continuationToken];
      v28 = 0;
      v14 = 1;
      if (_continuationToken)
      {
        _passwordResetToken = [(AKEducationEnterpriseRequestProvider *)selfCopy _passwordResetToken];
        v28 = 1;
        v12 = 0;
        if (!_passwordResetToken)
        {
          v12 = v30;
        }

        v14 = v12;
      }

      if (v28)
      {
        _objc_release(_passwordResetToken);
      }

      _objc_release(_continuationToken);
      if (v14)
      {
        v27 = _AKLogSystem();
        v26 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          log = v27;
          type = v26;
          sub_10001CEEC(v25);
          _os_log_impl(&_mh_execute_header, log, type, "Will ask for ckgen.", v25, 2u);
        }

        objc_storeStrong(&v27, 0);
        [location[0] ak_addCKRequestHeader];
      }
    }

    if (v30)
    {
      v24 = _AKLogSystem();
      v23 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v24;
        v9 = v23;
        sub_10001CEEC(v22);
        _os_log_impl(&_mh_execute_header, v8, v9, "Will ask for prkgen.", v22, 2u);
      }

      objc_storeStrong(&v24, 0);
      [location[0] ak_addPRKRequestHeader];
    }

    concreteAuthenticationContext2 = [(AKURLRequestProviderImpl *)selfCopy concreteAuthenticationContext];
    proxiedDevice = [(AKAppleIDAuthenticationContext *)concreteAuthenticationContext2 proxiedDevice];
    _objc_release(proxiedDevice);
    _objc_release(concreteAuthenticationContext2);
    if (proxiedDevice)
    {
      [(AKEducationEnterpriseRequestProvider *)selfCopy _signWithProxiedDeviceHeaders:location[0]];
    }

    v21 = _AKLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      allHTTPHeaderFields = [location[0] allHTTPHeaderFields];
      sub_1000194D4(v37, allHTTPHeaderFields);
      _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Request Headers for Education/Enterprise: %@", v37, 0xCu);
      _objc_release(allHTTPHeaderFields);
    }

    objc_storeStrong(&v21, 0);
    v36 = 1;
  }

  else
  {
    v36 = 0;
  }

  objc_storeStrong(location, 0);
  return v36 & 1;
}

- (void)_signWithProxiedDeviceHeaders:(id)headers
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, headers);
  v41 = _AKLogSystem();
  v40 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v34 = v41;
    v35 = v40;
    sub_10001CEEC(v39);
    _os_log_impl(&_mh_execute_header, v34, v35, "Grabbing Anisette data from proxied device.", v39, 2u);
  }

  objc_storeStrong(&v41, 0);
  v26 = [AKAnisetteProvisioningService alloc];
  client = [(AKURLRequestProviderImpl *)selfCopy client];
  concreteAuthenticationContext = [(AKURLRequestProviderImpl *)selfCopy concreteAuthenticationContext];
  v38 = [(AKAnisetteProvisioningService *)v26 initWithClient:client context:?];
  _objc_release(concreteAuthenticationContext);
  _objc_release(client);
  concreteAuthenticationContext2 = [(AKURLRequestProviderImpl *)selfCopy concreteAuthenticationContext];
  proxiedDevice = [(AKAppleIDAuthenticationContext *)concreteAuthenticationContext2 proxiedDevice];
  v37 = [v38 anisetteDataForDevice:? provisionIfNecessary:?];
  _objc_release(proxiedDevice);
  _objc_release(concreteAuthenticationContext2);
  concreteAuthenticationContext3 = [(AKURLRequestProviderImpl *)selfCopy concreteAuthenticationContext];
  proxiedDevice2 = [(AKAppleIDAuthenticationContext *)concreteAuthenticationContext3 proxiedDevice];
  serverFriendlyDescription = [proxiedDevice2 serverFriendlyDescription];
  _objc_release(serverFriendlyDescription);
  _objc_release(proxiedDevice2);
  _objc_release(concreteAuthenticationContext3);
  if (serverFriendlyDescription)
  {
    v22 = location[0];
    concreteAuthenticationContext4 = [(AKURLRequestProviderImpl *)selfCopy concreteAuthenticationContext];
    proxiedDevice3 = [(AKAppleIDAuthenticationContext *)concreteAuthenticationContext4 proxiedDevice];
    serverFriendlyDescription2 = [proxiedDevice3 serverFriendlyDescription];
    [v22 ak_addProxiedClientInfoHeader:?];
    _objc_release(serverFriendlyDescription2);
    _objc_release(proxiedDevice3);
    _objc_release(concreteAuthenticationContext4);
  }

  concreteAuthenticationContext5 = [(AKURLRequestProviderImpl *)selfCopy concreteAuthenticationContext];
  proxiedDevice4 = [(AKAppleIDAuthenticationContext *)concreteAuthenticationContext5 proxiedDevice];
  uniqueDeviceIdentifier = [proxiedDevice4 uniqueDeviceIdentifier];
  _objc_release(uniqueDeviceIdentifier);
  _objc_release(proxiedDevice4);
  _objc_release(concreteAuthenticationContext5);
  if (uniqueDeviceIdentifier)
  {
    v15 = location[0];
    concreteAuthenticationContext6 = [(AKURLRequestProviderImpl *)selfCopy concreteAuthenticationContext];
    proxiedDevice5 = [(AKAppleIDAuthenticationContext *)concreteAuthenticationContext6 proxiedDevice];
    uniqueDeviceIdentifier2 = [proxiedDevice5 uniqueDeviceIdentifier];
    [v15 ak_addProxiedDeviceUDIDHeader:?];
    _objc_release(uniqueDeviceIdentifier2);
    _objc_release(proxiedDevice5);
    _objc_release(concreteAuthenticationContext6);
  }

  if (v37)
  {
    [location[0] ak_addProxiedAnisetteHeaders:v37];
  }

  concreteAuthenticationContext7 = [(AKURLRequestProviderImpl *)selfCopy concreteAuthenticationContext];
  proxiedDevice6 = [(AKAppleIDAuthenticationContext *)concreteAuthenticationContext7 proxiedDevice];
  locale = [proxiedDevice6 locale];
  v36 = [locale objectForKey:NSLocaleCountryCode];
  _objc_release(locale);
  _objc_release(proxiedDevice6);
  _objc_release(concreteAuthenticationContext7);
  if (v36)
  {
    [location[0] ak_addProxiedDeviceCountryHeader:v36];
  }

  concreteAuthenticationContext8 = [(AKURLRequestProviderImpl *)selfCopy concreteAuthenticationContext];
  proxiedDevice7 = [(AKAppleIDAuthenticationContext *)concreteAuthenticationContext8 proxiedDevice];
  serialNumber = [proxiedDevice7 serialNumber];
  _objc_release(serialNumber);
  _objc_release(proxiedDevice7);
  _objc_release(concreteAuthenticationContext8);
  if (serialNumber)
  {
    v5 = location[0];
    concreteAuthenticationContext9 = [(AKURLRequestProviderImpl *)selfCopy concreteAuthenticationContext];
    proxiedDevice8 = [(AKAppleIDAuthenticationContext *)concreteAuthenticationContext9 proxiedDevice];
    serialNumber2 = [proxiedDevice8 serialNumber];
    [v5 ak_addProxiedDeviceSerialNumberHeader:?];
    _objc_release(serialNumber2);
    _objc_release(proxiedDevice8);
    _objc_release(concreteAuthenticationContext9);
  }

  concreteAuthenticationContext10 = [(AKURLRequestProviderImpl *)selfCopy concreteAuthenticationContext];
  proxiedDevice9 = [(AKAppleIDAuthenticationContext *)concreteAuthenticationContext10 proxiedDevice];
  _objc_release(proxiedDevice9);
  _objc_release(concreteAuthenticationContext10);
  if (proxiedDevice9)
  {
    [location[0] ak_addProxiedDevicePRKRequestHeader];
    [location[0] ak_addProxiedDeviceICSCIntentHeader];
  }

  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
}

- (id)_authKitAccount
{
  v8[2] = self;
  v8[1] = a2;
  v8[0] = 0;
  concreteAuthenticationContext = [(AKURLRequestProviderImpl *)self concreteAuthenticationContext];
  v6 = v8[0];
  v3 = [(AKAppleIDAuthenticationContext *)concreteAuthenticationContext authKitAccount:&v6];
  objc_storeStrong(v8, v6);
  v7 = v3;
  _objc_release(concreteAuthenticationContext);
  v5 = _objc_retain(v7);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(v8, 0);

  return v5;
}

- (id)_passwordResetToken
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(AKEducationEnterpriseRequestProvider *)self _authKitAccount];
  if (location[0])
  {
    v4 = +[AKAccountManager sharedInstance];
    v6 = [(AKAccountManager *)v4 passwordResetTokenForAccount:location[0]];
    _objc_release(v4);
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v6;

  return v2;
}

- (id)_continuationToken
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(AKEducationEnterpriseRequestProvider *)self _authKitAccount];
  if (location[0])
  {
    v4 = +[AKAccountManager sharedInstance];
    v6 = [(AKAccountManager *)v4 continuationTokenForAccount:location[0]];
    _objc_release(v4);
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v6;

  return v2;
}

@end