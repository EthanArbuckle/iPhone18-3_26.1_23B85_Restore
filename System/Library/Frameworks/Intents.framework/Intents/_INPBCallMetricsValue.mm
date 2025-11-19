@interface _INPBCallMetricsValue
- (BOOL)isEqual:(id)a3;
- (_INPBCallMetricsValue)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setHasTimeToEstablish:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBCallMetricsValue

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBCallMetricsValue *)self hasCallDuration])
  {
    v4 = MEMORY[0x1E696AD98];
    [(_INPBCallMetricsValue *)self callDuration];
    v5 = [v4 numberWithDouble:?];
    [v3 setObject:v5 forKeyedSubscript:@"callDuration"];
  }

  if ([(_INPBCallMetricsValue *)self hasTimeToEstablish])
  {
    v6 = MEMORY[0x1E696AD98];
    [(_INPBCallMetricsValue *)self timeToEstablish];
    v7 = [v6 numberWithDouble:?];
    [v3 setObject:v7 forKeyedSubscript:@"timeToEstablish"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9 = 0;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_INPBCallMetricsValue *)self hasCallDuration];
    if (v5 == [v4 hasCallDuration])
    {
      if (!-[_INPBCallMetricsValue hasCallDuration](self, "hasCallDuration") || ![v4 hasCallDuration] || (callDuration = self->_callDuration, objc_msgSend(v4, "callDuration"), callDuration == v7))
      {
        v8 = [(_INPBCallMetricsValue *)self hasTimeToEstablish];
        if (v8 == [v4 hasTimeToEstablish])
        {
          if (!-[_INPBCallMetricsValue hasTimeToEstablish](self, "hasTimeToEstablish") || ![v4 hasTimeToEstablish] || (timeToEstablish = self->_timeToEstablish, objc_msgSend(v4, "timeToEstablish"), timeToEstablish == v12))
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBCallMetricsValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBCallMetricsValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBCallMetricsValue *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
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

- (void)setHasTimeToEstablish:(BOOL)a3
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