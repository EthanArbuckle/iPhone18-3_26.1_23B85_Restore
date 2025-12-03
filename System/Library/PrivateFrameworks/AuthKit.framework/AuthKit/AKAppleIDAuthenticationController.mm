@interface AKAppleIDAuthenticationController
+ (NSSet)sensitiveAuthenticationKeys;
+ (NSSet)sensitiveTokenKeys;
+ (NSSet)tokenDictionaryKeys;
- (AKAppleIDAuthenticationController)init;
- (AKAppleIDAuthenticationController)initWithConnectionConfiguration:(id)configuration;
- (AKAppleIDAuthenticationController)initWithIdentifier:(id)identifier;
- (AKAppleIDAuthenticationController)initWithIdentifier:(id)identifier connectionConfiguration:(id)configuration;
- (BOOL)deleteAuthorizationDatabaseWithAltDSID:(id)d error:(id *)error;
- (BOOL)isDevicePasscodeProtected:(id *)protected;
- (BOOL)revokeAuthorizationForApplicationWithClientID:(id)d error:(id *)error;
- (BOOL)shieldSignInOrCreateFlowsWithError:(id *)error;
- (BOOL)synchronizeFollowUpItemsForContext:(id)context error:(id *)error;
- (id)_serverFriendlyUsername:(id)username;
- (id)_urlBagFromCache:(BOOL)cache altDSID:(id)d withError:(id *)error;
- (id)accountNamesForAltDSID:(id)d;
- (id)activeLoginCode:(id *)code;
- (id)deviceListWithContext:(id)context error:(id *)error;
- (id)fetchAuthorizedAppListWithContext:(id)context error:(id *)error;
- (void)_authenticateWithContext:(id)context completion:(id)completion;
- (void)_deviceListWithContext:(id)context completion:(id)completion;
- (void)_updateUserInformationWithContext:(id)context userInformation:(id)information isServerOperation:(BOOL)operation completion:(id)completion;
- (void)authenticateWithContext:(id)context completion:(id)completion;
- (void)checkSecurityUpgradeEligibilityForContext:(id)context completion:(id)completion;
- (void)clearSessionCacheWithCompletion:(id)completion;
- (void)configurationInfoWithIdentifiers:(id)identifiers forAltDSID:(id)d completion:(id)completion;
- (void)dealloc;
- (void)deleteDeviceListCacheWithCompletion:(id)completion;
- (void)deleteDeviceListCacheWithContext:(id)context completion:(id)completion;
- (void)deleteTokensFromCacheWithAltDSID:(id)d tokenIdentifiers:(id)identifiers completion:(id)completion;
- (void)deviceListWithContext:(id)context completion:(id)completion;
- (void)endProximityAuthenticationForContext:(id)context completion:(id)completion;
- (void)fetchAuthModeWithContext:(id)context completion:(id)completion;
- (void)fetchBAADeviceTokenWithCompletion:(id)completion;
- (void)fetchBirthdayForAltDSID:(id)d completion:(id)completion;
- (void)fetchDeviceListWithContext:(id)context completion:(id)completion;
- (void)fetchGlobalConfigurationUsingPolicy:(unint64_t)policy completion:(id)completion;
- (void)fetchTokensWithAltDSID:(id)d tokenIdentifiers:(id)identifiers completion:(id)completion;
- (void)fetchURLBagForAltDSID:(id)d completion:(id)completion;
- (void)fetchUserInformationForAltDSID:(id)d completion:(id)completion;
- (void)forceURLBagUpdateForAltDSID:(id)d urlSwitchData:(id)data completion:(id)completion;
- (void)generateLoginCodeWithCompletion:(id)completion;
- (void)getServerUILoadDelegateForAltDSID:(id)d completion:(id)completion;
- (void)getServerUILoadDelegateWithContext:(id)context completion:(id)completion;
- (void)getUserInformationForAltDSID:(id)d completion:(id)completion;
- (void)getUserInformationWithContext:(id)context completion:(id)completion;
- (void)isCreateAppleIDAllowedWithCompletion:(id)completion;
- (void)performCheckInForAccountWithAltDSID:(id)d completion:(id)completion;
- (void)performCheckInForAccountWithAltDSID:(id)d event:(id)event completion:(id)completion;
- (void)performCheckInForAccountWithAltDSID:(id)d event:(id)event reason:(unint64_t)reason completion:(id)completion;
- (void)performCircleRequestWithContext:(id)context completion:(id)completion;
- (void)performPasswordResetWithContext:(id)context completion:(id)completion;
- (void)performSilentTTRFor:(unint64_t)for completion:(id)completion;
- (void)persistMasterKeyVerifier:(id)verifier context:(id)context completion:(id)completion;
- (void)persistRecoveryKeyWithContext:(id)context authContext:(id)authContext completion:(id)completion;
- (void)refreshBAADeviceTokenWithCompletion:(id)completion;
- (void)renewRecoveryTokenWithContext:(id)context completion:(id)completion;
- (void)reportSignOutForAllAppleIDsWithCompletion:(id)completion;
- (void)reportSignOutForAppleID:(id)d service:(int64_t)service completion:(id)completion;
- (void)setAppleIDWithAltDSID:(id)d inUse:(BOOL)use forService:(int64_t)service;
- (void)setAppleIDWithDSID:(id)d inUse:(BOOL)use forService:(int64_t)service;
- (void)setConfigurationInfo:(id)info forIdentifier:(id)identifier forAltDSID:(id)d completion:(id)completion;
- (void)setDelegate:(id)delegate;
- (void)synchronizeFollowUpItemsForContext:(id)context completion:(id)completion;
- (void)teardownFollowUpWithContext:(id)context completion:(id)completion;
- (void)updateStateWithExternalAuthenticationResponse:(id)response forAppleID:(id)d completion:(id)completion;
- (void)updateStateWithExternalAuthenticationResponse:(id)response forContext:(id)context completion:(id)completion;
- (void)updateUserInformationForAltDSID:(id)d userInformation:(id)information completion:(id)completion;
- (void)updateUserInformationWithContext:(id)context userInformation:(id)information completion:(id)completion;
- (void)validateLoginCode:(unint64_t)code forAppleID:(id)d completion:(id)completion;
- (void)validateVettingToken:(id)token forAltDSID:(id)d completion:(id)completion;
- (void)verifyMasterKey:(id)key context:(id)context completion:(id)completion;
- (void)warmUpVerificationSessionWithCompletion:(id)completion;
@end

@implementation AKAppleIDAuthenticationController

- (AKAppleIDAuthenticationController)init
{
  v4 = 0;
  v4 = [(AKAppleIDAuthenticationController *)self initWithIdentifier:?];
  v3 = MEMORY[0x1E69E5928](v4);
  objc_storeStrong(&v4, 0);
  return v3;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  oslog[1] = a2;
  oslog[0] = _AKLogSystem();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v7, selfCopy);
    _os_log_debug_impl(&dword_193225000, oslog[0], type, "%@ deallocated", v7, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  if (selfCopy->_deallocHandler)
  {
    (*(selfCopy->_deallocHandler + 2))();
    deallocHandler = selfCopy->_deallocHandler;
    selfCopy->_deallocHandler = 0;
    MEMORY[0x1E69E5920](deallocHandler);
  }

  v3.receiver = selfCopy;
  v3.super_class = AKAppleIDAuthenticationController;
  [(AKAppleIDAuthenticationController *)&v3 dealloc];
  *MEMORY[0x1E69E9840];
}

+ (NSSet)sensitiveAuthenticationKeys
{
  v5 = &sensitiveAuthenticationKeys_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_4);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sensitiveAuthenticationKeys_sensitiveAuthenticationKeys;

  return v2;
}

uint64_t __64__AKAppleIDAuthenticationController_sensitiveAuthenticationKeys__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{@"AKPassword", @"AKRawPassword", 0, a1, a1}];
  v2 = sensitiveAuthenticationKeys_sensitiveAuthenticationKeys;
  sensitiveAuthenticationKeys_sensitiveAuthenticationKeys = v1;
  return MEMORY[0x1E69E5920](v2);
}

+ (NSSet)sensitiveTokenKeys
{
  v5 = &sensitiveTokenKeys_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_228);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sensitiveTokenKeys_sensitiveTokenKeys;

  return v2;
}

uint64_t __55__AKAppleIDAuthenticationController_sensitiveTokenKeys__block_invoke(uint64_t a1)
{
  v5 = a1;
  v4 = a1;
  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{@"AKPasswordResetTokenKey", @"AKShortLivedToken", @"AKIdentityToken", @"AKCustodianSetupToken", @"AKInheritanceBeneficiarySetupToken", @"GsIdmsToken", @"token", 0}];
  v2 = sensitiveTokenKeys_sensitiveTokenKeys;
  sensitiveTokenKeys_sensitiveTokenKeys = v1;
  return MEMORY[0x1E69E5920](v2);
}

+ (NSSet)tokenDictionaryKeys
{
  v5 = &tokenDictionaryKeys_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_230);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = tokenDictionaryKeys_tokenDictionaryKeys;

  return v2;
}

uint64_t __56__AKAppleIDAuthenticationController_tokenDictionaryKeys__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{@"AKIDMSToken", @"t", 0, a1, a1}];
  v2 = tokenDictionaryKeys_tokenDictionaryKeys;
  tokenDictionaryKeys_tokenDictionaryKeys = v1;
  return MEMORY[0x1E69E5920](v2);
}

- (AKAppleIDAuthenticationController)initWithIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v6 = objc_alloc_init(AKXPCConnectionConfiguration);
  [(AKXPCConnectionConfiguration *)v6 setMachServiceName:@"com.apple.ak.auth.xpc"];
  v3 = selfCopy;
  selfCopy = 0;
  selfCopy = [(AKAppleIDAuthenticationController *)v3 initWithIdentifier:location[0] connectionConfiguration:v6];
  v5 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (AKAppleIDAuthenticationController)initWithConnectionConfiguration:(id)configuration
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  v3 = selfCopy;
  selfCopy = 0;
  selfCopy = [(AKAppleIDAuthenticationController *)v3 initWithIdentifier:0 connectionConfiguration:location[0]];
  v5 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (AKAppleIDAuthenticationController)initWithIdentifier:(id)identifier connectionConfiguration:(id)configuration
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v25 = 0;
  objc_storeStrong(&v25, configuration);
  v4 = selfCopy;
  selfCopy = 0;
  v24.receiver = v4;
  v24.super_class = AKAppleIDAuthenticationController;
  v23 = [(AKAppleIDAuthenticationController *)&v24 init];
  selfCopy = v23;
  objc_storeStrong(&selfCopy, v23);
  if (v23)
  {
    v5 = [AKAppleIDAuthenticationContextManager alloc];
    v6 = [(AKAppleIDAuthenticationContextManager *)v5 initWithAuthenticationController:selfCopy];
    contextManager = selfCopy->_contextManager;
    selfCopy->_contextManager = v6;
    MEMORY[0x1E69E5920](contextManager);
    v8 = [location[0] copy];
    serviceID = selfCopy->_serviceID;
    selfCopy->_serviceID = v8;
    MEMORY[0x1E69E5920](serviceID);
    remoteObjectInterface = [v25 remoteObjectInterface];
    MEMORY[0x1E69E5920](remoteObjectInterface);
    if (!remoteObjectInterface)
    {
      v19 = v25;
      v20 = +[AKAppleIDAuthenticationDaemonInterface XPCInterface];
      [v19 setRemoteObjectInterface:?];
      MEMORY[0x1E69E5920](v20);
    }

    exportedInterface = [v25 exportedInterface];
    MEMORY[0x1E69E5920](exportedInterface);
    if (!exportedInterface)
    {
      v16 = v25;
      v17 = +[AKAppleIDAuthenticationClientInterface XPCInterface];
      [v16 setExportedInterface:?];
      MEMORY[0x1E69E5920](v17);
    }

    exportedObject = [v25 exportedObject];
    MEMORY[0x1E69E5920](exportedObject);
    if (!exportedObject)
    {
      [v25 setExportedObject:selfCopy->_contextManager];
    }

    v10 = [AKClientConnectionLifecycleManager alloc];
    v11 = [(AKClientConnectionLifecycleManager *)v10 initWithConfiguration:v25];
    connectionManager = selfCopy->_connectionManager;
    selfCopy->_connectionManager = v11;
    MEMORY[0x1E69E5920](connectionManager);
  }

  v14 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v14;
}

- (void)setDelegate:(id)delegate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  [(AKAppleIDAuthenticationContextManager *)selfCopy->_contextManager setDelegate:location[0]];
  objc_storeStrong(location, 0);
}

- (void)authenticateWithContext:(id)context completion:(id)completion
{
  v81 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v75 = 0;
  objc_storeStrong(&v75, completion);
  if (!location[0])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"-[AKAppleIDAuthenticationController authenticateWithContext:completion:] requires a non-nil value for the context parameter."];
  }

  v73 = _os_activity_create(&dword_193225000, "authkit/authenticate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v74 = v73;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v73, &state);
  v71 = 0uLL;
  v27 = _AKSignpostLogSystem();
  *&v28 = _AKSignpostCreate(v27);
  *(&v28 + 1) = v4;
  v70 = v28;
  MEMORY[0x1E69E5920](v27);
  v69 = _AKSignpostLogSystem();
  v68 = OS_SIGNPOST_INTERVAL_BEGIN;
  v67 = v28;
  if (v28 && v67 != -1 && os_signpost_enabled(v69))
  {
    authenticationType = [location[0] authenticationType];
    _proxiedAppBundleID = [location[0] _proxiedAppBundleID];
    __os_log_helper_16_2_2_4_2_8_66(v80, authenticationType, _proxiedAppBundleID);
    _os_signpost_emit_with_name_impl(&dword_193225000, v69, v68, v67, "AuthenticateWithContext", " AuthenticationType=%{public,signpost.telemetry:number1,name=AuthenticationType}d  ProxiedBundleID=%{public,signpost.telemetry:string1,name=ProxiedBundleID}@  enableTelemetry=YES ", v80, 0x12u);
    MEMORY[0x1E69E5920](_proxiedAppBundleID);
  }

  objc_storeStrong(&v69, 0);
  v66 = _AKSignpostLogSystem();
  v65 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
  {
    v24 = v70;
    authenticationType2 = [location[0] authenticationType];
    _proxiedAppBundleID2 = [location[0] _proxiedAppBundleID];
    __os_log_helper_16_2_3_8_0_4_2_8_66(v79, v24, authenticationType2, _proxiedAppBundleID2);
    _os_log_impl(&dword_193225000, v66, v65, "BEGIN [%lld]: AuthenticateWithContext  AuthenticationType=%{public,signpost.telemetry:number1,name=AuthenticationType}d  ProxiedBundleID=%{public,signpost.telemetry:string1,name=ProxiedBundleID}@  enableTelemetry=YES ", v79, 0x1Cu);
    MEMORY[0x1E69E5920](_proxiedAppBundleID2);
  }

  objc_storeStrong(&v66, 0);
  v71 = v70;
  v64 = 0;
  v63 = 0;
  v20 = +[AKFeatureManager sharedManager];
  isAuthenticationTelemetryEnabled = [v20 isAuthenticationTelemetryEnabled];
  MEMORY[0x1E69E5920](v20);
  if (isAuthenticationTelemetryEnabled)
  {
    v5 = [location[0] authKitAccount:0];
    v6 = v63;
    v63 = v5;
    MEMORY[0x1E69E5920](v6);
    [AKAnalyticsSender sendAnalyticsEvent:@"com.apple.authkit.authenticationStart" context:location[0] account:v63 error:0];
    v7 = [MEMORY[0x1E6985DB0] ak_analyticsEventWithEventName:@"com.apple.authkit.authentication" account:v63 error:0];
    v8 = v64;
    v64 = v7;
    MEMORY[0x1E69E5920](v8);
  }

  v62 = [(AKAppleIDAuthenticationContextManager *)selfCopy->_contextManager registerContext:location[0]];
  if (v62 && v75)
  {
    if (v64)
    {
      [v64 ak_updateWithAuthenticationResults:0 authContext:location[0] error:v62];
      v19 = +[AKAnalyticsReporterRTC rtcAnalyticsReporter];
      [v19 sendEvent:v64];
      MEMORY[0x1E69E5920](v19);
    }

    if (v75)
    {
      (*(v75 + 2))(v75, 0, v62);
    }

    v61 = 1;
  }

  else
  {
    v50 = MEMORY[0x1E69E9820];
    v51 = -1073741824;
    v52 = 0;
    v53 = __72__AKAppleIDAuthenticationController_authenticateWithContext_completion___block_invoke;
    v54 = &unk_1E73D39D8;
    v55 = MEMORY[0x1E69E5928](selfCopy);
    v56 = MEMORY[0x1E69E5928](location[0]);
    v57 = MEMORY[0x1E69E5928](v64);
    v59 = v71;
    v58 = MEMORY[0x1E69E5928](v75);
    v60 = MEMORY[0x193B165F0](&v50);
    if (selfCopy->_serviceID)
    {
      [location[0] setServiceIdentifier:selfCopy->_serviceID];
    }

    delegate = [(AKAppleIDAuthenticationController *)selfCopy delegate];
    if ((objc_opt_respondsToSelector() & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0)
    {
      [location[0] set_ignoreShouldContinueProxy:1];
    }

    v18 = selfCopy;
    username = [location[0] username];
    v16 = [(AKAppleIDAuthenticationController *)v18 _serverFriendlyUsername:?];
    [location[0] setUsername:?];
    MEMORY[0x1E69E5920](v16);
    MEMORY[0x1E69E5920](username);
    oslog = _AKLogSystem();
    v47 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [location[0] debugDescription];
      v46 = MEMORY[0x1E69E5928](v15);
      __os_log_helper_16_2_1_8_64(v78, v46);
      _os_log_impl(&dword_193225000, oslog, v47, "Request with %@", v78, 0xCu);
      MEMORY[0x1E69E5920](v15);
      objc_storeStrong(&v46, 0);
    }

    objc_storeStrong(&oslog, 0);
    _sanitizedCopy = [location[0] _sanitizedCopy];
    if ([_sanitizedCopy isContextEligibleForSilentAuth])
    {
      if ([location[0] _capabilityForUIDisplay] == 1)
      {
        v44 = _AKLogSystem();
        v43 = OS_LOG_TYPE_FAULT;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
        {
          v13 = v44;
          v14 = v43;
          __os_log_helper_16_0_0(v42);
          _os_log_fault_impl(&dword_193225000, v13, v14, "Interactive authentication requested by background daemon, client error, AKAppleIDAuthenticationTypeSilentPreferred should be used", v42, 2u);
        }

        objc_storeStrong(&v44, 0);
      }

      else
      {
        v41 = _AKLogSystem();
        v40 = OS_LOG_TYPE_FAULT;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
        {
          v11 = v41;
          v12 = v40;
          __os_log_helper_16_0_0(v39);
          _os_log_fault_impl(&dword_193225000, v11, v12, "Interactive authentication requested by UI context, please investigate why silent auth could not be used", v39, 2u);
        }

        objc_storeStrong(&v41, 0);
      }
    }

    v10 = selfCopy;
    v9 = _sanitizedCopy;
    v30 = MEMORY[0x1E69E9820];
    v31 = -1073741824;
    v32 = 0;
    v33 = __72__AKAppleIDAuthenticationController_authenticateWithContext_completion___block_invoke_256;
    v34 = &unk_1E73D3A00;
    v35 = MEMORY[0x1E69E5928](location[0]);
    v36 = MEMORY[0x1E69E5928](selfCopy);
    v37 = MEMORY[0x1E69E5928](_sanitizedCopy);
    v38 = MEMORY[0x1E69E5928](v60);
    [(AKAppleIDAuthenticationController *)v10 _authenticateWithContext:v9 completion:&v30];
    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v37, 0);
    objc_storeStrong(&v36, 0);
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&_sanitizedCopy, 0);
    objc_storeStrong(&delegate, 0);
    objc_storeStrong(&v60, 0);
    objc_storeStrong(&v58, 0);
    objc_storeStrong(&v57, 0);
    objc_storeStrong(&v56, 0);
    objc_storeStrong(&v55, 0);
    v61 = 0;
  }

  objc_storeStrong(&v62, 0);
  objc_storeStrong(&v63, 0);
  objc_storeStrong(&v64, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v74, 0);
  objc_storeStrong(&v75, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __72__AKAppleIDAuthenticationController_authenticateWithContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v23 = 0;
  objc_storeStrong(&v23, a3);
  v22[1] = a1;
  [*(*(a1 + 32) + 16) unregisterContext:*(a1 + 40)];
  if (*(a1 + 48))
  {
    [*(a1 + 48) ak_updateWithAuthenticationResults:location[0] authContext:*(a1 + 40) error:v23];
    v10 = +[AKAnalyticsReporterRTC rtcAnalyticsReporter];
    [v10 sendEvent:*(a1 + 48)];
    MEMORY[0x1E69E5920](v10);
  }

  v20 = 0;
  if (location[0])
  {
    v21 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    v20 = 1;
    v3 = MEMORY[0x1E69E5928](v21);
  }

  else
  {
    v3 = MEMORY[0x1E69E5928](0);
  }

  v22[0] = v3;
  if (v20)
  {
    MEMORY[0x1E69E5920](v21);
  }

  v19 = _AKSignpostGetNanoseconds(*(a1 + 64), *(a1 + 72)) / 1000000000.0;
  v18 = _AKSignpostLogSystem();
  v17 = OS_SIGNPOST_INTERVAL_END;
  v16 = *(a1 + 64);
  if (v16 && v16 != -1 && os_signpost_enabled(v18))
  {
    __os_log_helper_16_0_1_4_2(v26, [v23 code]);
    _os_signpost_emit_with_name_impl(&dword_193225000, v18, v17, v16, "AuthenticateWithContext", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v26, 8u);
  }

  objc_storeStrong(&v18, 0);
  v15 = _AKSignpostLogSystem();
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_3_8_0_8_0_4_2(v25, *(a1 + 64), *&v19, [v23 code]);
    _os_log_impl(&dword_193225000, v15, v14, "END [%lld] %fs:AuthenticateWithContext  Error=%{public,signpost.telemetry:number2,name=Error}d ", v25, 0x1Cu);
  }

  objc_storeStrong(&v15, 0);
  v7 = v22[0];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
  [v7 setObject:? forKeyedSubscript:?];
  v9 = MEMORY[0x1E69E5928](v8);
  MEMORY[0x1E69E5920](v8);
  v13[1] = v9;
  MEMORY[0x1E69E5920](v9);
  if (v22[0])
  {
    v13[0] = [location[0] mutableCopy];
    v6 = [v22[0] copy];
    [v13[0] setObject:? forKeyedSubscript:?];
    MEMORY[0x1E69E5920](v6);
    v4 = [v13[0] copy];
    v5 = location[0];
    location[0] = v4;
    MEMORY[0x1E69E5920](v5);
    objc_storeStrong(v13, 0);
  }

  if (*(a1 + 56))
  {
    (*(*(a1 + 56) + 16))();
  }

  objc_storeStrong(v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __72__AKAppleIDAuthenticationController_authenticateWithContext_completion___block_invoke_256(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  v9[1] = a1;
  if ([*(a1 + 32) authenticationType] == 1 && (objc_msgSend(v10, "ak_isXPCServiceError") & 1) != 0)
  {
    v9[0] = _AKLogSystem();
    v8 = 2;
    if (os_log_type_enabled(v9[0], OS_LOG_TYPE_DEBUG))
    {
      log = v9[0];
      type = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_debug_impl(&dword_193225000, log, type, "Silent Authentication failed with XPC error... retrying once!", v7, 2u);
    }

    objc_storeStrong(v9, 0);
    [*(*(a1 + 40) + 24) teardownServiceConnection];
    [*(a1 + 40) _authenticateWithContext:*(a1 + 48) completion:*(a1 + 56)];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)_authenticateWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v20 = 0;
  objc_storeStrong(&v20, completion);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v13[1] = MEMORY[0x1E69E9820];
  v14 = -1073741824;
  v15 = 0;
  v16 = __73__AKAppleIDAuthenticationController__authenticateWithContext_completion___block_invoke;
  v17 = &unk_1E73D3510;
  v18 = MEMORY[0x1E69E5928](v20);
  v19 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:?];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  v7 = v19;
  v6 = location[0];
  v8 = MEMORY[0x1E69E9820];
  v9 = -1073741824;
  v10 = 0;
  v11 = __73__AKAppleIDAuthenticationController__authenticateWithContext_completion___block_invoke_258;
  v12 = &unk_1E73D3538;
  v13[0] = MEMORY[0x1E69E5928](v20);
  [v7 authenticateWithContext:v6 completion:?];
  objc_storeStrong(v13, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

void __73__AKAppleIDAuthenticationController__authenticateWithContext_completion___block_invoke(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKTriageLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_66(v5, location[0]);
    _os_log_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEFAULT, "Remote authentication service returned an error: %{public}@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  if (a1[4].isa)
  {
    (*(a1[4].isa + 2))();
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __73__AKAppleIDAuthenticationController__authenticateWithContext_completion___block_invoke_258(void *a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13 = 0;
  objc_storeStrong(&v13, a3);
  v12[1] = a1;
  if (v13)
  {
    v12[0] = _AKTriageLogSystem();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v12[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_66(v16, v13);
      _os_log_impl(&dword_193225000, v12[0], v11, "Remote authentication service returned an error: %{public}@", v16, 0xCu);
    }

    objc_storeStrong(v12, 0);
  }

  else
  {
    v10 = _AKLogSystem();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v10;
      v4 = v9;
      v5 = [location[0] ak_redactedCopy];
      v8 = MEMORY[0x1E69E5928](v5);
      __os_log_helper_16_2_1_8_64(v15, v8);
      _os_log_impl(&dword_193225000, v3, v4, "Remote authentication service came back with: %@", v15, 0xCu);
      MEMORY[0x1E69E5920](v5);
      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(&v10, 0);
  }

  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)endProximityAuthenticationForContext:(id)context completion:(id)completion
{
  v51 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v46 = 0;
  objc_storeStrong(&v46, completion);
  if (!location[0])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"-[AKAppleIDAuthenticationController endProximityAuthenticationForContext:completion:] requires a non-nil value for the context parameter."];
  }

  v45 = 0uLL;
  v13 = _AKSignpostLogSystem();
  *&v44 = _AKSignpostCreate(v13);
  *(&v44 + 1) = v4;
  MEMORY[0x1E69E5920](v13);
  v43 = _AKSignpostLogSystem();
  v42 = OS_SIGNPOST_INTERVAL_BEGIN;
  v41 = v44;
  if (v44 && v41 != -1 && os_signpost_enabled(v43))
  {
    authenticationType = [location[0] authenticationType];
    _proxiedAppBundleID = [location[0] _proxiedAppBundleID];
    __os_log_helper_16_2_2_4_2_8_66(v50, authenticationType, _proxiedAppBundleID);
    _os_signpost_emit_with_name_impl(&dword_193225000, v43, v42, v41, "EndProximityAuth", " AuthenticationType=%{public,signpost.telemetry:number1,name=AuthenticationType}d  ProxiedBundleID=%{public,signpost.telemetry:string1,name=ProxiedBundleID}@  enableTelemetry=YES ", v50, 0x12u);
    MEMORY[0x1E69E5920](_proxiedAppBundleID);
  }

  objc_storeStrong(&v43, 0);
  v40 = _AKSignpostLogSystem();
  v39 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v44;
    authenticationType2 = [location[0] authenticationType];
    _proxiedAppBundleID2 = [location[0] _proxiedAppBundleID];
    __os_log_helper_16_2_3_8_0_4_2_8_66(v49, v8, authenticationType2, _proxiedAppBundleID2);
    _os_log_impl(&dword_193225000, v40, v39, "BEGIN [%lld]: EndProximityAuth  AuthenticationType=%{public,signpost.telemetry:number1,name=AuthenticationType}d  ProxiedBundleID=%{public,signpost.telemetry:string1,name=ProxiedBundleID}@  enableTelemetry=YES ", v49, 0x1Cu);
    MEMORY[0x1E69E5920](_proxiedAppBundleID2);
  }

  objc_storeStrong(&v40, 0);
  v45 = v44;
  v29 = MEMORY[0x1E69E9820];
  v30 = -1073741824;
  v31 = 0;
  v32 = __85__AKAppleIDAuthenticationController_endProximityAuthenticationForContext_completion___block_invoke;
  v33 = &unk_1E73D3A28;
  v34 = MEMORY[0x1E69E5928](selfCopy);
  v35 = MEMORY[0x1E69E5928](location[0]);
  v37 = v45;
  v36 = MEMORY[0x1E69E5928](v46);
  v38 = MEMORY[0x193B165F0](&v29);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v22 = MEMORY[0x1E69E9820];
  v23 = -1073741824;
  v24 = 0;
  v25 = __85__AKAppleIDAuthenticationController_endProximityAuthenticationForContext_completion___block_invoke_262;
  v26 = &unk_1E73D3510;
  v27 = MEMORY[0x1E69E5928](v38);
  v28 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:&v22];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  _sanitizedCopy = [location[0] _sanitizedCopy];
  v7 = v28;
  v6 = _sanitizedCopy;
  v15 = MEMORY[0x1E69E9820];
  v16 = -1073741824;
  v17 = 0;
  v18 = __85__AKAppleIDAuthenticationController_endProximityAuthenticationForContext_completion___block_invoke_263;
  v19 = &unk_1E73D3538;
  v20 = MEMORY[0x1E69E5928](v38);
  [v7 endProximityAuthenticationForContext:v6 completion:&v15];
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&_sanitizedCopy, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __85__AKAppleIDAuthenticationController_endProximityAuthenticationForContext_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  v10 = a1;
  [*(a1[4] + 16) unregisterContext:a1[5]];
  v9 = _AKSignpostGetNanoseconds(a1[7], a1[8]) / 1000000000.0;
  v8 = _AKSignpostLogSystem();
  v7 = OS_SIGNPOST_INTERVAL_END;
  v6 = a1[7];
  if (v6 && v6 != -1 && os_signpost_enabled(v8))
  {
    __os_log_helper_16_0_1_4_2(v14, [v11 code]);
    _os_signpost_emit_with_name_impl(&dword_193225000, v8, v7, v6, "EndProximityAuth", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v14, 8u);
  }

  objc_storeStrong(&v8, 0);
  oslog = _AKSignpostLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_3_8_0_8_0_4_2(v13, a1[7], *&v9, [v11 code]);
    _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:EndProximityAuth  Error=%{public,signpost.telemetry:number2,name=Error}d ", v13, 0x1Cu);
  }

  objc_storeStrong(&oslog, 0);
  if (a1[6])
  {
    (*(a1[6] + 16))();
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __85__AKAppleIDAuthenticationController_endProximityAuthenticationForContext_completion___block_invoke_262(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKTriageLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_66(v5, location[0]);
    _os_log_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEFAULT, "Remote authentication service returned an error: %{public}@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __85__AKAppleIDAuthenticationController_endProximityAuthenticationForContext_completion___block_invoke_263(void *a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13 = 0;
  objc_storeStrong(&v13, a3);
  v12[1] = a1;
  if (v13)
  {
    v12[0] = _AKTriageLogSystem();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v12[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_66(v16, v13);
      _os_log_impl(&dword_193225000, v12[0], v11, "Remote authentication service returned an error: %{public}@", v16, 0xCu);
    }

    objc_storeStrong(v12, 0);
  }

  else
  {
    v10 = _AKLogSystem();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v10;
      v4 = v9;
      v5 = [location[0] ak_redactedCopy];
      v8 = MEMORY[0x1E69E5928](v5);
      __os_log_helper_16_2_1_8_64(v15, v8);
      _os_log_impl(&dword_193225000, v3, v4, "Remote authentication service came back with: %@", v15, 0xCu);
      MEMORY[0x1E69E5920](v5);
      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(&v10, 0);
  }

  (*(a1[4] + 16))();
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)setAppleIDWithAltDSID:(id)d inUse:(BOOL)use forService:(int64_t)service
{
  v22 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  useCopy = use;
  serviceCopy = service;
  v15 = _os_activity_create(&dword_193225000, "authkit/set-in-use", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v16 = v15;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v15, &state);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v13 = [_authenticationServiceConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_265];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = location[0];
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:serviceCopy];
    v7 = v5;
    if (useCopy)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    __os_log_helper_16_2_3_8_64_8_64_8_64(v21, v8, v5, v6);
    _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "Calling out to remote auth service for altDSID %@, service %@, inUse %@.", v21, 0x20u);
    MEMORY[0x1E69E5920](v7);
  }

  objc_storeStrong(&oslog, 0);
  [v13 setAppleIDWithAltDSID:location[0] inUse:useCopy forService:serviceCopy completion:&__block_literal_global_275];
  objc_storeStrong(&v13, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __76__AKAppleIDAuthenticationController_setAppleIDWithAltDSID_inUse_forService___block_invoke(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __76__AKAppleIDAuthenticationController_setAppleIDWithAltDSID_inUse_forService___block_invoke_272(NSObject *a1, char a2, id obj)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v7 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    __os_log_helper_16_2_2_8_64_8_64(v9, v3, location);
    _os_log_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEFAULT, "Result of remote call: %@. Error: %@.", v9, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)setAppleIDWithDSID:(id)d inUse:(BOOL)use forService:(int64_t)service
{
  v22 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  useCopy = use;
  serviceCopy = service;
  v15 = _os_activity_create(&dword_193225000, "authkit/set-in-use", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v16 = v15;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v15, &state);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v13 = [_authenticationServiceConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_277];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = location[0];
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:serviceCopy];
    v7 = v5;
    if (useCopy)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    __os_log_helper_16_2_3_8_64_8_64_8_64(v21, v8, v5, v6);
    _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "Calling out to remote auth service for DSID %@, service %@, inUse %@.", v21, 0x20u);
    MEMORY[0x1E69E5920](v7);
  }

  objc_storeStrong(&oslog, 0);
  [v13 setAppleIDWithDSID:location[0] inUse:useCopy forService:serviceCopy completion:&__block_literal_global_280];
  objc_storeStrong(&v13, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __73__AKAppleIDAuthenticationController_setAppleIDWithDSID_inUse_forService___block_invoke(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_66(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %{public}@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __73__AKAppleIDAuthenticationController_setAppleIDWithDSID_inUse_forService___block_invoke_278(NSObject *a1, char a2, id obj)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v7 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    __os_log_helper_16_2_2_8_64_8_64(v9, v3, location);
    _os_log_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEFAULT, "Result of remote call: %@. Error: %@.", v9, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)fetchUserInformationForAltDSID:(id)d completion:(id)completion
{
  v43 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v39 = 0;
  objc_storeStrong(&v39, completion);
  v33[0] = 0;
  v33[1] = v33;
  v34 = 838860800;
  v35 = 48;
  v36 = __Block_byref_object_copy_;
  v37 = __Block_byref_object_dispose_;
  v38 = MEMORY[0x1E69E5928](selfCopy);
  v31 = _os_activity_create(&dword_193225000, "authkit/fetch-user-info", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v32 = v31;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v31, &state);
  v23 = MEMORY[0x1E69E9820];
  v24 = -1073741824;
  v25 = 0;
  v26 = __79__AKAppleIDAuthenticationController_fetchUserInformationForAltDSID_completion___block_invoke;
  v27 = &unk_1E73D3A70;
  v28[1] = v33;
  v28[0] = MEMORY[0x1E69E5928](v39);
  v29 = MEMORY[0x193B165F0](&v23);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v16 = MEMORY[0x1E69E9820];
  v17 = -1073741824;
  v18 = 0;
  v19 = __79__AKAppleIDAuthenticationController_fetchUserInformationForAltDSID_completion___block_invoke_2;
  v20 = &unk_1E73D3510;
  v21 = MEMORY[0x1E69E5928](v29);
  v22 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:&v16];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v42, location[0]);
    _os_log_impl(&dword_193225000, oslog, type, "Calling out to remote auth service to fetch user information for: %@", v42, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v5 = v22;
  v4 = location[0];
  v8 = MEMORY[0x1E69E9820];
  v9 = -1073741824;
  v10 = 0;
  v11 = __79__AKAppleIDAuthenticationController_fetchUserInformationForAltDSID_completion___block_invoke_281;
  v12 = &unk_1E73D3538;
  v13 = MEMORY[0x1E69E5928](v29);
  [v5 fetchUserInformationForAltDSID:v4 completion:&v8];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(v28, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v32, 0);
  _Block_object_dispose(v33, 8);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __79__AKAppleIDAuthenticationController_fetchUserInformationForAltDSID_completion___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void __79__AKAppleIDAuthenticationController_fetchUserInformationForAltDSID_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_66(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %{public}@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __79__AKAppleIDAuthenticationController_fetchUserInformationForAltDSID_completion___block_invoke_281(void *a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  v10[1] = a1;
  v10[0] = _AKLogSystem();
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v10[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v10[0];
    type = v9;
    v5 = [location[0] ak_redactedCopy];
    v8 = MEMORY[0x1E69E5928](v5);
    __os_log_helper_16_3_2_8_65_8_66(v13, v8, v11);
    _os_log_impl(&dword_193225000, log, type, "Result of remote call: %{private}@. Error: %{public}@", v13, 0x16u);
    MEMORY[0x1E69E5920](v5);
    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(v10, 0);
  (*(a1[4] + 16))();
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)getUserInformationWithContext:(id)context completion:(id)completion
{
  v39 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v35 = 0;
  objc_storeStrong(&v35, completion);
  v33 = _os_activity_create(&dword_193225000, "authkit/fetch-user-info-with-context", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v34 = v33;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v33, &state);
  v24 = MEMORY[0x1E69E9820];
  v25 = -1073741824;
  v26 = 0;
  v27 = __78__AKAppleIDAuthenticationController_getUserInformationWithContext_completion___block_invoke;
  v28 = &unk_1E73D3A98;
  v29 = MEMORY[0x1E69E5928](selfCopy);
  v30 = MEMORY[0x1E69E5928](v35);
  v31 = MEMORY[0x193B165F0](&v24);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v17 = MEMORY[0x1E69E9820];
  v18 = -1073741824;
  v19 = 0;
  v20 = __78__AKAppleIDAuthenticationController_getUserInformationWithContext_completion___block_invoke_2;
  v21 = &unk_1E73D3510;
  v22 = MEMORY[0x1E69E5928](v31);
  v23 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:&v17];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    altDSID = [location[0] altDSID];
    __os_log_helper_16_2_2_8_64_8_64(v38, altDSID, location[0]);
    _os_log_impl(&dword_193225000, oslog, type, "Calling out to remote auth service to fetch user information for altDSID (%@) with context: %@", v38, 0x16u);
    MEMORY[0x1E69E5920](altDSID);
  }

  objc_storeStrong(&oslog, 0);
  v5 = v23;
  v4 = location[0];
  v9 = MEMORY[0x1E69E9820];
  v10 = -1073741824;
  v11 = 0;
  v12 = __78__AKAppleIDAuthenticationController_getUserInformationWithContext_completion___block_invoke_283;
  v13 = &unk_1E73D3AC0;
  v14 = MEMORY[0x1E69E5928](v31);
  [v5 getUserInformationWithContext:v4 completion:&v9];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v29, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __78__AKAppleIDAuthenticationController_getUserInformationWithContext_completion___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  if (a1[5])
  {
    (*(a1[5] + 16))();
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void __78__AKAppleIDAuthenticationController_getUserInformationWithContext_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_66(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %{public}@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __78__AKAppleIDAuthenticationController_getUserInformationWithContext_completion___block_invoke_283(NSObject *a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_3_2_8_65_8_66(v8, location[0], v6);
    _os_log_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEFAULT, "Result of remote call: %{private}@. Error: %{public}@", v8, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)getUserInformationForAltDSID:(id)d completion:(id)completion
{
  v43 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v39 = 0;
  objc_storeStrong(&v39, completion);
  v33[0] = 0;
  v33[1] = v33;
  v34 = 838860800;
  v35 = 48;
  v36 = __Block_byref_object_copy_;
  v37 = __Block_byref_object_dispose_;
  v38 = MEMORY[0x1E69E5928](selfCopy);
  v31 = _os_activity_create(&dword_193225000, "authkit/fetch-user-info-typed", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v32 = v31;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v31, &state);
  v23 = MEMORY[0x1E69E9820];
  v24 = -1073741824;
  v25 = 0;
  v26 = __77__AKAppleIDAuthenticationController_getUserInformationForAltDSID_completion___block_invoke;
  v27 = &unk_1E73D3AE8;
  v28[1] = v33;
  v28[0] = MEMORY[0x1E69E5928](v39);
  v29 = MEMORY[0x193B165F0](&v23);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v16 = MEMORY[0x1E69E9820];
  v17 = -1073741824;
  v18 = 0;
  v19 = __77__AKAppleIDAuthenticationController_getUserInformationForAltDSID_completion___block_invoke_2;
  v20 = &unk_1E73D3510;
  v21 = MEMORY[0x1E69E5928](v29);
  v22 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:&v16];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v42, location[0]);
    _os_log_impl(&dword_193225000, oslog, type, "Calling out to remote auth service to fetch user information for: %@", v42, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v5 = v22;
  v4 = location[0];
  v8 = MEMORY[0x1E69E9820];
  v9 = -1073741824;
  v10 = 0;
  v11 = __77__AKAppleIDAuthenticationController_getUserInformationForAltDSID_completion___block_invoke_284;
  v12 = &unk_1E73D3AC0;
  v13 = MEMORY[0x1E69E5928](v29);
  [v5 getUserInformationForAltDSID:v4 completion:&v8];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(v28, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v32, 0);
  _Block_object_dispose(v33, 8);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __77__AKAppleIDAuthenticationController_getUserInformationForAltDSID_completion___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void __77__AKAppleIDAuthenticationController_getUserInformationForAltDSID_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_66(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %{public}@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __77__AKAppleIDAuthenticationController_getUserInformationForAltDSID_completion___block_invoke_284(NSObject *a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_3_2_8_65_8_66(v8, location[0], v6);
    _os_log_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEFAULT, "Result of remote call: %{private}@. Error: %{public}@", v8, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)_updateUserInformationWithContext:(id)context userInformation:(id)information isServerOperation:(BOOL)operation completion:(id)completion
{
  v80[1] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v70 = 0;
  objc_storeStrong(&v70, information);
  operationCopy = operation;
  v68 = 0;
  objc_storeStrong(&v68, completion);
  if (location[0])
  {
    if (v70)
    {
      v55[0] = 0;
      v55[1] = v55;
      v56 = 838860800;
      v57 = 48;
      v58 = __Block_byref_object_copy_;
      v59 = __Block_byref_object_dispose_;
      v60 = MEMORY[0x1E69E5928](selfCopy);
      v53 = _os_activity_create(&dword_193225000, "authkit/update-user-info", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
      activity = v53;
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      os_activity_scope_enter(v53, &state);
      v45 = MEMORY[0x1E69E9820];
      v46 = -1073741824;
      v47 = 0;
      v48 = __116__AKAppleIDAuthenticationController__updateUserInformationWithContext_userInformation_isServerOperation_completion___block_invoke;
      v49 = &unk_1E73D3B10;
      v50[1] = v55;
      v50[0] = MEMORY[0x1E69E5928](v68);
      v51 = MEMORY[0x193B165F0](&v45);
      _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
      v38 = MEMORY[0x1E69E9820];
      v39 = -1073741824;
      v40 = 0;
      v41 = __116__AKAppleIDAuthenticationController__updateUserInformationWithContext_userInformation_isServerOperation_completion___block_invoke_2;
      v42 = &unk_1E73D3510;
      v43 = MEMORY[0x1E69E5928](v51);
      v44 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:&v38];
      MEMORY[0x1E69E5920](_authenticationServiceConnection);
      if (operationCopy)
      {
        oslog = _AKLogSystem();
        v36 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          altDSID = [location[0] altDSID];
          __os_log_helper_16_2_2_8_112_8_64(v74, 1752392040, altDSID);
          _os_log_impl(&dword_193225000, oslog, v36, "Calling out to remote auth service to update user information on server for: %{mask.hash}@", v74, 0x16u);
          MEMORY[0x1E69E5920](altDSID);
        }

        objc_storeStrong(&oslog, 0);
        v12 = v44;
        v10 = location[0];
        v11 = v70;
        v30 = MEMORY[0x1E69E9820];
        v31 = -1073741824;
        v32 = 0;
        v33 = __116__AKAppleIDAuthenticationController__updateUserInformationWithContext_userInformation_isServerOperation_completion___block_invoke_293;
        v34 = &unk_1E73D3B38;
        v35 = MEMORY[0x1E69E5928](v51);
        [v12 updateUserInformationWithContext:v10 userInformation:v11 completion:&v30];
        objc_storeStrong(&v35, 0);
      }

      else
      {
        v29 = _AKLogSystem();
        v28 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          altDSID2 = [location[0] altDSID];
          __os_log_helper_16_2_2_8_112_8_64(v73, 1752392040, altDSID2);
          _os_log_impl(&dword_193225000, v29, v28, "Calling out to remote auth service to update user information for: %{mask.hash}@", v73, 0x16u);
          MEMORY[0x1E69E5920](altDSID2);
        }

        objc_storeStrong(&v29, 0);
        v8 = v44;
        altDSID3 = [location[0] altDSID];
        v7 = v70;
        v22 = MEMORY[0x1E69E9820];
        v23 = -1073741824;
        v24 = 0;
        v25 = __116__AKAppleIDAuthenticationController__updateUserInformationWithContext_userInformation_isServerOperation_completion___block_invoke_294;
        v26 = &unk_1E73D3B38;
        v27 = MEMORY[0x1E69E5928](v51);
        [v8 updateUserInformationForAltDSID:altDSID3 userInformation:v7 completion:&v22];
        MEMORY[0x1E69E5920](altDSID3);
        objc_storeStrong(&v27, 0);
      }

      objc_storeStrong(&v44, 0);
      objc_storeStrong(&v43, 0);
      objc_storeStrong(&v51, 0);
      objc_storeStrong(v50, 0);
      os_activity_scope_leave(&state);
      objc_storeStrong(&activity, 0);
      _Block_object_dispose(v55, 8);
      objc_storeStrong(&v60, 0);
      v64 = 0;
    }

    else
    {
      v16 = MEMORY[0x1E696ABC0];
      v76 = *MEMORY[0x1E696A578];
      v77 = @"User information is required";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
      v63 = [v16 errorWithDomain:@"AKAuthenticationError" code:-7056 userInfo:?];
      MEMORY[0x1E69E5920](v15);
      v62 = _AKLogSystem();
      v61 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_66(v75, v63);
        _os_log_error_impl(&dword_193225000, v62, v61, "Update user info failed with error: %{public}@", v75, 0xCu);
      }

      objc_storeStrong(&v62, 0);
      if (v68)
      {
        (*(v68 + 2))(v68, 0, v63);
      }

      v64 = 1;
      objc_storeStrong(&v63, 0);
    }
  }

  else
  {
    v18 = MEMORY[0x1E696ABC0];
    v79 = *MEMORY[0x1E696A578];
    v80[0] = @"Authentication context is required";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:&v79 count:1];
    v67 = [v18 errorWithDomain:@"AKAuthenticationError" code:-7056 userInfo:?];
    MEMORY[0x1E69E5920](v17);
    v66 = _AKLogSystem();
    v65 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_66(v78, v67);
      _os_log_error_impl(&dword_193225000, v66, v65, "Update user info failed with error: %{public}@", v78, 0xCu);
    }

    objc_storeStrong(&v66, 0);
    if (v68)
    {
      (*(v68 + 2))(v68, 0, v67);
    }

    v64 = 1;
    objc_storeStrong(&v67, 0);
  }

  objc_storeStrong(&v68, 0);
  objc_storeStrong(&v70, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __116__AKAppleIDAuthenticationController__updateUserInformationWithContext_userInformation_isServerOperation_completion___block_invoke(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), 0);
  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_storeStrong(&location, 0);
}

void __116__AKAppleIDAuthenticationController__updateUserInformationWithContext_userInformation_isServerOperation_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_66(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %{public}@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __116__AKAppleIDAuthenticationController__updateUserInformationWithContext_userInformation_isServerOperation_completion___block_invoke_293(NSObject *a1, char a2, id obj)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v7 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    __os_log_helper_16_2_2_8_66_8_66(v9, v3, location);
    _os_log_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEFAULT, "Result of remote call: %{public}@. Error: %{public}@", v9, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

void __116__AKAppleIDAuthenticationController__updateUserInformationWithContext_userInformation_isServerOperation_completion___block_invoke_294(NSObject *a1, char a2, id obj)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v7 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    __os_log_helper_16_2_2_8_66_8_66(v9, v3, location);
    _os_log_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEFAULT, "Result of remote call: %{public}@. Error: %{public}@", v9, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)updateUserInformationForAltDSID:(id)d userInformation:(id)information completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v9 = 0;
  objc_storeStrong(&v9, information);
  v8 = 0;
  objc_storeStrong(&v8, completion);
  v7 = objc_alloc_init(AKAppleIDAuthenticationContext);
  [(AKAppleIDAuthenticationContext *)v7 setAltDSID:location[0]];
  [(AKAppleIDAuthenticationController *)selfCopy _updateUserInformationWithContext:v7 userInformation:v9 isServerOperation:0 completion:v8];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)updateUserInformationWithContext:(id)context userInformation:(id)information completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v8 = 0;
  objc_storeStrong(&v8, information);
  v7 = 0;
  objc_storeStrong(&v7, completion);
  [(AKAppleIDAuthenticationController *)selfCopy _updateUserInformationWithContext:location[0] userInformation:v8 isServerOperation:1 completion:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchAuthModeWithContext:(id)context completion:(id)completion
{
  v44 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v40 = 0;
  objc_storeStrong(&v40, completion);
  v34[0] = 0;
  v34[1] = v34;
  v35 = 838860800;
  v36 = 48;
  v37 = __Block_byref_object_copy_;
  v38 = __Block_byref_object_dispose_;
  v39 = MEMORY[0x1E69E5928](selfCopy);
  v32 = _os_activity_create(&dword_193225000, "authkit/fetch-auth-mode", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v33 = v32;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v32, &state);
  v24 = MEMORY[0x1E69E9820];
  v25 = -1073741824;
  v26 = 0;
  v27 = __73__AKAppleIDAuthenticationController_fetchAuthModeWithContext_completion___block_invoke;
  v28 = &unk_1E73D3B60;
  v29[1] = v34;
  v29[0] = MEMORY[0x1E69E5928](v40);
  v30 = MEMORY[0x193B165F0](&v24);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v17 = MEMORY[0x1E69E9820];
  v18 = -1073741824;
  v19 = 0;
  v20 = __73__AKAppleIDAuthenticationController_fetchAuthModeWithContext_completion___block_invoke_2;
  v21 = &unk_1E73D3510;
  v22 = MEMORY[0x1E69E5928](v30);
  v23 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:&v17];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    username = [location[0] username];
    __os_log_helper_16_2_1_8_64(v43, username);
    _os_log_impl(&dword_193225000, oslog, type, "Calling out to remote auth service to fetch auth mode for: %@", v43, 0xCu);
    MEMORY[0x1E69E5920](username);
  }

  objc_storeStrong(&oslog, 0);
  v5 = v23;
  v4 = location[0];
  v9 = MEMORY[0x1E69E9820];
  v10 = -1073741824;
  v11 = 0;
  v12 = __73__AKAppleIDAuthenticationController_fetchAuthModeWithContext_completion___block_invoke_297;
  v13 = &unk_1E73D3B88;
  v14 = MEMORY[0x1E69E5928](v30);
  [v5 fetchAuthModeWithContext:v4 completion:&v9];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(v29, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v33, 0);
  _Block_object_dispose(v34, 8);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __73__AKAppleIDAuthenticationController_fetchAuthModeWithContext_completion___block_invoke(void *a1, void *a2, id obj)
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(location, 0);
}

void __73__AKAppleIDAuthenticationController_fetchAuthModeWithContext_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_66(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %{public}@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __73__AKAppleIDAuthenticationController_fetchAuthModeWithContext_completion___block_invoke_297(NSObject *a1, uint64_t a2, id obj)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_0_8_66(v8, v6, location);
    _os_log_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEFAULT, "Result of remote call: %lu. Error: %{public}@", v8, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)fetchDeviceListWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v13 = 0;
  objc_storeStrong(&v13, completion);
  v6 = selfCopy;
  v5 = location[0];
  v7 = MEMORY[0x1E69E9820];
  v8 = -1073741824;
  v9 = 0;
  v10 = __75__AKAppleIDAuthenticationController_fetchDeviceListWithContext_completion___block_invoke;
  v11 = &unk_1E73D3BB0;
  v12 = MEMORY[0x1E69E5928](v13);
  [(AKAppleIDAuthenticationController *)v6 deviceListWithContext:v5 completion:?];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void __75__AKAppleIDAuthenticationController_fetchDeviceListWithContext_completion___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  if (a1[4])
  {
    v3 = (a1[4] + 16);
    v4 = [location[0] deviceList];
    (*v3)();
    MEMORY[0x1E69E5920](v4);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)_deviceListWithContext:(id)context completion:(id)completion
{
  v40 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v36 = 0;
  objc_storeStrong(&v36, completion);
  v30[0] = 0;
  v30[1] = v30;
  v31 = 838860800;
  v32 = 48;
  v33 = __Block_byref_object_copy_;
  v34 = __Block_byref_object_dispose_;
  v35 = MEMORY[0x1E69E5928](selfCopy);
  v23 = MEMORY[0x1E69E9820];
  v24 = -1073741824;
  v25 = 0;
  v26 = __71__AKAppleIDAuthenticationController__deviceListWithContext_completion___block_invoke;
  v27 = &unk_1E73D3BD8;
  v28[1] = v30;
  v28[0] = MEMORY[0x1E69E5928](v36);
  v29 = MEMORY[0x193B165F0](&v23);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v16 = MEMORY[0x1E69E9820];
  v17 = -1073741824;
  v18 = 0;
  v19 = __71__AKAppleIDAuthenticationController__deviceListWithContext_completion___block_invoke_2;
  v20 = &unk_1E73D3510;
  v21 = MEMORY[0x1E69E5928](v29);
  v22 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:&v16];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_66(v39, location[0]);
    _os_log_impl(&dword_193225000, oslog, type, "Calling out to remote auth service to fetch device list information for: %{public}@", v39, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v5 = v22;
  v4 = location[0];
  v8 = MEMORY[0x1E69E9820];
  v9 = -1073741824;
  v10 = 0;
  v11 = __71__AKAppleIDAuthenticationController__deviceListWithContext_completion___block_invoke_299;
  v12 = &unk_1E73D3BB0;
  v13 = MEMORY[0x1E69E5928](v29);
  [v5 deviceListWithContext:v4 completion:&v8];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(v28, 0);
  _Block_object_dispose(v30, 8);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __71__AKAppleIDAuthenticationController__deviceListWithContext_completion___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void __71__AKAppleIDAuthenticationController__deviceListWithContext_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_66(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %{public}@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __71__AKAppleIDAuthenticationController__deviceListWithContext_completion___block_invoke_299(NSObject *a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v8, location[0], v6);
    _os_log_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEFAULT, "Result of remote call: %@. Error: %@", v8, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)deviceListWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v18 = 0;
  objc_storeStrong(&v18, completion);
  v16 = _os_activity_create(&dword_193225000, "authkit/fetch-device-list", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v17 = v16;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v16, &state);
  v6 = selfCopy;
  v5 = location[0];
  v7 = MEMORY[0x1E69E9820];
  v8 = -1073741824;
  v9 = 0;
  v10 = __70__AKAppleIDAuthenticationController_deviceListWithContext_completion___block_invoke;
  v11 = &unk_1E73D3C00;
  v12 = MEMORY[0x1E69E5928](selfCopy);
  v13 = MEMORY[0x1E69E5928](location[0]);
  v14 = MEMORY[0x1E69E5928](v18);
  [(AKAppleIDAuthenticationController *)v6 _deviceListWithContext:v5 completion:&v7];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

void __70__AKAppleIDAuthenticationController_deviceListWithContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  v9[1] = a1;
  if ([v10 ak_isXPCServiceError])
  {
    v9[0] = _AKLogSystem();
    v8 = 2;
    if (os_log_type_enabled(v9[0], OS_LOG_TYPE_DEBUG))
    {
      log = v9[0];
      type = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_debug_impl(&dword_193225000, log, type, "Fetching device list failed with XPC error... retrying once!", v7, 2u);
    }

    objc_storeStrong(v9, 0);
    [*(*(a1 + 32) + 24) teardownServiceConnection];
    [*(a1 + 32) _deviceListWithContext:*(a1 + 40) completion:*(a1 + 48)];
  }

  else if (*(a1 + 48))
  {
    (*(*(a1 + 48) + 16))();
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (id)deviceListWithContext:(id)context error:(id *)error
{
  v55 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  errorCopy = error;
  v49 = _os_activity_create(&dword_193225000, "authkit/fetch-device-list", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v50 = v49;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v49, &state);
  v41 = 0;
  v42 = &v41;
  v43 = 838860800;
  v44 = 48;
  v45 = __Block_byref_object_copy_;
  v46 = __Block_byref_object_dispose_;
  v47 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 838860800;
  v37 = 48;
  v38 = __Block_byref_object_copy_;
  v39 = __Block_byref_object_dispose_;
  v40 = 0;
  v26[1] = MEMORY[0x1E69E9820];
  v27 = -1073741824;
  v28 = 0;
  v29 = __65__AKAppleIDAuthenticationController_deviceListWithContext_error___block_invoke;
  v30 = &unk_1E73D3C28;
  v31 = &v41;
  v32 = &v34;
  v33 = MEMORY[0x193B165F0]();
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v20 = MEMORY[0x1E69E9820];
  v21 = -1073741824;
  v22 = 0;
  v23 = __65__AKAppleIDAuthenticationController_deviceListWithContext_error___block_invoke_2;
  v24 = &unk_1E73D3510;
  v25 = MEMORY[0x1E69E5928](v33);
  v26[0] = [_authenticationServiceConnection synchronousRemoteObjectProxyWithErrorHandler:&v20];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_66(v54, location[0]);
    _os_log_impl(&dword_193225000, oslog, type, "Calling out to remote auth service to fetch device list information for: %{public}@", v54, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v9 = v26[0];
  v8 = location[0];
  v12 = MEMORY[0x1E69E9820];
  v13 = -1073741824;
  v14 = 0;
  v15 = __65__AKAppleIDAuthenticationController_deviceListWithContext_error___block_invoke_300;
  v16 = &unk_1E73D3BB0;
  v17 = MEMORY[0x1E69E5928](v33);
  [v9 deviceListWithContext:v8 completion:&v12];
  if (errorCopy)
  {
    v7 = v42[5];
    v4 = v7;
    *errorCopy = v7;
  }

  v6 = MEMORY[0x1E69E5928](v35[5]);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(v26, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v33, 0);
  _Block_object_dispose(&v34, 8);
  objc_storeStrong(&v40, 0);
  _Block_object_dispose(&v41, 8);
  objc_storeStrong(&v47, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];

  return v6;
}

void __65__AKAppleIDAuthenticationController_deviceListWithContext_error___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  objc_storeStrong((*(a1[4] + 8) + 40), v5);
  objc_storeStrong((*(a1[5] + 8) + 40), location[0]);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void __65__AKAppleIDAuthenticationController_deviceListWithContext_error___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_66(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %{public}@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __65__AKAppleIDAuthenticationController_deviceListWithContext_error___block_invoke_300(NSObject *a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v8, location[0], v6);
    _os_log_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEFAULT, "Result of remote call: %@. Error: %@", v8, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)fetchAuthorizedAppListWithContext:(id)context error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  errorCopy = error;
  v32 = _os_activity_create(&dword_193225000, "authkit/fetch-app-list", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v33 = v32;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v32, &state);
  v24 = 0;
  v25 = &v24;
  v26 = 838860800;
  v27 = 48;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 838860800;
  v20 = 48;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  oslog[1] = MEMORY[0x1E69E9820];
  v11 = -1073741824;
  v12 = 0;
  v13 = __77__AKAppleIDAuthenticationController_fetchAuthorizedAppListWithContext_error___block_invoke;
  v14 = &unk_1E73D3C50;
  v15 = &v17;
  v16 = [_authenticationServiceConnection synchronousRemoteObjectProxyWithErrorHandler:?];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v37, location[0]);
    _os_log_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEFAULT, "Calling out to remote auth service to fetch app list information for: %@", v37, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  [v16 fetchAppListWithAltDSID:location[0] completion:?];
  if (errorCopy)
  {
    v7 = v18[5];
    v4 = v7;
    *errorCopy = v7;
  }

  v6 = MEMORY[0x1E69E5928](v25[5]);
  objc_storeStrong(&v16, 0);
  _Block_object_dispose(&v17, 8);
  objc_storeStrong(&v23, 0);
  _Block_object_dispose(&v24, 8);
  objc_storeStrong(&v30, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];

  return v6;
}

void __77__AKAppleIDAuthenticationController_fetchAuthorizedAppListWithContext_error___block_invoke(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_66(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %{public}@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong((*(a1[4].isa + 1) + 40), location[0]);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __77__AKAppleIDAuthenticationController_fetchAuthorizedAppListWithContext_error___block_invoke_301(NSObject *a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v8, location[0], v6);
    _os_log_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEFAULT, "Result of remote call: %@. Error: %@", v8, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong((*(a1[4].isa + 1) + 40), location[0]);
  objc_storeStrong((*(a1[5].isa + 1) + 40), v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)deleteAuthorizationDatabaseWithAltDSID:(id)d error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  errorCopy = error;
  v34 = _os_activity_create(&dword_193225000, "authkit/delete-authorization-list", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v35 = v34;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v34, &state);
  v26 = 0;
  v27 = &v26;
  v28 = 838860800;
  v29 = 48;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x20000000;
  v24 = 32;
  v25 = 0;
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  oslog[1] = MEMORY[0x1E69E9820];
  v15 = -1073741824;
  v16 = 0;
  v17 = __82__AKAppleIDAuthenticationController_deleteAuthorizationDatabaseWithAltDSID_error___block_invoke;
  v18 = &unk_1E73D3C50;
  v19 = &v26;
  v20 = [_authenticationServiceConnection synchronousRemoteObjectProxyWithErrorHandler:?];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  oslog[0] = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    v9 = type;
    __os_log_helper_16_0_0(v12);
    _os_log_impl(&dword_193225000, log, v9, "Calling out to remote auth service to wipe authorization database", v12, 2u);
  }

  objc_storeStrong(oslog, 0);
  [v20 deleteAuthorizationDatabaseWithAltDSID:location[0] completion:?];
  if (errorCopy)
  {
    v7 = v27[5];
    v4 = v7;
    *errorCopy = v7;
  }

  v6 = *(v22 + 24);
  objc_storeStrong(&v20, 0);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v26, 8);
  objc_storeStrong(&v32, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
  return v6 & 1;
}

void __82__AKAppleIDAuthenticationController_deleteAuthorizationDatabaseWithAltDSID_error___block_invoke(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_66(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %{public}@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong((*(a1[4].isa + 1) + 40), location[0]);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __82__AKAppleIDAuthenticationController_deleteAuthorizationDatabaseWithAltDSID_error___block_invoke_303(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), location);
  *(*(*(a1 + 40) + 8) + 24) = v5 & 1;
  objc_storeStrong(&location, 0);
}

- (void)performSilentTTRFor:(unint64_t)for completion:(id)completion
{
  v56 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v53 = a2;
  forCopy = for;
  location = 0;
  objc_storeStrong(&location, completion);
  v45[0] = 0;
  v45[1] = v45;
  v46 = 838860800;
  v47 = 48;
  v48 = __Block_byref_object_copy_;
  v49 = __Block_byref_object_dispose_;
  v50 = MEMORY[0x1E69E5928](selfCopy);
  v43 = _os_activity_create(&dword_193225000, "authkit/silent-TTR", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v44 = v43;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v43, &state);
  v35 = MEMORY[0x1E69E9820];
  v36 = -1073741824;
  v37 = 0;
  v38 = __68__AKAppleIDAuthenticationController_performSilentTTRFor_completion___block_invoke;
  v39 = &unk_1E73D3B10;
  v40[1] = v45;
  v40[0] = MEMORY[0x1E69E5928](location);
  v41 = MEMORY[0x193B165F0](&v35);
  v34 = 0uLL;
  v11 = _AKSignpostLogSystem();
  *&v33 = _AKSignpostCreate(v11);
  *(&v33 + 1) = v4;
  MEMORY[0x1E69E5920](v11);
  log = _AKSignpostLogSystem();
  v31 = 1;
  v30 = v33;
  if (v33 && v30 != -1 && os_signpost_enabled(log))
  {
    v8 = log;
    type = v31;
    spid = v30;
    __os_log_helper_16_0_0(v29);
    _os_signpost_emit_with_name_impl(&dword_193225000, v8, type, spid, "TriggerSilentTTR", " enableTelemetry=YES ", v29, 2u);
  }

  objc_storeStrong(&log, 0);
  oslog = _AKSignpostLogSystem();
  v27 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v55, v33);
    _os_log_impl(&dword_193225000, oslog, v27, "BEGIN [%lld]: TriggerSilentTTR  enableTelemetry=YES ", v55, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v34 = v33;
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v19 = MEMORY[0x1E69E9820];
  v20 = -1073741824;
  v21 = 0;
  v22 = __68__AKAppleIDAuthenticationController_performSilentTTRFor_completion___block_invoke_304;
  v23 = &unk_1E73D3CC8;
  v25 = v34;
  v24 = MEMORY[0x1E69E5928](v41);
  v26 = [_authenticationServiceConnection synchronousRemoteObjectProxyWithErrorHandler:&v19];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  v6 = v26;
  v5 = forCopy;
  v12 = MEMORY[0x1E69E9820];
  v13 = -1073741824;
  v14 = 0;
  v15 = __68__AKAppleIDAuthenticationController_performSilentTTRFor_completion___block_invoke_305;
  v16 = &unk_1E73D3CF0;
  v18 = v34;
  v17 = MEMORY[0x1E69E5928](v41);
  [v6 performSilentTTRFor:v5 completion:&v12];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(v40, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v44, 0);
  _Block_object_dispose(v45, 8);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

void __68__AKAppleIDAuthenticationController_performSilentTTRFor_completion___block_invoke(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), 0);
  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_storeStrong(&location, 0);
}

void __68__AKAppleIDAuthenticationController_performSilentTTRFor_completion___block_invoke_304(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = a1;
  v13 = _AKSignpostGetNanoseconds(a1[5], a1[6]) / 1000000000.0;
  v12 = _AKSignpostLogSystem();
  v11 = 2;
  v10 = a1[5];
  if (v10 && v10 != -1 && os_signpost_enabled(v12))
  {
    log = v12;
    type = v11;
    spid = v10;
    __os_log_helper_16_0_0(v9);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "TriggerSilentTTR", "", v9, 2u);
  }

  objc_storeStrong(&v12, 0);
  oslog = _AKSignpostLogSystem();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_2_8_0_8_0(v17, a1[5], *&v13);
    _os_log_impl(&dword_193225000, oslog, v7, "END [%lld] %fs:TriggerSilentTTR ", v17, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v6 = _AKLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_66(v16, location[0]);
    _os_log_error_impl(&dword_193225000, v6, OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %{public}@", v16, 0xCu);
  }

  objc_storeStrong(&v6, 0);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __68__AKAppleIDAuthenticationController_performSilentTTRFor_completion___block_invoke_305(void *a1, char a2, id obj)
{
  v25 = *MEMORY[0x1E69E9840];
  v21 = a1;
  v20 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v18 = a1;
  v17 = _AKSignpostGetNanoseconds(a1[5], a1[6]) / 1000000000.0;
  v16 = _AKSignpostLogSystem();
  v15 = 2;
  v14 = a1[5];
  if (v14 && v14 != -1 && os_signpost_enabled(v16))
  {
    log = v16;
    type = v15;
    spid = v14;
    __os_log_helper_16_0_0(v13);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "TriggerSilentTTR", "", v13, 2u);
  }

  objc_storeStrong(&v16, 0);
  oslog = _AKSignpostLogSystem();
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_2_8_0_8_0(v24, a1[5], *&v17);
    _os_log_impl(&dword_193225000, oslog, v11, "END [%lld] %fs:TriggerSilentTTR ", v24, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  if (v20)
  {
    v10 = _AKLogSystem();
    v9 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      if (v20)
      {
        v3 = @"YES";
      }

      else
      {
        v3 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v23, v3);
      _os_log_debug_impl(&dword_193225000, v10, v9, "Remote Auth Service SilentTTR returned success: %@", v23, 0xCu);
    }

    objc_storeStrong(&v10, 0);
  }

  else
  {
    v8 = _AKLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v22, location);
      _os_log_error_impl(&dword_193225000, v8, OS_LOG_TYPE_ERROR, "Remote Auth Service SilentTTR returned an error: %@", v22, 0xCu);
    }

    objc_storeStrong(&v8, 0);
  }

  (*(a1[4] + 16))();
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)revokeAuthorizationForApplicationWithClientID:(id)d error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  errorCopy = error;
  v30 = _os_activity_create(&dword_193225000, "authkit/revoke-authorization", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v31 = v30;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v30, &state);
  v22 = 0;
  v23 = &v22;
  v24 = 838860800;
  v25 = 48;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x20000000;
  v20 = 32;
  v21 = 0;
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  oslog[1] = MEMORY[0x1E69E9820];
  v11 = -1073741824;
  v12 = 0;
  v13 = __89__AKAppleIDAuthenticationController_revokeAuthorizationForApplicationWithClientID_error___block_invoke;
  v14 = &unk_1E73D3C50;
  v15 = &v22;
  v16 = [_authenticationServiceConnection synchronousRemoteObjectProxyWithErrorHandler:?];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v35, location[0]);
    _os_log_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEFAULT, "Calling out to remote auth service to revoke authorization for clientID: %@", v35, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  [v16 revokeAuthorizationForApplicationWithClientID:location[0] completion:?];
  if (errorCopy)
  {
    v7 = v23[5];
    v4 = v7;
    *errorCopy = v7;
  }

  v6 = *(v18 + 24);
  objc_storeStrong(&v16, 0);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v22, 8);
  objc_storeStrong(&v28, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v6 & 1;
}

void __89__AKAppleIDAuthenticationController_revokeAuthorizationForApplicationWithClientID_error___block_invoke(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_66(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %{public}@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong((*(a1[4].isa + 1) + 40), location[0]);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __89__AKAppleIDAuthenticationController_revokeAuthorizationForApplicationWithClientID_error___block_invoke_306(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), location);
  *(*(*(a1 + 40) + 8) + 24) = v5 & 1;
  objc_storeStrong(&location, 0);
}

- (void)warmUpVerificationSessionWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v29[0] = 0;
  v29[1] = v29;
  v30 = 838860800;
  v31 = 48;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = MEMORY[0x1E69E5928](selfCopy);
  v27 = _os_activity_create(&dword_193225000, "authkit/satori-warmup", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v28 = v27;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v27, &state);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __77__AKAppleIDAuthenticationController_warmUpVerificationSessionWithCompletion___block_invoke;
  v23[3] = &unk_1E73D3B10;
  v24[1] = v29;
  v24[0] = MEMORY[0x1E69E5928](location[0]);
  v25 = MEMORY[0x193B165F0](v23);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v16 = MEMORY[0x1E69E9820];
  v17 = -1073741824;
  v18 = 0;
  v19 = __77__AKAppleIDAuthenticationController_warmUpVerificationSessionWithCompletion___block_invoke_2;
  v20 = &unk_1E73D3510;
  v21 = MEMORY[0x1E69E5928](v25);
  v22 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:&v16];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    v5 = type;
    __os_log_helper_16_0_0(v13);
    _os_log_impl(&dword_193225000, log, v5, "Calling out to remote auth service to warmup verification session", v13, 2u);
  }

  objc_storeStrong(&oslog, 0);
  v3 = v22;
  v7 = MEMORY[0x1E69E9820];
  v8 = -1073741824;
  v9 = 0;
  v10 = __77__AKAppleIDAuthenticationController_warmUpVerificationSessionWithCompletion___block_invoke_307;
  v11 = &unk_1E73D3B38;
  v12 = MEMORY[0x1E69E5928](v25);
  [v3 warmUpVerificationSessionWithCompletion:&v7];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(v24, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v28, 0);
  _Block_object_dispose(v29, 8);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
}

void __77__AKAppleIDAuthenticationController_warmUpVerificationSessionWithCompletion___block_invoke(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), 0);
  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_storeStrong(&location, 0);
}

void __77__AKAppleIDAuthenticationController_warmUpVerificationSessionWithCompletion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __77__AKAppleIDAuthenticationController_warmUpVerificationSessionWithCompletion___block_invoke_307(void *a1, char a2, id obj)
{
  v11 = a1;
  v10 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v8[1] = a1;
  v8[0] = _AKLogSystem();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v8[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v8[0];
    type = v7;
    __os_log_helper_16_0_0(v6);
    _os_log_impl(&dword_193225000, log, type, "WarmUp Session completed...", v6, 2u);
  }

  objc_storeStrong(v8, 0);
  (*(a1[4] + 16))();
  objc_storeStrong(&location, 0);
}

- (void)setConfigurationInfo:(id)info forIdentifier:(id)identifier forAltDSID:(id)d completion:(id)completion
{
  v52 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, info);
  v48 = 0;
  objc_storeStrong(&v48, identifier);
  v47 = 0;
  objc_storeStrong(&v47, d);
  v46 = 0;
  objc_storeStrong(&v46, completion);
  v40[0] = 0;
  v40[1] = v40;
  v41 = 838860800;
  v42 = 48;
  v43 = __Block_byref_object_copy_;
  v44 = __Block_byref_object_dispose_;
  v45 = MEMORY[0x1E69E5928](selfCopy);
  v38 = _os_activity_create(&dword_193225000, "authkit/set-configuration-info", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v39 = v38;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v38, &state);
  v30 = MEMORY[0x1E69E9820];
  v31 = -1073741824;
  v32 = 0;
  v33 = __94__AKAppleIDAuthenticationController_setConfigurationInfo_forIdentifier_forAltDSID_completion___block_invoke;
  v34 = &unk_1E73D3B10;
  v35[1] = v40;
  v35[0] = MEMORY[0x1E69E5928](v46);
  v36 = MEMORY[0x193B165F0](&v30);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v23 = MEMORY[0x1E69E9820];
  v24 = -1073741824;
  v25 = 0;
  v26 = __94__AKAppleIDAuthenticationController_setConfigurationInfo_forIdentifier_forAltDSID_completion___block_invoke_2;
  v27 = &unk_1E73D3510;
  v28 = MEMORY[0x1E69E5928](v36);
  v29 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:&v23];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    if (v48)
    {
      v10 = v48;
    }

    else
    {
      v10 = @"(null)";
    }

    __os_log_helper_16_2_2_8_64_8_64(v51, location[0], v10);
    _os_log_impl(&dword_193225000, oslog, type, "Calling out to remote auth service to set: %@ for identifier: %@.", v51, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v9 = v29;
  v6 = location[0];
  v7 = v48;
  v8 = v47;
  v15 = MEMORY[0x1E69E9820];
  v16 = -1073741824;
  v17 = 0;
  v18 = __94__AKAppleIDAuthenticationController_setConfigurationInfo_forIdentifier_forAltDSID_completion___block_invoke_311;
  v19 = &unk_1E73D3B38;
  v20 = MEMORY[0x1E69E5928](v36);
  [v9 setConfigurationInfo:v6 forIdentifier:v7 forAltDSID:v8 completion:&v15];
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(v35, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v39, 0);
  _Block_object_dispose(v40, 8);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __94__AKAppleIDAuthenticationController_setConfigurationInfo_forIdentifier_forAltDSID_completion___block_invoke(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), 0);
  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_storeStrong(&location, 0);
}

void __94__AKAppleIDAuthenticationController_setConfigurationInfo_forIdentifier_forAltDSID_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __94__AKAppleIDAuthenticationController_setConfigurationInfo_forIdentifier_forAltDSID_completion___block_invoke_311(NSObject *a1, char a2, id obj)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v7 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    __os_log_helper_16_2_2_8_64_8_64(v9, v3, location);
    _os_log_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEFAULT, "Result of remote call: %@. Error: %@", v9, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)configurationInfoWithIdentifiers:(id)identifiers forAltDSID:(id)d completion:(id)completion
{
  v47 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifiers);
  v43 = 0;
  objc_storeStrong(&v43, d);
  v42 = 0;
  objc_storeStrong(&v42, completion);
  v36[0] = 0;
  v36[1] = v36;
  v37 = 838860800;
  v38 = 48;
  v39 = __Block_byref_object_copy_;
  v40 = __Block_byref_object_dispose_;
  v41 = MEMORY[0x1E69E5928](selfCopy);
  v34 = _os_activity_create(&dword_193225000, "authkit/fetch-configuration-info", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v35 = v34;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v34, &state);
  v26 = MEMORY[0x1E69E9820];
  v27 = -1073741824;
  v28 = 0;
  v29 = __92__AKAppleIDAuthenticationController_configurationInfoWithIdentifiers_forAltDSID_completion___block_invoke;
  v30 = &unk_1E73D3A70;
  v31[1] = v36;
  v31[0] = MEMORY[0x1E69E5928](v42);
  v32 = MEMORY[0x193B165F0](&v26);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v19 = MEMORY[0x1E69E9820];
  v20 = -1073741824;
  v21 = 0;
  v22 = __92__AKAppleIDAuthenticationController_configurationInfoWithIdentifiers_forAltDSID_completion___block_invoke_2;
  v23 = &unk_1E73D3510;
  v24 = MEMORY[0x1E69E5928](v32);
  v25 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:&v19];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v46, location[0]);
    _os_log_impl(&dword_193225000, oslog, type, "Calling out to remote auth service to fetch configuration for identifiers: %@.", v46, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v7 = v25;
  v5 = location[0];
  v6 = v43;
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __92__AKAppleIDAuthenticationController_configurationInfoWithIdentifiers_forAltDSID_completion___block_invoke_312;
  v15 = &unk_1E73D3538;
  v16 = MEMORY[0x1E69E5928](v32);
  [v7 configurationInfoWithIdentifiers:v5 forAltDSID:v6 completion:&v11];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(v31, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v35, 0);
  _Block_object_dispose(v36, 8);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __92__AKAppleIDAuthenticationController_configurationInfoWithIdentifiers_forAltDSID_completion___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void __92__AKAppleIDAuthenticationController_configurationInfoWithIdentifiers_forAltDSID_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __92__AKAppleIDAuthenticationController_configurationInfoWithIdentifiers_forAltDSID_completion___block_invoke_312(NSObject *a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_3_2_8_65_8_64(v8, location[0], v6);
    _os_log_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEFAULT, "Result of remote call: %{private}@. Error: %@", v8, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)checkSecurityUpgradeEligibilityForContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v33 = 0;
  objc_storeStrong(&v33, completion);
  v27[0] = 0;
  v27[1] = v27;
  v28 = 838860800;
  v29 = 48;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = MEMORY[0x1E69E5928](selfCopy);
  v25 = _os_activity_create(&dword_193225000, "authkit/check-upgrade-eligibility", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v26 = v25;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v25, &state);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __90__AKAppleIDAuthenticationController_checkSecurityUpgradeEligibilityForContext_completion___block_invoke;
  v21[3] = &unk_1E73D3B10;
  v22[1] = v27;
  v22[0] = MEMORY[0x1E69E5928](v33);
  v23 = MEMORY[0x193B165F0](v21);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v14 = MEMORY[0x1E69E9820];
  v15 = -1073741824;
  v16 = 0;
  v17 = __90__AKAppleIDAuthenticationController_checkSecurityUpgradeEligibilityForContext_completion___block_invoke_2;
  v18 = &unk_1E73D3510;
  v19 = MEMORY[0x1E69E5928](v23);
  v20 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:&v14];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  v5 = v20;
  v4 = location[0];
  v8 = MEMORY[0x1E69E9820];
  v9 = -1073741824;
  v10 = 0;
  v11 = __90__AKAppleIDAuthenticationController_checkSecurityUpgradeEligibilityForContext_completion___block_invoke_313;
  v12 = &unk_1E73D3B38;
  v13 = MEMORY[0x1E69E5928](v23);
  [v5 checkSecurityUpgradeEligibilityForContext:v4 completion:&v8];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(v22, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v26, 0);
  _Block_object_dispose(v27, 8);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
}

void __90__AKAppleIDAuthenticationController_checkSecurityUpgradeEligibilityForContext_completion___block_invoke(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), 0);
  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_storeStrong(&location, 0);
}

void __90__AKAppleIDAuthenticationController_checkSecurityUpgradeEligibilityForContext_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __90__AKAppleIDAuthenticationController_checkSecurityUpgradeEligibilityForContext_completion___block_invoke_313(NSObject *a1, char a2, id obj)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v7 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    __os_log_helper_16_2_2_8_64_8_64(v9, v3, location);
    _os_log_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEFAULT, "HSA 2 eligibility check came back with result: %@ and error: %@", v9, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)generateLoginCodeWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v24[0] = 0;
  v24[1] = v24;
  v25 = 838860800;
  v26 = 48;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = MEMORY[0x1E69E5928](selfCopy);
  v22 = _os_activity_create(&dword_193225000, "authkit/generate-login-code", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v23 = v22;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v22, &state);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __69__AKAppleIDAuthenticationController_generateLoginCodeWithCompletion___block_invoke;
  v18[3] = &unk_1E73D3D18;
  v19[1] = v24;
  v19[0] = MEMORY[0x1E69E5928](location[0]);
  v20 = MEMORY[0x193B165F0](v18);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __69__AKAppleIDAuthenticationController_generateLoginCodeWithCompletion___block_invoke_2;
  v15 = &unk_1E73D3510;
  v16 = MEMORY[0x1E69E5928](v20);
  v17 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:&v11];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  v3 = v17;
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __69__AKAppleIDAuthenticationController_generateLoginCodeWithCompletion___block_invoke_315;
  v9 = &unk_1E73D3D40;
  v10 = MEMORY[0x1E69E5928](v20);
  [v3 generateLoginCodeWithCompletion:&v5];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(v19, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v23, 0);
  _Block_object_dispose(v24, 8);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

void __69__AKAppleIDAuthenticationController_generateLoginCodeWithCompletion___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void __69__AKAppleIDAuthenticationController_generateLoginCodeWithCompletion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __69__AKAppleIDAuthenticationController_generateLoginCodeWithCompletion___block_invoke_315(NSObject *a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v8, location[0], v6);
    _os_log_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEFAULT, "Generated code: %@. Error: %@", v8, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)validateLoginCode:(unint64_t)code forAppleID:(id)d completion:(id)completion
{
  selfCopy = self;
  v38 = a2;
  codeCopy = code;
  location = 0;
  objc_storeStrong(&location, d);
  v35 = 0;
  objc_storeStrong(&v35, completion);
  v29[0] = 0;
  v29[1] = v29;
  v30 = 838860800;
  v31 = 48;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = MEMORY[0x1E69E5928](selfCopy);
  v27 = _os_activity_create(&dword_193225000, "authkit/validate-login-code", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v28 = v27;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v27, &state);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __77__AKAppleIDAuthenticationController_validateLoginCode_forAppleID_completion___block_invoke;
  v23[3] = &unk_1E73D3B10;
  v24[1] = v29;
  v24[0] = MEMORY[0x1E69E5928](v35);
  v25 = MEMORY[0x193B165F0](v23);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v16 = MEMORY[0x1E69E9820];
  v17 = -1073741824;
  v18 = 0;
  v19 = __77__AKAppleIDAuthenticationController_validateLoginCode_forAppleID_completion___block_invoke_2;
  v20 = &unk_1E73D3510;
  v21 = MEMORY[0x1E69E5928](v25);
  v22 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:&v16];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  v7 = v22;
  v5 = codeCopy;
  v6 = location;
  v10 = MEMORY[0x1E69E9820];
  v11 = -1073741824;
  v12 = 0;
  v13 = __77__AKAppleIDAuthenticationController_validateLoginCode_forAppleID_completion___block_invoke_316;
  v14 = &unk_1E73D3B38;
  v15 = MEMORY[0x1E69E5928](v25);
  [v7 validateLoginCode:v5 forAppleID:v6 withCompletion:&v10];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(v24, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v28, 0);
  _Block_object_dispose(v29, 8);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&location, 0);
}

void __77__AKAppleIDAuthenticationController_validateLoginCode_forAppleID_completion___block_invoke(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), 0);
  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_storeStrong(&location, 0);
}

void __77__AKAppleIDAuthenticationController_validateLoginCode_forAppleID_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __77__AKAppleIDAuthenticationController_validateLoginCode_forAppleID_completion___block_invoke_316(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  (*(*(a1 + 32) + 16))();
  objc_storeStrong(&location, 0);
}

- (void)performCircleRequestWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v33 = 0;
  objc_storeStrong(&v33, completion);
  v27[0] = 0;
  v27[1] = v27;
  v28 = 838860800;
  v29 = 48;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = MEMORY[0x1E69E5928](selfCopy);
  v25 = _os_activity_create(&dword_193225000, "authkit/perform-circle-request", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v26 = v25;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v25, &state);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __80__AKAppleIDAuthenticationController_performCircleRequestWithContext_completion___block_invoke;
  v21[3] = &unk_1E73D3D68;
  v22[1] = v27;
  v22[0] = MEMORY[0x1E69E5928](v33);
  v23 = MEMORY[0x193B165F0](v21);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v14 = MEMORY[0x1E69E9820];
  v15 = -1073741824;
  v16 = 0;
  v17 = __80__AKAppleIDAuthenticationController_performCircleRequestWithContext_completion___block_invoke_2;
  v18 = &unk_1E73D3510;
  v19 = MEMORY[0x1E69E5928](v23);
  v20 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:&v14];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  v5 = v20;
  v4 = location[0];
  v8 = MEMORY[0x1E69E9820];
  v9 = -1073741824;
  v10 = 0;
  v11 = __80__AKAppleIDAuthenticationController_performCircleRequestWithContext_completion___block_invoke_318;
  v12 = &unk_1E73D3D90;
  v13 = MEMORY[0x1E69E5928](v23);
  [v5 performCircleRequestWithContext:v4 completion:&v8];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(v22, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v26, 0);
  _Block_object_dispose(v27, 8);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
}

void __80__AKAppleIDAuthenticationController_performCircleRequestWithContext_completion___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void __80__AKAppleIDAuthenticationController_performCircleRequestWithContext_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __80__AKAppleIDAuthenticationController_performCircleRequestWithContext_completion___block_invoke_318(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  (*(a1[4] + 16))();
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)performCheckInForAccountWithAltDSID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v5 = 0;
  objc_storeStrong(&v5, completion);
  [(AKAppleIDAuthenticationController *)selfCopy performCheckInForAccountWithAltDSID:location[0] event:@"liveness" completion:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)performCheckInForAccountWithAltDSID:(id)d event:(id)event reason:(unint64_t)reason completion:(id)completion
{
  v52 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v48 = 0;
  objc_storeStrong(&v48, event);
  reasonCopy = reason;
  v46 = 0;
  objc_storeStrong(&v46, completion);
  v44 = _os_activity_create(&dword_193225000, "authkit/check-in", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v45 = v44;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v44, &state);
  v37[0] = 0;
  v37[1] = v37;
  v38 = 838860800;
  v39 = 48;
  v40 = __Block_byref_object_copy_;
  v41 = __Block_byref_object_dispose_;
  v42 = MEMORY[0x1E69E5928](selfCopy);
  v30 = MEMORY[0x1E69E9820];
  v31 = -1073741824;
  v32 = 0;
  v33 = __97__AKAppleIDAuthenticationController_performCheckInForAccountWithAltDSID_event_reason_completion___block_invoke;
  v34 = &unk_1E73D3DB8;
  v35[1] = v37;
  v35[0] = MEMORY[0x1E69E5928](v46);
  v36 = MEMORY[0x193B165F0](&v30);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v23 = MEMORY[0x1E69E9820];
  v24 = -1073741824;
  v25 = 0;
  v26 = __97__AKAppleIDAuthenticationController_performCheckInForAccountWithAltDSID_event_reason_completion___block_invoke_2;
  v27 = &unk_1E73D3510;
  v28 = MEMORY[0x1E69E5928](v36);
  v29 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:&v23];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_3_8_112_8_64_8_0(v51, 1752392040, location[0], reasonCopy);
    _os_log_impl(&dword_193225000, oslog, type, "Calling remote authentication service to perform check-in for altDSID: %{mask.hash}@ with reason: %lu", v51, 0x20u);
  }

  objc_storeStrong(&oslog, 0);
  v9 = v29;
  v6 = location[0];
  v7 = v48;
  v8 = reasonCopy;
  v14 = MEMORY[0x1E69E9820];
  v15 = -1073741824;
  v16 = 0;
  v17 = __97__AKAppleIDAuthenticationController_performCheckInForAccountWithAltDSID_event_reason_completion___block_invoke_319;
  v18 = &unk_1E73D3DE0;
  v19 = MEMORY[0x1E69E5928](location[0]);
  v20 = MEMORY[0x1E69E5928](v36);
  [v9 performCheckInForAccountWithAltDSID:v6 event:v7 reason:v8 completion:&v14];
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(v35, 0);
  _Block_object_dispose(v37, 8);
  objc_storeStrong(&v42, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __97__AKAppleIDAuthenticationController_performCheckInForAccountWithAltDSID_event_reason_completion___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(location, 0);
}

void __97__AKAppleIDAuthenticationController_performCheckInForAccountWithAltDSID_event_reason_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __97__AKAppleIDAuthenticationController_performCheckInForAccountWithAltDSID_event_reason_completion___block_invoke_319(uint64_t *a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5[1] = a1;
  v5[0] = _AKLogSystem();
  v4 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v5[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v8, a1[4]);
    _os_log_impl(&dword_193225000, v5[0], v4, "Remote call to peform check-in for account with altDSID (%@) returned", v8, 0xCu);
  }

  objc_storeStrong(v5, 0);
  if (location[0])
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v7, location[0]);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Failed to perform check-in: %@", v7, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  (*(a1[5] + 16))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)performCheckInForAccountWithAltDSID:(id)d event:(id)event completion:(id)completion
{
  v48 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v44 = 0;
  objc_storeStrong(&v44, event);
  v43 = 0;
  objc_storeStrong(&v43, completion);
  v41 = _os_activity_create(&dword_193225000, "authkit/check-in", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v42 = v41;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v41, &state);
  v34[0] = 0;
  v34[1] = v34;
  v35 = 838860800;
  v36 = 48;
  v37 = __Block_byref_object_copy_;
  v38 = __Block_byref_object_dispose_;
  v39 = MEMORY[0x1E69E5928](selfCopy);
  v27 = MEMORY[0x1E69E9820];
  v28 = -1073741824;
  v29 = 0;
  v30 = __90__AKAppleIDAuthenticationController_performCheckInForAccountWithAltDSID_event_completion___block_invoke;
  v31 = &unk_1E73D3DB8;
  v32[1] = v34;
  v32[0] = MEMORY[0x1E69E5928](v43);
  v33 = MEMORY[0x193B165F0](&v27);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v20 = MEMORY[0x1E69E9820];
  v21 = -1073741824;
  v22 = 0;
  v23 = __90__AKAppleIDAuthenticationController_performCheckInForAccountWithAltDSID_event_completion___block_invoke_2;
  v24 = &unk_1E73D3510;
  v25 = MEMORY[0x1E69E5928](v33);
  v26 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:&v20];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v47, location[0]);
    _os_log_impl(&dword_193225000, oslog, type, "Calling remote authentication service to perform check-in for altDSID: %@", v47, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v7 = v26;
  v5 = location[0];
  v6 = v44;
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __90__AKAppleIDAuthenticationController_performCheckInForAccountWithAltDSID_event_completion___block_invoke_320;
  v15 = &unk_1E73D3DE0;
  v16 = MEMORY[0x1E69E5928](location[0]);
  v17 = MEMORY[0x1E69E5928](v33);
  [v7 performCheckInForAccountWithAltDSID:v5 event:v6 completion:&v11];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(v32, 0);
  _Block_object_dispose(v34, 8);
  objc_storeStrong(&v39, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __90__AKAppleIDAuthenticationController_performCheckInForAccountWithAltDSID_event_completion___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(location, 0);
}

void __90__AKAppleIDAuthenticationController_performCheckInForAccountWithAltDSID_event_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __90__AKAppleIDAuthenticationController_performCheckInForAccountWithAltDSID_event_completion___block_invoke_320(uint64_t *a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5[1] = a1;
  v5[0] = _AKLogSystem();
  v4 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v5[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v8, a1[4]);
    _os_log_impl(&dword_193225000, v5[0], v4, "Remote call to peform check-in for account with altDSID (%@) returned", v8, 0xCu);
  }

  objc_storeStrong(v5, 0);
  if (location[0])
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v7, location[0]);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Failed to perform check-in: %@", v7, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  (*(a1[5] + 16))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)reportSignOutForAppleID:(id)d service:(int64_t)service completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  serviceCopy = service;
  v36 = 0;
  objc_storeStrong(&v36, completion);
  v30[0] = 0;
  v30[1] = v30;
  v31 = 838860800;
  v32 = 48;
  v33 = __Block_byref_object_copy_;
  v34 = __Block_byref_object_dispose_;
  v35 = MEMORY[0x1E69E5928](selfCopy);
  v28 = _os_activity_create(&dword_193225000, "authkit/report-sign-out", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v29 = v28;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v28, &state);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __80__AKAppleIDAuthenticationController_reportSignOutForAppleID_service_completion___block_invoke;
  v24[3] = &unk_1E73D3B10;
  v25[1] = v30;
  v25[0] = MEMORY[0x1E69E5928](v36);
  v26 = MEMORY[0x193B165F0](v24);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v17 = MEMORY[0x1E69E9820];
  v18 = -1073741824;
  v19 = 0;
  v20 = __80__AKAppleIDAuthenticationController_reportSignOutForAppleID_service_completion___block_invoke_2;
  v21 = &unk_1E73D3510;
  v22 = MEMORY[0x1E69E5928](v26);
  v23 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:&v17];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  v7 = v23;
  v5 = location[0];
  v6 = serviceCopy;
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __80__AKAppleIDAuthenticationController_reportSignOutForAppleID_service_completion___block_invoke_321;
  v15 = &unk_1E73D3B38;
  v16 = MEMORY[0x1E69E5928](v26);
  [v7 reportSignOutForAppleID:v5 service:v6 completion:&v11];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(v25, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v29, 0);
  _Block_object_dispose(v30, 8);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
}

void __80__AKAppleIDAuthenticationController_reportSignOutForAppleID_service_completion___block_invoke(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), 0);
  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_storeStrong(&location, 0);
}

void __80__AKAppleIDAuthenticationController_reportSignOutForAppleID_service_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __80__AKAppleIDAuthenticationController_reportSignOutForAppleID_service_completion___block_invoke_321(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  (*(*(a1 + 32) + 16))();
  objc_storeStrong(&location, 0);
}

- (void)reportSignOutForAllAppleIDsWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v24[0] = 0;
  v24[1] = v24;
  v25 = 838860800;
  v26 = 48;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = MEMORY[0x1E69E5928](selfCopy);
  v22 = _os_activity_create(&dword_193225000, "authkit/report-sign-out-all", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v23 = v22;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v22, &state);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __79__AKAppleIDAuthenticationController_reportSignOutForAllAppleIDsWithCompletion___block_invoke;
  v18[3] = &unk_1E73D3B10;
  v19[1] = v24;
  v19[0] = MEMORY[0x1E69E5928](location[0]);
  v20 = MEMORY[0x193B165F0](v18);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __79__AKAppleIDAuthenticationController_reportSignOutForAllAppleIDsWithCompletion___block_invoke_2;
  v15 = &unk_1E73D3DB8;
  v16[1] = v24;
  v16[0] = MEMORY[0x1E69E5928](v20);
  v17 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:&v11];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  v3 = v17;
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __79__AKAppleIDAuthenticationController_reportSignOutForAllAppleIDsWithCompletion___block_invoke_322;
  v9 = &unk_1E73D3B38;
  v10 = MEMORY[0x1E69E5928](v20);
  [v3 reportSignOutForAllAppleIDsWithCompletion:&v5];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(v16, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(v19, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v23, 0);
  _Block_object_dispose(v24, 8);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

void __79__AKAppleIDAuthenticationController_reportSignOutForAllAppleIDsWithCompletion___block_invoke(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), 0);
  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_storeStrong(&location, 0);
}

void __79__AKAppleIDAuthenticationController_reportSignOutForAllAppleIDsWithCompletion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  objc_storeStrong((*(a1[5].isa + 1) + 40), 0);
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __79__AKAppleIDAuthenticationController_reportSignOutForAllAppleIDsWithCompletion___block_invoke_322(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  (*(*(a1 + 32) + 16))();
  objc_storeStrong(&location, 0);
}

- (void)updateStateWithExternalAuthenticationResponse:(id)response forContext:(id)context completion:(id)completion
{
  v47 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v43 = 0;
  objc_storeStrong(&v43, context);
  v42 = 0;
  objc_storeStrong(&v42, completion);
  v36[0] = 0;
  v36[1] = v36;
  v37 = 838860800;
  v38 = 48;
  v39 = __Block_byref_object_copy_;
  v40 = __Block_byref_object_dispose_;
  v41 = MEMORY[0x1E69E5928](selfCopy);
  v34 = _os_activity_create(&dword_193225000, "authkit/update-state-with-response", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v35 = v34;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v34, &state);
  v26 = MEMORY[0x1E69E9820];
  v27 = -1073741824;
  v28 = 0;
  v29 = __105__AKAppleIDAuthenticationController_updateStateWithExternalAuthenticationResponse_forContext_completion___block_invoke;
  v30 = &unk_1E73D3B10;
  v31[1] = v36;
  v31[0] = MEMORY[0x1E69E5928](v42);
  v32 = MEMORY[0x193B165F0](&v26);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v19 = MEMORY[0x1E69E9820];
  v20 = -1073741824;
  v21 = 0;
  v22 = __105__AKAppleIDAuthenticationController_updateStateWithExternalAuthenticationResponse_forContext_completion___block_invoke_2;
  v23 = &unk_1E73D3510;
  v24 = MEMORY[0x1E69E5928](v32);
  v25 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:&v19];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v46, v43, location[0]);
    _os_log_impl(&dword_193225000, oslog, type, "Asking akd to update state for %@ with auth response: %@", v46, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v7 = v25;
  v5 = location[0];
  v6 = v43;
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __105__AKAppleIDAuthenticationController_updateStateWithExternalAuthenticationResponse_forContext_completion___block_invoke_323;
  v15 = &unk_1E73D3B38;
  v16 = MEMORY[0x1E69E5928](v32);
  [v7 updateStateWithExternalAuthenticationResponse:v5 forContext:v6 completion:&v11];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(v31, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v35, 0);
  _Block_object_dispose(v36, 8);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __105__AKAppleIDAuthenticationController_updateStateWithExternalAuthenticationResponse_forContext_completion___block_invoke(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), 0);
  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_storeStrong(&location, 0);
}

void __105__AKAppleIDAuthenticationController_updateStateWithExternalAuthenticationResponse_forContext_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __105__AKAppleIDAuthenticationController_updateStateWithExternalAuthenticationResponse_forContext_completion___block_invoke_323(NSObject *a1, char a2, id obj)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v7 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    __os_log_helper_16_2_2_8_64_8_64(v9, v3, location);
    _os_log_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEFAULT, "Result of updating auth state: %@. Error: %@", v9, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)updateStateWithExternalAuthenticationResponse:(id)response forAppleID:(id)d completion:(id)completion
{
  v47 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v43 = 0;
  objc_storeStrong(&v43, d);
  v42 = 0;
  objc_storeStrong(&v42, completion);
  v36[0] = 0;
  v36[1] = v36;
  v37 = 838860800;
  v38 = 48;
  v39 = __Block_byref_object_copy_;
  v40 = __Block_byref_object_dispose_;
  v41 = MEMORY[0x1E69E5928](selfCopy);
  v34 = _os_activity_create(&dword_193225000, "authkit/update-state-with-response", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v35 = v34;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v34, &state);
  v26 = MEMORY[0x1E69E9820];
  v27 = -1073741824;
  v28 = 0;
  v29 = __105__AKAppleIDAuthenticationController_updateStateWithExternalAuthenticationResponse_forAppleID_completion___block_invoke;
  v30 = &unk_1E73D3B10;
  v31[1] = v36;
  v31[0] = MEMORY[0x1E69E5928](v42);
  v32 = MEMORY[0x193B165F0](&v26);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v19 = MEMORY[0x1E69E9820];
  v20 = -1073741824;
  v21 = 0;
  v22 = __105__AKAppleIDAuthenticationController_updateStateWithExternalAuthenticationResponse_forAppleID_completion___block_invoke_2;
  v23 = &unk_1E73D3510;
  v24 = MEMORY[0x1E69E5928](v32);
  v25 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:&v19];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v46, v43, location[0]);
    _os_log_impl(&dword_193225000, oslog, type, "Asking akd to update state for %@ with auth response: %@", v46, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v7 = v25;
  v5 = location[0];
  v6 = v43;
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __105__AKAppleIDAuthenticationController_updateStateWithExternalAuthenticationResponse_forAppleID_completion___block_invoke_324;
  v15 = &unk_1E73D3B38;
  v16 = MEMORY[0x1E69E5928](v32);
  [v7 updateStateWithExternalAuthenticationResponse:v5 forAppleID:v6 completion:&v11];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(v31, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v35, 0);
  _Block_object_dispose(v36, 8);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __105__AKAppleIDAuthenticationController_updateStateWithExternalAuthenticationResponse_forAppleID_completion___block_invoke(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), 0);
  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_storeStrong(&location, 0);
}

void __105__AKAppleIDAuthenticationController_updateStateWithExternalAuthenticationResponse_forAppleID_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __105__AKAppleIDAuthenticationController_updateStateWithExternalAuthenticationResponse_forAppleID_completion___block_invoke_324(NSObject *a1, char a2, id obj)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v7 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    __os_log_helper_16_2_2_8_64_8_64(v9, v3, location);
    _os_log_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEFAULT, "Result of updating auth state: %@. Error: %@", v9, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)isDevicePasscodeProtected:(id *)protected
{
  v38 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v35 = a2;
  protectedCopy = protected;
  v29 = 0;
  v30 = &v29;
  v31 = 0x20000000;
  v32 = 32;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 838860800;
  v25 = 48;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)self _authenticationServiceConnection];
  v15 = MEMORY[0x1E69E9820];
  v16 = -1073741824;
  v17 = 0;
  v18 = __63__AKAppleIDAuthenticationController_isDevicePasscodeProtected___block_invoke;
  v19 = &unk_1E73D3C50;
  v20 = &v22;
  location = [_authenticationServiceConnection synchronousRemoteObjectProxyWithErrorHandler:?];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  oslog[1] = MEMORY[0x1E69E9820];
  v9 = -1073741824;
  v10 = 0;
  v11 = __63__AKAppleIDAuthenticationController_isDevicePasscodeProtected___block_invoke_2;
  v12 = &unk_1E73D3CA0;
  v13 = &v29;
  v14 = &v22;
  [location isDevicePasscodeProtected:?];
  if (protectedCopy)
  {
    v6 = v23[5];
    v3 = v6;
    *protectedCopy = v6;
  }

  if (v23[5])
  {
    oslog[0] = _AKLogSystem();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v37, v23[5]);
      _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Failed to get passcode state with error: %@", v37, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  v5 = *(v30 + 24);
  objc_storeStrong(&location, 0);
  _Block_object_dispose(&v22, 8);
  objc_storeStrong(&v28, 0);
  _Block_object_dispose(&v29, 8);
  *MEMORY[0x1E69E9840];
  return v5 & 1;
}

void __63__AKAppleIDAuthenticationController_isDevicePasscodeProtected___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_storeStrong((*(a1[4] + 8) + 40), location[0]);
  objc_storeStrong(location, 0);
}

void __63__AKAppleIDAuthenticationController_isDevicePasscodeProtected___block_invoke_2(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  *(*(*(a1 + 32) + 8) + 24) = v5 & 1;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), location);
  objc_storeStrong(&location, 0);
}

- (id)activeLoginCode:(id *)code
{
  v40 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v37 = a2;
  codeCopy = code;
  v29 = 0;
  v30 = &v29;
  v31 = 838860800;
  v32 = 48;
  v33 = __Block_byref_object_copy_;
  v34 = __Block_byref_object_dispose_;
  v35 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 838860800;
  v25 = 48;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)self _authenticationServiceConnection];
  v15 = MEMORY[0x1E69E9820];
  v16 = -1073741824;
  v17 = 0;
  v18 = __53__AKAppleIDAuthenticationController_activeLoginCode___block_invoke;
  v19 = &unk_1E73D3C50;
  v20 = &v22;
  location = [_authenticationServiceConnection synchronousRemoteObjectProxyWithErrorHandler:?];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  oslog[1] = MEMORY[0x1E69E9820];
  v9 = -1073741824;
  v10 = 0;
  v11 = __53__AKAppleIDAuthenticationController_activeLoginCode___block_invoke_2;
  v12 = &unk_1E73D3E08;
  v13 = &v29;
  v14 = &v22;
  [location activeLoginCode:?];
  if (codeCopy)
  {
    v6 = v23[5];
    v3 = v6;
    *codeCopy = v6;
  }

  if (v23[5])
  {
    oslog[0] = _AKLogSystem();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v39, v23[5]);
      _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Failed to get active code with error: %@", v39, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  v5 = MEMORY[0x1E69E5928](v30[5]);
  objc_storeStrong(&location, 0);
  _Block_object_dispose(&v22, 8);
  objc_storeStrong(&v28, 0);
  _Block_object_dispose(&v29, 8);
  objc_storeStrong(&v35, 0);
  *MEMORY[0x1E69E9840];

  return v5;
}

void __53__AKAppleIDAuthenticationController_activeLoginCode___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_storeStrong((*(a1[4] + 8) + 40), location[0]);
  objc_storeStrong(location, 0);
}

void __53__AKAppleIDAuthenticationController_activeLoginCode___block_invoke_2(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  objc_storeStrong((*(a1[4] + 8) + 40), location[0]);
  objc_storeStrong((*(a1[5] + 8) + 40), v5);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)getServerUILoadDelegateForAltDSID:(id)d completion:(id)completion
{
  v59 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v54 = 0;
  objc_storeStrong(&v54, completion);
  v48[0] = 0;
  v48[1] = v48;
  v49 = 838860800;
  v50 = 48;
  v51 = __Block_byref_object_copy_;
  v52 = __Block_byref_object_dispose_;
  v53 = MEMORY[0x1E69E5928](selfCopy);
  v46 = _os_activity_create(&dword_193225000, "authkit/fetch-load-delegate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v47 = v46;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v46, &state);
  v44 = 0uLL;
  v11 = _AKSignpostLogSystem();
  *&v12 = _AKSignpostCreate(v11);
  *(&v12 + 1) = v4;
  v43 = v12;
  MEMORY[0x1E69E5920](v11);
  v42 = _AKSignpostLogSystem();
  v41 = 1;
  v40 = v12;
  if (v12 && v40 != -1 && os_signpost_enabled(v42))
  {
    log = v42;
    type = v41;
    spid = v40;
    __os_log_helper_16_0_0(v39);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "FetchServerLoadDelegate", " enableTelemetry=YES ", v39, 2u);
  }

  objc_storeStrong(&v42, 0);
  oslog = _AKSignpostLogSystem();
  v37 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v58, v43);
    _os_log_impl(&dword_193225000, oslog, v37, "BEGIN [%lld]: FetchServerLoadDelegate  enableTelemetry=YES ", v58, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v44 = v43;
  v29 = MEMORY[0x1E69E9820];
  v30 = -1073741824;
  v31 = 0;
  v32 = __82__AKAppleIDAuthenticationController_getServerUILoadDelegateForAltDSID_completion___block_invoke;
  v33 = &unk_1E73D3E30;
  v35 = v43;
  v34[1] = v48;
  v34[0] = MEMORY[0x1E69E5928](v54);
  v36 = MEMORY[0x193B165F0](&v29);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v22 = MEMORY[0x1E69E9820];
  v23 = -1073741824;
  v24 = 0;
  v25 = __82__AKAppleIDAuthenticationController_getServerUILoadDelegateForAltDSID_completion___block_invoke_327;
  v26 = &unk_1E73D3510;
  v27 = MEMORY[0x1E69E5928](v36);
  v28 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:&v22];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  v21 = _AKLogSystem();
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v57, location[0]);
    _os_log_impl(&dword_193225000, v21, v20, "Asking akd for AKAppleIDServerResourceLoadDelegate for altDSID %@", v57, 0xCu);
  }

  objc_storeStrong(&v21, 0);
  v6 = v28;
  v5 = location[0];
  v14 = MEMORY[0x1E69E9820];
  v15 = -1073741824;
  v16 = 0;
  v17 = __82__AKAppleIDAuthenticationController_getServerUILoadDelegateForAltDSID_completion___block_invoke_328;
  v18 = &unk_1E73D3E58;
  v19 = MEMORY[0x1E69E5928](v36);
  [v6 getServerUILoadDelegateForAltDSID:v5 completion:&v14];
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(v34, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v47, 0);
  _Block_object_dispose(v48, 8);
  objc_storeStrong(&v53, 0);
  objc_storeStrong(&v54, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __82__AKAppleIDAuthenticationController_getServerUILoadDelegateForAltDSID_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14 = a1;
  v13 = _AKSignpostGetNanoseconds(a1[6], a1[7]) / 1000000000.0;
  v12 = _AKSignpostLogSystem();
  v11 = 2;
  v10 = a1[6];
  if (v10 && v10 != -1 && os_signpost_enabled(v12))
  {
    log = v12;
    type = v11;
    spid = v10;
    __os_log_helper_16_0_0(v9);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "FetchServerLoadDelegate", "", v9, 2u);
  }

  objc_storeStrong(&v12, 0);
  oslog = _AKSignpostLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_2_8_0_8_0(v17, a1[6], *&v13);
    _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:FetchServerLoadDelegate ", v17, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __82__AKAppleIDAuthenticationController_getServerUILoadDelegateForAltDSID_completion___block_invoke_327(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __82__AKAppleIDAuthenticationController_getServerUILoadDelegateForAltDSID_completion___block_invoke_328(NSObject *a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v8, location[0], v6);
    _os_log_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEFAULT, "Result of getting AKAppleIDServerResourceLoadDelegate: %@. Error: %@", v8, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)getServerUILoadDelegateWithContext:(id)context completion:(id)completion
{
  v59 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v54 = 0;
  objc_storeStrong(&v54, completion);
  v48[0] = 0;
  v48[1] = v48;
  v49 = 838860800;
  v50 = 48;
  v51 = __Block_byref_object_copy_;
  v52 = __Block_byref_object_dispose_;
  v53 = MEMORY[0x1E69E5928](selfCopy);
  v46 = _os_activity_create(&dword_193225000, "authkit/fetch-load-delegate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v47 = v46;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v46, &state);
  v44 = 0uLL;
  v11 = _AKSignpostLogSystem();
  *&v12 = _AKSignpostCreate(v11);
  *(&v12 + 1) = v4;
  v43 = v12;
  MEMORY[0x1E69E5920](v11);
  v42 = _AKSignpostLogSystem();
  v41 = 1;
  v40 = v12;
  if (v12 && v40 != -1 && os_signpost_enabled(v42))
  {
    log = v42;
    type = v41;
    spid = v40;
    __os_log_helper_16_0_0(v39);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "FetchServerLoadDelegate", " enableTelemetry=YES ", v39, 2u);
  }

  objc_storeStrong(&v42, 0);
  oslog = _AKSignpostLogSystem();
  v37 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v58, v43);
    _os_log_impl(&dword_193225000, oslog, v37, "BEGIN [%lld]: FetchServerLoadDelegate  enableTelemetry=YES ", v58, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v44 = v43;
  v29 = MEMORY[0x1E69E9820];
  v30 = -1073741824;
  v31 = 0;
  v32 = __83__AKAppleIDAuthenticationController_getServerUILoadDelegateWithContext_completion___block_invoke;
  v33 = &unk_1E73D3E30;
  v35 = v43;
  v34[1] = v48;
  v34[0] = MEMORY[0x1E69E5928](v54);
  v36 = MEMORY[0x193B165F0](&v29);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v22 = MEMORY[0x1E69E9820];
  v23 = -1073741824;
  v24 = 0;
  v25 = __83__AKAppleIDAuthenticationController_getServerUILoadDelegateWithContext_completion___block_invoke_329;
  v26 = &unk_1E73D3510;
  v27 = MEMORY[0x1E69E5928](v36);
  v28 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:&v22];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  v21 = _AKLogSystem();
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v57, location[0]);
    _os_log_impl(&dword_193225000, v21, v20, "Asking akd for AKAppleIDServerResourceLoadDelegate for context %@", v57, 0xCu);
  }

  objc_storeStrong(&v21, 0);
  v6 = v28;
  v5 = location[0];
  v14 = MEMORY[0x1E69E9820];
  v15 = -1073741824;
  v16 = 0;
  v17 = __83__AKAppleIDAuthenticationController_getServerUILoadDelegateWithContext_completion___block_invoke_330;
  v18 = &unk_1E73D3E58;
  v19 = MEMORY[0x1E69E5928](v36);
  [v6 getServerUILoadDelegateWithContext:v5 completion:&v14];
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(v34, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v47, 0);
  _Block_object_dispose(v48, 8);
  objc_storeStrong(&v53, 0);
  objc_storeStrong(&v54, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __83__AKAppleIDAuthenticationController_getServerUILoadDelegateWithContext_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14 = a1;
  v13 = _AKSignpostGetNanoseconds(a1[6], a1[7]) / 1000000000.0;
  v12 = _AKSignpostLogSystem();
  v11 = 2;
  v10 = a1[6];
  if (v10 && v10 != -1 && os_signpost_enabled(v12))
  {
    log = v12;
    type = v11;
    spid = v10;
    __os_log_helper_16_0_0(v9);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "FetchServerLoadDelegate", "", v9, 2u);
  }

  objc_storeStrong(&v12, 0);
  oslog = _AKSignpostLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_2_8_0_8_0(v17, a1[6], *&v13);
    _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:FetchServerLoadDelegate ", v17, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __83__AKAppleIDAuthenticationController_getServerUILoadDelegateWithContext_completion___block_invoke_329(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __83__AKAppleIDAuthenticationController_getServerUILoadDelegateWithContext_completion___block_invoke_330(NSObject *a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v8, location[0], v6);
    _os_log_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEFAULT, "Result of getting AKAppleIDServerResourceLoadDelegate: %@. Error: %@", v8, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)synchronizeFollowUpItemsForContext:(id)context error:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  errorCopy = error;
  v41 = _os_activity_create(&dword_193225000, "authkit/sync-follow-up-items", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v42 = v41;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v41, &state);
  v39 = _AKLogSystem();
  v38 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    altDSID = [location[0] altDSID];
    __os_log_helper_16_2_1_8_64(v47, altDSID);
    _os_log_impl(&dword_193225000, v39, v38, "Synchronizing follow ups for altDSID: %@", v47, 0xCu);
    MEMORY[0x1E69E5920](altDSID);
  }

  objc_storeStrong(&v39, 0);
  v33 = 0;
  v34 = &v33;
  v35 = 0x20000000;
  v36 = 32;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 838860800;
  v29 = 48;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v19 = MEMORY[0x1E69E9820];
  v20 = -1073741824;
  v21 = 0;
  v22 = __78__AKAppleIDAuthenticationController_synchronizeFollowUpItemsForContext_error___block_invoke;
  v23 = &unk_1E73D3C50;
  v24 = &v26;
  v25 = [_authenticationServiceConnection synchronousRemoteObjectProxyWithErrorHandler:?];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  oslog[1] = MEMORY[0x1E69E9820];
  v13 = -1073741824;
  v14 = 0;
  v15 = __78__AKAppleIDAuthenticationController_synchronizeFollowUpItemsForContext_error___block_invoke_2;
  v16 = &unk_1E73D3CA0;
  v17 = &v33;
  v18 = &v26;
  [v25 synchronizeFollowUpItemsForContext:location[0] completion:?];
  if (errorCopy)
  {
    v8 = v27[5];
    v4 = v8;
    *errorCopy = v8;
  }

  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    if (v34[3])
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    __os_log_helper_16_2_2_8_64_8_64(v46, v5, v27[5]);
    _os_log_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEFAULT, "Synchronized follow ups %@ with error %@", v46, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  v7 = *(v34 + 24);
  objc_storeStrong(&v25, 0);
  _Block_object_dispose(&v26, 8);
  objc_storeStrong(&v32, 0);
  _Block_object_dispose(&v33, 8);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v7 & 1;
}

void __78__AKAppleIDAuthenticationController_synchronizeFollowUpItemsForContext_error___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_storeStrong((*(a1[4] + 8) + 40), location[0]);
  objc_storeStrong(location, 0);
}

void __78__AKAppleIDAuthenticationController_synchronizeFollowUpItemsForContext_error___block_invoke_2(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  *(*(*(a1 + 32) + 8) + 24) = v5 & 1;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), location);
  objc_storeStrong(&location, 0);
}

- (void)synchronizeFollowUpItemsForContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v33 = 0;
  objc_storeStrong(&v33, completion);
  v27[0] = 0;
  v27[1] = v27;
  v28 = 838860800;
  v29 = 48;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = MEMORY[0x1E69E5928](selfCopy);
  v25 = _os_activity_create(&dword_193225000, "authkit/sync-follow-up-items", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v26 = v25;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v25, &state);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __83__AKAppleIDAuthenticationController_synchronizeFollowUpItemsForContext_completion___block_invoke;
  v21[3] = &unk_1E73D3B10;
  v22[1] = v27;
  v22[0] = MEMORY[0x1E69E5928](v33);
  v23 = MEMORY[0x193B165F0](v21);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v14 = MEMORY[0x1E69E9820];
  v15 = -1073741824;
  v16 = 0;
  v17 = __83__AKAppleIDAuthenticationController_synchronizeFollowUpItemsForContext_completion___block_invoke_2;
  v18 = &unk_1E73D3510;
  v19 = MEMORY[0x1E69E5928](v23);
  v20 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:&v14];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  v5 = v20;
  v4 = location[0];
  v8 = MEMORY[0x1E69E9820];
  v9 = -1073741824;
  v10 = 0;
  v11 = __83__AKAppleIDAuthenticationController_synchronizeFollowUpItemsForContext_completion___block_invoke_331;
  v12 = &unk_1E73D3B38;
  v13 = MEMORY[0x1E69E5928](v23);
  [v5 synchronizeFollowUpItemsForContext:v4 completion:&v8];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(v22, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v26, 0);
  _Block_object_dispose(v27, 8);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
}

void __83__AKAppleIDAuthenticationController_synchronizeFollowUpItemsForContext_completion___block_invoke(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), 0);
  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_storeStrong(&location, 0);
}

void __83__AKAppleIDAuthenticationController_synchronizeFollowUpItemsForContext_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Failed to synchronize follow ups due to xpc error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __83__AKAppleIDAuthenticationController_synchronizeFollowUpItemsForContext_completion___block_invoke_331(NSObject *a1, char a2, id obj)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v7 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    __os_log_helper_16_2_2_8_64_8_64(v9, v3, location);
    _os_log_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEFAULT, "Synchronized follow ups %@ with error %@", v9, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)teardownFollowUpWithContext:(id)context completion:(id)completion
{
  v43 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v39 = 0;
  objc_storeStrong(&v39, completion);
  v33[0] = 0;
  v33[1] = v33;
  v34 = 838860800;
  v35 = 48;
  v36 = __Block_byref_object_copy_;
  v37 = __Block_byref_object_dispose_;
  v38 = MEMORY[0x1E69E5928](selfCopy);
  v31 = _os_activity_create(&dword_193225000, "authkit/followup-teardown", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v32 = v31;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v31, &state);
  v23 = MEMORY[0x1E69E9820];
  v24 = -1073741824;
  v25 = 0;
  v26 = __76__AKAppleIDAuthenticationController_teardownFollowUpWithContext_completion___block_invoke;
  v27 = &unk_1E73D3B10;
  v28[1] = v33;
  v28[0] = MEMORY[0x1E69E5928](v39);
  v29 = MEMORY[0x193B165F0](&v23);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v16 = MEMORY[0x1E69E9820];
  v17 = -1073741824;
  v18 = 0;
  v19 = __76__AKAppleIDAuthenticationController_teardownFollowUpWithContext_completion___block_invoke_2;
  v20 = &unk_1E73D3510;
  v21 = MEMORY[0x1E69E5928](v29);
  v22 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:&v16];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v42, location[0]);
    _os_log_impl(&dword_193225000, oslog, type, "Asking akd to teardown: %@", v42, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v5 = v22;
  v4 = location[0];
  v8 = MEMORY[0x1E69E9820];
  v9 = -1073741824;
  v10 = 0;
  v11 = __76__AKAppleIDAuthenticationController_teardownFollowUpWithContext_completion___block_invoke_332;
  v12 = &unk_1E73D3B38;
  v13 = MEMORY[0x1E69E5928](v29);
  [v5 teardownFollowUpWithContext:v4 completion:&v8];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(v28, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v32, 0);
  _Block_object_dispose(v33, 8);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __76__AKAppleIDAuthenticationController_teardownFollowUpWithContext_completion___block_invoke(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), 0);
  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_storeStrong(&location, 0);
}

void __76__AKAppleIDAuthenticationController_teardownFollowUpWithContext_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __76__AKAppleIDAuthenticationController_teardownFollowUpWithContext_completion___block_invoke_332(NSObject *a1, char a2, id obj)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v8, location);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Completed teardown request; Error: %@", v8, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)renewRecoveryTokenWithContext:(id)context completion:(id)completion
{
  v43 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v39 = 0;
  objc_storeStrong(&v39, completion);
  v33[0] = 0;
  v33[1] = v33;
  v34 = 838860800;
  v35 = 48;
  v36 = __Block_byref_object_copy_;
  v37 = __Block_byref_object_dispose_;
  v38 = MEMORY[0x1E69E5928](selfCopy);
  v31 = _os_activity_create(&dword_193225000, "authkit/renew-recovery-token", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v32 = v31;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v31, &state);
  v23 = MEMORY[0x1E69E9820];
  v24 = -1073741824;
  v25 = 0;
  v26 = __78__AKAppleIDAuthenticationController_renewRecoveryTokenWithContext_completion___block_invoke;
  v27 = &unk_1E73D3A70;
  v28[1] = v33;
  v28[0] = MEMORY[0x1E69E5928](v39);
  v29 = MEMORY[0x193B165F0](&v23);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v16 = MEMORY[0x1E69E9820];
  v17 = -1073741824;
  v18 = 0;
  v19 = __78__AKAppleIDAuthenticationController_renewRecoveryTokenWithContext_completion___block_invoke_2;
  v20 = &unk_1E73D3510;
  v21 = MEMORY[0x1E69E5928](v29);
  v22 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:&v16];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v42, location[0]);
    _os_log_impl(&dword_193225000, oslog, type, "Asking akd to fetch a new recovery token token with info: %@", v42, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v5 = v22;
  v4 = location[0];
  v8 = MEMORY[0x1E69E9820];
  v9 = -1073741824;
  v10 = 0;
  v11 = __78__AKAppleIDAuthenticationController_renewRecoveryTokenWithContext_completion___block_invoke_333;
  v12 = &unk_1E73D3538;
  v13 = MEMORY[0x1E69E5928](v29);
  [v5 renewRecoveryTokenWithContext:v4 completion:&v8];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(v28, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v32, 0);
  _Block_object_dispose(v33, 8);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __78__AKAppleIDAuthenticationController_renewRecoveryTokenWithContext_completion___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void __78__AKAppleIDAuthenticationController_renewRecoveryTokenWithContext_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __78__AKAppleIDAuthenticationController_renewRecoveryTokenWithContext_completion___block_invoke_333(NSObject *a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  oslog[1] = a1;
  if (v6)
  {
    oslog[0] = _AKLogSystem();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v8, v6);
      _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Failed to renew recovery token: %@", v8, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  (*(a1[4].isa + 2))();
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)verifyMasterKey:(id)key context:(id)context completion:(id)completion
{
  v47 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v43 = 0;
  objc_storeStrong(&v43, context);
  v42 = 0;
  objc_storeStrong(&v42, completion);
  v36[0] = 0;
  v36[1] = v36;
  v37 = 838860800;
  v38 = 48;
  v39 = __Block_byref_object_copy_;
  v40 = __Block_byref_object_dispose_;
  v41 = MEMORY[0x1E69E5928](selfCopy);
  v34 = _os_activity_create(&dword_193225000, "authkit/verify-master-key", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v35 = v34;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v34, &state);
  v26 = MEMORY[0x1E69E9820];
  v27 = -1073741824;
  v28 = 0;
  v29 = __72__AKAppleIDAuthenticationController_verifyMasterKey_context_completion___block_invoke;
  v30 = &unk_1E73D3A70;
  v31[1] = v36;
  v31[0] = MEMORY[0x1E69E5928](v42);
  v32 = MEMORY[0x193B165F0](&v26);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v19 = MEMORY[0x1E69E9820];
  v20 = -1073741824;
  v21 = 0;
  v22 = __72__AKAppleIDAuthenticationController_verifyMasterKey_context_completion___block_invoke_2;
  v23 = &unk_1E73D3510;
  v24 = MEMORY[0x1E69E5928](v32);
  v25 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:&v19];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v46, v43);
    _os_log_impl(&dword_193225000, oslog, type, "Asking akd to verify master key with info: %@", v46, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v7 = v25;
  v5 = location[0];
  v6 = v43;
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __72__AKAppleIDAuthenticationController_verifyMasterKey_context_completion___block_invoke_334;
  v15 = &unk_1E73D3538;
  v16 = MEMORY[0x1E69E5928](v32);
  [v7 verifyMasterKey:v5 withContext:v6 completion:&v11];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(v31, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v35, 0);
  _Block_object_dispose(v36, 8);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __72__AKAppleIDAuthenticationController_verifyMasterKey_context_completion___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void __72__AKAppleIDAuthenticationController_verifyMasterKey_context_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __72__AKAppleIDAuthenticationController_verifyMasterKey_context_completion___block_invoke_334(NSObject *a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  oslog[1] = a1;
  if (v6)
  {
    oslog[0] = _AKLogSystem();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v8, v6);
      _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Failed to verify master key: %@", v8, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  (*(a1[4].isa + 2))();
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)persistMasterKeyVerifier:(id)verifier context:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, verifier);
  v9 = 0;
  objc_storeStrong(&v9, context);
  v8 = 0;
  objc_storeStrong(&v8, completion);
  v7 = objc_alloc_init(AKPersistRecoveryKeyContext);
  [(AKPersistRecoveryKeyContext *)v7 setVerifier:location[0]];
  [(AKPersistRecoveryKeyContext *)v7 setKeyType:0];
  [(AKAppleIDAuthenticationController *)selfCopy persistRecoveryKeyWithContext:v7 authContext:v9 completion:v8];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)persistRecoveryKeyWithContext:(id)context authContext:(id)authContext completion:(id)completion
{
  v47 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v43 = 0;
  objc_storeStrong(&v43, authContext);
  v42 = 0;
  objc_storeStrong(&v42, completion);
  v36[0] = 0;
  v36[1] = v36;
  v37 = 838860800;
  v38 = 48;
  v39 = __Block_byref_object_copy_;
  v40 = __Block_byref_object_dispose_;
  v41 = MEMORY[0x1E69E5928](selfCopy);
  v34 = _os_activity_create(&dword_193225000, "authkit/persist-recovery-key", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v35 = v34;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v34, &state);
  v26 = MEMORY[0x1E69E9820];
  v27 = -1073741824;
  v28 = 0;
  v29 = __90__AKAppleIDAuthenticationController_persistRecoveryKeyWithContext_authContext_completion___block_invoke;
  v30 = &unk_1E73D3B10;
  v31[1] = v36;
  v31[0] = MEMORY[0x1E69E5928](v42);
  v32 = MEMORY[0x193B165F0](&v26);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v19 = MEMORY[0x1E69E9820];
  v20 = -1073741824;
  v21 = 0;
  v22 = __90__AKAppleIDAuthenticationController_persistRecoveryKeyWithContext_authContext_completion___block_invoke_2;
  v23 = &unk_1E73D3510;
  v24 = MEMORY[0x1E69E5928](v32);
  v25 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:&v19];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v46, location[0], v43);
    _os_log_impl(&dword_193225000, oslog, type, "Asking akd to persist recovery key with persistKeyContext: %@, authContext:%@", v46, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v7 = v25;
  v5 = location[0];
  v6 = v43;
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __90__AKAppleIDAuthenticationController_persistRecoveryKeyWithContext_authContext_completion___block_invoke_336;
  v15 = &unk_1E73D3B38;
  v16 = MEMORY[0x1E69E5928](v32);
  [v7 persistRecoveryKeyWithContext:v5 authContext:v6 completion:&v11];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(v31, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v35, 0);
  _Block_object_dispose(v36, 8);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __90__AKAppleIDAuthenticationController_persistRecoveryKeyWithContext_authContext_completion___block_invoke(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), 0);
  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_storeStrong(&location, 0);
}

void __90__AKAppleIDAuthenticationController_persistRecoveryKeyWithContext_authContext_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __90__AKAppleIDAuthenticationController_persistRecoveryKeyWithContext_authContext_completion___block_invoke_336(NSObject *a1, char a2, id obj)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (location)
  {
    oslog[0] = _AKLogSystem();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v8, location);
      _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Failed to persist recovery key: %@", v8, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  (*(a1[4].isa + 2))();
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)validateVettingToken:(id)token forAltDSID:(id)d completion:(id)completion
{
  v51 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, token);
  v47 = 0;
  objc_storeStrong(&v47, d);
  v46 = 0;
  objc_storeStrong(&v46, completion);
  v40[0] = 0;
  v40[1] = v40;
  v41 = 838860800;
  v42 = 48;
  v43 = __Block_byref_object_copy_;
  v44 = __Block_byref_object_dispose_;
  v45 = MEMORY[0x1E69E5928](selfCopy);
  v38 = _os_activity_create(&dword_193225000, "authkit/validate-vetting-token", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v39 = v38;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v38, &state);
  v30 = MEMORY[0x1E69E9820];
  v31 = -1073741824;
  v32 = 0;
  v33 = __80__AKAppleIDAuthenticationController_validateVettingToken_forAltDSID_completion___block_invoke;
  v34 = &unk_1E73D3B10;
  v35[1] = v40;
  v35[0] = MEMORY[0x1E69E5928](v46);
  v36 = MEMORY[0x193B165F0](&v30);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v23 = MEMORY[0x1E69E9820];
  v24 = -1073741824;
  v25 = 0;
  v26 = __80__AKAppleIDAuthenticationController_validateVettingToken_forAltDSID_completion___block_invoke_2;
  v27 = &unk_1E73D3510;
  v28 = MEMORY[0x1E69E5928](v36);
  v29 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:&v23];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v50, location[0], v47);
    _os_log_impl(&dword_193225000, oslog, type, "Asking akd to validate vetting token %@ for altDSID: %@", v50, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v7 = v29;
  v5 = location[0];
  v6 = v47;
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __80__AKAppleIDAuthenticationController_validateVettingToken_forAltDSID_completion___block_invoke_337;
  v15 = &unk_1E73D3EA8;
  v16 = MEMORY[0x1E69E5928](v47);
  v17 = MEMORY[0x1E69E5928](selfCopy);
  v20 = MEMORY[0x1E69E5928](v36);
  v18 = MEMORY[0x1E69E5928](v29);
  v19 = MEMORY[0x1E69E5928](location[0]);
  [v7 validateVettingToken:v5 forAltDSID:v6 completion:&v11];
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(v35, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v39, 0);
  _Block_object_dispose(v40, 8);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __80__AKAppleIDAuthenticationController_validateVettingToken_forAltDSID_completion___block_invoke(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), 0);
  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_storeStrong(&location, 0);
}

void __80__AKAppleIDAuthenticationController_validateVettingToken_forAltDSID_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __80__AKAppleIDAuthenticationController_validateVettingToken_forAltDSID_completion___block_invoke_337(void *a1, char a2, id obj)
{
  v34 = *MEMORY[0x1E69E9840];
  v32 = a1;
  v31 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v29 = a1;
  v27 = 0;
  v12 = 0;
  if ((v31 & 1) == 0)
  {
    v28 = [location domain];
    v27 = 1;
    v12 = 0;
    if ([v28 isEqual:@"AKAuthenticationError"])
    {
      v12 = [location code] == -7058;
    }
  }

  if (v27)
  {
    MEMORY[0x1E69E5920](v28);
  }

  if (v12)
  {
    v26 = _AKLogSystem();
    v25 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      log = v26;
      type = v25;
      __os_log_helper_16_0_0(v24);
      _os_log_impl(&dword_193225000, log, type, "Vetting-token validation failed due to expired master token. Attempting to re-auth...", v24, 2u);
    }

    objc_storeStrong(&v26, 0);
    v23 = objc_alloc_init(AKAppleIDAuthenticationContext);
    v4 = v23;
    v6 = [location userInfo];
    v5 = [v6 objectForKeyedSubscript:@"AKUsername"];
    [(AKAppleIDAuthenticationContext *)v4 setUsername:?];
    MEMORY[0x1E69E5920](v5);
    MEMORY[0x1E69E5920](v6);
    [(AKAppleIDAuthenticationContext *)v23 setAltDSID:a1[4]];
    [(AKAppleIDAuthenticationContext *)v23 setIsUsernameEditable:0];
    [(AKAppleIDAuthenticationContext *)v23 _setProxyingForApp:1];
    v8 = a1[5];
    v7 = v23;
    v14 = MEMORY[0x1E69E9820];
    v15 = -1073741824;
    v16 = 0;
    v17 = __80__AKAppleIDAuthenticationController_validateVettingToken_forAltDSID_completion___block_invoke_338;
    v18 = &unk_1E73D3E80;
    v22 = MEMORY[0x1E69E5928](a1[8]);
    v19 = MEMORY[0x1E69E5928](a1[6]);
    v20 = MEMORY[0x1E69E5928](a1[7]);
    v21 = MEMORY[0x1E69E5928](a1[4]);
    [v8 authenticateWithContext:v7 completion:&v14];
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v23, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      if (v31)
      {
        v3 = @"YES";
      }

      else
      {
        v3 = @"NO";
      }

      __os_log_helper_16_2_2_8_64_8_64(v33, v3, location);
      _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "Result: Is token valid? %@. Error: %@", v33, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    (*(a1[8] + 16))();
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

void __80__AKAppleIDAuthenticationController_validateVettingToken_forAltDSID_completion___block_invoke_338(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v24 = 0;
  objc_storeStrong(&v24, a3);
  v23[1] = a1;
  if (v24)
  {
    v23[0] = _AKLogSystem();
    v22 = 16;
    if (os_log_type_enabled(v23[0], OS_LOG_TYPE_ERROR))
    {
      log = v23[0];
      type = v22;
      __os_log_helper_16_0_0(v21);
      _os_log_error_impl(&dword_193225000, log, type, "Unable to refresh expired master token for vetting-token validation.", v21, 2u);
    }

    objc_storeStrong(v23, 0);
    (*(a1[7] + 16))();
  }

  else
  {
    v20 = _AKLogSystem();
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v20;
      v7 = v19;
      __os_log_helper_16_0_0(v18);
      _os_log_impl(&dword_193225000, v6, v7, "Master token should be fresh now. Reattempting vetting token-validation...", v18, 2u);
    }

    objc_storeStrong(&v20, 0);
    v5 = a1[4];
    v3 = a1[5];
    v4 = a1[6];
    v12 = MEMORY[0x1E69E9820];
    v13 = -1073741824;
    v14 = 0;
    v15 = __80__AKAppleIDAuthenticationController_validateVettingToken_forAltDSID_completion___block_invoke_339;
    v16 = &unk_1E73D3B38;
    v17 = MEMORY[0x1E69E5928](a1[7]);
    [v5 validateVettingToken:v3 forAltDSID:v4 completion:&v12];
    objc_storeStrong(&v17, 0);
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

void __80__AKAppleIDAuthenticationController_validateVettingToken_forAltDSID_completion___block_invoke_339(NSObject *a1, char a2, id obj)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v7 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    __os_log_helper_16_2_2_8_64_8_64(v9, v3, location);
    _os_log_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEFAULT, "Result afer reauth: Is token valid? %@. Error: %@", v9, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)isCreateAppleIDAllowedWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v24[0] = 0;
  v24[1] = v24;
  v25 = 838860800;
  v26 = 48;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = MEMORY[0x1E69E5928](selfCopy);
  v22 = _os_activity_create(&dword_193225000, "authkit/create-appleid-allowed", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v23 = v22;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v22, &state);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __74__AKAppleIDAuthenticationController_isCreateAppleIDAllowedWithCompletion___block_invoke;
  v18[3] = &unk_1E73D3B10;
  v19[1] = v24;
  v19[0] = MEMORY[0x1E69E5928](location[0]);
  v20 = MEMORY[0x193B165F0](v18);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __74__AKAppleIDAuthenticationController_isCreateAppleIDAllowedWithCompletion___block_invoke_340;
  v15 = &unk_1E73D3510;
  v16 = MEMORY[0x1E69E5928](v20);
  v17 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:&v11];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  v3 = v17;
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __74__AKAppleIDAuthenticationController_isCreateAppleIDAllowedWithCompletion___block_invoke_341;
  v9 = &unk_1E73D3B38;
  v10 = MEMORY[0x1E69E5928](v20);
  [v3 isCreateAppleIDAllowedWithCompletion:&v5];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(v19, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v23, 0);
  _Block_object_dispose(v24, 8);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

void __74__AKAppleIDAuthenticationController_isCreateAppleIDAllowedWithCompletion___block_invoke(void *a1, char a2, id obj)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = a1;
  v9 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v7[1] = a1;
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  if (location)
  {
    v7[0] = _AKLogSystem();
    v6 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v7[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v12, location);
      _os_log_error_impl(&dword_193225000, v7[0], v6, "Error getting create Apple ID state - %@", v12, 0xCu);
    }

    objc_storeStrong(v7, 0);
  }

  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    if (v9)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    __os_log_helper_16_2_1_8_64(v11, v3);
    _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "Allow create AppleID is determined to be - %@", v11, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  (*(a1[4] + 16))();
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

void __74__AKAppleIDAuthenticationController_isCreateAppleIDAllowedWithCompletion___block_invoke_340(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  if (location[0])
  {
    oslog[0] = _AKLogSystem();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v5, location[0]);
      _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %@", v5, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __74__AKAppleIDAuthenticationController_isCreateAppleIDAllowedWithCompletion___block_invoke_341(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  (*(*(a1 + 32) + 16))();
  objc_storeStrong(&location, 0);
}

- (id)accountNamesForAltDSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v7 = 0;
  v8 = &v7;
  v9 = 838860800;
  v10 = 48;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v6 = [_authenticationServiceConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_343];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  [v6 accountNamesForAltDSID:location[0] completion:?];
  v4 = MEMORY[0x1E69E5928](v8[5]);
  objc_storeStrong(&v6, 0);
  _Block_object_dispose(&v7, 8);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);

  return v4;
}

void __60__AKAppleIDAuthenticationController_accountNamesForAltDSID___block_invoke(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __60__AKAppleIDAuthenticationController_accountNamesForAltDSID___block_invoke_344(void *a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7[1] = a1;
  if (v8)
  {
    v7[0] = _AKLogSystem();
    v6 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v7[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v11, v8);
      _os_log_error_impl(&dword_193225000, v7[0], v6, "Failed to get account name list: %@", v11, 0xCu);
    }

    objc_storeStrong(v7, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v10, location[0]);
      _os_log_debug_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEBUG, "Account name list: %@", v10, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    objc_storeStrong((*(a1[4] + 8) + 40), location[0]);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)fetchURLBagForAltDSID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v38 = 0;
  objc_storeStrong(&v38, completion);
  v32[0] = 0;
  v32[1] = v32;
  v33 = 838860800;
  v34 = 48;
  v35 = __Block_byref_object_copy_;
  v36 = __Block_byref_object_dispose_;
  v37 = MEMORY[0x1E69E5928](selfCopy);
  v30 = _os_activity_create(&dword_193225000, "authkit/fetch-url-bag", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v31 = v30;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v30, &state);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __70__AKAppleIDAuthenticationController_fetchURLBagForAltDSID_completion___block_invoke;
  v26[3] = &unk_1E73D3A70;
  v27[1] = v32;
  v27[0] = MEMORY[0x1E69E5928](v38);
  v28 = MEMORY[0x193B165F0](v26);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v19 = MEMORY[0x1E69E9820];
  v20 = -1073741824;
  v21 = 0;
  v22 = __70__AKAppleIDAuthenticationController_fetchURLBagForAltDSID_completion___block_invoke_2;
  v23 = &unk_1E73D3510;
  v24 = MEMORY[0x1E69E5928](v28);
  v25 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:&v19];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    v7 = type;
    __os_log_helper_16_0_0(v16);
    _os_log_impl(&dword_193225000, log, v7, "Calling out to remote auth service to url bag", v16, 2u);
  }

  objc_storeStrong(&oslog, 0);
  v5 = v25;
  v4 = location[0];
  v10 = MEMORY[0x1E69E9820];
  v11 = -1073741824;
  v12 = 0;
  v13 = __70__AKAppleIDAuthenticationController_fetchURLBagForAltDSID_completion___block_invoke_346;
  v14 = &unk_1E73D3538;
  v15 = MEMORY[0x1E69E5928](v28);
  [v5 fetchURLBagForAltDSID:v4 completion:&v10];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(v27, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v31, 0);
  _Block_object_dispose(v32, 8);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
}

void __70__AKAppleIDAuthenticationController_fetchURLBagForAltDSID_completion___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void __70__AKAppleIDAuthenticationController_fetchURLBagForAltDSID_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_66(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %{public}@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __70__AKAppleIDAuthenticationController_fetchURLBagForAltDSID_completion___block_invoke_346(NSObject *a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_66(v8, v6);
    _os_log_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEFAULT, "Finished fetching URL bag. Error: %{public}@", v8, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)_urlBagFromCache:(BOOL)cache altDSID:(id)d withError:(id *)error
{
  selfCopy = self;
  v38 = a2;
  cacheCopy = cache;
  location = 0;
  objc_storeStrong(&location, d);
  v35[1] = error;
  v34 = _os_activity_create(&dword_193225000, "authkit/fetch-url-bag", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v35[0] = v34;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v34, &state);
  v26 = 0;
  v27 = &v26;
  v28 = 838860800;
  v29 = 48;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v21 = 838860800;
  v22 = 48;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  oslog[1] = MEMORY[0x1E69E9820];
  v14 = -1073741824;
  v15 = 0;
  v16 = __72__AKAppleIDAuthenticationController__urlBagFromCache_altDSID_withError___block_invoke;
  v17 = &unk_1E73D3C50;
  v18 = v20;
  v19 = [_authenticationServiceConnection synchronousRemoteObjectProxyWithErrorHandler:?];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  oslog[0] = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    v8 = type;
    __os_log_helper_16_0_0(v11);
    _os_log_impl(&dword_193225000, log, v8, "Synchronously calling out to remote auth service to url bag", v11, 2u);
  }

  objc_storeStrong(oslog, 0);
  [v19 fetchURLBagFromCache:cacheCopy altDSID:location completion:?];
  v6 = MEMORY[0x1E69E5928](v27[5]);
  objc_storeStrong(&v19, 0);
  _Block_object_dispose(v20, 8);
  objc_storeStrong(&v25, 0);
  _Block_object_dispose(&v26, 8);
  objc_storeStrong(&v32, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(v35, 0);
  objc_storeStrong(&location, 0);

  return v6;
}

void __72__AKAppleIDAuthenticationController__urlBagFromCache_altDSID_withError___block_invoke(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_66(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %{public}@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong((*(a1[4].isa + 1) + 40), location[0]);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __72__AKAppleIDAuthenticationController__urlBagFromCache_altDSID_withError___block_invoke_347(NSObject *a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_66(v8, v6);
    _os_log_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEFAULT, "Finished fetching URL bag. Error: %{public}@", v8, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong((*(a1[4].isa + 1) + 40), location[0]);
  objc_storeStrong((*(a1[5].isa + 1) + 40), v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)forceURLBagUpdateForAltDSID:(id)d urlSwitchData:(id)data completion:(id)completion
{
  v48 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v44 = 0;
  objc_storeStrong(&v44, data);
  v43 = 0;
  objc_storeStrong(&v43, completion);
  v37[0] = 0;
  v37[1] = v37;
  v38 = 838860800;
  v39 = 48;
  v40 = __Block_byref_object_copy_;
  v41 = __Block_byref_object_dispose_;
  v42 = MEMORY[0x1E69E5928](selfCopy);
  v35 = _os_activity_create(&dword_193225000, "authkit/urlbag-update", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v36 = v35;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v35, &state);
  v27 = MEMORY[0x1E69E9820];
  v28 = -1073741824;
  v29 = 0;
  v30 = __90__AKAppleIDAuthenticationController_forceURLBagUpdateForAltDSID_urlSwitchData_completion___block_invoke;
  v31 = &unk_1E73D3B10;
  v32[1] = v37;
  v32[0] = MEMORY[0x1E69E5928](v43);
  v33 = MEMORY[0x193B165F0](&v27);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v20 = MEMORY[0x1E69E9820];
  v21 = -1073741824;
  v22 = 0;
  v23 = __90__AKAppleIDAuthenticationController_forceURLBagUpdateForAltDSID_urlSwitchData_completion___block_invoke_2;
  v24 = &unk_1E73D3510;
  v25 = MEMORY[0x1E69E5928](v33);
  v26 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:&v20];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v47, location[0]);
    _os_log_impl(&dword_193225000, oslog, type, "Synchronously calling out to remote auth service to force update URL Bag for altDSID: %@", v47, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v7 = v26;
  v5 = location[0];
  v6 = v44;
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __90__AKAppleIDAuthenticationController_forceURLBagUpdateForAltDSID_urlSwitchData_completion___block_invoke_348;
  v15 = &unk_1E73D3F20;
  v16 = MEMORY[0x1E69E5928](location[0]);
  v17 = MEMORY[0x1E69E5928](v33);
  [v7 forceURLBagUpdateForAltDSID:v5 urlSwitchData:v6 completion:&v11];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(v32, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v36, 0);
  _Block_object_dispose(v37, 8);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __90__AKAppleIDAuthenticationController_forceURLBagUpdateForAltDSID_urlSwitchData_completion___block_invoke(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), 0);
  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_storeStrong(&location, 0);
}

void __90__AKAppleIDAuthenticationController_forceURLBagUpdateForAltDSID_urlSwitchData_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_66(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %{public}@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __90__AKAppleIDAuthenticationController_forceURLBagUpdateForAltDSID_urlSwitchData_completion___block_invoke_348(uint64_t a1, char a2, id obj)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_3_8_64_4_0_8_64(v8, *(a1 + 32), v6 & 1, location);
    _os_log_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEFAULT, "Finished updating urlbag update for AltDSID: %@ with result: %d error:%@", v8, 0x1Cu);
  }

  objc_storeStrong(oslog, 0);
  (*(*(a1 + 40) + 16))();
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)clearSessionCacheWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v25 = _os_activity_create(&dword_193225000, "authkit/clear-session-cache", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v26 = v25;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v25, &state);
  v18[0] = 0;
  v18[1] = v18;
  v19 = 838860800;
  v20 = 48;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = MEMORY[0x1E69E5928](selfCopy);
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __69__AKAppleIDAuthenticationController_clearSessionCacheWithCompletion___block_invoke;
  v15 = &unk_1E73D3B10;
  v16[1] = v18;
  v16[0] = MEMORY[0x1E69E5928](location[0]);
  v17 = MEMORY[0x193B165F0](&v11);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __69__AKAppleIDAuthenticationController_clearSessionCacheWithCompletion___block_invoke_2;
  v8 = &unk_1E73D3510;
  v9 = MEMORY[0x1E69E5928](v17);
  v10 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:&v4];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  [v10 clearSessionCacheWithCompletion:v17];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(v16, 0);
  _Block_object_dispose(v18, 8);
  objc_storeStrong(&v23, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

void __69__AKAppleIDAuthenticationController_clearSessionCacheWithCompletion___block_invoke(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), 0);
  (*(*(a1 + 32) + 16))();
  objc_storeStrong(&location, 0);
}

void __69__AKAppleIDAuthenticationController_clearSessionCacheWithCompletion___block_invoke_2(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4[1] = a1;
  v4[0] = _AKLogSystem();
  if (os_log_type_enabled(v4[0], OS_LOG_TYPE_ERROR))
  {
    v2 = [location[0] description];
    __os_log_helper_16_2_2_8_32_8_64(v6, "[AKAppleIDAuthenticationController clearSessionCacheWithCompletion:]_block_invoke_2", v2);
    _os_log_error_impl(&dword_193225000, v4[0], OS_LOG_TYPE_ERROR, "Connection to session remote service '%s' returned an error: %@", v6, 0x16u);
    MEMORY[0x1E69E5920](v2);
  }

  objc_storeStrong(v4, 0);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)fetchGlobalConfigurationUsingPolicy:(unint64_t)policy completion:(id)completion
{
  selfCopy = self;
  v39 = a2;
  policyCopy = policy;
  location = 0;
  objc_storeStrong(&location, completion);
  v31[0] = 0;
  v31[1] = v31;
  v32 = 838860800;
  v33 = 48;
  v34 = __Block_byref_object_copy_;
  v35 = __Block_byref_object_dispose_;
  v36 = MEMORY[0x1E69E5928](selfCopy);
  v29 = _os_activity_create(&dword_193225000, "authkit/fetch-global-config", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v30 = v29;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v29, &state);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __84__AKAppleIDAuthenticationController_fetchGlobalConfigurationUsingPolicy_completion___block_invoke;
  v25[3] = &unk_1E73D3A70;
  v26[1] = v31;
  v26[0] = MEMORY[0x1E69E5928](location);
  v27 = MEMORY[0x193B165F0](v25);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v18 = MEMORY[0x1E69E9820];
  v19 = -1073741824;
  v20 = 0;
  v21 = __84__AKAppleIDAuthenticationController_fetchGlobalConfigurationUsingPolicy_completion___block_invoke_2;
  v22 = &unk_1E73D3510;
  v23 = MEMORY[0x1E69E5928](v27);
  v24 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:&v18];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    v7 = type;
    __os_log_helper_16_0_0(v15);
    _os_log_impl(&dword_193225000, log, v7, "Calling out to remote auth service for global config", v15, 2u);
  }

  objc_storeStrong(&oslog, 0);
  v5 = v24;
  v4 = policyCopy;
  v9 = MEMORY[0x1E69E9820];
  v10 = -1073741824;
  v11 = 0;
  v12 = __84__AKAppleIDAuthenticationController_fetchGlobalConfigurationUsingPolicy_completion___block_invoke_349;
  v13 = &unk_1E73D3538;
  v14 = MEMORY[0x1E69E5928](v27);
  [v5 fetchGlobalConfigurationUsingPolicy:v4 completion:&v9];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(v26, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v30, 0);
  _Block_object_dispose(v31, 8);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&location, 0);
}

void __84__AKAppleIDAuthenticationController_fetchGlobalConfigurationUsingPolicy_completion___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void __84__AKAppleIDAuthenticationController_fetchGlobalConfigurationUsingPolicy_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_66(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %{public}@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __84__AKAppleIDAuthenticationController_fetchGlobalConfigurationUsingPolicy_completion___block_invoke_349(NSObject *a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_66(v8, v6);
    _os_log_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEFAULT, "Finished fetching global config. Error: %{public}@", v8, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)performPasswordResetWithContext:(id)context completion:(id)completion
{
  v34 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v30 = 0;
  objc_storeStrong(&v30, completion);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __80__AKAppleIDAuthenticationController_performPasswordResetWithContext_completion___block_invoke;
  v27[3] = &unk_1E73D3538;
  v28 = MEMORY[0x1E69E5928](v30);
  v29 = MEMORY[0x193B165F0](v27);
  v26 = _AKLogSystem();
  v25 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    log = v26;
    type = v25;
    v9 = [location[0] debugDescription];
    v24 = MEMORY[0x1E69E5928](v9);
    __os_log_helper_16_2_1_8_64(v33, v24);
    _os_log_impl(&dword_193225000, log, type, "Request with %@", v33, 0xCu);
    MEMORY[0x1E69E5920](v9);
    objc_storeStrong(&v24, 0);
  }

  objc_storeStrong(&v26, 0);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v17 = MEMORY[0x1E69E9820];
  v18 = -1073741824;
  v19 = 0;
  v20 = __80__AKAppleIDAuthenticationController_performPasswordResetWithContext_completion___block_invoke_350;
  v21 = &unk_1E73D3510;
  v22 = MEMORY[0x1E69E5928](v29);
  v23 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:&v17];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  v6 = v23;
  v5 = location[0];
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __80__AKAppleIDAuthenticationController_performPasswordResetWithContext_completion___block_invoke_351;
  v15 = &unk_1E73D3538;
  v16 = MEMORY[0x1E69E5928](v29);
  [v6 performPasswordResetWithContext:v5 completion:&v11];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __80__AKAppleIDAuthenticationController_performPasswordResetWithContext_completion___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void __80__AKAppleIDAuthenticationController_performPasswordResetWithContext_completion___block_invoke_350(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_66(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %{public}@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  if (a1[4].isa)
  {
    (*(a1[4].isa + 2))();
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __80__AKAppleIDAuthenticationController_performPasswordResetWithContext_completion___block_invoke_351(void *a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13 = 0;
  objc_storeStrong(&v13, a3);
  v12[1] = a1;
  if (v13)
  {
    v12[0] = _AKLogSystem();
    v11 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v12[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_66(v16, v13);
      _os_log_error_impl(&dword_193225000, v12[0], v11, "Remote authentication service returned an error: %{public}@", v16, 0xCu);
    }

    objc_storeStrong(v12, 0);
  }

  else
  {
    v10 = _AKLogSystem();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v10;
      v4 = v9;
      v5 = [location[0] ak_redactedCopy];
      v8 = MEMORY[0x1E69E5928](v5);
      __os_log_helper_16_2_1_8_66(v15, v8);
      _os_log_impl(&dword_193225000, v3, v4, "Remote authentication service came back with: %{public}@", v15, 0xCu);
      MEMORY[0x1E69E5920](v5);
      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(&v10, 0);
  }

  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)deleteDeviceListCacheWithContext:(id)context completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v19 = 0;
  objc_storeStrong(&v19, completion);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __81__AKAppleIDAuthenticationController_deleteDeviceListCacheWithContext_completion___block_invoke;
  v16[3] = &unk_1E73D3510;
  v17 = MEMORY[0x1E69E5928](v19);
  v18 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:v16];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  v15 = _AKLogSystem();
  v14 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_66(v22, location[0]);
    _os_log_debug_impl(&dword_193225000, v15, v14, "Calling out to remote auth service to delete device list cache information for: %{public}@", v22, 0xCu);
  }

  objc_storeStrong(&v15, 0);
  v5 = v18;
  v4 = location[0];
  v8 = MEMORY[0x1E69E9820];
  v9 = -1073741824;
  v10 = 0;
  v11 = __81__AKAppleIDAuthenticationController_deleteDeviceListCacheWithContext_completion___block_invoke_352;
  v12 = &unk_1E73D3B38;
  v13 = MEMORY[0x1E69E5928](v19);
  [v5 deleteDeviceListCacheWithContext:v4 completion:&v8];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __81__AKAppleIDAuthenticationController_deleteDeviceListCacheWithContext_completion___block_invoke(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_66(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %{public}@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  if (a1[4].isa)
  {
    (*(a1[4].isa + 2))();
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __81__AKAppleIDAuthenticationController_deleteDeviceListCacheWithContext_completion___block_invoke_352(NSObject *a1, char a2, id obj)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_4_0_8_64(v8, v6 & 1, location);
    _os_log_debug_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEBUG, "Result of remote call status: %d and error: %@", v8, 0x12u);
  }

  objc_storeStrong(oslog, 0);
  if (a1[4].isa)
  {
    (*(a1[4].isa + 2))();
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)deleteDeviceListCacheWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __73__AKAppleIDAuthenticationController_deleteDeviceListCacheWithCompletion___block_invoke;
  v16[3] = &unk_1E73D3510;
  v17 = MEMORY[0x1E69E5928](location[0]);
  v18 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:v16];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  v15 = _AKLogSystem();
  v14 = 2;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    log = v15;
    type = v14;
    __os_log_helper_16_0_0(v13);
    _os_log_debug_impl(&dword_193225000, log, type, "Calling out to remote auth service to delete device list cache information", v13, 2u);
  }

  objc_storeStrong(&v15, 0);
  v3 = v18;
  v7 = MEMORY[0x1E69E9820];
  v8 = -1073741824;
  v9 = 0;
  v10 = __73__AKAppleIDAuthenticationController_deleteDeviceListCacheWithCompletion___block_invoke_353;
  v11 = &unk_1E73D3B38;
  v12 = MEMORY[0x1E69E5928](location[0]);
  [v3 deleteDeviceListCacheWithCompletion:&v7];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

void __73__AKAppleIDAuthenticationController_deleteDeviceListCacheWithCompletion___block_invoke(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_66(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %{public}@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  if (a1[4].isa)
  {
    (*(a1[4].isa + 2))();
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __73__AKAppleIDAuthenticationController_deleteDeviceListCacheWithCompletion___block_invoke_353(NSObject *a1, char a2, id obj)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_4_0_8_64(v8, v6 & 1, location);
    _os_log_debug_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEBUG, "Result of remote call status: %d and error: %@", v8, 0x12u);
  }

  objc_storeStrong(oslog, 0);
  if (a1[4].isa)
  {
    (*(a1[4].isa + 2))();
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)fetchTokensWithAltDSID:(id)d tokenIdentifiers:(id)identifiers completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v26 = 0;
  objc_storeStrong(&v26, identifiers);
  v25 = 0;
  objc_storeStrong(&v25, completion);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __88__AKAppleIDAuthenticationController_fetchTokensWithAltDSID_tokenIdentifiers_completion___block_invoke;
  v22[3] = &unk_1E73D3510;
  v23 = MEMORY[0x1E69E5928](v25);
  v24 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:v22];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  v21 = _AKLogSystem();
  v20 = 2;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    log = v21;
    type = v20;
    __os_log_helper_16_0_0(v19);
    _os_log_debug_impl(&dword_193225000, log, type, "Calling out to remote auth service to fetch tokens", v19, 2u);
  }

  objc_storeStrong(&v21, 0);
  v7 = v24;
  v5 = location[0];
  v6 = v26;
  v13 = MEMORY[0x1E69E9820];
  v14 = -1073741824;
  v15 = 0;
  v16 = __88__AKAppleIDAuthenticationController_fetchTokensWithAltDSID_tokenIdentifiers_completion___block_invoke_354;
  v17 = &unk_1E73D3538;
  v18 = MEMORY[0x1E69E5928](v25);
  [v7 fetchTokensWithAltDSID:v5 tokenIdentifiers:v6 completion:&v13];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

void __88__AKAppleIDAuthenticationController_fetchTokensWithAltDSID_tokenIdentifiers_completion___block_invoke(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_66(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %{public}@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  if (a1[4].isa)
  {
    (*(a1[4].isa + 2))();
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __88__AKAppleIDAuthenticationController_fetchTokensWithAltDSID_tokenIdentifiers_completion___block_invoke_354(NSObject *a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v8, location[0], v6);
    _os_log_debug_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEBUG, "Result of fetch tokens remote call data: %@ and error: %@", v8, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  if (a1[4].isa)
  {
    (*(a1[4].isa + 2))();
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)deleteTokensFromCacheWithAltDSID:(id)d tokenIdentifiers:(id)identifiers completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v26 = 0;
  objc_storeStrong(&v26, identifiers);
  v25 = 0;
  objc_storeStrong(&v25, completion);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __98__AKAppleIDAuthenticationController_deleteTokensFromCacheWithAltDSID_tokenIdentifiers_completion___block_invoke;
  v22[3] = &unk_1E73D3510;
  v23 = MEMORY[0x1E69E5928](v25);
  v24 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:v22];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  v21 = _AKLogSystem();
  v20 = 2;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    log = v21;
    type = v20;
    __os_log_helper_16_0_0(v19);
    _os_log_debug_impl(&dword_193225000, log, type, "Calling out to remote auth service to delete tokens", v19, 2u);
  }

  objc_storeStrong(&v21, 0);
  v7 = v24;
  v5 = location[0];
  v6 = v26;
  v13 = MEMORY[0x1E69E9820];
  v14 = -1073741824;
  v15 = 0;
  v16 = __98__AKAppleIDAuthenticationController_deleteTokensFromCacheWithAltDSID_tokenIdentifiers_completion___block_invoke_355;
  v17 = &unk_1E73D3B38;
  v18 = MEMORY[0x1E69E5928](v25);
  [v7 deleteTokensFromCacheWithAltDSID:v5 tokenIdentifiers:v6 completion:&v13];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

void __98__AKAppleIDAuthenticationController_deleteTokensFromCacheWithAltDSID_tokenIdentifiers_completion___block_invoke(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_66(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %{public}@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  if (a1[4].isa)
  {
    (*(a1[4].isa + 2))();
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __98__AKAppleIDAuthenticationController_deleteTokensFromCacheWithAltDSID_tokenIdentifiers_completion___block_invoke_355(NSObject *a1, char a2, id obj)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_4_0_8_64(v8, v6 & 1, location);
    _os_log_debug_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEBUG, "Result of delete tokens remote call result: %d and error: %@", v8, 0x12u);
  }

  objc_storeStrong(oslog, 0);
  if (a1[4].isa)
  {
    (*(a1[4].isa + 2))();
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)refreshBAADeviceTokenWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __73__AKAppleIDAuthenticationController_refreshBAADeviceTokenWithCompletion___block_invoke;
  v16[3] = &unk_1E73D3510;
  v17 = MEMORY[0x1E69E5928](location[0]);
  v18 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:v16];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  v15 = _AKLogSystem();
  v14 = 2;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    log = v15;
    type = v14;
    __os_log_helper_16_0_0(v13);
    _os_log_debug_impl(&dword_193225000, log, type, "Calling out to remote auth service to refresh BAA Device Token", v13, 2u);
  }

  objc_storeStrong(&v15, 0);
  v3 = v18;
  v7 = MEMORY[0x1E69E9820];
  v8 = -1073741824;
  v9 = 0;
  v10 = __73__AKAppleIDAuthenticationController_refreshBAADeviceTokenWithCompletion___block_invoke_356;
  v11 = &unk_1E73D3B38;
  v12 = MEMORY[0x1E69E5928](location[0]);
  [v3 refreshBAADeviceTokenWithCompletion:&v7];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

void __73__AKAppleIDAuthenticationController_refreshBAADeviceTokenWithCompletion___block_invoke(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_66(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %{public}@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  if (a1[4].isa)
  {
    (*(a1[4].isa + 2))();
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __73__AKAppleIDAuthenticationController_refreshBAADeviceTokenWithCompletion___block_invoke_356(NSObject *a1, char a2, id obj)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_4_0_8_64(v8, v6 & 1, location);
    _os_log_debug_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEBUG, "Result of refresh BAA Device Token remote call result: %d and error: %@", v8, 0x12u);
  }

  objc_storeStrong(oslog, 0);
  if (a1[4].isa)
  {
    (*(a1[4].isa + 2))();
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)fetchBAADeviceTokenWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __71__AKAppleIDAuthenticationController_fetchBAADeviceTokenWithCompletion___block_invoke;
  v16[3] = &unk_1E73D3510;
  v17 = MEMORY[0x1E69E5928](location[0]);
  v18 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:v16];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  v15 = _AKLogSystem();
  v14 = 2;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    log = v15;
    type = v14;
    __os_log_helper_16_0_0(v13);
    _os_log_debug_impl(&dword_193225000, log, type, "Calling out to remote auth service to fetch BAA Device Token", v13, 2u);
  }

  objc_storeStrong(&v15, 0);
  v3 = v18;
  v7 = MEMORY[0x1E69E9820];
  v8 = -1073741824;
  v9 = 0;
  v10 = __71__AKAppleIDAuthenticationController_fetchBAADeviceTokenWithCompletion___block_invoke_357;
  v11 = &unk_1E73D3F48;
  v12 = MEMORY[0x1E69E5928](location[0]);
  [v3 fetchBAADeviceTokenWithCompletion:&v7];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

void __71__AKAppleIDAuthenticationController_fetchBAADeviceTokenWithCompletion___block_invoke(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_66(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %{public}@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  if (a1[4].isa)
  {
    (*(a1[4].isa + 2))();
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __71__AKAppleIDAuthenticationController_fetchBAADeviceTokenWithCompletion___block_invoke_357(NSObject *a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v8, location[0], v6);
    _os_log_debug_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEBUG, "Result of fetch BAA Device Token remote call result: %@ and error: %@", v8, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  if (a1[4].isa)
  {
    (*(a1[4].isa + 2))();
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)shieldSignInOrCreateFlowsWithError:(id *)error
{
  selfCopy = self;
  v30[2] = a2;
  v30[1] = error;
  v29 = _os_activity_create(&dword_193225000, "authkit/shield-sign-in-create-flows", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v30[0] = v29;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v29, &state);
  v23 = 0;
  v24 = &v23;
  v25 = 0x20000000;
  v26 = 32;
  v27 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v18 = 838860800;
  v19 = 48;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  oslog[1] = MEMORY[0x1E69E9820];
  v11 = -1073741824;
  v12 = 0;
  v13 = __72__AKAppleIDAuthenticationController_shieldSignInOrCreateFlowsWithError___block_invoke;
  v14 = &unk_1E73D3C50;
  v15 = v17;
  location = [_authenticationServiceConnection synchronousRemoteObjectProxyWithErrorHandler:?];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  oslog[0] = _AKLogSystem();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    log = oslog[0];
    v6 = type;
    __os_log_helper_16_0_0(v8);
    _os_log_debug_impl(&dword_193225000, log, v6, "Calling out to remote auth service to see if we should shield sign in or create flows.", v8, 2u);
  }

  objc_storeStrong(oslog, 0);
  [location checkSignInOrCreateFlowShieldingWithCompletion:?];
  v4 = *(v24 + 24);
  objc_storeStrong(&location, 0);
  _Block_object_dispose(v17, 8);
  objc_storeStrong(&v22, 0);
  _Block_object_dispose(&v23, 8);
  os_activity_scope_leave(&state);
  objc_storeStrong(v30, 0);
  return v4 & 1;
}

void __72__AKAppleIDAuthenticationController_shieldSignInOrCreateFlowsWithError___block_invoke(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_66(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %{public}@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong((*(a1[4].isa + 1) + 40), location[0]);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)_serverFriendlyUsername:(id)username
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, username);
  if (![location[0] length] || objc_msgSend(location[0], "containsString:", @"@"))
  {
    v7 = MEMORY[0x1E69E5928](location[0]);
  }

  else
  {
    if (AAAFoundationSwiftLibraryCore(0))
    {
      getAAFPhoneNumberFormatterClass();
    }

    v5 = objc_opt_new();
    v7 = [v5 normalizedFormatFor:location[0]];
    objc_storeStrong(&v5, 0);
  }

  objc_storeStrong(location, 0);
  v3 = v7;

  return v3;
}

- (void)fetchBirthdayForAltDSID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v35 = 0;
  objc_storeStrong(&v35, completion);
  v29[0] = 0;
  v29[1] = v29;
  v30 = 838860800;
  v31 = 48;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = MEMORY[0x1E69E5928](selfCopy);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __72__AKAppleIDAuthenticationController_fetchBirthdayForAltDSID_completion___block_invoke;
  v26[3] = &unk_1E73D3F98;
  v27[1] = v29;
  v27[0] = MEMORY[0x1E69E5928](v35);
  v28 = MEMORY[0x193B165F0](v26);
  _authenticationServiceConnection = [(AKAppleIDAuthenticationController *)selfCopy _authenticationServiceConnection];
  v19 = MEMORY[0x1E69E9820];
  v20 = -1073741824;
  v21 = 0;
  v22 = __72__AKAppleIDAuthenticationController_fetchBirthdayForAltDSID_completion___block_invoke_2;
  v23 = &unk_1E73D3510;
  v24 = MEMORY[0x1E69E5928](v28);
  v25 = [_authenticationServiceConnection remoteObjectProxyWithErrorHandler:&v19];
  MEMORY[0x1E69E5920](_authenticationServiceConnection);
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    log = oslog;
    v7 = type;
    __os_log_helper_16_0_0(v16);
    _os_log_debug_impl(&dword_193225000, log, v7, "Calling out to remote auth service to fetch birthday", v16, 2u);
  }

  objc_storeStrong(&oslog, 0);
  v5 = v25;
  v4 = location[0];
  v10 = MEMORY[0x1E69E9820];
  v11 = -1073741824;
  v12 = 0;
  v13 = __72__AKAppleIDAuthenticationController_fetchBirthdayForAltDSID_completion___block_invoke_364;
  v14 = &unk_1E73D3FC0;
  v15 = MEMORY[0x1E69E5928](v28);
  [v5 fetchBirthdayForAltDSID:v4 completion:&v10];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(v27, 0);
  _Block_object_dispose(v29, 8);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
}

void __72__AKAppleIDAuthenticationController_fetchBirthdayForAltDSID_completion___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

void __72__AKAppleIDAuthenticationController_fetchBirthdayForAltDSID_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_66(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %{public}@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __72__AKAppleIDAuthenticationController_fetchBirthdayForAltDSID_completion___block_invoke_364(NSObject *a1, void *a2, void *a3, void *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_3_8_64_8_64_8_64(v11, location[0], v9, v8);
    _os_log_debug_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEBUG, "Result of fetch birthday - %@-%@, with error - %@", v11, 0x20u);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

@end