@interface _INPBPauseTimerIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBPauseTimerIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addPausedTimers:(id)timers;
- (void)encodeWithCoder:(id)coder;
- (void)setPausedTimers:(id)timers;
- (void)writeTo:(id)to;
@end

@implementation _INPBPauseTimerIntentResponse

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_pausedTimers count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"pausedTimers"];
  }

  v11 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    pausedTimers = [(_INPBPauseTimerIntentResponse *)self pausedTimers];
    pausedTimers2 = [equalCopy pausedTimers];
    v7 = pausedTimers2;
    if ((pausedTimers != 0) != (pausedTimers2 == 0))
    {
      pausedTimers3 = [(_INPBPauseTimerIntentResponse *)self pausedTimers];
      if (!pausedTimers3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = pausedTimers3;
      pausedTimers4 = [(_INPBPauseTimerIntentResponse *)self pausedTimers];
      pausedTimers5 = [equalCopy pausedTimers];
      v12 = [pausedTimers4 isEqual:pausedTimers5];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBPauseTimerIntentResponse allocWithZone:](_INPBPauseTimerIntentResponse init];
  v6 = [(NSArray *)self->_pausedTimers copyWithZone:zone];
  [(_INPBPauseTimerIntentResponse *)v5 setPausedTimers:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBPauseTimerIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBPauseTimerIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBPauseTimerIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

- (void)addPausedTimers:(id)timers
{
  timersCopy = timers;
  pausedTimers = self->_pausedTimers;
  v8 = timersCopy;
  if (!pausedTimers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_pausedTimers;
    self->_pausedTimers = array;

    timersCopy = v8;
    pausedTimers = self->_pausedTimers;
  }

  [(NSArray *)pausedTimers addObject:timersCopy];
}

- (void)setPausedTimers:(id)timers
{
  v4 = [timers mutableCopy];
  pausedTimers = self->_pausedTimers;
  self->_pausedTimers = v4;

  MEMORY[0x1EEE66BB8](v4, pausedTimers);
}

@end