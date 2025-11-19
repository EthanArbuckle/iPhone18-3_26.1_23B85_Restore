@interface HKFeatureAvailabilityOnboardingEligibilityRequirement
- (BOOL)isEqual:(id)a3;
- (HKFeatureAvailabilityOnboardingEligibilityRequirement)initWithCoder:(id)a3;
- (HKFeatureAvailabilityOnboardingEligibilityRequirement)initWithFeatureIdentifier:(id)a3;
- (id)isSatisfiedWithDataSource:(id)a3 error:(id *)a4;
- (id)isSatisfiedWithOnboardingEligibility:(id)a3 error:(id *)a4;
- (unint64_t)hash;
@end

@implementation HKFeatureAvailabilityOnboardingEligibilityRequirement

- (HKFeatureAvailabilityOnboardingEligibilityRequirement)initWithFeatureIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKFeatureAvailabilityOnboardingEligibilityRequirement;
  v6 = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_featureIdentifier, a3);
  }

  return v7;
}

- (id)isSatisfiedWithDataSource:(id)a3 error:(id *)a4
{
  v6 = [a3 onboardingEligibilityForFeatureWithIdentifier:self->_featureIdentifier error:?];
  if (v6)
  {
    v7 = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)self isSatisfiedWithOnboardingEligibility:v6 error:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)isSatisfiedWithOnboardingEligibility:(id)a3 error:(id *)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"HKFeatureAvailabilityOnboardingEligibilityRequirement.m" lineNumber:38 description:@"Subclasses must override this method"];

  return 0;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSString *)self->_featureIdentifier isEqual:v4[1]];
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

- (HKFeatureAvailabilityOnboardingEligibilityRequirement)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"featureIdentifier"];

  v6 = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)self initWithFeatureIdentifier:v5];
  return v6;
}

@end