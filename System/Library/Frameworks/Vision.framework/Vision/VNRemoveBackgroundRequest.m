@interface VNRemoveBackgroundRequest
- (BOOL)cropResult;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (BOOL)performInPlace;
- (BOOL)returnMask;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4;
- (void)applyConfigurationOfRequest:(id)a3;
- (void)setCropResult:(BOOL)a3;
- (void)setPerformInPlace:(BOOL)a3;
- (void)setReturnMask:(BOOL)a3;
@end

@implementation VNRemoveBackgroundRequest

- (void)setReturnMask:(BOOL)a3
{
  v3 = a3;
  v4 = [(VNRequest *)self configuration];
  [v4 setReturnMask:v3];
}

- (BOOL)returnMask
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 returnMask];

  return v3;
}

- (void)setCropResult:(BOOL)a3
{
  v3 = a3;
  v4 = [(VNRequest *)self configuration];
  [v4 setCropResult:v3];
}

- (BOOL)cropResult
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 cropResult];

  return v3;
}

- (void)setPerformInPlace:(BOOL)a3
{
  v3 = a3;
  v4 = [(VNRequest *)self configuration];
  [v4 setPerformInPlace:v3];
}

- (BOOL)performInPlace
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 performInPlace];

  return v3;
}

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v25[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [v8 imageBufferAndReturnError:a5];
  if (v9)
  {
    [v8 session];
    v22 = v24 = 0;
    v10 = [VNRequest applicableDetectorAndOptions:"applicableDetectorAndOptions:forRevision:loadedInSession:error:" forRevision:&v24 loadedInSession:a3 error:?];
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
        v16 = [v8 cachedObservationsAcceptedByRequest:v15];
        v17 = [v16 firstObject];

        if (v17)
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

      [v23 setObject:v17 forKeyedSubscript:@"VNRemoveBackgroundProcessorOption_MaskObservation"];

LABEL_10:
      v19 = [v8 qosClass];
      [(VNImageBasedRequest *)self regionOfInterest];
      v20 = [v10 processUsingQualityOfServiceClass:v19 options:v23 regionOfInterest:self warningRecorder:a5 error:0 progressHandler:?];
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

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4
{
  v10.receiver = self;
  v10.super_class = VNRemoveBackgroundRequest;
  v5 = [(VNRequest *)&v10 newDefaultDetectorOptionsForRequestRevision:a3 session:a4];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNRemoveBackgroundRequest performInPlace](self, "performInPlace")}];
  [v5 setObject:v6 forKeyedSubscript:@"VNRemoveBackgroundProcessorOption_PerformInPlace"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNRemoveBackgroundRequest cropResult](self, "cropResult")}];
  [v5 setObject:v7 forKeyedSubscript:@"VNRemoveBackgroundProcessorOption_CropResult"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNRemoveBackgroundRequest returnMask](self, "returnMask")}];
  [v5 setObject:v8 forKeyedSubscript:@"VNRemoveBackgroundProcessorOption_ReturnMask"];

  [v5 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"VNRemoveBackgroundProcessorOption_AlphaGating"];
  return v5;
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(VNRemoveBackgroundRequest *)self performInPlace];
  if (v5 == [v4 performInPlace] && (v6 = -[VNRemoveBackgroundRequest cropResult](self, "cropResult"), v6 == objc_msgSend(v4, "cropResult")) && (v7 = -[VNRemoveBackgroundRequest returnMask](self, "returnMask"), v7 == objc_msgSend(v4, "returnMask")))
  {
    v10.receiver = self;
    v10.super_class = VNRemoveBackgroundRequest;
    v8 = [(VNImageBasedRequest *)&v10 willAcceptCachedResultsFromRequestWithConfiguration:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)applyConfigurationOfRequest:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    v6.receiver = self;
    v6.super_class = VNRemoveBackgroundRequest;
    [(VNImageBasedRequest *)&v6 applyConfigurationOfRequest:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [(VNRemoveBackgroundRequest *)self setPerformInPlace:[(VNRemoveBackgroundRequest *)v5 performInPlace]];
      [(VNRemoveBackgroundRequest *)self setCropResult:[(VNRemoveBackgroundRequest *)v5 cropResult]];
      [(VNRemoveBackgroundRequest *)self setReturnMask:[(VNRemoveBackgroundRequest *)v5 returnMask]];
    }
  }
}

@end