@interface VNDetectFace3DLandmarksRequest
+ (const)dependentRequestCompatibility;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
@end

@implementation VNDetectFace3DLandmarksRequest

+ (const)dependentRequestCompatibility
{
  {
    +[VNDetectFace3DLandmarksRequest dependentRequestCompatibility]::ourDependentRequestCompatibilityTable = 1;
    qword_1EB286580 = objc_opt_class();
    unk_1EB286588 = vdupq_n_s64(1uLL);
    qword_1EB286598 = objc_opt_class();
    unk_1EB2865A0 = xmmword_1A6038B30;
    qword_1EB2865B0 = objc_opt_class();
    *algn_1EB2865B8 = 3;
    qword_1EB2865C8 = 0;
    unk_1EB2865D0 = 0;
    qword_1EB2865C0 = 0;
  }

  return &+[VNDetectFace3DLandmarksRequest dependentRequestCompatibility]::ourDependentRequestCompatibilityTable;
}

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v8 = a4;
  VNValidatedLog(1, @"Processing DetectFace3DLandmarks request\n", v9, v10, v11, v12, v13, v14, v34);
  v39 = 0;
  v15 = [(VNImageBasedRequest *)self getOptionalValidatedInputFaceObservations:&v39 clippedToRegionOfInterest:1 error:a5];
  v16 = v39;
  if (v15)
  {
    v35 = a3;
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v36 = v17;
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (!v16 || (-[VNRequest categorizeFaceObservations:shouldRunDetectorBlock:facesThatNeedNoProcessing:facesThatNeedProcessing:facesThatNeed2DLandmarks:](self, "categorizeFaceObservations:shouldRunDetectorBlock:facesThatNeedNoProcessing:facesThatNeedProcessing:facesThatNeed2DLandmarks:", v16, &__block_literal_global_20370, v17, v37, v18), [v18 count]))
    {
      if ([v18 count])
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      v20 = [(VNRequest *)self detectFaceLandmarksInContext:v8 faces:v19 error:a5];
      if (!v20)
      {
        v32 = 0;
LABEL_22:

        goto LABEL_23;
      }

      [v37 addObjectsFromArray:v20];
    }

    v21 = [v8 imageBufferAndReturnError:a5];
    v22 = v21;
    if (v21)
    {
      v23 = [v21 width];
      v24 = [v22 height];
      v38 = 0;
      if (([v22 getPixelFocalLengthIfAvailable:&v38] & 1) == 0)
      {
        v38 = 1161527296;
      }

      v25 = objc_alloc(MEMORY[0x1E695DF90]);
      LODWORD(v26) = v38;
      v27 = [MEMORY[0x1E696AD98] numberWithFloat:v26];
      v40.width = v23;
      v40.height = v24;
      DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v40);
      v29 = [v25 initWithObjectsAndKeys:{v27, @"VNFaceGeometryEstimatorInitOption_CameraFocalLength", DictionaryRepresentation, @"VNFaceGeometryEstimatorInitOption_ImageSize", 0}];

      v30 = [(VNDetectFace3DLandmarksRequest *)self applicableDetectorTypeForRevision:v35 error:a5];
      if (v30)
      {
        [(VNImageBasedRequest *)self regionOfInterest];
        v31 = [(VNRequest *)self processFaceObservations:v37 revision:v35 regionOfInterest:v30 detectorType:v29 detectorOptions:&__block_literal_global_35_20373 shouldAlignFaceBBox:&__block_literal_global_20370 shouldRunDetectorBlock:v8 context:a5 error:?];
        v32 = v31 != 0;
        if (v31)
        {
          [v36 addObjectsFromArray:v31];
          [(VNRequest *)self setResults:v36];
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

    goto LABEL_22;
  }

  v32 = 0;
LABEL_23:

  return v32;
}

BOOL __74__VNDetectFace3DLandmarksRequest_internalPerformRevision_inContext_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 landmarks3d];
  v3 = v2 == 0;

  return v3;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4
{
  if (a3 == 1)
  {
    v4 = @"VNFaceGeometryEstimatorType";
    v5 = @"VNFaceGeometryEstimatorType";
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