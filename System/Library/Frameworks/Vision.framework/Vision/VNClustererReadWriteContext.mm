@interface VNClustererReadWriteContext
+ (id)clustererModelFileNamesFromState:(id)state storedInPath:(id)path error:(id *)error;
+ (id)distanceBetweenFacesWithFaceObservation:(id)observation andFaceObservation:(id)faceObservation error:(id *)error;
+ (id)distanceBetweenFacesWithFaceprint:(id)faceprint andFaceprint:(id)andFaceprint error:(id *)error;
+ (id)representativenessForFaces:(id)faces error:(id *)error;
- (BOOL)resetModelState:(id)state error:(id *)error;
- (VNClustererReadWriteContext)initWithType:(id)type cachePath:(id)path state:(id)state threshold:(float)threshold requestRevision:(unint64_t)revision torsoprintRequestRevision:(unint64_t)requestRevision error:(id *)error;
- (VNClustererReadWriteContext)initWithType:(id)type cachePath:(id)path state:(id)state threshold:(float)threshold torsoThreshold:(float)torsoThreshold requestRevision:(unint64_t)revision torsoprintRequestRevision:(unint64_t)requestRevision error:(id *)self0;
- (id)_updateClustererWithOptions:(id)options canceller:(id)canceller error:(id *)error;
- (id)clusteredFaceIdsForClusterContainingFaceId:(id)id error:(id *)error;
- (id)distanceBetweenClustersWithFaceId:(id)id andFaceId:(id)faceId error:(id *)error;
- (id)distanceBetweenLevel1Clusters:(id)clusters error:(id *)error;
- (id)getDistances:(id)distances to:(id)to error:(id *)error;
- (id)l1ClusteredFaceIdsGroupedByL0ClustersForClustersContainingFaceIds:(id)ids error:(id *)error;
- (id)suggestionsForClustersWithFaceIds:(id)ids affinityThreshold:(float)threshold canceller:(id)canceller error:(id *)error;
- (id)updateModelByAddingFaces:(id)faces andRemovingFaces:(id)removingFaces canceller:(id)canceller error:(id *)error;
- (id)updateModelByAddingFaces:(id)faces canceller:(id)canceller error:(id *)error;
- (id)updateModelByAddingFaces:(id)faces withGroupingIdentifiers:(id)identifiers andRemovingFaces:(id)removingFaces canceller:(id)canceller error:(id *)error;
- (id)updateModelByAddingPersons:(id)persons withGroupingIdentifiers:(id)identifiers andRemovingPersons:(id)removingPersons canceller:(id)canceller error:(id *)error;
- (id)updateModelByRemovingFaces:(id)faces canceller:(id)canceller error:(id *)error;
@end

@implementation VNClustererReadWriteContext

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
  v19[2] = __99__VNClustererReadWriteContext_suggestionsForClustersWithFaceIds_affinityThreshold_canceller_error___block_invoke;
  v19[3] = &unk_1E77B1208;
  v21 = &v30;
  v19[4] = self;
  v13 = idsCopy;
  thresholdCopy = threshold;
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

- (id)getDistances:(id)distances to:(id)to error:(id *)error
{
  v5 = [(VNClusteringReadOnly *)self->_clusterer getDistances:distances to:to error:error];

  return v5;
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

- (id)updateModelByAddingFaces:(id)faces andRemovingFaces:(id)removingFaces canceller:(id)canceller error:(id *)error
{
  v6 = [(VNClustererReadWriteContext *)self updateModelByAddingFaces:faces withGroupingIdentifiers:0 andRemovingFaces:removingFaces canceller:canceller error:error];

  return v6;
}

- (id)updateModelByRemovingFaces:(id)faces canceller:(id)canceller error:(id *)error
{
  v5 = [(VNClustererReadWriteContext *)self updateModelByAddingFaces:0 withGroupingIdentifiers:0 andRemovingFaces:faces canceller:canceller error:error];

  return v5;
}

- (id)updateModelByAddingFaces:(id)faces canceller:(id)canceller error:(id *)error
{
  v5 = [(VNClustererReadWriteContext *)self updateModelByAddingFaces:faces withGroupingIdentifiers:0 andRemovingFaces:0 canceller:canceller error:error];

  return v5;
}

- (id)_updateClustererWithOptions:(id)options canceller:(id)canceller error:(id *)error
{
  optionsCopy = options;
  cancellerCopy = canceller;
  if (!cancellerCopy)
  {
    cancellerCopy = objc_alloc_init(VNCanceller);
  }

  v10 = cancellerCopy;
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
  v11 = optionsCopy;
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
    if (error)
    {
      v14 = [VNError errorWithCode:1 message:@"Clustering request has been cancelled"];
LABEL_13:
      v15 = 0;
      *error = v14;
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v12 = v35[5];
  if (!v12)
  {
    if (error)
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
    if (!error)
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

- (id)updateModelByAddingPersons:(id)persons withGroupingIdentifiers:(id)identifiers andRemovingPersons:(id)removingPersons canceller:(id)canceller error:(id *)error
{
  personsCopy = persons;
  identifiersCopy = identifiers;
  removingPersonsCopy = removingPersons;
  cancellerCopy = canceller;
  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = v16;
  if (personsCopy)
  {
    [v16 setObject:personsCopy forKey:@"VNClusterOptionAddObjectsToClustering"];
  }

  if (removingPersonsCopy)
  {
    [v17 setObject:removingPersonsCopy forKey:@"VNClusterOptionRemoveObjectsFromClustering"];
  }

  if (identifiersCopy)
  {
    [v17 setObject:identifiersCopy forKey:@"VNClusterOptionAddObjectGroupIdsToClustering"];
  }

  v18 = [(VNClustererReadWriteContext *)self _updateClustererWithOptions:v17 canceller:cancellerCopy error:error];

  return v18;
}

- (id)updateModelByAddingFaces:(id)faces withGroupingIdentifiers:(id)identifiers andRemovingFaces:(id)removingFaces canceller:(id)canceller error:(id *)error
{
  facesCopy = faces;
  identifiersCopy = identifiers;
  removingFacesCopy = removingFaces;
  cancellerCopy = canceller;
  if (!cancellerCopy)
  {
    cancellerCopy = objc_alloc_init(VNCanceller);
  }

  v16 = cancellerCopy;
  v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v18 = v17;
  if (facesCopy)
  {
    [v17 setObject:facesCopy forKey:@"VNClusterOptionAddObjectsToClustering"];
  }

  if (removingFacesCopy)
  {
    [v18 setObject:removingFacesCopy forKey:@"VNClusterOptionRemoveObjectsFromClustering"];
  }

  if (identifiersCopy)
  {
    [v18 setObject:identifiersCopy forKey:@"VNClusterOptionAddObjectGroupIdsToClustering"];
  }

  v19 = [(VNClustererReadWriteContext *)self _updateClustererWithOptions:v18 canceller:v16 error:error];

  return v19;
}

- (BOOL)resetModelState:(id)state error:(id *)error
{
  stateCopy = state;
  v7 = [(VNClustererContextBase *)self _createGreedyClusterer:objc_opt_class() state:stateCopy error:error];
  LOBYTE(error) = v7 != 0;

  return error;
}

- (VNClustererReadWriteContext)initWithType:(id)type cachePath:(id)path state:(id)state threshold:(float)threshold torsoThreshold:(float)torsoThreshold requestRevision:(unint64_t)revision torsoprintRequestRevision:(unint64_t)requestRevision error:(id *)self0
{
  typeCopy = type;
  pathCopy = path;
  stateCopy = state;
  v28.receiver = self;
  v28.super_class = VNClustererReadWriteContext;
  *&v21 = threshold;
  *&v22 = torsoThreshold;
  v23 = [(VNClustererContextBase *)&v28 initWithType:typeCopy cachePath:pathCopy state:stateCopy readOnly:0 threshold:revision torsoThreshold:requestRevision requestRevision:v21 torsoprintRequestRevision:v22 error:error];
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

- (VNClustererReadWriteContext)initWithType:(id)type cachePath:(id)path state:(id)state threshold:(float)threshold requestRevision:(unint64_t)revision torsoprintRequestRevision:(unint64_t)requestRevision error:(id *)error
{
  typeCopy = type;
  pathCopy = path;
  stateCopy = state;
  v25.receiver = self;
  v25.super_class = VNClustererReadWriteContext;
  *&v19 = threshold;
  v20 = [(VNClustererContextBase *)&v25 initWithType:typeCopy cachePath:pathCopy state:stateCopy readOnly:0 threshold:revision requestRevision:requestRevision torsoprintRequestRevision:v19 error:error];
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
  v5 = [VNClustererReadOnlyContext clustererModelFileNamesFromState:state storedInPath:path error:error];

  return v5;
}

+ (id)distanceBetweenFacesWithFaceprint:(id)faceprint andFaceprint:(id)andFaceprint error:(id *)error
{
  v5 = [VNClustererReadOnlyContext distanceBetweenFacesWithFaceprint:faceprint andFaceprint:andFaceprint error:error];

  return v5;
}

+ (id)distanceBetweenFacesWithFaceObservation:(id)observation andFaceObservation:(id)faceObservation error:(id *)error
{
  faceObservationCopy = faceObservation;
  faceprint = [observation faceprint];
  faceprint2 = [faceObservationCopy faceprint];
  v10 = [VNClustererReadWriteContext distanceBetweenFacesWithFaceprint:faceprint andFaceprint:faceprint2 error:error];

  return v10;
}

+ (id)representativenessForFaces:(id)faces error:(id *)error
{
  v4 = [VNClustererReadOnlyContext representativenessForFaces:faces error:error];

  return v4;
}

@end