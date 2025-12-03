@interface VNFaceAnalyzerCompoundRequest
+ (id)compoundRequestsForOriginalRequests:(id)requests withPerformingContext:(id)context error:(id *)error;
+ (unint64_t)applicableRevisionForDependentRequestOfClass:(Class)class beingPerformedByRevision:(unint64_t)revision;
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (VNFaceAnalyzerCompoundRequest)initWithDetectorType:(id)type configuration:(id)configuration;
- (unint64_t)detectionLevel;
- (void)assignOriginalRequestsResultsFromObservations:(id)observations obtainedInPerformingContext:(id)context;
@end

@implementation VNFaceAnalyzerCompoundRequest

- (void)assignOriginalRequestsResultsFromObservations:(id)observations obtainedInPerformingContext:(id)context
{
  v48 = *MEMORY[0x1E69E9840];
  observationsCopy = observations;
  contextCopy = context;
  v31 = observationsCopy;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v9 = observationsCopy;
  v10 = [v9 countByEnumeratingWithState:&v41 objects:v47 count:{16, v31}];
  if (v10)
  {
    v11 = *v42;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v42 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v41 + 1) + 8 * i);
        v14 = objc_opt_class();
        if (v14 == objc_opt_class())
        {
          v15 = v13;
          faceprint = [v15 faceprint];
          v17 = faceprint == 0;

          if (!v17)
          {
            [v7 addObject:v15];
          }

          faceAttributes = [v15 faceAttributes];
          v19 = faceAttributes == 0;

          if (!v19)
          {
            [v8 addObject:v15];
          }
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v10);
  }

  [(VNHomologousObservationClassCompoundRequest *)self originalRequestsOfClass:objc_opt_class()];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v20 = v38 = 0u;
  v21 = [v20 countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v21)
  {
    v22 = *v38;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v38 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v37 + 1) + 8 * j);
        [v24 setResults:v7];
        [contextCopy cacheObservationsOfRequest:v24];
      }

      v21 = [v20 countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v21);
  }

  v25 = [(VNHomologousObservationClassCompoundRequest *)self originalRequestsOfClass:objc_opt_class()];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = v25;
  v27 = [v26 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v27)
  {
    v28 = *v34;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v34 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v30 = *(*(&v33 + 1) + 8 * k);
        [v30 setResults:v8];
        [contextCopy cacheObservationsOfRequest:v30];
      }

      v27 = [v26 countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v27);
  }
}

- (unint64_t)detectionLevel
{
  originalRequests = [(VNCompoundRequest *)self originalRequests];
  firstObject = [originalRequests firstObject];
  detectionLevel = [firstObject detectionLevel];

  return detectionLevel;
}

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  contextCopy = context;
  configuration = [(VNRequest *)self configuration];
  session = [contextCopy session];
  v11 = [(VNRequest *)self newDefaultDetectorOptionsForRequestRevision:revision session:session];
  detectorConfigurationOptions = [configuration detectorConfigurationOptions];
  [v11 addEntriesFromDictionary:detectorConfigurationOptions];

  v32 = 0;
  LOBYTE(detectorConfigurationOptions) = [VNValidationUtilities getOptionalFaceObservations:&v32 inOptions:v11 error:error];
  v13 = v32;
  v14 = v13;
  if ((detectorConfigurationOptions & 1) != 0 && (v13 || ([(VNRequest *)self detectFacesInContext:contextCopy error:error], (v14 = objc_claimAutoreleasedReturnValue()) != 0)))
  {
    v29 = session;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __73__VNFaceAnalyzerCompoundRequest_internalPerformRevision_inContext_error___block_invoke_2;
    aBlock[3] = &unk_1E77B2A18;
    v15 = v11;
    v31 = v15;
    v16 = _Block_copy(aBlock);
    [(VNCompoundRequest *)self regionOfInterest];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    detectorType = [configuration detectorType];
    error = [(VNRequest *)self processFaceObservations:v14 revision:revision regionOfInterest:detectorType detectorType:v15 detectorOptions:&__block_literal_global_4475 shouldAlignFaceBBox:v16 shouldRunDetectorBlock:v18 context:v20 error:v22, v24, contextCopy, error];

    v27 = error != 0;
    if (error)
    {
      [(VNCompoundRequest *)self recordWarningsInOriginalRequests];
      [(VNFaceAnalyzerCompoundRequest *)self assignOriginalRequestsResultsFromObservations:error obtainedInPerformingContext:contextCopy];
    }

    session = v29;
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

BOOL __73__VNFaceAnalyzerCompoundRequest_internalPerformRevision_inContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"VNFaceAnalyzerMultiDetectorProcessingOptionCreateFaceprint"];
  v5 = [v4 BOOLValue];

  v6 = [*(a1 + 32) objectForKeyedSubscript:@"VNFaceAnalyzerMultiDetectorProcessingOptionCreateFaceAnalyzer"];
  v7 = [v6 BOOLValue];

  v8 = v3;
  v9 = v8;
  if (v5)
  {
    v4 = [v8 faceprint];
    v10 = v4 == 0;
    if (!v4 || ((v7 ^ 1) & 1) != 0)
    {
      goto LABEL_7;
    }
  }

  else if (!v7)
  {
    v10 = 0;
    goto LABEL_9;
  }

  v11 = [v9 faceAttributes];
  v10 = v11 == 0;

  if (v5)
  {
LABEL_7:
  }

LABEL_9:

  return v10;
}

- (VNFaceAnalyzerCompoundRequest)initWithDetectorType:(id)type configuration:(id)configuration
{
  typeCopy = type;
  configurationCopy = configuration;
  originalRequests = [configurationCopy originalRequests];
  v15.receiver = self;
  v15.super_class = VNFaceAnalyzerCompoundRequest;
  v9 = [(VNHomologousObservationClassCompoundRequest *)&v15 initWithSubrequests:originalRequests];
  v10 = v9;
  if (v9)
  {
    configuration = [(VNRequest *)v9 configuration];
    [configuration setDetectorType:typeCopy];
    detectorConfigurationOptions = [configurationCopy detectorConfigurationOptions];
    [configuration setDetectorConfigurationOptions:detectorConfigurationOptions];

    v13 = v10;
  }

  return v10;
}

+ (unint64_t)applicableRevisionForDependentRequestOfClass:(Class)class beingPerformedByRevision:(unint64_t)revision
{
  if (![(objc_class *)class isSubclassOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  v7 = 3737841664;
  if (revision <= 6)
  {
    if (revision == 5)
    {
      goto LABEL_13;
    }

    if (revision == 6)
    {
      v7 = 3737841666;
      goto LABEL_13;
    }

LABEL_10:
    v9.receiver = self;
    v9.super_class = &OBJC_METACLASS___VNFaceAnalyzerCompoundRequest;
    return objc_msgSendSuper2(&v9, sel_applicableRevisionForDependentRequestOfClass_beingPerformedByRevision_, class, revision);
  }

  if (revision == 7)
  {
    v7 = 3737841669;
    goto LABEL_13;
  }

  if (revision == 100)
  {
    v7 = 3737841667;
    goto LABEL_13;
  }

  if (revision != 101)
  {
    goto LABEL_10;
  }

  v7 = 3737841670;
LABEL_13:

  return [(VNRequest *)VNClassifyFaceAttributesRequest applicableRevisionForDependentRequestOfClass:class beingPerformedByRevision:v7];
}

+ (id)compoundRequestsForOriginalRequests:(id)requests withPerformingContext:(id)context error:(id *)error
{
  v68 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  v31 = objc_alloc_init(VNFaceAnalyzerCompoundRequestConfigurationGroups);
  v30 = objc_alloc_init(VNFaceAnalyzerFaceObservationGrouping);
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = requestsCopy;
  v6 = [obj countByEnumeratingWithState:&v62 objects:v67 count:16];
  if (v6)
  {
    v7 = *v63;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v63 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v62 + 1) + 8 * i);
        v56 = 0;
        v57 = &v56;
        v58 = 0x3032000000;
        v59 = __Block_byref_object_copy__4488;
        v60 = __Block_byref_object_dispose__4489;
        v61 = 0;
        if ([v9 conformsToProtocol:&unk_1F19C5720])
        {
          v10 = v9;
          v11 = (v57 + 5);
          v55 = v57[5];
          v12 = [v10 getOptionalValidatedInputFaceObservations:&v55 clippedToRegionOfInterest:1 error:error];
          objc_storeStrong(v11, v55);

          if ((v12 & 1) == 0)
          {
LABEL_30:
            _Block_object_dispose(&v56, 8);

            v20 = 0;
            v21 = obj;
            goto LABEL_31;
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v9;
          v49 = 0;
          v50 = &v49;
          v51 = 0x3032000000;
          v52 = __Block_byref_object_copy__4488;
          v53 = __Block_byref_object_dispose__4489;
          v54 = 0;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __97__VNFaceAnalyzerCompoundRequest_compoundRequestsForOriginalRequests_withPerformingContext_error___block_invoke;
          aBlock[3] = &unk_1E77B29B8;
          v47 = &v56;
          v45 = v30;
          v48 = &v49;
          v46 = v31;
          v14 = _Block_copy(aBlock);
          v15 = [v13 resolvedRevision] - 3737841666;
          if (v15 < 5 && ((0x1Bu >> v15) & 1) != 0)
          {
            v16 = v14[2](v14, qword_1A6039AF0[v15], v13, error);

            _Block_object_dispose(&v49, 8);
            if ((v16 & 1) == 0)
            {
              goto LABEL_30;
            }
          }

          else
          {

            _Block_object_dispose(&v49, 8);
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v49 = 0;
            v50 = &v49;
            v51 = 0x3032000000;
            v52 = __Block_byref_object_copy__4488;
            v53 = __Block_byref_object_dispose__4489;
            v54 = v9;
            v42[0] = 0;
            v42[1] = v42;
            v42[2] = 0x3032000000;
            v42[3] = __Block_byref_object_copy__4488;
            v42[4] = __Block_byref_object_dispose__4489;
            v43 = 0;
            v36[0] = MEMORY[0x1E69E9820];
            v36[1] = 3221225472;
            v36[2] = __97__VNFaceAnalyzerCompoundRequest_compoundRequestsForOriginalRequests_withPerformingContext_error___block_invoke_2;
            v36[3] = &unk_1E77B29F0;
            v39 = &v56;
            v37 = v30;
            v40 = &v49;
            v41 = v42;
            v38 = v31;
            v17 = _Block_copy(v36);
            resolvedRevision = [v50[5] resolvedRevision];
            if (resolvedRevision - 3737841664) < 7 && ((0x6Du >> resolvedRevision))
            {
              v19 = v17[2](v17, *(&unk_1A6039B18 + resolvedRevision - 3737841664), v50[5], error);
            }

            else
            {
              v19 = 1;
            }

            _Block_object_dispose(v42, 8);
            _Block_object_dispose(&v49, 8);

            if ((v19 & 1) == 0)
            {
              goto LABEL_30;
            }
          }
        }

        _Block_object_dispose(&v56, 8);
      }

      v6 = [obj countByEnumeratingWithState:&v62 objects:v67 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(VNFaceAnalyzerCompoundRequestConfigurationGroups *)v31 allConfigurations];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v21 = v33 = 0u;
  v22 = [v21 countByEnumeratingWithState:&v32 objects:v66 count:16];
  if (v22)
  {
    v23 = *v33;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = [[self alloc] initWithDetectorType:@"VNFaceAnalyzerMultiDetectorType" configuration:*(*(&v32 + 1) + 8 * j)];
        [v20 addObject:v25];
      }

      v22 = [v21 countByEnumeratingWithState:&v32 objects:v66 count:16];
    }

    while (v22);
  }

LABEL_31:

  return v20;
}

uint64_t __97__VNFaceAnalyzerCompoundRequest_compoundRequestsForOriginalRequests_withPerformingContext_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = *(*(a1 + 48) + 8);
  obj = *(v8 + 40);
  v9 = [v7 getOptionalValidatedInputFaceObservations:&obj clippedToRegionOfInterest:1 error:a4];
  objc_storeStrong((v8 + 40), obj);
  if (v9)
  {
    v10 = [*(a1 + 32) addToGroupingsRequest:v7 withFaceObservations:*(*(*(a1 + 48) + 8) + 40)];
    v11 = [*(a1 + 40) configurationForRequest:v7 withObservationGroup:v10 compoundRequestRevision:a2];
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    [*(*(*(a1 + 56) + 8) + 40) setDetectorConfigurationOption:@"VNFaceAnalyzerMultiDetectorObservationGroupsForRequests" value:v10];
    [*(*(*(a1 + 56) + 8) + 40) setDetectorConfigurationOption:@"VNFaceAnalyzerMultiDetectorProcessingOptionCreateFaceprint" value:MEMORY[0x1E695E118]];
    v14 = *(*(*(a1 + 56) + 8) + 40);
    v15 = [v7 specifier];
    [v14 setDetectorConfigurationOption:@"VNFaceAnalyzerMultiDetectorProcessingOptionFaceprintOriginatingRequestSpecifier" value:v15];

    v16 = *(*(*(a1 + 56) + 8) + 40);
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "forceFaceprintCreation")}];
    [v16 setDetectorConfigurationOption:@"VNFaceAnalyzerMultiDetectorProcessingOptionFaceprintForceFaceprintCreation" value:v17];

    v18 = *(*(*(a1 + 56) + 8) + 40);
    v19 = [v7 inputFaceObservations];
    [v18 setDetectorConfigurationOption:@"VNDetectorProcessOption_InputFaceObservations" value:v19];

    v20 = *(*(*(a1 + 56) + 8) + 40);
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "detectionLevel")}];
    [v20 setDetectorConfigurationOption:@"VNDetectorOption_RequestDetectionLevel" value:v21];

    [*(*(*(a1 + 56) + 8) + 40) setResolvedRevision:a2];
  }

  return v9;
}

uint64_t __97__VNFaceAnalyzerCompoundRequest_compoundRequestsForOriginalRequests_withPerformingContext_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = *(*(a1 + 48) + 8);
  obj = *(v8 + 40);
  v9 = [v7 getOptionalValidatedInputFaceObservations:&obj clippedToRegionOfInterest:1 error:a4];
  objc_storeStrong((v8 + 40), obj);
  if (v9)
  {
    v10 = [*(a1 + 32) addToGroupingsRequest:*(*(*(a1 + 56) + 8) + 40) withFaceObservations:*(*(*(a1 + 48) + 8) + 40)];
    v11 = [*(a1 + 40) configurationForRequest:v7 withObservationGroup:v10 compoundRequestRevision:a2];
    v12 = *(*(a1 + 64) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    [*(*(*(a1 + 64) + 8) + 40) setDetectorConfigurationOption:@"VNFaceAnalyzerMultiDetectorObservationGroupsForRequests" value:v10];
    [*(*(*(a1 + 64) + 8) + 40) setDetectorConfigurationOption:@"VNFaceAnalyzerMultiDetectorProcessingOptionCreateFaceAnalyzer" value:MEMORY[0x1E695E118]];
    v14 = *(*(*(a1 + 64) + 8) + 40);
    v15 = [v7 specifier];
    [v14 setDetectorConfigurationOption:@"VNFaceAnalyzerMultiDetectorProcessingOptionFaceAnalyzerOriginatingRequestSpecifier" value:v15];

    v16 = *(*(*(a1 + 64) + 8) + 40);
    v17 = [v7 inputFaceObservations];
    [v16 setDetectorConfigurationOption:@"VNDetectorProcessOption_InputFaceObservations" value:v17];

    v18 = *(*(*(a1 + 64) + 8) + 40);
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "detectionLevel")}];
    [v18 setDetectorConfigurationOption:@"VNDetectorOption_RequestDetectionLevel" value:v19];

    v20 = *(*(*(a1 + 64) + 8) + 40);
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "modelExecutionPriority")}];
    [v20 setDetectorConfigurationOption:@"VNDetectorOption_EspressoPlanPriority" value:v21];

    [*(*(*(a1 + 64) + 8) + 40) setResolvedRevision:a2];
  }

  return v9;
}

@end