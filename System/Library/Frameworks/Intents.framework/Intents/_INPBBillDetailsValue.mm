@interface _INPBBillDetailsValue
- (BOOL)isEqual:(id)a3;
- (_INPBBillDetailsValue)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsBillType:(id)a3;
- (int)StringAsStatus:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setBillType:(int)a3;
- (void)setHasStatus:(BOOL)a3;
- (void)setStatus:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBBillDetailsValue

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBBillDetailsValue *)self amountDue];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"amountDue"];

  v6 = [(_INPBBillDetailsValue *)self billPayee];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"billPayee"];

  if ([(_INPBBillDetailsValue *)self hasBillType])
  {
    v8 = [(_INPBBillDetailsValue *)self billType];
    if ((v8 - 1) >= 0x16)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v8];
    }

    else
    {
      v9 = off_1E7280788[(v8 - 1)];
    }

    [v3 setObject:v9 forKeyedSubscript:@"billType"];
  }

  v10 = [(_INPBBillDetailsValue *)self dueDate];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"dueDate"];

  v12 = [(_INPBBillDetailsValue *)self lateFee];
  v13 = [v12 dictionaryRepresentation];
  [v3 setObject:v13 forKeyedSubscript:@"lateFee"];

  v14 = [(_INPBBillDetailsValue *)self minimumDue];
  v15 = [v14 dictionaryRepresentation];
  [v3 setObject:v15 forKeyedSubscript:@"minimumDue"];

  v16 = [(_INPBBillDetailsValue *)self paymentDate];
  v17 = [v16 dictionaryRepresentation];
  [v3 setObject:v17 forKeyedSubscript:@"paymentDate"];

  if ([(_INPBBillDetailsValue *)self hasStatus])
  {
    v18 = [(_INPBBillDetailsValue *)self status];
    if ((v18 - 1) >= 5)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v18];
    }

    else
    {
      v19 = off_1E7280838[(v18 - 1)];
    }

    [v3 setObject:v19 forKeyedSubscript:@"status"];
  }

  v20 = [(_INPBBillDetailsValue *)self valueMetadata];
  v21 = [v20 dictionaryRepresentation];
  [v3 setObject:v21 forKeyedSubscript:@"valueMetadata"];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_45;
  }

  v5 = [(_INPBBillDetailsValue *)self amountDue];
  v6 = [v4 amountDue];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_44;
  }

  v7 = [(_INPBBillDetailsValue *)self amountDue];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBBillDetailsValue *)self amountDue];
    v10 = [v4 amountDue];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  v5 = [(_INPBBillDetailsValue *)self billPayee];
  v6 = [v4 billPayee];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_44;
  }

  v12 = [(_INPBBillDetailsValue *)self billPayee];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBBillDetailsValue *)self billPayee];
    v15 = [v4 billPayee];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  v17 = [(_INPBBillDetailsValue *)self hasBillType];
  if (v17 != [v4 hasBillType])
  {
    goto LABEL_45;
  }

  if ([(_INPBBillDetailsValue *)self hasBillType])
  {
    if ([v4 hasBillType])
    {
      billType = self->_billType;
      if (billType != [v4 billType])
      {
        goto LABEL_45;
      }
    }
  }

  v5 = [(_INPBBillDetailsValue *)self dueDate];
  v6 = [v4 dueDate];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_44;
  }

  v19 = [(_INPBBillDetailsValue *)self dueDate];
  if (v19)
  {
    v20 = v19;
    v21 = [(_INPBBillDetailsValue *)self dueDate];
    v22 = [v4 dueDate];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  v5 = [(_INPBBillDetailsValue *)self lateFee];
  v6 = [v4 lateFee];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_44;
  }

  v24 = [(_INPBBillDetailsValue *)self lateFee];
  if (v24)
  {
    v25 = v24;
    v26 = [(_INPBBillDetailsValue *)self lateFee];
    v27 = [v4 lateFee];
    v28 = [v26 isEqual:v27];

    if (!v28)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  v5 = [(_INPBBillDetailsValue *)self minimumDue];
  v6 = [v4 minimumDue];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_44;
  }

  v29 = [(_INPBBillDetailsValue *)self minimumDue];
  if (v29)
  {
    v30 = v29;
    v31 = [(_INPBBillDetailsValue *)self minimumDue];
    v32 = [v4 minimumDue];
    v33 = [v31 isEqual:v32];

    if (!v33)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  v5 = [(_INPBBillDetailsValue *)self paymentDate];
  v6 = [v4 paymentDate];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_44;
  }

  v34 = [(_INPBBillDetailsValue *)self paymentDate];
  if (v34)
  {
    v35 = v34;
    v36 = [(_INPBBillDetailsValue *)self paymentDate];
    v37 = [v4 paymentDate];
    v38 = [v36 isEqual:v37];

    if (!v38)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  v39 = [(_INPBBillDetailsValue *)self hasStatus];
  if (v39 != [v4 hasStatus])
  {
    goto LABEL_45;
  }

  if ([(_INPBBillDetailsValue *)self hasStatus])
  {
    if ([v4 hasStatus])
    {
      status = self->_status;
      if (status != [v4 status])
      {
        goto LABEL_45;
      }
    }
  }

  v5 = [(_INPBBillDetailsValue *)self valueMetadata];
  v6 = [v4 valueMetadata];
  if ((v5 != 0) != (v6 == 0))
  {
    v41 = [(_INPBBillDetailsValue *)self valueMetadata];
    if (!v41)
    {

LABEL_48:
      v46 = 1;
      goto LABEL_46;
    }

    v42 = v41;
    v43 = [(_INPBBillDetailsValue *)self valueMetadata];
    v44 = [v4 valueMetadata];
    v45 = [v43 isEqual:v44];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBBillDetailsValue allocWithZone:](_INPBBillDetailsValue init];
  v6 = [(_INPBCurrencyAmountValue *)self->_amountDue copyWithZone:a3];
  [(_INPBBillDetailsValue *)v5 setAmountDue:v6];

  v7 = [(_INPBBillPayeeValue *)self->_billPayee copyWithZone:a3];
  [(_INPBBillDetailsValue *)v5 setBillPayee:v7];

  if ([(_INPBBillDetailsValue *)self hasBillType])
  {
    [(_INPBBillDetailsValue *)v5 setBillType:[(_INPBBillDetailsValue *)self billType]];
  }

  v8 = [(_INPBDateTime *)self->_dueDate copyWithZone:a3];
  [(_INPBBillDetailsValue *)v5 setDueDate:v8];

  v9 = [(_INPBCurrencyAmountValue *)self->_lateFee copyWithZone:a3];
  [(_INPBBillDetailsValue *)v5 setLateFee:v9];

  v10 = [(_INPBCurrencyAmountValue *)self->_minimumDue copyWithZone:a3];
  [(_INPBBillDetailsValue *)v5 setMinimumDue:v10];

  v11 = [(_INPBDateTime *)self->_paymentDate copyWithZone:a3];
  [(_INPBBillDetailsValue *)v5 setPaymentDate:v11];

  if ([(_INPBBillDetailsValue *)self hasStatus])
  {
    [(_INPBBillDetailsValue *)v5 setStatus:[(_INPBBillDetailsValue *)self status]];
  }

  v12 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:a3];
  [(_INPBBillDetailsValue *)v5 setValueMetadata:v12];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBBillDetailsValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBBillDetailsValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBBillDetailsValue *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v21 = a3;
  v4 = [(_INPBBillDetailsValue *)self amountDue];

  if (v4)
  {
    v5 = [(_INPBBillDetailsValue *)self amountDue];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBBillDetailsValue *)self billPayee];

  if (v6)
  {
    v7 = [(_INPBBillDetailsValue *)self billPayee];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBBillDetailsValue *)self hasBillType])
  {
    billType = self->_billType;
    PBDataWriterWriteInt32Field();
  }

  v9 = [(_INPBBillDetailsValue *)self dueDate];

  if (v9)
  {
    v10 = [(_INPBBillDetailsValue *)self dueDate];
    PBDataWriterWriteSubmessage();
  }

  v11 = [(_INPBBillDetailsValue *)self lateFee];

  if (v11)
  {
    v12 = [(_INPBBillDetailsValue *)self lateFee];
    PBDataWriterWriteSubmessage();
  }

  v13 = [(_INPBBillDetailsValue *)self minimumDue];

  if (v13)
  {
    v14 = [(_INPBBillDetailsValue *)self minimumDue];
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_INPBBillDetailsValue *)self paymentDate];

  if (v15)
  {
    v16 = [(_INPBBillDetailsValue *)self paymentDate];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBBillDetailsValue *)self hasStatus])
  {
    status = self->_status;
    PBDataWriterWriteInt32Field();
  }

  v18 = [(_INPBBillDetailsValue *)self valueMetadata];

  v19 = v21;
  if (v18)
  {
    v20 = [(_INPBBillDetailsValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();

    v19 = v21;
  }
}

- (int)StringAsStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PENDING"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"COMPLETED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CANCELED"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"FAILED"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"UNPAID"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setStatus:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_status = a3;
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