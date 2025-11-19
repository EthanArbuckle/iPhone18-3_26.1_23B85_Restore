@interface _INPBSearchForBillsIntent
- (BOOL)isEqual:(id)a3;
- (_INPBSearchForBillsIntent)initWithCoder:(id)a3;
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

@implementation _INPBSearchForBillsIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBSearchForBillsIntent *)self billPayee];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"billPayee"];

  if ([(_INPBSearchForBillsIntent *)self hasBillType])
  {
    v6 = [(_INPBSearchForBillsIntent *)self billType];
    if ((v6 - 1) >= 0x16)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v7 = off_1E7283A08[(v6 - 1)];
    }

    [v3 setObject:v7 forKeyedSubscript:@"billType"];
  }

  v8 = [(_INPBSearchForBillsIntent *)self dueDateRange];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"dueDateRange"];

  v10 = [(_INPBSearchForBillsIntent *)self intentMetadata];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"intentMetadata"];

  v12 = [(_INPBSearchForBillsIntent *)self paymentDateRange];
  v13 = [v12 dictionaryRepresentation];
  [v3 setObject:v13 forKeyedSubscript:@"paymentDateRange"];

  if ([(_INPBSearchForBillsIntent *)self hasStatus])
  {
    v14 = [(_INPBSearchForBillsIntent *)self status];
    if ((v14 - 1) >= 5)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v14];
    }

    else
    {
      v15 = off_1E7283AB8[(v14 - 1)];
    }

    [v3 setObject:v15 forKeyedSubscript:@"status"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  v5 = [(_INPBSearchForBillsIntent *)self billPayee];
  v6 = [v4 billPayee];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_25;
  }

  v7 = [(_INPBSearchForBillsIntent *)self billPayee];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBSearchForBillsIntent *)self billPayee];
    v10 = [v4 billPayee];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v12 = [(_INPBSearchForBillsIntent *)self hasBillType];
  if (v12 != [v4 hasBillType])
  {
    goto LABEL_26;
  }

  if ([(_INPBSearchForBillsIntent *)self hasBillType])
  {
    if ([v4 hasBillType])
    {
      billType = self->_billType;
      if (billType != [v4 billType])
      {
        goto LABEL_26;
      }
    }
  }

  v5 = [(_INPBSearchForBillsIntent *)self dueDateRange];
  v6 = [v4 dueDateRange];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_25;
  }

  v14 = [(_INPBSearchForBillsIntent *)self dueDateRange];
  if (v14)
  {
    v15 = v14;
    v16 = [(_INPBSearchForBillsIntent *)self dueDateRange];
    v17 = [v4 dueDateRange];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v5 = [(_INPBSearchForBillsIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_25;
  }

  v19 = [(_INPBSearchForBillsIntent *)self intentMetadata];
  if (v19)
  {
    v20 = v19;
    v21 = [(_INPBSearchForBillsIntent *)self intentMetadata];
    v22 = [v4 intentMetadata];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v5 = [(_INPBSearchForBillsIntent *)self paymentDateRange];
  v6 = [v4 paymentDateRange];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_25:

    goto LABEL_26;
  }

  v24 = [(_INPBSearchForBillsIntent *)self paymentDateRange];
  if (v24)
  {
    v25 = v24;
    v26 = [(_INPBSearchForBillsIntent *)self paymentDateRange];
    v27 = [v4 paymentDateRange];
    v28 = [v26 isEqual:v27];

    if (!v28)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v31 = [(_INPBSearchForBillsIntent *)self hasStatus];
  if (v31 == [v4 hasStatus])
  {
    if (!-[_INPBSearchForBillsIntent hasStatus](self, "hasStatus") || ![v4 hasStatus] || (status = self->_status, status == objc_msgSend(v4, "status")))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSearchForBillsIntent allocWithZone:](_INPBSearchForBillsIntent init];
  v6 = [(_INPBBillPayeeValue *)self->_billPayee copyWithZone:a3];
  [(_INPBSearchForBillsIntent *)v5 setBillPayee:v6];

  if ([(_INPBSearchForBillsIntent *)self hasBillType])
  {
    [(_INPBSearchForBillsIntent *)v5 setBillType:[(_INPBSearchForBillsIntent *)self billType]];
  }

  v7 = [(_INPBDateTimeRange *)self->_dueDateRange copyWithZone:a3];
  [(_INPBSearchForBillsIntent *)v5 setDueDateRange:v7];

  v8 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBSearchForBillsIntent *)v5 setIntentMetadata:v8];

  v9 = [(_INPBDateTimeRange *)self->_paymentDateRange copyWithZone:a3];
  [(_INPBSearchForBillsIntent *)v5 setPaymentDateRange:v9];

  if ([(_INPBSearchForBillsIntent *)self hasStatus])
  {
    [(_INPBSearchForBillsIntent *)v5 setStatus:[(_INPBSearchForBillsIntent *)self status]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSearchForBillsIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSearchForBillsIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSearchForBillsIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v14 = a3;
  v4 = [(_INPBSearchForBillsIntent *)self billPayee];

  if (v4)
  {
    v5 = [(_INPBSearchForBillsIntent *)self billPayee];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSearchForBillsIntent *)self hasBillType])
  {
    billType = self->_billType;
    PBDataWriterWriteInt32Field();
  }

  v7 = [(_INPBSearchForBillsIntent *)self dueDateRange];

  if (v7)
  {
    v8 = [(_INPBSearchForBillsIntent *)self dueDateRange];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(_INPBSearchForBillsIntent *)self intentMetadata];

  if (v9)
  {
    v10 = [(_INPBSearchForBillsIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v11 = [(_INPBSearchForBillsIntent *)self paymentDateRange];

  if (v11)
  {
    v12 = [(_INPBSearchForBillsIntent *)self paymentDateRange];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSearchForBillsIntent *)self hasStatus])
  {
    status = self->_status;
    PBDataWriterWriteInt32Field();
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