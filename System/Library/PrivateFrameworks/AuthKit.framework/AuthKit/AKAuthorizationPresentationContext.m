@interface AKAuthorizationPresentationContext
+ (id)presentationContextForCreateAppleIDFlow:(id)a3;
+ (id)presentationContextForRequestContext:(id)a3 client:(id)a4;
- (AKAuthorizationPresentationContext)initWithCoder:(id)a3;
- (AKAuthorizationPresentationContext)initWithContext:(id)a3 bundleID:(id)a4;
- (AKAuthorizationPresentationContext)initWithContext:(id)a3 client:(id)a4;
- (AKAuthorizationPresentationContext)initWithUsername:(id)a3;
- (BOOL)hasCreateAccountLoginChoice;
- (BOOL)hasSharedAccountLoginChoices;
- (BOOL)isSignInFlow;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_addPresentationParametersForContext:(id)a3;
- (void)_addPresenterParameters;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKAuthorizationPresentationContext

- (AKAuthorizationPresentationContext)initWithContext:(id)a3 bundleID:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v4 = v12;
  v12 = 0;
  v9.receiver = v4;
  v9.super_class = AKAuthorizationPresentationContext;
  v7 = [(AKAuthorizationPresentationContext *)&v9 init];
  v12 = v7;
  objc_storeStrong(&v12, v7);
  if (v7)
  {
    objc_storeStrong(&v12->_bundleID, v10);
    objc_storeStrong(&v12->_credentialRequestContext, location[0]);
    [(AKAuthorizationPresentationContext *)v12 _addPresenterParameters];
  }

  v6 = MEMORY[0x1E69E5928](v12);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v6;
}

- (AKAuthorizationPresentationContext)initWithContext:(id)a3 client:(id)a4
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v15 = [location[0] _upgradeContext];
  v16 = [v15 bundleID];
  MEMORY[0x1E69E5920](v16);
  MEMORY[0x1E69E5920](v15);
  if (v16)
  {
    v12 = v20;
    v11 = location[0];
    v14 = [location[0] _upgradeContext];
    v13 = [v14 bundleID];
    v20 = 0;
    v20 = [(AKAuthorizationPresentationContext *)v12 initWithContext:v11 bundleID:?];
    objc_storeStrong(&v20, v20);
    MEMORY[0x1E69E5920](v13);
    MEMORY[0x1E69E5920](v14);
  }

  else
  {
    v9 = v20;
    v8 = location[0];
    v10 = [v18 bundleID];
    v20 = 0;
    v20 = [(AKAuthorizationPresentationContext *)v9 initWithContext:v8 bundleID:?];
    objc_storeStrong(&v20, v20);
    MEMORY[0x1E69E5920](v10);
  }

  v4 = [v18 auditTokenData];
  clientAuditTokenData = v20->_clientAuditTokenData;
  v20->_clientAuditTokenData = v4;
  MEMORY[0x1E69E5920](clientAuditTokenData);
  v7 = MEMORY[0x1E69E5928](v20);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v20, 0);
  return v7;
}

- (AKAuthorizationPresentationContext)initWithUsername:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v11;
  v11 = 0;
  v9.receiver = v3;
  v9.super_class = AKAuthorizationPresentationContext;
  v8 = [(AKAuthorizationPresentationContext *)&v9 init];
  v11 = v8;
  objc_storeStrong(&v11, v8);
  if (v8)
  {
    v4 = objc_alloc_init(AKUserInformation);
    userInformation = v11->_userInformation;
    v11->_userInformation = v4;
    MEMORY[0x1E69E5920](userInformation);
    [(AKUserInformation *)v11->_userInformation setAccountName:location[0]];
  }

  v7 = MEMORY[0x1E69E5928](v11);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_bundleID forKey:@"_bundleID"];
  [location[0] encodeObject:v4->_localizedAppName forKey:@"_localizedAppName"];
  [location[0] encodeObject:v4->_iconName forKey:@"_iconName"];
  [location[0] encodeObject:v4->_iconTypeID forKey:@"_iconTypeID"];
  [location[0] encodeObject:v4->_iconData forKey:@"_iconData"];
  [location[0] encodeObject:v4->_iconScale forKey:@"_iconScale"];
  [location[0] encodeObject:v4->_credentialRequestContext forKey:@"_credentialRequestContext"];
  [location[0] encodeObject:v4->_userInformation forKey:@"_userInformation"];
  [location[0] encodeObject:v4->_loginChoices forKey:@"_loginChoices"];
  [location[0] encodeObject:v4->_clientAuditTokenData forKey:@"_clientAuditTokenData"];
  [location[0] encodeBool:v4->_signInAllowsPCSKeyAccess forKey:@"_signInAllowsPCSKeyAccess"];
  [location[0] encodeBool:v4->_hasShownFirstTimeAlready forKey:@"_hasShownFirstTimeAlready"];
  objc_storeStrong(location, 0);
}

- (AKAuthorizationPresentationContext)initWithCoder:(id)a3
{
  v64[3] = *MEMORY[0x1E69E9840];
  v58 = &v63;
  v63 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v63;
  v63 = 0;
  v61.receiver = v3;
  v61.super_class = AKAuthorizationPresentationContext;
  v59 = [(AKAuthorizationPresentationContext *)&v61 init];
  v63 = v59;
  objc_storeStrong(&v63, v59);
  if (v59)
  {
    v39 = location[0];
    v42 = 0x1E696A000uLL;
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_bundleID"];
    bundleID = v63->_bundleID;
    v63->_bundleID = v4;
    MEMORY[0x1E69E5920](bundleID);
    v40 = location[0];
    v6 = *(v42 + 3776);
    v7 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_localizedAppName"];
    localizedAppName = v63->_localizedAppName;
    v63->_localizedAppName = v7;
    MEMORY[0x1E69E5920](localizedAppName);
    v41 = location[0];
    v9 = *(v42 + 3776);
    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_iconName"];
    iconName = v63->_iconName;
    v63->_iconName = v10;
    MEMORY[0x1E69E5920](iconName);
    v43 = location[0];
    v12 = *(v42 + 3776);
    v13 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_iconTypeID"];
    iconTypeID = v63->_iconTypeID;
    v63->_iconTypeID = v13;
    MEMORY[0x1E69E5920](iconTypeID);
    v44 = location[0];
    v48 = 0x1E695D000uLL;
    v15 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_iconData"];
    iconData = v63->_iconData;
    v63->_iconData = v15;
    MEMORY[0x1E69E5920](iconData);
    v45 = location[0];
    v17 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_iconScale"];
    iconScale = v63->_iconScale;
    v63->_iconScale = v17;
    MEMORY[0x1E69E5920](iconScale);
    v46 = location[0];
    v19 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_credentialRequestContext"];
    credentialRequestContext = v63->_credentialRequestContext;
    v63->_credentialRequestContext = v19;
    MEMORY[0x1E69E5920](credentialRequestContext);
    v47 = location[0];
    v21 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_userInformation"];
    userInformation = v63->_userInformation;
    v63->_userInformation = v21;
    MEMORY[0x1E69E5920](userInformation);
    v49 = location[0];
    v23 = *(v48 + 3824);
    v24 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_clientAuditTokenData"];
    clientAuditTokenData = v63->_clientAuditTokenData;
    v63->_clientAuditTokenData = v24;
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
    loginChoices = v63->_loginChoices;
    v63->_loginChoices = v28;
    MEMORY[0x1E69E5920](loginChoices);
    v30 = [location[0] decodeBoolForKey:@"_signInAllowsPCSKeyAccess"];
    v63->_signInAllowsPCSKeyAccess = v30;
    v31 = [location[0] decodeBoolForKey:@"_hasShownFirstTimeAlready"];
    v32 = v56;
    v33 = v31;
    v34 = v57;
    v63->_hasShownFirstTimeAlready = v33;
    objc_storeStrong(v34, v32);
  }

  v37 = &v63;
  v36 = MEMORY[0x1E69E5928](v63);
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

- (id)copyWithZone:(_NSZone *)a3
{
  v26 = self;
  v25[2] = a2;
  v25[1] = a3;
  v25[0] = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v3 = [(NSString *)v26->_bundleID copy];
  v4 = *(v25[0] + 2);
  *(v25[0] + 2) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSString *)v26->_localizedAppName copy];
  v6 = *(v25[0] + 3);
  *(v25[0] + 3) = v5;
  MEMORY[0x1E69E5920](v6);
  v7 = [(NSString *)v26->_iconName copy];
  v8 = *(v25[0] + 4);
  *(v25[0] + 4) = v7;
  MEMORY[0x1E69E5920](v8);
  v9 = [(NSString *)v26->_iconTypeID copy];
  v10 = *(v25[0] + 5);
  *(v25[0] + 5) = v9;
  MEMORY[0x1E69E5920](v10);
  v11 = [(NSData *)v26->_iconData copy];
  v12 = *(v25[0] + 6);
  *(v25[0] + 6) = v11;
  MEMORY[0x1E69E5920](v12);
  v13 = [(NSNumber *)v26->_iconScale copy];
  v14 = *(v25[0] + 7);
  *(v25[0] + 7) = v13;
  MEMORY[0x1E69E5920](v14);
  v15 = [(AKCredentialRequestContext *)v26->_credentialRequestContext copy];
  v16 = *(v25[0] + 8);
  *(v25[0] + 8) = v15;
  MEMORY[0x1E69E5920](v16);
  v17 = [(AKUserInformation *)v26->_userInformation copy];
  v18 = *(v25[0] + 9);
  *(v25[0] + 9) = v17;
  MEMORY[0x1E69E5920](v18);
  v19 = [(NSArray *)v26->_loginChoices copy];
  v20 = *(v25[0] + 10);
  *(v25[0] + 10) = v19;
  MEMORY[0x1E69E5920](v20);
  v21 = [(NSData *)v26->_clientAuditTokenData copy];
  v22 = *(v25[0] + 13);
  *(v25[0] + 13) = v21;
  MEMORY[0x1E69E5920](v22);
  *(v25[0] + 8) = v26->_signInAllowsPCSKeyAccess;
  *(v25[0] + 9) = v26->_hasShownFirstTimeAlready;
  v24 = MEMORY[0x1E69E5928](v25[0]);
  objc_storeStrong(v25, 0);
  return v24;
}

+ (id)presentationContextForRequestContext:(id)a3 client:(id)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  v21 = 0;
  v18 = [location[0] _upgradeContext];
  v19 = [v18 bundleID];
  MEMORY[0x1E69E5920](v19);
  MEMORY[0x1E69E5920](v18);
  if (v19)
  {
    v15 = [AKAuthorizationPresentationContext alloc];
    v14 = location[0];
    v17 = [location[0] _upgradeContext];
    v16 = [v17 bundleID];
    v4 = [(AKAuthorizationPresentationContext *)v15 initWithContext:v14 bundleID:?];
    v5 = v21;
    v21 = v4;
    MEMORY[0x1E69E5920](v5);
    MEMORY[0x1E69E5920](v16);
    MEMORY[0x1E69E5920](v17);
  }

  else
  {
    v12 = [AKAuthorizationPresentationContext alloc];
    v11 = location[0];
    v13 = [v22 bundleID];
    v6 = [(AKAuthorizationPresentationContext *)v12 initWithContext:v11 bundleID:?];
    v7 = v21;
    v21 = v6;
    MEMORY[0x1E69E5920](v7);
    MEMORY[0x1E69E5920](v13);
  }

  v9 = [v22 auditTokenData];
  [(AKAuthorizationPresentationContext *)v21 setClientAuditTokenData:?];
  MEMORY[0x1E69E5920](v9);
  v10 = MEMORY[0x1E69E5928](v21);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);

  return v10;
}

+ (id)presentationContextForCreateAppleIDFlow:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [location[0] copy];
  if ([location[0] hasSharedAccountLoginChoices])
  {
    [v6 setLoginChoices:0];
  }

  v4 = [v6 credentialRequestContext];
  [v4 setPasswordRequest:?];
  MEMORY[0x1E69E5920](v4);
  v5 = MEMORY[0x1E69E5928](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (BOOL)hasSharedAccountLoginChoices
{
  v15 = *MEMORY[0x1E69E9840];
  v12 = self;
  __b[9] = a2;
  v9 = +[AKFeatureManager sharedManager];
  v10 = [v9 isSiwaCredentialSharingEnabled];
  MEMORY[0x1E69E5920](v9);
  if (v10)
  {
    if (!v12->_cachedHasSharedAccountLoginChoice)
    {
      objc_storeStrong(&v12->_cachedHasSharedAccountLoginChoice, MEMORY[0x1E695E110]);
      memset(__b, 0, 0x40uLL);
      obj = MEMORY[0x1E69E5928](v12->_loginChoices);
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

        objc_storeStrong(&v12->_cachedHasSharedAccountLoginChoice, MEMORY[0x1E695E118]);
      }

LABEL_12:
      MEMORY[0x1E69E5920](obj);
    }

    v13 = [(NSNumber *)v12->_cachedHasSharedAccountLoginChoice BOOLValue];
  }

  else
  {
    v13 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v13 & 1;
}

- (BOOL)hasCreateAccountLoginChoice
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = self;
  v12 = a2;
  if (!self->_cachedHasCreateAccountLoginChoice)
  {
    objc_storeStrong(&v13->_cachedHasCreateAccountLoginChoice, MEMORY[0x1E695E110]);
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x1E69E5928](v13->_loginChoices);
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

      objc_storeStrong(&v13->_cachedHasCreateAccountLoginChoice, MEMORY[0x1E695E118]);
    }

LABEL_10:
    MEMORY[0x1E69E5920](obj);
  }

  v3 = [(NSNumber *)v13->_cachedHasCreateAccountLoginChoice BOOLValue];
  *MEMORY[0x1E69E9840];
  return v3;
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
  v13 = self;
  v12 = a2;
  v8 = [(AKCredentialRequestContext *)self->_credentialRequestContext _proxiedClientAppName];
  v9 = [(NSString *)v8 length]!= 0;
  MEMORY[0x1E69E5920](v8);
  v11 = v9;
  if (v9)
  {
    [(AKAuthorizationPresentationContext *)v13 _addPresentationParametersForContext:v13->_credentialRequestContext];
  }

  else
  {
    v6 = +[AKConfiguration sharedConfiguration];
    v7 = [v6 shouldAutocycleAppsInTiburon];
    MEMORY[0x1E69E5920](v6);
    location[1] = v7;
    if (v7 == 1)
    {
      v2 = _NextTestBundleIdentifier();
      bundleID = v13->_bundleID;
      v13->_bundleID = v2;
      MEMORY[0x1E69E5920](bundleID);
    }

    location[0] = 0;
    location[0] = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:v13->_bundleID];
    MEMORY[0x1E69E5920](0);
    if ([(NSString *)v13->_bundleID isEqualToString:@"com.apple.aktool"])
    {
      objc_storeStrong(&v13->_localizedAppName, @"aktool");
    }

    else
    {
      v4 = [location[0] localizedName];
      localizedAppName = v13->_localizedAppName;
      v13->_localizedAppName = v4;
      MEMORY[0x1E69E5920](localizedAppName);
    }

    objc_storeStrong(location, 0);
  }
}

- (void)_addPresentationParametersForContext:(id)a3
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] _iconName];
  iconName = v19->_iconName;
  v19->_iconName = v3;
  MEMORY[0x1E69E5920](iconName);
  v5 = [location[0] _iconTypeID];
  iconTypeID = v19->_iconTypeID;
  v19->_iconTypeID = v5;
  MEMORY[0x1E69E5920](iconTypeID);
  v7 = [(AKCredentialRequestContext *)v19->_credentialRequestContext _iconData];
  iconData = v19->_iconData;
  v19->_iconData = v7;
  MEMORY[0x1E69E5920](iconData);
  v9 = [(AKCredentialRequestContext *)v19->_credentialRequestContext _iconScale];
  iconScale = v19->_iconScale;
  v19->_iconScale = v9;
  MEMORY[0x1E69E5920](iconScale);
  v16 = [(AKCredentialRequestContext *)v19->_credentialRequestContext _proxiedClientAppName];
  v17 = [(NSString *)v16 length];
  MEMORY[0x1E69E5920](v16);
  if (v17)
  {
    v11 = [(AKCredentialRequestContext *)v19->_credentialRequestContext _proxiedClientAppName];
    localizedAppName = v19->_localizedAppName;
    v19->_localizedAppName = v11;
    MEMORY[0x1E69E5920](localizedAppName);
  }

  v15 = [(AKCredentialRequestContext *)v19->_credentialRequestContext _proxiedClientBundleID];
  MEMORY[0x1E69E5920](v15);
  if (v15)
  {
    v13 = [(AKCredentialRequestContext *)v19->_credentialRequestContext _proxiedClientBundleID];
    bundleID = v19->_bundleID;
    v19->_bundleID = v13;
    MEMORY[0x1E69E5920](bundleID);
  }

  objc_storeStrong(location, 0);
}

@end