@interface AKUserConfigController
+ (id)sharedController;
- (AKUserConfigController)init;
- (id)_decodeConfigurationInfo:(id)a3;
- (id)_requestProvider:(id)a3 client:(id)a4 dataCenter:(id)a5 urlBagKey:(id)a6;
- (id)_userConfigChangeNotificationDictionaryForAccount:(id)a3 configurationInfo:(id)a4;
- (void)fetchUserConfigForAltDSID:(id)a3 client:(id)a4 dataCenter:(id)a5 forIdentifiers:(id)a6 completion:(id)a7;
- (void)processPushMessage:(id)a3;
- (void)setPrivacyConsentForAltDSID:(id)a3 client:(id)a4 value:(id)a5 version:(id)a6 completion:(id)a7;
- (void)setUserConfigForAltDSID:(id)a3 client:(id)a4 configurationInfo:(id)a5 forIdentifier:(id)a6 completion:(id)a7;
- (void)updateUserConfigForAccount:(id)a3 configurationInfo:(id)a4;
- (void)updateUserConfigForAltDSID:(id)a3 configurationInfo:(id)a4;
@end

@implementation AKUserConfigController

+ (id)sharedController
{
  v11 = a1;
  v10 = a2;
  obj = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000E5AF0;
  v8 = &unk_100322AA0;
  v9 = a1;
  v13 = &unk_100374780;
  location = 0;
  objc_storeStrong(&location, &obj);
  if (*v13 != -1)
  {
    dispatch_once(v13, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100374778;

  return v2;
}

- (AKUserConfigController)init
{
  v8 = a2;
  v9 = 0;
  v7.receiver = self;
  v7.super_class = AKUserConfigController;
  v6 = [(AKUserConfigController *)&v7 init];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    v2 = +[AKAccountManager sharedInstance];
    accountManager = v9->_accountManager;
    v9->_accountManager = v2;
    _objc_release(accountManager);
  }

  v5 = _objc_retain(v9);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (void)fetchUserConfigForAltDSID:(id)a3 client:(id)a4 dataCenter:(id)a5 forIdentifiers:(id)a6 completion:(id)a7
{
  v45 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v43 = 0;
  objc_storeStrong(&v43, a4);
  v42 = 0;
  objc_storeStrong(&v42, a5);
  v41 = 0;
  objc_storeStrong(&v41, a6);
  v40 = 0;
  objc_storeStrong(&v40, a7);
  v38 = 0;
  v21 = 1;
  if ([v41 count])
  {
    objc_opt_class();
    v21 = 1;
    if (objc_opt_isKindOfClass())
    {
      v39 = [v41 firstObject];
      v38 = 1;
      objc_opt_class();
      v21 = (objc_opt_isKindOfClass() & 1) == 0;
    }
  }

  if (v38)
  {
    _objc_release(v39);
  }

  if (v21)
  {
    v37 = _AKLogSystem();
    v36 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      sub_1000194D4(v48, v7);
      _os_log_error_impl(&_mh_execute_header, v37, v36, "Invalid configurationInfo identifiers type provided: %@", v48, 0xCu);
    }

    objc_storeStrong(&v37, 0);
    if (v40)
    {
      v15 = v40;
      v16 = [NSError ak_errorWithCode:-7053];
      v15[2](v15, 0);
      _objc_release(v16);
    }

    v35 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [(AKUserConfigController *)v45 _requestProvider:location[0] client:v43 dataCenter:v42 urlBagKey:AKURLBagKeyFetchConfigData];
      v46 = @"cdks";
      v47 = v41;
      v9 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      [v31 setAuthKitBody:?];
      _objc_release(v9);
      v8 = [AKServiceControllerImpl alloc];
      v30 = [(AKServiceControllerImpl *)v8 initWithRequestProvider:v31];
      v10 = v30;
      v22 = _NSConcreteStackBlock;
      v23 = -1073741824;
      v24 = 0;
      v25 = sub_1000E61E0;
      v26 = &unk_10031F110;
      v29 = _objc_retain(v40);
      v27 = _objc_retain(v45);
      v28 = _objc_retain(location[0]);
      [(AKServiceControllerImpl *)v10 executeRequestWithCompletion:&v22];
      objc_storeStrong(&v28, 0);
      objc_storeStrong(&v27, 0);
      objc_storeStrong(&v29, 0);
      objc_storeStrong(&v30, 0);
      objc_storeStrong(&v31, 0);
      v35 = 0;
    }

    else
    {
      v34 = _AKLogSystem();
      v33 = 16;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v13 = v34;
        v14 = v33;
        sub_10001CEEC(v32);
        _os_log_error_impl(&_mh_execute_header, v13, v14, "Missing parameter altDSID!", v32, 2u);
      }

      objc_storeStrong(&v34, 0);
      if (v40)
      {
        v11 = v40;
        v12 = [NSError ak_errorWithCode:-7025];
        v11[2](v11, 0);
        _objc_release(v12);
      }

      v35 = 1;
    }
  }

  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
}

- (void)setUserConfigForAltDSID:(id)a3 client:(id)a4 configurationInfo:(id)a5 forIdentifier:(id)a6 completion:(id)a7
{
  v75 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v73 = 0;
  objc_storeStrong(&v73, a4);
  v72 = 0;
  objc_storeStrong(&v72, a5);
  v71 = 0;
  objc_storeStrong(&v71, a6);
  v70 = 0;
  objc_storeStrong(&v70, a7);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v63 = _objc_retain(v72);
      if (([v71 isEqualToString:AKAppleAccountPrivacyConsentKey] & 1) == 0)
      {
        goto LABEL_30;
      }

      v7 = objc_opt_class();
      v62 = sub_1000E72E0(v7, v72);
      if (v62)
      {
        v22 = objc_opt_class();
        v23 = [v62 objectForKeyedSubscript:AKAppleAccountConsentValueKey];
        v59 = sub_1000E72E0(v22, v23);
        _objc_release(v23);
        v24 = objc_opt_class();
        v25 = [v62 objectForKeyedSubscript:AKAppleAccountConsentVersionKey];
        v58 = sub_1000E72E0(v24, v25);
        _objc_release(v25);
        if (!v59)
        {
          goto LABEL_22;
        }

        if (v58)
        {
          v79[0] = AKAppleAccountConsentValueKey;
          v80[0] = v59;
          v79[1] = AKAppleAccountConsentVersionKey;
          v80[1] = v58;
          v8 = [NSDictionary dictionaryWithObjects:v80 forKeys:v79 count:2];
          v9 = v63;
          v63 = v8;
          _objc_release(v9);
          v67 = 0;
        }

        else
        {
LABEL_22:
          v57 = _AKLogSystem();
          v56 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            sub_1000194D4(v81, v72);
            _os_log_error_impl(&_mh_execute_header, v57, v56, "Privacy consent dictionary missing required keys: %@", v81, 0xCu);
          }

          objc_storeStrong(&v57, 0);
          if (v70)
          {
            v20 = v70;
            v21 = [NSError ak_errorWithCode:-7054];
            v20[2](v20, 0);
            _objc_release(v21);
          }

          v67 = 1;
        }

        objc_storeStrong(&v58, 0);
        objc_storeStrong(&v59, 0);
      }

      else
      {
        oslog = _AKLogSystem();
        v60 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          sub_1000194D4(v82, v72);
          _os_log_error_impl(&_mh_execute_header, oslog, v60, "Privacy consent configuration info must be a dictionary: %@", v82, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        if (v70)
        {
          v26 = v70;
          v27 = [NSError ak_errorWithCode:-7054];
          v26[2](v26, 0);
          _objc_release(v27);
        }

        v67 = 1;
      }

      objc_storeStrong(&v62, 0);
      if (!v67)
      {
LABEL_30:
        v55 = 0;
        v53 = 0;
        v19 = [NSPropertyListSerialization dataWithPropertyList:v63 format:200 options:0 error:&v53];
        objc_storeStrong(&v55, v53);
        v54 = v19;
        if (v55)
        {
          v52 = _AKLogSystem();
          v51 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            sub_1000194D4(v78, v55);
            _os_log_error_impl(&_mh_execute_header, v52, v51, "Failed to serialize configuration info: %@", v78, 0xCu);
          }

          objc_storeStrong(&v52, 0);
          if (v70)
          {
            v17 = v70;
            v18 = [NSError ak_errorWithCode:-7054 underlyingError:v55];
            v17[2](v17, 0);
            _objc_release(v18);
          }

          v67 = 1;
        }

        else
        {
          v50 = [v54 base64EncodedStringWithOptions:0];
          if (v50)
          {
            v46 = [AKUserConfigController _requestProvider:v75 client:"_requestProvider:client:dataCenter:urlBagKey:" dataCenter:location[0] urlBagKey:v73];
            v76 = v71;
            v77 = v50;
            v11 = [NSDictionary dictionaryWithObjects:&v77 forKeys:&v76 count:1];
            [v46 setAuthKitBody:?];
            _objc_release(v11);
            v10 = [AKServiceControllerImpl alloc];
            v45 = [(AKServiceControllerImpl *)v10 initWithRequestProvider:v46];
            v12 = v45;
            v38 = _NSConcreteStackBlock;
            v39 = -1073741824;
            v40 = 0;
            v41 = sub_1000E7370;
            v42 = &unk_100321898;
            v44 = _objc_retain(v70);
            v43 = _objc_retain(location[0]);
            [(AKServiceControllerImpl *)v12 executeRequestWithCompletion:&v38];
            objc_storeStrong(&v43, 0);
            objc_storeStrong(&v44, 0);
            objc_storeStrong(&v45, 0);
            objc_storeStrong(&v46, 0);
            v67 = 0;
          }

          else
          {
            v49 = _AKLogSystem();
            v48 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              v15 = v49;
              v16 = v48;
              sub_10001CEEC(v47);
              _os_log_error_impl(&_mh_execute_header, v15, v16, "Failed to encode configuration info!", v47, 2u);
            }

            objc_storeStrong(&v49, 0);
            if (v70)
            {
              v13 = v70;
              v14 = [NSError ak_errorWithCode:-7054];
              v13[2](v13, 0);
              _objc_release(v14);
            }

            v67 = 1;
          }

          objc_storeStrong(&v50, 0);
        }

        objc_storeStrong(&v54, 0);
        objc_storeStrong(&v55, 0);
      }

      objc_storeStrong(&v63, 0);
    }

    else
    {
      v66 = _AKLogSystem();
      v65 = 16;
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        v30 = v66;
        v31 = v65;
        sub_10001CEEC(v64);
        _os_log_error_impl(&_mh_execute_header, v30, v31, "Missing parameter altDSID!", v64, 2u);
      }

      objc_storeStrong(&v66, 0);
      if (v70)
      {
        v28 = v70;
        v29 = [NSError ak_errorWithCode:-7025];
        v28[2](v28, 0);
        _objc_release(v29);
      }

      v67 = 1;
    }
  }

  else
  {
    v69 = _AKLogSystem();
    v68 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v83, v71);
      _os_log_error_impl(&_mh_execute_header, v69, v68, "Invalid configurationInfo identifier provided: %@", v83, 0xCu);
    }

    objc_storeStrong(&v69, 0);
    if (v70)
    {
      v32 = v70;
      v33 = [NSError ak_errorWithCode:-7053];
      v32[2](v32, 0);
      _objc_release(v33);
    }

    v67 = 1;
  }

  objc_storeStrong(&v70, 0);
  objc_storeStrong(&v71, 0);
  objc_storeStrong(&v72, 0);
  objc_storeStrong(&v73, 0);
  objc_storeStrong(location, 0);
}

- (void)setPrivacyConsentForAltDSID:(id)a3 client:(id)a4 value:(id)a5 version:(id)a6 completion:(id)a7
{
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = 0;
  objc_storeStrong(&v23, a4);
  v22 = 0;
  objc_storeStrong(&v22, a5);
  v21 = 0;
  objc_storeStrong(&v21, a6);
  v20 = 0;
  objc_storeStrong(&v20, a7);
  if (v22 && v21 && [v22 length] && objc_msgSend(v21, "length"))
  {
    v26[0] = AKAppleAccountConsentValueKey;
    v27[0] = v22;
    v26[1] = AKAppleAccountConsentVersionKey;
    v27[1] = v21;
    v15 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
    [(AKUserConfigController *)v25 setUserConfigForAltDSID:location[0] client:v23 configurationInfo:v15 forIdentifier:AKAppleAccountPrivacyConsentKey completion:v20];
    objc_storeStrong(&v15, 0);
    v16 = 0;
  }

  else
  {
    v19 = _AKLogSystem();
    v18 = 16;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      log = v19;
      type = v18;
      sub_10001CEEC(v17);
      _os_log_error_impl(&_mh_execute_header, log, type, "Privacy consent value and version are required and cannot be empty", v17, 2u);
    }

    objc_storeStrong(&v19, 0);
    if (v20)
    {
      v7 = v20;
      v8 = [NSError ak_errorWithCode:-7054];
      v7[2](v7, 0);
      _objc_release(v8);
    }

    v16 = 1;
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

- (void)updateUserConfigForAltDSID:(id)a3 configurationInfo:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5 = [(AKAccountManager *)v8->_accountManager authKitAccountWithAltDSID:location[0] error:0];
  [(AKUserConfigController *)v8 updateUserConfigForAccount:v5 configurationInfo:v6];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)updateUserConfigForAccount:(id)a3 configurationInfo:(id)a4
{
  v34 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v32 = 0;
  objc_storeStrong(&v32, a4);
  v31 = 0;
  if (location[0])
  {
    v4 = [(AKUserConfigController *)v34 _userConfigChangeNotificationDictionaryForAccount:location[0] configurationInfo:v32];
    v5 = v31;
    v31 = v4;
    _objc_release(v5);
    if ([v31 count])
    {
      v26 = 0;
      memset(__b, 0, sizeof(__b));
      v12 = _objc_retain(v31);
      v13 = [v12 countByEnumeratingWithState:__b objects:v37 count:16];
      if (v13)
      {
        v9 = *__b[2];
        v10 = 0;
        v11 = v13;
        while (1)
        {
          v8 = v10;
          if (*__b[2] != v9)
          {
            objc_enumerationMutation(v12);
          }

          v25 = *(__b[1] + 8 * v10);
          v23 = [v31 objectForKeyedSubscript:v25];
          [(AKAccountManager *)v34->_accountManager setConfigValue:v23 forKey:v25 forAccount:location[0]];
          v26 = 1;
          objc_storeStrong(&v23, 0);
          ++v10;
          if (v8 + 1 >= v11)
          {
            v10 = 0;
            v11 = [v12 countByEnumeratingWithState:__b objects:v37 count:16];
            if (!v11)
            {
              break;
            }
          }
        }
      }

      _objc_release(v12);
      v22 = 0;
      v21 = 0;
      if (v26)
      {
        accountManager = v34->_accountManager;
        v20 = v21;
        v7 = [(AKAccountManager *)accountManager saveAccount:location[0] error:&v20];
        objc_storeStrong(&v21, v20);
        v22 = v7;
        oslog = _AKLogSystem();
        v18 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          sub_100091F70(v36, v22 & 1, v21);
          _os_log_impl(&_mh_execute_header, oslog, v18, "Did Configuration info save to account: %{BOOL}d with error: %@", v36, 0x12u);
        }

        objc_storeStrong(&oslog, 0);
      }

      v17 = _AKLogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000194D4(v35, v31);
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Updated User Configs %@", v35, 0xCu);
      }

      objc_storeStrong(&v17, 0);
      objc_storeStrong(&v21, 0);
    }

    v27 = 0;
  }

  else
  {
    v30 = _AKLogSystem();
    v29 = 16;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      log = v30;
      type = v29;
      sub_10001CEEC(v28);
      _os_log_error_impl(&_mh_execute_header, log, type, "Can't save configuration into a nil account", v28, 2u);
    }

    objc_storeStrong(&v30, 0);
    v27 = 1;
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(location, 0);
}

- (void)processPushMessage:(id)a3
{
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] command] == 1400)
  {
    v27 = _AKLogSystem();
    v26 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      log = v27;
      type = v26;
      sub_10001CEEC(v25);
      _os_log_impl(&_mh_execute_header, log, type, "Handling push in config controller with command AKPushMessageCommandAccountInfoChanged...", v25, 2u);
    }

    objc_storeStrong(&v27, 0);
    v15 = [location[0] userInfo];
    v24 = [v15 objectForKeyedSubscript:@"userinfodata"];
    _objc_release(v15);
    v23 = 0;
    v22 = 0;
    v21 = 0;
    if (v24)
    {
      v3 = [v24 objectForKeyedSubscript:AKConfigDataVersion];
      v4 = v23;
      v23 = v3;
      _objc_release(v4);
      if (v23)
      {
        accountManager = v29->_accountManager;
        v14 = [location[0] altDSID];
        v5 = [AKAccountManager authKitAccountWithAltDSID:"authKitAccountWithAltDSID:error:" error:?];
        v6 = v22;
        v22 = v5;
        _objc_release(v6);
        _objc_release(v14);
        v7 = [(AKAccountManager *)v29->_accountManager configDataVersionForAccount:v22];
        v8 = v21;
        v21 = v7;
        _objc_release(v8);
      }
    }

    if (v23 && !sub_1000E827C(v23, v21))
    {
      v9 = [location[0] eventDetails];
      v20 = [v9 objectForKeyedSubscript:@"dataCenter"];
      _objc_release(v9);
      v19 = os_transaction_create();
      v10 = v29;
      v12 = [location[0] altDSID];
      v30 = AKAllConfigsKey;
      v11 = [NSArray arrayWithObjects:&v30 count:1];
      v18 = _objc_retain(v19);
      [AKUserConfigController fetchUserConfigForAltDSID:v10 client:"fetchUserConfigForAltDSID:client:dataCenter:forIdentifiers:completion:" dataCenter:v12 forIdentifiers:? completion:?];
      _objc_release(v11);
      _objc_release(v12);
      objc_storeStrong(&v18, 0);
      objc_storeStrong(&v19, 0);
      objc_storeStrong(&v20, 0);
    }

    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
  }

  objc_storeStrong(location, 0);
}

- (id)_requestProvider:(id)a3 client:(id)a4 dataCenter:(id)a5 urlBagKey:(id)a6
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = 0;
  objc_storeStrong(&v15, a5);
  v14 = 0;
  objc_storeStrong(&v14, a6);
  v13 = objc_alloc_init(AKAppleIDAuthenticationContext);
  [v13 setAltDSID:location[0]];
  v6 = [AKGrandSlamRequestProvider alloc];
  v12 = [(AKURLRequestProviderImpl *)v6 initWithContext:v13 urlBagKey:v14];
  [(AKURLRequestProviderImpl *)v12 setClient:v16];
  [(AKGrandSlamRequestProvider *)v12 setAuthenticatedRequest:1];
  [(AKURLRequestProviderImpl *)v12 setDataCenterIdentifier:v15];
  v11 = _objc_retain(v12);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);

  return v11;
}

- (id)_decodeConfigurationInfo:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = [location[0] objectForKeyedSubscript:@"cd"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [AKAuthenticationServerResponse decodedConfigurationInfo:v11];
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v7 allKeys];
      sub_1000194D4(v14, v5);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Fetch configuration info completed with keys: %@", v14, 0xCu);
      _objc_release(v5);
    }

    objc_storeStrong(&oslog, 0);
    v13 = _objc_retain(v7);
    v8 = 1;
    objc_storeStrong(&v7, 0);
  }

  else
  {
    v10 = _AKLogSystem();
    v9 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10001B098(v15, @"cd", v11);
      _os_log_error_impl(&_mh_execute_header, v10, v9, "Invalid key %@ in server response: %@", v15, 0x16u);
    }

    objc_storeStrong(&v10, 0);
    v13 = 0;
    v8 = 1;
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  v3 = v13;

  return v3;
}

- (id)_userConfigChangeNotificationDictionaryForAccount:(id)a3 configurationInfo:(id)a4
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = +[NSMutableDictionary dictionary];
  memset(__b, 0, sizeof(__b));
  v11 = _objc_retain(v18);
  v12 = [v11 countByEnumeratingWithState:__b objects:v21 count:16];
  if (v12)
  {
    v7 = *__b[2];
    v8 = 0;
    v9 = v12;
    while (1)
    {
      v6 = v8;
      if (*__b[2] != v7)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(__b[1] + 8 * v8);
      v14 = [v18 objectForKeyedSubscript:v16];
      v13 = [(AKAccountManager *)v20->_accountManager configValue:v16 forAccount:location[0]];
      if (v14 && !sub_1000E827C(v14, v13))
      {
        [v17 setObject:v14 forKeyedSubscript:v16];
      }

      objc_storeStrong(&v13, 0);
      objc_storeStrong(&v14, 0);
      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [v11 countByEnumeratingWithState:__b objects:v21 count:16];
        if (!v9)
        {
          break;
        }
      }
    }
  }

  _objc_release(v11);
  v5 = [v17 copy];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);

  return v5;
}

@end