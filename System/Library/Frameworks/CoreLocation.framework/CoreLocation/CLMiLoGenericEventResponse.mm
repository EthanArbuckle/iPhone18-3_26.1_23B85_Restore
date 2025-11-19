@interface CLMiLoGenericEventResponse
- (CLMiLoGenericEventResponse)initWithCoder:(id)a3;
- (CLMiLoGenericEventResponse)initWithEventType:(unint64_t)a3 withDescription:(id)a4 withError:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLMiLoGenericEventResponse

- (CLMiLoGenericEventResponse)initWithEventType:(unint64_t)a3 withDescription:(id)a4 withError:(id)a5
{
  v11.receiver = self;
  v11.super_class = CLMiLoGenericEventResponse;
  v8 = [(CLMiLoGenericEventResponse *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_eventType = a3;
    v8->_genericEventDescription = a4;
    v9->_error = a5;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoGenericEventResponse;
  [(CLMiLoGenericEventResponse *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  eventType = self->_eventType;
  genericEventDescription = self->_genericEventDescription;
  error = self->_error;

  return MEMORY[0x1EEE66B58](v4, sel_initWithEventType_withDescription_withError_);
}

- (CLMiLoGenericEventResponse)initWithCoder:(id)a3
{
  [a3 decodeIntegerForKey:@"kCLMiLoConnectionCodingKeyGenericEventType"];
  [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyGenericEventDescription"];
  [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyGenericEventError"];

  return MEMORY[0x1EEE66B58](self, sel_initWithEventType_withDescription_withError_);
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInteger:self->_eventType forKey:@"kCLMiLoConnectionCodingKeyGenericEventType"];
  [a3 encodeObject:self->_genericEventDescription forKey:@"kCLMiLoConnectionCodingKeyGenericEventDescription"];
  error = self->_error;

  [a3 encodeObject:error forKey:@"kCLMiLoConnectionCodingKeyGenericEventError"];
}

@end