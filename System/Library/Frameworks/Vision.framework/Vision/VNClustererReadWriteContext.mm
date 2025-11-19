@interface VNClustererReadWriteContext
+ (id)clustererModelFileNamesFromState:(id)a3 storedInPath:(id)a4 error:(id *)a5;
+ (id)distanceBetweenFacesWithFaceObservation:(id)a3 andFaceObservation:(id)a4 error:(id *)a5;
+ (id)distanceBetweenFacesWithFaceprint:(id)a3 andFaceprint:(id)a4 error:(id *)a5;
+ (id)representativenessForFaces:(id)a3 error:(id *)a4;
- (BOOL)resetModelState:(id)a3 error:(id *)a4;
- (VNClustererReadWriteContext)initWithType:(id)a3 cachePath:(id)a4 state:(id)a5 threshold:(float)a6 requestRevision:(unint64_t)a7 torsoprintRequestRevision:(unint64_t)a8 error:(id *)a9;
- (VNClustererReadWriteContext)initWithType:(id)a3 cachePath:(id)a4 state:(id)a5 threshold:(float)a6 torsoThreshold:(float)a7 requestRevision:(unint64_t)a8 torsoprintRequestRevision:(unint64_t)a9 error:(id *)a10;
- (id)_updateClustererWithOptions:(id)a3 canceller:(id)a4 error:(id *)a5;
- (id)clusteredFaceIdsForClusterContainingFaceId:(id)a3 error:(id *)a4;
- (id)distanceBetweenClustersWithFaceId:(id)a3 andFaceId:(id)a4 error:(id *)a5;
- (id)distanceBetweenLevel1Clusters:(id)a3 error:(id *)a4;
- (id)getDistances:(id)a3 to:(id)a4 error:(id *)a5;
- (id)l1ClusteredFaceIdsGroupedByL0ClustersForClustersContainingFaceIds:(id)a3 error:(id *)a4;
- (id)suggestionsForClustersWithFaceIds:(id)a3 affinityThreshold:(float)a4 canceller:(id)a5 error:(id *)a6;
- (id)updateModelByAddingFaces:(id)a3 andRemovingFaces:(id)a4 canceller:(id)a5 error:(id *)a6;
- (id)updateModelByAddingFaces:(id)a3 canceller:(id)a4 error:(id *)a5;
- (id)updateModelByAddingFaces:(id)a3 withGroupingIdentifiers:(id)a4 andRemovingFaces:(id)a5 canceller:(id)a6 error:(id *)a7;
- (id)updateModelByAddingPersons:(id)a3 withGroupingIdentifiers:(id)a4 andRemovingPersons:(id)a5 canceller:(id)a6 error:(id *)a7;
- (id)updateModelByRemovingFaces:(id)a3 canceller:(id)a4 error:(id *)a5;
@end

@implementation VNClustererReadWriteContext

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
  v19[2] = __99__VNClustererReadWriteContext_suggestionsForClustersWithFaceIds_affinityThreshold_canceller_error___block_invoke;
  v19[3] = &unk_1E77B1208;
  v21 = &v30;
  v19[4] = self;
  v13 = v10;
  v23 = a4;
  v20 = v13;
  v22 = &v24;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __99__VNClustererReadWriteContext_suggestionsForClustersWithFaceIds_affinityThreshold_canceller_error___block_invoke_2;
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

void __99__VNClustererReadWriteContext_suggestionsForClustersWithFaceIds_affinityThreshold_canceller_error___block_invoke(uint64_t a1, double a2)
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

- (id)getDistances:(id)a3 to:(id)a4 error:(id *)a5
{
  v5 = [(VNClusteringReadOnly *)self->_clusterer getDistances:a3 to:a4 error:a5];

  return v5;
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

- (id)updateModelByAddingFaces:(id)a3 andRemovingFaces:(id)a4 canceller:(id)a5 error:(id *)a6
{
  v6 = [(VNClustererReadWriteContext *)self updateModelByAddingFaces:a3 withGroupingIdentifiers:0 andRemovingFaces:a4 canceller:a5 error:a6];

  return v6;
}

- (id)updateModelByRemovingFaces:(id)a3 canceller:(id)a4 error:(id *)a5
{
  v5 = [(VNClustererReadWriteContext *)self updateModelByAddingFaces:0 withGroupingIdentifiers:0 andRemovingFaces:a3 canceller:a4 error:a5];

  return v5;
}

- (id)updateModelByAddingFaces:(id)a3 canceller:(id)a4 error:(id *)a5
{
  v5 = [(VNClustererReadWriteContext *)self updateModelByAddingFaces:a3 withGroupingIdentifiers:0 andRemovingFaces:0 canceller:a4 error:a5];

  return v5;
}

- (id)_updateClustererWithOptions:(id)a3 canceller:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v9 = objc_alloc_init(VNCanceller);
  }

  v10 = v9;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__426;
  v38 = __Block_byref_object_dispose__427;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__426;
  v32 = __Block_byref_object_dispose__427;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__426;
  v26 = __Block_byref_object_dispose__427;
  v27 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75__VNClustererReadWriteContext__updateClustererWithOptions_canceller_error___block_invoke;
  v18[3] = &unk_1E77B1230;
  v20 = &v34;
  v18[4] = self;
  v11 = v8;
  v19 = v11;
  v21 = &v28;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75__VNClustererReadWriteContext__updateClustererWithOptions_canceller_error___block_invoke_2;
  v17[3] = &unk_1E77B2BF0;
  v17[4] = self;
  v17[5] = &v22;
  if (![(VNCanceller *)v10 tryToPerformBlock:v18 usingSignallingBlock:v17])
  {
    if (a5)
    {
      v14 = [VNError errorWithCode:1 message:@"Clustering request has been cancelled"];
LABEL_13:
      v15 = 0;
      *a5 = v14;
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v12 = v35[5];
  if (!v12)
  {
    if (a5)
    {
      v13 = v29[5];
LABEL_12:
      v14 = v13;
      goto LABEL_13;
    }

LABEL_14:
    v15 = 0;
    goto LABEL_16;
  }

  v13 = v23[5];
  if (v13)
  {
    if (!a5)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v15 = v12;
LABEL_16:

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&v34, 8);

  return v15;
}

void __75__VNClustererReadWriteContext__updateClustererWithOptions_canceller_error___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 64);
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v3 getClustersWithOptions:v2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __75__VNClustererReadWriteContext__updateClustererWithOptions_canceller_error___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 64);
  v3 = *(v1 + 8);
  obj = *(v3 + 40);
  [v2 cancelClustering:&obj];
  objc_storeStrong((v3 + 40), obj);
}

- (id)updateModelByAddingPersons:(id)a3 withGroupingIdentifiers:(id)a4 andRemovingPersons:(id)a5 canceller:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = v16;
  if (v12)
  {
    [v16 setObject:v12 forKey:@"VNClusterOptionAddObjectsToClustering"];
  }

  if (v14)
  {
    [v17 setObject:v14 forKey:@"VNClusterOptionRemoveObjectsFromClustering"];
  }

  if (v13)
  {
    [v17 setObject:v13 forKey:@"VNClusterOptionAddObjectGroupIdsToClustering"];
  }

  v18 = [(VNClustererReadWriteContext *)self _updateClustererWithOptions:v17 canceller:v15 error:a7];

  return v18;
}

- (id)updateModelByAddingFaces:(id)a3 withGroupingIdentifiers:(id)a4 andRemovingFaces:(id)a5 canceller:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (!v15)
  {
    v15 = objc_alloc_init(VNCanceller);
  }

  v16 = v15;
  v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v18 = v17;
  if (v12)
  {
    [v17 setObject:v12 forKey:@"VNClusterOptionAddObjectsToClustering"];
  }

  if (v14)
  {
    [v18 setObject:v14 forKey:@"VNClusterOptionRemoveObjectsFromClustering"];
  }

  if (v13)
  {
    [v18 setObject:v13 forKey:@"VNClusterOptionAddObjectGroupIdsToClustering"];
  }

  v19 = [(VNClustererReadWriteContext *)self _updateClustererWithOptions:v18 canceller:v16 error:a7];

  return v19;
}

- (BOOL)resetModelState:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(VNClustererContextBase *)self _createGreedyClusterer:objc_opt_class() state:v6 error:a4];
  LOBYTE(a4) = v7 != 0;

  return a4;
}

- (VNClustererReadWriteContext)initWithType:(id)a3 cachePath:(id)a4 state:(id)a5 threshold:(float)a6 torsoThreshold:(float)a7 requestRevision:(unint64_t)a8 torsoprintRequestRevision:(unint64_t)a9 error:(id *)a10
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v28.receiver = self;
  v28.super_class = VNClustererReadWriteContext;
  *&v21 = a6;
  *&v22 = a7;
  v23 = [(VNClustererContextBase *)&v28 initWithType:v18 cachePath:v19 state:v20 readOnly:0 threshold:a8 torsoThreshold:a9 requestRevision:v21 torsoprintRequestRevision:v22 error:a10];
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

- (VNClustererReadWriteContext)initWithType:(id)a3 cachePath:(id)a4 state:(id)a5 threshold:(float)a6 requestRevision:(unint64_t)a7 torsoprintRequestRevision:(unint64_t)a8 error:(id *)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v25.receiver = self;
  v25.super_class = VNClustererReadWriteContext;
  *&v19 = a6;
  v20 = [(VNClustererContextBase *)&v25 initWithType:v16 cachePath:v17 state:v18 readOnly:0 threshold:a7 requestRevision:a8 torsoprintRequestRevision:v19 error:a9];
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
  v5 = [VNClustererReadOnlyContext clustererModelFileNamesFromState:a3 storedInPath:a4 error:a5];

  return v5;
}

+ (id)distanceBetweenFacesWithFaceprint:(id)a3 andFaceprint:(id)a4 error:(id *)a5
{
  v5 = [VNClustererReadOnlyContext distanceBetweenFacesWithFaceprint:a3 andFaceprint:a4 error:a5];

  return v5;
}

+ (id)distanceBetweenFacesWithFaceObservation:(id)a3 andFaceObservation:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [a3 faceprint];
  v9 = [v7 faceprint];
  v10 = [VNClustererReadWriteContext distanceBetweenFacesWithFaceprint:v8 andFaceprint:v9 error:a5];

  return v10;
}

+ (id)representativenessForFaces:(id)a3 error:(id *)a4
{
  v4 = [VNClustererReadOnlyContext representativenessForFaces:a3 error:a4];

  return v4;
}

@end