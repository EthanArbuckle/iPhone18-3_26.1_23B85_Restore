@interface CLMiLoServiceStatus
- (CLMiLoServiceStatus)initWithCoder:(id)coder;
- (CLMiLoServiceStatus)initWithServiceState:(unint64_t)state suspendReasons:(id)reasons serviceDescriptor:(id)descriptor currentLocationOfInterestUuid:(id)uuid currentLocationOfInterestType:(id)type error:(id)error serviceQualityInfo:(id)info places:(id)self0 metaInfo:(id)self1;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLMiLoServiceStatus

- (CLMiLoServiceStatus)initWithServiceState:(unint64_t)state suspendReasons:(id)reasons serviceDescriptor:(id)descriptor currentLocationOfInterestUuid:(id)uuid currentLocationOfInterestType:(id)type error:(id)error serviceQualityInfo:(id)info places:(id)self0 metaInfo:(id)self1
{
  v20.receiver = self;
  v20.super_class = CLMiLoServiceStatus;
  v17 = [(CLMiLoServiceStatus *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_serviceState = state;
    v17->_serviceSuspendReasons = reasons;
    v18->_serviceDescriptor = descriptor;
    v18->_currentLocationOfInterestUuid = [uuid copy];
    v18->_currentLocationOfInterestType = type;
    v18->_error = error;
    v18->_serviceQualityInfo = info;
    v18->_places = places;
    v18->_metaInfo = metaInfo;
  }

  return v18;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoServiceStatus;
  [(CLMiLoServiceStatus *)&v3 dealloc];
}

- (CLMiLoServiceStatus)initWithCoder:(id)coder
{
  v16 = [coder decodeIntegerForKey:@"kCLMiLoConnectionCodingKeyServiceState"];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [coder decodeObjectOfClasses:objc_msgSend(v4 forKey:{"setWithObjects:", v5, objc_opt_class(), 0), @"kCLMiLoConnectionCodingKeyServiceSuspendReasons"}];
  v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyServiceDescriptor"];
  v8 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyCurrentLocationOfInterestUuid"];
  v9 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyCurrentLocationOfInterestType"];
  v10 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyServiceError"];
  v11 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyServiceQualityInfo"];
  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = [coder decodeObjectOfClasses:objc_msgSend(v12 forKey:{"setWithObjects:", v13, objc_opt_class(), 0), @"kCLMiLoConnectionCodingKeyPlaces"}];
  return -[CLMiLoServiceStatus initWithServiceState:suspendReasons:serviceDescriptor:currentLocationOfInterestUuid:currentLocationOfInterestType:error:serviceQualityInfo:places:metaInfo:](self, "initWithServiceState:suspendReasons:serviceDescriptor:currentLocationOfInterestUuid:currentLocationOfInterestType:error:serviceQualityInfo:places:metaInfo:", v16, v6, v7, v8, v9, v10, v11, v14, [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyServiceMetaInfo"]);
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInteger:self->_serviceState forKey:@"kCLMiLoConnectionCodingKeyServiceState"];
  [coder encodeObject:self->_serviceSuspendReasons forKey:@"kCLMiLoConnectionCodingKeyServiceSuspendReasons"];
  [coder encodeObject:self->_serviceDescriptor forKey:@"kCLMiLoConnectionCodingKeyServiceDescriptor"];
  [coder encodeObject:self->_currentLocationOfInterestUuid forKey:@"kCLMiLoConnectionCodingKeyCurrentLocationOfInterestUuid"];
  [coder encodeObject:self->_currentLocationOfInterestType forKey:@"kCLMiLoConnectionCodingKeyCurrentLocationOfInterestType"];
  [coder encodeObject:self->_error forKey:@"kCLMiLoConnectionCodingKeyServiceError"];
  [coder encodeObject:self->_serviceQualityInfo forKey:@"kCLMiLoConnectionCodingKeyServiceQualityInfo"];
  [coder encodeObject:self->_places forKey:@"kCLMiLoConnectionCodingKeyPlaces"];
  metaInfo = self->_metaInfo;

  [coder encodeObject:metaInfo forKey:@"kCLMiLoConnectionCodingKeyServiceMetaInfo"];
}

@end