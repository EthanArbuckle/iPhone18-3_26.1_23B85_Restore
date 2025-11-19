@interface VNGenerateForegroundInstanceMaskRequest
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
@end

@implementation VNGenerateForegroundInstanceMaskRequest

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
    v4 = @"VNGenerateInstanceMaskDetectorType";
    v5 = @"VNGenerateInstanceMaskDetectorType";
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

@end