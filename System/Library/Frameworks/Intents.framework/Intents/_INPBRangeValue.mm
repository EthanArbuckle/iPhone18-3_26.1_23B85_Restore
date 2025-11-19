@interface _INPBRangeValue
- (BOOL)isEqual:(id)a3;
- (_INPBRangeValue)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setHasLocation:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBRangeValue

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBRangeValue *)self hasLength])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_INPBRangeValue length](self, "length")}];
    [v3 setObject:v4 forKeyedSubscript:@"length"];
  }

  if ([(_INPBRangeValue *)self hasLocation])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_INPBRangeValue location](self, "location")}];
    [v3 setObject:v5 forKeyedSubscript:@"location"];
  }

  v6 = [(_INPBRangeValue *)self valueMetadata];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"valueMetadata"];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_INPBRangeValue *)self hasLength];
    if (v5 == [v4 hasLength])
    {
      if (!-[_INPBRangeValue hasLength](self, "hasLength") || ![v4 hasLength] || (length = self->_length, length == objc_msgSend(v4, "length")))
      {
        v7 = [(_INPBRangeValue *)self hasLocation];
        if (v7 == [v4 hasLocation])
        {
          if (!-[_INPBRangeValue hasLocation](self, "hasLocation") || ![v4 hasLocation] || (location = self->_location, location == objc_msgSend(v4, "location")))
          {
            v9 = [(_INPBRangeValue *)self valueMetadata];
            v10 = [v4 valueMetadata];
            v11 = v10;
            if ((v9 != 0) != (v10 == 0))
            {
              v12 = [(_INPBRangeValue *)self valueMetadata];
              if (!v12)
              {

LABEL_18:
                v17 = 1;
                goto LABEL_16;
              }

              v13 = v12;
              v14 = [(_INPBRangeValue *)self valueMetadata];
              v15 = [v4 valueMetadata];
              v16 = [v14 isEqual:v15];

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

- (id)copyWithZone:(_NSZone *)a3
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

  v6 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:a3];
  [(_INPBRangeValue *)v5 setValueMetadata:v6];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBRangeValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBRangeValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBRangeValue *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
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

  v6 = [(_INPBRangeValue *)self valueMetadata];

  v7 = v9;
  if (v6)
  {
    v8 = [(_INPBRangeValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();

    v7 = v9;
  }
}

- (void)setHasLocation:(BOOL)a3
{
  if (a3)
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