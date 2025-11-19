@interface AKCredentialRequestContext
- (AKCredentialRequestContext)init;
- (AKCredentialRequestContext)initWithCoder:(id)a3;
- (AKCredentialRequestContext)initWithProxiedClientContext:(id)a3;
- (AKCredentialRequestContext)initWithUpgradeContext:(id)a3;
- (BOOL)_isEligibleForUpgradeFromPassword;
- (BOOL)_isSubscriptionLogin;
- (BOOL)_requirePassword;
- (NSArray)credentialRequests;
- (NSString)_proxiedClientAppID;
- (NSString)_proxiedClientAppName;
- (NSString)_proxiedClientBundleID;
- (NSString)_proxiedClientServiceID;
- (NSString)_proxiedClientTeamID;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setCredentialRequests:(id)a3;
@end

@implementation AKCredentialRequestContext

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_requestIdentifier forKey:@"_requestIdentifier"];
  [location[0] encodeBool:v4->_shouldForceUI forKey:@"_shoudlForceUI"];
  [location[0] encodeBool:v4->_shouldSkipBiometrics forKey:@"_shoudlSkipBiometrics"];
  [location[0] encodeBool:v4->_shouldSkipAuthorizationUI forKey:@"_shoudlSkipUI"];
  [location[0] encodeObject:v4->_iconName forKey:@"_iconName"];
  [location[0] encodeObject:v4->_iconTypeID forKey:@"_iconTypeID"];
  [location[0] encodeObject:v4->_iconData forKey:@"_iconData"];
  [location[0] encodeObject:v4->_iconScale forKey:@"_iconScale"];
  [location[0] encodeObject:v4->_iconSize forKey:@"_iconSize"];
  [location[0] encodeBool:v4->_shouldForcePrivateEmail forKey:@"_shouldForcePrivateEmail"];
  [location[0] encodeObject:v4->_proxiedClientAppName forKey:@"_proxiedClientAppName"];
  [location[0] encodeObject:v4->_proxiedClientBundleID forKey:@"_proxiedClientBundleID"];
  [location[0] encodeObject:v4->_proxiedClientTeamID forKey:@"_proxiedClientTeamID"];
  [location[0] encodeObject:v4->_proxiedClientAppID forKey:@"_proxiedClientAppID"];
  [location[0] encodeObject:v4->_proxiedAssociatedDomains forKey:@"_proxiedAssociatedDomains"];
  [location[0] encodeObject:v4->_proxiedDeviceName forKey:@"_proxiedDeviceName"];
  [location[0] encodeObject:v4->_proxiedDeviceClass forKey:@"_proxiedDeviceClass"];
  [location[0] encodeObject:v4->_authorizationRequest forKey:@"_authorizationRequests"];
  [location[0] encodeObject:v4->_passwordRequest forKey:@"_passwordRequests"];
  [location[0] encodeBool:v4->_isWebLogin forKey:@"_isWebLogin"];
  [location[0] encodeBool:v4->_isFirstPartyLogin forKey:@"_isFirstPartyLogin"];
  [location[0] encodeBool:v4->_isRapportLogin forKey:@"_isRapportLogin"];
  [location[0] encodeBool:v4->_isEligibleForUpgradeFromPassword forKey:@"_upgradeFromPassword"];
  [location[0] encodeObject:v4->_callerBundleID forKey:@"_callerBundleID"];
  [location[0] encodeObject:v4->_callerSceneID forKey:@"_callerSceneID"];
  [location[0] encodeBool:v4->_requirePassword forKey:@"_requirePassword"];
  [location[0] encodeObject:v4->_proxiedClientServiceID forKey:@"_proxiedServiceID"];
  [location[0] encodeObject:v4->_upgradeContext forKey:@"_upgradeContext"];
  [location[0] encodeBool:v4->_clientShouldAuthenticateExternally forKey:@"_clientShouldAuthenticateExternally"];
  [location[0] encodeDouble:@"_authSessionTimeout" forKey:v4->_authSessionTimeoutInterval];
  [location[0] encodeObject:v4->_externalAuthToken forKey:@"_externalAuthToken"];
  [location[0] encodeObject:v4->_externalLocalAuthData forKey:@"_externalLocalAuthData"];
  [location[0] encodeObject:v4->_continuationRequestIdentifier forKey:@"_continuationRequestIdentifier"];
  [location[0] encodeInteger:v4->_requestOptions forKey:@"_requestOptions"];
  [location[0] encodeObject:v4->_sessionID forKey:@"_sessionID"];
  [location[0] encodeBool:v4->_shouldUseProxiedClientBundleIDForSRP forKey:@"_shouldUseProxiedClientBundleIDForSRP"];
  [location[0] encodeBool:v4->_isItunesLogin forKey:@"_isItunesLogin"];
  [location[0] encodeBool:v4->_shouldShowAdditionalCTA forKey:@"_shouldShowAdditionalCTA"];
  objc_storeStrong(location, 0);
}

- (AKCredentialRequestContext)initWithCoder:(id)a3
{
  v124 = &v128;
  v128 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v128;
  v128 = 0;
  v126.receiver = v3;
  v126.super_class = AKCredentialRequestContext;
  v128 = [(AKCredentialRequestContext *)&v126 init];
  objc_storeStrong(&v128, v128);
  if (v128)
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
    requestIdentifier = v128->_requestIdentifier;
    v128->_requestIdentifier = v5;
    MEMORY[0x1E69E5920](requestIdentifier);
    v7 = [location[0] decodeBoolForKey:@"_shoudlForceUI"];
    v128->_shouldForceUI = v7;
    v8 = [location[0] decodeBoolForKey:@"_shoudlSkipBiometrics"];
    v128->_shouldSkipBiometrics = v8;
    v9 = [location[0] decodeBoolForKey:@"_shoudlSkipUI"];
    v10 = v120;
    v128->_shouldSkipAuthorizationUI = v9;
    v98 = location[0];
    v11 = *(v10 + 3776);
    v12 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_iconName"];
    iconName = v128->_iconName;
    v128->_iconName = v12;
    MEMORY[0x1E69E5920](iconName);
    v99 = location[0];
    v14 = *(v120 + 3776);
    v15 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_iconTypeID"];
    iconTypeID = v128->_iconTypeID;
    v128->_iconTypeID = v15;
    MEMORY[0x1E69E5920](iconTypeID);
    v100 = location[0];
    v117 = 0x1E695D000uLL;
    v17 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_iconData"];
    iconData = v128->_iconData;
    v128->_iconData = v17;
    MEMORY[0x1E69E5920](iconData);
    v101 = location[0];
    v19 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_iconScale"];
    iconScale = v128->_iconScale;
    v128->_iconScale = v19;
    MEMORY[0x1E69E5920](iconScale);
    v102 = location[0];
    v21 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_iconSize"];
    iconSize = v128->_iconSize;
    v128->_iconSize = v21;
    MEMORY[0x1E69E5920](iconSize);
    v23 = [location[0] decodeBoolForKey:@"_shouldForcePrivateEmail"];
    v24 = v120;
    v128->_shouldForcePrivateEmail = v23;
    v103 = location[0];
    v25 = *(v24 + 3776);
    v26 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_proxiedClientAppName"];
    proxiedClientAppName = v128->_proxiedClientAppName;
    v128->_proxiedClientAppName = v26;
    MEMORY[0x1E69E5920](proxiedClientAppName);
    v104 = location[0];
    v28 = *(v120 + 3776);
    v29 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_proxiedClientBundleID"];
    proxiedClientBundleID = v128->_proxiedClientBundleID;
    v128->_proxiedClientBundleID = v29;
    MEMORY[0x1E69E5920](proxiedClientBundleID);
    v105 = location[0];
    v31 = *(v120 + 3776);
    v32 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_proxiedClientTeamID"];
    proxiedClientTeamID = v128->_proxiedClientTeamID;
    v128->_proxiedClientTeamID = v32;
    MEMORY[0x1E69E5920](proxiedClientTeamID);
    v106 = location[0];
    v34 = *(v120 + 3776);
    v35 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_proxiedClientAppID"];
    proxiedClientAppID = v128->_proxiedClientAppID;
    v128->_proxiedClientAppID = v35;
    MEMORY[0x1E69E5920](proxiedClientAppID);
    v37 = [location[0] decodeObjectOfClasses:v125 forKey:@"_proxiedAssociatedDomains"];
    proxiedAssociatedDomains = v128->_proxiedAssociatedDomains;
    v128->_proxiedAssociatedDomains = v37;
    MEMORY[0x1E69E5920](proxiedAssociatedDomains);
    v107 = location[0];
    v39 = *(v120 + 3776);
    v40 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_proxiedDeviceName"];
    proxiedDeviceName = v128->_proxiedDeviceName;
    v128->_proxiedDeviceName = v40;
    MEMORY[0x1E69E5920](proxiedDeviceName);
    v108 = location[0];
    v42 = *(v120 + 3776);
    v43 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_proxiedDeviceClass"];
    proxiedDeviceClass = v128->_proxiedDeviceClass;
    v128->_proxiedDeviceClass = v43;
    MEMORY[0x1E69E5920](proxiedDeviceClass);
    v109 = location[0];
    v45 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_authorizationRequests"];
    authorizationRequest = v128->_authorizationRequest;
    v128->_authorizationRequest = v45;
    MEMORY[0x1E69E5920](authorizationRequest);
    v110 = location[0];
    v47 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_passwordRequests"];
    passwordRequest = v128->_passwordRequest;
    v128->_passwordRequest = v47;
    MEMORY[0x1E69E5920](passwordRequest);
    v49 = [location[0] decodeBoolForKey:@"_isWebLogin"];
    v128->_isWebLogin = v49;
    v50 = [location[0] decodeBoolForKey:@"_isFirstPartyLogin"];
    v128->_isFirstPartyLogin = v50;
    v51 = [location[0] decodeBoolForKey:@"_isRapportLogin"];
    v128->_isRapportLogin = v51;
    v52 = [location[0] decodeBoolForKey:@"_upgradeFromPassword"];
    v53 = v120;
    v128->_isEligibleForUpgradeFromPassword = v52;
    v111 = location[0];
    v54 = *(v53 + 3776);
    v55 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_callerBundleID"];
    callerBundleID = v128->_callerBundleID;
    v128->_callerBundleID = v55;
    MEMORY[0x1E69E5920](callerBundleID);
    v112 = location[0];
    v57 = *(v120 + 3776);
    v58 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_callerSceneID"];
    callerSceneID = v128->_callerSceneID;
    v128->_callerSceneID = v58;
    MEMORY[0x1E69E5920](callerSceneID);
    v60 = [location[0] decodeBoolForKey:@"_requirePassword"];
    v128->_requirePassword = v60;
    v113 = +[AKDevice currentDevice];
    v61 = [v113 isProtectedWithPasscode];
    v62 = v113;
    v128->_passcodeProtected = v61;
    MEMORY[0x1E69E5920](v62);
    v114 = location[0];
    v63 = *(v120 + 3776);
    v64 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_proxiedServiceID"];
    proxiedClientServiceID = v128->_proxiedClientServiceID;
    v128->_proxiedClientServiceID = v64;
    MEMORY[0x1E69E5920](proxiedClientServiceID);
    v115 = location[0];
    v66 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_upgradeContext"];
    upgradeContext = v128->_upgradeContext;
    v128->_upgradeContext = v66;
    MEMORY[0x1E69E5920](upgradeContext);
    v68 = [location[0] decodeBoolForKey:@"_clientShouldAuthenticateExternally"];
    v128->_clientShouldAuthenticateExternally = v68;
    [location[0] decodeDoubleForKey:@"_authSessionTimeout"];
    v69 = v120;
    v128->_authSessionTimeoutInterval = v70;
    v116 = location[0];
    v71 = *(v69 + 3776);
    v72 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_externalAuthToken"];
    externalAuthToken = v128->_externalAuthToken;
    v128->_externalAuthToken = v72;
    MEMORY[0x1E69E5920](externalAuthToken);
    v118 = location[0];
    v74 = *(v117 + 3824);
    v75 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_externalLocalAuthData"];
    externalLocalAuthData = v128->_externalLocalAuthData;
    v128->_externalLocalAuthData = v75;
    MEMORY[0x1E69E5920](externalLocalAuthData);
    v119 = location[0];
    v77 = *(v120 + 3776);
    v78 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_continuationRequestIdentifier"];
    continuationRequestIdentifier = v128->_continuationRequestIdentifier;
    v128->_continuationRequestIdentifier = v78;
    MEMORY[0x1E69E5920](continuationRequestIdentifier);
    v80 = [location[0] decodeIntegerForKey:@"_requestOptions"];
    v81 = v120;
    v128->_requestOptions = v80;
    v121 = location[0];
    v82 = *(v81 + 3776);
    v83 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_sessionID"];
    sessionID = v128->_sessionID;
    v128->_sessionID = v83;
    MEMORY[0x1E69E5920](sessionID);
    v85 = [location[0] decodeBoolForKey:@"_shouldUseProxiedClientBundleIDForSRP"];
    v128->_shouldUseProxiedClientBundleIDForSRP = v85;
    v86 = [location[0] decodeBoolForKey:@"_isItunesLogin"];
    v128->_isItunesLogin = v86;
    v87 = [location[0] decodeBoolForKey:@"_shouldShowAdditionalCTA"];
    v88 = v122;
    v89 = v87;
    v90 = v123;
    v128->_shouldShowAdditionalCTA = v89;
    objc_storeStrong(v90, v88);
  }

  v92 = &v128;
  v94 = MEMORY[0x1E69E5928](v128);
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
    v2 = [MEMORY[0x1E696AFB0] UUID];
    requestIdentifier = v11->_requestIdentifier;
    v11->_requestIdentifier = v2;
    MEMORY[0x1E69E5920](requestIdentifier);
    v7 = +[AKDevice currentDevice];
    v4 = [v7 isProtectedWithPasscode];
    v11->_passcodeProtected = v4;
    MEMORY[0x1E69E5920](v7);
  }

  v6 = MEMORY[0x1E69E5928](v11);
  objc_storeStrong(&v11, 0);
  return v6;
}

- (AKCredentialRequestContext)initWithUpgradeContext:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v14;
  v14 = 0;
  v12 = [(AKCredentialRequestContext *)v3 init];
  v14 = v12;
  objc_storeStrong(&v14, v12);
  if (v12)
  {
    objc_storeStrong(&v14->_upgradeContext, location[0]);
    v4 = objc_alloc_init(AKAuthorizationRequest);
    authorizationRequest = v14->_authorizationRequest;
    v14->_authorizationRequest = v4;
    MEMORY[0x1E69E5920](authorizationRequest);
    v8 = [location[0] bundleID];
    [(AKAuthorizationRequest *)v14->_authorizationRequest setClientID:?];
    MEMORY[0x1E69E5920](v8);
    v9 = [location[0] teamID];
    [(AKAuthorizationRequest *)v14->_authorizationRequest setTeamID:?];
    MEMORY[0x1E69E5920](v9);
    v10 = [location[0] nonce];
    [(AKAuthorizationRequest *)v14->_authorizationRequest setNonce:?];
    MEMORY[0x1E69E5920](v10);
    v11 = [location[0] state];
    [(AKAuthorizationRequest *)v14->_authorizationRequest setState:?];
    MEMORY[0x1E69E5920](v11);
    [(AKAuthorizationRequest *)v14->_authorizationRequest setIsEligibleForUpgradeFromPassword:1];
  }

  v7 = MEMORY[0x1E69E5928](v14);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v14, 0);
  return v7;
}

- (AKCredentialRequestContext)initWithProxiedClientContext:(id)a3
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v31;
  v31 = 0;
  v29 = [(AKCredentialRequestContext *)v3 init];
  v31 = v29;
  objc_storeStrong(&v31, v29);
  if (v29)
  {
    v22 = [location[0] teamID];
    v4 = [v22 copy];
    proxiedClientTeamID = v31->_proxiedClientTeamID;
    v31->_proxiedClientTeamID = v4;
    MEMORY[0x1E69E5920](proxiedClientTeamID);
    MEMORY[0x1E69E5920](v22);
    v23 = [location[0] bundleID];
    v6 = [v23 copy];
    proxiedClientBundleID = v31->_proxiedClientBundleID;
    v31->_proxiedClientBundleID = v6;
    MEMORY[0x1E69E5920](proxiedClientBundleID);
    MEMORY[0x1E69E5920](v23);
    v24 = [location[0] appID];
    v8 = [v24 copy];
    proxiedClientAppID = v31->_proxiedClientAppID;
    v31->_proxiedClientAppID = v8;
    MEMORY[0x1E69E5920](proxiedClientAppID);
    MEMORY[0x1E69E5920](v24);
    v25 = [location[0] appName];
    v10 = [v25 copy];
    proxiedClientAppName = v31->_proxiedClientAppName;
    v31->_proxiedClientAppName = v10;
    MEMORY[0x1E69E5920](proxiedClientAppName);
    MEMORY[0x1E69E5920](v25);
    v26 = [location[0] associatedDomains];
    v12 = [v26 copy];
    proxiedAssociatedDomains = v31->_proxiedAssociatedDomains;
    v31->_proxiedAssociatedDomains = v12;
    MEMORY[0x1E69E5920](proxiedAssociatedDomains);
    MEMORY[0x1E69E5920](v26);
    v27 = [location[0] deviceClass];
    v14 = [v27 copy];
    proxiedDeviceClass = v31->_proxiedDeviceClass;
    v31->_proxiedDeviceClass = v14;
    MEMORY[0x1E69E5920](proxiedDeviceClass);
    MEMORY[0x1E69E5920](v27);
    v28 = [location[0] deviceName];
    v16 = [v28 copy];
    proxiedDeviceName = v31->_proxiedDeviceName;
    v31->_proxiedDeviceName = v16;
    MEMORY[0x1E69E5920](proxiedDeviceName);
    MEMORY[0x1E69E5920](v28);
    v18 = [location[0] isRapportLogin];
    v31->_isRapportLogin = v18;
    v19 = [location[0] shouldSkipAuthorizationUI];
    v31->_shouldSkipAuthorizationUI = v19;
  }

  v21 = MEMORY[0x1E69E5928](v31);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v31, 0);
  return v21;
}

- (void)setCredentialRequests:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] aaf_firstObjectPassingTest:&__block_literal_global_14];
  passwordRequest = v8->_passwordRequest;
  v8->_passwordRequest = v3;
  MEMORY[0x1E69E5920](passwordRequest);
  v5 = [location[0] aaf_firstObjectPassingTest:&__block_literal_global_145];
  authorizationRequest = v8->_authorizationRequest;
  v8->_authorizationRequest = v5;
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
    v3 = [(AKAuthorizationUpgradeContext *)self->_upgradeContext appName];
  }

  else
  {
    v3 = MEMORY[0x1E69E5928](self->_proxiedClientAppName);
  }

  return v3;
}

- (NSString)_proxiedClientBundleID
{
  if (self->_upgradeContext)
  {
    v3 = [(AKAuthorizationUpgradeContext *)self->_upgradeContext bundleID];
  }

  else
  {
    v3 = MEMORY[0x1E69E5928](self->_proxiedClientBundleID);
  }

  return v3;
}

- (NSString)_proxiedClientServiceID
{
  if (self->_upgradeContext)
  {
    v3 = [(AKAuthorizationUpgradeContext *)self->_upgradeContext serviceID];
  }

  else
  {
    v3 = MEMORY[0x1E69E5928](self->_proxiedClientServiceID);
  }

  return v3;
}

- (NSString)_proxiedClientTeamID
{
  if (self->_upgradeContext)
  {
    v3 = [(AKAuthorizationUpgradeContext *)self->_upgradeContext teamID];
  }

  else
  {
    v3 = MEMORY[0x1E69E5928](self->_proxiedClientTeamID);
  }

  return v3;
}

- (NSString)_proxiedClientAppID
{
  if (self->_upgradeContext)
  {
    v3 = [(AKAuthorizationUpgradeContext *)self->_upgradeContext appID];
  }

  else
  {
    v3 = MEMORY[0x1E69E5928](self->_proxiedClientAppID);
  }

  return v3;
}

- (NSArray)credentialRequests
{
  v5 = self;
  v4[1] = a2;
  v4[0] = [MEMORY[0x1E695DF70] array];
  if (v5->_passwordRequest)
  {
    [v4[0] addObject:v5->_passwordRequest];
  }

  if (v5->_authorizationRequest)
  {
    [v4[0] addObject:v5->_authorizationRequest];
  }

  v3 = MEMORY[0x1E69E5928](v4[0]);
  objc_storeStrong(v4, 0);

  return v3;
}

- (BOOL)_requirePassword
{
  v23 = *MEMORY[0x1E69E9840];
  v21 = self;
  v20 = a2;
  v19 = 0;
  v14 = [(AKCredentialRequestContext *)self authorizationRequest];
  MEMORY[0x1E69E5920](v14);
  if (v14)
  {
    v18 = 0;
    v13 = +[AKAccountManager sharedInstance];
    v12 = [(AKCredentialRequestContext *)v21 authorizationRequest];
    v11 = [(AKAuthorizationRequest *)v12 altDSID];
    v16 = v18;
    v10 = [AKAccountManager authKitAccountWithAltDSID:v13 error:"authKitAccountWithAltDSID:error:"];
    objc_storeStrong(&v18, v16);
    v17 = v10;
    MEMORY[0x1E69E5920](v11);
    MEMORY[0x1E69E5920](v12);
    MEMORY[0x1E69E5920](v13);
    if (!v10)
    {
      v9 = [(AKCredentialRequestContext *)v21 authorizationRequest];
      v17 = [(AKAuthorizationRequest *)v9 authkitAccount];
      MEMORY[0x1E69E5920](0);
      MEMORY[0x1E69E5920](v9);
    }

    if (v17)
    {
      v8 = +[AKAccountManager sharedInstance];
      v2 = [(AKAccountManager *)v8 continuationTokenForAccount:v17];
      v19 = v2 == 0;
      MEMORY[0x1E69E5920](v2);
      MEMORY[0x1E69E5920](v8);
    }

    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v18, 0);
  }

  v15 = _AKLogSiwa();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (v21->_passcodeProtected)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    if (v21->_requirePassword)
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
  if (!v21->_requirePassword)
  {
    v7 = 1;
    if (v21->_passcodeProtected)
    {
      v7 = v19;
    }
  }

  *MEMORY[0x1E69E9840];
  return v7 & 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v54 = self;
  v53[2] = a2;
  v53[1] = a3;
  v53[0] = objc_alloc_init(AKCredentialRequestContext);
  v3 = [(NSUUID *)v54->_requestIdentifier copy];
  v4 = *(v53[0] + 25);
  *(v53[0] + 25) = v3;
  MEMORY[0x1E69E5920](v4);
  *(v53[0] + 9) = v54->_shouldForceUI;
  *(v53[0] + 10) = v54->_shouldSkipBiometrics;
  *(v53[0] + 11) = v54->_shouldSkipAuthorizationUI;
  v5 = [(NSString *)v54->_iconName copy];
  v6 = *(v53[0] + 5);
  *(v53[0] + 5) = v5;
  MEMORY[0x1E69E5920](v6);
  v7 = [(NSString *)v54->_iconTypeID copy];
  v8 = *(v53[0] + 6);
  *(v53[0] + 6) = v7;
  MEMORY[0x1E69E5920](v8);
  v9 = [(NSData *)v54->_iconData copy];
  v10 = *(v53[0] + 7);
  *(v53[0] + 7) = v9;
  MEMORY[0x1E69E5920](v10);
  v11 = [(NSNumber *)v54->_iconScale copy];
  v12 = *(v53[0] + 8);
  *(v53[0] + 8) = v11;
  MEMORY[0x1E69E5920](v12);
  v13 = [(NSValue *)v54->_iconSize copy];
  v14 = *(v53[0] + 9);
  *(v53[0] + 9) = v13;
  MEMORY[0x1E69E5920](v14);
  *(v53[0] + 12) = v54->_shouldForcePrivateEmail;
  v15 = [(NSString *)v54->_proxiedClientAppName copy];
  v16 = *(v53[0] + 10);
  *(v53[0] + 10) = v15;
  MEMORY[0x1E69E5920](v16);
  v17 = [(NSString *)v54->_proxiedClientBundleID copy];
  v18 = *(v53[0] + 11);
  *(v53[0] + 11) = v17;
  MEMORY[0x1E69E5920](v18);
  v19 = [(NSString *)v54->_proxiedClientTeamID copy];
  v20 = *(v53[0] + 13);
  *(v53[0] + 13) = v19;
  MEMORY[0x1E69E5920](v20);
  v21 = [(NSString *)v54->_proxiedClientAppID copy];
  v22 = *(v53[0] + 12);
  *(v53[0] + 12) = v21;
  MEMORY[0x1E69E5920](v22);
  v23 = [(NSArray *)v54->_proxiedAssociatedDomains copy];
  v24 = *(v53[0] + 14);
  *(v53[0] + 14) = v23;
  MEMORY[0x1E69E5920](v24);
  v25 = [(NSString *)v54->_proxiedDeviceName copy];
  v26 = *(v53[0] + 17);
  *(v53[0] + 17) = v25;
  MEMORY[0x1E69E5920](v26);
  v27 = [(NSString *)v54->_proxiedDeviceClass copy];
  v28 = *(v53[0] + 18);
  *(v53[0] + 18) = v27;
  MEMORY[0x1E69E5920](v28);
  v29 = [(AKAuthorizationRequest *)v54->_authorizationRequest copy];
  v30 = *(v53[0] + 27);
  *(v53[0] + 27) = v29;
  MEMORY[0x1E69E5920](v30);
  v31 = [(AKPasswordRequest *)v54->_passwordRequest copy];
  v32 = *(v53[0] + 28);
  *(v53[0] + 28) = v31;
  MEMORY[0x1E69E5920](v32);
  *(v53[0] + 14) = v54->_isWebLogin;
  *(v53[0] + 15) = v54->_isFirstPartyLogin;
  *(v53[0] + 16) = v54->_isRapportLogin;
  *(v53[0] + 17) = v54->_isEligibleForUpgradeFromPassword;
  v33 = [(NSString *)v54->_callerBundleID copy];
  v34 = *(v53[0] + 15);
  *(v53[0] + 15) = v33;
  MEMORY[0x1E69E5920](v34);
  v35 = [(NSString *)v54->_callerSceneID copy];
  v36 = *(v53[0] + 16);
  *(v53[0] + 16) = v35;
  MEMORY[0x1E69E5920](v36);
  *(v53[0] + 13) = v54->_requirePassword;
  v51 = +[AKDevice currentDevice];
  v37 = [v51 isProtectedWithPasscode];
  *(v53[0] + 8) = v37;
  MEMORY[0x1E69E5920](v51);
  v38 = [(NSString *)v54->_proxiedClientServiceID copy];
  v39 = *(v53[0] + 19);
  *(v53[0] + 19) = v38;
  MEMORY[0x1E69E5920](v39);
  v40 = [(AKAuthorizationUpgradeContext *)v54->_upgradeContext copy];
  v41 = *(v53[0] + 20);
  *(v53[0] + 20) = v40;
  MEMORY[0x1E69E5920](v41);
  *(v53[0] + 18) = v54->_clientShouldAuthenticateExternally;
  *(v53[0] + 21) = *&v54->_authSessionTimeoutInterval;
  v42 = [(NSString *)v54->_externalAuthToken copy];
  v43 = *(v53[0] + 22);
  *(v53[0] + 22) = v42;
  MEMORY[0x1E69E5920](v43);
  v44 = [(NSData *)v54->_externalLocalAuthData copy];
  v45 = *(v53[0] + 23);
  *(v53[0] + 23) = v44;
  MEMORY[0x1E69E5920](v45);
  v46 = [(NSString *)v54->_continuationRequestIdentifier copy];
  v47 = *(v53[0] + 24);
  *(v53[0] + 24) = v46;
  MEMORY[0x1E69E5920](v47);
  *(v53[0] + 26) = v54->_requestOptions;
  v48 = [(NSString *)v54->_sessionID copy];
  v49 = *(v53[0] + 3);
  *(v53[0] + 3) = v48;
  MEMORY[0x1E69E5920](v49);
  *(v53[0] + 19) = v54->_shouldUseProxiedClientBundleIDForSRP;
  *(v53[0] + 20) = v54->_isItunesLogin;
  *(v53[0] + 21) = v54->_shouldShowAdditionalCTA;
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