@interface _INPBSnoozeTasksIntent
- (BOOL)isEqual:(id)equal;
- (_INPBSnoozeTasksIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addTasks:(id)tasks;
- (void)encodeWithCoder:(id)coder;
- (void)setTasks:(id)tasks;
- (void)writeTo:(id)to;
@end

@implementation _INPBSnoozeTasksIntent

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBSnoozeTasksIntent *)self hasAll])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBSnoozeTasksIntent all](self, "all")}];
    [dictionary setObject:v4 forKeyedSubscript:@"all"];
  }

  intentMetadata = [(_INPBSnoozeTasksIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  nextTriggerTime = [(_INPBSnoozeTasksIntent *)self nextTriggerTime];
  dictionaryRepresentation2 = [nextTriggerTime dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"nextTriggerTime"];

  if ([(NSArray *)self->_tasks count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = self->_tasks;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          dictionaryRepresentation3 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation3];
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    [dictionary setObject:array forKeyedSubscript:@"tasks"];
  }

  v16 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBSnoozeTasksIntent *)self hasAll])
  {
    v3 = 2654435761 * self->_all;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash]^ v3;
  v5 = [(_INPBDateTimeRange *)self->_nextTriggerTime hash];
  return v4 ^ v5 ^ [(NSArray *)self->_tasks hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  hasAll = [(_INPBSnoozeTasksIntent *)self hasAll];
  if (hasAll != [equalCopy hasAll])
  {
    goto LABEL_21;
  }

  if ([(_INPBSnoozeTasksIntent *)self hasAll])
  {
    if ([equalCopy hasAll])
    {
      all = self->_all;
      if (all != [equalCopy all])
      {
        goto LABEL_21;
      }
    }
  }

  intentMetadata = [(_INPBSnoozeTasksIntent *)self intentMetadata];
  intentMetadata2 = [equalCopy intentMetadata];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_20;
  }

  intentMetadata3 = [(_INPBSnoozeTasksIntent *)self intentMetadata];
  if (intentMetadata3)
  {
    v10 = intentMetadata3;
    intentMetadata4 = [(_INPBSnoozeTasksIntent *)self intentMetadata];
    intentMetadata5 = [equalCopy intentMetadata];
    v13 = [intentMetadata4 isEqual:intentMetadata5];

    if (!v13)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBSnoozeTasksIntent *)self nextTriggerTime];
  intentMetadata2 = [equalCopy nextTriggerTime];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_20;
  }

  nextTriggerTime = [(_INPBSnoozeTasksIntent *)self nextTriggerTime];
  if (nextTriggerTime)
  {
    v15 = nextTriggerTime;
    nextTriggerTime2 = [(_INPBSnoozeTasksIntent *)self nextTriggerTime];
    nextTriggerTime3 = [equalCopy nextTriggerTime];
    v18 = [nextTriggerTime2 isEqual:nextTriggerTime3];

    if (!v18)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBSnoozeTasksIntent *)self tasks];
  intentMetadata2 = [equalCopy tasks];
  if ((intentMetadata != 0) != (intentMetadata2 == 0))
  {
    tasks = [(_INPBSnoozeTasksIntent *)self tasks];
    if (!tasks)
    {

LABEL_24:
      v24 = 1;
      goto LABEL_22;
    }

    v20 = tasks;
    tasks2 = [(_INPBSnoozeTasksIntent *)self tasks];
    tasks3 = [equalCopy tasks];
    v23 = [tasks2 isEqual:tasks3];

    if (v23)
    {
      goto LABEL_24;
    }
  }

  else
  {
LABEL_20:
  }

LABEL_21:
  v24 = 0;
LABEL_22:

  return v24;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSnoozeTasksIntent allocWithZone:](_INPBSnoozeTasksIntent init];
  if ([(_INPBSnoozeTasksIntent *)self hasAll])
  {
    [(_INPBSnoozeTasksIntent *)v5 setAll:[(_INPBSnoozeTasksIntent *)self all]];
  }

  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBSnoozeTasksIntent *)v5 setIntentMetadata:v6];

  v7 = [(_INPBDateTimeRange *)self->_nextTriggerTime copyWithZone:zone];
  [(_INPBSnoozeTasksIntent *)v5 setNextTriggerTime:v7];

  v8 = [(NSArray *)self->_tasks copyWithZone:zone];
  [(_INPBSnoozeTasksIntent *)v5 setTasks:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSnoozeTasksIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSnoozeTasksIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSnoozeTasksIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v22 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if ([(_INPBSnoozeTasksIntent *)self hasAll])
  {
    all = self->_all;
    PBDataWriterWriteBOOLField();
  }

  intentMetadata = [(_INPBSnoozeTasksIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBSnoozeTasksIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  nextTriggerTime = [(_INPBSnoozeTasksIntent *)self nextTriggerTime];

  if (nextTriggerTime)
  {
    nextTriggerTime2 = [(_INPBSnoozeTasksIntent *)self nextTriggerTime];
    PBDataWriterWriteSubmessage();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_tasks;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)addTasks:(id)tasks
{
  tasksCopy = tasks;
  tasks = self->_tasks;
  v8 = tasksCopy;
  if (!tasks)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_tasks;
    self->_tasks = array;

    tasksCopy = v8;
    tasks = self->_tasks;
  }

  [(NSArray *)tasks addObject:tasksCopy];
}

- (void)setTasks:(id)tasks
{
  v4 = [tasks mutableCopy];
  tasks = self->_tasks;
  self->_tasks = v4;

  MEMORY[0x1EEE66BB8](v4, tasks);
}

@end