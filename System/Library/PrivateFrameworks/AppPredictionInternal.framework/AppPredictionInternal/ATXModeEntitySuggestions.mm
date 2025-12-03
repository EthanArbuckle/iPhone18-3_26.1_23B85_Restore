@interface ATXModeEntitySuggestions
- (void)suggestedBundleIDsForAllowListWithCompletion:(id)completion;
- (void)suggestedBundleIDsForDenyListWithCompletion:(id)completion;
@end

@implementation ATXModeEntitySuggestions

- (void)suggestedBundleIDsForAllowListWithCompletion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = dispatch_group_create();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = allModesForTraining();
  v6 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      v9 = 0;
      do
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        unsignedIntegerValue = [*(*(&v26 + 1) + 8 * v9) unsignedIntegerValue];
        v11 = objc_opt_new();
        v12 = ATXModeToString();
        [v3 setObject:v11 forKeyedSubscript:v12];

        dispatch_group_enter(v5);
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __73__ATXModeEntitySuggestions_suggestedBundleIDsForAllowListWithCompletion___block_invoke;
        v22[3] = &unk_278597B60;
        v23 = v5;
        v24 = v3;
        v25 = unsignedIntegerValue;
        [v4 recommendedAndCandidateAllowedAppsForMode:unsignedIntegerValue reply:v22];

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v7);
  }

  v13 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__ATXModeEntitySuggestions_suggestedBundleIDsForAllowListWithCompletion___block_invoke_2;
  block[3] = &unk_278596F88;
  v20 = v3;
  v21 = completionCopy;
  v14 = v3;
  v15 = completionCopy;
  dispatch_group_notify(v5, v13, block);

  v16 = *MEMORY[0x277D85DE8];
}

void __73__ATXModeEntitySuggestions_suggestedBundleIDsForAllowListWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = __atxlog_handle_usage_insights();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __73__ATXModeEntitySuggestions_suggestedBundleIDsForAllowListWithCompletion___block_invoke_cold_1(v6, v7);
    }

    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    v8 = [v5 recommendedApps];
    v9 = [v8 _pas_mappedArrayWithTransform:&__block_literal_global_15];

    v10 = *(a1 + 40);
    objc_sync_enter(v10);
    v12 = *(a1 + 40);
    v11 = *(a1 + 48);
    v13 = ATXModeToString();
    [v12 setObject:v9 forKeyedSubscript:v13];

    objc_sync_exit(v10);
    dispatch_group_leave(*(a1 + 32));
  }
}

- (void)suggestedBundleIDsForDenyListWithCompletion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = dispatch_group_create();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = allModesForTraining();
  v6 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      v9 = 0;
      do
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        unsignedIntegerValue = [*(*(&v26 + 1) + 8 * v9) unsignedIntegerValue];
        v11 = objc_opt_new();
        v12 = ATXModeToString();
        [v3 setObject:v11 forKeyedSubscript:v12];

        dispatch_group_enter(v5);
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __72__ATXModeEntitySuggestions_suggestedBundleIDsForDenyListWithCompletion___block_invoke;
        v22[3] = &unk_278597B60;
        v23 = v5;
        v24 = v3;
        v25 = unsignedIntegerValue;
        [v4 recommendedAndCandidateDeniedAppsForMode:unsignedIntegerValue reply:v22];

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v7);
  }

  v13 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__ATXModeEntitySuggestions_suggestedBundleIDsForDenyListWithCompletion___block_invoke_2;
  block[3] = &unk_278596F88;
  v20 = v3;
  v21 = completionCopy;
  v14 = v3;
  v15 = completionCopy;
  dispatch_group_notify(v5, v13, block);

  v16 = *MEMORY[0x277D85DE8];
}

void __72__ATXModeEntitySuggestions_suggestedBundleIDsForDenyListWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = __atxlog_handle_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __72__ATXModeEntitySuggestions_suggestedBundleIDsForDenyListWithCompletion___block_invoke_cold_1(v6, v7);
    }

    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    v8 = [v5 recommendedApps];
    v9 = [v8 _pas_mappedArrayWithTransform:&__block_literal_global_24];

    v10 = *(a1 + 40);
    objc_sync_enter(v10);
    v12 = *(a1 + 40);
    v11 = *(a1 + 48);
    v13 = ATXModeToString();
    [v12 setObject:v9 forKeyedSubscript:v13];

    objc_sync_exit(v10);
    dispatch_group_leave(*(a1 + 32));
  }
}

void __73__ATXModeEntitySuggestions_suggestedBundleIDsForAllowListWithCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Could not get recommended and candidate allowed apps: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __72__ATXModeEntitySuggestions_suggestedBundleIDsForDenyListWithCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Could not get recommended and candidate denied apps: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end