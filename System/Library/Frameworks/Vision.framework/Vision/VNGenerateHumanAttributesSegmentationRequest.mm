@interface VNGenerateHumanAttributesSegmentationRequest
+ (id)_supportedHumanAttributesNamesRevision1;
+ (id)descriptionForPrivateRevision:(unint64_t)revision;
+ (id)privateRevisionsSet;
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration;
- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error;
- (id)configuredCopyOfSelfWithBalancedQualityLevel;
- (id)description;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session;
- (id)supportedHumanAttributesNamesAndReturnError:(id *)error;
- (int64_t)qualityLevel;
- (void)applyConfigurationOfRequest:(id)request;
- (void)setQualityLevel:(int64_t)level;
@end

@implementation VNGenerateHumanAttributesSegmentationRequest

- (id)description
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__VNGenerateHumanAttributesSegmentationRequest_description__block_invoke;
  aBlock[3] = &unk_1E77B5658;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v9.receiver = self;
  v9.super_class = VNGenerateHumanAttributesSegmentationRequest;
  v5 = [(VNGenerateSegmentationRequest *)&v9 description];
  v6 = v3[2](v3, [(VNGenerateHumanAttributesSegmentationRequest *)self qualityLevel]);
  v7 = [v4 initWithFormat:@"%@ qualityLevel=%@", v5, v6];

  return v7;
}

__CFString *__59__VNGenerateHumanAttributesSegmentationRequest_description__block_invoke(uint64_t a1)
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
  v3 = objc_alloc_init(VNGenerateHumanAttributesSegmentationRequest);
  [(VNGenerateHumanAttributesSegmentationRequest *)v3 applyConfigurationOfRequest:self];
  [(VNGenerateHumanAttributesSegmentationRequest *)v3 setQualityLevel:1];

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
    v11 = [(VNGenerateHumanAttributesSegmentationRequest *)self newDefaultDetectorOptionsForRequestRevision:revision session:session];
    v21[0] = v9;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    [v11 setObject:v12 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

    qualityLevel = [(VNGenerateHumanAttributesSegmentationRequest *)self qualityLevel];
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
        v18 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VNGenerateHumanAttributesSegmentationRequest qualityLevel](self, "qualityLevel")}];
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
  qualityLevel = [(VNGenerateHumanAttributesSegmentationRequest *)self qualityLevel];
  if (qualityLevel == [configurationCopy qualityLevel])
  {
    v8.receiver = self;
    v8.super_class = VNGenerateHumanAttributesSegmentationRequest;
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
  v8.super_class = VNGenerateHumanAttributesSegmentationRequest;
  v5 = [(VNRequest *)&v8 newDefaultDetectorOptionsForRequestRevision:revision session:session];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VNGenerateHumanAttributesSegmentationRequest qualityLevel](self, "qualityLevel")}];
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

    qualityLevel = [(VNGenerateHumanAttributesSegmentationRequest *)self qualityLevel];
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

  qualityLevel2 = [(VNGenerateHumanAttributesSegmentationRequest *)self qualityLevel];
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
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VNGenerateHumanAttributesSegmentationRequest qualityLevel](self, "qualityLevel")}];
    *error = [VNError errorForInvalidOption:v10 named:@"qualityLevel"];
  }

LABEL_17:
  v8 = 0;
LABEL_18:

  return v8;
}

- (id)supportedHumanAttributesNamesAndReturnError:(id *)error
{
  resolvedRevision = [(VNRequest *)self resolvedRevision];
  if (resolvedRevision == 3737841664 || resolvedRevision == 1)
  {
    _supportedHumanAttributesNamesRevision1 = [objc_opt_class() _supportedHumanAttributesNamesRevision1];
  }

  else if (error)
  {
    v7 = [VNError errorForUnsupportedRevision:resolvedRevision ofRequest:self];
    v8 = v7;
    _supportedHumanAttributesNamesRevision1 = 0;
    *error = v7;
  }

  else
  {
    _supportedHumanAttributesNamesRevision1 = 0;
  }

  return _supportedHumanAttributesNamesRevision1;
}

- (void)applyConfigurationOfRequest:(id)request
{
  requestCopy = request;
  if (self != requestCopy)
  {
    v6.receiver = self;
    v6.super_class = VNGenerateHumanAttributesSegmentationRequest;
    [(VNGenerateSegmentationRequest *)&v6 applyConfigurationOfRequest:requestCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = requestCopy;
      [(VNGenerateHumanAttributesSegmentationRequest *)self setQualityLevel:[(VNGenerateHumanAttributesSegmentationRequest *)v5 qualityLevel]];
      [(VNGenerateSegmentationRequest *)self setOutputPixelFormat:[(VNGenerateSegmentationRequest *)v5 outputPixelFormat]];
    }
  }
}

+ (id)descriptionForPrivateRevision:(unint64_t)revision
{
  if (revision == 3737841664)
  {
    v5 = @"VNGenerateHumanAttributesSegmentationRequestPrivateRevisionSemanticV7";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___VNGenerateHumanAttributesSegmentationRequest;
    v5 = objc_msgSendSuper2(&v7, sel_descriptionForPrivateRevision_);
  }

  return v5;
}

+ (id)privateRevisionsSet
{
  if (+[VNGenerateHumanAttributesSegmentationRequest privateRevisionsSet]::onceToken != -1)
  {
    dispatch_once(&+[VNGenerateHumanAttributesSegmentationRequest privateRevisionsSet]::onceToken, &__block_literal_global_68);
  }

  v3 = +[VNGenerateHumanAttributesSegmentationRequest privateRevisionsSet]::privateRevisions;

  return v3;
}

void __67__VNGenerateHumanAttributesSegmentationRequest_privateRevisionsSet__block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  [v2 addIndex:3737841664];
  v0 = [v2 copy];
  v1 = +[VNGenerateHumanAttributesSegmentationRequest privateRevisionsSet]::privateRevisions;
  +[VNGenerateHumanAttributesSegmentationRequest privateRevisionsSet]::privateRevisions = v0;
}

+ (id)_supportedHumanAttributesNamesRevision1
{
  if (+[VNGenerateHumanAttributesSegmentationRequest _supportedHumanAttributesNamesRevision1]::onceToken != -1)
  {
    dispatch_once(&+[VNGenerateHumanAttributesSegmentationRequest _supportedHumanAttributesNamesRevision1]::onceToken, &__block_literal_global_11074);
  }

  v3 = +[VNGenerateHumanAttributesSegmentationRequest _supportedHumanAttributesNamesRevision1]::supportedHumanAttributesNamesRevision1;

  return v3;
}

void __87__VNGenerateHumanAttributesSegmentationRequest__supportedHumanAttributesNamesRevision1__block_invoke()
{
  v2[4] = *MEMORY[0x1E69E9840];
  v2[0] = @"human_attribute_skin";
  v2[1] = @"human_attribute_hair";
  v2[2] = @"human_attribute_facial_hair";
  v2[3] = @"human_attribute_teeth";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:4];
  v1 = +[VNGenerateHumanAttributesSegmentationRequest _supportedHumanAttributesNamesRevision1]::supportedHumanAttributesNamesRevision1;
  +[VNGenerateHumanAttributesSegmentationRequest _supportedHumanAttributesNamesRevision1]::supportedHumanAttributesNamesRevision1 = v0;
}

@end