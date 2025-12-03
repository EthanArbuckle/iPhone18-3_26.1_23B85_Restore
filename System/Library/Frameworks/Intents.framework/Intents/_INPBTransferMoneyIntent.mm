@interface _INPBTransferMoneyIntent
- (BOOL)isEqual:(id)equal;
- (_INPBTransferMoneyIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setTransactionNote:(id)note;
- (void)writeTo:(id)to;
@end

@implementation _INPBTransferMoneyIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  fromAccount = [(_INPBTransferMoneyIntent *)self fromAccount];
  dictionaryRepresentation = [fromAccount dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"fromAccount"];

  intentMetadata = [(_INPBTransferMoneyIntent *)self intentMetadata];
  dictionaryRepresentation2 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"intentMetadata"];

  toAccount = [(_INPBTransferMoneyIntent *)self toAccount];
  dictionaryRepresentation3 = [toAccount dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"toAccount"];

  transactionAmount = [(_INPBTransferMoneyIntent *)self transactionAmount];
  dictionaryRepresentation4 = [transactionAmount dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"transactionAmount"];

  if (self->_transactionNote)
  {
    transactionNote = [(_INPBTransferMoneyIntent *)self transactionNote];
    v13 = [transactionNote copy];
    [dictionary setObject:v13 forKeyedSubscript:@"transactionNote"];
  }

  transactionScheduledDate = [(_INPBTransferMoneyIntent *)self transactionScheduledDate];
  dictionaryRepresentation5 = [transactionScheduledDate dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"transactionScheduledDate"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBFinancialAccountValue *)self->_fromAccount hash];
  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash]^ v3;
  v5 = [(_INPBFinancialAccountValue *)self->_toAccount hash];
  v6 = v4 ^ v5 ^ [(_INPBPaymentAmountValue *)self->_transactionAmount hash];
  v7 = [(NSString *)self->_transactionNote hash];
  return v6 ^ v7 ^ [(_INPBDateTimeRange *)self->_transactionScheduledDate hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  fromAccount = [(_INPBTransferMoneyIntent *)self fromAccount];
  fromAccount2 = [equalCopy fromAccount];
  if ((fromAccount != 0) == (fromAccount2 == 0))
  {
    goto LABEL_31;
  }

  fromAccount3 = [(_INPBTransferMoneyIntent *)self fromAccount];
  if (fromAccount3)
  {
    v8 = fromAccount3;
    fromAccount4 = [(_INPBTransferMoneyIntent *)self fromAccount];
    fromAccount5 = [equalCopy fromAccount];
    v11 = [fromAccount4 isEqual:fromAccount5];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  fromAccount = [(_INPBTransferMoneyIntent *)self intentMetadata];
  fromAccount2 = [equalCopy intentMetadata];
  if ((fromAccount != 0) == (fromAccount2 == 0))
  {
    goto LABEL_31;
  }

  intentMetadata = [(_INPBTransferMoneyIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v13 = intentMetadata;
    intentMetadata2 = [(_INPBTransferMoneyIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v16 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  fromAccount = [(_INPBTransferMoneyIntent *)self toAccount];
  fromAccount2 = [equalCopy toAccount];
  if ((fromAccount != 0) == (fromAccount2 == 0))
  {
    goto LABEL_31;
  }

  toAccount = [(_INPBTransferMoneyIntent *)self toAccount];
  if (toAccount)
  {
    v18 = toAccount;
    toAccount2 = [(_INPBTransferMoneyIntent *)self toAccount];
    toAccount3 = [equalCopy toAccount];
    v21 = [toAccount2 isEqual:toAccount3];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  fromAccount = [(_INPBTransferMoneyIntent *)self transactionAmount];
  fromAccount2 = [equalCopy transactionAmount];
  if ((fromAccount != 0) == (fromAccount2 == 0))
  {
    goto LABEL_31;
  }

  transactionAmount = [(_INPBTransferMoneyIntent *)self transactionAmount];
  if (transactionAmount)
  {
    v23 = transactionAmount;
    transactionAmount2 = [(_INPBTransferMoneyIntent *)self transactionAmount];
    transactionAmount3 = [equalCopy transactionAmount];
    v26 = [transactionAmount2 isEqual:transactionAmount3];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  fromAccount = [(_INPBTransferMoneyIntent *)self transactionNote];
  fromAccount2 = [equalCopy transactionNote];
  if ((fromAccount != 0) == (fromAccount2 == 0))
  {
    goto LABEL_31;
  }

  transactionNote = [(_INPBTransferMoneyIntent *)self transactionNote];
  if (transactionNote)
  {
    v28 = transactionNote;
    transactionNote2 = [(_INPBTransferMoneyIntent *)self transactionNote];
    transactionNote3 = [equalCopy transactionNote];
    v31 = [transactionNote2 isEqual:transactionNote3];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  fromAccount = [(_INPBTransferMoneyIntent *)self transactionScheduledDate];
  fromAccount2 = [equalCopy transactionScheduledDate];
  if ((fromAccount != 0) != (fromAccount2 == 0))
  {
    transactionScheduledDate = [(_INPBTransferMoneyIntent *)self transactionScheduledDate];
    if (!transactionScheduledDate)
    {

LABEL_35:
      v37 = 1;
      goto LABEL_33;
    }

    v33 = transactionScheduledDate;
    transactionScheduledDate2 = [(_INPBTransferMoneyIntent *)self transactionScheduledDate];
    transactionScheduledDate3 = [equalCopy transactionScheduledDate];
    v36 = [transactionScheduledDate2 isEqual:transactionScheduledDate3];

    if (v36)
    {
      goto LABEL_35;
    }
  }

  else
  {
LABEL_31:
  }

LABEL_32:
  v37 = 0;
LABEL_33:

  return v37;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBTransferMoneyIntent allocWithZone:](_INPBTransferMoneyIntent init];
  v6 = [(_INPBFinancialAccountValue *)self->_fromAccount copyWithZone:zone];
  [(_INPBTransferMoneyIntent *)v5 setFromAccount:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBTransferMoneyIntent *)v5 setIntentMetadata:v7];

  v8 = [(_INPBFinancialAccountValue *)self->_toAccount copyWithZone:zone];
  [(_INPBTransferMoneyIntent *)v5 setToAccount:v8];

  v9 = [(_INPBPaymentAmountValue *)self->_transactionAmount copyWithZone:zone];
  [(_INPBTransferMoneyIntent *)v5 setTransactionAmount:v9];

  v10 = [(NSString *)self->_transactionNote copyWithZone:zone];
  [(_INPBTransferMoneyIntent *)v5 setTransactionNote:v10];

  v11 = [(_INPBDateTimeRange *)self->_transactionScheduledDate copyWithZone:zone];
  [(_INPBTransferMoneyIntent *)v5 setTransactionScheduledDate:v11];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBTransferMoneyIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBTransferMoneyIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBTransferMoneyIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  fromAccount = [(_INPBTransferMoneyIntent *)self fromAccount];

  if (fromAccount)
  {
    fromAccount2 = [(_INPBTransferMoneyIntent *)self fromAccount];
    PBDataWriterWriteSubmessage();
  }

  intentMetadata = [(_INPBTransferMoneyIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBTransferMoneyIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  toAccount = [(_INPBTransferMoneyIntent *)self toAccount];

  if (toAccount)
  {
    toAccount2 = [(_INPBTransferMoneyIntent *)self toAccount];
    PBDataWriterWriteSubmessage();
  }

  transactionAmount = [(_INPBTransferMoneyIntent *)self transactionAmount];

  if (transactionAmount)
  {
    transactionAmount2 = [(_INPBTransferMoneyIntent *)self transactionAmount];
    PBDataWriterWriteSubmessage();
  }

  transactionNote = [(_INPBTransferMoneyIntent *)self transactionNote];

  if (transactionNote)
  {
    transactionNote = self->_transactionNote;
    PBDataWriterWriteStringField();
  }

  transactionScheduledDate = [(_INPBTransferMoneyIntent *)self transactionScheduledDate];

  v15 = toCopy;
  if (transactionScheduledDate)
  {
    transactionScheduledDate2 = [(_INPBTransferMoneyIntent *)self transactionScheduledDate];
    PBDataWriterWriteSubmessage();

    v15 = toCopy;
  }
}

- (void)setTransactionNote:(id)note
{
  v4 = [note copy];
  transactionNote = self->_transactionNote;
  self->_transactionNote = v4;

  MEMORY[0x1EEE66BB8](v4, transactionNote);
}

@end