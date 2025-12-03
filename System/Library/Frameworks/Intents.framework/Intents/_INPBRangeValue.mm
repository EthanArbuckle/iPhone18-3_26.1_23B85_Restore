@interface _INPBRangeValue
- (BOOL)isEqual:(id)equal;
- (_INPBRangeValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setHasLocation:(BOOL)location;
- (void)writeTo:(id)to;
@end

@implementation _INPBRangeValue

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBRangeValue *)self hasLength])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_INPBRangeValue length](self, "length")}];
    [dictionary setObject:v4 forKeyedSubscript:@"length"];
  }

  if ([(_INPBRangeValue *)self hasLocation])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_INPBRangeValue location](self, "location")}];
    [dictionary setObject:v5 forKeyedSubscript:@"location"];
  }

  valueMetadata = [(_INPBRangeValue *)self valueMetadata];
  dictionaryRepresentation = [valueMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"valueMetadata"];

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBRangeValue *)self hasLength])
  {
    v3 = 2654435761u * self->_length;
  }

  else
  {
    v3 = 0;
  }

  if ([(_INPBRangeValue *)self hasLocation])
  {
    v4 = 2654435761u * self->_location;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(_INPBValueMetadata *)self->_valueMetadata hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    hasLength = [(_INPBRangeValue *)self hasLength];
    if (hasLength == [equalCopy hasLength])
    {
      if (!-[_INPBRangeValue hasLength](self, "hasLength") || ![equalCopy hasLength] || (length = self->_length, length == objc_msgSend(equalCopy, "length")))
      {
        hasLocation = [(_INPBRangeValue *)self hasLocation];
        if (hasLocation == [equalCopy hasLocation])
        {
          if (!-[_INPBRangeValue hasLocation](self, "hasLocation") || ![equalCopy hasLocation] || (location = self->_location, location == objc_msgSend(equalCopy, "location")))
          {
            valueMetadata = [(_INPBRangeValue *)self valueMetadata];
            valueMetadata2 = [equalCopy valueMetadata];
            v11 = valueMetadata2;
            if ((valueMetadata != 0) != (valueMetadata2 == 0))
            {
              valueMetadata3 = [(_INPBRangeValue *)self valueMetadata];
              if (!valueMetadata3)
              {

LABEL_18:
                v17 = 1;
                goto LABEL_16;
              }

              v13 = valueMetadata3;
              valueMetadata4 = [(_INPBRangeValue *)self valueMetadata];
              valueMetadata5 = [equalCopy valueMetadata];
              v16 = [valueMetadata4 isEqual:valueMetadata5];

              if (v16)
              {
                goto LABEL_18;
              }
            }

            else
            {
            }
          }
        }
      }
    }
  }

  v17 = 0;
LABEL_16:

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBRangeValue allocWithZone:](_INPBRangeValue init];
  if ([(_INPBRangeValue *)self hasLength])
  {
    [(_INPBRangeValue *)v5 setLength:[(_INPBRangeValue *)self length]];
  }

  if ([(_INPBRangeValue *)self hasLocation])
  {
    [(_INPBRangeValue *)v5 setLocation:[(_INPBRangeValue *)self location]];
  }

  v6 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:zone];
  [(_INPBRangeValue *)v5 setValueMetadata:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBRangeValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBRangeValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBRangeValue *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBRangeValue *)self hasLength])
  {
    length = self->_length;
    PBDataWriterWriteUint64Field();
  }

  if ([(_INPBRangeValue *)self hasLocation])
  {
    location = self->_location;
    PBDataWriterWriteUint64Field();
  }

  valueMetadata = [(_INPBRangeValue *)self valueMetadata];

  v7 = toCopy;
  if (valueMetadata)
  {
    valueMetadata2 = [(_INPBRangeValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();

    v7 = toCopy;
  }
}

- (void)setHasLocation:(BOOL)location
{
  if (location)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

@end