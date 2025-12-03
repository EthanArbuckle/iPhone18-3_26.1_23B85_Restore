@interface _INPBSetTaskAttributeIntent
- (BOOL)isEqual:(id)equal;
- (_INPBSetTaskAttributeIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsPriority:(id)priority;
- (int)StringAsStatus:(id)status;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setHasStatus:(BOOL)status;
- (void)setPriority:(int)priority;
- (void)setStatus:(int)status;
- (void)writeTo:(id)to;
@end

@implementation _INPBSetTaskAttributeIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  contactEventTrigger = [(_INPBSetTaskAttributeIntent *)self contactEventTrigger];
  dictionaryRepresentation = [contactEventTrigger dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"contactEventTrigger"];

  intentMetadata = [(_INPBSetTaskAttributeIntent *)self intentMetadata];
  dictionaryRepresentation2 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBSetTaskAttributeIntent *)self hasPriority])
  {
    priority = [(_INPBSetTaskAttributeIntent *)self priority];
    if (priority >= 3)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", priority];
    }

    else
    {
      v9 = off_1E727D7D8[priority];
    }

    [dictionary setObject:v9 forKeyedSubscript:@"priority"];
  }

  spatialEventTrigger = [(_INPBSetTaskAttributeIntent *)self spatialEventTrigger];
  dictionaryRepresentation3 = [spatialEventTrigger dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"spatialEventTrigger"];

  if ([(_INPBSetTaskAttributeIntent *)self hasStatus])
  {
    status = [(_INPBSetTaskAttributeIntent *)self status];
    if (status)
    {
      if (status == 20)
      {
        v13 = @"COMPLETED";
      }

      else if (status == 10)
      {
        v13 = @"NOT_COMPLETED";
      }

      else
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", status];
      }
    }

    else
    {
      v13 = @"UNKNOWN_STATUS";
    }

    [dictionary setObject:v13 forKeyedSubscript:@"status"];
  }

  targetTask = [(_INPBSetTaskAttributeIntent *)self targetTask];
  dictionaryRepresentation4 = [targetTask dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"targetTask"];

  taskTitle = [(_INPBSetTaskAttributeIntent *)self taskTitle];
  dictionaryRepresentation5 = [taskTitle dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"taskTitle"];

  temporalEventTrigger = [(_INPBSetTaskAttributeIntent *)self temporalEventTrigger];
  dictionaryRepresentation6 = [temporalEventTrigger dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"temporalEventTrigger"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBContactEventTrigger *)self->_contactEventTrigger hash];
  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  if ([(_INPBSetTaskAttributeIntent *)self hasPriority])
  {
    v5 = 2654435761 * self->_priority;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(_INPBSpatialEventTrigger *)self->_spatialEventTrigger hash];
  if ([(_INPBSetTaskAttributeIntent *)self hasStatus])
  {
    v7 = 2654435761 * self->_status;
  }

  else
  {
    v7 = 0;
  }

  v8 = v4 ^ v3 ^ v5 ^ v6;
  v9 = v7 ^ [(_INPBTask *)self->_targetTask hash];
  v10 = v8 ^ v9 ^ [(_INPBDataString *)self->_taskTitle hash];
  return v10 ^ [(_INPBTemporalEventTrigger *)self->_temporalEventTrigger hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_40;
  }

  contactEventTrigger = [(_INPBSetTaskAttributeIntent *)self contactEventTrigger];
  contactEventTrigger2 = [equalCopy contactEventTrigger];
  if ((contactEventTrigger != 0) == (contactEventTrigger2 == 0))
  {
    goto LABEL_39;
  }

  contactEventTrigger3 = [(_INPBSetTaskAttributeIntent *)self contactEventTrigger];
  if (contactEventTrigger3)
  {
    v8 = contactEventTrigger3;
    contactEventTrigger4 = [(_INPBSetTaskAttributeIntent *)self contactEventTrigger];
    contactEventTrigger5 = [equalCopy contactEventTrigger];
    v11 = [contactEventTrigger4 isEqual:contactEventTrigger5];

    if (!v11)
    {
      goto LABEL_40;
    }
  }

  else
  {
  }

  contactEventTrigger = [(_INPBSetTaskAttributeIntent *)self intentMetadata];
  contactEventTrigger2 = [equalCopy intentMetadata];
  if ((contactEventTrigger != 0) == (contactEventTrigger2 == 0))
  {
    goto LABEL_39;
  }

  intentMetadata = [(_INPBSetTaskAttributeIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v13 = intentMetadata;
    intentMetadata2 = [(_INPBSetTaskAttributeIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v16 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v16)
    {
      goto LABEL_40;
    }
  }

  else
  {
  }

  hasPriority = [(_INPBSetTaskAttributeIntent *)self hasPriority];
  if (hasPriority != [equalCopy hasPriority])
  {
    goto LABEL_40;
  }

  if ([(_INPBSetTaskAttributeIntent *)self hasPriority])
  {
    if ([equalCopy hasPriority])
    {
      priority = self->_priority;
      if (priority != [equalCopy priority])
      {
        goto LABEL_40;
      }
    }
  }

  contactEventTrigger = [(_INPBSetTaskAttributeIntent *)self spatialEventTrigger];
  contactEventTrigger2 = [equalCopy spatialEventTrigger];
  if ((contactEventTrigger != 0) == (contactEventTrigger2 == 0))
  {
    goto LABEL_39;
  }

  spatialEventTrigger = [(_INPBSetTaskAttributeIntent *)self spatialEventTrigger];
  if (spatialEventTrigger)
  {
    v20 = spatialEventTrigger;
    spatialEventTrigger2 = [(_INPBSetTaskAttributeIntent *)self spatialEventTrigger];
    spatialEventTrigger3 = [equalCopy spatialEventTrigger];
    v23 = [spatialEventTrigger2 isEqual:spatialEventTrigger3];

    if (!v23)
    {
      goto LABEL_40;
    }
  }

  else
  {
  }

  hasStatus = [(_INPBSetTaskAttributeIntent *)self hasStatus];
  if (hasStatus != [equalCopy hasStatus])
  {
    goto LABEL_40;
  }

  if ([(_INPBSetTaskAttributeIntent *)self hasStatus])
  {
    if ([equalCopy hasStatus])
    {
      status = self->_status;
      if (status != [equalCopy status])
      {
        goto LABEL_40;
      }
    }
  }

  contactEventTrigger = [(_INPBSetTaskAttributeIntent *)self targetTask];
  contactEventTrigger2 = [equalCopy targetTask];
  if ((contactEventTrigger != 0) == (contactEventTrigger2 == 0))
  {
    goto LABEL_39;
  }

  targetTask = [(_INPBSetTaskAttributeIntent *)self targetTask];
  if (targetTask)
  {
    v27 = targetTask;
    targetTask2 = [(_INPBSetTaskAttributeIntent *)self targetTask];
    targetTask3 = [equalCopy targetTask];
    v30 = [targetTask2 isEqual:targetTask3];

    if (!v30)
    {
      goto LABEL_40;
    }
  }

  else
  {
  }

  contactEventTrigger = [(_INPBSetTaskAttributeIntent *)self taskTitle];
  contactEventTrigger2 = [equalCopy taskTitle];
  if ((contactEventTrigger != 0) == (contactEventTrigger2 == 0))
  {
    goto LABEL_39;
  }

  taskTitle = [(_INPBSetTaskAttributeIntent *)self taskTitle];
  if (taskTitle)
  {
    v32 = taskTitle;
    taskTitle2 = [(_INPBSetTaskAttributeIntent *)self taskTitle];
    taskTitle3 = [equalCopy taskTitle];
    v35 = [taskTitle2 isEqual:taskTitle3];

    if (!v35)
    {
      goto LABEL_40;
    }
  }

  else
  {
  }

  contactEventTrigger = [(_INPBSetTaskAttributeIntent *)self temporalEventTrigger];
  contactEventTrigger2 = [equalCopy temporalEventTrigger];
  if ((contactEventTrigger != 0) != (contactEventTrigger2 == 0))
  {
    temporalEventTrigger = [(_INPBSetTaskAttributeIntent *)self temporalEventTrigger];
    if (!temporalEventTrigger)
    {

LABEL_43:
      v41 = 1;
      goto LABEL_41;
    }

    v37 = temporalEventTrigger;
    temporalEventTrigger2 = [(_INPBSetTaskAttributeIntent *)self temporalEventTrigger];
    temporalEventTrigger3 = [equalCopy temporalEventTrigger];
    v40 = [temporalEventTrigger2 isEqual:temporalEventTrigger3];

    if (v40)
    {
      goto LABEL_43;
    }
  }

  else
  {
LABEL_39:
  }

LABEL_40:
  v41 = 0;
LABEL_41:

  return v41;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSetTaskAttributeIntent allocWithZone:](_INPBSetTaskAttributeIntent init];
  v6 = [(_INPBContactEventTrigger *)self->_contactEventTrigger copyWithZone:zone];
  [(_INPBSetTaskAttributeIntent *)v5 setContactEventTrigger:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBSetTaskAttributeIntent *)v5 setIntentMetadata:v7];

  if ([(_INPBSetTaskAttributeIntent *)self hasPriority])
  {
    [(_INPBSetTaskAttributeIntent *)v5 setPriority:[(_INPBSetTaskAttributeIntent *)self priority]];
  }

  v8 = [(_INPBSpatialEventTrigger *)self->_spatialEventTrigger copyWithZone:zone];
  [(_INPBSetTaskAttributeIntent *)v5 setSpatialEventTrigger:v8];

  if ([(_INPBSetTaskAttributeIntent *)self hasStatus])
  {
    [(_INPBSetTaskAttributeIntent *)v5 setStatus:[(_INPBSetTaskAttributeIntent *)self status]];
  }

  v9 = [(_INPBTask *)self->_targetTask copyWithZone:zone];
  [(_INPBSetTaskAttributeIntent *)v5 setTargetTask:v9];

  v10 = [(_INPBDataString *)self->_taskTitle copyWithZone:zone];
  [(_INPBSetTaskAttributeIntent *)v5 setTaskTitle:v10];

  v11 = [(_INPBTemporalEventTrigger *)self->_temporalEventTrigger copyWithZone:zone];
  [(_INPBSetTaskAttributeIntent *)v5 setTemporalEventTrigger:v11];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSetTaskAttributeIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSetTaskAttributeIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSetTaskAttributeIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  contactEventTrigger = [(_INPBSetTaskAttributeIntent *)self contactEventTrigger];

  if (contactEventTrigger)
  {
    contactEventTrigger2 = [(_INPBSetTaskAttributeIntent *)self contactEventTrigger];
    PBDataWriterWriteSubmessage();
  }

  intentMetadata = [(_INPBSetTaskAttributeIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBSetTaskAttributeIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSetTaskAttributeIntent *)self hasPriority])
  {
    priority = self->_priority;
    PBDataWriterWriteInt32Field();
  }

  spatialEventTrigger = [(_INPBSetTaskAttributeIntent *)self spatialEventTrigger];

  if (spatialEventTrigger)
  {
    spatialEventTrigger2 = [(_INPBSetTaskAttributeIntent *)self spatialEventTrigger];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSetTaskAttributeIntent *)self hasStatus])
  {
    status = self->_status;
    PBDataWriterWriteInt32Field();
  }

  targetTask = [(_INPBSetTaskAttributeIntent *)self targetTask];

  if (targetTask)
  {
    targetTask2 = [(_INPBSetTaskAttributeIntent *)self targetTask];
    PBDataWriterWriteSubmessage();
  }

  taskTitle = [(_INPBSetTaskAttributeIntent *)self taskTitle];

  if (taskTitle)
  {
    taskTitle2 = [(_INPBSetTaskAttributeIntent *)self taskTitle];
    PBDataWriterWriteSubmessage();
  }

  temporalEventTrigger = [(_INPBSetTaskAttributeIntent *)self temporalEventTrigger];

  v17 = toCopy;
  if (temporalEventTrigger)
  {
    temporalEventTrigger2 = [(_INPBSetTaskAttributeIntent *)self temporalEventTrigger];
    PBDataWriterWriteSubmessage();

    v17 = toCopy;
  }
}

- (int)StringAsStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"UNKNOWN_STATUS"])
  {
    v4 = 0;
  }

  else if ([statusCopy isEqualToString:@"NOT_COMPLETED"])
  {
    v4 = 10;
  }

  else if ([statusCopy isEqualToString:@"COMPLETED"])
  {
    v4 = 20;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasStatus:(BOOL)status
{
  if (status)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setStatus:(int)status
{
  has = self->_has;
  if (status == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_status = status;
  }
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