@interface _INPBAddTasksIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBAddTasksIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsWarnings:(id)a3;
- (unint64_t)hash;
- (void)addAddedTasks:(id)a3;
- (void)addWarnings:(int)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setAddedTasks:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBAddTasksIntentResponse

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_addedTasks count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
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

          v10 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"addedTasks"];
  }

  v11 = [(_INPBAddTasksIntentResponse *)self modifiedTaskList];
  v12 = [v11 dictionaryRepresentation];
  [v3 setObject:v12 forKeyedSubscript:@"modifiedTaskList"];

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

    [v3 setObject:v13 forKeyedSubscript:@"warnings"];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_addedTasks hash];
  v4 = [(_INPBTaskList *)self->_modifiedTaskList hash]^ v3;
  return v4 ^ PBRepeatedInt32Hash();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_INPBAddTasksIntentResponse *)self addedTasks];
  v6 = [v4 addedTasks];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_INPBAddTasksIntentResponse *)self addedTasks];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBAddTasksIntentResponse *)self addedTasks];
    v10 = [v4 addedTasks];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_INPBAddTasksIntentResponse *)self modifiedTaskList];
  v6 = [v4 modifiedTaskList];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_INPBAddTasksIntentResponse *)self modifiedTaskList];
    if (!v12)
    {

LABEL_15:
      IsEqual = PBRepeatedInt32IsEqual();
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_INPBAddTasksIntentResponse *)self modifiedTaskList];
    v15 = [v4 modifiedTaskList];
    v16 = [v14 isEqual:v15];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBAddTasksIntentResponse allocWithZone:](_INPBAddTasksIntentResponse init];
  v6 = [(NSArray *)self->_addedTasks copyWithZone:a3];
  [(_INPBAddTasksIntentResponse *)v5 setAddedTasks:v6];

  v7 = [(_INPBTaskList *)self->_modifiedTaskList copyWithZone:a3];
  [(_INPBAddTasksIntentResponse *)v5 setModifiedTaskList:v7];

  PBRepeatedInt32Copy();
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBAddTasksIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBAddTasksIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBAddTasksIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)dealloc
{
  [(_INPBAddTasksIntentResponse *)self clearWarnings];
  v3.receiver = self;
  v3.super_class = _INPBAddTasksIntentResponse;
  [(_INPBAddTasksIntentResponse *)&v3 dealloc];
}

- (void)writeTo:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v11 = [(_INPBAddTasksIntentResponse *)self modifiedTaskList];

  if (v11)
  {
    v12 = [(_INPBAddTasksIntentResponse *)self modifiedTaskList];
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

- (int)StringAsWarnings:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"LOCATION_SERVICES_DISABLED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"FLAGGED_NOT_ALLOWED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CONTACT_TRIGGER_NOT_ALLOWED"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"NOT_UPGRADED_TO_CLOUDKIT"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addWarnings:(int)a3
{
  if (a3 != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addAddedTasks:(id)a3
{
  v4 = a3;
  addedTasks = self->_addedTasks;
  v8 = v4;
  if (!addedTasks)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_addedTasks;
    self->_addedTasks = v6;

    v4 = v8;
    addedTasks = self->_addedTasks;
  }

  [(NSArray *)addedTasks addObject:v4];
}

- (void)setAddedTasks:(id)a3
{
  v4 = [a3 mutableCopy];
  addedTasks = self->_addedTasks;
  self->_addedTasks = v4;

  MEMORY[0x1EEE66BB8](v4, addedTasks);
}

@end