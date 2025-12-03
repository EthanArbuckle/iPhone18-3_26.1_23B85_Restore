@interface HKWorkoutCluster
- (BOOL)isEqual:(id)equal;
- (HKWorkoutCluster)initWithCoder:(id)coder;
- (HKWorkoutCluster)initWithWorkoutUUIDs:(id)ds lastWorkoutUUID:(id)d bestWorkoutUUID:(id)iD relevanceValue:(double)value workoutRouteSnapshot:(id)snapshot workoutRouteLabel:(id)label;
- (id)_initWithUUID:(id)d workoutUUIDs:(id)ds lastWorkoutUUID:(id)iD bestWorkoutUUID:(id)uID relevanceValue:(double)value workoutRouteSnapshot:(id)snapshot workoutRouteLabel:(id)label;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKWorkoutCluster

- (HKWorkoutCluster)initWithWorkoutUUIDs:(id)ds lastWorkoutUUID:(id)d bestWorkoutUUID:(id)iD relevanceValue:(double)value workoutRouteSnapshot:(id)snapshot workoutRouteLabel:(id)label
{
  v14 = MEMORY[0x1E696AFB0];
  labelCopy = label;
  snapshotCopy = snapshot;
  iDCopy = iD;
  dCopy = d;
  dsCopy = ds;
  uUID = [v14 UUID];
  v21 = [(HKWorkoutCluster *)self _initWithUUID:uUID workoutUUIDs:dsCopy lastWorkoutUUID:dCopy bestWorkoutUUID:iDCopy relevanceValue:snapshotCopy workoutRouteSnapshot:labelCopy workoutRouteLabel:value];

  return v21;
}

- (id)_initWithUUID:(id)d workoutUUIDs:(id)ds lastWorkoutUUID:(id)iD bestWorkoutUUID:(id)uID relevanceValue:(double)value workoutRouteSnapshot:(id)snapshot workoutRouteLabel:(id)label
{
  dCopy = d;
  dsCopy = ds;
  iDCopy = iD;
  uIDCopy = uID;
  snapshotCopy = snapshot;
  labelCopy = label;
  v36.receiver = self;
  v36.super_class = HKWorkoutCluster;
  v22 = [(HKWorkoutCluster *)&v36 init];
  if (v22)
  {
    v23 = [dCopy copy];
    clusterUUID = v22->_clusterUUID;
    v22->_clusterUUID = v23;

    v25 = [dsCopy copy];
    workoutUUIDs = v22->_workoutUUIDs;
    v22->_workoutUUIDs = v25;

    v27 = [iDCopy copy];
    lastWorkoutUUID = v22->_lastWorkoutUUID;
    v22->_lastWorkoutUUID = v27;

    v29 = [uIDCopy copy];
    bestWorkoutUUID = v22->_bestWorkoutUUID;
    v22->_bestWorkoutUUID = v29;

    v22->_relevanceValue = value;
    v31 = [snapshotCopy copy];
    workoutRouteSnapshot = v22->_workoutRouteSnapshot;
    v22->_workoutRouteSnapshot = v31;

    v33 = [labelCopy copy];
    workoutRouteLabel = v22->_workoutRouteLabel;
    v22->_workoutRouteLabel = v33;
  }

  return v22;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (self->_workoutUUIDs)
    {
      v6 = [MEMORY[0x1E695DFD8] setWithArray:?];
    }

    else
    {
      v6 = 0;
    }

    if (*(v5 + 2))
    {
      v8 = [MEMORY[0x1E695DFD8] setWithArray:?];
      v9 = v8;
      v10 = 1;
      if (v6 && v8)
      {
        v10 = [v6 isEqualToSet:v8];
      }
    }

    else
    {
      v9 = 0;
      v10 = 1;
    }

    workoutRouteSnapshot = self->_workoutRouteSnapshot;
    if (workoutRouteSnapshot && *(v5 + 6))
    {
      v12 = ![(NSData *)workoutRouteSnapshot isEqualToData:?];
    }

    else
    {
      LOBYTE(v12) = 0;
    }

    v7 = ([(NSUUID *)self->_clusterUUID isEqual:*(v5 + 1)]& v10) == 1 && [(NSUUID *)self->_lastWorkoutUUID isEqual:*(v5 + 3)]&& [(NSUUID *)self->_bestWorkoutUUID isEqual:*(v5 + 4)]&& !((self->_relevanceValue != v5[5]) | v12 & 1) && [(NSString *)self->_workoutRouteLabel isEqualToString:*(v5 + 7)];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_clusterUUID hash];
  v4 = [(NSArray *)self->_workoutUUIDs hash]^ v3;
  v5 = [(NSUUID *)self->_lastWorkoutUUID hash];
  v6 = v4 ^ v5 ^ [(NSUUID *)self->_bestWorkoutUUID hash];
  relevanceValue = self->_relevanceValue;
  v8 = *&relevanceValue ^ [(NSData *)self->_workoutRouteSnapshot hash];
  return v6 ^ v8 ^ [(NSString *)self->_workoutRouteLabel hash];
}

- (id)description
{
  v3 = [(NSData *)self->_workoutRouteSnapshot length];
  if (self->_workoutRouteSnapshot)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"snapshot:%0.1lf kB, ", vcvtd_n_f64_u64(v3, 0xAuLL)];
  }

  else
  {
    v4 = &stru_1F05FF230;
  }

  if (self->_workoutUUIDs)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@", workouts:%@", self->_workoutUUIDs];
  }

  else
  {
    v5 = &stru_1F05FF230;
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p uuid:%@, last:%@, best:%@, relevance:%f, %@label:'%@'%@>", objc_opt_class(), self, self->_clusterUUID, self->_lastWorkoutUUID, self->_bestWorkoutUUID, *&self->_relevanceValue, v4, self->_workoutRouteLabel, v5, 0];

  return v6;
}

- (HKWorkoutCluster)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = HKWorkoutCluster;
  v5 = [(HKWorkoutCluster *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cluster_uuid"];
    clusterUUID = v5->_clusterUUID;
    v5->_clusterUUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"last_workout"];
    lastWorkoutUUID = v5->_lastWorkoutUUID;
    v5->_lastWorkoutUUID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"best_workout"];
    bestWorkoutUUID = v5->_bestWorkoutUUID;
    v5->_bestWorkoutUUID = v10;

    [coderCopy decodeDoubleForKey:@"relevance"];
    v5->_relevanceValue = v12;
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"route_snapshot"];
    workoutRouteSnapshot = v5->_workoutRouteSnapshot;
    v5->_workoutRouteSnapshot = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"route_label"];
    workoutRouteLabel = v5->_workoutRouteLabel;
    v5->_workoutRouteLabel = v15;

    v17 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"workout_uuids"];
    v18 = [v17 hk_map:&__block_literal_global_24];
    workoutUUIDs = v5->_workoutUUIDs;
    v5->_workoutUUIDs = v18;
  }

  return v5;
}

id __34__HKWorkoutCluster_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AFB0];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  clusterUUID = self->_clusterUUID;
  coderCopy = coder;
  [coderCopy encodeObject:clusterUUID forKey:@"cluster_uuid"];
  [coderCopy encodeObject:self->_lastWorkoutUUID forKey:@"last_workout"];
  [coderCopy encodeObject:self->_bestWorkoutUUID forKey:@"best_workout"];
  [coderCopy encodeDouble:@"relevance" forKey:self->_relevanceValue];
  [coderCopy encodeObject:self->_workoutRouteSnapshot forKey:@"route_snapshot"];
  [coderCopy encodeObject:self->_workoutRouteLabel forKey:@"route_label"];
  v6 = [(NSArray *)self->_workoutUUIDs hk_map:&__block_literal_global_37];
  [coderCopy encodeObject:v6 forKey:@"workout_uuids"];
}

@end