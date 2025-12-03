@interface CLMiLoServiceQualityReason
- (CLMiLoServiceQualityReason)initWithCoder:(id)coder;
- (CLMiLoServiceQualityReason)initWithQualityReasonEnum:(unint64_t)enum;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CLMiLoServiceQualityReason

- (CLMiLoServiceQualityReason)initWithQualityReasonEnum:(unint64_t)enum
{
  v5.receiver = self;
  v5.super_class = CLMiLoServiceQualityReason;
  result = [(CLMiLoServiceQualityReason *)&v5 init];
  if (result)
  {
    result->_qualityReasonEnum = enum;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  qualityReasonEnum = self->_qualityReasonEnum;

  return MEMORY[0x1EEE66B58](v4, sel_initWithQualityReasonEnum_);
}

- (CLMiLoServiceQualityReason)initWithCoder:(id)coder
{
  [coder decodeIntegerForKey:@"kCLMiLoConnectionCodingKeyServiceQualityReason"];

  return MEMORY[0x1EEE66B58](self, sel_initWithQualityReasonEnum_);
}

@end