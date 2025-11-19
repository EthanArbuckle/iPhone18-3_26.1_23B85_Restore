@interface AKAuthorizationStore
- (AKAuthorizationStore)init;
- (AKAuthorizationStore)initWithExecutor:(id)a3;
- (AKAuthorizationStore)initWithPath:(id)a3;
- (BOOL)_shouldUpdateDatabaseToListVersion:(id)a3 withAltDSID:(id)a4;
- (id)_fetchAllAuthorizedClientIDs;
- (id)_fetchAppMetadataForClientID:(id)a3;
- (id)_fetchApplicationsForTeamID:(id)a3;
- (id)_handleRevokedApplicationsForVersion:(id)a3;
- (id)_optionalValueWithString:(id)a3;
- (id)fetchAuthorizationListVersionWithAltDSID:(id)a3;
- (void)_addTemporaryDeveloperTeam:(id)a3;
- (void)_postApplicationsListChangedNotification;
- (void)_setDatabaseVersionWithAltDSID:(id)a3 toVersion:(int64_t)a4;
- (void)_storeConsentedApplication:(id)a3 teamID:(id)a4 listVersion:(id)a5;
- (void)_storeDeveloperTeam:(id)a3 listVersion:(id)a4;
- (void)_storePrimaryAppAMSMetadata:(id)a3;
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

@implementation AKAuthorizationStore

- (AKAuthorizationStore)init
{
  v4 = 0;
  v4 = [(AKAuthorizationStore *)self initWithPath:@"/Library/Application Support/com.apple.akd/authorization.db"];
  v3 = _objc_retain(v4);
  objc_storeStrong(&v4, 0);
  return v3;
}

- (AKAuthorizationStore)initWithExecutor:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = AKAuthorizationStore;
  v6 = [(AKAuthorizationStore *)&v7 init];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    objc_storeStrong(&v9->_executor, location[0]);
  }

  v5 = _objc_retain(v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (AKAuthorizationStore)initWithPath:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v13;
  v13 = 0;
  v11.receiver = v3;
  v11.super_class = AKAuthorizationStore;
  v9 = [(AKAuthorizationStore *)&v11 init];
  v13 = v9;
  objc_storeStrong(&v13, v9);
  if (v9)
  {
    v10 = objc_alloc_init(AKAuthorizationStoreMigrator);
    v4 = [AKSQLiteExecutor alloc];
    v5 = [(AKSQLiteExecutor *)v4 initWithDatabasePath:location[0] migrationController:v10];
    executor = v13->_executor;
    v13->_executor = v5;
    _objc_release(executor);
    objc_storeStrong(&v10, 0);
  }

  v8 = _objc_retain(v13);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v13, 0);
  return v8;
}

- (void)perform:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  (*(location[0] + 2))(location[0], v4);
  objc_storeStrong(location, 0);
}

- (void)updateAuthorizationListWithMetadataInfo:(id)a3 withAltDSID:(id)a4 completion:(id)a5
{
  v32 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v30 = 0;
  objc_storeStrong(&v30, a4);
  v29 = 0;
  objc_storeStrong(&v29, a5);
  v28 = [location[0] authorizedAppListVersion];
  if ([(AKAuthorizationStore *)v32 _shouldUpdateDatabaseToListVersion:v28 withAltDSID:v30])
  {
    v5 = [(AKAuthorizationStore *)v32 _fetchAllAuthorizedClientIDs];
    v23 = [NSMutableSet setWithArray:?];
    _objc_release(v5);
    v22 = [location[0] teams];
    v6 = [v22 allValues];
    v14 = _NSConcreteStackBlock;
    v15 = -1073741824;
    v16 = 0;
    v17 = sub_100105468;
    v18 = &unk_100323770;
    v19 = _objc_retain(v23);
    v20 = _objc_retain(v32);
    v21 = _objc_retain(v28);
    [v6 enumerateObjectsUsingBlock:&v14];
    _objc_release(v6);
    v13 = [(AKAuthorizationStore *)v32 _handleRevokedApplicationsForVersion:v28];
    [(AKAuthorizationStore *)v32 setListVersionToVersion:v28 withAltDSID:v30];
    v33[0] = &off_1003390B8;
    v7 = [v23 allObjects];
    v34[0] = v7;
    v33[1] = &off_1003390D0;
    v34[1] = v13;
    v12 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:2];
    _objc_release(v7);
    if (v29)
    {
      (*(v29 + 2))(v29, v12, 0);
    }

    [(AKAuthorizationStore *)v32 _postApplicationsListChangedNotification];
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v23, 0);
    v24 = 0;
  }

  else
  {
    v27 = _AKLogSiwa();
    v26 = 2;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      log = v27;
      type = v26;
      sub_10001CEEC(v25);
      _os_log_debug_impl(&_mh_execute_header, log, type, "Authorization List version matches the local authorization list version, skipping update", v25, 2u);
    }

    objc_storeStrong(&v27, 0);
    if (v29)
    {
      (*(v29 + 2))(v29, 0);
    }

    v24 = 1;
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
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
  if ([location[0] count])
  {
    v5 = location[0];
    v10 = _NSConcreteStackBlock;
    v11 = -1073741824;
    v12 = 0;
    v13 = sub_100105864;
    v14 = &unk_100323798;
    v15 = _objc_retain(v20);
    [v5 enumerateKeysAndObjectsUsingBlock:&v10];
    if (v17)
    {
      (*(v17 + 2))(v17, 1, 0);
    }

    objc_storeStrong(&v15, 0);
    v16 = 0;
  }

  else
  {
    if (v17)
    {
      v6 = v17;
      v7 = [NSError errorWithDomain:AKSQLErrorDomain code:-6002 userInfo:0];
      v6[2](v6, 0);
      _objc_release(v7);
    }

    v16 = 1;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchAllPrimaryApplicationMetadataForAltDSID:(id)a3 withCompletion:(id)a4
{
  v37 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v35 = 0;
  objc_storeStrong(&v35, a4);
  v34 = [AKSQLiteQuery queryWithString:@"SELECT client_id, app_name, app_developer_name, adam_id FROM authorized_primary_applications"];
  v27 = 0;
  v28 = &v27;
  v29 = 838860800;
  v30 = 48;
  v31 = sub_100003A8C;
  v32 = sub_100011230;
  v33 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 838860800;
  v23 = 48;
  v24 = sub_100003A8C;
  v25 = sub_100011230;
  v26 = objc_alloc_init(NSMutableArray);
  v14[1] = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_100105CE0;
  v18 = &unk_10031F288;
  v19 = &v20;
  [v34 setRowHandler:?];
  objc_initWeak(v14, v37);
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_100105E7C;
  v11 = &unk_10031F2B0;
  objc_copyWeak(&v13, v14);
  v12[0] = _objc_retain(v34);
  v12[1] = &v27;
  [AKSQLiteExecutor performBlockAndWait:&v7];
  if (v28[5])
  {
    v4 = v28[5];
  }

  else
  {
    v5 = v21[5];
  }

  (*(v35 + 2))();
  objc_storeStrong(v12, 0);
  objc_destroyWeak(&v13);
  objc_destroyWeak(v14);
  _Block_object_dispose(&v20, 8);
  objc_storeStrong(&v26, 0);
  _Block_object_dispose(&v27, 8);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
}

- (void)_postApplicationsListChangedNotification
{
  v3 = +[AKFeatureManager sharedManager];
  v4 = [v3 isSiwaInPasswordsFeatureEnabled];
  _objc_release(v3);
  if (v4)
  {
    v2 = +[NSDistributedNotificationCenter defaultCenter];
    [(NSDistributedNotificationCenter *)v2 postNotificationName:AKSignInWithAppleAccountsListChangedNotification object:0 userInfo:0 deliverImmediately:1];
    _objc_release(v2);
  }
}

- (void)storeAuthorization:(id)a3 withAltDSID:(id)a4 forClient:(id)a5
{
  v37 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v35 = 0;
  objc_storeStrong(&v35, a4);
  v34 = 0;
  objc_storeStrong(&v34, a5);
  v19 = [location[0] authorizedRequest];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  _objc_release(v19);
  if (isKindOfClass)
  {
    v13 = [v34 bundleID];
    v28 = 0;
    v14 = 1;
    if (v13)
    {
      v29 = [v34 teamID];
      v28 = 1;
      v14 = v29 == 0;
    }

    if (v28)
    {
      _objc_release(v29);
    }

    _objc_release(v13);
    if (v14)
    {
      v27 = _AKLogSiwa();
      v26 = 16;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v11 = v27;
        v12 = v26;
        sub_10001CEEC(v25);
        _os_log_error_impl(&_mh_execute_header, v11, v12, "Cannot store an authorization credential with nil teamID/bundleID", v25, 2u);
      }

      objc_storeStrong(&v27, 0);
      v30 = 1;
    }

    else
    {
      v24 = [location[0] authorizedRequest];
      v23 = [location[0] credential];
      v22 = objc_alloc_init(AKDeveloperTeam);
      v5 = [v34 teamID];
      [v22 setTeamID:?];
      _objc_release(v5);
      v6 = [v23 userIdentifier];
      [v22 setUserIdentifier:?];
      _objc_release(v6);
      v21 = objc_alloc_init(AKConsentedApplication);
      v7 = [v34 bundleID];
      [v21 setClientID:?];
      _objc_release(v7);
      v8 = [v24 requestedScopes];
      [v21 setScopes:?];
      _objc_release(v8);
      v10 = [v34 bundleID];
      v38 = v10;
      v39 = v21;
      v9 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      [v22 setApps:?];
      _objc_release(v9);
      _objc_release(v10);
      [(AKAuthorizationStore *)v37 _addTemporaryDeveloperTeam:v22];
      objc_storeStrong(&v21, 0);
      objc_storeStrong(&v22, 0);
      objc_storeStrong(&v23, 0);
      objc_storeStrong(&v24, 0);
      v30 = 0;
    }
  }

  else
  {
    v33 = _AKLogSiwa();
    v32 = 16;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      log = v33;
      type = v32;
      sub_10001CEEC(v31);
      _os_log_error_impl(&_mh_execute_header, log, type, "Attempted to store incorrect authorization type", v31, 2u);
    }

    objc_storeStrong(&v33, 0);
    v30 = 1;
  }

  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchDeveloperTeamWithTeamID:(id)a3 withAltDSID:(id)a4 completion:(id)a5
{
  v54 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v52 = 0;
  objc_storeStrong(&v52, a4);
  v51 = 0;
  objc_storeStrong(&v51, a5);
  if (location[0])
  {
    v49 = [AKSQLiteQuery queryWithString:@"SELECT team_id, uid FROM authorized_teams WHERE team_id = ?"];
    v42 = 0;
    v43 = &v42;
    v44 = 838860800;
    v45 = 48;
    v46 = sub_100003A8C;
    v47 = sub_100011230;
    v48 = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 838860800;
    v38 = 48;
    v39 = sub_100003A8C;
    v40 = sub_100011230;
    v41 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 838860800;
    v31 = 48;
    v32 = sub_100003A8C;
    v33 = sub_100011230;
    v34 = 0;
    v27 = 0;
    [v49 bindParameter:location[0] error:&v27];
    objc_storeStrong(&v48, v27);
    v20[1] = _NSConcreteStackBlock;
    v21 = -1073741824;
    v22 = 0;
    v23 = sub_100106B14;
    v24 = &unk_1003237C0;
    v25 = &v35;
    v26 = &v28;
    [v49 setRowHandler:?];
    objc_initWeak(v20, v54);
    v13 = _NSConcreteStackBlock;
    v14 = -1073741824;
    v15 = 0;
    v16 = sub_100106C14;
    v17 = &unk_10031F2B0;
    objc_copyWeak(&v19, v20);
    v18[0] = _objc_retain(v49);
    v18[1] = &v42;
    [AKSQLiteExecutor performBlockAndWait:&v13];
    if (v43[5])
    {
      (*(v51 + 2))(v51, 0, v43[5]);
      v50 = 1;
    }

    else if (v36[5] || v29[5])
    {
      v12 = objc_alloc_init(AKDeveloperTeam);
      [v12 setTeamID:v36[5]];
      [v12 setUserIdentifier:v29[5]];
      v5 = [(AKAuthorizationStore *)v54 _fetchApplicationsForTeamID:location[0]];
      [v12 setApps:?];
      _objc_release(v5);
      (*(v51 + 2))(v51, v12, 0);
      objc_storeStrong(&v12, 0);
      v50 = 0;
    }

    else
    {
      v7 = v51;
      v6 = [NSError errorWithDomain:AKSQLErrorDomain code:-6003 userInfo:0];
      v7[2](v7, 0);
      _objc_release(v6);
      v50 = 1;
    }

    objc_storeStrong(v18, 0);
    objc_destroyWeak(&v19);
    objc_destroyWeak(v20);
    _Block_object_dispose(&v28, 8);
    objc_storeStrong(&v34, 0);
    _Block_object_dispose(&v35, 8);
    objc_storeStrong(&v41, 0);
    _Block_object_dispose(&v42, 8);
    objc_storeStrong(&v48, 0);
    objc_storeStrong(&v49, 0);
  }

  else
  {
    v8 = v51;
    v9 = [NSError errorWithDomain:AKSQLErrorDomain code:-6002 userInfo:?];
    v8[2](v8, 0);
    _objc_release(v9);
    v50 = 1;
  }

  objc_storeStrong(&v51, 0);
  objc_storeStrong(&v52, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchDeveloperTeamWithClientID:(id)a3 withAltDSID:(id)a4 completion:(id)a5
{
  v44 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v42 = 0;
  objc_storeStrong(&v42, a4);
  v41 = 0;
  objc_storeStrong(&v41, a5);
  if (location[0])
  {
    v39 = [AKSQLiteQuery queryWithString:@"SELECT team_id FROM authorized_applications WHERE client_id = ?"];
    v32 = 0;
    v33 = &v32;
    v34 = 838860800;
    v35 = 48;
    v36 = sub_100003A8C;
    v37 = sub_100011230;
    v38 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 838860800;
    v28 = 48;
    v29 = sub_100003A8C;
    v30 = sub_100011230;
    v31 = 0;
    v24 = 0;
    [v39 bindParameter:location[0] error:&v24];
    objc_storeStrong(&v38, v24);
    v18[1] = _NSConcreteStackBlock;
    v19 = -1073741824;
    v20 = 0;
    v21 = sub_1001071D0;
    v22 = &unk_10031F288;
    v23 = &v25;
    [v39 setRowHandler:?];
    objc_initWeak(v18, v44);
    v11 = _NSConcreteStackBlock;
    v12 = -1073741824;
    v13 = 0;
    v14 = sub_100107270;
    v15 = &unk_10031F2B0;
    objc_copyWeak(&v17, v18);
    v16[0] = _objc_retain(v39);
    v16[1] = &v32;
    [AKSQLiteExecutor performBlockAndWait:&v11];
    if (v33[5])
    {
      (*(v41 + 2))(v41, 0, v33[5]);
      v40 = 1;
    }

    else if (v26[5])
    {
      [(AKAuthorizationStore *)v44 fetchDeveloperTeamWithTeamID:v26[5] withAltDSID:v42 completion:v41];
      v40 = 0;
    }

    else
    {
      v6 = v41;
      v5 = [NSError errorWithDomain:AKSQLErrorDomain code:-6003 userInfo:0];
      v6[2](v6, 0);
      _objc_release(v5);
      v40 = 1;
    }

    objc_storeStrong(v16, 0);
    objc_destroyWeak(&v17);
    objc_destroyWeak(v18);
    _Block_object_dispose(&v25, 8);
    objc_storeStrong(&v31, 0);
    _Block_object_dispose(&v32, 8);
    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v39, 0);
  }

  else
  {
    v7 = v41;
    v8 = [NSError errorWithDomain:AKSQLErrorDomain code:-6002 userInfo:?];
    v7[2](v7, 0);
    _objc_release(v8);
    v40 = 1;
  }

  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
}

- (void)performUnsafeVerificationWithUserID:(id)a3 withAltDSID:(id)a4 completion:(id)a5
{
  v36 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v34 = 0;
  objc_storeStrong(&v34, a4);
  v33 = 0;
  objc_storeStrong(&v33, a5);
  v32 = [AKSQLiteQuery queryWithString:@"SELECT team_id FROM authorized_teams WHERE uid = ?"];
  v26[0] = 0;
  v26[1] = v26;
  v27 = 838860800;
  v28 = 48;
  v29 = sub_100003A8C;
  v30 = sub_100011230;
  v31 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x20000000;
  v24 = 32;
  v25 = 0;
  v20 = 0;
  [v32 bindParameter:location[0] error:&v20];
  objc_storeStrong(&v31, v20);
  v14[1] = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_10010768C;
  v18 = &unk_10031F288;
  v19 = &v21;
  [v32 setRowHandler:?];
  objc_initWeak(v14, v36);
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_100107710;
  v11 = &unk_10031F2B0;
  objc_copyWeak(&v13, v14);
  v12[0] = _objc_retain(v32);
  v12[1] = v26;
  [AKSQLiteExecutor performBlockAndWait:&v7];
  (*(v33 + 2))(v33, v22[3] & 1);
  objc_storeStrong(v12, 0);
  objc_destroyWeak(&v13);
  objc_destroyWeak(v14);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(v26, 8);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
}

- (void)revokeAuthorizationForApplicationWithClientID:(id)a3 completion:(id)a4
{
  v30 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v28 = 0;
  objc_storeStrong(&v28, a4);
  if (location[0])
  {
    v26 = [AKSQLiteQuery queryWithString:@"UPDATE authorized_applications SET credential_state = ? WHERE client_id = ?"];
    v19 = 0;
    v20 = &v19;
    v21 = 838860800;
    v22 = 48;
    v23 = sub_100003A8C;
    v24 = sub_100011230;
    v25 = 0;
    v18 = [NSNumber numberWithInt:0];
    v17 = [NSArray arrayWithObjects:v18, location[0], 0];
    v4 = (v20 + 5);
    v16 = v20[5];
    [v26 bindParameters:v17 error:&v16];
    objc_storeStrong(v4, v16);
    objc_initWeak(&v15, v30);
    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_100107BC0;
    v12 = &unk_10031F2B0;
    objc_copyWeak(&v14, &v15);
    v13[0] = _objc_retain(v26);
    v13[1] = &v19;
    [AKSQLiteExecutor performBlockAndWait:&v8];
    if (v20[5])
    {
      (*(v28 + 2))(v28, 0, v20[5]);
      v27 = 1;
    }

    else
    {
      (*(v28 + 2))(v28, 1, 0);
      v27 = 0;
    }

    objc_storeStrong(v13, 0);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v15);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v18, 0);
    _Block_object_dispose(&v19, 8);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v26, 0);
  }

  else
  {
    v5 = v28;
    v6 = [NSError errorWithDomain:AKSQLErrorDomain code:-6002 userInfo:0];
    v5[2](v5, 0);
    _objc_release(v6);
    v27 = 1;
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

- (void)removeApplicationWithClientID:(id)a3 completion:(id)a4
{
  v33 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v31 = 0;
  objc_storeStrong(&v31, a4);
  if (location[0])
  {
    v29 = _AKLogSiwa();
    v28 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v36, location[0]);
      _os_log_impl(&_mh_execute_header, v29, v28, "Attempting to delete application with clientID: %@ from DB", v36, 0xCu);
    }

    objc_storeStrong(&v29, 0);
    v27 = [AKSQLiteQuery queryWithString:@"DELETE FROM authorized_applications WHERE client_id = ?"];
    v20 = 0;
    v21 = &v20;
    v22 = 838860800;
    v23 = 48;
    v24 = sub_100003A8C;
    v25 = sub_100011230;
    v26 = 0;
    v19 = 0;
    [v27 bindParameter:location[0] error:&v19];
    objc_storeStrong(&v26, v19);
    objc_initWeak(&from, v33);
    v11 = _NSConcreteStackBlock;
    v12 = -1073741824;
    v13 = 0;
    v14 = sub_100108284;
    v15 = &unk_10031F2B0;
    objc_copyWeak(&v17, &from);
    v16[0] = _objc_retain(v27);
    v16[1] = &v20;
    [AKSQLiteExecutor performBlockAndWait:&v11];
    if (v21[5])
    {
      oslog = _AKLogSiwa();
      v9 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_10001B098(v35, location[0], v21[5]);
        _os_log_error_impl(&_mh_execute_header, oslog, v9, "Deleting application with clientID: %@ failed with error: %@", v35, 0x16u);
      }

      objc_storeStrong(&oslog, 0);
      v4 = v21[5];
      (*(v31 + 2))();
      v30 = 1;
    }

    else
    {
      v8 = _AKLogSiwa();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000194D4(v34, location[0]);
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Application with clientID: %@ removed from database successfully", v34, 0xCu);
      }

      objc_storeStrong(&v8, 0);
      (*(v31 + 2))();
      v30 = 0;
    }

    objc_storeStrong(v16, 0);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&from);
    _Block_object_dispose(&v20, 8);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v27, 0);
  }

  else
  {
    v6 = v31;
    v5 = [NSError errorWithDomain:AKSQLErrorDomain code:-6002 userInfo:0];
    v6[2](v6, 0);
    _objc_release(v5);
    v30 = 1;
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
}

- (void)revokeAuthorizationForAllApplicationsWithAltDSID:(id)a3 completion:(id)a4
{
  v32 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v30 = 0;
  objc_storeStrong(&v30, a4);
  v29 = [AKSQLiteQuery queryWithString:@"UPDATE authorized_applications SET credential_state = ?, authorizedAppListVersion = 'TEMPORARY'"];
  v22 = 0;
  v23 = &v22;
  v24 = 838860800;
  v25 = 48;
  v26 = sub_100003A8C;
  v27 = sub_100011230;
  v28 = 0;
  v6 = v29;
  v4 = [NSNumber numberWithInt:0];
  v5 = (v23 + 5);
  v21 = v23[5];
  [v6 bindParameter:? error:?];
  objc_storeStrong(v5, v21);
  _objc_release(v4);
  v20 = [(AKAuthorizationStore *)v32 _fetchAllAuthorizedClientIDs];
  objc_initWeak(&from, v32);
  v12 = _NSConcreteStackBlock;
  v13 = -1073741824;
  v14 = 0;
  v15 = sub_100108848;
  v16 = &unk_10031F2B0;
  objc_copyWeak(&v18, &from);
  v17[0] = _objc_retain(v29);
  v17[1] = &v22;
  [AKSQLiteExecutor performBlockAndWait:&v12];
  if (v23[5])
  {
    oslog = _AKLogSiwa();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v35, v23[5]);
      _os_log_error_impl(&_mh_execute_header, oslog, type, "Revoking all applications failed with error: %@", v35, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    if (v30)
    {
      (*(v30 + 2))(v30, 0, v23[5]);
    }

    v9 = 1;
  }

  else
  {
    v33 = &off_1003390D0;
    v34 = v20;
    v8 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    if (v30)
    {
      (*(v30 + 2))(v30, v8, 0);
    }

    [(AKAuthorizationStore *)v32 _postApplicationsListChangedNotification];
    objc_storeStrong(&v8, 0);
    v9 = 0;
  }

  objc_storeStrong(v17, 0);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&from);
  objc_storeStrong(&v20, 0);
  _Block_object_dispose(&v22, 8);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchAllDeveloperTeamsAndApplicationsForAltDSID:(id)a3 withCompletion:(id)a4
{
  v51 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v49 = 0;
  objc_storeStrong(&v49, a4);
  v48 = [AKSQLiteQuery queryWithString:@"SELECT team_id, uid, private_email FROM authorized_teams"];
  v41 = 0;
  v42 = &v41;
  v43 = 838860800;
  v44 = 48;
  v45 = sub_100003A8C;
  v46 = sub_100011230;
  v47 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 838860800;
  v37 = 48;
  v38 = sub_100003A8C;
  v39 = sub_100011230;
  v40 = objc_alloc_init(NSMutableArray);
  from[1] = _NSConcreteStackBlock;
  v29 = -1073741824;
  v30 = 0;
  v31 = sub_100108FD0;
  v32 = &unk_10031F288;
  v33 = &v34;
  [v48 setRowHandler:?];
  objc_initWeak(from, v51);
  v21 = _NSConcreteStackBlock;
  v22 = -1073741824;
  v23 = 0;
  v24 = sub_100109124;
  v25 = &unk_10031F2B0;
  objc_copyWeak(&v27, from);
  v26[0] = _objc_retain(v48);
  v26[1] = &v41;
  [AKSQLiteExecutor performBlockAndWait:&v21];
  if (v42[5])
  {
    oslog = _AKLogSiwa();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v53, v42[5]);
      _os_log_error_impl(&_mh_execute_header, oslog, type, "Failed to fetch authorized all teams and applications with error: %@", v53, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    (*(v49 + 2))(v49, 0, v42[5]);
    v18 = 1;
  }

  else
  {
    memset(__b, 0, sizeof(__b));
    v13 = _objc_retain(v35[5]);
    v14 = [v13 countByEnumeratingWithState:__b objects:v52 count:16];
    if (v14)
    {
      v10 = *__b[2];
      v11 = 0;
      v12 = v14;
      while (1)
      {
        v9 = v11;
        if (*__b[2] != v10)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(__b[1] + 8 * v11);
        v8 = v51;
        v7 = [v17 teamID];
        v6 = [(AKAuthorizationStore *)v8 _fetchApplicationsForTeamID:?];
        [v17 setApps:?];
        _objc_release(v6);
        _objc_release(v7);
        ++v11;
        if (v9 + 1 >= v12)
        {
          v11 = 0;
          v12 = [v13 countByEnumeratingWithState:__b objects:v52 count:16];
          if (!v12)
          {
            break;
          }
        }
      }
    }

    _objc_release(v13);
    v4 = v49;
    v5 = [v35[5] copy];
    v4[2](v4, v5, 0);
    _objc_release(v5);
    v18 = 0;
  }

  objc_storeStrong(v26, 0);
  objc_destroyWeak(&v27);
  objc_destroyWeak(from);
  _Block_object_dispose(&v34, 8);
  objc_storeStrong(&v40, 0);
  _Block_object_dispose(&v41, 8);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(location, 0);
}

- (id)_fetchAppMetadataForClientID:(id)a3
{
  v37 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v35 = [AKSQLiteQuery queryWithString:@"SELECT client_id, app_name, app_developer_name, adam_id FROM authorized_primary_applications WHERE client_id = ?"];
  v28 = 0;
  v29 = &v28;
  v30 = 838860800;
  v31 = 48;
  v32 = sub_100003A8C;
  v33 = sub_100011230;
  v34 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 838860800;
  v24 = 48;
  v25 = sub_100003A8C;
  v26 = sub_100011230;
  v27 = objc_alloc_init(AKAppiTunesMetadata);
  v5 = (v29 + 5);
  v20 = v29[5];
  [v35 bindParameter:location[0] error:&v20];
  objc_storeStrong(v5, v20);
  from[1] = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_1001096DC;
  v18 = &unk_10031F288;
  v19 = &v21;
  [v35 setRowHandler:?];
  objc_initWeak(from, v37);
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_10010986C;
  v11 = &unk_10031F2B0;
  objc_copyWeak(&v13, from);
  v12[0] = _objc_retain(v35);
  v12[1] = &v28;
  [AKSQLiteExecutor performBlockAndWait:&v7];
  if (v29[5])
  {
    oslog = _AKLogSiwa();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v38, v29[5]);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Fetching AMS app metadata failed with error: %@", v38, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  v4 = _objc_retain(v22[5]);
  objc_storeStrong(v12, 0);
  objc_destroyWeak(&v13);
  objc_destroyWeak(from);
  _Block_object_dispose(&v21, 8);
  objc_storeStrong(&v27, 0);
  _Block_object_dispose(&v28, 8);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (void)_addTemporaryDeveloperTeam:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = _objc_retain(@"TEMPORARY");
  [(AKAuthorizationStore *)v5 _storeDeveloperTeam:location[0] listVersion:v3];
  objc_storeStrong(&v3, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_shouldUpdateDatabaseToListVersion:(id)a3 withAltDSID:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = [(AKAuthorizationStore *)v10 fetchAuthorizationListVersionWithAltDSID:v8];
  v6 = [location[0] isEqualToString:v7] == 0;
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v6;
}

- (void)_storeDeveloperTeam:(id)a3 listVersion:(id)a4
{
  v40 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v38 = 0;
  objc_storeStrong(&v38, a4);
  v37 = [AKSQLiteQuery queryWithString:@"INSERT OR REPLACE INTO authorized_teams (team_id, uid, private_email) VALUES (?, ?, ?)"];
  v7 = [location[0] teamID];
  v6 = [location[0] userIdentifier];
  v5 = [location[0] privateEmail];
  v36 = [NSArray arrayWithObjects:v7, v6, v5, 0];
  _objc_release(v5);
  _objc_release(v6);
  _objc_release(v7);
  v29 = 0;
  v30 = &v29;
  v31 = 838860800;
  v32 = 48;
  v33 = sub_100003A8C;
  v34 = sub_100011230;
  v35 = 0;
  v28 = 0;
  [v37 bindParameters:v36 error:&v28];
  objc_storeStrong(&v35, v28);
  objc_initWeak(&from, v40);
  v20 = _NSConcreteStackBlock;
  v21 = -1073741824;
  v22 = 0;
  v23 = sub_10010A088;
  v24 = &unk_10031F2B0;
  objc_copyWeak(&v26, &from);
  v25[0] = _objc_retain(v37);
  v25[1] = &v29;
  [AKSQLiteExecutor performBlockAndWait:&v20];
  if (v30[5])
  {
    v19 = _AKLogSiwa();
    v18 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v41, v30[5]);
      _os_log_error_impl(&_mh_execute_header, v19, v18, "Storing developer team failed with error: %@", v41, 0xCu);
    }

    objc_storeStrong(&v19, 0);
    v17 = 1;
  }

  else
  {
    v4 = [location[0] apps];
    v9 = _NSConcreteStackBlock;
    v10 = -1073741824;
    v11 = 0;
    v12 = sub_10010A130;
    v13 = &unk_1003237E8;
    v14 = _objc_retain(v40);
    v15 = _objc_retain(location[0]);
    v16 = _objc_retain(v38);
    [v4 enumerateKeysAndObjectsUsingBlock:&v9];
    _objc_release(v4);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v14, 0);
    v17 = 0;
  }

  objc_storeStrong(v25, 0);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&from);
  _Block_object_dispose(&v29, 8);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
}

- (void)_storeConsentedApplication:(id)a3 teamID:(id)a4 listVersion:(id)a5
{
  obj = a4;
  v58 = a5;
  v89 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v87 = 0;
  objc_storeStrong(&v87, obj);
  v86 = 0;
  objc_storeStrong(&v86, v58);
  v55 = v89;
  v56 = [location[0] scopes];
  v53 = v56;
  v54 = [v53 componentsJoinedByString:{@", "}];
  v51 = v54;
  v52 = [(AKAuthorizationStore *)v55 _optionalValueWithString:?];
  v85 = v52;
  _objc_release(v51);
  _objc_release(v53);
  v49 = v89;
  v50 = [location[0] transferState];
  v47 = v50;
  v48 = [(AKAuthorizationStore *)v49 _optionalValueWithString:?];
  v84 = v48;
  _objc_release(v47);
  v45 = v89;
  v46 = [location[0] primaryClientID];
  v43 = v46;
  v44 = [(AKAuthorizationStore *)v45 _optionalValueWithString:?];
  v83 = v44;
  _objc_release(v43);
  v41 = v89;
  v42 = [location[0] origin];
  v39 = v42;
  v40 = [(AKAuthorizationStore *)v41 _optionalValueWithString:?];
  v82 = v40;
  _objc_release(v39);
  v38 = [NSNumber numberWithInt:1];
  v81 = v38;
  v36 = v89;
  v37 = [location[0] clientName];
  v34 = v37;
  v35 = [(AKAuthorizationStore *)v36 _optionalValueWithString:?];
  v80 = v35;
  _objc_release(v34);
  v78 = 0;
  v33 = [AKSQLiteQuery queryWithString:@"INSERT OR REPLACE INTO authorized_applications (client_id, team_id, scopes, origin, credential_state, transfer_state, primary_client_id, authorizedAppListVersion, creation_date, client_name) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"];
  v79 = v33;
  _objc_release(0);
  v31 = NSArray;
  v32 = [location[0] clientID];
  v22 = v32;
  v23 = v87;
  v24 = v85;
  v25 = v82;
  v26 = v81;
  v27 = v84;
  v28 = v83;
  v29 = v86;
  v30 = [location[0] creationDate];
  v19 = v30;
  v20 = &v8;
  v21 = [NSArray arrayWithObjects:v22, v23, v85, v82, v81, v84, v83, v29, v19, v80, 0];
  v5 = v21;
  v6 = v78;
  v78 = v5;
  _objc_release(v6);
  _objc_release(v19);
  _objc_release(v22);
  v71 = 0;
  v72 = &v71;
  v73 = 838860800;
  v74 = 48;
  v75 = sub_100003A8C;
  v76 = sub_100011230;
  v77 = 0;
  v17 = &v77;
  v18 = &v77;
  v70 = 0;
  [v79 bindParameters:v78 error:&v70];
  objc_storeStrong(v18, v70);
  objc_initWeak(&from, v89);
  v15 = AKSQLiteExecutor;
  v62 = _NSConcreteStackBlock;
  v63 = -1073741824;
  v64 = 0;
  v65 = sub_10010AA98;
  v66 = &unk_10031F2B0;
  v16 = &v68;
  objc_copyWeak(&v68, &from);
  v14 = &v62;
  v13 = v67;
  v67[0] = _objc_retain(v79);
  v67[1] = &v71;
  [(__objc2_class *)v15 performBlockAndWait:v14];
  if (v72[5])
  {
    v12 = _AKLogSiwa();
    oslog = v12;
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *v10 = type;
      v7 = v72[5];
      buf = v90;
      sub_1000194D4(v90, v7);
      _os_log_error_impl(&_mh_execute_header, log, v10[0], "Storing consented applications failed with error: %@", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v59 = 1;
  }

  else
  {
    v59 = 0;
  }

  objc_storeStrong(v13, 0);
  objc_destroyWeak(v16);
  objc_destroyWeak(&from);
  _Block_object_dispose(&v71, 8);
  objc_storeStrong(v17, 0);
  objc_storeStrong(&v78, 0);
  objc_storeStrong(&v79, 0);
  objc_storeStrong(&v80, 0);
  objc_storeStrong(&v81, 0);
  objc_storeStrong(&v82, 0);
  objc_storeStrong(&v83, 0);
  objc_storeStrong(&v84, 0);
  objc_storeStrong(&v85, 0);
  objc_storeStrong(&v86, 0);
  objc_storeStrong(&v87, 0);
  objc_storeStrong(location, 0);
}

- (void)_storePrimaryAppAMSMetadata:(id)a3
{
  v40 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v38 = _AKLogSiwa();
  v37 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    v13 = [location[0] bundleId];
    sub_1000194D4(v42, v13);
    _os_log_debug_impl(&_mh_execute_header, v38, v37, "Storing data for bundle: %@", v42, 0xCu);
    _objc_release(v13);
  }

  objc_storeStrong(&v38, 0);
  v12 = v40;
  v11 = [location[0] bundleId];
  v36 = [(AKAuthorizationStore *)v12 _optionalValueWithString:?];
  _objc_release(v11);
  v10 = v40;
  v9 = [location[0] appName];
  v35 = [(AKAuthorizationStore *)v10 _optionalValueWithString:?];
  _objc_release(v9);
  v8 = v40;
  v7 = [location[0] appDeveloperName];
  v34 = [(AKAuthorizationStore *)v8 _optionalValueWithString:?];
  _objc_release(v7);
  v6 = v40;
  v5 = [location[0] adamID];
  v33 = [(AKAuthorizationStore *)v6 _optionalValueWithString:?];
  _objc_release(v5);
  v32 = [AKSQLiteQuery queryWithString:@"INSERT OR REPLACE INTO authorized_primary_applications (client_id, app_name, app_developer_name, adam_id) VALUES (?, ?, ?, ?)"];
  v25 = 0;
  v26 = &v25;
  v27 = 838860800;
  v28 = 48;
  v29 = sub_100003A8C;
  v30 = sub_100011230;
  v31 = 0;
  v24 = [NSArray arrayWithObjects:v36, v35, v34, v33, 0];
  v4 = (v26 + 5);
  v23 = v26[5];
  [v32 bindParameters:v24 error:&v23];
  objc_storeStrong(v4, v23);
  objc_initWeak(&from, v40);
  v15 = _NSConcreteStackBlock;
  v16 = -1073741824;
  v17 = 0;
  v18 = sub_10010B268;
  v19 = &unk_10031F2B0;
  objc_copyWeak(&v21, &from);
  v20[0] = _objc_retain(v32);
  v20[1] = &v25;
  [AKSQLiteExecutor performBlockAndWait:&v15];
  if (v26[5])
  {
    oslog = _AKLogSiwa();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v3 = [location[0] bundleId];
      sub_10001B098(v41, v3, v26[5]);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Storing AMS app metadata for bundle: %@ failed with error: %@", v41, 0x16u);
      _objc_release(v3);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(v20, 0);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&from);
  objc_storeStrong(&v24, 0);
  _Block_object_dispose(&v25, 8);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
}

- (id)_handleRevokedApplicationsForVersion:(id)a3
{
  v46 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v44 = [AKSQLiteQuery queryWithString:@"SELECT client_id FROM authorized_applications WHERE authorizedAppListVersion != ? AND authorizedAppListVersion != 'TEMPORARY'"];
  v37 = 0;
  v38 = &v37;
  v39 = 838860800;
  v40 = 48;
  v41 = sub_100003A8C;
  v42 = sub_100011230;
  v43 = 0;
  v36 = +[NSMutableArray array];
  v6 = v38 + 5;
  v35[0] = v38[5];
  [v44 bindParameter:location[0] error:v35];
  objc_storeStrong(v6, v35[0]);
  v29 = _NSConcreteStackBlock;
  v30 = -1073741824;
  v31 = 0;
  v32 = sub_10010BADC;
  v33 = &unk_10031F2D8;
  v34 = _objc_retain(v36);
  [v44 setRowHandler:&v29];
  v28 = [AKSQLiteQuery queryWithString:@"UPDATE authorized_applications SET credential_state = ?, authorizedAppListVersion = ? WHERE authorizedAppListVersion != ?"];
  v27 = [NSNumber numberWithInt:0];
  v26 = [NSArray arrayWithObjects:v27, location[0], location[0], 0];
  v5 = v38 + 5;
  v25 = v38[5];
  [v28 bindParameters:v26 error:&v25];
  objc_storeStrong(v5, v25);
  objc_initWeak(&from, v46);
  v17 = _NSConcreteStackBlock;
  v18 = -1073741824;
  v19 = 0;
  v20 = sub_10010BB60;
  v21 = &unk_10031F2B0;
  objc_copyWeak(&v23, &from);
  v22[0] = _objc_retain(v44);
  v22[1] = &v37;
  [AKSQLiteExecutor performBlockAndWait:&v17];
  if (v38[5])
  {
    oslog = _AKLogSiwa();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v48, v38[5]);
      _os_log_error_impl(&_mh_execute_header, oslog, type, "Failed to fetch applications to be revoked with error: %@", v48, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_10010BC08;
  v12 = &unk_10031F2B0;
  objc_copyWeak(&v14, &from);
  v13[0] = _objc_retain(v28);
  v13[1] = &v37;
  [AKSQLiteExecutor performBlockAndWait:&v8];
  if (v38[5])
  {
    v7 = _AKLogSiwa();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v47, v38[5]);
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to revoke applications with error: %@", v47, 0xCu);
    }

    objc_storeStrong(&v7, 0);
  }

  v4 = _objc_retain(v36);
  objc_storeStrong(v13, 0);
  objc_destroyWeak(&v14);
  objc_storeStrong(v22, 0);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&from);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v36, 0);
  _Block_object_dispose(&v37, 8);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_fetchApplicationsForTeamID:(id)a3
{
  v43 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v35 = 0;
  v36 = &v35;
  v37 = 838860800;
  v38 = 48;
  v39 = sub_100003A8C;
  v40 = sub_100011230;
  v41 = objc_alloc_init(NSMutableDictionary);
  v34 = [AKSQLiteQuery queryWithString:@"SELECT client_id, scopes, credential_state, transfer_state, primary_client_id, origin, creation_date, client_name FROM authorized_applications WHERE team_id = ?"];
  v27 = 0;
  v28 = &v27;
  v29 = 838860800;
  v30 = 48;
  v31 = sub_100003A8C;
  v32 = sub_100011230;
  v33[0] = 0;
  v26 = 0;
  [v34 bindParameter:location[0] error:&v26];
  objc_storeStrong(v33, v26);
  from[1] = _NSConcreteStackBlock;
  v21 = -1073741824;
  v22 = 0;
  v23 = sub_10010C284;
  v24 = &unk_10031F288;
  v25 = &v35;
  [v34 setRowHandler:?];
  objc_initWeak(from, v43);
  v13 = _NSConcreteStackBlock;
  v14 = -1073741824;
  v15 = 0;
  v16 = sub_10010C608;
  v17 = &unk_10031F2B0;
  objc_copyWeak(&v19, from);
  v18[0] = _objc_retain(v34);
  v18[1] = &v27;
  [AKSQLiteExecutor performBlockAndWait:&v13];
  v5 = v36[5];
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_10010C6B0;
  v11 = &unk_100323810;
  v12[0] = _objc_retain(v43);
  v12[1] = &v35;
  [v5 enumerateKeysAndObjectsUsingBlock:&v7];
  if (v28[5])
  {
    oslog = _AKLogSiwa();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v44, v28[5]);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Failed to fetch applications with error: %@, continuing with fetched applications if any...", v44, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  v4 = [v36[5] copy];
  objc_storeStrong(v12, 0);
  objc_storeStrong(v18, 0);
  objc_destroyWeak(&v19);
  objc_destroyWeak(from);
  _Block_object_dispose(&v27, 8);
  objc_storeStrong(v33, 0);
  objc_storeStrong(&v34, 0);
  _Block_object_dispose(&v35, 8);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_optionalValueWithString:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v6 = _objc_retain(location[0]);
  }

  else
  {
    v6 = _objc_retain(@"NULL");
  }

  objc_storeStrong(location, 0);
  v3 = v6;

  return v3;
}

- (id)_fetchAllAuthorizedClientIDs
{
  v31 = self;
  v30[1] = a2;
  v30[0] = [AKSQLiteQuery queryWithString:@"SELECT client_id FROM authorized_applications WHERE credential_state = ?"];
  v23 = 0;
  v24 = &v23;
  v25 = 838860800;
  v26 = 48;
  v27 = sub_100003A8C;
  v28 = sub_100011230;
  v29 = 0;
  v22 = [NSNumber numberWithInt:1];
  location = (v24 + 5);
  v21 = v24[5];
  [v30[0] bindParameter:v22 error:&v21];
  objc_storeStrong(location, v21);
  v20 = +[NSMutableArray array];
  v14 = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_10010CD44;
  v18 = &unk_10031F2D8;
  v19 = _objc_retain(v20);
  [v30[0] setRowHandler:&v14];
  objc_initWeak(&from, v31);
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10010CDCC;
  v10 = &unk_10031F2B0;
  objc_copyWeak(&v12, &from);
  v11[0] = _objc_retain(v30[0]);
  v11[1] = &v23;
  [AKSQLiteExecutor performBlockAndWait:&v6];
  if (v24[5])
  {
    oslog = _AKLogSiwa();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v32, v24[5]);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Failed to fetch authorized client IDs with error: %@, continuing with the fetched clients if any...", v32, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  v3 = [v20 copy];
  objc_storeStrong(v11, 0);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&from);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v22, 0);
  _Block_object_dispose(&v23, 8);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(v30, 0);

  return v3;
}

- (id)fetchAuthorizationListVersionWithAltDSID:(id)a3
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  v15 = &v14;
  v16 = 838860800;
  v17 = 48;
  v18 = sub_100003A8C;
  v19 = sub_100011230;
  v20 = 0;
  v13 = [NSString stringWithFormat:@"SELECT authorizedAppListVersion FROM version;"];
  objc_initWeak(v12, v22);
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10010D0C8;
  v9 = &unk_10031F2B0;
  objc_copyWeak(&v11, v12);
  v10[0] = _objc_retain(v13);
  v10[1] = &v14;
  [AKSQLiteExecutor performBlockAndWait:&v5];
  v4 = _objc_retain(v15[5]);
  objc_storeStrong(v10, 0);
  objc_destroyWeak(&v11);
  objc_destroyWeak(v12);
  objc_storeStrong(&v13, 0);
  _Block_object_dispose(&v14, 8);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (void)setListVersionToVersion:(id)a3 withAltDSID:(id)a4
{
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = 0;
  objc_storeStrong(&v23, a4);
  v22 = [AKSQLiteQuery queryWithString:@"UPDATE version SET authorizedAppListVersion = ?"];
  v15 = 0;
  v16 = &v15;
  v17 = 838860800;
  v18 = 48;
  v19 = sub_100003A8C;
  v20 = sub_100011230;
  v21 = 0;
  v14 = 0;
  [v22 bindParameter:location[0] error:&v14];
  objc_storeStrong(&v21, v14);
  objc_initWeak(&from, v25);
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10010D5EC;
  v10 = &unk_10031F2B0;
  objc_copyWeak(&v12, &from);
  v11[0] = _objc_retain(v22);
  v11[1] = &v15;
  [AKSQLiteExecutor performBlockAndWait:&v6];
  if (v16[5])
  {
    oslog = _AKLogSiwa();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v26, v16[5]);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Encountered error setting app list version: %@", v26, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(v11, 0);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&from);
  _Block_object_dispose(&v15, 8);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

- (void)_setDatabaseVersionWithAltDSID:(id)a3 toVersion:(int64_t)a4
{
  v30 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v28 = a4;
  v27 = [AKSQLiteQuery queryWithString:@"UPDATE version SET db_version = ?"];
  v20 = 0;
  v21 = &v20;
  v22 = 838860800;
  v23 = 48;
  v24 = sub_100003A8C;
  v25 = sub_100011230;
  v26 = 0;
  from[3] = _NSConcreteStackBlock;
  v14 = -1073741824;
  v15 = 0;
  v16 = sub_10010DA88;
  v17 = &unk_100323860;
  v19 = v28;
  v18 = &v20;
  [v27 setBindHandler:?];
  objc_initWeak(from, v30);
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10010DB38;
  v10 = &unk_10031F2B0;
  objc_copyWeak(&v12, from);
  v11[0] = _objc_retain(v27);
  v11[1] = &v20;
  [AKSQLiteExecutor performBlockAndWait:&v6];
  if (v21[5])
  {
    oslog = _AKLogSiwa();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v31, v21[5]);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Failed to update database version with error: %@", v31, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(v11, 0);
  objc_destroyWeak(&v12);
  objc_destroyWeak(from);
  _Block_object_dispose(&v20, 8);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
}

- (void)clearDatabaseWithAltDSID:(id)a3 error:(id *)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = a4;
  v9 = 0;
  executor = v12->_executor;
  obj = 0;
  [(AKSQLiteExecutor *)executor wipeDatabase:&obj];
  objc_storeStrong(&v9, obj);
  if (v10)
  {
    v6 = v9;
    v5 = v9;
    *v10 = v6;
  }

  [(AKAuthorizationStore *)v12 _postApplicationsListChangedNotification];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

@end