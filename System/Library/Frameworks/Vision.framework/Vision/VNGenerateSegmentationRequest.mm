@interface VNGenerateSegmentationRequest
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration;
- (id)description;
- (id)performAccurateSegmentationInContext:(id)context options:(id)options error:(id *)error;
- (unsigned)outputPixelFormat;
- (void)applyConfigurationOfRequest:(id)request;
- (void)setOutputPixelFormat:(unsigned int)format;
@end

@implementation VNGenerateSegmentationRequest

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11.receiver = self;
  v11.super_class = VNGenerateSegmentationRequest;
  v4 = [(VNImageBasedRequest *)&v11 description];
  outputPixelFormat = [(VNGenerateSegmentationRequest *)self outputPixelFormat];
  if (outputPixelFormat == 1278226488)
  {
    v6 = @"kCVPixelFormatType_OneComponent8";
  }

  else
  {
    v6 = 0;
  }

  if (outputPixelFormat == 1278226534)
  {
    v7 = @"kCVPixelFormatType_OneComponent32Float";
  }

  else
  {
    v7 = v6;
  }

  if (outputPixelFormat == 1278226536)
  {
    v8 = @"kCVPixelFormatType_OneComponent16Half";
  }

  else
  {
    v8 = v7;
  }

  v9 = [v3 initWithFormat:@"%@ pixelFormat=%@", v4, v8];

  return v9;
}

- (void)setOutputPixelFormat:(unsigned int)format
{
  v3 = *&format;
  configuration = [(VNRequest *)self configuration];
  [configuration setOutputPixelFormat:v3];
}

- (unsigned)outputPixelFormat
{
  configuration = [(VNRequest *)self configuration];
  outputPixelFormat = [configuration outputPixelFormat];

  return outputPixelFormat;
}

- (id)performAccurateSegmentationInContext:(id)context options:(id)options error:(id *)error
{
  v26[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  optionsCopy = options;
  configuredCopyOfSelfWithBalancedQualityLevel = [(VNGenerateSegmentationRequest *)self configuredCopyOfSelfWithBalancedQualityLevel];
  for (i = 0; i != 3; ++i)
  {
    [configuredCopyOfSelfWithBalancedQualityLevel setOutputPixelFormat:-[VNGenerateSegmentationRequest performAccurateSegmentationInContext:options:error:]::pixelFormatTypes[i]];
    results = [contextCopy cachedObservationsAcceptedByRequest:configuredCopyOfSelfWithBalancedQualityLevel];
    if (results)
    {
      goto LABEL_7;
    }
  }

  [configuredCopyOfSelfWithBalancedQualityLevel setOutputPixelFormat:1278226534];
  v12 = [contextCopy requestPerformerAndReturnError:error];
  if (!v12 || (v26[0] = configuredCopyOfSelfWithBalancedQualityLevel, [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "performDependentRequests:onBehalfOfRequest:inContext:error:", v13, self, contextCopy, error), v13, (v14 & 1) == 0))
  {

    results = 0;
LABEL_14:
    self = 0;
    goto LABEL_18;
  }

  results = [configuredCopyOfSelfWithBalancedQualityLevel results];

LABEL_7:
  if (![results count])
  {
    if (error)
    {
      [VNError errorForInternalErrorWithLocalizedDescription:@"Empty observations"];
      *error = self = 0;
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  [optionsCopy setObject:results forKeyedSubscript:@"VNGuidedUpsamplingGeneratorOption_LowResImages"];
  [optionsCopy setObject:&unk_1F19C1BE8 forKeyedSubscript:@"VNGuidedUpsamplingGeneratorOption_InputPixelFormat"];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VNGenerateSegmentationRequest outputPixelFormat](self, "outputPixelFormat")}];
  [optionsCopy setObject:v15 forKeyedSubscript:@"VNGuidedUpsamplingGeneratorOption_OutputPixelFormat"];

  v16 = contextCopy;
  v17 = @"VNGuidedUpsamplingGeneratorType";
  v18 = optionsCopy;
  if (self)
  {
    v19 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v18];
    [v19 removeObjectForKey:@"VNSegmentationGeneratorProcessOption_OutputPixelFormat"];
    [v19 removeObjectForKey:@"VNSegmentationGeneratorProcessOption_KeepRawOutputMask"];
    [v19 removeObjectForKey:@"VNSegmentationGeneratorProcessOption_MaskImageObservations"];
    session = [v16 session];
    v21 = [session detectorOfType:@"VNGuidedUpsamplingGeneratorType" configuredWithOptions:v19 error:error];
    if (v21)
    {
      v24 = v16;
      qosClass = [v16 qosClass];
      [(VNImageBasedRequest *)self regionOfInterest];
      self = [v21 processUsingQualityOfServiceClass:qosClass options:v18 regionOfInterest:self warningRecorder:error error:0 progressHandler:?];
      v16 = v24;
    }

    else
    {
      self = 0;
    }
  }

LABEL_18:

  return self;
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  outputPixelFormat = [(VNGenerateSegmentationRequest *)self outputPixelFormat];
  if (outputPixelFormat == [configurationCopy outputPixelFormat])
  {
    v8.receiver = self;
    v8.super_class = VNGenerateSegmentationRequest;
    v6 = [(VNImageBasedRequest *)&v8 willAcceptCachedResultsFromRequestWithConfiguration:configurationCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)applyConfigurationOfRequest:(id)request
{
  requestCopy = request;
  if (self != requestCopy)
  {
    v6.receiver = self;
    v6.super_class = VNGenerateSegmentationRequest;
    [(VNImageBasedRequest *)&v6 applyConfigurationOfRequest:requestCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = requestCopy;
      [(VNGenerateSegmentationRequest *)self setOutputPixelFormat:[(VNGenerateSegmentationRequest *)v5 outputPixelFormat]];
    }
  }
}

@end