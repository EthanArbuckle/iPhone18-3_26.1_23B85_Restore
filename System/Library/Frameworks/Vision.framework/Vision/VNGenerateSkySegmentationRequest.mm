@interface VNGenerateSkySegmentationRequest
+ (id)descriptionForPrivateRevision:(unint64_t)revision;
+ (id)privateRevisionsSet;
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration;
- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error;
- (id)configuredCopyOfSelfWithBalancedQualityLevel;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session;
- (int64_t)qualityLevel;
- (void)applyConfigurationOfRequest:(id)request;
- (void)setQualityLevel:(int64_t)level;
@end

@implementation VNGenerateSkySegmentationRequest

- (void)setQualityLevel:(int64_t)level
{
  configuration = [(VNRequest *)self configuration];
  [configuration setQualityLevel:level];
}

- (int64_t)qualityLevel
{
  configuration = [(VNRequest *)self configuration];
  qualityLevel = [configuration qualityLevel];

  return qualityLevel;
}

- (id)configuredCopyOfSelfWithBalancedQualityLevel
{
  v3 = objc_alloc_init(VNGenerateSkySegmentationRequest);
  [(VNGenerateSkySegmentationRequest *)v3 applyConfigurationOfRequest:self];
  [(VNGenerateSkySegmentationRequest *)v3 setQualityLevel:1];

  return v3;
}

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  v21[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v9 = [contextCopy imageBufferAndReturnError:error];
  if (v9)
  {
    session = [contextCopy session];
    v11 = [(VNGenerateSkySegmentationRequest *)self newDefaultDetectorOptionsForRequestRevision:revision session:session];
    v21[0] = v9;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    [v11 setObject:v12 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

    qualityLevel = [(VNGenerateSkySegmentationRequest *)self qualityLevel];
    if (qualityLevel)
    {
      if (qualityLevel == 1)
      {
        if (error)
        {
          v14 = 0;
          v15 = [VNError errorForInternalErrorWithLocalizedDescription:@"Balanced quality level is handled by compound request"];
          v16 = 0;
LABEL_12:

          goto LABEL_13;
        }
      }

      else if (error)
      {
        v18 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VNGenerateSkySegmentationRequest qualityLevel](self, "qualityLevel")}];
        v19 = [VNError errorForInvalidOption:v18 named:@"qualityLevel"];
      }
    }

    else
    {
      v17 = [(VNGenerateSegmentationRequest *)self performAccurateSegmentationInContext:contextCopy options:v11 error:error];
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

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  qualityLevel = [(VNGenerateSkySegmentationRequest *)self qualityLevel];
  if (qualityLevel == [configurationCopy qualityLevel])
  {
    v8.receiver = self;
    v8.super_class = VNGenerateSkySegmentationRequest;
    v6 = [(VNGenerateSegmentationRequest *)&v8 willAcceptCachedResultsFromRequestWithConfiguration:configurationCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session
{
  v8.receiver = self;
  v8.super_class = VNGenerateSkySegmentationRequest;
  v5 = [(VNRequest *)&v8 newDefaultDetectorOptionsForRequestRevision:revision session:session];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VNGenerateSkySegmentationRequest qualityLevel](self, "qualityLevel")}];
  [v5 setObject:v6 forKeyedSubscript:@"VNSegmentationGeneratorProcessOption_QualityLevel"];

  return v5;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error
{
  if (revision != 3737841664)
  {
    if (revision != 1)
    {
      if (error)
      {
        [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequest:" ofRequest:?];
        *error = v8 = 0;
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    qualityLevel = [(VNGenerateSkySegmentationRequest *)self qualityLevel];
    if (qualityLevel == 1)
    {
      v8 = +[VNGenerateSemanticSegmentationCompoundRequest detectorTypeForSemanticSegmentationRequest];
      goto LABEL_18;
    }

    if (qualityLevel)
    {
      if (error)
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    goto LABEL_9;
  }

  qualityLevel2 = [(VNGenerateSkySegmentationRequest *)self qualityLevel];
  if (qualityLevel2 == 1)
  {
    v8 = @"VNE5RTSegmentationMultiGeneratorType";
    goto LABEL_14;
  }

  if (!qualityLevel2)
  {
LABEL_9:
    v8 = @"VNGuidedUpsamplingGeneratorType";
LABEL_14:
    v9 = v8;
    goto LABEL_18;
  }

  if (error)
  {
LABEL_16:
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VNGenerateSkySegmentationRequest qualityLevel](self, "qualityLevel")}];
    *error = [VNError errorForInvalidOption:v10 named:@"qualityLevel"];
  }

LABEL_17:
  v8 = 0;
LABEL_18:

  return v8;
}

- (void)applyConfigurationOfRequest:(id)request
{
  requestCopy = request;
  if (self != requestCopy)
  {
    v6.receiver = self;
    v6.super_class = VNGenerateSkySegmentationRequest;
    [(VNGenerateSegmentationRequest *)&v6 applyConfigurationOfRequest:requestCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = requestCopy;
      [(VNGenerateSkySegmentationRequest *)self setQualityLevel:[(VNGenerateSkySegmentationRequest *)v5 qualityLevel]];
    }
  }
}

+ (id)descriptionForPrivateRevision:(unint64_t)revision
{
  if (revision == 3737841664)
  {
    v5 = @"VNGenerateSkySegmentationRequestPrivateRevisionSemanticV7";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___VNGenerateSkySegmentationRequest;
    v5 = objc_msgSendSuper2(&v7, sel_descriptionForPrivateRevision_);
  }

  return v5;
}

+ (id)privateRevisionsSet
{
  if (+[VNGenerateSkySegmentationRequest privateRevisionsSet]::onceToken != -1)
  {
    dispatch_once(&+[VNGenerateSkySegmentationRequest privateRevisionsSet]::onceToken, &__block_literal_global_35633);
  }

  v3 = +[VNGenerateSkySegmentationRequest privateRevisionsSet]::privateRevisions;

  return v3;
}

void __55__VNGenerateSkySegmentationRequest_privateRevisionsSet__block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  [v2 addIndex:3737841664];
  v0 = [v2 copy];
  v1 = +[VNGenerateSkySegmentationRequest privateRevisionsSet]::privateRevisions;
  +[VNGenerateSkySegmentationRequest privateRevisionsSet]::privateRevisions = v0;
}

@end