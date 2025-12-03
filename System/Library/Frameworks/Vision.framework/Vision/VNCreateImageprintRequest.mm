@interface VNCreateImageprintRequest
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration;
- (NSNumber)timeStamp;
- (void)applyConfigurationOfRequest:(id)request;
- (void)setTimeStamp:(id)stamp;
@end

@implementation VNCreateImageprintRequest

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  v28[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  VNValidatedLog(1, @"Processing Create imageprint request\n", v9, v10, v11, v12, v13, v14, v26);
  v15 = [contextCopy imageBufferAndReturnError:error];
  if (v15)
  {
    session = [contextCopy session];
    v27 = 0;
    v17 = [(VNRequest *)self applicableDetectorAndOptions:&v27 forRevision:revision loadedInSession:session error:error];
    v18 = v27;
    if (v17)
    {
      timeStamp = [(VNCreateImageprintRequest *)self timeStamp];
      [v18 setObject:timeStamp forKeyedSubscript:@"VNImageprintGeneratorProcessOption_Timestamp"];

      v28[0] = v15;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
      [v18 setObject:v20 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

      qosClass = [contextCopy qosClass];
      [(VNImageBasedRequest *)self regionOfInterest];
      v26 = 0;
      v22 = [v17 processUsingQualityOfServiceClass:qosClass options:v18 regionOfInterest:self warningRecorder:&v26 error:0 progressHandler:?];
      v23 = v26;
      v24 = v22 != 0;
      if (v22)
      {
        [(VNRequest *)self setResults:v22];
      }

      else if (error)
      {
        *error = [VNError errorWithCode:3 message:@"Attempt to create an imageprint failed" underlyingError:v23];
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
    v6.receiver = self;
    v6.super_class = VNCreateImageprintRequest;
    [(VNImageBasedRequest *)&v6 applyConfigurationOfRequest:requestCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      timeStamp = [(VNCreateImageprintRequest *)requestCopy timeStamp];
      [(VNCreateImageprintRequest *)self setTimeStamp:timeStamp];
    }
  }
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  timeStamp = [(VNCreateImageprintRequest *)self timeStamp];
  timeStamp2 = [configurationCopy timeStamp];
  v7 = [timeStamp isEqual:timeStamp2];

  if (v7)
  {
    v10.receiver = self;
    v10.super_class = VNCreateImageprintRequest;
    v8 = [(VNImageBasedRequest *)&v10 willAcceptCachedResultsFromRequestWithConfiguration:configurationCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setTimeStamp:(id)stamp
{
  stampCopy = stamp;
  if (stampCopy)
  {
    configuration = [(VNRequest *)self configuration];
    [configuration setTimeStamp:stampCopy];
  }
}

- (NSNumber)timeStamp
{
  configuration = [(VNRequest *)self configuration];
  timeStamp = [configuration timeStamp];

  return timeStamp;
}

@end