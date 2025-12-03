@interface _INPBCallMetrics
- (BOOL)isEqual:(id)equal;
- (_INPBCallMetrics)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBCallMetrics

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  value = [(_INPBCallMetrics *)self value];
  dictionaryRepresentation = [value dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"value"];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    value = [(_INPBCallMetrics *)self value];
    value2 = [equalCopy value];
    v7 = value2;
    if ((value != 0) != (value2 == 0))
    {
      value3 = [(_INPBCallMetrics *)self value];
      if (!value3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = value3;
      value4 = [(_INPBCallMetrics *)self value];
      value5 = [equalCopy value];
      v12 = [value4 isEqual:value5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBCallMetrics allocWithZone:](_INPBCallMetrics init];
  v6 = [(_INPBCallMetricsValue *)self->_value copyWithZone:zone];
  [(_INPBCallMetrics *)v5 setValue:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBCallMetrics *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBCallMetrics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBCallMetrics *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  value = [(_INPBCallMetrics *)self value];

  if (value)
  {
    value2 = [(_INPBCallMetrics *)self value];
    PBDataWriterWriteSubmessage();
  }
}

@end