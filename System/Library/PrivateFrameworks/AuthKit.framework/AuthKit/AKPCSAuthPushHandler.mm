@interface AKPCSAuthPushHandler
- (AKPCSAuthPushHandler)initWithAccountManager:(id)a3 webSessionPCSKeyProvider:(id)a4;
- (BOOL)_isPrimaryAccountAltDSID:(id)a3;
- (double)_safeTTL:(double)a3;
- (id)_teardownPayloadWithPushMessage:(id)a3 isArmed:(BOOL)a4;
- (void)armDeviceWithPCSAuthorizationContextForMessage:(id)a3 completion:(id)a4;
@end

@implementation AKPCSAuthPushHandler

- (AKPCSAuthPushHandler)initWithAccountManager:(id)a3 webSessionPCSKeyProvider:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v4 = v11;
  v11 = 0;
  v8.receiver = v4;
  v8.super_class = AKPCSAuthPushHandler;
  v11 = [(AKPCSAuthPushHandler *)&v8 init];
  objc_storeStrong(&v11, v11);
  if (v11)
  {
    objc_storeStrong(&v11->_accountManager, location[0]);
    objc_storeStrong(&v11->_webSessionKeyProvider, v9);
  }

  v6 = _objc_retain(v11);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v6;
}

- (void)armDeviceWithPCSAuthorizationContextForMessage:(id)a3 completion:(id)a4
{
  v48 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v46 = 0;
  objc_storeStrong(&v46, a4);
  v22 = [location[0] webSessionUUID];
  v44 = 0;
  v23 = 1;
  if (v22)
  {
    v45 = [location[0] timestamp];
    v44 = 1;
    v23 = v45 == 0;
  }

  if (v44)
  {
    _objc_release(v45);
  }

  _objc_release(v22);
  if (v23)
  {
    v43 = _AKLogSystem();
    v42 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      log = v43;
      type = v42;
      sub_10001CEEC(v41);
      _os_log_impl(&_mh_execute_header, log, type, "Incoming push does not contain walrus web access info, abandoning device arming", v41, 2u);
    }

    objc_storeStrong(&v43, 0);
    (*(v46 + 2))(v46, 0, 0);
    v40 = 1;
  }

  else
  {
    v16 = v48;
    v17 = [location[0] altDSID];
    v18 = [(AKPCSAuthPushHandler *)v16 _isPrimaryAccountAltDSID:?];
    _objc_release(v17);
    if (v18)
    {
      v9 = v48;
      v10 = [location[0] ttlInMinutes];
      [v10 doubleValue];
      [(AKPCSAuthPushHandler *)v9 _safeTTL:v4 * 60.0];
      v11 = v5;
      _objc_release(v10);
      v36[1] = v11;
      v36[0] = [NSDate dateWithTimeIntervalSinceNow:*&v11];
      v12 = [AKPCSAuthContext alloc];
      v13 = [location[0] webSessionUUID];
      v35 = [v12 initWithWebSessionIdentifier:? expiryDate:? userInfo:?];
      _objc_release(v13);
      v34 = _AKLogSystem();
      v33 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v35 description];
        sub_1000194D4(v49, v8);
        _os_log_impl(&_mh_execute_header, v34, v33, "Begin arming device with context %@.", v49, 0xCu);
        _objc_release(v8);
      }

      objc_storeStrong(&v34, 0);
      webSessionKeyProvider = v48->_webSessionKeyProvider;
      v6 = v35;
      v24 = _NSConcreteStackBlock;
      v25 = -1073741824;
      v26 = 0;
      v27 = sub_100120490;
      v28 = &unk_100323DB8;
      v29 = _objc_retain(v35);
      v32 = _objc_retain(v46);
      v30 = _objc_retain(v48);
      v31 = _objc_retain(location[0]);
      [(AKWebSessionPCSKeyProvider *)webSessionKeyProvider saveContext:v6 completion:&v24];
      objc_storeStrong(&v31, 0);
      objc_storeStrong(&v30, 0);
      objc_storeStrong(&v32, 0);
      objc_storeStrong(&v29, 0);
      objc_storeStrong(&v35, 0);
      objc_storeStrong(v36, 0);
      v40 = 0;
    }

    else
    {
      v39 = _AKLogSystem();
      v38 = 16;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v14 = v39;
        v15 = v38;
        sub_10001CEEC(v37);
        _os_log_error_impl(&_mh_execute_header, v14, v15, "Arming device for PCS auth is not supported for non primary account.", v37, 2u);
      }

      objc_storeStrong(&v39, 0);
      (*(v46 + 2))(v46, 0, 0);
      v40 = 1;
    }
  }

  objc_storeStrong(&v46, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_isPrimaryAccountAltDSID:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(AKAccountManager *)v7->_accountManager altDSIDforPrimaryiCloudAccount];
  v5 = [v4 isEqualToString:location[0]];
  _objc_release(v4);
  objc_storeStrong(location, 0);
  return v5;
}

- (id)_teardownPayloadWithPushMessage:(id)a3 isArmed:(BOOL)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14[0] = @"idmsdata";
  v10 = [location[0] idmsData];
  v15[0] = v10;
  v14[1] = @"srdwa";
  v12[0] = @"wscUUID";
  v9 = [location[0] webSessionUUID];
  v13[0] = v9;
  v12[1] = @"PCSKeysArmedEligible";
  v8 = [NSNumber numberWithBool:a4];
  v13[1] = v8;
  v6 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:?];
  v15[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
  _objc_release(v6);
  _objc_release(v8);
  _objc_release(v9);
  _objc_release(v10);
  objc_storeStrong(location, 0);

  return v7;
}

- (double)_safeTTL:(double)a3
{
  v7 = self;
  v6 = a2;
  v5 = *&a3;
  if (a3 <= 3600.0)
  {
    return *&v5;
  }

  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100034384(v9, v5, 0x40AC200000000000);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Requested PCS auth TTL [%f] over max [%f]", v9, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  return 3600.0;
}

@end