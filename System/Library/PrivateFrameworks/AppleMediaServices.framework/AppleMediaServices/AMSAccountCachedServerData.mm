@interface AMSAccountCachedServerData
+ (id)sharedInstance;
- (AMSAccountCachedServerData)initWithWrappedInstance:(id)instance;
- (id)BOOLForKey:(unint64_t)key accountID:(id)d updateBlock:(id)block;
- (id)accountFlagsForAccountID:(id)d;
- (id)cancelUpdatesForToken:(id)token;
- (id)intForKey:(unint64_t)key accountID:(id)d updateBlock:(id)block;
- (id)stringForKey:(unint64_t)key accountID:(id)d updateBlock:(id)block;
- (void)lazySync:(id)sync completion:(id)completion;
- (void)setAccountFlags:(id)flags forAccountID:(id)d completion:(id)completion;
- (void)setAutoPlay:(BOOL)play forAccountID:(id)d;
- (void)setPersonalization:(BOOL)personalization forAccountID:(id)d;
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

- (AMSAccountCachedServerData)initWithWrappedInstance:(id)instance
{
  instanceCopy = instance;
  if (!instanceCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"AMSAccountCachedServerData.m" lineNumber:43 description:{@"Unexpected nil reference: %s", "core"}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"AMSAccountCachedServerData.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %s", "[core isKindOfClass:AMSAccountCachedServerDataCore.class]"}];
  }

  v12.receiver = self;
  v12.super_class = AMSAccountCachedServerData;
  v7 = [(AMSAccountCachedServerData *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_core, instance);
  }

  return v8;
}

- (id)BOOLForKey:(unint64_t)key accountID:(id)d updateBlock:(id)block
{
  blockCopy = block;
  dCopy = d;
  core = [(AMSAccountCachedServerData *)self core];
  v11 = [core BOOLForKey:key accountID:dCopy updateBlock:blockCopy];

  return v11;
}

- (id)intForKey:(unint64_t)key accountID:(id)d updateBlock:(id)block
{
  blockCopy = block;
  dCopy = d;
  core = [(AMSAccountCachedServerData *)self core];
  v11 = [core intForKey:key accountID:dCopy updateBlock:blockCopy];

  return v11;
}

- (id)stringForKey:(unint64_t)key accountID:(id)d updateBlock:(id)block
{
  blockCopy = block;
  dCopy = d;
  core = [(AMSAccountCachedServerData *)self core];
  v11 = [core stringForKey:key accountID:dCopy updateBlock:blockCopy];

  return v11;
}

- (id)cancelUpdatesForToken:(id)token
{
  tokenCopy = token;
  core = [(AMSAccountCachedServerData *)self core];
  v6 = [core cancelUpdateBlockFor:tokenCopy];

  return v6;
}

- (void)lazySync:(id)sync completion:(id)completion
{
  syncCopy = sync;
  core = [(AMSAccountCachedServerData *)self core];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__AMSAccountCachedServerData_lazySync_completion___block_invoke;
  v7[3] = &unk_1E73B34B8;
  v7[4] = self;
  [core lazySyncWithAccounts:syncCopy completionHandler:v7];
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

- (id)accountFlagsForAccountID:(id)d
{
  if (d)
  {
    dCopy = d;
    core = [(AMSAccountCachedServerData *)self core];
    v6 = [core accountFlagsForAccountID:dCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setAutoPlay:(BOOL)play forAccountID:(id)d
{
  if (d)
  {
    playCopy = play;
    dCopy = d;
    core = [(AMSAccountCachedServerData *)self core];
    [core setAutoPlayTo:playCopy forAccountID:dCopy completionHandler:&__block_literal_global_20];
  }
}

- (void)setPersonalization:(BOOL)personalization forAccountID:(id)d
{
  if (d)
  {
    personalizationCopy = personalization;
    dCopy = d;
    core = [(AMSAccountCachedServerData *)self core];
    [core setPersonalizationTo:personalizationCopy forAccountID:dCopy completionHandler:&__block_literal_global_22];
  }
}

- (void)setAccountFlags:(id)flags forAccountID:(id)d completion:(id)completion
{
  if (d)
  {
    completionCopy = completion;
    dCopy = d;
    flagsCopy = flags;
    core = [(AMSAccountCachedServerData *)self core];
    [core setAccountFlags:flagsCopy forAccountID:dCopy completionHandler:completionCopy];
  }
}

@end