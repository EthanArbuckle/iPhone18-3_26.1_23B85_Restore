@interface _INPBCreateTaskListIntent
- (BOOL)isEqual:(id)a3;
- (_INPBCreateTaskListIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addTaskTitles:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setTaskTitles:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBCreateTaskListIntent

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBCreateTaskListIntent *)self groupName];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"groupName"];

  v6 = [(_INPBCreateTaskListIntent *)self intentMetadata];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"intentMetadata"];

  if ([(NSArray *)self->_taskTitles count])
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = self->_taskTitles;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKeyedSubscript:@"taskTitles"];
  }

  v15 = [(_INPBCreateTaskListIntent *)self title];
  v16 = [v15 dictionaryRepresentation];
  [v3 setObject:v16 forKeyedSubscript:@"title"];

  v17 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBDataString *)self->_groupName hash];
  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash]^ v3;
  v5 = [(NSArray *)self->_taskTitles hash];
  return v4 ^ v5 ^ [(_INPBDataString *)self->_title hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(_INPBCreateTaskListIntent *)self groupName];
  v6 = [v4 groupName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(_INPBCreateTaskListIntent *)self groupName];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBCreateTaskListIntent *)self groupName];
    v10 = [v4 groupName];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBCreateTaskListIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(_INPBCreateTaskListIntent *)self intentMetadata];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBCreateTaskListIntent *)self intentMetadata];
    v15 = [v4 intentMetadata];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBCreateTaskListIntent *)self taskTitles];
  v6 = [v4 taskTitles];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(_INPBCreateTaskListIntent *)self taskTitles];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBCreateTaskListIntent *)self taskTitles];
    v20 = [v4 taskTitles];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBCreateTaskListIntent *)self title];
  v6 = [v4 title];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(_INPBCreateTaskListIntent *)self title];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(_INPBCreateTaskListIntent *)self title];
    v25 = [v4 title];
    v26 = [v24 isEqual:v25];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBCreateTaskListIntent allocWithZone:](_INPBCreateTaskListIntent init];
  v6 = [(_INPBDataString *)self->_groupName copyWithZone:a3];
  [(_INPBCreateTaskListIntent *)v5 setGroupName:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBCreateTaskListIntent *)v5 setIntentMetadata:v7];

  v8 = [(NSArray *)self->_taskTitles copyWithZone:a3];
  [(_INPBCreateTaskListIntent *)v5 setTaskTitles:v8];

  v9 = [(_INPBDataString *)self->_title copyWithZone:a3];
  [(_INPBCreateTaskListIntent *)v5 setTitle:v9];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBCreateTaskListIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBCreateTaskListIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBCreateTaskListIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBCreateTaskListIntent *)self groupName];

  if (v5)
  {
    v6 = [(_INPBCreateTaskListIntent *)self groupName];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_INPBCreateTaskListIntent *)self intentMetadata];

  if (v7)
  {
    v8 = [(_INPBCreateTaskListIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = self->_taskTitles;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        PBDataWriterWriteSubmessage();
        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v15 = [(_INPBCreateTaskListIntent *)self title];

  if (v15)
  {
    v16 = [(_INPBCreateTaskListIntent *)self title];
    PBDataWriterWriteSubmessage();
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)addTaskTitles:(id)a3
{
  v4 = a3;
  taskTitles = self->_taskTitles;
  v8 = v4;
  if (!taskTitles)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_taskTitles;
    self->_taskTitles = v6;

    v4 = v8;
    taskTitles = self->_taskTitles;
  }

  [(NSArray *)taskTitles addObject:v4];
}

- (void)setTaskTitles:(id)a3
{
  v4 = [a3 mutableCopy];
  taskTitles = self->_taskTitles;
  self->_taskTitles = v4;

  MEMORY[0x1EEE66BB8](v4, taskTitles);
}

@end