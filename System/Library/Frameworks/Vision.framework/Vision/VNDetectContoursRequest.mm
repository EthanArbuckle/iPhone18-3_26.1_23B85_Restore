@interface VNDetectContoursRequest
- (BOOL)detectsDarkOnLight;
- (BOOL)forceUseInputCVPixelBufferDirectly;
- (BOOL)inHierarchy;
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration;
- (NSNumber)contrastPivot;
- (NSUInteger)maximumImageDimension;
- (float)contrastAdjustment;
- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error;
- (void)applyConfigurationOfRequest:(id)request;
- (void)setContrastAdjustment:(float)contrastAdjustment;
- (void)setContrastPivot:(NSNumber *)contrastPivot;
- (void)setDetectsDarkOnLight:(BOOL)detectsDarkOnLight;
- (void)setForceUseInputCVPixelBufferDirectly:(BOOL)directly;
- (void)setInHierarchy:(BOOL)hierarchy;
- (void)setMaximumImageDimension:(NSUInteger)maximumImageDimension;
@end

@implementation VNDetectContoursRequest

- (void)setInHierarchy:(BOOL)hierarchy
{
  hierarchyCopy = hierarchy;
  configuration = [(VNRequest *)self configuration];
  [configuration setInHierarchy:hierarchyCopy];
}

- (BOOL)inHierarchy
{
  configuration = [(VNRequest *)self configuration];
  inHierarchy = [configuration inHierarchy];

  return inHierarchy;
}

- (void)setForceUseInputCVPixelBufferDirectly:(BOOL)directly
{
  directlyCopy = directly;
  configuration = [(VNRequest *)self configuration];
  [configuration setForceUseInputCVPixelBufferDirectly:directlyCopy];
}

- (BOOL)forceUseInputCVPixelBufferDirectly
{
  configuration = [(VNRequest *)self configuration];
  forceUseInputCVPixelBufferDirectly = [configuration forceUseInputCVPixelBufferDirectly];

  return forceUseInputCVPixelBufferDirectly;
}

- (void)setMaximumImageDimension:(NSUInteger)maximumImageDimension
{
  configuration = [(VNRequest *)self configuration];
  [configuration setMaximumImageDimension:maximumImageDimension];
}

- (NSUInteger)maximumImageDimension
{
  configuration = [(VNRequest *)self configuration];
  maximumImageDimension = [configuration maximumImageDimension];

  return maximumImageDimension;
}

- (void)setDetectsDarkOnLight:(BOOL)detectsDarkOnLight
{
  v3 = detectsDarkOnLight;
  configuration = [(VNRequest *)self configuration];
  [configuration setDetectsDarkOnLight:v3];
}

- (BOOL)detectsDarkOnLight
{
  configuration = [(VNRequest *)self configuration];
  detectsDarkOnLight = [configuration detectsDarkOnLight];

  return detectsDarkOnLight;
}

- (void)setContrastPivot:(NSNumber *)contrastPivot
{
  v5 = contrastPivot;
  configuration = [(VNRequest *)self configuration];
  [configuration setContrastPivot:v5];
}

- (NSNumber)contrastPivot
{
  configuration = [(VNRequest *)self configuration];
  contrastPivot = [configuration contrastPivot];

  return contrastPivot;
}

- (void)setContrastAdjustment:(float)contrastAdjustment
{
  configuration = [(VNRequest *)self configuration];
  *&v4 = contrastAdjustment;
  [configuration setContrastAdjustment:v4];
}

- (float)contrastAdjustment
{
  configuration = [(VNRequest *)self configuration];
  [configuration contrastAdjustment];
  v4 = v3;

  return v4;
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [(VNDetectContoursRequest *)self contrastAdjustment];
  v6 = v5;
  [configurationCopy contrastAdjustment];
  if (v6 == v7 && (-[VNDetectContoursRequest contrastPivot](self, "contrastPivot"), v8 = objc_claimAutoreleasedReturnValue(), [configurationCopy contrastPivot], v9 = objc_claimAutoreleasedReturnValue(), v10 = VisionCoreEqualOrNilObjects(), v9, v8, (v10 & 1) != 0) && (v11 = -[VNDetectContoursRequest detectsDarkOnLight](self, "detectsDarkOnLight"), v11 == objc_msgSend(configurationCopy, "detectsDarkOnLight")) && (v12 = -[VNDetectContoursRequest maximumImageDimension](self, "maximumImageDimension"), v12 == objc_msgSend(configurationCopy, "maximumImageDimension")) && (v13 = -[VNDetectContoursRequest inHierarchy](self, "inHierarchy"), v13 == objc_msgSend(configurationCopy, "inHierarchy")))
  {
    v16.receiver = self;
    v16.super_class = VNDetectContoursRequest;
    v14 = [(VNImageBasedRequest *)&v16 willAcceptCachedResultsFromRequestWithConfiguration:configurationCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  v31[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  contrastPivot = [(VNDetectContoursRequest *)self contrastPivot];
  v10 = contrastPivot;
  if (contrastPivot)
  {
    [contrastPivot floatValue];
    if (v11 < 0.0 || v11 > 1.0)
    {
      if (error)
      {
        0x3FF0000000000000 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"contrastPivot property must be in the range [%f..%f]", 0, 0x3FF0000000000000];
        *error = [VNError errorForInvalidOption:v10 named:@"contrastPivot" localizedDescription:0x3FF0000000000000];
LABEL_12:

        LOBYTE(error) = 0;
        goto LABEL_22;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v10 = &unk_1F19C24C8;
  }

  maximumImageDimension = [(VNDetectContoursRequest *)self maximumImageDimension];
  if (maximumImageDimension > 63)
  {
    v16 = [contextCopy imageBufferAndReturnError:error];
    if (v16)
    {
      session = [contextCopy session];
      v30 = 0;
      v17 = [VNRequest applicableDetectorAndOptions:"applicableDetectorAndOptions:forRevision:loadedInSession:error:" forRevision:&v30 loadedInSession:revision error:?];
      v18 = v30;
      if (v17)
      {
        v31[0] = v16;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
        [v18 setObject:v19 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

        v20 = MEMORY[0x1E696AD98];
        [(VNDetectContoursRequest *)self contrastAdjustment];
        v21 = [v20 numberWithFloat:?];
        [v18 setObject:v21 forKeyedSubscript:@"VNContourDetectorProcessOption_ContrastAdjustment"];

        [v18 setObject:v10 forKeyedSubscript:@"VNContourDetectorProcessOption_ContrastPivot"];
        v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNDetectContoursRequest detectsDarkOnLight](self, "detectsDarkOnLight")}];
        [v18 setObject:v22 forKeyedSubscript:@"VNContourDetectorProcessOption_DetectDarkOnLight"];

        v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:maximumImageDimension];
        [v18 setObject:v23 forKeyedSubscript:@"VNContourDetectorProcessOption_MaximumImageDimension"];

        v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNDetectContoursRequest forceUseInputCVPixelBufferDirectly](self, "forceUseInputCVPixelBufferDirectly")}];
        [v18 setObject:v24 forKeyedSubscript:@"VNContourDetectorProcessOption_ForceUseInputCVPixelBufferDirectly"];

        v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNDetectContoursRequest inHierarchy](self, "inHierarchy")}];
        [v18 setObject:v25 forKeyedSubscript:@"VNContourDetectorProcessOption_InHierarchy"];

        qosClass = [contextCopy qosClass];
        [(VNImageBasedRequest *)self regionOfInterest];
        v27 = [v17 processUsingQualityOfServiceClass:qosClass options:v18 regionOfInterest:self warningRecorder:error error:0 progressHandler:?];
        LOBYTE(error) = v27 != 0;
        if (v27)
        {
          [(VNRequest *)self setResults:v27];
        }
      }

      else
      {
        LOBYTE(error) = 0;
      }
    }

    else
    {
      LOBYTE(error) = 0;
    }
  }

  else if (error)
  {
    0x3FF0000000000000 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"maximumImageDimension property must be in the range [%lu..%lu]", 64, 0x7FFFFFFFFFFFFFFFLL];
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:maximumImageDimension];
    *error = [VNError errorForInvalidOption:v15 named:@"maximumImageDimension" localizedDescription:0x3FF0000000000000];

    goto LABEL_12;
  }

LABEL_22:

  return error;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error
{
  if (revision == 1)
  {
    v4 = @"VNContoursDetectorType";
    v5 = @"VNContoursDetectorType";
  }

  else if (error)
  {
    [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequest:" ofRequest:?];
    *error = v4 = 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)applyConfigurationOfRequest:(id)request
{
  requestCopy = request;
  if (self != requestCopy)
  {
    v7.receiver = self;
    v7.super_class = VNDetectContoursRequest;
    [(VNImageBasedRequest *)&v7 applyConfigurationOfRequest:requestCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = requestCopy;
      [(VNDetectContoursRequest *)v5 contrastAdjustment];
      [(VNDetectContoursRequest *)self setContrastAdjustment:?];
      contrastPivot = [(VNDetectContoursRequest *)v5 contrastPivot];
      [(VNDetectContoursRequest *)self setContrastPivot:contrastPivot];

      [(VNDetectContoursRequest *)self setDetectsDarkOnLight:[(VNDetectContoursRequest *)v5 detectsDarkOnLight]];
      [(VNDetectContoursRequest *)self setMaximumImageDimension:[(VNDetectContoursRequest *)v5 maximumImageDimension]];
      [(VNDetectContoursRequest *)self setInHierarchy:[(VNDetectContoursRequest *)v5 inHierarchy]];
      [(VNDetectContoursRequest *)self setForceUseInputCVPixelBufferDirectly:[(VNDetectContoursRequest *)v5 forceUseInputCVPixelBufferDirectly]];
    }
  }
}

@end