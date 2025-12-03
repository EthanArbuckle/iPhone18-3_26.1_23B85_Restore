@interface ASDImpressionParamsConfig
- (ASDImpressionParamsConfig)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDImpressionParamsConfig

- (void)encodeWithCoder:(id)coder
{
  appAdamId = self->_appAdamId;
  coderCopy = coder;
  [coderCopy encodeObject:appAdamId forKey:@"1"];
  [coderCopy encodeObject:self->_adNetworkId forKey:@"2"];
  [coderCopy encodeObject:self->_campaignId forKey:@"3"];
  [coderCopy encodeObject:self->_impressionId forKey:@"4"];
  [coderCopy encodeObject:self->_sourceAppAdamId forKey:@"5"];
  [coderCopy encodeObject:self->_attributionSignature forKey:@"6"];
  [coderCopy encodeObject:self->_sourceAppBundleId forKey:@"7"];
  [coderCopy encodeObject:self->_version forKey:@"8"];
  [coderCopy encodeObject:self->_timestamp forKey:@"9"];
  [coderCopy encodeObject:self->_fidelityType forKey:@"10"];
  [coderCopy encodeObject:self->_processName forKey:@"11"];
  [coderCopy encodeObject:self->_sourceIdentifier forKey:@"12"];
}

- (ASDImpressionParamsConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = ASDImpressionParamsConfig;
  v5 = [(ASDImpressionParamsConfig *)&v31 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"1"];
    appAdamId = v5->_appAdamId;
    v5->_appAdamId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"2"];
    adNetworkId = v5->_adNetworkId;
    v5->_adNetworkId = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"3"];
    campaignId = v5->_campaignId;
    v5->_campaignId = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"4"];
    impressionId = v5->_impressionId;
    v5->_impressionId = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"5"];
    sourceAppAdamId = v5->_sourceAppAdamId;
    v5->_sourceAppAdamId = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"6"];
    attributionSignature = v5->_attributionSignature;
    v5->_attributionSignature = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"7"];
    sourceAppBundleId = v5->_sourceAppBundleId;
    v5->_sourceAppBundleId = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"8"];
    version = v5->_version;
    v5->_version = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"9"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"10"];
    fidelityType = v5->_fidelityType;
    v5->_fidelityType = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"11"];
    processName = v5->_processName;
    v5->_processName = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"12"];
    sourceIdentifier = v5->_sourceIdentifier;
    v5->_sourceIdentifier = v28;
  }

  return v5;
}

@end