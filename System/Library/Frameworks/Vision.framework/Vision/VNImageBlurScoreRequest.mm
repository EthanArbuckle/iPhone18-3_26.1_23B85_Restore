@interface VNImageBlurScoreRequest
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration;
- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error;
- (unint64_t)blurDeterminationMethod;
- (unint64_t)maximumIntermediateSideLength;
- (void)applyConfigurationOfRequest:(id)request;
- (void)setBlurDeterminationMethod:(unint64_t)method;
- (void)setMaximumIntermediateSideLength:(unint64_t)length;
@end

@implementation VNImageBlurScoreRequest

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  v28[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  VNValidatedLog(1, @"Processing VNImageBlurMetric request\n", v9, v10, v11, v12, v13, v14, v26);
  v15 = [contextCopy imageBufferAndReturnError:error];
  if (v15)
  {
    session = [contextCopy session];
    v27 = 0;
    v17 = [(VNRequest *)self applicableDetectorAndOptions:&v27 forRevision:revision loadedInSession:session error:error];
    v18 = v27;
    if (v17)
    {
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{-[VNImageBlurScoreRequest maximumIntermediateSideLength](self, "maximumIntermediateSideLength")}];
      [v18 setObject:v19 forKeyedSubscript:@"VNBlurDetectorProcessOption_MaximumIntermediateSideLength"];

      v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VNImageBlurScoreRequest blurDeterminationMethod](self, "blurDeterminationMethod")}];
      [v18 setObject:v20 forKeyedSubscript:@"VNBlurDetectorProcessOption_ImageBlurDeterminationMethod"];

      v28[0] = v15;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
      [v18 setObject:v21 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

      qosClass = [contextCopy qosClass];
      [(VNImageBasedRequest *)self regionOfInterest];
      v23 = [v17 processUsingQualityOfServiceClass:qosClass options:v18 regionOfInterest:self warningRecorder:error error:0 progressHandler:?];
      v24 = v23 != 0;
      if (v23)
      {
        [(VNRequest *)self setResults:v23];
      }
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (void)applyConfigurationOfRequest:(id)request
{
  requestCopy = request;
  if (self != requestCopy)
  {
    v5.receiver = self;
    v5.super_class = VNImageBlurScoreRequest;
    [(VNImageBasedRequest *)&v5 applyConfigurationOfRequest:requestCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(VNImageBlurScoreRequest *)self setMaximumIntermediateSideLength:[(VNImageBlurScoreRequest *)requestCopy maximumIntermediateSideLength]];
      [(VNImageBlurScoreRequest *)self setBlurDeterminationMethod:[(VNImageBlurScoreRequest *)requestCopy blurDeterminationMethod]];
    }
  }
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  blurDeterminationMethod = [(VNImageBlurScoreRequest *)self blurDeterminationMethod];
  if (blurDeterminationMethod == [configurationCopy blurDeterminationMethod] && (v6 = -[VNImageBlurScoreRequest maximumIntermediateSideLength](self, "maximumIntermediateSideLength"), v6 == objc_msgSend(configurationCopy, "maximumIntermediateSideLength")))
  {
    v9.receiver = self;
    v9.super_class = VNImageBlurScoreRequest;
    v7 = [(VNImageBasedRequest *)&v9 willAcceptCachedResultsFromRequestWithConfiguration:configurationCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error
{
  if (revision == 1)
  {
    v4 = @"VNBlurDetectorType";
    v5 = @"VNBlurDetectorType";
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

- (void)setMaximumIntermediateSideLength:(unint64_t)length
{
  configuration = [(VNRequest *)self configuration];
  [configuration setMaximumIntermediateSideLength:length];
}

- (unint64_t)maximumIntermediateSideLength
{
  configuration = [(VNRequest *)self configuration];
  maximumIntermediateSideLength = [configuration maximumIntermediateSideLength];

  return maximumIntermediateSideLength;
}

- (void)setBlurDeterminationMethod:(unint64_t)method
{
  if (method <= 1)
  {
    configuration = [(VNRequest *)self configuration];
    [configuration setBlurDeterminationMethod:method];
  }
}

- (unint64_t)blurDeterminationMethod
{
  configuration = [(VNRequest *)self configuration];
  blurDeterminationMethod = [configuration blurDeterminationMethod];

  return blurDeterminationMethod;
}

@end