@interface AKSecurePakeManager
+ (AKSecurePakeManager)sharedManager;
- (AKSecurePakeManager)initWithAccountManager:(id)a3 pushHelperService:(id)a4 keychainManager:(id)a5;
- (BOOL)clearSharedKeyWithError:(id *)a3;
- (BOOL)updateSharedKey:(id)a3 error:(id *)a4;
- (id)_newSecurePakeControllerForMessage:(id)a3 error:(id *)a4;
- (id)_primaryAccountAltDSIDWithError:(id *)a3;
- (id)_securePakeControllerForMessage:(id)a3 error:(id *)a4;
- (id)_sharedKeyKeychainDescriptorWithAltDSID:(id)a3;
- (id)createRandomSharedKey;
- (id)fetchSharedKeyWithError:(id *)a3;
- (void)_postSharedKeyChangeNotification;
- (void)_processSecurePakeMessage:(id)a3;
- (void)_requestUserPermissionWithContext:(id)a3 completionHandler:(id)a4;
- (void)_showCodeWithContext:(id)a3 completionHandler:(id)a4;
- (void)didReceiveNewPublicToken:(id)a3;
- (void)processPushMessage:(id)a3;
@end

@implementation AKSecurePakeManager

- (AKSecurePakeManager)initWithAccountManager:(id)a3 pushHelperService:(id)a4 keychainManager:(id)a5
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = 0;
  objc_storeStrong(&v11, a5);
  v5 = v14;
  v14 = 0;
  v10.receiver = v5;
  v10.super_class = AKSecurePakeManager;
  v14 = [(AKSecurePakeManager *)&v10 init];
  objc_storeStrong(&v14, v14);
  if (v14)
  {
    objc_storeStrong(&v14->_accountManager, location[0]);
    objc_storeStrong(&v14->_pushHelperService, v12);
    objc_storeStrong(&v14->_keychainManager, v11);
  }

  v7 = _objc_retain(v14);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v14, 0);
  return v7;
}

+ (AKSecurePakeManager)sharedManager
{
  v5 = &unk_100374710;
  location = 0;
  objc_storeStrong(&location, &stru_100321310);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100374708;

  return v2;
}

- (void)processPushMessage:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] command] == 2300)
  {
    v7 = 0;
    obj = 0;
    v3 = [AKSecurePakeMessage securePakeMessageFromPush:location[0] error:&obj];
    objc_storeStrong(&v7, obj);
    v6 = v3;
    if (v3)
    {
      [(AKSecurePakeManager *)v12 _processSecurePakeMessage:v6];
    }

    else
    {
      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_10001B098(v13, location[0], v7);
        _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Failed to deserialize push message (%@) into pake message with error: %@", v13, 0x16u);
      }

      objc_storeStrong(&oslog, 0);
    }

    objc_storeStrong(&v6, 0);
    objc_storeStrong(&v7, 0);
    v8 = 0;
  }

  else
  {
    v10 = _AKLogSystem();
    v9 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v14, location[0]);
      _os_log_debug_impl(&_mh_execute_header, v10, v9, "Determined should not process non-SPAKE2+ push command: %@", v14, 0xCu);
    }

    objc_storeStrong(&v10, 0);
    v8 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)_processSecurePakeMessage:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  v11 = 0;
  v3 = [(AKSecurePakeManager *)v15 _securePakeControllerForMessage:location[0] error:&v11];
  objc_storeStrong(&v13, v11);
  v12 = v3;
  v4 = location[0];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10008202C;
  v9 = &unk_100320EA0;
  v10 = _objc_retain(location[0]);
  [v3 processMessage:v4 completionHandler:?];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (id)_securePakeControllerForMessage:(id)a3 error:(id *)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = a4;
  v14 = [location[0] messageStep] == 0;
  if (!v17->_securePakeController || v14)
  {
    v13 = 0;
    obj = 0;
    v9 = [(AKSecurePakeManager *)v17 _newSecurePakeControllerForMessage:location[0] error:&obj];
    objc_storeStrong(&v13, obj);
    securePakeController = v17->_securePakeController;
    v17->_securePakeController = v9;
    _objc_release(securePakeController);
    if (v13)
    {
      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v18, v13);
        _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Failed to make new secure pake controller with error: %@", v18, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      if (v15)
      {
        v8 = v13;
        v5 = v13;
        *v15 = v8;
      }
    }

    objc_storeStrong(&v13, 0);
  }

  v7 = _objc_retain(v17->_securePakeController);
  objc_storeStrong(location, 0);

  return v7;
}

- (id)_newSecurePakeControllerForMessage:(id)a3 error:(id *)a4
{
  v61 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v59 = a4;
  v22 = [(AKSecurePakeManager *)v61 accountManager];
  v20 = [location[0] altDSID];
  v21 = [(AKAccountManager *)v22 hasPrimaryiCloudAccountForAltDSID:?];
  _objc_release(v20);
  _objc_release(v22);
  v58 = v21;
  if (v21)
  {
    devicePushToken = v61->_devicePushToken;
    v52 = 0;
    v50 = 0;
    if (devicePushToken)
    {
      v5 = _objc_retain(devicePushToken);
    }

    else
    {
      v53 = [(AKSecurePakeManager *)v61 pushHelperService];
      v52 = 1;
      v51 = [(AKAppleIDPushHelperService *)v53 publicAPSTokenString];
      v50 = 1;
      v5 = _objc_retain(v51);
    }

    v54 = v5;
    if (v50)
    {
      _objc_release(v51);
    }

    if (v52)
    {
      _objc_release(v53);
    }

    if (v54)
    {
      objc_initWeak(&from, v61);
      v40 = _NSConcreteStackBlock;
      v41 = -1073741824;
      v42 = 0;
      v43 = sub_100082C38;
      v44 = &unk_100321338;
      objc_copyWeak(&v45, &from);
      v46 = objc_retainBlock(&v40);
      v33 = _NSConcreteStackBlock;
      v34 = -1073741824;
      v35 = 0;
      v36 = sub_100082DC8;
      v37 = &unk_100321338;
      objc_copyWeak(&v38, &from);
      v39 = objc_retainBlock(&v33);
      v15 = [AKSecurePakeContext alloc];
      v14 = [location[0] altDSID];
      v12 = [location[0] sessionID];
      v13 = v54;
      sub_100069A2C(v31, qword_10029BE88);
      if (v15)
      {
        v11 = [(AKSecurePakeContext *)v15 initWithAltDSID:v14 sessionID:v12 devicePushToken:v13 sessionEntropy:v31[0], v31[1]];
      }

      else
      {
        sub_100069A94(v31);
        v11 = 0;
      }

      v32 = v11;
      _objc_release(v12);
      _objc_release(v14);
      v10 = [AKSecurePakeAcceptingEngine alloc];
      v30 = [(AKSecurePakeAcceptingEngine *)v10 initWithContext:v32 userPermissionBlock:v46 showCodeBlock:v39];
      v9 = [AKSecurePakeController alloc];
      v8 = v30;
      v24 = _NSConcreteStackBlock;
      v25 = -1073741824;
      v26 = 0;
      v27 = sub_100082F58;
      v28 = &unk_100321360;
      v29 = _objc_retain(v61);
      v62 = [(AKSecurePakeController *)v9 initWithEngine:v8 completionHandler:&v24];
      objc_storeStrong(&v29, 0);
      v55 = 1;
      objc_storeStrong(&v30, 0);
      objc_storeStrong(&v32, 0);
      objc_storeStrong(&v39, 0);
      objc_destroyWeak(&v38);
      objc_storeStrong(&v46, 0);
      objc_destroyWeak(&v45);
      objc_destroyWeak(&from);
    }

    else
    {
      v49 = _AKLogSystem();
      v48 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v17 = [(AKSecurePakeManager *)v61 pushHelperService];
        sub_1000194D4(v63, v17);
        _os_log_error_impl(&_mh_execute_header, v49, v48, "Failed to get device push token from %@", v63, 0xCu);
        _objc_release(v17);
      }

      objc_storeStrong(&v49, 0);
      if (v59)
      {
        v16 = [NSError ak_errorWithCode:-7041];
        v6 = v16;
        *v59 = v16;
      }

      v62 = 0;
      v55 = 1;
    }

    objc_storeStrong(&v54, 0);
  }

  else
  {
    v57 = _AKLogSystem();
    v56 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v64, location[0]);
      _os_log_error_impl(&_mh_execute_header, v57, v56, "Failed to create new secure pake controller for message: %@ due to non primary account", v64, 0xCu);
    }

    objc_storeStrong(&v57, 0);
    if (v59)
    {
      v19 = [NSError ak_errorWithCode:-7055];
      v4 = v19;
      *v59 = v19;
    }

    v62 = 0;
    v55 = 1;
  }

  objc_storeStrong(location, 0);
  return v62;
}

- (void)didReceiveNewPublicToken:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_10001B098(v6, v5, location[0]);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "%@: Received new device push token: %@", v6, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&v5->_devicePushToken, location[0]);
  objc_storeStrong(location, 0);
}

- (void)_requestUserPermissionWithContext:(id)a3 completionHandler:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  if (v5)
  {
    (*(v5 + 2))(v5, 1, 0);
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)_showCodeWithContext:(id)a3 completionHandler:(id)a4
{
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = 0;
  objc_storeStrong(&v26, a4);
  v14 = [location[0] currentPushMessage];
  _objc_release(v14);
  if (v14)
  {
    v22[0] = [location[0] sessionEntropy];
    v22[1] = v4;
    v11 = v4;
    sub_100069A94(v22);
    if (v11)
    {
      v19 = _AKLogSystem();
      v18 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000194D4(v29, location[0]);
        _os_log_impl(&_mh_execute_header, v19, v18, "Showing SPAKE2+ code with context: %@", v29, 0xCu);
      }

      objc_storeStrong(&v19, 0);
      v16[0] = [location[0] sessionEntropy];
      v16[1] = v5;
      v17 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v5 longLongValue]);
      sub_100069A94(v16);
      v7 = [(AKSecurePakeManager *)v28 pushHelperService];
      v8 = v17;
      v6 = [location[0] currentPushMessage];
      [(AKAppleIDPushHelperService *)v7 showPigCode:v8 withIncomingMessage:?];
      _objc_release(v6);
      _objc_release(v7);
      if (v26)
      {
        (*(v26 + 2))(v26, 1, 0);
      }

      objc_storeStrong(&v17, 0);
      v23 = 0;
    }

    else
    {
      v21 = _AKLogSystem();
      v20 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v30, location[0]);
        _os_log_error_impl(&_mh_execute_header, v21, v20, "Cannot show empty code for context: %@", v30, 0xCu);
      }

      objc_storeStrong(&v21, 0);
      if (v26)
      {
        v10 = v26;
        v9 = [NSError ak_errorWithCode:-7001];
        v10[2](v10, 0);
        _objc_release(v9);
      }

      v23 = 1;
    }
  }

  else
  {
    v25 = _AKLogSystem();
    v24 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v31, location[0]);
      _os_log_error_impl(&_mh_execute_header, v25, v24, "Cannot show code for an empty push message: %@", v31, 0xCu);
    }

    objc_storeStrong(&v25, 0);
    if (v26)
    {
      v13 = v26;
      v12 = [NSError ak_errorWithCode:-7001];
      v13[2](v13, 0);
      _objc_release(v12);
    }

    v23 = 1;
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

- (void)_postSharedKeyChangeNotification
{
  oslog[2] = &self->super;
  oslog[1] = a2;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v3, AKSharedKeyChangeNotification);
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "AKSecurePakeManager - Posting %@ notification.", v3, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  notify_post([AKSharedKeyChangeNotification UTF8String]);
}

- (id)fetchSharedKeyWithError:(id *)a3
{
  v29 = self;
  v28 = a2;
  v27 = a3;
  if (self->_sharedKey)
  {
    v30 = _objc_retain(v29->_sharedKey);
  }

  else
  {
    v26 = [(AKSecurePakeManager *)v29 _primaryAccountAltDSIDWithError:v27];
    if (*v27)
    {
      location = _AKLogSystem();
      v24 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
      {
        sub_1000831E0(v32, *v27);
        _os_log_debug_impl(&_mh_execute_header, location, v24, "AKSecurePakeManager - Fetching shared key failed with error - %{private}@", v32, 0xCu);
      }

      objc_storeStrong(&location, 0);
      v30 = 0;
      v23 = 1;
    }

    else
    {
      v22 = [(AKSecurePakeManager *)v29 _sharedKeyKeychainDescriptorWithAltDSID:v26];
      v21 = 0;
      keychainManager = v29->_keychainManager;
      v19 = 0;
      v10 = [(AAFKeychainManager *)keychainManager keychainItemForDescriptor:v22 error:&v19];
      objc_storeStrong(&v21, v19);
      v20 = v10;
      v18 = [v10 value];
      v16 = 0;
      v11 = 0;
      if ([v21 code] == -25300)
      {
        v17 = [v21 domain];
        v16 = 1;
        v11 = [v17 isEqualToString:NSOSStatusErrorDomain];
      }

      if (v16)
      {
        _objc_release(v17);
      }

      if (v11)
      {
        v30 = 0;
        v23 = 1;
      }

      else
      {
        v15 = 0;
        v4 = objc_opt_class();
        obj = v15;
        v9 = [NSKeyedUnarchiver unarchivedObjectOfClass:v4 fromData:v18 error:&obj];
        objc_storeStrong(&v15, obj);
        v14 = v9;
        if (v9)
        {
          v30 = _objc_retain(v14);
          v23 = 1;
        }

        else
        {
          oslog = _AKLogSystem();
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            sub_1000194D4(v31, v15);
            _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "AKSecurePakeManager - Shared key keychain fetch failed - unable to unarchive token data with error: %@", v31, 0xCu);
          }

          objc_storeStrong(&oslog, 0);
          if (v27)
          {
            v8 = v15;
            v5 = v15;
            *v27 = v8;
          }

          v30 = 0;
          v23 = 1;
        }

        objc_storeStrong(&v14, 0);
        objc_storeStrong(&v15, 0);
      }

      objc_storeStrong(&v18, 0);
      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v21, 0);
      objc_storeStrong(&v22, 0);
    }

    objc_storeStrong(&v26, 0);
  }

  v6 = v30;

  return v6;
}

- (BOOL)updateSharedKey:(id)a3 error:(id *)a4
{
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v27 = a4;
  v26 = [(AKSecurePakeManager *)v29 _primaryAccountAltDSIDWithError:a4];
  if (*a4)
  {
    v25 = _AKLogSystem();
    v24 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      sub_1000831E0(v33, *v27);
      _os_log_debug_impl(&_mh_execute_header, v25, v24, "AKSecurePakeManager - Updating shared key failed with error - %{private}@", v33, 0xCu);
    }

    objc_storeStrong(&v25, 0);
    v30 = 0;
    v23 = 1;
  }

  else
  {
    v22 = 0;
    v20 = 0;
    v11 = [NSKeyedArchiver archivedDataWithRootObject:location[0] requiringSecureCoding:1 error:&v20];
    objc_storeStrong(&v22, v20);
    v21 = v11;
    if (v11)
    {
      v17 = [(AKSecurePakeManager *)v29 _sharedKeyKeychainDescriptorWithAltDSID:v26];
      v5 = [AAFKeychainItem alloc];
      v16 = [v5 initWithDescriptor:v17 value:v21];
      v15 = 0;
      keychainManager = v29->_keychainManager;
      obj = 0;
      [(AAFKeychainManager *)keychainManager addOrUpdateKeychainItem:v16 error:&obj];
      objc_storeStrong(&v15, obj);
      if (v15)
      {
        oslog = _AKLogSystem();
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
        {
          sub_1000194D4(v31, v15);
          _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "AKSecurePakeManager - Shared key keychain update failed with error: %@.", v31, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        if (v27)
        {
          v9 = v15;
          v7 = v15;
          *v27 = v9;
        }

        v30 = 0;
        v23 = 1;
      }

      else
      {
        objc_storeStrong(&v29->_sharedKey, location[0]);
        [(AKSecurePakeManager *)v29 _postSharedKeyChangeNotification];
        v30 = 1;
        v23 = 1;
      }

      objc_storeStrong(&v15, 0);
      objc_storeStrong(&v16, 0);
      objc_storeStrong(&v17, 0);
    }

    else
    {
      v19 = _AKLogSystem();
      v18 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v32, v22);
        _os_log_error_impl(&_mh_execute_header, v19, v18, "AKSecurePakeManager - Shared key keychain update failed - unable to generate archived data from token with error: %@", v32, 0xCu);
      }

      objc_storeStrong(&v19, 0);
      if (v27)
      {
        v10 = v22;
        v4 = v22;
        *v27 = v10;
      }

      v30 = 0;
      v23 = 1;
    }

    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v22, 0);
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  return v30 & 1;
}

- (BOOL)clearSharedKeyWithError:(id *)a3
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  v9 = [(AKSecurePakeManager *)self _primaryAccountAltDSIDWithError:a3];
  if (*v10)
  {
    oslog = _AKLogSystem();
    type = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_1000831E0(v15, *v10);
      _os_log_debug_impl(&_mh_execute_header, oslog, type, "AKSecurePakeManager - Clearing shared key failed with error - %{private}@", v15, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v13 = 0;
    v6 = 1;
  }

  else
  {
    location = [(AKSecurePakeManager *)v12 _sharedKeyKeychainDescriptorWithAltDSID:v9];
    [(AAFKeychainManager *)v12->_keychainManager deleteKeychainItemsForDescriptor:location error:v10];
    if (*v10)
    {
      v4 = _AKLogSystem();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        sub_1000194D4(v14, *v10);
        _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "AKSecurePakeManager - Shared key keychain delete failed with error: %@", v14, 0xCu);
      }

      objc_storeStrong(&v4, 0);
      v13 = 0;
      v6 = 1;
    }

    else
    {
      objc_storeStrong(&v12->_sharedKey, 0);
      v13 = 1;
      v6 = 1;
    }

    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(&v9, 0);
  return v13 & 1;
}

- (id)createRandomSharedKey
{
  v35 = self;
  v34 = a2;
  v33 = v5;
  v19 = v5 - ((qword_100370BD8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = qword_100370BD8;
  v31 = SecRandomCopyBytes(kSecRandomDefault, qword_100370BD8, v19);
  if (v31)
  {
    location = _AKLogSystem();
    v29 = 16;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      v16 = location;
      v17 = v29;
      v18 = v39;
      sub_10006A654(v39, v31);
      _os_log_error_impl(&_mh_execute_header, v16, v17, "AKSecurePakeManager - Failed to SecRandomCopyBytes with result: %d", v18, 8u);
    }

    v15 = 0;
    objc_storeStrong(&location, 0);
    v36 = v15;
    v28 = 1;
  }

  else
  {
    v27 = [NSData dataWithBytes:v19 length:qword_100370BD8];
    v26 = _AKLogSystem();
    v25 = 2;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v12 = v26;
      v13 = v25;
      v14 = v38;
      sub_10006A68C(v38, qword_100370BD8, 1752392040, v27);
      _os_log_debug_impl(&_mh_execute_header, v12, v13, "AKSecurePakeManager - Generated new secure shared key of length %lu: %{mask.hash}@", v14, 0x20u);
    }

    v11 = 0;
    objc_storeStrong(&v26, 0);
    v24 = v11;
    v2 = [AKSymmetricKey alloc];
    v23 = [v2 initWithKeyData:v27 keySpecifier:v11 keyDomain:?];
    v22 = v24;
    [(AKSecurePakeManager *)v35 updateSharedKey:v23 error:&v22];
    objc_storeStrong(&v24, v22);
    if (v24)
    {
      v21 = _AKLogSystem();
      v20 = 16;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v8 = v21;
        v9 = v20;
        v10 = v37;
        sub_1000831E0(v37, v24);
        _os_log_error_impl(&_mh_execute_header, v8, v9, "AKSecurePakeManager - Failed to create shared key with error: %{private}@", v10, 0xCu);
      }

      v7 = 0;
      objc_storeStrong(&v21, 0);
      v36 = v7;
      v28 = 1;
    }

    else
    {
      v36 = [v27 base64EncodedStringWithOptions:0];
      v28 = 1;
    }

    v6 = 0;
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, v6);
    objc_storeStrong(&v27, v6);
  }

  v5[1] = v36;
  v3 = v36;

  return v3;
}

- (id)_sharedKeyKeychainDescriptorWithAltDSID:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = objc_alloc_init(AAFKeychainItemDescriptor);
  [v7 setItemClass:?];
  [v7 setItemAccessible:?];
  [v7 setInvisible:2];
  [v7 setSynchronizable:1];
  [v7 setUseDataProtection:2];
  v6 = [NSString stringWithFormat:@"%@.%@", @"com.apple.ak.securepake", location[0]];
  [v7 setService:v6];
  [v7 setAccount:@"com.apple.ak.securepake.sharedkey"];
  [v7 setLabel:location[0]];
  v5 = _AKLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v9, v6);
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "AKSecurePakeManager - KeychainDescriptorService:%@", v9, 0xCu);
  }

  objc_storeStrong(&v5, 0);
  v4 = _objc_retain(v7);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_primaryAccountAltDSIDWithError:(id *)a3
{
  v15 = self;
  v14 = a2;
  v13 = a3;
  v12 = [(AKAccountManager *)self->_accountManager altDSIDforPrimaryiCloudAccount];
  if (!v12)
  {
    v11 = [NSError ak_errorWithCode:-7025];
    if (v13)
    {
      v3 = v11;
      *v13 = v11;
    }

    location = _AKLogSystem();
    v9 = 16;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      log = location;
      type = v9;
      sub_10001CEEC(v8);
      _os_log_error_impl(&_mh_execute_header, log, type, "AKSecurePakeManager - Missing altDSID", v8, 2u);
    }

    objc_storeStrong(&location, 0);
    objc_storeStrong(&v11, 0);
  }

  v5 = _objc_retain(v12);
  objc_storeStrong(&v12, 0);

  return v5;
}

@end