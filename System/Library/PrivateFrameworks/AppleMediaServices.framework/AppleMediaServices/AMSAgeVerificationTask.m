@interface AMSAgeVerificationTask
+ (AMSBagKeySet)bagKeySet;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)_errorCheckWithAccount:(id)a3 bag:(id)a4;
+ (id)createBagForSubProfile;
- (AMSAgeVerificationTask)initWithAccount:(id)a3 bag:(id)a4 options:(id)a5 presentationDelegate:(id)a6;
- (id)_performTaskForAccount:(id)a3 withBag:(id)a4;
- (id)isVerificationNeeded;
- (id)performTask;
- (void)_handleAccountStoreDidChangeNotification:(id)a3;
- (void)_handleAccountStoreDidChangeNotification:(id)a3 at:(id)a4;
- (void)_startObservingAccountStoreChanges;
- (void)_stopObservingAccountStoreChanges;
@end

@implementation AMSAgeVerificationTask

- (AMSAgeVerificationTask)initWithAccount:(id)a3 bag:(id)a4 options:(id)a5 presentationDelegate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = AMSAgeVerificationTask;
  v15 = [(AMSTask *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_account, a3);
    objc_storeStrong(&v16->_bag, a4);
    objc_storeStrong(&v16->_options, a5);
    objc_storeStrong(&v16->_presentationDelegate, a6);
  }

  return v16;
}

- (id)isVerificationNeeded
{
  v3 = objc_opt_class();
  v4 = [(AMSAgeVerificationTask *)self account];
  v5 = [(AMSAgeVerificationTask *)self bag];
  v6 = [v3 _errorCheckWithAccount:v4 bag:v5];

  if (v6)
  {
    v7 = [AMSPromise promiseWithError:v6];
  }

  else
  {
    v8 = [MEMORY[0x1E695DF00] date];
    v9 = [(AMSAgeVerificationTask *)self account];
    v10 = [v9 ams_accountFlagValueForAccountFlag:AMSAccountFlagAgeVerificationExpiration];

    v11 = [(AMSAgeVerificationTask *)self bag];
    v12 = [v11 BOOLForKey:@"isExplicitContentAgeVerificationRequired"];
    v13 = [v12 valuePromise];

    v14 = [(AMSAgeVerificationTask *)self bag];
    v15 = [v14 integerForKey:@"korAgeVerificationWarningThresholdDays"];
    v16 = [v15 valuePromise];

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __46__AMSAgeVerificationTask_isVerificationNeeded__block_invoke;
    v21[3] = &unk_1E73B3908;
    v22 = v16;
    v23 = v10;
    v24 = v8;
    v25 = self;
    v17 = v8;
    v18 = v10;
    v19 = v16;
    v7 = [v13 thenWithBlock:v21];
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
  v4 = [(AMSAgeVerificationTask *)self account];
  v5 = [(AMSAgeVerificationTask *)self bag];
  v6 = [v3 _errorCheckWithAccount:v4 bag:v5];

  if (v6)
  {
    v7 = [AMSPromise promiseWithError:v6];
  }

  else
  {
    v8 = [(AMSAgeVerificationTask *)self account];
    v9 = [(AMSAgeVerificationTask *)self bag];
    v7 = [(AMSAgeVerificationTask *)self _performTaskForAccount:v8 withBag:v9];
  }

  return v7;
}

+ (id)_errorCheckWithAccount:(id)a3 bag:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
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

- (id)_performTaskForAccount:(id)a3 withBag:(id)a4
{
  v4 = AMSCustomError(@"AMSErrorDomain", 12, @"Not available on this platform, try AMSUIAgeVerificationTask", 0, 0, 0);
  v5 = [AMSPromise promiseWithError:v4];

  return v5;
}

- (void)_startObservingAccountStoreChanges
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__handleAccountStoreDidChangeNotification_ name:*MEMORY[0x1E6959968] object:0];
}

- (void)_stopObservingAccountStoreChanges
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E6959968] object:0];
}

- (void)_handleAccountStoreDidChangeNotification:(id)a3
{
  v4 = MEMORY[0x1E695DF00];
  v5 = a3;
  v6 = [v4 date];
  [(AMSAgeVerificationTask *)self _handleAccountStoreDidChangeNotification:v5 at:v6];
}

- (void)_handleAccountStoreDidChangeNotification:(id)a3 at:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(AMSAgeVerificationTask *)self account];
  v7 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  v8 = [v7 ams_activeiTunesAccount];

  v9 = [v8 ams_altDSID];
  v10 = [v6 ams_altDSID];
  if ([v9 isEqualToString:v10])
  {
  }

  else
  {
    v11 = [v8 ams_DSID];
    v12 = [v6 ams_DSID];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_5;
    }
  }

  v14 = v8;

  v6 = v14;
LABEL_5:
  v15 = [v6 ams_accountFlagValueForAccountFlag:AMSAccountFlagAgeVerificationExpiration];
  v16 = [AMSAgeVerificationCore _isAgeVerificationNeededForExpiration:v15 at:v5];

  if (!v16)
  {
    v17 = +[AMSLogConfig sharedAccountsConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v20 = AMSLogKey();
      v22 = 138543618;
      v23 = v19;
      v24 = 2114;
      v25 = v20;
      _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Dismissing System Alert Dialog", &v22, 0x16u);
    }

    [(AMSAgeVerificationTask *)self _stopObservingAccountStoreChanges];
    v21 = [(AMSAgeVerificationTask *)self task];
    [v21 _dismiss];
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
  v2 = [objc_opt_class() bagSubProfile];
  v3 = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:v2 profileVersion:v3];

  return v4;
}

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(AMSBagKeySet);

  return v2;
}

@end