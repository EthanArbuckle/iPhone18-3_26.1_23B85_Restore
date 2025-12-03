@interface CLMiLoPlaceConfidenceReason
- (CLMiLoPlaceConfidenceReason)initWithCoder:(id)coder;
- (CLMiLoPlaceConfidenceReason)initWithConfidenceReasonEnum:(unint64_t)enum;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CLMiLoPlaceConfidenceReason

- (CLMiLoPlaceConfidenceReason)initWithConfidenceReasonEnum:(unint64_t)enum
{
  v5.receiver = self;
  v5.super_class = CLMiLoPlaceConfidenceReason;
  result = [(CLMiLoPlaceConfidenceReason *)&v5 init];
  if (result)
  {
    result->_confidenceReasonEnum = enum;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  confidenceReasonEnum = self->_confidenceReasonEnum;

  return MEMORY[0x1EEE66B58](v4, sel_initWithConfidenceReasonEnum_);
}

- (CLMiLoPlaceConfidenceReason)initWithCoder:(id)coder
{
  [coder decodeIntegerForKey:@"kCLMiLoConnectionCodingKeyPlaceConfidenceReasonEnum"];

  return MEMORY[0x1EEE66B58](self, sel_initWithConfidenceReasonEnum_);
}

@end