@interface AMSFeatureFlagITFE
+ (BOOL)_isITFEValueCustom:(id)custom;
+ (id)_concreteITFEs;
+ (id)_customITFEs;
+ (id)_flagGroupITFEs;
+ (id)_mutableITFEs;
+ (id)_profileITFEs;
+ (id)_remoteGroupITFEs;
+ (id)fetchCustomFeatures;
+ (id)fetchMutableFeatures;
+ (id)fetchProfileFeatures;
+ (void)removeOrphanITFEValues:(id)values;
+ (void)resetFeatures;
+ (void)setMutableFeatureName:(id)name toValue:(id)value;
+ (void)verifyOrphans;
- (AMSFeatureFlagITFE)initWithValue:(id)value isEnabled:(BOOL)enabled isMutable:(BOOL)mutable;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
- (void)toggle:(BOOL)toggle;
@end

@implementation AMSFeatureFlagITFE

+ (id)_flagGroupITFEs
{
  v2 = +[AMSFeatureFlagGroup allFlagGroups];
  allValues = [v2 allValues];

  v4 = [allValues ams_mapWithTransform:&__block_literal_global_55];
  v5 = [v4 valueForKeyPath:@"@unionOfArrays.self"];

  return v5;
}

id __37__AMSFeatureFlagITFE__flagGroupITFEs__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 flags];
  v3 = [v2 ams_mapWithTransform:&__block_literal_global_58_0];
  v4 = [v3 valueForKeyPath:@"@unionOfArrays.self"];

  return v4;
}

+ (id)_customITFEs
{
  _mutableITFEs = [self _mutableITFEs];
  _remoteGroupITFEs = [self _remoteGroupITFEs];
  _flagGroupITFEs = [self _flagGroupITFEs];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __34__AMSFeatureFlagITFE__customITFEs__block_invoke;
  v10[3] = &unk_1E73B7B88;
  v11 = _remoteGroupITFEs;
  v12 = _flagGroupITFEs;
  v6 = _flagGroupITFEs;
  v7 = _remoteGroupITFEs;
  v8 = [_mutableITFEs ams_filterUsingTest:v10];

  return v8;
}

uint64_t __34__AMSFeatureFlagITFE__customITFEs__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 40) containsObject:v3] ^ 1;
  }

  return v4;
}

+ (id)fetchProfileFeatures
{
  CFPreferencesAppSynchronize(@"com.apple.storeservices.itfe");
  v2 = CFPreferencesCopyAppValue(@"additionalFeatures", @"com.apple.storeservices.itfe");
  if (!v2 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v3 = objc_opt_new();

    v2 = v3;
  }

  return v2;
}

+ (id)fetchMutableFeatures
{
  CFPreferencesAppSynchronize(@"com.apple.storeservices.itfe");
  v2 = CFPreferencesCopyAppValue(@"features", @"com.apple.storeservices.itfe");
  if (!v2 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v3 = objc_opt_new();

    v2 = v3;
  }

  v4 = [v2 mutableCopy];

  return v4;
}

+ (id)_remoteGroupITFEs
{
  v2 = +[AMSFeatureFlagTask cachedRemoteGroups];
  v3 = [v2 ams_mapWithTransform:&__block_literal_global_64];
  v4 = [v3 valueForKeyPath:@"@unionOfArrays.self"];

  return v4;
}

+ (id)_concreteITFEs
{
  _mutableITFEs = [self _mutableITFEs];
  _remoteGroupITFEs = [self _remoteGroupITFEs];
  _flagGroupITFEs = [self _flagGroupITFEs];
  array = [MEMORY[0x1E695DF70] array];
  [array addObjectsFromArray:_mutableITFEs];
  [array addObjectsFromArray:_remoteGroupITFEs];
  [array addObjectsFromArray:_flagGroupITFEs];

  return array;
}

+ (id)_mutableITFEs
{
  v2 = +[AMSFeatureFlagITFE fetchMutableFeatures];
  v3 = [v2 ams_arrayUsingTransform:&__block_literal_global_70];

  return v3;
}

AMSFeatureFlagITFE *__35__AMSFeatureFlagITFE__mutableITFEs__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [AMSFeatureFlagITFE alloc];
  v7 = [v4 BOOLValue];

  v8 = [(AMSFeatureFlagITFE *)v6 initWithValue:v5 isEnabled:v7 isMutable:0];

  return v8;
}

- (AMSFeatureFlagITFE)initWithValue:(id)value isEnabled:(BOOL)enabled isMutable:(BOOL)mutable
{
  mutableCopy = mutable;
  enabledCopy = enabled;
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = AMSFeatureFlagITFE;
  v9 = [(AMSFeatureFlagITFE *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(AMSFeatureFlagITFE *)v9 setValue:valueCopy];
    [(AMSFeatureFlagITFE *)v10 setEnabled:enabledCopy];
    [(AMSFeatureFlagITFE *)v10 setReadonly:!mutableCopy];
  }

  return v10;
}

- (void)toggle:(BOOL)toggle
{
  toggleCopy = toggle;
  value = [(AMSFeatureFlagITFE *)self value];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:toggleCopy];
  [objc_opt_class() setMutableFeatureName:value toValue:v5];
  [(AMSFeatureFlagITFE *)self setEnabled:toggleCopy];
}

+ (id)fetchCustomFeatures
{
  CFPreferencesAppSynchronize(@"com.apple.storeservices.itfe");
  v3 = CFPreferencesCopyAppValue(@"customFeatures", @"com.apple.storeservices.itfe");
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    _customITFEs = [self _customITFEs];
    v5 = [_customITFEs ams_mapWithTransform:&__block_literal_global_60];

    CFPreferencesSetAppValue(@"customFeatures", v5, @"com.apple.storeservices.itfe");
    CFPreferencesAppSynchronize(@"com.apple.storeservices.itfe");
    v3 = v5;
  }

  v6 = [v3 mutableCopy];

  return v6;
}

+ (void)setMutableFeatureName:(id)name toValue:(id)value
{
  v33 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  valueCopy = value;
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v9 = [nameCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  lowercaseString = [v9 lowercaseString];

  fetchProfileFeatures = [self fetchProfileFeatures];
  if (![(__CFString *)lowercaseString length])
  {
    goto LABEL_22;
  }

  v12 = [fetchProfileFeatures objectForKey:lowercaseString];

  if (v12)
  {
    goto LABEL_22;
  }

  fetchMutableFeatures = [self fetchMutableFeatures];
  v14 = AMSSetLogKeyIfNeeded();
  if (valueCopy)
  {
    [fetchMutableFeatures setObject:valueCopy forKeyedSubscript:lowercaseString];
    v15 = +[AMSLogConfig sharedConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v15 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v17 = objc_opt_class();
    bOOLValue = [valueCopy BOOLValue];
    v19 = @"Disabled";
    v25 = 138544130;
    v26 = v17;
    v27 = 2114;
    if (bOOLValue)
    {
      v19 = @"Enabled";
    }

    v28 = v14;
    v29 = 2114;
    v30 = v19;
    v31 = 2114;
    v32 = lowercaseString;
    v20 = "%{public}@: [%{public}@] ITFE %{public}@: %{public}@";
    v21 = oSLogObject;
    v22 = 42;
  }

  else
  {
    [fetchMutableFeatures removeObjectForKey:lowercaseString];
    v15 = +[AMSLogConfig sharedConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v15 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v25 = 138543874;
    v26 = objc_opt_class();
    v27 = 2114;
    v28 = v14;
    v29 = 2114;
    v30 = lowercaseString;
    v20 = "%{public}@: [%{public}@] ITFE Removed: %{public}@";
    v21 = oSLogObject;
    v22 = 32;
  }

  _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_DEFAULT, v20, &v25, v22);
LABEL_15:

  if ([self _isITFEValueCustom:nameCopy])
  {
    fetchCustomFeatures = [self fetchCustomFeatures];
    v24 = fetchCustomFeatures;
    if (valueCopy)
    {
      if (([fetchCustomFeatures containsObject:nameCopy] & 1) == 0)
      {
        [v24 addObject:nameCopy];
      }
    }

    else
    {
      [fetchCustomFeatures removeObject:nameCopy];
    }

    CFPreferencesSetAppValue(@"customFeatures", v24, @"com.apple.storeservices.itfe");
  }

  CFPreferencesSetAppValue(@"features", fetchMutableFeatures, @"com.apple.storeservices.itfe");
  CFPreferencesAppSynchronize(@"com.apple.storeservices.itfe");

LABEL_22:
}

+ (void)resetFeatures
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = CFPreferencesCopyKeyList(@"com.apple.storeservices.itfe", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v2;
  v4 = [(__CFArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        CFPreferencesSetAppValue(*(*(&v8 + 1) + 8 * v7++), 0, @"com.apple.storeservices.itfe");
      }

      while (v5 != v7);
      v5 = [(__CFArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  CFPreferencesAppSynchronize(@"com.apple.storeservices.itfe");
}

+ (void)verifyOrphans
{
  fetchCustomFeatures = [self fetchCustomFeatures];
  _mutableITFEs = [self _mutableITFEs];
  _remoteGroupITFEs = [self _remoteGroupITFEs];
  _flagGroupITFEs = [self _flagGroupITFEs];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __35__AMSFeatureFlagITFE_verifyOrphans__block_invoke;
  v12[3] = &unk_1E73B7B20;
  v13 = _remoteGroupITFEs;
  v14 = _flagGroupITFEs;
  v15 = fetchCustomFeatures;
  v7 = fetchCustomFeatures;
  v8 = _flagGroupITFEs;
  v9 = _remoteGroupITFEs;
  v10 = [_mutableITFEs ams_filterUsingTest:v12];
  v11 = [v10 valueForKeyPath:@"value"];

  [self removeOrphanITFEValues:v11];
}

uint64_t __35__AMSFeatureFlagITFE_verifyOrphans__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:v3] & 1) != 0 || (objc_msgSend(*(a1 + 40), "containsObject:", v3))
  {
    v4 = 0;
  }

  else
  {
    v5 = *(a1 + 48);
    v6 = [v3 value];
    v4 = [v5 containsObject:v6] ^ 1;
  }

  return v4;
}

+ (void)removeOrphanITFEValues:(id)values
{
  v29 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  if ([valuesCopy count])
  {
    fetchMutableFeatures = [self fetchMutableFeatures];
    v6 = [fetchMutableFeatures ams_dictionaryRemovingKeys:valuesCopy];

    v17 = v6;
    CFPreferencesSetAppValue(@"features", v6, @"com.apple.storeservices.itfe");
    CFPreferencesAppSynchronize(@"com.apple.storeservices.itfe");
    v7 = AMSSetLogKeyIfNeeded();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = valuesCopy;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = +[AMSLogConfig sharedConfig];
          if (!v14)
          {
            v14 = +[AMSLogConfig sharedConfig];
          }

          oSLogObject = [v14 OSLogObject];
          if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
          {
            v16 = objc_opt_class();
            *buf = 138543874;
            v23 = v16;
            v24 = 2114;
            v25 = v7;
            v26 = 2114;
            v27 = v13;
            _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] ITFE orphan removed: %{public}@", buf, 0x20u);
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v28 count:16];
      }

      while (v10);
    }
  }
}

id __39__AMSFeatureFlagITFE__remoteGroupITFEs__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 flags];
  v3 = [v2 ams_mapWithTransform:&__block_literal_global_66];
  v4 = [v3 valueForKeyPath:@"@unionOfArrays.self"];

  return v4;
}

+ (id)_profileITFEs
{
  v2 = +[AMSFeatureFlagITFE fetchProfileFeatures];
  v3 = [v2 ams_arrayUsingTransform:&__block_literal_global_72];

  return v3;
}

AMSFeatureFlagITFE *__35__AMSFeatureFlagITFE__profileITFEs__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [AMSFeatureFlagITFE alloc];
  v7 = [v4 BOOLValue];

  v8 = [(AMSFeatureFlagITFE *)v6 initWithValue:v5 isEnabled:v7 isMutable:0];

  return v8;
}

+ (BOOL)_isITFEValueCustom:(id)custom
{
  customCopy = custom;
  _concreteITFEs = [self _concreteITFEs];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __41__AMSFeatureFlagITFE__isITFEValueCustom___block_invoke;
  v16[3] = &unk_1E73B7BB0;
  v6 = customCopy;
  v17 = v6;
  v7 = [_concreteITFEs ams_firstObjectPassingTest:v16];

  _customITFEs = [self _customITFEs];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __41__AMSFeatureFlagITFE__isITFEValueCustom___block_invoke_2;
  v14[3] = &unk_1E73B7BB0;
  v15 = v6;
  v9 = v6;
  v10 = [_customITFEs ams_firstObjectPassingTest:v14];

  if (v7)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = !v11;

  return v12;
}

uint64_t __41__AMSFeatureFlagITFE__isITFEValueCustom___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 value];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __41__AMSFeatureFlagITFE__isITFEValueCustom___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 value];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (unint64_t)hash
{
  value = [(AMSFeatureFlagITFE *)self value];
  v3 = [value hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      value = [(AMSFeatureFlagITFE *)self value];
      value2 = [(AMSFeatureFlagITFE *)equalCopy value];
      v7 = [value isEqualToString:value2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end