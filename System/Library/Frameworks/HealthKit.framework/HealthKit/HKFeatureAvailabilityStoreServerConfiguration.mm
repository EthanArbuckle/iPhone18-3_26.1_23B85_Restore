@interface HKFeatureAvailabilityStoreServerConfiguration
- (HKFeatureAvailabilityStoreServerConfiguration)initWithCoder:(id)a3;
- (HKFeatureAvailabilityStoreServerConfiguration)initWithFeatureIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKFeatureAvailabilityStoreServerConfiguration

- (HKFeatureAvailabilityStoreServerConfiguration)initWithFeatureIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKFeatureAvailabilityStoreServerConfiguration;
  v5 = [(HKFeatureAvailabilityStoreServerConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    featureIdentifier = v5->_featureIdentifier;
    v5->_featureIdentifier = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_storeStrong(v4 + 1, self->_featureIdentifier);
  return v4;
}

- (HKFeatureAvailabilityStoreServerConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKFeatureAvailabilityStoreServerConfiguration;
  v5 = [(HKTaskConfiguration *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FeatureIdentifier"];
    featureIdentifier = v5->_featureIdentifier;
    v5->_featureIdentifier = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKFeatureAvailabilityStoreServerConfiguration;
  v4 = a3;
  [(HKTaskConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_featureIdentifier forKey:{@"FeatureIdentifier", v5.receiver, v5.super_class}];
}

@end