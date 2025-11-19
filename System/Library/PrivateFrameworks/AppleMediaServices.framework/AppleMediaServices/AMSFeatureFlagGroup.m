@interface AMSFeatureFlagGroup
+ (BOOL)setFlagGroupWithName:(id)a3 enabled:(BOOL)a4 error:(id *)a5;
+ (id)_normalizedFlagGroupsFromFlagGroups:(id)a3;
+ (id)allFlagGroupsIncludingHidden:(BOOL)a3 searchDirectory:(id)a4;
+ (id)flagGroupWithName:(id)a3 includingHidden:(BOOL)a4;
+ (id)groupsFromDomainData:(id)a3 domain:(id)a4;
+ (id)groupsFromDomainData:(id)a3 domain:(id)a4 mutableFeatures:(id)a5 profileFeatures:(id)a6 includesHidden:(BOOL)a7;
+ (void)resetAllFlagGroups;
- (AMSFeatureFlagGroup)initWithName:(id)a3;
- (BOOL)isDevelopmentPhaseEnabled:(int64_t)a3;
- (BOOL)isGroupTypeEnabled:(int64_t)a3;
- (id)_completedFlags;
- (id)_developmentFlags;
- (id)_groupKeyForDevelopmentPhase:(int64_t)a3;
- (id)_groupKeyForType:(int64_t)a3;
- (id)_testableFlags;
- (id)activateFlagsIfNeededForDevelopmentPhase:(int64_t)a3;
- (id)activateFlagsIfNeededForType:(int64_t)a3;
- (id)allITFEs;
- (id)fetchAllGroupKeys;
- (id)flagsForDevelopmentPhase:(int64_t)a3;
- (id)flagsForType:(int64_t)a3;
- (void)activateITFEs;
- (void)appendFlag:(id)a3;
- (void)reset;
- (void)setFlagsForDevelopmentPhase:(int64_t)a3 enabled:(BOOL)a4;
- (void)setGroupType:(int64_t)a3 enabled:(BOOL)a4;
@end

@implementation AMSFeatureFlagGroup

- (AMSFeatureFlagGroup)initWithName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AMSFeatureFlagGroup;
  v5 = [(AMSFeatureFlagGroup *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(AMSFeatureFlagGroup *)v5 setName:v4];
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(AMSFeatureFlagGroup *)v6 setMutableFlags:v7];
  }

  return v6;
}

- (void)appendFlag:(id)a3
{
  v4 = a3;
  v5 = [(AMSFeatureFlagGroup *)self mutableFlags];
  [v5 addObject:v4];
}

- (void)reset
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = [(AMSFeatureFlagGroup *)self flags];
  v5 = [v4 valueForKey:@"domain"];
  v6 = [v3 setWithArray:v5];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        v13 = [MEMORY[0x1E699C0A8] shared];
        [v13 resetDomain:v12 error:0];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v9);
  }

  v14 = [MEMORY[0x1E699C0A8] shared];
  [v14 commitUpdates:0];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = [(AMSFeatureFlagGroup *)self flags];
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v20 + 1) + 8 * v19++) _updateInternalEnabledState];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v17);
  }
}

- (id)fetchAllGroupKeys
{
  CFPreferencesAppSynchronize(@"com.apple.storeservices.itfe");
  v2 = CFPreferencesCopyAppValue(@"groupsEnabled", @"com.apple.storeservices.itfe");
  if (!v2 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v3 = objc_opt_new();

    v2 = v3;
  }

  return v2;
}

- (void)activateITFEs
{
  v2 = [(AMSFeatureFlagGroup *)self flags];
  [v2 makeObjectsPerformSelector:sel_activateITFEs];
}

- (id)allITFEs
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(AMSFeatureFlagGroup *)self flags];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) itfes];
        [v3 addObjectsFromArray:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

+ (id)allFlagGroupsIncludingHidden:(BOOL)a3 searchDirectory:(id)a4
{
  v32 = a3;
  v51 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = @"/System/Library/FeatureFlags/Domain";
  v29 = v4;
  if (v4)
  {
    v5 = v4;
  }

  v6 = v5;
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v36 = v6;
  v8 = [v7 contentsOfDirectoryAtPath:v6 error:0];

  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v34 = +[AMSFeatureFlagITFE fetchMutableFeatures];
  v33 = +[AMSFeatureFlagITFE fetchProfileFeatures];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v8;
  v37 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v37)
  {
    v31 = *v46;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v46 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v45 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        v12 = [v11 stringByDeletingPathExtension];
        v13 = MEMORY[0x1E695DF20];
        v14 = [(__CFString *)v36 stringByAppendingPathComponent:v11];
        v15 = [v13 dictionaryWithContentsOfFile:v14];

        v38 = v15;
        v39 = v12;
        v16 = [a1 groupsFromDomainData:v15 domain:v12 mutableFeatures:v34 profileFeatures:v33 includesHidden:v32];
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v17 = [v16 countByEnumeratingWithState:&v41 objects:v49 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v42;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v42 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v41 + 1) + 8 * j);
              v22 = [v16 objectForKeyedSubscript:v21];
              v23 = [v9 objectForKeyedSubscript:v21];
              v24 = v23;
              if (v23)
              {
                v25 = [v23 mutableFlags];
                v26 = [v22 mutableFlags];
                [v25 addObjectsFromArray:v26];
              }

              else
              {
                [v9 setObject:v22 forKeyedSubscript:v21];
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v41 objects:v49 count:16];
          }

          while (v18);
        }

        objc_autoreleasePoolPop(context);
      }

      v37 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v37);
  }

  v27 = [a1 _normalizedFlagGroupsFromFlagGroups:v9];

  return v27;
}

+ (id)groupsFromDomainData:(id)a3 domain:(id)a4 mutableFeatures:(id)a5 profileFeatures:(id)a6 includesHidden:(BOOL)a7
{
  v41 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v34 = a4;
  v33 = a5;
  v32 = a6;
  v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v37;
    v15 = 0x1E695D000uLL;
    v30 = *v37;
    v16 = @"AMPFlagGroup";
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v36 + 1) + 8 * i);
        v19 = [v11 objectForKeyedSubscript:v18];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = [v19 objectForKeyedSubscript:v16];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v34 isEqualToString:@"AMPFlagRemote"];
            v21 = [objc_alloc(objc_opt_class()) initWithFlagData:v19 mutableFeatures:v33 profileFeatures:v32 feature:v18 domain:v34];
            v22 = v21;
            if (a7 || ([v21 isHidden] & 1) == 0)
            {
              v23 = v15;
              v24 = v16;
              v25 = [v35 objectForKeyedSubscript:v20];
              v26 = v25;
              if (v25)
              {
                v27 = v25;
              }

              else
              {
                v27 = [[AMSFeatureFlagGroup alloc] initWithName:v20];
              }

              v28 = v27;

              [(AMSFeatureFlagGroup *)v28 appendFlag:v22];
              [v35 setObject:v28 forKeyedSubscript:v20];

              v16 = v24;
              v15 = v23;
              v14 = v30;
            }
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v13);
  }

  return v35;
}

+ (id)groupsFromDomainData:(id)a3 domain:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[AMSFeatureFlagITFE fetchMutableFeatures];
  v9 = +[AMSFeatureFlagITFE fetchProfileFeatures];
  v10 = [AMSFeatureFlagGroup groupsFromDomainData:v7 domain:v6 mutableFeatures:v8 profileFeatures:v9 includesHidden:1];

  v11 = [a1 _normalizedFlagGroupsFromFlagGroups:v10];

  return v11;
}

+ (id)flagGroupWithName:(id)a3 includingHidden:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [a1 allFlagGroupsIncludingHidden:v4];
  v8 = [v7 objectForKeyedSubscript:v6];

  return v8;
}

- (id)flagsForDevelopmentPhase:(int64_t)a3
{
  v4 = [(AMSFeatureFlagGroup *)self flags];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__AMSFeatureFlagGroup_flagsForDevelopmentPhase___block_invoke;
  v7[3] = &__block_descriptor_40_e24_B16__0__AMSFeatureFlag_8l;
  v7[4] = a3;
  v5 = [v4 ams_filterUsingTest:v7];

  return v5;
}

+ (BOOL)setFlagGroupWithName:(id)a3 enabled:(BOOL)a4 error:(id *)a5
{
  v5 = a4;
  v18 = *MEMORY[0x1E69E9840];
  v6 = [a1 flagGroupWithName:a3 includingHidden:{1, a5}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 flags];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * v11++) setUserEnabled:v5];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  return 1;
}

+ (void)resetAllFlagGroups
{
  v2 = [a1 allFlagGroups];
  v3 = [v2 allValues];

  [v3 enumerateObjectsUsingBlock:&__block_literal_global_59];
}

+ (id)_normalizedFlagGroupsFromFlagGroups:(id)a3
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v40 = [v3 mutableCopy];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v50;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v50 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v49 + 1) + 8 * i);
        v11 = [v10 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F071BA78];
        v12 = [v4 objectForKeyedSubscript:v11];
        v13 = v12;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        v15 = v14;

        [v15 addObject:v10];
        [v4 setObject:v15 forKeyedSubscript:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v7);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v16 = v4;
  v17 = [v16 countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v46;
    v35 = *v46;
    v36 = v16;
    do
    {
      v20 = 0;
      v37 = v18;
      do
      {
        if (*v46 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v45 + 1) + 8 * v20);
        v22 = [v16 objectForKeyedSubscript:{v21, v35, v36}];
        v23 = [v22 count];

        if (v23 >= 2)
        {
          v39 = v20;
          v24 = [[AMSFeatureFlagGroup alloc] initWithName:v21];
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v38 = v21;
          v25 = [v16 objectForKeyedSubscript:v21];
          v26 = [v25 countByEnumeratingWithState:&v41 objects:v53 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v42;
            do
            {
              for (j = 0; j != v27; ++j)
              {
                if (*v42 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                v30 = *(*(&v41 + 1) + 8 * j);
                v31 = [v5 objectForKeyedSubscript:v30];
                v32 = [(AMSFeatureFlagGroup *)v24 mutableFlags];
                v33 = [v31 mutableFlags];
                [v32 addObjectsFromArray:v33];

                [v40 removeObjectForKey:v30];
              }

              v27 = [v25 countByEnumeratingWithState:&v41 objects:v53 count:16];
            }

            while (v27);
          }

          [v40 setObject:v24 forKeyedSubscript:v38];
          v19 = v35;
          v16 = v36;
          v18 = v37;
          v20 = v39;
        }

        ++v20;
      }

      while (v20 != v18);
      v18 = [v16 countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v18);
  }

  return v40;
}

- (id)activateFlagsIfNeededForDevelopmentPhase:(int64_t)a3
{
  v30 = *MEMORY[0x1E69E9840];
  if ([(AMSFeatureFlagGroup *)self isDevelopmentPhaseEnabled:?])
  {
    v5 = +[AMSLogConfig sharedConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = AMSSetLogKeyIfNeeded();
      v9 = [(AMSFeatureFlagGroup *)self name];
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", a3];
      *buf = 138544130;
      v23 = v7;
      v24 = 2114;
      v25 = v8;
      v26 = 2114;
      v27 = v9;
      v28 = 2114;
      v29 = v10;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Feature Flag Group automatically toggling flags for %{public}@ of type: %{public}@", buf, 0x2Au);
    }

    v11 = [(AMSFeatureFlagGroup *)self flagsForDevelopmentPhase:a3];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v17 + 1) + 8 * i) setUserEnabled:1];
        }

        v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setFlagsForDevelopmentPhase:(int64_t)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v7 = [(AMSFeatureFlagGroup *)self fetchAllGroupKeys];
  value = [v7 mutableCopy];

  v8 = [(AMSFeatureFlagGroup *)self _groupKeyForDevelopmentPhase:a3];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  [value setObject:v9 forKeyedSubscript:v8];

  CFPreferencesSetAppValue(@"groupsEnabled", value, @"com.apple.storeservices.itfe");
  CFPreferencesAppSynchronize(@"com.apple.storeservices.itfe");
}

- (BOOL)isDevelopmentPhaseEnabled:(int64_t)a3
{
  v5 = [(AMSFeatureFlagGroup *)self fetchAllGroupKeys];
  v6 = [v5 mutableCopy];

  v7 = [(AMSFeatureFlagGroup *)self _groupKeyForDevelopmentPhase:a3];
  v8 = [v6 objectForKeyedSubscript:v7];
  LOBYTE(v5) = [v8 BOOLValue];

  return v5;
}

- (id)_groupKeyForDevelopmentPhase:(int64_t)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(AMSFeatureFlagGroup *)self name];
  v6 = [v4 stringWithFormat:@"%@-%ld", v5, a3];

  return v6;
}

- (void)setGroupType:(int64_t)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v7 = [(AMSFeatureFlagGroup *)self fetchAllGroupKeys];
  value = [v7 mutableCopy];

  v8 = [(AMSFeatureFlagGroup *)self _groupKeyForType:a3];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  [value setObject:v9 forKeyedSubscript:v8];

  CFPreferencesSetAppValue(@"groupsEnabled", value, @"com.apple.storeservices.itfe");
  CFPreferencesAppSynchronize(@"com.apple.storeservices.itfe");
}

- (BOOL)isGroupTypeEnabled:(int64_t)a3
{
  v5 = [(AMSFeatureFlagGroup *)self fetchAllGroupKeys];
  v6 = [v5 mutableCopy];

  v7 = [(AMSFeatureFlagGroup *)self _groupKeyForType:a3];
  v8 = [v6 objectForKeyedSubscript:v7];
  LOBYTE(v5) = [v8 BOOLValue];

  return v5;
}

- (id)_groupKeyForType:(int64_t)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(AMSFeatureFlagGroup *)self name];
  v6 = [v4 stringWithFormat:@"%@-%ld", v5, a3];

  return v6;
}

- (id)activateFlagsIfNeededForType:(int64_t)a3
{
  v30 = *MEMORY[0x1E69E9840];
  if ([(AMSFeatureFlagGroup *)self isGroupTypeEnabled:?])
  {
    v5 = +[AMSLogConfig sharedConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = AMSSetLogKeyIfNeeded();
      v9 = [(AMSFeatureFlagGroup *)self name];
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", a3];
      *buf = 138544130;
      v23 = v7;
      v24 = 2114;
      v25 = v8;
      v26 = 2114;
      v27 = v9;
      v28 = 2114;
      v29 = v10;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Feature Flag Group automatically toggling flags for %{public}@ of type: %{public}@", buf, 0x2Au);
    }

    v11 = [(AMSFeatureFlagGroup *)self flagsForType:a3];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v17 + 1) + 8 * i) setUserEnabled:1];
        }

        v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)flagsForType:(int64_t)a3
{
  if (a3 == 2)
  {
    v3 = [(AMSFeatureFlagGroup *)self _completedFlags];
  }

  else if (a3 == 1)
  {
    v3 = [(AMSFeatureFlagGroup *)self _developmentFlags];
  }

  else if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(AMSFeatureFlagGroup *)self _testableFlags];
  }

  return v3;
}

- (id)_testableFlags
{
  v2 = [(AMSFeatureFlagGroup *)self flags];
  v3 = [v2 ams_filterUsingTest:&__block_literal_global_119];

  return v3;
}

- (id)_developmentFlags
{
  v2 = [(AMSFeatureFlagGroup *)self flags];
  v3 = [v2 ams_filterUsingTest:&__block_literal_global_121];

  return v3;
}

- (id)_completedFlags
{
  v2 = [(AMSFeatureFlagGroup *)self flags];
  v3 = [v2 ams_filterUsingTest:&__block_literal_global_123_0];

  return v3;
}

@end