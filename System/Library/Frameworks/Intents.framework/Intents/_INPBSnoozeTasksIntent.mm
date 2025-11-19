@interface _INPBSnoozeTasksIntent
- (BOOL)isEqual:(id)a3;
- (_INPBSnoozeTasksIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addTasks:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setTasks:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSnoozeTasksIntent

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBSnoozeTasksIntent *)self hasAll])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBSnoozeTasksIntent all](self, "all")}];
    [v3 setObject:v4 forKeyedSubscript:@"all"];
  }

  v5 = [(_INPBSnoozeTasksIntent *)self intentMetadata];
  v6 = [v5 dictionaryRepresentation];
  [v3 setObject:v6 forKeyedSubscript:@"intentMetadata"];

  v7 = [(_INPBSnoozeTasksIntent *)self nextTriggerTime];
  v8 = [v7 dictionaryRepresentation];
  [v3 setObject:v8 forKeyedSubscript:@"nextTriggerTime"];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  v5 = [(_INPBSnoozeTasksIntent *)self hasAll];
  if (v5 != [v4 hasAll])
  {
    goto LABEL_21;
  }

  if ([(_INPBSnoozeTasksIntent *)self hasAll])
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

  v7 = [(_INPBSnoozeTasksIntent *)self intentMetadata];
  v8 = [v4 intentMetadata];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_20;
  }

  v9 = [(_INPBSnoozeTasksIntent *)self intentMetadata];
  if (v9)
  {
    v10 = v9;
    v11 = [(_INPBSnoozeTasksIntent *)self intentMetadata];
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

  v7 = [(_INPBSnoozeTasksIntent *)self nextTriggerTime];
  v8 = [v4 nextTriggerTime];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_20;
  }

  v14 = [(_INPBSnoozeTasksIntent *)self nextTriggerTime];
  if (v14)
  {
    v15 = v14;
    v16 = [(_INPBSnoozeTasksIntent *)self nextTriggerTime];
    v17 = [v4 nextTriggerTime];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v7 = [(_INPBSnoozeTasksIntent *)self tasks];
  v8 = [v4 tasks];
  if ((v7 != 0) != (v8 == 0))
  {
    v19 = [(_INPBSnoozeTasksIntent *)self tasks];
    if (!v19)
    {

LABEL_24:
      v24 = 1;
      goto LABEL_22;
    }

    v20 = v19;
    v21 = [(_INPBSnoozeTasksIntent *)self tasks];
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
  v5 = [+[_INPBSnoozeTasksIntent allocWithZone:](_INPBSnoozeTasksIntent init];
  if ([(_INPBSnoozeTasksIntent *)self hasAll])
  {
    [(_INPBSnoozeTasksIntent *)v5 setAll:[(_INPBSnoozeTasksIntent *)self all]];
  }

  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBSnoozeTasksIntent *)v5 setIntentMetadata:v6];

  v7 = [(_INPBDateTimeRange *)self->_nextTriggerTime copyWithZone:a3];
  [(_INPBSnoozeTasksIntent *)v5 setNextTriggerTime:v7];

  v8 = [(NSArray *)self->_tasks copyWithZone:a3];
  [(_INPBSnoozeTasksIntent *)v5 setTasks:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSnoozeTasksIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSnoozeTasksIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSnoozeTasksIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_INPBSnoozeTasksIntent *)self hasAll])
  {
    all = self->_all;
    PBDataWriterWriteBOOLField();
  }

  v6 = [(_INPBSnoozeTasksIntent *)self intentMetadata];

  if (v6)
  {
    v7 = [(_INPBSnoozeTasksIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBSnoozeTasksIntent *)self nextTriggerTime];

  if (v8)
  {
    v9 = [(_INPBSnoozeTasksIntent *)self nextTriggerTime];
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