@interface _INPBTransferMoneyIntent
- (BOOL)isEqual:(id)a3;
- (_INPBTransferMoneyIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setTransactionNote:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBTransferMoneyIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBTransferMoneyIntent *)self fromAccount];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"fromAccount"];

  v6 = [(_INPBTransferMoneyIntent *)self intentMetadata];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"intentMetadata"];

  v8 = [(_INPBTransferMoneyIntent *)self toAccount];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"toAccount"];

  v10 = [(_INPBTransferMoneyIntent *)self transactionAmount];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"transactionAmount"];

  if (self->_transactionNote)
  {
    v12 = [(_INPBTransferMoneyIntent *)self transactionNote];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"transactionNote"];
  }

  v14 = [(_INPBTransferMoneyIntent *)self transactionScheduledDate];
  v15 = [v14 dictionaryRepresentation];
  [v3 setObject:v15 forKeyedSubscript:@"transactionScheduledDate"];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  v5 = [(_INPBTransferMoneyIntent *)self fromAccount];
  v6 = [v4 fromAccount];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v7 = [(_INPBTransferMoneyIntent *)self fromAccount];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBTransferMoneyIntent *)self fromAccount];
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

  v5 = [(_INPBTransferMoneyIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v12 = [(_INPBTransferMoneyIntent *)self intentMetadata];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBTransferMoneyIntent *)self intentMetadata];
    v15 = [v4 intentMetadata];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBTransferMoneyIntent *)self toAccount];
  v6 = [v4 toAccount];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v17 = [(_INPBTransferMoneyIntent *)self toAccount];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBTransferMoneyIntent *)self toAccount];
    v20 = [v4 toAccount];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBTransferMoneyIntent *)self transactionAmount];
  v6 = [v4 transactionAmount];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v22 = [(_INPBTransferMoneyIntent *)self transactionAmount];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBTransferMoneyIntent *)self transactionAmount];
    v25 = [v4 transactionAmount];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBTransferMoneyIntent *)self transactionNote];
  v6 = [v4 transactionNote];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v27 = [(_INPBTransferMoneyIntent *)self transactionNote];
  if (v27)
  {
    v28 = v27;
    v29 = [(_INPBTransferMoneyIntent *)self transactionNote];
    v30 = [v4 transactionNote];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBTransferMoneyIntent *)self transactionScheduledDate];
  v6 = [v4 transactionScheduledDate];
  if ((v5 != 0) != (v6 == 0))
  {
    v32 = [(_INPBTransferMoneyIntent *)self transactionScheduledDate];
    if (!v32)
    {

LABEL_35:
      v37 = 1;
      goto LABEL_33;
    }

    v33 = v32;
    v34 = [(_INPBTransferMoneyIntent *)self transactionScheduledDate];
    v35 = [v4 transactionScheduledDate];
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
  v5 = [+[_INPBTransferMoneyIntent allocWithZone:](_INPBTransferMoneyIntent init];
  v6 = [(_INPBFinancialAccountValue *)self->_fromAccount copyWithZone:a3];
  [(_INPBTransferMoneyIntent *)v5 setFromAccount:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBTransferMoneyIntent *)v5 setIntentMetadata:v7];

  v8 = [(_INPBFinancialAccountValue *)self->_toAccount copyWithZone:a3];
  [(_INPBTransferMoneyIntent *)v5 setToAccount:v8];

  v9 = [(_INPBPaymentAmountValue *)self->_transactionAmount copyWithZone:a3];
  [(_INPBTransferMoneyIntent *)v5 setTransactionAmount:v9];

  v10 = [(NSString *)self->_transactionNote copyWithZone:a3];
  [(_INPBTransferMoneyIntent *)v5 setTransactionNote:v10];

  v11 = [(_INPBDateTimeRange *)self->_transactionScheduledDate copyWithZone:a3];
  [(_INPBTransferMoneyIntent *)v5 setTransactionScheduledDate:v11];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBTransferMoneyIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBTransferMoneyIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBTransferMoneyIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v17 = a3;
  v4 = [(_INPBTransferMoneyIntent *)self fromAccount];

  if (v4)
  {
    v5 = [(_INPBTransferMoneyIntent *)self fromAccount];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBTransferMoneyIntent *)self intentMetadata];

  if (v6)
  {
    v7 = [(_INPBTransferMoneyIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBTransferMoneyIntent *)self toAccount];

  if (v8)
  {
    v9 = [(_INPBTransferMoneyIntent *)self toAccount];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_INPBTransferMoneyIntent *)self transactionAmount];

  if (v10)
  {
    v11 = [(_INPBTransferMoneyIntent *)self transactionAmount];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(_INPBTransferMoneyIntent *)self transactionNote];

  if (v12)
  {
    transactionNote = self->_transactionNote;
    PBDataWriterWriteStringField();
  }

  v14 = [(_INPBTransferMoneyIntent *)self transactionScheduledDate];

  v15 = v17;
  if (v14)
  {
    v16 = [(_INPBTransferMoneyIntent *)self transactionScheduledDate];
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