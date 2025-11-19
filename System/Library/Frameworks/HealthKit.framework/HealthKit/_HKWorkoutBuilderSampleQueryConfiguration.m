@interface _HKWorkoutBuilderSampleQueryConfiguration
- (_HKWorkoutBuilderSampleQueryConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKWorkoutBuilderSampleQueryConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _HKWorkoutBuilderSampleQueryConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:a3];
  [v4 setNeedsHistoricalData:self->_needsHistoricalData];
  [v4 setWorkoutBuilderIdentifier:self->_workoutBuilderIdentifier];
  [v4 setDeliverQuantities:self->_deliverQuantities];
  return v4;
}

- (_HKWorkoutBuilderSampleQueryConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _HKWorkoutBuilderSampleQueryConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v9 initWithCoder:v4];
  if (v5)
  {
    v5->_needsHistoricalData = [v4 decodeBoolForKey:@"needs_historical"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"builder_identifier"];
    workoutBuilderIdentifier = v5->_workoutBuilderIdentifier;
    v5->_workoutBuilderIdentifier = v6;

    v5->_deliverQuantities = [v4 decodeBoolForKey:@"deliver_quantities"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _HKWorkoutBuilderSampleQueryConfiguration;
  v4 = a3;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_needsHistoricalData forKey:{@"needs_historical", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_workoutBuilderIdentifier forKey:@"builder_identifier"];
  [v4 encodeBool:self->_deliverQuantities forKey:@"deliver_quantities"];
}

@end