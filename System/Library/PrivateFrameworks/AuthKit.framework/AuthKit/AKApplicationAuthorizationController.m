@interface AKApplicationAuthorizationController
- (AKApplicationAuthorizationController)init;
- (AKApplicationAuthorizationController)initWithStoreManager:(id)a3;
- (AKApplicationAuthorizationController)initWithStoreManager:(id)a3 sharedAccountsStorageController:(id)a4;
- (BOOL)revokeAuthorizationForAllApplicationsWithAltDSID:(id)a3 error:(id *)a4;
- (id)currentAuthorizationListVersionWithAltDSID:(id)a3;
- (void)_broadcastCredentialStateChange:(int64_t)a3 forApplicationWithClientID:(id)a4;
- (void)_broadcastCredentialStateChange:(int64_t)a3 forApplicationWithClientID:(id)a4 withHandlerBundleID:(id)a5;
- (void)_credentialStateDidChange:(int64_t)a3 forApplicationWithClientID:(id)a4;
- (void)_credentialStateDidChange:(int64_t)a3 forApplicationWithClientID:(id)a4 clientIDsInKeychain:(id)a5;
- (void)_notifyCredentialStateChange:(int64_t)a3 forApplicationWithClientID:(id)a4;
- (void)_processCredentialStateChanges:(id)a3;
- (void)_processCredentialStateChanges:(id)a3 completion:(id)a4;
- (void)removeAuthorizationForApplicationWithClientID:(id)a3 completion:(id)a4;
- (void)revokeAuthorizationForApplicationWithClientID:(id)a3 completion:(id)a4;
- (void)storeAuthorization:(id)a3 withAltDSID:(id)a4 forClient:(id)a5;
- (void)updateAuthorizationListWithMetadataInfo:(id)a3 withAltDSID:(id)a4;
- (void)updateAuthorizationListWithMetadataInfo:(id)a3 withAltDSID:(id)a4 completion:(id)a5;
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

- (AKApplicationAuthorizationController)initWithStoreManager:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v10;
  v10 = 0;
  v8.receiver = v3;
  v8.super_class = AKApplicationAuthorizationController;
  v10 = [(AKApplicationAuthorizationController *)&v8 init];
  objc_storeStrong(&v10, v10);
  if (v10)
  {
    v6 = 0;
    if (location[0])
    {
      objc_storeStrong(&v10->_storeManager, location[0]);
    }

    else
    {
      v7 = +[AKAuthorizationStoreManager sharedInstance];
      v6 = 1;
      objc_storeStrong(&v10->_storeManager, v7);
    }

    if (v6)
    {
      _objc_release(v7);
    }
  }

  v5 = _objc_retain(v10);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v10, 0);
  return v5;
}

- (AKApplicationAuthorizationController)initWithStoreManager:(id)a3 sharedAccountsStorageController:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v4 = v11;
  v11 = 0;
  v8 = [(AKApplicationAuthorizationController *)v4 initWithStoreManager:location[0]];
  v11 = v8;
  objc_storeStrong(&v11, v8);
  if (v8)
  {
    objc_storeStrong(&v11->_sharedAccountsStorageController, v9);
  }

  v6 = _objc_retain(v11);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v6;
}

- (id)currentAuthorizationListVersionWithAltDSID:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(AKAuthorizationStoreManager *)v6->_storeManager fetchAuthorizationListVersionWithAltDSID:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

- (void)updateAuthorizationListWithMetadataInfo:(id)a3 withAltDSID:(id)a4 completion:(id)a5
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16 = 0;
  objc_storeStrong(&v16, a5);
  storeManager = v19->_storeManager;
  v7 = location[0];
  v8 = v17;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100135214;
  v13 = &unk_100322438;
  v15 = _objc_retain(v16);
  v14 = _objc_retain(v19);
  [(AKAuthorizationStoreManager *)storeManager updateAuthorizationListWithMetadataInfo:v7 withAltDSID:v8 completion:?];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)updateAuthorizationListWithMetadataInfo:(id)a3 withAltDSID:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  storeManager = v15->_storeManager;
  v5 = location[0];
  v6 = v13;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100135404;
  v11 = &unk_1003230F8;
  v12 = _objc_retain(v15);
  [(AKAuthorizationStoreManager *)storeManager updateAuthorizationListWithMetadataInfo:v5 withAltDSID:v6 completion:?];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)storeAuthorization:(id)a3 withAltDSID:(id)a4 forClient:(id)a5
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = 0;
  objc_storeStrong(&v9, a5);
  [(AKAuthorizationStoreManager *)v12->_storeManager storeAuthorization:location[0] withAltDSID:v10 forClient:v9];
  v7 = v12;
  v8 = [v9 bundleID];
  [(AKApplicationAuthorizationController *)v7 _credentialStateDidChange:1 forApplicationWithClientID:?];
  _objc_release(v8);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)revokeAuthorizationForApplicationWithClientID:(id)a3 completion:(id)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  storeManager = v17->_storeManager;
  v5 = location[0];
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_1001356F8;
  v11 = &unk_1003217F8;
  v12 = _objc_retain(v17);
  v13 = _objc_retain(location[0]);
  v14 = _objc_retain(v15);
  [(AKAuthorizationStoreManager *)storeManager revokeAuthorizationForApplicationWithClientID:v5 completion:?];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)removeAuthorizationForApplicationWithClientID:(id)a3 completion:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(AKAuthorizationStoreManager *)v7->_storeManager removeApplicationWithClientID:location[0] completion:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)revokeAuthorizationForAllApplicationsWithAltDSID:(id)a3 error:(id *)a4
{
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 838860800;
  v20 = 48;
  v21 = sub_100003BEC;
  v22 = sub_1000112F0;
  v23 = 0;
  storeManager = v26->_storeManager;
  v9 = location[0];
  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_100135A30;
  v15 = &unk_1003242D8;
  v16[0] = _objc_retain(v26);
  v16[1] = &v17;
  [(AKAuthorizationStoreManager *)storeManager revokeAuthorizationForAllApplicationsWithAltDSID:v9 completion:&v11];
  if (v24)
  {
    v7 = v18[5];
    v4 = v7;
    *v24 = v7;
  }

  [(AKAuthorizationStoreManager *)v26->_storeManager setListVersionToVersion:@"0" withAltDSID:location[0]];
  v6 = v18[5] == 0;
  objc_storeStrong(v16, 0);
  _Block_object_dispose(&v17, 8);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  return v6;
}

- (void)_processCredentialStateChanges:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100135BB8;
  v8 = &unk_100324328;
  v9 = _objc_retain(v11);
  [v3 enumerateKeysAndObjectsUsingBlock:?];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_processCredentialStateChanges:(id)a3 completion:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  sharedAccountsStorageController = v16->_sharedAccountsStorageController;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_100135EE0;
  v10 = &unk_1003243E0;
  v11 = _objc_retain(location[0]);
  v12 = _objc_retain(v16);
  v13 = _objc_retain(v14);
  [(AKSharedAccountsStoring *)sharedAccountsStorageController fetchAllAccountsSharedByCurrentUserWithCompletionHandler:?];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)_credentialStateDidChange:(int64_t)a3 forApplicationWithClientID:(id)a4
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  [(AKApplicationAuthorizationController *)v7 _notifyCredentialStateChange:v5 forApplicationWithClientID:location];
  [(AKApplicationAuthorizationController *)v7 _broadcastCredentialStateChange:v5 forApplicationWithClientID:location];
  objc_storeStrong(&location, 0);
}

- (void)_credentialStateDidChange:(int64_t)a3 forApplicationWithClientID:(id)a4 clientIDsInKeychain:(id)a5
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v10 = 0;
  objc_storeStrong(&v10, a5);
  [(AKApplicationAuthorizationController *)v14 _credentialStateDidChange:v12 forApplicationWithClientID:location];
  v9 = [v10 containsObject:location];
  v6 = +[AKFeatureManager sharedManager];
  v7 = 0;
  if ([v6 isSiwaCredentialSharingEnabled])
  {
    v7 = 0;
    if (!v12)
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
    [(AKSharedAccountsStoring *)v14->_sharedAccountsStorageController removeSharedAccountBelongingToCurrentUserWithClientID:location completionHandler:&stru_100324400];
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
}

- (void)_notifyCredentialStateChange:(int64_t)a3 forApplicationWithClientID:(id)a4
{
  v20 = self;
  v19 = a2;
  v18 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v6 = +[AKAuthorizationConnectionManager sharedManager];
  v16 = [v6 remoteObjectProxyWithProtocol:&OBJC_PROTOCOL___AKAuthorizationNotificationHandler forBundleID:location errorHandler:&stru_100324420];
  _objc_release(v6);
  if (v16)
  {
    v14 = _AKLogSiwa();
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      sub_100024CD8(v21, location, v18);
      _os_log_impl(&_mh_execute_header, v14, v13, "Notifying client (%@) of credential state change %d.", v21, 0x12u);
    }

    objc_storeStrong(&v14, 0);
    v5 = v16;
    v4 = v18;
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

- (void)_broadcastCredentialStateChange:(int64_t)a3 forApplicationWithClientID:(id)a4
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v4 = +[AKAuthorizationConnectionManager sharedManager];
  v13 = [v4 bundleIDs];
  _objc_release(v4);
  v5 = v13;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_100136B88;
  v10 = &unk_100324390;
  v11 = _objc_retain(v17);
  v12[1] = v15;
  v12[0] = _objc_retain(location);
  [v5 enumerateObjectsUsingBlock:?];
  objc_storeStrong(v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&location, 0);
}

- (void)_broadcastCredentialStateChange:(int64_t)a3 forApplicationWithClientID:(id)a4 withHandlerBundleID:(id)a5
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v10 = 0;
  objc_storeStrong(&v10, a5);
  v6 = +[AKAuthorizationConnectionManager sharedManager];
  v9 = [v6 remoteObjectProxyWithProtocol:&OBJC_PROTOCOL___AKAuthorizationStateBroadcastHandler forBundleID:v10 errorHandler:&stru_100324440];
  _objc_release(v6);
  if (v9)
  {
    oslog = _AKLogSiwa();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_100136EC0(v15, v10, v12, location);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Notifying client (%@) of credential state change (%d) for client ID (%@).", v15, 0x1Cu);
    }

    objc_storeStrong(&oslog, 0);
    [v9 credentialStateDidChange:v12 forApplicationWithClientID:location];
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