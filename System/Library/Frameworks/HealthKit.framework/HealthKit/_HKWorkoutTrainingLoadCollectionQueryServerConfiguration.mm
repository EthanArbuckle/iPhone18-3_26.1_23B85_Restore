@interface _HKWorkoutTrainingLoadCollectionQueryServerConfiguration
- (_HKWorkoutTrainingLoadCollectionQueryServerConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKWorkoutTrainingLoadCollectionQueryServerConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _HKWorkoutTrainingLoadCollectionQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:zone];
  [v4 setAnchorDate:self->_anchorDate];
  [v4 setOptions:self->_options];
  [v4 setIntervalComponents:self->_intervalComponents];
  return v4;
}

- (_HKWorkoutTrainingLoadCollectionQueryServerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = _HKWorkoutTrainingLoadCollectionQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_options = [coderCopy decodeIntegerForKey:@"options"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"anchor"];
    anchorDate = v5->_anchorDate;
    v5->_anchorDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intervals"];
    intervalComponents = v5->_intervalComponents;
    v5->_intervalComponents = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _HKWorkoutTrainingLoadCollectionQueryServerConfiguration;
  coderCopy = coder;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_options forKey:{@"options", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_anchorDate forKey:@"anchor"];
  [coderCopy encodeObject:self->_intervalComponents forKey:@"intervals"];
}

@end