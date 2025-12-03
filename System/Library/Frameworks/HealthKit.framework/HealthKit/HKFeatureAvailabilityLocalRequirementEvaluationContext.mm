@interface HKFeatureAvailabilityLocalRequirementEvaluationContext
- (id)currentCountryCode;
- (id)featureStatusForFeatureWithIdentifier:(id)identifier context:(id)context error:(id *)error;
- (id)isWatchAppInstalledWithBundleIdentifier:(id)identifier error:(id *)error;
- (id)onboardingEligibilityForFeatureWithIdentifier:(id)identifier countryCode:(id)code error:(id *)error;
- (id)onboardingEligibilityForFeatureWithIdentifier:(id)identifier error:(id *)error;
- (id)onboardingRecordForFeatureWithIdentifier:(id)identifier error:(id *)error;
- (id)regionAvailabilityForFeatureWithIdentifier:(id)identifier error:(id *)error;
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
    currentCountryCode = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)&v8 currentCountryCode];
    v4 = currentCountryCode;
    if (currentCountryCode)
    {
      v5 = currentCountryCode;
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

- (id)onboardingEligibilityForFeatureWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  eligibilityByFeatureIdentifier = self->_eligibilityByFeatureIdentifier;
  if (!eligibilityByFeatureIdentifier)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v9 = self->_eligibilityByFeatureIdentifier;
    self->_eligibilityByFeatureIdentifier = dictionary;

    eligibilityByFeatureIdentifier = self->_eligibilityByFeatureIdentifier;
  }

  v10 = [(NSMutableDictionary *)eligibilityByFeatureIdentifier objectForKeyedSubscript:identifierCopy];

  if (v10)
  {
    ++self->__unitTest_cacheHits;
    v11 = [(NSMutableDictionary *)self->_eligibilityByFeatureIdentifier objectForKeyedSubscript:identifierCopy];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = HKFeatureAvailabilityLocalRequirementEvaluationContext;
    v11 = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)&v13 onboardingEligibilityForFeatureWithIdentifier:identifierCopy error:error];
    if (v11)
    {
      [(NSMutableDictionary *)self->_eligibilityByFeatureIdentifier setObject:v11 forKeyedSubscript:identifierCopy];
    }
  }

  return v11;
}

- (id)onboardingEligibilityForFeatureWithIdentifier:(id)identifier countryCode:(id)code error:(id *)error
{
  identifierCopy = identifier;
  codeCopy = code;
  v10 = codeCopy;
  v11 = @"NIL";
  if (codeCopy)
  {
    v11 = codeCopy;
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

  v16 = [(NSMutableDictionary *)eligibilityByCountryCodeByFeatureIdentifier objectForKeyedSubscript:identifierCopy];

  if (!v16)
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(NSMutableDictionary *)self->_eligibilityByCountryCodeByFeatureIdentifier setObject:v17 forKeyedSubscript:identifierCopy];
  }

  v18 = [(NSMutableDictionary *)self->_eligibilityByCountryCodeByFeatureIdentifier objectForKeyedSubscript:identifierCopy];
  v19 = [v18 objectForKeyedSubscript:v12];

  if (v19)
  {
    ++self->__unitTest_cacheHits;
    v20 = [(NSMutableDictionary *)self->_eligibilityByCountryCodeByFeatureIdentifier objectForKeyedSubscript:identifierCopy];
    v21 = [v20 objectForKeyedSubscript:v12];
  }

  else
  {
    v23.receiver = self;
    v23.super_class = HKFeatureAvailabilityLocalRequirementEvaluationContext;
    v21 = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)&v23 onboardingEligibilityForFeatureWithIdentifier:identifierCopy countryCode:v10 error:error];
    if (!v21)
    {
      goto LABEL_12;
    }

    v20 = [(NSMutableDictionary *)self->_eligibilityByCountryCodeByFeatureIdentifier objectForKeyedSubscript:identifierCopy];
    [v20 setObject:v21 forKeyedSubscript:v12];
  }

LABEL_12:

  return v21;
}

- (id)onboardingRecordForFeatureWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  onboardingRecordByFeatureIdentifier = self->_onboardingRecordByFeatureIdentifier;
  if (!onboardingRecordByFeatureIdentifier)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v9 = self->_onboardingRecordByFeatureIdentifier;
    self->_onboardingRecordByFeatureIdentifier = dictionary;

    onboardingRecordByFeatureIdentifier = self->_onboardingRecordByFeatureIdentifier;
  }

  v10 = [(NSMutableDictionary *)onboardingRecordByFeatureIdentifier objectForKeyedSubscript:identifierCopy];

  if (v10)
  {
    ++self->__unitTest_cacheHits;
    v11 = [(NSMutableDictionary *)self->_onboardingRecordByFeatureIdentifier objectForKeyedSubscript:identifierCopy];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = HKFeatureAvailabilityLocalRequirementEvaluationContext;
    v11 = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)&v13 onboardingRecordForFeatureWithIdentifier:identifierCopy error:error];
    if (v11)
    {
      [(NSMutableDictionary *)self->_onboardingRecordByFeatureIdentifier setObject:v11 forKeyedSubscript:identifierCopy];
    }
  }

  return v11;
}

- (id)regionAvailabilityForFeatureWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  regionAvailabilityByFeatureIdentifier = self->_regionAvailabilityByFeatureIdentifier;
  if (!regionAvailabilityByFeatureIdentifier)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v9 = self->_regionAvailabilityByFeatureIdentifier;
    self->_regionAvailabilityByFeatureIdentifier = dictionary;

    regionAvailabilityByFeatureIdentifier = self->_regionAvailabilityByFeatureIdentifier;
  }

  v10 = [(NSMutableDictionary *)regionAvailabilityByFeatureIdentifier objectForKeyedSubscript:identifierCopy];

  if (v10)
  {
    ++self->__unitTest_cacheHits;
    v11 = [(NSMutableDictionary *)self->_regionAvailabilityByFeatureIdentifier objectForKeyedSubscript:identifierCopy];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = HKFeatureAvailabilityLocalRequirementEvaluationContext;
    v11 = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)&v13 regionAvailabilityForFeatureWithIdentifier:identifierCopy error:error];
    if (v11)
    {
      [(NSMutableDictionary *)self->_regionAvailabilityByFeatureIdentifier setObject:v11 forKeyedSubscript:identifierCopy];
    }
  }

  return v11;
}

- (id)isWatchAppInstalledWithBundleIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  watchAppInstallationStateByBundleIdentifier = self->_watchAppInstallationStateByBundleIdentifier;
  if (!watchAppInstallationStateByBundleIdentifier)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v9 = self->_watchAppInstallationStateByBundleIdentifier;
    self->_watchAppInstallationStateByBundleIdentifier = dictionary;

    watchAppInstallationStateByBundleIdentifier = self->_watchAppInstallationStateByBundleIdentifier;
  }

  v10 = [(NSMutableDictionary *)watchAppInstallationStateByBundleIdentifier objectForKeyedSubscript:identifierCopy];

  if (v10)
  {
    ++self->__unitTest_cacheHits;
    v11 = [(NSMutableDictionary *)self->_watchAppInstallationStateByBundleIdentifier objectForKeyedSubscript:identifierCopy];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = HKFeatureAvailabilityLocalRequirementEvaluationContext;
    v11 = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)&v13 isWatchAppInstalledWithBundleIdentifier:identifierCopy error:error];
    if (v11)
    {
      [(NSMutableDictionary *)self->_watchAppInstallationStateByBundleIdentifier setObject:v11 forKeyedSubscript:identifierCopy];
    }
  }

  return v11;
}

- (id)featureStatusForFeatureWithIdentifier:(id)identifier context:(id)context error:(id *)error
{
  identifierCopy = identifier;
  contextCopy = context;
  if (!self->_featureStatusByIdentifierAndContext)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    featureStatusByIdentifierAndContext = self->_featureStatusByIdentifierAndContext;
    self->_featureStatusByIdentifierAndContext = dictionary;
  }

  v12 = [[HKFeatureIdentifierAndContext alloc] initWithFeatureIdentifier:identifierCopy context:contextCopy];
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
    v14 = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)&v16 featureStatusForFeatureWithIdentifier:identifierCopy context:contextCopy error:error];
    if (v14)
    {
      [(NSMutableDictionary *)self->_featureStatusByIdentifierAndContext setObject:v14 forKeyedSubscript:v12];
    }
  }

  return v14;
}

@end