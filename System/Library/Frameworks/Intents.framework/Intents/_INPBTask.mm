@interface _INPBTask
- (BOOL)isEqual:(id)a3;
- (_INPBTask)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsPriority:(id)a3;
- (int)StringAsStatus:(id)a3;
- (int)StringAsTaskType:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setHasStatus:(BOOL)a3;
- (void)setHasTaskReference:(BOOL)a3;
- (void)setHasTaskType:(BOOL)a3;
- (void)setIdentifier:(id)a3;
- (void)setParentIdentifier:(id)a3;
- (void)setPriority:(int)a3;
- (void)setStatus:(int)a3;
- (void)setTaskReference:(int)a3;
- (void)setTaskType:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBTask

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBTask *)self contactEventTrigger];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"contactEventTrigger"];

  v6 = [(_INPBTask *)self createdDateTime];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"createdDateTime"];

  if (self->_identifier)
  {
    v8 = [(_INPBTask *)self identifier];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"identifier"];
  }

  v10 = [(_INPBTask *)self modifiedDateTime];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"modifiedDateTime"];

  if (self->_parentIdentifier)
  {
    v12 = [(_INPBTask *)self parentIdentifier];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"parentIdentifier"];
  }

  if ([(_INPBTask *)self hasPriority])
  {
    v14 = [(_INPBTask *)self priority];
    if (v14 >= 3)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v14];
    }

    else
    {
      v15 = *(&off_1E7283308 + v14);
    }

    [v3 setObject:v15 forKeyedSubscript:@"priority"];
  }

  v16 = [(_INPBTask *)self spatialEventTrigger];
  v17 = [v16 dictionaryRepresentation];
  [v3 setObject:v17 forKeyedSubscript:@"spatialEventTrigger"];

  if ([(_INPBTask *)self hasStatus])
  {
    v18 = [(_INPBTask *)self status];
    if (v18)
    {
      if (v18 == 20)
      {
        v19 = @"COMPLETED";
      }

      else if (v18 == 10)
      {
        v19 = @"NOT_COMPLETED";
      }

      else
      {
        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v18];
      }
    }

    else
    {
      v19 = @"UNKNOWN_STATUS";
    }

    [v3 setObject:v19 forKeyedSubscript:@"status"];
  }

  if ([(_INPBTask *)self hasTaskReference])
  {
    v20 = [(_INPBTask *)self taskReference];
    if (v20)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v20];
    }

    else
    {
      v21 = @"CURRENT_ACTIVITY";
    }

    [v3 setObject:v21 forKeyedSubscript:@"taskReference"];
  }

  if ([(_INPBTask *)self hasTaskType])
  {
    v22 = [(_INPBTask *)self taskType];
    if (v22)
    {
      if (v22 == 20)
      {
        v23 = @"COMPLETABLE";
      }

      else if (v22 == 10)
      {
        v23 = @"NOT_COMPLETABLE";
      }

      else
      {
        v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v22];
      }
    }

    else
    {
      v23 = @"UNKNOWN_TASK_TYPE";
    }

    [v3 setObject:v23 forKeyedSubscript:@"taskType"];
  }

  v24 = [(_INPBTask *)self temporalEventTrigger];
  v25 = [v24 dictionaryRepresentation];
  [v3 setObject:v25 forKeyedSubscript:@"temporalEventTrigger"];

  v26 = [(_INPBTask *)self title];
  v27 = [v26 dictionaryRepresentation];
  [v3 setObject:v27 forKeyedSubscript:@"title"];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_58;
  }

  v5 = [(_INPBTask *)self contactEventTrigger];
  v6 = [v4 contactEventTrigger];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_57;
  }

  v7 = [(_INPBTask *)self contactEventTrigger];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBTask *)self contactEventTrigger];
    v10 = [v4 contactEventTrigger];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v5 = [(_INPBTask *)self createdDateTime];
  v6 = [v4 createdDateTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_57;
  }

  v12 = [(_INPBTask *)self createdDateTime];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBTask *)self createdDateTime];
    v15 = [v4 createdDateTime];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v5 = [(_INPBTask *)self identifier];
  v6 = [v4 identifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_57;
  }

  v17 = [(_INPBTask *)self identifier];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBTask *)self identifier];
    v20 = [v4 identifier];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v5 = [(_INPBTask *)self modifiedDateTime];
  v6 = [v4 modifiedDateTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_57;
  }

  v22 = [(_INPBTask *)self modifiedDateTime];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBTask *)self modifiedDateTime];
    v25 = [v4 modifiedDateTime];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v5 = [(_INPBTask *)self parentIdentifier];
  v6 = [v4 parentIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_57;
  }

  v27 = [(_INPBTask *)self parentIdentifier];
  if (v27)
  {
    v28 = v27;
    v29 = [(_INPBTask *)self parentIdentifier];
    v30 = [v4 parentIdentifier];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v32 = [(_INPBTask *)self hasPriority];
  if (v32 != [v4 hasPriority])
  {
    goto LABEL_58;
  }

  if ([(_INPBTask *)self hasPriority])
  {
    if ([v4 hasPriority])
    {
      priority = self->_priority;
      if (priority != [v4 priority])
      {
        goto LABEL_58;
      }
    }
  }

  v5 = [(_INPBTask *)self spatialEventTrigger];
  v6 = [v4 spatialEventTrigger];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_57;
  }

  v34 = [(_INPBTask *)self spatialEventTrigger];
  if (v34)
  {
    v35 = v34;
    v36 = [(_INPBTask *)self spatialEventTrigger];
    v37 = [v4 spatialEventTrigger];
    v38 = [v36 isEqual:v37];

    if (!v38)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v39 = [(_INPBTask *)self hasStatus];
  if (v39 != [v4 hasStatus])
  {
    goto LABEL_58;
  }

  if ([(_INPBTask *)self hasStatus])
  {
    if ([v4 hasStatus])
    {
      status = self->_status;
      if (status != [v4 status])
      {
        goto LABEL_58;
      }
    }
  }

  v41 = [(_INPBTask *)self hasTaskReference];
  if (v41 != [v4 hasTaskReference])
  {
    goto LABEL_58;
  }

  if ([(_INPBTask *)self hasTaskReference])
  {
    if ([v4 hasTaskReference])
    {
      taskReference = self->_taskReference;
      if (taskReference != [v4 taskReference])
      {
        goto LABEL_58;
      }
    }
  }

  v43 = [(_INPBTask *)self hasTaskType];
  if (v43 != [v4 hasTaskType])
  {
    goto LABEL_58;
  }

  if ([(_INPBTask *)self hasTaskType])
  {
    if ([v4 hasTaskType])
    {
      taskType = self->_taskType;
      if (taskType != [v4 taskType])
      {
        goto LABEL_58;
      }
    }
  }

  v5 = [(_INPBTask *)self temporalEventTrigger];
  v6 = [v4 temporalEventTrigger];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_57;
  }

  v45 = [(_INPBTask *)self temporalEventTrigger];
  if (v45)
  {
    v46 = v45;
    v47 = [(_INPBTask *)self temporalEventTrigger];
    v48 = [v4 temporalEventTrigger];
    v49 = [v47 isEqual:v48];

    if (!v49)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v5 = [(_INPBTask *)self title];
  v6 = [v4 title];
  if ((v5 != 0) != (v6 == 0))
  {
    v50 = [(_INPBTask *)self title];
    if (!v50)
    {

LABEL_61:
      v55 = 1;
      goto LABEL_59;
    }

    v51 = v50;
    v52 = [(_INPBTask *)self title];
    v53 = [v4 title];
    v54 = [v52 isEqual:v53];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBTask allocWithZone:](_INPBTask init];
  v6 = [(_INPBContactEventTrigger *)self->_contactEventTrigger copyWithZone:a3];
  [(_INPBTask *)v5 setContactEventTrigger:v6];

  v7 = [(_INPBDateTime *)self->_createdDateTime copyWithZone:a3];
  [(_INPBTask *)v5 setCreatedDateTime:v7];

  v8 = [(NSString *)self->_identifier copyWithZone:a3];
  [(_INPBTask *)v5 setIdentifier:v8];

  v9 = [(_INPBDateTime *)self->_modifiedDateTime copyWithZone:a3];
  [(_INPBTask *)v5 setModifiedDateTime:v9];

  v10 = [(NSString *)self->_parentIdentifier copyWithZone:a3];
  [(_INPBTask *)v5 setParentIdentifier:v10];

  if ([(_INPBTask *)self hasPriority])
  {
    [(_INPBTask *)v5 setPriority:[(_INPBTask *)self priority]];
  }

  v11 = [(_INPBSpatialEventTrigger *)self->_spatialEventTrigger copyWithZone:a3];
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

  v12 = [(_INPBTemporalEventTrigger *)self->_temporalEventTrigger copyWithZone:a3];
  [(_INPBTask *)v5 setTemporalEventTrigger:v12];

  v13 = [(_INPBDataString *)self->_title copyWithZone:a3];
  [(_INPBTask *)v5 setTitle:v13];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBTask *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBTask)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBTask *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v25 = a3;
  v4 = [(_INPBTask *)self contactEventTrigger];

  if (v4)
  {
    v5 = [(_INPBTask *)self contactEventTrigger];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBTask *)self createdDateTime];

  if (v6)
  {
    v7 = [(_INPBTask *)self createdDateTime];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBTask *)self identifier];

  if (v8)
  {
    identifier = self->_identifier;
    PBDataWriterWriteStringField();
  }

  v10 = [(_INPBTask *)self modifiedDateTime];

  if (v10)
  {
    v11 = [(_INPBTask *)self modifiedDateTime];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(_INPBTask *)self parentIdentifier];

  if (v12)
  {
    parentIdentifier = self->_parentIdentifier;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBTask *)self hasPriority])
  {
    priority = self->_priority;
    PBDataWriterWriteInt32Field();
  }

  v15 = [(_INPBTask *)self spatialEventTrigger];

  if (v15)
  {
    v16 = [(_INPBTask *)self spatialEventTrigger];
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

  v20 = [(_INPBTask *)self temporalEventTrigger];

  if (v20)
  {
    v21 = [(_INPBTask *)self temporalEventTrigger];
    PBDataWriterWriteSubmessage();
  }

  v22 = [(_INPBTask *)self title];

  v23 = v25;
  if (v22)
  {
    v24 = [(_INPBTask *)self title];
    PBDataWriterWriteSubmessage();

    v23 = v25;
  }
}

- (int)StringAsTaskType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_TASK_TYPE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"NOT_COMPLETABLE"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"COMPLETABLE"])
  {
    v4 = 20;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasTaskType:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setTaskType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xF7;
  }

  else
  {
    *&self->_has = has | 8;
    self->_taskType = a3;
  }
}

- (void)setHasTaskReference:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setTaskReference:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFB;
  }

  else
  {
    *&self->_has = has | 4;
    self->_taskReference = a3;
  }
}

- (int)StringAsStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_STATUS"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"NOT_COMPLETED"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"COMPLETED"])
  {
    v4 = 20;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasStatus:(BOOL)a3
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

- (void)setStatus:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_status = a3;
  }
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

- (void)setParentIdentifier:(id)a3
{
  v4 = [a3 copy];
  parentIdentifier = self->_parentIdentifier;
  self->_parentIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, parentIdentifier);
}

- (void)setIdentifier:(id)a3
{
  v4 = [a3 copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8](v4, identifier);
}

@end