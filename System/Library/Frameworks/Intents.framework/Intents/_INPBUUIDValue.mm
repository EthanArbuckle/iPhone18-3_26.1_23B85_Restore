@interface _INPBUUIDValue
- (BOOL)isEqual:(id)equal;
- (_INPBUUIDValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setUuidString:(id)string;
- (void)writeTo:(id)to;
@end

@implementation _INPBUUIDValue

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_uuidString)
  {
    uuidString = [(_INPBUUIDValue *)self uuidString];
    v5 = [uuidString copy];
    [dictionary setObject:v5 forKeyedSubscript:@"uuidString"];
  }

  valueMetadata = [(_INPBUUIDValue *)self valueMetadata];
  dictionaryRepresentation = [valueMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"valueMetadata"];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  uuidString = [(_INPBUUIDValue *)self uuidString];
  uuidString2 = [equalCopy uuidString];
  if ((uuidString != 0) == (uuidString2 == 0))
  {
    goto LABEL_11;
  }

  uuidString3 = [(_INPBUUIDValue *)self uuidString];
  if (uuidString3)
  {
    v8 = uuidString3;
    uuidString4 = [(_INPBUUIDValue *)self uuidString];
    uuidString5 = [equalCopy uuidString];
    v11 = [uuidString4 isEqual:uuidString5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  uuidString = [(_INPBUUIDValue *)self valueMetadata];
  uuidString2 = [equalCopy valueMetadata];
  if ((uuidString != 0) != (uuidString2 == 0))
  {
    valueMetadata = [(_INPBUUIDValue *)self valueMetadata];
    if (!valueMetadata)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = valueMetadata;
    valueMetadata2 = [(_INPBUUIDValue *)self valueMetadata];
    valueMetadata3 = [equalCopy valueMetadata];
    v16 = [valueMetadata2 isEqual:valueMetadata3];

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
  v5 = [+[_INPBUUIDValue allocWithZone:](_INPBUUIDValue init];
  v6 = [(NSString *)self->_uuidString copyWithZone:zone];
  [(_INPBUUIDValue *)v5 setUuidString:v6];

  v7 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:zone];
  [(_INPBUUIDValue *)v5 setValueMetadata:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBUUIDValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBUUIDValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBUUIDValue *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  uuidString = [(_INPBUUIDValue *)self uuidString];

  if (uuidString)
  {
    uuidString = self->_uuidString;
    PBDataWriterWriteStringField();
  }

  valueMetadata = [(_INPBUUIDValue *)self valueMetadata];

  if (valueMetadata)
  {
    valueMetadata2 = [(_INPBUUIDValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();
  }
}

- (void)setUuidString:(id)string
{
  v4 = [string copy];
  uuidString = self->_uuidString;
  self->_uuidString = v4;

  MEMORY[0x1EEE66BB8](v4, uuidString);
}

@end