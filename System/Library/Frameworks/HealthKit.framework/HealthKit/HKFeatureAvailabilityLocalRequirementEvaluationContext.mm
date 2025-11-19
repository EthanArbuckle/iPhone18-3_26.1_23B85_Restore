@interface HKFeatureAvailabilityLocalRequirementEvaluationContext
- (id)currentCountryCode;
- (id)featureStatusForFeatureWithIdentifier:(id)a3 context:(id)a4 error:(id *)a5;
- (id)isWatchAppInstalledWithBundleIdentifier:(id)a3 error:(id *)a4;
- (id)onboardingEligibilityForFeatureWithIdentifier:(id)a3 countryCode:(id)a4 error:(id *)a5;
- (id)onboardingEligibilityForFeatureWithIdentifier:(id)a3 error:(id *)a4;
- (id)onboardingRecordForFeatureWithIdentifier:(id)a3 error:(id *)a4;
- (id)regionAvailabilityForFeatureWithIdentifier:(id)a3 error:(id *)a4;
@end

@implementation HKFeatureAvailabilityLocalRequirementEvaluationContext

- (id)currentCountryCode
{
  if (self->_currentCountryCode)
  {
    ++self->__unitTest_cacheHits;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = HKFeatureAvailabilityLocalRequirementEvaluationContext;
    v3 = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)&v8 currentCountryCode];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = @"NIL";
    }

    objc_storeStrong(&self->_currentCountryCode, v5);
  }

  if ([(NSString *)self->_currentCountryCode isEqualToString:@"NIL"])
  {
    v6 = 0;
  }

  else
  {
    v6 = self->_currentCountryCode;
  }

  return v6;
}

- (id)onboardingEligibilityForFeatureWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  eligibilityByFeatureIdentifier = self->_eligibilityByFeatureIdentifier;
  if (!eligibilityByFeatureIdentifier)
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v9 = self->_eligibilityByFeatureIdentifier;
    self->_eligibilityByFeatureIdentifier = v8;

    eligibilityByFeatureIdentifier = self->_eligibilityByFeatureIdentifier;
  }

  v10 = [(NSMutableDictionary *)eligibilityByFeatureIdentifier objectForKeyedSubscript:v6];

  if (v10)
  {
    ++self->__unitTest_cacheHits;
    v11 = [(NSMutableDictionary *)self->_eligibilityByFeatureIdentifier objectForKeyedSubscript:v6];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = HKFeatureAvailabilityLocalRequirementEvaluationContext;
    v11 = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)&v13 onboardingEligibilityForFeatureWithIdentifier:v6 error:a4];
    if (v11)
    {
      [(NSMutableDictionary *)self->_eligibilityByFeatureIdentifier setObject:v11 forKeyedSubscript:v6];
    }
  }

  return v11;
}

- (id)onboardingEligibilityForFeatureWithIdentifier:(id)a3 countryCode:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v11 = @"NIL";
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;
  eligibilityByCountryCodeByFeatureIdentifier = self->_eligibilityByCountryCodeByFeatureIdentifier;
  if (!eligibilityByCountryCodeByFeatureIdentifier)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v15 = self->_eligibilityByCountryCodeByFeatureIdentifier;
    self->_eligibilityByCountryCodeByFeatureIdentifier = v14;

    eligibilityByCountryCodeByFeatureIdentifier = self->_eligibilityByCountryCodeByFeatureIdentifier;
  }

  v16 = [(NSMutableDictionary *)eligibilityByCountryCodeByFeatureIdentifier objectForKeyedSubscript:v8];

  if (!v16)
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(NSMutableDictionary *)self->_eligibilityByCountryCodeByFeatureIdentifier setObject:v17 forKeyedSubscript:v8];
  }

  v18 = [(NSMutableDictionary *)self->_eligibilityByCountryCodeByFeatureIdentifier objectForKeyedSubscript:v8];
  v19 = [v18 objectForKeyedSubscript:v12];

  if (v19)
  {
    ++self->__unitTest_cacheHits;
    v20 = [(NSMutableDictionary *)self->_eligibilityByCountryCodeByFeatureIdentifier objectForKeyedSubscript:v8];
    v21 = [v20 objectForKeyedSubscript:v12];
  }

  else
  {
    v23.receiver = self;
    v23.super_class = HKFeatureAvailabilityLocalRequirementEvaluationContext;
    v21 = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)&v23 onboardingEligibilityForFeatureWithIdentifier:v8 countryCode:v10 error:a5];
    if (!v21)
    {
      goto LABEL_12;
    }

    v20 = [(NSMutableDictionary *)self->_eligibilityByCountryCodeByFeatureIdentifier objectForKeyedSubscript:v8];
    [v20 setObject:v21 forKeyedSubscript:v12];
  }

LABEL_12:

  return v21;
}

- (id)onboardingRecordForFeatureWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  onboardingRecordByFeatureIdentifier = self->_onboardingRecordByFeatureIdentifier;
  if (!onboardingRecordByFeatureIdentifier)
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v9 = self->_onboardingRecordByFeatureIdentifier;
    self->_onboardingRecordByFeatureIdentifier = v8;

    onboardingRecordByFeatureIdentifier = self->_onboardingRecordByFeatureIdentifier;
  }

  v10 = [(NSMutableDictionary *)onboardingRecordByFeatureIdentifier objectForKeyedSubscript:v6];

  if (v10)
  {
    ++self->__unitTest_cacheHits;
    v11 = [(NSMutableDictionary *)self->_onboardingRecordByFeatureIdentifier objectForKeyedSubscript:v6];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = HKFeatureAvailabilityLocalRequirementEvaluationContext;
    v11 = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)&v13 onboardingRecordForFeatureWithIdentifier:v6 error:a4];
    if (v11)
    {
      [(NSMutableDictionary *)self->_onboardingRecordByFeatureIdentifier setObject:v11 forKeyedSubscript:v6];
    }
  }

  return v11;
}

- (id)regionAvailabilityForFeatureWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  regionAvailabilityByFeatureIdentifier = self->_regionAvailabilityByFeatureIdentifier;
  if (!regionAvailabilityByFeatureIdentifier)
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v9 = self->_regionAvailabilityByFeatureIdentifier;
    self->_regionAvailabilityByFeatureIdentifier = v8;

    regionAvailabilityByFeatureIdentifier = self->_regionAvailabilityByFeatureIdentifier;
  }

  v10 = [(NSMutableDictionary *)regionAvailabilityByFeatureIdentifier objectForKeyedSubscript:v6];

  if (v10)
  {
    ++self->__unitTest_cacheHits;
    v11 = [(NSMutableDictionary *)self->_regionAvailabilityByFeatureIdentifier objectForKeyedSubscript:v6];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = HKFeatureAvailabilityLocalRequirementEvaluationContext;
    v11 = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)&v13 regionAvailabilityForFeatureWithIdentifier:v6 error:a4];
    if (v11)
    {
      [(NSMutableDictionary *)self->_regionAvailabilityByFeatureIdentifier setObject:v11 forKeyedSubscript:v6];
    }
  }

  return v11;
}

- (id)isWatchAppInstalledWithBundleIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  watchAppInstallationStateByBundleIdentifier = self->_watchAppInstallationStateByBundleIdentifier;
  if (!watchAppInstallationStateByBundleIdentifier)
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v9 = self->_watchAppInstallationStateByBundleIdentifier;
    self->_watchAppInstallationStateByBundleIdentifier = v8;

    watchAppInstallationStateByBundleIdentifier = self->_watchAppInstallationStateByBundleIdentifier;
  }

  v10 = [(NSMutableDictionary *)watchAppInstallationStateByBundleIdentifier objectForKeyedSubscript:v6];

  if (v10)
  {
    ++self->__unitTest_cacheHits;
    v11 = [(NSMutableDictionary *)self->_watchAppInstallationStateByBundleIdentifier objectForKeyedSubscript:v6];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = HKFeatureAvailabilityLocalRequirementEvaluationContext;
    v11 = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)&v13 isWatchAppInstalledWithBundleIdentifier:v6 error:a4];
    if (v11)
    {
      [(NSMutableDictionary *)self->_watchAppInstallationStateByBundleIdentifier setObject:v11 forKeyedSubscript:v6];
    }
  }

  return v11;
}

- (id)featureStatusForFeatureWithIdentifier:(id)a3 context:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!self->_featureStatusByIdentifierAndContext)
  {
    v10 = [MEMORY[0x1E695DF90] dictionary];
    featureStatusByIdentifierAndContext = self->_featureStatusByIdentifierAndContext;
    self->_featureStatusByIdentifierAndContext = v10;
  }

  v12 = [[HKFeatureIdentifierAndContext alloc] initWithFeatureIdentifier:v8 context:v9];
  v13 = [(NSMutableDictionary *)self->_featureStatusByIdentifierAndContext objectForKeyedSubscript:v12];

  if (v13)
  {
    ++self->__unitTest_cacheHits;
    v14 = [(NSMutableDictionary *)self->_featureStatusByIdentifierAndContext objectForKeyedSubscript:v12];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = HKFeatureAvailabilityLocalRequirementEvaluationContext;
    v14 = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)&v16 featureStatusForFeatureWithIdentifier:v8 context:v9 error:a5];
    if (v14)
    {
      [(NSMutableDictionary *)self->_featureStatusByIdentifierAndContext setObject:v14 forKeyedSubscript:v12];
    }
  }

  return v14;
}

@end