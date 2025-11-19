@interface FKAccountPaymentInformationACH
- (BOOL)isEqual:(id)a3;
- (FKAccountPaymentInformationACH)initWithAccountNumber:(id)a3 routingNumber:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation FKAccountPaymentInformationACH

- (FKAccountPaymentInformationACH)initWithAccountNumber:(id)a3 routingNumber:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FKAccountPaymentInformationACH;
  v9 = [(FKAccountPaymentInformationACH *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountNumber, a3);
    objc_storeStrong(&v10->_routingNumber, a4);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [FKAccountPaymentInformationACH alloc];
  v6 = [(NSString *)self->_accountNumber copyWithZone:a3];
  v7 = [(NSString *)self->_routingNumber copyWithZone:a3];
  v8 = [(FKAccountPaymentInformationACH *)v5 initWithAccountNumber:v6 routingNumber:v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v7 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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