@interface _INPBWellnessMetadataPair
- (BOOL)isEqual:(id)equal;
- (_INPBWellnessMetadataPair)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBWellnessMetadataPair

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBWellnessMetadataPair *)self key];
  dictionaryRepresentation = [v4 dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"key"];

  value = [(_INPBWellnessMetadataPair *)self value];
  dictionaryRepresentation2 = [value dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"value"];

  valueMetadata = [(_INPBWellnessMetadataPair *)self valueMetadata];
  dictionaryRepresentation3 = [valueMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"valueMetadata"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBString *)self->_key hash];
  v4 = [(_INPBWellnessMetadataValue *)self->_value hash]^ v3;
  return v4 ^ [(_INPBValueMetadata *)self->_valueMetadata hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  value = [(_INPBWellnessMetadataPair *)self key];
  value2 = [equalCopy key];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_INPBWellnessMetadataPair *)self key];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBWellnessMetadataPair *)self key];
    v10 = [equalCopy key];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  value = [(_INPBWellnessMetadataPair *)self value];
  value2 = [equalCopy value];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_16;
  }

  value3 = [(_INPBWellnessMetadataPair *)self value];
  if (value3)
  {
    v13 = value3;
    value4 = [(_INPBWellnessMetadataPair *)self value];
    value5 = [equalCopy value];
    v16 = [value4 isEqual:value5];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  value = [(_INPBWellnessMetadataPair *)self valueMetadata];
  value2 = [equalCopy valueMetadata];
  if ((value != 0) != (value2 == 0))
  {
    valueMetadata = [(_INPBWellnessMetadataPair *)self valueMetadata];
    if (!valueMetadata)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = valueMetadata;
    valueMetadata2 = [(_INPBWellnessMetadataPair *)self valueMetadata];
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
  v5 = [+[_INPBWellnessMetadataPair allocWithZone:](_INPBWellnessMetadataPair init];
  v6 = [(_INPBString *)self->_key copyWithZone:zone];
  [(_INPBWellnessMetadataPair *)v5 setKey:v6];

  v7 = [(_INPBWellnessMetadataValue *)self->_value copyWithZone:zone];
  [(_INPBWellnessMetadataPair *)v5 setValue:v7];

  v8 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:zone];
  [(_INPBWellnessMetadataPair *)v5 setValueMetadata:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBWellnessMetadataPair *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBWellnessMetadataPair)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBWellnessMetadataPair *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v4 = [(_INPBWellnessMetadataPair *)self key];

  if (v4)
  {
    v5 = [(_INPBWellnessMetadataPair *)self key];
    PBDataWriterWriteSubmessage();
  }

  value = [(_INPBWellnessMetadataPair *)self value];

  if (value)
  {
    value2 = [(_INPBWellnessMetadataPair *)self value];
    PBDataWriterWriteSubmessage();
  }

  valueMetadata = [(_INPBWellnessMetadataPair *)self valueMetadata];

  v9 = toCopy;
  if (valueMetadata)
  {
    valueMetadata2 = [(_INPBWellnessMetadataPair *)self valueMetadata];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

@end