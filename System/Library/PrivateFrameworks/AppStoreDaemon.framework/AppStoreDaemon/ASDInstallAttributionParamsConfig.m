@interface ASDInstallAttributionParamsConfig
+ (id)paramsFromDictionary:(id)a3;
- (ASDInstallAttributionParamsConfig)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDInstallAttributionParamsConfig

- (void)encodeWithCoder:(id)a3
{
  appAdamId = self->_appAdamId;
  v5 = a3;
  [v5 encodeObject:appAdamId forKey:@"1"];
  [v5 encodeObject:self->_adNetworkId forKey:@"2"];
  [v5 encodeObject:self->_campaignId forKey:@"3"];
  [v5 encodeObject:self->_impressionId forKey:@"4"];
  [v5 encodeObject:self->_sourceAppAdamId forKey:@"5"];
  [v5 encodeObject:self->_timestamp forKey:@"6"];
  [v5 encodeObject:self->_attributionSignature forKey:@"7"];
  [v5 encodeObject:self->_sourceAppBundleId forKey:@"8"];
  [v5 encodeBool:self->_overrideCampaignLimit forKey:@"9"];
  [v5 encodeObject:self->_version forKey:@"10"];
  [v5 encodeObject:self->_sourceIdentifier forKey:@"11"];
  [v5 encodeObject:self->_interactionType forKey:@"12"];
}

- (ASDInstallAttributionParamsConfig)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = ASDInstallAttributionParamsConfig;
  v5 = [(ASDInstallAttributionParamsConfig *)&v29 init];
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
    timestamp = v5->_timestamp;
    v5->_timestamp = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"7"];
    attributionSignature = v5->_attributionSignature;
    v5->_attributionSignature = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"8"];
    sourceAppBundleId = v5->_sourceAppBundleId;
    v5->_sourceAppBundleId = v20;

    v5->_overrideCampaignLimit = [v4 decodeBoolForKey:@"9"];
    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"10"];
    version = v5->_version;
    v5->_version = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"11"];
    sourceIdentifier = v5->_sourceIdentifier;
    v5->_sourceIdentifier = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"12"];
    interactionType = v5->_interactionType;
    v5->_interactionType = v26;
  }

  return v5;
}

+ (id)paramsFromDictionary:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 objectForKeyedSubscript:@"adNetworkAttributionSignature"];
  [v4 setAttributionSignature:v5];

  v6 = [v3 objectForKeyedSubscript:@"adNetworkCampaignId"];
  [v4 setCampaignId:v6];

  v7 = [v3 objectForKeyedSubscript:@"adNetworkId"];
  [v4 setAdNetworkId:v7];

  v8 = [v3 objectForKeyedSubscript:@"adNetworkNonce"];
  [v4 setImpressionId:v8];

  v9 = [v3 objectForKeyedSubscript:@"adNetworkImpressionTimestamp"];
  [v4 setTimestamp:v9];

  v10 = [v3 objectForKeyedSubscript:@"adNetworkSourceAppStoreIdentifier"];
  [v4 setSourceAppAdamId:v10];

  v11 = [v3 objectForKeyedSubscript:@"adNetworkPayloadVersion"];
  [v4 setVersion:v11];

  v12 = [v3 objectForKeyedSubscript:@"id"];
  [v4 setAppAdamId:v12];

  v13 = [v3 objectForKeyedSubscript:@"sourceIdentifier"];

  [v4 setSourceIdentifier:v13];

  return v4;
}

@end