@interface VNGenerateImageSegmentationRequest
+ (void)downloadModelForTests:(id)a3;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3;
- (VNGenerateImageSegmentationRequest)init;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4;
- (id)supportedFeaturesAndReturnError:(id *)a3;
- (id)supportedOutputPixelFormatsAndReturnError:(id *)a3;
- (int64_t)maximumTargetPoints;
- (unsigned)outputPixelFormat;
- (void)applyConfigurationOfRequest:(id)a3;
- (void)setOutputPixelFormat:(unsigned int)a3;
- (void)setTargetPoints:(id)a3;
@end

@implementation VNGenerateImageSegmentationRequest

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v24[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [v8 session];
  v23 = 0;
  v10 = [(VNRequest *)self applicableDetectorAndOptions:&v23 forRevision:a3 loadedInSession:v9 error:a5];
  v11 = v23;
  if (v10)
  {
    v12 = [v8 imageBufferAndReturnError:a5];
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

      v19 = [v8 qosClass];
      [(VNImageBasedRequest *)self regionOfInterest];
      v20 = [v10 processUsingQualityOfServiceClass:v19 options:v11 regionOfInterest:self warningRecorder:a5 error:0 progressHandler:?];
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

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(VNGenerateImageSegmentationRequest *)self outputPixelFormat];
  if (v5 == [v4 outputPixelFormat])
  {
    v8.receiver = self;
    v8.super_class = VNGenerateImageSegmentationRequest;
    v6 = [(VNImageBasedRequest *)&v8 willAcceptCachedResultsFromRequestWithConfiguration:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)applyConfigurationOfRequest:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    v6.receiver = self;
    v6.super_class = VNGenerateImageSegmentationRequest;
    [(VNImageBasedRequest *)&v6 applyConfigurationOfRequest:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [(VNGenerateImageSegmentationRequest *)self setOutputPixelFormat:[(VNGenerateImageSegmentationRequest *)v5 outputPixelFormat]];
    }
  }
}

- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4
{
  if (+[VNImageSegmenter supportsExecution])
  {
    if (a3 == 1)
    {
      v7 = @"VNImageSegmenterType";
      v8 = @"VNImageSegmenterType";
      goto LABEL_10;
    }

    if (a4)
    {
      v9 = [VNError errorForUnsupportedRevision:a3 ofRequest:self];
      goto LABEL_8;
    }
  }

  else if (a4)
  {
    v9 = [VNError errorWithCode:22 message:@"Requires newer ANE device"];
LABEL_8:
    v7 = 0;
    *a4 = v9;
    goto LABEL_10;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4
{
  v5.receiver = self;
  v5.super_class = VNGenerateImageSegmentationRequest;
  return [(VNRequest *)&v5 newDefaultDetectorOptionsForRequestRevision:a3 session:a4];
}

- (id)supportedOutputPixelFormatsAndReturnError:(id *)a3
{
  v8 = 0;
  v4 = [(VNRequest *)self applicableDetectorClassAndOptions:&v8 forRevision:[(VNRequest *)self resolvedRevision] error:a3];
  v5 = v8;
  if (v4)
  {
    v6 = [(objc_class *)v4 supportedOutputPixelFormatsForOptions:v5 error:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setOutputPixelFormat:(unsigned int)a3
{
  v3 = *&a3;
  v4 = [(VNRequest *)self configuration];
  [v4 setOutputPixelFormat:v3];
}

- (unsigned)outputPixelFormat
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 outputPixelFormat];

  return v3;
}

- (id)supportedFeaturesAndReturnError:(id *)a3
{
  v5 = [(VNRequest *)self resolvedRevision];
  v10 = 0;
  v6 = [(VNRequest *)self applicableDetectorClassAndOptions:&v10 forRevision:v5 error:a3];
  v7 = v10;
  if (!v6)
  {
    goto LABEL_6;
  }

  if ([(objc_class *)v6 isSubclassOfClass:objc_opt_class()])
  {
    v8 = [(objc_class *)v6 supportedFeaturesForOptions:v7 error:a3];
    goto LABEL_7;
  }

  if (a3)
  {
    [VNError errorForUnsupportedRevision:v5 ofRequest:self];
    *a3 = v8 = 0;
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
  v2 = [(VNRequest *)self applicableDetectorClassAndOptions:&v5 forRevision:[(VNRequest *)self resolvedRevision] error:0];
  v3 = v5;
  if (v2)
  {
    if ([(objc_class *)v2 isSubclassOfClass:objc_opt_class()])
    {
      v2 = [(objc_class *)v2 maximumTargetPoints];
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

- (void)setTargetPoints:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
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

+ (void)downloadModelForTests:(id)a3
{
  v5 = a3;
  v3 = objc_alloc_init(VNModelCatalogBridgingInterface);
  v4 = [(VNModelCatalogBridgingInterface *)v3 foregroundBackgroundSegmentationModelBundleURLWithError:0];
  if (v4)
  {
    v5[2](v5, 0);
  }

  else
  {
    [(VNModelCatalogBridgingInterface *)v3 downloadForegroundBackgroundSegmentationModelBundleWithCompletionHandler:v5];
  }
}

@end