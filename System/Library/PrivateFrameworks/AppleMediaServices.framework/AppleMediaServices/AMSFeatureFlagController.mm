@interface AMSFeatureFlagController
+ (BOOL)toggleFlags:(id)flags enabled:(BOOL)enabled;
+ (void)verifyFlags;
@end

@implementation AMSFeatureFlagController

+ (void)verifyFlags
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = AMSSetLogKeyIfNeeded();
  v3 = +[AMSLogConfig sharedConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v22 = objc_opt_class();
    v23 = 2114;
    v24 = v2;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting to verify feature flags", buf, 0x16u);
  }

  v5 = +[AMSFeatureFlagGroup allFlagGroups];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allValues = [v5 allValues];
  v7 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 activateFlagsIfNeededForDevelopmentPhase:3];
        [v11 activateITFEs];
      }

      v8 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  +[AMSFeatureFlagITFE verifyOrphans];
  v13 = +[AMSLogConfig sharedConfig];
  if (!v13)
  {
    v13 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v13 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    *buf = 138543618;
    v22 = v15;
    v23 = 2114;
    v24 = v2;
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Finished verifying feature flags", buf, 0x16u);
  }
}

+ (BOOL)toggleFlags:(id)flags enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v16 = *MEMORY[0x1E69E9840];
  flagsCopy = flags;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [flagsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(flagsCopy);
        }

        [*(*(&v11 + 1) + 8 * v9++) setUserEnabled:enabledCopy];
      }

      while (v7 != v9);
      v7 = [flagsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return 1;
}

@end