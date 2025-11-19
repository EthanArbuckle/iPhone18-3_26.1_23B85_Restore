@interface VNDetectFacePoseRequest
+ (const)dependentRequestCompatibility;
+ (const)dependentRequestMappingTable;
+ (id)descriptionForPrivateRevision:(unint64_t)a3;
+ (id)privateRevisionsSet;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
@end

@implementation VNDetectFacePoseRequest

+ (id)descriptionForPrivateRevision:(unint64_t)a3
{
  if (a3 == 3737841664)
  {
    v5 = @"VNDetectFacePoseRequestPrivateRevisionANSTModel";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___VNDetectFacePoseRequest;
    v5 = objc_msgSendSuper2(&v7, sel_descriptionForPrivateRevision_);
  }

  return v5;
}

+ (id)privateRevisionsSet
{
  if (+[VNDetectFacePoseRequest privateRevisionsSet]::onceToken != -1)
  {
    dispatch_once(&+[VNDetectFacePoseRequest privateRevisionsSet]::onceToken, &__block_literal_global_17102);
  }

  v3 = +[VNDetectFacePoseRequest privateRevisionsSet]::ourPrivateRevisions;

  return v3;
}

void __46__VNDetectFacePoseRequest_privateRevisionsSet__block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  if ([(VNRequest *)VNDetectFaceLandmarksRequest supportsPrivateRevision:3737841664])
  {
    [v2 addIndex:3737841664];
  }

  v0 = [v2 copy];
  v1 = +[VNDetectFacePoseRequest privateRevisionsSet]::ourPrivateRevisions;
  +[VNDetectFacePoseRequest privateRevisionsSet]::ourPrivateRevisions = v0;
}

+ (const)dependentRequestMappingTable
{
  {
    +[VNDetectFacePoseRequest dependentRequestMappingTable]::ourDependentRequestMappingTable = 3737841664;
    qword_1EB286448 = objc_opt_class();
    unk_1EB286450 = 3737841664;
    qword_1EB286460 = 0;
    unk_1EB286468 = 0;
    qword_1EB286458 = 0;
  }

  return &+[VNDetectFacePoseRequest dependentRequestMappingTable]::ourDependentRequestMappingTable;
}

+ (const)dependentRequestCompatibility
{
  {
    +[VNDetectFacePoseRequest dependentRequestCompatibility]::ourDependentRequestCompatibilityTable = 1;
    qword_1EB2863E0 = objc_opt_class();
    unk_1EB2863E8 = vdupq_n_s64(1uLL);
    qword_1EB2863F8 = objc_opt_class();
    unk_1EB286400 = xmmword_1A6038B30;
    qword_1EB286410 = objc_opt_class();
    *algn_1EB286418 = 3;
    qword_1EB286428 = 0;
    unk_1EB286430 = 0;
    qword_1EB286420 = 0;
  }

  return &+[VNDetectFacePoseRequest dependentRequestCompatibility]::ourDependentRequestCompatibilityTable;
}

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v8 = a4;
  VNValidatedLog(1, @"Processing DetectFacePose request\n", v9, v10, v11, v12, v13, v14, v34);
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
    if (!v16 || (-[VNRequest categorizeFaceObservations:shouldRunDetectorBlock:facesThatNeedNoProcessing:facesThatNeedProcessing:facesThatNeed2DLandmarks:](self, "categorizeFaceObservations:shouldRunDetectorBlock:facesThatNeedNoProcessing:facesThatNeedProcessing:facesThatNeed2DLandmarks:", v16, &__block_literal_global_37_17131, v17, v37, v18), [v18 count]))
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
      v29 = [v25 initWithObjectsAndKeys:{v27, @"VNFaceGeometryEstimatorInitOption_CameraFocalLength", DictionaryRepresentation, @"VNFaceGeometryEstimatorInitOption_ImageSize", MEMORY[0x1E695E118], @"VNFaceGeometryEstimatorProcessOption_EstimatePoseOnly", 0}];

      v30 = [(VNDetectFacePoseRequest *)self applicableDetectorTypeForRevision:v35 error:a5];
      if (v30)
      {
        [(VNImageBasedRequest *)self regionOfInterest];
        v31 = [(VNRequest *)self processFaceObservations:v37 revision:v35 regionOfInterest:v30 detectorType:v29 detectorOptions:&__block_literal_global_42_17134 shouldAlignFaceBBox:&__block_literal_global_37_17131 shouldRunDetectorBlock:v8 context:a5 error:?];
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

BOOL __67__VNDetectFacePoseRequest_internalPerformRevision_inContext_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 landmarks3d];
  v3 = v2 == 0;

  return v3;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4
{
  if (a3 == 3737841664 || a3 == 1)
  {
    v5 = @"VNFaceGeometryEstimatorType";
    v6 = @"VNFaceGeometryEstimatorType";
  }

  else if (a4)
  {
    [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequest:" ofRequest:?];
    *a4 = v5 = 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end