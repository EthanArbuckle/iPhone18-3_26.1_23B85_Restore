@interface VNClusterObservation
- (BOOL)isEqual:(id)a3;
- (VNClusterObservation)initWithCoder:(id)a3;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNClusterObservation

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v26 = 1;
  }

  else
  {
    v28.receiver = self;
    v28.super_class = VNClusterObservation;
    if ([(VNObservation *)&v28 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = v4;
      v6 = [(VNClusterObservation *)self clusters];
      v7 = [(VNClusterObservation *)v5 clusters];
      v8 = VisionCoreEqualOrNilObjects();

      if (v8 & 1) != 0 && ([(VNClusterObservation *)self suggestionsForCluster], v9 = objc_claimAutoreleasedReturnValue(), [(VNClusterObservation *)v5 suggestionsForCluster], v10 = objc_claimAutoreleasedReturnValue(), v11 = VisionCoreEqualOrNilObjects(), v10, v9, (v11) && ([(VNClusterObservation *)self clusterState], v12 = objc_claimAutoreleasedReturnValue(), [(VNClusterObservation *)v5 clusterState], v13 = objc_claimAutoreleasedReturnValue(), v14 = VisionCoreEqualOrNilObjects(), v13, v12, (v14) && ([(VNClusterObservation *)self clusteredFaceIds], v15 = objc_claimAutoreleasedReturnValue(), [(VNClusterObservation *)v5 clusteredFaceIds], v16 = objc_claimAutoreleasedReturnValue(), v17 = VisionCoreEqualOrNilObjects(), v16, v15, (v17) && ([(VNClusterObservation *)self groupedClusteredFaceIdsForCluster], v18 = objc_claimAutoreleasedReturnValue(), [(VNClusterObservation *)v5 groupedClusteredFaceIdsForCluster], v19 = objc_claimAutoreleasedReturnValue(), v20 = VisionCoreEqualOrNilObjects(), v19, v18, (v20) && ([(VNClusterObservation *)self distance], v21 = objc_claimAutoreleasedReturnValue(), [(VNClusterObservation *)v5 distance], v22 = objc_claimAutoreleasedReturnValue(), v23 = VisionCoreEqualOrNilObjects(), v22, v21, (v23))
      {
        v24 = [(VNClusterObservation *)self distancesById];
        v25 = [(VNClusterObservation *)v5 distancesById];
        v26 = VisionCoreEqualOrNilObjects();
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }
  }

  return v26;
}

- (id)vn_cloneObject
{
  v19.receiver = self;
  v19.super_class = VNClusterObservation;
  v3 = [(VNObservation *)&v19 vn_cloneObject];
  if (v3)
  {
    v4 = [(NSArray *)self->_clusters copy];
    v5 = v3[12];
    v3[12] = v4;

    v6 = [(NSArray *)self->_suggestionsForCluster copy];
    v7 = v3[13];
    v3[13] = v6;

    v8 = [(NSData *)self->_clusterState copy];
    v9 = v3[14];
    v3[14] = v8;

    v10 = [(NSSet *)self->_clusteredFaceIds copy];
    v11 = v3[15];
    v3[15] = v10;

    v12 = [(NSArray *)self->_groupedClusteredFaceIdsForCluster copy];
    v13 = v3[16];
    v3[16] = v12;

    v14 = [(NSNumber *)self->_distance copy];
    v15 = v3[17];
    v3[17] = v14;

    v16 = [(NSDictionary *)self->_distancesById copy];
    v17 = v3[18];
    v3[18] = v16;
  }

  return v3;
}

- (unint64_t)hash
{
  v19.receiver = self;
  v19.super_class = VNClusterObservation;
  v3 = [(VNObservation *)&v19 hash];
  v4 = [(VNClusterObservation *)self clusters];
  v5 = [v4 hash];

  v6 = [(VNClusterObservation *)self suggestionsForCluster];
  v7 = [v6 hash];

  v8 = [(VNClusterObservation *)self clusterState];
  v9 = [v8 hash];

  v10 = [(VNClusterObservation *)self clusteredFaceIds];
  v11 = [v10 hash];

  v12 = [(VNClusterObservation *)self groupedClusteredFaceIdsForCluster];
  v13 = [v12 hash];

  v14 = [(VNClusterObservation *)self distance];
  v15 = [v14 hash];

  v16 = [(VNClusterObservation *)self distancesById];
  v17 = [v16 hash] ^ __ROR8__(v15 ^ __ROR8__(v13 ^ __ROR8__(v11 ^ __ROR8__(v9 ^ __ROR8__(v7 ^ __ROR8__(v5 ^ __ROR8__(v3, 51), 51), 51), 51), 51), 51), 51);

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = VNClusterObservation;
  [(VNObservation *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_clusters forKey:@"clusters"];
  [v4 encodeObject:self->_suggestionsForCluster forKey:@"suggestions"];
  [v4 encodeObject:self->_clusterState forKey:@"clusterState"];
  [v4 encodeObject:self->_clusteredFaceIds forKey:@"clusteredFaceIDs"];
  [v4 encodeObject:self->_groupedClusteredFaceIdsForCluster forKey:@"groupedClusteredFaceIDs"];
  [v4 encodeObject:self->_distance forKey:@"level0Distance"];
  [v4 encodeObject:self->_distancesById forKey:@"distancesByID"];
}

- (VNClusterObservation)initWithCoder:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = VNClusterObservation;
  v5 = [(VNObservation *)&v34 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"clusters"];
    clusters = v5->_clusters;
    v5->_clusters = v12;

    v14 = [v4 decodeObjectOfClasses:v8 forKey:@"suggestions"];
    suggestionsForCluster = v5->_suggestionsForCluster;
    v5->_suggestionsForCluster = v14;

    v16 = [v4 decodeObjectOfClasses:v8 forKey:@"groupedClusteredFaceIDs"];
    groupedClusteredFaceIdsForCluster = v5->_groupedClusteredFaceIdsForCluster;
    v5->_groupedClusteredFaceIdsForCluster = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clusterState"];
    clusterState = v5->_clusterState;
    v5->_clusterState = v18;

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"clusteredFaceIDs"];
    clusteredFaceIds = v5->_clusteredFaceIds;
    v5->_clusteredFaceIds = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"level0Distance"];
    distance = v5->_distance;
    v5->_distance = v25;

    v27 = MEMORY[0x1E695DFD8];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [v4 decodeObjectOfClasses:v29 forKey:@"distancesByID"];
    distancesById = v5->_distancesById;
    v5->_distancesById = v30;

    v32 = v5;
  }

  return v5;
}

@end