@interface _INPBCurrencyAmountValue
- (BOOL)isEqual:(id)a3;
- (_INPBCurrencyAmountValue)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setCurrencyCode:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBCurrencyAmountValue

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBCurrencyAmountValue *)self amount];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"amount"];

  if (self->_currencyCode)
  {
    v6 = [(_INPBCurrencyAmountValue *)self currencyCode];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"currencyCode"];
  }

  v8 = [(_INPBCurrencyAmountValue *)self valueMetadata];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"valueMetadata"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBDecimalNumberValue *)self->_amount hash];
  v4 = [(NSString *)self->_currencyCode hash]^ v3;
  return v4 ^ [(_INPBValueMetadata *)self->_valueMetadata hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_INPBCurrencyAmountValue *)self amount];
  v6 = [v4 amount];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_INPBCurrencyAmountValue *)self amount];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBCurrencyAmountValue *)self amount];
    v10 = [v4 amount];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBCurrencyAmountValue *)self currencyCode];
  v6 = [v4 currencyCode];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_INPBCurrencyAmountValue *)self currencyCode];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBCurrencyAmountValue *)self currencyCode];
    v15 = [v4 currencyCode];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBCurrencyAmountValue *)self valueMetadata];
  v6 = [v4 valueMetadata];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_INPBCurrencyAmountValue *)self valueMetadata];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_INPBCurrencyAmountValue *)self valueMetadata];
    v20 = [v4 valueMetadata];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBCurrencyAmountValue allocWithZone:](_INPBCurrencyAmountValue init];
  v6 = [(_INPBDecimalNumberValue *)self->_amount copyWithZone:a3];
  [(_INPBCurrencyAmountValue *)v5 setAmount:v6];

  v7 = [(NSString *)self->_currencyCode copyWithZone:a3];
  [(_INPBCurrencyAmountValue *)v5 setCurrencyCode:v7];

  v8 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:a3];
  [(_INPBCurrencyAmountValue *)v5 setValueMetadata:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBCurrencyAmountValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBCurrencyAmountValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBCurrencyAmountValue *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(_INPBCurrencyAmountValue *)self amount];

  if (v4)
  {
    v5 = [(_INPBCurrencyAmountValue *)self amount];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBCurrencyAmountValue *)self currencyCode];

  if (v6)
  {
    currencyCode = self->_currencyCode;
    PBDataWriterWriteStringField();
  }

  v8 = [(_INPBCurrencyAmountValue *)self valueMetadata];

  v9 = v11;
  if (v8)
  {
    v10 = [(_INPBCurrencyAmountValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();

    v9 = v11;
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