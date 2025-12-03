@interface _ASConditionalRegistrationRequester
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)credentialAuthenticationViewController:(id)controller didFinishWithCredential:(id)credential error:(id)error completion:(id)completion;
- (void)credentialAuthenticationViewController:(id)controller didFinishWithPasskeyRegistrationCredential:(id)credential error:(id)error completion:(id)completion;
- (void)requestAutomaticPasskeyUpgradeWithLoginChoice:(id)choice completionHandler:(id)handler;
@end

@implementation _ASConditionalRegistrationRequester

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = connectionCopy;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
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

- (void)requestAutomaticPasskeyUpgradeWithLoginChoice:(id)choice completionHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  choiceCopy = choice;
  handlerCopy = handler;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  mEMORY[0x1E69C8DE0] = [MEMORY[0x1E69C8DE0] sharedManager];
  getEnabledExtensionsSynchronously = [mEMORY[0x1E69C8DE0] getEnabledExtensionsSynchronously];

  v10 = [getEnabledExtensionsSynchronously countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    selfCopy = self;
    aBlock = handlerCopy;
    v12 = 0;
    v13 = *v32;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(getEnabledExtensionsSynchronously);
        }

        v15 = *(*(&v31 + 1) + 8 * i);
        externalCredentialProviderBundleID = [choiceCopy externalCredentialProviderBundleID];
        sf_bundleIdentifierForContainingApp = [v15 sf_bundleIdentifierForContainingApp];
        v18 = [externalCredentialProviderBundleID isEqualToString:sf_bundleIdentifierForContainingApp];

        if (v18)
        {
          v19 = v15;

          v12 = v19;
        }
      }

      v11 = [getEnabledExtensionsSynchronously countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v11);

    if (v12)
    {
      mEMORY[0x1E69C8DE0]2 = [MEMORY[0x1E69C8DE0] sharedManager];
      v21 = [mEMORY[0x1E69C8DE0]2 extensionSupportsPasskeys:v12];

      handlerCopy = aBlock;
      if (v21)
      {
        v22 = _Block_copy(aBlock);
        registrationHandler = selfCopy->_registrationHandler;
        selfCopy->_registrationHandler = v22;

        v24 = [[ASPasskeyCredentialRequest alloc] initWithLoginChoice:choiceCopy registrationExtensionInput:0];
        v25 = [[_ASCredentialAuthenticationViewController alloc] initWithExtension:v12 passkeyRegistrationRequest:v24 forConditionalRegistration:1];
        credentialProviderViewController = selfCopy->_credentialProviderViewController;
        selfCopy->_credentialProviderViewController = v25;

        [(_ASCredentialAuthenticationViewController *)selfCopy->_credentialProviderViewController setDelegate:selfCopy];
        goto LABEL_18;
      }
    }

    else
    {
      handlerCopy = aBlock;
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
  (*(handlerCopy + 2))(handlerCopy, 0, v24);
LABEL_18:

  v28 = *MEMORY[0x1E69E9840];
}

- (void)credentialAuthenticationViewController:(id)controller didFinishWithPasskeyRegistrationCredential:(id)credential error:(id)error completion:(id)completion
{
  v9 = MEMORY[0x1E698DFE8];
  completionCopy = completion;
  errorCopy = error;
  credentialCopy = credential;
  v13 = [v9 alloc];
  relyingParty = [credentialCopy relyingParty];
  attestationObject = [credentialCopy attestationObject];
  credentialID = [credentialCopy credentialID];

  v17 = +[ASPasskeyRegistrationCredential _defaultTransports];
  LOBYTE(v19) = 1;
  v20 = [v13 initWithRelyingPartyIdentifier:relyingParty attestationObject:attestationObject rawClientDataJSON:0 credentialID:credentialID transports:v17 extensions:0 attachment:*MEMORY[0x1E698DF88] isExternal:v19];

  (*(self->_registrationHandler + 2))();
  completionCopy[2](completionCopy);

  credentialProviderViewController = self->_credentialProviderViewController;
  self->_credentialProviderViewController = 0;
}

- (void)credentialAuthenticationViewController:(id)controller didFinishWithCredential:(id)credential error:(id)error completion:(id)completion
{
  if (credential || !error)
  {
    v12 = *(completion + 2);
    completionCopy = completion;
    v12();
    credentialProviderViewController = completionCopy;
  }

  else
  {
    registrationHandler = self->_registrationHandler;
    v9 = registrationHandler[2];
    completionCopy2 = completion;
    v9(registrationHandler, 0, error);
    completionCopy2[2](completionCopy2);

    credentialProviderViewController = self->_credentialProviderViewController;
    self->_credentialProviderViewController = 0;
  }
}

@end