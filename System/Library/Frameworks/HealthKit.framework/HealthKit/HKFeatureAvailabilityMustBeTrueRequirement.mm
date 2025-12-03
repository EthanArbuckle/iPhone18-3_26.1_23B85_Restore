@interface HKFeatureAvailabilityMustBeTrueRequirement
- (BOOL)isEqual:(id)equal;
- (HKFeatureAvailabilityMustBeTrueRequirement)initWithCoder:(id)coder;
- (HKFeatureAvailabilityMustBeTrueRequirement)initWithWhatMustBeTrue:(BOOL)true;
- (unint64_t)hash;
@end

@implementation HKFeatureAvailabilityMustBeTrueRequirement

- (HKFeatureAvailabilityMustBeTrueRequirement)initWithWhatMustBeTrue:(BOOL)true
{
  v5.receiver = self;
  v5.super_class = HKFeatureAvailabilityMustBeTrueRequirement;
  result = [(HKFeatureAvailabilityMustBeTrueRequirement *)&v5 init];
  if (result)
  {
    result->_isTrue = true;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_isTrue == equalCopy[8];

  return v5;
}

- (unint64_t)hash
{
  requirementIdentifier = [objc_opt_class() requirementIdentifier];
  v4 = [requirementIdentifier hash];
  isTrue = self->_isTrue;

  return v4 ^ isTrue;
}

- (HKFeatureAvailabilityMustBeTrueRequirement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = HKFeatureAvailabilityMustBeTrueRequirement;
  v5 = [(HKFeatureAvailabilityMustBeTrueRequirement *)&v7 init];
  if (v5)
  {
    v5->_isTrue = [coderCopy decodeBoolForKey:@"IsTrue"];
  }

  return v5;
}

@end