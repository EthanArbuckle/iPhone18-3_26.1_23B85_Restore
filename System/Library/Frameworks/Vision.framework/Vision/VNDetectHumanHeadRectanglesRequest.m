@interface VNDetectHumanHeadRectanglesRequest
+ (NSIndexSet)revisionsSupportingPrecisionRecallThresholdOverride;
+ (id)descriptionForPrivateRevision:(unint64_t)a3;
+ (id)privateRevisionsSet;
- (BOOL)canOverridePrecisionRecallThreshold;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (NSNumber)precisionRecallThresholdOverride;
- (float)precisionRecallThreshold;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
- (void)_setPrecisionRecallThresholdOverride:(void *)a1;
- (void)applyConfigurationOfRequest:(id)a3;
- (void)setPrecisionRecallThreshold:(float)a3;
@end

@implementation VNDetectHumanHeadRectanglesRequest

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  if (a5)
  {
    v7 = [(VNRequest *)self applicableDetectorClassAndOptions:0 forRevision:a3 error:0];
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = objc_opt_class();
    v10 = VNRequestRevisionString(v9, a3);
    v11 = NSStringFromClass(v7);
    v12 = [v8 initWithFormat:@"%@ is handled by %@", v10, v11];

    *a5 = [VNError errorForInternalErrorWithLocalizedDescription:v12];
  }

  return 0;
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
    [(VNDetectHumanHeadRectanglesRequest *)self _setPrecisionRecallThresholdOverride:v5];
  }
}

- (float)precisionRecallThreshold
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(VNDetectHumanHeadRectanglesRequest *)self precisionRecallThresholdOverride];
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
      v11 = [v10 objectForKeyedSubscript:@"VNShotflowDetectorFilterThresholdKey_HumanHead"];
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

- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4
{
  if (a3 - 3737841664u < 4 || a3 == 1)
  {
    v5 = @"VNANFDMultiDetectorType";
    v6 = @"VNANFDMultiDetectorType";
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

- (void)applyConfigurationOfRequest:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    v6.receiver = self;
    v6.super_class = VNDetectHumanHeadRectanglesRequest;
    [(VNImageBasedRequest *)&v6 applyConfigurationOfRequest:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(VNDetectHumanHeadRectanglesRequest *)v4 precisionRecallThresholdOverride];
      [(VNDetectHumanHeadRectanglesRequest *)self _setPrecisionRecallThresholdOverride:v5];
    }
  }
}

+ (NSIndexSet)revisionsSupportingPrecisionRecallThresholdOverride
{
  v3 = objc_autoreleasePoolPush();
  v4 = [a1 allSupportedRevisions];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89__VNDetectHumanHeadRectanglesRequest_revisionsSupportingPrecisionRecallThresholdOverride__block_invoke;
  v7[3] = &__block_descriptor_40_e12_B24__0Q8_B16l;
  v7[4] = a1;
  v5 = [v4 indexesPassingTest:v7];

  objc_autoreleasePoolPop(v3);

  return v5;
}

uint64_t __89__VNDetectHumanHeadRectanglesRequest_revisionsSupportingPrecisionRecallThresholdOverride__block_invoke(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(VNDetectHumanHeadRectanglesRequest);
  v5 = [(VNRequest *)v4 setRevision:a2 error:0]&& [(VNDetectHumanHeadRectanglesRequest *)v4 canOverridePrecisionRecallThreshold];

  objc_autoreleasePoolPop(v3);
  return v5;
}

+ (id)descriptionForPrivateRevision:(unint64_t)a3
{
  if (a3 - 3737841664u >= 4)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___VNDetectHumanHeadRectanglesRequest;
    v5 = objc_msgSendSuper2(&v7, sel_descriptionForPrivateRevision_);
  }

  else
  {
    v5 = off_1E77B1098[a3 - 3737841664u];
  }

  return v5;
}

+ (id)privateRevisionsSet
{
  if (+[VNDetectHumanHeadRectanglesRequest(Revisioning) privateRevisionsSet]::onceToken != -1)
  {
    dispatch_once(&+[VNDetectHumanHeadRectanglesRequest(Revisioning) privateRevisionsSet]::onceToken, &__block_literal_global_45);
  }

  v3 = +[VNDetectHumanHeadRectanglesRequest(Revisioning) privateRevisionsSet]::ourPrivateRevisions;

  return v3;
}

void __70__VNDetectHumanHeadRectanglesRequest_Revisioning__privateRevisionsSet__block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  [v2 addIndex:3737841664];
  [v2 addIndex:3737841665];
  if (+[VNANFDMultiDetectorANSTv1 supportsExecution])
  {
    [v2 addIndex:3737841666];
  }

  [v2 addIndex:3737841667];
  v0 = [v2 copy];
  v1 = +[VNDetectHumanHeadRectanglesRequest(Revisioning) privateRevisionsSet]::ourPrivateRevisions;
  +[VNDetectHumanHeadRectanglesRequest(Revisioning) privateRevisionsSet]::ourPrivateRevisions = v0;
}

@end