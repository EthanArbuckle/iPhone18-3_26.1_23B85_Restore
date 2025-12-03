@interface AKCredentialRequestContext
- (AKCredentialRequestContext)init;
- (AKCredentialRequestContext)initWithCoder:(id)coder;
- (AKCredentialRequestContext)initWithProxiedClientContext:(id)context;
- (AKCredentialRequestContext)initWithUpgradeContext:(id)context;
- (BOOL)_isEligibleForUpgradeFromPassword;
- (BOOL)_isSubscriptionLogin;
- (BOOL)_requirePassword;
- (NSArray)credentialRequests;
- (NSString)_proxiedClientAppID;
- (NSString)_proxiedClientAppName;
- (NSString)_proxiedClientBundleID;
- (NSString)_proxiedClientServiceID;
- (NSString)_proxiedClientTeamID;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setCredentialRequests:(id)requests;
@end

@implementation AKCredentialRequestContext

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_requestIdentifier forKey:@"_requestIdentifier"];
  [location[0] encodeBool:selfCopy->_shouldForceUI forKey:@"_shoudlForceUI"];
  [location[0] encodeBool:selfCopy->_shouldSkipBiometrics forKey:@"_shoudlSkipBiometrics"];
  [location[0] encodeBool:selfCopy->_shouldSkipAuthorizationUI forKey:@"_shoudlSkipUI"];
  [location[0] encodeObject:selfCopy->_iconName forKey:@"_iconName"];
  [location[0] encodeObject:selfCopy->_iconTypeID forKey:@"_iconTypeID"];
  [location[0] encodeObject:selfCopy->_iconData forKey:@"_iconData"];
  [location[0] encodeObject:selfCopy->_iconScale forKey:@"_iconScale"];
  [location[0] encodeObject:selfCopy->_iconSize forKey:@"_iconSize"];
  [location[0] encodeBool:selfCopy->_shouldForcePrivateEmail forKey:@"_shouldForcePrivateEmail"];
  [location[0] encodeObject:selfCopy->_proxiedClientAppName forKey:@"_proxiedClientAppName"];
  [location[0] encodeObject:selfCopy->_proxiedClientBundleID forKey:@"_proxiedClientBundleID"];
  [location[0] encodeObject:selfCopy->_proxiedClientTeamID forKey:@"_proxiedClientTeamID"];
  [location[0] encodeObject:selfCopy->_proxiedClientAppID forKey:@"_proxiedClientAppID"];
  [location[0] encodeObject:selfCopy->_proxiedAssociatedDomains forKey:@"_proxiedAssociatedDomains"];
  [location[0] encodeObject:selfCopy->_proxiedDeviceName forKey:@"_proxiedDeviceName"];
  [location[0] encodeObject:selfCopy->_proxiedDeviceClass forKey:@"_proxiedDeviceClass"];
  [location[0] encodeObject:selfCopy->_authorizationRequest forKey:@"_authorizationRequests"];
  [location[0] encodeObject:selfCopy->_passwordRequest forKey:@"_passwordRequests"];
  [location[0] encodeBool:selfCopy->_isWebLogin forKey:@"_isWebLogin"];
  [location[0] encodeBool:selfCopy->_isFirstPartyLogin forKey:@"_isFirstPartyLogin"];
  [location[0] encodeBool:selfCopy->_isRapportLogin forKey:@"_isRapportLogin"];
  [location[0] encodeBool:selfCopy->_isEligibleForUpgradeFromPassword forKey:@"_upgradeFromPassword"];
  [location[0] encodeObject:selfCopy->_callerBundleID forKey:@"_callerBundleID"];
  [location[0] encodeObject:selfCopy->_callerSceneID forKey:@"_callerSceneID"];
  [location[0] encodeBool:selfCopy->_requirePassword forKey:@"_requirePassword"];
  [location[0] encodeObject:selfCopy->_proxiedClientServiceID forKey:@"_proxiedServiceID"];
  [location[0] encodeObject:selfCopy->_upgradeContext forKey:@"_upgradeContext"];
  [location[0] encodeBool:selfCopy->_clientShouldAuthenticateExternally forKey:@"_clientShouldAuthenticateExternally"];
  [location[0] encodeDouble:@"_authSessionTimeout" forKey:selfCopy->_authSessionTimeoutInterval];
  [location[0] encodeObject:selfCopy->_externalAuthToken forKey:@"_externalAuthToken"];
  [location[0] encodeObject:selfCopy->_externalLocalAuthData forKey:@"_externalLocalAuthData"];
  [location[0] encodeObject:selfCopy->_continuationRequestIdentifier forKey:@"_continuationRequestIdentifier"];
  [location[0] encodeInteger:selfCopy->_requestOptions forKey:@"_requestOptions"];
  [location[0] encodeObject:selfCopy->_sessionID forKey:@"_sessionID"];
  [location[0] encodeBool:selfCopy->_shouldUseProxiedClientBundleIDForSRP forKey:@"_shouldUseProxiedClientBundleIDForSRP"];
  [location[0] encodeBool:selfCopy->_isItunesLogin forKey:@"_isItunesLogin"];
  [location[0] encodeBool:selfCopy->_shouldShowAdditionalCTA forKey:@"_shouldShowAdditionalCTA"];
  objc_storeStrong(location, 0);
}

- (AKCredentialRequestContext)initWithCoder:(id)coder
{
  v124 = &selfCopy;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v126.receiver = v3;
  v126.super_class = AKCredentialRequestContext;
  selfCopy = [(AKCredentialRequestContext *)&v126 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v96 = MEMORY[0x1E695DFD8];
    v95 = objc_opt_class();
    v120 = 0x1E696A000uLL;
    v122 = 0;
    v4 = [v96 setWithObjects:{v95, objc_opt_class(), 0}];
    v123 = &v125;
    v125 = v4;
    v97 = location[0];
    v5 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_requestIdentifier"];
    requestIdentifier = selfCopy->_requestIdentifier;
    selfCopy->_requestIdentifier = v5;
    MEMORY[0x1E69E5920](requestIdentifier);
    v7 = [location[0] decodeBoolForKey:@"_shoudlForceUI"];
    selfCopy->_shouldForceUI = v7;
    v8 = [location[0] decodeBoolForKey:@"_shoudlSkipBiometrics"];
    selfCopy->_shouldSkipBiometrics = v8;
    v9 = [location[0] decodeBoolForKey:@"_shoudlSkipUI"];
    v10 = v120;
    selfCopy->_shouldSkipAuthorizationUI = v9;
    v98 = location[0];
    v11 = *(v10 + 3776);
    v12 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_iconName"];
    iconName = selfCopy->_iconName;
    selfCopy->_iconName = v12;
    MEMORY[0x1E69E5920](iconName);
    v99 = location[0];
    v14 = *(v120 + 3776);
    v15 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_iconTypeID"];
    iconTypeID = selfCopy->_iconTypeID;
    selfCopy->_iconTypeID = v15;
    MEMORY[0x1E69E5920](iconTypeID);
    v100 = location[0];
    v117 = 0x1E695D000uLL;
    v17 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_iconData"];
    iconData = selfCopy->_iconData;
    selfCopy->_iconData = v17;
    MEMORY[0x1E69E5920](iconData);
    v101 = location[0];
    v19 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_iconScale"];
    iconScale = selfCopy->_iconScale;
    selfCopy->_iconScale = v19;
    MEMORY[0x1E69E5920](iconScale);
    v102 = location[0];
    v21 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_iconSize"];
    iconSize = selfCopy->_iconSize;
    selfCopy->_iconSize = v21;
    MEMORY[0x1E69E5920](iconSize);
    v23 = [location[0] decodeBoolForKey:@"_shouldForcePrivateEmail"];
    v24 = v120;
    selfCopy->_shouldForcePrivateEmail = v23;
    v103 = location[0];
    v25 = *(v24 + 3776);
    v26 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_proxiedClientAppName"];
    proxiedClientAppName = selfCopy->_proxiedClientAppName;
    selfCopy->_proxiedClientAppName = v26;
    MEMORY[0x1E69E5920](proxiedClientAppName);
    v104 = location[0];
    v28 = *(v120 + 3776);
    v29 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_proxiedClientBundleID"];
    proxiedClientBundleID = selfCopy->_proxiedClientBundleID;
    selfCopy->_proxiedClientBundleID = v29;
    MEMORY[0x1E69E5920](proxiedClientBundleID);
    v105 = location[0];
    v31 = *(v120 + 3776);
    v32 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_proxiedClientTeamID"];
    proxiedClientTeamID = selfCopy->_proxiedClientTeamID;
    selfCopy->_proxiedClientTeamID = v32;
    MEMORY[0x1E69E5920](proxiedClientTeamID);
    v106 = location[0];
    v34 = *(v120 + 3776);
    v35 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_proxiedClientAppID"];
    proxiedClientAppID = selfCopy->_proxiedClientAppID;
    selfCopy->_proxiedClientAppID = v35;
    MEMORY[0x1E69E5920](proxiedClientAppID);
    v37 = [location[0] decodeObjectOfClasses:v125 forKey:@"_proxiedAssociatedDomains"];
    proxiedAssociatedDomains = selfCopy->_proxiedAssociatedDomains;
    selfCopy->_proxiedAssociatedDomains = v37;
    MEMORY[0x1E69E5920](proxiedAssociatedDomains);
    v107 = location[0];
    v39 = *(v120 + 3776);
    v40 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_proxiedDeviceName"];
    proxiedDeviceName = selfCopy->_proxiedDeviceName;
    selfCopy->_proxiedDeviceName = v40;
    MEMORY[0x1E69E5920](proxiedDeviceName);
    v108 = location[0];
    v42 = *(v120 + 3776);
    v43 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_proxiedDeviceClass"];
    proxiedDeviceClass = selfCopy->_proxiedDeviceClass;
    selfCopy->_proxiedDeviceClass = v43;
    MEMORY[0x1E69E5920](proxiedDeviceClass);
    v109 = location[0];
    v45 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_authorizationRequests"];
    authorizationRequest = selfCopy->_authorizationRequest;
    selfCopy->_authorizationRequest = v45;
    MEMORY[0x1E69E5920](authorizationRequest);
    v110 = location[0];
    v47 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_passwordRequests"];
    passwordRequest = selfCopy->_passwordRequest;
    selfCopy->_passwordRequest = v47;
    MEMORY[0x1E69E5920](passwordRequest);
    v49 = [location[0] decodeBoolForKey:@"_isWebLogin"];
    selfCopy->_isWebLogin = v49;
    v50 = [location[0] decodeBoolForKey:@"_isFirstPartyLogin"];
    selfCopy->_isFirstPartyLogin = v50;
    v51 = [location[0] decodeBoolForKey:@"_isRapportLogin"];
    selfCopy->_isRapportLogin = v51;
    v52 = [location[0] decodeBoolForKey:@"_upgradeFromPassword"];
    v53 = v120;
    selfCopy->_isEligibleForUpgradeFromPassword = v52;
    v111 = location[0];
    v54 = *(v53 + 3776);
    v55 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_callerBundleID"];
    callerBundleID = selfCopy->_callerBundleID;
    selfCopy->_callerBundleID = v55;
    MEMORY[0x1E69E5920](callerBundleID);
    v112 = location[0];
    v57 = *(v120 + 3776);
    v58 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_callerSceneID"];
    callerSceneID = selfCopy->_callerSceneID;
    selfCopy->_callerSceneID = v58;
    MEMORY[0x1E69E5920](callerSceneID);
    v60 = [location[0] decodeBoolForKey:@"_requirePassword"];
    selfCopy->_requirePassword = v60;
    v113 = +[AKDevice currentDevice];
    isProtectedWithPasscode = [v113 isProtectedWithPasscode];
    v62 = v113;
    selfCopy->_passcodeProtected = isProtectedWithPasscode;
    MEMORY[0x1E69E5920](v62);
    v114 = location[0];
    v63 = *(v120 + 3776);
    v64 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_proxiedServiceID"];
    proxiedClientServiceID = selfCopy->_proxiedClientServiceID;
    selfCopy->_proxiedClientServiceID = v64;
    MEMORY[0x1E69E5920](proxiedClientServiceID);
    v115 = location[0];
    v66 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_upgradeContext"];
    upgradeContext = selfCopy->_upgradeContext;
    selfCopy->_upgradeContext = v66;
    MEMORY[0x1E69E5920](upgradeContext);
    v68 = [location[0] decodeBoolForKey:@"_clientShouldAuthenticateExternally"];
    selfCopy->_clientShouldAuthenticateExternally = v68;
    [location[0] decodeDoubleForKey:@"_authSessionTimeout"];
    v69 = v120;
    selfCopy->_authSessionTimeoutInterval = v70;
    v116 = location[0];
    v71 = *(v69 + 3776);
    v72 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_externalAuthToken"];
    externalAuthToken = selfCopy->_externalAuthToken;
    selfCopy->_externalAuthToken = v72;
    MEMORY[0x1E69E5920](externalAuthToken);
    v118 = location[0];
    v74 = *(v117 + 3824);
    v75 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_externalLocalAuthData"];
    externalLocalAuthData = selfCopy->_externalLocalAuthData;
    selfCopy->_externalLocalAuthData = v75;
    MEMORY[0x1E69E5920](externalLocalAuthData);
    v119 = location[0];
    v77 = *(v120 + 3776);
    v78 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_continuationRequestIdentifier"];
    continuationRequestIdentifier = selfCopy->_continuationRequestIdentifier;
    selfCopy->_continuationRequestIdentifier = v78;
    MEMORY[0x1E69E5920](continuationRequestIdentifier);
    v80 = [location[0] decodeIntegerForKey:@"_requestOptions"];
    v81 = v120;
    selfCopy->_requestOptions = v80;
    v121 = location[0];
    v82 = *(v81 + 3776);
    v83 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_sessionID"];
    sessionID = selfCopy->_sessionID;
    selfCopy->_sessionID = v83;
    MEMORY[0x1E69E5920](sessionID);
    v85 = [location[0] decodeBoolForKey:@"_shouldUseProxiedClientBundleIDForSRP"];
    selfCopy->_shouldUseProxiedClientBundleIDForSRP = v85;
    v86 = [location[0] decodeBoolForKey:@"_isItunesLogin"];
    selfCopy->_isItunesLogin = v86;
    v87 = [location[0] decodeBoolForKey:@"_shouldShowAdditionalCTA"];
    v88 = v122;
    v89 = v87;
    v90 = v123;
    selfCopy->_shouldShowAdditionalCTA = v89;
    objc_storeStrong(v90, v88);
  }

  v92 = &selfCopy;
  v94 = MEMORY[0x1E69E5928](selfCopy);
  obj = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(v92, obj);
  return v94;
}

- (AKCredentialRequestContext)init
{
  v10 = a2;
  v11 = 0;
  v9.receiver = self;
  v9.super_class = AKCredentialRequestContext;
  v8 = [(AKCredentialRequestContext *)&v9 init];
  v11 = v8;
  objc_storeStrong(&v11, v8);
  if (v8)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    requestIdentifier = v11->_requestIdentifier;
    v11->_requestIdentifier = uUID;
    MEMORY[0x1E69E5920](requestIdentifier);
    v7 = +[AKDevice currentDevice];
    isProtectedWithPasscode = [v7 isProtectedWithPasscode];
    v11->_passcodeProtected = isProtectedWithPasscode;
    MEMORY[0x1E69E5920](v7);
  }

  v6 = MEMORY[0x1E69E5928](v11);
  objc_storeStrong(&v11, 0);
  return v6;
}

- (AKCredentialRequestContext)initWithUpgradeContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v3 = selfCopy;
  selfCopy = 0;
  v12 = [(AKCredentialRequestContext *)v3 init];
  selfCopy = v12;
  objc_storeStrong(&selfCopy, v12);
  if (v12)
  {
    objc_storeStrong(&selfCopy->_upgradeContext, location[0]);
    v4 = objc_alloc_init(AKAuthorizationRequest);
    authorizationRequest = selfCopy->_authorizationRequest;
    selfCopy->_authorizationRequest = v4;
    MEMORY[0x1E69E5920](authorizationRequest);
    bundleID = [location[0] bundleID];
    [(AKAuthorizationRequest *)selfCopy->_authorizationRequest setClientID:?];
    MEMORY[0x1E69E5920](bundleID);
    teamID = [location[0] teamID];
    [(AKAuthorizationRequest *)selfCopy->_authorizationRequest setTeamID:?];
    MEMORY[0x1E69E5920](teamID);
    nonce = [location[0] nonce];
    [(AKAuthorizationRequest *)selfCopy->_authorizationRequest setNonce:?];
    MEMORY[0x1E69E5920](nonce);
    state = [location[0] state];
    [(AKAuthorizationRequest *)selfCopy->_authorizationRequest setState:?];
    MEMORY[0x1E69E5920](state);
    [(AKAuthorizationRequest *)selfCopy->_authorizationRequest setIsEligibleForUpgradeFromPassword:1];
  }

  v7 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (AKCredentialRequestContext)initWithProxiedClientContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v3 = selfCopy;
  selfCopy = 0;
  v29 = [(AKCredentialRequestContext *)v3 init];
  selfCopy = v29;
  objc_storeStrong(&selfCopy, v29);
  if (v29)
  {
    teamID = [location[0] teamID];
    v4 = [teamID copy];
    proxiedClientTeamID = selfCopy->_proxiedClientTeamID;
    selfCopy->_proxiedClientTeamID = v4;
    MEMORY[0x1E69E5920](proxiedClientTeamID);
    MEMORY[0x1E69E5920](teamID);
    bundleID = [location[0] bundleID];
    v6 = [bundleID copy];
    proxiedClientBundleID = selfCopy->_proxiedClientBundleID;
    selfCopy->_proxiedClientBundleID = v6;
    MEMORY[0x1E69E5920](proxiedClientBundleID);
    MEMORY[0x1E69E5920](bundleID);
    appID = [location[0] appID];
    v8 = [appID copy];
    proxiedClientAppID = selfCopy->_proxiedClientAppID;
    selfCopy->_proxiedClientAppID = v8;
    MEMORY[0x1E69E5920](proxiedClientAppID);
    MEMORY[0x1E69E5920](appID);
    appName = [location[0] appName];
    v10 = [appName copy];
    proxiedClientAppName = selfCopy->_proxiedClientAppName;
    selfCopy->_proxiedClientAppName = v10;
    MEMORY[0x1E69E5920](proxiedClientAppName);
    MEMORY[0x1E69E5920](appName);
    associatedDomains = [location[0] associatedDomains];
    v12 = [associatedDomains copy];
    proxiedAssociatedDomains = selfCopy->_proxiedAssociatedDomains;
    selfCopy->_proxiedAssociatedDomains = v12;
    MEMORY[0x1E69E5920](proxiedAssociatedDomains);
    MEMORY[0x1E69E5920](associatedDomains);
    deviceClass = [location[0] deviceClass];
    v14 = [deviceClass copy];
    proxiedDeviceClass = selfCopy->_proxiedDeviceClass;
    selfCopy->_proxiedDeviceClass = v14;
    MEMORY[0x1E69E5920](proxiedDeviceClass);
    MEMORY[0x1E69E5920](deviceClass);
    deviceName = [location[0] deviceName];
    v16 = [deviceName copy];
    proxiedDeviceName = selfCopy->_proxiedDeviceName;
    selfCopy->_proxiedDeviceName = v16;
    MEMORY[0x1E69E5920](proxiedDeviceName);
    MEMORY[0x1E69E5920](deviceName);
    isRapportLogin = [location[0] isRapportLogin];
    selfCopy->_isRapportLogin = isRapportLogin;
    shouldSkipAuthorizationUI = [location[0] shouldSkipAuthorizationUI];
    selfCopy->_shouldSkipAuthorizationUI = shouldSkipAuthorizationUI;
  }

  v21 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v21;
}

- (void)setCredentialRequests:(id)requests
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, requests);
  v3 = [location[0] aaf_firstObjectPassingTest:&__block_literal_global_14];
  passwordRequest = selfCopy->_passwordRequest;
  selfCopy->_passwordRequest = v3;
  MEMORY[0x1E69E5920](passwordRequest);
  v5 = [location[0] aaf_firstObjectPassingTest:&__block_literal_global_145];
  authorizationRequest = selfCopy->_authorizationRequest;
  selfCopy->_authorizationRequest = v5;
  MEMORY[0x1E69E5920](authorizationRequest);
  objc_storeStrong(location, 0);
}

uint64_t __52__AKCredentialRequestContext_setCredentialRequests___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

uint64_t __52__AKCredentialRequestContext_setCredentialRequests___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

- (BOOL)_isEligibleForUpgradeFromPassword
{
  v3 = 1;
  if (!self->_upgradeContext)
  {
    return [(AKAuthorizationRequest *)self->_authorizationRequest isEligibleForUpgradeFromPassword];
  }

  return v3;
}

- (BOOL)_isSubscriptionLogin
{
  v3 = 1;
  if (!self->_clientShouldAuthenticateExternally)
  {
    return self->_shouldUseProxiedClientBundleIDForSRP;
  }

  return v3;
}

- (NSString)_proxiedClientAppName
{
  if (self->_upgradeContext)
  {
    appName = [(AKAuthorizationUpgradeContext *)self->_upgradeContext appName];
  }

  else
  {
    appName = MEMORY[0x1E69E5928](self->_proxiedClientAppName);
  }

  return appName;
}

- (NSString)_proxiedClientBundleID
{
  if (self->_upgradeContext)
  {
    bundleID = [(AKAuthorizationUpgradeContext *)self->_upgradeContext bundleID];
  }

  else
  {
    bundleID = MEMORY[0x1E69E5928](self->_proxiedClientBundleID);
  }

  return bundleID;
}

- (NSString)_proxiedClientServiceID
{
  if (self->_upgradeContext)
  {
    serviceID = [(AKAuthorizationUpgradeContext *)self->_upgradeContext serviceID];
  }

  else
  {
    serviceID = MEMORY[0x1E69E5928](self->_proxiedClientServiceID);
  }

  return serviceID;
}

- (NSString)_proxiedClientTeamID
{
  if (self->_upgradeContext)
  {
    teamID = [(AKAuthorizationUpgradeContext *)self->_upgradeContext teamID];
  }

  else
  {
    teamID = MEMORY[0x1E69E5928](self->_proxiedClientTeamID);
  }

  return teamID;
}

- (NSString)_proxiedClientAppID
{
  if (self->_upgradeContext)
  {
    appID = [(AKAuthorizationUpgradeContext *)self->_upgradeContext appID];
  }

  else
  {
    appID = MEMORY[0x1E69E5928](self->_proxiedClientAppID);
  }

  return appID;
}

- (NSArray)credentialRequests
{
  selfCopy = self;
  v4[1] = a2;
  v4[0] = [MEMORY[0x1E695DF70] array];
  if (selfCopy->_passwordRequest)
  {
    [v4[0] addObject:selfCopy->_passwordRequest];
  }

  if (selfCopy->_authorizationRequest)
  {
    [v4[0] addObject:selfCopy->_authorizationRequest];
  }

  v3 = MEMORY[0x1E69E5928](v4[0]);
  objc_storeStrong(v4, 0);

  return v3;
}

- (BOOL)_requirePassword
{
  v23 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v20 = a2;
  v19 = 0;
  authorizationRequest = [(AKCredentialRequestContext *)self authorizationRequest];
  MEMORY[0x1E69E5920](authorizationRequest);
  if (authorizationRequest)
  {
    v18 = 0;
    v13 = +[AKAccountManager sharedInstance];
    authorizationRequest2 = [(AKCredentialRequestContext *)selfCopy authorizationRequest];
    altDSID = [(AKAuthorizationRequest *)authorizationRequest2 altDSID];
    v16 = v18;
    v10 = [AKAccountManager authKitAccountWithAltDSID:v13 error:"authKitAccountWithAltDSID:error:"];
    objc_storeStrong(&v18, v16);
    authkitAccount = v10;
    MEMORY[0x1E69E5920](altDSID);
    MEMORY[0x1E69E5920](authorizationRequest2);
    MEMORY[0x1E69E5920](v13);
    if (!v10)
    {
      authorizationRequest3 = [(AKCredentialRequestContext *)selfCopy authorizationRequest];
      authkitAccount = [(AKAuthorizationRequest *)authorizationRequest3 authkitAccount];
      MEMORY[0x1E69E5920](0);
      MEMORY[0x1E69E5920](authorizationRequest3);
    }

    if (authkitAccount)
    {
      v8 = +[AKAccountManager sharedInstance];
      v2 = [(AKAccountManager *)v8 continuationTokenForAccount:authkitAccount];
      v19 = v2 == 0;
      MEMORY[0x1E69E5920](v2);
      MEMORY[0x1E69E5920](v8);
    }

    objc_storeStrong(&authkitAccount, 0);
    objc_storeStrong(&v18, 0);
  }

  v15 = _AKLogSiwa();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (selfCopy->_passcodeProtected)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    if (selfCopy->_requirePassword)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    if (v19)
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    __os_log_helper_16_2_3_8_64_8_64_8_64(v22, v3, v4, v5);
    _os_log_impl(&dword_193225000, v15, OS_LOG_TYPE_DEFAULT, "Passcode protected: %@ _requirePassword: %@ missingCK: %@", v22, 0x20u);
  }

  objc_storeStrong(&v15, 0);
  v7 = 1;
  if (!selfCopy->_requirePassword)
  {
    v7 = 1;
    if (selfCopy->_passcodeProtected)
    {
      v7 = v19;
    }
  }

  *MEMORY[0x1E69E9840];
  return v7 & 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v53[2] = a2;
  v53[1] = zone;
  v53[0] = objc_alloc_init(AKCredentialRequestContext);
  v3 = [(NSUUID *)selfCopy->_requestIdentifier copy];
  v4 = *(v53[0] + 25);
  *(v53[0] + 25) = v3;
  MEMORY[0x1E69E5920](v4);
  *(v53[0] + 9) = selfCopy->_shouldForceUI;
  *(v53[0] + 10) = selfCopy->_shouldSkipBiometrics;
  *(v53[0] + 11) = selfCopy->_shouldSkipAuthorizationUI;
  v5 = [(NSString *)selfCopy->_iconName copy];
  v6 = *(v53[0] + 5);
  *(v53[0] + 5) = v5;
  MEMORY[0x1E69E5920](v6);
  v7 = [(NSString *)selfCopy->_iconTypeID copy];
  v8 = *(v53[0] + 6);
  *(v53[0] + 6) = v7;
  MEMORY[0x1E69E5920](v8);
  v9 = [(NSData *)selfCopy->_iconData copy];
  v10 = *(v53[0] + 7);
  *(v53[0] + 7) = v9;
  MEMORY[0x1E69E5920](v10);
  v11 = [(NSNumber *)selfCopy->_iconScale copy];
  v12 = *(v53[0] + 8);
  *(v53[0] + 8) = v11;
  MEMORY[0x1E69E5920](v12);
  v13 = [(NSValue *)selfCopy->_iconSize copy];
  v14 = *(v53[0] + 9);
  *(v53[0] + 9) = v13;
  MEMORY[0x1E69E5920](v14);
  *(v53[0] + 12) = selfCopy->_shouldForcePrivateEmail;
  v15 = [(NSString *)selfCopy->_proxiedClientAppName copy];
  v16 = *(v53[0] + 10);
  *(v53[0] + 10) = v15;
  MEMORY[0x1E69E5920](v16);
  v17 = [(NSString *)selfCopy->_proxiedClientBundleID copy];
  v18 = *(v53[0] + 11);
  *(v53[0] + 11) = v17;
  MEMORY[0x1E69E5920](v18);
  v19 = [(NSString *)selfCopy->_proxiedClientTeamID copy];
  v20 = *(v53[0] + 13);
  *(v53[0] + 13) = v19;
  MEMORY[0x1E69E5920](v20);
  v21 = [(NSString *)selfCopy->_proxiedClientAppID copy];
  v22 = *(v53[0] + 12);
  *(v53[0] + 12) = v21;
  MEMORY[0x1E69E5920](v22);
  v23 = [(NSArray *)selfCopy->_proxiedAssociatedDomains copy];
  v24 = *(v53[0] + 14);
  *(v53[0] + 14) = v23;
  MEMORY[0x1E69E5920](v24);
  v25 = [(NSString *)selfCopy->_proxiedDeviceName copy];
  v26 = *(v53[0] + 17);
  *(v53[0] + 17) = v25;
  MEMORY[0x1E69E5920](v26);
  v27 = [(NSString *)selfCopy->_proxiedDeviceClass copy];
  v28 = *(v53[0] + 18);
  *(v53[0] + 18) = v27;
  MEMORY[0x1E69E5920](v28);
  v29 = [(AKAuthorizationRequest *)selfCopy->_authorizationRequest copy];
  v30 = *(v53[0] + 27);
  *(v53[0] + 27) = v29;
  MEMORY[0x1E69E5920](v30);
  v31 = [(AKPasswordRequest *)selfCopy->_passwordRequest copy];
  v32 = *(v53[0] + 28);
  *(v53[0] + 28) = v31;
  MEMORY[0x1E69E5920](v32);
  *(v53[0] + 14) = selfCopy->_isWebLogin;
  *(v53[0] + 15) = selfCopy->_isFirstPartyLogin;
  *(v53[0] + 16) = selfCopy->_isRapportLogin;
  *(v53[0] + 17) = selfCopy->_isEligibleForUpgradeFromPassword;
  v33 = [(NSString *)selfCopy->_callerBundleID copy];
  v34 = *(v53[0] + 15);
  *(v53[0] + 15) = v33;
  MEMORY[0x1E69E5920](v34);
  v35 = [(NSString *)selfCopy->_callerSceneID copy];
  v36 = *(v53[0] + 16);
  *(v53[0] + 16) = v35;
  MEMORY[0x1E69E5920](v36);
  *(v53[0] + 13) = selfCopy->_requirePassword;
  v51 = +[AKDevice currentDevice];
  isProtectedWithPasscode = [v51 isProtectedWithPasscode];
  *(v53[0] + 8) = isProtectedWithPasscode;
  MEMORY[0x1E69E5920](v51);
  v38 = [(NSString *)selfCopy->_proxiedClientServiceID copy];
  v39 = *(v53[0] + 19);
  *(v53[0] + 19) = v38;
  MEMORY[0x1E69E5920](v39);
  v40 = [(AKAuthorizationUpgradeContext *)selfCopy->_upgradeContext copy];
  v41 = *(v53[0] + 20);
  *(v53[0] + 20) = v40;
  MEMORY[0x1E69E5920](v41);
  *(v53[0] + 18) = selfCopy->_clientShouldAuthenticateExternally;
  *(v53[0] + 21) = *&selfCopy->_authSessionTimeoutInterval;
  v42 = [(NSString *)selfCopy->_externalAuthToken copy];
  v43 = *(v53[0] + 22);
  *(v53[0] + 22) = v42;
  MEMORY[0x1E69E5920](v43);
  v44 = [(NSData *)selfCopy->_externalLocalAuthData copy];
  v45 = *(v53[0] + 23);
  *(v53[0] + 23) = v44;
  MEMORY[0x1E69E5920](v45);
  v46 = [(NSString *)selfCopy->_continuationRequestIdentifier copy];
  v47 = *(v53[0] + 24);
  *(v53[0] + 24) = v46;
  MEMORY[0x1E69E5920](v47);
  *(v53[0] + 26) = selfCopy->_requestOptions;
  v48 = [(NSString *)selfCopy->_sessionID copy];
  v49 = *(v53[0] + 3);
  *(v53[0] + 3) = v48;
  MEMORY[0x1E69E5920](v49);
  *(v53[0] + 19) = selfCopy->_shouldUseProxiedClientBundleIDForSRP;
  *(v53[0] + 20) = selfCopy->_isItunesLogin;
  *(v53[0] + 21) = selfCopy->_shouldShowAdditionalCTA;
  v52 = MEMORY[0x1E69E5928](v53[0]);
  objc_storeStrong(v53, 0);
  return v52;
}

- (id)description
{
  v4 = MEMORY[0x1E696AEC0];
  v2 = objc_opt_class();
  v5 = NSStringFromClass(v2);
  v6 = [v4 stringWithFormat:@"<%@: %p> \nAuthorization Request %@ \nPassword Request: %@ \nProxied App Name: %@\nProxied BundleID: %@\nProxied Team: %@ \nSession ID: %@ \n_isWebLogin: %d \n_isFirstPartyLogin: %d \n", v5, self, self->_authorizationRequest, self->_passwordRequest, self->_proxiedClientAppName, self->_proxiedClientBundleID, self->_proxiedClientTeamID, self->_sessionID, self->_isWebLogin, self->_isFirstPartyLogin];
  MEMORY[0x1E69E5920](v5);

  return v6;
}

@end