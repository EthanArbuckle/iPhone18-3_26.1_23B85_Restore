@interface AMSAgeVerificationTask
+ (AMSBagKeySet)bagKeySet;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)_errorCheckWithAccount:(id)account bag:(id)bag;
+ (id)createBagForSubProfile;
- (AMSAgeVerificationTask)initWithAccount:(id)account bag:(id)bag options:(id)options presentationDelegate:(id)delegate;
- (id)_performTaskForAccount:(id)account withBag:(id)bag;
- (id)isVerificationNeeded;
- (id)performTask;
- (void)_handleAccountStoreDidChangeNotification:(id)notification;
- (void)_handleAccountStoreDidChangeNotification:(id)notification at:(id)at;
- (void)_startObservingAccountStoreChanges;
- (void)_stopObservingAccountStoreChanges;
@end

@implementation AMSAgeVerificationTask

- (AMSAgeVerificationTask)initWithAccount:(id)account bag:(id)bag options:(id)options presentationDelegate:(id)delegate
{
  accountCopy = account;
  bagCopy = bag;
  optionsCopy = options;
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = AMSAgeVerificationTask;
  v15 = [(AMSTask *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_account, account);
    objc_storeStrong(&v16->_bag, bag);
    objc_storeStrong(&v16->_options, options);
    objc_storeStrong(&v16->_presentationDelegate, delegate);
  }

  return v16;
}

- (id)isVerificationNeeded
{
  v3 = objc_opt_class();
  account = [(AMSAgeVerificationTask *)self account];
  v5 = [(AMSAgeVerificationTask *)self bag];
  v6 = [v3 _errorCheckWithAccount:account bag:v5];

  if (v6)
  {
    v7 = [AMSPromise promiseWithError:v6];
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
    account2 = [(AMSAgeVerificationTask *)self account];
    v10 = [account2 ams_accountFlagValueForAccountFlag:AMSAccountFlagAgeVerificationExpiration];

    v11 = [(AMSAgeVerificationTask *)self bag];
    v12 = [v11 BOOLForKey:@"isExplicitContentAgeVerificationRequired"];
    valuePromise = [v12 valuePromise];

    v14 = [(AMSAgeVerificationTask *)self bag];
    v15 = [v14 integerForKey:@"korAgeVerificationWarningThresholdDays"];
    valuePromise2 = [v15 valuePromise];

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __46__AMSAgeVerificationTask_isVerificationNeeded__block_invoke;
    v21[3] = &unk_1E73B3908;
    v22 = valuePromise2;
    v23 = v10;
    v24 = date;
    selfCopy = self;
    v17 = date;
    v18 = v10;
    v19 = valuePromise2;
    v7 = [valuePromise thenWithBlock:v21];
  }

  return v7;
}

id __46__AMSAgeVerificationTask_isVerificationNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__AMSAgeVerificationTask_isVerificationNeeded__block_invoke_2;
  v10[3] = &unk_1E73B38E0;
  v4 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = v3;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v13 = v5;
  v14 = v6;
  v7 = v3;
  v8 = [v4 continueWithBlock:v10];

  return v8;
}

id __46__AMSAgeVerificationTask_isVerificationNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [AMSAgeVerificationCore _resultForAccountVerificationExpirationTimestamp:*(a1 + 32) withBagControlledAgeVerificationRequired:*(a1 + 40) bagWarningThresholdDays:v3 at:*(a1 + 48)];
  v5 = +[AMSLogConfig sharedAccountsConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    v9 = *(a1 + 40);
    v10 = [*(a1 + 56) account];
    v11 = AMSAccountFlagAgeVerificationExpiration;
    v15 = *(a1 + 32);
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "requiredType")}];
    *buf = 138545666;
    v17 = v7;
    v18 = 2114;
    v19 = v8;
    v20 = 2114;
    v21 = @"isExplicitContentAgeVerificationRequired";
    v22 = 2114;
    v23 = v9;
    v24 = 2114;
    v25 = @"korAgeVerificationWarningThresholdDays";
    v26 = 2114;
    v27 = v3;
    v28 = 2114;
    v29 = v10;
    v30 = 2114;
    v31 = v11;
    v32 = 2114;
    v33 = v15;
    v34 = 2114;
    v35 = v12;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] %{public}@=%{public}@ and %{public}@=%{public}@. For account %{public}@, %{public}@=%{public}@, therefore requiredType=%{public}@", buf, 0x66u);
  }

  v13 = [AMSPromise promiseWithResult:v4];

  return v13;
}

- (id)performTask
{
  v3 = objc_opt_class();
  account = [(AMSAgeVerificationTask *)self account];
  v5 = [(AMSAgeVerificationTask *)self bag];
  v6 = [v3 _errorCheckWithAccount:account bag:v5];

  if (v6)
  {
    v7 = [AMSPromise promiseWithError:v6];
  }

  else
  {
    account2 = [(AMSAgeVerificationTask *)self account];
    v9 = [(AMSAgeVerificationTask *)self bag];
    v7 = [(AMSAgeVerificationTask *)self _performTaskForAccount:account2 withBag:v9];
  }

  return v7;
}

+ (id)_errorCheckWithAccount:(id)account bag:(id)bag
{
  accountCopy = account;
  bagCopy = bag;
  v7 = bagCopy;
  if (accountCopy)
  {
    if (bagCopy)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v9 = @"Age Verification requires a bag";
  }

  else
  {
    v9 = @"Age Verification requires an account";
  }

  v8 = AMSCustomError(@"AMSErrorDomain", 2, v9, 0, 0, 0);
LABEL_7:

  return v8;
}

- (id)_performTaskForAccount:(id)account withBag:(id)bag
{
  v4 = AMSCustomError(@"AMSErrorDomain", 12, @"Not available on this platform, try AMSUIAgeVerificationTask", 0, 0, 0);
  v5 = [AMSPromise promiseWithError:v4];

  return v5;
}

- (void)_startObservingAccountStoreChanges
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleAccountStoreDidChangeNotification_ name:*MEMORY[0x1E6959968] object:0];
}

- (void)_stopObservingAccountStoreChanges
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E6959968] object:0];
}

- (void)_handleAccountStoreDidChangeNotification:(id)notification
{
  v4 = MEMORY[0x1E695DF00];
  notificationCopy = notification;
  date = [v4 date];
  [(AMSAgeVerificationTask *)self _handleAccountStoreDidChangeNotification:notificationCopy at:date];
}

- (void)_handleAccountStoreDidChangeNotification:(id)notification at:(id)at
{
  v26 = *MEMORY[0x1E69E9840];
  atCopy = at;
  account = [(AMSAgeVerificationTask *)self account];
  ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];

  ams_altDSID = [ams_activeiTunesAccount ams_altDSID];
  ams_altDSID2 = [account ams_altDSID];
  if ([ams_altDSID isEqualToString:ams_altDSID2])
  {
  }

  else
  {
    ams_DSID = [ams_activeiTunesAccount ams_DSID];
    ams_DSID2 = [account ams_DSID];
    v13 = [ams_DSID isEqual:ams_DSID2];

    if (!v13)
    {
      goto LABEL_5;
    }
  }

  v14 = ams_activeiTunesAccount;

  account = v14;
LABEL_5:
  v15 = [account ams_accountFlagValueForAccountFlag:AMSAccountFlagAgeVerificationExpiration];
  v16 = [AMSAgeVerificationCore _isAgeVerificationNeededForExpiration:v15 at:atCopy];

  if (!v16)
  {
    v17 = +[AMSLogConfig sharedAccountsConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v17 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v20 = AMSLogKey();
      v22 = 138543618;
      v23 = v19;
      v24 = 2114;
      v25 = v20;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Dismissing System Alert Dialog", &v22, 0x16u);
    }

    [(AMSAgeVerificationTask *)self _stopObservingAccountStoreChanges];
    task = [(AMSAgeVerificationTask *)self task];
    [task _dismiss];
  }
}

+ (NSString)bagSubProfile
{
  if (_MergedGlobals_1 != -1)
  {
    dispatch_once(&_MergedGlobals_1, &__block_literal_global_5);
  }

  v3 = qword_1ED6E1D88;

  return v3;
}

void __39__AMSAgeVerificationTask_bagSubProfile__block_invoke()
{
  v0 = qword_1ED6E1D88;
  qword_1ED6E1D88 = @"AMSAgeVerification";
}

+ (NSString)bagSubProfileVersion
{
  if (qword_1ED6E1D90 != -1)
  {
    dispatch_once(&qword_1ED6E1D90, &__block_literal_global_34);
  }

  v3 = qword_1ED6E1D98;

  return v3;
}

void __46__AMSAgeVerificationTask_bagSubProfileVersion__block_invoke()
{
  v0 = qword_1ED6E1D98;
  qword_1ED6E1D98 = @"1";
}

+ (id)createBagForSubProfile
{
  bagSubProfile = [objc_opt_class() bagSubProfile];
  bagSubProfileVersion = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:bagSubProfile profileVersion:bagSubProfileVersion];

  return v4;
}

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(AMSBagKeySet);

  return v2;
}

@end