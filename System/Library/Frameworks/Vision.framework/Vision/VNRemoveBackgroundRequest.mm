@interface VNRemoveBackgroundRequest
- (BOOL)cropResult;
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (BOOL)performInPlace;
- (BOOL)returnMask;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session;
- (void)applyConfigurationOfRequest:(id)request;
- (void)setCropResult:(BOOL)result;
- (void)setPerformInPlace:(BOOL)place;
- (void)setReturnMask:(BOOL)mask;
@end

@implementation VNRemoveBackgroundRequest

- (void)setReturnMask:(BOOL)mask
{
  maskCopy = mask;
  configuration = [(VNRequest *)self configuration];
  [configuration setReturnMask:maskCopy];
}

- (BOOL)returnMask
{
  configuration = [(VNRequest *)self configuration];
  returnMask = [configuration returnMask];

  return returnMask;
}

- (void)setCropResult:(BOOL)result
{
  resultCopy = result;
  configuration = [(VNRequest *)self configuration];
  [configuration setCropResult:resultCopy];
}

- (BOOL)cropResult
{
  configuration = [(VNRequest *)self configuration];
  cropResult = [configuration cropResult];

  return cropResult;
}

- (void)setPerformInPlace:(BOOL)place
{
  placeCopy = place;
  configuration = [(VNRequest *)self configuration];
  [configuration setPerformInPlace:placeCopy];
}

- (BOOL)performInPlace
{
  configuration = [(VNRequest *)self configuration];
  performInPlace = [configuration performInPlace];

  return performInPlace;
}

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  v25[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v9 = [contextCopy imageBufferAndReturnError:error];
  if (v9)
  {
    [contextCopy session];
    v22 = v24 = 0;
    v10 = [VNRequest applicableDetectorAndOptions:"applicableDetectorAndOptions:forRevision:loadedInSession:error:" forRevision:&v24 loadedInSession:revision error:?];
    v23 = v24;
    if (v10)
    {
      v25[0] = v9;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
      [v23 setObject:v11 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

      v12 = 0;
      v13 = 1;
      while (1)
      {
        v14 = v12;
        v15 = objc_alloc_init(VNRemoveBackgroundRequest);
        [(VNRemoveBackgroundRequest *)v15 applyConfigurationOfRequest:self];
        [(VNRemoveBackgroundRequest *)v15 setPerformInPlace:0];
        [(VNRemoveBackgroundRequest *)v15 setCropResult:v13 & 1];
        [(VNRemoveBackgroundRequest *)v15 setReturnMask:1];
        v16 = [contextCopy cachedObservationsAcceptedByRequest:v15];
        firstObject = [v16 firstObject];

        if (firstObject)
        {
          break;
        }

        v13 = 0;
        v12 = 1;
        if (v14)
        {
          goto LABEL_10;
        }
      }

      [v23 setObject:firstObject forKeyedSubscript:@"VNRemoveBackgroundProcessorOption_MaskObservation"];

LABEL_10:
      qosClass = [contextCopy qosClass];
      [(VNImageBasedRequest *)self regionOfInterest];
      v20 = [v10 processUsingQualityOfServiceClass:qosClass options:v23 regionOfInterest:self warningRecorder:error error:0 progressHandler:?];
      v18 = v20 != 0;
      if (v20)
      {
        [(VNRequest *)self setResults:v20];
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session
{
  v10.receiver = self;
  v10.super_class = VNRemoveBackgroundRequest;
  v5 = [(VNRequest *)&v10 newDefaultDetectorOptionsForRequestRevision:revision session:session];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNRemoveBackgroundRequest performInPlace](self, "performInPlace")}];
  [v5 setObject:v6 forKeyedSubscript:@"VNRemoveBackgroundProcessorOption_PerformInPlace"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNRemoveBackgroundRequest cropResult](self, "cropResult")}];
  [v5 setObject:v7 forKeyedSubscript:@"VNRemoveBackgroundProcessorOption_CropResult"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNRemoveBackgroundRequest returnMask](self, "returnMask")}];
  [v5 setObject:v8 forKeyedSubscript:@"VNRemoveBackgroundProcessorOption_ReturnMask"];

  [v5 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"VNRemoveBackgroundProcessorOption_AlphaGating"];
  return v5;
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  performInPlace = [(VNRemoveBackgroundRequest *)self performInPlace];
  if (performInPlace == [configurationCopy performInPlace] && (v6 = -[VNRemoveBackgroundRequest cropResult](self, "cropResult"), v6 == objc_msgSend(configurationCopy, "cropResult")) && (v7 = -[VNRemoveBackgroundRequest returnMask](self, "returnMask"), v7 == objc_msgSend(configurationCopy, "returnMask")))
  {
    v10.receiver = self;
    v10.super_class = VNRemoveBackgroundRequest;
    v8 = [(VNImageBasedRequest *)&v10 willAcceptCachedResultsFromRequestWithConfiguration:configurationCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)applyConfigurationOfRequest:(id)request
{
  requestCopy = request;
  if (self != requestCopy)
  {
    v6.receiver = self;
    v6.super_class = VNRemoveBackgroundRequest;
    [(VNImageBasedRequest *)&v6 applyConfigurationOfRequest:requestCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = requestCopy;
      [(VNRemoveBackgroundRequest *)self setPerformInPlace:[(VNRemoveBackgroundRequest *)v5 performInPlace]];
      [(VNRemoveBackgroundRequest *)self setCropResult:[(VNRemoveBackgroundRequest *)v5 cropResult]];
      [(VNRemoveBackgroundRequest *)self setReturnMask:[(VNRemoveBackgroundRequest *)v5 returnMask]];
    }
  }
}

@end