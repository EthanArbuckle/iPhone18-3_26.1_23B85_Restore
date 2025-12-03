@interface AKAuthorizationRevokeUpgradeController
- (id)_authenticationContextForRevokingUpgrade;
- (id)_requestBodyForUpgradeRevokeContext:(id)context;
- (void)revokeUpgradeWithContext:(id)context client:(id)client completion:(id)completion;
@end

@implementation AKAuthorizationRevokeUpgradeController

- (void)revokeUpgradeWithContext:(id)context client:(id)client completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v26 = 0;
  objc_storeStrong(&v26, client);
  v25 = 0;
  objc_storeStrong(&v25, completion);
  _authenticationContextForRevokingUpgrade = [(AKAuthorizationRevokeUpgradeController *)selfCopy _authenticationContextForRevokingUpgrade];
  v23 = _AKLogSystem();
  v22 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    transactionID = [location[0] transactionID];
    teamID = [location[0] teamID];
    bundleID = [location[0] bundleID];
    sub_10004DCC8(v29, transactionID, teamID, bundleID);
    _os_log_debug_impl(&_mh_execute_header, v23, v22, "Sending request to revoke upgrade txID %@ for teamID/bundleID: %@/%@", v29, 0x20u);
    _objc_release(bundleID);
    _objc_release(teamID);
    _objc_release(transactionID);
  }

  objc_storeStrong(&v23, 0);
  v5 = [AKGrandSlamRequestProvider alloc];
  v21 = [(AKURLRequestProviderImpl *)v5 initWithContext:_authenticationContextForRevokingUpgrade urlBagKey:AKURLBagKeyDeleteAuthorizedApp];
  [(AKGrandSlamRequestProvider *)v21 setAuthenticatedRequest:1];
  [(AKURLRequestProviderImpl *)v21 setClient:v26];
  v7 = [(AKAuthorizationRevokeUpgradeController *)selfCopy _requestBodyForUpgradeRevokeContext:location[0]];
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
  objc_storeStrong(&_authenticationContextForRevokingUpgrade, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

- (id)_requestBodyForUpgradeRevokeContext:(id)context
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v9[0] = @"atxid";
  transactionID = [location[0] transactionID];
  v10[0] = transactionID;
  v9[1] = @"client_id";
  bundleID = [location[0] bundleID];
  v10[1] = bundleID;
  v9[2] = @"team_id";
  teamID = [location[0] teamID];
  v10[2] = teamID;
  v5 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];
  _objc_release(teamID);
  _objc_release(bundleID);
  _objc_release(transactionID);
  objc_storeStrong(location, 0);

  return v5;
}

- (id)_authenticationContextForRevokingUpgrade
{
  v6[2] = self;
  v6[1] = a2;
  v6[0] = objc_alloc_init(AKAccountManager);
  altDSIDforPrimaryiCloudAccount = [v6[0] altDSIDforPrimaryiCloudAccount];
  v4 = objc_alloc_init(AKAppleIDAuthenticationContext);
  [v4 setAltDSID:altDSIDforPrimaryiCloudAccount];
  v3 = _objc_retain(v4);
  objc_storeStrong(&v4, 0);
  objc_storeStrong(&altDSIDforPrimaryiCloudAccount, 0);
  objc_storeStrong(v6, 0);

  return v3;
}

@end