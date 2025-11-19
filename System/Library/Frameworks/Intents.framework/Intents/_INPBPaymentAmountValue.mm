@interface _INPBPaymentAmountValue
- (BOOL)isEqual:(id)a3;
- (_INPBPaymentAmountValue)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsAmountType:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setAmountType:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBPaymentAmountValue

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBPaymentAmountValue *)self hasAmountType])
  {
    v4 = [(_INPBPaymentAmountValue *)self amountType];
    if ((v4 - 1) >= 6)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = off_1E7281E28[(v4 - 1)];
    }

    [v3 setObject:v5 forKeyedSubscript:@"amountType"];
  }

  v6 = [(_INPBPaymentAmountValue *)self value];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"value"];

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBPaymentAmountValue *)self hasAmountType])
  {
    v3 = 2654435761 * self->_amountType;
  }

  else
  {
    v3 = 0;
  }

  return [(_INPBCurrencyAmountValue *)self->_value hash]^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_INPBPaymentAmountValue *)self hasAmountType];
    if (v5 == [v4 hasAmountType])
    {
      if (!-[_INPBPaymentAmountValue hasAmountType](self, "hasAmountType") || ![v4 hasAmountType] || (amountType = self->_amountType, amountType == objc_msgSend(v4, "amountType")))
      {
        v7 = [(_INPBPaymentAmountValue *)self value];
        v8 = [v4 value];
        v9 = v8;
        if ((v7 != 0) != (v8 == 0))
        {
          v10 = [(_INPBPaymentAmountValue *)self value];
          if (!v10)
          {

LABEL_14:
            v15 = 1;
            goto LABEL_12;
          }

          v11 = v10;
          v12 = [(_INPBPaymentAmountValue *)self value];
          v13 = [v4 value];
          v14 = [v12 isEqual:v13];

          if (v14)
          {
            goto LABEL_14;
          }
        }

        else
        {
        }
      }
    }
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBPaymentAmountValue allocWithZone:](_INPBPaymentAmountValue init];
  if ([(_INPBPaymentAmountValue *)self hasAmountType])
  {
    [(_INPBPaymentAmountValue *)v5 setAmountType:[(_INPBPaymentAmountValue *)self amountType]];
  }

  v6 = [(_INPBCurrencyAmountValue *)self->_value copyWithZone:a3];
  [(_INPBPaymentAmountValue *)v5 setValue:v6];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBPaymentAmountValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBPaymentAmountValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBPaymentAmountValue *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  if ([(_INPBPaymentAmountValue *)self hasAmountType])
  {
    amountType = self->_amountType;
    PBDataWriterWriteInt32Field();
  }

  v5 = [(_INPBPaymentAmountValue *)self value];

  v6 = v8;
  if (v5)
  {
    v7 = [(_INPBPaymentAmountValue *)self value];
    PBDataWriterWriteSubmessage();

    v6 = v8;
  }
}

- (int)StringAsAmountType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"MINIMUM_DUE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"AMOUNT_DUE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CURRENT_BALANCE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"MAXIMUM_TRANSFER_AMOUNT"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"MINIMUM_TRANSFER_AMOUNT"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"STATEMENT_BALANCE"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setAmountType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_amountType = a3;
  }
}

@end