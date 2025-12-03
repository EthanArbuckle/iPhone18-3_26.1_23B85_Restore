@interface _INPBCurrencyAmountValue
- (BOOL)isEqual:(id)equal;
- (_INPBCurrencyAmountValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setCurrencyCode:(id)code;
- (void)writeTo:(id)to;
@end

@implementation _INPBCurrencyAmountValue

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  amount = [(_INPBCurrencyAmountValue *)self amount];
  dictionaryRepresentation = [amount dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"amount"];

  if (self->_currencyCode)
  {
    currencyCode = [(_INPBCurrencyAmountValue *)self currencyCode];
    v7 = [currencyCode copy];
    [dictionary setObject:v7 forKeyedSubscript:@"currencyCode"];
  }

  valueMetadata = [(_INPBCurrencyAmountValue *)self valueMetadata];
  dictionaryRepresentation2 = [valueMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"valueMetadata"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBDecimalNumberValue *)self->_amount hash];
  v4 = [(NSString *)self->_currencyCode hash]^ v3;
  return v4 ^ [(_INPBValueMetadata *)self->_valueMetadata hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  amount = [(_INPBCurrencyAmountValue *)self amount];
  amount2 = [equalCopy amount];
  if ((amount != 0) == (amount2 == 0))
  {
    goto LABEL_16;
  }

  amount3 = [(_INPBCurrencyAmountValue *)self amount];
  if (amount3)
  {
    v8 = amount3;
    amount4 = [(_INPBCurrencyAmountValue *)self amount];
    amount5 = [equalCopy amount];
    v11 = [amount4 isEqual:amount5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  amount = [(_INPBCurrencyAmountValue *)self currencyCode];
  amount2 = [equalCopy currencyCode];
  if ((amount != 0) == (amount2 == 0))
  {
    goto LABEL_16;
  }

  currencyCode = [(_INPBCurrencyAmountValue *)self currencyCode];
  if (currencyCode)
  {
    v13 = currencyCode;
    currencyCode2 = [(_INPBCurrencyAmountValue *)self currencyCode];
    currencyCode3 = [equalCopy currencyCode];
    v16 = [currencyCode2 isEqual:currencyCode3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  amount = [(_INPBCurrencyAmountValue *)self valueMetadata];
  amount2 = [equalCopy valueMetadata];
  if ((amount != 0) != (amount2 == 0))
  {
    valueMetadata = [(_INPBCurrencyAmountValue *)self valueMetadata];
    if (!valueMetadata)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = valueMetadata;
    valueMetadata2 = [(_INPBCurrencyAmountValue *)self valueMetadata];
    valueMetadata3 = [equalCopy valueMetadata];
    v21 = [valueMetadata2 isEqual:valueMetadata3];

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
  v5 = [+[_INPBCurrencyAmountValue allocWithZone:](_INPBCurrencyAmountValue init];
  v6 = [(_INPBDecimalNumberValue *)self->_amount copyWithZone:zone];
  [(_INPBCurrencyAmountValue *)v5 setAmount:v6];

  v7 = [(NSString *)self->_currencyCode copyWithZone:zone];
  [(_INPBCurrencyAmountValue *)v5 setCurrencyCode:v7];

  v8 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:zone];
  [(_INPBCurrencyAmountValue *)v5 setValueMetadata:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBCurrencyAmountValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBCurrencyAmountValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBCurrencyAmountValue *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  amount = [(_INPBCurrencyAmountValue *)self amount];

  if (amount)
  {
    amount2 = [(_INPBCurrencyAmountValue *)self amount];
    PBDataWriterWriteSubmessage();
  }

  currencyCode = [(_INPBCurrencyAmountValue *)self currencyCode];

  if (currencyCode)
  {
    currencyCode = self->_currencyCode;
    PBDataWriterWriteStringField();
  }

  valueMetadata = [(_INPBCurrencyAmountValue *)self valueMetadata];

  v9 = toCopy;
  if (valueMetadata)
  {
    valueMetadata2 = [(_INPBCurrencyAmountValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
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