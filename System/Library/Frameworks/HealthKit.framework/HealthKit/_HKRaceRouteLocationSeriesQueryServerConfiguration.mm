@interface _HKRaceRouteLocationSeriesQueryServerConfiguration
- (_HKRaceRouteLocationSeriesQueryServerConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKRaceRouteLocationSeriesQueryServerConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _HKRaceRouteLocationSeriesQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:zone];
  [v4 setClusterUUID:self->_clusterUUID];
  [v4 setWorkoutSelection:self->_workoutSelection];
  [v4 setWorkoutUUID:self->_workoutUUID];
  [v4 setTimestampAnchor:self->_timestampAnchor];
  [v4 setLimit:self->_limit];
  return v4;
}

- (_HKRaceRouteLocationSeriesQueryServerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = _HKRaceRouteLocationSeriesQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cluster_uuid"];
    clusterUUID = v5->_clusterUUID;
    v5->_clusterUUID = v6;

    v5->_workoutSelection = [coderCopy decodeIntegerForKey:@"workout_selection"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"workout_uuid"];
    workoutUUID = v5->_workoutUUID;
    v5->_workoutUUID = v8;

    [coderCopy decodeDoubleForKey:@"timestamp_anchor"];
    v5->_timestampAnchor = v10;
    v5->_limit = [coderCopy decodeIntegerForKey:@"limit"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _HKRaceRouteLocationSeriesQueryServerConfiguration;
  coderCopy = coder;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_clusterUUID forKey:{@"cluster_uuid", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_workoutSelection forKey:@"workout_selection"];
  [coderCopy encodeObject:self->_workoutUUID forKey:@"workout_uuid"];
  [coderCopy encodeDouble:@"timestamp_anchor" forKey:self->_timestampAnchor];
  [coderCopy encodeInteger:self->_limit forKey:@"limit"];
}

@end