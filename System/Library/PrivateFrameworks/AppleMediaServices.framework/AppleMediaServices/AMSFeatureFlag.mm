@interface AMSFeatureFlag
+ (BOOL)disableFlagForFeature:(id)feature domain:(id)domain error:(id *)error;
+ (BOOL)enableFlagForFeature:(id)feature domain:(id)domain error:(id *)error;
+ (id)allFlagGroups;
+ (id)flagForFeature:(id)feature domain:(id)domain searchDirectory:(id)directory;
+ (id)flagGroupWithName:(id)name;
- (AMSFeatureFlag)initWithFlagData:(id)data mutableFeatures:(id)features profileFeatures:(id)profileFeatures feature:(id)feature domain:(id)domain;
- (BOOL)hasITFEWithName:(id)name;
- (BOOL)hasITFEs;
- (BOOL)isTestable;
- (NSString)ITFE;
- (id)itfesFromString:(id)string mutableFeatures:(id)features profileFeatures:(id)profileFeatures;
- (int64_t)_developmentPhaseFromGroupType:(int64_t)type;
- (int64_t)groupType;
- (void)_activateFlag;
- (void)_disableITFEs;
- (void)_enableITFEs;
- (void)_updateDevelopmentPhase;
- (void)_updateInternalEnabledState;
- (void)activateITFEs;
- (void)setITFE:(id)e;
- (void)setUserEnabled:(BOOL)enabled;
@end

@implementation AMSFeatureFlag

- (void)_updateInternalEnabledState
{
  mEMORY[0x1E699C0A8] = [MEMORY[0x1E699C0A8] shared];
  feature = [(AMSFeatureFlag *)self feature];
  domain = [(AMSFeatureFlag *)self domain];
  v14 = [mEMORY[0x1E699C0A8] ams_faultLoggingStateForFeature:feature domain:domain];

  mEMORY[0x1E699C0A8]2 = [MEMORY[0x1E699C0A8] shared];
  feature2 = [(AMSFeatureFlag *)self feature];
  domain2 = [(AMSFeatureFlag *)self domain];
  v9 = [mEMORY[0x1E699C0A8]2 ams_faultLoggingStateForFeature:feature2 domain:domain2 level:0];

  mEMORY[0x1E699C0A8]3 = [MEMORY[0x1E699C0A8] shared];
  feature3 = [(AMSFeatureFlag *)self feature];
  domain3 = [(AMSFeatureFlag *)self domain];
  v13 = [mEMORY[0x1E699C0A8]3 ams_faultLoggingStateForFeature:feature3 domain:domain3 level:3];

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
  mEMORY[0x1E699C0A8] = [MEMORY[0x1E699C0A8] shared];
  feature = [(AMSFeatureFlag *)self feature];
  domain = [(AMSFeatureFlag *)self domain];
  v9 = [mEMORY[0x1E699C0A8] ams_faultLoggingStateForFeature:feature domain:domain];

  attributes = [v9 attributes];
  v11 = [attributes objectForKeyedSubscript:@"DevelopmentPhase"];

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
  isTestable = [(AMSFeatureFlag *)self isTestable];
  if ([(AMSFeatureFlag *)self isDefaultEnabled])
  {
    return 2;
  }

  else
  {
    return !isTestable;
  }
}

- (BOOL)isTestable
{
  flagData = [(AMSFeatureFlag *)self flagData];
  v4 = [flagData objectForKeyedSubscript:@"AMPTestable"];

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
  itfes = [(AMSFeatureFlag *)self itfes];
  v3 = [itfes countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(itfes);
        }

        [*(*(&v7 + 1) + 8 * v6++) toggle:1];
      }

      while (v4 != v6);
      v4 = [itfes countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  itfes = [(AMSFeatureFlag *)self itfes];
  v3 = [itfes count] != 0;

  return v3;
}

- (AMSFeatureFlag)initWithFlagData:(id)data mutableFeatures:(id)features profileFeatures:(id)profileFeatures feature:(id)feature domain:(id)domain
{
  dataCopy = data;
  featuresCopy = features;
  profileFeaturesCopy = profileFeatures;
  featureCopy = feature;
  domainCopy = domain;
  v31.receiver = self;
  v31.super_class = AMSFeatureFlag;
  v17 = [(AMSFeatureFlag *)&v31 init];
  v18 = v17;
  if (v17)
  {
    [(AMSFeatureFlag *)v17 setFeature:featureCopy];
    [(AMSFeatureFlag *)v18 setDomain:domainCopy];
    [(AMSFeatureFlag *)v18 setFlagData:dataCopy];
    v19 = [dataCopy objectForKeyedSubscript:@"Hidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[AMSFeatureFlag setHidden:](v18, "setHidden:", [v19 BOOLValue]);
    }

    v28 = v19;
    v20 = [dataCopy objectForKeyedSubscript:@"AMPITFE"];
    objc_opt_class();
    v30 = featuresCopy;
    if (objc_opt_isKindOfClass())
    {
      [(AMSFeatureFlag *)v18 itfesFromString:v20 mutableFeatures:featuresCopy profileFeatures:profileFeaturesCopy];
    }

    else
    {
      [MEMORY[0x1E695DEC8] array];
    }
    v21 = ;
    v29 = profileFeaturesCopy;
    [(AMSFeatureFlag *)v18 setItfes:v21];

    v22 = [dataCopy objectForKeyedSubscript:@"AMPAssociatedGroup"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(AMSFeatureFlag *)v18 setAssociatedGroup:v22];
    }

    v23 = [dataCopy objectForKeyedSubscript:@"DisplayName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(AMSFeatureFlag *)v18 setDisplayName:v23];
    }

    v24 = featureCopy;
    v25 = [dataCopy objectForKeyedSubscript:@"Description"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(AMSFeatureFlag *)v18 setFeatureDescription:v25];
    }

    v26 = [dataCopy objectForKeyedSubscript:@"AMPFlagGroup"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(AMSFeatureFlag *)v18 setFlagGroup:v26];
    }

    [(AMSFeatureFlag *)v18 _updateInternalEnabledState];
    [(AMSFeatureFlag *)v18 _updateDevelopmentPhase];

    profileFeaturesCopy = v29;
    featuresCopy = v30;
    featureCopy = v24;
  }

  return v18;
}

+ (id)flagForFeature:(id)feature domain:(id)domain searchDirectory:(id)directory
{
  v39 = *MEMORY[0x1E69E9840];
  featureCopy = feature;
  domainCopy = domain;
  [AMSFeatureFlagGroup allFlagGroupsIncludingHidden:1 searchDirectory:directory];
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
        flags = [v12 flags];

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v14 = flags;
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
              feature = [v19 feature];
              if ([feature isEqualToString:featureCopy])
              {
                domain = [v19 domain];
                v22 = [domain isEqualToString:domainCopy];

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

+ (BOOL)enableFlagForFeature:(id)feature domain:(id)domain error:(id *)error
{
  featureCopy = feature;
  domainCopy = domain;
  v10 = [self flagForFeature:featureCopy domain:domainCopy];
  v16 = v10;
  if (error)
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
    *error = AMSErrorWithFormat(7, @"Feature Flag Doesn't Exist", @"Feature: %@, Domain: %@", v11, v12, v13, v14, v15, featureCopy);
  }

  else
  {
    [v10 setUserEnabled:1];
  }

  return v18;
}

+ (BOOL)disableFlagForFeature:(id)feature domain:(id)domain error:(id *)error
{
  featureCopy = feature;
  domainCopy = domain;
  v10 = [self flagForFeature:featureCopy domain:domainCopy];
  v16 = v10;
  if (error)
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
    *error = AMSErrorWithFormat(7, @"Feature Flag Doesn't Exist", @"Feature: %@, Domain: %@", v11, v12, v13, v14, v15, featureCopy);
  }

  else
  {
    [v10 setUserEnabled:0];
  }

  return v18;
}

- (void)setUserEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  obj = self;
  objc_sync_enter(obj);
  [(AMSFeatureFlag *)obj _updateUserEnabled:enabledCopy];
  [(AMSFeatureFlag *)obj _activateFlag];
  [(AMSFeatureFlag *)obj _updateInternalEnabledState];
  [(AMSFeatureFlag *)obj activateITFEs];
  objc_sync_exit(obj);
}

- (void)_activateFlag
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = AMSSetLogKeyIfNeeded();
  mEMORY[0x1E699C0A8] = [MEMORY[0x1E699C0A8] shared];
  feature = [(AMSFeatureFlag *)self feature];
  domain = [(AMSFeatureFlag *)self domain];
  v7 = [mEMORY[0x1E699C0A8] ams_faultLoggingStateForFeature:feature domain:domain level:3];

  if (self->_userEnabled)
  {
    if (v7 && [v7 value] == 1)
    {
      v8 = +[AMSLogConfig sharedConfig];
      if (!v8)
      {
        v8 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v8 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      v10 = objc_opt_class();
      domain2 = [(AMSFeatureFlag *)self domain];
      feature2 = [(AMSFeatureFlag *)self feature];
      *buf = 138544130;
      v35 = v10;
      v36 = 2114;
      v37 = v3;
      v38 = 2114;
      v39 = domain2;
      v40 = 2114;
      v41 = feature2;
      v13 = "%{public}@: [%{public}@] Skipping Feature Flag Enable Toggle as it is already enabled: %{public}@/%{public}@";
LABEL_29:
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, v13, buf, 0x2Au);

LABEL_30:
      goto LABEL_31;
    }

    mEMORY[0x1E699C0A8]2 = [MEMORY[0x1E699C0A8] shared];
    feature3 = [(AMSFeatureFlag *)self feature];
    domain3 = [(AMSFeatureFlag *)self domain];
    [mEMORY[0x1E699C0A8]2 enableFeature:feature3 domain:domain3 level:3];

    v17 = +[AMSLogConfig sharedConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v17 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v26 = objc_opt_class();
      domain4 = [(AMSFeatureFlag *)self domain];
      feature4 = [(AMSFeatureFlag *)self feature];
      *buf = 138544130;
      v35 = v26;
      v36 = 2114;
      v37 = v3;
      v38 = 2114;
      v39 = domain4;
      v40 = 2114;
      v41 = feature4;
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

      oSLogObject = [v8 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      v32 = objc_opt_class();
      domain2 = [(AMSFeatureFlag *)self domain];
      feature2 = [(AMSFeatureFlag *)self feature];
      *buf = 138544130;
      v35 = v32;
      v36 = 2114;
      v37 = v3;
      v38 = 2114;
      v39 = domain2;
      v40 = 2114;
      v41 = feature2;
      v13 = "%{public}@: [%{public}@] Skipping Feature Flag Disable Toggle as it is already disabled: %{public}@/%{public}@";
      goto LABEL_29;
    }

    mEMORY[0x1E699C0A8]3 = [MEMORY[0x1E699C0A8] shared];
    feature5 = [(AMSFeatureFlag *)self feature];
    domain5 = [(AMSFeatureFlag *)self domain];
    [mEMORY[0x1E699C0A8]3 disableFeature:feature5 domain:domain5 level:3];

    v17 = +[AMSLogConfig sharedConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v17 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      domain4 = [(AMSFeatureFlag *)self domain];
      feature4 = [(AMSFeatureFlag *)self feature];
      *buf = 138544130;
      v35 = v19;
      v36 = 2114;
      v37 = v3;
      v38 = 2114;
      v39 = domain4;
      v40 = 2114;
      v41 = feature4;
      v22 = "%{public}@: [%{public}@] Feature Flag Disabled: %{public}@/%{public}@";
LABEL_18:
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, v22, buf, 0x2Au);
    }
  }

  mEMORY[0x1E699C0A8]4 = [MEMORY[0x1E699C0A8] shared];
  v33 = 0;
  [mEMORY[0x1E699C0A8]4 commitUpdates:&v33];
  v8 = v33;

  if (v8)
  {
    oSLogObject = +[AMSLogConfig sharedConfig];
    if (!oSLogObject)
    {
      oSLogObject = +[AMSLogConfig sharedConfig];
    }

    v9OSLogObject = [oSLogObject OSLogObject];
    if (os_log_type_enabled(v9OSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v29 = objc_opt_class();
      domain6 = [(AMSFeatureFlag *)self domain];
      feature6 = [(AMSFeatureFlag *)self feature];
      *buf = 138544386;
      v35 = v29;
      v36 = 2114;
      v37 = v3;
      v38 = 2114;
      v39 = domain6;
      v40 = 2114;
      v41 = feature6;
      v42 = 2114;
      v43 = v8;
      _os_log_impl(&dword_192869000, v9OSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Feature Flag error occurred for flag: %{public}@/%{public}@ %{public}@", buf, 0x34u);
    }

    goto LABEL_30;
  }

LABEL_31:
}

- (int64_t)_developmentPhaseFromGroupType:(int64_t)type
{
  if (type > 2)
  {
    return 0;
  }

  else
  {
    return qword_193016908[type];
  }
}

- (BOOL)hasITFEWithName:(id)name
{
  v17 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  itfes = [(AMSFeatureFlag *)self itfes];
  v6 = [itfes countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(itfes);
        }

        value = [*(*(&v12 + 1) + 8 * i) value];
        v10 = [value isEqualToString:nameCopy];

        if (v10)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [itfes countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  itfes = [(AMSFeatureFlag *)self itfes];
  v3 = [itfes countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(itfes);
        }

        [*(*(&v7 + 1) + 8 * v6++) toggle:0];
      }

      while (v4 != v6);
      v4 = [itfes countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)itfesFromString:(id)string mutableFeatures:(id)features profileFeatures:(id)profileFeatures
{
  v34 = *MEMORY[0x1E69E9840];
  featuresCopy = features;
  profileFeaturesCopy = profileFeatures;
  v8 = [string componentsSeparatedByString:{@", "}];
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
    v26 = profileFeaturesCopy;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        v16 = [profileFeaturesCopy objectForKey:v15];

        v17 = [profileFeaturesCopy objectForKeyedSubscript:v15];
        if ([v17 BOOLValue])
        {
          bOOLValue = 1;
        }

        else
        {
          [featuresCopy objectForKeyedSubscript:v15];
          v19 = v11;
          v20 = v12;
          v21 = v9;
          v23 = v22 = v13;
          bOOLValue = [v23 BOOLValue];

          v13 = v22;
          v9 = v21;
          v12 = v20;
          v11 = v19;
          profileFeaturesCopy = v26;
        }

        v24 = [objc_alloc(*(v13 + 3336)) initWithValue:v15 isEnabled:bOOLValue isMutable:v16 == 0];
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
  itfes = [(AMSFeatureFlag *)self itfes];
  v3 = [itfes ams_mapWithTransform:&__block_literal_global_58];
  v4 = [v3 componentsJoinedByString:{@", "}];

  return v4;
}

- (void)setITFE:(id)e
{
  eCopy = e;
  v7 = +[AMSFeatureFlagITFE fetchMutableFeatures];
  v5 = +[AMSFeatureFlagITFE fetchProfileFeatures];
  v6 = [(AMSFeatureFlag *)self itfesFromString:eCopy mutableFeatures:v7 profileFeatures:v5];

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

+ (id)flagGroupWithName:(id)name
{
  v3 = [AMSFeatureFlagGroup fetchFlagGroupWithName:name];
  flags = [v3 flags];

  return flags;
}

@end