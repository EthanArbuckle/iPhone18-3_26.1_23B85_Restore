@interface AKAuthorizationStoreManager
+ (id)sharedInstance;
- (AKAuthorizationStoreManager)init;
- (id)fetchAuthorizationListVersionWithAltDSID:(id)d;
- (id)storeForAltDSID:(id)d;
- (void)clearDatabaseWithAltDSID:(id)d error:(id *)error;
- (void)fetchAllDeveloperTeamsAndApplicationsForAltDSID:(id)d withCompletion:(id)completion;
- (void)fetchAllPrimaryApplicationMetadataForAltDSID:(id)d withCompletion:(id)completion;
- (void)fetchDeveloperTeamWithClientID:(id)d withAltDSID:(id)iD completion:(id)completion;
- (void)fetchDeveloperTeamWithTeamID:(id)d withAltDSID:(id)iD completion:(id)completion;
- (void)perform:(id)perform;
- (void)performUnsafeVerificationWithUserID:(id)d withAltDSID:(id)iD completion:(id)completion;
- (void)removeApplicationWithClientID:(id)d completion:(id)completion;
- (void)revokeAuthorizationForAllApplicationsWithAltDSID:(id)d completion:(id)completion;
- (void)revokeAuthorizationForApplicationWithClientID:(id)d completion:(id)completion;
- (void)setListVersionToVersion:(id)version withAltDSID:(id)d;
- (void)storeAuthorization:(id)authorization withAltDSID:(id)d forClient:(id)client;
- (void)updateAuthorizationListWithMetadataInfo:(id)info withAltDSID:(id)d completion:(id)completion;
- (void)updatePrimaryAppsWithAMSAppMetadata:(id)metadata withAltDSID:(id)d withCompletion:(id)completion;
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

- (id)storeForAltDSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v16 = _AKLogSiwa();
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    sub_10001CE98(v20, 1752392040, location[0]);
    _os_log_impl(&_mh_execute_header, v16, v15, "Finding AKAuthorizationStore for altDSID: %{mask.hash}@", v20, 0x16u);
  }

  objc_storeStrong(&v16, 0);
  v9 = [(NSMutableDictionary *)selfCopy->_stores objectForKeyedSubscript:location[0]];
  _objc_release(v9);
  if (v9)
  {
    v19 = [(NSMutableDictionary *)selfCopy->_stores objectForKeyedSubscript:location[0]];
    v14 = 1;
  }

  else
  {
    storeProvider = [(AKAuthorizationStoreManager *)selfCopy storeProvider];
    v13 = [(AKAuthorizationProviding *)storeProvider storeForAltDSID:location[0]];
    _objc_release(storeProvider);
    if (location[0] && v13)
    {
      stores = [(AKAuthorizationStoreManager *)selfCopy stores];
      [(NSMutableDictionary *)stores setObject:v13 forKeyedSubscript:location[0]];
      _objc_release(stores);
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

- (void)updateAuthorizationListWithMetadataInfo:(id)info withAltDSID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, info);
  v18 = 0;
  objc_storeStrong(&v18, d);
  v17 = 0;
  objc_storeStrong(&v17, completion);
  v16 = [(AKAuthorizationStoreManager *)selfCopy storeForAltDSID:v18];
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

- (void)updatePrimaryAppsWithAMSAppMetadata:(id)metadata withAltDSID:(id)d withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, metadata);
  v18 = 0;
  objc_storeStrong(&v18, d);
  v17 = 0;
  objc_storeStrong(&v17, completion);
  v16 = [(AKAuthorizationStoreManager *)selfCopy storeForAltDSID:v18];
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

- (void)storeAuthorization:(id)authorization withAltDSID:(id)d forClient:(id)client
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, authorization);
  v18 = 0;
  objc_storeStrong(&v18, d);
  v17 = 0;
  objc_storeStrong(&v17, client);
  v16 = [(AKAuthorizationStoreManager *)selfCopy storeForAltDSID:v18];
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

- (void)fetchDeveloperTeamWithTeamID:(id)d withAltDSID:(id)iD completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v18 = 0;
  objc_storeStrong(&v18, iD);
  v17 = 0;
  objc_storeStrong(&v17, completion);
  v16 = [(AKAuthorizationStoreManager *)selfCopy storeForAltDSID:v18];
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

- (void)fetchDeveloperTeamWithClientID:(id)d withAltDSID:(id)iD completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v18 = 0;
  objc_storeStrong(&v18, iD);
  v17 = 0;
  objc_storeStrong(&v17, completion);
  v16 = [(AKAuthorizationStoreManager *)selfCopy storeForAltDSID:v18];
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

- (void)performUnsafeVerificationWithUserID:(id)d withAltDSID:(id)iD completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v18 = 0;
  objc_storeStrong(&v18, iD);
  v17 = 0;
  objc_storeStrong(&v17, completion);
  v16 = [(AKAuthorizationStoreManager *)selfCopy storeForAltDSID:v18];
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

- (void)revokeAuthorizationForApplicationWithClientID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  v5 = +[AKAccountManager sharedInstance];
  altDSIDForAuthKitAccountRequestingAuthorization = [(AKAccountManager *)v5 altDSIDForAuthKitAccountRequestingAuthorization];
  _objc_release(v5);
  v14 = [(AKAuthorizationStoreManager *)selfCopy storeForAltDSID:altDSIDForAuthKitAccountRequestingAuthorization];
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
  objc_storeStrong(&altDSIDForAuthKitAccountRequestingAuthorization, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)removeApplicationWithClientID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  v5 = +[AKAccountManager sharedInstance];
  altDSIDForAuthKitAccountRequestingAuthorization = [(AKAccountManager *)v5 altDSIDForAuthKitAccountRequestingAuthorization];
  _objc_release(v5);
  v14 = [(AKAuthorizationStoreManager *)selfCopy storeForAltDSID:altDSIDForAuthKitAccountRequestingAuthorization];
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
  objc_storeStrong(&altDSIDForAuthKitAccountRequestingAuthorization, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)revokeAuthorizationForAllApplicationsWithAltDSID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v14 = 0;
  objc_storeStrong(&v14, completion);
  v13 = [(AKAuthorizationStoreManager *)selfCopy storeForAltDSID:location[0]];
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

- (void)fetchAllDeveloperTeamsAndApplicationsForAltDSID:(id)d withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v14 = 0;
  objc_storeStrong(&v14, completion);
  v13 = [(AKAuthorizationStoreManager *)selfCopy storeForAltDSID:location[0]];
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

- (void)fetchAllPrimaryApplicationMetadataForAltDSID:(id)d withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v14 = 0;
  objc_storeStrong(&v14, completion);
  v13 = [(AKAuthorizationStoreManager *)selfCopy storeForAltDSID:location[0]];
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

- (id)fetchAuthorizationListVersionWithAltDSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v13 = 0;
  v14 = &v13;
  v15 = 838860800;
  v16 = 48;
  v17 = sub_1000036C4;
  v18 = sub_100011020;
  v19 = 0;
  v12 = [(AKAuthorizationStoreManager *)selfCopy storeForAltDSID:location[0]];
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

- (void)setListVersionToVersion:(id)version withAltDSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, version);
  v14 = 0;
  objc_storeStrong(&v14, d);
  v13 = [(AKAuthorizationStoreManager *)selfCopy storeForAltDSID:v14];
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

- (void)clearDatabaseWithAltDSID:(id)d error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  errorCopy = error;
  v12 = [(AKAuthorizationStoreManager *)selfCopy storeForAltDSID:location[0]];
  v5 = v12;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10003B0BC;
  v10 = &unk_10031FA70;
  v11[0] = _objc_retain(location[0]);
  v11[1] = errorCopy;
  [v5 perform:?];
  objc_storeStrong(v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)perform:(id)perform
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, perform);
  objc_storeStrong(location, 0);
}

@end