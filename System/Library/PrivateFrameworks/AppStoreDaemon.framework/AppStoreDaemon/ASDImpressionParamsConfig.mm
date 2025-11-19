@interface ASDImpressionParamsConfig
- (ASDImpressionParamsConfig)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDImpressionParamsConfig

- (void)encodeWithCoder:(id)a3
{
  appAdamId = self->_appAdamId;
  v5 = a3;
  [v5 encodeObject:appAdamId forKey:@"1"];
  [v5 encodeObject:self->_adNetworkId forKey:@"2"];
  [v5 encodeObject:self->_campaignId forKey:@"3"];
  [v5 encodeObject:self->_impressionId forKey:@"4"];
  [v5 encodeObject:self->_sourceAppAdamId forKey:@"5"];
  [v5 encodeObject:self->_attributionSignature forKey:@"6"];
  [v5 encodeObject:self->_sourceAppBundleId forKey:@"7"];
  [v5 encodeObject:self->_version forKey:@"8"];
  [v5 encodeObject:self->_timestamp forKey:@"9"];
  [v5 encodeObject:self->_fidelityType forKey:@"10"];
  [v5 encodeObject:self->_processName forKey:@"11"];
  [v5 encodeObject:self->_sourceIdentifier forKey:@"12"];
}

- (ASDImpressionParamsConfig)initWithCoder:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = ASDImpressionParamsConfig;
  v5 = [(ASDImpressionParamsConfig *)&v31 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"1"];
    appAdamId = v5->_appAdamId;
    v5->_appAdamId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"2"];
    adNetworkId = v5->_adNetworkId;
    v5->_adNetworkId = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"3"];
    campaignId = v5->_campaignId;
    v5->_campaignId = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"4"];
    impressionId = v5->_impressionId;
    v5->_impressionId = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"5"];
    sourceAppAdamId = v5->_sourceAppAdamId;
    v5->_sourceAppAdamId = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"6"];
    attributionSignature = v5->_attributionSignature;
    v5->_attributionSignature = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"7"];
    sourceAppBundleId = v5->_sourceAppBundleId;
    v5->_sourceAppBundleId = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"8"];
    version = v5->_version;
    v5->_version = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"9"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"10"];
    fidelityType = v5->_fidelityType;
    v5->_fidelityType = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"11"];
    processName = v5->_processName;
    v5->_processName = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"12"];
    sourceIdentifier = v5->_sourceIdentifier;
    v5->_sourceIdentifier = v28;
  }

  return v5;
}

@end