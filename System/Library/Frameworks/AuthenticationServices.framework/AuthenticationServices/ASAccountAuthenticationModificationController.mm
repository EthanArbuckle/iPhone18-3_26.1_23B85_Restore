@interface ASAccountAuthenticationModificationController
- (ASAccountAuthenticationModificationController)init;
- (id)_viewControllerToPresentFrom;
- (id)delegate;
- (id)presentationContextProvider;
- (void)_failRequestWithError:(id)error;
- (void)_invalidate;
- (void)_performReplacePasswordWithSignInWithAppleRequest:(id)request;
- (void)_performUpgradePasswordToStrongPasswordRequest:(id)request;
- (void)_requestRemoteViewController:(id)controller;
- (void)_showUpgradeToStrongPasswordPromptForRequest:(id)request;
- (void)accountModificationRemoteViewController:(id)controller didFinishWithCredential:(id)credential userInfo:(id)info completion:(id)completion;
- (void)accountModificationRemoteViewController:(id)controller requestCanceledWithError:(id)error completion:(id)completion;
- (void)accountModificationRemoteViewController:(id)controller viewServiceDidTerminateWithError:(id)error;
- (void)accountModificationRemoteViewControllerDidFinishUpgradeToSignInWithApple:(id)apple userInfo:(id)info completion:(id)completion;
- (void)dismissAccountModificationRemoteViewController:(id)controller;
- (void)init;
- (void)performRequest:(ASAccountAuthenticationModificationRequest *)request;
- (void)presentAccountModificationRemoteViewController:(id)controller;
@end

@implementation ASAccountAuthenticationModificationController

- (ASAccountAuthenticationModificationController)init
{
  v15[1] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = ASAccountAuthenticationModificationController;
  v2 = [(ASAccountAuthenticationModificationController *)&v13 init];
  if (v2)
  {
    v14 = *MEMORY[0x1E696A2E0];
    v15[0] = @"com.apple.AuthenticationServicesUI.AccountAuthenticationModificationExtensionHelper";
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v12 = 0;
    v4 = [MEMORY[0x1E696ABD0] extensionsWithMatchingAttributes:v3 error:&v12];
    v5 = v12;
    firstObject = [v4 firstObject];
    helperExtension = v2->_helperExtension;
    v2->_helperExtension = firstObject;

    if (v2->_helperExtension)
    {
      v8 = v2;
    }

    else
    {
      if (v5)
      {
        v9 = WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [(ASAccountAuthenticationModificationController *)v9 init];
        }
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)performRequest:(ASAccountAuthenticationModificationRequest *)request
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = request;
  if (self->_request)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v7 = MEMORY[0x1E696ABC0];
      v16 = @"ASExtensionLocalizedFailureReasonErrorKey";
      v17[0] = @"Cannot start another Account Authentication Modification request until the current request finishes.";
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      v9 = [v7 errorWithDomain:@"ASExtensionErrorDomain" code:0 userInfo:v8];
      [WeakRetained accountAuthenticationModificationController:self didFailRequest:v5 withError:v9];
    }

LABEL_11:

    goto LABEL_12;
  }

  objc_storeStrong(&self->_request, request);
  objc_storeStrong(&self->_referenceToSelf, self);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ASAccountAuthenticationModificationController *)self _performReplacePasswordWithSignInWithAppleRequest:v5];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v10 = MEMORY[0x1E696ABC0];
        v14 = *MEMORY[0x1E696A588];
        v15 = @"Received request is not a valid ASAccountAuthenticationModificationRequest subclass.";
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
        v12 = [v10 errorWithDomain:@"ASExtensionErrorDomain" code:0 userInfo:v11];
        [WeakRetained accountAuthenticationModificationController:self didFailRequest:v5 withError:v12];
      }

      [(ASAccountAuthenticationModificationController *)self _invalidate];
      goto LABEL_11;
    }

    [(ASAccountAuthenticationModificationController *)self _showUpgradeToStrongPasswordPromptForRequest:v5];
  }

LABEL_12:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_requestRemoteViewController:(id)controller
{
  controllerCopy = controller;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__ASAccountAuthenticationModificationController__requestRemoteViewController___block_invoke;
  aBlock[3] = &unk_1E7AF8478;
  v5 = controllerCopy;
  v14 = v5;
  v6 = _Block_copy(aBlock);
  if ([MEMORY[0x1E69C8880] hasInternalContent] && (objc_msgSend(MEMORY[0x1E695E000], "standardUserDefaults"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "BOOLForKey:", @"ASDebugASAccountAuthenticationModificationControllerUsesSafariViewService"), v7, v8))
  {
    v9 = [_ASAccountAuthenticationModificationRemoteViewController requestViewControllerWithConnectionHandler:v6];
  }

  else
  {
    helperExtension = self->_helperExtension;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __78__ASAccountAuthenticationModificationController__requestRemoteViewController___block_invoke_2;
    v11[3] = &unk_1E7AF84A0;
    v12 = v6;
    [(NSExtension *)helperExtension _as_instantiateViewControllerWithConnectionHandler:v11];
  }
}

- (void)_performReplacePasswordWithSignInWithAppleRequest:(id)request
{
  requestCopy = request;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __99__ASAccountAuthenticationModificationController__performReplacePasswordWithSignInWithAppleRequest___block_invoke;
  v6[3] = &unk_1E7AF84C8;
  v6[4] = self;
  v7 = requestCopy;
  v5 = requestCopy;
  [(ASAccountAuthenticationModificationController *)self _requestRemoteViewController:v6];
}

void __99__ASAccountAuthenticationModificationController__performReplacePasswordWithSignInWithAppleRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!v6 || v7)
  {
    v19 = WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __99__ASAccountAuthenticationModificationController__performReplacePasswordWithSignInWithAppleRequest___block_invoke_cold_1(v19, v8);
    }

    [*(a1 + 32) _failRequestWithError:v8];
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 8), a2);
    [*(*(a1 + 32) + 8) setDelegate:?];
    v9 = [ASPasswordCredential alloc];
    v10 = [*(a1 + 40) user];
    v11 = [*(a1 + 40) password];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = &stru_1F28DE020;
    }

    v14 = [(ASPasswordCredential *)v9 initWithUser:v10 password:v13];

    v15 = [*(*(a1 + 32) + 16) serviceIdentifier];
    v16 = *(*(a1 + 32) + 8);
    v17 = [*(a1 + 40) userInfo];
    v18 = [*(a1 + 40) extension];
    [v16 upgradeCredentialToSignInWithApple:v14 forServiceIdentifier:v15 userInfo:v17 extension:v18];
  }
}

- (void)_showUpgradeToStrongPasswordPromptForRequest:(id)request
{
  v39[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = MEMORY[0x1E69635E0];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v8 = [v5 applicationProxyForIdentifier:bundleIdentifier];
  localizedName = [v8 localizedName];

  currentDevice = [MEMORY[0x1E69C8860] currentDevice];
  [currentDevice deviceClass];

  v11 = MEMORY[0x1E696AEC0];
  v12 = _WBSLocalizedString();
  v13 = [v11 stringWithFormat:v12, localizedName];

  v14 = _WBSLocalizedString();
  v15 = MEMORY[0x1E69DC650];
  v16 = localizedName;
  if (deviceAlertStyle_onceToken != -1)
  {
    [ASAccountAuthenticationModificationController _showUpgradeToStrongPasswordPromptForRequest:];
  }

  v34 = v13;
  v17 = [v15 alertControllerWithTitle:v13 message:v14 preferredStyle:deviceAlertStyle_style];
  v18 = MEMORY[0x1E69DC648];
  v19 = _WBSLocalizedString();
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __94__ASAccountAuthenticationModificationController__showUpgradeToStrongPasswordPromptForRequest___block_invoke;
  v36[3] = &unk_1E7AF84F0;
  v36[4] = self;
  v20 = requestCopy;
  v37 = v20;
  v21 = [v18 actionWithTitle:v19 style:0 handler:v36];
  [v17 addAction:v21];

  v22 = MEMORY[0x1E69DC648];
  v23 = _WBSLocalizedString();
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __94__ASAccountAuthenticationModificationController__showUpgradeToStrongPasswordPromptForRequest___block_invoke_2;
  v35[3] = &unk_1E7AF8518;
  v35[4] = self;
  v24 = [v22 actionWithTitle:v23 style:1 handler:v35];
  [v17 addAction:v24];

  _viewControllerToPresentFrom = [(ASAccountAuthenticationModificationController *)self _viewControllerToPresentFrom];
  v26 = _viewControllerToPresentFrom;
  if (_viewControllerToPresentFrom)
  {
    [_viewControllerToPresentFrom presentViewController:v17 animated:1 completion:0];
  }

  else
  {
    v27 = WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [ASAccountAuthenticationModificationController _showUpgradeToStrongPasswordPromptForRequest:v27];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      request = self->_request;
      v33 = MEMORY[0x1E696ABC0];
      v38 = *MEMORY[0x1E696A588];
      v39[0] = @"No presentation anchor provided to show strong password upgrade UI.";
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
      v31 = [v33 errorWithDomain:@"ASExtensionErrorDomain" code:0 userInfo:v30];
      [WeakRetained accountAuthenticationModificationController:self didFailRequest:request withError:v31];
    }

    [(ASAccountAuthenticationModificationController *)self _invalidate];
  }

  v32 = *MEMORY[0x1E69E9840];
}

void __94__ASAccountAuthenticationModificationController__showUpgradeToStrongPasswordPromptForRequest___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  if (objc_opt_respondsToSelector())
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 16);
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ASExtensionErrorDomain" code:1 userInfo:0];
    [WeakRetained accountAuthenticationModificationController:v2 didFailRequest:v3 withError:v4];
  }

  [*(a1 + 32) _invalidate];
}

- (void)_performUpgradePasswordToStrongPasswordRequest:(id)request
{
  requestCopy = request;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __96__ASAccountAuthenticationModificationController__performUpgradePasswordToStrongPasswordRequest___block_invoke;
  v6[3] = &unk_1E7AF84C8;
  v6[4] = self;
  v7 = requestCopy;
  v5 = requestCopy;
  [(ASAccountAuthenticationModificationController *)self _requestRemoteViewController:v6];
}

void __96__ASAccountAuthenticationModificationController__performUpgradePasswordToStrongPasswordRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!v6 || v7)
  {
    v19 = WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __99__ASAccountAuthenticationModificationController__performReplacePasswordWithSignInWithAppleRequest___block_invoke_cold_1(v19, v8);
    }

    [*(a1 + 32) _failRequestWithError:v8];
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 8), a2);
    [*(*(a1 + 32) + 8) setDelegate:?];
    v9 = [ASPasswordCredential alloc];
    v10 = [*(a1 + 40) user];
    v11 = [*(a1 + 40) password];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = &stru_1F28DE020;
    }

    v14 = [(ASPasswordCredential *)v9 initWithUser:v10 password:v13];

    v15 = [*(*(a1 + 32) + 16) serviceIdentifier];
    v16 = *(*(a1 + 32) + 8);
    v17 = [*(a1 + 40) userInfo];
    v18 = [*(a1 + 40) extension];
    [v16 updateCredential:v14 forServiceIdentifier:v15 userInfo:v17 extension:v18];
  }
}

- (void)_invalidate
{
  [(_ASAccountAuthenticationModificationRemoteViewController *)self->_accountAuthenticationModificationRemoteViewController setDelegate:0];
  accountAuthenticationModificationRemoteViewController = self->_accountAuthenticationModificationRemoteViewController;
  self->_accountAuthenticationModificationRemoteViewController = 0;

  request = self->_request;
  self->_request = 0;

  referenceToSelf = self->_referenceToSelf;
  self->_referenceToSelf = 0;
}

- (void)_failRequestWithError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountAuthenticationModificationController:self didFailRequest:self->_request withError:errorCopy];
  }

  [(ASAccountAuthenticationModificationController *)self _invalidate];
}

- (id)_viewControllerToPresentFrom
{
  presentationContextProvider = [(ASAccountAuthenticationModificationController *)self presentationContextProvider];
  v4 = [presentationContextProvider presentationAnchorForAccountAuthenticationModificationController:self];
  rootViewController = [v4 rootViewController];

  _as_viewControllerToPresentFrom = [rootViewController _as_viewControllerToPresentFrom];

  return _as_viewControllerToPresentFrom;
}

- (void)accountModificationRemoteViewControllerDidFinishUpgradeToSignInWithApple:(id)apple userInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  presentingViewController = [(_ASAccountAuthenticationModificationRemoteViewController *)self->_accountAuthenticationModificationRemoteViewController presentingViewController];
  v9 = presentingViewController;
  if (presentingViewController)
  {
    [presentingViewController dismissViewControllerAnimated:1 completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountAuthenticationModificationController:self didSuccessfullyCompleteRequest:self->_request withUserInfo:infoCopy];
  }

  [(ASAccountAuthenticationModificationController *)self _invalidate];
}

- (void)accountModificationRemoteViewController:(id)controller didFinishWithCredential:(id)credential userInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  presentingViewController = [(_ASAccountAuthenticationModificationRemoteViewController *)self->_accountAuthenticationModificationRemoteViewController presentingViewController];
  v10 = presentingViewController;
  if (presentingViewController)
  {
    [presentingViewController dismissViewControllerAnimated:1 completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountAuthenticationModificationController:self didSuccessfullyCompleteRequest:self->_request withUserInfo:infoCopy];
  }

  [(ASAccountAuthenticationModificationController *)self _invalidate];
}

- (void)presentAccountModificationRemoteViewController:(id)controller
{
  v14[1] = *MEMORY[0x1E69E9840];
  _viewControllerToPresentFrom = [(ASAccountAuthenticationModificationController *)self _viewControllerToPresentFrom];
  v5 = _viewControllerToPresentFrom;
  if (_viewControllerToPresentFrom)
  {
    [_viewControllerToPresentFrom presentViewController:self->_accountAuthenticationModificationRemoteViewController animated:1 completion:0];
  }

  else
  {
    v6 = WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ASAccountAuthenticationModificationController presentAccountModificationRemoteViewController:v6];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      request = self->_request;
      v9 = MEMORY[0x1E696ABC0];
      v13 = *MEMORY[0x1E696A588];
      v14[0] = @"No presentation anchor provided to show extension UI.";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v11 = [v9 errorWithDomain:@"ASExtensionErrorDomain" code:0 userInfo:v10];
      [WeakRetained accountAuthenticationModificationController:self didFailRequest:request withError:v11];
    }

    [(ASAccountAuthenticationModificationController *)self _invalidate];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)accountModificationRemoteViewController:(id)controller requestCanceledWithError:(id)error completion:(id)completion
{
  errorCopy = error;
  completionCopy = completion;
  presentingViewController = [(_ASAccountAuthenticationModificationRemoteViewController *)self->_accountAuthenticationModificationRemoteViewController presentingViewController];
  v9 = presentingViewController;
  if (presentingViewController)
  {
    [presentingViewController dismissViewControllerAnimated:1 completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountAuthenticationModificationController:self didFailRequest:self->_request withError:errorCopy];
  }

  [(ASAccountAuthenticationModificationController *)self _invalidate];
}

- (void)accountModificationRemoteViewController:(id)controller viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountAuthenticationModificationController:self didFailRequest:self->_request withError:errorCopy];
  }

  [(ASAccountAuthenticationModificationController *)self _invalidate];
}

- (void)dismissAccountModificationRemoteViewController:(id)controller
{
  presentationContextProvider = [(ASAccountAuthenticationModificationController *)self presentationContextProvider];
  v5 = [presentationContextProvider presentationAnchorForAccountAuthenticationModificationController:self];
  rootViewController = [v5 rootViewController];

  [rootViewController dismissViewControllerAnimated:1 completion:0];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)presentationContextProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationContextProvider);

  return WeakRetained;
}

- (void)init
{
  v12 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  safari_privacyPreservingDescription = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_0(&dword_1B1C8D000, v5, v6, "Failed to find helper extension to perform Account Authentication Modification Extension requests with error %{public}@.", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

void __99__ASAccountAuthenticationModificationController__performReplacePasswordWithSignInWithAppleRequest___block_invoke_cold_1(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_0(&dword_1B1C8D000, v5, v6, "Failed to get remote view controller from helper extension: %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

@end