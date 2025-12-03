@interface HKRegulatoryDomainManager
+ (BOOL)isOverridePresent;
+ (BOOL)unregisterForUpdatesWithToken:(id)token;
+ (id)registerForUpdatesWithBlock:(id)block queue:(id)queue;
+ (void)setOverrideISOCountryCode:(id)code;
- (HKRegulatoryDomainManager)initWithCurrentEstimatesProvider:(id)provider;
- (id)currentCountryCode;
- (id)currentEstimate;
- (void)currentEstimate;
- (void)fetchMobileCountryCodeFromCellularWithCompletion:(id)completion;
@end

@implementation HKRegulatoryDomainManager

- (HKRegulatoryDomainManager)initWithCurrentEstimatesProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = HKRegulatoryDomainManager;
  v5 = [(HKRegulatoryDomainManager *)&v9 init];
  if (v5)
  {
    v6 = [providerCopy copy];
    currentEstimatesProvider = v5->_currentEstimatesProvider;
    v5->_currentEstimatesProvider = v6;
  }

  return v5;
}

- (id)currentCountryCode
{
  currentEstimate = [(HKRegulatoryDomainManager *)self currentEstimate];
  iSOCode = [currentEstimate ISOCode];

  return iSOCode;
}

- (id)currentEstimate
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = HKRegulatoryDomainEstimateOverrideISOCode();
  if (v3)
  {
    _HKInitializeLogging();
    v4 = HKLogInfrastructure();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 138543618;
      *&v10[4] = objc_opt_class();
      v11 = 2114;
      v12 = v3;
      _os_log_impl(&dword_19197B000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Returning ISO country code override override: %{public}@", v10, 0x16u);
    }

    if ([v3 isEqualToString:@"NONE"])
    {
      v5 = 0;
    }

    else
    {
      v6 = [HKRegulatoryDomainEstimate alloc];
      v7 = [MEMORY[0x1E695DF00] now];
      v5 = [(HKRegulatoryDomainEstimate *)v6 initWithISOCode:v3 timestamp:v7 provenance:103];
    }
  }

  else
  {
    [(HKRegulatoryDomainManager *)self currentEstimate];
    v5 = *v10;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)fetchMobileCountryCodeFromCellularWithCompletion:(id)completion
{
  completionCopy = completion;
  currentEstimate = [(HKRegulatoryDomainManager *)self currentEstimate];
  if (currentEstimate)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] hk_error:109 description:@"No location determined"];
  }

  completionCopy[2](completionCopy, currentEstimate, v5);
}

+ (id)registerForUpdatesWithBlock:(id)block queue:(id)queue
{
  blockCopy = block;
  out_token = -1;
  v6 = *MEMORY[0x1E69C6D00];
  v7 = *MEMORY[0x1E69C6D00];
  queueCopy = queue;
  uTF8String = [v6 UTF8String];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __63__HKRegulatoryDomainManager_registerForUpdatesWithBlock_queue___block_invoke;
  v16 = &unk_1E737ABD0;
  v10 = blockCopy;
  v17 = v10;
  LODWORD(blockCopy) = notify_register_dispatch(uTF8String, &out_token, queueCopy, &v13);

  if (blockCopy)
  {
    v11 = 0;
  }

  else
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInt:{out_token, v13, v14, v15, v16}];
  }

  return v11;
}

+ (BOOL)unregisterForUpdatesWithToken:(id)token
{
  tokenCopy = token;
  v4 = [tokenCopy intValue] != -1 && notify_cancel(objc_msgSend(tokenCopy, "intValue")) == 0;

  return v4;
}

+ (BOOL)isOverridePresent
{
  overrideISOCountryCode = [self overrideISOCountryCode];
  v3 = overrideISOCountryCode != 0;

  return v3;
}

+ (void)setOverrideISOCountryCode:(id)code
{
  v3 = *MEMORY[0x1E695E890];
  CFPreferencesSetAppValue(@"HealthRegulatoryDomainISOCountryCodeOverride", code, *MEMORY[0x1E695E890]);

  CFPreferencesAppSynchronize(v3);
}

- (void)currentEstimate
{
  v3 = (*(*(self + 8) + 16))();
  v4 = [v3 hk_firstObjectPassingTest:&__block_literal_global_50];

  *a2 = [[HKRegulatoryDomainEstimate alloc] initWithEstimate:v4];
}

@end