@interface _INPBDoubleValue
- (BOOL)isEqual:(id)equal;
- (_INPBDoubleValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBDoubleValue

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBDoubleValue *)self hasValue])
  {
    v4 = MEMORY[0x1E696AD98];
    [(_INPBDoubleValue *)self value];
    v5 = [v4 numberWithDouble:?];
    [dictionary setObject:v5 forKeyedSubscript:@"value"];
  }

  valueMetadata = [(_INPBDoubleValue *)self valueMetadata];
  dictionaryRepresentation = [valueMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"valueMetadata"];

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBDoubleValue *)self hasValue])
  {
    value = self->_value;
    if (value < 0.0)
    {
      value = -value;
    }

    *v3.i64 = floor(value + 0.5);
    v6 = (value - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v8 = 2654435761u * *vbslq_s8(vnegq_f64(v7), v4, v3).i64;
    if (v6 >= 0.0)
    {
      if (v6 > 0.0)
      {
        v8 += v6;
      }
    }

    else
    {
      v8 -= fabs(v6);
    }
  }

  else
  {
    v8 = 0;
  }

  return [(_INPBValueMetadata *)self->_valueMetadata hash]^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    hasValue = [(_INPBDoubleValue *)self hasValue];
    if (hasValue == [equalCopy hasValue])
    {
      if (!-[_INPBDoubleValue hasValue](self, "hasValue") || ![equalCopy hasValue] || (value = self->_value, objc_msgSend(equalCopy, "value"), value == v7))
      {
        valueMetadata = [(_INPBDoubleValue *)self valueMetadata];
        valueMetadata2 = [equalCopy valueMetadata];
        v10 = valueMetadata2;
        if ((valueMetadata != 0) != (valueMetadata2 == 0))
        {
          valueMetadata3 = [(_INPBDoubleValue *)self valueMetadata];
          if (!valueMetadata3)
          {

LABEL_14:
            v16 = 1;
            goto LABEL_12;
          }

          v12 = valueMetadata3;
          valueMetadata4 = [(_INPBDoubleValue *)self valueMetadata];
          valueMetadata5 = [equalCopy valueMetadata];
          v15 = [valueMetadata4 isEqual:valueMetadata5];

          if (v15)
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

  v16 = 0;
LABEL_12:

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBDoubleValue allocWithZone:](_INPBDoubleValue init];
  if ([(_INPBDoubleValue *)self hasValue])
  {
    [(_INPBDoubleValue *)self value];
    [(_INPBDoubleValue *)v5 setValue:?];
  }

  v6 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:zone];
  [(_INPBDoubleValue *)v5 setValueMetadata:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBDoubleValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBDoubleValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBDoubleValue *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBDoubleValue *)self hasValue])
  {
    value = self->_value;
    PBDataWriterWriteDoubleField();
  }

  valueMetadata = [(_INPBDoubleValue *)self valueMetadata];

  v6 = toCopy;
  if (valueMetadata)
  {
    valueMetadata2 = [(_INPBDoubleValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

@end