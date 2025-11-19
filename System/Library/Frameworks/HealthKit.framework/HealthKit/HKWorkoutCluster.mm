@interface HKWorkoutCluster
- (BOOL)isEqual:(id)a3;
- (HKWorkoutCluster)initWithCoder:(id)a3;
- (HKWorkoutCluster)initWithWorkoutUUIDs:(id)a3 lastWorkoutUUID:(id)a4 bestWorkoutUUID:(id)a5 relevanceValue:(double)a6 workoutRouteSnapshot:(id)a7 workoutRouteLabel:(id)a8;
- (id)_initWithUUID:(id)a3 workoutUUIDs:(id)a4 lastWorkoutUUID:(id)a5 bestWorkoutUUID:(id)a6 relevanceValue:(double)a7 workoutRouteSnapshot:(id)a8 workoutRouteLabel:(id)a9;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKWorkoutCluster

- (HKWorkoutCluster)initWithWorkoutUUIDs:(id)a3 lastWorkoutUUID:(id)a4 bestWorkoutUUID:(id)a5 relevanceValue:(double)a6 workoutRouteSnapshot:(id)a7 workoutRouteLabel:(id)a8
{
  v14 = MEMORY[0x1E696AFB0];
  v15 = a8;
  v16 = a7;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [v14 UUID];
  v21 = [(HKWorkoutCluster *)self _initWithUUID:v20 workoutUUIDs:v19 lastWorkoutUUID:v18 bestWorkoutUUID:v17 relevanceValue:v16 workoutRouteSnapshot:v15 workoutRouteLabel:a6];

  return v21;
}

- (id)_initWithUUID:(id)a3 workoutUUIDs:(id)a4 lastWorkoutUUID:(id)a5 bestWorkoutUUID:(id)a6 relevanceValue:(double)a7 workoutRouteSnapshot:(id)a8 workoutRouteLabel:(id)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  v21 = a9;
  v36.receiver = self;
  v36.super_class = HKWorkoutCluster;
  v22 = [(HKWorkoutCluster *)&v36 init];
  if (v22)
  {
    v23 = [v16 copy];
    clusterUUID = v22->_clusterUUID;
    v22->_clusterUUID = v23;

    v25 = [v17 copy];
    workoutUUIDs = v22->_workoutUUIDs;
    v22->_workoutUUIDs = v25;

    v27 = [v18 copy];
    lastWorkoutUUID = v22->_lastWorkoutUUID;
    v22->_lastWorkoutUUID = v27;

    v29 = [v19 copy];
    bestWorkoutUUID = v22->_bestWorkoutUUID;
    v22->_bestWorkoutUUID = v29;

    v22->_relevanceValue = a7;
    v31 = [v20 copy];
    workoutRouteSnapshot = v22->_workoutRouteSnapshot;
    v22->_workoutRouteSnapshot = v31;

    v33 = [v21 copy];
    workoutRouteLabel = v22->_workoutRouteLabel;
    v22->_workoutRouteLabel = v33;
  }

  return v22;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

- (HKWorkoutCluster)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = HKWorkoutCluster;
  v5 = [(HKWorkoutCluster *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cluster_uuid"];
    clusterUUID = v5->_clusterUUID;
    v5->_clusterUUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"last_workout"];
    lastWorkoutUUID = v5->_lastWorkoutUUID;
    v5->_lastWorkoutUUID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"best_workout"];
    bestWorkoutUUID = v5->_bestWorkoutUUID;
    v5->_bestWorkoutUUID = v10;

    [v4 decodeDoubleForKey:@"relevance"];
    v5->_relevanceValue = v12;
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"route_snapshot"];
    workoutRouteSnapshot = v5->_workoutRouteSnapshot;
    v5->_workoutRouteSnapshot = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"route_label"];
    workoutRouteLabel = v5->_workoutRouteLabel;
    v5->_workoutRouteLabel = v15;

    v17 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"workout_uuids"];
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

- (void)encodeWithCoder:(id)a3
{
  clusterUUID = self->_clusterUUID;
  v5 = a3;
  [v5 encodeObject:clusterUUID forKey:@"cluster_uuid"];
  [v5 encodeObject:self->_lastWorkoutUUID forKey:@"last_workout"];
  [v5 encodeObject:self->_bestWorkoutUUID forKey:@"best_workout"];
  [v5 encodeDouble:@"relevance" forKey:self->_relevanceValue];
  [v5 encodeObject:self->_workoutRouteSnapshot forKey:@"route_snapshot"];
  [v5 encodeObject:self->_workoutRouteLabel forKey:@"route_label"];
  v6 = [(NSArray *)self->_workoutUUIDs hk_map:&__block_literal_global_37];
  [v5 encodeObject:v6 forKey:@"workout_uuids"];
}

@end