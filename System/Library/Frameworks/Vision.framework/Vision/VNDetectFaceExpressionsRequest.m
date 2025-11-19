@interface VNDetectFaceExpressionsRequest
+ (const)dependentRequestCompatibility;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
@end

@implementation VNDetectFaceExpressionsRequest

+ (const)dependentRequestCompatibility
{
  {
    +[VNDetectFaceExpressionsRequest dependentRequestCompatibility]::ourDependentRequestCompatibilityTable = 1;
    qword_1EB1F8FA0 = objc_opt_class();
    unk_1EB1F8FA8 = vdupq_n_s64(1uLL);
    qword_1EB1F8FB8 = objc_opt_class();
    unk_1EB1F8FC0 = xmmword_1A6038B30;
    qword_1EB1F8FD0 = objc_opt_class();
    *algn_1EB1F8FD8 = 3;
    qword_1EB1F8FE8 = 0;
    unk_1EB1F8FF0 = 0;
    qword_1EB1F8FE0 = 0;
  }

  return &+[VNDetectFaceExpressionsRequest dependentRequestCompatibility]::ourDependentRequestCompatibilityTable;
}

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v8 = a4;
  VNValidatedLog(1, @"Processing DetectFaceExpressions request\n", v9, v10, v11, v12, v13, v14, v25);
  v26 = 0;
  v15 = [(VNImageBasedRequest *)self getOptionalValidatedInputFaceObservations:&v26 clippedToRegionOfInterest:1 error:a5];
  v16 = v26;
  if (v15)
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (!v16 || (-[VNRequest categorizeFaceObservations:shouldRunDetectorBlock:facesThatNeedNoProcessing:facesThatNeedProcessing:facesThatNeed2DLandmarks:](self, "categorizeFaceObservations:shouldRunDetectorBlock:facesThatNeedNoProcessing:facesThatNeedProcessing:facesThatNeed2DLandmarks:", v16, &__block_literal_global_33_34445, v17, v19, v18), [v18 count]))
    {
      if ([v18 count])
      {
        v20 = v18;
      }

      else
      {
        v20 = 0;
      }

      v21 = [(VNRequest *)self detectFaceLandmarksInContext:v8 faces:v20 error:a5];
      if (!v21)
      {
        v23 = 0;
LABEL_14:

        goto LABEL_15;
      }

      [v19 addObjectsFromArray:v21];
    }

    [(VNImageBasedRequest *)self regionOfInterest];
    v22 = [(VNRequest *)self processFaceObservations:v19 revision:a3 regionOfInterest:@"VNFaceExpressionDetectorType" detectorType:0 detectorOptions:&__block_literal_global_34444 shouldAlignFaceBBox:&__block_literal_global_33_34445 shouldRunDetectorBlock:v8 context:a5 error:?];
    v23 = v22 != 0;
    if (v22)
    {
      [v17 addObjectsFromArray:v22];
      [(VNRequest *)self setResults:v17];
    }

    goto LABEL_14;
  }

  v23 = 0;
LABEL_15:

  return v23;
}

BOOL __74__VNDetectFaceExpressionsRequest_internalPerformRevision_inContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 landmarks3d];
  v3 = v2 == 0;

  return v3;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4
{
  if (a3 == 1)
  {
    v4 = @"VNFaceExpressionDetectorType";
    v5 = @"VNFaceExpressionDetectorType";
  }

  else if (a4)
  {
    [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequest:" ofRequest:?];
    *a4 = v4 = 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end