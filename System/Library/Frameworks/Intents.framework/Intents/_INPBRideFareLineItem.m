@interface _INPBRideFareLineItem
- (BOOL)isEqual:(id)a3;
- (_INPBRideFareLineItem)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setCurrencyCode:(id)a3;
- (void)setTitle:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBRideFareLineItem

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_currencyCode)
  {
    v4 = [(_INPBRideFareLineItem *)self currencyCode];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"currencyCode"];
  }

  v6 = [(_INPBRideFareLineItem *)self price];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"price"];

  if (self->_title)
  {
    v8 = [(_INPBRideFareLineItem *)self title];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"title"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_currencyCode hash];
  v4 = [(_INPBDecimalNumberValue *)self->_price hash]^ v3;
  return v4 ^ [(NSString *)self->_title hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_INPBRideFareLineItem *)self currencyCode];
  v6 = [v4 currencyCode];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_INPBRideFareLineItem *)self currencyCode];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBRideFareLineItem *)self currencyCode];
    v10 = [v4 currencyCode];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBRideFareLineItem *)self price];
  v6 = [v4 price];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_INPBRideFareLineItem *)self price];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBRideFareLineItem *)self price];
    v15 = [v4 price];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBRideFareLineItem *)self title];
  v6 = [v4 title];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_INPBRideFareLineItem *)self title];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_INPBRideFareLineItem *)self title];
    v20 = [v4 title];
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
  v5 = [+[_INPBRideFareLineItem allocWithZone:](_INPBRideFareLineItem init];
  v6 = [(NSString *)self->_currencyCode copyWithZone:a3];
  [(_INPBRideFareLineItem *)v5 setCurrencyCode:v6];

  v7 = [(_INPBDecimalNumberValue *)self->_price copyWithZone:a3];
  [(_INPBRideFareLineItem *)v5 setPrice:v7];

  v8 = [(NSString *)self->_title copyWithZone:a3];
  [(_INPBRideFareLineItem *)v5 setTitle:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBRideFareLineItem *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBRideFareLineItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBRideFareLineItem *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(_INPBRideFareLineItem *)self currencyCode];

  if (v4)
  {
    currencyCode = self->_currencyCode;
    PBDataWriterWriteStringField();
  }

  v6 = [(_INPBRideFareLineItem *)self price];

  if (v6)
  {
    v7 = [(_INPBRideFareLineItem *)self price];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBRideFareLineItem *)self title];

  v9 = v11;
  if (v8)
  {
    title = self->_title;
    PBDataWriterWriteStringField();
    v9 = v11;
  }
}

- (void)setTitle:(id)a3
{
  v4 = [a3 copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8](v4, title);
}

- (void)setCurrencyCode:(id)a3
{
  v4 = [a3 copy];
  currencyCode = self->_currencyCode;
  self->_currencyCode = v4;

  MEMORY[0x1EEE66BB8](v4, currencyCode);
}

@end