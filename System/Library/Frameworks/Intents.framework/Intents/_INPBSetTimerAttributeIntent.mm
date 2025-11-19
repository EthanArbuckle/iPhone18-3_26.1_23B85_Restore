@interface _INPBSetTimerAttributeIntent
- (BOOL)isEqual:(id)a3;
- (_INPBSetTimerAttributeIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSetTimerAttributeIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBSetTimerAttributeIntent *)self intentMetadata];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"intentMetadata"];

  v6 = [(_INPBSetTimerAttributeIntent *)self targetTimer];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"targetTimer"];

  if ([(_INPBSetTimerAttributeIntent *)self hasToDuration])
  {
    v8 = MEMORY[0x1E696AD98];
    [(_INPBSetTimerAttributeIntent *)self toDuration];
    v9 = [v8 numberWithDouble:?];
    [v3 setObject:v9 forKeyedSubscript:@"toDuration"];
  }

  v10 = [(_INPBSetTimerAttributeIntent *)self toLabel];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"toLabel"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v4 = [(_INPBTimer *)self->_targetTimer hash];
  if ([(_INPBSetTimerAttributeIntent *)self hasToDuration])
  {
    toDuration = self->_toDuration;
    if (toDuration < 0.0)
    {
      toDuration = -toDuration;
    }

    *v5.i64 = floor(toDuration + 0.5);
    v8 = (toDuration - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v10 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v6, v5).i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v10 += v8;
      }
    }

    else
    {
      v10 -= fabs(v8);
    }
  }

  else
  {
    v10 = 0;
  }

  return v4 ^ v3 ^ v10 ^ [(_INPBDataString *)self->_toLabel hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  v5 = [(_INPBSetTimerAttributeIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_20;
  }

  v7 = [(_INPBSetTimerAttributeIntent *)self intentMetadata];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBSetTimerAttributeIntent *)self intentMetadata];
    v10 = [v4 intentMetadata];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v5 = [(_INPBSetTimerAttributeIntent *)self targetTimer];
  v6 = [v4 targetTimer];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_20;
  }

  v12 = [(_INPBSetTimerAttributeIntent *)self targetTimer];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBSetTimerAttributeIntent *)self targetTimer];
    v15 = [v4 targetTimer];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v17 = [(_INPBSetTimerAttributeIntent *)self hasToDuration];
  if (v17 != [v4 hasToDuration])
  {
    goto LABEL_21;
  }

  if ([(_INPBSetTimerAttributeIntent *)self hasToDuration])
  {
    if ([v4 hasToDuration])
    {
      toDuration = self->_toDuration;
      [v4 toDuration];
      if (toDuration != v19)
      {
        goto LABEL_21;
      }
    }
  }

  v5 = [(_INPBSetTimerAttributeIntent *)self toLabel];
  v6 = [v4 toLabel];
  if ((v5 != 0) != (v6 == 0))
  {
    v20 = [(_INPBSetTimerAttributeIntent *)self toLabel];
    if (!v20)
    {

LABEL_24:
      v25 = 1;
      goto LABEL_22;
    }

    v21 = v20;
    v22 = [(_INPBSetTimerAttributeIntent *)self toLabel];
    v23 = [v4 toLabel];
    v24 = [v22 isEqual:v23];

    if (v24)
    {
      goto LABEL_24;
    }
  }

  else
  {
LABEL_20:
  }

LABEL_21:
  v25 = 0;
LABEL_22:

  return v25;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSetTimerAttributeIntent allocWithZone:](_INPBSetTimerAttributeIntent init];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBSetTimerAttributeIntent *)v5 setIntentMetadata:v6];

  v7 = [(_INPBTimer *)self->_targetTimer copyWithZone:a3];
  [(_INPBSetTimerAttributeIntent *)v5 setTargetTimer:v7];

  if ([(_INPBSetTimerAttributeIntent *)self hasToDuration])
  {
    [(_INPBSetTimerAttributeIntent *)self toDuration];
    [(_INPBSetTimerAttributeIntent *)v5 setToDuration:?];
  }

  v8 = [(_INPBDataString *)self->_toLabel copyWithZone:a3];
  [(_INPBSetTimerAttributeIntent *)v5 setToLabel:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSetTimerAttributeIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSetTimerAttributeIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSetTimerAttributeIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
  v4 = [(_INPBSetTimerAttributeIntent *)self intentMetadata];

  if (v4)
  {
    v5 = [(_INPBSetTimerAttributeIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBSetTimerAttributeIntent *)self targetTimer];

  if (v6)
  {
    v7 = [(_INPBSetTimerAttributeIntent *)self targetTimer];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSetTimerAttributeIntent *)self hasToDuration])
  {
    toDuration = self->_toDuration;
    PBDataWriterWriteDoubleField();
  }

  v9 = [(_INPBSetTimerAttributeIntent *)self toLabel];

  v10 = v12;
  if (v9)
  {
    v11 = [(_INPBSetTimerAttributeIntent *)self toLabel];
    PBDataWriterWriteSubmessage();

    v10 = v12;
  }
}

@end