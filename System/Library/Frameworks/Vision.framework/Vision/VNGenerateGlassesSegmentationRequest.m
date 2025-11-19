@interface VNGenerateGlassesSegmentationRequest
+ (id)descriptionForPrivateRevision:(unint64_t)a3;
+ (id)privateRevisionsSet;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
- (id)configuredCopyOfSelfWithBalancedQualityLevel;
- (id)description;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4;
- (int64_t)qualityLevel;
- (void)applyConfigurationOfRequest:(id)a3;
- (void)setQualityLevel:(int64_t)a3;
@end

@implementation VNGenerateGlassesSegmentationRequest

- (id)description
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__VNGenerateGlassesSegmentationRequest_description__block_invoke;
  aBlock[3] = &unk_1E77B5658;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v9.receiver = self;
  v9.super_class = VNGenerateGlassesSegmentationRequest;
  v5 = [(VNGenerateSegmentationRequest *)&v9 description];
  v6 = v3[2](v3, [(VNGenerateGlassesSegmentationRequest *)self qualityLevel]);
  v7 = [v4 initWithFormat:@"%@ qualityLevel=%@", v5, v6];

  return v7;
}

__CFString *__51__VNGenerateGlassesSegmentationRequest_description__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) qualityLevel];
  v2 = @"Balanced";
  if (v1 != 1)
  {
    v2 = 0;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return @"Accurate";
  }
}

- (void)setQualityLevel:(int64_t)a3
{
  v4 = [(VNRequest *)self configuration];
  [v4 setQualityLevel:a3];
}

- (int64_t)qualityLevel
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 qualityLevel];

  return v3;
}

- (id)configuredCopyOfSelfWithBalancedQualityLevel
{
  v3 = objc_alloc_init(VNGenerateGlassesSegmentationRequest);
  [(VNGenerateGlassesSegmentationRequest *)v3 applyConfigurationOfRequest:self];
  [(VNGenerateGlassesSegmentationRequest *)v3 setQualityLevel:1];

  return v3;
}

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v21[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [v8 imageBufferAndReturnError:a5];
  if (v9)
  {
    v10 = [v8 session];
    v11 = [(VNGenerateGlassesSegmentationRequest *)self newDefaultDetectorOptionsForRequestRevision:a3 session:v10];
    v21[0] = v9;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    [v11 setObject:v12 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

    v13 = [(VNGenerateGlassesSegmentationRequest *)self qualityLevel];
    if (v13)
    {
      if (v13 == 1)
      {
        if (a5)
        {
          v14 = 0;
          v15 = [VNError errorForInternalErrorWithLocalizedDescription:@"Balanced quality level is handled by compound request"];
          v16 = 0;
LABEL_12:

          goto LABEL_13;
        }
      }

      else if (a5)
      {
        v18 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VNGenerateGlassesSegmentationRequest qualityLevel](self, "qualityLevel")}];
        v19 = [VNError errorForInvalidOption:v18 named:@"qualityLevel"];
      }
    }

    else
    {
      v17 = [(VNGenerateSegmentationRequest *)self performAccurateSegmentationInContext:v8 options:v11 error:a5];
      if (v17)
      {
        [(VNRequest *)self setResults:v17];
        v16 = 1;
        v14 = v17;
        goto LABEL_12;
      }
    }

    v16 = 0;
    v14 = 0;
    goto LABEL_12;
  }

  v16 = 0;
LABEL_13:

  return v16;
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(VNGenerateGlassesSegmentationRequest *)self qualityLevel];
  if (v5 == [v4 qualityLevel])
  {
    v8.receiver = self;
    v8.super_class = VNGenerateGlassesSegmentationRequest;
    v6 = [(VNGenerateSegmentationRequest *)&v8 willAcceptCachedResultsFromRequestWithConfiguration:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4
{
  v8.receiver = self;
  v8.super_class = VNGenerateGlassesSegmentationRequest;
  v5 = [(VNRequest *)&v8 newDefaultDetectorOptionsForRequestRevision:a3 session:a4];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VNGenerateGlassesSegmentationRequest qualityLevel](self, "qualityLevel")}];
  [v5 setObject:v6 forKeyedSubscript:@"VNSegmentationGeneratorProcessOption_QualityLevel"];

  return v5;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4
{
  if (a3 != 3737841664)
  {
    if (a3 != 1)
    {
      if (a4)
      {
        [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequest:" ofRequest:?];
        *a4 = v8 = 0;
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v6 = [(VNGenerateGlassesSegmentationRequest *)self qualityLevel];
    if (v6 == 1)
    {
      v8 = +[VNGenerateSemanticSegmentationCompoundRequest detectorTypeForSemanticSegmentationRequest];
      goto LABEL_18;
    }

    if (v6)
    {
      if (a4)
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    goto LABEL_9;
  }

  v7 = [(VNGenerateGlassesSegmentationRequest *)self qualityLevel];
  if (v7 == 1)
  {
    v8 = @"VNE5RTSegmentationMultiGeneratorType";
    goto LABEL_14;
  }

  if (!v7)
  {
LABEL_9:
    v8 = @"VNGuidedUpsamplingGeneratorType";
LABEL_14:
    v9 = v8;
    goto LABEL_18;
  }

  if (a4)
  {
LABEL_16:
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VNGenerateGlassesSegmentationRequest qualityLevel](self, "qualityLevel")}];
    *a4 = [VNError errorForInvalidOption:v10 named:@"qualityLevel"];
  }

LABEL_17:
  v8 = 0;
LABEL_18:

  return v8;
}

- (void)applyConfigurationOfRequest:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    v6.receiver = self;
    v6.super_class = VNGenerateGlassesSegmentationRequest;
    [(VNGenerateSegmentationRequest *)&v6 applyConfigurationOfRequest:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [(VNGenerateGlassesSegmentationRequest *)self setQualityLevel:[(VNGenerateGlassesSegmentationRequest *)v5 qualityLevel]];
    }
  }
}

+ (id)descriptionForPrivateRevision:(unint64_t)a3
{
  if (a3 == 3737841664)
  {
    v5 = @"VNGenerateGlassesSegmentationRequestPrivateRevisionSemanticV7";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___VNGenerateGlassesSegmentationRequest;
    v5 = objc_msgSendSuper2(&v7, sel_descriptionForPrivateRevision_);
  }

  return v5;
}

+ (id)privateRevisionsSet
{
  if (+[VNGenerateGlassesSegmentationRequest privateRevisionsSet]::onceToken != -1)
  {
    dispatch_once(&+[VNGenerateGlassesSegmentationRequest privateRevisionsSet]::onceToken, &__block_literal_global_30310);
  }

  v3 = +[VNGenerateGlassesSegmentationRequest privateRevisionsSet]::privateRevisions;

  return v3;
}

void __59__VNGenerateGlassesSegmentationRequest_privateRevisionsSet__block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  [v2 addIndex:3737841664];
  v0 = [v2 copy];
  v1 = +[VNGenerateGlassesSegmentationRequest privateRevisionsSet]::privateRevisions;
  +[VNGenerateGlassesSegmentationRequest privateRevisionsSet]::privateRevisions = v0;
}

@end