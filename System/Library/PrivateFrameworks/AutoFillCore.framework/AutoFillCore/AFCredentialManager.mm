@interface AFCredentialManager
+ (id)sharedInstance;
- (BOOL)hasAutoFillContextEntitlementForConnection:(id)connection;
- (BOOL)shouldAuthenticateToAcceptAutoFill;
- (id)_autoFillPayloadForPasskey:(id)passkey customInfoType:(unint64_t *)type;
- (id)_autoFillPayloadForPasswordCredential:(id)credential customInfoType:(unint64_t *)type;
- (id)_suggestionForPasskey:(id)passkey autoFillPayload:(id)payload customInfoType:(unint64_t)type;
- (id)_suggestionForPasswordCredential:(id)credential autoFillPayload:(id)payload customInfoType:(unint64_t)type;
- (id)generateLoginAutoFillWithDocumentTraits:(id)traits;
- (id)initPrivate;
- (id)obtainApplicationIdentifierFromConnection:(id)connection;
- (id)obtainBundleIdentifierFromConnection:(id)connection;
- (void)_consumeOneTimeCodeAutoFillSuggestionIfNeeded:(id)needed;
- (void)generateHideMyEmailAutoFillWithRenderTraits:(id)traits completionHandler:(id)handler;
- (void)generateHideMyEmailSuggestionWithApplicationBundleId:(id)id applicationId:(id)applicationId completionHandler:(id)handler;
- (void)generateOneTimeCodeAutoFillSuggestionsWithDocumentTraits:(id)traits completionHandler:(id)handler;
- (void)generateSignupAutoFillWithAutoFillMode:(unint64_t)mode documentTraits:(id)traits completionHandler:(id)handler;
- (void)getCredentialsWithApplicationIdentifier:(id)identifier documentTraits:(id)traits withCompletionHandler:(id)handler;
- (void)oneTimeCodeProviderReceivedCode:(id)code;
- (void)shouldAcceptAutoFill:(id)fill withPayload:(id)payload documentTraits:(id)traits completionHandler:(id)handler;
@end

@implementation AFCredentialManager

+ (id)sharedInstance
{
  v2 = instance_0;
  if (!instance_0)
  {
    if (sharedInstance_onceToken_0 != -1)
    {
      +[AFCredentialManager sharedInstance];
    }

    v2 = instance_0;
  }

  return v2;
}

uint64_t __37__AFCredentialManager_sharedInstance__block_invoke()
{
  instance_0 = [[AFCredentialManager alloc] initPrivate];

  return MEMORY[0x2821F96F8]();
}

- (id)initPrivate
{
  v12.receiver = self;
  v12.super_class = AFCredentialManager;
  v2 = [(AFCredentialManager *)&v12 init];
  if (v2)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v3 = getSFAppAutoFillPasskeyProviderClass_softClass;
    v21 = getSFAppAutoFillPasskeyProviderClass_softClass;
    if (!getSFAppAutoFillPasskeyProviderClass_softClass)
    {
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = __getSFAppAutoFillPasskeyProviderClass_block_invoke;
      v16 = &unk_278CF6A18;
      v17 = &v18;
      __getSFAppAutoFillPasskeyProviderClass_block_invoke(&v13);
      v3 = v19[3];
    }

    v4 = v3;
    _Block_object_dispose(&v18, 8);
    v5 = objc_alloc_init(v3);
    passkeyProvider = v2->_passkeyProvider;
    v2->_passkeyProvider = v5;

    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v7 = getSFAppAutoFillOneTimeCodeProviderClass_softClass;
    v21 = getSFAppAutoFillOneTimeCodeProviderClass_softClass;
    if (!getSFAppAutoFillOneTimeCodeProviderClass_softClass)
    {
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = __getSFAppAutoFillOneTimeCodeProviderClass_block_invoke;
      v16 = &unk_278CF6A18;
      v17 = &v18;
      __getSFAppAutoFillOneTimeCodeProviderClass_block_invoke(&v13);
      v7 = v19[3];
    }

    v8 = v7;
    _Block_object_dispose(&v18, 8);
    v9 = objc_alloc_init(v7);
    oneTimeCodeProvider = v2->_oneTimeCodeProvider;
    v2->_oneTimeCodeProvider = v9;

    [(SFAppAutoFillOneTimeCodeProvider *)v2->_oneTimeCodeProvider addObserver:v2];
  }

  return v2;
}

- (id)obtainApplicationIdentifierFromConnection:(id)connection
{
  connectionCopy = connection;
  v4 = connectionCopy;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    memset(&cf, 0, sizeof(cf));
  }

  v5 = SecTaskCreateWithAuditToken(0, &cf);
  if (v5)
  {
    v6 = v5;
    *cf.val = 0;
    v7 = SecTaskCopyValueForEntitlement(v5, @"application-identifier", &cf);
    if (*cf.val)
    {
      v8 = AFCredentialManagerOSLogFacility();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [AFCredentialManager obtainApplicationIdentifierFromConnection:?];
      }

      CFRelease(*cf.val);
    }

    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)obtainBundleIdentifierFromConnection:(id)connection
{
  connectionCopy = connection;
  v4 = connectionCopy;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  CPCopyBundleIdentifierAndTeamFromAuditToken();

  return 0;
}

- (BOOL)hasAutoFillContextEntitlementForConnection:(id)connection
{
  connectionCopy = connection;
  v4 = connectionCopy;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    memset(&cf, 0, sizeof(cf));
  }

  v5 = SecTaskCreateWithAuditToken(0, &cf);
  if (v5)
  {
    v6 = v5;
    *cf.val = 0;
    v7 = SecTaskCopyValueForEntitlement(v5, @"com.apple.textInput.autofillContext", &cf);
    bOOLValue = [v7 BOOLValue];

    if (*cf.val)
    {
      v9 = AFCredentialManagerOSLogFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [AFCredentialManager hasAutoFillContextEntitlementForConnection:?];
      }

      CFRelease(*cf.val);
    }

    CFRelease(v6);
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)getCredentialsWithApplicationIdentifier:(id)identifier documentTraits:(id)traits withCompletionHandler:(id)handler
{
  identifierCopy = identifier;
  traitsCopy = traits;
  handlerCopy = handler;
  associatedDomains = [traitsCopy associatedDomains];
  if ([associatedDomains count] && (getSFSafariCredentialStoreClass(), (objc_opt_respondsToSelector() & 1) != 0))
  {
    [getSFSafariCredentialStoreClass() getCredentialsForAppWithAppID:identifierCopy externallyVerifiedAndApprovedSharedWebCredentialDomains:associatedDomains completionHandler:handlerCopy];
  }

  else
  {
    getSFSafariCredentialStoreClass();
    if (objc_opt_respondsToSelector())
    {
      autofillContext = [traitsCopy autofillContext];
      v11 = [autofillContext objectForKey:@"_WebViewURL"];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v11 = 0;
      }

      [getSFSafariCredentialStoreClass() getCredentialsForAppWithAppID:identifierCopy websiteURL:v11 completionHandler:handlerCopy];
    }

    else
    {
      [getSFSafariCredentialStoreClass() getCredentialsForAppWithAppID:identifierCopy completionHandler:handlerCopy];
    }
  }
}

- (id)_autoFillPayloadForPasswordCredential:(id)credential customInfoType:(unint64_t *)type
{
  credentialCopy = credential;
  user = [credentialCopy user];
  password = [credentialCopy password];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([credentialCopy isExternal])
  {
    *type = 13;
    v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:credentialCopy requiringSecureCoding:1 error:0];
    [dictionary setObject:v9 forKey:@"ExternalCredentialData"];
  }

  else
  {
    *type = 5;
    [dictionary setObject:user forKey:@"AutofillUsername"];
    [dictionary setObject:password forKey:@"AutofillPassword"];
  }

  return dictionary;
}

- (id)_suggestionForPasswordCredential:(id)credential autoFillPayload:(id)payload customInfoType:(unint64_t)type
{
  credentialCopy = credential;
  payloadCopy = payload;
  user = [credentialCopy user];
  if (![user length])
  {
    v10 = +[AFSuggestionGenerationManager sharedInstance];
    localizationManager = [v10 localizationManager];
    v12 = [localizationManager localizedStringForKey:@"SAFARI_CREDENTIAL_DATE"];

    v13 = MEMORY[0x277CCA968];
    creationDate = [credentialCopy creationDate];
    v15 = [v13 localizedStringFromDate:creationDate dateStyle:1 timeStyle:0];

    v27 = 0;
    v16 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v12 validFormatSpecifiers:@"%@" error:&v27, v15];
    v17 = v27;
    v18 = &stru_28537ABC8;
    if (v16)
    {
      v18 = v16;
    }

    v19 = v18;

    if (v17)
    {
      v20 = AFCredentialManagerOSLogFacility();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [AFCredentialManager _suggestionForPasswordCredential:v17 autoFillPayload:? customInfoType:?];
      }
    }

    user = v19;
  }

  if ([credentialCopy isExternal])
  {
    site = [getSFSafariCredentialStoreClass() textSuggestionHeaderForExternalCredential:credentialCopy];
  }

  else
  {
    site = [credentialCopy site];
    if (![site length])
    {
      v22 = +[AFSuggestionGenerationManager sharedInstance];
      localizationManager2 = [v22 localizationManager];
      v24 = [localizationManager2 localizedStringForKey:@"SAFARI_KEYCHAIN"];

      site = v24;
    }
  }

  v25 = [[AFSuggestion alloc] initWithTitle:user subTitle:site usernameAndPasswordPayload:payloadCopy leadingImage:0 trailingImage:0 customInfoType:type];

  return v25;
}

- (id)_autoFillPayloadForPasskey:(id)passkey customInfoType:(unint64_t *)type
{
  v10[1] = *MEMORY[0x277D85DE8];
  *type = 12;
  v9 = @"Passkey";
  v10[0] = passkey;
  v4 = MEMORY[0x277CBEAC0];
  passkeyCopy = passkey;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_suggestionForPasskey:(id)passkey autoFillPayload:(id)payload customInfoType:(unint64_t)type
{
  payloadCopy = payload;
  passkeyCopy = passkey;
  username = [passkeyCopy username];
  v10 = +[AFSuggestionGenerationManager sharedInstance];
  localizationManager = [v10 localizationManager];
  v12 = [localizationManager localizedStringForKey:@"SAFARI_PASSKEY_SITE_SHORT"];

  v13 = MEMORY[0x277CCACA8];
  v22 = 0;
  relyingPartyIdentifier = [passkeyCopy relyingPartyIdentifier];

  v15 = [v13 stringWithValidatedFormat:v12 validFormatSpecifiers:@"%@" error:&v22, relyingPartyIdentifier];
  v16 = v22;
  v17 = &stru_28537ABC8;
  if (v15)
  {
    v17 = v15;
  }

  v18 = v17;

  if (v16)
  {
    v19 = AFCredentialManagerOSLogFacility();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [AFCredentialManager _suggestionForPasskey:v16 autoFillPayload:? customInfoType:?];
    }
  }

  v20 = [[AFSuggestion alloc] initWithTitle:username subTitle:v18 usernameAndPasswordPayload:payloadCopy leadingImage:0 trailingImage:0 customInfoType:type];

  return v20;
}

- (id)generateLoginAutoFillWithDocumentTraits:(id)traits
{
  v62[1] = *MEMORY[0x277D85DE8];
  traitsCopy = traits;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  sharedFeatureManager = [getSFAutoFillFeatureManagerClass() sharedFeatureManager];
  shouldAutoFillPasswords = [sharedFeatureManager shouldAutoFillPasswords];

  if (!shouldAutoFillPasswords)
  {
    v10 = 0;
    goto LABEL_38;
  }

  appId = [traitsCopy appId];
  if (!appId)
  {
    goto LABEL_13;
  }

  if (isSystemAutoFillBundle_onceToken != -1)
  {
    [AFCredentialManager generateLoginAutoFillWithDocumentTraits:];
  }

  v6 = isSystemAutoFillBundle_autoFillPanelIdentifiers;
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  LOBYTE(v6) = [v6 containsObject:bundleIdentifier];

  if (v6)
  {
    goto LABEL_14;
  }

  bundleId = [traitsCopy bundleId];
  if (!bundleId)
  {
    bundleId = [(AFCredentialManager *)self obtainBundleIdentifierFromConnection:currentConnection];
  }

  if (([bundleId hasPrefix:@"com.apple."] & 1) == 0 && !-[AFCredentialManager hasAutoFillContextEntitlementForConnection:](self, "hasAutoFillContextEntitlementForConnection:", currentConnection))
  {

LABEL_13:
    appId = [(AFCredentialManager *)self obtainApplicationIdentifierFromConnection:currentConnection];
    goto LABEL_14;
  }

LABEL_14:
  v11 = dispatch_group_create();
  v12 = v11;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__0;
  v54 = __Block_byref_object_dispose__0;
  v55 = 0;
  if (self->_passkeyProvider)
  {
    dispatch_group_enter(v11);
    passkeyProvider = self->_passkeyProvider;
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __63__AFCredentialManager_generateLoginAutoFillWithDocumentTraits___block_invoke;
    v47[3] = &unk_278CF6AE0;
    v49 = &v50;
    v48 = v12;
    [(SFAppAutoFillPasskeyProvider *)passkeyProvider getAvailablePasskeysForApplicationIdentifier:appId completionHandler:v47];
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__0;
  v45 = __Block_byref_object_dispose__0;
  v46 = 0;
  dispatch_group_enter(v12);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __63__AFCredentialManager_generateLoginAutoFillWithDocumentTraits___block_invoke_2;
  v38[3] = &unk_278CF6AE0;
  v40 = &v41;
  group = v12;
  v39 = group;
  [(AFCredentialManager *)self getCredentialsWithApplicationIdentifier:appId documentTraits:traitsCopy withCompletionHandler:v38];
  v14 = dispatch_time(0, 3000000000);
  dispatch_group_wait(group, v14);
  if ([v51[5] count])
  {
    firstObject = [v51[5] firstObject];
    v62[0] = firstObject;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:1];
  }

  else
  {
    firstObject2 = [v42[5] firstObject];
    isExternal = [firstObject2 isExternal];

    v19 = v42[5];
    if (isExternal)
    {
      firstObject3 = [v19 firstObject];
      v61 = firstObject3;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
    }

    else
    {
      v16 = v19;
    }
  }

  if ([v16 count] >= 2)
  {
    v21 = [v16 subarrayWithRange:{0, 1}];

    v16 = v21;
  }

  if ([v16 count] > 2)
  {
    v22 = 3;
  }

  else
  {
    v22 = [v16 count];
  }

  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:v22];
  v23 = [v16 count];
  if (v23)
  {
    for (i = 0; v23 != i; ++i)
    {
      v25 = [v16 objectAtIndex:i];
      v37 = 0;
      v57 = 0;
      v58 = &v57;
      v59 = 0x2050000000;
      v26 = getSFSafariCredentialClass_softClass;
      v60 = getSFSafariCredentialClass_softClass;
      if (!getSFSafariCredentialClass_softClass)
      {
        v56[0] = MEMORY[0x277D85DD0];
        v56[1] = 3221225472;
        v56[2] = __getSFSafariCredentialClass_block_invoke;
        v56[3] = &unk_278CF6A18;
        v56[4] = &v57;
        __getSFSafariCredentialClass_block_invoke(v56);
        v26 = v58[3];
      }

      v27 = v26;
      _Block_object_dispose(&v57, 8);
      if (objc_opt_isKindOfClass())
      {
        v28 = [(AFCredentialManager *)self _autoFillPayloadForPasswordCredential:v25 customInfoType:&v37];
        v29 = [(AFCredentialManager *)self _suggestionForPasswordCredential:v25 autoFillPayload:v28 customInfoType:v37];
        [v10 addObject:v29];
      }

      else
      {
        if (!getSFAutoFillPasskeyClass())
        {
          goto LABEL_36;
        }

        getSFAutoFillPasskeyClass();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_36;
        }

        v28 = [(AFCredentialManager *)self _autoFillPayloadForPasskey:v25 customInfoType:&v37];
        v29 = [(AFCredentialManager *)self _suggestionForPasskey:v25 autoFillPayload:v28 customInfoType:v37];
        [v10 addObject:v29];
      }

LABEL_36:
    }
  }

  v30 = [[AFSuggestion alloc] initWithTitle:&stru_28537ABC8 subTitle:&stru_28537ABC8 usernameAndPasswordPayload:0 leadingImage:0 trailingImage:0 customInfoType:6];
  [v10 addObject:v30];

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v50, 8);

LABEL_38:
  v31 = *MEMORY[0x277D85DE8];

  return v10;
}

void __63__AFCredentialManager_generateLoginAutoFillWithDocumentTraits___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __63__AFCredentialManager_generateLoginAutoFillWithDocumentTraits___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

- (void)generateSignupAutoFillWithAutoFillMode:(unint64_t)mode documentTraits:(id)traits completionHandler:(id)handler
{
  v58 = *MEMORY[0x277D85DE8];
  traitsCopy = traits;
  handlerCopy = handler;
  v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__0;
  v47 = __Block_byref_object_dispose__0;
  array = [MEMORY[0x277CBEB18] array];
  sharedFeatureManager = [getSFAutoFillFeatureManagerClass() sharedFeatureManager];
  shouldAutoFillPasswords = [sharedFeatureManager shouldAutoFillPasswords];

  if (shouldAutoFillPasswords)
  {
    v8 = dispatch_semaphore_create(0);
    textInputTraits = [traitsCopy textInputTraits];
    v10 = [textInputTraits keyboardType] == 7;

    v49 = 0;
    v50 = &v49;
    v51 = 0x2050000000;
    v11 = getSFSuggestedUserProviderClass_softClass;
    v52 = getSFSuggestedUserProviderClass_softClass;
    if (!getSFSuggestedUserProviderClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      v54 = 3221225472;
      v55 = __getSFSuggestedUserProviderClass_block_invoke;
      v56 = &unk_278CF6A18;
      v57 = &v49;
      __getSFSuggestedUserProviderClass_block_invoke(buf);
      v11 = v50[3];
    }

    v12 = v11;
    _Block_object_dispose(&v49, 8);
    sharedProvider = [v11 sharedProvider];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __95__AFCredentialManager_generateSignupAutoFillWithAutoFillMode_documentTraits_completionHandler___block_invoke;
    v40[3] = &unk_278CF6AE0;
    v42 = &v43;
    v14 = v8;
    v41 = v14;
    [sharedProvider suggestedUsersOfType:v10 completionHandler:v40];

    v15 = dispatch_time(0, 200000000);
    dispatch_semaphore_wait(v14, v15);
  }

  if ([v44[5] count] > 2)
  {
    v16 = 3;
  }

  else
  {
    v16 = [v44[5] count];
    if (!v16)
    {
      goto LABEL_16;
    }
  }

  v17 = 0;
  v18 = 1;
  do
  {
    v19 = [v44[5] objectAtIndex:v17];
    v20 = [v19 containsString:@"@"];

    if ((v20 & 1) == 0)
    {
      break;
    }

    v18 = ++v17 < v16;
  }

  while (v16 != v17);
  for (i = 0; i != v16; ++i)
  {
    v22 = [v44[5] objectAtIndex:i];
    v23 = &stru_28537ABC8;
    if (v18)
    {
      v24 = +[AFSuggestionGenerationManager sharedInstance];
      localizationManager = [v24 localizationManager];
      v23 = [localizationManager localizedStringForKey:@"SAFARI_CREDENTIAL_SUGGESTED_USERNAME"];
    }

    v26 = [[AFSuggestion alloc] initWithTitle:v23 subTitle:v22 usernameAndPasswordPayload:0 leadingImage:0 trailingImage:0 customInfoType:8];
    [v36 addObject:v26];
  }

LABEL_16:
  if ([traitsCopy autofillSubMode] == 3)
  {
    currentConnection = [MEMORY[0x277CCAE80] currentConnection];
    appId = [traitsCopy appId];
    if (!appId)
    {
      appId = [(AFCredentialManager *)self obtainApplicationIdentifierFromConnection:currentConnection];
    }

    bundleId = [traitsCopy bundleId];
    if (bundleId || ([(AFCredentialManager *)self obtainBundleIdentifierFromConnection:currentConnection], (bundleId = objc_claimAutoreleasedReturnValue()) != 0))
    {
      if (appId)
      {
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __95__AFCredentialManager_generateSignupAutoFillWithAutoFillMode_documentTraits_completionHandler___block_invoke_2;
        v37[3] = &unk_278CF6B08;
        v38 = v36;
        v39 = handlerCopy;
        [(AFCredentialManager *)self generateHideMyEmailSuggestionWithApplicationBundleId:bundleId applicationId:appId completionHandler:v37];

        goto LABEL_27;
      }
    }
  }

  v30 = AFCredentialManagerOSLogFacility();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Hide My Email is not required.", "-[AFCredentialManager generateSignupAutoFillWithAutoFillMode:documentTraits:completionHandler:]"];
    [AFSuggestionGenerationManager generateContactAutoFillSuggestionsWithTextPrefix:v31 documentTraits:buf completionHandler:v30];
  }

  (*(handlerCopy + 2))(handlerCopy, v36);
LABEL_27:
  _Block_object_dispose(&v43, 8);

  v32 = *MEMORY[0x277D85DE8];
}

void __95__AFCredentialManager_generateSignupAutoFillWithAutoFillMode_documentTraits_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(*(a1 + 40) + 8) + 40);
        v9 = [*(*(&v11 + 1) + 8 * v7) value];
        [v8 addObject:v9];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __95__AFCredentialManager_generateSignupAutoFillWithAutoFillMode_documentTraits_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addObject:a2];
  }

  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)generateHideMyEmailAutoFillWithRenderTraits:(id)traits completionHandler:(id)handler
{
  traitsCopy = traits;
  handlerCopy = handler;
  if (!traitsCopy)
  {
    v8 = AFCredentialManagerOSLogFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AFCredentialManager generateHideMyEmailAutoFillWithRenderTraits:completionHandler:];
    }

    handlerCopy[2](handlerCopy, 0);
  }

  bundleId = [traitsCopy bundleId];
  if (bundleId && (v10 = bundleId, [traitsCopy appId], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    bundleId2 = [traitsCopy bundleId];
    appId = [traitsCopy appId];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __85__AFCredentialManager_generateHideMyEmailAutoFillWithRenderTraits_completionHandler___block_invoke;
    v15[3] = &unk_278CF6B30;
    v16 = handlerCopy;
    [(AFCredentialManager *)self generateHideMyEmailSuggestionWithApplicationBundleId:bundleId2 applicationId:appId completionHandler:v15];
  }

  else
  {
    v14 = AFCredentialManagerOSLogFacility();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [AFCredentialManager generateHideMyEmailAutoFillWithRenderTraits:completionHandler:];
    }

    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)generateHideMyEmailSuggestionWithApplicationBundleId:(id)id applicationId:(id)applicationId completionHandler:(id)handler
{
  v108 = *MEMORY[0x277D85DE8];
  idCopy = id;
  applicationIdCopy = applicationId;
  handlerCopy = handler;
  v90[0] = 0;
  v90[1] = v90;
  v90[2] = 0x3032000000;
  v90[3] = __Block_byref_object_copy__0;
  v90[4] = __Block_byref_object_dispose__0;
  v91 = 0;
  v9 = dispatch_semaphore_create(0);
  SFSafariCredentialStoreClass = getSFSafariCredentialStoreClass();
  v87[0] = MEMORY[0x277D85DD0];
  v87[1] = 3221225472;
  v87[2] = __108__AFCredentialManager_generateHideMyEmailSuggestionWithApplicationBundleId_applicationId_completionHandler___block_invoke;
  v87[3] = &unk_278CF6AE0;
  v89 = v90;
  v11 = v9;
  v88 = v11;
  [SFSafariCredentialStoreClass getApprovedSharedWebCredentialsEntriesForAppWithAppID:applicationIdCopy completionHandler:v87];
  v12 = dispatch_time(0, 200000000);
  if (dispatch_semaphore_wait(v11, v12))
  {
    v13 = AFCredentialManagerOSLogFacility();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s AFCTester: Timeout on getApprovedSharedWebCredentialsEntriesForAppWithAppID:completionHandler:", "-[AFCredentialManager generateHideMyEmailSuggestionWithApplicationBundleId:applicationId:completionHandler:]"];
      [AFCredentialManager generateHideMyEmailSuggestionWithApplicationBundleId:v14 applicationId:v102 completionHandler:v13];
    }

    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    *v102 = 0;
    v103 = v102;
    v104 = 0x3032000000;
    v105 = __Block_byref_object_copy__0;
    v106 = __Block_byref_object_dispose__0;
    v107 = 0;
    v15 = +[AFSuggestionGenerationManager sharedInstance];
    localizationManager = [v15 localizationManager];
    v17 = [localizationManager localizedStringForKey:@"SAFARI_HIDE_MY_EMAIL_SUGGESTION"];
    v18 = *(v103 + 5);
    *(v103 + 5) = v17;

    v19 = *(v103 + 5);
    if (!v19 || ![v19 length])
    {
      v20 = AFCredentialManagerOSLogFacility();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Localized Hide My Email text is nil", "-[AFCredentialManager generateHideMyEmailSuggestionWithApplicationBundleId:applicationId:completionHandler:]"];
        [AFSuggestionGenerationManager generateContactAutoFillSuggestionsWithTextPrefix:v21 documentTraits:buf completionHandler:v20];
      }

      v22 = *(v103 + 5);
      *(v103 + 5) = @"Hide My Email";
    }

    v75 = 0;
    v76 = &v75;
    v77 = 0x2050000000;
    v23 = getAKAccountManagerClass_softClass;
    v78 = getAKAccountManagerClass_softClass;
    if (!getAKAccountManagerClass_softClass)
    {
      v81 = MEMORY[0x277D85DD0];
      v82 = 3221225472;
      v83 = __getAKAccountManagerClass_block_invoke;
      v84 = &unk_278CF6A18;
      v85 = &v75;
      __getAKAccountManagerClass_block_invoke(&v81);
      v23 = *(v76 + 24);
    }

    v24 = v23;
    _Block_object_dispose(&v75, 8);
    sharedInstance = [v23 sharedInstance];
    v81 = 0;
    v82 = &v81;
    v83 = 0x3032000000;
    v84 = __Block_byref_object_copy__0;
    v85 = __Block_byref_object_dispose__0;
    v92 = 0;
    v93 = &v92;
    v94 = 0x2050000000;
    v26 = getAKPrivateEmailControllerClass_softClass;
    v95 = getAKPrivateEmailControllerClass_softClass;
    if (!getAKPrivateEmailControllerClass_softClass)
    {
      v75 = MEMORY[0x277D85DD0];
      v76 = 3221225472;
      v77 = __getAKPrivateEmailControllerClass_block_invoke;
      v78 = &unk_278CF6A18;
      v79 = &v92;
      __getAKPrivateEmailControllerClass_block_invoke(&v75);
      v26 = *(v93 + 24);
    }

    v27 = v26;
    _Block_object_dispose(&v92, 8);
    v86 = objc_alloc_init(v26);
    primaryAuthKitAccount = [sharedInstance primaryAuthKitAccount];
    v75 = 0;
    v76 = &v75;
    v77 = 0x3032000000;
    v78 = __Block_byref_object_copy__0;
    v79 = __Block_byref_object_dispose__0;
    v43 = primaryAuthKitAccount;
    v80 = [sharedInstance altDSIDForAccount:?];
    v73[0] = 0;
    v73[1] = v73;
    v73[2] = 0x2810000000;
    v73[3] = "";
    v74 = 0;
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __108__AFCredentialManager_generateHideMyEmailSuggestionWithApplicationBundleId_applicationId_completionHandler___block_invoke_94;
    v66[3] = &unk_278CF6B80;
    v29 = idCopy;
    v67 = v29;
    v30 = applicationIdCopy;
    v68 = v30;
    v70 = v102;
    v71 = &v75;
    v72 = v73;
    v31 = handlerCopy;
    v69 = v31;
    v32 = MEMORY[0x245CF1A60](v66);
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __108__AFCredentialManager_generateHideMyEmailSuggestionWithApplicationBundleId_applicationId_completionHandler___block_invoke_99;
    v57[3] = &unk_278CF6BD0;
    v58 = v30;
    v62 = &v75;
    v33 = v29;
    v59 = v33;
    v63 = &v81;
    v64 = v102;
    v65 = v73;
    v34 = v31;
    v60 = v34;
    v35 = v32;
    v61 = v35;
    v36 = MEMORY[0x245CF1A60](v57);
    v97 = 0;
    v98 = &v97;
    v99 = 0x2050000000;
    v37 = getCSFFeatureManagerClass_softClass;
    v100 = getCSFFeatureManagerClass_softClass;
    if (!getCSFFeatureManagerClass_softClass)
    {
      v92 = MEMORY[0x277D85DD0];
      v93 = 3221225472;
      v94 = __getCSFFeatureManagerClass_block_invoke;
      v95 = &unk_278CF6A18;
      v96 = &v97;
      __getCSFFeatureManagerClass_block_invoke(&v92);
      v37 = v98[3];
    }

    v38 = v37;
    _Block_object_dispose(&v97, 8);
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __108__AFCredentialManager_generateHideMyEmailSuggestionWithApplicationBundleId_applicationId_completionHandler___block_invoke_102;
    v48[3] = &unk_278CF6C48;
    v52 = v73;
    v39 = v34;
    v50 = v39;
    v53 = v90;
    v54 = &v75;
    v49 = v33;
    v55 = &v81;
    v56 = v102;
    v40 = v36;
    v51 = v40;
    [v37 requestFeatureWithId:@"mail.hide-my-email.create" completion:v48];
    v41 = dispatch_time(0, 200000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __108__AFCredentialManager_generateHideMyEmailSuggestionWithApplicationBundleId_applicationId_completionHandler___block_invoke_116;
    block[3] = &unk_278CF6C70;
    v47 = v73;
    v46 = v39;
    dispatch_after(v41, MEMORY[0x277D85CD0], block);

    _Block_object_dispose(v73, 8);
    _Block_object_dispose(&v75, 8);

    _Block_object_dispose(&v81, 8);
    _Block_object_dispose(v102, 8);
  }

  _Block_object_dispose(v90, 8);
  v42 = *MEMORY[0x277D85DE8];
}

intptr_t __108__AFCredentialManager_generateHideMyEmailSuggestionWithApplicationBundleId_applicationId_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [[v3 alloc] initWithArray:v4];

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(a1 + 32);

  return dispatch_semaphore_signal(v8);
}

void __108__AFCredentialManager_generateHideMyEmailSuggestionWithApplicationBundleId_applicationId_completionHandler___block_invoke_94(uint64_t a1)
{
  SFSafariCredentialStoreClass = getSFSafariCredentialStoreClass();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __108__AFCredentialManager_generateHideMyEmailSuggestionWithApplicationBundleId_applicationId_completionHandler___block_invoke_2;
  v9[3] = &unk_278CF6B58;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  v12 = *(a1 + 64);
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = v5;
  *&v8 = v4;
  *(&v8 + 1) = v6;
  v10 = v8;
  v11 = v7;
  [SFSafariCredentialStoreClass bestDomainForAppID:v3 completionHandler:v9];
}

void __108__AFCredentialManager_generateHideMyEmailSuggestionWithApplicationBundleId_applicationId_completionHandler___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v4 = a1[4];
  }

  v5 = v4;
  v6 = [[AFSuggestion alloc] initWithTitle:*(*(a1[7] + 8) + 40) applicationKey:v5 applicationBundleId:a1[5] altDSID:*(*(a1[8] + 8) + 40) customInfoType:11];
  if (atomic_exchange((*(a1[9] + 8) + 32), 1u))
  {
    v7 = AFCredentialManagerOSLogFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __108__AFCredentialManager_generateHideMyEmailSuggestionWithApplicationBundleId_applicationId_completionHandler___block_invoke_2_cold_1();
    }
  }

  else
  {
    (*(a1[6] + 16))();
  }
}

void __108__AFCredentialManager_generateHideMyEmailSuggestionWithApplicationBundleId_applicationId_completionHandler___block_invoke_99(uint64_t a1)
{
  v2 = [objc_alloc(getAKPrivateEmailContextClass()) initWithKey:*(a1 + 32) altDSID:*(*(*(a1 + 64) + 8) + 40) clientAppBundleId:*(a1 + 40)];
  v3 = *(*(*(a1 + 72) + 8) + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __108__AFCredentialManager_generateHideMyEmailSuggestionWithApplicationBundleId_applicationId_completionHandler___block_invoke_2_100;
  v11[3] = &unk_278CF6BA8;
  v14 = *(a1 + 80);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 88);
  v15 = *(a1 + 64);
  v16 = v6;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v4;
  *(&v10 + 1) = v5;
  v12 = v10;
  v13 = v9;
  [v3 lookupPrivateEmailWithContext:v2 completion:v11];
}

void __108__AFCredentialManager_generateHideMyEmailSuggestionWithApplicationBundleId_applicationId_completionHandler___block_invoke_2_100(void *a1, void *a2)
{
  v3 = [a2 privateEmailAddress];

  if (v3)
  {
    v4 = [[AFSuggestion alloc] initWithTitle:*(*(a1[8] + 8) + 40) applicationKey:a1[4] applicationBundleId:a1[5] altDSID:*(*(a1[9] + 8) + 40) customInfoType:11];
    if (atomic_exchange((*(a1[10] + 8) + 32), 1u))
    {
      v5 = AFCredentialManagerOSLogFacility();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __108__AFCredentialManager_generateHideMyEmailSuggestionWithApplicationBundleId_applicationId_completionHandler___block_invoke_2_cold_1();
      }
    }

    else
    {
      (*(a1[6] + 16))();
    }
  }

  else
  {
    v6 = *(a1[7] + 16);

    v6();
  }
}

void __108__AFCredentialManager_generateHideMyEmailSuggestionWithApplicationBundleId_applicationId_completionHandler___block_invoke_102(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = AFCredentialManagerOSLogFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __108__AFCredentialManager_generateHideMyEmailSuggestionWithApplicationBundleId_applicationId_completionHandler___block_invoke_102_cold_1(v6);
    }

LABEL_12:

    if ((atomic_exchange((*(*(a1 + 56) + 8) + 32), 1u) & 1) == 0)
    {
      (*(*(a1 + 40) + 16))();
    }

    goto LABEL_14;
  }

  if (([v5 canUse] & 1) == 0)
  {
    v7 = AFCredentialManagerOSLogFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __108__AFCredentialManager_generateHideMyEmailSuggestionWithApplicationBundleId_applicationId_completionHandler___block_invoke_102_cold_2();
    }

    goto LABEL_12;
  }

  if ([v5 canUse])
  {
    v8 = AFCredentialManagerOSLogFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __108__AFCredentialManager_generateHideMyEmailSuggestionWithApplicationBundleId_applicationId_completionHandler___block_invoke_102_cold_3(v8);
    }

    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x2020000000;
    v27 = 0;
    if ([*(*(*(a1 + 64) + 8) + 40) count])
    {
      v9 = *(*(*(a1 + 64) + 8) + 40);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __108__AFCredentialManager_generateHideMyEmailSuggestionWithApplicationBundleId_applicationId_completionHandler___block_invoke_112;
      v16[3] = &unk_278CF6C20;
      v20 = *(a1 + 72);
      v10 = *(a1 + 32);
      v12 = *(a1 + 80);
      v11 = *(a1 + 88);
      v17 = v10;
      v21 = v12;
      v22 = v26;
      v13 = *(a1 + 56);
      v23 = v11;
      v24 = v13;
      v14 = *(a1 + 40);
      v15 = *(a1 + 64);
      v18 = v14;
      v25 = v15;
      v19 = *(a1 + 48);
      [v9 enumerateObjectsUsingBlock:v16];
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }

    _Block_object_dispose(v26, 8);
  }

LABEL_14:
}

void __108__AFCredentialManager_generateHideMyEmailSuggestionWithApplicationBundleId_applicationId_completionHandler___block_invoke_112(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = objc_alloc(getAKPrivateEmailContextClass());
  v9 = [v7 domain];
  v10 = [v8 initWithKey:v9 altDSID:*(*(*(a1 + 56) + 8) + 40) clientAppBundleId:*(a1 + 32)];

  v11 = *(*(*(a1 + 64) + 8) + 40);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __108__AFCredentialManager_generateHideMyEmailSuggestionWithApplicationBundleId_applicationId_completionHandler___block_invoke_2_113;
  v18[3] = &unk_278CF6BF8;
  v27 = a4;
  v23 = *(a1 + 72);
  v19 = v7;
  v12 = *(a1 + 32);
  v13 = *(a1 + 56);
  v20 = v12;
  v14 = *(a1 + 88);
  v24 = v13;
  v25 = v14;
  v15 = *(a1 + 40);
  v28 = a3;
  v16 = *(a1 + 96);
  v21 = v15;
  v26 = v16;
  v22 = *(a1 + 48);
  v17 = v7;
  [v11 lookupPrivateEmailWithContext:v10 completion:v18];
}

void __108__AFCredentialManager_generateHideMyEmailSuggestionWithApplicationBundleId_applicationId_completionHandler___block_invoke_2_113(uint64_t a1, void *a2)
{
  v3 = [a2 privateEmailAddress];

  if (v3)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    **(a1 + 104) = 1;
    v4 = [AFSuggestion alloc];
    v5 = *(*(*(a1 + 72) + 8) + 40);
    v6 = [*(a1 + 32) domain];
    v7 = [(AFSuggestion *)v4 initWithTitle:v5 applicationKey:v6 applicationBundleId:*(a1 + 40) altDSID:*(*(*(a1 + 80) + 8) + 40) customInfoType:11];

    if (atomic_exchange((*(*(a1 + 88) + 8) + 32), 1u))
    {
      v8 = AFCredentialManagerOSLogFacility();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __108__AFCredentialManager_generateHideMyEmailSuggestionWithApplicationBundleId_applicationId_completionHandler___block_invoke_2_cold_1();
      }
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v9 = *(a1 + 112);
    if (v9 == [*(*(*(a1 + 96) + 8) + 40) count] - 1 && (*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
    {
      v10 = *(*(a1 + 56) + 16);

      v10();
    }
  }
}

uint64_t __108__AFCredentialManager_generateHideMyEmailSuggestionWithApplicationBundleId_applicationId_completionHandler___block_invoke_116(uint64_t result)
{
  if ((atomic_exchange((*(*(result + 40) + 8) + 32), 1u) & 1) == 0)
  {
    v1 = result;
    v2 = AFCredentialManagerOSLogFacility();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __108__AFCredentialManager_generateHideMyEmailSuggestionWithApplicationBundleId_applicationId_completionHandler___block_invoke_116_cold_1();
    }

    return (*(*(v1 + 32) + 16))();
  }

  return result;
}

- (void)generateOneTimeCodeAutoFillSuggestionsWithDocumentTraits:(id)traits completionHandler:(id)handler
{
  v40 = *MEMORY[0x277D85DE8];
  traitsCopy = traits;
  handlerCopy = handler;
  array = [MEMORY[0x277CBEB18] array];
  textInputTraits = [traitsCopy textInputTraits];
  textContentType = [textInputTraits textContentType];
  v10 = [textContentType isEqualToString:@"one-time-code"];

  if (v10)
  {
    v11 = 2;
  }

  else
  {
    v11 = 0;
  }

  oneTimeCodeProvider = [(AFCredentialManager *)self oneTimeCodeProvider];
  appId = [traitsCopy appId];
  autofillContext = [traitsCopy autofillContext];
  v15 = [autofillContext objectForKeyedSubscript:@"_WebViewURL"];
  v16 = [oneTimeCodeProvider currentOneTimeCodesWithAppIdentifier:appId website:v15 usernameHint:0 fieldClassification:v11];

  v29 = handlerCopy;
  v30 = traitsCopy;
  if ([v16 count] >= 4)
  {
    v17 = [v16 subarrayWithRange:{0, 3}];

    v16 = v17;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v16;
  v18 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v34;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v33 + 1) + 8 * i);
        v23 = [v22 localizedTitleForContext:{0, v29, v30}];
        v24 = [v22 localizedSubtitleForContext:0];
        v37 = @"OneTimeCode";
        v38 = v22;
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
        if ([v22 source] == 3)
        {
          v26 = 10;
        }

        else
        {
          v26 = 7;
        }

        v27 = [[AFSuggestion alloc] initWithTitle:v23 subtitle:v24 oneTimeCodePayload:v25 customInfoType:v26];
        [array addObject:v27];
      }

      v19 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v19);
  }

  (v29)[2](v29, array);
  v28 = *MEMORY[0x277D85DE8];
}

- (void)_consumeOneTimeCodeAutoFillSuggestionIfNeeded:(id)needed
{
  oneTimeCodePayload = [needed oneTimeCodePayload];
  v6 = [oneTimeCodePayload objectForKeyedSubscript:@"OneTimeCode"];

  if (v6)
  {
    oneTimeCodeProvider = [(AFCredentialManager *)self oneTimeCodeProvider];
    [oneTimeCodeProvider consumeOneTimeCode:v6];
  }
}

- (BOOL)shouldAuthenticateToAcceptAutoFill
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v2 = getMCProfileConnectionClass_softClass_0;
  v19 = getMCProfileConnectionClass_softClass_0;
  if (!getMCProfileConnectionClass_softClass_0)
  {
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __getMCProfileConnectionClass_block_invoke_0;
    v14 = &unk_278CF6A18;
    v15 = &v16;
    __getMCProfileConnectionClass_block_invoke_0(&v11);
    v2 = v17[3];
  }

  v3 = v2;
  _Block_object_dispose(&v16, 8);
  sharedConnection = [v2 sharedConnection];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v5 = getMCFeatureAuthenticationBeforeAutoFillRequiredSymbolLoc_ptr_0;
  v19 = getMCFeatureAuthenticationBeforeAutoFillRequiredSymbolLoc_ptr_0;
  if (!getMCFeatureAuthenticationBeforeAutoFillRequiredSymbolLoc_ptr_0)
  {
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __getMCFeatureAuthenticationBeforeAutoFillRequiredSymbolLoc_block_invoke_0;
    v14 = &unk_278CF6A18;
    v15 = &v16;
    v6 = ManagedConfigurationLibrary_0();
    v7 = dlsym(v6, "MCFeatureAuthenticationBeforeAutoFillRequired");
    *(v15[1] + 24) = v7;
    getMCFeatureAuthenticationBeforeAutoFillRequiredSymbolLoc_ptr_0 = *(v15[1] + 24);
    v5 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v5)
  {
    shouldAuthenticateToAcceptAutoFill = [AFSuggestionGenerationManager shouldAuthenticateToAcceptAutoFill];
    _Block_object_dispose(&v16, 8);
    _Unwind_Resume(shouldAuthenticateToAcceptAutoFill);
  }

  v8 = [sharedConnection effectiveBoolValueForSetting:*v5] == 1;

  return v8;
}

- (void)shouldAcceptAutoFill:(id)fill withPayload:(id)payload documentTraits:(id)traits completionHandler:(id)handler
{
  v80[4] = *MEMORY[0x277D85DE8];
  fillCopy = fill;
  payloadCopy = payload;
  traitsCopy = traits;
  handlerCopy = handler;
  v13 = handlerCopy;
  if (handlerCopy)
  {
    if (fillCopy)
    {
      customInfoType = [fillCopy customInfoType];
      customInfoType2 = [fillCopy customInfoType];
      customInfoType3 = [fillCopy customInfoType];
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = __89__AFCredentialManager_shouldAcceptAutoFill_withPayload_documentTraits_completionHandler___block_invoke;
      v67[3] = &unk_278CF6C98;
      v71 = customInfoType2 == 12;
      v67[4] = self;
      v54 = payloadCopy;
      v68 = v54;
      v69 = fillCopy;
      v70 = v13;
      v58 = MEMORY[0x245CF1A60](v67);
      if (![(AFCredentialManager *)self shouldAuthenticateToAcceptAutoFill]|| customInfoType != 5 && customInfoType2 != 12 && customInfoType3 != 10)
      {
        v58[2](v58, 1, 0);
LABEL_49:

        goto LABEL_50;
      }

      bundleId = [traitsCopy bundleId];
      if (!bundleId)
      {
        currentConnection = [MEMORY[0x277CCAE80] currentConnection];
        bundleId = [(AFCredentialManager *)self obtainBundleIdentifierFromConnection:currentConnection];
      }

      v73 = 0;
      v74 = &v73;
      v75 = 0x2050000000;
      v18 = getLAContextClass_softClass_0;
      v76 = getLAContextClass_softClass_0;
      if (!getLAContextClass_softClass_0)
      {
        v72[0] = MEMORY[0x277D85DD0];
        v72[1] = 3221225472;
        v72[2] = __getLAContextClass_block_invoke_0;
        v72[3] = &unk_278CF6A18;
        v72[4] = &v73;
        __getLAContextClass_block_invoke_0(v72);
        v18 = v74[3];
      }

      v19 = v18;
      _Block_object_dispose(&v73, 8);
      v20 = objc_alloc_init(v18);
      [(AFCredentialManager *)self setLaContext:v20];

      v56 = MGCopyAnswer();
      if (customInfoType == 5)
      {
        v21 = MEMORY[0x277CCACA8];
        v22 = +[AFSuggestionGenerationManager sharedInstance];
        localizationManager = [v22 localizationManager];
        v24 = [localizationManager localizedStringForKey:@"AUTOFILL_AUTH_PASSCODE_TITLE"];
        v66 = 0;
        v25 = [v21 stringWithValidatedFormat:v24 validFormatSpecifiers:@"%@" error:&v66, v56];
        v26 = v66;
        v27 = &stru_28537ABC8;
        if (v25)
        {
          v27 = v25;
        }

        v55 = v27;

        if (!v26)
        {
          v29 = @"AUTOFILL_AUTH_ALERT_TITLE";
          goto LABEL_35;
        }

        v28 = AFCredentialManagerOSLogFacility();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [AFCredentialManager shouldAcceptAutoFill:v26 withPayload:? documentTraits:? completionHandler:?];
        }

        v29 = @"AUTOFILL_AUTH_ALERT_TITLE";
      }

      else if (customInfoType3 == 10)
      {
        v30 = MEMORY[0x277CCACA8];
        v31 = +[AFSuggestionGenerationManager sharedInstance];
        localizationManager2 = [v31 localizationManager];
        v33 = [localizationManager2 localizedStringForKey:@"TOTP_AUTOFILL_AUTH_PASSCODE_TITLE"];
        v65 = 0;
        v34 = [v30 stringWithValidatedFormat:v33 validFormatSpecifiers:@"%@" error:&v65, v56];
        v26 = v65;
        v35 = &stru_28537ABC8;
        if (v34)
        {
          v35 = v34;
        }

        v55 = v35;

        if (!v26)
        {
          v29 = @"TOTP_AUTOFILL_AUTH_ALERT_TITLE";
          goto LABEL_35;
        }

        v28 = AFCredentialManagerOSLogFacility();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [AFCredentialManager shouldAcceptAutoFill:v26 withPayload:? documentTraits:? completionHandler:?];
        }

        v29 = @"TOTP_AUTOFILL_AUTH_ALERT_TITLE";
      }

      else
      {
        if (customInfoType2 != 12)
        {
          [AFCredentialManager shouldAcceptAutoFill:withPayload:documentTraits:completionHandler:];
        }

        v36 = MEMORY[0x277CCACA8];
        v37 = +[AFSuggestionGenerationManager sharedInstance];
        localizationManager3 = [v37 localizationManager];
        v39 = [localizationManager3 localizedStringForKey:@"PASSKEY_AUTOFILL_AUTH_PASSCODE_TITLE"];
        v64 = 0;
        v40 = [v36 stringWithValidatedFormat:v39 validFormatSpecifiers:@"%@" error:&v64, v56];
        v26 = v64;
        v41 = &stru_28537ABC8;
        if (v40)
        {
          v41 = v40;
        }

        v55 = v41;

        if (!v26)
        {
          v29 = @"PASSKEY_AUTOFILL_AUTH_ALERT_TITLE";
          goto LABEL_35;
        }

        v28 = AFCredentialManagerOSLogFacility();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [AFCredentialManager shouldAcceptAutoFill:v26 withPayload:? documentTraits:? completionHandler:?];
        }

        v29 = @"PASSKEY_AUTOFILL_AUTH_ALERT_TITLE";
      }

LABEL_35:
      v42 = +[AFSuggestionGenerationManager sharedInstance];
      localizationManager4 = [v42 localizationManager];
      v44 = [localizationManager4 localizedStringForKey:v29];

      if (!v44)
      {
        [AFCredentialManager shouldAcceptAutoFill:withPayload:documentTraits:completionHandler:];
      }

      if ([traitsCopy processId])
      {
        v79[0] = &unk_28537C4B0;
        v79[1] = &unk_28537C4C8;
        v80[0] = v44;
        v80[1] = v55;
        v80[2] = MEMORY[0x277CBEC38];
        v79[2] = &unk_28537C4E0;
        v79[3] = &unk_28537C4F8;
        v45 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(traitsCopy, "processId")}];
        v80[3] = v45;
        v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:4];
      }

      else
      {
        v77[0] = &unk_28537C4B0;
        v77[1] = &unk_28537C4C8;
        v78[0] = v44;
        v78[1] = v55;
        v77[2] = &unk_28537C4E0;
        v78[2] = MEMORY[0x277CBEC38];
        v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:3];
      }

      laContext = [(AFCredentialManager *)self laContext];
      v63 = 0;
      v48 = [laContext canEvaluatePolicy:2 error:&v63];
      v49 = v63;

      if (v48)
      {
        if ([bundleId isEqualToString:@"com.apple.springboard"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v58[2](v58, 0, 0);
          v50 = 1;
          v51 = 1;
        }

        else
        {
          v50 = 0;
          v51 = 0;
        }

        laContext2 = [(AFCredentialManager *)self laContext];
        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = __89__AFCredentialManager_shouldAcceptAutoFill_withPayload_documentTraits_completionHandler___block_invoke_165;
        v60[3] = &unk_278CF6CC0;
        v60[4] = self;
        v62 = v50;
        v61 = v58;
        [laContext2 evaluatePolicy:2 options:v46 reply:v60];

        if (v51)
        {
          [(AFCredentialManager *)self setQueuedUnauthenticatedCustomInfo:v54];
        }
      }

      else
      {
        [(AFCredentialManager *)self setLaContext:0];
        v58[2](v58, 1, 0);
      }

      goto LABEL_49;
    }

    (*(handlerCopy + 2))(handlerCopy, 1);
  }

LABEL_50:

  v53 = *MEMORY[0x277D85DE8];
}

void __89__AFCredentialManager_shouldAcceptAutoFill_withPayload_documentTraits_completionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v7 = a3;
  if (a2 && *(a1 + 64) == 1)
  {
    v5 = *(*(a1 + 32) + 8);
    v6 = [*(a1 + 40) objectForKey:@"Passkey"];
    [v5 userSelectedPasskey:v6 authenticatedLAContext:v7];
  }

  [*(a1 + 32) _consumeOneTimeCodeAutoFillSuggestionIfNeeded:*(a1 + 48)];
  (*(*(a1 + 56) + 16))();
}

void __89__AFCredentialManager_shouldAcceptAutoFill_withPayload_documentTraits_completionHandler___block_invoke_165(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queuedUnauthenticatedCustomInfo];

  if (v4)
  {
    if (v3 && *(a1 + 48) == 1)
    {
      v5 = [*(a1 + 32) queuedUnauthenticatedCustomInfo];
      [*(a1 + 32) setQueuedCustomInfo:v5];
    }

    [*(a1 + 32) setQueuedUnauthenticatedCustomInfo:0];
  }

  v6 = [*(a1 + 32) laContext];
  if ((*(a1 + 48) & 1) == 0)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __89__AFCredentialManager_shouldAcceptAutoFill_withPayload_documentTraits_completionHandler___block_invoke_2;
    v7[3] = &unk_278CF6978;
    v10 = *(a1 + 40);
    v8 = v3;
    v9 = v6;
    AFDispatchAsync(MEMORY[0x277D85CD0], v7);
  }

  [*(a1 + 32) setLaContext:0];
}

- (void)oneTimeCodeProviderReceivedCode:(id)code
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"com.apple.AutoFillCore.AFOneTimeCodeSuggestionsDidChangeNotification" object:0];
}

- (void)obtainApplicationIdentifierFromConnection:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Cannot obtain application identifier: %@"];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_2418BE000, v2, v3, "%@", v4, v5, v6, v7, "[AFCredentialManager obtainApplicationIdentifierFromConnection:]", v9, v10);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)hasAutoFillContextEntitlementForConnection:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Cannot obtain AutoFill context: %@"];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_2418BE000, v2, v3, "%@", v4, v5, v6, v7, "[AFCredentialManager hasAutoFillContextEntitlementForConnection:]", v9, v10);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_suggestionForPasswordCredential:(uint64_t)a1 autoFillPayload:customInfoType:.cold.1(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s invalid localized format for key SAFARI_CREDENTIAL_DATE: %@"];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_2418BE000, v2, v3, "%@", v4, v5, v6, v7, "[AFCredentialManager _suggestionForPasswordCredential:autoFillPayload:customInfoType:]", a1, v10);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_suggestionForPasskey:(uint64_t)a1 autoFillPayload:customInfoType:.cold.1(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s invalid localized format for key SAFARI_PASSKEY_SITE_SHORT: %@"];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_2418BE000, v2, v3, "%@", v4, v5, v6, v7, "[AFCredentialManager _suggestionForPasskey:autoFillPayload:customInfoType:]", a1, v10);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)generateHideMyEmailAutoFillWithRenderTraits:completionHandler:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s documentTraits is nil"];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_2418BE000, v1, v2, "%@", v3, v4, v5, v6, "[AFCredentialManager generateHideMyEmailAutoFillWithRenderTraits:completionHandler:]", v8, v9);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)generateHideMyEmailAutoFillWithRenderTraits:completionHandler:.cold.2()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s documentTraits one or both of bundleId and appId not set properly"];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_2418BE000, v1, v2, "%@", v3, v4, v5, v6, "[AFCredentialManager generateHideMyEmailAutoFillWithRenderTraits:completionHandler:]", v8, v9);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)generateHideMyEmailSuggestionWithApplicationBundleId:(void *)a1 applicationId:(uint8_t *)buf completionHandler:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_2418BE000, log, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
}

void __108__AFCredentialManager_generateHideMyEmailSuggestionWithApplicationBundleId_applicationId_completionHandler___block_invoke_2_cold_1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Timeout before handler completed"];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_2418BE000, v1, v2, "%@", v3, v4, v5, v6, "[AFCredentialManager generateHideMyEmailSuggestionWithApplicationBundleId:applicationId:completionHandler:]_block_invoke_2", v8, v9);

  v7 = *MEMORY[0x277D85DE8];
}

void __108__AFCredentialManager_generateHideMyEmailSuggestionWithApplicationBundleId_applicationId_completionHandler___block_invoke_102_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s HME: %@ on requestFeatureWithId:completion: HideMyEmail"];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_2418BE000, v2, v3, "%@", v4, v5, v6, v7, "[AFCredentialManager generateHideMyEmailSuggestionWithApplicationBundleId:applicationId:completionHandler:]_block_invoke", a1, v10);

  v8 = *MEMORY[0x277D85DE8];
}

void __108__AFCredentialManager_generateHideMyEmailSuggestionWithApplicationBundleId_applicationId_completionHandler___block_invoke_102_cold_2()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s HME: feature is unavailable for user"];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_2418BE000, v1, v2, "%@", v3, v4, v5, v6, "[AFCredentialManager generateHideMyEmailSuggestionWithApplicationBundleId:applicationId:completionHandler:]_block_invoke", v8, v9);

  v7 = *MEMORY[0x277D85DE8];
}

void __108__AFCredentialManager_generateHideMyEmailSuggestionWithApplicationBundleId_applicationId_completionHandler___block_invoke_102_cold_3(NSObject *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s HME: feature is available for user", "-[AFCredentialManager generateHideMyEmailSuggestionWithApplicationBundleId:applicationId:completionHandler:]_block_invoke"];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_2418BE000, a1, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);

  v3 = *MEMORY[0x277D85DE8];
}

void __108__AFCredentialManager_generateHideMyEmailSuggestionWithApplicationBundleId_applicationId_completionHandler___block_invoke_116_cold_1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Timeout before Hide My Email completed"];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_2418BE000, v1, v2, "%@", v3, v4, v5, v6, "[AFCredentialManager generateHideMyEmailSuggestionWithApplicationBundleId:applicationId:completionHandler:]_block_invoke", v8, v9);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)shouldAcceptAutoFill:(uint64_t)a1 withPayload:documentTraits:completionHandler:.cold.2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s invalid localized format for key PASSKEY_AUTOFILL_AUTH_PASSCODE_TITLE: %@"];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_2418BE000, v2, v3, "%@", v4, v5, v6, v7, "[AFCredentialManager shouldAcceptAutoFill:withPayload:documentTraits:completionHandler:]", a1, v10);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)shouldAcceptAutoFill:(uint64_t)a1 withPayload:documentTraits:completionHandler:.cold.3(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s invalid localized format for key TOTP_AUTOFILL_AUTH_PASSCODE_TITLE: %@"];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_2418BE000, v2, v3, "%@", v4, v5, v6, v7, "[AFCredentialManager shouldAcceptAutoFill:withPayload:documentTraits:completionHandler:]", a1, v10);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)shouldAcceptAutoFill:(uint64_t)a1 withPayload:documentTraits:completionHandler:.cold.4(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s invalid localized format for key AUTOFILL_AUTH_PASSCODE_TITLE: %@"];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_2418BE000, v2, v3, "%@", v4, v5, v6, v7, "[AFCredentialManager shouldAcceptAutoFill:withPayload:documentTraits:completionHandler:]", a1, v10);

  v8 = *MEMORY[0x277D85DE8];
}

@end