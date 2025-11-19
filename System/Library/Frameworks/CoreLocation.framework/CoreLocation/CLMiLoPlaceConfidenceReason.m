@interface CLMiLoPlaceConfidenceReason
- (CLMiLoPlaceConfidenceReason)initWithCoder:(id)a3;
- (CLMiLoPlaceConfidenceReason)initWithConfidenceReasonEnum:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CLMiLoPlaceConfidenceReason

- (CLMiLoPlaceConfidenceReason)initWithConfidenceReasonEnum:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = CLMiLoPlaceConfidenceReason;
  result = [(CLMiLoPlaceConfidenceReason *)&v5 init];
  if (result)
  {
    result->_confidenceReasonEnum = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  confidenceReasonEnum = self->_confidenceReasonEnum;

  return MEMORY[0x1EEE66B58](v4, sel_initWithConfidenceReasonEnum_);
}

- (CLMiLoPlaceConfidenceReason)initWithCoder:(id)a3
{
  [a3 decodeIntegerForKey:@"kCLMiLoConnectionCodingKeyPlaceConfidenceReasonEnum"];

  return MEMORY[0x1EEE66B58](self, sel_initWithConfidenceReasonEnum_);
}

@end