@interface _INPBNumericSettingValue
- (BOOL)isEqual:(id)equal;
- (_INPBNumericSettingValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setHasValue:(BOOL)value;
- (void)setUnit:(int)unit;
- (void)writeTo:(id)to;
@end

@implementation _INPBNumericSettingValue

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBNumericSettingValue *)self hasUnit])
  {
    unit = [(_INPBNumericSettingValue *)self unit];
    if (unit == 1)
    {
      v5 = @"PERCENTAGE";
    }

    else
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", unit];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"unit"];
  }

  if ([(_INPBNumericSettingValue *)self hasValue])
  {
    v6 = MEMORY[0x1E696AD98];
    [(_INPBNumericSettingValue *)self value];
    v7 = [v6 numberWithDouble:?];
    [dictionary setObject:v7 forKeyedSubscript:@"value"];
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8 = 0;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    hasUnit = [(_INPBNumericSettingValue *)self hasUnit];
    if (hasUnit == [equalCopy hasUnit])
    {
      if (!-[_INPBNumericSettingValue hasUnit](self, "hasUnit") || ![equalCopy hasUnit] || (unit = self->_unit, unit == objc_msgSend(equalCopy, "unit")))
      {
        hasValue = [(_INPBNumericSettingValue *)self hasValue];
        if (hasValue == [equalCopy hasValue])
        {
          if (!-[_INPBNumericSettingValue hasValue](self, "hasValue") || ![equalCopy hasValue] || (value = self->_value, objc_msgSend(equalCopy, "value"), value == v11))
          {
            v8 = 1;
          }
        }
      }
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBNumericSettingValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBNumericSettingValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBNumericSettingValue *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (void)setHasValue:(BOOL)value
{
  if (value)
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
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_unit = unit;
  }
}

@end