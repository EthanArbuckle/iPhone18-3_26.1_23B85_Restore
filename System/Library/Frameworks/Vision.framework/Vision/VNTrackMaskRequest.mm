@interface VNTrackMaskRequest
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3;
- (VNTrackMaskRequest)initWithFrameUpdateSpacing:(id *)a3 mask:(__CVBuffer *)a4 completionHandler:(id)a5;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4;
- (void)applyConfigurationOfRequest:(id)a3;
@end

@implementation VNTrackMaskRequest

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v20[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [v8 session];
  v19 = 0;
  v10 = [(VNRequest *)self applicableDetectorAndOptions:&v19 forRevision:a3 loadedInSession:v9 error:a5];
  v11 = v19;
  if (v10)
  {
    v12 = [v8 imageBufferAndReturnError:a5];
    v13 = v12;
    if (v12)
    {
      v20[0] = v12;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
      [v11 setObject:v14 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

      [v11 setObject:self->_state forKeyedSubscript:@"VNTrackMaskDetectorProcessOption_State"];
      v15 = [v8 qosClass];
      [(VNImageBasedRequest *)self regionOfInterest];
      v16 = [v10 processUsingQualityOfServiceClass:v15 options:v11 regionOfInterest:self warningRecorder:a5 error:0 progressHandler:?];
      v17 = v16 != 0;
      if (v16)
      {
        [(VNRequest *)self setResults:v16];
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4
{
  if (a3 == 1)
  {
    v4 = @"VNTrackMaskDetectorType";
    v5 = @"VNTrackMaskDetectorType";
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

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4
{
  v8.receiver = self;
  v8.super_class = VNTrackMaskRequest;
  v5 = [(VNRequest *)&v8 newDefaultDetectorOptionsForRequestRevision:a3 session:a4];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNTrackMaskRequest generateCropRect](self, "generateCropRect")}];
  [v5 setObject:v6 forKeyedSubscript:@"VNTrackMaskDetectorProcessorOption_GenerateCropRect"];

  return v5;
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(VNTrackMaskRequest *)self generateCropRect];
  if (v5 == [v4 generateCropRect])
  {
    v8.receiver = self;
    v8.super_class = VNTrackMaskRequest;
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
    v5.receiver = self;
    v5.super_class = VNTrackMaskRequest;
    [(VNImageBasedRequest *)&v5 applyConfigurationOfRequest:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(VNTrackMaskRequest *)self setGenerateCropRect:[(VNTrackMaskRequest *)v4 generateCropRect]];
    }
  }
}

- (VNTrackMaskRequest)initWithFrameUpdateSpacing:(id *)a3 mask:(__CVBuffer *)a4 completionHandler:(id)a5
{
  v13.receiver = self;
  v13.super_class = VNTrackMaskRequest;
  v12 = *a3;
  v7 = [(VNStatefulRequest *)&v13 initWithFrameAnalysisSpacing:&v12 completionHandler:a5];
  if (v7)
  {
    v8 = [VNTrackMaskDetectorState alloc];
    v12 = *a3;
    v9 = [(VNTrackMaskDetectorState *)v8 initWithFrameUpdateSpacing:&v12 mask:a4];
    state = v7->_state;
    v7->_state = v9;
  }

  return v7;
}

@end