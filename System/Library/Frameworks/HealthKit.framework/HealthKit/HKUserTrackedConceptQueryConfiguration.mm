@interface HKUserTrackedConceptQueryConfiguration
- (HKUserTrackedConceptQueryConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKUserTrackedConceptQueryConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = HKUserTrackedConceptQueryConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v7 copyWithZone:a3];
  v5 = [(NSArray *)self->_sortDescriptors copy];
  [v4 setSortDescriptors:v5];

  return v4;
}

- (HKUserTrackedConceptQueryConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HKUserTrackedConceptQueryConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"sortDescriptors"];
    sortDescriptors = v5->_sortDescriptors;
    v5->_sortDescriptors = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKUserTrackedConceptQueryConfiguration;
  v4 = a3;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_sortDescriptors forKey:{@"sortDescriptors", v5.receiver, v5.super_class}];
}

@end