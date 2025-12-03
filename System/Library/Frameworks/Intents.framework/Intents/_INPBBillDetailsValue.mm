@interface _INPBBillDetailsValue
- (BOOL)isEqual:(id)equal;
- (_INPBBillDetailsValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsBillType:(id)type;
- (int)StringAsStatus:(id)status;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setBillType:(int)type;
- (void)setHasStatus:(BOOL)status;
- (void)setStatus:(int)status;
- (void)writeTo:(id)to;
@end

@implementation _INPBBillDetailsValue

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  amountDue = [(_INPBBillDetailsValue *)self amountDue];
  dictionaryRepresentation = [amountDue dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"amountDue"];

  billPayee = [(_INPBBillDetailsValue *)self billPayee];
  dictionaryRepresentation2 = [billPayee dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"billPayee"];

  if ([(_INPBBillDetailsValue *)self hasBillType])
  {
    billType = [(_INPBBillDetailsValue *)self billType];
    if ((billType - 1) >= 0x16)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", billType];
    }

    else
    {
      v9 = off_1E7280788[(billType - 1)];
    }

    [dictionary setObject:v9 forKeyedSubscript:@"billType"];
  }

  dueDate = [(_INPBBillDetailsValue *)self dueDate];
  dictionaryRepresentation3 = [dueDate dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"dueDate"];

  lateFee = [(_INPBBillDetailsValue *)self lateFee];
  dictionaryRepresentation4 = [lateFee dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"lateFee"];

  minimumDue = [(_INPBBillDetailsValue *)self minimumDue];
  dictionaryRepresentation5 = [minimumDue dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"minimumDue"];

  paymentDate = [(_INPBBillDetailsValue *)self paymentDate];
  dictionaryRepresentation6 = [paymentDate dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"paymentDate"];

  if ([(_INPBBillDetailsValue *)self hasStatus])
  {
    status = [(_INPBBillDetailsValue *)self status];
    if ((status - 1) >= 5)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", status];
    }

    else
    {
      v19 = off_1E7280838[(status - 1)];
    }

    [dictionary setObject:v19 forKeyedSubscript:@"status"];
  }

  valueMetadata = [(_INPBBillDetailsValue *)self valueMetadata];
  dictionaryRepresentation7 = [valueMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"valueMetadata"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBCurrencyAmountValue *)self->_amountDue hash];
  v4 = [(_INPBBillPayeeValue *)self->_billPayee hash];
  if ([(_INPBBillDetailsValue *)self hasBillType])
  {
    v5 = 2654435761 * self->_billType;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(_INPBDateTime *)self->_dueDate hash];
  v7 = [(_INPBCurrencyAmountValue *)self->_lateFee hash];
  v8 = [(_INPBCurrencyAmountValue *)self->_minimumDue hash];
  v9 = [(_INPBDateTime *)self->_paymentDate hash];
  if ([(_INPBBillDetailsValue *)self hasStatus])
  {
    v10 = 2654435761 * self->_status;
  }

  else
  {
    v10 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ [(_INPBValueMetadata *)self->_valueMetadata hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_45;
  }

  amountDue = [(_INPBBillDetailsValue *)self amountDue];
  amountDue2 = [equalCopy amountDue];
  if ((amountDue != 0) == (amountDue2 == 0))
  {
    goto LABEL_44;
  }

  amountDue3 = [(_INPBBillDetailsValue *)self amountDue];
  if (amountDue3)
  {
    v8 = amountDue3;
    amountDue4 = [(_INPBBillDetailsValue *)self amountDue];
    amountDue5 = [equalCopy amountDue];
    v11 = [amountDue4 isEqual:amountDue5];

    if (!v11)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  amountDue = [(_INPBBillDetailsValue *)self billPayee];
  amountDue2 = [equalCopy billPayee];
  if ((amountDue != 0) == (amountDue2 == 0))
  {
    goto LABEL_44;
  }

  billPayee = [(_INPBBillDetailsValue *)self billPayee];
  if (billPayee)
  {
    v13 = billPayee;
    billPayee2 = [(_INPBBillDetailsValue *)self billPayee];
    billPayee3 = [equalCopy billPayee];
    v16 = [billPayee2 isEqual:billPayee3];

    if (!v16)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  hasBillType = [(_INPBBillDetailsValue *)self hasBillType];
  if (hasBillType != [equalCopy hasBillType])
  {
    goto LABEL_45;
  }

  if ([(_INPBBillDetailsValue *)self hasBillType])
  {
    if ([equalCopy hasBillType])
    {
      billType = self->_billType;
      if (billType != [equalCopy billType])
      {
        goto LABEL_45;
      }
    }
  }

  amountDue = [(_INPBBillDetailsValue *)self dueDate];
  amountDue2 = [equalCopy dueDate];
  if ((amountDue != 0) == (amountDue2 == 0))
  {
    goto LABEL_44;
  }

  dueDate = [(_INPBBillDetailsValue *)self dueDate];
  if (dueDate)
  {
    v20 = dueDate;
    dueDate2 = [(_INPBBillDetailsValue *)self dueDate];
    dueDate3 = [equalCopy dueDate];
    v23 = [dueDate2 isEqual:dueDate3];

    if (!v23)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  amountDue = [(_INPBBillDetailsValue *)self lateFee];
  amountDue2 = [equalCopy lateFee];
  if ((amountDue != 0) == (amountDue2 == 0))
  {
    goto LABEL_44;
  }

  lateFee = [(_INPBBillDetailsValue *)self lateFee];
  if (lateFee)
  {
    v25 = lateFee;
    lateFee2 = [(_INPBBillDetailsValue *)self lateFee];
    lateFee3 = [equalCopy lateFee];
    v28 = [lateFee2 isEqual:lateFee3];

    if (!v28)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  amountDue = [(_INPBBillDetailsValue *)self minimumDue];
  amountDue2 = [equalCopy minimumDue];
  if ((amountDue != 0) == (amountDue2 == 0))
  {
    goto LABEL_44;
  }

  minimumDue = [(_INPBBillDetailsValue *)self minimumDue];
  if (minimumDue)
  {
    v30 = minimumDue;
    minimumDue2 = [(_INPBBillDetailsValue *)self minimumDue];
    minimumDue3 = [equalCopy minimumDue];
    v33 = [minimumDue2 isEqual:minimumDue3];

    if (!v33)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  amountDue = [(_INPBBillDetailsValue *)self paymentDate];
  amountDue2 = [equalCopy paymentDate];
  if ((amountDue != 0) == (amountDue2 == 0))
  {
    goto LABEL_44;
  }

  paymentDate = [(_INPBBillDetailsValue *)self paymentDate];
  if (paymentDate)
  {
    v35 = paymentDate;
    paymentDate2 = [(_INPBBillDetailsValue *)self paymentDate];
    paymentDate3 = [equalCopy paymentDate];
    v38 = [paymentDate2 isEqual:paymentDate3];

    if (!v38)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  hasStatus = [(_INPBBillDetailsValue *)self hasStatus];
  if (hasStatus != [equalCopy hasStatus])
  {
    goto LABEL_45;
  }

  if ([(_INPBBillDetailsValue *)self hasStatus])
  {
    if ([equalCopy hasStatus])
    {
      status = self->_status;
      if (status != [equalCopy status])
      {
        goto LABEL_45;
      }
    }
  }

  amountDue = [(_INPBBillDetailsValue *)self valueMetadata];
  amountDue2 = [equalCopy valueMetadata];
  if ((amountDue != 0) != (amountDue2 == 0))
  {
    valueMetadata = [(_INPBBillDetailsValue *)self valueMetadata];
    if (!valueMetadata)
    {

LABEL_48:
      v46 = 1;
      goto LABEL_46;
    }

    v42 = valueMetadata;
    valueMetadata2 = [(_INPBBillDetailsValue *)self valueMetadata];
    valueMetadata3 = [equalCopy valueMetadata];
    v45 = [valueMetadata2 isEqual:valueMetadata3];

    if (v45)
    {
      goto LABEL_48;
    }
  }

  else
  {
LABEL_44:
  }

LABEL_45:
  v46 = 0;
LABEL_46:

  return v46;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBBillDetailsValue allocWithZone:](_INPBBillDetailsValue init];
  v6 = [(_INPBCurrencyAmountValue *)self->_amountDue copyWithZone:zone];
  [(_INPBBillDetailsValue *)v5 setAmountDue:v6];

  v7 = [(_INPBBillPayeeValue *)self->_billPayee copyWithZone:zone];
  [(_INPBBillDetailsValue *)v5 setBillPayee:v7];

  if ([(_INPBBillDetailsValue *)self hasBillType])
  {
    [(_INPBBillDetailsValue *)v5 setBillType:[(_INPBBillDetailsValue *)self billType]];
  }

  v8 = [(_INPBDateTime *)self->_dueDate copyWithZone:zone];
  [(_INPBBillDetailsValue *)v5 setDueDate:v8];

  v9 = [(_INPBCurrencyAmountValue *)self->_lateFee copyWithZone:zone];
  [(_INPBBillDetailsValue *)v5 setLateFee:v9];

  v10 = [(_INPBCurrencyAmountValue *)self->_minimumDue copyWithZone:zone];
  [(_INPBBillDetailsValue *)v5 setMinimumDue:v10];

  v11 = [(_INPBDateTime *)self->_paymentDate copyWithZone:zone];
  [(_INPBBillDetailsValue *)v5 setPaymentDate:v11];

  if ([(_INPBBillDetailsValue *)self hasStatus])
  {
    [(_INPBBillDetailsValue *)v5 setStatus:[(_INPBBillDetailsValue *)self status]];
  }

  v12 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:zone];
  [(_INPBBillDetailsValue *)v5 setValueMetadata:v12];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBBillDetailsValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBBillDetailsValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBBillDetailsValue *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  amountDue = [(_INPBBillDetailsValue *)self amountDue];

  if (amountDue)
  {
    amountDue2 = [(_INPBBillDetailsValue *)self amountDue];
    PBDataWriterWriteSubmessage();
  }

  billPayee = [(_INPBBillDetailsValue *)self billPayee];

  if (billPayee)
  {
    billPayee2 = [(_INPBBillDetailsValue *)self billPayee];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBBillDetailsValue *)self hasBillType])
  {
    billType = self->_billType;
    PBDataWriterWriteInt32Field();
  }

  dueDate = [(_INPBBillDetailsValue *)self dueDate];

  if (dueDate)
  {
    dueDate2 = [(_INPBBillDetailsValue *)self dueDate];
    PBDataWriterWriteSubmessage();
  }

  lateFee = [(_INPBBillDetailsValue *)self lateFee];

  if (lateFee)
  {
    lateFee2 = [(_INPBBillDetailsValue *)self lateFee];
    PBDataWriterWriteSubmessage();
  }

  minimumDue = [(_INPBBillDetailsValue *)self minimumDue];

  if (minimumDue)
  {
    minimumDue2 = [(_INPBBillDetailsValue *)self minimumDue];
    PBDataWriterWriteSubmessage();
  }

  paymentDate = [(_INPBBillDetailsValue *)self paymentDate];

  if (paymentDate)
  {
    paymentDate2 = [(_INPBBillDetailsValue *)self paymentDate];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBBillDetailsValue *)self hasStatus])
  {
    status = self->_status;
    PBDataWriterWriteInt32Field();
  }

  valueMetadata = [(_INPBBillDetailsValue *)self valueMetadata];

  v19 = toCopy;
  if (valueMetadata)
  {
    valueMetadata2 = [(_INPBBillDetailsValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();

    v19 = toCopy;
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

- (void)setHasStatus:(BOOL)status
{
  if (status)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setStatus:(int)status
{
  has = self->_has;
  if (status == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_status = status;
  }
}

- (int)StringAsBillType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"AUTO_INSURANCE"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"CABLE"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"CAR_LEASE"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"CAR_LOAN"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"CREDIT_CARD"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"ELECTRICITY"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"GAS"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"GARBAGE_AND_RECYCLING"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"HEALTH_INSURANCE"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"HOME_INSURANCE"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"INTERNET"])
  {
    v4 = 11;
  }

  else if ([typeCopy isEqualToString:@"LIFE_INSURANCE"])
  {
    v4 = 12;
  }

  else if ([typeCopy isEqualToString:@"MORTGAGE"])
  {
    v4 = 13;
  }

  else if ([typeCopy isEqualToString:@"MUSIC_STREAMING"])
  {
    v4 = 14;
  }

  else if ([typeCopy isEqualToString:@"PHONE"])
  {
    v4 = 15;
  }

  else if ([typeCopy isEqualToString:@"RENT"])
  {
    v4 = 16;
  }

  else if ([typeCopy isEqualToString:@"SEWER"])
  {
    v4 = 17;
  }

  else if ([typeCopy isEqualToString:@"STUDENT_LOAN"])
  {
    v4 = 18;
  }

  else if ([typeCopy isEqualToString:@"TRAFFIC_TICKET"])
  {
    v4 = 19;
  }

  else if ([typeCopy isEqualToString:@"TUITION"])
  {
    v4 = 20;
  }

  else if ([typeCopy isEqualToString:@"UTILITIES"])
  {
    v4 = 21;
  }

  else if ([typeCopy isEqualToString:@"WATER"])
  {
    v4 = 22;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setBillType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_billType = type;
  }
}

@end