@interface _INPBAddTasksIntent
- (BOOL)isEqual:(id)a3;
- (_INPBAddTasksIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsPriority:(id)a3;
- (unint64_t)hash;
- (void)addTargetTaskListMembers:(id)a3;
- (void)addTaskTitles:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setHasTaskReference:(BOOL)a3;
- (void)setPriority:(int)a3;
- (void)setTargetTaskListMembers:(id)a3;
- (void)setTaskReference:(int)a3;
- (void)setTaskTitles:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBAddTasksIntent

- (id)dictionaryRepresentation
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBAddTasksIntent *)self contactEventTrigger];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"contactEventTrigger"];

  v6 = [(_INPBAddTasksIntent *)self intent];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"intent"];

  v8 = [(_INPBAddTasksIntent *)self intentMetadata];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBAddTasksIntent *)self hasPriority])
  {
    v10 = [(_INPBAddTasksIntent *)self priority];
    if (v10 >= 3)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v10];
    }

    else
    {
      v11 = off_1E7280FF8[v10];
    }

    [v3 setObject:v11 forKeyedSubscript:@"priority"];
  }

  v12 = [(_INPBAddTasksIntent *)self spatialEventTrigger];
  v13 = [v12 dictionaryRepresentation];
  [v3 setObject:v13 forKeyedSubscript:@"spatialEventTrigger"];

  v14 = [(_INPBAddTasksIntent *)self targetTaskList];
  v15 = [v14 dictionaryRepresentation];
  [v3 setObject:v15 forKeyedSubscript:@"targetTaskList"];

  if ([(NSArray *)self->_targetTaskListMembers count])
  {
    v16 = [MEMORY[0x1E695DF70] array];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v17 = self->_targetTaskListMembers;
    v18 = [(NSArray *)v17 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v41;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v41 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [*(*(&v40 + 1) + 8 * i) dictionaryRepresentation];
          [v16 addObject:v22];
        }

        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v19);
    }

    [v3 setObject:v16 forKeyedSubscript:@"targetTaskListMembers"];
  }

  if ([(_INPBAddTasksIntent *)self hasTaskReference])
  {
    v23 = [(_INPBAddTasksIntent *)self taskReference];
    if (v23)
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v23];
    }

    else
    {
      v24 = @"CURRENT_ACTIVITY";
    }

    [v3 setObject:v24 forKeyedSubscript:@"taskReference"];
  }

  if ([(NSArray *)self->_taskTitles count])
  {
    v25 = [MEMORY[0x1E695DF70] array];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v26 = self->_taskTitles;
    v27 = [(NSArray *)v26 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v37;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v37 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [*(*(&v36 + 1) + 8 * j) dictionaryRepresentation];
          [v25 addObject:v31];
        }

        v28 = [(NSArray *)v26 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v28);
    }

    [v3 setObject:v25 forKeyedSubscript:@"taskTitles"];
  }

  v32 = [(_INPBAddTasksIntent *)self temporalEventTrigger];
  v33 = [v32 dictionaryRepresentation];
  [v3 setObject:v33 forKeyedSubscript:@"temporalEventTrigger"];

  v34 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBContactEventTrigger *)self->_contactEventTrigger hash];
  v4 = [(_INPBIntent *)self->_intent hash];
  v5 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  if ([(_INPBAddTasksIntent *)self hasPriority])
  {
    v6 = 2654435761 * self->_priority;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(_INPBSpatialEventTrigger *)self->_spatialEventTrigger hash];
  v8 = [(_INPBTaskList *)self->_targetTaskList hash];
  v9 = [(NSArray *)self->_targetTaskListMembers hash];
  if ([(_INPBAddTasksIntent *)self hasTaskReference])
  {
    v10 = 2654435761 * self->_taskReference;
  }

  else
  {
    v10 = 0;
  }

  v11 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  v12 = v10 ^ [(NSArray *)self->_taskTitles hash];
  return v11 ^ v12 ^ [(_INPBTemporalEventTrigger *)self->_temporalEventTrigger hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_50;
  }

  v5 = [(_INPBAddTasksIntent *)self contactEventTrigger];
  v6 = [v4 contactEventTrigger];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_49;
  }

  v7 = [(_INPBAddTasksIntent *)self contactEventTrigger];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBAddTasksIntent *)self contactEventTrigger];
    v10 = [v4 contactEventTrigger];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  v5 = [(_INPBAddTasksIntent *)self intent];
  v6 = [v4 intent];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_49;
  }

  v12 = [(_INPBAddTasksIntent *)self intent];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBAddTasksIntent *)self intent];
    v15 = [v4 intent];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  v5 = [(_INPBAddTasksIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_49;
  }

  v17 = [(_INPBAddTasksIntent *)self intentMetadata];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBAddTasksIntent *)self intentMetadata];
    v20 = [v4 intentMetadata];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  v22 = [(_INPBAddTasksIntent *)self hasPriority];
  if (v22 != [v4 hasPriority])
  {
    goto LABEL_50;
  }

  if ([(_INPBAddTasksIntent *)self hasPriority])
  {
    if ([v4 hasPriority])
    {
      priority = self->_priority;
      if (priority != [v4 priority])
      {
        goto LABEL_50;
      }
    }
  }

  v5 = [(_INPBAddTasksIntent *)self spatialEventTrigger];
  v6 = [v4 spatialEventTrigger];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_49;
  }

  v24 = [(_INPBAddTasksIntent *)self spatialEventTrigger];
  if (v24)
  {
    v25 = v24;
    v26 = [(_INPBAddTasksIntent *)self spatialEventTrigger];
    v27 = [v4 spatialEventTrigger];
    v28 = [v26 isEqual:v27];

    if (!v28)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  v5 = [(_INPBAddTasksIntent *)self targetTaskList];
  v6 = [v4 targetTaskList];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_49;
  }

  v29 = [(_INPBAddTasksIntent *)self targetTaskList];
  if (v29)
  {
    v30 = v29;
    v31 = [(_INPBAddTasksIntent *)self targetTaskList];
    v32 = [v4 targetTaskList];
    v33 = [v31 isEqual:v32];

    if (!v33)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  v5 = [(_INPBAddTasksIntent *)self targetTaskListMembers];
  v6 = [v4 targetTaskListMembers];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_49;
  }

  v34 = [(_INPBAddTasksIntent *)self targetTaskListMembers];
  if (v34)
  {
    v35 = v34;
    v36 = [(_INPBAddTasksIntent *)self targetTaskListMembers];
    v37 = [v4 targetTaskListMembers];
    v38 = [v36 isEqual:v37];

    if (!v38)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  v39 = [(_INPBAddTasksIntent *)self hasTaskReference];
  if (v39 != [v4 hasTaskReference])
  {
    goto LABEL_50;
  }

  if ([(_INPBAddTasksIntent *)self hasTaskReference])
  {
    if ([v4 hasTaskReference])
    {
      taskReference = self->_taskReference;
      if (taskReference != [v4 taskReference])
      {
        goto LABEL_50;
      }
    }
  }

  v5 = [(_INPBAddTasksIntent *)self taskTitles];
  v6 = [v4 taskTitles];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_49;
  }

  v41 = [(_INPBAddTasksIntent *)self taskTitles];
  if (v41)
  {
    v42 = v41;
    v43 = [(_INPBAddTasksIntent *)self taskTitles];
    v44 = [v4 taskTitles];
    v45 = [v43 isEqual:v44];

    if (!v45)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  v5 = [(_INPBAddTasksIntent *)self temporalEventTrigger];
  v6 = [v4 temporalEventTrigger];
  if ((v5 != 0) != (v6 == 0))
  {
    v46 = [(_INPBAddTasksIntent *)self temporalEventTrigger];
    if (!v46)
    {

LABEL_53:
      v51 = 1;
      goto LABEL_51;
    }

    v47 = v46;
    v48 = [(_INPBAddTasksIntent *)self temporalEventTrigger];
    v49 = [v4 temporalEventTrigger];
    v50 = [v48 isEqual:v49];

    if (v50)
    {
      goto LABEL_53;
    }
  }

  else
  {
LABEL_49:
  }

LABEL_50:
  v51 = 0;
LABEL_51:

  return v51;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBAddTasksIntent allocWithZone:](_INPBAddTasksIntent init];
  v6 = [(_INPBContactEventTrigger *)self->_contactEventTrigger copyWithZone:a3];
  [(_INPBAddTasksIntent *)v5 setContactEventTrigger:v6];

  v7 = [(_INPBIntent *)self->_intent copyWithZone:a3];
  [(_INPBAddTasksIntent *)v5 setIntent:v7];

  v8 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBAddTasksIntent *)v5 setIntentMetadata:v8];

  if ([(_INPBAddTasksIntent *)self hasPriority])
  {
    [(_INPBAddTasksIntent *)v5 setPriority:[(_INPBAddTasksIntent *)self priority]];
  }

  v9 = [(_INPBSpatialEventTrigger *)self->_spatialEventTrigger copyWithZone:a3];
  [(_INPBAddTasksIntent *)v5 setSpatialEventTrigger:v9];

  v10 = [(_INPBTaskList *)self->_targetTaskList copyWithZone:a3];
  [(_INPBAddTasksIntent *)v5 setTargetTaskList:v10];

  v11 = [(NSArray *)self->_targetTaskListMembers copyWithZone:a3];
  [(_INPBAddTasksIntent *)v5 setTargetTaskListMembers:v11];

  if ([(_INPBAddTasksIntent *)self hasTaskReference])
  {
    [(_INPBAddTasksIntent *)v5 setTaskReference:[(_INPBAddTasksIntent *)self taskReference]];
  }

  v12 = [(NSArray *)self->_taskTitles copyWithZone:a3];
  [(_INPBAddTasksIntent *)v5 setTaskTitles:v12];

  v13 = [(_INPBTemporalEventTrigger *)self->_temporalEventTrigger copyWithZone:a3];
  [(_INPBAddTasksIntent *)v5 setTemporalEventTrigger:v13];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBAddTasksIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBAddTasksIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBAddTasksIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBAddTasksIntent *)self contactEventTrigger];

  if (v5)
  {
    v6 = [(_INPBAddTasksIntent *)self contactEventTrigger];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_INPBAddTasksIntent *)self intent];

  if (v7)
  {
    v8 = [(_INPBAddTasksIntent *)self intent];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(_INPBAddTasksIntent *)self intentMetadata];

  if (v9)
  {
    v10 = [(_INPBAddTasksIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBAddTasksIntent *)self hasPriority])
  {
    priority = self->_priority;
    PBDataWriterWriteInt32Field();
  }

  v12 = [(_INPBAddTasksIntent *)self spatialEventTrigger];

  if (v12)
  {
    v13 = [(_INPBAddTasksIntent *)self spatialEventTrigger];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(_INPBAddTasksIntent *)self targetTaskList];

  if (v14)
  {
    v15 = [(_INPBAddTasksIntent *)self targetTaskList];
    PBDataWriterWriteSubmessage();
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v16 = self->_targetTaskListMembers;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v37;
    do
    {
      v20 = 0;
      do
      {
        if (*v37 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v36 + 1) + 8 * v20);
        PBDataWriterWriteSubmessage();
        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v18);
  }

  if ([(_INPBAddTasksIntent *)self hasTaskReference])
  {
    taskReference = self->_taskReference;
    PBDataWriterWriteInt32Field();
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v23 = self->_taskTitles;
  v24 = [(NSArray *)v23 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v33;
    do
    {
      v27 = 0;
      do
      {
        if (*v33 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v32 + 1) + 8 * v27);
        PBDataWriterWriteSubmessage();
        ++v27;
      }

      while (v25 != v27);
      v25 = [(NSArray *)v23 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v25);
  }

  v29 = [(_INPBAddTasksIntent *)self temporalEventTrigger];

  if (v29)
  {
    v30 = [(_INPBAddTasksIntent *)self temporalEventTrigger];
    PBDataWriterWriteSubmessage();
  }

  v31 = *MEMORY[0x1E69E9840];
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

- (void)setHasTaskReference:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setTaskReference:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_taskReference = a3;
  }
}

- (void)addTargetTaskListMembers:(id)a3
{
  v4 = a3;
  targetTaskListMembers = self->_targetTaskListMembers;
  v8 = v4;
  if (!targetTaskListMembers)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_targetTaskListMembers;
    self->_targetTaskListMembers = v6;

    v4 = v8;
    targetTaskListMembers = self->_targetTaskListMembers;
  }

  [(NSArray *)targetTaskListMembers addObject:v4];
}

- (void)setTargetTaskListMembers:(id)a3
{
  v4 = [a3 mutableCopy];
  targetTaskListMembers = self->_targetTaskListMembers;
  self->_targetTaskListMembers = v4;

  MEMORY[0x1EEE66BB8](v4, targetTaskListMembers);
}

- (int)StringAsPriority:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_PRIORITY"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"NOT_FLAGGED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"FLAGGED"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setPriority:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_priority = a3;
  }
}

@end