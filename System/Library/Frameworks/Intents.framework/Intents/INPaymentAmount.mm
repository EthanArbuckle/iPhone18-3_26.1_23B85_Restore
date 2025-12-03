@interface INPaymentAmount
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INPaymentAmount)initWithAmountType:(INAmountType)amountType amount:(INCurrencyAmount *)amount;
- (INPaymentAmount)initWithCoder:(id)coder;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)_intents_readableTitleWithLocalizer:(id)localizer metadata:(id)metadata;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INPaymentAmount

- (id)_dictionaryRepresentation
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"amount";
  amount = self->_amount;
  null = amount;
  if (!amount)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v9[1] = @"amountType";
  v10[0] = null;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_amountType];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  if (!amount)
  {
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INPaymentAmount;
  v6 = [(INPaymentAmount *)&v11 description];
  _dictionaryRepresentation = [(INPaymentAmount *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_amount];

  [dictionary if_setObjectIfNonNil:v8 forKey:@"amount"];
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
  [dictionary if_setObjectIfNonNil:v11 forKey:@"amountType"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  amount = self->_amount;
  coderCopy = coder;
  [coderCopy encodeObject:amount forKey:@"amount"];
  [coderCopy encodeInteger:self->_amountType forKey:@"amountType"];
}

- (INPaymentAmount)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
  v6 = [coderCopy decodeIntegerForKey:@"amountType"];

  v7 = [(INPaymentAmount *)self initWithAmountType:v6 amount:v5];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [fromCopy objectForKeyedSubscript:@"amount"];
    v11 = [decoderCopy decodeObjectOfClass:v9 from:v10];

    v12 = [fromCopy objectForKeyedSubscript:@"amountType"];
    v13 = INAmountTypeWithString(v12);

    v14 = [[self alloc] initWithAmountType:v13 amount:v11];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_intents_readableTitleWithLocalizer:(id)localizer metadata:(id)metadata
{
  localizerCopy = localizer;
  amount = [(INPaymentAmount *)self amount];

  if (amount)
  {
    amount2 = [(INPaymentAmount *)self amount];
    v8 = [amount2 _intents_readableTitleWithLocalizer:localizerCopy];

    localizerCopy = amount2;
  }

  else
  {
    v8 = INAmountTypeGetLocalizedName([(INPaymentAmount *)self amountType], localizerCopy);
  }

  return v8;
}

@end