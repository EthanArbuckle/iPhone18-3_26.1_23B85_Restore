@interface FKAccountPaymentInformationSCAN
- (BOOL)isEqual:(id)equal;
- (FKAccountPaymentInformationSCAN)initWithAccountNumber:(id)number sortCode:(id)code;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation FKAccountPaymentInformationSCAN

- (FKAccountPaymentInformationSCAN)initWithAccountNumber:(id)number sortCode:(id)code
{
  numberCopy = number;
  codeCopy = code;
  v12.receiver = self;
  v12.super_class = FKAccountPaymentInformationSCAN;
  v9 = [(FKAccountPaymentInformationSCAN *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountNumber, number);
    objc_storeStrong(&v10->_sortCode, code);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [FKAccountPaymentInformationSCAN alloc];
  v6 = [(NSString *)self->_accountNumber copyWithZone:zone];
  v7 = [(NSString *)self->_sortCode copyWithZone:zone];
  v8 = [(FKAccountPaymentInformationSCAN *)v5 initWithAccountNumber:v6 sortCode:v7];

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
      v7 = FKEqualObjects(self->_sortCode, v6[2]);
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