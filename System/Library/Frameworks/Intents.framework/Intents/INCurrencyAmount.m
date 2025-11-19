@interface INCurrencyAmount
- (BOOL)_intents_compareValue:(id)a3 relation:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (INCurrencyAmount)initWithAmount:(NSDecimalNumber *)amount currencyCode:(NSString *)currencyCode;
- (INCurrencyAmount)initWithCoder:(id)a3;
- (id)_dictionaryRepresentation;
- (id)_intents_readableTitleWithLocalizer:(id)a3 metadata:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INCurrencyAmount

- (id)_intents_readableTitleWithLocalizer:(id)a3 metadata:(id)a4
{
  v5 = [a3 locale];
  v6 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v6 setNumberStyle:2];
  v7 = [(INCurrencyAmount *)self currencyCode];
  [v6 setCurrencyCode:v7];

  [v6 setLocale:v5];
  v8 = [(INCurrencyAmount *)self amount];
  v9 = [v6 stringFromNumber:v8];

  return v9;
}

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"amount";
  amount = self->_amount;
  v4 = amount;
  if (!amount)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"currencyCode";
  v11[0] = v4;
  currencyCode = self->_currencyCode;
  v6 = currencyCode;
  if (!currencyCode)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (currencyCode)
  {
    if (amount)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (amount)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INCurrencyAmount;
  v6 = [(INCurrencyAmount *)&v11 description];
  v7 = [(INCurrencyAmount *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  amount = self->_amount;
  v5 = a3;
  [v5 encodeObject:amount forKey:@"amount"];
  [v5 encodeObject:self->_currencyCode forKey:@"currencyCode"];
}

- (INCurrencyAmount)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];

  v7 = [(INCurrencyAmount *)self initWithAmount:v5 currencyCode:v6];
  return v7;
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
    if (amount == v5[1] || [(NSDecimalNumber *)amount isEqual:?])
    {
      currencyCode = self->_currencyCode;
      if (currencyCode == v5[2] || [(NSString *)currencyCode isEqual:?])
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

- (INCurrencyAmount)initWithAmount:(NSDecimalNumber *)amount currencyCode:(NSString *)currencyCode
{
  v6 = amount;
  v7 = currencyCode;
  v14.receiver = self;
  v14.super_class = INCurrencyAmount;
  v8 = [(INCurrencyAmount *)&v14 init];
  if (v8)
  {
    v9 = [(NSDecimalNumber *)v6 copy];
    v10 = v8->_amount;
    v8->_amount = v9;

    v11 = [(NSString *)v7 copy];
    v12 = v8->_currencyCode;
    v8->_currencyCode = v11;
  }

  return v8;
}

- (BOOL)_intents_compareValue:(id)a3 relation:(unint64_t)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = MEMORY[0x1E696AD98];
    v8 = v6;
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v13 = v9;

    v14 = [v13 amount];

    [v14 doubleValue];
    v15 = [v7 numberWithDouble:?];
LABEL_16:
    v12 = v15;

    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v6;
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v14 = v11;

    v15 = [v14 if_flatMap:&__block_literal_global_31045];
    goto LABEL_16;
  }

  v12 = 0;
LABEL_17:
  v16 = MEMORY[0x1E696AD98];
  v17 = [(INCurrencyAmount *)self amount];
  [v17 doubleValue];
  v18 = [v16 numberWithDouble:?];
  v19 = [v18 _intents_compareValue:v12 relation:a4];

  return v19;
}

id __88__INCurrencyAmount_INCodableAttributeRelationComparing___intents_compareValue_relation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = MEMORY[0x1E696AD98];
      v4 = [v2 amount];
      [v4 doubleValue];
      v5 = [v3 numberWithDouble:?];
      v6 = v2;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      v4 = v2;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  v7 = [MEMORY[0x1E695DEC8] if_arrayWithObjectIfNonNil:v5];

  return v7;
}

@end