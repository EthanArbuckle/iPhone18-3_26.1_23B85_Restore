@interface _INPBPayBillIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBPayBillIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBPayBillIntentResponse

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBPayBillIntentResponse *)self billDetails];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"billDetails"];

  v6 = [(_INPBPayBillIntentResponse *)self fromAccount];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"fromAccount"];

  v8 = [(_INPBPayBillIntentResponse *)self transactionAmount];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"transactionAmount"];

  v10 = [(_INPBPayBillIntentResponse *)self transactionNote];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"transactionNote"];

  v12 = [(_INPBPayBillIntentResponse *)self transactionScheduledDate];
  v13 = [v12 dictionaryRepresentation];
  [v3 setObject:v13 forKeyedSubscript:@"transactionScheduledDate"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBBillDetailsValue *)self->_billDetails hash];
  v4 = [(_INPBFinancialAccountValue *)self->_fromAccount hash]^ v3;
  v5 = [(_INPBPaymentAmountValue *)self->_transactionAmount hash];
  v6 = v4 ^ v5 ^ [(_INPBString *)self->_transactionNote hash];
  return v6 ^ [(_INPBDateTimeRange *)self->_transactionScheduledDate hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = [(_INPBPayBillIntentResponse *)self billDetails];
  v6 = [v4 billDetails];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v7 = [(_INPBPayBillIntentResponse *)self billDetails];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBPayBillIntentResponse *)self billDetails];
    v10 = [v4 billDetails];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBPayBillIntentResponse *)self fromAccount];
  v6 = [v4 fromAccount];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v12 = [(_INPBPayBillIntentResponse *)self fromAccount];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBPayBillIntentResponse *)self fromAccount];
    v15 = [v4 fromAccount];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBPayBillIntentResponse *)self transactionAmount];
  v6 = [v4 transactionAmount];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v17 = [(_INPBPayBillIntentResponse *)self transactionAmount];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBPayBillIntentResponse *)self transactionAmount];
    v20 = [v4 transactionAmount];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBPayBillIntentResponse *)self transactionNote];
  v6 = [v4 transactionNote];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v22 = [(_INPBPayBillIntentResponse *)self transactionNote];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBPayBillIntentResponse *)self transactionNote];
    v25 = [v4 transactionNote];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBPayBillIntentResponse *)self transactionScheduledDate];
  v6 = [v4 transactionScheduledDate];
  if ((v5 != 0) != (v6 == 0))
  {
    v27 = [(_INPBPayBillIntentResponse *)self transactionScheduledDate];
    if (!v27)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = v27;
    v29 = [(_INPBPayBillIntentResponse *)self transactionScheduledDate];
    v30 = [v4 transactionScheduledDate];
    v31 = [v29 isEqual:v30];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBPayBillIntentResponse allocWithZone:](_INPBPayBillIntentResponse init];
  v6 = [(_INPBBillDetailsValue *)self->_billDetails copyWithZone:a3];
  [(_INPBPayBillIntentResponse *)v5 setBillDetails:v6];

  v7 = [(_INPBFinancialAccountValue *)self->_fromAccount copyWithZone:a3];
  [(_INPBPayBillIntentResponse *)v5 setFromAccount:v7];

  v8 = [(_INPBPaymentAmountValue *)self->_transactionAmount copyWithZone:a3];
  [(_INPBPayBillIntentResponse *)v5 setTransactionAmount:v8];

  v9 = [(_INPBString *)self->_transactionNote copyWithZone:a3];
  [(_INPBPayBillIntentResponse *)v5 setTransactionNote:v9];

  v10 = [(_INPBDateTimeRange *)self->_transactionScheduledDate copyWithZone:a3];
  [(_INPBPayBillIntentResponse *)v5 setTransactionScheduledDate:v10];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBPayBillIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBPayBillIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBPayBillIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v15 = a3;
  v4 = [(_INPBPayBillIntentResponse *)self billDetails];

  if (v4)
  {
    v5 = [(_INPBPayBillIntentResponse *)self billDetails];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBPayBillIntentResponse *)self fromAccount];

  if (v6)
  {
    v7 = [(_INPBPayBillIntentResponse *)self fromAccount];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBPayBillIntentResponse *)self transactionAmount];

  if (v8)
  {
    v9 = [(_INPBPayBillIntentResponse *)self transactionAmount];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_INPBPayBillIntentResponse *)self transactionNote];

  if (v10)
  {
    v11 = [(_INPBPayBillIntentResponse *)self transactionNote];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(_INPBPayBillIntentResponse *)self transactionScheduledDate];

  v13 = v15;
  if (v12)
  {
    v14 = [(_INPBPayBillIntentResponse *)self transactionScheduledDate];
    PBDataWriterWriteSubmessage();

    v13 = v15;
  }
}

@end