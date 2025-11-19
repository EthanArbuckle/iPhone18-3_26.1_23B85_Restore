@interface VNDetectContoursRequest
- (BOOL)detectsDarkOnLight;
- (BOOL)forceUseInputCVPixelBufferDirectly;
- (BOOL)inHierarchy;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3;
- (NSNumber)contrastPivot;
- (NSUInteger)maximumImageDimension;
- (float)contrastAdjustment;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
- (void)applyConfigurationOfRequest:(id)a3;
- (void)setContrastAdjustment:(float)contrastAdjustment;
- (void)setContrastPivot:(NSNumber *)contrastPivot;
- (void)setDetectsDarkOnLight:(BOOL)detectsDarkOnLight;
- (void)setForceUseInputCVPixelBufferDirectly:(BOOL)a3;
- (void)setInHierarchy:(BOOL)a3;
- (void)setMaximumImageDimension:(NSUInteger)maximumImageDimension;
@end

@implementation VNDetectContoursRequest

- (void)setInHierarchy:(BOOL)a3
{
  v3 = a3;
  v4 = [(VNRequest *)self configuration];
  [v4 setInHierarchy:v3];
}

- (BOOL)inHierarchy
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 inHierarchy];

  return v3;
}

- (void)setForceUseInputCVPixelBufferDirectly:(BOOL)a3
{
  v3 = a3;
  v4 = [(VNRequest *)self configuration];
  [v4 setForceUseInputCVPixelBufferDirectly:v3];
}

- (BOOL)forceUseInputCVPixelBufferDirectly
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 forceUseInputCVPixelBufferDirectly];

  return v3;
}

- (void)setMaximumImageDimension:(NSUInteger)maximumImageDimension
{
  v4 = [(VNRequest *)self configuration];
  [v4 setMaximumImageDimension:maximumImageDimension];
}

- (NSUInteger)maximumImageDimension
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 maximumImageDimension];

  return v3;
}

- (void)setDetectsDarkOnLight:(BOOL)detectsDarkOnLight
{
  v3 = detectsDarkOnLight;
  v4 = [(VNRequest *)self configuration];
  [v4 setDetectsDarkOnLight:v3];
}

- (BOOL)detectsDarkOnLight
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 detectsDarkOnLight];

  return v3;
}

- (void)setContrastPivot:(NSNumber *)contrastPivot
{
  v5 = contrastPivot;
  v4 = [(VNRequest *)self configuration];
  [v4 setContrastPivot:v5];
}

- (NSNumber)contrastPivot
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 contrastPivot];

  return v3;
}

- (void)setContrastAdjustment:(float)contrastAdjustment
{
  v5 = [(VNRequest *)self configuration];
  *&v4 = contrastAdjustment;
  [v5 setContrastAdjustment:v4];
}

- (float)contrastAdjustment
{
  v2 = [(VNRequest *)self configuration];
  [v2 contrastAdjustment];
  v4 = v3;

  return v4;
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3
{
  v4 = a3;
  [(VNDetectContoursRequest *)self contrastAdjustment];
  v6 = v5;
  [v4 contrastAdjustment];
  if (v6 == v7 && (-[VNDetectContoursRequest contrastPivot](self, "contrastPivot"), v8 = objc_claimAutoreleasedReturnValue(), [v4 contrastPivot], v9 = objc_claimAutoreleasedReturnValue(), v10 = VisionCoreEqualOrNilObjects(), v9, v8, (v10 & 1) != 0) && (v11 = -[VNDetectContoursRequest detectsDarkOnLight](self, "detectsDarkOnLight"), v11 == objc_msgSend(v4, "detectsDarkOnLight")) && (v12 = -[VNDetectContoursRequest maximumImageDimension](self, "maximumImageDimension"), v12 == objc_msgSend(v4, "maximumImageDimension")) && (v13 = -[VNDetectContoursRequest inHierarchy](self, "inHierarchy"), v13 == objc_msgSend(v4, "inHierarchy")))
  {
    v16.receiver = self;
    v16.super_class = VNDetectContoursRequest;
    v14 = [(VNImageBasedRequest *)&v16 willAcceptCachedResultsFromRequestWithConfiguration:v4];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v31[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [(VNDetectContoursRequest *)self contrastPivot];
  v10 = v9;
  if (v9)
  {
    [v9 floatValue];
    if (v11 < 0.0 || v11 > 1.0)
    {
      if (a5)
      {
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"contrastPivot property must be in the range [%f..%f]", 0, 0x3FF0000000000000];
        *a5 = [VNError errorForInvalidOption:v10 named:@"contrastPivot" localizedDescription:v13];
LABEL_12:

        LOBYTE(a5) = 0;
        goto LABEL_22;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v10 = &unk_1F19C24C8;
  }

  v14 = [(VNDetectContoursRequest *)self maximumImageDimension];
  if (v14 > 63)
  {
    v16 = [v8 imageBufferAndReturnError:a5];
    if (v16)
    {
      v29 = [v8 session];
      v30 = 0;
      v17 = [VNRequest applicableDetectorAndOptions:"applicableDetectorAndOptions:forRevision:loadedInSession:error:" forRevision:&v30 loadedInSession:a3 error:?];
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

        v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
        [v18 setObject:v23 forKeyedSubscript:@"VNContourDetectorProcessOption_MaximumImageDimension"];

        v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNDetectContoursRequest forceUseInputCVPixelBufferDirectly](self, "forceUseInputCVPixelBufferDirectly")}];
        [v18 setObject:v24 forKeyedSubscript:@"VNContourDetectorProcessOption_ForceUseInputCVPixelBufferDirectly"];

        v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNDetectContoursRequest inHierarchy](self, "inHierarchy")}];
        [v18 setObject:v25 forKeyedSubscript:@"VNContourDetectorProcessOption_InHierarchy"];

        v26 = [v8 qosClass];
        [(VNImageBasedRequest *)self regionOfInterest];
        v27 = [v17 processUsingQualityOfServiceClass:v26 options:v18 regionOfInterest:self warningRecorder:a5 error:0 progressHandler:?];
        LOBYTE(a5) = v27 != 0;
        if (v27)
        {
          [(VNRequest *)self setResults:v27];
        }
      }

      else
      {
        LOBYTE(a5) = 0;
      }
    }

    else
    {
      LOBYTE(a5) = 0;
    }
  }

  else if (a5)
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"maximumImageDimension property must be in the range [%lu..%lu]", 64, 0x7FFFFFFFFFFFFFFFLL];
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
    *a5 = [VNError errorForInvalidOption:v15 named:@"maximumImageDimension" localizedDescription:v13];

    goto LABEL_12;
  }

LABEL_22:

  return a5;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4
{
  if (a3 == 1)
  {
    v4 = @"VNContoursDetectorType";
    v5 = @"VNContoursDetectorType";
  }

  else if (a4)
  {
    [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequest:" ofRequest:?];
    *a4 = v4 = 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)applyConfigurationOfRequest:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    v7.receiver = self;
    v7.super_class = VNDetectContoursRequest;
    [(VNImageBasedRequest *)&v7 applyConfigurationOfRequest:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [(VNDetectContoursRequest *)v5 contrastAdjustment];
      [(VNDetectContoursRequest *)self setContrastAdjustment:?];
      v6 = [(VNDetectContoursRequest *)v5 contrastPivot];
      [(VNDetectContoursRequest *)self setContrastPivot:v6];

      [(VNDetectContoursRequest *)self setDetectsDarkOnLight:[(VNDetectContoursRequest *)v5 detectsDarkOnLight]];
      [(VNDetectContoursRequest *)self setMaximumImageDimension:[(VNDetectContoursRequest *)v5 maximumImageDimension]];
      [(VNDetectContoursRequest *)self setInHierarchy:[(VNDetectContoursRequest *)v5 inHierarchy]];
      [(VNDetectContoursRequest *)self setForceUseInputCVPixelBufferDirectly:[(VNDetectContoursRequest *)v5 forceUseInputCVPixelBufferDirectly]];
    }
  }
}

@end