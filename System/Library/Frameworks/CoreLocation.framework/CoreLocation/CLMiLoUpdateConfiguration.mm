@interface CLMiLoUpdateConfiguration
- (CLMiLoUpdateConfiguration)initWithCoder:(id)coder;
- (CLMiLoUpdateConfiguration)initWithIsLowLatency:(BOOL)latency;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CLMiLoUpdateConfiguration

- (CLMiLoUpdateConfiguration)initWithIsLowLatency:(BOOL)latency
{
  v5.receiver = self;
  v5.super_class = CLMiLoUpdateConfiguration;
  result = [(CLMiLoUpdateConfiguration *)&v5 init];
  if (result)
  {
    result->_isLowLatency = latency;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  isLowLatency = self->_isLowLatency;

  return MEMORY[0x1EEE66B58](v4, sel_initWithIsLowLatency_);
}

- (CLMiLoUpdateConfiguration)initWithCoder:(id)coder
{
  [coder decodeBoolForKey:@"kCLMiLoConnectionCodingKeySessionIsLowLatency"];

  return MEMORY[0x1EEE66B58](self, sel_initWithIsLowLatency_);
}

@end