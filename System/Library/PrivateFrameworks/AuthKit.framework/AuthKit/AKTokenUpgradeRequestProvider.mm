@interface AKTokenUpgradeRequestProvider
- (BOOL)signRequest:(id)a3 error:(id *)a4;
- (void)buildRequestWithCompletion:(id)a3;
@end

@implementation AKTokenUpgradeRequestProvider

- (void)buildRequestWithCompletion:(id)a3
{
  v32 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = [(AKURLRequestProviderImpl *)v32 concreteAuthenticationContext];
  v30 = [(AKAppleIDAuthenticationContext *)v9 _shortLivedToken];
  _objc_release(v9);
  v10 = [(AKURLRequestProviderImpl *)v32 concreteAuthenticationContext];
  v29 = [(AKAppleIDAuthenticationContext *)v10 _identityToken];
  _objc_release(v10);
  v11 = [(AKURLRequestProviderImpl *)v32 concreteAuthenticationContext];
  v28 = [(AKAppleIDAuthenticationContext *)v11 serviceToken];
  _objc_release(v11);
  v12 = [(AKURLRequestProviderImpl *)v32 context];
  v27 = [(AKAuthenticatedServerRequest *)v12 altDSID];
  _objc_release(v12);
  if (v27)
  {
    v4 = +[AKURLBag sharedBag];
    v3 = AKURLBagKeyPLTUpgradeEnabled;
    v13 = _NSConcreteStackBlock;
    v14 = -1073741824;
    v15 = 0;
    v16 = sub_1001A72A8;
    v17 = &unk_100325E30;
    v18 = _objc_retain(v32);
    v19 = _objc_retain(v30);
    v20 = _objc_retain(v29);
    v21 = _objc_retain(v28);
    v22 = _objc_retain(location[0]);
    [v4 configurationValueForKey:v3 fromCache:1 completion:&v13];
    _objc_release(v4);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
    v23 = 0;
  }

  else
  {
    v26 = _AKLogSystem();
    v25 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      log = v26;
      type = v25;
      sub_10001CEEC(v24);
      _os_log_impl(&_mh_execute_header, log, type, "Attempt to perform authentication without altDSID!", v24, 2u);
    }

    objc_storeStrong(&v26, 0);
    v5 = location[0];
    v6 = [NSError ak_errorWithCode:-7025];
    v5[2](v5, 0);
    _objc_release(v6);
    v23 = 1;
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)signRequest:(id)a3 error:(id *)a4
{
  v62 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v60[1] = a4;
  v49 = [AKDServerUIController alloc];
  v50 = [(AKURLRequestProviderImpl *)v62 client];
  v60[0] = [(AKDServerUIController *)v49 initWithClient:?];
  _objc_release(v50);
  v51 = [(AKURLRequestProviderImpl *)v62 concreteAuthenticationContext];
  v59 = [v60[0] resourceLoadDelegateWithContext:?];
  _objc_release(v51);
  v52 = [(AKURLRequestProviderImpl *)v62 urlBagKey];
  [v59 setBagUrlKey:?];
  _objc_release(v52);
  [v59 signRequestWithCommonHeaders:location[0]];
  v53 = [(AKURLRequestProviderImpl *)v62 concreteAuthenticationContext];
  v54 = [(AKAppleIDAuthenticationContext *)v53 _shortLivedToken];
  _objc_release(v54);
  _objc_release(v53);
  if (v54)
  {
    v43 = location[0];
    v47 = [(AKURLRequestProviderImpl *)v62 concreteAuthenticationContext];
    v46 = [(AKAppleIDAuthenticationContext *)v47 _shortLivedToken];
    v45 = [(AKURLRequestProviderImpl *)v62 context];
    v44 = [(AKAuthenticatedServerRequest *)v45 altDSID];
    [v43 ak_addShortLivedTokenHeaderWithIdentityToken:v46 forAltDSID:?];
    _objc_release(v44);
    _objc_release(v45);
    _objc_release(v46);
    _objc_release(v47);
  }

  else
  {
    v41 = [(AKURLRequestProviderImpl *)v62 concreteAuthenticationContext];
    v42 = [(AKAppleIDAuthenticationContext *)v41 _identityToken];
    _objc_release(v42);
    _objc_release(v41);
    if (v42)
    {
      v36 = location[0];
      v40 = [(AKURLRequestProviderImpl *)v62 concreteAuthenticationContext];
      v39 = [(AKAppleIDAuthenticationContext *)v40 _identityToken];
      v38 = [(AKURLRequestProviderImpl *)v62 context];
      v37 = [(AKAuthenticatedServerRequest *)v38 altDSID];
      [v36 ak_addAuthorizationHeaderWithIdentityToken:v39 forAltDSID:?];
      _objc_release(v37);
      _objc_release(v38);
      _objc_release(v39);
      _objc_release(v40);
    }

    else
    {
      v34 = [(AKURLRequestProviderImpl *)v62 concreteAuthenticationContext];
      v35 = [(AKAppleIDAuthenticationContext *)v34 serviceToken];
      _objc_release(v35);
      _objc_release(v34);
      if (v35)
      {
        v29 = location[0];
        v33 = [(AKURLRequestProviderImpl *)v62 concreteAuthenticationContext];
        v32 = [(AKAppleIDAuthenticationContext *)v33 serviceToken];
        v31 = [(AKURLRequestProviderImpl *)v62 context];
        v30 = [(AKAuthenticatedServerRequest *)v31 altDSID];
        [v29 ak_addAuthorizationHeaderWithServiceToken:v32 forAltDSID:?];
        _objc_release(v30);
        _objc_release(v31);
        _objc_release(v32);
        _objc_release(v33);
      }

      else
      {
        v27 = [(AKURLRequestProviderImpl *)v62 concreteAuthenticationContext];
        v28 = [(AKAppleIDAuthenticationContext *)v27 passwordlessToken];
        _objc_release(v28);
        _objc_release(v27);
        if (v28)
        {
          v58 = _AKLogSystem();
          v57 = 2;
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
          {
            log = v58;
            type = v57;
            sub_10001CEEC(v56);
            _os_log_debug_impl(&_mh_execute_header, log, type, "Plt upgrade enabled, attaching plt to token upgrade request", v56, 2u);
          }

          objc_storeStrong(&v58, 0);
          v20 = location[0];
          v24 = [(AKURLRequestProviderImpl *)v62 concreteAuthenticationContext];
          v23 = [(AKAppleIDAuthenticationContext *)v24 passwordlessToken];
          v22 = [(AKURLRequestProviderImpl *)v62 context];
          v21 = [(AKAuthenticatedServerRequest *)v22 altDSID];
          [v20 ak_addAuthorizationHeaderWithServiceToken:v23 forAltDSID:?];
          _objc_release(v21);
          _objc_release(v22);
          _objc_release(v23);
          _objc_release(v24);
        }
      }
    }
  }

  v18 = +[AKDevice currentDevice];
  v19 = [v18 isProtectedWithPasscode];
  _objc_release(v18);
  if (v19)
  {
    [location[0] ak_addPRKRequestHeader];
  }

  if ((+[AKFeatureManager isEnforceMDMPolicyEnabled]& 1) != 0)
  {
    v16 = objc_alloc_init(AKMDMInformationProvider);
    v15 = [(AKURLRequestProviderImpl *)v62 concreteAuthenticationContext];
    v55 = [(AKMDMInformationProvider *)v16 fetchMDMInformationIfNecessaryForAuthContext:?];
    _objc_release(v15);
    _objc_release(v16);
    v17 = [v55 deviceManagedState];
    _objc_release(v17);
    if (v17)
    {
      v13 = location[0];
      v14 = [v55 deviceManagedState];
      [v13 ak_addHeaderForDeviceManagementState:?];
      _objc_release(v14);
    }

    v12 = [v55 organizationToken];
    _objc_release(v12);
    if (v12)
    {
      v10 = location[0];
      v11 = [v55 organizationToken];
      [v10 ak_addHeaderForMDMOrganizationToken:?];
      _objc_release(v11);
    }

    objc_storeStrong(&v55, 0);
  }

  v8 = [(AKURLRequestProviderImpl *)v62 concreteAuthenticationContext];
  v9 = [(AKAppleIDAuthenticationContext *)v8 idmsDataToken];
  _objc_release(v9);
  _objc_release(v8);
  if (v9)
  {
    v5 = location[0];
    v7 = [(AKURLRequestProviderImpl *)v62 concreteAuthenticationContext];
    v6 = [(AKAppleIDAuthenticationContext *)v7 idmsDataToken];
    [v5 setValue:? forHTTPHeaderField:?];
    _objc_release(v6);
    _objc_release(v7);
  }

  objc_storeStrong(&v59, 0);
  objc_storeStrong(v60, 0);
  objc_storeStrong(location, 0);
  return 1;
}

@end