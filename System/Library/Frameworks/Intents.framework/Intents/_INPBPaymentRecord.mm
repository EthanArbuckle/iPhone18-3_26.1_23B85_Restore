@interface _INPBPaymentRecord
- (BOOL)isEqual:(id)equal;
- (_INPBPaymentRecord)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsStatus:(id)status;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setStatus:(int)status;
- (void)writeTo:(id)to;
@end

@implementation _INPBPaymentRecord

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  currencyAmount = [(_INPBPaymentRecord *)self currencyAmount];
  dictionaryRepresentation = [currencyAmount dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"currencyAmount"];

  feeAmount = [(_INPBPaymentRecord *)self feeAmount];
  dictionaryRepresentation2 = [feeAmount dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"feeAmount"];

  note = [(_INPBPaymentRecord *)self note];
  dictionaryRepresentation3 = [note dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"note"];

  payee = [(_INPBPaymentRecord *)self payee];
  dictionaryRepresentation4 = [payee dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"payee"];

  payer = [(_INPBPaymentRecord *)self payer];
  dictionaryRepresentation5 = [payer dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"payer"];

  paymentMethod = [(_INPBPaymentRecord *)self paymentMethod];
  dictionaryRepresentation6 = [paymentMethod dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"paymentMethod"];

  if ([(_INPBPaymentRecord *)self hasStatus])
  {
    status = [(_INPBPaymentRecord *)self status];
    if ((status - 1) >= 5)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", status];
    }

    else
    {
      v17 = off_1E727F448[(status - 1)];
    }

    [dictionary setObject:v17 forKeyedSubscript:@"status"];
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  currencyAmount = [(_INPBPaymentRecord *)self currencyAmount];
  currencyAmount2 = [equalCopy currencyAmount];
  if ((currencyAmount != 0) == (currencyAmount2 == 0))
  {
    goto LABEL_31;
  }

  currencyAmount3 = [(_INPBPaymentRecord *)self currencyAmount];
  if (currencyAmount3)
  {
    v8 = currencyAmount3;
    currencyAmount4 = [(_INPBPaymentRecord *)self currencyAmount];
    currencyAmount5 = [equalCopy currencyAmount];
    v11 = [currencyAmount4 isEqual:currencyAmount5];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  currencyAmount = [(_INPBPaymentRecord *)self feeAmount];
  currencyAmount2 = [equalCopy feeAmount];
  if ((currencyAmount != 0) == (currencyAmount2 == 0))
  {
    goto LABEL_31;
  }

  feeAmount = [(_INPBPaymentRecord *)self feeAmount];
  if (feeAmount)
  {
    v13 = feeAmount;
    feeAmount2 = [(_INPBPaymentRecord *)self feeAmount];
    feeAmount3 = [equalCopy feeAmount];
    v16 = [feeAmount2 isEqual:feeAmount3];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  currencyAmount = [(_INPBPaymentRecord *)self note];
  currencyAmount2 = [equalCopy note];
  if ((currencyAmount != 0) == (currencyAmount2 == 0))
  {
    goto LABEL_31;
  }

  note = [(_INPBPaymentRecord *)self note];
  if (note)
  {
    v18 = note;
    note2 = [(_INPBPaymentRecord *)self note];
    note3 = [equalCopy note];
    v21 = [note2 isEqual:note3];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  currencyAmount = [(_INPBPaymentRecord *)self payee];
  currencyAmount2 = [equalCopy payee];
  if ((currencyAmount != 0) == (currencyAmount2 == 0))
  {
    goto LABEL_31;
  }

  payee = [(_INPBPaymentRecord *)self payee];
  if (payee)
  {
    v23 = payee;
    payee2 = [(_INPBPaymentRecord *)self payee];
    payee3 = [equalCopy payee];
    v26 = [payee2 isEqual:payee3];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  currencyAmount = [(_INPBPaymentRecord *)self payer];
  currencyAmount2 = [equalCopy payer];
  if ((currencyAmount != 0) == (currencyAmount2 == 0))
  {
    goto LABEL_31;
  }

  payer = [(_INPBPaymentRecord *)self payer];
  if (payer)
  {
    v28 = payer;
    payer2 = [(_INPBPaymentRecord *)self payer];
    payer3 = [equalCopy payer];
    v31 = [payer2 isEqual:payer3];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  currencyAmount = [(_INPBPaymentRecord *)self paymentMethod];
  currencyAmount2 = [equalCopy paymentMethod];
  if ((currencyAmount != 0) == (currencyAmount2 == 0))
  {
LABEL_31:

    goto LABEL_32;
  }

  paymentMethod = [(_INPBPaymentRecord *)self paymentMethod];
  if (paymentMethod)
  {
    v33 = paymentMethod;
    paymentMethod2 = [(_INPBPaymentRecord *)self paymentMethod];
    paymentMethod3 = [equalCopy paymentMethod];
    v36 = [paymentMethod2 isEqual:paymentMethod3];

    if (!v36)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  hasStatus = [(_INPBPaymentRecord *)self hasStatus];
  if (hasStatus == [equalCopy hasStatus])
  {
    if (!-[_INPBPaymentRecord hasStatus](self, "hasStatus") || ![equalCopy hasStatus] || (status = self->_status, status == objc_msgSend(equalCopy, "status")))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBPaymentRecord allocWithZone:](_INPBPaymentRecord init];
  v6 = [(_INPBCurrencyAmount *)self->_currencyAmount copyWithZone:zone];
  [(_INPBPaymentRecord *)v5 setCurrencyAmount:v6];

  v7 = [(_INPBCurrencyAmount *)self->_feeAmount copyWithZone:zone];
  [(_INPBPaymentRecord *)v5 setFeeAmount:v7];

  v8 = [(_INPBString *)self->_note copyWithZone:zone];
  [(_INPBPaymentRecord *)v5 setNote:v8];

  v9 = [(_INPBContact *)self->_payee copyWithZone:zone];
  [(_INPBPaymentRecord *)v5 setPayee:v9];

  v10 = [(_INPBContact *)self->_payer copyWithZone:zone];
  [(_INPBPaymentRecord *)v5 setPayer:v10];

  v11 = [(_INPBPaymentMethodValue *)self->_paymentMethod copyWithZone:zone];
  [(_INPBPaymentRecord *)v5 setPaymentMethod:v11];

  if ([(_INPBPaymentRecord *)self hasStatus])
  {
    [(_INPBPaymentRecord *)v5 setStatus:[(_INPBPaymentRecord *)self status]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBPaymentRecord *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBPaymentRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBPaymentRecord *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  currencyAmount = [(_INPBPaymentRecord *)self currencyAmount];

  if (currencyAmount)
  {
    currencyAmount2 = [(_INPBPaymentRecord *)self currencyAmount];
    PBDataWriterWriteSubmessage();
  }

  feeAmount = [(_INPBPaymentRecord *)self feeAmount];

  if (feeAmount)
  {
    feeAmount2 = [(_INPBPaymentRecord *)self feeAmount];
    PBDataWriterWriteSubmessage();
  }

  note = [(_INPBPaymentRecord *)self note];

  if (note)
  {
    note2 = [(_INPBPaymentRecord *)self note];
    PBDataWriterWriteSubmessage();
  }

  payee = [(_INPBPaymentRecord *)self payee];

  if (payee)
  {
    payee2 = [(_INPBPaymentRecord *)self payee];
    PBDataWriterWriteSubmessage();
  }

  payer = [(_INPBPaymentRecord *)self payer];

  if (payer)
  {
    payer2 = [(_INPBPaymentRecord *)self payer];
    PBDataWriterWriteSubmessage();
  }

  paymentMethod = [(_INPBPaymentRecord *)self paymentMethod];

  if (paymentMethod)
  {
    paymentMethod2 = [(_INPBPaymentRecord *)self paymentMethod];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBPaymentRecord *)self hasStatus])
  {
    status = self->_status;
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"PENDING"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"COMPLETED"])
  {
    v4 = 2;
  }

  else if ([statusCopy isEqualToString:@"CANCELED"])
  {
    v4 = 3;
  }

  else if ([statusCopy isEqualToString:@"FAILED"])
  {
    v4 = 4;
  }

  else if ([statusCopy isEqualToString:@"UNPAID"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setStatus:(int)status
{
  has = self->_has;
  if (status == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_status = status;
  }
}

@end