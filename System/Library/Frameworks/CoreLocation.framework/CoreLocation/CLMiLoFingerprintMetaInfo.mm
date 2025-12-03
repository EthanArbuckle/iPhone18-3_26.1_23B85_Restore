@interface CLMiLoFingerprintMetaInfo
- (CLMiLoFingerprintMetaInfo)initWithCoder:(id)coder;
- (CLMiLoFingerprintMetaInfo)initWithNumWiFiAccessPoints:(id)points numBLESources:(id)sources numUWBSources:(id)bSources requestIdentifier:(id)identifier errors:(id)errors;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLMiLoFingerprintMetaInfo

- (CLMiLoFingerprintMetaInfo)initWithNumWiFiAccessPoints:(id)points numBLESources:(id)sources numUWBSources:(id)bSources requestIdentifier:(id)identifier errors:(id)errors
{
  v14.receiver = self;
  v14.super_class = CLMiLoFingerprintMetaInfo;
  v12 = [(CLMiLoFingerprintMetaInfo *)&v14 init];
  if (v12)
  {
    v12->_numberOfWiFiAccessPoints = [points copy];
    v12->_numberOfBLESources = [sources copy];
    v12->_numberOfUWBSources = [bSources copy];
    v12->_requestIdentifier = [identifier copy];
    v12->_errors = errors;
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoFingerprintMetaInfo;
  [(CLMiLoFingerprintMetaInfo *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  numberOfWiFiAccessPoints = self->_numberOfWiFiAccessPoints;
  numberOfBLESources = self->_numberOfBLESources;
  numberOfUWBSources = self->_numberOfUWBSources;
  requestIdentifier = self->_requestIdentifier;
  errors = self->_errors;

  return MEMORY[0x1EEE66B58](v4, sel_initWithNumWiFiAccessPoints_numBLESources_numUWBSources_requestIdentifier_errors_);
}

- (CLMiLoFingerprintMetaInfo)initWithCoder:(id)coder
{
  [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyNumberOfWiFiAccessPoints"];
  [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyNumberOfBLESources"];
  [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyNumberOfUWBSources"];
  [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyObservationMetaInfoRequestIdentifier"];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"kCLMiLoConnectionCodingKeyFingerprintErrors"}];

  return MEMORY[0x1EEE66B58](self, sel_initWithNumWiFiAccessPoints_numBLESources_numUWBSources_requestIdentifier_errors_);
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_numberOfWiFiAccessPoints forKey:@"kCLMiLoConnectionCodingKeyNumberOfWiFiAccessPoints"];
  [coder encodeObject:self->_numberOfBLESources forKey:@"kCLMiLoConnectionCodingKeyNumberOfBLESources"];
  [coder encodeObject:self->_numberOfUWBSources forKey:@"kCLMiLoConnectionCodingKeyNumberOfUWBSources"];
  [coder encodeObject:self->_requestIdentifier forKey:@"kCLMiLoConnectionCodingKeyObservationMetaInfoRequestIdentifier"];
  errors = self->_errors;

  [coder encodeObject:errors forKey:@"kCLMiLoConnectionCodingKeyFingerprintErrors"];
}

@end