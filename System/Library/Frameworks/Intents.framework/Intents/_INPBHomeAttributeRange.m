@interface _INPBHomeAttributeRange
- (BOOL)isEqual:(id)a3;
- (_INPBHomeAttributeRange)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setHasUpperValue:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBHomeAttributeRange

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBHomeAttributeRange *)self hasLowerValue])
  {
    v4 = MEMORY[0x1E696AD98];
    [(_INPBHomeAttributeRange *)self lowerValue];
    v5 = [v4 numberWithDouble:?];
    [v3 setObject:v5 forKeyedSubscript:@"lowerValue"];
  }

  if ([(_INPBHomeAttributeRange *)self hasUpperValue])
  {
    v6 = MEMORY[0x1E696AD98];
    [(_INPBHomeAttributeRange *)self upperValue];
    v7 = [v6 numberWithDouble:?];
    [v3 setObject:v7 forKeyedSubscript:@"upperValue"];
  }

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBHomeAttributeRange *)self hasLowerValue])
  {
    lowerValue = self->_lowerValue;
    if (lowerValue < 0.0)
    {
      lowerValue = -lowerValue;
    }

    *v3.i64 = floor(lowerValue + 0.5);
    v6 = (lowerValue - *v3.i64) * 1.84467441e19;
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

  if ([(_INPBHomeAttributeRange *)self hasUpperValue])
  {
    upperValue = self->_upperValue;
    if (upperValue < 0.0)
    {
      upperValue = -upperValue;
    }

    *v9.i64 = floor(upperValue + 0.5);
    v12 = (upperValue - *v9.i64) * 1.84467441e19;
    *v10.i64 = *v9.i64 - trunc(*v9.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v14 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v10, v9).i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v14 += v12;
      }
    }

    else
    {
      v14 -= fabs(v12);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9 = 0;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_INPBHomeAttributeRange *)self hasLowerValue];
    if (v5 == [v4 hasLowerValue])
    {
      if (!-[_INPBHomeAttributeRange hasLowerValue](self, "hasLowerValue") || ![v4 hasLowerValue] || (lowerValue = self->_lowerValue, objc_msgSend(v4, "lowerValue"), lowerValue == v7))
      {
        v8 = [(_INPBHomeAttributeRange *)self hasUpperValue];
        if (v8 == [v4 hasUpperValue])
        {
          if (!-[_INPBHomeAttributeRange hasUpperValue](self, "hasUpperValue") || ![v4 hasUpperValue] || (upperValue = self->_upperValue, objc_msgSend(v4, "upperValue"), upperValue == v12))
          {
            v9 = 1;
          }
        }
      }
    }
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[_INPBHomeAttributeRange allocWithZone:?]];
  if ([(_INPBHomeAttributeRange *)self hasLowerValue])
  {
    [(_INPBHomeAttributeRange *)self lowerValue];
    [(_INPBHomeAttributeRange *)v4 setLowerValue:?];
  }

  if ([(_INPBHomeAttributeRange *)self hasUpperValue])
  {
    [(_INPBHomeAttributeRange *)self upperValue];
    [(_INPBHomeAttributeRange *)v4 setUpperValue:?];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBHomeAttributeRange *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBHomeAttributeRange)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBHomeAttributeRange *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  if ([(_INPBHomeAttributeRange *)self hasLowerValue])
  {
    lowerValue = self->_lowerValue;
    PBDataWriterWriteDoubleField();
  }

  if ([(_INPBHomeAttributeRange *)self hasUpperValue])
  {
    upperValue = self->_upperValue;
    PBDataWriterWriteDoubleField();
  }
}

- (void)setHasUpperValue:(BOOL)a3
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