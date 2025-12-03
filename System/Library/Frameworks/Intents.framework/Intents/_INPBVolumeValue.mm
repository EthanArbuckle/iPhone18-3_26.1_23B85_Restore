@interface _INPBVolumeValue
- (BOOL)isEqual:(id)equal;
- (_INPBVolumeValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsUnit:(id)unit;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setHasUnit:(BOOL)unit;
- (void)setUnit:(int)unit;
- (void)writeTo:(id)to;
@end

@implementation _INPBVolumeValue

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBVolumeValue *)self hasMagnitude])
  {
    v4 = MEMORY[0x1E696AD98];
    [(_INPBVolumeValue *)self magnitude];
    v5 = [v4 numberWithDouble:?];
    [dictionary setObject:v5 forKeyedSubscript:@"magnitude"];
  }

  if ([(_INPBVolumeValue *)self hasUnit])
  {
    unit = [(_INPBVolumeValue *)self unit];
    if (unit >= 0x1D)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", unit];
    }

    else
    {
      v7 = *(&off_1E7287400 + unit);
    }

    [dictionary setObject:v7 forKeyedSubscript:@"unit"];
  }

  valueMetadata = [(_INPBVolumeValue *)self valueMetadata];
  dictionaryRepresentation = [valueMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"valueMetadata"];

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBVolumeValue *)self hasMagnitude])
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

  if ([(_INPBVolumeValue *)self hasUnit])
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
    hasMagnitude = [(_INPBVolumeValue *)self hasMagnitude];
    if (hasMagnitude == [equalCopy hasMagnitude])
    {
      if (!-[_INPBVolumeValue hasMagnitude](self, "hasMagnitude") || ![equalCopy hasMagnitude] || (magnitude = self->_magnitude, objc_msgSend(equalCopy, "magnitude"), magnitude == v7))
      {
        hasUnit = [(_INPBVolumeValue *)self hasUnit];
        if (hasUnit == [equalCopy hasUnit])
        {
          if (!-[_INPBVolumeValue hasUnit](self, "hasUnit") || ![equalCopy hasUnit] || (unit = self->_unit, unit == objc_msgSend(equalCopy, "unit")))
          {
            valueMetadata = [(_INPBVolumeValue *)self valueMetadata];
            valueMetadata2 = [equalCopy valueMetadata];
            v12 = valueMetadata2;
            if ((valueMetadata != 0) != (valueMetadata2 == 0))
            {
              valueMetadata3 = [(_INPBVolumeValue *)self valueMetadata];
              if (!valueMetadata3)
              {

LABEL_18:
                v18 = 1;
                goto LABEL_16;
              }

              v14 = valueMetadata3;
              valueMetadata4 = [(_INPBVolumeValue *)self valueMetadata];
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
  v5 = [+[_INPBVolumeValue allocWithZone:](_INPBVolumeValue init];
  if ([(_INPBVolumeValue *)self hasMagnitude])
  {
    [(_INPBVolumeValue *)self magnitude];
    [(_INPBVolumeValue *)v5 setMagnitude:?];
  }

  if ([(_INPBVolumeValue *)self hasUnit])
  {
    [(_INPBVolumeValue *)v5 setUnit:[(_INPBVolumeValue *)self unit]];
  }

  v6 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:zone];
  [(_INPBVolumeValue *)v5 setValueMetadata:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBVolumeValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBVolumeValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBVolumeValue *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBVolumeValue *)self hasMagnitude])
  {
    magnitude = self->_magnitude;
    PBDataWriterWriteDoubleField();
  }

  if ([(_INPBVolumeValue *)self hasUnit])
  {
    unit = self->_unit;
    PBDataWriterWriteInt32Field();
  }

  valueMetadata = [(_INPBVolumeValue *)self valueMetadata];

  v7 = toCopy;
  if (valueMetadata)
  {
    valueMetadata2 = [(_INPBVolumeValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();

    v7 = toCopy;
  }
}

- (int)StringAsUnit:(id)unit
{
  unitCopy = unit;
  if ([unitCopy isEqualToString:@"UNKNOWN_VOLUME_UNIT"])
  {
    v4 = 0;
  }

  else if ([unitCopy isEqualToString:@"MEGALITER"])
  {
    v4 = 1;
  }

  else if ([unitCopy isEqualToString:@"KILOLITER"])
  {
    v4 = 2;
  }

  else if ([unitCopy isEqualToString:@"LITER"])
  {
    v4 = 3;
  }

  else if ([unitCopy isEqualToString:@"DECILITER"])
  {
    v4 = 4;
  }

  else if ([unitCopy isEqualToString:@"CENTILITER"])
  {
    v4 = 5;
  }

  else if ([unitCopy isEqualToString:@"MILLILITER"])
  {
    v4 = 6;
  }

  else if ([unitCopy isEqualToString:@"CUBIC_KILOMETER"])
  {
    v4 = 7;
  }

  else if ([unitCopy isEqualToString:@"CUBIC_DECIMETER"])
  {
    v4 = 8;
  }

  else if ([unitCopy isEqualToString:@"CUBIC_MILLIMETER"])
  {
    v4 = 9;
  }

  else if ([unitCopy isEqualToString:@"CUBIC_INCH"])
  {
    v4 = 10;
  }

  else if ([unitCopy isEqualToString:@"CUBIC_FEET"])
  {
    v4 = 11;
  }

  else if ([unitCopy isEqualToString:@"CUBIC_YARD"])
  {
    v4 = 12;
  }

  else if ([unitCopy isEqualToString:@"CUBIC_MILE"])
  {
    v4 = 13;
  }

  else if ([unitCopy isEqualToString:@"ACRE_FOEET"])
  {
    v4 = 14;
  }

  else if ([unitCopy isEqualToString:@"BUSHEL"])
  {
    v4 = 15;
  }

  else if ([unitCopy isEqualToString:@"TEASPOON"])
  {
    v4 = 16;
  }

  else if ([unitCopy isEqualToString:@"TABLESPOON"])
  {
    v4 = 17;
  }

  else if ([unitCopy isEqualToString:@"FLUID_OUNCE"])
  {
    v4 = 18;
  }

  else if ([unitCopy isEqualToString:@"CUP"])
  {
    v4 = 19;
  }

  else if ([unitCopy isEqualToString:@"PINT"])
  {
    v4 = 20;
  }

  else if ([unitCopy isEqualToString:@"QUART"])
  {
    v4 = 21;
  }

  else if ([unitCopy isEqualToString:@"GALLON"])
  {
    v4 = 22;
  }

  else if ([unitCopy isEqualToString:@"IMPERIAL_TEASPOON"])
  {
    v4 = 23;
  }

  else if ([unitCopy isEqualToString:@"IMPERIAL_QUART"])
  {
    v4 = 24;
  }

  else if ([unitCopy isEqualToString:@"IMPERIAL_GALLON"])
  {
    v4 = 25;
  }

  else if ([unitCopy isEqualToString:@"METRIC_CUP"])
  {
    v4 = 26;
  }

  else if ([unitCopy isEqualToString:@"CUBIC_CENTIMETER"])
  {
    v4 = 27;
  }

  else if ([unitCopy isEqualToString:@"CUBIC_METER"])
  {
    v4 = 28;
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