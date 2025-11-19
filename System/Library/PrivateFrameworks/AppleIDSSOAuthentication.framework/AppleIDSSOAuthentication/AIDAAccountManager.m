@interface AIDAAccountManager
+ (id)_accountStoreChangeQueue;
- (AIDAAccountManager)init;
- (AIDAAccountManager)initWithAccountStore:(id)a3;
- (AIDAAccountManagerDelegate)delegate;
- (NSDictionary)accounts;
- (id)_delegate_accountsForAccountManager;
- (id)aidaAccountForService:(id)a3;
- (void)_accountStoreDidChange:(id)a3;
- (void)_delegate_accountsForAccountManager;
- (void)addAccountChangeObserver:(id)a3 handler:(id)a4;
- (void)dealloc;
- (void)removeAccountChangeObserver:(id)a3;
- (void)setAccounts:(id)a3;
@end

@implementation AIDAAccountManager

void __46__AIDAAccountManager__accountStoreChangeQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("AIDAAccountChangeQueue", v2);
  v1 = _accountStoreChangeQueue__accountStoreChangeQueue;
  _accountStoreChangeQueue__accountStoreChangeQueue = v0;
}

+ (id)_accountStoreChangeQueue
{
  if (_accountStoreChangeQueue_onceToken != -1)
  {
    +[AIDAAccountManager _accountStoreChangeQueue];
  }

  v3 = _accountStoreChangeQueue__accountStoreChangeQueue;

  return v3;
}

- (AIDAAccountManager)init
{
  [(AIDAAccountManager *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (AIDAAccountManager)initWithAccountStore:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = AIDAAccountManager;
  v6 = [(AIDAAccountManager *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountStore, a3);
    v8 = [[AIDAServiceOwnersManager alloc] initWithAccountStore:v5];
    serviceOwnersManager = v7->_serviceOwnersManager;
    v7->_serviceOwnersManager = v8;

    v10 = [MEMORY[0x1E695DF90] dictionary];
    handlerByObserver = v7->_handlerByObserver;
    v7->_handlerByObserver = v10;

    v7->_accountManagerLock._os_unfair_lock_opaque = 0;
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v7 selector:sel__accountStoreDidChange_ name:*MEMORY[0x1E69597D8] object:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = AIDAAccountManager;
  [(AIDAAccountManager *)&v4 dealloc];
}

- (NSDictionary)accounts
{
  os_unfair_lock_lock(&self->_accountManagerLock);
  accounts = self->_accounts;
  if (!accounts)
  {
    v4 = [(AIDAAccountManager *)self _delegate_accountsForAccountManager];
    v5 = [v4 copy];
    v6 = self->_accounts;
    self->_accounts = v5;

    accounts = self->_accounts;
  }

  v7 = [(NSDictionary *)accounts copy];
  os_unfair_lock_unlock(&self->_accountManagerLock);

  return v7;
}

- (void)setAccounts:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accountManagerLock);
  accounts = self->_accounts;
  self->_accounts = v4;

  os_unfair_lock_unlock(&self->_accountManagerLock);
}

- (id)aidaAccountForService:(id)a3
{
  v4 = a3;
  v5 = [(AIDAAccountManager *)self accounts];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager altDSIDForAccount:v6 service:v4];
    if (v7)
    {
      v8 = [(AIDAAccountManager *)self accountStore];
      v9 = [v8 aida_accountForAltDSID:v7];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_delegate_accountsForAccountManager
{
  v3 = [(AIDAAccountManager *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(AIDAAccountManager *)self delegate];
    v6 = [v5 accountsForAccountManager:self];
  }

  else
  {
    v7 = _AIDALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(AIDAAccountManager *)self _delegate_accountsForAccountManager];
    }

    v6 = MEMORY[0x1E695E0F8];
  }

  return v6;
}

- (void)_accountStoreDidChange:(id)a3
{
  v4 = +[AIDAAccountManager _accountStoreChangeQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__AIDAAccountManager__accountStoreDidChange___block_invoke;
  block[3] = &unk_1E8683420;
  block[4] = self;
  dispatch_async(v4, block);
}

void __45__AIDAAccountManager__accountStoreDidChange___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) accounts];
  [*(a1 + 32) setAccounts:0];
  v3 = [*(a1 + 32) accounts];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [*(*(a1 + 32) + 24) allValues];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    v8 = MEMORY[0x1E69E96A0];
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __45__AIDAAccountManager__accountStoreDidChange___block_invoke_2;
        block[3] = &unk_1E86833F8;
        v15 = v10;
        v13 = v2;
        v14 = v3;
        dispatch_async(v8, block);

        ++v9;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)addAccountChangeObserver:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E696B098] valueWithNonretainedObject:a3];
  v8 = +[AIDAAccountManager _accountStoreChangeQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__AIDAAccountManager_addAccountChangeObserver_handler___block_invoke;
  block[3] = &unk_1E8683448;
  v12 = v7;
  v13 = v6;
  block[4] = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __55__AIDAAccountManager_addAccountChangeObserver_handler___block_invoke(void *a1)
{
  v2 = *(a1[4] + 24);
  v3 = MEMORY[0x1E12C4D20](a1[6]);
  [v2 setObject:v3 forKey:a1[5]];
}

- (void)removeAccountChangeObserver:(id)a3
{
  v4 = [MEMORY[0x1E696B098] valueWithNonretainedObject:a3];
  v5 = +[AIDAAccountManager _accountStoreChangeQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__AIDAAccountManager_removeAccountChangeObserver___block_invoke;
  v7[3] = &unk_1E8683470;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (AIDAAccountManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_delegate_accountsForAccountManager
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 delegate];
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_1DEB1B000, a2, OS_LOG_TYPE_ERROR, "Delegate %{public}@ failed respond to -accountsForAccountManager: !", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end