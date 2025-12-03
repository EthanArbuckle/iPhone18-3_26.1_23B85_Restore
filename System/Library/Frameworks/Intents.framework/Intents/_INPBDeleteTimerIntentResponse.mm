@interface _INPBDeleteTimerIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBDeleteTimerIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addDeletedTimers:(id)timers;
- (void)encodeWithCoder:(id)coder;
- (void)setDeletedTimers:(id)timers;
- (void)writeTo:(id)to;
@end

@implementation _INPBDeleteTimerIntentResponse

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_deletedTimers count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_deletedTimers;
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

    [dictionary setObject:array forKeyedSubscript:@"deletedTimers"];
  }

  v11 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    deletedTimers = [(_INPBDeleteTimerIntentResponse *)self deletedTimers];
    deletedTimers2 = [equalCopy deletedTimers];
    v7 = deletedTimers2;
    if ((deletedTimers != 0) != (deletedTimers2 == 0))
    {
      deletedTimers3 = [(_INPBDeleteTimerIntentResponse *)self deletedTimers];
      if (!deletedTimers3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = deletedTimers3;
      deletedTimers4 = [(_INPBDeleteTimerIntentResponse *)self deletedTimers];
      deletedTimers5 = [equalCopy deletedTimers];
      v12 = [deletedTimers4 isEqual:deletedTimers5];

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
  v5 = [+[_INPBDeleteTimerIntentResponse allocWithZone:](_INPBDeleteTimerIntentResponse init];
  v6 = [(NSArray *)self->_deletedTimers copyWithZone:zone];
  [(_INPBDeleteTimerIntentResponse *)v5 setDeletedTimers:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBDeleteTimerIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBDeleteTimerIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBDeleteTimerIntentResponse *)self initWithData:selfCopy];

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
  v5 = self->_deletedTimers;
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

- (void)addDeletedTimers:(id)timers
{
  timersCopy = timers;
  deletedTimers = self->_deletedTimers;
  v8 = timersCopy;
  if (!deletedTimers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_deletedTimers;
    self->_deletedTimers = array;

    timersCopy = v8;
    deletedTimers = self->_deletedTimers;
  }

  [(NSArray *)deletedTimers addObject:timersCopy];
}

- (void)setDeletedTimers:(id)timers
{
  v4 = [timers mutableCopy];
  deletedTimers = self->_deletedTimers;
  self->_deletedTimers = v4;

  MEMORY[0x1EEE66BB8](v4, deletedTimers);
}

@end