@interface VNDetectFaceGazeRequest
+ (const)dependentRequestMappingTable;
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (BOOL)resolveSomewhereElseDirection;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration;
- (float)commonGazeLocationRadius;
- (float)gazeHeatMapThreshold;
- (float)minimumFaceDimension;
- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session;
- (void)applyConfigurationOfRequest:(id)request;
- (void)setCommonGazeLocationRadius:(float)radius;
- (void)setGazeHeatMapThreshold:(float)threshold;
- (void)setMinimumFaceDimension:(float)dimension;
- (void)setResolveSomewhereElseDirection:(BOOL)direction;
@end

@implementation VNDetectFaceGazeRequest

- (void)setResolveSomewhereElseDirection:(BOOL)direction
{
  directionCopy = direction;
  configuration = [(VNRequest *)self configuration];
  [configuration setResolveSomewhereElseDirection:directionCopy];
}

- (BOOL)resolveSomewhereElseDirection
{
  configuration = [(VNRequest *)self configuration];
  resolveSomewhereElseDirection = [configuration resolveSomewhereElseDirection];

  return resolveSomewhereElseDirection;
}

- (void)setCommonGazeLocationRadius:(float)radius
{
  configuration = [(VNRequest *)self configuration];
  *&v4 = radius;
  [configuration setCommonGazeLocationRadius:v4];
}

- (float)commonGazeLocationRadius
{
  configuration = [(VNRequest *)self configuration];
  [configuration commonGazeLocationRadius];
  v4 = v3;

  return v4;
}

- (void)setMinimumFaceDimension:(float)dimension
{
  configuration = [(VNRequest *)self configuration];
  *&v4 = dimension;
  [configuration setMinimumFaceDimension:v4];
}

- (float)minimumFaceDimension
{
  configuration = [(VNRequest *)self configuration];
  [configuration minimumFaceDimension];
  v4 = v3;

  return v4;
}

- (void)setGazeHeatMapThreshold:(float)threshold
{
  configuration = [(VNRequest *)self configuration];
  *&v4 = threshold;
  [configuration setGazeHeatMapThreshold:v4];
}

- (float)gazeHeatMapThreshold
{
  configuration = [(VNRequest *)self configuration];
  [configuration gazeHeatMapThreshold];
  v4 = v3;

  return v4;
}

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  v32[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v9 = [contextCopy imageBufferAndReturnError:error];
  if (v9)
  {
    session = [contextCopy session];
    v29 = 0;
    v11 = [(VNRequest *)self applicableDetectorAndOptions:&v29 forRevision:revision loadedInSession:session error:error];
    v12 = v29;
    if (!v11)
    {
      v19 = 0;
LABEL_22:

      goto LABEL_23;
    }

    v13 = contextCopy;
    v14 = v13;
    if (self)
    {
      v30 = 0;
      v15 = [(VNImageBasedRequest *)self getOptionalValidatedInputFaceObservations:&v30 clippedToRegionOfInterest:1 error:error];
      v16 = v30;
      v17 = v16;
      if (v15)
      {
        if (v16)
        {
          results = v16;
        }

        else
        {
          v20 = objc_alloc_init(VNDetectFaceRectanglesRequest);
          v27 = v20;
          [(VNDetectFaceRectanglesRequest *)v20 applyConfigurationOfRequest:self];
          v28 = [v14 requestPerformerAndReturnError:error];
          if (v28 && (v32[0] = v20, [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1], v21 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v28, "performDependentRequests:onBehalfOfRequest:inContext:error:", v21, self, v14, error), v21, (v26 & 1) != 0))
          {
            results = [(VNRequest *)v27 results];
          }

          else
          {
            results = 0;
          }
        }
      }

      else
      {
        results = 0;
      }

      if (results)
      {
        [v12 setObject:results forKeyedSubscript:@"VNDetectorProcessOption_InputFaceObservations"];
        v31 = v9;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
        [v12 setObject:v22 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

        qosClass = [v14 qosClass];
        [(VNImageBasedRequest *)self regionOfInterest];
        v24 = [v11 processUsingQualityOfServiceClass:qosClass options:v12 regionOfInterest:self warningRecorder:error error:0 progressHandler:?];
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

      results = 0;
    }

    v19 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v19 = 0;
LABEL_23:

  return v19;
}

- (void)applyConfigurationOfRequest:(id)request
{
  requestCopy = request;
  if (self != requestCopy)
  {
    v6.receiver = self;
    v6.super_class = VNDetectFaceGazeRequest;
    [(VNImageBasedRequest *)&v6 applyConfigurationOfRequest:requestCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = requestCopy;
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

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [(VNDetectFaceGazeRequest *)self gazeHeatMapThreshold];
  v6 = v5;
  [configurationCopy gazeHeatMapThreshold];
  if (v6 == v7 && (-[VNDetectFaceGazeRequest minimumFaceDimension](self, "minimumFaceDimension"), v9 = v8, [configurationCopy minimumFaceDimension], v9 == v10) && (-[VNDetectFaceGazeRequest commonGazeLocationRadius](self, "commonGazeLocationRadius"), v12 = v11, objc_msgSend(configurationCopy, "commonGazeLocationRadius"), v12 == v13) && (v14 = -[VNDetectFaceGazeRequest resolveSomewhereElseDirection](self, "resolveSomewhereElseDirection"), v14 == objc_msgSend(configurationCopy, "resolveSomewhereElseDirection")))
  {
    v17.receiver = self;
    v17.super_class = VNDetectFaceGazeRequest;
    v15 = [(VNImageBasedRequest *)&v17 willAcceptCachedResultsFromRequestWithConfiguration:configurationCopy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session
{
  v15.receiver = self;
  v15.super_class = VNDetectFaceGazeRequest;
  v6 = [(VNRequest *)&v15 newDefaultDetectorOptionsForRequestRevision:revision session:session];
  if (revision == 1)
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

- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error
{
  if (revision == 1)
  {
    v4 = @"VNFaceGazeDetectorType";
    v5 = @"VNFaceGazeDetectorType";
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