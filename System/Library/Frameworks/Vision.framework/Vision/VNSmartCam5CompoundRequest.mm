@interface VNSmartCam5CompoundRequest
+ (id)compoundRequestsForOriginalRequests:(id)requests withPerformingContext:(id)context error:(id *)error;
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (id)groupingConfiguration;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session;
@end

@implementation VNSmartCam5CompoundRequest

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  v44[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  session = [contextCopy session];
  v42 = 0;
  v36 = session;
  v9 = [(VNRequest *)self applicableDetectorAndOptions:&v42 forRevision:revision loadedInSession:session error:error];
  v33 = v42;
  if (v9)
  {
    v35 = v9;
    v10 = [contextCopy imageBufferAndReturnError:error];
    v31 = v10;
    if (v10)
    {
      v44[0] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
      [v33 setObject:v11 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

      v12 = MEMORY[0x1E696AD98];
      if (self)
      {
        imageCropAndScaleOption = [(VNSmartCam5CompoundRequestGroupingConfiguration *)self->_groupingConfiguration imageCropAndScaleOption];
      }

      else
      {
        imageCropAndScaleOption = 0;
      }

      v14 = [v12 numberWithUnsignedInteger:imageCropAndScaleOption];
      [v33 setObject:v14 forKeyedSubscript:@"VNDetectorProcessOption_ImageCropAndScaleOption"];

      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v33 setObject:v15 forKeyedSubscript:@"VNSmartCam5GatingDetectorProcessingOption_ClassificationObservationsArray"];
      v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v33 setObject:? forKeyedSubscript:?];
      qosClass = [contextCopy qosClass];
      [(VNCompoundRequest *)self regionOfInterest];
      v17 = [v9 processUsingQualityOfServiceClass:qosClass options:v33 regionOfInterest:self warningRecorder:error error:0 progressHandler:?];
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
        originalRequests = [v30 originalRequests];
        v19 = [originalRequests countByEnumeratingWithState:&v38 objects:v43 count:16];
        if (v19)
        {
          v20 = *v39;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v39 != v20)
              {
                objc_enumerationMutation(originalRequests);
              }

              v22 = *(*(&v38 + 1) + 8 * i);
              frameworkClass = [v22 frameworkClass];
              v24 = objc_opt_class();
              v25 = v15;
              if (frameworkClass == v24 || (v26 = objc_opt_class(), v25 = v34, frameworkClass == v26))
              {
                v27 = v25;
              }

              else
              {
                v27 = 0;
              }

              [v22 setResults:v27];
              [contextCopy cacheObservationsOfRequest:v22];

              v9 = v35;
              session = v36;
            }

            v19 = [originalRequests countByEnumeratingWithState:&v38 objects:v43 count:16];
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
  if (self)
  {
    self = self[16];
    v1 = vars8;
  }

  return self;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session
{
  v9.receiver = self;
  v9.super_class = VNSmartCam5CompoundRequest;
  v5 = [(VNRequest *)&v9 newDefaultDetectorOptionsForRequestRevision:revision session:session];
  groupingConfiguration = [(VNSmartCam5CompoundRequest *)&self->super.super.super.isa groupingConfiguration];
  detectorConfigurationOptions = [groupingConfiguration detectorConfigurationOptions];
  [v5 addEntriesFromDictionary:detectorConfigurationOptions];

  return v5;
}

+ (id)compoundRequestsForOriginalRequests:(id)requests withPerformingContext:(id)context error:(id *)error
{
  v50 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
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
  obj = requestsCopy;
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
        frameworkClass = [v9 frameworkClass];
        if (frameworkClass == objc_opt_class())
        {
          v14 = v9;
          v12 = v35[2](v35, v14, [v14 imageCropAndScaleOption]);
          specifier = [v14 specifier];
          [v12 setDetectorConfigurationOption:@"VNSmartCam5GatingDetectorProcessingOption_GatingOriginatingRequestSpecifier" value:specifier];

          documentElements = [v14 documentElements];
          if ([documentElements recognize])
          {
            [v12 setDetectorConfigurationOption:@"VNSmartCam5GatingDetectorProcessingOption_DocumentRegionGatingEnabled" value:MEMORY[0x1E695E118]];
            v16 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(documentElements, "generateSegmentationMask")}];
            [v12 setDetectorConfigurationOption:@"VNSmartCam5GatingDetectorProcessingOption_DocumentRegionGatingGenerateSegmentationMask" value:v16];
          }

          textElements = [v14 textElements];
          if ([textElements recognize])
          {
            [v12 setDetectorConfigurationOption:@"VNSmartCam5GatingDetectorProcessingOption_TextRegionGatingEnabled" value:MEMORY[0x1E695E118]];
            v18 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(textElements, "generateSegmentationMask")}];
            [v12 setDetectorConfigurationOption:@"VNSmartCam5GatingDetectorProcessingOption_TextRegionGatingGenerateSegmentationMask" value:v18];
          }

          machineReadableCodeElements = [v14 machineReadableCodeElements];
          if ([machineReadableCodeElements recognize])
          {
            [v12 setDetectorConfigurationOption:@"VNSmartCam5GatingDetectorProcessingOption_MachineReadableCodesGatingEnabled" value:MEMORY[0x1E695E118]];
            v20 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(machineReadableCodeElements, "generateSegmentationMask")}];
            [v12 setDetectorConfigurationOption:@"VNSmartCam5GatingDetectorProcessingOption_MachineReadableCodesGatingGenerateSegmentationMask" value:v20];
          }

          goto LABEL_17;
        }

        if (frameworkClass == objc_opt_class() && [v9 resolvedRevision] == 3737841665)
        {
          v11 = v9;
          v12 = v35[2](v35, v11, [v11 imageCropAndScaleOption]);
          [v12 setDetectorConfigurationOption:@"VNSmartCam5GatingDetectorProcessingOption_ClassificationEnabled" value:MEMORY[0x1E695E118]];
          documentElements = [v11 specifier];
          [v12 setDetectorConfigurationOption:@"VNSmartCam5GatingDetectorProcessingOption_ClassificationOriginatingRequestSpecifier" value:documentElements];
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
    allValues = [v33 allValues];
    v34 = allValues;
    v23 = [allValues countByEnumeratingWithState:&v37 objects:v48 count:16];
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
            originalRequests = [v28 originalRequests];
            v47.receiver = v27;
            v47.super_class = VNSmartCam5CompoundRequest;
            v27 = objc_msgSendSuper2(&v47, sel_initWithOriginalRequests_, originalRequests);

            if (v27)
            {
              objc_storeStrong(&v27->_groupingConfiguration, v26);
            }
          }

          [v21 addObject:v27];
        }

        allValues = v34;
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