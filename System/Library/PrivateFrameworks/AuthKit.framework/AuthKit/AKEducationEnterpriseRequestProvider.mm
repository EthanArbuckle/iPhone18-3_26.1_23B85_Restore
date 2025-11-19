@interface AKEducationEnterpriseRequestProvider
- (BOOL)signRequest:(id)a3 error:(id *)a4;
- (id)_authKitAccount;
- (id)_continuationToken;
- (id)_passwordResetToken;
- (void)_signWithProxiedDeviceHeaders:(id)a3;
@end

@implementation AKEducationEnterpriseRequestProvider

- (BOOL)signRequest:(id)a3 error:(id *)a4
{
  v35 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v33 = a4;
  v32.receiver = v35;
  v32.super_class = AKEducationEnterpriseRequestProvider;
  if ([(AKGrandSlamRequestProvider *)&v32 signRequest:location[0] error:a4])
  {
    v16 = [(AKURLRequestProviderImpl *)v35 concreteAuthenticationContext];
    v15 = [(AKAppleIDAuthenticationContext *)v16 desiredInternalTokens];
    v17 = [v15 containsObject:AKAuthenticationInternalTokenCK];
    _objc_release(v15);
    _objc_release(v16);
    v31 = v17;
    v18 = +[AKDevice currentDevice];
    v19 = [v18 isProtectedWithPasscode];
    _objc_release(v18);
    v30 = v19;
    if (v17)
    {
      v13 = [(AKEducationEnterpriseRequestProvider *)v35 _continuationToken];
      v28 = 0;
      v14 = 1;
      if (v13)
      {
        v29 = [(AKEducationEnterpriseRequestProvider *)v35 _passwordResetToken];
        v28 = 1;
        v12 = 0;
        if (!v29)
        {
          v12 = v30;
        }

        v14 = v12;
      }

      if (v28)
      {
        _objc_release(v29);
      }

      _objc_release(v13);
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

    v6 = [(AKURLRequestProviderImpl *)v35 concreteAuthenticationContext];
    v7 = [(AKAppleIDAuthenticationContext *)v6 proxiedDevice];
    _objc_release(v7);
    _objc_release(v6);
    if (v7)
    {
      [(AKEducationEnterpriseRequestProvider *)v35 _signWithProxiedDeviceHeaders:location[0]];
    }

    v21 = _AKLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v5 = [location[0] allHTTPHeaderFields];
      sub_1000194D4(v37, v5);
      _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Request Headers for Education/Enterprise: %@", v37, 0xCu);
      _objc_release(v5);
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

- (void)_signWithProxiedDeviceHeaders:(id)a3
{
  v43 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  v28 = [(AKURLRequestProviderImpl *)v43 client];
  v27 = [(AKURLRequestProviderImpl *)v43 concreteAuthenticationContext];
  v38 = [(AKAnisetteProvisioningService *)v26 initWithClient:v28 context:?];
  _objc_release(v27);
  _objc_release(v28);
  v30 = [(AKURLRequestProviderImpl *)v43 concreteAuthenticationContext];
  v29 = [(AKAppleIDAuthenticationContext *)v30 proxiedDevice];
  v37 = [v38 anisetteDataForDevice:? provisionIfNecessary:?];
  _objc_release(v29);
  _objc_release(v30);
  v32 = [(AKURLRequestProviderImpl *)v43 concreteAuthenticationContext];
  v31 = [(AKAppleIDAuthenticationContext *)v32 proxiedDevice];
  v33 = [v31 serverFriendlyDescription];
  _objc_release(v33);
  _objc_release(v31);
  _objc_release(v32);
  if (v33)
  {
    v22 = location[0];
    v25 = [(AKURLRequestProviderImpl *)v43 concreteAuthenticationContext];
    v24 = [(AKAppleIDAuthenticationContext *)v25 proxiedDevice];
    v23 = [v24 serverFriendlyDescription];
    [v22 ak_addProxiedClientInfoHeader:?];
    _objc_release(v23);
    _objc_release(v24);
    _objc_release(v25);
  }

  v20 = [(AKURLRequestProviderImpl *)v43 concreteAuthenticationContext];
  v19 = [(AKAppleIDAuthenticationContext *)v20 proxiedDevice];
  v21 = [v19 uniqueDeviceIdentifier];
  _objc_release(v21);
  _objc_release(v19);
  _objc_release(v20);
  if (v21)
  {
    v15 = location[0];
    v18 = [(AKURLRequestProviderImpl *)v43 concreteAuthenticationContext];
    v17 = [(AKAppleIDAuthenticationContext *)v18 proxiedDevice];
    v16 = [v17 uniqueDeviceIdentifier];
    [v15 ak_addProxiedDeviceUDIDHeader:?];
    _objc_release(v16);
    _objc_release(v17);
    _objc_release(v18);
  }

  if (v37)
  {
    [location[0] ak_addProxiedAnisetteHeaders:v37];
  }

  v14 = [(AKURLRequestProviderImpl *)v43 concreteAuthenticationContext];
  v13 = [(AKAppleIDAuthenticationContext *)v14 proxiedDevice];
  v12 = [v13 locale];
  v36 = [v12 objectForKey:NSLocaleCountryCode];
  _objc_release(v12);
  _objc_release(v13);
  _objc_release(v14);
  if (v36)
  {
    [location[0] ak_addProxiedDeviceCountryHeader:v36];
  }

  v10 = [(AKURLRequestProviderImpl *)v43 concreteAuthenticationContext];
  v9 = [(AKAppleIDAuthenticationContext *)v10 proxiedDevice];
  v11 = [v9 serialNumber];
  _objc_release(v11);
  _objc_release(v9);
  _objc_release(v10);
  if (v11)
  {
    v5 = location[0];
    v8 = [(AKURLRequestProviderImpl *)v43 concreteAuthenticationContext];
    v7 = [(AKAppleIDAuthenticationContext *)v8 proxiedDevice];
    v6 = [v7 serialNumber];
    [v5 ak_addProxiedDeviceSerialNumberHeader:?];
    _objc_release(v6);
    _objc_release(v7);
    _objc_release(v8);
  }

  v3 = [(AKURLRequestProviderImpl *)v43 concreteAuthenticationContext];
  v4 = [(AKAppleIDAuthenticationContext *)v3 proxiedDevice];
  _objc_release(v4);
  _objc_release(v3);
  if (v4)
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
  v4 = [(AKURLRequestProviderImpl *)self concreteAuthenticationContext];
  v6 = v8[0];
  v3 = [(AKAppleIDAuthenticationContext *)v4 authKitAccount:&v6];
  objc_storeStrong(v8, v6);
  v7 = v3;
  _objc_release(v4);
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