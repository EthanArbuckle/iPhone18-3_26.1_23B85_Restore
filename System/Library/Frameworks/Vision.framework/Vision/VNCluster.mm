@interface VNCluster
- (BOOL)isEqual:(id)equal;
- (VNCluster)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNCluster

- (VNCluster)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (![coderCopy decodeIntegerForKey:@"vncluster"])
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vncObjects"];
    objects = self->_objects;
    self->_objects = v5;

    self->_clusterId = [coderCopy decodeIntegerForKey:@"vncCId"];
    v7 = [coderCopy decodeIntegerForKey:@"vncTotObjCount"];
    self->_totalObjectCount = v7;
    if (v7 >= [(NSArray *)self->_objects count])
    {
      self->_shouldUpdateRepresentative = [coderCopy decodeIntegerForKey:@"vncRepUpdate"] != 0;
      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vncRepIds"];
      suggestedIdsForRepresentative = self->_suggestedIdsForRepresentative;
      self->_suggestedIdsForRepresentative = v12;

      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vncRepnessById"];
      representativenessById = self->_representativenessById;
      self->_representativenessById = v14;

      selfCopy = self;
      goto LABEL_5;
    }

    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Data integrity check failed when unarchiving an object of type: %@", objc_opt_class()];
    v9 = [VNError errorForInternalErrorWithLocalizedDescription:v8];
    [coderCopy failWithError:v9];
  }

  selfCopy = 0;
LABEL_5:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:0 forKey:@"vncluster"];
  [coderCopy encodeObject:self->_objects forKey:@"vncObjects"];
  [coderCopy encodeInteger:self->_clusterId forKey:@"vncCId"];
  [coderCopy encodeInteger:self->_totalObjectCount forKey:@"vncTotObjCount"];
  [coderCopy encodeInteger:self->_shouldUpdateRepresentative forKey:@"vncRepUpdate"];
  [coderCopy encodeObject:self->_suggestedIdsForRepresentative forKey:@"vncRepIds"];
  [coderCopy encodeObject:self->_representativenessById forKey:@"vncRepnessById"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    objects = [(VNCluster *)self objects];
    v6 = [objects copy];
    [v4 setObjects:v6];

    [v4 setClusterId:{-[VNCluster clusterId](self, "clusterId")}];
    [v4 setTotalObjectCount:{-[VNCluster totalObjectCount](self, "totalObjectCount")}];
    [v4 setShouldUpdateRepresentative:{-[VNCluster shouldUpdateRepresentative](self, "shouldUpdateRepresentative")}];
    suggestedIdsForRepresentative = [(VNCluster *)self suggestedIdsForRepresentative];
    v8 = [suggestedIdsForRepresentative copy];
    [v4 setSuggestedIdsForRepresentative:v8];

    representativenessById = [(VNCluster *)self representativenessById];
    v10 = [representativenessById copy];
    [v4 setRepresentativenessById:v10];
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      clusterId = [(VNCluster *)self clusterId];
      if (clusterId == [(VNCluster *)v5 clusterId]&& (v7 = [(VNCluster *)self totalObjectCount], v7 == [(VNCluster *)v5 totalObjectCount]) && ([(VNCluster *)self objects], v8 = objc_claimAutoreleasedReturnValue(), [(VNCluster *)v5 objects], v9 = objc_claimAutoreleasedReturnValue(), v10 = VisionCoreEqualOrNilObjects(), v9, v8, (v10 & 1) != 0) && (v11 = [(VNCluster *)self shouldUpdateRepresentative], v11 == [(VNCluster *)v5 shouldUpdateRepresentative]) && ([(VNCluster *)self suggestedIdsForRepresentative], v12 = objc_claimAutoreleasedReturnValue(), [(VNCluster *)v5 suggestedIdsForRepresentative], v13 = objc_claimAutoreleasedReturnValue(), v14 = VisionCoreEqualOrNilObjects(), v13, v12, (v14 & 1) != 0))
      {
        representativenessById = [(VNCluster *)self representativenessById];
        representativenessById2 = [(VNCluster *)v5 representativenessById];
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
  clusterId = [(VNCluster *)self clusterId];
  totalObjectCount = [(VNCluster *)self totalObjectCount];
  objects = [(VNCluster *)self objects];
  v6 = [objects hash];

  shouldUpdateRepresentative = [(VNCluster *)self shouldUpdateRepresentative];
  suggestedIdsForRepresentative = [(VNCluster *)self suggestedIdsForRepresentative];
  v9 = [suggestedIdsForRepresentative hash];

  representativenessById = [(VNCluster *)self representativenessById];
  v11 = [representativenessById hash];
  v12 = 21845;
  if (shouldUpdateRepresentative)
  {
    v12 = 43690;
  }

  v13 = v11 ^ __ROR8__(v9 ^ __ROR8__(v12 ^ __ROR8__(v6 ^ __ROR8__(totalObjectCount ^ __ROR8__(clusterId, 51), 51), 51), 51), 51);

  return v13;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithCapacity:1024];
  [v3 appendString:@"{\n"];
  clusterId = [(VNCluster *)self clusterId];
  if (clusterId)
  {
    [v3 appendFormat:@"  clusterId = %lu;\n", clusterId];
  }

  totalObjectCount = [(VNCluster *)self totalObjectCount];
  if (totalObjectCount)
  {
    [v3 appendFormat:@"  totalObjCount = %lu;\n", totalObjectCount];
  }

  objects = [(VNCluster *)self objects];
  if ([objects count])
  {
    [v3 appendFormat:@"  objects = %@;\n", objects];
  }

  shouldUpdateRepresentative = [(VNCluster *)self shouldUpdateRepresentative];
  v8 = shouldUpdateRepresentative;
  [v3 appendFormat:@"  shouldUpdateRep = %d;\n", shouldUpdateRepresentative];
  if (v8)
  {
    suggestedIdsForRepresentative = [(VNCluster *)self suggestedIdsForRepresentative];
    [v3 appendFormat:@"  suggestedIdsForRep = %@;\n", suggestedIdsForRepresentative];
  }

  representativenessById = [(VNCluster *)self representativenessById];
  if ([representativenessById count])
  {
    [v3 appendFormat:@"  representativenessById = %@;\n", representativenessById];
  }

  [v3 appendString:@"}\n"];

  return v3;
}

@end