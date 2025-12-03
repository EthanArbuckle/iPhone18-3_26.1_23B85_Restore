@interface _INPBPowerValue
- (BOOL)isEqual:(id)equal;
- (_INPBPowerValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsUnit:(id)unit;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setHasUnit:(BOOL)unit;
- (void)setUnit:(int)unit;
- (void)writeTo:(id)to;
@end

@implementation _INPBPowerValue

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBPowerValue *)self hasMagnitude])
  {
    v4 = MEMORY[0x1E696AD98];
    [(_INPBPowerValue *)self magnitude];
    v5 = [v4 numberWithDouble:?];
    [dictionary setObject:v5 forKeyedSubscript:@"magnitude"];
  }

  if ([(_INPBPowerValue *)self hasUnit])
  {
    unit = [(_INPBPowerValue *)self unit];
    if (unit >= 0xC)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", unit];
    }

    else
    {
      v7 = off_1E7288420[unit];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"unit"];
  }

  valueMetadata = [(_INPBPowerValue *)self valueMetadata];
  dictionaryRepresentation = [valueMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"valueMetadata"];

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBPowerValue *)self hasMagnitude])
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

  if ([(_INPBPowerValue *)self hasUnit])
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
    hasMagnitude = [(_INPBPowerValue *)self hasMagnitude];
    if (hasMagnitude == [equalCopy hasMagnitude])
    {
      if (!-[_INPBPowerValue hasMagnitude](self, "hasMagnitude") || ![equalCopy hasMagnitude] || (magnitude = self->_magnitude, objc_msgSend(equalCopy, "magnitude"), magnitude == v7))
      {
        hasUnit = [(_INPBPowerValue *)self hasUnit];
        if (hasUnit == [equalCopy hasUnit])
        {
          if (!-[_INPBPowerValue hasUnit](self, "hasUnit") || ![equalCopy hasUnit] || (unit = self->_unit, unit == objc_msgSend(equalCopy, "unit")))
          {
            valueMetadata = [(_INPBPowerValue *)self valueMetadata];
            valueMetadata2 = [equalCopy valueMetadata];
            v12 = valueMetadata2;
            if ((valueMetadata != 0) != (valueMetadata2 == 0))
            {
              valueMetadata3 = [(_INPBPowerValue *)self valueMetadata];
              if (!valueMetadata3)
              {

LABEL_18:
                v18 = 1;
                goto LABEL_16;
              }

              v14 = valueMetadata3;
              valueMetadata4 = [(_INPBPowerValue *)self valueMetadata];
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
  v5 = [+[_INPBPowerValue allocWithZone:](_INPBPowerValue init];
  if ([(_INPBPowerValue *)self hasMagnitude])
  {
    [(_INPBPowerValue *)self magnitude];
    [(_INPBPowerValue *)v5 setMagnitude:?];
  }

  if ([(_INPBPowerValue *)self hasUnit])
  {
    [(_INPBPowerValue *)v5 setUnit:[(_INPBPowerValue *)self unit]];
  }

  v6 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:zone];
  [(_INPBPowerValue *)v5 setValueMetadata:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBPowerValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBPowerValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBPowerValue *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBPowerValue *)self hasMagnitude])
  {
    magnitude = self->_magnitude;
    PBDataWriterWriteDoubleField();
  }

  if ([(_INPBPowerValue *)self hasUnit])
  {
    unit = self->_unit;
    PBDataWriterWriteInt32Field();
  }

  valueMetadata = [(_INPBPowerValue *)self valueMetadata];

  v7 = toCopy;
  if (valueMetadata)
  {
    valueMetadata2 = [(_INPBPowerValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();

    v7 = toCopy;
  }
}

- (int)StringAsUnit:(id)unit
{
  unitCopy = unit;
  if ([unitCopy isEqualToString:@"UNKNOWN_POWER_UNIT"])
  {
    v4 = 0;
  }

  else if ([unitCopy isEqualToString:@"TERAWATTS"])
  {
    v4 = 1;
  }

  else if ([unitCopy isEqualToString:@"GIGAWATTS"])
  {
    v4 = 2;
  }

  else if ([unitCopy isEqualToString:@"MEGAWATTS"])
  {
    v4 = 3;
  }

  else if ([unitCopy isEqualToString:@"KILOWATTS"])
  {
    v4 = 4;
  }

  else if ([unitCopy isEqualToString:@"WATTS"])
  {
    v4 = 5;
  }

  else if ([unitCopy isEqualToString:@"MILLIWATTS"])
  {
    v4 = 6;
  }

  else if ([unitCopy isEqualToString:@"MICROWATTS"])
  {
    v4 = 7;
  }

  else if ([unitCopy isEqualToString:@"NANOWATTS"])
  {
    v4 = 8;
  }

  else if ([unitCopy isEqualToString:@"PICOWATTS"])
  {
    v4 = 9;
  }

  else if ([unitCopy isEqualToString:@"FEMTOWATTS"])
  {
    v4 = 10;
  }

  else if ([unitCopy isEqualToString:@"HORSEPOWER"])
  {
    v4 = 11;
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