@interface VNDetectFaceCaptureQualityRequest
+ (BOOL)revision:(unint64_t)revision mayAcceptResultsProducedByRevision:(unint64_t)byRevision;
+ (const)dependentRequestCompatibility;
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error;
@end

@implementation VNDetectFaceCaptureQualityRequest

+ (const)dependentRequestCompatibility
{
  {
    +[VNDetectFaceCaptureQualityRequest dependentRequestCompatibility]::ourDependentRequestCompatibilityTable = 1;
    qword_1EB1F8AA8 = objc_opt_class();
    *algn_1EB1F8AB0 = vdupq_n_s64(1uLL);
    qword_1EB1F8AC0 = objc_opt_class();
    unk_1EB1F8AC8 = xmmword_1A6038B30;
    qword_1EB1F8AD8 = objc_opt_class();
    unk_1EB1F8AE0 = xmmword_1A6038DE0;
    qword_1EB1F8AF0 = objc_opt_class();
    unk_1EB1F8AF8 = xmmword_1A5FF36F0;
    qword_1EB1F8B08 = objc_opt_class();
    *algn_1EB1F8B10 = vdupq_n_s64(2uLL);
    qword_1EB1F8B20 = objc_opt_class();
    unk_1EB1F8B28 = vdupq_n_s64(3uLL);
    qword_1EB1F8B38 = objc_opt_class();
    unk_1EB1F8B40 = xmmword_1A5FF3930;
    qword_1EB1F8B50 = objc_opt_class();
    unk_1EB1F8B58 = xmmword_1A6027770;
    qword_1EB1F8B68 = objc_opt_class();
    unk_1EB1F8B70 = 3;
    qword_1EB1F8B80 = 0;
    unk_1EB1F8B88 = 0;
    qword_1EB1F8B78 = 0;
  }

  return &+[VNDetectFaceCaptureQualityRequest dependentRequestCompatibility]::ourDependentRequestCompatibilityTable;
}

+ (BOOL)revision:(unint64_t)revision mayAcceptResultsProducedByRevision:(unint64_t)byRevision
{
  if (revision != byRevision)
  {
    return 0;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___VNDetectFaceCaptureQualityRequest;
  return objc_msgSendSuper2(&v7, sel_revision_mayAcceptResultsProducedByRevision_, revision, revision);
}

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  contextCopy = context;
  v9 = [(VNDetectFaceCaptureQualityRequest *)self applicableDetectorTypeForRevision:revision error:error];
  if (v9)
  {
    v16 = 0;
    v10 = [(VNImageBasedRequest *)self getOptionalValidatedInputFaceObservations:&v16 clippedToRegionOfInterest:1 error:error];
    v11 = v16;
    v12 = v11;
    if (v10 && (v11 || ([(VNRequest *)self detectFacesInContext:contextCopy error:error], (v12 = objc_claimAutoreleasedReturnValue()) != 0)))
    {
      [(VNImageBasedRequest *)self regionOfInterest];
      v13 = [(VNRequest *)self processFaceObservations:v12 revision:revision regionOfInterest:v9 detectorType:0 detectorOptions:&__block_literal_global_26263 shouldAlignFaceBBox:&__block_literal_global_30_26264 shouldRunDetectorBlock:contextCopy context:error error:?];
      v14 = v13 != 0;
      if (v13)
      {
        [(VNRequest *)self setResults:v13];
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

BOOL __77__VNDetectFaceCaptureQualityRequest_internalPerformRevision_inContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 faceCaptureQuality];
  v3 = v2 == 0;

  return v3;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error
{
  if (revision - 1 > 2)
  {
    if (error)
    {
      [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequest:" ofRequest:?];
      *error = v4 = 0;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = @"VNFaceQualityGeneratorType";
    v5 = @"VNFaceQualityGeneratorType";
  }

  return v4;
}

@end