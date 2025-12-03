@interface VNTrackHomographyRequest
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (VNTrackHomographyRequest)initWithFrameAnalysisSpacing:(id *)spacing completionHandler:(id)handler;
@end

@implementation VNTrackHomographyRequest

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v9 = [contextCopy imageBufferAndReturnError:error];
  if (v9)
  {
    session = [contextCopy session];
    v18 = 0;
    v11 = [(VNRequest *)self applicableDetectorAndOptions:&v18 forRevision:revision loadedInSession:session error:error];
    v12 = v18;
    if (v11)
    {
      v19[0] = v9;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
      [v12 setObject:v13 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

      [v12 setObject:self->_state forKeyedSubscript:@"VNHomographyTrackerProcessOption_State"];
      qosClass = [contextCopy qosClass];
      [(VNImageBasedRequest *)self regionOfInterest];
      v15 = [v11 processUsingQualityOfServiceClass:qosClass options:v12 regionOfInterest:self warningRecorder:error error:0 progressHandler:?];
      v16 = v15 != 0;
      if (v15)
      {
        [(VNRequest *)self setResults:v15];
      }
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

- (VNTrackHomographyRequest)initWithFrameAnalysisSpacing:(id *)spacing completionHandler:(id)handler
{
  handlerCopy = handler;
  v12 = *spacing;
  v11.receiver = self;
  v11.super_class = VNTrackHomographyRequest;
  v7 = [(VNStatefulRequest *)&v11 initWithFrameAnalysisSpacing:&v12 completionHandler:handlerCopy];
  if (v7)
  {
    v8 = objc_alloc_init(VNHomographyTrackerState);
    state = v7->_state;
    v7->_state = v8;
  }

  return v7;
}

@end