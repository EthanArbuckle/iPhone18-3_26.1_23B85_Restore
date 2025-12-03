@interface _INPBSearchForTimersIntent
- (BOOL)isEqual:(id)equal;
- (_INPBSearchForTimersIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsState:(id)state;
- (int)StringAsType:(id)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setHasState:(BOOL)state;
- (void)setHasType:(BOOL)type;
- (void)setState:(int)state;
- (void)setType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBSearchForTimersIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBSearchForTimersIntent *)self hasDuration])
  {
    v4 = MEMORY[0x1E696AD98];
    [(_INPBSearchForTimersIntent *)self duration];
    v5 = [v4 numberWithDouble:?];
    [dictionary setObject:v5 forKeyedSubscript:@"duration"];
  }

  intentMetadata = [(_INPBSearchForTimersIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  label = [(_INPBSearchForTimersIntent *)self label];
  dictionaryRepresentation2 = [label dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"label"];

  if ([(_INPBSearchForTimersIntent *)self hasState])
  {
    state = [(_INPBSearchForTimersIntent *)self state];
    if (state >= 3)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", state];
    }

    else
    {
      v11 = off_1E7285C98[state];
    }

    [dictionary setObject:v11 forKeyedSubscript:@"state"];
  }

  if ([(_INPBSearchForTimersIntent *)self hasType])
  {
    type = [(_INPBSearchForTimersIntent *)self type];
    if (type >= 3)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", type];
    }

    else
    {
      v13 = off_1E7285CB0[type];
    }

    [dictionary setObject:v13 forKeyedSubscript:@"type"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBSearchForTimersIntent *)self hasDuration])
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

  v9 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v10 = [(_INPBDataString *)self->_label hash];
  if ([(_INPBSearchForTimersIntent *)self hasState])
  {
    v11 = 2654435761 * self->_state;
  }

  else
  {
    v11 = 0;
  }

  if ([(_INPBSearchForTimersIntent *)self hasType])
  {
    v12 = 2654435761 * self->_type;
  }

  else
  {
    v12 = 0;
  }

  return v9 ^ v8 ^ v10 ^ v11 ^ v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  hasDuration = [(_INPBSearchForTimersIntent *)self hasDuration];
  if (hasDuration != [equalCopy hasDuration])
  {
    goto LABEL_16;
  }

  if ([(_INPBSearchForTimersIntent *)self hasDuration])
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

  intentMetadata = [(_INPBSearchForTimersIntent *)self intentMetadata];
  intentMetadata2 = [equalCopy intentMetadata];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_15;
  }

  intentMetadata3 = [(_INPBSearchForTimersIntent *)self intentMetadata];
  if (intentMetadata3)
  {
    v11 = intentMetadata3;
    intentMetadata4 = [(_INPBSearchForTimersIntent *)self intentMetadata];
    intentMetadata5 = [equalCopy intentMetadata];
    v14 = [intentMetadata4 isEqual:intentMetadata5];

    if (!v14)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBSearchForTimersIntent *)self label];
  intentMetadata2 = [equalCopy label];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
LABEL_15:

    goto LABEL_16;
  }

  label = [(_INPBSearchForTimersIntent *)self label];
  if (label)
  {
    v16 = label;
    label2 = [(_INPBSearchForTimersIntent *)self label];
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

  hasState = [(_INPBSearchForTimersIntent *)self hasState];
  if (hasState == [equalCopy hasState])
  {
    if (!-[_INPBSearchForTimersIntent hasState](self, "hasState") || ![equalCopy hasState] || (state = self->_state, state == objc_msgSend(equalCopy, "state")))
    {
      hasType = [(_INPBSearchForTimersIntent *)self hasType];
      if (hasType == [equalCopy hasType])
      {
        if (!-[_INPBSearchForTimersIntent hasType](self, "hasType") || ![equalCopy hasType] || (type = self->_type, type == objc_msgSend(equalCopy, "type")))
        {
          v20 = 1;
          goto LABEL_17;
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
  v5 = [+[_INPBSearchForTimersIntent allocWithZone:](_INPBSearchForTimersIntent init];
  if ([(_INPBSearchForTimersIntent *)self hasDuration])
  {
    [(_INPBSearchForTimersIntent *)self duration];
    [(_INPBSearchForTimersIntent *)v5 setDuration:?];
  }

  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBSearchForTimersIntent *)v5 setIntentMetadata:v6];

  v7 = [(_INPBDataString *)self->_label copyWithZone:zone];
  [(_INPBSearchForTimersIntent *)v5 setLabel:v7];

  if ([(_INPBSearchForTimersIntent *)self hasState])
  {
    [(_INPBSearchForTimersIntent *)v5 setState:[(_INPBSearchForTimersIntent *)self state]];
  }

  if ([(_INPBSearchForTimersIntent *)self hasType])
  {
    [(_INPBSearchForTimersIntent *)v5 setType:[(_INPBSearchForTimersIntent *)self type]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSearchForTimersIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSearchForTimersIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSearchForTimersIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBSearchForTimersIntent *)self hasDuration])
  {
    duration = self->_duration;
    PBDataWriterWriteDoubleField();
  }

  intentMetadata = [(_INPBSearchForTimersIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBSearchForTimersIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  label = [(_INPBSearchForTimersIntent *)self label];

  if (label)
  {
    label2 = [(_INPBSearchForTimersIntent *)self label];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSearchForTimersIntent *)self hasState])
  {
    state = self->_state;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBSearchForTimersIntent *)self hasType])
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
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFB;
  }

  else
  {
    *&self->_has = has | 4;
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
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setState:(int)state
{
  has = self->_has;
  if (state == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_state = state;
  }
}

@end