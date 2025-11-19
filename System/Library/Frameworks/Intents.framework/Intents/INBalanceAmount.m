@interface INBalanceAmount
- (BOOL)isEqual:(id)a3;
- (INBalanceAmount)initWithAmount:(NSDecimalNumber *)amount balanceType:(INBalanceType)balanceType;
- (INBalanceAmount)initWithAmount:(NSDecimalNumber *)amount currencyCode:(NSString *)currencyCode;
- (INBalanceAmount)initWithAmount:(id)a3 balanceType:(int64_t)a4 currencyCode:(id)a5;
- (INBalanceAmount)initWithCoder:(id)a3;
- (id)_dictionaryRepresentation;
- (id)_intents_readableTitleWithLocalizer:(id)a3 metadata:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INBalanceAmount

- (id)_intents_readableTitleWithLocalizer:(id)a3 metadata:(id)a4
{
  v5 = a3;
  v6 = [v5 locale];
  v7 = [(INBalanceAmount *)self currencyCode];
  if (v7)
  {
    v8 = v7;
    v9 = [(INBalanceAmount *)self amount];

    if (v9)
    {
      v10 = objc_alloc_init(MEMORY[0x1E696ADA0]);
      [v10 setNumberStyle:2];
      v11 = [(INBalanceAmount *)self currencyCode];
      [v10 setCurrencyCode:v11];

      [v10 setLocale:v6];
      v12 = [(INBalanceAmount *)self amount];
      v13 = [v10 stringFromNumber:v12];
LABEL_7:
      v16 = v13;

      goto LABEL_9;
    }
  }

  if ([(INBalanceAmount *)self balanceType])
  {
    v14 = [(INBalanceAmount *)self amount];

    if (v14)
    {
      v15 = objc_alloc(MEMORY[0x1E696AEC0]);
      v10 = [(INBalanceAmount *)self amount];
      v12 = INBalanceTypeGetLocalizedName([(INBalanceAmount *)self balanceType], v5);
      v13 = [v15 initWithFormat:@"%@ %@" locale:v6, v10, v12];
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
  v4 = amount;
  if (!amount)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v14[0] = v4;
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
  v9 = currencyCode;
  if (!currencyCode)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = v9;
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

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INBalanceAmount;
  v6 = [(INBalanceAmount *)&v11 description];
  v7 = [(INBalanceAmount *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  amount = self->_amount;
  v5 = a3;
  [v5 encodeObject:amount forKey:@"amount"];
  [v5 encodeInteger:self->_balanceType forKey:@"balanceType"];
  [v5 encodeObject:self->_currencyCode forKey:@"currencyCode"];
}

- (INBalanceAmount)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
  v6 = [v4 decodeIntegerForKey:@"balanceType"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];

  v8 = [(INBalanceAmount *)self initWithAmount:v5 balanceType:v6 currencyCode:v7];
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

- (INBalanceAmount)initWithAmount:(id)a3 balanceType:(int64_t)a4 currencyCode:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = INBalanceAmount;
  v10 = [(INBalanceAmount *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    amount = v10->_amount;
    v10->_amount = v11;

    v10->_balanceType = a4;
    v13 = [v9 copy];
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
    v7 = 0;
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
    v7 = self;
  }

  return v7;
}

@end