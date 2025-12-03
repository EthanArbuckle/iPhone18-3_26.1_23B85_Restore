@interface _INPBResetTimerIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBResetTimerIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addResetTimers:(id)timers;
- (void)encodeWithCoder:(id)coder;
- (void)setResetTimers:(id)timers;
- (void)writeTo:(id)to;
@end

@implementation _INPBResetTimerIntentResponse

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_resetTimers count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_resetTimers;
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

    [dictionary setObject:array forKeyedSubscript:@"resetTimers"];
  }

  v11 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    resetTimers = [(_INPBResetTimerIntentResponse *)self resetTimers];
    resetTimers2 = [equalCopy resetTimers];
    v7 = resetTimers2;
    if ((resetTimers != 0) != (resetTimers2 == 0))
    {
      resetTimers3 = [(_INPBResetTimerIntentResponse *)self resetTimers];
      if (!resetTimers3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = resetTimers3;
      resetTimers4 = [(_INPBResetTimerIntentResponse *)self resetTimers];
      resetTimers5 = [equalCopy resetTimers];
      v12 = [resetTimers4 isEqual:resetTimers5];

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
  v5 = [+[_INPBResetTimerIntentResponse allocWithZone:](_INPBResetTimerIntentResponse init];
  v6 = [(NSArray *)self->_resetTimers copyWithZone:zone];
  [(_INPBResetTimerIntentResponse *)v5 setResetTimers:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBResetTimerIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBResetTimerIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBResetTimerIntentResponse *)self initWithData:selfCopy];

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
  v5 = self->_resetTimers;
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

- (void)addResetTimers:(id)timers
{
  timersCopy = timers;
  resetTimers = self->_resetTimers;
  v8 = timersCopy;
  if (!resetTimers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_resetTimers;
    self->_resetTimers = array;

    timersCopy = v8;
    resetTimers = self->_resetTimers;
  }

  [(NSArray *)resetTimers addObject:timersCopy];
}

- (void)setResetTimers:(id)timers
{
  v4 = [timers mutableCopy];
  resetTimers = self->_resetTimers;
  self->_resetTimers = v4;

  MEMORY[0x1EEE66BB8](v4, resetTimers);
}

@end