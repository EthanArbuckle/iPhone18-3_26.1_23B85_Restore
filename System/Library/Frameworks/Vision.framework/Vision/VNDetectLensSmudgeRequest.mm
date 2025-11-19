@interface VNDetectLensSmudgeRequest
+ (id)supportedRevisions;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)validateConfigurationAndReturnError:(id *)a3;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4;
@end

@implementation VNDetectLensSmudgeRequest

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

- (BOOL)validateConfigurationAndReturnError:(id *)a3
{
  v4.receiver = self;
  v4.super_class = VNDetectLensSmudgeRequest;
  return [(VNImageBasedRequest *)&v4 validateConfigurationAndReturnError:a3];
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4
{
  v5.receiver = self;
  v5.super_class = VNDetectLensSmudgeRequest;
  return [(VNRequest *)&v5 newDefaultDetectorOptionsForRequestRevision:a3 session:a4];
}

- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4
{
  if (+[VNLensSmudgeDetector supportsExecution])
  {
    if (a3 == 1)
    {
      v7 = @"VNLensSmudgeDetectorType";
      v8 = @"VNLensSmudgeDetectorType";
      goto LABEL_10;
    }

    if (a4)
    {
      v9 = [VNError errorForUnsupportedRevision:a3 ofRequest:self];
      goto LABEL_8;
    }
  }

  else if (a4)
  {
    v9 = [VNError errorWithCode:22 message:@"Requires newer ANE device"];
LABEL_8:
    v7 = 0;
    *a4 = v9;
    goto LABEL_10;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7.receiver = self;
      v7.super_class = VNDetectLensSmudgeRequest;
      v5 = [(VNDetectLensSmudgeRequest *)&v7 isEqual:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

+ (id)supportedRevisions
{
  if (+[VNLensSmudgeDetector supportsExecution])
  {
    v3 = [a1 publicRevisionsSet];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end