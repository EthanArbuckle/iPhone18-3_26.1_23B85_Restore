@interface _HKWorkoutRouteQueryServerConfiguration
- (_HKWorkoutRouteQueryServerConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKWorkoutRouteQueryServerConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _HKWorkoutRouteQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:zone];
  [v4 setWorkoutRoute:self->_workoutRoute];
  [v4 setWorkoutUUID:self->_workoutUUID];
  [v4 setDateInterval:self->_dateInterval];
  return v4;
}

- (_HKWorkoutRouteQueryServerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = _HKWorkoutRouteQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"series"];
    workoutRoute = v5->_workoutRoute;
    v5->_workoutRoute = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"workout_uuid"];
    workoutUUID = v5->_workoutUUID;
    v5->_workoutUUID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date_interval"];
    dateInterval = v5->_dateInterval;
    v5->_dateInterval = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _HKWorkoutRouteQueryServerConfiguration;
  coderCopy = coder;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_workoutRoute forKey:{@"series", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_workoutUUID forKey:@"workout_uuid"];
  [coderCopy encodeObject:self->_dateInterval forKey:@"date_interval"];
}

@end