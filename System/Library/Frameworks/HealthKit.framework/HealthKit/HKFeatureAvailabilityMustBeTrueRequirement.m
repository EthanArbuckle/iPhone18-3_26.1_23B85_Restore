@interface HKFeatureAvailabilityMustBeTrueRequirement
- (BOOL)isEqual:(id)a3;
- (HKFeatureAvailabilityMustBeTrueRequirement)initWithCoder:(id)a3;
- (HKFeatureAvailabilityMustBeTrueRequirement)initWithWhatMustBeTrue:(BOOL)a3;
- (unint64_t)hash;
@end

@implementation HKFeatureAvailabilityMustBeTrueRequirement

- (HKFeatureAvailabilityMustBeTrueRequirement)initWithWhatMustBeTrue:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HKFeatureAvailabilityMustBeTrueRequirement;
  result = [(HKFeatureAvailabilityMustBeTrueRequirement *)&v5 init];
  if (result)
  {
    result->_isTrue = a3;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_isTrue == v4[8];

  return v5;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() requirementIdentifier];
  v4 = [v3 hash];
  isTrue = self->_isTrue;

  return v4 ^ isTrue;
}

- (HKFeatureAvailabilityMustBeTrueRequirement)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = HKFeatureAvailabilityMustBeTrueRequirement;
  v5 = [(HKFeatureAvailabilityMustBeTrueRequirement *)&v7 init];
  if (v5)
  {
    v5->_isTrue = [v4 decodeBoolForKey:@"IsTrue"];
  }

  return v5;
}

@end