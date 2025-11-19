@interface _INPBCopyFileIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBCopyFileIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsEntityType:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setEntityType:(int)a3;
- (void)setHasOverwrite:(BOOL)a3;
- (void)setHasSuccess:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBCopyFileIntentResponse

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBCopyFileIntentResponse *)self destinationName];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"destinationName"];

  v6 = [(_INPBCopyFileIntentResponse *)self entityName];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"entityName"];

  if ([(_INPBCopyFileIntentResponse *)self hasEntityType])
  {
    v8 = [(_INPBCopyFileIntentResponse *)self entityType];
    if (v8 >= 4)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v8];
    }

    else
    {
      v9 = off_1E7280550[v8];
    }

    [v3 setObject:v9 forKeyedSubscript:@"entityType"];
  }

  if ([(_INPBCopyFileIntentResponse *)self hasOverwrite])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBCopyFileIntentResponse overwrite](self, "overwrite")}];
    [v3 setObject:v10 forKeyedSubscript:@"overwrite"];
  }

  if ([(_INPBCopyFileIntentResponse *)self hasSuccess])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBCopyFileIntentResponse success](self, "success")}];
    [v3 setObject:v11 forKeyedSubscript:@"success"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBString *)self->_destinationName hash];
  v4 = [(_INPBString *)self->_entityName hash];
  if ([(_INPBCopyFileIntentResponse *)self hasEntityType])
  {
    v5 = 2654435761 * self->_entityType;
  }

  else
  {
    v5 = 0;
  }

  if ([(_INPBCopyFileIntentResponse *)self hasOverwrite])
  {
    v6 = 2654435761 * self->_overwrite;
  }

  else
  {
    v6 = 0;
  }

  if ([(_INPBCopyFileIntentResponse *)self hasSuccess])
  {
    v7 = 2654435761 * self->_success;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_INPBCopyFileIntentResponse *)self destinationName];
  v6 = [v4 destinationName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_INPBCopyFileIntentResponse *)self destinationName];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBCopyFileIntentResponse *)self destinationName];
    v10 = [v4 destinationName];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_INPBCopyFileIntentResponse *)self entityName];
  v6 = [v4 entityName];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(_INPBCopyFileIntentResponse *)self entityName];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBCopyFileIntentResponse *)self entityName];
    v15 = [v4 entityName];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v19 = [(_INPBCopyFileIntentResponse *)self hasEntityType];
  if (v19 == [v4 hasEntityType])
  {
    if (!-[_INPBCopyFileIntentResponse hasEntityType](self, "hasEntityType") || ![v4 hasEntityType] || (entityType = self->_entityType, entityType == objc_msgSend(v4, "entityType")))
    {
      v21 = [(_INPBCopyFileIntentResponse *)self hasOverwrite];
      if (v21 == [v4 hasOverwrite])
      {
        if (!-[_INPBCopyFileIntentResponse hasOverwrite](self, "hasOverwrite") || ![v4 hasOverwrite] || (overwrite = self->_overwrite, overwrite == objc_msgSend(v4, "overwrite")))
        {
          v23 = [(_INPBCopyFileIntentResponse *)self hasSuccess];
          if (v23 == [v4 hasSuccess])
          {
            if (!-[_INPBCopyFileIntentResponse hasSuccess](self, "hasSuccess") || ![v4 hasSuccess] || (success = self->_success, success == objc_msgSend(v4, "success")))
            {
              v17 = 1;
              goto LABEL_13;
            }
          }
        }
      }
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBCopyFileIntentResponse allocWithZone:](_INPBCopyFileIntentResponse init];
  v6 = [(_INPBString *)self->_destinationName copyWithZone:a3];
  [(_INPBCopyFileIntentResponse *)v5 setDestinationName:v6];

  v7 = [(_INPBString *)self->_entityName copyWithZone:a3];
  [(_INPBCopyFileIntentResponse *)v5 setEntityName:v7];

  if ([(_INPBCopyFileIntentResponse *)self hasEntityType])
  {
    [(_INPBCopyFileIntentResponse *)v5 setEntityType:[(_INPBCopyFileIntentResponse *)self entityType]];
  }

  if ([(_INPBCopyFileIntentResponse *)self hasOverwrite])
  {
    [(_INPBCopyFileIntentResponse *)v5 setOverwrite:[(_INPBCopyFileIntentResponse *)self overwrite]];
  }

  if ([(_INPBCopyFileIntentResponse *)self hasSuccess])
  {
    [(_INPBCopyFileIntentResponse *)v5 setSuccess:[(_INPBCopyFileIntentResponse *)self success]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBCopyFileIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBCopyFileIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBCopyFileIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(_INPBCopyFileIntentResponse *)self destinationName];

  if (v4)
  {
    v5 = [(_INPBCopyFileIntentResponse *)self destinationName];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBCopyFileIntentResponse *)self entityName];

  if (v6)
  {
    v7 = [(_INPBCopyFileIntentResponse *)self entityName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBCopyFileIntentResponse *)self hasEntityType])
  {
    entityType = self->_entityType;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBCopyFileIntentResponse *)self hasOverwrite])
  {
    overwrite = self->_overwrite;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBCopyFileIntentResponse *)self hasSuccess])
  {
    success = self->_success;
    PBDataWriterWriteBOOLField();
  }
}

- (void)setHasSuccess:(BOOL)a3
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

- (void)setHasOverwrite:(BOOL)a3
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

- (int)StringAsEntityType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"FILE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"FOLDER"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"REFERENCE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"URL"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setEntityType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_entityType = a3;
  }
}

@end