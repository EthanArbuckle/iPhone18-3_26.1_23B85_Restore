@interface AKApplicationAuthorizationController
- (AKApplicationAuthorizationController)init;
- (AKApplicationAuthorizationController)initWithStoreManager:(id)manager;
- (AKApplicationAuthorizationController)initWithStoreManager:(id)manager sharedAccountsStorageController:(id)controller;
- (BOOL)revokeAuthorizationForAllApplicationsWithAltDSID:(id)d error:(id *)error;
- (id)currentAuthorizationListVersionWithAltDSID:(id)d;
- (void)_broadcastCredentialStateChange:(int64_t)change forApplicationWithClientID:(id)d;
- (void)_broadcastCredentialStateChange:(int64_t)change forApplicationWithClientID:(id)d withHandlerBundleID:(id)iD;
- (void)_credentialStateDidChange:(int64_t)change forApplicationWithClientID:(id)d;
- (void)_credentialStateDidChange:(int64_t)change forApplicationWithClientID:(id)d clientIDsInKeychain:(id)keychain;
- (void)_notifyCredentialStateChange:(int64_t)change forApplicationWithClientID:(id)d;
- (void)_processCredentialStateChanges:(id)changes;
- (void)_processCredentialStateChanges:(id)changes completion:(id)completion;
- (void)removeAuthorizationForApplicationWithClientID:(id)d completion:(id)completion;
- (void)revokeAuthorizationForApplicationWithClientID:(id)d completion:(id)completion;
- (void)storeAuthorization:(id)authorization withAltDSID:(id)d forClient:(id)client;
- (void)updateAuthorizationListWithMetadataInfo:(id)info withAltDSID:(id)d;
- (void)updateAuthorizationListWithMetadataInfo:(id)info withAltDSID:(id)d completion:(id)completion;
@end

@implementation AKApplicationAuthorizationController

- (AKApplicationAuthorizationController)init
{
  v4 = 0;
  v4 = [(AKApplicationAuthorizationController *)self initWithStoreManager:?];
  v3 = _objc_retain(v4);
  objc_storeStrong(&v4, 0);
  return v3;
}

- (AKApplicationAuthorizationController)initWithStoreManager:(id)manager
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v3 = selfCopy;
  selfCopy = 0;
  v8.receiver = v3;
  v8.super_class = AKApplicationAuthorizationController;
  selfCopy = [(AKApplicationAuthorizationController *)&v8 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v6 = 0;
    if (location[0])
    {
      objc_storeStrong(&selfCopy->_storeManager, location[0]);
    }

    else
    {
      v7 = +[AKAuthorizationStoreManager sharedInstance];
      v6 = 1;
      objc_storeStrong(&selfCopy->_storeManager, v7);
    }

    if (v6)
    {
      _objc_release(v7);
    }
  }

  v5 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (AKApplicationAuthorizationController)initWithStoreManager:(id)manager sharedAccountsStorageController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v9 = 0;
  objc_storeStrong(&v9, controller);
  v4 = selfCopy;
  selfCopy = 0;
  v8 = [(AKApplicationAuthorizationController *)v4 initWithStoreManager:location[0]];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    objc_storeStrong(&selfCopy->_sharedAccountsStorageController, v9);
  }

  v6 = _objc_retain(selfCopy);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (id)currentAuthorizationListVersionWithAltDSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v4 = [(AKAuthorizationStoreManager *)selfCopy->_storeManager fetchAuthorizationListVersionWithAltDSID:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

- (void)updateAuthorizationListWithMetadataInfo:(id)info withAltDSID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, info);
  v17 = 0;
  objc_storeStrong(&v17, d);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  storeManager = selfCopy->_storeManager;
  v7 = location[0];
  v8 = v17;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100135214;
  v13 = &unk_100322438;
  v15 = _objc_retain(v16);
  v14 = _objc_retain(selfCopy);
  [(AKAuthorizationStoreManager *)storeManager updateAuthorizationListWithMetadataInfo:v7 withAltDSID:v8 completion:?];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)updateAuthorizationListWithMetadataInfo:(id)info withAltDSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, info);
  v13 = 0;
  objc_storeStrong(&v13, d);
  storeManager = selfCopy->_storeManager;
  v5 = location[0];
  v6 = v13;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100135404;
  v11 = &unk_1003230F8;
  v12 = _objc_retain(selfCopy);
  [(AKAuthorizationStoreManager *)storeManager updateAuthorizationListWithMetadataInfo:v5 withAltDSID:v6 completion:?];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)storeAuthorization:(id)authorization withAltDSID:(id)d forClient:(id)client
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, authorization);
  v10 = 0;
  objc_storeStrong(&v10, d);
  v9 = 0;
  objc_storeStrong(&v9, client);
  [(AKAuthorizationStoreManager *)selfCopy->_storeManager storeAuthorization:location[0] withAltDSID:v10 forClient:v9];
  v7 = selfCopy;
  bundleID = [v9 bundleID];
  [(AKApplicationAuthorizationController *)v7 _credentialStateDidChange:1 forApplicationWithClientID:?];
  _objc_release(bundleID);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)revokeAuthorizationForApplicationWithClientID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v15 = 0;
  objc_storeStrong(&v15, completion);
  storeManager = selfCopy->_storeManager;
  v5 = location[0];
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_1001356F8;
  v11 = &unk_1003217F8;
  v12 = _objc_retain(selfCopy);
  v13 = _objc_retain(location[0]);
  v14 = _objc_retain(v15);
  [(AKAuthorizationStoreManager *)storeManager revokeAuthorizationForApplicationWithClientID:v5 completion:?];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)removeAuthorizationForApplicationWithClientID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v5 = 0;
  objc_storeStrong(&v5, completion);
  [(AKAuthorizationStoreManager *)selfCopy->_storeManager removeApplicationWithClientID:location[0] completion:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)revokeAuthorizationForAllApplicationsWithAltDSID:(id)d error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  errorCopy = error;
  v17 = 0;
  v18 = &v17;
  v19 = 838860800;
  v20 = 48;
  v21 = sub_100003BEC;
  v22 = sub_1000112F0;
  v23 = 0;
  storeManager = selfCopy->_storeManager;
  v9 = location[0];
  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_100135A30;
  v15 = &unk_1003242D8;
  v16[0] = _objc_retain(selfCopy);
  v16[1] = &v17;
  [(AKAuthorizationStoreManager *)storeManager revokeAuthorizationForAllApplicationsWithAltDSID:v9 completion:&v11];
  if (errorCopy)
  {
    v7 = v18[5];
    v4 = v7;
    *errorCopy = v7;
  }

  [(AKAuthorizationStoreManager *)selfCopy->_storeManager setListVersionToVersion:@"0" withAltDSID:location[0]];
  v6 = v18[5] == 0;
  objc_storeStrong(v16, 0);
  _Block_object_dispose(&v17, 8);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  return v6;
}

- (void)_processCredentialStateChanges:(id)changes
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, changes);
  v3 = location[0];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100135BB8;
  v8 = &unk_100324328;
  v9 = _objc_retain(selfCopy);
  [v3 enumerateKeysAndObjectsUsingBlock:?];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_processCredentialStateChanges:(id)changes completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, changes);
  v14 = 0;
  objc_storeStrong(&v14, completion);
  sharedAccountsStorageController = selfCopy->_sharedAccountsStorageController;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_100135EE0;
  v10 = &unk_1003243E0;
  v11 = _objc_retain(location[0]);
  v12 = _objc_retain(selfCopy);
  v13 = _objc_retain(v14);
  [(AKSharedAccountsStoring *)sharedAccountsStorageController fetchAllAccountsSharedByCurrentUserWithCompletionHandler:?];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)_credentialStateDidChange:(int64_t)change forApplicationWithClientID:(id)d
{
  selfCopy = self;
  v6 = a2;
  changeCopy = change;
  location = 0;
  objc_storeStrong(&location, d);
  [(AKApplicationAuthorizationController *)selfCopy _notifyCredentialStateChange:changeCopy forApplicationWithClientID:location];
  [(AKApplicationAuthorizationController *)selfCopy _broadcastCredentialStateChange:changeCopy forApplicationWithClientID:location];
  objc_storeStrong(&location, 0);
}

- (void)_credentialStateDidChange:(int64_t)change forApplicationWithClientID:(id)d clientIDsInKeychain:(id)keychain
{
  selfCopy = self;
  v13 = a2;
  changeCopy = change;
  location = 0;
  objc_storeStrong(&location, d);
  v10 = 0;
  objc_storeStrong(&v10, keychain);
  [(AKApplicationAuthorizationController *)selfCopy _credentialStateDidChange:changeCopy forApplicationWithClientID:location];
  v9 = [v10 containsObject:location];
  v6 = +[AKFeatureManager sharedManager];
  v7 = 0;
  if ([v6 isSiwaCredentialSharingEnabled])
  {
    v7 = 0;
    if (!changeCopy)
    {
      v7 = v9;
    }
  }

  _objc_release(v6);
  if (v7)
  {
    oslog = _AKLogSiwa();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v15, location);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%@ was revoked. Removing shared credential.", v15, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [(AKSharedAccountsStoring *)selfCopy->_sharedAccountsStorageController removeSharedAccountBelongingToCurrentUserWithClientID:location completionHandler:&stru_100324400];
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
}

- (void)_notifyCredentialStateChange:(int64_t)change forApplicationWithClientID:(id)d
{
  selfCopy = self;
  v19 = a2;
  changeCopy = change;
  location = 0;
  objc_storeStrong(&location, d);
  v6 = +[AKAuthorizationConnectionManager sharedManager];
  v16 = [v6 remoteObjectProxyWithProtocol:&OBJC_PROTOCOL___AKAuthorizationNotificationHandler forBundleID:location errorHandler:&stru_100324420];
  _objc_release(v6);
  if (v16)
  {
    v14 = _AKLogSiwa();
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      sub_100024CD8(v21, location, changeCopy);
      _os_log_impl(&_mh_execute_header, v14, v13, "Notifying client (%@) of credential state change %d.", v21, 0x12u);
    }

    objc_storeStrong(&v14, 0);
    v5 = v16;
    v4 = changeCopy;
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_1001368E4;
    v11 = &unk_100320EA0;
    v12 = _objc_retain(location);
    [v5 credentialStateDidChange:v4 completion:&v7];
    objc_storeStrong(&v12, 0);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&location, 0);
}

- (void)_broadcastCredentialStateChange:(int64_t)change forApplicationWithClientID:(id)d
{
  selfCopy = self;
  v16 = a2;
  changeCopy = change;
  location = 0;
  objc_storeStrong(&location, d);
  v4 = +[AKAuthorizationConnectionManager sharedManager];
  bundleIDs = [v4 bundleIDs];
  _objc_release(v4);
  v5 = bundleIDs;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_100136B88;
  v10 = &unk_100324390;
  v11 = _objc_retain(selfCopy);
  v12[1] = changeCopy;
  v12[0] = _objc_retain(location);
  [v5 enumerateObjectsUsingBlock:?];
  objc_storeStrong(v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&bundleIDs, 0);
  objc_storeStrong(&location, 0);
}

- (void)_broadcastCredentialStateChange:(int64_t)change forApplicationWithClientID:(id)d withHandlerBundleID:(id)iD
{
  selfCopy = self;
  v13 = a2;
  changeCopy = change;
  location = 0;
  objc_storeStrong(&location, d);
  v10 = 0;
  objc_storeStrong(&v10, iD);
  v6 = +[AKAuthorizationConnectionManager sharedManager];
  v9 = [v6 remoteObjectProxyWithProtocol:&OBJC_PROTOCOL___AKAuthorizationStateBroadcastHandler forBundleID:v10 errorHandler:&stru_100324440];
  _objc_release(v6);
  if (v9)
  {
    oslog = _AKLogSiwa();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_100136EC0(v15, v10, changeCopy, location);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Notifying client (%@) of credential state change (%d) for client ID (%@).", v15, 0x1Cu);
    }

    objc_storeStrong(&oslog, 0);
    [v9 credentialStateDidChange:changeCopy forApplicationWithClientID:location];
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
}

@end