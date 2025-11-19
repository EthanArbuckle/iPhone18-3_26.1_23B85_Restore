@interface _INPBPauseTimerIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBPauseTimerIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)addPausedTimers:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setPausedTimers:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBPauseTimerIntentResponse

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_pausedTimers count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_pausedTimers;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"pausedTimers"];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_INPBPauseTimerIntentResponse *)self pausedTimers];
    v6 = [v4 pausedTimers];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(_INPBPauseTimerIntentResponse *)self pausedTimers];
      if (!v8)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(_INPBPauseTimerIntentResponse *)self pausedTimers];
      v11 = [v4 pausedTimers];
      v12 = [v10 isEqual:v11];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBPauseTimerIntentResponse allocWithZone:](_INPBPauseTimerIntentResponse init];
  v6 = [(NSArray *)self->_pausedTimers copyWithZone:a3];
  [(_INPBPauseTimerIntentResponse *)v5 setPausedTimers:v6];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBPauseTimerIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBPauseTimerIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBPauseTimerIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_pausedTimers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)addPausedTimers:(id)a3
{
  v4 = a3;
  pausedTimers = self->_pausedTimers;
  v8 = v4;
  if (!pausedTimers)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_pausedTimers;
    self->_pausedTimers = v6;

    v4 = v8;
    pausedTimers = self->_pausedTimers;
  }

  [(NSArray *)pausedTimers addObject:v4];
}

- (void)setPausedTimers:(id)a3
{
  v4 = [a3 mutableCopy];
  pausedTimers = self->_pausedTimers;
  self->_pausedTimers = v4;

  MEMORY[0x1EEE66BB8](v4, pausedTimers);
}

@end