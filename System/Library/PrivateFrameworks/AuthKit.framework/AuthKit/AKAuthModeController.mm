@interface AKAuthModeController
- ($1A23BB056C565A410801C90FE7234890)_authModeInfoFromResponse:(id)response;
- ($1A23BB056C565A410801C90FE7234890)_unknownAuthModeInfo;
- (BOOL)_isClientEntitledForAuthMode:(id)mode;
- (id)_authModeErrorFromError:(id)error;
- (void)_executeFetchAuthModeInfoWithContext:(id)context client:(id)client completion:(id)completion;
- (void)_saveAuthMode:(id)mode withContext:(id)context;
- (void)fetchAuthModeWithContext:(id)context client:(id)client completion:(id)completion;
@end

@implementation AKAuthModeController

- (void)fetchAuthModeWithContext:(id)context client:(id)client completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v25 = 0;
  objc_storeStrong(&v25, client);
  v24 = 0;
  objc_storeStrong(&v24, completion);
  if ([(AKAuthModeController *)selfCopy _isClientEntitledForAuthMode:v25])
  {
    v8 = selfCopy;
    v6 = location[0];
    v7 = v25;
    v13 = _NSConcreteStackBlock;
    v14 = -1073741824;
    v15 = 0;
    v16 = sub_1000E1470;
    v17 = &unk_10031F110;
    v20 = _objc_retain(v24);
    v18 = _objc_retain(selfCopy);
    v19 = _objc_retain(location[0]);
    [(AKAuthModeController *)v8 _executeFetchAuthModeInfoWithContext:v6 client:v7 completion:&v13];
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v20, 0);
    v21 = 0;
  }

  else
  {
    v9 = v24;
    _unknownAuthModeInfo = [(AKAuthModeController *)selfCopy _unknownAuthModeInfo];
    v23 = v5;
    v10 = [NSError ak_errorWithCode:-7026];
    v9[2](v9, _unknownAuthModeInfo, v23);
    _objc_release(v10);
    v21 = 1;
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_isClientEntitledForAuthMode:(id)mode
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, mode);
  if ([location[0] hasInternalPrivateAccess])
  {
    v10 = 1;
  }

  else
  {
    v8 = _AKLogSystem();
    v7 = 16;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      log = v8;
      type = v7;
      sub_10001CEEC(v6);
      _os_log_error_impl(&_mh_execute_header, log, type, "Internal/Private access entitlement required but missing!", v6, 2u);
    }

    objc_storeStrong(&v8, 0);
    v10 = 0;
  }

  objc_storeStrong(location, 0);
  return v10 & 1;
}

- ($1A23BB056C565A410801C90FE7234890)_unknownAuthModeInfo
{
  v2 = 0;
  v3 = 0;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (void)_executeFetchAuthModeInfoWithContext:(id)context client:(id)client completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v12 = 0;
  objc_storeStrong(&v12, client);
  v11 = 0;
  objc_storeStrong(&v11, completion);
  v5 = [AKAuthModeRequestProvider alloc];
  v10 = [(AKURLRequestProviderImpl *)v5 initWithContext:location[0] urlBagKey:AKURLBagKeyFetchAuthenticationMode];
  [(AKURLRequestProviderImpl *)v10 setClient:v12];
  v6 = [AKServiceControllerImpl alloc];
  v9 = [(AKServiceControllerImpl *)v6 initWithRequestProvider:v10];
  [(AKServiceControllerImpl *)v9 executeRequestWithCompletion:v11];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (id)_authModeErrorFromError:(id)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v19 = 0;
  userInfo = [location[0] userInfo];
  v18 = [userInfo objectForKeyedSubscript:AKErrorStatusCodeKey];
  _objc_release(userInfo);
  if ([v18 integerValue] == -28043)
  {
    v3 = [NSError ak_errorWithCode:-7093];
    v4 = v19;
    v19 = v3;
    _objc_release(v4);
LABEL_12:
    v14 = _AKLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v22, v19);
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Fetch user info returned apple managed account fetchError: %@", v22, 0xCu);
    }

    objc_storeStrong(&v14, 0);
    v21 = _objc_retain(v19);
    v15 = 1;
    goto LABEL_15;
  }

  if ([v18 integerValue] == -28044)
  {
    v5 = [NSError ak_errorWithCode:-7094];
    v6 = v19;
    v19 = v5;
    _objc_release(v6);
    goto LABEL_12;
  }

  if ([v18 integerValue] == -310003)
  {
    v7 = [NSError ak_errorWithCode:-7100];
    v8 = v19;
    v19 = v7;
    _objc_release(v8);
    goto LABEL_12;
  }

  if ([v18 integerValue] == -80039)
  {
    v9 = [NSError ak_errorWithCode:-7120];
    v10 = v19;
    v19 = v9;
    _objc_release(v10);
    goto LABEL_12;
  }

  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_ERROR;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    sub_1000194D4(v23, location[0]);
    _os_log_error_impl(&_mh_execute_header, oslog, type, "Fetch user info returned an unexpected error: %@", v23, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v21 = _objc_retain(location[0]);
  v15 = 1;
LABEL_15:
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  v11 = v21;

  return v11;
}

- ($1A23BB056C565A410801C90FE7234890)_authModeInfoFromResponse:(id)response
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  unsignedIntegerValue = 0;
  v12 = 0;
  v9 = [AAFSerialization dictionaryFromObject:location[0] ofType:@"application/x-plist"];
  v5 = [v9 objectForKeyedSubscript:AKAuthenticationModeKey];
  unsignedIntegerValue = [v5 unsignedIntegerValue];
  _objc_release(v5);
  v7 = 0;
  bOOLValue = 0;
  if ((+[AKFeatureManager isEnforceMDMPolicyEnabled]& 1) != 0)
  {
    v8 = [v9 objectForKeyedSubscript:AKMDMInfoRequiredKey];
    v7 = 1;
    bOOLValue = [v8 BOOLValue];
  }

  LOBYTE(v12) = bOOLValue & 1;
  if (v7)
  {
    _objc_release(v8);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  v3 = unsignedIntegerValue;
  v4 = v12;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (void)_saveAuthMode:(id)mode withContext:(id)context
{
  modeCopy = mode;
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v21 = 0;
  v19 = 0;
  v6 = [location[0] authKitAccount:&v19];
  objc_storeStrong(&v21, v19);
  v20 = v6;
  if (v21)
  {
    v18 = _AKLogSystem();
    v17 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v26, v21);
      _os_log_error_impl(&_mh_execute_header, v18, v17, "Error fetching AuthKit account %@. Skipping auth mode save.", v26, 0xCu);
    }

    objc_storeStrong(&v18, 0);
    v16 = 1;
  }

  else
  {
    if (v20)
    {
      v12 = _AKLogSystem();
      v11 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000194D4(v25, v20);
        _os_log_impl(&_mh_execute_header, v12, v11, "Saving auth mode to AuthKit account %@.", v25, 0xCu);
      }

      objc_storeStrong(&v12, 0);
      v10 = +[AKAccountManager sharedInstance];
      [v10 setAuthenticationMode:modeCopy.var0 forAccount:v20];
      v9 = 0;
      obj = 0;
      [v10 saveAccount:v20 error:&obj];
      objc_storeStrong(&v9, obj);
      if (v9)
      {
        oslog = _AKLogSystem();
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          sub_1000194D4(v24, v9);
          _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Error saving AuthKit account after updating auth mode: %@.", v24, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
      }

      objc_storeStrong(&v9, 0);
      objc_storeStrong(&v10, 0);
    }

    else
    {
      v15 = _AKLogSystem();
      v14 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v15;
        v5 = v14;
        sub_10001CEEC(v13);
        _os_log_impl(&_mh_execute_header, v4, v5, "No AuthKit account found, skipping auth mode save.", v13, 2u);
      }

      objc_storeStrong(&v15, 0);
    }

    v16 = 0;
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

@end