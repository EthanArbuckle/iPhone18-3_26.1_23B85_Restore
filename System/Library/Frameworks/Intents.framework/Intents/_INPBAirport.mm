@interface _INPBAirport
- (BOOL)isEqual:(id)equal;
- (_INPBAirport)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setIataCode:(id)code;
- (void)setIcaoCode:(id)code;
- (void)setName:(id)name;
- (void)writeTo:(id)to;
@end

@implementation _INPBAirport

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_iataCode)
  {
    iataCode = [(_INPBAirport *)self iataCode];
    v5 = [iataCode copy];
    [dictionary setObject:v5 forKeyedSubscript:@"iataCode"];
  }

  if (self->_icaoCode)
  {
    icaoCode = [(_INPBAirport *)self icaoCode];
    v7 = [icaoCode copy];
    [dictionary setObject:v7 forKeyedSubscript:@"icaoCode"];
  }

  if (self->_name)
  {
    name = [(_INPBAirport *)self name];
    v9 = [name copy];
    [dictionary setObject:v9 forKeyedSubscript:@"name"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_iataCode hash];
  v4 = [(NSString *)self->_icaoCode hash]^ v3;
  return v4 ^ [(NSString *)self->_name hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  iataCode = [(_INPBAirport *)self iataCode];
  iataCode2 = [equalCopy iataCode];
  if ((iataCode != 0) == (iataCode2 == 0))
  {
    goto LABEL_16;
  }

  iataCode3 = [(_INPBAirport *)self iataCode];
  if (iataCode3)
  {
    v8 = iataCode3;
    iataCode4 = [(_INPBAirport *)self iataCode];
    iataCode5 = [equalCopy iataCode];
    v11 = [iataCode4 isEqual:iataCode5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  iataCode = [(_INPBAirport *)self icaoCode];
  iataCode2 = [equalCopy icaoCode];
  if ((iataCode != 0) == (iataCode2 == 0))
  {
    goto LABEL_16;
  }

  icaoCode = [(_INPBAirport *)self icaoCode];
  if (icaoCode)
  {
    v13 = icaoCode;
    icaoCode2 = [(_INPBAirport *)self icaoCode];
    icaoCode3 = [equalCopy icaoCode];
    v16 = [icaoCode2 isEqual:icaoCode3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  iataCode = [(_INPBAirport *)self name];
  iataCode2 = [equalCopy name];
  if ((iataCode != 0) != (iataCode2 == 0))
  {
    name = [(_INPBAirport *)self name];
    if (!name)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = name;
    name2 = [(_INPBAirport *)self name];
    name3 = [equalCopy name];
    v21 = [name2 isEqual:name3];

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
  v5 = [+[_INPBAirport allocWithZone:](_INPBAirport init];
  v6 = [(NSString *)self->_iataCode copyWithZone:zone];
  [(_INPBAirport *)v5 setIataCode:v6];

  v7 = [(NSString *)self->_icaoCode copyWithZone:zone];
  [(_INPBAirport *)v5 setIcaoCode:v7];

  v8 = [(NSString *)self->_name copyWithZone:zone];
  [(_INPBAirport *)v5 setName:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBAirport *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBAirport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBAirport *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  iataCode = [(_INPBAirport *)self iataCode];

  if (iataCode)
  {
    iataCode = self->_iataCode;
    PBDataWriterWriteStringField();
  }

  icaoCode = [(_INPBAirport *)self icaoCode];

  if (icaoCode)
  {
    icaoCode = self->_icaoCode;
    PBDataWriterWriteStringField();
  }

  name = [(_INPBAirport *)self name];

  v9 = toCopy;
  if (name)
  {
    name = self->_name;
    PBDataWriterWriteStringField();
    v9 = toCopy;
  }
}

- (void)setName:(id)name
{
  v4 = [name copy];
  name = self->_name;
  self->_name = v4;

  MEMORY[0x1EEE66BB8](v4, name);
}

- (void)setIcaoCode:(id)code
{
  v4 = [code copy];
  icaoCode = self->_icaoCode;
  self->_icaoCode = v4;

  MEMORY[0x1EEE66BB8](v4, icaoCode);
}

- (void)setIataCode:(id)code
{
  v4 = [code copy];
  iataCode = self->_iataCode;
  self->_iataCode = v4;

  MEMORY[0x1EEE66BB8](v4, iataCode);
}

@end