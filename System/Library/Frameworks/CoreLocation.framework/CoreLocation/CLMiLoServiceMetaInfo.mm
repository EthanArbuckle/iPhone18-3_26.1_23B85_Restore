@interface CLMiLoServiceMetaInfo
- (CLMiLoServiceMetaInfo)initWithCoder:(id)coder;
- (CLMiLoServiceMetaInfo)initWithNumClustersLearnedInModel:(id)model numRecordingTriggersAtCurrentLOI:(id)i numInputValidFingerprints:(id)fingerprints numInputValidFingerprintsLabeled:(id)labeled numInputValidFingerprintsUnlabeled:(id)unlabeled numFingerprintsBeforePruning:(id)pruning numFingerprintsAfterPruning:(id)afterPruning numWiFiAccessPoints:(id)self0 numBLESources:(id)self1 numUWBSources:(id)self2;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLMiLoServiceMetaInfo

- (CLMiLoServiceMetaInfo)initWithNumClustersLearnedInModel:(id)model numRecordingTriggersAtCurrentLOI:(id)i numInputValidFingerprints:(id)fingerprints numInputValidFingerprintsLabeled:(id)labeled numInputValidFingerprintsUnlabeled:(id)unlabeled numFingerprintsBeforePruning:(id)pruning numFingerprintsAfterPruning:(id)afterPruning numWiFiAccessPoints:(id)self0 numBLESources:(id)self1 numUWBSources:(id)self2
{
  v20.receiver = self;
  v20.super_class = CLMiLoServiceMetaInfo;
  v18 = [(CLMiLoServiceMetaInfo *)&v20 init];
  if (v18)
  {
    v18->_numberOfClustersLearnedInModel = [model copy];
    v18->_numberOfRecordingTriggersAtCurrentLocationOfInterest = [i copy];
    v18->_numberOfInputValidFingerprints = [fingerprints copy];
    v18->_numberOfInputValidFingerprintsLabeled = [labeled copy];
    v18->_numberOfInputValidFingerprintsUnLabeled = [unlabeled copy];
    v18->_numberOfFingerprintsBeforePruning = [pruning copy];
    v18->_numberOfFingerprintsAfterPruning = [afterPruning copy];
    v18->_numberOfWiFiAccessPoints = [points copy];
    v18->_numberOfBLESources = [sources copy];
    v18->_numberOfUWBSources = [bSources copy];
  }

  return v18;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoServiceMetaInfo;
  [(CLMiLoServiceMetaInfo *)&v3 dealloc];
}

- (CLMiLoServiceMetaInfo)initWithCoder:(id)coder
{
  v13 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyNumberOfClustersInModel"];
  v4 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyNumberOfRecordingTriggersAtCurrentLocationOfInterest"];
  v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyNumberOfInputValidFingerprints"];
  v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyNumberOfInputValidFingerprintsLabeled"];
  v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyNumberOfInputValidFingerprintsUnLabeled"];
  v8 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyNumberOfFingerprintsBeforePruning"];
  v9 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyNumberOfFingerprintsAfterPruning"];
  v10 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyNumberOfWiFiAccessPoints"];
  v11 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyNumberOfBLESources"];
  return -[CLMiLoServiceMetaInfo initWithNumClustersLearnedInModel:numRecordingTriggersAtCurrentLOI:numInputValidFingerprints:numInputValidFingerprintsLabeled:numInputValidFingerprintsUnlabeled:numFingerprintsBeforePruning:numFingerprintsAfterPruning:numWiFiAccessPoints:numBLESources:numUWBSources:](self, "initWithNumClustersLearnedInModel:numRecordingTriggersAtCurrentLOI:numInputValidFingerprints:numInputValidFingerprintsLabeled:numInputValidFingerprintsUnlabeled:numFingerprintsBeforePruning:numFingerprintsAfterPruning:numWiFiAccessPoints:numBLESources:numUWBSources:", v13, v4, v5, v6, v7, v8, v9, v10, v11, [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyNumberOfUWBSources"]);
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_numberOfClustersLearnedInModel forKey:@"kCLMiLoConnectionCodingKeyNumberOfClustersInModel"];
  [coder encodeObject:self->_numberOfRecordingTriggersAtCurrentLocationOfInterest forKey:@"kCLMiLoConnectionCodingKeyNumberOfRecordingTriggersAtCurrentLocationOfInterest"];
  [coder encodeObject:self->_numberOfInputValidFingerprints forKey:@"kCLMiLoConnectionCodingKeyNumberOfInputValidFingerprints"];
  [coder encodeObject:self->_numberOfInputValidFingerprintsLabeled forKey:@"kCLMiLoConnectionCodingKeyNumberOfInputValidFingerprintsLabeled"];
  [coder encodeObject:self->_numberOfInputValidFingerprintsUnLabeled forKey:@"kCLMiLoConnectionCodingKeyNumberOfInputValidFingerprintsUnLabeled"];
  [coder encodeObject:self->_numberOfFingerprintsBeforePruning forKey:@"kCLMiLoConnectionCodingKeyNumberOfFingerprintsBeforePruning"];
  [coder encodeObject:self->_numberOfFingerprintsAfterPruning forKey:@"kCLMiLoConnectionCodingKeyNumberOfFingerprintsAfterPruning"];
  [coder encodeObject:self->_numberOfWiFiAccessPoints forKey:@"kCLMiLoConnectionCodingKeyNumberOfWiFiAccessPoints"];
  [coder encodeObject:self->_numberOfBLESources forKey:@"kCLMiLoConnectionCodingKeyNumberOfBLESources"];
  numberOfUWBSources = self->_numberOfUWBSources;

  [coder encodeObject:numberOfUWBSources forKey:@"kCLMiLoConnectionCodingKeyNumberOfUWBSources"];
}

@end