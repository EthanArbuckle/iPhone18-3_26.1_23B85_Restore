@interface VNClusterObservation
- (BOOL)isEqual:(id)equal;
- (VNClusterObservation)initWithCoder:(id)coder;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNClusterObservation

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v26 = 1;
  }

  else
  {
    v28.receiver = self;
    v28.super_class = VNClusterObservation;
    if ([(VNObservation *)&v28 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = equalCopy;
      clusters = [(VNClusterObservation *)self clusters];
      clusters2 = [(VNClusterObservation *)v5 clusters];
      v8 = VisionCoreEqualOrNilObjects();

      if (v8 & 1) != 0 && ([(VNClusterObservation *)self suggestionsForCluster], v9 = objc_claimAutoreleasedReturnValue(), [(VNClusterObservation *)v5 suggestionsForCluster], v10 = objc_claimAutoreleasedReturnValue(), v11 = VisionCoreEqualOrNilObjects(), v10, v9, (v11) && ([(VNClusterObservation *)self clusterState], v12 = objc_claimAutoreleasedReturnValue(), [(VNClusterObservation *)v5 clusterState], v13 = objc_claimAutoreleasedReturnValue(), v14 = VisionCoreEqualOrNilObjects(), v13, v12, (v14) && ([(VNClusterObservation *)self clusteredFaceIds], v15 = objc_claimAutoreleasedReturnValue(), [(VNClusterObservation *)v5 clusteredFaceIds], v16 = objc_claimAutoreleasedReturnValue(), v17 = VisionCoreEqualOrNilObjects(), v16, v15, (v17) && ([(VNClusterObservation *)self groupedClusteredFaceIdsForCluster], v18 = objc_claimAutoreleasedReturnValue(), [(VNClusterObservation *)v5 groupedClusteredFaceIdsForCluster], v19 = objc_claimAutoreleasedReturnValue(), v20 = VisionCoreEqualOrNilObjects(), v19, v18, (v20) && ([(VNClusterObservation *)self distance], v21 = objc_claimAutoreleasedReturnValue(), [(VNClusterObservation *)v5 distance], v22 = objc_claimAutoreleasedReturnValue(), v23 = VisionCoreEqualOrNilObjects(), v22, v21, (v23))
      {
        distancesById = [(VNClusterObservation *)self distancesById];
        distancesById2 = [(VNClusterObservation *)v5 distancesById];
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
  vn_cloneObject = [(VNObservation *)&v19 vn_cloneObject];
  if (vn_cloneObject)
  {
    v4 = [(NSArray *)self->_clusters copy];
    v5 = vn_cloneObject[12];
    vn_cloneObject[12] = v4;

    v6 = [(NSArray *)self->_suggestionsForCluster copy];
    v7 = vn_cloneObject[13];
    vn_cloneObject[13] = v6;

    v8 = [(NSData *)self->_clusterState copy];
    v9 = vn_cloneObject[14];
    vn_cloneObject[14] = v8;

    v10 = [(NSSet *)self->_clusteredFaceIds copy];
    v11 = vn_cloneObject[15];
    vn_cloneObject[15] = v10;

    v12 = [(NSArray *)self->_groupedClusteredFaceIdsForCluster copy];
    v13 = vn_cloneObject[16];
    vn_cloneObject[16] = v12;

    v14 = [(NSNumber *)self->_distance copy];
    v15 = vn_cloneObject[17];
    vn_cloneObject[17] = v14;

    v16 = [(NSDictionary *)self->_distancesById copy];
    v17 = vn_cloneObject[18];
    vn_cloneObject[18] = v16;
  }

  return vn_cloneObject;
}

- (unint64_t)hash
{
  v19.receiver = self;
  v19.super_class = VNClusterObservation;
  v3 = [(VNObservation *)&v19 hash];
  clusters = [(VNClusterObservation *)self clusters];
  v5 = [clusters hash];

  suggestionsForCluster = [(VNClusterObservation *)self suggestionsForCluster];
  v7 = [suggestionsForCluster hash];

  clusterState = [(VNClusterObservation *)self clusterState];
  v9 = [clusterState hash];

  clusteredFaceIds = [(VNClusterObservation *)self clusteredFaceIds];
  v11 = [clusteredFaceIds hash];

  groupedClusteredFaceIdsForCluster = [(VNClusterObservation *)self groupedClusteredFaceIdsForCluster];
  v13 = [groupedClusteredFaceIdsForCluster hash];

  distance = [(VNClusterObservation *)self distance];
  v15 = [distance hash];

  distancesById = [(VNClusterObservation *)self distancesById];
  v17 = [distancesById hash] ^ __ROR8__(v15 ^ __ROR8__(v13 ^ __ROR8__(v11 ^ __ROR8__(v9 ^ __ROR8__(v7 ^ __ROR8__(v5 ^ __ROR8__(v3, 51), 51), 51), 51), 51), 51), 51);

  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = VNClusterObservation;
  [(VNObservation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_clusters forKey:@"clusters"];
  [coderCopy encodeObject:self->_suggestionsForCluster forKey:@"suggestions"];
  [coderCopy encodeObject:self->_clusterState forKey:@"clusterState"];
  [coderCopy encodeObject:self->_clusteredFaceIds forKey:@"clusteredFaceIDs"];
  [coderCopy encodeObject:self->_groupedClusteredFaceIdsForCluster forKey:@"groupedClusteredFaceIDs"];
  [coderCopy encodeObject:self->_distance forKey:@"level0Distance"];
  [coderCopy encodeObject:self->_distancesById forKey:@"distancesByID"];
}

- (VNClusterObservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v34.receiver = self;
  v34.super_class = VNClusterObservation;
  v5 = [(VNObservation *)&v34 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"clusters"];
    clusters = v5->_clusters;
    v5->_clusters = v12;

    v14 = [coderCopy decodeObjectOfClasses:v8 forKey:@"suggestions"];
    suggestionsForCluster = v5->_suggestionsForCluster;
    v5->_suggestionsForCluster = v14;

    v16 = [coderCopy decodeObjectOfClasses:v8 forKey:@"groupedClusteredFaceIDs"];
    groupedClusteredFaceIdsForCluster = v5->_groupedClusteredFaceIdsForCluster;
    v5->_groupedClusteredFaceIdsForCluster = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clusterState"];
    clusterState = v5->_clusterState;
    v5->_clusterState = v18;

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"clusteredFaceIDs"];
    clusteredFaceIds = v5->_clusteredFaceIds;
    v5->_clusteredFaceIds = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"level0Distance"];
    distance = v5->_distance;
    v5->_distance = v25;

    v27 = MEMORY[0x1E695DFD8];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [coderCopy decodeObjectOfClasses:v29 forKey:@"distancesByID"];
    distancesById = v5->_distancesById;
    v5->_distancesById = v30;

    v32 = v5;
  }

  return v5;
}

@end