@interface _INPBPayBillIntent
- (BOOL)isEqual:(id)a3;
- (_INPBPayBillIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsBillType:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setBillType:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBPayBillIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBPayBillIntent *)self billPayee];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"billPayee"];

  if ([(_INPBPayBillIntent *)self hasBillType])
  {
    v6 = [(_INPBPayBillIntent *)self billType];
    if ((v6 - 1) >= 0x16)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v7 = off_1E72819B8[(v6 - 1)];
    }

    [v3 setObject:v7 forKeyedSubscript:@"billType"];
  }

  v8 = [(_INPBPayBillIntent *)self dueDate];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"dueDate"];

  v10 = [(_INPBPayBillIntent *)self fromAccount];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"fromAccount"];

  v12 = [(_INPBPayBillIntent *)self intentMetadata];
  v13 = [v12 dictionaryRepresentation];
  [v3 setObject:v13 forKeyedSubscript:@"intentMetadata"];

  v14 = [(_INPBPayBillIntent *)self transactionAmount];
  v15 = [v14 dictionaryRepresentation];
  [v3 setObject:v15 forKeyedSubscript:@"transactionAmount"];

  v16 = [(_INPBPayBillIntent *)self transactionNote];
  v17 = [v16 dictionaryRepresentation];
  [v3 setObject:v17 forKeyedSubscript:@"transactionNote"];

  v18 = [(_INPBPayBillIntent *)self transactionScheduledDate];
  v19 = [v18 dictionaryRepresentation];
  [v3 setObject:v19 forKeyedSubscript:@"transactionScheduledDate"];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_41;
  }

  v5 = [(_INPBPayBillIntent *)self billPayee];
  v6 = [v4 billPayee];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_40;
  }

  v7 = [(_INPBPayBillIntent *)self billPayee];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBPayBillIntent *)self billPayee];
    v10 = [v4 billPayee];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  v12 = [(_INPBPayBillIntent *)self hasBillType];
  if (v12 != [v4 hasBillType])
  {
    goto LABEL_41;
  }

  if ([(_INPBPayBillIntent *)self hasBillType])
  {
    if ([v4 hasBillType])
    {
      billType = self->_billType;
      if (billType != [v4 billType])
      {
        goto LABEL_41;
      }
    }
  }

  v5 = [(_INPBPayBillIntent *)self dueDate];
  v6 = [v4 dueDate];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_40;
  }

  v14 = [(_INPBPayBillIntent *)self dueDate];
  if (v14)
  {
    v15 = v14;
    v16 = [(_INPBPayBillIntent *)self dueDate];
    v17 = [v4 dueDate];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  v5 = [(_INPBPayBillIntent *)self fromAccount];
  v6 = [v4 fromAccount];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_40;
  }

  v19 = [(_INPBPayBillIntent *)self fromAccount];
  if (v19)
  {
    v20 = v19;
    v21 = [(_INPBPayBillIntent *)self fromAccount];
    v22 = [v4 fromAccount];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  v5 = [(_INPBPayBillIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_40;
  }

  v24 = [(_INPBPayBillIntent *)self intentMetadata];
  if (v24)
  {
    v25 = v24;
    v26 = [(_INPBPayBillIntent *)self intentMetadata];
    v27 = [v4 intentMetadata];
    v28 = [v26 isEqual:v27];

    if (!v28)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  v5 = [(_INPBPayBillIntent *)self transactionAmount];
  v6 = [v4 transactionAmount];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_40;
  }

  v29 = [(_INPBPayBillIntent *)self transactionAmount];
  if (v29)
  {
    v30 = v29;
    v31 = [(_INPBPayBillIntent *)self transactionAmount];
    v32 = [v4 transactionAmount];
    v33 = [v31 isEqual:v32];

    if (!v33)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  v5 = [(_INPBPayBillIntent *)self transactionNote];
  v6 = [v4 transactionNote];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_40;
  }

  v34 = [(_INPBPayBillIntent *)self transactionNote];
  if (v34)
  {
    v35 = v34;
    v36 = [(_INPBPayBillIntent *)self transactionNote];
    v37 = [v4 transactionNote];
    v38 = [v36 isEqual:v37];

    if (!v38)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  v5 = [(_INPBPayBillIntent *)self transactionScheduledDate];
  v6 = [v4 transactionScheduledDate];
  if ((v5 != 0) != (v6 == 0))
  {
    v39 = [(_INPBPayBillIntent *)self transactionScheduledDate];
    if (!v39)
    {

LABEL_44:
      v44 = 1;
      goto LABEL_42;
    }

    v40 = v39;
    v41 = [(_INPBPayBillIntent *)self transactionScheduledDate];
    v42 = [v4 transactionScheduledDate];
    v43 = [v41 isEqual:v42];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBPayBillIntent allocWithZone:](_INPBPayBillIntent init];
  v6 = [(_INPBBillPayeeValue *)self->_billPayee copyWithZone:a3];
  [(_INPBPayBillIntent *)v5 setBillPayee:v6];

  if ([(_INPBPayBillIntent *)self hasBillType])
  {
    [(_INPBPayBillIntent *)v5 setBillType:[(_INPBPayBillIntent *)self billType]];
  }

  v7 = [(_INPBDateTimeRange *)self->_dueDate copyWithZone:a3];
  [(_INPBPayBillIntent *)v5 setDueDate:v7];

  v8 = [(_INPBFinancialAccountValue *)self->_fromAccount copyWithZone:a3];
  [(_INPBPayBillIntent *)v5 setFromAccount:v8];

  v9 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBPayBillIntent *)v5 setIntentMetadata:v9];

  v10 = [(_INPBPaymentAmountValue *)self->_transactionAmount copyWithZone:a3];
  [(_INPBPayBillIntent *)v5 setTransactionAmount:v10];

  v11 = [(_INPBString *)self->_transactionNote copyWithZone:a3];
  [(_INPBPayBillIntent *)v5 setTransactionNote:v11];

  v12 = [(_INPBDateTimeRange *)self->_transactionScheduledDate copyWithZone:a3];
  [(_INPBPayBillIntent *)v5 setTransactionScheduledDate:v12];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBPayBillIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBPayBillIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBPayBillIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v20 = a3;
  v4 = [(_INPBPayBillIntent *)self billPayee];

  if (v4)
  {
    v5 = [(_INPBPayBillIntent *)self billPayee];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBPayBillIntent *)self hasBillType])
  {
    billType = self->_billType;
    PBDataWriterWriteInt32Field();
  }

  v7 = [(_INPBPayBillIntent *)self dueDate];

  if (v7)
  {
    v8 = [(_INPBPayBillIntent *)self dueDate];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(_INPBPayBillIntent *)self fromAccount];

  if (v9)
  {
    v10 = [(_INPBPayBillIntent *)self fromAccount];
    PBDataWriterWriteSubmessage();
  }

  v11 = [(_INPBPayBillIntent *)self intentMetadata];

  if (v11)
  {
    v12 = [(_INPBPayBillIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v13 = [(_INPBPayBillIntent *)self transactionAmount];

  if (v13)
  {
    v14 = [(_INPBPayBillIntent *)self transactionAmount];
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_INPBPayBillIntent *)self transactionNote];

  if (v15)
  {
    v16 = [(_INPBPayBillIntent *)self transactionNote];
    PBDataWriterWriteSubmessage();
  }

  v17 = [(_INPBPayBillIntent *)self transactionScheduledDate];

  v18 = v20;
  if (v17)
  {
    v19 = [(_INPBPayBillIntent *)self transactionScheduledDate];
    PBDataWriterWriteSubmessage();

    v18 = v20;
  }
}

- (int)StringAsBillType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"AUTO_INSURANCE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CABLE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CAR_LEASE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"CAR_LOAN"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"CREDIT_CARD"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"ELECTRICITY"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"GAS"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"GARBAGE_AND_RECYCLING"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"HEALTH_INSURANCE"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"HOME_INSURANCE"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"INTERNET"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"LIFE_INSURANCE"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"MORTGAGE"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"MUSIC_STREAMING"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"PHONE"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"RENT"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"SEWER"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"STUDENT_LOAN"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"TRAFFIC_TICKET"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"TUITION"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"UTILITIES"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"WATER"])
  {
    v4 = 22;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setBillType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_billType = a3;
  }
}

@end