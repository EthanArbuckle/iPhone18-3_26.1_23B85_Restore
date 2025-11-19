@interface CLMiLoServiceQualityReason
- (CLMiLoServiceQualityReason)initWithCoder:(id)a3;
- (CLMiLoServiceQualityReason)initWithQualityReasonEnum:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CLMiLoServiceQualityReason

- (CLMiLoServiceQualityReason)initWithQualityReasonEnum:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = CLMiLoServiceQualityReason;
  result = [(CLMiLoServiceQualityReason *)&v5 init];
  if (result)
  {
    result->_qualityReasonEnum = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  qualityReasonEnum = self->_qualityReasonEnum;

  return MEMORY[0x1EEE66B58](v4, sel_initWithQualityReasonEnum_);
}

- (CLMiLoServiceQualityReason)initWithCoder:(id)a3
{
  [a3 decodeIntegerForKey:@"kCLMiLoConnectionCodingKeyServiceQualityReason"];

  return MEMORY[0x1EEE66B58](self, sel_initWithQualityReasonEnum_);
}

@end