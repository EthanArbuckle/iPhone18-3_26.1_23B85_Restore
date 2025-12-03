@interface CLMiLoConnectionStatus
- (CLMiLoConnectionStatus)initWithCoder:(id)coder;
- (CLMiLoConnectionStatus)initWithConnectionState:(unint64_t)state;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CLMiLoConnectionStatus

- (CLMiLoConnectionStatus)initWithConnectionState:(unint64_t)state
{
  v5.receiver = self;
  v5.super_class = CLMiLoConnectionStatus;
  result = [(CLMiLoConnectionStatus *)&v5 init];
  if (result)
  {
    result->_connectionState = state;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  connectionState = self->_connectionState;

  return MEMORY[0x1EEE66B58](v4, sel_initWithConnectionState_);
}

- (CLMiLoConnectionStatus)initWithCoder:(id)coder
{
  [coder decodeIntegerForKey:@"kCLMiLoConnectionCodingKeyConnectionState"];

  return MEMORY[0x1EEE66B58](self, sel_initWithConnectionState_);
}

@end