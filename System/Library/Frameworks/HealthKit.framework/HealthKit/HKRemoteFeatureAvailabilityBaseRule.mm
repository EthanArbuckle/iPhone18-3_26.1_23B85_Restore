@interface HKRemoteFeatureAvailabilityBaseRule
+ (Class)ruleClassForRawValue:(id)value;
- (BOOL)evaluate;
- (HKRemoteFeatureAvailabilityBaseRule)initWithRawValue:(id)value dataSource:(id)source;
- (HKRemoteFeatureAvailabilityDataSource)dataSource;
- (void)processUserInfo:(id)info;
@end

@implementation HKRemoteFeatureAvailabilityBaseRule

+ (Class)ruleClassForRawValue:(id)value
{
  valueCopy = value;
  if (ruleClassForRawValue__onceToken != -1)
  {
    +[HKRemoteFeatureAvailabilityBaseRule ruleClassForRawValue:];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [valueCopy objectForKeyedSubscript:@"ruleIdentifier"];
    if (v4)
    {
      v5 = [ruleClassForRawValue__allRules objectForKeyedSubscript:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __60__HKRemoteFeatureAvailabilityBaseRule_ruleClassForRawValue___block_invoke()
{
  v29[25] = *MEMORY[0x1E69E9840];
  v27 = +[HKRemoteFeatureAvailabilityAlwaysFalseRule ruleIdentifier];
  v28[0] = v27;
  v29[0] = objc_opt_class();
  v26 = +[HKRemoteFeatureAvailabilityAlwaysTrueRule ruleIdentifier];
  v28[1] = v26;
  v29[1] = objc_opt_class();
  v25 = +[HKRemoteFeatureAvailabilityActiveWatchAtrialFibrillationDetectionVersionEqualsRule ruleIdentifier];
  v28[2] = v25;
  v29[2] = objc_opt_class();
  v24 = +[HKRemoteFeatureAvailabilityActiveWatchAtrialFibrillationDetectionVersionGreaterThanRule ruleIdentifier];
  v28[3] = v24;
  v29[3] = objc_opt_class();
  v23 = +[HKRemoteFeatureAvailabilityActiveWatchAtrialFibrillationDetectionVersionLessThanRule ruleIdentifier];
  v28[4] = v23;
  v29[4] = objc_opt_class();
  v22 = +[HKRemoteFeatureAvailabilityCompoundRule ruleIdentifier];
  v28[5] = v22;
  v29[5] = objc_opt_class();
  v21 = +[HKRemoteFeatureAvailabilityDeviceClassEqualsRule ruleIdentifier];
  v28[6] = v21;
  v29[6] = objc_opt_class();
  v20 = +[HKRemoteFeatureAvailabilityIOSBuildVersionEqualsRule ruleIdentifier];
  v28[7] = v20;
  v29[7] = objc_opt_class();
  v19 = +[HKRemoteFeatureAvailabilityIOSBuildVersionGreaterThanRule ruleIdentifier];
  v28[8] = v19;
  v29[8] = objc_opt_class();
  v18 = +[HKRemoteFeatureAvailabilityIOSBuildVersionLessThanRule ruleIdentifier];
  v28[9] = v18;
  v29[9] = objc_opt_class();
  v17 = +[HKRemoteFeatureAvailabilityIOSVersionEqualsRule ruleIdentifier];
  v28[10] = v17;
  v29[10] = objc_opt_class();
  v16 = +[HKRemoteFeatureAvailabilityIOSVersionGreaterThanRule ruleIdentifier];
  v28[11] = v16;
  v29[11] = objc_opt_class();
  v15 = +[HKRemoteFeatureAvailabilityIOSVersionLessThanRule ruleIdentifier];
  v28[12] = v15;
  v29[12] = objc_opt_class();
  v14 = +[HKRemoteFeatureAvailabilityOnboardingCountryCodeRule ruleIdentifier];
  v28[13] = v14;
  v29[13] = objc_opt_class();
  v13 = +[HKRemoteFeatureAvailabilityWatchBuildTypeEqualsRule ruleIdentifier];
  v28[14] = v13;
  v29[14] = objc_opt_class();
  v12 = +[HKRemoteFeatureAvailabilityWatchOSBuildVersionEqualsRule ruleIdentifier];
  v28[15] = v12;
  v29[15] = objc_opt_class();
  v0 = +[HKRemoteFeatureAvailabilityWatchOSBuildVersionGreaterThanRule ruleIdentifier];
  v28[16] = v0;
  v29[16] = objc_opt_class();
  v1 = +[HKRemoteFeatureAvailabilityWatchOSBuildVersionLessThanRule ruleIdentifier];
  v28[17] = v1;
  v29[17] = objc_opt_class();
  v2 = +[HKRemoteFeatureAvailabilityWatchOSVersionEqualsRule ruleIdentifier];
  v28[18] = v2;
  v29[18] = objc_opt_class();
  v3 = +[HKRemoteFeatureAvailabilityWatchOSVersionGreaterThanRule ruleIdentifier];
  v28[19] = v3;
  v29[19] = objc_opt_class();
  v4 = +[HKRemoteFeatureAvailabilityWatchModelNumberHasPrefixRule ruleIdentifier];
  v28[20] = v4;
  v29[20] = objc_opt_class();
  v5 = +[HKRemoteFeatureAvailabilityWatchOSVersionLessThanRule ruleIdentifier];
  v28[21] = v5;
  v29[21] = objc_opt_class();
  v6 = +[HKRemoteFeatureAvailabilityWatchProductTypeHasPrefixRule ruleIdentifier];
  v28[22] = v6;
  v29[22] = objc_opt_class();
  v7 = +[HKRemoteFeatureAvailabilityWatchRegionEqualsRule ruleIdentifier];
  v28[23] = v7;
  v29[23] = objc_opt_class();
  v8 = +[HKRemoteFeatureAvailabilityWatchRegionInfoEqualsRule ruleIdentifier];
  v28[24] = v8;
  v29[24] = objc_opt_class();
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:25];
  v10 = ruleClassForRawValue__allRules;
  ruleClassForRawValue__allRules = v9;

  v11 = *MEMORY[0x1E69E9840];
}

- (HKRemoteFeatureAvailabilityBaseRule)initWithRawValue:(id)value dataSource:(id)source
{
  valueCopy = value;
  sourceCopy = source;
  v14.receiver = self;
  v14.super_class = HKRemoteFeatureAvailabilityBaseRule;
  v8 = [(HKRemoteFeatureAvailabilityBaseRule *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_dataSource, sourceCopy);
    v10 = [valueCopy objectForKeyedSubscript:@"userInfo"];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = MEMORY[0x1E695E0F8];
    }

    [(HKRemoteFeatureAvailabilityBaseRule *)v9 processUserInfo:v12];
  }

  return v9;
}

- (HKRemoteFeatureAvailabilityDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)processUserInfo:(id)info
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (BOOL)evaluate
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end