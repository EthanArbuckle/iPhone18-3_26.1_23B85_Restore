@interface _INPBDataValue
- (BOOL)isEqual:(id)equal;
- (_INPBDataValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setValue:(id)value;
- (void)writeTo:(id)to;
@end

@implementation _INPBDataValue

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_value)
  {
    value = [(_INPBDataValue *)self value];
    v5 = [value copy];
    [dictionary setObject:v5 forKeyedSubscript:@"value"];
  }

  valueMetadata = [(_INPBDataValue *)self valueMetadata];
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

  value = [(_INPBDataValue *)self value];
  value2 = [equalCopy value];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_11;
  }

  value3 = [(_INPBDataValue *)self value];
  if (value3)
  {
    v8 = value3;
    value4 = [(_INPBDataValue *)self value];
    value5 = [equalCopy value];
    v11 = [value4 isEqual:value5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  value = [(_INPBDataValue *)self valueMetadata];
  value2 = [equalCopy valueMetadata];
  if ((value != 0) != (value2 == 0))
  {
    valueMetadata = [(_INPBDataValue *)self valueMetadata];
    if (!valueMetadata)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = valueMetadata;
    valueMetadata2 = [(_INPBDataValue *)self valueMetadata];
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
  v5 = [+[_INPBDataValue allocWithZone:](_INPBDataValue init];
  v6 = [(NSData *)self->_value copyWithZone:zone];
  [(_INPBDataValue *)v5 setValue:v6];

  v7 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:zone];
  [(_INPBDataValue *)v5 setValueMetadata:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBDataValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBDataValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBDataValue *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  value = [(_INPBDataValue *)self value];

  if (value)
  {
    value = self->_value;
    PBDataWriterWriteDataField();
  }

  valueMetadata = [(_INPBDataValue *)self valueMetadata];

  if (valueMetadata)
  {
    valueMetadata2 = [(_INPBDataValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();
  }
}

- (void)setValue:(id)value
{
  v4 = [value copy];
  value = self->_value;
  self->_value = v4;

  MEMORY[0x1EEE66BB8](v4, value);
}

@end