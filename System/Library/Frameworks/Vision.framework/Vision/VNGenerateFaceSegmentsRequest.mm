@interface VNGenerateFaceSegmentsRequest
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration;
- (float)faceBoundingBoxExpansionRatio;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session;
- (void)setFaceBoundingBoxExpansionRatio:(float)ratio;
@end

@implementation VNGenerateFaceSegmentsRequest

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [(VNGenerateFaceSegmentsRequest *)self faceBoundingBoxExpansionRatio];
  v6 = v5;
  [configurationCopy faceBoundingBoxExpansionRatio];
  if (v6 == v7)
  {
    v10.receiver = self;
    v10.super_class = VNGenerateFaceSegmentsRequest;
    v8 = [(VNImageBasedRequest *)&v10 willAcceptCachedResultsFromRequestWithConfiguration:configurationCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setFaceBoundingBoxExpansionRatio:(float)ratio
{
  configuration = [(VNRequest *)self configuration];
  *&v4 = ratio;
  [configuration setFaceBoundingBoxExpansionRatio:v4];
}

- (float)faceBoundingBoxExpansionRatio
{
  configuration = [(VNRequest *)self configuration];
  [configuration faceBoundingBoxExpansionRatio];
  v4 = v3;

  return v4;
}

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  contextCopy = context;
  VNValidatedLog(1, @"Processing Segment Face Segments Request", v9, v10, v11, v12, v13, v14, v22);
  v15 = [(VNGenerateFaceSegmentsRequest *)self applicableDetectorTypeForRevision:revision error:error];
  if (v15)
  {
    v23 = 0;
    v16 = [(VNImageBasedRequest *)self getOptionalValidatedInputFaceObservations:&v23 clippedToRegionOfInterest:1 error:error];
    v17 = v23;
    v18 = v17;
    if (v16 && (v17 || ([(VNRequest *)self detectFacesInContext:contextCopy error:error], (v18 = objc_claimAutoreleasedReturnValue()) != 0)))
    {
      [(VNImageBasedRequest *)self regionOfInterest];
      v19 = [(VNRequest *)self processFaceObservations:v18 revision:revision regionOfInterest:v15 detectorType:0 detectorOptions:&__block_literal_global_25525 shouldAlignFaceBBox:&__block_literal_global_54 shouldRunDetectorBlock:contextCopy context:error error:?];
      v20 = v19 != 0;
      if (v19)
      {
        [(VNRequest *)self setResults:v19];
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

BOOL __73__VNGenerateFaceSegmentsRequest_internalPerformRevision_inContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 faceSegments];
  v3 = v2 == 0;

  return v3;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session
{
  v9.receiver = self;
  v9.super_class = VNGenerateFaceSegmentsRequest;
  v5 = [(VNRequest *)&v9 newDefaultDetectorOptionsForRequestRevision:revision session:session];
  v6 = MEMORY[0x1E696AD98];
  [(VNGenerateFaceSegmentsRequest *)self faceBoundingBoxExpansionRatio];
  v7 = [v6 numberWithFloat:?];
  [v5 setObject:v7 forKeyedSubscript:@"VNFaceSegmentGeneratorProcessOption_FaceBoundingBoxExpansionRatio"];

  return v5;
}

@end