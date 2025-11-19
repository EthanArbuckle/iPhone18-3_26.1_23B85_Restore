@interface ASAccountAuthenticationModificationHostViewController
@end

@implementation ASAccountAuthenticationModificationHostViewController

void __96___ASAccountAuthenticationModificationHostViewController__nonUIRequestDidRequireUserInteraction__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __96___ASAccountAuthenticationModificationHostViewController__nonUIRequestDidRequireUserInteraction__block_invoke_2;
  aBlock[3] = &unk_1E7AF75E0;
  objc_copyWeak(&v9, (a1 + 40));
  v5 = _Block_copy(aBlock);
  objc_storeStrong((*(a1 + 32) + 1072), a2);
  v6 = *(a1 + 32);
  v7 = v6[132];
  if (v7 == 1)
  {
    [v4 prepareInterfaceToUpgradeCredentialToSignInWithApple:v6[130] serviceIdentifier:v6[129] userInfo:v6[135] completion:v5];
  }

  else if (!v7)
  {
    [v4 prepareInterfaceToUpdatePasswordForServiceIdentifier:v6[129] existingCredential:v6[130] newPassword:v6[131] userInfo:v6[135] completion:v5];
  }

  objc_destroyWeak(&v9);
}

void __96___ASAccountAuthenticationModificationHostViewController__nonUIRequestDidRequireUserInteraction__block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96___ASAccountAuthenticationModificationHostViewController__nonUIRequestDidRequireUserInteraction__block_invoke_3;
  block[3] = &unk_1E7AF75E0;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __96___ASAccountAuthenticationModificationHostViewController__nonUIRequestDidRequireUserInteraction__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 136);
    if (objc_opt_respondsToSelector())
    {
      [v2 presentUIForAccountModificationHostViewController:v3];
    }

    WeakRetained = v3;
  }
}

void __142___ASAccountAuthenticationModificationHostViewController_prepareToCompleteUpgradeToSignInWithAppleRequestWithHostContext_userInfo_completion___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 1088));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountModificationHostViewControllerDidCompleteUpgradeToSignInWithApple:a1[4] userInfo:a1[5] completion:a1[6]];
  }

  else
  {
    (*(a1[6] + 16))();
  }
}

void __136___ASAccountAuthenticationModificationHostViewController_prepareToCompleteRequestWithHostContext_updatedCredential_userInfo_completion___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 1088));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountModificationHostViewController:a1[4] didFinishWithCredential:a1[5] userInfo:a1[6] completion:a1[7]];
  }

  else
  {
    (*(a1[7] + 16))();
  }
}

void __113___ASAccountAuthenticationModificationHostViewController_prepareToCancelRequestWithHostContext_error_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1C8D000, v7, OS_LOG_TYPE_DEFAULT, "Authorization controller successfully revoked the upgrade authorization.", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __113___ASAccountAuthenticationModificationHostViewController_prepareToCancelRequestWithHostContext_error_completion___block_invoke_cold_1(v7, v5);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v10.receiver = *(a1 + 40);
  v10.super_class = _ASAccountAuthenticationModificationHostViewController;
  objc_msgSendSuper2(&v10, sel_prepareToCancelRequestWithHostContext_error_completion_, v8, v5, v9);
}

void __116___ASAccountAuthenticationModificationHostViewController_getSignInWithAppleAuthorizationWithState_nonce_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      objc_storeStrong(WeakRetained + 133, a2);
      v10 = [v6 credential];
      v11 = [v10 authenticationServicesCredential];

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      if (v7)
      {
        v16 = WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          __116___ASAccountAuthenticationModificationHostViewController_getSignInWithAppleAuthorizationWithState_nonce_completion___block_invoke_cold_1(v16, v7);
        }
      }

      v17 = *(a1 + 32);
      v18 = *MEMORY[0x1E698DB28];
      v19 = v7;
      v20 = [v19 safari_matchesErrorDomain:v18 andCode:-7003];
      v21 = MEMORY[0x1E696ABC0];
      if (v20)
      {
        v22 = *MEMORY[0x1E696AA08];
        v29[0] = *MEMORY[0x1E696A588];
        v29[1] = v22;
        v30[0] = @"User tapped cancel on Sign in with Apple sheet.";
        v30[1] = v19;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
        v24 = v21;
        v25 = 1;
      }

      else
      {
        v29[0] = *MEMORY[0x1E696AA08];
        v30[0] = v19;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:1];
        v24 = v21;
        v25 = 0;
      }

      v11 = [v24 errorWithDomain:@"ASExtensionErrorDomain" code:v25 userInfo:v23];

      (*(v17 + 16))(v17, 0, v11);
    }
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E696A588];
    v28 = @"Host view controller deallocated.";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v15 = [v13 errorWithDomain:@"ASExtensionErrorDomain" code:0 userInfo:v14];
    (*(v12 + 16))(v12, 0, v15);
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __113___ASAccountAuthenticationModificationHostViewController_prepareToCancelRequestWithHostContext_error_completion___block_invoke_cold_1(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B1C8D000, v5, v6, "Authorization controller attempted to revoke upgrade authorization and failed with error: %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __116___ASAccountAuthenticationModificationHostViewController_getSignInWithAppleAuthorizationWithState_nonce_completion___block_invoke_cold_1(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B1C8D000, v5, v6, "Error when creating Sign in with Apple Authorization: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

@end