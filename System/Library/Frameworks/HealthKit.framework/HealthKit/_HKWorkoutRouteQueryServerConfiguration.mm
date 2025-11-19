@interface _HKWorkoutRouteQueryServerConfiguration
- (_HKWorkoutRouteQueryServerConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKWorkoutRouteQueryServerConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _HKWorkoutRouteQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:a3];
  [v4 setWorkoutRoute:self->_workoutRoute];
  [v4 setWorkoutUUID:self->_workoutUUID];
  [v4 setDateInterval:self->_dateInterval];
  return v4;
}

- (_HKWorkoutRouteQueryServerConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _HKWorkoutRouteQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"series"];
    workoutRoute = v5->_workoutRoute;
    v5->_workoutRoute = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"workout_uuid"];
    workoutUUID = v5->_workoutUUID;
    v5->_workoutUUID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date_interval"];
    dateInterval = v5->_dateInterval;
    v5->_dateInterval = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _HKWorkoutRouteQueryServerConfiguration;
  v4 = a3;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_workoutRoute forKey:{@"series", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_workoutUUID forKey:@"workout_uuid"];
  [v4 encodeObject:self->_dateInterval forKey:@"date_interval"];
}

@end