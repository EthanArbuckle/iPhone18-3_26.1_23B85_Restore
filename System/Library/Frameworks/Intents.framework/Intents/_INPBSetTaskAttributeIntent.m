@interface _INPBSetTaskAttributeIntent
- (BOOL)isEqual:(id)a3;
- (_INPBSetTaskAttributeIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsPriority:(id)a3;
- (int)StringAsStatus:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setHasStatus:(BOOL)a3;
- (void)setPriority:(int)a3;
- (void)setStatus:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSetTaskAttributeIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBSetTaskAttributeIntent *)self contactEventTrigger];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"contactEventTrigger"];

  v6 = [(_INPBSetTaskAttributeIntent *)self intentMetadata];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBSetTaskAttributeIntent *)self hasPriority])
  {
    v8 = [(_INPBSetTaskAttributeIntent *)self priority];
    if (v8 >= 3)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v8];
    }

    else
    {
      v9 = off_1E727D7D8[v8];
    }

    [v3 setObject:v9 forKeyedSubscript:@"priority"];
  }

  v10 = [(_INPBSetTaskAttributeIntent *)self spatialEventTrigger];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"spatialEventTrigger"];

  if ([(_INPBSetTaskAttributeIntent *)self hasStatus])
  {
    v12 = [(_INPBSetTaskAttributeIntent *)self status];
    if (v12)
    {
      if (v12 == 20)
      {
        v13 = @"COMPLETED";
      }

      else if (v12 == 10)
      {
        v13 = @"NOT_COMPLETED";
      }

      else
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v12];
      }
    }

    else
    {
      v13 = @"UNKNOWN_STATUS";
    }

    [v3 setObject:v13 forKeyedSubscript:@"status"];
  }

  v14 = [(_INPBSetTaskAttributeIntent *)self targetTask];
  v15 = [v14 dictionaryRepresentation];
  [v3 setObject:v15 forKeyedSubscript:@"targetTask"];

  v16 = [(_INPBSetTaskAttributeIntent *)self taskTitle];
  v17 = [v16 dictionaryRepresentation];
  [v3 setObject:v17 forKeyedSubscript:@"taskTitle"];

  v18 = [(_INPBSetTaskAttributeIntent *)self temporalEventTrigger];
  v19 = [v18 dictionaryRepresentation];
  [v3 setObject:v19 forKeyedSubscript:@"temporalEventTrigger"];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_40;
  }

  v5 = [(_INPBSetTaskAttributeIntent *)self contactEventTrigger];
  v6 = [v4 contactEventTrigger];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_39;
  }

  v7 = [(_INPBSetTaskAttributeIntent *)self contactEventTrigger];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBSetTaskAttributeIntent *)self contactEventTrigger];
    v10 = [v4 contactEventTrigger];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_40;
    }
  }

  else
  {
  }

  v5 = [(_INPBSetTaskAttributeIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_39;
  }

  v12 = [(_INPBSetTaskAttributeIntent *)self intentMetadata];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBSetTaskAttributeIntent *)self intentMetadata];
    v15 = [v4 intentMetadata];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_40;
    }
  }

  else
  {
  }

  v17 = [(_INPBSetTaskAttributeIntent *)self hasPriority];
  if (v17 != [v4 hasPriority])
  {
    goto LABEL_40;
  }

  if ([(_INPBSetTaskAttributeIntent *)self hasPriority])
  {
    if ([v4 hasPriority])
    {
      priority = self->_priority;
      if (priority != [v4 priority])
      {
        goto LABEL_40;
      }
    }
  }

  v5 = [(_INPBSetTaskAttributeIntent *)self spatialEventTrigger];
  v6 = [v4 spatialEventTrigger];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_39;
  }

  v19 = [(_INPBSetTaskAttributeIntent *)self spatialEventTrigger];
  if (v19)
  {
    v20 = v19;
    v21 = [(_INPBSetTaskAttributeIntent *)self spatialEventTrigger];
    v22 = [v4 spatialEventTrigger];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_40;
    }
  }

  else
  {
  }

  v24 = [(_INPBSetTaskAttributeIntent *)self hasStatus];
  if (v24 != [v4 hasStatus])
  {
    goto LABEL_40;
  }

  if ([(_INPBSetTaskAttributeIntent *)self hasStatus])
  {
    if ([v4 hasStatus])
    {
      status = self->_status;
      if (status != [v4 status])
      {
        goto LABEL_40;
      }
    }
  }

  v5 = [(_INPBSetTaskAttributeIntent *)self targetTask];
  v6 = [v4 targetTask];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_39;
  }

  v26 = [(_INPBSetTaskAttributeIntent *)self targetTask];
  if (v26)
  {
    v27 = v26;
    v28 = [(_INPBSetTaskAttributeIntent *)self targetTask];
    v29 = [v4 targetTask];
    v30 = [v28 isEqual:v29];

    if (!v30)
    {
      goto LABEL_40;
    }
  }

  else
  {
  }

  v5 = [(_INPBSetTaskAttributeIntent *)self taskTitle];
  v6 = [v4 taskTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_39;
  }

  v31 = [(_INPBSetTaskAttributeIntent *)self taskTitle];
  if (v31)
  {
    v32 = v31;
    v33 = [(_INPBSetTaskAttributeIntent *)self taskTitle];
    v34 = [v4 taskTitle];
    v35 = [v33 isEqual:v34];

    if (!v35)
    {
      goto LABEL_40;
    }
  }

  else
  {
  }

  v5 = [(_INPBSetTaskAttributeIntent *)self temporalEventTrigger];
  v6 = [v4 temporalEventTrigger];
  if ((v5 != 0) != (v6 == 0))
  {
    v36 = [(_INPBSetTaskAttributeIntent *)self temporalEventTrigger];
    if (!v36)
    {

LABEL_43:
      v41 = 1;
      goto LABEL_41;
    }

    v37 = v36;
    v38 = [(_INPBSetTaskAttributeIntent *)self temporalEventTrigger];
    v39 = [v4 temporalEventTrigger];
    v40 = [v38 isEqual:v39];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSetTaskAttributeIntent allocWithZone:](_INPBSetTaskAttributeIntent init];
  v6 = [(_INPBContactEventTrigger *)self->_contactEventTrigger copyWithZone:a3];
  [(_INPBSetTaskAttributeIntent *)v5 setContactEventTrigger:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBSetTaskAttributeIntent *)v5 setIntentMetadata:v7];

  if ([(_INPBSetTaskAttributeIntent *)self hasPriority])
  {
    [(_INPBSetTaskAttributeIntent *)v5 setPriority:[(_INPBSetTaskAttributeIntent *)self priority]];
  }

  v8 = [(_INPBSpatialEventTrigger *)self->_spatialEventTrigger copyWithZone:a3];
  [(_INPBSetTaskAttributeIntent *)v5 setSpatialEventTrigger:v8];

  if ([(_INPBSetTaskAttributeIntent *)self hasStatus])
  {
    [(_INPBSetTaskAttributeIntent *)v5 setStatus:[(_INPBSetTaskAttributeIntent *)self status]];
  }

  v9 = [(_INPBTask *)self->_targetTask copyWithZone:a3];
  [(_INPBSetTaskAttributeIntent *)v5 setTargetTask:v9];

  v10 = [(_INPBDataString *)self->_taskTitle copyWithZone:a3];
  [(_INPBSetTaskAttributeIntent *)v5 setTaskTitle:v10];

  v11 = [(_INPBTemporalEventTrigger *)self->_temporalEventTrigger copyWithZone:a3];
  [(_INPBSetTaskAttributeIntent *)v5 setTemporalEventTrigger:v11];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSetTaskAttributeIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSetTaskAttributeIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSetTaskAttributeIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v19 = a3;
  v4 = [(_INPBSetTaskAttributeIntent *)self contactEventTrigger];

  if (v4)
  {
    v5 = [(_INPBSetTaskAttributeIntent *)self contactEventTrigger];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBSetTaskAttributeIntent *)self intentMetadata];

  if (v6)
  {
    v7 = [(_INPBSetTaskAttributeIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSetTaskAttributeIntent *)self hasPriority])
  {
    priority = self->_priority;
    PBDataWriterWriteInt32Field();
  }

  v9 = [(_INPBSetTaskAttributeIntent *)self spatialEventTrigger];

  if (v9)
  {
    v10 = [(_INPBSetTaskAttributeIntent *)self spatialEventTrigger];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSetTaskAttributeIntent *)self hasStatus])
  {
    status = self->_status;
    PBDataWriterWriteInt32Field();
  }

  v12 = [(_INPBSetTaskAttributeIntent *)self targetTask];

  if (v12)
  {
    v13 = [(_INPBSetTaskAttributeIntent *)self targetTask];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(_INPBSetTaskAttributeIntent *)self taskTitle];

  if (v14)
  {
    v15 = [(_INPBSetTaskAttributeIntent *)self taskTitle];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(_INPBSetTaskAttributeIntent *)self temporalEventTrigger];

  v17 = v19;
  if (v16)
  {
    v18 = [(_INPBSetTaskAttributeIntent *)self temporalEventTrigger];
    PBDataWriterWriteSubmessage();

    v17 = v19;
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

@end