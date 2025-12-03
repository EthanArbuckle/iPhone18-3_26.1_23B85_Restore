@interface _INPBPriceRangeValue
- (BOOL)isEqual:(id)equal;
- (_INPBPriceRangeValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setCurrencyCode:(id)code;
- (void)writeTo:(id)to;
@end

@implementation _INPBPriceRangeValue

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_currencyCode)
  {
    currencyCode = [(_INPBPriceRangeValue *)self currencyCode];
    v5 = [currencyCode copy];
    [dictionary setObject:v5 forKeyedSubscript:@"currencyCode"];
  }

  maximumPrice = [(_INPBPriceRangeValue *)self maximumPrice];
  dictionaryRepresentation = [maximumPrice dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"maximumPrice"];

  minimumPrice = [(_INPBPriceRangeValue *)self minimumPrice];
  dictionaryRepresentation2 = [minimumPrice dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"minimumPrice"];

  valueMetadata = [(_INPBPriceRangeValue *)self valueMetadata];
  dictionaryRepresentation3 = [valueMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"valueMetadata"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_currencyCode hash];
  v4 = [(_INPBDecimalNumberValue *)self->_maximumPrice hash]^ v3;
  v5 = [(_INPBDecimalNumberValue *)self->_minimumPrice hash];
  return v4 ^ v5 ^ [(_INPBValueMetadata *)self->_valueMetadata hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  currencyCode = [(_INPBPriceRangeValue *)self currencyCode];
  currencyCode2 = [equalCopy currencyCode];
  if ((currencyCode != 0) == (currencyCode2 == 0))
  {
    goto LABEL_21;
  }

  currencyCode3 = [(_INPBPriceRangeValue *)self currencyCode];
  if (currencyCode3)
  {
    v8 = currencyCode3;
    currencyCode4 = [(_INPBPriceRangeValue *)self currencyCode];
    currencyCode5 = [equalCopy currencyCode];
    v11 = [currencyCode4 isEqual:currencyCode5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  currencyCode = [(_INPBPriceRangeValue *)self maximumPrice];
  currencyCode2 = [equalCopy maximumPrice];
  if ((currencyCode != 0) == (currencyCode2 == 0))
  {
    goto LABEL_21;
  }

  maximumPrice = [(_INPBPriceRangeValue *)self maximumPrice];
  if (maximumPrice)
  {
    v13 = maximumPrice;
    maximumPrice2 = [(_INPBPriceRangeValue *)self maximumPrice];
    maximumPrice3 = [equalCopy maximumPrice];
    v16 = [maximumPrice2 isEqual:maximumPrice3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  currencyCode = [(_INPBPriceRangeValue *)self minimumPrice];
  currencyCode2 = [equalCopy minimumPrice];
  if ((currencyCode != 0) == (currencyCode2 == 0))
  {
    goto LABEL_21;
  }

  minimumPrice = [(_INPBPriceRangeValue *)self minimumPrice];
  if (minimumPrice)
  {
    v18 = minimumPrice;
    minimumPrice2 = [(_INPBPriceRangeValue *)self minimumPrice];
    minimumPrice3 = [equalCopy minimumPrice];
    v21 = [minimumPrice2 isEqual:minimumPrice3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  currencyCode = [(_INPBPriceRangeValue *)self valueMetadata];
  currencyCode2 = [equalCopy valueMetadata];
  if ((currencyCode != 0) != (currencyCode2 == 0))
  {
    valueMetadata = [(_INPBPriceRangeValue *)self valueMetadata];
    if (!valueMetadata)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = valueMetadata;
    valueMetadata2 = [(_INPBPriceRangeValue *)self valueMetadata];
    valueMetadata3 = [equalCopy valueMetadata];
    v26 = [valueMetadata2 isEqual:valueMetadata3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBPriceRangeValue allocWithZone:](_INPBPriceRangeValue init];
  v6 = [(NSString *)self->_currencyCode copyWithZone:zone];
  [(_INPBPriceRangeValue *)v5 setCurrencyCode:v6];

  v7 = [(_INPBDecimalNumberValue *)self->_maximumPrice copyWithZone:zone];
  [(_INPBPriceRangeValue *)v5 setMaximumPrice:v7];

  v8 = [(_INPBDecimalNumberValue *)self->_minimumPrice copyWithZone:zone];
  [(_INPBPriceRangeValue *)v5 setMinimumPrice:v8];

  v9 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:zone];
  [(_INPBPriceRangeValue *)v5 setValueMetadata:v9];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBPriceRangeValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBPriceRangeValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBPriceRangeValue *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  currencyCode = [(_INPBPriceRangeValue *)self currencyCode];

  if (currencyCode)
  {
    currencyCode = self->_currencyCode;
    PBDataWriterWriteStringField();
  }

  maximumPrice = [(_INPBPriceRangeValue *)self maximumPrice];

  if (maximumPrice)
  {
    maximumPrice2 = [(_INPBPriceRangeValue *)self maximumPrice];
    PBDataWriterWriteSubmessage();
  }

  minimumPrice = [(_INPBPriceRangeValue *)self minimumPrice];

  if (minimumPrice)
  {
    minimumPrice2 = [(_INPBPriceRangeValue *)self minimumPrice];
    PBDataWriterWriteSubmessage();
  }

  valueMetadata = [(_INPBPriceRangeValue *)self valueMetadata];

  v11 = toCopy;
  if (valueMetadata)
  {
    valueMetadata2 = [(_INPBPriceRangeValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

- (void)setCurrencyCode:(id)code
{
  v4 = [code copy];
  currencyCode = self->_currencyCode;
  self->_currencyCode = v4;

  MEMORY[0x1EEE66BB8](v4, currencyCode);
}

@end