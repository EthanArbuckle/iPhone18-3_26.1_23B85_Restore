@interface CLMiLoUpdateConfiguration
- (CLMiLoUpdateConfiguration)initWithCoder:(id)a3;
- (CLMiLoUpdateConfiguration)initWithIsLowLatency:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CLMiLoUpdateConfiguration

- (CLMiLoUpdateConfiguration)initWithIsLowLatency:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CLMiLoUpdateConfiguration;
  result = [(CLMiLoUpdateConfiguration *)&v5 init];
  if (result)
  {
    result->_isLowLatency = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  isLowLatency = self->_isLowLatency;

  return MEMORY[0x1EEE66B58](v4, sel_initWithIsLowLatency_);
}

- (CLMiLoUpdateConfiguration)initWithCoder:(id)a3
{
  [a3 decodeBoolForKey:@"kCLMiLoConnectionCodingKeySessionIsLowLatency"];

  return MEMORY[0x1EEE66B58](self, sel_initWithIsLowLatency_);
}

@end