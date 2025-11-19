@interface AMSFeatureFlagRemote
+ (id)fetchRemoteFlagState;
- (id)_preferencesKey;
- (int64_t)_developmentPhase;
- (void)_activateFlag;
- (void)_updateDevelopmentPhase;
- (void)_updateInternalEnabledState;
@end

@implementation AMSFeatureFlagRemote

- (void)_updateInternalEnabledState
{
  [(AMSFeatureFlag *)self setDefaultEnabled:[(AMSFeatureFlagRemote *)self _developmentPhase]== 4];
  v9 = +[AMSFeatureFlagRemote fetchRemoteFlagState];
  v3 = [(AMSFeatureFlagRemote *)self _preferencesKey];
  v4 = [v9 objectForKeyedSubscript:v3];
  v5 = [v4 BOOLValue];

  v6 = [(AMSFeatureFlagRemote *)self _preferencesKey];
  v7 = [v9 objectForKeyedSubscript:v6];

  if (v5)
  {
    v8 = 1;
  }

  else if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [(AMSFeatureFlag *)self isDefaultEnabled];
  }

  [(AMSFeatureFlag *)self setEnabled:v8];
  [(AMSFeatureFlag *)self _updateUserEnabled:[(AMSFeatureFlag *)self isEnabled]];
}

- (void)_updateDevelopmentPhase
{
  v3 = [(AMSFeatureFlagRemote *)self _developmentPhase];

  [(AMSFeatureFlag *)self setDevelopmentPhase:v3];
}

- (void)_activateFlag
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = AMSSetLogKeyIfNeeded();
  v4 = +[AMSFeatureFlagRemote fetchRemoteFlagState];
  v5 = [(AMSFeatureFlag *)self isUserEnabled];
  v6 = [(AMSFeatureFlagRemote *)self _preferencesKey];
  if (v5)
  {
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v6];

    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = [(AMSFeatureFlag *)self feature];
      v13 = 138543874;
      v14 = v9;
      v15 = 2114;
      v16 = v3;
      v17 = 2114;
      v18 = v10;
      v11 = "%{public}@: [%{public}@] Remote Feature Flag enabled: %{public}@";
LABEL_10:
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, v11, &v13, 0x20u);
    }
  }

  else
  {
    [v4 setObject:MEMORY[0x1E695E110] forKeyedSubscript:v6];

    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v10 = [(AMSFeatureFlag *)self feature];
      v13 = 138543874;
      v14 = v12;
      v15 = 2114;
      v16 = v3;
      v17 = 2114;
      v18 = v10;
      v11 = "%{public}@: [%{public}@] Remote Feature Flag disabled: %{public}@";
      goto LABEL_10;
    }
  }

  CFPreferencesSetAppValue(@"remoteFlagState", v4, @"com.apple.storeservices.itfe");
  CFPreferencesAppSynchronize(@"com.apple.storeservices.itfe");
}

- (int64_t)_developmentPhase
{
  v3 = [(AMSFeatureFlag *)self flagData];
  v4 = [v3 objectForKeyedSubscript:@"DevelopmentPhase"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  if (([v4 isEqualToString:@"UnderDevelopment"] & 1) == 0)
  {
    if ([v4 isEqualToString:@"CodeComplete"])
    {
      v5 = 2;
      goto LABEL_11;
    }

    if ([v4 isEqualToString:@"PreviewReady"])
    {
      v5 = 3;
      goto LABEL_11;
    }

    if ([v4 isEqualToString:@"FeatureComplete"])
    {
      v5 = 4;
      goto LABEL_11;
    }

LABEL_10:
    v5 = [(AMSFeatureFlag *)self _developmentPhaseFromGroupType:[(AMSFeatureFlag *)self groupType]];
    goto LABEL_11;
  }

  v5 = 1;
LABEL_11:

  return v5;
}

- (id)_preferencesKey
{
  v3 = [(AMSFeatureFlagRemote *)self _developmentPhase];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(AMSFeatureFlag *)self domain];
  v6 = [(AMSFeatureFlag *)self flagGroup];
  v7 = [(AMSFeatureFlag *)self feature];
  v8 = [v4 stringWithFormat:@"%@-%@-%@-%ld", v5, v6, v7, v3];

  return v8;
}

+ (id)fetchRemoteFlagState
{
  CFPreferencesAppSynchronize(@"com.apple.storeservices.itfe");
  v2 = CFPreferencesCopyAppValue(@"remoteFlagState", @"com.apple.storeservices.itfe");
  if (!v2 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v3 = objc_opt_new();

    v2 = v3;
  }

  v4 = [v2 mutableCopy];

  return v4;
}

@end