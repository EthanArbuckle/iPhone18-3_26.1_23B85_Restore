@interface _INPBTask
- (BOOL)isEqual:(id)equal;
- (_INPBTask)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsPriority:(id)priority;
- (int)StringAsStatus:(id)status;
- (int)StringAsTaskType:(id)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setHasStatus:(BOOL)status;
- (void)setHasTaskReference:(BOOL)reference;
- (void)setHasTaskType:(BOOL)type;
- (void)setIdentifier:(id)identifier;
- (void)setParentIdentifier:(id)identifier;
- (void)setPriority:(int)priority;
- (void)setStatus:(int)status;
- (void)setTaskReference:(int)reference;
- (void)setTaskType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBTask

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  contactEventTrigger = [(_INPBTask *)self contactEventTrigger];
  dictionaryRepresentation = [contactEventTrigger dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"contactEventTrigger"];

  createdDateTime = [(_INPBTask *)self createdDateTime];
  dictionaryRepresentation2 = [createdDateTime dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"createdDateTime"];

  if (self->_identifier)
  {
    identifier = [(_INPBTask *)self identifier];
    v9 = [identifier copy];
    [dictionary setObject:v9 forKeyedSubscript:@"identifier"];
  }

  modifiedDateTime = [(_INPBTask *)self modifiedDateTime];
  dictionaryRepresentation3 = [modifiedDateTime dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"modifiedDateTime"];

  if (self->_parentIdentifier)
  {
    parentIdentifier = [(_INPBTask *)self parentIdentifier];
    v13 = [parentIdentifier copy];
    [dictionary setObject:v13 forKeyedSubscript:@"parentIdentifier"];
  }

  if ([(_INPBTask *)self hasPriority])
  {
    priority = [(_INPBTask *)self priority];
    if (priority >= 3)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", priority];
    }

    else
    {
      v15 = *(&off_1E7283308 + priority);
    }

    [dictionary setObject:v15 forKeyedSubscript:@"priority"];
  }

  spatialEventTrigger = [(_INPBTask *)self spatialEventTrigger];
  dictionaryRepresentation4 = [spatialEventTrigger dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"spatialEventTrigger"];

  if ([(_INPBTask *)self hasStatus])
  {
    status = [(_INPBTask *)self status];
    if (status)
    {
      if (status == 20)
      {
        v19 = @"COMPLETED";
      }

      else if (status == 10)
      {
        v19 = @"NOT_COMPLETED";
      }

      else
      {
        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", status];
      }
    }

    else
    {
      v19 = @"UNKNOWN_STATUS";
    }

    [dictionary setObject:v19 forKeyedSubscript:@"status"];
  }

  if ([(_INPBTask *)self hasTaskReference])
  {
    taskReference = [(_INPBTask *)self taskReference];
    if (taskReference)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", taskReference];
    }

    else
    {
      v21 = @"CURRENT_ACTIVITY";
    }

    [dictionary setObject:v21 forKeyedSubscript:@"taskReference"];
  }

  if ([(_INPBTask *)self hasTaskType])
  {
    taskType = [(_INPBTask *)self taskType];
    if (taskType)
    {
      if (taskType == 20)
      {
        v23 = @"COMPLETABLE";
      }

      else if (taskType == 10)
      {
        v23 = @"NOT_COMPLETABLE";
      }

      else
      {
        v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", taskType];
      }
    }

    else
    {
      v23 = @"UNKNOWN_TASK_TYPE";
    }

    [dictionary setObject:v23 forKeyedSubscript:@"taskType"];
  }

  temporalEventTrigger = [(_INPBTask *)self temporalEventTrigger];
  dictionaryRepresentation5 = [temporalEventTrigger dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"temporalEventTrigger"];

  title = [(_INPBTask *)self title];
  dictionaryRepresentation6 = [title dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"title"];

  return dictionary;
}

- (unint64_t)hash
{
  v15 = [(_INPBContactEventTrigger *)self->_contactEventTrigger hash];
  v3 = [(_INPBDateTime *)self->_createdDateTime hash];
  v4 = [(NSString *)self->_identifier hash];
  v5 = [(_INPBDateTime *)self->_modifiedDateTime hash];
  v6 = [(NSString *)self->_parentIdentifier hash];
  if ([(_INPBTask *)self hasPriority])
  {
    v7 = 2654435761 * self->_priority;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(_INPBSpatialEventTrigger *)self->_spatialEventTrigger hash];
  if ([(_INPBTask *)self hasStatus])
  {
    v9 = 2654435761 * self->_status;
  }

  else
  {
    v9 = 0;
  }

  if ([(_INPBTask *)self hasTaskReference])
  {
    v10 = 2654435761 * self->_taskReference;
  }

  else
  {
    v10 = 0;
  }

  if ([(_INPBTask *)self hasTaskType])
  {
    v11 = 2654435761 * self->_taskType;
  }

  else
  {
    v11 = 0;
  }

  v12 = v3 ^ v15 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
  v13 = v9 ^ v10 ^ v11 ^ [(_INPBTemporalEventTrigger *)self->_temporalEventTrigger hash];
  return v12 ^ v13 ^ [(_INPBDataString *)self->_title hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_58;
  }

  contactEventTrigger = [(_INPBTask *)self contactEventTrigger];
  contactEventTrigger2 = [equalCopy contactEventTrigger];
  if ((contactEventTrigger != 0) == (contactEventTrigger2 == 0))
  {
    goto LABEL_57;
  }

  contactEventTrigger3 = [(_INPBTask *)self contactEventTrigger];
  if (contactEventTrigger3)
  {
    v8 = contactEventTrigger3;
    contactEventTrigger4 = [(_INPBTask *)self contactEventTrigger];
    contactEventTrigger5 = [equalCopy contactEventTrigger];
    v11 = [contactEventTrigger4 isEqual:contactEventTrigger5];

    if (!v11)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  contactEventTrigger = [(_INPBTask *)self createdDateTime];
  contactEventTrigger2 = [equalCopy createdDateTime];
  if ((contactEventTrigger != 0) == (contactEventTrigger2 == 0))
  {
    goto LABEL_57;
  }

  createdDateTime = [(_INPBTask *)self createdDateTime];
  if (createdDateTime)
  {
    v13 = createdDateTime;
    createdDateTime2 = [(_INPBTask *)self createdDateTime];
    createdDateTime3 = [equalCopy createdDateTime];
    v16 = [createdDateTime2 isEqual:createdDateTime3];

    if (!v16)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  contactEventTrigger = [(_INPBTask *)self identifier];
  contactEventTrigger2 = [equalCopy identifier];
  if ((contactEventTrigger != 0) == (contactEventTrigger2 == 0))
  {
    goto LABEL_57;
  }

  identifier = [(_INPBTask *)self identifier];
  if (identifier)
  {
    v18 = identifier;
    identifier2 = [(_INPBTask *)self identifier];
    identifier3 = [equalCopy identifier];
    v21 = [identifier2 isEqual:identifier3];

    if (!v21)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  contactEventTrigger = [(_INPBTask *)self modifiedDateTime];
  contactEventTrigger2 = [equalCopy modifiedDateTime];
  if ((contactEventTrigger != 0) == (contactEventTrigger2 == 0))
  {
    goto LABEL_57;
  }

  modifiedDateTime = [(_INPBTask *)self modifiedDateTime];
  if (modifiedDateTime)
  {
    v23 = modifiedDateTime;
    modifiedDateTime2 = [(_INPBTask *)self modifiedDateTime];
    modifiedDateTime3 = [equalCopy modifiedDateTime];
    v26 = [modifiedDateTime2 isEqual:modifiedDateTime3];

    if (!v26)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  contactEventTrigger = [(_INPBTask *)self parentIdentifier];
  contactEventTrigger2 = [equalCopy parentIdentifier];
  if ((contactEventTrigger != 0) == (contactEventTrigger2 == 0))
  {
    goto LABEL_57;
  }

  parentIdentifier = [(_INPBTask *)self parentIdentifier];
  if (parentIdentifier)
  {
    v28 = parentIdentifier;
    parentIdentifier2 = [(_INPBTask *)self parentIdentifier];
    parentIdentifier3 = [equalCopy parentIdentifier];
    v31 = [parentIdentifier2 isEqual:parentIdentifier3];

    if (!v31)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  hasPriority = [(_INPBTask *)self hasPriority];
  if (hasPriority != [equalCopy hasPriority])
  {
    goto LABEL_58;
  }

  if ([(_INPBTask *)self hasPriority])
  {
    if ([equalCopy hasPriority])
    {
      priority = self->_priority;
      if (priority != [equalCopy priority])
      {
        goto LABEL_58;
      }
    }
  }

  contactEventTrigger = [(_INPBTask *)self spatialEventTrigger];
  contactEventTrigger2 = [equalCopy spatialEventTrigger];
  if ((contactEventTrigger != 0) == (contactEventTrigger2 == 0))
  {
    goto LABEL_57;
  }

  spatialEventTrigger = [(_INPBTask *)self spatialEventTrigger];
  if (spatialEventTrigger)
  {
    v35 = spatialEventTrigger;
    spatialEventTrigger2 = [(_INPBTask *)self spatialEventTrigger];
    spatialEventTrigger3 = [equalCopy spatialEventTrigger];
    v38 = [spatialEventTrigger2 isEqual:spatialEventTrigger3];

    if (!v38)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  hasStatus = [(_INPBTask *)self hasStatus];
  if (hasStatus != [equalCopy hasStatus])
  {
    goto LABEL_58;
  }

  if ([(_INPBTask *)self hasStatus])
  {
    if ([equalCopy hasStatus])
    {
      status = self->_status;
      if (status != [equalCopy status])
      {
        goto LABEL_58;
      }
    }
  }

  hasTaskReference = [(_INPBTask *)self hasTaskReference];
  if (hasTaskReference != [equalCopy hasTaskReference])
  {
    goto LABEL_58;
  }

  if ([(_INPBTask *)self hasTaskReference])
  {
    if ([equalCopy hasTaskReference])
    {
      taskReference = self->_taskReference;
      if (taskReference != [equalCopy taskReference])
      {
        goto LABEL_58;
      }
    }
  }

  hasTaskType = [(_INPBTask *)self hasTaskType];
  if (hasTaskType != [equalCopy hasTaskType])
  {
    goto LABEL_58;
  }

  if ([(_INPBTask *)self hasTaskType])
  {
    if ([equalCopy hasTaskType])
    {
      taskType = self->_taskType;
      if (taskType != [equalCopy taskType])
      {
        goto LABEL_58;
      }
    }
  }

  contactEventTrigger = [(_INPBTask *)self temporalEventTrigger];
  contactEventTrigger2 = [equalCopy temporalEventTrigger];
  if ((contactEventTrigger != 0) == (contactEventTrigger2 == 0))
  {
    goto LABEL_57;
  }

  temporalEventTrigger = [(_INPBTask *)self temporalEventTrigger];
  if (temporalEventTrigger)
  {
    v46 = temporalEventTrigger;
    temporalEventTrigger2 = [(_INPBTask *)self temporalEventTrigger];
    temporalEventTrigger3 = [equalCopy temporalEventTrigger];
    v49 = [temporalEventTrigger2 isEqual:temporalEventTrigger3];

    if (!v49)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  contactEventTrigger = [(_INPBTask *)self title];
  contactEventTrigger2 = [equalCopy title];
  if ((contactEventTrigger != 0) != (contactEventTrigger2 == 0))
  {
    title = [(_INPBTask *)self title];
    if (!title)
    {

LABEL_61:
      v55 = 1;
      goto LABEL_59;
    }

    v51 = title;
    title2 = [(_INPBTask *)self title];
    title3 = [equalCopy title];
    v54 = [title2 isEqual:title3];

    if (v54)
    {
      goto LABEL_61;
    }
  }

  else
  {
LABEL_57:
  }

LABEL_58:
  v55 = 0;
LABEL_59:

  return v55;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBTask allocWithZone:](_INPBTask init];
  v6 = [(_INPBContactEventTrigger *)self->_contactEventTrigger copyWithZone:zone];
  [(_INPBTask *)v5 setContactEventTrigger:v6];

  v7 = [(_INPBDateTime *)self->_createdDateTime copyWithZone:zone];
  [(_INPBTask *)v5 setCreatedDateTime:v7];

  v8 = [(NSString *)self->_identifier copyWithZone:zone];
  [(_INPBTask *)v5 setIdentifier:v8];

  v9 = [(_INPBDateTime *)self->_modifiedDateTime copyWithZone:zone];
  [(_INPBTask *)v5 setModifiedDateTime:v9];

  v10 = [(NSString *)self->_parentIdentifier copyWithZone:zone];
  [(_INPBTask *)v5 setParentIdentifier:v10];

  if ([(_INPBTask *)self hasPriority])
  {
    [(_INPBTask *)v5 setPriority:[(_INPBTask *)self priority]];
  }

  v11 = [(_INPBSpatialEventTrigger *)self->_spatialEventTrigger copyWithZone:zone];
  [(_INPBTask *)v5 setSpatialEventTrigger:v11];

  if ([(_INPBTask *)self hasStatus])
  {
    [(_INPBTask *)v5 setStatus:[(_INPBTask *)self status]];
  }

  if ([(_INPBTask *)self hasTaskReference])
  {
    [(_INPBTask *)v5 setTaskReference:[(_INPBTask *)self taskReference]];
  }

  if ([(_INPBTask *)self hasTaskType])
  {
    [(_INPBTask *)v5 setTaskType:[(_INPBTask *)self taskType]];
  }

  v12 = [(_INPBTemporalEventTrigger *)self->_temporalEventTrigger copyWithZone:zone];
  [(_INPBTask *)v5 setTemporalEventTrigger:v12];

  v13 = [(_INPBDataString *)self->_title copyWithZone:zone];
  [(_INPBTask *)v5 setTitle:v13];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBTask *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBTask *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  contactEventTrigger = [(_INPBTask *)self contactEventTrigger];

  if (contactEventTrigger)
  {
    contactEventTrigger2 = [(_INPBTask *)self contactEventTrigger];
    PBDataWriterWriteSubmessage();
  }

  createdDateTime = [(_INPBTask *)self createdDateTime];

  if (createdDateTime)
  {
    createdDateTime2 = [(_INPBTask *)self createdDateTime];
    PBDataWriterWriteSubmessage();
  }

  identifier = [(_INPBTask *)self identifier];

  if (identifier)
  {
    identifier = self->_identifier;
    PBDataWriterWriteStringField();
  }

  modifiedDateTime = [(_INPBTask *)self modifiedDateTime];

  if (modifiedDateTime)
  {
    modifiedDateTime2 = [(_INPBTask *)self modifiedDateTime];
    PBDataWriterWriteSubmessage();
  }

  parentIdentifier = [(_INPBTask *)self parentIdentifier];

  if (parentIdentifier)
  {
    parentIdentifier = self->_parentIdentifier;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBTask *)self hasPriority])
  {
    priority = self->_priority;
    PBDataWriterWriteInt32Field();
  }

  spatialEventTrigger = [(_INPBTask *)self spatialEventTrigger];

  if (spatialEventTrigger)
  {
    spatialEventTrigger2 = [(_INPBTask *)self spatialEventTrigger];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBTask *)self hasStatus])
  {
    status = self->_status;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBTask *)self hasTaskReference])
  {
    taskReference = self->_taskReference;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBTask *)self hasTaskType])
  {
    taskType = self->_taskType;
    PBDataWriterWriteInt32Field();
  }

  temporalEventTrigger = [(_INPBTask *)self temporalEventTrigger];

  if (temporalEventTrigger)
  {
    temporalEventTrigger2 = [(_INPBTask *)self temporalEventTrigger];
    PBDataWriterWriteSubmessage();
  }

  title = [(_INPBTask *)self title];

  v23 = toCopy;
  if (title)
  {
    title2 = [(_INPBTask *)self title];
    PBDataWriterWriteSubmessage();

    v23 = toCopy;
  }
}

- (int)StringAsTaskType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN_TASK_TYPE"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"NOT_COMPLETABLE"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"COMPLETABLE"])
  {
    v4 = 20;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasTaskType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setTaskType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xF7;
  }

  else
  {
    *&self->_has = has | 8;
    self->_taskType = type;
  }
}

- (void)setHasTaskReference:(BOOL)reference
{
  if (reference)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setTaskReference:(int)reference
{
  has = self->_has;
  if (reference == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFB;
  }

  else
  {
    *&self->_has = has | 4;
    self->_taskReference = reference;
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

- (void)setParentIdentifier:(id)identifier
{
  v4 = [identifier copy];
  parentIdentifier = self->_parentIdentifier;
  self->_parentIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, parentIdentifier);
}

- (void)setIdentifier:(id)identifier
{
  v4 = [identifier copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8](v4, identifier);
}

@end