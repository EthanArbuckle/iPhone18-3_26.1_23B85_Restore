@interface AKAuthorizationCredentialStateController
- (AKAuthorizationCredentialStateController)init;
- (AKAuthorizationCredentialStateController)initWithClient:(id)client;
- (AKAuthorizationCredentialStateController)initWithClient:(id)client accountManager:(id)manager localAccountsStorageController:(id)controller sharedAccountsStorageController:(id)storageController;
- (BOOL)_demoModeEnabled;
- (BOOL)_isCapableOfSilentAuthForRequest:(id)request;
- (BOOL)_verifyUserID:(id)d forAltDSID:(id)iD;
- (id)_fetchDeveloperTeamWithClientID:(id)d withAltDSID:(id)iD;
- (id)_fetchDeveloperTeamWithTeamID:(id)d withAltDSID:(id)iD;
- (int64_t)_internalCredentialStateForUserState:(int64_t)state error:(id)error;
- (int64_t)_sanitizedCredentialStateForExternalClients:(int64_t)clients;
- (int64_t)getInternalCredentialStateForCredentialRequestContext:(id)context;
- (void)_getLocalAndSharedCredentialStateWithStateRequest:(id)request completion:(id)completion;
- (void)_getLocalCredentialStateWithStateRequest:(id)request completion:(id)completion;
- (void)_getSharedCredentialStateRequest:(id)request completion:(id)completion;
- (void)_verifyClientInformationForRequest:(id)request completion:(id)completion;
- (void)getCredentialStateForClientID:(id)d completion:(id)completion;
- (void)getCredentialStateForRequest:(id)request completion:(id)completion;
@end

@implementation AKAuthorizationCredentialStateController

- (AKAuthorizationCredentialStateController)init
{
  selfCopy = self;
  [(AKAuthorizationCredentialStateController *)self doesNotRecognizeSelector:a2];
  objc_storeStrong(&selfCopy, 0);
  return 0;
}

- (AKAuthorizationCredentialStateController)initWithClient:(id)client
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v3 = selfCopy;
  selfCopy = 0;
  v11.receiver = v3;
  v11.super_class = AKAuthorizationCredentialStateController;
  v10 = [(AKAuthorizationCredentialStateController *)&v11 init];
  selfCopy = v10;
  objc_storeStrong(&selfCopy, v10);
  if (v10)
  {
    objc_storeStrong(&selfCopy->_client, location[0]);
    v4 = +[AKAccountManager sharedInstance];
    accountManager = selfCopy->_accountManager;
    selfCopy->_accountManager = v4;
    _objc_release(accountManager);
    v6 = +[AKAuthorizationStoreManager sharedInstance];
    localAccountsStorageController = selfCopy->_localAccountsStorageController;
    selfCopy->_localAccountsStorageController = v6;
    _objc_release(localAccountsStorageController);
    objc_storeStrong(&selfCopy->_sharedAccountsStorageController, 0);
  }

  v9 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (AKAuthorizationCredentialStateController)initWithClient:(id)client accountManager:(id)manager localAccountsStorageController:(id)controller sharedAccountsStorageController:(id)storageController
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v16 = 0;
  objc_storeStrong(&v16, manager);
  v15 = 0;
  objc_storeStrong(&v15, controller);
  v14 = 0;
  objc_storeStrong(&v14, storageController);
  v6 = selfCopy;
  selfCopy = 0;
  v13.receiver = v6;
  v13.super_class = AKAuthorizationCredentialStateController;
  v12 = [(AKAuthorizationCredentialStateController *)&v13 init];
  selfCopy = v12;
  objc_storeStrong(&selfCopy, v12);
  if (v12)
  {
    objc_storeStrong(&selfCopy->_client, location[0]);
    objc_storeStrong(&selfCopy->_accountManager, v16);
    objc_storeStrong(&selfCopy->_localAccountsStorageController, v15);
    objc_storeStrong(&selfCopy->_sharedAccountsStorageController, v14);
  }

  v8 = _objc_retain(selfCopy);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (void)getCredentialStateForRequest:(id)request completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v65 = 0;
  objc_storeStrong(&v65, completion);
  if ([(AKAuthorizationCredentialStateController *)selfCopy _demoModeEnabled])
  {
    v64 = _AKLogSiwa();
    v63 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      log = v64;
      type = v63;
      sub_10001CEEC(v62);
      _os_log_impl(&_mh_execute_header, log, type, "This is an internal build with Demo mode for Authorization activated, returning 'NOT FOUND' credential state", v62, 2u);
    }

    objc_storeStrong(&v64, 0);
    (*(v65 + 2))(v65, 2, 0);
    v61 = 1;
  }

  else
  {
    clientID = [location[0] clientID];
    _objc_release(clientID);
    if (!clientID)
    {
      v60 = _AKLogSiwa();
      v59 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v60;
        v26 = v59;
        sub_10001CEEC(v58);
        _os_log_impl(&_mh_execute_header, v25, v26, "Credential state request does not contain clientID, reverting to XPC client information.", v58, 2u);
      }

      objc_storeStrong(&v60, 0);
      v57 = _AKLogSiwa();
      v56 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        bundleID = [(AKClient *)selfCopy->_client bundleID];
        sub_1000194D4(v70, bundleID);
        _os_log_impl(&_mh_execute_header, v57, v56, "Setting clientID to %@", v70, 0xCu);
        _objc_release(bundleID);
      }

      objc_storeStrong(&v57, 0);
      bundleID2 = [(AKClient *)selfCopy->_client bundleID];
      [location[0] setClientID:?];
      _objc_release(bundleID2);
    }

    teamID = [location[0] teamID];
    _objc_release(teamID);
    if (!teamID)
    {
      v55 = _AKLogSiwa();
      v54 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v55;
        v21 = v54;
        sub_10001CEEC(v53);
        _os_log_impl(&_mh_execute_header, v20, v21, "Credential state does not contain teamID, reverting to XPC client information.", v53, 2u);
      }

      objc_storeStrong(&v55, 0);
      v52 = _AKLogSiwa();
      v51 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        teamID2 = [(AKClient *)selfCopy->_client teamID];
        sub_1000194D4(v69, teamID2);
        _os_log_impl(&_mh_execute_header, v52, v51, "Setting teamID to %@", v69, 0xCu);
        _objc_release(teamID2);
      }

      objc_storeStrong(&v52, 0);
      teamID3 = [(AKClient *)selfCopy->_client teamID];
      [location[0] setTeamID:?];
      _objc_release(teamID3);
    }

    hasOwnerAccess = [(AKClient *)selfCopy->_client hasOwnerAccess];
    if (hasOwnerAccess)
    {
      goto LABEL_28;
    }

    clientID2 = [location[0] clientID];
    bundleID3 = [(AKClient *)selfCopy->_client bundleID];
    v47 = 0;
    v45 = 0;
    v17 = 0;
    if ([clientID2 isEqualToString:?])
    {
      teamID4 = [location[0] teamID];
      v47 = 1;
      teamID5 = [(AKClient *)selfCopy->_client teamID];
      v45 = 1;
      v17 = [teamID4 isEqualToString:?];
    }

    if (v45)
    {
      _objc_release(teamID5);
    }

    if (v47)
    {
      _objc_release(teamID4);
    }

    _objc_release(bundleID3);
    _objc_release(clientID2);
    v49 = v17 & 1;
    if (v17)
    {
LABEL_28:
      altDSID = [location[0] altDSID];
      _objc_release(altDSID);
      if (altDSID)
      {
        v41 = _AKLogSiwa();
        v40 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v6 = v41;
          v7 = v40;
          sub_10001CEEC(v39);
          _os_log_impl(&_mh_execute_header, v6, v7, "AltDSID is included in the State Request,this should only be happening in testing", v39, 2u);
        }

        objc_storeStrong(&v41, 0);
      }

      else
      {
        altDSIDForAuthKitAccountRequestingAuthorization = [(AKAccountManager *)selfCopy->_accountManager altDSIDForAuthKitAccountRequestingAuthorization];
        if (altDSIDForAuthKitAccountRequestingAuthorization)
        {
          [location[0] setAltDSID:altDSIDForAuthKitAccountRequestingAuthorization];
          v61 = 0;
        }

        else
        {
          v8 = v65;
          v9 = [NSError ak_errorWithCode:-7022];
          v8[2](v8, 2);
          _objc_release(v9);
          v61 = 1;
        }

        objc_storeStrong(&altDSIDForAuthKitAccountRequestingAuthorization, 0);
        if (v61)
        {
          goto LABEL_38;
        }
      }

      [location[0] setShouldIgnoreUserID:0];
      [location[0] setShouldIgnoreTeamID:0];
      v5 = selfCopy;
      v4 = location[0];
      v31 = _NSConcreteStackBlock;
      v32 = -1073741824;
      v33 = 0;
      v34 = sub_100115620;
      v35 = &unk_100323A48;
      v36 = _objc_retain(selfCopy);
      v37 = _objc_retain(location[0]);
      v38 = _objc_retain(v65);
      [(AKAuthorizationCredentialStateController *)v5 _verifyClientInformationForRequest:v4 completion:&v31];
      objc_storeStrong(&v38, 0);
      objc_storeStrong(&v37, 0);
      objc_storeStrong(&v36, 0);
      v61 = 0;
      goto LABEL_38;
    }

    oslog = _AKLogSystem();
    v43 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      bundleID4 = [(AKClient *)selfCopy->_client bundleID];
      teamID6 = [(AKClient *)selfCopy->_client teamID];
      sub_10001B098(v68, bundleID4, teamID6);
      _os_log_impl(&_mh_execute_header, oslog, v43, "Requested Credential state does not match XPC client's bundleID (%@) or teamID (%@), returning AKAuthenticationErrorInvalidContext", v68, 0x16u);
      _objc_release(teamID6);
      _objc_release(bundleID4);
    }

    objc_storeStrong(&oslog, 0);
    v11 = v65;
    v12 = [NSError ak_errorWithCode:-7044];
    v11[2](v11, 2);
    _objc_release(v12);
    v61 = 1;
  }

LABEL_38:
  objc_storeStrong(&v65, 0);
  objc_storeStrong(location, 0);
}

- (int64_t)getInternalCredentialStateForCredentialRequestContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v42 = objc_alloc_init(AKAuthorizationCredentialStateRequest);
  authorizationRequest = [location[0] authorizationRequest];
  teamID = [authorizationRequest teamID];
  [v42 setTeamID:?];
  _objc_release(teamID);
  userIdentifier = [authorizationRequest userIdentifier];
  [v42 setUserID:?];
  _objc_release(userIdentifier);
  clientID = [authorizationRequest clientID];
  [v42 setClientID:?];
  _objc_release(clientID);
  [v42 setShouldIgnoreTeamID:{objc_msgSend(location[0], "_isWebLogin")}];
  [v42 setShouldIgnoreUserID:1];
  clientID2 = [v42 clientID];
  _objc_release(clientID2);
  if (!clientID2)
  {
    v40 = _AKLogSiwa();
    v39 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      log = v40;
      type = v39;
      sub_10001CEEC(v38);
      _os_log_impl(&_mh_execute_header, log, type, "Credential state request does not contain clientID, reverting to XPC client information.", v38, 2u);
    }

    objc_storeStrong(&v40, 0);
    v37 = _AKLogSiwa();
    v36 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      bundleID = [(AKClient *)selfCopy->_client bundleID];
      sub_1000194D4(v46, bundleID);
      _os_log_impl(&_mh_execute_header, v37, v36, "Setting clientID to %@", v46, 0xCu);
      _objc_release(bundleID);
    }

    objc_storeStrong(&v37, 0);
    bundleID2 = [(AKClient *)selfCopy->_client bundleID];
    [v42 setClientID:?];
    _objc_release(bundleID2);
  }

  teamID2 = [v42 teamID];
  _objc_release(teamID2);
  if (!teamID2)
  {
    v35 = _AKLogSiwa();
    v34 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v35;
      v10 = v34;
      sub_10001CEEC(v33);
      _os_log_impl(&_mh_execute_header, v9, v10, "Credential state does not contain teamID, reverting to XPC client information.", v33, 2u);
    }

    objc_storeStrong(&v35, 0);
    v32 = _AKLogSiwa();
    v31 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      teamID3 = [(AKClient *)selfCopy->_client teamID];
      sub_1000194D4(v45, teamID3);
      _os_log_impl(&_mh_execute_header, v32, v31, "Setting teamID to %@", v45, 0xCu);
      _objc_release(teamID3);
    }

    objc_storeStrong(&v32, 0);
    teamID4 = [(AKClient *)selfCopy->_client teamID];
    [v42 setTeamID:?];
    _objc_release(teamID4);
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x20000000;
  v29 = 32;
  v30 = 2;
  v6 = selfCopy;
  v5 = v42;
  v20 = _NSConcreteStackBlock;
  v21 = -1073741824;
  v22 = 0;
  v23 = sub_100115F40;
  v24 = &unk_100323A70;
  v25[1] = &v26;
  v25[0] = _objc_retain(selfCopy);
  [(AKAuthorizationCredentialStateController *)v6 _verifyClientInformationForRequest:v5 completion:&v20];
  v4 = v27[3];
  objc_storeStrong(v25, 0);
  _Block_object_dispose(&v26, 8);
  objc_storeStrong(&authorizationRequest, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
  return v4;
}

- (void)getCredentialStateForClientID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v17 = 0;
  objc_storeStrong(&v17, completion);
  v16 = _AKLogSiwa();
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v20, location[0]);
    _os_log_impl(&_mh_execute_header, v16, v15, "Attempting private call to fetch credential state for clientID: %@", v20, 0xCu);
  }

  objc_storeStrong(&v16, 0);
  v14 = objc_alloc_init(AKAuthorizationCredentialStateRequest);
  [v14 setClientID:location[0]];
  [v14 setShouldIgnoreTeamID:1];
  [v14 setShouldIgnoreUserID:1];
  v5 = selfCopy;
  v4 = v14;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_100116224;
  v11 = &unk_100323A98;
  v12 = _objc_retain(selfCopy);
  v13 = _objc_retain(v17);
  [(AKAuthorizationCredentialStateController *)v5 _verifyClientInformationForRequest:v4 completion:&v7];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)_verifyClientInformationForRequest:(id)request completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v31 = 0;
  objc_storeStrong(&v31, completion);
  teamID = [location[0] teamID];
  shouldIgnoreTeamID = 1;
  if (teamID)
  {
    shouldIgnoreTeamID = [location[0] shouldIgnoreTeamID];
  }

  _objc_release(teamID);
  if (shouldIgnoreTeamID)
  {
    if (![(AKClient *)selfCopy->_client hasInternalEntitledAccess])
    {
      v30 = _AKLogSiwa();
      v29 = 16;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        log = v30;
        type = v29;
        sub_10001CEEC(v28);
        _os_log_error_impl(&_mh_execute_header, log, type, "Client did not have a teamID and it is not an internal client", v28, 2u);
      }

      objc_storeStrong(&v30, 0);
      v13 = v31;
      v14 = [NSError ak_errorWithCode:-7073];
      v13[2](v13, 2);
      _objc_release(v14);
      v27 = 1;
      goto LABEL_19;
    }

    v26 = _AKLogSiwa();
    v25 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v26;
      v12 = v25;
      sub_10001CEEC(v24);
      _os_log_impl(&_mh_execute_header, v11, v12, "Client has internal entitlements and does not have a teamID", v24, 2u);
    }

    objc_storeStrong(&v26, 0);
  }

  clientID = [location[0] clientID];
  _objc_release(clientID);
  if (clientID)
  {
    accountManager = selfCopy->_accountManager;
    altDSID = [location[0] altDSID];
    v20 = [AKAccountManager authKitAccountWithAltDSID:"authKitAccountWithAltDSID:error:" error:?];
    _objc_release(altDSID);
    if (([(AKAccountManager *)selfCopy->_accountManager userUnderAgeForAccount:v20]& 1) != 0)
    {
      [(AKAuthorizationCredentialStateController *)selfCopy _getLocalCredentialStateWithStateRequest:location[0] completion:v31];
    }

    else
    {
      [(AKAuthorizationCredentialStateController *)selfCopy _getLocalAndSharedCredentialStateWithStateRequest:location[0] completion:v31];
    }

    objc_storeStrong(&v20, 0);
    v27 = 0;
  }

  else
  {
    v23 = _AKLogSiwa();
    v22 = 16;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v8 = v23;
      v9 = v22;
      sub_10001CEEC(v21);
      _os_log_error_impl(&_mh_execute_header, v8, v9, "Client did not have a application identifier", v21, 2u);
    }

    objc_storeStrong(&v23, 0);
    v6 = v31;
    v7 = [NSError ak_errorWithCode:-7074];
    v6[2](v6, 2);
    _objc_release(v7);
    v27 = 1;
  }

LABEL_19:
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
}

- (int64_t)_internalCredentialStateForUserState:(int64_t)state error:(id)error
{
  selfCopy = self;
  v6 = a2;
  *(&location + 1) = state;
  *&location = 0;
  objc_storeStrong(&location, error);
  if (location == __PAIR128__(3, 0))
  {
    v8 = 3;
  }

  else if (*(&location + 1) == 2 && ([location ak_isAuthenticationErrorWithCode:-7083] & 1) != 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(&location + 1);
  }

  objc_storeStrong(&location, 0);
  return v8;
}

- (void)_getLocalAndSharedCredentialStateWithStateRequest:(id)request completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v61 = 0;
  objc_storeStrong(&v61, completion);
  v60 = dispatch_group_create();
  dispatch_group_enter(v60);
  v53 = 0;
  v54 = &v53;
  v55 = 838860800;
  v56 = 48;
  v57 = sub_100003B3C;
  v58 = sub_100011290;
  v59 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x20000000;
  v51 = 32;
  v52 = 2;
  v14 = selfCopy;
  v13 = location[0];
  v42 = _NSConcreteStackBlock;
  v43 = -1073741824;
  v44 = 0;
  v45 = sub_100116EB8;
  v46 = &unk_100323AC0;
  v47[1] = &v53;
  v47[2] = &v48;
  v47[0] = _objc_retain(v60);
  [(AKAuthorizationCredentialStateController *)v14 _getLocalCredentialStateWithStateRequest:v13 completion:&v42];
  v36[0] = 0;
  v36[1] = v36;
  v37 = 838860800;
  v38 = 48;
  v39 = sub_100003B3C;
  v40 = sub_100011290;
  v41 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x20000000;
  v34 = 32;
  v35 = 2;
  if (selfCopy->_sharedAccountsStorageController)
  {
    dispatch_group_enter(v60);
    v12 = selfCopy;
    v11 = location[0];
    v25 = _NSConcreteStackBlock;
    v26 = -1073741824;
    v27 = 0;
    v28 = sub_100116F54;
    v29 = &unk_100323AC0;
    v30[1] = v36;
    v30[2] = &v31;
    v30[0] = _objc_retain(v60);
    [(AKAuthorizationCredentialStateController *)v12 _getSharedCredentialStateRequest:v11 completion:&v25];
    objc_storeStrong(v30, 0);
  }

  dispatch_group_wait(v60, 0xFFFFFFFFFFFFFFFFLL);
  v24 = v32[3] == 1;
  v10 = 1;
  if (v49[3] != 1)
  {
    v10 = v49[3] == 3;
  }

  v23 = v10;
  if (v24 && v23)
  {
    oslog = _AKLogSiwa();
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      v9 = type;
      sub_10001CEEC(v20);
      _os_log_impl(&_mh_execute_header, log, v9, "We have both shared and personal credentials", v20, 2u);
    }

    objc_storeStrong(&oslog, 0);
    (*(v61 + 2))();
  }

  else if (!v24 || v23)
  {
    if (!v24)
    {
      v16 = _AKLogSiwa();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        sub_100116FF0(v64, v49[3], v54[5]);
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Using personal credential state - %ld, error - %@", v64, 0x16u);
      }

      objc_storeStrong(&v16, 0);
      v4 = v49[3];
      v5 = v54[5];
      (*(v61 + 2))();
    }
  }

  else
  {
    v19 = _AKLogSiwa();
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v19;
      v7 = v18;
      sub_10001CEEC(v17);
      _os_log_impl(&_mh_execute_header, v6, v7, "We have a shared credential but no personal credential", v17, 2u);
    }

    objc_storeStrong(&v19, 0);
    (*(v61 + 2))();
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(v36, 8);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(v47, 0);
  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v53, 8);
  objc_storeStrong(&v59, 0);
  objc_storeStrong(&v60, 0);
  objc_storeStrong(&v61, 0);
  objc_storeStrong(location, 0);
}

- (void)_getLocalCredentialStateWithStateRequest:(id)request completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v158 = 0;
  objc_storeStrong(&v158, completion);
  altDSIDForAuthKitAccountRequestingAuthorization = [(AKAccountManager *)selfCopy->_accountManager altDSIDForAuthKitAccountRequestingAuthorization];
  v78 = selfCopy;
  clientID = [location[0] clientID];
  v156 = [AKAuthorizationCredentialStateController _fetchDeveloperTeamWithClientID:v78 withAltDSID:"_fetchDeveloperTeamWithClientID:withAltDSID:"];
  _objc_release(clientID);
  apps = [v156 apps];
  clientID2 = [location[0] clientID];
  v155 = [apps objectForKeyedSubscript:?];
  _objc_release(clientID2);
  _objc_release(apps);
  if (v155)
  {
    teamID = [v156 teamID];
    teamID2 = [location[0] teamID];
    v73 = [teamID isEqualToString:?];
    _objc_release(teamID2);
    _objc_release(teamID);
    v151 = v73;
    v148 = 0;
    v146 = 0;
    if (v73)
    {
      v4 = _objc_retain(v156);
    }

    else
    {
      v70 = selfCopy;
      teamID3 = [location[0] teamID];
      v148 = 1;
      v147 = [AKAuthorizationCredentialStateController _fetchDeveloperTeamWithTeamID:v70 withAltDSID:"_fetchDeveloperTeamWithTeamID:withAltDSID:"];
      v146 = 1;
      v4 = _objc_retain(v147);
    }

    v150 = v4;
    if (v146)
    {
      _objc_release(v147);
    }

    if (v148)
    {
      _objc_release(teamID3);
    }

    if (v150 || ([location[0] shouldIgnoreTeamID] & 1) == 0)
    {
      if (v150)
      {
        userIdentifier = [v156 userIdentifier];
        userID = [location[0] userID];
        v57 = [userIdentifier isEqualToString:?];
        _objc_release(userID);
        _objc_release(userIdentifier);
        v140 = v57;
        userIdentifier2 = [v150 userIdentifier];
        userID2 = [location[0] userID];
        v60 = [userIdentifier2 isEqualToString:?];
        _objc_release(userID2);
        _objc_release(userIdentifier2);
        v139 = v60;
        transferState = [v155 transferState];
        v62 = [transferState isEqualToString:AKAuthorizationTransferStateTransferred];
        _objc_release(transferState);
        v138 = v62;
        transferState2 = [v155 transferState];
        v64 = [transferState2 isEqualToString:AKAuthorizationTransferStateExpired];
        _objc_release(transferState2);
        v137 = v64;
        v136 = [v155 state] == 3;
        v135 = 0;
        if (v62 & 1) != 0 || (v137)
        {
          v53 = selfCopy;
          userID3 = [location[0] userID];
          v135 = [AKAuthorizationCredentialStateController _verifyUserID:v53 forAltDSID:"_verifyUserID:forAltDSID:"];
          _objc_release(userID3);
        }

        if (v136)
        {
          oslog = _AKLogSiwa();
          v133 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            v51 = oslog;
            v52 = v133;
            sub_10001CEEC(v132);
            _os_log_error_impl(&_mh_execute_header, v51, v52, "Application database has been compromised.", v132, 2u);
          }

          objc_storeStrong(&oslog, 0);
          v131 = _AKLogSiwa();
          v130 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
          {
            clientID3 = [v155 clientID];
            teamID4 = [v156 teamID];
            sub_10001B098(v161, clientID3, teamID4);
            _os_log_error_impl(&_mh_execute_header, v131, v130, "Transfer state stored in database with clientID: %@, teamID: %@", v161, 0x16u);
            _objc_release(teamID4);
            _objc_release(clientID3);
          }

          objc_storeStrong(&v131, 0);
          v151 = 0;
          v140 = 0;
          v135 = 0;
          v138 = 0;
          v137 = 0;
        }

        if (v151 & 1) != 0 && (v140)
        {
          v129 = _AKLogSiwa();
          v128 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
          {
            v47 = v129;
            v48 = v128;
            sub_10001CEEC(v127);
            _os_log_impl(&_mh_execute_header, v47, v48, "Application has a credential, directly returning application's credential state.", v127, 2u);
          }

          objc_storeStrong(&v129, 0);
          (*(v158 + 2))(v158, [v155 state], 0);
          v152 = 1;
        }

        else if (v151 & 1) == 0 || ([location[0] shouldIgnoreUserID] & 1) == 0 || (v138 & 1) != 0 || (v137)
        {
          if ((v140 & 1) != 0 || (v139 & 1) != 0 || (v135 & 1) != 0 || [location[0] shouldIgnoreUserID])
          {
            if (v151 & 1) != 0 && (v140 & 1) == 0 && (v138 & 1) != 0 && (v135)
            {
              v120 = _AKLogSiwa();
              v119 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
              {
                v39 = v120;
                v40 = v119;
                sub_10001CEEC(v118);
                _os_log_impl(&_mh_execute_header, v39, v40, "Application in transferred state with unsafe matching user identifier (to be verified by IdMS).", v118, 2u);
              }

              objc_storeStrong(&v120, 0);
              (*(v158 + 2))(v158, 3, 0);
              v152 = 1;
            }

            else if ((v151 & 1) == 0 || (v140 & 1) != 0 || (v138 & 1) == 0 || (v135 & 1) != 0 || [location[0] shouldIgnoreUserID])
            {
              if ((v151 & 1) != 0 && (v140 & 1) == 0 && (v137 & 1) != 0 && (v135 & 1) != 0 && ![location[0] shouldIgnoreUserID])
              {
                v114 = _AKLogSiwa();
                v113 = OS_LOG_TYPE_DEFAULT;
                if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
                {
                  v33 = v114;
                  v34 = v113;
                  sub_10001CEEC(v112);
                  _os_log_impl(&_mh_execute_header, v33, v34, "Application in expired state with unsafe matching user identifier.", v112, 2u);
                }

                objc_storeStrong(&v114, 0);
                v31 = v158;
                v32 = [NSError ak_errorWithCode:-7083];
                v31[2](v31, 2);
                _objc_release(v32);
                v152 = 1;
              }

              else if ((v151 & 1) == 0 || (v140 & 1) != 0 || (v137 & 1) == 0 || (v135 & 1) != 0 || [location[0] shouldIgnoreUserID])
              {
                if (v151 & 1) == 0 && (v139 & 1) != 0 && (v138)
                {
                  v108 = _AKLogSiwa();
                  v107 = OS_LOG_TYPE_DEFAULT;
                  if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                  {
                    v25 = v108;
                    v26 = v107;
                    sub_10001CEEC(v106);
                    _os_log_impl(&_mh_execute_header, v25, v26, "Application in transfered state with strongly matching alternate user identifier.", v106, 2u);
                  }

                  objc_storeStrong(&v108, 0);
                  (*(v158 + 2))(v158, 3, 0);
                  v152 = 1;
                }

                else if ((v151 & 1) != 0 || (v139 & 1) == 0 || (v137 & 1) == 0 || [location[0] shouldIgnoreUserID])
                {
                  if (v151 & 1) == 0 && (v140 & 1) != 0 && (v138)
                  {
                    v102 = _AKLogSiwa();
                    v101 = OS_LOG_TYPE_DEFAULT;
                    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
                    {
                      v19 = v102;
                      v20 = v101;
                      sub_10001CEEC(v100);
                      _os_log_impl(&_mh_execute_header, v19, v20, "Application in transferred state with strongly matching user identifier. Directly returning application's credential state.", v100, 2u);
                    }

                    objc_storeStrong(&v102, 0);
                    (*(v158 + 2))(v158, [v155 state], 0);
                    v152 = 1;
                  }

                  else if (v151 & 1) == 0 && (v140 & 1) != 0 && (v137)
                  {
                    v99 = _AKLogSiwa();
                    v98 = OS_LOG_TYPE_DEFAULT;
                    if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
                    {
                      v17 = v99;
                      v18 = v98;
                      sub_10001CEEC(v97);
                      _os_log_impl(&_mh_execute_header, v17, v18, "Application in expired state with strongly matching user identifier. Directly returning application's credential state.", v97, 2u);
                    }

                    objc_storeStrong(&v99, 0);
                    (*(v158 + 2))(v158, [v155 state], 0);
                    v152 = 1;
                  }

                  else if ((v151 & 1) != 0 || (v140 & 1) != 0 || (v137 & 1) == 0 || ([location[0] shouldIgnoreUserID] & 1) == 0)
                  {
                    if (v151 & 1) != 0 && (v140 & 1) == 0 && (v137 & 1) != 0 && ([location[0] shouldIgnoreUserID])
                    {
                      v93 = _AKLogSiwa();
                      v92 = OS_LOG_TYPE_DEFAULT;
                      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
                      {
                        v13 = v93;
                        v14 = v92;
                        sub_10001CEEC(v91);
                        _os_log_impl(&_mh_execute_header, v13, v14, "Application in expired state with no matching user identifier but user identifier match is being ignored (for internal credential state), directly returning application's credential state.", v91, 2u);
                      }

                      objc_storeStrong(&v93, 0);
                      (*(v158 + 2))(v158, [v155 state], 0);
                      v152 = 1;
                    }

                    else if ((v151 & 1) != 0 || (v140 & 1) != 0 || (v138 & 1) == 0 || ([location[0] shouldIgnoreUserID] & 1) == 0)
                    {
                      if (v151 & 1) != 0 && (v140 & 1) == 0 && (v138 & 1) != 0 && ([location[0] shouldIgnoreUserID])
                      {
                        v87 = _AKLogSiwa();
                        v86 = OS_LOG_TYPE_DEFAULT;
                        if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
                        {
                          v9 = v87;
                          v10 = v86;
                          sub_10001CEEC(v85);
                          _os_log_impl(&_mh_execute_header, v9, v10, "Application in transferred state with no matching user identifier but user identifier match is being ignored (for internal credential state), directly returning application's credential state.", v85, 2u);
                        }

                        objc_storeStrong(&v87, 0);
                        (*(v158 + 2))(v158, [v155 state], 0);
                        v152 = 1;
                      }

                      else
                      {
                        v84 = _AKLogSiwa();
                        v83 = OS_LOG_TYPE_DEFAULT;
                        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
                        {
                          v7 = v84;
                          v8 = v83;
                          sub_10001CEEC(v82);
                          _os_log_impl(&_mh_execute_header, v7, v8, "Application state cannot be securely determined.", v82, 2u);
                        }

                        objc_storeStrong(&v84, 0);
                        v5 = v158;
                        v6 = [NSError ak_errorWithCode:-7084];
                        v5[2](v5, 2);
                        _objc_release(v6);
                        v152 = 0;
                      }
                    }

                    else
                    {
                      v90 = _AKLogSiwa();
                      v89 = OS_LOG_TYPE_DEFAULT;
                      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
                      {
                        v11 = v90;
                        v12 = v89;
                        sub_10001CEEC(v88);
                        _os_log_impl(&_mh_execute_header, v11, v12, "Application in transferred state with no matching user identifier but user identifier match is being ignored (for internal credential state) and No match for Team Identifier, directly returning application's credential state.", v88, 2u);
                      }

                      objc_storeStrong(&v90, 0);
                      (*(v158 + 2))(v158, [v155 state], 0);
                      v152 = 1;
                    }
                  }

                  else
                  {
                    v96 = _AKLogSiwa();
                    v95 = OS_LOG_TYPE_DEFAULT;
                    if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
                    {
                      v15 = v96;
                      v16 = v95;
                      sub_10001CEEC(v94);
                      _os_log_impl(&_mh_execute_header, v15, v16, "Application in expired state with no matching user identifier but user identifier match is being ignored (for internal credential state) and No match for Team Identifier, directly returning application's credential state.", v94, 2u);
                    }

                    objc_storeStrong(&v96, 0);
                    (*(v158 + 2))(v158, [v155 state], 0);
                    v152 = 1;
                  }
                }

                else
                {
                  v105 = _AKLogSiwa();
                  v104 = OS_LOG_TYPE_DEFAULT;
                  if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
                  {
                    v23 = v105;
                    v24 = v104;
                    sub_10001CEEC(v103);
                    _os_log_impl(&_mh_execute_header, v23, v24, "Application in expired state with strongly matching alternate user identifier.", v103, 2u);
                  }

                  objc_storeStrong(&v105, 0);
                  v21 = v158;
                  v22 = [NSError ak_errorWithCode:-7083];
                  v21[2](v21, 2);
                  _objc_release(v22);
                  v152 = 1;
                }
              }

              else
              {
                v111 = _AKLogSiwa();
                v110 = OS_LOG_TYPE_DEFAULT;
                if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
                {
                  v29 = v111;
                  v30 = v110;
                  sub_10001CEEC(v109);
                  _os_log_impl(&_mh_execute_header, v29, v30, "Application in expired state with no matching user identifier.", v109, 2u);
                }

                objc_storeStrong(&v111, 0);
                v27 = v158;
                v28 = [NSError ak_errorWithCode:-7091];
                v27[2](v27, 2);
                _objc_release(v28);
                v152 = 1;
              }
            }

            else
            {
              v117 = _AKLogSiwa();
              v116 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
              {
                v37 = v117;
                v38 = v116;
                sub_10001CEEC(v115);
                _os_log_impl(&_mh_execute_header, v37, v38, "Application in transferred state with no matching user identifier.", v115, 2u);
              }

              objc_storeStrong(&v117, 0);
              v35 = v158;
              v36 = [NSError ak_errorWithCode:-7091];
              v35[2](v35, 2);
              _objc_release(v36);
              v152 = 1;
            }
          }

          else
          {
            v123 = _AKLogSiwa();
            v122 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
            {
              v43 = v123;
              v44 = v122;
              sub_10001CEEC(v121);
              _os_log_impl(&_mh_execute_header, v43, v44, "Application has a credential, failed user identifier validation.", v121, 2u);
            }

            objc_storeStrong(&v123, 0);
            v41 = v158;
            v42 = [NSError ak_errorWithCode:-7091];
            v41[2](v41, 2);
            _objc_release(v42);
            v152 = 1;
          }
        }

        else
        {
          v126 = _AKLogSiwa();
          v125 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
          {
            v45 = v126;
            v46 = v125;
            sub_10001CEEC(v124);
            _os_log_impl(&_mh_execute_header, v45, v46, "Application has a credential but user identifier match is being ignored (for internal credential state), directly returning application's credential state.", v124, 2u);
          }

          objc_storeStrong(&v126, 0);
          (*(v158 + 2))(v158, [v155 state], 0);
          v152 = 1;
        }
      }

      else
      {
        v142 = _AKLogSiwa();
        v141 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
        {
          teamID5 = [location[0] teamID];
          sub_1000194D4(v162, teamID5);
          _os_log_impl(&_mh_execute_header, v142, v141, "No developer teams were found with the Team ID: %@", v162, 0xCu);
          _objc_release(teamID5);
        }

        objc_storeStrong(&v142, 0);
        v65 = v158;
        v66 = [NSError ak_errorWithCode:-7073];
        v65[2](v65, 2);
        _objc_release(v66);
        v152 = 1;
      }
    }

    else
    {
      v145 = _AKLogSiwa();
      v144 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
      {
        v68 = v145;
        v69 = v144;
        sub_10001CEEC(v143);
        _os_log_impl(&_mh_execute_header, v68, v69, "Credential State Request has an ignore flag on the TeamID returning Credential State", v143, 2u);
      }

      objc_storeStrong(&v145, 0);
      (*(v158 + 2))(v158, [v155 state], 0);
      v152 = 1;
    }

    objc_storeStrong(&v150, 0);
  }

  else
  {
    v154 = _AKLogSiwa();
    v153 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
    {
      clientID4 = [location[0] clientID];
      sub_1000194D4(v163, clientID4);
      _os_log_impl(&_mh_execute_header, v154, v153, "No applications were found with the provided Client ID: %@", v163, 0xCu);
      _objc_release(clientID4);
    }

    objc_storeStrong(&v154, 0);
    v74 = v158;
    v75 = [NSError ak_errorWithCode:-7074];
    v74[2](v74, 2);
    _objc_release(v75);
    v152 = 1;
  }

  objc_storeStrong(&v155, 0);
  objc_storeStrong(&v156, 0);
  objc_storeStrong(&altDSIDForAuthKitAccountRequestingAuthorization, 0);
  objc_storeStrong(&v158, 0);
  objc_storeStrong(location, 0);
}

- (void)_getSharedCredentialStateRequest:(id)request completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v14 = 0;
  objc_storeStrong(&v14, completion);
  sharedAccountsStorageController = selfCopy->_sharedAccountsStorageController;
  clientID = [location[0] clientID];
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_100118A8C;
  v11 = &unk_100323AE8;
  v13 = _objc_retain(v14);
  v12 = _objc_retain(location[0]);
  [(AKSharedAccountsStoring *)sharedAccountsStorageController fetchAccountsSharedWithCurrentUserWithClientID:clientID completionHandler:?];
  _objc_release(clientID);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_demoModeEnabled
{
  v3 = +[AKConfiguration sharedConfiguration];
  v4 = [v3 shouldAllowDemoMode] == 1;
  _objc_release(v3);
  return v4;
}

- (BOOL)_isCapableOfSilentAuthForRequest:(id)request
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  accountManager = selfCopy->_accountManager;
  altDSID = [location[0] altDSID];
  v8 = [AKAccountManager authKitAccountWithAltDSID:"authKitAccountWithAltDSID:error:" error:?];
  _objc_release(altDSID);
  v3 = [(AKAccountManager *)selfCopy->_accountManager continuationTokenForAccount:v8];
  v7 = v3 != 0;
  _objc_release(v3);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v7;
}

- (int64_t)_sanitizedCredentialStateForExternalClients:(int64_t)clients
{
  if ((clients - 4) > 1)
  {
    return clients;
  }

  else
  {
    return 1;
  }
}

- (id)_fetchDeveloperTeamWithTeamID:(id)d withAltDSID:(id)iD
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v16 = 0;
  objc_storeStrong(&v16, iD);
  v15 = _AKLogSiwa();
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v19, location[0]);
    _os_log_impl(&_mh_execute_header, v15, v14, "Fetching developer team with id: %@", v19, 0xCu);
  }

  objc_storeStrong(&v15, 0);
  v7 = 0;
  v8 = &v7;
  v9 = 838860800;
  v10 = 48;
  v11 = sub_100003B3C;
  v12 = sub_100011290;
  v13 = 0;
  [(AKAuthorizationStoring *)selfCopy->_localAccountsStorageController fetchDeveloperTeamWithTeamID:location[0] withAltDSID:v16 completion:?];
  v5 = _objc_retain(v8[5]);
  _Block_object_dispose(&v7, 8);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (id)_fetchDeveloperTeamWithClientID:(id)d withAltDSID:(id)iD
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v16 = 0;
  objc_storeStrong(&v16, iD);
  v15 = _AKLogSiwa();
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v19, location[0]);
    _os_log_impl(&_mh_execute_header, v15, v14, "Fetching developer team for client with ID: %@", v19, 0xCu);
  }

  objc_storeStrong(&v15, 0);
  v7 = 0;
  v8 = &v7;
  v9 = 838860800;
  v10 = 48;
  v11 = sub_100003B3C;
  v12 = sub_100011290;
  v13 = 0;
  [(AKAuthorizationStoring *)selfCopy->_localAccountsStorageController fetchDeveloperTeamWithClientID:location[0] withAltDSID:v16 completion:?];
  v5 = _objc_retain(v8[5]);
  _Block_object_dispose(&v7, 8);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (BOOL)_verifyUserID:(id)d forAltDSID:(id)iD
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v19 = 0;
  objc_storeStrong(&v19, iD);
  if (location[0])
  {
    v14 = _AKLogSiwa();
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v23, location[0]);
      _os_log_impl(&_mh_execute_header, v14, v13, "Performing unsafe verification with User ID: %@", v23, 0xCu);
    }

    objc_storeStrong(&v14, 0);
    v8 = 0;
    v9 = &v8;
    v10 = 0x20000000;
    v11 = 32;
    v12 = 0;
    [(AKAuthorizationStoring *)selfCopy->_localAccountsStorageController performUnsafeVerificationWithUserID:location[0] withAltDSID:v19 completion:?];
    v22 = v9[3] & 1;
    v15 = 1;
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v18 = _AKLogSiwa();
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      log = v18;
      type = v17;
      sub_10001CEEC(v16);
      _os_log_impl(&_mh_execute_header, log, type, "Unsafe verification failed due to nil User ID.", v16, 2u);
    }

    objc_storeStrong(&v18, 0);
    v22 = 0;
    v15 = 1;
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  return v22 & 1;
}

@end