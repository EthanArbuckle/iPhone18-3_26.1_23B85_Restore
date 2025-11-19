@interface VNANFDDetectorCompoundRequest
+ (id)compoundRequestsForOriginalRequests:(id)a3 withPerformingContext:(id)a4 error:(id *)a5;
+ (int64_t)compoundRequestRevisionForRequest:(id)a3;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (VNANFDDetectorCompoundRequest)initWithDetectorType:(id)a3 configuration:(id)a4;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4;
- (void)assignOriginalRequestsResultsFromObservations:(id)a3 obtainedInPerformingContext:(id)a4;
@end

@implementation VNANFDDetectorCompoundRequest

- (void)assignOriginalRequestsResultsFromObservations:(id)a3 obtainedInPerformingContext:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [(VNCompoundRequest *)self originalRequests];
  v8 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = *v18;
    v10 = *MEMORY[0x1E695D930];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [VNANFDMultiDetector anfdMultiDetectorClassToProcessRequest:v12];
        if (!v13)
        {
          [MEMORY[0x1E695DF30] raise:v10 format:{@"Internal error processing request of class %@", objc_opt_class()}];
        }

        v14 = [(objc_class *)v13 requestInfoForRequest:v12];
        if (!v14)
        {
          [MEMORY[0x1E695DF30] raise:v10 format:{@"The request class %@ shall have it's results populated in the results array", objc_opt_class()}];
        }

        v15 = [v6 objectAtIndexedSubscript:{objc_msgSend(v14, "originalRequestResultsIndex")}];
        [v12 setResults:v15];

        [v7 cacheObservationsOfRequest:v12];
      }

      v8 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [v8 session];
  v10 = [v8 imageBufferAndReturnError:a5];
  if (v10 && [(VNRequest *)self validateImageBuffer:v10 ofNonZeroWidth:0 andHeight:0 error:a5])
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__36818;
    v29 = __Block_byref_object_dispose__36819;
    v30 = 0;
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __73__VNANFDDetectorCompoundRequest_internalPerformRevision_inContext_error___block_invoke;
    v18 = &unk_1E77B66D0;
    v19 = self;
    v24 = a3;
    v20 = v9;
    v21 = v10;
    v23 = &v25;
    v11 = v8;
    v22 = v11;
    v12 = _Block_copy(&v15);
    v13 = VNExecuteBlock(v12, a5);
    if (v13)
    {
      [(VNCompoundRequest *)self recordWarningsInOriginalRequests:v15];
      [(VNANFDDetectorCompoundRequest *)self assignOriginalRequestsResultsFromObservations:v26[5] obtainedInPerformingContext:v11];
    }

    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

BOOL __73__VNANFDDetectorCompoundRequest_internalPerformRevision_inContext_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = 0;
  v4 = [*(a1 + 32) applicableDetectorAndOptions:&v13 forRevision:*(a1 + 72) loadedInSession:*(a1 + 40) error:a2];
  v5 = v13;
  if (v4)
  {
    v14[0] = *(a1 + 48);
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [v5 setObject:v6 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

    v7 = [*(a1 + 56) qosClass];
    [*(a1 + 32) regionOfInterest];
    v8 = [v4 processUsingQualityOfServiceClass:v7 options:v5 regionOfInterest:*(a1 + 32) warningRecorder:a2 error:0 progressHandler:?];
    v9 = *(*(a1 + 64) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = *(*(*(a1 + 64) + 8) + 40) != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4
{
  v9.receiver = self;
  v9.super_class = VNANFDDetectorCompoundRequest;
  v5 = [(VNRequest *)&v9 newDefaultDetectorOptionsForRequestRevision:a3 session:a4];
  v6 = [(VNRequest *)self configuration];
  v7 = [v6 detectorConfigurationOptions];
  [v5 addEntriesFromDictionary:v7];

  return v5;
}

- (VNANFDDetectorCompoundRequest)initWithDetectorType:(id)a3 configuration:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v26 = a3;
  v28 = a4;
  [v28 originalRequests];
  v33.receiver = self;
  v27 = v33.super_class = VNANFDDetectorCompoundRequest;
  v6 = [(VNCompoundRequest *)&v33 initWithOriginalRequests:?];
  if (v6)
  {
    v25 = v6;
    v7 = [(VNRequest *)v6 configuration];
    [v7 setResolvedRevision:{objc_msgSend(v28, "resolvedRevision")}];
    v8 = [v26 copy];
    [v7 setDetectorType:v8];

    v9 = [v28 detectorConfigurationOptions];
    v10 = [v9 copy];
    [v7 setDetectorConfigurationOptions:v10];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = v27;
    v12 = [v11 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (!v12)
    {
      goto LABEL_20;
    }

    v13 = *v30;
    while (1)
    {
      v14 = 0;
      do
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v29 + 1) + 8 * v14);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [v15 precisionRecallThresholdOverride];
          [v7 setDetectorConfigurationOption:@"VNANFDMultiDetectorProcessingOption_HumanFacePrecisionRecallThresholdOverride" value:v16];
LABEL_11:

          goto LABEL_12;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [v15 precisionRecallThresholdOverride];
          [v7 setDetectorConfigurationOption:@"VNANFDMultiDetectorProcessingOption_HumanHeadPrecisionRecallThresholdOverride" value:v16];
          goto LABEL_11;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
          v17 = [v16 upperBodyOnly];
          v18 = [v16 upperBodyOnly];
          if (v17)
          {
            v19 = [MEMORY[0x1E696AD98] numberWithBool:1];
            [v7 setDetectorConfigurationOption:@"VNANFDMultiDetectorProcessingOption_HumanDetectorUpperBody" value:v19];
          }

          if ((v18 & 1) == 0)
          {
            v20 = [MEMORY[0x1E696AD98] numberWithBool:1];
            [v7 setDetectorConfigurationOption:@"VNANFDMultiDetectorProcessingOption_HumanDetectorFullBody" value:v20];
          }

          goto LABEL_11;
        }

LABEL_12:
        ++v14;
      }

      while (v12 != v14);
      v21 = [v11 countByEnumeratingWithState:&v29 objects:v34 count:16];
      v12 = v21;
      if (!v21)
      {
LABEL_20:

        v22 = v25;
        v6 = v25;
        break;
      }
    }
  }

  v23 = v6;

  return v23;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4
{
  v6 = [(VNRequest *)self configuration];
  v7 = [v6 detectorType];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else if (a4)
  {
    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    v11 = [(VNRequest *)self specifier];
    v12 = [v10 initWithFormat:@"detector type has not been configured for %@", v11];

    *a4 = [VNError errorForInternalErrorWithLocalizedDescription:v12];
  }

  return v8;
}

+ (id)compoundRequestsForOriginalRequests:(id)a3 withPerformingContext:(id)a4 error:(id *)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v23 = a3;
  v25 = objc_alloc_init(VNANFDDetectorCompoundRequestConfigurationGroups);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v23;
  v6 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v6)
  {
    v7 = *v31;
    v8 = *MEMORY[0x1E695D930];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        v11 = [VNANFDMultiDetector anfdMultiDetectorClassToProcessRequest:v10];
        if (v11)
        {
          v12 = [(objc_class *)v11 requestInfoForRequest:v10];
          if (!v12)
          {
            [MEMORY[0x1E695DF30] raise:v8 format:{@"The request info is not found for request class %@", objc_opt_class(), v23}];
          }

          v13 = [(VNANFDDetectorCompoundRequestConfigurationGroups *)v25 configurationForRequest:v10];
          v14 = [v12 originatingRequestSpecifierKey];
          v15 = [v10 specifier];
          [v13 setDetectorConfigurationOption:v14 value:v15];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v6);
  }

  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(VNANFDDetectorCompoundRequestConfigurationGroups *)v25 allConfigurations];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v17 = v27 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v18)
  {
    v19 = *v27;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = [[a1 alloc] initWithDetectorType:@"VNANFDMultiDetectorType" configuration:*(*(&v26 + 1) + 8 * j)];
        [v16 addObject:v21];
      }

      v18 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v18);
  }

  return v16;
}

+ (int64_t)compoundRequestRevisionForRequest:(id)a3
{
  v3 = a3;
  if (+[VNANFDDetectorCompoundRequest compoundRequestRevisionForRequest:]::onceToken != -1)
  {
    dispatch_once(&+[VNANFDDetectorCompoundRequest compoundRequestRevisionForRequest:]::onceToken, &__block_literal_global_36842);
  }

  v4 = [+[VNANFDDetectorCompoundRequest compoundRequestRevisionForRequest:]::requestClassToDictionaryRequestRevisionToCompoundRequestRevision objectForKey:{objc_msgSend(v3, "frameworkClass")}];
  if (v4)
  {
    v5 = [v3 resolvedRevision];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
    v7 = [v4 objectForKey:v6];

    if (v7)
    {
      v8 = [v7 unsignedIntegerValue];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __67__VNANFDDetectorCompoundRequest_compoundRequestRevisionForRequest___block_invoke()
{
  v33[8] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v1 = +[VNANFDDetectorCompoundRequest compoundRequestRevisionForRequest:]::requestClassToDictionaryRequestRevisionToCompoundRequestRevision;
  +[VNANFDDetectorCompoundRequest compoundRequestRevisionForRequest:]::requestClassToDictionaryRequestRevisionToCompoundRequestRevision = v0;

  v2 = +[VNANFDDetectorCompoundRequest compoundRequestRevisionForRequest:]::requestClassToDictionaryRequestRevisionToCompoundRequestRevision;
  v32[0] = &unk_1F19C1CA8;
  v32[1] = &unk_1F19C1CD8;
  v33[0] = &unk_1F19C1CC0;
  v33[1] = &unk_1F19C1CF0;
  v32[2] = &unk_1F19C1D08;
  v32[3] = &unk_1F19C1D20;
  v33[2] = &unk_1F19C1CF0;
  v33[3] = &unk_1F19C1D20;
  v32[4] = &unk_1F19C1D38;
  v32[5] = &unk_1F19C1D50;
  v33[4] = &unk_1F19C1D20;
  v33[5] = &unk_1F19C1D68;
  v32[6] = &unk_1F19C1D80;
  v32[7] = &unk_1F19C1D98;
  v33[6] = &unk_1F19C1CF0;
  v33[7] = &unk_1F19C1D20;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:8];
  [v2 setObject:v3 forKey:objc_opt_class()];

  v4 = +[VNANFDDetectorCompoundRequest compoundRequestRevisionForRequest:]::requestClassToDictionaryRequestRevisionToCompoundRequestRevision;
  v30[0] = &unk_1F19C1CC0;
  v30[1] = &unk_1F19C1CA8;
  v31[0] = &unk_1F19C1CC0;
  v31[1] = &unk_1F19C1CF0;
  v30[2] = &unk_1F19C1DB0;
  v30[3] = &unk_1F19C1CD8;
  v31[2] = &unk_1F19C1D20;
  v31[3] = &unk_1F19C1D68;
  v30[4] = &unk_1F19C1D50;
  v31[4] = &unk_1F19C1CF0;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:5];
  [v4 setObject:v5 forKey:objc_opt_class()];

  v6 = +[VNANFDDetectorCompoundRequest compoundRequestRevisionForRequest:]::requestClassToDictionaryRequestRevisionToCompoundRequestRevision;
  v28[0] = &unk_1F19C1CC0;
  v28[1] = &unk_1F19C1CA8;
  v29[0] = &unk_1F19C1CC0;
  v29[1] = &unk_1F19C1CF0;
  v28[2] = &unk_1F19C1DC8;
  v28[3] = &unk_1F19C1DB0;
  v29[2] = &unk_1F19C1D20;
  v29[3] = &unk_1F19C1D68;
  v28[4] = &unk_1F19C1CD8;
  v29[4] = &unk_1F19C1CF0;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:5];
  [v6 setObject:v7 forKey:objc_opt_class()];

  v8 = +[VNANFDDetectorCompoundRequest compoundRequestRevisionForRequest:]::requestClassToDictionaryRequestRevisionToCompoundRequestRevision;
  v26[0] = &unk_1F19C1CC0;
  v26[1] = &unk_1F19C1CA8;
  v27[0] = &unk_1F19C1CC0;
  v27[1] = &unk_1F19C1CF0;
  v26[2] = &unk_1F19C1DC8;
  v26[3] = &unk_1F19C1DB0;
  v27[2] = &unk_1F19C1D20;
  v27[3] = &unk_1F19C1D68;
  v26[4] = &unk_1F19C1CD8;
  v27[4] = &unk_1F19C1CF0;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:5];
  [v8 setObject:v9 forKey:objc_opt_class()];

  v10 = +[VNANFDDetectorCompoundRequest compoundRequestRevisionForRequest:]::requestClassToDictionaryRequestRevisionToCompoundRequestRevision;
  v24[0] = &unk_1F19C1CC0;
  v24[1] = &unk_1F19C1CA8;
  v25[0] = &unk_1F19C1CF0;
  v25[1] = &unk_1F19C1D20;
  v24[2] = &unk_1F19C1DB0;
  v24[3] = &unk_1F19C1CD8;
  v25[2] = &unk_1F19C1D68;
  v25[3] = &unk_1F19C1CF0;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:4];
  [v10 setObject:v11 forKey:objc_opt_class()];

  v12 = +[VNANFDDetectorCompoundRequest compoundRequestRevisionForRequest:]::requestClassToDictionaryRequestRevisionToCompoundRequestRevision;
  v22[0] = &unk_1F19C1CC0;
  v22[1] = &unk_1F19C1CA8;
  v23[0] = &unk_1F19C1D20;
  v23[1] = &unk_1F19C1D68;
  v22[2] = &unk_1F19C1DB0;
  v23[2] = &unk_1F19C1CF0;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
  [v12 setObject:v13 forKey:objc_opt_class()];

  v14 = +[VNANFDDetectorCompoundRequest compoundRequestRevisionForRequest:]::requestClassToDictionaryRequestRevisionToCompoundRequestRevision;
  v20[0] = &unk_1F19C1CC0;
  v20[1] = &unk_1F19C1CA8;
  v21[0] = &unk_1F19C1D20;
  v21[1] = &unk_1F19C1D68;
  v20[2] = &unk_1F19C1DB0;
  v21[2] = &unk_1F19C1CF0;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];
  [v14 setObject:v15 forKey:objc_opt_class()];

  v16 = +[VNANFDDetectorCompoundRequest compoundRequestRevisionForRequest:]::requestClassToDictionaryRequestRevisionToCompoundRequestRevision;
  v18 = &unk_1F19C1CC0;
  v19 = &unk_1F19C1CF0;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  [v16 setObject:v17 forKey:objc_opt_class()];
}

@end