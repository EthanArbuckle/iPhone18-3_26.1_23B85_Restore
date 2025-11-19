@interface _INPBCreateTimerIntent
- (BOOL)isEqual:(id)a3;
- (_INPBCreateTimerIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setHasType:(BOOL)a3;
- (void)setType:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBCreateTimerIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBCreateTimerIntent *)self hasDuration])
  {
    v4 = MEMORY[0x1E696AD98];
    [(_INPBCreateTimerIntent *)self duration];
    v5 = [v4 numberWithDouble:?];
    [v3 setObject:v5 forKeyedSubscript:@"duration"];
  }

  v6 = [(_INPBCreateTimerIntent *)self intentMetadata];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"intentMetadata"];

  v8 = [(_INPBCreateTimerIntent *)self label];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"label"];

  if ([(_INPBCreateTimerIntent *)self hasType])
  {
    v10 = [(_INPBCreateTimerIntent *)self type];
    if (v10 >= 3)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v10];
    }

    else
    {
      v11 = *(&off_1E72860F8 + v10);
    }

    [v3 setObject:v11 forKeyedSubscript:@"type"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = [(_INPBCreateTimerIntent *)self hasDuration];
  if (v5 != [v4 hasDuration])
  {
    goto LABEL_16;
  }

  if ([(_INPBCreateTimerIntent *)self hasDuration])
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

  v8 = [(_INPBCreateTimerIntent *)self intentMetadata];
  v9 = [v4 intentMetadata];
  if ((v8 != 0) == (v9 == 0))
  {
    goto LABEL_15;
  }

  v10 = [(_INPBCreateTimerIntent *)self intentMetadata];
  if (v10)
  {
    v11 = v10;
    v12 = [(_INPBCreateTimerIntent *)self intentMetadata];
    v13 = [v4 intentMetadata];
    v14 = [v12 isEqual:v13];

    if (!v14)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v8 = [(_INPBCreateTimerIntent *)self label];
  v9 = [v4 label];
  if ((v8 != 0) == (v9 == 0))
  {
LABEL_15:

    goto LABEL_16;
  }

  v15 = [(_INPBCreateTimerIntent *)self label];
  if (v15)
  {
    v16 = v15;
    v17 = [(_INPBCreateTimerIntent *)self label];
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

  v22 = [(_INPBCreateTimerIntent *)self hasType];
  if (v22 == [v4 hasType])
  {
    if (!-[_INPBCreateTimerIntent hasType](self, "hasType") || ![v4 hasType] || (type = self->_type, type == objc_msgSend(v4, "type")))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBCreateTimerIntent allocWithZone:](_INPBCreateTimerIntent init];
  if ([(_INPBCreateTimerIntent *)self hasDuration])
  {
    [(_INPBCreateTimerIntent *)self duration];
    [(_INPBCreateTimerIntent *)v5 setDuration:?];
  }

  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBCreateTimerIntent *)v5 setIntentMetadata:v6];

  v7 = [(_INPBDataString *)self->_label copyWithZone:a3];
  [(_INPBCreateTimerIntent *)v5 setLabel:v7];

  if ([(_INPBCreateTimerIntent *)self hasType])
  {
    [(_INPBCreateTimerIntent *)v5 setType:[(_INPBCreateTimerIntent *)self type]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBCreateTimerIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBCreateTimerIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBCreateTimerIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  if ([(_INPBCreateTimerIntent *)self hasDuration])
  {
    duration = self->_duration;
    PBDataWriterWriteDoubleField();
  }

  v5 = [(_INPBCreateTimerIntent *)self intentMetadata];

  if (v5)
  {
    v6 = [(_INPBCreateTimerIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_INPBCreateTimerIntent *)self label];

  if (v7)
  {
    v8 = [(_INPBCreateTimerIntent *)self label];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBCreateTimerIntent *)self hasType])
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
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_type = a3;
  }
}

@end