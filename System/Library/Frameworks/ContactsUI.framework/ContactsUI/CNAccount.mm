@interface CNAccount
@end

@implementation CNAccount

void __61__CNAccount_UIAdditions___cnui_requestRefreshWithUserAction___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_class() _cnui_accountStore];
  v3 = [v2 accountIdentifiersEnabledToSyncDataclass:*MEMORY[0x1E6959AF0]];

  if ([v3 count])
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = *v12;
      do
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v11 + 1) + 8 * v7);
          v9 = [MEMORY[0x1E69998A8] sharedConnection];
          [v9 updateContentsOfAllFoldersForAccountID:v8 andDataclasses:2 isUserRequested:*(a1 + 48)];

          v10 = [MEMORY[0x1E69998A8] sharedConnection];
          [v10 updateFolderListForAccountID:v8 andDataclasses:2 isUserRequested:*(a1 + 48)];

          ++v7;
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }
  }
}

uint64_t __64__CNAccount_UIAdditions___cnui_canRequestRefreshWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [objc_opt_class() _cnui_accountStore];
  v3 = [v2 accountIdentifiersEnabledToSyncDataclass:*MEMORY[0x1E6959AF0]];
  [v3 count];

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

@end