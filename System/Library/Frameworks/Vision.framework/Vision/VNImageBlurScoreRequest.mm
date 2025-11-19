@interface VNImageBlurScoreRequest
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
- (unint64_t)blurDeterminationMethod;
- (unint64_t)maximumIntermediateSideLength;
- (void)applyConfigurationOfRequest:(id)a3;
- (void)setBlurDeterminationMethod:(unint64_t)a3;
- (void)setMaximumIntermediateSideLength:(unint64_t)a3;
@end

@implementation VNImageBlurScoreRequest

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v28[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  VNValidatedLog(1, @"Processing VNImageBlurMetric request\n", v9, v10, v11, v12, v13, v14, v26);
  v15 = [v8 imageBufferAndReturnError:a5];
  if (v15)
  {
    v16 = [v8 session];
    v27 = 0;
    v17 = [(VNRequest *)self applicableDetectorAndOptions:&v27 forRevision:a3 loadedInSession:v16 error:a5];
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

      v22 = [v8 qosClass];
      [(VNImageBasedRequest *)self regionOfInterest];
      v23 = [v17 processUsingQualityOfServiceClass:v22 options:v18 regionOfInterest:self warningRecorder:a5 error:0 progressHandler:?];
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

- (void)applyConfigurationOfRequest:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    v5.receiver = self;
    v5.super_class = VNImageBlurScoreRequest;
    [(VNImageBasedRequest *)&v5 applyConfigurationOfRequest:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(VNImageBlurScoreRequest *)self setMaximumIntermediateSideLength:[(VNImageBlurScoreRequest *)v4 maximumIntermediateSideLength]];
      [(VNImageBlurScoreRequest *)self setBlurDeterminationMethod:[(VNImageBlurScoreRequest *)v4 blurDeterminationMethod]];
    }
  }
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(VNImageBlurScoreRequest *)self blurDeterminationMethod];
  if (v5 == [v4 blurDeterminationMethod] && (v6 = -[VNImageBlurScoreRequest maximumIntermediateSideLength](self, "maximumIntermediateSideLength"), v6 == objc_msgSend(v4, "maximumIntermediateSideLength")))
  {
    v9.receiver = self;
    v9.super_class = VNImageBlurScoreRequest;
    v7 = [(VNImageBasedRequest *)&v9 willAcceptCachedResultsFromRequestWithConfiguration:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4
{
  if (a3 == 1)
  {
    v4 = @"VNBlurDetectorType";
    v5 = @"VNBlurDetectorType";
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

- (void)setMaximumIntermediateSideLength:(unint64_t)a3
{
  v4 = [(VNRequest *)self configuration];
  [v4 setMaximumIntermediateSideLength:a3];
}

- (unint64_t)maximumIntermediateSideLength
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 maximumIntermediateSideLength];

  return v3;
}

- (void)setBlurDeterminationMethod:(unint64_t)a3
{
  if (a3 <= 1)
  {
    v4 = [(VNRequest *)self configuration];
    [v4 setBlurDeterminationMethod:a3];
  }
}

- (unint64_t)blurDeterminationMethod
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 blurDeterminationMethod];

  return v3;
}

@end