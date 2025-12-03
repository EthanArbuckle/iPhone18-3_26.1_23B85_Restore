@interface VNCreateSmartCamprintRequest
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (BOOL)returnAllResults;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration;
- (void)applyConfigurationOfRequest:(id)request;
- (void)setReturnAllResults:(BOOL)results;
@end

@implementation VNCreateSmartCamprintRequest

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v9 = [contextCopy imageBufferAndReturnError:error];
  if (v9)
  {
    session = [contextCopy session];
    v19 = 0;
    v11 = [(VNRequest *)self applicableDetectorAndOptions:&v19 forRevision:revision loadedInSession:session error:error];
    v12 = v19;
    if (v11)
    {
      v20[0] = v9;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
      [v12 setObject:v13 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

      v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNCreateSmartCamprintRequest returnAllResults](self, "returnAllResults")}];
      [v12 setObject:v14 forKeyedSubscript:@"VNSmartCamClassifierProcessOption_ReturnAllResults"];

      qosClass = [contextCopy qosClass];
      [(VNImageBasedRequest *)self regionOfInterest];
      v16 = [v11 processUsingQualityOfServiceClass:qosClass options:v12 regionOfInterest:self warningRecorder:error error:0 progressHandler:?];
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

- (void)applyConfigurationOfRequest:(id)request
{
  requestCopy = request;
  if (self != requestCopy)
  {
    v5.receiver = self;
    v5.super_class = VNCreateSmartCamprintRequest;
    [(VNImageBasedRequest *)&v5 applyConfigurationOfRequest:requestCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(VNCreateSmartCamprintRequest *)self setReturnAllResults:[(VNCreateSmartCamprintRequest *)requestCopy returnAllResults]];
    }
  }
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  returnAllResults = [(VNCreateSmartCamprintRequest *)self returnAllResults];
  if (returnAllResults == [configurationCopy returnAllResults])
  {
    v8.receiver = self;
    v8.super_class = VNCreateSmartCamprintRequest;
    v6 = [(VNImageBasedRequest *)&v8 willAcceptCachedResultsFromRequestWithConfiguration:configurationCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setReturnAllResults:(BOOL)results
{
  resultsCopy = results;
  configuration = [(VNRequest *)self configuration];
  [configuration setReturnAllResults:resultsCopy];
}

- (BOOL)returnAllResults
{
  configuration = [(VNRequest *)self configuration];
  returnAllResults = [configuration returnAllResults];

  return returnAllResults;
}

@end