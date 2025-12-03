@interface _HKWorkoutBuilderSampleQueryConfiguration
- (_HKWorkoutBuilderSampleQueryConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKWorkoutBuilderSampleQueryConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _HKWorkoutBuilderSampleQueryConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:zone];
  [v4 setNeedsHistoricalData:self->_needsHistoricalData];
  [v4 setWorkoutBuilderIdentifier:self->_workoutBuilderIdentifier];
  [v4 setDeliverQuantities:self->_deliverQuantities];
  return v4;
}

- (_HKWorkoutBuilderSampleQueryConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _HKWorkoutBuilderSampleQueryConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_needsHistoricalData = [coderCopy decodeBoolForKey:@"needs_historical"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"builder_identifier"];
    workoutBuilderIdentifier = v5->_workoutBuilderIdentifier;
    v5->_workoutBuilderIdentifier = v6;

    v5->_deliverQuantities = [coderCopy decodeBoolForKey:@"deliver_quantities"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _HKWorkoutBuilderSampleQueryConfiguration;
  coderCopy = coder;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_needsHistoricalData forKey:{@"needs_historical", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_workoutBuilderIdentifier forKey:@"builder_identifier"];
  [coderCopy encodeBool:self->_deliverQuantities forKey:@"deliver_quantities"];
}

@end