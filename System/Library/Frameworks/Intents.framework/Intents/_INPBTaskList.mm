@interface _INPBTaskList
- (BOOL)isEqual:(id)equal;
- (_INPBTaskList)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addTasks:(id)tasks;
- (void)encodeWithCoder:(id)coder;
- (void)setIdentifier:(id)identifier;
- (void)setTasks:(id)tasks;
- (void)writeTo:(id)to;
@end

@implementation _INPBTaskList

- (id)dictionaryRepresentation
{
  v28 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  createdDateTime = [(_INPBTaskList *)self createdDateTime];
  dictionaryRepresentation = [createdDateTime dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"createdDateTime"];

  groupName = [(_INPBTaskList *)self groupName];
  dictionaryRepresentation2 = [groupName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"groupName"];

  if (self->_identifier)
  {
    identifier = [(_INPBTaskList *)self identifier];
    v9 = [identifier copy];
    [dictionary setObject:v9 forKeyedSubscript:@"identifier"];
  }

  modifiedDateTime = [(_INPBTaskList *)self modifiedDateTime];
  dictionaryRepresentation3 = [modifiedDateTime dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"modifiedDateTime"];

  if ([(NSArray *)self->_tasks count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation4 = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation4];
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v15);
    }

    [dictionary setObject:array forKeyedSubscript:@"tasks"];
  }

  title = [(_INPBTaskList *)self title];
  dictionaryRepresentation5 = [title dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"title"];

  v21 = *MEMORY[0x1E69E9840];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  createdDateTime = [(_INPBTaskList *)self createdDateTime];
  createdDateTime2 = [equalCopy createdDateTime];
  if ((createdDateTime != 0) == (createdDateTime2 == 0))
  {
    goto LABEL_31;
  }

  createdDateTime3 = [(_INPBTaskList *)self createdDateTime];
  if (createdDateTime3)
  {
    v8 = createdDateTime3;
    createdDateTime4 = [(_INPBTaskList *)self createdDateTime];
    createdDateTime5 = [equalCopy createdDateTime];
    v11 = [createdDateTime4 isEqual:createdDateTime5];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  createdDateTime = [(_INPBTaskList *)self groupName];
  createdDateTime2 = [equalCopy groupName];
  if ((createdDateTime != 0) == (createdDateTime2 == 0))
  {
    goto LABEL_31;
  }

  groupName = [(_INPBTaskList *)self groupName];
  if (groupName)
  {
    v13 = groupName;
    groupName2 = [(_INPBTaskList *)self groupName];
    groupName3 = [equalCopy groupName];
    v16 = [groupName2 isEqual:groupName3];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  createdDateTime = [(_INPBTaskList *)self identifier];
  createdDateTime2 = [equalCopy identifier];
  if ((createdDateTime != 0) == (createdDateTime2 == 0))
  {
    goto LABEL_31;
  }

  identifier = [(_INPBTaskList *)self identifier];
  if (identifier)
  {
    v18 = identifier;
    identifier2 = [(_INPBTaskList *)self identifier];
    identifier3 = [equalCopy identifier];
    v21 = [identifier2 isEqual:identifier3];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  createdDateTime = [(_INPBTaskList *)self modifiedDateTime];
  createdDateTime2 = [equalCopy modifiedDateTime];
  if ((createdDateTime != 0) == (createdDateTime2 == 0))
  {
    goto LABEL_31;
  }

  modifiedDateTime = [(_INPBTaskList *)self modifiedDateTime];
  if (modifiedDateTime)
  {
    v23 = modifiedDateTime;
    modifiedDateTime2 = [(_INPBTaskList *)self modifiedDateTime];
    modifiedDateTime3 = [equalCopy modifiedDateTime];
    v26 = [modifiedDateTime2 isEqual:modifiedDateTime3];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  createdDateTime = [(_INPBTaskList *)self tasks];
  createdDateTime2 = [equalCopy tasks];
  if ((createdDateTime != 0) == (createdDateTime2 == 0))
  {
    goto LABEL_31;
  }

  tasks = [(_INPBTaskList *)self tasks];
  if (tasks)
  {
    v28 = tasks;
    tasks2 = [(_INPBTaskList *)self tasks];
    tasks3 = [equalCopy tasks];
    v31 = [tasks2 isEqual:tasks3];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  createdDateTime = [(_INPBTaskList *)self title];
  createdDateTime2 = [equalCopy title];
  if ((createdDateTime != 0) != (createdDateTime2 == 0))
  {
    title = [(_INPBTaskList *)self title];
    if (!title)
    {

LABEL_35:
      v37 = 1;
      goto LABEL_33;
    }

    v33 = title;
    title2 = [(_INPBTaskList *)self title];
    title3 = [equalCopy title];
    v36 = [title2 isEqual:title3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBTaskList allocWithZone:](_INPBTaskList init];
  v6 = [(_INPBDateTime *)self->_createdDateTime copyWithZone:zone];
  [(_INPBTaskList *)v5 setCreatedDateTime:v6];

  v7 = [(_INPBDataString *)self->_groupName copyWithZone:zone];
  [(_INPBTaskList *)v5 setGroupName:v7];

  v8 = [(NSString *)self->_identifier copyWithZone:zone];
  [(_INPBTaskList *)v5 setIdentifier:v8];

  v9 = [(_INPBDateTime *)self->_modifiedDateTime copyWithZone:zone];
  [(_INPBTaskList *)v5 setModifiedDateTime:v9];

  v10 = [(NSArray *)self->_tasks copyWithZone:zone];
  [(_INPBTaskList *)v5 setTasks:v10];

  v11 = [(_INPBDataString *)self->_title copyWithZone:zone];
  [(_INPBTaskList *)v5 setTitle:v11];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBTaskList *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBTaskList)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBTaskList *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v27 = *MEMORY[0x1E69E9840];
  toCopy = to;
  createdDateTime = [(_INPBTaskList *)self createdDateTime];

  if (createdDateTime)
  {
    createdDateTime2 = [(_INPBTaskList *)self createdDateTime];
    PBDataWriterWriteSubmessage();
  }

  groupName = [(_INPBTaskList *)self groupName];

  if (groupName)
  {
    groupName2 = [(_INPBTaskList *)self groupName];
    PBDataWriterWriteSubmessage();
  }

  identifier = [(_INPBTaskList *)self identifier];

  if (identifier)
  {
    identifier = self->_identifier;
    PBDataWriterWriteStringField();
  }

  modifiedDateTime = [(_INPBTaskList *)self modifiedDateTime];

  if (modifiedDateTime)
  {
    modifiedDateTime2 = [(_INPBTaskList *)self modifiedDateTime];
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

  title = [(_INPBTaskList *)self title];

  if (title)
  {
    title2 = [(_INPBTaskList *)self title];
    PBDataWriterWriteSubmessage();
  }

  v21 = *MEMORY[0x1E69E9840];
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

- (void)setIdentifier:(id)identifier
{
  v4 = [identifier copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8](v4, identifier);
}

@end