@interface VNClustererOptions
- (VNClustererOptions)initWithType:(id)a3 cachePath:(id)a4 state:(id)a5 threshold:(float)a6 requestRevision:(unint64_t)a7;
- (VNClustererOptions)initWithType:(id)a3 cachePath:(id)a4 state:(id)a5 threshold:(float)a6 torsoThreshold:(float)a7 requestRevision:(unint64_t)a8 torsoprintRequestRevision:(unint64_t)a9;
@end

@implementation VNClustererOptions

- (VNClustererOptions)initWithType:(id)a3 cachePath:(id)a4 state:(id)a5 threshold:(float)a6 torsoThreshold:(float)a7 requestRevision:(unint64_t)a8 torsoprintRequestRevision:(unint64_t)a9
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v23.receiver = self;
  v23.super_class = VNClustererOptions;
  v20 = [(VNClustererOptions *)&v23 init];
  if (!v20)
  {
    goto LABEL_6;
  }

  v21 = 0;
  if (v17 && v18)
  {
    if ([v17 isEqualToString:@"VNClusteringAlgorithm_GreedyWithTorso"])
    {
      objc_storeStrong(&v20->_type, a3);
      objc_storeStrong(&v20->_cachePath, a4);
      v20->_threshold = a6;
      objc_storeStrong(&v20->_state, a5);
      v20->_torsoThreshold = a7;
      v20->_requestRevision = a8;
      v20->_torsoprintRequestRevision = a9;
      v21 = v20;
      goto LABEL_7;
    }

LABEL_6:
    v21 = 0;
  }

LABEL_7:

  return v21;
}

- (VNClustererOptions)initWithType:(id)a3 cachePath:(id)a4 state:(id)a5 threshold:(float)a6 requestRevision:(unint64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v19.receiver = self;
  v19.super_class = VNClustererOptions;
  v16 = [(VNClustererOptions *)&v19 init];
  if (!v16)
  {
    goto LABEL_6;
  }

  v17 = 0;
  if (v13 && v14)
  {
    if ([v13 isEqualToString:@"VNClusteringAlgorithm_Greedy"])
    {
      objc_storeStrong(&v16->_type, a3);
      objc_storeStrong(&v16->_cachePath, a4);
      v16->_threshold = a6;
      objc_storeStrong(&v16->_state, a5);
      v16->_torsoThreshold = 0.0;
      v16->_requestRevision = a7;
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