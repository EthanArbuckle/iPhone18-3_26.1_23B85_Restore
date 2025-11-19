@interface AKAuthorizationStoreManager
+ (id)sharedInstance;
- (AKAuthorizationStoreManager)init;
- (id)fetchAuthorizationListVersionWithAltDSID:(id)a3;
- (id)storeForAltDSID:(id)a3;
- (void)clearDatabaseWithAltDSID:(id)a3 error:(id *)a4;
- (void)fetchAllDeveloperTeamsAndApplicationsForAltDSID:(id)a3 withCompletion:(id)a4;
- (void)fetchAllPrimaryApplicationMetadataForAltDSID:(id)a3 withCompletion:(id)a4;
- (void)fetchDeveloperTeamWithClientID:(id)a3 withAltDSID:(id)a4 completion:(id)a5;
- (void)fetchDeveloperTeamWithTeamID:(id)a3 withAltDSID:(id)a4 completion:(id)a5;
- (void)perform:(id)a3;
- (void)performUnsafeVerificationWithUserID:(id)a3 withAltDSID:(id)a4 completion:(id)a5;
- (void)removeApplicationWithClientID:(id)a3 completion:(id)a4;
- (void)revokeAuthorizationForAllApplicationsWithAltDSID:(id)a3 completion:(id)a4;
- (void)revokeAuthorizationForApplicationWithClientID:(id)a3 completion:(id)a4;
- (void)setListVersionToVersion:(id)a3 withAltDSID:(id)a4;
- (void)storeAuthorization:(id)a3 withAltDSID:(id)a4 forClient:(id)a5;
- (void)updateAuthorizationListWithMetadataInfo:(id)a3 withAltDSID:(id)a4 completion:(id)a5;
- (void)updatePrimaryAppsWithAMSAppMetadata:(id)a3 withAltDSID:(id)a4 withCompletion:(id)a5;
@end

@implementation AKAuthorizationStoreManager

+ (id)sharedInstance
{
  v5 = &unk_100374578;
  location = 0;
  objc_storeStrong(&location, &stru_10031F980);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100374570;

  return v2;
}

- (AKAuthorizationStoreManager)init
{
  v10 = a2;
  v11 = 0;
  v9.receiver = self;
  v9.super_class = AKAuthorizationStoreManager;
  v8 = [(AKAuthorizationStoreManager *)&v9 init];
  v11 = v8;
  objc_storeStrong(&v11, v8);
  if (v8)
  {
    v2 = objc_alloc_init(AKAuthorizationStoreProvider);
    storeProvider = v11->_storeProvider;
    v11->_storeProvider = v2;
    _objc_release(storeProvider);
    v4 = +[NSMutableDictionary dictionary];
    stores = v11->_stores;
    v11->_stores = v4;
    _objc_release(stores);
  }

  v7 = _objc_retain(v11);
  objc_storeStrong(&v11, 0);
  return v7;
}

- (id)storeForAltDSID:(id)a3
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = _AKLogSiwa();
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    sub_10001CE98(v20, 1752392040, location[0]);
    _os_log_impl(&_mh_execute_header, v16, v15, "Finding AKAuthorizationStore for altDSID: %{mask.hash}@", v20, 0x16u);
  }

  objc_storeStrong(&v16, 0);
  v9 = [(NSMutableDictionary *)v18->_stores objectForKeyedSubscript:location[0]];
  _objc_release(v9);
  if (v9)
  {
    v19 = [(NSMutableDictionary *)v18->_stores objectForKeyedSubscript:location[0]];
    v14 = 1;
  }

  else
  {
    v8 = [(AKAuthorizationStoreManager *)v18 storeProvider];
    v13 = [(AKAuthorizationProviding *)v8 storeForAltDSID:location[0]];
    _objc_release(v8);
    if (location[0] && v13)
    {
      v7 = [(AKAuthorizationStoreManager *)v18 stores];
      [(NSMutableDictionary *)v7 setObject:v13 forKeyedSubscript:location[0]];
      _objc_release(v7);
    }

    else
    {
      v12 = _AKLogSiwa();
      v11 = 16;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v5 = v12;
        v6 = v11;
        sub_10001CEEC(v10);
        _os_log_error_impl(&_mh_execute_header, v5, v6, "Could not create store, this is bad, show error", v10, 2u);
      }

      objc_storeStrong(&v12, 0);
    }

    v19 = _objc_retain(v13);
    v14 = 1;
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(location, 0);
  v3 = v19;

  return v3;
}

- (void)updateAuthorizationListWithMetadataInfo:(id)a3 withAltDSID:(id)a4 completion:(id)a5
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = 0;
  objc_storeStrong(&v17, a5);
  v16 = [(AKAuthorizationStoreManager *)v20 storeForAltDSID:v18];
  v7 = v16;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_10003966C;
  v12 = &unk_10031F9A8;
  v13 = _objc_retain(location[0]);
  v14 = _objc_retain(v18);
  v15 = _objc_retain(v17);
  [v7 perform:?];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)updatePrimaryAppsWithAMSAppMetadata:(id)a3 withAltDSID:(id)a4 withCompletion:(id)a5
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = 0;
  objc_storeStrong(&v17, a5);
  v16 = [(AKAuthorizationStoreManager *)v20 storeForAltDSID:v18];
  v7 = v16;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_100039890;
  v12 = &unk_10031F9A8;
  v13 = _objc_retain(location[0]);
  v14 = _objc_retain(v18);
  v15 = _objc_retain(v17);
  [v7 perform:?];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)storeAuthorization:(id)a3 withAltDSID:(id)a4 forClient:(id)a5
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = 0;
  objc_storeStrong(&v17, a5);
  v16 = [(AKAuthorizationStoreManager *)v20 storeForAltDSID:v18];
  v7 = v16;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_100039AB4;
  v12 = &unk_10031F9D0;
  v13 = _objc_retain(location[0]);
  v14 = _objc_retain(v18);
  v15 = _objc_retain(v17);
  [v7 perform:?];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchDeveloperTeamWithTeamID:(id)a3 withAltDSID:(id)a4 completion:(id)a5
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = 0;
  objc_storeStrong(&v17, a5);
  v16 = [(AKAuthorizationStoreManager *)v20 storeForAltDSID:v18];
  v7 = v16;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_100039CD8;
  v12 = &unk_10031F9A8;
  v13 = _objc_retain(location[0]);
  v14 = _objc_retain(v18);
  v15 = _objc_retain(v17);
  [v7 perform:?];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchDeveloperTeamWithClientID:(id)a3 withAltDSID:(id)a4 completion:(id)a5
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = 0;
  objc_storeStrong(&v17, a5);
  v16 = [(AKAuthorizationStoreManager *)v20 storeForAltDSID:v18];
  v7 = v16;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_100039EFC;
  v12 = &unk_10031F9A8;
  v13 = _objc_retain(location[0]);
  v14 = _objc_retain(v18);
  v15 = _objc_retain(v17);
  [v7 perform:?];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)performUnsafeVerificationWithUserID:(id)a3 withAltDSID:(id)a4 completion:(id)a5
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = 0;
  objc_storeStrong(&v17, a5);
  v16 = [(AKAuthorizationStoreManager *)v20 storeForAltDSID:v18];
  v7 = v16;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_10003A120;
  v12 = &unk_10031F9A8;
  v13 = _objc_retain(location[0]);
  v14 = _objc_retain(v18);
  v15 = _objc_retain(v17);
  [v7 perform:?];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)revokeAuthorizationForApplicationWithClientID:(id)a3 completion:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v5 = +[AKAccountManager sharedInstance];
  v15 = [(AKAccountManager *)v5 altDSIDForAuthKitAccountRequestingAuthorization];
  _objc_release(v5);
  v14 = [(AKAuthorizationStoreManager *)v18 storeForAltDSID:v15];
  v6 = v14;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_10003A34C;
  v11 = &unk_10031F9F8;
  v12 = _objc_retain(location[0]);
  v13 = _objc_retain(v16);
  [v6 perform:?];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)removeApplicationWithClientID:(id)a3 completion:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v5 = +[AKAccountManager sharedInstance];
  v15 = [(AKAccountManager *)v5 altDSIDForAuthKitAccountRequestingAuthorization];
  _objc_release(v5);
  v14 = [(AKAuthorizationStoreManager *)v18 storeForAltDSID:v15];
  v6 = v14;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_10003A574;
  v11 = &unk_10031F9F8;
  v12 = _objc_retain(location[0]);
  v13 = _objc_retain(v16);
  [v6 perform:?];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)revokeAuthorizationForAllApplicationsWithAltDSID:(id)a3 completion:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13 = [(AKAuthorizationStoreManager *)v16 storeForAltDSID:location[0]];
  v5 = v13;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10003A744;
  v10 = &unk_10031F9F8;
  v11 = _objc_retain(location[0]);
  v12 = _objc_retain(v14);
  [v5 perform:?];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchAllDeveloperTeamsAndApplicationsForAltDSID:(id)a3 withCompletion:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13 = [(AKAuthorizationStoreManager *)v16 storeForAltDSID:location[0]];
  v5 = v13;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10003A914;
  v10 = &unk_10031F9F8;
  v11 = _objc_retain(location[0]);
  v12 = _objc_retain(v14);
  [v5 perform:?];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchAllPrimaryApplicationMetadataForAltDSID:(id)a3 withCompletion:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13 = [(AKAuthorizationStoreManager *)v16 storeForAltDSID:location[0]];
  v5 = v13;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10003AAE4;
  v10 = &unk_10031F9F8;
  v11 = _objc_retain(location[0]);
  v12 = _objc_retain(v14);
  [v5 perform:?];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (id)fetchAuthorizationListVersionWithAltDSID:(id)a3
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  v14 = &v13;
  v15 = 838860800;
  v16 = 48;
  v17 = sub_1000036C4;
  v18 = sub_100011020;
  v19 = 0;
  v12 = [(AKAuthorizationStoreManager *)v21 storeForAltDSID:location[0]];
  v5 = v12;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10003AD30;
  v10 = &unk_10031FA20;
  v11[1] = &v13;
  v11[0] = _objc_retain(location[0]);
  [v5 perform:&v6];
  v4 = _objc_retain(v14[5]);
  objc_storeStrong(v11, 0);
  objc_storeStrong(&v12, 0);
  _Block_object_dispose(&v13, 8);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (void)setListVersionToVersion:(id)a3 withAltDSID:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13 = [(AKAuthorizationStoreManager *)v16 storeForAltDSID:v14];
  v5 = v13;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10003AF28;
  v10 = &unk_10031FA48;
  v11 = _objc_retain(location[0]);
  v12 = _objc_retain(v14);
  [v5 perform:?];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)clearDatabaseWithAltDSID:(id)a3 error:(id *)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = a4;
  v12 = [(AKAuthorizationStoreManager *)v15 storeForAltDSID:location[0]];
  v5 = v12;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10003B0BC;
  v10 = &unk_10031FA70;
  v11[0] = _objc_retain(location[0]);
  v11[1] = v13;
  [v5 perform:?];
  objc_storeStrong(v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)perform:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

@end