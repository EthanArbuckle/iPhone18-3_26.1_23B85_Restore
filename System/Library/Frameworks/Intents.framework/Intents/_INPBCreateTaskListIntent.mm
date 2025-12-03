@interface _INPBCreateTaskListIntent
- (BOOL)isEqual:(id)equal;
- (_INPBCreateTaskListIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addTaskTitles:(id)titles;
- (void)encodeWithCoder:(id)coder;
- (void)setTaskTitles:(id)titles;
- (void)writeTo:(id)to;
@end

@implementation _INPBCreateTaskListIntent

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  groupName = [(_INPBCreateTaskListIntent *)self groupName];
  dictionaryRepresentation = [groupName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"groupName"];

  intentMetadata = [(_INPBCreateTaskListIntent *)self intentMetadata];
  dictionaryRepresentation2 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"intentMetadata"];

  if ([(NSArray *)self->_taskTitles count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation3 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation3];
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    [dictionary setObject:array forKeyedSubscript:@"taskTitles"];
  }

  title = [(_INPBCreateTaskListIntent *)self title];
  dictionaryRepresentation4 = [title dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"title"];

  v17 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBDataString *)self->_groupName hash];
  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash]^ v3;
  v5 = [(NSArray *)self->_taskTitles hash];
  return v4 ^ v5 ^ [(_INPBDataString *)self->_title hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  groupName = [(_INPBCreateTaskListIntent *)self groupName];
  groupName2 = [equalCopy groupName];
  if ((groupName != 0) == (groupName2 == 0))
  {
    goto LABEL_21;
  }

  groupName3 = [(_INPBCreateTaskListIntent *)self groupName];
  if (groupName3)
  {
    v8 = groupName3;
    groupName4 = [(_INPBCreateTaskListIntent *)self groupName];
    groupName5 = [equalCopy groupName];
    v11 = [groupName4 isEqual:groupName5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  groupName = [(_INPBCreateTaskListIntent *)self intentMetadata];
  groupName2 = [equalCopy intentMetadata];
  if ((groupName != 0) == (groupName2 == 0))
  {
    goto LABEL_21;
  }

  intentMetadata = [(_INPBCreateTaskListIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v13 = intentMetadata;
    intentMetadata2 = [(_INPBCreateTaskListIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v16 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  groupName = [(_INPBCreateTaskListIntent *)self taskTitles];
  groupName2 = [equalCopy taskTitles];
  if ((groupName != 0) == (groupName2 == 0))
  {
    goto LABEL_21;
  }

  taskTitles = [(_INPBCreateTaskListIntent *)self taskTitles];
  if (taskTitles)
  {
    v18 = taskTitles;
    taskTitles2 = [(_INPBCreateTaskListIntent *)self taskTitles];
    taskTitles3 = [equalCopy taskTitles];
    v21 = [taskTitles2 isEqual:taskTitles3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  groupName = [(_INPBCreateTaskListIntent *)self title];
  groupName2 = [equalCopy title];
  if ((groupName != 0) != (groupName2 == 0))
  {
    title = [(_INPBCreateTaskListIntent *)self title];
    if (!title)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = title;
    title2 = [(_INPBCreateTaskListIntent *)self title];
    title3 = [equalCopy title];
    v26 = [title2 isEqual:title3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBCreateTaskListIntent allocWithZone:](_INPBCreateTaskListIntent init];
  v6 = [(_INPBDataString *)self->_groupName copyWithZone:zone];
  [(_INPBCreateTaskListIntent *)v5 setGroupName:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBCreateTaskListIntent *)v5 setIntentMetadata:v7];

  v8 = [(NSArray *)self->_taskTitles copyWithZone:zone];
  [(_INPBCreateTaskListIntent *)v5 setTaskTitles:v8];

  v9 = [(_INPBDataString *)self->_title copyWithZone:zone];
  [(_INPBCreateTaskListIntent *)v5 setTitle:v9];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBCreateTaskListIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBCreateTaskListIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBCreateTaskListIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v23 = *MEMORY[0x1E69E9840];
  toCopy = to;
  groupName = [(_INPBCreateTaskListIntent *)self groupName];

  if (groupName)
  {
    groupName2 = [(_INPBCreateTaskListIntent *)self groupName];
    PBDataWriterWriteSubmessage();
  }

  intentMetadata = [(_INPBCreateTaskListIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBCreateTaskListIntent *)self intentMetadata];
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

  title = [(_INPBCreateTaskListIntent *)self title];

  if (title)
  {
    title2 = [(_INPBCreateTaskListIntent *)self title];
    PBDataWriterWriteSubmessage();
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)addTaskTitles:(id)titles
{
  titlesCopy = titles;
  taskTitles = self->_taskTitles;
  v8 = titlesCopy;
  if (!taskTitles)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_taskTitles;
    self->_taskTitles = array;

    titlesCopy = v8;
    taskTitles = self->_taskTitles;
  }

  [(NSArray *)taskTitles addObject:titlesCopy];
}

- (void)setTaskTitles:(id)titles
{
  v4 = [titles mutableCopy];
  taskTitles = self->_taskTitles;
  self->_taskTitles = v4;

  MEMORY[0x1EEE66BB8](v4, taskTitles);
}

@end