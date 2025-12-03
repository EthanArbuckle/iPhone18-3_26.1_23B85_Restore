@interface VNTrackLegacyFaceCoreObjectRequest
+ (id)privateRevisionsSet;
+ (id)publicRevisionsSet;
+ (id)trackerTypeForRequestRevision:(unint64_t)revision error:(id *)error;
- (VNTrackLegacyFaceCoreObjectRequest)initWithDetectedObjectObservation:(id)observation;
- (void)populateDetectorProcessingOptions:(id)options session:(id)session;
@end

@implementation VNTrackLegacyFaceCoreObjectRequest

- (void)populateDetectorProcessingOptions:(id)options session:(id)session
{
  optionsCopy = options;
  faceCoreMinFaceSize = [(VNTrackLegacyFaceCoreObjectRequest *)self faceCoreMinFaceSize];
  [optionsCopy setObject:faceCoreMinFaceSize forKeyedSubscript:@"VNTrackObjectPrivateRevisionLegacyFaceCoreProcessOption_MinFaceSize"];

  faceCoreNumberOfDetectionAngles = [(VNTrackLegacyFaceCoreObjectRequest *)self faceCoreNumberOfDetectionAngles];
  [optionsCopy setObject:faceCoreNumberOfDetectionAngles forKeyedSubscript:@"VNTrackObjectPrivateRevisionLegacyFaceCoreProcessOption_NumberOfDetectionAngles"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNTrackLegacyFaceCoreObjectRequest faceCoreEnhanceEyesAndMouthLocalization](self, "faceCoreEnhanceEyesAndMouthLocalization")}];
  [optionsCopy setObject:v7 forKeyedSubscript:@"VNTrackObjectPrivateRevisionLegacyCoreProcessOption_EnhanceEyesAndMouthLocalization"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNTrackLegacyFaceCoreObjectRequest faceCoreExtractBlink](self, "faceCoreExtractBlink")}];
  [optionsCopy setObject:v8 forKeyedSubscript:@"VNTrackObjectPrivateRevisionLegacyFaceCoreProcessOption_ExtractBlink"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNTrackLegacyFaceCoreObjectRequest faceCoreExtractSmile](self, "faceCoreExtractSmile")}];
  [optionsCopy setObject:v9 forKeyedSubscript:@"VNTrackObjectPrivateRevisionLegacyFaceCoreProcessOption_ExtractSmile"];

  v10 = MEMORY[0x1E696AD98];
  [(VNTrackLegacyFaceCoreObjectRequest *)self faceCoreKalmanFilter];
  v11 = [v10 numberWithFloat:?];
  [optionsCopy setObject:v11 forKeyedSubscript:@"VNTrackObjectPrivateRevisionLegacyFaceCoreProcessOption_KalmanFilter"];
}

- (VNTrackLegacyFaceCoreObjectRequest)initWithDetectedObjectObservation:(id)observation
{
  v4.receiver = self;
  v4.super_class = VNTrackLegacyFaceCoreObjectRequest;
  result = [(VNTrackObjectRequest *)&v4 initWithDetectedObjectObservation:observation];
  if (result)
  {
    result->_faceCoreKalmanFilter = 0.5;
  }

  return result;
}

+ (id)trackerTypeForRequestRevision:(unint64_t)revision error:(id *)error
{
  if (revision == 3737841664)
  {
    v4 = @"VNObjectTrackerRevisionLegacyFaceCoreType";
    v5 = @"VNObjectTrackerRevisionLegacyFaceCoreType";
  }

  else if (error)
  {
    [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequestClass:" ofRequestClass:?];
    *error = v4 = 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)privateRevisionsSet
{
  if (+[VNTrackLegacyFaceCoreObjectRequest privateRevisionsSet]::onceToken != -1)
  {
    dispatch_once(&+[VNTrackLegacyFaceCoreObjectRequest privateRevisionsSet]::onceToken, &__block_literal_global_22556);
  }

  v3 = +[VNTrackLegacyFaceCoreObjectRequest privateRevisionsSet]::ourPrivateRevisions;

  return v3;
}

uint64_t __57__VNTrackLegacyFaceCoreObjectRequest_privateRevisionsSet__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  +[VNTrackLegacyFaceCoreObjectRequest privateRevisionsSet]::ourPrivateRevisions = VNRequestPrivateRevisionsSet(0xDECAF000uLL, a2, a3, a4, a5, a6, a7, a8, 0);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)publicRevisionsSet
{
  v2 = objc_alloc_init(MEMORY[0x1E696AC90]);

  return v2;
}

@end