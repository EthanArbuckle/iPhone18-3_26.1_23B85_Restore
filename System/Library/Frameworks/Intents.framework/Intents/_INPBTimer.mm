@interface _INPBTimer
- (BOOL)isEqual:(id)a3;
- (_INPBTimer)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsState:(id)a3;
- (int)StringAsType:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setHasRemainingTime:(BOOL)a3;
- (void)setHasState:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)setIdentifier:(id)a3;
- (void)setState:(int)a3;
- (void)setType:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBTimer

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBTimer *)self hasDuration])
  {
    v4 = MEMORY[0x1E696AD98];
    [(_INPBTimer *)self duration];
    v5 = [v4 numberWithDouble:?];
    [v3 setObject:v5 forKeyedSubscript:@"duration"];
  }

  if (self->_identifier)
  {
    v6 = [(_INPBTimer *)self identifier];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"identifier"];
  }

  v8 = [(_INPBTimer *)self label];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"label"];

  if ([(_INPBTimer *)self hasRemainingTime])
  {
    v10 = MEMORY[0x1E696AD98];
    [(_INPBTimer *)self remainingTime];
    v11 = [v10 numberWithDouble:?];
    [v3 setObject:v11 forKeyedSubscript:@"remainingTime"];
  }

  if ([(_INPBTimer *)self hasState])
  {
    v12 = [(_INPBTimer *)self state];
    if (v12 >= 3)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v12];
    }

    else
    {
      v13 = *(&off_1E72817C8 + v12);
    }

    [v3 setObject:v13 forKeyedSubscript:@"state"];
  }

  if ([(_INPBTimer *)self hasType])
  {
    v14 = [(_INPBTimer *)self type];
    if (v14 >= 3)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v14];
    }

    else
    {
      v15 = *(&off_1E72817E0 + v14);
    }

    [v3 setObject:v15 forKeyedSubscript:@"type"];
  }

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBTimer *)self hasDuration])
  {
    duration = self->_duration;
    if (duration < 0.0)
    {
      duration = -duration;
    }

    *v3.i64 = floor(duration + 0.5);
    v6 = (duration - *v3.i64) * 1.84467441e19;
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

  v9 = [(NSString *)self->_identifier hash];
  v10 = [(_INPBDataString *)self->_label hash];
  if ([(_INPBTimer *)self hasRemainingTime])
  {
    remainingTime = self->_remainingTime;
    if (remainingTime < 0.0)
    {
      remainingTime = -remainingTime;
    }

    *v11.i64 = floor(remainingTime + 0.5);
    v14 = (remainingTime - *v11.i64) * 1.84467441e19;
    *v12.i64 = *v11.i64 - trunc(*v11.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v16 = 2654435761u * *vbslq_s8(vnegq_f64(v15), v12, v11).i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v16 += v14;
      }
    }

    else
    {
      v16 -= fabs(v14);
    }
  }

  else
  {
    v16 = 0;
  }

  if ([(_INPBTimer *)self hasState])
  {
    v17 = 2654435761 * self->_state;
  }

  else
  {
    v17 = 0;
  }

  if ([(_INPBTimer *)self hasType])
  {
    v18 = 2654435761 * self->_type;
  }

  else
  {
    v18 = 0;
  }

  return v9 ^ v8 ^ v10 ^ v16 ^ v17 ^ v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = [(_INPBTimer *)self hasDuration];
  if (v5 != [v4 hasDuration])
  {
    goto LABEL_16;
  }

  if ([(_INPBTimer *)self hasDuration])
  {
    if ([v4 hasDuration])
    {
      duration = self->_duration;
      [v4 duration];
      if (duration != v7)
      {
        goto LABEL_16;
      }
    }
  }

  v8 = [(_INPBTimer *)self identifier];
  v9 = [v4 identifier];
  if ((v8 != 0) == (v9 == 0))
  {
    goto LABEL_15;
  }

  v10 = [(_INPBTimer *)self identifier];
  if (v10)
  {
    v11 = v10;
    v12 = [(_INPBTimer *)self identifier];
    v13 = [v4 identifier];
    v14 = [v12 isEqual:v13];

    if (!v14)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v8 = [(_INPBTimer *)self label];
  v9 = [v4 label];
  if ((v8 != 0) == (v9 == 0))
  {
LABEL_15:

    goto LABEL_16;
  }

  v15 = [(_INPBTimer *)self label];
  if (v15)
  {
    v16 = v15;
    v17 = [(_INPBTimer *)self label];
    v18 = [v4 label];
    v19 = [v17 isEqual:v18];

    if (!v19)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v22 = [(_INPBTimer *)self hasRemainingTime];
  if (v22 == [v4 hasRemainingTime])
  {
    if (!-[_INPBTimer hasRemainingTime](self, "hasRemainingTime") || ![v4 hasRemainingTime] || (remainingTime = self->_remainingTime, objc_msgSend(v4, "remainingTime"), remainingTime == v24))
    {
      v25 = [(_INPBTimer *)self hasState];
      if (v25 == [v4 hasState])
      {
        if (!-[_INPBTimer hasState](self, "hasState") || ![v4 hasState] || (state = self->_state, state == objc_msgSend(v4, "state")))
        {
          v27 = [(_INPBTimer *)self hasType];
          if (v27 == [v4 hasType])
          {
            if (!-[_INPBTimer hasType](self, "hasType") || ![v4 hasType] || (type = self->_type, type == objc_msgSend(v4, "type")))
            {
              v20 = 1;
              goto LABEL_17;
            }
          }
        }
      }
    }
  }

LABEL_16:
  v20 = 0;
LABEL_17:

  return v20;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBTimer allocWithZone:](_INPBTimer init];
  if ([(_INPBTimer *)self hasDuration])
  {
    [(_INPBTimer *)self duration];
    [(_INPBTimer *)v5 setDuration:?];
  }

  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  [(_INPBTimer *)v5 setIdentifier:v6];

  v7 = [(_INPBDataString *)self->_label copyWithZone:a3];
  [(_INPBTimer *)v5 setLabel:v7];

  if ([(_INPBTimer *)self hasRemainingTime])
  {
    [(_INPBTimer *)self remainingTime];
    [(_INPBTimer *)v5 setRemainingTime:?];
  }

  if ([(_INPBTimer *)self hasState])
  {
    [(_INPBTimer *)v5 setState:[(_INPBTimer *)self state]];
  }

  if ([(_INPBTimer *)self hasType])
  {
    [(_INPBTimer *)v5 setType:[(_INPBTimer *)self type]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBTimer *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBTimer)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBTimer *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
  if ([(_INPBTimer *)self hasDuration])
  {
    duration = self->_duration;
    PBDataWriterWriteDoubleField();
  }

  v5 = [(_INPBTimer *)self identifier];

  if (v5)
  {
    identifier = self->_identifier;
    PBDataWriterWriteStringField();
  }

  v7 = [(_INPBTimer *)self label];

  if (v7)
  {
    v8 = [(_INPBTimer *)self label];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBTimer *)self hasRemainingTime])
  {
    remainingTime = self->_remainingTime;
    PBDataWriterWriteDoubleField();
  }

  if ([(_INPBTimer *)self hasState])
  {
    state = self->_state;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBTimer *)self hasType])
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_TYPE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"DEFAULT_TYPE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SLEEP_TIMER"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasType:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xF7;
  }

  else
  {
    *&self->_has = has | 8;
    self->_type = a3;
  }
}

- (int)StringAsState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"TIMER_RUNNING"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"TIMER_PAUSED"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasState:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setState:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFB;
  }

  else
  {
    *&self->_has = has | 4;
    self->_state = a3;
  }
}

- (void)setHasRemainingTime:(BOOL)a3
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

- (void)setIdentifier:(id)a3
{
  v4 = [a3 copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8](v4, identifier);
}

@end