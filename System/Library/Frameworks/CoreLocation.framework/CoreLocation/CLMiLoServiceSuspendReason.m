@interface CLMiLoServiceSuspendReason
- (CLMiLoServiceSuspendReason)initWithCoder:(id)a3;
- (CLMiLoServiceSuspendReason)initWithSuspendReasonEnum:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CLMiLoServiceSuspendReason

- (CLMiLoServiceSuspendReason)initWithSuspendReasonEnum:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = CLMiLoServiceSuspendReason;
  result = [(CLMiLoServiceSuspendReason *)&v5 init];
  if (result)
  {
    result->_suspendReasonEnum = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  suspendReasonEnum = self->_suspendReasonEnum;

  return MEMORY[0x1EEE66B58](v4, sel_initWithSuspendReasonEnum_);
}

- (CLMiLoServiceSuspendReason)initWithCoder:(id)a3
{
  [a3 decodeIntegerForKey:@"kCLMiLoConnectionCodingKeyServiceSuspendReason"];

  return MEMORY[0x1EEE66B58](self, sel_initWithSuspendReasonEnum_);
}

@end