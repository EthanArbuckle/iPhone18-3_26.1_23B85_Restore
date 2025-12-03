@interface HKUserTrackedConceptQueryConfiguration
- (HKUserTrackedConceptQueryConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKUserTrackedConceptQueryConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = HKUserTrackedConceptQueryConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v7 copyWithZone:zone];
  v5 = [(NSArray *)self->_sortDescriptors copy];
  [v4 setSortDescriptors:v5];

  return v4;
}

- (HKUserTrackedConceptQueryConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = HKUserTrackedConceptQueryConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"sortDescriptors"];
    sortDescriptors = v5->_sortDescriptors;
    v5->_sortDescriptors = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKUserTrackedConceptQueryConfiguration;
  coderCopy = coder;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_sortDescriptors forKey:{@"sortDescriptors", v5.receiver, v5.super_class}];
}

@end