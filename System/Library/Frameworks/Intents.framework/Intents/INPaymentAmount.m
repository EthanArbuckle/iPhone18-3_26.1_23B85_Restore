@interface INPaymentAmount
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INPaymentAmount)initWithAmountType:(INAmountType)amountType amount:(INCurrencyAmount *)amount;
- (INPaymentAmount)initWithCoder:(id)a3;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)_intents_readableTitleWithLocalizer:(id)a3 metadata:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INPaymentAmount

- (id)_dictionaryRepresentation
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"amount";
  amount = self->_amount;
  v4 = amount;
  if (!amount)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v9[1] = @"amountType";
  v10[0] = v4;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_amountType];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  if (!amount)
  {
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INPaymentAmount;
  v6 = [(INPaymentAmount *)&v11 description];
  v7 = [(INPaymentAmount *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_amount];

  [v7 if_setObjectIfNonNil:v8 forKey:@"amount"];
  v9 = self->_amountType - 1;
  if (v9 > 5)
  {
    v10 = @"unknown";
  }

  else
  {
    v10 = off_1E7280F58[v9];
  }

  v11 = v10;
  [v7 if_setObjectIfNonNil:v11 forKey:@"amountType"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  amount = self->_amount;
  v5 = a3;
  [v5 encodeObject:amount forKey:@"amount"];
  [v5 encodeInteger:self->_amountType forKey:@"amountType"];
}

- (INPaymentAmount)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
  v6 = [v4 decodeIntegerForKey:@"amountType"];

  v7 = [(INPaymentAmount *)self initWithAmountType:v6 amount:v5];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      amount = self->_amount;
      v7 = (amount == v5->_amount || [(INCurrencyAmount *)amount isEqual:?]) && self->_amountType == v5->_amountType;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [(INCurrencyAmount *)self->_amount hash];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_amountType];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (INPaymentAmount)initWithAmountType:(INAmountType)amountType amount:(INCurrencyAmount *)amount
{
  v6 = amount;
  v11.receiver = self;
  v11.super_class = INPaymentAmount;
  v7 = [(INPaymentAmount *)&v11 init];
  if (v7)
  {
    v8 = [(INCurrencyAmount *)v6 copy];
    v9 = v7->_amount;
    v7->_amount = v8;

    v7->_amountType = amountType;
  }

  return v7;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [v8 objectForKeyedSubscript:@"amount"];
    v11 = [v7 decodeObjectOfClass:v9 from:v10];

    v12 = [v8 objectForKeyedSubscript:@"amountType"];
    v13 = INAmountTypeWithString(v12);

    v14 = [[a1 alloc] initWithAmountType:v13 amount:v11];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_intents_readableTitleWithLocalizer:(id)a3 metadata:(id)a4
{
  v5 = a3;
  v6 = [(INPaymentAmount *)self amount];

  if (v6)
  {
    v7 = [(INPaymentAmount *)self amount];
    v8 = [v7 _intents_readableTitleWithLocalizer:v5];

    v5 = v7;
  }

  else
  {
    v8 = INAmountTypeGetLocalizedName([(INPaymentAmount *)self amountType], v5);
  }

  return v8;
}

@end