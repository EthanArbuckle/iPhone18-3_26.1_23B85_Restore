@interface AADataclassActionsStore
- (AADataclassActionsStore)initWithAccount:(id)account;
- (BOOL)actionsContainLoseNonUploadedDataAction:(id)action;
- (id)_fetchActionsForAddingAccount:(id)account;
- (id)_fetchActionsForDeletion;
- (id)_fetchActionsForMergeList:(id)list;
- (id)_fetchKeychainActionsForAddingAccount:(id)account;
- (id)dataclassesWithLocalDataForAddingAccount:(id)account;
- (id)dataclassesWithNonUploadedData;
- (id)dataclassesWithRemainingData;
- (id)defaultDataclassActionsForDeletion;
- (id)deleteActionForKeychainDataclassForAddingAccount:(id)account;
- (id)deleteLocalDataActionsForAddingAccount:(id)account;
- (id)mergeActionForKeychainDataclassForAddingAccount:(id)account;
- (id)mergeLocalDataIntoSyncDataActionsForAddingAccount:(id)account;
- (void)dataclassesWithNonUploadedData;
- (void)dataclassesWithRemainingData;
- (void)defaultDataclassActionsForDeletion;
- (void)refreshAccountDeletionActions;
- (void)refreshActionsForAddingAccount:(id)account;
@end

@implementation AADataclassActionsStore

- (AADataclassActionsStore)initWithAccount:(id)account
{
  accountCopy = account;
  v11.receiver = self;
  v11.super_class = AADataclassActionsStore;
  v6 = [(AADataclassActionsStore *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
    accountStore = [(ACAccount *)v7->_account accountStore];
    accountStore = v7->_accountStore;
    v7->_accountStore = accountStore;

    v7->_actionsForDeletionFetched = 0;
  }

  return v7;
}

- (id)_fetchActionsForDeletion
{
  if (!self->_actionsForDeletionFetched)
  {
    v3 = [(ACAccountStore *)self->_accountStore dataclassActionsForAccountDeletion:self->_account error:0];
    dataclassDeletionActions = self->_dataclassDeletionActions;
    self->_dataclassDeletionActions = v3;

    self->_actionsForDeletionFetched = 1;
  }

  v5 = self->_dataclassDeletionActions;

  return v5;
}

- (id)defaultDataclassActionsForDeletion
{
  _fetchActionsForDeletion = [(AADataclassActionsStore *)self _fetchActionsForDeletion];
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [AADataclassActionsStore defaultDataclassActionsForDeletion];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__AADataclassActionsStore_defaultDataclassActionsForDeletion__block_invoke;
  v10[3] = &unk_1E7C9BA98;
  v10[4] = self;
  v5 = [_fetchActionsForDeletion aaf_filter:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__AADataclassActionsStore_defaultDataclassActionsForDeletion__block_invoke_2;
  v9[3] = &unk_1E7C9BAC0;
  v9[4] = self;
  v6 = [v5 aaf_map:v9];
  v7 = _AALogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [AADataclassActionsStore defaultDataclassActionsForDeletion];
  }

  return v6;
}

uint64_t __61__AADataclassActionsStore_defaultDataclassActionsForDeletion__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [MEMORY[0x1E6959A58] actionWithType:3];
  if ([v4 containsObject:v5])
  {
    v6 = 1;
  }

  else
  {
    v6 = [*(a1 + 32) actionsContainLoseNonUploadedDataAction:v4];
  }

  return v6;
}

id __61__AADataclassActionsStore_defaultDataclassActionsForDeletion__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [MEMORY[0x1E6959A58] actionWithType:2];
  v6 = [v4 containsObject:v5];

  if (v6)
  {
    v7 = MEMORY[0x1E6959A58];
    v8 = 2;
  }

  else
  {
    v9 = [*(a1 + 32) actionsContainLoseNonUploadedDataAction:v4];
    v7 = MEMORY[0x1E6959A58];
    if (v9)
    {
      v8 = 8;
    }

    else
    {
      v8 = 3;
    }
  }

  v10 = [v7 actionWithType:v8];

  return v10;
}

- (id)dataclassesWithRemainingData
{
  _fetchActionsForDeletion = [(AADataclassActionsStore *)self _fetchActionsForDeletion];
  v3 = [_fetchActionsForDeletion aaf_filter:&__block_literal_global_8];
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(AADataclassActionsStore *)v3 dataclassesWithRemainingData];
  }

  allKeys = [v3 allKeys];

  return allKeys;
}

uint64_t __55__AADataclassActionsStore_dataclassesWithRemainingData__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x1E6959A58];
  v4 = a3;
  v5 = [v3 actionWithType:2];
  v6 = [v4 containsObject:v5];

  return v6;
}

- (id)dataclassesWithNonUploadedData
{
  _fetchActionsForDeletion = [(AADataclassActionsStore *)self _fetchActionsForDeletion];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__AADataclassActionsStore_dataclassesWithNonUploadedData__block_invoke;
  v8[3] = &unk_1E7C9BA98;
  v8[4] = self;
  v4 = [_fetchActionsForDeletion aaf_filter:v8];
  v5 = _AALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(AADataclassActionsStore *)v4 dataclassesWithNonUploadedData];
  }

  allKeys = [v4 allKeys];

  return allKeys;
}

- (BOOL)actionsContainLoseNonUploadedDataAction:(id)action
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  actionCopy = action;
  v4 = [actionCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(actionCopy);
        }

        if ([*(*(&v9 + 1) + 8 * i) type] == 8)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [actionCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)refreshAccountDeletionActions
{
  v3 = [(ACAccountStore *)self->_accountStore dataclassActionsForAccountDeletion:self->_account error:0];
  dataclassDeletionActions = self->_dataclassDeletionActions;
  self->_dataclassDeletionActions = v3;

  self->_actionsForDeletionFetched = 1;
}

- (id)deleteLocalDataActionsForAddingAccount:(id)account
{
  accountCopy = account;
  v5 = [(AADataclassActionsStore *)self _fetchActionsForAddingAccount:accountCopy];
  v6 = _AALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [AADataclassActionsStore deleteLocalDataActionsForAddingAccount:];
  }

  v7 = [v5 mutableCopy];
  [v7 removeObjectForKey:*MEMORY[0x1E6959690]];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__AADataclassActionsStore_deleteLocalDataActionsForAddingAccount___block_invoke;
  v12[3] = &unk_1E7C9BAC0;
  v13 = accountCopy;
  v8 = accountCopy;
  v9 = [v7 aaf_map:v12];
  v10 = _AALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [AADataclassActionsStore deleteLocalDataActionsForAddingAccount:];
  }

  return v9;
}

id __66__AADataclassActionsStore_deleteLocalDataActionsForAddingAccount___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E6959A58] actionWithType:6];
  v8 = [v6 containsObject:v7];

  if (v8)
  {
    [*(a1 + 32) setEnabled:1 forDataclass:v5];
    v9 = 6;
  }

  else
  {
    v10 = [MEMORY[0x1E6959A58] actionWithType:0];
    v11 = [v6 containsObject:v10];

    v12 = *(a1 + 32);
    if (v11)
    {
      [v12 setEnabled:0 forDataclass:v5];
      v9 = 0;
    }

    else
    {
      v9 = 1;
      [v12 setEnabled:1 forDataclass:v5];
    }
  }

  v13 = [MEMORY[0x1E6959A58] actionWithType:v9];

  return v13;
}

- (id)deleteActionForKeychainDataclassForAddingAccount:(id)account
{
  v26[1] = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v5 = [(AADataclassActionsStore *)self _fetchKeychainActionsForAddingAccount:accountCopy];
  v6 = *MEMORY[0x1E6959690];
  v7 = [v5 objectForKey:*MEMORY[0x1E6959690]];

  if (v7)
  {
    v8 = [v5 objectForKey:v6];
    v9 = _AALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [AADataclassActionsStore deleteActionForKeychainDataclassForAddingAccount:];
    }

    v10 = [MEMORY[0x1E6959A58] actionWithType:6];
    v11 = [v8 containsObject:v10];

    if (v11)
    {
      [accountCopy setEnabled:1 forDataclass:v6];
      v25 = v6;
      v12 = [MEMORY[0x1E6959A58] actionWithType:6];
      v26[0] = v12;
      v13 = MEMORY[0x1E695DF20];
      v14 = v26;
      v15 = &v25;
    }

    else
    {
      v17 = [MEMORY[0x1E6959A58] actionWithType:0];
      v18 = [v8 containsObject:v17];

      if (v18)
      {
        [accountCopy setEnabled:0 forDataclass:v6];
        v23 = v6;
        v12 = [MEMORY[0x1E6959A58] actionWithType:0];
        v24 = v12;
        v13 = MEMORY[0x1E695DF20];
        v14 = &v24;
        v15 = &v23;
      }

      else
      {
        [accountCopy setEnabled:1 forDataclass:v6];
        v21 = v6;
        v12 = [MEMORY[0x1E6959A58] actionWithType:1];
        v22 = v12;
        v13 = MEMORY[0x1E695DF20];
        v14 = &v22;
        v15 = &v21;
      }
    }

    v16 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:1];
  }

  else
  {
    v16 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)mergeActionForKeychainDataclassForAddingAccount:(id)account
{
  v22[1] = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v5 = [(AADataclassActionsStore *)self _fetchKeychainActionsForAddingAccount:accountCopy];
  v6 = *MEMORY[0x1E6959690];
  v7 = [v5 objectForKey:*MEMORY[0x1E6959690]];

  if (v7)
  {
    v8 = [v5 objectForKey:v6];
    v9 = _AALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [AADataclassActionsStore deleteActionForKeychainDataclassForAddingAccount:];
    }

    [accountCopy setEnabled:1 forDataclass:v6];
    v10 = [MEMORY[0x1E6959A58] actionWithType:5];
    v11 = [v8 containsObject:v10];

    if (v11)
    {
      v21 = v6;
      v12 = [MEMORY[0x1E6959A58] actionWithType:5];
      v22[0] = v12;
      v13 = MEMORY[0x1E695DF20];
      v14 = v22;
      v15 = &v21;
    }

    else
    {
      v19 = v6;
      v12 = [MEMORY[0x1E6959A58] actionWithType:1];
      v20 = v12;
      v13 = MEMORY[0x1E695DF20];
      v14 = &v20;
      v15 = &v19;
    }

    v16 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:1];
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)mergeLocalDataIntoSyncDataActionsForAddingAccount:(id)account
{
  accountCopy = account;
  v5 = [(AADataclassActionsStore *)self _fetchActionsForAddingAccount:accountCopy];
  v6 = _AALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [AADataclassActionsStore deleteLocalDataActionsForAddingAccount:];
  }

  v7 = [v5 mutableCopy];
  [v7 removeObjectForKey:*MEMORY[0x1E6959690]];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__AADataclassActionsStore_mergeLocalDataIntoSyncDataActionsForAddingAccount___block_invoke;
  v12[3] = &unk_1E7C9BAC0;
  v13 = accountCopy;
  v8 = accountCopy;
  v9 = [v7 aaf_map:v12];
  v10 = _AALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [AADataclassActionsStore mergeLocalDataIntoSyncDataActionsForAddingAccount:];
  }

  return v9;
}

id __77__AADataclassActionsStore_mergeLocalDataIntoSyncDataActionsForAddingAccount___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 setEnabled:1 forDataclass:a2];
  v6 = [MEMORY[0x1E6959A58] actionWithType:5];
  LODWORD(v4) = [v5 containsObject:v6];

  if (v4)
  {
    v7 = 5;
  }

  else
  {
    v7 = 1;
  }

  v8 = [MEMORY[0x1E6959A58] actionWithType:v7];

  return v8;
}

- (id)dataclassesWithLocalDataForAddingAccount:(id)account
{
  v3 = [(AADataclassActionsStore *)self _fetchActionsForMergeList:account];
  v4 = [v3 aaf_filter:&__block_literal_global_32_0];
  v5 = _AALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AADataclassActionsStore dataclassesWithLocalDataForAddingAccount:v4];
  }

  allKeys = [v4 allKeys];

  return allKeys;
}

uint64_t __68__AADataclassActionsStore_dataclassesWithLocalDataForAddingAccount___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x1E6959A58];
  v4 = a3;
  v5 = [v3 actionWithType:5];
  v6 = [v4 containsObject:v5];

  return v6;
}

- (id)_fetchActionsForAddingAccount:(id)account
{
  v26 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v5 = +[AADataclassManager sharedManager];
  v6 = [v5 filterDataclassesForPossibleAutoEnablementForAccount:accountCopy];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [accountCopy setEnabled:1 forDataclass:*(*(&v21 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  if (!self->_actionsForAdditionFetched)
  {
    accountStore = self->_accountStore;
    v20 = 0;
    v13 = [(ACAccountStore *)accountStore dataclassActionsForAccountSave:accountCopy error:&v20];
    v14 = v20;
    dataclassAdditionActions = self->_dataclassAdditionActions;
    self->_dataclassAdditionActions = v13;

    self->_actionsForAdditionFetched = 1;
  }

  v16 = self->_dataclassAdditionActions;
  v17 = v16;

  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)_fetchActionsForMergeList:(id)list
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = [list copy];
  if (!self->_actionsForAdditionFetched)
  {
    v5 = +[AADataclassManager sharedManager];
    v6 = [v5 filterDataclassesForPossibleAutoEnablementForAccount:v4];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        v11 = 0;
        do
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [v4 setEnabled:1 forDataclass:*(*(&v21 + 1) + 8 * v11++)];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    accountStore = self->_accountStore;
    v20 = 0;
    v13 = [(ACAccountStore *)accountStore dataclassActionsForAccountSave:v4 error:&v20];
    v14 = v20;
    dataclassAdditionActions = self->_dataclassAdditionActions;
    self->_dataclassAdditionActions = v13;

    self->_actionsForAdditionFetched = 1;
  }

  v16 = self->_dataclassAdditionActions;
  v17 = v16;

  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)_fetchKeychainActionsForAddingAccount:(id)account
{
  v28 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  if (!self->_keychainActionsForAdditionFetched)
  {
    v5 = +[AADataclassManager sharedManager];
    v6 = [v5 filterDataclassesForPossibleAutoEnablementForAccount:accountCopy];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      v11 = *MEMORY[0x1E6959690];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          if ([v13 isEqual:v11])
          {
            [accountCopy setEnabled:1 forDataclass:v13];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    accountStore = self->_accountStore;
    v22 = 0;
    v15 = [(ACAccountStore *)accountStore dataclassActionsForAccountSave:accountCopy error:&v22];
    v16 = v22;
    keychainDataclassAdditionActions = self->_keychainDataclassAdditionActions;
    self->_keychainDataclassAdditionActions = v15;

    self->_keychainActionsForAdditionFetched = 1;
  }

  v18 = self->_keychainDataclassAdditionActions;
  v19 = v18;

  v20 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)refreshActionsForAddingAccount:(id)account
{
  v4 = [(ACAccountStore *)self->_accountStore dataclassActionsForAccountSave:account error:0];
  dataclassAdditionActions = self->_dataclassAdditionActions;
  self->_dataclassAdditionActions = v4;

  self->_actionsForAdditionFetched = 1;
}

- (void)defaultDataclassActionsForDeletion
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_0(&dword_1B6F6A000, v0, v1, "Default dataclass actions for deletion: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)dataclassesWithRemainingData
{
  v10 = *MEMORY[0x1E69E9840];
  allKeys = [self allKeys];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_1B6F6A000, v2, v3, "Dataclasses with remaining data: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)dataclassesWithNonUploadedData
{
  v10 = *MEMORY[0x1E69E9840];
  allKeys = [self allKeys];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_1B6F6A000, v2, v3, "Dataclasses with non uploaded data: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)deleteLocalDataActionsForAddingAccount:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_0(&dword_1B6F6A000, v0, v1, "Initial dataclass actions for Sign In: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)deleteLocalDataActionsForAddingAccount:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_0(&dword_1B6F6A000, v0, v1, "Delete local data actions for account addition: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)deleteActionForKeychainDataclassForAddingAccount:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_0(&dword_1B6F6A000, v0, v1, "Potential Keychain dataclass actions: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)mergeLocalDataIntoSyncDataActionsForAddingAccount:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_0(&dword_1B6F6A000, v0, v1, "Merge local data actions for account addition: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)dataclassesWithLocalDataForAddingAccount:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 allKeys];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_1B6F6A000, v2, v3, "Dataclasses with local data: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

@end