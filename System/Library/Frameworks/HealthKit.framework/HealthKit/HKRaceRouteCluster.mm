@interface HKRaceRouteCluster
- (BOOL)isEqual:(id)equal;
- (HKRaceRouteCluster)initWithCoder:(id)coder;
- (id)_initWithUUID:(id)d workoutClusterUUID:(id)iD clusterSize:(unint64_t)size relevanceValue:(double)value workoutActivityType:(unint64_t)type lastWorkoutUUID:(id)uID lastWorkoutDate:(id)date lastWorkoutDistance:(double)self0 lastWorkoutDuration:(double)self1 lastWorkoutStartingPoint:(id)self2 bestWorkoutUUID:(id)self3 bestWorkoutDate:(id)self4 bestWorkoutDistance:(double)self5 bestWorkoutDuration:(double)self6 workoutRouteSnapshot:(id)self7 workoutRouteLabel:(id)self8;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKRaceRouteCluster

- (id)_initWithUUID:(id)d workoutClusterUUID:(id)iD clusterSize:(unint64_t)size relevanceValue:(double)value workoutActivityType:(unint64_t)type lastWorkoutUUID:(id)uID lastWorkoutDate:(id)date lastWorkoutDistance:(double)self0 lastWorkoutDuration:(double)self1 lastWorkoutStartingPoint:(id)self2 bestWorkoutUUID:(id)self3 bestWorkoutDate:(id)self4 bestWorkoutDistance:(double)self5 bestWorkoutDuration:(double)self6 workoutRouteSnapshot:(id)self7 workoutRouteLabel:(id)self8
{
  dCopy = d;
  iDCopy = iD;
  uIDCopy = uID;
  dateCopy = date;
  pointCopy = point;
  uUIDCopy = uUID;
  workoutDateCopy = workoutDate;
  snapshotCopy = snapshot;
  labelCopy = label;
  v58.receiver = self;
  v58.super_class = HKRaceRouteCluster;
  v36 = [(HKRaceRouteCluster *)&v58 init];
  if (v36)
  {
    v37 = [dCopy copy];
    clusterUUID = v36->_clusterUUID;
    v36->_clusterUUID = v37;

    v39 = [iDCopy copy];
    workoutClusterUUID = v36->_workoutClusterUUID;
    v36->_workoutClusterUUID = v39;

    v36->_relevanceValue = value;
    v36->_clusterSize = size;
    v36->_workoutActivityType = type;
    v41 = [uIDCopy copy];
    lastWorkoutUUID = v36->_lastWorkoutUUID;
    v36->_lastWorkoutUUID = v41;

    v43 = [dateCopy copy];
    lastWorkoutDate = v36->_lastWorkoutDate;
    v36->_lastWorkoutDate = v43;

    v36->_lastWorkoutDistance = distance;
    v36->_lastWorkoutDuration = duration;
    v45 = [pointCopy copy];
    lastWorkoutStartingPoint = v36->_lastWorkoutStartingPoint;
    v36->_lastWorkoutStartingPoint = v45;

    v47 = [uUIDCopy copy];
    bestWorkoutUUID = v36->_bestWorkoutUUID;
    v36->_bestWorkoutUUID = v47;

    v49 = [workoutDateCopy copy];
    bestWorkoutDate = v36->_bestWorkoutDate;
    v36->_bestWorkoutDate = v49;

    v36->_bestWorkoutDistance = workoutDistance;
    v36->_bestWorkoutDuration = workoutDuration;
    v51 = [snapshotCopy copy];
    workoutRouteSnapshot = v36->_workoutRouteSnapshot;
    v36->_workoutRouteSnapshot = v51;

    v53 = [labelCopy copy];
    workoutRouteLabel = v36->_workoutRouteLabel;
    v36->_workoutRouteLabel = v53;
  }

  return v36;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v12 = -[NSUUID isEqual:](self->_clusterUUID, "isEqual:", *(v5 + 1)) && -[NSUUID isEqual:](self->_workoutClusterUUID, "isEqual:", *(v5 + 2)) && self->_relevanceValue == *(v5 + 3) && self->_clusterSize == *(v5 + 4) && self->_workoutActivityType == *(v5 + 5) && -[NSUUID isEqual:](self->_lastWorkoutUUID, "isEqual:", *(v5 + 6)) && -[NSDate isEqualToDate:](self->_lastWorkoutDate, "isEqualToDate:", *(v5 + 7)) && self->_lastWorkoutDistance == *(v5 + 8) && self->_lastWorkoutDuration == *(v5 + 9) && (-[CLLocation coordinate](self->_lastWorkoutStartingPoint, "coordinate"), v7 = v6, [*(v5 + 10) coordinate], v7 == v8) && (-[CLLocation coordinate](self->_lastWorkoutStartingPoint, "coordinate"), v10 = v9, objc_msgSend(*(v5 + 10), "coordinate"), v10 == v11) && -[NSUUID isEqual:](self->_bestWorkoutUUID, "isEqual:", *(v5 + 11)) && -[NSDate isEqualToDate:](self->_bestWorkoutDate, "isEqualToDate:", *(v5 + 12)) && self->_bestWorkoutDistance == *(v5 + 13) && self->_bestWorkoutDuration == *(v5 + 14) && -[NSData isEqualToData:](self->_workoutRouteSnapshot, "isEqualToData:", *(v5 + 15)) && -[NSString isEqualToString:](self->_workoutRouteLabel, "isEqualToString:", *(v5 + 16));
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v18 = [(NSUUID *)self->_clusterUUID hash];
  v17 = [(NSUUID *)self->_workoutClusterUUID hash];
  relevanceValue = self->_relevanceValue;
  v16 = *&self->_clusterSize;
  v4 = [(NSUUID *)self->_lastWorkoutUUID hash];
  v5 = [(NSDate *)self->_lastWorkoutDate hash];
  v15 = *&self->_lastWorkoutDistance;
  v6 = [(CLLocation *)self->_lastWorkoutStartingPoint hash];
  v7 = [(NSUUID *)self->_bestWorkoutUUID hash];
  v8 = [(NSDate *)self->_bestWorkoutDate hash];
  bestWorkoutDistance = self->_bestWorkoutDistance;
  bestWorkoutDuration = self->_bestWorkoutDuration;
  v11 = [(NSData *)self->_workoutRouteSnapshot hash];
  v12 = [(NSString *)self->_workoutRouteLabel hash];
  v13 = veorq_s8(v16, v15);
  return *&veor_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL)) ^ *&relevanceValue ^ *&bestWorkoutDistance ^ *&bestWorkoutDuration ^ v12 ^ v11 ^ v8 ^ v7 ^ v6 ^ v5 ^ v4 ^ v18 ^ v17;
}

- (HKRaceRouteCluster)initWithCoder:(id)coder
{
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = HKRaceRouteCluster;
  v5 = [(HKRaceRouteCluster *)&v30 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    clusterUUID = v5->_clusterUUID;
    v5->_clusterUUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cluster_uuid"];
    workoutClusterUUID = v5->_workoutClusterUUID;
    v5->_workoutClusterUUID = v8;

    [coderCopy decodeDoubleForKey:@"relevance"];
    v5->_relevanceValue = v10;
    v5->_clusterSize = [coderCopy decodeIntegerForKey:@"size"];
    v5->_workoutActivityType = [coderCopy decodeIntegerForKey:@"activity_type"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"last_workout_uuid"];
    lastWorkoutUUID = v5->_lastWorkoutUUID;
    v5->_lastWorkoutUUID = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"last_workout_date"];
    lastWorkoutDate = v5->_lastWorkoutDate;
    v5->_lastWorkoutDate = v13;

    [coderCopy decodeDoubleForKey:@"last_workout_distance"];
    v5->_lastWorkoutDistance = v15;
    [coderCopy decodeDoubleForKey:@"last_workout_duration"];
    v5->_lastWorkoutDuration = v16;
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"last_workout_starting_point"];
    lastWorkoutStartingPoint = v5->_lastWorkoutStartingPoint;
    v5->_lastWorkoutStartingPoint = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"best_workout_uuid"];
    bestWorkoutUUID = v5->_bestWorkoutUUID;
    v5->_bestWorkoutUUID = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"best_workout_date"];
    bestWorkoutDate = v5->_bestWorkoutDate;
    v5->_bestWorkoutDate = v21;

    [coderCopy decodeDoubleForKey:@"best_workout_distance"];
    v5->_bestWorkoutDistance = v23;
    [coderCopy decodeDoubleForKey:@"best_workout_duration"];
    v5->_bestWorkoutDuration = v24;
    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"route_snapshot"];
    workoutRouteSnapshot = v5->_workoutRouteSnapshot;
    v5->_workoutRouteSnapshot = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"route_label"];
    workoutRouteLabel = v5->_workoutRouteLabel;
    v5->_workoutRouteLabel = v27;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  clusterUUID = self->_clusterUUID;
  coderCopy = coder;
  [coderCopy encodeObject:clusterUUID forKey:@"uuid"];
  [coderCopy encodeObject:self->_workoutClusterUUID forKey:@"cluster_uuid"];
  [coderCopy encodeDouble:@"relevance" forKey:self->_relevanceValue];
  [coderCopy encodeInteger:self->_clusterSize forKey:@"size"];
  [coderCopy encodeInteger:self->_workoutActivityType forKey:@"activity_type"];
  [coderCopy encodeObject:self->_lastWorkoutUUID forKey:@"last_workout_uuid"];
  [coderCopy encodeObject:self->_lastWorkoutDate forKey:@"last_workout_date"];
  [coderCopy encodeDouble:@"last_workout_distance" forKey:self->_lastWorkoutDistance];
  [coderCopy encodeDouble:@"last_workout_duration" forKey:self->_lastWorkoutDuration];
  [coderCopy encodeObject:self->_lastWorkoutStartingPoint forKey:@"last_workout_starting_point"];
  [coderCopy encodeObject:self->_bestWorkoutUUID forKey:@"best_workout_uuid"];
  [coderCopy encodeObject:self->_bestWorkoutDate forKey:@"best_workout_date"];
  [coderCopy encodeDouble:@"best_workout_distance" forKey:self->_bestWorkoutDistance];
  [coderCopy encodeDouble:@"best_workout_duration" forKey:self->_bestWorkoutDuration];
  [coderCopy encodeObject:self->_workoutRouteSnapshot forKey:@"route_snapshot"];
  [coderCopy encodeObject:self->_workoutRouteLabel forKey:@"route_label"];
}

@end