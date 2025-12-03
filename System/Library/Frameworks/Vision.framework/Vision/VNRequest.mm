@interface VNRequest
+ (BOOL)getDoubleValue:(double *)value forKey:(id)key inOptions:(id)options error:(id *)error;
+ (BOOL)getDoubleValue:(double *)value forKey:(id)key inOptions:(id)options withDefaultValue:(double)defaultValue error:(id *)error;
+ (BOOL)getFloatValue:(float *)value forKey:(id)key inOptions:(id)options error:(id *)error;
+ (BOOL)getFloatValue:(float *)value forKey:(id)key inOptions:(id)options withDefaultValue:(float)defaultValue error:(id *)error;
+ (BOOL)getOptionalArray:(id *)array forKey:(id)key inOptions:(id)options withElementsOfClass:(Class)class error:(id *)error;
+ (BOOL)revision:(unint64_t)revision mayAcceptResultsProducedByRevision:(unint64_t)byRevision;
+ (BOOL)supportsAnyRevision:(unint64_t)revision;
+ (BOOL)supportsPrivateRevision:(unint64_t)revision;
+ (BOOL)supportsRevision:(unint64_t)revision;
+ (NSIndexSet)allSupportedRevisions;
+ (NSIndexSet)supportedPrivateRevisions;
+ (NSIndexSet)supportedRevisions;
+ (NSUInteger)currentRevision;
+ (NSUInteger)defaultRevision;
+ (id)_runtimeAvailableRevisionsOfRevisions:(id)revisions;
+ (id)createVNEntityIdentificationModelEntryPrintForRevision:(unint64_t)revision fromDescriptorData:(const void *)data length:(unint64_t)length elementCount:(unint64_t)count error:(id *)error;
+ (id)newConfigurationInstance;
+ (id)publicRevisionsSet;
+ (unint64_t)_defaultRevisionForBuildVersion:(int)version;
+ (unint64_t)applicableRevisionForDependentRequestOfClass:(Class)class beingPerformedByRevision:(unint64_t)revision;
+ (unint64_t)firstSupportedRevisionInOrderedRevisionList:(unint64_t)list;
+ (unint64_t)resolvedRevisionForRevision:(unint64_t)revision;
+ (unsigned)VNClassCode;
+ (void)initialize;
- (BOOL)cancellationTriggeredAndReturnError:(id *)error;
- (BOOL)internalCancelInContext:(id)context error:(id *)error;
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (BOOL)performInContext:(id)context error:(id *)error;
- (BOOL)setRevision:(unint64_t)revision error:(id *)error;
- (BOOL)usesCPUOnly;
- (BOOL)validateConfigurationAndReturnError:(id *)error;
- (BOOL)validateImageBuffer:(id)buffer ofNonZeroWidth:(unint64_t *)width andHeight:(unint64_t *)height error:(id *)error;
- (BOOL)warmUpApplicableDetectorInSession:(id)session error:(id *)error;
- (BOOL)warmUpSession:(id)session error:(id *)error;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration;
- (CGRect)VNImageProcessingSessionRegionOfInterest;
- (Class)applicableDetectorClassAndOptions:(id *)options forRevision:(unint64_t)revision error:(id *)error;
- (Class)frameworkClass;
- (MTLDevice)preferredMetalContext;
- (NSDictionary)supportedComputeStageDevicesAndReturnError:(NSError *)error;
- (NSString)description;
- (VNAsyncStatus)asyncStatus;
- (VNControlledCapacityTasksQueue)requestTasksQueue;
- (VNRequest)initWithCompletionHandler:(VNRequestCompletionHandler)completionHandler;
- (VNRequestSpecifier)specifier;
- (id)VNCoreMLTransformerDetectionprintAndReturnError:(id *)error;
- (id)VNCoreMLTransformerSceneprintsAndReturnError:(id *)error;
- (id)VNImageProcessingSessionPrintAndReturnError:(id *)error;
- (id)_alignFacesInContext:(id)context faces:(id)faces qosClass:(unsigned int)class options:(id)options error:(id *)error;
- (id)applicableDetectorAndOptions:(id *)options forRevision:(unint64_t)revision loadedInSession:(id)session error:(id *)error;
- (id)cancellerAndReturnError:(id *)error;
- (id)computeDeviceForComputeStage:(VNComputeStage)computeStage;
- (id)copyWithZone:(_NSZone *)zone;
- (id)detectFaceLandmarksInContext:(id)context faces:(id)faces error:(id *)error;
- (id)detectFacesInContext:(id)context error:(id *)error;
- (id)detectorProgressHandler;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session;
- (id)newDefaultDetectorOptionsForSession:(id)session;
- (id)newDuplicateInstance;
- (id)processFaceObservations:(id)observations revision:(unint64_t)revision regionOfInterest:(CGRect)interest detectorType:(id)type detectorOptions:(id)options shouldAlignFaceBBox:(id)box shouldRunDetectorBlock:(id)block context:(id)self0 error:(id *)self1;
- (id)sequencedRequestPreviousObservationsKey;
- (id)utilizedResourcesWithError:(id *)error;
- (id)valueForWarning:(id)warning;
- (id)warnings;
- (unint64_t)applicableRevisionForDependentRequest:(id)request;
- (unint64_t)resolvedRevision;
- (void)_setResolvedRevision:(unint64_t)revision;
- (void)applyCompatibleComputeStageDeviceAssignmentsOfRequest:(id)request;
- (void)applyConfigurationOfRequest:(id)request;
- (void)cancel;
- (void)categorizeFaceObservations:(id)observations shouldRunDetectorBlock:(id)block facesThatNeedNoProcessing:(id)processing facesThatNeedProcessing:(id)needProcessing facesThatNeed2DLandmarks:(id)landmarks;
- (void)copyStateOfRequest:(id)request;
- (void)performInContextAsync:(id)async asyncDispatchQueue:(id)queue asyncDispatchGroup:(id)group;
- (void)recordWarning:(id)warning value:(id)value;
- (void)setAsyncStatus:(BOOL)status error:(id)error;
- (void)setPreferredMetalContext:(id)context;
- (void)setProcessedResults:(id)results;
- (void)setProcessingDevice:(id)device;
- (void)setResults:(id)results;
- (void)setResults:(id)results assignedWithOriginatingSpecifier:(BOOL)specifier;
- (void)setRevision:(NSUInteger)revision;
- (void)setUsesCPUOnly:(BOOL)usesCPUOnly;
@end

@implementation VNRequest

+ (id)newConfigurationInstance
{
  v3 = objc_alloc([self configurationClass]);
  frameworkClass = [self frameworkClass];

  return [v3 initWithRequestClass:frameworkClass];
}

- (unint64_t)resolvedRevision
{
  resolvedRevision = [(VNRequestConfiguration *)self->_configuration resolvedRevision];
  if (!resolvedRevision)
  {
    resolvedRevision = [objc_opt_class() resolvedRevisionForRevision:{-[VNRequest revision](self, "revision")}];
    [(VNRequestConfiguration *)self->_configuration setResolvedRevision:resolvedRevision];
  }

  return resolvedRevision;
}

+ (NSUInteger)defaultRevision
{
  v3 = [self _defaultRevisionForBuildVersion:ourVisionFrameworkLinkTimeVersion];

  return [self resolvedRevisionForRevision:v3];
}

- (Class)frameworkClass
{
  v2 = objc_opt_class();

  return VNRequestClassFromClientSubclass(v2);
}

+ (NSIndexSet)supportedPrivateRevisions
{
  privateRevisionsSet = [self privateRevisionsSet];
  if ([self supportedRevisionsAreFilteredBasedOnAvailableComputeDevices])
  {
    v4 = [self _runtimeAvailableRevisionsOfRevisions:privateRevisionsSet];

    privateRevisionsSet = v4;
  }

  return privateRevisionsSet;
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
    selfCopy = self;
    progressHandler = [(VNRequest *)selfCopy progressHandler];
    if (progressHandler)
    {
      objc_initWeak(&location, selfCopy);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __36__VNRequest_detectorProgressHandler__block_invoke;
      aBlock[3] = &unk_1E77B2DF0;
      objc_copyWeak(&v10, &location);
      v9 = progressHandler;
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

- (void)categorizeFaceObservations:(id)observations shouldRunDetectorBlock:(id)block facesThatNeedNoProcessing:(id)processing facesThatNeedProcessing:(id)needProcessing facesThatNeed2DLandmarks:(id)landmarks
{
  v30 = *MEMORY[0x1E69E9840];
  observationsCopy = observations;
  blockCopy = block;
  processingCopy = processing;
  needProcessingCopy = needProcessing;
  landmarksCopy = landmarks;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = observationsCopy;
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
        v20 = blockCopy[2](blockCopy, v19);
        v21 = processingCopy;
        if (v20)
        {
          landmarkPoints = [v19 landmarkPoints];
          v23 = landmarkPoints == 0;

          if (v23)
          {
            v21 = landmarksCopy;
          }

          else
          {
            v21 = needProcessingCopy;
          }
        }

        [v21 addObject:v19];
      }

      v16 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v16);
  }
}

- (id)detectFaceLandmarksInContext:(id)context faces:(id)faces error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  facesCopy = faces;
  v10 = objc_alloc_init(VNDetectFaceLandmarksRequest);
  [(VNDetectFaceLandmarksRequest *)v10 applyConfigurationOfRequest:self];
  [(VNDetectFaceLandmarksRequest *)v10 setConstellation:1];
  v11 = [contextCopy requestPerformerAndReturnError:error];
  if (v11 && (-[VNImageBasedRequest setInputFaceObservations:](v10, "setInputFaceObservations:", facesCopy), v16[0] = v10, [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "performDependentRequests:onBehalfOfRequest:inContext:error:", v12, self, contextCopy, error), v12, (v13 & 1) != 0))
  {
    results = [(VNRequest *)v10 results];
  }

  else
  {
    results = 0;
  }

  return results;
}

- (id)_alignFacesInContext:(id)context faces:(id)faces qosClass:(unsigned int)class options:(id)options error:(id *)error
{
  v9 = *&class;
  v28[1] = *MEMORY[0x1E69E9840];
  facesCopy = faces;
  optionsCopy = options;
  session = [context session];
  v13 = optionsCopy;
  v14 = [VNFaceBBoxAligner supportedComputeStageDevicesForOptions:v13 error:error];
  v15 = [v13 mutableCopy];
  v27 = @"VNComputeStageMain";
  v16 = [v14 objectForKeyedSubscript:?];
  firstObject = [v16 firstObject];
  v28[0] = firstObject;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  [v15 setObject:v18 forKeyedSubscript:@"VNDetectorOption_ComputeStageDeviceAssignments"];

  v19 = [v15 copy];
  v20 = [session detectorOfType:@"VNFaceBoxAlignerType" configuredWithOptions:v19 error:error];

  if (v20)
  {
    [v13 setObject:facesCopy forKeyedSubscript:@"VNDetectorProcessOption_InputFaceObservations"];
    v21 = [v20 processUsingQualityOfServiceClass:v9 options:v13 regionOfInterest:self warningRecorder:error error:0 progressHandler:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
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

- (id)detectFacesInContext:(id)context error:(id *)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = objc_alloc_init(VNDetectFaceRectanglesRequest);
  [(VNDetectFaceRectanglesRequest *)v7 applyConfigurationOfRequest:self];
  v8 = [contextCopy requestPerformerAndReturnError:error];
  if (v8 && (v13[0] = v7, [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "performDependentRequests:onBehalfOfRequest:inContext:error:", v9, self, contextCopy, error), v9, (v10 & 1) != 0))
  {
    results = [(VNRequest *)v7 results];
  }

  else
  {
    results = 0;
  }

  return results;
}

- (id)processFaceObservations:(id)observations revision:(unint64_t)revision regionOfInterest:(CGRect)interest detectorType:(id)type detectorOptions:(id)options shouldAlignFaceBBox:(id)box shouldRunDetectorBlock:(id)block context:(id)self0 error:(id *)self1
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  v130[1] = *MEMORY[0x1E69E9840];
  observationsCopy = observations;
  typeCopy = type;
  optionsCopy = options;
  boxCopy = box;
  blockCopy = block;
  contextCopy = context;
  [contextCopy qosClass];
  v60 = [contextCopy requestPerformerAndReturnError:error];
  if (!v60)
  {
    v52 = 0;
    goto LABEL_36;
  }

  v59 = [contextCopy imageBufferAndReturnError:error];
  if (v59)
  {
    session = [contextCopy session];
    v73 = [(VNRequest *)self newDefaultDetectorOptionsForRequestRevision:revision session:?];
    [v73 addEntriesFromDictionary:optionsCopy];
    v130[0] = v59;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v130 count:1];
    [v73 setObject:v20 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

    v72 = [session detectorOfType:typeCopy configuredWithOptions:v73 error:error];
    if (!v72)
    {
      v52 = 0;
LABEL_34:

      goto LABEL_35;
    }

    qosClass = [contextCopy qosClass];
    v21 = [observationsCopy count];
    v54 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v21];
    v55 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v21];
    v126[0] = 0;
    v126[1] = v126;
    v126[2] = 0x3812000000;
    v126[3] = __Block_byref_object_copy__5731;
    v126[4] = __Block_byref_object_dispose__5732;
    v126[5] = "";
    v127 = 0;
    requestTasksQueue = [(VNRequest *)self requestTasksQueue];
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
    v69 = [observationsCopy count];
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    obj = observationsCopy;
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
          v25 = boxCopy[2](boxCopy, v24);
          v26 = [v73 mutableCopy];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __149__VNRequest_processFaceObservations_revision_regionOfInterest_detectorType_detectorOptions_shouldAlignFaceBBox_shouldRunDetectorBlock_context_error___block_invoke_142;
          block[3] = &unk_1E77B2D78;
          v103 = v68;
          v104 = qosClass;
          v101 = &v106;
          block[4] = self;
          v97 = contextCopy;
          v98 = v24;
          v27 = v26;
          v99 = v27;
          v102 = &v112;
          v105 = v69 == 1;
          v28 = requestTasksQueue;
          v100 = v28;
          v29 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, qosClass, 0, block);
          v79[0] = MEMORY[0x1E69E9820];
          v79[1] = 3221225472;
          v79[2] = __149__VNRequest_processFaceObservations_revision_regionOfInterest_detectorType_detectorOptions_shouldAlignFaceBBox_shouldRunDetectorBlock_context_error___block_invoke_3;
          v79[3] = &unk_1E77B2DC8;
          v88 = v68;
          v93 = qosClass;
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
          selfCopy = self;
          v33 = v71;
          v85 = v33;
          v95 = v69 == 1;
          v34 = v28;
          v83 = v34;
          v35 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, qosClass, 0, v79);
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

          firstObject = [v107[5] firstObject];
          v41 = blockCopy[2](blockCopy, firstObject);

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

    errorCopy = error;
    if (v69 == 1 || (v46 = [requestTasksQueue dispatchGroupWait:v64 error:error], errorCopy = error, (v46 & 1) != 0))
    {
      if ([VNValidationUtilities validateAsyncStatusResults:v57 error:errorCopy])
      {
        v52 = v56;
LABEL_33:

        _Block_object_dispose(v126, 8);
        goto LABEL_34;
      }
    }

    else
    {
      VNValidatedLog(4, @"Timed out waiting for processing face observations: %@", v47, error, v48, v49, v50, v51, obj);
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
  specifier = [(VNRequest *)self specifier];
  v6 = [v3 initWithFormat:@"%@ %@", v4, specifier];

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

- (unint64_t)applicableRevisionForDependentRequest:(id)request
{
  requestCopy = request;
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

- (BOOL)setRevision:(unint64_t)revision error:(id *)error
{
  if (revision < 0xDECAF000)
  {
    [(VNRequest *)self setRevision:revision];
    if (([objc_opt_class() supportsRevision:revision] & 1) == 0)
    {
LABEL_4:
      if (error)
      {
        v7 = [VNError errorForUnsupportedRevision:revision ofRequest:self];
        v8 = v7;
        result = 0;
        *error = v7;
        return result;
      }

      return 0;
    }

    return 1;
  }

  if (self)
  {
    [(VNRequest *)self _setResolvedRevision:revision];
    if (([objc_opt_class() supportsPrivateRevision:revision] & 1) == 0)
    {
      goto LABEL_4;
    }

    return 1;
  }

  return 0;
}

- (void)_setResolvedRevision:(unint64_t)revision
{
  revision = self->_revision;
  self->_revision = revision;
  if (revision != revision)
  {
    [(VNRequestConfiguration *)self->_configuration setResolvedRevision:?];

    [(VNRequest *)self resolvedRevisionDidChangeFromRevision:revision];
  }
}

- (BOOL)validateImageBuffer:(id)buffer ofNonZeroWidth:(unint64_t *)width andHeight:(unint64_t *)height error:(id *)error
{
  bufferCopy = buffer;
  v11 = bufferCopy;
  if (!bufferCopy)
  {
    if (error)
    {
      [VNError errorForInvalidArgument:0 named:@"imageBuffer"];
      *error = v14 = 0;
      goto LABEL_11;
    }

LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  width = [bufferCopy width];
  height = [v11 height];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __64__VNRequest_validateImageBuffer_ofNonZeroWidth_andHeight_error___block_invoke;
  v16[3] = &unk_1E77B6810;
  v16[4] = self;
  if (![VNValidationUtilities validateNonZeroImageWidth:width height:height componentNameProvidingBlock:v16 error:error])
  {
    goto LABEL_10;
  }

  if (width)
  {
    *width = width;
  }

  if (height)
  {
    *height = height;
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

- (void)setProcessingDevice:(id)device
{
  deviceCopy = device;
  v4 = [[VNProcessingDeviceComputeDeviceBridge alloc] initWithProcessingDevice:deviceCopy];
  v5 = [(VNRequest *)self supportedComputeStageDevicesAndReturnError:0];
  v6 = [v5 objectForKeyedSubscript:@"VNComputeStageMain"];
  computeDevice = [(VNProcessingDeviceComputeDeviceBridge *)v4 computeDevice];
  v8 = [v6 containsObject:computeDevice];

  if (v8)
  {
    [(VNRequestConfiguration *)self->_configuration setProcessingDevice:deviceCopy];
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
  processingDevice = [(VNRequestConfiguration *)self->_configuration processingDevice];
  v4 = processingDevice;
  if (processingDevice)
  {
    targetsCPU = [processingDevice targetsCPU];
  }

  else
  {
    computeStageDeviceAssignments = [(VNRequestConfiguration *)self->_configuration computeStageDeviceAssignments];
    allValues = [computeStageDeviceAssignments allValues];

    if ([allValues count])
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v8 = allValues;
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
              targetsCPU = 0;
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

      targetsCPU = 1;
LABEL_14:
    }

    else
    {
      targetsCPU = 0;
    }
  }

  return targetsCPU;
}

- (void)setPreferredMetalContext:(id)context
{
  contextCopy = context;
  preferredMetalContext = [(VNRequest *)self preferredMetalContext];
  if (preferredMetalContext != contextCopy)
  {
    null = [MEMORY[0x1E695DFB0] null];
    v6 = [null isEqual:contextCopy];

    if (v6)
    {
    }

    else if (contextCopy)
    {
      v7 = [VNProcessingDevice deviceForMetalDevice:?];
LABEL_7:
      [(VNRequestConfiguration *)self->_configuration setProcessingDevice:v7];

      goto LABEL_8;
    }

    contextCopy = 0;
    v7 = 0;
    goto LABEL_7;
  }

LABEL_8:
}

- (MTLDevice)preferredMetalContext
{
  processingDevice = [(VNRequest *)self processingDevice];
  v4 = processingDevice;
  if (processingDevice)
  {
    metalDevice = [processingDevice metalDevice];
  }

  else
  {
    v6 = [(VNRequest *)self computeDeviceForComputeStage:@"VNComputeStageMain"];
    if (v6)
    {
      metalDevice = [VNComputeDeviceUtilities metalDeviceForComputeDevice:v6];
    }

    else
    {
      metalDevice = 0;
    }
  }

  return metalDevice;
}

- (BOOL)cancellationTriggeredAndReturnError:(id *)error
{
  cancellationTriggered = [(VNRequest *)self cancellationTriggered];
  v6 = cancellationTriggered;
  if (error && cancellationTriggered)
  {
    *error = [VNError errorForCancellationOfRequest:self];
  }

  return v6;
}

- (id)cancellerAndReturnError:(id *)error
{
  os_unfair_lock_lock(&self->_cancellationResourcesLock);
  v5 = self->_canceller;
  os_unfair_lock_unlock(&self->_cancellationResourcesLock);
  if (v5)
  {
    v6 = v5;
  }

  else if (error)
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

    *error = [VNError errorForInvalidOperationWithLocalizedDescription:v7];
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
    warnings = [(VNWarningRecorder *)warningRecorder warnings];
  }

  else
  {
    warnings = MEMORY[0x1E695E0F8];
  }

  return warnings;
}

- (id)valueForWarning:(id)warning
{
  v3 = [(VNWarningRecorder *)self->_warningRecorder valueForWarning:warning];

  return v3;
}

- (void)recordWarning:(id)warning value:(id)value
{
  warningCopy = warning;
  valueCopy = value;
  warningRecorder = self->_warningRecorder;
  if (!warningRecorder)
  {
    v8 = objc_alloc_init(VNWarningRecorder);
    v9 = self->_warningRecorder;
    self->_warningRecorder = v8;

    warningRecorder = self->_warningRecorder;
  }

  [(VNWarningRecorder *)warningRecorder recordWarning:warningCopy value:valueCopy];
}

- (void)setProcessedResults:(id)results
{
  resultsCopy = results;
  v4 = [resultsCopy copy];
  results = self->_results;
  self->_results = v4;
}

- (void)setResults:(id)results assignedWithOriginatingSpecifier:(BOOL)specifier
{
  specifierCopy = specifier;
  resultsCopy = results;
  if (specifierCopy)
  {
    specifier = [(VNRequest *)self specifier];
    v7 = [resultsCopy VNObservationsWithOriginatingRequestSpecifier:specifier];

    v8 = v7;
  }

  else
  {
    v8 = resultsCopy;
  }

  v10 = v8;
  [(VNRequest *)self setProcessedResults:?];
}

- (void)setResults:(id)results
{
  resultsCopy = results;
  if (resultsCopy)
  {
    [(VNRequest *)self setResults:resultsCopy assignedWithOriginatingSpecifier:[(VNRequest *)self resultsAreAssignedWithOriginatingRequestSpecifier]];
  }

  else
  {
    results = self->_results;
    self->_results = 0;
  }
}

- (BOOL)internalCancelInContext:(id)context error:(id *)error
{
  v4 = [(VNRequest *)self cancellerAndReturnError:error];
  v5 = v4;
  if (v4)
  {
    [v4 signalCancellation];
  }

  return v5 != 0;
}

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  if (error)
  {
    *error = [VNError errorForUnimplementedMethod:a2 ofObject:self];
  }

  return 0;
}

- (BOOL)validateConfigurationAndReturnError:(id *)error
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

    uTF8String = [v8 UTF8String];
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create(uTF8String, v14);
    cancellationQueue = self->_cancellationQueue;
    self->_cancellationQueue = v15;

    os_unfair_lock_unlock(&self->_cancellationResourcesLock);
  }

  self->_cancellationTriggered = 0;
  return 1;
}

- (BOOL)performInContext:(id)context error:(id *)error
{
  v65 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  serialNumber = [contextCopy serialNumber];
  resolvedRevision = [(VNRequest *)self resolvedRevision];
  frameworkClass = [(VNRequest *)self frameworkClass];
  vNClassCode = [(objc_class *)frameworkClass VNClassCode];
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
    if (([(objc_class *)frameworkClass supportsAnyRevision:resolvedRevision]& 1) != 0)
    {
      v14 = [contextCopy cachedObservationsAcceptedByRequest:self];
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
        hasCancellationHook = [(VNRequest *)self hasCancellationHook];
        if (hasCancellationHook)
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
          v56 = serialNumber;
          dsema = v16;
          v52 = dsema;
          selfCopy = self;
          v57 = resolvedRevision;
          v58 = vNClassCode;
          v54 = contextCopy;
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
        v13 = [(VNRequest *)self internalPerformRevision:resolvedRevision inContext:contextCopy error:&v50];
        v17 = v50;

        v12 = v17;
        if (v13)
        {
          if (([objc_opt_class() setsTimeRangeOnResults] & 1) == 0)
          {
            v18 = [contextCopy imageBufferAndReturnError:0];
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

          [contextCopy recordSequencedObservationsOfRequest:self];
        }

        else
        {
          [(VNRequest *)self setResults:0];
        }

        [contextCopy cacheObservationsOfRequest:self];
        *(v60 + 24) = 0;
        if (hasCancellationHook)
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
      [VNError errorForUnsupportedRevision:resolvedRevision ofRequest:self];
      v13 = 0;
      v12 = v14 = v12;
    }
  }

  self->_executionNanoseconds = mach_absolute_time() - v38;
  completionHandler = [(VNRequest *)self completionHandler];
  v28 = completionHandler;
  if (completionHandler)
  {
    if (v13)
    {
      v29 = 0;
    }

    else
    {
      v29 = v12;
    }

    (*(completionHandler + 16))(completionHandler, self, v29);
  }

  if (error)
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
    *error = v12;
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

- (void)performInContextAsync:(id)async asyncDispatchQueue:(id)queue asyncDispatchGroup:(id)group
{
  asyncCopy = async;
  queueCopy = queue;
  groupCopy = group;
  [&stru_1F1976900 UTF8String];
  [asyncCopy qosClass];
  objc_initWeak(&location, self);
  qosClass = [asyncCopy qosClass];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __73__VNRequest_performInContextAsync_asyncDispatchQueue_asyncDispatchGroup___block_invoke;
  v18 = &unk_1E77B2CD8;
  objc_copyWeak(&v21, &location);
  v12 = asyncCopy;
  v19 = v12;
  v13 = queueCopy;
  v20 = v13;
  v14 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, qosClass, 0, &v15);
  [v13 dispatchGroupAsyncByPreservingQueueCapacity:groupCopy block:{v14, v15, v16, v17, v18}];

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

- (void)applyConfigurationOfRequest:(id)request
{
  requestCopy = request;
  if (requestCopy != self)
  {
    self->_revision = [(VNRequest *)requestCopy applicableRevisionForDependentRequest:self];
    [(VNRequestConfiguration *)self->_configuration setResolvedRevision:0];
    [(VNRequest *)self applyCompatibleComputeStageDeviceAssignmentsOfRequest:requestCopy];
    [(VNRequestConfiguration *)self->_configuration setDetectionLevel:[(VNRequest *)requestCopy detectionLevel]];
    [(VNRequestConfiguration *)self->_configuration setMetalContextPriority:[(VNRequest *)requestCopy metalContextPriority]];
    [(VNRequestConfiguration *)self->_configuration setModelExecutionPriority:[(VNRequest *)requestCopy modelExecutionPriority]];
    [(VNRequestConfiguration *)self->_configuration setPreferBackgroundProcessing:[(VNRequest *)requestCopy preferBackgroundProcessing]];
    [(VNRequestConfiguration *)self->_configuration setModelFileBackingStore:[(VNRequest *)requestCopy modelFileBackingStore]];
    [(VNRequestConfiguration *)self->_configuration setMaximumProcessingDimensionOnTheLongSide:[(VNRequest *)requestCopy maximumProcessingDimensionOnTheLongSide]];
    [(VNRequestConfiguration *)self->_configuration setMemoryPoolId:[(VNRequest *)requestCopy ioSurfaceMemoryPoolId]];
  }
}

- (void)applyCompatibleComputeStageDeviceAssignmentsOfRequest:(id)request
{
  v24 = *MEMORY[0x1E69E9840];
  configuration = [request configuration];
  processingDevice = [configuration processingDevice];
  if (processingDevice)
  {
    [(VNRequestConfiguration *)self->_configuration setProcessingDevice:processingDevice];
  }

  else
  {
    v15 = 0;
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computeStageDeviceAssignments = [configuration computeStageDeviceAssignments];
    if ([computeStageDeviceAssignments count])
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
            v10 = [computeStageDeviceAssignments objectForKeyedSubscript:{v9, v15}];
            if (v10)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                configuration = self->_configuration;
                processingDevice2 = [v10 processingDevice];
                [(VNRequestConfiguration *)configuration setProcessingDevice:processingDevice2];

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

    processingDevice = v15;
  }
}

- (void)copyStateOfRequest:(id)request
{
  requestCopy = request;
  [(VNRequest *)self applyConfigurationOfRequest:?];
  -[VNRequest _setResolvedRevision:](self, "_setResolvedRevision:", [requestCopy revision]);
  results = [requestCopy results];
  v5 = [results copy];
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

  warnings = [requestCopy warnings];
  [(VNWarningRecorder *)warningRecorder setWarnings:warnings];
}

- (void)setAsyncStatus:(BOOL)status error:(id)error
{
  statusCopy = status;
  errorCopy = error;
  os_unfair_lock_lock(&self->_asyncStatusLock);
  v6 = [[VNAsyncStatus alloc] initWithStatus:statusCopy error:errorCopy];
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

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session
{
  sessionCopy = session;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VNRequest modelFileBackingStore](self, "modelFileBackingStore")}];
  [v7 setObject:v8 forKeyedSubscript:@"VNDetectorInitOption_ModelBackingStore"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[VNRequest ioSurfaceMemoryPoolId](self, "ioSurfaceMemoryPoolId")}];
  [v7 setObject:v9 forKeyedSubscript:@"VNDetectorInitOption_MemoryPoolId"];

  v10 = [VNRequestSpecifier specifierForRequestClass:[(VNRequest *)self frameworkClass] revision:revision error:0];
  [v7 setObject:v10 forKeyedSubscript:@"VNDetectorOption_OriginatingRequestSpecifier"];
  resolvedComputeStageDeviceAssignments = [(VNRequest *)self resolvedComputeStageDeviceAssignments];
  [v7 setObject:resolvedComputeStageDeviceAssignments forKeyedSubscript:@"VNDetectorOption_ComputeStageDeviceAssignments"];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNRequest preferBackgroundProcessing](self, "preferBackgroundProcessing")}];
  [v7 setObject:v12 forKeyedSubscript:@"VNDetectorOption_PreferBackgroundProcessing"];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VNRequest modelExecutionPriority](self, "modelExecutionPriority")}];
  [v7 setObject:v13 forKeyedSubscript:@"VNDetectorOption_EspressoPlanPriority"];

  if (sessionCopy)
  {
    [v7 setObject:sessionCopy forKeyedSubscript:@"VNDetectorProcessOption_Session"];
  }

  v14 = [(VNRequest *)self cancellerAndReturnError:0];
  [v7 setObject:v14 forKeyedSubscript:@"VNDetectorProcessOption_Canceller"];

  return v7;
}

- (id)newDefaultDetectorOptionsForSession:(id)session
{
  sessionCopy = session;
  v5 = [(VNRequest *)self newDefaultDetectorOptionsForRequestRevision:[(VNRequest *)self resolvedRevision] session:sessionCopy];

  return v5;
}

- (id)applicableDetectorAndOptions:(id *)options forRevision:(unint64_t)revision loadedInSession:(id)session error:(id *)error
{
  sessionCopy = session;
  v11 = [(VNRequest *)self applicableDetectorTypeForRevision:revision error:error];
  if (v11)
  {
    v12 = [(VNRequest *)self newDefaultDetectorOptionsForRequestRevision:revision session:sessionCopy];
    v13 = [sessionCopy detectorOfType:v11 configuredWithOptions:v12 error:error];
    if (v13)
    {
      if (options)
      {
        v14 = v12;
        *options = v12;
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

- (Class)applicableDetectorClassAndOptions:(id *)options forRevision:(unint64_t)revision error:(id *)error
{
  v9 = [(VNRequest *)self applicableDetectorTypeForRevision:revision error:error];
  if (v9)
  {
    v10 = [(VNRequest *)self newDefaultDetectorOptionsForRequestRevision:revision session:0];
    v16 = v10;
    v11 = [VNDetector detectorClassAndConfigurationOptions:&v16 forDetectorType:v9 options:v10 error:error];
    v12 = v16;

    if (v11)
    {
      if (options)
      {
        v13 = v12;
        *options = v12;
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
  frameworkClass = [(VNRequest *)self frameworkClass];
  resolvedRevision = [(VNRequest *)self resolvedRevision];

  return [VNRequestSpecifier specifierForRequestClass:frameworkClass revision:resolvedRevision error:0];
}

- (id)copyWithZone:(_NSZone *)zone
{
  newDuplicateInstance = [(VNRequest *)self newDuplicateInstance];
  v5 = newDuplicateInstance;
  if (newDuplicateInstance)
  {
    [newDuplicateInstance copyStateOfRequest:self];
  }

  return v5;
}

- (BOOL)warmUpApplicableDetectorInSession:(id)session error:(id *)error
{
  sessionCopy = session;
  v21 = 0;
  v7 = [(VNRequest *)self applicableDetectorAndOptions:&v21 forRevision:[(VNRequest *)self resolvedRevision] loadedInSession:sessionCopy error:error];
  v8 = v21;
  if (v7)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __53__VNRequest_warmUpApplicableDetectorInSession_error___block_invoke;
    v17 = &unk_1E77B4588;
    v9 = v7;
    v18 = v9;
    v19 = sessionCopy;
    v20 = v8;
    v10 = _Block_copy(&v14);
    v11 = objc_opt_class();
    v12 = [v11 runSuccessReportingBlockSynchronously:v10 detector:v9 qosClass:qos_class_self() error:{error, v14, v15, v16, v17}];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)warmUpSession:(id)session error:(id *)error
{
  sessionCopy = session;
  if ([(VisionCoreRuntimeUtilities *)VNRuntimeUtilities item:self overridesSelector:a2])
  {
    v8 = 1;
  }

  else
  {
    v9 = [(VNRequest *)self applicableDetectorTypeForRevision:[(VNRequest *)self resolvedRevision] error:error];
    v10 = v9;
    if (v9)
    {
      if ([v9 isEqualToString:&stru_1F1976900])
      {
        v11 = [objc_opt_class() warmUpSession:sessionCopy error:error];
      }

      else
      {
        v11 = [(VNRequest *)self warmUpApplicableDetectorInSession:sessionCopy error:error];
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
    newConfigurationInstance = [v7 newConfigurationInstance];
    configuration = v6->_configuration;
    v6->_configuration = newConfigurationInstance;

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
  resolvedRevision = [(VNRequest *)self resolvedRevision];
  preferredMetalContext = [(VNRequest *)self preferredMetalContext];
  name = [preferredMetalContext name];
  v9 = [v3 initWithFormat:@"%@-%lu:MTL=%@:Det=%lu:MDm=%lu", v5, resolvedRevision, name, -[VNRequest detectionLevel](self, "detectionLevel"), -[VNRequest maximumProcessingDimensionOnTheLongSide](self, "maximumProcessingDimensionOnTheLongSide")];

  return v9;
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  frameworkClass = [(VNRequest *)self frameworkClass];
  if (frameworkClass == [configurationCopy requestClass])
  {
    resolvedRevision = [(VNRequest *)self resolvedRevision];
    resolvedRevision2 = [configurationCopy resolvedRevision];
    if (resolvedRevision == resolvedRevision2)
    {
      v6 = 1;
    }

    else
    {
      v6 = [(objc_class *)frameworkClass revision:resolvedRevision mayAcceptResultsProducedByRevision:resolvedRevision2];
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

+ (unint64_t)applicableRevisionForDependentRequestOfClass:(Class)class beingPerformedByRevision:(unint64_t)revision
{
  if (self == class)
  {
    return revision;
  }

  dependentRequestMappingTable = [self dependentRequestMappingTable];
  if (dependentRequestMappingTable)
  {
    v8 = *dependentRequestMappingTable;
    if (*dependentRequestMappingTable)
    {
      while (v8 != revision || *(dependentRequestMappingTable + 8) != class)
      {
        v9 = *(dependentRequestMappingTable + 24);
        dependentRequestMappingTable += 24;
        v8 = v9;
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      return *(dependentRequestMappingTable + 16);
    }
  }

LABEL_7:
  defaultRevision = [(objc_class *)class defaultRevision];
  dependentRequestCompatibility = [self dependentRequestCompatibility];
  if (dependentRequestCompatibility)
  {
    v12 = *dependentRequestCompatibility;
    if (*dependentRequestCompatibility)
    {
      v13 = 0;
      v14 = dependentRequestCompatibility + 2;
      do
      {
        if (v12 == revision && *(v14 - 1) == class)
        {
          v15 = *v14;
          if (*v14 < 0xDECAF000)
          {
            if (v15 == defaultRevision)
            {
              return defaultRevision;
            }

            if (v15 > v13)
            {
              v13 = *v14;
            }
          }

          else
          {
            v16 = objc_alloc(MEMORY[0x1E696AEC0]);
            v17 = VNMethodSignatureStringForObjectAndSelector(self, sel_dependentRequestCompatibility);
            v18 = VNRequestRevisionString(self, *(v14 - 2));
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

  return [(objc_class *)class resolvedRevisionForRevision:0];
}

+ (unint64_t)resolvedRevisionForRevision:(unint64_t)revision
{
  if (!revision)
  {
    publicRevisionsSet = [self publicRevisionsSet];
    lastIndex = [publicRevisionsSet lastIndex];

    if (lastIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      return lastIndex;
    }
  }

  return revision;
}

+ (NSIndexSet)allSupportedRevisions
{
  supportedRevisions = [self supportedRevisions];
  v4 = [supportedRevisions mutableCopy];

  supportedPrivateRevisions = [self supportedPrivateRevisions];
  [v4 addIndexes:supportedPrivateRevisions];

  return v4;
}

+ (unint64_t)firstSupportedRevisionInOrderedRevisionList:(unint64_t)list
{
  listCopy = list;
  if (list)
  {
    v9 = &v10;
    v5 = objc_autoreleasePoolPush();
    allSupportedRevisions = [self allSupportedRevisions];
    do
    {
      if ([allSupportedRevisions containsIndex:listCopy])
      {
        break;
      }

      v7 = v9++;
      listCopy = *v7;
    }

    while (*v7);

    objc_autoreleasePoolPop(v5);
  }

  return listCopy;
}

+ (BOOL)supportsAnyRevision:(unint64_t)revision
{
  if ([self supportsRevision:?])
  {
    return 1;
  }

  return [self supportsPrivateRevision:revision];
}

+ (BOOL)supportsPrivateRevision:(unint64_t)revision
{
  supportedPrivateRevisions = [self supportedPrivateRevisions];
  LOBYTE(revision) = [supportedPrivateRevisions containsIndex:revision];

  return revision;
}

+ (BOOL)supportsRevision:(unint64_t)revision
{
  supportedRevisions = [self supportedRevisions];
  LOBYTE(revision) = [supportedRevisions containsIndex:revision];

  return revision;
}

+ (NSUInteger)currentRevision
{
  supportedRevisions = [self supportedRevisions];
  lastIndex = [supportedRevisions lastIndex];

  if (lastIndex == 0x7FFFFFFFFFFFFFFFLL || !lastIndex)
  {
    lastIndex = [self defaultRevision];
    if (!lastIndex)
    {
      v5 = objc_alloc(MEMORY[0x1E696AEC0]);
      v6 = NSStringFromClass([self frameworkClass]);
      v7 = [v5 initWithFormat:@"%@ must provide at least one supported revision", v6];

      [VNError VNAssert:0 log:v7];
      return 0;
    }
  }

  return lastIndex;
}

+ (NSIndexSet)supportedRevisions
{
  publicRevisionsSet = [self publicRevisionsSet];
  if ([self supportedRevisionsAreFilteredBasedOnAvailableComputeDevices])
  {
    v4 = [self _runtimeAvailableRevisionsOfRevisions:publicRevisionsSet];

    publicRevisionsSet = v4;
  }

  return publicRevisionsSet;
}

+ (id)publicRevisionsSet
{
  frameworkClass = [self frameworkClass];
  os_unfair_lock_lock(&+[VNRequest publicRevisionsSet]::ourLock);
  v3 = +[VNRequest publicRevisionsSet]::ourRequestClassToSuportedRevisionsMapTable;
  if (!+[VNRequest publicRevisionsSet]::ourRequestClassToSuportedRevisionsMapTable)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v5 = +[VNRequest publicRevisionsSet]::ourRequestClassToSuportedRevisionsMapTable;
    +[VNRequest publicRevisionsSet]::ourRequestClassToSuportedRevisionsMapTable = strongToStrongObjectsMapTable;

    v3 = +[VNRequest publicRevisionsSet]::ourRequestClassToSuportedRevisionsMapTable;
  }

  v6 = [v3 objectForKey:frameworkClass];
  if (!v6)
  {
    revisionAvailability = [objc_opt_self() revisionAvailability];
    if (revisionAvailability)
    {
      v8 = objc_alloc_init(MEMORY[0x1E696AD50]);
      v9 = +[VNRuntimeUtilities runTimeVersion];
      if (*revisionAvailability)
      {
        v10 = v9;
        v11 = revisionAvailability + 20;
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

    [+[VNRequest publicRevisionsSet]::ourRequestClassToSuportedRevisionsMapTable setObject:v6 forKey:frameworkClass];
  }

  os_unfair_lock_unlock(&+[VNRequest publicRevisionsSet]::ourLock);

  return v6;
}

+ (unint64_t)_defaultRevisionForBuildVersion:(int)version
{
  if (version == -1)
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x1E696AD50]);
  revisionAvailability = [self revisionAvailability];
  if (revisionAvailability && (lastIndex = *revisionAvailability) != 0)
  {
    v8 = revisionAvailability + 20;
    while (1)
    {
      v9 = *(v8 - 1);
      if (v9 == version)
      {
        break;
      }

      if (v9 <= version)
      {
        if (*v8)
        {
          v10 = *v8 < version;
        }

        else
        {
          v10 = 0;
        }

        if (!v10)
        {
          [v5 addIndex:lastIndex];
        }
      }

      lastIndex = *(v8 + 20);
      v8 += 40;
      if (!lastIndex)
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
      lastIndex = [v5 lastIndex];
    }

    else
    {
      lastIndex = 0;
    }
  }

  return lastIndex;
}

+ (BOOL)getOptionalArray:(id *)array forKey:(id)key inOptions:(id)options withElementsOfClass:(Class)class error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  optionsCopy = options;
  v30 = 0;
  v13 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v30, optionsCopy, keyCopy, 0, v13, error);
  v15 = v30;
  v16 = v15;
  if (ObjectFromOptionsDictionary)
  {
    if (class)
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
              if (error)
              {
                v22 = objc_alloc(MEMORY[0x1E696AEC0]);
                v23 = NSStringFromClass(class);
                v24 = [v22 initWithFormat:@"All elements in the %@ array must be of class %@ (%@)", keyCopy, v23, v17];

                *error = [VNError errorWithCode:5 message:v24];
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

    if (array)
    {
      *array = [v16 copy];
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

+ (BOOL)getFloatValue:(float *)value forKey:(id)key inOptions:(id)options withDefaultValue:(float)defaultValue error:(id *)error
{
  keyCopy = key;
  optionsCopy = options;
  v20 = 0;
  v13 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v20, optionsCopy, keyCopy, 0, v13, error);
  v15 = v20;
  v16 = v15;
  if (value)
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
      defaultValue = v18;
    }

    *value = defaultValue;
  }

  return ObjectFromOptionsDictionary;
}

+ (BOOL)getFloatValue:(float *)value forKey:(id)key inOptions:(id)options error:(id *)error
{
  keyCopy = key;
  optionsCopy = options;
  v18 = 0;
  v11 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v18, optionsCopy, keyCopy, 1, v11, error);
  v13 = v18;
  v14 = v13;
  if (value)
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
    *value = v16;
  }

  return ObjectFromOptionsDictionary;
}

+ (BOOL)getDoubleValue:(double *)value forKey:(id)key inOptions:(id)options withDefaultValue:(double)defaultValue error:(id *)error
{
  keyCopy = key;
  optionsCopy = options;
  v20 = 0;
  v13 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v20, optionsCopy, keyCopy, 0, v13, error);
  v15 = v20;
  v16 = v15;
  if (value)
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
      defaultValue = v18;
    }

    *value = defaultValue;
  }

  return ObjectFromOptionsDictionary;
}

+ (BOOL)getDoubleValue:(double *)value forKey:(id)key inOptions:(id)options error:(id *)error
{
  keyCopy = key;
  optionsCopy = options;
  v18 = 0;
  v11 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v18, optionsCopy, keyCopy, 1, v11, error);
  v13 = v18;
  v14 = v13;
  if (value)
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
    *value = v16;
  }

  return ObjectFromOptionsDictionary;
}

+ (BOOL)revision:(unint64_t)revision mayAcceptResultsProducedByRevision:(unint64_t)byRevision
{
  if (revision == byRevision)
  {
    return 1;
  }

  v8 = [VNRequestSpecifier specifierForRequestClass:self revision:revision error:0];
  v9 = [VNRequestSpecifier specifierForRequestClass:self revision:byRevision error:0];
  v10 = [v8 hasModelEquivalencyToRequestSpecifier:v9];
  v12 = revision < 0xDECAF000 && byRevision < 0xDECAF000;
  v4 = (v10 & 1) != 0 || v12;

  return v4;
}

+ (unsigned)VNClassCode
{
  v3 = 0;
  [VNClassRegistrar getClassCode:&v3 forClass:self error:0];
  return v3;
}

+ (id)_runtimeAvailableRevisionsOfRevisions:(id)revisions
{
  revisionsCopy = revisions;
  if ([revisionsCopy count])
  {
    v5 = objc_alloc_init(_VNRequestRevisionsIntrospectionInstanceCreator);
    frameworkClass = [self frameworkClass];
    v17 = 0;
    v7 = [(VNRequestInstanceCreator *)v5 newRequestInstanceOfClass:frameworkClass withCompletionHandler:0 revision:0 error:&v17];
    v8 = v17;
    if (v7)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __51__VNRequest__runtimeAvailableRevisionsOfRevisions___block_invoke;
      v15[3] = &unk_1E77B2CB0;
      v16 = v7;
      v9 = [revisionsCopy indexesPassingTest:v15];
    }

    else
    {
      v10 = objc_alloc(MEMORY[0x1E696AEC0]);
      v11 = NSStringFromClass(frameworkClass);
      localizedDescription = [v8 localizedDescription];
      v13 = [v10 initWithFormat:@"Failed to create instance of %@ - %@", v11, localizedDescription];
      [VNError VNAssert:0 log:v13];

      v9 = [revisionsCopy copy];
    }
  }

  else
  {
    v9 = [revisionsCopy copy];
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
  if (objc_opt_class() == self)
  {
    ourVisionFrameworkLinkTimeVersion = +[VNFrameworkManager linktimeVersion];
  }
}

- (id)utilizedResourcesWithError:(id *)error
{
  if (error)
  {
    specifier = [(VNRequest *)self specifier];
    *error = [VNError errorForInvalidOperationForRequestSpecifier:specifier];
  }

  return 0;
}

- (id)VNImageProcessingSessionPrintAndReturnError:(id *)error
{
  vNImageProcessingSessionPrintKeyPath = [(VNRequest *)self VNImageProcessingSessionPrintKeyPath];
  if (vNImageProcessingSessionPrintKeyPath)
  {
    results = [(VNRequest *)self results];
    if ([results count] == 1)
    {
      firstObject = [results firstObject];
      v8 = [firstObject valueForKeyPath:vNImageProcessingSessionPrintKeyPath];
    }

    else
    {
      if (!error)
      {
        v8 = 0;
        goto LABEL_10;
      }

      firstObject = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ did not generate a single print", self];
      [VNError errorForInvalidOptionWithLocalizedDescription:firstObject];
      *error = v8 = 0;
    }
  }

  else
  {
    if (!error)
    {
      v8 = 0;
      goto LABEL_11;
    }

    results = [(VNRequest *)self specifier];
    [VNError errorForInvalidOperationForRequestSpecifier:results];
    *error = v8 = 0;
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

+ (id)createVNEntityIdentificationModelEntryPrintForRevision:(unint64_t)revision fromDescriptorData:(const void *)data length:(unint64_t)length elementCount:(unint64_t)count error:(id *)error
{
  if (error)
  {
    *error = [VNError errorForUnimplementedMethod:a2 ofObject:self, length, count];
  }

  return 0;
}

- (id)VNCoreMLTransformerDetectionprintAndReturnError:(id *)error
{
  if (error)
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    specifier = [(VNRequest *)self specifier];
    v7 = [v5 initWithFormat:@"%@ does not produce detectionprint data", specifier];

    *error = [VNError errorForDataUnavailableWithLocalizedDescription:v7];
  }

  return 0;
}

- (id)VNCoreMLTransformerSceneprintsAndReturnError:(id *)error
{
  if (error)
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    specifier = [(VNRequest *)self specifier];
    v7 = [v5 initWithFormat:@"%@ does not produce sceneprint data", specifier];

    *error = [VNError errorForDataUnavailableWithLocalizedDescription:v7];
  }

  return 0;
}

@end