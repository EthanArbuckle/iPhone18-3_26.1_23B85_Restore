@interface _INPBBalanceAmountValue
- (BOOL)isEqual:(id)a3;
- (_INPBBalanceAmountValue)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setType:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBBalanceAmountValue

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBBalanceAmountValue *)self currencyAmount];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"currencyAmount"];

  v6 = [(_INPBBalanceAmountValue *)self customAmount];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"customAmount"];

  if ([(_INPBBalanceAmountValue *)self hasType])
  {
    v8 = [(_INPBBalanceAmountValue *)self type];
    if ((v8 - 1) >= 3)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v8];
    }

    else
    {
      v9 = off_1E7281118[(v8 - 1)];
    }

    [v3 setObject:v9 forKeyedSubscript:@"type"];
  }

  v10 = [(_INPBBalanceAmountValue *)self valueMetadata];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"valueMetadata"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBCurrencyAmountValue *)self->_currencyAmount hash];
  v4 = [(_INPBDecimalNumberValue *)self->_customAmount hash];
  if ([(_INPBBalanceAmountValue *)self hasType])
  {
    v5 = 2654435761 * self->_type;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(_INPBValueMetadata *)self->_valueMetadata hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  v5 = [(_INPBBalanceAmountValue *)self currencyAmount];
  v6 = [v4 currencyAmount];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_20;
  }

  v7 = [(_INPBBalanceAmountValue *)self currencyAmount];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBBalanceAmountValue *)self currencyAmount];
    v10 = [v4 currencyAmount];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v5 = [(_INPBBalanceAmountValue *)self customAmount];
  v6 = [v4 customAmount];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_20;
  }

  v12 = [(_INPBBalanceAmountValue *)self customAmount];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBBalanceAmountValue *)self customAmount];
    v15 = [v4 customAmount];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v17 = [(_INPBBalanceAmountValue *)self hasType];
  if (v17 != [v4 hasType])
  {
    goto LABEL_21;
  }

  if ([(_INPBBalanceAmountValue *)self hasType])
  {
    if ([v4 hasType])
    {
      type = self->_type;
      if (type != [v4 type])
      {
        goto LABEL_21;
      }
    }
  }

  v5 = [(_INPBBalanceAmountValue *)self valueMetadata];
  v6 = [v4 valueMetadata];
  if ((v5 != 0) != (v6 == 0))
  {
    v19 = [(_INPBBalanceAmountValue *)self valueMetadata];
    if (!v19)
    {

LABEL_24:
      v24 = 1;
      goto LABEL_22;
    }

    v20 = v19;
    v21 = [(_INPBBalanceAmountValue *)self valueMetadata];
    v22 = [v4 valueMetadata];
    v23 = [v21 isEqual:v22];

    if (v23)
    {
      goto LABEL_24;
    }
  }

  else
  {
LABEL_20:
  }

LABEL_21:
  v24 = 0;
LABEL_22:

  return v24;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBBalanceAmountValue allocWithZone:](_INPBBalanceAmountValue init];
  v6 = [(_INPBCurrencyAmountValue *)self->_currencyAmount copyWithZone:a3];
  [(_INPBBalanceAmountValue *)v5 setCurrencyAmount:v6];

  v7 = [(_INPBDecimalNumberValue *)self->_customAmount copyWithZone:a3];
  [(_INPBBalanceAmountValue *)v5 setCustomAmount:v7];

  if ([(_INPBBalanceAmountValue *)self hasType])
  {
    [(_INPBBalanceAmountValue *)v5 setType:[(_INPBBalanceAmountValue *)self type]];
  }

  v8 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:a3];
  [(_INPBBalanceAmountValue *)v5 setValueMetadata:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBBalanceAmountValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBBalanceAmountValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBBalanceAmountValue *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
  v4 = [(_INPBBalanceAmountValue *)self currencyAmount];

  if (v4)
  {
    v5 = [(_INPBBalanceAmountValue *)self currencyAmount];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBBalanceAmountValue *)self customAmount];

  if (v6)
  {
    v7 = [(_INPBBalanceAmountValue *)self customAmount];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBBalanceAmountValue *)self hasType])
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }

  v9 = [(_INPBBalanceAmountValue *)self valueMetadata];

  v10 = v12;
  if (v9)
  {
    v11 = [(_INPBBalanceAmountValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();

    v10 = v12;
  }
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"MONEY"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"POINTS"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"MILES"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_type = a3;
  }
}

@end