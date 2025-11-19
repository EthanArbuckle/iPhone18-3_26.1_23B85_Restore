@interface HKFeatureAvailabilityRegionAvailabilityRequirement
- (BOOL)isEqual:(id)a3;
- (HKFeatureAvailabilityRegionAvailabilityRequirement)initWithCoder:(id)a3;
- (HKFeatureAvailabilityRegionAvailabilityRequirement)initWithFeatureIdentifier:(id)a3;
- (id)isSatisfiedWithDataSource:(id)a3 error:(id *)a4;
- (id)isSatisfiedWithRegionAvailability:(id)a3 dataSource:(id)a4 error:(id *)a5;
- (unint64_t)hash;
@end

@implementation HKFeatureAvailabilityRegionAvailabilityRequirement

- (HKFeatureAvailabilityRegionAvailabilityRequirement)initWithFeatureIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKFeatureAvailabilityRegionAvailabilityRequirement;
  v5 = [(HKFeatureAvailabilityRegionAvailabilityRequirement *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    featureIdentifier = v5->_featureIdentifier;
    v5->_featureIdentifier = v6;
  }

  return v5;
}

- (id)isSatisfiedWithDataSource:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 regionAvailabilityForFeatureWithIdentifier:self->_featureIdentifier error:a4];
  if (v7)
  {
    v8 = [(HKFeatureAvailabilityRegionAvailabilityRequirement *)self isSatisfiedWithRegionAvailability:v7 dataSource:v6 error:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)isSatisfiedWithRegionAvailability:(id)a3 dataSource:(id)a4 error:(id *)a5
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"HKFeatureAvailabilityRegionAvailabilityRequirement.m" lineNumber:40 description:@"Subclasses must override this method"];

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

- (HKFeatureAvailabilityRegionAvailabilityRequirement)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"featureIdentifier"];

  v6 = [(HKFeatureAvailabilityRegionAvailabilityRequirement *)self initWithFeatureIdentifier:v5];
  return v6;
}

@end