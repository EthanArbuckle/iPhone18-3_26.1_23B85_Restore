@interface ASCAgent
+ (BOOL)isClientEntitledWebBrowserWithConnection:(id)connection testOptions:(id)options;
+ (BOOL)isClientTCCAuthorizedWebBrowserWithConnection:(id)connection testOptions:(id)options;
+ (BOOL)isClientWithAuditTokenAWebBrowser:(id *)browser;
+ (BOOL)validatePresenceOfTestOptions:(id)options;
- (ASCAgent)initWithTrafficController:(id)controller connection:(id)connection publicKeyCredentialManager:(id)manager signInEventCollector:(id)collector;
- (BOOL)_allowListExclusivelyMatchesPlatformLoginChoices:(id)choices;
- (BOOL)_canCreateICloudKeychainPasskeyPreflightWithError:(id *)error;
- (BOOL)_canPerformConditionalRegistrationInICloudKeychainForUsername:(id)username relyingParty:(id)party;
- (BOOL)_clientHasAuthKitDeveloperEntitlement;
- (BOOL)_clientHasNecessaryAuthKitEntitlements;
- (BOOL)_clientIsAuthKitOwner;
- (BOOL)_clientIsInternalAuthKit;
- (BOOL)_clientIsPrivateAuthKit;
- (BOOL)_connection:(id)_connection hasEntitlement:(id)entitlement;
- (BOOL)_hasAnyCredentialsAvailableForRequestContext:(id)context;
- (BOOL)_hasSignInOptionsForRequestContext:(id)context;
- (BOOL)_isClientWithApplicationIdentifier:(id)identifier properlyEntitledForRequestContext:(id)context error:(id *)error;
- (BOOL)_isConnection:(id)connection entitledToDeletePasskeysForRelyingParty:(id)party;
- (BOOL)_isExtensionEnabled:(id)enabled;
- (BOOL)_isValidContext:(id)context;
- (BOOL)_shouldAddCABLEChoiceForRequestContext:(id)context;
- (BOOL)_shouldApplyQuirksToClientWithApplicationIdentifier:(id)identifier;
- (BOOL)_showExtensionEnablementAlert:(id)alert;
- (BOOL)_userHasSignInWithAppleAccountForPresentingClientID;
- (BOOL)isDeviceConfiguredForPasskeysWithTestOptions:(id)options;
- (id)_allAvailableLoginChoicesForRequestContext:(id)context;
- (id)_allTransportsForAssertionRequest:(id)request;
- (id)_bundleIDFromAppID:(id)d;
- (id)_cableLoginChoiceForRequestContext:(id)context;
- (id)_implicitlySelectAssertionLoginChoiceFromChoices:(id)choices forContext:(id)context;
- (id)_noCredentialsFoundErrorForRequestContext:(id)context;
- (id)_teamIDfromAppID:(id)d;
- (id)encodeGetAssertionCTAPCommandForAuthenticatorWithUserVerificationAvailability:(unint64_t)availability authenticatorSupportedExtensions:(id)extensions;
- (id)encodeMakeCredentialCTAPCommandForAuthenticatorWithUserVerificationAvailability:(unint64_t)availability authenticatorSupportedExtensions:(id)extensions;
- (unint64_t)_allowedAuthenticatorModalitiesForRequestContext:(id)context;
- (unsigned)_approvalStateForApplicationIdentifier:(id)identifier relyingParty:(id)party;
- (void)_authorizationCompletedWithCredential:(id)credential error:(id)error;
- (void)_configureAppleIDCredentialWithContext:(id)context completionHandler:(id)handler;
- (void)_configureLoginChoicesForPresentationContext:(id)context withRequestContext:(id)requestContext;
- (void)_configurePasswordCredentialsWithTestOptions:(id)options completionHandler:(id)handler;
- (void)_configurePublicKeyCredentialsWithAssertionOptions:(id)options forProcessWithApplicationIdentifier:(id)identifier requestStyle:(int64_t)style testOptions:(id)testOptions completionHandler:(id)handler;
- (void)_credentialRequestedForCABLELoginChoice:(id)choice;
- (void)_credentialRequestedForPasskeyAccountRegistrationLoginChoice:(id)choice authenticatedContext:(id)context completionHandler:(id)handler;
- (void)_credentialRequestedForPasswordLoginChoice:(id)choice completionHandler:(id)handler;
- (void)_credentialRequestedForPlatformLoginChoice:(id)choice authenticatedContext:(id)context completionHandler:(id)handler;
- (void)_credentialRequestedForSecurityKeyLoginChoice:(id)choice;
- (void)_openPasswordOptions:(id)options;
- (void)_performAuthKitAuthorizationValidationForAccount:(id)account;
- (void)_prepareForAuthorizationRequestsForContext:(id)context clientConnection:(id)connection withPresentationHandler:(id)handler;
- (void)_presentAuthorizationRequestWithContext:(id)context implicitlySelectedLoginChoice:(id)choice forProcess:(id)process completionHandler:(id)handler;
- (void)_requestConditionalRegistrationOnProvider:(id)provider listenerEndpoint:(id)endpoint presentationContext:(id)context requestContext:(id)requestContext completionHandler:(id)handler;
- (void)_userHasSignInWithAppleAccountForPresentingClientID;
- (void)authorizationPresenter:(id)presenter startCABLEAuthenticationWithCompletionHandler:(id)handler;
- (void)authorizationPresenter:(id)presenter validateUserEnteredPIN:(id)n completionHandler:(id)handler;
- (void)authorizationPresenterDidIgnorePINRequest:(id)request;
- (void)browserPasskeysForRelyingParty:(id)party testOptions:(id)options completionHandler:(id)handler;
- (void)cancelCurrentRequest;
- (void)clearAllPlatformPublicKeyCredentialsWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)deleteAllPasskeysForRelyingParty:(id)party completionHandler:(id)handler;
- (void)deletePasskeyForRelyingParty:(id)party withCredentialID:(id)d completionHandler:(id)handler;
- (void)didCompleteAssertionWithCredential:(id)credential error:(id)error;
- (void)didCompleteRegistrationWithCredential:(id)credential error:(id)error;
- (void)didEnterCorrectPIN;
- (void)didFetchPlatformLoginChoices:(id)choices;
- (void)didFetchSecurityKeyLoginChoices:(id)choices;
- (void)didReceiveError:(int64_t)error;
- (void)getArePasskeysDisallowedForRelyingParty:(id)party withCompletionHandler:(id)handler;
- (void)getCanCurrentProcessAccessPasskeysForRelyingParty:(id)party withCompletionHandler:(id)handler;
- (void)getPasskeysDataForRelyingParty:(id)party withCompletionHandler:(id)handler;
- (void)getShouldUseAlternateCredentialStoreWithCompletionHandler:(id)handler;
- (void)openCABLEURL:(id)l fromSourceApplication:(id)application withCompletionHandler:(id)handler;
- (void)performAuthorizationRequestsForContext:(id)context withPresenter:(id)presenter completionHandler:(id)handler;
- (void)performSilentAuthorizationRequestsForContext:(id)context withCompletionHandler:(id)handler;
- (void)preflightCanCreateICloudKeychainPasskeyWithCompletionHandler:(id)handler;
- (void)presentCABLESheetWithCompletionHandler:(id)handler;
- (void)requestNewPINWithMinLength:(unint64_t)length completionHandler:(id)handler;
- (void)requestPINWithRemainingRetries:(unint64_t)retries completionHandler:(id)handler;
- (void)requestToTurnOnCredentialProviderExtensionWithCompletionHandler:(id)handler;
- (void)test_addAutoFillEvent:(id)event url:(id)url;
- (void)test_addCredentialProviderExtensionLoginChoiceWithName:(id)name extensionBundleID:(id)d containingAppBundleID:(id)iD;
- (void)test_prepareForAuthorizationRequestsForContext:(id)context clientConnection:(id)connection withPresentationHandler:(id)handler;
- (void)test_setOverrideEntitlements:(id)entitlements;
- (void)test_setOverrideExtensionStates:(id)states;
- (void)userSelectedLoginChoice:(id)choice authenticatedContext:(id)context completionHandler:(id)handler;
@end

@implementation ASCAgent

+ (BOOL)isClientWithAuditTokenAWebBrowser:(id *)browser
{
  v5 = *browser;
  if (WBSAuditTokenHasEntitlement())
  {
    return 1;
  }

  v6 = *browser->var0;
  v8 = *&browser->var0[4];
  if (WBSAuditTokenHasEntitlement())
  {
    return 1;
  }

  v7 = *browser->var0;
  v9 = *&browser->var0[4];
  return WBSAuditTokenHasEntitlement();
}

- (ASCAgent)initWithTrafficController:(id)controller connection:(id)connection publicKeyCredentialManager:(id)manager signInEventCollector:(id)collector
{
  controllerCopy = controller;
  connectionCopy = connection;
  managerCopy = manager;
  collectorCopy = collector;
  v36.receiver = self;
  v36.super_class = ASCAgent;
  v15 = [(ASCAgent *)&v36 init];
  if (v15)
  {
    v16 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    if (os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C20AD000, v16, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AuthorizationRequestReceivedToShowingUI", "", buf, 2u);
    }

    v17 = _os_activity_create(&dword_1C20AD000, "ASCAgent request", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    authorizationActivity = v15->_authorizationActivity;
    v15->_authorizationActivity = v17;

    v19 = dispatch_semaphore_create(1);
    internalSemaphore = v15->_internalSemaphore;
    v15->_internalSemaphore = v19;

    objc_storeStrong(&v15->_authorizationTrafficController, controller);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    authorizationTrafficControllerToken = v15->_authorizationTrafficControllerToken;
    v15->_authorizationTrafficControllerToken = uUID;

    objc_storeStrong(&v15->_connection, connection);
    objc_storeStrong(&v15->_publicKeyCredentialManager, manager);
    objc_storeStrong(&v15->_signInEventCollector, collector);
    *buf = 0u;
    v35 = 0u;
    if (connectionCopy)
    {
      [connectionCopy auditToken];
    }

    v32 = *buf;
    v33 = v35;
    v15->_isClientEntitledWebBrowser = [ASCAgent isClientWithAuditTokenAWebBrowser:&v32];
    v32 = *buf;
    v33 = v35;
    v15->_isClientEntitledInternalProcess = WBSAuditTokenHasEntitlement();
    mEMORY[0x1E69C8DE0] = [MEMORY[0x1E69C8DE0] sharedManager];
    [mEMORY[0x1E69C8DE0] addWeakObserver:v15];

    v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
    test_credentialProviderExtensionLoginChoices = v15->_test_credentialProviderExtensionLoginChoices;
    v15->_test_credentialProviderExtensionLoginChoices = v24;

    v26 = v15->_authorizationActivity;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __97__ASCAgent_initWithTrafficController_connection_publicKeyCredentialManager_signInEventCollector___block_invoke;
    block[3] = &unk_1E815F9D0;
    v27 = v15;
    v31 = v27;
    os_activity_apply(v26, block);
    v28 = v27;
  }

  return v15;
}

void __97__ASCAgent_initWithTrafficController_connection_publicKeyCredentialManager_signInEventCollector___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134349056;
    v6 = v3;
    _os_log_impl(&dword_1C20AD000, v2, OS_LOG_TYPE_DEFAULT, "Initializing ASCAgent %{public}p.", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)performAuthorizationRequestsForContext:(id)context withPresenter:(id)presenter completionHandler:(id)handler
{
  contextCopy = context;
  presenterCopy = presenter;
  handlerCopy = handler;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  objc_storeStrong(&self->_requestPresenter, presenter);
  authorizationActivity = self->_authorizationActivity;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__ASCAgent_performAuthorizationRequestsForContext_withPresenter_completionHandler___block_invoke;
  block[3] = &unk_1E815F9D0;
  v13 = contextCopy;
  v30 = v13;
  os_activity_apply(authorizationActivity, block);
  internalSemaphore = self->_internalSemaphore;
  v15 = dispatch_time(0, 10000000000);
  v16 = dispatch_semaphore_wait(internalSemaphore, v15);
  v17 = self->_authorizationActivity;
  if (v16)
  {
    v18 = &__block_literal_global_0;
  }

  else
  {
    v18 = &__block_literal_global_66;
  }

  os_activity_apply(self->_authorizationActivity, v18);
  v19 = objc_alloc_init(MEMORY[0x1E69C8A40]);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __83__ASCAgent_performAuthorizationRequestsForContext_withPresenter_completionHandler___block_invoke_68;
  v28[3] = &unk_1E815F9D0;
  v28[4] = self;
  [v19 setHandler:v28];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __83__ASCAgent_performAuthorizationRequestsForContext_withPresenter_completionHandler___block_invoke_71;
  v23[3] = &unk_1E815FAB0;
  v24 = v19;
  selfCopy = self;
  v26 = currentConnection;
  v27 = handlerCopy;
  v20 = currentConnection;
  v21 = handlerCopy;
  v22 = v19;
  [(ASCAgent *)self _prepareForAuthorizationRequestsForContext:v13 clientConnection:v20 withPresentationHandler:v23];
}

uint64_t __83__ASCAgent_performAuthorizationRequestsForContext_withPresenter_completionHandler___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1C20AD000, v2, OS_LOG_TYPE_INFO, "Beginning request: %{public}@", &v6, 0xCu);
  }

  result = [*(a1 + 32) logRequest];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void __83__ASCAgent_performAuthorizationRequestsForContext_withPresenter_completionHandler___block_invoke_63()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    __83__ASCAgent_performAuthorizationRequestsForContext_withPresenter_completionHandler___block_invoke_63_cold_1();
  }
}

void __83__ASCAgent_performAuthorizationRequestsForContext_withPresenter_completionHandler___block_invoke_64()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v2 = 136315138;
    v3 = "[ASCAgent performAuthorizationRequestsForContext:withPresenter:completionHandler:]_block_invoke";
    _os_log_impl(&dword_1C20AD000, v0, OS_LOG_TYPE_INFO, "Acquired lock for %s", &v2, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void __83__ASCAgent_performAuthorizationRequestsForContext_withPresenter_completionHandler___block_invoke_68(uint64_t a1)
{
  dispatch_semaphore_signal(*(*(a1 + 32) + 192));
  v2 = *(*(a1 + 32) + 184);

  os_activity_apply(v2, &__block_literal_global_70);
}

void __83__ASCAgent_performAuthorizationRequestsForContext_withPresenter_completionHandler___block_invoke_2()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v2 = 136315138;
    v3 = "[ASCAgent performAuthorizationRequestsForContext:withPresenter:completionHandler:]_block_invoke_2";
    _os_log_impl(&dword_1C20AD000, v0, OS_LOG_TYPE_INFO, "Released lock for %s", &v2, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void __83__ASCAgent_performAuthorizationRequestsForContext_withPresenter_completionHandler___block_invoke_71(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v17 = *(*(a1 + 40) + 184);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__ASCAgent_performAuthorizationRequestsForContext_withPresenter_completionHandler___block_invoke_2_72;
    block[3] = &unk_1E815F9D0;
    v23 = v6;
    os_activity_apply(v17, block);
    (*(*(a1 + 56) + 16))();

    goto LABEL_15;
  }

  v8 = [v5 savedAccountContext];
  v9 = *(a1 + 40);
  v10 = *(v9 + 88);
  *(v9 + 88) = v8;

  v11 = [v5 requestStyle];
  if (v11 == 2)
  {
    v20 = *(a1 + 56);
    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:0];
    (*(v20 + 16))(v20, 0, v16);
  }

  else if (v11 == 1)
  {
    v18 = _Block_copy(*(a1 + 56));
    v19 = *(a1 + 40);
    v16 = *(v19 + 96);
    *(v19 + 96) = v18;
  }

  else
  {
    if (v11)
    {
      goto LABEL_13;
    }

    v12 = _Block_copy(*(a1 + 56));
    v13 = *(a1 + 40);
    v14 = *(v13 + 96);
    *(v13 + 96) = v12;

    v15 = *(a1 + 40);
    if (v15[9])
    {
      v16 = 0;
    }

    else
    {
      v16 = [MEMORY[0x1E698E740] processHandleForNSXPCConnection:*(a1 + 48)];
      v15 = *(a1 + 40);
    }

    [v15 _presentAuthorizationRequestWithContext:v5 implicitlySelectedLoginChoice:0 forProcess:v16 completionHandler:*(a1 + 56)];
  }

LABEL_13:
  v21 = *(*(a1 + 40) + 104);
  if (objc_opt_respondsToSelector())
  {
    [*(*(a1 + 40) + 104) test_runBlockToRunAfterReceivingRequest];
  }

LABEL_15:
}

void __83__ASCAgent_performAuthorizationRequestsForContext_withPresenter_completionHandler___block_invoke_2_72(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __83__ASCAgent_performAuthorizationRequestsForContext_withPresenter_completionHandler___block_invoke_2_72_cold_1(a1, v2);
  }
}

- (void)performSilentAuthorizationRequestsForContext:(id)context withCompletionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  if ([contextCopy requestStyle] == 2)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __79__ASCAgent_performSilentAuthorizationRequestsForContext_withCompletionHandler___block_invoke;
    v10[3] = &unk_1E815FB70;
    v10[4] = self;
    v12 = handlerCopy;
    v11 = currentConnection;
    [(ASCAgent *)self _prepareForAuthorizationRequestsForContext:contextCopy clientConnection:v11 withPresentationHandler:v10];
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v9);
  }
}

void __79__ASCAgent_performSilentAuthorizationRequestsForContext_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v59[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __79__ASCAgent_performSilentAuthorizationRequestsForContext_withCompletionHandler___block_invoke_78;
    aBlock[3] = &unk_1E815FB00;
    aBlock[4] = *(a1 + 32);
    v53 = *(a1 + 48);
    v8 = _Block_copy(aBlock);
    v9 = *(a1 + 40);
    if (v9)
    {
      [v9 auditToken];
    }

    else
    {
      memset(v51, 0, sizeof(v51));
    }

    v12 = [MEMORY[0x1E695DEF0] dataWithBytes:v51 length:32];
    v13 = [[ASCAuthorizationPresentationContext alloc] initWithRequestContext:v5 appIdentifier:0 shouldUseRelyingPartyForServiceName:1 auditTokenData:v12];
    [*(a1 + 32) _configureLoginChoicesForPresentationContext:v13 withRequestContext:v5];
    if ([v5 isRegistrationRequest])
    {
      v14 = [(ASCAuthorizationPresentationContext *)v13 loginChoices];
      v15 = [v14 safari_firstObjectPassingTest:&__block_literal_global_84];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ([v15 isRegistrationRequest] & 1) == 0)
      {
        v28 = *(*(a1 + 32) + 184);
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = __79__ASCAgent_performSilentAuthorizationRequestsForContext_withCompletionHandler___block_invoke_4;
        v49[3] = &unk_1E815F9D0;
        v50 = v15;
        v15 = v15;
        os_activity_apply(v28, v49);
        v29 = MEMORY[0x1E696ABC0];
        v58 = *MEMORY[0x1E696A588];
        v59[0] = @"Found an unexpected credential in conditional registration request.";
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:&v58 count:1];
        v31 = [v29 errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:v30];
        v8[2](v8, 0, v31);

        goto LABEL_25;
      }
    }

    else
    {
      v16 = *(a1 + 32);
      v17 = [(ASCAuthorizationPresentationContext *)v13 loginChoices];
      v15 = [v16 _implicitlySelectAssertionLoginChoiceFromChoices:v17 forContext:v5];

      if (!v15)
      {
        os_activity_apply(*(*(a1 + 32) + 184), &__block_literal_global_92);
        v32 = MEMORY[0x1E696ABC0];
        v56 = *MEMORY[0x1E696A588];
        v57 = @"Could not find the requested credential.";
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
        v14 = [v32 errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:v15];
        v8[2](v8, 0, v14);
        goto LABEL_25;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v15;
      if ([v14 isRegistrationRequest])
      {
        [v5 setIsConditionalRegistrationRequest:1];
        v18 = [*(a1 + 32) _bundleIDFromAppID:*(*(a1 + 32) + 64)];
        if ([*(*(a1 + 32) + 64) isEqualToString:@"AuthenticationServicesCoreUnitTests"])
        {
          v19 = [MEMORY[0x1E696AAE8] safari_safariApplicationPlatformBundleIdentifier];

          v18 = v19;
        }

        v20 = *(a1 + 32);
        v40 = v18;
        if ((*(v20 + 80) & 1) != 0 || *(v20 + 81) == 1 && (v34 = [v18 isEqualToString:@"com.apple.sfapp"], v20 = *(a1 + 32), (v34 & 1) == 0))
        {
          v21 = *(v20 + 112);
          v38 = [v14 userVisibleName];
          v22 = [v14 relyingPartyIdentifier];
          v45[0] = MEMORY[0x1E69E9820];
          v45[1] = 3221225472;
          v45[2] = __79__ASCAgent_performSilentAuthorizationRequestsForContext_withCompletionHandler___block_invoke_103;
          v45[3] = &unk_1E815FB48;
          v45[4] = *(a1 + 32);
          v39 = &v46;
          v46 = v13;
          v23 = &v47;
          v47 = v5;
          v24 = &v48;
          v48 = v8;
          v25 = v21;
          v26 = v38;
          [v25 signInEventForRecentlyFilledCredentialWithUsername:v38 forRelyingPartyIdentifier:v22 inAppWithBundleIdentifier:v40 completionHandler:v45];

          v27 = v40;
        }

        else
        {
          v35 = *(v20 + 112);
          v26 = [v14 userVisibleName];
          v41[0] = MEMORY[0x1E69E9820];
          v41[1] = 3221225472;
          v41[2] = __79__ASCAgent_performSilentAuthorizationRequestsForContext_withCompletionHandler___block_invoke_2_105;
          v41[3] = &unk_1E815FB48;
          v41[4] = *(a1 + 32);
          v39 = &v42;
          v42 = v13;
          v23 = &v43;
          v43 = v5;
          v24 = &v44;
          v44 = v8;
          v36 = v35;
          v27 = v40;
          [v36 signInEventForRecentlyFilledCredentialWithUsername:v26 forAppWithBundleIdentifier:v40 completionHandler:v41];
        }

        v15 = v14;
        goto LABEL_25;
      }
    }

    v33 = *(a1 + 32);
    v14 = [v5 authenticatedContext];
    [v33 userSelectedLoginChoice:v15 authenticatedContext:v14 completionHandler:v8];
LABEL_25:

    v11 = v53;
    goto LABEL_26;
  }

  v10 = *(*(a1 + 32) + 184);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__ASCAgent_performSilentAuthorizationRequestsForContext_withCompletionHandler___block_invoke_2;
  block[3] = &unk_1E815F9D0;
  v55 = v6;
  os_activity_apply(v10, block);
  (*(*(a1 + 48) + 16))();
  v11 = v55;
LABEL_26:

  v37 = *MEMORY[0x1E69E9840];
}

void __79__ASCAgent_performSilentAuthorizationRequestsForContext_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __83__ASCAgent_performAuthorizationRequestsForContext_withPresenter_completionHandler___block_invoke_2_72_cold_1(a1, v2);
  }
}

void __79__ASCAgent_performSilentAuthorizationRequestsForContext_withCompletionHandler___block_invoke_78(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) _authorizationCompletedWithCredential:v5 error:v6];
  v7 = *(a1 + 32);
  v8 = v7[8];
  v9 = v7[1];
  v10 = v7[2];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__ASCAgent_performSilentAuthorizationRequestsForContext_withCompletionHandler___block_invoke_2_79;
  v14[3] = &unk_1E815FAD8;
  v11 = *(a1 + 40);
  v16 = v6;
  v17 = v11;
  v15 = v5;
  v12 = v6;
  v13 = v5;
  [v9 endAuthorizationForAppIdentifier:v8 token:v10 clearanceHandler:v14];
}

uint64_t __79__ASCAgent_performSilentAuthorizationRequestsForContext_withCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 isRegistrationRequest];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __79__ASCAgent_performSilentAuthorizationRequestsForContext_withCompletionHandler___block_invoke_4(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __79__ASCAgent_performSilentAuthorizationRequestsForContext_withCompletionHandler___block_invoke_4_cold_1(a1);
  }
}

void __79__ASCAgent_performSilentAuthorizationRequestsForContext_withCompletionHandler___block_invoke_90()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __79__ASCAgent_performSilentAuthorizationRequestsForContext_withCompletionHandler___block_invoke_90_cold_1();
  }
}

void __79__ASCAgent_performSilentAuthorizationRequestsForContext_withCompletionHandler___block_invoke_103(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v6 = [v4 providerBundleIdentifier];
  v5 = [v4 externalProviderListenerEndpoint];

  [v3 _requestConditionalRegistrationOnProvider:v6 listenerEndpoint:v5 presentationContext:a1[5] requestContext:a1[6] completionHandler:a1[7]];
}

void __79__ASCAgent_performSilentAuthorizationRequestsForContext_withCompletionHandler___block_invoke_2_105(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v6 = [v4 providerBundleIdentifier];
  v5 = [v4 externalProviderListenerEndpoint];

  [v3 _requestConditionalRegistrationOnProvider:v6 listenerEndpoint:v5 presentationContext:a1[5] requestContext:a1[6] completionHandler:a1[7]];
}

- (void)_requestConditionalRegistrationOnProvider:(id)provider listenerEndpoint:(id)endpoint presentationContext:(id)context requestContext:(id)requestContext completionHandler:(id)handler
{
  providerCopy = provider;
  endpointCopy = endpoint;
  contextCopy = context;
  requestContextCopy = requestContext;
  handlerCopy = handler;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy_;
  v41 = __Block_byref_object_dispose_;
  v42 = 0;
  if ([providerCopy isEqualToString:*MEMORY[0x1E69C8CC0]])
  {
    v36 = 0;
    v17 = [(ASCAgent *)self _canCreateICloudKeychainPasskeyPreflightWithError:&v36];
    v18 = v36;
    if (v17)
    {
      loginChoices = [contextCopy loginChoices];
      v20 = [loginChoices safari_firstObjectPassingTest:&__block_literal_global_107];
      v21 = v38[5];
      v38[5] = v20;

      name = [v38[5] name];
      relyingPartyIdentifier = [v38[5] relyingPartyIdentifier];
      v24 = [(ASCAgent *)self _canPerformConditionalRegistrationInICloudKeychainForUsername:name relyingParty:relyingPartyIdentifier];

      if (v24)
      {
        v25 = v38[5];
        authenticatedContext = [requestContextCopy authenticatedContext];
        [(ASCAgent *)self userSelectedLoginChoice:v25 authenticatedContext:authenticatedContext completionHandler:handlerCopy];
      }

      else
      {
        os_activity_apply(self->_authorizationActivity, &__block_literal_global_109);
        authenticatedContext = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:2 userInfo:0];
        handlerCopy[2](handlerCopy, 0, authenticatedContext);
      }
    }

    else
    {
      handlerCopy[2](handlerCopy, 0, v18);
    }
  }

  else if (providerCopy)
  {
    mEMORY[0x1E69C8DE0] = [MEMORY[0x1E69C8DE0] sharedManager];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __124__ASCAgent__requestConditionalRegistrationOnProvider_listenerEndpoint_presentationContext_requestContext_completionHandler___block_invoke_110;
    v29[3] = &unk_1E815FC10;
    v29[4] = self;
    v34 = handlerCopy;
    v35 = &v37;
    v30 = contextCopy;
    v31 = providerCopy;
    v32 = endpointCopy;
    v33 = requestContextCopy;
    [mEMORY[0x1E69C8DE0] getExtensionWithBundleID:v31 completion:v29];
  }

  else
  {
    os_activity_apply(self->_authorizationActivity, &__block_literal_global_171);
    v28 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:12 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v28);
  }

  _Block_object_dispose(&v37, 8);
}

uint64_t __124__ASCAgent__requestConditionalRegistrationOnProvider_listenerEndpoint_presentationContext_requestContext_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 loginChoiceKind] == 2)
  {
    v3 = [v2 isExternal] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __124__ASCAgent__requestConditionalRegistrationOnProvider_listenerEndpoint_presentationContext_requestContext_completionHandler___block_invoke_2()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __124__ASCAgent__requestConditionalRegistrationOnProvider_listenerEndpoint_presentationContext_requestContext_completionHandler___block_invoke_2_cold_1();
  }
}

void __124__ASCAgent__requestConditionalRegistrationOnProvider_listenerEndpoint_presentationContext_requestContext_completionHandler___block_invoke_110(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69C8DE0] sharedManager];
  v5 = [v4 extensionSupportsConditionalPasskeyRegistration:v3];

  if (v5)
  {
    v6 = [*(a1 + 40) loginChoices];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __124__ASCAgent__requestConditionalRegistrationOnProvider_listenerEndpoint_presentationContext_requestContext_completionHandler___block_invoke_114;
    v26[3] = &unk_1E815FB98;
    v27 = *(a1 + 48);
    v7 = [v6 safari_firstObjectPassingTest:v26];
    v8 = *(*(a1 + 80) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    if (*(a1 + 56))
    {
      v10 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:*(a1 + 56)];
      v11 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F41BB9E8];
      [v10 setRemoteObjectInterface:v11];

      [v10 resume];
      objc_initWeak(&location, *(a1 + 32));
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __124__ASCAgent__requestConditionalRegistrationOnProvider_listenerEndpoint_presentationContext_requestContext_completionHandler___block_invoke_2_164;
      v23[3] = &unk_1E815FBC0;
      objc_copyWeak(&v24, &location);
      v12 = [v10 remoteObjectProxyWithErrorHandler:v23];
      v13 = *(a1 + 32);
      v14 = *(v13 + 120);
      *(v13 + 120) = v12;

      v15 = *(*(a1 + 32) + 120);
      v16 = *(*(*(a1 + 80) + 8) + 40);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __124__ASCAgent__requestConditionalRegistrationOnProvider_listenerEndpoint_presentationContext_requestContext_completionHandler___block_invoke_166;
      v20[3] = &unk_1E815FBE8;
      v17 = v10;
      v21 = v17;
      v22 = *(a1 + 72);
      [v15 requestAutomaticPasskeyUpgradeWithLoginChoice:v16 completionHandler:v20];

      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
    }

    else
    {
      v17 = [MEMORY[0x1E698E740] processHandleForNSXPCConnection:*(*(a1 + 32) + 48)];
      [*(a1 + 32) _presentAuthorizationRequestWithContext:*(a1 + 64) implicitlySelectedLoginChoice:*(*(*(a1 + 80) + 8) + 40) forProcess:v17 completionHandler:*(a1 + 72)];
    }
  }

  else
  {
    os_activity_apply(*(*(a1 + 32) + 184), &__block_literal_global_113);
    v18 = *(a1 + 72);
    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:0];
    (*(v18 + 16))(v18, 0, v19);
  }
}

void __124__ASCAgent__requestConditionalRegistrationOnProvider_listenerEndpoint_presentationContext_requestContext_completionHandler___block_invoke_2_111()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __124__ASCAgent__requestConditionalRegistrationOnProvider_listenerEndpoint_presentationContext_requestContext_completionHandler___block_invoke_2_111_cold_1();
  }
}

uint64_t __124__ASCAgent__requestConditionalRegistrationOnProvider_listenerEndpoint_presentationContext_requestContext_completionHandler___block_invoke_114(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 loginChoiceKind] == 2)
  {
    v4 = [v3 externalCredentialProviderBundleID];
    v5 = [v4 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __124__ASCAgent__requestConditionalRegistrationOnProvider_listenerEndpoint_presentationContext_requestContext_completionHandler___block_invoke_2_164(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __124__ASCAgent__requestConditionalRegistrationOnProvider_listenerEndpoint_presentationContext_requestContext_completionHandler___block_invoke_2_164_cold_1(v5);
    }
  }
}

void __124__ASCAgent__requestConditionalRegistrationOnProvider_listenerEndpoint_presentationContext_requestContext_completionHandler___block_invoke_2_169()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __124__ASCAgent__requestConditionalRegistrationOnProvider_listenerEndpoint_presentationContext_requestContext_completionHandler___block_invoke_2_169_cold_1();
  }
}

- (void)getPasskeysDataForRelyingParty:(id)party withCompletionHandler:(id)handler
{
  partyCopy = party;
  handlerCopy = handler;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v9 = currentConnection;
  if (currentConnection)
  {
    [currentConnection auditToken];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  if (WBSAuditTokenHasEntitlement())
  {
    mEMORY[0x1E69C88B0] = [MEMORY[0x1E69C88B0] sharedManager];
    keyBagLockStatus = [mEMORY[0x1E69C88B0] keyBagLockStatus];

    if (keyBagLockStatus)
    {
      v12 = WBS_LOG_CHANNEL_PREFIXAuthorization();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [ASCAgent getPasskeysDataForRelyingParty:withCompletionHandler:];
      }
    }

    v13 = [(ASPublicKeyCredentialManagerInterface *)self->_publicKeyCredentialManager allPasskeysDataForRelyingParty:partyCopy, v15, v16];
    handlerCopy[2](handlerCopy, v13);
  }

  else
  {
    v14 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [ASCAgent getPasskeysDataForRelyingParty:withCompletionHandler:];
    }

    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)deletePasskeyForRelyingParty:(id)party withCredentialID:(id)d completionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  partyCopy = party;
  dCopy = d;
  handlerCopy = handler;
  v11 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v27 = dCopy;
    v28 = 2114;
    v29 = partyCopy;
    _os_log_impl(&dword_1C20AD000, v11, OS_LOG_TYPE_INFO, "Received request to delete passkey %{public}@ for %{public}@.", buf, 0x16u);
  }

  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  if ([(ASCAgent *)self _isConnection:currentConnection entitledToDeletePasskeysForRelyingParty:partyCopy])
  {
    mEMORY[0x1E69C88B0] = [MEMORY[0x1E69C88B0] sharedManager];
    keyBagLockStatus = [mEMORY[0x1E69C88B0] keyBagLockStatus];

    if (keyBagLockStatus)
    {
      v15 = WBS_LOG_CHANNEL_PREFIXAuthorization();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [ASCAgent deletePasskeyForRelyingParty:withCredentialID:completionHandler:];
      }

      v16 = MEMORY[0x1E696ABC0];
      v24 = *MEMORY[0x1E696A588];
      v25 = @"KeyBag is currently locked.";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v18 = [v16 errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:v17];
      handlerCopy[2](handlerCopy, 0, v18);
    }

    else
    {
      publicKeyCredentialManager = self->_publicKeyCredentialManager;
      v23 = 0;
      v21 = [(ASPublicKeyCredentialManagerInterface *)publicKeyCredentialManager deletePasskeyForRelyingParty:partyCopy withCredentialID:dCopy error:&v23];
      v17 = v23;
      handlerCopy[2](handlerCopy, v21, v17);
    }
  }

  else
  {
    v19 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      [ASCAgent deletePasskeyForRelyingParty:withCredentialID:completionHandler:];
    }

    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v17);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)deleteAllPasskeysForRelyingParty:(id)party completionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  partyCopy = party;
  handlerCopy = handler;
  v8 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v24 = partyCopy;
    _os_log_impl(&dword_1C20AD000, v8, OS_LOG_TYPE_INFO, "Received request to delete all passkeys for %{public}@.", buf, 0xCu);
  }

  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  if ([(ASCAgent *)self _isConnection:currentConnection entitledToDeletePasskeysForRelyingParty:partyCopy])
  {
    mEMORY[0x1E69C88B0] = [MEMORY[0x1E69C88B0] sharedManager];
    keyBagLockStatus = [mEMORY[0x1E69C88B0] keyBagLockStatus];

    if (keyBagLockStatus)
    {
      v12 = WBS_LOG_CHANNEL_PREFIXAuthorization();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [ASCAgent deleteAllPasskeysForRelyingParty:completionHandler:];
      }

      v13 = MEMORY[0x1E696ABC0];
      v21 = *MEMORY[0x1E696A588];
      v22 = @"KeyBag is currently locked.";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v15 = [v13 errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:v14];
      handlerCopy[2](handlerCopy, 0, v15);
    }

    else
    {
      publicKeyCredentialManager = self->_publicKeyCredentialManager;
      v20 = 0;
      v18 = [(ASPublicKeyCredentialManagerInterface *)publicKeyCredentialManager deleteAllPasskeysForRelyingParty:partyCopy error:&v20];
      v14 = v20;
      handlerCopy[2](handlerCopy, v18, v14);
    }
  }

  else
  {
    v16 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [ASCAgent deleteAllPasskeysForRelyingParty:completionHandler:];
    }

    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v14);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)preflightCanCreateICloudKeychainPasskeyWithCompletionHandler:(id)handler
{
  v7 = 0;
  handlerCopy = handler;
  v5 = [(ASCAgent *)self _canCreateICloudKeychainPasskeyPreflightWithError:&v7];
  v6 = v7;
  handlerCopy[2](handlerCopy, v5, v6);
}

- (void)_openPasswordOptions:(id)options
{
  v3 = MEMORY[0x1E695DFF8];
  optionsCopy = options;
  v5 = [v3 URLWithString:@"settings-navigation://com.apple.Settings.General/AUTOFILL"];
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v8 = 0;
  [defaultWorkspace openSensitiveURL:v5 withOptions:0 error:&v8];
  v7 = v8;

  optionsCopy[2](optionsCopy, v7);
}

- (void)requestToTurnOnCredentialProviderExtensionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v6 = currentConnection;
  if (currentConnection)
  {
    [currentConnection auditToken];
  }

  else
  {
    *buf = 0u;
    v26 = 0u;
  }

  v7 = WBSApplicationIdentifierFromAuditToken();

  v8 = [(ASCAgent *)self _bundleIDFromAppID:v7];
  safari_safariApplicationPlatformBundleIdentifier = [MEMORY[0x1E696AAE8] safari_safariApplicationPlatformBundleIdentifier];
  v10 = [v8 isEqualToString:safari_safariApplicationPlatformBundleIdentifier];

  if (v10)
  {
    v11 = *MEMORY[0x1E69C8CC0];

    v8 = v11;
  }

  mEMORY[0x1E69C8DB8] = [MEMORY[0x1E69C8DB8] sharedFeatureManager];
  isUserAllowedToTogglePasswordAutoFillEnabledState = [mEMORY[0x1E69C8DB8] isUserAllowedToTogglePasswordAutoFillEnabledState];

  if (isUserAllowedToTogglePasswordAutoFillEnabledState)
  {
    if ([(ASCAgent *)self _isExtensionEnabled:v8])
    {
      handlerCopy[2](handlerCopy, 1);
    }

    else
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"turnOnAutoFillRequestLastDate-%@", v8];
      safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
      v17 = [safari_browserDefaults safari_dateForKey:v15];

      if (v17 && ([MEMORY[0x1E695DF00] now], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "timeIntervalSinceDate:", v17), v20 = v19, v18, v20 <= 10.0))
      {
        v24 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1C20AD000, v24, OS_LOG_TYPE_INFO, "AutoFill enablement API failed request because not enough time passed since last request.", buf, 2u);
        }

        v21 = 0;
      }

      else
      {
        v21 = [(ASCAgent *)self _showExtensionEnablementAlert:v8];
        safari_browserDefaults2 = [MEMORY[0x1E695E000] safari_browserDefaults];
        v23 = [MEMORY[0x1E695DF00] now];
        [safari_browserDefaults2 safari_setDate:v23 forKey:v15];
      }

      handlerCopy[2](handlerCopy, v21);
    }
  }

  else
  {
    v14 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ASCAgent requestToTurnOnCredentialProviderExtensionWithCompletionHandler:];
    }

    handlerCopy[2](handlerCopy, 0);
  }
}

- (BOOL)_isExtensionEnabled:(id)enabled
{
  enabledCopy = enabled;
  if ([enabledCopy isEqualToString:*MEMORY[0x1E69C8CC0]])
  {
    mEMORY[0x1E69C8DB8] = [MEMORY[0x1E69C8DB8] sharedFeatureManager];
    shouldAutoFillPasswordsFromKeychain = [mEMORY[0x1E69C8DB8] shouldAutoFillPasswordsFromKeychain];
  }

  else
  {
    mEMORY[0x1E69C8DB8] = [MEMORY[0x1E69C8DE0] sharedManager];
    getEnabledExtensionsSynchronously = [mEMORY[0x1E69C8DB8] getEnabledExtensionsSynchronously];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __32__ASCAgent__isExtensionEnabled___block_invoke;
    v8[3] = &unk_1E815FC38;
    v9 = enabledCopy;
    shouldAutoFillPasswordsFromKeychain = [getEnabledExtensionsSynchronously safari_containsObjectPassingTest:v8];
  }

  return shouldAutoFillPasswordsFromKeychain;
}

uint64_t __32__ASCAgent__isExtensionEnabled___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 sf_bundleIdentifierForContainingApp];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (BOOL)_showExtensionEnablementAlert:(id)alert
{
  v42 = *MEMORY[0x1E69E9840];
  alertCopy = alert;
  v4 = [alertCopy isEqualToString:*MEMORY[0x1E69C8CC0]];
  if (v4)
  {
    localizedContainingName = _WBSLocalizedStringWithCurrentUserLocale();
    extensionsSync = 0;
LABEL_14:
    v18 = MEMORY[0x1E696AEC0];
    v19 = _WBSLocalizedStringWithCurrentUserLocale();
    v20 = [v18 localizedStringWithFormat:v19, localizedContainingName];

    v21 = MEMORY[0x1E696AEC0];
    v22 = _WBSLocalizedStringWithCurrentUserLocale();
    v23 = [v21 localizedStringWithFormat:v22, localizedContainingName];

    v24 = *MEMORY[0x1E695EE60];
    v39[0] = *MEMORY[0x1E695EE58];
    v39[1] = v24;
    v40[0] = v23;
    v40[1] = v20;
    v39[2] = *MEMORY[0x1E695EE78];
    v25 = _WBSLocalizedStringWithCurrentUserLocale();
    v40[2] = v25;
    v39[3] = *MEMORY[0x1E695EE70];
    v26 = _WBSLocalizedStringWithCurrentUserLocale();
    v40[3] = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:4];
    v28 = [v27 mutableCopy];

    v29 = CFUserNotificationCreate(*MEMORY[0x1E695E480], 0.0, 2uLL, 0, v28);
    responseFlags = 3;
    CFUserNotificationReceiveResponse(v29, 0.0, &responseFlags);
    CFRelease(v29);
    v15 = (responseFlags & 3) == 0;
    if ((responseFlags & 3) == 0)
    {
      mEMORY[0x1E69C8DB8] = [MEMORY[0x1E69C8DB8] sharedFeatureManager];
      [mEMORY[0x1E69C8DB8] setShouldAutoFillPasswords:1];

      if (v4)
      {
        mEMORY[0x1E69C8DB8]2 = [MEMORY[0x1E69C8DB8] sharedFeatureManager];
        [mEMORY[0x1E69C8DB8]2 setShouldAutoFillPasswordsFromKeychain:1];
      }

      else
      {
        mEMORY[0x1E69C8DB8]2 = [MEMORY[0x1E69C8DE0] sharedManager];
        [mEMORY[0x1E69C8DB8]2 setExtension:extensionsSync isEnabled:1];
      }
    }

    goto LABEL_20;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  mEMORY[0x1E69C8DE0] = [MEMORY[0x1E69C8DE0] sharedManager];
  extensionsSync = [mEMORY[0x1E69C8DE0] extensionsSync];

  v8 = [extensionsSync countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (!v8)
  {
LABEL_11:
    v15 = 0;
LABEL_20:

    goto LABEL_21;
  }

  v9 = v8;
  v10 = *v36;
LABEL_5:
  v11 = 0;
  while (1)
  {
    if (*v36 != v10)
    {
      objc_enumerationMutation(extensionsSync);
    }

    v12 = *(*(&v35 + 1) + 8 * v11);
    sf_bundleIdentifierForContainingApp = [v12 sf_bundleIdentifierForContainingApp];
    v14 = [sf_bundleIdentifierForContainingApp isEqualToString:alertCopy];

    if (v14)
    {
      break;
    }

    if (v9 == ++v11)
    {
      v9 = [extensionsSync countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v9)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  v16 = v12;

  if (v16)
  {
    _plugIn = [v16 _plugIn];
    localizedContainingName = [_plugIn localizedContainingName];

    extensionsSync = v16;
    goto LABEL_14;
  }

  v15 = 0;
LABEL_21:

  v32 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)_implicitlySelectAssertionLoginChoiceFromChoices:(id)choices forContext:(id)context
{
  choicesCopy = choices;
  contextCopy = context;
  if ([choicesCopy count] != 1)
  {
    authorizationActivity = self->_authorizationActivity;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__ASCAgent__implicitlySelectAssertionLoginChoiceFromChoices_forContext___block_invoke;
    block[3] = &unk_1E815F9D0;
    v18 = choicesCopy;
    os_activity_apply(authorizationActivity, block);
    v10 = 0;
    v9 = v18;
    goto LABEL_14;
  }

  v8 = [choicesCopy objectAtIndexedSubscript:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = self->_authorizationActivity;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __72__ASCAgent__implicitlySelectAssertionLoginChoiceFromChoices_forContext___block_invoke_201;
    v15[3] = &unk_1E815F9D0;
    v9 = v8;
    v16 = v9;
    os_activity_apply(v12, v15);

    v10 = 0;
    goto LABEL_14;
  }

  v9 = v8;
  if (![v9 isRegistrationRequest])
  {
    authenticatedContext = [contextCopy authenticatedContext];
    if (authenticatedContext)
    {
      if ([(ASCAgent *)self _isValidContext:authenticatedContext])
      {
        v10 = v9;
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      os_activity_apply(self->_authorizationActivity, &__block_literal_global_207);
    }

    v10 = 0;
    goto LABEL_12;
  }

  os_activity_apply(self->_authorizationActivity, &__block_literal_global_204);
  v10 = 0;
LABEL_13:

LABEL_14:

  return v10;
}

void __72__ASCAgent__implicitlySelectAssertionLoginChoiceFromChoices_forContext___block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __72__ASCAgent__implicitlySelectAssertionLoginChoiceFromChoices_forContext___block_invoke_cold_1(a1, v2);
  }
}

void __72__ASCAgent__implicitlySelectAssertionLoginChoiceFromChoices_forContext___block_invoke_201(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __72__ASCAgent__implicitlySelectAssertionLoginChoiceFromChoices_forContext___block_invoke_201_cold_1(a1);
  }
}

void __72__ASCAgent__implicitlySelectAssertionLoginChoiceFromChoices_forContext___block_invoke_202()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __72__ASCAgent__implicitlySelectAssertionLoginChoiceFromChoices_forContext___block_invoke_202_cold_1();
  }
}

void __72__ASCAgent__implicitlySelectAssertionLoginChoiceFromChoices_forContext___block_invoke_205()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __72__ASCAgent__implicitlySelectAssertionLoginChoiceFromChoices_forContext___block_invoke_205_cold_1();
  }
}

- (void)cancelCurrentRequest
{
  internalSemaphore = self->_internalSemaphore;
  v4 = dispatch_time(0, 10000000000);
  v5 = dispatch_semaphore_wait(internalSemaphore, v4);
  authorizationActivity = self->_authorizationActivity;
  if (v5)
  {
    v7 = &__block_literal_global_209;
  }

  else
  {
    v7 = &__block_literal_global_212;
  }

  os_activity_apply(self->_authorizationActivity, v7);
  [(ASCAuthorizationTrafficController *)self->_authorizationTrafficController cancelAuthorizationForAppIdentifierIfNecessary:self->_clientApplicationIdentifier token:self->_authorizationTrafficControllerToken];
  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:2 userInfo:0];
  publicKeyCredentialOperationUUID = self->_publicKeyCredentialOperationUUID;
  v10 = v8;
  if (publicKeyCredentialOperationUUID)
  {
    [(ASPublicKeyCredentialManagerInterface *)self->_publicKeyCredentialManager cancelOperationIfNecessaryWithUUID:publicKeyCredentialOperationUUID overrideError:v8];
  }

  else
  {
    [(ASCAgent *)self _authorizationCompletedWithCredential:0 error:v8];
  }

  dispatch_semaphore_signal(self->_internalSemaphore);
  os_activity_apply(self->_authorizationActivity, &__block_literal_global_215);
}

void __32__ASCAgent_cancelCurrentRequest__block_invoke()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    __32__ASCAgent_cancelCurrentRequest__block_invoke_cold_1();
  }
}

void __32__ASCAgent_cancelCurrentRequest__block_invoke_210()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v2 = 136315138;
    v3 = "[ASCAgent cancelCurrentRequest]_block_invoke";
    _os_log_impl(&dword_1C20AD000, v0, OS_LOG_TYPE_INFO, "Acquired lock for %s", &v2, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void __32__ASCAgent_cancelCurrentRequest__block_invoke_213()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v2 = 136315138;
    v3 = "[ASCAgent cancelCurrentRequest]_block_invoke";
    _os_log_impl(&dword_1C20AD000, v0, OS_LOG_TYPE_INFO, "Released lock for %s", &v2, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

- (void)_prepareForAuthorizationRequestsForContext:(id)context clientConnection:(id)connection withPresentationHandler:(id)handler
{
  v40[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  connectionCopy = connection;
  handlerCopy = handler;
  [contextCopy sanitizeRequestTypesForAutoFillRequestIfNecessary];
  [contextCopy applyMagicCredentialIDIfNecessary];
  if ([contextCopy isCABLEAuthenticatorRequest] && !+[ASCWebKitSPISupport shouldUseAlternateCredentialStore](ASCWebKitSPISupport, "shouldUseAlternateCredentialStore"))
  {
    os_activity_apply(self->_authorizationActivity, &__block_literal_global_218);
    v14 = MEMORY[0x1E696ABC0];
    v39 = *MEMORY[0x1E696A588];
    v15 = _WBSLocalizedStringWithCurrentUserLocale();
    v40[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v17 = v14;
    v18 = 5;
LABEL_19:
    v27 = [v17 errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:v18 userInfo:v16];
    handlerCopy[2](handlerCopy, 0, v27);

    goto LABEL_21;
  }

  proxiedAppIdentifier = [contextCopy proxiedAppIdentifier];
  v12 = proxiedAppIdentifier;
  if (proxiedAppIdentifier)
  {
    v13 = proxiedAppIdentifier;
  }

  else
  {
    if (connectionCopy)
    {
      [connectionCopy auditToken];
    }

    else
    {
      v35 = 0u;
      v36 = 0u;
    }

    v13 = WBSApplicationIdentifierFromAuditToken();
  }

  v15 = v13;

  if (![v15 length])
  {
    os_activity_apply(self->_authorizationActivity, &__block_literal_global_224);
    v26 = MEMORY[0x1E696ABC0];
    v37 = *MEMORY[0x1E696A588];
    v38 = @"The calling process does not have an application identifier. Make sure it is properly configured.";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v17 = v26;
    v18 = 1;
    goto LABEL_19;
  }

  if ([(ASCAgent *)self _shouldApplyQuirksToClientWithApplicationIdentifier:v15])
  {
    requestTypes = [contextCopy requestTypes];
    if ((ascCredentialRequestTypesAllPasskey() & requestTypes) != 0)
    {
      relyingPartyIdentifier = [contextCopy relyingPartyIdentifier];
      v21 = +[ASFeatureManager sharedManager];
      v22 = [v21 arePasskeysDisallowedForRelyingParty:relyingPartyIdentifier];

      if (v22)
      {
        os_activity_apply(self->_authorizationActivity, &__block_literal_global_231);
        [contextCopy removePasskeyRequests];
      }
    }
  }

  v34 = 0;
  v23 = [(ASCAgent *)self _isClientWithApplicationIdentifier:v15 properlyEntitledForRequestContext:contextCopy error:&v34];
  v16 = v34;
  if (v23)
  {
    authorizationTrafficController = self->_authorizationTrafficController;
    authorizationTrafficControllerToken = self->_authorizationTrafficControllerToken;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __96__ASCAgent__prepareForAuthorizationRequestsForContext_clientConnection_withPresentationHandler___block_invoke_235;
    v29[3] = &unk_1E815FCD8;
    v33 = handlerCopy;
    v29[4] = self;
    v15 = v15;
    v30 = v15;
    v31 = contextCopy;
    v32 = connectionCopy;
    [(ASCAuthorizationTrafficController *)authorizationTrafficController beginAuthorizationForApplicationIdentifier:v15 token:authorizationTrafficControllerToken withClearanceHandler:v29];
  }

  else
  {
    os_activity_apply(self->_authorizationActivity, &__block_literal_global_234);
    handlerCopy[2](handlerCopy, 0, v16);
  }

LABEL_21:

  v28 = *MEMORY[0x1E69E9840];
}

void __96__ASCAgent__prepareForAuthorizationRequestsForContext_clientConnection_withPresentationHandler___block_invoke()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __96__ASCAgent__prepareForAuthorizationRequestsForContext_clientConnection_withPresentationHandler___block_invoke_cold_1();
  }
}

void __96__ASCAgent__prepareForAuthorizationRequestsForContext_clientConnection_withPresentationHandler___block_invoke_222()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __96__ASCAgent__prepareForAuthorizationRequestsForContext_clientConnection_withPresentationHandler___block_invoke_222_cold_1();
  }
}

void __96__ASCAgent__prepareForAuthorizationRequestsForContext_clientConnection_withPresentationHandler___block_invoke_229()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1C20AD000, v0, OS_LOG_TYPE_DEFAULT, "Dropping passkey requests from quirked relying party.", v1, 2u);
  }
}

void __96__ASCAgent__prepareForAuthorizationRequestsForContext_clientConnection_withPresentationHandler___block_invoke_232()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __96__ASCAgent__prepareForAuthorizationRequestsForContext_clientConnection_withPresentationHandler___block_invoke_232_cold_1();
  }
}

void __96__ASCAgent__prepareForAuthorizationRequestsForContext_clientConnection_withPresentationHandler___block_invoke_235(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    objc_storeStrong((*(a1 + 32) + 64), *(a1 + 40));
    objc_storeStrong((*(a1 + 32) + 56), *(a1 + 48));
    v7 = dispatch_group_create();
    v69[0] = 0;
    v69[1] = v69;
    v69[2] = 0x2020000000;
    v70 = 0;
    v8 = [*(*(a1 + 32) + 56) requestTypes];
    if ((v8 & 2) != 0)
    {
      dispatch_group_enter(v7);
      v9 = *(a1 + 32);
      v10 = *(a1 + 48);
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __96__ASCAgent__prepareForAuthorizationRequestsForContext_clientConnection_withPresentationHandler___block_invoke_2;
      v67[3] = &unk_1E815F9D0;
      v68 = v7;
      [v9 _configureAppleIDCredentialWithContext:v10 completionHandler:v67];
    }

    if (v8)
    {
      dispatch_group_enter(v7);
      v11 = *(a1 + 32);
      v12 = [*(a1 + 48) testOptions];
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = __96__ASCAgent__prepareForAuthorizationRequestsForContext_clientConnection_withPresentationHandler___block_invoke_3;
      v65[3] = &unk_1E815F9D0;
      v66 = v7;
      [v11 _configurePasswordCredentialsWithTestOptions:v12 completionHandler:v65];
    }

    if ((v8 & 0x28) != 0)
    {
      v13 = [MEMORY[0x1E695DF70] array];
      if ((v8 & 8) != 0)
      {
        v14 = [*(a1 + 48) platformKeyCredentialAssertionOptions];
        [v13 addObject:v14];
      }

      if ((v8 & 0x20) != 0)
      {
        v15 = [*(a1 + 48) securityKeyCredentialAssertionOptions];
        [v13 addObject:v15];
      }

      dispatch_group_enter(v7);
      v16 = [v13 firstObject];
      v47 = [v16 origin];

      v46 = [*(a1 + 48) relyingPartyIdentifier];
      if (*(*(a1 + 32) + 80) == 1 && [v47 length] && (objc_msgSend(v46, "isValidRPIDForOrigin:", v47) & 1) == 0)
      {
        v40 = objc_alloc_init(_TtC26AuthenticationServicesCore23ASCRelatedOriginFetcher);
        v41 = *(a1 + 32);
        v42 = *(v41 + 264);
        *(v41 + 264) = v40;

        v43 = *(*(a1 + 32) + 264);
        v59[0] = MEMORY[0x1E69E9820];
        v59[1] = 3221225472;
        v59[2] = __96__ASCAgent__prepareForAuthorizationRequestsForContext_clientConnection_withPresentationHandler___block_invoke_4;
        v59[3] = &unk_1E815FC60;
        v44 = v7;
        v64 = v69;
        v45 = *(a1 + 32);
        v60[0] = v44;
        v60[1] = v45;
        v61 = v13;
        v62 = *(a1 + 40);
        v63 = *(a1 + 48);
        [v43 isOrigin:v47 relatedToRelyingPartyIdentifier:v46 completionHandler:v59];
        v21 = v60;
      }

      else
      {
        v18 = *(a1 + 32);
        v17 = *(a1 + 40);
        v19 = [*(a1 + 48) requestStyle];
        v20 = [*(a1 + 48) testOptions];
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __96__ASCAgent__prepareForAuthorizationRequestsForContext_clientConnection_withPresentationHandler___block_invoke_2_242;
        v57[3] = &unk_1E815F9D0;
        v58 = v7;
        [v18 _configurePublicKeyCredentialsWithAssertionOptions:v13 forProcessWithApplicationIdentifier:v17 requestStyle:v19 testOptions:v20 completionHandler:v57];
        v21 = &v58;
      }
    }

    if ((v8 & 4) != 0)
    {
      v22 = [*(a1 + 48) platformKeyCredentialCreationOptions];
      v23 = [v22 origin];

      v24 = [*(a1 + 48) relyingPartyIdentifier];
      if (*(*(a1 + 32) + 80) == 1 && [v23 length] && (objc_msgSend(v24, "isValidRPIDForOrigin:", v23) & 1) == 0)
      {
        dispatch_group_enter(v7);
        v25 = objc_alloc_init(_TtC26AuthenticationServicesCore23ASCRelatedOriginFetcher);
        v26 = *(a1 + 32);
        v27 = *(v26 + 264);
        *(v26 + 264) = v25;

        v28 = *(*(a1 + 32) + 264);
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = __96__ASCAgent__prepareForAuthorizationRequestsForContext_clientConnection_withPresentationHandler___block_invoke_3_243;
        v54[3] = &unk_1E815FC88;
        v55 = v7;
        v56 = v69;
        [v28 isOrigin:v23 relatedToRelyingPartyIdentifier:v24 completionHandler:v54];
      }
    }

    if (v8 == 16)
    {
      v29 = *(a1 + 32);
      v30 = *(v29 + 104);
      v31 = [*(v29 + 56) securityKeyCredentialCreationOptions];
      v32 = *(a1 + 32);
      v33 = [*(v32 + 56) globalFrameID];
      v34 = *(*(a1 + 32) + 184);
      v35 = [*(a1 + 48) testOptions];
      v36 = [v30 beginCreatingNewSecurityKeyCredentialIfAvailableWithOptions:v31 delegate:v32 webFrameIdentifier:v33 parentActivity:v34 testOptions:v35];
      v37 = *(a1 + 32);
      v38 = *(v37 + 176);
      *(v37 + 176) = v36;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __96__ASCAgent__prepareForAuthorizationRequestsForContext_clientConnection_withPresentationHandler___block_invoke_245;
    block[3] = &unk_1E815FCB0;
    v39 = *(a1 + 32);
    v52 = v69;
    block[4] = v39;
    v51 = *(a1 + 64);
    v53 = v8;
    v49 = *(a1 + 48);
    v50 = *(a1 + 56);
    dispatch_group_notify(v7, MEMORY[0x1E69E96A0], block);

    _Block_object_dispose(v69, 8);
  }

  else
  {
    if (!v5)
    {
      v6 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:0 privacyPreservingDescription:@"Traffic controller denied request."];
    }

    (*(*(a1 + 64) + 16))();
  }
}

void __96__ASCAgent__prepareForAuthorizationRequestsForContext_clientConnection_withPresentationHandler___block_invoke_4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E69C8A40]);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __96__ASCAgent__prepareForAuthorizationRequestsForContext_clientConnection_withPresentationHandler___block_invoke_5;
  v15[3] = &unk_1E815F9D0;
  v16 = *(a1 + 32);
  [v6 setHandler:v15];
  if (a2)
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = [*(a1 + 64) requestStyle];
    v11 = [*(a1 + 64) testOptions];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __96__ASCAgent__prepareForAuthorizationRequestsForContext_clientConnection_withPresentationHandler___block_invoke_240;
    v13[3] = &unk_1E815F9D0;
    v14 = v6;
    [v7 _configurePublicKeyCredentialsWithAssertionOptions:v8 forProcessWithApplicationIdentifier:v9 requestStyle:v10 testOptions:v11 completionHandler:v13];
  }

  else
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
    v12 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __96__ASCAgent__prepareForAuthorizationRequestsForContext_clientConnection_withPresentationHandler___block_invoke_4_cold_1();
    }
  }
}

void __96__ASCAgent__prepareForAuthorizationRequestsForContext_clientConnection_withPresentationHandler___block_invoke_3_243(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E69C8A40]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __96__ASCAgent__prepareForAuthorizationRequestsForContext_clientConnection_withPresentationHandler___block_invoke_4_244;
  v8[3] = &unk_1E815F9D0;
  v9 = *(a1 + 32);
  [v6 setHandler:v8];
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v7 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __96__ASCAgent__prepareForAuthorizationRequestsForContext_clientConnection_withPresentationHandler___block_invoke_4_cold_1();
    }
  }
}

void __96__ASCAgent__prepareForAuthorizationRequestsForContext_clientConnection_withPresentationHandler___block_invoke_245(uint64_t a1)
{
  v46[1] = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __96__ASCAgent__prepareForAuthorizationRequestsForContext_clientConnection_withPresentationHandler___block_invoke_245_cold_1();
    }

    [*(*(a1 + 32) + 8) endAuthorizationForAppIdentifier:*(*(a1 + 32) + 64) token:*(*(a1 + 32) + 16) clearanceHandler:&__block_literal_global_248];
    v3 = *(a1 + 56);
    v4 = MEMORY[0x1E696ABC0];
    v45 = *MEMORY[0x1E696A588];
    v46[0] = @"The requested RPID did not match the origin or related origins.";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1];
    v6 = v4;
    v7 = 17;
    goto LABEL_5;
  }

  v10 = *(a1 + 72);
  if (v10 == 512)
  {
    v11 = [*(a1 + 40) platformAccountRegistrationOptions];
    v12 = [v11 acceptedContactIdentifiersIsEmpty];

    if (v12)
    {
      v3 = *(a1 + 56);
      v13 = MEMORY[0x1E696ABC0];
      v43 = *MEMORY[0x1E696A578];
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      v6 = v13;
      v7 = 1;
LABEL_5:
      v8 = [v6 errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:v7 userInfo:v5];
      (*(v3 + 16))(v3, 0, v8);

LABEL_6:
      v9 = *MEMORY[0x1E69E9840];
      return;
    }

    v14 = [*(a1 + 40) platformAccountRegistrationOptions];
    if ([v14 acceptsPhoneNumberOnly])
    {
      v15 = [*(a1 + 32) _connection:*(a1 + 48) hasEntitlement:@"com.apple.developer.authentication-services.account-creation-requires-phone-number"];

      if ((v15 & 1) == 0)
      {
        v16 = *(a1 + 56);
        v17 = MEMORY[0x1E696ABC0];
        v41 = *MEMORY[0x1E696A588];
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Passkey Account Creation requests that specify .phoneNumber as the only contact identifier require adding the %@ entitlement, with a value of true, which asserts that a phone number is required to create an account in your app. If a phone number is not required (e.g. an email address can be used instead, or there is any other path to getting an account that does not require providing a phone number), then you must include .email in acceptedContactIdentifiers.", @"com.apple.developer.authentication-services.account-creation-requires-phone-number"];
        v42 = v18;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        v20 = [v17 errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:v19];
        (*(v16 + 16))(v16, 0, v20);

        goto LABEL_6;
      }
    }

    else
    {
    }
  }

  v21 = *(a1 + 72) & 0x214;
  v22 = [*(*(a1 + 32) + 56) requestOptions];
  v23 = v22;
  if (v10 == 512 || ((v21 != 0) & v22) != 0)
  {
    v25 = [MEMORY[0x1E69C8DB8] sharedFeatureManager];
    v26 = [v25 userIsEligibleForPasskeys];

    if ((v26 & 1) == 0)
    {
      v37 = *(a1 + 56);
      v38 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:22 userInfo:0];
      v33 = *(v37 + 16);
      v40 = v38;
LABEL_30:
      v33();
      v39 = *MEMORY[0x1E69E9840];

      return;
    }
  }

  if (([*(a1 + 32) _hasSignInOptionsForRequestContext:*(a1 + 40)] & 1) == 0 && !v21)
  {
    v40 = [*(a1 + 32) _noCredentialsFoundErrorForRequestContext:*(*(a1 + 32) + 56)];
    v27 = [*(*(a1 + 32) + 56) platformKeyCredentialAssertionOptions];
    v28 = [v27 allowedCredentials];
    v29 = [v28 count];

    v30 = [v40 code];
    v31 = *(*(a1 + 32) + 184);
    if (v30 == 2 && v29 && (v23 & 1) == 0)
    {
      os_activity_apply(v31, &__block_literal_global_260);
      v32 = *(a1 + 40);
      v33 = *(*(a1 + 56) + 16);
    }

    else
    {
      os_activity_apply(v31, &__block_literal_global_263);
      [*(*(a1 + 32) + 8) endAuthorizationForAppIdentifier:*(*(a1 + 32) + 64) token:*(*(a1 + 32) + 16) clearanceHandler:&__block_literal_global_266];
      v33 = *(*(a1 + 56) + 16);
    }

    goto LABEL_30;
  }

  v34 = *(a1 + 40);
  v35 = *(*(a1 + 56) + 16);
  v36 = *MEMORY[0x1E69E9840];

  v35();
}

void __96__ASCAgent__prepareForAuthorizationRequestsForContext_clientConnection_withPresentationHandler___block_invoke_2_258()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1C20AD000, v0, OS_LOG_TYPE_DEFAULT, "No available credentials and not using preferImmediatelyAvailableCredentials, show error message sheet", v1, 2u);
  }
}

void __96__ASCAgent__prepareForAuthorizationRequestsForContext_clientConnection_withPresentationHandler___block_invoke_261()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1C20AD000, v0, OS_LOG_TYPE_DEFAULT, "Canceling request due to no matching credentials.", v1, 2u);
  }
}

- (id)_noCredentialsFoundErrorForRequestContext:(id)context
{
  v17[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if ([contextCopy isCABLEAuthenticatorRequest])
  {
    v4 = 5;
  }

  else if ([contextCopy isClientLinkedOnOrAfterIOS15Aligned])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = MEMORY[0x1E696ABC0];
  v16 = *MEMORY[0x1E696A588];
  isCABLEAuthenticatorRequest = [contextCopy isCABLEAuthenticatorRequest];
  platformKeyCredentialAssertionOptions = [contextCopy platformKeyCredentialAssertionOptions];
  allowedCredentials = [platformKeyCredentialAssertionOptions allowedCredentials];
  v9 = [allowedCredentials count] != 0;
  relyingPartyIdentifier = [contextCopy relyingPartyIdentifier];
  v11 = noCredentialsErrorString(isCABLEAuthenticatorRequest, v9, relyingPartyIdentifier);
  v17[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v13 = [v5 errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:v4 userInfo:v12];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)_userHasSignInWithAppleAccountForPresentingClientID
{
  p_clientApplicationIdentifier = &self->_clientApplicationIdentifier;
  v3 = [(ASCAgent *)self _bundleIDFromAppID:self->_clientApplicationIdentifier];
  if (v3)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v4 = dispatch_group_create();
    v5 = objc_alloc_init(MEMORY[0x1E698DCE0]);
    dispatch_group_enter(v4);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63__ASCAgent__userHasSignInWithAppleAccountForPresentingClientID__block_invoke;
    v12[3] = &unk_1E815FD00;
    v14 = &v15;
    v6 = v4;
    v13 = v6;
    [v5 getCredentialStateForClientID:v3 completion:v12];
    v7 = dispatch_time(0, 3000000000);
    if (dispatch_group_wait(v6, v7))
    {
      v8 = WBS_LOG_CHANNEL_PREFIXAuthorization();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [ASCAgent _userHasSignInWithAppleAccountForPresentingClientID];
      }
    }

    v9 = *(v16 + 24);

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v10 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(ASCAgent *)p_clientApplicationIdentifier _userHasSignInWithAppleAccountForPresentingClientID];
    }

    v9 = 0;
  }

  return v9 & 1;
}

- (void)presentCABLESheetWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(ASCAuthorizationPresenter);
  requestPresenter = self->_requestPresenter;
  self->_requestPresenter = v5;

  [(ASCAuthorizationPresenterHostProtocol *)self->_requestPresenter setDelegate:self];
  v7 = [ASCAuthorizationPresentationContext alloc];
  requestContext = self->_requestContext;
  clientApplicationIdentifier = self->_clientApplicationIdentifier;
  isClientEntitledWebBrowser = self->_isClientEntitledWebBrowser;
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection auditToken];
  }

  else
  {
    memset(v21, 0, sizeof(v21));
  }

  v12 = [MEMORY[0x1E695DEF0] dataWithBytes:v21 length:32];
  v13 = [(ASCAuthorizationPresentationContext *)v7 initWithRequestContext:requestContext appIdentifier:clientApplicationIdentifier shouldUseRelyingPartyForServiceName:isClientEntitledWebBrowser auditTokenData:v12];

  v14 = [(ASCAgent *)self _cableLoginChoiceForRequestContext:self->_requestContext];
  [(ASCAuthorizationPresentationContext *)v13 addLoginChoice:v14];

  securityKeyCredentialAssertionOptions = [(ASCCredentialRequestContext *)self->_requestContext securityKeyCredentialAssertionOptions];

  if (securityKeyCredentialAssertionOptions)
  {
    initAssertionPlaceholderChoice = [[ASCSecurityKeyPublicKeyCredentialLoginChoice alloc] initAssertionPlaceholderChoice];
    [(ASCAuthorizationPresentationContext *)v13 addLoginChoice:initAssertionPlaceholderChoice];
  }

  v17 = self->_requestPresenter;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __51__ASCAgent_presentCABLESheetWithCompletionHandler___block_invoke;
  v19[3] = &unk_1E815FB00;
  v19[4] = self;
  v20 = handlerCopy;
  v18 = handlerCopy;
  [(ASCAuthorizationPresenterHostProtocol *)v17 presentAuthorizationWithContext:v13 forProcess:0 completionHandler:v19];
}

void __51__ASCAgent_presentCABLESheetWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 184);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __51__ASCAgent_presentCABLESheetWithCompletionHandler___block_invoke_2;
  v17 = &unk_1E815FD28;
  v18 = v5;
  v19 = v6;
  v8 = v6;
  v9 = v5;
  os_activity_apply(v7, &v14);
  [*(*(a1 + 32) + 72) dismiss];
  v10 = *(a1 + 32);
  v11 = *(v10 + 72);
  *(v10 + 72) = 0;

  v12 = *(a1 + 32);
  v13 = *(v12 + 208);
  *(v12 + 208) = 0;

  *(*(a1 + 32) + 200) = 0;
  (*(*(a1 + 40) + 16))(*(a1 + 40), v9 != 0);
}

void __51__ASCAgent_presentCABLESheetWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = [v3 safari_privacyPreservingDescription];
    v8 = 141558530;
    v9 = 1752392040;
    v10 = 2112;
    v11 = v4;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_1C20AD000, v5, OS_LOG_TYPE_DEFAULT, "Completed sheet for AutoFill request: %{mask.hash}@ %{public}@", &v8, 0x20u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)userSelectedLoginChoice:(id)choice authenticatedContext:(id)context completionHandler:(id)handler
{
  choiceCopy = choice;
  contextCopy = context;
  handlerCopy = handler;
  loginChoiceKind = [choiceCopy loginChoiceKind];
  if (loginChoiceKind <= 2)
  {
    if (loginChoiceKind == 1)
    {
      [(ASCAgent *)self _credentialRequestedForPasswordLoginChoice:choiceCopy completionHandler:handlerCopy];
    }

    else if (loginChoiceKind == 2)
    {
      [(ASCAgent *)self _credentialRequestedForPlatformLoginChoice:choiceCopy authenticatedContext:contextCopy completionHandler:handlerCopy];
    }
  }

  else
  {
    switch(loginChoiceKind)
    {
      case 3:
        [(ASCAgent *)self _credentialRequestedForSecurityKeyLoginChoice:choiceCopy];
        break;
      case 4:
        [(ASCAgent *)self _credentialRequestedForCABLELoginChoice:choiceCopy];
        break;
      case 7:
        [(ASCAgent *)self _credentialRequestedForPasskeyAccountRegistrationLoginChoice:choiceCopy authenticatedContext:contextCopy completionHandler:handlerCopy];
        break;
    }
  }
}

- (void)_configureAppleIDCredentialWithContext:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  v8 = objc_alloc_init(MEMORY[0x1E69C8A40]);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __69__ASCAgent__configureAppleIDCredentialWithContext_completionHandler___block_invoke;
  v20[3] = &unk_1E815FD50;
  v9 = handlerCopy;
  v21 = v9;
  [v8 setHandler:v20];
  if ([(ASCAgent *)self _clientHasNecessaryAuthKitEntitlements])
  {
    v10 = [(ASCAgent *)self _bundleIDFromAppID:self->_clientApplicationIdentifier];
    if (v10)
    {
      mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
      authKitAccountRequestingAuthorization = [mEMORY[0x1E698DC80] authKitAccountRequestingAuthorization];

      appleIDAuthorizationRequest = [contextCopy appleIDAuthorizationRequest];
      [appleIDAuthorizationRequest setAuthkitAccount:authKitAccountRequestingAuthorization];

      v14 = objc_alloc_init(MEMORY[0x1E698DCE0]);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __69__ASCAgent__configureAppleIDCredentialWithContext_completionHandler___block_invoke_277;
      v16[3] = &unk_1E815FDA0;
      v16[4] = self;
      v17 = authKitAccountRequestingAuthorization;
      v18 = contextCopy;
      v19 = v8;
      v15 = authKitAccountRequestingAuthorization;
      [v14 getCredentialStateForClientID:v10 completion:v16];
    }

    else
    {
      os_activity_apply(self->_authorizationActivity, &__block_literal_global_275);
    }
  }

  else
  {
    os_activity_apply(self->_authorizationActivity, &__block_literal_global_272);
  }
}

void __69__ASCAgent__configureAppleIDCredentialWithContext_completionHandler___block_invoke_2()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __69__ASCAgent__configureAppleIDCredentialWithContext_completionHandler___block_invoke_2_cold_1();
  }
}

void __69__ASCAgent__configureAppleIDCredentialWithContext_completionHandler___block_invoke_273()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __69__ASCAgent__configureAppleIDCredentialWithContext_completionHandler___block_invoke_273_cold_1();
  }
}

void __69__ASCAgent__configureAppleIDCredentialWithContext_completionHandler___block_invoke_277(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v17 = v2;
    v18 = v3;
    [*(a1 + 32) _performAuthKitAuthorizationValidationForAccount:*(a1 + 40)];
    v5 = objc_alloc_init(MEMORY[0x1E698DD08]);
    v6 = [*(a1 + 48) appleIDAuthorizationRequest];
    v7 = [v6 authkitAccount];
    [v5 setAuthkitAccount:v7];

    v8 = [*(a1 + 32) _bundleIDFromAppID:*(*(a1 + 32) + 64)];
    [v5 setClientID:v8];

    v9 = [*(a1 + 32) _teamIDfromAppID:*(*(a1 + 32) + 64)];
    [v5 setTeamID:v9];

    [v5 setShouldHideCreateOption:1];
    v10 = objc_alloc_init(MEMORY[0x1E698DD58]);
    [v10 setAuthorizationRequest:v5];
    v11 = objc_alloc_init(MEMORY[0x1E698DCE0]);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __69__ASCAgent__configureAppleIDCredentialWithContext_completionHandler___block_invoke_2_280;
    v13[3] = &unk_1E815FD78;
    v14 = *(a1 + 56);
    v15 = v11;
    v16 = *(a1 + 32);
    v12 = v11;
    [v12 getPresentationContextForRequestContext:v10 completion:v13];
  }
}

void __69__ASCAgent__configureAppleIDCredentialWithContext_completionHandler___block_invoke_2_280(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 48) + 184);

    os_activity_apply(v4, &__block_literal_global_282);
  }

  else
  {
    v5 = [a2 loginChoices];
    v6 = *(a1 + 48);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    MEMORY[0x1EEE66BB8]();
  }
}

void __69__ASCAgent__configureAppleIDCredentialWithContext_completionHandler___block_invoke_3()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __69__ASCAgent__configureAppleIDCredentialWithContext_completionHandler___block_invoke_3_cold_1();
  }
}

- (void)clearAllPlatformPublicKeyCredentialsWithCompletionHandler:(id)handler
{
  publicKeyCredentialManager = self->_publicKeyCredentialManager;
  handlerCopy = handler;
  [(ASPublicKeyCredentialManagerInterface *)publicKeyCredentialManager clearAllCredentials];
  handlerCopy[2]();
}

- (void)getShouldUseAlternateCredentialStoreWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  (*(handler + 2))(handlerCopy, +[ASCWebKitSPISupport shouldUseAlternateCredentialStore]);
}

- (void)getArePasskeysDisallowedForRelyingParty:(id)party withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  partyCopy = party;
  v9 = +[ASFeatureManager sharedManager];
  v8 = [v9 arePasskeysDisallowedForRelyingParty:partyCopy];

  (*(handler + 2))(handlerCopy, v8);
}

- (void)openCABLEURL:(id)l fromSourceApplication:(id)application withCompletionHandler:(id)handler
{
  v38[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  applicationCopy = application;
  handlerCopy = handler;
  authorizationActivity = self->_authorizationActivity;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__ASCAgent_openCABLEURL_fromSourceApplication_withCompletionHandler___block_invoke;
  block[3] = &unk_1E815FD28;
  v12 = lCopy;
  v33 = v12;
  v13 = applicationCopy;
  v34 = v13;
  os_activity_apply(authorizationActivity, block);
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v15 = currentConnection;
  if (currentConnection)
  {
    [currentConnection auditToken];
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  HasEntitlement = WBSAuditTokenHasEntitlement();

  if ((HasEntitlement & 1) == 0)
  {
    os_activity_apply(self->_authorizationActivity, &__block_literal_global_286);
    v20 = MEMORY[0x1E696ABC0];
    v37 = *MEMORY[0x1E696A588];
    v38[0] = @"Client is missing required entitlement";
    v21 = MEMORY[0x1E695DF20];
    v22 = v38;
    v23 = &v37;
LABEL_9:
    v19 = [v21 dictionaryWithObjects:v22 forKeys:v23 count:1];
    v24 = [v20 errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:v19];
    handlerCopy[2](handlerCopy, v24);

    goto LABEL_10;
  }

  if (!v12)
  {
    v20 = MEMORY[0x1E696ABC0];
    v35 = *MEMORY[0x1E696A588];
    v36 = @"Invalid request: missing caBLE URL";
    v21 = MEMORY[0x1E695DF20];
    v22 = &v36;
    v23 = &v35;
    goto LABEL_9;
  }

  authorizationTrafficController = self->_authorizationTrafficController;
  authorizationTrafficControllerToken = self->_authorizationTrafficControllerToken;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __69__ASCAgent_openCABLEURL_fromSourceApplication_withCompletionHandler___block_invoke_293;
  v26[3] = &unk_1E815FDC8;
  v29 = handlerCopy;
  v26[4] = self;
  v27 = v12;
  v28 = v13;
  [(ASCAuthorizationTrafficController *)authorizationTrafficController beginAuthorizationForApplicationIdentifier:@"com.apple.AuthenticationServicesCore.caBLEAuthenticator" token:authorizationTrafficControllerToken withClearanceHandler:v26];

  v19 = v29;
LABEL_10:

  v25 = *MEMORY[0x1E69E9840];
}

void __69__ASCAgent_openCABLEURL_fromSourceApplication_withCompletionHandler___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138478083;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1C20AD000, v2, OS_LOG_TYPE_DEFAULT, "Open caBLE URL: %{private}@, sourceApplication: %@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __69__ASCAgent_openCABLEURL_fromSourceApplication_withCompletionHandler___block_invoke_284()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __69__ASCAgent_openCABLEURL_fromSourceApplication_withCompletionHandler___block_invoke_284_cold_1();
  }
}

void __69__ASCAgent_openCABLEURL_fromSourceApplication_withCompletionHandler___block_invoke_293(uint64_t a1, char a2, void *a3)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    objc_storeStrong((*(a1 + 32) + 216), *(a1 + 40));
    v7 = objc_alloc_init(ASCAuthorizationPresenter);
    v8 = *(a1 + 32);
    v9 = *(v8 + 72);
    *(v8 + 72) = v7;

    [*(*(a1 + 32) + 72) setDelegate:?];
    v10 = [ASCAuthorizationPresentationContext alloc];
    v11 = *(*(a1 + 32) + 216);
    v12 = *(a1 + 48);
    if (v12)
    {
      if (shouldRequireCABLEAuthenticatorConsentForSourceApplication_onceToken != -1)
      {
        __69__ASCAgent_openCABLEURL_fromSourceApplication_withCompletionHandler___block_invoke_293_cold_1();
      }

      v13 = [shouldRequireCABLEAuthenticatorConsentForSourceApplication_systemScannerApplications containsObject:v12] ^ 1;
    }

    else
    {
      v13 = 1;
    }

    v15 = -[ASCAuthorizationPresentationContext _initWithCABLEAuthenticatorURL:shouldRequireConsent:passkeyURLType:](v10, "_initWithCABLEAuthenticatorURL:shouldRequireConsent:passkeyURLType:", v11, v13, [*(*(a1 + 32) + 216) as_passkeyURLType]);
    v16 = *(a1 + 32);
    v17 = *(v16 + 72);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __69__ASCAgent_openCABLEURL_fromSourceApplication_withCompletionHandler___block_invoke_2;
    v22[3] = &unk_1E815FB00;
    v22[4] = v16;
    v23 = *(a1 + 56);
    [v17 presentAuthorizationWithContext:v15 forProcess:0 completionHandler:v22];
  }

  else
  {
    v14 = *(a1 + 56);
    if (v5)
    {
      (*(v14 + 16))(v14, v5);
    }

    else
    {
      v18 = MEMORY[0x1E696ABC0];
      v24 = *MEMORY[0x1E696A588];
      v25[0] = @"Traffic controller denied request.";
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      v20 = [v18 errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:0 userInfo:v19];
      (*(v14 + 16))(v14, v20);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __69__ASCAgent_openCABLEURL_fromSourceApplication_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 184);
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __69__ASCAgent_openCABLEURL_fromSourceApplication_withCompletionHandler___block_invoke_3;
  v21 = &unk_1E815FD28;
  v22 = v5;
  v23 = v6;
  v8 = v6;
  v9 = v5;
  os_activity_apply(v7, &v18);
  [*(*(a1 + 32) + 224) finishTransactionWithCredential:v9 error:{v8, v18, v19, v20, v21}];
  v10 = *(a1 + 32);
  v11 = *(v10 + 224);
  *(v10 + 224) = 0;

  v12 = *(a1 + 32);
  v13 = *(v12 + 104);
  v14 = *(v12 + 176);
  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:12 userInfo:0];
  [v13 cancelOperationIfNecessaryWithUUID:v14 overrideError:v15];

  v16 = *(a1 + 32);
  v17 = *(v16 + 176);
  *(v16 + 176) = 0;

  [*(*(a1 + 32) + 8) endAuthorizationForAppIdentifier:@"com.apple.AuthenticationServicesCore.caBLEAuthenticator" token:*(*(a1 + 32) + 16) clearanceHandler:&__block_literal_global_299];
  (*(*(a1 + 40) + 16))();
}

void __69__ASCAgent_openCABLEURL_fromSourceApplication_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = @"success";
    }

    else
    {
      v4 = [*(a1 + 40) safari_privacyPreservingDescription];
    }

    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_1C20AD000, v2, OS_LOG_TYPE_DEFAULT, "Finishing caBLE transaction: %{public}@", &v6, 0xCu);
    if (!v3)
    {
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)browserPasskeysForRelyingParty:(id)party testOptions:(id)options completionHandler:(id)handler
{
  partyCopy = party;
  optionsCopy = options;
  handlerCopy = handler;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  if (![ASCAgent isClientEntitledWebBrowserWithConnection:currentConnection testOptions:optionsCopy])
  {
    authorizationActivity = self->_authorizationActivity;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__ASCAgent_browserPasskeysForRelyingParty_testOptions_completionHandler___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a2;
    os_activity_apply(authorizationActivity, block);
LABEL_9:
    handlerCopy[2](handlerCopy, MEMORY[0x1E695E0F0]);
    goto LABEL_10;
  }

  v13 = [ASCAgent isClientTCCAuthorizedWebBrowserWithConnection:currentConnection testOptions:optionsCopy];
  v14 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  v15 = v14;
  if (!v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ASCAgent browserPasskeysForRelyingParty:testOptions:completionHandler:];
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *v18 = 0;
    _os_log_impl(&dword_1C20AD000, v15, OS_LOG_TYPE_INFO, "TCC access granted for browser passkey request.", v18, 2u);
  }

  v16 = [(ASPublicKeyCredentialManagerInterface *)self->_publicKeyCredentialManager browserPasskeysForRelyingParty:partyCopy testOptions:optionsCopy];
  (handlerCopy)[2](handlerCopy, v16);

LABEL_10:
}

void __73__ASCAgent_browserPasskeysForRelyingParty_testOptions_completionHandler___block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    __73__ASCAgent_browserPasskeysForRelyingParty_testOptions_completionHandler___block_invoke_cold_1(a1, v2);
  }
}

- (BOOL)isDeviceConfiguredForPasskeysWithTestOptions:(id)options
{
  v5 = MEMORY[0x1E696B0B8];
  optionsCopy = options;
  currentConnection = [v5 currentConnection];
  v8 = [ASCAgent isClientEntitledWebBrowserWithConnection:currentConnection testOptions:optionsCopy];

  if (v8)
  {
    mEMORY[0x1E69C8DB8] = [MEMORY[0x1E69C8DB8] sharedFeatureManager];
    userIsEligibleForPasskeys = [mEMORY[0x1E69C8DB8] userIsEligibleForPasskeys];
  }

  else
  {
    authorizationActivity = self->_authorizationActivity;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__ASCAgent_isDeviceConfiguredForPasskeysWithTestOptions___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a2;
    os_activity_apply(authorizationActivity, block);
    userIsEligibleForPasskeys = 0;
  }

  return userIsEligibleForPasskeys;
}

void __57__ASCAgent_isDeviceConfiguredForPasskeysWithTestOptions___block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    __73__ASCAgent_browserPasskeysForRelyingParty_testOptions_completionHandler___block_invoke_cold_1(a1, v2);
  }
}

- (void)getCanCurrentProcessAccessPasskeysForRelyingParty:(id)party withCompletionHandler:(id)handler
{
  partyCopy = party;
  handlerCopy = handler;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v9 = currentConnection;
  if (currentConnection)
  {
    [currentConnection auditToken];
  }

  v10 = WBSApplicationIdentifierFromAuditToken();
  mEMORY[0x1E69C88B8] = [MEMORY[0x1E69C88B8] sharedMonitor];
  canKeychainSyncBeEnabled = [mEMORY[0x1E69C88B8] canKeychainSyncBeEnabled];

  if (canKeychainSyncBeEnabled)
  {
    v13 = self->_isClientEntitledWebBrowser || [(ASCAgent *)self _approvalStateForApplicationIdentifier:v10 relyingParty:partyCopy]== 1;
  }

  else
  {
    v14 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ASCAgent getCanCurrentProcessAccessPasskeysForRelyingParty:withCompletionHandler:];
    }

    v13 = 0;
  }

  handlerCopy[2](handlerCopy, v13);
}

- (void)_configurePasswordCredentialsWithTestOptions:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __75__ASCAgent__configurePasswordCredentialsWithTestOptions_completionHandler___block_invoke;
  v20 = &unk_1E815FE10;
  selfCopy = self;
  v7 = handlerCopy;
  v22 = v7;
  optionsCopy = options;
  v9 = _Block_copy(&v17);
  v10 = [(ASCCredentialRequestContext *)self->_requestContext proxiedAssociatedDomains:v17];
  v11 = MEMORY[0x1E69C8E18];
  if (v10)
  {
    passwordManagerTestOptions = [optionsCopy passwordManagerTestOptions];

    v13 = v11;
    v14 = 0;
    v15 = v10;
  }

  else
  {
    clientApplicationIdentifier = self->_clientApplicationIdentifier;
    passwordManagerTestOptions = [optionsCopy passwordManagerTestOptions];

    v13 = v11;
    v14 = clientApplicationIdentifier;
    v15 = 0;
  }

  [v13 getCredentialsForAppWithAppID:v14 frameIdentifier:0 externallyVerifiedAndApprovedSharedWebCredentialDomains:v15 websiteURL:0 testOptions:passwordManagerTestOptions completionHandler:v9];
}

uint64_t __75__ASCAgent__configurePasswordCredentialsWithTestOptions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 safari_filterObjectsUsingBlock:&__block_literal_global_304];
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = v3;

  v6 = *(*(a1 + 40) + 16);

  return v6();
}

- (void)_configurePublicKeyCredentialsWithAssertionOptions:(id)options forProcessWithApplicationIdentifier:(id)identifier requestStyle:(int64_t)style testOptions:(id)testOptions completionHandler:(id)handler
{
  testOptionsCopy = testOptions;
  identifierCopy = identifier;
  optionsCopy = options;
  v15 = _Block_copy(handler);
  didLoadPlatformCredentialsCallback = self->_didLoadPlatformCredentialsCallback;
  self->_didLoadPlatformCredentialsCallback = v15;

  publicKeyCredentialManager = self->_publicKeyCredentialManager;
  globalFrameID = [(ASCCredentialRequestContext *)self->_requestContext globalFrameID];
  v18 = [(ASPublicKeyCredentialManagerInterface *)publicKeyCredentialManager beginAssertionsWithOptions:optionsCopy forProcessWithApplicationIdentifier:identifierCopy delegate:self requestStyle:style webFrameIdentifier:globalFrameID parentActivity:self->_authorizationActivity testOptions:testOptionsCopy];

  publicKeyCredentialOperationUUID = self->_publicKeyCredentialOperationUUID;
  self->_publicKeyCredentialOperationUUID = v18;
}

- (void)_configureLoginChoicesForPresentationContext:(id)context withRequestContext:(id)requestContext
{
  contextCopy = context;
  v7 = [(ASCAgent *)self _allAvailableLoginChoicesForRequestContext:requestContext];
  [contextCopy updateLoginChoices:v7];
}

- (id)_allAvailableLoginChoicesForRequestContext:(id)context
{
  v159 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  array = [MEMORY[0x1E695DF70] array];
  LOWORD(getEnabledExtensionsSynchronously) = [contextCopy requestTypes];
  v112 = getEnabledExtensionsSynchronously;
  v113 = contextCopy;
  selfCopy = self;
  if ((getEnabledExtensionsSynchronously & 2) != 0 && self->_existingAppleIDCredentialAvailableForLogIn)
  {
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v7 = self->_appleIDChoices;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v144 objects:v158 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v145;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v145 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [[ASCAppleIDLoginChoice alloc] initWithAppleIDLoginChoice:*(*(&v144 + 1) + 8 * i)];
          [array addObject:v12];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v144 objects:v158 count:16];
      }

      while (v9);
    }

    LOWORD(getEnabledExtensionsSynchronously) = v112;
    contextCopy = v113;
    self = selfCopy;
  }

  v118 = array;
  if (getEnabledExtensionsSynchronously)
  {
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    obj = self->_passwordCredentials;
    v13 = [(NSArray *)obj countByEnumeratingWithState:&v140 objects:v157 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v141;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v141 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v140 + 1) + 8 * j);
          if ([v17 isExternal])
          {
            externalCredential = [v17 externalCredential];
          }

          else
          {
            externalCredential = 0;
          }

          v19 = [ASCPasswordLoginChoice alloc];
          user = [v17 user];
          site = [v17 site];
          customTitle = [v17 customTitle];
          groupName = [v17 groupName];
          v24 = [(ASCPasswordLoginChoice *)v19 initWithUsername:user site:site externalCredentialIdentity:externalCredential customTitle:customTitle groupName:groupName];

          [v118 addObject:v24];
        }

        v14 = [(NSArray *)obj countByEnumeratingWithState:&v140 objects:v157 count:16];
      }

      while (v14);
    }

    LOWORD(getEnabledExtensionsSynchronously) = v112;
    contextCopy = v113;
    self = selfCopy;
    array = v118;
  }

  obja = [(ASCAgent *)self _allowedAuthenticatorModalitiesForRequestContext:contextCopy];
  if ((getEnabledExtensionsSynchronously & 4) != 0 && (obja & 8) != 0)
  {
    if ([(NSArray *)self->_test_overrideExtensionStates count])
    {
      v138 = 0uLL;
      v139 = 0uLL;
      v136 = 0uLL;
      v137 = 0uLL;
      getEnabledExtensionsSynchronously = self->_test_overrideExtensionStates;
      v25 = [(NSArray *)getEnabledExtensionsSynchronously countByEnumeratingWithState:&v136 objects:v156 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v137;
        do
        {
          for (k = 0; k != v26; ++k)
          {
            if (*v137 != v27)
            {
              objc_enumerationMutation(getEnabledExtensionsSynchronously);
            }

            v29 = *(*(&v136 + 1) + 8 * k);
            platformKeyCredentialCreationOptions = [contextCopy platformKeyCredentialCreationOptions];
            [(ASPublicKeyCredentialManagerInterface *)selfCopy->_publicKeyCredentialManager computeClientDataIfNeededForCreationOptions:platformKeyCredentialCreationOptions];
            localizedDisplayName = [v29 localizedDisplayName];
            v32 = [ASCPlatformPublicKeyCredentialLoginChoice alloc];
            providerBundleID = [v29 providerBundleID];
            v34 = [(ASCPlatformPublicKeyCredentialLoginChoice *)v32 initRegistrationChoiceWithOptions:platformKeyCredentialCreationOptions externalCredentialProviderName:localizedDisplayName externalCredentialProviderBundleID:providerBundleID];
            [v118 addObject:v34];
          }

          v26 = [(NSArray *)getEnabledExtensionsSynchronously countByEnumeratingWithState:&v136 objects:v156 count:16];
        }

        while (v26);
LABEL_43:
        self = selfCopy;
        array = v118;
      }
    }

    else
    {
      v134 = 0uLL;
      v135 = 0uLL;
      v132 = 0uLL;
      v133 = 0uLL;
      v35 = 0x1E69C8000uLL;
      mEMORY[0x1E69C8DE0] = [MEMORY[0x1E69C8DE0] sharedManager];
      getEnabledExtensionsSynchronously = [mEMORY[0x1E69C8DE0] getEnabledExtensionsSynchronously];

      v37 = [(NSArray *)getEnabledExtensionsSynchronously countByEnumeratingWithState:&v132 objects:v155 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v133;
        do
        {
          v40 = 0;
          v114 = v38;
          do
          {
            if (*v133 != v39)
            {
              objc_enumerationMutation(getEnabledExtensionsSynchronously);
            }

            v41 = *(*(&v132 + 1) + 8 * v40);
            sharedManager = [*(v35 + 3552) sharedManager];
            v43 = [sharedManager extensionSupportsPasskeys:v41];

            if (v43)
            {
              platformKeyCredentialCreationOptions2 = [contextCopy platformKeyCredentialCreationOptions];
              [(ASPublicKeyCredentialManagerInterface *)selfCopy->_publicKeyCredentialManager computeClientDataIfNeededForCreationOptions:platformKeyCredentialCreationOptions2];
              v45 = objc_alloc(MEMORY[0x1E69635F8]);
              sf_bundleIdentifierForContainingApp = [v41 sf_bundleIdentifierForContainingApp];
              v47 = [v45 initWithBundleIdentifier:sf_bundleIdentifierForContainingApp allowPlaceholder:0 error:0];
              [v47 localizedName];
              v48 = v39;
              v49 = getEnabledExtensionsSynchronously;
              v50 = contextCopy;
              v52 = v51 = v35;

              v53 = [ASCPlatformPublicKeyCredentialLoginChoice alloc];
              sf_bundleIdentifierForContainingApp2 = [v41 sf_bundleIdentifierForContainingApp];
              v55 = [(ASCPlatformPublicKeyCredentialLoginChoice *)v53 initRegistrationChoiceWithOptions:platformKeyCredentialCreationOptions2 externalCredentialProviderName:v52 externalCredentialProviderBundleID:sf_bundleIdentifierForContainingApp2];
              [v118 addObject:v55];

              v35 = v51;
              contextCopy = v50;
              getEnabledExtensionsSynchronously = v49;
              v39 = v48;
              v38 = v114;
            }

            ++v40;
          }

          while (v38 != v40);
          v38 = [(NSArray *)getEnabledExtensionsSynchronously countByEnumeratingWithState:&v132 objects:v155 count:16];
        }

        while (v38);
        goto LABEL_43;
      }
    }

    LOWORD(getEnabledExtensionsSynchronously) = v112;
  }

  if (getEnabledExtensionsSynchronously & 4) != 0 && (obja)
  {
    v56 = [ASCPlatformPublicKeyCredentialLoginChoice alloc];
    platformKeyCredentialCreationOptions3 = [contextCopy platformKeyCredentialCreationOptions];
    v58 = [(ASCPlatformPublicKeyCredentialLoginChoice *)v56 initRegistrationChoiceWithOptions:platformKeyCredentialCreationOptions3];
    [array addObject:v58];
  }

  if ((getEnabledExtensionsSynchronously & 8) != 0)
  {
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    getEnabledExtensionsSynchronously = self->_platformLoginChoices;
    v59 = [(NSArray *)getEnabledExtensionsSynchronously countByEnumeratingWithState:&v128 objects:v154 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v129;
      do
      {
        for (m = 0; m != v60; ++m)
        {
          if (*v129 != v61)
          {
            objc_enumerationMutation(getEnabledExtensionsSynchronously);
          }

          v63 = *(*(&v128 + 1) + 8 * m);
          externalCredentialProviderName = [v63 externalCredentialProviderName];
          if (externalCredentialProviderName)
          {
            v65 = (obja & 8) != 0;
          }

          else
          {
            v65 = 0;
          }

          relyingPartyIdentifier = [v63 relyingPartyIdentifier];
          v67 = [relyingPartyIdentifier isEqualToString:@"apple.com"];

          externalCredentialProviderName2 = [v63 externalCredentialProviderName];
          v69 = externalCredentialProviderName2 == 0;

          if (v65 || (v67 & 1) != 0 || (v69 & obja) != 0)
          {
            [v118 addObject:v63];
          }
        }

        v60 = [(NSArray *)getEnabledExtensionsSynchronously countByEnumeratingWithState:&v128 objects:v154 count:16];
      }

      while (v60);
    }

    LOWORD(getEnabledExtensionsSynchronously) = v112;
    contextCopy = v113;
    self = selfCopy;
    array = v118;
  }

  if ((getEnabledExtensionsSynchronously & 0x10) != 0 && (obja & 4) != 0)
  {
    v70 = [ASCSecurityKeyPublicKeyCredentialLoginChoice alloc];
    securityKeyCredentialCreationOptions = [contextCopy securityKeyCredentialCreationOptions];
    v72 = [(ASCSecurityKeyPublicKeyCredentialLoginChoice *)v70 initRegistrationChoiceWithOptions:securityKeyCredentialCreationOptions];
    [array addObject:v72];
  }

  if ((getEnabledExtensionsSynchronously & 0x20) != 0 && (obja & 4) != 0)
  {
    if (![(NSArray *)self->_securityKeyLoginChoices count])
    {
      initAssertionPlaceholderChoice = [[ASCSecurityKeyPublicKeyCredentialLoginChoice alloc] initAssertionPlaceholderChoice];
      [array addObject:initAssertionPlaceholderChoice];

      if ((getEnabledExtensionsSynchronously & 0x200) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_72;
    }

    [array addObjectsFromArray:self->_securityKeyLoginChoices];
  }

  if ((getEnabledExtensionsSynchronously & 0x200) != 0)
  {
LABEL_72:
    getEnabledExtensionsSynchronously = [(ASCAgent *)self _bundleIDFromAppID:self->_clientApplicationIdentifier];
    v73 = [_TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice alloc];
    platformAccountRegistrationOptions = [contextCopy platformAccountRegistrationOptions];
    v75 = [(ASCPasskeyAccountRegistrationLoginChoice *)v73 initWithOptions:platformAccountRegistrationOptions clientApplicationBundleID:getEnabledExtensionsSynchronously userHasSignInWithAppleAccountForService:[(ASCAgent *)self _userHasSignInWithAppleAccountForPresentingClientID]];

    publicKeyCredentialManager = self->_publicKeyCredentialManager;
    publicKeyCredentialCreationOptions = [(ASCPasskeyAccountRegistrationLoginChoice *)v75 publicKeyCredentialCreationOptions];
    [(ASPublicKeyCredentialManagerInterface *)publicKeyCredentialManager computeClientDataIfNeededForCreationOptions:publicKeyCredentialCreationOptions];

    publicKeyCredentialCreationOptions2 = [(ASCPasskeyAccountRegistrationLoginChoice *)v75 publicKeyCredentialCreationOptions];
    [(ASCCredentialRequestContext *)self->_requestContext setPlatformKeyCredentialCreationOptions:publicKeyCredentialCreationOptions2];

    [array addObject:v75];
    LOBYTE(getEnabledExtensionsSynchronously) = v112;
  }

LABEL_73:
  if ((obja & 2) != 0)
  {
    v79 = [(ASCAgent *)self _cableLoginChoiceForRequestContext:contextCopy];
    [array addObject:v79];
  }

  if ((getEnabledExtensionsSynchronously & 8) != 0)
  {
    v80 = +[ASFeatureManager sharedManager];
    relyingPartyIdentifier2 = [contextCopy relyingPartyIdentifier];
    v82 = [v80 shouldUseFallbackUIForRelyingParty:relyingPartyIdentifier2];

    contextCopy = v113;
    if (getEnabledExtensionsSynchronously & 9) == 0 || (v82)
    {
      goto LABEL_100;
    }
  }

  else if ((getEnabledExtensionsSynchronously & 9) == 0)
  {
    goto LABEL_100;
  }

  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  mEMORY[0x1E69C8DE0]2 = [MEMORY[0x1E69C8DE0] sharedManager];
  getEnabledExtensionsSynchronously2 = [mEMORY[0x1E69C8DE0]2 getEnabledExtensionsSynchronously];

  v85 = [getEnabledExtensionsSynchronously2 countByEnumeratingWithState:&v124 objects:v153 count:16];
  if (!v85)
  {
    goto LABEL_92;
  }

  v86 = v85;
  v87 = *v125;
  do
  {
    for (n = 0; n != v86; ++n)
    {
      if (*v125 != v87)
      {
        objc_enumerationMutation(getEnabledExtensionsSynchronously2);
      }

      v89 = *(*(&v124 + 1) + 8 * n);
      v90 = objc_alloc(MEMORY[0x1E69635F8]);
      sf_bundleIdentifierForContainingApp3 = [v89 sf_bundleIdentifierForContainingApp];
      v123 = 0;
      v92 = [v90 initWithBundleIdentifier:sf_bundleIdentifierForContainingApp3 allowPlaceholder:0 error:&v123];
      v93 = v123;
      localizedName = [v92 localizedName];

      if (v93)
      {
        v95 = WBS_LOG_CHANNEL_PREFIXAuthorization();
        if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_90;
        }

        v96 = v95;
        sf_bundleIdentifierForContainingApp4 = [v89 sf_bundleIdentifierForContainingApp];
        *buf = 138543618;
        v150 = sf_bundleIdentifierForContainingApp4;
        v151 = 2112;
        v152 = v93;
        _os_log_error_impl(&dword_1C20AD000, v96, OS_LOG_TYPE_ERROR, "failed to get LSApplicationRecord for app with bundle ID %{public}@: %@", buf, 0x16u);
      }

      else
      {
        v98 = [ASCCredentialProviderExtensionLoginChoice alloc];
        sf_bundleIdentifierForContainingApp4 = [v89 identifier];
        sf_bundleIdentifierForContainingApp5 = [v89 sf_bundleIdentifierForContainingApp];
        v100 = [(ASCCredentialProviderExtensionLoginChoice *)v98 initWithProviderName:localizedName providerBundleID:sf_bundleIdentifierForContainingApp4 providerExtensionContainingAppBundleID:sf_bundleIdentifierForContainingApp5];
        [v118 addObject:v100];
      }

LABEL_90:
    }

    v86 = [getEnabledExtensionsSynchronously2 countByEnumeratingWithState:&v124 objects:v153 count:16];
  }

  while (v86);
LABEL_92:

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v101 = selfCopy->_test_credentialProviderExtensionLoginChoices;
  v102 = [(NSMutableArray *)v101 countByEnumeratingWithState:&v119 objects:v148 count:16];
  contextCopy = v113;
  array = v118;
  if (v102)
  {
    v103 = v102;
    v104 = *v120;
    do
    {
      for (ii = 0; ii != v103; ++ii)
      {
        if (*v120 != v104)
        {
          objc_enumerationMutation(v101);
        }

        [v118 addObject:*(*(&v119 + 1) + 8 * ii)];
      }

      v103 = [(NSMutableArray *)v101 countByEnumeratingWithState:&v119 objects:v148 count:16];
    }

    while (v103);
  }

LABEL_100:
  if (([contextCopy requestOptions] & 1) != 0 && (objc_msgSend(array, "safari_filterObjectsUsingBlock:", &__block_literal_global_316), v106 = objc_claimAutoreleasedReturnValue(), v107 = objc_msgSend(v106, "count"), v106, !v107))
  {
    v108 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v108 = array;
  }

  v109 = *MEMORY[0x1E69E9840];

  return v108;
}

uint64_t __55__ASCAgent__allAvailableLoginChoicesForRequestContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 loginChoiceKind];
  if (v3 > 2)
  {
    if (v3 != 3)
    {
      v5 = v3 == 7;
      goto LABEL_9;
    }

LABEL_8:
    v5 = 1;
    goto LABEL_9;
  }

  if (v3 < 2)
  {
    goto LABEL_8;
  }

  if (v3 != 2)
  {
    v5 = 0;
    goto LABEL_9;
  }

  if ([v2 isExternal])
  {
    goto LABEL_8;
  }

  v4 = [MEMORY[0x1E69C8DB8] sharedFeatureManager];
  v5 = [v4 shouldAutoFillPasswordsFromKeychain];

LABEL_9:
  return v5;
}

- (unint64_t)_allowedAuthenticatorModalitiesForRequestContext:(id)context
{
  contextCopy = context;
  mEMORY[0x1E69C8DE0] = [MEMORY[0x1E69C8DE0] sharedManager];
  atLeastOneEnabledExtensionSupportsPasskeys = [mEMORY[0x1E69C8DE0] atLeastOneEnabledExtensionSupportsPasskeys];

  if (atLeastOneEnabledExtensionSupportsPasskeys)
  {
    mEMORY[0x1E69C8DB8] = [MEMORY[0x1E69C8DB8] sharedFeatureManager];
    shouldAutoFillPasswordsFromKeychain = [mEMORY[0x1E69C8DB8] shouldAutoFillPasswordsFromKeychain];

    v9 = shouldAutoFillPasswordsFromKeychain;
  }

  else
  {
    v9 = 1;
  }

  requestTypes = [contextCopy requestTypes];
  if ((requestTypes & 4) != 0)
  {
    platformKeyCredentialCreationOptions = [contextCopy platformKeyCredentialCreationOptions];
    attestationPreference = [platformKeyCredentialCreationOptions attestationPreference];
    v14 = [attestationPreference isEqualToString:@"enterprise"];

    v15 = 8;
    if (v14)
    {
      v15 = 0;
    }

    if (!atLeastOneEnabledExtensionSupportsPasskeys)
    {
      v15 = 0;
    }

    v11 = v15 | v9;
  }

  else
  {
    v11 = 0;
  }

  v16 = v11 | (requestTypes >> 2) & 4;
  if ((requestTypes & 0x28) == 0)
  {
    goto LABEL_33;
  }

  v17 = [(ASCAgent *)self _allTransportsForAssertionRequest:contextCopy];
  v18 = [(ASCAgent *)self _allowListExclusivelyMatchesPlatformLoginChoices:contextCopy];
  if ([v17 count])
  {
    selfCopy = self;
    v19 = [MEMORY[0x1E695DFD8] setWithObjects:{@"usb", @"nfc", @"ble", 0}];
    v36 = [v17 isSubsetOfSet:v19];
    v35 = [v17 intersectsSet:v19] ^ 1;
    v20 = +[ASCPublicKeyCredentialDescriptor cableTransports];
    v37 = v9;
    v21 = v18;
    v22 = atLeastOneEnabledExtensionSupportsPasskeys;
    v23 = [v17 isSubsetOfSet:v20];

    v24 = [MEMORY[0x1E695DFD8] setWithObject:@"internal"];
    v25 = [v17 isEqualToSet:v24];

    self = selfCopy;
    v26 = v35;
    v27 = v36 | v23;
    atLeastOneEnabledExtensionSupportsPasskeys = v22;
    v18 = v21;
    v9 = v37;
    if (v27)
    {
      v9 = 0;
    }
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v28 = v16 | 8;
  if (!atLeastOneEnabledExtensionSupportsPasskeys)
  {
    v28 = v16;
  }

  v29 = v28 | v9;
  if ((requestTypes & 8) == 0)
  {
    v29 = v16;
  }

  v16 = ((requestTypes & 0x20) == 0) | ((v18 | v26) & 1) ? v29 : v29 | 4;

  if (((v18 | v25) & 1) == 0)
  {
LABEL_33:
    if ([(ASCAgent *)self _shouldAddCABLEChoiceForRequestContext:contextCopy])
    {
      v16 |= 2uLL;
    }
  }

  v30 = +[ASFeatureManager sharedManager];
  relyingPartyIdentifier = [contextCopy relyingPartyIdentifier];
  v32 = [v30 shouldUseFallbackUIForRelyingParty:relyingPartyIdentifier];

  if (v32)
  {
    v33 = v16 & 0xFFFFFFFFFFFFFFF7;
  }

  else
  {
    v33 = v16;
  }

  return v33;
}

- (BOOL)_allowListExclusivelyMatchesPlatformLoginChoices:(id)choices
{
  v4 = MEMORY[0x1E695DFA8];
  choicesCopy = choices;
  platformKeyCredentialAssertionOptions = [choicesCopy platformKeyCredentialAssertionOptions];
  allowedCredentials = [platformKeyCredentialAssertionOptions allowedCredentials];
  v8 = [v4 setWithArray:allowedCredentials];

  securityKeyCredentialAssertionOptions = [choicesCopy securityKeyCredentialAssertionOptions];

  allowedCredentials2 = [securityKeyCredentialAssertionOptions allowedCredentials];
  [v8 addObjectsFromArray:allowedCredentials2];

  if ([v8 count] && (v11 = objc_msgSend(v8, "count"), v11 <= -[NSArray count](self->_platformLoginChoices, "count")))
  {
    v13 = [v8 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_334];
    v14 = MEMORY[0x1E695DFD8];
    v15 = [(NSArray *)self->_platformLoginChoices safari_mapObjectsUsingBlock:&__block_literal_global_337];
    v16 = [v14 setWithArray:v15];

    v12 = [v13 isSubsetOfSet:v16];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id __61__ASCAgent__allowListExclusivelyMatchesPlatformLoginChoices___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 credentialID];
  v3 = [v2 base64EncodedStringWithOptions:0];

  return v3;
}

id __61__ASCAgent__allowListExclusivelyMatchesPlatformLoginChoices___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 credentialID];

  return v3;
}

- (id)_allTransportsForAssertionRequest:(id)request
{
  v35 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  requestTypes = [requestCopy requestTypes];
  v5 = [MEMORY[0x1E695DFA8] set];
  if ((requestTypes & 8) != 0)
  {
    platformKeyCredentialAssertionOptions = [requestCopy platformKeyCredentialAssertionOptions];
    allowedCredentials = [platformKeyCredentialAssertionOptions allowedCredentials];

    if (![allowedCredentials count])
    {
LABEL_25:

      goto LABEL_28;
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    allowedCredentials = allowedCredentials;
    v9 = [allowedCredentials countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v30;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(allowedCredentials);
          }

          transports = [*(*(&v29 + 1) + 8 * i) transports];
          if (!transports)
          {

            goto LABEL_25;
          }

          v14 = transports;
          [v5 addObjectsFromArray:transports];
        }

        v10 = [allowedCredentials countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    if ((requestTypes & 0x20) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((requestTypes & 0x20) == 0)
  {
LABEL_3:
    v6 = v5;
    goto LABEL_29;
  }

  securityKeyCredentialAssertionOptions = [requestCopy securityKeyCredentialAssertionOptions];
  allowedCredentials2 = [securityKeyCredentialAssertionOptions allowedCredentials];

  if ([allowedCredentials2 count])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    allowedCredentials2 = allowedCredentials2;
    v17 = [allowedCredentials2 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      while (2)
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(allowedCredentials2);
          }

          transports2 = [*(*(&v25 + 1) + 8 * j) transports];
          if (!transports2)
          {

            goto LABEL_27;
          }

          v22 = transports2;
          [v5 addObjectsFromArray:transports2];
        }

        v18 = [allowedCredentials2 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_3;
  }

LABEL_27:

LABEL_28:
  v6 = 0;
LABEL_29:

  v23 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_cableLoginChoiceForRequestContext:(id)context
{
  if (!self->_cableClient)
  {
    v4 = -[ASCABLEClient initWithDelegate:isRegistrationRequest:]([_TtC26AuthenticationServicesCore13ASCABLEClient alloc], "initWithDelegate:isRegistrationRequest:", self, ([context requestTypes] & 0x14) != 0);
    cableClient = self->_cableClient;
    self->_cableClient = v4;
  }

  v6 = [ASCABLELoginChoice alloc];
  qrCodeURL = [(ASCABLEClient *)self->_cableClient qrCodeURL];
  v8 = [(ASCABLELoginChoice *)v6 initWithQRCodeURL:qrCodeURL];

  return v8;
}

- (void)_presentAuthorizationRequestWithContext:(id)context implicitlySelectedLoginChoice:(id)choice forProcess:(id)process completionHandler:(id)handler
{
  contextCopy = context;
  choiceCopy = choice;
  processCopy = process;
  handlerCopy = handler;
  v14 = MEMORY[0x1E695DEF0];
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection auditToken];
  }

  else
  {
    memset(v32, 0, sizeof(v32));
  }

  v16 = [v14 dataWithBytes:v32 length:32];
  globalFrameID = [contextCopy globalFrameID];

  v18 = [ASCAuthorizationPresentationContext alloc];
  v19 = v18;
  clientApplicationIdentifier = self->_clientApplicationIdentifier;
  if (globalFrameID)
  {
    globalFrameID2 = [contextCopy globalFrameID];
    coreFrameIdentifier = [globalFrameID2 coreFrameIdentifier];
    v23 = [(ASCAuthorizationPresentationContext *)v19 initWithRequestContext:contextCopy appIdentifier:clientApplicationIdentifier frameIdentifier:coreFrameIdentifier shouldUseRelyingPartyForServiceName:self->_isClientEntitledWebBrowser auditTokenData:v16];

    if (choiceCopy)
    {
LABEL_6:
      [(ASCAuthorizationPresentationContext *)v23 addLoginChoice:choiceCopy];
      goto LABEL_9;
    }
  }

  else
  {
    v23 = [(ASCAuthorizationPresentationContext *)v18 initWithRequestContext:contextCopy appIdentifier:self->_clientApplicationIdentifier shouldUseRelyingPartyForServiceName:self->_isClientEntitledWebBrowser auditTokenData:v16];
    if (choiceCopy)
    {
      goto LABEL_6;
    }
  }

  [(ASCAgent *)self _configureLoginChoicesForPresentationContext:v23 withRequestContext:contextCopy];
LABEL_9:
  if (!self->_requestPresenter)
  {
    v24 = objc_alloc_init(ASCAuthorizationPresenter);
    requestPresenter = self->_requestPresenter;
    self->_requestPresenter = v24;

    [(ASCAuthorizationPresenterHostProtocol *)self->_requestPresenter setDelegate:self];
  }

  v26 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_signpost_enabled(v26))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C20AD000, v26, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AuthorizationRequestReceivedToShowingUI", "", buf, 2u);
  }

  v27 = self->_requestPresenter;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __111__ASCAgent__presentAuthorizationRequestWithContext_implicitlySelectedLoginChoice_forProcess_completionHandler___block_invoke;
  v29[3] = &unk_1E815FB00;
  v29[4] = self;
  v30 = handlerCopy;
  v28 = handlerCopy;
  [(ASCAuthorizationPresenterHostProtocol *)v27 presentAuthorizationWithContext:v23 forProcess:processCopy completionHandler:v29];
}

void __111__ASCAgent__presentAuthorizationRequestWithContext_implicitlySelectedLoginChoice_forProcess_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 72);
  *(v5 + 72) = 0;
  v7 = a3;
  v8 = a2;

  (*(*(a1 + 40) + 16))();
}

- (BOOL)_hasSignInOptionsForRequestContext:(id)context
{
  contextCopy = context;
  if ([(ASCAgent *)self _hasAnyCredentialsAvailableForRequestContext:contextCopy])
  {
    LOBYTE(v5) = 1;
  }

  else if ([contextCopy isProxiedRequest])
  {
    v5 = [contextCopy requestTypes] & 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)_hasAnyCredentialsAvailableForRequestContext:(id)context
{
  v3 = [(ASCAgent *)self _allAvailableLoginChoicesForRequestContext:context];
  v4 = [v3 count] != 0;

  return v4;
}

- (BOOL)_clientHasNecessaryAuthKitEntitlements
{
  if ([(ASCAgent *)self _clientHasAuthKitDeveloperEntitlement]|| [(ASCAgent *)self _clientIsAuthKitOwner]|| [(ASCAgent *)self _clientIsInternalAuthKit])
  {
    return 1;
  }

  return [(ASCAgent *)self _clientIsPrivateAuthKit];
}

- (BOOL)_clientIsAuthKitOwner
{
  v2 = [(NSXPCConnection *)self->_connection valueForEntitlement:@"com.apple.authkit.client.owner"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)_clientHasAuthKitDeveloperEntitlement
{
  v2 = [(NSXPCConnection *)self->_connection valueForEntitlement:@"com.apple.developer.applesignin"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    firstObject = [v2 firstObject];
    objc_opt_class();
    v4 = (objc_opt_isKindOfClass() & 1) != 0 && [firstObject length] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_clientIsInternalAuthKit
{
  v2 = [(NSXPCConnection *)self->_connection valueForEntitlement:@"com.apple.authkit.client.internal"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)_clientIsPrivateAuthKit
{
  v2 = [(NSXPCConnection *)self->_connection valueForEntitlement:@"com.apple.authkit.client.private"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)_bundleIDFromAppID:(id)d
{
  dCopy = d;
  proxiedBundleIdentifier = [(ASCCredentialRequestContext *)self->_requestContext proxiedBundleIdentifier];

  if (proxiedBundleIdentifier)
  {
    proxiedBundleIdentifier2 = [(ASCCredentialRequestContext *)self->_requestContext proxiedBundleIdentifier];
  }

  else
  {
    v13 = 0;
    proxiedBundleIdentifier2 = [dCopy safari_bundleIdentifierFromApplicationIdentifier:&v13];
    v7 = v13;
    v8 = v7;
    if (v7)
    {
      authorizationActivity = self->_authorizationActivity;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __31__ASCAgent__bundleIDFromAppID___block_invoke;
      v11[3] = &unk_1E815F9D0;
      v12 = v7;
      os_activity_apply(authorizationActivity, v11);
    }
  }

  return proxiedBundleIdentifier2;
}

void __31__ASCAgent__bundleIDFromAppID___block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __31__ASCAgent__bundleIDFromAppID___block_invoke_cold_1(a1, v2);
  }
}

- (id)_teamIDfromAppID:(id)d
{
  dCopy = d;
  proxiedTeamIdentifier = [(ASCCredentialRequestContext *)self->_requestContext proxiedTeamIdentifier];

  if (proxiedTeamIdentifier)
  {
    proxiedTeamIdentifier2 = [(ASCCredentialRequestContext *)self->_requestContext proxiedTeamIdentifier];
  }

  else
  {
    v13 = 0;
    proxiedTeamIdentifier2 = [dCopy safari_teamIdentifierFromApplicationIdentifier:&v13];
    v7 = v13;
    v8 = v7;
    if (v7)
    {
      authorizationActivity = self->_authorizationActivity;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __29__ASCAgent__teamIDfromAppID___block_invoke;
      v11[3] = &unk_1E815F9D0;
      v12 = v7;
      os_activity_apply(authorizationActivity, v11);
    }
  }

  return proxiedTeamIdentifier2;
}

void __29__ASCAgent__teamIDfromAppID___block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __29__ASCAgent__teamIDfromAppID___block_invoke_cold_1(a1, v2);
  }
}

- (void)_performAuthKitAuthorizationValidationForAccount:(id)account
{
  accountCopy = account;
  v5 = objc_alloc_init(MEMORY[0x1E698DD08]);
  v6 = v5;
  if (accountCopy)
  {
    [v5 setAuthkitAccount:accountCopy];
    v7 = objc_alloc_init(MEMORY[0x1E698DD58]);
    [v7 setAuthorizationRequest:v6];
    v15 = 0;
    v8 = [MEMORY[0x1E698DD28] canPerformAuthorizationRequest:v7 error:&v15];
    v9 = v15;
    v10 = v9;
    if (v9)
    {
      authorizationActivity = self->_authorizationActivity;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __61__ASCAgent__performAuthKitAuthorizationValidationForAccount___block_invoke;
      v13[3] = &unk_1E815F9D0;
      v14 = v9;
      os_activity_apply(authorizationActivity, v13);
    }

    self->_existingAppleIDCredentialAvailableForLogIn = v8;
  }

  else
  {
    v12 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ASCAgent _performAuthKitAuthorizationValidationForAccount:];
    }

    self->_existingAppleIDCredentialAvailableForLogIn = 0;
  }
}

void __61__ASCAgent__performAuthKitAuthorizationValidationForAccount___block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __61__ASCAgent__performAuthKitAuthorizationValidationForAccount___block_invoke_cold_1(a1, v2);
  }
}

- (unsigned)_approvalStateForApplicationIdentifier:(id)identifier relyingParty:(id)party
{
  v61[3] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  partyCopy = party;
  v58 = 0;
  v38 = identifierCopy;
  v35 = [objc_alloc(MEMORY[0x1E69635D0]) safari_initWithExtensionApplicationIdentifier:v38 error:&v58];
  v6 = v58;
  v7 = v6;
  if (v6 && ([v6 safari_matchesErrorDomain:*MEMORY[0x1E696A768] andCode:-10814] & 1) == 0)
  {
    authorizationActivity = self->_authorizationActivity;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__ASCAgent__approvalStateForApplicationIdentifier_relyingParty___block_invoke;
    block[3] = &unk_1E815F9D0;
    v57 = v7;
    os_activity_apply(authorizationActivity, block);
  }

  v9 = *MEMORY[0x1E69C8E70];
  v61[0] = @"com.apple.AppSSO.idp-extension";
  v61[1] = v9;
  v61[2] = @"com.apple.ui-services";
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:3];
  extensionPointRecord = [v35 extensionPointRecord];
  identifier = [extensionPointRecord identifier];

  applicationIdentifier = v38;
  if (identifier)
  {
    applicationIdentifier = v38;
    if ([v32 containsObject:identifier])
    {
      containingBundleRecord = [v35 containingBundleRecord];
      applicationIdentifier = [containingBundleRecord applicationIdentifier];
    }
  }

  v12 = objc_alloc(MEMORY[0x1E69CDB30]);
  v33 = [v12 initWithServiceType:*MEMORY[0x1E69CDB48] applicationIdentifier:applicationIdentifier domain:partyCopy];
  v55 = v7;
  v13 = [MEMORY[0x1E69CDB28] serviceDetailsWithServiceSpecifier:v33 error:&v55];
  v30 = v55;

  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 2;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v47 objects:v60 count:16];
  if (v15)
  {
    v16 = *v48;
    do
    {
      v17 = 0;
      do
      {
        if (*v48 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v47 + 1) + 8 * v17);
        if (*(v52 + 24) == 2 && ![*(*(&v47 + 1) + 8 * v17) siteApprovalState])
        {
          *(v52 + 24) = 0;
        }

        else if ([v18 isApproved])
        {
          *(v52 + 24) = 1;
          goto LABEL_21;
        }

        ++v17;
      }

      while (v15 != v17);
      v19 = [v14 countByEnumeratingWithState:&v47 objects:v60 count:16];
      v15 = v19;
    }

    while (v19);
  }

LABEL_21:
  v31 = v14;

  v20 = *(v52 + 24);
  if (!v20)
  {
    v21 = dispatch_group_create();
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v22 = v14;
    v23 = [v22 countByEnumeratingWithState:&v43 objects:v59 count:16];
    if (v23)
    {
      v24 = *v44;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v44 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v43 + 1) + 8 * i);
          if (![v26 siteApprovalState])
          {
            os_activity_apply(self->_authorizationActivity, &__block_literal_global_355);
            dispatch_group_enter(v21);
            v40[0] = MEMORY[0x1E69E9820];
            v40[1] = 3221225472;
            v40[2] = __64__ASCAgent__approvalStateForApplicationIdentifier_relyingParty___block_invoke_356;
            v40[3] = &unk_1E815FE78;
            v42 = &v51;
            v40[4] = self;
            v40[5] = v26;
            v41 = v21;
            [v26 waitForSiteApprovalWithCompletionHandler:v40];
          }
        }

        v23 = [v22 countByEnumeratingWithState:&v43 objects:v59 count:16];
      }

      while (v23);
    }

    v27 = dispatch_time(0, 1000000000);
    dispatch_group_wait(v21, v27);

    v20 = *(v52 + 24);
  }

  _Block_object_dispose(&v51, 8);

  v28 = *MEMORY[0x1E69E9840];
  return v20;
}

void __64__ASCAgent__approvalStateForApplicationIdentifier_relyingParty___block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __64__ASCAgent__approvalStateForApplicationIdentifier_relyingParty___block_invoke_cold_1(a1, v2);
  }
}

void __64__ASCAgent__approvalStateForApplicationIdentifier_relyingParty___block_invoke_353()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1C20AD000, v0, OS_LOG_TYPE_DEFAULT, "SWC approval state was unspecified, will wait for approval", v1, 2u);
  }
}

void __64__ASCAgent__approvalStateForApplicationIdentifier_relyingParty___block_invoke_356(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = *(*(a1 + 32) + 184);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__ASCAgent__approvalStateForApplicationIdentifier_relyingParty___block_invoke_2;
    block[3] = &unk_1E815F9D0;
    v11 = v6;
    os_activity_apply(v8, block);
  }

  if (*(*(*(a1 + 56) + 8) + 24) == 2 && ![*(a1 + 40) siteApprovalState])
  {
    v9 = 0;
    goto LABEL_8;
  }

  if ([*(a1 + 40) isApproved])
  {
    v9 = 1;
LABEL_8:
    *(*(*(a1 + 56) + 8) + 24) = v9;
  }

  dispatch_group_leave(*(a1 + 48));
}

void __64__ASCAgent__approvalStateForApplicationIdentifier_relyingParty___block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __64__ASCAgent__approvalStateForApplicationIdentifier_relyingParty___block_invoke_2_cold_1(a1, v2);
  }
}

- (BOOL)_isClientWithApplicationIdentifier:(id)identifier properlyEntitledForRequestContext:(id)context error:(id *)error
{
  v98[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  contextCopy = context;
  if ([contextCopy requestStyle] == 2)
  {
    connection = self->_connection;
    if (connection)
    {
      [(NSXPCConnection *)connection auditToken];
    }

    else
    {
      v77 = 0u;
      v78 = 0u;
    }

    if (WBSAuditTokenHasEntitlement())
    {
      authorizationActivity = self->_authorizationActivity;
      v12 = &__block_literal_global_359;
LABEL_7:
      os_activity_apply(authorizationActivity, v12);
      goto LABEL_8;
    }

    if ([contextCopy requestTypes] == 8)
    {
      authorizationActivity = self->_authorizationActivity;
      if (!self->_isClientEntitledWebBrowser)
      {
        os_activity_apply(authorizationActivity, &__block_literal_global_362);
        if (error)
        {
          v22 = MEMORY[0x1E696ABC0];
          v97 = *MEMORY[0x1E696A588];
          v98[0] = @"Only entitled web browsers can make this request.";
          v23 = MEMORY[0x1E695DF20];
          v24 = v98;
          v25 = &v97;
          goto LABEL_43;
        }

LABEL_66:
        v16 = 0;
        goto LABEL_60;
      }

      v12 = &__block_literal_global_368;
      goto LABEL_7;
    }

    if ([contextCopy requestTypes] != 4)
    {
      v38 = self->_authorizationActivity;
      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 3221225472;
      v73[2] = __87__ASCAgent__isClientWithApplicationIdentifier_properlyEntitledForRequestContext_error___block_invoke_382;
      v73[3] = &unk_1E815F9D0;
      v74 = contextCopy;
      os_activity_apply(v38, v73);
      if (error)
      {
        v39 = MEMORY[0x1E696ABC0];
        v91 = *MEMORY[0x1E696A588];
        v92 = @"Silent requests are only allowed for platform assertions.";
        v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
        *error = [v39 errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:v40];
      }

      v16 = 0;
      relyingPartyIdentifier2 = v74;
      goto LABEL_59;
    }

    if (self->_isClientEntitledWebBrowser)
    {
      authorizationActivity = self->_authorizationActivity;
      v12 = &__block_literal_global_371;
      goto LABEL_7;
    }

    relyingPartyIdentifier = [contextCopy relyingPartyIdentifier];
    v48 = [(ASCAgent *)self _approvalStateForApplicationIdentifier:identifierCopy relyingParty:relyingPartyIdentifier];

    switch(v48)
    {
      case 0:
        if (error)
        {
          v63 = MEMORY[0x1E696ABC0];
          v95 = *MEMORY[0x1E696A588];
          v64 = MEMORY[0x1E696AEC0];
          relyingPartyIdentifier2 = [contextCopy relyingPartyIdentifier];
          v65 = [v64 stringWithFormat:@"Unable to verify webcredentials association of %@ with domain %@. Please try again in a few seconds.", identifierCopy, relyingPartyIdentifier2];
          v96 = v65;
          v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
          *error = [v63 errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:v66];

LABEL_50:
          v16 = 0;
          goto LABEL_59;
        }

        goto LABEL_66;
      case 2:
        v56 = self->_authorizationActivity;
        v75[0] = MEMORY[0x1E69E9820];
        v75[1] = 3221225472;
        v75[2] = __87__ASCAgent__isClientWithApplicationIdentifier_properlyEntitledForRequestContext_error___block_invoke_378;
        v75[3] = &unk_1E815F9D0;
        v57 = contextCopy;
        v76 = v57;
        os_activity_apply(v56, v75);
        if (error)
        {
          v58 = MEMORY[0x1E696ABC0];
          v93 = *MEMORY[0x1E696A588];
          v59 = MEMORY[0x1E696AEC0];
          relyingPartyIdentifier3 = [v57 relyingPartyIdentifier];
          v61 = [v59 stringWithFormat:@"Application with identifier %@ is not associated with domain %@", identifierCopy, relyingPartyIdentifier3];
          v94 = v61;
          v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
          *error = [v58 errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:v62];
        }

        v16 = 0;
        relyingPartyIdentifier2 = v76;
        goto LABEL_59;
      case 1:
        authorizationActivity = self->_authorizationActivity;
        v12 = &__block_literal_global_374;
        goto LABEL_7;
    }
  }

LABEL_8:
  if (![contextCopy isProxiedRequest])
  {
    relyingPartyIdentifier2 = [contextCopy relyingPartyIdentifier];
    if (!relyingPartyIdentifier2 && [contextCopy requestRequiresRelyingParty])
    {
      v17 = self->_authorizationActivity;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __87__ASCAgent__isClientWithApplicationIdentifier_properlyEntitledForRequestContext_error___block_invoke_399;
      block[3] = &unk_1E815F9D0;
      v70 = contextCopy;
      os_activity_apply(v17, block);
      v16 = 0;
      attestationPreference = v70;
LABEL_58:

      goto LABEL_59;
    }

    platformKeyCredentialCreationOptions = [contextCopy platformKeyCredentialCreationOptions];
    attestationPreference = [platformKeyCredentialCreationOptions attestationPreference];

    if ([attestationPreference isEqualToString:@"enterprise"] && (+[ASFeatureManager sharedManager](ASFeatureManager, "sharedManager"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "canRequestEnterpriseAttestationForRelyingParty:", relyingPartyIdentifier2), v20, (v21 & 1) == 0))
    {
      os_activity_apply(self->_authorizationActivity, &__block_literal_global_402);
      if (error)
      {
        v35 = MEMORY[0x1E696ABC0];
        v85 = *MEMORY[0x1E696A588];
        v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"This device is not configured to allow enterprise attestation for “%@”.", relyingPartyIdentifier2];
        v86 = v36;
        v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
        *error = [v35 errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:v37];
      }
    }

    else
    {
      if (self->_isClientEntitledWebBrowser)
      {
        os_activity_apply(self->_authorizationActivity, &__block_literal_global_408);
LABEL_35:
        v16 = 1;
        goto LABEL_58;
      }

      if ([contextCopy isUsingWebBrowserOnlyOptions])
      {
        os_activity_apply(self->_authorizationActivity, &__block_literal_global_411);
        if (error)
        {
          v26 = MEMORY[0x1E696ABC0];
          v83 = *MEMORY[0x1E696A588];
          v84 = @"Only entitled web browsers can use these options.";
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
          *error = [v26 errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:v27];
        }
      }

      if (!relyingPartyIdentifier2)
      {
        goto LABEL_35;
      }

      v28 = [(ASCAgent *)self _approvalStateForApplicationIdentifier:identifierCopy relyingParty:relyingPartyIdentifier2];
      if (v28)
      {
        if (v28 != 2)
        {
          goto LABEL_35;
        }

        v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Application with identifier %@ is not associated with domain %@", identifierCopy, relyingPartyIdentifier2];
        v30 = v29;
        if (error)
        {
          v31 = MEMORY[0x1E696ABC0];
          v81 = *MEMORY[0x1E696A588];
          v82 = v29;
          v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
          *error = [v31 errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:v32];
        }

        v33 = self->_authorizationActivity;
        v67[0] = MEMORY[0x1E69E9820];
        v67[1] = 3221225472;
        v67[2] = __87__ASCAgent__isClientWithApplicationIdentifier_properlyEntitledForRequestContext_error___block_invoke_415;
        v67[3] = &unk_1E815F9D0;
        v68 = v30;
        v34 = v30;
        os_activity_apply(v33, v67);
      }

      else if (error)
      {
        v49 = MEMORY[0x1E696ABC0];
        v79 = *MEMORY[0x1E696A588];
        v50 = MEMORY[0x1E696AEC0];
        relyingPartyIdentifier4 = [contextCopy relyingPartyIdentifier];
        v52 = [v50 stringWithFormat:@"Unable to verify webcredentials association of %@ with domain %@. Please try again in a few seconds.", identifierCopy, relyingPartyIdentifier4];
        v80 = v52;
        v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
        *error = [v49 errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:v53];
      }
    }

    v16 = 0;
    goto LABEL_58;
  }

  if (![(ASCAgent *)self _connection:self->_connection hasEntitlement:@"com.apple.authentication-services-core.allow-authentication-request-proxying"])
  {
    os_activity_apply(self->_authorizationActivity, &__block_literal_global_388);
    if (error)
    {
      v22 = MEMORY[0x1E696ABC0];
      v89 = *MEMORY[0x1E696A588];
      v90 = @"Client does not have entitlement for using proxied credential request context.";
      v23 = MEMORY[0x1E695DF20];
      v24 = &v90;
      v25 = &v89;
LABEL_43:
      relyingPartyIdentifier2 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:1];
      [v22 errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:relyingPartyIdentifier2];
      *error = v16 = 0;
      goto LABEL_59;
    }

    goto LABEL_66;
  }

  relyingPartyIdentifier2 = [contextCopy relyingPartyIdentifier];
  if (relyingPartyIdentifier2)
  {
    if (!self->_isClientEntitledWebBrowser)
    {
      proxiedAssociatedDomains = [contextCopy proxiedAssociatedDomains];
      v15 = [proxiedAssociatedDomains containsObject:relyingPartyIdentifier2];

      if ((v15 & 1) == 0)
      {
        v41 = self->_authorizationActivity;
        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 3221225472;
        v71[2] = __87__ASCAgent__isClientWithApplicationIdentifier_properlyEntitledForRequestContext_error___block_invoke_392;
        v71[3] = &unk_1E815F9D0;
        relyingPartyIdentifier2 = relyingPartyIdentifier2;
        v72 = relyingPartyIdentifier2;
        os_activity_apply(v41, v71);
        if (error)
        {
          v42 = MEMORY[0x1E696ABC0];
          v87 = *MEMORY[0x1E696A588];
          v43 = MEMORY[0x1E696AEC0];
          proxiedAppName = [contextCopy proxiedAppName];
          v45 = [v43 stringWithFormat:@"%@ is not associated with domain %@.", proxiedAppName, relyingPartyIdentifier2];
          v88 = v45;
          v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
          *error = [v42 errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:v46];
        }

        goto LABEL_50;
      }
    }
  }

  os_activity_apply(self->_authorizationActivity, &__block_literal_global_398);
  v16 = 1;
LABEL_59:

LABEL_60:
  v54 = *MEMORY[0x1E69E9840];
  return v16;
}

void __87__ASCAgent__isClientWithApplicationIdentifier_properlyEntitledForRequestContext_error___block_invoke()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1C20AD000, v0, OS_LOG_TYPE_INFO, "Allowing silent internal request.", v1, 2u);
  }
}

void __87__ASCAgent__isClientWithApplicationIdentifier_properlyEntitledForRequestContext_error___block_invoke_360()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __87__ASCAgent__isClientWithApplicationIdentifier_properlyEntitledForRequestContext_error___block_invoke_360_cold_1();
  }
}

void __87__ASCAgent__isClientWithApplicationIdentifier_properlyEntitledForRequestContext_error___block_invoke_366()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1C20AD000, v0, OS_LOG_TYPE_INFO, "Allowing silent request from web browser.", v1, 2u);
  }
}

void __87__ASCAgent__isClientWithApplicationIdentifier_properlyEntitledForRequestContext_error___block_invoke_369()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1C20AD000, v0, OS_LOG_TYPE_INFO, "Allowing conditional request from web browser.", v1, 2u);
  }
}

void __87__ASCAgent__isClientWithApplicationIdentifier_properlyEntitledForRequestContext_error___block_invoke_372()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1C20AD000, v0, OS_LOG_TYPE_INFO, "Allowing conditional request from associated app.", v1, 2u);
  }
}

void __87__ASCAgent__isClientWithApplicationIdentifier_properlyEntitledForRequestContext_error___block_invoke_378(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __87__ASCAgent__isClientWithApplicationIdentifier_properlyEntitledForRequestContext_error___block_invoke_378_cold_1(a1, v2);
  }
}

void __87__ASCAgent__isClientWithApplicationIdentifier_properlyEntitledForRequestContext_error___block_invoke_382(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __87__ASCAgent__isClientWithApplicationIdentifier_properlyEntitledForRequestContext_error___block_invoke_382_cold_1(a1, v2);
  }
}

void __87__ASCAgent__isClientWithApplicationIdentifier_properlyEntitledForRequestContext_error___block_invoke_386()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __87__ASCAgent__isClientWithApplicationIdentifier_properlyEntitledForRequestContext_error___block_invoke_386_cold_1();
  }
}

void __87__ASCAgent__isClientWithApplicationIdentifier_properlyEntitledForRequestContext_error___block_invoke_392(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __87__ASCAgent__isClientWithApplicationIdentifier_properlyEntitledForRequestContext_error___block_invoke_392_cold_1(a1);
  }
}

void __87__ASCAgent__isClientWithApplicationIdentifier_properlyEntitledForRequestContext_error___block_invoke_396()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1C20AD000, v0, OS_LOG_TYPE_DEFAULT, "Allowing proxied request.", v1, 2u);
  }
}

void __87__ASCAgent__isClientWithApplicationIdentifier_properlyEntitledForRequestContext_error___block_invoke_399(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    __87__ASCAgent__isClientWithApplicationIdentifier_properlyEntitledForRequestContext_error___block_invoke_399_cold_1(a1, v2);
  }
}

void __87__ASCAgent__isClientWithApplicationIdentifier_properlyEntitledForRequestContext_error___block_invoke_400()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __87__ASCAgent__isClientWithApplicationIdentifier_properlyEntitledForRequestContext_error___block_invoke_400_cold_1();
  }
}

void __87__ASCAgent__isClientWithApplicationIdentifier_properlyEntitledForRequestContext_error___block_invoke_406()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1C20AD000, v0, OS_LOG_TYPE_DEFAULT, "Allowing request from web browser.", v1, 2u);
  }
}

void __87__ASCAgent__isClientWithApplicationIdentifier_properlyEntitledForRequestContext_error___block_invoke_409()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __87__ASCAgent__isClientWithApplicationIdentifier_properlyEntitledForRequestContext_error___block_invoke_409_cold_1();
  }
}

void __87__ASCAgent__isClientWithApplicationIdentifier_properlyEntitledForRequestContext_error___block_invoke_415(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __87__ASCAgent__isClientWithApplicationIdentifier_properlyEntitledForRequestContext_error___block_invoke_415_cold_1(a1);
  }
}

- (BOOL)_shouldApplyQuirksToClientWithApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([MEMORY[0x1E696AAE8] safari_isSafariFamilyBundleIdentifier:identifierCopy])
  {
    v4 = 1;
  }

  else
  {
    v4 = [identifierCopy isEqualToString:*MEMORY[0x1E69C8D30]];
  }

  return v4;
}

- (BOOL)_shouldAddCABLEChoiceForRequestContext:(id)context
{
  contextCopy = context;
  requestTypes = [contextCopy requestTypes];
  if (ascCredentialRequestTypesAllPublicKey() & requestTypes) == 0 || [contextCopy requestStyle] == 2 || !+[_ASDevice isCABLEClient](_ASDevice, "isCABLEClient") || !+[ASCWebKitSPISupport shouldUseAlternateCredentialStore](ASCWebKitSPISupport, "shouldUseAlternateCredentialStore") || (objc_msgSend(contextCopy, "isProxiedRequest") & 1) != 0 || (objc_msgSend(contextCopy, "isCABLEAuthenticatorRequest"))
  {
    goto LABEL_10;
  }

  platformKeyCredentialCreationOptions = [contextCopy platformKeyCredentialCreationOptions];
  if ([platformKeyCredentialCreationOptions shouldHideHybrid])
  {

    goto LABEL_10;
  }

  platformKeyCredentialAssertionOptions = [contextCopy platformKeyCredentialAssertionOptions];
  shouldHideHybrid = [platformKeyCredentialAssertionOptions shouldHideHybrid];

  if (shouldHideHybrid)
  {
    goto LABEL_10;
  }

  if (![contextCopy isRegistrationRequest])
  {
    if (!self->_isClientEntitledWebBrowser && (requestTypes & 8) == 0)
    {
      goto LABEL_10;
    }

    if ((requestTypes & 8) != 0)
    {
      [contextCopy platformKeyCredentialAssertionOptions];
    }

    else
    {
      [contextCopy securityKeyCredentialAssertionOptions];
    }
    v12 = ;
    allowedCredentials = [v12 allowedCredentials];

    if ([allowedCredentials count])
    {
      v9 = [allowedCredentials safari_containsObjectPassingTest:&__block_literal_global_419];
    }

    else
    {
      v9 = 1;
    }

LABEL_26:

    goto LABEL_11;
  }

  if (!self->_isClientEntitledWebBrowser)
  {
    v9 = requestTypes != 16;
    goto LABEL_11;
  }

  if (requestTypes != 4)
  {
    if (requestTypes != 16)
    {
      v9 = 1;
      goto LABEL_11;
    }

    allowedCredentials = [contextCopy securityKeyCredentialCreationOptions];
    v9 = [allowedCredentials residentKeyPreference] != 1;
    goto LABEL_26;
  }

LABEL_10:
  v9 = 0;
LABEL_11:

  return v9;
}

uint64_t __51__ASCAgent__shouldAddCABLEChoiceForRequestContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 transports];
  if ([v3 count] && (objc_msgSend(v2, "hasInternalTransport") & 1) == 0)
  {
    v4 = [v2 hasCABLETransport];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)_credentialRequestedForPasswordLoginChoice:(id)choice completionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  choiceCopy = choice;
  handlerCopy = handler;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  selfCopy = self;
  v8 = self->_passwordCredentials;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v26 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v25 + 1) + 8 * v12);
      if (([v13 isExternal] & 1) == 0)
      {
        username = [choiceCopy username];
        user = [v13 user];
        v16 = [username isEqualToString:user];

        if (v16)
        {
          break;
        }
      }

      if (v10 == ++v12)
      {
        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v17 = [ASCPasswordCredential alloc];
    user2 = [v13 user];
    password = [v13 password];
    site = [v13 site];
    creationDate = [v13 creationDate];
    v22 = [(ASCPasswordCredential *)v17 initWithUser:user2 password:password site:site creationDate:creationDate externalProviderBundleIdentifier:0];

    if (!v22)
    {
      goto LABEL_13;
    }

    handlerCopy[2](handlerCopy, v22, 0);
  }

  else
  {
LABEL_10:

LABEL_13:
    os_activity_apply(selfCopy->_authorizationActivity, &__block_literal_global_422);
    v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:0];
    (handlerCopy)[2](handlerCopy, 0, v22);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __73__ASCAgent__credentialRequestedForPasswordLoginChoice_completionHandler___block_invoke()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __73__ASCAgent__credentialRequestedForPasswordLoginChoice_completionHandler___block_invoke_cold_1();
  }
}

- (void)_credentialRequestedForPlatformLoginChoice:(id)choice authenticatedContext:(id)context completionHandler:(id)handler
{
  choiceCopy = choice;
  contextCopy = context;
  handlerCopy = handler;
  v11 = _Block_copy(handlerCopy);
  passkeyCredentialCallback = self->_passkeyCredentialCallback;
  self->_passkeyCredentialCallback = v11;

  if ([choiceCopy isExternal])
  {
    v13 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ASCAgent _credentialRequestedForPlatformLoginChoice:authenticatedContext:completionHandler:];
    }

    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v14);
  }

  else
  {
    isRegistrationRequest = [choiceCopy isRegistrationRequest];
    publicKeyCredentialManager = self->_publicKeyCredentialManager;
    if (isRegistrationRequest)
    {
      platformKeyCredentialCreationOptions = [(ASCCredentialRequestContext *)self->_requestContext platformKeyCredentialCreationOptions];
      globalFrameID = [(ASCCredentialRequestContext *)self->_requestContext globalFrameID];
      authorizationActivity = self->_authorizationActivity;
      isConditionalRegistrationRequest = [(ASCCredentialRequestContext *)self->_requestContext isConditionalRegistrationRequest];
      testOptions = [(ASCCredentialRequestContext *)self->_requestContext testOptions];
      v22 = [(ASPublicKeyCredentialManagerInterface *)publicKeyCredentialManager createNewPlatformCredentialWithOptions:platformKeyCredentialCreationOptions authenticatedContext:contextCopy delegate:self webFrameIdentifier:globalFrameID parentActivity:authorizationActivity isConditionalRegistration:isConditionalRegistrationRequest testOptions:testOptions];
      publicKeyCredentialOperationUUID = self->_publicKeyCredentialOperationUUID;
      self->_publicKeyCredentialOperationUUID = v22;
    }

    else
    {
      [(ASPublicKeyCredentialManagerInterface *)self->_publicKeyCredentialManager assertUsingPlatformCredentialForLoginChoice:choiceCopy authenticatedContext:contextCopy];
    }
  }
}

- (void)_credentialRequestedForSecurityKeyLoginChoice:(id)choice
{
  v24[1] = *MEMORY[0x1E69E9840];
  choiceCopy = choice;
  credentialKind = [choiceCopy credentialKind];
  if (credentialKind)
  {
    if (credentialKind == 2)
    {
      if ([(ASCCredentialRequestContext *)self->_requestContext requestStyle]== 1)
      {
        publicKeyCredentialManager = self->_publicKeyCredentialManager;
        publicKeyCredentialOperationUUID = self->_publicKeyCredentialOperationUUID;
        v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:12 userInfo:0];
        [(ASPublicKeyCredentialManagerInterface *)publicKeyCredentialManager cancelOperationIfNecessaryWithUUID:publicKeyCredentialOperationUUID overrideError:v8];

        v9 = self->_publicKeyCredentialManager;
        securityKeyCredentialAssertionOptions = [(ASCCredentialRequestContext *)self->_requestContext securityKeyCredentialAssertionOptions];
        v24[0] = securityKeyCredentialAssertionOptions;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
        clientApplicationIdentifier = self->_clientApplicationIdentifier;
        globalFrameID = [(ASCCredentialRequestContext *)self->_requestContext globalFrameID];
        authorizationActivity = self->_authorizationActivity;
        testOptions = [(ASCCredentialRequestContext *)self->_requestContext testOptions];
        v16 = [(ASPublicKeyCredentialManagerInterface *)v9 beginAssertionsWithOptions:v11 forProcessWithApplicationIdentifier:clientApplicationIdentifier delegate:self requestStyle:0 webFrameIdentifier:globalFrameID parentActivity:authorizationActivity testOptions:testOptions];
      }
    }

    else if (credentialKind == 1)
    {
      [(ASPublicKeyCredentialManagerInterface *)self->_publicKeyCredentialManager assertUsingSecurityKeyCredentialForLoginChoice:choiceCopy];
    }
  }

  else
  {
    v17 = self->_publicKeyCredentialManager;
    securityKeyCredentialCreationOptions = [(ASCCredentialRequestContext *)self->_requestContext securityKeyCredentialCreationOptions];
    globalFrameID2 = [(ASCCredentialRequestContext *)self->_requestContext globalFrameID];
    v20 = self->_authorizationActivity;
    testOptions2 = [(ASCCredentialRequestContext *)self->_requestContext testOptions];
    v22 = [(ASPublicKeyCredentialManagerInterface *)v17 beginCreatingNewSecurityKeyCredentialIfAvailableWithOptions:securityKeyCredentialCreationOptions delegate:self webFrameIdentifier:globalFrameID2 parentActivity:v20 testOptions:testOptions2];
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_credentialRequestedForCABLELoginChoice:(id)choice
{
  didStartCABLEClient = self->_didStartCABLEClient;
  authorizationActivity = self->_authorizationActivity;
  if (didStartCABLEClient)
  {

    os_activity_apply(authorizationActivity, &__block_literal_global_424);
  }

  else
  {
    os_activity_apply(authorizationActivity, &__block_literal_global_427);
    self->_didStartCABLEClient = 1;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __52__ASCAgent__credentialRequestedForCABLELoginChoice___block_invoke_428;
    aBlock[3] = &unk_1E815FEE8;
    aBlock[4] = self;
    v6 = _Block_copy(aBlock);
    platformKeyCredentialAssertionOptions = [(ASCCredentialRequestContext *)self->_requestContext platformKeyCredentialAssertionOptions];
    if (platformKeyCredentialAssertionOptions || ([(ASCCredentialRequestContext *)self->_requestContext securityKeyCredentialAssertionOptions], (platformKeyCredentialAssertionOptions = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = platformKeyCredentialAssertionOptions;
      cableClient = self->_cableClient;
      relyingPartyIdentifier = [platformKeyCredentialAssertionOptions relyingPartyIdentifier];
      v11 = cableClient;
      v12 = 1;
    }

    else
    {
      platformKeyCredentialCreationOptions = [(ASCCredentialRequestContext *)self->_requestContext platformKeyCredentialCreationOptions];
      v14 = platformKeyCredentialCreationOptions;
      if (platformKeyCredentialCreationOptions)
      {
        securityKeyCredentialCreationOptions = platformKeyCredentialCreationOptions;
      }

      else
      {
        securityKeyCredentialCreationOptions = [(ASCCredentialRequestContext *)self->_requestContext securityKeyCredentialCreationOptions];
      }

      v8 = securityKeyCredentialCreationOptions;

      v16 = self->_cableClient;
      relyingPartyIdentifier = [v8 relyingPartyIdentifier];
      v11 = v16;
      v12 = 0;
    }

    [(ASCABLEClient *)v11 performAuthenticationOperation:v12 forRelyingPartyIdentifier:relyingPartyIdentifier completionHandler:v6];
  }
}

void __52__ASCAgent__credentialRequestedForCABLELoginChoice___block_invoke()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1C20AD000, v0, OS_LOG_TYPE_DEFAULT, "caBLE client already started", v1, 2u);
  }
}

void __52__ASCAgent__credentialRequestedForCABLELoginChoice___block_invoke_425()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1C20AD000, v0, OS_LOG_TYPE_DEFAULT, "Starting caBLE client", v1, 2u);
  }
}

void __52__ASCAgent__credentialRequestedForCABLELoginChoice___block_invoke_428(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(*(a1 + 32) + 56) requestStyle] != 1)
  {
    v7 = [v6 domain];
    if ([v7 isEqualToString:@"com.apple.AuthenticationServicesCore.AuthorizationError"])
    {
      v8 = [v6 code];

      if (v8 == 16)
      {
        [*(*(a1 + 32) + 72) updateInterfaceForUserVisibleError:v6];
        goto LABEL_11;
      }
    }

    else
    {
    }

    [*(a1 + 32) _authorizationCompletedWithCredential:v5 error:v6];
    goto LABEL_11;
  }

  if (v6 && [v6 code] == 12)
  {
    os_activity_apply(*(*(a1 + 32) + 184), &__block_literal_global_430);
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 72);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __52__ASCAgent__credentialRequestedForCABLELoginChoice___block_invoke_431;
    v11[3] = &unk_1E815FEC0;
    v11[4] = v9;
    v12 = v5;
    v13 = v6;
    [v10 authorizationRequestFinishedWithCredential:v12 error:v13 completionHandler:v11];
  }

LABEL_11:
}

void __52__ASCAgent__credentialRequestedForCABLELoginChoice___block_invoke_2()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1C20AD000, v0, OS_LOG_TYPE_DEFAULT, "Not propagating internal cancel for caBLE in AutoFill", v1, 2u);
  }
}

- (BOOL)_canPerformConditionalRegistrationInICloudKeychainForUsername:(id)username relyingParty:(id)party
{
  usernameCopy = username;
  partyCopy = party;
  if ([MEMORY[0x1E69C8880] isAutomaticPasskeyUpgradesEnabled])
  {
    if (![(ASPublicKeyCredentialManagerInterface *)self->_publicKeyCredentialManager passkeyExistsForRelyingParty:partyCopy username:usernameCopy])
    {
      v9 = 1;
      goto LABEL_7;
    }

    v8 = &__block_literal_global_437;
  }

  else
  {
    v8 = &__block_literal_global_434;
  }

  os_activity_apply(self->_authorizationActivity, v8);
  v9 = 0;
LABEL_7:

  return v9;
}

void __87__ASCAgent__canPerformConditionalRegistrationInICloudKeychainForUsername_relyingParty___block_invoke()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1C20AD000, v0, OS_LOG_TYPE_INFO, "Automatic passkey upgrades is off", v1, 2u);
  }
}

void __87__ASCAgent__canPerformConditionalRegistrationInICloudKeychainForUsername_relyingParty___block_invoke_435()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1C20AD000, v0, OS_LOG_TYPE_INFO, "Matching passkey already exists.", v1, 2u);
  }
}

- (void)_credentialRequestedForPasskeyAccountRegistrationLoginChoice:(id)choice authenticatedContext:(id)context completionHandler:(id)handler
{
  choiceCopy = choice;
  contextCopy = context;
  handlerCopy = handler;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __112__ASCAgent__credentialRequestedForPasskeyAccountRegistrationLoginChoice_authenticatedContext_completionHandler___block_invoke;
  v14[3] = &unk_1E815FF10;
  v15 = choiceCopy;
  selfCopy = self;
  v17 = contextCopy;
  v18 = handlerCopy;
  v11 = contextCopy;
  v12 = choiceCopy;
  v13 = handlerCopy;
  [v12 contactIdentifierValueWithCompletionHandler:v14];
}

void __112__ASCAgent__credentialRequestedForPasskeyAccountRegistrationLoginChoice_authenticatedContext_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) publicKeyCredentialCreationOptions];
    [v4 setUserName:v3];
    [v4 setUserDisplayName:v3];
    v5 = _Block_copy(*(a1 + 56));
    v6 = *(a1 + 40);
    v7 = *(v6 + 168);
    *(v6 + 168) = v5;

    v8 = [*(a1 + 32) userState];
    v9 = *(a1 + 40);
    v10 = *(v9 + 280);
    *(v9 + 280) = v8;

    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = *(v11 + 104);
    v14 = [*(v11 + 56) globalFrameID];
    v15 = *(a1 + 40);
    v16 = *(v15 + 184);
    v17 = [*(v15 + 56) testOptions];
    v18 = [v13 createNewPlatformCredentialWithOptions:v4 authenticatedContext:v12 delegate:v11 webFrameIdentifier:v14 parentActivity:v16 isConditionalRegistration:0 testOptions:v17];
    v19 = *(a1 + 40);
    v20 = *(v19 + 176);
    *(v19 + 176) = v18;
  }

  else
  {
    v21 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      __112__ASCAgent__credentialRequestedForPasskeyAccountRegistrationLoginChoice_authenticatedContext_completionHandler___block_invoke_cold_1();
    }

    v22 = *(a1 + 56);
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:0];
    (*(v22 + 16))(v22, 0, v4);
  }
}

- (void)authorizationPresenter:(id)presenter validateUserEnteredPIN:(id)n completionHandler:(id)handler
{
  nCopy = n;
  if (self->_userEnteredPINCallback)
  {
    handlerCopy = handler;
    v8 = _Block_copy(handlerCopy);

    pinResultCallback = self->_pinResultCallback;
    self->_pinResultCallback = v8;

    (*(self->_userEnteredPINCallback + 2))();
    userEnteredPINCallback = self->_userEnteredPINCallback;
    self->_userEnteredPINCallback = 0;
  }

  else
  {
    authorizationActivity = self->_authorizationActivity;
    handlerCopy2 = handler;
    os_activity_apply(authorizationActivity, &__block_literal_global_440);
    userEnteredPINCallback = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:0];
    handlerCopy2[2](handlerCopy2, 0, userEnteredPINCallback);
  }
}

void __76__ASCAgent_authorizationPresenter_validateUserEnteredPIN_completionHandler___block_invoke()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __76__ASCAgent_authorizationPresenter_validateUserEnteredPIN_completionHandler___block_invoke_cold_1();
  }
}

- (void)authorizationPresenterDidIgnorePINRequest:(id)request
{
  userEnteredPINCallback = self->_userEnteredPINCallback;
  if (userEnteredPINCallback)
  {
    userEnteredPINCallback[2](userEnteredPINCallback, 0, request);
    v5 = self->_userEnteredPINCallback;
    self->_userEnteredPINCallback = 0;
  }

  else
  {
    authorizationActivity = self->_authorizationActivity;

    os_activity_apply(authorizationActivity, &__block_literal_global_442);
  }
}

void __54__ASCAgent_authorizationPresenterDidIgnorePINRequest___block_invoke()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __54__ASCAgent_authorizationPresenterDidIgnorePINRequest___block_invoke_cold_1();
  }
}

- (void)authorizationPresenter:(id)presenter startCABLEAuthenticationWithCompletionHandler:(id)handler
{
  presenterCopy = presenter;
  handlerCopy = handler;
  os_activity_apply(self->_authorizationActivity, &__block_literal_global_444);
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v9 = [_TtC26AuthenticationServicesCore20ASCABLEAuthenticator alloc];
  cableAuthenticationURL = self->_cableAuthenticationURL;
  v27 = 0;
  v11 = [(ASCABLEAuthenticator *)v9 initWithCaBLEURL:cableAuthenticationURL error:&v27];
  v12 = v27;
  cableAuthenticator = self->_cableAuthenticator;
  self->_cableAuthenticator = v11;

  if (self->_cableAuthenticator)
  {
    objc_initWeak(&location, self);
    v14 = self->_authorizationActivity;
    v15 = self->_cableAuthenticator;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __81__ASCAgent_authorizationPresenter_startCABLEAuthenticationWithCompletionHandler___block_invoke_447;
    v19[3] = &unk_1E815FF38;
    objc_copyWeak(&v23, &location);
    v16 = v14;
    v20 = v16;
    v22 = handlerCopy;
    v21 = currentConnection;
    [(ASCABLEAuthenticator *)v15 startWithCompletionHandler:v19];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  else
  {
    authorizationActivity = self->_authorizationActivity;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __81__ASCAgent_authorizationPresenter_startCABLEAuthenticationWithCompletionHandler___block_invoke_446;
    block[3] = &unk_1E815F9D0;
    v18 = v12;
    v26 = v18;
    os_activity_apply(authorizationActivity, block);
    (*(handlerCopy + 2))(handlerCopy, 0, v18);
  }
}

void __81__ASCAgent_authorizationPresenter_startCABLEAuthenticationWithCompletionHandler___block_invoke()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1C20AD000, v0, OS_LOG_TYPE_DEFAULT, "Starting caBLE authentication", v1, 2u);
  }
}

void __81__ASCAgent_authorizationPresenter_startCABLEAuthenticationWithCompletionHandler___block_invoke_446(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __81__ASCAgent_authorizationPresenter_startCABLEAuthenticationWithCompletionHandler___block_invoke_446_cold_1(a1, v2);
  }
}

void __81__ASCAgent_authorizationPresenter_startCABLEAuthenticationWithCompletionHandler___block_invoke_447(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      v9 = WeakRetained[23];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __81__ASCAgent_authorizationPresenter_startCABLEAuthenticationWithCompletionHandler___block_invoke_451;
      block[3] = &unk_1E815F9D0;
      v10 = v5;
      v20 = v10;
      os_activity_apply(v9, block);
      v11 = a1[5];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __81__ASCAgent_authorizationPresenter_startCABLEAuthenticationWithCompletionHandler___block_invoke_452;
      v14[3] = &unk_1E815FF38;
      objc_copyWeak(&v18, a1 + 7);
      v15 = a1[4];
      v17 = a1[6];
      v16 = a1[5];
      [v8 _prepareForAuthorizationRequestsForContext:v10 clientConnection:v11 withPresentationHandler:v14];

      objc_destroyWeak(&v18);
      v12 = v20;
    }

    else
    {
      v13 = a1[4];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __81__ASCAgent_authorizationPresenter_startCABLEAuthenticationWithCompletionHandler___block_invoke_450;
      v21[3] = &unk_1E815F9D0;
      v22 = v6;
      os_activity_apply(v13, v21);
      (*(a1[6] + 2))();
      v12 = v22;
    }
  }

  else
  {
    os_activity_apply(a1[4], &__block_literal_global_449);
    (*(a1[6] + 2))();
  }
}

void __81__ASCAgent_authorizationPresenter_startCABLEAuthenticationWithCompletionHandler___block_invoke_2()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __81__ASCAgent_authorizationPresenter_startCABLEAuthenticationWithCompletionHandler___block_invoke_2_cold_1();
  }
}

void __81__ASCAgent_authorizationPresenter_startCABLEAuthenticationWithCompletionHandler___block_invoke_450(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __81__ASCAgent_authorizationPresenter_startCABLEAuthenticationWithCompletionHandler___block_invoke_450_cold_1(a1, v2);
  }
}

uint64_t __81__ASCAgent_authorizationPresenter_startCABLEAuthenticationWithCompletionHandler___block_invoke_451(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1C20AD000, v2, OS_LOG_TYPE_INFO, "Beginning caBLE request: %{public}@", &v6, 0xCu);
  }

  result = [*(a1 + 32) logRequest];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void __81__ASCAgent_authorizationPresenter_startCABLEAuthenticationWithCompletionHandler___block_invoke_452(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (v5)
    {
      v8 = [ASCAuthorizationPresentationContext alloc];
      v9 = MEMORY[0x1E695DEF0];
      v10 = *(a1 + 40);
      if (v10)
      {
        [v10 auditToken];
      }

      else
      {
        memset(v15, 0, sizeof(v15));
      }

      v12 = [v9 dataWithBytes:v15 length:32];
      v13 = [(ASCAuthorizationPresentationContext *)v8 initWithRequestContext:v5 appIdentifier:0 shouldUseRelyingPartyForServiceName:1 auditTokenData:v12];

      [WeakRetained _configureLoginChoicesForPresentationContext:v13 withRequestContext:v5];
      (*(*(a1 + 48) + 16))(*(a1 + 48), v13, 0, v14);
    }

    else
    {
      v11 = *(a1 + 32);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __81__ASCAgent_authorizationPresenter_startCABLEAuthenticationWithCompletionHandler___block_invoke_456;
      block[3] = &unk_1E815F9D0;
      v17 = v6;
      os_activity_apply(v11, block);
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    os_activity_apply(*(a1 + 32), &__block_literal_global_455);
    (*(*(a1 + 48) + 16))();
  }
}

void __81__ASCAgent_authorizationPresenter_startCABLEAuthenticationWithCompletionHandler___block_invoke_2_453()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __81__ASCAgent_authorizationPresenter_startCABLEAuthenticationWithCompletionHandler___block_invoke_2_453_cold_1();
  }
}

void __81__ASCAgent_authorizationPresenter_startCABLEAuthenticationWithCompletionHandler___block_invoke_456(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __81__ASCAgent_authorizationPresenter_startCABLEAuthenticationWithCompletionHandler___block_invoke_456_cold_1(a1, v2);
  }
}

- (void)didFetchPlatformLoginChoices:(id)choices
{
  choicesCopy = choices;
  mEMORY[0x1E69C88E8] = [MEMORY[0x1E69C88E8] sharedProvider];
  cachedGroups = [mEMORY[0x1E69C88E8] cachedGroups];

  if ([cachedGroups count])
  {
    v6 = [choicesCopy safari_filterObjectsUsingBlock:&__block_literal_global_460];
  }

  else
  {
    v6 = choicesCopy;
  }

  platformLoginChoices = self->_platformLoginChoices;
  self->_platformLoginChoices = v6;

  didLoadPlatformCredentialsCallback = self->_didLoadPlatformCredentialsCallback;
  if (didLoadPlatformCredentialsCallback)
  {
    didLoadPlatformCredentialsCallback[2]();
    v9 = self->_didLoadPlatformCredentialsCallback;
    self->_didLoadPlatformCredentialsCallback = 0;
  }
}

BOOL __41__ASCAgent_didFetchPlatformLoginChoices___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isSharedCredential])
  {
    v3 = [MEMORY[0x1E69C88E8] sharedProvider];
    v4 = [v2 groupID];
    v5 = [v3 cachedGroupWithID:v4];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)didFetchSecurityKeyLoginChoices:(id)choices
{
  objc_storeStrong(&self->_securityKeyLoginChoices, choices);
  choicesCopy = choices;
  requestPresenter = self->_requestPresenter;
  v7 = [(ASCAgent *)self _allAvailableLoginChoicesForRequestContext:self->_requestContext];
  [(ASCAuthorizationPresenterHostProtocol *)requestPresenter updateInterfaceWithLoginChoices:v7];
}

- (void)requestPINWithRemainingRetries:(unint64_t)retries completionHandler:(id)handler
{
  aBlock = handler;
  userEnteredPINCallback = self->_userEnteredPINCallback;
  if (userEnteredPINCallback)
  {
    userEnteredPINCallback[2](userEnteredPINCallback, 0);
  }

  v6 = _Block_copy(aBlock);
  v7 = self->_userEnteredPINCallback;
  self->_userEnteredPINCallback = v6;

  [(ASCAuthorizationPresenterHostProtocol *)self->_requestPresenter presentPINEntryInterface];
}

- (void)requestNewPINWithMinLength:(unint64_t)length completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  userEnteredPINCallback = self->_userEnteredPINCallback;
  self->_userEnteredPINCallback = v6;

  requestPresenter = self->_requestPresenter;

  [(ASCAuthorizationPresenterHostProtocol *)requestPresenter presentNewPINEntryInterfaceWithMinLength:length];
}

- (void)didReceiveError:(int64_t)error
{
  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:error userInfo:0];
  if (error > 0x15)
  {
    goto LABEL_10;
  }

  if (((1 << error) & 0x300700) != 0)
  {
    (*(self->_pinResultCallback + 2))();
    goto LABEL_6;
  }

  if (((1 << error) & 0x2070) != 0)
  {
    [(ASCAuthorizationPresenterHostProtocol *)self->_requestPresenter updateInterfaceForUserVisibleError:v5];
    goto LABEL_6;
  }

  if (error != 7)
  {
LABEL_10:
    authorizationActivity = self->_authorizationActivity;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __28__ASCAgent_didReceiveError___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = error;
    os_activity_apply(authorizationActivity, block);
    goto LABEL_6;
  }

  if ([(ASCCredentialRequestContext *)self->_requestContext isCABLEAuthenticatorRequest])
  {
    [(ASCABLEAuthenticator *)self->_cableAuthenticator sendExcludedCredentialMatchError];
  }

LABEL_6:
}

void __28__ASCAgent_didReceiveError___block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __28__ASCAgent_didReceiveError___block_invoke_cold_1(a1);
  }
}

- (void)didEnterCorrectPIN
{
  pinResultCallback = self->_pinResultCallback;
  if (pinResultCallback)
  {
    pinResultCallback[2](pinResultCallback, 1, 0);
    v4 = self->_pinResultCallback;
    self->_pinResultCallback = 0;
  }
}

- (void)didCompleteRegistrationWithCredential:(id)credential error:(id)error
{
  credentialCopy = credential;
  errorCopy = error;
  if (self->_passkeyCredentialCallback)
  {
    requestTypes = [(ASCCredentialRequestContext *)self->_requestContext requestTypes];
    v8 = credentialCopy;
    if (credentialCopy && (requestTypes & 0x200) != 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && self->_passkeyAccountRegistrationUserState)
      {
        v9 = credentialCopy;
        v10 = [_TtC26AuthenticationServicesCore39ASCPlatformPublicKeyAccountRegistration alloc];
        emailAddress = [(ASCPasskeyAccountRegistrationUserState *)self->_passkeyAccountRegistrationUserState emailAddress];
        phoneNumber = [(ASCPasskeyAccountRegistrationUserState *)self->_passkeyAccountRegistrationUserState phoneNumber];
        unformattedInternationalStringValue = [phoneNumber unformattedInternationalStringValue];
        name = [(ASCPasskeyAccountRegistrationUserState *)self->_passkeyAccountRegistrationUserState name];
        credentialCopy = [(ASCPlatformPublicKeyAccountRegistration *)v10 initWithEmailIdentifier:emailAddress phoneIdentifier:unformattedInternationalStringValue name:name credentialRegistration:v9];

        passkeyAccountRegistrationUserState = self->_passkeyAccountRegistrationUserState;
        self->_passkeyAccountRegistrationUserState = 0;
      }

      v8 = credentialCopy;
    }

    credentialCopy = v8;
    (*(self->_passkeyCredentialCallback + 2))();
    passkeyCredentialCallback = self->_passkeyCredentialCallback;
    self->_passkeyCredentialCallback = 0;
  }

  else
  {
    [(ASCAgent *)self _authorizationCompletedWithCredential:credentialCopy error:errorCopy];
  }
}

- (void)didCompleteAssertionWithCredential:(id)credential error:(id)error
{
  credentialCopy = credential;
  errorCopy = error;
  passkeyCredentialCallback = self->_passkeyCredentialCallback;
  if (passkeyCredentialCallback)
  {
    passkeyCredentialCallback[2](passkeyCredentialCallback, credentialCopy, errorCopy);
    v9 = self->_passkeyCredentialCallback;
    self->_passkeyCredentialCallback = 0;
  }

  else
  {
    if ([(ASCCredentialRequestContext *)self->_requestContext requestStyle]!= 1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      [(ASCAgent *)self _authorizationCompletedWithCredential:credentialCopy error:errorCopy];
      goto LABEL_8;
    }

    requestPresenter = self->_requestPresenter;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__ASCAgent_didCompleteAssertionWithCredential_error___block_invoke;
    v11[3] = &unk_1E815FEC0;
    v11[4] = self;
    v12 = credentialCopy;
    v13 = errorCopy;
    [(ASCAuthorizationPresenterHostProtocol *)requestPresenter authorizationRequestFinishedWithCredential:v12 error:v13 completionHandler:v11];

    v9 = v12;
  }

LABEL_8:
}

- (void)_authorizationCompletedWithCredential:(id)credential error:(id)error
{
  credentialCopy = credential;
  errorCopy = error;
  if (![(ASCCredentialRequestContext *)self->_requestContext isCABLEAuthenticatorRequest])
  {
    authorizationActivity = self->_authorizationActivity;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__ASCAgent__authorizationCompletedWithCredential_error___block_invoke;
    block[3] = &unk_1E815FEC0;
    block[4] = self;
    v9 = credentialCopy;
    v72 = v9;
    errorCopy = errorCopy;
    v73 = errorCopy;
    os_activity_apply(authorizationActivity, block);
    publicKeyCredentialOperationUUID = self->_publicKeyCredentialOperationUUID;
    if (publicKeyCredentialOperationUUID)
    {
      publicKeyCredentialManager = self->_publicKeyCredentialManager;
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:12 userInfo:0];
      [(ASPublicKeyCredentialManagerInterface *)publicKeyCredentialManager cancelOperationIfNecessaryWithUUID:publicKeyCredentialOperationUUID overrideError:v12];
    }

    if ([errorCopy safari_matchesErrorDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" andCode:12])
    {
      os_activity_apply(self->_authorizationActivity, &__block_literal_global_466);
LABEL_44:

      goto LABEL_45;
    }

    globalFrameID = [(ASCCredentialRequestContext *)self->_requestContext globalFrameID];

    if (globalFrameID)
    {
      v14 = [(ASPublicKeyCredentialManagerInterface *)self->_publicKeyCredentialManager internalErrorToWKErrorIfApplicable:errorCopy];

      errorCopy = v14;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v9;
      if ([v15 isExternal])
      {
        rawClientDataJSON = [v15 rawClientDataJSON];

        if (!rawClientDataJSON)
        {
          v17 = self->_publicKeyCredentialManager;
          platformKeyCredentialAssertionOptions = [(ASCCredentialRequestContext *)self->_requestContext platformKeyCredentialAssertionOptions];
          [(ASPublicKeyCredentialManagerInterface *)v17 computeClientDataIfNeededForAssertionOptions:platformKeyCredentialAssertionOptions];

          platformKeyCredentialAssertionOptions2 = [(ASCCredentialRequestContext *)self->_requestContext platformKeyCredentialAssertionOptions];
          clientDataJSON = [platformKeyCredentialAssertionOptions2 clientDataJSON];
          [v15 setRawClientDataJSON:clientDataJSON];
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v9;
      if ([v21 isExternal])
      {
        rawClientDataJSON2 = [v21 rawClientDataJSON];

        if (!rawClientDataJSON2)
        {
          v23 = self->_publicKeyCredentialManager;
          platformKeyCredentialCreationOptions = [(ASCCredentialRequestContext *)self->_requestContext platformKeyCredentialCreationOptions];
          [(ASPublicKeyCredentialManagerInterface *)v23 computeClientDataIfNeededForCreationOptions:platformKeyCredentialCreationOptions];

          platformKeyCredentialCreationOptions2 = [(ASCCredentialRequestContext *)self->_requestContext platformKeyCredentialCreationOptions];
          clientDataJSON2 = [platformKeyCredentialCreationOptions2 clientDataJSON];
          [v21 setRawClientDataJSON:clientDataJSON2];
        }
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_23:
      isConditionalRegistrationRequest = [(ASCCredentialRequestContext *)self->_requestContext isConditionalRegistrationRequest];
      if (v9 && isConditionalRegistrationRequest)
      {
        v32 = v9;
        relyingPartyIdentifier = [v32 relyingPartyIdentifier];
        if (([v32 isExternal] & 1) == 0 && (objc_msgSend(relyingPartyIdentifier, "isEqualToString:", @"apple.com") & 1) == 0)
        {
          if (!self->_isClientEntitledWebBrowser)
          {
            clientApplicationIdentifier = self->_clientApplicationIdentifier;
            v70 = 0;
            v35 = [MEMORY[0x1E6963620] bundleRecordWithApplicationIdentifier:clientApplicationIdentifier error:&v70];
            v36 = v70;
            if (v35)
            {
              localizedName = [v35 localizedName];
              v38 = relyingPartyIdentifier;
              relyingPartyIdentifier = localizedName;
            }

            else
            {
              v43 = self->_authorizationActivity;
              v68[0] = MEMORY[0x1E69E9820];
              v68[1] = 3221225472;
              v68[2] = __56__ASCAgent__authorizationCompletedWithCredential_error___block_invoke_469;
              v68[3] = &unk_1E815F9D0;
              v69 = errorCopy;
              os_activity_apply(v43, v68);
              v38 = v69;
            }
          }

          mEMORY[0x1E69C89C0] = [MEMORY[0x1E69C89C0] sharedNotificationManager];
          relyingPartyIdentifier2 = [v32 relyingPartyIdentifier];
          platformKeyCredentialCreationOptions3 = [(ASCCredentialRequestContext *)self->_requestContext platformKeyCredentialCreationOptions];
          userName = [platformKeyCredentialCreationOptions3 userName];
          credentialID = [v32 credentialID];
          [mEMORY[0x1E69C89C0] scheduleAutomaticallyCreatedPasskeyNotificationWithServiceName:relyingPartyIdentifier relyingPartyID:relyingPartyIdentifier2 userName:userName credentialID:credentialID completionHandler:&__block_literal_global_473];
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v48 = v9;
        externalProviderBundleIdentifier = [v48 externalProviderBundleIdentifier];
        v50 = externalProviderBundleIdentifier;
        v51 = *MEMORY[0x1E69C8CC0];
        if (externalProviderBundleIdentifier)
        {
          v51 = externalProviderBundleIdentifier;
        }

        v52 = v51;

        signInEventCollector = self->_signInEventCollector;
        user = [v48 user];
        v55 = [(ASCAgent *)self _bundleIDFromAppID:self->_clientApplicationIdentifier];
        [(ASPasswordSignInEventCollector *)signInEventCollector didUseCredentialForUsername:user forHost:0 fromProviderWithBundleIdentifier:v52 inAppWithBundleIdentifier:v55 listenerEndpoint:0];
      }

      [(ASCAuthorizationPresenterHostProtocol *)self->_requestPresenter dismiss];
      if (self->_authorizationCompletionHandler)
      {
        v56 = self->_clientApplicationIdentifier;
        authorizationTrafficController = self->_authorizationTrafficController;
        authorizationTrafficControllerToken = self->_authorizationTrafficControllerToken;
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3221225472;
        v65[2] = __56__ASCAgent__authorizationCompletedWithCredential_error___block_invoke_2;
        v65[3] = &unk_1E815FEC0;
        v65[4] = self;
        v66 = v9;
        v67 = errorCopy;
        [(ASCAuthorizationTrafficController *)authorizationTrafficController endAuthorizationForAppIdentifier:v56 token:authorizationTrafficControllerToken clearanceHandler:v65];
      }

      [(ASCABLEClient *)self->_cableClient cancelIfNecessary];
      cableClient = self->_cableClient;
      self->_cableClient = 0;

      cableAuthenticator = self->_cableAuthenticator;
      self->_cableAuthenticator = 0;

      userEnteredPINCallback = self->_userEnteredPINCallback;
      if (userEnteredPINCallback)
      {
        userEnteredPINCallback[2](userEnteredPINCallback, 0);
        v62 = self->_userEnteredPINCallback;
        self->_userEnteredPINCallback = 0;
      }

      mEMORY[0x1E69C8DE0] = [MEMORY[0x1E69C8DE0] sharedManager];
      [mEMORY[0x1E69C8DE0] removeObserver:self];

      goto LABEL_44;
    }

    v27 = v9;
    selectedCredentialProviderExtensionIdentifier = [(ASCPasskeyAccountRegistrationUserState *)self->_passkeyAccountRegistrationUserState selectedCredentialProviderExtensionIdentifier];
    if (!selectedCredentialProviderExtensionIdentifier)
    {
      credentialRegistration = [v27 credentialRegistration];
      rawClientDataJSON3 = [credentialRegistration rawClientDataJSON];

      if (rawClientDataJSON3)
      {
        goto LABEL_22;
      }

      v39 = self->_publicKeyCredentialManager;
      platformKeyCredentialCreationOptions4 = [(ASCCredentialRequestContext *)self->_requestContext platformKeyCredentialCreationOptions];
      [(ASPublicKeyCredentialManagerInterface *)v39 computeClientDataIfNeededForCreationOptions:platformKeyCredentialCreationOptions4];

      selectedCredentialProviderExtensionIdentifier = [(ASCCredentialRequestContext *)self->_requestContext platformKeyCredentialCreationOptions];
      clientDataJSON3 = [selectedCredentialProviderExtensionIdentifier clientDataJSON];
      credentialRegistration2 = [v27 credentialRegistration];
      [credentialRegistration2 setRawClientDataJSON:clientDataJSON3];
    }

LABEL_22:
    goto LABEL_23;
  }

LABEL_45:
}

void __56__ASCAgent__authorizationCompletedWithCredential_error___block_invoke(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = v2;
    v7 = [v5 safari_privacyPreservingDescription];
    v8 = *(a1[4] + 176);
    v10 = 134218754;
    v11 = v3;
    v12 = 2114;
    v13 = v4;
    v14 = 2114;
    v15 = v7;
    v16 = 2114;
    v17 = v8;
    _os_log_impl(&dword_1C20AD000, v6, OS_LOG_TYPE_DEFAULT, "Completing authorization: %p %{public}@ %{public}@ %{public}@", &v10, 0x2Au);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __56__ASCAgent__authorizationCompletedWithCredential_error___block_invoke_464()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1C20AD000, v0, OS_LOG_TYPE_DEFAULT, "Received internal cancel. Dropping.", v1, 2u);
  }
}

void __56__ASCAgent__authorizationCompletedWithCredential_error___block_invoke_469(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __56__ASCAgent__authorizationCompletedWithCredential_error___block_invoke_469_cold_1(a1, v2);
  }
}

void __56__ASCAgent__authorizationCompletedWithCredential_error___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 184);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__ASCAgent__authorizationCompletedWithCredential_error___block_invoke_3;
  block[3] = &unk_1E815F9D0;
  block[4] = v2;
  os_activity_apply(v3, block);
  v4 = a1[5];
  v5 = a1[6];
  (*(*(a1[4] + 96) + 16))();
  v6 = a1[4];
  v7 = *(v6 + 96);
  *(v6 + 96) = 0;
}

void __56__ASCAgent__authorizationCompletedWithCredential_error___block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 64);
    v5 = 138477827;
    v6 = v3;
    _os_log_impl(&dword_1C20AD000, v2, OS_LOG_TYPE_DEFAULT, "Completed request for %{private}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  authorizationActivity = self->_authorizationActivity;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __19__ASCAgent_dealloc__block_invoke;
  block[3] = &unk_1E815F9D0;
  block[4] = self;
  os_activity_apply(authorizationActivity, block);
  v4 = self->_publicKeyCredentialOperationUUID;
  if (v4)
  {
    [(ASPublicKeyCredentialManagerInterface *)self->_publicKeyCredentialManager cancelOperationIfNecessaryWithUUID:v4 overrideError:0];
  }

  [(ASCAuthorizationTrafficController *)self->_authorizationTrafficController cancelAuthorizationForAppIdentifierIfNecessary:self->_clientApplicationIdentifier token:self->_authorizationTrafficControllerToken];

  v5.receiver = self;
  v5.super_class = ASCAgent;
  [(ASCAgent *)&v5 dealloc];
}

void __19__ASCAgent_dealloc__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134349056;
    v6 = v3;
    _os_log_impl(&dword_1C20AD000, v2, OS_LOG_TYPE_DEFAULT, "Dealloc for %{public}p. Cancelling any outstanding requests.", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (id)encodeMakeCredentialCTAPCommandForAuthenticatorWithUserVerificationAvailability:(unint64_t)availability authenticatorSupportedExtensions:(id)extensions
{
  extensionsCopy = extensions;
  publicKeyCredentialManager = self->_publicKeyCredentialManager;
  platformKeyCredentialCreationOptions = [(ASCCredentialRequestContext *)self->_requestContext platformKeyCredentialCreationOptions];
  if (platformKeyCredentialCreationOptions)
  {
    v9 = [(ASPublicKeyCredentialManagerInterface *)publicKeyCredentialManager encodeMakeCredentialCommandWithOptions:platformKeyCredentialCreationOptions authenticatorUserVerificationAvailability:availability authenticatorSupportedExtensions:extensionsCopy];
  }

  else
  {
    securityKeyCredentialCreationOptions = [(ASCCredentialRequestContext *)self->_requestContext securityKeyCredentialCreationOptions];
    v9 = [(ASPublicKeyCredentialManagerInterface *)publicKeyCredentialManager encodeMakeCredentialCommandWithOptions:securityKeyCredentialCreationOptions authenticatorUserVerificationAvailability:availability authenticatorSupportedExtensions:extensionsCopy];
  }

  return v9;
}

- (id)encodeGetAssertionCTAPCommandForAuthenticatorWithUserVerificationAvailability:(unint64_t)availability authenticatorSupportedExtensions:(id)extensions
{
  extensionsCopy = extensions;
  publicKeyCredentialManager = self->_publicKeyCredentialManager;
  platformKeyCredentialAssertionOptions = [(ASCCredentialRequestContext *)self->_requestContext platformKeyCredentialAssertionOptions];
  if (platformKeyCredentialAssertionOptions)
  {
    v9 = [(ASPublicKeyCredentialManagerInterface *)publicKeyCredentialManager encodeGetAssertionCommandWithOptions:platformKeyCredentialAssertionOptions authenticatorUserVerificationAvailability:availability authenticatorSupportedExtensions:extensionsCopy];
  }

  else
  {
    securityKeyCredentialAssertionOptions = [(ASCCredentialRequestContext *)self->_requestContext securityKeyCredentialAssertionOptions];
    v9 = [(ASPublicKeyCredentialManagerInterface *)publicKeyCredentialManager encodeGetAssertionCommandWithOptions:securityKeyCredentialAssertionOptions authenticatorUserVerificationAvailability:availability authenticatorSupportedExtensions:extensionsCopy];
  }

  return v9;
}

- (BOOL)_canCreateICloudKeychainPasskeyPreflightWithError:(id *)error
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_test_overrideCanCreateICloudKeychainPasskey && [MEMORY[0x1E69C8880] isInternalInstall])
  {
    v5 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v15 = "[ASCAgent _canCreateICloudKeychainPasskeyPreflightWithError:]";
      _os_log_impl(&dword_1C20AD000, v5, OS_LOG_TYPE_INFO, "Using test override for %s", buf, 0xCu);
    }

    result = [(NSNumber *)self->_test_overrideCanCreateICloudKeychainPasskey BOOLValue];
  }

  else
  {
    mEMORY[0x1E69C88B8] = [MEMORY[0x1E69C88B8] sharedMonitor];
    isKeychainSyncEnabled = [mEMORY[0x1E69C88B8] isKeychainSyncEnabled];

    if (isKeychainSyncEnabled)
    {
      result = 1;
    }

    else
    {
      os_activity_apply(self->_authorizationActivity, &__block_literal_global_477);
      v9 = MEMORY[0x1E696ABC0];
      v12 = *MEMORY[0x1E696A588];
      v13 = @"iCloud Keychain is off.";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      *error = [v9 errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:v10];

      result = 0;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void __62__ASCAgent__canCreateICloudKeychainPasskeyPreflightWithError___block_invoke()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __62__ASCAgent__canCreateICloudKeychainPasskeyPreflightWithError___block_invoke_cold_1();
  }
}

- (BOOL)_isConnection:(id)connection entitledToDeletePasskeysForRelyingParty:(id)party
{
  partyCopy = party;
  connectionCopy = connection;
  v7 = [connectionCopy safari_arrayForEntitlement:@"com.apple.private.authentication-services.delete-passkeys-by-rpid" containingObjectsOfClass:objc_opt_class()];

  if ([v7 count])
  {
    v8 = [v7 containsObject:partyCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_connection:(id)_connection hasEntitlement:(id)entitlement
{
  v14 = *MEMORY[0x1E69E9840];
  _connectionCopy = _connection;
  entitlementCopy = entitlement;
  if (-[NSDictionary count](self->_test_overrideEntitlements, "count") && [MEMORY[0x1E69C8880] isInternalInstall])
  {
    v8 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LODWORD(v13[0]) = 136315138;
      *(v13 + 4) = "[ASCAgent _connection:hasEntitlement:]";
      _os_log_impl(&dword_1C20AD000, v8, OS_LOG_TYPE_INFO, "Using test override for %s", v13, 0xCu);
    }

    HasEntitlement = [(NSDictionary *)self->_test_overrideEntitlements safari_BOOLForKey:entitlementCopy];
  }

  else
  {
    if (_connectionCopy)
    {
      [_connectionCopy auditToken];
    }

    else
    {
      memset(v13, 0, sizeof(v13));
    }

    HasEntitlement = WBSAuditTokenHasEntitlement();
  }

  v10 = HasEntitlement;

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)_isValidContext:(id)context
{
  v21 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (self->_test_overrideIsLAContextValid && [MEMORY[0x1E69C8880] isInternalInstall])
  {
    v5 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v20 = "[ASCAgent _isValidContext:]";
      _os_log_impl(&dword_1C20AD000, v5, OS_LOG_TYPE_INFO, "Using test override for %s", buf, 0xCu);
    }

    bOOLValue = [(NSNumber *)self->_test_overrideIsLAContextValid BOOLValue];
  }

  else
  {
    v7 = WBSAuthenticationPolicyForPasswordManager();
    v17 = &unk_1F41ABBC8;
    v18 = MEMORY[0x1E695E118];
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v16 = 0;
    v9 = [contextCopy evaluatePolicy:v7 options:v8 error:&v16];
    v10 = v16;

    bOOLValue = v9 != 0;
    if (!v9)
    {
      authorizationActivity = self->_authorizationActivity;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __28__ASCAgent__isValidContext___block_invoke;
      v14[3] = &unk_1E815F9D0;
      v15 = v10;
      os_activity_apply(authorizationActivity, v14);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

void __28__ASCAgent__isValidContext___block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __28__ASCAgent__isValidContext___block_invoke_cold_1(a1, v2);
  }
}

- (void)test_setOverrideEntitlements:(id)entitlements
{
  v4 = [entitlements copy];
  test_overrideEntitlements = self->_test_overrideEntitlements;
  self->_test_overrideEntitlements = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)test_setOverrideExtensionStates:(id)states
{
  v4 = [states copy];
  test_overrideExtensionStates = self->_test_overrideExtensionStates;
  self->_test_overrideExtensionStates = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)test_prepareForAuthorizationRequestsForContext:(id)context clientConnection:(id)connection withPresentationHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __100__ASCAgent_test_prepareForAuthorizationRequestsForContext_clientConnection_withPresentationHandler___block_invoke;
  v10[3] = &unk_1E815FF80;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(ASCAgent *)self _prepareForAuthorizationRequestsForContext:context clientConnection:connection withPresentationHandler:v10];
}

void __100__ASCAgent_test_prepareForAuthorizationRequestsForContext_clientConnection_withPresentationHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = v7[8];
  v9 = v7[1];
  v10 = v7[2];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __100__ASCAgent_test_prepareForAuthorizationRequestsForContext_clientConnection_withPresentationHandler___block_invoke_2;
  v14[3] = &unk_1E815FAD8;
  v11 = *(a1 + 40);
  v16 = v6;
  v17 = v11;
  v15 = v5;
  v12 = v6;
  v13 = v5;
  [v9 endAuthorizationForAppIdentifier:v8 token:v10 clearanceHandler:v14];
}

- (void)test_addCredentialProviderExtensionLoginChoiceWithName:(id)name extensionBundleID:(id)d containingAppBundleID:(id)iD
{
  test_credentialProviderExtensionLoginChoices = self->_test_credentialProviderExtensionLoginChoices;
  iDCopy = iD;
  dCopy = d;
  nameCopy = name;
  v11 = [[ASCCredentialProviderExtensionLoginChoice alloc] initWithProviderName:nameCopy providerBundleID:dCopy providerExtensionContainingAppBundleID:iDCopy];

  [(NSMutableArray *)test_credentialProviderExtensionLoginChoices addObject:v11];
}

- (void)test_addAutoFillEvent:(id)event url:(id)url
{
  signInEventCollector = self->_signInEventCollector;
  v6 = *MEMORY[0x1E69C8CC0];
  v7 = MEMORY[0x1E696AAE8];
  urlCopy = url;
  eventCopy = event;
  safari_safariApplicationPlatformBundleIdentifier = [v7 safari_safariApplicationPlatformBundleIdentifier];
  [(ASPasswordSignInEventCollector *)signInEventCollector didUseCredentialForUsername:eventCopy forURL:urlCopy fromProviderWithBundleIdentifier:v6 inBrowserWithBundleIdentifier:safari_safariApplicationPlatformBundleIdentifier listenerEndpoint:0];
}

+ (BOOL)isClientEntitledWebBrowserWithConnection:(id)connection testOptions:(id)options
{
  connectionCopy = connection;
  optionsCopy = options;
  LOBYTE(options) = _sSo8ASCAgentC26AuthenticationServicesCoreE26isClientEntitledWebBrowser10connection11testOptionsSbSo15NSXPCConnectionC_AC024ASCCredentialRequestTestL0CSgtFZ_0(connectionCopy, options);

  return options & 1;
}

+ (BOOL)isClientTCCAuthorizedWebBrowserWithConnection:(id)connection testOptions:(id)options
{
  connectionCopy = connection;
  optionsCopy = options;
  LOBYTE(options) = _sSo8ASCAgentC26AuthenticationServicesCoreE31isClientTCCAuthorizedWebBrowser10connection11testOptionsSbSo15NSXPCConnectionC_AC024ASCCredentialRequestTestL0CSgtFZ_0(connectionCopy, options);

  return options & 1;
}

+ (BOOL)validatePresenceOfTestOptions:(id)options
{
  optionsCopy = options;
  optionsCopy2 = options;
  LOBYTE(optionsCopy) = _sSo8ASCAgentC26AuthenticationServicesCoreE29validatePresenceOfTestOptionsySbAC020ASCCredentialRequesthI0CSgFZ_0(optionsCopy);

  return optionsCopy & 1;
}

void __83__ASCAgent_performAuthorizationRequestsForContext_withPresenter_completionHandler___block_invoke_63_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __83__ASCAgent_performAuthorizationRequestsForContext_withPresenter_completionHandler___block_invoke_2_72_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7(a1, a2);
  v4 = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1C20AD000, v5, v6, "Could not perform authorization: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __79__ASCAgent_performSilentAuthorizationRequestsForContext_withCompletionHandler___block_invoke_4_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_10(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __124__ASCAgent__requestConditionalRegistrationOnProvider_listenerEndpoint_presentationContext_requestContext_completionHandler___block_invoke_2_164_cold_1(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1C20AD000, v4, v5, "Lost connection to automatic passkey upgrade requester: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)getPasskeysDataForRelyingParty:withCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getPasskeysDataForRelyingParty:withCompletionHandler:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)deletePasskeyForRelyingParty:withCredentialID:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)deleteAllPasskeysForRelyingParty:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __72__ASCAgent__implicitlySelectAssertionLoginChoiceFromChoices_forContext___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7(a1, a2);
  [OUTLINED_FUNCTION_1() count];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1C20AD000, v4, v5, "Found unexpected number of login choices: %{public}ld", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void __72__ASCAgent__implicitlySelectAssertionLoginChoiceFromChoices_forContext___block_invoke_201_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_10(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __32__ASCAgent_cancelCurrentRequest__block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __96__ASCAgent__prepareForAuthorizationRequestsForContext_clientConnection_withPresentationHandler___block_invoke_4_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_userHasSignInWithAppleAccountForPresentingClientID
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *self;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_6();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x1E69E9840];
}

void __73__ASCAgent_browserPasskeysForRelyingParty_testOptions_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7(a1, a2);
  v4 = OUTLINED_FUNCTION_1();
  v5 = NSStringFromSelector(v4);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8(&dword_1C20AD000, v6, v7, "Rejecting invocation of restricted method %{public}@ from unentitled process.", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

void __31__ASCAgent__bundleIDFromAppID___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7(a1, a2);
  v4 = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1C20AD000, v5, v6, "Failed to get application bundle identifier with error: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __29__ASCAgent__teamIDfromAppID___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7(a1, a2);
  v4 = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1C20AD000, v5, v6, "Failed to get application team identifier with error: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __61__ASCAgent__performAuthKitAuthorizationValidationForAccount___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7(a1, a2);
  v4 = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1C20AD000, v5, v6, "Cannot perform AuthKit authorization due to error: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __64__ASCAgent__approvalStateForApplicationIdentifier_relyingParty___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7(a1, a2);
  v4 = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1C20AD000, v5, v6, "Error checking extension application identifier: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __64__ASCAgent__approvalStateForApplicationIdentifier_relyingParty___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7(a1, a2);
  v4 = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1C20AD000, v5, v6, "Error while waiting for site approval: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __87__ASCAgent__isClientWithApplicationIdentifier_properlyEntitledForRequestContext_error___block_invoke_378_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7(a1, a2);
  v4 = [OUTLINED_FUNCTION_1() relyingPartyIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1C20AD000, v5, v6, "Client attempted to make conditional request for non-associated rp: %{private}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __87__ASCAgent__isClientWithApplicationIdentifier_properlyEntitledForRequestContext_error___block_invoke_382_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7(a1, a2);
  [OUTLINED_FUNCTION_1() requestTypes];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1C20AD000, v4, v5, "Client attempted to make silent request for unsupported credential types: %{public}ld", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void __87__ASCAgent__isClientWithApplicationIdentifier_properlyEntitledForRequestContext_error___block_invoke_392_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_10(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __87__ASCAgent__isClientWithApplicationIdentifier_properlyEntitledForRequestContext_error___block_invoke_399_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7(a1, a2);
  [OUTLINED_FUNCTION_1() requestTypes];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8(&dword_1C20AD000, v4, v5, "Attempted to make a request of type %lx without setting relying party.", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void __87__ASCAgent__isClientWithApplicationIdentifier_properlyEntitledForRequestContext_error___block_invoke_415_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_10(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __112__ASCAgent__credentialRequestedForPasskeyAccountRegistrationLoginChoice_authenticatedContext_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void __81__ASCAgent_authorizationPresenter_startCABLEAuthenticationWithCompletionHandler___block_invoke_446_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7(a1, a2);
  v4 = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1C20AD000, v5, v6, "Failed to create caBLE authenticator: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __81__ASCAgent_authorizationPresenter_startCABLEAuthenticationWithCompletionHandler___block_invoke_450_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7(a1, a2);
  v4 = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1C20AD000, v5, v6, "Failed to start caBLE authenticator: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __81__ASCAgent_authorizationPresenter_startCABLEAuthenticationWithCompletionHandler___block_invoke_456_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7(a1, a2);
  v4 = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1C20AD000, v5, v6, "Failed to prepare for caBLE authorization: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __28__ASCAgent_didReceiveError___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_10(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __56__ASCAgent__authorizationCompletedWithCredential_error___block_invoke_469_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7(a1, a2);
  v4 = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1C20AD000, v5, v6, "Could not fetch application record for client: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __28__ASCAgent__isValidContext___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7(a1, a2);
  v4 = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1C20AD000, v5, v6, "Invalid LAContext provided: %{public}@.", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

@end