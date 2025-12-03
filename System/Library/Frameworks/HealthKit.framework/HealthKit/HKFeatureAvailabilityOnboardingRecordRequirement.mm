@interface HKFeatureAvailabilityOnboardingRecordRequirement
- (BOOL)isEqual:(id)equal;
- (HKFeatureAvailabilityOnboardingRecordRequirement)initWithCoder:(id)coder;
- (HKFeatureAvailabilityOnboardingRecordRequirement)initWithFeatureIdentifier:(id)identifier;
- (id)isSatisfiedWithDataSource:(id)source error:(id *)error;
- (id)isSatisfiedWithOnboardingRecord:(id)record dataSource:(id)source error:(id *)error;
- (unint64_t)hash;
@end

@implementation HKFeatureAvailabilityOnboardingRecordRequirement

- (HKFeatureAvailabilityOnboardingRecordRequirement)initWithFeatureIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = HKFeatureAvailabilityOnboardingRecordRequirement;
  v6 = [(HKFeatureAvailabilityOnboardingRecordRequirement *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_featureIdentifier, identifier);
  }

  return v7;
}

- (id)isSatisfiedWithDataSource:(id)source error:(id *)error
{
  sourceCopy = source;
  v7 = [sourceCopy onboardingRecordForFeatureWithIdentifier:self->_featureIdentifier error:error];
  if (v7)
  {
    v8 = [(HKFeatureAvailabilityOnboardingRecordRequirement *)self isSatisfiedWithOnboardingRecord:v7 dataSource:sourceCopy error:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)isSatisfiedWithOnboardingRecord:(id)record dataSource:(id)source error:(id *)error
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HKFeatureAvailabilityOnboardingRecordRequirement.m" lineNumber:39 description:@"Subclasses must override this method"];

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

- (HKFeatureAvailabilityOnboardingRecordRequirement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"featureIdentifier"];

  v6 = [(HKFeatureAvailabilityOnboardingRecordRequirement *)self initWithFeatureIdentifier:v5];
  return v6;
}

@end