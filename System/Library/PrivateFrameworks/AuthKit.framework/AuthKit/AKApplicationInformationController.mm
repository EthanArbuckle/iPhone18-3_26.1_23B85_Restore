@interface AKApplicationInformationController
+ (id)sharedController;
- (id)_buildApplicationAuthorizationController;
- (id)_buildApplicationMetadataServiceForAltDSID:(id)d client:(id)client;
- (void)_updatePrimaryApplicationsMetadataForAltDSID:(id)d metadataInfo:(id)info;
- (void)fetchAppInformationWithAltDSID:(id)d client:(id)client completion:(id)completion;
- (void)fetchPrimaryApplicationInformationForAltDSID:(id)d appInformation:(id)information client:(id)client completion:(id)completion;
@end

@implementation AKApplicationInformationController

+ (id)sharedController
{
  selfCopy = self;
  v10 = a2;
  obj = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000CF0BC;
  v8 = &unk_100322AA0;
  selfCopy2 = self;
  v13 = &unk_100374760;
  location = 0;
  objc_storeStrong(&location, &obj);
  if (*v13 != -1)
  {
    dispatch_once(v13, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100374758;

  return v2;
}

- (void)fetchAppInformationWithAltDSID:(id)d client:(id)client completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v24 = 0;
  objc_storeStrong(&v24, client);
  v23 = 0;
  objc_storeStrong(&v23, completion);
  v22 = _AKLogSystem();
  v21 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    sub_10001CE98(v27, 1752392040, location[0]);
    _os_log_impl(&_mh_execute_header, v22, v21, "Starting to fetch app info for %{mask.hash}@", v27, 0x16u);
  }

  objc_storeStrong(&v22, 0);
  v20 = objc_opt_new();
  [v20 setAltDSID:location[0]];
  v5 = [AKGrandSlamRequestProvider alloc];
  v19 = [(AKURLRequestProviderImpl *)v5 initWithContext:v20 urlBagKey:AKURLBagKeyFetchAppInfo];
  [(AKURLRequestProviderImpl *)v19 setClient:v24];
  [(AKGrandSlamRequestProvider *)v19 setAuthenticatedRequest:1];
  v6 = [AKServiceControllerImpl alloc];
  v18 = [(AKServiceControllerImpl *)v6 initWithRequestProvider:v19];
  v7 = v18;
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_1000CF41C;
  v14 = &unk_10031F110;
  v17 = _objc_retain(v23);
  v15 = _objc_retain(location[0]);
  v16 = _objc_retain(selfCopy);
  [(AKServiceControllerImpl *)v7 executeRequestWithCompletion:&v10];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchPrimaryApplicationInformationForAltDSID:(id)d appInformation:(id)information client:(id)client completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v24 = 0;
  objc_storeStrong(&v24, information);
  v23 = 0;
  objc_storeStrong(&v23, client);
  v22 = 0;
  objc_storeStrong(&v22, completion);
  v21 = _AKLogSystem();
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v24 objectForKeyedSubscript:@"client_id"];
    sub_1000CFB9C(v27, v8, 1752392040, location[0]);
    _os_log_impl(&_mh_execute_header, v21, v20, "Starting to fetch bundle id for Primary application for serviceID: %@, altDSID: %{mask.hash}@", v27, 0x20u);
    _objc_release(v8);
  }

  objc_storeStrong(&v21, 0);
  v19 = [(AKApplicationInformationController *)selfCopy _buildApplicationMetadataServiceForAltDSID:location[0] client:v23];
  v6 = v19;
  v7 = [v24 objectForKeyedSubscript:@"client_id"];
  v12 = _NSConcreteStackBlock;
  v13 = -1073741824;
  v14 = 0;
  v15 = sub_1000CFC08;
  v16 = &unk_100322438;
  v18 = _objc_retain(v22);
  v17 = _objc_retain(location[0]);
  [v6 performFetchPrimaryApplicationInformationForClientBundleID:v7 completion:&v12];
  _objc_release(v7);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

- (void)_updatePrimaryApplicationsMetadataForAltDSID:(id)d metadataInfo:(id)info
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v12 = 0;
  objc_storeStrong(&v12, info);
  v11 = objc_alloc_init(AKMediaServicesController);
  v10 = +[AKAuthorizationStoreManager sharedInstance];
  v9 = [(AKApplicationInformationController *)selfCopy _buildApplicationMetadataServiceForAltDSID:location[0] client:0];
  v4 = [AKAccountsMetadataController alloc];
  v8 = [(AKAccountsMetadataController *)v4 initWithMediaServiceController:v11 localStorageController:v10 metadataService:v9];
  teams = [v12 teams];
  allValues = [teams allValues];
  _objc_release(teams);
  [(AKAccountsMetadataController *)v8 updatePrimaryAppsMetadataWithDeveloperTeams:allValues forAltDSID:location[0] completionHandler:&stru_100322AC0];
  objc_storeStrong(&allValues, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (id)_buildApplicationAuthorizationController
{
  v10[2] = self;
  v10[1] = a2;
  v3 = [AKSharedAccountsStorageController alloc];
  v5 = objc_alloc_init(AAFKeychainManager);
  v4 = +[KCSharingGroupManager sharedInstance];
  v10[0] = [(AKSharedAccountsStorageController *)v3 initWithKeychainStorageController:v5 keychainGroupManager:?];
  _objc_release(v4);
  _objc_release(v5);
  v6 = [AKApplicationAuthorizationController alloc];
  v7 = +[AKAuthorizationStoreManager sharedInstance];
  v9 = [AKApplicationAuthorizationController initWithStoreManager:v6 sharedAccountsStorageController:"initWithStoreManager:sharedAccountsStorageController:"];
  _objc_release(v7);
  v8 = _objc_retain(v9);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(v10, 0);

  return v8;
}

- (id)_buildApplicationMetadataServiceForAltDSID:(id)d client:(id)client
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v13 = 0;
  objc_storeStrong(&v13, client);
  v12 = objc_opt_new();
  [v12 setAltDSID:location[0]];
  v4 = [AKApplicationMetadataRequestProvider alloc];
  v11 = [(AKApplicationMetadataRequestProvider *)v4 initWithContext:v12 urlBagKey:AKURLBagKeyFetchPrimaryBundleID];
  [(AKURLRequestProviderImpl *)v11 setClient:v13];
  [(AKGrandSlamRequestProvider *)v11 setAuthenticatedRequest:1];
  v5 = [AKServiceControllerImpl alloc];
  v10 = [(AKServiceControllerImpl *)v5 initWithRequestProvider:v11];
  v6 = [AKApplicationMetadataService alloc];
  v9 = [(AKApplicationMetadataService *)v6 initWithServiceController:v10];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);

  return v9;
}

@end