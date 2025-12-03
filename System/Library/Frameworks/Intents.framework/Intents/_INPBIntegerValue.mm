@interface _INPBIntegerValue
- (BOOL)isEqual:(id)equal;
- (_INPBIntegerValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBIntegerValue

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBIntegerValue *)self hasValue])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[_INPBIntegerValue value](self, "value")}];
    [dictionary setObject:v4 forKeyedSubscript:@"value"];
  }

  valueMetadata = [(_INPBIntegerValue *)self valueMetadata];
  dictionaryRepresentation = [valueMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"valueMetadata"];

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBIntegerValue *)self hasValue])
  {
    v3 = 2654435761 * self->_value;
  }

  else
  {
    v3 = 0;
  }

  return [(_INPBValueMetadata *)self->_valueMetadata hash]^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    hasValue = [(_INPBIntegerValue *)self hasValue];
    if (hasValue == [equalCopy hasValue])
    {
      if (!-[_INPBIntegerValue hasValue](self, "hasValue") || ![equalCopy hasValue] || (value = self->_value, value == objc_msgSend(equalCopy, "value")))
      {
        valueMetadata = [(_INPBIntegerValue *)self valueMetadata];
        valueMetadata2 = [equalCopy valueMetadata];
        v9 = valueMetadata2;
        if ((valueMetadata != 0) != (valueMetadata2 == 0))
        {
          valueMetadata3 = [(_INPBIntegerValue *)self valueMetadata];
          if (!valueMetadata3)
          {

LABEL_14:
            v15 = 1;
            goto LABEL_12;
          }

          v11 = valueMetadata3;
          valueMetadata4 = [(_INPBIntegerValue *)self valueMetadata];
          valueMetadata5 = [equalCopy valueMetadata];
          v14 = [valueMetadata4 isEqual:valueMetadata5];

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
  v5 = [+[_INPBIntegerValue allocWithZone:](_INPBIntegerValue init];
  if ([(_INPBIntegerValue *)self hasValue])
  {
    [(_INPBIntegerValue *)v5 setValue:[(_INPBIntegerValue *)self value]];
  }

  v6 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:zone];
  [(_INPBIntegerValue *)v5 setValueMetadata:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBIntegerValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBIntegerValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBIntegerValue *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBIntegerValue *)self hasValue])
  {
    value = self->_value;
    PBDataWriterWriteInt32Field();
  }

  valueMetadata = [(_INPBIntegerValue *)self valueMetadata];

  v6 = toCopy;
  if (valueMetadata)
  {
    valueMetadata2 = [(_INPBIntegerValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

@end