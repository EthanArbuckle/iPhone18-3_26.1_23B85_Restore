@interface _ASCredentialAuthenticationViewController
- (_ASCredentialAuthenticationViewController)initWithExtension:(id)extension acceptedPasskeysRequestForRelyingParty:(id)party userHandle:(id)handle acceptedCredentialIDs:(id)ds;
- (_ASCredentialAuthenticationViewController)initWithExtension:(id)extension credentialIdentity:(id)identity;
- (_ASCredentialAuthenticationViewController)initWithExtension:(id)extension oneTimeCodeCredentialRequest:(id)request;
- (_ASCredentialAuthenticationViewController)initWithExtension:(id)extension passkeyAssertionRequest:(id)request;
- (_ASCredentialAuthenticationViewController)initWithExtension:(id)extension passkeyRegistrationRequest:(id)request forConditionalRegistration:(BOOL)registration;
- (_ASCredentialAuthenticationViewController)initWithExtension:(id)extension unknownPasskeyRequestForRelyingParty:(id)party credentialID:(id)d;
- (_ASCredentialAuthenticationViewController)initWithExtension:(id)extension unusedPasswordRequestForDomain:(id)domain username:(id)username;
- (_ASCredentialAuthenticationViewController)initWithExtension:(id)extension updatePasskeyRequestForRelyingParty:(id)party userHandle:(id)handle newName:(id)name;
- (_ASCredentialAuthenticationViewControllerDelegate)delegate;
- (void)_finishWithCredential:(id)credential error:(id)error completion:(id)completion;
- (void)_finishWithOneTimeCodeCredential:(id)credential error:(id)error completion:(id)completion;
- (void)_finishWithPasskeyAssertionCredential:(id)credential error:(id)error completion:(id)completion;
- (void)_finishWithPasskeyRegistrationCredential:(id)credential error:(id)error completion:(id)completion;
- (void)_nonUIRequestDidRequireUserInteraction;
- (void)_requestDidFailWithError:(id)error completion:(id)completion;
- (void)prepareToCompleteOneTimeCodeRequestWithHostContext:(id)context credential:(id)credential completion:(id)completion;
- (void)prepareToCompleteRequestWithHostContext:(id)context credential:(id)credential completion:(id)completion;
- (void)prepareToCompleteRequestWithHostContext:(id)context passkeyAssertionCredential:(id)credential completion:(id)completion;
- (void)prepareToCompleteRequestWithHostContext:(id)context passkeyRegistrationCredential:(id)credential completion:(id)completion;
@end

@implementation _ASCredentialAuthenticationViewController

- (_ASCredentialAuthenticationViewController)initWithExtension:(id)extension passkeyAssertionRequest:(id)request
{
  extensionCopy = extension;
  requestCopy = request;
  v17.receiver = self;
  v17.super_class = _ASCredentialAuthenticationViewController;
  v9 = [(_ASExtensionViewController *)&v17 initWithExtension:extensionCopy];
  if (v9)
  {
    v10 = [requestCopy copy];
    credentialRequest = v9->_credentialRequest;
    v9->_credentialRequest = v10;

    objc_storeStrong(&v9->_extension, extension);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __87___ASCredentialAuthenticationViewController_initWithExtension_passkeyAssertionRequest___block_invoke;
    v15[3] = &unk_1E7AF7E50;
    v12 = v9;
    v16 = v12;
    [(_ASExtensionViewController *)v12 _beginNonUIRequest:1 connectionHandler:v15];
    v13 = v12;
  }

  return v9;
}

- (_ASCredentialAuthenticationViewController)initWithExtension:(id)extension passkeyRegistrationRequest:(id)request forConditionalRegistration:(BOOL)registration
{
  registrationCopy = registration;
  extensionCopy = extension;
  requestCopy = request;
  v21.receiver = self;
  v21.super_class = _ASCredentialAuthenticationViewController;
  v11 = [(_ASExtensionViewController *)&v21 initWithExtension:extensionCopy];
  if (v11)
  {
    v12 = [requestCopy copy];
    credentialRequest = v11->_credentialRequest;
    v11->_credentialRequest = v12;

    objc_storeStrong(&v11->_extension, extension);
    if (registrationCopy)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __117___ASCredentialAuthenticationViewController_initWithExtension_passkeyRegistrationRequest_forConditionalRegistration___block_invoke;
      v19[3] = &unk_1E7AF7E50;
      v14 = &v20;
      v20 = requestCopy;
      [(_ASExtensionViewController *)v11 _beginNonUIRequest:0 connectionHandler:v19];
    }

    else
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __117___ASCredentialAuthenticationViewController_initWithExtension_passkeyRegistrationRequest_forConditionalRegistration___block_invoke_2;
      v17[3] = &unk_1E7AF7E50;
      v14 = &v18;
      v18 = v11;
      [(_ASExtensionViewController *)v18 _beginRequestWithConnectionHandler:v17];
    }

    v15 = v11;
  }

  return v11;
}

- (_ASCredentialAuthenticationViewController)initWithExtension:(id)extension credentialIdentity:(id)identity
{
  extensionCopy = extension;
  identityCopy = identity;
  v18.receiver = self;
  v18.super_class = _ASCredentialAuthenticationViewController;
  v9 = [(_ASExtensionViewController *)&v18 initWithExtension:extensionCopy];
  if (v9)
  {
    v10 = [ASPasswordCredentialRequest requestWithCredentialIdentity:identityCopy];
    credentialRequest = v9->_credentialRequest;
    v9->_credentialRequest = v10;

    objc_storeStrong(&v9->_extension, extension);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __82___ASCredentialAuthenticationViewController_initWithExtension_credentialIdentity___block_invoke;
    v15[3] = &unk_1E7AF7E78;
    v16 = identityCopy;
    v12 = v9;
    v17 = v12;
    [(_ASExtensionViewController *)v12 _beginNonUIRequest:1 connectionHandler:v15];
    v13 = v12;
  }

  return v9;
}

- (_ASCredentialAuthenticationViewController)initWithExtension:(id)extension oneTimeCodeCredentialRequest:(id)request
{
  extensionCopy = extension;
  requestCopy = request;
  v15.receiver = self;
  v15.super_class = _ASCredentialAuthenticationViewController;
  v9 = [(_ASExtensionViewController *)&v15 initWithExtension:extensionCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_credentialRequest, request);
    objc_storeStrong(&v10->_extension, extension);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __92___ASCredentialAuthenticationViewController_initWithExtension_oneTimeCodeCredentialRequest___block_invoke;
    v13[3] = &unk_1E7AF7E50;
    v14 = requestCopy;
    [(_ASExtensionViewController *)v10 _beginNonUIRequest:1 connectionHandler:v13];
    v11 = v10;
  }

  return v10;
}

- (_ASCredentialAuthenticationViewController)initWithExtension:(id)extension updatePasskeyRequestForRelyingParty:(id)party userHandle:(id)handle newName:(id)name
{
  partyCopy = party;
  handleCopy = handle;
  nameCopy = name;
  v20.receiver = self;
  v20.super_class = _ASCredentialAuthenticationViewController;
  v13 = [(_ASExtensionViewController *)&v20 initWithExtension:extension];
  if (v13)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __118___ASCredentialAuthenticationViewController_initWithExtension_updatePasskeyRequestForRelyingParty_userHandle_newName___block_invoke;
    v16[3] = &unk_1E7AF7EA0;
    v17 = partyCopy;
    v18 = handleCopy;
    v19 = nameCopy;
    [(_ASExtensionViewController *)v13 _beginNonUIRequest:0 connectionHandler:v16];
    v14 = v13;
  }

  return v13;
}

- (_ASCredentialAuthenticationViewController)initWithExtension:(id)extension unknownPasskeyRequestForRelyingParty:(id)party credentialID:(id)d
{
  partyCopy = party;
  dCopy = d;
  v16.receiver = self;
  v16.super_class = _ASCredentialAuthenticationViewController;
  v10 = [(_ASExtensionViewController *)&v16 initWithExtension:extension];
  if (v10)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __113___ASCredentialAuthenticationViewController_initWithExtension_unknownPasskeyRequestForRelyingParty_credentialID___block_invoke;
    v13[3] = &unk_1E7AF7E78;
    v14 = partyCopy;
    v15 = dCopy;
    [(_ASExtensionViewController *)v10 _beginNonUIRequest:0 connectionHandler:v13];
    v11 = v10;
  }

  return v10;
}

- (_ASCredentialAuthenticationViewController)initWithExtension:(id)extension acceptedPasskeysRequestForRelyingParty:(id)party userHandle:(id)handle acceptedCredentialIDs:(id)ds
{
  partyCopy = party;
  handleCopy = handle;
  dsCopy = ds;
  v20.receiver = self;
  v20.super_class = _ASCredentialAuthenticationViewController;
  v13 = [(_ASExtensionViewController *)&v20 initWithExtension:extension];
  if (v13)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __135___ASCredentialAuthenticationViewController_initWithExtension_acceptedPasskeysRequestForRelyingParty_userHandle_acceptedCredentialIDs___block_invoke;
    v16[3] = &unk_1E7AF7EA0;
    v17 = partyCopy;
    v18 = handleCopy;
    v19 = dsCopy;
    [(_ASExtensionViewController *)v13 _beginNonUIRequest:0 connectionHandler:v16];
    v14 = v13;
  }

  return v13;
}

- (_ASCredentialAuthenticationViewController)initWithExtension:(id)extension unusedPasswordRequestForDomain:(id)domain username:(id)username
{
  domainCopy = domain;
  usernameCopy = username;
  v16.receiver = self;
  v16.super_class = _ASCredentialAuthenticationViewController;
  v10 = [(_ASExtensionViewController *)&v16 initWithExtension:extension];
  if (v10)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __103___ASCredentialAuthenticationViewController_initWithExtension_unusedPasswordRequestForDomain_username___block_invoke;
    v13[3] = &unk_1E7AF7E78;
    v14 = domainCopy;
    v15 = usernameCopy;
    [(_ASExtensionViewController *)v10 _beginNonUIRequest:0 connectionHandler:v13];
    v11 = v10;
  }

  return v10;
}

- (void)_nonUIRequestDidRequireUserInteraction
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __83___ASCredentialAuthenticationViewController__nonUIRequestDidRequireUserInteraction__block_invoke;
  v2[3] = &unk_1E7AF7E50;
  v2[4] = self;
  [(_ASExtensionViewController *)self _beginRequestWithConnectionHandler:v2];
}

- (void)_finishWithCredential:(id)credential error:(id)error completion:(id)completion
{
  credentialCopy = credential;
  errorCopy = error;
  if (completion)
  {
    completionCopy = completion;
  }

  else
  {
    completionCopy = &__block_literal_global_6;
  }

  v10 = _Block_copy(completionCopy);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained credentialAuthenticationViewController:self didFinishWithCredential:credentialCopy error:errorCopy completion:v10];
  }

  else
  {
    v10[2](v10);
  }
}

- (void)_finishWithPasskeyAssertionCredential:(id)credential error:(id)error completion:(id)completion
{
  credentialCopy = credential;
  errorCopy = error;
  if (completion)
  {
    completionCopy = completion;
  }

  else
  {
    completionCopy = &__block_literal_global_8;
  }

  v10 = _Block_copy(completionCopy);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained credentialAuthenticationViewController:self didFinishWithPasskeyAssertionCredential:credentialCopy error:errorCopy completion:v10];
  }

  else
  {
    v10[2](v10);
  }
}

- (void)_finishWithPasskeyRegistrationCredential:(id)credential error:(id)error completion:(id)completion
{
  credentialCopy = credential;
  errorCopy = error;
  if (completion)
  {
    completionCopy = completion;
  }

  else
  {
    completionCopy = &__block_literal_global_12;
  }

  v10 = _Block_copy(completionCopy);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained credentialAuthenticationViewController:self didFinishWithPasskeyRegistrationCredential:credentialCopy error:errorCopy completion:v10];
  }

  else
  {
    v10[2](v10);
  }
}

- (void)_finishWithOneTimeCodeCredential:(id)credential error:(id)error completion:(id)completion
{
  credentialCopy = credential;
  errorCopy = error;
  if (completion)
  {
    completionCopy = completion;
  }

  else
  {
    completionCopy = &__block_literal_global_16;
  }

  v10 = _Block_copy(completionCopy);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained credentialAuthenticationViewController:self didFinishWithOneTimeCodeCredential:credentialCopy error:errorCopy completion:v10];
  }

  else
  {
    v10[2](v10);
  }
}

- (void)_requestDidFailWithError:(id)error completion:(id)completion
{
  errorCopy = error;
  completionCopy = completion;
  if ([errorCopy safari_matchesErrorDomain:@"ASExtensionErrorDomain" andCode:101])
  {
    v8 = WBS_LOG_CHANNEL_PREFIXCredentialProviderExtension();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1C8D000, v8, OS_LOG_TYPE_DEFAULT, "Extension did not find a credential corresponding the identity. Invalidating the identity store.", buf, 2u);
    }

    extension = [(_ASCredentialAuthenticationViewController *)self extension];
    sf_bundleIdentifierForContainingApp = [extension sf_bundleIdentifierForContainingApp];

    v11 = objc_alloc_init(MEMORY[0x1E69C8DD8]);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __81___ASCredentialAuthenticationViewController__requestDidFailWithError_completion___block_invoke;
    v13[3] = &unk_1E7AF7EC8;
    v14 = v11;
    v12 = v11;
    [v12 removeCredentialIdentityStoreForApplication:sf_bundleIdentifierForContainingApp completion:v13];
  }

  [(_ASCredentialAuthenticationViewController *)self _finishWithCredential:0 error:errorCopy completion:completionCopy];
}

- (void)prepareToCompleteRequestWithHostContext:(id)context credential:(id)credential completion:(id)completion
{
  credentialCopy = credential;
  completionCopy = completion;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __107___ASCredentialAuthenticationViewController_prepareToCompleteRequestWithHostContext_credential_completion___block_invoke;
  block[3] = &unk_1E7AF7790;
  block[4] = self;
  v12 = credentialCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = credentialCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)prepareToCompleteRequestWithHostContext:(id)context passkeyAssertionCredential:(id)credential completion:(id)completion
{
  credentialCopy = credential;
  completionCopy = completion;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __123___ASCredentialAuthenticationViewController_prepareToCompleteRequestWithHostContext_passkeyAssertionCredential_completion___block_invoke;
  block[3] = &unk_1E7AF7790;
  block[4] = self;
  v12 = credentialCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = credentialCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)prepareToCompleteRequestWithHostContext:(id)context passkeyRegistrationCredential:(id)credential completion:(id)completion
{
  credentialCopy = credential;
  completionCopy = completion;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __126___ASCredentialAuthenticationViewController_prepareToCompleteRequestWithHostContext_passkeyRegistrationCredential_completion___block_invoke;
  block[3] = &unk_1E7AF7790;
  block[4] = self;
  v12 = credentialCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = credentialCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)prepareToCompleteOneTimeCodeRequestWithHostContext:(id)context credential:(id)credential completion:(id)completion
{
  credentialCopy = credential;
  completionCopy = completion;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __118___ASCredentialAuthenticationViewController_prepareToCompleteOneTimeCodeRequestWithHostContext_credential_completion___block_invoke;
  block[3] = &unk_1E7AF7790;
  block[4] = self;
  v12 = credentialCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = credentialCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (_ASCredentialAuthenticationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end