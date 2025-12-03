@interface VNGenerateImageSegmentationRequest
+ (void)downloadModelForTests:(id)tests;
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration;
- (VNGenerateImageSegmentationRequest)init;
- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session;
- (id)supportedFeaturesAndReturnError:(id *)error;
- (id)supportedOutputPixelFormatsAndReturnError:(id *)error;
- (int64_t)maximumTargetPoints;
- (unsigned)outputPixelFormat;
- (void)applyConfigurationOfRequest:(id)request;
- (void)setOutputPixelFormat:(unsigned int)format;
- (void)setTargetPoints:(id)points;
@end

@implementation VNGenerateImageSegmentationRequest

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  v24[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  session = [contextCopy session];
  v23 = 0;
  v10 = [(VNRequest *)self applicableDetectorAndOptions:&v23 forRevision:revision loadedInSession:session error:error];
  v11 = v23;
  if (v10)
  {
    v12 = [contextCopy imageBufferAndReturnError:error];
    v13 = v12;
    if (v12)
    {
      v24[0] = v12;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
      [v11 setObject:v14 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

      v15 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:{-[VNGenerateImageSegmentationRequest disableConnectedComponentRefinement](self, "disableConnectedComponentRefinement")}];
      [v11 setObject:v15 forKeyedSubscript:@"disableCCRefinement"];

      [v11 setObject:self->_targetPoints forKeyedSubscript:@"targetPts"];
      v16 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:{-[VNGenerateImageSegmentationRequest minimumMaskPixelCount](self, "minimumMaskPixelCount")}];
      [v11 setObject:v16 forKeyedSubscript:@"minMask"];

      v17 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:{-[VNGenerateImageSegmentationRequest fillGapsInMask](self, "fillGapsInMask")}];
      [v11 setObject:v17 forKeyedSubscript:@"fillMaskGaps"];

      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VNGenerateImageSegmentationRequest outputPixelFormat](self, "outputPixelFormat")}];
      [v11 setObject:v18 forKeyedSubscript:@"VNImageSegmenterProcessOption_OutputPixelFormat"];

      qosClass = [contextCopy qosClass];
      [(VNImageBasedRequest *)self regionOfInterest];
      v20 = [v10 processUsingQualityOfServiceClass:qosClass options:v11 regionOfInterest:self warningRecorder:error error:0 progressHandler:?];
      v21 = v20 != 0;
      if (v20)
      {
        [(VNRequest *)self setResults:v20];
      }
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  outputPixelFormat = [(VNGenerateImageSegmentationRequest *)self outputPixelFormat];
  if (outputPixelFormat == [configurationCopy outputPixelFormat])
  {
    v8.receiver = self;
    v8.super_class = VNGenerateImageSegmentationRequest;
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
    v6.super_class = VNGenerateImageSegmentationRequest;
    [(VNImageBasedRequest *)&v6 applyConfigurationOfRequest:requestCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = requestCopy;
      [(VNGenerateImageSegmentationRequest *)self setOutputPixelFormat:[(VNGenerateImageSegmentationRequest *)v5 outputPixelFormat]];
    }
  }
}

- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error
{
  if (+[VNImageSegmenter supportsExecution])
  {
    if (revision == 1)
    {
      v7 = @"VNImageSegmenterType";
      v8 = @"VNImageSegmenterType";
      goto LABEL_10;
    }

    if (error)
    {
      v9 = [VNError errorForUnsupportedRevision:revision ofRequest:self];
      goto LABEL_8;
    }
  }

  else if (error)
  {
    v9 = [VNError errorWithCode:22 message:@"Requires newer ANE device"];
LABEL_8:
    v7 = 0;
    *error = v9;
    goto LABEL_10;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session
{
  v5.receiver = self;
  v5.super_class = VNGenerateImageSegmentationRequest;
  return [(VNRequest *)&v5 newDefaultDetectorOptionsForRequestRevision:revision session:session];
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

- (id)supportedFeaturesAndReturnError:(id *)error
{
  resolvedRevision = [(VNRequest *)self resolvedRevision];
  v10 = 0;
  v6 = [(VNRequest *)self applicableDetectorClassAndOptions:&v10 forRevision:resolvedRevision error:error];
  v7 = v10;
  if (!v6)
  {
    goto LABEL_6;
  }

  if ([(objc_class *)v6 isSubclassOfClass:objc_opt_class()])
  {
    v8 = [(objc_class *)v6 supportedFeaturesForOptions:v7 error:error];
    goto LABEL_7;
  }

  if (error)
  {
    [VNError errorForUnsupportedRevision:resolvedRevision ofRequest:self];
    *error = v8 = 0;
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

LABEL_7:

  return v8;
}

- (int64_t)maximumTargetPoints
{
  v5 = 0;
  maximumTargetPoints = [(VNRequest *)self applicableDetectorClassAndOptions:&v5 forRevision:[(VNRequest *)self resolvedRevision] error:0];
  v3 = v5;
  if (maximumTargetPoints)
  {
    if ([(objc_class *)maximumTargetPoints isSubclassOfClass:objc_opt_class()])
    {
      maximumTargetPoints = [(objc_class *)maximumTargetPoints maximumTargetPoints];
    }

    else
    {
      maximumTargetPoints = 0;
    }
  }

  return maximumTargetPoints;
}

- (void)setTargetPoints:(id)points
{
  pointsCopy = points;
  v4 = [pointsCopy copy];
  targetPoints = self->_targetPoints;
  self->_targetPoints = v4;
}

- (VNGenerateImageSegmentationRequest)init
{
  v8.receiver = self;
  v8.super_class = VNGenerateImageSegmentationRequest;
  v2 = [(VNRequest *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = [[VNFgBgE5MLInstanceSegmenterThresholds alloc] initWithRevision:[(VNRequest *)v2 resolvedRevision] error:0];
    [(VNFgBgE5MLInstanceSegmenterThresholds *)v4 defaultValidMinimumMaskPixelCount];
    v3->_minimumMaskPixelCount = v5;
    v6 = v3;
  }

  return v3;
}

+ (void)downloadModelForTests:(id)tests
{
  testsCopy = tests;
  v3 = objc_alloc_init(VNModelCatalogBridgingInterface);
  v4 = [(VNModelCatalogBridgingInterface *)v3 foregroundBackgroundSegmentationModelBundleURLWithError:0];
  if (v4)
  {
    testsCopy[2](testsCopy, 0);
  }

  else
  {
    [(VNModelCatalogBridgingInterface *)v3 downloadForegroundBackgroundSegmentationModelBundleWithCompletionHandler:testsCopy];
  }
}

@end