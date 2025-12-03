@interface _INPBPaymentMethodValue
- (BOOL)isEqual:(id)equal;
- (_INPBPaymentMethodValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setIdentificationHint:(id)hint;
- (void)setName:(id)name;
- (void)setType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBPaymentMethodValue

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  icon = [(_INPBPaymentMethodValue *)self icon];
  dictionaryRepresentation = [icon dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"icon"];

  if (self->_identificationHint)
  {
    identificationHint = [(_INPBPaymentMethodValue *)self identificationHint];
    v7 = [identificationHint copy];
    [dictionary setObject:v7 forKeyedSubscript:@"identificationHint"];
  }

  if (self->_name)
  {
    name = [(_INPBPaymentMethodValue *)self name];
    v9 = [name copy];
    [dictionary setObject:v9 forKeyedSubscript:@"name"];
  }

  if ([(_INPBPaymentMethodValue *)self hasType])
  {
    type = [(_INPBPaymentMethodValue *)self type];
    if ((type - 1) >= 8)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", type];
    }

    else
    {
      v11 = off_1E72805D0[(type - 1)];
    }

    [dictionary setObject:v11 forKeyedSubscript:@"type"];
  }

  valueMetadata = [(_INPBPaymentMethodValue *)self valueMetadata];
  dictionaryRepresentation2 = [valueMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"valueMetadata"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBImageValue *)self->_icon hash];
  v4 = [(NSString *)self->_identificationHint hash];
  v5 = [(NSString *)self->_name hash];
  if ([(_INPBPaymentMethodValue *)self hasType])
  {
    v6 = 2654435761 * self->_type;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ [(_INPBValueMetadata *)self->_valueMetadata hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  icon = [(_INPBPaymentMethodValue *)self icon];
  icon2 = [equalCopy icon];
  if ((icon != 0) == (icon2 == 0))
  {
    goto LABEL_25;
  }

  icon3 = [(_INPBPaymentMethodValue *)self icon];
  if (icon3)
  {
    v8 = icon3;
    icon4 = [(_INPBPaymentMethodValue *)self icon];
    icon5 = [equalCopy icon];
    v11 = [icon4 isEqual:icon5];

    if (!v11)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  icon = [(_INPBPaymentMethodValue *)self identificationHint];
  icon2 = [equalCopy identificationHint];
  if ((icon != 0) == (icon2 == 0))
  {
    goto LABEL_25;
  }

  identificationHint = [(_INPBPaymentMethodValue *)self identificationHint];
  if (identificationHint)
  {
    v13 = identificationHint;
    identificationHint2 = [(_INPBPaymentMethodValue *)self identificationHint];
    identificationHint3 = [equalCopy identificationHint];
    v16 = [identificationHint2 isEqual:identificationHint3];

    if (!v16)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  icon = [(_INPBPaymentMethodValue *)self name];
  icon2 = [equalCopy name];
  if ((icon != 0) == (icon2 == 0))
  {
    goto LABEL_25;
  }

  name = [(_INPBPaymentMethodValue *)self name];
  if (name)
  {
    v18 = name;
    name2 = [(_INPBPaymentMethodValue *)self name];
    name3 = [equalCopy name];
    v21 = [name2 isEqual:name3];

    if (!v21)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  hasType = [(_INPBPaymentMethodValue *)self hasType];
  if (hasType != [equalCopy hasType])
  {
    goto LABEL_26;
  }

  if ([(_INPBPaymentMethodValue *)self hasType])
  {
    if ([equalCopy hasType])
    {
      type = self->_type;
      if (type != [equalCopy type])
      {
        goto LABEL_26;
      }
    }
  }

  icon = [(_INPBPaymentMethodValue *)self valueMetadata];
  icon2 = [equalCopy valueMetadata];
  if ((icon != 0) != (icon2 == 0))
  {
    valueMetadata = [(_INPBPaymentMethodValue *)self valueMetadata];
    if (!valueMetadata)
    {

LABEL_29:
      v29 = 1;
      goto LABEL_27;
    }

    v25 = valueMetadata;
    valueMetadata2 = [(_INPBPaymentMethodValue *)self valueMetadata];
    valueMetadata3 = [equalCopy valueMetadata];
    v28 = [valueMetadata2 isEqual:valueMetadata3];

    if (v28)
    {
      goto LABEL_29;
    }
  }

  else
  {
LABEL_25:
  }

LABEL_26:
  v29 = 0;
LABEL_27:

  return v29;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBPaymentMethodValue allocWithZone:](_INPBPaymentMethodValue init];
  v6 = [(_INPBImageValue *)self->_icon copyWithZone:zone];
  [(_INPBPaymentMethodValue *)v5 setIcon:v6];

  v7 = [(NSString *)self->_identificationHint copyWithZone:zone];
  [(_INPBPaymentMethodValue *)v5 setIdentificationHint:v7];

  v8 = [(NSString *)self->_name copyWithZone:zone];
  [(_INPBPaymentMethodValue *)v5 setName:v8];

  if ([(_INPBPaymentMethodValue *)self hasType])
  {
    [(_INPBPaymentMethodValue *)v5 setType:[(_INPBPaymentMethodValue *)self type]];
  }

  v9 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:zone];
  [(_INPBPaymentMethodValue *)v5 setValueMetadata:v9];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBPaymentMethodValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBPaymentMethodValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBPaymentMethodValue *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  icon = [(_INPBPaymentMethodValue *)self icon];

  if (icon)
  {
    icon2 = [(_INPBPaymentMethodValue *)self icon];
    PBDataWriterWriteSubmessage();
  }

  identificationHint = [(_INPBPaymentMethodValue *)self identificationHint];

  if (identificationHint)
  {
    identificationHint = self->_identificationHint;
    PBDataWriterWriteStringField();
  }

  name = [(_INPBPaymentMethodValue *)self name];

  if (name)
  {
    name = self->_name;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBPaymentMethodValue *)self hasType])
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }

  valueMetadata = [(_INPBPaymentMethodValue *)self valueMetadata];

  v12 = toCopy;
  if (valueMetadata)
  {
    valueMetadata2 = [(_INPBPaymentMethodValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();

    v12 = toCopy;
  }
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"CHECKING"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"SAVINGS"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"BROKERAGE"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"DEBIT"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"CREDIT"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"PREPAID"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"STORE"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"APPLE_PAY"])
  {
    v4 = 8;
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

- (void)setName:(id)name
{
  v4 = [name copy];
  name = self->_name;
  self->_name = v4;

  MEMORY[0x1EEE66BB8](v4, name);
}

- (void)setIdentificationHint:(id)hint
{
  v4 = [hint copy];
  identificationHint = self->_identificationHint;
  self->_identificationHint = v4;

  MEMORY[0x1EEE66BB8](v4, identificationHint);
}

@end