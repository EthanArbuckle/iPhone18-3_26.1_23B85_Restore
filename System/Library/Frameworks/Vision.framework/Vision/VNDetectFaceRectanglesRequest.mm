@interface VNDetectFaceRectanglesRequest
+ (NSIndexSet)revisionsSupportingPrecisionRecallThresholdOverride;
+ (id)descriptionForPrivateRevision:(unint64_t)revision;
+ (id)privateRevisionsSet;
- (BOOL)canOverridePrecisionRecallThreshold;
- (BOOL)faceCoreEnhanceEyesAndMouthLocalization;
- (BOOL)faceCoreExtractBlink;
- (BOOL)faceCoreExtractSmile;
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (BOOL)warmUpSession:(id)session error:(id *)error;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration;
- (NSNumber)faceCoreInitialAngle;
- (NSNumber)faceCoreMinFaceSize;
- (NSNumber)faceCoreNumberOfDetectionAngles;
- (NSNumber)precisionRecallThresholdOverride;
- (float)precisionRecallThreshold;
- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error;
- (unint64_t)faceCoreType;
- (void)_setPrecisionRecallThresholdOverride:(void *)override;
- (void)applyConfigurationOfRequest:(id)request;
- (void)setFaceCoreEnhanceEyesAndMouthLocalization:(BOOL)localization;
- (void)setFaceCoreExtractBlink:(BOOL)blink;
- (void)setFaceCoreExtractSmile:(BOOL)smile;
- (void)setFaceCoreInitialAngle:(id)angle;
- (void)setFaceCoreMinFaceSize:(id)size;
- (void)setFaceCoreNumberOfDetectionAngles:(id)angles;
- (void)setFaceCoreType:(unint64_t)type;
- (void)setPrecisionRecallThreshold:(float)threshold;
- (void)setProcessedResults:(id)results;
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

- (void)_setPrecisionRecallThresholdOverride:(void *)override
{
  v4 = a2;
  if (override)
  {
    configuration = [override configuration];
    [configuration setPrecisionRecallThresholdOverride:v4];
  }
}

- (void)setPrecisionRecallThreshold:(float)threshold
{
  if (threshold >= 0.0 && threshold <= 1.0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithFloat:?];
    [(VNDetectFaceRectanglesRequest *)self _setPrecisionRecallThresholdOverride:v5];
  }
}

- (float)precisionRecallThreshold
{
  v3 = objc_autoreleasePoolPush();
  precisionRecallThresholdOverride = [(VNDetectFaceRectanglesRequest *)self precisionRecallThresholdOverride];
  v5 = precisionRecallThresholdOverride;
  if (precisionRecallThresholdOverride)
  {
    [precisionRecallThresholdOverride floatValue];
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
  configuration = [(VNRequest *)self configuration];
  precisionRecallThresholdOverride = [configuration precisionRecallThresholdOverride];

  return precisionRecallThresholdOverride;
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

- (void)setFaceCoreExtractSmile:(BOOL)smile
{
  smileCopy = smile;
  configuration = [(VNRequest *)self configuration];
  [configuration setFaceCoreExtractSmile:smileCopy];
}

- (BOOL)faceCoreExtractSmile
{
  configuration = [(VNRequest *)self configuration];
  faceCoreExtractSmile = [configuration faceCoreExtractSmile];

  return faceCoreExtractSmile;
}

- (void)setFaceCoreExtractBlink:(BOOL)blink
{
  blinkCopy = blink;
  configuration = [(VNRequest *)self configuration];
  [configuration setFaceCoreExtractBlink:blinkCopy];
}

- (BOOL)faceCoreExtractBlink
{
  configuration = [(VNRequest *)self configuration];
  faceCoreExtractBlink = [configuration faceCoreExtractBlink];

  return faceCoreExtractBlink;
}

- (void)setFaceCoreEnhanceEyesAndMouthLocalization:(BOOL)localization
{
  localizationCopy = localization;
  configuration = [(VNRequest *)self configuration];
  [configuration setFaceCoreEnhanceEyesAndMouthLocalization:localizationCopy];
}

- (BOOL)faceCoreEnhanceEyesAndMouthLocalization
{
  configuration = [(VNRequest *)self configuration];
  faceCoreEnhanceEyesAndMouthLocalization = [configuration faceCoreEnhanceEyesAndMouthLocalization];

  return faceCoreEnhanceEyesAndMouthLocalization;
}

- (void)setFaceCoreInitialAngle:(id)angle
{
  angleCopy = angle;
  configuration = [(VNRequest *)self configuration];
  [configuration setFaceCoreInitialAngle:angleCopy];
}

- (NSNumber)faceCoreInitialAngle
{
  configuration = [(VNRequest *)self configuration];
  faceCoreInitialAngle = [configuration faceCoreInitialAngle];

  return faceCoreInitialAngle;
}

- (void)setFaceCoreNumberOfDetectionAngles:(id)angles
{
  anglesCopy = angles;
  configuration = [(VNRequest *)self configuration];
  [configuration setFaceCoreNumberOfDetectionAngles:anglesCopy];
}

- (NSNumber)faceCoreNumberOfDetectionAngles
{
  configuration = [(VNRequest *)self configuration];
  faceCoreNumberOfDetectionAngles = [configuration faceCoreNumberOfDetectionAngles];

  return faceCoreNumberOfDetectionAngles;
}

- (void)setFaceCoreMinFaceSize:(id)size
{
  sizeCopy = size;
  configuration = [(VNRequest *)self configuration];
  [configuration setFaceCoreMinFaceSize:sizeCopy];
}

- (NSNumber)faceCoreMinFaceSize
{
  configuration = [(VNRequest *)self configuration];
  faceCoreMinFaceSize = [configuration faceCoreMinFaceSize];

  return faceCoreMinFaceSize;
}

- (void)setFaceCoreType:(unint64_t)type
{
  configuration = [(VNRequest *)self configuration];
  [configuration setFaceCoreType:type];
}

- (unint64_t)faceCoreType
{
  configuration = [(VNRequest *)self configuration];
  faceCoreType = [configuration faceCoreType];

  return faceCoreType;
}

- (void)setProcessedResults:(id)results
{
  resultsCopy = results;
  if ([(VNRequest *)self resolvedRevision]== 1)
  {
    v5 = [resultsCopy indexesOfObjectsPassingTest:&__block_literal_global_25779];
    if ([v5 count])
    {
      v6 = [resultsCopy mutableCopy];
      [v6 removeObjectsAtIndexes:v5];

      resultsCopy = v6;
    }
  }

  v7.receiver = self;
  v7.super_class = VNDetectFaceRectanglesRequest;
  [(VNRequest *)&v7 setProcessedResults:resultsCopy];
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  resolvedRevision = [(VNRequest *)self resolvedRevision];
  resolvedRevision2 = [configurationCopy resolvedRevision];
  if (resolvedRevision != 3737841665 && resolvedRevision2 != 3737841665)
  {
    v7 = resolvedRevision2 - 3737841667;
    if (resolvedRevision - 3737841667u <= 4 && v7 < 5)
    {
      v8 = 1;
      goto LABEL_20;
    }

    if (resolvedRevision - 3737841667u < 5 != v7 < 5)
    {
LABEL_19:
      v8 = 0;
      goto LABEL_20;
    }

LABEL_16:
    configuration = [(VNRequest *)self configuration];
    precisionRecallThresholdOverride = [configuration precisionRecallThresholdOverride];
    precisionRecallThresholdOverride2 = [configurationCopy precisionRecallThresholdOverride];
    v19 = VisionCoreEqualOrNilObjects();

    if (v19)
    {
      v23.receiver = self;
      v23.super_class = VNDetectFaceRectanglesRequest;
      v8 = [(VNImageBasedRequest *)&v23 willAcceptCachedResultsFromRequestWithConfiguration:configurationCopy];
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v8 = 0;
  if (resolvedRevision == 3737841665 && resolvedRevision2 == 3737841665)
  {
    faceCoreType = [(VNDetectFaceRectanglesRequest *)self faceCoreType];
    if (faceCoreType != [configurationCopy faceCoreType])
    {
      goto LABEL_19;
    }

    faceCoreMinFaceSize = [(VNDetectFaceRectanglesRequest *)self faceCoreMinFaceSize];
    faceCoreMinFaceSize2 = [configurationCopy faceCoreMinFaceSize];
    if (faceCoreMinFaceSize == faceCoreMinFaceSize2)
    {
      faceCoreNumberOfDetectionAngles = [(VNDetectFaceRectanglesRequest *)self faceCoreNumberOfDetectionAngles];
      faceCoreNumberOfDetectionAngles2 = [configurationCopy faceCoreNumberOfDetectionAngles];
      if (faceCoreNumberOfDetectionAngles == faceCoreNumberOfDetectionAngles2)
      {
        faceCoreEnhanceEyesAndMouthLocalization = [(VNDetectFaceRectanglesRequest *)self faceCoreEnhanceEyesAndMouthLocalization];
        if (faceCoreEnhanceEyesAndMouthLocalization == [configurationCopy faceCoreEnhanceEyesAndMouthLocalization])
        {
          faceCoreExtractBlink = [(VNDetectFaceRectanglesRequest *)self faceCoreExtractBlink];
          if (faceCoreExtractBlink == [configurationCopy faceCoreExtractBlink])
          {
            faceCoreExtractSmile = [(VNDetectFaceRectanglesRequest *)self faceCoreExtractSmile];
            faceCoreExtractSmile2 = [configurationCopy faceCoreExtractSmile];

            if (faceCoreExtractSmile != faceCoreExtractSmile2)
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

- (void)applyConfigurationOfRequest:(id)request
{
  requestCopy = request;
  if (self != requestCopy)
  {
    v10.receiver = self;
    v10.super_class = VNDetectFaceRectanglesRequest;
    [(VNImageBasedRequest *)&v10 applyConfigurationOfRequest:requestCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = requestCopy;
      [(VNDetectFaceRectanglesRequest *)self setFaceCoreType:[(VNDetectFaceRectanglesRequest *)v5 faceCoreType]];
      faceCoreMinFaceSize = [(VNDetectFaceRectanglesRequest *)v5 faceCoreMinFaceSize];
      [(VNDetectFaceRectanglesRequest *)self setFaceCoreMinFaceSize:faceCoreMinFaceSize];

      faceCoreNumberOfDetectionAngles = [(VNDetectFaceRectanglesRequest *)v5 faceCoreNumberOfDetectionAngles];
      [(VNDetectFaceRectanglesRequest *)self setFaceCoreNumberOfDetectionAngles:faceCoreNumberOfDetectionAngles];

      faceCoreInitialAngle = [(VNDetectFaceRectanglesRequest *)v5 faceCoreInitialAngle];
      [(VNDetectFaceRectanglesRequest *)self setFaceCoreInitialAngle:faceCoreInitialAngle];

      [(VNDetectFaceRectanglesRequest *)self setFaceCoreEnhanceEyesAndMouthLocalization:[(VNDetectFaceRectanglesRequest *)v5 faceCoreEnhanceEyesAndMouthLocalization]];
      [(VNDetectFaceRectanglesRequest *)self setFaceCoreExtractBlink:[(VNDetectFaceRectanglesRequest *)v5 faceCoreExtractBlink]];
      [(VNDetectFaceRectanglesRequest *)self setFaceCoreExtractSmile:[(VNDetectFaceRectanglesRequest *)v5 faceCoreExtractSmile]];
      precisionRecallThresholdOverride = [(VNDetectFaceRectanglesRequest *)v5 precisionRecallThresholdOverride];
      [(VNDetectFaceRectanglesRequest *)self _setPrecisionRecallThresholdOverride:precisionRecallThresholdOverride];
    }
  }
}

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  v38[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  VNValidatedLog(1, @"Processing DetectFaceRectangles1 request\n", v9, v10, v11, v12, v13, v14, v36);
  v15 = [contextCopy imageBufferAndReturnError:error];
  if (v15 && [(VNRequest *)self validateImageBuffer:v15 ofNonZeroWidth:0 andHeight:0 error:error])
  {
    session = [contextCopy session];
    v37 = 0;
    v17 = [(VNRequest *)self applicableDetectorAndOptions:&v37 forRevision:revision loadedInSession:session error:error];
    v18 = v37;
    if (v17)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v38[0] = v15;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
        [v18 setObject:v19 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

        if (revision == 3737841665)
        {
          v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VNDetectFaceRectanglesRequest faceCoreType](self, "faceCoreType")}];
          [v18 setObject:v20 forKeyedSubscript:@"VNFaceDetectorPrivateRevisionLegacyFaceCoreProcessOption_Type"];

          faceCoreInitialAngle = [(VNDetectFaceRectanglesRequest *)self faceCoreInitialAngle];
          [v18 setObject:faceCoreInitialAngle forKeyedSubscript:@"VNFaceDetectorPrivateRevisionLegacyFaceCoreProcessOption_InitialAngle"];

          v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNDetectFaceRectanglesRequest faceCoreEnhanceEyesAndMouthLocalization](self, "faceCoreEnhanceEyesAndMouthLocalization")}];
          [v18 setObject:v22 forKeyedSubscript:@"VNFaceDetectorPrivateRevisionLegacyFaceCoreProcessOption_EnhanceEyesAndMouthLocalization"];

          v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNDetectFaceRectanglesRequest faceCoreExtractBlink](self, "faceCoreExtractBlink")}];
          [v18 setObject:v23 forKeyedSubscript:@"VNFaceDetectorPrivateRevisionLegacyFaceCoreProcessOption_ExtractBlink"];

          v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNDetectFaceRectanglesRequest faceCoreExtractSmile](self, "faceCoreExtractSmile")}];
          [v18 setObject:v24 forKeyedSubscript:@"VNFaceDetectorPrivateRevisionLegacyFaceCoreProcessOption_ExtractSmile"];

          faceCoreMinFaceSize = [(VNDetectFaceRectanglesRequest *)self faceCoreMinFaceSize];
          [v18 setObject:faceCoreMinFaceSize forKeyedSubscript:@"VNFaceDetectorPrivateRevisionLegacyFaceCoreProcessOption_MinFaceSize"];

          faceCoreNumberOfDetectionAngles = [(VNDetectFaceRectanglesRequest *)self faceCoreNumberOfDetectionAngles];
          [v18 setObject:faceCoreNumberOfDetectionAngles forKeyedSubscript:@"VNFaceDetectorPrivateRevisionLegacyFaceCoreProcessOption_NumberOfDetectionAngles"];
        }

        qosClass = [contextCopy qosClass];
        [(VNImageBasedRequest *)self regionOfInterest];
        v28 = [v17 processUsingQualityOfServiceClass:qosClass options:v18 regionOfInterest:self warningRecorder:error error:0 progressHandler:?];
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

      if (error)
      {
        v30 = [(VNRequest *)self applicableDetectorClassAndOptions:0 forRevision:revision error:0];
        v31 = objc_alloc(MEMORY[0x1E696AEC0]);
        v32 = objc_opt_class();
        v33 = VNRequestRevisionString(v32, revision);
        v34 = NSStringFromClass(v30);
        v28 = [v31 initWithFormat:@"%@ is handled by %@", v33, v34];

        [VNError errorForInternalErrorWithLocalizedDescription:v28];
        *error = v29 = 0;
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

- (BOOL)warmUpSession:(id)session error:(id *)error
{
  sessionCopy = session;
  v11.receiver = self;
  v11.super_class = VNDetectFaceRectanglesRequest;
  if ([(VNRequest *)&v11 warmUpSession:sessionCopy error:error])
  {
    v7 = [(VNDetectFaceRectanglesRequest *)self applicableDetectorTypeForRevision:[(VNRequest *)self resolvedRevision] error:error];
    v8 = v7;
    if (v7)
    {
      v9 = ([v7 isEqualToString:@"VNANFDMultiDetectorType"] & 1) != 0 || -[VNRequest warmUpApplicableDetectorInSession:error:](self, "warmUpApplicableDetectorInSession:error:", sessionCopy, error);
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

- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error
{
  if (revision <= 3737841664)
  {
    if (revision - 1 < 2)
    {
      goto LABEL_9;
    }

    if (revision == 3 || revision == 3737841664)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (revision - 3737841666u < 6)
    {
LABEL_3:
      v5 = @"VNANFDMultiDetectorType";
LABEL_10:
      v6 = v5;
      goto LABEL_11;
    }

    if (revision == 3737841665)
    {
LABEL_9:
      v5 = @"VNFaceDetectorType";
      goto LABEL_10;
    }
  }

  if (error)
  {
    [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequest:" ofRequest:?];
    *error = v5 = 0;
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
  allSupportedRevisions = [self allSupportedRevisions];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__VNDetectFaceRectanglesRequest_revisionsSupportingPrecisionRecallThresholdOverride__block_invoke;
  v7[3] = &__block_descriptor_40_e12_B24__0Q8_B16l;
  v7[4] = self;
  v5 = [allSupportedRevisions indexesPassingTest:v7];

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

+ (id)descriptionForPrivateRevision:(unint64_t)revision
{
  if (revision - 3737841664u >= 8)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___VNDetectFaceRectanglesRequest;
    v5 = objc_msgSendSuper2(&v7, sel_descriptionForPrivateRevision_);
  }

  else
  {
    v5 = off_1E77B4CE0[revision - 3737841664u];
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