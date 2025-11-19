@interface AKAppleIDAuthenticationContext
+ (id)_identifierForContext:(id)a3;
- (AKAppleIDAuthenticationContext)init;
- (AKAppleIDAuthenticationContext)initWithAuthenticatedServerRequestContext:(id)a3;
- (AKAppleIDAuthenticationContext)initWithCoder:(id)a3;
- (AKAppleIDAuthenticationContext)initWithContext:(id)a3;
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
- (id)_appendBlameIfRequiredTo:(id)a3;
- (id)_initWithIdentifier:(id)a3;
- (id)_sanitizedCopy;
- (id)_secondFactorQueue;
- (id)authKitAccount:(id *)a3;
- (id)authKitAccountForSilentServiceToken:(id *)a3;
- (unint64_t)_capabilityForUIDisplay;
- (void)_handleSecondFactorCodeEntry;
- (void)_setPassword:(id)a3;
- (void)_startListeningForSecondFactorCodeEntryNotification;
- (void)_stopListeningForSecondFactorCodeEntryNotification;
- (void)_updateWithValuesFromContext:(id)a3;
- (void)dismissBasicLoginUIWithCompletion:(id)a3;
- (void)dismissSecondFactorUIWithCompletion:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)isConfiguredForTokenUpgradeWithCompletion:(id)a3;
- (void)presentBasicLoginUIWithCompletion:(id)a3;
- (void)presentBiometricOrPasscodeValidationForAppleID:(id)a3 completion:(id)a4;
- (void)presentLoginAlertWithError:(id)a3 title:(id)a4 message:(id)a5 completion:(id)a6;
- (void)presentSecondFactorAlertWithError:(id)a3 title:(id)a4 message:(id)a5 completion:(id)a6;
- (void)presentSecondFactorUIWithCompletion:(id)a3;
- (void)setCompanionDevice:(id)a3;
- (void)setDeviceClass:(id)a3;
- (void)setDeviceColor:(id)a3;
- (void)setDeviceEnclosureColor:(id)a3;
- (void)setGeneratedCode:(id)a3;
- (void)setLatitude:(id)a3;
- (void)setLongitude:(id)a3;
- (void)setNotificationDisclaimer:(id)a3;
- (void)setProxiedDevice:(id)a3;
- (void)setReason:(id)a3;
- (void)setRequestedNewAccountAgeRange:(unint64_t)a3;
- (void)setServiceIdentifier:(id)a3;
- (void)setShouldForceInteractiveAuth:(BOOL)a3;
- (void)setShouldPreventInteractiveAuth:(BOOL)a3;
- (void)setUsername:(id)a3;
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

- (id)authKitAccount:(id *)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v43 = self;
  v42 = a2;
  v41 = a3;
  v40 = 0;
  v39 = 0;
  v38 = [(AKAppleIDAuthenticationContext *)self altDSID];
  v37 = [(AKAppleIDAuthenticationContext *)v43 DSID];
  v36 = [(AKAppleIDAuthenticationContext *)v43 username];
  if ([v38 length])
  {
    v26 = +[AKAccountManager sharedInstance];
    v3 = [(AKAccountManager *)v26 authKitAccountWithAltDSID:v38 error:0];
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
        __os_log_helper_16_2_1_8_64(v46, v38);
        _os_log_impl(&dword_193225000, location, v34, "No existing IdMS account for altDSID %@", v46, 0xCu);
      }

      objc_storeStrong(&location, 0);
      v5 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7055];
      v6 = v39;
      v39 = v5;
      MEMORY[0x1E69E5920](v6);
    }
  }

  else if ([v37 length])
  {
    v25 = +[AKAccountManager sharedInstance];
    v24 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v37, "longLongValue")}];
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
        __os_log_helper_16_2_1_8_64(v45, v37);
        _os_log_impl(&dword_193225000, v33, v32, "No existing IdMS account for DSID %@", v45, 0xCu);
      }

      objc_storeStrong(&v33, 0);
      v9 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7067];
      v10 = v39;
      v39 = v9;
      MEMORY[0x1E69E5920](v10);
    }
  }

  else if ([v36 length])
  {
    v23 = +[AKAccountManager sharedInstance];
    v11 = [(AKAccountManager *)v23 authKitAccountWithAppleID:v36 error:0];
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
        __os_log_helper_16_2_1_8_64(v44, v36);
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

  if (v41)
  {
    v20 = v39;
    v17 = v39;
    *v41 = v20;
  }

  v19 = MEMORY[0x1E69E5928](v40);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  *MEMORY[0x1E69E9840];

  return v19;
}

- (id)authKitAccountForSilentServiceToken:(id *)a3
{
  v15 = self;
  v14 = a2;
  v13 = a3;
  *(&v12 + 1) = [(AKAppleIDAuthenticationContext *)self username];
  *&v12 = [(AKAppleIDAuthenticationContext *)v15 altDSID];
  if (v12 == 0 || [(AKAppleIDAuthenticationContext *)v15 isUsernameEditable])
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
    if (v13)
    {
      v6 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7044];
      v3 = v6;
      *v13 = v6;
    }

    v16 = 0;
  }

  else
  {
    v16 = [(AKAppleIDAuthenticationContext *)v15 authKitAccount:v13];
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v12 + 1, 0);
  v4 = v16;

  return v4;
}

- (AKAppleIDAuthenticationContext)init
{
  v6 = self;
  v4 = [MEMORY[0x1E696AFB0] UUID];
  v6 = 0;
  v6 = [(AKAppleIDAuthenticationContext *)self _initWithIdentifier:?];
  v5 = MEMORY[0x1E69E5928](v6);
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&v6, 0);
  return v5;
}

- (id)_initWithIdentifier:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v17;
  v17 = 0;
  v15.receiver = v3;
  v15.super_class = AKAppleIDAuthenticationContext;
  v17 = [(AKAppleIDAuthenticationContext *)&v15 init];
  objc_storeStrong(&v17, v17);
  if (v17)
  {
    v4 = [location[0] copy];
    identifier = v17->_identifier;
    v17->_identifier = v4;
    MEMORY[0x1E69E5920](identifier);
    v17->_isUsernameEditable = 1;
    v17->_isPasswordEditable = 1;
    v17->_shouldSendIdentityTokenForRemoteUI = 1;
    v17->_shouldSendGrandSlamTokensForRemoteUI = 1;
    v17->_maximumLoginAttempts = 3;
    v17->_shouldUpdatePersistentServiceTokens = 1;
    v12 = MEMORY[0x1E695DFD8];
    v18[0] = @"AKAuthenticationInternalTokenCK";
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v6 = [v12 setWithArray:?];
    desiredInternalTokens = v17->_desiredInternalTokens;
    v17->_desiredInternalTokens = v6;
    MEMORY[0x1E69E5920](desiredInternalTokens);
    MEMORY[0x1E69E5920](v13);
    objc_storeStrong(&v17->_securityUpgradeContext, @"com.apple.authkit.generic");
    v17->_supportsPiggybacking = 0;
    v17->_enablePasscodeAuth = 1;
    v17->_passcodeOnlyPolicy = 0;
    v17->_biometricSkipPasscodeFallback = 0;
    v14 = [MEMORY[0x1E696AFB0] UUID];
    v8 = [v14 UUIDString];
    telemetryFlowID = v17->_telemetryFlowID;
    v17->_telemetryFlowID = v8;
    MEMORY[0x1E69E5920](telemetryFlowID);
    MEMORY[0x1E69E5920](v14);
    v17->_isRequestedFromOOPViewService = 0;
    v17->_shouldRequestConfigurationInfo = 1;
    v17->_allowAuthenticationBeforeFirstUnlock = 0;
  }

  v11 = MEMORY[0x1E69E5928](v17);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v17, 0);
  *MEMORY[0x1E69E9840];
  return v11;
}

- (AKAppleIDAuthenticationContext)initWithAuthenticatedServerRequestContext:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v13;
  v13 = 0;
  v11.receiver = v3;
  v11.super_class = AKAppleIDAuthenticationContext;
  v10 = [(AKAppleIDAuthenticationContext *)&v11 init];
  v13 = v10;
  objc_storeStrong(&v13, v10);
  if (v10)
  {
    v4 = [objc_opt_class() _identifierForContext:location[0]];
    identifier = v13->_identifier;
    v13->_identifier = v4;
    MEMORY[0x1E69E5920](identifier);
    v6 = [location[0] altDSID];
    altDSID = v13->_altDSID;
    v13->_altDSID = v6;
    MEMORY[0x1E69E5920](altDSID);
  }

  v9 = MEMORY[0x1E69E5928](v13);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v13, 0);
  return v9;
}

- (AKAppleIDAuthenticationContext)initWithContext:(id)a3
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v24;
  v24 = 0;
  v22.receiver = v3;
  v22.super_class = AKAppleIDAuthenticationContext;
  v21 = [(AKAppleIDAuthenticationContext *)&v22 init];
  v24 = v21;
  objc_storeStrong(&v24, v21);
  if (v21)
  {
    v4 = [objc_opt_class() _identifierForContext:location[0]];
    identifier = v24->_identifier;
    v24->_identifier = v4;
    MEMORY[0x1E69E5920](identifier);
    v6 = [location[0] _proxiedAppName];
    proxiedAppName = v24->_proxiedAppName;
    v24->_proxiedAppName = v6;
    MEMORY[0x1E69E5920](proxiedAppName);
    v8 = [location[0] altDSID];
    altDSID = v24->_altDSID;
    v24->_altDSID = v8;
    MEMORY[0x1E69E5920](altDSID);
    v10 = [location[0] appProvidedData];
    appProvidedData = v24->_appProvidedData;
    v24->_appProvidedData = v10;
    MEMORY[0x1E69E5920](appProvidedData);
    v12 = [location[0] companionDevice];
    companionDevice = v24->_companionDevice;
    v24->_companionDevice = v12;
    MEMORY[0x1E69E5920](companionDevice);
    v14 = [location[0] proxiedDevice];
    proxiedDevice = v24->_proxiedDevice;
    v24->_proxiedDevice = v14;
    MEMORY[0x1E69E5920](proxiedDevice);
    v16 = [location[0] serviceType];
    v24->_serviceType = v16;
    v17 = [location[0] appProvidedContext];
    appProvidedContext = v24->_appProvidedContext;
    v24->_appProvidedContext = v17;
    MEMORY[0x1E69E5920](appProvidedContext);
  }

  v20 = MEMORY[0x1E69E5928](v24);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v24, 0);
  return v20;
}

- (AKAppleIDAuthenticationContext)initWithCoder:(id)a3
{
  v416[2] = *MEMORY[0x1E69E9840];
  v411 = &v414;
  v414 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v414;
  v414 = 0;
  v412.receiver = v3;
  v412.super_class = AKAppleIDAuthenticationContext;
  v414 = [(AKAppleIDAuthenticationContext *)&v412 init];
  objc_storeStrong(&v414, v414);
  if (v414)
  {
    v288 = location[0];
    v408 = 0x1E696A000uLL;
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_reason"];
    reason = v414->_reason;
    v414->_reason = v4;
    MEMORY[0x1E69E5920](reason);
    v289 = location[0];
    v6 = *(v408 + 3776);
    v7 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_username"];
    username = v414->_username;
    v414->_username = v7;
    MEMORY[0x1E69E5920](username);
    v290 = location[0];
    v380 = 0x1E696A000uLL;
    v291 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_isUsernameEditable"];
    v9 = [v291 BOOLValue];
    v10 = v291;
    v414->_isUsernameEditable = v9;
    MEMORY[0x1E69E5920](v10);
    v292 = location[0];
    v11 = *(v408 + 3776);
    v12 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_DSID"];
    DSID = v414->_DSID;
    v414->_DSID = v12;
    MEMORY[0x1E69E5920](DSID);
    v293 = location[0];
    v14 = *(v408 + 3776);
    v15 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = v414->_altDSID;
    v414->_altDSID = v15;
    MEMORY[0x1E69E5920](altDSID);
    v294 = location[0];
    v17 = *(v408 + 3776);
    v18 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_telemetryDeviceSessionID"];
    telemetryDeviceSessionID = v414->_telemetryDeviceSessionID;
    v414->_telemetryDeviceSessionID = v18;
    MEMORY[0x1E69E5920](telemetryDeviceSessionID);
    v295 = location[0];
    v20 = *(v408 + 3776);
    v21 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_telemetryFlowID"];
    telemetryFlowID = v414->_telemetryFlowID;
    v414->_telemetryFlowID = v21;
    MEMORY[0x1E69E5920](telemetryFlowID);
    v296 = location[0];
    v23 = *(v408 + 3776);
    v24 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_dependentAltDSID"];
    dependentAltDSID = v414->_dependentAltDSID;
    v414->_dependentAltDSID = v24;
    MEMORY[0x1E69E5920](dependentAltDSID);
    v297 = location[0];
    v26 = *(v380 + 3480);
    v298 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_isProxyingForApp"];
    v27 = [v298 BOOLValue];
    v28 = v298;
    v414->_isProxyingForApp = v27;
    MEMORY[0x1E69E5920](v28);
    v299 = location[0];
    v29 = *(v408 + 3776);
    v30 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_proxiedAppBundleID"];
    proxiedAppBundleID = v414->_proxiedAppBundleID;
    v414->_proxiedAppBundleID = v30;
    MEMORY[0x1E69E5920](proxiedAppBundleID);
    v300 = location[0];
    v32 = *(v408 + 3776);
    v33 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_proxiedAppName"];
    proxiedAppName = v414->_proxiedAppName;
    v414->_proxiedAppName = v33;
    MEMORY[0x1E69E5920](proxiedAppName);
    v303 = location[0];
    v377 = 0x1E695D000uLL;
    v302 = MEMORY[0x1E695DFD8];
    v379 = 0x1E695D000uLL;
    v301 = objc_opt_class();
    v35 = *(v408 + 3776);
    v304 = [v302 setWithObjects:{v301, objc_opt_class(), 0}];
    v36 = [v303 decodeObjectOfClasses:? forKey:?];
    serviceIdentifiers = v414->_serviceIdentifiers;
    v414->_serviceIdentifiers = v36;
    MEMORY[0x1E69E5920](serviceIdentifiers);
    MEMORY[0x1E69E5920](v304);
    v305 = location[0];
    v38 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v414->_identifier;
    v414->_identifier = v38;
    MEMORY[0x1E69E5920](identifier);
    v306 = location[0];
    v40 = *(v380 + 3480);
    v307 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_serviceType"];
    v41 = [v307 integerValue];
    v42 = v307;
    v414->_serviceType = v41;
    MEMORY[0x1E69E5920](v42);
    v308 = location[0];
    v43 = *(v380 + 3480);
    v309 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_maximumLoginAttempts"];
    v44 = [v309 integerValue];
    v45 = v309;
    v414->_maximumLoginAttempts = v44;
    MEMORY[0x1E69E5920](v45);
    v310 = location[0];
    v46 = *(v380 + 3480);
    v311 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_isEphemeral"];
    v47 = [v311 BOOLValue];
    v48 = v311;
    v414->_isEphemeral = v47;
    MEMORY[0x1E69E5920](v48);
    v312 = location[0];
    v49 = *(v380 + 3480);
    v313 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_shouldAllowAppleIDCreation"];
    v50 = [v313 BOOLValue];
    v51 = v313;
    v414->_shouldAllowAppleIDCreation = v50;
    MEMORY[0x1E69E5920](v51);
    v314 = location[0];
    v52 = *(v380 + 3480);
    v315 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_shouldPromptForPasswordOnly"];
    v53 = [v315 BOOLValue];
    v54 = v315;
    v414->_shouldPromptForPasswordOnly = v53;
    MEMORY[0x1E69E5920](v54);
    v316 = location[0];
    v55 = *(v408 + 3776);
    v56 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_passwordPromptTitle"];
    passwordPromptTitle = v414->_passwordPromptTitle;
    v414->_passwordPromptTitle = v56;
    MEMORY[0x1E69E5920](passwordPromptTitle);
    v317 = location[0];
    v58 = *(v408 + 3776);
    v59 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_defaultButtonString"];
    defaultButtonString = v414->_defaultButtonString;
    v414->_defaultButtonString = v59;
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
    httpHeadersForRemoteUI = v414->_httpHeadersForRemoteUI;
    v414->_httpHeadersForRemoteUI = v64;
    MEMORY[0x1E69E5920](httpHeadersForRemoteUI);
    MEMORY[0x1E69E5920](v321);
    MEMORY[0x1E69E5920](v322);
    v323 = location[0];
    v66 = *(v408 + 3776);
    v67 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_remoteUIIdentityToken"];
    remoteUIIdentityToken = v414->_remoteUIIdentityToken;
    v414->_remoteUIIdentityToken = v67;
    MEMORY[0x1E69E5920](remoteUIIdentityToken);
    v324 = location[0];
    v69 = *(v408 + 3776);
    v70 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_password"];
    password = v414->_password;
    v414->_password = v70;
    MEMORY[0x1E69E5920](password);
    v325 = location[0];
    v72 = *(v380 + 3480);
    v326 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_isPasswordEditable"];
    v73 = [v326 BOOLValue];
    v74 = v326;
    v414->_isPasswordEditable = v73;
    MEMORY[0x1E69E5920](v74);
    v327 = location[0];
    v75 = *(v380 + 3480);
    v328 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_shouldUpdatePersistentServiceTokens"];
    v76 = [v328 BOOLValue];
    v77 = v328;
    v414->_shouldUpdatePersistentServiceTokens = v76;
    MEMORY[0x1E69E5920](v77);
    v329 = location[0];
    v78 = *(v380 + 3480);
    v330 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_shouldOfferSecurityUpgrade"];
    v79 = [v330 BOOLValue];
    v80 = v330;
    v414->_shouldOfferSecurityUpgrade = v79;
    MEMORY[0x1E69E5920](v80);
    v331 = location[0];
    v81 = *(v380 + 3480);
    v332 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_needsCredentialRecovery"];
    v82 = [v332 BOOLValue];
    v83 = v332;
    v414->_needsCredentialRecovery = v82;
    MEMORY[0x1E69E5920](v83);
    v333 = location[0];
    v84 = *(v380 + 3480);
    v334 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_needsNewAppleID"];
    v85 = [v334 BOOLValue];
    v86 = v334;
    v414->_needsNewAppleID = v85;
    MEMORY[0x1E69E5920](v86);
    v335 = location[0];
    v87 = *(v380 + 3480);
    v336 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_needsPasswordChange"];
    v88 = [v336 BOOLValue];
    v89 = v336;
    v414->_needsPasswordChange = v88;
    MEMORY[0x1E69E5920](v89);
    v337 = location[0];
    v90 = *(v380 + 3480);
    v338 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_shouldPreventInteractiveAuth"];
    v91 = [v338 BOOLValue];
    v92 = v338;
    v414->_shouldPreventInteractiveAuth = v91;
    MEMORY[0x1E69E5920](v92);
    v339 = location[0];
    v93 = *(v408 + 3776);
    v94 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_generatedCode"];
    generatedCode = v414->_generatedCode;
    v414->_generatedCode = v94;
    MEMORY[0x1E69E5920](generatedCode);
    v340 = location[0];
    v96 = *(v380 + 3480);
    v97 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_latitude"];
    latitude = v414->_latitude;
    v414->_latitude = v97;
    MEMORY[0x1E69E5920](latitude);
    v341 = location[0];
    v99 = *(v380 + 3480);
    v100 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_longitude"];
    longitude = v414->_longitude;
    v414->_longitude = v100;
    MEMORY[0x1E69E5920](longitude);
    v342 = location[0];
    v102 = *(v408 + 3776);
    v103 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_deviceClass"];
    deviceClass = v414->_deviceClass;
    v414->_deviceClass = v103;
    MEMORY[0x1E69E5920](deviceClass);
    v343 = location[0];
    v105 = *(v408 + 3776);
    v106 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_deviceColor"];
    deviceColor = v414->_deviceColor;
    v414->_deviceColor = v106;
    MEMORY[0x1E69E5920](deviceColor);
    v344 = location[0];
    v108 = *(v408 + 3776);
    v109 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_deviceEnclosureColor"];
    deviceEnclosureColor = v414->_deviceEnclosureColor;
    v414->_deviceEnclosureColor = v109;
    MEMORY[0x1E69E5920](deviceEnclosureColor);
    v345 = location[0];
    v111 = *(v408 + 3776);
    v112 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_notificationDisclaimer"];
    notificationDisclaimer = v414->_notificationDisclaimer;
    v414->_notificationDisclaimer = v112;
    MEMORY[0x1E69E5920](notificationDisclaimer);
    v346 = location[0];
    v114 = *(v380 + 3480);
    v347 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_shouldForceInteractiveAuth"];
    v115 = [v347 BOOLValue];
    v116 = v347;
    v414->_shouldForceInteractiveAuth = v115;
    MEMORY[0x1E69E5920](v116);
    v348 = location[0];
    v117 = *(v380 + 3480);
    v349 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_capabilityForUIDisplay"];
    v118 = [v349 unsignedIntegerValue];
    v119 = v349;
    v414->_capabilityForUIDisplay = v118;
    MEMORY[0x1E69E5920](v119);
    v350 = location[0];
    v352 = 0x1E73D2000uLL;
    v120 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_proxiedDeviceAnisetteData"];
    proxiedDeviceAnisetteData = v414->_proxiedDeviceAnisetteData;
    v414->_proxiedDeviceAnisetteData = v120;
    MEMORY[0x1E69E5920](proxiedDeviceAnisetteData);
    v351 = location[0];
    v354 = 0x1E73D2000uLL;
    v122 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_proxiedDevice"];
    proxiedDevice = v414->_proxiedDevice;
    v414->_proxiedDevice = v122;
    MEMORY[0x1E69E5920](proxiedDevice);
    v353 = location[0];
    v124 = *(v352 + 2520);
    v125 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_companionDeviceAnisetteData"];
    companionDeviceAnisetteData = v414->_companionDeviceAnisetteData;
    v414->_companionDeviceAnisetteData = v125;
    MEMORY[0x1E69E5920](companionDeviceAnisetteData);
    v355 = location[0];
    v127 = *(v354 + 3072);
    v128 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_companionDevice"];
    companionDevice = v414->_companionDevice;
    v414->_companionDevice = v128;
    MEMORY[0x1E69E5920](companionDevice);
    v356 = location[0];
    v130 = *(v380 + 3480);
    v131 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_isAppleIDLoginEnabled"];
    isAppleIDLoginEnabled = v414->_isAppleIDLoginEnabled;
    v414->_isAppleIDLoginEnabled = v131;
    MEMORY[0x1E69E5920](isAppleIDLoginEnabled);
    v357 = location[0];
    v133 = *(v380 + 3480);
    v134 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_hasEmptyPassword"];
    hasEmptyPassword = v414->_hasEmptyPassword;
    v414->_hasEmptyPassword = v134;
    MEMORY[0x1E69E5920](hasEmptyPassword);
    v358 = location[0];
    v136 = *(v380 + 3480);
    v359 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_shouldRequestShortLivedToken"];
    v137 = [v359 BOOLValue];
    v138 = v359;
    v414->_shouldRequestShortLivedToken = v137;
    MEMORY[0x1E69E5920](v138);
    v360 = location[0];
    v139 = *(v408 + 3776);
    v140 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_shortLivedToken"];
    shortLivedToken = v414->_shortLivedToken;
    v414->_shortLivedToken = v140;
    MEMORY[0x1E69E5920](shortLivedToken);
    v361 = location[0];
    v142 = *(v408 + 3776);
    v143 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_identityToken"];
    identityToken = v414->_identityToken;
    v414->_identityToken = v143;
    MEMORY[0x1E69E5920](identityToken);
    v362 = location[0];
    v145 = *(v380 + 3480);
    v363 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_shouldRequestConfigurationInfo"];
    v146 = [v363 BOOLValue];
    v147 = v363;
    v414->_shouldRequestConfigurationInfo = v146;
    MEMORY[0x1E69E5920](v147);
    v364 = location[0];
    v148 = *(v380 + 3480);
    v365 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_isTriggeredByNotification"];
    v149 = [v365 BOOLValue];
    v150 = v365;
    v414->_isTriggeredByNotification = v149;
    MEMORY[0x1E69E5920](v150);
    v366 = location[0];
    v151 = *(v408 + 3776);
    v152 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_message"];
    message = v414->_message;
    v414->_message = v152;
    MEMORY[0x1E69E5920](message);
    v154 = [location[0] decodeBoolForKey:@"_anticipateEscrowAttempt"];
    v414->_anticipateEscrowAttempt = v154;
    v155 = [location[0] decodeBoolForKey:@"_isFirstTimeLogin"];
    v414->_isFirstTimeLogin = v155;
    v156 = [location[0] decodeBoolForKey:@"_supportsPiggybacking"];
    v157 = v377;
    v414->_supportsPiggybacking = v156;
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
    desiredInternalTokens = v414->_desiredInternalTokens;
    v414->_desiredInternalTokens = v161;
    MEMORY[0x1E69E5920](desiredInternalTokens);
    MEMORY[0x1E69E5920](v371);
    MEMORY[0x1E69E5920](v372);
    v163 = [location[0] decodeBoolForKey:@"_shouldSkipSettingsLaunchAlert"];
    v414->_shouldSkipSettingsLaunchAlert = v163;
    v164 = [location[0] decodeBoolForKey:@"_shouldSendIdentityTokenForRemoteUI"];
    v414->_shouldSendIdentityTokenForRemoteUI = v164;
    v165 = [location[0] decodeBoolForKey:@"_shouldRequestRecoveryPET"];
    v166 = v408;
    v414->_shouldRequestRecoveryPET = v165;
    v373 = location[0];
    v167 = *(v166 + 3776);
    v168 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_title"];
    title = v414->_title;
    v414->_title = v168;
    MEMORY[0x1E69E5920](title);
    v374 = location[0];
    v170 = *(v380 + 3480);
    v375 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_shouldSkipInitialReachabilityCheck"];
    v171 = [v375 BOOLValue];
    v172 = v375;
    v414->_shouldSkipInitialReachabilityCheck = v171;
    MEMORY[0x1E69E5920](v172);
    v173 = [location[0] decodeIntegerForKey:@"_attemptIndex"];
    v174 = v408;
    v414->_attemptIndex = v173;
    v376 = location[0];
    v175 = *(v174 + 3776);
    v176 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_securityUpgradeContext"];
    securityUpgradeContext = v414->_securityUpgradeContext;
    v414->_securityUpgradeContext = v176;
    MEMORY[0x1E69E5920](securityUpgradeContext);
    v178 = [location[0] decodeIntegerForKey:@"_authenticationType"];
    v414->_authenticationType = v178;
    v179 = [location[0] decodeBoolForKey:@"_shouldSendGrandSlamTokensForRemoteUI"];
    v414->_shouldSendGrandSlamTokensForRemoteUI = v179;
    v180 = [location[0] decodeBoolForKey:@"_needsRepair"];
    v181 = v377;
    v182 = v378;
    v414->_needsRepair = v180;
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
    appProvidedData = v414->_appProvidedData;
    v414->_appProvidedData = v187;
    MEMORY[0x1E69E5920](appProvidedData);
    MEMORY[0x1E69E5920](v387);
    v388 = location[0];
    v189 = *(v408 + 3776);
    v190 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_appProvidedContext"];
    appProvidedContext = v414->_appProvidedContext;
    v414->_appProvidedContext = v190;
    MEMORY[0x1E69E5920](appProvidedContext);
    v389 = location[0];
    v192 = *(v408 + 3776);
    v193 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_masterKey"];
    masterKey = v414->_masterKey;
    v414->_masterKey = v193;
    MEMORY[0x1E69E5920](masterKey);
    v195 = [location[0] decodeBoolForKey:@"_performUIOutOfProcess"];
    v414->_performUIOutOfProcess = v195;
    v196 = [location[0] decodeBoolForKey:@"_keepAlive"];
    v197 = v408;
    v414->_keepAlive = v196;
    v390 = location[0];
    v198 = *(v197 + 3776);
    v199 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_cancelButtonString"];
    cancelButtonString = v414->_cancelButtonString;
    v414->_cancelButtonString = v199;
    MEMORY[0x1E69E5920](cancelButtonString);
    v391 = location[0];
    v201 = *(v408 + 3776);
    v202 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_alternativeButtonString"];
    alternativeButtonString = v414->_alternativeButtonString;
    v414->_alternativeButtonString = v202;
    MEMORY[0x1E69E5920](alternativeButtonString);
    v204 = [location[0] decodeBoolForKey:@"_hideAlternativeButton"];
    v414->_hideAlternativeButton = v204;
    v205 = [location[0] decodeBoolForKey:@"_hideCancelButton"];
    v414->_hideCancelButton = v205;
    v206 = [location[0] decodeBoolForKey:@"_hideReasonString"];
    v414->_hideReasonString = v206;
    v207 = [location[0] decodeBoolForKey:@"_clientShouldHandleAlternativeButtonAction"];
    v208 = v408;
    v414->_clientShouldHandleAlternativeButtonAction = v207;
    v392 = location[0];
    v209 = *(v208 + 3776);
    v210 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_windowTitle"];
    windowTitle = v414->_windowTitle;
    v414->_windowTitle = v210;
    MEMORY[0x1E69E5920](windowTitle);
    v212 = [location[0] decodeBoolForKey:@"_alwaysShowUsernameField"];
    v213 = v408;
    v414->_alwaysShowUsernameField = v212;
    v393 = location[0];
    v214 = *(v213 + 3776);
    v215 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_privacyBundleIdentifier"];
    privacyBundleIdentifier = v414->_privacyBundleIdentifier;
    v414->_privacyBundleIdentifier = v215;
    MEMORY[0x1E69E5920](privacyBundleIdentifier);
    v217 = [location[0] decodeIntegerForKey:@"_authenticationPromptStyle"];
    v414->_authenticationPromptStyle = v217;
    v218 = [location[0] decodeIntegerForKey:@"_requestedNewAccountAgeRange"];
    v414->_requestedNewAccountAgeRange = v218;
    v219 = [location[0] decodeIntegerForKey:@"_authenticationMode"];
    v414->_authenticationMode = v219;
    v220 = [location[0] decodeBoolForKey:@"_isMDMInformationRequired"];
    v414->_isMDMInformationRequired = v220;
    v221 = [location[0] decodeBoolForKey:@"_cliMode"];
    v222 = v408;
    v414->_cliMode = v221;
    v394 = location[0];
    v223 = *(v222 + 3776);
    v224 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"passwordlessToken"];
    passwordlessToken = v414->_passwordlessToken;
    v414->_passwordlessToken = v224;
    MEMORY[0x1E69E5920](passwordlessToken);
    v395 = location[0];
    v226 = *(v408 + 3776);
    v227 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"idmsDataToken"];
    idmsDataToken = v414->_idmsDataToken;
    v414->_idmsDataToken = v227;
    MEMORY[0x1E69E5920](idmsDataToken);
    v229 = [location[0] decodeBoolForKey:@"_needsSecurityUpgradeUI"];
    v414->_needsSecurityUpgradeUI = v229;
    v230 = [location[0] decodeBoolForKey:@"_isRKVerification"];
    v231 = v396;
    v414->_isRKVerification = v230;
    v397 = location[0];
    v232 = *(v231 + 3824);
    v233 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_displayImageData"];
    displayImageData = v414->_displayImageData;
    v414->_displayImageData = v233;
    MEMORY[0x1E69E5920](displayImageData);
    v235 = [location[0] decodeIntegerForKey:@"_verifyCredentialReason"];
    v236 = v408;
    v414->_verifyCredentialReason = v235;
    v398 = location[0];
    v237 = *(v236 + 3776);
    v238 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_callerIconBundlePath"];
    callerIconBundlePath = v414->_callerIconBundlePath;
    v414->_callerIconBundlePath = v238;
    MEMORY[0x1E69E5920](callerIconBundlePath);
    v399 = location[0];
    v240 = *(v408 + 3776);
    v241 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_localizedCallerName"];
    localizedCallerName = v414->_localizedCallerName;
    v414->_localizedCallerName = v241;
    MEMORY[0x1E69E5920](localizedCallerName);
    v400 = location[0];
    v243 = *(v408 + 3776);
    v244 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_custodianRecoveryToken"];
    custodianRecoveryToken = v414->_custodianRecoveryToken;
    v414->_custodianRecoveryToken = v244;
    MEMORY[0x1E69E5920](custodianRecoveryToken);
    v246 = [location[0] decodeBoolForKey:@"_forceEligibleForForegroundAuthentication"];
    v414->_forceEligibleForForegroundAuthentication = v246;
    v247 = [location[0] decodeBoolForKey:@"_deviceRegionRequired"];
    v414->_deviceRegionRequired = v247;
    v248 = [location[0] decodeBoolForKey:@"_disableProximityAuth"];
    v414->_disableProximityAuth = v248;
    v249 = [location[0] decodeBoolForKey:@"_shouldBroadcastForProximityAuthOnly"];
    v414->_shouldBroadcastForProximityAuthOnly = v249;
    v250 = [location[0] decodeBoolForKey:@"_enablePasscodeAuth"];
    v414->_enablePasscodeAuth = v250;
    v251 = [location[0] decodeBoolForKey:@"_passcodeOnlyPolicy"];
    v252 = v408;
    v414->_passcodeOnlyPolicy = v251;
    v401 = location[0];
    v253 = *(v252 + 3776);
    v254 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_sourceAltDSID"];
    sourceAltDSID = v414->_sourceAltDSID;
    v414->_sourceAltDSID = v254;
    MEMORY[0x1E69E5920](sourceAltDSID);
    v402 = location[0];
    v256 = *(v408 + 3776);
    v257 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_serviceToken"];
    serviceToken = v414->_serviceToken;
    v414->_serviceToken = v257;
    MEMORY[0x1E69E5920](serviceToken);
    v259 = [location[0] decodeBoolForKey:@"_biometricSkipPasscodeFallback"];
    v414->_biometricSkipPasscodeFallback = v259;
    v260 = [location[0] decodeBoolForKey:@"_isNativeTakeover"];
    v414->_isNativeTakeover = v260;
    v261 = [location[0] decodeBoolForKey:@"_ignorePasswordCache"];
    v414->_ignorePasswordCache = v261;
    v262 = [location[0] decodeBoolForKey:@"_ignoreShouldContinueProxy"];
    v414->_ignoreShouldContinueProxy = v262;
    v263 = [location[0] decodeBoolForKey:@"_isRequestedFromOOPViewService"];
    v264 = v408;
    v414->_isRequestedFromOOPViewService = v263;
    v403 = location[0];
    v265 = *(v264 + 3776);
    v266 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_proxiedAppleID"];
    proxiedAppleID = v414->_proxiedAppleID;
    v414->_proxiedAppleID = v266;
    MEMORY[0x1E69E5920](proxiedAppleID);
    v404 = location[0];
    v268 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_companionKeyEnvelope"];
    companionKeyEnvelope = v414->_companionKeyEnvelope;
    v414->_companionKeyEnvelope = v268;
    MEMORY[0x1E69E5920](companionKeyEnvelope);
    v270 = [location[0] decodeBoolForKey:@"_piggybackingForTrustedDevice"];
    v414->_piggybackingForTrustedDevice = v270;
    v271 = [location[0] decodeBoolForKey:@"_allowAuthenticationBeforeFirstUnlock"];
    v414->_allowAuthenticationBeforeFirstUnlock = v271;
    v405 = location[0];
    v272 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_protoAccountContext"];
    protoAccountContext = v414->_protoAccountContext;
    v414->_protoAccountContext = v272;
    MEMORY[0x1E69E5920](protoAccountContext);
    v406 = location[0];
    v274 = *(v408 + 3776);
    v275 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"idmsData"];
    idmsData = v414->_idmsData;
    v414->_idmsData = v275;
    MEMORY[0x1E69E5920](idmsData);
    v407 = location[0];
    v277 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_accountMigrationContext"];
    accountMigrationContext = v414->_accountMigrationContext;
    v414->_accountMigrationContext = v277;
    MEMORY[0x1E69E5920](accountMigrationContext);
    v409 = location[0];
    v279 = *(v408 + 3776);
    v280 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_proxiedToken"];
    proxiedToken = v414->_proxiedToken;
    v414->_proxiedToken = v280;
    MEMORY[0x1E69E5920](proxiedToken);
    v410 = location[0];
    v282 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_authenticatableResource"];
    authenticatableResource = v414->_authenticatableResource;
    v414->_authenticatableResource = v282;
    MEMORY[0x1E69E5920](authenticatableResource);
  }

  v286 = &v414;
  v285 = MEMORY[0x1E69E5928](v414);
  obj = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(v286, obj);
  *MEMORY[0x1E69E9840];
  return v285;
}

- (void)encodeWithCoder:(id)a3
{
  v44 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v44->_reason forKey:@"_reason"];
  [location[0] encodeObject:v44->_username forKey:@"_username"];
  v3 = location[0];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:v44->_isUsernameEditable];
  [v3 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  [location[0] encodeObject:v44->_DSID forKey:@"_DSID"];
  [location[0] encodeObject:v44->_altDSID forKey:@"_altDSID"];
  [location[0] encodeObject:v44->_telemetryDeviceSessionID forKey:@"_telemetryDeviceSessionID"];
  [location[0] encodeObject:v44->_telemetryFlowID forKey:@"_telemetryFlowID"];
  [location[0] encodeObject:v44->_dependentAltDSID forKey:@"_dependentAltDSID"];
  v5 = location[0];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v44->_isProxyingForApp];
  [v5 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v6);
  [location[0] encodeObject:v44->_proxiedAppBundleID forKey:@"_proxiedAppBundleID"];
  [location[0] encodeObject:v44->_proxiedAppName forKey:@"_proxiedAppName"];
  [location[0] encodeObject:v44->_serviceIdentifiers forKey:@"_serviceIdentifiers"];
  [location[0] encodeObject:v44->_identifier forKey:@"_identifier"];
  v7 = location[0];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:v44->_serviceType];
  [v7 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v8);
  v9 = location[0];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:v44->_maximumLoginAttempts];
  [v9 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v10);
  v11 = location[0];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:v44->_isEphemeral];
  [v11 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v12);
  v13 = location[0];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:v44->_shouldAllowAppleIDCreation];
  [v13 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v14);
  v15 = location[0];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:v44->_shouldPromptForPasswordOnly];
  [v15 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v16);
  [location[0] encodeObject:v44->_passwordPromptTitle forKey:@"_passwordPromptTitle"];
  [location[0] encodeObject:v44->_defaultButtonString forKey:@"_defaultButtonString"];
  [location[0] encodeObject:v44->_httpHeadersForRemoteUI forKey:@"_httpHeadersForRemoteUI"];
  [location[0] encodeObject:v44->_remoteUIIdentityToken forKey:@"_remoteUIIdentityToken"];
  [location[0] encodeObject:v44->_password forKey:@"_password"];
  v17 = location[0];
  v18 = [MEMORY[0x1E696AD98] numberWithBool:v44->_isPasswordEditable];
  [v17 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v18);
  v19 = location[0];
  v20 = [MEMORY[0x1E696AD98] numberWithBool:v44->_shouldUpdatePersistentServiceTokens];
  [v19 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v20);
  v21 = location[0];
  v22 = [MEMORY[0x1E696AD98] numberWithBool:v44->_shouldOfferSecurityUpgrade];
  [v21 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v22);
  v23 = location[0];
  v24 = [MEMORY[0x1E696AD98] numberWithBool:v44->_needsCredentialRecovery];
  [v23 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v24);
  v25 = location[0];
  v26 = [MEMORY[0x1E696AD98] numberWithBool:v44->_needsNewAppleID];
  [v25 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v26);
  v27 = location[0];
  v28 = [MEMORY[0x1E696AD98] numberWithBool:v44->_needsPasswordChange];
  [v27 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v28);
  v29 = location[0];
  v30 = [MEMORY[0x1E696AD98] numberWithBool:v44->_shouldPreventInteractiveAuth];
  [v29 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v30);
  [location[0] encodeObject:v44->_generatedCode forKey:@"_generatedCode"];
  [location[0] encodeObject:v44->_latitude forKey:@"_latitude"];
  [location[0] encodeObject:v44->_longitude forKey:@"_longitude"];
  [location[0] encodeObject:v44->_deviceClass forKey:@"_deviceClass"];
  [location[0] encodeObject:v44->_deviceColor forKey:@"_deviceColor"];
  [location[0] encodeObject:v44->_deviceEnclosureColor forKey:@"_deviceEnclosureColor"];
  [location[0] encodeObject:v44->_notificationDisclaimer forKey:@"_notificationDisclaimer"];
  v31 = location[0];
  v32 = [MEMORY[0x1E696AD98] numberWithBool:v44->_shouldForceInteractiveAuth];
  [v31 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v32);
  v33 = location[0];
  v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v44->_capabilityForUIDisplay];
  [v33 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v34);
  [location[0] encodeObject:v44->_proxiedDeviceAnisetteData forKey:@"_proxiedDeviceAnisetteData"];
  [location[0] encodeObject:v44->_proxiedDevice forKey:@"_proxiedDevice"];
  [location[0] encodeObject:v44->_companionDeviceAnisetteData forKey:@"_companionDeviceAnisetteData"];
  [location[0] encodeObject:v44->_companionDevice forKey:@"_companionDevice"];
  [location[0] encodeObject:v44->_isAppleIDLoginEnabled forKey:@"_isAppleIDLoginEnabled"];
  [location[0] encodeObject:v44->_hasEmptyPassword forKey:@"_hasEmptyPassword"];
  v35 = location[0];
  v36 = [MEMORY[0x1E696AD98] numberWithBool:v44->_shouldRequestShortLivedToken];
  [v35 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v36);
  [location[0] encodeObject:v44->_shortLivedToken forKey:@"_shortLivedToken"];
  [location[0] encodeObject:v44->_identityToken forKey:@"_identityToken"];
  v37 = location[0];
  v38 = [MEMORY[0x1E696AD98] numberWithBool:v44->_shouldRequestConfigurationInfo];
  [v37 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v38);
  v39 = location[0];
  v40 = [MEMORY[0x1E696AD98] numberWithBool:v44->_isTriggeredByNotification];
  [v39 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v40);
  [location[0] encodeObject:v44->_message forKey:@"_message"];
  [location[0] encodeBool:v44->_anticipateEscrowAttempt forKey:@"_anticipateEscrowAttempt"];
  [location[0] encodeBool:v44->_isFirstTimeLogin forKey:@"_isFirstTimeLogin"];
  [location[0] encodeBool:v44->_supportsPiggybacking forKey:@"_supportsPiggybacking"];
  [location[0] encodeObject:v44->_desiredInternalTokens forKey:@"_desiredInternalTokens"];
  [location[0] encodeBool:v44->_shouldSkipSettingsLaunchAlert forKey:@"_shouldSkipSettingsLaunchAlert"];
  [location[0] encodeBool:v44->_shouldSendIdentityTokenForRemoteUI forKey:@"_shouldSendIdentityTokenForRemoteUI"];
  [location[0] encodeBool:v44->_shouldRequestRecoveryPET forKey:@"_shouldRequestRecoveryPET"];
  [location[0] encodeObject:v44->_title forKey:@"_title"];
  [location[0] encodeObject:v44->_helpAnchor forKey:@"_helpAnchor"];
  [location[0] encodeObject:v44->_helpBook forKey:@"_helpBook"];
  v41 = location[0];
  v42 = [MEMORY[0x1E696AD98] numberWithBool:v44->_shouldSkipInitialReachabilityCheck];
  [v41 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v42);
  [location[0] encodeInteger:v44->_attemptIndex forKey:@"_attemptIndex"];
  [location[0] encodeObject:v44->_securityUpgradeContext forKey:@"_securityUpgradeContext"];
  [location[0] encodeInteger:v44->_authenticationType forKey:@"_authenticationType"];
  [location[0] encodeBool:v44->_shouldSendGrandSlamTokensForRemoteUI forKey:@"_shouldSendGrandSlamTokensForRemoteUI"];
  [location[0] encodeBool:v44->_needsRepair forKey:@"_needsRepair"];
  [location[0] encodeObject:v44->_appProvidedData forKey:@"_appProvidedData"];
  [location[0] encodeObject:v44->_appProvidedContext forKey:@"_appProvidedContext"];
  [location[0] encodeObject:v44->_masterKey forKey:@"_masterKey"];
  [location[0] encodeBool:v44->_performUIOutOfProcess forKey:@"_performUIOutOfProcess"];
  [location[0] encodeBool:v44->_keepAlive forKey:@"_keepAlive"];
  [location[0] encodeObject:v44->_cancelButtonString forKey:@"_cancelButtonString"];
  [location[0] encodeObject:v44->_alternativeButtonString forKey:@"_alternativeButtonString"];
  [location[0] encodeBool:v44->_hideAlternativeButton forKey:@"_hideAlternativeButton"];
  [location[0] encodeBool:v44->_hideCancelButton forKey:@"_hideCancelButton"];
  [location[0] encodeBool:v44->_hideReasonString forKey:@"_hideReasonString"];
  [location[0] encodeBool:v44->_clientShouldHandleAlternativeButtonAction forKey:@"_clientShouldHandleAlternativeButtonAction"];
  [location[0] encodeObject:v44->_windowTitle forKey:@"_windowTitle"];
  [location[0] encodeBool:v44->_alwaysShowUsernameField forKey:@"_alwaysShowUsernameField"];
  [location[0] encodeObject:v44->_privacyBundleIdentifier forKey:@"_privacyBundleIdentifier"];
  [location[0] encodeInteger:v44->_authenticationPromptStyle forKey:@"_authenticationPromptStyle"];
  [location[0] encodeInteger:v44->_requestedNewAccountAgeRange forKey:@"_requestedNewAccountAgeRange"];
  [location[0] encodeInteger:v44->_authenticationMode forKey:@"_authenticationMode"];
  [location[0] encodeBool:v44->_isMDMInformationRequired forKey:@"_isMDMInformationRequired"];
  [location[0] encodeBool:v44->_cliMode forKey:@"_cliMode"];
  [location[0] encodeObject:v44->_passwordlessToken forKey:@"passwordlessToken"];
  [location[0] encodeObject:v44->_idmsDataToken forKey:@"idmsDataToken"];
  [location[0] encodeBool:v44->_needsSecurityUpgradeUI forKey:@"_needsSecurityUpgradeUI"];
  [location[0] encodeBool:v44->_isRKVerification forKey:@"_isRKVerification"];
  [location[0] encodeObject:v44->_displayImageData forKey:@"_displayImageData"];
  [location[0] encodeInteger:v44->_verifyCredentialReason forKey:@"_verifyCredentialReason"];
  [location[0] encodeObject:v44->_callerIconBundlePath forKey:@"_callerIconBundlePath"];
  [location[0] encodeObject:v44->_localizedCallerName forKey:@"_localizedCallerName"];
  [location[0] encodeObject:v44->_custodianRecoveryToken forKey:@"_custodianRecoveryToken"];
  [location[0] encodeBool:v44->_forceEligibleForForegroundAuthentication forKey:@"_forceEligibleForForegroundAuthentication"];
  [location[0] encodeBool:v44->_deviceRegionRequired forKey:@"_deviceRegionRequired"];
  [location[0] encodeBool:v44->_disableProximityAuth forKey:@"_disableProximityAuth"];
  [location[0] encodeBool:v44->_shouldBroadcastForProximityAuthOnly forKey:@"_shouldBroadcastForProximityAuthOnly"];
  [location[0] encodeBool:v44->_enablePasscodeAuth forKey:@"_enablePasscodeAuth"];
  [location[0] encodeBool:v44->_passcodeOnlyPolicy forKey:@"_passcodeOnlyPolicy"];
  [location[0] encodeObject:v44->_sourceAltDSID forKey:@"_sourceAltDSID"];
  [location[0] encodeObject:v44->_serviceToken forKey:@"_serviceToken"];
  [location[0] encodeBool:v44->_biometricSkipPasscodeFallback forKey:@"_biometricSkipPasscodeFallback"];
  [location[0] encodeBool:v44->_isNativeTakeover forKey:@"_isNativeTakeover"];
  [location[0] encodeBool:v44->_ignorePasswordCache forKey:@"_ignorePasswordCache"];
  [location[0] encodeBool:v44->_ignoreShouldContinueProxy forKey:@"_ignoreShouldContinueProxy"];
  [location[0] encodeBool:v44->_isRequestedFromOOPViewService forKey:@"_isRequestedFromOOPViewService"];
  [location[0] encodeObject:v44->_proxiedAppleID forKey:@"_proxiedAppleID"];
  [location[0] encodeObject:v44->_companionKeyEnvelope forKey:@"_companionKeyEnvelope"];
  [location[0] encodeBool:v44->_piggybackingForTrustedDevice forKey:@"_piggybackingForTrustedDevice"];
  [location[0] encodeBool:v44->_allowAuthenticationBeforeFirstUnlock forKey:@"_allowAuthenticationBeforeFirstUnlock"];
  [location[0] encodeObject:v44->_protoAccountContext forKey:@"_protoAccountContext"];
  [location[0] encodeObject:v44->_idmsData forKey:@"idmsData"];
  [location[0] encodeObject:v44->_accountMigrationContext forKey:@"_accountMigrationContext"];
  [location[0] encodeObject:v44->_proxiedToken forKey:@"_proxiedToken"];
  [location[0] encodeObject:v44->_authenticatableResource forKey:@"_authenticatableResource"];
  objc_storeStrong(location, 0);
}

- (id)_sanitizedCopy
{
  v119 = self;
  v118[1] = a2;
  v118[0] = objc_alloc_init(AKAppleIDAuthenticationContext);
  v2 = [(NSString *)v119->_reason copy];
  v3 = *(v118[0] + 52);
  *(v118[0] + 52) = v2;
  MEMORY[0x1E69E5920](v3);
  v4 = [(NSString *)v119->_username copy];
  v5 = *(v118[0] + 22);
  *(v118[0] + 22) = v4;
  MEMORY[0x1E69E5920](v5);
  *(v118[0] + 139) = v119->_isUsernameEditable;
  v6 = [(NSString *)v119->_DSID copy];
  v7 = *(v118[0] + 56);
  *(v118[0] + 56) = v6;
  MEMORY[0x1E69E5920](v7);
  if ([(NSString *)v119->_altDSID ak_isEmailAddress])
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
    v8 = [(NSString *)v119->_altDSID copy];
    v9 = *(v118[0] + 35);
    *(v118[0] + 35) = v8;
    MEMORY[0x1E69E5920](v9);
  }

  v10 = [(NSString *)v119->_telemetryDeviceSessionID copy];
  v11 = *(v118[0] + 44);
  *(v118[0] + 44) = v10;
  MEMORY[0x1E69E5920](v11);
  v12 = [(NSString *)v119->_telemetryFlowID copy];
  v13 = *(v118[0] + 45);
  *(v118[0] + 45) = v12;
  MEMORY[0x1E69E5920](v13);
  v14 = [(NSString *)v119->_dependentAltDSID copy];
  v15 = *(v118[0] + 75);
  *(v118[0] + 75) = v14;
  MEMORY[0x1E69E5920](v15);
  *(v118[0] + 123) = v119->_isProxyingForApp;
  v16 = [(NSString *)v119->_proxiedAppBundleID copy];
  v17 = *(v118[0] + 23);
  *(v118[0] + 23) = v16;
  MEMORY[0x1E69E5920](v17);
  v18 = [(NSString *)v119->_proxiedAppName copy];
  v19 = *(v118[0] + 39);
  *(v118[0] + 39) = v18;
  MEMORY[0x1E69E5920](v19);
  v20 = [(NSArray *)v119->_serviceIdentifiers copy];
  v21 = *(v118[0] + 55);
  *(v118[0] + 55) = v20;
  MEMORY[0x1E69E5920](v21);
  v22 = [(NSUUID *)v119->_identifier copy];
  v23 = *(v118[0] + 24);
  *(v118[0] + 24) = v22;
  MEMORY[0x1E69E5920](v23);
  *(v118[0] + 36) = v119->_serviceType;
  *(v118[0] + 54) = v119->_maximumLoginAttempts;
  *(v118[0] + 145) = v119->_isEphemeral;
  *(v118[0] + 140) = v119->_shouldAllowAppleIDCreation;
  *(v118[0] + 156) = v119->_shouldPromptForPasswordOnly;
  v24 = [(NSString *)v119->_passwordPromptTitle copy];
  v25 = *(v118[0] + 27);
  *(v118[0] + 27) = v24;
  MEMORY[0x1E69E5920](v25);
  v26 = [(NSString *)v119->_defaultButtonString copy];
  v27 = *(v118[0] + 53);
  *(v118[0] + 53) = v26;
  MEMORY[0x1E69E5920](v27);
  v28 = [(NSDictionary *)v119->_httpHeadersForRemoteUI copy];
  v29 = *(v118[0] + 57);
  *(v118[0] + 57) = v28;
  MEMORY[0x1E69E5920](v29);
  v30 = [(NSString *)v119->_remoteUIIdentityToken copy];
  v31 = *(v118[0] + 26);
  *(v118[0] + 26) = v30;
  MEMORY[0x1E69E5920](v31);
  v32 = [(NSString *)v119->_password copy];
  v33 = *(v118[0] + 28);
  *(v118[0] + 28) = v32;
  MEMORY[0x1E69E5920](v33);
  *(v118[0] + 126) = v119->_isPasswordEditable;
  *(v118[0] + 157) = v119->_shouldUpdatePersistentServiceTokens;
  *(v118[0] + 146) = v119->_shouldOfferSecurityUpgrade;
  *(v118[0] + 141) = v119->_needsCredentialRecovery;
  *(v118[0] + 142) = v119->_needsNewAppleID;
  *(v118[0] + 143) = v119->_needsPasswordChange;
  *(v118[0] + 128) = v119->_shouldPreventInteractiveAuth;
  v34 = [(NSString *)v119->_generatedCode copy];
  v35 = *(v118[0] + 1);
  *(v118[0] + 1) = v34;
  MEMORY[0x1E69E5920](v35);
  v36 = [(NSNumber *)v119->_latitude copy];
  v37 = *(v118[0] + 2);
  *(v118[0] + 2) = v36;
  MEMORY[0x1E69E5920](v37);
  v38 = [(NSNumber *)v119->_longitude copy];
  v39 = *(v118[0] + 3);
  *(v118[0] + 3) = v38;
  MEMORY[0x1E69E5920](v39);
  v40 = [(NSString *)v119->_deviceClass copy];
  v41 = *(v118[0] + 4);
  *(v118[0] + 4) = v40;
  MEMORY[0x1E69E5920](v41);
  v42 = [(NSString *)v119->_deviceColor copy];
  v43 = *(v118[0] + 5);
  *(v118[0] + 5) = v42;
  MEMORY[0x1E69E5920](v43);
  v44 = [(NSString *)v119->_deviceEnclosureColor copy];
  v45 = *(v118[0] + 6);
  *(v118[0] + 6) = v44;
  MEMORY[0x1E69E5920](v45);
  v46 = [(NSString *)v119->_notificationDisclaimer copy];
  v47 = *(v118[0] + 7);
  *(v118[0] + 7) = v46;
  MEMORY[0x1E69E5920](v47);
  *(v118[0] + 129) = v119->_shouldForceInteractiveAuth;
  v48 = [(AKAppleIDAuthenticationContext *)v119 _capabilityForUIDisplay];
  *(v118[0] + 29) = v48;
  v49 = [(AKAnisetteData *)v119->_proxiedDeviceAnisetteData copy];
  v50 = *(v118[0] + 33);
  *(v118[0] + 33) = v49;
  MEMORY[0x1E69E5920](v50);
  v51 = [(AKDevice *)v119->_proxiedDevice copy];
  v52 = *(v118[0] + 11);
  *(v118[0] + 11) = v51;
  MEMORY[0x1E69E5920](v52);
  v53 = [(AKAnisetteData *)v119->_companionDeviceAnisetteData copy];
  v54 = *(v118[0] + 32);
  *(v118[0] + 32) = v53;
  MEMORY[0x1E69E5920](v54);
  v55 = [(AKDevice *)v119->_companionDevice copy];
  v56 = *(v118[0] + 12);
  *(v118[0] + 12) = v55;
  MEMORY[0x1E69E5920](v56);
  v57 = [(NSNumber *)v119->_isAppleIDLoginEnabled copy];
  v58 = *(v118[0] + 70);
  *(v118[0] + 70) = v57;
  MEMORY[0x1E69E5920](v58);
  v59 = [(NSNumber *)v119->_hasEmptyPassword copy];
  v60 = *(v118[0] + 71);
  *(v118[0] + 71) = v59;
  MEMORY[0x1E69E5920](v60);
  *(v118[0] + 159) = v119->_shouldRequestShortLivedToken;
  v61 = [(NSString *)v119->_shortLivedToken copy];
  v62 = *(v118[0] + 30);
  *(v118[0] + 30) = v61;
  MEMORY[0x1E69E5920](v62);
  v63 = [(NSString *)v119->_identityToken copy];
  v64 = *(v118[0] + 25);
  *(v118[0] + 25) = v63;
  MEMORY[0x1E69E5920](v64);
  *(v118[0] + 160) = v119->_shouldRequestConfigurationInfo;
  *(v118[0] + 144) = v119->_isTriggeredByNotification;
  v65 = [(NSString *)v119->_message copy];
  v66 = *(v118[0] + 31);
  *(v118[0] + 31) = v65;
  MEMORY[0x1E69E5920](v66);
  *(v118[0] + 162) = v119->_anticipateEscrowAttempt;
  *(v118[0] + 163) = v119->_isFirstTimeLogin;
  *(v118[0] + 161) = v119->_supportsPiggybacking;
  v67 = [(NSSet *)v119->_desiredInternalTokens copy];
  v68 = *(v118[0] + 72);
  *(v118[0] + 72) = v67;
  MEMORY[0x1E69E5920](v68);
  *(v118[0] + 164) = v119->_shouldSkipSettingsLaunchAlert;
  *(v118[0] + 124) = v119->_shouldSendIdentityTokenForRemoteUI;
  *(v118[0] + 158) = v119->_shouldRequestRecoveryPET;
  v69 = [(NSString *)v119->_title copy];
  v70 = *(v118[0] + 59);
  *(v118[0] + 59) = v69;
  MEMORY[0x1E69E5920](v70);
  v71 = [(NSString *)v119->_helpAnchor copy];
  v72 = *(v118[0] + 60);
  *(v118[0] + 60) = v71;
  MEMORY[0x1E69E5920](v72);
  v73 = [(NSString *)v119->_helpBook copy];
  v74 = *(v118[0] + 61);
  *(v118[0] + 61) = v73;
  MEMORY[0x1E69E5920](v74);
  v75 = [(AKAppleIDAuthenticationContext *)v119 _shouldSkipInitialReachabilityCheck];
  *(v118[0] + 127) = v75;
  *(v118[0] + 14) = v119->_attemptIndex;
  objc_storeStrong(v118[0] + 73, v119->_securityUpgradeContext);
  *(v118[0] + 37) = v119->_authenticationType;
  *(v118[0] + 125) = v119->_shouldSendGrandSlamTokensForRemoteUI;
  *(v118[0] + 147) = v119->_needsRepair;
  v76 = [(NSDictionary *)v119->_appProvidedData copy];
  v77 = *(v118[0] + 40);
  *(v118[0] + 40) = v76;
  MEMORY[0x1E69E5920](v77);
  objc_storeStrong(v118[0] + 41, v119->_appProvidedContext);
  v78 = [(NSString *)v119->_masterKey copy];
  v79 = *(v118[0] + 34);
  *(v118[0] + 34) = v78;
  MEMORY[0x1E69E5920](v79);
  *(v118[0] + 121) = v119->_performUIOutOfProcess;
  *(v118[0] + 122) = v119->_keepAlive;
  v80 = [(NSString *)v119->_cancelButtonString copy];
  v81 = *(v118[0] + 63);
  *(v118[0] + 63) = v80;
  MEMORY[0x1E69E5920](v81);
  v82 = [(NSString *)v119->_alternativeButtonString copy];
  v83 = *(v118[0] + 64);
  *(v118[0] + 64) = v82;
  MEMORY[0x1E69E5920](v83);
  *(v118[0] + 148) = v119->_hideAlternativeButton;
  *(v118[0] + 149) = v119->_hideCancelButton;
  *(v118[0] + 150) = v119->_hideReasonString;
  *(v118[0] + 151) = v119->_clientShouldHandleAlternativeButtonAction;
  v84 = [(NSString *)v119->_windowTitle copy];
  v85 = *(v118[0] + 65);
  *(v118[0] + 65) = v84;
  MEMORY[0x1E69E5920](v85);
  *(v118[0] + 152) = v119->_alwaysShowUsernameField;
  v86 = [(NSString *)v119->_privacyBundleIdentifier copy];
  v87 = *(v118[0] + 66);
  *(v118[0] + 66) = v86;
  MEMORY[0x1E69E5920](v87);
  *(v118[0] + 62) = v119->_authenticationPromptStyle;
  *(v118[0] + 74) = v119->_requestedNewAccountAgeRange;
  *(v118[0] + 38) = v119->_authenticationMode;
  *(v118[0] + 132) = v119->_isMDMInformationRequired;
  *(v118[0] + 133) = v119->_cliMode;
  objc_storeStrong(v118[0] + 42, v119->_passwordlessToken);
  objc_storeStrong(v118[0] + 43, v119->_idmsDataToken);
  *(v118[0] + 165) = v119->_needsSecurityUpgradeUI;
  *(v118[0] + 166) = v119->_isRKVerification;
  v88 = [(NSData *)v119->_displayImageData copy];
  v89 = *(v118[0] + 67);
  *(v118[0] + 67) = v88;
  MEMORY[0x1E69E5920](v89);
  *(v118[0] + 77) = v119->_verifyCredentialReason;
  v90 = [(NSString *)v119->_callerIconBundlePath copy];
  v91 = *(v118[0] + 79);
  *(v118[0] + 79) = v90;
  MEMORY[0x1E69E5920](v91);
  v92 = [(NSString *)v119->_localizedCallerName copy];
  v93 = *(v118[0] + 80);
  *(v118[0] + 80) = v92;
  MEMORY[0x1E69E5920](v93);
  v94 = [(NSString *)v119->_custodianRecoveryToken copy];
  v95 = *(v118[0] + 78);
  *(v118[0] + 78) = v94;
  MEMORY[0x1E69E5920](v95);
  *(v118[0] + 130) = v119->_forceEligibleForForegroundAuthentication;
  *(v118[0] + 154) = v119->_deviceRegionRequired;
  *(v118[0] + 153) = v119->_disableProximityAuth;
  v96 = [(AKAppleIDAuthenticationContext *)v119 _shouldBroadcastForProximityAuthOnly];
  *(v118[0] + 131) = v96;
  *(v118[0] + 168) = v119->_enablePasscodeAuth;
  *(v118[0] + 155) = v119->_passcodeOnlyPolicy;
  v97 = [(NSString *)v119->_sourceAltDSID copy];
  v98 = *(v118[0] + 83);
  *(v118[0] + 83) = v97;
  MEMORY[0x1E69E5920](v98);
  v99 = [(NSString *)v119->_serviceToken copy];
  v100 = *(v118[0] + 81);
  *(v118[0] + 81) = v99;
  MEMORY[0x1E69E5920](v100);
  *(v118[0] + 137) = v119->_isRequestedFromOOPViewService;
  *(v118[0] + 167) = v119->_biometricSkipPasscodeFallback;
  *(v118[0] + 134) = v119->_isNativeTakeover;
  *(v118[0] + 135) = v119->_ignorePasswordCache;
  *(v118[0] + 136) = v119->_ignoreShouldContinueProxy;
  v101 = [(NSString *)v119->_proxiedAppleID copy];
  v102 = *(v118[0] + 82);
  *(v118[0] + 82) = v101;
  MEMORY[0x1E69E5920](v102);
  v103 = [(AKCompanionKeyEnvelope *)v119->_companionKeyEnvelope copy];
  v104 = *(v118[0] + 46);
  *(v118[0] + 46) = v103;
  MEMORY[0x1E69E5920](v104);
  *(v118[0] + 138) = v119->_piggybackingForTrustedDevice;
  *(v118[0] + 169) = v119->_allowAuthenticationBeforeFirstUnlock;
  objc_storeStrong(v118[0] + 47, v119->_protoAccountContext);
  objc_storeStrong(v118[0] + 48, v119->_idmsData);
  v105 = [(AKAccountMigrationContext *)v119->_accountMigrationContext copy];
  v106 = *(v118[0] + 49);
  *(v118[0] + 49) = v105;
  MEMORY[0x1E69E5920](v106);
  v107 = [(NSString *)v119->_proxiedToken copy];
  v108 = *(v118[0] + 50);
  *(v118[0] + 50) = v107;
  MEMORY[0x1E69E5920](v108);
  v109 = [(AKAuthenticatableResource *)v119->_authenticatableResource copy];
  v110 = *(v118[0] + 51);
  *(v118[0] + 51) = v109;
  MEMORY[0x1E69E5920](v110);
  v112 = MEMORY[0x1E69E5928](v118[0]);
  objc_storeStrong(v118, 0);

  return v112;
}

- (void)_updateWithValuesFromContext:(id)a3
{
  v79 = *MEMORY[0x1E69E9840];
  v77 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v75 = _AKLogSystem();
  v74 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v78, v77, location[0]);
    _os_log_debug_impl(&dword_193225000, v75, v74, "%@ being updated by %@", v78, 0x16u);
  }

  objc_storeStrong(&v75, 0);
  if (location[0])
  {
    v3 = [*(location[0] + 52) copy];
    reason = v77->_reason;
    v77->_reason = v3;
    MEMORY[0x1E69E5920](reason);
    v5 = [*(location[0] + 22) copy];
    username = v77->_username;
    v77->_username = v5;
    MEMORY[0x1E69E5920](username);
    v77->_isUsernameEditable = *(location[0] + 139) & 1;
    v7 = [*(location[0] + 56) copy];
    DSID = v77->_DSID;
    v77->_DSID = v7;
    MEMORY[0x1E69E5920](DSID);
    v9 = [*(location[0] + 35) copy];
    altDSID = v77->_altDSID;
    v77->_altDSID = v9;
    MEMORY[0x1E69E5920](altDSID);
    v11 = [*(location[0] + 44) copy];
    telemetryDeviceSessionID = v77->_telemetryDeviceSessionID;
    v77->_telemetryDeviceSessionID = v11;
    MEMORY[0x1E69E5920](telemetryDeviceSessionID);
    v13 = [*(location[0] + 45) copy];
    telemetryFlowID = v77->_telemetryFlowID;
    v77->_telemetryFlowID = v13;
    MEMORY[0x1E69E5920](telemetryFlowID);
    objc_storeStrong(&v77->_dependentAltDSID, *(location[0] + 75));
    v15 = [*(location[0] + 55) copy];
    serviceIdentifiers = v77->_serviceIdentifiers;
    v77->_serviceIdentifiers = v15;
    MEMORY[0x1E69E5920](serviceIdentifiers);
    v77->_serviceType = *(location[0] + 36);
    v77->_maximumLoginAttempts = *(location[0] + 54);
    v77->_isEphemeral = *(location[0] + 145) & 1;
    v77->_shouldAllowAppleIDCreation = *(location[0] + 140) & 1;
    v77->_shouldPromptForPasswordOnly = *(location[0] + 156) & 1;
    v17 = [*(location[0] + 27) copy];
    passwordPromptTitle = v77->_passwordPromptTitle;
    v77->_passwordPromptTitle = v17;
    MEMORY[0x1E69E5920](passwordPromptTitle);
    v19 = [*(location[0] + 53) copy];
    defaultButtonString = v77->_defaultButtonString;
    v77->_defaultButtonString = v19;
    MEMORY[0x1E69E5920](defaultButtonString);
    v21 = [*(location[0] + 57) copy];
    httpHeadersForRemoteUI = v77->_httpHeadersForRemoteUI;
    v77->_httpHeadersForRemoteUI = v21;
    MEMORY[0x1E69E5920](httpHeadersForRemoteUI);
    v23 = [*(location[0] + 26) copy];
    remoteUIIdentityToken = v77->_remoteUIIdentityToken;
    v77->_remoteUIIdentityToken = v23;
    MEMORY[0x1E69E5920](remoteUIIdentityToken);
    v25 = [*(location[0] + 28) copy];
    password = v77->_password;
    v77->_password = v25;
    MEMORY[0x1E69E5920](password);
    v77->_shouldUpdatePersistentServiceTokens = *(location[0] + 157) & 1;
    v77->_shouldOfferSecurityUpgrade = *(location[0] + 146) & 1;
    v77->_shouldPreventInteractiveAuth = *(location[0] + 128) & 1;
    v27 = [*(location[0] + 1) copy];
    generatedCode = v77->_generatedCode;
    v77->_generatedCode = v27;
    MEMORY[0x1E69E5920](generatedCode);
    v77->_shouldForceInteractiveAuth = *(location[0] + 129) & 1;
    v29 = [*(location[0] + 33) copy];
    proxiedDeviceAnisetteData = v77->_proxiedDeviceAnisetteData;
    v77->_proxiedDeviceAnisetteData = v29;
    MEMORY[0x1E69E5920](proxiedDeviceAnisetteData);
    v31 = [*(location[0] + 11) copy];
    proxiedDevice = v77->_proxiedDevice;
    v77->_proxiedDevice = v31;
    MEMORY[0x1E69E5920](proxiedDevice);
    v33 = [*(location[0] + 32) copy];
    companionDeviceAnisetteData = v77->_companionDeviceAnisetteData;
    v77->_companionDeviceAnisetteData = v33;
    MEMORY[0x1E69E5920](companionDeviceAnisetteData);
    v35 = [*(location[0] + 12) copy];
    companionDevice = v77->_companionDevice;
    v77->_companionDevice = v35;
    MEMORY[0x1E69E5920](companionDevice);
    v77->_needsNewAppleID = *(location[0] + 142) & 1;
    v37 = [*(location[0] + 70) copy];
    isAppleIDLoginEnabled = v77->_isAppleIDLoginEnabled;
    v77->_isAppleIDLoginEnabled = v37;
    MEMORY[0x1E69E5920](isAppleIDLoginEnabled);
    v39 = [*(location[0] + 71) copy];
    hasEmptyPassword = v77->_hasEmptyPassword;
    v77->_hasEmptyPassword = v39;
    MEMORY[0x1E69E5920](hasEmptyPassword);
    v77->_shouldRequestShortLivedToken = *(location[0] + 159) & 1;
    v41 = [*(location[0] + 30) copy];
    shortLivedToken = v77->_shortLivedToken;
    v77->_shortLivedToken = v41;
    MEMORY[0x1E69E5920](shortLivedToken);
    v43 = [*(location[0] + 25) copy];
    identityToken = v77->_identityToken;
    v77->_identityToken = v43;
    MEMORY[0x1E69E5920](identityToken);
    v77->_shouldRequestConfigurationInfo = *(location[0] + 160) & 1;
    v77->_isTriggeredByNotification = *(location[0] + 144) & 1;
    v45 = [*(location[0] + 31) copy];
    message = v77->_message;
    v77->_message = v45;
    MEMORY[0x1E69E5920](message);
    v77->_anticipateEscrowAttempt = *(location[0] + 162) & 1;
    v77->_isFirstTimeLogin = *(location[0] + 163) & 1;
    v77->_supportsPiggybacking = *(location[0] + 161) & 1;
    v47 = [*(location[0] + 72) copy];
    desiredInternalTokens = v77->_desiredInternalTokens;
    v77->_desiredInternalTokens = v47;
    MEMORY[0x1E69E5920](desiredInternalTokens);
    v77->_shouldSkipSettingsLaunchAlert = *(location[0] + 164) & 1;
    v77->_shouldSendIdentityTokenForRemoteUI = *(location[0] + 124) & 1;
    v77->_shouldRequestRecoveryPET = *(location[0] + 158) & 1;
    objc_storeStrong(&v77->_title, *(location[0] + 59));
    objc_storeStrong(&v77->_helpAnchor, *(location[0] + 60));
    objc_storeStrong(&v77->_helpBook, *(location[0] + 61));
    v77->_attemptIndex = *(location[0] + 14);
    objc_storeStrong(&v77->_securityUpgradeContext, *(location[0] + 73));
    v77->_authenticationType = *(location[0] + 37);
    v77->_shouldSendGrandSlamTokensForRemoteUI = *(location[0] + 125) & 1;
    v77->_needsRepair = *(location[0] + 147) & 1;
    objc_storeStrong(&v77->_appProvidedData, *(location[0] + 40));
    objc_storeStrong(&v77->_appProvidedContext, *(location[0] + 41));
    v49 = [*(location[0] + 34) copy];
    masterKey = v77->_masterKey;
    v77->_masterKey = v49;
    MEMORY[0x1E69E5920](masterKey);
    v77->_keepAlive = *(location[0] + 122) & 1;
    v51 = [*(location[0] + 63) copy];
    cancelButtonString = v77->_cancelButtonString;
    v77->_cancelButtonString = v51;
    MEMORY[0x1E69E5920](cancelButtonString);
    v53 = [*(location[0] + 64) copy];
    alternativeButtonString = v77->_alternativeButtonString;
    v77->_alternativeButtonString = v53;
    MEMORY[0x1E69E5920](alternativeButtonString);
    v77->_hideAlternativeButton = *(location[0] + 148) & 1;
    v77->_hideCancelButton = *(location[0] + 149) & 1;
    v77->_hideReasonString = *(location[0] + 150) & 1;
    v77->_clientShouldHandleAlternativeButtonAction = *(location[0] + 151) & 1;
    v55 = [*(location[0] + 65) copy];
    windowTitle = v77->_windowTitle;
    v77->_windowTitle = v55;
    MEMORY[0x1E69E5920](windowTitle);
    v77->_alwaysShowUsernameField = *(location[0] + 152) & 1;
    objc_storeStrong(&v77->_privacyBundleIdentifier, *(location[0] + 66));
    v77->_authenticationPromptStyle = *(location[0] + 62);
    v77->_requestedNewAccountAgeRange = *(location[0] + 74);
    v77->_authenticationMode = *(location[0] + 38);
    v77->_isMDMInformationRequired = *(location[0] + 132) & 1;
    v77->_cliMode = *(location[0] + 133) & 1;
    objc_storeStrong(&v77->_passwordlessToken, *(location[0] + 42));
    objc_storeStrong(&v77->_idmsDataToken, *(location[0] + 43));
    v77->_needsSecurityUpgradeUI = *(location[0] + 165) & 1;
    v77->_isRKVerification = *(location[0] + 166) & 1;
    v57 = [*(location[0] + 67) copy];
    displayImageData = v77->_displayImageData;
    v77->_displayImageData = v57;
    MEMORY[0x1E69E5920](displayImageData);
    v77->_verifyCredentialReason = *(location[0] + 77);
    v59 = [*(location[0] + 79) copy];
    callerIconBundlePath = v77->_callerIconBundlePath;
    v77->_callerIconBundlePath = v59;
    MEMORY[0x1E69E5920](callerIconBundlePath);
    v61 = [*(location[0] + 80) copy];
    localizedCallerName = v77->_localizedCallerName;
    v77->_localizedCallerName = v61;
    MEMORY[0x1E69E5920](localizedCallerName);
    v63 = [*(location[0] + 78) copy];
    custodianRecoveryToken = v77->_custodianRecoveryToken;
    v77->_custodianRecoveryToken = v63;
    MEMORY[0x1E69E5920](custodianRecoveryToken);
    v77->_forceEligibleForForegroundAuthentication = *(location[0] + 130) & 1;
    v77->_deviceRegionRequired = *(location[0] + 154) & 1;
    v77->_disableProximityAuth = *(location[0] + 153) & 1;
    v77->_shouldBroadcastForProximityAuthOnly = *(location[0] + 131) & 1;
    v77->_enablePasscodeAuth = *(location[0] + 168) & 1;
    v77->_passcodeOnlyPolicy = *(location[0] + 155) & 1;
    objc_storeStrong(&v77->_sourceAltDSID, *(location[0] + 83));
    objc_storeStrong(&v77->_serviceToken, *(location[0] + 81));
    v77->_biometricSkipPasscodeFallback = *(location[0] + 167) & 1;
    v77->_isNativeTakeover = *(location[0] + 134) & 1;
    v77->_ignorePasswordCache = *(location[0] + 135) & 1;
    v77->_ignoreShouldContinueProxy = *(location[0] + 136) & 1;
    v77->_isRequestedFromOOPViewService = *(location[0] + 137) & 1;
    objc_storeStrong(&v77->_proxiedAppleID, *(location[0] + 82));
    objc_storeStrong(&v77->_companionKeyEnvelope, *(location[0] + 46));
    v77->_piggybackingForTrustedDevice = *(location[0] + 138) & 1;
    objc_storeStrong(&v77->_protoAccountContext, *(location[0] + 47));
    objc_storeStrong(&v77->_idmsData, *(location[0] + 48));
    v65 = [*(location[0] + 49) copy];
    accountMigrationContext = v77->_accountMigrationContext;
    v77->_accountMigrationContext = v65;
    MEMORY[0x1E69E5920](accountMigrationContext);
    v67 = [*(location[0] + 50) copy];
    proxiedToken = v77->_proxiedToken;
    v77->_proxiedToken = v67;
    MEMORY[0x1E69E5920](proxiedToken);
    objc_storeStrong(&v77->_authenticatableResource, *(location[0] + 51));
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
  v24 = [(AKAppleIDAuthenticationContext *)self _shouldSkipInitialReachabilityCheck];
  v25 = @"YES";
  if (!v24)
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
  v53 = [(AKProtoAccountContext *)self->_protoAccountContext givenName];
  v52 = [(AKAccountMigrationContext *)self->_accountMigrationContext pendingDOB];
  if (self->_proxiedToken)
  {
    v39 = @"YES";
  }

  else
  {
    v39 = @"NO";
  }

  v55 = [v85 stringWithFormat:@"<%@: %p {\n\tUUID: %@, \n\tusername: %@, \n\teditable-username: %@, \n\taltDSID: %@, \n\tDSID: %@, \n\tdependentAltDSID: %@, \n\tpassword: %@, \n\tservice-type: %ld, \n\tservice IDs: %@, \n\treason: %@\n\tephemeral: %@, \n\tpassword-only: %@, \n\tpasswordlessToken: %@, \n\tidmsDataToken: %@, \n\tauthentication-type: %@, \n\tauthenticationMode: %@, \n\tisMDMInfoRequired: %@, \n\tupdate-service-tokens: %@, \n\toffer-upgrade: %@, \n\toffer-upgrade-context: %@, \n\tproxying-for-app: %@, \n\tproxied-app-id: %@, \n\tproxied-device: %@, \n\tcompanion-device: %@\n\tmax-login-attempts: %@\n\tappleid-login-enabled: %@\n\thas-empty-password: %@\n\trequest-slt: %@\n\tshort-lived-token: %@\n\tidentity-token: %@\n\ttriggered-by-push: %@\n\tskip-alert: %@\n\tskip-reachability-check: %@\n\tattempt-index: %lu, \n\tmasterKey: %@, \n\tperformUIOutOfProcess: %@, \n\tbroadcastProximityAuthOnly: %@, \n\tVerifyCredentialReason: %@, \n\tEnablePasscodeAuth: %@, \n\tPasscodeOnlyPolicy: %@, \n\tSourceAltDSID: %@, \n\tServiceToken: %@, \n\tbiometricSkipPasscodeFallback: %@, \n\tisNativeTakeover: %@, \n\tignorePasswordCache: %@, \n\tisRequestedFromOOPViewService: %@, \n\tProxiedAppleID: %@, \n\ttelemetryDeviceSessionID: %@, \n\ttelemetryFlowID: %@, \n\tpiggybackingForTrustedDevice: %@, \n\tprotoAccountContextGivenName: %@, \n\taccountMigrationContextPendingDOB: %@, \n\tproxiedToken: %@, \n\tauthenticatableResource: %@, \n}>", v86, self, identifier, username, v89, altDSID, DSID, dependentAltDSID, v84, serviceType, serviceIdentifiers, reason, v82, v83, v78, v77, v63, v64, v65, v66, v67, securityUpgradeContext, v69, proxiedAppBundleID, proxiedDevice, companionDevice, v73, isAppleIDLoginEnabled, hasEmptyPassword, v76, v62, v61, v57, v58, v59, attemptIndex, v56, v28, v29, v32, v33, v41, sourceAltDSID, serviceToken, v44, v45, v46, v47, proxiedAppleID, telemetryDeviceSessionID, telemetryFlowID, v51, v53, v52, v39, self->_authenticatableResource];
  MEMORY[0x1E69E5920](v52);
  MEMORY[0x1E69E5920](v53);
  MEMORY[0x1E69E5920](v54);
  MEMORY[0x1E69E5920](v73);
  MEMORY[0x1E69E5920](v64);
  MEMORY[0x1E69E5920](v63);
  MEMORY[0x1E69E5920](v86);

  return v55;
}

- (BOOL)isContextEligibleForSilentAuthCoercion
{
  v3 = [(AKAppleIDAuthenticationContext *)self _proxiedAppName];
  v4 = [(NSString *)v3 hasPrefix:@"findmydeviced"];
  MEMORY[0x1E69E5920](v3);
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
  v36 = self;
  v35[1] = a2;
  v35[0] = +[AKAccountManager sharedInstance];
  v34 = [(AKAppleIDAuthenticationContext *)v36 authKitAccount:0];
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
  if ([(AKAppleIDAuthenticationContext *)v36 serviceType]!= 2 || (v33 & 1) != 0)
  {
    v12 = [(AKAppleIDAuthenticationContext *)v36 companionDevice];
    v24 = 0;
    v13 = 1;
    if (!v12)
    {
      v25 = [(AKAppleIDAuthenticationContext *)v36 proxiedDevice];
      v24 = 1;
      v13 = v25 != 0;
    }

    if (v24)
    {
      MEMORY[0x1E69E5920](v25);
    }

    MEMORY[0x1E69E5920](v12);
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
        v5 = [v9 isChildPasscodeEnabled];
        v6 = [(AKAppleIDAuthenticationContext *)v36 enablePasscodeAuth];
        v7 = [v35[0] isPasscodeAuthEnabledForAccount:v34];
        v8 = [v35[0] userUnderAgeForAccount:v34];
        __os_log_helper_16_0_5_4_0_4_0_4_0_4_0_4_0(v38, v5, v6, v7, v8, [(AKAppleIDAuthenticationContext *)v36 _isEligibleForPasscodeAuth]);
        _os_log_debug_impl(&dword_193225000, v20, OS_LOG_TYPE_DEBUG, "isContextEligibleForPasscodeAuth: {\n\tisChildPasscodeEnabled: %d, \n\tenablePasscodeAuth: %d, \n\tisPasscodeAuthEnabled: %d, \n\tuserUnderAge: %d, \n\tisEligibleForPasscodeAuth: %d, \n}", v38, 0x20u);
        MEMORY[0x1E69E5920](v9);
      }

      objc_storeStrong(&v20, 0);
      v3 = +[AKFeatureManager sharedManager];
      v4 = 0;
      if ([v3 isChildPasscodeEnabled])
      {
        v4 = 0;
        if ([(AKAppleIDAuthenticationContext *)v36 enablePasscodeAuth])
        {
          v4 = 0;
          if ([v35[0] isPasscodeAuthEnabledForAccount:v34])
          {
            v4 = 0;
            if ([v35[0] userUnderAgeForAccount:v34])
            {
              v4 = [(AKAppleIDAuthenticationContext *)v36 _isEligibleForPasscodeAuth];
            }
          }
        }
      }

      v37 = v4;
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
  v18 = self;
  v17[1] = a2;
  v16 = 0;
  v17[0] = [(AKAppleIDAuthenticationContext *)self serviceToken];
  MEMORY[0x1E69E5920](0);
  v9 = +[AKFeatureManager sharedManager];
  v10 = [v9 isPltUpgradeEnabled];
  MEMORY[0x1E69E5920](v9);
  if (v10)
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
    v2 = [(AKAppleIDAuthenticationContext *)v18 passwordlessToken];
    v3 = v16;
    v16 = v2;
    MEMORY[0x1E69E5920](v3);
  }

  v5 = [(AKAppleIDAuthenticationContext *)v18 _shortLivedToken];
  v11 = 0;
  v6 = 1;
  if (!v5)
  {
    v12 = [(AKAppleIDAuthenticationContext *)v18 _identityToken];
    v11 = 1;
    v6 = 1;
    if (!v12)
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
    MEMORY[0x1E69E5920](v12);
  }

  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(v17, 0);
  return v6;
}

- (void)isConfiguredForTokenUpgradeWithCompletion:(id)a3
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = [(AKAppleIDAuthenticationContext *)v19 serviceToken];
  MEMORY[0x1E69E5920](0);
  v4 = [(AKAppleIDAuthenticationContext *)v19 _shortLivedToken];
  v14 = 0;
  v5 = 1;
  if (!v4)
  {
    v15 = [(AKAppleIDAuthenticationContext *)v19 _identityToken];
    v14 = 1;
    v5 = 1;
    if (!v15)
    {
      v5 = v17 != 0;
    }
  }

  if (v14)
  {
    MEMORY[0x1E69E5920](v15);
  }

  MEMORY[0x1E69E5920](v4);
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
    v11 = MEMORY[0x1E69E5928](v19);
    v12 = MEMORY[0x1E69E5928](location[0]);
    [v3 configurationValueForKey:@"pltUpgradeEnabled" fromCache:1 completion:&v6];
    MEMORY[0x1E69E5920](v3);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v11, 0);
    v13 = 0;
  }

  objc_storeStrong(&v17, 0);
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
  v17 = self;
  v16 = a2;
  v15 = 1;
  v7 = +[AKAccountManager sharedInstance];
  v6 = [(AKAppleIDAuthenticationContext *)v17 authKitAccount:?];
  v2 = [(AKAccountManager *)v7 continuationTokenForAccount:?];
  v8 = v2 != 0;
  MEMORY[0x1E69E5920](v2);
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v7);
  v14 = v8;
  v10 = +[AKAccountManager sharedInstance];
  v9 = [(AKAppleIDAuthenticationContext *)v17 authKitAccount:0];
  v3 = [(AKAccountManager *)v10 passwordResetTokenForAccount:?];
  v11 = v3 != 0;
  MEMORY[0x1E69E5920](v3);
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v10);
  v13 = v11;
  location = _AKLogSystem();
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_7_4_0_8_0_4_0_4_0_4_0_4_0_4_0(v18, v15 & 1, [(AKAppleIDAuthenticationContext *)v17 authenticationType], [(AKAppleIDAuthenticationContext *)v17 shouldPromptForPasswordOnly], [(AKAppleIDAuthenticationContext *)v17 isEphemeral], [(AKAppleIDAuthenticationContext *)v17 isUsernameEditable], v14, v13);
    _os_log_debug_impl(&dword_193225000, location, OS_LOG_TYPE_DEBUG, "_isEligibleForPasscodeAuth: {\n\thasRequiredCapabilityForUIDisplay: %d, \n\tauthenticationType: %lu, \n\tshouldPromptForPasswordOnly: %d, \n\tisEphemeral: %d, \n\tisUsernameEditable: %d, \n\tvalidContinuationToken: %d, \n\tvalidPasswordResetToken: %d, \n}", v18, 0x30u);
  }

  objc_storeStrong(&location, 0);
  v5 = 0;
  if (v15)
  {
    v5 = 0;
    if ([(AKAppleIDAuthenticationContext *)v17 authenticationType]== 2)
    {
      v5 = 0;
      if (![(AKAppleIDAuthenticationContext *)v17 shouldPromptForPasswordOnly])
      {
        v5 = 0;
        if (![(AKAppleIDAuthenticationContext *)v17 isEphemeral])
        {
          v5 = 0;
          if (![(AKAppleIDAuthenticationContext *)v17 isUsernameEditable])
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
  v7 = self;
  v6[1] = a2;
  if (self->_isContextRequestingReauthForExistingService)
  {
    v8 = 1;
  }

  else
  {
    v6[0] = [(AKAppleIDAuthenticationContext *)v7 authKitAccount:0];
    if (!v6[0] || ((v3 = +[AKAccountManager sharedInstance](AKAccountManager, "sharedInstance"), location = -[AKAccountManager servicesUsingAccount:](v3, "servicesUsingAccount:", v6[0]), MEMORY[0x1E69E5920](v3), ![location count]) ? (v4 = 0) : (v7->_isContextRequestingReauthForExistingService = 1, v8 = 1, v4 = 1), objc_storeStrong(&location, 0), !v4))
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

- (void)setReason:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (![location[0] isEqualToString:v6->_reason])
  {
    v3 = [location[0] copy];
    reason = v6->_reason;
    v6->_reason = v3;
    MEMORY[0x1E69E5920](reason);
    objc_storeStrong(&v6->_interpolatedReason, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)setUsername:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (![location[0] isEqualToString:v6->_username])
  {
    v3 = [location[0] copy];
    username = v6->_username;
    v6->_username = v3;
    MEMORY[0x1E69E5920](username);
    objc_storeStrong(&v6->_interpolatedReason, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)_setPassword:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (![location[0] isEqualToString:v9->_password])
  {
    objc_storeStrong(&v9->_password, location[0]);
    if ([(NSString *)v9->_password length]>= 0xBE && [(NSString *)v9->_password hasSuffix:@"PET"])
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

+ (id)_identifierForContext:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x1E69E5928](location[0]);
    v8 = [v5 _identifier];
    v6 = 1;
    objc_storeStrong(&v5, 0);
  }

  else
  {
    v8 = 0;
    v6 = 1;
  }

  objc_storeStrong(location, 0);
  v3 = v8;

  return v3;
}

- (void)setRequestedNewAccountAgeRange:(unint64_t)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = self;
  v5 = a2;
  v4 = a3;
  self->_requestedNewAccountAgeRange = a3;
  if (v4)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_8_0(v7, v4);
      _os_log_debug_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEBUG, "Requested new account age range set: %lu, configuring for new Apple Account", v7, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v6->_needsNewAppleID = 1;
  }

  *MEMORY[0x1E69E9840];
}

- (void)setShouldPreventInteractiveAuth:(BOOL)a3
{
  self->_shouldPreventInteractiveAuth = a3;
  if (a3)
  {
    self->_authenticationType = 1;
  }

  else if (self->_authenticationType == 1)
  {
    self->_authenticationType = 0;
  }
}

- (void)setShouldForceInteractiveAuth:(BOOL)a3
{
  self->_shouldForceInteractiveAuth = a3;
  if (a3)
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
  v20 = self;
  v19 = a2;
  v2 = [(NSString *)self->_interpolatedReason length];
  v17 = 0;
  v12 = 0;
  if (!v2)
  {
    v18 = [(AKAppleIDAuthenticationContext *)v20 reason];
    v17 = 1;
    v12 = [(NSString *)v18 length]!= 0;
  }

  if (v17)
  {
    MEMORY[0x1E69E5920](v18);
  }

  if (v12)
  {
    v3 = [(AKAppleIDAuthenticationContext *)v20 reason];
    interpolatedReason = v20->_interpolatedReason;
    v20->_interpolatedReason = v3;
    MEMORY[0x1E69E5920](interpolatedReason);
    v11 = [(AKAppleIDAuthenticationContext *)v20 username];
    v16 = [AKUsernameFormatter formattedUsernameFromUsername:?];
    MEMORY[0x1E69E5920](v11);
    if ([v16 length])
    {
      v5 = [(NSString *)v20->_interpolatedReason stringByReplacingOccurrencesOfString:@"%username%" withString:v16];
      v6 = v20->_interpolatedReason;
      v20->_interpolatedReason = v5;
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

  v7 = v20->_interpolatedReason;

  return v7;
}

- (NSString)_interpolatedReasonWithBlame
{
  v17 = self;
  v16 = a2;
  *&v15[1] = [(AKAppleIDAuthenticationContext *)self _interpolatedReason];
  isUsernameEditable = 1;
  if (v17->_username)
  {
    isUsernameEditable = v17->_isUsernameEditable;
  }

  if (!*&v15[1])
  {
    *v15 = isUsernameEditable & 1;
    if ((v15[0] & 1) == 0)
    {
      v12 = +[AKDevice currentDevice];
      v13 = [v12 isMultiUserMode];
      MEMORY[0x1E69E5920](v12);
      if (v13)
      {
        v2 = AKSharedDevicePasscodePromptAlertMessageWithServiceType(v17->_serviceType);
        v3 = *&v15[1];
        *&v15[1] = v2;
        MEMORY[0x1E69E5920](v3);
      }

      else
      {
        v8 = MEMORY[0x1E696AEC0];
        v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
        v10 = [v11 localizedStringForKey:@"INLINE_PASSWORD_ALERT_MESSAGE_REBRAND" value:&stru_1F0781300 table:@"Localizable"];
        v9 = [AKUsernameFormatter formattedUsernameFromUsername:v17->_username];
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

  v7 = [(AKAppleIDAuthenticationContext *)v17 _appendBlameIfRequiredTo:*&v15[1]];
  objc_storeStrong(&v15[1], 0);

  return v7;
}

- (id)_appendBlameIfRequiredTo:(id)a3
{
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v23 = +[AKDevice currentDevice];
    v24 = [v23 isInternalBuild];
    MEMORY[0x1E69E5920](v23);
    if (v24)
    {
      v26 = 0;
      v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:getprogname()];
      v22 = [(AKAppleIDAuthenticationContext *)v29 _proxiedAppName];
      MEMORY[0x1E69E5920](v22);
      if (v22)
      {
        v18 = MEMORY[0x1E696AEC0];
        v21 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
        v20 = [v21 localizedStringForKey:@"PASSWORD_ALERT_MESSAGE_PROXY_INTERNAL_BLAME" value:&stru_1F0781300 table:@"Localizable"];
        v19 = [(AKAppleIDAuthenticationContext *)v29 _proxiedAppName];
        v3 = [v18 stringWithFormat:v20, v19, v25];
        v4 = v26;
        v26 = v3;
        MEMORY[0x1E69E5920](v4);
        MEMORY[0x1E69E5920](v19);
        MEMORY[0x1E69E5920](v20);
        MEMORY[0x1E69E5920](v21);
      }

      else if ([(AKAppleIDAuthenticationContext *)v29 serviceType])
      {
        v14 = MEMORY[0x1E696AEC0];
        v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
        v16 = [v17 localizedStringForKey:@"PASSWORD_ALERT_MESSAGE_SERVICE_TYPE_INTERNAL_BLAME" value:&stru_1F0781300 table:@"Localizable"];
        v15 = AKStringFromServiceType([(AKAppleIDAuthenticationContext *)v29 serviceType]);
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
  v3 = [(AKAppleIDAuthenticationContext *)self serviceIdentifiers];
  v4 = [(NSArray *)v3 firstObject];
  MEMORY[0x1E69E5920](v3);

  return v4;
}

- (void)setServiceIdentifier:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v3 = v6;
    v7[0] = location[0];
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [(AKAppleIDAuthenticationContext *)v3 setServiceIdentifiers:?];
    MEMORY[0x1E69E5920](v4);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)setProxiedDevice:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v4->_proxiedDevice, location[0]);
  objc_storeStrong(location, 0);
}

- (void)setCompanionDevice:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v4->_companionDevice, location[0]);
  objc_storeStrong(location, 0);
}

- (void)presentBasicLoginUIWithCompletion:(id)a3
{
  v82[2] = *MEMORY[0x1E69E9840];
  v78 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  isUsernameEditable = 1;
  if (v78->_username)
  {
    isUsernameEditable = v78->_isUsernameEditable;
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

  v69 = MEMORY[0x1E69E5928](v78->_passwordPromptTitle);
  if (!v69)
  {
    v69 = AKSignInStringFromServiceType(v78->_serviceType);
    MEMORY[0x1E69E5920](0);
  }

  v68 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v67 = MEMORY[0x1E69E5928](v78->_defaultButtonString);
  if (!v67)
  {
    v41 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
    v67 = [v41 localizedStringForKey:@"INLINE_PASSWORD_ALERT_OK_BUTTON" value:&stru_1F0781300 table:@"Localizable"];
    MEMORY[0x1E69E5920](0);
    MEMORY[0x1E69E5920](v41);
  }

  v39 = +[AKAlertHandler sharedInstance];
  v38 = [(AKAppleIDAuthenticationContext *)v78 _interpolatedReasonWithBlame];
  v37 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
  v36 = [v37 localizedStringForKey:@"INLINE_PASSWORD_ALERT_CANCEL_BUTTON" value:&stru_1F0781300 table:@"Localizable"];
  v3 = [(AKAlertHandler *)v39 notificationDictionaryWithTitle:v69 message:v38 defaultButton:v67 alternateButton:?];
  v4 = v68;
  v68 = v3;
  MEMORY[0x1E69E5920](v4);
  MEMORY[0x1E69E5920](v36);
  MEMORY[0x1E69E5920](v37);
  MEMORY[0x1E69E5920](v38);
  MEMORY[0x1E69E5920](v39);
  v40 = [(AKAppleIDAuthenticationContext *)v78 username];
  MEMORY[0x1E69E5920](v40);
  if (v40)
  {
    v66 = 0;
    v65 = 0;
    v34 = +[AKDevice currentDevice];
    v35 = [v34 isMultiUserMode];
    MEMORY[0x1E69E5920](v34);
    if (v35)
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
    if (v78->_username)
    {
      username = v78->_username;
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
        objc_storeStrong(&v48, v78->_username);
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
  v13 = self;
  location[1] = a2;
  v7 = [(AKAppleIDAuthenticationContext *)self username];
  MEMORY[0x1E69E5920](v7);
  if (!v7)
  {
    goto LABEL_11;
  }

  location[0] = [(AKAppleIDAuthenticationContext *)v13 authKitAccount:0];
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
      v3 = [(AKAppleIDAuthenticationContext *)v13 username];
      __os_log_helper_16_2_1_8_64(v15, v3);
      _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "Determined that we should show password field for username: %@", v15, 0xCu);
      MEMORY[0x1E69E5920](v3);
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

- (void)dismissBasicLoginUIWithCompletion:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  (*(location[0] + 2))(location[0], 1, 0);
  objc_storeStrong(location, 0);
}

- (void)presentLoginAlertWithError:(id)a3 title:(id)a4 message:(id)a5 completion:(id)a6
{
  v47 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v45 = 0;
  objc_storeStrong(&v45, a4);
  v44 = 0;
  objc_storeStrong(&v44, a5);
  v43 = 0;
  objc_storeStrong(&v43, a6);
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
  v36 = MEMORY[0x1E69E5928](v47);
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

- (void)presentSecondFactorUIWithCompletion:(id)a3
{
  v26[1] = *MEMORY[0x1E69E9840];
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  v11 = [v12 resourceURL];
  v6 = *MEMORY[0x1E695EE90];
  [v23 setObject:? forKeyedSubscript:?];
  MEMORY[0x1E69E5920](v11);
  MEMORY[0x1E69E5920](v12);
  v22 = [MEMORY[0x1E696ABE0] extensionItemWithAppleIDAuthenticationContext:v25];
  v13 = MEMORY[0x1E696ACC8];
  v26[0] = v22;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v21 = [v13 archivedDataWithRootObject:? requiringSecureCoding:? error:?];
  MEMORY[0x1E69E5920](v14);
  [v23 setObject:@"com.apple.AuthKitUI.AKSecondFactorEntryAlert" forKeyedSubscript:*MEMORY[0x1E69D44F0]];
  [v23 setObject:v21 forKeyedSubscript:*MEMORY[0x1E69D44F8]];
  [v23 setObject:v15 forKeyedSubscript:*MEMORY[0x1E69D44D0]];
  queue = [(AKAppleIDAuthenticationContext *)v25 _secondFactorQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __70__AKAppleIDAuthenticationContext_presentSecondFactorUIWithCompletion___block_invoke;
  v17[3] = &unk_1E73D86E0;
  v18 = MEMORY[0x1E69E5928](v25);
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

- (void)dismissSecondFactorUIWithCompletion:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  queue = [(AKAppleIDAuthenticationContext *)v12 _secondFactorQueue];
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __70__AKAppleIDAuthenticationContext_dismissSecondFactorUIWithCompletion___block_invoke;
  v8 = &unk_1E73D6318;
  v9 = MEMORY[0x1E69E5928](v12);
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

- (void)presentSecondFactorAlertWithError:(id)a3 title:(id)a4 message:(id)a5 completion:(id)a6
{
  v38 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v36 = 0;
  objc_storeStrong(&v36, a4);
  v35 = 0;
  objc_storeStrong(&v35, a5);
  v34 = 0;
  objc_storeStrong(&v34, a6);
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
  v30 = MEMORY[0x1E69E5928](v38);
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
  v8 = self;
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
  CFNotificationCenterAddObserver(DarwinNotifyCenter, v8, __AKAppleIDLoginCodeWasEntered, @"com.apple.ak.code.entered", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_stopListeningForSecondFactorCodeEntryNotification
{
  v8 = self;
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
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, v8, @"com.apple.ak.code.entered", 0);
}

- (void)_handleSecondFactorCodeEntry
{
  v9 = self;
  v8[1] = a2;
  queue = [(AKAppleIDAuthenticationContext *)self _secondFactorQueue];
  v3 = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = __62__AKAppleIDAuthenticationContext__handleSecondFactorCodeEntry__block_invoke;
  v7 = &unk_1E73D34C0;
  v8[0] = MEMORY[0x1E69E5928](v9);
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

- (void)presentBiometricOrPasscodeValidationForAppleID:(id)a3 completion:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v5 = v7;
  v6 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7027];
  v5[2](v5, 0);
  MEMORY[0x1E69E5920](v6);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)setGeneratedCode:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v6->_generatedCode != location[0])
  {
    v3 = [location[0] copy];
    generatedCode = v6->_generatedCode;
    v6->_generatedCode = v3;
    MEMORY[0x1E69E5920](generatedCode);
  }

  objc_storeStrong(location, 0);
}

- (void)setLatitude:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v6->_latitude != location[0])
  {
    v3 = [location[0] copy];
    latitude = v6->_latitude;
    v6->_latitude = v3;
    MEMORY[0x1E69E5920](latitude);
  }

  objc_storeStrong(location, 0);
}

- (void)setLongitude:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v6->_longitude != location[0])
  {
    v3 = [location[0] copy];
    longitude = v6->_longitude;
    v6->_longitude = v3;
    MEMORY[0x1E69E5920](longitude);
  }

  objc_storeStrong(location, 0);
}

- (void)setDeviceClass:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  deviceClass = v6->_deviceClass;
  v6->_deviceClass = v3;
  MEMORY[0x1E69E5920](deviceClass);
  objc_storeStrong(location, 0);
}

- (void)setDeviceColor:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  deviceColor = v6->_deviceColor;
  v6->_deviceColor = v3;
  MEMORY[0x1E69E5920](deviceColor);
  objc_storeStrong(location, 0);
}

- (void)setDeviceEnclosureColor:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  deviceEnclosureColor = v6->_deviceEnclosureColor;
  v6->_deviceEnclosureColor = v3;
  MEMORY[0x1E69E5920](deviceEnclosureColor);
  objc_storeStrong(location, 0);
}

- (void)setNotificationDisclaimer:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  notificationDisclaimer = v6->_notificationDisclaimer;
  v6->_notificationDisclaimer = v3;
  MEMORY[0x1E69E5920](notificationDisclaimer);
  objc_storeStrong(location, 0);
}

@end