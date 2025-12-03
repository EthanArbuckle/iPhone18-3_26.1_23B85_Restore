@interface _INPBDistanceValue
- (BOOL)isEqual:(id)equal;
- (_INPBDistanceValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsUnit:(id)unit;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setHasUnit:(BOOL)unit;
- (void)setUnit:(int)unit;
- (void)writeTo:(id)to;
@end

@implementation _INPBDistanceValue

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBDistanceValue *)self hasMagnitude])
  {
    v4 = MEMORY[0x1E696AD98];
    [(_INPBDistanceValue *)self magnitude];
    v5 = [v4 numberWithDouble:?];
    [dictionary setObject:v5 forKeyedSubscript:@"magnitude"];
  }

  if ([(_INPBDistanceValue *)self hasUnit])
  {
    unit = [(_INPBDistanceValue *)self unit];
    if ((unit - 1) >= 0x16)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", unit];
    }

    else
    {
      v7 = off_1E72837A0[(unit - 1)];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"unit"];
  }

  valueMetadata = [(_INPBDistanceValue *)self valueMetadata];
  dictionaryRepresentation = [valueMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"valueMetadata"];

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBDistanceValue *)self hasMagnitude])
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

  if ([(_INPBDistanceValue *)self hasUnit])
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
    hasMagnitude = [(_INPBDistanceValue *)self hasMagnitude];
    if (hasMagnitude == [equalCopy hasMagnitude])
    {
      if (!-[_INPBDistanceValue hasMagnitude](self, "hasMagnitude") || ![equalCopy hasMagnitude] || (magnitude = self->_magnitude, objc_msgSend(equalCopy, "magnitude"), magnitude == v7))
      {
        hasUnit = [(_INPBDistanceValue *)self hasUnit];
        if (hasUnit == [equalCopy hasUnit])
        {
          if (!-[_INPBDistanceValue hasUnit](self, "hasUnit") || ![equalCopy hasUnit] || (unit = self->_unit, unit == objc_msgSend(equalCopy, "unit")))
          {
            valueMetadata = [(_INPBDistanceValue *)self valueMetadata];
            valueMetadata2 = [equalCopy valueMetadata];
            v12 = valueMetadata2;
            if ((valueMetadata != 0) != (valueMetadata2 == 0))
            {
              valueMetadata3 = [(_INPBDistanceValue *)self valueMetadata];
              if (!valueMetadata3)
              {

LABEL_18:
                v18 = 1;
                goto LABEL_16;
              }

              v14 = valueMetadata3;
              valueMetadata4 = [(_INPBDistanceValue *)self valueMetadata];
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
  v5 = [+[_INPBDistanceValue allocWithZone:](_INPBDistanceValue init];
  if ([(_INPBDistanceValue *)self hasMagnitude])
  {
    [(_INPBDistanceValue *)self magnitude];
    [(_INPBDistanceValue *)v5 setMagnitude:?];
  }

  if ([(_INPBDistanceValue *)self hasUnit])
  {
    [(_INPBDistanceValue *)v5 setUnit:[(_INPBDistanceValue *)self unit]];
  }

  v6 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:zone];
  [(_INPBDistanceValue *)v5 setValueMetadata:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBDistanceValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBDistanceValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBDistanceValue *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBDistanceValue *)self hasMagnitude])
  {
    magnitude = self->_magnitude;
    PBDataWriterWriteDoubleField();
  }

  if ([(_INPBDistanceValue *)self hasUnit])
  {
    unit = self->_unit;
    PBDataWriterWriteInt32Field();
  }

  valueMetadata = [(_INPBDistanceValue *)self valueMetadata];

  v7 = toCopy;
  if (valueMetadata)
  {
    valueMetadata2 = [(_INPBDistanceValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();

    v7 = toCopy;
  }
}

- (int)StringAsUnit:(id)unit
{
  unitCopy = unit;
  if ([unitCopy isEqualToString:@"METERS"])
  {
    v4 = 1;
  }

  else if ([unitCopy isEqualToString:@"MILES"])
  {
    v4 = 2;
  }

  else if ([unitCopy isEqualToString:@"CENTIMETER"])
  {
    v4 = 3;
  }

  else if ([unitCopy isEqualToString:@"FOOT"])
  {
    v4 = 4;
  }

  else if ([unitCopy isEqualToString:@"INCH"])
  {
    v4 = 5;
  }

  else if ([unitCopy isEqualToString:@"YARD"])
  {
    v4 = 6;
  }

  else if ([unitCopy isEqualToString:@"KILOMETER"])
  {
    v4 = 7;
  }

  else if ([unitCopy isEqualToString:@"MEGAMETER"])
  {
    v4 = 8;
  }

  else if ([unitCopy isEqualToString:@"HECTOMETER"])
  {
    v4 = 9;
  }

  else if ([unitCopy isEqualToString:@"DECAMETER"])
  {
    v4 = 10;
  }

  else if ([unitCopy isEqualToString:@"DECIMETER"])
  {
    v4 = 11;
  }

  else if ([unitCopy isEqualToString:@"MILLIMETER"])
  {
    v4 = 12;
  }

  else if ([unitCopy isEqualToString:@"MICROMETER"])
  {
    v4 = 13;
  }

  else if ([unitCopy isEqualToString:@"NANOMETER"])
  {
    v4 = 14;
  }

  else if ([unitCopy isEqualToString:@"PICOMETER"])
  {
    v4 = 15;
  }

  else if ([unitCopy isEqualToString:@"SCANDINAVIAN_MILE"])
  {
    v4 = 16;
  }

  else if ([unitCopy isEqualToString:@"LIGHTYEAR"])
  {
    v4 = 17;
  }

  else if ([unitCopy isEqualToString:@"NAUTICAL_MILE"])
  {
    v4 = 18;
  }

  else if ([unitCopy isEqualToString:@"FATHOM"])
  {
    v4 = 19;
  }

  else if ([unitCopy isEqualToString:@"FURLONG"])
  {
    v4 = 20;
  }

  else if ([unitCopy isEqualToString:@"ASTRONOMICAL_UNIT"])
  {
    v4 = 21;
  }

  else if ([unitCopy isEqualToString:@"PARSEC"])
  {
    v4 = 22;
  }

  else
  {
    v4 = 1;
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