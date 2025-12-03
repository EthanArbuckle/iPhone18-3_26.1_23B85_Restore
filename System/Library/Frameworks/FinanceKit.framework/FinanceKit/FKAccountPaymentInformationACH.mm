@interface FKAccountPaymentInformationACH
- (BOOL)isEqual:(id)equal;
- (FKAccountPaymentInformationACH)initWithAccountNumber:(id)number routingNumber:(id)routingNumber;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation FKAccountPaymentInformationACH

- (FKAccountPaymentInformationACH)initWithAccountNumber:(id)number routingNumber:(id)routingNumber
{
  numberCopy = number;
  routingNumberCopy = routingNumber;
  v12.receiver = self;
  v12.super_class = FKAccountPaymentInformationACH;
  v9 = [(FKAccountPaymentInformationACH *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountNumber, number);
    objc_storeStrong(&v10->_routingNumber, routingNumber);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [FKAccountPaymentInformationACH alloc];
  v6 = [(NSString *)self->_accountNumber copyWithZone:zone];
  v7 = [(NSString *)self->_routingNumber copyWithZone:zone];
  v8 = [(FKAccountPaymentInformationACH *)v5 initWithAccountNumber:v6 routingNumber:v7];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    if (FKEqualObjects(self->_accountNumber, v6[1]))
    {
      v7 = FKEqualObjects(self->_routingNumber, v6[2]);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end