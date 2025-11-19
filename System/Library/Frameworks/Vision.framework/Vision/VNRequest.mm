@interface VNRequest
+ (BOOL)getDoubleValue:(double *)a3 forKey:(id)a4 inOptions:(id)a5 error:(id *)a6;
+ (BOOL)getDoubleValue:(double *)a3 forKey:(id)a4 inOptions:(id)a5 withDefaultValue:(double)a6 error:(id *)a7;
+ (BOOL)getFloatValue:(float *)a3 forKey:(id)a4 inOptions:(id)a5 error:(id *)a6;
+ (BOOL)getFloatValue:(float *)a3 forKey:(id)a4 inOptions:(id)a5 withDefaultValue:(float)a6 error:(id *)a7;
+ (BOOL)getOptionalArray:(id *)a3 forKey:(id)a4 inOptions:(id)a5 withElementsOfClass:(Class)a6 error:(id *)a7;
+ (BOOL)revision:(unint64_t)a3 mayAcceptResultsProducedByRevision:(unint64_t)a4;
+ (BOOL)supportsAnyRevision:(unint64_t)a3;
+ (BOOL)supportsPrivateRevision:(unint64_t)a3;
+ (BOOL)supportsRevision:(unint64_t)a3;
+ (NSIndexSet)allSupportedRevisions;
+ (NSIndexSet)supportedPrivateRevisions;
+ (NSIndexSet)supportedRevisions;
+ (NSUInteger)currentRevision;
+ (NSUInteger)defaultRevision;
+ (id)_runtimeAvailableRevisionsOfRevisions:(id)a3;
+ (id)createVNEntityIdentificationModelEntryPrintForRevision:(unint64_t)a3 fromDescriptorData:(const void *)a4 length:(unint64_t)a5 elementCount:(unint64_t)a6 error:(id *)a7;
+ (id)newConfigurationInstance;
+ (id)publicRevisionsSet;
+ (unint64_t)_defaultRevisionForBuildVersion:(int)a3;
+ (unint64_t)applicableRevisionForDependentRequestOfClass:(Class)a3 beingPerformedByRevision:(unint64_t)a4;
+ (unint64_t)firstSupportedRevisionInOrderedRevisionList:(unint64_t)a3;
+ (unint64_t)resolvedRevisionForRevision:(unint64_t)a3;
+ (unsigned)VNClassCode;
+ (void)initialize;
- (BOOL)cancellationTriggeredAndReturnError:(id *)a3;
- (BOOL)internalCancelInContext:(id)a3 error:(id *)a4;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (BOOL)performInContext:(id)a3 error:(id *)a4;
- (BOOL)setRevision:(unint64_t)a3 error:(id *)a4;
- (BOOL)usesCPUOnly;
- (BOOL)validateConfigurationAndReturnError:(id *)a3;
- (BOOL)validateImageBuffer:(id)a3 ofNonZeroWidth:(unint64_t *)a4 andHeight:(unint64_t *)a5 error:(id *)a6;
- (BOOL)warmUpApplicableDetectorInSession:(id)a3 error:(id *)a4;
- (BOOL)warmUpSession:(id)a3 error:(id *)a4;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3;
- (CGRect)VNImageProcessingSessionRegionOfInterest;
- (Class)applicableDetectorClassAndOptions:(id *)a3 forRevision:(unint64_t)a4 error:(id *)a5;
- (Class)frameworkClass;
- (MTLDevice)preferredMetalContext;
- (NSDictionary)supportedComputeStageDevicesAndReturnError:(NSError *)error;
- (NSString)description;
- (VNAsyncStatus)asyncStatus;
- (VNControlledCapacityTasksQueue)requestTasksQueue;
- (VNRequest)initWithCompletionHandler:(VNRequestCompletionHandler)completionHandler;
- (VNRequestSpecifier)specifier;
- (id)VNCoreMLTransformerDetectionprintAndReturnError:(id *)a3;
- (id)VNCoreMLTransformerSceneprintsAndReturnError:(id *)a3;
- (id)VNImageProcessingSessionPrintAndReturnError:(id *)a3;
- (id)_alignFacesInContext:(id)a3 faces:(id)a4 qosClass:(unsigned int)a5 options:(id)a6 error:(id *)a7;
- (id)applicableDetectorAndOptions:(id *)a3 forRevision:(unint64_t)a4 loadedInSession:(id)a5 error:(id *)a6;
- (id)cancellerAndReturnError:(id *)a3;
- (id)computeDeviceForComputeStage:(VNComputeStage)computeStage;
- (id)copyWithZone:(_NSZone *)a3;
- (id)detectFaceLandmarksInContext:(id)a3 faces:(id)a4 error:(id *)a5;
- (id)detectFacesInContext:(id)a3 error:(id *)a4;
- (id)detectorProgressHandler;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4;
- (id)newDefaultDetectorOptionsForSession:(id)a3;
- (id)newDuplicateInstance;
- (id)processFaceObservations:(id)a3 revision:(unint64_t)a4 regionOfInterest:(CGRect)a5 detectorType:(id)a6 detectorOptions:(id)a7 shouldAlignFaceBBox:(id)a8 shouldRunDetectorBlock:(id)a9 context:(id)a10 error:(id *)a11;
- (id)sequencedRequestPreviousObservationsKey;
- (id)utilizedResourcesWithError:(id *)a3;
- (id)valueForWarning:(id)a3;
- (id)warnings;
- (unint64_t)applicableRevisionForDependentRequest:(id)a3;
- (unint64_t)resolvedRevision;
- (void)_setResolvedRevision:(unint64_t)a3;
- (void)applyCompatibleComputeStageDeviceAssignmentsOfRequest:(id)a3;
- (void)applyConfigurationOfRequest:(id)a3;
- (void)cancel;
- (void)categorizeFaceObservations:(id)a3 shouldRunDetectorBlock:(id)a4 facesThatNeedNoProcessing:(id)a5 facesThatNeedProcessing:(id)a6 facesThatNeed2DLandmarks:(id)a7;
- (void)copyStateOfRequest:(id)a3;
- (void)performInContextAsync:(id)a3 asyncDispatchQueue:(id)a4 asyncDispatchGroup:(id)a5;
- (void)recordWarning:(id)a3 value:(id)a4;
- (void)setAsyncStatus:(BOOL)a3 error:(id)a4;
- (void)setPreferredMetalContext:(id)a3;
- (void)setProcessedResults:(id)a3;
- (void)setProcessingDevice:(id)a3;
- (void)setResults:(id)a3;
- (void)setResults:(id)a3 assignedWithOriginatingSpecifier:(BOOL)a4;
- (void)setRevision:(NSUInteger)revision;
- (void)setUsesCPUOnly:(BOOL)usesCPUOnly;
@end

@implementation VNRequest

+ (id)newConfigurationInstance
{
  v3 = objc_alloc([a1 configurationClass]);
  v4 = [a1 frameworkClass];

  return [v3 initWithRequestClass:v4];
}

- (unint64_t)resolvedRevision
{
  v3 = [(VNRequestConfiguration *)self->_configuration resolvedRevision];
  if (!v3)
  {
    v3 = [objc_opt_class() resolvedRevisionForRevision:{-[VNRequest revision](self, "revision")}];
    [(VNRequestConfiguration *)self->_configuration setResolvedRevision:v3];
  }

  return v3;
}

+ (NSUInteger)defaultRevision
{
  v3 = [a1 _defaultRevisionForBuildVersion:ourVisionFrameworkLinkTimeVersion];

  return [a1 resolvedRevisionForRevision:v3];
}

- (Class)frameworkClass
{
  v2 = objc_opt_class();

  return VNRequestClassFromClientSubclass(v2);
}

+ (NSIndexSet)supportedPrivateRevisions
{
  v3 = [a1 privateRevisionsSet];
  if ([a1 supportedRevisionsAreFilteredBasedOnAvailableComputeDevices])
  {
    v4 = [a1 _runtimeAvailableRevisionsOfRevisions:v3];

    v3 = v4;
  }

  return v3;
}

- (id)computeDeviceForComputeStage:(VNComputeStage)computeStage
{
  v3 = [(VNRequestConfiguration *)self->_configuration computeDeviceForComputeStage:computeStage];

  return v3;
}

- (NSDictionary)supportedComputeStageDevicesAndReturnError:(NSError *)error
{
  v10 = 0;
  v4 = [(VNRequest *)self applicableDetectorClassAndOptions:&v10 forRevision:[(VNRequest *)self resolvedRevision] error:error];
  v5 = v10;
  if (v4)
  {
    v6 = [(objc_class *)v4 supportedComputeStageDevicesForOptions:v5 error:error];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)detectorProgressHandler
{
  if ([objc_opt_class() conformsToProtocol:&unk_1F19E6F70])
  {
    v3 = self;
    v4 = [(VNRequest *)v3 progressHandler];
    if (v4)
    {
      objc_initWeak(&location, v3);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __36__VNRequest_detectorProgressHandler__block_invoke;
      aBlock[3] = &unk_1E77B2DF0;
      objc_copyWeak(&v10, &location);
      v9 = v4;
      v5 = _Block_copy(aBlock);

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }

    else
    {
      v5 = 0;
    }

    v6 = _Block_copy(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __36__VNRequest_detectorProgressHandler__block_invoke(uint64_t a1, void *a2, double a3)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    (*(*(a1 + 32) + 16))(a3);
  }
}

- (void)categorizeFaceObservations:(id)a3 shouldRunDetectorBlock:(id)a4 facesThatNeedNoProcessing:(id)a5 facesThatNeedProcessing:(id)a6 facesThatNeed2DLandmarks:(id)a7
{
  v30 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v11;
  v16 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v16)
  {
    v17 = *v26;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v25 + 1) + 8 * i);
        v20 = v12[2](v12, v19);
        v21 = v13;
        if (v20)
        {
          v22 = [v19 landmarkPoints];
          v23 = v22 == 0;

          if (v23)
          {
            v21 = v15;
          }

          else
          {
            v21 = v14;
          }
        }

        [v21 addObject:v19];
      }

      v16 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v16);
  }
}

- (id)detectFaceLandmarksInContext:(id)a3 faces:(id)a4 error:(id *)a5
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(VNDetectFaceLandmarksRequest);
  [(VNDetectFaceLandmarksRequest *)v10 applyConfigurationOfRequest:self];
  [(VNDetectFaceLandmarksRequest *)v10 setConstellation:1];
  v11 = [v8 requestPerformerAndReturnError:a5];
  if (v11 && (-[VNImageBasedRequest setInputFaceObservations:](v10, "setInputFaceObservations:", v9), v16[0] = v10, [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "performDependentRequests:onBehalfOfRequest:inContext:error:", v12, self, v8, a5), v12, (v13 & 1) != 0))
  {
    v14 = [(VNRequest *)v10 results];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_alignFacesInContext:(id)a3 faces:(id)a4 qosClass:(unsigned int)a5 options:(id)a6 error:(id *)a7
{
  v9 = *&a5;
  v28[1] = *MEMORY[0x1E69E9840];
  v26 = a4;
  v25 = a6;
  v12 = [a3 session];
  v13 = v25;
  v14 = [VNFaceBBoxAligner supportedComputeStageDevicesForOptions:v13 error:a7];
  v15 = [v13 mutableCopy];
  v27 = @"VNComputeStageMain";
  v16 = [v14 objectForKeyedSubscript:?];
  v17 = [v16 firstObject];
  v28[0] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  [v15 setObject:v18 forKeyedSubscript:@"VNDetectorOption_ComputeStageDeviceAssignments"];

  v19 = [v15 copy];
  v20 = [v12 detectorOfType:@"VNFaceBoxAlignerType" configuredWithOptions:v19 error:a7];

  if (v20)
  {
    [v13 setObject:v26 forKeyedSubscript:@"VNDetectorProcessOption_InputFaceObservations"];
    v21 = [v20 processUsingQualityOfServiceClass:v9 options:v13 regionOfInterest:self warningRecorder:a7 error:0 progressHandler:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)detectFacesInContext:(id)a3 error:(id *)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(VNDetectFaceRectanglesRequest);
  [(VNDetectFaceRectanglesRequest *)v7 applyConfigurationOfRequest:self];
  v8 = [v6 requestPerformerAndReturnError:a4];
  if (v8 && (v13[0] = v7, [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "performDependentRequests:onBehalfOfRequest:inContext:error:", v9, self, v6, a4), v9, (v10 & 1) != 0))
  {
    v11 = [(VNRequest *)v7 results];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)processFaceObservations:(id)a3 revision:(unint64_t)a4 regionOfInterest:(CGRect)a5 detectorType:(id)a6 detectorOptions:(id)a7 shouldAlignFaceBBox:(id)a8 shouldRunDetectorBlock:(id)a9 context:(id)a10 error:(id *)a11
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v130[1] = *MEMORY[0x1E69E9840];
  v63 = a3;
  v61 = a6;
  v62 = a7;
  v76 = a8;
  v75 = a9;
  v77 = a10;
  [v77 qosClass];
  v60 = [v77 requestPerformerAndReturnError:a11];
  if (!v60)
  {
    v52 = 0;
    goto LABEL_36;
  }

  v59 = [v77 imageBufferAndReturnError:a11];
  if (v59)
  {
    v58 = [v77 session];
    v73 = [(VNRequest *)self newDefaultDetectorOptionsForRequestRevision:a4 session:?];
    [v73 addEntriesFromDictionary:v62];
    v130[0] = v59;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v130 count:1];
    [v73 setObject:v20 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

    v72 = [v58 detectorOfType:v61 configuredWithOptions:v73 error:a11];
    if (!v72)
    {
      v52 = 0;
LABEL_34:

      goto LABEL_35;
    }

    v67 = [v77 qosClass];
    v21 = [v63 count];
    v54 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v21];
    v55 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v21];
    v126[0] = 0;
    v126[1] = v126;
    v126[2] = 0x3812000000;
    v126[3] = __Block_byref_object_copy__5731;
    v126[4] = __Block_byref_object_dispose__5732;
    v126[5] = "";
    v127 = 0;
    v70 = [(VNRequest *)self requestTasksQueue];
    v64 = dispatch_group_create();
    v68 = objc_opt_class();
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __149__VNRequest_processFaceObservations_revision_regionOfInterest_detectorType_detectorOptions_shouldAlignFaceBBox_shouldRunDetectorBlock_context_error___block_invoke;
    aBlock[3] = &unk_1E77B2D28;
    v125 = v126;
    v56 = v54;
    v123 = v56;
    v57 = v55;
    v124 = v57;
    v71 = _Block_copy(aBlock);
    v69 = [v63 count];
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    obj = v63;
    v22 = [obj countByEnumeratingWithState:&v118 objects:v129 count:16];
    if (v22)
    {
      v66 = *v119;
      do
      {
        v78 = v22;
        for (i = 0; i != v78; ++i)
        {
          if (*v119 != v66)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v118 + 1) + 8 * i);
          v112 = 0;
          v113 = &v112;
          v114 = 0x3032000000;
          v115 = __Block_byref_object_copy__140;
          v116 = __Block_byref_object_dispose__141;
          v117 = 0;
          v106 = 0;
          v107 = &v106;
          v108 = 0x3032000000;
          v109 = __Block_byref_object_copy__140;
          v110 = __Block_byref_object_dispose__141;
          v111 = 0;
          v25 = v76[2](v76, v24);
          v26 = [v73 mutableCopy];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __149__VNRequest_processFaceObservations_revision_regionOfInterest_detectorType_detectorOptions_shouldAlignFaceBBox_shouldRunDetectorBlock_context_error___block_invoke_142;
          block[3] = &unk_1E77B2D78;
          v103 = v68;
          v104 = v67;
          v101 = &v106;
          block[4] = self;
          v97 = v77;
          v98 = v24;
          v27 = v26;
          v99 = v27;
          v102 = &v112;
          v105 = v69 == 1;
          v28 = v70;
          v100 = v28;
          v29 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v67, 0, block);
          v79[0] = MEMORY[0x1E69E9820];
          v79[1] = 3221225472;
          v79[2] = __149__VNRequest_processFaceObservations_revision_regionOfInterest_detectorType_detectorOptions_shouldAlignFaceBBox_shouldRunDetectorBlock_context_error___block_invoke_3;
          v79[3] = &unk_1E77B2DC8;
          v88 = v68;
          v93 = v67;
          v94 = v25;
          v30 = v29;
          v84 = v30;
          v86 = &v112;
          v87 = &v106;
          v31 = v27;
          v80 = v31;
          v32 = v72;
          v89 = x;
          v90 = y;
          v91 = width;
          v92 = height;
          v81 = v32;
          v82 = self;
          v33 = v71;
          v85 = v33;
          v95 = v69 == 1;
          v34 = v28;
          v83 = v34;
          v35 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v67, 0, v79);
          if (v25)
          {
            if (v69 == 1)
            {
              v30[2](v30);
            }

            else
            {
              [v34 dispatchGroupAsyncByPreservingQueueCapacity:v64 block:v30];
            }
          }

          else
          {
            v128 = v24;
            v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v128 count:1];
            v37 = v107[5];
            v107[5] = v36;

            v38 = objc_alloc_init(VNAsyncStatus);
            v39 = v113[5];
            v113[5] = v38;
          }

          v40 = [v107[5] firstObject];
          v41 = v75[2](v75, v40);

          if (v41)
          {
            if (v69 == 1)
            {
              v35[2](v35);
            }

            else
            {
              [v34 dispatchGroupAsyncByPreservingQueueCapacity:v64 block:v35];
            }
          }

          else
          {
            if (v25 && dispatch_block_wait(v30, 0xFFFFFFFFFFFFFFFFLL))
            {
              v42 = [VNError errorForExecutionTimeoutWithLocalizedDescription:@"Timed out waiting for dependent task execution"];
              v43 = [[VNAsyncStatus alloc] initWithStatus:0 error:v42];
              v44 = v113[5];
              v113[5] = v43;
            }

            (*(v71 + 2))(v33, v107[5], v113[5]);
          }

          _Block_object_dispose(&v106, 8);
          _Block_object_dispose(&v112, 8);
        }

        v22 = [obj countByEnumeratingWithState:&v118 objects:v129 count:16];
      }

      while (v22);
    }

    v45 = a11;
    if (v69 == 1 || (v46 = [v70 dispatchGroupWait:v64 error:a11], v45 = a11, (v46 & 1) != 0))
    {
      if ([VNValidationUtilities validateAsyncStatusResults:v57 error:v45])
      {
        v52 = v56;
LABEL_33:

        _Block_object_dispose(v126, 8);
        goto LABEL_34;
      }
    }

    else
    {
      VNValidatedLog(4, @"Timed out waiting for processing face observations: %@", v47, a11, v48, v49, v50, v51, obj);
    }

    v52 = 0;
    goto LABEL_33;
  }

  v52 = 0;
LABEL_35:

LABEL_36:

  return v52;
}

void __149__VNRequest_processFaceObservations_revision_regionOfInterest_detectorType_detectorOptions_shouldAlignFaceBBox_shouldRunDetectorBlock_context_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  os_unfair_lock_lock((*(*(a1 + 48) + 8) + 48));
  [*(a1 + 32) addObjectsFromArray:v6];
  [*(a1 + 40) addObject:v5];
  os_unfair_lock_unlock((*(*(a1 + 48) + 8) + 48));
}

void __149__VNRequest_processFaceObservations_revision_regionOfInterest_detectorType_detectorOptions_shouldAlignFaceBBox_shouldRunDetectorBlock_context_error___block_invoke_142(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  VNValidatedLog(1, @"alignFaceBlock: start processing: %@", a3, a4, a5, a6, a7, a8, *(a1 + 88));
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __149__VNRequest_processFaceObservations_revision_regionOfInterest_detectorType_detectorOptions_shouldAlignFaceBBox_shouldRunDetectorBlock_context_error___block_invoke_2;
  aBlock[3] = &unk_1E77B2D50;
  v30 = *(a1 + 96);
  v29 = *(a1 + 72);
  v24 = *(a1 + 32);
  v9 = *(&v24 + 1);
  v23 = *(a1 + 48);
  v10 = *(&v23 + 1);
  v27 = v24;
  v28 = v23;
  v11 = _Block_copy(aBlock);
  v25 = 0;
  v12 = v11[2](v11, &v25);
  v13 = v25;
  v14 = [[VNAsyncStatus alloc] initWithStatus:v12 error:v13];
  v15 = *(*(a1 + 80) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  VNValidatedLog(1, @"alignFaceBlock: finish processing: %@", v17, v18, v19, v20, v21, v22, *(a1 + 88));
  if ((*(a1 + 100) & 1) == 0)
  {
    [*(a1 + 64) dispatchReportBlockCompletion];
  }
}

void __149__VNRequest_processFaceObservations_revision_regionOfInterest_detectorType_detectorOptions_shouldAlignFaceBBox_shouldRunDetectorBlock_context_error___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  VNValidatedLog(1, @"processFaceBlock: start processing: %@", a3, a4, a5, a6, a7, a8, *(a1 + 96));
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __149__VNRequest_processFaceObservations_revision_regionOfInterest_detectorType_detectorOptions_shouldAlignFaceBBox_shouldRunDetectorBlock_context_error___block_invoke_4;
  aBlock[3] = &unk_1E77B2DA0;
  v33 = *(a1 + 136);
  v34 = *(a1 + 140);
  v29 = *(a1 + 64);
  v30 = *(a1 + 80);
  v26 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 120);
  v31 = *(a1 + 104);
  v32 = v10;
  v11 = *(a1 + 48);
  v27 = v9;
  v28 = v11;
  v12 = _Block_copy(aBlock);
  v24 = 0;
  v13 = VNExecuteBlock(v12, &v24);
  v14 = v24;
  v15 = [[VNAsyncStatus alloc] initWithStatus:v13 error:v14];
  v16 = *(*(a1 + 80) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  (*(*(a1 + 72) + 16))();
  VNValidatedLog(1, @"processFaceBlock: finish processing: %@", v18, v19, v20, v21, v22, v23, *(a1 + 96));
  if ((*(a1 + 141) & 1) == 0)
  {
    [*(a1 + 56) dispatchReportBlockCompletion];
  }
}

BOOL __149__VNRequest_processFaceObservations_revision_regionOfInterest_detectorType_detectorOptions_shouldAlignFaceBBox_shouldRunDetectorBlock_context_error___block_invoke_4(uint64_t a1, void *a2)
{
  if (*(a1 + 116) == 1)
  {
    if (dispatch_block_wait(*(a1 + 56), 0xFFFFFFFFFFFFFFFFLL))
    {
      if (a2)
      {
        v4 = [VNError errorForExecutionTimeoutWithLocalizedDescription:@"Timed out waiting for dependent task execution"];
LABEL_11:
        v9 = v4;
        v10 = v4;
        result = 0;
        *a2 = v9;
        return result;
      }

      return 0;
    }

    if (([*(*(*(a1 + 64) + 8) + 40) completed] & 1) == 0)
    {
      if (a2)
      {
        v4 = [*(*(*(a1 + 64) + 8) + 40) error];
        goto LABEL_11;
      }

      return 0;
    }
  }

  if (![*(*(*(a1 + 72) + 8) + 40) count])
  {
    return 1;
  }

  [*(a1 + 32) setObject:*(*(*(a1 + 72) + 8) + 40) forKeyedSubscript:@"VNDetectorProcessOption_InputFaceObservations"];
  v5 = [*(a1 + 40) processUsingQualityOfServiceClass:*(a1 + 112) options:*(a1 + 32) regionOfInterest:*(a1 + 48) warningRecorder:a2 error:0 progressHandler:{*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
  v6 = *(*(a1 + 72) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return *(*(*(a1 + 72) + 8) + 40) != 0;
}

BOOL __149__VNRequest_processFaceObservations_revision_regionOfInterest_detectorType_detectorOptions_shouldAlignFaceBBox_shouldRunDetectorBlock_context_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v11[0] = *(a1 + 48);
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v7 = [v4 _alignFacesInContext:v5 faces:v6 qosClass:*(a1 + 72) options:*(a1 + 56) error:a2];
  v8 = *(*(a1 + 64) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return *(*(*(a1 + 64) + 8) + 40) != 0;
}

- (NSString)description
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v18.receiver = self;
  v18.super_class = VNRequest;
  v4 = [(VNRequest *)&v18 description];
  v5 = [(VNRequest *)self specifier];
  v6 = [v3 initWithFormat:@"%@ %@", v4, v5];

  [(VNRequest *)self computeStageDeviceAssignments];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v7 = v15 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v7 objectForKeyedSubscript:v11];
        [v6 appendFormat:@" %@=%@", v11, v12, v14];
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }

  if ([(VNRequest *)self preferBackgroundProcessing])
  {
    [v6 appendString:@" preferBackgroundProcessing"];
  }

  return v6;
}

- (unint64_t)applicableRevisionForDependentRequest:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v5 applicableRevisionForDependentRequestOfClass:objc_opt_class() beingPerformedByRevision:{-[VNRequest resolvedRevision](self, "resolvedRevision")}];

  return v6;
}

- (void)setRevision:(NSUInteger)revision
{
  v5 = objc_opt_class();
  v6 = v5;
  if (revision > 0xDECAEFFF || [(objc_class *)v5 supportsPrivateRevision:revision])
  {
    v7 = MEMORY[0x1E695DF30];
    v10 = NSStringFromClass(v6);
    v8 = VNRequestRevisionString(v6, revision);
    [v7 raise:*MEMORY[0x1E695D940] format:{@"%@ does not support %@", v10, v8}];
  }

  else
  {
    v9 = [(objc_class *)v6 resolvedRevisionForRevision:revision];

    [(VNRequest *)self _setResolvedRevision:v9];
  }
}

- (BOOL)setRevision:(unint64_t)a3 error:(id *)a4
{
  if (a3 < 0xDECAF000)
  {
    [(VNRequest *)self setRevision:a3];
    if (([objc_opt_class() supportsRevision:a3] & 1) == 0)
    {
LABEL_4:
      if (a4)
      {
        v7 = [VNError errorForUnsupportedRevision:a3 ofRequest:self];
        v8 = v7;
        result = 0;
        *a4 = v7;
        return result;
      }

      return 0;
    }

    return 1;
  }

  if (self)
  {
    [(VNRequest *)self _setResolvedRevision:a3];
    if (([objc_opt_class() supportsPrivateRevision:a3] & 1) == 0)
    {
      goto LABEL_4;
    }

    return 1;
  }

  return 0;
}

- (void)_setResolvedRevision:(unint64_t)a3
{
  revision = self->_revision;
  self->_revision = a3;
  if (revision != a3)
  {
    [(VNRequestConfiguration *)self->_configuration setResolvedRevision:?];

    [(VNRequest *)self resolvedRevisionDidChangeFromRevision:revision];
  }
}

- (BOOL)validateImageBuffer:(id)a3 ofNonZeroWidth:(unint64_t *)a4 andHeight:(unint64_t *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = v10;
  if (!v10)
  {
    if (a6)
    {
      [VNError errorForInvalidArgument:0 named:@"imageBuffer"];
      *a6 = v14 = 0;
      goto LABEL_11;
    }

LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v12 = [v10 width];
  v13 = [v11 height];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __64__VNRequest_validateImageBuffer_ofNonZeroWidth_andHeight_error___block_invoke;
  v16[3] = &unk_1E77B6810;
  v16[4] = self;
  if (![VNValidationUtilities validateNonZeroImageWidth:v12 height:v13 componentNameProvidingBlock:v16 error:a6])
  {
    goto LABEL_10;
  }

  if (a4)
  {
    *a4 = v12;
  }

  if (a5)
  {
    *a5 = v13;
  }

  v14 = 1;
LABEL_11:

  return v14;
}

NSString *__64__VNRequest_validateImageBuffer_ofNonZeroWidth_andHeight_error___block_invoke()
{
  v0 = objc_opt_class();

  return NSStringFromClass(v0);
}

- (void)setProcessingDevice:(id)a3
{
  v9 = a3;
  v4 = [[VNProcessingDeviceComputeDeviceBridge alloc] initWithProcessingDevice:v9];
  v5 = [(VNRequest *)self supportedComputeStageDevicesAndReturnError:0];
  v6 = [v5 objectForKeyedSubscript:@"VNComputeStageMain"];
  v7 = [(VNProcessingDeviceComputeDeviceBridge *)v4 computeDevice];
  v8 = [v6 containsObject:v7];

  if (v8)
  {
    [(VNRequestConfiguration *)self->_configuration setProcessingDevice:v9];
  }
}

- (void)setUsesCPUOnly:(BOOL)usesCPUOnly
{
  if (usesCPUOnly)
  {
    v4 = +[VNProcessingDevice defaultCPUDevice];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [(VNRequestConfiguration *)self->_configuration setProcessingDevice:v4];
}

- (BOOL)usesCPUOnly
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(VNRequestConfiguration *)self->_configuration processingDevice];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 targetsCPU];
  }

  else
  {
    v6 = [(VNRequestConfiguration *)self->_configuration computeStageDeviceAssignments];
    v7 = [v6 allValues];

    if ([v7 count])
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        v10 = *v14;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(v8);
            }

            if (![VNComputeDeviceUtilities isCPUComputeDevice:*(*(&v13 + 1) + 8 * i), v13])
            {
              v5 = 0;
              goto LABEL_14;
            }
          }

          v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      v5 = 1;
LABEL_14:
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)setPreferredMetalContext:(id)a3
{
  v8 = a3;
  v4 = [(VNRequest *)self preferredMetalContext];
  if (v4 != v8)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    v6 = [v5 isEqual:v8];

    if (v6)
    {
    }

    else if (v8)
    {
      v7 = [VNProcessingDevice deviceForMetalDevice:?];
LABEL_7:
      [(VNRequestConfiguration *)self->_configuration setProcessingDevice:v7];

      goto LABEL_8;
    }

    v8 = 0;
    v7 = 0;
    goto LABEL_7;
  }

LABEL_8:
}

- (MTLDevice)preferredMetalContext
{
  v3 = [(VNRequest *)self processingDevice];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 metalDevice];
  }

  else
  {
    v6 = [(VNRequest *)self computeDeviceForComputeStage:@"VNComputeStageMain"];
    if (v6)
    {
      v5 = [VNComputeDeviceUtilities metalDeviceForComputeDevice:v6];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)cancellationTriggeredAndReturnError:(id *)a3
{
  v5 = [(VNRequest *)self cancellationTriggered];
  v6 = v5;
  if (a3 && v5)
  {
    *a3 = [VNError errorForCancellationOfRequest:self];
  }

  return v6;
}

- (id)cancellerAndReturnError:(id *)a3
{
  os_unfair_lock_lock(&self->_cancellationResourcesLock);
  v5 = self->_canceller;
  os_unfair_lock_unlock(&self->_cancellationResourcesLock);
  if (v5)
  {
    v6 = v5;
  }

  else if (a3)
  {
    if ([(VNRequest *)self hasCancellationHook])
    {
      v7 = @"cancellation is not currently available";
    }

    else
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [v8 stringWithFormat:@"%@ does not support cancellation", v10];

      v7 = v11;
    }

    *a3 = [VNError errorForInvalidOperationWithLocalizedDescription:v7];
  }

  return v5;
}

- (void)cancel
{
  os_unfair_lock_lock(&self->_cancellationResourcesLock);
  v4 = self->_canceller;
  v3 = self->_cancellationSemaphore;
  os_unfair_lock_unlock(&self->_cancellationResourcesLock);
  self->_cancellationTriggered = 1;
  [(VNCanceller *)v4 signalCancellation];
  if (v3)
  {
    dispatch_semaphore_signal(v3);
  }
}

- (id)warnings
{
  warningRecorder = self->_warningRecorder;
  if (warningRecorder)
  {
    v4 = [(VNWarningRecorder *)warningRecorder warnings];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  return v4;
}

- (id)valueForWarning:(id)a3
{
  v3 = [(VNWarningRecorder *)self->_warningRecorder valueForWarning:a3];

  return v3;
}

- (void)recordWarning:(id)a3 value:(id)a4
{
  v10 = a3;
  v6 = a4;
  warningRecorder = self->_warningRecorder;
  if (!warningRecorder)
  {
    v8 = objc_alloc_init(VNWarningRecorder);
    v9 = self->_warningRecorder;
    self->_warningRecorder = v8;

    warningRecorder = self->_warningRecorder;
  }

  [(VNWarningRecorder *)warningRecorder recordWarning:v10 value:v6];
}

- (void)setProcessedResults:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  results = self->_results;
  self->_results = v4;
}

- (void)setResults:(id)a3 assignedWithOriginatingSpecifier:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  if (v4)
  {
    v6 = [(VNRequest *)self specifier];
    v7 = [v9 VNObservationsWithOriginatingRequestSpecifier:v6];

    v8 = v7;
  }

  else
  {
    v8 = v9;
  }

  v10 = v8;
  [(VNRequest *)self setProcessedResults:?];
}

- (void)setResults:(id)a3
{
  v5 = a3;
  if (v5)
  {
    [(VNRequest *)self setResults:v5 assignedWithOriginatingSpecifier:[(VNRequest *)self resultsAreAssignedWithOriginatingRequestSpecifier]];
  }

  else
  {
    results = self->_results;
    self->_results = 0;
  }
}

- (BOOL)internalCancelInContext:(id)a3 error:(id *)a4
{
  v4 = [(VNRequest *)self cancellerAndReturnError:a4];
  v5 = v4;
  if (v4)
  {
    [v4 signalCancellation];
  }

  return v5 != 0;
}

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = [VNError errorForUnimplementedMethod:a2 ofObject:self];
  }

  return 0;
}

- (BOOL)validateConfigurationAndReturnError:(id *)a3
{
  warningRecorder = self->_warningRecorder;
  self->_warningRecorder = 0;

  self->_executionNanoseconds = 0;
  if ([(VNRequest *)self hasCancellationHook])
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = objc_opt_class();
    v7 = VNRequestRevisionString(v6, [(VNRequest *)self resolvedRevision]);
    v8 = [v5 initWithFormat:@"com.apple.%@", v7];

    os_unfair_lock_lock(&self->_cancellationResourcesLock);
    v9 = objc_alloc_init(VNCanceller);
    canceller = self->_canceller;
    self->_canceller = v9;

    v11 = dispatch_semaphore_create(0);
    cancellationSemaphore = self->_cancellationSemaphore;
    self->_cancellationSemaphore = v11;

    v13 = [v8 UTF8String];
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create(v13, v14);
    cancellationQueue = self->_cancellationQueue;
    self->_cancellationQueue = v15;

    os_unfair_lock_unlock(&self->_cancellationResourcesLock);
  }

  self->_cancellationTriggered = 0;
  return 1;
}

- (BOOL)performInContext:(id)a3 error:(id *)a4
{
  v65 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 serialNumber];
  v8 = [(VNRequest *)self resolvedRevision];
  v9 = [(VNRequest *)self frameworkClass];
  v10 = [(objc_class *)v9 VNClassCode];
  kdebug_trace();
  v38 = mach_absolute_time();
  v63 = 0;
  v11 = [(VNRequest *)self cancellationTriggeredAndReturnError:&v63];
  v12 = v63;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    if (([(objc_class *)v9 supportsAnyRevision:v8]& 1) != 0)
    {
      v14 = [v6 cachedObservationsAcceptedByRequest:self];
      if (v14)
      {
        kdebug_trace();
        [(VNRequest *)self setResults:v14 assignedWithOriginatingSpecifier:0];
        v13 = 1;
      }

      else
      {
        v59 = 0;
        v60 = &v59;
        v61 = 0x2020000000;
        v62 = 0;
        v35 = [(VNRequest *)self hasCancellationHook];
        if (v35)
        {
          os_unfair_lock_lock(&self->_cancellationResourcesLock);
          v15 = self->_cancellationQueue;
          v16 = self->_cancellationSemaphore;
          os_unfair_lock_unlock(&self->_cancellationResourcesLock);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __36__VNRequest_performInContext_error___block_invoke;
          block[3] = &unk_1E77B2D00;
          v55 = &v59;
          v56 = v7;
          dsema = v16;
          v52 = dsema;
          v53 = self;
          v57 = v8;
          v58 = v10;
          v54 = v6;
          queue = v15;
          dispatch_async(v15, block);
        }

        else
        {
          dsema = 0;
          queue = 0;
        }

        *(v60 + 24) = 1;
        v50 = v12;
        v13 = [(VNRequest *)self internalPerformRevision:v8 inContext:v6 error:&v50];
        v17 = v50;

        v12 = v17;
        if (v13)
        {
          if (([objc_opt_class() setsTimeRangeOnResults] & 1) == 0)
          {
            v18 = [v6 imageBufferAndReturnError:0];
            v49 = 0;
            v48 = 0u;
            v46 = 0u;
            memset(v47, 0, sizeof(v47));
            v33 = v18;
            if (v18)
            {
              [v18 timingInfo];
            }

            else
            {
              v19 = *(MEMORY[0x1E6960CF0] + 48);
              v47[1] = *(MEMORY[0x1E6960CF0] + 32);
              v48 = v19;
              v49 = *(MEMORY[0x1E6960CF0] + 64);
              v20 = *(MEMORY[0x1E6960CF0] + 16);
              v46 = *MEMORY[0x1E6960CF0];
              v47[0] = v20;
            }

            memset(&v45, 0, sizeof(v45));
            if (BYTE4(v47[1]))
            {
              *&start.start.value = *(v47 + 8);
              start.start.epoch = *(&v47[1] + 1);
              *&duration.value = v46;
              duration.epoch = *&v47[0];
              CMTimeRangeMake(&v45, &start.start, &duration);
            }

            else
            {
              v21 = *(MEMORY[0x1E6960CA8] + 16);
              *&v45.start.value = *MEMORY[0x1E6960CA8];
              *&v45.start.epoch = v21;
              *&v45.duration.timescale = *(MEMORY[0x1E6960CA8] + 32);
            }

            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            v22 = [(VNRequest *)self results:v33];
            v23 = [v22 countByEnumeratingWithState:&v40 objects:v64 count:16];
            if (v23)
            {
              v24 = *v41;
              do
              {
                for (i = 0; i != v23; ++i)
                {
                  if (*v41 != v24)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v26 = *(*(&v40 + 1) + 8 * i);
                  start = v45;
                  [v26 setTimeRange:&start];
                }

                v23 = [v22 countByEnumeratingWithState:&v40 objects:v64 count:16];
              }

              while (v23);
            }
          }

          [v6 recordSequencedObservationsOfRequest:self];
        }

        else
        {
          [(VNRequest *)self setResults:0];
        }

        [v6 cacheObservationsOfRequest:self];
        *(v60 + 24) = 0;
        if (v35)
        {
          dispatch_semaphore_signal(dsema);
          dispatch_sync(queue, &__block_literal_global_5791);
        }

        _Block_object_dispose(&v59, 8);
        v14 = 0;
      }
    }

    else
    {
      [VNError errorForUnsupportedRevision:v8 ofRequest:self];
      v13 = 0;
      v12 = v14 = v12;
    }
  }

  self->_executionNanoseconds = mach_absolute_time() - v38;
  v27 = [(VNRequest *)self completionHandler];
  v28 = v27;
  if (v27)
  {
    if (v13)
    {
      v29 = 0;
    }

    else
    {
      v29 = v12;
    }

    (*(v27 + 16))(v27, self, v29);
  }

  if (a4)
  {
    v30 = v13;
  }

  else
  {
    v30 = 1;
  }

  if ((v30 & 1) == 0)
  {
    v31 = v12;
    *a4 = v12;
  }

  kdebug_trace();

  return v13;
}

void __36__VNRequest_performInContext_error___block_invoke(uint64_t a1)
{
  dispatch_semaphore_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    kdebug_trace();
    v2 = *(a1 + 40);
    v3 = *(a1 + 48);
    v13 = 0;
    v4 = [v2 internalCancelInContext:v3 error:&v13];
    v5 = v13;
    v12 = v5;
    if ((v4 & 1) == 0)
    {
      VNValidatedLog(4, @"Encountered error cancelling request: %@", v6, v7, v8, v9, v10, v11, v5);
    }
  }
}

- (void)performInContextAsync:(id)a3 asyncDispatchQueue:(id)a4 asyncDispatchGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [&stru_1F1976900 UTF8String];
  [v8 qosClass];
  objc_initWeak(&location, self);
  v11 = [v8 qosClass];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __73__VNRequest_performInContextAsync_asyncDispatchQueue_asyncDispatchGroup___block_invoke;
  v18 = &unk_1E77B2CD8;
  objc_copyWeak(&v21, &location);
  v12 = v8;
  v19 = v12;
  v13 = v9;
  v20 = v13;
  v14 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v11, 0, &v15);
  [v13 dispatchGroupAsyncByPreservingQueueCapacity:v10 block:{v14, v15, v16, v17, v18}];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __73__VNRequest_performInContextAsync_asyncDispatchQueue_asyncDispatchGroup___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = objc_opt_class();
    [WeakRetained resolvedRevision];
    VNValidatedLog(1, @"performInContextAsync: start processing: %@; revision: %lu", v4, v5, v6, v7, v8, v9, v3);
    [&stru_1F1976900 UTF8String];
    [a1[4] qosClass];
    v10 = a1[4];
    v20 = 0;
    v11 = [WeakRetained performInContext:v10 error:&v20];
    v12 = v20;
    [WeakRetained setAsyncStatus:v11 error:v12];
    v13 = objc_opt_class();
    [WeakRetained resolvedRevision];
    VNValidatedLog(1, @"performInContextAsync: finish processing: %@; revision: %lu", v14, v15, v16, v17, v18, v19, v13);
    [a1[5] dispatchReportBlockCompletion];
  }

  else
  {
    v12 = [VNError errorForInternalErrorWithLocalizedDescription:@"Currently executed Request should not be nil"];
    [0 setAsyncStatus:0 error:v12];
  }
}

- (void)applyConfigurationOfRequest:(id)a3
{
  v4 = a3;
  if (v4 != self)
  {
    self->_revision = [(VNRequest *)v4 applicableRevisionForDependentRequest:self];
    [(VNRequestConfiguration *)self->_configuration setResolvedRevision:0];
    [(VNRequest *)self applyCompatibleComputeStageDeviceAssignmentsOfRequest:v4];
    [(VNRequestConfiguration *)self->_configuration setDetectionLevel:[(VNRequest *)v4 detectionLevel]];
    [(VNRequestConfiguration *)self->_configuration setMetalContextPriority:[(VNRequest *)v4 metalContextPriority]];
    [(VNRequestConfiguration *)self->_configuration setModelExecutionPriority:[(VNRequest *)v4 modelExecutionPriority]];
    [(VNRequestConfiguration *)self->_configuration setPreferBackgroundProcessing:[(VNRequest *)v4 preferBackgroundProcessing]];
    [(VNRequestConfiguration *)self->_configuration setModelFileBackingStore:[(VNRequest *)v4 modelFileBackingStore]];
    [(VNRequestConfiguration *)self->_configuration setMaximumProcessingDimensionOnTheLongSide:[(VNRequest *)v4 maximumProcessingDimensionOnTheLongSide]];
    [(VNRequestConfiguration *)self->_configuration setMemoryPoolId:[(VNRequest *)v4 ioSurfaceMemoryPoolId]];
  }
}

- (void)applyCompatibleComputeStageDeviceAssignmentsOfRequest:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = [a3 configuration];
  v3 = [v17 processingDevice];
  if (v3)
  {
    [(VNRequestConfiguration *)self->_configuration setProcessingDevice:v3];
  }

  else
  {
    v15 = 0;
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = [v17 computeStageDeviceAssignments];
    if ([v4 count])
    {
      [(VNRequest *)self supportedComputeStageDevicesAndReturnError:0];
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v5 = v20 = 0u;
      v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v6)
      {
        v7 = *v20;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v20 != v7)
            {
              objc_enumerationMutation(v5);
            }

            v9 = *(*(&v19 + 1) + 8 * i);
            v10 = [v4 objectForKeyedSubscript:{v9, v15}];
            if (v10)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                configuration = self->_configuration;
                v14 = [v10 processingDevice];
                [(VNRequestConfiguration *)configuration setProcessingDevice:v14];

                goto LABEL_19;
              }

              v11 = [v5 objectForKeyedSubscript:v9];
              v12 = [VNComputeDeviceUtilities computeDeviceOfComputeDevices:v11 mostCompatibleWithComputeDevice:v10 options:0];

              if (v12)
              {
                [v18 setObject:v12 forKeyedSubscript:v9];
              }
            }
          }

          v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }
    }

    [(VNRequestConfiguration *)self->_configuration setComputeStageDeviceAssignments:v18, v15];
LABEL_19:

    v3 = v15;
  }
}

- (void)copyStateOfRequest:(id)a3
{
  v11 = a3;
  [(VNRequest *)self applyConfigurationOfRequest:?];
  -[VNRequest _setResolvedRevision:](self, "_setResolvedRevision:", [v11 revision]);
  v4 = [v11 results];
  v5 = [v4 copy];
  results = self->_results;
  self->_results = v5;

  warningRecorder = self->_warningRecorder;
  if (!warningRecorder)
  {
    v8 = objc_alloc_init(VNWarningRecorder);
    v9 = self->_warningRecorder;
    self->_warningRecorder = v8;

    warningRecorder = self->_warningRecorder;
  }

  v10 = [v11 warnings];
  [(VNWarningRecorder *)warningRecorder setWarnings:v10];
}

- (void)setAsyncStatus:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v8 = a4;
  os_unfair_lock_lock(&self->_asyncStatusLock);
  v6 = [[VNAsyncStatus alloc] initWithStatus:v4 error:v8];
  asyncStatus = self->_asyncStatus;
  self->_asyncStatus = v6;

  os_unfair_lock_unlock(&self->_asyncStatusLock);
}

- (VNAsyncStatus)asyncStatus
{
  os_unfair_lock_lock(&self->_asyncStatusLock);
  v3 = [(VNAsyncStatus *)self->_asyncStatus copy];
  os_unfair_lock_unlock(&self->_asyncStatusLock);

  return v3;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VNRequest modelFileBackingStore](self, "modelFileBackingStore")}];
  [v7 setObject:v8 forKeyedSubscript:@"VNDetectorInitOption_ModelBackingStore"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[VNRequest ioSurfaceMemoryPoolId](self, "ioSurfaceMemoryPoolId")}];
  [v7 setObject:v9 forKeyedSubscript:@"VNDetectorInitOption_MemoryPoolId"];

  v10 = [VNRequestSpecifier specifierForRequestClass:[(VNRequest *)self frameworkClass] revision:a3 error:0];
  [v7 setObject:v10 forKeyedSubscript:@"VNDetectorOption_OriginatingRequestSpecifier"];
  v11 = [(VNRequest *)self resolvedComputeStageDeviceAssignments];
  [v7 setObject:v11 forKeyedSubscript:@"VNDetectorOption_ComputeStageDeviceAssignments"];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNRequest preferBackgroundProcessing](self, "preferBackgroundProcessing")}];
  [v7 setObject:v12 forKeyedSubscript:@"VNDetectorOption_PreferBackgroundProcessing"];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VNRequest modelExecutionPriority](self, "modelExecutionPriority")}];
  [v7 setObject:v13 forKeyedSubscript:@"VNDetectorOption_EspressoPlanPriority"];

  if (v6)
  {
    [v7 setObject:v6 forKeyedSubscript:@"VNDetectorProcessOption_Session"];
  }

  v14 = [(VNRequest *)self cancellerAndReturnError:0];
  [v7 setObject:v14 forKeyedSubscript:@"VNDetectorProcessOption_Canceller"];

  return v7;
}

- (id)newDefaultDetectorOptionsForSession:(id)a3
{
  v4 = a3;
  v5 = [(VNRequest *)self newDefaultDetectorOptionsForRequestRevision:[(VNRequest *)self resolvedRevision] session:v4];

  return v5;
}

- (id)applicableDetectorAndOptions:(id *)a3 forRevision:(unint64_t)a4 loadedInSession:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = [(VNRequest *)self applicableDetectorTypeForRevision:a4 error:a6];
  if (v11)
  {
    v12 = [(VNRequest *)self newDefaultDetectorOptionsForRequestRevision:a4 session:v10];
    v13 = [v10 detectorOfType:v11 configuredWithOptions:v12 error:a6];
    if (v13)
    {
      if (a3)
      {
        v14 = v12;
        *a3 = v12;
      }

      v15 = v13;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (Class)applicableDetectorClassAndOptions:(id *)a3 forRevision:(unint64_t)a4 error:(id *)a5
{
  v9 = [(VNRequest *)self applicableDetectorTypeForRevision:a4 error:a5];
  if (v9)
  {
    v10 = [(VNRequest *)self newDefaultDetectorOptionsForRequestRevision:a4 session:0];
    v16 = v10;
    v11 = [VNDetector detectorClassAndConfigurationOptions:&v16 forDetectorType:v9 options:v10 error:a5];
    v12 = v16;

    if (v11)
    {
      if (a3)
      {
        v13 = v12;
        *a3 = v12;
      }

      v14 = v11;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)newDuplicateInstance
{
  v3 = objc_alloc(objc_opt_class());
  completionHandler = self->_completionHandler;

  return [v3 initWithCompletionHandler:completionHandler];
}

- (VNRequestSpecifier)specifier
{
  v3 = [(VNRequest *)self frameworkClass];
  v4 = [(VNRequest *)self resolvedRevision];

  return [VNRequestSpecifier specifierForRequestClass:v3 revision:v4 error:0];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(VNRequest *)self newDuplicateInstance];
  v5 = v4;
  if (v4)
  {
    [v4 copyStateOfRequest:self];
  }

  return v5;
}

- (BOOL)warmUpApplicableDetectorInSession:(id)a3 error:(id *)a4
{
  v6 = a3;
  v21 = 0;
  v7 = [(VNRequest *)self applicableDetectorAndOptions:&v21 forRevision:[(VNRequest *)self resolvedRevision] loadedInSession:v6 error:a4];
  v8 = v21;
  if (v7)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __53__VNRequest_warmUpApplicableDetectorInSession_error___block_invoke;
    v17 = &unk_1E77B4588;
    v9 = v7;
    v18 = v9;
    v19 = v6;
    v20 = v8;
    v10 = _Block_copy(&v14);
    v11 = objc_opt_class();
    v12 = [v11 runSuccessReportingBlockSynchronously:v10 detector:v9 qosClass:qos_class_self() error:{a4, v14, v15, v16, v17}];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)warmUpSession:(id)a3 error:(id *)a4
{
  v7 = a3;
  if ([(VisionCoreRuntimeUtilities *)VNRuntimeUtilities item:self overridesSelector:a2])
  {
    v8 = 1;
  }

  else
  {
    v9 = [(VNRequest *)self applicableDetectorTypeForRevision:[(VNRequest *)self resolvedRevision] error:a4];
    v10 = v9;
    if (v9)
    {
      if ([v9 isEqualToString:&stru_1F1976900])
      {
        v11 = [objc_opt_class() warmUpSession:v7 error:a4];
      }

      else
      {
        v11 = [(VNRequest *)self warmUpApplicableDetectorInSession:v7 error:a4];
      }

      v8 = v11;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (VNRequest)initWithCompletionHandler:(VNRequestCompletionHandler)completionHandler
{
  v4 = completionHandler;
  v16.receiver = self;
  v16.super_class = VNRequest;
  v5 = [(VNRequest *)&v16 init];
  v6 = v5;
  if (v5)
  {
    v5->_serialNumber = atomic_fetch_add_explicit(&[VNRequest initWithCompletionHandler:]::ourNextSerialNumber, 1uLL, memory_order_relaxed) + 1;
    v5->_cancellationResourcesLock._os_unfair_lock_opaque = 0;
    v7 = objc_opt_class();
    v8 = [v7 newConfigurationInstance];
    configuration = v6->_configuration;
    v6->_configuration = v8;

    v10 = _Block_copy(v4);
    v11 = v6->_completionHandler;
    v6->_completionHandler = v10;

    v6->_revision = [v7 defaultRevision];
    v12 = objc_alloc_init(VNAsyncStatus);
    asyncStatus = v6->_asyncStatus;
    v6->_asyncStatus = v12;

    v6->_asyncStatusLock._os_unfair_lock_opaque = 0;
    v14 = v6;
  }

  return v6;
}

- (id)sequencedRequestPreviousObservationsKey
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(VNRequest *)self resolvedRevision];
  v7 = [(VNRequest *)self preferredMetalContext];
  v8 = [v7 name];
  v9 = [v3 initWithFormat:@"%@-%lu:MTL=%@:Det=%lu:MDm=%lu", v5, v6, v8, -[VNRequest detectionLevel](self, "detectionLevel"), -[VNRequest maximumProcessingDimensionOnTheLongSide](self, "maximumProcessingDimensionOnTheLongSide")];

  return v9;
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(VNRequest *)self frameworkClass];
  if (v5 == [v4 requestClass])
  {
    v7 = [(VNRequest *)self resolvedRevision];
    v8 = [v4 resolvedRevision];
    if (v7 == v8)
    {
      v6 = 1;
    }

    else
    {
      v6 = [(objc_class *)v5 revision:v7 mayAcceptResultsProducedByRevision:v8];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (VNControlledCapacityTasksQueue)requestTasksQueue
{
  v2 = +[VNRequestAsyncTasksQueueCache sharedCache];
  v3 = [v2 queueWithUniqueAppendix:&stru_1F1976900];

  return v3;
}

+ (unint64_t)applicableRevisionForDependentRequestOfClass:(Class)a3 beingPerformedByRevision:(unint64_t)a4
{
  if (a1 == a3)
  {
    return a4;
  }

  v7 = [a1 dependentRequestMappingTable];
  if (v7)
  {
    v8 = *v7;
    if (*v7)
    {
      while (v8 != a4 || *(v7 + 8) != a3)
      {
        v9 = *(v7 + 24);
        v7 += 24;
        v8 = v9;
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      return *(v7 + 16);
    }
  }

LABEL_7:
  v10 = [(objc_class *)a3 defaultRevision];
  v11 = [a1 dependentRequestCompatibility];
  if (v11)
  {
    v12 = *v11;
    if (*v11)
    {
      v13 = 0;
      v14 = v11 + 2;
      do
      {
        if (v12 == a4 && *(v14 - 1) == a3)
        {
          v15 = *v14;
          if (*v14 < 0xDECAF000)
          {
            if (v15 == v10)
            {
              return v10;
            }

            if (v15 > v13)
            {
              v13 = *v14;
            }
          }

          else
          {
            v16 = objc_alloc(MEMORY[0x1E696AEC0]);
            v17 = VNMethodSignatureStringForObjectAndSelector(a1, sel_dependentRequestCompatibility);
            v18 = VNRequestRevisionString(a1, *(v14 - 2));
            v19 = VNRequestRevisionString(*(v14 - 1), *v14);
            v20 = [v16 initWithFormat:@"%@ contains an entry for %@ that is dependent on a private revision %@", v17, v18, v19];

            [VNError VNAssert:0 log:v20];
          }
        }

        v12 = v14[1];
        v14 += 3;
      }

      while (v12);
      if (v13)
      {
        return v13;
      }
    }
  }

  return [(objc_class *)a3 resolvedRevisionForRevision:0];
}

+ (unint64_t)resolvedRevisionForRevision:(unint64_t)a3
{
  if (!a3)
  {
    v3 = [a1 publicRevisionsSet];
    v4 = [v3 lastIndex];

    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }

  return a3;
}

+ (NSIndexSet)allSupportedRevisions
{
  v3 = [a1 supportedRevisions];
  v4 = [v3 mutableCopy];

  v5 = [a1 supportedPrivateRevisions];
  [v4 addIndexes:v5];

  return v4;
}

+ (unint64_t)firstSupportedRevisionInOrderedRevisionList:(unint64_t)a3
{
  v3 = a3;
  if (a3)
  {
    v9 = &v10;
    v5 = objc_autoreleasePoolPush();
    v6 = [a1 allSupportedRevisions];
    do
    {
      if ([v6 containsIndex:v3])
      {
        break;
      }

      v7 = v9++;
      v3 = *v7;
    }

    while (*v7);

    objc_autoreleasePoolPop(v5);
  }

  return v3;
}

+ (BOOL)supportsAnyRevision:(unint64_t)a3
{
  if ([a1 supportsRevision:?])
  {
    return 1;
  }

  return [a1 supportsPrivateRevision:a3];
}

+ (BOOL)supportsPrivateRevision:(unint64_t)a3
{
  v4 = [a1 supportedPrivateRevisions];
  LOBYTE(a3) = [v4 containsIndex:a3];

  return a3;
}

+ (BOOL)supportsRevision:(unint64_t)a3
{
  v4 = [a1 supportedRevisions];
  LOBYTE(a3) = [v4 containsIndex:a3];

  return a3;
}

+ (NSUInteger)currentRevision
{
  v3 = [a1 supportedRevisions];
  v4 = [v3 lastIndex];

  if (v4 == 0x7FFFFFFFFFFFFFFFLL || !v4)
  {
    v4 = [a1 defaultRevision];
    if (!v4)
    {
      v5 = objc_alloc(MEMORY[0x1E696AEC0]);
      v6 = NSStringFromClass([a1 frameworkClass]);
      v7 = [v5 initWithFormat:@"%@ must provide at least one supported revision", v6];

      [VNError VNAssert:0 log:v7];
      return 0;
    }
  }

  return v4;
}

+ (NSIndexSet)supportedRevisions
{
  v3 = [a1 publicRevisionsSet];
  if ([a1 supportedRevisionsAreFilteredBasedOnAvailableComputeDevices])
  {
    v4 = [a1 _runtimeAvailableRevisionsOfRevisions:v3];

    v3 = v4;
  }

  return v3;
}

+ (id)publicRevisionsSet
{
  v2 = [a1 frameworkClass];
  os_unfair_lock_lock(&+[VNRequest publicRevisionsSet]::ourLock);
  v3 = +[VNRequest publicRevisionsSet]::ourRequestClassToSuportedRevisionsMapTable;
  if (!+[VNRequest publicRevisionsSet]::ourRequestClassToSuportedRevisionsMapTable)
  {
    v4 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v5 = +[VNRequest publicRevisionsSet]::ourRequestClassToSuportedRevisionsMapTable;
    +[VNRequest publicRevisionsSet]::ourRequestClassToSuportedRevisionsMapTable = v4;

    v3 = +[VNRequest publicRevisionsSet]::ourRequestClassToSuportedRevisionsMapTable;
  }

  v6 = [v3 objectForKey:v2];
  if (!v6)
  {
    v7 = [objc_opt_self() revisionAvailability];
    if (v7)
    {
      v8 = objc_alloc_init(MEMORY[0x1E696AD50]);
      v9 = +[VNRuntimeUtilities runTimeVersion];
      if (*v7)
      {
        v10 = v9;
        v11 = v7 + 20;
        do
        {
          if (*(v11 - 1) <= v10 && (!*v11 || *v11 >= v10))
          {
            [v8 addIndex:?];
          }

          v13 = *(v11 + 20);
          v11 += 40;
        }

        while (v13);
      }
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:1];
    }

    v6 = [v8 copy];

    [+[VNRequest publicRevisionsSet]::ourRequestClassToSuportedRevisionsMapTable setObject:v6 forKey:v2];
  }

  os_unfair_lock_unlock(&+[VNRequest publicRevisionsSet]::ourLock);

  return v6;
}

+ (unint64_t)_defaultRevisionForBuildVersion:(int)a3
{
  if (a3 == -1)
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v6 = [a1 revisionAvailability];
  if (v6 && (v7 = *v6) != 0)
  {
    v8 = v6 + 20;
    while (1)
    {
      v9 = *(v8 - 1);
      if (v9 == a3)
      {
        break;
      }

      if (v9 <= a3)
      {
        if (*v8)
        {
          v10 = *v8 < a3;
        }

        else
        {
          v10 = 0;
        }

        if (!v10)
        {
          [v5 addIndex:v7];
        }
      }

      v7 = *(v8 + 20);
      v8 += 40;
      if (!v7)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    if ([v5 count])
    {
      v7 = [v5 lastIndex];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

+ (BOOL)getOptionalArray:(id *)a3 forKey:(id)a4 inOptions:(id)a5 withElementsOfClass:(Class)a6 error:(id *)a7
{
  v32 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v30 = 0;
  v13 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v30, v12, v11, 0, v13, a7);
  v15 = v30;
  v16 = v15;
  if (ObjectFromOptionsDictionary)
  {
    if (a6)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v17 = v15;
      v18 = [v17 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v18)
      {
        v19 = *v27;
        while (2)
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v27 != v19)
            {
              objc_enumerationMutation(v17);
            }

            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (a7)
              {
                v22 = objc_alloc(MEMORY[0x1E696AEC0]);
                v23 = NSStringFromClass(a6);
                v24 = [v22 initWithFormat:@"All elements in the %@ array must be of class %@ (%@)", v11, v23, v17];

                *a7 = [VNError errorWithCode:5 message:v24];
              }

              goto LABEL_18;
            }
          }

          v18 = [v17 countByEnumeratingWithState:&v26 objects:v31 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }
    }

    if (a3)
    {
      *a3 = [v16 copy];
    }

    v21 = 1;
  }

  else
  {
LABEL_18:
    v21 = 0;
  }

  return v21;
}

+ (BOOL)getFloatValue:(float *)a3 forKey:(id)a4 inOptions:(id)a5 withDefaultValue:(float)a6 error:(id *)a7
{
  v11 = a4;
  v12 = a5;
  v20 = 0;
  v13 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v20, v12, v11, 0, v13, a7);
  v15 = v20;
  v16 = v15;
  if (a3)
  {
    v17 = ObjectFromOptionsDictionary;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    if (v15)
    {
      [v15 floatValue];
      a6 = v18;
    }

    *a3 = a6;
  }

  return ObjectFromOptionsDictionary;
}

+ (BOOL)getFloatValue:(float *)a3 forKey:(id)a4 inOptions:(id)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a5;
  v18 = 0;
  v11 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v18, v10, v9, 1, v11, a6);
  v13 = v18;
  v14 = v13;
  if (a3)
  {
    v15 = ObjectFromOptionsDictionary;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    [v13 floatValue];
    *a3 = v16;
  }

  return ObjectFromOptionsDictionary;
}

+ (BOOL)getDoubleValue:(double *)a3 forKey:(id)a4 inOptions:(id)a5 withDefaultValue:(double)a6 error:(id *)a7
{
  v11 = a4;
  v12 = a5;
  v20 = 0;
  v13 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v20, v12, v11, 0, v13, a7);
  v15 = v20;
  v16 = v15;
  if (a3)
  {
    v17 = ObjectFromOptionsDictionary;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    if (v15)
    {
      [v15 doubleValue];
      a6 = v18;
    }

    *a3 = a6;
  }

  return ObjectFromOptionsDictionary;
}

+ (BOOL)getDoubleValue:(double *)a3 forKey:(id)a4 inOptions:(id)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a5;
  v18 = 0;
  v11 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v18, v10, v9, 1, v11, a6);
  v13 = v18;
  v14 = v13;
  if (a3)
  {
    v15 = ObjectFromOptionsDictionary;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    [v13 doubleValue];
    *a3 = v16;
  }

  return ObjectFromOptionsDictionary;
}

+ (BOOL)revision:(unint64_t)a3 mayAcceptResultsProducedByRevision:(unint64_t)a4
{
  if (a3 == a4)
  {
    return 1;
  }

  v8 = [VNRequestSpecifier specifierForRequestClass:a1 revision:a3 error:0];
  v9 = [VNRequestSpecifier specifierForRequestClass:a1 revision:a4 error:0];
  v10 = [v8 hasModelEquivalencyToRequestSpecifier:v9];
  v12 = a3 < 0xDECAF000 && a4 < 0xDECAF000;
  v4 = (v10 & 1) != 0 || v12;

  return v4;
}

+ (unsigned)VNClassCode
{
  v3 = 0;
  [VNClassRegistrar getClassCode:&v3 forClass:a1 error:0];
  return v3;
}

+ (id)_runtimeAvailableRevisionsOfRevisions:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = objc_alloc_init(_VNRequestRevisionsIntrospectionInstanceCreator);
    v6 = [a1 frameworkClass];
    v17 = 0;
    v7 = [(VNRequestInstanceCreator *)v5 newRequestInstanceOfClass:v6 withCompletionHandler:0 revision:0 error:&v17];
    v8 = v17;
    if (v7)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __51__VNRequest__runtimeAvailableRevisionsOfRevisions___block_invoke;
      v15[3] = &unk_1E77B2CB0;
      v16 = v7;
      v9 = [v4 indexesPassingTest:v15];
    }

    else
    {
      v10 = objc_alloc(MEMORY[0x1E696AEC0]);
      v11 = NSStringFromClass(v6);
      v12 = [v8 localizedDescription];
      v13 = [v10 initWithFormat:@"Failed to create instance of %@ - %@", v11, v12];
      [VNError VNAssert:0 log:v13];

      v9 = [v4 copy];
    }
  }

  else
  {
    v9 = [v4 copy];
  }

  return v9;
}

BOOL __51__VNRequest__runtimeAvailableRevisionsOfRevisions___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _setResolvedRevision:a2];
  v3 = [*(a1 + 32) supportedComputeStageDevicesAndReturnError:0];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"VNComputeStageMain"];
    v6 = [v5 count] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    ourVisionFrameworkLinkTimeVersion = +[VNFrameworkManager linktimeVersion];
  }
}

- (id)utilizedResourcesWithError:(id *)a3
{
  if (a3)
  {
    v4 = [(VNRequest *)self specifier];
    *a3 = [VNError errorForInvalidOperationForRequestSpecifier:v4];
  }

  return 0;
}

- (id)VNImageProcessingSessionPrintAndReturnError:(id *)a3
{
  v5 = [(VNRequest *)self VNImageProcessingSessionPrintKeyPath];
  if (v5)
  {
    v6 = [(VNRequest *)self results];
    if ([v6 count] == 1)
    {
      v7 = [v6 firstObject];
      v8 = [v7 valueForKeyPath:v5];
    }

    else
    {
      if (!a3)
      {
        v8 = 0;
        goto LABEL_10;
      }

      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ did not generate a single print", self];
      [VNError errorForInvalidOptionWithLocalizedDescription:v7];
      *a3 = v8 = 0;
    }
  }

  else
  {
    if (!a3)
    {
      v8 = 0;
      goto LABEL_11;
    }

    v6 = [(VNRequest *)self specifier];
    [VNError errorForInvalidOperationForRequestSpecifier:v6];
    *a3 = v8 = 0;
  }

LABEL_10:

LABEL_11:

  return v8;
}

- (CGRect)VNImageProcessingSessionRegionOfInterest
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 1.0;
  v5 = 1.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

+ (id)createVNEntityIdentificationModelEntryPrintForRevision:(unint64_t)a3 fromDescriptorData:(const void *)a4 length:(unint64_t)a5 elementCount:(unint64_t)a6 error:(id *)a7
{
  if (a7)
  {
    *a7 = [VNError errorForUnimplementedMethod:a2 ofObject:a1, a5, a6];
  }

  return 0;
}

- (id)VNCoreMLTransformerDetectionprintAndReturnError:(id *)a3
{
  if (a3)
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = [(VNRequest *)self specifier];
    v7 = [v5 initWithFormat:@"%@ does not produce detectionprint data", v6];

    *a3 = [VNError errorForDataUnavailableWithLocalizedDescription:v7];
  }

  return 0;
}

- (id)VNCoreMLTransformerSceneprintsAndReturnError:(id *)a3
{
  if (a3)
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = [(VNRequest *)self specifier];
    v7 = [v5 initWithFormat:@"%@ does not produce sceneprint data", v6];

    *a3 = [VNError errorForDataUnavailableWithLocalizedDescription:v7];
  }

  return 0;
}

@end