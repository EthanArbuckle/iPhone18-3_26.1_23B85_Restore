@interface VNImageAnalyzerCompoundRequest
+ (id)compoundRequestsForOriginalRequests:(id)a3 withPerformingContext:(id)a4 error:(id *)a5;
+ (id)publicRevisionsSet;
+ (void)_evaluateOriginalVN1JC7R3k4455fKQz0dY1VhQ:(id)a3 configurations:(id)a4;
+ (void)_evaluateOriginalVN5kJNH3eYuyaLxNpZr5Z7zi:(id)a3 configurations:(id)a4;
+ (void)_evaluateOriginalVN6Mb1ME89lyW3HpahkEygIG:(id)a3 configurations:(id)a4;
+ (void)_evaluateOriginalVNClassifyCityNatureImageRequest:(id)a3 configurations:(id)a4;
+ (void)_evaluateOriginalVNClassifyImageAestheticsRequest:(id)a3 configurations:(id)a4;
+ (void)_evaluateOriginalVNClassifyImageRequest:(id)a3 configurations:(id)a4;
+ (void)_evaluateOriginalVNClassifyJunkImageRequest:(id)a3 configurations:(id)a4;
+ (void)_evaluateOriginalVNClassifyPotentialLandmarkRequest:(id)a3 configurations:(id)a4;
+ (void)_evaluateOriginalVNCreateImageFingerprintsRequest:(id)a3 configurations:(id)a4;
+ (void)_evaluateOriginalVNCreateSceneprintRequest:(id)a3 configurations:(id)a4;
+ (void)_evaluateOriginalVNGenerateAttentionBasedSaliencyImageRequest:(id)a3 configurations:(id)a4;
+ (void)_evaluateOriginalVNGenerateImageFeaturePrintRequest:(id)a3 configurations:(id)a4;
+ (void)_evaluateOriginalVNGenerateObjectnessBasedSaliencyImageRequest:(id)a3 configurations:(id)a4;
+ (void)_evaluateOriginalVNRecognizeObjectsRequest:(id)a3 configurations:(id)a4;
+ (void)_evaluateOriginalVNSceneClassificationRequest:(id)a3 configurations:(id)a4;
+ (void)_evaluateOriginalVNVYvzEtX1JlUdu8xx5qhDI:(id)a3 configurations:(id)a4;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3;
- (VNImageAnalyzerCompoundRequest)initWithDetectorType:(id)a3 groupingConfiguration:(id)a4;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4;
- (unint64_t)networkModel;
@end

@implementation VNImageAnalyzerCompoundRequest

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v65[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [v8 imageBufferAndReturnError:a5];
  if (v9)
  {
    v63 = [v8 session];
    v64 = 0;
    v10 = [VNRequest applicableDetectorAndOptions:"applicableDetectorAndOptions:forRevision:loadedInSession:error:" forRevision:&v64 loadedInSession:a3 error:?];
    v11 = v64;
    if (v10)
    {
      v65[0] = v9;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:1];
      [v11 setObject:v12 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

      v13 = [v8 qosClass];
      [(VNCompoundRequest *)self regionOfInterest];
      v14 = [v10 processUsingQualityOfServiceClass:v13 options:v11 regionOfInterest:self warningRecorder:a5 error:0 progressHandler:?];
      v15 = v14 != 0;
      if (v14)
      {
        [(VNRequest *)self setResults:v14];
        [(VNCompoundRequest *)self recordWarningsInOriginalRequests];
        groupingConfiguration = self->_groupingConfiguration;
        v62 = v8;
        if (groupingConfiguration)
        {
          v17 = [(NSMutableDictionary *)groupingConfiguration->_detectorConfigurationOptions objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_SceneConfigurations"];
          _recordResultsInObservationsRecipients(v17, v62);

          v18 = [(NSMutableDictionary *)groupingConfiguration->_detectorConfigurationOptions objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_EntityNetConfiguration"];
          v19 = v62;
          if (v18)
          {
            v20 = [v18 observationsRecipient];
            [v19 cacheObservationsOfRequest:v20];
          }

          v21 = [(NSMutableDictionary *)groupingConfiguration->_detectorConfigurationOptions objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_SceneprintConfigurations"];
          _recordResultsInObservationsRecipients(v21, v19);

          v22 = [(NSMutableDictionary *)groupingConfiguration->_detectorConfigurationOptions objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_CompressedSceneprintConfiguration"];
          v23 = v19;
          if (v22)
          {
            v24 = [v22 observationsRecipient];
            [v23 cacheObservationsOfRequest:v24];
          }

          v25 = [(NSMutableDictionary *)groupingConfiguration->_detectorConfigurationOptions objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_AestheticsConfiguration"];
          v26 = v23;
          if (v25)
          {
            v27 = [v25 observationsRecipient];
            [v26 cacheObservationsOfRequest:v27];
          }

          v28 = [(NSMutableDictionary *)groupingConfiguration->_detectorConfigurationOptions objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_SaliencyAConfiguration"];
          v29 = v26;
          if (v28)
          {
            v30 = [v28 observationsRecipient];
            [v29 cacheObservationsOfRequest:v30];
          }

          v31 = [(NSMutableDictionary *)groupingConfiguration->_detectorConfigurationOptions objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_SaliencyOConfiguration"];
          v32 = v29;
          if (v31)
          {
            v33 = [v31 observationsRecipient];
            [v32 cacheObservationsOfRequest:v33];
          }

          v34 = [(NSMutableDictionary *)groupingConfiguration->_detectorConfigurationOptions objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_RecognizeObjectsConfiguration"];
          v35 = v32;
          if (v34)
          {
            v36 = [v34 observationsRecipient];
            [v35 cacheObservationsOfRequest:v36];
          }

          v37 = [(NSMutableDictionary *)groupingConfiguration->_detectorConfigurationOptions objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_VN1JC7R3k4455fKQz0dY1VhQConfiguration"];
          v38 = v35;
          if (v37)
          {
            v39 = [v37 observationsRecipient];
            [v38 cacheObservationsOfRequest:v39];
          }

          v40 = [(NSMutableDictionary *)groupingConfiguration->_detectorConfigurationOptions objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_ImageFingerprintsConfiguration"];
          v41 = v38;
          if (v40)
          {
            v42 = [v40 observationsRecipient];
            [v41 cacheObservationsOfRequest:v42];
          }

          v43 = [(NSMutableDictionary *)groupingConfiguration->_detectorConfigurationOptions objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_JunkConfiguration"];
          v44 = v41;
          if (v43)
          {
            v45 = [v43 observationsRecipient];
            [v44 cacheObservationsOfRequest:v45];
          }

          v46 = [(NSMutableDictionary *)groupingConfiguration->_detectorConfigurationOptions objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_VNVYvzEtX1JlUdu8xx5qhDIConfiguration"];
          v47 = v44;
          if (v46)
          {
            v48 = [v46 observationsRecipient];
            [v47 cacheObservationsOfRequest:v48];
          }

          v49 = [(NSMutableDictionary *)groupingConfiguration->_detectorConfigurationOptions objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_PotentialLandmarkConfiguration"];
          v50 = v47;
          if (v49)
          {
            v51 = [v49 observationsRecipient];
            [v50 cacheObservationsOfRequest:v51];
          }

          v52 = [(NSMutableDictionary *)groupingConfiguration->_detectorConfigurationOptions objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_VN5kJNH3eYuyaLxNpZr5Z7ziConfiguration"];
          v53 = v50;
          if (v52)
          {
            v54 = [v52 observationsRecipient];
            [v53 cacheObservationsOfRequest:v54];
          }

          v55 = [(NSMutableDictionary *)groupingConfiguration->_detectorConfigurationOptions objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_VN6Mb1ME89lyW3HpahkEygIGConfiguration"];
          v56 = v53;
          if (v55)
          {
            v57 = [v55 observationsRecipient];
            [v56 cacheObservationsOfRequest:v57];
          }

          v58 = [(NSMutableDictionary *)groupingConfiguration->_detectorConfigurationOptions objectForKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_CityNatureGatingConfiguration"];
          v59 = v56;
          if (v58)
          {
            v60 = [v58 observationsRecipient];
            [v59 cacheObservationsOfRequest:v60];
          }
        }
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v33.receiver = self;
  v33.super_class = VNImageAnalyzerCompoundRequest;
  v27 = a3;
  if ([(VNRequest *)&v33 willAcceptCachedResultsFromRequestWithConfiguration:?])
  {
    v4 = [(VNRequest *)self configuration];
    v28 = v4;
    v5 = [v4 detectorType];
    v6 = [v27 detectorType];
    v7 = [v5 isEqualToString:v6];

    if (v7 & 1) != 0 && ([v4 detectorConfigurationOptions], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "detectorConfigurationOptions"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToDictionary:", v9), v9, v8, (v10))
    {
      v11 = [v27 originalRequestConfigurations];
      v26 = [v11 mutableCopy];

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      obj = [(VNCompoundRequest *)self originalRequests];
      v12 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
      if (v12)
      {
        v13 = *v30;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v30 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v29 + 1) + 8 * i);
            v16 = v26;
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v17 = v16;
            v18 = [v17 countByEnumeratingWithState:&v34 objects:v39 count:16];
            if (v18)
            {
              v19 = 0;
              v20 = *v35;
LABEL_11:
              v21 = 0;
              v22 = v19;
              v19 += v18;
              while (1)
              {
                if (*v35 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                if ([v15 willAcceptCachedResultsFromRequestWithConfiguration:*(*(&v34 + 1) + 8 * v21)])
                {
                  break;
                }

                ++v22;
                if (v18 == ++v21)
                {
                  v18 = [v17 countByEnumeratingWithState:&v34 objects:v39 count:16];
                  if (v18)
                  {
                    goto LABEL_11;
                  }

                  goto LABEL_17;
                }
              }
            }

            else
            {
LABEL_17:
              v22 = 0x7FFFFFFFFFFFFFFFLL;
            }

            v4 = v28;
            if (v22 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v23 = 0;
              goto LABEL_25;
            }

            [v17 removeObjectAtIndex:v22];
          }

          v12 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v23 = 1;
LABEL_25:
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4
{
  v9.receiver = self;
  v9.super_class = VNImageAnalyzerCompoundRequest;
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

- (unint64_t)networkModel
{
  groupingConfiguration = self->_groupingConfiguration;
  if (groupingConfiguration)
  {
    return groupingConfiguration->_detectorModel;
  }

  else
  {
    return 0;
  }
}

- (VNImageAnalyzerCompoundRequest)initWithDetectorType:(id)a3 groupingConfiguration:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v6 = a4;
  v7 = [v6 originalRequests];
  v24.receiver = self;
  v24.super_class = VNImageAnalyzerCompoundRequest;
  v8 = [(VNCompoundRequest *)&v24 initWithOriginalRequests:v7];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_groupingConfiguration, a4);
    v10 = [(VNRequest *)v9 configuration];
    [v10 setDetectorType:v19];
    v11 = [v6 detectorConfigurationOptions];
    [v10 setDetectorConfigurationOptions:v11];

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = v7;
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v14)
    {
      v15 = *v21;
      do
      {
        v16 = 0;
        do
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = [*(*(&v20 + 1) + 8 * v16) configuration];
          [v12 addObject:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v13 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v14);
    }

    [v10 setOriginalRequestConfigurations:v12];
  }

  return v9;
}

+ (id)publicRevisionsSet
{
  if (+[VNImageAnalyzerCompoundRequest publicRevisionsSet]::onceToken != -1)
  {
    dispatch_once(&+[VNImageAnalyzerCompoundRequest publicRevisionsSet]::onceToken, &__block_literal_global_3461);
  }

  v3 = +[VNImageAnalyzerCompoundRequest publicRevisionsSet]::supportedRevisions;

  return v3;
}

uint64_t __52__VNImageAnalyzerCompoundRequest_publicRevisionsSet__block_invoke()
{
  +[VNImageAnalyzerCompoundRequest publicRevisionsSet]::supportedRevisions = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{1, 1}];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)compoundRequestsForOriginalRequests:(id)a3 withPerformingContext:(id)a4 error:(id *)a5
{
  v61 = *MEMORY[0x1E69E9840];
  v37 = a3;
  v35 = a4;
  v36 = [[VNImageAnalyzerCompoundRequestGroupingConfigurations alloc] initWithDetectorModel:1];
  v58 = v36;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v37;
  v7 = [obj countByEnumeratingWithState:&v45 objects:v57 count:16];
  if (v7)
  {
    v8 = *v46;
    do
    {
      v9 = 0;
      do
      {
        if (*v46 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v45 + 1) + 8 * v9);
        v11 = [v10 frameworkClass];
        v12 = +[VNImageAnalyzerMultiDetector modelForRequestClass:revision:](VNImageAnalyzerMultiDetector, "modelForRequestClass:revision:", v11, [v10 resolvedRevision]);
        if (v12)
        {
          v13 = *&v57[8 * v12 + 128];
          if (v13)
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __98__VNImageAnalyzerCompoundRequest_compoundRequestsForOriginalRequests_withPerformingContext_error___block_invoke;
            block[3] = &__block_descriptor_40_e5_v8__0l;
            block[4] = a1;
            if (+[VNImageAnalyzerCompoundRequest compoundRequestsForOriginalRequests:withPerformingContext:error:]::originalRequestClassToSelectorMapOnceToken != -1)
            {
              dispatch_once(&+[VNImageAnalyzerCompoundRequest compoundRequestsForOriginalRequests:withPerformingContext:error:]::originalRequestClassToSelectorMapOnceToken, block);
            }

            v14 = std::__hash_table<std::__hash_value_type<objc_class * {__strong},objc_selector *>,std::__unordered_map_hasher<objc_class * {__strong},std::__hash_value_type<objc_class * {__strong},objc_selector *>,std::hash<objc_class * {__strong}>,std::equal_to<objc_class * {__strong}>,true>,std::__unordered_map_equal<objc_class * {__strong},std::__hash_value_type<objc_class * {__strong},objc_selector *>,std::equal_to<objc_class * {__strong}>,std::hash<objc_class * {__strong}>,true>,std::allocator<std::__hash_value_type<objc_class * {__strong},objc_selector *>>>::find<objc_class * {__strong}>(+[VNImageAnalyzerCompoundRequest compoundRequestsForOriginalRequests:withPerformingContext:error:]::originalRequestClassToSelectorMap, v11);
            if (v14)
            {
              [a1 performSelector:v14[3] withObject:v10 withObject:v13];
            }
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v45 objects:v57 count:16];
    }

    while (v7);
  }

  v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = v36;
  p_isa = &v15->super.isa;
  v39 = &v15->super.isa;
  if (v15)
  {
    v17 = [(NSMutableDictionary *)v15->_groupingConfigurations count];
    p_isa = v39;
    if (v17)
    {
      v18 = [v39[1] allValues];
      v19 = [v18 copy];

      v20 = v19;
      v42 = v38;
      v41 = objc_opt_self();
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v40 = v20;
      v21 = [v40 countByEnumeratingWithState:&v53 objects:v60 count:16];
      if (v21)
      {
        v22 = *v54;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v54 != v22)
            {
              objc_enumerationMutation(v40);
            }

            v24 = *(*(&v53 + 1) + 8 * i);
            v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1];
            [v24 setDetectorConfigurationOption:@"VNImageAnalyzerMultiDetectorInitializationOption_Model" value:v25];

            v26 = [[v41 alloc] initWithDetectorType:@"VNImageAnalyzerMultiDetectorType" groupingConfiguration:v24];
            v27 = [v24 computeStageDeviceAssignments];
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            v28 = v27;
            v29 = [v28 countByEnumeratingWithState:&v49 objects:v59 count:16];
            if (v29)
            {
              v30 = *v50;
              do
              {
                for (j = 0; j != v29; ++j)
                {
                  if (*v50 != v30)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v32 = *(*(&v49 + 1) + 8 * j);
                  v33 = [v28 objectForKeyedSubscript:v32];
                  [v26 setComputeDevice:v33 forComputeStage:v32];
                }

                v29 = [v28 countByEnumeratingWithState:&v49 objects:v59 count:16];
              }

              while (v29);
            }

            [v42 addObject:v26];
          }

          v21 = [v40 countByEnumeratingWithState:&v53 objects:v60 count:16];
        }

        while (v21);
      }

      p_isa = v39;
    }
  }

  return v38;
}

+ (void)_evaluateOriginalVNCreateImageFingerprintsRequest:(id)a3 configurations:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = [(VNImageAnalyzerMultiDetectorAnalysisConfiguration *)[VNImageAnalyzerMultiDetectorImageFingerprintsConfiguration alloc] initWithObservationsRecipient:v8];
  v7 = [(VNImageAnalyzerCompoundRequestGroupingConfigurations *)v5 groupingConfigurationForRequest:v8 kind:16];
  [v7 setDetectorConfigurationOption:@"VNImageAnalyzerMultiDetectorOption_ImageFingerprintsConfiguration" value:v6];
}

+ (void)_evaluateOriginalVN1JC7R3k4455fKQz0dY1VhQ:(id)a3 configurations:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = [(VNImageAnalyzerMultiDetectorAnalysisConfiguration *)[VNImageAnalyzerMultiDetectorVN1JC7R3k4455fKQz0dY1VhQConfiguration alloc] initWithObservationsRecipient:v8];
  v7 = [(VNImageAnalyzerCompoundRequestGroupingConfigurations *)v5 groupingConfigurationForRequest:v8 kind:15];
  [v7 setDetectorConfigurationOption:@"VNImageAnalyzerMultiDetectorInitializationOption_RequireSliderNet" value:MEMORY[0x1E695E118]];
  [v7 setDetectorConfigurationOption:@"VNImageAnalyzerMultiDetectorOption_VN1JC7R3k4455fKQz0dY1VhQConfiguration" value:v6];
}

+ (void)_evaluateOriginalVNClassifyCityNatureImageRequest:(id)a3 configurations:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = [(VNImageAnalyzerMultiDetectorAnalysisConfiguration *)[VNImageAnalyzerMultiDetectorCityNatureClassificationConfiguration alloc] initWithObservationsRecipient:v9];
  v7 = [(VNImageAnalyzerCompoundRequestGroupingConfigurations *)v5 groupingConfigurationForRequest:v9 kind:14];
  [v7 setDetectorConfigurationOption:@"VNImageAnalyzerMultiDetectorOption_CityNatureGatingConfiguration" value:v6];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "imageCropAndScaleOption")}];
  [v7 setDetectorConfigurationOption:@"VNDetectorProcessOption_ImageCropAndScaleOption" value:v8];
}

+ (void)_evaluateOriginalVN6Mb1ME89lyW3HpahkEygIG:(id)a3 configurations:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = [(VNImageAnalyzerMultiDetectorAnalysisConfiguration *)[VNImageAnalyzerMultiDetectorVN6Mb1ME89lyW3HpahkEygIGConfiguration alloc] initWithObservationsRecipient:v9];
  v7 = [(VNImageAnalyzerCompoundRequestGroupingConfigurations *)v5 groupingConfigurationForRequest:v9 kind:13];
  [v7 setDetectorConfigurationOption:@"VNImageAnalyzerMultiDetectorOption_VN6Mb1ME89lyW3HpahkEygIGConfiguration" value:v6];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "imageCropAndScaleOption")}];
  [v7 setDetectorConfigurationOption:@"VNDetectorProcessOption_ImageCropAndScaleOption" value:v8];
}

+ (void)_evaluateOriginalVN5kJNH3eYuyaLxNpZr5Z7zi:(id)a3 configurations:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = [(VNImageAnalyzerMultiDetectorAnalysisConfiguration *)[VNImageAnalyzerMultiDetectorVN5kJNH3eYuyaLxNpZr5Z7ziConfiguration alloc] initWithObservationsRecipient:v9];
  v7 = [(VNImageAnalyzerCompoundRequestGroupingConfigurations *)v5 groupingConfigurationForRequest:v9 kind:12];
  [v7 setDetectorConfigurationOption:@"VNImageAnalyzerMultiDetectorOption_VN5kJNH3eYuyaLxNpZr5Z7ziConfiguration" value:v6];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "imageCropAndScaleOption")}];
  [v7 setDetectorConfigurationOption:@"VNDetectorProcessOption_ImageCropAndScaleOption" value:v8];
}

+ (void)_evaluateOriginalVNClassifyPotentialLandmarkRequest:(id)a3 configurations:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = [(VNImageAnalyzerMultiDetectorAnalysisConfiguration *)[VNImageAnalyzerMultiDetectorPotentialLandmarkClassificationConfiguration alloc] initWithObservationsRecipient:v9];
  v7 = [(VNImageAnalyzerCompoundRequestGroupingConfigurations *)v5 groupingConfigurationForRequest:v9 kind:11];
  [v7 setDetectorConfigurationOption:@"VNImageAnalyzerMultiDetectorOption_PotentialLandmarkConfiguration" value:v6];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "imageCropAndScaleOption")}];
  [v7 setDetectorConfigurationOption:@"VNDetectorProcessOption_ImageCropAndScaleOption" value:v8];
}

+ (void)_evaluateOriginalVNRecognizeObjectsRequest:(id)a3 configurations:(id)a4
{
  v10 = a3;
  v5 = a4;
  v6 = [[VNImageAnalyzerMultiDetectorRecognizeObjectsConfiguration alloc] initWithObservationsRecipient:v10];
  [v10 modelMinimumDetectionConfidence];
  [(VNImageAnalyzerMultiDetectorRecognizeObjectsConfiguration *)v6 setMinimumDetectionConfidence:?];
  [v10 modelNonMaximumSuppressionThreshold];
  [(VNImageAnalyzerMultiDetectorRecognizeObjectsConfiguration *)v6 setNonMaximumSuppressionThreshold:?];
  v7 = [(VNImageAnalyzerCompoundRequestGroupingConfigurations *)v5 groupingConfigurationForRequest:v10 kind:9];
  [v7 setDetectorConfigurationOption:@"VNImageAnalyzerMultiDetectorInitializationOption_RequireObjDetNet" value:MEMORY[0x1E695E118]];
  [v7 setDetectorConfigurationOption:@"VNImageAnalyzerMultiDetectorOption_RecognizeObjectsConfiguration" value:v6];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v10, "useImageAnalyzerScaling")}];
  [v7 setDetectorConfigurationOption:@"VNImageAnalyzerMultiDetectorProcessingOption_SkipInputImageScaling" value:v8];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v10, "imageCropAndScaleOption")}];
  [v7 setDetectorConfigurationOption:@"VNDetectorProcessOption_ImageCropAndScaleOption" value:v9];
}

+ (void)_evaluateOriginalVNVYvzEtX1JlUdu8xx5qhDI:(id)a3 configurations:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = [(VNImageAnalyzerMultiDetectorAnalysisConfiguration *)[VNImageAnalyzerMultiDetectorVNVYvzEtX1JlUdu8xx5qhDIConfiguration alloc] initWithObservationsRecipient:v9];
  v7 = [(VNImageAnalyzerCompoundRequestGroupingConfigurations *)v5 groupingConfigurationForRequest:v9 kind:5];
  [v7 setDetectorConfigurationOption:@"VNImageAnalyzerMultiDetectorOption_VNVYvzEtX1JlUdu8xx5qhDIConfiguration" value:v6];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "imageCropAndScaleOption")}];
  [v7 setDetectorConfigurationOption:@"VNDetectorProcessOption_ImageCropAndScaleOption" value:v8];
}

+ (void)_evaluateOriginalVNClassifyJunkImageRequest:(id)a3 configurations:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = [(VNImageAnalyzerMultiDetectorAnalysisConfiguration *)[VNImageAnalyzerMultiDetectorJunkClassificationConfiguration alloc] initWithObservationsRecipient:v9];
  v7 = [(VNImageAnalyzerCompoundRequestGroupingConfigurations *)v5 groupingConfigurationForRequest:v9 kind:4];
  [v7 setDetectorConfigurationOption:@"VNImageAnalyzerMultiDetectorOption_JunkConfiguration" value:v6];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "imageCropAndScaleOption")}];
  [v7 setDetectorConfigurationOption:@"VNDetectorProcessOption_ImageCropAndScaleOption" value:v8];
}

+ (void)_evaluateOriginalVNGenerateObjectnessBasedSaliencyImageRequest:(id)a3 configurations:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = [(VNImageAnalyzerMultiDetectorAnalysisConfiguration *)[VNImageAnalyzerMultiDetectorSaliencyOConfiguration alloc] initWithObservationsRecipient:v8];
  v7 = [(VNImageAnalyzerCompoundRequestGroupingConfigurations *)v5 groupingConfigurationForRequest:v8 kind:8];
  [v7 setDetectorConfigurationOption:@"VNImageAnalyzerMultiDetectorOption_SaliencyOConfiguration" value:v6];
}

+ (void)_evaluateOriginalVNGenerateAttentionBasedSaliencyImageRequest:(id)a3 configurations:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = [(VNImageAnalyzerMultiDetectorAnalysisConfiguration *)[VNImageAnalyzerMultiDetectorSaliencyAConfiguration alloc] initWithObservationsRecipient:v8];
  v7 = [(VNImageAnalyzerCompoundRequestGroupingConfigurations *)v5 groupingConfigurationForRequest:v8 kind:7];
  [v7 setDetectorConfigurationOption:@"VNImageAnalyzerMultiDetectorOption_SaliencyAConfiguration" value:v6];
}

+ (void)_evaluateOriginalVNClassifyImageAestheticsRequest:(id)a3 configurations:(id)a4
{
  v8 = a3;
  v5 = a4;
  if ([v8 resolvedRevision] != 1 || !objc_msgSend(v8, "detectionLevel") || objc_msgSend(v5, "detectorModel") != 1)
  {
    v6 = [(VNImageAnalyzerMultiDetectorAnalysisConfiguration *)[VNImageAnalyzerMultiDetectorAestheticsConfiguration alloc] initWithObservationsRecipient:v8];
    v7 = [(VNImageAnalyzerCompoundRequestGroupingConfigurations *)v5 groupingConfigurationForRequest:v8 kind:6];
    [v7 setDetectorConfigurationOption:@"VNImageAnalyzerMultiDetectorOption_AestheticsConfiguration" value:v6];
  }
}

+ (void)_evaluateOriginalVNGenerateImageFeaturePrintRequest:(id)a3 configurations:(id)a4
{
  v6 = a3;
  v5 = [(VNImageAnalyzerCompoundRequestGroupingConfigurations *)a4 groupingConfigurationForRequest:v6 kind:0];
  [v5 addSceneprintConfigurationForOriginalRequest:v6];
}

+ (void)_evaluateOriginalVNCreateSceneprintRequest:(id)a3 configurations:(id)a4
{
  v12 = a3;
  v5 = a4;
  v6 = [v12 returnAllResults];
  v7 = [v12 resolvedRevision];
  if (v7 == 3737841666)
  {
    v8 = [(VNImageAnalyzerMultiDetectorAnalysisConfiguration *)[VNImageAnalyzerMultiDetectorCompressedSceneprintConfiguration alloc] initWithObservationsRecipient:v12];
    v9 = [(VNImageAnalyzerCompoundRequestGroupingConfigurations *)v5 groupingConfigurationForRequest:v12 kind:1];
    [v9 setDetectorConfigurationOption:@"VNImageAnalyzerMultiDetectorOption_CompressedSceneprintConfiguration" value:v8];
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v12, "imageCropAndScaleOption")}];
    [v9 setDetectorConfigurationOption:@"VNDetectorProcessOption_ImageCropAndScaleOption" value:v10];
  }

  else
  {
    v8 = [(VNImageAnalyzerCompoundRequestGroupingConfigurations *)v5 groupingConfigurationForRequest:v12 kind:0];
    v11 = [(VNImageAnalyzerMultiDetectorCompressedSceneprintConfiguration *)v8 addSceneprintConfigurationForOriginalRequest:v12];
    v9 = v11;
    if ((v7 - 2) < 2 || v7 == 3737841671)
    {
      [v11 setIncludeLabelsAndConfidences:v6];
    }
  }
}

+ (void)_evaluateOriginalVNSceneClassificationRequest:(id)a3 configurations:(id)a4
{
  v10 = a3;
  v5 = a4;
  v6 = [v10 sceneObservation];

  if (!v6)
  {
    v7 = [(VNImageAnalyzerCompoundRequestGroupingConfigurations *)v5 groupingConfigurationForRequest:v10 kind:2];
    [v7 addTilingWarningRecorder:v10];
    v8 = [v7 addSceneConfigurationForOriginalRequest:v10];
    [v8 setMaximumLeafLabels:{objc_msgSend(v10, "maximumLeafObservations")}];
    [v8 setMaximumHierarchicalLabels:{objc_msgSend(v10, "maximumHierarchicalObservations")}];
    v9 = [v10 customHierarchy];
    [v8 setCustomHierarchy:v9];
  }
}

+ (void)_evaluateOriginalVNClassifyImageRequest:(id)a3 configurations:(id)a4
{
  v12 = a3;
  v5 = a4;
  v6 = [v12 resolvedRevision];
  +[VNImageAnalyzerMultiDetector modelForRequestClass:revision:](VNImageAnalyzerMultiDetector, "modelForRequestClass:revision:", [v12 frameworkClass], v6);
  if (v6 == 3737841667)
  {
    v7 = [(VNImageAnalyzerCompoundRequestGroupingConfigurations *)v5 groupingConfigurationForRequest:v12 kind:3];
    v8 = [[VNImageAnalyzerMultiDetectorEntityNetClassificationConfiguration alloc] initWithObservationsRecipient:v12];
    -[VNImageAnalyzerMultiDetectorEntityNetClassificationConfiguration setMaximumLabels:](v8, "setMaximumLabels:", [v12 maximumLeafObservations]);
    [v7 setDetectorConfigurationOption:@"VNImageAnalyzerMultiDetectorOption_EntityNetConfiguration" value:v8];
  }

  else
  {
    v7 = [(VNImageAnalyzerCompoundRequestGroupingConfigurations *)v5 groupingConfigurationForRequest:v12 kind:2];
    v8 = [v7 addSceneConfigurationForOriginalRequest:v12];
    -[VNImageAnalyzerMultiDetectorEntityNetClassificationConfiguration setMaximumLeafLabels:](v8, "setMaximumLeafLabels:", [v12 maximumLeafObservations]);
    -[VNImageAnalyzerMultiDetectorEntityNetClassificationConfiguration setMaximumHierarchicalLabels:](v8, "setMaximumHierarchicalLabels:", [v12 maximumHierarchicalObservations]);
    v9 = [v12 customHierarchy];
    [(VNImageAnalyzerMultiDetectorEntityNetClassificationConfiguration *)v8 setCustomHierarchy:v9];

    [v7 addTilingWarningRecorder:v12];
  }

  v10 = v7;

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v12, "imageCropAndScaleOption")}];
  [v10 setDetectorConfigurationOption:@"VNDetectorProcessOption_ImageCropAndScaleOption" value:v11];
}

@end