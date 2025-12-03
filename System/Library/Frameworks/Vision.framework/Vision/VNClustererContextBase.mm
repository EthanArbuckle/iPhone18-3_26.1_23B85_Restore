@interface VNClustererContextBase
- (BOOL)_checkInitInputs:(id)inputs cachePath:(id)path checkType:(id)type requestRevision:(unint64_t)revision error:(id *)error;
- (VNClustererContextBase)initWithType:(id)type cachePath:(id)path state:(id)state readOnly:(BOOL)only threshold:(float)threshold requestRevision:(unint64_t)revision torsoprintRequestRevision:(unint64_t)requestRevision error:(id *)self0;
- (VNClustererContextBase)initWithType:(id)type cachePath:(id)path state:(id)state readOnly:(BOOL)only threshold:(float)threshold torsoThreshold:(float)torsoThreshold requestRevision:(unint64_t)revision torsoprintRequestRevision:(unint64_t)self0 error:(id *)self1;
- (id)_createGreedyClusterer:(Class)clusterer state:(id)state error:(id *)error;
- (void)_initializeGreedyClustererOptions:(id)options;
@end

@implementation VNClustererContextBase

- (void)_initializeGreedyClustererOptions:(id)options
{
  optionsCopy = options;
  [optionsCopy setObject:self->_type forKeyedSubscript:@"VNClusterOptionClusteringAlgorithm"];
  [optionsCopy setObject:self->_cacheDirectoryPath forKeyedSubscript:@"VNClusterOptionCacheFolderPath"];
  [optionsCopy setObject:self->_threshold forKeyedSubscript:@"VNClusterOptionInputThreshold"];
  [optionsCopy setObject:self->_torsoThreshold forKeyedSubscript:@"VNClusterOptionInputTorsoThreshold"];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_readOnly];
  [optionsCopy setObject:v4 forKeyedSubscript:@"VNClusterOptionVectorMapReadOnlyFlag"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_faceprintRequestRevision];
  [optionsCopy setObject:v5 forKeyedSubscript:@"VNClusterOptionFaceprintRevision"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_torsoprintRequestRevision];
  [optionsCopy setObject:v6 forKeyedSubscript:@"VNClusterOptionTorsoprintRevision"];
}

- (id)_createGreedyClusterer:(Class)clusterer state:(id)state error:(id *)error
{
  stateCopy = state;
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(VNClustererContextBase *)self _initializeGreedyClustererOptions:v9];
  if (stateCopy)
  {
    [v9 setObject:stateCopy forKey:@"VNClusterOptionRestoreClusteringState"];
  }

  v10 = [[clusterer alloc] initWithOptions:v9 error:error];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    if (error)
    {
      error = [*error localizedDescription];
    }

    error = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create clusterer Error = %@", error];;
    uTF8String = [error UTF8String];
    VNValidatedLog(4, @"%s", v15, v16, v17, v18, v19, v20, uTF8String);
  }

  return v11;
}

- (VNClustererContextBase)initWithType:(id)type cachePath:(id)path state:(id)state readOnly:(BOOL)only threshold:(float)threshold torsoThreshold:(float)torsoThreshold requestRevision:(unint64_t)revision torsoprintRequestRevision:(unint64_t)self0 error:(id *)self1
{
  typeCopy = type;
  pathCopy = path;
  v31.receiver = self;
  v31.super_class = VNClustererContextBase;
  v21 = [(VNClustererContextBase *)&v31 init];
  v22 = v21;
  if (!v21)
  {
    if (error)
    {
      +[VNError errorForMemoryAllocationFailure];
      *error = v29 = 0;
      goto LABEL_7;
    }

LABEL_6:
    v29 = 0;
    goto LABEL_7;
  }

  if (![(VNClustererContextBase *)v21 _checkInitInputs:typeCopy cachePath:pathCopy checkType:@"VNClusteringAlgorithm_GreedyWithTorso" requestRevision:revision error:error])
  {
    goto LABEL_6;
  }

  objc_storeStrong(&v22->_type, type);
  *&v23 = threshold;
  v24 = [MEMORY[0x1E696AD98] numberWithFloat:v23];
  threshold = v22->_threshold;
  v22->_threshold = v24;

  *&v26 = torsoThreshold;
  v27 = [MEMORY[0x1E696AD98] numberWithFloat:v26];
  torsoThreshold = v22->_torsoThreshold;
  v22->_torsoThreshold = v27;

  objc_storeStrong(&v22->_cacheDirectoryPath, path);
  v22->_readOnly = only;
  v22->_faceprintRequestRevision = revision;
  v22->_torsoprintRequestRevision = requestRevision;
  v29 = v22;
LABEL_7:

  return v29;
}

- (VNClustererContextBase)initWithType:(id)type cachePath:(id)path state:(id)state readOnly:(BOOL)only threshold:(float)threshold requestRevision:(unint64_t)revision torsoprintRequestRevision:(unint64_t)requestRevision error:(id *)self0
{
  typeCopy = type;
  pathCopy = path;
  v27.receiver = self;
  v27.super_class = VNClustererContextBase;
  v19 = [(VNClustererContextBase *)&v27 init];
  v20 = v19;
  if (!v19)
  {
    if (error)
    {
      +[VNError errorForMemoryAllocationFailure];
      *error = v25 = 0;
      goto LABEL_7;
    }

LABEL_6:
    v25 = 0;
    goto LABEL_7;
  }

  if (![(VNClustererContextBase *)v19 _checkInitInputs:typeCopy cachePath:pathCopy checkType:@"VNClusteringAlgorithm_Greedy" requestRevision:revision error:error])
  {
    goto LABEL_6;
  }

  objc_storeStrong(&v20->_type, type);
  *&v21 = threshold;
  v22 = [MEMORY[0x1E696AD98] numberWithFloat:v21];
  threshold = v20->_threshold;
  v20->_threshold = v22;

  torsoThreshold = v20->_torsoThreshold;
  v20->_torsoThreshold = &unk_1F19C0F28;

  objc_storeStrong(&v20->_cacheDirectoryPath, path);
  v20->_readOnly = only;
  v20->_faceprintRequestRevision = revision;
  v20->_torsoprintRequestRevision = requestRevision;
  v25 = v20;
LABEL_7:

  return v25;
}

- (BOOL)_checkInitInputs:(id)inputs cachePath:(id)path checkType:(id)type requestRevision:(unint64_t)revision error:(id *)error
{
  inputsCopy = inputs;
  pathCopy = path;
  typeCopy = type;
  v26 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v15 = [defaultManager fileExistsAtPath:pathCopy isDirectory:&v26];

  if (!v15 || (v26 & 1) == 0)
  {
    pathCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid Clusterer cache directory: %@", pathCopy];
    if (error)
    {
      *error = [VNError errorForInternalErrorWithLocalizedDescription:pathCopy];
    }

    goto LABEL_8;
  }

  if (([inputsCopy isEqualToString:typeCopy] & 1) == 0)
  {
    pathCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid Clusterer type: %@", inputsCopy];
    if (error)
    {
      *error = [VNError errorForInternalErrorWithLocalizedDescription:pathCopy];
    }

    goto LABEL_8;
  }

  if (![(VNRequest *)VNCreateFaceprintRequest supportsAnyRevision:revision])
  {
    pathCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid Faceprint revision: %lu", revision];
    if (error)
    {
      *error = [VNError errorForInternalErrorWithLocalizedDescription:pathCopy];
    }

LABEL_8:
    uTF8String = [pathCopy UTF8String];
    VNValidatedLog(4, @"%s", v19, v20, v21, v22, v23, v24, uTF8String);

    v16 = 0;
    goto LABEL_9;
  }

  v16 = 1;
LABEL_9:

  return v16;
}

@end