@interface AKUserInfoController
+ (id)sharedController;
- (AKUserInfoController)init;
- (BOOL)_additionalInfoChangedForAccount:(id)account userInformation:(id)information;
- (BOOL)_adpCohortChangedForAccount:(id)account userInformation:(id)information;
- (BOOL)_authorizationPropertiesChangedForAccount:(id)account userInformation:(id)information;
- (BOOL)_birthYearChangedForAccount:(id)account userInformation:(id)information;
- (BOOL)_deviceListPropertiesChangedForAccount:(id)account userInformation:(id)information;
- (BOOL)_idmsWalrusStatusChangedForAccount:(id)account userInformation:(id)information;
- (BOOL)_loginHandlesChangedForAccount:(id)account userInformation:(id)information;
- (BOOL)_managedAppleIDInfoChangedForAccount:(id)account userInformation:(id)information;
- (BOOL)_passcodeAuthPropertiesChangedForAccount:(id)account userInformation:(id)information;
- (BOOL)_passkeyPropertiesChangedForAccount:(id)account userInformation:(id)information;
- (BOOL)_piggybackingApprovalEligibleChangedForAccount:(id)account userInformation:(id)information;
- (BOOL)_securityKeysChangedForAccount:(id)account userInformation:(id)information;
- (BOOL)_shouldUpdateConfigsForAltDSID:(id)d responseParameters:(id)parameters;
- (BOOL)_trustedContactPropertiesChangedForAccount:(id)account userInformation:(id)information;
- (BOOL)_trustedPhoneNumbersChangedForAccount:(id)account userInformation:(id)information;
- (BOOL)_updateAccount:(id)account withUserInformationResponse:(id)response modifyAliases:(BOOL)aliases;
- (BOOL)_walrusPropertiesChangedForAccount:(id)account userInformation:(id)information;
- (id)_userInfoChangeNotificationDictionaryForAltDSID:(id)d userInformation:(id)information;
- (id)authorizationUserInformationForRequest:(id)request shouldRequestUpdate:(BOOL *)update error:(id *)error;
- (id)previousAccountInfoRefreshDateForAccount:(id)account;
- (void)_broadcastEmailChangeNotification;
- (void)_fetchUserInformationForAltDSID:(id)d client:(id)client dataCenter:(id)center completion:(id)completion;
- (void)_fetchUserInformationWithContext:(id)context client:(id)client dataCenter:(id)center completion:(id)completion;
- (void)_processHideMyEmailForAltDSID:(id)d userInfo:(id)info response:(id)response;
- (void)_processIncomingUserInformationForAltDSID:(id)d userInformation:(id)information;
- (void)_refreshApplicationInformationForAltDSID:(id)d;
- (void)_refreshDeviceListForAccount:(id)account;
- (void)_sendNotification:(id)notification withUserInfo:(id)info;
- (void)_setPreviousAccountInfoRefreshDate:(id)date forAccount:(id)account;
- (void)_syncPrivateEmailsForAltDSID:(id)d client:(id)client userInformation:(id)information completion:(id)completion;
- (void)_updatePrivateEmailsWithInformation:(id)information;
- (void)_updateUserConfigIfNecessaryForAltDSID:(id)d responseParameters:(id)parameters;
- (void)fetchUserInformationForAltDSID:(id)d client:(id)client completion:(id)completion;
- (void)fetchUserInformationWithContext:(id)context client:(id)client completion:(id)completion;
- (void)processPushMessage:(id)message;
- (void)refreshAccountUsernamesForAltDSID:(id)d dataCenter:(id)center;
- (void)refreshAccountUsernamesForAltDSID:(id)d withUserInformation:(id)information;
- (void)sendUserInfoChangeNotificationWithPayload:(id)payload;
- (void)updateBirthdayForAltDSID:(id)d userInformation:(id)information;
- (void)updateUserInformationForAltDSID:(id)d userInformation:(id)information completion:(id)completion;
- (void)updateUserInformationWithContext:(id)context userInformation:(id)information client:(id)client completion:(id)completion;
@end

@implementation AKUserInfoController

+ (id)sharedController
{
  selfCopy = self;
  v10 = a2;
  obj = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000E8C20;
  v8 = &unk_100322AA0;
  selfCopy2 = self;
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

- (void)fetchUserInformationForAltDSID:(id)d client:(id)client completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v8 = 0;
  objc_storeStrong(&v8, client);
  v7 = 0;
  objc_storeStrong(&v7, completion);
  [(AKUserInfoController *)selfCopy _fetchUserInformationForAltDSID:location[0] client:v8 dataCenter:0 completion:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchUserInformationWithContext:(id)context client:(id)client completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v8 = 0;
  objc_storeStrong(&v8, client);
  v7 = 0;
  objc_storeStrong(&v7, completion);
  [(AKUserInfoController *)selfCopy _fetchUserInformationWithContext:location[0] client:v8 dataCenter:0 completion:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_fetchUserInformationForAltDSID:(id)d client:(id)client dataCenter:(id)center completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v12 = 0;
  objc_storeStrong(&v12, client);
  v11 = 0;
  objc_storeStrong(&v11, center);
  v10 = 0;
  objc_storeStrong(&v10, completion);
  v9 = objc_alloc_init(AKAppleIDAuthenticationContext);
  [v9 setAltDSID:location[0]];
  [(AKUserInfoController *)selfCopy _fetchUserInformationWithContext:v9 client:v12 dataCenter:v11 completion:v10];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)_fetchUserInformationWithContext:(id)context client:(id)client dataCenter:(id)center completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v36 = 0;
  objc_storeStrong(&v36, client);
  v35 = 0;
  objc_storeStrong(&v35, center);
  v34 = 0;
  objc_storeStrong(&v34, completion);
  altDSID = [location[0] altDSID];
  _objc_release(altDSID);
  if (altDSID)
  {
    v12 = +[AKAccountManager sharedInstance];
    altDSID2 = [location[0] altDSID];
    v32 = [AKAccountManager authKitAccountWithAltDSID:v12 error:"authKitAccountWithAltDSID:error:"];
    _objc_release(altDSID2);
    _objc_release(v12);
    if (v32)
    {
      v9 = selfCopy;
      v10 = +[NSDate date];
      [AKUserInfoController _setPreviousAccountInfoRefreshDate:v9 forAccount:"_setPreviousAccountInfoRefreshDate:forAccount:"];
      _objc_release(v10);
    }

    v31 = _AKLogSystem();
    v30 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      altDSID3 = [location[0] altDSID];
      sub_1000194D4(v39, altDSID3);
      _os_log_impl(&_mh_execute_header, v31, v30, "Starting to fetch user info for %@", v39, 0xCu);
      _objc_release(altDSID3);
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
    v25 = _objc_retain(selfCopy);
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

- (void)refreshAccountUsernamesForAltDSID:(id)d dataCenter:(id)center
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v5 = 0;
  objc_storeStrong(&v5, center);
  +[NSXPCConnection beginTransaction];
  [(AKUserInfoController *)selfCopy _fetchUserInformationForAltDSID:location[0] client:0 dataCenter:v5 completion:&stru_1003231D0];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_shouldUpdateConfigsForAltDSID:(id)d responseParameters:(id)parameters
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v11 = 0;
  objc_storeStrong(&v11, parameters);
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

- (void)_updateUserConfigIfNecessaryForAltDSID:(id)d responseParameters:(id)parameters
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v8 = 0;
  objc_storeStrong(&v8, parameters);
  if ([(AKUserInfoController *)selfCopy _shouldUpdateConfigsForAltDSID:location[0] responseParameters:v8])
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

- (void)processPushMessage:(id)message
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
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
    userInfo = [location[0] userInfo];
    v15 = [userInfo objectForKeyedSubscript:@"userinfodata"];
    _objc_release(userInfo);
    if (v15)
    {
      v14 = [[AKAppleIDUserInformationResponse alloc] initWithResponseBody:v15];
      v6 = selfCopy;
      altDSID = [location[0] altDSID];
      [AKUserInfoController _processIncomingUserInformationForAltDSID:v6 userInformation:"_processIncomingUserInformationForAltDSID:userInformation:"];
      _objc_release(altDSID);
      v8 = selfCopy;
      altDSID2 = [location[0] altDSID];
      [AKUserInfoController _processHideMyEmailForAltDSID:v8 userInfo:"_processHideMyEmailForAltDSID:userInfo:response:" response:?];
      _objc_release(altDSID2);
      objc_storeStrong(&v14, 0);
    }

    else
    {
      eventDetails = [location[0] eventDetails];
      v13 = [eventDetails objectForKeyedSubscript:@"dataCenter"];
      _objc_release(eventDetails);
      v4 = selfCopy;
      altDSID3 = [location[0] altDSID];
      [AKUserInfoController refreshAccountUsernamesForAltDSID:v4 dataCenter:"refreshAccountUsernamesForAltDSID:dataCenter:"];
      _objc_release(altDSID3);
      objc_storeStrong(&v13, 0);
    }

    objc_storeStrong(&v15, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)_processHideMyEmailForAltDSID:(id)d userInfo:(id)info response:(id)response
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v29 = 0;
  objc_storeStrong(&v29, info);
  v28 = 0;
  objc_storeStrong(&v28, response);
  v27 = +[AKAccountManager sharedInstance];
  primaryAuthKitAccount = [v27 primaryAuthKitAccount];
  v25 = [v27 altDSIDForAccount:primaryAuthKitAccount];
  if ([v25 isEqualToString:location[0]])
  {
    v20 = [[AKPrivateEmailInformation alloc] initWithResponseBody:v29];
    v19 = +[AKPrivateEmailStoreManager sharedInstance];
    currentProtocolVersion = [v19 currentProtocolVersion];
    if (currentProtocolVersion < [v20 protocolVersion])
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
        protocolVersion = [v20 protocolVersion];
        v13 = v17;
        v7 = [v6 setProtocolVersion:protocolVersion error:&v13];
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
      [(AKUserInfoController *)selfCopy _syncPrivateEmailsForAltDSID:location[0] client:0 userInformation:v28 completion:?];
    }

    else
    {
      [(AKUserInfoController *)selfCopy _updatePrivateEmailsWithInformation:v20];
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
  objc_storeStrong(&primaryAuthKitAccount, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

- (void)_processIncomingUserInformationForAltDSID:(id)d userInformation:(id)information
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v6 = 0;
  objc_storeStrong(&v6, information);
  userInformationRepresentation = [v6 userInformationRepresentation];
  [(AKUserInfoController *)selfCopy refreshAccountUsernamesForAltDSID:location[0] withUserInformation:v6];
  [(AKUserInfoController *)selfCopy updateUserInformationForAltDSID:location[0] userInformation:userInformationRepresentation completion:0];
  objc_storeStrong(&userInformationRepresentation, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)_syncPrivateEmailsForAltDSID:(id)d client:(id)client userInformation:(id)information completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v35 = 0;
  objc_storeStrong(&v35, client);
  v34 = 0;
  objc_storeStrong(&v34, information);
  v33 = 0;
  objc_storeStrong(&v33, completion);
  userInformationRepresentation = [v34 userInformationRepresentation];
  privateEmailListVersion = [userInformationRepresentation privateEmailListVersion];
  if (privateEmailListVersion && ![privateEmailListVersion isEqualToString:@"0"])
  {
    v30 = +[AKPrivateEmailStoreManager sharedInstance];
    currentEmailListVersion = [v30 currentEmailListVersion];
    if (![privateEmailListVersion isEqualToString:currentEmailListVersion])
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

    objc_storeStrong(&currentEmailListVersion, 0);
    objc_storeStrong(&v30, 0);
  }

  objc_storeStrong(&privateEmailListVersion, 0);
  objc_storeStrong(&userInformationRepresentation, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
}

- (void)_updatePrivateEmailsWithInformation:(id)information
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, information);
  privateEmailListVersion = [location[0] privateEmailListVersion];
  v12 = _AKLogHme();
  v11 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v17, privateEmailListVersion);
    _os_log_debug_impl(&_mh_execute_header, v12, v11, "Update passedVersion=[%@]", v17, 0xCu);
  }

  objc_storeStrong(&v12, 0);
  if (privateEmailListVersion && ![privateEmailListVersion isEqualToString:@"0"])
  {
    v10 = +[AKPrivateEmailStoreManager sharedInstance];
    currentEmailListVersion = [v10 currentEmailListVersion];
    oslog = _AKLogHme();
    v7 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v16, currentEmailListVersion);
      _os_log_debug_impl(&_mh_execute_header, oslog, v7, "Update currentVersion=[%@]", v16, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    if (![privateEmailListVersion isEqualToString:currentEmailListVersion])
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

    objc_storeStrong(&currentEmailListVersion, 0);
    objc_storeStrong(&v10, 0);
  }

  objc_storeStrong(&privateEmailListVersion, 0);
  objc_storeStrong(location, 0);
}

- (void)updateUserInformationForAltDSID:(id)d userInformation:(id)information completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v73 = 0;
  objc_storeStrong(&v73, information);
  v72 = 0;
  objc_storeStrong(&v72, completion);
  v71 = [(AKUserInfoController *)selfCopy _userInfoChangeNotificationDictionaryForAltDSID:location[0] userInformation:v73];
  if ([v71 count])
  {
    v70 = [(AKAccountManager *)selfCopy->_accountManager authKitAccountWithAltDSID:location[0] error:0];
    v69 = 0;
    v68 = 0;
    authMode = [v73 authMode];
    v45 = [v71 objectForKeyedSubscript:AKUserInfoChangedAuthModeKey];
    _objc_release(v45);
    if (v45)
    {
      [(AKAccountManager *)selfCopy->_accountManager setAuthenticationMode:authMode forAccount:v70];
      v68 = 1;
      v69 = 1;
    }

    isMdmInfoRequired = [v73 isMdmInfoRequired];
    bOOLValue = [isMdmInfoRequired BOOLValue];
    _objc_release(isMdmInfoRequired);
    v66 = bOOLValue;
    v44 = [v71 objectForKeyedSubscript:AKUserInfoChangedMDMInfoRequiredKey];
    _objc_release(v44);
    if (v44)
    {
      [(AKAccountManager *)selfCopy->_accountManager setMDMInformationRequired:v66 & 1 forAccount:v70];
      v68 = 1;
      v69 = 1;
    }

    appleIDSecurityLevel = [v73 appleIDSecurityLevel];
    v41 = [v71 objectForKeyedSubscript:AKUserInfoChangedSecurityLevelKey];
    _objc_release(v41);
    if (v41)
    {
      [(AKAccountManager *)selfCopy->_accountManager setSecurityLevel:appleIDSecurityLevel forAccount:v70];
      if (appleIDSecurityLevel == 4)
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
      repairState = [v73 repairState];
      [(AKAccountManager *)selfCopy->_accountManager setRepairState:repairState forAccount:v70];
      v68 = 1;
      v69 = 1;
    }

    v39 = [v71 objectForKeyedSubscript:AKGroupKitEligibilityKey];
    _objc_release(v39);
    if (v39)
    {
      accountManager = selfCopy->_accountManager;
      groupKitEligibility = [v73 groupKitEligibility];
      [AKAccountManager setGroupKitEligibility:"setGroupKitEligibility:forAccount:" forAccount:?];
      _objc_release(groupKitEligibility);
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
      v33 = selfCopy->_accountManager;
      hasSOSActiveDevice = [v73 hasSOSActiveDevice];
      bOOLValue2 = [hasSOSActiveDevice BOOLValue];
      [(AKAccountManager *)v33 setHasSOSActiveDevice:bOOLValue2 forAccount:v70];
      _objc_release(hasSOSActiveDevice);
      v68 = 1;
    }

    v32 = [v71 objectForKeyedSubscript:@"activeHMECount"];
    _objc_release(v32);
    if (v32)
    {
      activeHMECount = [v73 activeHMECount];
      [(AKAccountManager *)selfCopy->_accountManager setActiveiCloudPrivateEmailCount:activeHMECount forAccount:v70];
      v68 = 1;
      objc_storeStrong(&activeHMECount, 0);
    }

    v31 = [v71 objectForKeyedSubscript:@"inActiveHMECount"];
    _objc_release(v31);
    if (v31)
    {
      inActiveHMECount = [v73 inActiveHMECount];
      [(AKAccountManager *)selfCopy->_accountManager setInactiveiCloudPrivateEmailCount:inActiveHMECount forAccount:v70];
      v68 = 1;
      objc_storeStrong(&inActiveHMECount, 0);
    }

    v30 = [v71 objectForKeyedSubscript:AKSOSNeededKey];
    _objc_release(v30);
    if (v30)
    {
      v28 = selfCopy->_accountManager;
      sOSNeeded = [v73 SOSNeeded];
      bOOLValue3 = [sOSNeeded BOOLValue];
      [(AKAccountManager *)v28 setSOSNeeded:bOOLValue3 forAccount:v70];
      _objc_release(sOSNeeded);
      v68 = 1;
    }

    v27 = [v71 objectForKeyedSubscript:AKConfigDataVersion];
    _objc_release(v27);
    if (v27)
    {
      v25 = selfCopy->_accountManager;
      configDataVersion = [v73 configDataVersion];
      [AKAccountManager setConfigDataVersion:v25 forAccount:"setConfigDataVersion:forAccount:"];
      _objc_release(configDataVersion);
      v68 = 1;
    }

    v24 = [v71 objectForKeyedSubscript:AKHasModernRKKey];
    _objc_release(v24);
    if (v24)
    {
      v22 = selfCopy->_accountManager;
      hasModernRecoveryKey = [v73 hasModernRecoveryKey];
      bOOLValue4 = [hasModernRecoveryKey BOOLValue];
      [(AKAccountManager *)v22 setHasModernRecoveryKey:bOOLValue4 forAccount:v70];
      _objc_release(hasModernRecoveryKey);
      v68 = 1;
    }

    v21 = [v71 objectForKeyedSubscript:AK3PRegulatoryOverrideKey];
    _objc_release(v21);
    if (v21)
    {
      v19 = selfCopy->_accountManager;
      thirdPartyRegulatoryOverride = [v73 thirdPartyRegulatoryOverride];
      [AKAccountManager set3PRegulatoryOverride:v19 forAccount:"set3PRegulatoryOverride:forAccount:"];
      _objc_release(thirdPartyRegulatoryOverride);
      v68 = 1;
    }

    if ([(AKUserInfoController *)selfCopy _authorizationPropertiesChangedForAccount:v70 userInformation:v73])
    {
      v68 = 1;
    }

    if ([(AKUserInfoController *)selfCopy _passkeyPropertiesChangedForAccount:v70 userInformation:v73])
    {
      v68 = 1;
    }

    if ([(AKUserInfoController *)selfCopy _walrusPropertiesChangedForAccount:v70 userInformation:v73])
    {
      v68 = 1;
    }

    if ([(AKUserInfoController *)selfCopy _passcodeAuthPropertiesChangedForAccount:v70 userInformation:v73])
    {
      v68 = 1;
    }

    if ([(AKUserInfoController *)selfCopy _deviceListPropertiesChangedForAccount:v70 userInformation:v73])
    {
      v68 = 1;
    }

    if ([(AKUserInfoController *)selfCopy _additionalInfoChangedForAccount:v70 userInformation:v73])
    {
      v68 = 1;
    }

    if ([(AKUserInfoController *)selfCopy _trustedPhoneNumbersChangedForAccount:v70 userInformation:v73])
    {
      v68 = 1;
    }

    if ([(AKUserInfoController *)selfCopy _securityKeysChangedForAccount:v70 userInformation:v73])
    {
      v68 = 1;
    }

    if ([(AKUserInfoController *)selfCopy _loginHandlesChangedForAccount:v70 userInformation:v73])
    {
      v68 = 1;
    }

    if ([(AKUserInfoController *)selfCopy _managedAppleIDInfoChangedForAccount:v70 userInformation:v73])
    {
      v68 = 1;
    }

    if ([(AKUserInfoController *)selfCopy _trustedContactPropertiesChangedForAccount:v70 userInformation:v73])
    {
      v68 = 1;
    }

    if ([(AKUserInfoController *)selfCopy _birthYearChangedForAccount:v70 userInformation:v73])
    {
      v68 = 1;
    }

    if ([(AKUserInfoController *)selfCopy _adpCohortChangedForAccount:v70 userInformation:v73])
    {
      v68 = 1;
    }

    if ([(AKUserInfoController *)selfCopy _piggybackingApprovalEligibleChangedForAccount:v70 userInformation:v73])
    {
      v68 = 1;
    }

    v18 = [v71 objectForKeyedSubscript:AKIsEligibleToMigrateToChildKey];
    _objc_release(v18);
    if (v18)
    {
      v16 = selfCopy->_accountManager;
      isEligibleToMigrateToChild = [v73 isEligibleToMigrateToChild];
      [AKAccountManager setIsEligibleToMigrateToChild:v16 forAccount:"setIsEligibleToMigrateToChild:forAccount:"];
      _objc_release(isEligibleToMigrateToChild);
      v68 = 1;
      v69 = 1;
    }

    if ([(AKUserInfoController *)selfCopy _idmsWalrusStatusChangedForAccount:v70 userInformation:v73])
    {
      v68 = 1;
    }

    v58 = 0;
    v57 = 0;
    if (v68)
    {
      v8 = selfCopy->_accountManager;
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
      [(AKUserInfoController *)selfCopy sendUserInfoChangeNotificationWithPayload:v71];
    }

    birthDay = [v73 birthDay];
    v51 = 0;
    v12 = 1;
    if (!birthDay)
    {
      birthMonth = [v73 birthMonth];
      v51 = 1;
      v12 = birthMonth != 0;
    }

    if (v51)
    {
      _objc_release(birthMonth);
    }

    _objc_release(birthDay);
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
      [(AKUserInfoController *)selfCopy updateBirthdayForAltDSID:location[0] userInformation:v73];
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

- (BOOL)_piggybackingApprovalEligibleChangedForAccount:(id)account userInformation:(id)information
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v10 = 0;
  objc_storeStrong(&v10, information);
  v9 = 0;
  v8 = [(AKAccountManager *)selfCopy->_accountManager piggybackingApprovalEligible:location[0]];
  piggybackingApprovalEligible = [v10 piggybackingApprovalEligible];
  bOOLValue = [piggybackingApprovalEligible BOOLValue];
  _objc_release(piggybackingApprovalEligible);
  if ((v8 & 1) != (bOOLValue & 1))
  {
    [(AKAccountManager *)selfCopy->_accountManager setPiggybackingApprovalEligible:bOOLValue & 1 forAccount:location[0]];
    v9 = 1;
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return v9 & 1;
}

- (id)_userInfoChangeNotificationDictionaryForAltDSID:(id)d userInformation:(id)information
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v68 = 0;
  objc_storeStrong(&v68, information);
  v67 = +[NSMutableDictionary dictionary];
  v66 = [(AKAccountManager *)selfCopy->_accountManager authKitAccountWithAltDSID:location[0] error:0];
  if (v66)
  {
    [v67 setObject:location[0] forKeyedSubscript:AKUserInfoChangedAltDSIDKey];
    v65 = [(AKAccountManager *)selfCopy->_accountManager authenticationModeForAccount:v66];
    authMode = [v68 authMode];
    if (authMode != v65 && authMode)
    {
      v26 = [NSNumber numberWithUnsignedInteger:authMode];
      [v67 setObject:? forKeyedSubscript:?];
      _objc_release(v26);
    }

    v63 = [(AKAccountManager *)selfCopy->_accountManager mdmInformationRequiredForAccount:v66];
    isMdmInfoRequired = [v68 isMdmInfoRequired];
    bOOLValue = [isMdmInfoRequired BOOLValue];
    _objc_release(isMdmInfoRequired);
    v62 = bOOLValue;
    if ((bOOLValue & 1) != (v63 & 1))
    {
      v23 = [NSNumber numberWithBool:v62 & 1];
      [v67 setObject:? forKeyedSubscript:?];
      _objc_release(v23);
    }

    v61 = [(AKAccountManager *)selfCopy->_accountManager securityLevelForAccount:v66];
    appleIDSecurityLevel = [v68 appleIDSecurityLevel];
    if (appleIDSecurityLevel != v61 && appleIDSecurityLevel)
    {
      v22 = [NSNumber numberWithUnsignedInteger:appleIDSecurityLevel];
      [v67 setObject:? forKeyedSubscript:?];
      _objc_release(v22);
    }

    v59 = [(AKAccountManager *)selfCopy->_accountManager hasSOSActiveDeviceForAccount:v66];
    hasSOSActiveDevice = [v68 hasSOSActiveDevice];
    if (hasSOSActiveDevice && (!v59 || hasSOSActiveDevice != v59))
    {
      v21 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [hasSOSActiveDevice BOOLValue]);
      [v67 setObject:? forKeyedSubscript:?];
      _objc_release(v21);
    }

    v57 = [(AKAccountManager *)selfCopy->_accountManager isSOSNeededForAccount:v66];
    sOSNeeded = [v68 SOSNeeded];
    if (sOSNeeded && (!v57 || sOSNeeded != v57))
    {
      v20 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [sOSNeeded BOOLValue]);
      [v67 setObject:? forKeyedSubscript:?];
      _objc_release(v20);
    }

    v55 = [(AKAccountManager *)selfCopy->_accountManager repairStateForAccount:v66];
    repairState = [v68 repairState];
    if (repairState != v55 && repairState)
    {
      v19 = [NSNumber numberWithUnsignedInteger:repairState];
      [v67 setObject:? forKeyedSubscript:?];
      _objc_release(v19);
    }

    v53 = [(AKAccountManager *)selfCopy->_accountManager webAccessEnabledForAccount:v66];
    webAccessEnabled = [v68 webAccessEnabled];
    if (webAccessEnabled)
    {
      if (!v53 || (v18 = [webAccessEnabled BOOLValue], v18 != objc_msgSend(v53, "BOOLValue")))
      {
        v17 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [webAccessEnabled BOOLValue]);
        [v67 setObject:? forKeyedSubscript:?];
        _objc_release(v17);
      }
    }

    v51 = [(AKAccountManager *)selfCopy->_accountManager serverExperimentalFeaturesForAccount:v66];
    serverExperimentalFeatures = [v68 serverExperimentalFeatures];
    if (serverExperimentalFeatures)
    {
      if (!v51 || (v16 = [serverExperimentalFeatures integerValue], v16 != objc_msgSend(v51, "integerValue")))
      {
        [v67 setObject:serverExperimentalFeatures forKeyedSubscript:AKServerExperimentalFeaturesKey];
      }
    }

    v49 = [(AKAccountManager *)selfCopy->_accountManager passkeyEligibleForAccount:v66];
    passkeyEligible = [v68 passkeyEligible];
    if (passkeyEligible)
    {
      if (!v49 || (v15 = [passkeyEligible BOOLValue], v15 != objc_msgSend(v49, "BOOLValue")))
      {
        v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [passkeyEligible BOOLValue]);
        [v67 setObject:? forKeyedSubscript:?];
        _objc_release(v14);
      }
    }

    v47 = [(AKAccountManager *)selfCopy->_accountManager passkeyPresentForAccount:v66];
    passkeyPresent = [v68 passkeyPresent];
    if (passkeyPresent)
    {
      if (!v47 || (v13 = [passkeyPresent BOOLValue], v13 != objc_msgSend(v47, "BOOLValue")))
      {
        v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [passkeyPresent BOOLValue]);
        [v67 setObject:? forKeyedSubscript:?];
        _objc_release(v12);
      }
    }

    v45 = [(AKAccountManager *)selfCopy->_accountManager groupKitEligibilityForAccount:v66];
    groupKitEligibility = [v68 groupKitEligibility];
    if (groupKitEligibility)
    {
      if (!v45 || (v11 = [groupKitEligibility integerValue], v11 != objc_msgSend(v45, "integerValue")))
      {
        [v67 setObject:groupKitEligibility forKeyedSubscript:AKGroupKitEligibilityKey];
      }
    }

    v43 = [(AKAccountManager *)selfCopy->_accountManager inactiveiCloudPrivateEmailCountForAccount:v66];
    inActiveHMECount = [v68 inActiveHMECount];
    if (inActiveHMECount)
    {
      if (!v43 || (v10 = [inActiveHMECount integerValue], v10 != objc_msgSend(v43, "integerValue")))
      {
        [v67 setObject:inActiveHMECount forKeyedSubscript:AKHMEInActiveCountKey];
      }
    }

    v41 = [(AKAccountManager *)selfCopy->_accountManager activeiCloudPrivateEmailCountForAccount:v66];
    activeHMECount = [v68 activeHMECount];
    if (activeHMECount)
    {
      if (!v41 || (v9 = [activeHMECount integerValue], v9 != objc_msgSend(v41, "integerValue")))
      {
        [v67 setObject:activeHMECount forKeyedSubscript:AKHMEActiveCountKey];
      }
    }

    v39 = [(AKAccountManager *)selfCopy->_accountManager configDataVersionForAccount:v66];
    configDataVersion = [v68 configDataVersion];
    if (configDataVersion && !sub_1000E9B2C(configDataVersion, v39))
    {
      [v67 setObject:configDataVersion forKeyedSubscript:AKConfigDataVersion];
    }

    v37 = [(AKAccountManager *)selfCopy->_accountManager hasModernRecoveryKeyForAccount:v66];
    hasModernRecoveryKey = [v68 hasModernRecoveryKey];
    if (hasModernRecoveryKey && (!v37 || hasModernRecoveryKey != v37))
    {
      v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [hasModernRecoveryKey BOOLValue]);
      [v67 setObject:? forKeyedSubscript:?];
      _objc_release(v8);
    }

    v35 = [(AKAccountManager *)selfCopy->_accountManager get3PRegulatoryOverride:v66];
    thirdPartyRegulatoryOverride = [v68 thirdPartyRegulatoryOverride];
    if (thirdPartyRegulatoryOverride && !sub_1000E9B2C(thirdPartyRegulatoryOverride, v35))
    {
      [v67 setObject:thirdPartyRegulatoryOverride forKeyedSubscript:AK3PRegulatoryOverrideKey];
    }

    v33 = [(AKAccountManager *)selfCopy->_accountManager adpCohortForAccount:v66];
    adpCohort = [v68 adpCohort];
    if (adpCohort && (!v33 || adpCohort != v33))
    {
      [v67 setObject:adpCohort forKeyedSubscript:AKADPCohortKey];
    }

    v31 = [(AKAccountManager *)selfCopy->_accountManager isEligibleToMigrateToChildForAccount:v66];
    isEligibleToMigrateToChild = [v68 isEligibleToMigrateToChild];
    if (isEligibleToMigrateToChild)
    {
      if (!v31 || (v7 = [isEligibleToMigrateToChild integerValue], v7 != objc_msgSend(v31, "integerValue")))
      {
        [v67 setObject:isEligibleToMigrateToChild forKeyedSubscript:AKIsEligibleToMigrateToChildKey];
      }
    }

    v29 = [(AKAccountManager *)selfCopy->_accountManager idmsWalrusStatusForAccount:v66];
    idmsWalrusStatus = [v68 idmsWalrusStatus];
    if (idmsWalrusStatus && (!v29 || idmsWalrusStatus != v29))
    {
      [v67 setObject:idmsWalrusStatus forKeyedSubscript:AKIdmsWalrusStatusKey];
    }

    objc_storeStrong(&idmsWalrusStatus, 0);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&isEligibleToMigrateToChild, 0);
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&adpCohort, 0);
    objc_storeStrong(&v33, 0);
    objc_storeStrong(&thirdPartyRegulatoryOverride, 0);
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&hasModernRecoveryKey, 0);
    objc_storeStrong(&v37, 0);
    objc_storeStrong(&configDataVersion, 0);
    objc_storeStrong(&v39, 0);
    objc_storeStrong(&activeHMECount, 0);
    objc_storeStrong(&v41, 0);
    objc_storeStrong(&inActiveHMECount, 0);
    objc_storeStrong(&v43, 0);
    objc_storeStrong(&groupKitEligibility, 0);
    objc_storeStrong(&v45, 0);
    objc_storeStrong(&passkeyPresent, 0);
    objc_storeStrong(&v47, 0);
    objc_storeStrong(&passkeyEligible, 0);
    objc_storeStrong(&v49, 0);
    objc_storeStrong(&serverExperimentalFeatures, 0);
    objc_storeStrong(&v51, 0);
    objc_storeStrong(&webAccessEnabled, 0);
    objc_storeStrong(&v53, 0);
    objc_storeStrong(&sOSNeeded, 0);
    objc_storeStrong(&v57, 0);
    objc_storeStrong(&hasSOSActiveDevice, 0);
    objc_storeStrong(&v59, 0);
  }

  v6 = [v67 copy];
  objc_storeStrong(&v66, 0);
  objc_storeStrong(v5, 0);
  objc_storeStrong(&v68, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (BOOL)_passkeyPropertiesChangedForAccount:(id)account userInformation:(id)information
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v18 = 0;
  objc_storeStrong(&v18, information);
  v17 = 0;
  passkeyEligible = [v18 passkeyEligible];
  v15 = [(AKAccountManager *)selfCopy->_accountManager passkeyEligibleForAccount:location[0]];
  if (passkeyEligible)
  {
    if (!v15 || (v11 = [passkeyEligible BOOLValue], v11 != objc_msgSend(v15, "BOOLValue")))
    {
      accountManager = selfCopy->_accountManager;
      bOOLValue = [passkeyEligible BOOLValue];
      [(AKAccountManager *)accountManager setPasskeyEligible:bOOLValue forAccount:location[0]];
      v17 = 1;
    }
  }

  passkeyPresent = [v18 passkeyPresent];
  v13 = [(AKAccountManager *)selfCopy->_accountManager passkeyPresentForAccount:location[0]];
  if (passkeyPresent)
  {
    if (!v13 || (v9 = [passkeyPresent BOOLValue], v9 != objc_msgSend(v13, "BOOLValue")))
    {
      v8 = selfCopy->_accountManager;
      bOOLValue2 = [passkeyPresent BOOLValue];
      [(AKAccountManager *)v8 setPasskeyPresent:bOOLValue2 forAccount:location[0]];
      [(AKAccountManager *)selfCopy->_accountManager setPasskeysInKeychainCount:0 forAccount:location[0]];
      v17 = 1;
    }
  }

  v7 = v17;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&passkeyPresent, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&passkeyEligible, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  return v7 & 1;
}

- (BOOL)_walrusPropertiesChangedForAccount:(id)account userInformation:(id)information
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v16 = 0;
  objc_storeStrong(&v16, information);
  v15 = 0;
  webAccessEnabled = [v16 webAccessEnabled];
  v13 = [(AKAccountManager *)selfCopy->_accountManager webAccessEnabledForAccount:location[0]];
  if (webAccessEnabled)
  {
    if (!v13 || (v9 = [webAccessEnabled BOOLValue], v9 != objc_msgSend(v13, "BOOLValue")))
    {
      accountManager = selfCopy->_accountManager;
      bOOLValue = [webAccessEnabled BOOLValue];
      [(AKAccountManager *)accountManager setWebAccessEnabled:bOOLValue forAccount:location[0]];
      v15 = 1;
    }
  }

  serverExperimentalFeatures = [v16 serverExperimentalFeatures];
  v11 = [(AKAccountManager *)selfCopy->_accountManager serverExperimentalFeaturesForAccount:location[0]];
  if (serverExperimentalFeatures)
  {
    if (!v11 || (v7 = [serverExperimentalFeatures integerValue], v7 != objc_msgSend(v11, "integerValue")))
    {
      [(AKAccountManager *)selfCopy->_accountManager setServerExperimentalFeatures:serverExperimentalFeatures forAccount:location[0]];
      v15 = 1;
    }
  }

  v6 = v15;
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&serverExperimentalFeatures, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&webAccessEnabled, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  return v6 & 1;
}

- (BOOL)_passcodeAuthPropertiesChangedForAccount:(id)account userInformation:(id)information
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v11 = 0;
  objc_storeStrong(&v11, information);
  v10 = 0;
  passcodeAuthEnabled = [v11 passcodeAuthEnabled];
  bOOLValue = [passcodeAuthEnabled BOOLValue];
  _objc_release(passcodeAuthEnabled);
  if ((bOOLValue & 1) != ([(AKAccountManager *)selfCopy->_accountManager isPasscodeAuthEnabledForAccount:location[0]]& 1))
  {
    [(AKAccountManager *)selfCopy->_accountManager setPasscodeAuthEnabled:bOOLValue & 1 forAccount:location[0]];
    v10 = 1;
  }

  askToBuy = [v11 askToBuy];
  bOOLValue2 = [askToBuy BOOLValue];
  _objc_release(askToBuy);
  if ((bOOLValue2 & 1) != ([(AKAccountManager *)selfCopy->_accountManager isAskToBuyForAccount:location[0]]& 1))
  {
    [(AKAccountManager *)selfCopy->_accountManager setAskToBuy:bOOLValue2 & 1 forAccount:location[0]];
    v10 = 1;
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return v10 & 1;
}

- (BOOL)_deviceListPropertiesChangedForAccount:(id)account userInformation:(id)information
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v24 = 0;
  objc_storeStrong(&v24, information);
  v23 = 0;
  deviceListVersion = [v24 deviceListVersion];
  v13 = [deviceListVersion hash];
  _objc_release(deviceListVersion);
  v22[2] = v13;
  v14 = [(AKAccountManager *)selfCopy->_accountManager deviceListVersionForAccount:location[0]];
  v15 = [v14 hash];
  _objc_release(v14);
  v22[1] = v15;
  if (v13 != v15)
  {
    accountManager = selfCopy->_accountManager;
    deviceListVersion2 = [v24 deviceListVersion];
    [AKAccountManager setDeviceListVersion:"setDeviceListVersion:forAccount:" forAccount:?];
    _objc_release(deviceListVersion2);
    [(AKAccountManager *)selfCopy->_accountManager saveAccount:location[0] error:0];
    v23 = 1;
    v9 = +[AKFeatureManager sharedManager];
    isDeviceListCacheEnableDryMode = [v9 isDeviceListCacheEnableDryMode];
    _objc_release(v9);
    if (isDeviceListCacheEnableDryMode)
    {
      queue = dispatch_get_global_queue(9, 0);
      v16 = _NSConcreteStackBlock;
      v17 = -1073741824;
      v18 = 0;
      v19 = sub_1000ED58C;
      v20 = &unk_10031F078;
      v21 = _objc_retain(selfCopy);
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

- (BOOL)_authorizationPropertiesChangedForAccount:(id)account userInformation:(id)information
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v101 = 0;
  objc_storeStrong(&v101, information);
  v100 = 0;
  vettedPrimaryEmail = [v101 vettedPrimaryEmail];
  bOOLValue = [vettedPrimaryEmail BOOLValue];
  _objc_release(vettedPrimaryEmail);
  v99 = bOOLValue;
  v98 = [(AKAccountManager *)selfCopy->_accountManager verifiedPrimaryEmailForAccount:location[0]];
  vettedPrimaryEmail2 = [v101 vettedPrimaryEmail];
  v45 = 0;
  if (vettedPrimaryEmail2)
  {
    v45 = (v99 & 1) != (v98 & 1);
  }

  _objc_release(vettedPrimaryEmail2);
  if (v45)
  {
    [(AKAccountManager *)selfCopy->_accountManager setVerifiedPrimaryEmail:v99 & 1 forAccount:location[0]];
    v100 = 1;
  }

  phoneAsAppleID = [v101 phoneAsAppleID];
  bOOLValue2 = [phoneAsAppleID BOOLValue];
  _objc_release(phoneAsAppleID);
  v97 = bOOLValue2;
  v96 = [(AKAccountManager *)selfCopy->_accountManager phoneAsAppleIDForAccount:location[0]];
  phoneAsAppleID2 = [v101 phoneAsAppleID];
  v40 = 0;
  if (phoneAsAppleID2)
  {
    v40 = (v97 & 1) != (v96 & 1);
  }

  _objc_release(phoneAsAppleID2);
  if (v40)
  {
    [(AKAccountManager *)selfCopy->_accountManager setPhoneAsAppleID:v97 & 1 forAccount:location[0]];
    v100 = 1;
  }

  previouslyWantedPrivateEmail = [v101 previouslyWantedPrivateEmail];
  bOOLValue3 = [previouslyWantedPrivateEmail BOOLValue];
  _objc_release(previouslyWantedPrivateEmail);
  v95 = bOOLValue3;
  v94 = [(AKAccountManager *)selfCopy->_accountManager selectedPrivateEmailForAccount:location[0]];
  previouslyWantedPrivateEmail2 = [v101 previouslyWantedPrivateEmail];
  v36 = 0;
  if (previouslyWantedPrivateEmail2)
  {
    v36 = (v95 & 1) != (v94 & 1);
  }

  _objc_release(previouslyWantedPrivateEmail2);
  if (v36)
  {
    [(AKAccountManager *)selfCopy->_accountManager setSelectedPrivateEmail:v95 & 1 forAccount:location[0]];
    v100 = 1;
  }

  primaryEmailAddress = [v101 primaryEmailAddress];
  v92 = [(AKAccountManager *)selfCopy->_accountManager primaryEmailAddressForAccount:location[0]];
  if (primaryEmailAddress && !sub_1000E9B2C(primaryEmailAddress, v92))
  {
    [(AKAccountManager *)selfCopy->_accountManager setPrimaryEmailAddress:primaryEmailAddress forAccount:location[0]];
    v100 = 1;
  }

  givenName = [v101 givenName];
  v90 = [(AKAccountManager *)selfCopy->_accountManager givenNameForAccount:location[0]];
  if (givenName && !sub_1000E9B2C(givenName, v90))
  {
    [(AKAccountManager *)selfCopy->_accountManager setGivenName:givenName forAccount:location[0]];
    v100 = 1;
  }

  familyName = [v101 familyName];
  v88 = [(AKAccountManager *)selfCopy->_accountManager familyNameForAccount:location[0]];
  if (familyName && !sub_1000E9B2C(familyName, v88))
  {
    [(AKAccountManager *)selfCopy->_accountManager setFamilyName:familyName forAccount:location[0]];
    v100 = 1;
  }

  forwardingEmail = [v101 forwardingEmail];
  v86 = [(AKAccountManager *)selfCopy->_accountManager forwardingEmailForAccount:location[0]];
  if (forwardingEmail && !sub_1000E9B2C(forwardingEmail, v86))
  {
    [(AKAccountManager *)selfCopy->_accountManager setForwardingEmail:forwardingEmail forAccount:location[0]];
    v100 = 1;
  }

  previouslySelectedEmail = [v101 previouslySelectedEmail];
  v84 = [(AKAccountManager *)selfCopy->_accountManager selectedAuthorizationEmailForAccount:location[0]];
  if (previouslySelectedEmail && !sub_1000E9B2C(previouslySelectedEmail, v84))
  {
    [(AKAccountManager *)selfCopy->_accountManager setSelectedAuthorizationEmail:previouslySelectedEmail forAccount:location[0]];
    v100 = 1;
  }

  reachableEmails = [v101 reachableEmails];
  v82 = [NSSet setWithArray:reachableEmails];
  v32 = [(AKAccountManager *)selfCopy->_accountManager reachableEmailAddressesForAccount:location[0]];
  v81 = [NSSet setWithArray:?];
  _objc_release(v32);
  if (reachableEmails && ![v82 isEqualToSet:v81])
  {
    [(AKAccountManager *)selfCopy->_accountManager setReachableEmailAddresses:reachableEmails forAccount:location[0]];
    v100 = 1;
  }

  hasUsedAuthorization = [v101 hasUsedAuthorization];
  bOOLValue4 = [hasUsedAuthorization BOOLValue];
  _objc_release(hasUsedAuthorization);
  v80 = bOOLValue4;
  v79 = [(AKAccountManager *)selfCopy->_accountManager authorizationUsedForAccount:location[0]];
  hasUsedAuthorization2 = [v101 hasUsedAuthorization];
  v31 = 0;
  if (hasUsedAuthorization2)
  {
    v31 = (v80 & 1) != (v79 & 1);
  }

  _objc_release(hasUsedAuthorization2);
  if (v31)
  {
    [(AKAccountManager *)selfCopy->_accountManager setAuthorizationUsed:v80 & 1 forAccount:location[0]];
    v100 = 1;
  }

  privateAttestationEnabled = [v101 privateAttestationEnabled];
  bOOLValue5 = [privateAttestationEnabled BOOLValue];
  _objc_release(privateAttestationEnabled);
  v78 = bOOLValue5;
  v77 = [(AKAccountManager *)selfCopy->_accountManager privateAttestationEnabledForAccount:location[0]];
  privateAttestationEnabled2 = [v101 privateAttestationEnabled];
  v27 = 0;
  if (privateAttestationEnabled2)
  {
    v27 = (v78 & 1) != (v77 & 1);
  }

  _objc_release(privateAttestationEnabled2);
  if (v27)
  {
    [(AKAccountManager *)selfCopy->_accountManager setPrivateAttestationEnabled:v78 & 1 forAccount:location[0]];
    v100 = 1;
  }

  isUnderage = [v101 isUnderage];
  bOOLValue6 = [isUnderage BOOLValue];
  _objc_release(isUnderage);
  v76 = bOOLValue6;
  v75 = [(AKAccountManager *)selfCopy->_accountManager userUnderAgeForAccount:location[0]];
  isUnderage2 = [v101 isUnderage];
  v23 = 0;
  if (isUnderage2)
  {
    v23 = (v76 & 1) != (v75 & 1);
  }

  _objc_release(isUnderage2);
  if (v23)
  {
    [(AKAccountManager *)selfCopy->_accountManager setUserUnderage:v76 & 1 forAccount:location[0]];
    v100 = 1;
  }

  isEligibleForSafetyScreen = [v101 isEligibleForSafetyScreen];
  bOOLValue7 = [isEligibleForSafetyScreen BOOLValue];
  _objc_release(isEligibleForSafetyScreen);
  v74 = bOOLValue7;
  v73 = [(AKAccountManager *)selfCopy->_accountManager isEligibleForSafetyScreenForAccount:location[0]];
  isEligibleForSafetyScreen2 = [v101 isEligibleForSafetyScreen];
  v19 = 0;
  if (isEligibleForSafetyScreen2)
  {
    v19 = (v74 & 1) != (v73 & 1);
  }

  _objc_release(isEligibleForSafetyScreen2);
  if (v19)
  {
    [(AKAccountManager *)selfCopy->_accountManager setIsEligibleForSafetyScreen:v74 & 1 forAccount:location[0]];
    v100 = 1;
  }

  isSiwaForChildEnabled = [v101 isSiwaForChildEnabled];
  bOOLValue8 = [isSiwaForChildEnabled BOOLValue];
  _objc_release(isSiwaForChildEnabled);
  v72 = bOOLValue8;
  v71 = [(AKAccountManager *)selfCopy->_accountManager isSiwaEnabledForChildAccount:location[0]];
  v70 = [(AKAccountManager *)selfCopy->_accountManager userUnderAgeForAccount:location[0]];
  v68 = 0;
  v15 = 0;
  if (v70)
  {
    isSiwaForChildEnabled2 = [v101 isSiwaForChildEnabled];
    v68 = 1;
    v15 = 0;
    if (isSiwaForChildEnabled2)
    {
      v15 = (v72 & 1) != (v71 & 1);
    }
  }

  if (v68)
  {
    _objc_release(isSiwaForChildEnabled2);
  }

  if (v15)
  {
    [(AKAccountManager *)selfCopy->_accountManager setIsSiwaEnabled:v72 & 1 forChildAccount:location[0]];
    v100 = 1;
  }

  isSenior = [v101 isSenior];
  bOOLValue9 = [isSenior BOOLValue];
  _objc_release(isSenior);
  v67 = bOOLValue9;
  v66 = [(AKAccountManager *)selfCopy->_accountManager userIsSeniorForAccount:location[0]];
  isSenior2 = [v101 isSenior];
  v12 = 0;
  if (isSenior2)
  {
    v12 = (v67 & 1) != (v66 & 1);
  }

  _objc_release(isSenior2);
  if (v12)
  {
    [(AKAccountManager *)selfCopy->_accountManager setUserIsSenior:v67 & 1 forAccount:location[0]];
    v100 = 1;
  }

  ageOfMajority = [v101 ageOfMajority];
  v64 = [(AKAccountManager *)selfCopy->_accountManager ageOfMajorityForAccount:location[0]];
  if (ageOfMajority && ageOfMajority != v64)
  {
    [(AKAccountManager *)selfCopy->_accountManager setAgeOfMajority:ageOfMajority forAccount:location[0]];
    v100 = 1;
  }

  canAttestAge = [v101 canAttestAge];
  v62 = [(AKAccountManager *)selfCopy->_accountManager canAttestAgeForAccount:location[0]];
  if (canAttestAge && v62 != canAttestAge)
  {
    [(AKAccountManager *)selfCopy->_accountManager setCanAttestAge:canAttestAge forAccount:location[0]];
    v100 = 1;
  }

  appleIDCountryCode = [v101 appleIDCountryCode];
  v60 = [(AKAccountManager *)selfCopy->_accountManager appleIDCountryCodeForAccount:location[0]];
  if (appleIDCountryCode && !sub_1000E9B2C(appleIDCountryCode, v60))
  {
    [(AKAccountManager *)selfCopy->_accountManager setAppleIDCountryCode:appleIDCountryCode forAccount:location[0]];
    v100 = 1;
  }

  isProximityAuthEligible = [v101 isProximityAuthEligible];
  v58 = [NSNumber numberWithBool:[(AKAccountManager *)selfCopy->_accountManager isProximityAuthEligible:location[0]]];
  if (isProximityAuthEligible && isProximityAuthEligible != v58)
  {
    accountManager = selfCopy->_accountManager;
    bOOLValue10 = [isProximityAuthEligible BOOLValue];
    [(AKAccountManager *)accountManager setIsProximityAuthEligible:bOOLValue10 forAccount:location[0]];
    v100 = 1;
  }

  userAgeRange = [v101 userAgeRange];
  v56 = [(AKAccountManager *)selfCopy->_accountManager userAgeRangeForAccount:location[0]];
  if (userAgeRange && userAgeRange != v56)
  {
    [(AKAccountManager *)selfCopy->_accountManager setUserAgeRange:userAgeRange forAccount:location[0]];
    v100 = 1;
  }

  authorizedApplicationsListVersion = [v101 authorizedApplicationsListVersion];
  v54 = [(AKAccountManager *)selfCopy->_accountManager altDSIDForAccount:location[0]];
  queue = dispatch_get_global_queue(21, 0);
  v46 = _NSConcreteStackBlock;
  v47 = -1073741824;
  v48 = 0;
  v49 = sub_1000EE744;
  v50 = &unk_10031F050;
  v51 = _objc_retain(authorizedApplicationsListVersion);
  v52 = _objc_retain(v54);
  v53 = _objc_retain(selfCopy);
  dispatch_async(queue, &v46);
  _objc_release(queue);
  v7 = v100;
  objc_storeStrong(&v53, 0);
  objc_storeStrong(&v52, 0);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(&v54, 0);
  objc_storeStrong(&authorizedApplicationsListVersion, 0);
  objc_storeStrong(&v58, 0);
  objc_storeStrong(&isProximityAuthEligible, 0);
  objc_storeStrong(&v60, 0);
  objc_storeStrong(&appleIDCountryCode, 0);
  objc_storeStrong(&v62, 0);
  objc_storeStrong(&canAttestAge, 0);
  objc_storeStrong(&v64, 0);
  objc_storeStrong(&ageOfMajority, 0);
  objc_storeStrong(&v81, 0);
  objc_storeStrong(&v82, 0);
  objc_storeStrong(&reachableEmails, 0);
  objc_storeStrong(&v84, 0);
  objc_storeStrong(&previouslySelectedEmail, 0);
  objc_storeStrong(&v86, 0);
  objc_storeStrong(&forwardingEmail, 0);
  objc_storeStrong(&v88, 0);
  objc_storeStrong(&familyName, 0);
  objc_storeStrong(&v90, 0);
  objc_storeStrong(&givenName, 0);
  objc_storeStrong(&v92, 0);
  objc_storeStrong(&primaryEmailAddress, 0);
  objc_storeStrong(&v101, 0);
  objc_storeStrong(location, 0);
  return v7 & 1;
}

- (BOOL)_trustedContactPropertiesChangedForAccount:(id)account userInformation:(id)information
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v63 = 0;
  objc_storeStrong(&v63, information);
  v62 = 0;
  canHaveCustodian = [v63 canHaveCustodian];
  bOOLValue = [canHaveCustodian BOOLValue];
  _objc_release(canHaveCustodian);
  v61 = bOOLValue;
  v60 = [(AKAccountManager *)selfCopy->_accountManager canHaveCustodianForAccount:location[0]];
  canHaveCustodian2 = [v63 canHaveCustodian];
  v36 = 0;
  if (canHaveCustodian2)
  {
    v36 = (v61 & 1) != (v60 & 1);
  }

  _objc_release(canHaveCustodian2);
  if (v36)
  {
    [(AKAccountManager *)selfCopy->_accountManager setCanHaveCustodian:v61 & 1 forAccount:location[0]];
    v62 = 1;
  }

  canBeCustodian = [v63 canBeCustodian];
  bOOLValue2 = [canBeCustodian BOOLValue];
  _objc_release(canBeCustodian);
  v59 = bOOLValue2;
  v58 = [(AKAccountManager *)selfCopy->_accountManager canBeCustodianForAccount:location[0]];
  canBeCustodian2 = [v63 canBeCustodian];
  v31 = 0;
  if (canBeCustodian2)
  {
    v31 = (v59 & 1) != (v58 & 1);
  }

  _objc_release(canBeCustodian2);
  if (v31)
  {
    [(AKAccountManager *)selfCopy->_accountManager setCanBeCustodian:v59 & 1 forAccount:location[0]];
    v62 = 1;
  }

  custodianEnabled = [v63 custodianEnabled];
  bOOLValue3 = [custodianEnabled BOOLValue];
  _objc_release(custodianEnabled);
  v57 = bOOLValue3;
  v56 = [(AKAccountManager *)selfCopy->_accountManager custodianEnabledForAccount:location[0]];
  custodianEnabled2 = [v63 custodianEnabled];
  v27 = 0;
  if (custodianEnabled2)
  {
    v27 = (v57 & 1) != (v56 & 1);
  }

  _objc_release(custodianEnabled2);
  if (v27)
  {
    [(AKAccountManager *)selfCopy->_accountManager setCustodianEnabled:v57 & 1 forAccount:location[0]];
    v62 = 1;
  }

  canHaveBeneficiary = [v63 canHaveBeneficiary];
  bOOLValue4 = [canHaveBeneficiary BOOLValue];
  _objc_release(canHaveBeneficiary);
  v55 = bOOLValue4;
  v54 = [(AKAccountManager *)selfCopy->_accountManager canHaveBeneficiaryForAccount:location[0]];
  canHaveBeneficiary2 = [v63 canHaveBeneficiary];
  v23 = 0;
  if (canHaveBeneficiary2)
  {
    v23 = (v55 & 1) != (v54 & 1);
  }

  _objc_release(canHaveBeneficiary2);
  if (v23)
  {
    [(AKAccountManager *)selfCopy->_accountManager setCanHaveBeneficiary:v55 & 1 forAccount:location[0]];
    v62 = 1;
  }

  canBeBeneficiary = [v63 canBeBeneficiary];
  bOOLValue5 = [canBeBeneficiary BOOLValue];
  _objc_release(canBeBeneficiary);
  v53 = bOOLValue5;
  v52 = [(AKAccountManager *)selfCopy->_accountManager canBeBeneficiaryForAccount:location[0]];
  canBeBeneficiary2 = [v63 canBeBeneficiary];
  v19 = 0;
  if (canBeBeneficiary2)
  {
    v19 = (v53 & 1) != (v52 & 1);
  }

  _objc_release(canBeBeneficiary2);
  if (v19)
  {
    [(AKAccountManager *)selfCopy->_accountManager setCanBeBeneficiary:v53 & 1 forAccount:location[0]];
    v62 = 1;
  }

  custodianLastModified = [v63 custodianLastModified];
  v50 = [(AKAccountManager *)selfCopy->_accountManager custodianLastModifiedForAccount:location[0]];
  if (custodianLastModified && custodianLastModified != v50)
  {
    [(AKAccountManager *)selfCopy->_accountManager setCustodianLastModified:custodianLastModified forAccount:location[0]];
    v62 = 1;
  }

  beneficiaryLastModified = [v63 beneficiaryLastModified];
  v48 = [(AKAccountManager *)selfCopy->_accountManager beneficiaryLastModifiedForAccount:location[0]];
  if (beneficiaryLastModified && beneficiaryLastModified != v48)
  {
    [(AKAccountManager *)selfCopy->_accountManager setBeneficiaryLastModified:beneficiaryLastModified forAccount:location[0]];
    v62 = 1;
  }

  custodianInfos = [v63 custodianInfos];
  v46 = [(AKAccountManager *)selfCopy->_accountManager custodianInfosForAccount:location[0]];
  v45 = objc_retainBlock(&stru_100323250);
  if (custodianInfos)
  {
    v4 = [custodianInfos sortedArrayUsingComparator:v45];
    v5 = custodianInfos;
    custodianInfos = v4;
    _objc_release(v5);
  }

  if (v46)
  {
    v6 = [v46 sortedArrayUsingComparator:v45];
    v7 = v46;
    v46 = v6;
    _objc_release(v7);
  }

  if (custodianInfos && (!v46 || ![custodianInfos isEqualToArray:v46]))
  {
    [(AKAccountManager *)selfCopy->_accountManager setCustodianInfos:custodianInfos forAccount:location[0]];
    v62 = 1;
  }

  beneficiaryInfo = [v63 beneficiaryInfo];
  v43 = [(AKAccountManager *)selfCopy->_accountManager beneficiaryInfoForAccount:location[0]];
  v42 = [AKBeneficiaryUpdater removeWrappedKeyFrom:v43];
  v41 = objc_retainBlock(&stru_100323270);
  if (beneficiaryInfo)
  {
    v8 = [beneficiaryInfo sortedArrayUsingComparator:v41];
    v9 = beneficiaryInfo;
    beneficiaryInfo = v8;
    _objc_release(v9);
  }

  if (v42)
  {
    v10 = [v42 sortedArrayUsingComparator:v41];
    v11 = v42;
    v42 = v10;
    _objc_release(v11);
  }

  if (!v42 || ![beneficiaryInfo isEqualToArray:v42])
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
    v37 = [AKBeneficiaryUpdater saveWrappedKeyInKeychain:beneficiaryInfo];
    [(AKAccountManager *)selfCopy->_accountManager setBeneficiaryInfo:v37 forAccount:location[0]];
    v62 = 1;
    objc_storeStrong(&v37, 0);
  }

  v13 = v62;
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&beneficiaryInfo, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&custodianInfos, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(&beneficiaryLastModified, 0);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(&custodianLastModified, 0);
  objc_storeStrong(&v63, 0);
  objc_storeStrong(location, 0);
  return v13 & 1;
}

- (BOOL)_adpCohortChangedForAccount:(id)account userInformation:(id)information
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v11 = 0;
  objc_storeStrong(&v11, information);
  v10 = 0;
  adpCohort = [v11 adpCohort];
  v8 = [(AKAccountManager *)selfCopy->_accountManager adpCohortForAccount:location[0]];
  if (adpCohort)
  {
    if (!v8 || (v6 = [adpCohort integerValue], v6 != objc_msgSend(v8, "integerValue")))
    {
      [(AKAccountManager *)selfCopy->_accountManager setADPCohort:adpCohort forAccount:location[0]];
      v10 = 1;
    }
  }

  v5 = v10;
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&adpCohort, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (BOOL)_idmsWalrusStatusChangedForAccount:(id)account userInformation:(id)information
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v11 = 0;
  objc_storeStrong(&v11, information);
  v10 = 0;
  idmsWalrusStatus = [v11 idmsWalrusStatus];
  v8 = [(AKAccountManager *)selfCopy->_accountManager idmsWalrusStatusForAccount:location[0]];
  if (idmsWalrusStatus)
  {
    if (!v8 || (v6 = [idmsWalrusStatus integerValue], v6 != objc_msgSend(v8, "integerValue")))
    {
      [(AKAccountManager *)selfCopy->_accountManager setIdmsWalrusStatus:idmsWalrusStatus forAccount:location[0]];
      v10 = 1;
    }
  }

  v5 = v10;
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&idmsWalrusStatus, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (void)_refreshApplicationInformationForAltDSID:(id)d
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
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

- (void)refreshAccountUsernamesForAltDSID:(id)d withUserInformation:(id)information
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v28 = 0;
  objc_storeStrong(&v28, information);
  if (location[0])
  {
    allAccountNames = [v28 allAccountNames];
    v22 = 0;
    v20 = 0;
    v7 = 0;
    if (![allAccountNames count])
    {
      userInformationRepresentation = [v28 userInformationRepresentation];
      v22 = 1;
      phoneAsAppleID = [userInformationRepresentation phoneAsAppleID];
      v20 = 1;
      v7 = [phoneAsAppleID BOOLValue] == 0;
    }

    if (v20)
    {
      _objc_release(phoneAsAppleID);
    }

    if (v22)
    {
      _objc_release(userInformationRepresentation);
    }

    _objc_release(allAccountNames);
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
      v13 = [(AKAccountManager *)selfCopy->_accountManager authKitAccountWithAltDSID:location[0] error:0];
      if (v13)
      {
        v14 = (v14 | [(AKUserInfoController *)selfCopy _updateAccount:v13 withUserInformationResponse:v28 modifyAliases:1]) != 0;
      }

      v12 = [(AKAccountManager *)selfCopy->_accountManager appleIDAccountWithAltDSID:location[0]];
      if (v12)
      {
        v14 = (v14 | [(AKUserInfoController *)selfCopy _updateAccount:v12 withUserInformationResponse:v28 modifyAliases:0]) != 0;
      }

      v11 = [(AKAccountManager *)selfCopy->_accountManager iCloudAccountForAltDSID:location[0]];
      if (v11)
      {
        v14 = (v14 | [(AKUserInfoController *)selfCopy _updateAccount:v11 withUserInformationResponse:v28 modifyAliases:0]) != 0;
      }

      if (v14)
      {
        [(AKUserInfoController *)selfCopy _broadcastEmailChangeNotification];
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

- (id)previousAccountInfoRefreshDateForAccount:(id)account
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
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

- (void)_setPreviousAccountInfoRefreshDate:(id)date forAccount:(id)account
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  v7 = 0;
  objc_storeStrong(&v7, account);
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

- (BOOL)_updateAccount:(id)account withUserInformationResponse:(id)response modifyAliases:(BOOL)aliases
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v34 = 0;
  objc_storeStrong(&v34, response);
  aliasesCopy = aliases;
  v32 = 0;
  userInformationRepresentation = [v34 userInformationRepresentation];
  accountName = [userInformationRepresentation accountName];
  v30 = 0;
  v28 = 0;
  v26 = 0;
  v19 = 0;
  if (accountName)
  {
    userInformationRepresentation2 = [v34 userInformationRepresentation];
    v30 = 1;
    accountName2 = [userInformationRepresentation2 accountName];
    v28 = 1;
    username = [location[0] username];
    v26 = 1;
    v19 = [accountName2 isEqualToString:?] == 0;
  }

  if (v26)
  {
    _objc_release(username);
  }

  if (v28)
  {
    _objc_release(accountName2);
  }

  if (v30)
  {
    _objc_release(userInformationRepresentation2);
  }

  _objc_release(accountName);
  _objc_release(userInformationRepresentation);
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
    userInformationRepresentation3 = [v34 userInformationRepresentation];
    accountName3 = [userInformationRepresentation3 accountName];
    [v12 setUsername:?];
    _objc_release(accountName3);
    _objc_release(userInformationRepresentation3);
    v32 = 1;
  }

  if (aliasesCopy)
  {
    v23 = [(AKAccountManager *)selfCopy->_accountManager aliasesForAccount:location[0]];
    v22 = [NSSet setWithArray:v23];
    userInformationRepresentation4 = [v34 userInformationRepresentation];
    accountAliases = [userInformationRepresentation4 accountAliases];
    v21 = [NSSet setWithArray:?];
    _objc_release(accountAliases);
    _objc_release(userInformationRepresentation4);
    if (![v21 isEqual:v22])
    {
      v20 = _AKLogSystem();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        sub_10001B098(v37, location[0], v21);
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Updating full list of account names for %@ to: %@", v37, 0x16u);
      }

      objc_storeStrong(&v20, 0);
      accountManager = selfCopy->_accountManager;
      userInformationRepresentation5 = [v34 userInformationRepresentation];
      accountAliases2 = [userInformationRepresentation5 accountAliases];
      [AKAccountManager setAliases:"setAliases:forAccount:" forAccount:?];
      _objc_release(accountAliases2);
      _objc_release(userInformationRepresentation5);
      v32 = 1;
    }

    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v23, 0);
  }

  if (v32)
  {
    [(AKAccountManager *)selfCopy->_accountManager saveAccount:location[0] error:0];
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

- (void)sendUserInfoChangeNotificationWithPayload:(id)payload
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, payload);
  [(AKUserInfoController *)selfCopy _sendNotification:AKUserInfoChangedNotification withUserInfo:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_sendNotification:(id)notification withUserInfo:(id)info
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, notification);
  v8 = 0;
  objc_storeStrong(&v8, info);
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

- (id)authorizationUserInformationForRequest:(id)request shouldRequestUpdate:(BOOL *)update error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  updateCopy = update;
  errorCopy = error;
  v108 = _AKLogSiwa();
  v107 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v118, location[0]);
    _os_log_debug_impl(&_mh_execute_header, v108, v107, "Authorization requesting user information for request: %@", v118, 0xCu);
  }

  objc_storeStrong(&v108, 0);
  authkitAccount = [location[0] authkitAccount];
  v105 = [(AKAccountManager *)selfCopy->_accountManager authorizationUsedForAccount:authkitAccount];
  v104 = [(AKAccountManager *)selfCopy->_accountManager verifiedPrimaryEmailForAccount:authkitAccount];
  v103 = [(AKAccountManager *)selfCopy->_accountManager phoneAsAppleIDForAccount:authkitAccount];
  v102 = [(AKAccountManager *)selfCopy->_accountManager userUnderAgeForAccount:authkitAccount];
  v101 = [(AKAccountManager *)selfCopy->_accountManager isSiwaEnabledForChildAccount:authkitAccount];
  v100 = [(AKAccountManager *)selfCopy->_accountManager userIsSeniorForAccount:authkitAccount];
  v99 = [(AKAccountManager *)selfCopy->_accountManager ageOfMajorityForAccount:authkitAccount];
  v98 = [(AKAccountManager *)selfCopy->_accountManager givenNameForAccount:authkitAccount];
  v97 = [(AKAccountManager *)selfCopy->_accountManager familyNameForAccount:authkitAccount];
  v96 = [(AKAccountManager *)selfCopy->_accountManager primaryEmailAddressForAccount:authkitAccount];
  v95 = [(AKAccountManager *)selfCopy->_accountManager altDSIDForAccount:authkitAccount];
  v94 = [(AKAccountManager *)selfCopy->_accountManager iCloudAccountForAltDSID:v95];
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
    v5 = [(AKAccountManager *)selfCopy->_accountManager givenNameForAccount:v94];
    v6 = v98;
    v98 = v5;
    _objc_release(v6);
    v7 = [(AKAccountManager *)selfCopy->_accountManager familyNameForAccount:v94];
    v8 = v97;
    v97 = v7;
    _objc_release(v8);
    if (updateCopy)
    {
      *updateCopy = 1;
    }
  }

  v90 = objc_alloc_init(AKUserInformation);
  [v90 setGivenName:v98];
  [v90 setFamilyName:v97];
  v44 = [NSNumber numberWithBool:v105 & 1];
  [v90 setHasUsedAuthorization:?];
  _objc_release(v44);
  username = [authkitAccount username];
  v45 = [AKUsernameFormatter formattedUsernameFromUsername:?];
  [v90 setAccountName:?];
  _objc_release(v45);
  _objc_release(username);
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
  [v90 setAppleIDSecurityLevel:{-[AKAccountManager securityLevelForAccount:](selfCopy->_accountManager, "securityLevelForAccount:", authkitAccount)}];
  v50 = [(AKAccountManager *)selfCopy->_accountManager hasSOSActiveDeviceForAccount:authkitAccount];
  [v90 setHasSOSActiveDevice:?];
  _objc_release(v50);
  v51 = [(AKAccountManager *)selfCopy->_accountManager isSOSNeededForAccount:authkitAccount];
  [v90 setSOSNeeded:?];
  _objc_release(v51);
  v52 = [(AKAccountManager *)selfCopy->_accountManager configDataVersionForAccount:authkitAccount];
  [v90 setConfigDataVersion:?];
  _objc_release(v52);
  v53 = [(AKAccountManager *)selfCopy->_accountManager hasModernRecoveryKeyForAccount:authkitAccount];
  [v90 setHasModernRecoveryKey:?];
  _objc_release(v53);
  v54 = [(AKAccountManager *)selfCopy->_accountManager get3PRegulatoryOverride:authkitAccount];
  [v90 setThirdPartyRegulatoryOverride:?];
  _objc_release(v54);
  v55 = [(AKAccountManager *)selfCopy->_accountManager adpCohortForAccount:authkitAccount];
  [v90 setAdpCohort:?];
  _objc_release(v55);
  if ([v90 isManagedAppleID])
  {
    v40 = [NSNumber numberWithUnsignedInteger:[(AKAccountManager *)selfCopy->_accountManager managedOrganizationTypeForAccount:authkitAccount]];
    [v90 setManagedOrganizationType:?];
    _objc_release(v40);
    v41 = [(AKAccountManager *)selfCopy->_accountManager managedOrganizationNameForAccount:authkitAccount];
    [v90 setManagedOrganizationName:?];
    _objc_release(v41);
    v42 = [NSNumber numberWithBool:[(AKAccountManager *)selfCopy->_accountManager isNotificationEmailAvailableForAccount:authkitAccount]];
    [v90 setIsNotificationEmailAvailable:?];
    _objc_release(v42);
    v43 = [(AKAccountManager *)selfCopy->_accountManager notificationEmailForAccount:authkitAccount];
    [v90 setNotificationEmail:?];
    _objc_release(v43);
    [v90 setAuthMode:{-[AKAccountManager authenticationModeForAccount:](selfCopy->_accountManager, "authenticationModeForAccount:", authkitAccount)}];
  }

  requestedScopes = [location[0] requestedScopes];
  v39 = [requestedScopes containsObject:AKAuthorizationScopeEmail];
  _objc_release(requestedScopes);
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
    v82 = [(AKAccountManager *)selfCopy->_accountManager forwardingEmailForAccount:authkitAccount];
    v81 = [(AKAccountManager *)selfCopy->_accountManager selectedPrivateEmailForAccount:authkitAccount];
    v80 = [(AKAccountManager *)selfCopy->_accountManager selectedAuthorizationEmailForAccount:authkitAccount];
    v32 = [(AKAccountManager *)selfCopy->_accountManager combinedAliasesAndReachableEmailsForAccount:authkitAccount];
    v79 = [v32 mutableCopy];
    _objc_release(v32);
    v33 = [NSNumber numberWithBool:v81 & 1];
    [v90 setPreviouslyWantedPrivateEmail:?];
    _objc_release(v33);
    requestedScopes2 = [location[0] requestedScopes];
    v35 = [requestedScopes2 containsObject:AKAuthorizationScopeEmail];
    _objc_release(requestedScopes2);
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
        clientID = [location[0] clientID];
        v28 = [v77 containsObject:?];
        _objc_release(clientID);
        if (v28)
        {
          v26 = [NSNumber numberWithBool:1];
          [v90 setPreviouslyWantedPrivateEmail:?];
          _objc_release(v26);
          oslog = _AKLogSiwa();
          v75 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
          {
            clientID2 = [location[0] clientID];
            sub_1000194D4(v116, clientID2);
            _os_log_debug_impl(&_mh_execute_header, oslog, v75, "previouslyWantedPrivateEmail for client ID %@", v116, 0xCu);
            _objc_release(clientID2);
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
          firstObject = [v79 firstObject];
          [v90 setForwardingEmail:?];
          _objc_release(firstObject);
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
          reachableEmails = [v90 reachableEmails];
          v61 = 0;
          v14 = 1;
          if (reachableEmails)
          {
            reachableEmails2 = [v90 reachableEmails];
            v61 = 1;
            v14 = [reachableEmails2 count] == 0;
          }

          if (v61)
          {
            _objc_release(reachableEmails2);
          }

          _objc_release(reachableEmails);
          if (v14)
          {
            if (errorCopy)
            {
              v12 = [NSError ak_errorWithCode:-7072];
              v9 = v12;
              *errorCopy = v12;
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
  objc_storeStrong(&authkitAccount, 0);
  objc_storeStrong(location, 0);
  v10 = v113;

  return v10;
}

- (BOOL)_additionalInfoChangedForAccount:(id)account userInformation:(id)information
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v15 = 0;
  objc_storeStrong(&v15, information);
  v14 = 0;
  additionalInfo = [v15 additionalInfo];
  v12 = [(AKAccountManager *)selfCopy->_accountManager additionalInfoForAccount:location[0]];
  if (additionalInfo && ![additionalInfo isEqualToDictionary:v12])
  {
    [(AKAccountManager *)selfCopy->_accountManager setAdditionalInfo:additionalInfo forAccount:location[0]];
    v14 = 1;
  }

  hasMDM = [v15 hasMDM];
  bOOLValue = [hasMDM BOOLValue];
  _objc_release(hasMDM);
  v11 = [(AKAccountManager *)selfCopy->_accountManager hasMDMForAccount:location[0]];
  hasMDM2 = [v15 hasMDM];
  v9 = 0;
  if (hasMDM2)
  {
    v9 = (bOOLValue & 1) != (v11 & 1);
  }

  _objc_release(hasMDM2);
  if (v9)
  {
    [(AKAccountManager *)selfCopy->_accountManager setHasMDM:bOOLValue & 1 forAccount:location[0]];
    v14 = 1;
  }

  v5 = v14;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&additionalInfo, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (BOOL)_trustedPhoneNumbersChangedForAccount:(id)account userInformation:(id)information
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v12 = 0;
  objc_storeStrong(&v12, information);
  v11 = 0;
  trustedPhoneNumbers = [v12 trustedPhoneNumbers];
  v9 = [NSSet setWithArray:trustedPhoneNumbers];
  v7 = [(AKAccountManager *)selfCopy->_accountManager trustedPhoneNumbersForAccount:location[0]];
  v8 = [NSSet setWithArray:?];
  _objc_release(v7);
  if (trustedPhoneNumbers && ![v9 isEqualToSet:v8])
  {
    [(AKAccountManager *)selfCopy->_accountManager setTrustedPhoneNumbers:trustedPhoneNumbers forAccount:location[0]];
    v11 = 1;
  }

  v5 = v11;
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&trustedPhoneNumbers, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (BOOL)_securityKeysChangedForAccount:(id)account userInformation:(id)information
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v12 = 0;
  objc_storeStrong(&v12, information);
  v11 = 0;
  securityKeys = [v12 securityKeys];
  v9 = [NSSet setWithArray:securityKeys];
  v7 = [(AKAccountManager *)selfCopy->_accountManager securityKeysForAccount:location[0]];
  v8 = [NSSet setWithArray:?];
  _objc_release(v7);
  if (securityKeys && ![v9 isEqualToSet:v8])
  {
    [(AKAccountManager *)selfCopy->_accountManager setSecurityKeys:securityKeys forAccount:location[0]];
    v11 = 1;
  }

  v5 = v11;
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&securityKeys, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (BOOL)_loginHandlesChangedForAccount:(id)account userInformation:(id)information
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v12 = 0;
  objc_storeStrong(&v12, information);
  v11 = 0;
  loginHandles = [v12 loginHandles];
  v9 = [NSSet setWithArray:loginHandles];
  v7 = [(AKAccountManager *)selfCopy->_accountManager loginHandlesForAccount:location[0]];
  v8 = [NSSet setWithArray:?];
  _objc_release(v7);
  if (loginHandles && ![v9 isEqualToSet:v8])
  {
    [(AKAccountManager *)selfCopy->_accountManager setLoginHandles:loginHandles forAccount:location[0]];
    v11 = 1;
  }

  v5 = v11;
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&loginHandles, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (BOOL)_managedAppleIDInfoChangedForAccount:(id)account userInformation:(id)information
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v21 = 0;
  objc_storeStrong(&v21, information);
  v20 = 0;
  if ([v21 isManagedAppleID])
  {
    v19 = [NSNumber numberWithUnsignedInteger:[(AKAccountManager *)selfCopy->_accountManager managedOrganizationTypeForAccount:location[0]]];
    managedOrganizationType = [v21 managedOrganizationType];
    if (managedOrganizationType && ![managedOrganizationType isEqual:v19])
    {
      integerValue = [managedOrganizationType integerValue];
      [(AKAccountManager *)selfCopy->_accountManager setManagedOrganizationType:integerValue forAccount:location[0]];
      v20 = 1;
    }

    v16 = [(AKAccountManager *)selfCopy->_accountManager managedOrganizationNameForAccount:location[0]];
    managedOrganizationName = [v21 managedOrganizationName];
    if (managedOrganizationName && ![managedOrganizationName isEqual:v16])
    {
      [(AKAccountManager *)selfCopy->_accountManager setManagedOrganizationName:managedOrganizationName forAccount:location[0]];
      v20 = 1;
    }

    v14 = [(AKAccountManager *)selfCopy->_accountManager isNotificationEmailAvailableForAccount:location[0]];
    isNotificationEmailAvailable = [v21 isNotificationEmailAvailable];
    bOOLValue = [isNotificationEmailAvailable BOOLValue];
    _objc_release(isNotificationEmailAvailable);
    v13 = bOOLValue;
    isNotificationEmailAvailable2 = [v21 isNotificationEmailAvailable];
    v9 = 0;
    if (isNotificationEmailAvailable2)
    {
      v9 = (v13 & 1) != (v14 & 1);
    }

    _objc_release(isNotificationEmailAvailable2);
    if (v9)
    {
      [(AKAccountManager *)selfCopy->_accountManager setIsNotificationEmailAvailable:v13 & 1 forAccount:location[0]];
      v20 = 1;
    }

    v12 = [(AKAccountManager *)selfCopy->_accountManager notificationEmailForAccount:location[0]];
    notificationEmail = [v21 notificationEmail];
    if (notificationEmail && ![notificationEmail isEqual:v12])
    {
      [(AKAccountManager *)selfCopy->_accountManager setNotificationEmail:notificationEmail forAccount:location[0]];
      v20 = 1;
    }

    objc_storeStrong(&notificationEmail, 0);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&managedOrganizationName, 0);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&managedOrganizationType, 0);
    objc_storeStrong(&v19, 0);
  }

  v5 = v20;
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (void)_refreshDeviceListForAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v3 = [AKDeviceListRequester alloc];
  v6 = +[AKDeviceListStoreManager sharedManager];
  v5 = objc_opt_new();
  v4 = +[AKAccountManager sharedInstance];
  v9 = [AKDeviceListRequester initWithStoreManager:v3 cdpFactory:"initWithStoreManager:cdpFactory:accountManager:client:" accountManager:v6 client:v5];
  _objc_release(v4);
  _objc_release(v5);
  _objc_release(v6);
  v8 = objc_alloc_init(AKDeviceListRequestContext);
  v7 = [(AKAccountManager *)selfCopy->_accountManager altDSIDForAccount:location[0]];
  [v8 setAltDSID:?];
  _objc_release(v7);
  [v8 setForceFetch:1];
  [v8 setIncludeUntrustedDevices:1];
  [(AKDeviceListRequester *)v9 fetchDeviceListWithContext:v8 completionHandler:&stru_1003232B8];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_birthYearChangedForAccount:(id)account userInformation:(id)information
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v11 = 0;
  objc_storeStrong(&v11, information);
  v10 = 0;
  v9 = [(AKAccountManager *)selfCopy->_accountManager birthYearForAccount:location[0]];
  birthYear = [v11 birthYear];
  if (birthYear)
  {
    if (!v9 || (v6 = [birthYear integerValue], v6 != objc_msgSend(v9, "integerValue")))
    {
      [(AKAccountManager *)selfCopy->_accountManager setBirthYear:birthYear forAccount:location[0]];
      v10 = 1;
    }
  }

  v5 = v10;
  objc_storeStrong(&birthYear, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (void)updateBirthdayForAltDSID:(id)d userInformation:(id)information
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v42 = 0;
  objc_storeStrong(&v42, information);
  v41 = objc_alloc_init(AKBirthDayKeychain);
  v40 = 0;
  v38 = 0;
  v15 = [v41 fetchBirthDayForAltDSID:location[0] error:&v38];
  objc_storeStrong(&v40, v38);
  v39 = v15;
  birthMonth = [v42 birthMonth];
  birthDay = [v42 birthDay];
  birthYear = [v42 birthYear];
  v37 = [NSString stringWithFormat:@"%@-%@-%@", birthMonth, birthDay, birthYear];
  _objc_release(birthYear);
  _objc_release(birthDay);
  _objc_release(birthMonth);
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
    primaryiCloudAccount = [(AKAccountManager *)selfCopy->_accountManager primaryiCloudAccount];
    if (primaryiCloudAccount)
    {
      [(AKAccountManager *)selfCopy->_accountManager setPendingDOB:0 forAccount:primaryiCloudAccount];
      v25 = 0;
      accountManager = selfCopy->_accountManager;
      v24 = 0;
      v9 = [(AKAccountManager *)accountManager saveAccount:primaryiCloudAccount error:&v24];
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

    objc_storeStrong(&primaryiCloudAccount, 0);
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

- (void)updateUserInformationWithContext:(id)context userInformation:(id)information client:(id)client completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v37 = 0;
  objc_storeStrong(&v37, information);
  v36 = 0;
  objc_storeStrong(&v36, client);
  v35 = 0;
  objc_storeStrong(&v35, completion);
  v34 = _AKLogSystem();
  v33 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    altDSID = [location[0] altDSID];
    sub_10001CE98(v42, 1752392040, altDSID);
    _os_log_debug_impl(&_mh_execute_header, v34, v33, "Starting server-side user information update for altDSID: %{mask.hash}@", v42, 0x16u);
    _objc_release(altDSID);
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
      v20 = _objc_retain(selfCopy);
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