@interface ASCredentialAuthenticationViewController
@end

@implementation ASCredentialAuthenticationViewController

void __117___ASCredentialAuthenticationViewController_initWithExtension_passkeyRegistrationRequest_forConditionalRegistration___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = v3[129];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __117___ASCredentialAuthenticationViewController_initWithExtension_passkeyRegistrationRequest_forConditionalRegistration___block_invoke_3;
  v5[3] = &unk_1E7AF7608;
  v6 = v3;
  [a2 prepareInterfaceForPasskeyRegistration:v4 completionHandler:v5];
}

void __117___ASCredentialAuthenticationViewController_initWithExtension_passkeyRegistrationRequest_forConditionalRegistration___block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __117___ASCredentialAuthenticationViewController_initWithExtension_passkeyRegistrationRequest_forConditionalRegistration___block_invoke_4;
  block[3] = &unk_1E7AF7608;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __117___ASCredentialAuthenticationViewController_initWithExtension_passkeyRegistrationRequest_forConditionalRegistration___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1048));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained presentUIForPasswordCredentialAuthenticationViewController:*(a1 + 32)];
  }
}

void __82___ASCredentialAuthenticationViewController_initWithExtension_credentialIdentity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) credentialIdentityStoreIdentifier];
  v5 = [*(a1 + 40) nonUIHostContext];
  v6 = [v5 _auxiliaryConnection];
  v7 = SFCredentialIdentityStoreIdentifierCreateWithConnectionToExtension();

  if ([v4 isEqual:v7])
  {
    [v3 provideCredentialWithoutUserInteractionForRequest:*(*(a1 + 40) + 1032)];
  }

  else
  {
    v8 = WBS_LOG_CHANNEL_PREFIXCredentialProviderExtension();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __82___ASCredentialAuthenticationViewController_initWithExtension_credentialIdentity___block_invoke_cold_1(v4, v7, v8);
    }

    v9 = [*(a1 + 40) extension];
    [v9 _kill:9];
  }
}

uint64_t __83___ASCredentialAuthenticationViewController__nonUIRequestDidRequireUserInteraction__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1032);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __83___ASCredentialAuthenticationViewController__nonUIRequestDidRequireUserInteraction__block_invoke_2;
  v5[3] = &unk_1E7AF7608;
  v5[4] = v2;
  return [a2 prepareInterfaceToProvideCredentialForRequest:v3 completionHandler:v5];
}

void __83___ASCredentialAuthenticationViewController__nonUIRequestDidRequireUserInteraction__block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83___ASCredentialAuthenticationViewController__nonUIRequestDidRequireUserInteraction__block_invoke_3;
  block[3] = &unk_1E7AF7608;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __83___ASCredentialAuthenticationViewController__nonUIRequestDidRequireUserInteraction__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1048));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained presentUIForPasswordCredentialAuthenticationViewController:*(a1 + 32)];
  }
}

void __81___ASCredentialAuthenticationViewController__requestDidFailWithError_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXCredentialProviderExtension();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __81___ASCredentialAuthenticationViewController__requestDidFailWithError_completion___block_invoke_cold_1(v6, v5);
    }
  }

  [*(a1 + 32) invalidate];
}

void __82___ASCredentialAuthenticationViewController_initWithExtension_credentialIdentity___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1B1C8D000, log, OS_LOG_TYPE_ERROR, "Refusing to send credential identity with store identifier [%{public}@] to to extension with store identifier [%{public}@]", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void __81___ASCredentialAuthenticationViewController__requestDidFailWithError_completion___block_invoke_cold_1(void *a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_1B1C8D000, v3, OS_LOG_TYPE_ERROR, "Failed to remove credential identity store with error: %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

@end