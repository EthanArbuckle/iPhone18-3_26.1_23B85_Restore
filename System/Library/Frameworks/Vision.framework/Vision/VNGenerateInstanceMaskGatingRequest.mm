@interface VNGenerateInstanceMaskGatingRequest
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session;
@end

@implementation VNGenerateInstanceMaskGatingRequest

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
    v4 = @"VNGenerateInstanceMaskDetectorType";
    v5 = @"VNGenerateInstanceMaskDetectorType";
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
  v8.super_class = VNGenerateInstanceMaskGatingRequest;
  v5 = [(VNRequest *)&v8 newDefaultDetectorOptionsForRequestRevision:revision session:session];
  v6 = v5;
  if (revision == 1)
  {
    [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNGenerateInstanceMaskDetectorCreationOptionGatingOnly"];
  }

  return v6;
}

@end