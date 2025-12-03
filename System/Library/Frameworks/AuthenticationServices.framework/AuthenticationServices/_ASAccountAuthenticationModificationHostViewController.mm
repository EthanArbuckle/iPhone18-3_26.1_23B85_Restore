@interface _ASAccountAuthenticationModificationHostViewController
- (_ASAccountAuthenticationModificationHostViewController)initWithExtension:(id)extension serviceIdentifier:(id)identifier;
- (_ASAccountAuthenticationModificationHostViewControllerDelegate)delegate;
- (void)_nonUIRequestDidRequireUserInteraction;
- (void)_requestDidFailWithError:(id)error completion:(id)completion;
- (void)dismissRequestUI:(id)i;
- (void)getSignInWithAppleAuthorizationWithState:(id)state nonce:(id)nonce completion:(id)completion;
- (void)prepareToCancelRequestWithHostContext:(id)context error:(id)error completion:(id)completion;
- (void)prepareToCompleteRequestWithHostContext:(id)context updatedCredential:(id)credential userInfo:(id)info completion:(id)completion;
- (void)prepareToCompleteUpgradeToSignInWithAppleRequestWithHostContext:(id)context userInfo:(id)info completion:(id)completion;
- (void)updateCredential:(id)credential withNewPassword:(id)password userInfo:(id)info;
- (void)upgradeCredentialToSignInWithApple:(id)apple userInfo:(id)info;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation _ASAccountAuthenticationModificationHostViewController

- (_ASAccountAuthenticationModificationHostViewController)initWithExtension:(id)extension serviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = _ASAccountAuthenticationModificationHostViewController;
  v8 = [(_ASExtensionViewController *)&v18 initWithExtension:extension];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_serviceIdentifier, identifier);
    v10 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v9 action:sel__cancelButtonPressed];
    extension = [(_ASExtensionViewController *)v9 extension];
    _plugIn = [extension _plugIn];
    localizedContainingName = [_plugIn localizedContainingName];
    navigationItem = [(_ASAccountAuthenticationModificationHostViewController *)v9 navigationItem];
    [navigationItem setTitle:localizedContainingName];

    navigationItem2 = [(_ASAccountAuthenticationModificationHostViewController *)v9 navigationItem];
    [navigationItem2 setRightBarButtonItem:v10];

    [(_ASAccountAuthenticationModificationHostViewController *)v9 setModalInPresentation:1];
    v16 = v9;
  }

  return v9;
}

- (void)upgradeCredentialToSignInWithApple:(id)apple userInfo:(id)info
{
  appleCopy = apple;
  infoCopy = info;
  self->_accountModificationOperation = 1;
  existingCredential = self->_existingCredential;
  self->_existingCredential = appleCopy;
  v9 = appleCopy;

  objc_storeStrong(&self->_userInfo, info);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __102___ASAccountAuthenticationModificationHostViewController_upgradeCredentialToSignInWithApple_userInfo___block_invoke;
  v11[3] = &unk_1E7AF7A80;
  v11[4] = self;
  v12 = infoCopy;
  v10 = infoCopy;
  [(_ASExtensionViewController *)self _beginNonUIRequest:1 connectionHandler:v11];
}

- (void)updateCredential:(id)credential withNewPassword:(id)password userInfo:(id)info
{
  credentialCopy = credential;
  passwordCopy = password;
  infoCopy = info;
  self->_accountModificationOperation = 0;
  existingCredential = self->_existingCredential;
  self->_existingCredential = credentialCopy;
  v12 = credentialCopy;

  newPassword = self->_newPassword;
  self->_newPassword = passwordCopy;
  v14 = passwordCopy;

  objc_storeStrong(&self->_userInfo, info);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __100___ASAccountAuthenticationModificationHostViewController_updateCredential_withNewPassword_userInfo___block_invoke;
  v16[3] = &unk_1E7AF7A80;
  v16[4] = self;
  v17 = infoCopy;
  v15 = infoCopy;
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

- (void)_requestDidFailWithError:(id)error completion:(id)completion
{
  errorCopy = error;
  if (completion)
  {
    completionCopy = completion;
  }

  else
  {
    completionCopy = &__block_literal_global_0;
  }

  v7 = _Block_copy(completionCopy);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountModificationHostViewController:self requestCanceledWithError:errorCopy completion:v7];
  }

  else
  {
    v7[2](v7);
  }
}

- (void)willMoveToParentViewController:(id)controller
{
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  navigationController = [(_ASAccountAuthenticationModificationHostViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setBackgroundColor:systemBackgroundColor];

  navigationController2 = [(_ASAccountAuthenticationModificationHostViewController *)self navigationController];
  navigationBar2 = [navigationController2 navigationBar];
  [navigationBar2 setTranslucent:0];
}

- (void)prepareToCompleteUpgradeToSignInWithAppleRequestWithHostContext:(id)context userInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __142___ASAccountAuthenticationModificationHostViewController_prepareToCompleteUpgradeToSignInWithAppleRequestWithHostContext_userInfo_completion___block_invoke;
  block[3] = &unk_1E7AF7790;
  block[4] = self;
  v12 = infoCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = infoCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)prepareToCompleteRequestWithHostContext:(id)context updatedCredential:(id)credential userInfo:(id)info completion:(id)completion
{
  credentialCopy = credential;
  infoCopy = info;
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __136___ASAccountAuthenticationModificationHostViewController_prepareToCompleteRequestWithHostContext_updatedCredential_userInfo_completion___block_invoke;
  v15[3] = &unk_1E7AF76D0;
  v15[4] = self;
  v16 = credentialCopy;
  v17 = infoCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = infoCopy;
  v14 = credentialCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v15);
}

- (void)prepareToCancelRequestWithHostContext:(id)context error:(id)error completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  if (self->_signInWithAppleAuthorization)
  {
    v10 = objc_alloc_init(MEMORY[0x1E698DD10]);
    v11 = objc_alloc(MEMORY[0x1E69635F8]);
    extension = [(_ASExtensionViewController *)self extension];
    _plugIn = [extension _plugIn];
    containingUrl = [_plugIn containingUrl];
    v28 = 0;
    v15 = [v11 initWithURL:containingUrl allowPlaceholder:0 error:&v28];
    v16 = v28;

    if (v16)
    {
      v17 = WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [_ASAccountAuthenticationModificationHostViewController prepareToCancelRequestWithHostContext:v17 error:v16 completion:?];
      }

      completionCopy[2](completionCopy);
    }

    else
    {
      authorizedRequest = [(AKAuthorization *)self->_signInWithAppleAuthorization authorizedRequest];
      requestIdentifier = [authorizedRequest requestIdentifier];
      uUIDString = [requestIdentifier UUIDString];
      [v10 setTransactionID:uUIDString];

      bundleIdentifier = [v15 bundleIdentifier];
      [v10 setBundleID:bundleIdentifier];

      teamIdentifier = [v15 teamIdentifier];
      [v10 setTeamID:teamIdentifier];

      v23 = objc_alloc_init(MEMORY[0x1E698DCE0]);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __113___ASAccountAuthenticationModificationHostViewController_prepareToCancelRequestWithHostContext_error_completion___block_invoke;
      v24[3] = &unk_1E7AF7AD0;
      v25 = contextCopy;
      selfCopy = self;
      v27 = completionCopy;
      [v23 revokeAuthorizationWithContext:v10 completion:v24];
    }
  }

  else
  {
    v29.receiver = self;
    v29.super_class = _ASAccountAuthenticationModificationHostViewController;
    [(_ASExtensionViewController *)&v29 prepareToCancelRequestWithHostContext:contextCopy error:error completion:completionCopy];
  }
}

- (void)getSignInWithAppleAuthorizationWithState:(id)state nonce:(id)nonce completion:(id)completion
{
  v40[1] = *MEMORY[0x1E69E9840];
  stateCopy = state;
  nonceCopy = nonce;
  completionCopy = completion;
  if (self->_accountModificationOperation == 1)
  {
    navigationController = [(_ASAccountAuthenticationModificationHostViewController *)self navigationController];

    if (navigationController)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained dismissUIForAccountModificationHostViewController:self];
      }
    }

    v13 = objc_alloc_init(MEMORY[0x1E698DD20]);
    v14 = objc_alloc(MEMORY[0x1E69635F8]);
    extension = [(_ASExtensionViewController *)self extension];
    _plugIn = [extension _plugIn];
    containingUrl = [_plugIn containingUrl];
    v36 = 0;
    v18 = [v14 initWithURL:containingUrl allowPlaceholder:0 error:&v36];
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
      completionCopy[2](completionCopy, 0, v23);
    }

    else
    {
      objc_initWeak(&location, self);
      [v13 setState:stateCopy];
      [v13 setNonce:nonceCopy];
      entitlements = [v18 entitlements];
      v26 = [entitlements objectForKey:@"application-identifier" ofClass:objc_opt_class()];
      [v13 setAppID:v26];

      bundleIdentifier = [v18 bundleIdentifier];
      [v13 setBundleID:bundleIdentifier];

      teamIdentifier = [v18 teamIdentifier];
      [v13 setTeamID:teamIdentifier];

      v29 = [objc_alloc(MEMORY[0x1E698DD58]) initWithUpgradeContext:v13];
      v30 = objc_alloc_init(MEMORY[0x1E698DCE0]);
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __116___ASAccountAuthenticationModificationHostViewController_getSignInWithAppleAuthorizationWithState_nonce_completion___block_invoke;
      v32[3] = &unk_1E7AF7AF8;
      objc_copyWeak(&v34, &location);
      v33 = completionCopy;
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
    completionCopy[2](completionCopy, 0, v13);
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)dismissRequestUI:(id)i
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