@interface _INPBWellnessValue
- (BOOL)isEqual:(id)equal;
- (_INPBWellnessValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBWellnessValue

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  pbDoubleValue = [(_INPBWellnessValue *)self pbDoubleValue];
  dictionaryRepresentation = [pbDoubleValue dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"doubleValue"];

  ordinalValue = [(_INPBWellnessValue *)self ordinalValue];
  dictionaryRepresentation2 = [ordinalValue dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"ordinalValue"];

  valueMetadata = [(_INPBWellnessValue *)self valueMetadata];
  dictionaryRepresentation3 = [valueMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"valueMetadata"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBDouble *)self->_pbDoubleValue hash];
  v4 = [(_INPBInteger *)self->_ordinalValue hash]^ v3;
  return v4 ^ [(_INPBValueMetadata *)self->_valueMetadata hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  pbDoubleValue = [(_INPBWellnessValue *)self pbDoubleValue];
  pbDoubleValue2 = [equalCopy pbDoubleValue];
  if ((pbDoubleValue != 0) == (pbDoubleValue2 == 0))
  {
    goto LABEL_16;
  }

  pbDoubleValue3 = [(_INPBWellnessValue *)self pbDoubleValue];
  if (pbDoubleValue3)
  {
    v8 = pbDoubleValue3;
    pbDoubleValue4 = [(_INPBWellnessValue *)self pbDoubleValue];
    pbDoubleValue5 = [equalCopy pbDoubleValue];
    v11 = [pbDoubleValue4 isEqual:pbDoubleValue5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  pbDoubleValue = [(_INPBWellnessValue *)self ordinalValue];
  pbDoubleValue2 = [equalCopy ordinalValue];
  if ((pbDoubleValue != 0) == (pbDoubleValue2 == 0))
  {
    goto LABEL_16;
  }

  ordinalValue = [(_INPBWellnessValue *)self ordinalValue];
  if (ordinalValue)
  {
    v13 = ordinalValue;
    ordinalValue2 = [(_INPBWellnessValue *)self ordinalValue];
    ordinalValue3 = [equalCopy ordinalValue];
    v16 = [ordinalValue2 isEqual:ordinalValue3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  pbDoubleValue = [(_INPBWellnessValue *)self valueMetadata];
  pbDoubleValue2 = [equalCopy valueMetadata];
  if ((pbDoubleValue != 0) != (pbDoubleValue2 == 0))
  {
    valueMetadata = [(_INPBWellnessValue *)self valueMetadata];
    if (!valueMetadata)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = valueMetadata;
    valueMetadata2 = [(_INPBWellnessValue *)self valueMetadata];
    valueMetadata3 = [equalCopy valueMetadata];
    v21 = [valueMetadata2 isEqual:valueMetadata3];

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
  v5 = [+[_INPBWellnessValue allocWithZone:](_INPBWellnessValue init];
  v6 = [(_INPBDouble *)self->_pbDoubleValue copyWithZone:zone];
  [(_INPBWellnessValue *)v5 setPbDoubleValue:v6];

  v7 = [(_INPBInteger *)self->_ordinalValue copyWithZone:zone];
  [(_INPBWellnessValue *)v5 setOrdinalValue:v7];

  v8 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:zone];
  [(_INPBWellnessValue *)v5 setValueMetadata:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBWellnessValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBWellnessValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBWellnessValue *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  pbDoubleValue = [(_INPBWellnessValue *)self pbDoubleValue];

  if (pbDoubleValue)
  {
    pbDoubleValue2 = [(_INPBWellnessValue *)self pbDoubleValue];
    PBDataWriterWriteSubmessage();
  }

  ordinalValue = [(_INPBWellnessValue *)self ordinalValue];

  if (ordinalValue)
  {
    ordinalValue2 = [(_INPBWellnessValue *)self ordinalValue];
    PBDataWriterWriteSubmessage();
  }

  valueMetadata = [(_INPBWellnessValue *)self valueMetadata];

  v9 = toCopy;
  if (valueMetadata)
  {
    valueMetadata2 = [(_INPBWellnessValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

@end