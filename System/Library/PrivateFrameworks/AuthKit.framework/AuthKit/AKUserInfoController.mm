@interface AKUserInfoController
+ (id)sharedController;
- (AKUserInfoController)init;
- (BOOL)_additionalInfoChangedForAccount:(id)a3 userInformation:(id)a4;
- (BOOL)_adpCohortChangedForAccount:(id)a3 userInformation:(id)a4;
- (BOOL)_authorizationPropertiesChangedForAccount:(id)a3 userInformation:(id)a4;
- (BOOL)_birthYearChangedForAccount:(id)a3 userInformation:(id)a4;
- (BOOL)_deviceListPropertiesChangedForAccount:(id)a3 userInformation:(id)a4;
- (BOOL)_idmsWalrusStatusChangedForAccount:(id)a3 userInformation:(id)a4;
- (BOOL)_loginHandlesChangedForAccount:(id)a3 userInformation:(id)a4;
- (BOOL)_managedAppleIDInfoChangedForAccount:(id)a3 userInformation:(id)a4;
- (BOOL)_passcodeAuthPropertiesChangedForAccount:(id)a3 userInformation:(id)a4;
- (BOOL)_passkeyPropertiesChangedForAccount:(id)a3 userInformation:(id)a4;
- (BOOL)_piggybackingApprovalEligibleChangedForAccount:(id)a3 userInformation:(id)a4;
- (BOOL)_securityKeysChangedForAccount:(id)a3 userInformation:(id)a4;
- (BOOL)_shouldUpdateConfigsForAltDSID:(id)a3 responseParameters:(id)a4;
- (BOOL)_trustedContactPropertiesChangedForAccount:(id)a3 userInformation:(id)a4;
- (BOOL)_trustedPhoneNumbersChangedForAccount:(id)a3 userInformation:(id)a4;
- (BOOL)_updateAccount:(id)a3 withUserInformationResponse:(id)a4 modifyAliases:(BOOL)a5;
- (BOOL)_walrusPropertiesChangedForAccount:(id)a3 userInformation:(id)a4;
- (id)_userInfoChangeNotificationDictionaryForAltDSID:(id)a3 userInformation:(id)a4;
- (id)authorizationUserInformationForRequest:(id)a3 shouldRequestUpdate:(BOOL *)a4 error:(id *)a5;
- (id)previousAccountInfoRefreshDateForAccount:(id)a3;
- (void)_broadcastEmailChangeNotification;
- (void)_fetchUserInformationForAltDSID:(id)a3 client:(id)a4 dataCenter:(id)a5 completion:(id)a6;
- (void)_fetchUserInformationWithContext:(id)a3 client:(id)a4 dataCenter:(id)a5 completion:(id)a6;
- (void)_processHideMyEmailForAltDSID:(id)a3 userInfo:(id)a4 response:(id)a5;
- (void)_processIncomingUserInformationForAltDSID:(id)a3 userInformation:(id)a4;
- (void)_refreshApplicationInformationForAltDSID:(id)a3;
- (void)_refreshDeviceListForAccount:(id)a3;
- (void)_sendNotification:(id)a3 withUserInfo:(id)a4;
- (void)_setPreviousAccountInfoRefreshDate:(id)a3 forAccount:(id)a4;
- (void)_syncPrivateEmailsForAltDSID:(id)a3 client:(id)a4 userInformation:(id)a5 completion:(id)a6;
- (void)_updatePrivateEmailsWithInformation:(id)a3;
- (void)_updateUserConfigIfNecessaryForAltDSID:(id)a3 responseParameters:(id)a4;
- (void)fetchUserInformationForAltDSID:(id)a3 client:(id)a4 completion:(id)a5;
- (void)fetchUserInformationWithContext:(id)a3 client:(id)a4 completion:(id)a5;
- (void)processPushMessage:(id)a3;
- (void)refreshAccountUsernamesForAltDSID:(id)a3 dataCenter:(id)a4;
- (void)refreshAccountUsernamesForAltDSID:(id)a3 withUserInformation:(id)a4;
- (void)sendUserInfoChangeNotificationWithPayload:(id)a3;
- (void)updateBirthdayForAltDSID:(id)a3 userInformation:(id)a4;
- (void)updateUserInformationForAltDSID:(id)a3 userInformation:(id)a4 completion:(id)a5;
- (void)updateUserInformationWithContext:(id)a3 userInformation:(id)a4 client:(id)a5 completion:(id)a6;
@end

@implementation AKUserInfoController

+ (id)sharedController
{
  v11 = a1;
  v10 = a2;
  obj = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000E8C20;
  v8 = &unk_100322AA0;
  v9 = a1;
  v13 = &unk_100374790;
  location = 0;
  objc_storeStrong(&location, &obj);
  if (*v13 != -1)
  {
    dispatch_once(v13, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100374788;

  return v2;
}

- (AKUserInfoController)init
{
  v8 = a2;
  v9 = 0;
  v7.receiver = self;
  v7.super_class = AKUserInfoController;
  v6 = [(AKUserInfoController *)&v7 init];
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

- (void)fetchUserInformationForAltDSID:(id)a3 client:(id)a4 completion:(id)a5
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = 0;
  objc_storeStrong(&v7, a5);
  [(AKUserInfoController *)v10 _fetchUserInformationForAltDSID:location[0] client:v8 dataCenter:0 completion:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchUserInformationWithContext:(id)a3 client:(id)a4 completion:(id)a5
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = 0;
  objc_storeStrong(&v7, a5);
  [(AKUserInfoController *)v10 _fetchUserInformationWithContext:location[0] client:v8 dataCenter:0 completion:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_fetchUserInformationForAltDSID:(id)a3 client:(id)a4 dataCenter:(id)a5 completion:(id)a6
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = 0;
  objc_storeStrong(&v11, a5);
  v10 = 0;
  objc_storeStrong(&v10, a6);
  v9 = objc_alloc_init(AKAppleIDAuthenticationContext);
  [v9 setAltDSID:location[0]];
  [(AKUserInfoController *)v14 _fetchUserInformationWithContext:v9 client:v12 dataCenter:v11 completion:v10];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)_fetchUserInformationWithContext:(id)a3 client:(id)a4 dataCenter:(id)a5 completion:(id)a6
{
  v38 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v36 = 0;
  objc_storeStrong(&v36, a4);
  v35 = 0;
  objc_storeStrong(&v35, a5);
  v34 = 0;
  objc_storeStrong(&v34, a6);
  v18 = [location[0] altDSID];
  _objc_release(v18);
  if (v18)
  {
    v12 = +[AKAccountManager sharedInstance];
    v11 = [location[0] altDSID];
    v32 = [AKAccountManager authKitAccountWithAltDSID:v12 error:"authKitAccountWithAltDSID:error:"];
    _objc_release(v11);
    _objc_release(v12);
    if (v32)
    {
      v9 = v38;
      v10 = +[NSDate date];
      [AKUserInfoController _setPreviousAccountInfoRefreshDate:v9 forAccount:"_setPreviousAccountInfoRefreshDate:forAccount:"];
      _objc_release(v10);
    }

    v31 = _AKLogSystem();
    v30 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [location[0] altDSID];
      sub_1000194D4(v39, v8);
      _os_log_impl(&_mh_execute_header, v31, v30, "Starting to fetch user info for %@", v39, 0xCu);
      _objc_release(v8);
    }

    objc_storeStrong(&v31, 0);
    v6 = [AKGrandSlamRequestProvider alloc];
    v29 = [(AKURLRequestProviderImpl *)v6 initWithContext:location[0] urlBagKey:AKURLBagKeyFetchUserInfo];
    [(AKURLRequestProviderImpl *)v29 setClient:v36];
    [(AKGrandSlamRequestProvider *)v29 setAuthenticatedRequest:1];
    [(AKURLRequestProviderImpl *)v29 setDataCenterIdentifier:v35];
    if ([location[0] deviceRegionRequired])
    {
      [(AKURLRequestProviderImpl *)v29 set_denyVirtualInterfaces:1];
    }

    v28 = [[AKServiceControllerImpl alloc] initWithRequestProvider:v29];
    v7 = v28;
    v19 = _NSConcreteStackBlock;
    v20 = -1073741824;
    v21 = 0;
    v22 = sub_1000E94B8;
    v23 = &unk_100323190;
    v24 = _objc_retain(location[0]);
    v25 = _objc_retain(v38);
    v26 = _objc_retain(v36);
    v27 = _objc_retain(v34);
    [(AKServiceControllerImpl *)v7 executeRequestWithCompletion:&v19];
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v32, 0);
    v33 = 0;
  }

  else
  {
    if (v34)
    {
      v13 = v34;
      v14 = [NSError ak_errorWithCode:-7025];
      v13[2](v13, 0);
      _objc_release(v14);
    }

    v33 = 1;
  }

  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
}

- (void)refreshAccountUsernamesForAltDSID:(id)a3 dataCenter:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  +[NSXPCConnection beginTransaction];
  [(AKUserInfoController *)v7 _fetchUserInformationForAltDSID:location[0] client:0 dataCenter:v5 completion:&stru_1003231D0];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_shouldUpdateConfigsForAltDSID:(id)a3 responseParameters:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v6 = +[AKAccountManager sharedInstance];
  v10 = [(AKAccountManager *)v6 authKitAccountWithAltDSID:location[0] error:0];
  _objc_release(v6);
  v7 = +[AKAccountManager sharedInstance];
  v9 = [(AKAccountManager *)v7 configDataVersionForAccount:v10];
  _objc_release(v7);
  v8 = [v11 objectForKeyedSubscript:AKConfigDataVersion];
  v13 = v8 && !sub_1000E9B2C(v8, v9);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return v13;
}

- (void)_updateUserConfigIfNecessaryForAltDSID:(id)a3 responseParameters:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  if ([(AKUserInfoController *)v10 _shouldUpdateConfigsForAltDSID:location[0] responseParameters:v8])
  {
    v6 = objc_alloc_init(AKUserConfigController);
    v4 = location[0];
    v11 = AKAllConfigsKey;
    v5 = [NSArray arrayWithObjects:&v11 count:1];
    [AKUserConfigController fetchUserConfigForAltDSID:v6 client:"fetchUserConfigForAltDSID:client:dataCenter:forIdentifiers:completion:" dataCenter:v4 forIdentifiers:0 completion:?];
    _objc_release(v5);
    _objc_release(v6);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)processPushMessage:(id)a3
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] command] == 1400)
  {
    v18 = _AKLogSystem();
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      log = v18;
      v12 = v17;
      sub_10001CEEC(v16);
      _os_log_impl(&_mh_execute_header, log, v12, "Handling push in info controller with command AKPushMessageCommandAccountInfoChanged...", v16, 2u);
    }

    objc_storeStrong(&v18, 0);
    v10 = [location[0] userInfo];
    v15 = [v10 objectForKeyedSubscript:@"userinfodata"];
    _objc_release(v10);
    if (v15)
    {
      v14 = [[AKAppleIDUserInformationResponse alloc] initWithResponseBody:v15];
      v6 = v20;
      v7 = [location[0] altDSID];
      [AKUserInfoController _processIncomingUserInformationForAltDSID:v6 userInformation:"_processIncomingUserInformationForAltDSID:userInformation:"];
      _objc_release(v7);
      v8 = v20;
      v9 = [location[0] altDSID];
      [AKUserInfoController _processHideMyEmailForAltDSID:v8 userInfo:"_processHideMyEmailForAltDSID:userInfo:response:" response:?];
      _objc_release(v9);
      objc_storeStrong(&v14, 0);
    }

    else
    {
      v3 = [location[0] eventDetails];
      v13 = [v3 objectForKeyedSubscript:@"dataCenter"];
      _objc_release(v3);
      v4 = v20;
      v5 = [location[0] altDSID];
      [AKUserInfoController refreshAccountUsernamesForAltDSID:v4 dataCenter:"refreshAccountUsernamesForAltDSID:dataCenter:"];
      _objc_release(v5);
      objc_storeStrong(&v13, 0);
    }

    objc_storeStrong(&v15, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)_processHideMyEmailForAltDSID:(id)a3 userInfo:(id)a4 response:(id)a5
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v28 = 0;
  objc_storeStrong(&v28, a5);
  v27 = +[AKAccountManager sharedInstance];
  v26 = [v27 primaryAuthKitAccount];
  v25 = [v27 altDSIDForAccount:v26];
  if ([v25 isEqualToString:location[0]])
  {
    v20 = [[AKPrivateEmailInformation alloc] initWithResponseBody:v29];
    v19 = +[AKPrivateEmailStoreManager sharedInstance];
    v18 = [v19 currentProtocolVersion];
    if (v18 < [v20 protocolVersion])
    {
      v17 = 0;
      v16 = 0;
      [v19 clearDatabase:&v16];
      objc_storeStrong(&v17, v16);
      if (v17)
      {
        oslog = _AKLogHme();
        v14 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          sub_1000194D4(v33, v17);
          _os_log_error_impl(&_mh_execute_header, oslog, v14, "failed to clear DB on protocol change - %@", v33, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
      }

      else
      {
        v6 = v19;
        v5 = [v20 protocolVersion];
        v13 = v17;
        v7 = [v6 setProtocolVersion:v5 error:&v13];
        objc_storeStrong(&v17, v13);
        if (v7)
        {
          [v20 setShouldSyncWithServer:1];
        }

        else
        {
          v12 = _AKLogHme();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_1000194D4(v32, v17);
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Couldn't upgrade the stored protocol version - %@", v32, 0xCu);
          }

          objc_storeStrong(&v12, 0);
        }
      }

      objc_storeStrong(&v17, 0);
    }

    if ([v20 shouldSyncWithServer])
    {
      [(AKUserInfoController *)v31 _syncPrivateEmailsForAltDSID:location[0] client:0 userInformation:v28 completion:?];
    }

    else
    {
      [(AKUserInfoController *)v31 _updatePrivateEmailsWithInformation:v20];
    }

    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
    v21 = 0;
  }

  else
  {
    v24 = _AKLogHme();
    v23 = 2;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      log = v24;
      type = v23;
      sub_10001CEEC(v22);
      _os_log_debug_impl(&_mh_execute_header, log, type, "Not updating, since primary account does not match", v22, 2u);
    }

    objc_storeStrong(&v24, 0);
    v21 = 1;
  }

  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

- (void)_processIncomingUserInformationForAltDSID:(id)a3 userInformation:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5 = [v6 userInformationRepresentation];
  [(AKUserInfoController *)v8 refreshAccountUsernamesForAltDSID:location[0] withUserInformation:v6];
  [(AKUserInfoController *)v8 updateUserInformationForAltDSID:location[0] userInformation:v5 completion:0];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)_syncPrivateEmailsForAltDSID:(id)a3 client:(id)a4 userInformation:(id)a5 completion:(id)a6
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v35 = 0;
  objc_storeStrong(&v35, a4);
  v34 = 0;
  objc_storeStrong(&v34, a5);
  v33 = 0;
  objc_storeStrong(&v33, a6);
  v32 = [v34 userInformationRepresentation];
  v31 = [v32 privateEmailListVersion];
  if (v31 && ![v31 isEqualToString:@"0"])
  {
    v30 = +[AKPrivateEmailStoreManager sharedInstance];
    v29 = [v30 currentEmailListVersion];
    if (![v31 isEqualToString:v29])
    {
      v28 = _AKLogSystem();
      v27 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        sub_10006A3A4(v37, 1752392040, location[0], v35);
        _os_log_debug_impl(&_mh_execute_header, v28, v27, "Starting to sync private emails list for %{mask.hash}@\n%@", v37, 0x20u);
      }

      objc_storeStrong(&v28, 0);
      v6 = [AKPrivateEmailServiceController alloc];
      v26 = [(AKPrivateEmailServiceController *)v6 initWithClient:v35 altDSID:location[0]];
      if (v26)
      {
        v25 = os_transaction_create();
        v11 = v26;
        v18 = _NSConcreteStackBlock;
        v19 = -1073741824;
        v20 = 0;
        v21 = sub_1000EAAC8;
        v22 = &unk_10031FB38;
        v24 = _objc_retain(v33);
        v23 = _objc_retain(v25);
        [v11 executeFetchHmeListRequestWithCompletion:&v18];
        objc_storeStrong(&v23, 0);
        objc_storeStrong(&v24, 0);
        objc_storeStrong(&v25, 0);
      }

      else
      {
        oslog = _AKLogHme();
        v16 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          v9 = oslog;
          v10 = v16;
          sub_10001CEEC(v15);
          _os_log_error_impl(&_mh_execute_header, v9, v10, "Could not create service controller", v15, 2u);
        }

        objc_storeStrong(&oslog, 0);
        if (v33)
        {
          v7 = v33;
          v8 = [NSError ak_errorWithCode:-7096];
          v7[2](v7, 0);
          _objc_release(v8);
        }
      }

      objc_storeStrong(&v26, 0);
    }

    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v30, 0);
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
}

- (void)_updatePrivateEmailsWithInformation:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = [location[0] privateEmailListVersion];
  v12 = _AKLogHme();
  v11 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v17, v13);
    _os_log_debug_impl(&_mh_execute_header, v12, v11, "Update passedVersion=[%@]", v17, 0xCu);
  }

  objc_storeStrong(&v12, 0);
  if (v13 && ![v13 isEqualToString:@"0"])
  {
    v10 = +[AKPrivateEmailStoreManager sharedInstance];
    v9 = [v10 currentEmailListVersion];
    oslog = _AKLogHme();
    v7 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v16, v9);
      _os_log_debug_impl(&_mh_execute_header, oslog, v7, "Update currentVersion=[%@]", v16, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    if (![v13 isEqualToString:v9])
    {
      v6 = 0;
      obj = 0;
      v3 = [v10 commitChangesToCacheWithInformation:location[0] error:&obj];
      objc_storeStrong(&v6, obj);
      if (!v3)
      {
        v4 = _AKLogHme();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          sub_1000194D4(v15, v6);
          _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to update from push notification, error=%@", v15, 0xCu);
        }

        objc_storeStrong(&v4, 0);
      }

      objc_storeStrong(&v6, 0);
    }

    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v10, 0);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)updateUserInformationForAltDSID:(id)a3 userInformation:(id)a4 completion:(id)a5
{
  v75 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v73 = 0;
  objc_storeStrong(&v73, a4);
  v72 = 0;
  objc_storeStrong(&v72, a5);
  v71 = [(AKUserInfoController *)v75 _userInfoChangeNotificationDictionaryForAltDSID:location[0] userInformation:v73];
  if ([v71 count])
  {
    v70 = [(AKAccountManager *)v75->_accountManager authKitAccountWithAltDSID:location[0] error:0];
    v69 = 0;
    v68 = 0;
    v67 = [v73 authMode];
    v45 = [v71 objectForKeyedSubscript:AKUserInfoChangedAuthModeKey];
    _objc_release(v45);
    if (v45)
    {
      [(AKAccountManager *)v75->_accountManager setAuthenticationMode:v67 forAccount:v70];
      v68 = 1;
      v69 = 1;
    }

    v42 = [v73 isMdmInfoRequired];
    v43 = [v42 BOOLValue];
    _objc_release(v42);
    v66 = v43;
    v44 = [v71 objectForKeyedSubscript:AKUserInfoChangedMDMInfoRequiredKey];
    _objc_release(v44);
    if (v44)
    {
      [(AKAccountManager *)v75->_accountManager setMDMInformationRequired:v66 & 1 forAccount:v70];
      v68 = 1;
      v69 = 1;
    }

    v65 = [v73 appleIDSecurityLevel];
    v41 = [v71 objectForKeyedSubscript:AKUserInfoChangedSecurityLevelKey];
    _objc_release(v41);
    if (v41)
    {
      [(AKAccountManager *)v75->_accountManager setSecurityLevel:v65 forAccount:v70];
      if (v65 == 4)
      {
        v64 = [[AKSatoriController alloc] initWithClient:?];
        [(AKSatoriController *)v64 warmUpVerificationSessionWithCompletionHandler:0];
        objc_storeStrong(&v64, 0);
      }

      v68 = 1;
      v69 = 1;
    }

    v40 = [v71 objectForKeyedSubscript:AKUserInfoChangedRepairStateKey];
    _objc_release(v40);
    if (v40)
    {
      v63 = [v73 repairState];
      [(AKAccountManager *)v75->_accountManager setRepairState:v63 forAccount:v70];
      v68 = 1;
      v69 = 1;
    }

    v39 = [v71 objectForKeyedSubscript:AKGroupKitEligibilityKey];
    _objc_release(v39);
    if (v39)
    {
      accountManager = v75->_accountManager;
      v38 = [v73 groupKitEligibility];
      [AKAccountManager setGroupKitEligibility:"setGroupKitEligibility:forAccount:" forAccount:?];
      _objc_release(v38);
      v68 = 1;
      v69 = 1;
    }

    v35 = [v71 objectForKeyedSubscript:AKSOSActiveDeviceKey];
    v61 = 0;
    v36 = 1;
    if (!v35)
    {
      v62 = [v71 objectForKeyedSubscript:AKSOSActiveDeviceLegacyKey];
      v61 = 1;
      v36 = v62 != 0;
    }

    if (v61)
    {
      _objc_release(v62);
    }

    _objc_release(v35);
    if (v36)
    {
      v33 = v75->_accountManager;
      v34 = [v73 hasSOSActiveDevice];
      v5 = [v34 BOOLValue];
      [(AKAccountManager *)v33 setHasSOSActiveDevice:v5 forAccount:v70];
      _objc_release(v34);
      v68 = 1;
    }

    v32 = [v71 objectForKeyedSubscript:@"activeHMECount"];
    _objc_release(v32);
    if (v32)
    {
      v60 = [v73 activeHMECount];
      [(AKAccountManager *)v75->_accountManager setActiveiCloudPrivateEmailCount:v60 forAccount:v70];
      v68 = 1;
      objc_storeStrong(&v60, 0);
    }

    v31 = [v71 objectForKeyedSubscript:@"inActiveHMECount"];
    _objc_release(v31);
    if (v31)
    {
      v59 = [v73 inActiveHMECount];
      [(AKAccountManager *)v75->_accountManager setInactiveiCloudPrivateEmailCount:v59 forAccount:v70];
      v68 = 1;
      objc_storeStrong(&v59, 0);
    }

    v30 = [v71 objectForKeyedSubscript:AKSOSNeededKey];
    _objc_release(v30);
    if (v30)
    {
      v28 = v75->_accountManager;
      v29 = [v73 SOSNeeded];
      v6 = [v29 BOOLValue];
      [(AKAccountManager *)v28 setSOSNeeded:v6 forAccount:v70];
      _objc_release(v29);
      v68 = 1;
    }

    v27 = [v71 objectForKeyedSubscript:AKConfigDataVersion];
    _objc_release(v27);
    if (v27)
    {
      v25 = v75->_accountManager;
      v26 = [v73 configDataVersion];
      [AKAccountManager setConfigDataVersion:v25 forAccount:"setConfigDataVersion:forAccount:"];
      _objc_release(v26);
      v68 = 1;
    }

    v24 = [v71 objectForKeyedSubscript:AKHasModernRKKey];
    _objc_release(v24);
    if (v24)
    {
      v22 = v75->_accountManager;
      v23 = [v73 hasModernRecoveryKey];
      v7 = [v23 BOOLValue];
      [(AKAccountManager *)v22 setHasModernRecoveryKey:v7 forAccount:v70];
      _objc_release(v23);
      v68 = 1;
    }

    v21 = [v71 objectForKeyedSubscript:AK3PRegulatoryOverrideKey];
    _objc_release(v21);
    if (v21)
    {
      v19 = v75->_accountManager;
      v20 = [v73 thirdPartyRegulatoryOverride];
      [AKAccountManager set3PRegulatoryOverride:v19 forAccount:"set3PRegulatoryOverride:forAccount:"];
      _objc_release(v20);
      v68 = 1;
    }

    if ([(AKUserInfoController *)v75 _authorizationPropertiesChangedForAccount:v70 userInformation:v73])
    {
      v68 = 1;
    }

    if ([(AKUserInfoController *)v75 _passkeyPropertiesChangedForAccount:v70 userInformation:v73])
    {
      v68 = 1;
    }

    if ([(AKUserInfoController *)v75 _walrusPropertiesChangedForAccount:v70 userInformation:v73])
    {
      v68 = 1;
    }

    if ([(AKUserInfoController *)v75 _passcodeAuthPropertiesChangedForAccount:v70 userInformation:v73])
    {
      v68 = 1;
    }

    if ([(AKUserInfoController *)v75 _deviceListPropertiesChangedForAccount:v70 userInformation:v73])
    {
      v68 = 1;
    }

    if ([(AKUserInfoController *)v75 _additionalInfoChangedForAccount:v70 userInformation:v73])
    {
      v68 = 1;
    }

    if ([(AKUserInfoController *)v75 _trustedPhoneNumbersChangedForAccount:v70 userInformation:v73])
    {
      v68 = 1;
    }

    if ([(AKUserInfoController *)v75 _securityKeysChangedForAccount:v70 userInformation:v73])
    {
      v68 = 1;
    }

    if ([(AKUserInfoController *)v75 _loginHandlesChangedForAccount:v70 userInformation:v73])
    {
      v68 = 1;
    }

    if ([(AKUserInfoController *)v75 _managedAppleIDInfoChangedForAccount:v70 userInformation:v73])
    {
      v68 = 1;
    }

    if ([(AKUserInfoController *)v75 _trustedContactPropertiesChangedForAccount:v70 userInformation:v73])
    {
      v68 = 1;
    }

    if ([(AKUserInfoController *)v75 _birthYearChangedForAccount:v70 userInformation:v73])
    {
      v68 = 1;
    }

    if ([(AKUserInfoController *)v75 _adpCohortChangedForAccount:v70 userInformation:v73])
    {
      v68 = 1;
    }

    if ([(AKUserInfoController *)v75 _piggybackingApprovalEligibleChangedForAccount:v70 userInformation:v73])
    {
      v68 = 1;
    }

    v18 = [v71 objectForKeyedSubscript:AKIsEligibleToMigrateToChildKey];
    _objc_release(v18);
    if (v18)
    {
      v16 = v75->_accountManager;
      v17 = [v73 isEligibleToMigrateToChild];
      [AKAccountManager setIsEligibleToMigrateToChild:v16 forAccount:"setIsEligibleToMigrateToChild:forAccount:"];
      _objc_release(v17);
      v68 = 1;
      v69 = 1;
    }

    if ([(AKUserInfoController *)v75 _idmsWalrusStatusChangedForAccount:v70 userInformation:v73])
    {
      v68 = 1;
    }

    v58 = 0;
    v57 = 0;
    if (v68)
    {
      v8 = v75->_accountManager;
      v56 = v57;
      v15 = [(AKAccountManager *)v8 saveAccount:v70 error:&v56];
      objc_storeStrong(&v57, v56);
      v58 = v15;
    }

    if (v69)
    {
      v55 = _AKLogSystem();
      v54 = 2;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
        log = v55;
        type = v54;
        sub_10001CEEC(v53);
        _os_log_debug_impl(&_mh_execute_header, log, type, "Sending Info Change Notification", v53, 2u);
      }

      objc_storeStrong(&v55, 0);
      [(AKUserInfoController *)v75 sendUserInfoChangeNotificationWithPayload:v71];
    }

    v11 = [v73 birthDay];
    v51 = 0;
    v12 = 1;
    if (!v11)
    {
      v52 = [v73 birthMonth];
      v51 = 1;
      v12 = v52 != 0;
    }

    if (v51)
    {
      _objc_release(v52);
    }

    _objc_release(v11);
    if (v12)
    {
      v50 = _AKLogSystem();
      v49 = 2;
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        v9 = v50;
        v10 = v49;
        sub_10001CEEC(v48);
        _os_log_debug_impl(&_mh_execute_header, v9, v10, "Have User Birthday in fetch user info", v48, 2u);
      }

      objc_storeStrong(&v50, 0);
      [(AKUserInfoController *)v75 updateBirthdayForAltDSID:location[0] userInformation:v73];
    }

    if (v72)
    {
      (*(v72 + 2))(v72, v58 & 1, v57);
    }

    objc_storeStrong(&v57, 0);
    objc_storeStrong(&v70, 0);
  }

  else if (v72)
  {
    (*(v72 + 2))(v72, 0, 0);
  }

  objc_storeStrong(&v71, 0);
  objc_storeStrong(&v72, 0);
  objc_storeStrong(&v73, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_piggybackingApprovalEligibleChangedForAccount:(id)a3 userInformation:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = 0;
  v8 = [(AKAccountManager *)v12->_accountManager piggybackingApprovalEligible:location[0]];
  v6 = [v10 piggybackingApprovalEligible];
  v7 = [v6 BOOLValue];
  _objc_release(v6);
  if ((v8 & 1) != (v7 & 1))
  {
    [(AKAccountManager *)v12->_accountManager setPiggybackingApprovalEligible:v7 & 1 forAccount:location[0]];
    v9 = 1;
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return v9 & 1;
}

- (id)_userInfoChangeNotificationDictionaryForAltDSID:(id)a3 userInformation:(id)a4
{
  v70 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v68 = 0;
  objc_storeStrong(&v68, a4);
  v67 = +[NSMutableDictionary dictionary];
  v66 = [(AKAccountManager *)v70->_accountManager authKitAccountWithAltDSID:location[0] error:0];
  if (v66)
  {
    [v67 setObject:location[0] forKeyedSubscript:AKUserInfoChangedAltDSIDKey];
    v65 = [(AKAccountManager *)v70->_accountManager authenticationModeForAccount:v66];
    v64 = [v68 authMode];
    if (v64 != v65 && v64)
    {
      v26 = [NSNumber numberWithUnsignedInteger:v64];
      [v67 setObject:? forKeyedSubscript:?];
      _objc_release(v26);
    }

    v63 = [(AKAccountManager *)v70->_accountManager mdmInformationRequiredForAccount:v66];
    v24 = [v68 isMdmInfoRequired];
    v25 = [v24 BOOLValue];
    _objc_release(v24);
    v62 = v25;
    if ((v25 & 1) != (v63 & 1))
    {
      v23 = [NSNumber numberWithBool:v62 & 1];
      [v67 setObject:? forKeyedSubscript:?];
      _objc_release(v23);
    }

    v61 = [(AKAccountManager *)v70->_accountManager securityLevelForAccount:v66];
    v60 = [v68 appleIDSecurityLevel];
    if (v60 != v61 && v60)
    {
      v22 = [NSNumber numberWithUnsignedInteger:v60];
      [v67 setObject:? forKeyedSubscript:?];
      _objc_release(v22);
    }

    v59 = [(AKAccountManager *)v70->_accountManager hasSOSActiveDeviceForAccount:v66];
    v58 = [v68 hasSOSActiveDevice];
    if (v58 && (!v59 || v58 != v59))
    {
      v21 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v58 BOOLValue]);
      [v67 setObject:? forKeyedSubscript:?];
      _objc_release(v21);
    }

    v57 = [(AKAccountManager *)v70->_accountManager isSOSNeededForAccount:v66];
    v56 = [v68 SOSNeeded];
    if (v56 && (!v57 || v56 != v57))
    {
      v20 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v56 BOOLValue]);
      [v67 setObject:? forKeyedSubscript:?];
      _objc_release(v20);
    }

    v55 = [(AKAccountManager *)v70->_accountManager repairStateForAccount:v66];
    v54 = [v68 repairState];
    if (v54 != v55 && v54)
    {
      v19 = [NSNumber numberWithUnsignedInteger:v54];
      [v67 setObject:? forKeyedSubscript:?];
      _objc_release(v19);
    }

    v53 = [(AKAccountManager *)v70->_accountManager webAccessEnabledForAccount:v66];
    v52 = [v68 webAccessEnabled];
    if (v52)
    {
      if (!v53 || (v18 = [v52 BOOLValue], v18 != objc_msgSend(v53, "BOOLValue")))
      {
        v17 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v52 BOOLValue]);
        [v67 setObject:? forKeyedSubscript:?];
        _objc_release(v17);
      }
    }

    v51 = [(AKAccountManager *)v70->_accountManager serverExperimentalFeaturesForAccount:v66];
    v50 = [v68 serverExperimentalFeatures];
    if (v50)
    {
      if (!v51 || (v16 = [v50 integerValue], v16 != objc_msgSend(v51, "integerValue")))
      {
        [v67 setObject:v50 forKeyedSubscript:AKServerExperimentalFeaturesKey];
      }
    }

    v49 = [(AKAccountManager *)v70->_accountManager passkeyEligibleForAccount:v66];
    v48 = [v68 passkeyEligible];
    if (v48)
    {
      if (!v49 || (v15 = [v48 BOOLValue], v15 != objc_msgSend(v49, "BOOLValue")))
      {
        v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v48 BOOLValue]);
        [v67 setObject:? forKeyedSubscript:?];
        _objc_release(v14);
      }
    }

    v47 = [(AKAccountManager *)v70->_accountManager passkeyPresentForAccount:v66];
    v46 = [v68 passkeyPresent];
    if (v46)
    {
      if (!v47 || (v13 = [v46 BOOLValue], v13 != objc_msgSend(v47, "BOOLValue")))
      {
        v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v46 BOOLValue]);
        [v67 setObject:? forKeyedSubscript:?];
        _objc_release(v12);
      }
    }

    v45 = [(AKAccountManager *)v70->_accountManager groupKitEligibilityForAccount:v66];
    v44 = [v68 groupKitEligibility];
    if (v44)
    {
      if (!v45 || (v11 = [v44 integerValue], v11 != objc_msgSend(v45, "integerValue")))
      {
        [v67 setObject:v44 forKeyedSubscript:AKGroupKitEligibilityKey];
      }
    }

    v43 = [(AKAccountManager *)v70->_accountManager inactiveiCloudPrivateEmailCountForAccount:v66];
    v42 = [v68 inActiveHMECount];
    if (v42)
    {
      if (!v43 || (v10 = [v42 integerValue], v10 != objc_msgSend(v43, "integerValue")))
      {
        [v67 setObject:v42 forKeyedSubscript:AKHMEInActiveCountKey];
      }
    }

    v41 = [(AKAccountManager *)v70->_accountManager activeiCloudPrivateEmailCountForAccount:v66];
    v40 = [v68 activeHMECount];
    if (v40)
    {
      if (!v41 || (v9 = [v40 integerValue], v9 != objc_msgSend(v41, "integerValue")))
      {
        [v67 setObject:v40 forKeyedSubscript:AKHMEActiveCountKey];
      }
    }

    v39 = [(AKAccountManager *)v70->_accountManager configDataVersionForAccount:v66];
    v38 = [v68 configDataVersion];
    if (v38 && !sub_1000E9B2C(v38, v39))
    {
      [v67 setObject:v38 forKeyedSubscript:AKConfigDataVersion];
    }

    v37 = [(AKAccountManager *)v70->_accountManager hasModernRecoveryKeyForAccount:v66];
    v36 = [v68 hasModernRecoveryKey];
    if (v36 && (!v37 || v36 != v37))
    {
      v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v36 BOOLValue]);
      [v67 setObject:? forKeyedSubscript:?];
      _objc_release(v8);
    }

    v35 = [(AKAccountManager *)v70->_accountManager get3PRegulatoryOverride:v66];
    v34 = [v68 thirdPartyRegulatoryOverride];
    if (v34 && !sub_1000E9B2C(v34, v35))
    {
      [v67 setObject:v34 forKeyedSubscript:AK3PRegulatoryOverrideKey];
    }

    v33 = [(AKAccountManager *)v70->_accountManager adpCohortForAccount:v66];
    v32 = [v68 adpCohort];
    if (v32 && (!v33 || v32 != v33))
    {
      [v67 setObject:v32 forKeyedSubscript:AKADPCohortKey];
    }

    v31 = [(AKAccountManager *)v70->_accountManager isEligibleToMigrateToChildForAccount:v66];
    v30 = [v68 isEligibleToMigrateToChild];
    if (v30)
    {
      if (!v31 || (v7 = [v30 integerValue], v7 != objc_msgSend(v31, "integerValue")))
      {
        [v67 setObject:v30 forKeyedSubscript:AKIsEligibleToMigrateToChildKey];
      }
    }

    v29 = [(AKAccountManager *)v70->_accountManager idmsWalrusStatusForAccount:v66];
    v28 = [v68 idmsWalrusStatus];
    if (v28 && (!v29 || v28 != v29))
    {
      [v67 setObject:v28 forKeyedSubscript:AKIdmsWalrusStatusKey];
    }

    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v32, 0);
    objc_storeStrong(&v33, 0);
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v36, 0);
    objc_storeStrong(&v37, 0);
    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v39, 0);
    objc_storeStrong(&v40, 0);
    objc_storeStrong(&v41, 0);
    objc_storeStrong(&v42, 0);
    objc_storeStrong(&v43, 0);
    objc_storeStrong(&v44, 0);
    objc_storeStrong(&v45, 0);
    objc_storeStrong(&v46, 0);
    objc_storeStrong(&v47, 0);
    objc_storeStrong(&v48, 0);
    objc_storeStrong(&v49, 0);
    objc_storeStrong(&v50, 0);
    objc_storeStrong(&v51, 0);
    objc_storeStrong(&v52, 0);
    objc_storeStrong(&v53, 0);
    objc_storeStrong(&v56, 0);
    objc_storeStrong(&v57, 0);
    objc_storeStrong(&v58, 0);
    objc_storeStrong(&v59, 0);
  }

  v6 = [v67 copy];
  objc_storeStrong(&v66, 0);
  objc_storeStrong(v5, 0);
  objc_storeStrong(&v68, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (BOOL)_passkeyPropertiesChangedForAccount:(id)a3 userInformation:(id)a4
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = 0;
  v16 = [v18 passkeyEligible];
  v15 = [(AKAccountManager *)v20->_accountManager passkeyEligibleForAccount:location[0]];
  if (v16)
  {
    if (!v15 || (v11 = [v16 BOOLValue], v11 != objc_msgSend(v15, "BOOLValue")))
    {
      accountManager = v20->_accountManager;
      v4 = [v16 BOOLValue];
      [(AKAccountManager *)accountManager setPasskeyEligible:v4 forAccount:location[0]];
      v17 = 1;
    }
  }

  v14 = [v18 passkeyPresent];
  v13 = [(AKAccountManager *)v20->_accountManager passkeyPresentForAccount:location[0]];
  if (v14)
  {
    if (!v13 || (v9 = [v14 BOOLValue], v9 != objc_msgSend(v13, "BOOLValue")))
    {
      v8 = v20->_accountManager;
      v5 = [v14 BOOLValue];
      [(AKAccountManager *)v8 setPasskeyPresent:v5 forAccount:location[0]];
      [(AKAccountManager *)v20->_accountManager setPasskeysInKeychainCount:0 forAccount:location[0]];
      v17 = 1;
    }
  }

  v7 = v17;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  return v7 & 1;
}

- (BOOL)_walrusPropertiesChangedForAccount:(id)a3 userInformation:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = 0;
  v14 = [v16 webAccessEnabled];
  v13 = [(AKAccountManager *)v18->_accountManager webAccessEnabledForAccount:location[0]];
  if (v14)
  {
    if (!v13 || (v9 = [v14 BOOLValue], v9 != objc_msgSend(v13, "BOOLValue")))
    {
      accountManager = v18->_accountManager;
      v4 = [v14 BOOLValue];
      [(AKAccountManager *)accountManager setWebAccessEnabled:v4 forAccount:location[0]];
      v15 = 1;
    }
  }

  v12 = [v16 serverExperimentalFeatures];
  v11 = [(AKAccountManager *)v18->_accountManager serverExperimentalFeaturesForAccount:location[0]];
  if (v12)
  {
    if (!v11 || (v7 = [v12 integerValue], v7 != objc_msgSend(v11, "integerValue")))
    {
      [(AKAccountManager *)v18->_accountManager setServerExperimentalFeatures:v12 forAccount:location[0]];
      v15 = 1;
    }
  }

  v6 = v15;
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  return v6 & 1;
}

- (BOOL)_passcodeAuthPropertiesChangedForAccount:(id)a3 userInformation:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = 0;
  v8 = [v11 passcodeAuthEnabled];
  v9 = [v8 BOOLValue];
  _objc_release(v8);
  if ((v9 & 1) != ([(AKAccountManager *)v13->_accountManager isPasscodeAuthEnabledForAccount:location[0]]& 1))
  {
    [(AKAccountManager *)v13->_accountManager setPasscodeAuthEnabled:v9 & 1 forAccount:location[0]];
    v10 = 1;
  }

  v5 = [v11 askToBuy];
  v6 = [v5 BOOLValue];
  _objc_release(v5);
  if ((v6 & 1) != ([(AKAccountManager *)v13->_accountManager isAskToBuyForAccount:location[0]]& 1))
  {
    [(AKAccountManager *)v13->_accountManager setAskToBuy:v6 & 1 forAccount:location[0]];
    v10 = 1;
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return v10 & 1;
}

- (BOOL)_deviceListPropertiesChangedForAccount:(id)a3 userInformation:(id)a4
{
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = 0;
  objc_storeStrong(&v24, a4);
  v23 = 0;
  v12 = [v24 deviceListVersion];
  v13 = [v12 hash];
  _objc_release(v12);
  v22[2] = v13;
  v14 = [(AKAccountManager *)v26->_accountManager deviceListVersionForAccount:location[0]];
  v15 = [v14 hash];
  _objc_release(v14);
  v22[1] = v15;
  if (v13 != v15)
  {
    accountManager = v26->_accountManager;
    v8 = [v24 deviceListVersion];
    [AKAccountManager setDeviceListVersion:"setDeviceListVersion:forAccount:" forAccount:?];
    _objc_release(v8);
    [(AKAccountManager *)v26->_accountManager saveAccount:location[0] error:0];
    v23 = 1;
    v9 = +[AKFeatureManager sharedManager];
    v10 = [v9 isDeviceListCacheEnableDryMode];
    _objc_release(v9);
    if (v10)
    {
      queue = dispatch_get_global_queue(9, 0);
      v16 = _NSConcreteStackBlock;
      v17 = -1073741824;
      v18 = 0;
      v19 = sub_1000ED58C;
      v20 = &unk_10031F078;
      v21 = _objc_retain(v26);
      v22[0] = _objc_retain(location[0]);
      dispatch_async(queue, &v16);
      _objc_release(queue);
      objc_storeStrong(v22, 0);
      objc_storeStrong(&v21, 0);
    }
  }

  v5 = v23;
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (BOOL)_authorizationPropertiesChangedForAccount:(id)a3 userInformation:(id)a4
{
  v103 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v101 = 0;
  objc_storeStrong(&v101, a4);
  v100 = 0;
  v42 = [v101 vettedPrimaryEmail];
  v43 = [v42 BOOLValue];
  _objc_release(v42);
  v99 = v43;
  v98 = [(AKAccountManager *)v103->_accountManager verifiedPrimaryEmailForAccount:location[0]];
  v44 = [v101 vettedPrimaryEmail];
  v45 = 0;
  if (v44)
  {
    v45 = (v99 & 1) != (v98 & 1);
  }

  _objc_release(v44);
  if (v45)
  {
    [(AKAccountManager *)v103->_accountManager setVerifiedPrimaryEmail:v99 & 1 forAccount:location[0]];
    v100 = 1;
  }

  v37 = [v101 phoneAsAppleID];
  v38 = [v37 BOOLValue];
  _objc_release(v37);
  v97 = v38;
  v96 = [(AKAccountManager *)v103->_accountManager phoneAsAppleIDForAccount:location[0]];
  v39 = [v101 phoneAsAppleID];
  v40 = 0;
  if (v39)
  {
    v40 = (v97 & 1) != (v96 & 1);
  }

  _objc_release(v39);
  if (v40)
  {
    [(AKAccountManager *)v103->_accountManager setPhoneAsAppleID:v97 & 1 forAccount:location[0]];
    v100 = 1;
  }

  v33 = [v101 previouslyWantedPrivateEmail];
  v34 = [v33 BOOLValue];
  _objc_release(v33);
  v95 = v34;
  v94 = [(AKAccountManager *)v103->_accountManager selectedPrivateEmailForAccount:location[0]];
  v35 = [v101 previouslyWantedPrivateEmail];
  v36 = 0;
  if (v35)
  {
    v36 = (v95 & 1) != (v94 & 1);
  }

  _objc_release(v35);
  if (v36)
  {
    [(AKAccountManager *)v103->_accountManager setSelectedPrivateEmail:v95 & 1 forAccount:location[0]];
    v100 = 1;
  }

  v93 = [v101 primaryEmailAddress];
  v92 = [(AKAccountManager *)v103->_accountManager primaryEmailAddressForAccount:location[0]];
  if (v93 && !sub_1000E9B2C(v93, v92))
  {
    [(AKAccountManager *)v103->_accountManager setPrimaryEmailAddress:v93 forAccount:location[0]];
    v100 = 1;
  }

  v91 = [v101 givenName];
  v90 = [(AKAccountManager *)v103->_accountManager givenNameForAccount:location[0]];
  if (v91 && !sub_1000E9B2C(v91, v90))
  {
    [(AKAccountManager *)v103->_accountManager setGivenName:v91 forAccount:location[0]];
    v100 = 1;
  }

  v89 = [v101 familyName];
  v88 = [(AKAccountManager *)v103->_accountManager familyNameForAccount:location[0]];
  if (v89 && !sub_1000E9B2C(v89, v88))
  {
    [(AKAccountManager *)v103->_accountManager setFamilyName:v89 forAccount:location[0]];
    v100 = 1;
  }

  v87 = [v101 forwardingEmail];
  v86 = [(AKAccountManager *)v103->_accountManager forwardingEmailForAccount:location[0]];
  if (v87 && !sub_1000E9B2C(v87, v86))
  {
    [(AKAccountManager *)v103->_accountManager setForwardingEmail:v87 forAccount:location[0]];
    v100 = 1;
  }

  v85 = [v101 previouslySelectedEmail];
  v84 = [(AKAccountManager *)v103->_accountManager selectedAuthorizationEmailForAccount:location[0]];
  if (v85 && !sub_1000E9B2C(v85, v84))
  {
    [(AKAccountManager *)v103->_accountManager setSelectedAuthorizationEmail:v85 forAccount:location[0]];
    v100 = 1;
  }

  v83 = [v101 reachableEmails];
  v82 = [NSSet setWithArray:v83];
  v32 = [(AKAccountManager *)v103->_accountManager reachableEmailAddressesForAccount:location[0]];
  v81 = [NSSet setWithArray:?];
  _objc_release(v32);
  if (v83 && ![v82 isEqualToSet:v81])
  {
    [(AKAccountManager *)v103->_accountManager setReachableEmailAddresses:v83 forAccount:location[0]];
    v100 = 1;
  }

  v28 = [v101 hasUsedAuthorization];
  v29 = [v28 BOOLValue];
  _objc_release(v28);
  v80 = v29;
  v79 = [(AKAccountManager *)v103->_accountManager authorizationUsedForAccount:location[0]];
  v30 = [v101 hasUsedAuthorization];
  v31 = 0;
  if (v30)
  {
    v31 = (v80 & 1) != (v79 & 1);
  }

  _objc_release(v30);
  if (v31)
  {
    [(AKAccountManager *)v103->_accountManager setAuthorizationUsed:v80 & 1 forAccount:location[0]];
    v100 = 1;
  }

  v24 = [v101 privateAttestationEnabled];
  v25 = [v24 BOOLValue];
  _objc_release(v24);
  v78 = v25;
  v77 = [(AKAccountManager *)v103->_accountManager privateAttestationEnabledForAccount:location[0]];
  v26 = [v101 privateAttestationEnabled];
  v27 = 0;
  if (v26)
  {
    v27 = (v78 & 1) != (v77 & 1);
  }

  _objc_release(v26);
  if (v27)
  {
    [(AKAccountManager *)v103->_accountManager setPrivateAttestationEnabled:v78 & 1 forAccount:location[0]];
    v100 = 1;
  }

  v20 = [v101 isUnderage];
  v21 = [v20 BOOLValue];
  _objc_release(v20);
  v76 = v21;
  v75 = [(AKAccountManager *)v103->_accountManager userUnderAgeForAccount:location[0]];
  v22 = [v101 isUnderage];
  v23 = 0;
  if (v22)
  {
    v23 = (v76 & 1) != (v75 & 1);
  }

  _objc_release(v22);
  if (v23)
  {
    [(AKAccountManager *)v103->_accountManager setUserUnderage:v76 & 1 forAccount:location[0]];
    v100 = 1;
  }

  v16 = [v101 isEligibleForSafetyScreen];
  v17 = [v16 BOOLValue];
  _objc_release(v16);
  v74 = v17;
  v73 = [(AKAccountManager *)v103->_accountManager isEligibleForSafetyScreenForAccount:location[0]];
  v18 = [v101 isEligibleForSafetyScreen];
  v19 = 0;
  if (v18)
  {
    v19 = (v74 & 1) != (v73 & 1);
  }

  _objc_release(v18);
  if (v19)
  {
    [(AKAccountManager *)v103->_accountManager setIsEligibleForSafetyScreen:v74 & 1 forAccount:location[0]];
    v100 = 1;
  }

  v13 = [v101 isSiwaForChildEnabled];
  v14 = [v13 BOOLValue];
  _objc_release(v13);
  v72 = v14;
  v71 = [(AKAccountManager *)v103->_accountManager isSiwaEnabledForChildAccount:location[0]];
  v70 = [(AKAccountManager *)v103->_accountManager userUnderAgeForAccount:location[0]];
  v68 = 0;
  v15 = 0;
  if (v70)
  {
    v69 = [v101 isSiwaForChildEnabled];
    v68 = 1;
    v15 = 0;
    if (v69)
    {
      v15 = (v72 & 1) != (v71 & 1);
    }
  }

  if (v68)
  {
    _objc_release(v69);
  }

  if (v15)
  {
    [(AKAccountManager *)v103->_accountManager setIsSiwaEnabled:v72 & 1 forChildAccount:location[0]];
    v100 = 1;
  }

  v9 = [v101 isSenior];
  v10 = [v9 BOOLValue];
  _objc_release(v9);
  v67 = v10;
  v66 = [(AKAccountManager *)v103->_accountManager userIsSeniorForAccount:location[0]];
  v11 = [v101 isSenior];
  v12 = 0;
  if (v11)
  {
    v12 = (v67 & 1) != (v66 & 1);
  }

  _objc_release(v11);
  if (v12)
  {
    [(AKAccountManager *)v103->_accountManager setUserIsSenior:v67 & 1 forAccount:location[0]];
    v100 = 1;
  }

  v65 = [v101 ageOfMajority];
  v64 = [(AKAccountManager *)v103->_accountManager ageOfMajorityForAccount:location[0]];
  if (v65 && v65 != v64)
  {
    [(AKAccountManager *)v103->_accountManager setAgeOfMajority:v65 forAccount:location[0]];
    v100 = 1;
  }

  v63 = [v101 canAttestAge];
  v62 = [(AKAccountManager *)v103->_accountManager canAttestAgeForAccount:location[0]];
  if (v63 && v62 != v63)
  {
    [(AKAccountManager *)v103->_accountManager setCanAttestAge:v63 forAccount:location[0]];
    v100 = 1;
  }

  v61 = [v101 appleIDCountryCode];
  v60 = [(AKAccountManager *)v103->_accountManager appleIDCountryCodeForAccount:location[0]];
  if (v61 && !sub_1000E9B2C(v61, v60))
  {
    [(AKAccountManager *)v103->_accountManager setAppleIDCountryCode:v61 forAccount:location[0]];
    v100 = 1;
  }

  v59 = [v101 isProximityAuthEligible];
  v58 = [NSNumber numberWithBool:[(AKAccountManager *)v103->_accountManager isProximityAuthEligible:location[0]]];
  if (v59 && v59 != v58)
  {
    accountManager = v103->_accountManager;
    v4 = [v59 BOOLValue];
    [(AKAccountManager *)accountManager setIsProximityAuthEligible:v4 forAccount:location[0]];
    v100 = 1;
  }

  v57 = [v101 userAgeRange];
  v56 = [(AKAccountManager *)v103->_accountManager userAgeRangeForAccount:location[0]];
  if (v57 && v57 != v56)
  {
    [(AKAccountManager *)v103->_accountManager setUserAgeRange:v57 forAccount:location[0]];
    v100 = 1;
  }

  v55 = [v101 authorizedApplicationsListVersion];
  v54 = [(AKAccountManager *)v103->_accountManager altDSIDForAccount:location[0]];
  queue = dispatch_get_global_queue(21, 0);
  v46 = _NSConcreteStackBlock;
  v47 = -1073741824;
  v48 = 0;
  v49 = sub_1000EE744;
  v50 = &unk_10031F050;
  v51 = _objc_retain(v55);
  v52 = _objc_retain(v54);
  v53 = _objc_retain(v103);
  dispatch_async(queue, &v46);
  _objc_release(queue);
  v7 = v100;
  objc_storeStrong(&v53, 0);
  objc_storeStrong(&v52, 0);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(&v54, 0);
  objc_storeStrong(&v55, 0);
  objc_storeStrong(&v58, 0);
  objc_storeStrong(&v59, 0);
  objc_storeStrong(&v60, 0);
  objc_storeStrong(&v61, 0);
  objc_storeStrong(&v62, 0);
  objc_storeStrong(&v63, 0);
  objc_storeStrong(&v64, 0);
  objc_storeStrong(&v65, 0);
  objc_storeStrong(&v81, 0);
  objc_storeStrong(&v82, 0);
  objc_storeStrong(&v83, 0);
  objc_storeStrong(&v84, 0);
  objc_storeStrong(&v85, 0);
  objc_storeStrong(&v86, 0);
  objc_storeStrong(&v87, 0);
  objc_storeStrong(&v88, 0);
  objc_storeStrong(&v89, 0);
  objc_storeStrong(&v90, 0);
  objc_storeStrong(&v91, 0);
  objc_storeStrong(&v92, 0);
  objc_storeStrong(&v93, 0);
  objc_storeStrong(&v101, 0);
  objc_storeStrong(location, 0);
  return v7 & 1;
}

- (BOOL)_trustedContactPropertiesChangedForAccount:(id)a3 userInformation:(id)a4
{
  v65 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v63 = 0;
  objc_storeStrong(&v63, a4);
  v62 = 0;
  v33 = [v63 canHaveCustodian];
  v34 = [v33 BOOLValue];
  _objc_release(v33);
  v61 = v34;
  v60 = [(AKAccountManager *)v65->_accountManager canHaveCustodianForAccount:location[0]];
  v35 = [v63 canHaveCustodian];
  v36 = 0;
  if (v35)
  {
    v36 = (v61 & 1) != (v60 & 1);
  }

  _objc_release(v35);
  if (v36)
  {
    [(AKAccountManager *)v65->_accountManager setCanHaveCustodian:v61 & 1 forAccount:location[0]];
    v62 = 1;
  }

  v28 = [v63 canBeCustodian];
  v29 = [v28 BOOLValue];
  _objc_release(v28);
  v59 = v29;
  v58 = [(AKAccountManager *)v65->_accountManager canBeCustodianForAccount:location[0]];
  v30 = [v63 canBeCustodian];
  v31 = 0;
  if (v30)
  {
    v31 = (v59 & 1) != (v58 & 1);
  }

  _objc_release(v30);
  if (v31)
  {
    [(AKAccountManager *)v65->_accountManager setCanBeCustodian:v59 & 1 forAccount:location[0]];
    v62 = 1;
  }

  v24 = [v63 custodianEnabled];
  v25 = [v24 BOOLValue];
  _objc_release(v24);
  v57 = v25;
  v56 = [(AKAccountManager *)v65->_accountManager custodianEnabledForAccount:location[0]];
  v26 = [v63 custodianEnabled];
  v27 = 0;
  if (v26)
  {
    v27 = (v57 & 1) != (v56 & 1);
  }

  _objc_release(v26);
  if (v27)
  {
    [(AKAccountManager *)v65->_accountManager setCustodianEnabled:v57 & 1 forAccount:location[0]];
    v62 = 1;
  }

  v20 = [v63 canHaveBeneficiary];
  v21 = [v20 BOOLValue];
  _objc_release(v20);
  v55 = v21;
  v54 = [(AKAccountManager *)v65->_accountManager canHaveBeneficiaryForAccount:location[0]];
  v22 = [v63 canHaveBeneficiary];
  v23 = 0;
  if (v22)
  {
    v23 = (v55 & 1) != (v54 & 1);
  }

  _objc_release(v22);
  if (v23)
  {
    [(AKAccountManager *)v65->_accountManager setCanHaveBeneficiary:v55 & 1 forAccount:location[0]];
    v62 = 1;
  }

  v16 = [v63 canBeBeneficiary];
  v17 = [v16 BOOLValue];
  _objc_release(v16);
  v53 = v17;
  v52 = [(AKAccountManager *)v65->_accountManager canBeBeneficiaryForAccount:location[0]];
  v18 = [v63 canBeBeneficiary];
  v19 = 0;
  if (v18)
  {
    v19 = (v53 & 1) != (v52 & 1);
  }

  _objc_release(v18);
  if (v19)
  {
    [(AKAccountManager *)v65->_accountManager setCanBeBeneficiary:v53 & 1 forAccount:location[0]];
    v62 = 1;
  }

  v51 = [v63 custodianLastModified];
  v50 = [(AKAccountManager *)v65->_accountManager custodianLastModifiedForAccount:location[0]];
  if (v51 && v51 != v50)
  {
    [(AKAccountManager *)v65->_accountManager setCustodianLastModified:v51 forAccount:location[0]];
    v62 = 1;
  }

  v49 = [v63 beneficiaryLastModified];
  v48 = [(AKAccountManager *)v65->_accountManager beneficiaryLastModifiedForAccount:location[0]];
  if (v49 && v49 != v48)
  {
    [(AKAccountManager *)v65->_accountManager setBeneficiaryLastModified:v49 forAccount:location[0]];
    v62 = 1;
  }

  v47 = [v63 custodianInfos];
  v46 = [(AKAccountManager *)v65->_accountManager custodianInfosForAccount:location[0]];
  v45 = objc_retainBlock(&stru_100323250);
  if (v47)
  {
    v4 = [v47 sortedArrayUsingComparator:v45];
    v5 = v47;
    v47 = v4;
    _objc_release(v5);
  }

  if (v46)
  {
    v6 = [v46 sortedArrayUsingComparator:v45];
    v7 = v46;
    v46 = v6;
    _objc_release(v7);
  }

  if (v47 && (!v46 || ![v47 isEqualToArray:v46]))
  {
    [(AKAccountManager *)v65->_accountManager setCustodianInfos:v47 forAccount:location[0]];
    v62 = 1;
  }

  v44 = [v63 beneficiaryInfo];
  v43 = [(AKAccountManager *)v65->_accountManager beneficiaryInfoForAccount:location[0]];
  v42 = [AKBeneficiaryUpdater removeWrappedKeyFrom:v43];
  v41 = objc_retainBlock(&stru_100323270);
  if (v44)
  {
    v8 = [v44 sortedArrayUsingComparator:v41];
    v9 = v44;
    v44 = v8;
    _objc_release(v9);
  }

  if (v42)
  {
    v10 = [v42 sortedArrayUsingComparator:v41];
    v11 = v42;
    v42 = v10;
    _objc_release(v11);
  }

  if (!v42 || ![v44 isEqualToArray:v42])
  {
    v40 = _AKLogSystem();
    v39 = 2;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      log = v40;
      type = v39;
      sub_10001CEEC(v38);
      _os_log_debug_impl(&_mh_execute_header, log, type, "New beneficiaryInfo is different than the existing data. Calling AKBeneficiaryUpdater...", v38, 2u);
    }

    objc_storeStrong(&v40, 0);
    v37 = [AKBeneficiaryUpdater saveWrappedKeyInKeychain:v44];
    [(AKAccountManager *)v65->_accountManager setBeneficiaryInfo:v37 forAccount:location[0]];
    v62 = 1;
    objc_storeStrong(&v37, 0);
  }

  v13 = v62;
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(&v63, 0);
  objc_storeStrong(location, 0);
  return v13 & 1;
}

- (BOOL)_adpCohortChangedForAccount:(id)a3 userInformation:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = 0;
  v9 = [v11 adpCohort];
  v8 = [(AKAccountManager *)v13->_accountManager adpCohortForAccount:location[0]];
  if (v9)
  {
    if (!v8 || (v6 = [v9 integerValue], v6 != objc_msgSend(v8, "integerValue")))
    {
      [(AKAccountManager *)v13->_accountManager setADPCohort:v9 forAccount:location[0]];
      v10 = 1;
    }
  }

  v5 = v10;
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (BOOL)_idmsWalrusStatusChangedForAccount:(id)a3 userInformation:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = 0;
  v9 = [v11 idmsWalrusStatus];
  v8 = [(AKAccountManager *)v13->_accountManager idmsWalrusStatusForAccount:location[0]];
  if (v9)
  {
    if (!v8 || (v6 = [v9 integerValue], v6 != objc_msgSend(v8, "integerValue")))
    {
      [(AKAccountManager *)v13->_accountManager setIdmsWalrusStatus:v9 forAccount:location[0]];
      v10 = 1;
    }
  }

  v5 = v10;
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (void)_refreshApplicationInformationForAltDSID:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = os_transaction_create();
  v12 = +[AKApplicationInformationController sharedController];
  v4 = v12;
  v3 = location[0];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1000EFC88;
  v9 = &unk_100323298;
  v10 = _objc_retain(location[0]);
  v11 = _objc_retain(v13);
  [v4 fetchAppInformationWithAltDSID:v3 client:0 completion:?];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)refreshAccountUsernamesForAltDSID:(id)a3 withUserInformation:(id)a4
{
  v30 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v28 = 0;
  objc_storeStrong(&v28, a4);
  if (location[0])
  {
    v6 = [v28 allAccountNames];
    v22 = 0;
    v20 = 0;
    v7 = 0;
    if (![v6 count])
    {
      v23 = [v28 userInformationRepresentation];
      v22 = 1;
      v21 = [v23 phoneAsAppleID];
      v20 = 1;
      v7 = [v21 BOOLValue] == 0;
    }

    if (v20)
    {
      _objc_release(v21);
    }

    if (v22)
    {
      _objc_release(v23);
    }

    _objc_release(v6);
    if (v7)
    {
      v19 = _AKLogSystem();
      v18 = 16;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v4 = v19;
        v5 = v18;
        sub_10001CEEC(v17);
        _os_log_error_impl(&_mh_execute_header, v4, v5, "Unable to refresh because account name list is nil/empty.", v17, 2u);
      }

      objc_storeStrong(&v19, 0);
      v24 = 1;
    }

    else
    {
      oslog = _AKLogSystem();
      v15 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        sub_10001CE98(v31, 1752392040, location[0]);
        _os_log_impl(&_mh_execute_header, oslog, v15, "Updating cached properties for Apple ID accounts with altDSID: %{mask.hash}@", v31, 0x16u);
      }

      objc_storeStrong(&oslog, 0);
      v14 = 0;
      v13 = [(AKAccountManager *)v30->_accountManager authKitAccountWithAltDSID:location[0] error:0];
      if (v13)
      {
        v14 = (v14 | [(AKUserInfoController *)v30 _updateAccount:v13 withUserInformationResponse:v28 modifyAliases:1]) != 0;
      }

      v12 = [(AKAccountManager *)v30->_accountManager appleIDAccountWithAltDSID:location[0]];
      if (v12)
      {
        v14 = (v14 | [(AKUserInfoController *)v30 _updateAccount:v12 withUserInformationResponse:v28 modifyAliases:0]) != 0;
      }

      v11 = [(AKAccountManager *)v30->_accountManager iCloudAccountForAltDSID:location[0]];
      if (v11)
      {
        v14 = (v14 | [(AKUserInfoController *)v30 _updateAccount:v11 withUserInformationResponse:v28 modifyAliases:0]) != 0;
      }

      if (v14)
      {
        [(AKUserInfoController *)v30 _broadcastEmailChangeNotification];
      }

      objc_storeStrong(&v11, 0);
      objc_storeStrong(&v12, 0);
      objc_storeStrong(&v13, 0);
      v24 = 0;
    }
  }

  else
  {
    v27 = _AKLogSystem();
    v26 = 16;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      log = v27;
      type = v26;
      sub_10001CEEC(v25);
      _os_log_error_impl(&_mh_execute_header, log, type, "Unable to refresh because Nil altDSID", v25, 2u);
    }

    objc_storeStrong(&v27, 0);
    v24 = 1;
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

- (id)previousAccountInfoRefreshDateForAccount:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = +[AKAccountManager sharedInstance];
  v6 = [(AKAccountManager *)v5 previousAccountInfoRefreshDateForAccount:location[0]];
  _objc_release(v5);
  if (v6)
  {
    v8 = _objc_retain(v6);
  }

  else
  {
    v8 = [AKUserDefaults objectForKey:AKLastEmailListRequestDateKey];
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  v3 = v8;

  return v3;
}

- (void)_setPreviousAccountInfoRefreshDate:(id)a3 forAccount:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v6 = _AKLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v9, "[AKUserInfoController _setPreviousAccountInfoRefreshDate:forAccount:]", 1231);
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s (%d) called", v9, 0x12u);
  }

  objc_storeStrong(&v6, 0);
  v4 = +[AKAccountManager sharedInstance];
  [(AKAccountManager *)v4 setPreviousAccountInfoRefreshDate:location[0] forAccount:v7];
  _objc_release(v4);
  [AKUserDefaults setValue:0 forKey:AKLastEmailListRequestDateKey];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_updateAccount:(id)a3 withUserInformationResponse:(id)a4 modifyAliases:(BOOL)a5
{
  v36 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v34 = 0;
  objc_storeStrong(&v34, a4);
  v33 = a5;
  v32 = 0;
  v17 = [v34 userInformationRepresentation];
  v18 = [v17 accountName];
  v30 = 0;
  v28 = 0;
  v26 = 0;
  v19 = 0;
  if (v18)
  {
    v31 = [v34 userInformationRepresentation];
    v30 = 1;
    v29 = [v31 accountName];
    v28 = 1;
    v27 = [location[0] username];
    v26 = 1;
    v19 = [v29 isEqualToString:?] == 0;
  }

  if (v26)
  {
    _objc_release(v27);
  }

  if (v28)
  {
    _objc_release(v29);
  }

  if (v30)
  {
    _objc_release(v31);
  }

  _objc_release(v18);
  _objc_release(v17);
  if (v19)
  {
    v25 = _AKLogSystem();
    v24 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v38, location[0]);
      _os_log_impl(&_mh_execute_header, v25, v24, "Username of account %@ is no longer a valid", v38, 0xCu);
    }

    objc_storeStrong(&v25, 0);
    v12 = location[0];
    v14 = [v34 userInformationRepresentation];
    v13 = [v14 accountName];
    [v12 setUsername:?];
    _objc_release(v13);
    _objc_release(v14);
    v32 = 1;
  }

  if (v33)
  {
    v23 = [(AKAccountManager *)v36->_accountManager aliasesForAccount:location[0]];
    v22 = [NSSet setWithArray:v23];
    v11 = [v34 userInformationRepresentation];
    v10 = [v11 accountAliases];
    v21 = [NSSet setWithArray:?];
    _objc_release(v10);
    _objc_release(v11);
    if (![v21 isEqual:v22])
    {
      v20 = _AKLogSystem();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        sub_10001B098(v37, location[0], v21);
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Updating full list of account names for %@ to: %@", v37, 0x16u);
      }

      objc_storeStrong(&v20, 0);
      accountManager = v36->_accountManager;
      v9 = [v34 userInformationRepresentation];
      v8 = [v9 accountAliases];
      [AKAccountManager setAliases:"setAliases:forAccount:" forAccount:?];
      _objc_release(v8);
      _objc_release(v9);
      v32 = 1;
    }

    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v23, 0);
  }

  if (v32)
  {
    [(AKAccountManager *)v36->_accountManager saveAccount:location[0] error:0];
  }

  v6 = v32;
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
  return v6 & 1;
}

- (void)_broadcastEmailChangeNotification
{
  location[2] = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v5, "[AKUserInfoController _broadcastEmailChangeNotification]", 1268);
    _os_log_debug_impl(&_mh_execute_header, location[0], OS_LOG_TYPE_DEBUG, "%s (%d) called", v5, 0x12u);
  }

  objc_storeStrong(location, 0);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, AKAppleIDEmailsDidChangeNotification, 0, 0, 1u);
  v3 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v3 postNotificationName:AKAppleIDEmailsDidChangeNotification object:0];
  _objc_release(v3);
}

- (void)sendUserInfoChangeNotificationWithPayload:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(AKUserInfoController *)v4 _sendNotification:AKUserInfoChangedNotification withUserInfo:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_sendNotification:(id)a3 withUserInfo:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = _AKLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    sub_10001B098(v10, location[0], v8);
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Posting %@ with payload: %@", v10, 0x16u);
  }

  objc_storeStrong(&v7, 0);
  v4 = +[NSDistributedNotificationCenter defaultCenter];
  [(NSDistributedNotificationCenter *)v4 postNotificationName:location[0] object:0 userInfo:v8 deliverImmediately:1];
  _objc_release(v4);
  v5 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v5 postNotificationName:location[0] object:0 userInfo:v8];
  _objc_release(v5);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (id)authorizationUserInformationForRequest:(id)a3 shouldRequestUpdate:(BOOL *)a4 error:(id *)a5
{
  v112 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v110 = a4;
  v109 = a5;
  v108 = _AKLogSiwa();
  v107 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v118, location[0]);
    _os_log_debug_impl(&_mh_execute_header, v108, v107, "Authorization requesting user information for request: %@", v118, 0xCu);
  }

  objc_storeStrong(&v108, 0);
  v106 = [location[0] authkitAccount];
  v105 = [(AKAccountManager *)v112->_accountManager authorizationUsedForAccount:v106];
  v104 = [(AKAccountManager *)v112->_accountManager verifiedPrimaryEmailForAccount:v106];
  v103 = [(AKAccountManager *)v112->_accountManager phoneAsAppleIDForAccount:v106];
  v102 = [(AKAccountManager *)v112->_accountManager userUnderAgeForAccount:v106];
  v101 = [(AKAccountManager *)v112->_accountManager isSiwaEnabledForChildAccount:v106];
  v100 = [(AKAccountManager *)v112->_accountManager userIsSeniorForAccount:v106];
  v99 = [(AKAccountManager *)v112->_accountManager ageOfMajorityForAccount:v106];
  v98 = [(AKAccountManager *)v112->_accountManager givenNameForAccount:v106];
  v97 = [(AKAccountManager *)v112->_accountManager familyNameForAccount:v106];
  v96 = [(AKAccountManager *)v112->_accountManager primaryEmailAddressForAccount:v106];
  v95 = [(AKAccountManager *)v112->_accountManager altDSIDForAccount:v106];
  v94 = [(AKAccountManager *)v112->_accountManager iCloudAccountForAltDSID:v95];
  if (!v98 || !v97)
  {
    v93 = _AKLogSiwa();
    v92 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
    {
      v56 = v93;
      v57 = v92;
      sub_10001CEEC(v91);
      _os_log_impl(&_mh_execute_header, v56, v57, "The Given/Family Name for the current user was not found in the AuthKit account", v91, 2u);
    }

    objc_storeStrong(&v93, 0);
    v5 = [(AKAccountManager *)v112->_accountManager givenNameForAccount:v94];
    v6 = v98;
    v98 = v5;
    _objc_release(v6);
    v7 = [(AKAccountManager *)v112->_accountManager familyNameForAccount:v94];
    v8 = v97;
    v97 = v7;
    _objc_release(v8);
    if (v110)
    {
      *v110 = 1;
    }
  }

  v90 = objc_alloc_init(AKUserInformation);
  [v90 setGivenName:v98];
  [v90 setFamilyName:v97];
  v44 = [NSNumber numberWithBool:v105 & 1];
  [v90 setHasUsedAuthorization:?];
  _objc_release(v44);
  v46 = [v106 username];
  v45 = [AKUsernameFormatter formattedUsernameFromUsername:?];
  [v90 setAccountName:?];
  _objc_release(v45);
  _objc_release(v46);
  [v90 setPrimaryEmailAddress:v96];
  v47 = [NSNumber numberWithBool:v102 & 1];
  [v90 setIsUnderage:?];
  _objc_release(v47);
  v48 = [NSNumber numberWithBool:v101 & 1];
  [v90 setIsSiwaForChildEnabled:?];
  _objc_release(v48);
  v49 = [NSNumber numberWithBool:v100 & 1];
  [v90 setIsSenior:?];
  _objc_release(v49);
  [v90 setAgeOfMajority:v99];
  [v90 setAppleIDSecurityLevel:{-[AKAccountManager securityLevelForAccount:](v112->_accountManager, "securityLevelForAccount:", v106)}];
  v50 = [(AKAccountManager *)v112->_accountManager hasSOSActiveDeviceForAccount:v106];
  [v90 setHasSOSActiveDevice:?];
  _objc_release(v50);
  v51 = [(AKAccountManager *)v112->_accountManager isSOSNeededForAccount:v106];
  [v90 setSOSNeeded:?];
  _objc_release(v51);
  v52 = [(AKAccountManager *)v112->_accountManager configDataVersionForAccount:v106];
  [v90 setConfigDataVersion:?];
  _objc_release(v52);
  v53 = [(AKAccountManager *)v112->_accountManager hasModernRecoveryKeyForAccount:v106];
  [v90 setHasModernRecoveryKey:?];
  _objc_release(v53);
  v54 = [(AKAccountManager *)v112->_accountManager get3PRegulatoryOverride:v106];
  [v90 setThirdPartyRegulatoryOverride:?];
  _objc_release(v54);
  v55 = [(AKAccountManager *)v112->_accountManager adpCohortForAccount:v106];
  [v90 setAdpCohort:?];
  _objc_release(v55);
  if ([v90 isManagedAppleID])
  {
    v40 = [NSNumber numberWithUnsignedInteger:[(AKAccountManager *)v112->_accountManager managedOrganizationTypeForAccount:v106]];
    [v90 setManagedOrganizationType:?];
    _objc_release(v40);
    v41 = [(AKAccountManager *)v112->_accountManager managedOrganizationNameForAccount:v106];
    [v90 setManagedOrganizationName:?];
    _objc_release(v41);
    v42 = [NSNumber numberWithBool:[(AKAccountManager *)v112->_accountManager isNotificationEmailAvailableForAccount:v106]];
    [v90 setIsNotificationEmailAvailable:?];
    _objc_release(v42);
    v43 = [(AKAccountManager *)v112->_accountManager notificationEmailForAccount:v106];
    [v90 setNotificationEmail:?];
    _objc_release(v43);
    [v90 setAuthMode:{-[AKAccountManager authenticationModeForAccount:](v112->_accountManager, "authenticationModeForAccount:", v106)}];
  }

  v38 = [location[0] requestedScopes];
  v39 = [v38 containsObject:AKAuthorizationScopeEmail];
  _objc_release(v38);
  v89 = v39;
  if (v39)
  {
    v85 = _AKLogSystem();
    v84 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
    {
      v36 = v85;
      v37 = v84;
      sub_10001CEEC(v83);
      _os_log_debug_impl(&_mh_execute_header, v36, v37, "Application is requesting email for this authorization fetching email properties from account", v83, 2u);
    }

    objc_storeStrong(&v85, 0);
    v82 = [(AKAccountManager *)v112->_accountManager forwardingEmailForAccount:v106];
    v81 = [(AKAccountManager *)v112->_accountManager selectedPrivateEmailForAccount:v106];
    v80 = [(AKAccountManager *)v112->_accountManager selectedAuthorizationEmailForAccount:v106];
    v32 = [(AKAccountManager *)v112->_accountManager combinedAliasesAndReachableEmailsForAccount:v106];
    v79 = [v32 mutableCopy];
    _objc_release(v32);
    v33 = [NSNumber numberWithBool:v81 & 1];
    [v90 setPreviouslyWantedPrivateEmail:?];
    _objc_release(v33);
    v34 = [location[0] requestedScopes];
    v35 = [v34 containsObject:AKAuthorizationScopeEmail];
    _objc_release(v34);
    if (v35)
    {
      v29 = objc_opt_class();
      v31 = +[AKURLBag sharedBag];
      v30 = [v31 configurationAtKey:@"SIWADefaultHME"];
      v78 = sub_1000EF638(v29, v30);
      _objc_release(v30);
      _objc_release(v31);
      if ([v78 count])
      {
        v77 = [NSSet setWithArray:v78];
        v27 = [location[0] clientID];
        v28 = [v77 containsObject:?];
        _objc_release(v27);
        if (v28)
        {
          v26 = [NSNumber numberWithBool:1];
          [v90 setPreviouslyWantedPrivateEmail:?];
          _objc_release(v26);
          oslog = _AKLogSiwa();
          v75 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
          {
            v25 = [location[0] clientID];
            sub_1000194D4(v116, v25);
            _os_log_debug_impl(&_mh_execute_header, oslog, v75, "previouslyWantedPrivateEmail for client ID %@", v116, 0xCu);
            _objc_release(v25);
          }

          objc_storeStrong(&oslog, 0);
        }

        objc_storeStrong(&v77, 0);
      }

      objc_storeStrong(&v78, 0);
    }

    v23 = +[AKConfiguration sharedConfiguration];
    v24 = [v23 internalSiwADefaultHME] == 1;
    _objc_release(v23);
    v74 = v24;
    if (v24)
    {
      v22 = [NSNumber numberWithInt:1];
      [v90 setPreviouslyWantedPrivateEmail:?];
      _objc_release(v22);
    }

    [v90 setPreviouslySelectedEmail:v80];
    if (v103)
    {
      v73 = _AKLogSiwa();
      v72 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v73;
        v21 = v72;
        sub_10001CEEC(v71);
        _os_log_impl(&_mh_execute_header, v20, v21, "This is a Mako Account, Ignoring primary email address verification", v71, 2u);
      }

      objc_storeStrong(&v73, 0);
      if ([v79 count])
      {
        v70 = _AKLogSiwa();
        v69 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
        {
          v18 = v70;
          v19 = v69;
          sub_10001CEEC(v68);
          _os_log_debug_impl(&_mh_execute_header, v18, v19, "Mako account has reachable email addresses", v68, 2u);
        }

        objc_storeStrong(&v70, 0);
        [v90 setReachableEmails:v79];
        if (v82)
        {
          [v90 setForwardingEmail:v82];
        }

        else
        {
          v17 = [v79 firstObject];
          [v90 setForwardingEmail:?];
          _objc_release(v17);
        }
      }

      v67 = _AKLogSiwa();
      v66 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000194D4(v115, v90);
        _os_log_impl(&_mh_execute_header, v67, v66, "Completed getting UserInformation for Mako account with UserInfo:\n%@", v115, 0xCu);
      }

      objc_storeStrong(&v67, 0);
      v113 = _objc_retain(v90);
      v86 = 1;
    }

    else
    {
      if (!v82)
      {
        if (v104)
        {
          objc_storeStrong(&v82, v96);
        }

        else
        {
          v65 = _AKLogSiwa();
          v64 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            v15 = v65;
            v16 = v64;
            sub_10001CEEC(v63);
            _os_log_error_impl(&_mh_execute_header, v15, v16, "Missing primary email verification state.", v63, 2u);
          }

          objc_storeStrong(&v65, 0);
          v13 = [v90 reachableEmails];
          v61 = 0;
          v14 = 1;
          if (v13)
          {
            v62 = [v90 reachableEmails];
            v61 = 1;
            v14 = [v62 count] == 0;
          }

          if (v61)
          {
            _objc_release(v62);
          }

          _objc_release(v13);
          if (v14)
          {
            if (v109)
            {
              v12 = [NSError ak_errorWithCode:-7072];
              v9 = v12;
              *v109 = v12;
            }

            v113 = 0;
            v86 = 1;
            goto LABEL_59;
          }
        }
      }

      [v90 setForwardingEmail:v82];
      if (v82)
      {
        if ([v79 containsObject:v82])
        {
          [v79 removeObject:v82];
        }

        [v79 insertObject:v82 atIndex:0];
      }

      [v90 setReachableEmails:v79];
      v60 = _AKLogSiwa();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000194D4(v114, v90);
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Completed getting UserInformation for account with UserInfo:\n%@", v114, 0xCu);
      }

      objc_storeStrong(&v60, 0);
      v113 = _objc_retain(v90);
      v86 = 1;
    }

LABEL_59:
    objc_storeStrong(&v79, 0);
    objc_storeStrong(&v80, 0);
    objc_storeStrong(&v82, 0);
    goto LABEL_60;
  }

  v88 = _AKLogSiwa();
  v87 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v117, v90);
    _os_log_impl(&_mh_execute_header, v88, v87, "Application is not requesting email for this authorization early return with userInfo:\n%@", v117, 0xCu);
  }

  objc_storeStrong(&v88, 0);
  v113 = _objc_retain(v90);
  v86 = 1;
LABEL_60:
  objc_storeStrong(&v90, 0);
  objc_storeStrong(&v94, 0);
  objc_storeStrong(&v95, 0);
  objc_storeStrong(&v96, 0);
  objc_storeStrong(&v97, 0);
  objc_storeStrong(&v98, 0);
  objc_storeStrong(&v99, 0);
  objc_storeStrong(&v106, 0);
  objc_storeStrong(location, 0);
  v10 = v113;

  return v10;
}

- (BOOL)_additionalInfoChangedForAccount:(id)a3 userInformation:(id)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = 0;
  v13 = [v15 additionalInfo];
  v12 = [(AKAccountManager *)v17->_accountManager additionalInfoForAccount:location[0]];
  if (v13 && ![v13 isEqualToDictionary:v12])
  {
    [(AKAccountManager *)v17->_accountManager setAdditionalInfo:v13 forAccount:location[0]];
    v14 = 1;
  }

  v6 = [v15 hasMDM];
  v7 = [v6 BOOLValue];
  _objc_release(v6);
  v11 = [(AKAccountManager *)v17->_accountManager hasMDMForAccount:location[0]];
  v8 = [v15 hasMDM];
  v9 = 0;
  if (v8)
  {
    v9 = (v7 & 1) != (v11 & 1);
  }

  _objc_release(v8);
  if (v9)
  {
    [(AKAccountManager *)v17->_accountManager setHasMDM:v7 & 1 forAccount:location[0]];
    v14 = 1;
  }

  v5 = v14;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (BOOL)_trustedPhoneNumbersChangedForAccount:(id)a3 userInformation:(id)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = 0;
  v10 = [v12 trustedPhoneNumbers];
  v9 = [NSSet setWithArray:v10];
  v7 = [(AKAccountManager *)v14->_accountManager trustedPhoneNumbersForAccount:location[0]];
  v8 = [NSSet setWithArray:?];
  _objc_release(v7);
  if (v10 && ![v9 isEqualToSet:v8])
  {
    [(AKAccountManager *)v14->_accountManager setTrustedPhoneNumbers:v10 forAccount:location[0]];
    v11 = 1;
  }

  v5 = v11;
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (BOOL)_securityKeysChangedForAccount:(id)a3 userInformation:(id)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = 0;
  v10 = [v12 securityKeys];
  v9 = [NSSet setWithArray:v10];
  v7 = [(AKAccountManager *)v14->_accountManager securityKeysForAccount:location[0]];
  v8 = [NSSet setWithArray:?];
  _objc_release(v7);
  if (v10 && ![v9 isEqualToSet:v8])
  {
    [(AKAccountManager *)v14->_accountManager setSecurityKeys:v10 forAccount:location[0]];
    v11 = 1;
  }

  v5 = v11;
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (BOOL)_loginHandlesChangedForAccount:(id)a3 userInformation:(id)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = 0;
  v10 = [v12 loginHandles];
  v9 = [NSSet setWithArray:v10];
  v7 = [(AKAccountManager *)v14->_accountManager loginHandlesForAccount:location[0]];
  v8 = [NSSet setWithArray:?];
  _objc_release(v7);
  if (v10 && ![v9 isEqualToSet:v8])
  {
    [(AKAccountManager *)v14->_accountManager setLoginHandles:v10 forAccount:location[0]];
    v11 = 1;
  }

  v5 = v11;
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (BOOL)_managedAppleIDInfoChangedForAccount:(id)a3 userInformation:(id)a4
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  v20 = 0;
  if ([v21 isManagedAppleID])
  {
    v19 = [NSNumber numberWithUnsignedInteger:[(AKAccountManager *)v23->_accountManager managedOrganizationTypeForAccount:location[0]]];
    v18 = [v21 managedOrganizationType];
    if (v18 && ![v18 isEqual:v19])
    {
      v17 = [v18 integerValue];
      [(AKAccountManager *)v23->_accountManager setManagedOrganizationType:v17 forAccount:location[0]];
      v20 = 1;
    }

    v16 = [(AKAccountManager *)v23->_accountManager managedOrganizationNameForAccount:location[0]];
    v15 = [v21 managedOrganizationName];
    if (v15 && ![v15 isEqual:v16])
    {
      [(AKAccountManager *)v23->_accountManager setManagedOrganizationName:v15 forAccount:location[0]];
      v20 = 1;
    }

    v14 = [(AKAccountManager *)v23->_accountManager isNotificationEmailAvailableForAccount:location[0]];
    v6 = [v21 isNotificationEmailAvailable];
    v7 = [v6 BOOLValue];
    _objc_release(v6);
    v13 = v7;
    v8 = [v21 isNotificationEmailAvailable];
    v9 = 0;
    if (v8)
    {
      v9 = (v13 & 1) != (v14 & 1);
    }

    _objc_release(v8);
    if (v9)
    {
      [(AKAccountManager *)v23->_accountManager setIsNotificationEmailAvailable:v13 & 1 forAccount:location[0]];
      v20 = 1;
    }

    v12 = [(AKAccountManager *)v23->_accountManager notificationEmailForAccount:location[0]];
    v11 = [v21 notificationEmail];
    if (v11 && ![v11 isEqual:v12])
    {
      [(AKAccountManager *)v23->_accountManager setNotificationEmail:v11 forAccount:location[0]];
      v20 = 1;
    }

    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
  }

  v5 = v20;
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (void)_refreshDeviceListForAccount:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [AKDeviceListRequester alloc];
  v6 = +[AKDeviceListStoreManager sharedManager];
  v5 = objc_opt_new();
  v4 = +[AKAccountManager sharedInstance];
  v9 = [AKDeviceListRequester initWithStoreManager:v3 cdpFactory:"initWithStoreManager:cdpFactory:accountManager:client:" accountManager:v6 client:v5];
  _objc_release(v4);
  _objc_release(v5);
  _objc_release(v6);
  v8 = objc_alloc_init(AKDeviceListRequestContext);
  v7 = [(AKAccountManager *)v11->_accountManager altDSIDForAccount:location[0]];
  [v8 setAltDSID:?];
  _objc_release(v7);
  [v8 setForceFetch:1];
  [v8 setIncludeUntrustedDevices:1];
  [(AKDeviceListRequester *)v9 fetchDeviceListWithContext:v8 completionHandler:&stru_1003232B8];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_birthYearChangedForAccount:(id)a3 userInformation:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = 0;
  v9 = [(AKAccountManager *)v13->_accountManager birthYearForAccount:location[0]];
  v8 = [v11 birthYear];
  if (v8)
  {
    if (!v9 || (v6 = [v8 integerValue], v6 != objc_msgSend(v9, "integerValue")))
    {
      [(AKAccountManager *)v13->_accountManager setBirthYear:v8 forAccount:location[0]];
      v10 = 1;
    }
  }

  v5 = v10;
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (void)updateBirthdayForAltDSID:(id)a3 userInformation:(id)a4
{
  v44 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v42 = 0;
  objc_storeStrong(&v42, a4);
  v41 = objc_alloc_init(AKBirthDayKeychain);
  v40 = 0;
  v38 = 0;
  v15 = [v41 fetchBirthDayForAltDSID:location[0] error:&v38];
  objc_storeStrong(&v40, v38);
  v39 = v15;
  v18 = [v42 birthMonth];
  v17 = [v42 birthDay];
  v16 = [v42 birthYear];
  v37 = [NSString stringWithFormat:@"%@-%@-%@", v18, v17, v16];
  _objc_release(v16);
  _objc_release(v17);
  _objc_release(v18);
  v36 = objc_alloc_init(NSDateFormatter);
  [v36 setDateFormat:@"MM-dd-yyyy"];
  v35 = objc_alloc_init(NSDate);
  v4 = [v36 dateFromString:v37];
  v5 = v35;
  v35 = v4;
  _objc_release(v5);
  if (v35 != v39)
  {
    v34 = _AKLogSystem();
    v33 = 2;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      log = v34;
      type = v33;
      sub_10001CEEC(v32);
      _os_log_debug_impl(&_mh_execute_header, log, type, "Attempting to update birthday", v32, 2u);
    }

    objc_storeStrong(&v34, 0);
    v31 = 0;
    v30 = 0;
    [v41 updateBirthdayForAltDSID:location[0] userInformation:v42 error:&v30];
    objc_storeStrong(&v31, v30);
    v29 = _AKLogSystem();
    v28 = 2;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v10 = v29;
      v11 = v28;
      sub_10001CEEC(v27);
      _os_log_debug_impl(&_mh_execute_header, v10, v11, "DOB changed. Clearing pendingDOB locally", v27, 2u);
    }

    objc_storeStrong(&v29, 0);
    v26 = [(AKAccountManager *)v44->_accountManager primaryiCloudAccount];
    if (v26)
    {
      [(AKAccountManager *)v44->_accountManager setPendingDOB:0 forAccount:v26];
      v25 = 0;
      accountManager = v44->_accountManager;
      v24 = 0;
      v9 = [(AKAccountManager *)accountManager saveAccount:v26 error:&v24];
      objc_storeStrong(&v25, v24);
      if (v9)
      {
        oslog = _AKLogSystem();
        v20 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
        {
          v7 = oslog;
          v8 = v20;
          sub_10001CEEC(v19);
          _os_log_debug_impl(&_mh_execute_header, v7, v8, "Successfully cleared pendingDOB from Apple Account", v19, 2u);
        }

        objc_storeStrong(&oslog, 0);
      }

      else
      {
        v23 = _AKLogSystem();
        v22 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_1000194D4(v45, v25);
          _os_log_error_impl(&_mh_execute_header, v23, v22, "Failed to save Apple Account: %@", v45, 0xCu);
        }

        objc_storeStrong(&v23, 0);
      }

      objc_storeStrong(&v25, 0);
    }

    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v31, 0);
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
}

- (void)updateUserInformationWithContext:(id)a3 userInformation:(id)a4 client:(id)a5 completion:(id)a6
{
  v39 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v37 = 0;
  objc_storeStrong(&v37, a4);
  v36 = 0;
  objc_storeStrong(&v36, a5);
  v35 = 0;
  objc_storeStrong(&v35, a6);
  v34 = _AKLogSystem();
  v33 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    v10 = [location[0] altDSID];
    sub_10001CE98(v42, 1752392040, v10);
    _os_log_debug_impl(&_mh_execute_header, v34, v33, "Starting server-side user information update for altDSID: %{mask.hash}@", v42, 0x16u);
    _objc_release(v10);
  }

  objc_storeStrong(&v34, 0);
  v32 = 0;
  v31 = 0;
  v9 = [v37 validateForUpdatesWithContext:location[0] error:&v31];
  objc_storeStrong(&v32, v31);
  if (v9)
  {
    v26 = v32;
    v8 = [AKUserInfoUpdateRequestProvider providerWithContext:location[0] userInformation:v37 error:&v26];
    objc_storeStrong(&v32, v26);
    v27 = v8;
    if (v8)
    {
      [v27 setClient:v36];
      v6 = [AKServiceControllerImpl alloc];
      v23 = [(AKServiceControllerImpl *)v6 initWithRequestProvider:v27];
      v7 = v23;
      v14 = _NSConcreteStackBlock;
      v15 = -1073741824;
      v16 = 0;
      v17 = sub_1000F3CB8;
      v18 = &unk_1003232E0;
      v22 = _objc_retain(v35);
      v19 = _objc_retain(location[0]);
      v20 = _objc_retain(v39);
      v21 = _objc_retain(v37);
      [(AKServiceControllerImpl *)v7 executeRequestWithCompletion:&v14];
      objc_storeStrong(&v21, 0);
      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v19, 0);
      objc_storeStrong(&v22, 0);
      objc_storeStrong(&v23, 0);
      v28 = 0;
    }

    else
    {
      v25 = _AKLogSystem();
      v24 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v40, v32);
        _os_log_error_impl(&_mh_execute_header, v25, v24, "Request provider creation failed: %@", v40, 0xCu);
      }

      objc_storeStrong(&v25, 0);
      if (v35)
      {
        (*(v35 + 2))(v35, 0, v32);
      }

      v28 = 1;
    }

    objc_storeStrong(&v27, 0);
  }

  else
  {
    v30 = _AKLogSystem();
    v29 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v41, v32);
      _os_log_error_impl(&_mh_execute_header, v30, v29, "User information validation failed: %@", v41, 0xCu);
    }

    objc_storeStrong(&v30, 0);
    if (v35)
    {
      (*(v35 + 2))(v35, 0, v32);
    }

    v28 = 1;
  }

  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);
}

@end