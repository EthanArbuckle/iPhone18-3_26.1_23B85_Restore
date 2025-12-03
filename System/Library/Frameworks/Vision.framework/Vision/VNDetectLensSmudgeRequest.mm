@interface VNDetectLensSmudgeRequest
+ (id)supportedRevisions;
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)validateConfigurationAndReturnError:(id *)error;
- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session;
@end

@implementation VNDetectLensSmudgeRequest

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

- (BOOL)validateConfigurationAndReturnError:(id *)error
{
  v4.receiver = self;
  v4.super_class = VNDetectLensSmudgeRequest;
  return [(VNImageBasedRequest *)&v4 validateConfigurationAndReturnError:error];
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session
{
  v5.receiver = self;
  v5.super_class = VNDetectLensSmudgeRequest;
  return [(VNRequest *)&v5 newDefaultDetectorOptionsForRequestRevision:revision session:session];
}

- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error
{
  if (+[VNLensSmudgeDetector supportsExecution])
  {
    if (revision == 1)
    {
      v7 = @"VNLensSmudgeDetectorType";
      v8 = @"VNLensSmudgeDetectorType";
      goto LABEL_10;
    }

    if (error)
    {
      v9 = [VNError errorForUnsupportedRevision:revision ofRequest:self];
      goto LABEL_8;
    }
  }

  else if (error)
  {
    v9 = [VNError errorWithCode:22 message:@"Requires newer ANE device"];
LABEL_8:
    v7 = 0;
    *error = v9;
    goto LABEL_10;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
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
      v5 = [(VNDetectLensSmudgeRequest *)&v7 isEqual:equalCopy];
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
    publicRevisionsSet = [self publicRevisionsSet];
  }

  else
  {
    publicRevisionsSet = 0;
  }

  return publicRevisionsSet;
}

@end