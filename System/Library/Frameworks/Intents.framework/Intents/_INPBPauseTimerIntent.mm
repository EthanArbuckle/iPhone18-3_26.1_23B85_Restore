@interface _INPBPauseTimerIntent
- (BOOL)isEqual:(id)equal;
- (_INPBPauseTimerIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBPauseTimerIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  intentMetadata = [(_INPBPauseTimerIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBPauseTimerIntent *)self hasPauseMultiple])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBPauseTimerIntent pauseMultiple](self, "pauseMultiple")}];
    [dictionary setObject:v6 forKeyedSubscript:@"pauseMultiple"];
  }

  targetTimer = [(_INPBPauseTimerIntent *)self targetTimer];
  dictionaryRepresentation2 = [targetTimer dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"targetTimer"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  if ([(_INPBPauseTimerIntent *)self hasPauseMultiple])
  {
    v4 = 2654435761 * self->_pauseMultiple;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(_INPBTimer *)self->_targetTimer hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  intentMetadata = [(_INPBPauseTimerIntent *)self intentMetadata];
  intentMetadata2 = [equalCopy intentMetadata];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_15;
  }

  intentMetadata3 = [(_INPBPauseTimerIntent *)self intentMetadata];
  if (intentMetadata3)
  {
    v8 = intentMetadata3;
    intentMetadata4 = [(_INPBPauseTimerIntent *)self intentMetadata];
    intentMetadata5 = [equalCopy intentMetadata];
    v11 = [intentMetadata4 isEqual:intentMetadata5];

    if (!v11)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  hasPauseMultiple = [(_INPBPauseTimerIntent *)self hasPauseMultiple];
  if (hasPauseMultiple != [equalCopy hasPauseMultiple])
  {
    goto LABEL_16;
  }

  if ([(_INPBPauseTimerIntent *)self hasPauseMultiple])
  {
    if ([equalCopy hasPauseMultiple])
    {
      pauseMultiple = self->_pauseMultiple;
      if (pauseMultiple != [equalCopy pauseMultiple])
      {
        goto LABEL_16;
      }
    }
  }

  intentMetadata = [(_INPBPauseTimerIntent *)self targetTimer];
  intentMetadata2 = [equalCopy targetTimer];
  if ((intentMetadata != 0) != (intentMetadata2 == 0))
  {
    targetTimer = [(_INPBPauseTimerIntent *)self targetTimer];
    if (!targetTimer)
    {

LABEL_19:
      v19 = 1;
      goto LABEL_17;
    }

    v15 = targetTimer;
    targetTimer2 = [(_INPBPauseTimerIntent *)self targetTimer];
    targetTimer3 = [equalCopy targetTimer];
    v18 = [targetTimer2 isEqual:targetTimer3];

    if (v18)
    {
      goto LABEL_19;
    }
  }

  else
  {
LABEL_15:
  }

LABEL_16:
  v19 = 0;
LABEL_17:

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBPauseTimerIntent allocWithZone:](_INPBPauseTimerIntent init];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBPauseTimerIntent *)v5 setIntentMetadata:v6];

  if ([(_INPBPauseTimerIntent *)self hasPauseMultiple])
  {
    [(_INPBPauseTimerIntent *)v5 setPauseMultiple:[(_INPBPauseTimerIntent *)self pauseMultiple]];
  }

  v7 = [(_INPBTimer *)self->_targetTimer copyWithZone:zone];
  [(_INPBPauseTimerIntent *)v5 setTargetTimer:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBPauseTimerIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBPauseTimerIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBPauseTimerIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  intentMetadata = [(_INPBPauseTimerIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBPauseTimerIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBPauseTimerIntent *)self hasPauseMultiple])
  {
    pauseMultiple = self->_pauseMultiple;
    PBDataWriterWriteBOOLField();
  }

  targetTimer = [(_INPBPauseTimerIntent *)self targetTimer];

  v8 = toCopy;
  if (targetTimer)
  {
    targetTimer2 = [(_INPBPauseTimerIntent *)self targetTimer];
    PBDataWriterWriteSubmessage();

    v8 = toCopy;
  }
}

@end