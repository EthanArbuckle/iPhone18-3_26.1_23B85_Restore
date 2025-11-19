@interface _ASAccountAuthenticationModificationHostViewController
- (_ASAccountAuthenticationModificationHostViewController)initWithExtension:(id)a3 serviceIdentifier:(id)a4;
- (_ASAccountAuthenticationModificationHostViewControllerDelegate)delegate;
- (void)_nonUIRequestDidRequireUserInteraction;
- (void)_requestDidFailWithError:(id)a3 completion:(id)a4;
- (void)dismissRequestUI:(id)a3;
- (void)getSignInWithAppleAuthorizationWithState:(id)a3 nonce:(id)a4 completion:(id)a5;
- (void)prepareToCancelRequestWithHostContext:(id)a3 error:(id)a4 completion:(id)a5;
- (void)prepareToCompleteRequestWithHostContext:(id)a3 updatedCredential:(id)a4 userInfo:(id)a5 completion:(id)a6;
- (void)prepareToCompleteUpgradeToSignInWithAppleRequestWithHostContext:(id)a3 userInfo:(id)a4 completion:(id)a5;
- (void)updateCredential:(id)a3 withNewPassword:(id)a4 userInfo:(id)a5;
- (void)upgradeCredentialToSignInWithApple:(id)a3 userInfo:(id)a4;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation _ASAccountAuthenticationModificationHostViewController

- (_ASAccountAuthenticationModificationHostViewController)initWithExtension:(id)a3 serviceIdentifier:(id)a4
{
  v7 = a4;
  v18.receiver = self;
  v18.super_class = _ASAccountAuthenticationModificationHostViewController;
  v8 = [(_ASExtensionViewController *)&v18 initWithExtension:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_serviceIdentifier, a4);
    v10 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v9 action:sel__cancelButtonPressed];
    v11 = [(_ASExtensionViewController *)v9 extension];
    v12 = [v11 _plugIn];
    v13 = [v12 localizedContainingName];
    v14 = [(_ASAccountAuthenticationModificationHostViewController *)v9 navigationItem];
    [v14 setTitle:v13];

    v15 = [(_ASAccountAuthenticationModificationHostViewController *)v9 navigationItem];
    [v15 setRightBarButtonItem:v10];

    [(_ASAccountAuthenticationModificationHostViewController *)v9 setModalInPresentation:1];
    v16 = v9;
  }

  return v9;
}

- (void)upgradeCredentialToSignInWithApple:(id)a3 userInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  self->_accountModificationOperation = 1;
  existingCredential = self->_existingCredential;
  self->_existingCredential = v6;
  v9 = v6;

  objc_storeStrong(&self->_userInfo, a4);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __102___ASAccountAuthenticationModificationHostViewController_upgradeCredentialToSignInWithApple_userInfo___block_invoke;
  v11[3] = &unk_1E7AF7A80;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  [(_ASExtensionViewController *)self _beginNonUIRequest:1 connectionHandler:v11];
}

- (void)updateCredential:(id)a3 withNewPassword:(id)a4 userInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  self->_accountModificationOperation = 0;
  existingCredential = self->_existingCredential;
  self->_existingCredential = v8;
  v12 = v8;

  newPassword = self->_newPassword;
  self->_newPassword = v9;
  v14 = v9;

  objc_storeStrong(&self->_userInfo, a5);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __100___ASAccountAuthenticationModificationHostViewController_updateCredential_withNewPassword_userInfo___block_invoke;
  v16[3] = &unk_1E7AF7A80;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [(_ASExtensionViewController *)self _beginNonUIRequest:1 connectionHandler:v16];
}

- (void)_nonUIRequestDidRequireUserInteraction
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __96___ASAccountAuthenticationModificationHostViewController__nonUIRequestDidRequireUserInteraction__block_invoke;
  v3[3] = &unk_1E7AF7AA8;
  objc_copyWeak(&v4, &location);
  v3[4] = self;
  [(_ASExtensionViewController *)self _beginRequestWithConnectionHandler:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)_requestDidFailWithError:(id)a3 completion:(id)a4
{
  v9 = a3;
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = &__block_literal_global_0;
  }

  v7 = _Block_copy(v6);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountModificationHostViewController:self requestCanceledWithError:v9 completion:v7];
  }

  else
  {
    v7[2](v7);
  }
}

- (void)willMoveToParentViewController:(id)a3
{
  v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v5 = [(_ASAccountAuthenticationModificationHostViewController *)self navigationController];
  v6 = [v5 navigationBar];
  [v6 setBackgroundColor:v4];

  v8 = [(_ASAccountAuthenticationModificationHostViewController *)self navigationController];
  v7 = [v8 navigationBar];
  [v7 setTranslucent:0];
}

- (void)prepareToCompleteUpgradeToSignInWithAppleRequestWithHostContext:(id)a3 userInfo:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __142___ASAccountAuthenticationModificationHostViewController_prepareToCompleteUpgradeToSignInWithAppleRequestWithHostContext_userInfo_completion___block_invoke;
  block[3] = &unk_1E7AF7790;
  block[4] = self;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)prepareToCompleteRequestWithHostContext:(id)a3 updatedCredential:(id)a4 userInfo:(id)a5 completion:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __136___ASAccountAuthenticationModificationHostViewController_prepareToCompleteRequestWithHostContext_updatedCredential_userInfo_completion___block_invoke;
  v15[3] = &unk_1E7AF76D0;
  v15[4] = self;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], v15);
}

- (void)prepareToCancelRequestWithHostContext:(id)a3 error:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (self->_signInWithAppleAuthorization)
  {
    v10 = objc_alloc_init(MEMORY[0x1E698DD10]);
    v11 = objc_alloc(MEMORY[0x1E69635F8]);
    v12 = [(_ASExtensionViewController *)self extension];
    v13 = [v12 _plugIn];
    v14 = [v13 containingUrl];
    v28 = 0;
    v15 = [v11 initWithURL:v14 allowPlaceholder:0 error:&v28];
    v16 = v28;

    if (v16)
    {
      v17 = WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [_ASAccountAuthenticationModificationHostViewController prepareToCancelRequestWithHostContext:v17 error:v16 completion:?];
      }

      v9[2](v9);
    }

    else
    {
      v18 = [(AKAuthorization *)self->_signInWithAppleAuthorization authorizedRequest];
      v19 = [v18 requestIdentifier];
      v20 = [v19 UUIDString];
      [v10 setTransactionID:v20];

      v21 = [v15 bundleIdentifier];
      [v10 setBundleID:v21];

      v22 = [v15 teamIdentifier];
      [v10 setTeamID:v22];

      v23 = objc_alloc_init(MEMORY[0x1E698DCE0]);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __113___ASAccountAuthenticationModificationHostViewController_prepareToCancelRequestWithHostContext_error_completion___block_invoke;
      v24[3] = &unk_1E7AF7AD0;
      v25 = v8;
      v26 = self;
      v27 = v9;
      [v23 revokeAuthorizationWithContext:v10 completion:v24];
    }
  }

  else
  {
    v29.receiver = self;
    v29.super_class = _ASAccountAuthenticationModificationHostViewController;
    [(_ASExtensionViewController *)&v29 prepareToCancelRequestWithHostContext:v8 error:a4 completion:v9];
  }
}

- (void)getSignInWithAppleAuthorizationWithState:(id)a3 nonce:(id)a4 completion:(id)a5
{
  v40[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_accountModificationOperation == 1)
  {
    v11 = [(_ASAccountAuthenticationModificationHostViewController *)self navigationController];

    if (v11)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained dismissUIForAccountModificationHostViewController:self];
      }
    }

    v13 = objc_alloc_init(MEMORY[0x1E698DD20]);
    v14 = objc_alloc(MEMORY[0x1E69635F8]);
    v15 = [(_ASExtensionViewController *)self extension];
    v16 = [v15 _plugIn];
    v17 = [v16 containingUrl];
    v36 = 0;
    v18 = [v14 initWithURL:v17 allowPlaceholder:0 error:&v36];
    v19 = v36;

    if (v19)
    {
      v20 = WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [_ASAccountAuthenticationModificationHostViewController getSignInWithAppleAuthorizationWithState:v20 nonce:v19 completion:?];
      }

      v21 = MEMORY[0x1E696ABC0];
      v37 = *MEMORY[0x1E696A588];
      v38 = @"Couldn't get application record while fetching authorization.";
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v23 = [v21 errorWithDomain:@"ASExtensionErrorDomain" code:0 userInfo:v22];
      v10[2](v10, 0, v23);
    }

    else
    {
      objc_initWeak(&location, self);
      [v13 setState:v8];
      [v13 setNonce:v9];
      v25 = [v18 entitlements];
      v26 = [v25 objectForKey:@"application-identifier" ofClass:objc_opt_class()];
      [v13 setAppID:v26];

      v27 = [v18 bundleIdentifier];
      [v13 setBundleID:v27];

      v28 = [v18 teamIdentifier];
      [v13 setTeamID:v28];

      v29 = [objc_alloc(MEMORY[0x1E698DD58]) initWithUpgradeContext:v13];
      v30 = objc_alloc_init(MEMORY[0x1E698DCE0]);
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __116___ASAccountAuthenticationModificationHostViewController_getSignInWithAppleAuthorizationWithState_nonce_completion___block_invoke;
      v32[3] = &unk_1E7AF7AF8;
      objc_copyWeak(&v34, &location);
      v33 = v10;
      [v30 performAuthorizationWithContext:v29 completion:v32];

      objc_destroyWeak(&v34);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v24 = MEMORY[0x1E696ABC0];
    v39 = *MEMORY[0x1E696A588];
    v40[0] = @"Cannot request Sign in with Apple authorization in the middle of a strong password upgrade.";
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v13 = [v24 errorWithDomain:@"ASExtensionErrorDomain" code:0 userInfo:v19];
    v10[2](v10, 0, v13);
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)dismissRequestUI:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained dismissUIForAccountModificationHostViewController:self];
  }
}

- (_ASAccountAuthenticationModificationHostViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)prepareToCancelRequestWithHostContext:(void *)a1 error:(void *)a2 completion:.cold.1(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B1C8D000, v5, v6, "Failed to get application record to revoke authorization with error: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)getSignInWithAppleAuthorizationWithState:(void *)a1 nonce:(void *)a2 completion:.cold.1(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B1C8D000, v5, v6, "Failed to get application record to request authorization due to error: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

@end