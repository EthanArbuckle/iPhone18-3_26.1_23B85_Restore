@interface _HKRaceRouteLocationSeriesQueryServerConfiguration
- (_HKRaceRouteLocationSeriesQueryServerConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKRaceRouteLocationSeriesQueryServerConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _HKRaceRouteLocationSeriesQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:a3];
  [v4 setClusterUUID:self->_clusterUUID];
  [v4 setWorkoutSelection:self->_workoutSelection];
  [v4 setWorkoutUUID:self->_workoutUUID];
  [v4 setTimestampAnchor:self->_timestampAnchor];
  [v4 setLimit:self->_limit];
  return v4;
}

- (_HKRaceRouteLocationSeriesQueryServerConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _HKRaceRouteLocationSeriesQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cluster_uuid"];
    clusterUUID = v5->_clusterUUID;
    v5->_clusterUUID = v6;

    v5->_workoutSelection = [v4 decodeIntegerForKey:@"workout_selection"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"workout_uuid"];
    workoutUUID = v5->_workoutUUID;
    v5->_workoutUUID = v8;

    [v4 decodeDoubleForKey:@"timestamp_anchor"];
    v5->_timestampAnchor = v10;
    v5->_limit = [v4 decodeIntegerForKey:@"limit"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _HKRaceRouteLocationSeriesQueryServerConfiguration;
  v4 = a3;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_clusterUUID forKey:{@"cluster_uuid", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_workoutSelection forKey:@"workout_selection"];
  [v4 encodeObject:self->_workoutUUID forKey:@"workout_uuid"];
  [v4 encodeDouble:@"timestamp_anchor" forKey:self->_timestampAnchor];
  [v4 encodeInteger:self->_limit forKey:@"limit"];
}

@end