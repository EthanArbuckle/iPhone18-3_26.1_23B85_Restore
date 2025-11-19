@interface ACMonitoredAccountStore
- (ACMonitoredAccountStore)initWithWithRemoteEndpoint:(id)a3 effectiveBundleID:(id)a4 accountTypes:(id)a5 propertiesToPrefetch:(id)a6 delegate:(id)a7;
- (NSArray)monitoredAccounts;
- (id)_allDelegates;
- (id)monitoredAccountWithIdentifier:(id)a3;
- (void)_accountsListPopulated:(id)a3;
- (void)_lock_accountWasAdded:(id)a3;
- (void)_lock_accountWasModified:(id)a3;
- (void)_lock_accountWasRemoved:(id)a3;
- (void)_lock_processAccountsListForNotifications:(id)a3 forType:(id)a4;
- (void)_registerAccountMonitorSynchronouslyWithCompletion:(id)a3;
- (void)_registerAccountMonitorWithCompletion:(id)a3;
- (void)_registerForApplicationStateDidChangeNotification;
- (void)_registerForCredentialChangedNotifications;
- (void)_registerNotifyReaders;
- (void)_reregisterForAccountType:(id)a3;
- (void)_sendNotificationOfChange;
- (void)addDelegate:(id)a3;
- (void)credentialsChangedNotification:(id)a3;
- (void)dealloc;
- (void)registerSynchronouslyWithError:(id *)a3;
- (void)registerWithCompletion:(id)a3;
- (void)removeDelegate:(id)a3;
@end

@implementation ACMonitoredAccountStore

- (void)_registerForApplicationStateDidChangeNotification
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__ACMonitoredAccountStore__registerForApplicationStateDidChangeNotification__block_invoke;
  v6[3] = &unk_1E7975608;
  v6[4] = self;
  v4 = [v3 addObserverForName:@"UIApplicationDidBecomeActiveNotification" object:0 queue:0 usingBlock:v6];
  didBecomeActiveObserver = self->_didBecomeActiveObserver;
  self->_didBecomeActiveObserver = v4;
}

- (void)_registerNotifyReaders
{
  v24 = *MEMORY[0x1E69E9840];
  v15 = [MEMORY[0x1E695DFA8] set];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = self->_accountTypesToMonitor;
  v3 = [(NSSet *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = *v20;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v20 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v19 + 1) + 8 * i);
        v7 = [ACNotifyAccountCache suffixForAccountsForAccountType:v6 fetchOptions:0];
        v8 = [ACNotifyAccountCache cacheKeyForSuffix:v7];

        objc_initWeak(&location, self);
        v9 = [ACNotifyReader alloc];
        v10 = [(ACAccountStore *)self replyQueue];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __49__ACMonitoredAccountStore__registerNotifyReaders__block_invoke;
        v16[3] = &unk_1E7975518;
        objc_copyWeak(&v17, &location);
        v16[4] = v6;
        v11 = [(ACNotifyReader *)v9 initWithKey:v8 updateQueue:v10 updateBlock:v16];
        [(NSSet *)v15 addObject:v11];

        objc_destroyWeak(&v17);
        objc_destroyWeak(&location);
      }

      v3 = [(NSSet *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v3);
  }

  monitoringReaders = self->_monitoringReaders;
  self->_monitoringReaders = v15;

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_sendNotificationOfChange
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"ACMonitoredAccountStoreDidChangeNotification" object:self];
}

- (void)_registerForCredentialChangedNotifications
{
  objc_initWeak(&location, self);
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__ACMonitoredAccountStore__registerForCredentialChangedNotifications__block_invoke;
  v6[3] = &unk_1E79755E0;
  objc_copyWeak(&v7, &location);
  v4 = [v3 addObserverForName:@"ACAccountCredentialsDidChangeNotification" object:0 queue:0 usingBlock:v6];
  credentialsDidChangeObserver = self->_credentialsDidChangeObserver;
  self->_credentialsDidChangeObserver = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

uint64_t __76__ACMonitoredAccountStore__registerForApplicationStateDidChangeNotification__block_invoke(uint64_t a1)
{
  v2 = _ACLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __76__ACMonitoredAccountStore__registerForApplicationStateDidChangeNotification__block_invoke_cold_1(v2);
  }

  return [*(a1 + 32) _reregisterForAccountType:0];
}

- (NSArray)monitoredAccounts
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__ACMonitoredAccountStore_monitoredAccounts__block_invoke;
  v4[3] = &unk_1E7975428;
  v4[4] = self;
  v2 = ac_unfair_lock_perform_with_result(&self->_monitoredAccountsCacheLock, v4);

  return v2;
}

id __44__ACMonitoredAccountStore_monitoredAccounts__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E695DEC8]);
  v3 = [*(*(a1 + 32) + 136) allValues];
  v4 = [v2 initWithArray:v3 copyItems:1];

  return v4;
}

- (ACMonitoredAccountStore)initWithWithRemoteEndpoint:(id)a3 effectiveBundleID:(id)a4 accountTypes:(id)a5 propertiesToPrefetch:(id)a6 delegate:(id)a7
{
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v22.receiver = self;
  v22.super_class = ACMonitoredAccountStore;
  v16 = [(ACAccountStore *)&v22 initWithRemoteEndpoint:a3 effectiveBundleID:a4];
  if (v16)
  {
    v17 = [MEMORY[0x1E695DF90] dictionary];
    accountsByID = v16->_accountsByID;
    v16->_accountsByID = v17;

    v19 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    delegates = v16->_delegates;
    v16->_delegates = v19;

    [(NSHashTable *)v16->_delegates addObject:v15];
    objc_storeStrong(&v16->_accountTypesToMonitor, a5);
    objc_storeStrong(&v16->_propertiesToPrefetch, a6);
    v16->_monitoredAccountsCacheLock._os_unfair_lock_opaque = 0;
    [(ACMonitoredAccountStore *)v16 _registerForApplicationStateDidChangeNotification];
  }

  return v16;
}

- (void)dealloc
{
  if (self->_credentialsDidChangeObserver)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 removeObserver:self->_credentialsDidChangeObserver];
  }

  if (self->_didBecomeActiveObserver)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 removeObserver:self->_didBecomeActiveObserver];
  }

  v5.receiver = self;
  v5.super_class = ACMonitoredAccountStore;
  [(ACAccountStore *)&v5 dealloc];
}

- (void)registerWithCompletion:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _os_activity_create(&dword_1AC3CD000, "accounts/register-types-to-monitor", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = _ACSignpostLogSystem();
  v7 = _ACSignpostCreate(v6);
  v9 = v8;

  v10 = _ACSignpostLogSystem();
  v11 = v10;
  if ((v7 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    accountTypesToMonitor = self->_accountTypesToMonitor;
    *buf = 138412290;
    v21 = accountTypesToMonitor;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v7, "RegisterTypesToMonitor", "%@", buf, 0xCu);
  }

  v13 = _ACSignpostLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [ACMonitoredAccountStore registerWithCompletion:?];
  }

  objc_initWeak(buf, self);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __50__ACMonitoredAccountStore_registerWithCompletion___block_invoke;
  v16[3] = &unk_1E79753D8;
  v18[1] = v7;
  v18[2] = v9;
  objc_copyWeak(v18, buf);
  v16[4] = self;
  v14 = v4;
  v17 = v14;
  [(ACMonitoredAccountStore *)self _registerAccountMonitorWithCompletion:v16];

  objc_destroyWeak(v18);
  objc_destroyWeak(buf);
  os_activity_scope_leave(&state);

  v15 = *MEMORY[0x1E69E9840];
}

void __50__ACMonitoredAccountStore_registerWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  Nanoseconds = _ACSignpostGetNanoseconds(*(a1 + 56), *(a1 + 64));
  v8 = _ACSignpostLogSystem();
  v9 = v8;
  v10 = *(a1 + 56);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v11 = &stru_1F210E1C8;
    if (v6)
    {
      v11 = v6;
    }

    v19 = 138412546;
    v20 = v5;
    v21 = 2112;
    v22 = *&v11;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v9, OS_SIGNPOST_INTERVAL_END, v10, "RegisterTypesToMonitor", "%@%@", &v19, 0x16u);
  }

  v12 = _ACSignpostLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 56);
    v19 = 134218754;
    v20 = v17;
    v18 = &stru_1F210E1C8;
    v21 = 2048;
    v22 = Nanoseconds / 1000000000.0;
    v23 = 2112;
    v24 = v5;
    if (v6)
    {
      v18 = v6;
    }

    v25 = 2112;
    v26 = v18;
    _os_log_debug_impl(&dword_1AC3CD000, v12, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: RegisterTypesToMonitor %@%@", &v19, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v14 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _registerNotifyReaders];
    if (v6 && [(__CFString *)v6 code]== 7)
    {
      v15 = _ACLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        __50__ACMonitoredAccountStore_registerWithCompletion___block_invoke_cold_1(a1, v15);
      }
    }

    else if (v5)
    {
      [v14 _accountsListPopulated:v5];
      [v14 _registerForCredentialChangedNotifications];
    }
  }

  (*(*(a1 + 40) + 16))();

  v16 = *MEMORY[0x1E69E9840];
}

- (void)registerSynchronouslyWithError:(id *)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = _os_activity_create(&dword_1AC3CD000, "accounts/register-types-to-monitor-sync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = _ACSignpostLogSystem();
  v7 = _ACSignpostCreate(v6);
  v9 = v8;

  v10 = _ACSignpostLogSystem();
  v11 = v10;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    accountTypesToMonitor = self->_accountTypesToMonitor;
    LODWORD(buf) = 138412290;
    *(&buf + 4) = accountTypesToMonitor;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v7, "RegisterTypesToMonitorSync", "%@", &buf, 0xCu);
  }

  v13 = _ACSignpostLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [ACMonitoredAccountStore registerSynchronouslyWithError:?];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__ACMonitoredAccountStore_registerSynchronouslyWithError___block_invoke;
  v15[3] = &unk_1E7975400;
  v15[6] = v7;
  v15[7] = v9;
  v15[4] = self;
  v15[5] = &buf;
  [(ACMonitoredAccountStore *)self _registerAccountMonitorSynchronouslyWithCompletion:v15];
  if (a3)
  {
    *a3 = *(*(&buf + 1) + 40);
  }

  _Block_object_dispose(&buf, 8);

  os_activity_scope_leave(&state);
  v14 = *MEMORY[0x1E69E9840];
}

void __58__ACMonitoredAccountStore_registerSynchronouslyWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  Nanoseconds = _ACSignpostGetNanoseconds(*(a1 + 48), *(a1 + 56));
  v8 = _ACSignpostLogSystem();
  v9 = v8;
  v10 = *(a1 + 48);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v11 = &stru_1F210E1C8;
    if (v6)
    {
      v11 = v6;
    }

    v20 = 138412546;
    v21 = v5;
    v22 = 2112;
    v23 = *&v11;
    _os_signpost_emit_with_name_impl(&dword_1AC3CD000, v9, OS_SIGNPOST_INTERVAL_END, v10, "RegisterTypesToMonitorSync", "%@%@", &v20, 0x16u);
  }

  v12 = _ACSignpostLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(a1 + 48);
    v20 = 134218754;
    v21 = v18;
    v19 = &stru_1F210E1C8;
    v22 = 2048;
    v23 = Nanoseconds / 1000000000.0;
    v24 = 2112;
    v25 = v5;
    if (v6)
    {
      v19 = v6;
    }

    v26 = 2112;
    v27 = v19;
    _os_log_debug_impl(&dword_1AC3CD000, v12, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: RegisterTypesToMonitorSync %@%@", &v20, 0x2Au);
  }

  v13 = (a1 + 32);
  [*(a1 + 32) _registerNotifyReaders];
  if (v6 && [(__CFString *)v6 code]== 7)
  {
    v14 = _ACLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      __58__ACMonitoredAccountStore_registerSynchronouslyWithError___block_invoke_cold_1(a1 + 32, v14);
    }
  }

  else if (v5)
  {
    [*v13 _accountsListPopulated:v5];
    [*v13 _registerForCredentialChangedNotifications];
  }

  v15 = *(*(a1 + 40) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v6;

  v17 = *MEMORY[0x1E69E9840];
}

- (id)monitoredAccountWithIdentifier:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__ACMonitoredAccountStore_monitoredAccountWithIdentifier___block_invoke;
  v8[3] = &unk_1E7975450;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = ac_unfair_lock_perform_with_result(&self->_monitoredAccountsCacheLock, v8);

  return v6;
}

id __58__ACMonitoredAccountStore_monitoredAccountWithIdentifier___block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 136) objectForKeyedSubscript:*(a1 + 40)];
  v2 = [v1 copy];

  return v2;
}

- (void)addDelegate:(id)a3
{
  v5 = a3;
  v4 = self->_delegates;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_delegates addObject:v5];
  objc_sync_exit(v4);
}

- (void)removeDelegate:(id)a3
{
  v5 = a3;
  v4 = self->_delegates;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_delegates removeObject:v5];
  objc_sync_exit(v4);
}

- (void)_registerAccountMonitorWithCompletion:(id)a3
{
  v4 = a3;
  accountTypesToMonitor = self->_accountTypesToMonitor;
  if (!accountTypesToMonitor)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v12 = @"_accountTypesToMonitor must be non-nil";
    goto LABEL_6;
  }

  if (![(NSSet *)accountTypesToMonitor count])
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v12 = @"_accountTypesToMonitor must not be empty";
LABEL_6:
    v13 = [v10 exceptionWithName:v11 reason:v12 userInfo:0];
    objc_exception_throw(v13);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65__ACMonitoredAccountStore__registerAccountMonitorWithCompletion___block_invoke;
  v18[3] = &unk_1E79754A0;
  v18[4] = self;
  v19 = v4;
  v6 = v4;
  v7 = MEMORY[0x1AC5B3C70](v18);
  v8 = [(ACAccountStore *)self remoteAccountStoreSession];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65__ACMonitoredAccountStore__registerAccountMonitorWithCompletion___block_invoke_3;
  v16[3] = &unk_1E79754C8;
  v16[4] = self;
  v17 = v7;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__ACMonitoredAccountStore__registerAccountMonitorWithCompletion___block_invoke_4;
  v14[3] = &unk_1E79754F0;
  v14[4] = self;
  v15 = v17;
  v9 = v17;
  ac_dispatch_remote(v8, v16, v14);
}

void __65__ACMonitoredAccountStore__registerAccountMonitorWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__ACMonitoredAccountStore__registerAccountMonitorWithCompletion___block_invoke_2;
  block[3] = &unk_1E7975478;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __65__ACMonitoredAccountStore__registerAccountMonitorWithCompletion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _connectionFailureError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)_registerAccountMonitorSynchronouslyWithCompletion:(id)a3
{
  v4 = a3;
  accountTypesToMonitor = self->_accountTypesToMonitor;
  if (!accountTypesToMonitor)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = @"_accountTypesToMonitor must be non-nil";
    goto LABEL_6;
  }

  if (![(NSSet *)accountTypesToMonitor count])
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = @"_accountTypesToMonitor must not be empty";
LABEL_6:
    v11 = [v8 exceptionWithName:v9 reason:v10 userInfo:0];
    objc_exception_throw(v11);
  }

  v6 = [(ACAccountStore *)self remoteAccountStoreSession];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__ACMonitoredAccountStore__registerAccountMonitorSynchronouslyWithCompletion___block_invoke;
  v14[3] = &unk_1E79754C8;
  v14[4] = self;
  v15 = v4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__ACMonitoredAccountStore__registerAccountMonitorSynchronouslyWithCompletion___block_invoke_2;
  v12[3] = &unk_1E79754F0;
  v12[4] = self;
  v13 = v15;
  v7 = v15;
  ac_dispatch_remote_sync(v6, v14, v12);
}

void __78__ACMonitoredAccountStore__registerAccountMonitorSynchronouslyWithCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _connectionFailureError];
  (*(v1 + 16))(v1, 0, v2);
}

void __49__ACMonitoredAccountStore__registerNotifyReaders__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _reregisterForAccountType:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_reregisterForAccountType:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _ACLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v4;
    _os_log_impl(&dword_1AC3CD000, v5, OS_LOG_TYPE_DEFAULT, "ACMonitoredAccountStore: Fetching accounts of account type %@...", buf, 0xCu);
  }

  if (v4)
  {
    v12 = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
    propertiesToPrefetch = self->_propertiesToPrefetch;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__ACMonitoredAccountStore__reregisterForAccountType___block_invoke;
    v10[3] = &unk_1E7975568;
    v10[4] = self;
    v11 = v4;
    [(ACAccountStore *)self accountsWithAccountTypeIdentifiers:v6 preloadedProperties:propertiesToPrefetch completion:v10];
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53__ACMonitoredAccountStore__reregisterForAccountType___block_invoke_2;
    v9[3] = &unk_1E79755B8;
    v9[4] = self;
    [(ACMonitoredAccountStore *)self _registerAccountMonitorWithCompletion:v9];
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __53__ACMonitoredAccountStore__reregisterForAccountType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _ACLogSystem();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __53__ACMonitoredAccountStore__reregisterForAccountType___block_invoke_cold_1(v6, v8);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AC3CD000, v8, OS_LOG_TYPE_DEFAULT, "ACMonitoredAccountStore: Fetched Accounts", buf, 2u);
    }

    v9 = *(a1 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v12 = __53__ACMonitoredAccountStore__reregisterForAccountType___block_invoke_24;
    v13 = &unk_1E7975540;
    v14 = v9;
    v15 = v5;
    v16 = *(a1 + 40);
    v10 = v11;
    os_unfair_lock_lock(v9 + 42);
    v12(v10);
    os_unfair_lock_unlock(v9 + 42);
  }
}

void __53__ACMonitoredAccountStore__reregisterForAccountType___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _ACLogSystem();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __53__ACMonitoredAccountStore__reregisterForAccountType___block_invoke_cold_1(v6, v8);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AC3CD000, v8, OS_LOG_TYPE_DEFAULT, "ACMonitoredAccountStore: Fetched Accounts", buf, 2u);
    }

    v9 = *(a1 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v12 = __53__ACMonitoredAccountStore__reregisterForAccountType___block_invoke_25;
    v13 = &unk_1E7975590;
    v14 = v9;
    v15 = v5;
    v10 = v11;
    os_unfair_lock_lock(v9 + 42);
    v12(v10);
    os_unfair_lock_unlock(v9 + 42);
  }
}

- (void)_lock_processAccountsListForNotifications:(id)a3 forType:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v32 = a4;
  v34 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v6, "count")}];
  v31 = [(NSMutableDictionary *)self->_accountsByID allValues];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v40;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v40 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v39 + 1) + 8 * i);
        accountsByID = self->_accountsByID;
        v13 = [v11 identifier];
        v14 = [(NSMutableDictionary *)accountsByID objectForKeyedSubscript:v13];

        if (v14)
        {
          v15 = [v11 modificationID];
          v16 = [v14 modificationID];
          v17 = [v15 isEqualToString:v16];

          if ((v17 & 1) == 0)
          {
            [(ACMonitoredAccountStore *)self _lock_accountWasModified:v11];
          }
        }

        else
        {
          [(ACMonitoredAccountStore *)self _lock_accountWasAdded:v11];
        }

        v18 = [v11 identifier];
        [v34 addObject:v18];
      }

      v8 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v8);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v19 = v31;
  v20 = [v19 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v36;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v36 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v35 + 1) + 8 * j);
        if (v32)
        {
          v25 = [*(*(&v35 + 1) + 8 * j) accountType];
          v26 = [v25 identifier];
          v27 = [v32 isEqualToString:v26];

          if (!v27)
          {
            continue;
          }
        }

        v28 = [v24 identifier];
        v29 = [v34 containsObject:v28];

        if ((v29 & 1) == 0)
        {
          [(ACMonitoredAccountStore *)self _lock_accountWasRemoved:v24];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v21);
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)_accountsListPopulated:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v8 = __50__ACMonitoredAccountStore__accountsListPopulated___block_invoke;
  v9 = &unk_1E7975590;
  v10 = self;
  v5 = v4;
  v11 = v5;
  v6 = v7;
  os_unfair_lock_lock(&self->_monitoredAccountsCacheLock);
  v8(v6);
  os_unfair_lock_unlock(&self->_monitoredAccountsCacheLock);
}

uint64_t __50__ACMonitoredAccountStore__accountsListPopulated___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 136) removeAllObjects];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        [v7 _setAccountStore:{*(a1 + 32), v12}];
        v8 = *(*(a1 + 32) + 136);
        v9 = [v7 identifier];
        [v8 setObject:v7 forKeyedSubscript:v9];
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  result = [*(a1 + 32) _sendNotificationOfChange];
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void __69__ACMonitoredAccountStore__registerForCredentialChangedNotifications__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained credentialsChangedNotification:v3];
}

- (void)credentialsChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(ACAccountStore *)self replyQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__ACMonitoredAccountStore_credentialsChangedNotification___block_invoke;
  v7[3] = &unk_1E7975590;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __58__ACMonitoredAccountStore_credentialsChangedNotification___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:@"ACAccountIdentifierKey"];

  v4 = [*(a1 + 40) monitoredAccountWithIdentifier:v3];
  if (v4)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [*(a1 + 40) _allDelegates];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            [v10 accountCredentialChanged:v4];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)_allDelegates
{
  v3 = self->_delegates;
  objc_sync_enter(v3);
  v4 = [(NSHashTable *)self->_delegates allObjects];
  objc_sync_exit(v3);

  return v4;
}

- (void)_lock_accountWasAdded:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _ACLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&dword_1AC3CD000, v5, OS_LOG_TYPE_DEFAULT, "ACMonitoredAccountStore: account was added: %@", buf, 0xCu);
  }

  [v4 _setAccountStore:self];
  v6 = [v4 copy];
  accountsByID = self->_accountsByID;
  v8 = [v4 identifier];
  [(NSMutableDictionary *)accountsByID setObject:v6 forKeyedSubscript:v8];

  v9 = [(ACAccountStore *)self replyQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__ACMonitoredAccountStore__lock_accountWasAdded___block_invoke;
  v12[3] = &unk_1E7975590;
  v12[4] = self;
  v13 = v4;
  v10 = v4;
  dispatch_async(v9, v12);

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __49__ACMonitoredAccountStore__lock_accountWasAdded___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) _allDelegates];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 accountWasAdded:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  result = [*(a1 + 32) _sendNotificationOfChange];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_lock_accountWasModified:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _ACLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&dword_1AC3CD000, v5, OS_LOG_TYPE_DEFAULT, "ACMonitoredAccountStore: account was modified: %@", buf, 0xCu);
  }

  [v4 _setAccountStore:self];
  v6 = [v4 copy];
  accountsByID = self->_accountsByID;
  v8 = [v4 identifier];
  [(NSMutableDictionary *)accountsByID setObject:v6 forKeyedSubscript:v8];

  v9 = [(ACAccountStore *)self replyQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__ACMonitoredAccountStore__lock_accountWasModified___block_invoke;
  v12[3] = &unk_1E7975590;
  v12[4] = self;
  v13 = v4;
  v10 = v4;
  dispatch_async(v9, v12);

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __52__ACMonitoredAccountStore__lock_accountWasModified___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) _allDelegates];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 accountWasModified:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  result = [*(a1 + 32) _sendNotificationOfChange];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_lock_accountWasRemoved:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _ACLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v4;
    _os_log_impl(&dword_1AC3CD000, v5, OS_LOG_TYPE_DEFAULT, "ACMonitoredAccountStore: account was removed: %@", buf, 0xCu);
  }

  [v4 _setAccountStore:self];
  accountsByID = self->_accountsByID;
  v7 = [v4 identifier];
  [(NSMutableDictionary *)accountsByID setObject:0 forKeyedSubscript:v7];

  v8 = [(ACAccountStore *)self replyQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__ACMonitoredAccountStore__lock_accountWasRemoved___block_invoke;
  v11[3] = &unk_1E7975590;
  v11[4] = self;
  v12 = v4;
  v9 = v4;
  dispatch_async(v8, v11);

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __51__ACMonitoredAccountStore__lock_accountWasRemoved___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) _allDelegates];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 accountWasRemoved:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  result = [*(a1 + 32) _sendNotificationOfChange];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)registerWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 112);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_1AC3CD000, v2, v3, "BEGIN [%lld]: RegisterTypesToMonitor %@");
  v4 = *MEMORY[0x1E69E9840];
}

void __50__ACMonitoredAccountStore_registerWithCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 112);
  v4 = 138412290;
  v5 = v2;
  _os_log_fault_impl(&dword_1AC3CD000, a2, OS_LOG_TYPE_FAULT, "Attempted to register account monitor for types client is not authorized to access: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)registerSynchronouslyWithError:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 112);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_1AC3CD000, v2, v3, "BEGIN [%lld]: RegisterTypesToMonitorSync %@");
  v4 = *MEMORY[0x1E69E9840];
}

void __58__ACMonitoredAccountStore_registerSynchronouslyWithError___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 112);
  v4 = 138412290;
  v5 = v2;
  _os_log_fault_impl(&dword_1AC3CD000, a2, OS_LOG_TYPE_FAULT, "Attempted to register account monitor for types client is not authorized to access: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __53__ACMonitoredAccountStore__reregisterForAccountType___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1AC3CD000, a2, OS_LOG_TYPE_ERROR, "ACMonitoredAccountStore: Failed to fetch accounts: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end