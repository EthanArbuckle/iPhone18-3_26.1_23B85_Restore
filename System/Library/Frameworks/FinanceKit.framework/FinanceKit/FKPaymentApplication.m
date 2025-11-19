@interface FKPaymentApplication
- (BOOL)isEqual:(id)a3;
- (FKPaymentApplication)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation FKPaymentApplication

- (FKPaymentApplication)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = FKPaymentApplication;
  v5 = [(FKPaymentApplication *)&v7 init];
  if (v5)
  {
    v5->_paymentType = [v4 decodeIntegerForKey:@"paymentType"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = objc_alloc_init(FKPaymentApplication);
  *(result + 1) = self->_paymentType;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_paymentType == v5->_paymentType;
  }

  return v6;
}

@end