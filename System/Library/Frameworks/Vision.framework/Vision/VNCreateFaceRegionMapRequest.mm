@interface VNCreateFaceRegionMapRequest
+ (const)dependentRequestCompatibility;
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (id)supportedComputeStageDevicesAndReturnError:(id *)error;
@end

@implementation VNCreateFaceRegionMapRequest

+ (const)dependentRequestCompatibility
{
  {
    +[VNCreateFaceRegionMapRequest dependentRequestCompatibility]::ourDependentRequestCompatibilityTable = 1;
    qword_1EB286790 = objc_opt_class();
    unk_1EB286798 = vdupq_n_s64(1uLL);
    qword_1EB2867A8 = objc_opt_class();
    *algn_1EB2867B0 = xmmword_1A6038B30;
    qword_1EB2867C0 = objc_opt_class();
    *algn_1EB2867C8 = 3;
    qword_1EB2867D8 = 0;
    unk_1EB2867E0 = 0;
    qword_1EB2867D0 = 0;
  }

  return &+[VNCreateFaceRegionMapRequest dependentRequestCompatibility]::ourDependentRequestCompatibilityTable;
}

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  contextCopy = context;
  VNValidatedLog(1, @"Processing Create FaceRegionMap request\n", v9, v10, v11, v12, v13, v14, v25);
  v26 = 0;
  v15 = [(VNImageBasedRequest *)self getOptionalValidatedInputFaceObservations:&v26 clippedToRegionOfInterest:1 error:error];
  v16 = v26;
  if (v15)
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (!v16 || (-[VNRequest categorizeFaceObservations:shouldRunDetectorBlock:facesThatNeedNoProcessing:facesThatNeedProcessing:facesThatNeed2DLandmarks:](self, "categorizeFaceObservations:shouldRunDetectorBlock:facesThatNeedNoProcessing:facesThatNeedProcessing:facesThatNeed2DLandmarks:", v16, &__block_literal_global_32, v17, v19, v18), [v18 count]))
    {
      if ([v18 count])
      {
        v20 = v18;
      }

      else
      {
        v20 = 0;
      }

      v21 = [(VNRequest *)self detectFaceLandmarksInContext:contextCopy faces:v20 error:error];
      if (!v21)
      {
        v23 = 0;
LABEL_14:

        goto LABEL_15;
      }

      [v19 addObjectsFromArray:v21];
    }

    [(VNImageBasedRequest *)self regionOfInterest];
    v22 = [(VNRequest *)self processFaceObservations:v19 revision:revision regionOfInterest:@"VNFaceRegionMapGeneratorType" detectorType:0 detectorOptions:&__block_literal_global_28132 shouldAlignFaceBBox:&__block_literal_global_32 shouldRunDetectorBlock:contextCopy context:error error:?];
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

BOOL __72__VNCreateFaceRegionMapRequest_internalPerformRevision_inContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 faceRegionMap];
  v3 = v2 == 0;

  return v3;
}

- (id)supportedComputeStageDevicesAndReturnError:(id *)error
{
  v5 = objc_alloc_init(VNDetectFaceLandmarksRequest);
  [(VNDetectFaceLandmarksRequest *)v5 applyConfigurationOfRequest:self];
  v6 = [(VNRequest *)v5 supportedComputeStageDevicesAndReturnError:error];

  return v6;
}

@end