@interface VNClustererReadOnlyContext
+ (id)clustererModelFileNamesFromState:(id)a3 storedInPath:(id)a4 error:(id *)a5;
+ (id)distanceBetweenFacesWithFaceObservation:(id)a3 andFaceObservation:(id)a4 error:(id *)a5;
+ (id)distanceBetweenFacesWithFaceprint:(id)a3 andFaceprint:(id)a4 error:(id *)a5;
+ (id)representativenessForFaces:(id)a3 error:(id *)a4;
- (VNClustererReadOnlyContext)initWithType:(id)a3 cachePath:(id)a4 state:(id)a5 threshold:(float)a6 requestRevision:(unint64_t)a7 torsoprintRequestRevision:(unint64_t)a8 error:(id *)a9;
- (VNClustererReadOnlyContext)initWithType:(id)a3 cachePath:(id)a4 state:(id)a5 threshold:(float)a6 torsoThreshold:(float)a7 requestRevision:(unint64_t)a8 torsoprintRequestRevision:(unint64_t)a9 error:(id *)a10;
- (id)clusteredFaceIdsForClusterContainingFaceId:(id)a3 error:(id *)a4;
- (id)distanceBetweenClustersWithFaceId:(id)a3 andFaceId:(id)a4 error:(id *)a5;
- (id)distanceBetweenLevel1Clusters:(id)a3 error:(id *)a4;
- (id)getDistances:(id)a3 to:(id)a4 error:(id *)a5;
- (id)l1ClusteredFaceIdsGroupedByL0ClustersForClustersContainingFaceIds:(id)a3 error:(id *)a4;
- (id)suggestionsForClustersWithFaceIds:(id)a3 affinityThreshold:(float)a4 canceller:(id)a5 error:(id *)a6;
@end

@implementation VNClustererReadOnlyContext

- (id)getDistances:(id)a3 to:(id)a4 error:(id *)a5
{
  v5 = [(VNClusteringReadOnly *)self->_clusterer getDistances:a3 to:a4 error:a5];

  return v5;
}

- (id)suggestionsForClustersWithFaceIds:(id)a3 affinityThreshold:(float)a4 canceller:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  if (!v11)
  {
    v11 = objc_alloc_init(VNCanceller);
  }

  v12 = v11;
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
  v13 = v10;
  v23 = a4;
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

    if (a6)
    {
      v16 = v25[5];
      goto LABEL_10;
    }
  }

  else if (a6)
  {
    v16 = [VNError errorWithCode:1 message:@"Suggestions request has been cancelled"];
LABEL_10:
    v15 = 0;
    *a6 = v16;
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

- (id)distanceBetweenLevel1Clusters:(id)a3 error:(id *)a4
{
  v4 = [(VNClusteringReadOnly *)self->_clusterer getDistanceBetweenLevel1Clusters:a3 error:a4];

  return v4;
}

- (id)distanceBetweenClustersWithFaceId:(id)a3 andFaceId:(id)a4 error:(id *)a5
{
  v5 = [(VNClusteringReadOnly *)self->_clusterer getDistanceBetweenLevel0ClustersWithFaceId:a3 andFaceId:a4 error:a5];

  return v5;
}

- (id)l1ClusteredFaceIdsGroupedByL0ClustersForClustersContainingFaceIds:(id)a3 error:(id *)a4
{
  v4 = [(VNClusteringReadOnly *)self->_clusterer getClustersForClusterIds:a3 options:0 error:a4];

  return v4;
}

- (id)clusteredFaceIdsForClusterContainingFaceId:(id)a3 error:(id *)a4
{
  v4 = [(VNClusteringReadOnly *)self->_clusterer getLevel1ClusteredIdsGroupedByLevel0ClustersForFaceId:a3 error:a4];

  return v4;
}

- (VNClustererReadOnlyContext)initWithType:(id)a3 cachePath:(id)a4 state:(id)a5 threshold:(float)a6 torsoThreshold:(float)a7 requestRevision:(unint64_t)a8 torsoprintRequestRevision:(unint64_t)a9 error:(id *)a10
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v28.receiver = self;
  v28.super_class = VNClustererReadOnlyContext;
  *&v21 = a6;
  *&v22 = a7;
  v23 = [(VNClustererContextBase *)&v28 initWithType:v18 cachePath:v19 state:v20 readOnly:1 threshold:a8 torsoThreshold:a9 requestRevision:v21 torsoprintRequestRevision:v22 error:a10];
  if (v23 && ([(VNClustererContextBase *)v23 _createGreedyClusterer:objc_opt_class() state:v20 error:a10], v24 = objc_claimAutoreleasedReturnValue(), clusterer = v23->_clusterer, v23->_clusterer = v24, clusterer, v23->_clusterer))
  {
    v26 = v23;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (VNClustererReadOnlyContext)initWithType:(id)a3 cachePath:(id)a4 state:(id)a5 threshold:(float)a6 requestRevision:(unint64_t)a7 torsoprintRequestRevision:(unint64_t)a8 error:(id *)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v25.receiver = self;
  v25.super_class = VNClustererReadOnlyContext;
  *&v19 = a6;
  v20 = [(VNClustererContextBase *)&v25 initWithType:v16 cachePath:v17 state:v18 readOnly:1 threshold:a7 requestRevision:a8 torsoprintRequestRevision:v19 error:a9];
  if (v20 && ([(VNClustererContextBase *)v20 _createGreedyClusterer:objc_opt_class() state:v18 error:a9], v21 = objc_claimAutoreleasedReturnValue(), clusterer = v20->_clusterer, v20->_clusterer = v21, clusterer, v20->_clusterer))
  {
    v23 = v20;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (id)clustererModelFileNamesFromState:(id)a3 storedInPath:(id)a4 error:(id *)a5
{
  v5 = [VNGreedyClusteringReadOnly clustererModelFileNamesFromState:a3 storedInPath:a4 error:a5];

  return v5;
}

+ (id)distanceBetweenFacesWithFaceObservation:(id)a3 andFaceObservation:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [a3 faceprint];
  v9 = [v7 faceprint];
  v10 = [VNClustererReadOnlyContext distanceBetweenFacesWithFaceprint:v8 andFaceprint:v9 error:a5];

  return v10;
}

+ (id)distanceBetweenFacesWithFaceprint:(id)a3 andFaceprint:(id)a4 error:(id *)a5
{
  v6 = [a3 computeDistance:a4 withDistanceFunction:0 error:?];
  v7 = v6;
  if (!v6 || a5 && *a5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

+ (id)representativenessForFaces:(id)a3 error:(id *)a4
{
  v4 = [VNGreedyClusteringReadOnly getRepresentativenessForFaces:a3 error:a4];

  return v4;
}

@end