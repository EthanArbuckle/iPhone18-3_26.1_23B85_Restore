@interface ASAgentAutoFillListener
- (ASAgentAutoFillListener)initWithPublicKeyCredentialManager:(id)manager signInEventCollector:(id)collector;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)completeAssertionWithExternalPasskeyForApplicationIdentifier:(id)identifier relyingPartyIdentifier:(id)partyIdentifier authenticatorData:(id)data signature:(id)signature userHandle:(id)handle credentialID:(id)d;
- (void)completeAssertionWithExternalPasskeyForWebFrameIdentifier:(id)identifier relyingPartyIdentifier:(id)partyIdentifier authenticatorData:(id)data signature:(id)signature userHandle:(id)handle credentialID:(id)d;
- (void)didFillCredentialForUsername:(id)username forURL:(id)l fromProviderWithBundleIdentifier:(id)identifier inBrowserWithBundleIdentifier:(id)bundleIdentifier listenerEndpoint:(id)endpoint;
- (void)getPasskeysForRunningAssertionWithApplicationIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)getPasskeysForRunningAssertionWithWebFrameIdentifier:(id)identifier completionHandler:(id)handler;
- (void)isOrigin:(id)origin relatedToRelyingPartyIdentifier:(id)identifier completionHandler:(id)handler;
- (void)newPasskeysAvailableForApplicationIdentifier:(id)identifier;
- (void)test_createPasskeyWithUserName:(id)name displayName:(id)displayName relyingPartyIdentifier:(id)identifier userHandle:(id)handle completionHandler:(id)handler;
- (void)userSelectedAutoFillNearbyDevice:(id)device completionHandler:(id)handler;
- (void)userSelectedAutoFillPasskey:(id)passkey authenticatedLAContext:(id)context savedAccountContext:(id)accountContext completionHandler:(id)handler;
@end

@implementation ASAgentAutoFillListener

- (ASAgentAutoFillListener)initWithPublicKeyCredentialManager:(id)manager signInEventCollector:(id)collector
{
  managerCopy = manager;
  collectorCopy = collector;
  v18.receiver = self;
  v18.super_class = ASAgentAutoFillListener;
  v9 = [(ASAgentAutoFillListener *)&v18 init];
  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x1E696B0D8]);
    v11 = WBSAuthenticationServicesAgentAutoFillServiceName();
    v12 = [v10 initWithMachServiceName:v11];
    listener = v9->_listener;
    v9->_listener = v12;

    [(NSXPCListener *)v9->_listener setDelegate:v9];
    objc_storeStrong(&v9->_publicKeyCredentialManager, manager);
    [managerCopy setPasskeyAutoFillManagerDelegate:v9];
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    weakActiveConnections = v9->_weakActiveConnections;
    v9->_weakActiveConnections = weakObjectsHashTable;

    v9->_internalLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_signInEventCollector, collector);
    [(NSXPCListener *)v9->_listener resume];
    v16 = v9;
  }

  return v9;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = connectionCopy;
  v14 = 0u;
  v15 = 0u;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  v13[0] = v14;
  v13[1] = v15;
  v9 = isClientWithAuditTokenProperlyEntitled(v13);
  if (v9)
  {
    os_unfair_lock_lock(&self->_internalLock);
    [(NSHashTable *)self->_weakActiveConnections addObject:v8];
    os_unfair_lock_unlock(&self->_internalLock);
    v10 = WBSAuthenticationServicesAgentDelegateInterface();
    [v8 setRemoteObjectInterface:v10];

    v11 = WBSAuthenticationServicesAgentInterface();
    [v8 setExportedInterface:v11];

    [v8 setExportedObject:self];
    [v8 resume];
  }

  return v9;
}

- (void)getPasskeysForRunningAssertionWithApplicationIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v9 = currentConnection;
  if (currentConnection)
  {
    [currentConnection auditToken];
    if ((WBSAuditTokenHasEntitlement() & 1) == 0)
    {
      [v9 auditToken];
      goto LABEL_6;
    }

LABEL_7:
    v10 = [(ASPublicKeyCredentialManagerInterface *)self->_publicKeyCredentialManager autoFillOperationUUIDForApplicationIdentifier:identifierCopy, v15, v16];
    if (v10)
    {
      v11 = [(ASPublicKeyCredentialManagerInterface *)self->_publicKeyCredentialManager autoFillPasskeysForOperationUUID:v10];
      first = [v11 first];
      second = [v11 second];
      handlerCopy[2](handlerCopy, first, second);
    }

    else
    {
      handlerCopy[2](handlerCopy, MEMORY[0x1E695E0F0], 0);
    }

    goto LABEL_14;
  }

  v15 = 0u;
  v16 = 0u;
  if (WBSAuditTokenHasEntitlement())
  {
    goto LABEL_7;
  }

  v15 = 0u;
  v16 = 0u;
LABEL_6:
  if (isClientWithAuditTokenProperlyEntitled(&v15))
  {
    goto LABEL_7;
  }

  v14 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_1C20AD000, v14, OS_LOG_TYPE_DEFAULT, "Rejecting unentitled process from requesting passkeys.", &v15, 2u);
  }

  handlerCopy[2](handlerCopy, MEMORY[0x1E695E0F0], 0);
LABEL_14:
}

- (void)getPasskeysForRunningAssertionWithWebFrameIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v9 = currentConnection;
  if (currentConnection)
  {
    [currentConnection auditToken];
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  if (isClientWithAuditTokenProperlyEntitled(v16))
  {
    v10 = [[ASGlobalFrameIdentifier alloc] initWithCoreFrameIdentifier:identifierCopy];
    v11 = [(ASPublicKeyCredentialManagerInterface *)self->_publicKeyCredentialManager autoFillOperationUUIDForWebFrameIdentifier:v10];
    if (v11)
    {
      v12 = [(ASPublicKeyCredentialManagerInterface *)self->_publicKeyCredentialManager autoFillPasskeysForOperationUUID:v11];
      first = [v12 first];
      second = [v12 second];
      handlerCopy[2](handlerCopy, first, second);
    }

    else
    {
      handlerCopy[2](handlerCopy, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    v15 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16[0]) = 0;
      _os_log_impl(&dword_1C20AD000, v15, OS_LOG_TYPE_DEFAULT, "Rejecting unentitled process from requesting passkeys.", v16, 2u);
    }

    handlerCopy[2](handlerCopy, MEMORY[0x1E695E0F0], 0);
  }
}

- (void)userSelectedAutoFillPasskey:(id)passkey authenticatedLAContext:(id)context savedAccountContext:(id)accountContext completionHandler:(id)handler
{
  publicKeyCredentialManager = self->_publicKeyCredentialManager;
  handlerCopy = handler;
  accountContextCopy = accountContext;
  contextCopy = context;
  passkeyCopy = passkey;
  identifier = [passkeyCopy identifier];
  operationUUID = [passkeyCopy operationUUID];

  [(ASPublicKeyCredentialManagerInterface *)publicKeyCredentialManager assertUsingAutoFillPasskeyWithIdentifier:identifier authenticatedContext:contextCopy savedAccountContext:accountContextCopy forOperationUUID:operationUUID];
  handlerCopy[2]();
}

- (void)userSelectedAutoFillNearbyDevice:(id)device completionHandler:(id)handler
{
  publicKeyCredentialManager = self->_publicKeyCredentialManager;
  handlerCopy = handler;
  operationUUID = [device operationUUID];
  [(ASPublicKeyCredentialManagerInterface *)publicKeyCredentialManager presentCABLESheetForOperationUUID:operationUUID withCompletionHandler:handlerCopy];
}

- (void)test_createPasskeyWithUserName:(id)name displayName:(id)displayName relyingPartyIdentifier:(id)identifier userHandle:(id)handle completionHandler:(id)handler
{
  v41[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  displayNameCopy = displayName;
  identifierCopy = identifier;
  handleCopy = handle;
  handlerCopy = handler;
  v15 = +[ASFeatureManager sharedManager];
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v17 = currentConnection;
  if (currentConnection)
  {
    [currentConnection auditToken];
  }

  else
  {
    memset(v40, 0, sizeof(v40));
  }

  v18 = [v15 isClientEntitledForInternalTestingWithAuditToken:v40];

  if (v18)
  {
    v19 = [ASCPublicKeyCredentialCreationOptions alloc];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v22 = [uUIDString dataUsingEncoding:4];
    v41[0] = &unk_1F41ABBB0;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
    v23 = v34 = self;
    v25 = identifierCopy;
    v24 = displayNameCopy;
    v26 = nameCopy;
    v27 = nameCopy;
    v28 = handleCopy;
    v29 = [(ASCPublicKeyCredentialCreationOptions *)v19 initWithChallenge:v22 clientDataJSON:0 clientDataHash:0 relyingPartyIdentifier:identifierCopy userName:v27 userIdentifier:handleCopy userDisplayName:displayNameCopy supportedAlgorithmIdentifiers:v23 attestationPreference:@"none" userVerificationPreference:0 excludedCredentials:0 extensions:0 origin:0];

    v30 = objc_alloc_init(ASPublicKeyCredentialOperationTestDelegate);
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __122__ASAgentAutoFillListener_test_createPasskeyWithUserName_displayName_relyingPartyIdentifier_userHandle_completionHandler___block_invoke;
    v38[3] = &unk_1E815FA38;
    v39 = handlerCopy;
    [(ASPublicKeyCredentialOperationTestDelegate *)v30 setDidCompletionRegistrationCallback:v38];
    v31 = [(ASPublicKeyCredentialManagerInterface *)v34->_publicKeyCredentialManager createNewPlatformCredentialWithOptions:v29 authenticatedContext:0 delegate:v30 webFrameIdentifier:0 parentActivity:MEMORY[0x1E69E9C00] isConditionalRegistration:0 testOptions:0];
  }

  else
  {
    v32 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      [ASAgentAutoFillListener test_createPasskeyWithUserName:v32 displayName:a2 relyingPartyIdentifier:? userHandle:? completionHandler:?];
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
    v26 = nameCopy;
    v25 = identifierCopy;
    v24 = displayNameCopy;
    v28 = handleCopy;
  }

  v33 = *MEMORY[0x1E69E9840];
}

void __122__ASAgentAutoFillListener_test_createPasskeyWithUserName_displayName_relyingPartyIdentifier_userHandle_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_1C20AD000, v7, OS_LOG_TYPE_INFO, "Test passkey creation completed: %{public}@ %{public}@", &v9, 0x16u);
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v5 != 0);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)completeAssertionWithExternalPasskeyForWebFrameIdentifier:(id)identifier relyingPartyIdentifier:(id)partyIdentifier authenticatorData:(id)data signature:(id)signature userHandle:(id)handle credentialID:(id)d
{
  dCopy = d;
  handleCopy = handle;
  signatureCopy = signature;
  dataCopy = data;
  partyIdentifierCopy = partyIdentifier;
  identifierCopy = identifier;
  LOBYTE(v20) = 1;
  v21 = [[ASCPlatformPublicKeyCredentialAssertion alloc] initWithRelyingPartyIdentifier:partyIdentifierCopy authenticatorData:dataCopy signature:signatureCopy userHandle:handleCopy rawClientDataJSON:0 credentialID:dCopy extensions:0 attachment:@"platform" isExternal:v20];

  [(ASPublicKeyCredentialManagerInterface *)self->_publicKeyCredentialManager completeAssertionWithExternalPasskeyForWebFrameIdentifier:identifierCopy usingCredential:v21];
}

- (void)completeAssertionWithExternalPasskeyForApplicationIdentifier:(id)identifier relyingPartyIdentifier:(id)partyIdentifier authenticatorData:(id)data signature:(id)signature userHandle:(id)handle credentialID:(id)d
{
  dCopy = d;
  handleCopy = handle;
  signatureCopy = signature;
  dataCopy = data;
  partyIdentifierCopy = partyIdentifier;
  identifierCopy = identifier;
  LOBYTE(v20) = 1;
  v21 = [[ASCPlatformPublicKeyCredentialAssertion alloc] initWithRelyingPartyIdentifier:partyIdentifierCopy authenticatorData:dataCopy signature:signatureCopy userHandle:handleCopy rawClientDataJSON:0 credentialID:dCopy extensions:0 attachment:@"platform" isExternal:v20];

  [(ASPublicKeyCredentialManagerInterface *)self->_publicKeyCredentialManager completeAssertionWithExternalPasskeyForApplicationIdentifier:identifierCopy usingCredential:v21];
}

- (void)didFillCredentialForUsername:(id)username forURL:(id)l fromProviderWithBundleIdentifier:(id)identifier inBrowserWithBundleIdentifier:(id)bundleIdentifier listenerEndpoint:(id)endpoint
{
  if (l)
  {
    signInEventCollector = self->_signInEventCollector;

    [ASPasswordSignInEventCollector didUseCredentialForUsername:"didUseCredentialForUsername:forURL:fromProviderWithBundleIdentifier:inBrowserWithBundleIdentifier:listenerEndpoint:" forURL:username fromProviderWithBundleIdentifier:? inBrowserWithBundleIdentifier:? listenerEndpoint:?];
  }

  else
  {
    v9 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ASAgentAutoFillListener didFillCredentialForUsername:v9 forURL:? fromProviderWithBundleIdentifier:? inBrowserWithBundleIdentifier:? listenerEndpoint:?];
    }
  }
}

- (void)isOrigin:(id)origin relatedToRelyingPartyIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  originCopy = origin;
  v10 = objc_alloc_init(_TtC26AuthenticationServicesCore23ASCRelatedOriginFetcher);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__ASAgentAutoFillListener_isOrigin_relatedToRelyingPartyIdentifier_completionHandler___block_invoke;
  v12[3] = &unk_1E815FA60;
  v13 = handlerCopy;
  v11 = handlerCopy;
  [(ASCRelatedOriginFetcher *)v10 isOrigin:originCopy relatedToRelyingPartyIdentifier:identifierCopy completionHandler:v12];
}

- (void)newPasskeysAvailableForApplicationIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v19 = identifierCopy;
    _os_log_impl(&dword_1C20AD000, v5, OS_LOG_TYPE_INFO, "Passkeys loaded for %{public}@", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_internalLock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_weakActiveConnections;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        remoteObjectProxy = [*(*(&v13 + 1) + 8 * v10) remoteObjectProxy];
        [remoteObjectProxy newPasskeysAvailableForApplicationIdentifier:identifierCopy];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_internalLock);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)test_createPasskeyWithUserName:(void *)a1 displayName:(const char *)a2 relyingPartyIdentifier:userHandle:completionHandler:.cold.1(void *a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  v6 = 138543362;
  v7 = v4;
  _os_log_fault_impl(&dword_1C20AD000, v3, OS_LOG_TYPE_FAULT, "Rejecting invocation of restricted method %{public}@ from unentitled process.", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)didFillCredentialForUsername:(os_log_t)log forURL:fromProviderWithBundleIdentifier:inBrowserWithBundleIdentifier:listenerEndpoint:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "[ASAgentAutoFillListener didFillCredentialForUsername:forURL:fromProviderWithBundleIdentifier:inBrowserWithBundleIdentifier:listenerEndpoint:]";
  _os_log_error_impl(&dword_1C20AD000, log, OS_LOG_TYPE_ERROR, "Nil URL passed to %s", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end