@interface _INPBPaymentRecord
- (BOOL)isEqual:(id)a3;
- (_INPBPaymentRecord)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsStatus:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setStatus:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBPaymentRecord

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBPaymentRecord *)self currencyAmount];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"currencyAmount"];

  v6 = [(_INPBPaymentRecord *)self feeAmount];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"feeAmount"];

  v8 = [(_INPBPaymentRecord *)self note];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"note"];

  v10 = [(_INPBPaymentRecord *)self payee];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"payee"];

  v12 = [(_INPBPaymentRecord *)self payer];
  v13 = [v12 dictionaryRepresentation];
  [v3 setObject:v13 forKeyedSubscript:@"payer"];

  v14 = [(_INPBPaymentRecord *)self paymentMethod];
  v15 = [v14 dictionaryRepresentation];
  [v3 setObject:v15 forKeyedSubscript:@"paymentMethod"];

  if ([(_INPBPaymentRecord *)self hasStatus])
  {
    v16 = [(_INPBPaymentRecord *)self status];
    if ((v16 - 1) >= 5)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v16];
    }

    else
    {
      v17 = off_1E727F448[(v16 - 1)];
    }

    [v3 setObject:v17 forKeyedSubscript:@"status"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBCurrencyAmount *)self->_currencyAmount hash];
  v4 = [(_INPBCurrencyAmount *)self->_feeAmount hash];
  v5 = [(_INPBString *)self->_note hash];
  v6 = [(_INPBContact *)self->_payee hash];
  v7 = [(_INPBContact *)self->_payer hash];
  v8 = [(_INPBPaymentMethodValue *)self->_paymentMethod hash];
  if ([(_INPBPaymentRecord *)self hasStatus])
  {
    v9 = 2654435761 * self->_status;
  }

  else
  {
    v9 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  v5 = [(_INPBPaymentRecord *)self currencyAmount];
  v6 = [v4 currencyAmount];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v7 = [(_INPBPaymentRecord *)self currencyAmount];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBPaymentRecord *)self currencyAmount];
    v10 = [v4 currencyAmount];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBPaymentRecord *)self feeAmount];
  v6 = [v4 feeAmount];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v12 = [(_INPBPaymentRecord *)self feeAmount];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBPaymentRecord *)self feeAmount];
    v15 = [v4 feeAmount];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBPaymentRecord *)self note];
  v6 = [v4 note];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v17 = [(_INPBPaymentRecord *)self note];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBPaymentRecord *)self note];
    v20 = [v4 note];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBPaymentRecord *)self payee];
  v6 = [v4 payee];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v22 = [(_INPBPaymentRecord *)self payee];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBPaymentRecord *)self payee];
    v25 = [v4 payee];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBPaymentRecord *)self payer];
  v6 = [v4 payer];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v27 = [(_INPBPaymentRecord *)self payer];
  if (v27)
  {
    v28 = v27;
    v29 = [(_INPBPaymentRecord *)self payer];
    v30 = [v4 payer];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBPaymentRecord *)self paymentMethod];
  v6 = [v4 paymentMethod];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_31:

    goto LABEL_32;
  }

  v32 = [(_INPBPaymentRecord *)self paymentMethod];
  if (v32)
  {
    v33 = v32;
    v34 = [(_INPBPaymentRecord *)self paymentMethod];
    v35 = [v4 paymentMethod];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v39 = [(_INPBPaymentRecord *)self hasStatus];
  if (v39 == [v4 hasStatus])
  {
    if (!-[_INPBPaymentRecord hasStatus](self, "hasStatus") || ![v4 hasStatus] || (status = self->_status, status == objc_msgSend(v4, "status")))
    {
      v37 = 1;
      goto LABEL_33;
    }
  }

LABEL_32:
  v37 = 0;
LABEL_33:

  return v37;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBPaymentRecord allocWithZone:](_INPBPaymentRecord init];
  v6 = [(_INPBCurrencyAmount *)self->_currencyAmount copyWithZone:a3];
  [(_INPBPaymentRecord *)v5 setCurrencyAmount:v6];

  v7 = [(_INPBCurrencyAmount *)self->_feeAmount copyWithZone:a3];
  [(_INPBPaymentRecord *)v5 setFeeAmount:v7];

  v8 = [(_INPBString *)self->_note copyWithZone:a3];
  [(_INPBPaymentRecord *)v5 setNote:v8];

  v9 = [(_INPBContact *)self->_payee copyWithZone:a3];
  [(_INPBPaymentRecord *)v5 setPayee:v9];

  v10 = [(_INPBContact *)self->_payer copyWithZone:a3];
  [(_INPBPaymentRecord *)v5 setPayer:v10];

  v11 = [(_INPBPaymentMethodValue *)self->_paymentMethod copyWithZone:a3];
  [(_INPBPaymentRecord *)v5 setPaymentMethod:v11];

  if ([(_INPBPaymentRecord *)self hasStatus])
  {
    [(_INPBPaymentRecord *)v5 setStatus:[(_INPBPaymentRecord *)self status]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBPaymentRecord *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBPaymentRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBPaymentRecord *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v17 = a3;
  v4 = [(_INPBPaymentRecord *)self currencyAmount];

  if (v4)
  {
    v5 = [(_INPBPaymentRecord *)self currencyAmount];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBPaymentRecord *)self feeAmount];

  if (v6)
  {
    v7 = [(_INPBPaymentRecord *)self feeAmount];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBPaymentRecord *)self note];

  if (v8)
  {
    v9 = [(_INPBPaymentRecord *)self note];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_INPBPaymentRecord *)self payee];

  if (v10)
  {
    v11 = [(_INPBPaymentRecord *)self payee];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(_INPBPaymentRecord *)self payer];

  if (v12)
  {
    v13 = [(_INPBPaymentRecord *)self payer];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(_INPBPaymentRecord *)self paymentMethod];

  if (v14)
  {
    v15 = [(_INPBPaymentRecord *)self paymentMethod];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBPaymentRecord *)self hasStatus])
  {
    status = self->_status;
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PENDING"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"COMPLETED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CANCELED"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"FAILED"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"UNPAID"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setStatus:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_status = a3;
  }
}

@end