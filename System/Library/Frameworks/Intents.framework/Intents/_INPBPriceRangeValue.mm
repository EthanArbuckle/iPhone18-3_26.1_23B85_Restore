@interface _INPBPriceRangeValue
- (BOOL)isEqual:(id)a3;
- (_INPBPriceRangeValue)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setCurrencyCode:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBPriceRangeValue

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_currencyCode)
  {
    v4 = [(_INPBPriceRangeValue *)self currencyCode];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"currencyCode"];
  }

  v6 = [(_INPBPriceRangeValue *)self maximumPrice];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"maximumPrice"];

  v8 = [(_INPBPriceRangeValue *)self minimumPrice];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"minimumPrice"];

  v10 = [(_INPBPriceRangeValue *)self valueMetadata];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"valueMetadata"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_currencyCode hash];
  v4 = [(_INPBDecimalNumberValue *)self->_maximumPrice hash]^ v3;
  v5 = [(_INPBDecimalNumberValue *)self->_minimumPrice hash];
  return v4 ^ v5 ^ [(_INPBValueMetadata *)self->_valueMetadata hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(_INPBPriceRangeValue *)self currencyCode];
  v6 = [v4 currencyCode];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(_INPBPriceRangeValue *)self currencyCode];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBPriceRangeValue *)self currencyCode];
    v10 = [v4 currencyCode];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBPriceRangeValue *)self maximumPrice];
  v6 = [v4 maximumPrice];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(_INPBPriceRangeValue *)self maximumPrice];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBPriceRangeValue *)self maximumPrice];
    v15 = [v4 maximumPrice];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBPriceRangeValue *)self minimumPrice];
  v6 = [v4 minimumPrice];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(_INPBPriceRangeValue *)self minimumPrice];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBPriceRangeValue *)self minimumPrice];
    v20 = [v4 minimumPrice];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBPriceRangeValue *)self valueMetadata];
  v6 = [v4 valueMetadata];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(_INPBPriceRangeValue *)self valueMetadata];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(_INPBPriceRangeValue *)self valueMetadata];
    v25 = [v4 valueMetadata];
    v26 = [v24 isEqual:v25];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBPriceRangeValue allocWithZone:](_INPBPriceRangeValue init];
  v6 = [(NSString *)self->_currencyCode copyWithZone:a3];
  [(_INPBPriceRangeValue *)v5 setCurrencyCode:v6];

  v7 = [(_INPBDecimalNumberValue *)self->_maximumPrice copyWithZone:a3];
  [(_INPBPriceRangeValue *)v5 setMaximumPrice:v7];

  v8 = [(_INPBDecimalNumberValue *)self->_minimumPrice copyWithZone:a3];
  [(_INPBPriceRangeValue *)v5 setMinimumPrice:v8];

  v9 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:a3];
  [(_INPBPriceRangeValue *)v5 setValueMetadata:v9];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBPriceRangeValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBPriceRangeValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBPriceRangeValue *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v13 = a3;
  v4 = [(_INPBPriceRangeValue *)self currencyCode];

  if (v4)
  {
    currencyCode = self->_currencyCode;
    PBDataWriterWriteStringField();
  }

  v6 = [(_INPBPriceRangeValue *)self maximumPrice];

  if (v6)
  {
    v7 = [(_INPBPriceRangeValue *)self maximumPrice];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBPriceRangeValue *)self minimumPrice];

  if (v8)
  {
    v9 = [(_INPBPriceRangeValue *)self minimumPrice];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_INPBPriceRangeValue *)self valueMetadata];

  v11 = v13;
  if (v10)
  {
    v12 = [(_INPBPriceRangeValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();

    v11 = v13;
  }
}

- (void)setCurrencyCode:(id)a3
{
  v4 = [a3 copy];
  currencyCode = self->_currencyCode;
  self->_currencyCode = v4;

  MEMORY[0x1EEE66BB8](v4, currencyCode);
}

@end