@interface VNClustererContextBase
- (BOOL)_checkInitInputs:(id)a3 cachePath:(id)a4 checkType:(id)a5 requestRevision:(unint64_t)a6 error:(id *)a7;
- (VNClustererContextBase)initWithType:(id)a3 cachePath:(id)a4 state:(id)a5 readOnly:(BOOL)a6 threshold:(float)a7 requestRevision:(unint64_t)a8 torsoprintRequestRevision:(unint64_t)a9 error:(id *)a10;
- (VNClustererContextBase)initWithType:(id)a3 cachePath:(id)a4 state:(id)a5 readOnly:(BOOL)a6 threshold:(float)a7 torsoThreshold:(float)a8 requestRevision:(unint64_t)a9 torsoprintRequestRevision:(unint64_t)a10 error:(id *)a11;
- (id)_createGreedyClusterer:(Class)a3 state:(id)a4 error:(id *)a5;
- (void)_initializeGreedyClustererOptions:(id)a3;
@end

@implementation VNClustererContextBase

- (void)_initializeGreedyClustererOptions:(id)a3
{
  v7 = a3;
  [v7 setObject:self->_type forKeyedSubscript:@"VNClusterOptionClusteringAlgorithm"];
  [v7 setObject:self->_cacheDirectoryPath forKeyedSubscript:@"VNClusterOptionCacheFolderPath"];
  [v7 setObject:self->_threshold forKeyedSubscript:@"VNClusterOptionInputThreshold"];
  [v7 setObject:self->_torsoThreshold forKeyedSubscript:@"VNClusterOptionInputTorsoThreshold"];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_readOnly];
  [v7 setObject:v4 forKeyedSubscript:@"VNClusterOptionVectorMapReadOnlyFlag"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_faceprintRequestRevision];
  [v7 setObject:v5 forKeyedSubscript:@"VNClusterOptionFaceprintRevision"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_torsoprintRequestRevision];
  [v7 setObject:v6 forKeyedSubscript:@"VNClusterOptionTorsoprintRevision"];
}

- (id)_createGreedyClusterer:(Class)a3 state:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(VNClustererContextBase *)self _initializeGreedyClustererOptions:v9];
  if (v8)
  {
    [v9 setObject:v8 forKey:@"VNClusterOptionRestoreClusteringState"];
  }

  v10 = [[a3 alloc] initWithOptions:v9 error:a5];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    if (a5)
    {
      a5 = [*a5 localizedDescription];
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create clusterer Error = %@", a5];;
    v14 = [v13 UTF8String];
    VNValidatedLog(4, @"%s", v15, v16, v17, v18, v19, v20, v14);
  }

  return v11;
}

- (VNClustererContextBase)initWithType:(id)a3 cachePath:(id)a4 state:(id)a5 readOnly:(BOOL)a6 threshold:(float)a7 torsoThreshold:(float)a8 requestRevision:(unint64_t)a9 torsoprintRequestRevision:(unint64_t)a10 error:(id *)a11
{
  v19 = a3;
  v20 = a4;
  v31.receiver = self;
  v31.super_class = VNClustererContextBase;
  v21 = [(VNClustererContextBase *)&v31 init];
  v22 = v21;
  if (!v21)
  {
    if (a11)
    {
      +[VNError errorForMemoryAllocationFailure];
      *a11 = v29 = 0;
      goto LABEL_7;
    }

LABEL_6:
    v29 = 0;
    goto LABEL_7;
  }

  if (![(VNClustererContextBase *)v21 _checkInitInputs:v19 cachePath:v20 checkType:@"VNClusteringAlgorithm_GreedyWithTorso" requestRevision:a9 error:a11])
  {
    goto LABEL_6;
  }

  objc_storeStrong(&v22->_type, a3);
  *&v23 = a7;
  v24 = [MEMORY[0x1E696AD98] numberWithFloat:v23];
  threshold = v22->_threshold;
  v22->_threshold = v24;

  *&v26 = a8;
  v27 = [MEMORY[0x1E696AD98] numberWithFloat:v26];
  torsoThreshold = v22->_torsoThreshold;
  v22->_torsoThreshold = v27;

  objc_storeStrong(&v22->_cacheDirectoryPath, a4);
  v22->_readOnly = a6;
  v22->_faceprintRequestRevision = a9;
  v22->_torsoprintRequestRevision = a10;
  v29 = v22;
LABEL_7:

  return v29;
}

- (VNClustererContextBase)initWithType:(id)a3 cachePath:(id)a4 state:(id)a5 readOnly:(BOOL)a6 threshold:(float)a7 requestRevision:(unint64_t)a8 torsoprintRequestRevision:(unint64_t)a9 error:(id *)a10
{
  v17 = a3;
  v18 = a4;
  v27.receiver = self;
  v27.super_class = VNClustererContextBase;
  v19 = [(VNClustererContextBase *)&v27 init];
  v20 = v19;
  if (!v19)
  {
    if (a10)
    {
      +[VNError errorForMemoryAllocationFailure];
      *a10 = v25 = 0;
      goto LABEL_7;
    }

LABEL_6:
    v25 = 0;
    goto LABEL_7;
  }

  if (![(VNClustererContextBase *)v19 _checkInitInputs:v17 cachePath:v18 checkType:@"VNClusteringAlgorithm_Greedy" requestRevision:a8 error:a10])
  {
    goto LABEL_6;
  }

  objc_storeStrong(&v20->_type, a3);
  *&v21 = a7;
  v22 = [MEMORY[0x1E696AD98] numberWithFloat:v21];
  threshold = v20->_threshold;
  v20->_threshold = v22;

  torsoThreshold = v20->_torsoThreshold;
  v20->_torsoThreshold = &unk_1F19C0F28;

  objc_storeStrong(&v20->_cacheDirectoryPath, a4);
  v20->_readOnly = a6;
  v20->_faceprintRequestRevision = a8;
  v20->_torsoprintRequestRevision = a9;
  v25 = v20;
LABEL_7:

  return v25;
}

- (BOOL)_checkInitInputs:(id)a3 cachePath:(id)a4 checkType:(id)a5 requestRevision:(unint64_t)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v26 = 0;
  v14 = [MEMORY[0x1E696AC08] defaultManager];
  v15 = [v14 fileExistsAtPath:v12 isDirectory:&v26];

  if (!v15 || (v26 & 1) == 0)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid Clusterer cache directory: %@", v12];
    if (a7)
    {
      *a7 = [VNError errorForInternalErrorWithLocalizedDescription:v17];
    }

    goto LABEL_8;
  }

  if (([v11 isEqualToString:v13] & 1) == 0)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid Clusterer type: %@", v11];
    if (a7)
    {
      *a7 = [VNError errorForInternalErrorWithLocalizedDescription:v17];
    }

    goto LABEL_8;
  }

  if (![(VNRequest *)VNCreateFaceprintRequest supportsAnyRevision:a6])
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid Faceprint revision: %lu", a6];
    if (a7)
    {
      *a7 = [VNError errorForInternalErrorWithLocalizedDescription:v17];
    }

LABEL_8:
    v18 = [v17 UTF8String];
    VNValidatedLog(4, @"%s", v19, v20, v21, v22, v23, v24, v18);

    v16 = 0;
    goto LABEL_9;
  }

  v16 = 1;
LABEL_9:

  return v16;
}

@end