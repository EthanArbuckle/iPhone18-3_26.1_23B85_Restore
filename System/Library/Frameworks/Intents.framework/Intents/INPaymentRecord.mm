@interface INPaymentRecord
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INPaymentRecord)initWithCoder:(id)coder;
- (INPaymentRecord)initWithPayee:(INPerson *)payee payer:(INPerson *)payer currencyAmount:(INCurrencyAmount *)currencyAmount paymentMethod:(INPaymentMethod *)paymentMethod note:(NSString *)note status:(INPaymentStatus)status feeAmount:(INCurrencyAmount *)feeAmount;
- (id)_dictionaryRepresentation;
- (id)_intents_cacheableObjects;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)_intents_updateContainerWithCache:(id)cache;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INPaymentRecord

- (void)_intents_updateContainerWithCache:(id)cache
{
  cacheCopy = cache;
  payee = [(INPaymentRecord *)self payee];
  [payee _intents_updateContainerWithCache:cacheCopy];

  payer = [(INPaymentRecord *)self payer];
  [payer _intents_updateContainerWithCache:cacheCopy];

  paymentMethod = [(INPaymentRecord *)self paymentMethod];
  [paymentMethod _intents_updateContainerWithCache:cacheCopy];
}

- (id)_intents_cacheableObjects
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  payee = [(INPaymentRecord *)self payee];
  _intents_cacheableObjects = [payee _intents_cacheableObjects];
  [v3 unionSet:_intents_cacheableObjects];

  payer = [(INPaymentRecord *)self payer];
  _intents_cacheableObjects2 = [payer _intents_cacheableObjects];
  [v3 unionSet:_intents_cacheableObjects2];

  paymentMethod = [(INPaymentRecord *)self paymentMethod];
  _intents_cacheableObjects3 = [paymentMethod _intents_cacheableObjects];
  [v3 unionSet:_intents_cacheableObjects3];

  if ([v3 count])
  {
    v10 = v3;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v10;
}

- (id)_dictionaryRepresentation
{
  v24[7] = *MEMORY[0x1E69E9840];
  payee = self->_payee;
  v22 = payee;
  v23[0] = @"payee";
  if (!payee)
  {
    payee = [MEMORY[0x1E695DFB0] null];
  }

  v21 = payee;
  v24[0] = payee;
  v23[1] = @"payer";
  payer = self->_payer;
  null = payer;
  if (!payer)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v20 = null;
  v24[1] = null;
  v23[2] = @"currencyAmount";
  currencyAmount = self->_currencyAmount;
  null2 = currencyAmount;
  if (!currencyAmount)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = null2;
  v24[2] = null2;
  v23[3] = @"note";
  note = self->_note;
  null3 = note;
  if (!note)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v24[3] = null3;
  v23[4] = @"status";
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{self->_status, v18}];
  v24[4] = v10;
  v23[5] = @"paymentMethod";
  paymentMethod = self->_paymentMethod;
  null4 = paymentMethod;
  if (!paymentMethod)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v24[5] = null4;
  v23[6] = @"feeAmount";
  feeAmount = self->_feeAmount;
  null5 = feeAmount;
  if (!feeAmount)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v24[6] = null5;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:7];
  if (feeAmount)
  {
    if (paymentMethod)
    {
      goto LABEL_15;
    }
  }

  else
  {

    if (paymentMethod)
    {
      goto LABEL_15;
    }
  }

LABEL_15:
  if (note)
  {
    if (currencyAmount)
    {
      goto LABEL_17;
    }

LABEL_26:

    if (payer)
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

  if (!currencyAmount)
  {
    goto LABEL_26;
  }

LABEL_17:
  if (payer)
  {
    goto LABEL_18;
  }

LABEL_27:

LABEL_18:
  if (!v22)
  {
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INPaymentRecord;
  v6 = [(INPaymentRecord *)&v11 description];
  _dictionaryRepresentation = [(INPaymentRecord *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_payee];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"payee"];

  v9 = [encoderCopy encodeObject:self->_payer];
  [dictionary if_setObjectIfNonNil:v9 forKey:@"payer"];

  v10 = [encoderCopy encodeObject:self->_currencyAmount];
  [dictionary if_setObjectIfNonNil:v10 forKey:@"currencyAmount"];

  v11 = [encoderCopy encodeObject:self->_note];
  [dictionary if_setObjectIfNonNil:v11 forKey:@"note"];

  v12 = self->_status - 1;
  if (v12 > 4)
  {
    v13 = @"unknown";
  }

  else
  {
    v13 = *(&off_1E727E730 + v12);
  }

  v14 = v13;
  [dictionary if_setObjectIfNonNil:v14 forKey:@"status"];

  v15 = [encoderCopy encodeObject:self->_paymentMethod];
  [dictionary if_setObjectIfNonNil:v15 forKey:@"paymentMethod"];

  v16 = [encoderCopy encodeObject:self->_feeAmount];

  [dictionary if_setObjectIfNonNil:v16 forKey:@"feeAmount"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  payee = self->_payee;
  coderCopy = coder;
  [coderCopy encodeObject:payee forKey:@"payee"];
  [coderCopy encodeObject:self->_payer forKey:@"payer"];
  [coderCopy encodeObject:self->_currencyAmount forKey:@"currencyAmount"];
  [coderCopy encodeObject:self->_note forKey:@"note"];
  [coderCopy encodeInteger:self->_status forKey:@"status"];
  [coderCopy encodeObject:self->_paymentMethod forKey:@"paymentMethod"];
  [coderCopy encodeObject:self->_feeAmount forKey:@"feeAmount"];
}

- (INPaymentRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payee"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payer"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyAmount"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"note"];
  v9 = [coderCopy decodeIntegerForKey:@"status"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentMethod"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"feeAmount"];

  v12 = [(INPaymentRecord *)self initWithPayee:v5 payer:v6 currencyAmount:v7 paymentMethod:v10 note:v8 status:v9 feeAmount:v11];
  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      payee = self->_payee;
      v12 = 0;
      if (payee == v5->_payee || [(INPerson *)payee isEqual:?])
      {
        payer = self->_payer;
        if (payer == v5->_payer || [(INPerson *)payer isEqual:?])
        {
          currencyAmount = self->_currencyAmount;
          if (currencyAmount == v5->_currencyAmount || [(INCurrencyAmount *)currencyAmount isEqual:?])
          {
            note = self->_note;
            if ((note == v5->_note || [(NSString *)note isEqual:?]) && self->_status == v5->_status)
            {
              paymentMethod = self->_paymentMethod;
              if (paymentMethod == v5->_paymentMethod || [(INPaymentMethod *)paymentMethod isEqual:?])
              {
                feeAmount = self->_feeAmount;
                if (feeAmount == v5->_feeAmount || [(INCurrencyAmount *)feeAmount isEqual:?])
                {
                  v12 = 1;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(INPerson *)self->_payee hash];
  v4 = [(INPerson *)self->_payer hash]^ v3;
  v5 = [(INCurrencyAmount *)self->_currencyAmount hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_note hash];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_status];
  v8 = v6 ^ [v7 hash];
  v9 = [(INPaymentMethod *)self->_paymentMethod hash];
  v10 = v9 ^ [(INCurrencyAmount *)self->_feeAmount hash];

  return v8 ^ v10;
}

- (INPaymentRecord)initWithPayee:(INPerson *)payee payer:(INPerson *)payer currencyAmount:(INCurrencyAmount *)currencyAmount paymentMethod:(INPaymentMethod *)paymentMethod note:(NSString *)note status:(INPaymentStatus)status feeAmount:(INCurrencyAmount *)feeAmount
{
  v15 = payee;
  v16 = payer;
  v17 = currencyAmount;
  v18 = paymentMethod;
  v19 = note;
  v20 = feeAmount;
  v35.receiver = self;
  v35.super_class = INPaymentRecord;
  v21 = [(INPaymentRecord *)&v35 init];
  if (v21)
  {
    v22 = [(INPerson *)v15 copy];
    v23 = v21->_payee;
    v21->_payee = v22;

    v24 = [(INPerson *)v16 copy];
    v25 = v21->_payer;
    v21->_payer = v24;

    v26 = [(INCurrencyAmount *)v17 copy];
    v27 = v21->_currencyAmount;
    v21->_currencyAmount = v26;

    v28 = [(NSString *)v19 copy];
    v29 = v21->_note;
    v21->_note = v28;

    v21->_status = status;
    v30 = [(INPaymentMethod *)v18 copy];
    v31 = v21->_paymentMethod;
    v21->_paymentMethod = v30;

    v32 = [(INCurrencyAmount *)v20 copy];
    v33 = v21->_feeAmount;
    v21->_feeAmount = v32;
  }

  return v21;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    v9 = objc_opt_class();
    v10 = [fromCopy objectForKeyedSubscript:@"payee"];
    v11 = [decoderCopy decodeObjectOfClass:v9 from:v10];

    v12 = objc_opt_class();
    v13 = [fromCopy objectForKeyedSubscript:@"payer"];
    v14 = [decoderCopy decodeObjectOfClass:v12 from:v13];

    v15 = objc_opt_class();
    v16 = [fromCopy objectForKeyedSubscript:@"currencyAmount"];
    v17 = [decoderCopy decodeObjectOfClass:v15 from:v16];

    v18 = objc_opt_class();
    v19 = [fromCopy objectForKeyedSubscript:@"note"];
    v20 = [decoderCopy decodeObjectOfClass:v18 from:v19];

    v21 = [fromCopy objectForKeyedSubscript:@"status"];
    v22 = INPaymentStatusWithString(v21);

    v23 = objc_opt_class();
    v24 = [fromCopy objectForKeyedSubscript:@"paymentMethod"];
    v25 = [decoderCopy decodeObjectOfClass:v23 from:v24];

    v26 = objc_opt_class();
    v27 = [fromCopy objectForKeyedSubscript:@"feeAmount"];
    v28 = [decoderCopy decodeObjectOfClass:v26 from:v27];

    v29 = [[selfCopy alloc] initWithPayee:v11 payer:v14 currencyAmount:v17 paymentMethod:v25 note:v20 status:v22 feeAmount:v28];
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

@end