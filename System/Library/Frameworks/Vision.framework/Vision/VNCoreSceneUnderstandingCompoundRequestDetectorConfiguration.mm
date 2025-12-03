@interface VNCoreSceneUnderstandingCompoundRequestDetectorConfiguration
- (VNCoreSceneUnderstandingCompoundRequestDetectorConfiguration)initWithMainStageComputeDevice:(id)device;
- (id)_addFeatureConfigurationOfClass:(void *)class forOriginalRequest:(void *)request storedInOptionsKey:;
- (id)addCityNatureConfigurationForOriginalRequest:(id)request;
- (id)addEntityNetClassificationConfigurationForOriginalRequest:(id)request;
- (id)addImageAestheticsConfigurationForOriginalRequest:(id)request;
- (id)addImageClassificationConfigurationForOriginalRequest:(id)request;
- (id)addImageFingerprintsConfigurationForOriginalRequest:(id)request;
- (id)addImageSaliencyAConfigurationForOriginalRequest:(id)request;
- (id)addImageSaliencyOConfigurationForOriginalRequest:(id)request;
- (id)addJunkConfigurationForOriginalRequest:(id)request;
- (id)addRecognizeObjectsConfigurationForOriginalRequest:(id)request;
- (id)addSceneprintConfigurationForOriginalRequest:(id)request;
- (id)addSignificantEventConfigurationForOriginalRequest:(id)request;
- (id)addVN5kJNH3eYuyaLxNpZr5Z7ziConfigurationForOriginalRequest:(id)request;
- (void)cacheResultsInRequestPerformingContext:(id)context;
@end

@implementation VNCoreSceneUnderstandingCompoundRequestDetectorConfiguration

- (void)cacheResultsInRequestPerformingContext:(id)context
{
  contextCopy = context;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __103__VNCoreSceneUnderstandingCompoundRequestDetectorConfiguration_cacheResultsInRequestPerformingContext___block_invoke;
  aBlock[3] = &unk_1E77B5DD8;
  v5 = contextCopy;
  v20 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [(NSMutableDictionary *)self->_detectorConfigurationOptions objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_SceneprintConfigurations"];
  v6[2](v6, v7);

  v8 = [(NSMutableDictionary *)self->_detectorConfigurationOptions objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_ImageClassificationConfigurations"];
  v6[2](v6, v8);

  v9 = [(NSMutableDictionary *)self->_detectorConfigurationOptions objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_EntityNetClassificationConfigurations"];
  v6[2](v6, v9);

  v10 = [(NSMutableDictionary *)self->_detectorConfigurationOptions objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_ImageAestheticsConfigurations"];
  v6[2](v6, v10);

  v11 = [(NSMutableDictionary *)self->_detectorConfigurationOptions objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_ImageSaliencyAConfigurations"];
  v6[2](v6, v11);

  v12 = [(NSMutableDictionary *)self->_detectorConfigurationOptions objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_ImageSaliencyOConfigurations"];
  v6[2](v6, v12);

  v13 = [(NSMutableDictionary *)self->_detectorConfigurationOptions objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_RecognizeObjectsConfigurations"];
  v6[2](v6, v13);

  v14 = [(NSMutableDictionary *)self->_detectorConfigurationOptions objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_ImageFingerprintsConfigurations"];
  v6[2](v6, v14);

  v15 = [(NSMutableDictionary *)self->_detectorConfigurationOptions objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_JunkConfigurations"];
  v6[2](v6, v15);

  v16 = [(NSMutableDictionary *)self->_detectorConfigurationOptions objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_5kJNH3eYuyaLxNpZr5Z7ziConfigurations"];
  v6[2](v6, v16);

  v17 = [(NSMutableDictionary *)self->_detectorConfigurationOptions objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_SignificantEventConfigurations"];
  v6[2](v6, v17);

  v18 = [(NSMutableDictionary *)self->_detectorConfigurationOptions objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_CityNatureGatingConfigurations"];
  v6[2](v6, v18);
}

void __103__VNCoreSceneUnderstandingCompoundRequestDetectorConfiguration_cacheResultsInRequestPerformingContext___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(&v8 + 1) + 8 * v6) observationsRecipient];
        [*(a1 + 32) cacheObservationsOfRequest:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (id)addCityNatureConfigurationForOriginalRequest:(id)request
{
  requestCopy = request;
  v5 = objc_opt_class();
  v6 = [(VNCoreSceneUnderstandingCompoundRequestDetectorConfiguration *)&self->super.isa _addFeatureConfigurationOfClass:v5 forOriginalRequest:requestCopy storedInOptionsKey:@"VNCoreSceneUnderstandingDetectorProcessingOption_CityNatureGatingConfigurations"];

  return v6;
}

- (id)_addFeatureConfigurationOfClass:(void *)class forOriginalRequest:(void *)request storedInOptionsKey:
{
  classCopy = class;
  requestCopy = request;
  if (self)
  {
    v9 = [self[3] objectForKey:requestCopy];
    if (!v9)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [self[3] setObject:v9 forKey:requestCopy];
    }

    self = [[a2 alloc] initWithObservationsRecipient:classCopy];
    [v9 addObject:self];
  }

  return self;
}

- (id)addSignificantEventConfigurationForOriginalRequest:(id)request
{
  requestCopy = request;
  v5 = objc_opt_class();
  v6 = [(VNCoreSceneUnderstandingCompoundRequestDetectorConfiguration *)&self->super.isa _addFeatureConfigurationOfClass:v5 forOriginalRequest:requestCopy storedInOptionsKey:@"VNCoreSceneUnderstandingDetectorProcessingOption_SignificantEventConfigurations"];

  return v6;
}

- (id)addVN5kJNH3eYuyaLxNpZr5Z7ziConfigurationForOriginalRequest:(id)request
{
  requestCopy = request;
  v5 = objc_opt_class();
  v6 = [(VNCoreSceneUnderstandingCompoundRequestDetectorConfiguration *)&self->super.isa _addFeatureConfigurationOfClass:v5 forOriginalRequest:requestCopy storedInOptionsKey:@"VNCoreSceneUnderstandingDetectorProcessingOption_5kJNH3eYuyaLxNpZr5Z7ziConfigurations"];

  return v6;
}

- (id)addJunkConfigurationForOriginalRequest:(id)request
{
  requestCopy = request;
  v5 = objc_opt_class();
  v6 = [(VNCoreSceneUnderstandingCompoundRequestDetectorConfiguration *)&self->super.isa _addFeatureConfigurationOfClass:v5 forOriginalRequest:requestCopy storedInOptionsKey:@"VNCoreSceneUnderstandingDetectorProcessingOption_JunkConfigurations"];

  return v6;
}

- (id)addImageFingerprintsConfigurationForOriginalRequest:(id)request
{
  requestCopy = request;
  v5 = objc_opt_class();
  v6 = [(VNCoreSceneUnderstandingCompoundRequestDetectorConfiguration *)&self->super.isa _addFeatureConfigurationOfClass:v5 forOriginalRequest:requestCopy storedInOptionsKey:@"VNCoreSceneUnderstandingDetectorProcessingOption_ImageFingerprintsConfigurations"];

  return v6;
}

- (id)addRecognizeObjectsConfigurationForOriginalRequest:(id)request
{
  requestCopy = request;
  v5 = objc_opt_class();
  v6 = [(VNCoreSceneUnderstandingCompoundRequestDetectorConfiguration *)&self->super.isa _addFeatureConfigurationOfClass:v5 forOriginalRequest:requestCopy storedInOptionsKey:@"VNCoreSceneUnderstandingDetectorProcessingOption_RecognizeObjectsConfigurations"];

  return v6;
}

- (id)addImageSaliencyOConfigurationForOriginalRequest:(id)request
{
  requestCopy = request;
  v5 = objc_opt_class();
  v6 = [(VNCoreSceneUnderstandingCompoundRequestDetectorConfiguration *)&self->super.isa _addFeatureConfigurationOfClass:v5 forOriginalRequest:requestCopy storedInOptionsKey:@"VNCoreSceneUnderstandingDetectorProcessingOption_ImageSaliencyOConfigurations"];

  return v6;
}

- (id)addImageSaliencyAConfigurationForOriginalRequest:(id)request
{
  requestCopy = request;
  v5 = objc_opt_class();
  v6 = [(VNCoreSceneUnderstandingCompoundRequestDetectorConfiguration *)&self->super.isa _addFeatureConfigurationOfClass:v5 forOriginalRequest:requestCopy storedInOptionsKey:@"VNCoreSceneUnderstandingDetectorProcessingOption_ImageSaliencyAConfigurations"];

  return v6;
}

- (id)addImageAestheticsConfigurationForOriginalRequest:(id)request
{
  requestCopy = request;
  v5 = objc_opt_class();
  v6 = [(VNCoreSceneUnderstandingCompoundRequestDetectorConfiguration *)&self->super.isa _addFeatureConfigurationOfClass:v5 forOriginalRequest:requestCopy storedInOptionsKey:@"VNCoreSceneUnderstandingDetectorProcessingOption_ImageAestheticsConfigurations"];

  return v6;
}

- (id)addEntityNetClassificationConfigurationForOriginalRequest:(id)request
{
  requestCopy = request;
  v5 = objc_opt_class();
  v6 = [(VNCoreSceneUnderstandingCompoundRequestDetectorConfiguration *)&self->super.isa _addFeatureConfigurationOfClass:v5 forOriginalRequest:requestCopy storedInOptionsKey:@"VNCoreSceneUnderstandingDetectorProcessingOption_EntityNetClassificationConfigurations"];

  return v6;
}

- (id)addImageClassificationConfigurationForOriginalRequest:(id)request
{
  requestCopy = request;
  v5 = objc_opt_class();
  v6 = [(VNCoreSceneUnderstandingCompoundRequestDetectorConfiguration *)&self->super.isa _addFeatureConfigurationOfClass:v5 forOriginalRequest:requestCopy storedInOptionsKey:@"VNCoreSceneUnderstandingDetectorProcessingOption_ImageClassificationConfigurations"];

  return v6;
}

- (id)addSceneprintConfigurationForOriginalRequest:(id)request
{
  requestCopy = request;
  v5 = objc_opt_class();
  v6 = [(VNCoreSceneUnderstandingCompoundRequestDetectorConfiguration *)&self->super.isa _addFeatureConfigurationOfClass:v5 forOriginalRequest:requestCopy storedInOptionsKey:@"VNCoreSceneUnderstandingDetectorProcessingOption_SceneprintConfigurations"];

  return v6;
}

- (VNCoreSceneUnderstandingCompoundRequestDetectorConfiguration)initWithMainStageComputeDevice:(id)device
{
  deviceCopy = device;
  v13.receiver = self;
  v13.super_class = VNCoreSceneUnderstandingCompoundRequestDetectorConfiguration;
  v6 = [(VNCoreSceneUnderstandingCompoundRequestDetectorConfiguration *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mainStageComputeDevice, device);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    originalRequests = v7->_originalRequests;
    v7->_originalRequests = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    detectorConfigurationOptions = v7->_detectorConfigurationOptions;
    v7->_detectorConfigurationOptions = v10;

    [(NSMutableDictionary *)v7->_detectorConfigurationOptions setObject:&unk_1F19C1AE0 forKeyedSubscript:@"VNDetectorProcessOption_ImageCropAndScaleOption"];
  }

  return v7;
}

@end