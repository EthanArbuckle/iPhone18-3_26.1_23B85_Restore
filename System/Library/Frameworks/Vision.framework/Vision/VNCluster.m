@interface VNCluster
- (BOOL)isEqual:(id)a3;
- (VNCluster)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNCluster

- (VNCluster)initWithCoder:(id)a3
{
  v4 = a3;
  if (![v4 decodeIntegerForKey:@"vncluster"])
  {
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vncObjects"];
    objects = self->_objects;
    self->_objects = v5;

    self->_clusterId = [v4 decodeIntegerForKey:@"vncCId"];
    v7 = [v4 decodeIntegerForKey:@"vncTotObjCount"];
    self->_totalObjectCount = v7;
    if (v7 >= [(NSArray *)self->_objects count])
    {
      self->_shouldUpdateRepresentative = [v4 decodeIntegerForKey:@"vncRepUpdate"] != 0;
      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vncRepIds"];
      suggestedIdsForRepresentative = self->_suggestedIdsForRepresentative;
      self->_suggestedIdsForRepresentative = v12;

      v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vncRepnessById"];
      representativenessById = self->_representativenessById;
      self->_representativenessById = v14;

      v10 = self;
      goto LABEL_5;
    }

    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Data integrity check failed when unarchiving an object of type: %@", objc_opt_class()];
    v9 = [VNError errorForInternalErrorWithLocalizedDescription:v8];
    [v4 failWithError:v9];
  }

  v10 = 0;
LABEL_5:

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:0 forKey:@"vncluster"];
  [v4 encodeObject:self->_objects forKey:@"vncObjects"];
  [v4 encodeInteger:self->_clusterId forKey:@"vncCId"];
  [v4 encodeInteger:self->_totalObjectCount forKey:@"vncTotObjCount"];
  [v4 encodeInteger:self->_shouldUpdateRepresentative forKey:@"vncRepUpdate"];
  [v4 encodeObject:self->_suggestedIdsForRepresentative forKey:@"vncRepIds"];
  [v4 encodeObject:self->_representativenessById forKey:@"vncRepnessById"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v4)
  {
    v5 = [(VNCluster *)self objects];
    v6 = [v5 copy];
    [v4 setObjects:v6];

    [v4 setClusterId:{-[VNCluster clusterId](self, "clusterId")}];
    [v4 setTotalObjectCount:{-[VNCluster totalObjectCount](self, "totalObjectCount")}];
    [v4 setShouldUpdateRepresentative:{-[VNCluster shouldUpdateRepresentative](self, "shouldUpdateRepresentative")}];
    v7 = [(VNCluster *)self suggestedIdsForRepresentative];
    v8 = [v7 copy];
    [v4 setSuggestedIdsForRepresentative:v8];

    v9 = [(VNCluster *)self representativenessById];
    v10 = [v9 copy];
    [v4 setRepresentativenessById:v10];
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VNCluster *)self clusterId];
      if (v6 == [(VNCluster *)v5 clusterId]&& (v7 = [(VNCluster *)self totalObjectCount], v7 == [(VNCluster *)v5 totalObjectCount]) && ([(VNCluster *)self objects], v8 = objc_claimAutoreleasedReturnValue(), [(VNCluster *)v5 objects], v9 = objc_claimAutoreleasedReturnValue(), v10 = VisionCoreEqualOrNilObjects(), v9, v8, (v10 & 1) != 0) && (v11 = [(VNCluster *)self shouldUpdateRepresentative], v11 == [(VNCluster *)v5 shouldUpdateRepresentative]) && ([(VNCluster *)self suggestedIdsForRepresentative], v12 = objc_claimAutoreleasedReturnValue(), [(VNCluster *)v5 suggestedIdsForRepresentative], v13 = objc_claimAutoreleasedReturnValue(), v14 = VisionCoreEqualOrNilObjects(), v13, v12, (v14 & 1) != 0))
      {
        v15 = [(VNCluster *)self representativenessById];
        v16 = [(VNCluster *)v5 representativenessById];
        v17 = VisionCoreEqualOrNilObjects();
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (unint64_t)hash
{
  v3 = [(VNCluster *)self clusterId];
  v4 = [(VNCluster *)self totalObjectCount];
  v5 = [(VNCluster *)self objects];
  v6 = [v5 hash];

  v7 = [(VNCluster *)self shouldUpdateRepresentative];
  v8 = [(VNCluster *)self suggestedIdsForRepresentative];
  v9 = [v8 hash];

  v10 = [(VNCluster *)self representativenessById];
  v11 = [v10 hash];
  v12 = 21845;
  if (v7)
  {
    v12 = 43690;
  }

  v13 = v11 ^ __ROR8__(v9 ^ __ROR8__(v12 ^ __ROR8__(v6 ^ __ROR8__(v4 ^ __ROR8__(v3, 51), 51), 51), 51), 51);

  return v13;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithCapacity:1024];
  [v3 appendString:@"{\n"];
  v4 = [(VNCluster *)self clusterId];
  if (v4)
  {
    [v3 appendFormat:@"  clusterId = %lu;\n", v4];
  }

  v5 = [(VNCluster *)self totalObjectCount];
  if (v5)
  {
    [v3 appendFormat:@"  totalObjCount = %lu;\n", v5];
  }

  v6 = [(VNCluster *)self objects];
  if ([v6 count])
  {
    [v3 appendFormat:@"  objects = %@;\n", v6];
  }

  v7 = [(VNCluster *)self shouldUpdateRepresentative];
  v8 = v7;
  [v3 appendFormat:@"  shouldUpdateRep = %d;\n", v7];
  if (v8)
  {
    v9 = [(VNCluster *)self suggestedIdsForRepresentative];
    [v3 appendFormat:@"  suggestedIdsForRep = %@;\n", v9];
  }

  v10 = [(VNCluster *)self representativenessById];
  if ([v10 count])
  {
    [v3 appendFormat:@"  representativenessById = %@;\n", v10];
  }

  [v3 appendString:@"}\n"];

  return v3;
}

@end