@interface VNClustererBuilder
+ (id)clustererBuilderWithOptions:(id)a3 error:(id *)a4;
+ (id)clustererModelFileNamesFromState:(id)a3 storedInPath:(id)a4 error:(id *)a5;
+ (id)distanceBetweenFacesWithFaceObservation:(id)a3 andFaceObservation:(id)a4 error:(id *)a5;
+ (id)distanceBetweenFacesWithFaceprint:(id)a3 andFaceprint:(id)a4 error:(id *)a5;
+ (id)representativenessForFaces:(id)a3 error:(id *)a4;
- (VNClustererBuilder)initWithType:(id)a3 cachePath:(id)a4 state:(id)a5 threshold:(float)a6 requestRevision:(unint64_t)a7 torsoprintRequestRevision:(unint64_t)a8 error:(id *)a9;
- (VNClustererBuilder)initWithType:(id)a3 cachePath:(id)a4 state:(id)a5 threshold:(float)a6 torsoThreshold:(float)a7 requestRevision:(unint64_t)a8 torsoprintRequestRevision:(unint64_t)a9 error:(id *)a10;
- (id)clusteredFaceIdsForClusterContainingFaceId:(id)a3 error:(id *)a4;
- (id)distanceBetweenClustersWithFaceId:(id)a3 andFaceId:(id)a4 error:(id *)a5;
- (id)distanceBetweenLevel1Clusters:(id)a3 error:(id *)a4;
- (id)getDistances:(id)a3 to:(id)a4 error:(id *)a5;
- (id)l1ClusteredFaceIdsGroupedByL0ClustersForClustersContainingFaceIds:(id)a3 error:(id *)a4;
- (id)suggestionsForClustersWithFaceIds:(id)a3 affinityThreshold:(float)a4 canceller:(id)a5 error:(id *)a6;
- (id)updateModelByAddingFaces:(id)a3 andRemovingFaces:(id)a4 canceller:(id)a5 error:(id *)a6;
- (id)updateModelByAddingFaces:(id)a3 canceller:(id)a4 error:(id *)a5;
- (id)updateModelByAddingFaces:(id)a3 withGroupingIdentifiers:(id)a4 andRemovingFaces:(id)a5 canceller:(id)a6 error:(id *)a7;
- (id)updateModelByAddingFaces:(id)a3 withGroupingIdentifiers:(id)a4 canceller:(id)a5 error:(id *)a6;
- (id)updateModelByAddingPersons:(id)a3 withGroupingIdentifiers:(id)a4 andRemovingPersons:(id)a5 canceller:(id)a6 error:(id *)a7;
- (id)updateModelByRemovingFaces:(id)a3 canceller:(id)a4 error:(id *)a5;
@end

@implementation VNClustererBuilder

- (id)suggestionsForClustersWithFaceIds:(id)a3 affinityThreshold:(float)a4 canceller:(id)a5 error:(id *)a6
{
  v6 = [(VNClustererModelQuerying *)self->_context suggestionsForClustersWithFaceIds:a3 affinityThreshold:a5 canceller:a6 error:?];

  return v6;
}

- (id)distanceBetweenLevel1Clusters:(id)a3 error:(id *)a4
{
  v4 = [(VNClustererModelQuerying *)self->_context distanceBetweenLevel1Clusters:a3 error:a4];

  return v4;
}

- (id)distanceBetweenClustersWithFaceId:(id)a3 andFaceId:(id)a4 error:(id *)a5
{
  v5 = [(VNClustererModelQuerying *)self->_context distanceBetweenClustersWithFaceId:a3 andFaceId:a4 error:a5];

  return v5;
}

- (id)getDistances:(id)a3 to:(id)a4 error:(id *)a5
{
  v5 = [(VNClustererModelQuerying *)self->_context getDistances:a3 to:a4 error:a5];

  return v5;
}

- (id)l1ClusteredFaceIdsGroupedByL0ClustersForClustersContainingFaceIds:(id)a3 error:(id *)a4
{
  v4 = [(VNClustererModelQuerying *)self->_context l1ClusteredFaceIdsGroupedByL0ClustersForClustersContainingFaceIds:a3 error:a4];

  return v4;
}

- (id)clusteredFaceIdsForClusterContainingFaceId:(id)a3 error:(id *)a4
{
  v4 = [(VNClustererModelQuerying *)self->_context clusteredFaceIdsForClusterContainingFaceId:a3 error:a4];

  return v4;
}

- (id)updateModelByAddingPersons:(id)a3 withGroupingIdentifiers:(id)a4 andRemovingPersons:(id)a5 canceller:(id)a6 error:(id *)a7
{
  v7 = [(VNClustererModelQuerying *)self->_context updateModelByAddingPersons:a3 withGroupingIdentifiers:a4 andRemovingPersons:a5 canceller:a6 error:a7];

  return v7;
}

- (id)updateModelByAddingFaces:(id)a3 withGroupingIdentifiers:(id)a4 andRemovingFaces:(id)a5 canceller:(id)a6 error:(id *)a7
{
  v7 = [(VNClustererModelQuerying *)self->_context updateModelByAddingFaces:a3 withGroupingIdentifiers:a4 andRemovingFaces:a5 canceller:a6 error:a7];

  return v7;
}

- (id)updateModelByAddingFaces:(id)a3 andRemovingFaces:(id)a4 canceller:(id)a5 error:(id *)a6
{
  v6 = [(VNClustererBuilder *)self updateModelByAddingFaces:a3 withGroupingIdentifiers:0 andRemovingFaces:a4 canceller:a5 error:a6];

  return v6;
}

- (id)updateModelByRemovingFaces:(id)a3 canceller:(id)a4 error:(id *)a5
{
  v5 = [(VNClustererBuilder *)self updateModelByAddingFaces:0 withGroupingIdentifiers:0 andRemovingFaces:a3 canceller:a4 error:a5];

  return v5;
}

- (id)updateModelByAddingFaces:(id)a3 withGroupingIdentifiers:(id)a4 canceller:(id)a5 error:(id *)a6
{
  v6 = [(VNClustererBuilder *)self updateModelByAddingFaces:a3 withGroupingIdentifiers:a4 andRemovingFaces:0 canceller:a5 error:a6];

  return v6;
}

- (id)updateModelByAddingFaces:(id)a3 canceller:(id)a4 error:(id *)a5
{
  v5 = [(VNClustererBuilder *)self updateModelByAddingFaces:a3 withGroupingIdentifiers:0 andRemovingFaces:0 canceller:a4 error:a5];

  return v5;
}

- (VNClustererBuilder)initWithType:(id)a3 cachePath:(id)a4 state:(id)a5 threshold:(float)a6 torsoThreshold:(float)a7 requestRevision:(unint64_t)a8 torsoprintRequestRevision:(unint64_t)a9 error:(id *)a10
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v29.receiver = self;
  v29.super_class = VNClustererBuilder;
  v21 = [(VNClustererBuilder *)&v29 init];
  if (v21 && [v18 isEqualToString:@"VNClusteringAlgorithm_GreedyWithTorso"] && (v22 = [VNClustererReadWriteContext alloc], *&v23 = a6, *&v24 = a7, v25 = -[VNClustererReadWriteContext initWithType:cachePath:state:threshold:torsoThreshold:requestRevision:torsoprintRequestRevision:error:](v22, "initWithType:cachePath:state:threshold:torsoThreshold:requestRevision:torsoprintRequestRevision:error:", v18, v19, v20, a8, a9, a10, v23, v24), context = v21->_context, v21->_context = v25, context, v21->_context))
  {
    v27 = v21;
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (VNClustererBuilder)initWithType:(id)a3 cachePath:(id)a4 state:(id)a5 threshold:(float)a6 requestRevision:(unint64_t)a7 torsoprintRequestRevision:(unint64_t)a8 error:(id *)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v27.receiver = self;
  v27.super_class = VNClustererBuilder;
  v19 = [(VNClustererBuilder *)&v27 init];
  if (!v19)
  {
    if (!a9)
    {
      goto LABEL_10;
    }

    v25 = +[VNError errorForMemoryAllocationFailure];
LABEL_9:
    v24 = 0;
    *a9 = v25;
    goto LABEL_11;
  }

  if (([v16 isEqualToString:@"VNClusteringAlgorithm_Greedy"] & 1) == 0)
  {
    if (!a9)
    {
      goto LABEL_10;
    }

    v25 = [VNError errorForInvalidOption:v16 named:@"type" localizedDescription:@"unsupported cluster algorithm type"];
    goto LABEL_9;
  }

  v20 = [VNClustererReadWriteContext alloc];
  *&v21 = a6;
  v22 = [(VNClustererReadWriteContext *)v20 initWithType:v16 cachePath:v17 state:v18 threshold:a7 requestRevision:a8 torsoprintRequestRevision:a9 error:v21];
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

+ (id)clustererModelFileNamesFromState:(id)a3 storedInPath:(id)a4 error:(id *)a5
{
  v5 = [VNClustererReadWriteContext clustererModelFileNamesFromState:a3 storedInPath:a4 error:a5];

  return v5;
}

+ (id)distanceBetweenFacesWithFaceObservation:(id)a3 andFaceObservation:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a3 faceprint];
  v10 = [v8 faceprint];
  v11 = [a1 distanceBetweenFacesWithFaceprint:v9 andFaceprint:v10 error:a5];

  return v11;
}

+ (id)distanceBetweenFacesWithFaceprint:(id)a3 andFaceprint:(id)a4 error:(id *)a5
{
  v5 = [VNClustererReadOnlyContext distanceBetweenFacesWithFaceprint:a3 andFaceprint:a4 error:a5];

  return v5;
}

+ (id)representativenessForFaces:(id)a3 error:(id *)a4
{
  v4 = [VNClustererReadOnlyContext representativenessForFaces:a3 error:a4];

  return v4;
}

+ (id)clustererBuilderWithOptions:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 type];
    v8 = [v7 isEqualToString:@"VNClusteringAlgorithm_Greedy"];

    if (v8)
    {
      v9 = [VNClustererBuilder alloc];
      v10 = [v6 type];
      v11 = [v6 cachePath];
      v12 = [v6 state];
      [v6 threshold];
      v14 = v13;
      v15 = [v6 requestRevision];
      v16 = [v6 torsoprintRequestRevision];
      LODWORD(v17) = v14;
      v18 = [(VNClustererBuilder *)v9 initWithType:v10 cachePath:v11 state:v12 threshold:v15 requestRevision:v16 torsoprintRequestRevision:a4 error:v17];
LABEL_8:
      v19 = v18;

      goto LABEL_10;
    }

    v20 = [v6 type];
    v21 = [v20 isEqualToString:@"VNClusteringAlgorithm_GreedyWithTorso"];

    if (v21)
    {
      v22 = [VNClustererBuilder alloc];
      v10 = [v6 type];
      v11 = [v6 cachePath];
      v12 = [v6 state];
      [v6 threshold];
      v24 = v23;
      [v6 torsoThreshold];
      v26 = v25;
      v27 = [v6 requestRevision];
      v28 = [v6 torsoprintRequestRevision];
      LODWORD(v29) = v24;
      LODWORD(v30) = v26;
      v18 = [(VNClustererBuilder *)v22 initWithType:v10 cachePath:v11 state:v12 threshold:v27 torsoThreshold:v28 requestRevision:a4 torsoprintRequestRevision:v29 error:v30];
      goto LABEL_8;
    }
  }

  else if (a4)
  {
    [VNError errorForInternalErrorWithLocalizedDescription:@"options parameter cannot be nil"];
    *a4 = v19 = 0;
    goto LABEL_10;
  }

  v19 = 0;
LABEL_10:

  return v19;
}

@end