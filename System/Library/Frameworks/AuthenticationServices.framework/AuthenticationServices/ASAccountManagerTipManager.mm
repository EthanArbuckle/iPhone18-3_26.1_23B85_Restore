@interface ASAccountManagerTipManager
@end

@implementation ASAccountManagerTipManager

void __46___ASAccountManagerTipManager_fetchTipToShow___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46___ASAccountManagerTipManager_fetchTipToShow___block_invoke_2;
  v5[3] = &unk_1E7AF7B50;
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  [v2 _checkEligibilityForiCloudKeychainTipWithCompletionHandler:v5];
}

void __46___ASAccountManagerTipManager_fetchTipToShow___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 32) + 16);
  }

  else
  {
    if ([MEMORY[0x1E69C8880] isOngoingCredentialSharingEnabled])
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __46___ASAccountManagerTipManager_fetchTipToShow___block_invoke_3;
      v8[3] = &unk_1E7AF7B50;
      v5 = *(a1 + 40);
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v9 = v6;
      v10 = v7;
      [v5 _checkEligibilityForFamilySharingTipWithCompletionHandler:v8];

      return;
    }

    v4 = *(*(a1 + 32) + 16);
  }

  v4();
}

void __46___ASAccountManagerTipManager_fetchTipToShow___block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __46___ASAccountManagerTipManager_fetchTipToShow___block_invoke_4;
    v6[3] = &unk_1E7AF7B28;
    v5 = *(a1 + 40);
    v7 = *(a1 + 32);
    [v5 _checkEligibilityForGeneralSharingTipWithCompletionHandler:v6];
  }
}

uint64_t __46___ASAccountManagerTipManager_fetchTipToShow___block_invoke_4(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  return (*(v2 + 16))(v2, v3);
}

void __74___ASAccountManagerTipManager_fetchSharingGroupsThatIncludeFamilyMembers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 members];
  v8 = [v7 count];

  if (v8 > 1)
  {
    v11 = [MEMORY[0x1E69C88B8] sharedMonitor];
    v12 = [v11 isKeychainSyncEnabled];

    if (v12)
    {
      v13 = [MEMORY[0x1E697AA68] sharedInstance];
      v14 = [MEMORY[0x1E697AA58] all];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __74___ASAccountManagerTipManager_fetchSharingGroupsThatIncludeFamilyMembers___block_invoke_34;
      v17[3] = &unk_1E7AF7BB8;
      v19 = *(a1 + 32);
      v18 = v5;
      [v13 getGroupsWithRequest:v14 completion:v17];
    }

    else
    {
      v15 = *(a1 + 32);
      v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"_ASAccountManagerTipManagerErrorDomain" code:1 userInfo:0];
      (*(v15 + 16))(v15, 0, v16);
    }
  }

  else
  {
    if (v6)
    {
      v9 = WBS_LOG_CHANNEL_PREFIXPasswordManager();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __74___ASAccountManagerTipManager_fetchSharingGroupsThatIncludeFamilyMembers___block_invoke_cold_1(v9);
      }

      v10 = *(*(a1 + 32) + 16);
    }

    else
    {
      v10 = *(*(a1 + 32) + 16);
    }

    v10();
  }
}

void __74___ASAccountManagerTipManager_fetchSharingGroupsThatIncludeFamilyMembers___block_invoke_34(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXPasswordManager();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __74___ASAccountManagerTipManager_fetchSharingGroupsThatIncludeFamilyMembers___block_invoke_34_cold_1(v7);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v25 = a1;
    v8 = MEMORY[0x1E695DFD8];
    v9 = [*(a1 + 32) members];
    v10 = [v9 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_1];
    v11 = [v8 setWithArray:v10];

    [MEMORY[0x1E695DF70] array];
    v27 = v26 = v5;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = v5;
    v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v29;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v28 + 1) + 8 * i);
          v18 = MEMORY[0x1E695DFD8];
          v19 = [v17 participants];
          v20 = [v19 safari_mapObjectsUsingBlock:&__block_literal_global_41];
          v21 = [v18 setWithArray:v20];

          if ([v11 intersectsSet:v21])
          {
            [v27 addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v14);
    }

    v22 = *(v25 + 40);
    v23 = [v27 copy];
    (*(v22 + 16))(v22, v23, 0);

    v6 = 0;
    v5 = v26;
  }

  v24 = *MEMORY[0x1E69E9840];
}

id __74___ASAccountManagerTipManager_fetchSharingGroupsThatIncludeFamilyMembers___block_invoke_36(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isMe])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 appleID];
  }

  return v3;
}

void __89___ASAccountManagerTipManager__checkEligibilityForFamilySharingTipWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 members];
  v8 = [v7 count];

  if (v8 > 1)
  {
    v10 = [v5 members];
    v11 = [v10 safari_firstObjectPassingTest:&__block_literal_global_51];

    if ([v11 isChildAccount])
    {
      [*(a1 + 40) _acknowledgeTip:2];
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v12 = [MEMORY[0x1E697AA68] sharedInstance];
      v13 = [MEMORY[0x1E697AA58] all];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __89___ASAccountManagerTipManager__checkEligibilityForFamilySharingTipWithCompletionHandler___block_invoke_2;
      v16[3] = &unk_1E7AF7C50;
      v18 = *(a1 + 32);
      v14 = v5;
      v15 = *(a1 + 40);
      v17 = v14;
      v19 = v15;
      [v12 getGroupsWithRequest:v13 completion:v16];
    }
  }

  else
  {
    if (v6)
    {
      v9 = WBS_LOG_CHANNEL_PREFIXPasswordManager();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __74___ASAccountManagerTipManager_fetchSharingGroupsThatIncludeFamilyMembers___block_invoke_cold_1(v9);
      }
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __89___ASAccountManagerTipManager__checkEligibilityForFamilySharingTipWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXPasswordManager();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __74___ASAccountManagerTipManager_fetchSharingGroupsThatIncludeFamilyMembers___block_invoke_34_cold_1(v7);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v23 = a1;
    v8 = [MEMORY[0x1E695DFA8] set];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v5;
    v26 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
    if (v26)
    {
      v25 = *v34;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v34 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v33 + 1) + 8 * i);
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v11 = [v10 participants];
          v12 = [v11 countByEnumeratingWithState:&v29 objects:v39 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v30;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v30 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v29 + 1) + 8 * j);
                if (([v16 isCurrentUser] & 1) == 0)
                {
                  v17 = [v16 handle];
                  if (v17)
                  {
                    [v8 addObject:v17];
                  }

                  else
                  {
                    v18 = WBS_LOG_CHANNEL_PREFIXPasswordManager();
                    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                    {
                      __89___ASAccountManagerTipManager__checkEligibilityForFamilySharingTipWithCompletionHandler___block_invoke_2_cold_2(v37, v18, v16, &v38);
                    }
                  }
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v29 objects:v39 count:16];
            }

            while (v13);
          }
        }

        v26 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
      }

      while (v26);
    }

    v19 = [*(v23 + 32) members];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __89___ASAccountManagerTipManager__checkEligibilityForFamilySharingTipWithCompletionHandler___block_invoke_53;
    v27[3] = &unk_1E7AF7C28;
    v28 = v8;
    v20 = v8;
    v21 = [v19 safari_containsObjectPassingTest:v27];

    if (v21)
    {
      [*(v23 + 48) _acknowledgeTip:2];
    }

    (*(*(v23 + 40) + 16))();

    v6 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
}

uint64_t __89___ASAccountManagerTipManager__checkEligibilityForFamilySharingTipWithCompletionHandler___block_invoke_53(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 appleID];
  v4 = [v2 containsObject:v3];

  return v4;
}

void __74___ASAccountManagerTipManager_fetchSharingGroupsThatIncludeFamilyMembers___block_invoke_cold_1(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B1C8D000, v4, v5, "Failed to get FamilyCircle with error: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void __74___ASAccountManagerTipManager_fetchSharingGroupsThatIncludeFamilyMembers___block_invoke_34_cold_1(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B1C8D000, v4, v5, "Failed to fetch groups with error: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void __89___ASAccountManagerTipManager__checkEligibilityForFamilySharingTipWithCompletionHandler___block_invoke_2_cold_2(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 description];
  *a1 = 138739971;
  *a4 = v8;
  _os_log_error_impl(&dword_1B1C8D000, v7, OS_LOG_TYPE_ERROR, "Received KCSharingParticipant with nil handle %{sensitive}@.", a1, 0xCu);
}

@end