@interface FKPaymentApplication
- (BOOL)isEqual:(id)equal;
- (FKPaymentApplication)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation FKPaymentApplication

- (FKPaymentApplication)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = FKPaymentApplication;
  v5 = [(FKPaymentApplication *)&v7 init];
  if (v5)
  {
    v5->_paymentType = [coderCopy decodeIntegerForKey:@"paymentType"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = objc_alloc_init(FKPaymentApplication);
  *(result + 1) = self->_paymentType;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_paymentType == v5->_paymentType;
  }

  return v6;
}

@end