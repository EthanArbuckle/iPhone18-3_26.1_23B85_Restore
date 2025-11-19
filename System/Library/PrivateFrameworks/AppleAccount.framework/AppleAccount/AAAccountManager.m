@interface AAAccountManager
+ (AAAccountManager)sharedManager;
- (id)_accountStore;
- (id)accountWithIdentifier:(id)a3;
- (id)accountWithPersonID:(id)a3;
- (id)accountWithUsername:(id)a3;
- (id)accountsEnabledForDataclass:(id)a3;
- (id)primaryAccount;
- (void)_beginObservingAccountStoreDidChangeNotification;
- (void)_stopObservingAccountStoreDidChangeNotification;
- (void)addAccount:(id)a3;
- (void)dealloc;
- (void)reloadAccounts;
- (void)removeAccount:(id)a3;
- (void)saveAllAccounts;
- (void)updateAccount:(id)a3;
@end

@implementation AAAccountManager

+ (AAAccountManager)sharedManager
{
  if (sharedManager_onceToken_0 != -1)
  {
    +[AAAccountManager sharedManager];
  }

  v3 = sharedManager_sharedManager_0;

  return v3;
}

uint64_t __33__AAAccountManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(AAAccountManager);
  v1 = sharedManager_sharedManager_0;
  sharedManager_sharedManager_0 = v0;

  v2 = sharedManager_sharedManager_0;

  return [v2 reloadAccounts];
}

- (void)dealloc
{
  if (self->_accountStore)
  {
    [(AAAccountManager *)self _stopObservingAccountStoreDidChangeNotification];
  }

  v3.receiver = self;
  v3.super_class = AAAccountManager;
  [(AAAccountManager *)&v3 dealloc];
}

- (id)_accountStore
{
  accountStore = self->_accountStore;
  if (!accountStore)
  {
    v4 = [MEMORY[0x1E6959A48] defaultStore];
    v5 = self->_accountStore;
    self->_accountStore = v4;

    [(AAAccountManager *)self _beginObservingAccountStoreDidChangeNotification];
    accountStore = self->_accountStore;
  }

  return accountStore;
}

- (void)_beginObservingAccountStoreDidChangeNotification
{
  if (!self->_accountStoreDidChangeObserver)
  {
    objc_initWeak(&location, self);
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    v4 = *MEMORY[0x1E69597D8];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __68__AAAccountManager__beginObservingAccountStoreDidChangeNotification__block_invoke;
    v7[3] = &unk_1E7C9C8B0;
    objc_copyWeak(&v8, &location);
    v5 = [v3 addObserverForName:v4 object:0 queue:0 usingBlock:v7];
    accountStoreDidChangeObserver = self->_accountStoreDidChangeObserver;
    self->_accountStoreDidChangeObserver = v5;

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __68__AAAccountManager__beginObservingAccountStoreDidChangeNotification__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadAccounts];
}

- (void)_stopObservingAccountStoreDidChangeNotification
{
  if (self->_accountStoreDidChangeObserver)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 removeObserver:self->_accountStoreDidChangeObserver];

    accountStoreDidChangeObserver = self->_accountStoreDidChangeObserver;
    self->_accountStoreDidChangeObserver = 0;
  }
}

- (void)reloadAccounts
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(AAAccountManager *)v2 _accountStore];
  v4 = [v3 aa_appleAccounts];

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = [AAAccount alloc];
        v12 = [(AAAccount *)v11 initWithAccount:v10, v16];
        [v5 addObject:v12];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  objc_storeStrong(&v2->_accounts, v5);
  v13 = [(NSMutableArray *)v2->_accounts copy];
  originalAccounts = v2->_originalAccounts;
  v2->_originalAccounts = v13;

  objc_sync_exit(v2);
  v15 = *MEMORY[0x1E69E9840];
}

- (id)primaryAccount
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v2->_accounts;
  v4 = 0;
  v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 primaryAccount])
        {
          v9 = v8;

          v4 = v9;
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  objc_sync_exit(v2);
  v10 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)accountsEnabledForDataclass:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v5->_accounts;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 isEnabledForDataclass:{v4, v14}])
        {
          [v6 addObject:v11];
        }
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  objc_sync_exit(v5);
  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)accountWithUsername:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v5;
  v6 = v5->_accounts;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = *v26;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v26 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v25 + 1) + 8 * v9);
      v11 = [v10 username];
      v12 = [v11 isEqualToString:v4];

      if (v12)
      {
        v13 = v10;
      }

      else
      {
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v14 = [v10 appleIDAliases];
        v15 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v15)
        {
          v16 = *v22;
          while (2)
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v22 != v16)
              {
                objc_enumerationMutation(v14);
              }

              if ([*(*(&v21 + 1) + 8 * i) isEqualToString:v4])
              {
                v13 = v10;
                goto LABEL_18;
              }
            }

            v15 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        v13 = 0;
LABEL_18:
      }

      if (v13)
      {
        break;
      }

      if (++v9 == v7)
      {
        v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_22;
      }
    }
  }

  else
  {
LABEL_22:
    v13 = 0;
  }

  objc_sync_exit(obj);
  v18 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)accountWithPersonID:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5->_accounts;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 personID];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(v5);
  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)accountWithIdentifier:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5->_accounts;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(v5);
  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)addAccount:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = _AALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 username];
    v8 = [v4 identifier];
    v11 = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "Adding account: %@:%@", &v11, 0x16u);
  }

  accounts = v5->_accounts;
  if (accounts)
  {
    [(NSMutableArray *)accounts addObject:v4];
  }

  objc_sync_exit(v5);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)updateAccount:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableArray *)v5->_accounts copy];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v8)
  {
    v10 = 0;
    v11 = *v22;
    *&v9 = 138412546;
    v20 = v9;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = [*(*(&v21 + 1) + 8 * v12) identifier];
        v14 = [v4 identifier];
        v15 = [v13 isEqualToString:v14];

        if (v15)
        {
          [(NSMutableArray *)v5->_accounts replaceObjectAtIndex:v10 withObject:v4];
          v16 = _AALogSystem();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [v4 username];
            v18 = [v4 identifier];
            *buf = v20;
            v26 = v17;
            v27 = 2112;
            v28 = v18;
            _os_log_impl(&dword_1B6F6A000, v16, OS_LOG_TYPE_DEFAULT, "Updating account: %@:%@", buf, 0x16u);
          }
        }

        ++v10;
        ++v12;
      }

      while (v8 != v12);
      v8 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v8);
  }

  objc_sync_exit(v5);
  v19 = *MEMORY[0x1E69E9840];
}

- (void)removeAccount:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [v4 username];
  v7 = _AALogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(NSMutableArray *)v5->_accounts count];
    *buf = 138412546;
    v18 = v6;
    v19 = 2048;
    v20 = v8;
    _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "Removing account %@. Count: %lu", buf, 0x16u);
  }

  v9 = [(AAAccountManager *)v5 _accountStore];
  v10 = [v4 account];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __34__AAAccountManager_removeAccount___block_invoke;
  v14[3] = &unk_1E7C9C8D8;
  v14[4] = v5;
  v11 = v4;
  v15 = v11;
  v12 = v6;
  v16 = v12;
  [v9 removeAccount:v10 withCompletionHandler:v14];

  objc_sync_exit(v5);
  v13 = *MEMORY[0x1E69E9840];
}

void __34__AAAccountManager_removeAccount___block_invoke(void *a1, int a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AALogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      v8 = [*(a1[4] + 16) count];
      v11 = 134217984;
      v12 = v8;
      _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "Removed account. Count: %lu", &v11, 0xCu);
    }

    [*(a1[4] + 16) removeObject:a1[5]];
  }

  else
  {
    if (v7)
    {
      v9 = a1[6];
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "Failed to remove account %@. Error: %@", &v11, 0x16u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)saveAllAccounts
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(NSMutableArray *)v2->_accounts count];
    *buf = 134217984;
    v25 = v5;
    _os_log_impl(&dword_1B6F6A000, v4, OS_LOG_TYPE_DEFAULT, "Saving Accounts. Count: %lu", buf, 0xCu);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v2->_accounts;
  v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        v10 = [(AAAccountManager *)v3 _accountStore];
        v11 = [v9 account];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __35__AAAccountManager_saveAllAccounts__block_invoke;
        v18[3] = &unk_1E7C9C900;
        v18[4] = v9;
        [v10 saveAccount:v11 withCompletionHandler:v18];

        v2 = v3;
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v12 = [(NSMutableArray *)v2->_accounts copy];
  originalAccounts = v2->_originalAccounts;
  v2->_originalAccounts = v12;

  objc_sync_exit(v2);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotificationWithOptions(DarwinNotifyCenter, @"AAAccountConfigChangedNotification", v2, 0, 1uLL);
  v15 = [MEMORY[0x1E696AD88] defaultCenter];
  [v15 postNotificationName:@"AAAccountConfigChangedNotification" object:0];

  v16 = *MEMORY[0x1E69E9840];
}

void __35__AAAccountManager_saveAllAccounts__block_invoke(uint64_t a1, char a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    v3 = _AALogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) username];
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1B6F6A000, v3, OS_LOG_TYPE_DEFAULT, "Failed to save account %@.", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

@end