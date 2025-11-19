@interface _INPBDeleteTasksIntent
- (BOOL)isEqual:(id)a3;
- (_INPBDeleteTasksIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addTasks:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setTasks:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBDeleteTasksIntent

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBDeleteTasksIntent *)self hasAll])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBDeleteTasksIntent all](self, "all")}];
    [v3 setObject:v4 forKeyedSubscript:@"all"];
  }

  v5 = [(_INPBDeleteTasksIntent *)self intentMetadata];
  v6 = [v5 dictionaryRepresentation];
  [v3 setObject:v6 forKeyedSubscript:@"intentMetadata"];

  v7 = [(_INPBDeleteTasksIntent *)self taskList];
  v8 = [v7 dictionaryRepresentation];
  [v3 setObject:v8 forKeyedSubscript:@"taskList"];

  if ([(NSArray *)self->_tasks count])
  {
    v9 = [MEMORY[0x1E695DF70] array];
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

          v15 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:v15];
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    [v3 setObject:v9 forKeyedSubscript:@"tasks"];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  v5 = [(_INPBDeleteTasksIntent *)self hasAll];
  if (v5 != [v4 hasAll])
  {
    goto LABEL_21;
  }

  if ([(_INPBDeleteTasksIntent *)self hasAll])
  {
    if ([v4 hasAll])
    {
      all = self->_all;
      if (all != [v4 all])
      {
        goto LABEL_21;
      }
    }
  }

  v7 = [(_INPBDeleteTasksIntent *)self intentMetadata];
  v8 = [v4 intentMetadata];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_20;
  }

  v9 = [(_INPBDeleteTasksIntent *)self intentMetadata];
  if (v9)
  {
    v10 = v9;
    v11 = [(_INPBDeleteTasksIntent *)self intentMetadata];
    v12 = [v4 intentMetadata];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v7 = [(_INPBDeleteTasksIntent *)self taskList];
  v8 = [v4 taskList];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_20;
  }

  v14 = [(_INPBDeleteTasksIntent *)self taskList];
  if (v14)
  {
    v15 = v14;
    v16 = [(_INPBDeleteTasksIntent *)self taskList];
    v17 = [v4 taskList];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v7 = [(_INPBDeleteTasksIntent *)self tasks];
  v8 = [v4 tasks];
  if ((v7 != 0) != (v8 == 0))
  {
    v19 = [(_INPBDeleteTasksIntent *)self tasks];
    if (!v19)
    {

LABEL_24:
      v24 = 1;
      goto LABEL_22;
    }

    v20 = v19;
    v21 = [(_INPBDeleteTasksIntent *)self tasks];
    v22 = [v4 tasks];
    v23 = [v21 isEqual:v22];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBDeleteTasksIntent allocWithZone:](_INPBDeleteTasksIntent init];
  if ([(_INPBDeleteTasksIntent *)self hasAll])
  {
    [(_INPBDeleteTasksIntent *)v5 setAll:[(_INPBDeleteTasksIntent *)self all]];
  }

  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBDeleteTasksIntent *)v5 setIntentMetadata:v6];

  v7 = [(_INPBTaskList *)self->_taskList copyWithZone:a3];
  [(_INPBDeleteTasksIntent *)v5 setTaskList:v7];

  v8 = [(NSArray *)self->_tasks copyWithZone:a3];
  [(_INPBDeleteTasksIntent *)v5 setTasks:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBDeleteTasksIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBDeleteTasksIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBDeleteTasksIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_INPBDeleteTasksIntent *)self hasAll])
  {
    all = self->_all;
    PBDataWriterWriteBOOLField();
  }

  v6 = [(_INPBDeleteTasksIntent *)self intentMetadata];

  if (v6)
  {
    v7 = [(_INPBDeleteTasksIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBDeleteTasksIntent *)self taskList];

  if (v8)
  {
    v9 = [(_INPBDeleteTasksIntent *)self taskList];
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

- (void)addTasks:(id)a3
{
  v4 = a3;
  tasks = self->_tasks;
  v8 = v4;
  if (!tasks)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_tasks;
    self->_tasks = v6;

    v4 = v8;
    tasks = self->_tasks;
  }

  [(NSArray *)tasks addObject:v4];
}

- (void)setTasks:(id)a3
{
  v4 = [a3 mutableCopy];
  tasks = self->_tasks;
  self->_tasks = v4;

  MEMORY[0x1EEE66BB8](v4, tasks);
}

@end