@interface FKAmount
- (BOOL)isEqual:(id)equal;
- (FKAmount)initWithDecimalNumber:(id)number currency:(id)currency;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation FKAmount

- (FKAmount)initWithDecimalNumber:(id)number currency:(id)currency
{
  numberCopy = number;
  currencyCopy = currency;
  v14.receiver = self;
  v14.super_class = FKAmount;
  v8 = [(FKAmount *)&v14 init];
  if (v8)
  {
    v9 = [numberCopy copy];
    decimal = v8->_decimal;
    v8->_decimal = v9;

    v11 = [currencyCopy copy];
    currency = v8->_currency;
    v8->_currency = v11;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(FKAmount);
  v5 = [(NSDecimalNumber *)self->_decimal copy];
  decimal = v4->_decimal;
  v4->_decimal = v5;

  v7 = [(NSString *)self->_currency copy];
  currency = v4->_currency;
  v4->_currency = v7;

  return v4;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_decimal];
  [v3 safelyAddObject:self->_currency];
  v4 = FKCombinedHash(17, v3);

  return v4;
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
    if ([(NSDecimalNumber *)self->_decimal isEqualToNumber:v6[1]])
    {
      v7 = FKEqualObjects(self->_currency, v6[2]);
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