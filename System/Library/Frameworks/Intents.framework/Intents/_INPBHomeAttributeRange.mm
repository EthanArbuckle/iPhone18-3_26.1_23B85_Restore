@interface _INPBHomeAttributeRange
- (BOOL)isEqual:(id)equal;
- (_INPBHomeAttributeRange)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setHasUpperValue:(BOOL)value;
- (void)writeTo:(id)to;
@end

@implementation _INPBHomeAttributeRange

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBHomeAttributeRange *)self hasLowerValue])
  {
    v4 = MEMORY[0x1E696AD98];
    [(_INPBHomeAttributeRange *)self lowerValue];
    v5 = [v4 numberWithDouble:?];
    [dictionary setObject:v5 forKeyedSubscript:@"lowerValue"];
  }

  if ([(_INPBHomeAttributeRange *)self hasUpperValue])
  {
    v6 = MEMORY[0x1E696AD98];
    [(_INPBHomeAttributeRange *)self upperValue];
    v7 = [v6 numberWithDouble:?];
    [dictionary setObject:v7 forKeyedSubscript:@"upperValue"];
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9 = 0;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    hasLowerValue = [(_INPBHomeAttributeRange *)self hasLowerValue];
    if (hasLowerValue == [equalCopy hasLowerValue])
    {
      if (!-[_INPBHomeAttributeRange hasLowerValue](self, "hasLowerValue") || ![equalCopy hasLowerValue] || (lowerValue = self->_lowerValue, objc_msgSend(equalCopy, "lowerValue"), lowerValue == v7))
      {
        hasUpperValue = [(_INPBHomeAttributeRange *)self hasUpperValue];
        if (hasUpperValue == [equalCopy hasUpperValue])
        {
          if (!-[_INPBHomeAttributeRange hasUpperValue](self, "hasUpperValue") || ![equalCopy hasUpperValue] || (upperValue = self->_upperValue, objc_msgSend(equalCopy, "upperValue"), upperValue == v12))
          {
            v9 = 1;
          }
        }
      }
    }
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBHomeAttributeRange *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBHomeAttributeRange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBHomeAttributeRange *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (void)setHasUpperValue:(BOOL)value
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

@end