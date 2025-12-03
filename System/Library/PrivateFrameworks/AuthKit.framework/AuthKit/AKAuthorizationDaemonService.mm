@interface AKAuthorizationDaemonService
- (AKAuthorizationDaemonService)init;
- (AKAuthorizationDaemonService)initWithClient:(id)client;
- (AKAuthorizationDaemonServiceDelegate)delegate;
- (BOOL)_isPCSAccessForContext:(id)context;
- (BOOL)_shouldAllowPCSKeyAccessForContext:(id)context;
- (BOOL)_shouldEarlyReturnRequest:(id)request forCredentialState:(int64_t)state;
- (BOOL)_shouldStartSatoriVerificationForRequestContext:(id)context;
- (BOOL)_verifyEntitlementsForRequest:(id)request;
- (id)_accountDisplayNameWithPresentationContext:(id)context;
- (id)_clientForContext:(id)context;
- (id)_credentialStateController;
- (id)authorizationContextHelperWithContext:(id)context client:(id)client;
- (id)authorizationContextWithUserResponse:(id)response client:(id)client;
- (int64_t)_credentialStateForRequestContext:(id)context;
- (void)_completeAuthorizationWithServerResponse:(id)response userResponse:(id)userResponse client:(id)client completion:(id)completion;
- (void)_createAndPerformRequest:(id)request completion:(id)completion;
- (void)_determineUIAndPerformRequest:(id)request completion:(id)completion;
- (void)_extractWebSessionAuthorizationFromResponse:(id)response;
- (void)_fetchAuthContextWithUserResponse:(id)response client:(id)client completion:(id)completion;
- (void)_fetchCredentialsForAssociatedDomains:(id)domains completion:(id)completion;
- (void)_fetchSafariCredentialsWithCompletion:(id)completion;
- (void)_getPresentationContextForRequestContext:(id)context client:(id)client completion:(id)completion;
- (void)_initiateAuthorizationWithRequestContext:(id)context completion:(id)completion;
- (void)_initiateRapportAuthorizationWithRequestContext:(id)context completion:(id)completion;
- (void)_performRequest:(id)request completion:(id)completion;
- (void)_performSRPAuthorizationForUserResponse:(id)response client:(id)client completion:(id)completion;
- (void)_performSilentRequest:(id)request withCompletion:(id)completion;
- (void)_prepareRequestContext:(id)context forCredentialState:(int64_t)state;
- (void)_processUserResponse:(id)response client:(id)client completion:(id)completion;
- (void)_requestUserAuthorizationForContext:(id)context completion:(id)completion;
- (void)_safePerformSRPWithUserResponse:(id)response client:(id)client completion:(id)completion;
- (void)_sendPermissionRequestWithCompletion:(id)completion;
- (void)_setupLoginChoicesForPresentationContext:(id)context sharedAccounts:(id)accounts;
- (void)_validateAndProcessUserResponse:(id)response client:(id)client completion:(id)completion;
- (void)beginAuthorizationWithContext:(id)context completion:(id)completion;
- (void)cancelAuthorizationWithContext:(id)context completion:(id)completion;
- (void)continueAuthorizationWithContext:(id)context completion:(id)completion;
- (void)continueFetchingIconForRequestContext:(id)context completion:(id)completion;
- (void)dealloc;
- (void)establishConnectionWithNotificationHandlerEndpoint:(id)endpoint completion:(id)completion;
- (void)establishConnectionWithStateBroadcastHandlerEndpoint:(id)endpoint completion:(id)completion;
- (void)fetchAllowListDomainsForSharingKeyWithCompletion:(id)completion;
- (void)fetchAppleIDAuthorizationURLSetWithCompletion:(id)completion;
- (void)fetchAppleIDAuthorizeHTMLResponseTemplateWithCompletion:(id)completion;
- (void)fetchAppleOwnedDomainSetWithCompletion:(id)completion;
- (void)fetchNativeTakeoverURLSetWithCompletion:(id)completion;
- (void)fetchPrimaryApplicationInformationForWebServiceWithInfo:(id)info completion:(id)completion;
- (void)fetchSharedKeyInfoWithCompletion:(id)completion;
- (void)getCredentialStateForClientID:(id)d completion:(id)completion;
- (void)getCredentialStateForRequest:(id)request completion:(id)completion;
- (void)getPresentationContextForRequestContext:(id)context completion:(id)completion;
- (void)performAuthorization:(id)authorization completion:(id)completion;
- (void)performAuthorizationWithContext:(id)context withUserProvidedInformation:(id)information completion:(id)completion;
- (void)presentAuthorizationUIForContext:(id)context completion:(id)completion;
- (void)revokeUpgradeWithContext:(id)context completion:(id)completion;
- (void)startDiscoveryWithCompletion:(id)completion;
- (void)storeAuthorization:(id)authorization forProxiedRequest:(id)request completion:(id)completion;
@end

@implementation AKAuthorizationDaemonService

- (AKAuthorizationDaemonService)init
{
  selfCopy = self;
  [(AKAuthorizationDaemonService *)self doesNotRecognizeSelector:a2];
  objc_storeStrong(&selfCopy, 0);
  return 0;
}

- (AKAuthorizationDaemonService)initWithClient:(id)client
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v3 = selfCopy;
  selfCopy = 0;
  v22.receiver = v3;
  v22.super_class = AKAuthorizationDaemonService;
  selfCopy = [(AKAuthorizationDaemonService *)&v22 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_client, location[0]);
    v21 = 0;
    selfCopy->_authorizationRealUserLock._os_unfair_lock_opaque = 0;
    v4 = +[AKAuthorizationSessionManager sharedInstance];
    authSessionManager = selfCopy->_authSessionManager;
    selfCopy->_authSessionManager = v4;
    _objc_release(authSessionManager);
    v6 = +[AKAccountManager sharedInstance];
    accountManager = selfCopy->_accountManager;
    selfCopy->_accountManager = v6;
    _objc_release(accountManager);
    v8 = +[AKAuthorizationStoreManager sharedInstance];
    localAccountsStorageController = selfCopy->_localAccountsStorageController;
    selfCopy->_localAccountsStorageController = v8;
    _objc_release(localAccountsStorageController);
    v17 = [AKSharedAccountsStorageController alloc];
    v19 = objc_alloc_init(AAFKeychainManager);
    v18 = +[KCSharingGroupManager sharedInstance];
    v10 = [(AKSharedAccountsStorageController *)v17 initWithKeychainStorageController:v19 keychainGroupManager:?];
    sharedAccountsStorageController = selfCopy->_sharedAccountsStorageController;
    selfCopy->_sharedAccountsStorageController = v10;
    _objc_release(sharedAccountsStorageController);
    _objc_release(v18);
    _objc_release(v19);
    if ([location[0] authorizationRequiresRapport])
    {
      v12 = [AKAuthorizationRapportClient alloc];
      v13 = [(AKAuthorizationRapportClient *)v12 initWithClient:location[0]];
      rapportClient = selfCopy->_rapportClient;
      selfCopy->_rapportClient = v13;
      _objc_release(rapportClient);
    }

    v20 = _AKLogSiwa();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v25, location[0]);
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Daemon service initialized with client: %@", v25, 0xCu);
    }

    objc_storeStrong(&v20, 0);
  }

  v16 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v16;
}

- (void)dealloc
{
  selfCopy = self;
  oslog[1] = a2;
  oslog[0] = _AKLogSiwa();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v6, selfCopy);
    _os_log_debug_impl(&_mh_execute_header, oslog[0], type, "%@ deallocated", v6, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  v2.receiver = selfCopy;
  v2.super_class = AKAuthorizationDaemonService;
  [(AKAuthorizationDaemonService *)&v2 dealloc];
}

- (void)performAuthorization:(id)authorization completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, authorization);
  v32 = 0;
  objc_storeStrong(&v32, completion);
  v31 = _AKLogSiwa();
  v30 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v37, selfCopy->_client);
    _os_log_impl(&_mh_execute_header, v31, v30, "Client before perform authorization execution %@", v37, 0xCu);
  }

  objc_storeStrong(&v31, 0);
  _proxiedClientBundleID = [location[0] _proxiedClientBundleID];
  v28 = 0;
  isPermittedToProxyAuthorizationBundleIdentifier = 0;
  if (_proxiedClientBundleID)
  {
    _proxiedClientTeamID = [location[0] _proxiedClientTeamID];
    v28 = 1;
    isPermittedToProxyAuthorizationBundleIdentifier = 0;
    if (_proxiedClientTeamID)
    {
      isPermittedToProxyAuthorizationBundleIdentifier = [(AKClient *)selfCopy->_client isPermittedToProxyAuthorizationBundleIdentifier];
    }
  }

  if (v28)
  {
    _objc_release(_proxiedClientTeamID);
  }

  _objc_release(_proxiedClientBundleID);
  if (isPermittedToProxyAuthorizationBundleIdentifier)
  {
    v27 = _AKLogSiwa();
    v26 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      _proxiedClientBundleID2 = [location[0] _proxiedClientBundleID];
      sub_1000194D4(v36, _proxiedClientBundleID2);
      _os_log_impl(&_mh_execute_header, v27, v26, "Proxied bundle detected (%@), proxying...", v36, 0xCu);
      _objc_release(_proxiedClientBundleID2);
    }

    objc_storeStrong(&v27, 0);
    [location[0] set_shouldUseProxiedClientBundleIDForSRP:1];
    v10 = [AKOwnerProxyClient alloc];
    v9 = location[0];
    xpcConnection = [(AKClient *)selfCopy->_client xpcConnection];
    v4 = [(AKOwnerProxyClient *)v10 initWithCredentialRequest:v9 connection:?];
    client = selfCopy->_client;
    selfCopy->_client = &v4->super;
    _objc_release(client);
    _objc_release(xpcConnection);
  }

  v25 = _AKLogSiwa();
  v24 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v35, location[0]);
    _os_log_impl(&_mh_execute_header, v25, v24, "Requesting clearance to authorize with context %@...", v35, 0xCu);
  }

  objc_storeStrong(&v25, 0);
  authSessionManager = selfCopy->_authSessionManager;
  v6 = location[0];
  v7 = selfCopy->_client;
  v16 = _NSConcreteStackBlock;
  v17 = -1073741824;
  v18 = 0;
  v19 = sub_10014F980;
  v20 = &unk_100324A58;
  v23 = _objc_retain(v32);
  v21 = _objc_retain(location[0]);
  v22 = _objc_retain(selfCopy);
  [(AKAuthorizationSessionManager *)authSessionManager beginSessionWithContext:v6 client:v7 completion:&v16];
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(location, 0);
}

- (void)getCredentialStateForRequest:(id)request completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  v15 = _AKLogSiwa();
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    userID = [location[0] userID];
    sub_1000194D4(v19, userID);
    _os_log_impl(&_mh_execute_header, v15, v14, "Attempting to get credential state for User identifier: %@", v19, 0xCu);
    _objc_release(userID);
  }

  objc_storeStrong(&v15, 0);
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_100150878;
  v11 = &unk_100324A80;
  v12 = _objc_retain(v16);
  v13 = objc_retainBlock(&v7);
  _credentialStateController = [(AKAuthorizationDaemonService *)selfCopy _credentialStateController];
  [_credentialStateController getCredentialStateForRequest:location[0] completion:v13];
  objc_storeStrong(&_credentialStateController, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)getCredentialStateForClientID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v6 = 0;
  objc_storeStrong(&v6, completion);
  _credentialStateController = [(AKAuthorizationDaemonService *)selfCopy _credentialStateController];
  [_credentialStateController getCredentialStateForClientID:location[0] completion:v6];
  objc_storeStrong(&_credentialStateController, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)startDiscoveryWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  if ([(AKClient *)selfCopy->_client hasOwnerAccess])
  {
    v3 = [AKAuthorizationEndorserRapportDiscovery alloc];
    v4 = [(AKAuthorizationEndorserRapportDiscovery *)v3 initWithClient:selfCopy->_client];
    endorserRapportDiscovery = selfCopy->_endorserRapportDiscovery;
    selfCopy->_endorserRapportDiscovery = v4;
    _objc_release(endorserRapportDiscovery);
    v7 = selfCopy->_endorserRapportDiscovery;
    v14 = _NSConcreteStackBlock;
    v15 = -1073741824;
    v16 = 0;
    v17 = sub_100150C8C;
    v18 = &unk_100320EC8;
    v19 = _objc_retain(location[0]);
    [(AKAuthorizationEndorserRapportDiscovery *)v7 setDidDeactivateBlock:&v14];
    v13 = 0;
    v6 = selfCopy->_endorserRapportDiscovery;
    obj = 0;
    v8 = [(AKAuthorizationEndorserRapportDiscovery *)v6 activateWithError:&obj];
    objc_storeStrong(&v13, obj);
    v12 = v8;
    if ((v8 & 1) == 0)
    {
      (*(location[0] + 2))(location[0], 0, v13);
    }

    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v19, 0);
    v20 = 0;
  }

  else
  {
    v9 = location[0];
    v10 = [NSError ak_errorWithCode:-7026];
    v9[2](v9, 0);
    _objc_release(v10);
    v20 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)fetchAppleIDAuthorizationURLSetWithCompletion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = location[0];
  v5 = [AKURLBag bagForAltDSID:0];
  appleIDAuthorizationURLs = [v5 appleIDAuthorizationURLs];
  v3[2]();
  _objc_release(appleIDAuthorizationURLs);
  _objc_release(v5);
  objc_storeStrong(location, 0);
}

- (void)fetchNativeTakeoverURLSetWithCompletion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v15 = _AKLogNto();
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    log = v15;
    type = v14;
    sub_10001CEEC(v13);
    _os_log_impl(&_mh_execute_header, log, type, "Daemon is fetching native takeover urls", v13, 2u);
  }

  objc_storeStrong(&v15, 0);
  v4 = +[AKURLBag sharedBag];
  v3 = AKURLBagKeyAppleIDAuthorizationURLs;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_100150F38;
  v11 = &unk_100320828;
  v12 = _objc_retain(location[0]);
  [v4 configurationValueForKey:v3 fromCache:1 completion:&v7];
  _objc_release(v4);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchAppleOwnedDomainSetWithCompletion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v14 = _AKLogNto();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    log = v14;
    type = v13;
    sub_10001CEEC(v12);
    _os_log_impl(&_mh_execute_header, log, type, "Daemon is fetching apple owned domain", v12, 2u);
  }

  objc_storeStrong(&v14, 0);
  v5 = [AKURLBag bagForAltDSID:0];
  appleOwnedDomains = [v5 appleOwnedDomains];
  _objc_release(v5);
  v10 = _AKLogNto();
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v10;
    v4 = v9;
    sub_10001CEEC(v8);
    _os_log_impl(&_mh_execute_header, v3, v4, "Daemon is returning apple owned domain", v8, 2u);
  }

  objc_storeStrong(&v10, 0);
  (*(location[0] + 2))(location[0], appleOwnedDomains, 0);
  objc_storeStrong(&appleOwnedDomains, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchAllowListDomainsForSharingKeyWithCompletion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v14 = _AKLogSiwa();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    log = v14;
    type = v13;
    sub_10001CEEC(v12);
    _os_log_impl(&_mh_execute_header, log, type, "Daemon is fetching allow list domains for sharing key", v12, 2u);
  }

  objc_storeStrong(&v14, 0);
  v5 = [AKURLBag bagForAltDSID:0];
  allowListDomainsForSharingKey = [v5 allowListDomainsForSharingKey];
  _objc_release(v5);
  v10 = _AKLogSiwa();
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v10;
    v4 = v9;
    sub_10001CEEC(v8);
    _os_log_impl(&_mh_execute_header, v3, v4, "Daemon is returning allow list domains for sharing key", v8, 2u);
  }

  objc_storeStrong(&v10, 0);
  (*(location[0] + 2))(location[0], allowListDomainsForSharingKey, 0);
  objc_storeStrong(&allowListDomainsForSharingKey, 0);
  objc_storeStrong(location, 0);
}

- (void)revokeUpgradeWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v24 = 0;
  objc_storeStrong(&v24, completion);
  v17 = _NSConcreteStackBlock;
  v18 = -1073741824;
  v19 = 0;
  v20 = sub_100151B04;
  v21 = &unk_100321230;
  v22 = _objc_retain(v24);
  v23 = objc_retainBlock(&v17);
  if ([(AKClient *)selfCopy->_client hasInternalAccess])
  {
    v16 = objc_alloc_init(AKAuthorizationRevokeUpgradeController);
    v6 = v16;
    v4 = location[0];
    client = selfCopy->_client;
    v9 = _NSConcreteStackBlock;
    v10 = -1073741824;
    v11 = 0;
    v12 = sub_100151CB8;
    v13 = &unk_10031F838;
    v14 = _objc_retain(location[0]);
    v15 = _objc_retain(v23);
    [(AKAuthorizationRevokeUpgradeController *)v6 revokeUpgradeWithContext:v4 client:client completion:&v9];
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v16, 0);
  }

  else
  {
    v8 = [NSError ak_errorWithCode:-7026];
    (*(v23 + 2))(v23, 0, v8);
    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchAppleIDAuthorizeHTMLResponseTemplateWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  if ([(AKClient *)selfCopy->_client hasOwnerAccess])
  {
    v22 = _AKLogSiwa();
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      log = v22;
      type = v21;
      sub_10001CEEC(v20);
      _os_log_impl(&_mh_execute_header, log, type, "Starting to fetch appleIDAuthorizeHTMLResponseURL", v20, 2u);
    }

    objc_storeStrong(&v22, 0);
    v19 = objc_opt_new();
    altDSIDforPrimaryiCloudAccount = [(AKAccountManager *)selfCopy->_accountManager altDSIDforPrimaryiCloudAccount];
    [v19 setAltDSID:?];
    _objc_release(altDSIDforPrimaryiCloudAccount);
    v3 = [AKGrandSlamRequestProvider alloc];
    v18 = [(AKURLRequestProviderImpl *)v3 initWithContext:v19 urlBagKey:AKURLBagKeyAppleIDAuthorizeHTMLResponse shouldCacheResource:1];
    [(AKURLRequestProviderImpl *)v18 setClient:selfCopy->_client];
    [(AKGrandSlamRequestProvider *)v18 setAuthenticatedRequest:1];
    [(AKGrandSlamRequestProvider *)v18 setExpectedResponseType:2];
    v4 = [AKServiceControllerImpl alloc];
    v17 = [(AKServiceControllerImpl *)v4 initWithRequestProvider:v18];
    v6 = v17;
    v11 = _NSConcreteStackBlock;
    v12 = -1073741824;
    v13 = 0;
    v14 = sub_100152134;
    v15 = &unk_10031FC28;
    v16 = _objc_retain(location[0]);
    [(AKServiceControllerImpl *)v6 executeRequestWithCompletion:&v11];
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
  }

  else
  {
    v10 = [NSError ak_errorWithCode:-7026];
    (*(location[0] + 2))(location[0], 0, v10);
    oslog = _AKLogSiwa();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v25, v10);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Failed to fetch appleIDAuthorizeHTMLResponseURL %@", v25, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    objc_storeStrong(&v10, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)fetchPrimaryApplicationInformationForWebServiceWithInfo:(id)info completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, info);
  v22 = 0;
  objc_storeStrong(&v22, completion);
  if ([(AKClient *)selfCopy->_client hasOwnerAccess])
  {
    altDSIDforPrimaryiCloudAccount = [(AKAccountManager *)selfCopy->_accountManager altDSIDforPrimaryiCloudAccount];
    if (altDSIDforPrimaryiCloudAccount)
    {
      v4 = +[AKApplicationInformationController sharedController];
      [v4 fetchPrimaryApplicationInformationForAltDSID:altDSIDforPrimaryiCloudAccount appInformation:location[0] client:selfCopy->_client completion:v22];
      _objc_release(v4);
      v18 = 0;
    }

    else
    {
      v16 = _AKLogSiwa();
      v15 = 16;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v7 = v16;
        type = v15;
        sub_10001CEEC(v14);
        _os_log_error_impl(&_mh_execute_header, v7, type, "Cannot fetch primary bundleID for nil primary account", v14, 2u);
      }

      objc_storeStrong(&v16, 0);
      v5 = v22;
      v6 = [NSError ak_errorWithCode:-7025];
      v5[2](v5, 0);
      _objc_release(v6);
      v18 = 1;
    }

    objc_storeStrong(&altDSIDforPrimaryiCloudAccount, 0);
  }

  else
  {
    v21 = _AKLogSiwa();
    v20 = 16;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      log = v21;
      v12 = v20;
      sub_10001CEEC(v19);
      _os_log_error_impl(&_mh_execute_header, log, v12, "Owner access entitlement required but missing!", v19, 2u);
    }

    objc_storeStrong(&v21, 0);
    v9 = v22;
    v10 = [NSError ak_errorWithCode:-7026];
    v9[2](v9, 0);
    _objc_release(v10);
    v18 = 1;
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)continueFetchingIconForRequestContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v13 = 0;
  objc_storeStrong(&v13, completion);
  if ([(AKClient *)selfCopy->_client hasOwnerAccess])
  {
    v4 = +[AKAuthorizationIconManager sharedManager];
    [v4 continueFetchingIconWithRequestContext:location[0] completion:v13];
    _objc_release(v4);
  }

  else
  {
    v12 = _AKLogSiwa();
    v11 = 16;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      log = v12;
      type = v11;
      sub_10001CEEC(v10);
      _os_log_error_impl(&_mh_execute_header, log, type, "Owner entitlement needed to continue fetching icon, but calling process doesn't have it", v10, 2u);
    }

    objc_storeStrong(&v12, 0);
    v5 = v13;
    v6 = [NSError ak_errorWithCode:-7026];
    v5[2](v5, 0);
    _objc_release(v6);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)establishConnectionWithNotificationHandlerEndpoint:(id)endpoint completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, endpoint);
  v34 = 0;
  objc_storeStrong(&v34, completion);
  if ([(AKClient *)selfCopy->_client hasSiwaDefaultEntitlementAccess]|| [(AKClient *)selfCopy->_client hasInternalAccess])
  {
    primaryAuthKitAccount = [(AKAccountManager *)selfCopy->_accountManager primaryAuthKitAccount];
    if (([(AKAccountManager *)selfCopy->_accountManager userUnderAgeForAccount:primaryAuthKitAccount]& 1) == 0 || [(AKClient *)selfCopy->_client hasSiwaUnderageEntitlementAccess]|| [(AKClient *)selfCopy->_client hasInternalAccess])
    {
      if (location[0])
      {
        bundleID = [(AKClient *)selfCopy->_client bundleID];
        if (bundleID)
        {
          v24 = _AKLogSiwa();
          v23 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000194D4(v37, bundleID);
            _os_log_impl(&_mh_execute_header, v24, v23, "Establishing connection with notification center for client (%@).", v37, 0xCu);
          }

          objc_storeStrong(&v24, 0);
          v4 = [NSXPCConnection alloc];
          v22 = [v4 initWithListenerEndpoint:location[0]];
          v5 = v22;
          v6 = +[AKAuthorizationNotificationHandlerInterface XPCInterface];
          [v5 setRemoteObjectInterface:?];
          _objc_release(v6);
          v7 = +[AKAuthorizationConnectionManager sharedManager];
          [v7 addConnection:v22 forBundleID:bundleID];
          _objc_release(v7);
          remoteObjectProxy = [v22 remoteObjectProxy];
          [remoteObjectProxy activate];
          _objc_release(remoteObjectProxy);
          (*(v34 + 2))(v34, 1, 0);
          objc_storeStrong(&v22, 0);
          v30 = 0;
        }

        else
        {
          v9 = v34;
          v10 = [NSError ak_errorWithCode:-7074];
          v9[2](v9, 0);
          _objc_release(v10);
          v30 = 1;
        }

        objc_storeStrong(&bundleID, 0);
      }

      else
      {
        v11 = v34;
        v12 = [NSError ak_errorWithCode:-7056];
        v11[2](v11, 0);
        _objc_release(v12);
        v30 = 1;
      }
    }

    else
    {
      v28 = _AKLogSiwa();
      v27 = 16;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        log = v28;
        type = v27;
        sub_10001CEEC(v26);
        _os_log_error_impl(&_mh_execute_header, log, type, "Unable to establishing connection with notification center, client is missing required entitlement!", v26, 2u);
      }

      objc_storeStrong(&v28, 0);
      v13 = v34;
      v14 = [NSError ak_errorWithCode:-7026];
      v13[2](v13, 0);
      _objc_release(v14);
      v30 = 1;
    }

    objc_storeStrong(&primaryAuthKitAccount, 0);
  }

  else
  {
    v33 = _AKLogSiwa();
    v32 = 16;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v19 = v33;
      v20 = v32;
      sub_10001CEEC(v31);
      _os_log_error_impl(&_mh_execute_header, v19, v20, "Unable to establishing connection with notification center, client is missing required entitlement!", v31, 2u);
    }

    objc_storeStrong(&v33, 0);
    v17 = v34;
    v18 = [NSError ak_errorWithCode:-7026];
    v17[2](v17, 0);
    _objc_release(v18);
    v30 = 1;
  }

  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
}

- (void)establishConnectionWithStateBroadcastHandlerEndpoint:(id)endpoint completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, endpoint);
  v21 = 0;
  objc_storeStrong(&v21, completion);
  if ([(AKClient *)selfCopy->_client hasPrivateAccess])
  {
    if (location[0])
    {
      v19 = _AKLogSiwa();
      v18 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        bundleID = [(AKClient *)selfCopy->_client bundleID];
        sub_1000194D4(v24, bundleID);
        _os_log_impl(&_mh_execute_header, v19, v18, "Establishing connection with state broadcast handler for client (%@).", v24, 0xCu);
        _objc_release(bundleID);
      }

      objc_storeStrong(&v19, 0);
      v4 = [NSXPCConnection alloc];
      v17 = [v4 initWithListenerEndpoint:location[0]];
      v5 = v17;
      v6 = +[AKAuthorizationStateBroadcastHandlerInterface XPCInterface];
      [v5 setRemoteObjectInterface:?];
      _objc_release(v6);
      v9 = +[AKAuthorizationConnectionManager sharedManager];
      v7 = v17;
      bundleID2 = [(AKClient *)selfCopy->_client bundleID];
      [v9 addConnection:v7 forBundleID:?];
      _objc_release(bundleID2);
      _objc_release(v9);
      remoteObjectProxy = [v17 remoteObjectProxy];
      [remoteObjectProxy activate];
      _objc_release(remoteObjectProxy);
      (*(v21 + 2))(v21, 1, 0);
      objc_storeStrong(&v17, 0);
      v20 = 0;
    }

    else
    {
      v12 = v21;
      v13 = [NSError ak_errorWithCode:-7056];
      v12[2](v12, 0);
      _objc_release(v13);
      v20 = 1;
    }
  }

  else
  {
    v14 = v21;
    v15 = [NSError ak_errorWithCode:-7026];
    v14[2](v14, 0);
    _objc_release(v15);
    v20 = 1;
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

- (void)getPresentationContextForRequestContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v33 = 0;
  objc_storeStrong(&v33, completion);
  if ([(AKClient *)selfCopy->_client hasSiwaAccountListAccess]|| [(AKClient *)selfCopy->_client hasOwnerAccess])
  {
    authorizationRequest = [location[0] authorizationRequest];
    v31 = 0;
    v29 = 0;
    v16 = 0;
    if (authorizationRequest)
    {
      authorizationRequest2 = [location[0] authorizationRequest];
      v31 = 1;
      authkitAccount = [authorizationRequest2 authkitAccount];
      v29 = 1;
      v16 = authkitAccount == 0;
    }

    if (v29)
    {
      _objc_release(authkitAccount);
    }

    if (v31)
    {
      _objc_release(authorizationRequest2);
    }

    _objc_release(authorizationRequest);
    if (v16)
    {
      v28 = _AKLogSiwa();
      v27 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        log = v28;
        type = v27;
        sub_10001CEEC(v26);
        _os_log_impl(&_mh_execute_header, log, type, "Handling request with missing account, default to primary AuthKit account if not data separated account", v26, 2u);
      }

      objc_storeStrong(&v28, 0);
      v12 = +[AKAccountManager sharedInstance];
      authKitAccountRequestingAuthorization = [(AKAccountManager *)v12 authKitAccountRequestingAuthorization];
      authorizationRequest3 = [location[0] authorizationRequest];
      [authorizationRequest3 setAuthkitAccount:authKitAccountRequestingAuthorization];
      _objc_release(authorizationRequest3);
      _objc_release(authKitAccountRequestingAuthorization);
      _objc_release(v12);
    }

    if ([(AKClient *)selfCopy->_client hasSiwaAccountListAccess])
    {
      v25 = [(AKAuthorizationDaemonService *)selfCopy _credentialStateForRequestContext:location[0]];
      [(AKAuthorizationDaemonService *)selfCopy _prepareRequestContext:location[0] forCredentialState:v25];
    }

    v24 = _AKLogSiwa();
    v23 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v24;
      v9 = v23;
      sub_10001CEEC(v22);
      _os_log_impl(&_mh_execute_header, v8, v9, "Client owner detected, checking for proxied bundle", v22, 2u);
    }

    objc_storeStrong(&v24, 0);
    v21 = [(AKAuthorizationDaemonService *)selfCopy _clientForContext:location[0]];
    [(AKAuthorizationDaemonService *)selfCopy _getPresentationContextForRequestContext:location[0] client:v21 completion:v33];
    objc_storeStrong(&v21, 0);
  }

  else
  {
    v20 = _AKLogSiwa();
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v20;
      v7 = v19;
      sub_10001CEEC(v18);
      _os_log_impl(&_mh_execute_header, v6, v7, "Client doesn't have owner or entitlement access, operation not permitted", v18, 2u);
    }

    objc_storeStrong(&v20, 0);
    v4 = v33;
    v5 = [NSError ak_errorWithCode:-7026];
    v4[2](v4, 0);
    _objc_release(v5);
  }

  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchSharedKeyInfoWithCompletion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v24 = _AKLogSiwa();
  v23 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    log = v24;
    type = v23;
    sub_10001CEEC(v22);
    _os_log_impl(&_mh_execute_header, log, type, "Daemon is fetching shared key info", v22, 2u);
  }

  objc_storeStrong(&v24, 0);
  v21 = objc_opt_new();
  v8 = +[AKSecurePakeManager sharedManager];
  createRandomSharedKey = [(AKSecurePakeManager *)v8 createRandomSharedKey];
  _objc_release(v8);
  if (createRandomSharedKey)
  {
    [v21 setObject:createRandomSharedKey forKeyedSubscript:@"sharing_key"];
  }

  v19 = 0;
  v18 = objc_opt_new();
  v16 = v19;
  v7 = [v18 lastKnownMID:&v16];
  objc_storeStrong(&v19, v16);
  v17 = v7;
  if (v7)
  {
    [v21 setObject:v17 forKeyedSubscript:@"mid"];
  }

  else
  {
    v15 = _AKLogSiwa();
    v14 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_1000831E0(v26, v19);
      _os_log_debug_impl(&_mh_execute_header, v15, v14, "Failed to fetch MID with error - %{private}@", v26, 0xCu);
    }

    objc_storeStrong(&v15, 0);
  }

  oslog = _AKLogSiwa();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = oslog;
    v6 = v12;
    sub_10001CEEC(v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "Daemon is returning shared key info", v11, 2u);
  }

  objc_storeStrong(&oslog, 0);
  if (location[0])
  {
    v3 = location[0];
    v4 = [v21 copy];
    v3[2]();
    _objc_release(v4);
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&createRandomSharedKey, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

- (id)_credentialStateController
{
  v3 = +[AKFeatureManager sharedManager];
  isSiwaCredentialSharingEnabled = [v3 isSiwaCredentialSharingEnabled];
  _objc_release(v3);
  if (isSiwaCredentialSharingEnabled)
  {
    v6 = [[AKAuthorizationCredentialStateController alloc] initWithClient:self->_client accountManager:self->_accountManager localAccountsStorageController:self->_localAccountsStorageController sharedAccountsStorageController:self->_sharedAccountsStorageController];
  }

  else
  {
    v6 = [[AKAuthorizationCredentialStateController alloc] initWithClient:self->_client];
  }

  return v6;
}

- (id)_clientForContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v13 = [(AKAuthorizationSessionManager *)selfCopy->_authSessionManager clientForContext:location[0]];
  if (v13)
  {
    v12 = _AKLogSiwa();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v17, v13);
      _os_log_impl(&_mh_execute_header, v12, v11, "Existing client found from the session manager and using it %@", v17, 0xCu);
    }

    objc_storeStrong(&v12, 0);
    v16 = _objc_retain(v13);
    v10 = 1;
  }

  else
  {
    oslog = _AKLogSiwa();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = oslog;
      v6 = v8;
      sub_10001CEEC(v7);
      _os_log_impl(&_mh_execute_header, v5, v6, "Using the client initiated with the daemon service's connection", v7, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v16 = _objc_retain(selfCopy->_client);
    v10 = 1;
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  v3 = v16;

  return v3;
}

- (void)_createAndPerformRequest:(id)request completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v92 = 0;
  objc_storeStrong(&v92, completion);
  authorizationRequest = [location[0] authorizationRequest];
  v90 = 0;
  v88 = 0;
  v42 = 0;
  if (authorizationRequest)
  {
    authorizationRequest2 = [location[0] authorizationRequest];
    v90 = 1;
    authkitAccount = [authorizationRequest2 authkitAccount];
    v88 = 1;
    v42 = authkitAccount == 0;
  }

  if (v88)
  {
    _objc_release(authkitAccount);
  }

  if (v90)
  {
    _objc_release(authorizationRequest2);
  }

  _objc_release(authorizationRequest);
  if (v42)
  {
    v87 = _AKLogSiwa();
    v86 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
    {
      log = v87;
      type = v86;
      sub_10001CEEC(v85);
      _os_log_impl(&_mh_execute_header, log, type, "Handling request with missing account, default to primary AuthKit account if not data separated account", v85, 2u);
    }

    objc_storeStrong(&v87, 0);
    v37 = +[AKAccountManager sharedInstance];
    authKitAccountRequestingAuthorization = [(AKAccountManager *)v37 authKitAccountRequestingAuthorization];
    authorizationRequest3 = [location[0] authorizationRequest];
    [authorizationRequest3 setAuthkitAccount:authKitAccountRequestingAuthorization];
    _objc_release(authorizationRequest3);
    _objc_release(authKitAccountRequestingAuthorization);
    _objc_release(v37);
  }

  v84 = [(AKAuthorizationDaemonService *)selfCopy _verifyEntitlementsForRequest:location[0]];
  if ((v84 & 1) == 1)
  {
    authorizationRequest4 = [location[0] authorizationRequest];
    _objc_release(authorizationRequest4);
    if (!authorizationRequest4)
    {
      goto LABEL_36;
    }

    v82 = _objc_retain(location[0]);
    if ([(AKClient *)selfCopy->_client authorizationClientProvidesUI])
    {
      objc_storeStrong(&v82, selfCopy->_originalRequestContext);
    }

    v81 = [(AKAuthorizationDaemonService *)selfCopy _credentialStateForRequestContext:v82];
    accountManager = selfCopy->_accountManager;
    authorizationRequest5 = [location[0] authorizationRequest];
    authkitAccount2 = [authorizationRequest5 authkitAccount];
    v31 = 0;
    if (([(AKAccountManager *)accountManager userUnderAgeForAccount:?]& 1) != 0)
    {
      v31 = v81 != 1;
    }

    _objc_release(authkitAccount2);
    _objc_release(authorizationRequest5);
    if (v31)
    {
      v26 = v92;
      v27 = [NSError ak_errorWithCode:-7076];
      v26[2](v26, 0);
      _objc_release(v27);
      v83 = 1;
    }

    else if ([(AKAuthorizationDaemonService *)selfCopy _shouldEarlyReturnRequest:v82 forCredentialState:v81])
    {
      v80 = _AKLogSiwa();
      v79 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v80;
        v25 = v79;
        sub_10001CEEC(v78);
        _os_log_impl(&_mh_execute_header, v24, v25, "Early returning the request as it meets preferImmediatelyAvailableCredentials criteria.", v78, 2u);
      }

      objc_storeStrong(&v80, 0);
      v22 = v92;
      v23 = [NSError ak_errorWithCode:-7089];
      v22[2](v22, 0);
      _objc_release(v23);
      v83 = 1;
    }

    else
    {
      [(AKAuthorizationDaemonService *)selfCopy _prepareRequestContext:v82 forCredentialState:v81];
      authorizationRequest6 = [v82 authorizationRequest];
      v76 = 0;
      v74 = 0;
      v21 = 0;
      if ([authorizationRequest6 _isSilentAppTransfer])
      {
        authorizationRequest7 = [v82 authorizationRequest];
        v76 = 1;
        userIdentifier = [authorizationRequest7 userIdentifier];
        v74 = 1;
        v21 = userIdentifier != 0;
      }

      if (v74)
      {
        _objc_release(userIdentifier);
      }

      if (v76)
      {
        _objc_release(authorizationRequest7);
      }

      _objc_release(authorizationRequest6);
      if (v21)
      {
        v73 = _AKLogSiwa();
        v72 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
        {
          v18 = v73;
          v19 = v72;
          sub_10001CEEC(v71);
          _os_log_impl(&_mh_execute_header, v18, v19, "Will attempt to perform silent authorization using provided user ID.", v71, 2u);
        }

        objc_storeStrong(&v73, 0);
        [location[0] set_shouldSkipAuthorizationUI:1];
      }

      v83 = 0;
    }

    objc_storeStrong(&v82, 0);
    if (!v83)
    {
LABEL_36:
      v67[0] = 0;
      v67[1] = v67;
      v68 = 0x20000000;
      v69 = 32;
      v70 = 0;
      v65 = 0;
      authorizationRequest8 = [location[0] authorizationRequest];
      v17 = 0;
      if (authorizationRequest8)
      {
        passwordRequest = [location[0] passwordRequest];
        v65 = 1;
        v17 = passwordRequest == 0;
      }

      if (v65)
      {
        _objc_release(passwordRequest);
      }

      _objc_release(authorizationRequest8);
      if (v17)
      {
        if ([(AKAuthorizationDaemonService *)selfCopy _shouldStartSatoriVerificationForRequestContext:location[0]])
        {
          oslog = _AKLogSiwa();
          v63 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            v14 = oslog;
            v15 = v63;
            sub_10001CEEC(v62);
            _os_log_impl(&_mh_execute_header, v14, v15, "Attempting to get real user info...", v62, 2u);
          }

          objc_storeStrong(&oslog, 0);
          v13 = [AKCASatoriReporter alloc];
          requestIdentifier = [location[0] requestIdentifier];
          uUIDString = [requestIdentifier UUIDString];
          v61 = [(AKCASatoriReporter *)v13 initWithRequestID:?];
          _objc_release(uUIDString);
          _objc_release(requestIdentifier);
          v10 = [AKSatoriController alloc];
          v60 = [(AKSatoriController *)v10 initWithClient:selfCopy->_client];
          [v60 setAnalyticsReport:v61];
          v9 = v60;
          authorizationRequest9 = [location[0] authorizationRequest];
          v53 = _NSConcreteStackBlock;
          v54 = -1073741824;
          v55 = 0;
          v56 = sub_100154944;
          v57 = &unk_100324AF8;
          v58 = _objc_retain(selfCopy);
          v59[1] = v67;
          v59[0] = _objc_retain(v61);
          [v9 fetchRealUserLikelihoodForRequest:authorizationRequest9 withCompletionHandler:&v53];
          _objc_release(authorizationRequest9);
          objc_storeStrong(v59, 0);
          objc_storeStrong(&v58, 0);
          objc_storeStrong(&v60, 0);
          objc_storeStrong(&v61, 0);
        }

        else
        {
          v52 = _AKLogSiwa();
          v51 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            v6 = v52;
            v7 = v51;
            sub_10001CEEC(v50);
            _os_log_impl(&_mh_execute_header, v6, v7, "Application has been previously authorized, or originated from web or keychain upgrade to SIWA. Skipping satori verification", v50, 2u);
          }

          objc_storeStrong(&v52, 0);
        }
      }

      v5 = selfCopy;
      v4 = location[0];
      v43 = _NSConcreteStackBlock;
      v44 = -1073741824;
      v45 = 0;
      v46 = sub_100154BC8;
      v47 = &unk_100324B48;
      v48 = _objc_retain(selfCopy);
      v49[1] = v67;
      v49[0] = _objc_retain(v92);
      [(AKAuthorizationDaemonService *)v5 _determineUIAndPerformRequest:v4 completion:&v43];
      objc_storeStrong(v49, 0);
      objc_storeStrong(&v48, 0);
      _Block_object_dispose(v67, 8);
      v83 = 0;
    }
  }

  else
  {
    v33 = v92;
    v34 = [NSError ak_errorWithCode:-7026];
    v33[2](v33, 0);
    _objc_release(v34);
    v83 = 1;
  }

  objc_storeStrong(&v92, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_shouldEarlyReturnRequest:(id)request forCredentialState:(int64_t)state
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v9 = ([location[0] requestOptions] & 1) != 0;
  passwordRequest = [location[0] passwordRequest];
  v7 = passwordRequest == 0;
  _objc_release(passwordRequest);
  v8 = 0;
  if (v9)
  {
    v8 = 0;
    if (v7)
    {
      v8 = state != 1;
    }
  }

  objc_storeStrong(location, 0);
  return v8;
}

- (void)_determineUIAndPerformRequest:(id)request completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v10 = 0;
  objc_storeStrong(&v10, completion);
  if ([location[0] _shouldSkipAuthorizationUI])
  {
    v9 = _AKLogSiwa();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      log = v9;
      type = v8;
      sub_10001CEEC(v7);
      _os_log_impl(&_mh_execute_header, log, type, "Requested to skip auth UI...", v7, 2u);
    }

    objc_storeStrong(&v9, 0);
    [(AKAuthorizationDaemonService *)selfCopy _performSilentRequest:location[0] withCompletion:v10];
  }

  else
  {
    [(AKAuthorizationDaemonService *)selfCopy _performRequest:location[0] completion:v10];
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)_performRequest:(id)request completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  passwordRequest = [location[0] passwordRequest];
  v8 = passwordRequest != 0;
  _objc_release(passwordRequest);
  v15 = v8;
  v14 = 1;
  v9 = 1;
  if (([location[0] _shouldForceUI] & 1) == 0)
  {
    v9 = 1;
    if (![(AKClient *)selfCopy->_client authorizationRequiresRapport])
    {
      v9 = 1;
      if (!v15)
      {
        v9 = v14;
      }
    }
  }

  v13 = v9;
  v12 = _AKLogSiwa();
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    log = v12;
    type = v11;
    sub_10001CEEC(v10);
    _os_log_impl(&_mh_execute_header, log, type, "Requesting interactive authorization...", v10, 2u);
  }

  objc_storeStrong(&v12, 0);
  [(AKAuthorizationDaemonService *)selfCopy _initiateAuthorizationWithRequestContext:location[0] completion:v16];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)_performSilentRequest:(id)request withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v41 = 0;
  objc_storeStrong(&v41, completion);
  v40 = 0;
  v38 = 0;
  v23 = [AKAuthorizationValidator canPerformCredentialRequest:location[0] error:&v38];
  objc_storeStrong(&v40, v38);
  v39 = v23;
  if (v23)
  {
    authorizationRequest = [location[0] authorizationRequest];
    if (authorizationRequest)
    {
      authkitAccount = [authorizationRequest authkitAccount];
      _objc_release(authkitAccount);
      if (authkitAccount)
      {
        v32 = _AKLogSiwa();
        v31 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v32;
          v16 = v31;
          sub_10001CEEC(v30);
          _os_log_impl(&_mh_execute_header, v15, v16, "Attempting safe SRP for first object...", v30, 2u);
        }

        objc_storeStrong(&v32, 0);
        v29 = objc_opt_new();
        [v29 setSelectedRequest:authorizationRequest];
        v11 = objc_alloc_init(AKAuthorizationScopesUserSelection);
        [v29 setUserSelection:?];
        _objc_release(v11);
        _shouldForcePrivateEmail = [location[0] _shouldForcePrivateEmail];
        userSelection = [v29 userSelection];
        [userSelection setMakePrivateEmail:_shouldForcePrivateEmail];
        _objc_release(userSelection);
        v27 = 0;
        v14 = 0;
        if ([authorizationRequest _isAuthorizingUsingSharedAccount] == 1)
        {
          _sharedAccount = [authorizationRequest _sharedAccount];
          v27 = 1;
          v14 = _sharedAccount != 0;
        }

        if (v27)
        {
          _objc_release(_sharedAccount);
        }

        if (v14)
        {
          v8 = [AKAuthorizationSharedAccountLoginChoice alloc];
          _sharedAccount2 = [authorizationRequest _sharedAccount];
          v9 = [v8 initWithSignInWithAppleAccount:?];
          [v29 setLoginChoice:?];
          _objc_release(v9);
          _objc_release(_sharedAccount2);
        }

        [(AKAuthorizationDaemonService *)selfCopy _safePerformSRPWithUserResponse:v29 client:selfCopy->_client completion:v41];
        objc_storeStrong(&v29, 0);
      }

      else
      {
        v17 = v41;
        v18 = [NSError ak_errorWithCode:-7025];
        v17[2](v17, 0);
        _objc_release(v18);
      }
    }

    else
    {
      v26 = _AKLogSiwa();
      v25 = 16;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v6 = v26;
        v7 = v25;
        sub_10001CEEC(v24);
        _os_log_error_impl(&_mh_execute_header, v6, v7, "Silent auth requested with an invalid context... bailing", v24, 2u);
      }

      objc_storeStrong(&v26, 0);
      v4 = v41;
      v5 = [NSError ak_errorWithCode:-7013];
      v4[2](v4, 0);
      _objc_release(v5);
    }

    objc_storeStrong(&authorizationRequest, 0);
    v34 = 0;
  }

  else
  {
    v37 = _AKLogSiwa();
    v36 = 16;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      log = v37;
      type = v36;
      sub_10001CEEC(v35);
      _os_log_error_impl(&_mh_execute_header, log, type, "Silent Request is not eligible for authorization", v35, 2u);
    }

    objc_storeStrong(&v37, 0);
    (*(v41 + 2))(v41, 0, v40);
    v34 = 1;
  }

  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_verifyEntitlementsForRequest:(id)request
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  hasOwnerAccess = [(AKClient *)selfCopy->_client hasOwnerAccess];
  hasInternalAccess = [(AKClient *)selfCopy->_client hasInternalAccess];
  hasPrivateAccess = [(AKClient *)selfCopy->_client hasPrivateAccess];
  accountManager = selfCopy->_accountManager;
  authorizationRequest = [location[0] authorizationRequest];
  authkitAccount = [authorizationRequest authkitAccount];
  v29 = [(AKAccountManager *)accountManager userUnderAgeForAccount:?];
  _objc_release(authkitAccount);
  _objc_release(authorizationRequest);
  v53 = v29;
  primaryiCloudAccountHasPendingDOB = 0;
  primaryiCloudAccountHasPendingDOB = [(AKAccountManager *)selfCopy->_accountManager primaryiCloudAccountHasPendingDOB];
  passwordRequest = [location[0] passwordRequest];
  v49 = 0;
  v31 = 0;
  if (passwordRequest)
  {
    authorizationRequest2 = [location[0] authorizationRequest];
    v49 = 1;
    v31 = authorizationRequest2 == 0;
  }

  if (v49)
  {
    _objc_release(authorizationRequest2);
  }

  _objc_release(passwordRequest);
  v51 = v31;
  v48 = _AKLogSiwa();
  v47 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    if (v51)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    sub_1000194D4(v63, v3);
    _os_log_impl(&_mh_execute_header, v48, v47, "Requesting password only: %@", v63, 0xCu);
  }

  objc_storeStrong(&v48, 0);
  if (hasOwnerAccess)
  {
    v46 = _AKLogSiwa();
    v45 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v46;
      v25 = v45;
      sub_10001CEEC(v44);
      _os_log_impl(&_mh_execute_header, v24, v25, "Owner detected!", v44, 2u);
    }

    objc_storeStrong(&v46, 0);
    v59 = 1;
    v43 = 1;
  }

  else if ([location[0] _shouldSkipBiometrics] & 1) != 0 || (objc_msgSend(location[0], "_shouldSkipAuthorizationUI") & 1) != 0 || (objc_msgSend(location[0], "_shouldForceUI"))
  {
    v42 = _AKLogSiwa();
    v41 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [NSNumber numberWithBool:hasInternalAccess & 1];
      sub_1000194D4(v62, v23);
      _os_log_impl(&_mh_execute_header, v42, v41, "Internal request made by internal client? %@", v62, 0xCu);
      _objc_release(v23);
    }

    objc_storeStrong(&v42, 0);
    v59 = hasInternalAccess & 1;
    v43 = 1;
  }

  else
  {
    v39 = 0;
    v37 = 0;
    v35 = 0;
    v22 = 1;
    if ([location[0] _isFirstPartyLogin] != 1)
    {
      _iconData = [location[0] _iconData];
      v39 = 1;
      v22 = 1;
      if (!_iconData)
      {
        _iconName = [location[0] _iconName];
        v37 = 1;
        v22 = 1;
        if (!_iconName)
        {
          _upgradeContext = [location[0] _upgradeContext];
          v35 = 1;
          v22 = _upgradeContext != 0;
        }
      }
    }

    if (v35)
    {
      _objc_release(_upgradeContext);
    }

    if (v37)
    {
      _objc_release(_iconName);
    }

    if (v39)
    {
      _objc_release(_iconData);
    }

    if (v22)
    {
      v21 = 1;
      if ((hasInternalAccess & 1) == 0)
      {
        v21 = hasPrivateAccess;
      }

      v59 = v21 & 1;
      v43 = 1;
    }

    else
    {
      oslog = _AKLogSiwa();
      v33 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        if ([(AKClient *)selfCopy->_client hasSiwaDefaultEntitlementAccess])
        {
          v4 = @"YES";
        }

        else
        {
          v4 = @"NO";
        }

        if (v4)
        {
          v5 = @"has";
        }

        else
        {
          v5 = @"is missing";
        }

        sub_1000194D4(v61, v5);
        _os_log_impl(&_mh_execute_header, oslog, v33, "Client %@ default access level in SiwA entitlement", v61, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v32 = _AKLogSiwa();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        if ([(AKClient *)selfCopy->_client hasSiwaUnderageEntitlementAccess])
        {
          v6 = @"YES";
        }

        else
        {
          v6 = @"NO";
        }

        if (v6)
        {
          v7 = @"has";
        }

        else
        {
          v7 = @"is missing";
        }

        sub_1000194D4(v60, v7);
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Client %@ underage-users access level in SiwA entitlement", v60, 0xCu);
      }

      objc_storeStrong(&v32, 0);
      if ([(AKClient *)selfCopy->_client hasSiwaUnderageEntitlementAccess]|| [(AKClient *)selfCopy->_client hasSiwaDefaultEntitlementAccess])
      {
        v18 = +[AKFeatureManager sharedManager];
        isTiburonU13Enabled = [v18 isTiburonU13Enabled];
        _objc_release(v18);
        hasSiwaUnderageEntitlementAccess = 0;
        if (v53)
        {
          hasSiwaUnderageEntitlementAccess = 0;
          if (isTiburonU13Enabled)
          {
            hasSiwaUnderageEntitlementAccess = [(AKClient *)selfCopy->_client hasSiwaUnderageEntitlementAccess];
          }
        }

        v13 = selfCopy->_accountManager;
        authorizationRequest3 = [location[0] authorizationRequest];
        authkitAccount2 = [authorizationRequest3 authkitAccount];
        v16 = [(AKAccountManager *)v13 authorizationUsedForAccount:?];
        _objc_release(authkitAccount2);
        _objc_release(authorizationRequest3);
        v17 = 0;
        if (primaryiCloudAccountHasPendingDOB)
        {
          v17 = v16;
        }

        v12 = 0;
        if ((v53 & 1) == 0 || (v12 = v16, hasSiwaDefaultEntitlementAccess = 0, (isTiburonU13Enabled & 1) == 0))
        {
          hasSiwaDefaultEntitlementAccess = [(AKClient *)selfCopy->_client hasSiwaDefaultEntitlementAccess];
        }

        v10 = 1;
        if ((hasSiwaUnderageEntitlementAccess & 1) == 0)
        {
          v10 = 1;
          if ((v17 & 1) == 0)
          {
            v10 = 1;
            if ((v12 & 1) == 0)
            {
              v10 = hasSiwaDefaultEntitlementAccess & 1;
            }
          }
        }

        v59 = v10;
        v43 = 1;
      }

      else
      {
        v9 = 1;
        if ((hasInternalAccess & 1) == 0)
        {
          v9 = 1;
          if ((hasPrivateAccess & 1) == 0)
          {
            v9 = v51;
          }
        }

        v59 = v9 & 1;
        v43 = 1;
      }
    }
  }

  objc_storeStrong(location, 0);
  return v59 & 1;
}

- (void)_initiateAuthorizationWithRequestContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  v8 = +[AKAuthorizationIconManager sharedManager];
  [v8 startFetchingIconWithRequestContext:location[0]];
  _objc_release(v8);
  if ([(AKClient *)selfCopy->_client authorizationRequiresRapport])
  {
    [(AKAuthorizationDaemonService *)selfCopy _initiateRapportAuthorizationWithRequestContext:location[0] completion:v16];
  }

  else if ([(AKClient *)selfCopy->_client authorizationClientProvidesUI])
  {
    [(AKAuthorizationDaemonService *)selfCopy presentAuthorizationUIForContext:selfCopy->_originalRequestContext completion:v16];
  }

  else
  {
    v6 = selfCopy;
    v4 = location[0];
    client = selfCopy->_client;
    v9 = _NSConcreteStackBlock;
    v10 = -1073741824;
    v11 = 0;
    v12 = sub_10015645C;
    v13 = &unk_100324B70;
    v14 = _objc_retain(selfCopy);
    v15 = _objc_retain(v16);
    [(AKAuthorizationDaemonService *)v6 _getPresentationContextForRequestContext:v4 client:client completion:&v9];
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)_initiateRapportAuthorizationWithRequestContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v17 = 0;
  objc_storeStrong(&v17, completion);
  v16 = _AKLogSiwa();
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v20, location[0]);
    _os_log_impl(&_mh_execute_header, v16, v15, "Rapport authorization is required for request %@", v20, 0xCu);
  }

  objc_storeStrong(&v16, 0);
  v14 = 0;
  v12 = 0;
  v7 = [AKAuthorizationValidator canPerformCredentialRequest:location[0] error:&v12];
  objc_storeStrong(&v14, v12);
  v13 = v7;
  if (v7)
  {
    authorizationRequest = [location[0] authorizationRequest];
    [authorizationRequest setAuthkitAccount:0];
    _objc_release(authorizationRequest);
    [(AKAuthorizationRapportClient *)selfCopy->_rapportClient performAuthorization:location[0] completion:v17];
  }

  else
  {
    v11 = _AKLogSiwa();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v11;
      v5 = v10;
      sub_10001CEEC(v9);
      _os_log_impl(&_mh_execute_header, v4, v5, "Rapport request is not eligible for authorization", v9, 2u);
    }

    objc_storeStrong(&v11, 0);
    (*(v17 + 2))(v17, 0, v14);
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_shouldStartSatoriVerificationForRequestContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v5 = 0;
  if ([(AKAuthorizationDaemonService *)selfCopy _credentialStateForRequestContext:location[0]]== 2)
  {
    v4 = 0;
    if (![location[0] _isWebLogin])
    {
      v4 = [location[0] _isEligibleForUpgradeFromPassword] == 0;
    }

    v5 = v4;
  }

  objc_storeStrong(location, 0);
  return v5;
}

- (void)storeAuthorization:(id)authorization forProxiedRequest:(id)request completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, authorization);
  v33 = 0;
  objc_storeStrong(&v33, request);
  v32 = 0;
  objc_storeStrong(&v32, completion);
  if ([(AKClient *)selfCopy->_client hasPrivateAccess])
  {
    _proxiedClientBundleID = [v33 _proxiedClientBundleID];
    _objc_release(_proxiedClientBundleID);
    if (_proxiedClientBundleID)
    {
      v24 = _AKLogSiwa();
      v23 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000194D4(v36, v33);
        _os_log_impl(&_mh_execute_header, v24, v23, "Storing authorization for proxied request (%@).", v36, 0xCu);
      }

      objc_storeStrong(&v24, 0);
      v5 = [AKOwnerProxyClient alloc];
      v22 = [(AKOwnerProxyClient *)v5 initWithCredentialRequest:v33];
      v21 = objc_alloc_init(AKApplicationAuthorizationController);
      v7 = v21;
      v6 = location[0];
      authorizationRequest = [v33 authorizationRequest];
      altDSID = [authorizationRequest altDSID];
      [AKApplicationAuthorizationController storeAuthorization:v7 withAltDSID:"storeAuthorization:withAltDSID:forClient:" forClient:v6];
      _objc_release(altDSID);
      _objc_release(authorizationRequest);
      (*(v32 + 2))(v32, 1, 0);
      objc_storeStrong(&v21, 0);
      objc_storeStrong(&v22, 0);
      v28 = 0;
    }

    else
    {
      v27 = _AKLogSiwa();
      v26 = 16;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v12 = v27;
        v13 = v26;
        sub_10001CEEC(v25);
        _os_log_error_impl(&_mh_execute_header, v12, v13, "Authorization request missing proxied bundle identifier.", v25, 2u);
      }

      objc_storeStrong(&v27, 0);
      v10 = v32;
      v11 = [NSError ak_errorWithCode:-7044];
      v10[2](v10, 0);
      _objc_release(v11);
      v28 = 1;
    }
  }

  else
  {
    v31 = _AKLogSiwa();
    v30 = 16;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      log = v31;
      type = v30;
      sub_10001CEEC(v29);
      _os_log_error_impl(&_mh_execute_header, log, type, "Proxied bundle identifier entitlement needed to continue saving authorization.", v29, 2u);
    }

    objc_storeStrong(&v31, 0);
    v15 = v32;
    v16 = [NSError ak_errorWithCode:-7026];
    v15[2](v15, 0);
    _objc_release(v16);
    v28 = 1;
  }

  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
}

- (void)_getPresentationContextForRequestContext:(id)context client:(id)client completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v100 = 0;
  objc_storeStrong(&v100, client);
  v99 = 0;
  objc_storeStrong(&v99, completion);
  authorizationRequest = [location[0] authorizationRequest];
  v96 = 0;
  v44 = 0;
  if (authorizationRequest)
  {
    passwordRequest = [location[0] passwordRequest];
    v96 = 1;
    v44 = passwordRequest != 0;
  }

  if (v96)
  {
    _objc_release(passwordRequest);
  }

  _objc_release(authorizationRequest);
  v98 = v44;
  if (v44)
  {
    authorizationRequest2 = [location[0] authorizationRequest];
    [authorizationRequest2 setRequestedScopes:0];
    _objc_release(authorizationRequest2);
  }

  v95 = 0;
  v93 = 0;
  v39 = [AKAuthorizationValidator canPerformCredentialRequest:location[0] error:&v93];
  objc_storeStrong(&v95, v93);
  v94 = v39;
  if (v39)
  {
    v86 = [AKAuthorizationPresentationContext presentationContextForRequestContext:location[0] client:v100];
    [v86 setSignInAllowsPCSKeyAccess:{-[AKAuthorizationDaemonService _shouldAllowPCSKeyAccessForContext:](selfCopy, "_shouldAllowPCSKeyAccessForContext:", location[0])}];
    v85 = objc_alloc_init(AKUserInfoController);
    v84 = 0;
    credentialRequestContext = [v86 credentialRequestContext];
    v82 = v84;
    v36 = [AKAuthorizationValidator canPerformAuthorizationRequest:"canPerformAuthorizationRequest:error:" error:?];
    objc_storeStrong(&v84, v82);
    _objc_release(credentialRequestContext);
    v83 = v36;
    v81 = 0;
    v80 = 0;
    if ((v36 & 1) == 0)
    {
      credentialRequestContext2 = [v86 credentialRequestContext];
      [credentialRequestContext2 setAuthorizationRequest:0];
      _objc_release(credentialRequestContext2);
    }

    credentialRequestContext3 = [v86 credentialRequestContext];
    authorizationRequest3 = [credentialRequestContext3 authorizationRequest];
    _objc_release(credentialRequestContext3);
    credentialRequestContext4 = [v86 credentialRequestContext];
    passwordRequest2 = [credentialRequestContext4 passwordRequest];
    _objc_release(credentialRequestContext4);
    v77 = dispatch_group_create();
    if (authorizationRequest3 && (v83 & 1) != 0)
    {
      v76 = v81;
      v29 = [v85 authorizationUserInformationForRequest:authorizationRequest3 shouldRequestUpdate:&v80 error:&v76];
      objc_storeStrong(&v81, v76);
      [v86 setUserInformation:v29];
      _objc_release(v29);
      requestedScopes = [authorizationRequest3 requestedScopes];
      v74 = 0;
      v31 = 1;
      if (![requestedScopes count])
      {
        credentialRequestContext5 = [v86 credentialRequestContext];
        v74 = 1;
        v31 = [credentialRequestContext5 _isFirstPartyLogin] == 1;
      }

      if (v74)
      {
        _objc_release(credentialRequestContext5);
      }

      _objc_release(requestedScopes);
      if (v31)
      {
        if (v81)
        {
          (*(v99 + 2))();
          v87 = 1;
LABEL_69:
          objc_storeStrong(&v77, 0);
          objc_storeStrong(&passwordRequest2, 0);
          objc_storeStrong(&authorizationRequest3, 0);
          objc_storeStrong(&v81, 0);
          objc_storeStrong(&v84, 0);
          objc_storeStrong(&v85, 0);
          objc_storeStrong(&v86, 0);
          goto LABEL_70;
        }

        if (v80)
        {
          v27 = v85;
          altDSID = [authorizationRequest3 altDSID];
          [v27 fetchUserInformationForAltDSID:? client:? completion:?];
          _objc_release(altDSID);
        }
      }
    }

    v25 = +[AKFeatureManager sharedManager];
    _hasSharedAccounts = 0;
    if ([v25 isSiwaCredentialSharingEnabled])
    {
      _hasSharedAccounts = 0;
      if (authorizationRequest3)
      {
        _hasSharedAccounts = [authorizationRequest3 _hasSharedAccounts];
      }
    }

    _objc_release(v25);
    if (_hasSharedAccounts)
    {
      dispatch_group_enter(v77);
      clientID = [authorizationRequest3 clientID];
      v71 = 0;
      if (clientID)
      {
        v8 = _objc_retain(clientID);
      }

      else
      {
        bundleID = [v100 bundleID];
        v71 = 1;
        v8 = _objc_retain(bundleID);
      }

      v73 = v8;
      if (v71)
      {
        _objc_release(bundleID);
      }

      _objc_release(clientID);
      sharedAccountsStorageController = selfCopy->_sharedAccountsStorageController;
      v22 = v73;
      v64 = _NSConcreteStackBlock;
      v65 = -1073741824;
      v66 = 0;
      v67 = sub_100157D94;
      v68 = &unk_100324BB8;
      v69 = _objc_retain(selfCopy);
      v70 = _objc_retain(v77);
      [(AKSharedAccountsStorageController *)sharedAccountsStorageController fetchAccountsSharedWithCurrentUserWithClientID:v22 completionHandler:&v64];
      objc_storeStrong(&v70, 0);
      objc_storeStrong(&v69, 0);
      objc_storeStrong(&v73, 0);
    }

    if (passwordRequest2)
    {
      dispatch_group_enter(v77);
      v56 = _NSConcreteStackBlock;
      v57 = -1073741824;
      v58 = 0;
      v59 = sub_100157EF0;
      v60 = &unk_100324BE0;
      v61 = _objc_retain(selfCopy);
      v62 = _objc_retain(v77);
      v63 = objc_retainBlock(&v56);
      credentialRequestContext6 = [v86 credentialRequestContext];
      _proxiedAssociatedDomains = [credentialRequestContext6 _proxiedAssociatedDomains];
      _objc_release(credentialRequestContext6);
      if (_proxiedAssociatedDomains)
      {
        [(AKAuthorizationDaemonService *)selfCopy _fetchCredentialsForAssociatedDomains:_proxiedAssociatedDomains completion:v63];
      }

      else
      {
        [(AKAuthorizationDaemonService *)selfCopy _fetchSafariCredentialsWithCompletion:v63];
      }

      objc_storeStrong(&_proxiedAssociatedDomains, 0);
      objc_storeStrong(&v63, 0);
      objc_storeStrong(&v62, 0);
      objc_storeStrong(&v61, 0);
    }

    dispatch_group_wait(v77, 0xFFFFFFFFFFFFFFFFLL);
    [(AKAuthorizationDaemonService *)selfCopy _setupLoginChoicesForPresentationContext:v86 sharedAccounts:selfCopy->_sharedAccounts];
    if (passwordRequest2)
    {
      loginChoices = [v86 loginChoices];
      v20 = [loginChoices count];
      _objc_release(loginChoices);
      if (!v20)
      {
        oslog = _AKLogSiwa();
        v53 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          v17 = oslog;
          v18 = v53;
          sub_10001CEEC(v52);
          _os_log_error_impl(&_mh_execute_header, v17, v18, "No login choices available and we have a password request in credential requests.", v52, 2u);
        }

        objc_storeStrong(&oslog, 0);
        v50 = 0;
        _isRapportLogin = 0;
        if (authorizationRequest3)
        {
          _isRapportLogin = 0;
          if (v83)
          {
            credentialRequestContext7 = [v86 credentialRequestContext];
            v50 = 1;
            _isRapportLogin = [credentialRequestContext7 _isRapportLogin];
          }
        }

        if (v50)
        {
          _objc_release(credentialRequestContext7);
        }

        if (_isRapportLogin)
        {
          credentialRequestContext8 = [v86 credentialRequestContext];
          [credentialRequestContext8 setPasswordRequest:?];
          _objc_release(credentialRequestContext8);
          (*(v99 + 2))();
        }

        else
        {
          v13 = v99;
          v14 = [NSError ak_errorWithCode:-7089];
          v13[2](v13, 0);
          _objc_release(v14);
        }

        goto LABEL_68;
      }
    }

    else if (!authorizationRequest3 || (v83 & 1) == 0)
    {
      v49 = _AKLogSiwa();
      v48 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v11 = v49;
        v12 = v48;
        sub_10001CEEC(v47);
        _os_log_error_impl(&_mh_execute_header, v11, v12, "No credential requests.", v47, 2u);
      }

      objc_storeStrong(&v49, 0);
      v10 = v99;
      v45 = 0;
      if (v84)
      {
        v9 = v84;
      }

      else
      {
        v46 = [NSError ak_errorWithCode:-7044];
        v45 = 1;
        v9 = v46;
      }

      v10[2](v10, 0, v9);
      if (v45)
      {
        _objc_release(v46);
      }

      goto LABEL_68;
    }

    (*(v99 + 2))();
LABEL_68:
    v87 = 0;
    goto LABEL_69;
  }

  v92 = _AKLogSiwa();
  v91 = OS_LOG_TYPE_ERROR;
  if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
  {
    if (v94)
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    sub_10001B098(v103, v5, v95);
    _os_log_error_impl(&_mh_execute_header, v92, v91, "_getPresentationContextForRequestContext canPerformCredentialRequest returned %@ (with error %@)", v103, 0x16u);
  }

  objc_storeStrong(&v92, 0);
  if (!v95)
  {
    v90 = _AKLogSiwa();
    v89 = 16;
    if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
    {
      v37 = v90;
      v38 = v89;
      sub_10001CEEC(v88);
      _os_log_error_impl(&_mh_execute_header, v37, v38, "AKAuthorizationValidator returned we cannot perform credential request but threw no error, setting error unknown", v88, 2u);
    }

    objc_storeStrong(&v90, 0);
    v6 = [NSError ak_errorWithCode:-7001];
    v7 = v95;
    v95 = v6;
    _objc_release(v7);
  }

  (*(v99 + 2))();
  v87 = 1;
LABEL_70:
  objc_storeStrong(&v95, 0);
  objc_storeStrong(&v99, 0);
  objc_storeStrong(&v100, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_shouldAllowPCSKeyAccessForContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v4 = 0;
  if ([(AKAuthorizationDaemonService *)selfCopy _isPCSAccessForContext:location[0]])
  {
    v4 = +[AKCDPFactory isEligibleToArmDeviceForPCSAuth];
  }

  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (BOOL)_isPCSAccessForContext:(id)context
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  authorizationRequest = [location[0] authorizationRequest];
  appProvidedData = [authorizationRequest appProvidedData];
  v4 = [appProvidedData objectForKeyedSubscript:@"originURL"];
  v9 = [NSURL URLWithString:?];
  _objc_release(v4);
  _objc_release(appProvidedData);
  _objc_release(authorizationRequest);
  host = [(NSURL *)v9 host];
  v8 = [(NSString *)host containsString:@"icloud.com"];
  _objc_release(host);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  return v8;
}

- (void)_prepareRequestContext:(id)context forCredentialState:(int64_t)state
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  stateCopy = state;
  v31 = _AKLogSiwa();
  v30 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    log = v31;
    type = v30;
    sub_10001CEEC(v29);
    _os_log_impl(&_mh_execute_header, log, type, "Checking for genesis event!", v29, 2u);
  }

  objc_storeStrong(&v31, 0);
  authorizationRequest = [location[0] authorizationRequest];
  [authorizationRequest set_isSilentAppTransfer:0];
  [authorizationRequest setExistingStatus:stateCopy];
  primaryAuthKitAccount = [(AKAccountManager *)selfCopy->_accountManager primaryAuthKitAccount];
  v26 = [(AKAccountManager *)selfCopy->_accountManager userUnderAgeForAccount:primaryAuthKitAccount];
  v11 = +[AKFeatureManager sharedManager];
  isTiburonU13Enabled = [v11 isTiburonU13Enabled];
  _objc_release(v11);
  v12 = 1;
  if (stateCopy != 1)
  {
    v12 = 1;
    if (stateCopy != 4)
    {
      v12 = stateCopy == 5;
    }
  }

  v24 = v12;
  v10 = 1;
  if (stateCopy != 1)
  {
    v10 = stateCopy == 5;
  }

  v23 = v10;
  if (v24)
  {
    v22 = _AKLogSiwa();
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      clientID = [authorizationRequest clientID];
      sub_1000194D4(v38, clientID);
      _os_log_impl(&_mh_execute_header, v22, v21, "Previous credential for client %@ is authorized", v38, 0xCu);
      _objc_release(clientID);
    }

    objc_storeStrong(&v22, 0);
    if (v23)
    {
      [authorizationRequest setRequestedScopes:&__NSArray0__struct];
    }

    v8 = 1;
    if (stateCopy != 4)
    {
      v8 = stateCopy == 5;
    }

    [authorizationRequest set_hasSharedAccounts:v8];
  }

  else if ([location[0] _isEligibleForUpgradeFromPassword])
  {
    v20 = _AKLogSiwa();
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      requestedScopes = [authorizationRequest requestedScopes];
      sub_1000194D4(v37, requestedScopes);
      _os_log_impl(&_mh_execute_header, v20, v19, "Resetting scopes %@ for upgrade from keychain", v37, 0xCu);
      _objc_release(requestedScopes);
    }

    objc_storeStrong(&v20, 0);
    [authorizationRequest setRequestedScopes:&__NSArray0__struct];
  }

  else if (stateCopy == 3)
  {
    v18 = _AKLogSiwa();
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      clientID2 = [authorizationRequest clientID];
      sub_1000194D4(v36, clientID2);
      _os_log_impl(&_mh_execute_header, v18, v17, "Previous credential for client %@ is in transfer state", v36, 0xCu);
      _objc_release(clientID2);
    }

    objc_storeStrong(&v18, 0);
    [authorizationRequest setRequestedScopes:&__NSArray0__struct];
    userIdentifier = [authorizationRequest userIdentifier];
    [authorizationRequest set_isSilentAppTransfer:userIdentifier != 0];
    _objc_release(userIdentifier);
  }

  else if (v26 & 1) != 0 && (isTiburonU13Enabled)
  {
    oslog = _AKLogSiwa();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      requestedScopes2 = [authorizationRequest requestedScopes];
      sub_1000194D4(v35, requestedScopes2);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Resetting scopes %@ for underage user.", v35, 0xCu);
      _objc_release(requestedScopes2);
    }

    objc_storeStrong(&oslog, 0);
    [authorizationRequest setRequestedScopes:&__NSArray0__struct];
  }

  objc_storeStrong(&primaryAuthKitAccount, 0);
  objc_storeStrong(&authorizationRequest, 0);
  objc_storeStrong(location, 0);
}

- (int64_t)_credentialStateForRequestContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  _credentialStateController = [(AKAuthorizationDaemonService *)selfCopy _credentialStateController];
  v4 = [_credentialStateController getInternalCredentialStateForCredentialRequestContext:location[0]];
  objc_storeStrong(&_credentialStateController, 0);
  objc_storeStrong(location, 0);
  return v4;
}

- (void)_setupLoginChoicesForPresentationContext:(id)context sharedAccounts:(id)accounts
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v79 = 0;
  objc_storeStrong(&v79, accounts);
  v78 = objc_alloc_init(NSMutableArray);
  credentialRequestContext = [location[0] credentialRequestContext];
  authorizationRequest = [credentialRequestContext authorizationRequest];
  _objc_release(credentialRequestContext);
  v76 = 0;
  userInformation = [location[0] userInformation];
  isUnderage = [userInformation isUnderage];
  bOOLValue = [isUnderage BOOLValue];
  _objc_release(isUnderage);
  _objc_release(userInformation);
  v75 = bOOLValue;
  primaryiCloudAccountHasPendingDOB = 0;
  primaryiCloudAccountHasPendingDOB = [(AKAccountManager *)selfCopy->_accountManager primaryiCloudAccountHasPendingDOB];
  v45 = 1;
  if ([authorizationRequest existingStatus] != 1)
  {
    v45 = [authorizationRequest existingStatus] == 5;
  }

  v73 = v45;
  v39 = 1;
  if ([authorizationRequest existingStatus] != 4)
  {
    v39 = [authorizationRequest existingStatus] == 5;
  }

  v72 = v39;
  v38 = 0;
  if (v39)
  {
    v38 = 0;
    if ((v75 & 1) == 0)
    {
      v38 = primaryiCloudAccountHasPendingDOB ^ 1;
    }
  }

  v72 = v38 & 1;
  if (authorizationRequest)
  {
    if (v73)
    {
      oslog = _AKLogSiwa();
      type = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        log = oslog;
        v37 = type;
        sub_10001CEEC(v69);
        _os_log_debug_impl(&_mh_execute_header, log, v37, "setupLoginChoices: Adding personal credential choice", v69, 2u);
      }

      objc_storeStrong(&oslog, 0);
      v34 = [AKAuthorizationLoginChoice alloc];
      v35 = [(AKAuthorizationDaemonService *)selfCopy _accountDisplayNameWithPresentationContext:location[0]];
      v68 = [v34 initWithUser:? site:?];
      _objc_release(v35);
      [v68 setAppleIDAuth:1];
      [v78 addObject:v68];
      objc_storeStrong(&v68, 0);
    }

    else if (v75 & 1) != 0 || (primaryiCloudAccountHasPendingDOB)
    {
      v64 = _AKLogSiwa();
      v63 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
      {
        v30 = v64;
        v31 = v63;
        sub_10001CEEC(v62);
        _os_log_debug_impl(&_mh_execute_header, v30, v31, "setupLoginChoices: No Personal credential found. Not adding SIWA creation choice", v62, 2u);
      }

      objc_storeStrong(&v64, 0);
    }

    else
    {
      v67 = _AKLogSiwa();
      v66 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
      {
        v32 = v67;
        v33 = v66;
        sub_10001CEEC(v65);
        _os_log_debug_impl(&_mh_execute_header, v32, v33, "setupLoginChoices: No Personal credential found. Adding SIWA creation choice", v65, 2u);
      }

      objc_storeStrong(&v67, 0);
      v76 = ([authorizationRequest shouldHideCreateOption] & 1) == 0;
    }

    v28 = +[AKFeatureManager sharedManager];
    v29 = 0;
    if ([v28 isSiwaCredentialSharingEnabled])
    {
      v29 = v72;
    }

    _objc_release(v28);
    if (v29)
    {
      memset(__b, 0, sizeof(__b));
      v26 = _objc_retain(selfCopy->_sharedAccounts);
      v27 = [(NSArray *)v26 countByEnumeratingWithState:__b objects:v85 count:16];
      if (v27)
      {
        v23 = *__b[2];
        v24 = 0;
        v25 = v27;
        while (1)
        {
          v22 = v24;
          if (*__b[2] != v23)
          {
            objc_enumerationMutation(v26);
          }

          v61 = *(__b[1] + 8 * v24);
          v4 = [AKAuthorizationSharedAccountLoginChoice alloc];
          v59 = [v4 initWithSignInWithAppleAccount:v61];
          v58 = _AKLogSiwa();
          v57 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
          {
            v20 = v58;
            user = [v59 user];
            sub_1000194D4(v84, user);
            _os_log_debug_impl(&_mh_execute_header, v20, v57, "setupLoginChoices: Adding shared credential choice - %@", v84, 0xCu);
            _objc_release(user);
          }

          objc_storeStrong(&v58, 0);
          [v78 addObject:v59];
          objc_storeStrong(&v59, 0);
          ++v24;
          if (v22 + 1 >= v25)
          {
            v24 = 0;
            v25 = [(NSArray *)v26 countByEnumeratingWithState:__b objects:v85 count:16];
            if (!v25)
            {
              break;
            }
          }
        }
      }

      _objc_release(v26);
    }
  }

  v56 = [(NSArray *)selfCopy->_safariPasswordCredentials count]!= 0;
  if (v56)
  {
    memset(v54, 0, sizeof(v54));
    v18 = _objc_retain(selfCopy->_safariPasswordCredentials);
    v19 = [(NSArray *)v18 countByEnumeratingWithState:v54 objects:v83 count:16];
    if (v19)
    {
      v15 = *v54[2];
      v16 = 0;
      v17 = v19;
      while (1)
      {
        v14 = v16;
        if (*v54[2] != v15)
        {
          objc_enumerationMutation(v18);
        }

        v55 = *(v54[1] + 8 * v16);
        v11 = [AKAuthorizationLoginChoice alloc];
        user2 = [v55 user];
        site = [v55 site];
        v53 = [v11 initWithUser:user2 site:?];
        _objc_release(site);
        _objc_release(user2);
        v52 = _AKLogSiwa();
        v51 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          v9 = v52;
          user3 = [v53 user];
          sub_1000194D4(v82, user3);
          _os_log_debug_impl(&_mh_execute_header, v9, v51, "setupLoginChoices: Adding safari credential choice - %@", v82, 0xCu);
          _objc_release(user3);
        }

        objc_storeStrong(&v52, 0);
        [v78 addObject:v53];
        objc_storeStrong(&v53, 0);
        ++v16;
        if (v14 + 1 >= v17)
        {
          v16 = 0;
          v17 = [(NSArray *)v18 countByEnumeratingWithState:v54 objects:v83 count:16];
          if (!v17)
          {
            break;
          }
        }
      }
    }

    _objc_release(v18);
  }

  v8 = 0;
  if (v76)
  {
    v8 = v72;
  }

  v50 = v8 & 1;
  v47 = 0;
  v7 = 0;
  if (v76)
  {
    credentialRequestContext2 = [location[0] credentialRequestContext];
    v47 = 1;
    v7 = 0;
    if ([credentialRequestContext2 _isRapportLogin])
    {
      v7 = v56;
    }
  }

  if (v47)
  {
    _objc_release(credentialRequestContext2);
  }

  v49 = v7;
  if (v7 || (v50 & 1) != 0)
  {
    v5 = [AKAuthorizationLoginChoice alloc];
    v6 = [(AKAuthorizationDaemonService *)selfCopy _accountDisplayNameWithPresentationContext:location[0]];
    v46 = [v5 initWithUser:? site:?];
    _objc_release(v6);
    [v46 setAppleIDAuth:1];
    [v46 setCreateAppleID:1];
    [v78 addObject:v46];
    objc_storeStrong(&v46, 0);
  }

  [location[0] setLoginChoices:v78];
  objc_storeStrong(&authorizationRequest, 0);
  objc_storeStrong(&v78, 0);
  objc_storeStrong(&v79, 0);
  objc_storeStrong(location, 0);
}

- (void)_fetchSafariCredentialsWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v14 = 1;
  v13 = _AKLogSiwa();
  v12 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    appID = [(AKClient *)selfCopy->_client appID];
    sub_1000194D4(v17, appID);
    _os_log_debug_impl(&_mh_execute_header, v13, v12, "Fetching credentials with: %@", v17, 0xCu);
    _objc_release(appID);
  }

  objc_storeStrong(&v13, 0);
  if (sub_100052A58(0))
  {
    v4 = sub_100053058();
  }

  else
  {
    v4 = 0;
  }

  appID2 = [(AKClient *)selfCopy->_client appID];
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_100159600;
  v10 = &unk_100324C08;
  v11 = _objc_retain(location[0]);
  [v4 getCredentialsForAppWithAppID:appID2 completionHandler:&v6];
  _objc_release(appID2);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)_fetchCredentialsForAssociatedDomains:(id)domains completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, domains);
  v9 = 0;
  objc_storeStrong(&v9, completion);
  v8 = _AKLogSiwa();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v11, location[0]);
    _os_log_impl(&_mh_execute_header, v8, v7, "Fetching credentials for proxied associated domains. {proxiedAssociatedDomains=%@}", v11, 0xCu);
  }

  objc_storeStrong(&v8, 0);
  if (sub_100052A58(0))
  {
    v4 = sub_100053058();
  }

  else
  {
    v4 = 0;
  }

  v6 = _objc_retain(v9);
  [v4 getCredentialsForAppWithAppID:? externallyVerifiedAndApprovedSharedWebCredentialDomains:? completionHandler:?];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_requestUserAuthorizationForContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v27 = 0;
  objc_storeStrong(&v27, completion);
  v26 = _AKLogSiwa();
  v25 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v30, location[0]);
    _os_log_impl(&_mh_execute_header, v26, v25, "presenting authorization UI for request %@", v30, 0xCu);
  }

  objc_storeStrong(&v26, 0);
  v24 = objc_alloc_init(AKAuthorizationPresenter);
  v4 = v24;
  v17 = _NSConcreteStackBlock;
  v18 = -1073741824;
  v19 = 0;
  v20 = sub_100159CB8;
  v21 = &unk_100324C30;
  v22 = _objc_retain(location[0]);
  v23 = _objc_retain(selfCopy);
  [(AKAuthorizationPresenter *)v4 setAuthorizationResponseValidator:&v17];
  v5 = +[AKAuthorizationIconManager sharedManager];
  [v5 setFetchIconBlockForPresenter:v24 withContext:location[0]];
  _objc_release(v5);
  v8 = v24;
  v6 = location[0];
  client = selfCopy->_client;
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_100159EBC;
  v14 = &unk_100324C58;
  v16 = _objc_retain(v27);
  v15 = _objc_retain(v24);
  [(AKAuthorizationPresenter *)v8 presentAuthorizationWithContext:v6 client:client completion:&v10];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
}

- (void)_safePerformSRPWithUserResponse:(id)response client:(id)client completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v16 = 0;
  objc_storeStrong(&v16, client);
  v15 = 0;
  objc_storeStrong(&v15, completion);
  selectedRequest = [location[0] selectedRequest];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  _objc_release(selectedRequest);
  if (isKindOfClass)
  {
    v14 = _AKLogSiwa();
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      sub_10001B098(v20, location[0], v16);
      _os_log_impl(&_mh_execute_header, v14, v13, "Attempting authorization with response %@, and client: %@", v20, 0x16u);
    }

    objc_storeStrong(&v14, 0);
    [(AKAuthorizationDaemonService *)selfCopy _performSRPAuthorizationForUserResponse:location[0] client:v16 completion:v15];
  }

  else
  {
    v12 = _AKLogSiwa();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      selectedRequest2 = [location[0] selectedRequest];
      sub_1000194D4(v19, selectedRequest2);
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Attempted to authorize request of unsupported type %@", v19, 0xCu);
      _objc_release(selectedRequest2);
    }

    objc_storeStrong(&v12, 0);
    v5 = v15;
    v6 = [NSError ak_errorWithCode:-7027];
    v5[2](v5, 0);
    _objc_release(v6);
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)_performSRPAuthorizationForUserResponse:(id)response client:(id)client completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v23 = 0;
  objc_storeStrong(&v23, client);
  v22 = 0;
  objc_storeStrong(&v22, completion);
  v5 = [AKSRPService alloc];
  v21 = [(AKSRPService *)v5 initWithClient:v23];
  v10 = selfCopy;
  v8 = location[0];
  v9 = v23;
  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_10015A434;
  v15 = &unk_100324C80;
  v16 = _objc_retain(selfCopy);
  v17 = _objc_retain(v23);
  v18 = _objc_retain(location[0]);
  v19 = _objc_retain(v21);
  v20 = _objc_retain(v22);
  [(AKAuthorizationDaemonService *)v10 _fetchAuthContextWithUserResponse:v8 client:v9 completion:?];
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

- (void)_fetchAuthContextWithUserResponse:(id)response client:(id)client completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v33 = 0;
  objc_storeStrong(&v33, client);
  v32 = 0;
  objc_storeStrong(&v32, completion);
  v31 = [(AKAuthorizationDaemonService *)selfCopy authorizationContextWithUserResponse:location[0] client:v33];
  userSelection = [location[0] userSelection];
  [v31 setUserSelection:?];
  _objc_release(userSelection);
  _isFirstPartyLogin = 0;
  if (([(AKCredentialRequestContext *)selfCopy->_originalRequestContext _isWebLogin]& 1) != 0)
  {
    _isFirstPartyLogin = [(AKCredentialRequestContext *)selfCopy->_originalRequestContext _isFirstPartyLogin];
  }

  v30 = _isFirstPartyLogin & 1;
  v29 = _AKLogSiwa();
  v28 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    sub_10006A654(v36, v30 & 1);
    _os_log_debug_impl(&_mh_execute_header, v29, v28, "_isFirstPartyWebLogin: %d", v36, 8u);
  }

  objc_storeStrong(&v29, 0);
  if (v30)
  {
    v9 = +[AKCDPFactory walrusStatusLiveValue];
    captureCurrentValue = [v9 captureCurrentValue];
    _objc_release(v9);
    unsignedIntegerValue = [captureCurrentValue unsignedIntegerValue];
    if (unsignedIntegerValue == 1)
    {
      v21 = _AKLogSiwa();
      v20 = 2;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v7 = v21;
        v8 = v20;
        sub_10001CEEC(v19);
        _os_log_debug_impl(&_mh_execute_header, v7, v8, "Walrus Enabled, attaching arming info to SRP CPD", v19, 2u);
      }

      objc_storeStrong(&v21, 0);
      [v31 set_shouldRequestToArmDeviceToAllowPCSKeyUpload:1];
      (*(v32 + 2))(v32, v31);
      v24 = 1;
    }

    else
    {
      oslog = _AKLogSiwa();
      v17 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        v5 = oslog;
        v6 = v17;
        sub_10001CEEC(v16);
        _os_log_debug_impl(&_mh_execute_header, v5, v6, "Not required to set _shouldRequestToArmDeviceToAllowPCSKeyUpload", v16, 2u);
      }

      objc_storeStrong(&oslog, 0);
      (*(v32 + 2))(v32, v31);
      v24 = 0;
    }

    objc_storeStrong(&captureCurrentValue, 0);
  }

  else
  {
    v27 = _AKLogSiwa();
    v26 = 2;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v10 = v27;
      v11 = v26;
      sub_10001CEEC(v25);
      _os_log_debug_impl(&_mh_execute_header, v10, v11, "Not Setting _shouldRequestToArmDeviceToAllowPCSKeyUpload, isFirstPartyWebLogin is NO", v25, 2u);
    }

    objc_storeStrong(&v27, 0);
    (*(v32 + 2))(v32, v31);
    v24 = 1;
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
}

- (void)_completeAuthorizationWithServerResponse:(id)response userResponse:(id)userResponse client:(id)client completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v76 = 0;
  objc_storeStrong(&v76, userResponse);
  v75 = 0;
  objc_storeStrong(&v75, client);
  v74 = 0;
  objc_storeStrong(&v74, completion);
  if (([location[0] isUnderAgeOfMajority] & 1) == 0 || objc_msgSend(location[0], "isFirstPartyApp"))
  {
    goto LABEL_14;
  }

  accountManager = selfCopy->_accountManager;
  altDSID = [location[0] altDSID];
  v73 = [AKAccountManager authKitAccountWithAltDSID:"authKitAccountWithAltDSID:error:" error:?];
  _objc_release(altDSID);
  -[AKAccountManager setUserUnderage:forAccount:](selfCopy->_accountManager, "setUserUnderage:forAccount:", [location[0] isUnderAgeOfMajority], v73);
  v72 = 0;
  v6 = selfCopy->_accountManager;
  v70 = 0;
  v41 = [(AKAccountManager *)v6 saveAccount:v73 error:&v70];
  objc_storeStrong(&v72, v70);
  v71 = v41;
  if ((v41 & 1) == 0)
  {
    v69 = _AKLogSiwa();
    v68 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v81, v72);
      _os_log_error_impl(&_mh_execute_header, v69, v68, "Failed to update AuthKit account! Error: %@", v81, 0xCu);
    }

    objc_storeStrong(&v69, 0);
  }

  v67 = [(AKAccountManager *)selfCopy->_accountManager authorizationUsedForAccount:v73];
  v66 = _AKLogSiwa();
  v65 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
  {
    sub_10006A654(v80, v67 & 1);
    _os_log_debug_impl(&_mh_execute_header, v66, v65, "hasUsedAuthorization %d", v80, 8u);
  }

  objc_storeStrong(&v66, 0);
  if ((v67 & 1) != 0 || [(AKClient *)selfCopy->_client hasSiwaUnderageEntitlementAccess])
  {
    v64 = 0;
  }

  else
  {
    v37 = v74;
    v38 = [NSError ak_errorWithCode:-7076];
    v37[2](v37, 0);
    _objc_release(v38);
    v64 = 1;
  }

  objc_storeStrong(&v72, 0);
  objc_storeStrong(&v73, 0);
  if (!v64)
  {
LABEL_14:
    selectedRequest = [v76 selectedRequest];
    v62 = objc_alloc_init(AKAuthorization);
    v7 = [AKAuthorizationCredential alloc];
    v61 = [v7 initWithServerResponse:location[0]];
    [v62 setCredential:v61];
    [v62 setAuthorizedRequest:selectedRequest];
    [(AKAuthorizationDaemonService *)selfCopy _extractWebSessionAuthorizationFromResponse:location[0]];
    userInformation = [v61 userInformation];
    requestedScopes = [selectedRequest requestedScopes];
    v36 = [requestedScopes containsObject:AKAuthorizationScopeEmail];
    _objc_release(requestedScopes);
    if (v36)
    {
      userSelection = [v76 userSelection];
      makePrivateEmail = [userSelection makePrivateEmail];
      _objc_release(userSelection);
      if (!makePrivateEmail)
      {
        userSelection2 = [v76 userSelection];
        userInformation2 = [userSelection2 userInformation];
        selectedEmail = [userInformation2 selectedEmail];
        [userInformation setSelectedEmail:?];
        _objc_release(selectedEmail);
        _objc_release(userInformation2);
        _objc_release(userSelection2);
      }
    }

    else
    {
      [userInformation setSelectedEmail:0];
    }

    requestedScopes2 = [selectedRequest requestedScopes];
    v29 = [requestedScopes2 containsObject:AKAuthorizationScopeFullName];
    _objc_release(requestedScopes2);
    if (v29)
    {
      userSelection3 = [v76 userSelection];
      userInformation3 = [userSelection3 userInformation];
      givenName = [userInformation3 givenName];
      [userInformation setGivenName:?];
      _objc_release(givenName);
      _objc_release(userInformation3);
      _objc_release(userSelection3);
      userSelection4 = [v76 userSelection];
      userInformation4 = [userSelection4 userInformation];
      familyName = [userInformation4 familyName];
      [userInformation setFamilyName:?];
      _objc_release(familyName);
      _objc_release(userInformation4);
      _objc_release(userSelection4);
    }

    if ([(AKClient *)selfCopy->_client hasSiwaUnderageEntitlementAccess])
    {
      [userInformation setUserAgeRange:{(objc_msgSend(location[0], "isUnderAgeOfMajority") & 1) != 0}];
    }

    else
    {
      [userInformation setUserAgeRange:0];
    }

    if ([selectedRequest isEligibleForUpgradeFromPassword])
    {
      v8 = [AKOwnerProxyClient alloc];
      v59 = [(AKOwnerProxyClient *)v8 initWithCredentialRequest:selfCopy->_originalRequestContext];
      v21 = objc_opt_new();
      v18 = v62;
      selectedRequest2 = [v76 selectedRequest];
      altDSID2 = [selectedRequest2 altDSID];
      [v21 storeAuthorization:v18 withAltDSID:? forClient:?];
      _objc_release(altDSID2);
      _objc_release(selectedRequest2);
      _objc_release(v21);
      objc_storeStrong(&v59, 0);
    }

    else
    {
      if ([v76 hasSelectedSharedAccountForLogin])
      {
        signInWithAppleSharedAccountGroupID = [location[0] signInWithAppleSharedAccountGroupID];
        if (signInWithAppleSharedAccountGroupID)
        {
          v57 = _AKLogSiwa();
          v56 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            v13 = v57;
            v14 = v56;
            sub_10001CEEC(v55);
            _os_log_impl(&_mh_execute_header, v13, v14, "SRP with shared account was successful", v55, 2u);
          }

          objc_storeStrong(&v57, 0);
          oslog = _AKLogSiwa();
          v53 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000194D4(v79, signInWithAppleSharedAccountGroupID);
            _os_log_impl(&_mh_execute_header, oslog, v53, "Verifying if user is a member of group - %@", v79, 0xCu);
          }

          objc_storeStrong(&oslog, 0);
          sharedAccountsStorageController = selfCopy->_sharedAccountsStorageController;
          v11 = signInWithAppleSharedAccountGroupID;
          v45 = _NSConcreteStackBlock;
          v46 = -1073741824;
          v47 = 0;
          v48 = sub_10015B790;
          v49 = &unk_100321E60;
          v52 = _objc_retain(v74);
          v50 = _objc_retain(v62);
          v51 = _objc_retain(signInWithAppleSharedAccountGroupID);
          [(AKSharedAccountsStorageController *)sharedAccountsStorageController isMemberOfGroupWithGroupID:v11 completion:&v45];
          v64 = 1;
          objc_storeStrong(&v51, 0);
          objc_storeStrong(&v50, 0);
          objc_storeStrong(&v52, 0);
        }

        else
        {
          v9 = v74;
          v10 = [NSError ak_errorWithCode:-7026];
          v9[2](v9, 0);
          _objc_release(v10);
          v64 = 1;
        }

        objc_storeStrong(&signInWithAppleSharedAccountGroupID, 0);
        goto LABEL_37;
      }

      v17 = objc_opt_new();
      selectedRequest3 = [v76 selectedRequest];
      altDSID3 = [selectedRequest3 altDSID];
      [v17 storeAuthorization:v62 withAltDSID:? forClient:?];
      _objc_release(altDSID3);
      _objc_release(selectedRequest3);
      _objc_release(v17);
    }

    (*(v74 + 2))(v74, v62, 0);
    v64 = 0;
LABEL_37:
    objc_storeStrong(&userInformation, 0);
    objc_storeStrong(&v61, 0);
    objc_storeStrong(&v62, 0);
    objc_storeStrong(&selectedRequest, 0);
  }

  objc_storeStrong(&v74, 0);
  objc_storeStrong(&v75, 0);
  objc_storeStrong(&v76, 0);
  objc_storeStrong(location, 0);
}

- (id)authorizationContextHelperWithContext:(id)context client:(id)client
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v11 = 0;
  objc_storeStrong(&v11, client);
  v4 = [AKSRPAuthorizationContextHelper alloc];
  v10 = [(AKSRPAuthorizationContextHelper *)v4 initWithContext:location[0]];
  v9 = +[AKCDPFactory isWalrusEnabled];
  if (v9)
  {
    [(AKSRPContextHelper *)v10 setWalrusEnabled:v9 & 1];
    [(AKSRPContextHelper *)v10 setWalrusWebAccessEnabled:+[AKCDPFactory isWebAccessEnabled]];
  }

  [(AKSRPContextHelper *)v10 setClient:v11, &v10];
  v7 = _objc_retain(v10);
  objc_storeStrong(v6, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);

  return v7;
}

- (id)authorizationContextWithUserResponse:(id)response client:(id)client
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v71 = 0;
  objc_storeStrong(&v71, client);
  selectedRequest = [location[0] selectedRequest];
  v69 = [[AKAuthorizationContext alloc] initWithRequest:selectedRequest];
  [v69 setAppProvidedContext:@"AuthorizationServices"];
  altDSID = [selectedRequest altDSID];
  [v69 setAltDSID:?];
  _objc_release(altDSID);
  bundleID = [v71 bundleID];
  [v69 setClientID:?];
  _objc_release(bundleID);
  teamID = [v71 teamID];
  [v69 setTeamID:?];
  _objc_release(teamID);
  [v69 setRealUserVerificationData:selfCopy->_realUserVerificationResults];
  hasInternalEntitledAccess = [v71 hasInternalEntitledAccess];
  if (hasInternalEntitledAccess)
  {
    v67 = _AKLogSiwa();
    v66 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      log = v67;
      type = v66;
      sub_10001CEEC(v65);
      _os_log_impl(&_mh_execute_header, log, type, "Client has special access, populating context with overrides...", v65, 2u);
    }

    objc_storeStrong(&v67, 0);
    appProvidedData = [selectedRequest appProvidedData];
    v31 = [appProvidedData copy];
    [v69 setAppProvidedData:?];
    _objc_release(v31);
    _objc_release(appProvidedData);
    clientID = [selectedRequest clientID];
    _objc_release(clientID);
    if (clientID)
    {
      v64 = _AKLogSiwa();
      v63 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        v29 = v64;
        v30 = v63;
        sub_10001CEEC(v62);
        _os_log_impl(&_mh_execute_header, v29, v30, "Applying request client ID override", v62, 2u);
      }

      objc_storeStrong(&v64, 0);
      clientID2 = [selectedRequest clientID];
      [v69 setClientID:?];
      _objc_release(clientID2);
    }

    teamID2 = [selectedRequest teamID];
    _objc_release(teamID2);
    if (teamID2)
    {
      v61 = _AKLogSiwa();
      v60 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v61;
        v26 = v60;
        sub_10001CEEC(v59);
        _os_log_impl(&_mh_execute_header, v25, v26, "Applying request team ID override", v59, 2u);
      }

      objc_storeStrong(&v61, 0);
      teamID3 = [selectedRequest teamID];
      [v69 setTeamID:?];
      _objc_release(teamID3);
    }

    teamID4 = [v69 teamID];
    _objc_release(teamID4);
    if (!teamID4)
    {
      v58 = _AKLogSiwa();
      v57 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v58;
        v22 = v57;
        sub_10001CEEC(v56);
        _os_log_impl(&_mh_execute_header, v21, v22, "Authorization is for an internal application without teamID", v56, 2u);
      }

      objc_storeStrong(&v58, 0);
    }
  }

  else
  {
    v55 = _AKLogSiwa();
    v54 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v75, v71);
      _os_log_impl(&_mh_execute_header, v55, v54, "Client do not have special access, so not overriding the context. Using the given client: %@", v75, 0xCu);
    }

    objc_storeStrong(&v55, 0);
  }

  if ([selectedRequest _clientAuthenticatedExternallyWithPassword] == 1)
  {
    v53 = _AKLogSiwa();
    v52 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v53;
      v20 = v52;
      sub_10001CEEC(v51);
      _os_log_impl(&_mh_execute_header, v19, v20, "Client has authenticated externally, populating authToken...", v51, 2u);
    }

    objc_storeStrong(&v53, 0);
    [v69 set_clientAuthenticatedExternallyWithPassword:1];
    _externalAuthToken = [selectedRequest _externalAuthToken];
    [v69 set_externalAuthToken:?];
    _objc_release(_externalAuthToken);
  }

  if ([location[0] hasSelectedSharedAccountForLogin])
  {
    v50 = _AKLogSiwa();
    v49 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v50;
      v17 = v49;
      sub_10001CEEC(v48);
      _os_log_impl(&_mh_execute_header, v16, v17, "Client is using a shared account, populating share info...", v48, 2u);
    }

    objc_storeStrong(&v50, 0);
    [v69 set_isAuthorizingForSharedSIWAAccount:1];
    loginChoice = [location[0] loginChoice];
    sharedAccount = [loginChoice sharedAccount];
    shareInfo = [sharedAccount shareInfo];
    groupID = [shareInfo groupID];
    _objc_release(shareInfo);
    _objc_release(sharedAccount);
    v45 = 0;
    sharedAccountsStorageController = selfCopy->_sharedAccountsStorageController;
    sharedAccount2 = [loginChoice sharedAccount];
    v44 = v45;
    v11 = [AKSharedAccountsStorageController shareTokenForAccount:"shareTokenForAccount:inGroup:error:" inGroup:? error:?];
    objc_storeStrong(&v45, v44);
    [v69 set_sharedSIWAAccountShareToken:v11];
    _objc_release(v11);
    _objc_release(sharedAccount2);
    sharedAccount3 = [loginChoice sharedAccount];
    shareInfo2 = [sharedAccount3 shareInfo];
    groupID2 = [shareInfo2 groupID];
    [v69 set_sharedSIWAAccountGroupID:?];
    _objc_release(groupID2);
    _objc_release(shareInfo2);
    _objc_release(sharedAccount3);
    if (v45)
    {
      oslog = _AKLogSiwa();
      v42 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v6 = oslog;
        v7 = v42;
        sub_10001CEEC(v41);
        _os_log_error_impl(&_mh_execute_header, v6, v7, "An error occurred while fetching the share token.", v41, 2u);
      }

      objc_storeStrong(&oslog, 0);
    }

    objc_storeStrong(&v45, 0);
    objc_storeStrong(&groupID, 0);
    objc_storeStrong(&loginChoice, 0);
  }

  v40 = _AKLogSiwa();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v74, v69);
    _os_log_debug_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "Constructed AKAuthorizationContext from the request & client - %@", v74, 0xCu);
  }

  objc_storeStrong(&v40, 0);
  v5 = _objc_retain(v69);
  objc_storeStrong(&v69, 0);
  objc_storeStrong(&selectedRequest, 0);
  objc_storeStrong(&v71, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (void)_extractWebSessionAuthorizationFromResponse:(id)response
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  if ([location[0] isFirstPartyApp])
  {
    v16 = 0;
    v9 = +[AKCDPFactory walrusStatusLiveValue];
    captureCurrentValue = [v9 captureCurrentValue];
    _objc_release(v9);
    unsignedIntegerValue = [captureCurrentValue unsignedIntegerValue];
    if (unsignedIntegerValue == 1)
    {
      serverProvidedData = [location[0] serverProvidedData];
      v3 = [AKPCSAuthContext contextFromSRPServerResponseWithShorterTTL:?];
      v4 = v16;
      v16 = v3;
      _objc_release(v4);
      _objc_release(serverProvidedData);
    }

    if (!v16)
    {
      serverProvidedData2 = [location[0] serverProvidedData];
      v16 = [AKPCSAuthContext contextFromSRPServerResponse:?];
      _objc_release(0);
      _objc_release(serverProvidedData2);
    }

    if (v16)
    {
      v10 = +[AKWebSessionPCSKeyProvider sharedInstance];
      [(AKWebSessionPCSKeyProvider *)v10 saveContext:v16 completion:&stru_100324CA0];
      objc_storeStrong(&v10, 0);
      v17 = 0;
    }

    else
    {
      v13 = _AKLogSiwa();
      v12 = 2;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        log = v13;
        type = v12;
        sub_10001CEEC(v11);
        _os_log_debug_impl(&_mh_execute_header, log, type, "There is no web session auth to save.", v11, 2u);
      }

      objc_storeStrong(&v13, 0);
      v17 = 1;
    }

    objc_storeStrong(&captureCurrentValue, 0);
    objc_storeStrong(&v16, 0);
  }

  else
  {
    v17 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)presentAuthorizationUIForContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v22 = 0;
  objc_storeStrong(&v22, completion);
  v21 = _AKLogSystem();
  v20 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v25, "[AKAuthorizationDaemonService presentAuthorizationUIForContext:completion:]", 1500);
    _os_log_debug_impl(&_mh_execute_header, v21, v20, "%s (%d) called", v25, 0x12u);
  }

  objc_storeStrong(&v21, 0);
  client = selfCopy->_client;
  v13 = _NSConcreteStackBlock;
  v14 = -1073741824;
  v15 = 0;
  v16 = sub_10015CC24;
  v17 = &unk_100321FF0;
  v18 = _objc_retain(v22);
  v19 = [(AKClient *)client proxyWithErrorHandler:&v13];
  if (v19)
  {
    [v19 presentAuthorizationUIForContext:location[0] completion:v22];
  }

  else
  {
    oslog = _AKLogSiwa();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = oslog;
      v7 = v11;
      sub_10001CEEC(v10);
      _os_log_impl(&_mh_execute_header, v6, v7, "Client proxy object to present UI is not created", v10, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v4 = v22;
    v5 = [NSError ak_errorWithCode:-7061];
    v4[2](v4, 0);
    _objc_release(v5);
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)performAuthorizationWithContext:(id)context withUserProvidedInformation:(id)information completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v23 = 0;
  objc_storeStrong(&v23, information);
  v22 = 0;
  objc_storeStrong(&v22, completion);
  if (!selfCopy->_originalRequestContext)
  {
    objc_storeStrong(&selfCopy->_originalRequestContext, location[0]);
  }

  v21 = _AKLogSiwa();
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v26, selfCopy->_client);
    _os_log_impl(&_mh_execute_header, v21, v20, "Client before perform authorization for user info execution %@", v26, 0xCu);
  }

  objc_storeStrong(&v21, 0);
  if ([(AKClient *)selfCopy->_client hasOwnerAccess])
  {
    v19 = _AKLogSiwa();
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v19;
      v10 = v18;
      sub_10001CEEC(v17);
      _os_log_impl(&_mh_execute_header, v9, v10, "Client owner detected", v17, 2u);
    }

    objc_storeStrong(&v19, 0);
    v16 = [(AKAuthorizationDaemonService *)selfCopy _clientForContext:location[0]];
    [(AKAuthorizationDaemonService *)selfCopy _validateAndProcessUserResponse:v23 client:v16 completion:v22];
    objc_storeStrong(&v16, 0);
  }

  else
  {
    v15 = _AKLogSiwa();
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v15;
      v8 = v14;
      sub_10001CEEC(v13);
      _os_log_impl(&_mh_execute_header, v7, v8, "Client doesn't have owner access, operation not permitted", v13, 2u);
    }

    objc_storeStrong(&v15, 0);
    v5 = v22;
    v6 = [NSError ak_errorWithCode:-7026];
    v5[2](v5, 0);
    _objc_release(v6);
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

- (void)_validateAndProcessUserResponse:(id)response client:(id)client completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v27 = 0;
  objc_storeStrong(&v27, client);
  v26 = 0;
  objc_storeStrong(&v26, completion);
  v10 = [AKCATiburonRequestAttemptReporter alloc];
  selectedRequest = [location[0] selectedRequest];
  requestIdentifier = [selectedRequest requestIdentifier];
  uUIDString = [requestIdentifier UUIDString];
  v25 = [(AKCATiburonRequestAttemptReporter *)v10 initWithRequestID:?];
  _objc_release(uUIDString);
  _objc_release(requestIdentifier);
  _objc_release(selectedRequest);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10015D498;
  v21[3] = &unk_100324CC8;
  v22 = _objc_retain(v25);
  v23 = _objc_retain(v26);
  v24 = objc_retainBlock(v21);
  v20 = 0;
  v18 = 0;
  v14 = [AKAuthorizationValidator shouldContinueWithResponse:location[0] error:&v18];
  objc_storeStrong(&v20, v18);
  v19 = v14;
  oslog = _AKLogSiwa();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    if (v19)
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    sub_10001B098(v30, v5, v20);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "shouldContinueWithRequest returning result %@ and error %@", v30, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  if (v19)
  {
    [(AKAuthorizationDaemonService *)selfCopy _processUserResponse:location[0] client:v27 completion:v24];
  }

  else
  {
    v7 = v24;
    v15 = 0;
    if (v20)
    {
      v6 = v20;
    }

    else
    {
      v16 = [NSError ak_errorWithCode:-7062];
      v15 = 1;
      v6 = v16;
    }

    v7[2](v7, 0, v6);
    if (v15)
    {
      _objc_release(v16);
    }
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
}

- (void)_processUserResponse:(id)response client:(id)client completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v49 = 0;
  objc_storeStrong(&v49, client);
  v48 = 0;
  objc_storeStrong(&v48, completion);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained authorizationDaemonServiceWillProcessUserResponse:selfCopy];
  }

  v27 = +[AKFeatureManager sharedManager];
  isTiburonU13Enabled = [v27 isTiburonU13Enabled];
  _objc_release(v27);
  selectedRequest = [location[0] selectedRequest];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  _objc_release(selectedRequest);
  if (isKindOfClass)
  {
    v45 = _AKLogSiwa();
    v44 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      sub_10001B098(v54, location[0], v49);
      _os_log_impl(&_mh_execute_header, v45, v44, "Got a response from user: %@ and client: %@", v54, 0x16u);
    }

    objc_storeStrong(&v45, 0);
    [(AKAuthorizationDaemonService *)selfCopy _safePerformSRPWithUserResponse:location[0] client:v49 completion:v48];
LABEL_23:
    v38 = 0;
    goto LABEL_24;
  }

  selectedRequest2 = [location[0] selectedRequest];
  objc_opt_class();
  v26 = objc_opt_isKindOfClass();
  _objc_release(selectedRequest2);
  if ((v26 & 1) == 0)
  {
    if ([location[0] requestParentalPermission] & 1) != 0 && (isTiburonU13Enabled)
    {
      [(AKAuthorizationDaemonService *)selfCopy _sendPermissionRequestWithCompletion:v48];
    }

    else
    {
      v34[0] = _AKLogSiwa();
      v33 = 16;
      if (os_log_type_enabled(v34[0], OS_LOG_TYPE_ERROR))
      {
        v7 = v34[0];
        v8 = v33;
        sub_10001CEEC(v32);
        _os_log_error_impl(&_mh_execute_header, v7, v8, "Processing of user response failed with an unknown error, likely invalid response...", v32, 2u);
      }

      objc_storeStrong(v34, 0);
      v5 = v48;
      v6 = [NSError ak_errorWithCode:-7012];
      v5[2](v5, 0);
      _objc_release(v6);
    }

    goto LABEL_23;
  }

  v43 = _AKLogSiwa();
  v42 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v23 = v43;
    v24 = v42;
    sub_10001CEEC(v41);
    _os_log_impl(&_mh_execute_header, v23, v24, "Detected password request", v41, 2u);
  }

  objc_storeStrong(&v43, 0);
  loginChoice = [location[0] loginChoice];
  _objc_release(loginChoice);
  if (loginChoice)
  {
    v37 = _AKLogSiwa();
    v36 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v18 = location[0];
      userSelection = [location[0] userSelection];
      sub_10004DCC8(v52, v18, userSelection, v49);
      _os_log_impl(&_mh_execute_header, v37, v36, "Got a response from user: %@, userSelection: %@ and client: %@", v52, 0x20u);
      _objc_release(userSelection);
    }

    objc_storeStrong(&v37, 0);
    v35 = objc_alloc_init(AKAuthorization);
    loginChoiceIndex = [location[0] loginChoiceIndex];
    intValue = [loginChoiceIndex intValue];
    _objc_release(loginChoiceIndex);
    v34[1] = intValue;
    v11 = [AKPasswordCredential alloc];
    v16 = [(NSArray *)selfCopy->_safariPasswordCredentials objectAtIndexedSubscript:intValue];
    user = [v16 user];
    v14 = [(NSArray *)selfCopy->_safariPasswordCredentials objectAtIndexedSubscript:intValue];
    password = [v14 password];
    v12 = [v11 initWithUser:user password:?];
    [v35 setCredential:?];
    _objc_release(v12);
    _objc_release(password);
    _objc_release(v14);
    _objc_release(user);
    _objc_release(v16);
    selectedRequest3 = [location[0] selectedRequest];
    [v35 setAuthorizedRequest:?];
    _objc_release(selectedRequest3);
    (*(v48 + 2))(v48, v35, 0);
    objc_storeStrong(&v35, 0);
    goto LABEL_23;
  }

  v40 = _AKLogSiwa();
  v39 = OS_LOG_TYPE_ERROR;
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    sub_1000194D4(v53, 0);
    _os_log_error_impl(&_mh_execute_header, v40, v39, "Authorization presentation failed with error: %@", v53, 0xCu);
  }

  objc_storeStrong(&v40, 0);
  v20 = v48;
  v21 = [NSError ak_errorWithCode:-7044];
  v20[2](v20, 0);
  _objc_release(v21);
  v38 = 1;
LABEL_24:
  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(location, 0);
}

- (void)beginAuthorizationWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v52 = 0;
  objc_storeStrong(&v52, completion);
  if ([(AKAuthorizationDaemonService *)selfCopy _verifyEntitlementsForRequest:location[0]])
  {
    if ([(AKClient *)selfCopy->_client isPermittedToProxyAuthorizationBundleIdentifier])
    {
      _proxiedClientBundleID = [location[0] _proxiedClientBundleID];
      v43 = 0;
      v18 = 1;
      if (_proxiedClientBundleID)
      {
        _proxiedClientTeamID = [location[0] _proxiedClientTeamID];
        v43 = 1;
        v18 = _proxiedClientTeamID == 0;
      }

      if (v43)
      {
        _objc_release(_proxiedClientTeamID);
      }

      _objc_release(_proxiedClientBundleID);
      if (v18)
      {
        v42 = _AKLogSiwa();
        v41 = 16;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v15 = v42;
          v16 = v41;
          sub_10001CEEC(v40);
          _os_log_error_impl(&_mh_execute_header, v15, v16, "Unable to beginAuthorization - Client has proxy entitlement but is not setting either _proxiedClientBundleID or _proxiedClientTeamID", v40, 2u);
        }

        objc_storeStrong(&v42, 0);
        v13 = v52;
        v14 = [NSError ak_errorWithCode:-7044];
        v13[2](v13, 0);
        _objc_release(v14);
        v48 = 1;
      }

      else
      {
        v39 = _AKLogSiwa();
        v38 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          _proxiedClientBundleID2 = [location[0] _proxiedClientBundleID];
          sub_1000194D4(v56, _proxiedClientBundleID2);
          _os_log_impl(&_mh_execute_header, v39, v38, "beginAuthorization - Proxied bundle detected (%@), proxying...", v56, 0xCu);
          _objc_release(_proxiedClientBundleID2);
        }

        objc_storeStrong(&v39, 0);
        [location[0] set_clientShouldAuthenticateExternally:1];
        v10 = [AKOwnerProxyClient alloc];
        v9 = location[0];
        xpcConnection = [(AKClient *)selfCopy->_client xpcConnection];
        v4 = [(AKOwnerProxyClient *)v10 initWithCredentialRequest:v9 connection:?];
        client = selfCopy->_client;
        selfCopy->_client = &v4->super;
        _objc_release(client);
        _objc_release(xpcConnection);
        v37 = _AKLogSiwa();
        v36 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000194D4(v55, location[0]);
          _os_log_impl(&_mh_execute_header, v37, v36, "beginAuthorization - Requesting clearance to authorize with context %@...", v55, 0xCu);
        }

        objc_storeStrong(&v37, 0);
        authSessionManager = selfCopy->_authSessionManager;
        v6 = location[0];
        v7 = selfCopy->_client;
        v28 = _NSConcreteStackBlock;
        v29 = -1073741824;
        v30 = 0;
        v31 = sub_10015E3EC;
        v32 = &unk_100321DE8;
        v33 = _objc_retain(location[0]);
        v35 = _objc_retain(v52);
        v34 = _objc_retain(selfCopy);
        [(AKAuthorizationSessionManager *)authSessionManager beginSessionWithContext:v6 client:v7 completion:&v28];
        objc_storeStrong(&v34, 0);
        objc_storeStrong(&v35, 0);
        objc_storeStrong(&v33, 0);
        v48 = 0;
      }
    }

    else
    {
      v47 = _AKLogSiwa();
      v46 = 16;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v21 = v47;
        v22 = v46;
        sub_10001CEEC(v45);
        _os_log_error_impl(&_mh_execute_header, v21, v22, "Unable to beginAuthorization - Client is not entitled to _AKCredentialRequestContextBundleIdentifierProxyEntitlement", v45, 2u);
      }

      objc_storeStrong(&v47, 0);
      v19 = v52;
      v20 = [NSError ak_errorWithCode:-7026];
      v19[2](v19, 0);
      _objc_release(v20);
      v48 = 1;
    }
  }

  else
  {
    v51 = _AKLogSiwa();
    v50 = 16;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      log = v51;
      type = v50;
      sub_10001CEEC(v49);
      _os_log_error_impl(&_mh_execute_header, log, type, "Unable to beginAuthorization - Missing Entitlements.", v49, 2u);
    }

    objc_storeStrong(&v51, 0);
    v23 = v52;
    v24 = [NSError ak_errorWithCode:-7026];
    v23[2](v23, 0);
    _objc_release(v24);
    v48 = 1;
  }

  objc_storeStrong(&v52, 0);
  objc_storeStrong(location, 0);
}

- (void)continueAuthorizationWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v58 = 0;
  objc_storeStrong(&v58, completion);
  if ([(AKAuthorizationDaemonService *)selfCopy _verifyEntitlementsForRequest:location[0]])
  {
    if ([(AKClient *)selfCopy->_client isPermittedToProxyAuthorizationBundleIdentifier])
    {
      _proxiedClientBundleID = [location[0] _proxiedClientBundleID];
      v49 = 0;
      v23 = 1;
      if (_proxiedClientBundleID)
      {
        _proxiedClientTeamID = [location[0] _proxiedClientTeamID];
        v49 = 1;
        v23 = _proxiedClientTeamID == 0;
      }

      if (v49)
      {
        _objc_release(_proxiedClientTeamID);
      }

      _objc_release(_proxiedClientBundleID);
      if (v23)
      {
        v48 = _AKLogSiwa();
        v47 = 16;
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v20 = v48;
          v21 = v47;
          sub_10001CEEC(v46);
          _os_log_error_impl(&_mh_execute_header, v20, v21, "Unable to continueAuthorization - Client has proxy entitlement but is not setting either _proxiedClientBundleID or _proxiedClientTeamID", v46, 2u);
        }

        objc_storeStrong(&v48, 0);
        v18 = v58;
        v19 = [NSError ak_errorWithCode:-7044];
        v18[2](v18, 0);
        _objc_release(v19);
        v54 = 1;
      }

      else
      {
        v45 = _AKLogSiwa();
        v44 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          _proxiedClientBundleID2 = [location[0] _proxiedClientBundleID];
          sub_1000194D4(v61, _proxiedClientBundleID2);
          _os_log_impl(&_mh_execute_header, v45, v44, "continueAuthorization - Proxied bundle detected (%@), proxying...", v61, 0xCu);
          _objc_release(_proxiedClientBundleID2);
        }

        objc_storeStrong(&v45, 0);
        [location[0] set_clientShouldAuthenticateExternally:1];
        v14 = [AKOwnerProxyClient alloc];
        v13 = location[0];
        xpcConnection = [(AKClient *)selfCopy->_client xpcConnection];
        v4 = [(AKOwnerProxyClient *)v14 initWithCredentialRequest:v13 connection:?];
        client = selfCopy->_client;
        selfCopy->_client = &v4->super;
        _objc_release(client);
        _objc_release(xpcConnection);
        _continuationRequestIdentifier = [location[0] _continuationRequestIdentifier];
        _objc_release(_continuationRequestIdentifier);
        if (_continuationRequestIdentifier)
        {
          [location[0] set_clientShouldAuthenticateExternally:1];
          authSessionManager = selfCopy->_authSessionManager;
          v6 = location[0];
          v7 = selfCopy->_client;
          v33 = _NSConcreteStackBlock;
          v34 = -1073741824;
          v35 = 0;
          v36 = sub_10015F42C;
          v37 = &unk_100324CF0;
          v38 = _objc_retain(location[0]);
          v40 = _objc_retain(v58);
          v39 = _objc_retain(selfCopy);
          [(AKAuthorizationSessionManager *)authSessionManager continueSessionWithContext:v6 client:v7 completion:&v33];
          objc_storeStrong(&v39, 0);
          objc_storeStrong(&v40, 0);
          objc_storeStrong(&v38, 0);
          v54 = 0;
        }

        else
        {
          v43 = _AKLogSiwa();
          v42 = 16;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v11 = v43;
            v12 = v42;
            sub_10001CEEC(v41);
            _os_log_error_impl(&_mh_execute_header, v11, v12, "Invalid context. Need to set _continuationRequestIdentifier", v41, 2u);
          }

          objc_storeStrong(&v43, 0);
          v9 = v58;
          v10 = [NSError ak_errorWithCode:-7044];
          v9[2](v9, 0);
          _objc_release(v10);
          v54 = 1;
        }
      }
    }

    else
    {
      v53 = _AKLogSiwa();
      v52 = 16;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        v26 = v53;
        v27 = v52;
        sub_10001CEEC(v51);
        _os_log_error_impl(&_mh_execute_header, v26, v27, "Unable to continueAuthorization - Client is not entitled to _AKCredentialRequestContextBundleIdentifierProxyEntitlement", v51, 2u);
      }

      objc_storeStrong(&v53, 0);
      v24 = v58;
      v25 = [NSError ak_errorWithCode:-7026];
      v24[2](v24, 0);
      _objc_release(v25);
      v54 = 1;
    }
  }

  else
  {
    v57 = _AKLogSiwa();
    v56 = 16;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      log = v57;
      type = v56;
      sub_10001CEEC(v55);
      _os_log_error_impl(&_mh_execute_header, log, type, "Unable to continueAuthorization - Missing Entitlements.", v55, 2u);
    }

    objc_storeStrong(&v57, 0);
    v28 = v58;
    v29 = [NSError ak_errorWithCode:-7026];
    v28[2](v28, 0);
    _objc_release(v29);
    v54 = 1;
  }

  objc_storeStrong(&v58, 0);
  objc_storeStrong(location, 0);
}

- (void)cancelAuthorizationWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v50 = 0;
  objc_storeStrong(&v50, completion);
  v49 = _AKLogSiwa();
  v48 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v54, location[0]);
    _os_log_impl(&_mh_execute_header, v49, v48, "cancelAuthorization with context - %@", v54, 0xCu);
  }

  objc_storeStrong(&v49, 0);
  if ([(AKAuthorizationDaemonService *)selfCopy _verifyEntitlementsForRequest:location[0]])
  {
    if ([(AKClient *)selfCopy->_client isPermittedToProxyAuthorizationBundleIdentifier])
    {
      _proxiedClientBundleID = [location[0] _proxiedClientBundleID];
      v39 = 0;
      v18 = 1;
      if (_proxiedClientBundleID)
      {
        _proxiedClientTeamID = [location[0] _proxiedClientTeamID];
        v39 = 1;
        v18 = _proxiedClientTeamID == 0;
      }

      if (v39)
      {
        _objc_release(_proxiedClientTeamID);
      }

      _objc_release(_proxiedClientBundleID);
      if (v18)
      {
        v38 = _AKLogSiwa();
        v37 = 16;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v15 = v38;
          v16 = v37;
          sub_10001CEEC(v36);
          _os_log_error_impl(&_mh_execute_header, v15, v16, "Unable to cancelAuthorization - Client has proxy entitlement but is not setting either _proxiedClientBundleID or _proxiedClientTeamID", v36, 2u);
        }

        objc_storeStrong(&v38, 0);
        v13 = v50;
        v14 = [NSError ak_errorWithCode:-7044];
        v13[2]();
        _objc_release(v14);
        v44 = 1;
      }

      else
      {
        v35 = _AKLogSiwa();
        v34 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          _proxiedClientBundleID2 = [location[0] _proxiedClientBundleID];
          sub_1000194D4(v53, _proxiedClientBundleID2);
          _os_log_impl(&_mh_execute_header, v35, v34, "cancelAuthorization - Proxied bundle detected (%@), proxying...", v53, 0xCu);
          _objc_release(_proxiedClientBundleID2);
        }

        objc_storeStrong(&v35, 0);
        v7 = [AKOwnerProxyClient alloc];
        v6 = location[0];
        xpcConnection = [(AKClient *)selfCopy->_client xpcConnection];
        v4 = [(AKOwnerProxyClient *)v7 initWithCredentialRequest:v6 connection:?];
        client = selfCopy->_client;
        selfCopy->_client = &v4->super;
        _objc_release(client);
        _objc_release(xpcConnection);
        authSessionManager = selfCopy->_authSessionManager;
        v9 = location[0];
        v10 = selfCopy->_client;
        v28 = _NSConcreteStackBlock;
        v29 = -1073741824;
        v30 = 0;
        v31 = sub_10016073C;
        v32 = &unk_100321FF0;
        v33 = _objc_retain(v50);
        [(AKAuthorizationSessionManager *)authSessionManager endSessionWithContext:v9 client:v10 completion:&v28];
        objc_storeStrong(&v33, 0);
        v44 = 0;
      }
    }

    else
    {
      v43 = _AKLogSiwa();
      v42 = 16;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v21 = v43;
        v22 = v42;
        sub_10001CEEC(v41);
        _os_log_error_impl(&_mh_execute_header, v21, v22, "Unable to cancelAuthorization - Client is not entitled to _AKCredentialRequestContextBundleIdentifierProxyEntitlement", v41, 2u);
      }

      objc_storeStrong(&v43, 0);
      v19 = v50;
      v20 = [NSError ak_errorWithCode:-7026];
      v19[2]();
      _objc_release(v20);
      v44 = 1;
    }
  }

  else
  {
    v47 = _AKLogSiwa();
    v46 = 16;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v25 = v47;
      v26 = v46;
      sub_10001CEEC(v45);
      _os_log_error_impl(&_mh_execute_header, v25, v26, "Unable to cancelAuthorization. Missing Entitlements.", v45, 2u);
    }

    objc_storeStrong(&v47, 0);
    v23 = v50;
    v24 = [NSError ak_errorWithCode:-7026];
    v23[2]();
    _objc_release(v24);
    v44 = 1;
  }

  objc_storeStrong(&v50, 0);
  objc_storeStrong(location, 0);
}

- (void)_sendPermissionRequestWithCompletion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v7 = _AKLogSiwa();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    log = v7;
    type = v6;
    sub_10001CEEC(v5);
    _os_log_impl(&_mh_execute_header, log, type, "Sending permission request", v5, 2u);
  }

  objc_storeStrong(&v7, 0);
  (*(location[0] + 2))(location[0], 0);
  objc_storeStrong(location, 0);
}

- (id)_accountDisplayNameWithPresentationContext:(id)context
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v9 = +[AKAccountManager sharedInstance];
  primaryiCloudAccount = [(AKAccountManager *)v9 primaryiCloudAccount];
  v7 = objc_alloc_init(NSPersonNameComponents);
  v4 = [(AKAccountManager *)v9 givenNameForAccount:primaryiCloudAccount];
  [v7 setGivenName:?];
  _objc_release(v4);
  v5 = [(AKAccountManager *)v9 familyNameForAccount:primaryiCloudAccount];
  [v7 setFamilyName:?];
  _objc_release(v5);
  v6 = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:v7 style:0 options:?];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&primaryiCloudAccount, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (AKAuthorizationDaemonServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end