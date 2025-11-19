@interface UIPasteboard
@end

@implementation UIPasteboard

void __95__UIPasteboard_SafariServicesExtras__safari_bestStringForPastingIntoURLFieldCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69DDCA8]];
  if (v7 || ([v5 objectForKeyedSubscript:*MEMORY[0x1E69DDCA0]], (v7 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(*(a1 + 32), "string"), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
  }

  else
  {
    v11 = WBS_LOG_CHANNEL_PREFIXOther();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __95__UIPasteboard_SafariServicesExtras__safari_bestStringForPastingIntoURLFieldCompletionHandler___block_invoke_cold_1(v11, v5, v6);
    }

    v8 = 0;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __95__UIPasteboard_SafariServicesExtras__safari_bestStringForPastingIntoURLFieldCompletionHandler___block_invoke_1;
  v12[3] = &unk_1E8490798;
  v9 = *(a1 + 40);
  v13 = v8;
  v14 = v9;
  v10 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v12);
}

void __95__UIPasteboard_SafariServicesExtras__safari_bestStringForPastingIntoURLFieldCompletionHandler___block_invoke_cold_1(void *a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [a2 allKeys];
  v7 = [a3 safari_privacyPreservingError];
  v8 = 138543618;
  v9 = v6;
  v10 = 2114;
  v11 = v7;
  _os_log_error_impl(&dword_1D4644000, v5, OS_LOG_TYPE_ERROR, "Paste failed with detected types: %{public}@, error: %{public}@", &v8, 0x16u);
}

@end