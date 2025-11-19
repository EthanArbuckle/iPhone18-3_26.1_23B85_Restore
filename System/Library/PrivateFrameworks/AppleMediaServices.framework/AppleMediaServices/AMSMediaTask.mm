@interface AMSMediaTask
+ (AMSBagKeySet)bagKeySet;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)createBagForSubProfile;
- (AMSMediaTask)initWithType:(int64_t)a3 clientIdentifier:(id)a4 clientVersion:(id)a5 bag:(id)a6;
- (id)perform;
@end

@implementation AMSMediaTask

+ (NSString)bagSubProfile
{
  if (_MergedGlobals_1_12 != -1)
  {
    dispatch_once(&_MergedGlobals_1_12, &__block_literal_global_68_1);
  }

  v3 = qword_1ED6E1F08;

  return v3;
}

void __29__AMSMediaTask_bagSubProfile__block_invoke()
{
  v0 = qword_1ED6E1F08;
  qword_1ED6E1F08 = @"AMSMediaTask";
}

+ (NSString)bagSubProfileVersion
{
  if (qword_1ED6E1F10 != -1)
  {
    dispatch_once(&qword_1ED6E1F10, &__block_literal_global_73_0);
  }

  v3 = qword_1ED6E1F18;

  return v3;
}

void __36__AMSMediaTask_bagSubProfileVersion__block_invoke()
{
  v0 = qword_1ED6E1F18;
  qword_1ED6E1F18 = @"1";
}

- (id)perform
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __23__AMSMediaTask_perform__block_invoke;
  v4[3] = &unk_1E73B3588;
  v4[4] = self;
  v2 = [(AMSTask *)self performTaskWithPromiseBlock:v4];

  return v2;
}

id __23__AMSMediaTask_perform__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = +[AMSLogConfig sharedMediaConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 logKey];
    *buf = 138543618;
    v26 = v4;
    v27 = 2114;
    v28 = v7;
    _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Starting media task", buf, 0x16u);
  }

  v8 = +[AMSMediaTaskTypeConfig configForType:environment:](AMSMediaTaskTypeConfig, "configForType:environment:", [*(a1 + 32) type], objc_msgSend(*(a1 + 32), "environment"));
  v9 = [AMSMediaTaskURLBuilder alloc];
  v10 = [*(a1 + 32) clientVersion];
  v11 = [*(a1 + 32) bag];
  v12 = [(AMSMediaTaskURLBuilder *)v9 initWithConfig:v8 clientVersion:v10 bag:v11];

  v13 = [*(a1 + 32) additionalPlatforms];
  [(AMSMediaTaskURLBuilder *)v12 setAdditionalPlatforms:v13];

  v14 = [*(a1 + 32) additionalQueryParams];
  [(AMSMediaTaskURLBuilder *)v12 setAdditionalQueryParams:v14];

  v15 = [*(a1 + 32) bundleIdentifiers];
  [(AMSMediaTaskURLBuilder *)v12 setBundleIdentifiers:v15];

  -[AMSMediaTaskURLBuilder setCharts:](v12, "setCharts:", [*(a1 + 32) charts]);
  v16 = [*(a1 + 32) filters];
  [(AMSMediaTaskURLBuilder *)v12 setFilters:v16];

  v17 = [*(a1 + 32) includedResultKeys];
  [(AMSMediaTaskURLBuilder *)v12 setIncludedResultKeys:v17];

  v18 = [*(a1 + 32) itemIdentifiers];
  [(AMSMediaTaskURLBuilder *)v12 setItemIdentifiers:v18];

  v19 = [*(a1 + 32) searchTerm];
  [(AMSMediaTaskURLBuilder *)v12 setSearchTerm:v19];

  v20 = [*(a1 + 32) appDistributionCountryCodeOverride];
  [(AMSMediaTaskURLBuilder *)v12 setAppDistributionCountryCodeOverride:v20];

  v21 = [(AMSMediaTaskURLBuilder *)v12 build];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __23__AMSMediaTask_perform__block_invoke_57;
  v24[3] = &unk_1E73B8F28;
  v24[4] = *(a1 + 32);
  v22 = [v21 thenWithBlock:v24];

  return v22;
}

id __23__AMSMediaTask_perform__block_invoke_57(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [AMSMediaSharedProperties propertiesForMediaTask:v3];
  v6 = [AMSMediaRequestEncoder alloc];
  v7 = [v5 tokenService];
  v8 = [*(a1 + 32) bag];
  v9 = [(AMSMediaRequestEncoder *)v6 initWithTokenService:v7 bag:v8];

  v10 = [*(a1 + 32) account];
  LOBYTE(v8) = [v10 ams_isEphemeralAccount];

  if ((v8 & 1) == 0)
  {
    v11 = [*(a1 + 32) account];
    [(AMSMediaRequestEncoder *)v9 setAccount:v11];
  }

  v12 = [*(a1 + 32) clientInfo];
  [(AMSMediaRequestEncoder *)v9 setClientInfo:v12];

  v13 = [*(a1 + 32) logKey];
  [(AMSMediaRequestEncoder *)v9 setLogKey:v13];

  -[AMSMediaRequestEncoder setURLKnownToBeTrusted:](v9, "setURLKnownToBeTrusted:", [*(a1 + 32) URLKnownToBeTrusted]);
  v14 = objc_alloc_init(AMSMediaResponseDecoder);
  [(AMSMediaRequestEncoder *)v9 setResponseDecoder:v14];
  v15 = [(AMSMediaRequestEncoder *)v9 requestWithComponents:v4];

  v16 = [v15 promiseWithTimeout:60.0];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __23__AMSMediaTask_perform__block_invoke_2;
  v20[3] = &unk_1E73B3510;
  v21 = v5;
  v17 = v5;
  v18 = [v16 thenWithBlock:v20];

  return v18;
}

- (AMSMediaTask)initWithType:(int64_t)a3 clientIdentifier:(id)a4 clientVersion:(id)a5 bag:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = AMSMediaTask;
  v14 = [(AMSTask *)&v19 init];
  v15 = v14;
  if (v14)
  {
    v14->_type = a3;
    objc_storeStrong(&v14->_clientIdentifier, a4);
    objc_storeStrong(&v15->_clientVersion, a5);
    objc_storeStrong(&v15->_bag, a6);
    v15->_environment = 0;
    v16 = AMSGenerateLogCorrelationKey();
    logKey = v15->_logKey;
    v15->_logKey = v16;
  }

  return v15;
}

id __23__AMSMediaTask_perform__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 session];
  v5 = [v4 dataTaskPromiseWithRequest:v3];

  v6 = [v5 promiseWithTimeout:60.0];
  v7 = [v6 thenWithBlock:&__block_literal_global_82];

  return v7;
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