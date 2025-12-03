@interface _INPBAddTasksIntent
- (BOOL)isEqual:(id)equal;
- (_INPBAddTasksIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsPriority:(id)priority;
- (unint64_t)hash;
- (void)addTargetTaskListMembers:(id)members;
- (void)addTaskTitles:(id)titles;
- (void)encodeWithCoder:(id)coder;
- (void)setHasTaskReference:(BOOL)reference;
- (void)setPriority:(int)priority;
- (void)setTargetTaskListMembers:(id)members;
- (void)setTaskReference:(int)reference;
- (void)setTaskTitles:(id)titles;
- (void)writeTo:(id)to;
@end

@implementation _INPBAddTasksIntent

- (id)dictionaryRepresentation
{
  v46 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  contactEventTrigger = [(_INPBAddTasksIntent *)self contactEventTrigger];
  dictionaryRepresentation = [contactEventTrigger dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"contactEventTrigger"];

  intent = [(_INPBAddTasksIntent *)self intent];
  dictionaryRepresentation2 = [intent dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"intent"];

  intentMetadata = [(_INPBAddTasksIntent *)self intentMetadata];
  dictionaryRepresentation3 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBAddTasksIntent *)self hasPriority])
  {
    priority = [(_INPBAddTasksIntent *)self priority];
    if (priority >= 3)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", priority];
    }

    else
    {
      v11 = off_1E7280FF8[priority];
    }

    [dictionary setObject:v11 forKeyedSubscript:@"priority"];
  }

  spatialEventTrigger = [(_INPBAddTasksIntent *)self spatialEventTrigger];
  dictionaryRepresentation4 = [spatialEventTrigger dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"spatialEventTrigger"];

  targetTaskList = [(_INPBAddTasksIntent *)self targetTaskList];
  dictionaryRepresentation5 = [targetTaskList dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"targetTaskList"];

  if ([(NSArray *)self->_targetTaskListMembers count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation6 = [*(*(&v40 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation6];
        }

        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v19);
    }

    [dictionary setObject:array forKeyedSubscript:@"targetTaskListMembers"];
  }

  if ([(_INPBAddTasksIntent *)self hasTaskReference])
  {
    taskReference = [(_INPBAddTasksIntent *)self taskReference];
    if (taskReference)
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", taskReference];
    }

    else
    {
      v24 = @"CURRENT_ACTIVITY";
    }

    [dictionary setObject:v24 forKeyedSubscript:@"taskReference"];
  }

  if ([(NSArray *)self->_taskTitles count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation7 = [*(*(&v36 + 1) + 8 * j) dictionaryRepresentation];
          [array2 addObject:dictionaryRepresentation7];
        }

        v28 = [(NSArray *)v26 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v28);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"taskTitles"];
  }

  temporalEventTrigger = [(_INPBAddTasksIntent *)self temporalEventTrigger];
  dictionaryRepresentation8 = [temporalEventTrigger dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"temporalEventTrigger"];

  v34 = *MEMORY[0x1E69E9840];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_50;
  }

  contactEventTrigger = [(_INPBAddTasksIntent *)self contactEventTrigger];
  contactEventTrigger2 = [equalCopy contactEventTrigger];
  if ((contactEventTrigger != 0) == (contactEventTrigger2 == 0))
  {
    goto LABEL_49;
  }

  contactEventTrigger3 = [(_INPBAddTasksIntent *)self contactEventTrigger];
  if (contactEventTrigger3)
  {
    v8 = contactEventTrigger3;
    contactEventTrigger4 = [(_INPBAddTasksIntent *)self contactEventTrigger];
    contactEventTrigger5 = [equalCopy contactEventTrigger];
    v11 = [contactEventTrigger4 isEqual:contactEventTrigger5];

    if (!v11)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  contactEventTrigger = [(_INPBAddTasksIntent *)self intent];
  contactEventTrigger2 = [equalCopy intent];
  if ((contactEventTrigger != 0) == (contactEventTrigger2 == 0))
  {
    goto LABEL_49;
  }

  intent = [(_INPBAddTasksIntent *)self intent];
  if (intent)
  {
    v13 = intent;
    intent2 = [(_INPBAddTasksIntent *)self intent];
    intent3 = [equalCopy intent];
    v16 = [intent2 isEqual:intent3];

    if (!v16)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  contactEventTrigger = [(_INPBAddTasksIntent *)self intentMetadata];
  contactEventTrigger2 = [equalCopy intentMetadata];
  if ((contactEventTrigger != 0) == (contactEventTrigger2 == 0))
  {
    goto LABEL_49;
  }

  intentMetadata = [(_INPBAddTasksIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v18 = intentMetadata;
    intentMetadata2 = [(_INPBAddTasksIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v21 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v21)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  hasPriority = [(_INPBAddTasksIntent *)self hasPriority];
  if (hasPriority != [equalCopy hasPriority])
  {
    goto LABEL_50;
  }

  if ([(_INPBAddTasksIntent *)self hasPriority])
  {
    if ([equalCopy hasPriority])
    {
      priority = self->_priority;
      if (priority != [equalCopy priority])
      {
        goto LABEL_50;
      }
    }
  }

  contactEventTrigger = [(_INPBAddTasksIntent *)self spatialEventTrigger];
  contactEventTrigger2 = [equalCopy spatialEventTrigger];
  if ((contactEventTrigger != 0) == (contactEventTrigger2 == 0))
  {
    goto LABEL_49;
  }

  spatialEventTrigger = [(_INPBAddTasksIntent *)self spatialEventTrigger];
  if (spatialEventTrigger)
  {
    v25 = spatialEventTrigger;
    spatialEventTrigger2 = [(_INPBAddTasksIntent *)self spatialEventTrigger];
    spatialEventTrigger3 = [equalCopy spatialEventTrigger];
    v28 = [spatialEventTrigger2 isEqual:spatialEventTrigger3];

    if (!v28)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  contactEventTrigger = [(_INPBAddTasksIntent *)self targetTaskList];
  contactEventTrigger2 = [equalCopy targetTaskList];
  if ((contactEventTrigger != 0) == (contactEventTrigger2 == 0))
  {
    goto LABEL_49;
  }

  targetTaskList = [(_INPBAddTasksIntent *)self targetTaskList];
  if (targetTaskList)
  {
    v30 = targetTaskList;
    targetTaskList2 = [(_INPBAddTasksIntent *)self targetTaskList];
    targetTaskList3 = [equalCopy targetTaskList];
    v33 = [targetTaskList2 isEqual:targetTaskList3];

    if (!v33)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  contactEventTrigger = [(_INPBAddTasksIntent *)self targetTaskListMembers];
  contactEventTrigger2 = [equalCopy targetTaskListMembers];
  if ((contactEventTrigger != 0) == (contactEventTrigger2 == 0))
  {
    goto LABEL_49;
  }

  targetTaskListMembers = [(_INPBAddTasksIntent *)self targetTaskListMembers];
  if (targetTaskListMembers)
  {
    v35 = targetTaskListMembers;
    targetTaskListMembers2 = [(_INPBAddTasksIntent *)self targetTaskListMembers];
    targetTaskListMembers3 = [equalCopy targetTaskListMembers];
    v38 = [targetTaskListMembers2 isEqual:targetTaskListMembers3];

    if (!v38)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  hasTaskReference = [(_INPBAddTasksIntent *)self hasTaskReference];
  if (hasTaskReference != [equalCopy hasTaskReference])
  {
    goto LABEL_50;
  }

  if ([(_INPBAddTasksIntent *)self hasTaskReference])
  {
    if ([equalCopy hasTaskReference])
    {
      taskReference = self->_taskReference;
      if (taskReference != [equalCopy taskReference])
      {
        goto LABEL_50;
      }
    }
  }

  contactEventTrigger = [(_INPBAddTasksIntent *)self taskTitles];
  contactEventTrigger2 = [equalCopy taskTitles];
  if ((contactEventTrigger != 0) == (contactEventTrigger2 == 0))
  {
    goto LABEL_49;
  }

  taskTitles = [(_INPBAddTasksIntent *)self taskTitles];
  if (taskTitles)
  {
    v42 = taskTitles;
    taskTitles2 = [(_INPBAddTasksIntent *)self taskTitles];
    taskTitles3 = [equalCopy taskTitles];
    v45 = [taskTitles2 isEqual:taskTitles3];

    if (!v45)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  contactEventTrigger = [(_INPBAddTasksIntent *)self temporalEventTrigger];
  contactEventTrigger2 = [equalCopy temporalEventTrigger];
  if ((contactEventTrigger != 0) != (contactEventTrigger2 == 0))
  {
    temporalEventTrigger = [(_INPBAddTasksIntent *)self temporalEventTrigger];
    if (!temporalEventTrigger)
    {

LABEL_53:
      v51 = 1;
      goto LABEL_51;
    }

    v47 = temporalEventTrigger;
    temporalEventTrigger2 = [(_INPBAddTasksIntent *)self temporalEventTrigger];
    temporalEventTrigger3 = [equalCopy temporalEventTrigger];
    v50 = [temporalEventTrigger2 isEqual:temporalEventTrigger3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBAddTasksIntent allocWithZone:](_INPBAddTasksIntent init];
  v6 = [(_INPBContactEventTrigger *)self->_contactEventTrigger copyWithZone:zone];
  [(_INPBAddTasksIntent *)v5 setContactEventTrigger:v6];

  v7 = [(_INPBIntent *)self->_intent copyWithZone:zone];
  [(_INPBAddTasksIntent *)v5 setIntent:v7];

  v8 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBAddTasksIntent *)v5 setIntentMetadata:v8];

  if ([(_INPBAddTasksIntent *)self hasPriority])
  {
    [(_INPBAddTasksIntent *)v5 setPriority:[(_INPBAddTasksIntent *)self priority]];
  }

  v9 = [(_INPBSpatialEventTrigger *)self->_spatialEventTrigger copyWithZone:zone];
  [(_INPBAddTasksIntent *)v5 setSpatialEventTrigger:v9];

  v10 = [(_INPBTaskList *)self->_targetTaskList copyWithZone:zone];
  [(_INPBAddTasksIntent *)v5 setTargetTaskList:v10];

  v11 = [(NSArray *)self->_targetTaskListMembers copyWithZone:zone];
  [(_INPBAddTasksIntent *)v5 setTargetTaskListMembers:v11];

  if ([(_INPBAddTasksIntent *)self hasTaskReference])
  {
    [(_INPBAddTasksIntent *)v5 setTaskReference:[(_INPBAddTasksIntent *)self taskReference]];
  }

  v12 = [(NSArray *)self->_taskTitles copyWithZone:zone];
  [(_INPBAddTasksIntent *)v5 setTaskTitles:v12];

  v13 = [(_INPBTemporalEventTrigger *)self->_temporalEventTrigger copyWithZone:zone];
  [(_INPBAddTasksIntent *)v5 setTemporalEventTrigger:v13];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBAddTasksIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBAddTasksIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBAddTasksIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v42 = *MEMORY[0x1E69E9840];
  toCopy = to;
  contactEventTrigger = [(_INPBAddTasksIntent *)self contactEventTrigger];

  if (contactEventTrigger)
  {
    contactEventTrigger2 = [(_INPBAddTasksIntent *)self contactEventTrigger];
    PBDataWriterWriteSubmessage();
  }

  intent = [(_INPBAddTasksIntent *)self intent];

  if (intent)
  {
    intent2 = [(_INPBAddTasksIntent *)self intent];
    PBDataWriterWriteSubmessage();
  }

  intentMetadata = [(_INPBAddTasksIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBAddTasksIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBAddTasksIntent *)self hasPriority])
  {
    priority = self->_priority;
    PBDataWriterWriteInt32Field();
  }

  spatialEventTrigger = [(_INPBAddTasksIntent *)self spatialEventTrigger];

  if (spatialEventTrigger)
  {
    spatialEventTrigger2 = [(_INPBAddTasksIntent *)self spatialEventTrigger];
    PBDataWriterWriteSubmessage();
  }

  targetTaskList = [(_INPBAddTasksIntent *)self targetTaskList];

  if (targetTaskList)
  {
    targetTaskList2 = [(_INPBAddTasksIntent *)self targetTaskList];
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

  temporalEventTrigger = [(_INPBAddTasksIntent *)self temporalEventTrigger];

  if (temporalEventTrigger)
  {
    temporalEventTrigger2 = [(_INPBAddTasksIntent *)self temporalEventTrigger];
    PBDataWriterWriteSubmessage();
  }

  v31 = *MEMORY[0x1E69E9840];
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

- (void)setHasTaskReference:(BOOL)reference
{
  if (reference)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setTaskReference:(int)reference
{
  has = self->_has;
  if (reference == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_taskReference = reference;
  }
}

- (void)addTargetTaskListMembers:(id)members
{
  membersCopy = members;
  targetTaskListMembers = self->_targetTaskListMembers;
  v8 = membersCopy;
  if (!targetTaskListMembers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_targetTaskListMembers;
    self->_targetTaskListMembers = array;

    membersCopy = v8;
    targetTaskListMembers = self->_targetTaskListMembers;
  }

  [(NSArray *)targetTaskListMembers addObject:membersCopy];
}

- (void)setTargetTaskListMembers:(id)members
{
  v4 = [members mutableCopy];
  targetTaskListMembers = self->_targetTaskListMembers;
  self->_targetTaskListMembers = v4;

  MEMORY[0x1EEE66BB8](v4, targetTaskListMembers);
}

- (int)StringAsPriority:(id)priority
{
  priorityCopy = priority;
  if ([priorityCopy isEqualToString:@"UNKNOWN_PRIORITY"])
  {
    v4 = 0;
  }

  else if ([priorityCopy isEqualToString:@"NOT_FLAGGED"])
  {
    v4 = 1;
  }

  else if ([priorityCopy isEqualToString:@"FLAGGED"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setPriority:(int)priority
{
  has = self->_has;
  if (priority == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_priority = priority;
  }
}

@end