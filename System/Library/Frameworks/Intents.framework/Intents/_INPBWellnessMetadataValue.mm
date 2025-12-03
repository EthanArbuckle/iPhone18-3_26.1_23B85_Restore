@interface _INPBWellnessMetadataValue
- (BOOL)isEqual:(id)equal;
- (_INPBWellnessMetadataValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBWellnessMetadataValue

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  pbDoubleValue = [(_INPBWellnessMetadataValue *)self pbDoubleValue];
  dictionaryRepresentation = [pbDoubleValue dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"doubleValue"];

  ordinalValue = [(_INPBWellnessMetadataValue *)self ordinalValue];
  dictionaryRepresentation2 = [ordinalValue dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"ordinalValue"];

  pbStringValue = [(_INPBWellnessMetadataValue *)self pbStringValue];
  dictionaryRepresentation3 = [pbStringValue dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"stringValue"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBDouble *)self->_pbDoubleValue hash];
  v4 = [(_INPBInteger *)self->_ordinalValue hash]^ v3;
  return v4 ^ [(_INPBString *)self->_pbStringValue hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  pbDoubleValue = [(_INPBWellnessMetadataValue *)self pbDoubleValue];
  pbDoubleValue2 = [equalCopy pbDoubleValue];
  if ((pbDoubleValue != 0) == (pbDoubleValue2 == 0))
  {
    goto LABEL_16;
  }

  pbDoubleValue3 = [(_INPBWellnessMetadataValue *)self pbDoubleValue];
  if (pbDoubleValue3)
  {
    v8 = pbDoubleValue3;
    pbDoubleValue4 = [(_INPBWellnessMetadataValue *)self pbDoubleValue];
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

  pbDoubleValue = [(_INPBWellnessMetadataValue *)self ordinalValue];
  pbDoubleValue2 = [equalCopy ordinalValue];
  if ((pbDoubleValue != 0) == (pbDoubleValue2 == 0))
  {
    goto LABEL_16;
  }

  ordinalValue = [(_INPBWellnessMetadataValue *)self ordinalValue];
  if (ordinalValue)
  {
    v13 = ordinalValue;
    ordinalValue2 = [(_INPBWellnessMetadataValue *)self ordinalValue];
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

  pbDoubleValue = [(_INPBWellnessMetadataValue *)self pbStringValue];
  pbDoubleValue2 = [equalCopy pbStringValue];
  if ((pbDoubleValue != 0) != (pbDoubleValue2 == 0))
  {
    pbStringValue = [(_INPBWellnessMetadataValue *)self pbStringValue];
    if (!pbStringValue)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = pbStringValue;
    pbStringValue2 = [(_INPBWellnessMetadataValue *)self pbStringValue];
    pbStringValue3 = [equalCopy pbStringValue];
    v21 = [pbStringValue2 isEqual:pbStringValue3];

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
  v5 = [+[_INPBWellnessMetadataValue allocWithZone:](_INPBWellnessMetadataValue init];
  v6 = [(_INPBDouble *)self->_pbDoubleValue copyWithZone:zone];
  [(_INPBWellnessMetadataValue *)v5 setPbDoubleValue:v6];

  v7 = [(_INPBInteger *)self->_ordinalValue copyWithZone:zone];
  [(_INPBWellnessMetadataValue *)v5 setOrdinalValue:v7];

  v8 = [(_INPBString *)self->_pbStringValue copyWithZone:zone];
  [(_INPBWellnessMetadataValue *)v5 setPbStringValue:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBWellnessMetadataValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBWellnessMetadataValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBWellnessMetadataValue *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  pbDoubleValue = [(_INPBWellnessMetadataValue *)self pbDoubleValue];

  if (pbDoubleValue)
  {
    pbDoubleValue2 = [(_INPBWellnessMetadataValue *)self pbDoubleValue];
    PBDataWriterWriteSubmessage();
  }

  ordinalValue = [(_INPBWellnessMetadataValue *)self ordinalValue];

  if (ordinalValue)
  {
    ordinalValue2 = [(_INPBWellnessMetadataValue *)self ordinalValue];
    PBDataWriterWriteSubmessage();
  }

  pbStringValue = [(_INPBWellnessMetadataValue *)self pbStringValue];

  v9 = toCopy;
  if (pbStringValue)
  {
    pbStringValue2 = [(_INPBWellnessMetadataValue *)self pbStringValue];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

@end