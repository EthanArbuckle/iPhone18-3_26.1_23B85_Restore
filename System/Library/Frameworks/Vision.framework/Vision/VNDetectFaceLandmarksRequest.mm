@interface VNDetectFaceLandmarksRequest
+ (BOOL)revision:(NSUInteger)requestRevision supportsConstellation:(VNRequestFaceLandmarksConstellation)constellation;
+ (const)dependentRequestCompatibility;
+ (const)dependentRequestMappingTable;
+ (id)descriptionForPrivateRevision:(unint64_t)revision;
+ (id)privateRevisionsSet;
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (BOOL)performBlinkDetection;
- (BOOL)refineLeftEyeRegion;
- (BOOL)refineMouthRegion;
- (BOOL)refineRightEyeRegion;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration;
- (NSNumber)cascadeStepCount;
- (NSString)description;
- (VNDetectFaceLandmarksRequest)initWithCompletionHandler:(id)handler;
- (VNRequestFaceLandmarksConstellation)constellation;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session;
- (int64_t)dependencyProcessingOrdinality;
- (void)applyConfigurationOfRequest:(id)request;
- (void)resolvedRevisionDidChangeFromRevision:(unint64_t)revision;
- (void)setCascadeStepCount:(id)count;
- (void)setConstellation:(VNRequestFaceLandmarksConstellation)constellation;
- (void)setPerformBlinkDetection:(BOOL)detection;
- (void)setProcessedResults:(id)results;
- (void)setRefineLeftEyeRegion:(BOOL)region;
- (void)setRefineMouthRegion:(BOOL)region;
- (void)setRefineRightEyeRegion:(BOOL)region;
@end

@implementation VNDetectFaceLandmarksRequest

- (BOOL)performBlinkDetection
{
  configuration = [(VNRequest *)self configuration];
  performBlinkDetection = [configuration performBlinkDetection];

  return performBlinkDetection;
}

- (VNRequestFaceLandmarksConstellation)constellation
{
  configuration = [(VNRequest *)self configuration];
  constellation = [configuration constellation];

  return constellation;
}

+ (id)privateRevisionsSet
{
  if (+[VNDetectFaceLandmarksRequest privateRevisionsSet]::onceToken != -1)
  {
    dispatch_once(&+[VNDetectFaceLandmarksRequest privateRevisionsSet]::onceToken, &__block_literal_global_84);
  }

  v3 = +[VNDetectFaceLandmarksRequest privateRevisionsSet]::ourPrivateRevisions;

  return v3;
}

+ (id)descriptionForPrivateRevision:(unint64_t)revision
{
  if (revision == 3737841664)
  {
    v5 = @"VNDetectFaceLandmarksRequestPrivateRevisionANSTModel";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___VNDetectFaceLandmarksRequest;
    v5 = objc_msgSendSuper2(&v7, sel_descriptionForPrivateRevision_);
  }

  return v5;
}

void __51__VNDetectFaceLandmarksRequest_privateRevisionsSet__block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  if ([(VNRequest *)VNDetectFaceRectanglesRequest supportsPrivateRevision:3737841667])
  {
    [v2 addIndex:3737841664];
  }

  v0 = [v2 copy];
  v1 = +[VNDetectFaceLandmarksRequest privateRevisionsSet]::ourPrivateRevisions;
  +[VNDetectFaceLandmarksRequest privateRevisionsSet]::ourPrivateRevisions = v0;
}

+ (const)dependentRequestMappingTable
{
  {
    +[VNDetectFaceLandmarksRequest dependentRequestMappingTable]::ourDependentRequestMappingTable = 2;
    qword_1EB1F8CF8 = objc_opt_class();
    unk_1EB1F8D00 = xmmword_1A6027770;
    qword_1EB1F8D10 = objc_opt_class();
    unk_1EB1F8D18 = xmmword_1A6038C20;
    qword_1EB1F8D28 = objc_opt_class();
    unk_1EB1F8D30 = 3737841667;
    qword_1EB1F8D40 = 0;
    unk_1EB1F8D48 = 0;
    qword_1EB1F8D38 = 0;
  }

  return &+[VNDetectFaceLandmarksRequest dependentRequestMappingTable]::ourDependentRequestMappingTable;
}

+ (BOOL)revision:(NSUInteger)requestRevision supportsConstellation:(VNRequestFaceLandmarksConstellation)constellation
{
  configurationClass = [self configurationClass];

  return [configurationClass revision:requestRevision supportsConstellation:constellation];
}

+ (const)dependentRequestCompatibility
{
  {
    +[VNDetectFaceLandmarksRequest dependentRequestCompatibility]::ourDependentRequestCompatibilityTable = 1;
    qword_1EB1F8BC8 = objc_opt_class();
    *algn_1EB1F8BD0 = xmmword_1A5FF36F0;
    qword_1EB1F8BE0 = objc_opt_class();
    unk_1EB1F8BE8 = xmmword_1A5FF36F0;
    qword_1EB1F8BF8 = objc_opt_class();
    unk_1EB1F8C00 = vdupq_n_s64(2uLL);
    qword_1EB1F8C10 = objc_opt_class();
    unk_1EB1F8C18 = vdupq_n_s64(3uLL);
    qword_1EB1F8C28 = objc_opt_class();
    *algn_1EB1F8C30 = xmmword_1A5FF3930;
    qword_1EB1F8C40 = objc_opt_class();
    unk_1EB1F8C48 = xmmword_1A6027770;
    qword_1EB1F8C58 = objc_opt_class();
    unk_1EB1F8C60 = xmmword_1A6038C30;
    qword_1EB1F8C70 = objc_opt_class();
    unk_1EB1F8C78 = xmmword_1A6038C40;
    qword_1EB1F8C88 = objc_opt_class();
    *algn_1EB1F8C90 = xmmword_1A5FF36F0;
    qword_1EB1F8CA0 = objc_opt_class();
    unk_1EB1F8CA8 = xmmword_1A5FF3930;
    qword_1EB1F8CB8 = objc_opt_class();
    unk_1EB1F8CC0 = 1;
    qword_1EB1F8CD0 = 0;
    unk_1EB1F8CD8 = 0;
    qword_1EB1F8CC8 = 0;
  }

  return &+[VNDetectFaceLandmarksRequest dependentRequestCompatibility]::ourDependentRequestCompatibilityTable;
}

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  contextCopy = context;
  VNValidatedLog(1, @"Processing DetectFaceLandmarks request\n", v9, v10, v11, v12, v13, v14, v23);
  v15 = [(VNDetectFaceLandmarksRequest *)self applicableDetectorTypeForRevision:revision error:error];
  if (!v15)
  {
    goto LABEL_11;
  }

  constellation = [(VNDetectFaceLandmarksRequest *)self constellation];
  if (([objc_opt_class() revision:revision supportsConstellation:constellation] & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_14;
    }

    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"VNDetectFaceLandmarksRequest revision %lu doesn't support constellation %lu", revision, constellation];
    *error = [VNError errorForInvalidArgumentWithLocalizedDescription:v21];

LABEL_11:
    LOBYTE(error) = 0;
    goto LABEL_14;
  }

  v24 = 0;
  v17 = [(VNImageBasedRequest *)self getOptionalValidatedInputFaceObservations:&v24 clippedToRegionOfInterest:1 error:error];
  v18 = v24;
  v19 = v18;
  if (v17 && (v18 || ([(VNRequest *)self detectFacesInContext:contextCopy error:error], (v19 = objc_claimAutoreleasedReturnValue()) != 0)))
  {
    [(VNImageBasedRequest *)self regionOfInterest];
    v20 = [(VNRequest *)self processFaceObservations:v19 revision:revision regionOfInterest:v15 detectorType:0 detectorOptions:&__block_literal_global_120 shouldAlignFaceBBox:&__block_literal_global_123 shouldRunDetectorBlock:contextCopy context:error error:?];
    LOBYTE(error) = v20 != 0;
    if (v20)
    {
      [(VNRequest *)self setResults:v20];
    }
  }

  else
  {
    LOBYTE(error) = 0;
  }

LABEL_14:
  return error;
}

BOOL __72__VNDetectFaceLandmarksRequest_internalPerformRevision_inContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 landmarkPoints];
  v3 = v2 == 0;

  return v3;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session
{
  v12.receiver = self;
  v12.super_class = VNDetectFaceLandmarksRequest;
  v6 = [(VNRequest *)&v12 newDefaultDetectorOptionsForRequestRevision:revision session:session];
  performBlinkDetection = [(VNDetectFaceLandmarksRequest *)self performBlinkDetection];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:performBlinkDetection];
  [v6 setObject:v8 forKeyedSubscript:@"VNFaceLandmarkDetectorProcessOption_BlinkDetection"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VNDetectFaceLandmarksRequest constellation](self, "constellation")}];
  [v6 setObject:v9 forKeyedSubscript:@"VNFaceLandmarkDetectorDNNProcessOption_Constellation"];

  if (revision != 3 || performBlinkDetection)
  {
    v10 = MEMORY[0x1E695E118];
  }

  else
  {
    v10 = MEMORY[0x1E695E110];
  }

  [v6 setObject:v10 forKeyedSubscript:@"VNFaceLandmarkDetectorOption_LoadRefinersModel"];
  return v6;
}

- (void)applyConfigurationOfRequest:(id)request
{
  requestCopy = request;
  if (self != requestCopy)
  {
    v6.receiver = self;
    v6.super_class = VNDetectFaceLandmarksRequest;
    [(VNImageBasedRequest *)&v6 applyConfigurationOfRequest:requestCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      cascadeStepCount = [(VNDetectFaceLandmarksRequest *)requestCopy cascadeStepCount];
      [(VNDetectFaceLandmarksRequest *)self setCascadeStepCount:cascadeStepCount];

      [(VNDetectFaceLandmarksRequest *)self setRefineMouthRegion:[(VNDetectFaceLandmarksRequest *)requestCopy refineMouthRegion]];
      [(VNDetectFaceLandmarksRequest *)self setRefineLeftEyeRegion:[(VNDetectFaceLandmarksRequest *)requestCopy refineLeftEyeRegion]];
      [(VNDetectFaceLandmarksRequest *)self setRefineRightEyeRegion:[(VNDetectFaceLandmarksRequest *)requestCopy refineRightEyeRegion]];
      [(VNDetectFaceLandmarksRequest *)self setPerformBlinkDetection:[(VNDetectFaceLandmarksRequest *)requestCopy performBlinkDetection]];
      [(VNDetectFaceLandmarksRequest *)self setConstellation:[(VNDetectFaceLandmarksRequest *)requestCopy constellation]];
    }
  }
}

- (int64_t)dependencyProcessingOrdinality
{
  v3 = VNRequestDependencyProcessingOrdinalityAdjustedForConfiguredRequest(4000, self);
  cascadeStepCount = [(VNDetectFaceLandmarksRequest *)self cascadeStepCount];
  v5 = cascadeStepCount;
  if (cascadeStepCount)
  {
    v3 = v3 - [cascadeStepCount integerValue] + 20;
  }

  return v3;
}

- (void)setProcessedResults:(id)results
{
  resultsCopy = results;
  if ([(VNRequest *)self resolvedRevision]== 1)
  {
    v5 = [resultsCopy indexesOfObjectsPassingTest:&__block_literal_global_101];
    if ([v5 count])
    {
      v6 = [resultsCopy mutableCopy];
      [v6 removeObjectsAtIndexes:v5];

      resultsCopy = v6;
    }
  }

  v7.receiver = self;
  v7.super_class = VNDetectFaceLandmarksRequest;
  [(VNRequest *)&v7 setProcessedResults:resultsCopy];
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  cascadeStepCount = [(VNDetectFaceLandmarksRequest *)self cascadeStepCount];
  cascadeStepCount2 = [configurationCopy cascadeStepCount];
  v7 = cascadeStepCount2;
  if ((!cascadeStepCount || !cascadeStepCount2 || [cascadeStepCount compare:cascadeStepCount2] != 1) && (v8 = -[VNDetectFaceLandmarksRequest refineMouthRegion](self, "refineMouthRegion"), v8 == objc_msgSend(configurationCopy, "refineMouthRegion")) && (v9 = -[VNDetectFaceLandmarksRequest refineLeftEyeRegion](self, "refineLeftEyeRegion"), v9 == objc_msgSend(configurationCopy, "refineLeftEyeRegion")) && (v10 = -[VNDetectFaceLandmarksRequest refineRightEyeRegion](self, "refineRightEyeRegion"), v10 == objc_msgSend(configurationCopy, "refineRightEyeRegion")) && (v11 = -[VNDetectFaceLandmarksRequest constellation](self, "constellation"), v11 == objc_msgSend(configurationCopy, "constellation")) && (!-[VNDetectFaceLandmarksRequest performBlinkDetection](self, "performBlinkDetection") || objc_msgSend(configurationCopy, "performBlinkDetection")))
  {
    v14.receiver = self;
    v14.super_class = VNDetectFaceLandmarksRequest;
    v12 = [(VNImageBasedRequest *)&v14 willAcceptCachedResultsFromRequestWithConfiguration:configurationCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)resolvedRevisionDidChangeFromRevision:(unint64_t)revision
{
  v5.receiver = self;
  v5.super_class = VNDetectFaceLandmarksRequest;
  [(VNRequest *)&v5 resolvedRevisionDidChangeFromRevision:revision];
  if ([(VNRequest *)self revision]<= 2)
  {
    configuration = [(VNRequest *)self configuration];
    [configuration setConstellation:1];
  }
}

- (void)setConstellation:(VNRequestFaceLandmarksConstellation)constellation
{
  if ([objc_opt_class() revision:-[VNRequest revision](self supportsConstellation:{"revision"), constellation}])
  {
    configuration = [(VNRequest *)self configuration];
    [configuration setConstellation:constellation];
  }
}

- (void)setPerformBlinkDetection:(BOOL)detection
{
  detectionCopy = detection;
  configuration = [(VNRequest *)self configuration];
  [configuration setPerformBlinkDetection:detectionCopy];
}

- (void)setRefineRightEyeRegion:(BOOL)region
{
  regionCopy = region;
  configuration = [(VNRequest *)self configuration];
  [configuration setRefineRightEyeRegion:regionCopy];
}

- (BOOL)refineRightEyeRegion
{
  configuration = [(VNRequest *)self configuration];
  refineRightEyeRegion = [configuration refineRightEyeRegion];

  return refineRightEyeRegion;
}

- (void)setRefineLeftEyeRegion:(BOOL)region
{
  regionCopy = region;
  configuration = [(VNRequest *)self configuration];
  [configuration setRefineLeftEyeRegion:regionCopy];
}

- (BOOL)refineLeftEyeRegion
{
  configuration = [(VNRequest *)self configuration];
  refineLeftEyeRegion = [configuration refineLeftEyeRegion];

  return refineLeftEyeRegion;
}

- (void)setRefineMouthRegion:(BOOL)region
{
  regionCopy = region;
  configuration = [(VNRequest *)self configuration];
  [configuration setRefineMouthRegion:regionCopy];
}

- (BOOL)refineMouthRegion
{
  configuration = [(VNRequest *)self configuration];
  refineMouthRegion = [configuration refineMouthRegion];

  return refineMouthRegion;
}

- (void)setCascadeStepCount:(id)count
{
  countCopy = count;
  configuration = [(VNRequest *)self configuration];
  [configuration setCascadeStepCount:countCopy];
}

- (NSNumber)cascadeStepCount
{
  configuration = [(VNRequest *)self configuration];
  cascadeStepCount = [configuration cascadeStepCount];

  return cascadeStepCount;
}

- (VNDetectFaceLandmarksRequest)initWithCompletionHandler:(id)handler
{
  v8.receiver = self;
  v8.super_class = VNDetectFaceLandmarksRequest;
  v3 = [(VNRequest *)&v8 initWithCompletionHandler:handler];
  v4 = v3;
  if (v3)
  {
    if ([(VNRequest *)v3 revision]== 3)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    [(VNDetectFaceLandmarksRequest *)v4 setConstellation:v5];
    v6 = v4;
  }

  return v4;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v9.receiver = self;
  v9.super_class = VNDetectFaceLandmarksRequest;
  v4 = [(VNImageBasedRequest *)&v9 description];
  constellation = [(VNDetectFaceLandmarksRequest *)self constellation];
  v6 = @"VNRequestFaceLandmarksConstellationNotDefined";
  if (constellation == VNRequestFaceLandmarksConstellation65Points)
  {
    v6 = @"VNRequestFaceLandmarksConstellation65Points";
  }

  if (constellation == VNRequestFaceLandmarksConstellation76Points)
  {
    v6 = @"VNRequestFaceLandmarksConstellation76Points";
  }

  v7 = [v3 initWithFormat:@"%@ %@", v4, v6];

  return v7;
}

@end