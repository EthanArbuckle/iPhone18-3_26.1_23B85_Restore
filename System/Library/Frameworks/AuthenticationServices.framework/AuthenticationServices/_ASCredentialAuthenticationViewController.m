@interface _ASCredentialAuthenticationViewController
- (_ASCredentialAuthenticationViewController)initWithExtension:(id)a3 acceptedPasskeysRequestForRelyingParty:(id)a4 userHandle:(id)a5 acceptedCredentialIDs:(id)a6;
- (_ASCredentialAuthenticationViewController)initWithExtension:(id)a3 credentialIdentity:(id)a4;
- (_ASCredentialAuthenticationViewController)initWithExtension:(id)a3 oneTimeCodeCredentialRequest:(id)a4;
- (_ASCredentialAuthenticationViewController)initWithExtension:(id)a3 passkeyAssertionRequest:(id)a4;
- (_ASCredentialAuthenticationViewController)initWithExtension:(id)a3 passkeyRegistrationRequest:(id)a4 forConditionalRegistration:(BOOL)a5;
- (_ASCredentialAuthenticationViewController)initWithExtension:(id)a3 unknownPasskeyRequestForRelyingParty:(id)a4 credentialID:(id)a5;
- (_ASCredentialAuthenticationViewController)initWithExtension:(id)a3 unusedPasswordRequestForDomain:(id)a4 username:(id)a5;
- (_ASCredentialAuthenticationViewController)initWithExtension:(id)a3 updatePasskeyRequestForRelyingParty:(id)a4 userHandle:(id)a5 newName:(id)a6;
- (_ASCredentialAuthenticationViewControllerDelegate)delegate;
- (void)_finishWithCredential:(id)a3 error:(id)a4 completion:(id)a5;
- (void)_finishWithOneTimeCodeCredential:(id)a3 error:(id)a4 completion:(id)a5;
- (void)_finishWithPasskeyAssertionCredential:(id)a3 error:(id)a4 completion:(id)a5;
- (void)_finishWithPasskeyRegistrationCredential:(id)a3 error:(id)a4 completion:(id)a5;
- (void)_nonUIRequestDidRequireUserInteraction;
- (void)_requestDidFailWithError:(id)a3 completion:(id)a4;
- (void)prepareToCompleteOneTimeCodeRequestWithHostContext:(id)a3 credential:(id)a4 completion:(id)a5;
- (void)prepareToCompleteRequestWithHostContext:(id)a3 credential:(id)a4 completion:(id)a5;
- (void)prepareToCompleteRequestWithHostContext:(id)a3 passkeyAssertionCredential:(id)a4 completion:(id)a5;
- (void)prepareToCompleteRequestWithHostContext:(id)a3 passkeyRegistrationCredential:(id)a4 completion:(id)a5;
@end

@implementation _ASCredentialAuthenticationViewController

- (_ASCredentialAuthenticationViewController)initWithExtension:(id)a3 passkeyAssertionRequest:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = _ASCredentialAuthenticationViewController;
  v9 = [(_ASExtensionViewController *)&v17 initWithExtension:v7];
  if (v9)
  {
    v10 = [v8 copy];
    credentialRequest = v9->_credentialRequest;
    v9->_credentialRequest = v10;

    objc_storeStrong(&v9->_extension, a3);
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

- (_ASCredentialAuthenticationViewController)initWithExtension:(id)a3 passkeyRegistrationRequest:(id)a4 forConditionalRegistration:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  v21.receiver = self;
  v21.super_class = _ASCredentialAuthenticationViewController;
  v11 = [(_ASExtensionViewController *)&v21 initWithExtension:v9];
  if (v11)
  {
    v12 = [v10 copy];
    credentialRequest = v11->_credentialRequest;
    v11->_credentialRequest = v12;

    objc_storeStrong(&v11->_extension, a3);
    if (v5)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __117___ASCredentialAuthenticationViewController_initWithExtension_passkeyRegistrationRequest_forConditionalRegistration___block_invoke;
      v19[3] = &unk_1E7AF7E50;
      v14 = &v20;
      v20 = v10;
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

- (_ASCredentialAuthenticationViewController)initWithExtension:(id)a3 credentialIdentity:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = _ASCredentialAuthenticationViewController;
  v9 = [(_ASExtensionViewController *)&v18 initWithExtension:v7];
  if (v9)
  {
    v10 = [ASPasswordCredentialRequest requestWithCredentialIdentity:v8];
    credentialRequest = v9->_credentialRequest;
    v9->_credentialRequest = v10;

    objc_storeStrong(&v9->_extension, a3);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __82___ASCredentialAuthenticationViewController_initWithExtension_credentialIdentity___block_invoke;
    v15[3] = &unk_1E7AF7E78;
    v16 = v8;
    v12 = v9;
    v17 = v12;
    [(_ASExtensionViewController *)v12 _beginNonUIRequest:1 connectionHandler:v15];
    v13 = v12;
  }

  return v9;
}

- (_ASCredentialAuthenticationViewController)initWithExtension:(id)a3 oneTimeCodeCredentialRequest:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = _ASCredentialAuthenticationViewController;
  v9 = [(_ASExtensionViewController *)&v15 initWithExtension:v7];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_credentialRequest, a4);
    objc_storeStrong(&v10->_extension, a3);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __92___ASCredentialAuthenticationViewController_initWithExtension_oneTimeCodeCredentialRequest___block_invoke;
    v13[3] = &unk_1E7AF7E50;
    v14 = v8;
    [(_ASExtensionViewController *)v10 _beginNonUIRequest:1 connectionHandler:v13];
    v11 = v10;
  }

  return v10;
}

- (_ASCredentialAuthenticationViewController)initWithExtension:(id)a3 updatePasskeyRequestForRelyingParty:(id)a4 userHandle:(id)a5 newName:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v20.receiver = self;
  v20.super_class = _ASCredentialAuthenticationViewController;
  v13 = [(_ASExtensionViewController *)&v20 initWithExtension:a3];
  if (v13)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __118___ASCredentialAuthenticationViewController_initWithExtension_updatePasskeyRequestForRelyingParty_userHandle_newName___block_invoke;
    v16[3] = &unk_1E7AF7EA0;
    v17 = v10;
    v18 = v11;
    v19 = v12;
    [(_ASExtensionViewController *)v13 _beginNonUIRequest:0 connectionHandler:v16];
    v14 = v13;
  }

  return v13;
}

- (_ASCredentialAuthenticationViewController)initWithExtension:(id)a3 unknownPasskeyRequestForRelyingParty:(id)a4 credentialID:(id)a5
{
  v8 = a4;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = _ASCredentialAuthenticationViewController;
  v10 = [(_ASExtensionViewController *)&v16 initWithExtension:a3];
  if (v10)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __113___ASCredentialAuthenticationViewController_initWithExtension_unknownPasskeyRequestForRelyingParty_credentialID___block_invoke;
    v13[3] = &unk_1E7AF7E78;
    v14 = v8;
    v15 = v9;
    [(_ASExtensionViewController *)v10 _beginNonUIRequest:0 connectionHandler:v13];
    v11 = v10;
  }

  return v10;
}

- (_ASCredentialAuthenticationViewController)initWithExtension:(id)a3 acceptedPasskeysRequestForRelyingParty:(id)a4 userHandle:(id)a5 acceptedCredentialIDs:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v20.receiver = self;
  v20.super_class = _ASCredentialAuthenticationViewController;
  v13 = [(_ASExtensionViewController *)&v20 initWithExtension:a3];
  if (v13)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __135___ASCredentialAuthenticationViewController_initWithExtension_acceptedPasskeysRequestForRelyingParty_userHandle_acceptedCredentialIDs___block_invoke;
    v16[3] = &unk_1E7AF7EA0;
    v17 = v10;
    v18 = v11;
    v19 = v12;
    [(_ASExtensionViewController *)v13 _beginNonUIRequest:0 connectionHandler:v16];
    v14 = v13;
  }

  return v13;
}

- (_ASCredentialAuthenticationViewController)initWithExtension:(id)a3 unusedPasswordRequestForDomain:(id)a4 username:(id)a5
{
  v8 = a4;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = _ASCredentialAuthenticationViewController;
  v10 = [(_ASExtensionViewController *)&v16 initWithExtension:a3];
  if (v10)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __103___ASCredentialAuthenticationViewController_initWithExtension_unusedPasswordRequestForDomain_username___block_invoke;
    v13[3] = &unk_1E7AF7E78;
    v14 = v8;
    v15 = v9;
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

- (void)_finishWithCredential:(id)a3 error:(id)a4 completion:(id)a5
{
  v12 = a3;
  v8 = a4;
  if (a5)
  {
    v9 = a5;
  }

  else
  {
    v9 = &__block_literal_global_6;
  }

  v10 = _Block_copy(v9);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained credentialAuthenticationViewController:self didFinishWithCredential:v12 error:v8 completion:v10];
  }

  else
  {
    v10[2](v10);
  }
}

- (void)_finishWithPasskeyAssertionCredential:(id)a3 error:(id)a4 completion:(id)a5
{
  v12 = a3;
  v8 = a4;
  if (a5)
  {
    v9 = a5;
  }

  else
  {
    v9 = &__block_literal_global_8;
  }

  v10 = _Block_copy(v9);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained credentialAuthenticationViewController:self didFinishWithPasskeyAssertionCredential:v12 error:v8 completion:v10];
  }

  else
  {
    v10[2](v10);
  }
}

- (void)_finishWithPasskeyRegistrationCredential:(id)a3 error:(id)a4 completion:(id)a5
{
  v12 = a3;
  v8 = a4;
  if (a5)
  {
    v9 = a5;
  }

  else
  {
    v9 = &__block_literal_global_12;
  }

  v10 = _Block_copy(v9);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained credentialAuthenticationViewController:self didFinishWithPasskeyRegistrationCredential:v12 error:v8 completion:v10];
  }

  else
  {
    v10[2](v10);
  }
}

- (void)_finishWithOneTimeCodeCredential:(id)a3 error:(id)a4 completion:(id)a5
{
  v12 = a3;
  v8 = a4;
  if (a5)
  {
    v9 = a5;
  }

  else
  {
    v9 = &__block_literal_global_16;
  }

  v10 = _Block_copy(v9);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained credentialAuthenticationViewController:self didFinishWithOneTimeCodeCredential:v12 error:v8 completion:v10];
  }

  else
  {
    v10[2](v10);
  }
}

- (void)_requestDidFailWithError:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 safari_matchesErrorDomain:@"ASExtensionErrorDomain" andCode:101])
  {
    v8 = WBS_LOG_CHANNEL_PREFIXCredentialProviderExtension();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1C8D000, v8, OS_LOG_TYPE_DEFAULT, "Extension did not find a credential corresponding the identity. Invalidating the identity store.", buf, 2u);
    }

    v9 = [(_ASCredentialAuthenticationViewController *)self extension];
    v10 = [v9 sf_bundleIdentifierForContainingApp];

    v11 = objc_alloc_init(MEMORY[0x1E69C8DD8]);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __81___ASCredentialAuthenticationViewController__requestDidFailWithError_completion___block_invoke;
    v13[3] = &unk_1E7AF7EC8;
    v14 = v11;
    v12 = v11;
    [v12 removeCredentialIdentityStoreForApplication:v10 completion:v13];
  }

  [(_ASCredentialAuthenticationViewController *)self _finishWithCredential:0 error:v6 completion:v7];
}

- (void)prepareToCompleteRequestWithHostContext:(id)a3 credential:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __107___ASCredentialAuthenticationViewController_prepareToCompleteRequestWithHostContext_credential_completion___block_invoke;
  block[3] = &unk_1E7AF7790;
  block[4] = self;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)prepareToCompleteRequestWithHostContext:(id)a3 passkeyAssertionCredential:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __123___ASCredentialAuthenticationViewController_prepareToCompleteRequestWithHostContext_passkeyAssertionCredential_completion___block_invoke;
  block[3] = &unk_1E7AF7790;
  block[4] = self;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)prepareToCompleteRequestWithHostContext:(id)a3 passkeyRegistrationCredential:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __126___ASCredentialAuthenticationViewController_prepareToCompleteRequestWithHostContext_passkeyRegistrationCredential_completion___block_invoke;
  block[3] = &unk_1E7AF7790;
  block[4] = self;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)prepareToCompleteOneTimeCodeRequestWithHostContext:(id)a3 credential:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __118___ASCredentialAuthenticationViewController_prepareToCompleteOneTimeCodeRequestWithHostContext_credential_completion___block_invoke;
  block[3] = &unk_1E7AF7790;
  block[4] = self;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (_ASCredentialAuthenticationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end