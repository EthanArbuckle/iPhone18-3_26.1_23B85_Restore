@interface _INPBTransferMoneyIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBTransferMoneyIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setTransactionNote:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBTransferMoneyIntentResponse

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBTransferMoneyIntentResponse *)self fromAccount];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"fromAccount"];

  v6 = [(_INPBTransferMoneyIntentResponse *)self toAccount];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"toAccount"];

  v8 = [(_INPBTransferMoneyIntentResponse *)self transactionAmount];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"transactionAmount"];

  if (self->_transactionNote)
  {
    v10 = [(_INPBTransferMoneyIntentResponse *)self transactionNote];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"transactionNote"];
  }

  v12 = [(_INPBTransferMoneyIntentResponse *)self transactionScheduledDate];
  v13 = [v12 dictionaryRepresentation];
  [v3 setObject:v13 forKeyedSubscript:@"transactionScheduledDate"];

  v14 = [(_INPBTransferMoneyIntentResponse *)self transferFee];
  v15 = [v14 dictionaryRepresentation];
  [v3 setObject:v15 forKeyedSubscript:@"transferFee"];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  v5 = [(_INPBTransferMoneyIntentResponse *)self fromAccount];
  v6 = [v4 fromAccount];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v7 = [(_INPBTransferMoneyIntentResponse *)self fromAccount];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBTransferMoneyIntentResponse *)self fromAccount];
    v10 = [v4 fromAccount];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBTransferMoneyIntentResponse *)self toAccount];
  v6 = [v4 toAccount];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v12 = [(_INPBTransferMoneyIntentResponse *)self toAccount];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBTransferMoneyIntentResponse *)self toAccount];
    v15 = [v4 toAccount];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBTransferMoneyIntentResponse *)self transactionAmount];
  v6 = [v4 transactionAmount];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v17 = [(_INPBTransferMoneyIntentResponse *)self transactionAmount];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBTransferMoneyIntentResponse *)self transactionAmount];
    v20 = [v4 transactionAmount];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBTransferMoneyIntentResponse *)self transactionNote];
  v6 = [v4 transactionNote];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v22 = [(_INPBTransferMoneyIntentResponse *)self transactionNote];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBTransferMoneyIntentResponse *)self transactionNote];
    v25 = [v4 transactionNote];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBTransferMoneyIntentResponse *)self transactionScheduledDate];
  v6 = [v4 transactionScheduledDate];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v27 = [(_INPBTransferMoneyIntentResponse *)self transactionScheduledDate];
  if (v27)
  {
    v28 = v27;
    v29 = [(_INPBTransferMoneyIntentResponse *)self transactionScheduledDate];
    v30 = [v4 transactionScheduledDate];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBTransferMoneyIntentResponse *)self transferFee];
  v6 = [v4 transferFee];
  if ((v5 != 0) != (v6 == 0))
  {
    v32 = [(_INPBTransferMoneyIntentResponse *)self transferFee];
    if (!v32)
    {

LABEL_35:
      v37 = 1;
      goto LABEL_33;
    }

    v33 = v32;
    v34 = [(_INPBTransferMoneyIntentResponse *)self transferFee];
    v35 = [v4 transferFee];
    v36 = [v34 isEqual:v35];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBTransferMoneyIntentResponse allocWithZone:](_INPBTransferMoneyIntentResponse init];
  v6 = [(_INPBFinancialAccountValue *)self->_fromAccount copyWithZone:a3];
  [(_INPBTransferMoneyIntentResponse *)v5 setFromAccount:v6];

  v7 = [(_INPBFinancialAccountValue *)self->_toAccount copyWithZone:a3];
  [(_INPBTransferMoneyIntentResponse *)v5 setToAccount:v7];

  v8 = [(_INPBPaymentAmountValue *)self->_transactionAmount copyWithZone:a3];
  [(_INPBTransferMoneyIntentResponse *)v5 setTransactionAmount:v8];

  v9 = [(NSString *)self->_transactionNote copyWithZone:a3];
  [(_INPBTransferMoneyIntentResponse *)v5 setTransactionNote:v9];

  v10 = [(_INPBDateTimeRange *)self->_transactionScheduledDate copyWithZone:a3];
  [(_INPBTransferMoneyIntentResponse *)v5 setTransactionScheduledDate:v10];

  v11 = [(_INPBCurrencyAmountValue *)self->_transferFee copyWithZone:a3];
  [(_INPBTransferMoneyIntentResponse *)v5 setTransferFee:v11];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBTransferMoneyIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBTransferMoneyIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBTransferMoneyIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v17 = a3;
  v4 = [(_INPBTransferMoneyIntentResponse *)self fromAccount];

  if (v4)
  {
    v5 = [(_INPBTransferMoneyIntentResponse *)self fromAccount];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBTransferMoneyIntentResponse *)self toAccount];

  if (v6)
  {
    v7 = [(_INPBTransferMoneyIntentResponse *)self toAccount];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBTransferMoneyIntentResponse *)self transactionAmount];

  if (v8)
  {
    v9 = [(_INPBTransferMoneyIntentResponse *)self transactionAmount];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_INPBTransferMoneyIntentResponse *)self transactionNote];

  if (v10)
  {
    transactionNote = self->_transactionNote;
    PBDataWriterWriteStringField();
  }

  v12 = [(_INPBTransferMoneyIntentResponse *)self transactionScheduledDate];

  if (v12)
  {
    v13 = [(_INPBTransferMoneyIntentResponse *)self transactionScheduledDate];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(_INPBTransferMoneyIntentResponse *)self transferFee];

  v15 = v17;
  if (v14)
  {
    v16 = [(_INPBTransferMoneyIntentResponse *)self transferFee];
    PBDataWriterWriteSubmessage();

    v15 = v17;
  }
}

- (void)setTransactionNote:(id)a3
{
  v4 = [a3 copy];
  transactionNote = self->_transactionNote;
  self->_transactionNote = v4;

  MEMORY[0x1EEE66BB8](v4, transactionNote);
}

@end