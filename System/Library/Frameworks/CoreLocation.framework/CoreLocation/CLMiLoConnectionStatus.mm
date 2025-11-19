@interface CLMiLoConnectionStatus
- (CLMiLoConnectionStatus)initWithCoder:(id)a3;
- (CLMiLoConnectionStatus)initWithConnectionState:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CLMiLoConnectionStatus

- (CLMiLoConnectionStatus)initWithConnectionState:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = CLMiLoConnectionStatus;
  result = [(CLMiLoConnectionStatus *)&v5 init];
  if (result)
  {
    result->_connectionState = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  connectionState = self->_connectionState;

  return MEMORY[0x1EEE66B58](v4, sel_initWithConnectionState_);
}

- (CLMiLoConnectionStatus)initWithCoder:(id)a3
{
  [a3 decodeIntegerForKey:@"kCLMiLoConnectionCodingKeyConnectionState"];

  return MEMORY[0x1EEE66B58](self, sel_initWithConnectionState_);
}

@end