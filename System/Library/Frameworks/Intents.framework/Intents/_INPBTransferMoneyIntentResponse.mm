@interface _INPBTransferMoneyIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBTransferMoneyIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setTransactionNote:(id)note;
- (void)writeTo:(id)to;
@end

@implementation _INPBTransferMoneyIntentResponse

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  fromAccount = [(_INPBTransferMoneyIntentResponse *)self fromAccount];
  dictionaryRepresentation = [fromAccount dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"fromAccount"];

  toAccount = [(_INPBTransferMoneyIntentResponse *)self toAccount];
  dictionaryRepresentation2 = [toAccount dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"toAccount"];

  transactionAmount = [(_INPBTransferMoneyIntentResponse *)self transactionAmount];
  dictionaryRepresentation3 = [transactionAmount dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"transactionAmount"];

  if (self->_transactionNote)
  {
    transactionNote = [(_INPBTransferMoneyIntentResponse *)self transactionNote];
    v11 = [transactionNote copy];
    [dictionary setObject:v11 forKeyedSubscript:@"transactionNote"];
  }

  transactionScheduledDate = [(_INPBTransferMoneyIntentResponse *)self transactionScheduledDate];
  dictionaryRepresentation4 = [transactionScheduledDate dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"transactionScheduledDate"];

  transferFee = [(_INPBTransferMoneyIntentResponse *)self transferFee];
  dictionaryRepresentation5 = [transferFee dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"transferFee"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBFinancialAccountValue *)self->_fromAccount hash];
  v4 = [(_INPBFinancialAccountValue *)self->_toAccount hash]^ v3;
  v5 = [(_INPBPaymentAmountValue *)self->_transactionAmount hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_transactionNote hash];
  v7 = [(_INPBDateTimeRange *)self->_transactionScheduledDate hash];
  return v6 ^ v7 ^ [(_INPBCurrencyAmountValue *)self->_transferFee hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  fromAccount = [(_INPBTransferMoneyIntentResponse *)self fromAccount];
  fromAccount2 = [equalCopy fromAccount];
  if ((fromAccount != 0) == (fromAccount2 == 0))
  {
    goto LABEL_31;
  }

  fromAccount3 = [(_INPBTransferMoneyIntentResponse *)self fromAccount];
  if (fromAccount3)
  {
    v8 = fromAccount3;
    fromAccount4 = [(_INPBTransferMoneyIntentResponse *)self fromAccount];
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

  fromAccount = [(_INPBTransferMoneyIntentResponse *)self toAccount];
  fromAccount2 = [equalCopy toAccount];
  if ((fromAccount != 0) == (fromAccount2 == 0))
  {
    goto LABEL_31;
  }

  toAccount = [(_INPBTransferMoneyIntentResponse *)self toAccount];
  if (toAccount)
  {
    v13 = toAccount;
    toAccount2 = [(_INPBTransferMoneyIntentResponse *)self toAccount];
    toAccount3 = [equalCopy toAccount];
    v16 = [toAccount2 isEqual:toAccount3];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  fromAccount = [(_INPBTransferMoneyIntentResponse *)self transactionAmount];
  fromAccount2 = [equalCopy transactionAmount];
  if ((fromAccount != 0) == (fromAccount2 == 0))
  {
    goto LABEL_31;
  }

  transactionAmount = [(_INPBTransferMoneyIntentResponse *)self transactionAmount];
  if (transactionAmount)
  {
    v18 = transactionAmount;
    transactionAmount2 = [(_INPBTransferMoneyIntentResponse *)self transactionAmount];
    transactionAmount3 = [equalCopy transactionAmount];
    v21 = [transactionAmount2 isEqual:transactionAmount3];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  fromAccount = [(_INPBTransferMoneyIntentResponse *)self transactionNote];
  fromAccount2 = [equalCopy transactionNote];
  if ((fromAccount != 0) == (fromAccount2 == 0))
  {
    goto LABEL_31;
  }

  transactionNote = [(_INPBTransferMoneyIntentResponse *)self transactionNote];
  if (transactionNote)
  {
    v23 = transactionNote;
    transactionNote2 = [(_INPBTransferMoneyIntentResponse *)self transactionNote];
    transactionNote3 = [equalCopy transactionNote];
    v26 = [transactionNote2 isEqual:transactionNote3];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  fromAccount = [(_INPBTransferMoneyIntentResponse *)self transactionScheduledDate];
  fromAccount2 = [equalCopy transactionScheduledDate];
  if ((fromAccount != 0) == (fromAccount2 == 0))
  {
    goto LABEL_31;
  }

  transactionScheduledDate = [(_INPBTransferMoneyIntentResponse *)self transactionScheduledDate];
  if (transactionScheduledDate)
  {
    v28 = transactionScheduledDate;
    transactionScheduledDate2 = [(_INPBTransferMoneyIntentResponse *)self transactionScheduledDate];
    transactionScheduledDate3 = [equalCopy transactionScheduledDate];
    v31 = [transactionScheduledDate2 isEqual:transactionScheduledDate3];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  fromAccount = [(_INPBTransferMoneyIntentResponse *)self transferFee];
  fromAccount2 = [equalCopy transferFee];
  if ((fromAccount != 0) != (fromAccount2 == 0))
  {
    transferFee = [(_INPBTransferMoneyIntentResponse *)self transferFee];
    if (!transferFee)
    {

LABEL_35:
      v37 = 1;
      goto LABEL_33;
    }

    v33 = transferFee;
    transferFee2 = [(_INPBTransferMoneyIntentResponse *)self transferFee];
    transferFee3 = [equalCopy transferFee];
    v36 = [transferFee2 isEqual:transferFee3];

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
  v5 = [+[_INPBTransferMoneyIntentResponse allocWithZone:](_INPBTransferMoneyIntentResponse init];
  v6 = [(_INPBFinancialAccountValue *)self->_fromAccount copyWithZone:zone];
  [(_INPBTransferMoneyIntentResponse *)v5 setFromAccount:v6];

  v7 = [(_INPBFinancialAccountValue *)self->_toAccount copyWithZone:zone];
  [(_INPBTransferMoneyIntentResponse *)v5 setToAccount:v7];

  v8 = [(_INPBPaymentAmountValue *)self->_transactionAmount copyWithZone:zone];
  [(_INPBTransferMoneyIntentResponse *)v5 setTransactionAmount:v8];

  v9 = [(NSString *)self->_transactionNote copyWithZone:zone];
  [(_INPBTransferMoneyIntentResponse *)v5 setTransactionNote:v9];

  v10 = [(_INPBDateTimeRange *)self->_transactionScheduledDate copyWithZone:zone];
  [(_INPBTransferMoneyIntentResponse *)v5 setTransactionScheduledDate:v10];

  v11 = [(_INPBCurrencyAmountValue *)self->_transferFee copyWithZone:zone];
  [(_INPBTransferMoneyIntentResponse *)v5 setTransferFee:v11];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBTransferMoneyIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBTransferMoneyIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBTransferMoneyIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  fromAccount = [(_INPBTransferMoneyIntentResponse *)self fromAccount];

  if (fromAccount)
  {
    fromAccount2 = [(_INPBTransferMoneyIntentResponse *)self fromAccount];
    PBDataWriterWriteSubmessage();
  }

  toAccount = [(_INPBTransferMoneyIntentResponse *)self toAccount];

  if (toAccount)
  {
    toAccount2 = [(_INPBTransferMoneyIntentResponse *)self toAccount];
    PBDataWriterWriteSubmessage();
  }

  transactionAmount = [(_INPBTransferMoneyIntentResponse *)self transactionAmount];

  if (transactionAmount)
  {
    transactionAmount2 = [(_INPBTransferMoneyIntentResponse *)self transactionAmount];
    PBDataWriterWriteSubmessage();
  }

  transactionNote = [(_INPBTransferMoneyIntentResponse *)self transactionNote];

  if (transactionNote)
  {
    transactionNote = self->_transactionNote;
    PBDataWriterWriteStringField();
  }

  transactionScheduledDate = [(_INPBTransferMoneyIntentResponse *)self transactionScheduledDate];

  if (transactionScheduledDate)
  {
    transactionScheduledDate2 = [(_INPBTransferMoneyIntentResponse *)self transactionScheduledDate];
    PBDataWriterWriteSubmessage();
  }

  transferFee = [(_INPBTransferMoneyIntentResponse *)self transferFee];

  v15 = toCopy;
  if (transferFee)
  {
    transferFee2 = [(_INPBTransferMoneyIntentResponse *)self transferFee];
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