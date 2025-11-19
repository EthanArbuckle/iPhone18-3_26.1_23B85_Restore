@interface VNTrackLegacyFaceCoreObjectRequest
+ (id)privateRevisionsSet;
+ (id)publicRevisionsSet;
+ (id)trackerTypeForRequestRevision:(unint64_t)a3 error:(id *)a4;
- (VNTrackLegacyFaceCoreObjectRequest)initWithDetectedObjectObservation:(id)a3;
- (void)populateDetectorProcessingOptions:(id)a3 session:(id)a4;
@end

@implementation VNTrackLegacyFaceCoreObjectRequest

- (void)populateDetectorProcessingOptions:(id)a3 session:(id)a4
{
  v12 = a3;
  v5 = [(VNTrackLegacyFaceCoreObjectRequest *)self faceCoreMinFaceSize];
  [v12 setObject:v5 forKeyedSubscript:@"VNTrackObjectPrivateRevisionLegacyFaceCoreProcessOption_MinFaceSize"];

  v6 = [(VNTrackLegacyFaceCoreObjectRequest *)self faceCoreNumberOfDetectionAngles];
  [v12 setObject:v6 forKeyedSubscript:@"VNTrackObjectPrivateRevisionLegacyFaceCoreProcessOption_NumberOfDetectionAngles"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNTrackLegacyFaceCoreObjectRequest faceCoreEnhanceEyesAndMouthLocalization](self, "faceCoreEnhanceEyesAndMouthLocalization")}];
  [v12 setObject:v7 forKeyedSubscript:@"VNTrackObjectPrivateRevisionLegacyCoreProcessOption_EnhanceEyesAndMouthLocalization"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNTrackLegacyFaceCoreObjectRequest faceCoreExtractBlink](self, "faceCoreExtractBlink")}];
  [v12 setObject:v8 forKeyedSubscript:@"VNTrackObjectPrivateRevisionLegacyFaceCoreProcessOption_ExtractBlink"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNTrackLegacyFaceCoreObjectRequest faceCoreExtractSmile](self, "faceCoreExtractSmile")}];
  [v12 setObject:v9 forKeyedSubscript:@"VNTrackObjectPrivateRevisionLegacyFaceCoreProcessOption_ExtractSmile"];

  v10 = MEMORY[0x1E696AD98];
  [(VNTrackLegacyFaceCoreObjectRequest *)self faceCoreKalmanFilter];
  v11 = [v10 numberWithFloat:?];
  [v12 setObject:v11 forKeyedSubscript:@"VNTrackObjectPrivateRevisionLegacyFaceCoreProcessOption_KalmanFilter"];
}

- (VNTrackLegacyFaceCoreObjectRequest)initWithDetectedObjectObservation:(id)a3
{
  v4.receiver = self;
  v4.super_class = VNTrackLegacyFaceCoreObjectRequest;
  result = [(VNTrackObjectRequest *)&v4 initWithDetectedObjectObservation:a3];
  if (result)
  {
    result->_faceCoreKalmanFilter = 0.5;
  }

  return result;
}

+ (id)trackerTypeForRequestRevision:(unint64_t)a3 error:(id *)a4
{
  if (a3 == 3737841664)
  {
    v4 = @"VNObjectTrackerRevisionLegacyFaceCoreType";
    v5 = @"VNObjectTrackerRevisionLegacyFaceCoreType";
  }

  else if (a4)
  {
    [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequestClass:" ofRequestClass:?];
    *a4 = v4 = 0;
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