@interface CLMiLoServiceMetaInfo
- (CLMiLoServiceMetaInfo)initWithCoder:(id)a3;
- (CLMiLoServiceMetaInfo)initWithNumClustersLearnedInModel:(id)a3 numRecordingTriggersAtCurrentLOI:(id)a4 numInputValidFingerprints:(id)a5 numInputValidFingerprintsLabeled:(id)a6 numInputValidFingerprintsUnlabeled:(id)a7 numFingerprintsBeforePruning:(id)a8 numFingerprintsAfterPruning:(id)a9 numWiFiAccessPoints:(id)a10 numBLESources:(id)a11 numUWBSources:(id)a12;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLMiLoServiceMetaInfo

- (CLMiLoServiceMetaInfo)initWithNumClustersLearnedInModel:(id)a3 numRecordingTriggersAtCurrentLOI:(id)a4 numInputValidFingerprints:(id)a5 numInputValidFingerprintsLabeled:(id)a6 numInputValidFingerprintsUnlabeled:(id)a7 numFingerprintsBeforePruning:(id)a8 numFingerprintsAfterPruning:(id)a9 numWiFiAccessPoints:(id)a10 numBLESources:(id)a11 numUWBSources:(id)a12
{
  v20.receiver = self;
  v20.super_class = CLMiLoServiceMetaInfo;
  v18 = [(CLMiLoServiceMetaInfo *)&v20 init];
  if (v18)
  {
    v18->_numberOfClustersLearnedInModel = [a3 copy];
    v18->_numberOfRecordingTriggersAtCurrentLocationOfInterest = [a4 copy];
    v18->_numberOfInputValidFingerprints = [a5 copy];
    v18->_numberOfInputValidFingerprintsLabeled = [a6 copy];
    v18->_numberOfInputValidFingerprintsUnLabeled = [a7 copy];
    v18->_numberOfFingerprintsBeforePruning = [a8 copy];
    v18->_numberOfFingerprintsAfterPruning = [a9 copy];
    v18->_numberOfWiFiAccessPoints = [a10 copy];
    v18->_numberOfBLESources = [a11 copy];
    v18->_numberOfUWBSources = [a12 copy];
  }

  return v18;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoServiceMetaInfo;
  [(CLMiLoServiceMetaInfo *)&v3 dealloc];
}

- (CLMiLoServiceMetaInfo)initWithCoder:(id)a3
{
  v13 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyNumberOfClustersInModel"];
  v4 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyNumberOfRecordingTriggersAtCurrentLocationOfInterest"];
  v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyNumberOfInputValidFingerprints"];
  v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyNumberOfInputValidFingerprintsLabeled"];
  v7 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyNumberOfInputValidFingerprintsUnLabeled"];
  v8 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyNumberOfFingerprintsBeforePruning"];
  v9 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyNumberOfFingerprintsAfterPruning"];
  v10 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyNumberOfWiFiAccessPoints"];
  v11 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyNumberOfBLESources"];
  return -[CLMiLoServiceMetaInfo initWithNumClustersLearnedInModel:numRecordingTriggersAtCurrentLOI:numInputValidFingerprints:numInputValidFingerprintsLabeled:numInputValidFingerprintsUnlabeled:numFingerprintsBeforePruning:numFingerprintsAfterPruning:numWiFiAccessPoints:numBLESources:numUWBSources:](self, "initWithNumClustersLearnedInModel:numRecordingTriggersAtCurrentLOI:numInputValidFingerprints:numInputValidFingerprintsLabeled:numInputValidFingerprintsUnlabeled:numFingerprintsBeforePruning:numFingerprintsAfterPruning:numWiFiAccessPoints:numBLESources:numUWBSources:", v13, v4, v5, v6, v7, v8, v9, v10, v11, [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyNumberOfUWBSources"]);
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_numberOfClustersLearnedInModel forKey:@"kCLMiLoConnectionCodingKeyNumberOfClustersInModel"];
  [a3 encodeObject:self->_numberOfRecordingTriggersAtCurrentLocationOfInterest forKey:@"kCLMiLoConnectionCodingKeyNumberOfRecordingTriggersAtCurrentLocationOfInterest"];
  [a3 encodeObject:self->_numberOfInputValidFingerprints forKey:@"kCLMiLoConnectionCodingKeyNumberOfInputValidFingerprints"];
  [a3 encodeObject:self->_numberOfInputValidFingerprintsLabeled forKey:@"kCLMiLoConnectionCodingKeyNumberOfInputValidFingerprintsLabeled"];
  [a3 encodeObject:self->_numberOfInputValidFingerprintsUnLabeled forKey:@"kCLMiLoConnectionCodingKeyNumberOfInputValidFingerprintsUnLabeled"];
  [a3 encodeObject:self->_numberOfFingerprintsBeforePruning forKey:@"kCLMiLoConnectionCodingKeyNumberOfFingerprintsBeforePruning"];
  [a3 encodeObject:self->_numberOfFingerprintsAfterPruning forKey:@"kCLMiLoConnectionCodingKeyNumberOfFingerprintsAfterPruning"];
  [a3 encodeObject:self->_numberOfWiFiAccessPoints forKey:@"kCLMiLoConnectionCodingKeyNumberOfWiFiAccessPoints"];
  [a3 encodeObject:self->_numberOfBLESources forKey:@"kCLMiLoConnectionCodingKeyNumberOfBLESources"];
  numberOfUWBSources = self->_numberOfUWBSources;

  [a3 encodeObject:numberOfUWBSources forKey:@"kCLMiLoConnectionCodingKeyNumberOfUWBSources"];
}

@end