@interface _INPBDeleteTasksIntent
- (BOOL)isEqual:(id)equal;
- (_INPBDeleteTasksIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addTasks:(id)tasks;
- (void)encodeWithCoder:(id)coder;
- (void)setTasks:(id)tasks;
- (void)writeTo:(id)to;
@end

@implementation _INPBDeleteTasksIntent

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBDeleteTasksIntent *)self hasAll])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBDeleteTasksIntent all](self, "all")}];
    [dictionary setObject:v4 forKeyedSubscript:@"all"];
  }

  intentMetadata = [(_INPBDeleteTasksIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  taskList = [(_INPBDeleteTasksIntent *)self taskList];
  dictionaryRepresentation2 = [taskList dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"taskList"];

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
  if ([(_INPBDeleteTasksIntent *)self hasAll])
  {
    v3 = 2654435761 * self->_all;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash]^ v3;
  v5 = [(_INPBTaskList *)self->_taskList hash];
  return v4 ^ v5 ^ [(NSArray *)self->_tasks hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  hasAll = [(_INPBDeleteTasksIntent *)self hasAll];
  if (hasAll != [equalCopy hasAll])
  {
    goto LABEL_21;
  }

  if ([(_INPBDeleteTasksIntent *)self hasAll])
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

  intentMetadata = [(_INPBDeleteTasksIntent *)self intentMetadata];
  intentMetadata2 = [equalCopy intentMetadata];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_20;
  }

  intentMetadata3 = [(_INPBDeleteTasksIntent *)self intentMetadata];
  if (intentMetadata3)
  {
    v10 = intentMetadata3;
    intentMetadata4 = [(_INPBDeleteTasksIntent *)self intentMetadata];
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

  intentMetadata = [(_INPBDeleteTasksIntent *)self taskList];
  intentMetadata2 = [equalCopy taskList];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_20;
  }

  taskList = [(_INPBDeleteTasksIntent *)self taskList];
  if (taskList)
  {
    v15 = taskList;
    taskList2 = [(_INPBDeleteTasksIntent *)self taskList];
    taskList3 = [equalCopy taskList];
    v18 = [taskList2 isEqual:taskList3];

    if (!v18)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBDeleteTasksIntent *)self tasks];
  intentMetadata2 = [equalCopy tasks];
  if ((intentMetadata != 0) != (intentMetadata2 == 0))
  {
    tasks = [(_INPBDeleteTasksIntent *)self tasks];
    if (!tasks)
    {

LABEL_24:
      v24 = 1;
      goto LABEL_22;
    }

    v20 = tasks;
    tasks2 = [(_INPBDeleteTasksIntent *)self tasks];
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
  v5 = [+[_INPBDeleteTasksIntent allocWithZone:](_INPBDeleteTasksIntent init];
  if ([(_INPBDeleteTasksIntent *)self hasAll])
  {
    [(_INPBDeleteTasksIntent *)v5 setAll:[(_INPBDeleteTasksIntent *)self all]];
  }

  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBDeleteTasksIntent *)v5 setIntentMetadata:v6];

  v7 = [(_INPBTaskList *)self->_taskList copyWithZone:zone];
  [(_INPBDeleteTasksIntent *)v5 setTaskList:v7];

  v8 = [(NSArray *)self->_tasks copyWithZone:zone];
  [(_INPBDeleteTasksIntent *)v5 setTasks:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBDeleteTasksIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBDeleteTasksIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBDeleteTasksIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v22 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if ([(_INPBDeleteTasksIntent *)self hasAll])
  {
    all = self->_all;
    PBDataWriterWriteBOOLField();
  }

  intentMetadata = [(_INPBDeleteTasksIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBDeleteTasksIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  taskList = [(_INPBDeleteTasksIntent *)self taskList];

  if (taskList)
  {
    taskList2 = [(_INPBDeleteTasksIntent *)self taskList];
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