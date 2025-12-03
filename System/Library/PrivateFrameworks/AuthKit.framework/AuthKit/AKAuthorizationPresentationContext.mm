@interface AKAuthorizationPresentationContext
+ (id)presentationContextForCreateAppleIDFlow:(id)flow;
+ (id)presentationContextForRequestContext:(id)context client:(id)client;
- (AKAuthorizationPresentationContext)initWithCoder:(id)coder;
- (AKAuthorizationPresentationContext)initWithContext:(id)context bundleID:(id)d;
- (AKAuthorizationPresentationContext)initWithContext:(id)context client:(id)client;
- (AKAuthorizationPresentationContext)initWithUsername:(id)username;
- (BOOL)hasCreateAccountLoginChoice;
- (BOOL)hasSharedAccountLoginChoices;
- (BOOL)isSignInFlow;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_addPresentationParametersForContext:(id)context;
- (void)_addPresenterParameters;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKAuthorizationPresentationContext

- (AKAuthorizationPresentationContext)initWithContext:(id)context bundleID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v10 = 0;
  objc_storeStrong(&v10, d);
  v4 = selfCopy;
  selfCopy = 0;
  v9.receiver = v4;
  v9.super_class = AKAuthorizationPresentationContext;
  v7 = [(AKAuthorizationPresentationContext *)&v9 init];
  selfCopy = v7;
  objc_storeStrong(&selfCopy, v7);
  if (v7)
  {
    objc_storeStrong(&selfCopy->_bundleID, v10);
    objc_storeStrong(&selfCopy->_credentialRequestContext, location[0]);
    [(AKAuthorizationPresentationContext *)selfCopy _addPresenterParameters];
  }

  v6 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (AKAuthorizationPresentationContext)initWithContext:(id)context client:(id)client
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v18 = 0;
  objc_storeStrong(&v18, client);
  _upgradeContext = [location[0] _upgradeContext];
  bundleID = [_upgradeContext bundleID];
  MEMORY[0x1E69E5920](bundleID);
  MEMORY[0x1E69E5920](_upgradeContext);
  if (bundleID)
  {
    v12 = selfCopy;
    v11 = location[0];
    _upgradeContext2 = [location[0] _upgradeContext];
    bundleID2 = [_upgradeContext2 bundleID];
    selfCopy = 0;
    selfCopy = [(AKAuthorizationPresentationContext *)v12 initWithContext:v11 bundleID:?];
    objc_storeStrong(&selfCopy, selfCopy);
    MEMORY[0x1E69E5920](bundleID2);
    MEMORY[0x1E69E5920](_upgradeContext2);
  }

  else
  {
    v9 = selfCopy;
    v8 = location[0];
    bundleID3 = [v18 bundleID];
    selfCopy = 0;
    selfCopy = [(AKAuthorizationPresentationContext *)v9 initWithContext:v8 bundleID:?];
    objc_storeStrong(&selfCopy, selfCopy);
    MEMORY[0x1E69E5920](bundleID3);
  }

  auditTokenData = [v18 auditTokenData];
  clientAuditTokenData = selfCopy->_clientAuditTokenData;
  selfCopy->_clientAuditTokenData = auditTokenData;
  MEMORY[0x1E69E5920](clientAuditTokenData);
  v7 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (AKAuthorizationPresentationContext)initWithUsername:(id)username
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, username);
  v3 = selfCopy;
  selfCopy = 0;
  v9.receiver = v3;
  v9.super_class = AKAuthorizationPresentationContext;
  v8 = [(AKAuthorizationPresentationContext *)&v9 init];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    v4 = objc_alloc_init(AKUserInformation);
    userInformation = selfCopy->_userInformation;
    selfCopy->_userInformation = v4;
    MEMORY[0x1E69E5920](userInformation);
    [(AKUserInformation *)selfCopy->_userInformation setAccountName:location[0]];
  }

  v7 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_bundleID forKey:@"_bundleID"];
  [location[0] encodeObject:selfCopy->_localizedAppName forKey:@"_localizedAppName"];
  [location[0] encodeObject:selfCopy->_iconName forKey:@"_iconName"];
  [location[0] encodeObject:selfCopy->_iconTypeID forKey:@"_iconTypeID"];
  [location[0] encodeObject:selfCopy->_iconData forKey:@"_iconData"];
  [location[0] encodeObject:selfCopy->_iconScale forKey:@"_iconScale"];
  [location[0] encodeObject:selfCopy->_credentialRequestContext forKey:@"_credentialRequestContext"];
  [location[0] encodeObject:selfCopy->_userInformation forKey:@"_userInformation"];
  [location[0] encodeObject:selfCopy->_loginChoices forKey:@"_loginChoices"];
  [location[0] encodeObject:selfCopy->_clientAuditTokenData forKey:@"_clientAuditTokenData"];
  [location[0] encodeBool:selfCopy->_signInAllowsPCSKeyAccess forKey:@"_signInAllowsPCSKeyAccess"];
  [location[0] encodeBool:selfCopy->_hasShownFirstTimeAlready forKey:@"_hasShownFirstTimeAlready"];
  objc_storeStrong(location, 0);
}

- (AKAuthorizationPresentationContext)initWithCoder:(id)coder
{
  v64[3] = *MEMORY[0x1E69E9840];
  v58 = &selfCopy;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v61.receiver = v3;
  v61.super_class = AKAuthorizationPresentationContext;
  v59 = [(AKAuthorizationPresentationContext *)&v61 init];
  selfCopy = v59;
  objc_storeStrong(&selfCopy, v59);
  if (v59)
  {
    v39 = location[0];
    v42 = 0x1E696A000uLL;
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_bundleID"];
    bundleID = selfCopy->_bundleID;
    selfCopy->_bundleID = v4;
    MEMORY[0x1E69E5920](bundleID);
    v40 = location[0];
    v6 = *(v42 + 3776);
    v7 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_localizedAppName"];
    localizedAppName = selfCopy->_localizedAppName;
    selfCopy->_localizedAppName = v7;
    MEMORY[0x1E69E5920](localizedAppName);
    v41 = location[0];
    v9 = *(v42 + 3776);
    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_iconName"];
    iconName = selfCopy->_iconName;
    selfCopy->_iconName = v10;
    MEMORY[0x1E69E5920](iconName);
    v43 = location[0];
    v12 = *(v42 + 3776);
    v13 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_iconTypeID"];
    iconTypeID = selfCopy->_iconTypeID;
    selfCopy->_iconTypeID = v13;
    MEMORY[0x1E69E5920](iconTypeID);
    v44 = location[0];
    v48 = 0x1E695D000uLL;
    v15 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_iconData"];
    iconData = selfCopy->_iconData;
    selfCopy->_iconData = v15;
    MEMORY[0x1E69E5920](iconData);
    v45 = location[0];
    v17 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_iconScale"];
    iconScale = selfCopy->_iconScale;
    selfCopy->_iconScale = v17;
    MEMORY[0x1E69E5920](iconScale);
    v46 = location[0];
    v19 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_credentialRequestContext"];
    credentialRequestContext = selfCopy->_credentialRequestContext;
    selfCopy->_credentialRequestContext = v19;
    MEMORY[0x1E69E5920](credentialRequestContext);
    v47 = location[0];
    v21 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_userInformation"];
    userInformation = selfCopy->_userInformation;
    selfCopy->_userInformation = v21;
    MEMORY[0x1E69E5920](userInformation);
    v49 = location[0];
    v23 = *(v48 + 3824);
    v24 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_clientAuditTokenData"];
    clientAuditTokenData = selfCopy->_clientAuditTokenData;
    selfCopy->_clientAuditTokenData = v24;
    MEMORY[0x1E69E5920](clientAuditTokenData);
    v51 = MEMORY[0x1E695DFA8];
    v52 = 0x1E695D000uLL;
    v50 = objc_opt_class();
    v56 = 0;
    v26 = [v51 setWithObjects:{v50, objc_opt_class(), 0}];
    v57 = &v60;
    v60 = v26;
    v54 = v26;
    v27 = objc_opt_class();
    v53 = v64;
    v64[0] = v27;
    v64[1] = objc_opt_class();
    v64[2] = objc_opt_class();
    v55 = [*(v52 + 3784) arrayWithObjects:v53 count:3];
    [v54 addObjectsFromArray:?];
    MEMORY[0x1E69E5920](v55);
    v28 = [location[0] decodeObjectOfClasses:v60 forKey:@"_loginChoices"];
    loginChoices = selfCopy->_loginChoices;
    selfCopy->_loginChoices = v28;
    MEMORY[0x1E69E5920](loginChoices);
    v30 = [location[0] decodeBoolForKey:@"_signInAllowsPCSKeyAccess"];
    selfCopy->_signInAllowsPCSKeyAccess = v30;
    v31 = [location[0] decodeBoolForKey:@"_hasShownFirstTimeAlready"];
    v32 = v56;
    v33 = v31;
    v34 = v57;
    selfCopy->_hasShownFirstTimeAlready = v33;
    objc_storeStrong(v34, v32);
  }

  v37 = &selfCopy;
  v36 = MEMORY[0x1E69E5928](selfCopy);
  obj = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(v37, obj);
  *MEMORY[0x1E69E9840];
  return v36;
}

- (id)description
{
  v6 = MEMORY[0x1E696AEC0];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v7 = v3;
  v4 = @"YES";
  if (!self->_signInAllowsPCSKeyAccess)
  {
    v4 = @"NO";
  }

  v8 = [v6 stringWithFormat:@"<%@: %p> - bundleID: %@, localizedAppName: %@, credentialRequestContext: %@, userInformation: %@, loginChoices: %@, signInAllowsPCSKeyAccess: %@", v3, self, self->_bundleID, self->_localizedAppName, self->_credentialRequestContext, self->_userInformation, self->_loginChoices, v4];
  MEMORY[0x1E69E5920](v7);

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v25[2] = a2;
  v25[1] = zone;
  v25[0] = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v3 = [(NSString *)selfCopy->_bundleID copy];
  v4 = *(v25[0] + 2);
  *(v25[0] + 2) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSString *)selfCopy->_localizedAppName copy];
  v6 = *(v25[0] + 3);
  *(v25[0] + 3) = v5;
  MEMORY[0x1E69E5920](v6);
  v7 = [(NSString *)selfCopy->_iconName copy];
  v8 = *(v25[0] + 4);
  *(v25[0] + 4) = v7;
  MEMORY[0x1E69E5920](v8);
  v9 = [(NSString *)selfCopy->_iconTypeID copy];
  v10 = *(v25[0] + 5);
  *(v25[0] + 5) = v9;
  MEMORY[0x1E69E5920](v10);
  v11 = [(NSData *)selfCopy->_iconData copy];
  v12 = *(v25[0] + 6);
  *(v25[0] + 6) = v11;
  MEMORY[0x1E69E5920](v12);
  v13 = [(NSNumber *)selfCopy->_iconScale copy];
  v14 = *(v25[0] + 7);
  *(v25[0] + 7) = v13;
  MEMORY[0x1E69E5920](v14);
  v15 = [(AKCredentialRequestContext *)selfCopy->_credentialRequestContext copy];
  v16 = *(v25[0] + 8);
  *(v25[0] + 8) = v15;
  MEMORY[0x1E69E5920](v16);
  v17 = [(AKUserInformation *)selfCopy->_userInformation copy];
  v18 = *(v25[0] + 9);
  *(v25[0] + 9) = v17;
  MEMORY[0x1E69E5920](v18);
  v19 = [(NSArray *)selfCopy->_loginChoices copy];
  v20 = *(v25[0] + 10);
  *(v25[0] + 10) = v19;
  MEMORY[0x1E69E5920](v20);
  v21 = [(NSData *)selfCopy->_clientAuditTokenData copy];
  v22 = *(v25[0] + 13);
  *(v25[0] + 13) = v21;
  MEMORY[0x1E69E5920](v22);
  *(v25[0] + 8) = selfCopy->_signInAllowsPCSKeyAccess;
  *(v25[0] + 9) = selfCopy->_hasShownFirstTimeAlready;
  v24 = MEMORY[0x1E69E5928](v25[0]);
  objc_storeStrong(v25, 0);
  return v24;
}

+ (id)presentationContextForRequestContext:(id)context client:(id)client
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v22 = 0;
  objc_storeStrong(&v22, client);
  v21 = 0;
  _upgradeContext = [location[0] _upgradeContext];
  bundleID = [_upgradeContext bundleID];
  MEMORY[0x1E69E5920](bundleID);
  MEMORY[0x1E69E5920](_upgradeContext);
  if (bundleID)
  {
    v15 = [AKAuthorizationPresentationContext alloc];
    v14 = location[0];
    _upgradeContext2 = [location[0] _upgradeContext];
    bundleID2 = [_upgradeContext2 bundleID];
    v4 = [(AKAuthorizationPresentationContext *)v15 initWithContext:v14 bundleID:?];
    v5 = v21;
    v21 = v4;
    MEMORY[0x1E69E5920](v5);
    MEMORY[0x1E69E5920](bundleID2);
    MEMORY[0x1E69E5920](_upgradeContext2);
  }

  else
  {
    v12 = [AKAuthorizationPresentationContext alloc];
    v11 = location[0];
    bundleID3 = [v22 bundleID];
    v6 = [(AKAuthorizationPresentationContext *)v12 initWithContext:v11 bundleID:?];
    v7 = v21;
    v21 = v6;
    MEMORY[0x1E69E5920](v7);
    MEMORY[0x1E69E5920](bundleID3);
  }

  auditTokenData = [v22 auditTokenData];
  [(AKAuthorizationPresentationContext *)v21 setClientAuditTokenData:?];
  MEMORY[0x1E69E5920](auditTokenData);
  v10 = MEMORY[0x1E69E5928](v21);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);

  return v10;
}

+ (id)presentationContextForCreateAppleIDFlow:(id)flow
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, flow);
  v6 = [location[0] copy];
  if ([location[0] hasSharedAccountLoginChoices])
  {
    [v6 setLoginChoices:0];
  }

  credentialRequestContext = [v6 credentialRequestContext];
  [credentialRequestContext setPasswordRequest:?];
  MEMORY[0x1E69E5920](credentialRequestContext);
  v5 = MEMORY[0x1E69E5928](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (BOOL)hasSharedAccountLoginChoices
{
  v15 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  __b[9] = a2;
  v9 = +[AKFeatureManager sharedManager];
  isSiwaCredentialSharingEnabled = [v9 isSiwaCredentialSharingEnabled];
  MEMORY[0x1E69E5920](v9);
  if (isSiwaCredentialSharingEnabled)
  {
    if (!selfCopy->_cachedHasSharedAccountLoginChoice)
    {
      objc_storeStrong(&selfCopy->_cachedHasSharedAccountLoginChoice, MEMORY[0x1E695E110]);
      memset(__b, 0, 0x40uLL);
      obj = MEMORY[0x1E69E5928](selfCopy->_loginChoices);
      v8 = [obj countByEnumeratingWithState:__b objects:v14 count:16];
      if (v8)
      {
        v4 = *__b[2];
        v5 = 0;
        v6 = v8;
        while (1)
        {
          v3 = v5;
          if (*__b[2] != v4)
          {
            objc_enumerationMutation(obj);
          }

          __b[8] = *(__b[1] + 8 * v5);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 1)
          {
            break;
          }

          ++v5;
          if (v3 + 1 >= v6)
          {
            v5 = 0;
            v6 = [obj countByEnumeratingWithState:__b objects:v14 count:16];
            if (!v6)
            {
              goto LABEL_12;
            }
          }
        }

        objc_storeStrong(&selfCopy->_cachedHasSharedAccountLoginChoice, MEMORY[0x1E695E118]);
      }

LABEL_12:
      MEMORY[0x1E69E5920](obj);
    }

    bOOLValue = [(NSNumber *)selfCopy->_cachedHasSharedAccountLoginChoice BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  *MEMORY[0x1E69E9840];
  return bOOLValue & 1;
}

- (BOOL)hasCreateAccountLoginChoice
{
  v15 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v12 = a2;
  if (!self->_cachedHasCreateAccountLoginChoice)
  {
    objc_storeStrong(&selfCopy->_cachedHasCreateAccountLoginChoice, MEMORY[0x1E695E110]);
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x1E69E5928](selfCopy->_loginChoices);
    v9 = [obj countByEnumeratingWithState:__b objects:v14 count:16];
    if (v9)
    {
      v5 = *__b[2];
      v6 = 0;
      v7 = v9;
      while (1)
      {
        v4 = v6;
        if (*__b[2] != v5)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(__b[1] + 8 * v6);
        if ([v11 shouldCreateAppleID])
        {
          break;
        }

        ++v6;
        if (v4 + 1 >= v7)
        {
          v6 = 0;
          v7 = [obj countByEnumeratingWithState:__b objects:v14 count:16];
          if (!v7)
          {
            goto LABEL_10;
          }
        }
      }

      objc_storeStrong(&selfCopy->_cachedHasCreateAccountLoginChoice, MEMORY[0x1E695E118]);
    }

LABEL_10:
    MEMORY[0x1E69E5920](obj);
  }

  bOOLValue = [(NSNumber *)selfCopy->_cachedHasCreateAccountLoginChoice BOOLValue];
  *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (BOOL)isSignInFlow
{
  v3 = 1;
  if (![(AKCredentialRequestContext *)self->_credentialRequestContext _isFirstPartyLogin])
  {
    return [(NSArray *)self->_loginChoices count]!= 0;
  }

  return v3;
}

- (void)_addPresenterParameters
{
  selfCopy = self;
  v12 = a2;
  _proxiedClientAppName = [(AKCredentialRequestContext *)self->_credentialRequestContext _proxiedClientAppName];
  v9 = [(NSString *)_proxiedClientAppName length]!= 0;
  MEMORY[0x1E69E5920](_proxiedClientAppName);
  v11 = v9;
  if (v9)
  {
    [(AKAuthorizationPresentationContext *)selfCopy _addPresentationParametersForContext:selfCopy->_credentialRequestContext];
  }

  else
  {
    v6 = +[AKConfiguration sharedConfiguration];
    shouldAutocycleAppsInTiburon = [v6 shouldAutocycleAppsInTiburon];
    MEMORY[0x1E69E5920](v6);
    location[1] = shouldAutocycleAppsInTiburon;
    if (shouldAutocycleAppsInTiburon == 1)
    {
      v2 = _NextTestBundleIdentifier();
      bundleID = selfCopy->_bundleID;
      selfCopy->_bundleID = v2;
      MEMORY[0x1E69E5920](bundleID);
    }

    location[0] = 0;
    location[0] = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:selfCopy->_bundleID];
    MEMORY[0x1E69E5920](0);
    if ([(NSString *)selfCopy->_bundleID isEqualToString:@"com.apple.aktool"])
    {
      objc_storeStrong(&selfCopy->_localizedAppName, @"aktool");
    }

    else
    {
      localizedName = [location[0] localizedName];
      localizedAppName = selfCopy->_localizedAppName;
      selfCopy->_localizedAppName = localizedName;
      MEMORY[0x1E69E5920](localizedAppName);
    }

    objc_storeStrong(location, 0);
  }
}

- (void)_addPresentationParametersForContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  _iconName = [location[0] _iconName];
  iconName = selfCopy->_iconName;
  selfCopy->_iconName = _iconName;
  MEMORY[0x1E69E5920](iconName);
  _iconTypeID = [location[0] _iconTypeID];
  iconTypeID = selfCopy->_iconTypeID;
  selfCopy->_iconTypeID = _iconTypeID;
  MEMORY[0x1E69E5920](iconTypeID);
  _iconData = [(AKCredentialRequestContext *)selfCopy->_credentialRequestContext _iconData];
  iconData = selfCopy->_iconData;
  selfCopy->_iconData = _iconData;
  MEMORY[0x1E69E5920](iconData);
  _iconScale = [(AKCredentialRequestContext *)selfCopy->_credentialRequestContext _iconScale];
  iconScale = selfCopy->_iconScale;
  selfCopy->_iconScale = _iconScale;
  MEMORY[0x1E69E5920](iconScale);
  _proxiedClientAppName = [(AKCredentialRequestContext *)selfCopy->_credentialRequestContext _proxiedClientAppName];
  v17 = [(NSString *)_proxiedClientAppName length];
  MEMORY[0x1E69E5920](_proxiedClientAppName);
  if (v17)
  {
    _proxiedClientAppName2 = [(AKCredentialRequestContext *)selfCopy->_credentialRequestContext _proxiedClientAppName];
    localizedAppName = selfCopy->_localizedAppName;
    selfCopy->_localizedAppName = _proxiedClientAppName2;
    MEMORY[0x1E69E5920](localizedAppName);
  }

  _proxiedClientBundleID = [(AKCredentialRequestContext *)selfCopy->_credentialRequestContext _proxiedClientBundleID];
  MEMORY[0x1E69E5920](_proxiedClientBundleID);
  if (_proxiedClientBundleID)
  {
    _proxiedClientBundleID2 = [(AKCredentialRequestContext *)selfCopy->_credentialRequestContext _proxiedClientBundleID];
    bundleID = selfCopy->_bundleID;
    selfCopy->_bundleID = _proxiedClientBundleID2;
    MEMORY[0x1E69E5920](bundleID);
  }

  objc_storeStrong(location, 0);
}

@end