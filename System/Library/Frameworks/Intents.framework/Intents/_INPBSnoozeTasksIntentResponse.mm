@interface _INPBSnoozeTasksIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBSnoozeTasksIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addSnoozedTasks:(id)tasks;
- (void)encodeWithCoder:(id)coder;
- (void)setSnoozedTasks:(id)tasks;
- (void)writeTo:(id)to;
@end

@implementation _INPBSnoozeTasksIntentResponse

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_snoozedTasks count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_snoozedTasks;
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

    [dictionary setObject:array forKeyedSubscript:@"snoozedTasks"];
  }

  v11 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    snoozedTasks = [(_INPBSnoozeTasksIntentResponse *)self snoozedTasks];
    snoozedTasks2 = [equalCopy snoozedTasks];
    v7 = snoozedTasks2;
    if ((snoozedTasks != 0) != (snoozedTasks2 == 0))
    {
      snoozedTasks3 = [(_INPBSnoozeTasksIntentResponse *)self snoozedTasks];
      if (!snoozedTasks3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = snoozedTasks3;
      snoozedTasks4 = [(_INPBSnoozeTasksIntentResponse *)self snoozedTasks];
      snoozedTasks5 = [equalCopy snoozedTasks];
      v12 = [snoozedTasks4 isEqual:snoozedTasks5];

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
  v5 = [+[_INPBSnoozeTasksIntentResponse allocWithZone:](_INPBSnoozeTasksIntentResponse init];
  v6 = [(NSArray *)self->_snoozedTasks copyWithZone:zone];
  [(_INPBSnoozeTasksIntentResponse *)v5 setSnoozedTasks:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSnoozeTasksIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSnoozeTasksIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSnoozeTasksIntentResponse *)self initWithData:selfCopy];

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
  v5 = self->_snoozedTasks;
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

- (void)addSnoozedTasks:(id)tasks
{
  tasksCopy = tasks;
  snoozedTasks = self->_snoozedTasks;
  v8 = tasksCopy;
  if (!snoozedTasks)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_snoozedTasks;
    self->_snoozedTasks = array;

    tasksCopy = v8;
    snoozedTasks = self->_snoozedTasks;
  }

  [(NSArray *)snoozedTasks addObject:tasksCopy];
}

- (void)setSnoozedTasks:(id)tasks
{
  v4 = [tasks mutableCopy];
  snoozedTasks = self->_snoozedTasks;
  self->_snoozedTasks = v4;

  MEMORY[0x1EEE66BB8](v4, snoozedTasks);
}

@end