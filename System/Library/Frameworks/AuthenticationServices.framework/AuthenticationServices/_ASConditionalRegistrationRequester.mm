@interface _ASConditionalRegistrationRequester
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)credentialAuthenticationViewController:(id)a3 didFinishWithCredential:(id)a4 error:(id)a5 completion:(id)a6;
- (void)credentialAuthenticationViewController:(id)a3 didFinishWithPasskeyRegistrationCredential:(id)a4 error:(id)a5 completion:(id)a6;
- (void)requestAutomaticPasskeyUpgradeWithLoginChoice:(id)a3 completionHandler:(id)a4;
@end

@implementation _ASConditionalRegistrationRequester

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    [v7 auditToken];
  }

  v9 = *MEMORY[0x1E69C8AF0];
  HasEntitlement = WBSAuditTokenHasEntitlement();
  if (HasEntitlement)
  {
    v11 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2918020];
    v12 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    [v11 setClasses:v12 forSelector:sel_requestAutomaticPasskeyUpgradeWithLoginChoice_completionHandler_ argumentIndex:0 ofReply:0];

    [v8 setExportedInterface:v11];
    [v8 setExportedObject:self];
    [v8 resume];
  }

  else
  {
    v13 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_ASConditionalRegistrationRequester listener:v13 shouldAcceptNewConnection:?];
    }
  }

  return HasEntitlement;
}

- (void)requestAutomaticPasskeyUpgradeWithLoginChoice:(id)a3 completionHandler:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = [MEMORY[0x1E69C8DE0] sharedManager];
  v9 = [v8 getEnabledExtensionsSynchronously];

  v10 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v29 = self;
    aBlock = v7;
    v12 = 0;
    v13 = *v32;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v31 + 1) + 8 * i);
        v16 = [v6 externalCredentialProviderBundleID];
        v17 = [v15 sf_bundleIdentifierForContainingApp];
        v18 = [v16 isEqualToString:v17];

        if (v18)
        {
          v19 = v15;

          v12 = v19;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v11);

    if (v12)
    {
      v20 = [MEMORY[0x1E69C8DE0] sharedManager];
      v21 = [v20 extensionSupportsPasskeys:v12];

      v7 = aBlock;
      if (v21)
      {
        v22 = _Block_copy(aBlock);
        registrationHandler = v29->_registrationHandler;
        v29->_registrationHandler = v22;

        v24 = [[ASPasskeyCredentialRequest alloc] initWithLoginChoice:v6 registrationExtensionInput:0];
        v25 = [[_ASCredentialAuthenticationViewController alloc] initWithExtension:v12 passkeyRegistrationRequest:v24 forConditionalRegistration:1];
        credentialProviderViewController = v29->_credentialProviderViewController;
        v29->_credentialProviderViewController = v25;

        [(_ASCredentialAuthenticationViewController *)v29->_credentialProviderViewController setDelegate:v29];
        goto LABEL_18;
      }
    }

    else
    {
      v7 = aBlock;
    }
  }

  else
  {

    v12 = 0;
  }

  v27 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
  {
    [_ASConditionalRegistrationRequester requestAutomaticPasskeyUpgradeWithLoginChoice:v27 completionHandler:?];
  }

  v24 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E698DF70] code:1 userInfo:0];
  (*(v7 + 2))(v7, 0, v24);
LABEL_18:

  v28 = *MEMORY[0x1E69E9840];
}

- (void)credentialAuthenticationViewController:(id)a3 didFinishWithPasskeyRegistrationCredential:(id)a4 error:(id)a5 completion:(id)a6
{
  v9 = MEMORY[0x1E698DFE8];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [v9 alloc];
  v14 = [v12 relyingParty];
  v15 = [v12 attestationObject];
  v16 = [v12 credentialID];

  v17 = +[ASPasskeyRegistrationCredential _defaultTransports];
  LOBYTE(v19) = 1;
  v20 = [v13 initWithRelyingPartyIdentifier:v14 attestationObject:v15 rawClientDataJSON:0 credentialID:v16 transports:v17 extensions:0 attachment:*MEMORY[0x1E698DF88] isExternal:v19];

  (*(self->_registrationHandler + 2))();
  v10[2](v10);

  credentialProviderViewController = self->_credentialProviderViewController;
  self->_credentialProviderViewController = 0;
}

- (void)credentialAuthenticationViewController:(id)a3 didFinishWithCredential:(id)a4 error:(id)a5 completion:(id)a6
{
  if (a4 || !a5)
  {
    v12 = *(a6 + 2);
    v13 = a6;
    v12();
    credentialProviderViewController = v13;
  }

  else
  {
    registrationHandler = self->_registrationHandler;
    v9 = registrationHandler[2];
    v10 = a6;
    v9(registrationHandler, 0, a5);
    v10[2](v10);

    credentialProviderViewController = self->_credentialProviderViewController;
    self->_credentialProviderViewController = 0;
  }
}

@end