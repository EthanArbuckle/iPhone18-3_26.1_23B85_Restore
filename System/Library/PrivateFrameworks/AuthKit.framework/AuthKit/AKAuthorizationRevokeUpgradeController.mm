@interface AKAuthorizationRevokeUpgradeController
- (id)_authenticationContextForRevokingUpgrade;
- (id)_requestBodyForUpgradeRevokeContext:(id)a3;
- (void)revokeUpgradeWithContext:(id)a3 client:(id)a4 completion:(id)a5;
@end

@implementation AKAuthorizationRevokeUpgradeController

- (void)revokeUpgradeWithContext:(id)a3 client:(id)a4 completion:(id)a5
{
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = 0;
  objc_storeStrong(&v26, a4);
  v25 = 0;
  objc_storeStrong(&v25, a5);
  v24 = [(AKAuthorizationRevokeUpgradeController *)v28 _authenticationContextForRevokingUpgrade];
  v23 = _AKLogSystem();
  v22 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v11 = [location[0] transactionID];
    v10 = [location[0] teamID];
    v9 = [location[0] bundleID];
    sub_10004DCC8(v29, v11, v10, v9);
    _os_log_debug_impl(&_mh_execute_header, v23, v22, "Sending request to revoke upgrade txID %@ for teamID/bundleID: %@/%@", v29, 0x20u);
    _objc_release(v9);
    _objc_release(v10);
    _objc_release(v11);
  }

  objc_storeStrong(&v23, 0);
  v5 = [AKGrandSlamRequestProvider alloc];
  v21 = [(AKURLRequestProviderImpl *)v5 initWithContext:v24 urlBagKey:AKURLBagKeyDeleteAuthorizedApp];
  [(AKGrandSlamRequestProvider *)v21 setAuthenticatedRequest:1];
  [(AKURLRequestProviderImpl *)v21 setClient:v26];
  v7 = [(AKAuthorizationRevokeUpgradeController *)v28 _requestBodyForUpgradeRevokeContext:location[0]];
  [(AKURLRequestProviderImpl *)v21 setAuthKitBody:?];
  _objc_release(v7);
  v6 = [AKServiceControllerImpl alloc];
  v20 = [(AKServiceControllerImpl *)v6 initWithRequestProvider:v21];
  v8 = v20;
  v14 = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_1000E25E8;
  v18 = &unk_10031FC28;
  v19 = _objc_retain(v25);
  [(AKServiceControllerImpl *)v8 executeRequestWithCompletion:&v14];
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

- (id)_requestBodyForUpgradeRevokeContext:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9[0] = @"atxid";
  v7 = [location[0] transactionID];
  v10[0] = v7;
  v9[1] = @"client_id";
  v6 = [location[0] bundleID];
  v10[1] = v6;
  v9[2] = @"team_id";
  v4 = [location[0] teamID];
  v10[2] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];
  _objc_release(v4);
  _objc_release(v6);
  _objc_release(v7);
  objc_storeStrong(location, 0);

  return v5;
}

- (id)_authenticationContextForRevokingUpgrade
{
  v6[2] = self;
  v6[1] = a2;
  v6[0] = objc_alloc_init(AKAccountManager);
  v5 = [v6[0] altDSIDforPrimaryiCloudAccount];
  v4 = objc_alloc_init(AKAppleIDAuthenticationContext);
  [v4 setAltDSID:v5];
  v3 = _objc_retain(v4);
  objc_storeStrong(&v4, 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(v6, 0);

  return v3;
}

@end