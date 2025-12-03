@interface _INPBPayBillIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBPayBillIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBPayBillIntentResponse

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  billDetails = [(_INPBPayBillIntentResponse *)self billDetails];
  dictionaryRepresentation = [billDetails dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"billDetails"];

  fromAccount = [(_INPBPayBillIntentResponse *)self fromAccount];
  dictionaryRepresentation2 = [fromAccount dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"fromAccount"];

  transactionAmount = [(_INPBPayBillIntentResponse *)self transactionAmount];
  dictionaryRepresentation3 = [transactionAmount dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"transactionAmount"];

  transactionNote = [(_INPBPayBillIntentResponse *)self transactionNote];
  dictionaryRepresentation4 = [transactionNote dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"transactionNote"];

  transactionScheduledDate = [(_INPBPayBillIntentResponse *)self transactionScheduledDate];
  dictionaryRepresentation5 = [transactionScheduledDate dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"transactionScheduledDate"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBBillDetailsValue *)self->_billDetails hash];
  v4 = [(_INPBFinancialAccountValue *)self->_fromAccount hash]^ v3;
  v5 = [(_INPBPaymentAmountValue *)self->_transactionAmount hash];
  v6 = v4 ^ v5 ^ [(_INPBString *)self->_transactionNote hash];
  return v6 ^ [(_INPBDateTimeRange *)self->_transactionScheduledDate hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  billDetails = [(_INPBPayBillIntentResponse *)self billDetails];
  billDetails2 = [equalCopy billDetails];
  if ((billDetails != 0) == (billDetails2 == 0))
  {
    goto LABEL_26;
  }

  billDetails3 = [(_INPBPayBillIntentResponse *)self billDetails];
  if (billDetails3)
  {
    v8 = billDetails3;
    billDetails4 = [(_INPBPayBillIntentResponse *)self billDetails];
    billDetails5 = [equalCopy billDetails];
    v11 = [billDetails4 isEqual:billDetails5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  billDetails = [(_INPBPayBillIntentResponse *)self fromAccount];
  billDetails2 = [equalCopy fromAccount];
  if ((billDetails != 0) == (billDetails2 == 0))
  {
    goto LABEL_26;
  }

  fromAccount = [(_INPBPayBillIntentResponse *)self fromAccount];
  if (fromAccount)
  {
    v13 = fromAccount;
    fromAccount2 = [(_INPBPayBillIntentResponse *)self fromAccount];
    fromAccount3 = [equalCopy fromAccount];
    v16 = [fromAccount2 isEqual:fromAccount3];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  billDetails = [(_INPBPayBillIntentResponse *)self transactionAmount];
  billDetails2 = [equalCopy transactionAmount];
  if ((billDetails != 0) == (billDetails2 == 0))
  {
    goto LABEL_26;
  }

  transactionAmount = [(_INPBPayBillIntentResponse *)self transactionAmount];
  if (transactionAmount)
  {
    v18 = transactionAmount;
    transactionAmount2 = [(_INPBPayBillIntentResponse *)self transactionAmount];
    transactionAmount3 = [equalCopy transactionAmount];
    v21 = [transactionAmount2 isEqual:transactionAmount3];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  billDetails = [(_INPBPayBillIntentResponse *)self transactionNote];
  billDetails2 = [equalCopy transactionNote];
  if ((billDetails != 0) == (billDetails2 == 0))
  {
    goto LABEL_26;
  }

  transactionNote = [(_INPBPayBillIntentResponse *)self transactionNote];
  if (transactionNote)
  {
    v23 = transactionNote;
    transactionNote2 = [(_INPBPayBillIntentResponse *)self transactionNote];
    transactionNote3 = [equalCopy transactionNote];
    v26 = [transactionNote2 isEqual:transactionNote3];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  billDetails = [(_INPBPayBillIntentResponse *)self transactionScheduledDate];
  billDetails2 = [equalCopy transactionScheduledDate];
  if ((billDetails != 0) != (billDetails2 == 0))
  {
    transactionScheduledDate = [(_INPBPayBillIntentResponse *)self transactionScheduledDate];
    if (!transactionScheduledDate)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = transactionScheduledDate;
    transactionScheduledDate2 = [(_INPBPayBillIntentResponse *)self transactionScheduledDate];
    transactionScheduledDate3 = [equalCopy transactionScheduledDate];
    v31 = [transactionScheduledDate2 isEqual:transactionScheduledDate3];

    if (v31)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_26:
  }

LABEL_27:
  v32 = 0;
LABEL_28:

  return v32;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBPayBillIntentResponse allocWithZone:](_INPBPayBillIntentResponse init];
  v6 = [(_INPBBillDetailsValue *)self->_billDetails copyWithZone:zone];
  [(_INPBPayBillIntentResponse *)v5 setBillDetails:v6];

  v7 = [(_INPBFinancialAccountValue *)self->_fromAccount copyWithZone:zone];
  [(_INPBPayBillIntentResponse *)v5 setFromAccount:v7];

  v8 = [(_INPBPaymentAmountValue *)self->_transactionAmount copyWithZone:zone];
  [(_INPBPayBillIntentResponse *)v5 setTransactionAmount:v8];

  v9 = [(_INPBString *)self->_transactionNote copyWithZone:zone];
  [(_INPBPayBillIntentResponse *)v5 setTransactionNote:v9];

  v10 = [(_INPBDateTimeRange *)self->_transactionScheduledDate copyWithZone:zone];
  [(_INPBPayBillIntentResponse *)v5 setTransactionScheduledDate:v10];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBPayBillIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBPayBillIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBPayBillIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  billDetails = [(_INPBPayBillIntentResponse *)self billDetails];

  if (billDetails)
  {
    billDetails2 = [(_INPBPayBillIntentResponse *)self billDetails];
    PBDataWriterWriteSubmessage();
  }

  fromAccount = [(_INPBPayBillIntentResponse *)self fromAccount];

  if (fromAccount)
  {
    fromAccount2 = [(_INPBPayBillIntentResponse *)self fromAccount];
    PBDataWriterWriteSubmessage();
  }

  transactionAmount = [(_INPBPayBillIntentResponse *)self transactionAmount];

  if (transactionAmount)
  {
    transactionAmount2 = [(_INPBPayBillIntentResponse *)self transactionAmount];
    PBDataWriterWriteSubmessage();
  }

  transactionNote = [(_INPBPayBillIntentResponse *)self transactionNote];

  if (transactionNote)
  {
    transactionNote2 = [(_INPBPayBillIntentResponse *)self transactionNote];
    PBDataWriterWriteSubmessage();
  }

  transactionScheduledDate = [(_INPBPayBillIntentResponse *)self transactionScheduledDate];

  v13 = toCopy;
  if (transactionScheduledDate)
  {
    transactionScheduledDate2 = [(_INPBPayBillIntentResponse *)self transactionScheduledDate];
    PBDataWriterWriteSubmessage();

    v13 = toCopy;
  }
}

@end