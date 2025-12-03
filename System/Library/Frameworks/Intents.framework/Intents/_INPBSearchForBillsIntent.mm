@interface _INPBSearchForBillsIntent
- (BOOL)isEqual:(id)equal;
- (_INPBSearchForBillsIntent)initWithCoder:(id)coder;
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

@implementation _INPBSearchForBillsIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  billPayee = [(_INPBSearchForBillsIntent *)self billPayee];
  dictionaryRepresentation = [billPayee dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"billPayee"];

  if ([(_INPBSearchForBillsIntent *)self hasBillType])
  {
    billType = [(_INPBSearchForBillsIntent *)self billType];
    if ((billType - 1) >= 0x16)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", billType];
    }

    else
    {
      v7 = off_1E7283A08[(billType - 1)];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"billType"];
  }

  dueDateRange = [(_INPBSearchForBillsIntent *)self dueDateRange];
  dictionaryRepresentation2 = [dueDateRange dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"dueDateRange"];

  intentMetadata = [(_INPBSearchForBillsIntent *)self intentMetadata];
  dictionaryRepresentation3 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"intentMetadata"];

  paymentDateRange = [(_INPBSearchForBillsIntent *)self paymentDateRange];
  dictionaryRepresentation4 = [paymentDateRange dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"paymentDateRange"];

  if ([(_INPBSearchForBillsIntent *)self hasStatus])
  {
    status = [(_INPBSearchForBillsIntent *)self status];
    if ((status - 1) >= 5)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", status];
    }

    else
    {
      v15 = off_1E7283AB8[(status - 1)];
    }

    [dictionary setObject:v15 forKeyedSubscript:@"status"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBBillPayeeValue *)self->_billPayee hash];
  if ([(_INPBSearchForBillsIntent *)self hasBillType])
  {
    v4 = 2654435761 * self->_billType;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(_INPBDateTimeRange *)self->_dueDateRange hash];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v7 = [(_INPBDateTimeRange *)self->_paymentDateRange hash];
  if ([(_INPBSearchForBillsIntent *)self hasStatus])
  {
    v8 = 2654435761 * self->_status;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  billPayee = [(_INPBSearchForBillsIntent *)self billPayee];
  billPayee2 = [equalCopy billPayee];
  if ((billPayee != 0) == (billPayee2 == 0))
  {
    goto LABEL_25;
  }

  billPayee3 = [(_INPBSearchForBillsIntent *)self billPayee];
  if (billPayee3)
  {
    v8 = billPayee3;
    billPayee4 = [(_INPBSearchForBillsIntent *)self billPayee];
    billPayee5 = [equalCopy billPayee];
    v11 = [billPayee4 isEqual:billPayee5];

    if (!v11)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  hasBillType = [(_INPBSearchForBillsIntent *)self hasBillType];
  if (hasBillType != [equalCopy hasBillType])
  {
    goto LABEL_26;
  }

  if ([(_INPBSearchForBillsIntent *)self hasBillType])
  {
    if ([equalCopy hasBillType])
    {
      billType = self->_billType;
      if (billType != [equalCopy billType])
      {
        goto LABEL_26;
      }
    }
  }

  billPayee = [(_INPBSearchForBillsIntent *)self dueDateRange];
  billPayee2 = [equalCopy dueDateRange];
  if ((billPayee != 0) == (billPayee2 == 0))
  {
    goto LABEL_25;
  }

  dueDateRange = [(_INPBSearchForBillsIntent *)self dueDateRange];
  if (dueDateRange)
  {
    v15 = dueDateRange;
    dueDateRange2 = [(_INPBSearchForBillsIntent *)self dueDateRange];
    dueDateRange3 = [equalCopy dueDateRange];
    v18 = [dueDateRange2 isEqual:dueDateRange3];

    if (!v18)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  billPayee = [(_INPBSearchForBillsIntent *)self intentMetadata];
  billPayee2 = [equalCopy intentMetadata];
  if ((billPayee != 0) == (billPayee2 == 0))
  {
    goto LABEL_25;
  }

  intentMetadata = [(_INPBSearchForBillsIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v20 = intentMetadata;
    intentMetadata2 = [(_INPBSearchForBillsIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v23 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v23)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  billPayee = [(_INPBSearchForBillsIntent *)self paymentDateRange];
  billPayee2 = [equalCopy paymentDateRange];
  if ((billPayee != 0) == (billPayee2 == 0))
  {
LABEL_25:

    goto LABEL_26;
  }

  paymentDateRange = [(_INPBSearchForBillsIntent *)self paymentDateRange];
  if (paymentDateRange)
  {
    v25 = paymentDateRange;
    paymentDateRange2 = [(_INPBSearchForBillsIntent *)self paymentDateRange];
    paymentDateRange3 = [equalCopy paymentDateRange];
    v28 = [paymentDateRange2 isEqual:paymentDateRange3];

    if (!v28)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  hasStatus = [(_INPBSearchForBillsIntent *)self hasStatus];
  if (hasStatus == [equalCopy hasStatus])
  {
    if (!-[_INPBSearchForBillsIntent hasStatus](self, "hasStatus") || ![equalCopy hasStatus] || (status = self->_status, status == objc_msgSend(equalCopy, "status")))
    {
      v29 = 1;
      goto LABEL_27;
    }
  }

LABEL_26:
  v29 = 0;
LABEL_27:

  return v29;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSearchForBillsIntent allocWithZone:](_INPBSearchForBillsIntent init];
  v6 = [(_INPBBillPayeeValue *)self->_billPayee copyWithZone:zone];
  [(_INPBSearchForBillsIntent *)v5 setBillPayee:v6];

  if ([(_INPBSearchForBillsIntent *)self hasBillType])
  {
    [(_INPBSearchForBillsIntent *)v5 setBillType:[(_INPBSearchForBillsIntent *)self billType]];
  }

  v7 = [(_INPBDateTimeRange *)self->_dueDateRange copyWithZone:zone];
  [(_INPBSearchForBillsIntent *)v5 setDueDateRange:v7];

  v8 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBSearchForBillsIntent *)v5 setIntentMetadata:v8];

  v9 = [(_INPBDateTimeRange *)self->_paymentDateRange copyWithZone:zone];
  [(_INPBSearchForBillsIntent *)v5 setPaymentDateRange:v9];

  if ([(_INPBSearchForBillsIntent *)self hasStatus])
  {
    [(_INPBSearchForBillsIntent *)v5 setStatus:[(_INPBSearchForBillsIntent *)self status]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSearchForBillsIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSearchForBillsIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSearchForBillsIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  billPayee = [(_INPBSearchForBillsIntent *)self billPayee];

  if (billPayee)
  {
    billPayee2 = [(_INPBSearchForBillsIntent *)self billPayee];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSearchForBillsIntent *)self hasBillType])
  {
    billType = self->_billType;
    PBDataWriterWriteInt32Field();
  }

  dueDateRange = [(_INPBSearchForBillsIntent *)self dueDateRange];

  if (dueDateRange)
  {
    dueDateRange2 = [(_INPBSearchForBillsIntent *)self dueDateRange];
    PBDataWriterWriteSubmessage();
  }

  intentMetadata = [(_INPBSearchForBillsIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBSearchForBillsIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  paymentDateRange = [(_INPBSearchForBillsIntent *)self paymentDateRange];

  if (paymentDateRange)
  {
    paymentDateRange2 = [(_INPBSearchForBillsIntent *)self paymentDateRange];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSearchForBillsIntent *)self hasStatus])
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