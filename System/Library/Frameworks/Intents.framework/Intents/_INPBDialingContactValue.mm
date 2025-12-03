@interface _INPBDialingContactValue
- (BOOL)isEqual:(id)equal;
- (_INPBDialingContactValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBDialingContactValue

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dialingContact = [(_INPBDialingContactValue *)self dialingContact];
  dictionaryRepresentation = [dialingContact dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"dialingContact"];

  dialingPhoneLabel = [(_INPBDialingContactValue *)self dialingPhoneLabel];
  dictionaryRepresentation2 = [dialingPhoneLabel dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"dialingPhoneLabel"];

  dialingPhoneNumber = [(_INPBDialingContactValue *)self dialingPhoneNumber];
  dictionaryRepresentation3 = [dialingPhoneNumber dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"dialingPhoneNumber"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBContactValue *)self->_dialingContact hash];
  v4 = [(_INPBStringValue *)self->_dialingPhoneLabel hash]^ v3;
  return v4 ^ [(_INPBStringValue *)self->_dialingPhoneNumber hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  dialingContact = [(_INPBDialingContactValue *)self dialingContact];
  dialingContact2 = [equalCopy dialingContact];
  if ((dialingContact != 0) == (dialingContact2 == 0))
  {
    goto LABEL_16;
  }

  dialingContact3 = [(_INPBDialingContactValue *)self dialingContact];
  if (dialingContact3)
  {
    v8 = dialingContact3;
    dialingContact4 = [(_INPBDialingContactValue *)self dialingContact];
    dialingContact5 = [equalCopy dialingContact];
    v11 = [dialingContact4 isEqual:dialingContact5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  dialingContact = [(_INPBDialingContactValue *)self dialingPhoneLabel];
  dialingContact2 = [equalCopy dialingPhoneLabel];
  if ((dialingContact != 0) == (dialingContact2 == 0))
  {
    goto LABEL_16;
  }

  dialingPhoneLabel = [(_INPBDialingContactValue *)self dialingPhoneLabel];
  if (dialingPhoneLabel)
  {
    v13 = dialingPhoneLabel;
    dialingPhoneLabel2 = [(_INPBDialingContactValue *)self dialingPhoneLabel];
    dialingPhoneLabel3 = [equalCopy dialingPhoneLabel];
    v16 = [dialingPhoneLabel2 isEqual:dialingPhoneLabel3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  dialingContact = [(_INPBDialingContactValue *)self dialingPhoneNumber];
  dialingContact2 = [equalCopy dialingPhoneNumber];
  if ((dialingContact != 0) != (dialingContact2 == 0))
  {
    dialingPhoneNumber = [(_INPBDialingContactValue *)self dialingPhoneNumber];
    if (!dialingPhoneNumber)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = dialingPhoneNumber;
    dialingPhoneNumber2 = [(_INPBDialingContactValue *)self dialingPhoneNumber];
    dialingPhoneNumber3 = [equalCopy dialingPhoneNumber];
    v21 = [dialingPhoneNumber2 isEqual:dialingPhoneNumber3];

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
  v5 = [+[_INPBDialingContactValue allocWithZone:](_INPBDialingContactValue init];
  v6 = [(_INPBContactValue *)self->_dialingContact copyWithZone:zone];
  [(_INPBDialingContactValue *)v5 setDialingContact:v6];

  v7 = [(_INPBStringValue *)self->_dialingPhoneLabel copyWithZone:zone];
  [(_INPBDialingContactValue *)v5 setDialingPhoneLabel:v7];

  v8 = [(_INPBStringValue *)self->_dialingPhoneNumber copyWithZone:zone];
  [(_INPBDialingContactValue *)v5 setDialingPhoneNumber:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBDialingContactValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBDialingContactValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBDialingContactValue *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  dialingContact = [(_INPBDialingContactValue *)self dialingContact];

  if (dialingContact)
  {
    dialingContact2 = [(_INPBDialingContactValue *)self dialingContact];
    PBDataWriterWriteSubmessage();
  }

  dialingPhoneLabel = [(_INPBDialingContactValue *)self dialingPhoneLabel];

  if (dialingPhoneLabel)
  {
    dialingPhoneLabel2 = [(_INPBDialingContactValue *)self dialingPhoneLabel];
    PBDataWriterWriteSubmessage();
  }

  dialingPhoneNumber = [(_INPBDialingContactValue *)self dialingPhoneNumber];

  v9 = toCopy;
  if (dialingPhoneNumber)
  {
    dialingPhoneNumber2 = [(_INPBDialingContactValue *)self dialingPhoneNumber];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

@end