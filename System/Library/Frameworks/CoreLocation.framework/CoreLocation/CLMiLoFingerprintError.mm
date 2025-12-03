@interface CLMiLoFingerprintError
- (CLMiLoFingerprintError)initWithCoder:(id)coder;
- (CLMiLoFingerprintError)initWithFingerprintErrorEnum:(unint64_t)enum;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CLMiLoFingerprintError

- (CLMiLoFingerprintError)initWithFingerprintErrorEnum:(unint64_t)enum
{
  v5.receiver = self;
  v5.super_class = CLMiLoFingerprintError;
  result = [(CLMiLoFingerprintError *)&v5 init];
  if (result)
  {
    result->_fingerprintErrorEnum = enum;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  fingerprintErrorEnum = self->_fingerprintErrorEnum;

  return MEMORY[0x1EEE66B58](v4, sel_initWithFingerprintErrorEnum_);
}

- (CLMiLoFingerprintError)initWithCoder:(id)coder
{
  [coder decodeIntegerForKey:@"kCLMiLoConnectionCodingKeyFingerprintErrorEnum"];

  return MEMORY[0x1EEE66B58](self, sel_initWithFingerprintErrorEnum_);
}

@end