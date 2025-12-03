@interface AKAppleIDAuthenticationService
+ (id)_verificationQueue;
- (AKAppleIDAuthenticationService)init;
- (AKAppleIDAuthenticationService)initWithClient:(id)client passwordResetPresenter:(id)presenter;
- (AKAppleIDAuthenticationService)initWithProxy:(id)proxy;
- (BOOL)_incrementAttemptsForContext:(id)context error:(id *)error;
- (BOOL)_shouldBroadcastForProximity:(id)proximity;
- (BOOL)_shouldPresentShieldForContext:(id)context;
- (BOOL)_shouldShowAlertForAuthModeError:(id)error;
- (BOOL)_shouldSkipAccountUpdatesForAuthWithContext:(id)context;
- (BOOL)_updateAuthKitAccount:(id)account withServerResponse:(id)response context:(id)context error:(id *)error;
- (BOOL)shouldProcessAdditionalServerUIData:(id)data;
- (id)_accountForContinuationWithContext:(id)context error:(id *)error;
- (id)_addAccountNameParameterToURL:(id)l withContext:(id)context;
- (id)_alertDetailsForError:(id)error context:(id)context;
- (id)_authKitAccountFromContext:(id)context;
- (id)_authenticationParametersForUsername:(id)username altDSID:(id)d context:(id)context;
- (id)_createAuthenticationStartEventWithContext:(id)context;
- (id)_createProxAnalyticsForAuthenticationContextIfNeeded:(id)needed;
- (id)_deviceListProviderWithContext:(id)context;
- (id)_requestingControllerWithServerResponse:(id)response;
- (id)_secureChannelTypeForContext:(id)context;
- (id)_srpAuthContextHelperWithContext:(id)context;
- (id)authResultsFromServerResponse:(id)response inContext:(id)context;
- (id)authResultsFromServerResponse:(id)response inContext:(id)context usernameOverride:(id)override passwordOverride:(id)passwordOverride didShowServerUI:(BOOL)i continuationData:(id)data verificationError:(id)error;
- (id)fidoHandler;
- (void)_accountForContinuationWithContext:(id)context completion:(id)completion;
- (void)_attemptBiometricOrPasscodeAuthWithContext:(id)context completion:(id)completion;
- (void)_attemptInteractiveAuthWithContext:(id)context completion:(id)completion;
- (void)_attemptPasswordlessAuthAfterBiometricOrPasscodeValidationWithContext:(id)context promptType:(unint64_t)type completion:(id)completion;
- (void)_attemptPasswordlessAuthOptionsWithContext:(id)context completion:(id)completion;
- (void)_attemptPasswordlessAuthWithContext:(id)context completion:(id)completion;
- (void)_authenticateWithContext:(id)context completion:(id)completion;
- (void)_beginChangePasswordFlowWithAccount:(id)account context:(id)context completion:(id)completion;
- (void)_beginServerDrivenSecondaryActionWithURLKey:(id)key context:(id)context initialAuthResponse:(id)response completion:(id)completion;
- (void)_beginServerUIAppleIDCreationFlowWithContext:(id)context completion:(id)completion;
- (void)_beginiForgotFlowWithContext:(id)context completion:(id)completion;
- (void)_changePasswordAndAuthenticateWithContext:(id)context completion:(id)completion;
- (void)_checkFreshnessAndVerifyWithPassword:(id)password serverResponse:(id)response additionalData:(id)data secondaryActionError:(id)error context:(id)context newServerResponse:(id)serverResponse username:(id)username completion:(id)self0;
- (void)_completeAuthenticationWithServiceTokens:(id)tokens tokenFetchError:(id)error altDSID:(id)d authenticationResults:(id)results context:(id)context completion:(id)completion;
- (void)_configureDeviceListCacheInBackgroundWithContext:(id)context response:(id)response;
- (void)_correlateContext:(id)context withAuthModeInformation:(id)information;
- (void)_createNewAppleIDAndAuthenticateWithContext:(id)context completion:(id)completion;
- (void)_fetchAuthModeInfoWithContext:(id)context completion:(id)completion;
- (void)_fetchDeviceListWithContext:(id)context completion:(id)completion;
- (void)_fetchDeviceSafetyRestrictionStateForAltDSID:(id)d completion:(id)completion;
- (void)_fetchTokensForServiceIDs:(id)ds withUsername:(id)username altDSID:(id)d masterToken:(id)token context:(id)context completion:(id)completion;
- (void)_handleBasicLoginUICompletionWithUsername:(id)username password:(id)password context:(id)context additionalData:(id)data collectionError:(id)error completion:(id)completion;
- (void)_handleCreateNewAppleIDError:(id)error withContext:(id)context andCompletion:(id)completion;
- (void)_handleDeviceListResponseRequestContext:(id)context responseError:(id)error responseData:(id)data completion:(id)completion;
- (void)_handleGrandslamResponse:(id)response data:(id)data error:(id)error serverResponse:(id)serverResponse completion:(id)completion;
- (void)_handleMissingUsernameOrPasswordForContext:(id)context password:(id)password username:(id)username completion:(id)completion;
- (void)_handlePasswordlessAuthResults:(id)results context:(id)context error:(id)error completion:(id)completion;
- (void)_handleRecoverCredentialsError:(id)error withContext:(id)context event:(id)event andCompletion:(id)completion;
- (void)_handleSecondFactorUICompletionWithCode:(id)code error:(id)error idmsData:(id)data initialAuthResponse:(id)response context:(id)context completion:(id)completion;
- (void)_handleSecondFactorUICompletionWithCode:(id)code error:(id)error idmsData:(id)data piggybacking:(BOOL)piggybacking initialAuthResponse:(id)response context:(id)context completion:(id)completion;
- (void)_handleStartFidoAuthWithContext:(id)context fidoContext:(id)fidoContext serverResponse:(id)response completion:(id)completion;
- (void)_handleSuccessfulVerificationForContext:(id)context withResults:(id)results serverResponse:(id)response shouldContinue:(BOOL)continue withError:(id)error completion:(id)completion;
- (void)_handleVerificationCompletionForUsername:(id)username password:(id)password serverResponse:(id)response didShowServerUI:(BOOL)i continuationData:(id)data error:(id)error context:(id)context completion:(id)self0;
- (void)_handleVerificationError:(id)error forContext:(id)context completion:(id)completion;
- (void)_isInteractiveAuthRequiredForContext:(id)context completion:(id)completion;
- (void)_keepLoginAliveWithContext:(id)context error:(id)error andCompletion:(id)completion;
- (void)_performAuthenticationWithContext:(id)context completion:(id)completion;
- (void)_performDeviceListRequestWithContext:(id)context completion:(id)completion;
- (void)_performFidoStartAuthActionWithContext:(id)context serverResponse:(id)response completion:(id)completion;
- (void)_performGrandslamEndpointActionWithContext:(id)context serverResponse:(id)response completion:(id)completion;
- (void)_performInteractiveAuthWithContext:(id)context completion:(id)completion;
- (void)_performPasswordlessAuth:(id)auth completion:(id)completion;
- (void)_performPasswordlessSRPAuthWithAccount:(id)account context:(id)context client:(id)client completion:(id)completion;
- (void)_performPasswordlessSRPAuthWithAccount:(id)account context:(id)context completion:(id)completion;
- (void)_performPasswordlessSRPAuthWithContext:(id)context client:(id)client completion:(id)completion;
- (void)_performPasswordlessSRPAuthWithContext:(id)context completion:(id)completion;
- (void)_performSRPAuthenticationWithContext:(id)context completion:(id)completion;
- (void)_performSafeSRPAuthenticationWithContext:(id)context completion:(id)completion;
- (void)_performSecondaryActionWithServerResponse:(id)response context:(id)context client:(id)client completion:(id)completion;
- (void)_performSecondaryActionWithServerResponse:(id)response context:(id)context completion:(id)completion;
- (void)_performSilentServiceTokenAuthWithContext:(id)context completion:(id)completion;
- (void)_persistGrandSlamServiceTokens:(id)tokens forAltDSID:(id)d DSID:(id)iD appleID:(id)appleID forContext:(id)context error:(id *)error;
- (void)_presentShieldForMigrationWithContext:(id)context completionHandler:(id)handler;
- (void)_presentShieldWithContext:(id)context completionHandler:(id)handler;
- (void)_processValidationCodeSuccessResponse:(id)response authResponse:(id)authResponse results:(id)results completion:(id)completion;
- (void)_provideServiceTokensIfRequiredForContext:(id)context authenticationResults:(id)results serverResponse:(id)response completion:(id)completion;
- (void)_recoverCredentialsAndAuthenticateWithContext:(id)context completion:(id)completion;
- (void)_refreshAuthModeFromServerForContext:(id)context completion:(id)completion;
- (void)_refreshAuthModeIfNecessaryForContext:(id)context completion:(id)completion;
- (void)_refreshLocalAccountAndUpdateContext:(id)context completion:(id)completion;
- (void)_repairAppleIDWithContext:(id)context completion:(id)completion;
- (void)_setAuthKitAccount:(id)account inUse:(BOOL)use forService:(int64_t)service completion:(id)completion;
- (void)_shouldContinueAuthenticatingForUsername:(id)username password:(id)password serverResponse:(id)response didShowServerUI:(BOOL)i continuationData:(id)data error:(id)error context:(id)context completion:(id)self0;
- (void)_showAlertForLoginCodeValidationError:(id)error context:(id)context completion:(id)completion;
- (void)_showAlertForLoginError:(id)error context:(id)context completion:(id)completion;
- (void)_showAlertForVerificationError:(id)error context:(id)context completion:(id)completion;
- (void)_showBiometricOrPasscodeAuthWithContext:(id)context completion:(id)completion;
- (void)_showContinueUsingUIWithContext:(id)context completion:(id)completion;
- (void)_showServerUIWithContext:(id)context completion:(id)completion;
- (void)_showServerUIWithURLRequest:(id)request context:(id)context initialAuthResponse:(id)response urlConfiguration:(id)configuration completion:(id)completion;
- (void)_showServerUIWithURLRequest:(id)request context:(id)context urlConfiguration:(id)configuration completion:(id)completion;
- (void)_unsafe_presentShieldViewServiceWithContext:(id)context completionHandler:(id)handler;
- (void)_updateAltDSIDAndUsername:(id)username;
- (void)_updateDeviceListResponseWithDeviceInfo:(id)info completion:(id)completion;
- (void)_upgradeSecurityLevelWithContext:(id)context completion:(id)completion;
- (void)_validateLoginCode:(unint64_t)code forAltDSID:(id)d masterToken:(id)token idmsData:(id)data authContext:(id)context completion:(id)completion;
- (void)_verifyUsername:(id)username password:(id)password context:(id)context completion:(id)completion;
- (void)accountNamesForAltDSID:(id)d completion:(id)completion;
- (void)activeLoginCode:(id)code;
- (void)authenticateWithContext:(id)context completion:(id)completion;
- (void)checkSecurityUpgradeEligibilityForContext:(id)context completion:(id)completion;
- (void)checkSignInOrCreateFlowShieldingWithCompletion:(id)completion;
- (void)clearSessionCacheWithCompletion:(id)completion;
- (void)configurationInfoWithIdentifiers:(id)identifiers forAltDSID:(id)d completion:(id)completion;
- (void)dealloc;
- (void)deleteAuthorizationDatabaseWithAltDSID:(id)d completion:(id)completion;
- (void)deleteDeviceListCacheWithCompletion:(id)completion;
- (void)deleteDeviceListCacheWithContext:(id)context completion:(id)completion;
- (void)deleteTokensFromCacheWithAltDSID:(id)d tokenIdentifiers:(id)identifiers completion:(id)completion;
- (void)deviceListWithContext:(id)context completion:(id)completion;
- (void)endProximityAuthenticationForContext:(id)context completion:(id)completion;
- (void)fetchAppListWithAltDSID:(id)d completion:(id)completion;
- (void)fetchAuthModeWithContext:(id)context completion:(id)completion;
- (void)fetchBAADeviceTokenWithCompletion:(id)completion;
- (void)fetchBirthdayForAltDSID:(id)d completion:(id)completion;
- (void)fetchGlobalConfigurationUsingPolicy:(unint64_t)policy completion:(id)completion;
- (void)fetchTokensWithAltDSID:(id)d tokenIdentifiers:(id)identifiers completion:(id)completion;
- (void)fetchURLBagForAltDSID:(id)d completion:(id)completion;
- (void)fetchURLBagFromCache:(BOOL)cache altDSID:(id)d completion:(id)completion;
- (void)fetchUserInformationForAltDSID:(id)d completion:(id)completion;
- (void)forceURLBagUpdateForAltDSID:(id)d urlSwitchData:(id)data completion:(id)completion;
- (void)generateLoginCodeWithCompletion:(id)completion;
- (void)getServerUILoadDelegateForAltDSID:(id)d completion:(id)completion;
- (void)getServerUILoadDelegateWithContext:(id)context completion:(id)completion;
- (void)getUserInformationForAltDSID:(id)d completion:(id)completion;
- (void)getUserInformationWithContext:(id)context completion:(id)completion;
- (void)isCreateAppleIDAllowedWithCompletion:(id)completion;
- (void)isDevicePasscodeProtected:(id)protected;
- (void)performCheckInForAccountWithAltDSID:(id)d event:(id)event completion:(id)completion;
- (void)performCheckInForAccountWithAltDSID:(id)d event:(id)event reason:(unint64_t)reason completion:(id)completion;
- (void)performCircleRequestWithContext:(id)context completion:(id)completion;
- (void)performPasswordResetWithContext:(id)context completion:(id)completion;
- (void)performSilentTTRFor:(unint64_t)for completion:(id)completion;
- (void)persistRecoveryKeyWithContext:(id)context authContext:(id)authContext completion:(id)completion;
- (void)piggyback:(id)piggyback handleEscapeHatchError:(id)error completion:(id)completion;
- (void)piggyback:(id)piggyback handleVerificationWithError:(id)error completion:(id)completion;
- (void)piggyback:(id)piggyback promptForRandomCodeWithCompletion:(id)completion;
- (void)piggyback:(id)piggyback shouldContinueWithCompletion:(id)completion;
- (void)piggyback:(id)piggyback validateSecurityCode:(id)code completion:(id)completion;
- (void)refreshAuthMetadataWithContext:(id)context completion:(id)completion;
- (void)refreshBAADeviceTokenWithCompletion:(id)completion;
- (void)renewRecoveryTokenWithContext:(id)context completion:(id)completion;
- (void)reportSignOutForAllAppleIDsWithCompletion:(id)completion;
- (void)reportSignOutForAppleID:(id)d service:(int64_t)service completion:(id)completion;
- (void)revokeAuthorizationForApplicationWithClientID:(id)d completion:(id)completion;
- (void)serverUIContext:(id)context processAdditionalData:(id)data completion:(id)completion;
- (void)setAppleIDWithAltDSID:(id)d inUse:(BOOL)use forService:(int64_t)service completion:(id)completion;
- (void)setAppleIDWithDSID:(id)d inUse:(BOOL)use forService:(int64_t)service completion:(id)completion;
- (void)setConfigurationInfo:(id)info forIdentifier:(id)identifier forAltDSID:(id)d completion:(id)completion;
- (void)startPiggybackingForServerResponse:(id)response context:(id)context password:(id)password username:(id)username completion:(id)completion;
- (void)synchronizeFollowUpItemsForContext:(id)context completion:(id)completion;
- (void)teardownFollowUpWithContext:(id)context completion:(id)completion;
- (void)updateStateWithExternalAuthenticationResponse:(id)response forAppleID:(id)d completion:(id)completion;
- (void)updateStateWithExternalAuthenticationResponse:(id)response forContext:(id)context completion:(id)completion;
- (void)updateUserInformationForAltDSID:(id)d userInformation:(id)information completion:(id)completion;
- (void)updateUserInformationWithContext:(id)context userInformation:(id)information completion:(id)completion;
- (void)validateLoginCode:(unint64_t)code forAppleID:(id)d withCompletion:(id)completion;
- (void)validateVettingToken:(id)token forAltDSID:(id)d completion:(id)completion;
- (void)verifyMasterKey:(id)key withContext:(id)context completion:(id)completion;
- (void)warmUpVerificationSessionWithCompletion:(id)completion;
@end

@implementation AKAppleIDAuthenticationService

- (void)dealloc
{
  selfCopy = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v6 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v10, "[AKAppleIDAuthenticationService dealloc]", 215);
    _os_log_debug_impl(&_mh_execute_header, location[0], v6, "%s (%d) called", v10, 0x12u);
  }

  objc_storeStrong(location, 0);
  v5 = _objc_retain(selfCopy->_activeProximityAuthenticationToken);
  if (v5)
  {
    oslog = _AKLogSystem();
    v3 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_10001B098(v9, selfCopy->proximityServiceProvider, v5);
      _os_log_debug_impl(&_mh_execute_header, oslog, v3, "Calling to end authentication for service provider: %@ with token: %@", v9, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    [(ProximityAuthServiceProvider *)selfCopy->proximityServiceProvider endAuthenticationWithToken:v5];
  }

  objc_storeStrong(&v5, 0);
  v2.receiver = selfCopy;
  v2.super_class = AKAppleIDAuthenticationService;
  [(AKAppleIDAuthenticationService *)&v2 dealloc];
}

- (AKAppleIDAuthenticationService)init
{
  v19 = a2;
  v20 = 0;
  v18.receiver = self;
  v18.super_class = AKAppleIDAuthenticationService;
  v20 = [(AKAppleIDAuthenticationService *)&v18 init];
  objc_storeStrong(&v20, v20);
  if (v20)
  {
    v2 = +[AKAccountManager sharedInstance];
    accountManager = v20->_accountManager;
    v20->_accountManager = v2;
    _objc_release(accountManager);
    v4 = +[AKTokenManager sharedInstance];
    tokenManager = v20->_tokenManager;
    v20->_tokenManager = v4;
    _objc_release(tokenManager);
    v6 = +[AKAuthenticationUILiaison sharedInstance];
    authUILiaison = v20->_authUILiaison;
    v20->_authUILiaison = v6;
    _objc_release(authUILiaison);
    v8 = +[AKAuthenticationTrafficController sharedInstance];
    authTrafficController = v20->_authTrafficController;
    v20->_authTrafficController = v8;
    _objc_release(authTrafficController);
    v17 = [NSURL URLWithString:@"https://gsa.apple.com/grandslam/GsService2/lookup/v2"];
    host = [(NSURL *)v17 host];
    v10 = [CUTReachability reachabilityWithHostName:?];
    reachability = v20->_reachability;
    v20->_reachability = v10;
    _objc_release(reachability);
    _objc_release(host);
    _objc_release(v17);
    v12 = +[AKProximityAuthFlowController shared];
    proximityServiceProvider = v20->proximityServiceProvider;
    v20->proximityServiceProvider = v12;
    _objc_release(proximityServiceProvider);
  }

  v15 = _objc_retain(v20);
  objc_storeStrong(&v20, 0);
  return v15;
}

- (AKAppleIDAuthenticationService)initWithClient:(id)client passwordResetPresenter:(id)presenter
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v9 = 0;
  objc_storeStrong(&v9, presenter);
  v7 = selfCopy;
  v8 = objc_alloc_init(AKAppleIDAuthSupportProxyImpl);
  selfCopy = 0;
  selfCopy = [(AKAppleIDAuthenticationService *)v7 initWithProxy:?];
  objc_storeStrong(&selfCopy, selfCopy);
  _objc_release(v8);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_client, location[0]);
    objc_storeStrong(&selfCopy->_passwordResetPresenter, v9);
  }

  v5 = _objc_retain(selfCopy);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (AKAppleIDAuthenticationService)initWithProxy:(id)proxy
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, proxy);
  v3 = selfCopy;
  selfCopy = 0;
  selfCopy = [(AKAppleIDAuthenticationService *)v3 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_authProxy, location[0]);
  }

  v5 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

+ (id)_verificationQueue
{
  v5 = &unk_100374750;
  location = 0;
  objc_storeStrong(&location, &stru_1003217A8);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100374748;

  return v2;
}

- (void)accountNamesForAltDSID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v22 = 0;
  objc_storeStrong(&v22, completion);
  if ([(AKClient *)selfCopy->_client hasInternalAccess])
  {
    v6 = +[AKUserInfoController sharedController];
    v4 = location[0];
    client = selfCopy->_client;
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_10008C3F0;
    v16 = &unk_100320EF0;
    v17 = _objc_retain(v22);
    [v6 fetchUserInformationForAltDSID:v4 client:client completion:&v12];
    _objc_release(v6);
    objc_storeStrong(&v17, 0);
    v18 = 0;
  }

  else
  {
    v21 = _AKLogSystem();
    v20 = 16;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      log = v21;
      type = v20;
      sub_10001CEEC(v19);
      _os_log_error_impl(&_mh_execute_header, log, type, "Internal access entitlement required but missing!", v19, 2u);
    }

    objc_storeStrong(&v21, 0);
    v7 = v22;
    v8 = [NSError ak_errorWithCode:-7026];
    v7[2](v7, 0);
    _objc_release(v8);
    v18 = 1;
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)endProximityAuthenticationForContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v8 = 0;
  objc_storeStrong(&v8, completion);
  v7 = _AKLogSystem();
  v6 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v12, "[AKAppleIDAuthenticationService endProximityAuthenticationForContext:completion:]", 249);
    _os_log_debug_impl(&_mh_execute_header, v7, v6, "%s (%d) called", v12, 0x12u);
  }

  objc_storeStrong(&v7, 0);
  if (selfCopy->proximityServiceProvider)
  {
    [(ProximityAuthServiceProvider *)selfCopy->proximityServiceProvider endAuthenticationWithCompletion:v8];
  }

  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v11, selfCopy->_activeProximityAuthenticationToken);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Nullifying active prox auth token: %@", v11, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&selfCopy->_activeProximityAuthenticationToken, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchURLBagForAltDSID:(id)d completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v6 = 0;
  objc_storeStrong(&v6, completion);
  v5 = +[AKURLBagService sharedBagService];
  [v5 fetchURLBagForAltDSID:location[0] completion:v6];
  _objc_release(v5);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchURLBagFromCache:(BOOL)cache altDSID:(id)d completion:(id)completion
{
  selfCopy = self;
  v10 = a2;
  cacheCopy = cache;
  location = 0;
  objc_storeStrong(&location, d);
  v7 = 0;
  objc_storeStrong(&v7, completion);
  v6 = +[AKURLBagService sharedBagService];
  [v6 fetchURLBagForAltDSID:location fromCache:cacheCopy completion:v7];
  _objc_release(v6);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&location, 0);
}

- (void)forceURLBagUpdateForAltDSID:(id)d urlSwitchData:(id)data completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v9 = 0;
  objc_storeStrong(&v9, data);
  v8 = 0;
  objc_storeStrong(&v8, completion);
  v7 = +[AKURLBagService sharedBagService];
  [v7 forceURLBagUpdateForAltDSID:location[0] urlSwitchData:v9 completion:v8];
  _objc_release(v7);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)setAppleIDWithAltDSID:(id)d inUse:(BOOL)use forService:(int64_t)service completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  useCopy = use;
  serviceCopy = service;
  v27 = 0;
  objc_storeStrong(&v27, completion);
  if (location[0])
  {
    queue = [objc_opt_class() _verificationQueue];
    v14 = _NSConcreteStackBlock;
    v15 = -1073741824;
    v16 = 0;
    v17 = sub_10008CB88;
    v18 = &unk_1003217D0;
    v19 = _objc_retain(selfCopy);
    v20 = _objc_retain(location[0]);
    v21[0] = _objc_retain(v27);
    v22 = useCopy;
    v21[1] = serviceCopy;
    dispatch_async(queue, &v14);
    _objc_release(queue);
    objc_storeStrong(v21, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v19, 0);
    v23 = 0;
  }

  else
  {
    v26 = _AKLogSystem();
    v25 = 16;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      log = v26;
      type = v25;
      sub_10001CEEC(v24);
      _os_log_error_impl(&_mh_execute_header, log, type, "No altDSID was provided.", v24, 2u);
    }

    objc_storeStrong(&v26, 0);
    v7 = v27;
    v8 = [NSError ak_errorWithCode:-7025];
    v7[2](v7, 0);
    _objc_release(v8);
    v23 = 1;
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
}

- (void)setAppleIDWithDSID:(id)d inUse:(BOOL)use forService:(int64_t)service completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  useCopy = use;
  serviceCopy = service;
  v27 = 0;
  objc_storeStrong(&v27, completion);
  if (location[0])
  {
    queue = [objc_opt_class() _verificationQueue];
    v14 = _NSConcreteStackBlock;
    v15 = -1073741824;
    v16 = 0;
    v17 = sub_10008CFF8;
    v18 = &unk_1003217D0;
    v19 = _objc_retain(selfCopy);
    v20 = _objc_retain(location[0]);
    v21[0] = _objc_retain(v27);
    v22 = useCopy;
    v21[1] = serviceCopy;
    dispatch_async(queue, &v14);
    _objc_release(queue);
    objc_storeStrong(v21, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v19, 0);
    v23 = 0;
  }

  else
  {
    v26 = _AKLogSystem();
    v25 = 16;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      log = v26;
      type = v25;
      sub_10001CEEC(v24);
      _os_log_error_impl(&_mh_execute_header, log, type, "No DSID was provided.", v24, 2u);
    }

    objc_storeStrong(&v26, 0);
    v7 = v27;
    v8 = [NSError ak_errorWithCode:-7050];
    v7[2](v7, 0);
    _objc_release(v8);
    v23 = 1;
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
}

- (void)_setAuthKitAccount:(id)account inUse:(BOOL)use forService:(int64_t)service completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  useCopy = use;
  serviceCopy = service;
  v55 = 0;
  objc_storeStrong(&v55, completion);
  if ([(AKClient *)selfCopy->_client hasInternalPrivateAccess]|| [(AKClient *)selfCopy->_client hasWriteAccess])
  {
    if (serviceCopy)
    {
      v47 = 0;
      v17 = 0;
      if (!useCopy)
      {
        v48 = [(AKAccountManager *)selfCopy->_accountManager servicesUsingAccount:location[0]];
        v47 = 1;
        v17 = [v48 count] == 0;
      }

      if (v47)
      {
        _objc_release(v48);
      }

      if (v17)
      {
        v46 = _AKLogSystem();
        v45 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v16 = [NSNumber numberWithInteger:serviceCopy];
          sub_1000194D4(v61, v16);
          _os_log_error_impl(&_mh_execute_header, v46, v45, "Told to mark service %@ as not using account, but already not using!", v61, 0xCu);
          _objc_release(v16);
        }

        objc_storeStrong(&v46, 0);
        (*(v55 + 2))();
        v51 = 1;
      }

      else
      {
        v44 = _AKLogSystem();
        v43 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v6 = [NSNumber numberWithInteger:serviceCopy];
          v15 = v6;
          if (useCopy)
          {
            v7 = &stru_100330538;
          }

          else
          {
            v7 = @"not";
          }

          sub_10004DCC8(v60, v6, v7, location[0]);
          _os_log_impl(&_mh_execute_header, v44, v43, "Marking service %@ as %@ using account %@.", v60, 0x20u);
          _objc_release(v15);
        }

        objc_storeStrong(&v44, 0);
        [(AKAccountManager *)selfCopy->_accountManager setAccount:location[0] inUse:useCopy byService:serviceCopy];
        v42 = [(AKAccountManager *)selfCopy->_accountManager servicesUsingAccount:location[0]];
        if ([v42 count])
        {
          v30 = 0;
          accountManager = selfCopy->_accountManager;
          v28 = 0;
          v10 = [(AKAccountManager *)accountManager saveAccount:location[0] error:&v28];
          objc_storeStrong(&v30, v28);
          v29 = v10;
          if (useCopy)
          {
            (*(v55 + 2))();
          }

          else
          {
            v9 = +[AKAppleIDCheckInHelperService sharedService];
            [v9 reportSignOutEventForService:serviceCopy account:location[0] completion:v55];
            _objc_release(v9);
          }

          objc_storeStrong(&v30, 0);
        }

        else
        {
          oslog = _AKLogSystem();
          v40 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            v13 = oslog;
            v14 = v40;
            sub_10001CEEC(v39);
            _os_log_impl(&_mh_execute_header, v13, v14, "Global signout.", v39, 2u);
          }

          objc_storeStrong(&oslog, 0);
          v12 = +[AKAppleIDCheckInHelperService sharedService];
          v11 = location[0];
          v31 = _NSConcreteStackBlock;
          v32 = -1073741824;
          v33 = 0;
          v34 = sub_10008DDD0;
          v35 = &unk_1003217F8;
          v36 = _objc_retain(location[0]);
          v37 = _objc_retain(selfCopy);
          v38 = _objc_retain(v55);
          [v12 reportFinalSignOutEventForAccount:v11 completion:&v31];
          _objc_release(v12);
          objc_storeStrong(&v38, 0);
          objc_storeStrong(&v37, 0);
          objc_storeStrong(&v36, 0);
        }

        objc_storeStrong(&v42, 0);
        v51 = 0;
      }
    }

    else
    {
      v50 = _AKLogSystem();
      v49 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        v20 = [NSNumber numberWithInteger:serviceCopy];
        sub_1000194D4(v62, v20);
        _os_log_error_impl(&_mh_execute_header, v50, v49, "Service type %@ is not valid.", v62, 0xCu);
        _objc_release(v20);
      }

      objc_storeStrong(&v50, 0);
      v19 = v55;
      v18 = [NSError ak_errorWithCode:-7049];
      v19[2](v19, 0);
      _objc_release(v18);
      v51 = 1;
    }
  }

  else
  {
    v54 = _AKLogSystem();
    v53 = 16;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      log = v54;
      type = v53;
      sub_10001CEEC(v52);
      _os_log_error_impl(&_mh_execute_header, log, type, "Internal/Private/Write access entitlement required but missing!", v52, 2u);
    }

    objc_storeStrong(&v54, 0);
    v22 = v55;
    v21 = [NSError ak_errorWithCode:-7026];
    v22[2](v22, 0);
    _objc_release(v21);
    v51 = 1;
  }

  objc_storeStrong(&v55, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchUserInformationForAltDSID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v22 = 0;
  objc_storeStrong(&v22, completion);
  if ([(AKClient *)selfCopy->_client hasInternalPrivateAccess])
  {
    v6 = +[AKUserInfoController sharedController];
    v4 = location[0];
    client = selfCopy->_client;
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_10008E3D8;
    v16 = &unk_100320EF0;
    v17 = _objc_retain(v22);
    [v6 fetchUserInformationForAltDSID:v4 client:client completion:&v12];
    _objc_release(v6);
    objc_storeStrong(&v17, 0);
    v18 = 0;
  }

  else
  {
    v21 = _AKLogSystem();
    v20 = 16;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      log = v21;
      type = v20;
      sub_10001CEEC(v19);
      _os_log_error_impl(&_mh_execute_header, log, type, "Internal/Private access entitlement required but missing!", v19, 2u);
    }

    objc_storeStrong(&v21, 0);
    v7 = v22;
    v8 = [NSError ak_errorWithCode:-7026];
    v7[2](v7, 0);
    _objc_release(v8);
    v18 = 1;
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)getUserInformationWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v22 = 0;
  objc_storeStrong(&v22, completion);
  if ([(AKClient *)selfCopy->_client hasInternalPrivateAccess])
  {
    v6 = +[AKUserInfoController sharedController];
    v4 = location[0];
    client = selfCopy->_client;
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_10008E6DC;
    v16 = &unk_100320EF0;
    v17 = _objc_retain(v22);
    [v6 fetchUserInformationWithContext:v4 client:client completion:&v12];
    _objc_release(v6);
    objc_storeStrong(&v17, 0);
    v18 = 0;
  }

  else
  {
    v21 = _AKLogSystem();
    v20 = 16;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      log = v21;
      type = v20;
      sub_10001CEEC(v19);
      _os_log_error_impl(&_mh_execute_header, log, type, "Internal/Private access entitlement required but missing!", v19, 2u);
    }

    objc_storeStrong(&v21, 0);
    v7 = v22;
    v8 = [NSError ak_errorWithCode:-7026];
    v7[2](v7, 0);
    _objc_release(v8);
    v18 = 1;
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)getUserInformationForAltDSID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v22 = 0;
  objc_storeStrong(&v22, completion);
  if ([(AKClient *)selfCopy->_client hasInternalPrivateAccess])
  {
    v6 = +[AKUserInfoController sharedController];
    v4 = location[0];
    client = selfCopy->_client;
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_10008E9F0;
    v16 = &unk_100320EF0;
    v17 = _objc_retain(v22);
    [v6 fetchUserInformationForAltDSID:v4 client:client completion:&v12];
    _objc_release(v6);
    objc_storeStrong(&v17, 0);
    v18 = 0;
  }

  else
  {
    v21 = _AKLogSystem();
    v20 = 16;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      log = v21;
      type = v20;
      sub_10001CEEC(v19);
      _os_log_error_impl(&_mh_execute_header, log, type, "Internal/Private access entitlement required but missing!", v19, 2u);
    }

    objc_storeStrong(&v21, 0);
    v7 = v22;
    v8 = [NSError ak_errorWithCode:-7026];
    v7[2](v7, 0);
    _objc_release(v8);
    v18 = 1;
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)updateUserInformationForAltDSID:(id)d userInformation:(id)information completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v16 = 0;
  objc_storeStrong(&v16, information);
  v15 = 0;
  objc_storeStrong(&v15, completion);
  if ([(AKClient *)selfCopy->_client hasInternalAccess]|| [(AKClient *)selfCopy->_client hasOwnerAccess])
  {
    v5 = +[AKUserInfoController sharedController];
    [v5 updateUserInformationForAltDSID:location[0] userInformation:v16 completion:v15];
    _objc_release(v5);
  }

  else
  {
    v14 = _AKLogSystem();
    v13 = 16;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      log = v14;
      type = v13;
      sub_10001CEEC(v12);
      _os_log_error_impl(&_mh_execute_header, log, type, "Internal/Owner access entitlement required but missing!", v12, 2u);
    }

    objc_storeStrong(&v14, 0);
    v6 = v15;
    v7 = [NSError ak_errorWithCode:-7026];
    v6[2](v6, 0);
    _objc_release(v7);
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)updateUserInformationWithContext:(id)context userInformation:(id)information completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v27 = 0;
  objc_storeStrong(&v27, information);
  v26 = 0;
  objc_storeStrong(&v26, completion);
  if (location[0])
  {
    if (v27)
    {
      if ([(AKClient *)selfCopy->_client hasInternalAccess]|| [(AKClient *)selfCopy->_client hasOwnerAccess])
      {
        v5 = +[AKUserInfoController sharedController];
        [v5 updateUserInformationWithContext:location[0] userInformation:v27 client:selfCopy->_client completion:v26];
        _objc_release(v5);
        v22 = 0;
      }

      else
      {
        v18 = _AKLogSystem();
        v17 = 16;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v8 = v18;
          v9 = v17;
          sub_10001CEEC(v16);
          _os_log_error_impl(&_mh_execute_header, v8, v9, "Internal/Owner access entitlement required but missing!", v16, 2u);
        }

        objc_storeStrong(&v18, 0);
        if (v26)
        {
          v6 = v26;
          v7 = [NSError ak_errorWithCode:-7026];
          v6[2](v6, 0);
          _objc_release(v7);
        }

        v22 = 1;
      }
    }

    else
    {
      v10 = AKAppleIDAuthenticationErrorDomain;
      v31 = NSLocalizedDescriptionKey;
      v32 = @"User information is required";
      v11 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v21 = [NSError errorWithDomain:v10 code:-7056 userInfo:?];
      _objc_release(v11);
      v20 = _AKLogSystem();
      v19 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000333DC(v30, v21);
        _os_log_error_impl(&_mh_execute_header, v20, v19, "Update user info failed with error: %{public}@", v30, 0xCu);
      }

      objc_storeStrong(&v20, 0);
      if (v26)
      {
        (*(v26 + 2))(v26, 0, v21);
      }

      v22 = 1;
      objc_storeStrong(&v21, 0);
    }
  }

  else
  {
    v12 = AKAppleIDAuthenticationErrorDomain;
    v34 = NSLocalizedDescriptionKey;
    v35 = @"Authentication context is required";
    v13 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v25 = [NSError errorWithDomain:v12 code:-7056 userInfo:?];
    _objc_release(v13);
    v24 = _AKLogSystem();
    v23 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_1000333DC(v33, v25);
      _os_log_error_impl(&_mh_execute_header, v24, v23, "Update user info failed with error: %{public}@", v33, 0xCu);
    }

    objc_storeStrong(&v24, 0);
    if (v26)
    {
      (*(v26 + 2))(v26, 0, v25);
    }

    v22 = 1;
    objc_storeStrong(&v25, 0);
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchAuthModeWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v13 = 0;
  objc_storeStrong(&v13, completion);
  v6 = selfCopy;
  v5 = location[0];
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_10008F2B8;
  v11 = &unk_100321820;
  v12 = _objc_retain(v13);
  [(AKAppleIDAuthenticationService *)v6 _fetchAuthModeInfoWithContext:v5 completion:?];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)_fetchAuthModeInfoWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v17 = 0;
  objc_storeStrong(&v17, completion);
  v16 = objc_opt_new();
  v7 = v16;
  v5 = location[0];
  client = selfCopy->_client;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10008F504;
  v11 = &unk_100321870;
  v12 = _objc_retain(v16);
  v13 = _objc_retain(selfCopy);
  v14 = _objc_retain(location[0]);
  v15 = _objc_retain(v17);
  [v7 fetchAuthModeWithContext:v5 client:client completion:?];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_shouldShowAlertForAuthModeError:(id)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v5 = location[0] && ([location[0] code] == -7093 || objc_msgSend(location[0], "code") == -7094);
  objc_storeStrong(location, 0);
  return v5;
}

- (void)_fetchDeviceSafetyRestrictionStateForAltDSID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v23 = 0;
  objc_storeStrong(&v23, completion);
  v22 = _AKLogSystem();
  v21 = 2;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    log = v22;
    type = v21;
    sub_10001CEEC(v20);
    _os_log_debug_impl(&_mh_execute_header, log, type, "Fetching Device Info to get device restriction state", v20, 2u);
  }

  objc_storeStrong(&v22, 0);
  v19 = objc_opt_new();
  [v19 setAltDSID:location[0]];
  v4 = [AKGrandSlamRequestProvider alloc];
  v18 = [(AKURLRequestProviderImpl *)v4 initWithContext:v19 urlBagKey:AKURLBagKeyDeviceInfo];
  [(AKURLRequestProviderImpl *)v18 setClient:selfCopy->_client];
  [(AKGrandSlamRequestProvider *)v18 setAuthenticatedRequest:1];
  [(AKGrandSlamRequestProvider *)v18 setExpectedResponseType:1];
  v5 = [AKServiceControllerImpl alloc];
  v17 = [(AKServiceControllerImpl *)v5 initWithRequestProvider:v18];
  v6 = v17;
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_10008FAC0;
  v14 = &unk_100321898;
  v16 = _objc_retain(v23);
  v15 = _objc_retain(location[0]);
  [(AKServiceControllerImpl *)v6 executeRequestWithCompletion:&v10];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateDeviceListResponseWithDeviceInfo:(id)info completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, info);
  v28 = 0;
  objc_storeStrong(&v28, completion);
  v12 = +[AKFeatureManager sharedManager];
  isDTOEnabled = [v12 isDTOEnabled];
  _objc_release(v12);
  if (isDTOEnabled)
  {
    v7 = +[AKConfiguration sharedConfiguration];
    deviceSafetyRestrictionReasonOverride = [v7 deviceSafetyRestrictionReasonOverride];
    _objc_release(v7);
    v23 = deviceSafetyRestrictionReasonOverride;
    if (deviceSafetyRestrictionReasonOverride)
    {
      v6 = +[AKDevice currentDevice];
      serialNumber = [v6 serialNumber];
      _objc_release(v6);
      v21 = [[AKDeviceSafetyRestrictionState alloc] initWithDeviceMID:0 serialNumber:serialNumber restrictionReason:v23];
      [location[0] updateWithDeviceRestrictionState:v21];
      if (v28)
      {
        (*(v28 + 2))(v28, location[0], 0);
      }

      v24 = 1;
      objc_storeStrong(&v21, 0);
      objc_storeStrong(&serialNumber, 0);
    }

    else
    {
      v4 = selfCopy;
      altDSID = [location[0] altDSID];
      v14 = _NSConcreteStackBlock;
      v15 = -1073741824;
      v16 = 0;
      v17 = sub_100090360;
      v18 = &unk_1003218C0;
      v20 = _objc_retain(v28);
      v19 = _objc_retain(location[0]);
      [(AKAppleIDAuthenticationService *)v4 _fetchDeviceSafetyRestrictionStateForAltDSID:altDSID completion:&v14];
      _objc_release(altDSID);
      objc_storeStrong(&v19, 0);
      objc_storeStrong(&v20, 0);
      v24 = 0;
    }
  }

  else
  {
    v27 = _AKLogSystem();
    v26 = 16;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      log = v27;
      type = v26;
      sub_10001CEEC(v25);
      _os_log_error_impl(&_mh_execute_header, log, type, "fetchDeviceSafetyState set but AuthKit/DTO feature flag is not turned on", v25, 2u);
    }

    objc_storeStrong(&v27, 0);
    if (v28)
    {
      (*(v28 + 2))(v28, location[0], 0);
    }

    v24 = 1;
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

- (void)deviceListWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v34 = 0;
  objc_storeStrong(&v34, completion);
  if ([(AKClient *)selfCopy->_client hasInternalPrivateAccess])
  {
    v21 = _NSConcreteStackBlock;
    v22 = -1073741824;
    v23 = 0;
    v24 = sub_1000908E4;
    v25 = &unk_1003218E8;
    v28 = _objc_retain(v34);
    v26 = _objc_retain(location[0]);
    v27 = _objc_retain(selfCopy);
    v29 = objc_retainBlock(&v21);
    v6 = +[AKFeatureManager sharedManager];
    isDeviceListCacheEnabled = [v6 isDeviceListCacheEnabled];
    _objc_release(v6);
    if (isDeviceListCacheEnabled)
    {
      [(AKAppleIDAuthenticationService *)selfCopy _fetchDeviceListWithContext:location[0] completion:v29];
    }

    else
    {
      v5 = selfCopy;
      v4 = location[0];
      v13 = _NSConcreteStackBlock;
      v14 = -1073741824;
      v15 = 0;
      v16 = sub_100090ABC;
      v17 = &unk_100321938;
      v18 = _objc_retain(location[0]);
      v19 = _objc_retain(selfCopy);
      v20 = _objc_retain(v29);
      [(AKAppleIDAuthenticationService *)v5 _performDeviceListRequestWithContext:v4 completion:&v13];
      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v19, 0);
      objc_storeStrong(&v18, 0);
    }

    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v28, 0);
    v30 = 0;
  }

  else
  {
    v33 = _AKLogSystem();
    v32 = 16;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      log = v33;
      type = v32;
      sub_10001CEEC(v31);
      _os_log_error_impl(&_mh_execute_header, log, type, "Internal/Private access entitlement required but missing!", v31, 2u);
    }

    objc_storeStrong(&v33, 0);
    if (v34)
    {
      v8 = v34;
      v9 = [NSError ak_errorWithCode:-7026];
      v8[2](v8, 0);
      _objc_release(v9);
    }

    v30 = 1;
  }

  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
}

- (void)_performDeviceListRequestWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v15 = 0;
  objc_storeStrong(&v15, completion);
  authTrafficController = selfCopy->_authTrafficController;
  v5 = location[0];
  client = selfCopy->_client;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10009101C;
  v11 = &unk_100320558;
  v12 = _objc_retain(selfCopy);
  v13 = _objc_retain(location[0]);
  v14 = _objc_retain(v15);
  [(AKAuthenticationTrafficController *)authTrafficController beginAuthenticatedRequestWithContext:v5 client:client clearanceHandler:?];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (id)_deviceListProviderWithContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v3 = [AKDeviceListRequestProvider alloc];
  v7 = [(AKURLRequestProviderImpl *)v3 initWithContext:location[0] urlBagKey:AKURLBagKeyDeviceList];
  [(AKDeviceListRequestProvider *)v7 setDeviceRequestContext:location[0]];
  [(AKGrandSlamRequestProvider *)v7 setAuthenticatedRequest:1];
  concreteAuthenticationContext = [(AKURLRequestProviderImpl *)v7 concreteAuthenticationContext];
  [(AKAppleIDAuthenticationContext *)concreteAuthenticationContext set_shouldSendGrandSlamTokensForRemoteUI:1];
  _objc_release(concreteAuthenticationContext);
  [(AKURLRequestProviderImpl *)v7 setClient:selfCopy->_client];
  v6 = _objc_retain(v7);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (void)_handleDeviceListResponseRequestContext:(id)context responseError:(id)error responseData:(id)data completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v26 = 0;
  objc_storeStrong(&v26, error);
  v25 = 0;
  objc_storeStrong(&v25, data);
  v24 = 0;
  objc_storeStrong(&v24, completion);
  if (v26)
  {
    v23 = _AKLogSystem();
    v22 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v31, v26);
      _os_log_error_impl(&_mh_execute_header, v23, v22, "Failed to fetch devices with error: %@", v31, 0xCu);
    }

    objc_storeStrong(&v23, 0);
    if (v24)
    {
      (*(v24 + 2))(v24, 0, v26);
    }
  }

  else
  {
    v21 = [AAFSerialization dictionaryFromObject:v25 ofType:@"application/json"];
    v20 = [AKDeviceListResponse deviceMapFromResponseBody:v21];
    v8 = objc_opt_class();
    altDSID = [location[0] altDSID];
    v9 = [v20 objectForKeyedSubscript:?];
    v19 = sub_1000919F0(v8, v9);
    _objc_release(v9);
    _objc_release(altDSID);
    deviceList = [v19 deviceList];
    _objc_release(deviceList);
    if (deviceList)
    {
      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000194D4(v29, location[0]);
        _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Fetched device list for %@", v29, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v6 = +[AKFeatureManager sharedManager];
      isDeviceListCacheEnableDryMode = [v6 isDeviceListCacheEnableDryMode];
      _objc_release(v6);
      if (isDeviceListCacheEnableDryMode)
      {
        [(AKAppleIDAuthenticationService *)selfCopy _configureDeviceListCacheInBackgroundWithContext:location[0] response:v19];
      }

      if (v24)
      {
        (*(v24 + 2))(v24, v19, 0);
      }
    }

    else
    {
      v18 = _AKLogSystem();
      v17 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_1000194D4(v30, location[0]);
        _os_log_debug_impl(&_mh_execute_header, v18, v17, "No devices found for context: %@", v30, 0xCu);
      }

      objc_storeStrong(&v18, 0);
      v16 = [NSError ak_deviceListErrorWithCode:-14002];
      if (v24)
      {
        (*(v24 + 2))(v24, 0, v16);
      }

      objc_storeStrong(&v16, 0);
    }

    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

- (void)_configureDeviceListCacheInBackgroundWithContext:(id)context response:(id)response
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v14 = 0;
  objc_storeStrong(&v14, response);
  queue = dispatch_get_global_queue(9, 0);
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_100091C00;
  v10 = &unk_10031F050;
  v11 = _objc_retain(location[0]);
  v12 = _objc_retain(selfCopy);
  v13 = _objc_retain(v14);
  dispatch_async(queue, &v6);
  _objc_release(queue);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchAppListWithAltDSID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v13 = 0;
  objc_storeStrong(&v13, completion);
  if ([(AKClient *)selfCopy->_client hasOwnerAccess])
  {
    v4 = +[AKApplicationInformationController sharedController];
    [v4 fetchAppInformationWithAltDSID:location[0] client:selfCopy->_client completion:v13];
    _objc_release(v4);
  }

  else
  {
    v12 = _AKLogSystem();
    v11 = 16;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      log = v12;
      type = v11;
      sub_10001CEEC(v10);
      _os_log_error_impl(&_mh_execute_header, log, type, "Owner access entitlement required but missing!", v10, 2u);
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

- (void)deleteAuthorizationDatabaseWithAltDSID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  if ([(AKClient *)selfCopy->_client hasInternalAccess]|| [(AKClient *)selfCopy->_client hasOwnerAccess])
  {
    v11 = 0;
    v4 = +[AKAuthorizationStoreManager sharedInstance];
    v10 = v11;
    [(AKAuthorizationStoreManager *)v4 clearDatabaseWithAltDSID:location[0] error:&v10];
    objc_storeStrong(&v11, v10);
    _objc_release(v4);
    if (v11)
    {
      (*(v16 + 2))(v16, 0, v11);
    }

    else
    {
      (*(v16 + 2))(v16, 1, 0);
    }

    objc_storeStrong(&v11, 0);
    v12 = 0;
  }

  else
  {
    v15 = _AKLogSystem();
    v14 = 16;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      log = v15;
      type = v14;
      sub_10001CEEC(v13);
      _os_log_error_impl(&_mh_execute_header, log, type, "Owner/Internal access entitlement required but missing!", v13, 2u);
    }

    objc_storeStrong(&v15, 0);
    v5 = v16;
    v6 = [NSError ak_errorWithCode:-7026];
    v5[2](v5, 0);
    _objc_release(v6);
    v12 = 1;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)revokeAuthorizationForApplicationWithClientID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v13 = 0;
  objc_storeStrong(&v13, completion);
  if ([(AKClient *)selfCopy->_client hasInternalAccess]|| [(AKClient *)selfCopy->_client hasOwnerAccess])
  {
    v4 = objc_opt_new();
    [v4 revokeAuthorizationForApplicationWithClientID:location[0] completion:v13];
    _objc_release(v4);
  }

  else
  {
    v12 = _AKLogSystem();
    v11 = 16;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      log = v12;
      type = v11;
      sub_10001CEEC(v10);
      _os_log_error_impl(&_mh_execute_header, log, type, "Owner/Internal access entitlement required but missing!", v10, 2u);
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

- (void)performSilentTTRFor:(unint64_t)for completion:(id)completion
{
  selfCopy = self;
  v7 = a2;
  forCopy = for;
  location = 0;
  objc_storeStrong(&location, completion);
  v4 = +[AKTTRController sharedController];
  [v4 performSilentTTRFor:forCopy completion:location];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(&location, 0);
}

- (void)warmUpVerificationSessionWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  if ([(AKClient *)selfCopy->_client hasInternalAccess]|| [(AKClient *)selfCopy->_client hasOwnerAccess])
  {
    v12 = _AKLogSystem();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v12;
      v4 = v11;
      sub_10001CEEC(v10);
      _os_log_impl(&_mh_execute_header, v3, v4, "Starting WarmUp verification ...", v10, 2u);
    }

    objc_storeStrong(&v12, 0);
    v9 = [[AKSatoriController alloc] initWithClient:0];
    [(AKSatoriController *)v9 warmUpVerificationSessionWithCompletionHandler:location[0]];
    objc_storeStrong(&v9, 0);
    v13 = 0;
  }

  else
  {
    v16 = _AKLogSystem();
    v15 = 16;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      log = v16;
      type = v15;
      sub_10001CEEC(v14);
      _os_log_error_impl(&_mh_execute_header, log, type, "Owner/Internal access entitlement required but missing!", v14, 2u);
    }

    objc_storeStrong(&v16, 0);
    v5 = location[0];
    v6 = [NSError ak_errorWithCode:-7026];
    v5[2](v5, 0);
    _objc_release(v6);
    v13 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)setConfigurationInfo:(id)info forIdentifier:(id)identifier forAltDSID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, info);
  v31 = 0;
  objc_storeStrong(&v31, identifier);
  v30 = 0;
  objc_storeStrong(&v30, d);
  v29 = 0;
  objc_storeStrong(&v29, completion);
  if ([(AKClient *)selfCopy->_client hasInternalPrivateAccess]|| [(AKClient *)selfCopy->_client hasWriteAccess])
  {
    v24 = +[AKUserConfigController sharedController];
    v10 = v24;
    v6 = v30;
    client = selfCopy->_client;
    v8 = location[0];
    v9 = v31;
    v18 = _NSConcreteStackBlock;
    v19 = -1073741824;
    v20 = 0;
    v21 = sub_100092B00;
    v22 = &unk_100321230;
    v23 = _objc_retain(v29);
    [v10 setUserConfigForAltDSID:v6 client:client configurationInfo:v8 forIdentifier:v9 completion:&v18];
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
    v25 = 0;
  }

  else
  {
    v28 = _AKLogSystem();
    v27 = 16;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      log = v28;
      type = v27;
      sub_10001CEEC(v26);
      _os_log_error_impl(&_mh_execute_header, log, type, "Internal/Private/Write access entitlement required but missing!", v26, 2u);
    }

    objc_storeStrong(&v28, 0);
    v11 = v29;
    v12 = [NSError ak_errorWithCode:-7026];
    v11[2](v11, 0);
    _objc_release(v12);
    v25 = 1;
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
}

- (void)configurationInfoWithIdentifiers:(id)identifiers forAltDSID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifiers);
  v23 = 0;
  objc_storeStrong(&v23, d);
  v22 = 0;
  objc_storeStrong(&v22, completion);
  if ([(AKClient *)selfCopy->_client hasInternalPrivateAccess])
  {
    if (location[0])
    {
      v17 = +[AKUserConfigController sharedController];
      v9 = v17;
      v7 = v23;
      client = selfCopy->_client;
      v16 = _objc_retain(v22);
      [v9 fetchUserConfigForAltDSID:v7 client:client dataCenter:? forIdentifiers:? completion:?];
      objc_storeStrong(&v16, 0);
      objc_storeStrong(&v17, 0);
    }

    else
    {
      v5 = v22;
      v6 = [NSError ak_errorWithCode:-7053];
      v5[2](v5, 0);
      _objc_release(v6);
    }

    v18 = 0;
  }

  else
  {
    v21 = _AKLogSystem();
    v20 = 16;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      log = v21;
      type = v20;
      sub_10001CEEC(v19);
      _os_log_error_impl(&_mh_execute_header, log, type, "Internal/Private/Write access entitlement required but missing!", v19, 2u);
    }

    objc_storeStrong(&v21, 0);
    v10 = v22;
    v11 = [NSError ak_errorWithCode:-7026];
    v10[2](v10, 0);
    _objc_release(v11);
    v18 = 1;
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

- (void)isDevicePasscodeProtected:(id)protected
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, protected);
  v3 = +[AKDevice currentDevice];
  isProtectedWithPasscode = [v3 isProtectedWithPasscode];
  _objc_release(v3);
  (*(location[0] + 2))(location[0], isProtectedWithPasscode & 1, 0);
  objc_storeStrong(location, 0);
}

- (void)activeLoginCode:(id)code
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, code);
  v17 = _AKLogSystem();
  v16 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    log = v17;
    v11 = v16;
    sub_10001CEEC(v15);
    _os_log_impl(&_mh_execute_header, log, v11, "Fetching login code", v15, 2u);
  }

  objc_storeStrong(&v17, 0);
  if ([(AKClient *)selfCopy->_client hasOwnerAccess])
  {
    if (location[0])
    {
      v3 = location[0];
      v5 = +[AKAppleIDPushHelperService sharedService];
      activeCode = [v5 activeCode];
      v3[2]();
      _objc_release(activeCode);
      _objc_release(v5);
    }
  }

  else
  {
    v14 = _AKLogSystem();
    v13 = 16;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v8 = v14;
      type = v13;
      sub_10001CEEC(v12);
      _os_log_error_impl(&_mh_execute_header, v8, type, "Owner access entitlement required but missing!", v12, 2u);
    }

    objc_storeStrong(&v14, 0);
    v6 = location[0];
    v7 = [NSError ak_errorWithCode:-7026];
    v6[2](v6, 0);
    _objc_release(v7);
  }

  objc_storeStrong(location, 0);
}

- (void)getServerUILoadDelegateWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v14 = 0;
  objc_storeStrong(&v14, completion);
  queue = dispatch_get_global_queue(33, 0);
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10009337C;
  v10 = &unk_100321280;
  v11 = _objc_retain(selfCopy);
  v13 = _objc_retain(v14);
  v12 = _objc_retain(location[0]);
  dispatch_async(queue, &v6);
  _objc_release(queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)getServerUILoadDelegateForAltDSID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v6 = 0;
  objc_storeStrong(&v6, completion);
  v5 = objc_opt_new();
  [v5 setAltDSID:location[0]];
  [(AKAppleIDAuthenticationService *)selfCopy getServerUILoadDelegateWithContext:v5 completion:v6];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)updateStateWithExternalAuthenticationResponse:(id)response forAppleID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v9 = 0;
  objc_storeStrong(&v9, d);
  v8 = 0;
  objc_storeStrong(&v8, completion);
  v7 = objc_alloc_init(AKAppleIDAuthenticationContext);
  [v7 setUsername:v9];
  [(AKAppleIDAuthenticationService *)selfCopy updateStateWithExternalAuthenticationResponse:location[0] forContext:v7 completion:v8];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)updateStateWithExternalAuthenticationResponse:(id)response forContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v18 = 0;
  objc_storeStrong(&v18, context);
  v17 = 0;
  objc_storeStrong(&v17, completion);
  queue = dispatch_get_global_queue(33, 0);
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_100093864;
  v12 = &unk_100321A38;
  v13 = _objc_retain(selfCopy);
  v16 = _objc_retain(v17);
  v14 = _objc_retain(location[0]);
  v15 = _objc_retain(v18);
  dispatch_async(queue, &v8);
  _objc_release(queue);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)generateLoginCodeWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  if ([(AKClient *)selfCopy->_client hasInternalAccess])
  {
    v10 = 0;
    v8 = 0;
    v3 = [AKAppleIDCodeGenerator generateLoginCode:&v8];
    objc_storeStrong(&v10, v8);
    v9 = v3;
    if (location[0])
    {
      (*(location[0] + 2))(location[0], v9, v10);
    }

    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v10, 0);
    v11 = 0;
  }

  else
  {
    v14 = _AKLogSystem();
    v13 = 16;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      log = v14;
      type = v13;
      sub_10001CEEC(v12);
      _os_log_error_impl(&_mh_execute_header, log, type, "Internal access entitlement required but missing!", v12, 2u);
    }

    objc_storeStrong(&v14, 0);
    v4 = location[0];
    v5 = [NSError ak_errorWithCode:-7026];
    v4[2](v4, 0);
    _objc_release(v5);
    v11 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)validateLoginCode:(unint64_t)code forAppleID:(id)d withCompletion:(id)completion
{
  selfCopy = self;
  v56 = a2;
  codeCopy = code;
  location = 0;
  objc_storeStrong(&location, d);
  v53 = 0;
  objc_storeStrong(&v53, completion);
  v52 = _AKLogSystem();
  v51 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    sub_100036FE8(v59, codeCopy);
    _os_log_impl(&_mh_execute_header, v52, v51, "Asked to validated code: %llu", v59, 0xCu);
  }

  objc_storeStrong(&v52, 0);
  v50 = [(AKAccountManager *)selfCopy->_accountManager authKitAccountWithAppleID:location error:0];
  if (v50)
  {
    v48 = [(AKAccountManager *)selfCopy->_accountManager altDSIDForAccount:v50];
    v41 = 0;
    v42 = &v41;
    v43 = 838860800;
    v44 = 48;
    v45 = sub_100003984;
    v46 = sub_1000111A0;
    v47 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 838860800;
    v37 = 48;
    v38 = sub_100003984;
    v39 = sub_1000111A0;
    v40 = 0;
    v33 = 0;
    v14 = v50;
    v26 = _NSConcreteStackBlock;
    v27 = -1073741824;
    v28 = 0;
    v29 = sub_100095A98;
    v30 = &unk_100321A60;
    v32[1] = &v34;
    v31 = _objc_retain(selfCopy);
    v32[0] = _objc_retain(v50);
    v32[2] = &v41;
    [AKAccountManager performWithinPersonaForAccount:v14 withBlock:&v26];
    token = [v35[5] token];
    v5 = [AKMasterToken tokenWithExternalizedVersionString:?];
    v6 = v33;
    v33 = v5;
    _objc_release(v6);
    _objc_release(token);
    objc_storeStrong(v32, 0);
    objc_storeStrong(&v31, 0);
    if (v35[5] && v33)
    {
      v10 = selfCopy;
      v7 = codeCopy;
      v8 = v48;
      v9 = v33;
      v18 = _NSConcreteStackBlock;
      v19 = -1073741824;
      v20 = 0;
      v21 = sub_100095B5C;
      v22 = &unk_100321A88;
      v23 = _objc_retain(v53);
      [(AKAppleIDAuthenticationService *)v10 _validateLoginCode:v7 forAltDSID:v8 masterToken:v9 idmsData:0 authContext:0 completion:&v18];
      objc_storeStrong(&v23, 0);
      v49 = 0;
    }

    else
    {
      oslog = _AKLogSystem();
      v24 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v58, v42[5]);
        _os_log_error_impl(&_mh_execute_header, oslog, v24, "AuthKit master token is missing! Error: %@", v58, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v12 = v53;
      v11 = [NSError ak_errorWithCode:-7024];
      v12[2](v12, 0);
      _objc_release(v11);
      v49 = 1;
    }

    objc_storeStrong(&v33, 0);
    _Block_object_dispose(&v34, 8);
    objc_storeStrong(&v40, 0);
    _Block_object_dispose(&v41, 8);
    objc_storeStrong(&v47, 0);
    objc_storeStrong(&v48, 0);
  }

  else
  {
    v16 = v53;
    v15 = [NSError ak_errorWithCode:-7023];
    v16[2](v16, 0);
    _objc_release(v15);
    v49 = 1;
  }

  objc_storeStrong(&v50, 0);
  objc_storeStrong(&v53, 0);
  objc_storeStrong(&location, 0);
}

- (void)_validateLoginCode:(unint64_t)code forAltDSID:(id)d masterToken:(id)token idmsData:(id)data authContext:(id)context completion:(id)completion
{
  selfCopy = self;
  v49 = a2;
  codeCopy = code;
  location = 0;
  objc_storeStrong(&location, d);
  v46 = 0;
  objc_storeStrong(&v46, token);
  v45 = 0;
  objc_storeStrong(&v45, data);
  v44 = 0;
  objc_storeStrong(&v44, context);
  v43 = 0;
  objc_storeStrong(&v43, completion);
  v24 = v44;
  v25 = [v44 authKitAccount:0];
  [AKAnalyticsSender sendAnalyticsEvent:"sendAnalyticsEvent:context:account:error:" context:@"com.apple.authkit.secondFactorValidationStart" account:v24 error:?];
  _objc_release(v25);
  if (location)
  {
    stringValue = [v46 stringValue];
    if (stringValue)
    {
      [v44 setAltDSID:location];
      [v44 _setRemoteUIIdentityToken:stringValue];
      [v44 setSecurityCode:codeCopy];
      v8 = [AKGrandSlamRequestProvider alloc];
      v34 = [(AKURLRequestProviderImpl *)v8 initWithContext:v44 urlBagKey:AKURLBagKeyValidateCode];
      v51 = AKIdmsDataKey;
      v52 = v45;
      v10 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      [(AKURLRequestProviderImpl *)v34 setAuthKitBody:?];
      _objc_release(v10);
      [(AKURLRequestProviderImpl *)v34 setClient:selfCopy->_client];
      [(AKGrandSlamRequestProvider *)v34 setAuthenticatedRequest:0];
      [(AKURLRequestProviderImpl *)v34 setDataCenterIdentifier:?];
      v9 = [AKServiceControllerImpl alloc];
      v33 = [(AKServiceControllerImpl *)v9 initWithRequestProvider:v34];
      v11 = v33;
      v26 = _NSConcreteStackBlock;
      v27 = -1073741824;
      v28 = 0;
      v29 = sub_1000961CC;
      v30 = &unk_100321898;
      v32 = _objc_retain(v43);
      v31 = _objc_retain(v44);
      [(AKServiceControllerImpl *)v11 executeRequestWithCompletion:&v26];
      objc_storeStrong(&v31, 0);
      objc_storeStrong(&v32, 0);
      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v34, 0);
      v39 = 0;
    }

    else
    {
      v37 = _AKLogSystem();
      v36 = 16;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v14 = v37;
        v15 = v36;
        sub_10001CEEC(v35);
        _os_log_error_impl(&_mh_execute_header, v14, v15, "Unable to get master token string value!", v35, 2u);
      }

      objc_storeStrong(&v37, 0);
      v12 = v43;
      v13 = [NSError ak_errorWithCode:-7037];
      (*(v12 + 2))(v12, 0, 0);
      _objc_release(v13);
      v39 = 1;
    }

    objc_storeStrong(&stringValue, 0);
  }

  else
  {
    v42 = _AKLogSystem();
    v41 = 16;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      log = v42;
      type = v41;
      sub_10001CEEC(v40);
      _os_log_error_impl(&_mh_execute_header, log, type, "AuthKit account altDSID is missing.", v40, 2u);
    }

    objc_storeStrong(&v42, 0);
    v16 = v43;
    v17 = [NSError ak_errorWithCode:-7025];
    (*(v16 + 2))(v16, 0, 0);
    _objc_release(v17);
    v39 = 1;
  }

  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&location, 0);
}

- (void)validateVettingToken:(id)token forAltDSID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, token);
  v95 = 0;
  objc_storeStrong(&v95, d);
  v94 = 0;
  objc_storeStrong(&v94, completion);
  if (![(AKClient *)selfCopy->_client hasInternalPrivateAccess])
  {
    v93 = _AKLogSystem();
    v92 = 16;
    if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
    {
      log = v93;
      type = v92;
      sub_10001CEEC(v91);
      _os_log_error_impl(&_mh_execute_header, log, type, "Internal or private access entitlement required but missing!", v91, 2u);
    }

    objc_storeStrong(&v93, 0);
    v38 = v94;
    v37 = [NSError ak_errorWithCode:-7026];
    v38[2](v38, 0);
    _objc_release(v37);
  }

  if ([location[0] length])
  {
    if ([v95 length])
    {
      v83 = [(AKAccountManager *)selfCopy->_accountManager authKitAccountWithAltDSID:v95 error:0];
      if (v83)
      {
        v76 = 0;
        v77 = &v76;
        v78 = 838860800;
        v79 = 48;
        v80 = sub_100003984;
        v81 = sub_1000111A0;
        v82 = 0;
        v69 = 0;
        v70 = &v69;
        v71 = 838860800;
        v72 = 48;
        v73 = sub_100003984;
        v74 = sub_1000111A0;
        v75 = 0;
        v68 = 0;
        v26 = v83;
        v61 = _NSConcreteStackBlock;
        v62 = -1073741824;
        v63 = 0;
        v64 = sub_10009792C;
        v65 = &unk_100321A60;
        v67[1] = &v69;
        v66 = _objc_retain(selfCopy);
        v67[0] = _objc_retain(v83);
        v67[2] = &v76;
        [AKAccountManager performWithinPersonaForAccount:v26 withBlock:&v61];
        token = [v70[5] token];
        v5 = [AKMasterToken tokenWithExternalizedVersionString:?];
        v6 = v68;
        v68 = v5;
        _objc_release(v6);
        _objc_release(token);
        objc_storeStrong(v67, 0);
        objc_storeStrong(&v66, 0);
        if (!v70[5] || !v68)
        {
          oslog = _AKLogSystem();
          v59 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            sub_1000194D4(v98, v77[5]);
            _os_log_error_impl(&_mh_execute_header, oslog, v59, "AuthKit master token is missing! Error: %@", v98, 0xCu);
          }

          objc_storeStrong(&oslog, 0);
          v24 = v94;
          v23 = [NSError ak_errorWithCode:-7024];
          v24[2](v24, 0);
          _objc_release(v23);
        }

        stringValue = [v68 stringValue];
        if (stringValue)
        {
          v18 = [AKURLBag bagForAltDSID:v95];
          validateVettingTokenURL = [v18 validateVettingTokenURL];
          _objc_release(v18);
          if (validateVettingTokenURL)
          {
            v53 = [[NSMutableURLRequest alloc] initWithURL:validateVettingTokenURL];
            v14 = +[AKDevice currentDevice];
            isProtectedWithPasscode = [v14 isProtectedWithPasscode];
            _objc_release(v14);
            if (isProtectedWithPasscode)
            {
              [v53 ak_addPRKRequestHeader];
            }

            [v53 ak_addDeviceUDIDHeader];
            [v53 ak_addDeviceMLBHeader];
            [v53 ak_addDeviceROMHeader];
            [v53 ak_addDeviceSerialNumberHeader];
            [v53 ak_addClientInfoHeader];
            [v53 ak_addInternalBuildHeader];
            [v53 ak_addSeedBuildHeader];
            [v53 ak_addFeatureMaskHeader];
            name = [(AKClient *)selfCopy->_client name];
            [v53 ak_addClientApp:?];
            _objc_release(name);
            bundleID = [(AKClient *)selfCopy->_client bundleID];
            [v53 ak_addClientBundleIDHeader:?];
            _objc_release(bundleID);
            [v53 ak_addAuthorizationHeaderWithIdentityToken:stringValue forAltDSID:v95];
            [v53 setValue:location[0] forHTTPHeaderField:@"X-Apple-I-Vetting-Token"];
            v52 = _AKLogSystem();
            v51 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              v10 = v52;
              v11 = v51;
              sub_10001CEEC(v50);
              _os_log_impl(&_mh_execute_header, v10, v11, "Vetting-token validation request is ready to go.", v50, 2u);
            }

            objc_storeStrong(&v52, 0);
            v9 = +[AKURLSession sharedURLSession];
            v8 = v53;
            v43 = _NSConcreteStackBlock;
            v44 = -1073741824;
            v45 = 0;
            v46 = sub_1000979F0;
            v47 = &unk_100321AB0;
            v49 = _objc_retain(v94);
            v48 = _objc_retain(v83);
            v7 = [v9 beginDataTaskWithRequest:v8 completionHandler:&v43];
            _objc_release(v9);
            objc_storeStrong(&v48, 0);
            objc_storeStrong(&v49, 0);
            objc_storeStrong(&v53, 0);
            v87 = 0;
          }

          else
          {
            v17 = v94;
            v16 = [NSError ak_errorWithCode:-7005];
            v17[2](v17, 0);
            _objc_release(v16);
            v87 = 1;
          }

          objc_storeStrong(&validateVettingTokenURL, 0);
        }

        else
        {
          v57 = _AKLogSystem();
          v56 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            v21 = v57;
            v22 = v56;
            sub_10001CEEC(v55);
            _os_log_error_impl(&_mh_execute_header, v21, v22, "Unable to get master token string value!", v55, 2u);
          }

          objc_storeStrong(&v57, 0);
          v20 = v94;
          v19 = [NSError ak_errorWithCode:-7037];
          v20[2](v20, 0);
          _objc_release(v19);
          v87 = 1;
        }

        objc_storeStrong(&stringValue, 0);
        objc_storeStrong(&v68, 0);
        _Block_object_dispose(&v69, 8);
        objc_storeStrong(&v75, 0);
        _Block_object_dispose(&v76, 8);
        objc_storeStrong(&v82, 0);
      }

      else
      {
        v28 = v94;
        v27 = [NSError ak_errorWithCode:-7055];
        v28[2](v28, 0);
        _objc_release(v27);
        v87 = 1;
      }

      objc_storeStrong(&v83, 0);
    }

    else
    {
      v86 = _AKLogSystem();
      v85 = 16;
      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
      {
        v31 = v86;
        v32 = v85;
        sub_10001CEEC(v84);
        _os_log_error_impl(&_mh_execute_header, v31, v32, "altDSID was not provided.", v84, 2u);
      }

      objc_storeStrong(&v86, 0);
      v30 = v94;
      v29 = [NSError ak_errorWithCode:-7025];
      v30[2](v30, 0);
      _objc_release(v29);
      v87 = 1;
    }
  }

  else
  {
    v90 = _AKLogSystem();
    v89 = 16;
    if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
    {
      v35 = v90;
      v36 = v89;
      sub_10001CEEC(v88);
      _os_log_error_impl(&_mh_execute_header, v35, v36, "A vetting token was not provided.", v88, 2u);
    }

    objc_storeStrong(&v90, 0);
    v34 = v94;
    v33 = [NSError ak_errorWithCode:-7056];
    v34[2](v34, 0);
    _objc_release(v33);
    v87 = 1;
  }

  objc_storeStrong(&v94, 0);
  objc_storeStrong(&v95, 0);
  objc_storeStrong(location, 0);
}

- (void)isCreateAppleIDAllowedWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  if ([(AKClient *)selfCopy->_client hasInternalPrivateAccess])
  {
    v3 = +[AKAccountManager sharedInstance];
    v9 = [(AKAccountManager *)v3 allAuthKitAccountsWithError:?];
    _objc_release(v3);
    v8 = [v9 aaf_firstObjectPassingTest:&stru_100321AF0];
    (*(location[0] + 2))(location[0], v8 == 0, 0);
    objc_storeStrong(&v8, 0);
    objc_storeStrong(&v9, 0);
    v10 = 0;
  }

  else
  {
    v13 = _AKLogSystem();
    v12 = 16;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      log = v13;
      type = v12;
      sub_10001CEEC(v11);
      _os_log_error_impl(&_mh_execute_header, log, type, "Internal/Private access entitlement required but missing!", v11, 2u);
    }

    objc_storeStrong(&v13, 0);
    v4 = location[0];
    v5 = [NSError ak_errorWithCode:-7026];
    v4[2](v4, 0);
    _objc_release(v5);
    v10 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)checkSecurityUpgradeEligibilityForContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v33 = 0;
  objc_storeStrong(&v33, completion);
  if ([(AKClient *)selfCopy->_client hasInternalPrivateAccess])
  {
    altDSID = [location[0] altDSID];
    _objc_release(altDSID);
    if (altDSID)
    {
      v4 = [AKSecurityUpgradeEligibilityRequestProvider alloc];
      v25 = [(AKURLRequestProviderImpl *)v4 initWithContext:location[0] urlBagKey:AKURLBagKeyUpgradeEligibilityCheck];
      [(AKURLRequestProviderImpl *)v25 setClient:selfCopy->_client];
      v5 = [AKServiceControllerImpl alloc];
      v24 = [(AKServiceControllerImpl *)v5 initWithRequestProvider:v25];
      v6 = v24;
      v17 = _NSConcreteStackBlock;
      v18 = -1073741824;
      v19 = 0;
      v20 = sub_100098C94;
      v21 = &unk_100321898;
      v23 = _objc_retain(v33);
      v22 = _objc_retain(location[0]);
      [(AKServiceControllerImpl *)v6 executeRequestWithCompletion:&v17];
      objc_storeStrong(&v22, 0);
      objc_storeStrong(&v23, 0);
      objc_storeStrong(&v24, 0);
      objc_storeStrong(&v25, 0);
      v29 = 0;
    }

    else
    {
      v28 = _AKLogSystem();
      v27 = 16;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v9 = v28;
        v10 = v27;
        sub_10001CEEC(v26);
        _os_log_error_impl(&_mh_execute_header, v9, v10, "altDSID required but missing!", v26, 2u);
      }

      objc_storeStrong(&v28, 0);
      v7 = v33;
      v8 = [NSError ak_errorWithCode:-7025];
      v7[2](v7, 0);
      _objc_release(v8);
      v29 = 1;
    }
  }

  else
  {
    v32 = _AKLogSystem();
    v31 = 16;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      log = v32;
      type = v31;
      sub_10001CEEC(v30);
      _os_log_error_impl(&_mh_execute_header, log, type, "Internal/Private access entitlement required but missing!", v30, 2u);
    }

    objc_storeStrong(&v32, 0);
    v12 = v33;
    v13 = [NSError ak_errorWithCode:-7026];
    v12[2](v12, 0);
    _objc_release(v13);
    v29 = 1;
  }

  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
}

- (void)performCheckInForAccountWithAltDSID:(id)d event:(id)event completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v30 = 0;
  objc_storeStrong(&v30, event);
  v29 = 0;
  objc_storeStrong(&v29, completion);
  v28 = _AKLogSystem();
  v27 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    sub_10001CE98(v35, 1752392040, location[0]);
    _os_log_impl(&_mh_execute_header, v28, v27, "Check-in with IdMS requested for account with altDSID: %{mask.hash}@", v35, 0x16u);
  }

  objc_storeStrong(&v28, 0);
  if (location[0])
  {
    if (v30)
    {
      v25 = [(AKAccountManager *)selfCopy->_accountManager authKitAccountWithAltDSID:location[0] error:0];
      if (v25)
      {
        v24 = _AKLogSystem();
        v23 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000194D4(v34, v25);
          _os_log_impl(&_mh_execute_header, v24, v23, "Performing liveness check-in for account: %@", v34, 0xCu);
        }

        objc_storeStrong(&v24, 0);
        v9 = +[AKAppleIDCheckInHelperService sharedService];
        v7 = v25;
        v8 = v30;
        v17 = _NSConcreteStackBlock;
        v18 = -1073741824;
        v19 = 0;
        v20 = sub_1000993F0;
        v21 = &unk_100321230;
        v22 = _objc_retain(v29);
        [v9 performCheckInForAccount:v7 event:v8 reason:6 completion:&v17];
        _objc_release(v9);
        objc_storeStrong(&v22, 0);
      }

      else
      {
        v16 = _AKLogSystem();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10001CE98(v33, 1752392040, location[0]);
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "No IdMS account found for altDSID: %{mask.hash}@", v33, 0x16u);
        }

        objc_storeStrong(&v16, 0);
        v5 = v29;
        v6 = [NSError ak_errorWithCode:-7055];
        v5[2]();
        _objc_release(v6);
      }

      objc_storeStrong(&v25, 0);
      v26 = 0;
    }

    else
    {
      v10 = v29;
      v11 = [NSError ak_livenessErrorWithCode:-15003];
      v10[2]();
      _objc_release(v11);
      v26 = 1;
    }
  }

  else
  {
    v12 = v29;
    v13 = [NSError ak_livenessErrorWithCode:-15002];
    v12[2]();
    _objc_release(v13);
    v26 = 1;
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

- (void)performCheckInForAccountWithAltDSID:(id)d event:(id)event reason:(unint64_t)reason completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v34 = 0;
  objc_storeStrong(&v34, event);
  reasonCopy = reason;
  v32 = 0;
  objc_storeStrong(&v32, completion);
  v31 = _AKLogSystem();
  v30 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    sub_10001CE98(v39, 1752392040, location[0]);
    _os_log_impl(&_mh_execute_header, v31, v30, "Check-in with IdMS requested for account with altDSID: %{mask.hash}@", v39, 0x16u);
  }

  objc_storeStrong(&v31, 0);
  if (location[0])
  {
    if (v34)
    {
      v28 = [(AKAccountManager *)selfCopy->_accountManager authKitAccountWithAltDSID:location[0] error:0];
      if (v28)
      {
        v27 = _AKLogSystem();
        v26 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          sub_100074370(v38, v28, reasonCopy);
          _os_log_impl(&_mh_execute_header, v27, v26, "Performing liveness check-in for account: %@ with reason: %lu", v38, 0x16u);
        }

        objc_storeStrong(&v27, 0);
        v11 = +[AKAppleIDCheckInHelperService sharedService];
        v8 = v28;
        v9 = v34;
        v10 = reasonCopy;
        v20 = _NSConcreteStackBlock;
        v21 = -1073741824;
        v22 = 0;
        v23 = sub_100099944;
        v24 = &unk_100321230;
        v25 = _objc_retain(v32);
        [v11 performCheckInForAccount:v8 event:v9 reason:v10 completion:&v20];
        _objc_release(v11);
        objc_storeStrong(&v25, 0);
      }

      else
      {
        v19 = _AKLogSystem();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_10001CE98(v37, 1752392040, location[0]);
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "No IdMS account found for altDSID: %{mask.hash}@", v37, 0x16u);
        }

        objc_storeStrong(&v19, 0);
        v6 = v32;
        v7 = [NSError ak_errorWithCode:-7055];
        v6[2]();
        _objc_release(v7);
      }

      objc_storeStrong(&v28, 0);
      v29 = 0;
    }

    else
    {
      v12 = v32;
      v13 = [NSError ak_livenessErrorWithCode:-15003];
      v12[2]();
      _objc_release(v13);
      v29 = 1;
    }
  }

  else
  {
    v14 = v32;
    v15 = [NSError ak_livenessErrorWithCode:-15002];
    v14[2]();
    _objc_release(v15);
    v29 = 1;
  }

  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
}

- (void)reportSignOutForAppleID:(id)d service:(int64_t)service completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  serviceCopy = service;
  v26 = 0;
  objc_storeStrong(&v26, completion);
  v25 = _AKLogSystem();
  v24 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [NSNumber numberWithInteger:serviceCopy];
    sub_10001B098(v31, v15, location[0]);
    _os_log_impl(&_mh_execute_header, v25, v24, "Asked to report signout from service %@ for Apple ID: %@", v31, 0x16u);
    _objc_release(v15);
  }

  objc_storeStrong(&v25, 0);
  if ([(AKClient *)selfCopy->_client hasInternalAccess])
  {
    if (location[0])
    {
      v19 = [(AKAccountManager *)selfCopy->_accountManager authKitAccountWithAppleID:location[0] error:0];
      if (v19)
      {
        if (serviceCopy)
        {
          v6 = +[AKAppleIDCheckInHelperService sharedService];
          [v6 reportSignOutEventForService:serviceCopy account:v19 completion:v26];
          _objc_release(v6);
        }

        else
        {
          v5 = +[AKAppleIDCheckInHelperService sharedService];
          [v5 reportFinalSignOutEventForAccount:v19 completion:v26];
          _objc_release(v5);
        }

        v20 = 0;
      }

      else
      {
        v18 = _AKLogSystem();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1000194D4(v30, location[0]);
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "No IDMS account for Apple ID: %@", v30, 0xCu);
        }

        objc_storeStrong(&v18, 0);
        v7 = v26;
        v8 = [NSError ak_errorWithCode:-7023];
        v7[2](v7, 0);
        _objc_release(v8);
        v20 = 1;
      }

      objc_storeStrong(&v19, 0);
    }

    else
    {
      v9 = v26;
      v10 = [NSError ak_errorWithCode:-7022];
      v9[2](v9, 0);
      _objc_release(v10);
      v20 = 1;
    }
  }

  else
  {
    v23 = _AKLogSystem();
    v22 = 16;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v13 = v23;
      v14 = v22;
      sub_10001CEEC(v21);
      _os_log_error_impl(&_mh_execute_header, v13, v14, "Internal access entitlement required but missing!", v21, 2u);
    }

    objc_storeStrong(&v23, 0);
    v11 = v26;
    v12 = [NSError ak_errorWithCode:-7026];
    v11[2](v11, 0);
    _objc_release(v12);
    v20 = 1;
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

- (void)reportSignOutForAllAppleIDsWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v46 = _AKLogSystem();
  v45 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    log = v46;
    type = v45;
    sub_10001CEEC(v44);
    _os_log_impl(&_mh_execute_header, log, type, "Asked to report signout for all Apple IDs", v44, 2u);
  }

  objc_storeStrong(&v46, 0);
  if ([(AKClient *)selfCopy->_client hasWriteAccess])
  {
    v39 = [(AKAccountManager *)selfCopy->_accountManager allAuthKitAccountsWithError:0];
    if ([v39 count])
    {
      v29 = 0;
      v30 = &v29;
      v31 = 838860800;
      v32 = 48;
      v33 = sub_100003984;
      v34 = sub_1000111A0;
      v35 = 0;
      group = dispatch_group_create();
      memset(__b, 0, sizeof(__b));
      obj = _objc_retain(v39);
      v10 = [obj countByEnumeratingWithState:__b objects:v49 count:16];
      if (v10)
      {
        v6 = *__b[2];
        v7 = 0;
        v8 = v10;
        while (1)
        {
          v5 = v7;
          if (*__b[2] != v6)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(__b[1] + 8 * v7);
          dispatch_group_enter(group);
          v4 = +[AKAppleIDCheckInHelperService sharedService];
          v3 = v27;
          v19 = _NSConcreteStackBlock;
          v20 = -1073741824;
          v21 = 0;
          v22 = sub_10009A560;
          v23 = &unk_100321B18;
          v24 = _objc_retain(v27);
          v25[1] = &v29;
          v25[0] = _objc_retain(group);
          [v4 reportFinalSignOutEventForAccount:v3 completion:&v19];
          _objc_release(v4);
          objc_storeStrong(v25, 0);
          objc_storeStrong(&v24, 0);
          ++v7;
          if (v5 + 1 >= v8)
          {
            v7 = 0;
            v8 = [obj countByEnumeratingWithState:__b objects:v49 count:16];
            if (!v8)
            {
              break;
            }
          }
        }
      }

      _objc_release(obj);
      dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
      if (v30[5])
      {
        (*(location[0] + 2))(location[0], 0, v30[5]);
      }

      else
      {
        (*(location[0] + 2))(location[0], 1, 0);
      }

      objc_storeStrong(&group, 0);
      _Block_object_dispose(&v29, 8);
      objc_storeStrong(&v35, 0);
      v40 = 0;
    }

    else
    {
      v38 = _AKLogSystem();
      v37 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v38;
        v12 = v37;
        sub_10001CEEC(v36);
        _os_log_impl(&_mh_execute_header, v11, v12, "No IDMS accounts to sign out", v36, 2u);
      }

      objc_storeStrong(&v38, 0);
      (*(location[0] + 2))(location[0], 1, 0);
      v40 = 1;
    }

    objc_storeStrong(&v39, 0);
  }

  else
  {
    v43 = _AKLogSystem();
    v42 = 16;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v15 = v43;
      v16 = v42;
      sub_10001CEEC(v41);
      _os_log_error_impl(&_mh_execute_header, v15, v16, "Internal write access entitlement required but missing!", v41, 2u);
    }

    objc_storeStrong(&v43, 0);
    v14 = location[0];
    v13 = [NSError ak_errorWithCode:-7026];
    v14[2](v14, 0);
    _objc_release(v13);
    v40 = 1;
  }

  objc_storeStrong(location, 0);
}

- (id)_createAuthenticationStartEventWithContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v11 = [AAFAnalyticsEvent ak_analyticsEventWithContext:location[0] client:selfCopy->_client eventName:@"com.apple.authkit.authenticationStart" error:0];
  v7 = +[AAFDeviceInfo localSecretType];
  [v11 setObject:? forKeyedSubscript:?];
  _objc_release(v7);
  v10 = [(AKAppleIDAuthenticationService *)selfCopy _secureChannelTypeForContext:location[0]];
  if (v10)
  {
    [v11 setObject:v10 forKeyedSubscript:@"secureChannelType"];
    [v11 setObject:&__kCFBooleanTrue forKeyedSubscript:@"proximityChannelAvailable"];
  }

  proxiedDevice = [location[0] proxiedDevice];
  v8 = 0;
  v6 = 1;
  if (!proxiedDevice)
  {
    proxiedDeviceAnisetteData = [location[0] proxiedDeviceAnisetteData];
    v8 = 1;
    v6 = proxiedDeviceAnisetteData != 0;
  }

  if (v8)
  {
    _objc_release(proxiedDeviceAnisetteData);
  }

  _objc_release(proxiedDevice);
  if (v6)
  {
    [v11 setObject:&off_100338FF8 forKeyedSubscript:@"hasProxiedDevice"];
  }

  v4 = _objc_retain(v11);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_secureChannelTypeForContext:(id)context
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  companionDevice = [location[0] companionDevice];
  _objc_release(companionDevice);
  if (companionDevice)
  {
    v9 = _objc_retain(&off_100339010);
  }

  else
  {
    companionDeviceAnisetteData = [location[0] companionDeviceAnisetteData];
    _objc_release(companionDeviceAnisetteData);
    if (companionDeviceAnisetteData)
    {
      v9 = _objc_retain(&off_100339028);
    }

    else
    {
      companionKeyEnvelope = [location[0] companionKeyEnvelope];
      _objc_release(companionKeyEnvelope);
      if (companionKeyEnvelope)
      {
        v9 = _objc_retain(&off_100339040);
      }

      else
      {
        v9 = 0;
      }
    }
  }

  objc_storeStrong(location, 0);
  v3 = v9;

  return v3;
}

- (void)authenticateWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v88 = 0;
  objc_storeStrong(&v88, completion);
  v87 = os_transaction_create();
  v40 = +[AKFeatureManager sharedManager];
  isAuthenticationTelemetryEnabled = [v40 isAuthenticationTelemetryEnabled];
  _objc_release(v40);
  if (isAuthenticationTelemetryEnabled)
  {
    v86 = [(AKAppleIDAuthenticationService *)selfCopy _createAuthenticationStartEventWithContext:location[0]];
    v38 = +[AKAnalyticsReporterRTC rtcAnalyticsReporter];
    [v38 sendEvent:v86];
    _objc_release(v38);
    objc_storeStrong(&v86, 0);
  }

  v85 = [(AKAppleIDAuthenticationService *)selfCopy _createProxAnalyticsForAuthenticationContextIfNeeded:location[0]];
  if (!v85)
  {
    v36 = +[AKFeatureManager sharedManager];
    isAuthenticationTelemetryEnabled2 = [v36 isAuthenticationTelemetryEnabled];
    _objc_release(v36);
    if (isAuthenticationTelemetryEnabled2)
    {
      v4 = [AAFAnalyticsEvent ak_analyticsEventWithContext:location[0] client:selfCopy->_client eventName:@"com.apple.authkit.authentication" error:0];
      v5 = v85;
      v85 = v4;
      _objc_release(v5);
    }
  }

  v75 = _NSConcreteStackBlock;
  v76 = -1073741824;
  v77 = 0;
  v78 = sub_10009B7AC;
  v79 = &unk_100321B40;
  v80 = _objc_retain(v87);
  v81 = _objc_retain(v85);
  v82 = _objc_retain(location[0]);
  v83 = _objc_retain(v88);
  v84 = objc_retainBlock(&v75);
  if (+[AAFDeviceInfo isDeviceInDiagnosticMode](AAFDeviceInfo, "isDeviceInDiagnosticMode") || +[AAFDeviceInfo isDeviceUnlockedSinceBoot](AAFDeviceInfo, "isDeviceUnlockedSinceBoot") || [location[0] allowAuthenticationBeforeFirstUnlock])
  {
    v30 = +[AKAccountManager sharedInstance];
    altDSID = [location[0] altDSID];
    v31 = [(AKAccountManager *)v30 hasPersonaAvailableForAltDSID:?];
    _objc_release(altDSID);
    _objc_release(v30);
    if (v31)
    {
      if ([location[0] _capabilityForUIDisplay] == 3)
      {
        v67 = _AKLogSystem();
        v66 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v67;
          v24 = v66;
          sub_10001CEEC(v65);
          _os_log_impl(&_mh_execute_header, v23, v24, "The UI Surrogate is finally here! Bypassing Traffic Controller...", v65, 2u);
        }

        objc_storeStrong(&v67, 0);
        surrogateManager = [(AKAuthenticationUILiaison *)selfCopy->_authUILiaison surrogateManager];
        [(AKAuthenticationSurrogateManager *)surrogateManager registerUISurrogateContext:location[0] client:selfCopy->_client completion:v84];
        _objc_release(surrogateManager);
        v71 = 1;
      }

      else
      {
        v64 = [location[0] serviceType] == 2;
        isPermittedForInteractiveAuthOnLimitedContext = [(AKClient *)selfCopy->_client isPermittedForInteractiveAuthOnLimitedContext];
        v62 = 0;
        v21 = 0;
        if (!isPermittedForInteractiveAuthOnLimitedContext)
        {
          v21 = 0;
          if ([location[0] isContextEligibleForSilentAuthCoercion])
          {
            v20 = 1;
            if (v64)
            {
              v63 = +[AKConfiguration sharedConfiguration];
              v62 = 1;
              v20 = [v63 shouldAllowExperimentalMode] == 1;
            }

            v21 = v20;
          }
        }

        if (v62)
        {
          _objc_release(v63);
        }

        if (v21)
        {
          oslog = _AKLogSystem();
          v60 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
          {
            v18 = oslog;
            v19 = v60;
            sub_10001CEEC(v59);
            _os_log_debug_impl(&_mh_execute_header, v18, v19, "Overriding limited UI context into silent preferred auth", v59, 2u);
          }

          objc_storeStrong(&oslog, 0);
          [location[0] setAuthenticationType:0];
        }

        username = [location[0] username];
        v57 = 0;
        v17 = 0;
        if (username)
        {
          _password = [location[0] _password];
          v57 = 1;
          v17 = 0;
          if (_password)
          {
            v17 = 0;
            if ([location[0] authenticationType] == 1)
            {
              v17 = [location[0] _capabilityForUIDisplay] == 2;
            }
          }
        }

        if (v57)
        {
          _objc_release(_password);
        }

        _objc_release(username);
        if (v17)
        {
          v56 = _AKLogSystem();
          v55 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
          {
            v14 = v56;
            v15 = v55;
            sub_10001CEEC(v54);
            _os_log_debug_impl(&_mh_execute_header, v14, v15, "Overriding full UI context into silent preferred auth, silent is not supported...", v54, 2u);
          }

          objc_storeStrong(&v56, 0);
          [location[0] setAuthenticationType:0];
        }

        companionKeyEnvelope = [location[0] companionKeyEnvelope];
        v13 = 0;
        if (companionKeyEnvelope)
        {
          v13 = ![(AKClient *)selfCopy->_client hasCompanionKeyEnvelopeAccess];
        }

        _objc_release(companionKeyEnvelope);
        if (v13)
        {
          v53 = _AKLogSystem();
          v52 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            sub_10001B098(v92, location[0], selfCopy->_client);
            _os_log_error_impl(&_mh_execute_header, v53, v52, "Unable to accept authentication request (%@) from unentitled client: %@", v92, 0x16u);
          }

          objc_storeStrong(&v53, 0);
          v10 = v84;
          v11 = [NSError ak_errorWithCode:-7026];
          v10[2](v10, 0);
          _objc_release(v11);
          v71 = 1;
        }

        else
        {
          v51 = _AKLogSystem();
          v50 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000194D4(v91, location[0]);
            _os_log_impl(&_mh_execute_header, v51, v50, "Requesting clearance to begin auth with context %@...", v91, 0xCu);
          }

          objc_storeStrong(&v51, 0);
          authTrafficController = selfCopy->_authTrafficController;
          v7 = location[0];
          client = selfCopy->_client;
          v42 = _NSConcreteStackBlock;
          v43 = -1073741824;
          v44 = 0;
          v45 = sub_10009B8B0;
          v46 = &unk_100320558;
          v47 = _objc_retain(location[0]);
          v48 = _objc_retain(selfCopy);
          v49 = _objc_retain(v84);
          [(AKAuthenticationTrafficController *)authTrafficController beginAuthenticatedRequestWithContext:v7 client:client clearanceHandler:&v42];
          objc_storeStrong(&v49, 0);
          objc_storeStrong(&v48, 0);
          objc_storeStrong(&v47, 0);
          v71 = 0;
        }
      }
    }

    else
    {
      v70 = _AKLogSystem();
      v69 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v70;
        v28 = v69;
        sub_10001CEEC(v68);
        _os_log_impl(&_mh_execute_header, v27, v28, "No persona, account is being removed, no need to re-auth.", v68, 2u);
      }

      objc_storeStrong(&v70, 0);
      v25 = v84;
      v26 = [NSError ak_errorWithCode:-7115];
      v25[2](v25, 0);
      _objc_release(v26);
      v71 = 1;
    }
  }

  else
  {
    v74 = _AKLogSystem();
    v73 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      log = v74;
      type = v73;
      sub_10001CEEC(v72);
      _os_log_impl(&_mh_execute_header, log, type, "Device should be unlocked after boot to continue authenticating.", v72, 2u);
    }

    objc_storeStrong(&v74, 0);
    v32 = v84;
    v33 = [NSError ak_errorWithCode:-7123];
    v32[2](v32, 0);
    _objc_release(v33);
    v71 = 1;
  }

  objc_storeStrong(&v84, 0);
  objc_storeStrong(&v83, 0);
  objc_storeStrong(&v82, 0);
  objc_storeStrong(&v81, 0);
  objc_storeStrong(&v80, 0);
  objc_storeStrong(&v85, 0);
  objc_storeStrong(&v87, 0);
  objc_storeStrong(&v88, 0);
  objc_storeStrong(location, 0);
}

- (void)_authenticateWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v12 = 0;
  objc_storeStrong(&v12, completion);
  v11 = 0;
  v9 = 0;
  v6 = [location[0] authKitAccount:&v9];
  objc_storeStrong(&v11, v9);
  v10 = v6;
  if (v6 && ([(AKAccountManager *)selfCopy->_accountManager accountIdentifiableTelemetryForAccount:v10]& 1) != 0)
  {
    v8 = [(AKAccountManager *)selfCopy->_accountManager telemetryDeviceSessionIDForAccount:v10];
    [location[0] setTelemetryDeviceSessionID:v8];
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v15, location[0]);
      _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Device Session ID: AuthKit account exists and is consented to telemetry collection, updating context... %@", v15, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    objc_storeStrong(&v8, 0);
  }

  if ([(AKAppleIDAuthenticationService *)selfCopy _shouldPresentShieldForContext:location[0]])
  {
    [(AKAppleIDAuthenticationService *)selfCopy _presentShieldWithContext:location[0] completionHandler:v12];
  }

  else
  {
    accountMigrationContext = [location[0] accountMigrationContext];
    _objc_release(accountMigrationContext);
    if (accountMigrationContext)
    {
      [(AKAppleIDAuthenticationService *)selfCopy _presentShieldForMigrationWithContext:location[0] completionHandler:v12];
    }

    else if ([location[0] needsRepair] == 1)
    {
      [(AKAppleIDAuthenticationService *)selfCopy _repairAppleIDWithContext:location[0] completion:v12];
    }

    else if ([location[0] needsCredentialRecovery] == 1)
    {
      [(AKAppleIDAuthenticationService *)selfCopy _recoverCredentialsAndAuthenticateWithContext:location[0] completion:v12];
    }

    else if ([location[0] isConfiguredForAccountCreation])
    {
      [(AKAppleIDAuthenticationService *)selfCopy _createNewAppleIDAndAuthenticateWithContext:location[0] completion:v12];
    }

    else if ([location[0] needsPasswordChange] == 1)
    {
      [(AKAppleIDAuthenticationService *)selfCopy _changePasswordAndAuthenticateWithContext:location[0] completion:v12];
    }

    else if ([location[0] needsSecurityUpgradeUI] == 1)
    {
      [(AKAppleIDAuthenticationService *)selfCopy _upgradeSecurityLevelWithContext:location[0] completion:v12];
    }

    else
    {
      [(AKAppleIDAuthenticationService *)selfCopy _performAuthenticationWithContext:location[0] completion:v12];
    }
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)_upgradeSecurityLevelWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v30 = 0;
  objc_storeStrong(&v30, completion);
  v29 = _AKLogSystem();
  v28 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    log = v29;
    type = v28;
    sub_10001CEEC(v27);
    _os_log_impl(&_mh_execute_header, log, type, "Starting security upgrade flow…", v27, 2u);
  }

  objc_storeStrong(&v29, 0);
  v4 = location[0];
  v5 = [location[0] authKitAccount:0];
  [AKAnalyticsSender sendAnalyticsEvent:"sendAnalyticsEvent:context:account:error:" context:@"com.apple.authkit.securityUpgradeStart" account:v4 error:?];
  _objc_release(v5);
  v19 = _NSConcreteStackBlock;
  v20 = -1073741824;
  v21 = 0;
  v22 = sub_10009C4D0;
  v23 = &unk_100320A58;
  v24 = _objc_retain(location[0]);
  v25 = _objc_retain(v30);
  v26 = objc_retainBlock(&v19);
  v7 = +[AKURLBag sharedBag];
  v6 = AKURLBagKeyUpgradeUI;
  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_10009C5E0;
  v15 = &unk_100321B90;
  v16 = _objc_retain(selfCopy);
  v17 = _objc_retain(location[0]);
  v18 = _objc_retain(v26);
  [v7 urlConfigurationForKey:v6 fromCache:0 completion:&v11];
  _objc_release(v7);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

- (void)_performAuthenticationWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v15 = 0;
  objc_storeStrong(&v15, completion);
  v6 = selfCopy;
  v5 = location[0];
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_10009CD10;
  v11 = &unk_1003217F8;
  v12 = _objc_retain(selfCopy);
  v13 = _objc_retain(location[0]);
  v14 = _objc_retain(v15);
  [(AKAppleIDAuthenticationService *)v6 _isInteractiveAuthRequiredForContext:v5 completion:?];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)_handlePasswordlessAuthResults:(id)results context:(id)context error:(id)error completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  v41 = 0;
  objc_storeStrong(&v41, context);
  v40 = 0;
  objc_storeStrong(&v40, error);
  v39 = 0;
  objc_storeStrong(&v39, completion);
  if (v40 && [v41 authenticationType] == 1)
  {
    v38 = _AKLogSystem();
    v37 = 16;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      log = v38;
      type = v37;
      sub_10001CEEC(v36);
      _os_log_error_impl(&_mh_execute_header, log, type, "Silent auth did not provide results. Interactive auth not allowed. Stopping right now.", v36, 2u);
    }

    objc_storeStrong(&v38, 0);
    v44 = NSUnderlyingErrorKey;
    ac_secureCodingError = [v40 ac_secureCodingError];
    v45 = ac_secureCodingError;
    v35 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    _objc_release(ac_secureCodingError);
    v34 = [NSError errorWithDomain:AKAppleIDAuthenticationErrorDomain code:-7013 userInfo:v35];
    (*(v39 + 2))(v39, 0, v34);
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v35, 0);
  }

  else
  {
    domain = [v40 domain];
    v14 = 0;
    if ([domain isEqualToString:AKAppleIDAuthenticationErrorDomain])
    {
      ak_isIncompatibleDevicesError = 1;
      if ([v40 code] != -7065)
      {
        ak_isIncompatibleDevicesError = [v40 ak_isIncompatibleDevicesError];
      }

      v14 = ak_isIncompatibleDevicesError;
    }

    _objc_release(domain);
    if (v14)
    {
      v33 = _AKLogSystem();
      v32 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v33;
        v11 = v32;
        sub_10001CEEC(v31);
        _os_log_impl(&_mh_execute_header, v10, v11, "Canceling auth attempt because credential access is unavailable.", v31, 2u);
      }

      objc_storeStrong(&v33, 0);
      (*(v39 + 2))(v39, 0, v40);
    }

    else if (!v40 || [v40 code] == -7120 || objc_msgSend(v41, "piggybackingForTrustedDevice") || objc_msgSend(v40, "ak_isServiceError"))
    {
      (*(v39 + 2))(v39, location[0], v40);
    }

    else
    {
      v30 = _AKLogSystem();
      v29 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v30;
        v9 = v29;
        sub_10001CEEC(v28);
        _os_log_impl(&_mh_execute_header, v8, v9, "All non-interactive auth options failed. Trying interactive auth.", v28, 2u);
      }

      objc_storeStrong(&v30, 0);
      v7 = selfCopy;
      v6 = v41;
      v21 = _NSConcreteStackBlock;
      v22 = -1073741824;
      v23 = 0;
      v24 = sub_10009D930;
      v25 = &unk_100320A58;
      v26 = _objc_retain(v40);
      v27 = _objc_retain(v39);
      [(AKAppleIDAuthenticationService *)v7 _attemptInteractiveAuthWithContext:v6 completion:&v21];
      objc_storeStrong(&v27, 0);
      objc_storeStrong(&v26, 0);
    }
  }

  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(location, 0);
}

- (void)_isInteractiveAuthRequiredForContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v71 = 0;
  objc_storeStrong(&v71, completion);
  v70 = _AKLogSystem();
  v69 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v76, location[0]);
    _os_log_impl(&_mh_execute_header, v70, v69, "Determining if interactive auth is required for context %@...", v76, 0xCu);
  }

  objc_storeStrong(&v70, 0);
  proxiedDeviceAnisetteData = [location[0] proxiedDeviceAnisetteData];
  if ([location[0] authenticationType] == 2 || objc_msgSend(location[0], "authenticationType") == 3)
  {
    v67 = _AKLogSystem();
    v66 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      sub_100036FE8(v75, [location[0] authenticationType]);
      _os_log_impl(&_mh_execute_header, v67, v66, "Context is explicitly configured for interactive auth %lul.", v75, 0xCu);
    }

    objc_storeStrong(&v67, 0);
    if (v71)
    {
      (*(v71 + 2))(v71, 1, 0);
    }

    v65 = 1;
  }

  else
  {
    _password = [location[0] _password];
    v27 = [_password length];
    _objc_release(_password);
    if (v27)
    {
      v64 = _AKLogSystem();
      v63 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v64;
        v25 = v63;
        sub_10001CEEC(v62);
        _os_log_impl(&_mh_execute_header, v24, v25, "A password was provided in the context, lets try interactive auth.", v62, 2u);
      }

      objc_storeStrong(&v64, 0);
      if (v71)
      {
        (*(v71 + 2))(v71, 1, 0);
      }

      v65 = 1;
    }

    else
    {
      proxiedDevice = [location[0] proxiedDevice];
      v59 = 0;
      v23 = 0;
      if (proxiedDevice)
      {
        proxiedAppleID = [location[0] proxiedAppleID];
        v59 = 1;
        v23 = proxiedAppleID == 0;
      }

      if (v59)
      {
        _objc_release(proxiedAppleID);
      }

      _objc_release(proxiedDevice);
      v61 = v23;
      v58 = proxiedDeviceAnisetteData != 0;
      v57 = 0;
      appProvidedContext = [location[0] appProvidedContext];
      v54 = 0;
      v21 = 0;
      if ([appProvidedContext isEqualToString:AKAppleIDAuthenticationAppProvidedContextConnectDependent])
      {
        proxiedDevice2 = [location[0] proxiedDevice];
        v54 = 1;
        v21 = proxiedDevice2 != 0;
      }

      if (v54)
      {
        _objc_release(proxiedDevice2);
      }

      _objc_release(appProvidedContext);
      v56 = v21;
      v53 = _AKLogSystem();
      v52 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        if (v58)
        {
          v4 = @"YES";
        }

        else
        {
          v4 = @"NO";
        }

        if (v61)
        {
          v5 = @"YES";
        }

        else
        {
          v5 = @"NO";
        }

        if (v56)
        {
          v6 = @"YES";
        }

        else
        {
          v6 = @"NO";
        }

        sub_100034214(v74, v4, v5, @"NO", v6);
        _os_log_impl(&_mh_execute_header, v53, v52, "Has proxied anisette data: %@ - Easy Sign In: %@ - Long Distance Op: %@ isInAgeMigrationFlow - %@", v74, 0x2Au);
      }

      objc_storeStrong(&v53, 0);
      if ((v57 & 1) != 0 || v56 || !v58 && !v61)
      {
        serviceIdentifiers = [location[0] serviceIdentifiers];
        v17 = 0;
        if (serviceIdentifiers)
        {
          v15 = 1;
          if ([location[0] authenticationType])
          {
            v15 = [location[0] authenticationType] == 1;
          }

          v17 = v15;
        }

        _objc_release(serviceIdentifiers);
        v48 = v17;
        if (v17)
        {
          v47 = _AKLogSystem();
          v46 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            v13 = v47;
            v14 = v46;
            sub_10001CEEC(v45);
            _os_log_impl(&_mh_execute_header, v13, v14, "Context is configured for silent service renew, interactive auth is not required.", v45, 2u);
          }

          objc_storeStrong(&v47, 0);
          if (v71)
          {
            (*(v71 + 2))(v71, 0, 0);
          }

          v65 = 1;
        }

        else
        {
          v44 = _AKLogSystem();
          v43 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v11 = v44;
            v12 = v43;
            sub_10001CEEC(v42);
            _os_log_impl(&_mh_execute_header, v11, v12, "Sanitizing context...", v42, 2u);
          }

          objc_storeStrong(&v44, 0);
          v41 = [location[0] authKitAccount:0];
          if (v41)
          {
            v39 = 0;
            v40 = 0;
            v39 = [(AKAccountManager *)selfCopy->_accountManager authenticationModeForAccount:v41];
            LOBYTE(v40) = [(AKAccountManager *)selfCopy->_accountManager mdmInformationRequiredForAccount:v41];
            [(AKAppleIDAuthenticationService *)selfCopy _correlateContext:location[0] withAuthModeInformation:v39, v40];
          }

          v10 = 1;
          if ([location[0] authenticationType] != 2)
          {
            v10 = [location[0] authenticationType] == 3;
          }

          v38 = v10;
          if (v10)
          {
            v37 = _AKLogSystem();
            v36 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              v8 = v37;
              v9 = v36;
              sub_10001CEEC(v35);
              _os_log_impl(&_mh_execute_header, v8, v9, "Determined context requires interactive auth after sanitizing.", v35, 2u);
            }

            objc_storeStrong(&v37, 0);
            if (v71)
            {
              (*(v71 + 2))(v71, 1, 0);
            }

            v65 = 1;
          }

          else
          {
            v7 = location[0];
            v29 = _NSConcreteStackBlock;
            v30 = -1073741824;
            v31 = 0;
            v32 = sub_10009E508;
            v33 = &unk_100321230;
            v34 = _objc_retain(v71);
            [v7 isConfiguredForTokenUpgradeWithCompletion:&v29];
            objc_storeStrong(&v34, 0);
            v65 = 0;
          }

          objc_storeStrong(&v41, 0);
        }
      }

      else
      {
        oslog = _AKLogSystem();
        v50 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v18 = oslog;
          v19 = v50;
          sub_10001CEEC(v49);
          _os_log_impl(&_mh_execute_header, v18, v19, "Context is configured for a proxied auth that requires interaction.", v49, 2u);
        }

        objc_storeStrong(&oslog, 0);
        if (v71)
        {
          (*(v71 + 2))(v71, 1, 0);
        }

        v65 = 1;
      }
    }
  }

  objc_storeStrong(&proxiedDeviceAnisetteData, 0);
  objc_storeStrong(&v71, 0);
  objc_storeStrong(location, 0);
}

- (id)_createProxAnalyticsForAuthenticationContextIfNeeded:(id)needed
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, needed);
  v45 = 0;
  v43 = 0;
  v17 = [location[0] authKitAccount:&v43];
  objc_storeStrong(&v45, v43);
  v44 = v17;
  if (!v17 || v45)
  {
    v42 = _AKLogSystem();
    v41 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_10001B098(v49, v44, v45);
      _os_log_error_impl(&_mh_execute_header, v42, v41, "Error getting account from context during prox auth creation event: %@ - %@", v49, 0x16u);
    }

    objc_storeStrong(&v42, 0);
  }

  v38 = 0;
  v16 = 1;
  if (v44)
  {
    v39 = +[AKAccountManager sharedInstance];
    v38 = 1;
    v16 = [(AKAccountManager *)v39 accountIsSignedIntoServices:v44]== 0;
  }

  if (v38)
  {
    _objc_release(v39);
  }

  v40 = v16;
  if (v16)
  {
    v37 = _AKLogSystem();
    v36 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v37;
      v15 = v36;
      sub_10001CEEC(v35);
      _os_log_impl(&_mh_execute_header, v14, v15, "New Device Authentication Detected!", v35, 2u);
    }

    objc_storeStrong(&v37, 0);
    companionDevice = [location[0] companionDevice];
    v12 = companionDevice;
    v29 = 0;
    v27 = 0;
    v13 = 1;
    if (!companionDevice)
    {
      companionDeviceAnisetteData = [location[0] companionDeviceAnisetteData];
      v29 = 1;
      v13 = 1;
      if (!companionDeviceAnisetteData)
      {
        companionKeyEnvelope = [location[0] companionKeyEnvelope];
        v27 = 1;
        v13 = companionKeyEnvelope != 0;
      }
    }

    if (v27)
    {
      _objc_release(companionKeyEnvelope);
    }

    if (v29)
    {
      _objc_release(companionDeviceAnisetteData);
    }

    _objc_release(v12);
    v31 = v13;
    if (v13)
    {
      v26 = _AKLogSystem();
      v25 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v26;
        v11 = v25;
        sub_10001CEEC(v24);
        _os_log_impl(&_mh_execute_header, v10, v11, "Proximity Authentication Detected!", v24, 2u);
      }

      objc_storeStrong(&v26, 0);
      v20 = _AKLogSystem();
      v19 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v6 = v20;
        v7 = v19;
        sub_10001CEEC(v18);
        _os_log_debug_impl(&_mh_execute_header, v6, v7, "New proximity authentication detected, setting up proximity result analytics", v18, 2u);
      }

      objc_storeStrong(&v20, 0);
      v47 = [AAFAnalyticsEvent ak_analyticsEventWithEventName:@"com.apple.authkit.proximityAuthentication" account:v44 error:0];
      v32 = 1;
    }

    else
    {
      oslog = _AKLogSystem();
      v22 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v8 = oslog;
        v9 = v22;
        sub_10001CEEC(v21);
        _os_log_impl(&_mh_execute_header, v8, v9, "Proximity Re-Authentication Detected!", v21, 2u);
      }

      objc_storeStrong(&oslog, 0);
      v47 = 0;
      v32 = 1;
    }
  }

  else
  {
    v34 = _AKLogSystem();
    v33 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v48, v44);
      _os_log_impl(&_mh_execute_header, v34, v33, "New Authentication Detected: %@", v48, 0xCu);
    }

    objc_storeStrong(&v34, 0);
    v47 = 0;
    v32 = 1;
  }

  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(location, 0);
  v4 = v47;

  return v4;
}

- (BOOL)_shouldPresentShieldForContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  if ([location[0] isEphemeral])
  {
    v38 = _AKLogSystem();
    v37 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v49, location[0]);
      _os_log_impl(&_mh_execute_header, v38, v37, "Shield should not be presented for ephemeral auth context: %@", v49, 0xCu);
    }

    objc_storeStrong(&v38, 0);
    v41 = 0;
    v36 = 1;
  }

  else if ([location[0] authenticationType] == 2 || objc_msgSend(location[0], "_capabilityForUIDisplay") == 2)
  {
    if ([location[0] _shouldBroadcastForProximityAuthOnly])
    {
      v33 = _AKLogSystem();
      v32 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000194D4(v47, location[0]);
        _os_log_impl(&_mh_execute_header, v33, v32, "Context is configured to only broadcast for proximity authentication only, shield should not be presented: %@", v47, 0xCu);
      }

      objc_storeStrong(&v33, 0);
      v41 = 0;
      v36 = 1;
    }

    else
    {
      proxiedDevice = [location[0] proxiedDevice];
      v30 = 0;
      v28 = 0;
      v15 = 1;
      if (!proxiedDevice)
      {
        companionDevice = [location[0] companionDevice];
        v30 = 1;
        v15 = 1;
        if (!companionDevice)
        {
          companionKeyEnvelope = [location[0] companionKeyEnvelope];
          v28 = 1;
          v15 = companionKeyEnvelope != 0;
        }
      }

      if (v28)
      {
        _objc_release(companionKeyEnvelope);
      }

      if (v30)
      {
        _objc_release(companionDevice);
      }

      _objc_release(proxiedDevice);
      if (v15)
      {
        oslog = _AKLogSystem();
        v26 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000194D4(v46, location[0]);
          _os_log_impl(&_mh_execute_header, oslog, v26, "Shield should not be presented for proximity authentication: %@", v46, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        v41 = 0;
        v36 = 1;
      }

      else
      {
        protoAccountContext = [location[0] protoAccountContext];
        v24 = 0;
        v13 = 0;
        if (protoAccountContext)
        {
          protoAccountContext2 = [location[0] protoAccountContext];
          v24 = 1;
          v13 = [protoAccountContext2 shouldForceShieldUI] == 0;
        }

        if (v24)
        {
          _objc_release(protoAccountContext2);
        }

        _objc_release(protoAccountContext);
        if (v13)
        {
          v23 = _AKLogSystem();
          v22 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            protoAccountContext3 = [location[0] protoAccountContext];
            sub_1000194D4(v45, protoAccountContext3);
            _os_log_impl(&_mh_execute_header, v23, v22, "Shield should not be presented for non-nil protoAccountContext without being forced: %@", v45, 0xCu);
            _objc_release(protoAccountContext3);
          }

          objc_storeStrong(&v23, 0);
          v41 = 0;
          v36 = 1;
        }

        else
        {
          accountMigrationContext = [location[0] accountMigrationContext];
          _objc_release(accountMigrationContext);
          if (accountMigrationContext)
          {
            v21 = _AKLogSystem();
            v20 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000194D4(v44, location[0]);
              _os_log_impl(&_mh_execute_header, v21, v20, "Shield should not be presented for context due to non-nil protoAccountContext or accountMigrationContext: %@", v44, 0xCu);
            }

            objc_storeStrong(&v21, 0);
            v41 = 0;
            v36 = 1;
          }

          else if (([(AKAccountManager *)selfCopy->_accountManager shieldSignInOrCreateFlows]& 1) != 0)
          {
            v19 = _AKLogSystem();
            v18 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000194D4(v43, location[0]);
              _os_log_impl(&_mh_execute_header, v19, v18, "Account manager determined shield should be presented: %@", v43, 0xCu);
            }

            objc_storeStrong(&v19, 0);
            v41 = 1;
            v36 = 1;
          }

          else
          {
            protoAccountContext4 = [location[0] protoAccountContext];
            shouldForceShieldUI = [protoAccountContext4 shouldForceShieldUI];
            _objc_release(protoAccountContext4);
            v17 = shouldForceShieldUI;
            v16 = _AKLogSystem();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v3 = @"be";
              if ((v17 & 1) == 0)
              {
                v3 = @"not be";
              }

              v5 = v3;
              v6 = location[0];
              protoAccountContext5 = [location[0] protoAccountContext];
              sub_10004DCC8(v42, v5, v6, protoAccountContext5);
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Shield should %@ presented: %@ based on protoAccountContext: %@", v42, 0x20u);
              _objc_release(protoAccountContext5);
            }

            objc_storeStrong(&v16, 0);
            v41 = v17 & 1;
            v36 = 1;
          }
        }
      }
    }
  }

  else
  {
    v35 = _AKLogSystem();
    v34 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v48, location[0]);
      _os_log_impl(&_mh_execute_header, v35, v34, "Only interactive and fully UI capable authentications can present shield UI: %@", v48, 0xCu);
    }

    objc_storeStrong(&v35, 0);
    v41 = 0;
    v36 = 1;
  }

  objc_storeStrong(location, 0);
  return v41 & 1;
}

- (void)_presentShieldWithContext:(id)context completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v21 = 0;
  objc_storeStrong(&v21, handler);
  authenticatableResource = [location[0] authenticatableResource];
  _objc_release(authenticatableResource);
  if (!authenticatableResource)
  {
    bundleID = [(AKClient *)selfCopy->_client bundleID];
    v7 = [AKAuthenticatableResourceFactory authenticatableResourceForBundleID:?];
    [location[0] setAuthenticatableResource:?];
    _objc_release(v7);
    _objc_release(bundleID);
  }

  v20 = _AKLogSystem();
  v19 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v24, location[0]);
    _os_log_debug_impl(&_mh_execute_header, v20, v19, "Requesting clearance for shield with context %@", v24, 0xCu);
  }

  objc_storeStrong(&v20, 0);
  authTrafficController = selfCopy->_authTrafficController;
  v4 = location[0];
  client = selfCopy->_client;
  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_10009F88C;
  v15 = &unk_100321C08;
  v18 = _objc_retain(v21);
  v16 = _objc_retain(location[0]);
  v17 = _objc_retain(selfCopy);
  [(AKAuthenticationTrafficController *)authTrafficController requestClearanceForShieldWithContext:v4 client:client completionHandler:&v11];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

- (void)_presentShieldForMigrationWithContext:(id)context completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v15 = 0;
  objc_storeStrong(&v15, handler);
  authTrafficController = selfCopy->_authTrafficController;
  v5 = location[0];
  client = selfCopy->_client;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1000A0168;
  v11 = &unk_100321C08;
  v14 = _objc_retain(v15);
  v12 = _objc_retain(location[0]);
  v13 = _objc_retain(selfCopy);
  [(AKAuthenticationTrafficController *)authTrafficController requestClearanceForShieldWithContext:v5 client:client completionHandler:?];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)_unsafe_presentShieldViewServiceWithContext:(id)context completionHandler:(id)handler
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v18 = 0;
  objc_storeStrong(&v18, handler);
  v17 = _AKLogSystem();
  v16 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v20, location[0]);
    _os_log_impl(&_mh_execute_header, v17, v16, "Launching shield view service with context: %@", v20, 0xCu);
  }

  objc_storeStrong(&v17, 0);
  v15 = [AKRemoteViewServiceConfiguration configurationWithRemoteBundleID:@"com.apple.AppleIDSetupUIService" remoteClassName:@"AppleIDSetupUIService.SetupAlertViewController"];
  v4 = [AKRemoteViewServiceController alloc];
  v14 = [(AKRemoteViewServiceController *)v4 initWithConfiguration:v15];
  v5 = v14;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_1000A0BE0;
  v11 = &unk_100321C58;
  v13 = _objc_retain(v18);
  v12 = _objc_retain(location[0]);
  [(AKRemoteViewServiceController *)v5 launchViewServiceWithCompletionHandler:&v7];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)performPasswordResetWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v38 = 0;
  objc_storeStrong(&v38, completion);
  v37 = _AKLogSystem();
  v36 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    bundleID = [(AKClient *)selfCopy->_client bundleID];
    sub_1000194D4(v41, bundleID);
    _os_log_impl(&_mh_execute_header, v37, v36, "Password reset request received from client: %@", v41, 0xCu);
    _objc_release(bundleID);
  }

  objc_storeStrong(&v37, 0);
  v29 = _NSConcreteStackBlock;
  v30 = -1073741824;
  v31 = 0;
  v32 = sub_1000A1974;
  v33 = &unk_100321258;
  v34 = _objc_retain(v38);
  v35 = objc_retainBlock(&v29);
  v16 = +[AKFeatureManager sharedManager];
  isForgotPasswordNativeTakeoverEnabled = [v16 isForgotPasswordNativeTakeoverEnabled];
  _objc_release(v16);
  if (isForgotPasswordNativeTakeoverEnabled)
  {
    hasPrivateAccess = 1;
    if (![(AKClient *)selfCopy->_client hasInternalAccess])
    {
      hasPrivateAccess = [(AKClient *)selfCopy->_client hasPrivateAccess];
    }

    v24 = hasPrivateAccess & 1;
    if (hasPrivateAccess)
    {
      v4 = +[AKAccountManager sharedInstance];
      primaryAuthKitAccount = [(AKAccountManager *)v4 primaryAuthKitAccount];
      _objc_release(v4);
      username = [primaryAuthKitAccount username];
      [location[0] setUsername:?];
      _objc_release(username);
      passwordResetPresenter = [(AKAppleIDAuthenticationService *)selfCopy passwordResetPresenter];
      [(AKPasswordResetPresenter *)passwordResetPresenter presentWithContext:location[0] completion:v35];
      _objc_release(passwordResetPresenter);
      objc_storeStrong(&primaryAuthKitAccount, 0);
      v25 = 0;
    }

    else
    {
      v23 = _AKLogSystem();
      v22 = 16;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v9 = v23;
        v10 = v22;
        sub_10001CEEC(v21);
        _os_log_error_impl(&_mh_execute_header, v9, v10, "Client doesn't have sufficient permission to perform password reset", v21, 2u);
      }

      objc_storeStrong(&v23, 0);
      if (v35)
      {
        v7 = v35;
        v8 = [NSError ak_errorWithCode:-7026];
        v7[2](v7, 0);
        _objc_release(v8);
      }

      v25 = 1;
    }
  }

  else
  {
    v28 = _AKLogSystem();
    v27 = 2;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v14 = v28;
      v15 = v27;
      sub_10001CEEC(v26);
      _os_log_debug_impl(&_mh_execute_header, v14, v15, "Forgot password native takeover feature is not enable, so not executing the request", v26, 2u);
    }

    objc_storeStrong(&v28, 0);
    if (v35)
    {
      v12 = v35;
      v13 = [NSError ak_errorWithCode:-7027];
      v12[2](v12, 0);
      _objc_release(v13);
    }

    v25 = 1;
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
}

- (void)_attemptBiometricOrPasscodeAuthWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v11 = 0;
  objc_storeStrong(&v11, completion);
  isContextEligibleForPasscodeAuth = [location[0] isContextEligibleForPasscodeAuth];
  if (isContextEligibleForPasscodeAuth & 1) != 0 || ([location[0] isContextEligibleForBiometricOrPasscodeAuth])
  {
    [(AKAppleIDAuthenticationService *)selfCopy _showBiometricOrPasscodeAuthWithContext:location[0] completion:v11];
  }

  else
  {
    v9 = _AKLogSystem();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      log = v9;
      type = v8;
      sub_10001CEEC(v7);
      _os_log_impl(&_mh_execute_header, log, type, "Biometric/Passcode validation not possible for current context.", v7, 2u);
    }

    objc_storeStrong(&v9, 0);
    [(AKAppleIDAuthenticationService *)selfCopy _attemptInteractiveAuthWithContext:location[0] completion:v11];
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)_showBiometricOrPasscodeAuthWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v23 = 0;
  objc_storeStrong(&v23, completion);
  v22 = _AKLogSystem();
  v21 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    log = v22;
    type = v21;
    sub_10001CEEC(v20);
    _os_log_impl(&_mh_execute_header, log, type, "Collecting biometric/passcode validation...", v20, 2u);
  }

  objc_storeStrong(&v22, 0);
  v4 = location[0];
  v5 = [location[0] authKitAccount:0];
  [AKAnalyticsSender sendAnalyticsEvent:"sendAnalyticsEvent:context:account:error:" context:@"com.apple.authkit.deviceAuthStart" account:v4 error:?];
  _objc_release(v5);
  authUILiaison = selfCopy->_authUILiaison;
  v6 = location[0];
  client = selfCopy->_client;
  v12 = _NSConcreteStackBlock;
  v13 = -1073741824;
  v14 = 0;
  v15 = sub_1000A1E3C;
  v16 = &unk_100321CA8;
  v17 = _objc_retain(location[0]);
  v18 = _objc_retain(selfCopy);
  v19 = _objc_retain(v23);
  [(AKAuthenticationUILiaison *)authUILiaison presentBiometricOrPasscodeValidationForContext:v6 client:client completion:&v12];
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

- (void)_attemptPasswordlessAuthOptionsWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v14 = 0;
  objc_storeStrong(&v14, completion);
  v5 = location[0];
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_1000A248C;
  v10 = &unk_1003217F8;
  v11 = _objc_retain(selfCopy);
  v12 = _objc_retain(location[0]);
  v13 = _objc_retain(v14);
  [v5 isConfiguredForTokenUpgradeWithCompletion:?];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)_attemptPasswordlessAuthWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v15 = 0;
  objc_storeStrong(&v15, completion);
  v5 = selfCopy;
  v4 = location[0];
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_1000A2E10;
  v11 = &unk_100321D48;
  v14 = _objc_retain(v15);
  v12 = _objc_retain(location[0]);
  v13 = _objc_retain(selfCopy);
  [(AKAppleIDAuthenticationService *)v5 _accountForContinuationWithContext:v4 completion:&v7];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)_accountForContinuationWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v15 = 0;
  objc_storeStrong(&v15, completion);
  v14 = 0;
  v12 = 0;
  v7 = [(AKAppleIDAuthenticationService *)selfCopy _accountForContinuationWithContext:location[0] error:&v12];
  objc_storeStrong(&v14, v12);
  v13 = v7;
  if (v7)
  {
    (*(v15 + 2))(v15, v13, 0);
    v11 = 1;
  }

  else
  {
    if ([location[0] isUsernameEditable])
    {
      oslog = _AKLogSystem();
      type = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        log = oslog;
        v5 = type;
        sub_10001CEEC(v8);
        _os_log_impl(&_mh_execute_header, log, v5, "Silent auth not allowed due to username being editable", v8, 2u);
      }

      objc_storeStrong(&oslog, 0);
      [(AKAppleIDAuthenticationService *)selfCopy _showContinueUsingUIWithContext:location[0] completion:v15];
    }

    else
    {
      (*(v15 + 2))(v15, 0, v14);
    }

    v11 = 0;
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)_showContinueUsingUIWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v39 = 0;
  objc_storeStrong(&v39, completion);
  if (+[AKAccountManager isAccountsFrameworkAvailable])
  {
    if ([location[0] _capabilityForUIDisplay] == 2)
    {
      v34 = _AKLogSystem();
      v33 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v34;
        v11 = v33;
        sub_10001CEEC(v32);
        _os_log_impl(&_mh_execute_header, v10, v11, "Looking for IDMS accounts to suggest using...", v32, 2u);
      }

      objc_storeStrong(&v34, 0);
      mostRecentlyUsedAuthKitAccount = [(AKAccountManager *)selfCopy->_accountManager mostRecentlyUsedAuthKitAccount];
      if (mostRecentlyUsedAuthKitAccount)
      {
        v27 = [(AKAccountManager *)selfCopy->_accountManager continuationTokenForAccount:mostRecentlyUsedAuthKitAccount];
        if (v27)
        {
          username = [mostRecentlyUsedAuthKitAccount username];
          v25 = _AKLogSystem();
          v24 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000194D4(v42, mostRecentlyUsedAuthKitAccount);
            _os_log_impl(&_mh_execute_header, v25, v24, "Telling client to ask the user about using Apple ID: %@", v42, 0xCu);
          }

          objc_storeStrong(&v25, 0);
          authUILiaison = selfCopy->_authUILiaison;
          v4 = location[0];
          client = selfCopy->_client;
          v6 = username;
          v15 = _NSConcreteStackBlock;
          v16 = -1073741824;
          v17 = 0;
          v18 = sub_1000A3C64;
          v19 = &unk_100321D98;
          v23 = _objc_retain(v39);
          v20 = _objc_retain(selfCopy);
          v21 = _objc_retain(location[0]);
          v22 = _objc_retain(mostRecentlyUsedAuthKitAccount);
          [(AKAuthenticationUILiaison *)authUILiaison presentKeepUsingUIForContext:v4 client:client appleID:v6 completion:&v15];
          objc_storeStrong(&v22, 0);
          objc_storeStrong(&v21, 0);
          objc_storeStrong(&v20, 0);
          objc_storeStrong(&v23, 0);
          objc_storeStrong(&username, 0);
          v35 = 0;
        }

        else
        {
          (*(v39 + 2))(v39, 0);
          v35 = 1;
        }

        objc_storeStrong(&v27, 0);
      }

      else
      {
        v30 = _AKLogSystem();
        v29 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v8 = v30;
          v9 = v29;
          sub_10001CEEC(v28);
          _os_log_impl(&_mh_execute_header, v8, v9, "Nothing found.", v28, 2u);
        }

        objc_storeStrong(&v30, 0);
        (*(v39 + 2))(v39, 0);
        v35 = 1;
      }

      objc_storeStrong(&mostRecentlyUsedAuthKitAccount, 0);
    }

    else
    {
      (*(v39 + 2))(v39, 0);
      v35 = 1;
    }
  }

  else
  {
    v38 = _AKLogSystem();
    v37 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      log = v38;
      type = v37;
      sub_10001CEEC(v36);
      _os_log_impl(&_mh_execute_header, log, type, "Accounts not available, skipping IDMS account lookup...", v36, 2u);
    }

    objc_storeStrong(&v38, 0);
    (*(v39 + 2))(v39, 0);
    v35 = 1;
  }

  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
}

- (id)_accountForContinuationWithContext:(id)context error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  errorCopy = error;
  if (!+[AKAccountManager isAccountsFrameworkAvailable])
  {
    v39 = _AKLogSystem();
    v38 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      log = v39;
      type = v38;
      sub_10001CEEC(v37);
      _os_log_impl(&_mh_execute_header, log, type, "Accounts not available, skipping IDMS account lookup...", v37, 2u);
    }

    objc_storeStrong(&v39, 0);
    v43 = 0;
    v36 = 1;
    goto LABEL_30;
  }

  if (([location[0] isUsernameEditable] & 1) == 0)
  {
    v32 = 0;
    v31 = 0;
    v29 = 0;
    v15 = [location[0] authKitAccount:&v29];
    objc_storeStrong(&v31, v29);
    v30 = v15;
    if (!v15)
    {
      v28 = _AKLogSystem();
      v27 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        username = [location[0] username];
        sub_1000194D4(v48, username);
        _os_log_impl(&_mh_execute_header, v28, v27, "No existing IDMS account for %@", v48, 0xCu);
        _objc_release(username);
      }

      objc_storeStrong(&v28, 0);
      goto LABEL_28;
    }

    oslog = _AKLogSystem();
    v25 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v47, v30);
      _os_log_impl(&_mh_execute_header, oslog, v25, "Found an existing IDMS account %@", v47, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v24 = 0;
    accountManager = selfCopy->_accountManager;
    obj = 0;
    v13 = [(AKAccountManager *)accountManager continuationTokenForAccount:v30 error:&obj];
    objc_storeStrong(&v24, obj);
    v23 = v13;
    if (v13)
    {
      objc_storeStrong(&v32, v30);
    }

    else
    {
      v21 = _AKLogSystem();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10001B098(v46, v30, v24);
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "We don't have a CK for %@ (Error: %@), so that's that.", v46, 0x16u);
      }

      objc_storeStrong(&v21, 0);
      domain = [v24 domain];
      v12 = 0;
      if ([domain isEqualToString:ACErrorDomain])
      {
        v12 = [v24 code] == 10;
      }

      _objc_release(domain);
      if (v12)
      {
        if (errorCopy)
        {
          v8 = AKAppleIDAuthenticationErrorDomain;
          v44 = NSUnderlyingErrorKey;
          v45 = v24;
          v9 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
          v10 = [NSError errorWithDomain:v8 code:-7065 userInfo:?];
          v5 = v10;
          *errorCopy = v10;
          _objc_release(v9);
        }

        v43 = 0;
        v36 = 1;
LABEL_27:
        objc_storeStrong(&v23, 0);
        objc_storeStrong(&v24, 0);
        if (v36)
        {
LABEL_29:
          objc_storeStrong(&v30, 0);
          objc_storeStrong(&v31, 0);
          objc_storeStrong(&v32, 0);
          goto LABEL_30;
        }

LABEL_28:
        v43 = _objc_retain(v32);
        v36 = 1;
        goto LABEL_29;
      }
    }

    v36 = 0;
    goto LABEL_27;
  }

  v35 = _AKLogSystem();
  v34 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v35;
    v17 = v34;
    sub_10001CEEC(v33);
    _os_log_impl(&_mh_execute_header, v16, v17, "Rejecting CK auth because username is marked as editable", v33, 2u);
  }

  objc_storeStrong(&v35, 0);
  v43 = 0;
  v36 = 1;
LABEL_30:
  objc_storeStrong(location, 0);
  v6 = v43;

  return v6;
}

- (void)_attemptInteractiveAuthWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v39 = 0;
  objc_storeStrong(&v39, completion);
  username = [location[0] username];
  v36 = 0;
  v17 = 0;
  if ([username length])
  {
    _password = [location[0] _password];
    v36 = 1;
    v17 = [_password length] != 0;
  }

  if (v36)
  {
    _objc_release(_password);
  }

  _objc_release(username);
  v38 = v17;
  if (v17)
  {
    v35 = _AKLogSystem();
    v34 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      log = v35;
      type = v34;
      sub_10001CEEC(v33);
      _os_log_impl(&_mh_execute_header, log, type, "Username and password already provided by context. One shot at non-interactive auth.", v33, 2u);
    }

    objc_storeStrong(&v35, 0);
    v11 = selfCopy;
    username2 = [location[0] username];
    _password2 = [location[0] _password];
    v10 = location[0];
    v25 = _NSConcreteStackBlock;
    v26 = -1073741824;
    v27 = 0;
    v28 = sub_1000A4B54;
    v29 = &unk_100321910;
    v30 = _objc_retain(location[0]);
    v31 = _objc_retain(selfCopy);
    v32 = _objc_retain(v39);
    [(AKAppleIDAuthenticationService *)v11 _verifyUsername:username2 password:_password2 context:v10 completion:&v25];
    _objc_release(_password2);
    _objc_release(username2);
    objc_storeStrong(&v32, 0);
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v30, 0);
  }

  else if ([location[0] _shouldSkipInitialReachabilityCheck] || -[CUTReachability currentReachabilityStatus](selfCopy->_reachability, "currentReachabilityStatus"))
  {
    v21 = _AKLogSystem();
    v20 = 2;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v4 = v21;
      v5 = v20;
      sub_10001CEEC(v19);
      _os_log_debug_impl(&_mh_execute_header, v4, v5, "Context did not provide a username and/or password or interaction requested.", v19, 2u);
    }

    objc_storeStrong(&v21, 0);
    [(AKAppleIDAuthenticationService *)selfCopy _performInteractiveAuthWithContext:location[0] completion:v39];
  }

  else
  {
    v24 = _AKLogSystem();
    v23 = 16;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v8 = v24;
      v9 = v23;
      sub_10001CEEC(v22);
      _os_log_error_impl(&_mh_execute_header, v8, v9, "Interaction requested but network is unreachable, bailing...", v22, 2u);
    }

    objc_storeStrong(&v24, 0);
    v6 = v39;
    v7 = [NSError ak_errorWithCode:-7005];
    v6[2](v6, 0);
    _objc_release(v7);
  }

  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
}

- (void)refreshAuthMetadataWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v15 = 0;
  objc_storeStrong(&v15, completion);
  v6 = selfCopy;
  v5 = location[0];
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_1000A4FD4;
  v11 = &unk_1003217F8;
  v12 = _objc_retain(selfCopy);
  v13 = _objc_retain(location[0]);
  v14 = _objc_retain(v15);
  [(AKAppleIDAuthenticationService *)v6 _refreshLocalAccountAndUpdateContext:v5 completion:?];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)_performInteractiveAuthWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  v5 = location[0];
  v6 = [location[0] authKitAccount:0];
  [AKAnalyticsSender sendAnalyticsEvent:"sendAnalyticsEvent:context:account:error:" context:@"com.apple.authkit.interactiveAuthStart" account:v5 error:?];
  _objc_release(v6);
  v8 = selfCopy;
  v7 = location[0];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1000A54C0;
  v12 = &unk_1003217F8;
  v13 = _objc_retain(location[0]);
  v14 = _objc_retain(selfCopy);
  v15 = _objc_retain(v16);
  [(AKAppleIDAuthenticationService *)v8 refreshAuthMetadataWithContext:v7 completion:?];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_shouldBroadcastForProximity:(id)proximity
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, proximity);
  if ((+[AKFeatureManager isProxForAuthkitEnabled](AKFeatureManager, "isProxForAuthkitEnabled") & 1) == 0 || [location[0] disableProximityAuth])
  {
    v19 = 0;
  }

  else
  {
    v10 = +[AKAccountManager sharedInstance];
    primaryAuthKitAccount = [(AKAccountManager *)v10 primaryAuthKitAccount];
    _objc_release(v10);
    v11 = 1;
    if ([location[0] _capabilityForUIDisplay] != 1)
    {
      v11 = [location[0] _capabilityForUIDisplay] == 4;
    }

    v15 = v11;
    if ([location[0] isContextRequestingReauthForExistingService])
    {
      v14 = _AKLogSystem();
      v13 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        log = v14;
        type = v13;
        sub_10001CEEC(v12);
        _os_log_impl(&_mh_execute_header, log, type, "Skipping proximity auth for re-authentication flows", v12, 2u);
      }

      objc_storeStrong(&v14, 0);
      v19 = 0;
    }

    else if (primaryAuthKitAccount)
    {
      v5 = +[AKAccountManager sharedInstance];
      v6 = [(AKAccountManager *)v5 isProximityAuthEligible:primaryAuthKitAccount];
      _objc_release(v5);
      v7 = 0;
      if (v6)
      {
        v7 = 0;
        if (([(ProximityAuthServiceProvider *)selfCopy->proximityServiceProvider shouldBeginProximityAuthentiation]& 1) != 0)
        {
          v7 = !v15;
        }
      }

      v19 = v7;
    }

    else
    {
      v4 = 0;
      if (([(ProximityAuthServiceProvider *)selfCopy->proximityServiceProvider shouldBeginProximityAuthentiation]& 1) != 0)
      {
        v4 = !v15;
      }

      v19 = v4;
    }

    objc_storeStrong(&primaryAuthKitAccount, 0);
  }

  objc_storeStrong(location, 0);
  return v19;
}

- (void)_performPasswordlessAuth:(id)auth completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, auth);
  v18 = 0;
  objc_storeStrong(&v18, completion);
  v17 = _AKLogSystem();
  v16 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_10004DCC8(v21, selfCopy, location[0], selfCopy->_client);
    _os_log_debug_impl(&_mh_execute_header, v17, v16, "%@: Obtaining full UI capability before attempting passwordless auth with context (%@) for client (%@)", v21, 0x20u);
  }

  objc_storeStrong(&v17, 0);
  authUILiaison = selfCopy->_authUILiaison;
  v4 = location[0];
  client = selfCopy->_client;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1000A6560;
  v12 = &unk_100321DE8;
  v13 = _objc_retain(selfCopy);
  v15 = _objc_retain(v18);
  v14 = _objc_retain(location[0]);
  [(AKAuthenticationUILiaison *)authUILiaison fetchUICapableContext:v4 client:client completion:&v8];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)_correlateContext:(id)context withAuthModeInformation:(id)information
{
  informationCopy = information;
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  [location[0] setAuthenticationMode:informationCopy.var0];
  if ((+[AKFeatureManager isEnforceMDMPolicyEnabled]& 1) != 0)
  {
    [location[0] setIsMDMInformationRequired:informationCopy.var1];
  }

  v4 = objc_alloc_init(AKAuthenticationContextSanitizer);
  [(AKAuthenticationContextSanitizer *)v4 sanitizeContext:location[0]];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateAltDSIDAndUsername:(id)username
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, username);
  altDSID = [location[0] altDSID];
  _objc_release(altDSID);
  if (altDSID)
  {
    v10 = +[AKAccountManager sharedInstance];
    altDSID2 = [location[0] altDSID];
    v31 = [AKAccountManager authKitAccountWithAltDSID:v10 error:"authKitAccountWithAltDSID:error:"];
    _objc_release(altDSID2);
    _objc_release(v10);
    if (v31)
    {
      username = [location[0] username];
      v29 = 0;
      v27 = 0;
      v8 = 0;
      if (username)
      {
        username2 = [location[0] username];
        v29 = 1;
        username3 = [v31 username];
        v27 = 1;
        v8 = [username2 isEqualToString:?] == 0;
      }

      if (v27)
      {
        _objc_release(username3);
      }

      if (v29)
      {
        _objc_release(username2);
      }

      _objc_release(username);
      if (v8)
      {
        v26 = _AKLogSystem();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          username4 = [location[0] username];
          username5 = [v31 username];
          _proxiedAppName = [location[0] _proxiedAppName];
          sub_10004DCC8(v43, username4, username5, _proxiedAppName);
          _os_log_fault_impl(&_mh_execute_header, v26, OS_LOG_TYPE_FAULT, "Context provided username is different %@(context) vs %@(account) for client %@. Trusting AuthKit account username.", v43, 0x20u);
          _objc_release(_proxiedAppName);
          _objc_release(username5);
          _objc_release(username4);
        }

        objc_storeStrong(&v26, 0);
        username6 = [v31 username];
        [location[0] setUsername:?];
        _objc_release(username6);
      }
    }

    objc_storeStrong(&v31, 0);
  }

  else
  {
    dSID = [location[0] DSID];
    _objc_release(dSID);
    if (dSID)
    {
      v41 = _AKLogSystem();
      v40 = 2;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        log = v41;
        type = v40;
        sub_10001CEEC(v39);
        _os_log_debug_impl(&_mh_execute_header, log, type, "No altDSID found on context. Checking DSID..", v39, 2u);
      }

      objc_storeStrong(&v41, 0);
      v20 = +[AKAccountManager sharedInstance];
      dSID2 = [location[0] DSID];
      v18 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [dSID2 longLongValue]);
      v38 = [(AKAccountManager *)v20 authKitAccountWithDSID:?];
      _objc_release(v18);
      _objc_release(dSID2);
      _objc_release(v20);
      v21 = [v38 accountPropertyForKey:AKAltDSID];
      _objc_release(v21);
      if (v21)
      {
        v15 = [v38 accountPropertyForKey:AKAltDSID];
        [location[0] setAltDSID:?];
        _objc_release(v15);
        username7 = [location[0] username];
        v36 = 0;
        v34 = 0;
        v17 = 0;
        if (username7)
        {
          username8 = [location[0] username];
          v36 = 1;
          username9 = [v38 username];
          v34 = 1;
          v17 = [username8 isEqualToString:?] == 0;
        }

        if (v34)
        {
          _objc_release(username9);
        }

        if (v36)
        {
          _objc_release(username8);
        }

        _objc_release(username7);
        if (v17)
        {
          v33 = _AKLogSystem();
          v32 = OS_LOG_TYPE_FAULT;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
          {
            username10 = [location[0] username];
            username11 = [v38 username];
            _proxiedAppName2 = [location[0] _proxiedAppName];
            sub_10004DCC8(v44, username10, username11, _proxiedAppName2);
            _os_log_fault_impl(&_mh_execute_header, v33, v32, "Context provided username is different %@(context) vs %@(account) for client %@. Trusting AuthKit account username.", v44, 0x20u);
            _objc_release(_proxiedAppName2);
            _objc_release(username11);
            _objc_release(username10);
          }

          objc_storeStrong(&v33, 0);
          username12 = [v38 username];
          [location[0] setUsername:?];
          _objc_release(username12);
        }
      }

      objc_storeStrong(&v38, 0);
    }
  }

  objc_storeStrong(location, 0);
}

- (void)_refreshLocalAccountAndUpdateContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v37 = 0;
  objc_storeStrong(&v37, completion);
  v36 = _AKLogSystem();
  v35 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v40, "[AKAppleIDAuthenticationService _refreshLocalAccountAndUpdateContext:completion:]", 2344);
    _os_log_debug_impl(&_mh_execute_header, v36, v35, "%s (%d) called", v40, 0x12u);
  }

  objc_storeStrong(&v36, 0);
  if ([location[0] _shouldRefreshAccountAndUpdateContext])
  {
    [(AKAppleIDAuthenticationService *)selfCopy _updateAltDSIDAndUsername:location[0]];
    altDSID = [location[0] altDSID];
    _objc_release(altDSID);
    if (altDSID)
    {
      v30 = +[AKUserInfoController sharedController];
      v10 = [location[0] authKitAccount:0];
      v29 = [v30 previousAccountInfoRefreshDateForAccount:?];
      _objc_release(v10);
      v27 = 0;
      v11 = 0;
      if (v29)
      {
        v28 = +[NSDate date];
        v27 = 1;
        [(NSDate *)v28 timeIntervalSinceDate:v29];
        v11 = v4 < 86400.0;
      }

      if (v27)
      {
        _objc_release(v28);
      }

      if (v11)
      {
        v26 = _AKLogSystem();
        v25 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v8 = v26;
          v9 = v25;
          sub_10001CEEC(v24);
          _os_log_impl(&_mh_execute_header, v8, v9, "Last account info validation was less than 24 hours ago. Skipping.", v24, 2u);
        }

        objc_storeStrong(&v26, 0);
        (*(v37 + 2))(v37, 0, 0);
        v34 = 1;
      }

      else
      {
        v6 = v30;
        altDSID2 = [location[0] altDSID];
        client = selfCopy->_client;
        v16 = _NSConcreteStackBlock;
        v17 = -1073741824;
        v18 = 0;
        v19 = sub_1000A78FC;
        v20 = &unk_100321E10;
        v23 = _objc_retain(v37);
        v21 = _objc_retain(location[0]);
        v22 = _objc_retain(selfCopy);
        [v6 fetchUserInformationForAltDSID:altDSID2 client:client completion:&v16];
        _objc_release(altDSID2);
        objc_storeStrong(&v22, 0);
        objc_storeStrong(&v21, 0);
        objc_storeStrong(&v23, 0);
        v34 = 0;
      }

      objc_storeStrong(&v29, 0);
      objc_storeStrong(&v30, 0);
    }

    else
    {
      v33 = _AKLogSystem();
      v32 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v33;
        v13 = v32;
        sub_10001CEEC(v31);
        _os_log_impl(&_mh_execute_header, v12, v13, "No altDSID on context. Nothing to validate.", v31, 2u);
      }

      objc_storeStrong(&v33, 0);
      (*(v37 + 2))(v37, 0, 0);
      v34 = 1;
    }
  }

  else
  {
    (*(v37 + 2))(v37, 1, 0);
    v34 = 1;
  }

  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);
}

- (void)_refreshAuthModeIfNecessaryForContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v33 = 0;
  objc_storeStrong(&v33, completion);
  v31 = 0;
  v29 = 0;
  v13 = 1;
  if (([location[0] isConfiguredForAccountCreation] & 1) == 0)
  {
    v13 = 1;
    if (([location[0] needsCredentialRecovery] & 1) == 0)
    {
      v13 = 1;
      if (([location[0] needsPasswordChange] & 1) == 0)
      {
        username = [location[0] username];
        v31 = 1;
        v13 = 1;
        if (username)
        {
          username2 = [location[0] username];
          v29 = 1;
          v11 = 0;
          if (username2)
          {
            v11 = [location[0] authenticationType] == 3;
          }

          v13 = v11;
        }
      }
    }
  }

  if (v29)
  {
    _objc_release(username2);
  }

  if (v31)
  {
    _objc_release(username);
  }

  if (v13)
  {
    (*(v33 + 2))(v33, 1, 0);
    v28 = 1;
  }

  else
  {
    v27 = [location[0] authKitAccount:0];
    if (v27)
    {
      v26 = [(AKAccountManager *)selfCopy->_accountManager shouldUpdateAuthModeForAccount:v27];
      if (v26)
      {
        v25 = _AKLogSystem();
        v24 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          log = v25;
          type = v24;
          sub_10001CEEC(v23);
          _os_log_impl(&_mh_execute_header, log, type, "More than 24 hours since the last authentication mode was obtained, fetching authentication mode...", v23, 2u);
        }

        objc_storeStrong(&v25, 0);
        [(AKAppleIDAuthenticationService *)selfCopy _refreshAuthModeFromServerForContext:location[0] completion:v33];
      }

      else
      {
        v22 = _AKLogSystem();
        v21 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v7 = v22;
          v8 = v21;
          sub_10001CEEC(v20);
          _os_log_impl(&_mh_execute_header, v7, v8, "Less than 24 hours since the last authentication mode was obtained, using last known authentication mode", v20, 2u);
        }

        objc_storeStrong(&v22, 0);
        v18 = 0;
        v19 = 0;
        v18 = [(AKAccountManager *)selfCopy->_accountManager authenticationModeForAccount:v27];
        LOBYTE(v19) = [(AKAccountManager *)selfCopy->_accountManager mdmInformationRequiredForAccount:v27];
        [(AKAppleIDAuthenticationService *)selfCopy _correlateContext:location[0] withAuthModeInformation:v18, v19];
        (*(v33 + 2))(v33, 1, 0);
      }
    }

    else if ([location[0] authenticationMode])
    {
      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v4 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [location[0] authenticationMode]);
        sub_1000194D4(v36, v4);
        _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Skipping refresh, authmode is known: %@", v36, 0xCu);
        _objc_release(v4);
      }

      objc_storeStrong(&oslog, 0);
      (*(v33 + 2))(v33, 1, 0);
    }

    else
    {
      v17 = _AKLogSystem();
      v16 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v17;
        v6 = v16;
        sub_10001CEEC(v15);
        _os_log_impl(&_mh_execute_header, v5, v6, "No AuthKit account and authentication mode is unknown, fetching authentication mode...", v15, 2u);
      }

      objc_storeStrong(&v17, 0);
      [(AKAppleIDAuthenticationService *)selfCopy _refreshAuthModeFromServerForContext:location[0] completion:v33];
    }

    objc_storeStrong(&v27, 0);
    v28 = 0;
  }

  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
}

- (void)_refreshAuthModeFromServerForContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v15 = 0;
  objc_storeStrong(&v15, completion);
  v6 = selfCopy;
  v5 = location[0];
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_1000A8624;
  v11 = &unk_100321E38;
  v14 = _objc_retain(v15);
  v12 = _objc_retain(selfCopy);
  v13 = _objc_retain(location[0]);
  [(AKAppleIDAuthenticationService *)v6 _fetchAuthModeInfoWithContext:v5 completion:?];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleBasicLoginUICompletionWithUsername:(id)username password:(id)password context:(id)context additionalData:(id)data collectionError:(id)error completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, username);
  v127 = 0;
  objc_storeStrong(&v127, password);
  v126 = 0;
  objc_storeStrong(&v126, context);
  v125 = 0;
  objc_storeStrong(&v125, data);
  v124 = 0;
  objc_storeStrong(&v124, error);
  v123 = 0;
  objc_storeStrong(&v123, completion);
  v52 = v126;
  v53 = [v126 authKitAccount:0];
  [AKAnalyticsSender sendAnalyticsEvent:"sendAnalyticsEvent:context:account:error:" context:@"com.apple.authkit.interactiveAuth" account:v52 error:?];
  _objc_release(v53);
  v118[0] = _NSConcreteStackBlock;
  v118[1] = 3221225472;
  v118[2] = sub_1000A9704;
  v118[3] = &unk_100321910;
  v119 = _objc_retain(selfCopy);
  v120 = _objc_retain(v126);
  v121 = _objc_retain(v123);
  v122 = objc_retainBlock(v118);
  if (v124)
  {
    domain = [v124 domain];
    v46 = 0;
    if ([domain isEqual:AKAppleIDAuthenticationErrorDomain])
    {
      v46 = [v124 code] == -7017;
    }

    _objc_release(domain);
    if (v46)
    {
      v117 = _AKLogSystem();
      v116 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
      {
        log = v117;
        type = v116;
        sub_10001CEEC(v115);
        _os_log_impl(&_mh_execute_header, log, type, "User forgot their credentials.", v115, 2u);
      }

      objc_storeStrong(&v117, 0);
      if (location[0])
      {
        [v126 setUsername:location[0]];
      }

      v42 = selfCopy;
      v41 = v126;
      v106 = _NSConcreteStackBlock;
      v107 = -1073741824;
      v108 = 0;
      v109 = sub_1000A99B8;
      v110 = &unk_100321E88;
      v111 = _objc_retain(selfCopy);
      v112 = _objc_retain(v126);
      v113 = _objc_retain(v123);
      v114 = _objc_retain(v122);
      [(AKAppleIDAuthenticationService *)v42 _recoverCredentialsAndAuthenticateWithContext:v41 completion:&v106];
      objc_storeStrong(&v114, 0);
      objc_storeStrong(&v113, 0);
      objc_storeStrong(&v112, 0);
      objc_storeStrong(&v111, 0);
    }

    else
    {
      domain2 = [v124 domain];
      v40 = 0;
      if ([domain2 isEqual:AKAppleIDAuthenticationErrorDomain])
      {
        v40 = [v124 code] == -7016;
      }

      _objc_release(domain2);
      if (v40)
      {
        oslog = _AKLogSystem();
        v104 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v37 = oslog;
          v38 = v104;
          sub_10001CEEC(v103);
          _os_log_impl(&_mh_execute_header, v37, v38, "User requested a new Apple ID.", v103, 2u);
        }

        objc_storeStrong(&oslog, 0);
        v36 = selfCopy;
        v35 = v126;
        v94 = _NSConcreteStackBlock;
        v95 = -1073741824;
        v96 = 0;
        v97 = sub_1000A9A80;
        v98 = &unk_100321E88;
        v99 = _objc_retain(selfCopy);
        v100 = _objc_retain(v126);
        v101 = _objc_retain(v123);
        v102 = _objc_retain(v122);
        [(AKAppleIDAuthenticationService *)v36 _createNewAppleIDAndAuthenticateWithContext:v35 completion:&v94];
        objc_storeStrong(&v102, 0);
        objc_storeStrong(&v101, 0);
        objc_storeStrong(&v100, 0);
        objc_storeStrong(&v99, 0);
      }

      else if ([v124 ak_isUserCancelError])
      {
        v93 = _AKLogSystem();
        v92 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
        {
          v33 = v93;
          v34 = v92;
          sub_10001CEEC(v91);
          _os_log_impl(&_mh_execute_header, v33, v34, "User canceled. Aborting auth.", v91, 2u);
        }

        objc_storeStrong(&v93, 0);
        (*(v122 + 2))(v122, 0, v124);
      }

      else if ([v124 ak_isIncompatibleDevicesError])
      {
        v90 = _AKLogSystem();
        v89 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
        {
          v31 = v90;
          v32 = v89;
          sub_10001CEEC(v88);
          _os_log_impl(&_mh_execute_header, v31, v32, "User has incompatible devices. Aborting auth.", v88, 2u);
        }

        objc_storeStrong(&v90, 0);
        (*(v122 + 2))(v122, 0, v124);
      }

      else if ([v124 ak_isUnableToPromptError] & 1) != 0 || (objc_msgSend(v124, "ak_isSurrogateAuthAlreadyInProgressError"))
      {
        v87 = _AKLogSystem();
        v86 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
        {
          v29 = v87;
          v30 = v86;
          sub_10001CEEC(v85);
          _os_log_impl(&_mh_execute_header, v29, v30, "Unable to show prompt. Aborting auth.", v85, 2u);
        }

        objc_storeStrong(&v87, 0);
        userInfo = [v124 userInfo];
        v28 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];
        if (v28)
        {
          v8 = _objc_retain(v28);
        }

        else
        {
          v8 = _objc_retain(v124);
        }

        v84 = v8;
        _objc_release(v28);
        _objc_release(userInfo);
        (*(v123 + 2))();
        objc_storeStrong(&v84, 0);
      }

      else
      {
        domain3 = [v124 domain];
        _keepAlive = 0;
        if ([domain3 isEqual:AKAppleIDAuthenticationErrorDomain])
        {
          _keepAlive = [v126 _keepAlive];
        }

        _objc_release(domain3);
        if (_keepAlive)
        {
          [(AKAppleIDAuthenticationService *)selfCopy _keepLoginAliveWithContext:v126 error:v124 andCompletion:v123];
        }

        else
        {
          domain4 = [v124 domain];
          v24 = 0;
          if ([domain4 isEqual:AKAppleIDAuthenticationErrorDomain])
          {
            v24 = [v124 code] == -7048;
          }

          _objc_release(domain4);
          if (v24)
          {
            v83 = _AKLogSystem();
            v82 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
            {
              v21 = v83;
              v22 = v82;
              sub_10001CEEC(v81);
              _os_log_impl(&_mh_execute_header, v21, v22, "User request client alternate action. Aborting auth.", v81, 2u);
            }

            objc_storeStrong(&v83, 0);
            (*(v122 + 2))(v122, 0, v124);
          }

          else if ([v124 ak_isUserTryAgainError])
          {
            v80 = _AKLogSystem();
            v79 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
            {
              v19 = v80;
              v20 = v79;
              sub_10001CEEC(v78);
              _os_log_impl(&_mh_execute_header, v19, v20, "User chose to try again, aka retry auth.", v78, 2u);
            }

            objc_storeStrong(&v80, 0);
            [(AKAppleIDAuthenticationService *)selfCopy _showAlertForVerificationError:v124 context:v126 completion:v123];
          }

          else
          {
            v77 = _AKLogSystem();
            v76 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              sub_1000194D4(v130, v124);
              _os_log_error_impl(&_mh_execute_header, v77, v76, "Something bad happened! %@", v130, 0xCu);
            }

            objc_storeStrong(&v77, 0);
            (*(v123 + 2))(v123, 0, v124);
          }
        }
      }
    }
  }

  else if ([location[0] length] && objc_msgSend(v127, "length"))
  {
    v66 = _AKLogSystem();
    v65 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v66;
      v14 = v65;
      sub_10001CEEC(v64);
      _os_log_impl(&_mh_execute_header, v13, v14, "Successfully obtained password. Time for SRP auth.", v64, 2u);
    }

    objc_storeStrong(&v66, 0);
    v12 = selfCopy;
    v9 = location[0];
    v10 = v127;
    v11 = v126;
    v54 = _NSConcreteStackBlock;
    v55 = -1073741824;
    v56 = 0;
    v57 = sub_1000A9D88;
    v58 = &unk_100321ED8;
    v59 = _objc_retain(v125);
    v62 = _objc_retain(v122);
    v60 = _objc_retain(selfCopy);
    v61 = _objc_retain(v126);
    v63 = _objc_retain(v123);
    [(AKAppleIDAuthenticationService *)v12 _verifyUsername:v9 password:v10 context:v11 completion:&v54];
    objc_storeStrong(&v63, 0);
    objc_storeStrong(&v61, 0);
    objc_storeStrong(&v60, 0);
    objc_storeStrong(&v62, 0);
    objc_storeStrong(&v59, 0);
  }

  else
  {
    v18 = selfCopy;
    v15 = v126;
    v16 = v127;
    v17 = location[0];
    v67 = _NSConcreteStackBlock;
    v68 = -1073741824;
    v69 = 0;
    v70 = sub_1000A9C30;
    v71 = &unk_100321EB0;
    v74 = _objc_retain(v123);
    v72 = _objc_retain(v126);
    v73 = _objc_retain(selfCopy);
    v75 = _objc_retain(v122);
    [(AKAppleIDAuthenticationService *)v18 _handleMissingUsernameOrPasswordForContext:v15 password:v16 username:v17 completion:&v67];
    objc_storeStrong(&v75, 0);
    objc_storeStrong(&v73, 0);
    objc_storeStrong(&v72, 0);
    objc_storeStrong(&v74, 0);
  }

  objc_storeStrong(&v122, 0);
  objc_storeStrong(&v121, 0);
  objc_storeStrong(&v120, 0);
  objc_storeStrong(&v119, 0);
  objc_storeStrong(&v123, 0);
  objc_storeStrong(&v124, 0);
  objc_storeStrong(&v125, 0);
  objc_storeStrong(&v126, 0);
  objc_storeStrong(&v127, 0);
  objc_storeStrong(location, 0);
}

- (void)_keepLoginAliveWithContext:(id)context error:(id)error andCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v13 = 0;
  objc_storeStrong(&v13, error);
  v12 = 0;
  objc_storeStrong(&v12, completion);
  v11 = _AKLogSystem();
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    log = v11;
    type = v10;
    sub_10001CEEC(v9);
    _os_log_impl(&_mh_execute_header, log, type, "Prompt should be kept alive, retry auth.", v9, 2u);
  }

  objc_storeStrong(&v11, 0);
  if (!v13 || [v13 ak_isUserCancelError])
  {
    [(AKAppleIDAuthenticationService *)selfCopy _authenticateWithContext:location[0] completion:v12];
  }

  else
  {
    [(AKAppleIDAuthenticationService *)selfCopy _showAlertForVerificationError:v13 context:location[0] completion:v12];
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleMissingUsernameOrPasswordForContext:(id)context password:(id)password username:(id)username completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v32 = 0;
  objc_storeStrong(&v32, password);
  v31 = 0;
  objc_storeStrong(&v31, username);
  v30 = 0;
  objc_storeStrong(&v30, completion);
  if ([v31 length])
  {
    [location[0] setUsername:v31];
    v11 = selfCopy;
    v10 = location[0];
    v22 = _NSConcreteStackBlock;
    v23 = -1073741824;
    v24 = 0;
    v25 = sub_1000AA9CC;
    v26 = &unk_1003217F8;
    v27 = _objc_retain(location[0]);
    v28 = _objc_retain(selfCopy);
    v29 = _objc_retain(v30);
    [(AKAppleIDAuthenticationService *)v11 refreshAuthMetadataWithContext:v10 completion:&v22];
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v27, 0);
  }

  else
  {
    v21 = _AKLogSystem();
    v20 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      log = v21;
      type = v20;
      sub_10001CEEC(v19);
      _os_log_impl(&_mh_execute_header, log, type, "Username was not entered.", v19, 2u);
    }

    objc_storeStrong(&v21, 0);
    if (![v32 length])
    {
      v18 = _AKLogSystem();
      v17 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v18;
        v7 = v17;
        sub_10001CEEC(v16);
        _os_log_impl(&_mh_execute_header, v6, v7, "Password was not entered.", v16, 2u);
      }

      objc_storeStrong(&v18, 0);
    }

    v15 = [NSError ak_errorWithCode:-7012];
    [(AKAppleIDAuthenticationService *)selfCopy _showAlertForVerificationError:v15 context:location[0] completion:v30];
    objc_storeStrong(&v15, 0);
  }

  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleVerificationError:(id)error forContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v14 = 0;
  objc_storeStrong(&v14, context);
  v13 = 0;
  objc_storeStrong(&v13, completion);
  if ([location[0] ak_isUserCancelError])
  {
    (*(v13 + 2))(v13, 0, location[0]);
  }

  else if ([location[0] code] == -7006)
  {
    v12 = 0;
    v10 = 0;
    v7 = [(AKAppleIDAuthenticationService *)selfCopy _incrementAttemptsForContext:v14 error:&v10];
    objc_storeStrong(&v12, v10);
    v11 = v7;
    if (v7)
    {
      if ([v14 _capabilityForUIDisplay] == 2)
      {
        [(AKAppleIDAuthenticationService *)selfCopy _showAlertForVerificationError:v12 context:v14 completion:v13];
      }

      else
      {
        v5 = v13;
        v6 = [NSError ak_errorWithCode:-7017 underlyingError:location[0]];
        v5[2](v5, 0);
        _objc_release(v6);
      }
    }

    else
    {
      [(AKAppleIDAuthenticationService *)selfCopy _showAlertForVerificationError:location[0] context:v14 completion:v13];
    }

    objc_storeStrong(&v12, 0);
  }

  else
  {
    [(AKAppleIDAuthenticationService *)selfCopy _showAlertForVerificationError:location[0] context:v14 completion:v13];
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)_showAlertForVerificationError:(id)error context:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v18 = 0;
  objc_storeStrong(&v18, context);
  v17 = 0;
  objc_storeStrong(&v17, completion);
  v9 = selfCopy;
  v7 = location[0];
  v8 = v18;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1000AB0F4;
  v13 = &unk_100321DC0;
  v14 = _objc_retain(selfCopy);
  v15 = _objc_retain(v18);
  v16 = _objc_retain(v17);
  [(AKAppleIDAuthenticationService *)v9 _showAlertForLoginError:v7 context:v8 completion:?];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_incrementAttemptsForContext:(id)context error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  errorCopy = error;
  username = [location[0] username];
  v13 = 0;
  if ([username length])
  {
    v13 = [location[0] isUsernameEditable] == 0;
  }

  _objc_release(username);
  if (!v13)
  {
    goto LABEL_12;
  }

  v18 = _AKLogSystem();
  v17 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [location[0] _attemptIndex]);
    sub_1000194D4(v22, v10);
    _os_log_impl(&_mh_execute_header, v18, v17, "Auth attempt %@ has failed. Incrementing counter...", v22, 0xCu);
    _objc_release(v10);
  }

  objc_storeStrong(&v18, 0);
  [location[0] set_attemptIndex:{objc_msgSend(location[0], "_attemptIndex") + 1}];
  _attemptIndex = [location[0] _attemptIndex];
  if (_attemptIndex >= [location[0] maximumLoginAttempts])
  {
    v16 = _AKLogSystem();
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v16;
      v8 = v15;
      sub_10001CEEC(v14);
      _os_log_impl(&_mh_execute_header, v7, v8, "Maximum password auth attempts have been reached.", v14, 2u);
    }

    objc_storeStrong(&v16, 0);
    if (errorCopy)
    {
      v6 = [NSError ak_errorWithCode:-7028];
      v4 = v6;
      *errorCopy = v6;
    }

    v21 = 1;
  }

  else
  {
LABEL_12:
    v21 = 0;
  }

  objc_storeStrong(location, 0);
  return v21 & 1;
}

- (id)_alertDetailsForError:(id)error context:(id)context
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v11 = 0;
  objc_storeStrong(&v11, context);
  v10 = objc_opt_new();
  v7 = v10;
  v6 = location[0];
  username = [v11 username];
  v9 = [v7 createAlertDetailsWithError:v6 username:?];
  _objc_release(username);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);

  return v9;
}

- (void)_showAlertForLoginError:(id)error context:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v10 = 0;
  objc_storeStrong(&v10, context);
  v9 = 0;
  objc_storeStrong(&v9, completion);
  v8 = [(AKAppleIDAuthenticationService *)selfCopy _alertDetailsForError:location[0] context:v10];
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v13, location[0]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Attempting to show login error: %@", v13, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(AKAuthenticationUILiaison *)selfCopy->_authUILiaison presentLoginAlertForContext:v10 client:selfCopy->_client withAlertDetails:v8 completion:v9];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)_checkFreshnessAndVerifyWithPassword:(id)password serverResponse:(id)response additionalData:(id)data secondaryActionError:(id)error context:(id)context newServerResponse:(id)serverResponse username:(id)username completion:(id)self0
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, password);
  v31 = 0;
  objc_storeStrong(&v31, response);
  v30 = 0;
  objc_storeStrong(&v30, data);
  v29 = 0;
  objc_storeStrong(&v29, error);
  v28 = 0;
  objc_storeStrong(&v28, context);
  v27 = 0;
  objc_storeStrong(&v27, serverResponse);
  v26 = 0;
  objc_storeStrong(&v26, username);
  v25 = 0;
  objc_storeStrong(&v25, completion);
  v24 = _objc_retain(location[0]);
  secondaryActionURLKey = [v31 secondaryActionURLKey];
  v18 = secondaryActionURLKey != 0;
  _objc_release(secondaryActionURLKey);
  v23 = v18;
  v21 = 0;
  v19 = 0;
  if (!v29)
  {
    v22 = [v30 objectForKeyedSubscript:AKAuthenticationPasswordKey];
    v21 = 1;
    v19 = v22 != 0;
  }

  if (v21)
  {
    _objc_release(v22);
  }

  if (v19)
  {
    v11 = [v30 objectForKeyedSubscript:AKAuthenticationPasswordKey];
    v12 = v24;
    v24 = v11;
    _objc_release(v12);
  }

  v20 = [v30 objectForKeyedSubscript:AKAuthenticationNewAppleIDSetupInfoKey];
  [(AKAppleIDAuthenticationService *)selfCopy _handleVerificationCompletionForUsername:v26 password:v24 serverResponse:v27 didShowServerUI:v23 continuationData:v20 error:v29 context:v28 completion:v25];
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
}

- (void)_verifyUsername:(id)username password:(id)password context:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, username);
  v28 = 0;
  objc_storeStrong(&v28, password);
  v27 = 0;
  objc_storeStrong(&v27, context);
  v26 = 0;
  objc_storeStrong(&v26, completion);
  [v27 setUsername:location[0]];
  v13 = +[AKFeatureManager sharedManager];
  isAuthenticationTelemetryEnabled = [v13 isAuthenticationTelemetryEnabled];
  _objc_release(v13);
  if (isAuthenticationTelemetryEnabled)
  {
    v8 = v27;
    v9 = [v27 authKitAccount:?];
    [AKAnalyticsSender sendAnalyticsEvent:"sendAnalyticsEvent:context:account:error:" context:@"com.apple.authkit.srpAuthenticationStart" account:v8 error:?];
    _objc_release(v9);
  }

  v25 = [(AKAppleIDAuthenticationService *)selfCopy _srpAuthContextHelperWithContext:v27];
  [v25 setPassword:v28];
  v7 = selfCopy;
  v6 = v25;
  v15 = _NSConcreteStackBlock;
  v16 = -1073741824;
  v17 = 0;
  v18 = sub_1000ABE54;
  v19 = &unk_100321F00;
  v20 = _objc_retain(v27);
  v21 = _objc_retain(selfCopy);
  v22 = _objc_retain(v28);
  v23 = _objc_retain(location[0]);
  v24 = _objc_retain(v26);
  [(AKAppleIDAuthenticationService *)v7 _performSRPAuthenticationWithContext:v6 completion:&v15];
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

- (void)_performPasswordlessSRPAuthWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v5 = 0;
  objc_storeStrong(&v5, completion);
  [(AKAppleIDAuthenticationService *)selfCopy _performPasswordlessSRPAuthWithContext:location[0] client:selfCopy->_client completion:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)_performPasswordlessSRPAuthWithContext:(id)context client:(id)client completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v8 = 0;
  objc_storeStrong(&v8, client);
  v7 = 0;
  objc_storeStrong(&v7, completion);
  [(AKAppleIDAuthenticationService *)selfCopy _performPasswordlessSRPAuthWithAccount:0 context:location[0] client:v8 completion:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_performPasswordlessSRPAuthWithAccount:(id)account context:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v8 = 0;
  objc_storeStrong(&v8, context);
  v7 = 0;
  objc_storeStrong(&v7, completion);
  [(AKAppleIDAuthenticationService *)selfCopy _performPasswordlessSRPAuthWithAccount:location[0] context:v8 client:selfCopy->_client completion:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_performPasswordlessSRPAuthWithAccount:(id)account context:(id)context client:(id)client completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v46 = 0;
  objc_storeStrong(&v46, context);
  v45 = 0;
  objc_storeStrong(&v45, client);
  v44 = 0;
  objc_storeStrong(&v44, completion);
  username = [v46 username];
  if (location[0])
  {
    v42 = _AKLogSystem();
    v41 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v50, location[0]);
      _os_log_impl(&_mh_execute_header, v42, v41, "Attempting passwordless auth with IDMS account %@...", v50, 0xCu);
    }

    objc_storeStrong(&v42, 0);
    username2 = [location[0] username];
    v7 = username;
    username = username2;
    _objc_release(v7);
    [v46 setUsername:username];
  }

  v22 = +[AKFeatureManager sharedManager];
  isAuthenticationTelemetryEnabled = [v22 isAuthenticationTelemetryEnabled];
  _objc_release(v22);
  if (isAuthenticationTelemetryEnabled)
  {
    [AKAnalyticsSender sendAnalyticsEvent:@"com.apple.authkit.passwordlessAuthStart" context:v46 account:location[0] error:0];
  }

  v40 = [(AKAppleIDAuthenticationService *)selfCopy _srpAuthContextHelperWithContext:v46];
  [v40 setAuthKitAccount:location[0]];
  proxiedToken = [v46 proxiedToken];
  [v40 setProxiedToken:?];
  _objc_release(proxiedToken);
  v39 = _AKLogSystem();
  v38 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    passwordlessToken = [v46 passwordlessToken];
    v8 = @"YES";
    if (!passwordlessToken)
    {
      v8 = @"NO";
    }

    v18 = v8;
    idmsDataToken = [v46 idmsDataToken];
    if (idmsDataToken)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    sub_10001B098(v49, v18, v9);
    _os_log_impl(&_mh_execute_header, v39, v38, "PasswordlessSRP with passwordlessToken: %@ idmsDataToken: %@", v49, 0x16u);
    _objc_release(idmsDataToken);
    _objc_release(passwordlessToken);
  }

  objc_storeStrong(&v39, 0);
  passwordlessToken2 = [v46 passwordlessToken];
  _objc_release(passwordlessToken2);
  if (passwordlessToken2)
  {
    passwordlessToken3 = [v46 passwordlessToken];
    [v40 setPasswordlessToken:?];
    _objc_release(passwordlessToken3);
    idmsDataToken2 = [v46 idmsDataToken];
    _objc_release(idmsDataToken2);
    if (idmsDataToken2)
    {
      idmsDataToken3 = [v46 idmsDataToken];
      [v40 setIdmsDataToken:?];
      _objc_release(idmsDataToken3);
    }
  }

  idmsData = [v46 idmsData];
  _objc_release(idmsData);
  if (idmsData)
  {
    idmsData2 = [v46 idmsData];
    [v40 setIdmsData:?];
    _objc_release(idmsData2);
  }

  v11 = selfCopy;
  v10 = v40;
  v27 = _NSConcreteStackBlock;
  v28 = -1073741824;
  v29 = 0;
  v30 = sub_1000AD200;
  v31 = &unk_100321F78;
  v32 = _objc_retain(v40);
  v33 = _objc_retain(username);
  v34 = _objc_retain(v46);
  v37 = _objc_retain(v44);
  v35 = _objc_retain(selfCopy);
  v36 = _objc_retain(v45);
  [(AKAppleIDAuthenticationService *)v11 _performSRPAuthenticationWithContext:v10 completion:&v27];
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&username, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(location, 0);
}

- (id)_srpAuthContextHelperWithContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v3 = [AKSRPAuthenticationContextHelper alloc];
  v7 = [(AKSRPAuthenticationContextHelper *)v3 initWithContext:location[0]];
  username = [location[0] username];
  [(AKSRPContextHelper *)v7 setUsername:?];
  _objc_release(username);
  [(AKSRPContextHelper *)v7 setClient:selfCopy->_client];
  v6 = _objc_retain(v7);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (void)_performSRPAuthenticationWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v25 = 0;
  objc_storeStrong(&v25, completion);
  v11 = +[AKConfiguration sharedConfiguration];
  shouldFakeAuthSuccess = [v11 shouldFakeAuthSuccess];
  _objc_release(v11);
  if (shouldFakeAuthSuccess == 1)
  {
    v24 = _AKLogSystem();
    v23 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      log = v24;
      type = v23;
      sub_10001CEEC(v22);
      _os_log_impl(&_mh_execute_header, log, type, "Faking IDMS auth success!", v22, 2u);
    }

    objc_storeStrong(&v24, 0);
    (*(v25 + 2))(v25, 0);
    v21 = 1;
  }

  else
  {
    authContext = [location[0] authContext];
    authenticationMode = [authContext authenticationMode];
    _objc_release(authContext);
    if (authenticationMode)
    {
      [(AKAppleIDAuthenticationService *)selfCopy _performSafeSRPAuthenticationWithContext:location[0] completion:v25];
    }

    else
    {
      v4 = selfCopy;
      authContext2 = [location[0] authContext];
      v13 = _NSConcreteStackBlock;
      v14 = -1073741824;
      v15 = 0;
      v16 = sub_1000AE574;
      v17 = &unk_1003217F8;
      v18 = _objc_retain(selfCopy);
      v19 = _objc_retain(location[0]);
      v20 = _objc_retain(v25);
      [(AKAppleIDAuthenticationService *)v4 _refreshAuthModeIfNecessaryForContext:authContext2 completion:&v13];
      _objc_release(authContext2);
      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v19, 0);
      objc_storeStrong(&v18, 0);
    }

    v21 = 0;
  }

  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

- (void)_performSafeSRPAuthenticationWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v35 = 0;
  objc_storeStrong(&v35, completion);
  v34 = [location[0] authKitAccount:0];
  authContext = [location[0] authContext];
  v31 = 0;
  v29 = 0;
  v27 = 0;
  v25 = 0;
  v23 = 0;
  v16 = 1;
  if ([authContext authenticationMode] != 1)
  {
    authContext2 = [location[0] authContext];
    v31 = 1;
    companionKeyEnvelope = [authContext2 companionKeyEnvelope];
    v29 = 1;
    if (!companionKeyEnvelope || (v28 = [location[0] authContext], v27 = 1, v26 = objc_msgSend(v28, "companionDevice"), v25 = 1, v16 = 1, !v26))
    {
      v24 = +[AKAccountManager sharedInstance];
      v23 = 1;
      v16 = [(AKAccountManager *)v24 authenticationModeForAccount:v34]== 1;
    }
  }

  if (v23)
  {
    _objc_release(v24);
  }

  if (v25)
  {
    _objc_release(v26);
  }

  if (v27)
  {
    _objc_release(v28);
  }

  if (v29)
  {
    _objc_release(companionKeyEnvelope);
  }

  if (v31)
  {
    _objc_release(authContext2);
  }

  _objc_release(authContext);
  v33 = v16;
  if (!v16)
  {
    goto LABEL_22;
  }

  v22 = 0;
  v21 = 0;
  v13 = [location[0] isContextSecretValidForSRP:&v21];
  objc_storeStrong(&v22, v21);
  if (v13)
  {
    v18 = 0;
  }

  else
  {
    oslog = _AKLogSystem();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      authContext3 = [location[0] authContext];
      v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [authContext3 serviceType]);
      client = [location[0] client];
      name = [client name];
      authContext4 = [location[0] authContext];
      _proxiedAppName = [authContext4 _proxiedAppName];
      sub_10004DCC8(v38, v11, name, _proxiedAppName);
      _os_log_error_impl(&_mh_execute_header, oslog, type, "SRP auth attempted with an invalid context: %@ - %@ - %@", v38, 0x20u);
      _objc_release(_proxiedAppName);
      _objc_release(authContext4);
      _objc_release(name);
      _objc_release(client);
      _objc_release(v11);
      _objc_release(authContext3);
    }

    objc_storeStrong(&oslog, 0);
    v5 = v35;
    v6 = [NSError ak_errorWithCode:-7075 underlyingError:v22];
    v5[2](v5, 0);
    _objc_release(v6);
    v18 = 1;
  }

  objc_storeStrong(&v22, 0);
  if (!v18)
  {
LABEL_22:
    v4 = [AKSRPService alloc];
    v17 = [(AKSRPService *)v4 initWithClient:selfCopy->_client];
    [(AKSRPService *)v17 performSRPContractWithContext:location[0] completion:v35];
    objc_storeStrong(&v17, 0);
    v18 = 0;
  }

  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleVerificationCompletionForUsername:(id)username password:(id)password serverResponse:(id)response didShowServerUI:(BOOL)i continuationData:(id)data error:(id)error context:(id)context completion:(id)self0
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, username);
  v35 = 0;
  objc_storeStrong(&v35, password);
  v34 = 0;
  objc_storeStrong(&v34, response);
  iCopy = i;
  v32 = 0;
  objc_storeStrong(&v32, data);
  v31 = 0;
  objc_storeStrong(&v31, error);
  v30 = 0;
  objc_storeStrong(&v30, context);
  v29 = 0;
  objc_storeStrong(&v29, completion);
  v22 = selfCopy;
  v16 = location[0];
  v17 = v35;
  v18 = v34;
  v19 = iCopy;
  v20 = v32;
  v21 = v31;
  v15 = v30;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000AEEAC;
  v23[3] = &unk_100321FA0;
  v24 = _objc_retain(v31);
  v25 = _objc_retain(selfCopy);
  v26 = _objc_retain(v30);
  v27 = _objc_retain(v34);
  v28 = _objc_retain(v29);
  [(AKAppleIDAuthenticationService *)v22 _shouldContinueAuthenticatingForUsername:v16 password:v17 serverResponse:v18 didShowServerUI:v19 continuationData:v20 error:v21 context:v15 completion:v23];
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
}

- (id)authResultsFromServerResponse:(id)response inContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v7 = 0;
  objc_storeStrong(&v7, context);
  v6 = [(AKAppleIDAuthenticationService *)selfCopy authResultsFromServerResponse:location[0] inContext:v7 usernameOverride:0 passwordOverride:0 didShowServerUI:0 continuationData:0 verificationError:?];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (id)authResultsFromServerResponse:(id)response inContext:(id)context usernameOverride:(id)override passwordOverride:(id)passwordOverride didShowServerUI:(BOOL)i continuationData:(id)data verificationError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v161 = 0;
  objc_storeStrong(&v161, context);
  v160 = 0;
  objc_storeStrong(&v160, override);
  v159 = 0;
  objc_storeStrong(&v159, passwordOverride);
  iCopy = i;
  v157 = 0;
  objc_storeStrong(&v157, data);
  v156 = 0;
  objc_storeStrong(&v156, error);
  v155 = _AKLogSystem();
  v154 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v155, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v165, v161);
    _os_log_debug_impl(&_mh_execute_header, v155, v154, "Updating auth results for context: %@", v165, 0xCu);
  }

  objc_storeStrong(&v155, 0);
  appleID = [location[0] appleID];
  _objc_release(appleID);
  if (appleID)
  {
    v153 = _AKLogSystem();
    v152 = 2;
    if (os_log_type_enabled(v153, OS_LOG_TYPE_DEBUG))
    {
      v97 = v153;
      v98 = v152;
      sub_10001CEEC(v151);
      _os_log_debug_impl(&_mh_execute_header, v97, v98, "Using server provided Apple ID.", v151, 2u);
    }

    objc_storeStrong(&v153, 0);
  }

  else if (v160)
  {
    v150 = _AKLogSystem();
    v149 = 2;
    if (os_log_type_enabled(v150, OS_LOG_TYPE_DEBUG))
    {
      v95 = v150;
      v96 = v149;
      sub_10001CEEC(v148);
      _os_log_debug_impl(&_mh_execute_header, v95, v96, "Using client provided Apple ID.", v148, 2u);
    }

    objc_storeStrong(&v150, 0);
  }

  else
  {
    v147 = _AKLogSystem();
    v146 = 16;
    if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
    {
      v93 = v147;
      v94 = v146;
      sub_10001CEEC(v145);
      _os_log_error_impl(&_mh_execute_header, v93, v94, "No username provided, this can't be good...", v145, 2u);
    }

    objc_storeStrong(&v147, 0);
  }

  v144 = objc_alloc_init(NSMutableDictionary);
  telemetryFlowID = [v161 telemetryFlowID];
  [v144 setObject:? forKeyedSubscript:?];
  _objc_release(telemetryFlowID);
  appleID2 = [location[0] appleID];
  if (appleID2)
  {
    v9 = _objc_retain(appleID2);
  }

  else
  {
    v9 = _objc_retain(v160);
  }

  v143 = v9;
  _objc_release(appleID2);
  [v144 setObject:v143 forKeyedSubscript:AKAuthenticationUsernameKey];
  if (v143)
  {
    [v161 setUsername:v143];
  }

  altDSID = [location[0] altDSID];
  _objc_release(altDSID);
  if (altDSID)
  {
    altDSID2 = [location[0] altDSID];
    [v161 setAltDSID:?];
    _objc_release(altDSID2);
  }

  passwordEquivalentToken = [location[0] passwordEquivalentToken];
  _objc_release(passwordEquivalentToken);
  if (passwordEquivalentToken)
  {
    passwordEquivalentToken2 = [location[0] passwordEquivalentToken];
    stringValue = [passwordEquivalentToken2 stringValue];
    [v144 setObject:? forKeyedSubscript:?];
    _objc_release(stringValue);
    _objc_release(passwordEquivalentToken2);
  }

  else if (!v156)
  {
    v142 = _AKLogSystem();
    v141 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
    {
      v84 = v142;
      v85 = v141;
      sub_10001CEEC(v140);
      _os_log_impl(&_mh_execute_header, v84, v85, "Successful SRP did not return a PET to client.", v140, 2u);
    }

    objc_storeStrong(&v142, 0);
  }

  shortLivedToken = [location[0] shortLivedToken];
  _objc_release(shortLivedToken);
  if (shortLivedToken)
  {
    shortLivedToken2 = [location[0] shortLivedToken];
    stringValue2 = [shortLivedToken2 stringValue];
    [v144 setObject:? forKeyedSubscript:?];
    _objc_release(stringValue2);
    _objc_release(shortLivedToken2);
  }

  else
  {
    masterToken = [location[0] masterToken];
    if (masterToken)
    {
      if ([v161 shouldRequestShortLivedToken])
      {
        oslog = _AKLogSystem();
        v137 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v79 = oslog;
          v80 = v137;
          sub_10001CEEC(v136);
          _os_log_impl(&_mh_execute_header, v79, v80, "Providing short-lived token", v136, 2u);
        }

        objc_storeStrong(&oslog, 0);
        stringValue3 = [masterToken stringValue];
        [v144 setObject:? forKeyedSubscript:?];
        _objc_release(stringValue3);
      }

      else if (-[AKClient hasInternalAccess](selfCopy->_client, "hasInternalAccess") && [location[0] authMode])
      {
        v135 = _AKLogSystem();
        v134 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
        {
          v76 = v135;
          v77 = v134;
          sub_10001CEEC(v133);
          _os_log_impl(&_mh_execute_header, v76, v77, "Providing identity token", v133, 2u);
        }

        objc_storeStrong(&v135, 0);
        stringValue4 = [masterToken stringValue];
        [v144 setObject:? forKeyedSubscript:?];
        _objc_release(stringValue4);
      }
    }

    objc_storeStrong(&masterToken, 0);
  }

  inheritanceBeneficiarySetupToken = [location[0] inheritanceBeneficiarySetupToken];
  stringValue5 = [inheritanceBeneficiarySetupToken stringValue];
  _objc_release(stringValue5);
  _objc_release(inheritanceBeneficiarySetupToken);
  if (stringValue5)
  {
    v132 = _AKLogSystem();
    v131 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
    {
      v71 = v132;
      v72 = v131;
      sub_10001CEEC(v130);
      _os_log_impl(&_mh_execute_header, v71, v72, "Providing beneficiary setup token", v130, 2u);
    }

    objc_storeStrong(&v132, 0);
    inheritanceBeneficiarySetupToken2 = [location[0] inheritanceBeneficiarySetupToken];
    stringValue6 = [inheritanceBeneficiarySetupToken2 stringValue];
    [v144 setObject:? forKeyedSubscript:?];
    _objc_release(stringValue6);
    _objc_release(inheritanceBeneficiarySetupToken2);
  }

  beneficiaryIdentifier = [location[0] beneficiaryIdentifier];
  _objc_release(beneficiaryIdentifier);
  if (beneficiaryIdentifier)
  {
    beneficiaryIdentifier2 = [location[0] beneficiaryIdentifier];
    [v144 setObject:? forKeyedSubscript:?];
    _objc_release(beneficiaryIdentifier2);
  }

  beneficiaryWrappedKey = [location[0] beneficiaryWrappedKey];
  _objc_release(beneficiaryWrappedKey);
  if (beneficiaryWrappedKey)
  {
    beneficiaryWrappedKey2 = [location[0] beneficiaryWrappedKey];
    [v144 setObject:? forKeyedSubscript:?];
    _objc_release(beneficiaryWrappedKey2);
  }

  dsid = [location[0] dsid];
  if (dsid)
  {
    [v144 setObject:dsid forKeyedSubscript:AKAuthenticationDSIDKey];
  }

  altDSID3 = [location[0] altDSID];
  if (altDSID3)
  {
    [v144 setObject:altDSID3 forKeyedSubscript:AKAuthenticationAlternateDSIDKey];
  }

  if (iCopy)
  {
    [v144 setObject:&__kCFBooleanTrue forKeyedSubscript:AKAuthenticationDidShowServerUIKey];
  }

  if ([v161 needsNewAppleID])
  {
    [v144 setObject:&__kCFBooleanTrue forKeyedSubscript:AKAuthenticationNewAccountCreated];
  }

  if (v157)
  {
    [v144 setObject:v157 forKeyedSubscript:AKAuthenticationNewAppleIDSetupInfoKey];
  }

  if ([location[0] appleIDSecurityLevel] == 4)
  {
    [v144 setObject:&__kCFBooleanTrue forKeyedSubscript:AKAuthenticationIsHSA2Key];
  }

  if (v159)
  {
    if (-[AKClient hasInternalAccess](selfCopy->_client, "hasInternalAccess") && [location[0] authMode] != 2)
    {
      v126 = _AKLogSystem();
      v125 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
      {
        v63 = v126;
        v64 = v125;
        sub_10001CEEC(v124);
        _os_log_impl(&_mh_execute_header, v63, v64, "Providing raw password to an internal client.", v124, 2u);
      }

      objc_storeStrong(&v126, 0);
      [v144 setObject:v159 forKeyedSubscript:AKAuthenticationRawPasswordKey];
    }
  }

  acceptedTermsInfo = [location[0] acceptedTermsInfo];
  _objc_release(acceptedTermsInfo);
  if (acceptedTermsInfo)
  {
    acceptedTermsInfo2 = [location[0] acceptedTermsInfo];
    [v144 setObject:? forKeyedSubscript:?];
    _objc_release(acceptedTermsInfo2);
  }

  if ([location[0] appleIDSecurityLevel])
  {
    v60 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [location[0] appleIDSecurityLevel]);
    [v144 setObject:? forKeyedSubscript:?];
    _objc_release(v60);
  }

  hasSOSActiveDevice = [location[0] hasSOSActiveDevice];
  _objc_release(hasSOSActiveDevice);
  if (hasSOSActiveDevice)
  {
    hasSOSActiveDevice2 = [location[0] hasSOSActiveDevice];
    [v144 setObject:? forKeyedSubscript:?];
    _objc_release(hasSOSActiveDevice2);
  }

  sOSNeeded = [location[0] SOSNeeded];
  _objc_release(sOSNeeded);
  if (sOSNeeded)
  {
    sOSNeeded2 = [location[0] SOSNeeded];
    [v144 setObject:? forKeyedSubscript:?];
    _objc_release(sOSNeeded2);
  }

  if ([location[0] authMode])
  {
    v55 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [location[0] authMode]);
    [v144 setObject:? forKeyedSubscript:?];
    _objc_release(v55);
  }

  if ([location[0] isMdmInfoRequired])
  {
    [v144 setObject:&__kCFBooleanTrue forKeyedSubscript:AKAuthenticationAppleIDMDMInfoRequired];
  }

  if ([location[0] isManagedAppleID])
  {
    [v144 setObject:&__kCFBooleanTrue forKeyedSubscript:AKAuthenticationManagedAppleIDKey];
  }

  if ([location[0] isDemoAccount])
  {
    [v144 setObject:&__kCFBooleanTrue forKeyedSubscript:AKAuthenticationDemoAccountKey];
  }

  if ([location[0] isAuditLogin])
  {
    [v144 setObject:&__kCFBooleanTrue forKeyedSubscript:AKAuthenticationAuditLoginKey];
  }

  if ([location[0] isServerUIRequired])
  {
    [v144 setObject:&__kCFBooleanTrue forKeyedSubscript:AKAuthenticationIsServerUIRequiredKey];
  }

  if ([location[0] isPasscodeResetRequired])
  {
    [v144 setObject:&__kCFBooleanTrue forKeyedSubscript:AKAuthenticationIsPasscodeResetRequiredKey];
  }

  v53 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [location[0] managedOrganizationType]);
  [v144 setObject:? forKeyedSubscript:?];
  _objc_release(v53);
  managedOrganizationName = [location[0] managedOrganizationName];
  _objc_release(managedOrganizationName);
  if (managedOrganizationName)
  {
    managedOrganizationName2 = [location[0] managedOrganizationName];
    [v144 setObject:? forKeyedSubscript:?];
    _objc_release(managedOrganizationName2);
  }

  isNotificationEmailAvailable = [location[0] isNotificationEmailAvailable];
  _objc_release(isNotificationEmailAvailable);
  if (isNotificationEmailAvailable)
  {
    isNotificationEmailAvailable2 = [location[0] isNotificationEmailAvailable];
    [v144 setObject:? forKeyedSubscript:?];
    _objc_release(isNotificationEmailAvailable2);
  }

  notificationEmail = [location[0] notificationEmail];
  _objc_release(notificationEmail);
  if (notificationEmail)
  {
    notificationEmail2 = [location[0] notificationEmail];
    [v144 setObject:? forKeyedSubscript:?];
    _objc_release(notificationEmail2);
  }

  custodianSessionID = [location[0] custodianSessionID];
  _objc_release(custodianSessionID);
  if (custodianSessionID)
  {
    custodianSessionID2 = [location[0] custodianSessionID];
    [v144 setObject:? forKeyedSubscript:?];
    _objc_release(custodianSessionID2);
  }

  passwordResetToken = [location[0] passwordResetToken];
  stringValue7 = [passwordResetToken stringValue];
  _objc_release(passwordResetToken);
  if (stringValue7 && [(AKClient *)selfCopy->_client hasInternalAccess])
  {
    v122 = _AKLogSystem();
    v121 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
    {
      v43 = v122;
      v44 = v121;
      sub_10001CEEC(v120);
      _os_log_impl(&_mh_execute_header, v43, v44, "Providing PRK to an internal client.", v120, 2u);
    }

    objc_storeStrong(&v122, 0);
    [v144 setObject:stringValue7 forKeyedSubscript:AKAuthenticationPasswordResetTokenKey];
  }

  passcodeAuth = [location[0] passcodeAuth];
  _objc_release(passcodeAuth);
  if (passcodeAuth)
  {
    passcodeAuth2 = [location[0] passcodeAuth];
    [v144 setObject:? forKeyedSubscript:?];
    _objc_release(passcodeAuth2);
  }

  hasModernRecoveryKey = [location[0] hasModernRecoveryKey];
  _objc_release(hasModernRecoveryKey);
  if (hasModernRecoveryKey)
  {
    hasModernRecoveryKey2 = [location[0] hasModernRecoveryKey];
    [v144 setObject:? forKeyedSubscript:?];
    _objc_release(hasModernRecoveryKey2);
  }

  firstName = [location[0] firstName];
  [v144 setObject:? forKeyedSubscript:?];
  _objc_release(firstName);
  lastName = [location[0] lastName];
  [v144 setObject:? forKeyedSubscript:?];
  _objc_release(lastName);
  imageURLString = [location[0] imageURLString];
  [v144 setObject:? forKeyedSubscript:?];
  _objc_release(imageURLString);
  configurationInfo = [location[0] configurationInfo];
  [v144 setObject:? forKeyedSubscript:?];
  _objc_release(configurationInfo);
  additionalInfo = [location[0] additionalInfo];
  [v144 setObject:? forKeyedSubscript:?];
  _objc_release(additionalInfo);
  v37 = +[AKFeatureManager sharedManager];
  isBackgroundiCloudSignInEnabled = [v37 isBackgroundiCloudSignInEnabled];
  _objc_release(v37);
  if (isBackgroundiCloudSignInEnabled)
  {
    v31 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [location[0] canBackgroundiCloudSignIn]);
    [v144 setObject:? forKeyedSubscript:?];
    _objc_release(v31);
  }

  adpCohort = [location[0] adpCohort];
  [v144 setObject:? forKeyedSubscript:?];
  _objc_release(adpCohort);
  idmsWalrusStatus = [location[0] idmsWalrusStatus];
  [v144 setObject:? forKeyedSubscript:?];
  _objc_release(idmsWalrusStatus);
  passwordlessToken = [location[0] passwordlessToken];
  stringValue8 = [passwordlessToken stringValue];
  v117 = 0;
  v115 = 0;
  v30 = 0;
  if (stringValue8)
  {
    passwordlessToken2 = [location[0] passwordlessToken];
    v117 = 1;
    stringValue9 = [passwordlessToken2 stringValue];
    v115 = 1;
    v30 = [stringValue9 length] != 0;
  }

  if (v115)
  {
    _objc_release(stringValue9);
  }

  if (v117)
  {
    _objc_release(passwordlessToken2);
  }

  _objc_release(stringValue8);
  _objc_release(passwordlessToken);
  v119 = v30;
  idmsDataToken = [location[0] idmsDataToken];
  stringValue10 = [idmsDataToken stringValue];
  v112 = 0;
  v110 = 0;
  v25 = 0;
  if (stringValue10)
  {
    idmsDataToken2 = [location[0] idmsDataToken];
    v112 = 1;
    stringValue11 = [idmsDataToken2 stringValue];
    v110 = 1;
    v25 = [stringValue11 length] != 0;
  }

  if (v110)
  {
    _objc_release(stringValue11);
  }

  if (v112)
  {
    _objc_release(idmsDataToken2);
  }

  _objc_release(stringValue10);
  _objc_release(idmsDataToken);
  v114 = v25;
  if (v119)
  {
    v109 = _AKLogSystem();
    v108 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
    {
      passwordlessToken3 = [location[0] passwordlessToken];
      v10 = @"YES";
      if (!passwordlessToken3)
      {
        v10 = @"NO";
      }

      v20 = v10;
      idmsDataToken3 = [location[0] idmsDataToken];
      if (idmsDataToken3)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      sub_10001B098(v164, v20, v11);
      _os_log_impl(&_mh_execute_header, v109, v108, "Providing passwordlessToken: %@ idmsDataToken: %@", v164, 0x16u);
      _objc_release(idmsDataToken3);
      _objc_release(passwordlessToken3);
    }

    objc_storeStrong(&v109, 0);
    passwordlessToken4 = [location[0] passwordlessToken];
    stringValue12 = [passwordlessToken4 stringValue];
    [v144 setObject:? forKeyedSubscript:?];
    _objc_release(stringValue12);
    _objc_release(passwordlessToken4);
    if (v114)
    {
      idmsDataToken4 = [location[0] idmsDataToken];
      stringValue13 = [idmsDataToken4 stringValue];
      [v144 setObject:? forKeyedSubscript:?];
      _objc_release(stringValue13);
      _objc_release(idmsDataToken4);
    }
  }

  else
  {
    v107 = _AKLogSystem();
    v106 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v107;
      v15 = v106;
      sub_10001CEEC(v105);
      _os_log_impl(&_mh_execute_header, v14, v15, "Passwordless token not found on server response", v105, 2u);
    }

    objc_storeStrong(&v107, 0);
  }

  v13 = _objc_retain(v144);
  objc_storeStrong(&stringValue7, 0);
  objc_storeStrong(&altDSID3, 0);
  objc_storeStrong(&dsid, 0);
  objc_storeStrong(&v143, 0);
  objc_storeStrong(&v144, 0);
  objc_storeStrong(&v156, 0);
  objc_storeStrong(&v157, 0);
  objc_storeStrong(&v159, 0);
  objc_storeStrong(&v160, 0);
  objc_storeStrong(&v161, 0);
  objc_storeStrong(location, 0);

  return v13;
}

- (void)_shouldContinueAuthenticatingForUsername:(id)username password:(id)password serverResponse:(id)response didShowServerUI:(BOOL)i continuationData:(id)data error:(id)error context:(id)context completion:(id)self0
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, username);
  v83 = 0;
  objc_storeStrong(&v83, password);
  v82 = 0;
  objc_storeStrong(&v82, response);
  iCopy = i;
  v80 = 0;
  objc_storeStrong(&v80, data);
  v79 = 0;
  objc_storeStrong(&v79, error);
  v78 = 0;
  objc_storeStrong(&v78, context);
  v77 = 0;
  objc_storeStrong(&v77, completion);
  v36 = +[AKFeatureManager sharedManager];
  isAuthenticationTelemetryEnabled = [v36 isAuthenticationTelemetryEnabled];
  _objc_release(v36);
  if (isAuthenticationTelemetryEnabled)
  {
    v29 = v78;
    v30 = [v78 authKitAccount:?];
    [AKAnalyticsSender sendAnalyticsEvent:"sendAnalyticsEvent:context:account:error:" context:@"com.apple.authkit.shouldContinueAuthStart" account:v29 error:?];
    _objc_release(v30);
  }

  v69 = _NSConcreteStackBlock;
  v70 = -1073741824;
  v71 = 0;
  v72 = sub_1000B168C;
  v73 = &unk_100321FC8;
  v74 = _objc_retain(v78);
  v75 = _objc_retain(v77);
  v76 = objc_retainBlock(&v69);
  domain = [v79 domain];
  v28 = 0;
  if ([domain isEqual:AKAppleIDAuthenticationErrorDomain])
  {
    v28 = [v79 code] == -7014;
  }

  _objc_release(domain);
  if (v28)
  {
    v68 = _AKLogSystem();
    v67 = 16;
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      log = v68;
      type = v67;
      sub_10001CEEC(v66);
      _os_log_error_impl(&_mh_execute_header, log, type, "Secondary action not supported", v66, 2u);
    }

    objc_storeStrong(&v68, 0);
    (*(v76 + 2))(v76, 0, 0, v79);
    v65 = 1;
  }

  else if ([v79 ak_isUserCancelError])
  {
    v64 = _AKLogSystem();
    v63 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v64;
      v24 = v63;
      sub_10001CEEC(v62);
      _os_log_impl(&_mh_execute_header, v23, v24, "User canceled. Aborting auth.", v62, 2u);
    }

    objc_storeStrong(&v64, 0);
    if (iCopy)
    {
      oslog = _AKLogSystem();
      v60 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        v21 = oslog;
        v22 = v60;
        sub_10001CEEC(v59);
        _os_log_debug_impl(&_mh_execute_header, v21, v22, "Appending underlying prompt reason as server UI (secondary action).", v59, 2u);
      }

      objc_storeStrong(&oslog, 0);
      v58 = [NSError ak_errorWithCode:-7052];
      v19 = v79;
      v87 = NSUnderlyingErrorKey;
      v88 = v58;
      v20 = [NSDictionary dictionaryWithObjects:&v88 forKeys:&v87 count:1];
      v10 = [v19 ak_errorByAppendingUserInfo:?];
      v11 = v79;
      v79 = v10;
      _objc_release(v11);
      _objc_release(v20);
      objc_storeStrong(&v58, 0);
    }

    (*(v76 + 2))(v76, 0, 0, v79);
    v65 = 1;
  }

  else
  {
    v57 = [selfCopy authResultsFromServerResponse:v82 inContext:v78 usernameOverride:location[0] passwordOverride:v83 didShowServerUI:iCopy continuationData:v80 verificationError:v79];
    v18 = selfCopy[1];
    v50 = _NSConcreteStackBlock;
    v51 = -1073741824;
    v52 = 0;
    v53 = sub_1000B17F0;
    v54 = &unk_100321FF0;
    v55 = _objc_retain(v76);
    v56 = [v18 proxyWithErrorHandler:&v50];
    v49 = _AKLogSystem();
    v48 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v86, selfCopy[1]);
      _os_log_impl(&_mh_execute_header, v49, v48, "Asking %@ should continue?", v86, 0xCu);
    }

    objc_storeStrong(&v49, 0);
    if ([v78 _ignoreShouldContinueProxy])
    {
      v47 = _AKLogSystem();
      v46 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v47;
        v17 = v46;
        sub_10001CEEC(v45);
        _os_log_impl(&_mh_execute_header, v16, v17, "Context asked to skip should continue, returning results...", v45, 2u);
      }

      objc_storeStrong(&v47, 0);
      if (v79)
      {
        (*(v76 + 2))(v76, 0, 0, v79);
      }

      else
      {
        (*(v76 + 2))(v76, 1, v57, 0);
      }
    }

    else
    {
      v14 = v56;
      v12 = v57;
      v13 = v79;
      _identifier = [v78 _identifier];
      v38 = _NSConcreteStackBlock;
      v39 = -1073741824;
      v40 = 0;
      v41 = sub_1000B1918;
      v42 = &unk_100322018;
      v43 = _objc_retain(v79);
      v44 = _objc_retain(v76);
      [v14 shouldContinueWithAuthenticationResults:v12 error:v13 forContextID:_identifier completion:&v38];
      _objc_release(_identifier);
      objc_storeStrong(&v44, 0);
      objc_storeStrong(&v43, 0);
    }

    objc_storeStrong(&v56, 0);
    objc_storeStrong(&v55, 0);
    objc_storeStrong(&v57, 0);
    v65 = 0;
  }

  objc_storeStrong(&v76, 0);
  objc_storeStrong(&v75, 0);
  objc_storeStrong(&v74, 0);
  objc_storeStrong(&v77, 0);
  objc_storeStrong(&v78, 0);
  objc_storeStrong(&v79, 0);
  objc_storeStrong(&v80, 0);
  objc_storeStrong(&v82, 0);
  objc_storeStrong(&v83, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleSuccessfulVerificationForContext:(id)context withResults:(id)results serverResponse:(id)response shouldContinue:(BOOL)continue withError:(id)error completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v30 = 0;
  objc_storeStrong(&v30, results);
  v29 = 0;
  objc_storeStrong(&v29, response);
  continueCopy = continue;
  v27 = 0;
  objc_storeStrong(&v27, error);
  v26 = 0;
  objc_storeStrong(&v26, completion);
  queue = [objc_opt_class() _verificationQueue];
  v14 = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_1000B1F60;
  v18 = &unk_100322060;
  v19 = _objc_retain(selfCopy);
  v20 = _objc_retain(location[0]);
  v25 = continueCopy;
  v21 = _objc_retain(v29);
  v24 = _objc_retain(v26);
  v22 = _objc_retain(v30);
  v23 = _objc_retain(v27);
  dispatch_async(queue, &v14);
  _objc_release(queue);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

- (id)_authKitAccountFromContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v16 = [location[0] authKitAccount:0];
  if (v16 || (+[AKAccountManager isAccountsFrameworkAvailable]& 1) == 0)
  {
    v12 = _AKLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000831E0(v19, v16);
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Fetched existing AK account: %{private}@", v19, 0xCu);
    }

    objc_storeStrong(&v12, 0);
  }

  else
  {
    v15 = _AKLogSystem();
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      username = [location[0] username];
      altDSID = [location[0] altDSID];
      sub_1000B2850(v20, username, altDSID);
      _os_log_impl(&_mh_execute_header, v15, v14, "Creating a new authkit account <%{private}@><%{private}@>", v20, 0x16u);
      _objc_release(altDSID);
      _objc_release(username);
    }

    objc_storeStrong(&v15, 0);
    v7 = [ACAccount alloc];
    v8 = [(AKAccountManager *)selfCopy->_accountManager authKitAccountTypeWithError:0];
    v3 = [v7 initWithAccountType:?];
    v4 = v16;
    v16 = v3;
    _objc_release(v4);
    _objc_release(v8);
    username2 = [location[0] username];
    [v16 setUsername:?];
    _objc_release(username2);
    v13 = +[AKAccountManager personaIDIfCurrentPersonaIsDataSeparated];
    if (v13)
    {
      [v16 setObject:v13 forKeyedSubscript:ACAccountPropertyPersonaIdentifier];
    }

    objc_storeStrong(&v13, 0);
  }

  v6 = _objc_retain(v16);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (void)_provideServiceTokensIfRequiredForContext:(id)context authenticationResults:(id)results serverResponse:(id)response completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v67 = 0;
  objc_storeStrong(&v67, results);
  v66 = 0;
  objc_storeStrong(&v66, response);
  v65 = 0;
  objc_storeStrong(&v65, completion);
  serviceIdentifiers = [location[0] serviceIdentifiers];
  needsNewAppleID = 1;
  if (([location[0] shouldUpdatePersistentServiceTokens] & 1) == 0)
  {
    needsNewAppleID = [location[0] needsNewAppleID];
  }

  v63 = needsNewAppleID & 1;
  v61 = 0;
  v32 = 0;
  if (needsNewAppleID)
  {
    serviceTokens = [v66 serviceTokens];
    v61 = 1;
    v32 = serviceTokens != 0;
  }

  if (v61)
  {
    _objc_release(serviceTokens);
  }

  if (v32)
  {
    serviceTokens2 = [v66 serviceTokens];
    allKeys = [serviceTokens2 allKeys];
    _objc_release(serviceTokens2);
    if (serviceIdentifiers)
    {
      v6 = [serviceIdentifiers arrayByAddingObjectsFromArray:allKeys];
      v7 = serviceIdentifiers;
      serviceIdentifiers = v6;
      _objc_release(v7);
    }

    else
    {
      objc_storeStrong(&serviceIdentifiers, allKeys);
    }

    objc_storeStrong(&allKeys, 0);
  }

  if (!serviceIdentifiers)
  {
    v59 = _AKLogSystem();
    v58 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      log = v59;
      type = v58;
      sub_10001CEEC(v57);
      _os_log_impl(&_mh_execute_header, log, type, "No service IDs were provided, so AKAuthenticationIDMSTokenKey will be left empty.", v57, 2u);
    }

    objc_storeStrong(&v59, 0);
    (*(v65 + 2))(v65, v67, 0);
LABEL_35:
    v49 = 0;
    goto LABEL_36;
  }

  v56 = objc_alloc_init(NSMutableSet);
  memset(__b, 0, sizeof(__b));
  v27 = _objc_retain(serviceIdentifiers);
  v28 = [v27 countByEnumeratingWithState:__b objects:v70 count:16];
  if (v28)
  {
    v24 = *__b[2];
    v25 = 0;
    v26 = v28;
    while (1)
    {
      v23 = v25;
      if (*__b[2] != v24)
      {
        objc_enumerationMutation(v27);
      }

      v55 = *(__b[1] + 8 * v25);
      serviceTokens3 = [v66 serviceTokens];
      v22 = [serviceTokens3 objectForKeyedSubscript:v55];
      _objc_release(v22);
      _objc_release(serviceTokens3);
      if (!v22)
      {
        [v56 addObject:v55];
      }

      ++v25;
      if (v23 + 1 >= v26)
      {
        v25 = 0;
        v26 = [v27 countByEnumeratingWithState:__b objects:v70 count:16];
        if (!v26)
        {
          break;
        }
      }
    }
  }

  _objc_release(v27);
  altDSID = [location[0] altDSID];
  if (!altDSID)
  {
    altDSID = [v66 altDSID];
    _objc_release(0);
  }

  dependentAltDSID = [location[0] dependentAltDSID];
  _objc_release(dependentAltDSID);
  if (dependentAltDSID)
  {
    oslog = _AKLogSystem();
    v51 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v18 = oslog;
      v19 = v51;
      sub_10001CEEC(v50);
      _os_log_impl(&_mh_execute_header, v18, v19, "Updating service tokens is not available for Dependent tokens requests.", v50, 2u);
    }

    objc_storeStrong(&oslog, 0);
    [location[0] setShouldUpdatePersistentServiceTokens:0];
    v16 = selfCopy;
    serviceTokens4 = [v66 serviceTokens];
    [AKAppleIDAuthenticationService _completeAuthenticationWithServiceTokens:v16 tokenFetchError:"_completeAuthenticationWithServiceTokens:tokenFetchError:altDSID:authenticationResults:context:completion:" altDSID:? authenticationResults:? context:? completion:?];
    _objc_release(serviceTokens4);
    v49 = 1;
  }

  else
  {
    if ([v56 count])
    {
      v10 = selfCopy;
      allObjects = [v56 allObjects];
      username = [location[0] username];
      v8 = altDSID;
      masterToken = [v66 masterToken];
      v9 = location[0];
      v37 = _NSConcreteStackBlock;
      v38 = -1073741824;
      v39 = 0;
      v40 = sub_1000B31B8;
      v41 = &unk_100322088;
      v42 = _objc_retain(v56);
      v43 = _objc_retain(selfCopy);
      v44 = _objc_retain(v66);
      v45 = _objc_retain(altDSID);
      v46 = _objc_retain(v67);
      v47 = _objc_retain(location[0]);
      v48 = _objc_retain(v65);
      [(AKAppleIDAuthenticationService *)v10 _fetchTokensForServiceIDs:allObjects withUsername:username altDSID:v8 masterToken:masterToken context:v9 completion:&v37];
      _objc_release(masterToken);
      _objc_release(username);
      _objc_release(allObjects);
      objc_storeStrong(&v48, 0);
      objc_storeStrong(&v47, 0);
      objc_storeStrong(&v46, 0);
      objc_storeStrong(&v45, 0);
      objc_storeStrong(&v44, 0);
      objc_storeStrong(&v43, 0);
      objc_storeStrong(&v42, 0);
    }

    else
    {
      v14 = selfCopy;
      serviceTokens5 = [v66 serviceTokens];
      [AKAppleIDAuthenticationService _completeAuthenticationWithServiceTokens:v14 tokenFetchError:"_completeAuthenticationWithServiceTokens:tokenFetchError:altDSID:authenticationResults:context:completion:" altDSID:? authenticationResults:? context:? completion:?];
      _objc_release(serviceTokens5);
    }

    v49 = 0;
  }

  objc_storeStrong(&altDSID, 0);
  objc_storeStrong(&v56, 0);
  if (!v49)
  {
    goto LABEL_35;
  }

LABEL_36:
  objc_storeStrong(&serviceIdentifiers, 0);
  objc_storeStrong(&v65, 0);
  objc_storeStrong(&v66, 0);
  objc_storeStrong(&v67, 0);
  objc_storeStrong(location, 0);
}

- (void)_completeAuthenticationWithServiceTokens:(id)tokens tokenFetchError:(id)error altDSID:(id)d authenticationResults:(id)results context:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tokens);
  v33 = 0;
  objc_storeStrong(&v33, error);
  v32 = 0;
  objc_storeStrong(&v32, d);
  v31 = 0;
  objc_storeStrong(&v31, results);
  v30 = 0;
  objc_storeStrong(&v30, context);
  v29 = 0;
  objc_storeStrong(&v29, completion);
  serviceIdentifiers = [v30 serviceIdentifiers];
  if (location[0])
  {
    v24 = [v31 mutableCopy];
    if (!v24)
    {
      v24 = objc_alloc_init(NSMutableDictionary);
      _objc_release(0);
    }

    v23 = [location[0] aaf_map:&stru_1003220C8];
    [v24 setObject:v23 forKeyedSubscript:AKAuthenticationIDMSTokenKey];
    if ([v30 shouldUpdatePersistentServiceTokens] && !-[AKAppleIDAuthenticationService _shouldSkipAccountUpdatesForAuthWithContext:](selfCopy, "_shouldSkipAccountUpdatesForAuthWithContext:", v30))
    {
      v10 = selfCopy;
      v8 = location[0];
      v9 = v32;
      v12 = [v31 objectForKeyedSubscript:AKAuthenticationDSIDKey];
      v11 = [v31 objectForKeyedSubscript:AKAuthenticationUsernameKey];
      [AKAppleIDAuthenticationService _persistGrandSlamServiceTokens:v10 forAltDSID:"_persistGrandSlamServiceTokens:forAltDSID:DSID:appleID:forContext:error:" DSID:v8 appleID:v9 forContext:v12 error:?];
      _objc_release(v11);
      _objc_release(v12);
      (*(v29 + 2))(v29, v24, 0);
      v25 = 0;
    }

    else
    {
      v22 = _AKLogSystem();
      v21 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v22;
        v14 = v21;
        sub_10001CEEC(v20);
        _os_log_impl(&_mh_execute_header, v13, v14, "Context not appropriate for updating persistent tokens. All done then!", v20, 2u);
      }

      objc_storeStrong(&v22, 0);
      (*(v29 + 2))(v29, v24, 0);
      v25 = 1;
    }

    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
  }

  else
  {
    v27 = _AKLogSystem();
    v26 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v36, serviceIdentifiers);
      _os_log_error_impl(&_mh_execute_header, v27, v26, "We have no token for these services: %@. This can't be good.", v36, 0xCu);
    }

    objc_storeStrong(&v27, 0);
    (*(v29 + 2))(v29, v31, v33);
    v25 = 1;
  }

  objc_storeStrong(&serviceIdentifiers, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
}

- (void)_persistGrandSlamServiceTokens:(id)tokens forAltDSID:(id)d DSID:(id)iD appleID:(id)appleID forContext:(id)context error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tokens);
  v20 = 0;
  objc_storeStrong(&v20, d);
  v19 = 0;
  objc_storeStrong(&v19, iD);
  v18 = 0;
  objc_storeStrong(&v18, appleID);
  v17 = 0;
  objc_storeStrong(&v17, context);
  errorCopy = error;
  v8 = [AKGrandslamTokenUpdateRequest alloc];
  v15 = [(AKGrandslamTokenUpdateRequest *)v8 initWithTokens:location[0] accountManager:selfCopy->_accountManager context:v17 altDSID:v20];
  [(AKGrandslamTokenUpdateRequest *)v15 setDsid:v19];
  [(AKGrandslamTokenUpdateRequest *)v15 setAppleIDUsername:v18];
  v14 = objc_opt_new();
  [v14 updateGrandSlamServiceTokensWithRequest:v15 error:errorCopy];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)_performSecondaryActionWithServerResponse:(id)response context:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v8 = 0;
  objc_storeStrong(&v8, context);
  v7 = 0;
  objc_storeStrong(&v7, completion);
  [(AKAppleIDAuthenticationService *)selfCopy _performSecondaryActionWithServerResponse:location[0] context:v8 client:selfCopy->_client completion:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_performSecondaryActionWithServerResponse:(id)response context:(id)context client:(id)client completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v93 = 0;
  objc_storeStrong(&v93, context);
  v92 = 0;
  objc_storeStrong(&v92, client);
  v91 = 0;
  objc_storeStrong(&v91, completion);
  if ([v93 authenticationType] == 1)
  {
    v90 = _AKLogSystem();
    v89 = 16;
    if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
    {
      log = v90;
      type = v89;
      sub_10001CEEC(v88);
      _os_log_error_impl(&_mh_execute_header, log, type, "Cannot perform secondary auth action for non-interactive context.", v88, 2u);
    }

    objc_storeStrong(&v90, 0);
    v43 = v91;
    v44 = [NSError ak_errorWithCode:-7014];
    v43[2](v43, 0);
    _objc_release(v44);
    v87 = 1;
  }

  else
  {
    federatedAuthURL = [location[0] federatedAuthURL];
    _objc_release(federatedAuthURL);
    if (federatedAuthURL)
    {
      v6 = [AKEducationEnterpriseController alloc];
      v7 = [(AKEducationEnterpriseController *)v6 initWithContext:v93 client:v92];
      eduController = selfCopy->_eduController;
      selfCopy->_eduController = v7;
      _objc_release(eduController);
      [(AKEducationEnterpriseController *)selfCopy->_eduController beginFederatedAuthWithInitialResponse:location[0] completionHandler:v91];
    }

    else
    {
      secondaryActionURLKey = [location[0] secondaryActionURLKey];
      _objc_release(secondaryActionURLKey);
      if (secondaryActionURLKey)
      {
        if ([location[0] isSecondaryActionURLGSEndpoint])
        {
          v86 = _AKLogSystem();
          v85 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
          {
            v39 = v86;
            v40 = v85;
            sub_10001CEEC(v84);
            _os_log_impl(&_mh_execute_header, v39, v40, "Secondary action is GS endpoint. Returning the response as-is so that handler can perform the action.", v84, 2u);
          }

          objc_storeStrong(&v86, 0);
          (*(v91 + 2))(v91, location[0], 0);
        }

        else
        {
          v83 = _AKLogSystem();
          v82 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
          {
            v37 = v83;
            v38 = v82;
            sub_10001CEEC(v81);
            _os_log_impl(&_mh_execute_header, v37, v38, "Trying to show server UI for the response.", v81, 2u);
          }

          objc_storeStrong(&v83, 0);
          v35 = selfCopy;
          secondaryActionURLKey2 = [location[0] secondaryActionURLKey];
          v33 = v93;
          v34 = location[0];
          v75 = _NSConcreteStackBlock;
          v76 = -1073741824;
          v77 = 0;
          v78 = sub_1000B46C0;
          v79 = &unk_1003220F0;
          v80 = _objc_retain(v91);
          [(AKAppleIDAuthenticationService *)v35 _beginServerDrivenSecondaryActionWithURLKey:secondaryActionURLKey2 context:v33 initialAuthResponse:v34 completion:&v75];
          _objc_release(secondaryActionURLKey2);
          objc_storeStrong(&v80, 0);
        }
      }

      else
      {
        secondaryActionURLKey3 = [location[0] secondaryActionURLKey];
        v73 = 0;
        v32 = 0;
        if (!secondaryActionURLKey3)
        {
          _masterKey = [v93 _masterKey];
          v73 = 1;
          v32 = _masterKey != 0;
        }

        if (v73)
        {
          _objc_release(_masterKey);
        }

        _objc_release(secondaryActionURLKey3);
        if (v32)
        {
          v72 = _AKLogSystem();
          v71 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
          {
            v29 = v72;
            v30 = v71;
            sub_10001CEEC(v70);
            _os_log_impl(&_mh_execute_header, v29, v30, "Context has masterKeyEligible set and server response indicates secondary action is required", v70, 2u);
          }

          objc_storeStrong(&v72, 0);
          v22 = v93;
          v23 = [v93 authKitAccount:0];
          [AKAnalyticsSender sendAnalyticsEvent:"sendAnalyticsEvent:context:account:error:" context:@"com.apple.authkit.authMasterKeyStart" account:v22 error:?];
          _objc_release(v23);
          v69 = [(AKAppleIDAuthenticationService *)selfCopy _srpAuthContextHelperWithContext:v93];
          _masterKey2 = [v93 _masterKey];
          [v69 setPassword:?];
          _objc_release(_masterKey2);
          [v69 _setMasterKeyAsSecondFactor:1];
          authContext = [v69 authContext];
          altDSID = [location[0] altDSID];
          masterToken = [location[0] masterToken];
          stringValue = [masterToken stringValue];
          v67 = [NSString stringWithFormat:@"%@:%@", altDSID, stringValue];
          _objc_release(stringValue);
          _objc_release(masterToken);
          _objc_release(altDSID);
          v66 = [v67 dataUsingEncoding:4];
          v28 = [v66 base64EncodedStringWithOptions:0];
          [authContext _setIdentityToken:?];
          _objc_release(v28);
          v65 = _AKLogSystem();
          v64 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            v20 = v65;
            v21 = v64;
            sub_10001CEEC(v63);
            _os_log_impl(&_mh_execute_header, v20, v21, "Attempting second SRP for masterKeyAsSecondFactor", v63, 2u);
          }

          objc_storeStrong(&v65, 0);
          v19 = selfCopy;
          v18 = v69;
          v56 = _NSConcreteStackBlock;
          v57 = -1073741824;
          v58 = 0;
          v59 = sub_1000B4810;
          v60 = &unk_100322118;
          v61 = _objc_retain(v93);
          v62 = _objc_retain(v91);
          [(AKAppleIDAuthenticationService *)v19 _performSRPAuthenticationWithContext:v18 completion:&v56];
          objc_storeStrong(&v62, 0);
          objc_storeStrong(&v61, 0);
          objc_storeStrong(&v66, 0);
          objc_storeStrong(&v67, 0);
          objc_storeStrong(&authContext, 0);
          objc_storeStrong(&v69, 0);
        }

        else if ([location[0] isFidoAuthRequired])
        {
          oslog = _AKLogFido();
          v54 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
          {
            v16 = oslog;
            v17 = v54;
            sub_10001CEEC(v53);
            _os_log_debug_impl(&_mh_execute_header, v16, v17, "Server response indicates fido auth is required.", v53, 2u);
          }

          objc_storeStrong(&oslog, 0);
          masterToken2 = [location[0] masterToken];
          stringValue2 = [masterToken2 stringValue];
          [v93 _setIdentityToken:?];
          _objc_release(stringValue2);
          _objc_release(masterToken2);
          [(AKAppleIDAuthenticationService *)selfCopy _performFidoStartAuthActionWithContext:v93 serverResponse:location[0] completion:v91];
        }

        else
        {
          secondaryActionMessage = [location[0] secondaryActionMessage];
          [v93 _setMessage:?];
          _objc_release(secondaryActionMessage);
          v52 = _AKLogSystem();
          v51 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            v11 = v52;
            v12 = v51;
            sub_10001CEEC(v50);
            _os_log_impl(&_mh_execute_header, v11, v12, "Secondary action server URL is missing", v50, 2u);
          }

          objc_storeStrong(&v52, 0);
          v9 = v91;
          v10 = [NSError ak_errorWithCode:-7005];
          v9[2](v9, 0);
          _objc_release(v10);
        }
      }
    }

    v87 = 0;
  }

  objc_storeStrong(&v91, 0);
  objc_storeStrong(&v92, 0);
  objc_storeStrong(&v93, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleSecondFactorUICompletionWithCode:(id)code error:(id)error idmsData:(id)data initialAuthResponse:(id)response context:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, code);
  v17 = 0;
  objc_storeStrong(&v17, error);
  v16 = 0;
  objc_storeStrong(&v16, data);
  v15 = 0;
  objc_storeStrong(&v15, response);
  v14 = 0;
  objc_storeStrong(&v14, context);
  v13 = 0;
  objc_storeStrong(&v13, completion);
  [(AKAppleIDAuthenticationService *)selfCopy _handleSecondFactorUICompletionWithCode:location[0] error:v17 idmsData:v16 piggybacking:0 initialAuthResponse:v15 context:v14 completion:v13];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleSecondFactorUICompletionWithCode:(id)code error:(id)error idmsData:(id)data piggybacking:(BOOL)piggybacking initialAuthResponse:(id)response context:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, code);
  v40 = 0;
  objc_storeStrong(&v40, error);
  v39 = 0;
  objc_storeStrong(&v39, data);
  piggybackingCopy = piggybacking;
  v37 = 0;
  objc_storeStrong(&v37, response);
  v36 = 0;
  objc_storeStrong(&v36, context);
  v35 = 0;
  objc_storeStrong(&v35, completion);
  if (v40)
  {
    v34 = _AKLogSystem();
    v33 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v44, v40);
      _os_log_error_impl(&_mh_execute_header, v34, v33, "Failed to get second-factor. Error: %@", v44, 0xCu);
    }

    objc_storeStrong(&v34, 0);
    (*(v35 + 2))(v35, 0, v40);
  }

  else
  {
    v32 = _AKLogSystem();
    v31 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v43, location[0]);
      _os_log_debug_impl(&_mh_execute_header, v32, v31, "Successfully obtained second-factor code: %@.", v43, 0xCu);
    }

    objc_storeStrong(&v32, 0);
    v12 = selfCopy;
    unsignedIntegerValue = [location[0] unsignedIntegerValue];
    altDSID = [v37 altDSID];
    masterToken = [v37 masterToken];
    v10 = v39;
    v11 = v36;
    v20 = _NSConcreteStackBlock;
    v21 = -1073741824;
    v22 = 0;
    v23 = sub_1000B4E88;
    v24 = &unk_100322168;
    v30 = piggybackingCopy;
    v29 = _objc_retain(v35);
    v25 = _objc_retain(selfCopy);
    v26 = _objc_retain(v36);
    v27 = _objc_retain(v39);
    v28 = _objc_retain(v37);
    [(AKAppleIDAuthenticationService *)v12 _validateLoginCode:unsignedIntegerValue forAltDSID:altDSID masterToken:masterToken idmsData:v10 authContext:v11 completion:&v20];
    _objc_release(masterToken);
    _objc_release(altDSID);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v29, 0);
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
}

- (void)_processValidationCodeSuccessResponse:(id)response authResponse:(id)authResponse results:(id)results completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v19 = 0;
  objc_storeStrong(&v19, authResponse);
  v18 = 0;
  objc_storeStrong(&v18, results);
  v17 = 0;
  objc_storeStrong(&v17, completion);
  v16 = _AKLogSystem();
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    log = v16;
    type = v15;
    sub_10001CEEC(v14);
    _os_log_impl(&_mh_execute_header, log, type, "Login code successfully validated! Updating auth tokens...", v14, 2u);
  }

  objc_storeStrong(&v16, 0);
  if ([v19 updateWithSecondaryAuthenticationResponse:location[0]])
  {
    [v19 updateWithSecondaryAuthenticationBody:v18];
    (*(v17 + 2))(v17, v19, 0);
  }

  else
  {
    v7 = v17;
    v6 = v19;
    v8 = [NSError ak_errorWithCode:-7021];
    v7[2](v7, v6);
    _objc_release(v8);
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

- (void)_showAlertForLoginCodeValidationError:(id)error context:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v17 = 0;
  objc_storeStrong(&v17, context);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  v15 = [(AKAppleIDAuthenticationService *)selfCopy _alertDetailsForError:location[0] context:v17];
  v7 = [AKAuthenticationErrorAlertDetails alloc];
  error = [v15 error];
  v10 = [NSBundle bundleWithIdentifier:?];
  v9 = [NSBundle localizedStringForKey:v10 value:"localizedStringForKey:value:table:" table:?];
  message = [v15 message];
  v14 = [(AKAuthenticationErrorAlertDetails *)v7 initWithError:error title:v9 message:?];
  _objc_release(message);
  _objc_release(v9);
  _objc_release(v10);
  _objc_release(error);
  v12 = [NSBundle bundleWithIdentifier:@"com.apple.AuthKit"];
  v13 = [(NSBundle *)v12 localizedStringForKey:@"CODE_INVALID_TITLE" value:&stru_100330538 table:@"Localizable"];
  _objc_release(v12);
  [(AKAuthenticationUILiaison *)selfCopy->_authUILiaison presentSecondFactorAlertForContext:v17 client:selfCopy->_client withAlertDetails:v14 completion:v16];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)_attemptPasswordlessAuthAfterBiometricOrPasscodeValidationWithContext:(id)context promptType:(unint64_t)type completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  typeCopy = type;
  v17 = 0;
  objc_storeStrong(&v17, completion);
  v8 = selfCopy;
  v7 = location[0];
  v9 = _NSConcreteStackBlock;
  v10 = -1073741824;
  v11 = 0;
  v12 = sub_1000B5888;
  v13 = &unk_1003221B8;
  v16[0] = _objc_retain(v17);
  v14 = _objc_retain(location[0]);
  v15 = _objc_retain(selfCopy);
  v16[1] = typeCopy;
  [(AKAppleIDAuthenticationService *)v8 _accountForContinuationWithContext:v7 completion:?];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)_performGrandslamEndpointActionWithContext:(id)context serverResponse:(id)response completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v38 = 0;
  objc_storeStrong(&v38, response);
  v37 = 0;
  objc_storeStrong(&v37, completion);
  altDSID = [location[0] altDSID];
  v20 = [AKURLBag bagForAltDSID:?];
  secondaryActionURLKey = [v38 secondaryActionURLKey];
  v36 = [v20 _urlAtKey:?];
  _objc_release(secondaryActionURLKey);
  _objc_release(v20);
  _objc_release(altDSID);
  if (v36)
  {
    v32 = [[NSMutableURLRequest alloc] initWithURL:v36];
    [v32 setHTTPMethod:@"GET"];
    v6 = v32;
    name = [(AKClient *)selfCopy->_client name];
    [v6 ak_addClientApp:?];
    _objc_release(name);
    v8 = v32;
    bundleID = [(AKClient *)selfCopy->_client bundleID];
    [v8 ak_addClientBundleIDHeader:?];
    _objc_release(bundleID);
    [v32 ak_addClientInfoHeader];
    v10 = v32;
    masterToken = [v38 masterToken];
    stringValue = [masterToken stringValue];
    altDSID2 = [v38 altDSID];
    [v10 ak_addAuthorizationHeaderWithIdentityToken:stringValue forAltDSID:?];
    _objc_release(altDSID2);
    _objc_release(stringValue);
    _objc_release(masterToken);
    [v32 ak_addInternalBuildHeader];
    [v32 ak_addSeedBuildHeader];
    [v32 ak_addFeatureMaskHeader];
    v15 = +[AKURLSession sharedURLSession];
    v14 = v32;
    v24 = _NSConcreteStackBlock;
    v25 = -1073741824;
    v26 = 0;
    v27 = sub_1000B6458;
    v28 = &unk_100320918;
    v29 = _objc_retain(selfCopy);
    v30 = _objc_retain(v38);
    v31 = _objc_retain(v37);
    v5 = [v15 beginDataTaskWithRequest:v14 completionHandler:&v24];
    _objc_release(v15);
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v32, 0);
    v33 = 0;
  }

  else
  {
    v35 = _AKLogSystem();
    v34 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      secondaryActionURLKey2 = [v38 secondaryActionURLKey];
      sub_1000194D4(v41, secondaryActionURLKey2);
      _os_log_error_impl(&_mh_execute_header, v35, v34, "There was no URL in the bag for key: %@", v41, 0xCu);
      _objc_release(secondaryActionURLKey2);
    }

    objc_storeStrong(&v35, 0);
    v16 = v37;
    v17 = [NSError ak_errorWithCode:-7005];
    v16[2](v16, 0);
    _objc_release(v17);
    v33 = 1;
  }

  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleGrandslamResponse:(id)response data:(id)data error:(id)error serverResponse:(id)serverResponse completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v24 = 0;
  objc_storeStrong(&v24, data);
  v23 = 0;
  objc_storeStrong(&v23, error);
  v22 = 0;
  objc_storeStrong(&v22, serverResponse);
  v21 = 0;
  objc_storeStrong(&v21, completion);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = _AKLogSystem();
    v19 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v26, location[0]);
      _os_log_error_impl(&_mh_execute_header, v20, v19, "Request response is not of expected class! %@", v26, 0xCu);
    }

    objc_storeStrong(&v20, 0);
    v10 = v21;
    v11 = [NSError ak_errorWithCode:-7010];
    v10[2](v10, 0);
    _objc_release(v11);
  }

  v18 = _objc_retain(location[0]);
  v17 = [v22 updateWithSecondaryAuthenticationResponse:v18 shouldUpdateDSID:1];
  if (v17)
  {
    v16 = [AAFSerialization dictionaryFromObject:v24 ofType:@"application/json"];
    [v22 updateWithSecondaryAuthenticationBody:v16];
    (*(v21 + 2))(v21, v22);
    objc_storeStrong(&v16, 0);
  }

  else
  {
    v8 = v21;
    v7 = v22;
    v9 = [NSError ak_errorWithCode:-7021];
    v8[2](v8, v7);
    _objc_release(v9);
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

- (void)clearSessionCacheWithCompletion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v8 = _AKLogSystem();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    log = v8;
    type = v7;
    sub_10001CEEC(v6);
    _os_log_impl(&_mh_execute_header, log, type, "Starting to clear session cache.", v6, 2u);
  }

  objc_storeStrong(&v8, 0);
  v3 = +[AKURLBagService sharedBagService];
  [v3 clearCache];
  _objc_release(v3);
  (*(location[0] + 2))(location[0], 1, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchGlobalConfigurationUsingPolicy:(unint64_t)policy completion:(id)completion
{
  selfCopy = self;
  v7 = a2;
  policyCopy = policy;
  location = 0;
  objc_storeStrong(&location, completion);
  v4 = +[AKGlobalConfigService sharedInstance];
  [(AKGlobalConfigService *)v4 fetchGlobalConfigUsingCachePolicy:policyCopy context:AKRequestContextUserInitiated completion:location];
  _objc_release(v4);
  objc_storeStrong(&location, 0);
}

- (id)fidoHandler
{
  if (!self->_fidoHandler)
  {
    v2 = objc_alloc_init(AKFidoDaemonServerHandler);
    fidoHandler = self->_fidoHandler;
    self->_fidoHandler = v2;
    _objc_release(fidoHandler);
  }

  v4 = self->_fidoHandler;

  return v4;
}

- (void)_performFidoStartAuthActionWithContext:(id)context serverResponse:(id)response completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v26 = 0;
  objc_storeStrong(&v26, response);
  v25 = 0;
  objc_storeStrong(&v25, completion);
  altDSID = [location[0] altDSID];
  v23 = 0;
  v10 = 0;
  if (!altDSID)
  {
    altDSID2 = [v26 altDSID];
    v23 = 1;
    v10 = [altDSID2 length] != 0;
  }

  if (v23)
  {
    _objc_release(altDSID2);
  }

  _objc_release(altDSID);
  if (v10)
  {
    altDSID3 = [v26 altDSID];
    [location[0] setAltDSID:?];
    _objc_release(altDSID3);
  }

  objc_initWeak(&from, selfCopy);
  fidoHandler = [(AKAppleIDAuthenticationService *)selfCopy fidoHandler];
  v5 = location[0];
  client = selfCopy->_client;
  v13 = _NSConcreteStackBlock;
  v14 = -1073741824;
  v15 = 0;
  v16 = sub_1000B6DB4;
  v17 = &unk_10031EEF8;
  objc_copyWeak(v21, &from);
  v20 = _objc_retain(v25);
  v18 = _objc_retain(location[0]);
  v19 = _objc_retain(v26);
  [fidoHandler startFidoAuthWithContext:v5 recoveryToken:0 client:client completion:&v13];
  _objc_release(fidoHandler);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v20, 0);
  objc_destroyWeak(v21);
  objc_destroyWeak(&from);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleStartFidoAuthWithContext:(id)context fidoContext:(id)fidoContext serverResponse:(id)response completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v23 = 0;
  objc_storeStrong(&v23, fidoContext);
  v22 = 0;
  objc_storeStrong(&v22, response);
  v21 = 0;
  objc_storeStrong(&v21, completion);
  v20 = _AKLogFido();
  v19 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v26, v23);
    _os_log_debug_impl(&_mh_execute_header, v20, v19, "Received Fido start auth with context: %@", v26, 0xCu);
  }

  objc_storeStrong(&v20, 0);
  objc_initWeak(&from, selfCopy);
  v9 = _NSConcreteStackBlock;
  v10 = -1073741824;
  v11 = 0;
  v12 = sub_1000B729C;
  v13 = &unk_1003221E0;
  objc_copyWeak(&v16, &from);
  v15 = _objc_retain(v21);
  v14 = _objc_retain(location[0]);
  v17 = objc_retainBlock(&v9);
  [(AKAuthenticationUILiaison *)selfCopy->_authUILiaison presentFidoAuthForContext:location[0] fidoContext:v23 client:selfCopy->_client completion:v17];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&from);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

- (void)_beginServerDrivenSecondaryActionWithURLKey:(id)key context:(id)context initialAuthResponse:(id)response completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v26 = 0;
  objc_storeStrong(&v26, context);
  v25 = 0;
  objc_storeStrong(&v25, response);
  v24 = 0;
  objc_storeStrong(&v24, completion);
  v23 = _AKLogSystem();
  v22 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v29, location[0]);
    _os_log_debug_impl(&_mh_execute_header, v23, v22, "Server says to show UI at URL key: %@", v29, 0xCu);
  }

  objc_storeStrong(&v23, 0);
  altDSID = [v26 altDSID];
  v7 = [AKURLBag bagForAltDSID:?];
  v6 = location[0];
  v12 = _NSConcreteStackBlock;
  v13 = -1073741824;
  v14 = 0;
  v15 = sub_1000B77C0;
  v16 = &unk_100322230;
  v17 = _objc_retain(location[0]);
  v21 = _objc_retain(v24);
  v18 = _objc_retain(selfCopy);
  v19 = _objc_retain(v26);
  v20 = _objc_retain(v25);
  [v7 urlConfigurationForKey:v6 fromCache:0 completion:&v12];
  _objc_release(v7);
  _objc_release(altDSID);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

- (void)_showServerUIWithURLRequest:(id)request context:(id)context urlConfiguration:(id)configuration completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v11 = 0;
  objc_storeStrong(&v11, context);
  v10 = 0;
  objc_storeStrong(&v10, configuration);
  v9 = 0;
  objc_storeStrong(&v9, completion);
  [(AKAppleIDAuthenticationService *)selfCopy _showServerUIWithURLRequest:location[0] context:v11 initialAuthResponse:0 urlConfiguration:v10 completion:v9];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)_showServerUIWithURLRequest:(id)request context:(id)context initialAuthResponse:(id)response urlConfiguration:(id)configuration completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v15 = 0;
  objc_storeStrong(&v15, context);
  v14 = 0;
  objc_storeStrong(&v14, response);
  v13 = 0;
  objc_storeStrong(&v13, configuration);
  v12 = 0;
  objc_storeStrong(&v12, completion);
  v11 = [AKDServerUIContext serverUIContextFromResponse:v14 authContext:v15 urlRequest:location[0] urlConfiguration:v13];
  [(AKAppleIDAuthenticationService *)selfCopy _showServerUIWithContext:v11 completion:v12];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)_showServerUIWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v18 = 0;
  objc_storeStrong(&v18, completion);
  authContext = [location[0] authContext];
  authContext2 = [location[0] authContext];
  v6 = [authContext2 authKitAccount:0];
  [AKAnalyticsSender sendAnalyticsEvent:"sendAnalyticsEvent:context:account:error:" context:@"com.apple.authkit.authServerUIStart" account:authContext error:?];
  _objc_release(v6);
  _objc_release(authContext2);
  _objc_release(authContext);
  v4 = [AKDServerUIController alloc];
  v17 = [(AKDServerUIController *)v4 initWithLiaison:selfCopy->_authUILiaison client:selfCopy->_client delegate:selfCopy];
  v10 = v17;
  v9 = location[0];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1000B8364;
  v14 = &unk_100322258;
  v15 = _objc_retain(location[0]);
  v16 = _objc_retain(v18);
  [(AKDServerUIController *)v10 showServerUIWithContext:v9 completion:?];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)shouldProcessAdditionalServerUIData:(id)data
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v4 = [AKAccountRecoveryController shouldProcessServerUIRequest:location[0]];
  objc_storeStrong(location, 0);
  return v4;
}

- (void)serverUIContext:(id)context processAdditionalData:(id)data completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v31 = 0;
  objc_storeStrong(&v31, data);
  v30 = 0;
  objc_storeStrong(&v30, completion);
  v29 = _AKLogSystem();
  v28 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    log = v29;
    type = v28;
    sub_10001CEEC(v27);
    _os_log_impl(&_mh_execute_header, log, type, "Asking client to start showing native UI", v27, 2u);
  }

  objc_storeStrong(&v29, 0);
  v26 = _AKLogSystem();
  v25 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v34, v31);
    _os_log_impl(&_mh_execute_header, v26, v25, "AKAppleIDAuthenticationService serverUIContext additionalData: %@", v34, 0xCu);
  }

  objc_storeStrong(&v26, 0);
  v18 = 0;
  v19 = &v18;
  v20 = 838860800;
  v21 = 48;
  v22 = sub_100003984;
  v23 = sub_1000111A0;
  v24 = [[AKAccountRecoveryController alloc] initWithUILiaison:selfCopy->_authUILiaison client:selfCopy->_client];
  v7 = v19[5];
  v5 = location[0];
  v6 = v31;
  v12 = _NSConcreteStackBlock;
  v13 = -1073741824;
  v14 = 0;
  v15 = sub_1000B8904;
  v16 = &unk_100322280;
  v17[1] = &v18;
  v17[0] = _objc_retain(v30);
  [v7 retrieveRecoveryDataForServerContext:v5 recoveryInfo:v6 completion:&v12];
  objc_storeStrong(v17, 0);
  _Block_object_dispose(&v18, 8);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
}

- (void)_performSilentServiceTokenAuthWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v36 = 0;
  objc_storeStrong(&v36, completion);
  v35 = 0;
  v33 = 0;
  v14 = [location[0] authKitAccountForSilentServiceToken:&v33];
  objc_storeStrong(&v35, v33);
  v34 = v14;
  if (v14)
  {
    v29 = _AKLogSystem();
    v28 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v40, v34);
      _os_log_impl(&_mh_execute_header, v29, v28, "Attempting silent service-token auth with IDMS account %@...", v40, 0xCu);
    }

    objc_storeStrong(&v29, 0);
    v27 = [(AKAccountManager *)selfCopy->_accountManager masterTokenForAccount:v34];
    if (v27)
    {
      v24 = [(AKAccountManager *)selfCopy->_accountManager altDSIDForAccount:v34];
      v7 = selfCopy;
      serviceIdentifiers = [location[0] serviceIdentifiers];
      username = [v34 username];
      v4 = v24;
      v5 = v27;
      v6 = location[0];
      v15 = _NSConcreteStackBlock;
      v16 = -1073741824;
      v17 = 0;
      v18 = sub_1000B8FDC;
      v19 = &unk_1003222A8;
      v20 = _objc_retain(location[0]);
      v23 = _objc_retain(v36);
      v21 = _objc_retain(selfCopy);
      v22 = _objc_retain(v24);
      [(AKAppleIDAuthenticationService *)v7 _fetchTokensForServiceIDs:serviceIdentifiers withUsername:username altDSID:v4 masterToken:v5 context:v6 completion:&v15];
      _objc_release(username);
      _objc_release(serviceIdentifiers);
      objc_storeStrong(&v22, 0);
      objc_storeStrong(&v21, 0);
      objc_storeStrong(&v23, 0);
      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v24, 0);
      v30 = 0;
    }

    else
    {
      v26 = _AKLogSystem();
      v25 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v39, v34);
        _os_log_error_impl(&_mh_execute_header, v26, v25, "No master token available for silent auth on account %@.", v39, 0xCu);
      }

      objc_storeStrong(&v26, 0);
      v10 = v36;
      v11 = [NSError ak_errorWithCode:-7024];
      v10[2](v10, 0);
      _objc_release(v11);
      v30 = 1;
    }

    objc_storeStrong(&v27, 0);
  }

  else
  {
    v32 = _AKLogSystem();
    v31 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      username2 = [location[0] username];
      sub_1000194D4(v41, username2);
      _os_log_impl(&_mh_execute_header, v32, v31, "No usable IDMS account for Apple ID: %@", v41, 0xCu);
      _objc_release(username2);
    }

    objc_storeStrong(&v32, 0);
    (*(v36 + 2))(v36, 0, v35);
    v30 = 1;
  }

  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
}

- (void)_fetchTokensForServiceIDs:(id)ds withUsername:(id)username altDSID:(id)d masterToken:(id)token context:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, ds);
  v71 = 0;
  objc_storeStrong(&v71, username);
  v70 = 0;
  objc_storeStrong(&v70, d);
  v69 = 0;
  objc_storeStrong(&v69, token);
  v68 = 0;
  objc_storeStrong(&v68, context);
  v67 = 0;
  objc_storeStrong(&v67, completion);
  if (location[0])
  {
    externalizedVersion = [v69 externalizedVersion];
    if (externalizedVersion)
    {
      v58 = 0uLL;
      v20 = _AKSignpostLogSystem();
      *&v57 = _AKSignpostCreate();
      *(&v57 + 1) = v8;
      _objc_release(v20);
      v56 = _AKSignpostLogSystem();
      v55 = 1;
      v54 = v57;
      if (v57 && v54 != -1 && os_signpost_enabled(v56))
      {
        v17 = v56;
        v18 = v55;
        spid = v54;
        sub_10001CEEC(v53);
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, v18, spid, "FetchGrandslamTokens", " enableTelemetry=YES ", v53, 2u);
      }

      objc_storeStrong(&v56, 0);
      oslog = _AKSignpostLogSystem();
      v51 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        sub_100036FE8(v77, v57);
        _os_log_impl(&_mh_execute_header, oslog, v51, "BEGIN [%lld]: FetchGrandslamTokens  enableTelemetry=YES ", v77, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v58 = v57;
      v50 = 0;
      authProxy = selfCopy->_authProxy;
      v48 = 0;
      v16 = [(AKAppleIDAuthSupportProxy *)authProxy appleIDAuthSupportTokenCreateWithExternalizedVersion:externalizedVersion error:&v48];
      objc_storeStrong(&v50, v48);
      v49 = v16;
      if (v16)
      {
        v39 = [(AKAppleIDAuthenticationService *)selfCopy _authenticationParametersForUsername:v71 altDSID:v70 context:v68];
        altDSID = [v68 altDSID];
        v11 = [AKURLBag bagForAltDSID:?];
        v10 = AKURLBagKeyBasicAuthKey;
        v34 = _objc_retain(v39);
        v35 = _objc_retain(selfCopy);
        v37[1] = v49;
        v36 = _objc_retain(location[0]);
        v37[0] = _objc_retain(v67);
        v38 = v58;
        [v11 urlForKey:v10 completion:?];
        _objc_release(v11);
        _objc_release(altDSID);
        objc_storeStrong(v37, 0);
        objc_storeStrong(&v36, 0);
        objc_storeStrong(&v35, 0);
        objc_storeStrong(&v34, 0);
        objc_storeStrong(&v39, 0);
        v63 = 0;
      }

      else
      {
        v47 = _AKLogSystem();
        v46 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          sub_1000194D4(v76, v50);
          _os_log_error_impl(&_mh_execute_header, v47, v46, "Failed to create AppleIDAuthSupportTokenRef from exteral form. Error: %@", v76, 0xCu);
        }

        objc_storeStrong(&v47, 0);
        v45 = _AKSignpostGetNanoseconds() / 1000000000.0;
        v44 = _AKSignpostLogSystem();
        v43 = OS_SIGNPOST_INTERVAL_END;
        v42 = v58;
        if (v58 && v42 != -1 && os_signpost_enabled(v44))
        {
          sub_100034290(v75, [v50 code]);
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v44, v43, v42, "FetchGrandslamTokens", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v75, 8u);
        }

        objc_storeStrong(&v44, 0);
        v41 = _AKSignpostLogSystem();
        v40 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000343D0(v74, v58, *&v45, [v50 code]);
          _os_log_impl(&_mh_execute_header, v41, v40, "END [%lld] %fs:FetchGrandslamTokens  Error=%{public,signpost.telemetry:number2,name=Error}d ", v74, 0x1Cu);
        }

        objc_storeStrong(&v41, 0);
        if (v67)
        {
          v13 = v67;
          ac_secureCodingError = [v50 ac_secureCodingError];
          v14 = [NSError ak_errorWithCode:-7001 underlyingError:?];
          v13[2](v13, 0);
          _objc_release(v14);
          _objc_release(ac_secureCodingError);
        }

        v63 = 1;
      }

      objc_storeStrong(&v50, 0);
    }

    else
    {
      v61 = _AKLogSystem();
      v60 = 16;
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        v23 = v61;
        v24 = v60;
        sub_10001CEEC(v59);
        _os_log_error_impl(&_mh_execute_header, v23, v24, "Asked to fetch service token without any master token data!", v59, 2u);
      }

      objc_storeStrong(&v61, 0);
      if (v67)
      {
        v21 = v67;
        v22 = [NSError ak_errorWithCode:-7008];
        v21[2](v21, 0);
        _objc_release(v22);
      }

      v63 = 1;
    }

    objc_storeStrong(&externalizedVersion, 0);
  }

  else
  {
    v66 = _AKLogSystem();
    v65 = 16;
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      log = v66;
      type = v65;
      sub_10001CEEC(v64);
      _os_log_error_impl(&_mh_execute_header, log, type, "Asked to fetch service token without a serviceID!", v64, 2u);
    }

    objc_storeStrong(&v66, 0);
    if (v67)
    {
      v25 = v67;
      v26 = [NSError ak_errorWithCode:-7009];
      v25[2](v25, 0);
      _objc_release(v26);
    }

    v63 = 1;
  }

  objc_storeStrong(&v67, 0);
  objc_storeStrong(&v68, 0);
  objc_storeStrong(&v69, 0);
  objc_storeStrong(&v70, 0);
  objc_storeStrong(&v71, 0);
  objc_storeStrong(location, 0);
}

- (void)renewRecoveryTokenWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v7 = 0;
  objc_storeStrong(&v7, completion);
  v4 = [AKAccountRecoveryController alloc];
  v6 = [(AKAccountRecoveryController *)v4 initWithUILiaison:selfCopy->_authUILiaison client:selfCopy->_client];
  [(AKAccountRecoveryController *)v6 renewRecoveryTokenWithContext:location[0] completion:v7];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)verifyMasterKey:(id)key withContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v10 = 0;
  objc_storeStrong(&v10, context);
  v9 = 0;
  objc_storeStrong(&v9, completion);
  v5 = [AKAccountRecoveryController alloc];
  v8 = [(AKAccountRecoveryController *)v5 initWithUILiaison:selfCopy->_authUILiaison client:selfCopy->_client];
  [(AKAccountRecoveryController *)v8 verifyMasterKey:location[0] withContext:v10 completion:v9];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)persistRecoveryKeyWithContext:(id)context authContext:(id)authContext completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v14 = 0;
  objc_storeStrong(&v14, authContext);
  v13 = 0;
  objc_storeStrong(&v13, completion);
  if ([(AKClient *)selfCopy->_client hasInternalAccess])
  {
    v5 = [AKAccountRecoveryController alloc];
    v12 = [(AKAccountRecoveryController *)v5 initWithUILiaison:selfCopy->_authUILiaison client:selfCopy->_client];
    [(AKAccountRecoveryController *)v12 persistRecoveryKeyWithContext:location[0] authContext:v14 completion:v13];
    objc_storeStrong(&v12, 0);
  }

  else
  {
    v11 = _AKLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      name = [(AKClient *)selfCopy->_client name];
      sub_1000194D4(v17, name);
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@ does not have entitlements to persistRecoveryKey", v17, 0xCu);
      _objc_release(name);
    }

    objc_storeStrong(&v11, 0);
    if (v13)
    {
      v6 = v13;
      v7 = [NSError ak_errorWithCode:-7026];
      v6[2](v6, 0);
      _objc_release(v7);
    }
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)_recoverCredentialsAndAuthenticateWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v36 = 0;
  objc_storeStrong(&v36, completion);
  v35 = _AKLogSystem();
  v34 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    log = v35;
    type = v34;
    sub_10001CEEC(v33);
    _os_log_impl(&_mh_execute_header, log, type, "User does not have all their credentials, so we're going to iForgot...", v33, 2u);
  }

  objc_storeStrong(&v35, 0);
  v32 = [AAFAnalyticsEvent ak_analyticsEventWithContext:location[0] client:selfCopy->_client eventName:@"com.apple.authkit.accountRecoveryStart" error:0];
  v10 = +[AKAnalyticsReporterRTC rtcAnalyticsReporter];
  [v10 sendEvent:v32];
  _objc_release(v10);
  v31 = 0uLL;
  v11 = _AKSignpostLogSystem();
  *&v30 = _AKSignpostCreate();
  *(&v30 + 1) = v4;
  _objc_release(v11);
  v29 = _AKSignpostLogSystem();
  v28 = 1;
  v27 = v30;
  if (v30 && v27 != -1 && os_signpost_enabled(v29))
  {
    v7 = v29;
    v8 = v28;
    spid = v27;
    sub_10001CEEC(v26);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, v8, spid, "iForgot", " enableTelemetry=YES ", v26, 2u);
  }

  objc_storeStrong(&v29, 0);
  v25 = _AKSignpostLogSystem();
  v24 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    sub_100036FE8(v39, v30);
    _os_log_impl(&_mh_execute_header, v25, v24, "BEGIN [%lld]: iForgot  enableTelemetry=YES ", v39, 0xCu);
  }

  objc_storeStrong(&v25, 0);
  v31 = v30;
  v6 = selfCopy;
  v5 = location[0];
  v15 = _NSConcreteStackBlock;
  v16 = -1073741824;
  v17 = 0;
  v18 = sub_1000BB44C;
  v19 = &unk_100322320;
  v23 = v30;
  v20 = _objc_retain(location[0]);
  v21 = _objc_retain(selfCopy);
  v22 = _objc_retain(v36);
  [(AKAppleIDAuthenticationService *)v6 _beginiForgotFlowWithContext:v5 completion:&v15];
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleRecoverCredentialsError:(id)error withContext:(id)context event:(id)event andCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v14 = 0;
  objc_storeStrong(&v14, context);
  v13 = 0;
  objc_storeStrong(&v13, event);
  v12 = 0;
  objc_storeStrong(&v12, completion);
  v11 = _AKLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_1000194D4(v17, location[0]);
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "iForgot flow failed! Error: %@", v17, 0xCu);
  }

  objc_storeStrong(&v11, 0);
  [AKAnalyticsSender sendAnalyticsEvent:v13 withError:location[0]];
  domain = [location[0] domain];
  _keepAlive = 0;
  if ([domain isEqualToString:AKAppleIDAuthenticationErrorDomain])
  {
    _keepAlive = [v14 _keepAlive];
  }

  _objc_release(domain);
  if (_keepAlive)
  {
    [v14 setNeedsCredentialRecovery:0];
    [(AKAppleIDAuthenticationService *)selfCopy _keepLoginAliveWithContext:v14 error:location[0] andCompletion:v12];
  }

  else
  {
    (*(v12 + 2))(v12, 0, location[0]);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)_beginiForgotFlowWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v28 = 0;
  objc_storeStrong(&v28, completion);
  v27 = _AKLogSystem();
  v26 = 2;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    log = v27;
    type = v26;
    sub_10001CEEC(v25);
    _os_log_debug_impl(&_mh_execute_header, log, type, "Starting iForgot flow...", v25, 2u);
  }

  objc_storeStrong(&v27, 0);
  v24 = 0;
  if ([location[0] isTriggeredByNotification])
  {
    v23 = _AKLogSystem();
    v22 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v23;
      v9 = v22;
      sub_10001CEEC(v21);
      _os_log_impl(&_mh_execute_header, v8, v9, "iForgot flow was triggered by push notification. Will try to use dedicated URL.", v21, 2u);
    }

    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, AKURLBagKeyiForgotContinuation);
  }

  if (!v24)
  {
    objc_storeStrong(&v24, AKURLBagKeyiForgot);
  }

  altDSID = [location[0] altDSID];
  v6 = [v4 bagForAltDSID:?];
  v5 = v24;
  v13 = _NSConcreteStackBlock;
  v14 = -1073741824;
  v15 = 0;
  v16 = sub_1000BC410;
  v17 = &unk_100322348;
  v20 = _objc_retain(v28);
  v18 = _objc_retain(selfCopy);
  v19 = _objc_retain(location[0]);
  [v6 urlConfigurationForKey:v5 fromCache:0 completion:&v13];
  _objc_release(v6);
  _objc_release(altDSID);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

- (id)_addAccountNameParameterToURL:(id)l withContext:(id)context
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v22 = 0;
  objc_storeStrong(&v22, context);
  username = [v22 username];
  v17 = [username length];
  _objc_release(username);
  if (v17)
  {
    username2 = [v22 username];
    aaf_urlEncoded = [username2 aaf_urlEncoded];
    _objc_release(username2);
    v20 = 0;
    isRequestedFromOOPViewService = 0;
    if ([v22 needsCredentialRecovery])
    {
      isRequestedFromOOPViewService = [v22 isRequestedFromOOPViewService];
    }

    v18 = 0;
    isForgotPasswordNativeTakeoverEnabled = 0;
    if (isRequestedFromOOPViewService)
    {
      v19 = +[AKFeatureManager sharedManager];
      v18 = 1;
      isForgotPasswordNativeTakeoverEnabled = [v19 isForgotPasswordNativeTakeoverEnabled];
    }

    if (v18)
    {
      _objc_release(v19);
    }

    if (isForgotPasswordNativeTakeoverEnabled)
    {
      absoluteString = [location[0] absoluteString];
      aKTrueValue = [absoluteString stringByAppendingFormat:@"?%@=%@&%@=%@", AKRecoveryUsernameRequestParameter, aaf_urlEncoded, AKRecoveryAutoSubmitAccountRequestParameter, AKTrueValue];
      v5 = v20;
      v20 = aKTrueValue;
      _objc_release(v5);
      _objc_release(absoluteString);
    }

    else
    {
      absoluteString2 = [location[0] absoluteString];
      v6 = [absoluteString2 stringByAppendingFormat:@"?%@=%@", AKRecoveryUsernameRequestParameter, aaf_urlEncoded];
      v7 = v20;
      v20 = v6;
      _objc_release(v7);
      _objc_release(absoluteString2);
    }

    v24 = [NSURL URLWithString:v20];
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&aaf_urlEncoded, 0);
  }

  else
  {
    v24 = _objc_retain(location[0]);
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  v8 = v24;

  return v8;
}

- (void)_repairAppleIDWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v28 = 0;
  objc_storeStrong(&v28, completion);
  v27 = _AKLogSystem();
  v26 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    log = v27;
    type = v26;
    sub_10001CEEC(v25);
    _os_log_impl(&_mh_execute_header, log, type, "Starting repair...", v25, 2u);
  }

  objc_storeStrong(&v27, 0);
  v24 = 0;
  v22 = 0;
  v7 = [location[0] authKitAccount:&v22];
  objc_storeStrong(&v24, v22);
  v23 = v7;
  if (!v24 && v23)
  {
    altDSID = [location[0] altDSID];
    v5 = [AKURLBag bagForAltDSID:?];
    v4 = AKURLBagKeyRepair;
    v11 = _NSConcreteStackBlock;
    v12 = -1073741824;
    v13 = 0;
    v14 = sub_1000BCFC0;
    v15 = &unk_100322370;
    v19 = _objc_retain(v28);
    v16 = _objc_retain(location[0]);
    v17 = _objc_retain(selfCopy);
    v18 = _objc_retain(v23);
    [v5 urlConfigurationForKey:v4 fromCache:0 completion:&v11];
    _objc_release(v5);
    _objc_release(altDSID);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v19, 0);
  }

  else
  {
    v21 = _AKLogSystem();
    v20 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v31, v24);
      _os_log_error_impl(&_mh_execute_header, v21, v20, "Failed to find matching account for context! Error: %@", v31, 0xCu);
    }

    objc_storeStrong(&v21, 0);
    (*(v28 + 2))(v28, 0, v24);
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

- (void)_createNewAppleIDAndAuthenticateWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v34 = 0;
  objc_storeStrong(&v34, completion);
  v33 = _AKLogSystem();
  v32 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    log = v33;
    type = v32;
    sub_10001CEEC(v31);
    _os_log_impl(&_mh_execute_header, log, type, "User wants a new Apple ID to auth with...", v31, 2u);
  }

  objc_storeStrong(&v33, 0);
  v30 = 0uLL;
  v10 = _AKSignpostLogSystem();
  *&v29 = _AKSignpostCreate();
  *(&v29 + 1) = v4;
  _objc_release(v10);
  v28 = _AKSignpostLogSystem();
  v27 = 1;
  v26 = v29;
  if (v29 && v26 != -1 && os_signpost_enabled(v28))
  {
    v7 = v28;
    v8 = v27;
    spid = v26;
    sub_10001CEEC(v25);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, v8, spid, "CreateNewAppleID", " enableTelemetry=YES ", v25, 2u);
  }

  objc_storeStrong(&v28, 0);
  v24 = _AKSignpostLogSystem();
  v23 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    sub_100036FE8(v37, v29);
    _os_log_impl(&_mh_execute_header, v24, v23, "BEGIN [%lld]: CreateNewAppleID  enableTelemetry=YES ", v37, 0xCu);
  }

  objc_storeStrong(&v24, 0);
  v30 = v29;
  v6 = selfCopy;
  v5 = location[0];
  v14 = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_1000BDA18;
  v18 = &unk_100322398;
  v22 = v29;
  v21 = _objc_retain(v34);
  v19 = _objc_retain(selfCopy);
  v20 = _objc_retain(location[0]);
  [(AKAppleIDAuthenticationService *)v6 _beginServerUIAppleIDCreationFlowWithContext:v5 completion:&v14];
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleCreateNewAppleIDError:(id)error withContext:(id)context andCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v11 = 0;
  objc_storeStrong(&v11, context);
  v10 = 0;
  objc_storeStrong(&v10, completion);
  v9 = _AKLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_1000194D4(v14, location[0]);
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "New Apple ID flow failed! Error: %@", v14, 0xCu);
  }

  objc_storeStrong(&v9, 0);
  domain = [location[0] domain];
  _keepAlive = 0;
  if ([domain isEqualToString:AKAppleIDAuthenticationErrorDomain])
  {
    _keepAlive = [v11 _keepAlive];
  }

  _objc_release(domain);
  if (_keepAlive)
  {
    [v11 setNeedsNewAppleID:0];
    [(AKAppleIDAuthenticationService *)selfCopy _keepLoginAliveWithContext:v11 error:location[0] andCompletion:v10];
  }

  else
  {
    (*(v10 + 2))(v10, 0, location[0]);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)_beginServerUIAppleIDCreationFlowWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v35 = 0;
  objc_storeStrong(&v35, completion);
  v34 = 0;
  requestedNewAccountAgeRange = [location[0] requestedNewAccountAgeRange];
  if (requestedNewAccountAgeRange == 1)
  {
LABEL_7:
    v30 = _AKLogSystem();
    v29 = 2;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v9 = v30;
      v10 = v29;
      sub_10001CEEC(v28);
      _os_log_debug_impl(&_mh_execute_header, v9, v10, "Starting Child Account creation flow...", v28, 2u);
    }

    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v34, AKURLBagKeyCreateChildAccount);
    goto LABEL_13;
  }

  if (requestedNewAccountAgeRange == 2)
  {
    v13 = +[AKFeatureManager sharedManager];
    isAgeBasedAccountSupportEnabled = [v13 isAgeBasedAccountSupportEnabled];
    _objc_release(v13);
    if (isAgeBasedAccountSupportEnabled)
    {
      v33 = _AKLogSystem();
      v32 = 2;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        log = v33;
        type = v32;
        sub_10001CEEC(v31);
        _os_log_debug_impl(&_mh_execute_header, log, type, "Starting Teen Account creation flow...", v31, 2u);
      }

      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v34, AKURLBagKeyCreateTeenAccount);
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  v27 = _AKLogSystem();
  v26 = 2;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v7 = v27;
    v8 = v26;
    sub_10001CEEC(v25);
    _os_log_debug_impl(&_mh_execute_header, v7, v8, "Starting Apple ID creation flow...", v25, 2u);
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v34, AKURLBagKeyCreateAppleID);
LABEL_13:
  [location[0] setNeedsNewAppleID:1];
  altDSID = [location[0] altDSID];
  v5 = [AKURLBag bagForAltDSID:?];
  v4 = v34;
  v17 = _NSConcreteStackBlock;
  v18 = -1073741824;
  v19 = 0;
  v20 = sub_1000BE890;
  v21 = &unk_100322348;
  v24 = _objc_retain(v35);
  v22 = _objc_retain(location[0]);
  v23 = _objc_retain(selfCopy);
  [v5 urlConfigurationForKey:v4 fromCache:0 completion:&v17];
  _objc_release(v5);
  _objc_release(altDSID);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
}

- (void)_changePasswordAndAuthenticateWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v22 = 0;
  objc_storeStrong(&v22, completion);
  v21 = 0;
  v19 = 0;
  v8 = [location[0] authKitAccount:&v19];
  objc_storeStrong(&v21, v19);
  v20 = v8;
  if (v21)
  {
    v18 = _AKLogSystem();
    v17 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v25, v21);
      _os_log_error_impl(&_mh_execute_header, v18, v17, "Failed to find matching account for context! Error: %@", v25, 0xCu);
    }

    objc_storeStrong(&v18, 0);
    (*(v22 + 2))(v22, 0, v21);
  }

  else
  {
    v6 = selfCopy;
    v4 = v20;
    v5 = location[0];
    v9 = _NSConcreteStackBlock;
    v10 = -1073741824;
    v11 = 0;
    v12 = sub_1000BF08C;
    v13 = &unk_10031EF20;
    v16 = _objc_retain(v22);
    v14 = _objc_retain(selfCopy);
    v15 = _objc_retain(location[0]);
    [(AKAppleIDAuthenticationService *)v6 _beginChangePasswordFlowWithAccount:v4 context:v5 completion:&v9];
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v16, 0);
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)_beginChangePasswordFlowWithAccount:(id)account context:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v33 = 0;
  objc_storeStrong(&v33, context);
  v32 = 0;
  objc_storeStrong(&v32, completion);
  v31 = _AKLogSystem();
  v30 = 2;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    log = v31;
    type = v30;
    sub_10001CEEC(v29);
    _os_log_debug_impl(&_mh_execute_header, log, type, "Starting password change flow...", v29, 2u);
  }

  objc_storeStrong(&v31, 0);
  if (location[0])
  {
    altDSID = [v33 altDSID];
    v6 = [AKURLBag bagForAltDSID:?];
    v5 = AKURLBagKeyChangePassword;
    v16 = _NSConcreteStackBlock;
    v17 = -1073741824;
    v18 = 0;
    v19 = sub_1000BF960;
    v20 = &unk_100322370;
    v24 = _objc_retain(v32);
    v21 = _objc_retain(selfCopy);
    v22 = _objc_retain(location[0]);
    v23 = _objc_retain(v33);
    [v6 urlConfigurationForKey:v5 fromCache:0 completion:&v16];
    _objc_release(v6);
    _objc_release(altDSID);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v24, 0);
    v25 = 0;
  }

  else
  {
    v28 = _AKLogSystem();
    v27 = 16;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v10 = v28;
      v11 = v27;
      sub_10001CEEC(v26);
      _os_log_error_impl(&_mh_execute_header, v10, v11, "Change password flow started without account!", v26, 2u);
    }

    objc_storeStrong(&v28, 0);
    v8 = v32;
    v9 = [NSError ak_errorWithCode:-7044];
    v8[2](v8, 0);
    _objc_release(v9);
    v25 = 1;
  }

  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
}

- (id)_authenticationParametersForUsername:(id)username altDSID:(id)d context:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, username);
  v12 = 0;
  objc_storeStrong(&v12, d);
  v11 = 0;
  objc_storeStrong(&v11, context);
  v5 = [AKSRPAuthenticationContextHelper alloc];
  v10 = [(AKSRPAuthenticationContextHelper *)v5 initWithContext:v11];
  [(AKSRPContextHelper *)v10 setUsername:location[0]];
  [(AKSRPContextHelper *)v10 setAltDSID:v12];
  [(AKSRPContextHelper *)v10 setIgnoreInternalTokens:1];
  [(AKSRPContextHelper *)v10 setClient:selfCopy->_client];
  v9 = _objc_retain(v10);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);

  return v9;
}

- (id)_requestingControllerWithServerResponse:(id)response
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v3 = [AKPiggybackRequestingController alloc];
  v6 = [(AKPiggybackRequestingController *)v3 initWithServerResponse:location[0] andDelegate:selfCopy];
  v5 = _objc_retain(v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (void)startPiggybackingForServerResponse:(id)response context:(id)context password:(id)password username:(id)username completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v24 = 0;
  objc_storeStrong(&v24, context);
  v23 = 0;
  objc_storeStrong(&v23, password);
  v22 = 0;
  objc_storeStrong(&v22, username);
  v21 = 0;
  objc_storeStrong(&v21, completion);
  v20 = [(AKAppleIDAuthenticationService *)selfCopy _requestingControllerWithServerResponse:location[0]];
  [v20 setInitiatingContext:v24];
  [v20 setInitiatingPassword:v23];
  delegate = [v20 delegate];
  _objc_release(delegate);
  if (!delegate)
  {
    [v20 setDelegate:selfCopy];
  }

  v8 = +[AKPiggybackController sharedController];
  v7 = v20;
  v14 = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_1000C04A0;
  v18 = &unk_100321258;
  v19 = _objc_retain(v21);
  [v8 startRequestSessionWithController:v7 completion:&v14];
  _objc_release(v8);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

- (void)performCircleRequestWithContext:(id)context completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v14 = 0;
  objc_storeStrong(&v14, completion);
  v7 = +[AKPiggybackController sharedController];
  v6 = location[0];
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1000C0724;
  v12 = &unk_1003223E8;
  v13 = _objc_retain(v14);
  v4 = [v7 performCircleRequestWithContext:v6 completion:?];
  _objc_release(v7);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)piggyback:(id)piggyback promptForRandomCodeWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, piggyback);
  v13 = 0;
  objc_storeStrong(&v13, completion);
  v12 = _AKLogSystem();
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    log = v12;
    type = v11;
    sub_10001CEEC(v10);
    _os_log_impl(&_mh_execute_header, log, type, "Prompting for piggybacking code", v10, 2u);
  }

  objc_storeStrong(&v12, 0);
  authUILiaison = selfCopy->_authUILiaison;
  initiatingContext = [location[0] initiatingContext];
  client = selfCopy->_client;
  [AKAuthenticationUILiaison presentSecondFactorUIForContext:"presentSecondFactorUIForContext:client:completion:" client:? completion:?];
  _objc_release(initiatingContext);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)piggyback:(id)piggyback validateSecurityCode:(id)code completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, piggyback);
  v17 = 0;
  objc_storeStrong(&v17, code);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  v8 = selfCopy;
  v7 = v17;
  idmsData = [location[0] idmsData];
  initialAuthResponse = [location[0] initialAuthResponse];
  initiatingContext = [location[0] initiatingContext];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000C0B28;
  v12[3] = &unk_100322410;
  v15 = _objc_retain(v16);
  v13 = _objc_retain(selfCopy);
  v14 = _objc_retain(location[0]);
  [(AKAppleIDAuthenticationService *)v8 _handleSecondFactorUICompletionWithCode:v7 error:0 idmsData:idmsData piggybacking:1 initialAuthResponse:initialAuthResponse context:initiatingContext completion:v12];
  _objc_release(initiatingContext);
  _objc_release(initialAuthResponse);
  _objc_release(idmsData);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)piggyback:(id)piggyback shouldContinueWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, piggyback);
  v19 = 0;
  objc_storeStrong(&v19, completion);
  v5 = selfCopy;
  initiatingContext = [location[0] initiatingContext];
  username = [initiatingContext username];
  initiatingPassword = [location[0] initiatingPassword];
  initialAuthResponse = [location[0] initialAuthResponse];
  initiatingContext2 = [location[0] initiatingContext];
  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_1000C108C;
  v15 = &unk_100322460;
  v16 = _objc_retain(selfCopy);
  v17 = _objc_retain(location[0]);
  v18 = _objc_retain(v19);
  [(AKAppleIDAuthenticationService *)v5 _shouldContinueAuthenticatingForUsername:username password:initiatingPassword serverResponse:initialAuthResponse didShowServerUI:0 continuationData:0 error:initiatingContext2 context:&v11 completion:?];
  _objc_release(initiatingContext2);
  _objc_release(initialAuthResponse);
  _objc_release(initiatingPassword);
  _objc_release(username);
  _objc_release(initiatingContext);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

- (void)piggyback:(id)piggyback handleEscapeHatchError:(id)error completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, piggyback);
  v21 = 0;
  objc_storeStrong(&v21, error);
  v20 = 0;
  objc_storeStrong(&v20, completion);
  v19 = _AKLogSystem();
  v18 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v24, v21);
    _os_log_impl(&_mh_execute_header, v19, v18, "Piggybacking session failed with error: %@", v24, 0xCu);
  }

  objc_storeStrong(&v19, 0);
  authUILiaison = selfCopy->_authUILiaison;
  initiatingContext = [location[0] initiatingContext];
  client = selfCopy->_client;
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_1000C1590;
  v14 = &unk_1003217F8;
  v15 = _objc_retain(location[0]);
  v16 = _objc_retain(selfCopy);
  v17 = _objc_retain(v20);
  [(AKAuthenticationUILiaison *)authUILiaison dismissSecondFactorUIForContext:initiatingContext client:client completion:&v10];
  _objc_release(initiatingContext);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

- (void)piggyback:(id)piggyback handleVerificationWithError:(id)error completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, piggyback);
  v11 = 0;
  objc_storeStrong(&v11, error);
  v10 = 0;
  objc_storeStrong(&v10, completion);
  v8 = selfCopy;
  v7 = v11;
  initiatingContext = [location[0] initiatingContext];
  [AKAppleIDAuthenticationService _showAlertForLoginCodeValidationError:v8 context:"_showAlertForLoginCodeValidationError:context:completion:" completion:v7];
  _objc_release(initiatingContext);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_updateAuthKitAccount:(id)account withServerResponse:(id)response context:(id)context error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v13 = 0;
  objc_storeStrong(&v13, response);
  v12 = 0;
  objc_storeStrong(&v12, context);
  v11[1] = error;
  v11[0] = objc_opt_new();
  v7 = [v11[0] updateAuthKitAccount:location[0] withServerResponse:v13 context:v12 error:error];
  objc_storeStrong(v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  return v7 & 1;
}

- (BOOL)_shouldSkipAccountUpdatesForAuthWithContext:(id)context
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v46 = 0;
  proxiedDeviceAnisetteData = [location[0] proxiedDeviceAnisetteData];
  if (+[AKAccountManager isAccountsFrameworkAvailable])
  {
    if ([location[0] isEphemeral] == 1)
    {
      v41 = _AKLogSystem();
      v40 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v41;
        type = v40;
        sub_10001CEEC(v39);
        _os_log_impl(&_mh_execute_header, v19, type, "This auth is ephemeral. Skip ACAccount update.", v39, 2u);
      }

      objc_storeStrong(&v41, 0);
      v46 = 1;
    }

    else
    {
      proxiedDevice = [location[0] proxiedDevice];
      v18 = 1;
      if (!proxiedDevice)
      {
        v18 = proxiedDeviceAnisetteData != 0;
      }

      _objc_release(proxiedDevice);
      if (v18)
      {
        v38 = _AKLogSystem();
        v37 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v38;
          v16 = v37;
          sub_10001CEEC(v36);
          _os_log_impl(&_mh_execute_header, v15, v16, "This is a proxy auth. Skip ACAccount update.", v36, 2u);
        }

        objc_storeStrong(&v38, 0);
        v46 = 1;
      }

      else
      {
        v34 = 0;
        v14 = 0;
        if ([location[0] needsNewAppleID])
        {
          if ([location[0] requestedNewAccountAgeRange] == 1 || (v14 = 0, objc_msgSend(location[0], "requestedNewAccountAgeRange") == 2))
          {
            protoAccountContext = [location[0] protoAccountContext];
            v34 = 1;
            v14 = protoAccountContext == 0;
          }
        }

        if (v34)
        {
          _objc_release(protoAccountContext);
        }

        if (v14)
        {
          v33 = _AKLogSystem();
          v32 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v12 = v33;
            v13 = v32;
            sub_10001CEEC(v31);
            _os_log_impl(&_mh_execute_header, v12, v13, "This is a child or teen account creation only (not proto account upgrade) flow. Skip ACAccount update.", v31, 2u);
          }

          objc_storeStrong(&v33, 0);
          v46 = 1;
        }

        else
        {
          appProvidedContext = [location[0] appProvidedContext];
          v29 = 0;
          v11 = 0;
          if ([appProvidedContext isEqualToString:AKAppleIDAuthenticationAppProvidedContextEasyStudentSignIn])
          {
            proxiedAppleID = [location[0] proxiedAppleID];
            v29 = 1;
            v11 = proxiedAppleID != 0;
          }

          if (v29)
          {
            _objc_release(proxiedAppleID);
          }

          _objc_release(appProvidedContext);
          if (v11)
          {
            v28 = _AKLogSystem();
            v27 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v8 = v28;
              v9 = v27;
              sub_10001CEEC(v26);
              _os_log_impl(&_mh_execute_header, v8, v9, "This auth is for a student. Skip ACAccount update.", v26, 2u);
            }

            objc_storeStrong(&v28, 0);
            v46 = 1;
          }

          else
          {
            dependentAltDSID = [location[0] dependentAltDSID];
            _objc_release(dependentAltDSID);
            if (dependentAltDSID)
            {
              v25 = _AKLogSystem();
              v24 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                v5 = v25;
                v6 = v24;
                sub_10001CEEC(v23);
                _os_log_impl(&_mh_execute_header, v5, v6, "This auth is for a dependent. Skip ACAccount update.", v23, 2u);
              }

              objc_storeStrong(&v25, 0);
              v46 = 1;
            }
          }
        }
      }
    }
  }

  else
  {
    v44 = _AKLogSystem();
    v43 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      log = v44;
      v22 = v43;
      sub_10001CEEC(v42);
      _os_log_impl(&_mh_execute_header, log, v22, "We are running in recovery. Skip ACAccount update.", v42, 2u);
    }

    objc_storeStrong(&v44, 0);
    v46 = 1;
  }

  v4 = v46;
  objc_storeStrong(&proxiedDeviceAnisetteData, 0);
  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (void)synchronizeFollowUpItemsForContext:(id)context completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v7 = 0;
  objc_storeStrong(&v7, completion);
  v6 = objc_alloc_init(AKAuthHandlerImpl);
  v5 = +[AKFollowUpManagerFactory sharedAuthKitFollowupManager];
  [v5 synchronizeFollowUpItemsForContext:location[0] authHandler:v6 completion:v7];
  _objc_release(v5);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)teardownFollowUpWithContext:(id)context completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v11 = 0;
  objc_storeStrong(&v11, completion);
  v10 = _AKLogSystem();
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    log = v10;
    type = v9;
    sub_10001CEEC(v8);
    _os_log_impl(&_mh_execute_header, log, type, "Starting to teardown follow ups", v8, 2u);
  }

  objc_storeStrong(&v10, 0);
  v4 = +[AKFollowUpManagerFactory sharedAuthKitFollowupManager];
  [v4 teardownFollowUpWithContext:location[0] completion:v11];
  _objc_release(v4);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)_fetchDeviceListWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v24 = 0;
  objc_storeStrong(&v24, completion);
  if ([location[0] type] != 3)
  {
    goto LABEL_9;
  }

  if ([(AKClient *)selfCopy->_client hasServerOnlyDeviceListAccess])
  {
    [location[0] setForceFetch:1];
LABEL_9:
    authTrafficController = selfCopy->_authTrafficController;
    v4 = location[0];
    client = selfCopy->_client;
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_1000C2D00;
    v16 = &unk_100320558;
    v17 = _objc_retain(location[0]);
    v18 = _objc_retain(selfCopy);
    v19 = _objc_retain(v24);
    [(AKAuthenticationTrafficController *)authTrafficController beginAuthenticatedRequestWithContext:v4 client:client clearanceHandler:&v12];
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
    v20 = 0;
    goto LABEL_10;
  }

  v23 = _AKLogSystem();
  v22 = 2;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    log = v23;
    type = v22;
    sub_10001CEEC(v21);
    _os_log_debug_impl(&_mh_execute_header, log, type, "Failed to fetch device list from server. Missing entitlement.", v21, 2u);
  }

  objc_storeStrong(&v23, 0);
  if (v24)
  {
    v7 = v24;
    v8 = [NSError ak_deviceListErrorWithCode:-14007];
    v7[2](v7, 0);
    _objc_release(v8);
  }

  v20 = 1;
LABEL_10:
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

- (void)deleteDeviceListCacheWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v27 = 0;
  objc_storeStrong(&v27, completion);
  v14 = +[AKFeatureManager sharedManager];
  isDeviceListCacheEnabled = [v14 isDeviceListCacheEnabled];
  _objc_release(v14);
  if (isDeviceListCacheEnabled)
  {
    v7 = [AKDeviceListRequester alloc];
    v10 = +[AKDeviceListStoreManager sharedManager];
    v9 = objc_opt_new();
    v8 = +[AKAccountManager sharedInstance];
    client = selfCopy->_client;
    v26 = [AKDeviceListRequester initWithStoreManager:v7 cdpFactory:"initWithStoreManager:cdpFactory:accountManager:client:" accountManager:v10 client:v9];
    _objc_release(v8);
    _objc_release(v9);
    _objc_release(v10);
    v12 = v26;
    v11 = location[0];
    v19 = _NSConcreteStackBlock;
    v20 = -1073741824;
    v21 = 0;
    v22 = sub_1000C3694;
    v23 = &unk_10031F838;
    v24 = _objc_retain(location[0]);
    v25 = _objc_retain(v27);
    [(AKDeviceListRequester *)v12 clearDeviceListCacheWithContext:v11 completionHandler:&v19];
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v26, 0);
  }

  else
  {
    v18 = _AKLogSystem();
    v17 = 2;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      log = v18;
      type = v17;
      sub_10001CEEC(v16);
      _os_log_debug_impl(&_mh_execute_header, log, type, "Delete device list cache is not supported.", v16, 2u);
    }

    objc_storeStrong(&v18, 0);
    if (v27)
    {
      (*(v27 + 2))(v27, 0, 0);
    }
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
}

- (void)deleteDeviceListCacheWithCompletion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v6 = +[AKFeatureManager sharedManager];
  isDeviceListCacheEnabled = [v6 isDeviceListCacheEnabled];
  _objc_release(v6);
  if (isDeviceListCacheEnabled)
  {
    v5 = +[AKDeviceListStoreManager sharedManager];
    v11 = _NSConcreteStackBlock;
    v12 = -1073741824;
    v13 = 0;
    v14 = sub_1000C3A3C;
    v15 = &unk_100321FF0;
    v16 = _objc_retain(location[0]);
    [(AKDeviceListStoreManager *)v5 clearDatabaseWithCompletionHandler:&v11];
    _objc_release(v5);
    objc_storeStrong(&v16, 0);
  }

  else
  {
    v10 = _AKLogSystem();
    v9 = 2;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      log = v10;
      type = v9;
      sub_10001CEEC(v8);
      _os_log_debug_impl(&_mh_execute_header, log, type, "Delete device list cache is not supported.", v8, 2u);
    }

    objc_storeStrong(&v10, 0);
    if (location[0])
    {
      (*(location[0] + 2))(location[0], 0, 0);
    }
  }

  objc_storeStrong(location, 0);
}

- (void)fetchTokensWithAltDSID:(id)d tokenIdentifiers:(id)identifiers completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v23 = 0;
  objc_storeStrong(&v23, identifiers);
  v22 = 0;
  objc_storeStrong(&v22, completion);
  v21 = objc_alloc_init(NSMutableDictionary);
  v20 = 0;
  memset(__b, 0, sizeof(__b));
  v14 = _objc_retain(v23);
  v15 = [v14 countByEnumeratingWithState:__b objects:v26 count:16];
  if (v15)
  {
    v9 = *__b[2];
    v10 = 0;
    v11 = v15;
    while (1)
    {
      v8 = v10;
      if (*__b[2] != v9)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(__b[1] + 8 * v10);
      tokenManager = selfCopy->_tokenManager;
      v16 = v20;
      v7 = [(AKTokenManager *)tokenManager tokenWithIdentifier:v19 altDSID:location[0] forAccount:0 error:&v16];
      objc_storeStrong(&v20, v16);
      v17 = v7;
      if (v7)
      {
        v6 = [v17 description];
        [v21 setObject:? forKeyedSubscript:?];
        _objc_release(v6);
      }

      objc_storeStrong(&v17, 0);
      ++v10;
      if (v8 + 1 >= v11)
      {
        v10 = 0;
        v11 = [v14 countByEnumeratingWithState:__b objects:v26 count:16];
        if (!v11)
        {
          break;
        }
      }
    }
  }

  _objc_release(v14);
  if (v22)
  {
    (*(v22 + 2))(v22, v21, v20);
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

- (void)deleteTokensFromCacheWithAltDSID:(id)d tokenIdentifiers:(id)identifiers completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v21 = 0;
  objc_storeStrong(&v21, identifiers);
  v20 = 0;
  objc_storeStrong(&v20, completion);
  v19 = 0;
  if (v21 && [v21 count])
  {
    memset(__b, 0, sizeof(__b));
    v11 = _objc_retain(v21);
    v12 = [v11 countByEnumeratingWithState:__b objects:v24 count:16];
    if (v12)
    {
      v8 = *__b[2];
      v9 = 0;
      v10 = v12;
      while (1)
      {
        v7 = v9;
        if (*__b[2] != v8)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(__b[1] + 8 * v9);
        tokenManager = selfCopy->_tokenManager;
        v16 = v19;
        [(AKTokenManager *)tokenManager updateToken:0 identifier:v18 altDSID:location[0] account:0 credential:0 error:&v16];
        objc_storeStrong(&v19, v16);
        ++v9;
        if (v7 + 1 >= v10)
        {
          v9 = 0;
          v10 = [v11 countByEnumeratingWithState:__b objects:v24 count:16];
          if (!v10)
          {
            break;
          }
        }
      }
    }

    _objc_release(v11);
  }

  else
  {
    v6 = selfCopy->_tokenManager;
    v15 = v19;
    [(AKTokenManager *)v6 deleteTokenFromCacheWithIdentifer:0 altDSID:location[0] error:&v15];
    objc_storeStrong(&v19, v15);
  }

  if (v20)
  {
    (*(v20 + 2))(v20, v19 == 0, v19);
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

- (void)refreshBAADeviceTokenWithCompletion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v10 = +[AKBAADeviceTokenController sharedTokenController];
  v3 = v10;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000C42D8;
  v8 = &unk_100321FF0;
  v9 = _objc_retain(location[0]);
  [(AKBAADeviceTokenController *)v3 refreshBAADeviceTokenWithCompletionHandler:?];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchBAADeviceTokenWithCompletion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v10 = +[AKBAADeviceTokenController sharedTokenController];
  v3 = v10;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000C4474;
  v8 = &unk_1003224D8;
  v9 = _objc_retain(location[0]);
  [(AKBAADeviceTokenController *)v3 fetchBAADeviceTokenWithCompletionHandler:?];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchBirthdayForAltDSID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v32 = 0;
  objc_storeStrong(&v32, completion);
  if ([(AKClient *)selfCopy->_client hasBirthdayAccess])
  {
    v27 = 0;
    v14 = +[AKAccountManager sharedInstance];
    v25 = v27;
    v13 = [(AKAccountManager *)v14 authKitAccountWithAltDSID:location[0] error:&v25];
    objc_storeStrong(&v27, v25);
    v26 = v13;
    _objc_release(v14);
    if (v26)
    {
      v24 = objc_alloc_init(AKBirthDayKeychain);
      v23 = 0;
      v21 = 0;
      v12 = [v24 fetchBirthDayForAltDSID:location[0] error:&v21];
      objc_storeStrong(&v23, v21);
      v22 = v12;
      if (v23)
      {
        if (v32)
        {
          (*(v32 + 2))(v32, 0, 0, v23);
        }
      }

      else if (v22)
      {
        v9 = +[NSCalendar currentCalendar];
        v20 = [(NSCalendar *)v9 components:28 fromDate:v22];
        _objc_release(v9);
        if (v32)
        {
          v6 = v32;
          v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v20 day]);
          v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v20 month]);
          v6[2](v6, v8);
          _objc_release(v7);
          _objc_release(v8);
        }

        objc_storeStrong(&v20, 0);
      }

      else if (v32)
      {
        v10 = v32;
        v11 = [NSError errorWithDomain:AKPersonalInformationErrorDomain code:-18003 userInfo:?];
        v10[2](v10, 0);
        _objc_release(v11);
      }

      objc_storeStrong(&v22, 0);
      objc_storeStrong(&v23, 0);
      objc_storeStrong(&v24, 0);
    }

    else if (v27)
    {
      if (v32)
      {
        (*(v32 + 2))(v32, 0, 0, v27);
      }
    }

    else if (v32)
    {
      v4 = v32;
      v5 = [NSError errorWithDomain:AKPersonalInformationErrorDomain code:-18001 userInfo:?];
      v4[2](v4, 0);
      _objc_release(v5);
    }

    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v27, 0);
    v28 = 0;
  }

  else
  {
    v31 = _AKLogSystem();
    v30 = 16;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v17 = v31;
      v18 = v30;
      sub_10001CEEC(v29);
      _os_log_error_impl(&_mh_execute_header, v17, v18, "Internal access and birthday entitlement required but missing!", v29, 2u);
    }

    objc_storeStrong(&v31, 0);
    if (v32)
    {
      v15 = v32;
      v16 = [NSError errorWithDomain:AKPersonalInformationErrorDomain code:-18002 userInfo:?];
      v15[2](v15, 0);
      _objc_release(v16);
    }

    v28 = 1;
  }

  objc_storeStrong(&v32, 0);
  objc_storeStrong(location, 0);
}

- (void)checkSignInOrCreateFlowShieldingWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  if ([(AKClient *)selfCopy->_client hasInternalPrivateAccess])
  {
    v3 = +[AKAccountManager sharedInstance];
    shieldSignInOrCreateFlows = [(AKAccountManager *)v3 shieldSignInOrCreateFlows];
    _objc_release(v3);
    if (shieldSignInOrCreateFlows)
    {
      (*(location[0] + 2))(location[0], 1);
    }

    else
    {
      (*(location[0] + 2))(location[0], 0);
    }
  }

  else
  {
    v9 = _AKLogSystem();
    v8 = 16;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      log = v9;
      type = v8;
      sub_10001CEEC(v7);
      _os_log_error_impl(&_mh_execute_header, log, type, "Client is missing entitlement to check shielding.", v7, 2u);
    }

    objc_storeStrong(&v9, 0);
    (*(location[0] + 2))(location[0], 0);
  }

  objc_storeStrong(location, 0);
}

@end