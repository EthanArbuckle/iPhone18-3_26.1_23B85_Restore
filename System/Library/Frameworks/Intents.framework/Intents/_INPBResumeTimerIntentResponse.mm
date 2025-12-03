@interface _INPBResumeTimerIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBResumeTimerIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addResumedTimers:(id)timers;
- (void)encodeWithCoder:(id)coder;
- (void)setResumedTimers:(id)timers;
- (void)writeTo:(id)to;
@end

@implementation _INPBResumeTimerIntentResponse

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_resumedTimers count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_resumedTimers;
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

    [dictionary setObject:array forKeyedSubscript:@"resumedTimers"];
  }

  v11 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    resumedTimers = [(_INPBResumeTimerIntentResponse *)self resumedTimers];
    resumedTimers2 = [equalCopy resumedTimers];
    v7 = resumedTimers2;
    if ((resumedTimers != 0) != (resumedTimers2 == 0))
    {
      resumedTimers3 = [(_INPBResumeTimerIntentResponse *)self resumedTimers];
      if (!resumedTimers3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = resumedTimers3;
      resumedTimers4 = [(_INPBResumeTimerIntentResponse *)self resumedTimers];
      resumedTimers5 = [equalCopy resumedTimers];
      v12 = [resumedTimers4 isEqual:resumedTimers5];

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
  v5 = [+[_INPBResumeTimerIntentResponse allocWithZone:](_INPBResumeTimerIntentResponse init];
  v6 = [(NSArray *)self->_resumedTimers copyWithZone:zone];
  [(_INPBResumeTimerIntentResponse *)v5 setResumedTimers:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBResumeTimerIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBResumeTimerIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBResumeTimerIntentResponse *)self initWithData:selfCopy];

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
  v5 = self->_resumedTimers;
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

- (void)addResumedTimers:(id)timers
{
  timersCopy = timers;
  resumedTimers = self->_resumedTimers;
  v8 = timersCopy;
  if (!resumedTimers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_resumedTimers;
    self->_resumedTimers = array;

    timersCopy = v8;
    resumedTimers = self->_resumedTimers;
  }

  [(NSArray *)resumedTimers addObject:timersCopy];
}

- (void)setResumedTimers:(id)timers
{
  v4 = [timers mutableCopy];
  resumedTimers = self->_resumedTimers;
  self->_resumedTimers = v4;

  MEMORY[0x1EEE66BB8](v4, resumedTimers);
}

@end