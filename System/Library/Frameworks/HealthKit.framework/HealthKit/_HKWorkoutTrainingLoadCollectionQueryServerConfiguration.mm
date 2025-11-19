@interface _HKWorkoutTrainingLoadCollectionQueryServerConfiguration
- (_HKWorkoutTrainingLoadCollectionQueryServerConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKWorkoutTrainingLoadCollectionQueryServerConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _HKWorkoutTrainingLoadCollectionQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:a3];
  [v4 setAnchorDate:self->_anchorDate];
  [v4 setOptions:self->_options];
  [v4 setIntervalComponents:self->_intervalComponents];
  return v4;
}

- (_HKWorkoutTrainingLoadCollectionQueryServerConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _HKWorkoutTrainingLoadCollectionQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v11 initWithCoder:v4];
  if (v5)
  {
    v5->_options = [v4 decodeIntegerForKey:@"options"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"anchor"];
    anchorDate = v5->_anchorDate;
    v5->_anchorDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intervals"];
    intervalComponents = v5->_intervalComponents;
    v5->_intervalComponents = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _HKWorkoutTrainingLoadCollectionQueryServerConfiguration;
  v4 = a3;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_options forKey:{@"options", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_anchorDate forKey:@"anchor"];
  [v4 encodeObject:self->_intervalComponents forKey:@"intervals"];
}

@end