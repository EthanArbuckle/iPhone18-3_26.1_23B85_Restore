@interface FKAccountPaymentInformation
- (BOOL)isEqual:(id)a3;
- (FKAccountPaymentInformation)initWithAccountNumber:(id)a3 routingNumber:(id)a4;
- (FKAccountPaymentInformation)initWithAccountNumber:(id)a3 sortCode:(id)a4;
- (FKAccountPaymentInformation)initWithIBAN:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation FKAccountPaymentInformation

- (FKAccountPaymentInformation)initWithAccountNumber:(id)a3 routingNumber:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = FKAccountPaymentInformation;
  v8 = [(FKAccountPaymentInformation *)&v12 init];
  if (v8)
  {
    v9 = [[FKAccountPaymentInformationACH alloc] initWithAccountNumber:v6 routingNumber:v7];
    ach = v8->_ach;
    v8->_ach = v9;
  }

  return v8;
}

- (FKAccountPaymentInformation)initWithAccountNumber:(id)a3 sortCode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = FKAccountPaymentInformation;
  v8 = [(FKAccountPaymentInformation *)&v12 init];
  if (v8)
  {
    v9 = [[FKAccountPaymentInformationSCAN alloc] initWithAccountNumber:v6 sortCode:v7];
    scan = v8->_scan;
    v8->_scan = v9;
  }

  return v8;
}

- (FKAccountPaymentInformation)initWithIBAN:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FKAccountPaymentInformation;
  v5 = [(FKAccountPaymentInformation *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    iban = v5->_iban;
    v5->_iban = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  if (self->_ach)
  {
    v4 = [FKAccountPaymentInformation alloc];
    v5 = [(FKAccountPaymentInformationACH *)self->_ach accountNumber];
    v6 = [(FKAccountPaymentInformationACH *)self->_ach routingNumber];
    v7 = [(FKAccountPaymentInformation *)v4 initWithAccountNumber:v5 routingNumber:v6];
LABEL_5:
    v11 = v7;

    return v11;
  }

  scan = self->_scan;
  v9 = [FKAccountPaymentInformation alloc];
  v10 = v9;
  if (scan)
  {
    v5 = [(FKAccountPaymentInformationSCAN *)self->_scan accountNumber];
    v6 = [(FKAccountPaymentInformationSCAN *)self->_scan sortCode];
    v7 = [(FKAccountPaymentInformation *)v10 initWithAccountNumber:v5 sortCode:v6];
    goto LABEL_5;
  }

  iban = self->_iban;

  return [(FKAccountPaymentInformation *)v9 initWithIBAN:iban];
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
    if (FKEqualObjects(self->_ach, v6[1]) && FKEqualObjects(self->_scan, v6[2]))
    {
      v7 = FKEqualObjects(self->_iban, v6[3]);
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