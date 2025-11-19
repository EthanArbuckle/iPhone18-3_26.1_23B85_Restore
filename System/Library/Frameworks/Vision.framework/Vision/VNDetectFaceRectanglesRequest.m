@interface VNDetectFaceRectanglesRequest
+ (NSIndexSet)revisionsSupportingPrecisionRecallThresholdOverride;
+ (id)descriptionForPrivateRevision:(unint64_t)a3;
+ (id)privateRevisionsSet;
- (BOOL)canOverridePrecisionRecallThreshold;
- (BOOL)faceCoreEnhanceEyesAndMouthLocalization;
- (BOOL)faceCoreExtractBlink;
- (BOOL)faceCoreExtractSmile;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (BOOL)warmUpSession:(id)a3 error:(id *)a4;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3;
- (NSNumber)faceCoreInitialAngle;
- (NSNumber)faceCoreMinFaceSize;
- (NSNumber)faceCoreNumberOfDetectionAngles;
- (NSNumber)precisionRecallThresholdOverride;
- (float)precisionRecallThreshold;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
- (unint64_t)faceCoreType;
- (void)_setPrecisionRecallThresholdOverride:(void *)a1;
- (void)applyConfigurationOfRequest:(id)a3;
- (void)setFaceCoreEnhanceEyesAndMouthLocalization:(BOOL)a3;
- (void)setFaceCoreExtractBlink:(BOOL)a3;
- (void)setFaceCoreExtractSmile:(BOOL)a3;
- (void)setFaceCoreInitialAngle:(id)a3;
- (void)setFaceCoreMinFaceSize:(id)a3;
- (void)setFaceCoreNumberOfDetectionAngles:(id)a3;
- (void)setFaceCoreType:(unint64_t)a3;
- (void)setPrecisionRecallThreshold:(float)a3;
- (void)setProcessedResults:(id)a3;
@end

@implementation VNDetectFaceRectanglesRequest

+ (id)privateRevisionsSet
{
  if (+[VNDetectFaceRectanglesRequest(Revisioning) privateRevisionsSet]::onceToken != -1)
  {
    dispatch_once(&+[VNDetectFaceRectanglesRequest(Revisioning) privateRevisionsSet]::onceToken, &__block_literal_global_140);
  }

  v3 = +[VNDetectFaceRectanglesRequest(Revisioning) privateRevisionsSet]::ourPrivateRevisions;

  return v3;
}

- (void)_setPrecisionRecallThresholdOverride:(void *)a1
{
  v4 = a2;
  if (a1)
  {
    v3 = [a1 configuration];
    [v3 setPrecisionRecallThresholdOverride:v4];
  }
}

- (void)setPrecisionRecallThreshold:(float)a3
{
  if (a3 >= 0.0 && a3 <= 1.0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithFloat:?];
    [(VNDetectFaceRectanglesRequest *)self _setPrecisionRecallThresholdOverride:v5];
  }
}

- (float)precisionRecallThreshold
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(VNDetectFaceRectanglesRequest *)self precisionRecallThresholdOverride];
  v5 = v4;
  if (v4)
  {
    [v4 floatValue];
    v7 = v6;
  }

  else
  {
    v15 = 0;
    v8 = [(VNRequest *)self applicableDetectorClassAndOptions:&v15 forRevision:[(VNRequest *)self resolvedRevision] error:0];
    v9 = v15;
    v7 = -1.0;
    if (v8 && [(objc_class *)v8 isSubclassOfClass:objc_opt_class()])
    {
      v10 = [(objc_class *)v8 defaultFilterThresholdsForOptions:v9 error:0];
      v11 = [v10 objectForKeyedSubscript:@"VNShotflowDetectorFilterThresholdKey_HumanFace"];
      v12 = v11;
      if (v11)
      {
        [v11 floatValue];
        v7 = v13;
      }
    }
  }

  objc_autoreleasePoolPop(v3);
  return v7;
}

- (NSNumber)precisionRecallThresholdOverride
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 precisionRecallThresholdOverride];

  return v3;
}

- (BOOL)canOverridePrecisionRecallThreshold
{
  v3 = objc_autoreleasePoolPush();
  v10 = 0;
  v4 = [(VNRequest *)self applicableDetectorClassAndOptions:&v10 forRevision:[(VNRequest *)self resolvedRevision] error:0];
  v5 = v10;
  if (v4 && [(objc_class *)v4 isSubclassOfClass:objc_opt_class()])
  {
    v6 = [(objc_class *)v4 defaultFilterThresholdsForOptions:v5 error:0];
    v7 = [v6 objectForKeyedSubscript:@"VNShotflowDetectorFilterThresholdKey_HumanFace"];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  objc_autoreleasePoolPop(v3);
  return v8;
}

- (void)setFaceCoreExtractSmile:(BOOL)a3
{
  v3 = a3;
  v4 = [(VNRequest *)self configuration];
  [v4 setFaceCoreExtractSmile:v3];
}

- (BOOL)faceCoreExtractSmile
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 faceCoreExtractSmile];

  return v3;
}

- (void)setFaceCoreExtractBlink:(BOOL)a3
{
  v3 = a3;
  v4 = [(VNRequest *)self configuration];
  [v4 setFaceCoreExtractBlink:v3];
}

- (BOOL)faceCoreExtractBlink
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 faceCoreExtractBlink];

  return v3;
}

- (void)setFaceCoreEnhanceEyesAndMouthLocalization:(BOOL)a3
{
  v3 = a3;
  v4 = [(VNRequest *)self configuration];
  [v4 setFaceCoreEnhanceEyesAndMouthLocalization:v3];
}

- (BOOL)faceCoreEnhanceEyesAndMouthLocalization
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 faceCoreEnhanceEyesAndMouthLocalization];

  return v3;
}

- (void)setFaceCoreInitialAngle:(id)a3
{
  v5 = a3;
  v4 = [(VNRequest *)self configuration];
  [v4 setFaceCoreInitialAngle:v5];
}

- (NSNumber)faceCoreInitialAngle
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 faceCoreInitialAngle];

  return v3;
}

- (void)setFaceCoreNumberOfDetectionAngles:(id)a3
{
  v5 = a3;
  v4 = [(VNRequest *)self configuration];
  [v4 setFaceCoreNumberOfDetectionAngles:v5];
}

- (NSNumber)faceCoreNumberOfDetectionAngles
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 faceCoreNumberOfDetectionAngles];

  return v3;
}

- (void)setFaceCoreMinFaceSize:(id)a3
{
  v5 = a3;
  v4 = [(VNRequest *)self configuration];
  [v4 setFaceCoreMinFaceSize:v5];
}

- (NSNumber)faceCoreMinFaceSize
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 faceCoreMinFaceSize];

  return v3;
}

- (void)setFaceCoreType:(unint64_t)a3
{
  v4 = [(VNRequest *)self configuration];
  [v4 setFaceCoreType:a3];
}

- (unint64_t)faceCoreType
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 faceCoreType];

  return v3;
}

- (void)setProcessedResults:(id)a3
{
  v4 = a3;
  if ([(VNRequest *)self resolvedRevision]== 1)
  {
    v5 = [v4 indexesOfObjectsPassingTest:&__block_literal_global_25779];
    if ([v5 count])
    {
      v6 = [v4 mutableCopy];
      [v6 removeObjectsAtIndexes:v5];

      v4 = v6;
    }
  }

  v7.receiver = self;
  v7.super_class = VNDetectFaceRectanglesRequest;
  [(VNRequest *)&v7 setProcessedResults:v4];
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(VNRequest *)self resolvedRevision];
  v6 = [v4 resolvedRevision];
  if (v5 != 3737841665 && v6 != 3737841665)
  {
    v7 = v6 - 3737841667;
    if (v5 - 3737841667u <= 4 && v7 < 5)
    {
      v8 = 1;
      goto LABEL_20;
    }

    if (v5 - 3737841667u < 5 != v7 < 5)
    {
LABEL_19:
      v8 = 0;
      goto LABEL_20;
    }

LABEL_16:
    v16 = [(VNRequest *)self configuration];
    v17 = [v16 precisionRecallThresholdOverride];
    v18 = [v4 precisionRecallThresholdOverride];
    v19 = VisionCoreEqualOrNilObjects();

    if (v19)
    {
      v23.receiver = self;
      v23.super_class = VNDetectFaceRectanglesRequest;
      v8 = [(VNImageBasedRequest *)&v23 willAcceptCachedResultsFromRequestWithConfiguration:v4];
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v8 = 0;
  if (v5 == 3737841665 && v6 == 3737841665)
  {
    v9 = [(VNDetectFaceRectanglesRequest *)self faceCoreType];
    if (v9 != [v4 faceCoreType])
    {
      goto LABEL_19;
    }

    v10 = [(VNDetectFaceRectanglesRequest *)self faceCoreMinFaceSize];
    v11 = [v4 faceCoreMinFaceSize];
    if (v10 == v11)
    {
      v12 = [(VNDetectFaceRectanglesRequest *)self faceCoreNumberOfDetectionAngles];
      v13 = [v4 faceCoreNumberOfDetectionAngles];
      if (v12 == v13)
      {
        v14 = [(VNDetectFaceRectanglesRequest *)self faceCoreEnhanceEyesAndMouthLocalization];
        if (v14 == [v4 faceCoreEnhanceEyesAndMouthLocalization])
        {
          v15 = [(VNDetectFaceRectanglesRequest *)self faceCoreExtractBlink];
          if (v15 == [v4 faceCoreExtractBlink])
          {
            v20 = [(VNDetectFaceRectanglesRequest *)self faceCoreExtractSmile];
            v21 = [v4 faceCoreExtractSmile];

            if (v20 != v21)
            {
              goto LABEL_19;
            }

            goto LABEL_16;
          }
        }
      }
    }

    goto LABEL_19;
  }

LABEL_20:

  return v8;
}

- (void)applyConfigurationOfRequest:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    v10.receiver = self;
    v10.super_class = VNDetectFaceRectanglesRequest;
    [(VNImageBasedRequest *)&v10 applyConfigurationOfRequest:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [(VNDetectFaceRectanglesRequest *)self setFaceCoreType:[(VNDetectFaceRectanglesRequest *)v5 faceCoreType]];
      v6 = [(VNDetectFaceRectanglesRequest *)v5 faceCoreMinFaceSize];
      [(VNDetectFaceRectanglesRequest *)self setFaceCoreMinFaceSize:v6];

      v7 = [(VNDetectFaceRectanglesRequest *)v5 faceCoreNumberOfDetectionAngles];
      [(VNDetectFaceRectanglesRequest *)self setFaceCoreNumberOfDetectionAngles:v7];

      v8 = [(VNDetectFaceRectanglesRequest *)v5 faceCoreInitialAngle];
      [(VNDetectFaceRectanglesRequest *)self setFaceCoreInitialAngle:v8];

      [(VNDetectFaceRectanglesRequest *)self setFaceCoreEnhanceEyesAndMouthLocalization:[(VNDetectFaceRectanglesRequest *)v5 faceCoreEnhanceEyesAndMouthLocalization]];
      [(VNDetectFaceRectanglesRequest *)self setFaceCoreExtractBlink:[(VNDetectFaceRectanglesRequest *)v5 faceCoreExtractBlink]];
      [(VNDetectFaceRectanglesRequest *)self setFaceCoreExtractSmile:[(VNDetectFaceRectanglesRequest *)v5 faceCoreExtractSmile]];
      v9 = [(VNDetectFaceRectanglesRequest *)v5 precisionRecallThresholdOverride];
      [(VNDetectFaceRectanglesRequest *)self _setPrecisionRecallThresholdOverride:v9];
    }
  }
}

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v38[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  VNValidatedLog(1, @"Processing DetectFaceRectangles1 request\n", v9, v10, v11, v12, v13, v14, v36);
  v15 = [v8 imageBufferAndReturnError:a5];
  if (v15 && [(VNRequest *)self validateImageBuffer:v15 ofNonZeroWidth:0 andHeight:0 error:a5])
  {
    v16 = [v8 session];
    v37 = 0;
    v17 = [(VNRequest *)self applicableDetectorAndOptions:&v37 forRevision:a3 loadedInSession:v16 error:a5];
    v18 = v37;
    if (v17)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v38[0] = v15;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
        [v18 setObject:v19 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

        if (a3 == 3737841665)
        {
          v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VNDetectFaceRectanglesRequest faceCoreType](self, "faceCoreType")}];
          [v18 setObject:v20 forKeyedSubscript:@"VNFaceDetectorPrivateRevisionLegacyFaceCoreProcessOption_Type"];

          v21 = [(VNDetectFaceRectanglesRequest *)self faceCoreInitialAngle];
          [v18 setObject:v21 forKeyedSubscript:@"VNFaceDetectorPrivateRevisionLegacyFaceCoreProcessOption_InitialAngle"];

          v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNDetectFaceRectanglesRequest faceCoreEnhanceEyesAndMouthLocalization](self, "faceCoreEnhanceEyesAndMouthLocalization")}];
          [v18 setObject:v22 forKeyedSubscript:@"VNFaceDetectorPrivateRevisionLegacyFaceCoreProcessOption_EnhanceEyesAndMouthLocalization"];

          v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNDetectFaceRectanglesRequest faceCoreExtractBlink](self, "faceCoreExtractBlink")}];
          [v18 setObject:v23 forKeyedSubscript:@"VNFaceDetectorPrivateRevisionLegacyFaceCoreProcessOption_ExtractBlink"];

          v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNDetectFaceRectanglesRequest faceCoreExtractSmile](self, "faceCoreExtractSmile")}];
          [v18 setObject:v24 forKeyedSubscript:@"VNFaceDetectorPrivateRevisionLegacyFaceCoreProcessOption_ExtractSmile"];

          v25 = [(VNDetectFaceRectanglesRequest *)self faceCoreMinFaceSize];
          [v18 setObject:v25 forKeyedSubscript:@"VNFaceDetectorPrivateRevisionLegacyFaceCoreProcessOption_MinFaceSize"];

          v26 = [(VNDetectFaceRectanglesRequest *)self faceCoreNumberOfDetectionAngles];
          [v18 setObject:v26 forKeyedSubscript:@"VNFaceDetectorPrivateRevisionLegacyFaceCoreProcessOption_NumberOfDetectionAngles"];
        }

        v27 = [v8 qosClass];
        [(VNImageBasedRequest *)self regionOfInterest];
        v28 = [v17 processUsingQualityOfServiceClass:v27 options:v18 regionOfInterest:self warningRecorder:a5 error:0 progressHandler:?];
        if (v28)
        {
          [(VNRequest *)self setResults:v28];
          v29 = 1;
        }

        else
        {
          v29 = 0;
        }

        goto LABEL_14;
      }

      if (a5)
      {
        v30 = [(VNRequest *)self applicableDetectorClassAndOptions:0 forRevision:a3 error:0];
        v31 = objc_alloc(MEMORY[0x1E696AEC0]);
        v32 = objc_opt_class();
        v33 = VNRequestRevisionString(v32, a3);
        v34 = NSStringFromClass(v30);
        v28 = [v31 initWithFormat:@"%@ is handled by %@", v33, v34];

        [VNError errorForInternalErrorWithLocalizedDescription:v28];
        *a5 = v29 = 0;
LABEL_14:

        goto LABEL_15;
      }
    }

    v29 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v29 = 0;
LABEL_16:

  return v29;
}

- (BOOL)warmUpSession:(id)a3 error:(id *)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = VNDetectFaceRectanglesRequest;
  if ([(VNRequest *)&v11 warmUpSession:v6 error:a4])
  {
    v7 = [(VNDetectFaceRectanglesRequest *)self applicableDetectorTypeForRevision:[(VNRequest *)self resolvedRevision] error:a4];
    v8 = v7;
    if (v7)
    {
      v9 = ([v7 isEqualToString:@"VNANFDMultiDetectorType"] & 1) != 0 || -[VNRequest warmUpApplicableDetectorInSession:error:](self, "warmUpApplicableDetectorInSession:error:", v6, a4);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4
{
  if (a3 <= 3737841664)
  {
    if (a3 - 1 < 2)
    {
      goto LABEL_9;
    }

    if (a3 == 3 || a3 == 3737841664)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (a3 - 3737841666u < 6)
    {
LABEL_3:
      v5 = @"VNANFDMultiDetectorType";
LABEL_10:
      v6 = v5;
      goto LABEL_11;
    }

    if (a3 == 3737841665)
    {
LABEL_9:
      v5 = @"VNFaceDetectorType";
      goto LABEL_10;
    }
  }

  if (a4)
  {
    [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequest:" ofRequest:?];
    *a4 = v5 = 0;
  }

  else
  {
    v5 = 0;
  }

LABEL_11:

  return v5;
}

+ (NSIndexSet)revisionsSupportingPrecisionRecallThresholdOverride
{
  v3 = objc_autoreleasePoolPush();
  v4 = [a1 allSupportedRevisions];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__VNDetectFaceRectanglesRequest_revisionsSupportingPrecisionRecallThresholdOverride__block_invoke;
  v7[3] = &__block_descriptor_40_e12_B24__0Q8_B16l;
  v7[4] = a1;
  v5 = [v4 indexesPassingTest:v7];

  objc_autoreleasePoolPop(v3);

  return v5;
}

uint64_t __84__VNDetectFaceRectanglesRequest_revisionsSupportingPrecisionRecallThresholdOverride__block_invoke(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(VNDetectFaceRectanglesRequest);
  v5 = [(VNRequest *)v4 setRevision:a2 error:0]&& [(VNDetectFaceRectanglesRequest *)v4 canOverridePrecisionRecallThreshold];

  objc_autoreleasePoolPop(v3);
  return v5;
}

+ (id)descriptionForPrivateRevision:(unint64_t)a3
{
  if (a3 - 3737841664u >= 8)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___VNDetectFaceRectanglesRequest;
    v5 = objc_msgSendSuper2(&v7, sel_descriptionForPrivateRevision_);
  }

  else
  {
    v5 = off_1E77B4CE0[a3 - 3737841664u];
  }

  return v5;
}

void __65__VNDetectFaceRectanglesRequest_Revisioning__privateRevisionsSet__block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  [v2 addIndex:3737841665];
  [v2 addIndex:3737841664];
  [v2 addIndex:3737841666];
  [v2 addIndex:3737841668];
  [v2 addIndex:3737841669];
  [v2 addIndex:3737841671];
  if (+[VNANFDMultiDetectorANSTv1 supportsExecution])
  {
    [v2 addIndex:3737841667];
  }

  [v2 addIndex:3737841670];
  v0 = [v2 copy];
  v1 = +[VNDetectFaceRectanglesRequest(Revisioning) privateRevisionsSet]::ourPrivateRevisions;
  +[VNDetectFaceRectanglesRequest(Revisioning) privateRevisionsSet]::ourPrivateRevisions = v0;
}

@end