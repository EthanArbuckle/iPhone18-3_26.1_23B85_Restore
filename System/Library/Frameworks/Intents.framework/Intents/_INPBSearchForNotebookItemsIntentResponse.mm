@interface _INPBSearchForNotebookItemsIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBSearchForNotebookItemsIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsSortType:(id)a3;
- (unint64_t)hash;
- (void)addNotes:(id)a3;
- (void)addTaskLists:(id)a3;
- (void)addTasks:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setNotes:(id)a3;
- (void)setSortType:(int)a3;
- (void)setTaskLists:(id)a3;
- (void)setTasks:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSearchForNotebookItemsIntentResponse

- (id)dictionaryRepresentation
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_notes count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
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

          v10 = [*(*(&v37 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"notes"];
  }

  if ([(_INPBSearchForNotebookItemsIntentResponse *)self hasSortType])
  {
    v11 = [(_INPBSearchForNotebookItemsIntentResponse *)self sortType];
    if (v11)
    {
      if (v11 == 1)
      {
        v12 = @"BY_DATE";
      }

      else
      {
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v11];
      }
    }

    else
    {
      v12 = @"AS_IS";
    }

    [v3 setObject:v12 forKeyedSubscript:@"sortType"];
  }

  if ([(NSArray *)self->_taskLists count])
  {
    v13 = [MEMORY[0x1E695DF70] array];
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

          v19 = [*(*(&v33 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:v19];
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v33 objects:v42 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKeyedSubscript:@"taskLists"];
  }

  if ([(NSArray *)self->_tasks count])
  {
    v20 = [MEMORY[0x1E695DF70] array];
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

          v26 = [*(*(&v29 + 1) + 8 * k) dictionaryRepresentation];
          [v20 addObject:v26];
        }

        v23 = [(NSArray *)v21 countByEnumeratingWithState:&v29 objects:v41 count:16];
      }

      while (v23);
    }

    [v3 setObject:v20 forKeyedSubscript:@"tasks"];
  }

  v27 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  v5 = [(_INPBSearchForNotebookItemsIntentResponse *)self notes];
  v6 = [v4 notes];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_20;
  }

  v7 = [(_INPBSearchForNotebookItemsIntentResponse *)self notes];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBSearchForNotebookItemsIntentResponse *)self notes];
    v10 = [v4 notes];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v12 = [(_INPBSearchForNotebookItemsIntentResponse *)self hasSortType];
  if (v12 != [v4 hasSortType])
  {
    goto LABEL_21;
  }

  if ([(_INPBSearchForNotebookItemsIntentResponse *)self hasSortType])
  {
    if ([v4 hasSortType])
    {
      sortType = self->_sortType;
      if (sortType != [v4 sortType])
      {
        goto LABEL_21;
      }
    }
  }

  v5 = [(_INPBSearchForNotebookItemsIntentResponse *)self taskLists];
  v6 = [v4 taskLists];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_20;
  }

  v14 = [(_INPBSearchForNotebookItemsIntentResponse *)self taskLists];
  if (v14)
  {
    v15 = v14;
    v16 = [(_INPBSearchForNotebookItemsIntentResponse *)self taskLists];
    v17 = [v4 taskLists];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v5 = [(_INPBSearchForNotebookItemsIntentResponse *)self tasks];
  v6 = [v4 tasks];
  if ((v5 != 0) != (v6 == 0))
  {
    v19 = [(_INPBSearchForNotebookItemsIntentResponse *)self tasks];
    if (!v19)
    {

LABEL_24:
      v24 = 1;
      goto LABEL_22;
    }

    v20 = v19;
    v21 = [(_INPBSearchForNotebookItemsIntentResponse *)self tasks];
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
  v5 = [+[_INPBSearchForNotebookItemsIntentResponse allocWithZone:](_INPBSearchForNotebookItemsIntentResponse init];
  v6 = [(NSArray *)self->_notes copyWithZone:a3];
  [(_INPBSearchForNotebookItemsIntentResponse *)v5 setNotes:v6];

  if ([(_INPBSearchForNotebookItemsIntentResponse *)self hasSortType])
  {
    [(_INPBSearchForNotebookItemsIntentResponse *)v5 setSortType:[(_INPBSearchForNotebookItemsIntentResponse *)self sortType]];
  }

  v7 = [(NSArray *)self->_taskLists copyWithZone:a3];
  [(_INPBSearchForNotebookItemsIntentResponse *)v5 setTaskLists:v7];

  v8 = [(NSArray *)self->_tasks copyWithZone:a3];
  [(_INPBSearchForNotebookItemsIntentResponse *)v5 setTasks:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSearchForNotebookItemsIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSearchForNotebookItemsIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSearchForNotebookItemsIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

- (void)addTaskLists:(id)a3
{
  v4 = a3;
  taskLists = self->_taskLists;
  v8 = v4;
  if (!taskLists)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_taskLists;
    self->_taskLists = v6;

    v4 = v8;
    taskLists = self->_taskLists;
  }

  [(NSArray *)taskLists addObject:v4];
}

- (void)setTaskLists:(id)a3
{
  v4 = [a3 mutableCopy];
  taskLists = self->_taskLists;
  self->_taskLists = v4;

  MEMORY[0x1EEE66BB8](v4, taskLists);
}

- (int)StringAsSortType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"AS_IS"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"BY_DATE"];
  }

  return v4;
}

- (void)setSortType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_sortType = a3;
  }
}

- (void)addNotes:(id)a3
{
  v4 = a3;
  notes = self->_notes;
  v8 = v4;
  if (!notes)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_notes;
    self->_notes = v6;

    v4 = v8;
    notes = self->_notes;
  }

  [(NSArray *)notes addObject:v4];
}

- (void)setNotes:(id)a3
{
  v4 = [a3 mutableCopy];
  notes = self->_notes;
  self->_notes = v4;

  MEMORY[0x1EEE66BB8](v4, notes);
}

@end