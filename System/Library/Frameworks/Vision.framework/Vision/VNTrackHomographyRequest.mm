@interface VNTrackHomographyRequest
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (VNTrackHomographyRequest)initWithFrameAnalysisSpacing:(id *)a3 completionHandler:(id)a4;
@end

@implementation VNTrackHomographyRequest

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v19[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [v8 imageBufferAndReturnError:a5];
  if (v9)
  {
    v10 = [v8 session];
    v18 = 0;
    v11 = [(VNRequest *)self applicableDetectorAndOptions:&v18 forRevision:a3 loadedInSession:v10 error:a5];
    v12 = v18;
    if (v11)
    {
      v19[0] = v9;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
      [v12 setObject:v13 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

      [v12 setObject:self->_state forKeyedSubscript:@"VNHomographyTrackerProcessOption_State"];
      v14 = [v8 qosClass];
      [(VNImageBasedRequest *)self regionOfInterest];
      v15 = [v11 processUsingQualityOfServiceClass:v14 options:v12 regionOfInterest:self warningRecorder:a5 error:0 progressHandler:?];
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

- (VNTrackHomographyRequest)initWithFrameAnalysisSpacing:(id *)a3 completionHandler:(id)a4
{
  v6 = a4;
  v12 = *a3;
  v11.receiver = self;
  v11.super_class = VNTrackHomographyRequest;
  v7 = [(VNStatefulRequest *)&v11 initWithFrameAnalysisSpacing:&v12 completionHandler:v6];
  if (v7)
  {
    v8 = objc_alloc_init(VNHomographyTrackerState);
    state = v7->_state;
    v7->_state = v8;
  }

  return v7;
}

@end