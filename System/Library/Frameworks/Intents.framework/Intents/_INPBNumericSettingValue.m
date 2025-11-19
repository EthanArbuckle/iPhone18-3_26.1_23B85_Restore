@interface _INPBNumericSettingValue
- (BOOL)isEqual:(id)a3;
- (_INPBNumericSettingValue)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setHasValue:(BOOL)a3;
- (void)setUnit:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBNumericSettingValue

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBNumericSettingValue *)self hasUnit])
  {
    v4 = [(_INPBNumericSettingValue *)self unit];
    if (v4 == 1)
    {
      v5 = @"PERCENTAGE";
    }

    else
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"unit"];
  }

  if ([(_INPBNumericSettingValue *)self hasValue])
  {
    v6 = MEMORY[0x1E696AD98];
    [(_INPBNumericSettingValue *)self value];
    v7 = [v6 numberWithDouble:?];
    [v3 setObject:v7 forKeyedSubscript:@"value"];
  }

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBNumericSettingValue *)self hasUnit])
  {
    v3 = 2654435761 * self->_unit;
  }

  else
  {
    v3 = 0;
  }

  if ([(_INPBNumericSettingValue *)self hasValue])
  {
    value = self->_value;
    if (value < 0.0)
    {
      value = -value;
    }

    *v4.i64 = floor(value + 0.5);
    v7 = (value - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v5, v4).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v9 += v7;
      }
    }

    else
    {
      v9 -= fabs(v7);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8 = 0;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_INPBNumericSettingValue *)self hasUnit];
    if (v5 == [v4 hasUnit])
    {
      if (!-[_INPBNumericSettingValue hasUnit](self, "hasUnit") || ![v4 hasUnit] || (unit = self->_unit, unit == objc_msgSend(v4, "unit")))
      {
        v7 = [(_INPBNumericSettingValue *)self hasValue];
        if (v7 == [v4 hasValue])
        {
          if (!-[_INPBNumericSettingValue hasValue](self, "hasValue") || ![v4 hasValue] || (value = self->_value, objc_msgSend(v4, "value"), value == v11))
          {
            v8 = 1;
          }
        }
      }
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[_INPBNumericSettingValue allocWithZone:?]];
  if ([(_INPBNumericSettingValue *)self hasUnit])
  {
    [(_INPBNumericSettingValue *)v4 setUnit:[(_INPBNumericSettingValue *)self unit]];
  }

  if ([(_INPBNumericSettingValue *)self hasValue])
  {
    [(_INPBNumericSettingValue *)self value];
    [(_INPBNumericSettingValue *)v4 setValue:?];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBNumericSettingValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBNumericSettingValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBNumericSettingValue *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  if ([(_INPBNumericSettingValue *)self hasUnit])
  {
    unit = self->_unit;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBNumericSettingValue *)self hasValue])
  {
    value = self->_value;
    PBDataWriterWriteDoubleField();
  }
}

- (void)setHasValue:(BOOL)a3
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
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_unit = a3;
  }
}

@end