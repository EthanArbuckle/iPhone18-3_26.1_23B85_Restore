@interface VNSmartCam5CompoundRequest
+ (id)compoundRequestsForOriginalRequests:(id)a3 withPerformingContext:(id)a4 error:(id *)a5;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (id)groupingConfiguration;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4;
@end

@implementation VNSmartCam5CompoundRequest

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v44[1] = *MEMORY[0x1E69E9840];
  v37 = a4;
  v8 = [v37 session];
  v42 = 0;
  v36 = v8;
  v9 = [(VNRequest *)self applicableDetectorAndOptions:&v42 forRevision:a3 loadedInSession:v8 error:a5];
  v33 = v42;
  if (v9)
  {
    v35 = v9;
    v10 = [v37 imageBufferAndReturnError:a5];
    v31 = v10;
    if (v10)
    {
      v44[0] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
      [v33 setObject:v11 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

      v12 = MEMORY[0x1E696AD98];
      if (self)
      {
        v13 = [(VNSmartCam5CompoundRequestGroupingConfiguration *)self->_groupingConfiguration imageCropAndScaleOption];
      }

      else
      {
        v13 = 0;
      }

      v14 = [v12 numberWithUnsignedInteger:v13];
      [v33 setObject:v14 forKeyedSubscript:@"VNDetectorProcessOption_ImageCropAndScaleOption"];

      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v33 setObject:v15 forKeyedSubscript:@"VNSmartCam5GatingDetectorProcessingOption_ClassificationObservationsArray"];
      v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v33 setObject:? forKeyedSubscript:?];
      v16 = [v37 qosClass];
      [(VNCompoundRequest *)self regionOfInterest];
      v17 = [v9 processUsingQualityOfServiceClass:v16 options:v33 regionOfInterest:self warningRecorder:a5 error:0 progressHandler:?];
      v32 = v17 != 0;
      if (v17)
      {
        v29 = v17;
        [(VNRequest *)self setResults:?];
        [(VNCompoundRequest *)self recordWarningsInOriginalRequests];
        [(VNSmartCam5CompoundRequest *)&self->super.super.super.isa groupingConfiguration];
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v30 = v41 = 0u;
        v18 = [v30 originalRequests];
        v19 = [v18 countByEnumeratingWithState:&v38 objects:v43 count:16];
        if (v19)
        {
          v20 = *v39;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v39 != v20)
              {
                objc_enumerationMutation(v18);
              }

              v22 = *(*(&v38 + 1) + 8 * i);
              v23 = [v22 frameworkClass];
              v24 = objc_opt_class();
              v25 = v15;
              if (v23 == v24 || (v26 = objc_opt_class(), v25 = v34, v23 == v26))
              {
                v27 = v25;
              }

              else
              {
                v27 = 0;
              }

              [v22 setResults:v27];
              [v37 cacheObservationsOfRequest:v22];

              v9 = v35;
              v8 = v36;
            }

            v19 = [v18 countByEnumeratingWithState:&v38 objects:v43 count:16];
          }

          while (v19);
        }

        v17 = v29;
      }
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (id)groupingConfiguration
{
  if (a1)
  {
    a1 = a1[16];
    v1 = vars8;
  }

  return a1;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4
{
  v9.receiver = self;
  v9.super_class = VNSmartCam5CompoundRequest;
  v5 = [(VNRequest *)&v9 newDefaultDetectorOptionsForRequestRevision:a3 session:a4];
  v6 = [(VNSmartCam5CompoundRequest *)&self->super.super.super.isa groupingConfiguration];
  v7 = [v6 detectorConfigurationOptions];
  [v5 addEntriesFromDictionary:v7];

  return v5;
}

+ (id)compoundRequestsForOriginalRequests:(id)a3 withPerformingContext:(id)a4 error:(id *)a5
{
  v50 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__VNSmartCam5CompoundRequest_compoundRequestsForOriginalRequests_withPerformingContext_error___block_invoke;
  aBlock[3] = &unk_1E77B4858;
  v33 = v5;
  v46 = v33;
  v35 = _Block_copy(aBlock);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v32;
  v6 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v6)
  {
    v7 = *v42;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v42 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v41 + 1) + 8 * i);
        v10 = [v9 frameworkClass];
        if (v10 == objc_opt_class())
        {
          v14 = v9;
          v12 = v35[2](v35, v14, [v14 imageCropAndScaleOption]);
          v15 = [v14 specifier];
          [v12 setDetectorConfigurationOption:@"VNSmartCam5GatingDetectorProcessingOption_GatingOriginatingRequestSpecifier" value:v15];

          v13 = [v14 documentElements];
          if ([v13 recognize])
          {
            [v12 setDetectorConfigurationOption:@"VNSmartCam5GatingDetectorProcessingOption_DocumentRegionGatingEnabled" value:MEMORY[0x1E695E118]];
            v16 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v13, "generateSegmentationMask")}];
            [v12 setDetectorConfigurationOption:@"VNSmartCam5GatingDetectorProcessingOption_DocumentRegionGatingGenerateSegmentationMask" value:v16];
          }

          v17 = [v14 textElements];
          if ([v17 recognize])
          {
            [v12 setDetectorConfigurationOption:@"VNSmartCam5GatingDetectorProcessingOption_TextRegionGatingEnabled" value:MEMORY[0x1E695E118]];
            v18 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v17, "generateSegmentationMask")}];
            [v12 setDetectorConfigurationOption:@"VNSmartCam5GatingDetectorProcessingOption_TextRegionGatingGenerateSegmentationMask" value:v18];
          }

          v19 = [v14 machineReadableCodeElements];
          if ([v19 recognize])
          {
            [v12 setDetectorConfigurationOption:@"VNSmartCam5GatingDetectorProcessingOption_MachineReadableCodesGatingEnabled" value:MEMORY[0x1E695E118]];
            v20 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v19, "generateSegmentationMask")}];
            [v12 setDetectorConfigurationOption:@"VNSmartCam5GatingDetectorProcessingOption_MachineReadableCodesGatingGenerateSegmentationMask" value:v20];
          }

          goto LABEL_17;
        }

        if (v10 == objc_opt_class() && [v9 resolvedRevision] == 3737841665)
        {
          v11 = v9;
          v12 = v35[2](v35, v11, [v11 imageCropAndScaleOption]);
          [v12 setDetectorConfigurationOption:@"VNSmartCam5GatingDetectorProcessingOption_ClassificationEnabled" value:MEMORY[0x1E695E118]];
          v13 = [v11 specifier];
          [v12 setDetectorConfigurationOption:@"VNSmartCam5GatingDetectorProcessingOption_ClassificationOriginatingRequestSpecifier" value:v13];
LABEL_17:

          continue;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v6);
  }

  if ([v33 count])
  {
    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v22 = [v33 allValues];
    v34 = v22;
    v23 = [v22 countByEnumeratingWithState:&v37 objects:v48 count:16];
    if (v23)
    {
      v24 = *v38;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v38 != v24)
          {
            objc_enumerationMutation(v34);
          }

          v26 = *(*(&v37 + 1) + 8 * j);
          v27 = [VNSmartCam5CompoundRequest alloc];
          v28 = v26;
          v29 = v28;
          if (v27)
          {
            v30 = [v28 originalRequests];
            v47.receiver = v27;
            v47.super_class = VNSmartCam5CompoundRequest;
            v27 = objc_msgSendSuper2(&v47, sel_initWithOriginalRequests_, v30);

            if (v27)
            {
              objc_storeStrong(&v27->_groupingConfiguration, v26);
            }
          }

          [v21 addObject:v27];
        }

        v22 = v34;
        v23 = [v34 countByEnumeratingWithState:&v37 objects:v48 count:16];
      }

      while (v23);
    }
  }

  else
  {
    v21 = MEMORY[0x1E695E0F0];
  }

  return v21;
}

VNSmartCam5CompoundRequestGroupingConfiguration *__94__VNSmartCam5CompoundRequest_compoundRequestsForOriginalRequests_withPerformingContext_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
  if (!v7)
  {
    v7 = [[VNSmartCam5CompoundRequestGroupingConfiguration alloc] initWithImageCropAndScaleOption:a3];
    [*(a1 + 32) setObject:? forKeyedSubscript:?];
  }

  [(VNSmartCam5CompoundRequestGroupingConfiguration *)v7 addOriginalRequest:v5];

  return v7;
}

@end