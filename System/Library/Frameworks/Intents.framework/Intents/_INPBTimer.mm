@interface _INPBTimer
- (BOOL)isEqual:(id)equal;
- (_INPBTimer)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsState:(id)state;
- (int)StringAsType:(id)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setHasRemainingTime:(BOOL)time;
- (void)setHasState:(BOOL)state;
- (void)setHasType:(BOOL)type;
- (void)setIdentifier:(id)identifier;
- (void)setState:(int)state;
- (void)setType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBTimer

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBTimer *)self hasDuration])
  {
    v4 = MEMORY[0x1E696AD98];
    [(_INPBTimer *)self duration];
    v5 = [v4 numberWithDouble:?];
    [dictionary setObject:v5 forKeyedSubscript:@"duration"];
  }

  if (self->_identifier)
  {
    identifier = [(_INPBTimer *)self identifier];
    v7 = [identifier copy];
    [dictionary setObject:v7 forKeyedSubscript:@"identifier"];
  }

  label = [(_INPBTimer *)self label];
  dictionaryRepresentation = [label dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"label"];

  if ([(_INPBTimer *)self hasRemainingTime])
  {
    v10 = MEMORY[0x1E696AD98];
    [(_INPBTimer *)self remainingTime];
    v11 = [v10 numberWithDouble:?];
    [dictionary setObject:v11 forKeyedSubscript:@"remainingTime"];
  }

  if ([(_INPBTimer *)self hasState])
  {
    state = [(_INPBTimer *)self state];
    if (state >= 3)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", state];
    }

    else
    {
      v13 = *(&off_1E72817C8 + state);
    }

    [dictionary setObject:v13 forKeyedSubscript:@"state"];
  }

  if ([(_INPBTimer *)self hasType])
  {
    type = [(_INPBTimer *)self type];
    if (type >= 3)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", type];
    }

    else
    {
      v15 = *(&off_1E72817E0 + type);
    }

    [dictionary setObject:v15 forKeyedSubscript:@"type"];
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  hasDuration = [(_INPBTimer *)self hasDuration];
  if (hasDuration != [equalCopy hasDuration])
  {
    goto LABEL_16;
  }

  if ([(_INPBTimer *)self hasDuration])
  {
    if ([equalCopy hasDuration])
    {
      duration = self->_duration;
      [equalCopy duration];
      if (duration != v7)
      {
        goto LABEL_16;
      }
    }
  }

  identifier = [(_INPBTimer *)self identifier];
  identifier2 = [equalCopy identifier];
  if ((identifier != 0) == (identifier2 == 0))
  {
    goto LABEL_15;
  }

  identifier3 = [(_INPBTimer *)self identifier];
  if (identifier3)
  {
    v11 = identifier3;
    identifier4 = [(_INPBTimer *)self identifier];
    identifier5 = [equalCopy identifier];
    v14 = [identifier4 isEqual:identifier5];

    if (!v14)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  identifier = [(_INPBTimer *)self label];
  identifier2 = [equalCopy label];
  if ((identifier != 0) == (identifier2 == 0))
  {
LABEL_15:

    goto LABEL_16;
  }

  label = [(_INPBTimer *)self label];
  if (label)
  {
    v16 = label;
    label2 = [(_INPBTimer *)self label];
    label3 = [equalCopy label];
    v19 = [label2 isEqual:label3];

    if (!v19)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  hasRemainingTime = [(_INPBTimer *)self hasRemainingTime];
  if (hasRemainingTime == [equalCopy hasRemainingTime])
  {
    if (!-[_INPBTimer hasRemainingTime](self, "hasRemainingTime") || ![equalCopy hasRemainingTime] || (remainingTime = self->_remainingTime, objc_msgSend(equalCopy, "remainingTime"), remainingTime == v24))
    {
      hasState = [(_INPBTimer *)self hasState];
      if (hasState == [equalCopy hasState])
      {
        if (!-[_INPBTimer hasState](self, "hasState") || ![equalCopy hasState] || (state = self->_state, state == objc_msgSend(equalCopy, "state")))
        {
          hasType = [(_INPBTimer *)self hasType];
          if (hasType == [equalCopy hasType])
          {
            if (!-[_INPBTimer hasType](self, "hasType") || ![equalCopy hasType] || (type = self->_type, type == objc_msgSend(equalCopy, "type")))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBTimer allocWithZone:](_INPBTimer init];
  if ([(_INPBTimer *)self hasDuration])
  {
    [(_INPBTimer *)self duration];
    [(_INPBTimer *)v5 setDuration:?];
  }

  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  [(_INPBTimer *)v5 setIdentifier:v6];

  v7 = [(_INPBDataString *)self->_label copyWithZone:zone];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBTimer *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBTimer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBTimer *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBTimer *)self hasDuration])
  {
    duration = self->_duration;
    PBDataWriterWriteDoubleField();
  }

  identifier = [(_INPBTimer *)self identifier];

  if (identifier)
  {
    identifier = self->_identifier;
    PBDataWriterWriteStringField();
  }

  label = [(_INPBTimer *)self label];

  if (label)
  {
    label2 = [(_INPBTimer *)self label];
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

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN_TYPE"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"DEFAULT_TYPE"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"SLEEP_TIMER"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xF7;
  }

  else
  {
    *&self->_has = has | 8;
    self->_type = type;
  }
}

- (int)StringAsState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"TIMER_RUNNING"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"TIMER_PAUSED"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasState:(BOOL)state
{
  if (state)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setState:(int)state
{
  has = self->_has;
  if (state == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFB;
  }

  else
  {
    *&self->_has = has | 4;
    self->_state = state;
  }
}

- (void)setHasRemainingTime:(BOOL)time
{
  if (time)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setIdentifier:(id)identifier
{
  v4 = [identifier copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8](v4, identifier);
}

@end