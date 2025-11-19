@interface VNImageExposureScoreRequest
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
@end

@implementation VNImageExposureScoreRequest

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v26[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  VNValidatedLog(1, @"Processing VNImageBrightnessMetric request\n", v9, v10, v11, v12, v13, v14, v24);
  v15 = [v8 imageBufferAndReturnError:a5];
  if (v15)
  {
    v16 = [v8 session];
    v25 = 0;
    v17 = [(VNRequest *)self applicableDetectorAndOptions:&v25 forRevision:a3 loadedInSession:v16 error:a5];
    v18 = v25;
    if (v17)
    {
      v26[0] = v15;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
      [v18 setObject:v19 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

      v20 = [v8 qosClass];
      [(VNImageBasedRequest *)self regionOfInterest];
      v21 = [v17 processUsingQualityOfServiceClass:v20 options:v18 regionOfInterest:self warningRecorder:a5 error:0 progressHandler:?];
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

- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4
{
  if (a3 == 1)
  {
    v4 = @"VNBrightnessDetectorType";
    v5 = @"VNBrightnessDetectorType";
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