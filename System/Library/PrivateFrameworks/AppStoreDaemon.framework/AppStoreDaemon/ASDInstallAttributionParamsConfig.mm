@interface ASDInstallAttributionParamsConfig
+ (id)paramsFromDictionary:(id)dictionary;
- (ASDInstallAttributionParamsConfig)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDInstallAttributionParamsConfig

- (void)encodeWithCoder:(id)coder
{
  appAdamId = self->_appAdamId;
  coderCopy = coder;
  [coderCopy encodeObject:appAdamId forKey:@"1"];
  [coderCopy encodeObject:self->_adNetworkId forKey:@"2"];
  [coderCopy encodeObject:self->_campaignId forKey:@"3"];
  [coderCopy encodeObject:self->_impressionId forKey:@"4"];
  [coderCopy encodeObject:self->_sourceAppAdamId forKey:@"5"];
  [coderCopy encodeObject:self->_timestamp forKey:@"6"];
  [coderCopy encodeObject:self->_attributionSignature forKey:@"7"];
  [coderCopy encodeObject:self->_sourceAppBundleId forKey:@"8"];
  [coderCopy encodeBool:self->_overrideCampaignLimit forKey:@"9"];
  [coderCopy encodeObject:self->_version forKey:@"10"];
  [coderCopy encodeObject:self->_sourceIdentifier forKey:@"11"];
  [coderCopy encodeObject:self->_interactionType forKey:@"12"];
}

- (ASDInstallAttributionParamsConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = ASDInstallAttributionParamsConfig;
  v5 = [(ASDInstallAttributionParamsConfig *)&v29 init];
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
    timestamp = v5->_timestamp;
    v5->_timestamp = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"7"];
    attributionSignature = v5->_attributionSignature;
    v5->_attributionSignature = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"8"];
    sourceAppBundleId = v5->_sourceAppBundleId;
    v5->_sourceAppBundleId = v20;

    v5->_overrideCampaignLimit = [coderCopy decodeBoolForKey:@"9"];
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"10"];
    version = v5->_version;
    v5->_version = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"11"];
    sourceIdentifier = v5->_sourceIdentifier;
    v5->_sourceIdentifier = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"12"];
    interactionType = v5->_interactionType;
    v5->_interactionType = v26;
  }

  return v5;
}

+ (id)paramsFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_opt_new();
  v5 = [dictionaryCopy objectForKeyedSubscript:@"adNetworkAttributionSignature"];
  [v4 setAttributionSignature:v5];

  v6 = [dictionaryCopy objectForKeyedSubscript:@"adNetworkCampaignId"];
  [v4 setCampaignId:v6];

  v7 = [dictionaryCopy objectForKeyedSubscript:@"adNetworkId"];
  [v4 setAdNetworkId:v7];

  v8 = [dictionaryCopy objectForKeyedSubscript:@"adNetworkNonce"];
  [v4 setImpressionId:v8];

  v9 = [dictionaryCopy objectForKeyedSubscript:@"adNetworkImpressionTimestamp"];
  [v4 setTimestamp:v9];

  v10 = [dictionaryCopy objectForKeyedSubscript:@"adNetworkSourceAppStoreIdentifier"];
  [v4 setSourceAppAdamId:v10];

  v11 = [dictionaryCopy objectForKeyedSubscript:@"adNetworkPayloadVersion"];
  [v4 setVersion:v11];

  v12 = [dictionaryCopy objectForKeyedSubscript:@"id"];
  [v4 setAppAdamId:v12];

  v13 = [dictionaryCopy objectForKeyedSubscript:@"sourceIdentifier"];

  [v4 setSourceIdentifier:v13];

  return v4;
}

@end