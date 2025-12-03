@interface AMSSyncPasswordSettingsTask
+ (AMSBagKeySet)bagKeySet;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)createBagForSubProfile;
+ (id)serverValueForFreePasswordSetting:(unint64_t)setting;
+ (id)serverValueForPaidPasswordSetting:(unint64_t)setting;
+ (unint64_t)freePasswordSettingFromServerValue:(unint64_t)value;
+ (unint64_t)paidPasswordSettingFromServerValue:(unint64_t)value;
- (AMSSyncPasswordSettingsTask)initWithAccount:(id)account freeSetting:(unint64_t)setting paidSetting:(unint64_t)paidSetting delegate:(id)delegate bag:(id)bag;
- (NSURLSessionDelegate)delegate;
- (id)performSync;
@end

@implementation AMSSyncPasswordSettingsTask

- (AMSSyncPasswordSettingsTask)initWithAccount:(id)account freeSetting:(unint64_t)setting paidSetting:(unint64_t)paidSetting delegate:(id)delegate bag:(id)bag
{
  accountCopy = account;
  delegateCopy = delegate;
  bagCopy = bag;
  v19.receiver = self;
  v19.super_class = AMSSyncPasswordSettingsTask;
  v16 = [(AMSTask *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_account, account);
    v17->_freeSetting = setting;
    v17->_paidSetting = paidSetting;
    objc_storeStrong(&v17->_bag, bag);
    objc_storeWeak(&v17->_delegate, delegateCopy);
  }

  return v17;
}

- (id)performSync
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__AMSSyncPasswordSettingsTask_performSync__block_invoke;
  v5[3] = &unk_1E73B3588;
  v5[4] = self;
  v4.receiver = self;
  v4.super_class = AMSSyncPasswordSettingsTask;
  v2 = [(AMSTask *)&v4 performTaskWithPromiseBlock:v5];

  return v2;
}

id __42__AMSSyncPasswordSettingsTask_performSync__block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = +[AMSLogConfig sharedAccountsConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = AMSLogKey();
    v6 = [*(a1 + 32) account];
    v7 = AMSHashIfNeeded(v6);
    v8 = [*(a1 + 32) freeSetting];
    v9 = [*(a1 + 32) paidSetting];
    *buf = 138544386;
    v30 = v4;
    v31 = 2114;
    v32 = v5;
    v33 = 2114;
    v34 = v7;
    v35 = 2048;
    v36 = v8;
    v37 = 2048;
    v38 = v9;
    _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Syncing password settings. account = %{public}@ | settings = Free: %lu, paid: %lu", buf, 0x34u);
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v27[0] = @"free";
  v11 = [objc_opt_class() serverValueForFreePasswordSetting:{objc_msgSend(*(a1 + 32), "freeSetting")}];
  v27[1] = @"paid";
  v28[0] = v11;
  v12 = [objc_opt_class() serverValueForPaidPasswordSetting:{objc_msgSend(*(a1 + 32), "paidSetting")}];
  v28[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
  [v10 setObject:v13 forKeyedSubscript:@"settings"];

  v14 = +[AMSDevice deviceGUID];
  [v10 ams_setNullableObject:v14 forKey:@"guid"];

  v15 = [*(a1 + 32) bag];
  v16 = [v15 URLForKey:@"update-password-settings"];

  v17 = [AMSURLRequestEncoder alloc];
  v18 = [*(a1 + 32) bag];
  v19 = [(AMSURLRequestEncoder *)v17 initWithBag:v18];

  v20 = [*(a1 + 32) account];
  [(AMSURLRequestEncoder *)v19 setAccount:v20];

  v21 = [*(a1 + 32) clientInfo];
  [(AMSURLRequestEncoder *)v19 setClientInfo:v21];

  [(AMSURLRequestEncoder *)v19 setRequestEncoding:3];
  v22 = AMSLogKey();
  [(AMSURLRequestEncoder *)v19 setLogUUID:v22];

  [(AMSURLRequestEncoder *)v19 setRequestEncoding:2];
  v23 = [(AMSURLRequestEncoder *)v19 requestWithMethod:4 bagURL:v16 parameters:v10];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __42__AMSSyncPasswordSettingsTask_performSync__block_invoke_32;
  v26[3] = &unk_1E73B3510;
  v26[4] = *(a1 + 32);
  v24 = [v23 thenWithBlock:v26];

  return v24;
}

id __42__AMSSyncPasswordSettingsTask_performSync__block_invoke_32(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695AC80];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 clientInfo];
  v7 = [*(a1 + 32) bag];
  v8 = [v3 ams_configurationWithProcessInfo:v6 bag:v7];

  v9 = [[AMSURLSession alloc] initWithConfiguration:v8];
  v10 = [*(a1 + 32) delegate];
  [(AMSURLSession *)v9 setDelegate:v10];

  v11 = [(AMSURLSession *)v9 dataTaskPromiseWithRequest:v5];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __42__AMSSyncPasswordSettingsTask_performSync__block_invoke_2;
  v14[3] = &unk_1E73B3F48;
  v14[4] = *(a1 + 32);
  v12 = [v11 thenWithBlock:v14];

  return v12;
}

id __42__AMSSyncPasswordSettingsTask_performSync__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) account];
  [v2 ams_setFreePasswordPromptSetting:{objc_msgSend(*(a1 + 32), "freeSetting")}];

  v3 = [*(a1 + 32) account];
  [v3 ams_setPaidPasswordPromptSetting:{objc_msgSend(*(a1 + 32), "paidSetting")}];

  v4 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  v5 = [*(a1 + 32) account];
  v6 = [v4 ams_saveAccount:v5];

  v7 = objc_alloc_init(AMSSyncPasswordSettingsResult);
  v8 = [AMSPromise promiseWithResult:v7];

  return v8;
}

+ (id)serverValueForFreePasswordSetting:(unint64_t)setting
{
  if (setting > 3)
  {
    return &stru_1F071BA78;
  }

  else
  {
    return off_1E73BC710[setting];
  }
}

+ (id)serverValueForPaidPasswordSetting:(unint64_t)setting
{
  if (setting > 3)
  {
    return &stru_1F071BA78;
  }

  else
  {
    return off_1E73BC730[setting];
  }
}

+ (unint64_t)freePasswordSettingFromServerValue:(unint64_t)value
{
  v3 = 3;
  if ((value & 0xC) != 0xC)
  {
    v3 = (value & 0xC) == 4;
  }

  if ((value & 0xC) == 8)
  {
    return 2;
  }

  else
  {
    return v3;
  }
}

+ (unint64_t)paidPasswordSettingFromServerValue:(unint64_t)value
{
  if ((value & 2) != 0)
  {
    return value & 3;
  }

  else
  {
    return (value & 3) == 1;
  }
}

+ (NSString)bagSubProfile
{
  if (_MergedGlobals_1_17 != -1)
  {
    dispatch_once(&_MergedGlobals_1_17, &__block_literal_global_134);
  }

  v3 = qword_1ED6E1F98;

  return v3;
}

void __44__AMSSyncPasswordSettingsTask_bagSubProfile__block_invoke()
{
  v0 = qword_1ED6E1F98;
  qword_1ED6E1F98 = @"Accounts";
}

+ (NSString)bagSubProfileVersion
{
  if (qword_1ED6E1FA0 != -1)
  {
    dispatch_once(&qword_1ED6E1FA0, &__block_literal_global_51);
  }

  v3 = qword_1ED6E1FA8;

  return v3;
}

void __51__AMSSyncPasswordSettingsTask_bagSubProfileVersion__block_invoke()
{
  v0 = qword_1ED6E1FA8;
  qword_1ED6E1FA8 = @"1";
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

- (NSURLSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end