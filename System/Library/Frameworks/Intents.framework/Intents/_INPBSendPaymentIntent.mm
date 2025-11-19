@interface _INPBSendPaymentIntent
- (BOOL)isEqual:(id)a3;
- (_INPBSendPaymentIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSendPaymentIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBSendPaymentIntent *)self currencyAmount];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"currencyAmount"];

  v6 = [(_INPBSendPaymentIntent *)self intentMetadata];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"intentMetadata"];

  v8 = [(_INPBSendPaymentIntent *)self note];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"note"];

  v10 = [(_INPBSendPaymentIntent *)self payee];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"payee"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBCurrencyAmount *)self->_currencyAmount hash];
  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash]^ v3;
  v5 = [(_INPBString *)self->_note hash];
  return v4 ^ v5 ^ [(_INPBContact *)self->_payee hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(_INPBSendPaymentIntent *)self currencyAmount];
  v6 = [v4 currencyAmount];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(_INPBSendPaymentIntent *)self currencyAmount];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBSendPaymentIntent *)self currencyAmount];
    v10 = [v4 currencyAmount];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBSendPaymentIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(_INPBSendPaymentIntent *)self intentMetadata];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBSendPaymentIntent *)self intentMetadata];
    v15 = [v4 intentMetadata];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBSendPaymentIntent *)self note];
  v6 = [v4 note];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(_INPBSendPaymentIntent *)self note];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBSendPaymentIntent *)self note];
    v20 = [v4 note];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBSendPaymentIntent *)self payee];
  v6 = [v4 payee];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(_INPBSendPaymentIntent *)self payee];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(_INPBSendPaymentIntent *)self payee];
    v25 = [v4 payee];
    v26 = [v24 isEqual:v25];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSendPaymentIntent allocWithZone:](_INPBSendPaymentIntent init];
  v6 = [(_INPBCurrencyAmount *)self->_currencyAmount copyWithZone:a3];
  [(_INPBSendPaymentIntent *)v5 setCurrencyAmount:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBSendPaymentIntent *)v5 setIntentMetadata:v7];

  v8 = [(_INPBString *)self->_note copyWithZone:a3];
  [(_INPBSendPaymentIntent *)v5 setNote:v8];

  v9 = [(_INPBContact *)self->_payee copyWithZone:a3];
  [(_INPBSendPaymentIntent *)v5 setPayee:v9];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSendPaymentIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSendPaymentIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSendPaymentIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v13 = a3;
  v4 = [(_INPBSendPaymentIntent *)self currencyAmount];

  if (v4)
  {
    v5 = [(_INPBSendPaymentIntent *)self currencyAmount];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBSendPaymentIntent *)self intentMetadata];

  if (v6)
  {
    v7 = [(_INPBSendPaymentIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBSendPaymentIntent *)self note];

  if (v8)
  {
    v9 = [(_INPBSendPaymentIntent *)self note];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_INPBSendPaymentIntent *)self payee];

  v11 = v13;
  if (v10)
  {
    v12 = [(_INPBSendPaymentIntent *)self payee];
    PBDataWriterWriteSubmessage();

    v11 = v13;
  }
}

@end