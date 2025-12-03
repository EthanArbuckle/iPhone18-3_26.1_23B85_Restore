@interface _INPBSetTimerAttributeIntent
- (BOOL)isEqual:(id)equal;
- (_INPBSetTimerAttributeIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBSetTimerAttributeIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  intentMetadata = [(_INPBSetTimerAttributeIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  targetTimer = [(_INPBSetTimerAttributeIntent *)self targetTimer];
  dictionaryRepresentation2 = [targetTimer dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"targetTimer"];

  if ([(_INPBSetTimerAttributeIntent *)self hasToDuration])
  {
    v8 = MEMORY[0x1E696AD98];
    [(_INPBSetTimerAttributeIntent *)self toDuration];
    v9 = [v8 numberWithDouble:?];
    [dictionary setObject:v9 forKeyedSubscript:@"toDuration"];
  }

  toLabel = [(_INPBSetTimerAttributeIntent *)self toLabel];
  dictionaryRepresentation3 = [toLabel dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"toLabel"];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  intentMetadata = [(_INPBSetTimerAttributeIntent *)self intentMetadata];
  intentMetadata2 = [equalCopy intentMetadata];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_20;
  }

  intentMetadata3 = [(_INPBSetTimerAttributeIntent *)self intentMetadata];
  if (intentMetadata3)
  {
    v8 = intentMetadata3;
    intentMetadata4 = [(_INPBSetTimerAttributeIntent *)self intentMetadata];
    intentMetadata5 = [equalCopy intentMetadata];
    v11 = [intentMetadata4 isEqual:intentMetadata5];

    if (!v11)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBSetTimerAttributeIntent *)self targetTimer];
  intentMetadata2 = [equalCopy targetTimer];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_20;
  }

  targetTimer = [(_INPBSetTimerAttributeIntent *)self targetTimer];
  if (targetTimer)
  {
    v13 = targetTimer;
    targetTimer2 = [(_INPBSetTimerAttributeIntent *)self targetTimer];
    targetTimer3 = [equalCopy targetTimer];
    v16 = [targetTimer2 isEqual:targetTimer3];

    if (!v16)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  hasToDuration = [(_INPBSetTimerAttributeIntent *)self hasToDuration];
  if (hasToDuration != [equalCopy hasToDuration])
  {
    goto LABEL_21;
  }

  if ([(_INPBSetTimerAttributeIntent *)self hasToDuration])
  {
    if ([equalCopy hasToDuration])
    {
      toDuration = self->_toDuration;
      [equalCopy toDuration];
      if (toDuration != v19)
      {
        goto LABEL_21;
      }
    }
  }

  intentMetadata = [(_INPBSetTimerAttributeIntent *)self toLabel];
  intentMetadata2 = [equalCopy toLabel];
  if ((intentMetadata != 0) != (intentMetadata2 == 0))
  {
    toLabel = [(_INPBSetTimerAttributeIntent *)self toLabel];
    if (!toLabel)
    {

LABEL_24:
      v25 = 1;
      goto LABEL_22;
    }

    v21 = toLabel;
    toLabel2 = [(_INPBSetTimerAttributeIntent *)self toLabel];
    toLabel3 = [equalCopy toLabel];
    v24 = [toLabel2 isEqual:toLabel3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSetTimerAttributeIntent allocWithZone:](_INPBSetTimerAttributeIntent init];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBSetTimerAttributeIntent *)v5 setIntentMetadata:v6];

  v7 = [(_INPBTimer *)self->_targetTimer copyWithZone:zone];
  [(_INPBSetTimerAttributeIntent *)v5 setTargetTimer:v7];

  if ([(_INPBSetTimerAttributeIntent *)self hasToDuration])
  {
    [(_INPBSetTimerAttributeIntent *)self toDuration];
    [(_INPBSetTimerAttributeIntent *)v5 setToDuration:?];
  }

  v8 = [(_INPBDataString *)self->_toLabel copyWithZone:zone];
  [(_INPBSetTimerAttributeIntent *)v5 setToLabel:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSetTimerAttributeIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSetTimerAttributeIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSetTimerAttributeIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  intentMetadata = [(_INPBSetTimerAttributeIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBSetTimerAttributeIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  targetTimer = [(_INPBSetTimerAttributeIntent *)self targetTimer];

  if (targetTimer)
  {
    targetTimer2 = [(_INPBSetTimerAttributeIntent *)self targetTimer];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSetTimerAttributeIntent *)self hasToDuration])
  {
    toDuration = self->_toDuration;
    PBDataWriterWriteDoubleField();
  }

  toLabel = [(_INPBSetTimerAttributeIntent *)self toLabel];

  v10 = toCopy;
  if (toLabel)
  {
    toLabel2 = [(_INPBSetTimerAttributeIntent *)self toLabel];
    PBDataWriterWriteSubmessage();

    v10 = toCopy;
  }
}

@end