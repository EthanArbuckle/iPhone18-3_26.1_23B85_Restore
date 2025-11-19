@interface VNImageAnalyzerCompoundRequestGroupingConfiguration
- (id)addSceneConfigurationForOriginalRequest:(id)a3;
- (id)addSceneprintConfigurationForOriginalRequest:(id)a3;
- (id)computeStageDeviceAssignments;
- (void)addOriginalRequest:(id)a3 forKind:(unint64_t)a4;
- (void)addTilingWarningRecorder:(id)a3;
- (void)enumerateOriginalRequestsByKindUsingBlock:(id)a3;
@end

@implementation VNImageAnalyzerCompoundRequestGroupingConfiguration

- (id)computeStageDeviceAssignments
{
  v2 = [(NSMutableDictionary *)self->_computeStageDeviceAssignments copy];

  return v2;
}

- (void)enumerateOriginalRequestsByKindUsingBlock:(id)a3
{
  v4 = a3;
  kindToOriginalRequestsMapping = self->_kindToOriginalRequestsMapping;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __97__VNImageAnalyzerCompoundRequestGroupingConfiguration_enumerateOriginalRequestsByKindUsingBlock___block_invoke;
  v7[3] = &unk_1E77B2858;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)kindToOriginalRequestsMapping enumerateKeysAndObjectsUsingBlock:v7];
}

void __97__VNImageAnalyzerCompoundRequestGroupingConfiguration_enumerateOriginalRequestsByKindUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v11 = a2;
  v7 = a3;
  v8 = *(a1 + 32);
  v9 = [v11 unsignedIntegerValue];
  v10 = [v7 copy];
  (*(v8 + 16))(v8, v9, v10, a4);
}

- (void)addTilingWarningRecorder:(id)a3
{
  v5 = a3;
  v4 = [(NSMutableDictionary *)self->_detectorConfigurationOptions objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorProcessingOption_TilingWarningRecorders"];
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  }

  if ([v4 indexOfObjectIdenticalTo:v5] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 addObject:v5];
  }
}

- (void)addOriginalRequest:(id)a3 forKind:(unint64_t)a4
{
  v8 = a3;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v7 = [(NSMutableDictionary *)self->_kindToOriginalRequestsMapping objectForKey:v6];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];
  }

  [v7 addObject:v8];
  [(NSMutableArray *)self->_originalRequests addObject:v8];
}

- (id)addSceneprintConfigurationForOriginalRequest:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_detectorConfigurationOptions objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_SceneprintConfigurations"];
  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NSMutableDictionary *)self->_detectorConfigurationOptions setObject:v5 forKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_SceneprintConfigurations"];
  }

  v6 = [(VNImageAnalyzerMultiDetectorAnalysisConfiguration *)[VNImageAnalyzerMultiDetectorSceneprintConfiguration alloc] initWithObservationsRecipient:v4];
  [v5 addObject:v6];

  return v6;
}

- (id)addSceneConfigurationForOriginalRequest:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_detectorConfigurationOptions objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_SceneConfigurations"];
  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NSMutableDictionary *)self->_detectorConfigurationOptions setObject:v5 forKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_SceneConfigurations"];
  }

  v6 = [[VNImageAnalyzerMultiDetectorSceneClassificationConfiguration alloc] initWithObservationsRecipient:v4];
  [v5 addObject:v6];

  return v6;
}

@end