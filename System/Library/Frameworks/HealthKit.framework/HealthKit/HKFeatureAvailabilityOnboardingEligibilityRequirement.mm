@interface HKFeatureAvailabilityOnboardingEligibilityRequirement
- (BOOL)isEqual:(id)equal;
- (HKFeatureAvailabilityOnboardingEligibilityRequirement)initWithCoder:(id)coder;
- (HKFeatureAvailabilityOnboardingEligibilityRequirement)initWithFeatureIdentifier:(id)identifier;
- (id)isSatisfiedWithDataSource:(id)source error:(id *)error;
- (id)isSatisfiedWithOnboardingEligibility:(id)eligibility error:(id *)error;
- (unint64_t)hash;
@end

@implementation HKFeatureAvailabilityOnboardingEligibilityRequirement

- (HKFeatureAvailabilityOnboardingEligibilityRequirement)initWithFeatureIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = HKFeatureAvailabilityOnboardingEligibilityRequirement;
  v6 = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_featureIdentifier, identifier);
  }

  return v7;
}

- (id)isSatisfiedWithDataSource:(id)source error:(id *)error
{
  v6 = [source onboardingEligibilityForFeatureWithIdentifier:self->_featureIdentifier error:?];
  if (v6)
  {
    v7 = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)self isSatisfiedWithOnboardingEligibility:v6 error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)isSatisfiedWithOnboardingEligibility:(id)eligibility error:(id *)error
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HKFeatureAvailabilityOnboardingEligibilityRequirement.m" lineNumber:38 description:@"Subclasses must override this method"];

  return 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSString *)self->_featureIdentifier isEqual:equalCopy[1]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v4 hash];
  v6 = [(NSString *)self->_featureIdentifier hash];

  return v6 ^ v5;
}

- (HKFeatureAvailabilityOnboardingEligibilityRequirement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"featureIdentifier"];

  v6 = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)self initWithFeatureIdentifier:v5];
  return v6;
}

@end