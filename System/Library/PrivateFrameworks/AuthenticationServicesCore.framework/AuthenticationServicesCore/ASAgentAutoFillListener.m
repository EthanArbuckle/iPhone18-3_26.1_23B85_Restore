@interface ASAgentAutoFillListener
- (ASAgentAutoFillListener)initWithPublicKeyCredentialManager:(id)a3 signInEventCollector:(id)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)completeAssertionWithExternalPasskeyForApplicationIdentifier:(id)a3 relyingPartyIdentifier:(id)a4 authenticatorData:(id)a5 signature:(id)a6 userHandle:(id)a7 credentialID:(id)a8;
- (void)completeAssertionWithExternalPasskeyForWebFrameIdentifier:(id)a3 relyingPartyIdentifier:(id)a4 authenticatorData:(id)a5 signature:(id)a6 userHandle:(id)a7 credentialID:(id)a8;
- (void)didFillCredentialForUsername:(id)a3 forURL:(id)a4 fromProviderWithBundleIdentifier:(id)a5 inBrowserWithBundleIdentifier:(id)a6 listenerEndpoint:(id)a7;
- (void)getPasskeysForRunningAssertionWithApplicationIdentifier:(id)a3 withCompletionHandler:(id)a4;
- (void)getPasskeysForRunningAssertionWithWebFrameIdentifier:(id)a3 completionHandler:(id)a4;
- (void)isOrigin:(id)a3 relatedToRelyingPartyIdentifier:(id)a4 completionHandler:(id)a5;
- (void)newPasskeysAvailableForApplicationIdentifier:(id)a3;
- (void)test_createPasskeyWithUserName:(id)a3 displayName:(id)a4 relyingPartyIdentifier:(id)a5 userHandle:(id)a6 completionHandler:(id)a7;
- (void)userSelectedAutoFillNearbyDevice:(id)a3 completionHandler:(id)a4;
- (void)userSelectedAutoFillPasskey:(id)a3 authenticatedLAContext:(id)a4 savedAccountContext:(id)a5 completionHandler:(id)a6;
@end

@implementation ASAgentAutoFillListener

- (ASAgentAutoFillListener)initWithPublicKeyCredentialManager:(id)a3 signInEventCollector:(id)a4
{
  v7 = a3;
  v8 = a4;
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
    objc_storeStrong(&v9->_publicKeyCredentialManager, a3);
    [v7 setPasskeyAutoFillManagerDelegate:v9];
    v14 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    weakActiveConnections = v9->_weakActiveConnections;
    v9->_weakActiveConnections = v14;

    v9->_internalLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_signInEventCollector, a4);
    [(NSXPCListener *)v9->_listener resume];
    v16 = v9;
  }

  return v9;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v14 = 0u;
  v15 = 0u;
  if (v7)
  {
    [v7 auditToken];
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

- (void)getPasskeysForRunningAssertionWithApplicationIdentifier:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696B0B8] currentConnection];
  v9 = v8;
  if (v8)
  {
    [v8 auditToken];
    if ((WBSAuditTokenHasEntitlement() & 1) == 0)
    {
      [v9 auditToken];
      goto LABEL_6;
    }

LABEL_7:
    v10 = [(ASPublicKeyCredentialManagerInterface *)self->_publicKeyCredentialManager autoFillOperationUUIDForApplicationIdentifier:v6, v15, v16];
    if (v10)
    {
      v11 = [(ASPublicKeyCredentialManagerInterface *)self->_publicKeyCredentialManager autoFillPasskeysForOperationUUID:v10];
      v12 = [v11 first];
      v13 = [v11 second];
      v7[2](v7, v12, v13);
    }

    else
    {
      v7[2](v7, MEMORY[0x1E695E0F0], 0);
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

  v7[2](v7, MEMORY[0x1E695E0F0], 0);
LABEL_14:
}

- (void)getPasskeysForRunningAssertionWithWebFrameIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696B0B8] currentConnection];
  v9 = v8;
  if (v8)
  {
    [v8 auditToken];
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  if (isClientWithAuditTokenProperlyEntitled(v16))
  {
    v10 = [[ASGlobalFrameIdentifier alloc] initWithCoreFrameIdentifier:v6];
    v11 = [(ASPublicKeyCredentialManagerInterface *)self->_publicKeyCredentialManager autoFillOperationUUIDForWebFrameIdentifier:v10];
    if (v11)
    {
      v12 = [(ASPublicKeyCredentialManagerInterface *)self->_publicKeyCredentialManager autoFillPasskeysForOperationUUID:v11];
      v13 = [v12 first];
      v14 = [v12 second];
      v7[2](v7, v13, v14);
    }

    else
    {
      v7[2](v7, MEMORY[0x1E695E0F0], 0);
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

    v7[2](v7, MEMORY[0x1E695E0F0], 0);
  }
}

- (void)userSelectedAutoFillPasskey:(id)a3 authenticatedLAContext:(id)a4 savedAccountContext:(id)a5 completionHandler:(id)a6
{
  publicKeyCredentialManager = self->_publicKeyCredentialManager;
  v15 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v12 identifier];
  v14 = [v12 operationUUID];

  [(ASPublicKeyCredentialManagerInterface *)publicKeyCredentialManager assertUsingAutoFillPasskeyWithIdentifier:v13 authenticatedContext:v11 savedAccountContext:v10 forOperationUUID:v14];
  v15[2]();
}

- (void)userSelectedAutoFillNearbyDevice:(id)a3 completionHandler:(id)a4
{
  publicKeyCredentialManager = self->_publicKeyCredentialManager;
  v6 = a4;
  v7 = [a3 operationUUID];
  [(ASPublicKeyCredentialManagerInterface *)publicKeyCredentialManager presentCABLESheetForOperationUUID:v7 withCompletionHandler:v6];
}

- (void)test_createPasskeyWithUserName:(id)a3 displayName:(id)a4 relyingPartyIdentifier:(id)a5 userHandle:(id)a6 completionHandler:(id)a7
{
  v41[1] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v37 = a4;
  v36 = a5;
  v35 = a6;
  v14 = a7;
  v15 = +[ASFeatureManager sharedManager];
  v16 = [MEMORY[0x1E696B0B8] currentConnection];
  v17 = v16;
  if (v16)
  {
    [v16 auditToken];
  }

  else
  {
    memset(v40, 0, sizeof(v40));
  }

  v18 = [v15 isClientEntitledForInternalTestingWithAuditToken:v40];

  if (v18)
  {
    v19 = [ASCPublicKeyCredentialCreationOptions alloc];
    v20 = [MEMORY[0x1E696AFB0] UUID];
    v21 = [v20 UUIDString];
    v22 = [v21 dataUsingEncoding:4];
    v41[0] = &unk_1F41ABBB0;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
    v23 = v34 = self;
    v25 = v36;
    v24 = v37;
    v26 = v13;
    v27 = v13;
    v28 = v35;
    v29 = [(ASCPublicKeyCredentialCreationOptions *)v19 initWithChallenge:v22 clientDataJSON:0 clientDataHash:0 relyingPartyIdentifier:v36 userName:v27 userIdentifier:v35 userDisplayName:v37 supportedAlgorithmIdentifiers:v23 attestationPreference:@"none" userVerificationPreference:0 excludedCredentials:0 extensions:0 origin:0];

    v30 = objc_alloc_init(ASPublicKeyCredentialOperationTestDelegate);
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __122__ASAgentAutoFillListener_test_createPasskeyWithUserName_displayName_relyingPartyIdentifier_userHandle_completionHandler___block_invoke;
    v38[3] = &unk_1E815FA38;
    v39 = v14;
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

    (*(v14 + 2))(v14, 0);
    v26 = v13;
    v25 = v36;
    v24 = v37;
    v28 = v35;
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

- (void)completeAssertionWithExternalPasskeyForWebFrameIdentifier:(id)a3 relyingPartyIdentifier:(id)a4 authenticatorData:(id)a5 signature:(id)a6 userHandle:(id)a7 credentialID:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  LOBYTE(v20) = 1;
  v21 = [[ASCPlatformPublicKeyCredentialAssertion alloc] initWithRelyingPartyIdentifier:v18 authenticatorData:v17 signature:v16 userHandle:v15 rawClientDataJSON:0 credentialID:v14 extensions:0 attachment:@"platform" isExternal:v20];

  [(ASPublicKeyCredentialManagerInterface *)self->_publicKeyCredentialManager completeAssertionWithExternalPasskeyForWebFrameIdentifier:v19 usingCredential:v21];
}

- (void)completeAssertionWithExternalPasskeyForApplicationIdentifier:(id)a3 relyingPartyIdentifier:(id)a4 authenticatorData:(id)a5 signature:(id)a6 userHandle:(id)a7 credentialID:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  LOBYTE(v20) = 1;
  v21 = [[ASCPlatformPublicKeyCredentialAssertion alloc] initWithRelyingPartyIdentifier:v18 authenticatorData:v17 signature:v16 userHandle:v15 rawClientDataJSON:0 credentialID:v14 extensions:0 attachment:@"platform" isExternal:v20];

  [(ASPublicKeyCredentialManagerInterface *)self->_publicKeyCredentialManager completeAssertionWithExternalPasskeyForApplicationIdentifier:v19 usingCredential:v21];
}

- (void)didFillCredentialForUsername:(id)a3 forURL:(id)a4 fromProviderWithBundleIdentifier:(id)a5 inBrowserWithBundleIdentifier:(id)a6 listenerEndpoint:(id)a7
{
  if (a4)
  {
    signInEventCollector = self->_signInEventCollector;

    [ASPasswordSignInEventCollector didUseCredentialForUsername:"didUseCredentialForUsername:forURL:fromProviderWithBundleIdentifier:inBrowserWithBundleIdentifier:listenerEndpoint:" forURL:a3 fromProviderWithBundleIdentifier:? inBrowserWithBundleIdentifier:? listenerEndpoint:?];
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

- (void)isOrigin:(id)a3 relatedToRelyingPartyIdentifier:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(_TtC26AuthenticationServicesCore23ASCRelatedOriginFetcher);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__ASAgentAutoFillListener_isOrigin_relatedToRelyingPartyIdentifier_completionHandler___block_invoke;
  v12[3] = &unk_1E815FA60;
  v13 = v7;
  v11 = v7;
  [(ASCRelatedOriginFetcher *)v10 isOrigin:v9 relatedToRelyingPartyIdentifier:v8 completionHandler:v12];
}

- (void)newPasskeysAvailableForApplicationIdentifier:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v19 = v4;
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

        v11 = [*(*(&v13 + 1) + 8 * v10) remoteObjectProxy];
        [v11 newPasskeysAvailableForApplicationIdentifier:v4];

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