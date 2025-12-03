@interface VNGeneratePersonSegmentationRequest
+ (id)descriptionForPrivateRevision:(unint64_t)revision;
+ (id)privateRevisionsSet;
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (BOOL)useTiling;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration;
- (OSType)outputPixelFormat;
- (VNGeneratePersonSegmentationRequest)initWithCompletionHandler:(VNRequestCompletionHandler)completionHandler;
- (VNGeneratePersonSegmentationRequestQualityLevel)qualityLevel;
- (float)minimumConfidence;
- (id)_internalPerformRevision:(void *)revision session:(uint64_t)session qosClass:(void *)class generatorOptions:(uint64_t)options error:;
- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error;
- (id)description;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session;
- (id)supportedOutputPixelFormatsAndReturnError:(id *)error;
- (uint64_t)keepRawOutputMask;
- (void)applyConfigurationOfRequest:(id)request;
- (void)setMinimumConfidence:(float)confidence;
- (void)setOutputPixelFormat:(OSType)outputPixelFormat;
- (void)setQualityLevel:(VNGeneratePersonSegmentationRequestQualityLevel)qualityLevel;
- (void)setUseTiling:(BOOL)tiling;
@end

@implementation VNGeneratePersonSegmentationRequest

- (id)description
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__VNGeneratePersonSegmentationRequest_description__block_invoke;
  aBlock[3] = &unk_1E77B41E8;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13.receiver = self;
  v13.super_class = VNGeneratePersonSegmentationRequest;
  v5 = [(VNStatefulRequest *)&v13 description];
  v6 = v3[2](v3, [(VNGeneratePersonSegmentationRequest *)self qualityLevel]);
  v7 = [v4 initWithFormat:@"%@ qualityLevel=%@", v5, v6];

  if ([(VNRequest *)self resolvedRevision]>= 0xDECAF000)
  {
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    useTiling = [(VNGeneratePersonSegmentationRequest *)self useTiling];
    [(VNGeneratePersonSegmentationRequest *)self minimumConfidence];
    v11 = [v8 initWithFormat:@"%@ useTiling=%d minimumConfidence=%f", v7, useTiling, v10];

    v7 = v11;
  }

  return v7;
}

uint64_t __50__VNGeneratePersonSegmentationRequest_description__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) qualityLevel];
  if (v1 > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_1E77B4208 + v1);
  }
}

- (void)setMinimumConfidence:(float)confidence
{
  configuration = [(VNRequest *)self configuration];
  *&v4 = confidence;
  [configuration setMinimumConfidence:v4];
}

- (float)minimumConfidence
{
  configuration = [(VNRequest *)self configuration];
  [configuration minimumConfidence];
  v4 = v3;

  return v4;
}

- (void)setUseTiling:(BOOL)tiling
{
  tilingCopy = tiling;
  configuration = [(VNRequest *)self configuration];
  [configuration setUseTiling:tilingCopy];
}

- (BOOL)useTiling
{
  configuration = [(VNRequest *)self configuration];
  useTiling = [configuration useTiling];

  return useTiling;
}

- (void)setOutputPixelFormat:(OSType)outputPixelFormat
{
  v3 = *&outputPixelFormat;
  configuration = [(VNRequest *)self configuration];
  [configuration setOutputPixelFormat:v3];
}

- (OSType)outputPixelFormat
{
  configuration = [(VNRequest *)self configuration];
  outputPixelFormat = [configuration outputPixelFormat];

  return outputPixelFormat;
}

- (id)supportedOutputPixelFormatsAndReturnError:(id *)error
{
  v8 = 0;
  v4 = [(VNRequest *)self applicableDetectorClassAndOptions:&v8 forRevision:[(VNRequest *)self resolvedRevision] error:error];
  v5 = v8;
  if (v4)
  {
    v6 = [(objc_class *)v4 supportedOutputPixelFormatsForOptions:v5 error:error];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setQualityLevel:(VNGeneratePersonSegmentationRequestQualityLevel)qualityLevel
{
  configuration = [(VNRequest *)self configuration];
  [configuration setQualityLevel:qualityLevel];
}

- (VNGeneratePersonSegmentationRequestQualityLevel)qualityLevel
{
  configuration = [(VNRequest *)self configuration];
  qualityLevel = [configuration qualityLevel];

  return qualityLevel;
}

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  v51[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v9 = [contextCopy imageBufferAndReturnError:error];
  if (v9)
  {
    session = [contextCopy session];
    qosClass = [contextCopy qosClass];
    v44 = [(VNGeneratePersonSegmentationRequest *)self newDefaultDetectorOptionsForRequestRevision:revision session:session];
    v46 = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
    [v44 setObject:v10 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

    qualityLevel = [(VNGeneratePersonSegmentationRequest *)self qualityLevel];
    if (qualityLevel)
    {
      if (qualityLevel == VNGeneratePersonSegmentationRequestQualityLevelBalanced)
      {
        if (error)
        {
          v19 = 0;
          v22 = [VNError errorForInternalErrorWithLocalizedDescription:@"Balanced quality level is handled by compound request"];
          goto LABEL_37;
        }
      }

      else
      {
        if (qualityLevel == VNGeneratePersonSegmentationRequestQualityLevelFast)
        {
          v41 = session;
          v12 = v9;
          v13 = v44;
          v38 = v12;
          if (self)
          {
            width = [v12 width];
            height = [v12 height];
            [v13 setObject:&unk_1F19C1540 forKeyedSubscript:@"VNSegmentationGeneratorProcessOption_QualityLevel"];
            v50 = VNPersonSegmentationGeneratorFastOutputBlobNameMask;
            v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VNGeneratePersonSegmentationRequest outputPixelFormat](self, "outputPixelFormat")}];
            v51[0] = v14;
            v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
            [v13 setObject:v15 forKeyedSubscript:@"VNSegmentationGeneratorProcessOption_OutputPixelFormat"];

            v48 = VNPersonSegmentationGeneratorFastOutputBlobNameMask;
            v49 = MEMORY[0x1E695E110];
            v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
            [v13 setObject:v16 forKeyedSubscript:@"VNSegmentationGeneratorProcessOption_KeepRawOutputMask"];

            v17 = @"portrait";
            if (width > height)
            {
              v17 = @"landscape";
            }

            v18 = v17;
            [v13 setObject:v18 forKeyedSubscript:@"VNEspressoModelFileBasedDetectorOption_NetworkConfiguration"];
            if (self->_previousObservations && width == self->_previousImageWidth && height == self->_previousImageHeight)
            {
              [v13 setObject:? forKeyedSubscript:?];
            }

            v19 = [(VNGeneratePersonSegmentationRequest *)self _internalPerformRevision:revision session:v41 qosClass:qosClass generatorOptions:v13 error:error];
            if (v19)
            {
              objc_storeStrong(&self->_previousObservations, v19);
              self->_previousImageWidth = [v38 width];
              self->_previousImageHeight = [v38 height];
              v20 = v19;
            }
          }

          else
          {
            v19 = 0;
          }

          goto LABEL_35;
        }

        if (error)
        {
          v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VNGeneratePersonSegmentationRequest qualityLevel](self, "qualityLevel")}];
          v35 = [VNError errorForInvalidOption:v34 named:@"qualityLevel"];
        }
      }

      v21 = 0;
      v19 = 0;
LABEL_38:

      goto LABEL_39;
    }

    v40 = session;
    v23 = contextCopy;
    v42 = v44;
    if (self)
    {
      v24 = objc_alloc_init(VNGeneratePersonSegmentationRequest);
      [(VNGeneratePersonSegmentationRequest *)v24 applyConfigurationOfRequest:self];
      [(VNGeneratePersonSegmentationRequest *)v24 setQualityLevel:1];
      for (i = 0; i != 3; ++i)
      {
        [(VNGeneratePersonSegmentationRequest *)v24 setOutputPixelFormat:[VNGenerateSegmentationRequest performAccurateSegmentationInContext:options:error:]::pixelFormatTypes[i]];
        v26 = [v23 cachedObservationsAcceptedByRequest:v24];
        if (v26)
        {
          goto LABEL_28;
        }
      }

      [(VNGeneratePersonSegmentationRequest *)v24 setOutputPixelFormat:1278226534];
      if (v24)
      {
        configuration = [(VNRequest *)v24 configuration];
        [configuration setKeepRawOutputMask:1];
      }

      v26 = [v23 requestPerformerAndReturnError:error];
      if (v26)
      {
        v51[0] = v24;
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
        v29 = [v26 performDependentRequests:v28 onBehalfOfRequest:self inContext:v23 error:error];

        if (v29)
        {
          results = [(VNRequest *)v24 results];

          v26 = results;
LABEL_28:
          [v42 setObject:&unk_1F19C1528 forKeyedSubscript:@"VNSegmentationGeneratorProcessOption_QualityLevel"];
          v49 = VNPersonSegmentationGeneratorLearnedMattingOutputBlobNameMask;
          v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VNGeneratePersonSegmentationRequest outputPixelFormat](self, "outputPixelFormat")}];
          v50 = v31;
          v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
          [v42 setObject:v32 forKeyedSubscript:@"VNSegmentationGeneratorProcessOption_OutputPixelFormat"];

          v47 = VNPersonSegmentationGeneratorLearnedMattingOutputBlobNameMask;
          v48 = MEMORY[0x1E695E110];
          v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
          [v42 setObject:v33 forKeyedSubscript:@"VNSegmentationGeneratorProcessOption_KeepRawOutputMask"];

          [v42 setObject:v26 forKeyedSubscript:@"VNSegmentationGeneratorProcessOption_MaskImageObservations"];
          v19 = [(VNGeneratePersonSegmentationRequest *)self _internalPerformRevision:revision session:v40 qosClass:qosClass generatorOptions:v42 error:error];
          goto LABEL_33;
        }
      }

      v19 = 0;
LABEL_33:
    }

    else
    {
      v19 = 0;
    }

LABEL_35:
    if (v19)
    {
      [(VNRequest *)self setResults:v19];
      v21 = 1;
      goto LABEL_38;
    }

LABEL_37:
    v21 = 0;
    goto LABEL_38;
  }

  v21 = 0;
LABEL_39:

  return v21;
}

- (id)_internalPerformRevision:(void *)revision session:(uint64_t)session qosClass:(void *)class generatorOptions:(uint64_t)options error:
{
  revisionCopy = revision;
  classCopy = class;
  v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:classCopy];
  [v13 removeObjectForKey:@"VNSegmentationGeneratorProcessOption_OutputPixelFormat"];
  [v13 removeObjectForKey:@"VNSegmentationGeneratorProcessOption_KeepRawOutputMask"];
  [v13 removeObjectForKey:@"VNSegmentationGeneratorProcessOption_MaskImageObservations"];
  v14 = [self applicableDetectorTypeForRevision:a2 error:options];
  if (v14)
  {
    v15 = [revisionCopy detectorOfType:v14 configuredWithOptions:v13 error:options];
    if (v15)
    {
      [self regionOfInterest];
      v16 = [v15 processUsingQualityOfServiceClass:session options:classCopy regionOfInterest:self warningRecorder:options error:0 progressHandler:?];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  qualityLevel = [(VNGeneratePersonSegmentationRequest *)self qualityLevel];
  if (qualityLevel == [configurationCopy qualityLevel] && (v6 = -[VNGeneratePersonSegmentationRequest outputPixelFormat](self, "outputPixelFormat"), v6 == objc_msgSend(configurationCopy, "outputPixelFormat")) && (-[VNGeneratePersonSegmentationRequest minimumConfidence](self, "minimumConfidence"), v8 = v7, objc_msgSend(configurationCopy, "minimumConfidence"), v8 == v9))
  {
    v12.receiver = self;
    v12.super_class = VNGeneratePersonSegmentationRequest;
    v10 = [(VNImageBasedRequest *)&v12 willAcceptCachedResultsFromRequestWithConfiguration:configurationCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session
{
  v9.receiver = self;
  v9.super_class = VNGeneratePersonSegmentationRequest;
  v5 = [(VNRequest *)&v9 newDefaultDetectorOptionsForRequestRevision:revision session:session];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VNGeneratePersonSegmentationRequest qualityLevel](self, "qualityLevel")}];
  [v5 setObject:v6 forKeyedSubscript:@"VNSegmentationGeneratorProcessOption_QualityLevel"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNGeneratePersonSegmentationRequest useTiling](self, "useTiling")}];
  [v5 setObject:v7 forKeyedSubscript:@"VNSegmentationGeneratorProcessOption_UseTiling"];

  return v5;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error
{
  if (revision == 3737841665)
  {
    goto LABEL_12;
  }

  if (revision != 3737841664)
  {
    if (revision != 1)
    {
      if (error)
      {
        [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequest:" ofRequest:?];
        *error = v8 = 0;
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    qualityLevel = [(VNGeneratePersonSegmentationRequest *)self qualityLevel];
    if (qualityLevel == VNGeneratePersonSegmentationRequestQualityLevelFast)
    {
      goto LABEL_12;
    }

    if (qualityLevel != VNGeneratePersonSegmentationRequestQualityLevelBalanced)
    {
      if (qualityLevel)
      {
        if (error)
        {
          goto LABEL_19;
        }

        goto LABEL_20;
      }

LABEL_12:
      v8 = @"VNE5RTSegmentationMultiGeneratorType";
      v9 = @"VNE5RTSegmentationMultiGeneratorType";
      goto LABEL_21;
    }

    v10 = +[VNGenerateSemanticSegmentationCompoundRequest detectorTypeForSemanticSegmentationRequest];
LABEL_17:
    v8 = v10;
    goto LABEL_21;
  }

  qualityLevel2 = [(VNGeneratePersonSegmentationRequest *)self qualityLevel];
  switch(qualityLevel2)
  {
    case VNGeneratePersonSegmentationRequestQualityLevelFast:
      goto LABEL_12;
    case VNGeneratePersonSegmentationRequestQualityLevelBalanced:
      v10 = +[VNGenerateSemanticSegmentationCompoundRequest detectorTypeForPersonInstanceRequest];
      goto LABEL_17;
    case VNGeneratePersonSegmentationRequestQualityLevelAccurate:
      goto LABEL_12;
  }

  if (error)
  {
LABEL_19:
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Undefined quality level: %lu", -[VNGeneratePersonSegmentationRequest qualityLevel](self, "qualityLevel")];
    *error = [VNError errorForInternalErrorWithLocalizedDescription:v11];
  }

LABEL_20:
  v8 = 0;
LABEL_21:

  return v8;
}

- (void)applyConfigurationOfRequest:(id)request
{
  requestCopy = request;
  if (self != requestCopy)
  {
    v6.receiver = self;
    v6.super_class = VNGeneratePersonSegmentationRequest;
    [(VNImageBasedRequest *)&v6 applyConfigurationOfRequest:requestCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = requestCopy;
      [(VNGeneratePersonSegmentationRequest *)self setQualityLevel:[(VNGeneratePersonSegmentationRequest *)v5 qualityLevel]];
      [(VNGeneratePersonSegmentationRequest *)self setOutputPixelFormat:[(VNGeneratePersonSegmentationRequest *)v5 outputPixelFormat]];
      [(VNGeneratePersonSegmentationRequest *)self setUseTiling:[(VNGeneratePersonSegmentationRequest *)v5 useTiling]];
      [(VNGeneratePersonSegmentationRequest *)v5 minimumConfidence];
      [(VNGeneratePersonSegmentationRequest *)self setMinimumConfidence:?];
    }
  }
}

- (VNGeneratePersonSegmentationRequest)initWithCompletionHandler:(VNRequestCompletionHandler)completionHandler
{
  v4 = *MEMORY[0x1E6960CC0];
  v5 = *(MEMORY[0x1E6960CC0] + 16);
  return [(VNStatefulRequest *)self initWithFrameAnalysisSpacing:&v4 completionHandler:completionHandler];
}

+ (id)descriptionForPrivateRevision:(unint64_t)revision
{
  if (revision == 3737841664)
  {
    v5 = @"VNGeneratePersonSegmentationRequestPrivateRevisionInstanceBased4People";
  }

  else if (revision == 3737841665)
  {
    v5 = @"VNGeneratePersonSegmentationRequestPrivateRevisionSemanticV7";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___VNGeneratePersonSegmentationRequest;
    v5 = objc_msgSendSuper2(&v7, sel_descriptionForPrivateRevision_);
  }

  return v5;
}

+ (id)privateRevisionsSet
{
  if (+[VNGeneratePersonSegmentationRequest(Revisioning) privateRevisionsSet]::onceToken != -1)
  {
    dispatch_once(&+[VNGeneratePersonSegmentationRequest(Revisioning) privateRevisionsSet]::onceToken, &__block_literal_global_18614);
  }

  v3 = +[VNGeneratePersonSegmentationRequest(Revisioning) privateRevisionsSet]::privateRevisions;

  return v3;
}

void __71__VNGeneratePersonSegmentationRequest_Revisioning__privateRevisionsSet__block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  [v2 addIndex:3737841664];
  [v2 addIndex:3737841665];
  v0 = [v2 copy];
  v1 = +[VNGeneratePersonSegmentationRequest(Revisioning) privateRevisionsSet]::privateRevisions;
  +[VNGeneratePersonSegmentationRequest(Revisioning) privateRevisionsSet]::privateRevisions = v0;
}

- (uint64_t)keepRawOutputMask
{
  if (!self)
  {
    return 0;
  }

  configuration = [self configuration];
  keepRawOutputMask = [configuration keepRawOutputMask];

  return keepRawOutputMask;
}

@end