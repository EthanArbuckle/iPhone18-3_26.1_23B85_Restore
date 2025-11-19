@interface AMSFeatureFlag
+ (BOOL)disableFlagForFeature:(id)a3 domain:(id)a4 error:(id *)a5;
+ (BOOL)enableFlagForFeature:(id)a3 domain:(id)a4 error:(id *)a5;
+ (id)allFlagGroups;
+ (id)flagForFeature:(id)a3 domain:(id)a4 searchDirectory:(id)a5;
+ (id)flagGroupWithName:(id)a3;
- (AMSFeatureFlag)initWithFlagData:(id)a3 mutableFeatures:(id)a4 profileFeatures:(id)a5 feature:(id)a6 domain:(id)a7;
- (BOOL)hasITFEWithName:(id)a3;
- (BOOL)hasITFEs;
- (BOOL)isTestable;
- (NSString)ITFE;
- (id)itfesFromString:(id)a3 mutableFeatures:(id)a4 profileFeatures:(id)a5;
- (int64_t)_developmentPhaseFromGroupType:(int64_t)a3;
- (int64_t)groupType;
- (void)_activateFlag;
- (void)_disableITFEs;
- (void)_enableITFEs;
- (void)_updateDevelopmentPhase;
- (void)_updateInternalEnabledState;
- (void)activateITFEs;
- (void)setITFE:(id)a3;
- (void)setUserEnabled:(BOOL)a3;
@end

@implementation AMSFeatureFlag

- (void)_updateInternalEnabledState
{
  v3 = [MEMORY[0x1E699C0A8] shared];
  v4 = [(AMSFeatureFlag *)self feature];
  v5 = [(AMSFeatureFlag *)self domain];
  v14 = [v3 ams_faultLoggingStateForFeature:v4 domain:v5];

  v6 = [MEMORY[0x1E699C0A8] shared];
  v7 = [(AMSFeatureFlag *)self feature];
  v8 = [(AMSFeatureFlag *)self domain];
  v9 = [v6 ams_faultLoggingStateForFeature:v7 domain:v8 level:0];

  v10 = [MEMORY[0x1E699C0A8] shared];
  v11 = [(AMSFeatureFlag *)self feature];
  v12 = [(AMSFeatureFlag *)self domain];
  v13 = [v10 ams_faultLoggingStateForFeature:v11 domain:v12 level:3];

  -[AMSFeatureFlag setEnabled:](self, "setEnabled:", [v14 value] == 1);
  -[AMSFeatureFlag setDefaultEnabled:](self, "setDefaultEnabled:", [v9 value] == 1);
  -[AMSFeatureFlag _updateUserEnabled:](self, "_updateUserEnabled:", [v13 value] == 1);
}

- (void)_updateDevelopmentPhase
{
  v13 = [objc_alloc(MEMORY[0x1E699C0B8]) initWithName:@"UnderDevelopment" value:@"true"];
  v3 = [objc_alloc(MEMORY[0x1E699C0B8]) initWithName:@"CodeComplete" value:@"true"];
  v4 = [objc_alloc(MEMORY[0x1E699C0B8]) initWithName:@"PreviewReady" value:@"true"];
  v5 = [objc_alloc(MEMORY[0x1E699C0B8]) initWithName:@"FeatureComplete" value:@"true"];
  v6 = [MEMORY[0x1E699C0A8] shared];
  v7 = [(AMSFeatureFlag *)self feature];
  v8 = [(AMSFeatureFlag *)self domain];
  v9 = [v6 ams_faultLoggingStateForFeature:v7 domain:v8];

  v10 = [v9 attributes];
  v11 = [v10 objectForKeyedSubscript:@"DevelopmentPhase"];

  if ([v11 matchesAgainst:v13])
  {
    v12 = 1;
  }

  else if ([v11 matchesAgainst:v3])
  {
    v12 = 2;
  }

  else if ([v11 matchesAgainst:v4])
  {
    v12 = 3;
  }

  else if ([v11 matchesAgainst:v5])
  {
    v12 = 4;
  }

  else
  {
    v12 = [(AMSFeatureFlag *)self _developmentPhaseFromGroupType:[(AMSFeatureFlag *)self groupType]];
  }

  [(AMSFeatureFlag *)self setDevelopmentPhase:v12];
}

- (int64_t)groupType
{
  v3 = [(AMSFeatureFlag *)self isTestable];
  if ([(AMSFeatureFlag *)self isDefaultEnabled])
  {
    return 2;
  }

  else
  {
    return !v3;
  }
}

- (BOOL)isTestable
{
  v3 = [(AMSFeatureFlag *)self flagData];
  v4 = [v3 objectForKeyedSubscript:@"AMPTestable"];

  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && (([v4 BOOLValue] & 1) != 0 || -[AMSFeatureFlag developmentPhase](self, "developmentPhase") == 2);

  return v5;
}

- (void)_enableITFEs
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(AMSFeatureFlag *)self itfes];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) toggle:1];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)activateITFEs
{
  if ([(AMSFeatureFlag *)self hasITFEs])
  {
    if ([(AMSFeatureFlag *)self isEnabled])
    {

      [(AMSFeatureFlag *)self _enableITFEs];
    }

    else
    {

      [(AMSFeatureFlag *)self _disableITFEs];
    }
  }
}

- (BOOL)hasITFEs
{
  v2 = [(AMSFeatureFlag *)self itfes];
  v3 = [v2 count] != 0;

  return v3;
}

- (AMSFeatureFlag)initWithFlagData:(id)a3 mutableFeatures:(id)a4 profileFeatures:(id)a5 feature:(id)a6 domain:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v31.receiver = self;
  v31.super_class = AMSFeatureFlag;
  v17 = [(AMSFeatureFlag *)&v31 init];
  v18 = v17;
  if (v17)
  {
    [(AMSFeatureFlag *)v17 setFeature:v15];
    [(AMSFeatureFlag *)v18 setDomain:v16];
    [(AMSFeatureFlag *)v18 setFlagData:v12];
    v19 = [v12 objectForKeyedSubscript:@"Hidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[AMSFeatureFlag setHidden:](v18, "setHidden:", [v19 BOOLValue]);
    }

    v28 = v19;
    v20 = [v12 objectForKeyedSubscript:@"AMPITFE"];
    objc_opt_class();
    v30 = v13;
    if (objc_opt_isKindOfClass())
    {
      [(AMSFeatureFlag *)v18 itfesFromString:v20 mutableFeatures:v13 profileFeatures:v14];
    }

    else
    {
      [MEMORY[0x1E695DEC8] array];
    }
    v21 = ;
    v29 = v14;
    [(AMSFeatureFlag *)v18 setItfes:v21];

    v22 = [v12 objectForKeyedSubscript:@"AMPAssociatedGroup"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(AMSFeatureFlag *)v18 setAssociatedGroup:v22];
    }

    v23 = [v12 objectForKeyedSubscript:@"DisplayName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(AMSFeatureFlag *)v18 setDisplayName:v23];
    }

    v24 = v15;
    v25 = [v12 objectForKeyedSubscript:@"Description"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(AMSFeatureFlag *)v18 setFeatureDescription:v25];
    }

    v26 = [v12 objectForKeyedSubscript:@"AMPFlagGroup"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(AMSFeatureFlag *)v18 setFlagGroup:v26];
    }

    [(AMSFeatureFlag *)v18 _updateInternalEnabledState];
    [(AMSFeatureFlag *)v18 _updateDevelopmentPhase];

    v14 = v29;
    v13 = v30;
    v15 = v24;
  }

  return v18;
}

+ (id)flagForFeature:(id)a3 domain:(id)a4 searchDirectory:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  [AMSFeatureFlagGroup allFlagGroupsIncludingHidden:1 searchDirectory:a5];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = v36 = 0u;
  v26 = [v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v26)
  {
    v10 = *v34;
    v28 = v9;
    v25 = *v34;
    do
    {
      v11 = 0;
      do
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(v9);
        }

        v27 = v11;
        v12 = [v9 objectForKeyedSubscript:{*(*(&v33 + 1) + 8 * v11), v25}];
        v13 = [v12 flags];

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v14 = v13;
        v15 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v30;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v30 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v29 + 1) + 8 * i);
              v20 = [v19 feature];
              if ([v20 isEqualToString:v7])
              {
                v21 = [v19 domain];
                v22 = [v21 isEqualToString:v8];

                if (v22)
                {
                  v23 = v19;

                  v9 = v28;
                  goto LABEL_21;
                }
              }

              else
              {
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v16);
        }

        v11 = v27 + 1;
        v9 = v28;
        v10 = v25;
      }

      while (v27 + 1 != v26);
      v23 = 0;
      v26 = [v28 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v26);
  }

  else
  {
    v23 = 0;
  }

LABEL_21:

  return v23;
}

+ (BOOL)enableFlagForFeature:(id)a3 domain:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a1 flagForFeature:v8 domain:v9];
  v16 = v10;
  if (a5)
  {
    v17 = v10 == 0;
  }

  else
  {
    v17 = 0;
  }

  v18 = !v17;
  if (v17)
  {
    *a5 = AMSErrorWithFormat(7, @"Feature Flag Doesn't Exist", @"Feature: %@, Domain: %@", v11, v12, v13, v14, v15, v8);
  }

  else
  {
    [v10 setUserEnabled:1];
  }

  return v18;
}

+ (BOOL)disableFlagForFeature:(id)a3 domain:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a1 flagForFeature:v8 domain:v9];
  v16 = v10;
  if (a5)
  {
    v17 = v10 == 0;
  }

  else
  {
    v17 = 0;
  }

  v18 = !v17;
  if (v17)
  {
    *a5 = AMSErrorWithFormat(7, @"Feature Flag Doesn't Exist", @"Feature: %@, Domain: %@", v11, v12, v13, v14, v15, v8);
  }

  else
  {
    [v10 setUserEnabled:0];
  }

  return v18;
}

- (void)setUserEnabled:(BOOL)a3
{
  v3 = a3;
  obj = self;
  objc_sync_enter(obj);
  [(AMSFeatureFlag *)obj _updateUserEnabled:v3];
  [(AMSFeatureFlag *)obj _activateFlag];
  [(AMSFeatureFlag *)obj _updateInternalEnabledState];
  [(AMSFeatureFlag *)obj activateITFEs];
  objc_sync_exit(obj);
}

- (void)_activateFlag
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = AMSSetLogKeyIfNeeded();
  v4 = [MEMORY[0x1E699C0A8] shared];
  v5 = [(AMSFeatureFlag *)self feature];
  v6 = [(AMSFeatureFlag *)self domain];
  v7 = [v4 ams_faultLoggingStateForFeature:v5 domain:v6 level:3];

  if (self->_userEnabled)
  {
    if (v7 && [v7 value] == 1)
    {
      v8 = +[AMSLogConfig sharedConfig];
      if (!v8)
      {
        v8 = +[AMSLogConfig sharedConfig];
      }

      v9 = [v8 OSLogObject];
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      v10 = objc_opt_class();
      v11 = [(AMSFeatureFlag *)self domain];
      v12 = [(AMSFeatureFlag *)self feature];
      *buf = 138544130;
      v35 = v10;
      v36 = 2114;
      v37 = v3;
      v38 = 2114;
      v39 = v11;
      v40 = 2114;
      v41 = v12;
      v13 = "%{public}@: [%{public}@] Skipping Feature Flag Enable Toggle as it is already enabled: %{public}@/%{public}@";
LABEL_29:
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, v13, buf, 0x2Au);

LABEL_30:
      goto LABEL_31;
    }

    v23 = [MEMORY[0x1E699C0A8] shared];
    v24 = [(AMSFeatureFlag *)self feature];
    v25 = [(AMSFeatureFlag *)self domain];
    [v23 enableFeature:v24 domain:v25 level:3];

    v17 = +[AMSLogConfig sharedConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v26 = objc_opt_class();
      v20 = [(AMSFeatureFlag *)self domain];
      v21 = [(AMSFeatureFlag *)self feature];
      *buf = 138544130;
      v35 = v26;
      v36 = 2114;
      v37 = v3;
      v38 = 2114;
      v39 = v20;
      v40 = 2114;
      v41 = v21;
      v22 = "%{public}@: [%{public}@] Feature Flag Enabled: %{public}@/%{public}@";
      goto LABEL_18;
    }
  }

  else
  {
    if (v7 && ![v7 value])
    {
      v8 = +[AMSLogConfig sharedConfig];
      if (!v8)
      {
        v8 = +[AMSLogConfig sharedConfig];
      }

      v9 = [v8 OSLogObject];
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      v32 = objc_opt_class();
      v11 = [(AMSFeatureFlag *)self domain];
      v12 = [(AMSFeatureFlag *)self feature];
      *buf = 138544130;
      v35 = v32;
      v36 = 2114;
      v37 = v3;
      v38 = 2114;
      v39 = v11;
      v40 = 2114;
      v41 = v12;
      v13 = "%{public}@: [%{public}@] Skipping Feature Flag Disable Toggle as it is already disabled: %{public}@/%{public}@";
      goto LABEL_29;
    }

    v14 = [MEMORY[0x1E699C0A8] shared];
    v15 = [(AMSFeatureFlag *)self feature];
    v16 = [(AMSFeatureFlag *)self domain];
    [v14 disableFeature:v15 domain:v16 level:3];

    v17 = +[AMSLogConfig sharedConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v20 = [(AMSFeatureFlag *)self domain];
      v21 = [(AMSFeatureFlag *)self feature];
      *buf = 138544130;
      v35 = v19;
      v36 = 2114;
      v37 = v3;
      v38 = 2114;
      v39 = v20;
      v40 = 2114;
      v41 = v21;
      v22 = "%{public}@: [%{public}@] Feature Flag Disabled: %{public}@/%{public}@";
LABEL_18:
      _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_DEFAULT, v22, buf, 0x2Au);
    }
  }

  v27 = [MEMORY[0x1E699C0A8] shared];
  v33 = 0;
  [v27 commitUpdates:&v33];
  v8 = v33;

  if (v8)
  {
    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v28 = [v9 OSLogObject];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = objc_opt_class();
      v30 = [(AMSFeatureFlag *)self domain];
      v31 = [(AMSFeatureFlag *)self feature];
      *buf = 138544386;
      v35 = v29;
      v36 = 2114;
      v37 = v3;
      v38 = 2114;
      v39 = v30;
      v40 = 2114;
      v41 = v31;
      v42 = 2114;
      v43 = v8;
      _os_log_impl(&dword_192869000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Feature Flag error occurred for flag: %{public}@/%{public}@ %{public}@", buf, 0x34u);
    }

    goto LABEL_30;
  }

LABEL_31:
}

- (int64_t)_developmentPhaseFromGroupType:(int64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return qword_193016908[a3];
  }
}

- (BOOL)hasITFEWithName:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(AMSFeatureFlag *)self itfes];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) value];
        v10 = [v9 isEqualToString:v4];

        if (v10)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_disableITFEs
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(AMSFeatureFlag *)self itfes];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) toggle:0];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)itfesFromString:(id)a3 mutableFeatures:(id)a4 profileFeatures:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v27 = a4;
  v7 = a5;
  v8 = [a3 componentsSeparatedByString:{@", "}];
  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    v13 = 0x1E73B0000uLL;
    v26 = v7;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        v16 = [v7 objectForKey:v15];

        v17 = [v7 objectForKeyedSubscript:v15];
        if ([v17 BOOLValue])
        {
          v18 = 1;
        }

        else
        {
          [v27 objectForKeyedSubscript:v15];
          v19 = v11;
          v20 = v12;
          v21 = v9;
          v23 = v22 = v13;
          v18 = [v23 BOOLValue];

          v13 = v22;
          v9 = v21;
          v12 = v20;
          v11 = v19;
          v7 = v26;
        }

        v24 = [objc_alloc(*(v13 + 3336)) initWithValue:v15 isEnabled:v18 isMutable:v16 == 0];
        [v9 addObject:v24];
      }

      v11 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v11);
  }

  return v9;
}

- (NSString)ITFE
{
  v2 = [(AMSFeatureFlag *)self itfes];
  v3 = [v2 ams_mapWithTransform:&__block_literal_global_58];
  v4 = [v3 componentsJoinedByString:{@", "}];

  return v4;
}

- (void)setITFE:(id)a3
{
  v4 = a3;
  v7 = +[AMSFeatureFlagITFE fetchMutableFeatures];
  v5 = +[AMSFeatureFlagITFE fetchProfileFeatures];
  v6 = [(AMSFeatureFlag *)self itfesFromString:v4 mutableFeatures:v7 profileFeatures:v5];

  [(AMSFeatureFlag *)self setItfes:v6];
}

+ (id)allFlagGroups
{
  v2 = +[AMSFeatureFlagGroup allFlagGroups];
  v3 = [v2 ams_mapWithTransform:&__block_literal_global_161];

  return v3;
}

AMSPair *__62__AMSFeatureFlag_AppleMediaServices_Deprecated__allFlagGroups__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [AMSPair alloc];
  v7 = [v4 flags];

  v8 = [(AMSPair *)v6 initWithFirst:v5 second:v7];

  return v8;
}

+ (id)flagGroupWithName:(id)a3
{
  v3 = [AMSFeatureFlagGroup fetchFlagGroupWithName:a3];
  v4 = [v3 flags];

  return v4;
}

@end