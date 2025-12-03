@interface _INPBPayBillIntent
- (BOOL)isEqual:(id)equal;
- (_INPBPayBillIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsBillType:(id)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setBillType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBPayBillIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  billPayee = [(_INPBPayBillIntent *)self billPayee];
  dictionaryRepresentation = [billPayee dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"billPayee"];

  if ([(_INPBPayBillIntent *)self hasBillType])
  {
    billType = [(_INPBPayBillIntent *)self billType];
    if ((billType - 1) >= 0x16)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", billType];
    }

    else
    {
      v7 = off_1E72819B8[(billType - 1)];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"billType"];
  }

  dueDate = [(_INPBPayBillIntent *)self dueDate];
  dictionaryRepresentation2 = [dueDate dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"dueDate"];

  fromAccount = [(_INPBPayBillIntent *)self fromAccount];
  dictionaryRepresentation3 = [fromAccount dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"fromAccount"];

  intentMetadata = [(_INPBPayBillIntent *)self intentMetadata];
  dictionaryRepresentation4 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"intentMetadata"];

  transactionAmount = [(_INPBPayBillIntent *)self transactionAmount];
  dictionaryRepresentation5 = [transactionAmount dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"transactionAmount"];

  transactionNote = [(_INPBPayBillIntent *)self transactionNote];
  dictionaryRepresentation6 = [transactionNote dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"transactionNote"];

  transactionScheduledDate = [(_INPBPayBillIntent *)self transactionScheduledDate];
  dictionaryRepresentation7 = [transactionScheduledDate dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"transactionScheduledDate"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBBillPayeeValue *)self->_billPayee hash];
  if ([(_INPBPayBillIntent *)self hasBillType])
  {
    v4 = 2654435761 * self->_billType;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(_INPBDateTimeRange *)self->_dueDate hash];
  v7 = v5 ^ v6 ^ [(_INPBFinancialAccountValue *)self->_fromAccount hash];
  v8 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v9 = v8 ^ [(_INPBPaymentAmountValue *)self->_transactionAmount hash];
  v10 = v7 ^ v9 ^ [(_INPBString *)self->_transactionNote hash];
  return v10 ^ [(_INPBDateTimeRange *)self->_transactionScheduledDate hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_41;
  }

  billPayee = [(_INPBPayBillIntent *)self billPayee];
  billPayee2 = [equalCopy billPayee];
  if ((billPayee != 0) == (billPayee2 == 0))
  {
    goto LABEL_40;
  }

  billPayee3 = [(_INPBPayBillIntent *)self billPayee];
  if (billPayee3)
  {
    v8 = billPayee3;
    billPayee4 = [(_INPBPayBillIntent *)self billPayee];
    billPayee5 = [equalCopy billPayee];
    v11 = [billPayee4 isEqual:billPayee5];

    if (!v11)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  hasBillType = [(_INPBPayBillIntent *)self hasBillType];
  if (hasBillType != [equalCopy hasBillType])
  {
    goto LABEL_41;
  }

  if ([(_INPBPayBillIntent *)self hasBillType])
  {
    if ([equalCopy hasBillType])
    {
      billType = self->_billType;
      if (billType != [equalCopy billType])
      {
        goto LABEL_41;
      }
    }
  }

  billPayee = [(_INPBPayBillIntent *)self dueDate];
  billPayee2 = [equalCopy dueDate];
  if ((billPayee != 0) == (billPayee2 == 0))
  {
    goto LABEL_40;
  }

  dueDate = [(_INPBPayBillIntent *)self dueDate];
  if (dueDate)
  {
    v15 = dueDate;
    dueDate2 = [(_INPBPayBillIntent *)self dueDate];
    dueDate3 = [equalCopy dueDate];
    v18 = [dueDate2 isEqual:dueDate3];

    if (!v18)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  billPayee = [(_INPBPayBillIntent *)self fromAccount];
  billPayee2 = [equalCopy fromAccount];
  if ((billPayee != 0) == (billPayee2 == 0))
  {
    goto LABEL_40;
  }

  fromAccount = [(_INPBPayBillIntent *)self fromAccount];
  if (fromAccount)
  {
    v20 = fromAccount;
    fromAccount2 = [(_INPBPayBillIntent *)self fromAccount];
    fromAccount3 = [equalCopy fromAccount];
    v23 = [fromAccount2 isEqual:fromAccount3];

    if (!v23)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  billPayee = [(_INPBPayBillIntent *)self intentMetadata];
  billPayee2 = [equalCopy intentMetadata];
  if ((billPayee != 0) == (billPayee2 == 0))
  {
    goto LABEL_40;
  }

  intentMetadata = [(_INPBPayBillIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v25 = intentMetadata;
    intentMetadata2 = [(_INPBPayBillIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v28 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v28)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  billPayee = [(_INPBPayBillIntent *)self transactionAmount];
  billPayee2 = [equalCopy transactionAmount];
  if ((billPayee != 0) == (billPayee2 == 0))
  {
    goto LABEL_40;
  }

  transactionAmount = [(_INPBPayBillIntent *)self transactionAmount];
  if (transactionAmount)
  {
    v30 = transactionAmount;
    transactionAmount2 = [(_INPBPayBillIntent *)self transactionAmount];
    transactionAmount3 = [equalCopy transactionAmount];
    v33 = [transactionAmount2 isEqual:transactionAmount3];

    if (!v33)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  billPayee = [(_INPBPayBillIntent *)self transactionNote];
  billPayee2 = [equalCopy transactionNote];
  if ((billPayee != 0) == (billPayee2 == 0))
  {
    goto LABEL_40;
  }

  transactionNote = [(_INPBPayBillIntent *)self transactionNote];
  if (transactionNote)
  {
    v35 = transactionNote;
    transactionNote2 = [(_INPBPayBillIntent *)self transactionNote];
    transactionNote3 = [equalCopy transactionNote];
    v38 = [transactionNote2 isEqual:transactionNote3];

    if (!v38)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  billPayee = [(_INPBPayBillIntent *)self transactionScheduledDate];
  billPayee2 = [equalCopy transactionScheduledDate];
  if ((billPayee != 0) != (billPayee2 == 0))
  {
    transactionScheduledDate = [(_INPBPayBillIntent *)self transactionScheduledDate];
    if (!transactionScheduledDate)
    {

LABEL_44:
      v44 = 1;
      goto LABEL_42;
    }

    v40 = transactionScheduledDate;
    transactionScheduledDate2 = [(_INPBPayBillIntent *)self transactionScheduledDate];
    transactionScheduledDate3 = [equalCopy transactionScheduledDate];
    v43 = [transactionScheduledDate2 isEqual:transactionScheduledDate3];

    if (v43)
    {
      goto LABEL_44;
    }
  }

  else
  {
LABEL_40:
  }

LABEL_41:
  v44 = 0;
LABEL_42:

  return v44;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBPayBillIntent allocWithZone:](_INPBPayBillIntent init];
  v6 = [(_INPBBillPayeeValue *)self->_billPayee copyWithZone:zone];
  [(_INPBPayBillIntent *)v5 setBillPayee:v6];

  if ([(_INPBPayBillIntent *)self hasBillType])
  {
    [(_INPBPayBillIntent *)v5 setBillType:[(_INPBPayBillIntent *)self billType]];
  }

  v7 = [(_INPBDateTimeRange *)self->_dueDate copyWithZone:zone];
  [(_INPBPayBillIntent *)v5 setDueDate:v7];

  v8 = [(_INPBFinancialAccountValue *)self->_fromAccount copyWithZone:zone];
  [(_INPBPayBillIntent *)v5 setFromAccount:v8];

  v9 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBPayBillIntent *)v5 setIntentMetadata:v9];

  v10 = [(_INPBPaymentAmountValue *)self->_transactionAmount copyWithZone:zone];
  [(_INPBPayBillIntent *)v5 setTransactionAmount:v10];

  v11 = [(_INPBString *)self->_transactionNote copyWithZone:zone];
  [(_INPBPayBillIntent *)v5 setTransactionNote:v11];

  v12 = [(_INPBDateTimeRange *)self->_transactionScheduledDate copyWithZone:zone];
  [(_INPBPayBillIntent *)v5 setTransactionScheduledDate:v12];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBPayBillIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBPayBillIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBPayBillIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  billPayee = [(_INPBPayBillIntent *)self billPayee];

  if (billPayee)
  {
    billPayee2 = [(_INPBPayBillIntent *)self billPayee];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBPayBillIntent *)self hasBillType])
  {
    billType = self->_billType;
    PBDataWriterWriteInt32Field();
  }

  dueDate = [(_INPBPayBillIntent *)self dueDate];

  if (dueDate)
  {
    dueDate2 = [(_INPBPayBillIntent *)self dueDate];
    PBDataWriterWriteSubmessage();
  }

  fromAccount = [(_INPBPayBillIntent *)self fromAccount];

  if (fromAccount)
  {
    fromAccount2 = [(_INPBPayBillIntent *)self fromAccount];
    PBDataWriterWriteSubmessage();
  }

  intentMetadata = [(_INPBPayBillIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBPayBillIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  transactionAmount = [(_INPBPayBillIntent *)self transactionAmount];

  if (transactionAmount)
  {
    transactionAmount2 = [(_INPBPayBillIntent *)self transactionAmount];
    PBDataWriterWriteSubmessage();
  }

  transactionNote = [(_INPBPayBillIntent *)self transactionNote];

  if (transactionNote)
  {
    transactionNote2 = [(_INPBPayBillIntent *)self transactionNote];
    PBDataWriterWriteSubmessage();
  }

  transactionScheduledDate = [(_INPBPayBillIntent *)self transactionScheduledDate];

  v18 = toCopy;
  if (transactionScheduledDate)
  {
    transactionScheduledDate2 = [(_INPBPayBillIntent *)self transactionScheduledDate];
    PBDataWriterWriteSubmessage();

    v18 = toCopy;
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