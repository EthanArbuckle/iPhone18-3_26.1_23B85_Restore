@interface _INPBPauseTimerIntent
- (BOOL)isEqual:(id)a3;
- (_INPBPauseTimerIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBPauseTimerIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBPauseTimerIntent *)self intentMetadata];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBPauseTimerIntent *)self hasPauseMultiple])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBPauseTimerIntent pauseMultiple](self, "pauseMultiple")}];
    [v3 setObject:v6 forKeyedSubscript:@"pauseMultiple"];
  }

  v7 = [(_INPBPauseTimerIntent *)self targetTimer];
  v8 = [v7 dictionaryRepresentation];
  [v3 setObject:v8 forKeyedSubscript:@"targetTimer"];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = [(_INPBPauseTimerIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_15;
  }

  v7 = [(_INPBPauseTimerIntent *)self intentMetadata];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBPauseTimerIntent *)self intentMetadata];
    v10 = [v4 intentMetadata];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v12 = [(_INPBPauseTimerIntent *)self hasPauseMultiple];
  if (v12 != [v4 hasPauseMultiple])
  {
    goto LABEL_16;
  }

  if ([(_INPBPauseTimerIntent *)self hasPauseMultiple])
  {
    if ([v4 hasPauseMultiple])
    {
      pauseMultiple = self->_pauseMultiple;
      if (pauseMultiple != [v4 pauseMultiple])
      {
        goto LABEL_16;
      }
    }
  }

  v5 = [(_INPBPauseTimerIntent *)self targetTimer];
  v6 = [v4 targetTimer];
  if ((v5 != 0) != (v6 == 0))
  {
    v14 = [(_INPBPauseTimerIntent *)self targetTimer];
    if (!v14)
    {

LABEL_19:
      v19 = 1;
      goto LABEL_17;
    }

    v15 = v14;
    v16 = [(_INPBPauseTimerIntent *)self targetTimer];
    v17 = [v4 targetTimer];
    v18 = [v16 isEqual:v17];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBPauseTimerIntent allocWithZone:](_INPBPauseTimerIntent init];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBPauseTimerIntent *)v5 setIntentMetadata:v6];

  if ([(_INPBPauseTimerIntent *)self hasPauseMultiple])
  {
    [(_INPBPauseTimerIntent *)v5 setPauseMultiple:[(_INPBPauseTimerIntent *)self pauseMultiple]];
  }

  v7 = [(_INPBTimer *)self->_targetTimer copyWithZone:a3];
  [(_INPBPauseTimerIntent *)v5 setTargetTimer:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBPauseTimerIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBPauseTimerIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBPauseTimerIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  v4 = [(_INPBPauseTimerIntent *)self intentMetadata];

  if (v4)
  {
    v5 = [(_INPBPauseTimerIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBPauseTimerIntent *)self hasPauseMultiple])
  {
    pauseMultiple = self->_pauseMultiple;
    PBDataWriterWriteBOOLField();
  }

  v7 = [(_INPBPauseTimerIntent *)self targetTimer];

  v8 = v10;
  if (v7)
  {
    v9 = [(_INPBPauseTimerIntent *)self targetTimer];
    PBDataWriterWriteSubmessage();

    v8 = v10;
  }
}

@end