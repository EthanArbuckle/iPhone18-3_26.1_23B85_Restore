@interface _INPBCreateTimerIntent
- (BOOL)isEqual:(id)equal;
- (_INPBCreateTimerIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setHasType:(BOOL)type;
- (void)setType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBCreateTimerIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBCreateTimerIntent *)self hasDuration])
  {
    v4 = MEMORY[0x1E696AD98];
    [(_INPBCreateTimerIntent *)self duration];
    v5 = [v4 numberWithDouble:?];
    [dictionary setObject:v5 forKeyedSubscript:@"duration"];
  }

  intentMetadata = [(_INPBCreateTimerIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  label = [(_INPBCreateTimerIntent *)self label];
  dictionaryRepresentation2 = [label dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"label"];

  if ([(_INPBCreateTimerIntent *)self hasType])
  {
    type = [(_INPBCreateTimerIntent *)self type];
    if (type >= 3)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", type];
    }

    else
    {
      v11 = *(&off_1E72860F8 + type);
    }

    [dictionary setObject:v11 forKeyedSubscript:@"type"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBCreateTimerIntent *)self hasDuration])
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
  if ([(_INPBCreateTimerIntent *)self hasType])
  {
    v11 = 2654435761 * self->_type;
  }

  else
  {
    v11 = 0;
  }

  return v9 ^ v8 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  hasDuration = [(_INPBCreateTimerIntent *)self hasDuration];
  if (hasDuration != [equalCopy hasDuration])
  {
    goto LABEL_16;
  }

  if ([(_INPBCreateTimerIntent *)self hasDuration])
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

  intentMetadata = [(_INPBCreateTimerIntent *)self intentMetadata];
  intentMetadata2 = [equalCopy intentMetadata];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_15;
  }

  intentMetadata3 = [(_INPBCreateTimerIntent *)self intentMetadata];
  if (intentMetadata3)
  {
    v11 = intentMetadata3;
    intentMetadata4 = [(_INPBCreateTimerIntent *)self intentMetadata];
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

  intentMetadata = [(_INPBCreateTimerIntent *)self label];
  intentMetadata2 = [equalCopy label];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
LABEL_15:

    goto LABEL_16;
  }

  label = [(_INPBCreateTimerIntent *)self label];
  if (label)
  {
    v16 = label;
    label2 = [(_INPBCreateTimerIntent *)self label];
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

  hasType = [(_INPBCreateTimerIntent *)self hasType];
  if (hasType == [equalCopy hasType])
  {
    if (!-[_INPBCreateTimerIntent hasType](self, "hasType") || ![equalCopy hasType] || (type = self->_type, type == objc_msgSend(equalCopy, "type")))
    {
      v20 = 1;
      goto LABEL_17;
    }
  }

LABEL_16:
  v20 = 0;
LABEL_17:

  return v20;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBCreateTimerIntent allocWithZone:](_INPBCreateTimerIntent init];
  if ([(_INPBCreateTimerIntent *)self hasDuration])
  {
    [(_INPBCreateTimerIntent *)self duration];
    [(_INPBCreateTimerIntent *)v5 setDuration:?];
  }

  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBCreateTimerIntent *)v5 setIntentMetadata:v6];

  v7 = [(_INPBDataString *)self->_label copyWithZone:zone];
  [(_INPBCreateTimerIntent *)v5 setLabel:v7];

  if ([(_INPBCreateTimerIntent *)self hasType])
  {
    [(_INPBCreateTimerIntent *)v5 setType:[(_INPBCreateTimerIntent *)self type]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBCreateTimerIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBCreateTimerIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBCreateTimerIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBCreateTimerIntent *)self hasDuration])
  {
    duration = self->_duration;
    PBDataWriterWriteDoubleField();
  }

  intentMetadata = [(_INPBCreateTimerIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBCreateTimerIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  label = [(_INPBCreateTimerIntent *)self label];

  if (label)
  {
    label2 = [(_INPBCreateTimerIntent *)self label];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBCreateTimerIntent *)self hasType])
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
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_type = type;
  }
}

@end