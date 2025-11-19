@interface VNGenerateSemanticSegmentationCompoundRequest
+ (BOOL)warmUpSession:(id)a3 error:(id *)a4;
+ (Class)detectorForPersonInstanceRequestAndReturnError:(id *)a3;
+ (Class)detectorForSemanticSegmentationRequestAndReturnError:(id *)a3;
+ (id)compoundRequestsForOriginalRequests:(id)a3 withPerformingContext:(id)a4 error:(id *)a5;
+ (id)detectorTypeForPersonInstanceRequest;
+ (id)detectorTypeForSemanticSegmentationRequest;
+ (int64_t)compoundRequestRevisionForRequest:(id)a3;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (VNGenerateSemanticSegmentationCompoundRequest)initWithOriginalRequests:(id)a3;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4;
@end

@implementation VNGenerateSemanticSegmentationCompoundRequest

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v23 = a4;
  v24 = [v23 session];
  v8 = [v23 imageBufferAndReturnError:a5];
  if (v8 && [(VNRequest *)self validateImageBuffer:v8 ofNonZeroWidth:0 andHeight:0 error:a5])
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__34519;
    v37 = __Block_byref_object_dispose__34520;
    v38 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __89__VNGenerateSemanticSegmentationCompoundRequest_internalPerformRevision_inContext_error___block_invoke;
    aBlock[3] = &unk_1E77B66D0;
    aBlock[4] = self;
    v32 = a3;
    v28 = v24;
    v20 = v8;
    v29 = v8;
    v31 = &v33;
    v9 = v23;
    v30 = v9;
    v21 = _Block_copy(aBlock);
    v22 = VNExecuteBlock(v21, a5);
    if (v22)
    {
      [(VNCompoundRequest *)self recordWarningsInOriginalRequests];
      v10 = v34[5];
      v11 = v9;
      if (self)
      {
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v12 = [(VNCompoundRequest *)self originalRequests];
        obj = v12;
        v13 = [v12 countByEnumeratingWithState:&v39 objects:v43 count:16];
        if (v13)
        {
          v14 = *v40;
          v25 = *MEMORY[0x1E695D930];
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v40 != v14)
              {
                objc_enumerationMutation(obj);
              }

              v16 = *(*(&v39 + 1) + 8 * i);
              v17 = [VNE5RTSegmentationMultiGenerator requestInfoForRequest:v16];
              if (!v17)
              {
                [MEMORY[0x1E695DF30] raise:v25 format:{@"The request class %@ shall have it's results populated in the results array", objc_opt_class()}];
              }

              v18 = [v10 objectAtIndexedSubscript:{objc_msgSend(v17, "originalRequestResultsIndex")}];
              [v16 setResults:v18];

              [v11 cacheObservationsOfRequest:v16];
            }

            v12 = obj;
            v13 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
          }

          while (v13);
        }
      }
    }

    _Block_object_dispose(&v33, 8);
    v8 = v20;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

BOOL __89__VNGenerateSemanticSegmentationCompoundRequest_internalPerformRevision_inContext_error___block_invoke(uint64_t a1, uint64_t a2)
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

- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4
{
  switch(a3)
  {
    case 3uLL:
      v5 = @"VNE5RTSegmentationMultiGeneratorType";
      v6 = @"VNE5RTSegmentationMultiGeneratorType";
      break;
    case 2uLL:
      v4 = [VNGenerateSemanticSegmentationCompoundRequest detectorTypeForPersonInstanceRequest:2];
      goto LABEL_6;
    case 1uLL:
      v4 = [VNGenerateSemanticSegmentationCompoundRequest detectorTypeForSemanticSegmentationRequest:1];
LABEL_6:
      v5 = v4;
      break;
    default:
      if (a4)
      {
        [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequest:" ofRequest:?];
        *a4 = v5 = 0;
      }

      else
      {
        v5 = 0;
      }

      break;
  }

  return v5;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4
{
  v112 = *MEMORY[0x1E69E9840];
  v108.receiver = self;
  v108.super_class = VNGenerateSemanticSegmentationCompoundRequest;
  v72 = [(VNRequest *)&v108 newDefaultDetectorOptionsForRequestRevision:a3 session:a4];
  v6 = 0x1E695D000uLL;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = objc_opt_class();
  v88 = __101__VNGenerateSemanticSegmentationCompoundRequest_newDefaultDetectorOptionsForRequestRevision_session___block_invoke(1, 1, v9);
  v85 = __101__VNGenerateSemanticSegmentationCompoundRequest_newDefaultDetectorOptionsForRequestRevision_session___block_invoke(2, 1, v9);
  v83 = __101__VNGenerateSemanticSegmentationCompoundRequest_newDefaultDetectorOptionsForRequestRevision_session___block_invoke(4, 1, v9);
  v79 = __101__VNGenerateSemanticSegmentationCompoundRequest_newDefaultDetectorOptionsForRequestRevision_session___block_invoke(8, 1, v9);
  v78 = __101__VNGenerateSemanticSegmentationCompoundRequest_newDefaultDetectorOptionsForRequestRevision_session___block_invoke(16, 1, v9);
  v77 = __101__VNGenerateSemanticSegmentationCompoundRequest_newDefaultDetectorOptionsForRequestRevision_session___block_invoke(32, 1, v9);
  v75 = __101__VNGenerateSemanticSegmentationCompoundRequest_newDefaultDetectorOptionsForRequestRevision_session___block_invoke(64, 1, v9);
  v10 = objc_opt_class();
  v87 = __101__VNGenerateSemanticSegmentationCompoundRequest_newDefaultDetectorOptionsForRequestRevision_session___block_invoke(1, 2, v10);
  v86 = __101__VNGenerateSemanticSegmentationCompoundRequest_newDefaultDetectorOptionsForRequestRevision_session___block_invoke(2, 2, v10);
  v84 = __101__VNGenerateSemanticSegmentationCompoundRequest_newDefaultDetectorOptionsForRequestRevision_session___block_invoke(4, 2, v10);
  v82 = __101__VNGenerateSemanticSegmentationCompoundRequest_newDefaultDetectorOptionsForRequestRevision_session___block_invoke(8, 2, v10);
  v80 = __101__VNGenerateSemanticSegmentationCompoundRequest_newDefaultDetectorOptionsForRequestRevision_session___block_invoke(16, 2, v10);
  v81 = __101__VNGenerateSemanticSegmentationCompoundRequest_newDefaultDetectorOptionsForRequestRevision_session___block_invoke(32, 2, v10);
  v76 = __101__VNGenerateSemanticSegmentationCompoundRequest_newDefaultDetectorOptionsForRequestRevision_session___block_invoke(64, 2, v10);
  v73 = __101__VNGenerateSemanticSegmentationCompoundRequest_newDefaultDetectorOptionsForRequestRevision_session___block_invoke(128, 2, v10);
  v74 = __101__VNGenerateSemanticSegmentationCompoundRequest_newDefaultDetectorOptionsForRequestRevision_session___block_invoke(256, 2, v10);
  if (a3 == 1)
  {
    [v7 setObject:&unk_1F19C1BD0 forKey:v88];
    [v7 setObject:&unk_1F19C1BD0 forKey:v85];
    [v7 setObject:&unk_1F19C1BD0 forKey:v83];
    [v7 setObject:&unk_1F19C1BD0 forKey:v79];
    [v7 setObject:&unk_1F19C1BD0 forKey:v78];
    [v7 setObject:&unk_1F19C1BD0 forKey:v77];
    [v7 setObject:&unk_1F19C1BD0 forKey:v75];
    [v8 setObject:MEMORY[0x1E695E110] forKey:v88];
    [v8 setObject:MEMORY[0x1E695E110] forKey:v85];
    [v8 setObject:MEMORY[0x1E695E110] forKey:v83];
    [v8 setObject:MEMORY[0x1E695E110] forKey:v79];
    [v8 setObject:MEMORY[0x1E695E110] forKey:v78];
    [v8 setObject:MEMORY[0x1E695E110] forKey:v77];
    v11 = v75;
LABEL_14:
    [v8 setObject:MEMORY[0x1E695E110] forKey:{v11, v72}];
    goto LABEL_15;
  }

  if (a3 != 2)
  {
    if (a3 != 3)
    {
      goto LABEL_15;
    }

    [v7 setObject:&unk_1F19C1BD0 forKey:v87];
    [v7 setObject:&unk_1F19C1BD0 forKey:v86];
    [v7 setObject:&unk_1F19C1BD0 forKey:v84];
    [v7 setObject:&unk_1F19C1BD0 forKey:v82];
    [v7 setObject:&unk_1F19C1BD0 forKey:v80];
    [v7 setObject:&unk_1F19C1BD0 forKey:v81];
    [v7 setObject:&unk_1F19C1BD0 forKey:v76];
    [v7 setObject:&unk_1F19C1BD0 forKey:v73];
    [v7 setObject:&unk_1F19C1BD0 forKey:v74];
    [v8 setObject:MEMORY[0x1E695E110] forKey:v87];
    [v8 setObject:MEMORY[0x1E695E110] forKey:v86];
    [v8 setObject:MEMORY[0x1E695E110] forKey:v84];
    [v8 setObject:MEMORY[0x1E695E110] forKey:v82];
    [v8 setObject:MEMORY[0x1E695E110] forKey:v80];
    [v8 setObject:MEMORY[0x1E695E110] forKey:v81];
    [v8 setObject:MEMORY[0x1E695E110] forKey:v76];
    [v8 setObject:MEMORY[0x1E695E110] forKey:v73];
    v11 = v74;
    goto LABEL_14;
  }

  v12 = [VNGenerateSemanticSegmentationCompoundRequest detectorForPersonInstanceRequestAndReturnError:0];
  [VNError VNAssert:v12 != 0 log:@"Cannot determine segmentation detector type"];
  [(objc_class *)v12 outputMaskBlobNames];
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v13 = v105 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v104 objects:v111 count:16];
  if (v14)
  {
    v15 = *v105;
    v16 = MEMORY[0x1E695E110];
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v105 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v104 + 1) + 8 * i);
        [v7 setObject:&unk_1F19C1BD0 forKey:{v18, v72}];
        [v8 setObject:v16 forKey:v18];
      }

      v14 = [v13 countByEnumeratingWithState:&v104 objects:v111 count:16];
    }

    while (v14);
  }

  v6 = 0x1E695D000;
LABEL_15:
  v91 = objc_alloc_init(*(v6 + 3984));
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  obj = [(VNCompoundRequest *)self originalRequests];
  v92 = [obj countByEnumeratingWithState:&v100 objects:v110 count:16];
  if (v92)
  {
    v93 = 0;
    v90 = *v101;
    v19 = 0;
    while (1)
    {
      for (j = 0; j != v92; ++j)
      {
        if (*v101 != v90)
        {
          objc_enumerationMutation(obj);
        }

        v95 = *(*(&v100 + 1) + 8 * j);
        v20 = [v95 resolvedRevision];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = v95;
          v22 = @"VNSegmentationGeneratorProcessOption_PersonSegmentationDetectorOriginatingRequestSpecifier";
          switch(v20)
          {
            case 1:
              v45 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v21, "outputPixelFormat")}];
              [v7 setObject:v45 forKeyedSubscript:v88];

              v46 = [MEMORY[0x1E696AD98] numberWithBool:-[VNGeneratePersonSegmentationRequest keepRawOutputMask](v21)];
              [v8 setObject:v46 forKeyedSubscript:v88];

LABEL_42:
              v44 = v93 | 1;
              break;
            case 3737841664:
              v34 = [VNGenerateSemanticSegmentationCompoundRequest detectorForPersonInstanceRequestAndReturnError:0];
              [VNError VNAssert:v34 != 0 log:@"Cannot determine segmentation detector type"];
              v35 = [(objc_class *)v34 outputMaskBlobNames];
              v98 = 0u;
              v99 = 0u;
              v96 = 0u;
              v97 = 0u;
              v36 = v35;
              v37 = [v36 countByEnumeratingWithState:&v96 objects:v109 count:16];
              if (v37)
              {
                v38 = *v97;
                do
                {
                  for (k = 0; k != v37; ++k)
                  {
                    if (*v97 != v38)
                    {
                      objc_enumerationMutation(v36);
                    }

                    v40 = *(*(&v96 + 1) + 8 * k);
                    v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v21, "outputPixelFormat")}];
                    [v7 setObject:v41 forKey:v40];

                    v42 = [MEMORY[0x1E696AD98] numberWithBool:-[VNGeneratePersonSegmentationRequest keepRawOutputMask](v21)];
                    [v8 setObject:v42 forKey:v40];
                  }

                  v37 = [v36 countByEnumeratingWithState:&v96 objects:v109 count:16];
                }

                while (v37);
              }

              [v21 minimumConfidence];
              v19 = v43;

              v44 = v93 | 0xF;
              break;
            case 3737841665:
              v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v21, "outputPixelFormat")}];
              [v7 setObject:v23 forKeyedSubscript:v87];

              v24 = [MEMORY[0x1E696AD98] numberWithBool:-[VNGeneratePersonSegmentationRequest keepRawOutputMask](v21)];
              [v8 setObject:v24 forKeyedSubscript:v87];

              goto LABEL_42;
            default:
LABEL_44:

              v47 = @"VNSegmentationGeneratorProcessOption_PersonSegmentationDetectorOriginatingRequestSpecifier";
              goto LABEL_62;
          }

          v93 = v44;
          goto LABEL_44;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = @"VNSegmentationGeneratorProcessOption_SkySegmentationDetectorOriginatingRequestSpecifier";
          if (v20 == 3737841664)
          {
            v51 = v95;
            v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v51, "outputPixelFormat")}];
            [v7 setObject:v52 forKeyedSubscript:v86];

            [v8 setObject:MEMORY[0x1E695E110] forKeyedSubscript:v86];
LABEL_50:
          }

          else if (v20 == 1)
          {
            v26 = v95;
            v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v26, "outputPixelFormat")}];
            [v7 setObject:v27 forKeyedSubscript:v85];

            [v8 setObject:MEMORY[0x1E695E110] forKeyedSubscript:v85];
            goto LABEL_50;
          }

          v93 |= 2uLL;
          v47 = @"VNSegmentationGeneratorProcessOption_SkySegmentationDetectorOriginatingRequestSpecifier";
          goto LABEL_62;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28 = @"VNSegmentationGeneratorProcessOption_HumanAttributesSegmentationDetectorOriginatingRequestSpecifier";
          if (v20 == 3737841664)
          {
            v57 = v95;
            v58 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v57, "outputPixelFormat")}];
            [v7 setObject:v58 forKeyedSubscript:v84];

            [v8 setObject:MEMORY[0x1E695E110] forKeyedSubscript:v84];
            v59 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v57, "outputPixelFormat")}];
            [v7 setObject:v59 forKeyedSubscript:v82];

            [v8 setObject:MEMORY[0x1E695E110] forKeyedSubscript:v82];
            v60 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v57, "outputPixelFormat")}];
            [v7 setObject:v60 forKeyedSubscript:v80];

            [v8 setObject:MEMORY[0x1E695E110] forKeyedSubscript:v80];
            v61 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v57, "outputPixelFormat")}];
            [v7 setObject:v61 forKeyedSubscript:v81];

            [v8 setObject:MEMORY[0x1E695E110] forKeyedSubscript:v81];
LABEL_56:
          }

          else if (v20 == 1)
          {
            v29 = v95;
            v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v29, "outputPixelFormat")}];
            [v7 setObject:v30 forKeyedSubscript:v83];

            [v8 setObject:MEMORY[0x1E695E110] forKeyedSubscript:v83];
            v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v29, "outputPixelFormat")}];
            [v7 setObject:v31 forKeyedSubscript:v79];

            [v8 setObject:MEMORY[0x1E695E110] forKeyedSubscript:v79];
            v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v29, "outputPixelFormat")}];
            [v7 setObject:v32 forKeyedSubscript:v78];

            [v8 setObject:MEMORY[0x1E695E110] forKeyedSubscript:v78];
            v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v29, "outputPixelFormat")}];
            [v7 setObject:v33 forKeyedSubscript:v77];

            [v8 setObject:MEMORY[0x1E695E110] forKeyedSubscript:v77];
            goto LABEL_56;
          }

          v93 |= 0x3CuLL;
          v47 = @"VNSegmentationGeneratorProcessOption_HumanAttributesSegmentationDetectorOriginatingRequestSpecifier";
          goto LABEL_62;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v48 = @"VNSegmentationGeneratorProcessOption_GlassesSegmentationDetectorOriginatingRequestSpecifier";
          if (v20 == 3737841664)
          {
            v62 = v95;
            v63 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v62, "outputPixelFormat")}];
            [v7 setObject:v63 forKeyedSubscript:v76];

            [v8 setObject:MEMORY[0x1E695E110] forKeyedSubscript:v76];
LABEL_60:
          }

          else if (v20 == 1)
          {
            v49 = v95;
            v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v49, "outputPixelFormat")}];
            [v7 setObject:v50 forKeyedSubscript:v75];

            [v8 setObject:MEMORY[0x1E695E110] forKeyedSubscript:v75];
            goto LABEL_60;
          }

          v93 |= 0x40uLL;
          v47 = @"VNSegmentationGeneratorProcessOption_GlassesSegmentationDetectorOriginatingRequestSpecifier";
          goto LABEL_62;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v47 = @"VNSegmentationGeneratorProcessOption_AnimalSegmentationDetectorOriginatingRequestSpecifier";
          v53 = @"VNSegmentationGeneratorProcessOption_AnimalSegmentationDetectorOriginatingRequestSpecifier";
          if (v20 == 1)
          {
            v54 = v95;
            v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v54, "outputPixelFormat")}];
            [v7 setObject:v55 forKeyedSubscript:v73];

            [v8 setObject:MEMORY[0x1E695E110] forKeyedSubscript:v73];
            v56 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v54, "outputPixelFormat")}];
            [v7 setObject:v56 forKeyedSubscript:v74];

            [v8 setObject:MEMORY[0x1E695E110] forKeyedSubscript:v74];
            v93 |= 0x180uLL;
            v47 = @"VNSegmentationGeneratorProcessOption_AnimalSegmentationDetectorOriginatingRequestSpecifier";
          }
        }

        else
        {
          v47 = 0;
        }

LABEL_62:
        v64 = [v95 originatingRequestSpecifier];
        [v91 setObject:v64 forKey:v47];
      }

      v92 = [obj countByEnumeratingWithState:&v100 objects:v110 count:16];
      if (!v92)
      {
        goto LABEL_66;
      }
    }
  }

  v93 = 0;
  v19 = 0;
LABEL_66:

  v65 = [v7 copy];
  [v72 setObject:v65 forKeyedSubscript:@"VNSegmentationGeneratorProcessOption_OutputPixelFormat"];

  v66 = [v8 copy];
  [v72 setObject:v66 forKeyedSubscript:@"VNSegmentationGeneratorProcessOption_KeepRawOutputMask"];

  LODWORD(v67) = v19;
  v68 = [MEMORY[0x1E696AD98] numberWithFloat:v67];
  [v72 setObject:v68 forKeyedSubscript:@"VNSegmentationGeneratorProcessOption_MinimumConfidence"];

  v69 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v93];
  [v72 setObject:v69 forKeyedSubscript:@"VNSegmentationGeneratorProcessOption_ObjectClassIDs"];

  v70 = [v91 copy];
  [v72 setObject:v70 forKeyedSubscript:@"VNSegmentationGeneratorProcessOption_OriginalRequestSpecifiers"];

  return v72;
}

id __101__VNGenerateSemanticSegmentationCompoundRequest_newDefaultDetectorOptionsForRequestRevision_session___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 objectClassOutputNamesForObjectClassIDs:a1 modelVersion:a2 error:0];
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Cannot find output name for %lu", a1];
  [VNError VNAssert:v4 != 0 log:v5];
  v6 = [v4 firstObject];

  return v6;
}

- (VNGenerateSemanticSegmentationCompoundRequest)initWithOriginalRequests:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = VNGenerateSemanticSegmentationCompoundRequest;
  v5 = [(VNCompoundRequest *)&v14 initWithOriginalRequests:v4];
  if (v5)
  {
    v6 = [v4 objectAtIndexedSubscript:0];
    v7 = [VNGenerateSemanticSegmentationCompoundRequest compoundRequestRevisionForRequest:v6];

    v13 = 0;
    v8 = [(VNRequest *)v5 setRevision:v7 error:&v13];
    v9 = v13;
    if (v8)
    {
      v10 = [(VNRequest *)v5 configuration];
      [v10 setResolvedRevision:v7];
      v11 = v5;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (Class)detectorForSemanticSegmentationRequestAndReturnError:(id *)a3
{
  v4 = [a1 detectorTypeForSemanticSegmentationRequest];
  if (([v4 isEqualToString:@"VNE5RTSegmentationMultiGeneratorType"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"VNPersonSegmentationGeneratorSemanticsType"))
  {
    a3 = objc_opt_class();
  }

  else if (a3)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Cannot find detector class for detector type: %@", v4];
    *a3 = [VNError errorForInternalErrorWithLocalizedDescription:v6];

    a3 = 0;
  }

  return a3;
}

+ (id)detectorTypeForSemanticSegmentationRequest
{
  if (+[VNGenerateSemanticSegmentationCompoundRequest detectorTypeForSemanticSegmentationRequest]::onceToken != -1)
  {
    dispatch_once(&+[VNGenerateSemanticSegmentationCompoundRequest detectorTypeForSemanticSegmentationRequest]::onceToken, &__block_literal_global_84_34570);
  }

  v3 = +[VNGenerateSemanticSegmentationCompoundRequest detectorTypeForSemanticSegmentationRequest]::semanticSegmentationDetectorType;

  return v3;
}

void __91__VNGenerateSemanticSegmentationCompoundRequest_detectorTypeForSemanticSegmentationRequest__block_invoke()
{
  if (VisionCoreHasANE())
  {
    v0 = @"VNE5RTSegmentationMultiGeneratorType";
  }

  else
  {
    v0 = @"VNPersonSegmentationGeneratorSemanticsType";
  }

  objc_storeStrong(&+[VNGenerateSemanticSegmentationCompoundRequest detectorTypeForSemanticSegmentationRequest]::semanticSegmentationDetectorType, v0);
}

+ (Class)detectorForPersonInstanceRequestAndReturnError:(id *)a3
{
  v4 = [a1 detectorTypeForPersonInstanceRequest];
  if (([v4 isEqualToString:@"VNE5RTSegmentationMultiGeneratorType"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"VNPersonSegmentationGeneratorInstanceBased4PeopleType"))
  {
    a3 = objc_opt_class();
  }

  else if (a3)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Cannot find detector class for detector type: %@", v4];
    *a3 = [VNError errorForInternalErrorWithLocalizedDescription:v6];

    a3 = 0;
  }

  return a3;
}

+ (id)detectorTypeForPersonInstanceRequest
{
  if (+[VNGenerateSemanticSegmentationCompoundRequest detectorTypeForPersonInstanceRequest]::onceToken != -1)
  {
    dispatch_once(&+[VNGenerateSemanticSegmentationCompoundRequest detectorTypeForPersonInstanceRequest]::onceToken, &__block_literal_global_77);
  }

  v3 = +[VNGenerateSemanticSegmentationCompoundRequest detectorTypeForPersonInstanceRequest]::personInstanceDetectorType;

  return v3;
}

void __85__VNGenerateSemanticSegmentationCompoundRequest_detectorTypeForPersonInstanceRequest__block_invoke()
{
  if (VisionCoreCurrentANEGeneration() <= 12)
  {
    v0 = @"VNPersonSegmentationGeneratorInstanceBased4PeopleType";
  }

  else
  {
    v0 = @"VNE5RTSegmentationMultiGeneratorType";
  }

  objc_storeStrong(&+[VNGenerateSemanticSegmentationCompoundRequest detectorTypeForPersonInstanceRequest]::personInstanceDetectorType, v0);
}

+ (BOOL)warmUpSession:(id)a3 error:(id *)a4
{
  v31[5] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc_init(VNGeneratePersonSegmentationRequest);
  v7 = objc_alloc_init(VNGenerateSkySegmentationRequest);
  v8 = objc_alloc_init(VNGenerateHumanAttributesSegmentationRequest);
  v9 = objc_alloc_init(VNGenerateGlassesSegmentationRequest);
  v31[0] = v6;
  v31[1] = v8;
  v31[2] = v7;
  v31[3] = v9;
  v25 = objc_alloc_init(VNGenerateAnimalSegmentationRequest);
  v31[4] = v25;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:5];
  v11 = objc_alloc_init(VNRequestPerformer);
  v12 = [[VNRequestPerformingContext alloc] initWithSession:v5 requestPerformer:v11 imageBuffer:0 forensics:0 observationsCache:0];
  [(VNRequestPerformingContext *)v12 qosClass];
  v13 = [VNGenerateSemanticSegmentationCompoundRequest compoundRequestsForOriginalRequests:v10 withPerformingContext:v12 error:a4];
  v14 = v13;
  if (v13)
  {
    v23 = v9;
    v24 = v8;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v16)
    {
      v21 = v7;
      v22 = v6;
      v17 = *v27;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(v15);
          }

          if (([*(*(&v26 + 1) + 8 * i) warmUpSession:v5 error:a4] & 1) == 0)
          {
            v19 = 0;
            goto LABEL_12;
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }

      v19 = 1;
LABEL_12:
      v7 = v21;
      v6 = v22;
    }

    else
    {
      v19 = 1;
    }

    v9 = v23;
    v8 = v24;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)compoundRequestsForOriginalRequests:(id)a3 withPerformingContext:(id)a4 error:(id *)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v34 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v34;
  v7 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v7)
  {
    v8 = *v40;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v39 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  continue;
                }
              }
            }
          }
        }

        v11 = v10;
        v12 = [v11 qualityLevel] == 1;

        if (v12)
        {
          v13 = [a1 compoundRequestRevisionForRequest:v10];
          if (!v13)
          {
            if (a5)
            {
              v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"VNGenerateSemanticSegmentationCompoundRequest unimplemented revision/options for %@", v10];
              *a5 = [VNError errorForInternalErrorWithLocalizedDescription:v32];
            }

            v30 = 0;
            v31 = obj;
            goto LABEL_33;
          }

          [v10 regionOfInterest];
          v18 = v17;
          if (v17 == 0.0)
          {
            v18 = 0.0;
          }

          v19 = v14;
          if (v14 == 0.0)
          {
            v19 = 0.0;
          }

          v20 = *&v19 ^ __ROR8__(*&v18, 51);
          v21 = v15;
          if (v15 == 0.0)
          {
            v21 = 0.0;
          }

          v22 = *&v21 ^ __ROR8__(v20, 51);
          v23 = v16;
          if (v16 == 0.0)
          {
            v23 = 0.0;
          }

          v24 = *&v23 ^ __ROR8__(v22, 51) ^ __ROR8__(v13, 51);
          v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v24];
          v26 = [v6 objectForKey:v25];

          if (!v26)
          {
            v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v24];
            [v6 setObject:v27 forKeyedSubscript:v28];

            v26 = v27;
          }

          [v26 addObject:v10];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  if ([v6 count])
  {
    v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __113__VNGenerateSemanticSegmentationCompoundRequest_compoundRequestsForOriginalRequests_withPerformingContext_error___block_invoke;
    v37[3] = &unk_1E77B61F0;
    v30 = v29;
    v38 = v30;
    [v6 enumerateKeysAndObjectsUsingBlock:v37];
    v31 = v38;
LABEL_33:
  }

  else
  {
    v30 = MEMORY[0x1E695E0F0];
  }

  return v30;
}

void __113__VNGenerateSemanticSegmentationCompoundRequest_compoundRequestsForOriginalRequests_withPerformingContext_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v4 = [[VNGenerateSemanticSegmentationCompoundRequest alloc] initWithOriginalRequests:v5];
  [*(a1 + 32) addObject:v4];
}

+ (int64_t)compoundRequestRevisionForRequest:(id)a3
{
  v3 = a3;
  if (+[VNGenerateSemanticSegmentationCompoundRequest compoundRequestRevisionForRequest:]::onceToken != -1)
  {
    dispatch_once(&+[VNGenerateSemanticSegmentationCompoundRequest compoundRequestRevisionForRequest:]::onceToken, &__block_literal_global_34582);
  }

  v4 = [+[VNGenerateSemanticSegmentationCompoundRequest compoundRequestRevisionForRequest:]::requestClassToDictionaryRequestRevisionToCompoundRequestRevision objectForKey:{objc_msgSend(v3, "frameworkClass")}];
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

void __83__VNGenerateSemanticSegmentationCompoundRequest_compoundRequestRevisionForRequest___block_invoke()
{
  v21[3] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v1 = +[VNGenerateSemanticSegmentationCompoundRequest compoundRequestRevisionForRequest:]::requestClassToDictionaryRequestRevisionToCompoundRequestRevision;
  +[VNGenerateSemanticSegmentationCompoundRequest compoundRequestRevisionForRequest:]::requestClassToDictionaryRequestRevisionToCompoundRequestRevision = v0;

  v2 = +[VNGenerateSemanticSegmentationCompoundRequest compoundRequestRevisionForRequest:]::requestClassToDictionaryRequestRevisionToCompoundRequestRevision;
  v20[0] = &unk_1F19C1B58;
  v20[1] = &unk_1F19C1B70;
  v21[0] = &unk_1F19C1B58;
  v21[1] = &unk_1F19C1B88;
  v20[2] = &unk_1F19C1BA0;
  v21[2] = &unk_1F19C1BB8;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];
  [v2 setObject:v3 forKey:objc_opt_class()];

  v4 = +[VNGenerateSemanticSegmentationCompoundRequest compoundRequestRevisionForRequest:]::requestClassToDictionaryRequestRevisionToCompoundRequestRevision;
  v18[0] = &unk_1F19C1B58;
  v18[1] = &unk_1F19C1B70;
  v19[0] = &unk_1F19C1B58;
  v19[1] = &unk_1F19C1BB8;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  [v4 setObject:v5 forKey:objc_opt_class()];

  v6 = +[VNGenerateSemanticSegmentationCompoundRequest compoundRequestRevisionForRequest:]::requestClassToDictionaryRequestRevisionToCompoundRequestRevision;
  v16[0] = &unk_1F19C1B58;
  v16[1] = &unk_1F19C1B70;
  v17[0] = &unk_1F19C1B58;
  v17[1] = &unk_1F19C1BB8;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  [v6 setObject:v7 forKey:objc_opt_class()];

  v8 = +[VNGenerateSemanticSegmentationCompoundRequest compoundRequestRevisionForRequest:]::requestClassToDictionaryRequestRevisionToCompoundRequestRevision;
  v14[0] = &unk_1F19C1B58;
  v14[1] = &unk_1F19C1B70;
  v15[0] = &unk_1F19C1B58;
  v15[1] = &unk_1F19C1BB8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  [v8 setObject:v9 forKey:objc_opt_class()];

  v10 = +[VNGenerateSemanticSegmentationCompoundRequest compoundRequestRevisionForRequest:]::requestClassToDictionaryRequestRevisionToCompoundRequestRevision;
  v12 = &unk_1F19C1B58;
  v13 = &unk_1F19C1BB8;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  [v10 setObject:v11 forKey:objc_opt_class()];
}

@end