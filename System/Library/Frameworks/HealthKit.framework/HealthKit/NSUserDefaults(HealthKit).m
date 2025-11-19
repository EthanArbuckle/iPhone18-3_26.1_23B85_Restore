@interface NSUserDefaults(HealthKit)
+ (void)hk_deleteDomainsNamed:()HealthKit;
- (id)hk_dateForKey:()HealthKit;
- (uint64_t)hk_BOOLForKey:()HealthKit defaultValue:;
- (uint64_t)hk_hasCompletedThirdPartyAuthSyncWithBooleanValue;
- (uint64_t)hk_keyExists:()HealthKit;
- (void)hk_removeObjectsForKeysWithPrefix:()HealthKit;
- (void)hk_setHasCompletedThirdPartyAuthSyncWithBooleanValue:()HealthKit;
@end

@implementation NSUserDefaults(HealthKit)

- (uint64_t)hk_keyExists:()HealthKit
{
  v4 = a3;
  v5 = [a1 dictionaryRepresentation];
  v6 = [v5 allKeys];
  v7 = [v6 containsObject:v4];

  return v7;
}

- (void)hk_removeObjectsForKeysWithPrefix:()HealthKit
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 dictionaryRepresentation];
  v6 = [v5 copy];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 hasPrefix:{v4, v14}])
        {
          [a1 removeObjectForKey:v12];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (uint64_t)hk_BOOLForKey:()HealthKit defaultValue:
{
  v5 = [a1 objectForKey:?];
  v6 = v5;
  if (v5)
  {
    a4 = [v5 BOOLValue];
  }

  return a4;
}

- (id)hk_dateForKey:()HealthKit
{
  v4 = a3;
  v5 = [a1 objectForKey:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = HKSafeObject(v5, v6, v4, 0);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)hk_deleteDomainsNamed:()HealthKit
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:v8];
        [v9 removePersistentDomainForName:v8];
        _HKInitializeLogging();
        v10 = HKLogDefault;
        if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v17 = v8;
          _os_log_impl(&dword_19197B000, v10, OS_LOG_TYPE_DEFAULT, "Deleted user defaults domain: %{public}@", buf, 0xCu);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)hk_setHasCompletedThirdPartyAuthSyncWithBooleanValue:()HealthKit
{
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:a3 forKey:@"CompletedThirdPartyAuthSync"];
}

- (uint64_t)hk_hasCompletedThirdPartyAuthSyncWithBooleanValue
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"CompletedThirdPartyAuthSync"];

  return v1;
}

@end