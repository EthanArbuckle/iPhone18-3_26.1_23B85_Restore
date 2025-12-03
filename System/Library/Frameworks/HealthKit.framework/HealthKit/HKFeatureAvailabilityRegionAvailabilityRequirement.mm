@interface HKFeatureAvailabilityRegionAvailabilityRequirement
- (BOOL)isEqual:(id)equal;
- (HKFeatureAvailabilityRegionAvailabilityRequirement)initWithCoder:(id)coder;
- (HKFeatureAvailabilityRegionAvailabilityRequirement)initWithFeatureIdentifier:(id)identifier;
- (id)isSatisfiedWithDataSource:(id)source error:(id *)error;
- (id)isSatisfiedWithRegionAvailability:(id)availability dataSource:(id)source error:(id *)error;
- (unint64_t)hash;
@end

@implementation HKFeatureAvailabilityRegionAvailabilityRequirement

- (HKFeatureAvailabilityRegionAvailabilityRequirement)initWithFeatureIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = HKFeatureAvailabilityRegionAvailabilityRequirement;
  v5 = [(HKFeatureAvailabilityRegionAvailabilityRequirement *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    featureIdentifier = v5->_featureIdentifier;
    v5->_featureIdentifier = v6;
  }

  return v5;
}

- (id)isSatisfiedWithDataSource:(id)source error:(id *)error
{
  sourceCopy = source;
  v7 = [sourceCopy regionAvailabilityForFeatureWithIdentifier:self->_featureIdentifier error:error];
  if (v7)
  {
    v8 = [(HKFeatureAvailabilityRegionAvailabilityRequirement *)self isSatisfiedWithRegionAvailability:v7 dataSource:sourceCopy error:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)isSatisfiedWithRegionAvailability:(id)availability dataSource:(id)source error:(id *)error
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HKFeatureAvailabilityRegionAvailabilityRequirement.m" lineNumber:40 description:@"Subclasses must override this method"];

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

- (HKFeatureAvailabilityRegionAvailabilityRequirement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"featureIdentifier"];

  v6 = [(HKFeatureAvailabilityRegionAvailabilityRequirement *)self initWithFeatureIdentifier:v5];
  return v6;
}

@end