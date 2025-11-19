@interface ASCAuthorizationPresentationContext
- (ASCAuthorizationPresentationContext)initWithCoder:(id)a3;
- (ASCAuthorizationPresentationContext)initWithRequestContext:(id)a3 appIdentifier:(id)a4 frameIdentifier:(id)a5 shouldUseRelyingPartyForServiceName:(BOOL)a6 auditTokenData:(id)a7;
- (BOOL)_passwordLoginChoice:(id)a3 hasSameHighLevelDomainAndUsernameAsPasskeyLoginChoice:(id)a4;
- (id)_initWithCABLEAuthenticatorURL:(id)a3 shouldRequireConsent:(BOOL)a4 passkeyURLType:(int64_t)a5;
- (int64_t)externalPasskeyLoginChoiceCount;
- (int64_t)iCloudKeychainPasskeyLoginChoiceCount;
- (void)_getPrimaryLoginChoices:(id *)a3 otherLoginChoices:(id *)a4;
- (void)addLoginChoice:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)updateLoginChoices:(id)a3;
@end

@implementation ASCAuthorizationPresentationContext

- (ASCAuthorizationPresentationContext)initWithRequestContext:(id)a3 appIdentifier:(id)a4 frameIdentifier:(id)a5 shouldUseRelyingPartyForServiceName:(BOOL)a6 auditTokenData:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v127.receiver = self;
  v127.super_class = ASCAuthorizationPresentationContext;
  v16 = [(ASCAuthorizationPresentationContext *)&v127 init];
  if (!v16)
  {
    goto LABEL_45;
  }

  v123 = v15;
  v17 = [v13 copy];
  appIdentifier = v16->_appIdentifier;
  v16->_appIdentifier = v17;

  v124 = v14;
  v19 = [v14 copy];
  frameIdentifier = v16->_frameIdentifier;
  v16->_frameIdentifier = v19;

  v21 = [v12 proxiedAppName];
  v22 = [v21 copy];
  serviceName = v16->_serviceName;
  v16->_serviceName = v22;

  if ([v12 isProxiedRequest])
  {
    v24 = [v12 proxiedBundleIdentifier];
    bundleIdentifier = v16->_bundleIdentifier;
    v16->_bundleIdentifier = v24;

    v26 = [v12 proxiedTeamIdentifier];
    teamIdentifier = v16->_teamIdentifier;
    v16->_teamIdentifier = v26;
LABEL_16:

    goto LABEL_17;
  }

  if ([v13 length])
  {
    v28 = v16->_appIdentifier;
    v126 = 0;
    v29 = [MEMORY[0x1E6963620] bundleRecordWithApplicationIdentifier:v28 error:&v126];
    teamIdentifier = v126;
    if (v29)
    {
      v30 = v29;
    }

    else
    {
      v31 = objc_alloc(MEMORY[0x1E69635D0]);
      v32 = v16->_appIdentifier;
      v125 = teamIdentifier;
      v30 = [v31 safari_initWithExtensionApplicationIdentifier:v32 error:&v125];
      v33 = v125;

      teamIdentifier = v33;
    }

    if (teamIdentifier)
    {
      v34 = WBS_LOG_CHANNEL_PREFIXAuthorization();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [ASCAuthorizationPresentationContext initWithRequestContext:v34 appIdentifier:teamIdentifier frameIdentifier:? shouldUseRelyingPartyForServiceName:? auditTokenData:?];
      }
    }

    v35 = [v30 bundleIdentifier];
    v36 = v16->_bundleIdentifier;
    v16->_bundleIdentifier = v35;

    v37 = [v30 teamIdentifier];
    v38 = v16->_teamIdentifier;
    v16->_teamIdentifier = v37;

    if (!v16->_serviceName)
    {
      v39 = [v30 localizedName];
      v40 = v16->_serviceName;
      v16->_serviceName = v39;

      if (!v16->_serviceName)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v41 = [v30 containingBundleRecord];
          v42 = [v41 localizedName];
          v43 = v16->_serviceName;
          v16->_serviceName = v42;
        }
      }
    }

    goto LABEL_16;
  }

LABEL_17:
  v16->_serviceType = 0;
  v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
  loginChoices = v16->_loginChoices;
  v16->_loginChoices = v44;

  v46 = [v12 appleIDAuthorizationRequest];
  appleIDAuthorizationRequest = v16->_appleIDAuthorizationRequest;
  v16->_appleIDAuthorizationRequest = v46;

  if (v8)
  {
    v48 = [v12 platformKeyCredentialAssertionOptions];
    v49 = [v48 origin];
    v50 = [v49 length];

    if (v50)
    {
      v51 = MEMORY[0x1E695DFF8];
      v52 = [v12 platformKeyCredentialAssertionOptions];
      v53 = [v52 origin];
      v54 = [v51 URLWithString:v53];

      v55 = [v54 host];
      v56 = [v55 safari_highLevelDomainForPasswordManager];
      v57 = v56;
      if (v56)
      {
        v58 = v56;
        v59 = v16->_serviceName;
        v16->_serviceName = v58;
      }

      else
      {
        v59 = [v12 relyingPartyIdentifier];
        v61 = [v59 copy];
        v62 = v16->_serviceName;
        v16->_serviceName = v61;
      }
    }

    else
    {
      v54 = [v12 relyingPartyIdentifier];
      v60 = [v54 copy];
      v55 = v16->_serviceName;
      v16->_serviceName = v60;
    }

    v16->_serviceType = 1;
  }

  v63 = [v12 platformKeyCredentialCreationOptions];
  v64 = [v12 platformKeyCredentialAssertionOptions];
  v65 = v64;
  if (v63)
  {
    v66 = [v63 userVerificationPreference];
    platformUserVerificationPreference = v16->_platformUserVerificationPreference;
    v16->_platformUserVerificationPreference = v66;

    v68 = [v63 copy];
    passkeyCreationOptionsForExternalProvider = v16->_passkeyCreationOptionsForExternalProvider;
    v16->_passkeyCreationOptionsForExternalProvider = v68;
  }

  else
  {
    v70 = [v64 userVerificationPreference];
    passkeyCreationOptionsForExternalProvider = v16->_platformUserVerificationPreference;
    v16->_platformUserVerificationPreference = v70;
  }

  objc_storeStrong(&v16->_passkeyAssertionOptionsForExternalProvider, v65);
  if (v63 | v65)
  {
    v71 = 1;
  }

  else
  {
    v71 = [v12 isCABLEAuthenticatorRequest];
  }

  v16->_isPasskeyRequest = v71;
  v72 = [v65 destinationSiteForCrossSiteAssertion];
  destinationSiteForCrossSiteAssertion = v16->_destinationSiteForCrossSiteAssertion;
  v16->_destinationSiteForCrossSiteAssertion = v72;

  v74 = [v12 testOptions];
  testOptions = v16->_testOptions;
  v16->_testOptions = v74;

  if (!v16->_destinationSiteForCrossSiteAssertion)
  {
    v76 = [v12 securityKeyCredentialAssertionOptions];
    v77 = [v76 destinationSiteForCrossSiteAssertion];
    v78 = v16->_destinationSiteForCrossSiteAssertion;
    v16->_destinationSiteForCrossSiteAssertion = v77;
  }

  v122 = v13;
  v16->_isProxiedRequest = [v12 isProxiedRequest];
  v79 = [v12 proxiedAssociatedDomains];
  v80 = [v79 copy];
  proxiedAssociatedDomains = v16->_proxiedAssociatedDomains;
  v16->_proxiedAssociatedDomains = v80;

  v82 = [v12 proxiedIconData];
  v83 = [v82 copy];
  proxiedIconData = v16->_proxiedIconData;
  v16->_proxiedIconData = v83;

  v85 = [v12 proxiedIconScale];
  v86 = [v85 copy];
  proxiedIconScale = v16->_proxiedIconScale;
  v16->_proxiedIconScale = v86;

  v88 = [v12 proxiedOriginDeviceName];
  v89 = [v88 copy];
  proxiedOriginDeviceName = v16->_proxiedOriginDeviceName;
  v16->_proxiedOriginDeviceName = v89;

  v16->_isCABLEAuthenticatorRequest = [v12 isCABLEAuthenticatorRequest];
  v91 = v8;
  if ([v12 requestStyle] == 1)
  {
    v92 = [v12 securityKeyCredentialAssertionOptions];
    v16->_shouldAllowSecurityKeysFromCABLEView = v92 != 0;
  }

  else
  {
    v16->_shouldAllowSecurityKeysFromCABLEView = 0;
  }

  v93 = v12;
  v94 = [v93 platformKeyCredentialAssertionOptions];
  v95 = v94;
  if (v94)
  {
    v96 = [v94 extensions];
    v97 = [v96 caBLEAuthenticatorMinimumRequirement];
  }

  else
  {
    v98 = [v93 platformKeyCredentialCreationOptions];
    v96 = v98;
    if (v98)
    {
      v99 = [v98 extensions];
      v97 = [v99 caBLEAuthenticatorMinimumRequirement];
    }

    else
    {
      v97 = 0;
    }
  }

  v16->_cableAuthenticatorRequirement = v97;
  v100 = [v93 proxySheetHeaderOverride];
  overrideHeader = v16->_overrideHeader;
  v16->_overrideHeader = v100;

  v102 = [v93 proxySheetTitleOverride];
  overrideTitle = v16->_overrideTitle;
  v16->_overrideTitle = v102;

  v104 = [v93 proxySheetSubtitleOverride];
  overrideSubtitle = v16->_overrideSubtitle;
  v16->_overrideSubtitle = v104;

  v106 = [v93 proxySheetNoCredentialsErrorTitleOverride];
  overrideNoCredentialsErrorTitle = v16->_overrideNoCredentialsErrorTitle;
  v16->_overrideNoCredentialsErrorTitle = v106;

  v108 = [v93 proxySheetNoCredentialsErrorMessageOverride];
  overrideNoCredentialsErrorMessage = v16->_overrideNoCredentialsErrorMessage;
  v16->_overrideNoCredentialsErrorMessage = v108;

  v16->_useAlternativeSecurityKeysIcon = [v93 useAlternativeSecurityKeysIcon];
  if (v91)
  {
    v110 = +[ASFeatureManager sharedManager];
    v111 = [v93 relyingPartyIdentifier];
    v16->_shouldUseFallbackPasskeyUI = [v110 shouldUseFallbackUIForRelyingParty:v111];
  }

  else
  {
    v16->_shouldUseFallbackPasskeyUI = 0;
  }

  v112 = [v93 securityKeyCredentialAssertionOptions];
  v113 = [v112 allowedCredentials];
  v114 = [v113 safari_filterObjectsUsingBlock:&__block_literal_global_387];

  allowedCredentialsForSecurityKeyAssertion = v16->_allowedCredentialsForSecurityKeyAssertion;
  v16->_allowedCredentialsForSecurityKeyAssertion = v114;

  v116 = [v93 windowSceneIdentifier];
  windowSceneIdentifier = v16->_windowSceneIdentifier;
  v16->_windowSceneIdentifier = v116;

  v16->_isConditionalRegistrationRequest = [v93 isConditionalRegistrationRequest];
  v15 = v123;
  v118 = [v123 copy];
  auditTokenData = v16->_auditTokenData;
  v16->_auditTokenData = v118;

  v120 = v16;
  v14 = v124;
  v13 = v122;
LABEL_45:

  return v16;
}

- (id)_initWithCABLEAuthenticatorURL:(id)a3 shouldRequireConsent:(BOOL)a4 passkeyURLType:(int64_t)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = ASCAuthorizationPresentationContext;
  v9 = [(ASCAuthorizationPresentationContext *)&v14 init];
  if (v9)
  {
    v10 = [v8 copy];
    cableAuthenticatorURL = v9->_cableAuthenticatorURL;
    v9->_cableAuthenticatorURL = v10;

    v9->_shouldRequireCABLEAuthenticatorConsent = a4;
    v9->_passkeyURLType = a5;
    v12 = v9;
  }

  return v9;
}

- (void)addLoginChoice:(id)a3
{
  loginChoices = self->_loginChoices;
  v5 = a3;
  [(NSMutableArray *)loginChoices safari_insertObject:v5 inSortedOrderUsingComparator:&__block_literal_global_4];
  v6 = requestTypeForLoginChoice(v5);

  self->_requestTypes |= v6;
}

- (void)updateLoginChoices:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [a3 mutableCopy];
  loginChoices = self->_loginChoices;
  self->_loginChoices = v4;

  [(NSMutableArray *)self->_loginChoices sortUsingComparator:&__block_literal_global_133];
  self->_requestTypes = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_loginChoices;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        self->_requestTypes |= requestTypeForLoginChoice(*(*(&v12 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __59__ASCAuthorizationPresentationContext_hasExternalPasswords__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 loginChoiceKind] == 1)
  {
    v3 = [v2 isExternal];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __63__ASCAuthorizationPresentationContext_localAccountLoginChoices__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 loginChoiceKind];
  if (v3 < 2)
  {
    v4 = 1;
  }

  else if (v3 == 3)
  {
    v4 = [v2 credentialKind] == 1;
  }

  else if (v3 == 2)
  {
    v4 = [v2 isRegistrationRequest] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_getPrimaryLoginChoices:(id *)a3 otherLoginChoices:(id *)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = [(ASCAuthorizationPresentationContext *)self _passkeyLoginChoices];
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v21 = self;
  v8 = self->_loginChoices;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        if ([v13 loginChoiceKind] == 1 && objc_msgSend(v5, "count") == 1)
        {
          v14 = [v5 firstObject];
          v15 = [(ASCAuthorizationPresentationContext *)v21 _passwordLoginChoice:v13 hasSameHighLevelDomainAndUsernameAsPasskeyLoginChoice:v14];

          if (v15)
          {
            v16 = v7;
          }

          else
          {
            v16 = v6;
          }
        }

        else if ([v13 loginChoiceKind] >= 3)
        {
          v16 = v7;
        }

        else
        {
          v16 = v6;
        }

        [v16 addObject:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  if ([v6 count])
  {
    v17 = a4;
    *a3 = [v6 copy];
  }

  else
  {
    v17 = a3;
  }

  *v17 = [v7 copy];

  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)_passwordLoginChoice:(id)a3 hasSameHighLevelDomainAndUsernameAsPasskeyLoginChoice:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 site];
  v8 = [v7 safari_highLevelDomainForPasswordManager];
  v9 = [v6 relyingPartyIdentifier];
  v10 = [v9 safari_highLevelDomainForPasswordManager];
  if ([v8 isEqualToString:v10])
  {
    v11 = [v5 username];
    v12 = [v6 userVisibleName];
    v13 = [v11 isEqualToString:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (int64_t)iCloudKeychainPasskeyLoginChoiceCount
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = +[ASFeatureManager sharedManager];
  v4 = [v3 isDeviceConfiguredToAllowPasskeys];

  if (v4)
  {
    objc_opt_class();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = self->_loginChoices;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {
            v12 = [v11 externalCredentialProviderName];

            if (!v12)
            {
              ++v8;
            }
          }
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

- (int64_t)externalPasskeyLoginChoiceCount
{
  v18 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_loginChoices;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 externalCredentialProviderName];

          if (v10)
          {
            ++v6;
          }
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

BOOL __61__ASCAuthorizationPresentationContext_credentialLoginChoices__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 loginChoiceKind] != 5 && objc_msgSend(v2, "loginChoiceKind") != 6;

  return v3;
}

BOOL __64__ASCAuthorizationPresentationContext_otherAccountsLoginChoices__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 loginChoiceKind] == 5 || objc_msgSend(v2, "loginChoiceKind") == 6;

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  loginChoices = self->_loginChoices;
  v7 = a3;
  [v7 encodeObject:loginChoices forKey:@"loginChoices"];
  [v7 encodeObject:self->_appIdentifier forKey:@"appIdentifier"];
  [v7 encodeObject:self->_frameIdentifier forKey:@"frameIdentifier"];
  [v7 encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [v7 encodeObject:self->_teamIdentifier forKey:@"teamIdentifier"];
  [v7 encodeObject:self->_serviceName forKey:@"serviceName"];
  [v7 encodeInteger:self->_serviceType forKey:@"serviceType"];
  [v7 encodeObject:self->_destinationSiteForCrossSiteAssertion forKey:@"destinationSiteForCrossSiteAssertion"];
  [v7 encodeObject:self->_proxiedAssociatedDomains forKey:@"associatedDomains"];
  [v7 encodeObject:self->_proxiedIconData forKey:@"iconData"];
  [v7 encodeObject:self->_proxiedIconScale forKey:@"iconScale"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_requestTypes];
  [v7 encodeObject:v5 forKey:@"requestTypes"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_isPasskeyRequest];
  [v7 encodeObject:v6 forKey:@"isPasskeyRequest"];

  [v7 encodeBool:self->_isProxiedRequest forKey:@"isProxiedRequestKey"];
  [v7 encodeObject:self->_proxiedOriginDeviceName forKey:@"proxiedOriginDeviceName"];
  [v7 encodeObject:self->_allowedCredentialsForSecurityKeyAssertion forKey:@"allowedCredentialsForSecurityKeyAssertion"];
  [v7 encodeBool:self->_useAlternativeSecurityKeysIcon forKey:@"useAlternativeSecurityKeysIcon"];
  [v7 encodeObject:self->_appleIDAuthorizationRequest forKey:@"appleIDAuthorizationRequest"];
  [v7 encodeObject:self->_platformUserVerificationPreference forKey:@"platformUserVerificationPreference"];
  [v7 encodeObject:self->_testOptions forKey:@"testOptions"];
  [v7 encodeBool:self->_shouldUseFallbackPasskeyUI forKey:@"shouldUseFallbackPasskeyUI"];
  [v7 encodeObject:self->_cableAuthenticatorURL forKey:@"cableAuthenticatorURL"];
  [v7 encodeBool:self->_isCABLEAuthenticatorRequest forKey:@"isCABLEAuthenticatorRequest"];
  [v7 encodeBool:self->_shouldRequireCABLEAuthenticatorConsent forKey:@"shouldRequireCABLEAuthenticatorConsent"];
  [v7 encodeBool:self->_shouldAllowSecurityKeysFromCABLEView forKey:@"shouldAllowSecurityKeysFromCABLEView"];
  [v7 encodeInteger:self->_cableAuthenticatorRequirement forKey:@"cableAuthenticatorRequirement"];
  [v7 encodeInteger:self->_passkeyURLType forKey:@"passkeyURLType"];
  [v7 encodeObject:self->_overrideHeader forKey:@"overrideHeader"];
  [v7 encodeObject:self->_overrideTitle forKey:@"overrideTitle"];
  [v7 encodeObject:self->_overrideSubtitle forKey:@"overrideSubtitle"];
  [v7 encodeObject:self->_overrideNoCredentialsErrorTitle forKey:@"overrideNoCredentialsErrorTitle"];
  [v7 encodeObject:self->_overrideNoCredentialsErrorMessage forKey:@"overrideNoCredentialsErrorMessage"];
  [v7 encodeObject:self->_windowSceneIdentifier forKey:@"windowSceneIdentifier"];
  [v7 encodeObject:self->_passkeyCreationOptionsForExternalProvider forKey:@"passkeyCreationOptionsForExternalProvider"];
  [v7 encodeObject:self->_passkeyAssertionOptionsForExternalProvider forKey:@"passkeyAssertionOptionsForExternalProvider"];
  [v7 encodeBool:self->_isConditionalRegistrationRequest forKey:@"isConditionalRegistrationRequest"];
  [v7 encodeObject:self->_auditTokenData forKey:@"auditTokenData"];
}

- (ASCAuthorizationPresentationContext)initWithCoder:(id)a3
{
  v4 = a3;
  v68.receiver = self;
  v68.super_class = ASCAuthorizationPresentationContext;
  v5 = [(ASCAuthorizationPresentationContext *)&v68 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appIdentifier"];
    appIdentifier = v5->_appIdentifier;
    v5->_appIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"frameIdentifier"];
    frameIdentifier = v5->_frameIdentifier;
    v5->_frameIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"teamIdentifier"];
    teamIdentifier = v5->_teamIdentifier;
    v5->_teamIdentifier = v12;

    v14 = ASAllLoginChoiceClasses();
    v15 = [v14 setByAddingObject:objc_opt_class()];

    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"loginChoices"];
    loginChoices = v5->_loginChoices;
    v5->_loginChoices = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceName"];
    serviceName = v5->_serviceName;
    v5->_serviceName = v18;

    v5->_serviceType = [v4 decodeIntegerForKey:@"serviceType"];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"destinationSiteForCrossSiteAssertion"];
    destinationSiteForCrossSiteAssertion = v5->_destinationSiteForCrossSiteAssertion;
    v5->_destinationSiteForCrossSiteAssertion = v20;

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"associatedDomains"];
    proxiedAssociatedDomains = v5->_proxiedAssociatedDomains;
    v5->_proxiedAssociatedDomains = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iconData"];
    proxiedIconData = v5->_proxiedIconData;
    v5->_proxiedIconData = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iconScale"];
    proxiedIconScale = v5->_proxiedIconScale;
    v5->_proxiedIconScale = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestTypes"];
    v5->_requestTypes = [v31 unsignedIntegerValue];
    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isPasskeyRequest"];
    v5->_isPasskeyRequest = [v32 unsignedIntegerValue] != 0;

    v5->_isProxiedRequest = [v4 decodeBoolForKey:@"isProxiedRequestKey"];
    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxiedOriginDeviceName"];
    proxiedOriginDeviceName = v5->_proxiedOriginDeviceName;
    v5->_proxiedOriginDeviceName = v33;

    v35 = MEMORY[0x1E695DFD8];
    v36 = objc_opt_class();
    v37 = [v35 setWithObjects:{v36, objc_opt_class(), 0}];
    v38 = [v4 decodeObjectOfClasses:v37 forKey:@"allowedCredentialsForSecurityKeyAssertion"];
    allowedCredentialsForSecurityKeyAssertion = v5->_allowedCredentialsForSecurityKeyAssertion;
    v5->_allowedCredentialsForSecurityKeyAssertion = v38;

    v5->_useAlternativeSecurityKeysIcon = [v4 decodeBoolForKey:@"useAlternativeSecurityKeysIcon"];
    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appleIDAuthorizationRequest"];
    appleIDAuthorizationRequest = v5->_appleIDAuthorizationRequest;
    v5->_appleIDAuthorizationRequest = v40;

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"platformUserVerificationPreference"];
    platformUserVerificationPreference = v5->_platformUserVerificationPreference;
    v5->_platformUserVerificationPreference = v42;

    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"testOptions"];
    testOptions = v5->_testOptions;
    v5->_testOptions = v44;

    v5->_shouldUseFallbackPasskeyUI = [v4 decodeBoolForKey:@"shouldUseFallbackPasskeyUI"];
    v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cableAuthenticatorURL"];
    cableAuthenticatorURL = v5->_cableAuthenticatorURL;
    v5->_cableAuthenticatorURL = v46;

    v5->_isCABLEAuthenticatorRequest = [v4 decodeBoolForKey:@"isCABLEAuthenticatorRequest"];
    v5->_shouldRequireCABLEAuthenticatorConsent = [v4 decodeBoolForKey:@"shouldRequireCABLEAuthenticatorConsent"];
    v5->_shouldAllowSecurityKeysFromCABLEView = [v4 decodeBoolForKey:@"shouldAllowSecurityKeysFromCABLEView"];
    v5->_cableAuthenticatorRequirement = [v4 decodeIntegerForKey:@"cableAuthenticatorRequirement"];
    v5->_passkeyURLType = [v4 decodeIntegerForKey:@"passkeyURLType"];
    v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"overrideHeader"];
    overrideHeader = v5->_overrideHeader;
    v5->_overrideHeader = v48;

    v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"overrideTitle"];
    overrideTitle = v5->_overrideTitle;
    v5->_overrideTitle = v50;

    v52 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"overrideSubtitle"];
    overrideSubtitle = v5->_overrideSubtitle;
    v5->_overrideSubtitle = v52;

    v54 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"overrideNoCredentialsErrorTitle"];
    overrideNoCredentialsErrorTitle = v5->_overrideNoCredentialsErrorTitle;
    v5->_overrideNoCredentialsErrorTitle = v54;

    v56 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"overrideNoCredentialsErrorMessage"];
    overrideNoCredentialsErrorMessage = v5->_overrideNoCredentialsErrorMessage;
    v5->_overrideNoCredentialsErrorMessage = v56;

    v58 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"windowSceneIdentifier"];
    windowSceneIdentifier = v5->_windowSceneIdentifier;
    v5->_windowSceneIdentifier = v58;

    v60 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passkeyCreationOptionsForExternalProvider"];
    passkeyCreationOptionsForExternalProvider = v5->_passkeyCreationOptionsForExternalProvider;
    v5->_passkeyCreationOptionsForExternalProvider = v60;

    v62 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passkeyAssertionOptionsForExternalProvider"];
    passkeyAssertionOptionsForExternalProvider = v5->_passkeyAssertionOptionsForExternalProvider;
    v5->_passkeyAssertionOptionsForExternalProvider = v62;

    v5->_isConditionalRegistrationRequest = [v4 decodeBoolForKey:@"isConditionalRegistrationRequest"];
    v64 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"auditTokenData"];
    auditTokenData = v5->_auditTokenData;
    v5->_auditTokenData = v64;

    v66 = v5;
  }

  return v5;
}

- (void)initWithRequestContext:(void *)a1 appIdentifier:(void *)a2 frameIdentifier:shouldUseRelyingPartyForServiceName:auditTokenData:.cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_1C20AD000, v3, OS_LOG_TYPE_ERROR, "Unable to fetch bundle record for app identifier on credential request context with error: %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

@end