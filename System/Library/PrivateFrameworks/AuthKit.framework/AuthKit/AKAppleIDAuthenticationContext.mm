@interface AKAppleIDAuthenticationContext
+ (id)_identifierForContext:(id)context;
- (AKAppleIDAuthenticationContext)init;
- (AKAppleIDAuthenticationContext)initWithAuthenticatedServerRequestContext:(id)context;
- (AKAppleIDAuthenticationContext)initWithCoder:(id)coder;
- (AKAppleIDAuthenticationContext)initWithContext:(id)context;
- (BOOL)_isEligibleForPasscodeAuth;
- (BOOL)_localUserHasEmptyPassword;
- (BOOL)_requiresPasswordInput;
- (BOOL)isConfiguredForAccountCreation;
- (BOOL)isConfiguredForTokenUpgrade;
- (BOOL)isContextEligibleForBiometricOrPasscodeAuth;
- (BOOL)isContextEligibleForPasscodeAuth;
- (BOOL)isContextEligibleForSilentAuth;
- (BOOL)isContextEligibleForSilentAuthCoercion;
- (BOOL)isContextRequestingReauthForExistingService;
- (NSString)_interpolatedReason;
- (NSString)_interpolatedReasonWithBlame;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)serviceIdentifier;
- (id)_appendBlameIfRequiredTo:(id)to;
- (id)_initWithIdentifier:(id)identifier;
- (id)_sanitizedCopy;
- (id)_secondFactorQueue;
- (id)authKitAccount:(id *)account;
- (id)authKitAccountForSilentServiceToken:(id *)token;
- (unint64_t)_capabilityForUIDisplay;
- (void)_handleSecondFactorCodeEntry;
- (void)_setPassword:(id)password;
- (void)_startListeningForSecondFactorCodeEntryNotification;
- (void)_stopListeningForSecondFactorCodeEntryNotification;
- (void)_updateWithValuesFromContext:(id)context;
- (void)dismissBasicLoginUIWithCompletion:(id)completion;
- (void)dismissSecondFactorUIWithCompletion:(id)completion;
- (void)encodeWithCoder:(id)coder;
- (void)isConfiguredForTokenUpgradeWithCompletion:(id)completion;
- (void)presentBasicLoginUIWithCompletion:(id)completion;
- (void)presentBiometricOrPasscodeValidationForAppleID:(id)d completion:(id)completion;
- (void)presentLoginAlertWithError:(id)error title:(id)title message:(id)message completion:(id)completion;
- (void)presentSecondFactorAlertWithError:(id)error title:(id)title message:(id)message completion:(id)completion;
- (void)presentSecondFactorUIWithCompletion:(id)completion;
- (void)setCompanionDevice:(id)device;
- (void)setDeviceClass:(id)class;
- (void)setDeviceColor:(id)color;
- (void)setDeviceEnclosureColor:(id)color;
- (void)setGeneratedCode:(id)code;
- (void)setLatitude:(id)latitude;
- (void)setLongitude:(id)longitude;
- (void)setNotificationDisclaimer:(id)disclaimer;
- (void)setProxiedDevice:(id)device;
- (void)setReason:(id)reason;
- (void)setRequestedNewAccountAgeRange:(unint64_t)range;
- (void)setServiceIdentifier:(id)identifier;
- (void)setShouldForceInteractiveAuth:(BOOL)auth;
- (void)setShouldPreventInteractiveAuth:(BOOL)auth;
- (void)setUsername:(id)username;
@end

@implementation AKAppleIDAuthenticationContext

- (BOOL)isConfiguredForAccountCreation
{
  v3 = 1;
  if (![(AKAppleIDAuthenticationContext *)self needsNewAppleID])
  {
    return [(AKAppleIDAuthenticationContext *)self needsNewChildAccount];
  }

  return v3;
}

- (id)authKitAccount:(id *)account
{
  v47 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v42 = a2;
  accountCopy = account;
  v40 = 0;
  v39 = 0;
  altDSID = [(AKAppleIDAuthenticationContext *)self altDSID];
  dSID = [(AKAppleIDAuthenticationContext *)selfCopy DSID];
  username = [(AKAppleIDAuthenticationContext *)selfCopy username];
  if ([altDSID length])
  {
    v26 = +[AKAccountManager sharedInstance];
    v3 = [(AKAccountManager *)v26 authKitAccountWithAltDSID:altDSID error:0];
    v4 = v40;
    v40 = v3;
    MEMORY[0x1E69E5920](v4);
    MEMORY[0x1E69E5920](v26);
    if (!v40)
    {
      location = _AKLogSystem();
      v34 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_64(v46, altDSID);
        _os_log_impl(&dword_193225000, location, v34, "No existing IdMS account for altDSID %@", v46, 0xCu);
      }

      objc_storeStrong(&location, 0);
      v5 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7055];
      v6 = v39;
      v39 = v5;
      MEMORY[0x1E69E5920](v6);
    }
  }

  else if ([dSID length])
  {
    v25 = +[AKAccountManager sharedInstance];
    v24 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(dSID, "longLongValue")}];
    v7 = [(AKAccountManager *)v25 authKitAccountWithDSID:?];
    v8 = v40;
    v40 = v7;
    MEMORY[0x1E69E5920](v8);
    MEMORY[0x1E69E5920](v24);
    MEMORY[0x1E69E5920](v25);
    if (!v40)
    {
      v33 = _AKLogSystem();
      v32 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_64(v45, dSID);
        _os_log_impl(&dword_193225000, v33, v32, "No existing IdMS account for DSID %@", v45, 0xCu);
      }

      objc_storeStrong(&v33, 0);
      v9 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7067];
      v10 = v39;
      v39 = v9;
      MEMORY[0x1E69E5920](v10);
    }
  }

  else if ([username length])
  {
    v23 = +[AKAccountManager sharedInstance];
    v11 = [(AKAccountManager *)v23 authKitAccountWithAppleID:username error:0];
    v12 = v40;
    v40 = v11;
    MEMORY[0x1E69E5920](v12);
    MEMORY[0x1E69E5920](v23);
    if (!v40)
    {
      v31 = _AKLogSystem();
      v30 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_64(v44, username);
        _os_log_impl(&dword_193225000, v31, v30, "No existing IdMS account for username %@", v44, 0xCu);
      }

      objc_storeStrong(&v31, 0);
      v13 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7023];
      v14 = v39;
      v39 = v13;
      MEMORY[0x1E69E5920](v14);
    }
  }

  else
  {
    oslog = _AKLogSystem();
    v28 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v21 = oslog;
      v22 = v28;
      __os_log_helper_16_0_0(v27);
      _os_log_impl(&dword_193225000, v21, v22, "No altDSID, DSID or username passed on context, unable to find account", v27, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v15 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7044];
    v16 = v39;
    v39 = v15;
    MEMORY[0x1E69E5920](v16);
  }

  if (accountCopy)
  {
    v20 = v39;
    v17 = v39;
    *accountCopy = v20;
  }

  v19 = MEMORY[0x1E69E5928](v40);
  objc_storeStrong(&username, 0);
  objc_storeStrong(&dSID, 0);
  objc_storeStrong(&altDSID, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  *MEMORY[0x1E69E9840];

  return v19;
}

- (id)authKitAccountForSilentServiceToken:(id *)token
{
  selfCopy = self;
  v14 = a2;
  tokenCopy = token;
  *(&v12 + 1) = [(AKAppleIDAuthenticationContext *)self username];
  *&v12 = [(AKAppleIDAuthenticationContext *)selfCopy altDSID];
  if (v12 == 0 || [(AKAppleIDAuthenticationContext *)selfCopy isUsernameEditable])
  {
    location = _AKLogSystem();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      log = location;
      type = v10;
      __os_log_helper_16_0_0(v9);
      _os_log_impl(&dword_193225000, log, type, "Cannot pull up IDMS account without immutable username or altDSID.", v9, 2u);
    }

    objc_storeStrong(&location, 0);
    if (tokenCopy)
    {
      v6 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7044];
      v3 = v6;
      *tokenCopy = v6;
    }

    v16 = 0;
  }

  else
  {
    v16 = [(AKAppleIDAuthenticationContext *)selfCopy authKitAccount:tokenCopy];
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v12 + 1, 0);
  v4 = v16;

  return v4;
}

- (AKAppleIDAuthenticationContext)init
{
  selfCopy = self;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  selfCopy = 0;
  selfCopy = [(AKAppleIDAuthenticationContext *)self _initWithIdentifier:?];
  v5 = MEMORY[0x1E69E5928](selfCopy);
  MEMORY[0x1E69E5920](uUID);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (id)_initWithIdentifier:(id)identifier
{
  v18[1] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v3 = selfCopy;
  selfCopy = 0;
  v15.receiver = v3;
  v15.super_class = AKAppleIDAuthenticationContext;
  selfCopy = [(AKAppleIDAuthenticationContext *)&v15 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v4 = [location[0] copy];
    identifier = selfCopy->_identifier;
    selfCopy->_identifier = v4;
    MEMORY[0x1E69E5920](identifier);
    selfCopy->_isUsernameEditable = 1;
    selfCopy->_isPasswordEditable = 1;
    selfCopy->_shouldSendIdentityTokenForRemoteUI = 1;
    selfCopy->_shouldSendGrandSlamTokensForRemoteUI = 1;
    selfCopy->_maximumLoginAttempts = 3;
    selfCopy->_shouldUpdatePersistentServiceTokens = 1;
    v12 = MEMORY[0x1E695DFD8];
    v18[0] = @"AKAuthenticationInternalTokenCK";
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v6 = [v12 setWithArray:?];
    desiredInternalTokens = selfCopy->_desiredInternalTokens;
    selfCopy->_desiredInternalTokens = v6;
    MEMORY[0x1E69E5920](desiredInternalTokens);
    MEMORY[0x1E69E5920](v13);
    objc_storeStrong(&selfCopy->_securityUpgradeContext, @"com.apple.authkit.generic");
    selfCopy->_supportsPiggybacking = 0;
    selfCopy->_enablePasscodeAuth = 1;
    selfCopy->_passcodeOnlyPolicy = 0;
    selfCopy->_biometricSkipPasscodeFallback = 0;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    telemetryFlowID = selfCopy->_telemetryFlowID;
    selfCopy->_telemetryFlowID = uUIDString;
    MEMORY[0x1E69E5920](telemetryFlowID);
    MEMORY[0x1E69E5920](uUID);
    selfCopy->_isRequestedFromOOPViewService = 0;
    selfCopy->_shouldRequestConfigurationInfo = 1;
    selfCopy->_allowAuthenticationBeforeFirstUnlock = 0;
  }

  v11 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  *MEMORY[0x1E69E9840];
  return v11;
}

- (AKAppleIDAuthenticationContext)initWithAuthenticatedServerRequestContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v3 = selfCopy;
  selfCopy = 0;
  v11.receiver = v3;
  v11.super_class = AKAppleIDAuthenticationContext;
  v10 = [(AKAppleIDAuthenticationContext *)&v11 init];
  selfCopy = v10;
  objc_storeStrong(&selfCopy, v10);
  if (v10)
  {
    v4 = [objc_opt_class() _identifierForContext:location[0]];
    identifier = selfCopy->_identifier;
    selfCopy->_identifier = v4;
    MEMORY[0x1E69E5920](identifier);
    altDSID = [location[0] altDSID];
    altDSID = selfCopy->_altDSID;
    selfCopy->_altDSID = altDSID;
    MEMORY[0x1E69E5920](altDSID);
  }

  v9 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (AKAppleIDAuthenticationContext)initWithContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v3 = selfCopy;
  selfCopy = 0;
  v22.receiver = v3;
  v22.super_class = AKAppleIDAuthenticationContext;
  v21 = [(AKAppleIDAuthenticationContext *)&v22 init];
  selfCopy = v21;
  objc_storeStrong(&selfCopy, v21);
  if (v21)
  {
    v4 = [objc_opt_class() _identifierForContext:location[0]];
    identifier = selfCopy->_identifier;
    selfCopy->_identifier = v4;
    MEMORY[0x1E69E5920](identifier);
    _proxiedAppName = [location[0] _proxiedAppName];
    proxiedAppName = selfCopy->_proxiedAppName;
    selfCopy->_proxiedAppName = _proxiedAppName;
    MEMORY[0x1E69E5920](proxiedAppName);
    altDSID = [location[0] altDSID];
    altDSID = selfCopy->_altDSID;
    selfCopy->_altDSID = altDSID;
    MEMORY[0x1E69E5920](altDSID);
    appProvidedData = [location[0] appProvidedData];
    appProvidedData = selfCopy->_appProvidedData;
    selfCopy->_appProvidedData = appProvidedData;
    MEMORY[0x1E69E5920](appProvidedData);
    companionDevice = [location[0] companionDevice];
    companionDevice = selfCopy->_companionDevice;
    selfCopy->_companionDevice = companionDevice;
    MEMORY[0x1E69E5920](companionDevice);
    proxiedDevice = [location[0] proxiedDevice];
    proxiedDevice = selfCopy->_proxiedDevice;
    selfCopy->_proxiedDevice = proxiedDevice;
    MEMORY[0x1E69E5920](proxiedDevice);
    serviceType = [location[0] serviceType];
    selfCopy->_serviceType = serviceType;
    appProvidedContext = [location[0] appProvidedContext];
    appProvidedContext = selfCopy->_appProvidedContext;
    selfCopy->_appProvidedContext = appProvidedContext;
    MEMORY[0x1E69E5920](appProvidedContext);
  }

  v20 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v20;
}

- (AKAppleIDAuthenticationContext)initWithCoder:(id)coder
{
  v416[2] = *MEMORY[0x1E69E9840];
  v411 = &selfCopy;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v412.receiver = v3;
  v412.super_class = AKAppleIDAuthenticationContext;
  selfCopy = [(AKAppleIDAuthenticationContext *)&v412 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v288 = location[0];
    v408 = 0x1E696A000uLL;
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_reason"];
    reason = selfCopy->_reason;
    selfCopy->_reason = v4;
    MEMORY[0x1E69E5920](reason);
    v289 = location[0];
    v6 = *(v408 + 3776);
    v7 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_username"];
    username = selfCopy->_username;
    selfCopy->_username = v7;
    MEMORY[0x1E69E5920](username);
    v290 = location[0];
    v380 = 0x1E696A000uLL;
    v291 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_isUsernameEditable"];
    bOOLValue = [v291 BOOLValue];
    v10 = v291;
    selfCopy->_isUsernameEditable = bOOLValue;
    MEMORY[0x1E69E5920](v10);
    v292 = location[0];
    v11 = *(v408 + 3776);
    v12 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_DSID"];
    DSID = selfCopy->_DSID;
    selfCopy->_DSID = v12;
    MEMORY[0x1E69E5920](DSID);
    v293 = location[0];
    v14 = *(v408 + 3776);
    v15 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = selfCopy->_altDSID;
    selfCopy->_altDSID = v15;
    MEMORY[0x1E69E5920](altDSID);
    v294 = location[0];
    v17 = *(v408 + 3776);
    v18 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_telemetryDeviceSessionID"];
    telemetryDeviceSessionID = selfCopy->_telemetryDeviceSessionID;
    selfCopy->_telemetryDeviceSessionID = v18;
    MEMORY[0x1E69E5920](telemetryDeviceSessionID);
    v295 = location[0];
    v20 = *(v408 + 3776);
    v21 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_telemetryFlowID"];
    telemetryFlowID = selfCopy->_telemetryFlowID;
    selfCopy->_telemetryFlowID = v21;
    MEMORY[0x1E69E5920](telemetryFlowID);
    v296 = location[0];
    v23 = *(v408 + 3776);
    v24 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_dependentAltDSID"];
    dependentAltDSID = selfCopy->_dependentAltDSID;
    selfCopy->_dependentAltDSID = v24;
    MEMORY[0x1E69E5920](dependentAltDSID);
    v297 = location[0];
    v26 = *(v380 + 3480);
    v298 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_isProxyingForApp"];
    bOOLValue2 = [v298 BOOLValue];
    v28 = v298;
    selfCopy->_isProxyingForApp = bOOLValue2;
    MEMORY[0x1E69E5920](v28);
    v299 = location[0];
    v29 = *(v408 + 3776);
    v30 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_proxiedAppBundleID"];
    proxiedAppBundleID = selfCopy->_proxiedAppBundleID;
    selfCopy->_proxiedAppBundleID = v30;
    MEMORY[0x1E69E5920](proxiedAppBundleID);
    v300 = location[0];
    v32 = *(v408 + 3776);
    v33 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_proxiedAppName"];
    proxiedAppName = selfCopy->_proxiedAppName;
    selfCopy->_proxiedAppName = v33;
    MEMORY[0x1E69E5920](proxiedAppName);
    v303 = location[0];
    v377 = 0x1E695D000uLL;
    v302 = MEMORY[0x1E695DFD8];
    v379 = 0x1E695D000uLL;
    v301 = objc_opt_class();
    v35 = *(v408 + 3776);
    v304 = [v302 setWithObjects:{v301, objc_opt_class(), 0}];
    v36 = [v303 decodeObjectOfClasses:? forKey:?];
    serviceIdentifiers = selfCopy->_serviceIdentifiers;
    selfCopy->_serviceIdentifiers = v36;
    MEMORY[0x1E69E5920](serviceIdentifiers);
    MEMORY[0x1E69E5920](v304);
    v305 = location[0];
    v38 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = selfCopy->_identifier;
    selfCopy->_identifier = v38;
    MEMORY[0x1E69E5920](identifier);
    v306 = location[0];
    v40 = *(v380 + 3480);
    v307 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_serviceType"];
    integerValue = [v307 integerValue];
    v42 = v307;
    selfCopy->_serviceType = integerValue;
    MEMORY[0x1E69E5920](v42);
    v308 = location[0];
    v43 = *(v380 + 3480);
    v309 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_maximumLoginAttempts"];
    integerValue2 = [v309 integerValue];
    v45 = v309;
    selfCopy->_maximumLoginAttempts = integerValue2;
    MEMORY[0x1E69E5920](v45);
    v310 = location[0];
    v46 = *(v380 + 3480);
    v311 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_isEphemeral"];
    bOOLValue3 = [v311 BOOLValue];
    v48 = v311;
    selfCopy->_isEphemeral = bOOLValue3;
    MEMORY[0x1E69E5920](v48);
    v312 = location[0];
    v49 = *(v380 + 3480);
    v313 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_shouldAllowAppleIDCreation"];
    bOOLValue4 = [v313 BOOLValue];
    v51 = v313;
    selfCopy->_shouldAllowAppleIDCreation = bOOLValue4;
    MEMORY[0x1E69E5920](v51);
    v314 = location[0];
    v52 = *(v380 + 3480);
    v315 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_shouldPromptForPasswordOnly"];
    bOOLValue5 = [v315 BOOLValue];
    v54 = v315;
    selfCopy->_shouldPromptForPasswordOnly = bOOLValue5;
    MEMORY[0x1E69E5920](v54);
    v316 = location[0];
    v55 = *(v408 + 3776);
    v56 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_passwordPromptTitle"];
    passwordPromptTitle = selfCopy->_passwordPromptTitle;
    selfCopy->_passwordPromptTitle = v56;
    MEMORY[0x1E69E5920](passwordPromptTitle);
    v317 = location[0];
    v58 = *(v408 + 3776);
    v59 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_defaultButtonString"];
    defaultButtonString = selfCopy->_defaultButtonString;
    selfCopy->_defaultButtonString = v59;
    MEMORY[0x1E69E5920](defaultButtonString);
    v320 = location[0];
    v319 = *(v377 + 4056);
    v378 = 0x1E695D000uLL;
    v61 = objc_opt_class();
    v318 = v416;
    v416[0] = v61;
    v62 = *(v408 + 3776);
    v416[1] = objc_opt_class();
    v63 = *(v379 + 3784);
    v368 = 2;
    v322 = [v63 arrayWithObjects:v318 count:?];
    v321 = [v319 setWithArray:?];
    v64 = [v320 decodeObjectOfClasses:? forKey:?];
    httpHeadersForRemoteUI = selfCopy->_httpHeadersForRemoteUI;
    selfCopy->_httpHeadersForRemoteUI = v64;
    MEMORY[0x1E69E5920](httpHeadersForRemoteUI);
    MEMORY[0x1E69E5920](v321);
    MEMORY[0x1E69E5920](v322);
    v323 = location[0];
    v66 = *(v408 + 3776);
    v67 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_remoteUIIdentityToken"];
    remoteUIIdentityToken = selfCopy->_remoteUIIdentityToken;
    selfCopy->_remoteUIIdentityToken = v67;
    MEMORY[0x1E69E5920](remoteUIIdentityToken);
    v324 = location[0];
    v69 = *(v408 + 3776);
    v70 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_password"];
    password = selfCopy->_password;
    selfCopy->_password = v70;
    MEMORY[0x1E69E5920](password);
    v325 = location[0];
    v72 = *(v380 + 3480);
    v326 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_isPasswordEditable"];
    bOOLValue6 = [v326 BOOLValue];
    v74 = v326;
    selfCopy->_isPasswordEditable = bOOLValue6;
    MEMORY[0x1E69E5920](v74);
    v327 = location[0];
    v75 = *(v380 + 3480);
    v328 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_shouldUpdatePersistentServiceTokens"];
    bOOLValue7 = [v328 BOOLValue];
    v77 = v328;
    selfCopy->_shouldUpdatePersistentServiceTokens = bOOLValue7;
    MEMORY[0x1E69E5920](v77);
    v329 = location[0];
    v78 = *(v380 + 3480);
    v330 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_shouldOfferSecurityUpgrade"];
    bOOLValue8 = [v330 BOOLValue];
    v80 = v330;
    selfCopy->_shouldOfferSecurityUpgrade = bOOLValue8;
    MEMORY[0x1E69E5920](v80);
    v331 = location[0];
    v81 = *(v380 + 3480);
    v332 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_needsCredentialRecovery"];
    bOOLValue9 = [v332 BOOLValue];
    v83 = v332;
    selfCopy->_needsCredentialRecovery = bOOLValue9;
    MEMORY[0x1E69E5920](v83);
    v333 = location[0];
    v84 = *(v380 + 3480);
    v334 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_needsNewAppleID"];
    bOOLValue10 = [v334 BOOLValue];
    v86 = v334;
    selfCopy->_needsNewAppleID = bOOLValue10;
    MEMORY[0x1E69E5920](v86);
    v335 = location[0];
    v87 = *(v380 + 3480);
    v336 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_needsPasswordChange"];
    bOOLValue11 = [v336 BOOLValue];
    v89 = v336;
    selfCopy->_needsPasswordChange = bOOLValue11;
    MEMORY[0x1E69E5920](v89);
    v337 = location[0];
    v90 = *(v380 + 3480);
    v338 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_shouldPreventInteractiveAuth"];
    bOOLValue12 = [v338 BOOLValue];
    v92 = v338;
    selfCopy->_shouldPreventInteractiveAuth = bOOLValue12;
    MEMORY[0x1E69E5920](v92);
    v339 = location[0];
    v93 = *(v408 + 3776);
    v94 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_generatedCode"];
    generatedCode = selfCopy->_generatedCode;
    selfCopy->_generatedCode = v94;
    MEMORY[0x1E69E5920](generatedCode);
    v340 = location[0];
    v96 = *(v380 + 3480);
    v97 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_latitude"];
    latitude = selfCopy->_latitude;
    selfCopy->_latitude = v97;
    MEMORY[0x1E69E5920](latitude);
    v341 = location[0];
    v99 = *(v380 + 3480);
    v100 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_longitude"];
    longitude = selfCopy->_longitude;
    selfCopy->_longitude = v100;
    MEMORY[0x1E69E5920](longitude);
    v342 = location[0];
    v102 = *(v408 + 3776);
    v103 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_deviceClass"];
    deviceClass = selfCopy->_deviceClass;
    selfCopy->_deviceClass = v103;
    MEMORY[0x1E69E5920](deviceClass);
    v343 = location[0];
    v105 = *(v408 + 3776);
    v106 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_deviceColor"];
    deviceColor = selfCopy->_deviceColor;
    selfCopy->_deviceColor = v106;
    MEMORY[0x1E69E5920](deviceColor);
    v344 = location[0];
    v108 = *(v408 + 3776);
    v109 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_deviceEnclosureColor"];
    deviceEnclosureColor = selfCopy->_deviceEnclosureColor;
    selfCopy->_deviceEnclosureColor = v109;
    MEMORY[0x1E69E5920](deviceEnclosureColor);
    v345 = location[0];
    v111 = *(v408 + 3776);
    v112 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_notificationDisclaimer"];
    notificationDisclaimer = selfCopy->_notificationDisclaimer;
    selfCopy->_notificationDisclaimer = v112;
    MEMORY[0x1E69E5920](notificationDisclaimer);
    v346 = location[0];
    v114 = *(v380 + 3480);
    v347 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_shouldForceInteractiveAuth"];
    bOOLValue13 = [v347 BOOLValue];
    v116 = v347;
    selfCopy->_shouldForceInteractiveAuth = bOOLValue13;
    MEMORY[0x1E69E5920](v116);
    v348 = location[0];
    v117 = *(v380 + 3480);
    v349 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_capabilityForUIDisplay"];
    unsignedIntegerValue = [v349 unsignedIntegerValue];
    v119 = v349;
    selfCopy->_capabilityForUIDisplay = unsignedIntegerValue;
    MEMORY[0x1E69E5920](v119);
    v350 = location[0];
    v352 = 0x1E73D2000uLL;
    v120 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_proxiedDeviceAnisetteData"];
    proxiedDeviceAnisetteData = selfCopy->_proxiedDeviceAnisetteData;
    selfCopy->_proxiedDeviceAnisetteData = v120;
    MEMORY[0x1E69E5920](proxiedDeviceAnisetteData);
    v351 = location[0];
    v354 = 0x1E73D2000uLL;
    v122 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_proxiedDevice"];
    proxiedDevice = selfCopy->_proxiedDevice;
    selfCopy->_proxiedDevice = v122;
    MEMORY[0x1E69E5920](proxiedDevice);
    v353 = location[0];
    v124 = *(v352 + 2520);
    v125 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_companionDeviceAnisetteData"];
    companionDeviceAnisetteData = selfCopy->_companionDeviceAnisetteData;
    selfCopy->_companionDeviceAnisetteData = v125;
    MEMORY[0x1E69E5920](companionDeviceAnisetteData);
    v355 = location[0];
    v127 = *(v354 + 3072);
    v128 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_companionDevice"];
    companionDevice = selfCopy->_companionDevice;
    selfCopy->_companionDevice = v128;
    MEMORY[0x1E69E5920](companionDevice);
    v356 = location[0];
    v130 = *(v380 + 3480);
    v131 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_isAppleIDLoginEnabled"];
    isAppleIDLoginEnabled = selfCopy->_isAppleIDLoginEnabled;
    selfCopy->_isAppleIDLoginEnabled = v131;
    MEMORY[0x1E69E5920](isAppleIDLoginEnabled);
    v357 = location[0];
    v133 = *(v380 + 3480);
    v134 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_hasEmptyPassword"];
    hasEmptyPassword = selfCopy->_hasEmptyPassword;
    selfCopy->_hasEmptyPassword = v134;
    MEMORY[0x1E69E5920](hasEmptyPassword);
    v358 = location[0];
    v136 = *(v380 + 3480);
    v359 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_shouldRequestShortLivedToken"];
    bOOLValue14 = [v359 BOOLValue];
    v138 = v359;
    selfCopy->_shouldRequestShortLivedToken = bOOLValue14;
    MEMORY[0x1E69E5920](v138);
    v360 = location[0];
    v139 = *(v408 + 3776);
    v140 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_shortLivedToken"];
    shortLivedToken = selfCopy->_shortLivedToken;
    selfCopy->_shortLivedToken = v140;
    MEMORY[0x1E69E5920](shortLivedToken);
    v361 = location[0];
    v142 = *(v408 + 3776);
    v143 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_identityToken"];
    identityToken = selfCopy->_identityToken;
    selfCopy->_identityToken = v143;
    MEMORY[0x1E69E5920](identityToken);
    v362 = location[0];
    v145 = *(v380 + 3480);
    v363 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_shouldRequestConfigurationInfo"];
    bOOLValue15 = [v363 BOOLValue];
    v147 = v363;
    selfCopy->_shouldRequestConfigurationInfo = bOOLValue15;
    MEMORY[0x1E69E5920](v147);
    v364 = location[0];
    v148 = *(v380 + 3480);
    v365 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_isTriggeredByNotification"];
    bOOLValue16 = [v365 BOOLValue];
    v150 = v365;
    selfCopy->_isTriggeredByNotification = bOOLValue16;
    MEMORY[0x1E69E5920](v150);
    v366 = location[0];
    v151 = *(v408 + 3776);
    v152 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_message"];
    message = selfCopy->_message;
    selfCopy->_message = v152;
    MEMORY[0x1E69E5920](message);
    v154 = [location[0] decodeBoolForKey:@"_anticipateEscrowAttempt"];
    selfCopy->_anticipateEscrowAttempt = v154;
    v155 = [location[0] decodeBoolForKey:@"_isFirstTimeLogin"];
    selfCopy->_isFirstTimeLogin = v155;
    v156 = [location[0] decodeBoolForKey:@"_supportsPiggybacking"];
    v157 = v377;
    selfCopy->_supportsPiggybacking = v156;
    v370 = location[0];
    v369 = *(v157 + 4056);
    v158 = *(v157 + 4056);
    v159 = objc_opt_class();
    v367 = v415;
    v415[0] = v159;
    v160 = *(v408 + 3776);
    v415[1] = objc_opt_class();
    v372 = [*(v379 + 3784) arrayWithObjects:v367 count:v368];
    v371 = [v369 setWithArray:?];
    v161 = [v370 decodeObjectOfClasses:? forKey:?];
    desiredInternalTokens = selfCopy->_desiredInternalTokens;
    selfCopy->_desiredInternalTokens = v161;
    MEMORY[0x1E69E5920](desiredInternalTokens);
    MEMORY[0x1E69E5920](v371);
    MEMORY[0x1E69E5920](v372);
    v163 = [location[0] decodeBoolForKey:@"_shouldSkipSettingsLaunchAlert"];
    selfCopy->_shouldSkipSettingsLaunchAlert = v163;
    v164 = [location[0] decodeBoolForKey:@"_shouldSendIdentityTokenForRemoteUI"];
    selfCopy->_shouldSendIdentityTokenForRemoteUI = v164;
    v165 = [location[0] decodeBoolForKey:@"_shouldRequestRecoveryPET"];
    v166 = v408;
    selfCopy->_shouldRequestRecoveryPET = v165;
    v373 = location[0];
    v167 = *(v166 + 3776);
    v168 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_title"];
    title = selfCopy->_title;
    selfCopy->_title = v168;
    MEMORY[0x1E69E5920](title);
    v374 = location[0];
    v170 = *(v380 + 3480);
    v375 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_shouldSkipInitialReachabilityCheck"];
    bOOLValue17 = [v375 BOOLValue];
    v172 = v375;
    selfCopy->_shouldSkipInitialReachabilityCheck = bOOLValue17;
    MEMORY[0x1E69E5920](v172);
    v173 = [location[0] decodeIntegerForKey:@"_attemptIndex"];
    v174 = v408;
    selfCopy->_attemptIndex = v173;
    v376 = location[0];
    v175 = *(v174 + 3776);
    v176 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_securityUpgradeContext"];
    securityUpgradeContext = selfCopy->_securityUpgradeContext;
    selfCopy->_securityUpgradeContext = v176;
    MEMORY[0x1E69E5920](securityUpgradeContext);
    v178 = [location[0] decodeIntegerForKey:@"_authenticationType"];
    selfCopy->_authenticationType = v178;
    v179 = [location[0] decodeBoolForKey:@"_shouldSendGrandSlamTokensForRemoteUI"];
    selfCopy->_shouldSendGrandSlamTokensForRemoteUI = v179;
    v180 = [location[0] decodeBoolForKey:@"_needsRepair"];
    v181 = v377;
    v182 = v378;
    selfCopy->_needsRepair = v180;
    v386 = location[0];
    v385 = *(v181 + 4056);
    v183 = *(v182 + 3872);
    v384 = objc_opt_class();
    v184 = *(v379 + 3784);
    v381 = objc_opt_class();
    v185 = *(v408 + 3776);
    v382 = objc_opt_class();
    v186 = *(v380 + 3480);
    v383 = objc_opt_class();
    v396 = 0x1E695D000uLL;
    v387 = [v385 setWithObjects:{v384, v381, v382, v383, objc_opt_class(), 0}];
    v187 = [v386 decodeObjectOfClasses:? forKey:?];
    appProvidedData = selfCopy->_appProvidedData;
    selfCopy->_appProvidedData = v187;
    MEMORY[0x1E69E5920](appProvidedData);
    MEMORY[0x1E69E5920](v387);
    v388 = location[0];
    v189 = *(v408 + 3776);
    v190 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_appProvidedContext"];
    appProvidedContext = selfCopy->_appProvidedContext;
    selfCopy->_appProvidedContext = v190;
    MEMORY[0x1E69E5920](appProvidedContext);
    v389 = location[0];
    v192 = *(v408 + 3776);
    v193 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_masterKey"];
    masterKey = selfCopy->_masterKey;
    selfCopy->_masterKey = v193;
    MEMORY[0x1E69E5920](masterKey);
    v195 = [location[0] decodeBoolForKey:@"_performUIOutOfProcess"];
    selfCopy->_performUIOutOfProcess = v195;
    v196 = [location[0] decodeBoolForKey:@"_keepAlive"];
    v197 = v408;
    selfCopy->_keepAlive = v196;
    v390 = location[0];
    v198 = *(v197 + 3776);
    v199 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_cancelButtonString"];
    cancelButtonString = selfCopy->_cancelButtonString;
    selfCopy->_cancelButtonString = v199;
    MEMORY[0x1E69E5920](cancelButtonString);
    v391 = location[0];
    v201 = *(v408 + 3776);
    v202 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_alternativeButtonString"];
    alternativeButtonString = selfCopy->_alternativeButtonString;
    selfCopy->_alternativeButtonString = v202;
    MEMORY[0x1E69E5920](alternativeButtonString);
    v204 = [location[0] decodeBoolForKey:@"_hideAlternativeButton"];
    selfCopy->_hideAlternativeButton = v204;
    v205 = [location[0] decodeBoolForKey:@"_hideCancelButton"];
    selfCopy->_hideCancelButton = v205;
    v206 = [location[0] decodeBoolForKey:@"_hideReasonString"];
    selfCopy->_hideReasonString = v206;
    v207 = [location[0] decodeBoolForKey:@"_clientShouldHandleAlternativeButtonAction"];
    v208 = v408;
    selfCopy->_clientShouldHandleAlternativeButtonAction = v207;
    v392 = location[0];
    v209 = *(v208 + 3776);
    v210 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_windowTitle"];
    windowTitle = selfCopy->_windowTitle;
    selfCopy->_windowTitle = v210;
    MEMORY[0x1E69E5920](windowTitle);
    v212 = [location[0] decodeBoolForKey:@"_alwaysShowUsernameField"];
    v213 = v408;
    selfCopy->_alwaysShowUsernameField = v212;
    v393 = location[0];
    v214 = *(v213 + 3776);
    v215 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_privacyBundleIdentifier"];
    privacyBundleIdentifier = selfCopy->_privacyBundleIdentifier;
    selfCopy->_privacyBundleIdentifier = v215;
    MEMORY[0x1E69E5920](privacyBundleIdentifier);
    v217 = [location[0] decodeIntegerForKey:@"_authenticationPromptStyle"];
    selfCopy->_authenticationPromptStyle = v217;
    v218 = [location[0] decodeIntegerForKey:@"_requestedNewAccountAgeRange"];
    selfCopy->_requestedNewAccountAgeRange = v218;
    v219 = [location[0] decodeIntegerForKey:@"_authenticationMode"];
    selfCopy->_authenticationMode = v219;
    v220 = [location[0] decodeBoolForKey:@"_isMDMInformationRequired"];
    selfCopy->_isMDMInformationRequired = v220;
    v221 = [location[0] decodeBoolForKey:@"_cliMode"];
    v222 = v408;
    selfCopy->_cliMode = v221;
    v394 = location[0];
    v223 = *(v222 + 3776);
    v224 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"passwordlessToken"];
    passwordlessToken = selfCopy->_passwordlessToken;
    selfCopy->_passwordlessToken = v224;
    MEMORY[0x1E69E5920](passwordlessToken);
    v395 = location[0];
    v226 = *(v408 + 3776);
    v227 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"idmsDataToken"];
    idmsDataToken = selfCopy->_idmsDataToken;
    selfCopy->_idmsDataToken = v227;
    MEMORY[0x1E69E5920](idmsDataToken);
    v229 = [location[0] decodeBoolForKey:@"_needsSecurityUpgradeUI"];
    selfCopy->_needsSecurityUpgradeUI = v229;
    v230 = [location[0] decodeBoolForKey:@"_isRKVerification"];
    v231 = v396;
    selfCopy->_isRKVerification = v230;
    v397 = location[0];
    v232 = *(v231 + 3824);
    v233 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_displayImageData"];
    displayImageData = selfCopy->_displayImageData;
    selfCopy->_displayImageData = v233;
    MEMORY[0x1E69E5920](displayImageData);
    v235 = [location[0] decodeIntegerForKey:@"_verifyCredentialReason"];
    v236 = v408;
    selfCopy->_verifyCredentialReason = v235;
    v398 = location[0];
    v237 = *(v236 + 3776);
    v238 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_callerIconBundlePath"];
    callerIconBundlePath = selfCopy->_callerIconBundlePath;
    selfCopy->_callerIconBundlePath = v238;
    MEMORY[0x1E69E5920](callerIconBundlePath);
    v399 = location[0];
    v240 = *(v408 + 3776);
    v241 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_localizedCallerName"];
    localizedCallerName = selfCopy->_localizedCallerName;
    selfCopy->_localizedCallerName = v241;
    MEMORY[0x1E69E5920](localizedCallerName);
    v400 = location[0];
    v243 = *(v408 + 3776);
    v244 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_custodianRecoveryToken"];
    custodianRecoveryToken = selfCopy->_custodianRecoveryToken;
    selfCopy->_custodianRecoveryToken = v244;
    MEMORY[0x1E69E5920](custodianRecoveryToken);
    v246 = [location[0] decodeBoolForKey:@"_forceEligibleForForegroundAuthentication"];
    selfCopy->_forceEligibleForForegroundAuthentication = v246;
    v247 = [location[0] decodeBoolForKey:@"_deviceRegionRequired"];
    selfCopy->_deviceRegionRequired = v247;
    v248 = [location[0] decodeBoolForKey:@"_disableProximityAuth"];
    selfCopy->_disableProximityAuth = v248;
    v249 = [location[0] decodeBoolForKey:@"_shouldBroadcastForProximityAuthOnly"];
    selfCopy->_shouldBroadcastForProximityAuthOnly = v249;
    v250 = [location[0] decodeBoolForKey:@"_enablePasscodeAuth"];
    selfCopy->_enablePasscodeAuth = v250;
    v251 = [location[0] decodeBoolForKey:@"_passcodeOnlyPolicy"];
    v252 = v408;
    selfCopy->_passcodeOnlyPolicy = v251;
    v401 = location[0];
    v253 = *(v252 + 3776);
    v254 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_sourceAltDSID"];
    sourceAltDSID = selfCopy->_sourceAltDSID;
    selfCopy->_sourceAltDSID = v254;
    MEMORY[0x1E69E5920](sourceAltDSID);
    v402 = location[0];
    v256 = *(v408 + 3776);
    v257 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_serviceToken"];
    serviceToken = selfCopy->_serviceToken;
    selfCopy->_serviceToken = v257;
    MEMORY[0x1E69E5920](serviceToken);
    v259 = [location[0] decodeBoolForKey:@"_biometricSkipPasscodeFallback"];
    selfCopy->_biometricSkipPasscodeFallback = v259;
    v260 = [location[0] decodeBoolForKey:@"_isNativeTakeover"];
    selfCopy->_isNativeTakeover = v260;
    v261 = [location[0] decodeBoolForKey:@"_ignorePasswordCache"];
    selfCopy->_ignorePasswordCache = v261;
    v262 = [location[0] decodeBoolForKey:@"_ignoreShouldContinueProxy"];
    selfCopy->_ignoreShouldContinueProxy = v262;
    v263 = [location[0] decodeBoolForKey:@"_isRequestedFromOOPViewService"];
    v264 = v408;
    selfCopy->_isRequestedFromOOPViewService = v263;
    v403 = location[0];
    v265 = *(v264 + 3776);
    v266 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_proxiedAppleID"];
    proxiedAppleID = selfCopy->_proxiedAppleID;
    selfCopy->_proxiedAppleID = v266;
    MEMORY[0x1E69E5920](proxiedAppleID);
    v404 = location[0];
    v268 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_companionKeyEnvelope"];
    companionKeyEnvelope = selfCopy->_companionKeyEnvelope;
    selfCopy->_companionKeyEnvelope = v268;
    MEMORY[0x1E69E5920](companionKeyEnvelope);
    v270 = [location[0] decodeBoolForKey:@"_piggybackingForTrustedDevice"];
    selfCopy->_piggybackingForTrustedDevice = v270;
    v271 = [location[0] decodeBoolForKey:@"_allowAuthenticationBeforeFirstUnlock"];
    selfCopy->_allowAuthenticationBeforeFirstUnlock = v271;
    v405 = location[0];
    v272 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_protoAccountContext"];
    protoAccountContext = selfCopy->_protoAccountContext;
    selfCopy->_protoAccountContext = v272;
    MEMORY[0x1E69E5920](protoAccountContext);
    v406 = location[0];
    v274 = *(v408 + 3776);
    v275 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"idmsData"];
    idmsData = selfCopy->_idmsData;
    selfCopy->_idmsData = v275;
    MEMORY[0x1E69E5920](idmsData);
    v407 = location[0];
    v277 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_accountMigrationContext"];
    accountMigrationContext = selfCopy->_accountMigrationContext;
    selfCopy->_accountMigrationContext = v277;
    MEMORY[0x1E69E5920](accountMigrationContext);
    v409 = location[0];
    v279 = *(v408 + 3776);
    v280 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_proxiedToken"];
    proxiedToken = selfCopy->_proxiedToken;
    selfCopy->_proxiedToken = v280;
    MEMORY[0x1E69E5920](proxiedToken);
    v410 = location[0];
    v282 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_authenticatableResource"];
    authenticatableResource = selfCopy->_authenticatableResource;
    selfCopy->_authenticatableResource = v282;
    MEMORY[0x1E69E5920](authenticatableResource);
  }

  v286 = &selfCopy;
  v285 = MEMORY[0x1E69E5928](selfCopy);
  obj = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(v286, obj);
  *MEMORY[0x1E69E9840];
  return v285;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_reason forKey:@"_reason"];
  [location[0] encodeObject:selfCopy->_username forKey:@"_username"];
  v3 = location[0];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:selfCopy->_isUsernameEditable];
  [v3 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  [location[0] encodeObject:selfCopy->_DSID forKey:@"_DSID"];
  [location[0] encodeObject:selfCopy->_altDSID forKey:@"_altDSID"];
  [location[0] encodeObject:selfCopy->_telemetryDeviceSessionID forKey:@"_telemetryDeviceSessionID"];
  [location[0] encodeObject:selfCopy->_telemetryFlowID forKey:@"_telemetryFlowID"];
  [location[0] encodeObject:selfCopy->_dependentAltDSID forKey:@"_dependentAltDSID"];
  v5 = location[0];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:selfCopy->_isProxyingForApp];
  [v5 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v6);
  [location[0] encodeObject:selfCopy->_proxiedAppBundleID forKey:@"_proxiedAppBundleID"];
  [location[0] encodeObject:selfCopy->_proxiedAppName forKey:@"_proxiedAppName"];
  [location[0] encodeObject:selfCopy->_serviceIdentifiers forKey:@"_serviceIdentifiers"];
  [location[0] encodeObject:selfCopy->_identifier forKey:@"_identifier"];
  v7 = location[0];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:selfCopy->_serviceType];
  [v7 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v8);
  v9 = location[0];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:selfCopy->_maximumLoginAttempts];
  [v9 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v10);
  v11 = location[0];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:selfCopy->_isEphemeral];
  [v11 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v12);
  v13 = location[0];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:selfCopy->_shouldAllowAppleIDCreation];
  [v13 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v14);
  v15 = location[0];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:selfCopy->_shouldPromptForPasswordOnly];
  [v15 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v16);
  [location[0] encodeObject:selfCopy->_passwordPromptTitle forKey:@"_passwordPromptTitle"];
  [location[0] encodeObject:selfCopy->_defaultButtonString forKey:@"_defaultButtonString"];
  [location[0] encodeObject:selfCopy->_httpHeadersForRemoteUI forKey:@"_httpHeadersForRemoteUI"];
  [location[0] encodeObject:selfCopy->_remoteUIIdentityToken forKey:@"_remoteUIIdentityToken"];
  [location[0] encodeObject:selfCopy->_password forKey:@"_password"];
  v17 = location[0];
  v18 = [MEMORY[0x1E696AD98] numberWithBool:selfCopy->_isPasswordEditable];
  [v17 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v18);
  v19 = location[0];
  v20 = [MEMORY[0x1E696AD98] numberWithBool:selfCopy->_shouldUpdatePersistentServiceTokens];
  [v19 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v20);
  v21 = location[0];
  v22 = [MEMORY[0x1E696AD98] numberWithBool:selfCopy->_shouldOfferSecurityUpgrade];
  [v21 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v22);
  v23 = location[0];
  v24 = [MEMORY[0x1E696AD98] numberWithBool:selfCopy->_needsCredentialRecovery];
  [v23 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v24);
  v25 = location[0];
  v26 = [MEMORY[0x1E696AD98] numberWithBool:selfCopy->_needsNewAppleID];
  [v25 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v26);
  v27 = location[0];
  v28 = [MEMORY[0x1E696AD98] numberWithBool:selfCopy->_needsPasswordChange];
  [v27 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v28);
  v29 = location[0];
  v30 = [MEMORY[0x1E696AD98] numberWithBool:selfCopy->_shouldPreventInteractiveAuth];
  [v29 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v30);
  [location[0] encodeObject:selfCopy->_generatedCode forKey:@"_generatedCode"];
  [location[0] encodeObject:selfCopy->_latitude forKey:@"_latitude"];
  [location[0] encodeObject:selfCopy->_longitude forKey:@"_longitude"];
  [location[0] encodeObject:selfCopy->_deviceClass forKey:@"_deviceClass"];
  [location[0] encodeObject:selfCopy->_deviceColor forKey:@"_deviceColor"];
  [location[0] encodeObject:selfCopy->_deviceEnclosureColor forKey:@"_deviceEnclosureColor"];
  [location[0] encodeObject:selfCopy->_notificationDisclaimer forKey:@"_notificationDisclaimer"];
  v31 = location[0];
  v32 = [MEMORY[0x1E696AD98] numberWithBool:selfCopy->_shouldForceInteractiveAuth];
  [v31 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v32);
  v33 = location[0];
  v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:selfCopy->_capabilityForUIDisplay];
  [v33 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v34);
  [location[0] encodeObject:selfCopy->_proxiedDeviceAnisetteData forKey:@"_proxiedDeviceAnisetteData"];
  [location[0] encodeObject:selfCopy->_proxiedDevice forKey:@"_proxiedDevice"];
  [location[0] encodeObject:selfCopy->_companionDeviceAnisetteData forKey:@"_companionDeviceAnisetteData"];
  [location[0] encodeObject:selfCopy->_companionDevice forKey:@"_companionDevice"];
  [location[0] encodeObject:selfCopy->_isAppleIDLoginEnabled forKey:@"_isAppleIDLoginEnabled"];
  [location[0] encodeObject:selfCopy->_hasEmptyPassword forKey:@"_hasEmptyPassword"];
  v35 = location[0];
  v36 = [MEMORY[0x1E696AD98] numberWithBool:selfCopy->_shouldRequestShortLivedToken];
  [v35 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v36);
  [location[0] encodeObject:selfCopy->_shortLivedToken forKey:@"_shortLivedToken"];
  [location[0] encodeObject:selfCopy->_identityToken forKey:@"_identityToken"];
  v37 = location[0];
  v38 = [MEMORY[0x1E696AD98] numberWithBool:selfCopy->_shouldRequestConfigurationInfo];
  [v37 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v38);
  v39 = location[0];
  v40 = [MEMORY[0x1E696AD98] numberWithBool:selfCopy->_isTriggeredByNotification];
  [v39 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v40);
  [location[0] encodeObject:selfCopy->_message forKey:@"_message"];
  [location[0] encodeBool:selfCopy->_anticipateEscrowAttempt forKey:@"_anticipateEscrowAttempt"];
  [location[0] encodeBool:selfCopy->_isFirstTimeLogin forKey:@"_isFirstTimeLogin"];
  [location[0] encodeBool:selfCopy->_supportsPiggybacking forKey:@"_supportsPiggybacking"];
  [location[0] encodeObject:selfCopy->_desiredInternalTokens forKey:@"_desiredInternalTokens"];
  [location[0] encodeBool:selfCopy->_shouldSkipSettingsLaunchAlert forKey:@"_shouldSkipSettingsLaunchAlert"];
  [location[0] encodeBool:selfCopy->_shouldSendIdentityTokenForRemoteUI forKey:@"_shouldSendIdentityTokenForRemoteUI"];
  [location[0] encodeBool:selfCopy->_shouldRequestRecoveryPET forKey:@"_shouldRequestRecoveryPET"];
  [location[0] encodeObject:selfCopy->_title forKey:@"_title"];
  [location[0] encodeObject:selfCopy->_helpAnchor forKey:@"_helpAnchor"];
  [location[0] encodeObject:selfCopy->_helpBook forKey:@"_helpBook"];
  v41 = location[0];
  v42 = [MEMORY[0x1E696AD98] numberWithBool:selfCopy->_shouldSkipInitialReachabilityCheck];
  [v41 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v42);
  [location[0] encodeInteger:selfCopy->_attemptIndex forKey:@"_attemptIndex"];
  [location[0] encodeObject:selfCopy->_securityUpgradeContext forKey:@"_securityUpgradeContext"];
  [location[0] encodeInteger:selfCopy->_authenticationType forKey:@"_authenticationType"];
  [location[0] encodeBool:selfCopy->_shouldSendGrandSlamTokensForRemoteUI forKey:@"_shouldSendGrandSlamTokensForRemoteUI"];
  [location[0] encodeBool:selfCopy->_needsRepair forKey:@"_needsRepair"];
  [location[0] encodeObject:selfCopy->_appProvidedData forKey:@"_appProvidedData"];
  [location[0] encodeObject:selfCopy->_appProvidedContext forKey:@"_appProvidedContext"];
  [location[0] encodeObject:selfCopy->_masterKey forKey:@"_masterKey"];
  [location[0] encodeBool:selfCopy->_performUIOutOfProcess forKey:@"_performUIOutOfProcess"];
  [location[0] encodeBool:selfCopy->_keepAlive forKey:@"_keepAlive"];
  [location[0] encodeObject:selfCopy->_cancelButtonString forKey:@"_cancelButtonString"];
  [location[0] encodeObject:selfCopy->_alternativeButtonString forKey:@"_alternativeButtonString"];
  [location[0] encodeBool:selfCopy->_hideAlternativeButton forKey:@"_hideAlternativeButton"];
  [location[0] encodeBool:selfCopy->_hideCancelButton forKey:@"_hideCancelButton"];
  [location[0] encodeBool:selfCopy->_hideReasonString forKey:@"_hideReasonString"];
  [location[0] encodeBool:selfCopy->_clientShouldHandleAlternativeButtonAction forKey:@"_clientShouldHandleAlternativeButtonAction"];
  [location[0] encodeObject:selfCopy->_windowTitle forKey:@"_windowTitle"];
  [location[0] encodeBool:selfCopy->_alwaysShowUsernameField forKey:@"_alwaysShowUsernameField"];
  [location[0] encodeObject:selfCopy->_privacyBundleIdentifier forKey:@"_privacyBundleIdentifier"];
  [location[0] encodeInteger:selfCopy->_authenticationPromptStyle forKey:@"_authenticationPromptStyle"];
  [location[0] encodeInteger:selfCopy->_requestedNewAccountAgeRange forKey:@"_requestedNewAccountAgeRange"];
  [location[0] encodeInteger:selfCopy->_authenticationMode forKey:@"_authenticationMode"];
  [location[0] encodeBool:selfCopy->_isMDMInformationRequired forKey:@"_isMDMInformationRequired"];
  [location[0] encodeBool:selfCopy->_cliMode forKey:@"_cliMode"];
  [location[0] encodeObject:selfCopy->_passwordlessToken forKey:@"passwordlessToken"];
  [location[0] encodeObject:selfCopy->_idmsDataToken forKey:@"idmsDataToken"];
  [location[0] encodeBool:selfCopy->_needsSecurityUpgradeUI forKey:@"_needsSecurityUpgradeUI"];
  [location[0] encodeBool:selfCopy->_isRKVerification forKey:@"_isRKVerification"];
  [location[0] encodeObject:selfCopy->_displayImageData forKey:@"_displayImageData"];
  [location[0] encodeInteger:selfCopy->_verifyCredentialReason forKey:@"_verifyCredentialReason"];
  [location[0] encodeObject:selfCopy->_callerIconBundlePath forKey:@"_callerIconBundlePath"];
  [location[0] encodeObject:selfCopy->_localizedCallerName forKey:@"_localizedCallerName"];
  [location[0] encodeObject:selfCopy->_custodianRecoveryToken forKey:@"_custodianRecoveryToken"];
  [location[0] encodeBool:selfCopy->_forceEligibleForForegroundAuthentication forKey:@"_forceEligibleForForegroundAuthentication"];
  [location[0] encodeBool:selfCopy->_deviceRegionRequired forKey:@"_deviceRegionRequired"];
  [location[0] encodeBool:selfCopy->_disableProximityAuth forKey:@"_disableProximityAuth"];
  [location[0] encodeBool:selfCopy->_shouldBroadcastForProximityAuthOnly forKey:@"_shouldBroadcastForProximityAuthOnly"];
  [location[0] encodeBool:selfCopy->_enablePasscodeAuth forKey:@"_enablePasscodeAuth"];
  [location[0] encodeBool:selfCopy->_passcodeOnlyPolicy forKey:@"_passcodeOnlyPolicy"];
  [location[0] encodeObject:selfCopy->_sourceAltDSID forKey:@"_sourceAltDSID"];
  [location[0] encodeObject:selfCopy->_serviceToken forKey:@"_serviceToken"];
  [location[0] encodeBool:selfCopy->_biometricSkipPasscodeFallback forKey:@"_biometricSkipPasscodeFallback"];
  [location[0] encodeBool:selfCopy->_isNativeTakeover forKey:@"_isNativeTakeover"];
  [location[0] encodeBool:selfCopy->_ignorePasswordCache forKey:@"_ignorePasswordCache"];
  [location[0] encodeBool:selfCopy->_ignoreShouldContinueProxy forKey:@"_ignoreShouldContinueProxy"];
  [location[0] encodeBool:selfCopy->_isRequestedFromOOPViewService forKey:@"_isRequestedFromOOPViewService"];
  [location[0] encodeObject:selfCopy->_proxiedAppleID forKey:@"_proxiedAppleID"];
  [location[0] encodeObject:selfCopy->_companionKeyEnvelope forKey:@"_companionKeyEnvelope"];
  [location[0] encodeBool:selfCopy->_piggybackingForTrustedDevice forKey:@"_piggybackingForTrustedDevice"];
  [location[0] encodeBool:selfCopy->_allowAuthenticationBeforeFirstUnlock forKey:@"_allowAuthenticationBeforeFirstUnlock"];
  [location[0] encodeObject:selfCopy->_protoAccountContext forKey:@"_protoAccountContext"];
  [location[0] encodeObject:selfCopy->_idmsData forKey:@"idmsData"];
  [location[0] encodeObject:selfCopy->_accountMigrationContext forKey:@"_accountMigrationContext"];
  [location[0] encodeObject:selfCopy->_proxiedToken forKey:@"_proxiedToken"];
  [location[0] encodeObject:selfCopy->_authenticatableResource forKey:@"_authenticatableResource"];
  objc_storeStrong(location, 0);
}

- (id)_sanitizedCopy
{
  selfCopy = self;
  v118[1] = a2;
  v118[0] = objc_alloc_init(AKAppleIDAuthenticationContext);
  v2 = [(NSString *)selfCopy->_reason copy];
  v3 = *(v118[0] + 52);
  *(v118[0] + 52) = v2;
  MEMORY[0x1E69E5920](v3);
  v4 = [(NSString *)selfCopy->_username copy];
  v5 = *(v118[0] + 22);
  *(v118[0] + 22) = v4;
  MEMORY[0x1E69E5920](v5);
  *(v118[0] + 139) = selfCopy->_isUsernameEditable;
  v6 = [(NSString *)selfCopy->_DSID copy];
  v7 = *(v118[0] + 56);
  *(v118[0] + 56) = v6;
  MEMORY[0x1E69E5920](v7);
  if ([(NSString *)selfCopy->_altDSID ak_isEmailAddress])
  {
    location = _AKLogSystem();
    v116 = 17;
    if (os_log_type_enabled(location, OS_LOG_TYPE_FAULT))
    {
      log = location;
      type = v116;
      __os_log_helper_16_0_0(v115);
      _os_log_fault_impl(&dword_193225000, log, type, "Client passed auth context with email value in altDSID property - this is an error, do not do this.", v115, 2u);
    }

    objc_storeStrong(&location, 0);
  }

  else
  {
    v8 = [(NSString *)selfCopy->_altDSID copy];
    v9 = *(v118[0] + 35);
    *(v118[0] + 35) = v8;
    MEMORY[0x1E69E5920](v9);
  }

  v10 = [(NSString *)selfCopy->_telemetryDeviceSessionID copy];
  v11 = *(v118[0] + 44);
  *(v118[0] + 44) = v10;
  MEMORY[0x1E69E5920](v11);
  v12 = [(NSString *)selfCopy->_telemetryFlowID copy];
  v13 = *(v118[0] + 45);
  *(v118[0] + 45) = v12;
  MEMORY[0x1E69E5920](v13);
  v14 = [(NSString *)selfCopy->_dependentAltDSID copy];
  v15 = *(v118[0] + 75);
  *(v118[0] + 75) = v14;
  MEMORY[0x1E69E5920](v15);
  *(v118[0] + 123) = selfCopy->_isProxyingForApp;
  v16 = [(NSString *)selfCopy->_proxiedAppBundleID copy];
  v17 = *(v118[0] + 23);
  *(v118[0] + 23) = v16;
  MEMORY[0x1E69E5920](v17);
  v18 = [(NSString *)selfCopy->_proxiedAppName copy];
  v19 = *(v118[0] + 39);
  *(v118[0] + 39) = v18;
  MEMORY[0x1E69E5920](v19);
  v20 = [(NSArray *)selfCopy->_serviceIdentifiers copy];
  v21 = *(v118[0] + 55);
  *(v118[0] + 55) = v20;
  MEMORY[0x1E69E5920](v21);
  v22 = [(NSUUID *)selfCopy->_identifier copy];
  v23 = *(v118[0] + 24);
  *(v118[0] + 24) = v22;
  MEMORY[0x1E69E5920](v23);
  *(v118[0] + 36) = selfCopy->_serviceType;
  *(v118[0] + 54) = selfCopy->_maximumLoginAttempts;
  *(v118[0] + 145) = selfCopy->_isEphemeral;
  *(v118[0] + 140) = selfCopy->_shouldAllowAppleIDCreation;
  *(v118[0] + 156) = selfCopy->_shouldPromptForPasswordOnly;
  v24 = [(NSString *)selfCopy->_passwordPromptTitle copy];
  v25 = *(v118[0] + 27);
  *(v118[0] + 27) = v24;
  MEMORY[0x1E69E5920](v25);
  v26 = [(NSString *)selfCopy->_defaultButtonString copy];
  v27 = *(v118[0] + 53);
  *(v118[0] + 53) = v26;
  MEMORY[0x1E69E5920](v27);
  v28 = [(NSDictionary *)selfCopy->_httpHeadersForRemoteUI copy];
  v29 = *(v118[0] + 57);
  *(v118[0] + 57) = v28;
  MEMORY[0x1E69E5920](v29);
  v30 = [(NSString *)selfCopy->_remoteUIIdentityToken copy];
  v31 = *(v118[0] + 26);
  *(v118[0] + 26) = v30;
  MEMORY[0x1E69E5920](v31);
  v32 = [(NSString *)selfCopy->_password copy];
  v33 = *(v118[0] + 28);
  *(v118[0] + 28) = v32;
  MEMORY[0x1E69E5920](v33);
  *(v118[0] + 126) = selfCopy->_isPasswordEditable;
  *(v118[0] + 157) = selfCopy->_shouldUpdatePersistentServiceTokens;
  *(v118[0] + 146) = selfCopy->_shouldOfferSecurityUpgrade;
  *(v118[0] + 141) = selfCopy->_needsCredentialRecovery;
  *(v118[0] + 142) = selfCopy->_needsNewAppleID;
  *(v118[0] + 143) = selfCopy->_needsPasswordChange;
  *(v118[0] + 128) = selfCopy->_shouldPreventInteractiveAuth;
  v34 = [(NSString *)selfCopy->_generatedCode copy];
  v35 = *(v118[0] + 1);
  *(v118[0] + 1) = v34;
  MEMORY[0x1E69E5920](v35);
  v36 = [(NSNumber *)selfCopy->_latitude copy];
  v37 = *(v118[0] + 2);
  *(v118[0] + 2) = v36;
  MEMORY[0x1E69E5920](v37);
  v38 = [(NSNumber *)selfCopy->_longitude copy];
  v39 = *(v118[0] + 3);
  *(v118[0] + 3) = v38;
  MEMORY[0x1E69E5920](v39);
  v40 = [(NSString *)selfCopy->_deviceClass copy];
  v41 = *(v118[0] + 4);
  *(v118[0] + 4) = v40;
  MEMORY[0x1E69E5920](v41);
  v42 = [(NSString *)selfCopy->_deviceColor copy];
  v43 = *(v118[0] + 5);
  *(v118[0] + 5) = v42;
  MEMORY[0x1E69E5920](v43);
  v44 = [(NSString *)selfCopy->_deviceEnclosureColor copy];
  v45 = *(v118[0] + 6);
  *(v118[0] + 6) = v44;
  MEMORY[0x1E69E5920](v45);
  v46 = [(NSString *)selfCopy->_notificationDisclaimer copy];
  v47 = *(v118[0] + 7);
  *(v118[0] + 7) = v46;
  MEMORY[0x1E69E5920](v47);
  *(v118[0] + 129) = selfCopy->_shouldForceInteractiveAuth;
  _capabilityForUIDisplay = [(AKAppleIDAuthenticationContext *)selfCopy _capabilityForUIDisplay];
  *(v118[0] + 29) = _capabilityForUIDisplay;
  v49 = [(AKAnisetteData *)selfCopy->_proxiedDeviceAnisetteData copy];
  v50 = *(v118[0] + 33);
  *(v118[0] + 33) = v49;
  MEMORY[0x1E69E5920](v50);
  v51 = [(AKDevice *)selfCopy->_proxiedDevice copy];
  v52 = *(v118[0] + 11);
  *(v118[0] + 11) = v51;
  MEMORY[0x1E69E5920](v52);
  v53 = [(AKAnisetteData *)selfCopy->_companionDeviceAnisetteData copy];
  v54 = *(v118[0] + 32);
  *(v118[0] + 32) = v53;
  MEMORY[0x1E69E5920](v54);
  v55 = [(AKDevice *)selfCopy->_companionDevice copy];
  v56 = *(v118[0] + 12);
  *(v118[0] + 12) = v55;
  MEMORY[0x1E69E5920](v56);
  v57 = [(NSNumber *)selfCopy->_isAppleIDLoginEnabled copy];
  v58 = *(v118[0] + 70);
  *(v118[0] + 70) = v57;
  MEMORY[0x1E69E5920](v58);
  v59 = [(NSNumber *)selfCopy->_hasEmptyPassword copy];
  v60 = *(v118[0] + 71);
  *(v118[0] + 71) = v59;
  MEMORY[0x1E69E5920](v60);
  *(v118[0] + 159) = selfCopy->_shouldRequestShortLivedToken;
  v61 = [(NSString *)selfCopy->_shortLivedToken copy];
  v62 = *(v118[0] + 30);
  *(v118[0] + 30) = v61;
  MEMORY[0x1E69E5920](v62);
  v63 = [(NSString *)selfCopy->_identityToken copy];
  v64 = *(v118[0] + 25);
  *(v118[0] + 25) = v63;
  MEMORY[0x1E69E5920](v64);
  *(v118[0] + 160) = selfCopy->_shouldRequestConfigurationInfo;
  *(v118[0] + 144) = selfCopy->_isTriggeredByNotification;
  v65 = [(NSString *)selfCopy->_message copy];
  v66 = *(v118[0] + 31);
  *(v118[0] + 31) = v65;
  MEMORY[0x1E69E5920](v66);
  *(v118[0] + 162) = selfCopy->_anticipateEscrowAttempt;
  *(v118[0] + 163) = selfCopy->_isFirstTimeLogin;
  *(v118[0] + 161) = selfCopy->_supportsPiggybacking;
  v67 = [(NSSet *)selfCopy->_desiredInternalTokens copy];
  v68 = *(v118[0] + 72);
  *(v118[0] + 72) = v67;
  MEMORY[0x1E69E5920](v68);
  *(v118[0] + 164) = selfCopy->_shouldSkipSettingsLaunchAlert;
  *(v118[0] + 124) = selfCopy->_shouldSendIdentityTokenForRemoteUI;
  *(v118[0] + 158) = selfCopy->_shouldRequestRecoveryPET;
  v69 = [(NSString *)selfCopy->_title copy];
  v70 = *(v118[0] + 59);
  *(v118[0] + 59) = v69;
  MEMORY[0x1E69E5920](v70);
  v71 = [(NSString *)selfCopy->_helpAnchor copy];
  v72 = *(v118[0] + 60);
  *(v118[0] + 60) = v71;
  MEMORY[0x1E69E5920](v72);
  v73 = [(NSString *)selfCopy->_helpBook copy];
  v74 = *(v118[0] + 61);
  *(v118[0] + 61) = v73;
  MEMORY[0x1E69E5920](v74);
  _shouldSkipInitialReachabilityCheck = [(AKAppleIDAuthenticationContext *)selfCopy _shouldSkipInitialReachabilityCheck];
  *(v118[0] + 127) = _shouldSkipInitialReachabilityCheck;
  *(v118[0] + 14) = selfCopy->_attemptIndex;
  objc_storeStrong(v118[0] + 73, selfCopy->_securityUpgradeContext);
  *(v118[0] + 37) = selfCopy->_authenticationType;
  *(v118[0] + 125) = selfCopy->_shouldSendGrandSlamTokensForRemoteUI;
  *(v118[0] + 147) = selfCopy->_needsRepair;
  v76 = [(NSDictionary *)selfCopy->_appProvidedData copy];
  v77 = *(v118[0] + 40);
  *(v118[0] + 40) = v76;
  MEMORY[0x1E69E5920](v77);
  objc_storeStrong(v118[0] + 41, selfCopy->_appProvidedContext);
  v78 = [(NSString *)selfCopy->_masterKey copy];
  v79 = *(v118[0] + 34);
  *(v118[0] + 34) = v78;
  MEMORY[0x1E69E5920](v79);
  *(v118[0] + 121) = selfCopy->_performUIOutOfProcess;
  *(v118[0] + 122) = selfCopy->_keepAlive;
  v80 = [(NSString *)selfCopy->_cancelButtonString copy];
  v81 = *(v118[0] + 63);
  *(v118[0] + 63) = v80;
  MEMORY[0x1E69E5920](v81);
  v82 = [(NSString *)selfCopy->_alternativeButtonString copy];
  v83 = *(v118[0] + 64);
  *(v118[0] + 64) = v82;
  MEMORY[0x1E69E5920](v83);
  *(v118[0] + 148) = selfCopy->_hideAlternativeButton;
  *(v118[0] + 149) = selfCopy->_hideCancelButton;
  *(v118[0] + 150) = selfCopy->_hideReasonString;
  *(v118[0] + 151) = selfCopy->_clientShouldHandleAlternativeButtonAction;
  v84 = [(NSString *)selfCopy->_windowTitle copy];
  v85 = *(v118[0] + 65);
  *(v118[0] + 65) = v84;
  MEMORY[0x1E69E5920](v85);
  *(v118[0] + 152) = selfCopy->_alwaysShowUsernameField;
  v86 = [(NSString *)selfCopy->_privacyBundleIdentifier copy];
  v87 = *(v118[0] + 66);
  *(v118[0] + 66) = v86;
  MEMORY[0x1E69E5920](v87);
  *(v118[0] + 62) = selfCopy->_authenticationPromptStyle;
  *(v118[0] + 74) = selfCopy->_requestedNewAccountAgeRange;
  *(v118[0] + 38) = selfCopy->_authenticationMode;
  *(v118[0] + 132) = selfCopy->_isMDMInformationRequired;
  *(v118[0] + 133) = selfCopy->_cliMode;
  objc_storeStrong(v118[0] + 42, selfCopy->_passwordlessToken);
  objc_storeStrong(v118[0] + 43, selfCopy->_idmsDataToken);
  *(v118[0] + 165) = selfCopy->_needsSecurityUpgradeUI;
  *(v118[0] + 166) = selfCopy->_isRKVerification;
  v88 = [(NSData *)selfCopy->_displayImageData copy];
  v89 = *(v118[0] + 67);
  *(v118[0] + 67) = v88;
  MEMORY[0x1E69E5920](v89);
  *(v118[0] + 77) = selfCopy->_verifyCredentialReason;
  v90 = [(NSString *)selfCopy->_callerIconBundlePath copy];
  v91 = *(v118[0] + 79);
  *(v118[0] + 79) = v90;
  MEMORY[0x1E69E5920](v91);
  v92 = [(NSString *)selfCopy->_localizedCallerName copy];
  v93 = *(v118[0] + 80);
  *(v118[0] + 80) = v92;
  MEMORY[0x1E69E5920](v93);
  v94 = [(NSString *)selfCopy->_custodianRecoveryToken copy];
  v95 = *(v118[0] + 78);
  *(v118[0] + 78) = v94;
  MEMORY[0x1E69E5920](v95);
  *(v118[0] + 130) = selfCopy->_forceEligibleForForegroundAuthentication;
  *(v118[0] + 154) = selfCopy->_deviceRegionRequired;
  *(v118[0] + 153) = selfCopy->_disableProximityAuth;
  _shouldBroadcastForProximityAuthOnly = [(AKAppleIDAuthenticationContext *)selfCopy _shouldBroadcastForProximityAuthOnly];
  *(v118[0] + 131) = _shouldBroadcastForProximityAuthOnly;
  *(v118[0] + 168) = selfCopy->_enablePasscodeAuth;
  *(v118[0] + 155) = selfCopy->_passcodeOnlyPolicy;
  v97 = [(NSString *)selfCopy->_sourceAltDSID copy];
  v98 = *(v118[0] + 83);
  *(v118[0] + 83) = v97;
  MEMORY[0x1E69E5920](v98);
  v99 = [(NSString *)selfCopy->_serviceToken copy];
  v100 = *(v118[0] + 81);
  *(v118[0] + 81) = v99;
  MEMORY[0x1E69E5920](v100);
  *(v118[0] + 137) = selfCopy->_isRequestedFromOOPViewService;
  *(v118[0] + 167) = selfCopy->_biometricSkipPasscodeFallback;
  *(v118[0] + 134) = selfCopy->_isNativeTakeover;
  *(v118[0] + 135) = selfCopy->_ignorePasswordCache;
  *(v118[0] + 136) = selfCopy->_ignoreShouldContinueProxy;
  v101 = [(NSString *)selfCopy->_proxiedAppleID copy];
  v102 = *(v118[0] + 82);
  *(v118[0] + 82) = v101;
  MEMORY[0x1E69E5920](v102);
  v103 = [(AKCompanionKeyEnvelope *)selfCopy->_companionKeyEnvelope copy];
  v104 = *(v118[0] + 46);
  *(v118[0] + 46) = v103;
  MEMORY[0x1E69E5920](v104);
  *(v118[0] + 138) = selfCopy->_piggybackingForTrustedDevice;
  *(v118[0] + 169) = selfCopy->_allowAuthenticationBeforeFirstUnlock;
  objc_storeStrong(v118[0] + 47, selfCopy->_protoAccountContext);
  objc_storeStrong(v118[0] + 48, selfCopy->_idmsData);
  v105 = [(AKAccountMigrationContext *)selfCopy->_accountMigrationContext copy];
  v106 = *(v118[0] + 49);
  *(v118[0] + 49) = v105;
  MEMORY[0x1E69E5920](v106);
  v107 = [(NSString *)selfCopy->_proxiedToken copy];
  v108 = *(v118[0] + 50);
  *(v118[0] + 50) = v107;
  MEMORY[0x1E69E5920](v108);
  v109 = [(AKAuthenticatableResource *)selfCopy->_authenticatableResource copy];
  v110 = *(v118[0] + 51);
  *(v118[0] + 51) = v109;
  MEMORY[0x1E69E5920](v110);
  v112 = MEMORY[0x1E69E5928](v118[0]);
  objc_storeStrong(v118, 0);

  return v112;
}

- (void)_updateWithValuesFromContext:(id)context
{
  v79 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v75 = _AKLogSystem();
  v74 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v78, selfCopy, location[0]);
    _os_log_debug_impl(&dword_193225000, v75, v74, "%@ being updated by %@", v78, 0x16u);
  }

  objc_storeStrong(&v75, 0);
  if (location[0])
  {
    v3 = [*(location[0] + 52) copy];
    reason = selfCopy->_reason;
    selfCopy->_reason = v3;
    MEMORY[0x1E69E5920](reason);
    v5 = [*(location[0] + 22) copy];
    username = selfCopy->_username;
    selfCopy->_username = v5;
    MEMORY[0x1E69E5920](username);
    selfCopy->_isUsernameEditable = *(location[0] + 139) & 1;
    v7 = [*(location[0] + 56) copy];
    DSID = selfCopy->_DSID;
    selfCopy->_DSID = v7;
    MEMORY[0x1E69E5920](DSID);
    v9 = [*(location[0] + 35) copy];
    altDSID = selfCopy->_altDSID;
    selfCopy->_altDSID = v9;
    MEMORY[0x1E69E5920](altDSID);
    v11 = [*(location[0] + 44) copy];
    telemetryDeviceSessionID = selfCopy->_telemetryDeviceSessionID;
    selfCopy->_telemetryDeviceSessionID = v11;
    MEMORY[0x1E69E5920](telemetryDeviceSessionID);
    v13 = [*(location[0] + 45) copy];
    telemetryFlowID = selfCopy->_telemetryFlowID;
    selfCopy->_telemetryFlowID = v13;
    MEMORY[0x1E69E5920](telemetryFlowID);
    objc_storeStrong(&selfCopy->_dependentAltDSID, *(location[0] + 75));
    v15 = [*(location[0] + 55) copy];
    serviceIdentifiers = selfCopy->_serviceIdentifiers;
    selfCopy->_serviceIdentifiers = v15;
    MEMORY[0x1E69E5920](serviceIdentifiers);
    selfCopy->_serviceType = *(location[0] + 36);
    selfCopy->_maximumLoginAttempts = *(location[0] + 54);
    selfCopy->_isEphemeral = *(location[0] + 145) & 1;
    selfCopy->_shouldAllowAppleIDCreation = *(location[0] + 140) & 1;
    selfCopy->_shouldPromptForPasswordOnly = *(location[0] + 156) & 1;
    v17 = [*(location[0] + 27) copy];
    passwordPromptTitle = selfCopy->_passwordPromptTitle;
    selfCopy->_passwordPromptTitle = v17;
    MEMORY[0x1E69E5920](passwordPromptTitle);
    v19 = [*(location[0] + 53) copy];
    defaultButtonString = selfCopy->_defaultButtonString;
    selfCopy->_defaultButtonString = v19;
    MEMORY[0x1E69E5920](defaultButtonString);
    v21 = [*(location[0] + 57) copy];
    httpHeadersForRemoteUI = selfCopy->_httpHeadersForRemoteUI;
    selfCopy->_httpHeadersForRemoteUI = v21;
    MEMORY[0x1E69E5920](httpHeadersForRemoteUI);
    v23 = [*(location[0] + 26) copy];
    remoteUIIdentityToken = selfCopy->_remoteUIIdentityToken;
    selfCopy->_remoteUIIdentityToken = v23;
    MEMORY[0x1E69E5920](remoteUIIdentityToken);
    v25 = [*(location[0] + 28) copy];
    password = selfCopy->_password;
    selfCopy->_password = v25;
    MEMORY[0x1E69E5920](password);
    selfCopy->_shouldUpdatePersistentServiceTokens = *(location[0] + 157) & 1;
    selfCopy->_shouldOfferSecurityUpgrade = *(location[0] + 146) & 1;
    selfCopy->_shouldPreventInteractiveAuth = *(location[0] + 128) & 1;
    v27 = [*(location[0] + 1) copy];
    generatedCode = selfCopy->_generatedCode;
    selfCopy->_generatedCode = v27;
    MEMORY[0x1E69E5920](generatedCode);
    selfCopy->_shouldForceInteractiveAuth = *(location[0] + 129) & 1;
    v29 = [*(location[0] + 33) copy];
    proxiedDeviceAnisetteData = selfCopy->_proxiedDeviceAnisetteData;
    selfCopy->_proxiedDeviceAnisetteData = v29;
    MEMORY[0x1E69E5920](proxiedDeviceAnisetteData);
    v31 = [*(location[0] + 11) copy];
    proxiedDevice = selfCopy->_proxiedDevice;
    selfCopy->_proxiedDevice = v31;
    MEMORY[0x1E69E5920](proxiedDevice);
    v33 = [*(location[0] + 32) copy];
    companionDeviceAnisetteData = selfCopy->_companionDeviceAnisetteData;
    selfCopy->_companionDeviceAnisetteData = v33;
    MEMORY[0x1E69E5920](companionDeviceAnisetteData);
    v35 = [*(location[0] + 12) copy];
    companionDevice = selfCopy->_companionDevice;
    selfCopy->_companionDevice = v35;
    MEMORY[0x1E69E5920](companionDevice);
    selfCopy->_needsNewAppleID = *(location[0] + 142) & 1;
    v37 = [*(location[0] + 70) copy];
    isAppleIDLoginEnabled = selfCopy->_isAppleIDLoginEnabled;
    selfCopy->_isAppleIDLoginEnabled = v37;
    MEMORY[0x1E69E5920](isAppleIDLoginEnabled);
    v39 = [*(location[0] + 71) copy];
    hasEmptyPassword = selfCopy->_hasEmptyPassword;
    selfCopy->_hasEmptyPassword = v39;
    MEMORY[0x1E69E5920](hasEmptyPassword);
    selfCopy->_shouldRequestShortLivedToken = *(location[0] + 159) & 1;
    v41 = [*(location[0] + 30) copy];
    shortLivedToken = selfCopy->_shortLivedToken;
    selfCopy->_shortLivedToken = v41;
    MEMORY[0x1E69E5920](shortLivedToken);
    v43 = [*(location[0] + 25) copy];
    identityToken = selfCopy->_identityToken;
    selfCopy->_identityToken = v43;
    MEMORY[0x1E69E5920](identityToken);
    selfCopy->_shouldRequestConfigurationInfo = *(location[0] + 160) & 1;
    selfCopy->_isTriggeredByNotification = *(location[0] + 144) & 1;
    v45 = [*(location[0] + 31) copy];
    message = selfCopy->_message;
    selfCopy->_message = v45;
    MEMORY[0x1E69E5920](message);
    selfCopy->_anticipateEscrowAttempt = *(location[0] + 162) & 1;
    selfCopy->_isFirstTimeLogin = *(location[0] + 163) & 1;
    selfCopy->_supportsPiggybacking = *(location[0] + 161) & 1;
    v47 = [*(location[0] + 72) copy];
    desiredInternalTokens = selfCopy->_desiredInternalTokens;
    selfCopy->_desiredInternalTokens = v47;
    MEMORY[0x1E69E5920](desiredInternalTokens);
    selfCopy->_shouldSkipSettingsLaunchAlert = *(location[0] + 164) & 1;
    selfCopy->_shouldSendIdentityTokenForRemoteUI = *(location[0] + 124) & 1;
    selfCopy->_shouldRequestRecoveryPET = *(location[0] + 158) & 1;
    objc_storeStrong(&selfCopy->_title, *(location[0] + 59));
    objc_storeStrong(&selfCopy->_helpAnchor, *(location[0] + 60));
    objc_storeStrong(&selfCopy->_helpBook, *(location[0] + 61));
    selfCopy->_attemptIndex = *(location[0] + 14);
    objc_storeStrong(&selfCopy->_securityUpgradeContext, *(location[0] + 73));
    selfCopy->_authenticationType = *(location[0] + 37);
    selfCopy->_shouldSendGrandSlamTokensForRemoteUI = *(location[0] + 125) & 1;
    selfCopy->_needsRepair = *(location[0] + 147) & 1;
    objc_storeStrong(&selfCopy->_appProvidedData, *(location[0] + 40));
    objc_storeStrong(&selfCopy->_appProvidedContext, *(location[0] + 41));
    v49 = [*(location[0] + 34) copy];
    masterKey = selfCopy->_masterKey;
    selfCopy->_masterKey = v49;
    MEMORY[0x1E69E5920](masterKey);
    selfCopy->_keepAlive = *(location[0] + 122) & 1;
    v51 = [*(location[0] + 63) copy];
    cancelButtonString = selfCopy->_cancelButtonString;
    selfCopy->_cancelButtonString = v51;
    MEMORY[0x1E69E5920](cancelButtonString);
    v53 = [*(location[0] + 64) copy];
    alternativeButtonString = selfCopy->_alternativeButtonString;
    selfCopy->_alternativeButtonString = v53;
    MEMORY[0x1E69E5920](alternativeButtonString);
    selfCopy->_hideAlternativeButton = *(location[0] + 148) & 1;
    selfCopy->_hideCancelButton = *(location[0] + 149) & 1;
    selfCopy->_hideReasonString = *(location[0] + 150) & 1;
    selfCopy->_clientShouldHandleAlternativeButtonAction = *(location[0] + 151) & 1;
    v55 = [*(location[0] + 65) copy];
    windowTitle = selfCopy->_windowTitle;
    selfCopy->_windowTitle = v55;
    MEMORY[0x1E69E5920](windowTitle);
    selfCopy->_alwaysShowUsernameField = *(location[0] + 152) & 1;
    objc_storeStrong(&selfCopy->_privacyBundleIdentifier, *(location[0] + 66));
    selfCopy->_authenticationPromptStyle = *(location[0] + 62);
    selfCopy->_requestedNewAccountAgeRange = *(location[0] + 74);
    selfCopy->_authenticationMode = *(location[0] + 38);
    selfCopy->_isMDMInformationRequired = *(location[0] + 132) & 1;
    selfCopy->_cliMode = *(location[0] + 133) & 1;
    objc_storeStrong(&selfCopy->_passwordlessToken, *(location[0] + 42));
    objc_storeStrong(&selfCopy->_idmsDataToken, *(location[0] + 43));
    selfCopy->_needsSecurityUpgradeUI = *(location[0] + 165) & 1;
    selfCopy->_isRKVerification = *(location[0] + 166) & 1;
    v57 = [*(location[0] + 67) copy];
    displayImageData = selfCopy->_displayImageData;
    selfCopy->_displayImageData = v57;
    MEMORY[0x1E69E5920](displayImageData);
    selfCopy->_verifyCredentialReason = *(location[0] + 77);
    v59 = [*(location[0] + 79) copy];
    callerIconBundlePath = selfCopy->_callerIconBundlePath;
    selfCopy->_callerIconBundlePath = v59;
    MEMORY[0x1E69E5920](callerIconBundlePath);
    v61 = [*(location[0] + 80) copy];
    localizedCallerName = selfCopy->_localizedCallerName;
    selfCopy->_localizedCallerName = v61;
    MEMORY[0x1E69E5920](localizedCallerName);
    v63 = [*(location[0] + 78) copy];
    custodianRecoveryToken = selfCopy->_custodianRecoveryToken;
    selfCopy->_custodianRecoveryToken = v63;
    MEMORY[0x1E69E5920](custodianRecoveryToken);
    selfCopy->_forceEligibleForForegroundAuthentication = *(location[0] + 130) & 1;
    selfCopy->_deviceRegionRequired = *(location[0] + 154) & 1;
    selfCopy->_disableProximityAuth = *(location[0] + 153) & 1;
    selfCopy->_shouldBroadcastForProximityAuthOnly = *(location[0] + 131) & 1;
    selfCopy->_enablePasscodeAuth = *(location[0] + 168) & 1;
    selfCopy->_passcodeOnlyPolicy = *(location[0] + 155) & 1;
    objc_storeStrong(&selfCopy->_sourceAltDSID, *(location[0] + 83));
    objc_storeStrong(&selfCopy->_serviceToken, *(location[0] + 81));
    selfCopy->_biometricSkipPasscodeFallback = *(location[0] + 167) & 1;
    selfCopy->_isNativeTakeover = *(location[0] + 134) & 1;
    selfCopy->_ignorePasswordCache = *(location[0] + 135) & 1;
    selfCopy->_ignoreShouldContinueProxy = *(location[0] + 136) & 1;
    selfCopy->_isRequestedFromOOPViewService = *(location[0] + 137) & 1;
    objc_storeStrong(&selfCopy->_proxiedAppleID, *(location[0] + 82));
    objc_storeStrong(&selfCopy->_companionKeyEnvelope, *(location[0] + 46));
    selfCopy->_piggybackingForTrustedDevice = *(location[0] + 138) & 1;
    objc_storeStrong(&selfCopy->_protoAccountContext, *(location[0] + 47));
    objc_storeStrong(&selfCopy->_idmsData, *(location[0] + 48));
    v65 = [*(location[0] + 49) copy];
    accountMigrationContext = selfCopy->_accountMigrationContext;
    selfCopy->_accountMigrationContext = v65;
    MEMORY[0x1E69E5920](accountMigrationContext);
    v67 = [*(location[0] + 50) copy];
    proxiedToken = selfCopy->_proxiedToken;
    selfCopy->_proxiedToken = v67;
    MEMORY[0x1E69E5920](proxiedToken);
    objc_storeStrong(&selfCopy->_authenticatableResource, *(location[0] + 51));
  }

  else
  {
    v73 = _AKLogSystem();
    v72 = 17;
    if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
    {
      v69 = v73;
      v70 = v72;
      __os_log_helper_16_0_0(v71);
      _os_log_fault_impl(&dword_193225000, v69, v70, "Cannot update auth context with nil context", v71, 2u);
    }

    objc_storeStrong(&v73, 0);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)_localUserHasEmptyPassword
{
  if (self->_hasEmptyPassword)
  {
    return [(NSNumber *)self->_hasEmptyPassword BOOLValue];
  }

  else
  {
    v3 = +[AKDevice currentDevice];
    v4 = [v3 isProtectedWithPasscode] == 0;
    MEMORY[0x1E69E5920](v3);
  }

  return v4;
}

- (NSString)description
{
  v4 = MEMORY[0x1E696AEC0];
  v2 = objc_opt_class();
  v5 = NSStringFromClass(v2);
  v6 = [v4 stringWithFormat:@"<%@: %p { UUID: %@ - FlowID: %@ - SessionID: %@ }>", v5, self, self->_identifier, self->_telemetryFlowID, self->_telemetryDeviceSessionID];
  MEMORY[0x1E69E5920](v5);

  return v6;
}

- (NSString)debugDescription
{
  v85 = MEMORY[0x1E696AEC0];
  v2 = objc_opt_class();
  v86 = NSStringFromClass(v2);
  identifier = self->_identifier;
  username = self->_username;
  v3 = @"YES";
  if (!self->_isUsernameEditable)
  {
    v3 = @"NO";
  }

  v89 = v3;
  altDSID = self->_altDSID;
  DSID = self->_DSID;
  dependentAltDSID = self->_dependentAltDSID;
  if (self->_password)
  {
    v4 = [(NSString *)self->_password length];
    v5 = @"(empty)";
    if (v4)
    {
      v5 = @"(******)";
    }

    v84 = v5;
  }

  else
  {
    v84 = @"(null)";
  }

  serviceType = self->_serviceType;
  serviceIdentifiers = self->_serviceIdentifiers;
  reason = self->_reason;
  v6 = @"YES";
  if (self->_isEphemeral)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v82 = v7;
  if (!self->_shouldPromptForPasswordOnly)
  {
    v6 = @"NO";
  }

  v83 = v6;
  if (self->_passwordlessToken)
  {
    v8 = [(NSString *)self->_passwordlessToken length];
    v9 = @"(empty)";
    if (v8)
    {
      v9 = @"(******)";
    }

    v78 = v9;
  }

  else
  {
    v78 = @"(null)";
  }

  if (self->_idmsDataToken)
  {
    v10 = [(NSString *)self->_idmsDataToken length];
    v11 = @"(empty)";
    if (v10)
    {
      v11 = @"(******)";
    }

    v77 = v11;
  }

  else
  {
    v77 = @"(null)";
  }

  v63 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_authenticationType];
  v64 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_authenticationMode];
  v12 = @"YES";
  if (self->_isMDMInformationRequired)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  v65 = v13;
  if (self->_shouldUpdatePersistentServiceTokens)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  v66 = v14;
  if (self->_shouldOfferSecurityUpgrade)
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  v67 = v15;
  securityUpgradeContext = self->_securityUpgradeContext;
  if (!self->_isProxyingForApp)
  {
    v12 = @"NO";
  }

  v69 = v12;
  proxiedAppBundleID = self->_proxiedAppBundleID;
  proxiedDevice = self->_proxiedDevice;
  companionDevice = self->_companionDevice;
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:self->_maximumLoginAttempts];
  v17 = @"YES";
  v73 = v16;
  isAppleIDLoginEnabled = self->_isAppleIDLoginEnabled;
  hasEmptyPassword = self->_hasEmptyPassword;
  if (!self->_shouldRequestShortLivedToken)
  {
    v17 = @"NO";
  }

  v76 = v17;
  if (self->_shortLivedToken)
  {
    v18 = [(NSString *)self->_shortLivedToken length];
    v19 = @"(empty)";
    if (v18)
    {
      v19 = @"(******)";
    }

    v62 = v19;
  }

  else
  {
    v62 = @"(null)";
  }

  if (self->_identityToken)
  {
    v20 = [(NSString *)self->_identityToken length];
    v21 = @"(empty)";
    if (v20)
    {
      v21 = @"(******)";
    }

    v61 = v21;
  }

  else
  {
    v61 = @"(null)";
  }

  v22 = @"YES";
  if (self->_isTriggeredByNotification)
  {
    v23 = @"YES";
  }

  else
  {
    v23 = @"NO";
  }

  v57 = v23;
  if (!self->_shouldSkipSettingsLaunchAlert)
  {
    v22 = @"NO";
  }

  v58 = v22;
  _shouldSkipInitialReachabilityCheck = [(AKAppleIDAuthenticationContext *)self _shouldSkipInitialReachabilityCheck];
  v25 = @"YES";
  if (!_shouldSkipInitialReachabilityCheck)
  {
    v25 = @"NO";
  }

  v59 = v25;
  attemptIndex = self->_attemptIndex;
  if (self->_masterKey)
  {
    v26 = [(NSString *)self->_masterKey length];
    v27 = @"(empty)";
    if (v26)
    {
      v27 = @"(******)";
    }

    v56 = v27;
  }

  else
  {
    v56 = @"(null)";
  }

  if (self->_performUIOutOfProcess)
  {
    v28 = @"YES";
  }

  else
  {
    v28 = @"NO";
  }

  if (self->_shouldBroadcastForProximityAuthOnly)
  {
    v29 = @"YES";
  }

  else
  {
    v29 = @"NO";
  }

  v30 = [MEMORY[0x1E696AD98] numberWithInteger:self->_verifyCredentialReason];
  v31 = @"YES";
  v32 = v30;
  v54 = v30;
  if (self->_enablePasscodeAuth)
  {
    v33 = @"YES";
  }

  else
  {
    v33 = @"NO";
  }

  if (self->_passcodeOnlyPolicy)
  {
    v34 = @"YES";
  }

  else
  {
    v34 = @"NO";
  }

  v41 = v34;
  sourceAltDSID = self->_sourceAltDSID;
  serviceToken = self->_serviceToken;
  if (self->_biometricSkipPasscodeFallback)
  {
    v35 = @"YES";
  }

  else
  {
    v35 = @"NO";
  }

  v44 = v35;
  if (self->_isNativeTakeover)
  {
    v36 = @"YES";
  }

  else
  {
    v36 = @"NO";
  }

  v45 = v36;
  if (self->_ignorePasswordCache)
  {
    v37 = @"YES";
  }

  else
  {
    v37 = @"NO";
  }

  v46 = v37;
  if (self->_isRequestedFromOOPViewService)
  {
    v38 = @"YES";
  }

  else
  {
    v38 = @"NO";
  }

  v47 = v38;
  proxiedAppleID = self->_proxiedAppleID;
  telemetryDeviceSessionID = self->_telemetryDeviceSessionID;
  telemetryFlowID = self->_telemetryFlowID;
  if (!self->_piggybackingForTrustedDevice)
  {
    v31 = @"NO";
  }

  v51 = v31;
  givenName = [(AKProtoAccountContext *)self->_protoAccountContext givenName];
  pendingDOB = [(AKAccountMigrationContext *)self->_accountMigrationContext pendingDOB];
  if (self->_proxiedToken)
  {
    v39 = @"YES";
  }

  else
  {
    v39 = @"NO";
  }

  v55 = [v85 stringWithFormat:@"<%@: %p {\n\tUUID: %@, \n\tusername: %@, \n\teditable-username: %@, \n\taltDSID: %@, \n\tDSID: %@, \n\tdependentAltDSID: %@, \n\tpassword: %@, \n\tservice-type: %ld, \n\tservice IDs: %@, \n\treason: %@\n\tephemeral: %@, \n\tpassword-only: %@, \n\tpasswordlessToken: %@, \n\tidmsDataToken: %@, \n\tauthentication-type: %@, \n\tauthenticationMode: %@, \n\tisMDMInfoRequired: %@, \n\tupdate-service-tokens: %@, \n\toffer-upgrade: %@, \n\toffer-upgrade-context: %@, \n\tproxying-for-app: %@, \n\tproxied-app-id: %@, \n\tproxied-device: %@, \n\tcompanion-device: %@\n\tmax-login-attempts: %@\n\tappleid-login-enabled: %@\n\thas-empty-password: %@\n\trequest-slt: %@\n\tshort-lived-token: %@\n\tidentity-token: %@\n\ttriggered-by-push: %@\n\tskip-alert: %@\n\tskip-reachability-check: %@\n\tattempt-index: %lu, \n\tmasterKey: %@, \n\tperformUIOutOfProcess: %@, \n\tbroadcastProximityAuthOnly: %@, \n\tVerifyCredentialReason: %@, \n\tEnablePasscodeAuth: %@, \n\tPasscodeOnlyPolicy: %@, \n\tSourceAltDSID: %@, \n\tServiceToken: %@, \n\tbiometricSkipPasscodeFallback: %@, \n\tisNativeTakeover: %@, \n\tignorePasswordCache: %@, \n\tisRequestedFromOOPViewService: %@, \n\tProxiedAppleID: %@, \n\ttelemetryDeviceSessionID: %@, \n\ttelemetryFlowID: %@, \n\tpiggybackingForTrustedDevice: %@, \n\tprotoAccountContextGivenName: %@, \n\taccountMigrationContextPendingDOB: %@, \n\tproxiedToken: %@, \n\tauthenticatableResource: %@, \n}>", v86, self, identifier, username, v89, altDSID, DSID, dependentAltDSID, v84, serviceType, serviceIdentifiers, reason, v82, v83, v78, v77, v63, v64, v65, v66, v67, securityUpgradeContext, v69, proxiedAppBundleID, proxiedDevice, companionDevice, v73, isAppleIDLoginEnabled, hasEmptyPassword, v76, v62, v61, v57, v58, v59, attemptIndex, v56, v28, v29, v32, v33, v41, sourceAltDSID, serviceToken, v44, v45, v46, v47, proxiedAppleID, telemetryDeviceSessionID, telemetryFlowID, v51, givenName, pendingDOB, v39, self->_authenticatableResource];
  MEMORY[0x1E69E5920](pendingDOB);
  MEMORY[0x1E69E5920](givenName);
  MEMORY[0x1E69E5920](v54);
  MEMORY[0x1E69E5920](v73);
  MEMORY[0x1E69E5920](v64);
  MEMORY[0x1E69E5920](v63);
  MEMORY[0x1E69E5920](v86);

  return v55;
}

- (BOOL)isContextEligibleForSilentAuthCoercion
{
  _proxiedAppName = [(AKAppleIDAuthenticationContext *)self _proxiedAppName];
  v4 = [(NSString *)_proxiedAppName hasPrefix:@"findmydeviced"];
  MEMORY[0x1E69E5920](_proxiedAppName);
  v5 = 0;
  if ([(AKAppleIDAuthenticationContext *)self _capabilityForUIDisplay]== 1)
  {
    v5 = 0;
    if ([(AKAppleIDAuthenticationContext *)self isContextEligibleForSilentAuth])
    {
      return !v4;
    }
  }

  return v5;
}

- (BOOL)isContextEligibleForSilentAuth
{
  v8 = 0;
  v6 = 0;
  v4 = 0;
  v3 = 0;
  if ([(AKAppleIDAuthenticationContext *)self authenticationType]== 2)
  {
    v3 = 0;
    if (![(AKAppleIDAuthenticationContext *)self shouldPromptForPasswordOnly])
    {
      v3 = 0;
      if (![(AKAppleIDAuthenticationContext *)self isEphemeral])
      {
        v3 = 0;
        if (![(AKAppleIDAuthenticationContext *)self isUsernameEditable])
        {
          v9 = +[AKAccountManager sharedInstance];
          v8 = 1;
          v7 = [(AKAppleIDAuthenticationContext *)self authKitAccount:0];
          v6 = 1;
          v5 = [(AKAccountManager *)v9 continuationTokenForAccount:?];
          v4 = 1;
          v3 = v5 != 0;
        }
      }
    }
  }

  if (v4)
  {
    MEMORY[0x1E69E5920](v5);
  }

  if (v6)
  {
    MEMORY[0x1E69E5920](v7);
  }

  if (v8)
  {
    MEMORY[0x1E69E5920](v9);
  }

  return v3;
}

- (BOOL)isContextEligibleForBiometricOrPasscodeAuth
{
  v3 = 0;
  if ([(AKAppleIDAuthenticationContext *)self _isVerifyCredentialReasonEligibleForBiometricOrPasscodeAuth])
  {
    return [(AKAppleIDAuthenticationContext *)self _isEligibleForPasscodeAuth];
  }

  return v3;
}

- (BOOL)isContextEligibleForPasscodeAuth
{
  v39 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v35[1] = a2;
  v35[0] = +[AKAccountManager sharedInstance];
  v34 = [(AKAppleIDAuthenticationContext *)selfCopy authKitAccount:0];
  v18 = +[AKConfiguration sharedConfiguration];
  v19 = 1;
  if ([v18 shouldAskToBuy] != 1)
  {
    v19 = [v35[0] isAskToBuyForAccount:v34];
  }

  MEMORY[0x1E69E5920](v18);
  v33 = v19 & 1;
  location = _AKLogSystem();
  v31 = 2;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
  {
    log = location;
    type = v31;
    __os_log_helper_16_0_0(v30);
    _os_log_debug_impl(&dword_193225000, log, type, "Begin passcode auth eligibility check", v30, 2u);
  }

  objc_storeStrong(&location, 0);
  if ([(AKAppleIDAuthenticationContext *)selfCopy serviceType]!= 2 || (v33 & 1) != 0)
  {
    companionDevice = [(AKAppleIDAuthenticationContext *)selfCopy companionDevice];
    v24 = 0;
    v13 = 1;
    if (!companionDevice)
    {
      proxiedDevice = [(AKAppleIDAuthenticationContext *)selfCopy proxiedDevice];
      v24 = 1;
      v13 = proxiedDevice != 0;
    }

    if (v24)
    {
      MEMORY[0x1E69E5920](proxiedDevice);
    }

    MEMORY[0x1E69E5920](companionDevice);
    if (v13)
    {
      v23 = _AKLogSystem();
      v22 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v23;
        v11 = v22;
        __os_log_helper_16_0_0(v21);
        _os_log_impl(&dword_193225000, v10, v11, "Account is not passcode auth eligible for magic and prox auth flows.", v21, 2u);
      }

      objc_storeStrong(&v23, 0);
      v37 = 0;
      v26 = 1;
    }

    else
    {
      v20 = _AKLogSystem();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v9 = +[AKFeatureManager sharedManager];
        isChildPasscodeEnabled = [v9 isChildPasscodeEnabled];
        enablePasscodeAuth = [(AKAppleIDAuthenticationContext *)selfCopy enablePasscodeAuth];
        v7 = [v35[0] isPasscodeAuthEnabledForAccount:v34];
        v8 = [v35[0] userUnderAgeForAccount:v34];
        __os_log_helper_16_0_5_4_0_4_0_4_0_4_0_4_0(v38, isChildPasscodeEnabled, enablePasscodeAuth, v7, v8, [(AKAppleIDAuthenticationContext *)selfCopy _isEligibleForPasscodeAuth]);
        _os_log_debug_impl(&dword_193225000, v20, OS_LOG_TYPE_DEBUG, "isContextEligibleForPasscodeAuth: {\n\tisChildPasscodeEnabled: %d, \n\tenablePasscodeAuth: %d, \n\tisPasscodeAuthEnabled: %d, \n\tuserUnderAge: %d, \n\tisEligibleForPasscodeAuth: %d, \n}", v38, 0x20u);
        MEMORY[0x1E69E5920](v9);
      }

      objc_storeStrong(&v20, 0);
      v3 = +[AKFeatureManager sharedManager];
      _isEligibleForPasscodeAuth = 0;
      if ([v3 isChildPasscodeEnabled])
      {
        _isEligibleForPasscodeAuth = 0;
        if ([(AKAppleIDAuthenticationContext *)selfCopy enablePasscodeAuth])
        {
          _isEligibleForPasscodeAuth = 0;
          if ([v35[0] isPasscodeAuthEnabledForAccount:v34])
          {
            _isEligibleForPasscodeAuth = 0;
            if ([v35[0] userUnderAgeForAccount:v34])
            {
              _isEligibleForPasscodeAuth = [(AKAppleIDAuthenticationContext *)selfCopy _isEligibleForPasscodeAuth];
            }
          }
        }
      }

      v37 = _isEligibleForPasscodeAuth;
      MEMORY[0x1E69E5920](v3);
      v26 = 1;
    }
  }

  else
  {
    v29 = _AKLogSystem();
    v28 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v29;
      v15 = v28;
      __os_log_helper_16_0_0(v27);
      _os_log_impl(&dword_193225000, v14, v15, "Account is not passcode auth eligible. AskToBuy is disabled.", v27, 2u);
    }

    objc_storeStrong(&v29, 0);
    v37 = 0;
    v26 = 1;
  }

  objc_storeStrong(&v34, 0);
  objc_storeStrong(v35, 0);
  *MEMORY[0x1E69E9840];
  return v37;
}

- (BOOL)isConfiguredForTokenUpgrade
{
  selfCopy = self;
  v17[1] = a2;
  v16 = 0;
  v17[0] = [(AKAppleIDAuthenticationContext *)self serviceToken];
  MEMORY[0x1E69E5920](0);
  v9 = +[AKFeatureManager sharedManager];
  isPltUpgradeEnabled = [v9 isPltUpgradeEnabled];
  MEMORY[0x1E69E5920](v9);
  if (isPltUpgradeEnabled)
  {
    location = _AKLogSystem();
    v14 = 2;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
    {
      log = location;
      type = v14;
      __os_log_helper_16_0_0(v13);
      _os_log_debug_impl(&dword_193225000, log, type, "Plt upgrade enabled, checking if plt is nonnull", v13, 2u);
    }

    objc_storeStrong(&location, 0);
    passwordlessToken = [(AKAppleIDAuthenticationContext *)selfCopy passwordlessToken];
    v3 = v16;
    v16 = passwordlessToken;
    MEMORY[0x1E69E5920](v3);
  }

  _shortLivedToken = [(AKAppleIDAuthenticationContext *)selfCopy _shortLivedToken];
  v11 = 0;
  v6 = 1;
  if (!_shortLivedToken)
  {
    _identityToken = [(AKAppleIDAuthenticationContext *)selfCopy _identityToken];
    v11 = 1;
    v6 = 1;
    if (!_identityToken)
    {
      v6 = 1;
      if (!v16)
      {
        v6 = v17[0] != 0;
      }
    }
  }

  if (v11)
  {
    MEMORY[0x1E69E5920](_identityToken);
  }

  MEMORY[0x1E69E5920](_shortLivedToken);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(v17, 0);
  return v6;
}

- (void)isConfiguredForTokenUpgradeWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  serviceToken = [(AKAppleIDAuthenticationContext *)selfCopy serviceToken];
  MEMORY[0x1E69E5920](0);
  _shortLivedToken = [(AKAppleIDAuthenticationContext *)selfCopy _shortLivedToken];
  v14 = 0;
  v5 = 1;
  if (!_shortLivedToken)
  {
    _identityToken = [(AKAppleIDAuthenticationContext *)selfCopy _identityToken];
    v14 = 1;
    v5 = 1;
    if (!_identityToken)
    {
      v5 = serviceToken != 0;
    }
  }

  if (v14)
  {
    MEMORY[0x1E69E5920](_identityToken);
  }

  MEMORY[0x1E69E5920](_shortLivedToken);
  v16 = v5;
  if (v5)
  {
    if (location[0])
    {
      (*(location[0] + 2))(location[0], 1, 0);
    }

    v13 = 1;
  }

  else
  {
    v3 = +[AKURLBag sharedBag];
    v6 = MEMORY[0x1E69E9820];
    v7 = -1073741824;
    v8 = 0;
    v9 = __76__AKAppleIDAuthenticationContext_isConfiguredForTokenUpgradeWithCompletion___block_invoke;
    v10 = &unk_1E73D9518;
    v11 = MEMORY[0x1E69E5928](selfCopy);
    v12 = MEMORY[0x1E69E5928](location[0]);
    [v3 configurationValueForKey:@"pltUpgradeEnabled" fromCache:1 completion:&v6];
    MEMORY[0x1E69E5920](v3);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v11, 0);
    v13 = 0;
  }

  objc_storeStrong(&serviceToken, 0);
  objc_storeStrong(location, 0);
}

void __76__AKAppleIDAuthenticationContext_isConfiguredForTokenUpgradeWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v19 = 0;
  objc_storeStrong(&v19, a3);
  v18 = a1;
  v17[8] = 0;
  *v17 = [location[0] BOOLValue];
  v15 = 0;
  v10 = 0;
  if (v17[0])
  {
    v16 = [*(a1 + 32) passwordlessToken];
    v15 = 1;
    v10 = v16 != 0;
  }

  if (v15)
  {
    MEMORY[0x1E69E5920](v16);
  }

  if (v10)
  {
    v14 = _AKLogSystem();
    v13 = 2;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      log = v14;
      type = v13;
      __os_log_helper_16_0_0(v12);
      _os_log_debug_impl(&dword_193225000, log, type, "Plt upgrade is enabled, setting plt", v12, 2u);
    }

    objc_storeStrong(&v14, 0);
    v3 = [*(a1 + 32) passwordlessToken];
    v4 = *&v17[1];
    *&v17[1] = v3;
    MEMORY[0x1E69E5920](v4);
  }

  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_3_2_4_0_8_65(v21, v17[0] & 1, v19);
    _os_log_debug_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEBUG, "Fetch PLT upgrade config completed with status - %d and error -%{private}@", v21, 0x12u);
  }

  objc_storeStrong(&oslog, 0);
  if (*(a1 + 40))
  {
    v5 = (*(a1 + 40) + 16);
    [*&v17[1] length];
    (*v5)();
  }

  objc_storeStrong(&v17[1], 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)_isEligibleForPasscodeAuth
{
  v19 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v16 = a2;
  v15 = 1;
  v7 = +[AKAccountManager sharedInstance];
  v6 = [(AKAppleIDAuthenticationContext *)selfCopy authKitAccount:?];
  v2 = [(AKAccountManager *)v7 continuationTokenForAccount:?];
  v8 = v2 != 0;
  MEMORY[0x1E69E5920](v2);
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v7);
  v14 = v8;
  v10 = +[AKAccountManager sharedInstance];
  v9 = [(AKAppleIDAuthenticationContext *)selfCopy authKitAccount:0];
  v3 = [(AKAccountManager *)v10 passwordResetTokenForAccount:?];
  v11 = v3 != 0;
  MEMORY[0x1E69E5920](v3);
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v10);
  v13 = v11;
  location = _AKLogSystem();
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_7_4_0_8_0_4_0_4_0_4_0_4_0_4_0(v18, v15 & 1, [(AKAppleIDAuthenticationContext *)selfCopy authenticationType], [(AKAppleIDAuthenticationContext *)selfCopy shouldPromptForPasswordOnly], [(AKAppleIDAuthenticationContext *)selfCopy isEphemeral], [(AKAppleIDAuthenticationContext *)selfCopy isUsernameEditable], v14, v13);
    _os_log_debug_impl(&dword_193225000, location, OS_LOG_TYPE_DEBUG, "_isEligibleForPasscodeAuth: {\n\thasRequiredCapabilityForUIDisplay: %d, \n\tauthenticationType: %lu, \n\tshouldPromptForPasswordOnly: %d, \n\tisEphemeral: %d, \n\tisUsernameEditable: %d, \n\tvalidContinuationToken: %d, \n\tvalidPasswordResetToken: %d, \n}", v18, 0x30u);
  }

  objc_storeStrong(&location, 0);
  v5 = 0;
  if (v15)
  {
    v5 = 0;
    if ([(AKAppleIDAuthenticationContext *)selfCopy authenticationType]== 2)
    {
      v5 = 0;
      if (![(AKAppleIDAuthenticationContext *)selfCopy shouldPromptForPasswordOnly])
      {
        v5 = 0;
        if (![(AKAppleIDAuthenticationContext *)selfCopy isEphemeral])
        {
          v5 = 0;
          if (![(AKAppleIDAuthenticationContext *)selfCopy isUsernameEditable])
          {
            v5 = 0;
            if (v14)
            {
              v5 = v13;
            }
          }
        }
      }
    }
  }

  *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isContextRequestingReauthForExistingService
{
  selfCopy = self;
  v6[1] = a2;
  if (self->_isContextRequestingReauthForExistingService)
  {
    v8 = 1;
  }

  else
  {
    v6[0] = [(AKAppleIDAuthenticationContext *)selfCopy authKitAccount:0];
    if (!v6[0] || ((v3 = +[AKAccountManager sharedInstance](AKAccountManager, "sharedInstance"), location = -[AKAccountManager servicesUsingAccount:](v3, "servicesUsingAccount:", v6[0]), MEMORY[0x1E69E5920](v3), ![location count]) ? (v4 = 0) : (selfCopy->_isContextRequestingReauthForExistingService = 1, v8 = 1, v4 = 1), objc_storeStrong(&location, 0), !v4))
    {
      v8 = 0;
    }

    objc_storeStrong(v6, 0);
  }

  return v8 & 1;
}

- (unint64_t)_capabilityForUIDisplay
{
  if (!self->_capabilityForUIDisplay)
  {
    if (([(AKAppleIDAuthenticationContext *)self conformsToProtocol:&unk_1F07DCFE8]& 1) != 0)
    {
      self->_capabilityForUIDisplay = 3;
    }

    else if (([(AKAppleIDAuthenticationContext *)self conformsToProtocol:&unk_1F07D9928]& 1) != 0)
    {
      self->_capabilityForUIDisplay = 2;
    }

    else if (([(AKAppleIDAuthenticationContext *)self conformsToProtocol:&unk_1F07CAFF8]& 1) != 0)
    {
      self->_capabilityForUIDisplay = 1;
    }
  }

  return self->_capabilityForUIDisplay;
}

- (void)setReason:(id)reason
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, reason);
  if (![location[0] isEqualToString:selfCopy->_reason])
  {
    v3 = [location[0] copy];
    reason = selfCopy->_reason;
    selfCopy->_reason = v3;
    MEMORY[0x1E69E5920](reason);
    objc_storeStrong(&selfCopy->_interpolatedReason, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)setUsername:(id)username
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, username);
  if (![location[0] isEqualToString:selfCopy->_username])
  {
    v3 = [location[0] copy];
    username = selfCopy->_username;
    selfCopy->_username = v3;
    MEMORY[0x1E69E5920](username);
    objc_storeStrong(&selfCopy->_interpolatedReason, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)_setPassword:(id)password
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, password);
  if (![location[0] isEqualToString:selfCopy->_password])
  {
    objc_storeStrong(&selfCopy->_password, location[0]);
    if ([(NSString *)selfCopy->_password length]>= 0xBE && [(NSString *)selfCopy->_password hasSuffix:@"PET"])
    {
      v7 = _AKLogSystem();
      v6 = 17;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        log = v7;
        type = v6;
        __os_log_helper_16_0_0(v5);
        _os_log_fault_impl(&dword_193225000, log, type, "Client set raw password to a PET - this is an error, please do not do this.", v5, 2u);
      }

      objc_storeStrong(&v7, 0);
    }
  }

  objc_storeStrong(location, 0);
}

+ (id)_identifierForContext:(id)context
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x1E69E5928](location[0]);
    _identifier = [v5 _identifier];
    v6 = 1;
    objc_storeStrong(&v5, 0);
  }

  else
  {
    _identifier = 0;
    v6 = 1;
  }

  objc_storeStrong(location, 0);
  v3 = _identifier;

  return v3;
}

- (void)setRequestedNewAccountAgeRange:(unint64_t)range
{
  v8 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v5 = a2;
  rangeCopy = range;
  self->_requestedNewAccountAgeRange = range;
  if (rangeCopy)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_8_0(v7, rangeCopy);
      _os_log_debug_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEBUG, "Requested new account age range set: %lu, configuring for new Apple Account", v7, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    selfCopy->_needsNewAppleID = 1;
  }

  *MEMORY[0x1E69E9840];
}

- (void)setShouldPreventInteractiveAuth:(BOOL)auth
{
  self->_shouldPreventInteractiveAuth = auth;
  if (auth)
  {
    self->_authenticationType = 1;
  }

  else if (self->_authenticationType == 1)
  {
    self->_authenticationType = 0;
  }
}

- (void)setShouldForceInteractiveAuth:(BOOL)auth
{
  self->_shouldForceInteractiveAuth = auth;
  if (auth)
  {
    self->_authenticationType = 2;
  }

  else
  {
    authenticationType = self->_authenticationType;
    if (authenticationType > 1 && authenticationType - 2 <= 1)
    {
      self->_authenticationType = 0;
    }
  }
}

- (NSString)_interpolatedReason
{
  selfCopy = self;
  v19 = a2;
  v2 = [(NSString *)self->_interpolatedReason length];
  v17 = 0;
  v12 = 0;
  if (!v2)
  {
    reason = [(AKAppleIDAuthenticationContext *)selfCopy reason];
    v17 = 1;
    v12 = [(NSString *)reason length]!= 0;
  }

  if (v17)
  {
    MEMORY[0x1E69E5920](reason);
  }

  if (v12)
  {
    reason2 = [(AKAppleIDAuthenticationContext *)selfCopy reason];
    interpolatedReason = selfCopy->_interpolatedReason;
    selfCopy->_interpolatedReason = reason2;
    MEMORY[0x1E69E5920](interpolatedReason);
    username = [(AKAppleIDAuthenticationContext *)selfCopy username];
    v16 = [AKUsernameFormatter formattedUsernameFromUsername:?];
    MEMORY[0x1E69E5920](username);
    if ([v16 length])
    {
      v5 = [(NSString *)selfCopy->_interpolatedReason stringByReplacingOccurrencesOfString:@"%username%" withString:v16];
      v6 = selfCopy->_interpolatedReason;
      selfCopy->_interpolatedReason = v5;
      MEMORY[0x1E69E5920](v6);
    }

    else
    {
      location = _AKLogSystem();
      v14 = 16;
      if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
      {
        log = location;
        type = v14;
        __os_log_helper_16_0_0(v13);
        _os_log_error_impl(&dword_193225000, log, type, "self.username is nil", v13, 2u);
      }

      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v16, 0);
  }

  v7 = selfCopy->_interpolatedReason;

  return v7;
}

- (NSString)_interpolatedReasonWithBlame
{
  selfCopy = self;
  v16 = a2;
  *&v15[1] = [(AKAppleIDAuthenticationContext *)self _interpolatedReason];
  isUsernameEditable = 1;
  if (selfCopy->_username)
  {
    isUsernameEditable = selfCopy->_isUsernameEditable;
  }

  if (!*&v15[1])
  {
    *v15 = isUsernameEditable & 1;
    if ((v15[0] & 1) == 0)
    {
      v12 = +[AKDevice currentDevice];
      isMultiUserMode = [v12 isMultiUserMode];
      MEMORY[0x1E69E5920](v12);
      if (isMultiUserMode)
      {
        v2 = AKSharedDevicePasscodePromptAlertMessageWithServiceType(selfCopy->_serviceType);
        v3 = *&v15[1];
        *&v15[1] = v2;
        MEMORY[0x1E69E5920](v3);
      }

      else
      {
        v8 = MEMORY[0x1E696AEC0];
        v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
        v10 = [v11 localizedStringForKey:@"INLINE_PASSWORD_ALERT_MESSAGE_REBRAND" value:&stru_1F0781300 table:@"Localizable"];
        v9 = [AKUsernameFormatter formattedUsernameFromUsername:selfCopy->_username];
        v4 = [v8 stringWithFormat:v10, v9];
        v5 = *&v15[1];
        *&v15[1] = v4;
        MEMORY[0x1E69E5920](v5);
        MEMORY[0x1E69E5920](v9);
        MEMORY[0x1E69E5920](v10);
        MEMORY[0x1E69E5920](v11);
      }
    }
  }

  v7 = [(AKAppleIDAuthenticationContext *)selfCopy _appendBlameIfRequiredTo:*&v15[1]];
  objc_storeStrong(&v15[1], 0);

  return v7;
}

- (id)_appendBlameIfRequiredTo:(id)to
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, to);
  if (location[0])
  {
    v23 = +[AKDevice currentDevice];
    isInternalBuild = [v23 isInternalBuild];
    MEMORY[0x1E69E5920](v23);
    if (isInternalBuild)
    {
      v26 = 0;
      v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:getprogname()];
      _proxiedAppName = [(AKAppleIDAuthenticationContext *)selfCopy _proxiedAppName];
      MEMORY[0x1E69E5920](_proxiedAppName);
      if (_proxiedAppName)
      {
        v18 = MEMORY[0x1E696AEC0];
        v21 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
        v20 = [v21 localizedStringForKey:@"PASSWORD_ALERT_MESSAGE_PROXY_INTERNAL_BLAME" value:&stru_1F0781300 table:@"Localizable"];
        _proxiedAppName2 = [(AKAppleIDAuthenticationContext *)selfCopy _proxiedAppName];
        v3 = [v18 stringWithFormat:v20, _proxiedAppName2, v25];
        v4 = v26;
        v26 = v3;
        MEMORY[0x1E69E5920](v4);
        MEMORY[0x1E69E5920](_proxiedAppName2);
        MEMORY[0x1E69E5920](v20);
        MEMORY[0x1E69E5920](v21);
      }

      else if ([(AKAppleIDAuthenticationContext *)selfCopy serviceType])
      {
        v14 = MEMORY[0x1E696AEC0];
        v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
        v16 = [v17 localizedStringForKey:@"PASSWORD_ALERT_MESSAGE_SERVICE_TYPE_INTERNAL_BLAME" value:&stru_1F0781300 table:@"Localizable"];
        v15 = AKStringFromServiceType([(AKAppleIDAuthenticationContext *)selfCopy serviceType]);
        v5 = [v14 stringWithFormat:v16, v15];
        v6 = v26;
        v26 = v5;
        MEMORY[0x1E69E5920](v6);
        MEMORY[0x1E69E5920](v15);
        MEMORY[0x1E69E5920](v16);
        MEMORY[0x1E69E5920](v17);
      }

      else
      {
        v11 = MEMORY[0x1E696AEC0];
        v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
        v12 = [v13 localizedStringForKey:@"PASSWORD_ALERT_MESSAGE_INTERNAL_BLAME" value:&stru_1F0781300 table:@"Localizable"];
        v7 = [v11 stringWithFormat:v25];
        v8 = v26;
        v26 = v7;
        MEMORY[0x1E69E5920](v8);
        MEMORY[0x1E69E5920](v12);
        MEMORY[0x1E69E5920](v13);
      }

      v30 = [location[0] stringByAppendingString:v26];
      v27 = 1;
      objc_storeStrong(&v25, 0);
      objc_storeStrong(&v26, 0);
    }

    else
    {
      v30 = MEMORY[0x1E69E5928](location[0]);
      v27 = 1;
    }
  }

  else
  {
    v30 = MEMORY[0x1E69E5928](0);
    v27 = 1;
  }

  objc_storeStrong(location, 0);
  v9 = v30;

  return v9;
}

- (NSString)serviceIdentifier
{
  serviceIdentifiers = [(AKAppleIDAuthenticationContext *)self serviceIdentifiers];
  firstObject = [(NSArray *)serviceIdentifiers firstObject];
  MEMORY[0x1E69E5920](serviceIdentifiers);

  return firstObject;
}

- (void)setServiceIdentifier:(id)identifier
{
  v7[1] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  if (location[0])
  {
    v3 = selfCopy;
    v7[0] = location[0];
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [(AKAppleIDAuthenticationContext *)v3 setServiceIdentifiers:?];
    MEMORY[0x1E69E5920](v4);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)setProxiedDevice:(id)device
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, device);
  objc_storeStrong(&selfCopy->_proxiedDevice, location[0]);
  objc_storeStrong(location, 0);
}

- (void)setCompanionDevice:(id)device
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, device);
  objc_storeStrong(&selfCopy->_companionDevice, location[0]);
  objc_storeStrong(location, 0);
}

- (void)presentBasicLoginUIWithCompletion:(id)completion
{
  v82[2] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  isUsernameEditable = 1;
  if (selfCopy->_username)
  {
    isUsernameEditable = selfCopy->_isUsernameEditable;
  }

  v76 = isUsernameEditable & 1;
  if (isUsernameEditable)
  {
    v72 = _AKLogSystem();
    v71 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      v42 = v72;
      v43 = v71;
      __os_log_helper_16_0_0(v70);
      _os_log_impl(&dword_193225000, v42, v43, "Will prompt for username and password...", v70, 2u);
    }

    objc_storeStrong(&v72, 0);
  }

  else
  {
    v75 = _AKLogSystem();
    v74 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      log = v75;
      type = v74;
      __os_log_helper_16_0_0(v73);
      _os_log_impl(&dword_193225000, log, type, "Will prompt for password...", v73, 2u);
    }

    objc_storeStrong(&v75, 0);
  }

  v69 = MEMORY[0x1E69E5928](selfCopy->_passwordPromptTitle);
  if (!v69)
  {
    v69 = AKSignInStringFromServiceType(selfCopy->_serviceType);
    MEMORY[0x1E69E5920](0);
  }

  v68 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v67 = MEMORY[0x1E69E5928](selfCopy->_defaultButtonString);
  if (!v67)
  {
    v41 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
    v67 = [v41 localizedStringForKey:@"INLINE_PASSWORD_ALERT_OK_BUTTON" value:&stru_1F0781300 table:@"Localizable"];
    MEMORY[0x1E69E5920](0);
    MEMORY[0x1E69E5920](v41);
  }

  v39 = +[AKAlertHandler sharedInstance];
  _interpolatedReasonWithBlame = [(AKAppleIDAuthenticationContext *)selfCopy _interpolatedReasonWithBlame];
  v37 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
  v36 = [v37 localizedStringForKey:@"INLINE_PASSWORD_ALERT_CANCEL_BUTTON" value:&stru_1F0781300 table:@"Localizable"];
  v3 = [(AKAlertHandler *)v39 notificationDictionaryWithTitle:v69 message:_interpolatedReasonWithBlame defaultButton:v67 alternateButton:?];
  v4 = v68;
  v68 = v3;
  MEMORY[0x1E69E5920](v4);
  MEMORY[0x1E69E5920](v36);
  MEMORY[0x1E69E5920](v37);
  MEMORY[0x1E69E5920](_interpolatedReasonWithBlame);
  MEMORY[0x1E69E5920](v39);
  username = [(AKAppleIDAuthenticationContext *)selfCopy username];
  MEMORY[0x1E69E5920](username);
  if (username)
  {
    v66 = 0;
    v65 = 0;
    v34 = +[AKDevice currentDevice];
    isMultiUserMode = [v34 isMultiUserMode];
    MEMORY[0x1E69E5920](v34);
    if (isMultiUserMode)
    {
      v32 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:?];
      v5 = [v32 localizedStringForKey:@"PASSCODE_ALERT_TITLE_LOCKSCREEN" value:? table:?];
      v6 = v66;
      v66 = v5;
      MEMORY[0x1E69E5920](v6);
      MEMORY[0x1E69E5920](v32);
      v33 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
      v7 = [v33 localizedStringForKey:@"PASSCODE_ALERT_MESSAGE_LOCKSCREEN_GENERIC" value:&stru_1F0781300 table:@"Localizable"];
      v8 = v65;
      v65 = v7;
      MEMORY[0x1E69E5920](v8);
      MEMORY[0x1E69E5920](v33);
    }

    else
    {
      v30 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:?];
      v9 = [v30 localizedStringForKey:@"PASSWORD_ALERT_TITLE_LOCKSCREEN_REBRAND" value:? table:?];
      v10 = v66;
      v66 = v9;
      MEMORY[0x1E69E5920](v10);
      MEMORY[0x1E69E5920](v30);
      v31 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
      v11 = [v31 localizedStringForKey:@"PASSWORD_ALERT_MESSAGE_LOCKSCREEN_GENERIC_REBRAND" value:&stru_1F0781300 table:@"Localizable"];
      v12 = v65;
      v65 = v11;
      MEMORY[0x1E69E5920](v12);
      MEMORY[0x1E69E5920](v31);
    }

    [v68 setObject:v66 forKeyedSubscript:*MEMORY[0x1E69D4518]];
    [v68 setObject:v65 forKeyedSubscript:*MEMORY[0x1E69D4520]];
    objc_storeStrong(&v65, 0);
    objc_storeStrong(&v66, 0);
  }

  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v29 = +[AKDevice currentDevice];
  v58 = 0;
  v56 = 0;
  v54 = 0;
  v52 = 0;
  if ([v29 isMultiUserMode])
  {
    v59 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
    v58 = 1;
    v57 = [v59 localizedStringForKey:@"INLINE_PASSWORD_ALERT_PASSCODE_PLACEHOLDER" value:&stru_1F0781300 table:@"Localizable"];
    v56 = 1;
    v13 = MEMORY[0x1E69E5928](v57);
  }

  else
  {
    v55 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
    v54 = 1;
    v53 = [v55 localizedStringForKey:@"INLINE_PASSWORD_ALERT_PASSWORD_PLACEHOLDER" value:&stru_1F0781300 table:@"Localizable"];
    v52 = 1;
    v13 = MEMORY[0x1E69E5928](v53);
  }

  v60 = v13;
  if (v52)
  {
    MEMORY[0x1E69E5920](v53);
  }

  if (v54)
  {
    MEMORY[0x1E69E5920](v55);
  }

  if (v56)
  {
    MEMORY[0x1E69E5920](v57);
  }

  if (v58)
  {
    MEMORY[0x1E69E5920](v59);
  }

  MEMORY[0x1E69E5920](v29);
  if ((v76 & 1) == 1)
  {
    v28 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
    v27 = [v28 localizedStringForKey:@"INLINE_PASSWORD_ALERT_USERNAME_PLACEHOLDER_REBRAND" value:&stru_1F0781300 table:@"Localizable"];
    v82[0] = v27;
    v82[1] = v60;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:2];
    v15 = v63;
    v63 = v14;
    MEMORY[0x1E69E5920](v15);
    MEMORY[0x1E69E5920](v27);
    MEMORY[0x1E69E5920](v28);
    if (selfCopy->_username)
    {
      username = selfCopy->_username;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&username count:1];
      v17 = v61;
      v61 = v16;
      MEMORY[0x1E69E5920](v17);
    }

    objc_storeStrong(&v62, &unk_1F07B5180);
    v64 = 1;
  }

  else
  {
    v80 = v60;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
    v19 = v63;
    v63 = v18;
    MEMORY[0x1E69E5920](v19);
    objc_storeStrong(&v62, &unk_1F07B5198);
    v64 = 0;
  }

  [v68 setObject:v63 forKeyedSubscript:*MEMORY[0x1E695EEA0]];
  if (v61)
  {
    [v68 setObject:v61 forKeyedSubscript:*MEMORY[0x1E695EEA8]];
  }

  [v68 setObject:v62 forKeyedSubscript:*MEMORY[0x1E695EE88]];
  v20 = *MEMORY[0x1E695E480];
  v79 = v64;
  userNotification = AKUserNotificationCreate(v20, 1 << (v64 + 16), 0, v68, 0.0);
  if (userNotification)
  {
    responseFlags = 0;
    CFUserNotificationReceiveResponse(userNotification, 0.0, &responseFlags);
    if (AKUserNotificationResponseAction(responseFlags))
    {
      v25 = location[0];
      v26 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7003];
      (*(v25 + 2))(v25, 0, 0);
      MEMORY[0x1E69E5920](v26);
    }

    else
    {
      v48 = 0;
      if (v76)
      {
        v21 = CFUserNotificationGetResponseValue(userNotification, *MEMORY[0x1E695EEA8], 0);
        v22 = v48;
        v48 = v21;
        MEMORY[0x1E69E5920](v22);
      }

      else
      {
        objc_storeStrong(&v48, selfCopy->_username);
      }

      v47 = CFUserNotificationGetResponseValue(userNotification, *MEMORY[0x1E695EEA8], v64);
      (*(location[0] + 2))(location[0], v48, v47, 0);
      objc_storeStrong(&v47, 0);
      objc_storeStrong(&v48, 0);
    }

    CFRelease(userNotification);
  }

  else
  {
    v23 = location[0];
    v24 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7013];
    (*(v23 + 2))(v23, 0, 0);
    MEMORY[0x1E69E5920](v24);
  }

  objc_storeStrong(&v60, 0);
  objc_storeStrong(&v61, 0);
  objc_storeStrong(&v62, 0);
  objc_storeStrong(&v63, 0);
  objc_storeStrong(&v67, 0);
  objc_storeStrong(&v68, 0);
  objc_storeStrong(&v69, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)_requiresPasswordInput
{
  v16 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  username = [(AKAppleIDAuthenticationContext *)self username];
  MEMORY[0x1E69E5920](username);
  if (!username)
  {
    goto LABEL_11;
  }

  location[0] = [(AKAppleIDAuthenticationContext *)selfCopy authKitAccount:0];
  v4 = +[AKAccountManager sharedInstance];
  v5 = [(AKAccountManager *)v4 authenticationModeForAccount:location[0]];
  MEMORY[0x1E69E5920](v4);
  v11 = v5;
  v6 = 0;
  if (v5 != 2)
  {
    v6 = v11 != 3;
  }

  v10 = v6;
  if (location[0] && v10)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      username2 = [(AKAppleIDAuthenticationContext *)selfCopy username];
      __os_log_helper_16_2_1_8_64(v15, username2);
      _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "Determined that we should show password field for username: %@", v15, 0xCu);
      MEMORY[0x1E69E5920](username2);
    }

    objc_storeStrong(&oslog, 0);
    v14 = 1;
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  objc_storeStrong(location, 0);
  if (!v8)
  {
LABEL_11:
    v14 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v14 & 1;
}

- (void)dismissBasicLoginUIWithCompletion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  (*(location[0] + 2))(location[0], 1, 0);
  objc_storeStrong(location, 0);
}

- (void)presentLoginAlertWithError:(id)error title:(id)title message:(id)message completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v45 = 0;
  objc_storeStrong(&v45, title);
  v44 = 0;
  objc_storeStrong(&v44, message);
  v43 = 0;
  objc_storeStrong(&v43, completion);
  v42 = _AKLogSystem();
  v41 = 2;
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    log = v42;
    v21 = v41;
    __os_log_helper_16_0_0(v40);
    _os_log_debug_impl(&dword_193225000, log, v21, "Showing login error...", v40, 2u);
  }

  objc_storeStrong(&v42, 0);
  v39 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = +[AKAlertHandler sharedInstance];
  v10 = v45;
  v11 = v44;
  v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:?];
  v14 = [v15 localizedStringForKey:@"WRONG_PASSWORD_ALERT_TRY_AGAIN_BUTTON" value:? table:?];
  v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
  v12 = [v13 localizedStringForKey:@"WRONG_PASSWORD_ALERT_CANCEL_BUTTON" value:&stru_1F0781300 table:@"Localizable"];
  v6 = [(AKAlertHandler *)v16 notificationDictionaryWithTitle:v10 message:v11 defaultButton:v14 alternateButton:?];
  v7 = v39;
  v39 = v6;
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v12);
  MEMORY[0x1E69E5920](v13);
  MEMORY[0x1E69E5920](v14);
  MEMORY[0x1E69E5920](v15);
  MEMORY[0x1E69E5920](v16);
  v18 = +[AKAlertHandler sharedInstance];
  v17 = v39;
  v31 = MEMORY[0x1E69E9820];
  v32 = -1073741824;
  v33 = 0;
  v34 = __86__AKAppleIDAuthenticationContext_presentLoginAlertWithError_title_message_completion___block_invoke;
  v35 = &unk_1E73D6318;
  v36 = MEMORY[0x1E69E5928](selfCopy);
  v37 = MEMORY[0x1E69E5928](v43);
  v25 = MEMORY[0x1E69E9820];
  v26 = -1073741824;
  v27 = 0;
  v28 = __86__AKAppleIDAuthenticationContext_presentLoginAlertWithError_title_message_completion___block_invoke_2;
  v29 = &unk_1E73D70D0;
  v30 = MEMORY[0x1E69E5928](v43);
  v19 = [(AKAlertHandler *)v18 showAlert:v17 primaryAction:&v31 altAction:&v25];
  MEMORY[0x1E69E5920](v18);
  v38 = v19;
  if (!v19)
  {
    v8 = v43;
    v9 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7013];
    (*(v8 + 2))(v8, 0, 0);
    MEMORY[0x1E69E5920](v9);
  }

  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(location, 0);
}

uint64_t __86__AKAppleIDAuthenticationContext_presentLoginAlertWithError_title_message_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7003];
  (*(v2 + 16))(v2, 0, 0);
  return MEMORY[0x1E69E5920](v3);
}

- (void)presentSecondFactorUIWithCompletion:(id)completion
{
  v26[1] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:?];
  v7 = [v8 localizedStringForKey:@"ENTER_VERITIFCATION_CODE_CANCEL_BUTTON" value:? table:?];
  v3 = *MEMORY[0x1E695EE78];
  [v23 setObject:? forKeyedSubscript:?];
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v8);
  v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
  v9 = [v10 localizedStringForKey:@"ENTER_VERITIFCATION_CODE_FAILED_BUTTON" value:&stru_1F0781300 table:@"Localizable"];
  v4 = *MEMORY[0x1E695EE70];
  [v23 setObject:? forKeyedSubscript:?];
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v10);
  v5 = *MEMORY[0x1E695EE68];
  v15 = MEMORY[0x1E695E118];
  [v23 setObject:? forKeyedSubscript:?];
  v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  resourceURL = [v12 resourceURL];
  v6 = *MEMORY[0x1E695EE90];
  [v23 setObject:? forKeyedSubscript:?];
  MEMORY[0x1E69E5920](resourceURL);
  MEMORY[0x1E69E5920](v12);
  v22 = [MEMORY[0x1E696ABE0] extensionItemWithAppleIDAuthenticationContext:selfCopy];
  v13 = MEMORY[0x1E696ACC8];
  v26[0] = v22;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v21 = [v13 archivedDataWithRootObject:? requiringSecureCoding:? error:?];
  MEMORY[0x1E69E5920](v14);
  [v23 setObject:@"com.apple.AuthKitUI.AKSecondFactorEntryAlert" forKeyedSubscript:*MEMORY[0x1E69D44F0]];
  [v23 setObject:v21 forKeyedSubscript:*MEMORY[0x1E69D44F8]];
  [v23 setObject:v15 forKeyedSubscript:*MEMORY[0x1E69D44D0]];
  queue = [(AKAppleIDAuthenticationContext *)selfCopy _secondFactorQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __70__AKAppleIDAuthenticationContext_presentSecondFactorUIWithCompletion___block_invoke;
  v17[3] = &unk_1E73D86E0;
  v18 = MEMORY[0x1E69E5928](selfCopy);
  v20 = MEMORY[0x1E69E5928](location[0]);
  v19 = MEMORY[0x1E69E5928](v23);
  dispatch_async(queue, v17);
  MEMORY[0x1E69E5920](queue);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __70__AKAppleIDAuthenticationContext_presentSecondFactorUIWithCompletion___block_invoke(uint64_t a1)
{
  v15[2] = a1;
  v15[1] = a1;
  v1 = MEMORY[0x193B165F0](*(a1 + 48));
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  *(v2 + 72) = v1;
  MEMORY[0x1E69E5920](v3);
  [*(a1 + 32) _startListeningForSecondFactorCodeEntryNotification];
  *(*(a1 + 32) + 64) = AKUserNotificationCreate(*MEMORY[0x1E695E480], 0, 0, *(a1 + 40), 0.0);
  if (*(*(a1 + 32) + 64))
  {
    queue = dispatch_get_global_queue(25, 0);
    v10 = MEMORY[0x1E69E9820];
    v11 = -1073741824;
    v12 = 0;
    v13 = __70__AKAppleIDAuthenticationContext_presentSecondFactorUIWithCompletion___block_invoke_2;
    v14 = &unk_1E73D34C0;
    v15[0] = MEMORY[0x1E69E5928](*(a1 + 32));
    dispatch_async(queue, &v10);
    MEMORY[0x1E69E5920](queue);
    objc_storeStrong(v15, 0);
  }

  else
  {
    v6 = *(*(a1 + 32) + 72);
    v7 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7013];
    (*(v6 + 16))(v6, 0);
    MEMORY[0x1E69E5920](v7);
    v4 = *(a1 + 32);
    v5 = *(v4 + 72);
    *(v4 + 72) = 0;
    MEMORY[0x1E69E5920](v5);
  }
}

void __70__AKAppleIDAuthenticationContext_presentSecondFactorUIWithCompletion___block_invoke_2(CFOptionFlags a1)
{
  responseFlags[2] = a1;
  responseFlags[1] = a1;
  responseFlags[0] = 0;
  CFUserNotificationReceiveResponse(*(*(a1 + 32) + 64), 0.0, responseFlags);
  v9 = AKUserNotificationResponseAction(responseFlags[0]);
  queue = [*(a1 + 32) _secondFactorQueue];
  v3 = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = __70__AKAppleIDAuthenticationContext_presentSecondFactorUIWithCompletion___block_invoke_3;
  v7 = &unk_1E73D66E8;
  v8[0] = MEMORY[0x1E69E5928](*(a1 + 32));
  v8[1] = v9;
  dispatch_async(queue, &v3);
  MEMORY[0x1E69E5920](queue);
  objc_storeStrong(v8, 0);
}

void __70__AKAppleIDAuthenticationContext_presentSecondFactorUIWithCompletion___block_invoke_3(uint64_t a1)
{
  if (*(*(a1 + 32) + 72))
  {
    if (*(a1 + 40) && *(a1 + 40) != 3)
    {
      if (*(a1 + 40) == 1)
      {
        v5 = *(*(a1 + 32) + 72);
        v6 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7035];
        (*(v5 + 16))(v5, 0);
        MEMORY[0x1E69E5920](v6);
      }

      else
      {
        v3 = *(*(a1 + 32) + 72);
        v4 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7013];
        (*(v3 + 16))(v3, 0);
        MEMORY[0x1E69E5920](v4);
      }
    }

    else
    {
      v7 = *(*(a1 + 32) + 72);
      v8 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7003];
      (*(v7 + 16))(v7, 0);
      MEMORY[0x1E69E5920](v8);
    }

    v1 = *(a1 + 32);
    v2 = *(v1 + 72);
    *(v1 + 72) = 0;
    MEMORY[0x1E69E5920](v2);
  }

  [*(a1 + 32) _stopListeningForSecondFactorCodeEntryNotification];
  CFRelease(*(*(a1 + 32) + 64));
  *(*(a1 + 32) + 64) = 0;
}

- (void)dismissSecondFactorUIWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  queue = [(AKAppleIDAuthenticationContext *)selfCopy _secondFactorQueue];
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __70__AKAppleIDAuthenticationContext_dismissSecondFactorUIWithCompletion___block_invoke;
  v8 = &unk_1E73D6318;
  v9 = MEMORY[0x1E69E5928](selfCopy);
  v10 = MEMORY[0x1E69E5928](location[0]);
  dispatch_async(queue, &v4);
  MEMORY[0x1E69E5920](queue);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

uint64_t __70__AKAppleIDAuthenticationContext_dismissSecondFactorUIWithCompletion___block_invoke(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  if (*(a1[4] + 64))
  {
    location[0] = _AKLogSystem();
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      log = location[0];
      type = v13;
      __os_log_helper_16_0_0(v12);
      _os_log_impl(&dword_193225000, log, type, "Canceling second-factor entry prompt.", v12, 2u);
    }

    objc_storeStrong(location, 0);
    v1 = a1[4];
    v2 = *(v1 + 72);
    *(v1 + 72) = 0;
    MEMORY[0x1E69E5920](v2);
    CFUserNotificationCancel(*(a1[4] + 64));
  }

  else
  {
    v11 = _AKLogSystem();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v11;
      v5 = v10;
      __os_log_helper_16_0_0(v9);
      _os_log_impl(&dword_193225000, v4, v5, "Nothing to dismiss right now.", v9, 2u);
    }

    objc_storeStrong(&v11, 0);
  }

  return (*(a1[5] + 16))();
}

- (void)presentSecondFactorAlertWithError:(id)error title:(id)title message:(id)message completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v36 = 0;
  objc_storeStrong(&v36, title);
  v35 = 0;
  objc_storeStrong(&v35, message);
  v34 = 0;
  objc_storeStrong(&v34, completion);
  v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19 = +[AKAlertHandler sharedInstance];
  v13 = v36;
  v14 = v35;
  v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:?];
  v17 = [v18 localizedStringForKey:@"WRONG_LOGIN_CODE_TRY_AGAIN_BUTTON" value:? table:?];
  v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
  v15 = [v16 localizedStringForKey:@"WRONG_LOGIN_CODE_ALERT_CANCEL_BUTTON" value:&stru_1F0781300 table:@"Localizable"];
  v6 = [(AKAlertHandler *)v19 notificationDictionaryWithTitle:v13 message:v14 defaultButton:v17 alternateButton:?];
  v7 = v33;
  v33 = v6;
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v15);
  MEMORY[0x1E69E5920](v16);
  MEMORY[0x1E69E5920](v17);
  MEMORY[0x1E69E5920](v18);
  MEMORY[0x1E69E5920](v19);
  v21 = +[AKAlertHandler sharedInstance];
  v20 = v33;
  v25 = MEMORY[0x1E69E9820];
  v26 = -1073741824;
  v27 = 0;
  v28 = __93__AKAppleIDAuthenticationContext_presentSecondFactorAlertWithError_title_message_completion___block_invoke;
  v29 = &unk_1E73D6318;
  v30 = MEMORY[0x1E69E5928](selfCopy);
  v31 = MEMORY[0x1E69E5928](v34);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __93__AKAppleIDAuthenticationContext_presentSecondFactorAlertWithError_title_message_completion___block_invoke_2;
  v23[3] = &unk_1E73D70D0;
  v24 = MEMORY[0x1E69E5928](v34);
  v22 = [(AKAlertHandler *)v21 showAlert:v20 primaryAction:&v25 altAction:v23];
  MEMORY[0x1E69E5920](v21);
  v32 = v22;
  if (!v22)
  {
    v8 = v34;
    v9 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7013];
    v8[2](v8, 0);
    MEMORY[0x1E69E5920](v9);
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
}

uint64_t __93__AKAppleIDAuthenticationContext_presentSecondFactorAlertWithError_title_message_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7003];
  (*(v2 + 16))(v2, 0);
  return MEMORY[0x1E69E5920](v3);
}

- (void)_startListeningForSecondFactorCodeEntryNotification
{
  selfCopy = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v6;
    __os_log_helper_16_0_0(v5);
    _os_log_impl(&dword_193225000, log, type, "Listening for code entry notification...", v5, 2u);
  }

  objc_storeStrong(location, 0);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, selfCopy, __AKAppleIDLoginCodeWasEntered, @"com.apple.ak.code.entered", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_stopListeningForSecondFactorCodeEntryNotification
{
  selfCopy = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v6;
    __os_log_helper_16_0_0(v5);
    _os_log_impl(&dword_193225000, log, type, "No longer listening for code entry notification.", v5, 2u);
  }

  objc_storeStrong(location, 0);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, selfCopy, @"com.apple.ak.code.entered", 0);
}

- (void)_handleSecondFactorCodeEntry
{
  selfCopy = self;
  v8[1] = a2;
  queue = [(AKAppleIDAuthenticationContext *)self _secondFactorQueue];
  v3 = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = __62__AKAppleIDAuthenticationContext__handleSecondFactorCodeEntry__block_invoke;
  v7 = &unk_1E73D34C0;
  v8[0] = MEMORY[0x1E69E5928](selfCopy);
  dispatch_async(queue, &v3);
  MEMORY[0x1E69E5920](queue);
  objc_storeStrong(v8, 0);
}

void __62__AKAppleIDAuthenticationContext__handleSecondFactorCodeEntry__block_invoke(void *a1)
{
  v30[2] = a1;
  v30[1] = a1;
  v30[0] = CFPreferencesCopyAppValue(@"AKTemporaryValue", *MEMORY[0x1E695E890]);
  if (v30[0])
  {
    CFPreferencesSetAppValue(@"AKTemporaryValue", 0, *MEMORY[0x1E695E890]);
    if (*(a1[4] + 72))
    {
      v26 = _AKLogSystem();
      v25 = 2;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v11 = v26;
        type = v25;
        __os_log_helper_16_0_0(v24);
        _os_log_debug_impl(&dword_193225000, v11, type, "Passing 2FA code to akd.", v24, 2u);
      }

      objc_storeStrong(&v26, 0);
      v9 = (*(a1[4] + 72) + 16);
      v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v30[0], "integerValue")}];
      (*v9)();
      MEMORY[0x1E69E5920](v10);
      v3 = a1[4];
      v4 = *(v3 + 72);
      *(v3 + 72) = 0;
      MEMORY[0x1E69E5920](v4);
    }

    else
    {
      v23 = _AKLogSystem();
      v22 = 16;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v7 = v23;
        v8 = v22;
        __os_log_helper_16_0_0(v21);
        _os_log_error_impl(&dword_193225000, v7, v8, "Dropping 2FA code because we are currently holding a reply block.", v21, 2u);
      }

      objc_storeStrong(&v23, 0);
    }
  }

  else
  {
    location = _AKLogSystem();
    v28 = 16;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      log = location;
      v16 = v28;
      __os_log_helper_16_0_0(v27);
      _os_log_error_impl(&dword_193225000, log, v16, "Notified that 2FA code was entered, but code is empty!", v27, 2u);
    }

    objc_storeStrong(&location, 0);
    if (*(a1[4] + 72))
    {
      v13 = *(a1[4] + 72);
      v14 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7001];
      (*(v13 + 16))(v13, 0);
      MEMORY[0x1E69E5920](v14);
      v1 = a1[4];
      v2 = *(v1 + 72);
      *(v1 + 72) = 0;
      MEMORY[0x1E69E5920](v2);
    }
  }

  if (*(a1[4] + 64))
  {
    v20 = _AKLogSystem();
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v20;
      v6 = v19;
      __os_log_helper_16_0_0(v18);
      _os_log_impl(&dword_193225000, v5, v6, "Closing login code prompt.", v18, 2u);
    }

    objc_storeStrong(&v20, 0);
    CFUserNotificationCancel(*(a1[4] + 64));
  }

  objc_storeStrong(v30, 0);
}

- (id)_secondFactorQueue
{
  if (!self->_secondFactorQueue)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2 = dispatch_queue_create("com.apple.ak.twofa", v6);
    secondFactorQueue = self->_secondFactorQueue;
    self->_secondFactorQueue = v2;
    MEMORY[0x1E69E5920](secondFactorQueue);
    MEMORY[0x1E69E5920](v6);
  }

  v4 = self->_secondFactorQueue;

  return v4;
}

- (void)presentBiometricOrPasscodeValidationForAppleID:(id)d completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v7 = 0;
  objc_storeStrong(&v7, completion);
  v5 = v7;
  v6 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7027];
  v5[2](v5, 0);
  MEMORY[0x1E69E5920](v6);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)setGeneratedCode:(id)code
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, code);
  if (selfCopy->_generatedCode != location[0])
  {
    v3 = [location[0] copy];
    generatedCode = selfCopy->_generatedCode;
    selfCopy->_generatedCode = v3;
    MEMORY[0x1E69E5920](generatedCode);
  }

  objc_storeStrong(location, 0);
}

- (void)setLatitude:(id)latitude
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, latitude);
  if (selfCopy->_latitude != location[0])
  {
    v3 = [location[0] copy];
    latitude = selfCopy->_latitude;
    selfCopy->_latitude = v3;
    MEMORY[0x1E69E5920](latitude);
  }

  objc_storeStrong(location, 0);
}

- (void)setLongitude:(id)longitude
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, longitude);
  if (selfCopy->_longitude != location[0])
  {
    v3 = [location[0] copy];
    longitude = selfCopy->_longitude;
    selfCopy->_longitude = v3;
    MEMORY[0x1E69E5920](longitude);
  }

  objc_storeStrong(location, 0);
}

- (void)setDeviceClass:(id)class
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, class);
  v3 = [location[0] copy];
  deviceClass = selfCopy->_deviceClass;
  selfCopy->_deviceClass = v3;
  MEMORY[0x1E69E5920](deviceClass);
  objc_storeStrong(location, 0);
}

- (void)setDeviceColor:(id)color
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, color);
  v3 = [location[0] copy];
  deviceColor = selfCopy->_deviceColor;
  selfCopy->_deviceColor = v3;
  MEMORY[0x1E69E5920](deviceColor);
  objc_storeStrong(location, 0);
}

- (void)setDeviceEnclosureColor:(id)color
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, color);
  v3 = [location[0] copy];
  deviceEnclosureColor = selfCopy->_deviceEnclosureColor;
  selfCopy->_deviceEnclosureColor = v3;
  MEMORY[0x1E69E5920](deviceEnclosureColor);
  objc_storeStrong(location, 0);
}

- (void)setNotificationDisclaimer:(id)disclaimer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, disclaimer);
  v3 = [location[0] copy];
  notificationDisclaimer = selfCopy->_notificationDisclaimer;
  selfCopy->_notificationDisclaimer = v3;
  MEMORY[0x1E69E5920](notificationDisclaimer);
  objc_storeStrong(location, 0);
}

@end