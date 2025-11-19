@interface KCSharingGroupManager
@end

@implementation KCSharingGroupManager

void __120__KCSharingGroupManager_AuthenticationServicesExtras__as_getKCSharingParticipantsForFamilyMembersWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXPasswordManager();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __120__KCSharingGroupManager_AuthenticationServicesExtras__as_getKCSharingParticipantsForFamilyMembersWithCompletionHandler___block_invoke_cold_1(v6, v5);
    }
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [a2 members];
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          if (([v12 isMe] & 1) == 0)
          {
            dispatch_group_enter(*(a1 + 32));
            v13 = [v12 appleID];
            v14 = [MEMORY[0x1E697AA68] sharedInstance];
            v17[0] = MEMORY[0x1E69E9820];
            v17[1] = 3221225472;
            v17[2] = __120__KCSharingGroupManager_AuthenticationServicesExtras__as_getKCSharingParticipantsForFamilyMembersWithCompletionHandler___block_invoke_18;
            v17[3] = &unk_1E7AF8000;
            v18 = v13;
            v19 = *(a1 + 40);
            v20 = *(a1 + 32);
            v15 = v13;
            [v14 checkAvailabilityForHandle:v15 completion:v17];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    v5 = 0;
  }

  dispatch_group_leave(*(a1 + 32));

  v16 = *MEMORY[0x1E69E9840];
}

void __120__KCSharingGroupManager_AuthenticationServicesExtras__as_getKCSharingParticipantsForFamilyMembersWithCompletionHandler___block_invoke_18(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXPasswordManager();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __120__KCSharingGroupManager_AuthenticationServicesExtras__as_getKCSharingParticipantsForFamilyMembersWithCompletionHandler___block_invoke_18_cold_1(v6, v5);
      if (!a2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  if (a2)
  {
LABEL_4:
    v7 = [objc_alloc(MEMORY[0x1E697AA78]) initWithHandle:*(a1 + 32) permissionLevel:1];
    v8 = *(a1 + 40);
    objc_sync_enter(v8);
    [*(a1 + 40) addObject:v7];
    objc_sync_exit(v8);
  }

LABEL_5:
  dispatch_group_leave(*(a1 + 48));
}

void __120__KCSharingGroupManager_AuthenticationServicesExtras__as_getKCSharingParticipantsForFamilyMembersWithCompletionHandler___block_invoke_cold_1(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_0(&dword_1B1C8D000, v5, v6, "Failed to fetch FAFamilyCircle with error: %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

void __120__KCSharingGroupManager_AuthenticationServicesExtras__as_getKCSharingParticipantsForFamilyMembersWithCompletionHandler___block_invoke_18_cold_1(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_0(&dword_1B1C8D000, v5, v6, "Failed to check recipient eligibility for shared account groups with error: %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

@end