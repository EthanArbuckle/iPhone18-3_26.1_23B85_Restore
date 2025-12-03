@interface VNClustererBuilder
+ (id)clustererBuilderWithOptions:(id)options error:(id *)error;
+ (id)clustererModelFileNamesFromState:(id)state storedInPath:(id)path error:(id *)error;
+ (id)distanceBetweenFacesWithFaceObservation:(id)observation andFaceObservation:(id)faceObservation error:(id *)error;
+ (id)distanceBetweenFacesWithFaceprint:(id)faceprint andFaceprint:(id)andFaceprint error:(id *)error;
+ (id)representativenessForFaces:(id)faces error:(id *)error;
- (VNClustererBuilder)initWithType:(id)type cachePath:(id)path state:(id)state threshold:(float)threshold requestRevision:(unint64_t)revision torsoprintRequestRevision:(unint64_t)requestRevision error:(id *)error;
- (VNClustererBuilder)initWithType:(id)type cachePath:(id)path state:(id)state threshold:(float)threshold torsoThreshold:(float)torsoThreshold requestRevision:(unint64_t)revision torsoprintRequestRevision:(unint64_t)requestRevision error:(id *)self0;
- (id)clusteredFaceIdsForClusterContainingFaceId:(id)id error:(id *)error;
- (id)distanceBetweenClustersWithFaceId:(id)id andFaceId:(id)faceId error:(id *)error;
- (id)distanceBetweenLevel1Clusters:(id)clusters error:(id *)error;
- (id)getDistances:(id)distances to:(id)to error:(id *)error;
- (id)l1ClusteredFaceIdsGroupedByL0ClustersForClustersContainingFaceIds:(id)ids error:(id *)error;
- (id)suggestionsForClustersWithFaceIds:(id)ids affinityThreshold:(float)threshold canceller:(id)canceller error:(id *)error;
- (id)updateModelByAddingFaces:(id)faces andRemovingFaces:(id)removingFaces canceller:(id)canceller error:(id *)error;
- (id)updateModelByAddingFaces:(id)faces canceller:(id)canceller error:(id *)error;
- (id)updateModelByAddingFaces:(id)faces withGroupingIdentifiers:(id)identifiers andRemovingFaces:(id)removingFaces canceller:(id)canceller error:(id *)error;
- (id)updateModelByAddingFaces:(id)faces withGroupingIdentifiers:(id)identifiers canceller:(id)canceller error:(id *)error;
- (id)updateModelByAddingPersons:(id)persons withGroupingIdentifiers:(id)identifiers andRemovingPersons:(id)removingPersons canceller:(id)canceller error:(id *)error;
- (id)updateModelByRemovingFaces:(id)faces canceller:(id)canceller error:(id *)error;
@end

@implementation VNClustererBuilder

- (id)suggestionsForClustersWithFaceIds:(id)ids affinityThreshold:(float)threshold canceller:(id)canceller error:(id *)error
{
  v6 = [(VNClustererModelQuerying *)self->_context suggestionsForClustersWithFaceIds:ids affinityThreshold:canceller canceller:error error:?];

  return v6;
}

- (id)distanceBetweenLevel1Clusters:(id)clusters error:(id *)error
{
  v4 = [(VNClustererModelQuerying *)self->_context distanceBetweenLevel1Clusters:clusters error:error];

  return v4;
}

- (id)distanceBetweenClustersWithFaceId:(id)id andFaceId:(id)faceId error:(id *)error
{
  v5 = [(VNClustererModelQuerying *)self->_context distanceBetweenClustersWithFaceId:id andFaceId:faceId error:error];

  return v5;
}

- (id)getDistances:(id)distances to:(id)to error:(id *)error
{
  v5 = [(VNClustererModelQuerying *)self->_context getDistances:distances to:to error:error];

  return v5;
}

- (id)l1ClusteredFaceIdsGroupedByL0ClustersForClustersContainingFaceIds:(id)ids error:(id *)error
{
  v4 = [(VNClustererModelQuerying *)self->_context l1ClusteredFaceIdsGroupedByL0ClustersForClustersContainingFaceIds:ids error:error];

  return v4;
}

- (id)clusteredFaceIdsForClusterContainingFaceId:(id)id error:(id *)error
{
  v4 = [(VNClustererModelQuerying *)self->_context clusteredFaceIdsForClusterContainingFaceId:id error:error];

  return v4;
}

- (id)updateModelByAddingPersons:(id)persons withGroupingIdentifiers:(id)identifiers andRemovingPersons:(id)removingPersons canceller:(id)canceller error:(id *)error
{
  v7 = [(VNClustererModelQuerying *)self->_context updateModelByAddingPersons:persons withGroupingIdentifiers:identifiers andRemovingPersons:removingPersons canceller:canceller error:error];

  return v7;
}

- (id)updateModelByAddingFaces:(id)faces withGroupingIdentifiers:(id)identifiers andRemovingFaces:(id)removingFaces canceller:(id)canceller error:(id *)error
{
  v7 = [(VNClustererModelQuerying *)self->_context updateModelByAddingFaces:faces withGroupingIdentifiers:identifiers andRemovingFaces:removingFaces canceller:canceller error:error];

  return v7;
}

- (id)updateModelByAddingFaces:(id)faces andRemovingFaces:(id)removingFaces canceller:(id)canceller error:(id *)error
{
  v6 = [(VNClustererBuilder *)self updateModelByAddingFaces:faces withGroupingIdentifiers:0 andRemovingFaces:removingFaces canceller:canceller error:error];

  return v6;
}

- (id)updateModelByRemovingFaces:(id)faces canceller:(id)canceller error:(id *)error
{
  v5 = [(VNClustererBuilder *)self updateModelByAddingFaces:0 withGroupingIdentifiers:0 andRemovingFaces:faces canceller:canceller error:error];

  return v5;
}

- (id)updateModelByAddingFaces:(id)faces withGroupingIdentifiers:(id)identifiers canceller:(id)canceller error:(id *)error
{
  v6 = [(VNClustererBuilder *)self updateModelByAddingFaces:faces withGroupingIdentifiers:identifiers andRemovingFaces:0 canceller:canceller error:error];

  return v6;
}

- (id)updateModelByAddingFaces:(id)faces canceller:(id)canceller error:(id *)error
{
  v5 = [(VNClustererBuilder *)self updateModelByAddingFaces:faces withGroupingIdentifiers:0 andRemovingFaces:0 canceller:canceller error:error];

  return v5;
}

- (VNClustererBuilder)initWithType:(id)type cachePath:(id)path state:(id)state threshold:(float)threshold torsoThreshold:(float)torsoThreshold requestRevision:(unint64_t)revision torsoprintRequestRevision:(unint64_t)requestRevision error:(id *)self0
{
  typeCopy = type;
  pathCopy = path;
  stateCopy = state;
  v29.receiver = self;
  v29.super_class = VNClustererBuilder;
  v21 = [(VNClustererBuilder *)&v29 init];
  if (v21 && [typeCopy isEqualToString:@"VNClusteringAlgorithm_GreedyWithTorso"] && (v22 = [VNClustererReadWriteContext alloc], *&v23 = threshold, *&v24 = torsoThreshold, v25 = -[VNClustererReadWriteContext initWithType:cachePath:state:threshold:torsoThreshold:requestRevision:torsoprintRequestRevision:error:](v22, "initWithType:cachePath:state:threshold:torsoThreshold:requestRevision:torsoprintRequestRevision:error:", typeCopy, pathCopy, stateCopy, revision, requestRevision, error, v23, v24), context = v21->_context, v21->_context = v25, context, v21->_context))
  {
    v27 = v21;
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (VNClustererBuilder)initWithType:(id)type cachePath:(id)path state:(id)state threshold:(float)threshold requestRevision:(unint64_t)revision torsoprintRequestRevision:(unint64_t)requestRevision error:(id *)error
{
  typeCopy = type;
  pathCopy = path;
  stateCopy = state;
  v27.receiver = self;
  v27.super_class = VNClustererBuilder;
  v19 = [(VNClustererBuilder *)&v27 init];
  if (!v19)
  {
    if (!error)
    {
      goto LABEL_10;
    }

    v25 = +[VNError errorForMemoryAllocationFailure];
LABEL_9:
    v24 = 0;
    *error = v25;
    goto LABEL_11;
  }

  if (([typeCopy isEqualToString:@"VNClusteringAlgorithm_Greedy"] & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_10;
    }

    v25 = [VNError errorForInvalidOption:typeCopy named:@"type" localizedDescription:@"unsupported cluster algorithm type"];
    goto LABEL_9;
  }

  v20 = [VNClustererReadWriteContext alloc];
  *&v21 = threshold;
  v22 = [(VNClustererReadWriteContext *)v20 initWithType:typeCopy cachePath:pathCopy state:stateCopy threshold:revision requestRevision:requestRevision torsoprintRequestRevision:error error:v21];
  context = v19->_context;
  v19->_context = v22;

  if (!v19->_context)
  {
LABEL_10:
    v24 = 0;
    goto LABEL_11;
  }

  v24 = v19;
LABEL_11:

  return v24;
}

+ (id)clustererModelFileNamesFromState:(id)state storedInPath:(id)path error:(id *)error
{
  v5 = [VNClustererReadWriteContext clustererModelFileNamesFromState:state storedInPath:path error:error];

  return v5;
}

+ (id)distanceBetweenFacesWithFaceObservation:(id)observation andFaceObservation:(id)faceObservation error:(id *)error
{
  faceObservationCopy = faceObservation;
  faceprint = [observation faceprint];
  faceprint2 = [faceObservationCopy faceprint];
  v11 = [self distanceBetweenFacesWithFaceprint:faceprint andFaceprint:faceprint2 error:error];

  return v11;
}

+ (id)distanceBetweenFacesWithFaceprint:(id)faceprint andFaceprint:(id)andFaceprint error:(id *)error
{
  v5 = [VNClustererReadOnlyContext distanceBetweenFacesWithFaceprint:faceprint andFaceprint:andFaceprint error:error];

  return v5;
}

+ (id)representativenessForFaces:(id)faces error:(id *)error
{
  v4 = [VNClustererReadOnlyContext representativenessForFaces:faces error:error];

  return v4;
}

+ (id)clustererBuilderWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v6 = optionsCopy;
  if (optionsCopy)
  {
    type = [optionsCopy type];
    v8 = [type isEqualToString:@"VNClusteringAlgorithm_Greedy"];

    if (v8)
    {
      v9 = [VNClustererBuilder alloc];
      type2 = [v6 type];
      cachePath = [v6 cachePath];
      state = [v6 state];
      [v6 threshold];
      v14 = v13;
      requestRevision = [v6 requestRevision];
      torsoprintRequestRevision = [v6 torsoprintRequestRevision];
      LODWORD(v17) = v14;
      v18 = [(VNClustererBuilder *)v9 initWithType:type2 cachePath:cachePath state:state threshold:requestRevision requestRevision:torsoprintRequestRevision torsoprintRequestRevision:error error:v17];
LABEL_8:
      v19 = v18;

      goto LABEL_10;
    }

    type3 = [v6 type];
    v21 = [type3 isEqualToString:@"VNClusteringAlgorithm_GreedyWithTorso"];

    if (v21)
    {
      v22 = [VNClustererBuilder alloc];
      type2 = [v6 type];
      cachePath = [v6 cachePath];
      state = [v6 state];
      [v6 threshold];
      v24 = v23;
      [v6 torsoThreshold];
      v26 = v25;
      requestRevision2 = [v6 requestRevision];
      torsoprintRequestRevision2 = [v6 torsoprintRequestRevision];
      LODWORD(v29) = v24;
      LODWORD(v30) = v26;
      v18 = [(VNClustererBuilder *)v22 initWithType:type2 cachePath:cachePath state:state threshold:requestRevision2 torsoThreshold:torsoprintRequestRevision2 requestRevision:error torsoprintRequestRevision:v29 error:v30];
      goto LABEL_8;
    }
  }

  else if (error)
  {
    [VNError errorForInternalErrorWithLocalizedDescription:@"options parameter cannot be nil"];
    *error = v19 = 0;
    goto LABEL_10;
  }

  v19 = 0;
LABEL_10:

  return v19;
}

@end