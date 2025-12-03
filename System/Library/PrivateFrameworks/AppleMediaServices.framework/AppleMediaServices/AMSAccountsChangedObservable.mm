@interface AMSAccountsChangedObservable
+ (AMSAccountsChangedObservable)sharedInstance;
+ (AMSAccountsChangedObservable)sharedLocalAccountInstance;
+ (NSPointerArray)createdObservables;
+ (OS_dispatch_queue)createdObservablesAccessQueue;
+ (void)_processChangedAccount:(id)account;
- (BOOL)_shouldNotifyObserversForChangedAccount:(id)account;
- (id)_initWithAccount:(id)account accountTypeIdentifier:(id)identifier;
- (void)_accountStoreDidChange:(id)change;
- (void)_processChangedAccount:(id)account;
- (void)dealloc;
- (void)subscribe:(id)subscribe;
- (void)unsubscribe:(id)unsubscribe;
@end

@implementation AMSAccountsChangedObservable

+ (AMSAccountsChangedObservable)sharedInstance
{
  if (qword_1ED6E26A0 != -1)
  {
    dispatch_once(&qword_1ED6E26A0, &__block_literal_global_15);
  }

  v3 = qword_1ED6E26A8;

  return v3;
}

uint64_t __46__AMSAccountsChangedObservable_sharedInstance__block_invoke()
{
  qword_1ED6E26A8 = [[AMSAccountsChangedObservable alloc] _initWithAccount:0 accountTypeIdentifier:0];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_initWithAccount:(id)account accountTypeIdentifier:(id)identifier
{
  v38 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  identifierCopy = identifier;
  v32.receiver = self;
  v32.super_class = AMSAccountsChangedObservable;
  v9 = [(AMSAccountsChangedObservable *)&v32 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, account);
    if (identifierCopy)
    {
      v11 = identifierCopy;
      accountTypeIdentifier = v10->_accountTypeIdentifier;
      v10->_accountTypeIdentifier = v11;
    }

    else
    {
      accountTypeIdentifier = [accountCopy accountType];
      identifier = [accountTypeIdentifier identifier];
      v14 = v10->_accountTypeIdentifier;
      v10->_accountTypeIdentifier = identifier;
    }

    v10->_notificationsLock._os_unfair_lock_opaque = 0;
    v15 = objc_alloc_init(AMSObservable);
    observable = v10->_observable;
    v10->_observable = v15;

    v17 = +[AMSProcessInfo currentProcess];
    isAccountsDaemon = [v17 isAccountsDaemon];

    if (isAccountsDaemon)
    {
      v19 = +[AMSLogConfig sharedAccountsConfig];
      if (!v19)
      {
        v19 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v19 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
      {
        v21 = objc_opt_class();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v21;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "[%{public}@] Running in accountsd.", &buf, 0xCu);
      }

      v22 = +[AMSAccountsChangedObservable createdObservablesAccessQueue];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __71__AMSAccountsChangedObservable__initWithAccount_accountTypeIdentifier___block_invoke;
      v30[3] = &unk_1E73B3680;
      v31 = v10;
      v23 = v30;
      v24 = AMSLogKey();
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v34 = __AMSDispatchAsync_block_invoke;
      v35 = &unk_1E73B36D0;
      v36 = v24;
      v37 = v23;
      v25 = v24;
      dispatch_async(v22, &buf);

      defaultCenter = v31;
    }

    else
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v27 = *MEMORY[0x1E69597D8];
      ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
      [defaultCenter addObserver:v10 selector:sel__accountStoreDidChange_ name:v27 object:ams_sharedAccountStore];
    }
  }

  return v10;
}

void __71__AMSAccountsChangedObservable__initWithAccount_accountTypeIdentifier___block_invoke(uint64_t a1)
{
  v2 = +[AMSAccountsChangedObservable createdObservables];
  [v2 addPointer:*(a1 + 32)];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = AMSAccountsChangedObservable;
  [(AMSAccountsChangedObservable *)&v4 dealloc];
}

+ (NSPointerArray)createdObservables
{
  v2 = +[AMSProcessInfo currentProcess];
  isAccountsDaemon = [v2 isAccountsDaemon];

  if (isAccountsDaemon)
  {
    if (_MergedGlobals_81 != -1)
    {
      dispatch_once(&_MergedGlobals_81, &__block_literal_global_3);
    }

    v4 = qword_1ED6E2688;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __50__AMSAccountsChangedObservable_createdObservables__block_invoke()
{
  qword_1ED6E2688 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_dispatch_queue)createdObservablesAccessQueue
{
  v2 = +[AMSProcessInfo currentProcess];
  isAccountsDaemon = [v2 isAccountsDaemon];

  if (isAccountsDaemon)
  {
    if (qword_1ED6E2690 != -1)
    {
      dispatch_once(&qword_1ED6E2690, &__block_literal_global_12);
    }

    v4 = qword_1ED6E2698;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __61__AMSAccountsChangedObservable_createdObservablesAccessQueue__block_invoke()
{
  qword_1ED6E2698 = dispatch_queue_create("com.apple.AppleMediaServices.AMSAccountsChangedObservable.createdObservables", 0);

  return MEMORY[0x1EEE66BB8]();
}

+ (AMSAccountsChangedObservable)sharedLocalAccountInstance
{
  v17 = *MEMORY[0x1E69E9840];
  ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  ams_localiTunesAccount = [ams_sharedAccountStore ams_localiTunesAccount];

  if (ams_localiTunesAccount)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__AMSAccountsChangedObservable_sharedLocalAccountInstance__block_invoke;
    block[3] = &unk_1E73B3680;
    v12 = ams_localiTunesAccount;
    if (qword_1ED6E26B0 != -1)
    {
      dispatch_once(&qword_1ED6E26B0, block);
    }

    sharedInstance = qword_1ED6E26B8;
  }

  else
  {
    v6 = +[AMSLogConfig sharedAccountsConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      *buf = 138543618;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch the local account.", buf, 0x16u);
    }

    sharedInstance = [self sharedInstance];
  }

  return sharedInstance;
}

uint64_t __58__AMSAccountsChangedObservable_sharedLocalAccountInstance__block_invoke(uint64_t a1)
{
  qword_1ED6E26B8 = [[AMSAccountsChangedObservable alloc] initWithAccount:*(a1 + 32)];

  return MEMORY[0x1EEE66BB8]();
}

- (void)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  observable = [(AMSAccountsChangedObservable *)self observable];
  [observable subscribe:subscribeCopy];
}

- (void)unsubscribe:(id)unsubscribe
{
  unsubscribeCopy = unsubscribe;
  observable = [(AMSAccountsChangedObservable *)self observable];
  [observable unsubscribe:unsubscribeCopy];
}

- (void)_accountStoreDidChange:(id)change
{
  v74 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69598B8]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if ([v8 isEqualToString:*MEMORY[0x1E6959930]] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", *MEMORY[0x1E6959938]))
  {
    userInfo2 = [changeCopy userInfo];
    v10 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E6959720]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = +[AMSLogConfig sharedAccountsConfig];
    ams_sharedAccountStore = v12;
    if (!v11)
    {
      if (!v12)
      {
        ams_sharedAccountStore = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [ams_sharedAccountStore OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
      {
        v21 = AMSLogKey();
        v22 = MEMORY[0x1E696AEC0];
        v23 = objc_opt_class();
        v24 = v23;
        if (v21)
        {
          self = AMSLogKey();
          [v22 stringWithFormat:@"%@: [%@] ", v24, self];
        }

        else
        {
          [v22 stringWithFormat:@"%@: ", v23];
        }
        selfCopy = ;
        v57 = AMSHashIfNeeded(0);
        *buf = 138543618;
        v69 = selfCopy;
        v70 = 2114;
        v71 = v57;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring an ACAccountStoreDidChangeNotification. accountIdentifier = %{public}@", buf, 0x16u);
        if (v21)
        {

          selfCopy = self;
        }
      }

      goto LABEL_75;
    }

    if (!v12)
    {
      ams_sharedAccountStore = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [ams_sharedAccountStore OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
    {
      v15 = AMSLogKey();
      v16 = MEMORY[0x1E696AEC0];
      v17 = objc_opt_class();
      v18 = v17;
      if (v15)
      {
        v3 = AMSLogKey();
        [v16 stringWithFormat:@"%@: [%@] ", v18, v3];
      }

      else
      {
        [v16 stringWithFormat:@"%@: ", v17];
      }
      v19 = ;
      *buf = 138543362;
      v69 = v19;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEBUG, "%{public}@Received an ACAccountStoreDidChangeNotification.", buf, 0xCu);
      if (v15)
      {

        v19 = v3;
      }
    }

    object = [changeCopy object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      ams_sharedAccountStore = object;

      if (ams_sharedAccountStore)
      {
LABEL_43:
        v41 = [ams_sharedAccountStore _ams_fetchAccountWithIdentifier:v11];
        if (v41)
        {
          oSLogObject = v41;
          v66[0] = MEMORY[0x1E69E9820];
          v66[1] = 3221225472;
          v66[2] = __55__AMSAccountsChangedObservable__accountStoreDidChange___block_invoke;
          v66[3] = &unk_1E73B36A8;
          v66[4] = self;
          v67 = v11;
          [oSLogObject addFinishBlock:v66];
        }

        else
        {
          v42 = +[AMSUnitTests isRunningUnitTests];
          v43 = +[AMSLogConfig sharedAccountsConfig];
          v44 = v43;
          if (v42)
          {
            if (!v43)
            {
              v44 = +[AMSLogConfig sharedConfig];
            }

            oSLogObject3 = [v44 OSLogObject];
            if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
            {
              v46 = AMSLogKey();
              v47 = MEMORY[0x1E696AEC0];
              v48 = objc_opt_class();
              v49 = v48;
              if (v46)
              {
                selfCopy2 = AMSLogKey();
                [v47 stringWithFormat:@"%@: [%@] ", v49, selfCopy2];
              }

              else
              {
                [v47 stringWithFormat:@"%@: ", v48];
              }
              v50 = ;
              v59 = AMSHashIfNeeded(ams_sharedAccountStore);
              v60 = AMSHashIfNeeded(v11);
              *buf = 138543874;
              v69 = v50;
              v70 = 2114;
              v71 = v59;
              v72 = 2114;
              v73 = v60;
              _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@Could not create account promise. accountStore = %{public}@ | accountIdentifier = %{public}@", buf, 0x20u);
              if (v46)
              {

                v50 = selfCopy2;
              }
            }

            defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
            v62 = +[AMSLogConfig sharedAccountsConfig];
            [defaultCenter postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v62 userInfo:0];
          }

          else
          {
            if (!v43)
            {
              v44 = +[AMSLogConfig sharedConfig];
            }

            oSLogObject4 = [v44 OSLogObject];
            if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_FAULT))
            {
              v52 = AMSLogKey();
              v53 = MEMORY[0x1E696AEC0];
              v54 = objc_opt_class();
              v55 = v54;
              if (v52)
              {
                selfCopy2 = AMSLogKey();
                [v53 stringWithFormat:@"%@: [%@] ", v55, selfCopy2];
              }

              else
              {
                [v53 stringWithFormat:@"%@: ", v54];
              }
              v56 = ;
              v63 = AMSHashIfNeeded(ams_sharedAccountStore);
              v64 = AMSHashIfNeeded(v11);
              *buf = 138543874;
              v69 = v56;
              v70 = 2114;
              v71 = v63;
              v72 = 2114;
              v73 = v64;
              _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_FAULT, "%{public}@Could not create account promise. accountStore = %{public}@ | accountIdentifier = %{public}@", buf, 0x20u);
              if (v52)
              {

                v56 = selfCopy2;
              }
            }
          }

          oSLogObject = 0;
        }

LABEL_75:

        goto LABEL_76;
      }
    }

    else
    {
    }

    v32 = +[AMSLogConfig sharedAccountsConfig];
    if (!v32)
    {
      v32 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject5 = [v32 OSLogObject];
    if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
    {
      v34 = AMSLogKey();
      v35 = MEMORY[0x1E696AEC0];
      v36 = objc_opt_class();
      v37 = v36;
      selfCopy2 = self;
      if (v34)
      {
        v3 = AMSLogKey();
        [v35 stringWithFormat:@"%@: [%@] ", v37, v3];
      }

      else
      {
        [v35 stringWithFormat:@"%@: ", v36];
      }
      v38 = ;
      object2 = [changeCopy object];
      v40 = AMSHashIfNeeded(object2);
      *buf = 138543618;
      v69 = v38;
      v70 = 2114;
      v71 = v40;
      _os_log_impl(&dword_192869000, oSLogObject5, OS_LOG_TYPE_ERROR, "%{public}@The notification’s object was not an ACAccountStore. object = %{public}@", buf, 0x16u);

      if (v34)
      {

        v38 = v3;
      }

      self = selfCopy2;
    }

    ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    goto LABEL_43;
  }

  v11 = +[AMSLogConfig sharedAccountsConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  ams_sharedAccountStore = [v11 OSLogObject];
  if (os_log_type_enabled(ams_sharedAccountStore, OS_LOG_TYPE_DEBUG))
  {
    v26 = AMSLogKey();
    v27 = MEMORY[0x1E696AEC0];
    v28 = objc_opt_class();
    v29 = v28;
    if (v26)
    {
      self = AMSLogKey();
      [v27 stringWithFormat:@"%@: [%@] ", v29, self];
    }

    else
    {
      [v27 stringWithFormat:@"%@: ", v28];
    }
    selfCopy3 = ;
    v58 = AMSHashIfNeeded(v8);
    *buf = 138543618;
    v69 = selfCopy3;
    v70 = 2114;
    v71 = v58;
    _os_log_impl(&dword_192869000, ams_sharedAccountStore, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring an ACAccountStoreDidChangeNotification. accountType = %{public}@", buf, 0x16u);
    if (v26)
    {

      selfCopy3 = self;
    }
  }

LABEL_76:
}

void __55__AMSAccountsChangedObservable__accountStoreDidChange___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    os_unfair_lock_lock((*(a1 + 32) + 8));
    [*(a1 + 32) _processChangedAccount:v6];
    os_unfair_lock_unlock((*(a1 + 32) + 8));
  }

  else
  {
    v8 = +[AMSLogConfig sharedAccountsConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = AMSLogKey();
      v11 = MEMORY[0x1E696AEC0];
      v12 = objc_opt_class();
      v13 = v12;
      if (v10)
      {
        v3 = AMSLogKey();
        [v11 stringWithFormat:@"%@: [%@] ", v13, v3];
      }

      else
      {
        [v11 stringWithFormat:@"%@: ", v12];
      }
      v14 = ;
      v15 = AMSHashIfNeeded(*(a1 + 40));
      v16 = AMSLogableError(v7);
      *buf = 138543874;
      v18 = v14;
      v19 = 2114;
      v20 = v15;
      v21 = 2114;
      v22 = v16;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@Error fetching account. identifier = %{public}@ | error = %{public}@", buf, 0x20u);
      if (v10)
      {

        v14 = v3;
      }
    }
  }
}

- (void)_processChangedAccount:(id)account
{
  v22 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v5 = [(AMSAccountsChangedObservable *)self _shouldNotifyObserversForChangedAccount:accountCopy];
  v6 = +[AMSLogConfig sharedAccountsConfig];
  v7 = v6;
  if (v5)
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [(AMSAccountsChangedResult *)v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = AMSHashIfNeeded(accountCopy);
      v16 = 138543874;
      v17 = v9;
      v18 = 2114;
      v19 = v10;
      v20 = 2114;
      v21 = v11;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "[%{public}@] [%{public}@] Notifying observers of a changed account. changedAccount = %{public}@", &v16, 0x20u);
    }

    v7 = [[AMSAccountsChangedResult alloc] initWithAccount:accountCopy];
    observable = [(AMSAccountsChangedObservable *)self observable];
    [observable sendResult:v7];
  }

  else
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    observable = [(AMSAccountsChangedResult *)v7 OSLogObject];
    if (os_log_type_enabled(observable, OS_LOG_TYPE_DEBUG))
    {
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      v15 = AMSHashIfNeeded(accountCopy);
      v16 = 138543874;
      v17 = v13;
      v18 = 2114;
      v19 = v14;
      v20 = 2114;
      v21 = v15;
      _os_log_impl(&dword_192869000, observable, OS_LOG_TYPE_DEBUG, "[%{public}@] [%{public}@] Ignoring a change account. account = %{public}@", &v16, 0x20u);
    }
  }
}

+ (void)_processChangedAccount:(id)account
{
  accountCopy = account;
  v4 = +[AMSProcessInfo currentProcess];
  isAccountsDaemon = [v4 isAccountsDaemon];

  if (isAccountsDaemon)
  {
    v6 = +[AMSAccountsChangedObservable createdObservablesAccessQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __55__AMSAccountsChangedObservable__processChangedAccount___block_invoke;
    v10[3] = &unk_1E73B3680;
    v11 = accountCopy;
    v7 = v10;
    v8 = AMSLogKey();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __AMSDispatchAsync_block_invoke;
    block[3] = &unk_1E73B36D0;
    v13 = v8;
    v14 = v7;
    v9 = v8;
    dispatch_async(v6, block);
  }
}

void __55__AMSAccountsChangedObservable__processChangedAccount___block_invoke(uint64_t a1)
{
  v5 = +[AMSAccountsChangedObservable createdObservables];
  if ([v5 count])
  {
    v2 = 0;
    do
    {
      v3 = [v5 pointerAtIndex:v2];
      v4 = v3;
      if (v3)
      {
        [v3 _processChangedAccount:*(a1 + 32)];
      }

      ++v2;
    }

    while (v2 < [v5 count]);
  }

  [v5 compact];
}

- (BOOL)_shouldNotifyObserversForChangedAccount:(id)account
{
  v33 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  account = [(AMSAccountsChangedObservable *)self account];
  if (account)
  {
  }

  else
  {
    accountTypeIdentifier = [(AMSAccountsChangedObservable *)self accountTypeIdentifier];

    if (!accountTypeIdentifier)
    {
      v14 = +[AMSLogConfig sharedAccountsConfig];
      if (!v14)
      {
        v14 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v14 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_24;
      }

      v27 = objc_opt_class();
      v17 = AMSLogKey();
      v29 = 138543618;
      v30 = v27;
      v31 = 2114;
      v32 = v17;
      v18 = "[%{public}@] [%{public}@] The observable responds to all account changes.";
      goto LABEL_23;
    }
  }

  account2 = [(AMSAccountsChangedObservable *)self account];
  if (account2)
  {
    v8 = account2;
    account3 = [(AMSAccountsChangedObservable *)self account];
    identifier = [account3 identifier];
    identifier2 = [accountCopy identifier];
    if ([identifier isEqualToString:identifier2])
    {

LABEL_8:
      v14 = +[AMSLogConfig sharedAccountsConfig];
      if (!v14)
      {
        v14 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v14 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_24;
      }

      v16 = objc_opt_class();
      v17 = AMSLogKey();
      v29 = 138543618;
      v30 = v16;
      v31 = 2114;
      v32 = v17;
      v18 = "[%{public}@] [%{public}@] The observable matches the changed account.";
LABEL_23:
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, v18, &v29, 0x16u);

LABEL_24:
      v26 = 1;
      goto LABEL_25;
    }

    account4 = [(AMSAccountsChangedObservable *)self account];
    v13 = [account4 ams_isDuplicate:accountCopy];

    if (v13)
    {
      goto LABEL_8;
    }
  }

  accountTypeIdentifier2 = [(AMSAccountsChangedObservable *)self accountTypeIdentifier];
  if (accountTypeIdentifier2)
  {
    v20 = accountTypeIdentifier2;
    accountTypeIdentifier3 = [(AMSAccountsChangedObservable *)self accountTypeIdentifier];
    accountType = [accountCopy accountType];
    identifier3 = [accountType identifier];
    v24 = [accountTypeIdentifier3 isEqualToString:identifier3];

    if (v24)
    {
      v14 = +[AMSLogConfig sharedAccountsConfig];
      if (!v14)
      {
        v14 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v14 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_24;
      }

      v25 = objc_opt_class();
      v17 = AMSLogKey();
      v29 = 138543618;
      v30 = v25;
      v31 = 2114;
      v32 = v17;
      v18 = "[%{public}@] [%{public}@] The observable matches the changed account type.";
      goto LABEL_23;
    }
  }

  v26 = 0;
LABEL_25:

  return v26;
}

@end