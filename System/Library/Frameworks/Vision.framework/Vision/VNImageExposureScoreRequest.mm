@interface VNImageExposureScoreRequest
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error;
@end

@implementation VNImageExposureScoreRequest

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  v26[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  VNValidatedLog(1, @"Processing VNImageBrightnessMetric request\n", v9, v10, v11, v12, v13, v14, v24);
  v15 = [contextCopy imageBufferAndReturnError:error];
  if (v15)
  {
    session = [contextCopy session];
    v25 = 0;
    v17 = [(VNRequest *)self applicableDetectorAndOptions:&v25 forRevision:revision loadedInSession:session error:error];
    v18 = v25;
    if (v17)
    {
      v26[0] = v15;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
      [v18 setObject:v19 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

      qosClass = [contextCopy qosClass];
      [(VNImageBasedRequest *)self regionOfInterest];
      v21 = [v17 processUsingQualityOfServiceClass:qosClass options:v18 regionOfInterest:self warningRecorder:error error:0 progressHandler:?];
      v22 = v21 != 0;
      if (v21)
      {
        [(VNRequest *)self setResults:v21];
      }
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error
{
  if (revision == 1)
  {
    v4 = @"VNBrightnessDetectorType";
    v5 = @"VNBrightnessDetectorType";
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

@end