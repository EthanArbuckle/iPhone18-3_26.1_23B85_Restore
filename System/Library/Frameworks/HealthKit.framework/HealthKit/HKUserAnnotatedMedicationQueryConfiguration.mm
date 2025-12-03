@interface HKUserAnnotatedMedicationQueryConfiguration
- (HKUserAnnotatedMedicationQueryConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKUserAnnotatedMedicationQueryConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = HKUserAnnotatedMedicationQueryConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:zone];
  [v4 setLimit:self->_limit];
  return v4;
}

- (HKUserAnnotatedMedicationQueryConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = HKUserAnnotatedMedicationQueryConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_limit = [coderCopy decodeIntegerForKey:@"limit"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKUserAnnotatedMedicationQueryConfiguration;
  coderCopy = coder;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_limit forKey:{@"limit", v5.receiver, v5.super_class}];
}

@end