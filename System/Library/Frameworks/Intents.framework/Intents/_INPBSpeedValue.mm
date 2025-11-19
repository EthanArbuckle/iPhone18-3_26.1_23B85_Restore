@interface _INPBSpeedValue
- (BOOL)isEqual:(id)a3;
- (_INPBSpeedValue)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsUnit:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setHasUnit:(BOOL)a3;
- (void)setUnit:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSpeedValue

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBSpeedValue *)self hasMagnitude])
  {
    v4 = MEMORY[0x1E696AD98];
    [(_INPBSpeedValue *)self magnitude];
    v5 = [v4 numberWithDouble:?];
    [v3 setObject:v5 forKeyedSubscript:@"magnitude"];
  }

  if ([(_INPBSpeedValue *)self hasUnit])
  {
    v6 = [(_INPBSpeedValue *)self unit];
    if (v6 >= 5)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v7 = *(&off_1E72874E8 + v6);
    }

    [v3 setObject:v7 forKeyedSubscript:@"unit"];
  }

  v8 = [(_INPBSpeedValue *)self valueMetadata];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"valueMetadata"];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_INPBSpeedValue *)self hasMagnitude];
    if (v5 == [v4 hasMagnitude])
    {
      if (!-[_INPBSpeedValue hasMagnitude](self, "hasMagnitude") || ![v4 hasMagnitude] || (magnitude = self->_magnitude, objc_msgSend(v4, "magnitude"), magnitude == v7))
      {
        v8 = [(_INPBSpeedValue *)self hasUnit];
        if (v8 == [v4 hasUnit])
        {
          if (!-[_INPBSpeedValue hasUnit](self, "hasUnit") || ![v4 hasUnit] || (unit = self->_unit, unit == objc_msgSend(v4, "unit")))
          {
            v10 = [(_INPBSpeedValue *)self valueMetadata];
            v11 = [v4 valueMetadata];
            v12 = v11;
            if ((v10 != 0) != (v11 == 0))
            {
              v13 = [(_INPBSpeedValue *)self valueMetadata];
              if (!v13)
              {

LABEL_18:
                v18 = 1;
                goto LABEL_16;
              }

              v14 = v13;
              v15 = [(_INPBSpeedValue *)self valueMetadata];
              v16 = [v4 valueMetadata];
              v17 = [v15 isEqual:v16];

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

- (id)copyWithZone:(_NSZone *)a3
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

  v6 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:a3];
  [(_INPBSpeedValue *)v5 setValueMetadata:v6];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSpeedValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSpeedValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSpeedValue *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
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

  v6 = [(_INPBSpeedValue *)self valueMetadata];

  v7 = v9;
  if (v6)
  {
    v8 = [(_INPBSpeedValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();

    v7 = v9;
  }
}

- (int)StringAsUnit:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_SPEED_UNIT"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"METER_PER_SECOND"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"KILOMETER_PER_HOUR"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"MILE_PER_HOUR"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"KNOTS"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasUnit:(BOOL)a3
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

- (void)setUnit:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_unit = a3;
  }
}

@end