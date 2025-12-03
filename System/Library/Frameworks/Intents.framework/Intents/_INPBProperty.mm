@interface _INPBProperty
- (BOOL)isEqual:(id)equal;
- (_INPBProperty)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setRole:(id)role;
- (void)writeTo:(id)to;
@end

@implementation _INPBProperty

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  payload = [(_INPBProperty *)self payload];
  dictionaryRepresentation = [payload dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"payload"];

  if (self->_role)
  {
    role = [(_INPBProperty *)self role];
    v7 = [role copy];
    [dictionary setObject:v7 forKeyedSubscript:@"role"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  payload = [(_INPBProperty *)self payload];
  payload2 = [equalCopy payload];
  if ((payload != 0) == (payload2 == 0))
  {
    goto LABEL_11;
  }

  payload3 = [(_INPBProperty *)self payload];
  if (payload3)
  {
    v8 = payload3;
    payload4 = [(_INPBProperty *)self payload];
    payload5 = [equalCopy payload];
    v11 = [payload4 isEqual:payload5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  payload = [(_INPBProperty *)self role];
  payload2 = [equalCopy role];
  if ((payload != 0) != (payload2 == 0))
  {
    role = [(_INPBProperty *)self role];
    if (!role)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = role;
    role2 = [(_INPBProperty *)self role];
    role3 = [equalCopy role];
    v16 = [role2 isEqual:role3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBProperty allocWithZone:](_INPBProperty init];
  v6 = [(_INPBIntentSlotValue *)self->_payload copyWithZone:zone];
  [(_INPBProperty *)v5 setPayload:v6];

  v7 = [(NSString *)self->_role copyWithZone:zone];
  [(_INPBProperty *)v5 setRole:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBProperty *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBProperty)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBProperty *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  payload = [(_INPBProperty *)self payload];

  if (payload)
  {
    payload2 = [(_INPBProperty *)self payload];
    PBDataWriterWriteSubmessage();
  }

  role = [(_INPBProperty *)self role];

  if (role)
  {
    role = self->_role;
    PBDataWriterWriteStringField();
  }
}

- (void)setRole:(id)role
{
  v4 = [role copy];
  role = self->_role;
  self->_role = v4;

  MEMORY[0x1EEE66BB8](v4, role);
}

@end