@interface VNDetectFaceGazeRequest
+ (const)dependentRequestMappingTable;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (BOOL)resolveSomewhereElseDirection;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3;
- (float)commonGazeLocationRadius;
- (float)gazeHeatMapThreshold;
- (float)minimumFaceDimension;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4;
- (void)applyConfigurationOfRequest:(id)a3;
- (void)setCommonGazeLocationRadius:(float)a3;
- (void)setGazeHeatMapThreshold:(float)a3;
- (void)setMinimumFaceDimension:(float)a3;
- (void)setResolveSomewhereElseDirection:(BOOL)a3;
@end

@implementation VNDetectFaceGazeRequest

- (void)setResolveSomewhereElseDirection:(BOOL)a3
{
  v3 = a3;
  v4 = [(VNRequest *)self configuration];
  [v4 setResolveSomewhereElseDirection:v3];
}

- (BOOL)resolveSomewhereElseDirection
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 resolveSomewhereElseDirection];

  return v3;
}

- (void)setCommonGazeLocationRadius:(float)a3
{
  v5 = [(VNRequest *)self configuration];
  *&v4 = a3;
  [v5 setCommonGazeLocationRadius:v4];
}

- (float)commonGazeLocationRadius
{
  v2 = [(VNRequest *)self configuration];
  [v2 commonGazeLocationRadius];
  v4 = v3;

  return v4;
}

- (void)setMinimumFaceDimension:(float)a3
{
  v5 = [(VNRequest *)self configuration];
  *&v4 = a3;
  [v5 setMinimumFaceDimension:v4];
}

- (float)minimumFaceDimension
{
  v2 = [(VNRequest *)self configuration];
  [v2 minimumFaceDimension];
  v4 = v3;

  return v4;
}

- (void)setGazeHeatMapThreshold:(float)a3
{
  v5 = [(VNRequest *)self configuration];
  *&v4 = a3;
  [v5 setGazeHeatMapThreshold:v4];
}

- (float)gazeHeatMapThreshold
{
  v2 = [(VNRequest *)self configuration];
  [v2 gazeHeatMapThreshold];
  v4 = v3;

  return v4;
}

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v32[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [v8 imageBufferAndReturnError:a5];
  if (v9)
  {
    v10 = [v8 session];
    v29 = 0;
    v11 = [(VNRequest *)self applicableDetectorAndOptions:&v29 forRevision:a3 loadedInSession:v10 error:a5];
    v12 = v29;
    if (!v11)
    {
      v19 = 0;
LABEL_22:

      goto LABEL_23;
    }

    v13 = v8;
    v14 = v13;
    if (self)
    {
      v30 = 0;
      v15 = [(VNImageBasedRequest *)self getOptionalValidatedInputFaceObservations:&v30 clippedToRegionOfInterest:1 error:a5];
      v16 = v30;
      v17 = v16;
      if (v15)
      {
        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v20 = objc_alloc_init(VNDetectFaceRectanglesRequest);
          v27 = v20;
          [(VNDetectFaceRectanglesRequest *)v20 applyConfigurationOfRequest:self];
          v28 = [v14 requestPerformerAndReturnError:a5];
          if (v28 && (v32[0] = v20, [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1], v21 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v28, "performDependentRequests:onBehalfOfRequest:inContext:error:", v21, self, v14, a5), v21, (v26 & 1) != 0))
          {
            v18 = [(VNRequest *)v27 results];
          }

          else
          {
            v18 = 0;
          }
        }
      }

      else
      {
        v18 = 0;
      }

      if (v18)
      {
        [v12 setObject:v18 forKeyedSubscript:@"VNDetectorProcessOption_InputFaceObservations"];
        v31 = v9;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
        [v12 setObject:v22 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

        v23 = [v14 qosClass];
        [(VNImageBasedRequest *)self regionOfInterest];
        v24 = [v11 processUsingQualityOfServiceClass:v23 options:v12 regionOfInterest:self warningRecorder:a5 error:0 progressHandler:?];
        v19 = v24 != 0;
        if (v24)
        {
          [(VNRequest *)self setResults:v24];
        }

        goto LABEL_21;
      }
    }

    else
    {

      v18 = 0;
    }

    v19 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v19 = 0;
LABEL_23:

  return v19;
}

- (void)applyConfigurationOfRequest:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    v6.receiver = self;
    v6.super_class = VNDetectFaceGazeRequest;
    [(VNImageBasedRequest *)&v6 applyConfigurationOfRequest:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [(VNDetectFaceGazeRequest *)v5 gazeHeatMapThreshold];
      [(VNDetectFaceGazeRequest *)self setGazeHeatMapThreshold:?];
      [(VNDetectFaceGazeRequest *)v5 minimumFaceDimension];
      [(VNDetectFaceGazeRequest *)self setMinimumFaceDimension:?];
      [(VNDetectFaceGazeRequest *)v5 commonGazeLocationRadius];
      [(VNDetectFaceGazeRequest *)self setCommonGazeLocationRadius:?];
      [(VNDetectFaceGazeRequest *)self setResolveSomewhereElseDirection:[(VNDetectFaceGazeRequest *)v5 resolveSomewhereElseDirection]];
    }
  }
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3
{
  v4 = a3;
  [(VNDetectFaceGazeRequest *)self gazeHeatMapThreshold];
  v6 = v5;
  [v4 gazeHeatMapThreshold];
  if (v6 == v7 && (-[VNDetectFaceGazeRequest minimumFaceDimension](self, "minimumFaceDimension"), v9 = v8, [v4 minimumFaceDimension], v9 == v10) && (-[VNDetectFaceGazeRequest commonGazeLocationRadius](self, "commonGazeLocationRadius"), v12 = v11, objc_msgSend(v4, "commonGazeLocationRadius"), v12 == v13) && (v14 = -[VNDetectFaceGazeRequest resolveSomewhereElseDirection](self, "resolveSomewhereElseDirection"), v14 == objc_msgSend(v4, "resolveSomewhereElseDirection")))
  {
    v17.receiver = self;
    v17.super_class = VNDetectFaceGazeRequest;
    v15 = [(VNImageBasedRequest *)&v17 willAcceptCachedResultsFromRequestWithConfiguration:v4];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4
{
  v15.receiver = self;
  v15.super_class = VNDetectFaceGazeRequest;
  v6 = [(VNRequest *)&v15 newDefaultDetectorOptionsForRequestRevision:a3 session:a4];
  if (a3 == 1)
  {
    v7 = MEMORY[0x1E696AD98];
    [(VNDetectFaceGazeRequest *)self gazeHeatMapThreshold];
    v8 = [v7 numberWithFloat:?];
    [v6 setObject:v8 forKeyedSubscript:@"VNFaceGazeDetectorProcessOption_GazeHeatMapThreshold"];

    v9 = MEMORY[0x1E696AD98];
    [(VNDetectFaceGazeRequest *)self minimumFaceDimension];
    v10 = [v9 numberWithFloat:?];
    [v6 setObject:v10 forKeyedSubscript:@"VNFaceGazeDetectorProcessOption_MinimumFaceDimension"];

    v11 = MEMORY[0x1E696AD98];
    [(VNDetectFaceGazeRequest *)self commonGazeLocationRadius];
    v12 = [v11 numberWithFloat:?];
    [v6 setObject:v12 forKeyedSubscript:@"VNFaceGazeDetectorProcessOption_CommonGazeLocationRadius"];

    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNDetectFaceGazeRequest resolveSomewhereElseDirection](self, "resolveSomewhereElseDirection") ^ 1}];
    [v6 setObject:v13 forKeyedSubscript:@"VNFaceGazeDetectorProcessOption_DontFollowGaze"];
  }

  return v6;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4
{
  if (a3 == 1)
  {
    v4 = @"VNFaceGazeDetectorType";
    v5 = @"VNFaceGazeDetectorType";
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

+ (const)dependentRequestMappingTable
{
  {
    +[VNDetectFaceGazeRequest dependentRequestMappingTable]::ourDependentRequestMappingTable = 1;
    qword_1EB1F8E00 = objc_opt_class();
    *algn_1EB1F8E08 = 3737841666;
    qword_1EB1F8E18 = 0;
    unk_1EB1F8E20 = 0;
    qword_1EB1F8E10 = 0;
  }

  return &+[VNDetectFaceGazeRequest dependentRequestMappingTable]::ourDependentRequestMappingTable;
}

@end