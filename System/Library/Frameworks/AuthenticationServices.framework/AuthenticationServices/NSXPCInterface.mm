@interface NSXPCInterface
@end

@implementation NSXPCInterface

void __83__NSXPCInterface_AuthenticationServicesExtras___as_credentialProviderHostInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F29023B8];
  v1 = _as_credentialProviderHostInterface_interface;
  _as_credentialProviderHostInterface_interface = v0;

  v2 = _as_credentialProviderHostInterface_interface;
  v3 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v3 forSelector:sel_prepareToCompleteRequestWithSelectedCredential_completion_ argumentIndex:0 ofReply:0];

  v4 = _as_credentialProviderHostInterface_interface;
  v5 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v4 setClasses:v5 forSelector:sel_prepareToCompleteAssertionRequestWithSelectedPasskeyCredential_completion_ argumentIndex:0 ofReply:0];

  v6 = _as_credentialProviderHostInterface_interface;
  v7 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v6 setClasses:v7 forSelector:sel_prepareToCompleteRegistrationRequestWithSelectedPasskeyCredential_completion_ argumentIndex:0 ofReply:0];
}

void __88__NSXPCInterface_AuthenticationServicesExtras___as_credentialProviderExtensionInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2911338];
  v1 = _as_credentialProviderExtensionInterface_interface;
  _as_credentialProviderExtensionInterface_interface = v0;

  v2 = _as_credentialProviderExtensionInterface_interface;
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_prepareCredentialListForServiceIdentifiers_completionHandler_ argumentIndex:0 ofReply:0];

  v6 = _as_credentialProviderExtensionInterface_interface;
  v7 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v6 setClasses:v7 forSelector:sel_provideCredentialWithoutUserInteractionForIdentity_ argumentIndex:0 ofReply:0];

  v8 = _as_credentialProviderExtensionInterface_interface;
  v9 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v8 setClasses:v9 forSelector:sel_prepareInterfaceToProvideCredentialForIdentity_completionHandler_ argumentIndex:0 ofReply:0];

  v10 = _as_credentialProviderExtensionInterface_interface;
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  [v10 setClasses:v13 forSelector:sel_prepareCredentialListForServiceIdentifiers_requestParameters_completionHandler_ argumentIndex:0 ofReply:0];

  v14 = _as_credentialProviderExtensionInterface_interface;
  v15 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v14 setClasses:v15 forSelector:sel_prepareCredentialListForServiceIdentifiers_requestParameters_completionHandler_ argumentIndex:1 ofReply:0];

  v16 = _as_credentialProviderExtensionInterface_interface;
  v17 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v16 setClasses:v17 forSelector:sel_prepareInterfaceForPasskeyRegistration_completionHandler_ argumentIndex:0 ofReply:0];

  v18 = MEMORY[0x1E695DFD8];
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = [v18 setWithObjects:{v19, v20, objc_opt_class(), 0}];
  [_as_credentialProviderExtensionInterface_interface setClasses:v21 forSelector:sel_provideCredentialWithoutUserInteractionForRequest_ argumentIndex:0 ofReply:0];
  [_as_credentialProviderExtensionInterface_interface setClasses:v21 forSelector:sel_prepareInterfaceToProvideCredentialForRequest_completionHandler_ argumentIndex:0 ofReply:0];
}

uint64_t __84__NSXPCInterface_AuthenticationServicesExtras___as_accountModificationHostInterface__block_invoke()
{
  _as_accountModificationHostInterface_interface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F28F1CA0];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __89__NSXPCInterface_AuthenticationServicesExtras___as_accountModificationExtensionInterface__block_invoke()
{
  _as_accountModificationExtensionInterface_interface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F29047F0];

  return MEMORY[0x1EEE66BB8]();
}

@end