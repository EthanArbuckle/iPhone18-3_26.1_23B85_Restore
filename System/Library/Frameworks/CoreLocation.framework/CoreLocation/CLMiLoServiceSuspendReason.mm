@interface CLMiLoServiceSuspendReason
- (CLMiLoServiceSuspendReason)initWithCoder:(id)coder;
- (CLMiLoServiceSuspendReason)initWithSuspendReasonEnum:(unint64_t)enum;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CLMiLoServiceSuspendReason

- (CLMiLoServiceSuspendReason)initWithSuspendReasonEnum:(unint64_t)enum
{
  v5.receiver = self;
  v5.super_class = CLMiLoServiceSuspendReason;
  result = [(CLMiLoServiceSuspendReason *)&v5 init];
  if (result)
  {
    result->_suspendReasonEnum = enum;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  suspendReasonEnum = self->_suspendReasonEnum;

  return MEMORY[0x1EEE66B58](v4, sel_initWithSuspendReasonEnum_);
}

- (CLMiLoServiceSuspendReason)initWithCoder:(id)coder
{
  [coder decodeIntegerForKey:@"kCLMiLoConnectionCodingKeyServiceSuspendReason"];

  return MEMORY[0x1EEE66B58](self, sel_initWithSuspendReasonEnum_);
}

@end