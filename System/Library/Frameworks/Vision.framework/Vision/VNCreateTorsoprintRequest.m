@interface VNCreateTorsoprintRequest
+ (BOOL)revision:(unint64_t)a3 mayAcceptResultsProducedByRevision:(unint64_t)a4;
+ (const)dependentRequestCompatibility;
+ (id)descriptionForPrivateRevision:(unint64_t)a3;
+ (id)privateRevisionsSet;
- (BOOL)_processFaceBasedInputInContext:(id)a3 revision:(unint64_t)a4 torsosThatNeedNoProcessing:(id)a5 torsosThatNeedTorsoprints:(id)a6 error:(id *)a7;
- (BOOL)_processHumanBodyBasedInputInContext:(id)a3 revision:(unint64_t)a4 torsosThatNeedNoProcessing:(id)a5 torsosThatNeedTorsoprints:(id)a6 error:(id *)a7;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (id)_processHumanBodyObservations:(id)a3 revision:(unint64_t)a4 regionOfInterest:(CGRect)a5 context:(id)a6 error:(id *)a7;
- (id)detectHumanBodiesInContext:(id)a3 error:(id *)a4;
@end

@implementation VNCreateTorsoprintRequest

+ (BOOL)revision:(unint64_t)a3 mayAcceptResultsProducedByRevision:(unint64_t)a4
{
  if (a3 != a4)
  {
    return 0;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___VNCreateTorsoprintRequest;
  return objc_msgSendSuper2(&v7, sel_revision_mayAcceptResultsProducedByRevision_, a3, a3);
}

+ (const)dependentRequestCompatibility
{
  {
    +[VNCreateTorsoprintRequest dependentRequestCompatibility]::ourDependentRequestCompatibilityTable = 1;
    qword_1EB1F8D68 = objc_opt_class();
    *algn_1EB1F8D70 = vdupq_n_s64(1uLL);
    qword_1EB1F8D80 = objc_opt_class();
    unk_1EB1F8D88 = xmmword_1A6038B30;
    qword_1EB1F8D98 = objc_opt_class();
    unk_1EB1F8DA0 = xmmword_1A6038BA0;
    qword_1EB1F8DB0 = objc_opt_class();
    *algn_1EB1F8DB8 = 1;
    qword_1EB1F8DC8 = 0;
    unk_1EB1F8DD0 = 0;
    qword_1EB1F8DC0 = 0;
  }

  return &+[VNCreateTorsoprintRequest dependentRequestCompatibility]::ourDependentRequestCompatibilityTable;
}

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v8 = a4;
  VNValidatedLog(1, @"Processing Create Torsoprint request\n", v9, v10, v11, v12, v13, v14, v20);
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (a3 - 3737841666u <= 6 && ((1 << (a3 - 2)) & 0x71) != 0)
  {
    v17 = [(VNCreateTorsoprintRequest *)self _processHumanBodyBasedInputInContext:v8 revision:a3 torsosThatNeedNoProcessing:v15 torsosThatNeedTorsoprints:v16 error:a5];
  }

  else
  {
    if (a3 != 1)
    {
      if (a5)
      {
        [VNError errorForUnsupportedRevision:a3 ofRequestClass:objc_opt_class()];
        *a5 = v18 = 0;
        goto LABEL_11;
      }

LABEL_10:
      v18 = 0;
      goto LABEL_11;
    }

    v17 = [(VNCreateTorsoprintRequest *)self _processFaceBasedInputInContext:v8 revision:1 torsosThatNeedNoProcessing:v15 torsosThatNeedTorsoprints:v16 error:a5];
  }

  if (!v17)
  {
    goto LABEL_10;
  }

  v18 = 1;
LABEL_11:

  return v18;
}

- (id)detectHumanBodiesInContext:(id)a3 error:(id *)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(VNDetectHumanRectanglesRequest);
  [(VNDetectHumanRectanglesRequest *)v7 applyConfigurationOfRequest:self];
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

- (id)_processHumanBodyObservations:(id)a3 revision:(unint64_t)a4 regionOfInterest:(CGRect)a5 context:(id)a6 error:(id *)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v75[1] = *MEMORY[0x1E69E9840];
  v41 = a3;
  v42 = a6;
  v40 = [v42 requestPerformerAndReturnError:a7];
  if (!v40)
  {
    v35 = 0;
    goto LABEL_26;
  }

  v39 = [v42 imageBufferAndReturnError:a7];
  if (v39)
  {
    [v42 session];
    v38 = v73 = 0;
    v48 = [VNRequest applicableDetectorAndOptions:"applicableDetectorAndOptions:forRevision:loadedInSession:error:" forRevision:&v73 loadedInSession:a4 error:?];
    v49 = v73;
    if (!v48)
    {
      v35 = 0;
LABEL_24:

      goto LABEL_25;
    }

    v75[0] = v39;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:1];
    v37 = a7;
    [v49 setObject:v14 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

    v15 = [v42 qosClass];
    v16 = [v41 count];
    v45 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v16];
    v47 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v16];
    v71[0] = 0;
    v71[1] = v71;
    v71[2] = 0x3812000000;
    v71[3] = __Block_byref_object_copy__4891;
    v71[4] = __Block_byref_object_dispose__4892;
    v71[5] = "";
    v72 = 0;
    v46 = [(VNRequest *)self requestTasksQueue];
    v43 = dispatch_group_create();
    v17 = objc_opt_class();
    v18 = [v41 count];
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = v41;
    v19 = [obj countByEnumeratingWithState:&v67 objects:v74 count:16];
    if (v19)
    {
      v20 = *v68;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v68 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v67 + 1) + 8 * i);
          v23 = [v49 mutableCopy];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __99__VNCreateTorsoprintRequest__processHumanBodyObservations_revision_regionOfInterest_context_error___block_invoke;
          block[3] = &unk_1E77B2B68;
          v60 = v17;
          v66 = v15;
          v24 = v23;
          v52 = v24;
          v53 = v22;
          v25 = v48;
          v61 = x;
          v62 = y;
          v63 = width;
          v64 = height;
          v54 = v25;
          v55 = self;
          v59 = v71;
          v56 = v45;
          v57 = v47;
          v65 = v18;
          v26 = v46;
          v58 = v26;
          v27 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v15, 0, block);
          v28 = v27;
          if (v18 < 2)
          {
            (*(v27 + 2))(v27);
          }

          else
          {
            [v26 dispatchGroupAsyncByPreservingQueueCapacity:v43 block:v27];
          }
        }

        v19 = [obj countByEnumeratingWithState:&v67 objects:v74 count:16];
      }

      while (v19);
    }

    if (v18 < 2 || ([v46 dispatchGroupWait:v43 error:v37] & 1) != 0)
    {
      if ([VNValidationUtilities validateAsyncStatusResults:v47 error:v37])
      {
        v35 = v45;
LABEL_23:

        _Block_object_dispose(v71, 8);
        goto LABEL_24;
      }
    }

    else
    {
      VNValidatedLog(4, @"Timed out processing human observations: %@", v29, v30, v31, v32, v33, v34, obj);
    }

    v35 = 0;
    goto LABEL_23;
  }

  v35 = 0;
LABEL_25:

LABEL_26:

  return v35;
}

void __99__VNCreateTorsoprintRequest__processHumanBodyObservations_revision_regionOfInterest_context_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45[1] = *MEMORY[0x1E69E9840];
  VNValidatedLog(1, @"processOneHumanBodyBlock: start processing: %@", a3, a4, a5, a6, a7, a8, *(a1 + 96));
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__39;
  v43 = __Block_byref_object_dispose__40;
  v44 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __99__VNCreateTorsoprintRequest__processHumanBodyObservations_revision_regionOfInterest_context_error___block_invoke_41;
  aBlock[3] = &unk_1E77B2B40;
  v35 = *(a1 + 96);
  v38 = *(a1 + 144);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v34 = &v39;
  v11 = *(a1 + 48);
  v12 = *(a1 + 120);
  *&v13 = v11;
  *(&v13 + 1) = *(a1 + 56);
  v36 = *(a1 + 104);
  v37 = v12;
  *&v14 = v9;
  *(&v14 + 1) = v10;
  v32 = v14;
  v33 = v13;
  v15 = _Block_copy(aBlock);
  v16 = [*(a1 + 40) torsoprint];
  v17 = v16 == 0;

  if (v17)
  {
    v30 = 0;
    v22 = VNExecuteBlock(v15, &v30);
    v21 = v30;
  }

  else
  {
    v18 = [*(a1 + 40) vn_cloneObject];
    v45[0] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
    v20 = v40[5];
    v40[5] = v19;

    v21 = 0;
    v22 = 1;
  }

  v23 = [[VNAsyncStatus alloc] initWithStatus:v22 error:v21];
  os_unfair_lock_lock((*(*(a1 + 88) + 8) + 48));
  [*(a1 + 64) addObjectsFromArray:v40[5]];
  [*(a1 + 72) addObject:v23];
  os_unfair_lock_unlock((*(*(a1 + 88) + 8) + 48));
  VNValidatedLog(1, @"processOneHumanBodyBlock: finish processing: %@", v24, v25, v26, v27, v28, v29, *(a1 + 96));
  if (*(a1 + 136) >= 2uLL)
  {
    [*(a1 + 80) dispatchReportBlockCompletion];
  }

  _Block_object_dispose(&v39, 8);
}

BOOL __99__VNCreateTorsoprintRequest__processHumanBodyObservations_revision_regionOfInterest_context_error___block_invoke_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15[1] = *MEMORY[0x1E69E9840];
  VNValidatedLog(1, @"processHumanBodyBlock: start processing: %@", a3, a4, a5, a6, a7, a8, *(a1 + 72));
  v15[0] = *(a1 + 40);
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [*(a1 + 32) setObject:v10 forKeyedSubscript:@"VNTorsoprintGeneratorProcessOption_InputDetectedObjectObservation"];

  v11 = [*(a1 + 48) processUsingQualityOfServiceClass:*(a1 + 112) options:*(a1 + 32) regionOfInterest:*(a1 + 56) warningRecorder:a2 error:0 progressHandler:{*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
  v12 = *(*(a1 + 64) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  return *(*(*(a1 + 64) + 8) + 40) != 0;
}

- (BOOL)_processHumanBodyBasedInputInContext:(id)a3 revision:(unint64_t)a4 torsosThatNeedNoProcessing:(id)a5 torsosThatNeedTorsoprints:(id)a6 error:(id *)a7
{
  v10 = a3;
  v17 = 0;
  v11 = [(VNImageBasedRequest *)self getOptionalValidatedInputDetectedObjectObservations:&v17 forObservationClass:objc_opt_class() relationWithRegionOfInterest:1 error:a7];
  v12 = v17;
  v13 = v12;
  if (v11 && (v12 || ([(VNCreateTorsoprintRequest *)self detectHumanBodiesInContext:v10 error:a7], (v13 = objc_claimAutoreleasedReturnValue()) != 0)))
  {
    [(VNImageBasedRequest *)self regionOfInterest];
    v14 = [(VNCreateTorsoprintRequest *)self _processHumanBodyObservations:v13 revision:a4 regionOfInterest:v10 context:a7 error:?];
    v15 = v14 != 0;
    if (v14)
    {
      [(VNRequest *)self setResults:v14];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)_processFaceBasedInputInContext:(id)a3 revision:(unint64_t)a4 torsosThatNeedNoProcessing:(id)a5 torsosThatNeedTorsoprints:(id)a6 error:(id *)a7
{
  v10 = a3;
  v17 = 0;
  v11 = [(VNImageBasedRequest *)self getOptionalValidatedInputFaceObservations:&v17 clippedToRegionOfInterest:1 error:a7];
  v12 = v17;
  v13 = v12;
  if (v11 && (v12 || ([(VNRequest *)self detectFacesInContext:v10 error:a7], (v13 = objc_claimAutoreleasedReturnValue()) != 0)))
  {
    [(VNImageBasedRequest *)self regionOfInterest];
    v14 = [(VNRequest *)self processFaceObservations:v13 revision:a4 regionOfInterest:@"VNTorsoprintGeneratorDetectorType" detectorType:0 detectorOptions:&__block_literal_global_4914 shouldAlignFaceBBox:&__block_literal_global_30 shouldRunDetectorBlock:v10 context:a7 error:?];
    v15 = v14 != 0;
    if (v14)
    {
      [(VNRequest *)self setResults:v14];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

BOOL __129__VNCreateTorsoprintRequest__processFaceBasedInputInContext_revision_torsosThatNeedNoProcessing_torsosThatNeedTorsoprints_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 faceTorsoprint];
  v3 = [v2 torsoprint];
  v4 = v3 == 0;

  return v4;
}

+ (id)descriptionForPrivateRevision:(unint64_t)a3
{
  v5 = a3 - 3737841666u;
  if (a3 - 3737841666u < 7 && ((0x71u >> v5) & 1) != 0)
  {
    v6 = off_1E77B2B88[v5];
  }

  else
  {
    v9 = v3;
    v10 = v4;
    v8.receiver = a1;
    v8.super_class = &OBJC_METACLASS___VNCreateTorsoprintRequest;
    v6 = objc_msgSendSuper2(&v8, sel_descriptionForPrivateRevision_);
  }

  return v6;
}

+ (id)privateRevisionsSet
{
  if (+[VNCreateTorsoprintRequest(Revisioning) privateRevisionsSet]::onceToken != -1)
  {
    dispatch_once(&+[VNCreateTorsoprintRequest(Revisioning) privateRevisionsSet]::onceToken, &__block_literal_global_139);
  }

  v3 = +[VNCreateTorsoprintRequest(Revisioning) privateRevisionsSet]::ourPrivateRevisions;

  return v3;
}

uint64_t __61__VNCreateTorsoprintRequest_Revisioning__privateRevisionsSet__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  +[VNCreateTorsoprintRequest(Revisioning) privateRevisionsSet]::ourPrivateRevisions = VNRequestPrivateRevisionsSet(0xDECAF006uLL, a2, a3, a4, a5, a6, a7, a8, 3737841666);

  return MEMORY[0x1EEE66BB8]();
}

@end