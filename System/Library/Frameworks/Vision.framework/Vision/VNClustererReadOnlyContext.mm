@interface VNClustererReadOnlyContext
+ (id)clustererModelFileNamesFromState:(id)state storedInPath:(id)path error:(id *)error;
+ (id)distanceBetweenFacesWithFaceObservation:(id)observation andFaceObservation:(id)faceObservation error:(id *)error;
+ (id)distanceBetweenFacesWithFaceprint:(id)faceprint andFaceprint:(id)andFaceprint error:(id *)error;
+ (id)representativenessForFaces:(id)faces error:(id *)error;
- (VNClustererReadOnlyContext)initWithType:(id)type cachePath:(id)path state:(id)state threshold:(float)threshold requestRevision:(unint64_t)revision torsoprintRequestRevision:(unint64_t)requestRevision error:(id *)error;
- (VNClustererReadOnlyContext)initWithType:(id)type cachePath:(id)path state:(id)state threshold:(float)threshold torsoThreshold:(float)torsoThreshold requestRevision:(unint64_t)revision torsoprintRequestRevision:(unint64_t)requestRevision error:(id *)self0;
- (id)clusteredFaceIdsForClusterContainingFaceId:(id)id error:(id *)error;
- (id)distanceBetweenClustersWithFaceId:(id)id andFaceId:(id)faceId error:(id *)error;
- (id)distanceBetweenLevel1Clusters:(id)clusters error:(id *)error;
- (id)getDistances:(id)distances to:(id)to error:(id *)error;
- (id)l1ClusteredFaceIdsGroupedByL0ClustersForClustersContainingFaceIds:(id)ids error:(id *)error;
- (id)suggestionsForClustersWithFaceIds:(id)ids affinityThreshold:(float)threshold canceller:(id)canceller error:(id *)error;
@end

@implementation VNClustererReadOnlyContext

- (id)getDistances:(id)distances to:(id)to error:(id *)error
{
  v5 = [(VNClusteringReadOnly *)self->_clusterer getDistances:distances to:to error:error];

  return v5;
}

- (id)suggestionsForClustersWithFaceIds:(id)ids affinityThreshold:(float)threshold canceller:(id)canceller error:(id *)error
{
  idsCopy = ids;
  cancellerCopy = canceller;
  if (!cancellerCopy)
  {
    cancellerCopy = objc_alloc_init(VNCanceller);
  }

  v12 = cancellerCopy;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__426;
  v34 = __Block_byref_object_dispose__427;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__426;
  v28 = __Block_byref_object_dispose__427;
  v29 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __98__VNClustererReadOnlyContext_suggestionsForClustersWithFaceIds_affinityThreshold_canceller_error___block_invoke;
  v19[3] = &unk_1E77B1208;
  v21 = &v30;
  v19[4] = self;
  v13 = idsCopy;
  thresholdCopy = threshold;
  v20 = v13;
  v22 = &v24;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __98__VNClustererReadOnlyContext_suggestionsForClustersWithFaceIds_affinityThreshold_canceller_error___block_invoke_2;
  v18[3] = &unk_1E77B3BE0;
  v18[4] = self;
  if ([(VNCanceller *)v12 tryToPerformBlock:v19 usingSignallingBlock:v18])
  {
    v14 = v31[5];
    if (v14)
    {
      v15 = v14;
      goto LABEL_12;
    }

    if (error)
    {
      v16 = v25[5];
      goto LABEL_10;
    }
  }

  else if (error)
  {
    v16 = [VNError errorWithCode:1 message:@"Suggestions request has been cancelled"];
LABEL_10:
    v15 = 0;
    *error = v16;
    goto LABEL_12;
  }

  v15 = 0;
LABEL_12:

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v15;
}

void __98__VNClustererReadOnlyContext_suggestionsForClustersWithFaceIds_affinityThreshold_canceller_error___block_invoke(uint64_t a1, double a2)
{
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 64);
  LODWORD(a2) = *(a1 + 64);
  v5 = *(*(a1 + 56) + 8);
  obj = *(v5 + 40);
  v6 = [v4 suggestionsForClusterIdsWithFlags:v3 affinityThreshold:&obj error:a2];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)distanceBetweenLevel1Clusters:(id)clusters error:(id *)error
{
  v4 = [(VNClusteringReadOnly *)self->_clusterer getDistanceBetweenLevel1Clusters:clusters error:error];

  return v4;
}

- (id)distanceBetweenClustersWithFaceId:(id)id andFaceId:(id)faceId error:(id *)error
{
  v5 = [(VNClusteringReadOnly *)self->_clusterer getDistanceBetweenLevel0ClustersWithFaceId:id andFaceId:faceId error:error];

  return v5;
}

- (id)l1ClusteredFaceIdsGroupedByL0ClustersForClustersContainingFaceIds:(id)ids error:(id *)error
{
  v4 = [(VNClusteringReadOnly *)self->_clusterer getClustersForClusterIds:ids options:0 error:error];

  return v4;
}

- (id)clusteredFaceIdsForClusterContainingFaceId:(id)id error:(id *)error
{
  v4 = [(VNClusteringReadOnly *)self->_clusterer getLevel1ClusteredIdsGroupedByLevel0ClustersForFaceId:id error:error];

  return v4;
}

- (VNClustererReadOnlyContext)initWithType:(id)type cachePath:(id)path state:(id)state threshold:(float)threshold torsoThreshold:(float)torsoThreshold requestRevision:(unint64_t)revision torsoprintRequestRevision:(unint64_t)requestRevision error:(id *)self0
{
  typeCopy = type;
  pathCopy = path;
  stateCopy = state;
  v28.receiver = self;
  v28.super_class = VNClustererReadOnlyContext;
  *&v21 = threshold;
  *&v22 = torsoThreshold;
  v23 = [(VNClustererContextBase *)&v28 initWithType:typeCopy cachePath:pathCopy state:stateCopy readOnly:1 threshold:revision torsoThreshold:requestRevision requestRevision:v21 torsoprintRequestRevision:v22 error:error];
  if (v23 && ([(VNClustererContextBase *)v23 _createGreedyClusterer:objc_opt_class() state:stateCopy error:error], v24 = objc_claimAutoreleasedReturnValue(), clusterer = v23->_clusterer, v23->_clusterer = v24, clusterer, v23->_clusterer))
  {
    v26 = v23;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (VNClustererReadOnlyContext)initWithType:(id)type cachePath:(id)path state:(id)state threshold:(float)threshold requestRevision:(unint64_t)revision torsoprintRequestRevision:(unint64_t)requestRevision error:(id *)error
{
  typeCopy = type;
  pathCopy = path;
  stateCopy = state;
  v25.receiver = self;
  v25.super_class = VNClustererReadOnlyContext;
  *&v19 = threshold;
  v20 = [(VNClustererContextBase *)&v25 initWithType:typeCopy cachePath:pathCopy state:stateCopy readOnly:1 threshold:revision requestRevision:requestRevision torsoprintRequestRevision:v19 error:error];
  if (v20 && ([(VNClustererContextBase *)v20 _createGreedyClusterer:objc_opt_class() state:stateCopy error:error], v21 = objc_claimAutoreleasedReturnValue(), clusterer = v20->_clusterer, v20->_clusterer = v21, clusterer, v20->_clusterer))
  {
    v23 = v20;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (id)clustererModelFileNamesFromState:(id)state storedInPath:(id)path error:(id *)error
{
  v5 = [VNGreedyClusteringReadOnly clustererModelFileNamesFromState:state storedInPath:path error:error];

  return v5;
}

+ (id)distanceBetweenFacesWithFaceObservation:(id)observation andFaceObservation:(id)faceObservation error:(id *)error
{
  faceObservationCopy = faceObservation;
  faceprint = [observation faceprint];
  faceprint2 = [faceObservationCopy faceprint];
  v10 = [VNClustererReadOnlyContext distanceBetweenFacesWithFaceprint:faceprint andFaceprint:faceprint2 error:error];

  return v10;
}

+ (id)distanceBetweenFacesWithFaceprint:(id)faceprint andFaceprint:(id)andFaceprint error:(id *)error
{
  v6 = [faceprint computeDistance:andFaceprint withDistanceFunction:0 error:?];
  v7 = v6;
  if (!v6 || error && *error)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

+ (id)representativenessForFaces:(id)faces error:(id *)error
{
  v4 = [VNGreedyClusteringReadOnly getRepresentativenessForFaces:faces error:error];

  return v4;
}

@end