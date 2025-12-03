@interface _INPBAddTasksIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBAddTasksIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsWarnings:(id)warnings;
- (unint64_t)hash;
- (void)addAddedTasks:(id)tasks;
- (void)addWarnings:(int)warnings;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setAddedTasks:(id)tasks;
- (void)writeTo:(id)to;
@end

@implementation _INPBAddTasksIntentResponse

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_addedTasks count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = self->_addedTasks;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"addedTasks"];
  }

  modifiedTaskList = [(_INPBAddTasksIntentResponse *)self modifiedTaskList];
  dictionaryRepresentation2 = [modifiedTaskList dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"modifiedTaskList"];

  if (self->_warnings.count)
  {
    v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[_INPBAddTasksIntentResponse warningsCount](self, "warningsCount")}];
    if ([(_INPBAddTasksIntentResponse *)self warningsCount])
    {
      v14 = 0;
      do
      {
        v15 = self->_warnings.list[v14];
        if (v15 >= 5)
        {
          v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_warnings.list[v14]];
        }

        else
        {
          v16 = off_1E7283E08[v15];
        }

        [v13 addObject:v16];

        ++v14;
      }

      while (v14 < [(_INPBAddTasksIntentResponse *)self warningsCount]);
    }

    [dictionary setObject:v13 forKeyedSubscript:@"warnings"];
  }

  v17 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_addedTasks hash];
  v4 = [(_INPBTaskList *)self->_modifiedTaskList hash]^ v3;
  return v4 ^ PBRepeatedInt32Hash();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  addedTasks = [(_INPBAddTasksIntentResponse *)self addedTasks];
  addedTasks2 = [equalCopy addedTasks];
  if ((addedTasks != 0) == (addedTasks2 == 0))
  {
    goto LABEL_11;
  }

  addedTasks3 = [(_INPBAddTasksIntentResponse *)self addedTasks];
  if (addedTasks3)
  {
    v8 = addedTasks3;
    addedTasks4 = [(_INPBAddTasksIntentResponse *)self addedTasks];
    addedTasks5 = [equalCopy addedTasks];
    v11 = [addedTasks4 isEqual:addedTasks5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  addedTasks = [(_INPBAddTasksIntentResponse *)self modifiedTaskList];
  addedTasks2 = [equalCopy modifiedTaskList];
  if ((addedTasks != 0) != (addedTasks2 == 0))
  {
    modifiedTaskList = [(_INPBAddTasksIntentResponse *)self modifiedTaskList];
    if (!modifiedTaskList)
    {

LABEL_15:
      IsEqual = PBRepeatedInt32IsEqual();
      goto LABEL_13;
    }

    v13 = modifiedTaskList;
    modifiedTaskList2 = [(_INPBAddTasksIntentResponse *)self modifiedTaskList];
    modifiedTaskList3 = [equalCopy modifiedTaskList];
    v16 = [modifiedTaskList2 isEqual:modifiedTaskList3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  IsEqual = 0;
LABEL_13:

  return IsEqual;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBAddTasksIntentResponse allocWithZone:](_INPBAddTasksIntentResponse init];
  v6 = [(NSArray *)self->_addedTasks copyWithZone:zone];
  [(_INPBAddTasksIntentResponse *)v5 setAddedTasks:v6];

  v7 = [(_INPBTaskList *)self->_modifiedTaskList copyWithZone:zone];
  [(_INPBAddTasksIntentResponse *)v5 setModifiedTaskList:v7];

  PBRepeatedInt32Copy();
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBAddTasksIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBAddTasksIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBAddTasksIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)dealloc
{
  [(_INPBAddTasksIntentResponse *)self clearWarnings];
  v3.receiver = self;
  v3.super_class = _INPBAddTasksIntentResponse;
  [(_INPBAddTasksIntentResponse *)&v3 dealloc];
}

- (void)writeTo:(id)to
{
  v22 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_addedTasks;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  modifiedTaskList = [(_INPBAddTasksIntentResponse *)self modifiedTaskList];

  if (modifiedTaskList)
  {
    modifiedTaskList2 = [(_INPBAddTasksIntentResponse *)self modifiedTaskList];
    PBDataWriterWriteSubmessage();
  }

  p_warnings = &self->_warnings;
  if (p_warnings->count)
  {
    v14 = 0;
    do
    {
      v15 = p_warnings->list[v14];
      PBDataWriterWriteInt32Field();
      ++v14;
    }

    while (v14 < p_warnings->count);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (int)StringAsWarnings:(id)warnings
{
  warningsCopy = warnings;
  if ([warningsCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([warningsCopy isEqualToString:@"LOCATION_SERVICES_DISABLED"])
  {
    v4 = 1;
  }

  else if ([warningsCopy isEqualToString:@"FLAGGED_NOT_ALLOWED"])
  {
    v4 = 2;
  }

  else if ([warningsCopy isEqualToString:@"CONTACT_TRIGGER_NOT_ALLOWED"])
  {
    v4 = 3;
  }

  else if ([warningsCopy isEqualToString:@"NOT_UPGRADED_TO_CLOUDKIT"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addWarnings:(int)warnings
{
  if (warnings != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addAddedTasks:(id)tasks
{
  tasksCopy = tasks;
  addedTasks = self->_addedTasks;
  v8 = tasksCopy;
  if (!addedTasks)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_addedTasks;
    self->_addedTasks = array;

    tasksCopy = v8;
    addedTasks = self->_addedTasks;
  }

  [(NSArray *)addedTasks addObject:tasksCopy];
}

- (void)setAddedTasks:(id)tasks
{
  v4 = [tasks mutableCopy];
  addedTasks = self->_addedTasks;
  self->_addedTasks = v4;

  MEMORY[0x1EEE66BB8](v4, addedTasks);
}

@end