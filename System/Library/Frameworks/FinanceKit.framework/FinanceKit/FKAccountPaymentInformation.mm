@interface FKAccountPaymentInformation
- (BOOL)isEqual:(id)equal;
- (FKAccountPaymentInformation)initWithAccountNumber:(id)number routingNumber:(id)routingNumber;
- (FKAccountPaymentInformation)initWithAccountNumber:(id)number sortCode:(id)code;
- (FKAccountPaymentInformation)initWithIBAN:(id)n;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation FKAccountPaymentInformation

- (FKAccountPaymentInformation)initWithAccountNumber:(id)number routingNumber:(id)routingNumber
{
  numberCopy = number;
  routingNumberCopy = routingNumber;
  v12.receiver = self;
  v12.super_class = FKAccountPaymentInformation;
  v8 = [(FKAccountPaymentInformation *)&v12 init];
  if (v8)
  {
    v9 = [[FKAccountPaymentInformationACH alloc] initWithAccountNumber:numberCopy routingNumber:routingNumberCopy];
    ach = v8->_ach;
    v8->_ach = v9;
  }

  return v8;
}

- (FKAccountPaymentInformation)initWithAccountNumber:(id)number sortCode:(id)code
{
  numberCopy = number;
  codeCopy = code;
  v12.receiver = self;
  v12.super_class = FKAccountPaymentInformation;
  v8 = [(FKAccountPaymentInformation *)&v12 init];
  if (v8)
  {
    v9 = [[FKAccountPaymentInformationSCAN alloc] initWithAccountNumber:numberCopy sortCode:codeCopy];
    scan = v8->_scan;
    v8->_scan = v9;
  }

  return v8;
}

- (FKAccountPaymentInformation)initWithIBAN:(id)n
{
  nCopy = n;
  v9.receiver = self;
  v9.super_class = FKAccountPaymentInformation;
  v5 = [(FKAccountPaymentInformation *)&v9 init];
  if (v5)
  {
    v6 = [nCopy copy];
    iban = v5->_iban;
    v5->_iban = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (self->_ach)
  {
    v4 = [FKAccountPaymentInformation alloc];
    accountNumber = [(FKAccountPaymentInformationACH *)self->_ach accountNumber];
    routingNumber = [(FKAccountPaymentInformationACH *)self->_ach routingNumber];
    v7 = [(FKAccountPaymentInformation *)v4 initWithAccountNumber:accountNumber routingNumber:routingNumber];
LABEL_5:
    v11 = v7;

    return v11;
  }

  scan = self->_scan;
  v9 = [FKAccountPaymentInformation alloc];
  v10 = v9;
  if (scan)
  {
    accountNumber = [(FKAccountPaymentInformationSCAN *)self->_scan accountNumber];
    routingNumber = [(FKAccountPaymentInformationSCAN *)self->_scan sortCode];
    v7 = [(FKAccountPaymentInformation *)v10 initWithAccountNumber:accountNumber sortCode:routingNumber];
    goto LABEL_5;
  }

  iban = self->_iban;

  return [(FKAccountPaymentInformation *)v9 initWithIBAN:iban];
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