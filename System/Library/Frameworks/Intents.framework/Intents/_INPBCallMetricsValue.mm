@interface _INPBCallMetricsValue
- (BOOL)isEqual:(id)equal;
- (_INPBCallMetricsValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setHasTimeToEstablish:(BOOL)establish;
- (void)writeTo:(id)to;
@end

@implementation _INPBCallMetricsValue

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBCallMetricsValue *)self hasCallDuration])
  {
    v4 = MEMORY[0x1E696AD98];
    [(_INPBCallMetricsValue *)self callDuration];
    v5 = [v4 numberWithDouble:?];
    [dictionary setObject:v5 forKeyedSubscript:@"callDuration"];
  }

  if ([(_INPBCallMetricsValue *)self hasTimeToEstablish])
  {
    v6 = MEMORY[0x1E696AD98];
    [(_INPBCallMetricsValue *)self timeToEstablish];
    v7 = [v6 numberWithDouble:?];
    [dictionary setObject:v7 forKeyedSubscript:@"timeToEstablish"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBCallMetricsValue *)self hasCallDuration])
  {
    callDuration = self->_callDuration;
    if (callDuration < 0.0)
    {
      callDuration = -callDuration;
    }

    *v3.i64 = floor(callDuration + 0.5);
    v6 = (callDuration - *v3.i64) * 1.84467441e19;
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

  if ([(_INPBCallMetricsValue *)self hasTimeToEstablish])
  {
    timeToEstablish = self->_timeToEstablish;
    if (timeToEstablish < 0.0)
    {
      timeToEstablish = -timeToEstablish;
    }

    *v9.i64 = floor(timeToEstablish + 0.5);
    v12 = (timeToEstablish - *v9.i64) * 1.84467441e19;
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
    hasCallDuration = [(_INPBCallMetricsValue *)self hasCallDuration];
    if (hasCallDuration == [equalCopy hasCallDuration])
    {
      if (!-[_INPBCallMetricsValue hasCallDuration](self, "hasCallDuration") || ![equalCopy hasCallDuration] || (callDuration = self->_callDuration, objc_msgSend(equalCopy, "callDuration"), callDuration == v7))
      {
        hasTimeToEstablish = [(_INPBCallMetricsValue *)self hasTimeToEstablish];
        if (hasTimeToEstablish == [equalCopy hasTimeToEstablish])
        {
          if (!-[_INPBCallMetricsValue hasTimeToEstablish](self, "hasTimeToEstablish") || ![equalCopy hasTimeToEstablish] || (timeToEstablish = self->_timeToEstablish, objc_msgSend(equalCopy, "timeToEstablish"), timeToEstablish == v12))
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
  v4 = [[_INPBCallMetricsValue allocWithZone:?]];
  if ([(_INPBCallMetricsValue *)self hasCallDuration])
  {
    [(_INPBCallMetricsValue *)self callDuration];
    [(_INPBCallMetricsValue *)v4 setCallDuration:?];
  }

  if ([(_INPBCallMetricsValue *)self hasTimeToEstablish])
  {
    [(_INPBCallMetricsValue *)self timeToEstablish];
    [(_INPBCallMetricsValue *)v4 setTimeToEstablish:?];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBCallMetricsValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBCallMetricsValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBCallMetricsValue *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBCallMetricsValue *)self hasCallDuration])
  {
    callDuration = self->_callDuration;
    PBDataWriterWriteDoubleField();
  }

  if ([(_INPBCallMetricsValue *)self hasTimeToEstablish])
  {
    timeToEstablish = self->_timeToEstablish;
    PBDataWriterWriteDoubleField();
  }
}

- (void)setHasTimeToEstablish:(BOOL)establish
{
  if (establish)
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