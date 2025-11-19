@interface VNCoreSceneUnderstandingCompoundRequest
+ (id)compoundRequestsForOriginalRequests:(id)a3 withPerformingContext:(id)a4 error:(id *)a5;
+ (void)_evaluateOriginalVN5kJNH3eYuyaLxNpZr5Z7zi:(id)a3 configurations:(id)a4;
+ (void)_evaluateOriginalVN6Mb1ME89lyW3HpahkEygIG:(id)a3 configurations:(id)a4;
+ (void)_evaluateOriginalVNClassifyCityNatureImageRequest:(id)a3 configurations:(id)a4;
+ (void)_evaluateOriginalVNClassifyImageAestheticsRequest:(id)a3 configurations:(id)a4;
+ (void)_evaluateOriginalVNClassifyImageRequest:(id)a3 configurations:(id)a4;
+ (void)_evaluateOriginalVNClassifyJunkImageRequest:(id)a3 configurations:(id)a4;
+ (void)_evaluateOriginalVNCreateImageFingerprintsRequest:(id)a3 configurations:(id)a4;
+ (void)_evaluateOriginalVNCreateSceneprintRequest:(id)a3 configurations:(id)a4;
+ (void)_evaluateOriginalVNGenerateAttentionBasedSaliencyImageRequest:(id)a3 configurations:(id)a4;
+ (void)_evaluateOriginalVNGenerateImageFeaturePrintRequest:(id)a3 configurations:(id)a4;
+ (void)_evaluateOriginalVNGenerateObjectnessBasedSaliencyImageRequest:(id)a3 configurations:(id)a4;
+ (void)_evaluateOriginalVNRecognizeObjectsRequest:(id)a3 configurations:(id)a4;
+ (void)_evaluateOriginalVNSceneClassificationRequest:(id)a3 configurations:(id)a4;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (VNCoreSceneUnderstandingCompoundRequest)initWithDetectorType:(id)a3 configuration:(id)a4;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4;
@end

@implementation VNCoreSceneUnderstandingCompoundRequest

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v19[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [v8 imageBufferAndReturnError:a5];
  if (v9)
  {
    v10 = [v8 session];
    v18 = 0;
    v11 = [(VNRequest *)self applicableDetectorAndOptions:&v18 forRevision:a3 loadedInSession:v10 error:a5];
    v12 = v18;
    if (v11)
    {
      v19[0] = v9;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
      [v12 setObject:v13 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

      v14 = [v8 qosClass];
      [(VNCompoundRequest *)self regionOfInterest];
      v15 = [v11 processUsingQualityOfServiceClass:v14 options:v12 regionOfInterest:self warningRecorder:a5 error:0 progressHandler:?];
      v16 = v15 != 0;
      if (v15)
      {
        [(VNRequest *)self setResults:v15];
        [(VNCompoundRequest *)self recordWarningsInOriginalRequests];
        [(VNCoreSceneUnderstandingCompoundRequestDetectorConfiguration *)self->_detectorConfiguration cacheResultsInRequestPerformingContext:v8];
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

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4
{
  v9.receiver = self;
  v9.super_class = VNCoreSceneUnderstandingCompoundRequest;
  v5 = [(VNRequest *)&v9 newDefaultDetectorOptionsForRequestRevision:a3 session:a4];
  v6 = [(VNRequest *)self configuration];
  v7 = [v6 detectorConfigurationOptions];
  [v5 addEntriesFromDictionary:v7];

  return v5;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4
{
  v4 = [(VNRequest *)self configuration:a3];
  v5 = [v4 detectorType];

  return v5;
}

- (VNCoreSceneUnderstandingCompoundRequest)initWithDetectorType:(id)a3 configuration:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v20 = a3;
  v6 = a4;
  v7 = [v6 originalRequests];
  v25.receiver = self;
  v25.super_class = VNCoreSceneUnderstandingCompoundRequest;
  v8 = [(VNCompoundRequest *)&v25 initWithOriginalRequests:v7];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_detectorConfiguration, a4);
    v10 = [v6 mainStageComputeDevice];
    [(VNRequest *)v9 setComputeDevice:v10 forComputeStage:@"VNComputeStageMain"];

    v11 = [(VNRequest *)v9 configuration];
    [v11 setDetectorType:v20];
    v12 = [v6 detectorConfigurationOptions];
    [v11 setDetectorConfigurationOptions:v12];

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = v7;
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

          v18 = [*(*(&v21 + 1) + 8 * v17) configuration];
          [v13 addObject:v18];

          ++v17;
        }

        while (v15 != v17);
        v15 = [v14 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v15);
    }

    [v11 setOriginalRequestConfigurations:v13];
  }

  return v9;
}

+ (id)compoundRequestsForOriginalRequests:(id)a3 withPerformingContext:(id)a4 error:(id *)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v21 = a4;
  v22 = objc_alloc_init(VNCoreSceneUnderstandingCompoundRequestDetectorConfigurations);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v29 objects:v34 count:{16, v7}];
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
        v12 = [v11 frameworkClass];
        if (+[VNCoreSceneUnderstandingDetector handlesRequestClass:revision:](VNCoreSceneUnderstandingDetector, "handlesRequestClass:revision:", v12, [v11 resolvedRevision]))
        {
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __107__VNCoreSceneUnderstandingCompoundRequest_compoundRequestsForOriginalRequests_withPerformingContext_error___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0l;
          block[4] = a1;
          if (+[VNCoreSceneUnderstandingCompoundRequest compoundRequestsForOriginalRequests:withPerformingContext:error:]::originalRequestClassToSelectorMapOnceToken != -1)
          {
            dispatch_once(&+[VNCoreSceneUnderstandingCompoundRequest compoundRequestsForOriginalRequests:withPerformingContext:error:]::originalRequestClassToSelectorMapOnceToken, block);
          }

          v13 = std::__hash_table<std::__hash_value_type<objc_class * {__strong},objc_selector *>,std::__unordered_map_hasher<objc_class * {__strong},std::__hash_value_type<objc_class * {__strong},objc_selector *>,std::hash<objc_class * {__strong}>,std::equal_to<objc_class * {__strong}>,true>,std::__unordered_map_equal<objc_class * {__strong},std::__hash_value_type<objc_class * {__strong},objc_selector *>,std::equal_to<objc_class * {__strong}>,std::hash<objc_class * {__strong}>,true>,std::allocator<std::__hash_value_type<objc_class * {__strong},objc_selector *>>>::find<objc_class * {__strong}>(+[VNCoreSceneUnderstandingCompoundRequest compoundRequestsForOriginalRequests:withPerformingContext:error:]::originalRequestClassToSelectorMap, v12);
          if (v13)
          {
            [a1 performSelector:v13[3] withObject:v11 withObject:v22];
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
  v15 = [(VNCoreSceneUnderstandingCompoundRequestDetectorConfigurations *)v22 allConfigurations];
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v16)
  {
    v17 = *v25;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = [[a1 alloc] initWithDetectorType:@"VNCoreSceneUnderstandingDetectorType" configuration:*(*(&v24 + 1) + 8 * i)];
        [v14 addObject:v19];
      }

      v16 = [v15 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v16);
  }

  return v14;
}

+ (void)_evaluateOriginalVNClassifyCityNatureImageRequest:(id)a3 configurations:(id)a4
{
  v8 = a3;
  v5 = a4;
  if ([v8 resolvedRevision] == 2)
  {
    v6 = [v5 configurationForRequest:v8];
    v7 = [v6 addCityNatureConfigurationForOriginalRequest:v8];
  }
}

+ (void)_evaluateOriginalVN6Mb1ME89lyW3HpahkEygIG:(id)a3 configurations:(id)a4
{
  v8 = a3;
  v5 = a4;
  if ([v8 resolvedRevision] == 2)
  {
    v6 = [v5 configurationForRequest:v8];
    v7 = [v6 addSignificantEventConfigurationForOriginalRequest:v8];
  }
}

+ (void)_evaluateOriginalVN5kJNH3eYuyaLxNpZr5Z7zi:(id)a3 configurations:(id)a4
{
  v8 = a3;
  v5 = a4;
  if (([v8 resolvedRevision] - 3737841667) < 2)
  {
    v6 = [v5 configurationForRequest:v8];
    v7 = [v6 addVN5kJNH3eYuyaLxNpZr5Z7ziConfigurationForOriginalRequest:v8];
  }
}

+ (void)_evaluateOriginalVNClassifyJunkImageRequest:(id)a3 configurations:(id)a4
{
  v8 = a3;
  v5 = a4;
  if (([v8 resolvedRevision] - 3737841669) < 2)
  {
    v6 = [v5 configurationForRequest:v8];
    v7 = [v6 addJunkConfigurationForOriginalRequest:v8];
  }
}

+ (void)_evaluateOriginalVNCreateImageFingerprintsRequest:(id)a3 configurations:(id)a4
{
  v8 = a3;
  v5 = a4;
  if ([v8 resolvedRevision] == 1)
  {
    v6 = [v5 configurationForRequest:v8];
    v7 = [v6 addImageFingerprintsConfigurationForOriginalRequest:v8];
  }
}

+ (void)_evaluateOriginalVNRecognizeObjectsRequest:(id)a3 configurations:(id)a4
{
  v9 = a3;
  v5 = a4;
  if ([v9 resolvedRevision] == 3737841667)
  {
    v6 = [v5 configurationForRequest:v9];
    v7 = [v6 addRecognizeObjectsConfigurationForOriginalRequest:v9];
    [v9 modelMinimumDetectionConfidence];
    [v7 setMinimumDetectionConfidence:?];
    [v9 modelNonMaximumSuppressionThreshold];
    [v7 setNonMaximumSuppressionThreshold:?];
    v8 = [v9 targetedIdentifiers];
    [v7 setTargetedIdentifiers:v8];
  }
}

+ (void)_evaluateOriginalVNGenerateObjectnessBasedSaliencyImageRequest:(id)a3 configurations:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = [v9 resolvedRevision];
  if (v6 == 2 || v6 == 3737841666)
  {
    v7 = [v5 configurationForRequest:v9];
    v8 = [v7 addImageSaliencyOConfigurationForOriginalRequest:v9];
  }
}

+ (void)_evaluateOriginalVNGenerateAttentionBasedSaliencyImageRequest:(id)a3 configurations:(id)a4
{
  v10 = a3;
  v5 = a4;
  v6 = [v10 resolvedRevision];
  if ((v6 - 3737841667) < 2 || v6 == 2)
  {
    v8 = [v5 configurationForRequest:v10];
    v9 = [v8 addImageSaliencyAConfigurationForOriginalRequest:v10];
  }
}

+ (void)_evaluateOriginalVNClassifyImageAestheticsRequest:(id)a3 configurations:(id)a4
{
  v8 = a3;
  v5 = a4;
  if (([v8 resolvedRevision] - 3737841667) < 2)
  {
    v6 = [v5 configurationForRequest:v8];
    v7 = [v6 addImageAestheticsConfigurationForOriginalRequest:v8];
  }
}

+ (void)_evaluateOriginalVNGenerateImageFeaturePrintRequest:(id)a3 configurations:(id)a4
{
  v8 = a3;
  v5 = a4;
  if ([v8 resolvedRevision] == 2)
  {
    v6 = [v5 configurationForRequest:v8];
    v7 = [v6 addSceneprintConfigurationForOriginalRequest:v8];
  }
}

+ (void)_evaluateOriginalVNCreateSceneprintRequest:(id)a3 configurations:(id)a4
{
  v10 = a3;
  v5 = a4;
  v6 = [v10 resolvedRevision];
  if ((v6 - 3737841671) < 2 || v6 == 3)
  {
    v8 = [v5 configurationForRequest:v10];
    v9 = [v8 addSceneprintConfigurationForOriginalRequest:v10];
  }
}

+ (void)_evaluateOriginalVNSceneClassificationRequest:(id)a3 configurations:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = [v9 sceneObservation];

  if (!v6 && [v9 resolvedRevision] == 3737841665)
  {
    v7 = [v5 configurationForRequest:v9];
    v8 = [v7 addImageClassificationConfigurationForOriginalRequest:v9];
    [v8 setMaximumLeafClassifications:{objc_msgSend(v9, "maximumLeafObservations")}];
    [v8 setMaximumHierarchicalClassifications:{objc_msgSend(v9, "maximumHierarchicalObservations")}];
  }
}

+ (void)_evaluateOriginalVNClassifyImageRequest:(id)a3 configurations:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = [v9 resolvedRevision];
  if (v6 == 2 || v6 == 3737841666)
  {
    v7 = [v5 configurationForRequest:v9];
    v8 = [v7 addImageClassificationConfigurationForOriginalRequest:v9];
    [v8 setMaximumLeafClassifications:{objc_msgSend(v9, "maximumLeafObservations")}];
    [v8 setMaximumHierarchicalClassifications:{objc_msgSend(v9, "maximumHierarchicalObservations")}];
  }

  else
  {
    if (v6 != 3737841667)
    {
      goto LABEL_7;
    }

    v7 = [v5 configurationForRequest:v9];
    v8 = [v7 addEntityNetClassificationConfigurationForOriginalRequest:v9];
    [v8 setMaximumClassifications:{objc_msgSend(v9, "maximumLeafObservations")}];
  }

LABEL_7:
}

@end