@interface SFActivityViewController
@end

@implementation SFActivityViewController

void __94___SFActivityViewController_initWithActivityItems_applicationActivities_sharingURL_sourceURL___block_invoke(uint64_t a1, void *a2, unsigned int a3, void *a4, uint64_t a5)
{
  v9 = a4;
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v13 = WeakRetained;
  if (a5)
  {
    v12 = 0;
  }

  else
  {
    v12 = a3;
  }

  [WeakRetained activityDidComplete:v10 withReturnedItems:v9 success:v12];
}

void __45___SFActivityViewController__executeActivity__block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = *(*(a1 + 40) + 1456);
    v5 = v3;
    v6 = [v4 printInteractionController];
    [v5 setPrintInteractionController:v6];

    v7.receiver = *(a1 + 40);
    v7.super_class = _SFActivityViewController;
    objc_msgSendSuper2(&v7, sel__executeActivity);
  }

  else
  {

    [v3 activityDidFinish:0];
  }
}

uint64_t __54___SFActivityViewController__preparePrint_completion___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) activityDidFinish:0];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __64___SFActivityViewController__extensionItemForExtensionActivity___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = [a4 valueForKey:@"extraArguments"];
  if (v7)
  {
    v8 = [*(a1 + 32) _plugIn];
    v9 = [v8 entitlements];
    v10 = [v9 safari_BOOLForKey:@"com.apple.private.Safari.can-pass-extension-parameters"];

    v11 = WBS_LOG_CHANNEL_PREFIXExtensions();
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D4644000, v12, OS_LOG_TYPE_DEFAULT, "Adding extraArguments to NSExtensionItem", buf, 2u);
      }
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __64___SFActivityViewController__extensionItemForExtensionActivity___block_invoke_cold_1((a1 + 32), v12);
      }

      v7 = 0;
    }
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 1408));
  v14 = [*(a1 + 32) identifier];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __64___SFActivityViewController__extensionItemForExtensionActivity___block_invoke_76;
  v16[3] = &unk_1E8490C68;
  v17 = v6;
  v15 = v6;
  [WeakRetained runJavaScriptForSharingExtension:v14 extraArguments:v7 completion:v16];
}

void __64___SFActivityViewController__extensionItemForExtensionActivity___block_invoke_76(uint64_t a1, void *a2, void *a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v8 = *MEMORY[0x1E696A2F0];
    v9[0] = v5;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v7 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void __82___SFActivityViewController__processJavaScriptFinalizeReturnedItems_forExtension___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __82___SFActivityViewController__processJavaScriptFinalizeReturnedItems_forExtension___block_invoke_2;
  v9[3] = &unk_1E84900F0;
  objc_copyWeak(&v13, (a1 + 40));
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 32);
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  objc_destroyWeak(&v13);
}

void __82___SFActivityViewController__processJavaScriptFinalizeReturnedItems_forExtension___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    v5 = v3;
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v7 = v4;
      if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v6 = [v7 safari_dictionaryForKey:*MEMORY[0x1E696A2E8]];
      }

      else
      {
        v6 = 0;
      }
    }

    v8 = objc_loadWeakRetained(v11 + 176);
    v9 = v8;
    if (v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = MEMORY[0x1E695E0F8];
    }

    [v8 finalizeJavaScriptForSharingExtension:*(a1 + 48) arguments:v10];

    WeakRetained = v11;
  }
}

void __64___SFActivityViewController__extensionItemForExtensionActivity___block_invoke_cold_1(void **a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a2;
  v4 = [v2 identifier];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1D4644000, v3, OS_LOG_TYPE_ERROR, "Not allowing extraArguments to be passed to JavaScript of extension '%{public}@' due to missing entitlement", &v5, 0xCu);
}

@end