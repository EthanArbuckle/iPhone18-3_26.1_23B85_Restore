@interface VNClustererOptions
- (VNClustererOptions)initWithType:(id)type cachePath:(id)path state:(id)state threshold:(float)threshold requestRevision:(unint64_t)revision;
- (VNClustererOptions)initWithType:(id)type cachePath:(id)path state:(id)state threshold:(float)threshold torsoThreshold:(float)torsoThreshold requestRevision:(unint64_t)revision torsoprintRequestRevision:(unint64_t)requestRevision;
@end

@implementation VNClustererOptions

- (VNClustererOptions)initWithType:(id)type cachePath:(id)path state:(id)state threshold:(float)threshold torsoThreshold:(float)torsoThreshold requestRevision:(unint64_t)revision torsoprintRequestRevision:(unint64_t)requestRevision
{
  typeCopy = type;
  pathCopy = path;
  stateCopy = state;
  v23.receiver = self;
  v23.super_class = VNClustererOptions;
  v20 = [(VNClustererOptions *)&v23 init];
  if (!v20)
  {
    goto LABEL_6;
  }

  v21 = 0;
  if (typeCopy && pathCopy)
  {
    if ([typeCopy isEqualToString:@"VNClusteringAlgorithm_GreedyWithTorso"])
    {
      objc_storeStrong(&v20->_type, type);
      objc_storeStrong(&v20->_cachePath, path);
      v20->_threshold = threshold;
      objc_storeStrong(&v20->_state, state);
      v20->_torsoThreshold = torsoThreshold;
      v20->_requestRevision = revision;
      v20->_torsoprintRequestRevision = requestRevision;
      v21 = v20;
      goto LABEL_7;
    }

LABEL_6:
    v21 = 0;
  }

LABEL_7:

  return v21;
}

- (VNClustererOptions)initWithType:(id)type cachePath:(id)path state:(id)state threshold:(float)threshold requestRevision:(unint64_t)revision
{
  typeCopy = type;
  pathCopy = path;
  stateCopy = state;
  v19.receiver = self;
  v19.super_class = VNClustererOptions;
  v16 = [(VNClustererOptions *)&v19 init];
  if (!v16)
  {
    goto LABEL_6;
  }

  v17 = 0;
  if (typeCopy && pathCopy)
  {
    if ([typeCopy isEqualToString:@"VNClusteringAlgorithm_Greedy"])
    {
      objc_storeStrong(&v16->_type, type);
      objc_storeStrong(&v16->_cachePath, path);
      v16->_threshold = threshold;
      objc_storeStrong(&v16->_state, state);
      v16->_torsoThreshold = 0.0;
      v16->_requestRevision = revision;
      v16->_torsoprintRequestRevision = 1;
      v17 = v16;
      goto LABEL_7;
    }

LABEL_6:
    v17 = 0;
  }

LABEL_7:

  return v17;
}

@end