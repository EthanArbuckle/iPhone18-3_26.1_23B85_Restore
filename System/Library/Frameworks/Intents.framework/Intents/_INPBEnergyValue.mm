@interface _INPBEnergyValue
- (BOOL)isEqual:(id)equal;
- (_INPBEnergyValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsUnit:(id)unit;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setHasUnit:(BOOL)unit;
- (void)setUnit:(int)unit;
- (void)writeTo:(id)to;
@end

@implementation _INPBEnergyValue

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBEnergyValue *)self hasMagnitude])
  {
    v4 = MEMORY[0x1E696AD98];
    [(_INPBEnergyValue *)self magnitude];
    v5 = [v4 numberWithDouble:?];
    [dictionary setObject:v5 forKeyedSubscript:@"magnitude"];
  }

  if ([(_INPBEnergyValue *)self hasUnit])
  {
    unit = [(_INPBEnergyValue *)self unit];
    if (unit >= 6)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", unit];
    }

    else
    {
      v7 = *(&off_1E7287348 + unit);
    }

    [dictionary setObject:v7 forKeyedSubscript:@"unit"];
  }

  valueMetadata = [(_INPBEnergyValue *)self valueMetadata];
  dictionaryRepresentation = [valueMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"valueMetadata"];

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBEnergyValue *)self hasMagnitude])
  {
    magnitude = self->_magnitude;
    if (magnitude < 0.0)
    {
      magnitude = -magnitude;
    }

    *v3.i64 = floor(magnitude + 0.5);
    v6 = (magnitude - *v3.i64) * 1.84467441e19;
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

  if ([(_INPBEnergyValue *)self hasUnit])
  {
    v9 = 2654435761 * self->_unit;
  }

  else
  {
    v9 = 0;
  }

  return v9 ^ v8 ^ [(_INPBValueMetadata *)self->_valueMetadata hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    hasMagnitude = [(_INPBEnergyValue *)self hasMagnitude];
    if (hasMagnitude == [equalCopy hasMagnitude])
    {
      if (!-[_INPBEnergyValue hasMagnitude](self, "hasMagnitude") || ![equalCopy hasMagnitude] || (magnitude = self->_magnitude, objc_msgSend(equalCopy, "magnitude"), magnitude == v7))
      {
        hasUnit = [(_INPBEnergyValue *)self hasUnit];
        if (hasUnit == [equalCopy hasUnit])
        {
          if (!-[_INPBEnergyValue hasUnit](self, "hasUnit") || ![equalCopy hasUnit] || (unit = self->_unit, unit == objc_msgSend(equalCopy, "unit")))
          {
            valueMetadata = [(_INPBEnergyValue *)self valueMetadata];
            valueMetadata2 = [equalCopy valueMetadata];
            v12 = valueMetadata2;
            if ((valueMetadata != 0) != (valueMetadata2 == 0))
            {
              valueMetadata3 = [(_INPBEnergyValue *)self valueMetadata];
              if (!valueMetadata3)
              {

LABEL_18:
                v18 = 1;
                goto LABEL_16;
              }

              v14 = valueMetadata3;
              valueMetadata4 = [(_INPBEnergyValue *)self valueMetadata];
              valueMetadata5 = [equalCopy valueMetadata];
              v17 = [valueMetadata4 isEqual:valueMetadata5];

              if (v17)
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

  v18 = 0;
LABEL_16:

  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBEnergyValue allocWithZone:](_INPBEnergyValue init];
  if ([(_INPBEnergyValue *)self hasMagnitude])
  {
    [(_INPBEnergyValue *)self magnitude];
    [(_INPBEnergyValue *)v5 setMagnitude:?];
  }

  if ([(_INPBEnergyValue *)self hasUnit])
  {
    [(_INPBEnergyValue *)v5 setUnit:[(_INPBEnergyValue *)self unit]];
  }

  v6 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:zone];
  [(_INPBEnergyValue *)v5 setValueMetadata:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBEnergyValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBEnergyValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBEnergyValue *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBEnergyValue *)self hasMagnitude])
  {
    magnitude = self->_magnitude;
    PBDataWriterWriteDoubleField();
  }

  if ([(_INPBEnergyValue *)self hasUnit])
  {
    unit = self->_unit;
    PBDataWriterWriteInt32Field();
  }

  valueMetadata = [(_INPBEnergyValue *)self valueMetadata];

  v7 = toCopy;
  if (valueMetadata)
  {
    valueMetadata2 = [(_INPBEnergyValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();

    v7 = toCopy;
  }
}

- (int)StringAsUnit:(id)unit
{
  unitCopy = unit;
  if ([unitCopy isEqualToString:@"UNKNOWN_ENERGY_UNIT"])
  {
    v4 = 0;
  }

  else if ([unitCopy isEqualToString:@"KILOJOULE"])
  {
    v4 = 1;
  }

  else if ([unitCopy isEqualToString:@"JOULE"])
  {
    v4 = 2;
  }

  else if ([unitCopy isEqualToString:@"KILOCALORIE"])
  {
    v4 = 3;
  }

  else if ([unitCopy isEqualToString:@"CALORIE"])
  {
    v4 = 4;
  }

  else if ([unitCopy isEqualToString:@"KILOWATT_HOUR"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasUnit:(BOOL)unit
{
  if (unit)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setUnit:(int)unit
{
  has = self->_has;
  if (unit == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_unit = unit;
  }
}

@end