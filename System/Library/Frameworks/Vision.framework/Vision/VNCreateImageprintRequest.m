@interface VNCreateImageprintRequest
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3;
- (NSNumber)timeStamp;
- (void)applyConfigurationOfRequest:(id)a3;
- (void)setTimeStamp:(id)a3;
@end

@implementation VNCreateImageprintRequest

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v28[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  VNValidatedLog(1, @"Processing Create imageprint request\n", v9, v10, v11, v12, v13, v14, v26);
  v15 = [v8 imageBufferAndReturnError:a5];
  if (v15)
  {
    v16 = [v8 session];
    v27 = 0;
    v17 = [(VNRequest *)self applicableDetectorAndOptions:&v27 forRevision:a3 loadedInSession:v16 error:a5];
    v18 = v27;
    if (v17)
    {
      v19 = [(VNCreateImageprintRequest *)self timeStamp];
      [v18 setObject:v19 forKeyedSubscript:@"VNImageprintGeneratorProcessOption_Timestamp"];

      v28[0] = v15;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
      [v18 setObject:v20 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

      v21 = [v8 qosClass];
      [(VNImageBasedRequest *)self regionOfInterest];
      v26 = 0;
      v22 = [v17 processUsingQualityOfServiceClass:v21 options:v18 regionOfInterest:self warningRecorder:&v26 error:0 progressHandler:?];
      v23 = v26;
      v24 = v22 != 0;
      if (v22)
      {
        [(VNRequest *)self setResults:v22];
      }

      else if (a5)
      {
        *a5 = [VNError errorWithCode:3 message:@"Attempt to create an imageprint failed" underlyingError:v23];
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

- (void)applyConfigurationOfRequest:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    v6.receiver = self;
    v6.super_class = VNCreateImageprintRequest;
    [(VNImageBasedRequest *)&v6 applyConfigurationOfRequest:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(VNCreateImageprintRequest *)v4 timeStamp];
      [(VNCreateImageprintRequest *)self setTimeStamp:v5];
    }
  }
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(VNCreateImageprintRequest *)self timeStamp];
  v6 = [v4 timeStamp];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v10.receiver = self;
    v10.super_class = VNCreateImageprintRequest;
    v8 = [(VNImageBasedRequest *)&v10 willAcceptCachedResultsFromRequestWithConfiguration:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setTimeStamp:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v4 = [(VNRequest *)self configuration];
    [v4 setTimeStamp:v5];
  }
}

- (NSNumber)timeStamp
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 timeStamp];

  return v3;
}

@end