@interface _INPBBalanceAmountValue
- (BOOL)isEqual:(id)equal;
- (_INPBBalanceAmountValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBBalanceAmountValue

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  currencyAmount = [(_INPBBalanceAmountValue *)self currencyAmount];
  dictionaryRepresentation = [currencyAmount dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"currencyAmount"];

  customAmount = [(_INPBBalanceAmountValue *)self customAmount];
  dictionaryRepresentation2 = [customAmount dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"customAmount"];

  if ([(_INPBBalanceAmountValue *)self hasType])
  {
    type = [(_INPBBalanceAmountValue *)self type];
    if ((type - 1) >= 3)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", type];
    }

    else
    {
      v9 = off_1E7281118[(type - 1)];
    }

    [dictionary setObject:v9 forKeyedSubscript:@"type"];
  }

  valueMetadata = [(_INPBBalanceAmountValue *)self valueMetadata];
  dictionaryRepresentation3 = [valueMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"valueMetadata"];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  currencyAmount = [(_INPBBalanceAmountValue *)self currencyAmount];
  currencyAmount2 = [equalCopy currencyAmount];
  if ((currencyAmount != 0) == (currencyAmount2 == 0))
  {
    goto LABEL_20;
  }

  currencyAmount3 = [(_INPBBalanceAmountValue *)self currencyAmount];
  if (currencyAmount3)
  {
    v8 = currencyAmount3;
    currencyAmount4 = [(_INPBBalanceAmountValue *)self currencyAmount];
    currencyAmount5 = [equalCopy currencyAmount];
    v11 = [currencyAmount4 isEqual:currencyAmount5];

    if (!v11)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  currencyAmount = [(_INPBBalanceAmountValue *)self customAmount];
  currencyAmount2 = [equalCopy customAmount];
  if ((currencyAmount != 0) == (currencyAmount2 == 0))
  {
    goto LABEL_20;
  }

  customAmount = [(_INPBBalanceAmountValue *)self customAmount];
  if (customAmount)
  {
    v13 = customAmount;
    customAmount2 = [(_INPBBalanceAmountValue *)self customAmount];
    customAmount3 = [equalCopy customAmount];
    v16 = [customAmount2 isEqual:customAmount3];

    if (!v16)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  hasType = [(_INPBBalanceAmountValue *)self hasType];
  if (hasType != [equalCopy hasType])
  {
    goto LABEL_21;
  }

  if ([(_INPBBalanceAmountValue *)self hasType])
  {
    if ([equalCopy hasType])
    {
      type = self->_type;
      if (type != [equalCopy type])
      {
        goto LABEL_21;
      }
    }
  }

  currencyAmount = [(_INPBBalanceAmountValue *)self valueMetadata];
  currencyAmount2 = [equalCopy valueMetadata];
  if ((currencyAmount != 0) != (currencyAmount2 == 0))
  {
    valueMetadata = [(_INPBBalanceAmountValue *)self valueMetadata];
    if (!valueMetadata)
    {

LABEL_24:
      v24 = 1;
      goto LABEL_22;
    }

    v20 = valueMetadata;
    valueMetadata2 = [(_INPBBalanceAmountValue *)self valueMetadata];
    valueMetadata3 = [equalCopy valueMetadata];
    v23 = [valueMetadata2 isEqual:valueMetadata3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBBalanceAmountValue allocWithZone:](_INPBBalanceAmountValue init];
  v6 = [(_INPBCurrencyAmountValue *)self->_currencyAmount copyWithZone:zone];
  [(_INPBBalanceAmountValue *)v5 setCurrencyAmount:v6];

  v7 = [(_INPBDecimalNumberValue *)self->_customAmount copyWithZone:zone];
  [(_INPBBalanceAmountValue *)v5 setCustomAmount:v7];

  if ([(_INPBBalanceAmountValue *)self hasType])
  {
    [(_INPBBalanceAmountValue *)v5 setType:[(_INPBBalanceAmountValue *)self type]];
  }

  v8 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:zone];
  [(_INPBBalanceAmountValue *)v5 setValueMetadata:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBBalanceAmountValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBBalanceAmountValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBBalanceAmountValue *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  currencyAmount = [(_INPBBalanceAmountValue *)self currencyAmount];

  if (currencyAmount)
  {
    currencyAmount2 = [(_INPBBalanceAmountValue *)self currencyAmount];
    PBDataWriterWriteSubmessage();
  }

  customAmount = [(_INPBBalanceAmountValue *)self customAmount];

  if (customAmount)
  {
    customAmount2 = [(_INPBBalanceAmountValue *)self customAmount];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBBalanceAmountValue *)self hasType])
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }

  valueMetadata = [(_INPBBalanceAmountValue *)self valueMetadata];

  v10 = toCopy;
  if (valueMetadata)
  {
    valueMetadata2 = [(_INPBBalanceAmountValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();

    v10 = toCopy;
  }
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"MONEY"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"POINTS"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"MILES"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_type = type;
  }
}

@end