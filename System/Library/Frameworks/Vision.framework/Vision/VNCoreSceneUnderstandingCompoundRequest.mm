@interface VNCoreSceneUnderstandingCompoundRequest
+ (id)compoundRequestsForOriginalRequests:(id)requests withPerformingContext:(id)context error:(id *)error;
+ (void)_evaluateOriginalVN5kJNH3eYuyaLxNpZr5Z7zi:(id)z7zi configurations:(id)configurations;
+ (void)_evaluateOriginalVN6Mb1ME89lyW3HpahkEygIG:(id)g configurations:(id)configurations;
+ (void)_evaluateOriginalVNClassifyCityNatureImageRequest:(id)request configurations:(id)configurations;
+ (void)_evaluateOriginalVNClassifyImageAestheticsRequest:(id)request configurations:(id)configurations;
+ (void)_evaluateOriginalVNClassifyImageRequest:(id)request configurations:(id)configurations;
+ (void)_evaluateOriginalVNClassifyJunkImageRequest:(id)request configurations:(id)configurations;
+ (void)_evaluateOriginalVNCreateImageFingerprintsRequest:(id)request configurations:(id)configurations;
+ (void)_evaluateOriginalVNCreateSceneprintRequest:(id)request configurations:(id)configurations;
+ (void)_evaluateOriginalVNGenerateAttentionBasedSaliencyImageRequest:(id)request configurations:(id)configurations;
+ (void)_evaluateOriginalVNGenerateImageFeaturePrintRequest:(id)request configurations:(id)configurations;
+ (void)_evaluateOriginalVNGenerateObjectnessBasedSaliencyImageRequest:(id)request configurations:(id)configurations;
+ (void)_evaluateOriginalVNRecognizeObjectsRequest:(id)request configurations:(id)configurations;
+ (void)_evaluateOriginalVNSceneClassificationRequest:(id)request configurations:(id)configurations;
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (VNCoreSceneUnderstandingCompoundRequest)initWithDetectorType:(id)type configuration:(id)configuration;
- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session;
@end

@implementation VNCoreSceneUnderstandingCompoundRequest

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v9 = [contextCopy imageBufferAndReturnError:error];
  if (v9)
  {
    session = [contextCopy session];
    v18 = 0;
    v11 = [(VNRequest *)self applicableDetectorAndOptions:&v18 forRevision:revision loadedInSession:session error:error];
    v12 = v18;
    if (v11)
    {
      v19[0] = v9;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
      [v12 setObject:v13 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

      qosClass = [contextCopy qosClass];
      [(VNCompoundRequest *)self regionOfInterest];
      v15 = [v11 processUsingQualityOfServiceClass:qosClass options:v12 regionOfInterest:self warningRecorder:error error:0 progressHandler:?];
      v16 = v15 != 0;
      if (v15)
      {
        [(VNRequest *)self setResults:v15];
        [(VNCompoundRequest *)self recordWarningsInOriginalRequests];
        [(VNCoreSceneUnderstandingCompoundRequestDetectorConfiguration *)self->_detectorConfiguration cacheResultsInRequestPerformingContext:contextCopy];
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session
{
  v9.receiver = self;
  v9.super_class = VNCoreSceneUnderstandingCompoundRequest;
  v5 = [(VNRequest *)&v9 newDefaultDetectorOptionsForRequestRevision:revision session:session];
  configuration = [(VNRequest *)self configuration];
  detectorConfigurationOptions = [configuration detectorConfigurationOptions];
  [v5 addEntriesFromDictionary:detectorConfigurationOptions];

  return v5;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error
{
  v4 = [(VNRequest *)self configuration:revision];
  detectorType = [v4 detectorType];

  return detectorType;
}

- (VNCoreSceneUnderstandingCompoundRequest)initWithDetectorType:(id)type configuration:(id)configuration
{
  v27 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  configurationCopy = configuration;
  originalRequests = [configurationCopy originalRequests];
  v25.receiver = self;
  v25.super_class = VNCoreSceneUnderstandingCompoundRequest;
  v8 = [(VNCompoundRequest *)&v25 initWithOriginalRequests:originalRequests];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_detectorConfiguration, configuration);
    mainStageComputeDevice = [configurationCopy mainStageComputeDevice];
    [(VNRequest *)v9 setComputeDevice:mainStageComputeDevice forComputeStage:@"VNComputeStageMain"];

    configuration = [(VNRequest *)v9 configuration];
    [configuration setDetectorType:typeCopy];
    detectorConfigurationOptions = [configurationCopy detectorConfigurationOptions];
    [configuration setDetectorConfigurationOptions:detectorConfigurationOptions];

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = originalRequests;
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v15)
    {
      v16 = *v22;
      do
      {
        v17 = 0;
        do
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v14);
          }

          configuration2 = [*(*(&v21 + 1) + 8 * v17) configuration];
          [v13 addObject:configuration2];

          ++v17;
        }

        while (v15 != v17);
        v15 = [v14 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v15);
    }

    [configuration setOriginalRequestConfigurations:v13];
  }

  return v9;
}

+ (id)compoundRequestsForOriginalRequests:(id)requests withPerformingContext:(id)context error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  contextCopy = context;
  v22 = objc_alloc_init(VNCoreSceneUnderstandingCompoundRequestDetectorConfigurations);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = requestsCopy;
  v8 = [obj countByEnumeratingWithState:&v29 objects:v34 count:{16, requestsCopy}];
  if (v8)
  {
    v9 = *v30;
    do
    {
      v10 = 0;
      do
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * v10);
        frameworkClass = [v11 frameworkClass];
        if (+[VNCoreSceneUnderstandingDetector handlesRequestClass:revision:](VNCoreSceneUnderstandingDetector, "handlesRequestClass:revision:", frameworkClass, [v11 resolvedRevision]))
        {
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __107__VNCoreSceneUnderstandingCompoundRequest_compoundRequestsForOriginalRequests_withPerformingContext_error___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0l;
          block[4] = self;
          if (+[VNCoreSceneUnderstandingCompoundRequest compoundRequestsForOriginalRequests:withPerformingContext:error:]::originalRequestClassToSelectorMapOnceToken != -1)
          {
            dispatch_once(&+[VNCoreSceneUnderstandingCompoundRequest compoundRequestsForOriginalRequests:withPerformingContext:error:]::originalRequestClassToSelectorMapOnceToken, block);
          }

          v13 = std::__hash_table<std::__hash_value_type<objc_class * {__strong},objc_selector *>,std::__unordered_map_hasher<objc_class * {__strong},std::__hash_value_type<objc_class * {__strong},objc_selector *>,std::hash<objc_class * {__strong}>,std::equal_to<objc_class * {__strong}>,true>,std::__unordered_map_equal<objc_class * {__strong},std::__hash_value_type<objc_class * {__strong},objc_selector *>,std::equal_to<objc_class * {__strong}>,std::hash<objc_class * {__strong}>,true>,std::allocator<std::__hash_value_type<objc_class * {__strong},objc_selector *>>>::find<objc_class * {__strong}>(+[VNCoreSceneUnderstandingCompoundRequest compoundRequestsForOriginalRequests:withPerformingContext:error:]::originalRequestClassToSelectorMap, frameworkClass);
          if (v13)
          {
            [self performSelector:v13[3] withObject:v11 withObject:v22];
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v8);
  }

  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  allConfigurations = [(VNCoreSceneUnderstandingCompoundRequestDetectorConfigurations *)v22 allConfigurations];
  v16 = [allConfigurations countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v16)
  {
    v17 = *v25;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(allConfigurations);
        }

        v19 = [[self alloc] initWithDetectorType:@"VNCoreSceneUnderstandingDetectorType" configuration:*(*(&v24 + 1) + 8 * i)];
        [v14 addObject:v19];
      }

      v16 = [allConfigurations countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v16);
  }

  return v14;
}

+ (void)_evaluateOriginalVNClassifyCityNatureImageRequest:(id)request configurations:(id)configurations
{
  requestCopy = request;
  configurationsCopy = configurations;
  if ([requestCopy resolvedRevision] == 2)
  {
    v6 = [configurationsCopy configurationForRequest:requestCopy];
    v7 = [v6 addCityNatureConfigurationForOriginalRequest:requestCopy];
  }
}

+ (void)_evaluateOriginalVN6Mb1ME89lyW3HpahkEygIG:(id)g configurations:(id)configurations
{
  gCopy = g;
  configurationsCopy = configurations;
  if ([gCopy resolvedRevision] == 2)
  {
    v6 = [configurationsCopy configurationForRequest:gCopy];
    v7 = [v6 addSignificantEventConfigurationForOriginalRequest:gCopy];
  }
}

+ (void)_evaluateOriginalVN5kJNH3eYuyaLxNpZr5Z7zi:(id)z7zi configurations:(id)configurations
{
  z7ziCopy = z7zi;
  configurationsCopy = configurations;
  if (([z7ziCopy resolvedRevision] - 3737841667) < 2)
  {
    v6 = [configurationsCopy configurationForRequest:z7ziCopy];
    v7 = [v6 addVN5kJNH3eYuyaLxNpZr5Z7ziConfigurationForOriginalRequest:z7ziCopy];
  }
}

+ (void)_evaluateOriginalVNClassifyJunkImageRequest:(id)request configurations:(id)configurations
{
  requestCopy = request;
  configurationsCopy = configurations;
  if (([requestCopy resolvedRevision] - 3737841669) < 2)
  {
    v6 = [configurationsCopy configurationForRequest:requestCopy];
    v7 = [v6 addJunkConfigurationForOriginalRequest:requestCopy];
  }
}

+ (void)_evaluateOriginalVNCreateImageFingerprintsRequest:(id)request configurations:(id)configurations
{
  requestCopy = request;
  configurationsCopy = configurations;
  if ([requestCopy resolvedRevision] == 1)
  {
    v6 = [configurationsCopy configurationForRequest:requestCopy];
    v7 = [v6 addImageFingerprintsConfigurationForOriginalRequest:requestCopy];
  }
}

+ (void)_evaluateOriginalVNRecognizeObjectsRequest:(id)request configurations:(id)configurations
{
  requestCopy = request;
  configurationsCopy = configurations;
  if ([requestCopy resolvedRevision] == 3737841667)
  {
    v6 = [configurationsCopy configurationForRequest:requestCopy];
    v7 = [v6 addRecognizeObjectsConfigurationForOriginalRequest:requestCopy];
    [requestCopy modelMinimumDetectionConfidence];
    [v7 setMinimumDetectionConfidence:?];
    [requestCopy modelNonMaximumSuppressionThreshold];
    [v7 setNonMaximumSuppressionThreshold:?];
    targetedIdentifiers = [requestCopy targetedIdentifiers];
    [v7 setTargetedIdentifiers:targetedIdentifiers];
  }
}

+ (void)_evaluateOriginalVNGenerateObjectnessBasedSaliencyImageRequest:(id)request configurations:(id)configurations
{
  requestCopy = request;
  configurationsCopy = configurations;
  resolvedRevision = [requestCopy resolvedRevision];
  if (resolvedRevision == 2 || resolvedRevision == 3737841666)
  {
    v7 = [configurationsCopy configurationForRequest:requestCopy];
    v8 = [v7 addImageSaliencyOConfigurationForOriginalRequest:requestCopy];
  }
}

+ (void)_evaluateOriginalVNGenerateAttentionBasedSaliencyImageRequest:(id)request configurations:(id)configurations
{
  requestCopy = request;
  configurationsCopy = configurations;
  resolvedRevision = [requestCopy resolvedRevision];
  if ((resolvedRevision - 3737841667) < 2 || resolvedRevision == 2)
  {
    v8 = [configurationsCopy configurationForRequest:requestCopy];
    v9 = [v8 addImageSaliencyAConfigurationForOriginalRequest:requestCopy];
  }
}

+ (void)_evaluateOriginalVNClassifyImageAestheticsRequest:(id)request configurations:(id)configurations
{
  requestCopy = request;
  configurationsCopy = configurations;
  if (([requestCopy resolvedRevision] - 3737841667) < 2)
  {
    v6 = [configurationsCopy configurationForRequest:requestCopy];
    v7 = [v6 addImageAestheticsConfigurationForOriginalRequest:requestCopy];
  }
}

+ (void)_evaluateOriginalVNGenerateImageFeaturePrintRequest:(id)request configurations:(id)configurations
{
  requestCopy = request;
  configurationsCopy = configurations;
  if ([requestCopy resolvedRevision] == 2)
  {
    v6 = [configurationsCopy configurationForRequest:requestCopy];
    v7 = [v6 addSceneprintConfigurationForOriginalRequest:requestCopy];
  }
}

+ (void)_evaluateOriginalVNCreateSceneprintRequest:(id)request configurations:(id)configurations
{
  requestCopy = request;
  configurationsCopy = configurations;
  resolvedRevision = [requestCopy resolvedRevision];
  if ((resolvedRevision - 3737841671) < 2 || resolvedRevision == 3)
  {
    v8 = [configurationsCopy configurationForRequest:requestCopy];
    v9 = [v8 addSceneprintConfigurationForOriginalRequest:requestCopy];
  }
}

+ (void)_evaluateOriginalVNSceneClassificationRequest:(id)request configurations:(id)configurations
{
  requestCopy = request;
  configurationsCopy = configurations;
  sceneObservation = [requestCopy sceneObservation];

  if (!sceneObservation && [requestCopy resolvedRevision] == 3737841665)
  {
    v7 = [configurationsCopy configurationForRequest:requestCopy];
    v8 = [v7 addImageClassificationConfigurationForOriginalRequest:requestCopy];
    [v8 setMaximumLeafClassifications:{objc_msgSend(requestCopy, "maximumLeafObservations")}];
    [v8 setMaximumHierarchicalClassifications:{objc_msgSend(requestCopy, "maximumHierarchicalObservations")}];
  }
}

+ (void)_evaluateOriginalVNClassifyImageRequest:(id)request configurations:(id)configurations
{
  requestCopy = request;
  configurationsCopy = configurations;
  resolvedRevision = [requestCopy resolvedRevision];
  if (resolvedRevision == 2 || resolvedRevision == 3737841666)
  {
    v7 = [configurationsCopy configurationForRequest:requestCopy];
    v8 = [v7 addImageClassificationConfigurationForOriginalRequest:requestCopy];
    [v8 setMaximumLeafClassifications:{objc_msgSend(requestCopy, "maximumLeafObservations")}];
    [v8 setMaximumHierarchicalClassifications:{objc_msgSend(requestCopy, "maximumHierarchicalObservations")}];
  }

  else
  {
    if (resolvedRevision != 3737841667)
    {
      goto LABEL_7;
    }

    v7 = [configurationsCopy configurationForRequest:requestCopy];
    v8 = [v7 addEntityNetClassificationConfigurationForOriginalRequest:requestCopy];
    [v8 setMaximumClassifications:{objc_msgSend(requestCopy, "maximumLeafObservations")}];
  }

LABEL_7:
}

@end