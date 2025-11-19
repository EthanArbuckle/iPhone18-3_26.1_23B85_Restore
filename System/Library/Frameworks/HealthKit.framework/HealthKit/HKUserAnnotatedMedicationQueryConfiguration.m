@interface HKUserAnnotatedMedicationQueryConfiguration
- (HKUserAnnotatedMedicationQueryConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKUserAnnotatedMedicationQueryConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = HKUserAnnotatedMedicationQueryConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:a3];
  [v4 setLimit:self->_limit];
  return v4;
}

- (HKUserAnnotatedMedicationQueryConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = HKUserAnnotatedMedicationQueryConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_limit = [v4 decodeIntegerForKey:@"limit"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKUserAnnotatedMedicationQueryConfiguration;
  v4 = a3;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_limit forKey:{@"limit", v5.receiver, v5.super_class}];
}

@end