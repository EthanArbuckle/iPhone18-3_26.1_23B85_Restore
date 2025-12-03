@interface CLMiLoGenericEventResponse
- (CLMiLoGenericEventResponse)initWithCoder:(id)coder;
- (CLMiLoGenericEventResponse)initWithEventType:(unint64_t)type withDescription:(id)description withError:(id)error;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLMiLoGenericEventResponse

- (CLMiLoGenericEventResponse)initWithEventType:(unint64_t)type withDescription:(id)description withError:(id)error
{
  v11.receiver = self;
  v11.super_class = CLMiLoGenericEventResponse;
  v8 = [(CLMiLoGenericEventResponse *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_eventType = type;
    v8->_genericEventDescription = description;
    v9->_error = error;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoGenericEventResponse;
  [(CLMiLoGenericEventResponse *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  eventType = self->_eventType;
  genericEventDescription = self->_genericEventDescription;
  error = self->_error;

  return MEMORY[0x1EEE66B58](v4, sel_initWithEventType_withDescription_withError_);
}

- (CLMiLoGenericEventResponse)initWithCoder:(id)coder
{
  [coder decodeIntegerForKey:@"kCLMiLoConnectionCodingKeyGenericEventType"];
  [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyGenericEventDescription"];
  [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyGenericEventError"];

  return MEMORY[0x1EEE66B58](self, sel_initWithEventType_withDescription_withError_);
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInteger:self->_eventType forKey:@"kCLMiLoConnectionCodingKeyGenericEventType"];
  [coder encodeObject:self->_genericEventDescription forKey:@"kCLMiLoConnectionCodingKeyGenericEventDescription"];
  error = self->_error;

  [coder encodeObject:error forKey:@"kCLMiLoConnectionCodingKeyGenericEventError"];
}

@end