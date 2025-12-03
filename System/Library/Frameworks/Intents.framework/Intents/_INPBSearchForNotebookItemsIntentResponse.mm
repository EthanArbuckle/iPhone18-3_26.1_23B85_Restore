@interface _INPBSearchForNotebookItemsIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBSearchForNotebookItemsIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsSortType:(id)type;
- (unint64_t)hash;
- (void)addNotes:(id)notes;
- (void)addTaskLists:(id)lists;
- (void)addTasks:(id)tasks;
- (void)encodeWithCoder:(id)coder;
- (void)setNotes:(id)notes;
- (void)setSortType:(int)type;
- (void)setTaskLists:(id)lists;
- (void)setTasks:(id)tasks;
- (void)writeTo:(id)to;
@end

@implementation _INPBSearchForNotebookItemsIntentResponse

- (id)dictionaryRepresentation
{
  v44 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_notes count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v5 = self->_notes;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v38;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v38 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v37 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"notes"];
  }

  if ([(_INPBSearchForNotebookItemsIntentResponse *)self hasSortType])
  {
    sortType = [(_INPBSearchForNotebookItemsIntentResponse *)self sortType];
    if (sortType)
    {
      if (sortType == 1)
      {
        v12 = @"BY_DATE";
      }

      else
      {
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", sortType];
      }
    }

    else
    {
      v12 = @"AS_IS";
    }

    [dictionary setObject:v12 forKeyedSubscript:@"sortType"];
  }

  if ([(NSArray *)self->_taskLists count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v14 = self->_taskLists;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v34;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v34 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation2 = [*(*(&v33 + 1) + 8 * j) dictionaryRepresentation];
          [array2 addObject:dictionaryRepresentation2];
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v33 objects:v42 count:16];
      }

      while (v16);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"taskLists"];
  }

  if ([(NSArray *)self->_tasks count])
  {
    array3 = [MEMORY[0x1E695DF70] array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v21 = self->_tasks;
    v22 = [(NSArray *)v21 countByEnumeratingWithState:&v29 objects:v41 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v30;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v30 != v24)
          {
            objc_enumerationMutation(v21);
          }

          dictionaryRepresentation3 = [*(*(&v29 + 1) + 8 * k) dictionaryRepresentation];
          [array3 addObject:dictionaryRepresentation3];
        }

        v23 = [(NSArray *)v21 countByEnumeratingWithState:&v29 objects:v41 count:16];
      }

      while (v23);
    }

    [dictionary setObject:array3 forKeyedSubscript:@"tasks"];
  }

  v27 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_notes hash];
  if ([(_INPBSearchForNotebookItemsIntentResponse *)self hasSortType])
  {
    v4 = 2654435761 * self->_sortType;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(NSArray *)self->_taskLists hash];
  return v5 ^ v6 ^ [(NSArray *)self->_tasks hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  notes = [(_INPBSearchForNotebookItemsIntentResponse *)self notes];
  notes2 = [equalCopy notes];
  if ((notes != 0) == (notes2 == 0))
  {
    goto LABEL_20;
  }

  notes3 = [(_INPBSearchForNotebookItemsIntentResponse *)self notes];
  if (notes3)
  {
    v8 = notes3;
    notes4 = [(_INPBSearchForNotebookItemsIntentResponse *)self notes];
    notes5 = [equalCopy notes];
    v11 = [notes4 isEqual:notes5];

    if (!v11)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  hasSortType = [(_INPBSearchForNotebookItemsIntentResponse *)self hasSortType];
  if (hasSortType != [equalCopy hasSortType])
  {
    goto LABEL_21;
  }

  if ([(_INPBSearchForNotebookItemsIntentResponse *)self hasSortType])
  {
    if ([equalCopy hasSortType])
    {
      sortType = self->_sortType;
      if (sortType != [equalCopy sortType])
      {
        goto LABEL_21;
      }
    }
  }

  notes = [(_INPBSearchForNotebookItemsIntentResponse *)self taskLists];
  notes2 = [equalCopy taskLists];
  if ((notes != 0) == (notes2 == 0))
  {
    goto LABEL_20;
  }

  taskLists = [(_INPBSearchForNotebookItemsIntentResponse *)self taskLists];
  if (taskLists)
  {
    v15 = taskLists;
    taskLists2 = [(_INPBSearchForNotebookItemsIntentResponse *)self taskLists];
    taskLists3 = [equalCopy taskLists];
    v18 = [taskLists2 isEqual:taskLists3];

    if (!v18)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  notes = [(_INPBSearchForNotebookItemsIntentResponse *)self tasks];
  notes2 = [equalCopy tasks];
  if ((notes != 0) != (notes2 == 0))
  {
    tasks = [(_INPBSearchForNotebookItemsIntentResponse *)self tasks];
    if (!tasks)
    {

LABEL_24:
      v24 = 1;
      goto LABEL_22;
    }

    v20 = tasks;
    tasks2 = [(_INPBSearchForNotebookItemsIntentResponse *)self tasks];
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
  v5 = [+[_INPBSearchForNotebookItemsIntentResponse allocWithZone:](_INPBSearchForNotebookItemsIntentResponse init];
  v6 = [(NSArray *)self->_notes copyWithZone:zone];
  [(_INPBSearchForNotebookItemsIntentResponse *)v5 setNotes:v6];

  if ([(_INPBSearchForNotebookItemsIntentResponse *)self hasSortType])
  {
    [(_INPBSearchForNotebookItemsIntentResponse *)v5 setSortType:[(_INPBSearchForNotebookItemsIntentResponse *)self sortType]];
  }

  v7 = [(NSArray *)self->_taskLists copyWithZone:zone];
  [(_INPBSearchForNotebookItemsIntentResponse *)v5 setTaskLists:v7];

  v8 = [(NSArray *)self->_tasks copyWithZone:zone];
  [(_INPBSearchForNotebookItemsIntentResponse *)v5 setTasks:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSearchForNotebookItemsIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSearchForNotebookItemsIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSearchForNotebookItemsIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v40 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = self->_notes;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    do
    {
      v9 = 0;
      do
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v33 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v7);
  }

  if ([(_INPBSearchForNotebookItemsIntentResponse *)self hasSortType])
  {
    sortType = self->_sortType;
    PBDataWriterWriteInt32Field();
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = self->_taskLists;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      v16 = 0;
      do
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v29 + 1) + 8 * v16);
        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v14);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = self->_tasks;
  v19 = [(NSArray *)v18 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      v22 = 0;
      do
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v25 + 1) + 8 * v22);
        PBDataWriterWriteSubmessage();
        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSArray *)v18 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v20);
  }

  v24 = *MEMORY[0x1E69E9840];
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

- (void)addTaskLists:(id)lists
{
  listsCopy = lists;
  taskLists = self->_taskLists;
  v8 = listsCopy;
  if (!taskLists)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_taskLists;
    self->_taskLists = array;

    listsCopy = v8;
    taskLists = self->_taskLists;
  }

  [(NSArray *)taskLists addObject:listsCopy];
}

- (void)setTaskLists:(id)lists
{
  v4 = [lists mutableCopy];
  taskLists = self->_taskLists;
  self->_taskLists = v4;

  MEMORY[0x1EEE66BB8](v4, taskLists);
}

- (int)StringAsSortType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"AS_IS"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [typeCopy isEqualToString:@"BY_DATE"];
  }

  return v4;
}

- (void)setSortType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_sortType = type;
  }
}

- (void)addNotes:(id)notes
{
  notesCopy = notes;
  notes = self->_notes;
  v8 = notesCopy;
  if (!notes)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_notes;
    self->_notes = array;

    notesCopy = v8;
    notes = self->_notes;
  }

  [(NSArray *)notes addObject:notesCopy];
}

- (void)setNotes:(id)notes
{
  v4 = [notes mutableCopy];
  notes = self->_notes;
  self->_notes = v4;

  MEMORY[0x1EEE66BB8](v4, notes);
}

@end