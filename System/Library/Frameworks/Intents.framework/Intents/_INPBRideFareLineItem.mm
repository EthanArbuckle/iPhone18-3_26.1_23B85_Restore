@interface _INPBRideFareLineItem
- (BOOL)isEqual:(id)equal;
- (_INPBRideFareLineItem)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setCurrencyCode:(id)code;
- (void)setTitle:(id)title;
- (void)writeTo:(id)to;
@end

@implementation _INPBRideFareLineItem

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_currencyCode)
  {
    currencyCode = [(_INPBRideFareLineItem *)self currencyCode];
    v5 = [currencyCode copy];
    [dictionary setObject:v5 forKeyedSubscript:@"currencyCode"];
  }

  price = [(_INPBRideFareLineItem *)self price];
  dictionaryRepresentation = [price dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"price"];

  if (self->_title)
  {
    title = [(_INPBRideFareLineItem *)self title];
    v9 = [title copy];
    [dictionary setObject:v9 forKeyedSubscript:@"title"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_currencyCode hash];
  v4 = [(_INPBDecimalNumberValue *)self->_price hash]^ v3;
  return v4 ^ [(NSString *)self->_title hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  currencyCode = [(_INPBRideFareLineItem *)self currencyCode];
  currencyCode2 = [equalCopy currencyCode];
  if ((currencyCode != 0) == (currencyCode2 == 0))
  {
    goto LABEL_16;
  }

  currencyCode3 = [(_INPBRideFareLineItem *)self currencyCode];
  if (currencyCode3)
  {
    v8 = currencyCode3;
    currencyCode4 = [(_INPBRideFareLineItem *)self currencyCode];
    currencyCode5 = [equalCopy currencyCode];
    v11 = [currencyCode4 isEqual:currencyCode5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  currencyCode = [(_INPBRideFareLineItem *)self price];
  currencyCode2 = [equalCopy price];
  if ((currencyCode != 0) == (currencyCode2 == 0))
  {
    goto LABEL_16;
  }

  price = [(_INPBRideFareLineItem *)self price];
  if (price)
  {
    v13 = price;
    price2 = [(_INPBRideFareLineItem *)self price];
    price3 = [equalCopy price];
    v16 = [price2 isEqual:price3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  currencyCode = [(_INPBRideFareLineItem *)self title];
  currencyCode2 = [equalCopy title];
  if ((currencyCode != 0) != (currencyCode2 == 0))
  {
    title = [(_INPBRideFareLineItem *)self title];
    if (!title)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = title;
    title2 = [(_INPBRideFareLineItem *)self title];
    title3 = [equalCopy title];
    v21 = [title2 isEqual:title3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBRideFareLineItem allocWithZone:](_INPBRideFareLineItem init];
  v6 = [(NSString *)self->_currencyCode copyWithZone:zone];
  [(_INPBRideFareLineItem *)v5 setCurrencyCode:v6];

  v7 = [(_INPBDecimalNumberValue *)self->_price copyWithZone:zone];
  [(_INPBRideFareLineItem *)v5 setPrice:v7];

  v8 = [(NSString *)self->_title copyWithZone:zone];
  [(_INPBRideFareLineItem *)v5 setTitle:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBRideFareLineItem *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBRideFareLineItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBRideFareLineItem *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  currencyCode = [(_INPBRideFareLineItem *)self currencyCode];

  if (currencyCode)
  {
    currencyCode = self->_currencyCode;
    PBDataWriterWriteStringField();
  }

  price = [(_INPBRideFareLineItem *)self price];

  if (price)
  {
    price2 = [(_INPBRideFareLineItem *)self price];
    PBDataWriterWriteSubmessage();
  }

  title = [(_INPBRideFareLineItem *)self title];

  v9 = toCopy;
  if (title)
  {
    title = self->_title;
    PBDataWriterWriteStringField();
    v9 = toCopy;
  }
}

- (void)setTitle:(id)title
{
  v4 = [title copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8](v4, title);
}

- (void)setCurrencyCode:(id)code
{
  v4 = [code copy];
  currencyCode = self->_currencyCode;
  self->_currencyCode = v4;

  MEMORY[0x1EEE66BB8](v4, currencyCode);
}

@end