@interface CLMiLoServiceStatus
- (CLMiLoServiceStatus)initWithCoder:(id)a3;
- (CLMiLoServiceStatus)initWithServiceState:(unint64_t)a3 suspendReasons:(id)a4 serviceDescriptor:(id)a5 currentLocationOfInterestUuid:(id)a6 currentLocationOfInterestType:(id)a7 error:(id)a8 serviceQualityInfo:(id)a9 places:(id)a10 metaInfo:(id)a11;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLMiLoServiceStatus

- (CLMiLoServiceStatus)initWithServiceState:(unint64_t)a3 suspendReasons:(id)a4 serviceDescriptor:(id)a5 currentLocationOfInterestUuid:(id)a6 currentLocationOfInterestType:(id)a7 error:(id)a8 serviceQualityInfo:(id)a9 places:(id)a10 metaInfo:(id)a11
{
  v20.receiver = self;
  v20.super_class = CLMiLoServiceStatus;
  v17 = [(CLMiLoServiceStatus *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_serviceState = a3;
    v17->_serviceSuspendReasons = a4;
    v18->_serviceDescriptor = a5;
    v18->_currentLocationOfInterestUuid = [a6 copy];
    v18->_currentLocationOfInterestType = a7;
    v18->_error = a8;
    v18->_serviceQualityInfo = a9;
    v18->_places = a10;
    v18->_metaInfo = a11;
  }

  return v18;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoServiceStatus;
  [(CLMiLoServiceStatus *)&v3 dealloc];
}

- (CLMiLoServiceStatus)initWithCoder:(id)a3
{
  v16 = [a3 decodeIntegerForKey:@"kCLMiLoConnectionCodingKeyServiceState"];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [a3 decodeObjectOfClasses:objc_msgSend(v4 forKey:{"setWithObjects:", v5, objc_opt_class(), 0), @"kCLMiLoConnectionCodingKeyServiceSuspendReasons"}];
  v7 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyServiceDescriptor"];
  v8 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyCurrentLocationOfInterestUuid"];
  v9 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyCurrentLocationOfInterestType"];
  v10 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyServiceError"];
  v11 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyServiceQualityInfo"];
  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = [a3 decodeObjectOfClasses:objc_msgSend(v12 forKey:{"setWithObjects:", v13, objc_opt_class(), 0), @"kCLMiLoConnectionCodingKeyPlaces"}];
  return -[CLMiLoServiceStatus initWithServiceState:suspendReasons:serviceDescriptor:currentLocationOfInterestUuid:currentLocationOfInterestType:error:serviceQualityInfo:places:metaInfo:](self, "initWithServiceState:suspendReasons:serviceDescriptor:currentLocationOfInterestUuid:currentLocationOfInterestType:error:serviceQualityInfo:places:metaInfo:", v16, v6, v7, v8, v9, v10, v11, v14, [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyServiceMetaInfo"]);
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInteger:self->_serviceState forKey:@"kCLMiLoConnectionCodingKeyServiceState"];
  [a3 encodeObject:self->_serviceSuspendReasons forKey:@"kCLMiLoConnectionCodingKeyServiceSuspendReasons"];
  [a3 encodeObject:self->_serviceDescriptor forKey:@"kCLMiLoConnectionCodingKeyServiceDescriptor"];
  [a3 encodeObject:self->_currentLocationOfInterestUuid forKey:@"kCLMiLoConnectionCodingKeyCurrentLocationOfInterestUuid"];
  [a3 encodeObject:self->_currentLocationOfInterestType forKey:@"kCLMiLoConnectionCodingKeyCurrentLocationOfInterestType"];
  [a3 encodeObject:self->_error forKey:@"kCLMiLoConnectionCodingKeyServiceError"];
  [a3 encodeObject:self->_serviceQualityInfo forKey:@"kCLMiLoConnectionCodingKeyServiceQualityInfo"];
  [a3 encodeObject:self->_places forKey:@"kCLMiLoConnectionCodingKeyPlaces"];
  metaInfo = self->_metaInfo;

  [a3 encodeObject:metaInfo forKey:@"kCLMiLoConnectionCodingKeyServiceMetaInfo"];
}

@end