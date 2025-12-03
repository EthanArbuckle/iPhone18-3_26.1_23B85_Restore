@interface AKWebAuthorizationController
+ (id)_acceptedResponseModes;
- (BOOL)_canProcessRequestURLParams:(id)params;
- (id)_activeStoreAccount;
- (id)_appProvidedDataFromParams:(id)params;
- (id)_appSSOProvidedInformationForBundleIDFromParams:(id)params;
- (id)_authorizationController;
- (id)_fetchPrimaryApplicationInformationForContext:(id)context requestParameters:(id)parameters;
- (id)_getIconNameForHostName:(id)name;
- (id)_getIconTypeIDForHostName:(id)name;
- (id)_parseURLQueryParams:(id)params;
- (id)_requestedScopesFromString:(id)string;
- (id)_responseDictWithCredential:(id)credential requestParams:(id)params;
- (void)_sendAuthorizationResponseToRequest:(id)request usingTemplate:(id)template withCredential:(id)credential requestParams:(id)params;
- (void)beginAuthorizationWithRequest:(id)request;
@end

@implementation AKWebAuthorizationController

- (void)beginAuthorizationWithRequest:(id)request
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v144 = [location[0] url];
  v143 = _AKLogSystem();
  v142 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
  {
    sub_100007B1C(v150, v144);
    _os_log_impl(&_mh_execute_header, v143, v142, "AKWebAuthorizationController beginAuthorizationWithRequest: %@", v150, 0xCu);
  }

  objc_storeStrong(&v143, 0);
  v141 = [(AKWebAuthorizationController *)selfCopy _parseURLQueryParams:v144];
  authorizationOptions = [location[0] authorizationOptions];
  v139 = _AKLogSystem();
  v138 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v139, OS_LOG_TYPE_DEBUG))
  {
    sub_100007B1C(v149, authorizationOptions);
    _os_log_debug_impl(&_mh_execute_header, v139, v138, "authorizationOptions %@", v149, 0xCu);
  }

  objc_storeStrong(&v139, 0);
  v61 = [authorizationOptions objectForKeyedSubscript:SOAuthorizationOptionInitiatorOrigin];

  if (v61)
  {
    v60 = [authorizationOptions objectForKeyedSubscript:SOAuthorizationOptionInitiatorOrigin];
    [v141 setObject:? forKeyedSubscript:?];
  }

  if ([(AKWebAuthorizationController *)selfCopy _canProcessRequestURLParams:v141])
  {
    _authorizationController = [(AKWebAuthorizationController *)selfCopy _authorizationController];
    v132 = dispatch_group_create();
    dispatch_group_enter(v132);
    v126[0] = 0;
    v126[1] = v126;
    v127 = 838860800;
    v128 = 48;
    v129 = sub_100007B78;
    v130 = sub_100007BD0;
    v131 = 0;
    v57 = _authorizationController;
    v120 = _NSConcreteStackBlock;
    v121 = -1073741824;
    v122 = 0;
    v123 = sub_100007C00;
    v124 = &unk_100018670;
    v125[0] = v132;
    v125[1] = v126;
    [v57 fetchAppleIDAuthorizeHTMLResponseTemplateWithCompletion:&v120];
    v119 = objc_alloc_init(AKCredentialRequestContext);
    v55 = +[AKConfiguration sharedConfiguration];
    shouldAutocycleAppsInWebTakeover = [v55 shouldAutocycleAppsInWebTakeover];

    v118[1] = shouldAutocycleAppsInWebTakeover;
    if (shouldAutocycleAppsInWebTakeover == 1)
    {
      v54 = +[AKTestData testTiburonWebBundleIdentifier];
      [v119 set_proxiedClientBundleID:?];

      v53 = +[AKTestData testTiburonWebApplicationName];
      [v119 set_proxiedClientAppName:?];
    }

    else
    {
      v118[0] = [(AKWebAuthorizationController *)selfCopy _fetchPrimaryApplicationInformationForContext:v119 requestParameters:v141];
      v116 = 0;
      v114 = 0;
      v52 = 0;
      if (v118[0])
      {
        userInfo = [v118[0] userInfo];
        v116 = 1;
        v115 = [userInfo objectForKeyedSubscript:AKErrorStatusCodeKey];
        v114 = 1;
        v52 = [v115 integerValue] == -24002;
      }

      if (v114)
      {
      }

      if (v116)
      {
      }

      if (v52)
      {
        oslog = _AKLogSystem();
        v112 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          v50 = oslog;
          v51 = v112;
          sub_100007B5C(v111);
          _os_log_error_impl(&_mh_execute_header, v50, v51, "Invalid redirect URL.", v111, 2u);
        }

        objc_storeStrong(&oslog, 0);
        [location[0] completeWithError:v118[0]];
        v134 = 1;
      }

      else
      {
        v134 = 0;
      }

      objc_storeStrong(v118, 0);
      if (v134)
      {
        goto LABEL_61;
      }
    }

    [v119 set_shouldForceUI:1];
    [v119 set_isWebLogin:1];
    callerBundleIdentifier = [location[0] callerBundleIdentifier];
    [v119 set_callerBundleID:?];

    v48 = [v141 objectForKeyedSubscript:@"client_id"];
    [v119 set_proxiedClientServiceID:?];

    v47 = [v141 objectForKeyedSubscript:@"originURL"];
    v110 = [NSURL URLWithString:?];

    v109 = [AKAuthorizationController isURLFromAppleOwnedDomain:v110];
    if (v109)
    {
      [v119 set_isFirstPartyLogin:1];
      v46 = selfCopy;
      host = [v110 host];
      v108 = [(AKWebAuthorizationController *)v46 _getIconTypeIDForHostName:?];

      if (v108)
      {
        [v119 set_iconTypeID:v108];
      }

      else
      {
        v44 = selfCopy;
        host2 = [v110 host];
        v107 = [(AKWebAuthorizationController *)v44 _getIconNameForHostName:?];

        [v119 set_iconName:v107];
        objc_storeStrong(&v107, 0);
      }

      objc_storeStrong(&v108, 0);
    }

    else
    {
      +[AKIcon defaultScale];
      v106[7] = v3;
      sub_100007C98();
      v106[3] = v4;
      v106[4] = v5;
      sub_100007C98();
      v106[1] = v6;
      v106[2] = v7;
      sub_100007C98();
      v106[5] = v8;
      v106[6] = v9;
      v42 = [NSValue valueWithCGSize:*&v8, *&v9];
      [v119 set_iconSize:?];

      +[AKIcon defaultScale];
      v41 = [NSNumber numberWithDouble:v10];
      [v119 set_iconScale:?];
    }

    v106[0] = objc_alloc_init(AKAuthorizationRequest);
    v40 = [v141 objectForKeyedSubscript:@"client_id"];
    [v106[0] setClientID:?];

    v39 = [(AKWebAuthorizationController *)selfCopy _appProvidedDataFromParams:v141];
    [v106[0] setAppProvidedData:?];

    v38 = selfCopy;
    v37 = [v141 objectForKeyedSubscript:@"scope"];
    v36 = [(AKWebAuthorizationController *)v38 _requestedScopesFromString:?];
    [v106[0] setRequestedScopes:?];

    [v119 setAuthorizationRequest:v106[0]];
    v105 = +[AKAccountManager sharedInstance];
    v34 = [v141 objectForKeyedSubscript:@"account_ind"];
    v35 = [v34 isEqualToString:@"1"];

    if (v35)
    {
      v104 = _AKLogSystem();
      v103 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
      {
        v32 = v104;
        v33 = v103;
        sub_100007B5C(v102);
        _os_log_impl(&_mh_execute_header, v32, v33, "Requesting store account authorization", v102, 2u);
      }

      objc_storeStrong(&v104, 0);
      [v119 set_isItunesLogin:1];
      _activeStoreAccount = [(AKWebAuthorizationController *)selfCopy _activeStoreAccount];
      if (_activeStoreAccount)
      {
        v100 = _AKLogSystem();
        v99 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
        {
          v31 = +[AKAccountManager sharedInstance];
          v30 = [(AKAccountManager *)v31 primaryEmailAddressForAccount:_activeStoreAccount];
          v98 = v30;
          sub_100007B1C(v148, v98);
          _os_log_debug_impl(&_mh_execute_header, v100, v99, "Found a store account with handle: %@", v148, 0xCu);

          objc_storeStrong(&v98, 0);
        }

        objc_storeStrong(&v100, 0);
        v97 = [v105 altDSIDForAccount:_activeStoreAccount];
        v96 = [v105 authKitAccountWithAltDSID:v97 error:0];
        v95 = _AKLogSystem();
        v94 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
        {
          v28 = v95;
          v29 = v94;
          sub_100007B5C(v93);
          _os_log_impl(&_mh_execute_header, v28, v29, "Account manager contains store account", v93, 2u);
        }

        objc_storeStrong(&v95, 0);
        if (v96)
        {
          v27 = v96;
          authorizationRequest = [v119 authorizationRequest];
          [authorizationRequest setAuthkitAccount:v27];
        }

        else
        {
          v92 = _AKLogSystem();
          v91 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
          {
            v24 = v92;
            v25 = v91;
            sub_100007B5C(v90);
            _os_log_impl(&_mh_execute_header, v24, v25, "Account manager doesn't contain an active store account", v90, 2u);
          }

          objc_storeStrong(&v92, 0);
          primaryAuthKitAccount = [v105 primaryAuthKitAccount];
          authorizationRequest2 = [v119 authorizationRequest];
          [authorizationRequest2 setAuthkitAccount:primaryAuthKitAccount];
        }

        objc_storeStrong(&v96, 0);
        objc_storeStrong(&v97, 0);
      }

      else
      {
        v89 = _AKLogSystem();
        v88 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v89;
          v21 = v88;
          sub_100007B5C(v87);
          _os_log_impl(&_mh_execute_header, v20, v21, "Account manager doesn't contain an active store account", v87, 2u);
        }

        objc_storeStrong(&v89, 0);
        primaryAuthKitAccount2 = [v105 primaryAuthKitAccount];
        authorizationRequest3 = [v119 authorizationRequest];
        [authorizationRequest3 setAuthkitAccount:primaryAuthKitAccount2];
      }

      objc_storeStrong(&_activeStoreAccount, 0);
    }

    else
    {
      v86 = _AKLogSystem();
      v85 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v86;
        v17 = v85;
        sub_100007B5C(v84);
        _os_log_impl(&_mh_execute_header, v16, v17, "Requesting primary account authorization", v84, 2u);
      }

      objc_storeStrong(&v86, 0);
      primaryAuthKitAccount3 = [v105 primaryAuthKitAccount];
      authorizationRequest4 = [v119 authorizationRequest];
      [authorizationRequest4 setAuthkitAccount:primaryAuthKitAccount3];
    }

    v83 = 0;
    obj = 0;
    v13 = [AKAuthorizationValidator canPerformCredentialRequest:v119 error:&obj];
    objc_storeStrong(&v83, obj);
    if (v13)
    {
      v62 = _NSConcreteStackBlock;
      v63 = -1073741824;
      v64 = 0;
      v65 = sub_100007E40;
      v66 = &unk_1000186E8;
      v67 = v132;
      v70[1] = v126;
      v68 = selfCopy;
      v69 = location[0];
      v70[0] = v141;
      v71 = v109 & 1;
      v72 = objc_retainBlock(&v62);
      [_authorizationController performAuthorizationWithContext:v119 completion:v72];
      objc_storeStrong(&v72, 0);
      objc_storeStrong(v70, 0);
      objc_storeStrong(&v69, 0);
      objc_storeStrong(&v68, 0);
      objc_storeStrong(&v67, 0);
      v134 = 0;
    }

    else
    {
      v81 = _AKLogSystem();
      v80 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        sub_100007B1C(v147, v83);
        _os_log_error_impl(&_mh_execute_header, v81, v80, "Web authorization controller NOT permitted to perform credential request with error: %@", v147, 0xCu);
      }

      objc_storeStrong(&v81, 0);
      if ([v83 code] == -7076)
      {
        v12 = +[AKAlertHandler sharedInstance];
        v11 = v83;
        v73 = _NSConcreteStackBlock;
        v74 = -1073741824;
        v75 = 0;
        v76 = sub_100007CCC;
        v77 = &unk_100018698;
        v78 = location[0];
        v79 = v83;
        [(AKAlertHandler *)v12 showAlertForError:v11 withCompletion:&v73];

        objc_storeStrong(&v79, 0);
        objc_storeStrong(&v78, 0);
      }

      else
      {
        [location[0] completeWithError:v83];
      }

      v134 = 1;
    }

    objc_storeStrong(&v83, 0);
    objc_storeStrong(&v105, 0);
    objc_storeStrong(v106, 0);
    objc_storeStrong(&v110, 0);
LABEL_61:
    objc_storeStrong(&v119, 0);
    objc_storeStrong(v125, 0);
    _Block_object_dispose(v126, 8);
    objc_storeStrong(&v131, 0);
    objc_storeStrong(&v132, 0);
    objc_storeStrong(&_authorizationController, 0);
    goto LABEL_62;
  }

  v137 = _AKLogSystem();
  v136 = 16;
  if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
  {
    v58 = v137;
    v59 = v136;
    sub_100007B5C(v135);
    _os_log_error_impl(&_mh_execute_header, v58, v59, "Request params do not meet all requirements. Authorization request not handled.", v135, 2u);
  }

  objc_storeStrong(&v137, 0);
  [location[0] doNotHandle];
  v134 = 1;
LABEL_62:
  objc_storeStrong(&authorizationOptions, 0);
  objc_storeStrong(&v141, 0);
  objc_storeStrong(&v144, 0);
  objc_storeStrong(location, 0);
}

- (id)_fetchPrimaryApplicationInformationForContext:(id)context requestParameters:(id)parameters
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v28 = 0;
  objc_storeStrong(&v28, parameters);
  v27 = 0;
  _authorizationController = [(AKWebAuthorizationController *)selfCopy _authorizationController];
  v25 = v27;
  v17 = [_authorizationController primaryApplicationInformationForWebServiceWithInfo:v28 error:&v25];
  objc_storeStrong(&v27, v25);
  v26 = v17;

  if (v27)
  {
    v24 = _AKLogSystem();
    v23 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v15 = [v28 objectForKeyedSubscript:@"client_id"];
      sub_1000087C0(v31, v15, v27);
      _os_log_error_impl(&_mh_execute_header, v24, v23, "Unable to fetch Primary Bundle ID for service id: %@, error: %@", v31, 0x16u);
    }

    objc_storeStrong(&v24, 0);
  }

  v13 = [v26 objectForKeyedSubscript:@"client_id"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v12 = [v26 objectForKeyedSubscript:@"client_id"];
    [location[0] set_proxiedClientBundleID:?];
  }

  v22 = 0;
  v10 = [v26 objectForKeyedSubscript:@"client_name"];
  objc_opt_class();
  v11 = objc_opt_isKindOfClass();

  if (v11)
  {
    v4 = [v26 objectForKeyedSubscript:@"client_name"];
    v5 = v22;
    v22 = v4;
  }

  v9 = [v28 objectForKeyedSubscript:@"originURL"];
  v21 = [NSURL URLWithString:?];

  v19 = 0;
  if (v22)
  {
    v8 = v22;
  }

  else
  {
    _lp_simplifiedDisplayString = [v21 _lp_simplifiedDisplayString];
    v19 = 1;
    v8 = _lp_simplifiedDisplayString;
  }

  [location[0] set_proxiedClientAppName:v8];
  if (v19)
  {
  }

  v7 = v27;
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);

  return v7;
}

- (id)_authorizationController
{
  v2 = objc_alloc_init(AKAuthorizationController);

  return v2;
}

- (id)_appSSOProvidedInformationForBundleIDFromParams:(id)params
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, params);
  v4 = [(AKWebAuthorizationController *)selfCopy _appProvidedDataFromParams:location[0]];
  v7 = [v4 mutableCopy];

  v5 = [location[0] objectForKeyedSubscript:?];
  [v7 setObject:? forKeyedSubscript:?];

  v6 = [v7 copy];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (id)_parseURLQueryParams:(id)params
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, params);
  v19 = +[NSMutableDictionary dictionary];
  v18 = [NSURLComponents componentsWithURL:location[0] resolvingAgainstBaseURL:0];
  percentEncodedQuery = [v18 percentEncodedQuery];
  v12 = [percentEncodedQuery stringByReplacingOccurrencesOfString:@"+" withString:@"%20"];
  [v18 setPercentEncodedQuery:?];

  memset(__b, 0, sizeof(__b));
  obj = [v18 queryItems];
  v15 = [obj countByEnumeratingWithState:__b objects:v21 count:16];
  if (v15)
  {
    v9 = *__b[2];
    v10 = 0;
    v11 = v15;
    while (1)
    {
      v8 = v10;
      if (*__b[2] != v9)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(__b[1] + 8 * v10);
      value = [v17 value];
      v5 = v19;
      name = [v17 name];
      [v5 setObject:value forKeyedSubscript:?];

      ++v10;
      if (v8 + 1 >= v11)
      {
        v10 = 0;
        v11 = [obj countByEnumeratingWithState:__b objects:v21 count:16];
        if (!v11)
        {
          break;
        }
      }
    }
  }

  v4 = v19;
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (BOOL)_canProcessRequestURLParams:(id)params
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, params);
  v42 = _AKLogSystem();
  v41 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    sub_100007B1C(v46, location[0]);
    _os_log_debug_impl(&_mh_execute_header, v42, v41, "verifying if request can be processed with url parameters: %@", v46, 0xCu);
  }

  objc_storeStrong(&v42, 0);
  v20 = [location[0] objectForKeyedSubscript:@"originURL"];

  if (v20)
  {
    v17 = [location[0] objectForKeyedSubscript:@"client_id"];

    if (v17)
    {
      v14 = [location[0] objectForKeyedSubscript:@"redirect_uri"];

      if (v14)
      {
        v11 = [location[0] objectForKeyedSubscript:@"response_type"];

        if (v11)
        {
          v27 = [location[0] objectForKeyedSubscript:@"scope"];
          if (![v27 length])
          {
            goto LABEL_26;
          }

          v26 = [location[0] objectForKeyedSubscript:@"response_mode"];
          v7 = +[AKWebAuthorizationController _acceptedResponseModes];
          v8 = [v7 containsObject:v26];

          if (v8)
          {
            v37 = 0;
          }

          else
          {
            v25 = _AKLogSystem();
            v24 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              sub_100007B1C(v45, v26);
              _os_log_error_impl(&_mh_execute_header, v25, v24, "Request parameters with scopes have unsupported response_mode '%@'. Unable to proceed.", v45, 0xCu);
            }

            objc_storeStrong(&v25, 0);
            v44 = 0;
            v37 = 1;
          }

          objc_storeStrong(&v26, 0);
          if (!v37)
          {
LABEL_26:
            v6 = [location[0] objectForKeyedSubscript:@"frame_id"];

            if (!v6)
            {
              v23 = _AKLogSystem();
              v22 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                v4 = v23;
                v5 = v22;
                sub_100007B5C(v21);
                _os_log_impl(&_mh_execute_header, v4, v5, "Request parameters are missing 'frame_id'. Response data will be insufficient. ", v21, 2u);
              }

              objc_storeStrong(&v23, 0);
            }

            v44 = 1;
            v37 = 1;
          }

          objc_storeStrong(&v27, 0);
        }

        else
        {
          v30 = _AKLogSystem();
          v29 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v9 = v30;
            v10 = v29;
            sub_100007B5C(v28);
            _os_log_impl(&_mh_execute_header, v9, v10, "Request parameters are missing 'response_type'. Unable to proceed.", v28, 2u);
          }

          objc_storeStrong(&v30, 0);
          v44 = 0;
          v37 = 1;
        }
      }

      else
      {
        v33 = _AKLogSystem();
        v32 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v33;
          v13 = v32;
          sub_100007B5C(v31);
          _os_log_impl(&_mh_execute_header, v12, v13, "Request parameters are missing 'redirect_uri'. Unable to proceed.", v31, 2u);
        }

        objc_storeStrong(&v33, 0);
        v44 = 0;
        v37 = 1;
      }
    }

    else
    {
      v36 = _AKLogSystem();
      v35 = 16;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v15 = v36;
        v16 = v35;
        sub_100007B5C(v34);
        _os_log_error_impl(&_mh_execute_header, v15, v16, "Request parameters are missing 'client_id'. Unable to proceed.", v34, 2u);
      }

      objc_storeStrong(&v36, 0);
      v44 = 0;
      v37 = 1;
    }
  }

  else
  {
    v40 = _AKLogSystem();
    v39 = 16;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v18 = v40;
      v19 = v39;
      sub_100007B5C(v38);
      _os_log_error_impl(&_mh_execute_header, v18, v19, "Request parameters are missing 'originURL'. Unable to proceed.", v38, 2u);
    }

    objc_storeStrong(&v40, 0);
    v44 = 0;
    v37 = 1;
  }

  objc_storeStrong(location, 0);
  return v44 & 1;
}

- (id)_appProvidedDataFromParams:(id)params
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, params);
  v19 = +[NSMutableDictionary dictionary];
  v18 = [location[0] objectForKeyedSubscript:@"originURL"];

  if (v18)
  {
    v17 = [location[0] objectForKeyedSubscript:?];
    [v19 setObject:? forKeyedSubscript:?];
  }

  v16 = [location[0] objectForKeyedSubscript:@"frame_id"];

  if (v16)
  {
    v15 = [location[0] objectForKeyedSubscript:?];
    [v19 setObject:? forKeyedSubscript:?];
  }

  v14 = [location[0] objectForKeyedSubscript:@"redirect_uri"];

  if (v14)
  {
    v13 = [location[0] objectForKeyedSubscript:?];
    [v19 setObject:? forKeyedSubscript:?];
  }

  v12 = [location[0] objectForKeyedSubscript:@"response_mode"];

  if (v12)
  {
    v11 = [location[0] objectForKeyedSubscript:?];
    [v19 setObject:? forKeyedSubscript:?];
  }

  v10 = [location[0] objectForKeyedSubscript:@"response_type"];

  if (v10)
  {
    v9 = [location[0] objectForKeyedSubscript:?];
    [v19 setObject:? forKeyedSubscript:?];
  }

  v8 = [location[0] objectForKeyedSubscript:@"state"];

  if (v8)
  {
    v7 = [location[0] objectForKeyedSubscript:?];
    [v19 setObject:? forKeyedSubscript:?];
  }

  v6 = [location[0] objectForKeyedSubscript:@"nonce"];

  if (v6)
  {
    v5 = [location[0] objectForKeyedSubscript:?];
    [v19 setObject:? forKeyedSubscript:?];
  }

  v4 = [v19 copy];
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_requestedScopesFromString:(id)string
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, string);
  v14 = +[NSMutableArray array];
  if ([location[0] length])
  {
    v13 = [location[0] componentsSeparatedByString:@" "];
    memset(__b, 0, sizeof(__b));
    obj = v13;
    v10 = [obj countByEnumeratingWithState:__b objects:v16 count:16];
    if (v10)
    {
      v6 = *__b[2];
      v7 = 0;
      v8 = v10;
      while (1)
      {
        v5 = v7;
        if (*__b[2] != v6)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(__b[1] + 8 * v7);
        [v14 addObject:v12];
        ++v7;
        if (v5 + 1 >= v8)
        {
          v7 = 0;
          v8 = [obj countByEnumeratingWithState:__b objects:v16 count:16];
          if (!v8)
          {
            break;
          }
        }
      }
    }

    objc_storeStrong(&v13, 0);
  }

  v4 = [v14 copy];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_getIconTypeIDForHostName:(id)name
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  if ([location[0] containsString:@"icloud"])
  {
    v6 = @"com.apple.application-icon.icloud";
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong(location, 0);
  v3 = v6;

  return v3;
}

- (id)_getIconNameForHostName:(id)name
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  if ([location[0] containsString:@"icloud"])
  {
    v6 = @"iCloudLogo";
  }

  else
  {
    v6 = @"AppleLogo";
  }

  objc_storeStrong(location, 0);
  v3 = v6;

  return v3;
}

- (id)_activeStoreAccount
{
  v6[2] = self;
  v6[1] = a2;
  location = +[ACAccountStore ams_sharedAccountStore];
  v6[0] = [location ams_activeiTunesAccount];

  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_100007B1C(v7, v6[0]);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Store account: %@", v7, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v3 = v6[0];
  objc_storeStrong(&location, 0);
  objc_storeStrong(v6, 0);

  return v3;
}

- (id)_responseDictWithCredential:(id)credential requestParams:(id)params
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, credential);
  v47 = 0;
  objc_storeStrong(&v47, params);
  v46 = +[NSMutableDictionary dictionary];
  v23 = [v47 objectForKeyedSubscript:?];
  [v46 setObject:? forKeyedSubscript:?];

  v24 = [v47 objectForKeyedSubscript:?];
  [v46 setObject:? forKeyedSubscript:?];

  [v46 setObject:@"AppSSOTakeoverDidComplete" forKeyedSubscript:@"event"];
  v45 = +[NSMutableDictionary dictionary];
  v25 = [NSString alloc];
  identityToken = [location[0] identityToken];
  v26 = [v25 initWithData:? encoding:?];
  [v45 setObject:? forKeyedSubscript:?];

  v28 = [NSString alloc];
  authorizationCode = [location[0] authorizationCode];
  v29 = [v28 initWithData:? encoding:?];
  [v45 setObject:? forKeyedSubscript:?];

  v31 = [v47 objectForKeyedSubscript:?];
  [v45 setObject:? forKeyedSubscript:?];

  [v46 setObject:v45 forKeyedSubscript:@"authorization"];
  v32 = [v47 objectForKeyedSubscript:@"originURL"];
  v44 = [NSURL URLWithString:?];

  v43 = [AKAuthorizationController isURLFromAllowListDomainsForSharingKey:v44];
  if (v43)
  {
    _authorizationController = [(AKWebAuthorizationController *)selfCopy _authorizationController];
    _sharedKeyInfo = [_authorizationController _sharedKeyInfo];
    v40 = +[NSMutableDictionary dictionary];
    v20 = objc_opt_class();
    v21 = [_sharedKeyInfo objectForKeyedSubscript:@"sharing_key"];
    v39 = sub_10000A510(v20, v21);

    if (v39)
    {
      [v40 setObject:v39 forKeyedSubscript:@"sharing_key"];
    }

    v18 = objc_opt_class();
    v19 = [_sharedKeyInfo objectForKeyedSubscript:@"mid"];
    v38 = sub_10000A510(v18, v19);

    if (v38)
    {
      [v40 setObject:v38 forKeyedSubscript:@"mid"];
    }

    if ([v40 count])
    {
      [v46 setObject:v40 forKeyedSubscript:@"data"];
    }

    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v39, 0);
    objc_storeStrong(&v40, 0);
    objc_storeStrong(&_sharedKeyInfo, 0);
    objc_storeStrong(&_authorizationController, 0);
  }

  v37 = +[NSMutableDictionary dictionary];
  userInformation = [location[0] userInformation];
  selectedEmail = [userInformation selectedEmail];
  [v37 setObject:? forKeyedSubscript:?];

  userInformation2 = [location[0] userInformation];
  givenName = [userInformation2 givenName];
  v35 = 0;
  v33 = 0;
  v17 = 1;
  if (!givenName)
  {
    userInformation3 = [location[0] userInformation];
    v35 = 1;
    familyName = [userInformation3 familyName];
    v33 = 1;
    v17 = familyName != 0;
  }

  if (v33)
  {
  }

  if (v35)
  {
  }

  if (v17)
  {
    v50[0] = @"firstName";
    userInformation4 = [location[0] userInformation];
    givenName2 = [userInformation4 givenName];
    if (givenName2)
    {
      v10 = givenName2;
    }

    else
    {
      v10 = &stru_100019330;
    }

    v51[0] = v10;
    v50[1] = @"lastName";
    userInformation5 = [location[0] userInformation];
    familyName2 = [userInformation5 familyName];
    if (familyName2)
    {
      v7 = familyName2;
    }

    else
    {
      v7 = &stru_100019330;
    }

    v51[1] = v7;
    v6 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:2];
    [v37 setObject:? forKeyedSubscript:?];
  }

  [v46 setObject:v37 forKeyedSubscript:@"user"];
  v5 = [v46 copy];
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (void)_sendAuthorizationResponseToRequest:(id)request usingTemplate:(id)template withCredential:(id)credential requestParams:(id)params
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v27 = 0;
  objc_storeStrong(&v27, template);
  v26 = 0;
  objc_storeStrong(&v26, credential);
  v25 = 0;
  objc_storeStrong(&v25, params);
  if (v27)
  {
    v20 = [(AKWebAuthorizationController *)selfCopy _responseDictWithCredential:v26 requestParams:v25];
    v6 = [AAFSerialization ofType:@"application/json"];
    v19 = [v6 stringFromDictionary:v20];

    v18 = [v27 stringByReplacingOccurrencesOfString:@"{{%-- AUTHKIT_DATA --%}}" withString:v19];
    v17 = [v18 dataUsingEncoding:4];
    v7 = [NSHTTPURLResponse alloc];
    v8 = [location[0] url];
    v16 = [v7 initWithURL:? statusCode:? HTTPVersion:? headerFields:?];

    [location[0] completeWithHTTPResponse:v16 httpBody:v17];
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
    v21 = 0;
  }

  else
  {
    v24 = _AKLogSystem();
    v23 = 16;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      log = v24;
      type = v23;
      sub_100007B5C(v22);
      _os_log_error_impl(&_mh_execute_header, log, type, "Missing resource template for authorization response body.", v22, 2u);
    }

    objc_storeStrong(&v24, 0);
    v9 = location[0];
    v10 = [NSError ak_errorWithCode:-7029];
    [v9 completeWithError:?];

    v21 = 1;
  }

  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
}

+ (id)_acceptedResponseModes
{
  v5 = &unk_100021078;
  location = 0;
  objc_storeStrong(&location, &stru_100018708);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100021070;

  return v2;
}

@end