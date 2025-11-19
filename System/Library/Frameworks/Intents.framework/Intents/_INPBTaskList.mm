@interface _INPBTaskList
- (BOOL)isEqual:(id)a3;
- (_INPBTaskList)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addTasks:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setTasks:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBTaskList

- (id)dictionaryRepresentation
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBTaskList *)self createdDateTime];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"createdDateTime"];

  v6 = [(_INPBTaskList *)self groupName];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"groupName"];

  if (self->_identifier)
  {
    v8 = [(_INPBTaskList *)self identifier];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"identifier"];
  }

  v10 = [(_INPBTaskList *)self modifiedDateTime];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"modifiedDateTime"];

  if ([(NSArray *)self->_tasks count])
  {
    v12 = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = self->_tasks;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          [v12 addObject:v18];
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v15);
    }

    [v3 setObject:v12 forKeyedSubscript:@"tasks"];
  }

  v19 = [(_INPBTaskList *)self title];
  v20 = [v19 dictionaryRepresentation];
  [v3 setObject:v20 forKeyedSubscript:@"title"];

  v21 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBDateTime *)self->_createdDateTime hash];
  v4 = [(_INPBDataString *)self->_groupName hash]^ v3;
  v5 = [(NSString *)self->_identifier hash];
  v6 = v4 ^ v5 ^ [(_INPBDateTime *)self->_modifiedDateTime hash];
  v7 = [(NSArray *)self->_tasks hash];
  return v6 ^ v7 ^ [(_INPBDataString *)self->_title hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  v5 = [(_INPBTaskList *)self createdDateTime];
  v6 = [v4 createdDateTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v7 = [(_INPBTaskList *)self createdDateTime];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBTaskList *)self createdDateTime];
    v10 = [v4 createdDateTime];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBTaskList *)self groupName];
  v6 = [v4 groupName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v12 = [(_INPBTaskList *)self groupName];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBTaskList *)self groupName];
    v15 = [v4 groupName];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBTaskList *)self identifier];
  v6 = [v4 identifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v17 = [(_INPBTaskList *)self identifier];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBTaskList *)self identifier];
    v20 = [v4 identifier];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBTaskList *)self modifiedDateTime];
  v6 = [v4 modifiedDateTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v22 = [(_INPBTaskList *)self modifiedDateTime];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBTaskList *)self modifiedDateTime];
    v25 = [v4 modifiedDateTime];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBTaskList *)self tasks];
  v6 = [v4 tasks];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v27 = [(_INPBTaskList *)self tasks];
  if (v27)
  {
    v28 = v27;
    v29 = [(_INPBTaskList *)self tasks];
    v30 = [v4 tasks];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBTaskList *)self title];
  v6 = [v4 title];
  if ((v5 != 0) != (v6 == 0))
  {
    v32 = [(_INPBTaskList *)self title];
    if (!v32)
    {

LABEL_35:
      v37 = 1;
      goto LABEL_33;
    }

    v33 = v32;
    v34 = [(_INPBTaskList *)self title];
    v35 = [v4 title];
    v36 = [v34 isEqual:v35];

    if (v36)
    {
      goto LABEL_35;
    }
  }

  else
  {
LABEL_31:
  }

LABEL_32:
  v37 = 0;
LABEL_33:

  return v37;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBTaskList allocWithZone:](_INPBTaskList init];
  v6 = [(_INPBDateTime *)self->_createdDateTime copyWithZone:a3];
  [(_INPBTaskList *)v5 setCreatedDateTime:v6];

  v7 = [(_INPBDataString *)self->_groupName copyWithZone:a3];
  [(_INPBTaskList *)v5 setGroupName:v7];

  v8 = [(NSString *)self->_identifier copyWithZone:a3];
  [(_INPBTaskList *)v5 setIdentifier:v8];

  v9 = [(_INPBDateTime *)self->_modifiedDateTime copyWithZone:a3];
  [(_INPBTaskList *)v5 setModifiedDateTime:v9];

  v10 = [(NSArray *)self->_tasks copyWithZone:a3];
  [(_INPBTaskList *)v5 setTasks:v10];

  v11 = [(_INPBDataString *)self->_title copyWithZone:a3];
  [(_INPBTaskList *)v5 setTitle:v11];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBTaskList *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBTaskList)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBTaskList *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBTaskList *)self createdDateTime];

  if (v5)
  {
    v6 = [(_INPBTaskList *)self createdDateTime];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_INPBTaskList *)self groupName];

  if (v7)
  {
    v8 = [(_INPBTaskList *)self groupName];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(_INPBTaskList *)self identifier];

  if (v9)
  {
    identifier = self->_identifier;
    PBDataWriterWriteStringField();
  }

  v11 = [(_INPBTaskList *)self modifiedDateTime];

  if (v11)
  {
    v12 = [(_INPBTaskList *)self modifiedDateTime];
    PBDataWriterWriteSubmessage();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = self->_tasks;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      v17 = 0;
      do
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v22 + 1) + 8 * v17);
        PBDataWriterWriteSubmessage();
        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v15);
  }

  v19 = [(_INPBTaskList *)self title];

  if (v19)
  {
    v20 = [(_INPBTaskList *)self title];
    PBDataWriterWriteSubmessage();
  }

  v21 = *MEMORY[0x1E69E9840];
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

- (void)setIdentifier:(id)a3
{
  v4 = [a3 copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8](v4, identifier);
}

@end