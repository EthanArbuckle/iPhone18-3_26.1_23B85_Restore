@interface INBalanceAmount
- (BOOL)isEqual:(id)equal;
- (INBalanceAmount)initWithAmount:(NSDecimalNumber *)amount balanceType:(INBalanceType)balanceType;
- (INBalanceAmount)initWithAmount:(NSDecimalNumber *)amount currencyCode:(NSString *)currencyCode;
- (INBalanceAmount)initWithAmount:(id)amount balanceType:(int64_t)type currencyCode:(id)code;
- (INBalanceAmount)initWithCoder:(id)coder;
- (id)_dictionaryRepresentation;
- (id)_intents_readableTitleWithLocalizer:(id)localizer metadata:(id)metadata;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INBalanceAmount

- (id)_intents_readableTitleWithLocalizer:(id)localizer metadata:(id)metadata
{
  localizerCopy = localizer;
  locale = [localizerCopy locale];
  currencyCode = [(INBalanceAmount *)self currencyCode];
  if (currencyCode)
  {
    v8 = currencyCode;
    amount = [(INBalanceAmount *)self amount];

    if (amount)
    {
      amount4 = objc_alloc_init(MEMORY[0x1E696ADA0]);
      [amount4 setNumberStyle:2];
      currencyCode2 = [(INBalanceAmount *)self currencyCode];
      [amount4 setCurrencyCode:currencyCode2];

      [amount4 setLocale:locale];
      amount2 = [(INBalanceAmount *)self amount];
      v13 = [amount4 stringFromNumber:amount2];
LABEL_7:
      v16 = v13;

      goto LABEL_9;
    }
  }

  if ([(INBalanceAmount *)self balanceType])
  {
    amount3 = [(INBalanceAmount *)self amount];

    if (amount3)
    {
      v15 = objc_alloc(MEMORY[0x1E696AEC0]);
      amount4 = [(INBalanceAmount *)self amount];
      amount2 = INBalanceTypeGetLocalizedName([(INBalanceAmount *)self balanceType], localizerCopy);
      v13 = [v15 initWithFormat:@"%@ %@" locale:locale, amount4, amount2];
      goto LABEL_7;
    }
  }

  v16 = 0;
LABEL_9:

  return v16;
}

- (id)_dictionaryRepresentation
{
  v14[3] = *MEMORY[0x1E69E9840];
  v13[0] = @"amount";
  amount = self->_amount;
  null = amount;
  if (!amount)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v14[0] = null;
  v13[1] = @"balanceType";
  v5 = self->_balanceType - 1;
  if (v5 > 2)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E727F950[v5];
  }

  v7 = v6;
  v14[1] = v7;
  v13[2] = @"currencyCode";
  currencyCode = self->_currencyCode;
  null2 = currencyCode;
  if (!currencyCode)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = null2;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  if (!currencyCode)
  {
  }

  if (!amount)
  {
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INBalanceAmount;
  v6 = [(INBalanceAmount *)&v11 description];
  _dictionaryRepresentation = [(INBalanceAmount *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  amount = self->_amount;
  coderCopy = coder;
  [coderCopy encodeObject:amount forKey:@"amount"];
  [coderCopy encodeInteger:self->_balanceType forKey:@"balanceType"];
  [coderCopy encodeObject:self->_currencyCode forKey:@"currencyCode"];
}

- (INBalanceAmount)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
  v6 = [coderCopy decodeIntegerForKey:@"balanceType"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];

  v8 = [(INBalanceAmount *)self initWithAmount:v5 balanceType:v6 currencyCode:v7];
  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    amount = self->_amount;
    v8 = 0;
    if ((amount == v5[1] || [(NSDecimalNumber *)amount isEqual:?]) && self->_balanceType == v5[2])
    {
      currencyCode = self->_currencyCode;
      if (currencyCode == v5[3] || [(NSString *)currencyCode isEqual:?])
      {
        v8 = 1;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSDecimalNumber *)self->_amount hash];
  currencyCode = self->_currencyCode;
  v5 = self->_balanceType ^ v3;
  return v5 ^ [(NSString *)currencyCode hash];
}

- (INBalanceAmount)initWithAmount:(id)amount balanceType:(int64_t)type currencyCode:(id)code
{
  amountCopy = amount;
  codeCopy = code;
  v16.receiver = self;
  v16.super_class = INBalanceAmount;
  v10 = [(INBalanceAmount *)&v16 init];
  if (v10)
  {
    v11 = [amountCopy copy];
    amount = v10->_amount;
    v10->_amount = v11;

    v10->_balanceType = type;
    v13 = [codeCopy copy];
    currencyCode = v10->_currencyCode;
    v10->_currencyCode = v13;
  }

  return v10;
}

- (INBalanceAmount)initWithAmount:(NSDecimalNumber *)amount currencyCode:(NSString *)currencyCode
{
  v6 = amount;
  v7 = currencyCode;
  v14.receiver = self;
  v14.super_class = INBalanceAmount;
  v8 = [(INBalanceAmount *)&v14 init];
  if (v8)
  {
    v9 = [(NSDecimalNumber *)v6 copy];
    v10 = v8->_amount;
    v8->_amount = v9;

    v8->_balanceType = 1;
    v11 = [(NSString *)v7 copy];
    v12 = v8->_currencyCode;
    v8->_currencyCode = v11;
  }

  return v8;
}

- (INBalanceAmount)initWithAmount:(NSDecimalNumber *)amount balanceType:(INBalanceType)balanceType
{
  v6 = amount;
  if (balanceType == INBalanceTypeMoney)
  {
    NSLog(@"Initializing INBalanceAmount with INBalanceTypeMoney not allowed. Use initWithAmount:currencyCode: instead");
    selfCopy = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = INBalanceAmount;
    v8 = [(INBalanceAmount *)&v13 init];
    if (v8)
    {
      v9 = [(NSDecimalNumber *)v6 copy];
      v10 = v8->_amount;
      v8->_amount = v9;

      currencyCode = v8->_currencyCode;
      v8->_balanceType = balanceType;
      v8->_currencyCode = 0;
    }

    self = v8;
    selfCopy = self;
  }

  return selfCopy;
}

@end