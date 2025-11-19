@interface SFAutomaticPasswordInputViewController
@end

@implementation SFAutomaticPasswordInputViewController

void __138___SFAutomaticPasswordInputViewController__inputViewControllerWithAutoFillContext_passwordRules_overrideApplicationIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) invalidate];
  if (v6)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v9 = [MEMORY[0x1E696AAE8] mainBundle];
      v8 = [v9 bundleIdentifier];
    }

    v10 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __138___SFAutomaticPasswordInputViewController__inputViewControllerWithAutoFillContext_passwordRules_overrideApplicationIdentifier_completion___block_invoke_cold_1(v8, v6, v10);
    }
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __138___SFAutomaticPasswordInputViewController__inputViewControllerWithAutoFillContext_passwordRules_overrideApplicationIdentifier_completion___block_invoke_22;
  v12[3] = &unk_1E8490818;
  v13 = v5;
  v14 = *(a1 + 48);
  v11 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v12);
}

void __138___SFAutomaticPasswordInputViewController__inputViewControllerWithAutoFillContext_passwordRules_overrideApplicationIdentifier_completion___block_invoke_22(uint64_t a1)
{
  if ([*(a1 + 32) length])
  {
    v2 = [[_SFAutomaticPasswordInputViewController alloc] initWithPassword:*(a1 + 32) keyboardType:1];
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  (*(*(a1 + 40) + 16))();
}

void __138___SFAutomaticPasswordInputViewController__inputViewControllerWithAutoFillContext_passwordRules_overrideApplicationIdentifier_completion___block_invoke_cold_1(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 domain];
  v8 = [v7 isEqualToString:*MEMORY[0x1E69C8E58]];

  if (v8)
  {
    v9 = [v5 code];

    if (v9 > 3)
    {
      v10 = &stru_1F4FE9E38;
    }

    else
    {
      v10 = off_1E8493AA0[v9];
    }
  }

  else
  {
    v10 = [v5 safari_privacyPreservingDescription];
  }

  v11 = 138543618;
  v12 = a1;
  v13 = 2114;
  v14 = v10;
  _os_log_error_impl(&dword_1D4644000, v6, OS_LOG_TYPE_ERROR, "Cannot show Automatic Strong Passwords for app bundleID: %{public}@ due to error: %{public}@", &v11, 0x16u);
}

@end