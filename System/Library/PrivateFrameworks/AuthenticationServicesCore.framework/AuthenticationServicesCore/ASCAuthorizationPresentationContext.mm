@interface ASCAuthorizationPresentationContext
- (ASCAuthorizationPresentationContext)initWithCoder:(id)coder;
- (ASCAuthorizationPresentationContext)initWithRequestContext:(id)context appIdentifier:(id)identifier frameIdentifier:(id)frameIdentifier shouldUseRelyingPartyForServiceName:(BOOL)name auditTokenData:(id)data;
- (BOOL)_passwordLoginChoice:(id)choice hasSameHighLevelDomainAndUsernameAsPasskeyLoginChoice:(id)loginChoice;
- (id)_initWithCABLEAuthenticatorURL:(id)l shouldRequireConsent:(BOOL)consent passkeyURLType:(int64_t)type;
- (int64_t)externalPasskeyLoginChoiceCount;
- (int64_t)iCloudKeychainPasskeyLoginChoiceCount;
- (void)_getPrimaryLoginChoices:(id *)choices otherLoginChoices:(id *)loginChoices;
- (void)addLoginChoice:(id)choice;
- (void)encodeWithCoder:(id)coder;
- (void)updateLoginChoices:(id)choices;
@end

@implementation ASCAuthorizationPresentationContext

- (ASCAuthorizationPresentationContext)initWithRequestContext:(id)context appIdentifier:(id)identifier frameIdentifier:(id)frameIdentifier shouldUseRelyingPartyForServiceName:(BOOL)name auditTokenData:(id)data
{
  nameCopy = name;
  contextCopy = context;
  identifierCopy = identifier;
  frameIdentifierCopy = frameIdentifier;
  dataCopy = data;
  v127.receiver = self;
  v127.super_class = ASCAuthorizationPresentationContext;
  v16 = [(ASCAuthorizationPresentationContext *)&v127 init];
  if (!v16)
  {
    goto LABEL_45;
  }

  v123 = dataCopy;
  v17 = [identifierCopy copy];
  appIdentifier = v16->_appIdentifier;
  v16->_appIdentifier = v17;

  v124 = frameIdentifierCopy;
  v19 = [frameIdentifierCopy copy];
  frameIdentifier = v16->_frameIdentifier;
  v16->_frameIdentifier = v19;

  proxiedAppName = [contextCopy proxiedAppName];
  v22 = [proxiedAppName copy];
  serviceName = v16->_serviceName;
  v16->_serviceName = v22;

  if ([contextCopy isProxiedRequest])
  {
    proxiedBundleIdentifier = [contextCopy proxiedBundleIdentifier];
    bundleIdentifier = v16->_bundleIdentifier;
    v16->_bundleIdentifier = proxiedBundleIdentifier;

    proxiedTeamIdentifier = [contextCopy proxiedTeamIdentifier];
    teamIdentifier = v16->_teamIdentifier;
    v16->_teamIdentifier = proxiedTeamIdentifier;
LABEL_16:

    goto LABEL_17;
  }

  if ([identifierCopy length])
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

    bundleIdentifier = [v30 bundleIdentifier];
    v36 = v16->_bundleIdentifier;
    v16->_bundleIdentifier = bundleIdentifier;

    teamIdentifier = [v30 teamIdentifier];
    v38 = v16->_teamIdentifier;
    v16->_teamIdentifier = teamIdentifier;

    if (!v16->_serviceName)
    {
      localizedName = [v30 localizedName];
      v40 = v16->_serviceName;
      v16->_serviceName = localizedName;

      if (!v16->_serviceName)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          containingBundleRecord = [v30 containingBundleRecord];
          localizedName2 = [containingBundleRecord localizedName];
          v43 = v16->_serviceName;
          v16->_serviceName = localizedName2;
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

  appleIDAuthorizationRequest = [contextCopy appleIDAuthorizationRequest];
  appleIDAuthorizationRequest = v16->_appleIDAuthorizationRequest;
  v16->_appleIDAuthorizationRequest = appleIDAuthorizationRequest;

  if (nameCopy)
  {
    platformKeyCredentialAssertionOptions = [contextCopy platformKeyCredentialAssertionOptions];
    origin = [platformKeyCredentialAssertionOptions origin];
    v50 = [origin length];

    if (v50)
    {
      v51 = MEMORY[0x1E695DFF8];
      platformKeyCredentialAssertionOptions2 = [contextCopy platformKeyCredentialAssertionOptions];
      origin2 = [platformKeyCredentialAssertionOptions2 origin];
      relyingPartyIdentifier2 = [v51 URLWithString:origin2];

      host = [relyingPartyIdentifier2 host];
      safari_highLevelDomainForPasswordManager = [host safari_highLevelDomainForPasswordManager];
      v57 = safari_highLevelDomainForPasswordManager;
      if (safari_highLevelDomainForPasswordManager)
      {
        v58 = safari_highLevelDomainForPasswordManager;
        relyingPartyIdentifier = v16->_serviceName;
        v16->_serviceName = v58;
      }

      else
      {
        relyingPartyIdentifier = [contextCopy relyingPartyIdentifier];
        v61 = [relyingPartyIdentifier copy];
        v62 = v16->_serviceName;
        v16->_serviceName = v61;
      }
    }

    else
    {
      relyingPartyIdentifier2 = [contextCopy relyingPartyIdentifier];
      v60 = [relyingPartyIdentifier2 copy];
      host = v16->_serviceName;
      v16->_serviceName = v60;
    }

    v16->_serviceType = 1;
  }

  platformKeyCredentialCreationOptions = [contextCopy platformKeyCredentialCreationOptions];
  platformKeyCredentialAssertionOptions3 = [contextCopy platformKeyCredentialAssertionOptions];
  v65 = platformKeyCredentialAssertionOptions3;
  if (platformKeyCredentialCreationOptions)
  {
    userVerificationPreference = [platformKeyCredentialCreationOptions userVerificationPreference];
    platformUserVerificationPreference = v16->_platformUserVerificationPreference;
    v16->_platformUserVerificationPreference = userVerificationPreference;

    v68 = [platformKeyCredentialCreationOptions copy];
    passkeyCreationOptionsForExternalProvider = v16->_passkeyCreationOptionsForExternalProvider;
    v16->_passkeyCreationOptionsForExternalProvider = v68;
  }

  else
  {
    userVerificationPreference2 = [platformKeyCredentialAssertionOptions3 userVerificationPreference];
    passkeyCreationOptionsForExternalProvider = v16->_platformUserVerificationPreference;
    v16->_platformUserVerificationPreference = userVerificationPreference2;
  }

  objc_storeStrong(&v16->_passkeyAssertionOptionsForExternalProvider, v65);
  if (platformKeyCredentialCreationOptions | v65)
  {
    isCABLEAuthenticatorRequest = 1;
  }

  else
  {
    isCABLEAuthenticatorRequest = [contextCopy isCABLEAuthenticatorRequest];
  }

  v16->_isPasskeyRequest = isCABLEAuthenticatorRequest;
  destinationSiteForCrossSiteAssertion = [v65 destinationSiteForCrossSiteAssertion];
  destinationSiteForCrossSiteAssertion = v16->_destinationSiteForCrossSiteAssertion;
  v16->_destinationSiteForCrossSiteAssertion = destinationSiteForCrossSiteAssertion;

  testOptions = [contextCopy testOptions];
  testOptions = v16->_testOptions;
  v16->_testOptions = testOptions;

  if (!v16->_destinationSiteForCrossSiteAssertion)
  {
    securityKeyCredentialAssertionOptions = [contextCopy securityKeyCredentialAssertionOptions];
    destinationSiteForCrossSiteAssertion2 = [securityKeyCredentialAssertionOptions destinationSiteForCrossSiteAssertion];
    v78 = v16->_destinationSiteForCrossSiteAssertion;
    v16->_destinationSiteForCrossSiteAssertion = destinationSiteForCrossSiteAssertion2;
  }

  v122 = identifierCopy;
  v16->_isProxiedRequest = [contextCopy isProxiedRequest];
  proxiedAssociatedDomains = [contextCopy proxiedAssociatedDomains];
  v80 = [proxiedAssociatedDomains copy];
  proxiedAssociatedDomains = v16->_proxiedAssociatedDomains;
  v16->_proxiedAssociatedDomains = v80;

  proxiedIconData = [contextCopy proxiedIconData];
  v83 = [proxiedIconData copy];
  proxiedIconData = v16->_proxiedIconData;
  v16->_proxiedIconData = v83;

  proxiedIconScale = [contextCopy proxiedIconScale];
  v86 = [proxiedIconScale copy];
  proxiedIconScale = v16->_proxiedIconScale;
  v16->_proxiedIconScale = v86;

  proxiedOriginDeviceName = [contextCopy proxiedOriginDeviceName];
  v89 = [proxiedOriginDeviceName copy];
  proxiedOriginDeviceName = v16->_proxiedOriginDeviceName;
  v16->_proxiedOriginDeviceName = v89;

  v16->_isCABLEAuthenticatorRequest = [contextCopy isCABLEAuthenticatorRequest];
  v91 = nameCopy;
  if ([contextCopy requestStyle] == 1)
  {
    securityKeyCredentialAssertionOptions2 = [contextCopy securityKeyCredentialAssertionOptions];
    v16->_shouldAllowSecurityKeysFromCABLEView = securityKeyCredentialAssertionOptions2 != 0;
  }

  else
  {
    v16->_shouldAllowSecurityKeysFromCABLEView = 0;
  }

  v93 = contextCopy;
  platformKeyCredentialAssertionOptions4 = [v93 platformKeyCredentialAssertionOptions];
  v95 = platformKeyCredentialAssertionOptions4;
  if (platformKeyCredentialAssertionOptions4)
  {
    extensions = [platformKeyCredentialAssertionOptions4 extensions];
    caBLEAuthenticatorMinimumRequirement = [extensions caBLEAuthenticatorMinimumRequirement];
  }

  else
  {
    platformKeyCredentialCreationOptions2 = [v93 platformKeyCredentialCreationOptions];
    extensions = platformKeyCredentialCreationOptions2;
    if (platformKeyCredentialCreationOptions2)
    {
      extensions2 = [platformKeyCredentialCreationOptions2 extensions];
      caBLEAuthenticatorMinimumRequirement = [extensions2 caBLEAuthenticatorMinimumRequirement];
    }

    else
    {
      caBLEAuthenticatorMinimumRequirement = 0;
    }
  }

  v16->_cableAuthenticatorRequirement = caBLEAuthenticatorMinimumRequirement;
  proxySheetHeaderOverride = [v93 proxySheetHeaderOverride];
  overrideHeader = v16->_overrideHeader;
  v16->_overrideHeader = proxySheetHeaderOverride;

  proxySheetTitleOverride = [v93 proxySheetTitleOverride];
  overrideTitle = v16->_overrideTitle;
  v16->_overrideTitle = proxySheetTitleOverride;

  proxySheetSubtitleOverride = [v93 proxySheetSubtitleOverride];
  overrideSubtitle = v16->_overrideSubtitle;
  v16->_overrideSubtitle = proxySheetSubtitleOverride;

  proxySheetNoCredentialsErrorTitleOverride = [v93 proxySheetNoCredentialsErrorTitleOverride];
  overrideNoCredentialsErrorTitle = v16->_overrideNoCredentialsErrorTitle;
  v16->_overrideNoCredentialsErrorTitle = proxySheetNoCredentialsErrorTitleOverride;

  proxySheetNoCredentialsErrorMessageOverride = [v93 proxySheetNoCredentialsErrorMessageOverride];
  overrideNoCredentialsErrorMessage = v16->_overrideNoCredentialsErrorMessage;
  v16->_overrideNoCredentialsErrorMessage = proxySheetNoCredentialsErrorMessageOverride;

  v16->_useAlternativeSecurityKeysIcon = [v93 useAlternativeSecurityKeysIcon];
  if (v91)
  {
    v110 = +[ASFeatureManager sharedManager];
    relyingPartyIdentifier3 = [v93 relyingPartyIdentifier];
    v16->_shouldUseFallbackPasskeyUI = [v110 shouldUseFallbackUIForRelyingParty:relyingPartyIdentifier3];
  }

  else
  {
    v16->_shouldUseFallbackPasskeyUI = 0;
  }

  securityKeyCredentialAssertionOptions3 = [v93 securityKeyCredentialAssertionOptions];
  allowedCredentials = [securityKeyCredentialAssertionOptions3 allowedCredentials];
  v114 = [allowedCredentials safari_filterObjectsUsingBlock:&__block_literal_global_387];

  allowedCredentialsForSecurityKeyAssertion = v16->_allowedCredentialsForSecurityKeyAssertion;
  v16->_allowedCredentialsForSecurityKeyAssertion = v114;

  windowSceneIdentifier = [v93 windowSceneIdentifier];
  windowSceneIdentifier = v16->_windowSceneIdentifier;
  v16->_windowSceneIdentifier = windowSceneIdentifier;

  v16->_isConditionalRegistrationRequest = [v93 isConditionalRegistrationRequest];
  dataCopy = v123;
  v118 = [v123 copy];
  auditTokenData = v16->_auditTokenData;
  v16->_auditTokenData = v118;

  v120 = v16;
  frameIdentifierCopy = v124;
  identifierCopy = v122;
LABEL_45:

  return v16;
}

- (id)_initWithCABLEAuthenticatorURL:(id)l shouldRequireConsent:(BOOL)consent passkeyURLType:(int64_t)type
{
  lCopy = l;
  v14.receiver = self;
  v14.super_class = ASCAuthorizationPresentationContext;
  v9 = [(ASCAuthorizationPresentationContext *)&v14 init];
  if (v9)
  {
    v10 = [lCopy copy];
    cableAuthenticatorURL = v9->_cableAuthenticatorURL;
    v9->_cableAuthenticatorURL = v10;

    v9->_shouldRequireCABLEAuthenticatorConsent = consent;
    v9->_passkeyURLType = type;
    v12 = v9;
  }

  return v9;
}

- (void)addLoginChoice:(id)choice
{
  loginChoices = self->_loginChoices;
  choiceCopy = choice;
  [(NSMutableArray *)loginChoices safari_insertObject:choiceCopy inSortedOrderUsingComparator:&__block_literal_global_4];
  v6 = requestTypeForLoginChoice(choiceCopy);

  self->_requestTypes |= v6;
}

- (void)updateLoginChoices:(id)choices
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [choices mutableCopy];
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

- (void)_getPrimaryLoginChoices:(id *)choices otherLoginChoices:(id *)loginChoices
{
  v27 = *MEMORY[0x1E69E9840];
  _passkeyLoginChoices = [(ASCAuthorizationPresentationContext *)self _passkeyLoginChoices];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  selfCopy = self;
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
        if ([v13 loginChoiceKind] == 1 && objc_msgSend(_passkeyLoginChoices, "count") == 1)
        {
          firstObject = [_passkeyLoginChoices firstObject];
          v15 = [(ASCAuthorizationPresentationContext *)selfCopy _passwordLoginChoice:v13 hasSameHighLevelDomainAndUsernameAsPasskeyLoginChoice:firstObject];

          if (v15)
          {
            v16 = array2;
          }

          else
          {
            v16 = array;
          }
        }

        else if ([v13 loginChoiceKind] >= 3)
        {
          v16 = array2;
        }

        else
        {
          v16 = array;
        }

        [v16 addObject:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  if ([array count])
  {
    choicesCopy = loginChoices;
    *choices = [array copy];
  }

  else
  {
    choicesCopy = choices;
  }

  *choicesCopy = [array2 copy];

  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)_passwordLoginChoice:(id)choice hasSameHighLevelDomainAndUsernameAsPasskeyLoginChoice:(id)loginChoice
{
  choiceCopy = choice;
  loginChoiceCopy = loginChoice;
  site = [choiceCopy site];
  safari_highLevelDomainForPasswordManager = [site safari_highLevelDomainForPasswordManager];
  relyingPartyIdentifier = [loginChoiceCopy relyingPartyIdentifier];
  safari_highLevelDomainForPasswordManager2 = [relyingPartyIdentifier safari_highLevelDomainForPasswordManager];
  if ([safari_highLevelDomainForPasswordManager isEqualToString:safari_highLevelDomainForPasswordManager2])
  {
    username = [choiceCopy username];
    userVisibleName = [loginChoiceCopy userVisibleName];
    v13 = [username isEqualToString:userVisibleName];
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
  isDeviceConfiguredToAllowPasskeys = [v3 isDeviceConfiguredToAllowPasskeys];

  if (isDeviceConfiguredToAllowPasskeys)
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
            externalCredentialProviderName = [v11 externalCredentialProviderName];

            if (!externalCredentialProviderName)
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
          externalCredentialProviderName = [v9 externalCredentialProviderName];

          if (externalCredentialProviderName)
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

- (void)encodeWithCoder:(id)coder
{
  loginChoices = self->_loginChoices;
  coderCopy = coder;
  [coderCopy encodeObject:loginChoices forKey:@"loginChoices"];
  [coderCopy encodeObject:self->_appIdentifier forKey:@"appIdentifier"];
  [coderCopy encodeObject:self->_frameIdentifier forKey:@"frameIdentifier"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [coderCopy encodeObject:self->_teamIdentifier forKey:@"teamIdentifier"];
  [coderCopy encodeObject:self->_serviceName forKey:@"serviceName"];
  [coderCopy encodeInteger:self->_serviceType forKey:@"serviceType"];
  [coderCopy encodeObject:self->_destinationSiteForCrossSiteAssertion forKey:@"destinationSiteForCrossSiteAssertion"];
  [coderCopy encodeObject:self->_proxiedAssociatedDomains forKey:@"associatedDomains"];
  [coderCopy encodeObject:self->_proxiedIconData forKey:@"iconData"];
  [coderCopy encodeObject:self->_proxiedIconScale forKey:@"iconScale"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_requestTypes];
  [coderCopy encodeObject:v5 forKey:@"requestTypes"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_isPasskeyRequest];
  [coderCopy encodeObject:v6 forKey:@"isPasskeyRequest"];

  [coderCopy encodeBool:self->_isProxiedRequest forKey:@"isProxiedRequestKey"];
  [coderCopy encodeObject:self->_proxiedOriginDeviceName forKey:@"proxiedOriginDeviceName"];
  [coderCopy encodeObject:self->_allowedCredentialsForSecurityKeyAssertion forKey:@"allowedCredentialsForSecurityKeyAssertion"];
  [coderCopy encodeBool:self->_useAlternativeSecurityKeysIcon forKey:@"useAlternativeSecurityKeysIcon"];
  [coderCopy encodeObject:self->_appleIDAuthorizationRequest forKey:@"appleIDAuthorizationRequest"];
  [coderCopy encodeObject:self->_platformUserVerificationPreference forKey:@"platformUserVerificationPreference"];
  [coderCopy encodeObject:self->_testOptions forKey:@"testOptions"];
  [coderCopy encodeBool:self->_shouldUseFallbackPasskeyUI forKey:@"shouldUseFallbackPasskeyUI"];
  [coderCopy encodeObject:self->_cableAuthenticatorURL forKey:@"cableAuthenticatorURL"];
  [coderCopy encodeBool:self->_isCABLEAuthenticatorRequest forKey:@"isCABLEAuthenticatorRequest"];
  [coderCopy encodeBool:self->_shouldRequireCABLEAuthenticatorConsent forKey:@"shouldRequireCABLEAuthenticatorConsent"];
  [coderCopy encodeBool:self->_shouldAllowSecurityKeysFromCABLEView forKey:@"shouldAllowSecurityKeysFromCABLEView"];
  [coderCopy encodeInteger:self->_cableAuthenticatorRequirement forKey:@"cableAuthenticatorRequirement"];
  [coderCopy encodeInteger:self->_passkeyURLType forKey:@"passkeyURLType"];
  [coderCopy encodeObject:self->_overrideHeader forKey:@"overrideHeader"];
  [coderCopy encodeObject:self->_overrideTitle forKey:@"overrideTitle"];
  [coderCopy encodeObject:self->_overrideSubtitle forKey:@"overrideSubtitle"];
  [coderCopy encodeObject:self->_overrideNoCredentialsErrorTitle forKey:@"overrideNoCredentialsErrorTitle"];
  [coderCopy encodeObject:self->_overrideNoCredentialsErrorMessage forKey:@"overrideNoCredentialsErrorMessage"];
  [coderCopy encodeObject:self->_windowSceneIdentifier forKey:@"windowSceneIdentifier"];
  [coderCopy encodeObject:self->_passkeyCreationOptionsForExternalProvider forKey:@"passkeyCreationOptionsForExternalProvider"];
  [coderCopy encodeObject:self->_passkeyAssertionOptionsForExternalProvider forKey:@"passkeyAssertionOptionsForExternalProvider"];
  [coderCopy encodeBool:self->_isConditionalRegistrationRequest forKey:@"isConditionalRegistrationRequest"];
  [coderCopy encodeObject:self->_auditTokenData forKey:@"auditTokenData"];
}

- (ASCAuthorizationPresentationContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v68.receiver = self;
  v68.super_class = ASCAuthorizationPresentationContext;
  v5 = [(ASCAuthorizationPresentationContext *)&v68 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appIdentifier"];
    appIdentifier = v5->_appIdentifier;
    v5->_appIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"frameIdentifier"];
    frameIdentifier = v5->_frameIdentifier;
    v5->_frameIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"teamIdentifier"];
    teamIdentifier = v5->_teamIdentifier;
    v5->_teamIdentifier = v12;

    v14 = ASAllLoginChoiceClasses();
    v15 = [v14 setByAddingObject:objc_opt_class()];

    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"loginChoices"];
    loginChoices = v5->_loginChoices;
    v5->_loginChoices = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceName"];
    serviceName = v5->_serviceName;
    v5->_serviceName = v18;

    v5->_serviceType = [coderCopy decodeIntegerForKey:@"serviceType"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"destinationSiteForCrossSiteAssertion"];
    destinationSiteForCrossSiteAssertion = v5->_destinationSiteForCrossSiteAssertion;
    v5->_destinationSiteForCrossSiteAssertion = v20;

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"associatedDomains"];
    proxiedAssociatedDomains = v5->_proxiedAssociatedDomains;
    v5->_proxiedAssociatedDomains = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iconData"];
    proxiedIconData = v5->_proxiedIconData;
    v5->_proxiedIconData = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iconScale"];
    proxiedIconScale = v5->_proxiedIconScale;
    v5->_proxiedIconScale = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestTypes"];
    v5->_requestTypes = [v31 unsignedIntegerValue];
    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isPasskeyRequest"];
    v5->_isPasskeyRequest = [v32 unsignedIntegerValue] != 0;

    v5->_isProxiedRequest = [coderCopy decodeBoolForKey:@"isProxiedRequestKey"];
    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proxiedOriginDeviceName"];
    proxiedOriginDeviceName = v5->_proxiedOriginDeviceName;
    v5->_proxiedOriginDeviceName = v33;

    v35 = MEMORY[0x1E695DFD8];
    v36 = objc_opt_class();
    v37 = [v35 setWithObjects:{v36, objc_opt_class(), 0}];
    v38 = [coderCopy decodeObjectOfClasses:v37 forKey:@"allowedCredentialsForSecurityKeyAssertion"];
    allowedCredentialsForSecurityKeyAssertion = v5->_allowedCredentialsForSecurityKeyAssertion;
    v5->_allowedCredentialsForSecurityKeyAssertion = v38;

    v5->_useAlternativeSecurityKeysIcon = [coderCopy decodeBoolForKey:@"useAlternativeSecurityKeysIcon"];
    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appleIDAuthorizationRequest"];
    appleIDAuthorizationRequest = v5->_appleIDAuthorizationRequest;
    v5->_appleIDAuthorizationRequest = v40;

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"platformUserVerificationPreference"];
    platformUserVerificationPreference = v5->_platformUserVerificationPreference;
    v5->_platformUserVerificationPreference = v42;

    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"testOptions"];
    testOptions = v5->_testOptions;
    v5->_testOptions = v44;

    v5->_shouldUseFallbackPasskeyUI = [coderCopy decodeBoolForKey:@"shouldUseFallbackPasskeyUI"];
    v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cableAuthenticatorURL"];
    cableAuthenticatorURL = v5->_cableAuthenticatorURL;
    v5->_cableAuthenticatorURL = v46;

    v5->_isCABLEAuthenticatorRequest = [coderCopy decodeBoolForKey:@"isCABLEAuthenticatorRequest"];
    v5->_shouldRequireCABLEAuthenticatorConsent = [coderCopy decodeBoolForKey:@"shouldRequireCABLEAuthenticatorConsent"];
    v5->_shouldAllowSecurityKeysFromCABLEView = [coderCopy decodeBoolForKey:@"shouldAllowSecurityKeysFromCABLEView"];
    v5->_cableAuthenticatorRequirement = [coderCopy decodeIntegerForKey:@"cableAuthenticatorRequirement"];
    v5->_passkeyURLType = [coderCopy decodeIntegerForKey:@"passkeyURLType"];
    v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"overrideHeader"];
    overrideHeader = v5->_overrideHeader;
    v5->_overrideHeader = v48;

    v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"overrideTitle"];
    overrideTitle = v5->_overrideTitle;
    v5->_overrideTitle = v50;

    v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"overrideSubtitle"];
    overrideSubtitle = v5->_overrideSubtitle;
    v5->_overrideSubtitle = v52;

    v54 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"overrideNoCredentialsErrorTitle"];
    overrideNoCredentialsErrorTitle = v5->_overrideNoCredentialsErrorTitle;
    v5->_overrideNoCredentialsErrorTitle = v54;

    v56 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"overrideNoCredentialsErrorMessage"];
    overrideNoCredentialsErrorMessage = v5->_overrideNoCredentialsErrorMessage;
    v5->_overrideNoCredentialsErrorMessage = v56;

    v58 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"windowSceneIdentifier"];
    windowSceneIdentifier = v5->_windowSceneIdentifier;
    v5->_windowSceneIdentifier = v58;

    v60 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passkeyCreationOptionsForExternalProvider"];
    passkeyCreationOptionsForExternalProvider = v5->_passkeyCreationOptionsForExternalProvider;
    v5->_passkeyCreationOptionsForExternalProvider = v60;

    v62 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passkeyAssertionOptionsForExternalProvider"];
    passkeyAssertionOptionsForExternalProvider = v5->_passkeyAssertionOptionsForExternalProvider;
    v5->_passkeyAssertionOptionsForExternalProvider = v62;

    v5->_isConditionalRegistrationRequest = [coderCopy decodeBoolForKey:@"isConditionalRegistrationRequest"];
    v64 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"auditTokenData"];
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