@interface VNCreateNeuralHashprintRequest
+ (BOOL)warmUpSession:(id)session error:(id *)error;
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
@end

@implementation VNCreateNeuralHashprintRequest

+ (BOOL)warmUpSession:(id)session error:(id *)error
{
  sessionCopy = session;
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___VNCreateNeuralHashprintRequest;
  if (objc_msgSendSuper2(&v10, sel_warmUpSession_error_, sessionCopy, error))
  {
    v7 = objc_alloc_init(VNCreateNeuralHashprintRequest);
    v8 = [(VNRequest *)v7 warmUpSession:sessionCopy error:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v9 = contextCopy;
  if (revision == 1)
  {
    v10 = [contextCopy imageBufferAndReturnError:error];
    if (v10 && [(VNRequest *)self validateImageBuffer:v10 ofNonZeroWidth:0 andHeight:0 error:error])
    {
      session = [v9 session];
      v19 = 0;
      v12 = [(VNRequest *)self applicableDetectorAndOptions:&v19 forRevision:1 loadedInSession:session error:error];
      v13 = v19;
      if (v12)
      {
        v20[0] = v10;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
        [v13 setObject:v14 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

        qosClass = [v9 qosClass];
        [(VNImageBasedRequest *)self regionOfInterest];
        v16 = [v12 processUsingQualityOfServiceClass:qosClass options:v13 regionOfInterest:self warningRecorder:error error:0 progressHandler:?];
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
  }

  else if (error)
  {
    [VNError errorForUnsupportedRevision:revision ofRequest:self];
    *error = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end