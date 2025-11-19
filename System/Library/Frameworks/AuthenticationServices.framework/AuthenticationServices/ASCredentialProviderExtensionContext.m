@interface ASCredentialProviderExtensionContext
- (void)cancelRequestWithError:(NSError *)error;
- (void)completeAssertionRequestWithSelectedPasskeyCredential:(ASPasskeyAssertionCredential *)credential completionHandler:(void *)completionHandler;
- (void)completeExtensionConfigurationRequest;
- (void)completeOneTimeCodeRequestWithSelectedCredential:(id)a3 completionHandler:(id)a4;
- (void)completeRegistrationRequestWithSelectedPasskeyCredential:(ASPasskeyRegistrationCredential *)credential completionHandler:(void *)completionHandler;
- (void)completeRequestWithSelectedCredential:(ASPasswordCredential *)credential completionHandler:(void *)completionHandler;
- (void)completeRequestWithTextToInsert:(id)a3 completionHandler:(id)a4;
- (void)performPasskeyRegistrationWithoutUserInteractionIfPossible:(id)a3;
- (void)prepareCredentialListForServiceIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)prepareCredentialListForServiceIdentifiers:(id)a3 requestParameters:(id)a4 completionHandler:(id)a5;
- (void)prepareInterfaceForExtensionConfiguration;
- (void)prepareInterfaceForPasskeyRegistration:(id)a3 completionHandler:(id)a4;
- (void)prepareInterfaceForUserChoosingTextToInsert;
- (void)prepareInterfaceToProvideCredentialForIdentity:(id)a3 completionHandler:(id)a4;
- (void)prepareInterfaceToProvideCredentialForRequest:(id)a3 completionHandler:(id)a4;
- (void)prepareOneTimeCodeCredentialListForServiceIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)provideCredentialWithoutUserInteractionForIdentity:(id)a3;
- (void)provideCredentialWithoutUserInteractionForRequest:(id)a3;
- (void)reportAllAcceptedPublicKeyCredentialsForRelyingParty:(id)a3 userHandle:(id)a4 acceptedCredentialIDs:(id)a5;
- (void)reportPublicKeyCredentialUpdateForRelyingParty:(id)a3 userHandle:(id)a4 newName:(id)a5;
- (void)reportUnknownPublicKeyCredentialForRelyingParty:(id)a3 credentialID:(id)a4;
- (void)reportUnusedPasswordCredentialForDomain:(id)a3 username:(id)a4;
@end

@implementation ASCredentialProviderExtensionContext

- (void)completeRequestWithSelectedCredential:(ASPasswordCredential *)credential completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v7 = credential;
  v8 = [(ASCredentialProviderExtensionContext *)self _auxiliaryConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __96__ASCredentialProviderExtensionContext_completeRequestWithSelectedCredential_completionHandler___block_invoke;
  v14[3] = &unk_1E7AF8B28;
  v14[4] = self;
  v9 = v6;
  v15 = v9;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v14];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __96__ASCredentialProviderExtensionContext_completeRequestWithSelectedCredential_completionHandler___block_invoke_2;
  v12[3] = &unk_1E7AF8050;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 prepareToCompleteRequestWithSelectedCredential:v7 completion:v12];
}

uint64_t __96__ASCredentialProviderExtensionContext_completeRequestWithSelectedCredential_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = ASCredentialProviderExtensionContext;
  objc_msgSendSuper2(&v4, sel_cancelRequestWithError_, a2);
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

id __96__ASCredentialProviderExtensionContext_completeRequestWithSelectedCredential_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = ASCredentialProviderExtensionContext;
  return objc_msgSendSuper2(&v3, sel_completeRequestReturningItems_completionHandler_, MEMORY[0x1E695E0F0], v1);
}

- (void)completeAssertionRequestWithSelectedPasskeyCredential:(ASPasskeyAssertionCredential *)credential completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v7 = credential;
  v8 = [(ASCredentialProviderExtensionContext *)self _auxiliaryConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __112__ASCredentialProviderExtensionContext_completeAssertionRequestWithSelectedPasskeyCredential_completionHandler___block_invoke;
  v14[3] = &unk_1E7AF8B28;
  v14[4] = self;
  v9 = v6;
  v15 = v9;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v14];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __112__ASCredentialProviderExtensionContext_completeAssertionRequestWithSelectedPasskeyCredential_completionHandler___block_invoke_2;
  v12[3] = &unk_1E7AF8050;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 prepareToCompleteAssertionRequestWithSelectedPasskeyCredential:v7 completion:v12];
}

uint64_t __112__ASCredentialProviderExtensionContext_completeAssertionRequestWithSelectedPasskeyCredential_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = ASCredentialProviderExtensionContext;
  objc_msgSendSuper2(&v4, sel_cancelRequestWithError_, a2);
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

id __112__ASCredentialProviderExtensionContext_completeAssertionRequestWithSelectedPasskeyCredential_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = ASCredentialProviderExtensionContext;
  return objc_msgSendSuper2(&v3, sel_completeRequestReturningItems_completionHandler_, MEMORY[0x1E695E0F0], v1);
}

- (void)completeRegistrationRequestWithSelectedPasskeyCredential:(ASPasskeyRegistrationCredential *)credential completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v7 = credential;
  v8 = [(ASCredentialProviderExtensionContext *)self _auxiliaryConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __115__ASCredentialProviderExtensionContext_completeRegistrationRequestWithSelectedPasskeyCredential_completionHandler___block_invoke;
  v14[3] = &unk_1E7AF8B28;
  v14[4] = self;
  v9 = v6;
  v15 = v9;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v14];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __115__ASCredentialProviderExtensionContext_completeRegistrationRequestWithSelectedPasskeyCredential_completionHandler___block_invoke_2;
  v12[3] = &unk_1E7AF8050;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 prepareToCompleteRegistrationRequestWithSelectedPasskeyCredential:v7 completion:v12];
}

uint64_t __115__ASCredentialProviderExtensionContext_completeRegistrationRequestWithSelectedPasskeyCredential_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = ASCredentialProviderExtensionContext;
  objc_msgSendSuper2(&v4, sel_cancelRequestWithError_, a2);
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

id __115__ASCredentialProviderExtensionContext_completeRegistrationRequestWithSelectedPasskeyCredential_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = ASCredentialProviderExtensionContext;
  return objc_msgSendSuper2(&v3, sel_completeRequestReturningItems_completionHandler_, MEMORY[0x1E695E0F0], v1);
}

- (void)completeOneTimeCodeRequestWithSelectedCredential:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ASCredentialProviderExtensionContext *)self _auxiliaryConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __107__ASCredentialProviderExtensionContext_completeOneTimeCodeRequestWithSelectedCredential_completionHandler___block_invoke;
  v14[3] = &unk_1E7AF8B28;
  v14[4] = self;
  v9 = v6;
  v15 = v9;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v14];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __107__ASCredentialProviderExtensionContext_completeOneTimeCodeRequestWithSelectedCredential_completionHandler___block_invoke_2;
  v12[3] = &unk_1E7AF8050;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 prepareToCompleteOneTimeCodeRequestWithSelectedCredential:v7 completion:v12];
}

uint64_t __107__ASCredentialProviderExtensionContext_completeOneTimeCodeRequestWithSelectedCredential_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = ASCredentialProviderExtensionContext;
  objc_msgSendSuper2(&v4, sel_cancelRequestWithError_, a2);
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

id __107__ASCredentialProviderExtensionContext_completeOneTimeCodeRequestWithSelectedCredential_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = ASCredentialProviderExtensionContext;
  return objc_msgSendSuper2(&v3, sel_completeRequestReturningItems_completionHandler_, MEMORY[0x1E695E0F0], v1);
}

- (void)completeRequestWithTextToInsert:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ASCredentialProviderExtensionContext *)self _auxiliaryConnection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __90__ASCredentialProviderExtensionContext_completeRequestWithTextToInsert_completionHandler___block_invoke;
  v19[3] = &unk_1E7AF8B28;
  v19[4] = self;
  v9 = v7;
  v20 = v9;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v19];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __90__ASCredentialProviderExtensionContext_completeRequestWithTextToInsert_completionHandler___block_invoke_2;
  v14[3] = &unk_1E7AF7830;
  v15 = v10;
  v16 = v6;
  v17 = self;
  v18 = v9;
  v11 = v9;
  v12 = v6;
  v13 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

uint64_t __90__ASCredentialProviderExtensionContext_completeRequestWithTextToInsert_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = ASCredentialProviderExtensionContext;
  objc_msgSendSuper2(&v4, sel_cancelRequestWithError_, a2);
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void __90__ASCredentialProviderExtensionContext_completeRequestWithTextToInsert_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __90__ASCredentialProviderExtensionContext_completeRequestWithTextToInsert_completionHandler___block_invoke_3;
  v5[3] = &unk_1E7AF8050;
  v4 = *(a1 + 56);
  v5[4] = *(a1 + 48);
  v6 = v4;
  [v2 prepareToCompleteRequestWithSelectedText:v3 completion:v5];
}

id __90__ASCredentialProviderExtensionContext_completeRequestWithTextToInsert_completionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = ASCredentialProviderExtensionContext;
  return objc_msgSendSuper2(&v3, sel_completeRequestReturningItems_completionHandler_, MEMORY[0x1E695E0F0], v1);
}

- (void)cancelRequestWithError:(NSError *)error
{
  v4 = error;
  v5 = [(ASCredentialProviderExtensionContext *)self _auxiliaryConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__ASCredentialProviderExtensionContext_cancelRequestWithError___block_invoke;
  v11[3] = &unk_1E7AF8540;
  v11[4] = self;
  v6 = [v5 remoteObjectProxyWithErrorHandler:v11];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__ASCredentialProviderExtensionContext_cancelRequestWithError___block_invoke_2;
  v8[3] = &unk_1E7AF76A8;
  v9 = v4;
  v10 = self;
  v7 = v4;
  [v6 prepareToCancelRequestWithError:v7 completion:v8];
}

id __63__ASCredentialProviderExtensionContext_cancelRequestWithError___block_invoke(uint64_t a1, uint64_t a2)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = ASCredentialProviderExtensionContext;
  return objc_msgSendSuper2(&v3, sel_cancelRequestWithError_, a2);
}

id __63__ASCredentialProviderExtensionContext_cancelRequestWithError___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = ASCredentialProviderExtensionContext;
  return objc_msgSendSuper2(&v3, sel_cancelRequestWithError_, v1);
}

- (void)completeExtensionConfigurationRequest
{
  v3 = [(ASCredentialProviderExtensionContext *)self _auxiliaryConnection];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77__ASCredentialProviderExtensionContext_completeExtensionConfigurationRequest__block_invoke;
  v6[3] = &unk_1E7AF8540;
  v6[4] = self;
  v4 = [v3 remoteObjectProxyWithErrorHandler:v6];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__ASCredentialProviderExtensionContext_completeExtensionConfigurationRequest__block_invoke_2;
  v5[3] = &unk_1E7AF7608;
  v5[4] = self;
  [v4 prepareToCompleteExtensionConfigurationRequestWithCompletion:v5];
}

id __77__ASCredentialProviderExtensionContext_completeExtensionConfigurationRequest__block_invoke(uint64_t a1, uint64_t a2)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = ASCredentialProviderExtensionContext;
  return objc_msgSendSuper2(&v3, sel_cancelRequestWithError_, a2);
}

id __77__ASCredentialProviderExtensionContext_completeExtensionConfigurationRequest__block_invoke_2(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = ASCredentialProviderExtensionContext;
  return objc_msgSendSuper2(&v2, sel_completeRequestReturningItems_completionHandler_, MEMORY[0x1E695E0F0], 0);
}

- (void)prepareCredentialListForServiceIdentifiers:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ASCredentialProviderExtensionContext *)self _principalObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __101__ASCredentialProviderExtensionContext_prepareCredentialListForServiceIdentifiers_completionHandler___block_invoke;
    block[3] = &unk_1E7AF7790;
    v10 = v8;
    v11 = v6;
    v12 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

uint64_t __101__ASCredentialProviderExtensionContext_prepareCredentialListForServiceIdentifiers_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) prepareCredentialListForServiceIdentifiers:*(a1 + 40)];
  v2 = MEMORY[0x1E6979518];
  v3 = *(a1 + 48);

  return [v2 addCommitHandler:v3 forPhase:2];
}

- (void)prepareCredentialListForServiceIdentifiers:(id)a3 requestParameters:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ASCredentialProviderExtensionContext *)self _principalObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __119__ASCredentialProviderExtensionContext_prepareCredentialListForServiceIdentifiers_requestParameters_completionHandler___block_invoke;
    v12[3] = &unk_1E7AF76D0;
    v13 = v11;
    v14 = v8;
    v15 = v9;
    v16 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], v12);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }
}

uint64_t __119__ASCredentialProviderExtensionContext_prepareCredentialListForServiceIdentifiers_requestParameters_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) prepareCredentialListForServiceIdentifiers:*(a1 + 40) requestParameters:*(a1 + 48)];
  v2 = MEMORY[0x1E6979518];
  v3 = *(a1 + 56);

  return [v2 addCommitHandler:v3 forPhase:2];
}

- (void)prepareOneTimeCodeCredentialListForServiceIdentifiers:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ASCredentialProviderExtensionContext *)self _principalObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __112__ASCredentialProviderExtensionContext_prepareOneTimeCodeCredentialListForServiceIdentifiers_completionHandler___block_invoke;
    block[3] = &unk_1E7AF7790;
    v10 = v8;
    v11 = v6;
    v12 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

uint64_t __112__ASCredentialProviderExtensionContext_prepareOneTimeCodeCredentialListForServiceIdentifiers_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) prepareOneTimeCodeCredentialListForServiceIdentifiers:*(a1 + 40)];
  v2 = MEMORY[0x1E6979518];
  v3 = *(a1 + 48);

  return [v2 addCommitHandler:v3 forPhase:2];
}

- (void)prepareInterfaceForUserChoosingTextToInsert
{
  v2 = [(ASCredentialProviderExtensionContext *)self _principalObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__ASCredentialProviderExtensionContext_prepareInterfaceForUserChoosingTextToInsert__block_invoke;
    block[3] = &unk_1E7AF7608;
    v4 = v2;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)provideCredentialWithoutUserInteractionForIdentity:(id)a3
{
  v4 = [ASPasswordCredentialRequest requestWithCredentialIdentity:a3];
  [(ASCredentialProviderExtensionContext *)self provideCredentialWithoutUserInteractionForRequest:v4];
}

- (void)provideCredentialWithoutUserInteractionForRequest:(id)a3
{
  v4 = a3;
  v5 = [(ASCredentialProviderExtensionContext *)self _principalObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __90__ASCredentialProviderExtensionContext_provideCredentialWithoutUserInteractionForRequest___block_invoke;
    v6[3] = &unk_1E7AF76A8;
    v7 = v5;
    v8 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

- (void)prepareInterfaceToProvideCredentialForIdentity:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [ASPasswordCredentialRequest requestWithCredentialIdentity:a3];
  [(ASCredentialProviderExtensionContext *)self prepareInterfaceToProvideCredentialForRequest:v7 completionHandler:v6];
}

- (void)prepareInterfaceToProvideCredentialForRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ASCredentialProviderExtensionContext *)self _principalObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __104__ASCredentialProviderExtensionContext_prepareInterfaceToProvideCredentialForRequest_completionHandler___block_invoke;
    block[3] = &unk_1E7AF7790;
    v10 = v8;
    v11 = v6;
    v12 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

uint64_t __104__ASCredentialProviderExtensionContext_prepareInterfaceToProvideCredentialForRequest_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) prepareInterfaceToProvideCredentialForRequest:*(a1 + 40)];
  v2 = MEMORY[0x1E6979518];
  v3 = *(a1 + 48);

  return [v2 addCommitHandler:v3 forPhase:2];
}

- (void)prepareInterfaceForPasskeyRegistration:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ASCredentialProviderExtensionContext *)self _principalObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __97__ASCredentialProviderExtensionContext_prepareInterfaceForPasskeyRegistration_completionHandler___block_invoke;
    block[3] = &unk_1E7AF7790;
    v10 = v8;
    v11 = v6;
    v12 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

uint64_t __97__ASCredentialProviderExtensionContext_prepareInterfaceForPasskeyRegistration_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) prepareInterfaceForPasskeyRegistration:*(a1 + 40)];
  v2 = MEMORY[0x1E6979518];
  v3 = *(a1 + 48);

  return [v2 addCommitHandler:v3 forPhase:2];
}

- (void)prepareInterfaceForExtensionConfiguration
{
  v2 = [(ASCredentialProviderExtensionContext *)self _principalObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __81__ASCredentialProviderExtensionContext_prepareInterfaceForExtensionConfiguration__block_invoke;
    block[3] = &unk_1E7AF7608;
    v4 = v2;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)performPasskeyRegistrationWithoutUserInteractionIfPossible:(id)a3
{
  v4 = a3;
  v5 = [(ASCredentialProviderExtensionContext *)self _principalObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __99__ASCredentialProviderExtensionContext_performPasskeyRegistrationWithoutUserInteractionIfPossible___block_invoke;
    v7[3] = &unk_1E7AF76A8;
    v8 = v5;
    v9 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }

  else
  {
    v6 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ASCredentialProviderExtensionContext performPasskeyRegistrationWithoutUserInteractionIfPossible:v6];
    }
  }
}

- (void)reportPublicKeyCredentialUpdateForRelyingParty:(id)a3 userHandle:(id)a4 newName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ASCredentialProviderExtensionContext *)self _principalObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __106__ASCredentialProviderExtensionContext_reportPublicKeyCredentialUpdateForRelyingParty_userHandle_newName___block_invoke;
    v12[3] = &unk_1E7AF8568;
    v13 = v11;
    v14 = v8;
    v15 = v9;
    v16 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], v12);
  }
}

- (void)reportUnknownPublicKeyCredentialForRelyingParty:(id)a3 credentialID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ASCredentialProviderExtensionContext *)self _principalObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __101__ASCredentialProviderExtensionContext_reportUnknownPublicKeyCredentialForRelyingParty_credentialID___block_invoke;
    block[3] = &unk_1E7AF7740;
    v10 = v8;
    v11 = v6;
    v12 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)reportAllAcceptedPublicKeyCredentialsForRelyingParty:(id)a3 userHandle:(id)a4 acceptedCredentialIDs:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ASCredentialProviderExtensionContext *)self _principalObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __126__ASCredentialProviderExtensionContext_reportAllAcceptedPublicKeyCredentialsForRelyingParty_userHandle_acceptedCredentialIDs___block_invoke;
    v12[3] = &unk_1E7AF8568;
    v13 = v11;
    v14 = v8;
    v15 = v9;
    v16 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], v12);
  }
}

- (void)reportUnusedPasswordCredentialForDomain:(id)a3 username:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ASCredentialProviderExtensionContext *)self _principalObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __89__ASCredentialProviderExtensionContext_reportUnusedPasswordCredentialForDomain_username___block_invoke;
    block[3] = &unk_1E7AF7740;
    v10 = v8;
    v11 = v6;
    v12 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)performPasskeyRegistrationWithoutUserInteractionIfPossible:(void *)a1 .cold.1(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_1B1C8D000, v1, OS_LOG_TYPE_ERROR, "Found principal object of unexpected class %{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end