@interface CLMiLoFingerprintError
- (CLMiLoFingerprintError)initWithCoder:(id)a3;
- (CLMiLoFingerprintError)initWithFingerprintErrorEnum:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CLMiLoFingerprintError

- (CLMiLoFingerprintError)initWithFingerprintErrorEnum:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = CLMiLoFingerprintError;
  result = [(CLMiLoFingerprintError *)&v5 init];
  if (result)
  {
    result->_fingerprintErrorEnum = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  fingerprintErrorEnum = self->_fingerprintErrorEnum;

  return MEMORY[0x1EEE66B58](v4, sel_initWithFingerprintErrorEnum_);
}

- (CLMiLoFingerprintError)initWithCoder:(id)a3
{
  [a3 decodeIntegerForKey:@"kCLMiLoConnectionCodingKeyFingerprintErrorEnum"];

  return MEMORY[0x1EEE66B58](self, sel_initWithFingerprintErrorEnum_);
}

@end