@interface CLMiLoFingerprintMetaInfo
- (CLMiLoFingerprintMetaInfo)initWithCoder:(id)a3;
- (CLMiLoFingerprintMetaInfo)initWithNumWiFiAccessPoints:(id)a3 numBLESources:(id)a4 numUWBSources:(id)a5 requestIdentifier:(id)a6 errors:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLMiLoFingerprintMetaInfo

- (CLMiLoFingerprintMetaInfo)initWithNumWiFiAccessPoints:(id)a3 numBLESources:(id)a4 numUWBSources:(id)a5 requestIdentifier:(id)a6 errors:(id)a7
{
  v14.receiver = self;
  v14.super_class = CLMiLoFingerprintMetaInfo;
  v12 = [(CLMiLoFingerprintMetaInfo *)&v14 init];
  if (v12)
  {
    v12->_numberOfWiFiAccessPoints = [a3 copy];
    v12->_numberOfBLESources = [a4 copy];
    v12->_numberOfUWBSources = [a5 copy];
    v12->_requestIdentifier = [a6 copy];
    v12->_errors = a7;
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoFingerprintMetaInfo;
  [(CLMiLoFingerprintMetaInfo *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  numberOfWiFiAccessPoints = self->_numberOfWiFiAccessPoints;
  numberOfBLESources = self->_numberOfBLESources;
  numberOfUWBSources = self->_numberOfUWBSources;
  requestIdentifier = self->_requestIdentifier;
  errors = self->_errors;

  return MEMORY[0x1EEE66B58](v4, sel_initWithNumWiFiAccessPoints_numBLESources_numUWBSources_requestIdentifier_errors_);
}

- (CLMiLoFingerprintMetaInfo)initWithCoder:(id)a3
{
  [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyNumberOfWiFiAccessPoints"];
  [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyNumberOfBLESources"];
  [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyNumberOfUWBSources"];
  [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyObservationMetaInfoRequestIdentifier"];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"kCLMiLoConnectionCodingKeyFingerprintErrors"}];

  return MEMORY[0x1EEE66B58](self, sel_initWithNumWiFiAccessPoints_numBLESources_numUWBSources_requestIdentifier_errors_);
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_numberOfWiFiAccessPoints forKey:@"kCLMiLoConnectionCodingKeyNumberOfWiFiAccessPoints"];
  [a3 encodeObject:self->_numberOfBLESources forKey:@"kCLMiLoConnectionCodingKeyNumberOfBLESources"];
  [a3 encodeObject:self->_numberOfUWBSources forKey:@"kCLMiLoConnectionCodingKeyNumberOfUWBSources"];
  [a3 encodeObject:self->_requestIdentifier forKey:@"kCLMiLoConnectionCodingKeyObservationMetaInfoRequestIdentifier"];
  errors = self->_errors;

  [a3 encodeObject:errors forKey:@"kCLMiLoConnectionCodingKeyFingerprintErrors"];
}

@end