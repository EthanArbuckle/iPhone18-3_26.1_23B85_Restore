@interface AKTokenUpgradeRequestProvider
- (BOOL)signRequest:(id)request error:(id *)error;
- (void)buildRequestWithCompletion:(id)completion;
@end

@implementation AKTokenUpgradeRequestProvider

- (void)buildRequestWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  concreteAuthenticationContext = [(AKURLRequestProviderImpl *)selfCopy concreteAuthenticationContext];
  _shortLivedToken = [(AKAppleIDAuthenticationContext *)concreteAuthenticationContext _shortLivedToken];
  _objc_release(concreteAuthenticationContext);
  concreteAuthenticationContext2 = [(AKURLRequestProviderImpl *)selfCopy concreteAuthenticationContext];
  _identityToken = [(AKAppleIDAuthenticationContext *)concreteAuthenticationContext2 _identityToken];
  _objc_release(concreteAuthenticationContext2);
  concreteAuthenticationContext3 = [(AKURLRequestProviderImpl *)selfCopy concreteAuthenticationContext];
  serviceToken = [(AKAppleIDAuthenticationContext *)concreteAuthenticationContext3 serviceToken];
  _objc_release(concreteAuthenticationContext3);
  context = [(AKURLRequestProviderImpl *)selfCopy context];
  altDSID = [(AKAuthenticatedServerRequest *)context altDSID];
  _objc_release(context);
  if (altDSID)
  {
    v4 = +[AKURLBag sharedBag];
    v3 = AKURLBagKeyPLTUpgradeEnabled;
    v13 = _NSConcreteStackBlock;
    v14 = -1073741824;
    v15 = 0;
    v16 = sub_1001A72A8;
    v17 = &unk_100325E30;
    v18 = _objc_retain(selfCopy);
    v19 = _objc_retain(_shortLivedToken);
    v20 = _objc_retain(_identityToken);
    v21 = _objc_retain(serviceToken);
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

  objc_storeStrong(&altDSID, 0);
  objc_storeStrong(&serviceToken, 0);
  objc_storeStrong(&_identityToken, 0);
  objc_storeStrong(&_shortLivedToken, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)signRequest:(id)request error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v60[1] = error;
  v49 = [AKDServerUIController alloc];
  client = [(AKURLRequestProviderImpl *)selfCopy client];
  v60[0] = [(AKDServerUIController *)v49 initWithClient:?];
  _objc_release(client);
  concreteAuthenticationContext = [(AKURLRequestProviderImpl *)selfCopy concreteAuthenticationContext];
  v59 = [v60[0] resourceLoadDelegateWithContext:?];
  _objc_release(concreteAuthenticationContext);
  urlBagKey = [(AKURLRequestProviderImpl *)selfCopy urlBagKey];
  [v59 setBagUrlKey:?];
  _objc_release(urlBagKey);
  [v59 signRequestWithCommonHeaders:location[0]];
  concreteAuthenticationContext2 = [(AKURLRequestProviderImpl *)selfCopy concreteAuthenticationContext];
  _shortLivedToken = [(AKAppleIDAuthenticationContext *)concreteAuthenticationContext2 _shortLivedToken];
  _objc_release(_shortLivedToken);
  _objc_release(concreteAuthenticationContext2);
  if (_shortLivedToken)
  {
    v43 = location[0];
    concreteAuthenticationContext3 = [(AKURLRequestProviderImpl *)selfCopy concreteAuthenticationContext];
    _shortLivedToken2 = [(AKAppleIDAuthenticationContext *)concreteAuthenticationContext3 _shortLivedToken];
    context = [(AKURLRequestProviderImpl *)selfCopy context];
    altDSID = [(AKAuthenticatedServerRequest *)context altDSID];
    [v43 ak_addShortLivedTokenHeaderWithIdentityToken:_shortLivedToken2 forAltDSID:?];
    _objc_release(altDSID);
    _objc_release(context);
    _objc_release(_shortLivedToken2);
    _objc_release(concreteAuthenticationContext3);
  }

  else
  {
    concreteAuthenticationContext4 = [(AKURLRequestProviderImpl *)selfCopy concreteAuthenticationContext];
    _identityToken = [(AKAppleIDAuthenticationContext *)concreteAuthenticationContext4 _identityToken];
    _objc_release(_identityToken);
    _objc_release(concreteAuthenticationContext4);
    if (_identityToken)
    {
      v36 = location[0];
      concreteAuthenticationContext5 = [(AKURLRequestProviderImpl *)selfCopy concreteAuthenticationContext];
      _identityToken2 = [(AKAppleIDAuthenticationContext *)concreteAuthenticationContext5 _identityToken];
      context2 = [(AKURLRequestProviderImpl *)selfCopy context];
      altDSID2 = [(AKAuthenticatedServerRequest *)context2 altDSID];
      [v36 ak_addAuthorizationHeaderWithIdentityToken:_identityToken2 forAltDSID:?];
      _objc_release(altDSID2);
      _objc_release(context2);
      _objc_release(_identityToken2);
      _objc_release(concreteAuthenticationContext5);
    }

    else
    {
      concreteAuthenticationContext6 = [(AKURLRequestProviderImpl *)selfCopy concreteAuthenticationContext];
      serviceToken = [(AKAppleIDAuthenticationContext *)concreteAuthenticationContext6 serviceToken];
      _objc_release(serviceToken);
      _objc_release(concreteAuthenticationContext6);
      if (serviceToken)
      {
        v29 = location[0];
        concreteAuthenticationContext7 = [(AKURLRequestProviderImpl *)selfCopy concreteAuthenticationContext];
        serviceToken2 = [(AKAppleIDAuthenticationContext *)concreteAuthenticationContext7 serviceToken];
        context3 = [(AKURLRequestProviderImpl *)selfCopy context];
        altDSID3 = [(AKAuthenticatedServerRequest *)context3 altDSID];
        [v29 ak_addAuthorizationHeaderWithServiceToken:serviceToken2 forAltDSID:?];
        _objc_release(altDSID3);
        _objc_release(context3);
        _objc_release(serviceToken2);
        _objc_release(concreteAuthenticationContext7);
      }

      else
      {
        concreteAuthenticationContext8 = [(AKURLRequestProviderImpl *)selfCopy concreteAuthenticationContext];
        passwordlessToken = [(AKAppleIDAuthenticationContext *)concreteAuthenticationContext8 passwordlessToken];
        _objc_release(passwordlessToken);
        _objc_release(concreteAuthenticationContext8);
        if (passwordlessToken)
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
          concreteAuthenticationContext9 = [(AKURLRequestProviderImpl *)selfCopy concreteAuthenticationContext];
          passwordlessToken2 = [(AKAppleIDAuthenticationContext *)concreteAuthenticationContext9 passwordlessToken];
          context4 = [(AKURLRequestProviderImpl *)selfCopy context];
          altDSID4 = [(AKAuthenticatedServerRequest *)context4 altDSID];
          [v20 ak_addAuthorizationHeaderWithServiceToken:passwordlessToken2 forAltDSID:?];
          _objc_release(altDSID4);
          _objc_release(context4);
          _objc_release(passwordlessToken2);
          _objc_release(concreteAuthenticationContext9);
        }
      }
    }
  }

  v18 = +[AKDevice currentDevice];
  isProtectedWithPasscode = [v18 isProtectedWithPasscode];
  _objc_release(v18);
  if (isProtectedWithPasscode)
  {
    [location[0] ak_addPRKRequestHeader];
  }

  if ((+[AKFeatureManager isEnforceMDMPolicyEnabled]& 1) != 0)
  {
    v16 = objc_alloc_init(AKMDMInformationProvider);
    concreteAuthenticationContext10 = [(AKURLRequestProviderImpl *)selfCopy concreteAuthenticationContext];
    v55 = [(AKMDMInformationProvider *)v16 fetchMDMInformationIfNecessaryForAuthContext:?];
    _objc_release(concreteAuthenticationContext10);
    _objc_release(v16);
    deviceManagedState = [v55 deviceManagedState];
    _objc_release(deviceManagedState);
    if (deviceManagedState)
    {
      v13 = location[0];
      deviceManagedState2 = [v55 deviceManagedState];
      [v13 ak_addHeaderForDeviceManagementState:?];
      _objc_release(deviceManagedState2);
    }

    organizationToken = [v55 organizationToken];
    _objc_release(organizationToken);
    if (organizationToken)
    {
      v10 = location[0];
      organizationToken2 = [v55 organizationToken];
      [v10 ak_addHeaderForMDMOrganizationToken:?];
      _objc_release(organizationToken2);
    }

    objc_storeStrong(&v55, 0);
  }

  concreteAuthenticationContext11 = [(AKURLRequestProviderImpl *)selfCopy concreteAuthenticationContext];
  idmsDataToken = [(AKAppleIDAuthenticationContext *)concreteAuthenticationContext11 idmsDataToken];
  _objc_release(idmsDataToken);
  _objc_release(concreteAuthenticationContext11);
  if (idmsDataToken)
  {
    v5 = location[0];
    concreteAuthenticationContext12 = [(AKURLRequestProviderImpl *)selfCopy concreteAuthenticationContext];
    idmsDataToken2 = [(AKAppleIDAuthenticationContext *)concreteAuthenticationContext12 idmsDataToken];
    [v5 setValue:? forHTTPHeaderField:?];
    _objc_release(idmsDataToken2);
    _objc_release(concreteAuthenticationContext12);
  }

  objc_storeStrong(&v59, 0);
  objc_storeStrong(v60, 0);
  objc_storeStrong(location, 0);
  return 1;
}

@end