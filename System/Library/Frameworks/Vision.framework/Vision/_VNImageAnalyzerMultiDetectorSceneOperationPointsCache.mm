@interface _VNImageAnalyzerMultiDetectorSceneOperationPointsCache
- (_VNImageAnalyzerMultiDetectorSceneOperationPointsCache)initWithInferenceNetworkDescriptor:(id)a3;
- (id)sceneLabelOperationPointsForOriginatingRequestSpecifier:(id)a3 error:(id *)a4;
@end

@implementation _VNImageAnalyzerMultiDetectorSceneOperationPointsCache

- (id)sceneLabelOperationPointsForOriginatingRequestSpecifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_originatingRequestSpecifierToOperationPoints objectForKeyedSubscript:v6];
  if (!v7)
  {
    v8 = [v6 specifiesRequestClass:objc_opt_class() revision:3737841667];
    inferenceNetworkDescriptor = self->_inferenceNetworkDescriptor;
    if (v8)
    {
      [(VisionCoreSceneNetInferenceNetworkDescriptor *)inferenceNetworkDescriptor entityNetOperatingPointsFileURL];
    }

    else
    {
      [(VisionCoreSceneNetInferenceNetworkDescriptor *)inferenceNetworkDescriptor sceneOperatingPointsFileURL];
    }
    v10 = ;
    if (v10)
    {
      v7 = [VNSceneTaxonomyOperationPoints loadFromURL:v10 error:a4];
      if (!v7)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v7 = +[VNOperationPoints unspecifiedOperationPoints];
    }

    [(NSMutableDictionary *)self->_originatingRequestSpecifierToOperationPoints setObject:v7 forKeyedSubscript:v6];
LABEL_10:
  }

  return v7;
}

- (_VNImageAnalyzerMultiDetectorSceneOperationPointsCache)initWithInferenceNetworkDescriptor:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _VNImageAnalyzerMultiDetectorSceneOperationPointsCache;
  v6 = [(_VNImageAnalyzerMultiDetectorSceneOperationPointsCache *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_inferenceNetworkDescriptor, a3);
    v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
    originatingRequestSpecifierToOperationPoints = v7->_originatingRequestSpecifierToOperationPoints;
    v7->_originatingRequestSpecifierToOperationPoints = v8;
  }

  return v7;
}

@end