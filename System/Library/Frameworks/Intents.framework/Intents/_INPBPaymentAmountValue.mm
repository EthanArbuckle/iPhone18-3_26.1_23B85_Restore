@interface _INPBPaymentAmountValue
- (BOOL)isEqual:(id)equal;
- (_INPBPaymentAmountValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsAmountType:(id)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setAmountType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBPaymentAmountValue

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBPaymentAmountValue *)self hasAmountType])
  {
    amountType = [(_INPBPaymentAmountValue *)self amountType];
    if ((amountType - 1) >= 6)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", amountType];
    }

    else
    {
      v5 = off_1E7281E28[(amountType - 1)];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"amountType"];
  }

  value = [(_INPBPaymentAmountValue *)self value];
  dictionaryRepresentation = [value dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"value"];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    hasAmountType = [(_INPBPaymentAmountValue *)self hasAmountType];
    if (hasAmountType == [equalCopy hasAmountType])
    {
      if (!-[_INPBPaymentAmountValue hasAmountType](self, "hasAmountType") || ![equalCopy hasAmountType] || (amountType = self->_amountType, amountType == objc_msgSend(equalCopy, "amountType")))
      {
        value = [(_INPBPaymentAmountValue *)self value];
        value2 = [equalCopy value];
        v9 = value2;
        if ((value != 0) != (value2 == 0))
        {
          value3 = [(_INPBPaymentAmountValue *)self value];
          if (!value3)
          {

LABEL_14:
            v15 = 1;
            goto LABEL_12;
          }

          v11 = value3;
          value4 = [(_INPBPaymentAmountValue *)self value];
          value5 = [equalCopy value];
          v14 = [value4 isEqual:value5];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBPaymentAmountValue allocWithZone:](_INPBPaymentAmountValue init];
  if ([(_INPBPaymentAmountValue *)self hasAmountType])
  {
    [(_INPBPaymentAmountValue *)v5 setAmountType:[(_INPBPaymentAmountValue *)self amountType]];
  }

  v6 = [(_INPBCurrencyAmountValue *)self->_value copyWithZone:zone];
  [(_INPBPaymentAmountValue *)v5 setValue:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBPaymentAmountValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBPaymentAmountValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBPaymentAmountValue *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBPaymentAmountValue *)self hasAmountType])
  {
    amountType = self->_amountType;
    PBDataWriterWriteInt32Field();
  }

  value = [(_INPBPaymentAmountValue *)self value];

  v6 = toCopy;
  if (value)
  {
    value2 = [(_INPBPaymentAmountValue *)self value];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (int)StringAsAmountType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"MINIMUM_DUE"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"AMOUNT_DUE"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"CURRENT_BALANCE"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"MAXIMUM_TRANSFER_AMOUNT"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"MINIMUM_TRANSFER_AMOUNT"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"STATEMENT_BALANCE"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setAmountType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_amountType = type;
  }
}

@end