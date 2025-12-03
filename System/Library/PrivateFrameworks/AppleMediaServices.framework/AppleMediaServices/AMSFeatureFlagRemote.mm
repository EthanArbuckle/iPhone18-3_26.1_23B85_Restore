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
  _preferencesKey = [(AMSFeatureFlagRemote *)self _preferencesKey];
  v4 = [v9 objectForKeyedSubscript:_preferencesKey];
  bOOLValue = [v4 BOOLValue];

  _preferencesKey2 = [(AMSFeatureFlagRemote *)self _preferencesKey];
  v7 = [v9 objectForKeyedSubscript:_preferencesKey2];

  if (bOOLValue)
  {
    isDefaultEnabled = 1;
  }

  else if (v7)
  {
    isDefaultEnabled = 0;
  }

  else
  {
    isDefaultEnabled = [(AMSFeatureFlag *)self isDefaultEnabled];
  }

  [(AMSFeatureFlag *)self setEnabled:isDefaultEnabled];
  [(AMSFeatureFlag *)self _updateUserEnabled:[(AMSFeatureFlag *)self isEnabled]];
}

- (void)_updateDevelopmentPhase
{
  _developmentPhase = [(AMSFeatureFlagRemote *)self _developmentPhase];

  [(AMSFeatureFlag *)self setDevelopmentPhase:_developmentPhase];
}

- (void)_activateFlag
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = AMSSetLogKeyIfNeeded();
  v4 = +[AMSFeatureFlagRemote fetchRemoteFlagState];
  isUserEnabled = [(AMSFeatureFlag *)self isUserEnabled];
  _preferencesKey = [(AMSFeatureFlagRemote *)self _preferencesKey];
  if (isUserEnabled)
  {
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:_preferencesKey];

    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      feature = [(AMSFeatureFlag *)self feature];
      v13 = 138543874;
      v14 = v9;
      v15 = 2114;
      v16 = v3;
      v17 = 2114;
      v18 = feature;
      v11 = "%{public}@: [%{public}@] Remote Feature Flag enabled: %{public}@";
LABEL_10:
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, v11, &v13, 0x20u);
    }
  }

  else
  {
    [v4 setObject:MEMORY[0x1E695E110] forKeyedSubscript:_preferencesKey];

    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      feature = [(AMSFeatureFlag *)self feature];
      v13 = 138543874;
      v14 = v12;
      v15 = 2114;
      v16 = v3;
      v17 = 2114;
      v18 = feature;
      v11 = "%{public}@: [%{public}@] Remote Feature Flag disabled: %{public}@";
      goto LABEL_10;
    }
  }

  CFPreferencesSetAppValue(@"remoteFlagState", v4, @"com.apple.storeservices.itfe");
  CFPreferencesAppSynchronize(@"com.apple.storeservices.itfe");
}

- (int64_t)_developmentPhase
{
  flagData = [(AMSFeatureFlag *)self flagData];
  v4 = [flagData objectForKeyedSubscript:@"DevelopmentPhase"];

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
  _developmentPhase = [(AMSFeatureFlagRemote *)self _developmentPhase];
  v4 = MEMORY[0x1E696AEC0];
  domain = [(AMSFeatureFlag *)self domain];
  flagGroup = [(AMSFeatureFlag *)self flagGroup];
  feature = [(AMSFeatureFlag *)self feature];
  v8 = [v4 stringWithFormat:@"%@-%@-%@-%ld", domain, flagGroup, feature, _developmentPhase];

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