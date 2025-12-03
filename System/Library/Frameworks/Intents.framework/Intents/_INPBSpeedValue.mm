@interface _INPBSpeedValue
- (BOOL)isEqual:(id)equal;
- (_INPBSpeedValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsUnit:(id)unit;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setHasUnit:(BOOL)unit;
- (void)setUnit:(int)unit;
- (void)writeTo:(id)to;
@end

@implementation _INPBSpeedValue

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBSpeedValue *)self hasMagnitude])
  {
    v4 = MEMORY[0x1E696AD98];
    [(_INPBSpeedValue *)self magnitude];
    v5 = [v4 numberWithDouble:?];
    [dictionary setObject:v5 forKeyedSubscript:@"magnitude"];
  }

  if ([(_INPBSpeedValue *)self hasUnit])
  {
    unit = [(_INPBSpeedValue *)self unit];
    if (unit >= 5)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", unit];
    }

    else
    {
      v7 = *(&off_1E72874E8 + unit);
    }

    [dictionary setObject:v7 forKeyedSubscript:@"unit"];
  }

  valueMetadata = [(_INPBSpeedValue *)self valueMetadata];
  dictionaryRepresentation = [valueMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"valueMetadata"];

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBSpeedValue *)self hasMagnitude])
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

  if ([(_INPBSpeedValue *)self hasUnit])
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
    hasMagnitude = [(_INPBSpeedValue *)self hasMagnitude];
    if (hasMagnitude == [equalCopy hasMagnitude])
    {
      if (!-[_INPBSpeedValue hasMagnitude](self, "hasMagnitude") || ![equalCopy hasMagnitude] || (magnitude = self->_magnitude, objc_msgSend(equalCopy, "magnitude"), magnitude == v7))
      {
        hasUnit = [(_INPBSpeedValue *)self hasUnit];
        if (hasUnit == [equalCopy hasUnit])
        {
          if (!-[_INPBSpeedValue hasUnit](self, "hasUnit") || ![equalCopy hasUnit] || (unit = self->_unit, unit == objc_msgSend(equalCopy, "unit")))
          {
            valueMetadata = [(_INPBSpeedValue *)self valueMetadata];
            valueMetadata2 = [equalCopy valueMetadata];
            v12 = valueMetadata2;
            if ((valueMetadata != 0) != (valueMetadata2 == 0))
            {
              valueMetadata3 = [(_INPBSpeedValue *)self valueMetadata];
              if (!valueMetadata3)
              {

LABEL_18:
                v18 = 1;
                goto LABEL_16;
              }

              v14 = valueMetadata3;
              valueMetadata4 = [(_INPBSpeedValue *)self valueMetadata];
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
  v5 = [+[_INPBSpeedValue allocWithZone:](_INPBSpeedValue init];
  if ([(_INPBSpeedValue *)self hasMagnitude])
  {
    [(_INPBSpeedValue *)self magnitude];
    [(_INPBSpeedValue *)v5 setMagnitude:?];
  }

  if ([(_INPBSpeedValue *)self hasUnit])
  {
    [(_INPBSpeedValue *)v5 setUnit:[(_INPBSpeedValue *)self unit]];
  }

  v6 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:zone];
  [(_INPBSpeedValue *)v5 setValueMetadata:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSpeedValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSpeedValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSpeedValue *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBSpeedValue *)self hasMagnitude])
  {
    magnitude = self->_magnitude;
    PBDataWriterWriteDoubleField();
  }

  if ([(_INPBSpeedValue *)self hasUnit])
  {
    unit = self->_unit;
    PBDataWriterWriteInt32Field();
  }

  valueMetadata = [(_INPBSpeedValue *)self valueMetadata];

  v7 = toCopy;
  if (valueMetadata)
  {
    valueMetadata2 = [(_INPBSpeedValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();

    v7 = toCopy;
  }
}

- (int)StringAsUnit:(id)unit
{
  unitCopy = unit;
  if ([unitCopy isEqualToString:@"UNKNOWN_SPEED_UNIT"])
  {
    v4 = 0;
  }

  else if ([unitCopy isEqualToString:@"METER_PER_SECOND"])
  {
    v4 = 1;
  }

  else if ([unitCopy isEqualToString:@"KILOMETER_PER_HOUR"])
  {
    v4 = 2;
  }

  else if ([unitCopy isEqualToString:@"MILE_PER_HOUR"])
  {
    v4 = 3;
  }

  else if ([unitCopy isEqualToString:@"KNOTS"])
  {
    v4 = 4;
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