@interface VNClustererQuery
+ (id)clustererModelFileNamesFromState:(id)state storedInPath:(id)path error:(id *)error;
+ (id)clustererQueryWithOptions:(id)options error:(id *)error;
+ (id)distanceBetweenFacesWithFaceObservation:(id)observation andFaceObservation:(id)faceObservation error:(id *)error;
+ (id)distanceBetweenFacesWithFaceprint:(id)faceprint andFaceprint:(id)andFaceprint error:(id *)error;
+ (id)representativenessForFaces:(id)faces error:(id *)error;
- (VNClustererQuery)initWithType:(id)type cachePath:(id)path state:(id)state threshold:(float)threshold requestRevision:(unint64_t)revision error:(id *)error;
- (VNClustererQuery)initWithType:(id)type cachePath:(id)path state:(id)state threshold:(float)threshold torsoThreshold:(float)torsoThreshold requestRevision:(unint64_t)revision torsoprintRequestRevision:(unint64_t)requestRevision error:(id *)self0;
- (id)clusteredFaceIdsForClusterContainingFaceId:(id)id error:(id *)error;
- (id)distanceBetweenClustersWithFaceId:(id)id andFaceId:(id)faceId error:(id *)error;
- (id)distanceBetweenLevel1Clusters:(id)clusters error:(id *)error;
- (id)getDistances:(id)distances to:(id)to error:(id *)error;
- (id)l1ClusteredFaceIdsGroupedByL0ClustersForClustersContainingFaceIds:(id)ids error:(id *)error;
- (id)suggestionsForClustersWithFaceIds:(id)ids affinityThreshold:(float)threshold canceller:(id)canceller error:(id *)error;
@end

@implementation VNClustererQuery

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

- (VNClustererQuery)initWithType:(id)type cachePath:(id)path state:(id)state threshold:(float)threshold torsoThreshold:(float)torsoThreshold requestRevision:(unint64_t)revision torsoprintRequestRevision:(unint64_t)requestRevision error:(id *)self0
{
  typeCopy = type;
  pathCopy = path;
  stateCopy = state;
  v29.receiver = self;
  v29.super_class = VNClustererQuery;
  v21 = [(VNClustererQuery *)&v29 init];
  if (v21 && [typeCopy isEqualToString:@"VNClusteringAlgorithm_GreedyWithTorso"] && (v22 = [VNClustererReadOnlyContext alloc], *&v23 = threshold, *&v24 = torsoThreshold, v25 = -[VNClustererReadOnlyContext initWithType:cachePath:state:threshold:torsoThreshold:requestRevision:torsoprintRequestRevision:error:](v22, "initWithType:cachePath:state:threshold:torsoThreshold:requestRevision:torsoprintRequestRevision:error:", typeCopy, pathCopy, stateCopy, revision, requestRevision, error, v23, v24), context = v21->_context, v21->_context = v25, context, v21->_context))
  {
    v27 = v21;
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (VNClustererQuery)initWithType:(id)type cachePath:(id)path state:(id)state threshold:(float)threshold requestRevision:(unint64_t)revision error:(id *)error
{
  typeCopy = type;
  pathCopy = path;
  stateCopy = state;
  v24.receiver = self;
  v24.super_class = VNClustererQuery;
  v17 = [(VNClustererQuery *)&v24 init];
  if (v17 && [typeCopy isEqualToString:@"VNClusteringAlgorithm_Greedy"] && (v18 = [VNClustererReadOnlyContext alloc], *&v19 = threshold, v20 = -[VNClustererReadOnlyContext initWithType:cachePath:state:threshold:requestRevision:error:](v18, "initWithType:cachePath:state:threshold:requestRevision:error:", typeCopy, pathCopy, stateCopy, revision, error, v19), context = v17->_context, v17->_context = v20, context, v17->_context))
  {
    v22 = v17;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)clustererModelFileNamesFromState:(id)state storedInPath:(id)path error:(id *)error
{
  v5 = [VNClustererReadOnlyContext clustererModelFileNamesFromState:state storedInPath:path error:error];

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

+ (id)clustererQueryWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v6 = optionsCopy;
  if (optionsCopy)
  {
    type = [optionsCopy type];
    v8 = [type isEqualToString:@"VNClusteringAlgorithm_Greedy"];

    if (v8)
    {
      v9 = [VNClustererQuery alloc];
      type2 = [v6 type];
      cachePath = [v6 cachePath];
      state = [v6 state];
      [v6 threshold];
      v14 = v13;
      requestRevision = [v6 requestRevision];
      LODWORD(v16) = v14;
      v17 = [(VNClustererQuery *)v9 initWithType:type2 cachePath:cachePath state:state threshold:requestRevision requestRevision:error error:v16];
LABEL_8:
      v18 = v17;

      goto LABEL_10;
    }

    type3 = [v6 type];
    v20 = [type3 isEqualToString:@"VNClusteringAlgorithm_GreedyWithTorso"];

    if (v20)
    {
      v21 = [VNClustererQuery alloc];
      type2 = [v6 type];
      cachePath = [v6 cachePath];
      state = [v6 state];
      [v6 threshold];
      v23 = v22;
      [v6 torsoThreshold];
      v25 = v24;
      requestRevision2 = [v6 requestRevision];
      torsoprintRequestRevision = [v6 torsoprintRequestRevision];
      LODWORD(v28) = v23;
      LODWORD(v29) = v25;
      v17 = [(VNClustererQuery *)v21 initWithType:type2 cachePath:cachePath state:state threshold:requestRevision2 torsoThreshold:torsoprintRequestRevision requestRevision:error torsoprintRequestRevision:v28 error:v29];
      goto LABEL_8;
    }
  }

  else if (error)
  {
    [VNError errorForInternalErrorWithLocalizedDescription:@"options parameter cannot be nil"];
    *error = v18 = 0;
    goto LABEL_10;
  }

  v18 = 0;
LABEL_10:

  return v18;
}

@end