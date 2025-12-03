@interface VNTrackMaskRequest
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration;
- (VNTrackMaskRequest)initWithFrameUpdateSpacing:(id *)spacing mask:(__CVBuffer *)mask completionHandler:(id)handler;
- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session;
- (void)applyConfigurationOfRequest:(id)request;
@end

@implementation VNTrackMaskRequest

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  session = [contextCopy session];
  v19 = 0;
  v10 = [(VNRequest *)self applicableDetectorAndOptions:&v19 forRevision:revision loadedInSession:session error:error];
  v11 = v19;
  if (v10)
  {
    v12 = [contextCopy imageBufferAndReturnError:error];
    v13 = v12;
    if (v12)
    {
      v20[0] = v12;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
      [v11 setObject:v14 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

      [v11 setObject:self->_state forKeyedSubscript:@"VNTrackMaskDetectorProcessOption_State"];
      qosClass = [contextCopy qosClass];
      [(VNImageBasedRequest *)self regionOfInterest];
      v16 = [v10 processUsingQualityOfServiceClass:qosClass options:v11 regionOfInterest:self warningRecorder:error error:0 progressHandler:?];
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

- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error
{
  if (revision == 1)
  {
    v4 = @"VNTrackMaskDetectorType";
    v5 = @"VNTrackMaskDetectorType";
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

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session
{
  v8.receiver = self;
  v8.super_class = VNTrackMaskRequest;
  v5 = [(VNRequest *)&v8 newDefaultDetectorOptionsForRequestRevision:revision session:session];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNTrackMaskRequest generateCropRect](self, "generateCropRect")}];
  [v5 setObject:v6 forKeyedSubscript:@"VNTrackMaskDetectorProcessorOption_GenerateCropRect"];

  return v5;
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  generateCropRect = [(VNTrackMaskRequest *)self generateCropRect];
  if (generateCropRect == [configurationCopy generateCropRect])
  {
    v8.receiver = self;
    v8.super_class = VNTrackMaskRequest;
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
    v5.receiver = self;
    v5.super_class = VNTrackMaskRequest;
    [(VNImageBasedRequest *)&v5 applyConfigurationOfRequest:requestCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(VNTrackMaskRequest *)self setGenerateCropRect:[(VNTrackMaskRequest *)requestCopy generateCropRect]];
    }
  }
}

- (VNTrackMaskRequest)initWithFrameUpdateSpacing:(id *)spacing mask:(__CVBuffer *)mask completionHandler:(id)handler
{
  v13.receiver = self;
  v13.super_class = VNTrackMaskRequest;
  v12 = *spacing;
  v7 = [(VNStatefulRequest *)&v13 initWithFrameAnalysisSpacing:&v12 completionHandler:handler];
  if (v7)
  {
    v8 = [VNTrackMaskDetectorState alloc];
    v12 = *spacing;
    v9 = [(VNTrackMaskDetectorState *)v8 initWithFrameUpdateSpacing:&v12 mask:mask];
    state = v7->_state;
    v7->_state = v9;
  }

  return v7;
}

@end