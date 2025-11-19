@interface VNDetectFaceLandmarksRequest
+ (BOOL)revision:(NSUInteger)requestRevision supportsConstellation:(VNRequestFaceLandmarksConstellation)constellation;
+ (const)dependentRequestCompatibility;
+ (const)dependentRequestMappingTable;
+ (id)descriptionForPrivateRevision:(unint64_t)a3;
+ (id)privateRevisionsSet;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (BOOL)performBlinkDetection;
- (BOOL)refineLeftEyeRegion;
- (BOOL)refineMouthRegion;
- (BOOL)refineRightEyeRegion;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3;
- (NSNumber)cascadeStepCount;
- (NSString)description;
- (VNDetectFaceLandmarksRequest)initWithCompletionHandler:(id)a3;
- (VNRequestFaceLandmarksConstellation)constellation;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4;
- (int64_t)dependencyProcessingOrdinality;
- (void)applyConfigurationOfRequest:(id)a3;
- (void)resolvedRevisionDidChangeFromRevision:(unint64_t)a3;
- (void)setCascadeStepCount:(id)a3;
- (void)setConstellation:(VNRequestFaceLandmarksConstellation)constellation;
- (void)setPerformBlinkDetection:(BOOL)a3;
- (void)setProcessedResults:(id)a3;
- (void)setRefineLeftEyeRegion:(BOOL)a3;
- (void)setRefineMouthRegion:(BOOL)a3;
- (void)setRefineRightEyeRegion:(BOOL)a3;
@end

@implementation VNDetectFaceLandmarksRequest

- (BOOL)performBlinkDetection
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 performBlinkDetection];

  return v3;
}

- (VNRequestFaceLandmarksConstellation)constellation
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 constellation];

  return v3;
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

+ (id)descriptionForPrivateRevision:(unint64_t)a3
{
  if (a3 == 3737841664)
  {
    v5 = @"VNDetectFaceLandmarksRequestPrivateRevisionANSTModel";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = a1;
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
  v6 = [a1 configurationClass];

  return [v6 revision:requestRevision supportsConstellation:constellation];
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

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v8 = a4;
  VNValidatedLog(1, @"Processing DetectFaceLandmarks request\n", v9, v10, v11, v12, v13, v14, v23);
  v15 = [(VNDetectFaceLandmarksRequest *)self applicableDetectorTypeForRevision:a3 error:a5];
  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = [(VNDetectFaceLandmarksRequest *)self constellation];
  if (([objc_opt_class() revision:a3 supportsConstellation:v16] & 1) == 0)
  {
    if (!a5)
    {
      goto LABEL_14;
    }

    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"VNDetectFaceLandmarksRequest revision %lu doesn't support constellation %lu", a3, v16];
    *a5 = [VNError errorForInvalidArgumentWithLocalizedDescription:v21];

LABEL_11:
    LOBYTE(a5) = 0;
    goto LABEL_14;
  }

  v24 = 0;
  v17 = [(VNImageBasedRequest *)self getOptionalValidatedInputFaceObservations:&v24 clippedToRegionOfInterest:1 error:a5];
  v18 = v24;
  v19 = v18;
  if (v17 && (v18 || ([(VNRequest *)self detectFacesInContext:v8 error:a5], (v19 = objc_claimAutoreleasedReturnValue()) != 0)))
  {
    [(VNImageBasedRequest *)self regionOfInterest];
    v20 = [(VNRequest *)self processFaceObservations:v19 revision:a3 regionOfInterest:v15 detectorType:0 detectorOptions:&__block_literal_global_120 shouldAlignFaceBBox:&__block_literal_global_123 shouldRunDetectorBlock:v8 context:a5 error:?];
    LOBYTE(a5) = v20 != 0;
    if (v20)
    {
      [(VNRequest *)self setResults:v20];
    }
  }

  else
  {
    LOBYTE(a5) = 0;
  }

LABEL_14:
  return a5;
}

BOOL __72__VNDetectFaceLandmarksRequest_internalPerformRevision_inContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 landmarkPoints];
  v3 = v2 == 0;

  return v3;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4
{
  v12.receiver = self;
  v12.super_class = VNDetectFaceLandmarksRequest;
  v6 = [(VNRequest *)&v12 newDefaultDetectorOptionsForRequestRevision:a3 session:a4];
  v7 = [(VNDetectFaceLandmarksRequest *)self performBlinkDetection];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:v7];
  [v6 setObject:v8 forKeyedSubscript:@"VNFaceLandmarkDetectorProcessOption_BlinkDetection"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VNDetectFaceLandmarksRequest constellation](self, "constellation")}];
  [v6 setObject:v9 forKeyedSubscript:@"VNFaceLandmarkDetectorDNNProcessOption_Constellation"];

  if (a3 != 3 || v7)
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

- (void)applyConfigurationOfRequest:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    v6.receiver = self;
    v6.super_class = VNDetectFaceLandmarksRequest;
    [(VNImageBasedRequest *)&v6 applyConfigurationOfRequest:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(VNDetectFaceLandmarksRequest *)v4 cascadeStepCount];
      [(VNDetectFaceLandmarksRequest *)self setCascadeStepCount:v5];

      [(VNDetectFaceLandmarksRequest *)self setRefineMouthRegion:[(VNDetectFaceLandmarksRequest *)v4 refineMouthRegion]];
      [(VNDetectFaceLandmarksRequest *)self setRefineLeftEyeRegion:[(VNDetectFaceLandmarksRequest *)v4 refineLeftEyeRegion]];
      [(VNDetectFaceLandmarksRequest *)self setRefineRightEyeRegion:[(VNDetectFaceLandmarksRequest *)v4 refineRightEyeRegion]];
      [(VNDetectFaceLandmarksRequest *)self setPerformBlinkDetection:[(VNDetectFaceLandmarksRequest *)v4 performBlinkDetection]];
      [(VNDetectFaceLandmarksRequest *)self setConstellation:[(VNDetectFaceLandmarksRequest *)v4 constellation]];
    }
  }
}

- (int64_t)dependencyProcessingOrdinality
{
  v3 = VNRequestDependencyProcessingOrdinalityAdjustedForConfiguredRequest(4000, self);
  v4 = [(VNDetectFaceLandmarksRequest *)self cascadeStepCount];
  v5 = v4;
  if (v4)
  {
    v3 = v3 - [v4 integerValue] + 20;
  }

  return v3;
}

- (void)setProcessedResults:(id)a3
{
  v4 = a3;
  if ([(VNRequest *)self resolvedRevision]== 1)
  {
    v5 = [v4 indexesOfObjectsPassingTest:&__block_literal_global_101];
    if ([v5 count])
    {
      v6 = [v4 mutableCopy];
      [v6 removeObjectsAtIndexes:v5];

      v4 = v6;
    }
  }

  v7.receiver = self;
  v7.super_class = VNDetectFaceLandmarksRequest;
  [(VNRequest *)&v7 setProcessedResults:v4];
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(VNDetectFaceLandmarksRequest *)self cascadeStepCount];
  v6 = [v4 cascadeStepCount];
  v7 = v6;
  if ((!v5 || !v6 || [v5 compare:v6] != 1) && (v8 = -[VNDetectFaceLandmarksRequest refineMouthRegion](self, "refineMouthRegion"), v8 == objc_msgSend(v4, "refineMouthRegion")) && (v9 = -[VNDetectFaceLandmarksRequest refineLeftEyeRegion](self, "refineLeftEyeRegion"), v9 == objc_msgSend(v4, "refineLeftEyeRegion")) && (v10 = -[VNDetectFaceLandmarksRequest refineRightEyeRegion](self, "refineRightEyeRegion"), v10 == objc_msgSend(v4, "refineRightEyeRegion")) && (v11 = -[VNDetectFaceLandmarksRequest constellation](self, "constellation"), v11 == objc_msgSend(v4, "constellation")) && (!-[VNDetectFaceLandmarksRequest performBlinkDetection](self, "performBlinkDetection") || objc_msgSend(v4, "performBlinkDetection")))
  {
    v14.receiver = self;
    v14.super_class = VNDetectFaceLandmarksRequest;
    v12 = [(VNImageBasedRequest *)&v14 willAcceptCachedResultsFromRequestWithConfiguration:v4];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)resolvedRevisionDidChangeFromRevision:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = VNDetectFaceLandmarksRequest;
  [(VNRequest *)&v5 resolvedRevisionDidChangeFromRevision:a3];
  if ([(VNRequest *)self revision]<= 2)
  {
    v4 = [(VNRequest *)self configuration];
    [v4 setConstellation:1];
  }
}

- (void)setConstellation:(VNRequestFaceLandmarksConstellation)constellation
{
  if ([objc_opt_class() revision:-[VNRequest revision](self supportsConstellation:{"revision"), constellation}])
  {
    v5 = [(VNRequest *)self configuration];
    [v5 setConstellation:constellation];
  }
}

- (void)setPerformBlinkDetection:(BOOL)a3
{
  v3 = a3;
  v4 = [(VNRequest *)self configuration];
  [v4 setPerformBlinkDetection:v3];
}

- (void)setRefineRightEyeRegion:(BOOL)a3
{
  v3 = a3;
  v4 = [(VNRequest *)self configuration];
  [v4 setRefineRightEyeRegion:v3];
}

- (BOOL)refineRightEyeRegion
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 refineRightEyeRegion];

  return v3;
}

- (void)setRefineLeftEyeRegion:(BOOL)a3
{
  v3 = a3;
  v4 = [(VNRequest *)self configuration];
  [v4 setRefineLeftEyeRegion:v3];
}

- (BOOL)refineLeftEyeRegion
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 refineLeftEyeRegion];

  return v3;
}

- (void)setRefineMouthRegion:(BOOL)a3
{
  v3 = a3;
  v4 = [(VNRequest *)self configuration];
  [v4 setRefineMouthRegion:v3];
}

- (BOOL)refineMouthRegion
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 refineMouthRegion];

  return v3;
}

- (void)setCascadeStepCount:(id)a3
{
  v5 = a3;
  v4 = [(VNRequest *)self configuration];
  [v4 setCascadeStepCount:v5];
}

- (NSNumber)cascadeStepCount
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 cascadeStepCount];

  return v3;
}

- (VNDetectFaceLandmarksRequest)initWithCompletionHandler:(id)a3
{
  v8.receiver = self;
  v8.super_class = VNDetectFaceLandmarksRequest;
  v3 = [(VNRequest *)&v8 initWithCompletionHandler:a3];
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
  v5 = [(VNDetectFaceLandmarksRequest *)self constellation];
  v6 = @"VNRequestFaceLandmarksConstellationNotDefined";
  if (v5 == VNRequestFaceLandmarksConstellation65Points)
  {
    v6 = @"VNRequestFaceLandmarksConstellation65Points";
  }

  if (v5 == VNRequestFaceLandmarksConstellation76Points)
  {
    v6 = @"VNRequestFaceLandmarksConstellation76Points";
  }

  v7 = [v3 initWithFormat:@"%@ %@", v4, v6];

  return v7;
}

@end