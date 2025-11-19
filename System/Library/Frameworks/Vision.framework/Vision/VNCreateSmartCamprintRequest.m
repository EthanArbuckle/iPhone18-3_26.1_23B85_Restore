@interface VNCreateSmartCamprintRequest
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (BOOL)returnAllResults;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3;
- (void)applyConfigurationOfRequest:(id)a3;
- (void)setReturnAllResults:(BOOL)a3;
@end

@implementation VNCreateSmartCamprintRequest

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v20[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [v8 imageBufferAndReturnError:a5];
  if (v9)
  {
    v10 = [v8 session];
    v19 = 0;
    v11 = [(VNRequest *)self applicableDetectorAndOptions:&v19 forRevision:a3 loadedInSession:v10 error:a5];
    v12 = v19;
    if (v11)
    {
      v20[0] = v9;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
      [v12 setObject:v13 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

      v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNCreateSmartCamprintRequest returnAllResults](self, "returnAllResults")}];
      [v12 setObject:v14 forKeyedSubscript:@"VNSmartCamClassifierProcessOption_ReturnAllResults"];

      v15 = [v8 qosClass];
      [(VNImageBasedRequest *)self regionOfInterest];
      v16 = [v11 processUsingQualityOfServiceClass:v15 options:v12 regionOfInterest:self warningRecorder:a5 error:0 progressHandler:?];
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

- (void)applyConfigurationOfRequest:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    v5.receiver = self;
    v5.super_class = VNCreateSmartCamprintRequest;
    [(VNImageBasedRequest *)&v5 applyConfigurationOfRequest:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(VNCreateSmartCamprintRequest *)self setReturnAllResults:[(VNCreateSmartCamprintRequest *)v4 returnAllResults]];
    }
  }
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(VNCreateSmartCamprintRequest *)self returnAllResults];
  if (v5 == [v4 returnAllResults])
  {
    v8.receiver = self;
    v8.super_class = VNCreateSmartCamprintRequest;
    v6 = [(VNImageBasedRequest *)&v8 willAcceptCachedResultsFromRequestWithConfiguration:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setReturnAllResults:(BOOL)a3
{
  v3 = a3;
  v4 = [(VNRequest *)self configuration];
  [v4 setReturnAllResults:v3];
}

- (BOOL)returnAllResults
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 returnAllResults];

  return v3;
}

@end