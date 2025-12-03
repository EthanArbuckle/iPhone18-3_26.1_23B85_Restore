@interface _HKWorkoutTrainingLoadQueryServerConfiguration
- (_HKWorkoutTrainingLoadQueryServerConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKWorkoutTrainingLoadQueryServerConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _HKWorkoutTrainingLoadQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:zone];
  [v4 setOptions:self->_options];
  return v4;
}

- (_HKWorkoutTrainingLoadQueryServerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = _HKWorkoutTrainingLoadQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_options = [coderCopy decodeIntegerForKey:@"options"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _HKWorkoutTrainingLoadQueryServerConfiguration;
  coderCopy = coder;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_options forKey:{@"options", v5.receiver, v5.super_class}];
}

@end