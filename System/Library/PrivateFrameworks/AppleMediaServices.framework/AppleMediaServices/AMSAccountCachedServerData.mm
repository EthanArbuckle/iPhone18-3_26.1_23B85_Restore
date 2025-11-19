@interface AMSAccountCachedServerData
+ (id)sharedInstance;
- (AMSAccountCachedServerData)initWithWrappedInstance:(id)a3;
- (id)BOOLForKey:(unint64_t)a3 accountID:(id)a4 updateBlock:(id)a5;
- (id)accountFlagsForAccountID:(id)a3;
- (id)cancelUpdatesForToken:(id)a3;
- (id)intForKey:(unint64_t)a3 accountID:(id)a4 updateBlock:(id)a5;
- (id)stringForKey:(unint64_t)a3 accountID:(id)a4 updateBlock:(id)a5;
- (void)lazySync:(id)a3 completion:(id)a4;
- (void)setAccountFlags:(id)a3 forAccountID:(id)a4 completion:(id)a5;
- (void)setAutoPlay:(BOOL)a3 forAccountID:(id)a4;
- (void)setPersonalization:(BOOL)a3 forAccountID:(id)a4;
@end

@implementation AMSAccountCachedServerData

void __44__AMSAccountCachedServerData_sharedInstance__block_invoke()
{
  v0 = [AMSAccountCachedServerData alloc];
  v3 = +[AMSAccountCachedServerDataCore sharedInstance];
  v1 = [(AMSAccountCachedServerData *)v0 initWithWrappedInstance:v3];
  v2 = qword_1ED6E2678;
  qword_1ED6E2678 = v1;
}

+ (id)sharedInstance
{
  if (_MergedGlobals_80 != -1)
  {
    dispatch_once(&_MergedGlobals_80, &__block_literal_global_2);
  }

  v3 = qword_1ED6E2678;

  return v3;
}

- (AMSAccountCachedServerData)initWithWrappedInstance:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"AMSAccountCachedServerData.m" lineNumber:43 description:{@"Unexpected nil reference: %s", "core"}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"AMSAccountCachedServerData.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %s", "[core isKindOfClass:AMSAccountCachedServerDataCore.class]"}];
  }

  v12.receiver = self;
  v12.super_class = AMSAccountCachedServerData;
  v7 = [(AMSAccountCachedServerData *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_core, a3);
  }

  return v8;
}

- (id)BOOLForKey:(unint64_t)a3 accountID:(id)a4 updateBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(AMSAccountCachedServerData *)self core];
  v11 = [v10 BOOLForKey:a3 accountID:v9 updateBlock:v8];

  return v11;
}

- (id)intForKey:(unint64_t)a3 accountID:(id)a4 updateBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(AMSAccountCachedServerData *)self core];
  v11 = [v10 intForKey:a3 accountID:v9 updateBlock:v8];

  return v11;
}

- (id)stringForKey:(unint64_t)a3 accountID:(id)a4 updateBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(AMSAccountCachedServerData *)self core];
  v11 = [v10 stringForKey:a3 accountID:v9 updateBlock:v8];

  return v11;
}

- (id)cancelUpdatesForToken:(id)a3
{
  v4 = a3;
  v5 = [(AMSAccountCachedServerData *)self core];
  v6 = [v5 cancelUpdateBlockFor:v4];

  return v6;
}

- (void)lazySync:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = [(AMSAccountCachedServerData *)self core];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__AMSAccountCachedServerData_lazySync_completion___block_invoke;
  v7[3] = &unk_1E73B34B8;
  v7[4] = self;
  [v6 lazySyncWithAccounts:v5 completionHandler:v7];
}

void __50__AMSAccountCachedServerData_lazySync_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = +[AMSLogConfig sharedAccountsConfig];
    if (!v3)
    {
      v3 = +[AMSLogConfig sharedConfig];
    }

    v4 = [v3 OSLogObject];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      v6 = AMSLogKey();
      v7 = AMSHashIfNeeded(v2);
      v8 = 138543874;
      v9 = v5;
      v10 = 2114;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Lazy account data sync failed: %{public}@", &v8, 0x20u);
    }
  }
}

- (id)accountFlagsForAccountID:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(AMSAccountCachedServerData *)self core];
    v6 = [v5 accountFlagsForAccountID:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setAutoPlay:(BOOL)a3 forAccountID:(id)a4
{
  if (a4)
  {
    v4 = a3;
    v6 = a4;
    v7 = [(AMSAccountCachedServerData *)self core];
    [v7 setAutoPlayTo:v4 forAccountID:v6 completionHandler:&__block_literal_global_20];
  }
}

- (void)setPersonalization:(BOOL)a3 forAccountID:(id)a4
{
  if (a4)
  {
    v4 = a3;
    v6 = a4;
    v7 = [(AMSAccountCachedServerData *)self core];
    [v7 setPersonalizationTo:v4 forAccountID:v6 completionHandler:&__block_literal_global_22];
  }
}

- (void)setAccountFlags:(id)a3 forAccountID:(id)a4 completion:(id)a5
{
  if (a4)
  {
    v8 = a5;
    v9 = a4;
    v10 = a3;
    v11 = [(AMSAccountCachedServerData *)self core];
    [v11 setAccountFlags:v10 forAccountID:v9 completionHandler:v8];
  }
}

@end