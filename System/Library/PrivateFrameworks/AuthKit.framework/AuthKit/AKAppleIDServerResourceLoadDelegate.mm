@interface AKAppleIDServerResourceLoadDelegate
+ (id)sharedController;
+ (unint64_t)signalFromServerResponse:(id)response;
- (AKAppleIDServerResourceLoadDelegate)initWithAltDSID:(id)d identityToken:(id)token;
- (AKAppleIDServerResourceLoadDelegate)initWithCoder:(id)coder;
- (BOOL)_isOTCliqueStatusIn;
- (BOOL)_isResponseSuccessful:(id)successful;
- (BOOL)isAuthenticationRequired:(id)required;
- (BOOL)isResponseActionable:(id)actionable;
- (BOOL)isResponseCompleteAndConflict:(id)conflict;
- (BOOL)isResponseFinal:(id)final;
- (BOOL)isResponseFinalForHSA2ServerFlow:(id)flow;
- (id)_accountDSID;
- (id)_fetchApplicationNameForBundleId:(id)id;
- (id)_proxiedProvisioningController;
- (id)_retrieveContinuationHeaders;
- (id)signingController;
- (void)_harvestContinuationHeadersFromHeaders:(id)headers;
- (void)_signRequest:(id)request;
- (void)_signRequestWithBAAHeaders:(id)headers;
- (void)_signRequestWithServerBackoffInfoHeader:(id)header;
- (void)_signWithFeatureOptInHeaders:(id)headers;
- (void)_signWithProxiedDeviceHeaders:(id)headers;
- (void)decorateWithCircleRequestContext:(id)context;
- (void)decorateWithContext:(id)context;
- (void)decorateWithPrivateEmailContext:(id)context;
- (void)encodeWithCoder:(id)coder;
- (void)processResponse:(id)response;
- (void)signRequest:(id)request;
- (void)signRequest:(id)request withCompletionHandler:(id)handler;
- (void)signRequestWithBasicHeaders:(id)headers;
- (void)signRequestWithCommonHeaders:(id)headers;
- (void)updateWithAuthResults:(id)results;
@end

@implementation AKAppleIDServerResourceLoadDelegate

+ (id)sharedController
{
  v5 = &sharedController_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_26);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedController_controller;

  return v2;
}

uint64_t __55__AKAppleIDServerResourceLoadDelegate_sharedController__block_invoke()
{
  v0 = objc_alloc_init(AKAppleIDAuthenticationController);
  v1 = sharedController_controller;
  sharedController_controller = v0;
  return MEMORY[0x1E69E5920](v1);
}

- (AKAppleIDServerResourceLoadDelegate)initWithCoder:(id)coder
{
  v138 = &selfCopy;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v139.receiver = v3;
  v139.super_class = AKAppleIDServerResourceLoadDelegate;
  selfCopy = [(AKAppleIDServerResourceLoadDelegate *)&v139 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v94 = location[0];
    v136 = 0x1E696A000uLL;
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = selfCopy->_altDSID;
    selfCopy->_altDSID = v4;
    MEMORY[0x1E69E5920](altDSID);
    v95 = location[0];
    v6 = *(v136 + 3776);
    v7 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_identityToken"];
    identityToken = selfCopy->_identityToken;
    selfCopy->_identityToken = v7;
    MEMORY[0x1E69E5920](identityToken);
    v96 = location[0];
    v9 = *(v136 + 3776);
    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_heartbeatToken"];
    heartbeatToken = selfCopy->_heartbeatToken;
    selfCopy->_heartbeatToken = v10;
    MEMORY[0x1E69E5920](heartbeatToken);
    v97 = location[0];
    v123 = 0x1E696A000uLL;
    v98 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_shouldSendSigningHeaders"];
    bOOLValue = [v98 BOOLValue];
    v13 = v98;
    selfCopy->_shouldSendSigningHeaders = bOOLValue;
    MEMORY[0x1E69E5920](v13);
    v99 = location[0];
    v14 = *(v123 + 3480);
    v100 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_shouldSendEphemeralAuthHeader"];
    bOOLValue2 = [v100 BOOLValue];
    v16 = v100;
    selfCopy->_shouldSendEphemeralAuthHeader = bOOLValue2;
    MEMORY[0x1E69E5920](v16);
    v101 = location[0];
    v17 = *(v123 + 3480);
    v102 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_serviceType"];
    integerValue = [v102 integerValue];
    v19 = v102;
    selfCopy->_serviceType = integerValue;
    MEMORY[0x1E69E5920](v19);
    v103 = location[0];
    v20 = *(v136 + 3776);
    v21 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_continuationToken"];
    continuationToken = selfCopy->_continuationToken;
    selfCopy->_continuationToken = v21;
    MEMORY[0x1E69E5920](continuationToken);
    v104 = location[0];
    v23 = *(v136 + 3776);
    v24 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_passwordResetToken"];
    passwordResetToken = selfCopy->_passwordResetToken;
    selfCopy->_passwordResetToken = v24;
    MEMORY[0x1E69E5920](passwordResetToken);
    v105 = location[0];
    v26 = *(v136 + 3776);
    v27 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_serviceToken"];
    serviceToken = selfCopy->_serviceToken;
    selfCopy->_serviceToken = v27;
    MEMORY[0x1E69E5920](serviceToken);
    v106 = location[0];
    v29 = *(v136 + 3776);
    v30 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_serviceTokenIdentifier"];
    serviceTokenIdentifier = selfCopy->_serviceTokenIdentifier;
    selfCopy->_serviceTokenIdentifier = v30;
    MEMORY[0x1E69E5920](serviceTokenIdentifier);
    v107 = location[0];
    v32 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_proxiedDeviceAnisetteData"];
    proxiedDeviceAnisetteData = selfCopy->_proxiedDeviceAnisetteData;
    selfCopy->_proxiedDeviceAnisetteData = v32;
    MEMORY[0x1E69E5920](proxiedDeviceAnisetteData);
    v108 = location[0];
    v34 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_proxiedDevice"];
    proxiedDevice = selfCopy->_proxiedDevice;
    selfCopy->_proxiedDevice = v34;
    MEMORY[0x1E69E5920](proxiedDevice);
    v109 = location[0];
    v36 = *(v136 + 3776);
    v37 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_proxyAppName"];
    proxyAppName = selfCopy->_proxyAppName;
    selfCopy->_proxyAppName = v37;
    MEMORY[0x1E69E5920](proxyAppName);
    v110 = location[0];
    v39 = *(v136 + 3776);
    v40 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_clientAppName"];
    clientAppName = selfCopy->_clientAppName;
    selfCopy->_clientAppName = v40;
    MEMORY[0x1E69E5920](clientAppName);
    v111 = location[0];
    v42 = *(v136 + 3776);
    v43 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_clientBundleID"];
    clientBundleID = selfCopy->_clientBundleID;
    selfCopy->_clientBundleID = v43;
    MEMORY[0x1E69E5920](clientBundleID);
    v112 = location[0];
    v45 = *(v123 + 3480);
    v113 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_shouldSendLocalUserHasAppleIDLoginHeader"];
    bOOLValue3 = [v113 BOOLValue];
    v47 = v113;
    selfCopy->_shouldSendLocalUserHasAppleIDLoginHeader = bOOLValue3;
    MEMORY[0x1E69E5920](v47);
    v48 = [location[0] decodeBoolForKey:@"_shouldSendICSCIntentHeader"];
    selfCopy->_shouldSendICSCIntentHeader = v48;
    v116 = location[0];
    v121 = 0x1E695D000uLL;
    v115 = MEMORY[0x1E695DFD8];
    v122 = 0x1E695D000uLL;
    v114 = objc_opt_class();
    v49 = *(v136 + 3776);
    v117 = [v115 setWithObjects:{v114, objc_opt_class(), 0}];
    v50 = [v116 decodeObjectOfClasses:? forKey:?];
    loggedInServices = selfCopy->_loggedInServices;
    selfCopy->_loggedInServices = v50;
    MEMORY[0x1E69E5920](loggedInServices);
    MEMORY[0x1E69E5920](v117);
    v118 = location[0];
    v52 = *(v123 + 3480);
    v53 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_hasEmptyPasswordOverride"];
    hasEmptyPasswordOverride = selfCopy->_hasEmptyPasswordOverride;
    selfCopy->_hasEmptyPasswordOverride = v53;
    MEMORY[0x1E69E5920](hasEmptyPasswordOverride);
    v119 = location[0];
    v55 = *(v136 + 3776);
    v56 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_securityUpgradeContext"];
    securityUpgradeContext = selfCopy->_securityUpgradeContext;
    selfCopy->_securityUpgradeContext = v56;
    MEMORY[0x1E69E5920](securityUpgradeContext);
    v58 = [location[0] decodeBoolForKey:@"_shouldOfferSecurityUpgrade"];
    selfCopy->_shouldOfferSecurityUpgrade = v58;
    v59 = [location[0] decodeBoolForKey:@"_shouldSendPhoneNumber"];
    v60 = v136;
    selfCopy->_shouldSendPhoneNumber = v59;
    v120 = location[0];
    v61 = *(v60 + 3776);
    v62 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_phoneNumberCertificate"];
    phoneNumberCertificate = selfCopy->_phoneNumberCertificate;
    selfCopy->_phoneNumberCertificate = v62;
    MEMORY[0x1E69E5920](phoneNumberCertificate);
    v128 = location[0];
    v127 = *(v121 + 4056);
    v64 = *(v122 + 3784);
    v126 = objc_opt_class();
    v124 = objc_opt_class();
    v65 = *(v136 + 3776);
    v125 = objc_opt_class();
    v66 = *(v123 + 3480);
    v129 = [v127 setWithObjects:{v126, v124, v125, objc_opt_class(), 0}];
    v67 = [v128 decodeObjectOfClasses:? forKey:?];
    phoneInformation = selfCopy->_phoneInformation;
    selfCopy->_phoneInformation = v67;
    MEMORY[0x1E69E5920](phoneInformation);
    MEMORY[0x1E69E5920](v129);
    v130 = location[0];
    v69 = *(v136 + 3776);
    v70 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_followupItems"];
    followupItems = selfCopy->_followupItems;
    selfCopy->_followupItems = v70;
    MEMORY[0x1E69E5920](followupItems);
    v131 = location[0];
    v72 = *(v136 + 3776);
    v73 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_appProvidedContext"];
    appProvidedContext = selfCopy->_appProvidedContext;
    selfCopy->_appProvidedContext = v73;
    MEMORY[0x1E69E5920](appProvidedContext);
    v132 = location[0];
    v75 = *(v136 + 3776);
    v76 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_proxiedAltDSID"];
    proxiedAltDSID = selfCopy->_proxiedAltDSID;
    selfCopy->_proxiedAltDSID = v76;
    MEMORY[0x1E69E5920](proxiedAltDSID);
    v133 = location[0];
    v78 = *(v136 + 3776);
    v79 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_proxiedIdentityToken"];
    proxiedIdentityToken = selfCopy->_proxiedIdentityToken;
    selfCopy->_proxiedIdentityToken = v79;
    MEMORY[0x1E69E5920](proxiedIdentityToken);
    v134 = location[0];
    v81 = *(v136 + 3776);
    v82 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_custodianRecoveryToken"];
    custodianRecoveryToken = selfCopy->_custodianRecoveryToken;
    selfCopy->_custodianRecoveryToken = v82;
    MEMORY[0x1E69E5920](custodianRecoveryToken);
    v135 = location[0];
    v84 = *(v136 + 3776);
    v85 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_telemetryDeviceSessionID"];
    telemetryDeviceSessionID = selfCopy->_telemetryDeviceSessionID;
    selfCopy->_telemetryDeviceSessionID = v85;
    MEMORY[0x1E69E5920](telemetryDeviceSessionID);
    v137 = location[0];
    v87 = *(v136 + 3776);
    v88 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_telemetryFlowID"];
    telemetryFlowID = selfCopy->_telemetryFlowID;
    selfCopy->_telemetryFlowID = v88;
    MEMORY[0x1E69E5920](telemetryFlowID);
  }

  v91 = &selfCopy;
  v93 = MEMORY[0x1E69E5928](selfCopy);
  obj = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(v91, obj);
  return v93;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_altDSID forKey:@"_altDSID"];
  [location[0] encodeObject:selfCopy->_identityToken forKey:@"_identityToken"];
  [location[0] encodeObject:selfCopy->_heartbeatToken forKey:@"_heartbeatToken"];
  v3 = location[0];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:selfCopy->_shouldSendSigningHeaders];
  [v3 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  v5 = location[0];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:selfCopy->_shouldSendEphemeralAuthHeader];
  [v5 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v6);
  v7 = location[0];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:selfCopy->_serviceType];
  [v7 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v8);
  [location[0] encodeObject:selfCopy->_passwordResetToken forKey:@"_passwordResetToken"];
  [location[0] encodeObject:selfCopy->_continuationToken forKey:@"_continuationToken"];
  [location[0] encodeObject:selfCopy->_serviceToken forKey:@"_serviceToken"];
  [location[0] encodeObject:selfCopy->_serviceTokenIdentifier forKey:@"_serviceTokenIdentifier"];
  [location[0] encodeObject:selfCopy->_proxiedDevice forKey:@"_proxiedDevice"];
  [location[0] encodeObject:selfCopy->_proxiedDeviceAnisetteData forKey:@"_proxiedDeviceAnisetteData"];
  [location[0] encodeObject:selfCopy->_proxyAppName forKey:@"_proxyAppName"];
  [location[0] encodeObject:selfCopy->_clientAppName forKey:@"_clientAppName"];
  [location[0] encodeObject:selfCopy->_clientBundleID forKey:@"_clientBundleID"];
  v9 = location[0];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:selfCopy->_shouldSendLocalUserHasAppleIDLoginHeader];
  [v9 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v10);
  [location[0] encodeBool:selfCopy->_shouldSendICSCIntentHeader forKey:@"_shouldSendICSCIntentHeader"];
  [location[0] encodeObject:selfCopy->_loggedInServices forKey:@"_loggedInServices"];
  [location[0] encodeObject:selfCopy->_hasEmptyPasswordOverride forKey:@"_hasEmptyPasswordOverride"];
  [location[0] encodeObject:selfCopy->_securityUpgradeContext forKey:@"_securityUpgradeContext"];
  [location[0] encodeBool:selfCopy->_shouldOfferSecurityUpgrade forKey:@"_shouldOfferSecurityUpgrade"];
  [location[0] encodeBool:selfCopy->_shouldSendPhoneNumber forKey:@"_shouldSendPhoneNumber"];
  [location[0] encodeObject:selfCopy->_phoneNumberCertificate forKey:@"_phoneNumberCertificate"];
  [location[0] encodeObject:selfCopy->_phoneInformation forKey:@"_phoneInformation"];
  [location[0] encodeObject:selfCopy->_followupItems forKey:@"_followupItems"];
  [location[0] encodeObject:selfCopy->_appProvidedContext forKey:@"_appProvidedContext"];
  [location[0] encodeObject:selfCopy->_proxiedAltDSID forKey:@"_proxiedAltDSID"];
  [location[0] encodeObject:selfCopy->_proxiedIdentityToken forKey:@"_proxiedIdentityToken"];
  [location[0] encodeObject:selfCopy->_custodianRecoveryToken forKey:@"_custodianRecoveryToken"];
  [location[0] encodeObject:selfCopy->_telemetryDeviceSessionID forKey:@"_telemetryDeviceSessionID"];
  [location[0] encodeObject:selfCopy->_telemetryFlowID forKey:@"_telemetryFlowID"];
  objc_storeStrong(location, 0);
}

- (AKAppleIDServerResourceLoadDelegate)initWithAltDSID:(id)d identityToken:(id)token
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v15 = 0;
  objc_storeStrong(&v15, token);
  v4 = selfCopy;
  selfCopy = 0;
  v14.receiver = v4;
  v14.super_class = AKAppleIDServerResourceLoadDelegate;
  selfCopy = [(AKAppleIDServerResourceLoadDelegate *)&v14 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v5 = [location[0] copy];
    altDSID = selfCopy->_altDSID;
    selfCopy->_altDSID = v5;
    MEMORY[0x1E69E5920](altDSID);
    v7 = [v15 copy];
    identityToken = selfCopy->_identityToken;
    selfCopy->_identityToken = v7;
    MEMORY[0x1E69E5920](identityToken);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    continuationHeaders = selfCopy->_continuationHeaders;
    selfCopy->_continuationHeaders = dictionary;
    MEMORY[0x1E69E5920](continuationHeaders);
  }

  v12 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v12;
}

- (void)signRequest:(id)request
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v16 = _AKLogSystem();
  v15 = 16;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    log = v16;
    type = v15;
    __os_log_helper_16_0_0(v14);
    _os_log_error_impl(&dword_193225000, log, type, "Current process is requesting signing synchronously, this is an error, please do not do this!", v14, 2u);
  }

  objc_storeStrong(&v16, 0);
  v13 = dispatch_semaphore_create(0);
  v4 = selfCopy;
  v3 = location[0];
  v7 = MEMORY[0x1E69E9820];
  v8 = -1073741824;
  v9 = 0;
  v10 = __51__AKAppleIDServerResourceLoadDelegate_signRequest___block_invoke;
  v11 = &unk_1E73D6FF0;
  v12 = MEMORY[0x1E69E5928](v13);
  [(AKAppleIDServerResourceLoadDelegate *)v4 signRequest:v3 withCompletionHandler:&v7];
  dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void __51__AKAppleIDServerResourceLoadDelegate_signRequest___block_invoke(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  dispatch_semaphore_signal(*(a1 + 32));
  objc_storeStrong(&location, 0);
}

- (void)signRequest:(id)request withCompletionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v38 = 0;
  objc_storeStrong(&v38, handler);
  [(AKAppleIDServerResourceLoadDelegate *)selfCopy _signRequest:location[0]];
  v30 = MEMORY[0x1E69E9820];
  v31 = -1073741824;
  v32 = 0;
  v33 = __73__AKAppleIDServerResourceLoadDelegate_signRequest_withCompletionHandler___block_invoke;
  v34 = &unk_1E73D7058;
  v35 = MEMORY[0x1E69E5928](selfCopy);
  v36 = MEMORY[0x1E69E5928](location[0]);
  v37 = MEMORY[0x193B165F0](&v30);
  v22 = MEMORY[0x1E69E9820];
  v23 = -1073741824;
  v24 = 0;
  v25 = __73__AKAppleIDServerResourceLoadDelegate_signRequest_withCompletionHandler___block_invoke_129;
  v26 = &unk_1E73D7058;
  v27 = MEMORY[0x1E69E5928](selfCopy);
  v28 = MEMORY[0x1E69E5928](location[0]);
  v29 = MEMORY[0x193B165F0](&v22);
  v14 = MEMORY[0x1E69E9820];
  v15 = -1073741824;
  v16 = 0;
  v17 = __73__AKAppleIDServerResourceLoadDelegate_signRequest_withCompletionHandler___block_invoke_132;
  v18 = &unk_1E73D7058;
  v19 = MEMORY[0x1E69E5928](selfCopy);
  v20 = MEMORY[0x1E69E5928](location[0]);
  v21 = MEMORY[0x193B165F0](&v14);
  v4 = v37;
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __73__AKAppleIDServerResourceLoadDelegate_signRequest_withCompletionHandler___block_invoke_135;
  v10 = &unk_1E73D7120;
  v11 = MEMORY[0x1E69E5928](v29);
  v12 = MEMORY[0x1E69E5928](v21);
  v13 = MEMORY[0x1E69E5928](v38);
  v4[2](v4, &v6);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
}

void __73__AKAppleIDServerResourceLoadDelegate_signRequest_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17[1] = a1;
  if (*(*(a1 + 32) + 46))
  {
    v17[0] = _AKLogSystem();
    v16 = 2;
    if (os_log_type_enabled(v17[0], OS_LOG_TYPE_DEBUG))
    {
      log = v17[0];
      type = v16;
      __os_log_helper_16_0_0(v15);
      _os_log_debug_impl(&dword_193225000, log, type, "Grabbing signing headers from current device.", v15, 2u);
    }

    objc_storeStrong(v17, 0);
    v14 = [*(a1 + 32) signingController];
    v3 = v14;
    v2 = *(a1 + 40);
    v7 = MEMORY[0x1E69E9820];
    v8 = -1073741824;
    v9 = 0;
    v10 = __73__AKAppleIDServerResourceLoadDelegate_signRequest_withCompletionHandler___block_invoke_125;
    v11 = &unk_1E73D4BA0;
    v12 = MEMORY[0x1E69E5928](*(a1 + 40));
    v13 = MEMORY[0x1E69E5928](location[0]);
    [v3 signingHeadersForRequest:v2 completion:&v7];
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v14, 0);
  }

  else
  {
    (*(location[0] + 2))();
  }

  objc_storeStrong(location, 0);
}

void __73__AKAppleIDServerResourceLoadDelegate_signRequest_withCompletionHandler___block_invoke_125(void *a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13 = 0;
  objc_storeStrong(&v13, a3);
  v12[1] = a1;
  if (location[0])
  {
    v3 = location[0];
    v7 = MEMORY[0x1E69E9820];
    v8 = -1073741824;
    v9 = 0;
    v10 = __73__AKAppleIDServerResourceLoadDelegate_signRequest_withCompletionHandler___block_invoke_2;
    v11 = &unk_1E73D5E48;
    v12[0] = MEMORY[0x1E69E5928](a1[4]);
    [v3 enumerateKeysAndObjectsUsingBlock:&v7];
    objc_storeStrong(v12, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v15, v13);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Failed to get signing headers, error: %@", v15, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  (*(a1[5] + 16))();
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __73__AKAppleIDServerResourceLoadDelegate_signRequest_withCompletionHandler___block_invoke_2(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  [a1[4] setValue:v5 forHTTPHeaderField:location[0]];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void __73__AKAppleIDServerResourceLoadDelegate_signRequest_withCompletionHandler___block_invoke_129(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v25 = a1;
  v2 = *(*(a1 + 32) + 46);
  v23 = 0;
  v9 = 0;
  if (v2)
  {
    v24 = [*(a1 + 32) proxiedDevice];
    v23 = 1;
    v9 = 0;
    if (v24)
    {
      v9 = *(*(a1 + 32) + 232) == 0;
    }
  }

  if (v23)
  {
    MEMORY[0x1E69E5920](v24);
  }

  if (v9)
  {
    v22 = _AKLogSystem();
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      log = v22;
      type = v21;
      __os_log_helper_16_0_0(v20);
      _os_log_impl(&dword_193225000, log, type, "Attempting to fetch peer anisette", v20, 2u);
    }

    objc_storeStrong(&v22, 0);
    v5 = [*(a1 + 32) _proxiedProvisioningController];
    v13 = MEMORY[0x1E69E9820];
    v14 = -1073741824;
    v15 = 0;
    v16 = __73__AKAppleIDServerResourceLoadDelegate_signRequest_withCompletionHandler___block_invoke_130;
    v17 = &unk_1E73D7080;
    v18 = MEMORY[0x1E69E5928](*(a1 + 40));
    v19 = MEMORY[0x1E69E5928](location[0]);
    [v5 anisetteDataWithCompletion:&v13];
    MEMORY[0x1E69E5920](v5);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog;
      v4 = v11;
      __os_log_helper_16_0_0(v10);
      _os_log_impl(&dword_193225000, v3, v4, "Not attmepting to fetch peer anisette", v10, 2u);
    }

    objc_storeStrong(&oslog, 0);
    (*(location[0] + 2))();
  }

  objc_storeStrong(location, 0);
}

void __73__AKAppleIDServerResourceLoadDelegate_signRequest_withCompletionHandler___block_invoke_130(uint64_t a1, void *a2, void *a3)
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
    __os_log_helper_16_0_0(v8);
    _os_log_impl(&dword_193225000, log, type, "Peer anisette fetch complete", v8, 2u);
  }

  objc_storeStrong(v10, 0);
  if (!location[0] || v11)
  {
    v7 = _AKLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v13, location[0]);
      _os_log_error_impl(&dword_193225000, v7, OS_LOG_TYPE_ERROR, "Error while fetching proxied anisette %@", v13, 0xCu);
    }

    objc_storeStrong(&v7, 0);
  }

  [*(a1 + 32) ak_addProxiedAnisetteHeaders:location[0]];
  (*(*(a1 + 40) + 16))();
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __73__AKAppleIDServerResourceLoadDelegate_signRequest_withCompletionHandler___block_invoke_132(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v40[1] = a1;
  if (*(*(a1 + 32) + 46))
  {
    v40[0] = _AKLogSystem();
    v39 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v40[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v40[0];
      type = v39;
      __os_log_helper_16_0_0(v38);
      _os_log_impl(&dword_193225000, log, type, "Configuring peer signing headers", v38, 2u);
    }

    objc_storeStrong(v40, 0);
    v2 = *(*(a1 + 32) + 240);
    v36 = 0;
    v14 = 0;
    if (!v2)
    {
      v37 = [*(a1 + 32) proxiedDevice];
      v36 = 1;
      v14 = v37 != 0;
    }

    if (v36)
    {
      MEMORY[0x1E69E5920](v37);
    }

    if (v14)
    {
      v35 = _AKLogSystem();
      v34 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        v13 = [v12 proxiedDevice];
        __os_log_helper_16_2_3_8_64_8_64_8_64(v42, v12, v13, *(a1 + 40));
        _os_log_impl(&dword_193225000, v35, v34, "%@: Fetching attestation data for proxied device (%@) with request (%@)", v42, 0x20u);
        MEMORY[0x1E69E5920](v13);
      }

      objc_storeStrong(&v35, 0);
      v11 = [*(a1 + 32) _proxiedProvisioningController];
      v10 = *(a1 + 40);
      v27 = MEMORY[0x1E69E9820];
      v28 = -1073741824;
      v29 = 0;
      v30 = __73__AKAppleIDServerResourceLoadDelegate_signRequest_withCompletionHandler___block_invoke_133;
      v31 = &unk_1E73D70A8;
      v32 = MEMORY[0x1E69E5928](*(a1 + 40));
      v33 = MEMORY[0x1E69E5928](location[0]);
      [v11 fetchPeerAttestationDataForRequest:v10 completion:&v27];
      MEMORY[0x1E69E5920](v11);
      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v32, 0);
    }

    else
    {
      v9 = [*(a1 + 32) proxiedDevice];
      MEMORY[0x1E69E5920](v9);
      if (v9)
      {
        if (*(*(a1 + 32) + 240))
        {
          v23 = _AKLogSystem();
          v22 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v5 = v23;
            v6 = v22;
            __os_log_helper_16_0_0(v21);
            _os_log_impl(&dword_193225000, v5, v6, "Looks like we already have attestation data, thanks!", v21, 2u);
          }

          objc_storeStrong(&v23, 0);
          [*(a1 + 40) ak_addProxiedAttestationHeaders:*(*(a1 + 32) + 240)];
        }
      }

      else
      {
        v26 = _AKLogSystem();
        v25 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v7 = v26;
          v8 = v25;
          __os_log_helper_16_0_0(v24);
          _os_log_impl(&dword_193225000, v7, v8, "No proxied device, no peer headers to attach.", v24, 2u);
        }

        objc_storeStrong(&v26, 0);
      }

      (*(location[0] + 2))();
    }
  }

  else
  {
    oslog = _AKLogSystem();
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog;
      v4 = v19;
      __os_log_helper_16_0_0(v18);
      _os_log_impl(&dword_193225000, v3, v4, "Not sending signing headers for peer", v18, 2u);
    }

    objc_storeStrong(&oslog, 0);
    (*(location[0] + 2))();
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __73__AKAppleIDServerResourceLoadDelegate_signRequest_withCompletionHandler___block_invoke_133(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  v9[1] = a1;
  v9[0] = _AKLogSystem();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v9[0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = [location[0] attestationHeaders];
    v3 = [v4 allKeys];
    __os_log_helper_16_2_1_8_64(v13, v3);
    _os_log_impl(&dword_193225000, v9[0], v8, "Peer attestation completed with results: %@", v13, 0xCu);
    MEMORY[0x1E69E5920](v3);
    MEMORY[0x1E69E5920](v4);
  }

  objc_storeStrong(v9, 0);
  if (v10)
  {
    v7 = _AKLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v12, v10);
      _os_log_error_impl(&dword_193225000, v7, OS_LOG_TYPE_ERROR, "Failed to fetch peer attestation data: %@", v12, 0xCu);
    }

    objc_storeStrong(&v7, 0);
  }

  [*(a1 + 32) ak_addProxiedAttestationHeaders:location[0]];
  (*(*(a1 + 40) + 16))();
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __73__AKAppleIDServerResourceLoadDelegate_signRequest_withCompletionHandler___block_invoke_135(void *a1)
{
  v9[2] = a1;
  v9[1] = a1;
  v2 = a1[4];
  v3 = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = __73__AKAppleIDServerResourceLoadDelegate_signRequest_withCompletionHandler___block_invoke_2_136;
  v7 = &unk_1E73D70F8;
  v8 = MEMORY[0x1E69E5928](a1[5]);
  v9[0] = MEMORY[0x1E69E5928](a1[6]);
  (*(v2 + 16))();
  objc_storeStrong(v9, 0);
  objc_storeStrong(&v8, 0);
}

void __73__AKAppleIDServerResourceLoadDelegate_signRequest_withCompletionHandler___block_invoke_2_136(void *a1)
{
  v7[2] = a1;
  v7[1] = a1;
  v1 = a1[4];
  v2 = MEMORY[0x1E69E9820];
  v3 = -1073741824;
  v4 = 0;
  v5 = __73__AKAppleIDServerResourceLoadDelegate_signRequest_withCompletionHandler___block_invoke_3;
  v6 = &unk_1E73D70D0;
  v7[0] = MEMORY[0x1E69E5928](a1[5]);
  (*(v1 + 16))();
  objc_storeStrong(v7, 0);
}

- (id)_proxiedProvisioningController
{
  if (!self->_proxiedProvisioningController)
  {
    v6 = [AKAnisetteProvisioningController alloc];
    proxiedDevice = [(AKAppleIDServerResourceLoadDelegate *)self proxiedDevice];
    anisetteDataProvider = [(AKAppleIDServerResourceLoadDelegate *)self anisetteDataProvider];
    v2 = [(AKAnisetteProvisioningController *)v6 initForDevice:proxiedDevice provider:?];
    proxiedProvisioningController = self->_proxiedProvisioningController;
    self->_proxiedProvisioningController = v2;
    MEMORY[0x1E69E5920](proxiedProvisioningController);
    MEMORY[0x1E69E5920](anisetteDataProvider);
    MEMORY[0x1E69E5920](proxiedDevice);
  }

  v4 = self->_proxiedProvisioningController;

  return v4;
}

- (id)signingController
{
  v2 = objc_alloc_init(AKAppleIDSigningController);

  return v2;
}

- (id)_fetchApplicationNameForBundleId:(id)id
{
  v14 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, id);
  v10 = 0;
  v3 = objc_alloc(MEMORY[0x1E69635F8]);
  obj = v10;
  v6 = [v3 initWithBundleIdentifier:location[0] allowPlaceholder:0 error:&obj];
  objc_storeStrong(&v10, obj);
  v9 = v6;
  if (v10)
  {
    oslog = _AKLogHme();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_64_8_64(v13, location[0], v10);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Cannot find application name for %@, got %@", v13, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    localizedName = 0;
  }

  else
  {
    localizedName = [v9 localizedName];
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v4 = localizedName;

  return v4;
}

- (void)_signRequest:(id)request
{
  v77 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  [(AKAppleIDServerResourceLoadDelegate *)selfCopy signRequestWithCommonHeaders:location[0]];
  if (selfCopy->_securityUpgradeContext)
  {
    [location[0] setValue:selfCopy->_securityUpgradeContext forHTTPHeaderField:@"X-Apple-Security-Upgrade-Context"];
  }

  [location[0] ak_addAttestationDataHeaders];
  [location[0] ak_addCountryHeader];
  if (OctagonIsSOSFeatureEnabled())
  {
    [location[0] ak_addCircleStatusHeader];
  }

  else
  {
    _isOTCliqueStatusIn = [(AKAppleIDServerResourceLoadDelegate *)selfCopy _isOTCliqueStatusIn];
    [location[0] ak_addCircleStatusHeaderForCircleStatus:_isOTCliqueStatusIn];
  }

  if (selfCopy->_privateEmailBundleId && selfCopy->_privateEmailDomain)
  {
    [location[0] ak_addPrivateEmailDomainHeader:selfCopy->_privateEmailDomain];
    [location[0] ak_addPrivateEmailOriginHeader:@"app"];
    [location[0] ak_addPrivateEmailAppBundleIdHeader:selfCopy->_privateEmailBundleId];
    v70 = [(AKAppleIDServerResourceLoadDelegate *)selfCopy _fetchApplicationNameForBundleId:selfCopy->_privateEmailBundleId];
    if (v70)
    {
      [location[0] ak_addPrivateEmailAppNameHeader:v70];
      v69 = _AKLogHme();
      v68 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_64(v76, v70);
        _os_log_debug_impl(&dword_193225000, v69, v68, "Attaching app-name %@", v76, 0xCu);
      }

      objc_storeStrong(&v69, 0);
    }

    else
    {
      v67 = _AKLogHme();
      v66 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v75, selfCopy->_privateEmailBundleId);
        _os_log_error_impl(&dword_193225000, v67, v66, "Could not find application name for %@", v75, 0xCu);
      }

      objc_storeStrong(&v67, 0);
    }

    objc_storeStrong(&v70, 0);
  }

  else if (selfCopy->_privateEmailDomain)
  {
    [location[0] ak_addPrivateEmailOriginHeader:@"safari"];
    [location[0] ak_addPrivateEmailDomainHeader:selfCopy->_privateEmailDomain];
  }

  if (selfCopy->_context)
  {
    v25 = location[0];
    _identifier = [(AKAppleIDAuthenticationContext *)selfCopy->_context _identifier];
    uUIDString = [(NSUUID *)_identifier UUIDString];
    [v25 ak_addRequestUUIDHeader:?];
    MEMORY[0x1E69E5920](uUIDString);
    MEMORY[0x1E69E5920](_identifier);
  }

  if (SetupAssistantLibraryCore(0))
  {
    v24 = location[0];
    if (SetupAssistantLibraryCore(0))
    {
      BYLicenseAgreementClass = getBYLicenseAgreementClass();
    }

    else
    {
      BYLicenseAgreementClass = 0;
    }

    [v24 ak_addAcceptedSLAHeaderWithVersion:{objc_msgSend(BYLicenseAgreementClass, "versionOfAcceptedAgreement")}];
  }

  [(AKAppleIDServerResourceLoadDelegate *)selfCopy _signWithProxiedDeviceHeaders:location[0]];
  [location[0] ak_addLoggedInServicesHeaderForServices:selfCopy->_loggedInServices];
  v65 = +[AKAccountManager sharedInstance];
  altDSID = [(AKAppleIDServerResourceLoadDelegate *)selfCopy altDSID];
  v64 = [v65 authKitAccountWithAltDSID:? error:?];
  MEMORY[0x1E69E5920](altDSID);
  continuationToken = selfCopy->_continuationToken;
  v61 = 0;
  if (continuationToken)
  {
    v3 = MEMORY[0x1E69E5928](continuationToken);
  }

  else
  {
    v62 = [v65 continuationTokenForAccount:v64];
    v61 = 1;
    v3 = MEMORY[0x1E69E5928](v62);
  }

  v63 = v3;
  if (v61)
  {
    MEMORY[0x1E69E5920](v62);
  }

  passwordResetToken = selfCopy->_passwordResetToken;
  v58 = 0;
  if (passwordResetToken)
  {
    v4 = MEMORY[0x1E69E5928](passwordResetToken);
  }

  else
  {
    v59 = [v65 passwordResetTokenForAccount:v64];
    v58 = 1;
    v4 = MEMORY[0x1E69E5928](v59);
  }

  v60 = v4;
  if (v58)
  {
    MEMORY[0x1E69E5920](v59);
  }

  if (v63)
  {
    [location[0] ak_addContinutationKeyHeader:v63];
  }

  if (v60)
  {
    [location[0] ak_addPasswordResetKeyHeader:v60];
  }

  v57 = 0;
  if (selfCopy->_hasEmptyPasswordOverride)
  {
    v57 = ![(NSNumber *)selfCopy->_hasEmptyPasswordOverride BOOLValue];
  }

  else
  {
    v56 = 0;
    sharedController = [objc_opt_class() sharedController];
    v55 = v56;
    v18 = [sharedController isDevicePasscodeProtected:&v55];
    objc_storeStrong(&v56, v55);
    v57 = v18;
    MEMORY[0x1E69E5920](sharedController);
    if (v56)
    {
      v54 = _AKLogSystem();
      v53 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v74, v56);
        _os_log_error_impl(&dword_193225000, v54, v53, "Could not determine passcode state with error %@", v74, 0xCu);
      }

      objc_storeStrong(&v54, 0);
    }

    objc_storeStrong(&v56, 0);
  }

  if (v57)
  {
    v52 = _AKLogSystem();
    v51 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      v16 = v52;
      v17 = v51;
      __os_log_helper_16_0_0(v50);
      _os_log_debug_impl(&dword_193225000, v16, v17, "Attaching PRK header", v50, 2u);
    }

    objc_storeStrong(&v52, 0);
    [location[0] ak_addPRKRequestHeader];
  }

  if (selfCopy->_shouldSendEphemeralAuthHeader)
  {
    oslog = _AKLogSystem();
    v48 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v14 = oslog;
      v15 = v48;
      __os_log_helper_16_0_0(v47);
      _os_log_debug_impl(&dword_193225000, v14, v15, "Signing request as ephemeral", v47, 2u);
    }

    objc_storeStrong(&oslog, 0);
    [location[0] ak_addEphemeralAuthHeader];
  }

  else if (v57 && selfCopy->_shouldSendICSCIntentHeader)
  {
    v46 = _AKLogSystem();
    v45 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      v12 = v46;
      v13 = v45;
      __os_log_helper_16_0_0(v44);
      _os_log_debug_impl(&dword_193225000, v12, v13, "Attaching ICSC header", v44, 2u);
    }

    objc_storeStrong(&v46, 0);
    [location[0] ak_addICSCIntentHeader];
  }

  if (selfCopy->_shouldSendLocalUserHasAppleIDLoginHeader)
  {
    [location[0] ak_addLocalUserHasAppleIDLoginHeader];
  }

  if (selfCopy->_shouldSendPhoneNumber)
  {
    if (selfCopy->_phoneInformation)
    {
      v43 = _AKLogSystem();
      v42 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        v10 = v43;
        v11 = v42;
        __os_log_helper_16_0_0(v41);
        _os_log_debug_impl(&dword_193225000, v10, v11, "Attaching Phone Info header", v41, 2u);
      }

      objc_storeStrong(&v43, 0);
      [location[0] ak_addPhoneInformationHeaderWithValue:selfCopy->_phoneInformation];
    }

    v40 = _AKLogSystem();
    v39 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      v8 = v40;
      v9 = v39;
      __os_log_helper_16_0_0(v38);
      _os_log_debug_impl(&dword_193225000, v8, v9, "Attaching PTN header", v38, 2u);
    }

    objc_storeStrong(&v40, 0);
    [location[0] ak_addPhoneNumberHeader];
    if (selfCopy->_phoneNumberCertificate)
    {
      v37 = _AKLogSystem();
      v36 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        v6 = v37;
        v7 = v36;
        __os_log_helper_16_0_0(v35);
        _os_log_debug_impl(&dword_193225000, v6, v7, "Attaching PAC header", v35, 2u);
      }

      objc_storeStrong(&v37, 0);
      [location[0] ak_addPhoneNumberCertificateHeaderWithValue:selfCopy->_phoneNumberCertificate];
    }
  }

  [location[0] ak_addCFUHeader:selfCopy->_followupItems];
  _retrieveContinuationHeaders = [(AKAppleIDServerResourceLoadDelegate *)selfCopy _retrieveContinuationHeaders];
  if (_retrieveContinuationHeaders)
  {
    v5 = _retrieveContinuationHeaders;
    v28 = MEMORY[0x1E69E9820];
    v29 = -1073741824;
    v30 = 0;
    v31 = __52__AKAppleIDServerResourceLoadDelegate__signRequest___block_invoke;
    v32 = &unk_1E73D5E48;
    v33 = MEMORY[0x1E69E5928](location[0]);
    [v5 enumerateKeysAndObjectsUsingBlock:&v28];
    objc_storeStrong(&v33, 0);
  }

  if (selfCopy->_continuityIDMSData)
  {
    [location[0] setValue:selfCopy->_continuityIDMSData forHTTPHeaderField:@"X-Apple-I-IdMS-Data"];
  }

  objc_storeStrong(&_retrieveContinuationHeaders, 0);
  objc_storeStrong(&v60, 0);
  objc_storeStrong(&v63, 0);
  objc_storeStrong(&v64, 0);
  objc_storeStrong(&v65, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __52__AKAppleIDServerResourceLoadDelegate__signRequest___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7[2] = a4;
  v7[1] = a1;
  v7[0] = _AKLogSystem();
  if (os_log_type_enabled(v7[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v10, location[0]);
    _os_log_impl(&dword_193225000, v7[0], OS_LOG_TYPE_DEFAULT, "Harvested continuation header added %@", v10, 0xCu);
  }

  objc_storeStrong(v7, 0);
  [a1[4] setValue:v8 forHTTPHeaderField:location[0]];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)signRequestWithCommonHeaders:(id)headers
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, headers);
  [(AKAppleIDServerResourceLoadDelegate *)selfCopy signRequestWithBasicHeaders:location[0]];
  v38 = _AKLogSystem();
  v37 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    log = v38;
    v19 = v37;
    __os_log_helper_16_0_0(v36);
    _os_log_impl(&dword_193225000, log, v19, "Signing request with common headers", v36, 2u);
  }

  objc_storeStrong(&v38, 0);
  if (selfCopy->_altDSID)
  {
    if (selfCopy->_serviceToken)
    {
      v35 = _AKLogSystem();
      v34 = 2;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        v16 = v35;
        type = v34;
        __os_log_helper_16_0_0(v33);
        _os_log_debug_impl(&dword_193225000, v16, type, "Signing request with service token", v33, 2u);
      }

      objc_storeStrong(&v35, 0);
      [location[0] ak_addAuthorizationHeaderWithServiceToken:selfCopy->_serviceToken forAltDSID:selfCopy->_altDSID];
    }

    else if (selfCopy->_identityToken)
    {
      v32 = _AKLogSystem();
      v31 = 2;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v14 = v32;
        v15 = v31;
        __os_log_helper_16_0_0(v30);
        _os_log_debug_impl(&dword_193225000, v14, v15, "Signing request with ID token", v30, 2u);
      }

      objc_storeStrong(&v32, 0);
      [location[0] ak_addAuthorizationHeaderWithIdentityToken:selfCopy->_identityToken forAltDSID:selfCopy->_altDSID];
    }

    if (selfCopy->_heartbeatToken)
    {
      v29 = _AKLogSystem();
      v28 = 2;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v12 = v29;
        v13 = v28;
        __os_log_helper_16_0_0(v27);
        _os_log_debug_impl(&dword_193225000, v12, v13, "Signing request with HB token", v27, 2u);
      }

      objc_storeStrong(&v29, 0);
      [location[0] ak_addAuthorizationHeaderWithHeartbeatToken:selfCopy->_heartbeatToken forAltDSID:selfCopy->_altDSID];
    }

    if (selfCopy->_initialURLRequestKey)
    {
      v26 = _AKLogSystem();
      v25 = 2;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v10 = v26;
        v11 = v25;
        __os_log_helper_16_0_0(v24);
        _os_log_debug_impl(&dword_193225000, v10, v11, "Signing request with URLSwitching UrlKey", v24, 2u);
      }

      objc_storeStrong(&v26, 0);
      [location[0] ak_addURLSwitchingHeaderWithURLKey:selfCopy->_initialURLRequestKey altDSID:selfCopy->_altDSID];
      objc_storeStrong(&selfCopy->_initialURLRequestKey, 0);
    }

    if (selfCopy->_custodianRecoveryToken)
    {
      v23 = [AKToken tokenWithBase64String:selfCopy->_custodianRecoveryToken];
      v22 = _AKLogSystem();
      v21 = 2;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v8 = v22;
        v9 = v21;
        __os_log_helper_16_0_0(v20);
        _os_log_debug_impl(&dword_193225000, v8, v9, "Signing request with CR token", v20, 2u);
      }

      objc_storeStrong(&v22, 0);
      v6 = location[0];
      stringValue = [(AKToken *)v23 stringValue];
      altDSID = selfCopy->_altDSID;
      [v6 ak_addAuthorizationHeaderWithCustodianRecoveryToken:? forAltDSID:?];
      MEMORY[0x1E69E5920](stringValue);
      objc_storeStrong(&v23, 0);
    }

    [location[0] ak_addOTStatusHeaderForAltDSID:selfCopy->_altDSID];
    v4 = location[0];
    _accountDSID = [(AKAppleIDServerResourceLoadDelegate *)selfCopy _accountDSID];
    [v4 ak_addCDPStatusHeaderForDSID:?];
    MEMORY[0x1E69E5920](_accountDSID);
  }

  if (selfCopy->_appProvidedContext)
  {
    [location[0] ak_addAppProvidedContext:selfCopy->_appProvidedContext];
  }

  [location[0] ak_addOfferSecurityUpgrade:selfCopy->_shouldOfferSecurityUpgrade];
  [location[0] ak_addDeviceConfigurationModeHeaderForAuthContext:selfCopy->_context];
  [location[0] ak_addWalrusStatusHeader];
  [(AKAppleIDServerResourceLoadDelegate *)selfCopy _signWithFeatureOptInHeaders:location[0]];
  objc_storeStrong(location, 0);
}

- (void)signRequestWithBasicHeaders:(id)headers
{
  v47 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, headers);
  v43 = _AKLogSystem();
  v42 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    log = v43;
    v23 = v42;
    __os_log_helper_16_0_0(v41);
    _os_log_impl(&dword_193225000, log, v23, "Signing request with basic headers", v41, 2u);
  }

  objc_storeStrong(&v43, 0);
  [location[0] ak_addClientInfoHeader];
  [location[0] ak_addDeviceUDIDHeader];
  [location[0] ak_addDeviceSerialNumberHeader];
  [location[0] ak_addInternalBuildHeader];
  [location[0] ak_addSeedBuildHeader];
  [location[0] ak_addFeatureMaskHeader];
  [location[0] ak_addLocaleHeader];
  [location[0] ak_addTimeZoneHeaders];
  [location[0] ak_addDeviceMLBHeader];
  [location[0] ak_addDeviceROMHeader];
  [location[0] ak_addSupportedLanguageHeader];
  v20 = location[0];
  v21 = +[AKDevice currentDevice];
  [v20 ak_addAppleIDUserModeHeaderWithValue:{(objc_msgSend(v21, "isMultiUserMode") & 1) != 0}];
  MEMORY[0x1E69E5920](v21);
  [location[0] ak_addDeviceModeHeader];
  if (+[AKDevice hasUniqueDeviceIdentifier])
  {
    [location[0] ak_addProvisioningUDIDHeader];
  }

  if ([(NSString *)selfCopy->_proxyAppName length])
  {
    [location[0] ak_addProxyApp:selfCopy->_proxyAppName];
  }

  if (selfCopy->_serviceType)
  {
    [location[0] ak_addContextHeaderForServiceType:selfCopy->_serviceType];
  }

  if ([(NSString *)selfCopy->_clientAppName length])
  {
    [location[0] ak_addClientApp:selfCopy->_clientAppName];
  }

  if ([(NSString *)selfCopy->_clientBundleID length])
  {
    [location[0] ak_addClientBundleIDHeader:selfCopy->_clientBundleID];
  }

  _proxiedAppBundleID = [(AKAppleIDAuthenticationContext *)selfCopy->_context _proxiedAppBundleID];
  v19 = [(NSString *)_proxiedAppBundleID length];
  MEMORY[0x1E69E5920](_proxiedAppBundleID);
  if (v19)
  {
    v16 = location[0];
    _proxiedAppBundleID2 = [(AKAppleIDAuthenticationContext *)selfCopy->_context _proxiedAppBundleID];
    [v16 ak_addProxiedBundleIDHeader:?];
    MEMORY[0x1E69E5920](_proxiedAppBundleID2);
  }

  if (selfCopy->_dataCenterIdentifier)
  {
    v40 = _AKLogSystem();
    v39 = 2;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      v14 = v40;
      type = v39;
      __os_log_helper_16_0_0(v38);
      _os_log_debug_impl(&dword_193225000, v14, type, "Signing request with data center identifier", v38, 2u);
    }

    objc_storeStrong(&v40, 0);
    [location[0] ak_addDataCenterHeaderWithIdentifier:selfCopy->_dataCenterIdentifier];
  }

  if (selfCopy->_cliMode)
  {
    v37 = _AKLogSystem();
    v36 = 2;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      v12 = v37;
      v13 = v36;
      __os_log_helper_16_0_0(v35);
      _os_log_debug_impl(&dword_193225000, v12, v13, "Setting execution mode to CLI", v35, 2u);
    }

    objc_storeStrong(&v37, 0);
    [location[0] ak_addExecutionModeHeader:1];
  }

  v34 = 0;
  context = selfCopy->_context;
  v32 = 0;
  v11 = [(AKAppleIDAuthenticationContext *)context authKitAccount:&v32];
  objc_storeStrong(&v34, v32);
  v33 = v11;
  if (v34)
  {
    v31 = _AKLogSystem();
    v30 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_66(v46, v34);
      _os_log_error_impl(&dword_193225000, v31, v30, "Received error while getting current user's account: %{public}@", v46, 0xCu);
    }

    objc_storeStrong(&v31, 0);
  }

  v9 = +[AKAccountManager sharedInstance];
  v10 = [(AKAccountManager *)v9 accountIdentifiableTelemetryForAccount:v33];
  MEMORY[0x1E69E5920](v9);
  if (v10)
  {
    if (selfCopy->_telemetryDeviceSessionID)
    {
      v29 = _AKLogSystem();
      v28 = 2;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v7 = v29;
        v8 = v28;
        __os_log_helper_16_0_0(v27);
        _os_log_debug_impl(&dword_193225000, v7, v8, "Signing request with the device session identifier", v27, 2u);
      }

      objc_storeStrong(&v29, 0);
      [location[0] ak_addTelemetryDeviceSessionID:selfCopy->_telemetryDeviceSessionID];
    }

    if (selfCopy->_telemetryFlowID)
    {
      v26 = _AKLogSystem();
      v25 = 2;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v5 = v26;
        v6 = v25;
        __os_log_helper_16_0_0(v24);
        _os_log_debug_impl(&dword_193225000, v5, v6, "Signing request with the flow identifier", v24, 2u);
      }

      objc_storeStrong(&v26, 0);
      [location[0] ak_addTelemetryFlowID:selfCopy->_telemetryFlowID];
    }
  }

  if (selfCopy->_serviceType)
  {
    [location[0] ak_addServiceHeaderForServiceType:selfCopy->_serviceType];
  }

  [(AKAppleIDServerResourceLoadDelegate *)selfCopy _signRequestWithBAAHeaders:location[0], location];
  [(AKAppleIDServerResourceLoadDelegate *)selfCopy _signRequestWithServerBackoffInfoHeader:location[0]];
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(v4, 0);
  *MEMORY[0x1E69E9840];
}

- (void)_signRequestWithServerBackoffInfoHeader:(id)header
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, header);
  v8 = objc_alloc_init(AKServerBackoffHelper);
  v7 = [(AKServerBackoffHelper *)v8 serverBackoffInfoForRequest:location[0]];
  [location[0] ak_addServerBackoffInfoHeader:v7];
  v3 = +[AKFeatureManager sharedManager];
  isServerBackoffOptInEnabled = [v3 isServerBackoffOptInEnabled];
  MEMORY[0x1E69E5920](v3);
  v5 = location[0];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:isServerBackoffOptInEnabled & 1];
  [v5 ak_addServerBackoffOptInHeader:?];
  MEMORY[0x1E69E5920](v6);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_signWithProxiedDeviceHeaders:(id)headers
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, headers);
  serverFriendlyDescription = [(AKDevice *)selfCopy->_proxiedDevice serverFriendlyDescription];
  MEMORY[0x1E69E5920](serverFriendlyDescription);
  if (serverFriendlyDescription)
  {
    v10 = location[0];
    serverFriendlyDescription2 = [(AKDevice *)selfCopy->_proxiedDevice serverFriendlyDescription];
    [v10 ak_addProxiedClientInfoHeader:?];
    MEMORY[0x1E69E5920](serverFriendlyDescription2);
  }

  uniqueDeviceIdentifier = [(AKDevice *)selfCopy->_proxiedDevice uniqueDeviceIdentifier];
  MEMORY[0x1E69E5920](uniqueDeviceIdentifier);
  if (uniqueDeviceIdentifier)
  {
    v7 = location[0];
    uniqueDeviceIdentifier2 = [(AKDevice *)selfCopy->_proxiedDevice uniqueDeviceIdentifier];
    [v7 ak_addProxiedDeviceUDIDHeader:?];
    MEMORY[0x1E69E5920](uniqueDeviceIdentifier2);
  }

  if (selfCopy->_proxiedDeviceAnisetteData)
  {
    [location[0] ak_addProxiedAnisetteHeaders:selfCopy->_proxiedDeviceAnisetteData];
  }

  locale = [(AKDevice *)selfCopy->_proxiedDevice locale];
  v13 = [(NSLocale *)locale objectForKey:*MEMORY[0x1E695D978]];
  MEMORY[0x1E69E5920](locale);
  if (v13)
  {
    [location[0] ak_addProxiedDeviceCountryHeader:v13];
  }

  serialNumber = [(AKDevice *)selfCopy->_proxiedDevice serialNumber];
  MEMORY[0x1E69E5920](serialNumber);
  if (serialNumber)
  {
    v3 = location[0];
    serialNumber2 = [(AKDevice *)selfCopy->_proxiedDevice serialNumber];
    [v3 ak_addProxiedDeviceSerialNumberHeader:?];
    MEMORY[0x1E69E5920](serialNumber2);
  }

  if (selfCopy->_proxiedDevice)
  {
    [location[0] ak_addProxiedDevicePRKRequestHeader];
    [location[0] ak_addProxiedDeviceICSCIntentHeader];
  }

  if (selfCopy->_proxiedAltDSID && selfCopy->_proxiedIdentityToken)
  {
    [location[0] ak_addProxiedAuthorizationHeaderWithIdentityToken:selfCopy->_proxiedIdentityToken forAltDSID:selfCopy->_proxiedAltDSID];
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)_signWithFeatureOptInHeaders:(id)headers
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, headers);
  v15 = +[AKConfiguration sharedConfiguration];
  v16 = [v15 shouldAllowExperimentalMode] == 1;
  MEMORY[0x1E69E5920](v15);
  v20 = v16;
  if (v16)
  {
    v19 = _AKLogSystem();
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      log = v19;
      v14 = v18;
      __os_log_helper_16_0_0(v17);
      _os_log_impl(&dword_193225000, log, v14, "Signing request with Experimental Mode opt-in header", v17, 2u);
    }

    objc_storeStrong(&v19, 0);
    [location[0] setValue:@"true" forHTTPHeaderField:@"X-Apple-I-Experiment-Mode"];
    [location[0] setValue:@"true" forHTTPHeaderField:@"X-Apple-I-HSA1-Conversion"];
    [location[0] setValue:@"true" forHTTPHeaderField:@"X-Apple-I-RecoveryKey-Show"];
  }

  [location[0] ak_addFeatureMaskHeader];
  v11 = +[AKConfiguration sharedConfiguration];
  v12 = [v11 shouldEnableTestAccountMode] == 1;
  MEMORY[0x1E69E5920](v11);
  if (v12)
  {
    [location[0] setValue:@"true" forHTTPHeaderField:@"X-Apple-I-Test-Account-Mode"];
  }

  v9 = +[AKConfiguration sharedConfiguration];
  v10 = [v9 shouldAddHSA2CreateHeader] == 1;
  MEMORY[0x1E69E5920](v9);
  if (v10)
  {
    [location[0] setValue:@"HSA2" forHTTPHeaderField:@"X-Apple-AK-Auth-Type"];
  }

  v7 = +[AKConfiguration sharedConfiguration];
  v8 = [v7 shouldAllowPhoneNumberAccounts] == 1;
  MEMORY[0x1E69E5920](v7);
  if (v8)
  {
    [location[0] setValue:@"phoneNumber" forHTTPHeaderField:@"X-Apple-I-Account-NameType"];
  }

  v5 = +[AKConfiguration sharedConfiguration];
  requestedCloudPartition = [v5 requestedCloudPartition];
  MEMORY[0x1E69E5920](v5);
  v3 = location[0];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", requestedCloudPartition];
  [v3 setValue:? forHTTPHeaderField:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(location, 0);
}

- (void)_signRequestWithBAAHeaders:(id)headers
{
  v29 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, headers);
  if (selfCopy->_bagUrlKey)
  {
    v5 = +[AKURLBag sharedBag];
    v6 = [v5 isBaaEnabledForKey:selfCopy->_bagUrlKey];
    MEMORY[0x1E69E5920](v5);
    if (v6)
    {
      v20 = _AKLogSystem();
      v19 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_66(v28, selfCopy->_bagUrlKey);
        _os_log_impl(&dword_193225000, v20, v19, "Signing request with BAA headers for key - %{public}@", v28, 0xCu);
      }

      objc_storeStrong(&v20, 0);
      v18 = dispatch_semaphore_create(0);
      signingController = [(AKAppleIDServerResourceLoadDelegate *)selfCopy signingController];
      v4 = signingController;
      v3 = location[0];
      v10 = MEMORY[0x1E69E9820];
      v11 = -1073741824;
      v12 = 0;
      v13 = __66__AKAppleIDServerResourceLoadDelegate__signRequestWithBAAHeaders___block_invoke;
      v14 = &unk_1E73D7148;
      v15 = MEMORY[0x1E69E5928](location[0]);
      v16 = MEMORY[0x1E69E5928](v18);
      [v4 signWithBAAHeaders:v3 completion:&v10];
      dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
      objc_storeStrong(&v16, 0);
      objc_storeStrong(&v15, 0);
      objc_storeStrong(&signingController, 0);
      objc_storeStrong(&v18, 0);
    }

    else
    {
      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_66(v27, selfCopy->_bagUrlKey);
        _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "BAA is not enabled for URL key - %{public}@", v27, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }

    v21 = 0;
  }

  else
  {
    v24 = _AKLogSystem();
    v23 = 2;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      log = v24;
      type = v23;
      __os_log_helper_16_0_0(v22);
      _os_log_debug_impl(&dword_193225000, log, type, "Server delegate missing bagUrlKey, cannot determine if BAA attestation is needed", v22, 2u);
    }

    objc_storeStrong(&v24, 0);
    v21 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __66__AKAppleIDServerResourceLoadDelegate__signRequestWithBAAHeaders___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14[1] = a1;
  v14[0] = _AKLogSystem();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v18, location[0]);
    _os_log_impl(&dword_193225000, v14[0], v13, "Added additional BAA headers for request - %@", v18, 0xCu);
  }

  objc_storeStrong(v14, 0);
  if (location[0])
  {
    v3 = location[0];
    v7 = MEMORY[0x1E69E9820];
    v8 = -1073741824;
    v9 = 0;
    v10 = __66__AKAppleIDServerResourceLoadDelegate__signRequestWithBAAHeaders___block_invoke_149;
    v11 = &unk_1E73D5E48;
    v12 = MEMORY[0x1E69E5928](*(a1 + 32));
    [v3 enumerateKeysAndObjectsUsingBlock:&v7];
    objc_storeStrong(&v12, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v17, v15);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Failed to get signing headers, error: %@", v17, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  dispatch_semaphore_signal(*(a1 + 40));
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __66__AKAppleIDServerResourceLoadDelegate__signRequestWithBAAHeaders___block_invoke_149(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  [a1[4] setValue:v5 forHTTPHeaderField:location[0]];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)processResponse:(id)response
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  if (location[0])
  {
    v3 = selfCopy;
    allHeaderFields = [location[0] allHeaderFields];
    [(AKAppleIDServerResourceLoadDelegate *)v3 _harvestContinuationHeadersFromHeaders:?];
    MEMORY[0x1E69E5920](allHeaderFields);
  }

  objc_storeStrong(location, 0);
}

- (BOOL)isResponseFinal:(id)final
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, final);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x1E69E5928](location[0]);
    if (-[AKAppleIDServerResourceLoadDelegate _isResponseSuccessful:](selfCopy, "_isResponseSuccessful:", location[0]) || [v4 statusCode] == 412)
    {
      if ([objc_opt_class() signalFromServerResponse:v4] == 6)
      {
        v8 = 0;
      }

      else
      {
        v8 = [(AKAppleIDServerResourceLoadDelegate *)selfCopy isResponseActionable:v4];
      }

      v5 = 1;
    }

    else
    {
      v8 = 0;
      v5 = 1;
    }

    objc_storeStrong(&v4, 0);
  }

  else
  {
    v8 = 0;
    v5 = 1;
  }

  objc_storeStrong(location, 0);
  return v8 & 1;
}

- (BOOL)isAuthenticationRequired:(id)required
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, required);
  v4 = [location[0] statusCode] == 401;
  objc_storeStrong(location, 0);
  return v4;
}

- (BOOL)isResponseActionable:(id)actionable
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, actionable);
  v5 = [objc_opt_class() signalFromServerResponse:location[0]] != 0;
  objc_storeStrong(location, 0);
  return v5;
}

- (BOOL)isResponseFinalForHSA2ServerFlow:(id)flow
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, flow);
  allHeaderFields = [location[0] allHeaderFields];
  v8 = [allHeaderFields objectForKeyedSubscript:@"X-Apple-AK-Auth-Type"];
  v7 = [allHeaderFields objectForKeyedSubscript:@"X-Apple-AK-Request-Auth-Type"];
  v6 = [v8 isEqualToString:@"hsa2"];
  v5 = [v7 isEqualToString:@"hsa2"];
  v4 = [objc_opt_class() signalFromServerResponse:location[0]];
  v11 = !v7 && (v6 & 1) != 0 && v4 == 3 || v7 && (v6 & 1) != 0 && (v5 & 1) == 0;
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&allHeaderFields, 0);
  objc_storeStrong(location, 0);
  return v11;
}

- (BOOL)isResponseCompleteAndConflict:(id)conflict
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, conflict);
  *(&v4 + 1) = [location[0] statusCode];
  *&v4 = [objc_opt_class() signalFromServerResponse:location[0]];
  objc_storeStrong(location, 0);
  return v4 == __PAIR128__(409, 3);
}

+ (unint64_t)signalFromServerResponse:(id)response
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  allHeaderFields = [location[0] allHeaderFields];
  v5 = [allHeaderFields objectForKeyedSubscript:@"X-Apple-AK-Action"];
  v4 = [allHeaderFields objectForKeyedSubscript:@"X-Apple-CDP-Action"];
  if ([v4 isEqualToString:@"continue"])
  {
    v8 = 5;
  }

  else if ([v5 isEqualToString:@"complete"])
  {
    v8 = 3;
  }

  else if ([v5 isEqualToString:@"continue"])
  {
    v8 = 1;
  }

  else if ([v5 isEqualToString:@"cancel"])
  {
    v8 = 2;
  }

  else if ([v5 isEqualToString:@"start-icsc"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"mk-validation"))
  {
    v8 = 4;
  }

  else if ([v5 isEqualToString:@"read"])
  {
    v8 = 6;
  }

  else if ([v5 isEqualToString:@"delete"])
  {
    v8 = 7;
  }

  else if ([v5 isEqualToString:@"teardown"])
  {
    v8 = 8;
  }

  else
  {
    v8 = 0;
  }

  objc_storeStrong(&v4, 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&allHeaderFields, 0);
  objc_storeStrong(location, 0);
  return v8;
}

- (void)decorateWithCircleRequestContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  authContext = [location[0] authContext];
  context = selfCopy->_context;
  selfCopy->_context = authContext;
  MEMORY[0x1E69E5920](context);
  payload = [location[0] payload];
  altDSID = [payload altDSID];
  [(AKAppleIDAuthenticationContext *)selfCopy->_context setAltDSID:?];
  MEMORY[0x1E69E5920](altDSID);
  MEMORY[0x1E69E5920](payload);
  serviceType = [(AKAppleIDAuthenticationContext *)selfCopy->_context serviceType];
  selfCopy->_serviceType = serviceType;
  objc_storeStrong(location, 0);
}

- (void)decorateWithPrivateEmailContext:(id)context
{
  v11 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v7 = _AKLogHme();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v10, location[0]);
    _os_log_debug_impl(&dword_193225000, v7, OS_LOG_TYPE_DEBUG, "Decorating with: %@", v10, 0xCu);
  }

  objc_storeStrong(&v7, 0);
  v3 = selfCopy;
  clientAppBundleId = [location[0] clientAppBundleId];
  [(AKAppleIDServerResourceLoadDelegate *)v3 setPrivateEmailBundleId:?];
  MEMORY[0x1E69E5920](clientAppBundleId);
  v5 = selfCopy;
  v6 = [location[0] key];
  [(AKAppleIDServerResourceLoadDelegate *)v5 setPrivateEmailDomain:?];
  MEMORY[0x1E69E5920](v6);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)decorateWithContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  objc_storeStrong(&selfCopy->_context, location[0]);
  altDSID = [(AKAppleIDServerResourceLoadDelegate *)selfCopy altDSID];
  MEMORY[0x1E69E5920](altDSID);
  if (!altDSID)
  {
    v39 = selfCopy;
    altDSID2 = [location[0] altDSID];
    [(AKAppleIDServerResourceLoadDelegate *)v39 setAltDSID:?];
    MEMORY[0x1E69E5920](altDSID2);
  }

  v49 = 0;
  v47 = 0;
  needsSecurityUpgradeUI = 1;
  if (([location[0] isConfiguredForAccountCreation] & 1) == 0)
  {
    proxiedDevice = [location[0] proxiedDevice];
    v49 = 1;
    if (!proxiedDevice || (v48 = [location[0] appProvidedContext], v47 = 1, needsSecurityUpgradeUI = 1, !v48))
    {
      needsSecurityUpgradeUI = [location[0] needsSecurityUpgradeUI];
    }
  }

  if (v47)
  {
    MEMORY[0x1E69E5920](v48);
  }

  if (v49)
  {
    MEMORY[0x1E69E5920](proxiedDevice);
  }

  if (needsSecurityUpgradeUI)
  {
    [(AKAppleIDServerResourceLoadDelegate *)selfCopy setShouldSendSigningHeaders:1];
  }

  if ([location[0] isEphemeral])
  {
    [(AKAppleIDServerResourceLoadDelegate *)selfCopy setShouldSendEphemeralAuthHeader:1];
  }

  bOOLValue = 0;
  isAppleIDLoginEnabled = [location[0] isAppleIDLoginEnabled];
  MEMORY[0x1E69E5920](isAppleIDLoginEnabled);
  if (isAppleIDLoginEnabled)
  {
    isAppleIDLoginEnabled2 = [location[0] isAppleIDLoginEnabled];
    bOOLValue = [isAppleIDLoginEnabled2 BOOLValue];
    MEMORY[0x1E69E5920](isAppleIDLoginEnabled2);
  }

  if (bOOLValue)
  {
    [(AKAppleIDServerResourceLoadDelegate *)selfCopy setShouldSendLocalUserHasAppleIDLoginHeader:1];
  }

  custodianRecoveryToken = [location[0] custodianRecoveryToken];
  MEMORY[0x1E69E5920](custodianRecoveryToken);
  if (custodianRecoveryToken)
  {
    v33 = selfCopy;
    custodianRecoveryToken2 = [location[0] custodianRecoveryToken];
    [(AKAppleIDServerResourceLoadDelegate *)v33 setCustodianRecoveryToken:?];
    MEMORY[0x1E69E5920](custodianRecoveryToken2);
  }

  _remoteUIIdentityToken = [location[0] _remoteUIIdentityToken];
  v32 = [_remoteUIIdentityToken length];
  MEMORY[0x1E69E5920](_remoteUIIdentityToken);
  if (v32)
  {
    v29 = selfCopy;
    _remoteUIIdentityToken2 = [location[0] _remoteUIIdentityToken];
    [(AKAppleIDServerResourceLoadDelegate *)v29 setIdentityToken:?];
    MEMORY[0x1E69E5920](_remoteUIIdentityToken2);
  }

  -[AKAppleIDServerResourceLoadDelegate setServiceType:](selfCopy, "setServiceType:", [location[0] serviceType]);
  v8 = selfCopy;
  appProvidedContext = [location[0] appProvidedContext];
  [(AKAppleIDServerResourceLoadDelegate *)v8 setAppProvidedContext:?];
  MEMORY[0x1E69E5920](appProvidedContext);
  v10 = selfCopy;
  _proxiedAppName = [location[0] _proxiedAppName];
  [(AKAppleIDServerResourceLoadDelegate *)v10 setProxyAppName:?];
  MEMORY[0x1E69E5920](_proxiedAppName);
  [(AKAppleIDServerResourceLoadDelegate *)selfCopy setShouldSendPhoneNumber:1];
  v12 = selfCopy;
  hasEmptyPassword = [location[0] hasEmptyPassword];
  [(AKAppleIDServerResourceLoadDelegate *)v12 setHasEmptyPasswordOverride:?];
  MEMORY[0x1E69E5920](hasEmptyPassword);
  v14 = selfCopy;
  securityUpgradeContext = [location[0] securityUpgradeContext];
  [(AKAppleIDServerResourceLoadDelegate *)v14 setSecurityUpgradeContext:?];
  MEMORY[0x1E69E5920](securityUpgradeContext);
  -[AKAppleIDServerResourceLoadDelegate setShouldSendICSCIntentHeader:](selfCopy, "setShouldSendICSCIntentHeader:", [location[0] anticipateEscrowAttempt]);
  -[AKAppleIDServerResourceLoadDelegate setShouldOfferSecurityUpgrade:](selfCopy, "setShouldOfferSecurityUpgrade:", [location[0] shouldOfferSecurityUpgrade]);
  v45 = +[AKFollowUpProviderFactory sharedAuthKitFollowupProvider];
  v16 = MEMORY[0x1E696AE40];
  v18 = [v45 pendingFollowUpItems:?];
  v17 = [AKFollowUpServerPayloadFormatter pendingAuthKitFollowUpPayload:?];
  v44 = [v16 dataWithPropertyList:? format:? options:? error:?];
  MEMORY[0x1E69E5920](v17);
  MEMORY[0x1E69E5920](v18);
  v19 = selfCopy;
  v20 = [v44 base64EncodedStringWithOptions:0];
  [(AKAppleIDServerResourceLoadDelegate *)v19 setFollowupItems:?];
  MEMORY[0x1E69E5920](v20);
  v21 = selfCopy;
  proxiedDeviceAnisetteData = [location[0] proxiedDeviceAnisetteData];
  [(AKAppleIDServerResourceLoadDelegate *)v21 setProxiedDeviceAnisetteData:?];
  MEMORY[0x1E69E5920](proxiedDeviceAnisetteData);
  v23 = selfCopy;
  proxiedDevice2 = [location[0] proxiedDevice];
  [(AKAppleIDServerResourceLoadDelegate *)v23 setProxiedDevice:?];
  MEMORY[0x1E69E5920](proxiedDevice2);
  v25 = selfCopy;
  anisetteDataProvider = [location[0] anisetteDataProvider];
  [(AKAppleIDServerResourceLoadDelegate *)v25 setAnisetteDataProvider:?];
  MEMORY[0x1E69E5920](anisetteDataProvider);
  v43 = [location[0] authKitAccount:0];
  v27 = +[AKAccountManager sharedInstance];
  v28 = [(AKAccountManager *)v27 accountIdentifiableTelemetryForAccount:v43];
  MEMORY[0x1E69E5920](v27);
  if (v28)
  {
    v5 = selfCopy;
    telemetryFlowID = [location[0] telemetryFlowID];
    [(AKAppleIDServerResourceLoadDelegate *)v5 setTelemetryFlowID:?];
    MEMORY[0x1E69E5920](telemetryFlowID);
    v7 = +[AKAccountManager sharedInstance];
    v42 = [(AKAccountManager *)v7 telemetryDeviceSessionIDForAccount:v43];
    MEMORY[0x1E69E5920](v7);
    if (v42 && ![@"device_session_id_missing" isEqualToString:v42])
    {
      [location[0] setTelemetryDeviceSessionID:v42];
    }

    v3 = selfCopy;
    telemetryDeviceSessionID = [location[0] telemetryDeviceSessionID];
    [(AKAppleIDServerResourceLoadDelegate *)v3 setTelemetryDeviceSessionID:?];
    MEMORY[0x1E69E5920](telemetryDeviceSessionID);
    objc_storeStrong(&v42, 0);
  }

  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(location, 0);
}

- (void)updateWithAuthResults:(id)results
{
  v33 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  if (selfCopy->_serviceTokenIdentifier)
  {
    v28 = [location[0] objectForKeyedSubscript:@"AKIDMSToken"];
    v14 = [v28 objectForKeyedSubscript:selfCopy->_serviceTokenIdentifier];
    MEMORY[0x1E69E5920](v14);
    if (v14)
    {
      v27 = _AKLogSystem();
      v26 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_64(v32, selfCopy->_serviceTokenIdentifier);
        _os_log_debug_impl(&dword_193225000, v27, v26, "Updating service token for identifier %@ succeeded", v32, 0xCu);
      }

      objc_storeStrong(&v27, 0);
      v3 = [v28 objectForKeyedSubscript:selfCopy->_serviceTokenIdentifier];
      serviceToken = selfCopy->_serviceToken;
      selfCopy->_serviceToken = v3;
      MEMORY[0x1E69E5920](serviceToken);
    }

    else
    {
      v25 = _AKLogSystem();
      v24 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v31, selfCopy->_serviceTokenIdentifier);
        _os_log_error_impl(&dword_193225000, v25, v24, "Updating service token for identifier %@ failed: key not found in results", v31, 0xCu);
      }

      objc_storeStrong(&v25, 0);
    }

    objc_storeStrong(&v28, 0);
  }

  else if (selfCopy->_serviceToken)
  {
    v23 = _AKLogSystem();
    v22 = 16;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v12 = v23;
      v13 = v22;
      __os_log_helper_16_0_0(v21);
      _os_log_error_impl(&dword_193225000, v12, v13, "Custom service token value is set. The results of a reauth are likely unused!", v21, 2u);
    }

    objc_storeStrong(&v23, 0);
  }

  v11 = [location[0] objectForKeyedSubscript:@"AKIdentityToken"];
  MEMORY[0x1E69E5920](v11);
  if (v11)
  {
    v20 = _AKLogSystem();
    v19 = 2;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v9 = v20;
      v10 = v19;
      __os_log_helper_16_0_0(v18);
      _os_log_debug_impl(&dword_193225000, v9, v10, "Updating delegate identity token succeeded.", v18, 2u);
    }

    objc_storeStrong(&v20, 0);
    v7 = selfCopy;
    v8 = [location[0] objectForKeyedSubscript:@"AKIdentityToken"];
    [(AKAppleIDServerResourceLoadDelegate *)v7 setIdentityToken:?];
    MEMORY[0x1E69E5920](v8);
  }

  else
  {
    oslog = _AKLogSystem();
    v16 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v5 = oslog;
      v6 = v16;
      __os_log_helper_16_0_0(v15);
      _os_log_error_impl(&dword_193225000, v5, v6, "Updating delegate identity token failed: key not found in results", v15, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)_harvestContinuationHeadersFromHeaders:(id)headers
{
  v20 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, headers);
  v9 = [AKURLBag bagForAltDSID:0];
  continuationHeaderPrefix = [v9 continuationHeaderPrefix];
  lowercaseString = [continuationHeaderPrefix lowercaseString];
  MEMORY[0x1E69E5920](continuationHeaderPrefix);
  MEMORY[0x1E69E5920](v9);
  v10 = location[0];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__AKAppleIDServerResourceLoadDelegate__harvestContinuationHeadersFromHeaders___block_invoke;
  v14[3] = &unk_1E73D7170;
  v15 = MEMORY[0x1E69E5928](lowercaseString);
  v3 = [v10 aaf_filter:v14];
  continuationHeaders = selfCopy->_continuationHeaders;
  selfCopy->_continuationHeaders = v3;
  MEMORY[0x1E69E5920](continuationHeaders);
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    v6 = type;
    allKeys = [(NSDictionary *)selfCopy->_continuationHeaders allKeys];
    v11 = MEMORY[0x1E69E5928](allKeys);
    __os_log_helper_16_2_1_8_64(v19, v11);
    _os_log_impl(&dword_193225000, log, v6, "Harvested continuation headers %@", v19, 0xCu);
    MEMORY[0x1E69E5920](allKeys);
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&lowercaseString, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

uint64_t __78__AKAppleIDServerResourceLoadDelegate__harvestContinuationHeadersFromHeaders___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v6 = [location[0] lowercaseString];
  v7 = [v6 hasPrefix:a1[4]];
  MEMORY[0x1E69E5920](v6);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v7;
}

- (id)_retrieveContinuationHeaders
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = [(NSDictionary *)self->_continuationHeaders copy];
  v3 = MEMORY[0x1E69E5928](v4[0]);
  objc_storeStrong(v4, 0);

  return v3;
}

- (BOOL)_isResponseSuccessful:(id)successful
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, successful);
  statusCode = [location[0] statusCode];
  v4 = 0;
  if (statusCode >= 200)
  {
    v4 = statusCode < 300;
  }

  objc_storeStrong(location, 0);
  return v4;
}

- (BOOL)_isOTCliqueStatusIn
{
  selfCopy = self;
  v10[1] = a2;
  v10[0] = objc_alloc_init(MEMORY[0x1E697AA88]);
  [v10[0] setContext:*MEMORY[0x1E697AAD0]];
  altDSID = [(AKAppleIDServerResourceLoadDelegate *)selfCopy altDSID];
  [v10[0] setAltDSID:?];
  MEMORY[0x1E69E5920](altDSID);
  v2 = objc_alloc(MEMORY[0x1E697AA80]);
  v9 = [v2 initWithContextData:v10[0]];
  v8 = 0;
  v7 = objc_alloc_init(MEMORY[0x1E697AA98]);
  [v7 setUseCachedAccountStatus:1];
  v6[0] = v8;
  v5 = [v9 fetchCliqueStatus:v7 error:v6];
  objc_storeStrong(&v8, v6[0]);
  v6[1] = v5;
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(v10, 0);
  return v5 == 0;
}

- (id)_accountDSID
{
  selfCopy = self;
  v15[1] = a2;
  v15[0] = +[AKAccountManager sharedInstance];
  v14 = [v15[0] authKitAccountWithAltDSID:selfCopy->_altDSID error:0];
  v13 = [v15[0] DSIDForAccount:v14];
  v2 = objc_opt_class();
  v7 = _AKSafeCast_11(v2, v13);
  v10 = 0;
  v8 = 0;
  if (v7)
  {
    v3 = MEMORY[0x1E69E5928](v7);
  }

  else
  {
    v4 = objc_opt_class();
    v11 = _AKSafeCast_11(v4, v13);
    v10 = 1;
    stringValue = [v11 stringValue];
    v8 = 1;
    v3 = MEMORY[0x1E69E5928](stringValue);
  }

  v12 = v3;
  if (v8)
  {
    MEMORY[0x1E69E5920](stringValue);
  }

  if (v10)
  {
    MEMORY[0x1E69E5920](v11);
  }

  MEMORY[0x1E69E5920](v7);
  v6 = MEMORY[0x1E69E5928](v12);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(v15, 0);

  return v6;
}

@end