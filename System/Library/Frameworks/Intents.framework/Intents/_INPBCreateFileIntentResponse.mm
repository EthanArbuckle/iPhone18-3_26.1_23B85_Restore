@interface _INPBCreateFileIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBCreateFileIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsEntityType:(id)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setEntityType:(int)type;
- (void)setHasOverwrite:(BOOL)overwrite;
- (void)setHasSuccess:(BOOL)success;
- (void)writeTo:(id)to;
@end

@implementation _INPBCreateFileIntentResponse

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  destinationName = [(_INPBCreateFileIntentResponse *)self destinationName];
  dictionaryRepresentation = [destinationName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"destinationName"];

  entityName = [(_INPBCreateFileIntentResponse *)self entityName];
  dictionaryRepresentation2 = [entityName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"entityName"];

  if ([(_INPBCreateFileIntentResponse *)self hasEntityType])
  {
    entityType = [(_INPBCreateFileIntentResponse *)self entityType];
    if (entityType >= 4)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", entityType];
    }

    else
    {
      v9 = off_1E7281378[entityType];
    }

    [dictionary setObject:v9 forKeyedSubscript:@"entityType"];
  }

  if ([(_INPBCreateFileIntentResponse *)self hasOverwrite])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBCreateFileIntentResponse overwrite](self, "overwrite")}];
    [dictionary setObject:v10 forKeyedSubscript:@"overwrite"];
  }

  if ([(_INPBCreateFileIntentResponse *)self hasSuccess])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBCreateFileIntentResponse success](self, "success")}];
    [dictionary setObject:v11 forKeyedSubscript:@"success"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBString *)self->_destinationName hash];
  v4 = [(_INPBString *)self->_entityName hash];
  if ([(_INPBCreateFileIntentResponse *)self hasEntityType])
  {
    v5 = 2654435761 * self->_entityType;
  }

  else
  {
    v5 = 0;
  }

  if ([(_INPBCreateFileIntentResponse *)self hasOverwrite])
  {
    v6 = 2654435761 * self->_overwrite;
  }

  else
  {
    v6 = 0;
  }

  if ([(_INPBCreateFileIntentResponse *)self hasSuccess])
  {
    v7 = 2654435761 * self->_success;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  destinationName = [(_INPBCreateFileIntentResponse *)self destinationName];
  destinationName2 = [equalCopy destinationName];
  if ((destinationName != 0) == (destinationName2 == 0))
  {
    goto LABEL_11;
  }

  destinationName3 = [(_INPBCreateFileIntentResponse *)self destinationName];
  if (destinationName3)
  {
    v8 = destinationName3;
    destinationName4 = [(_INPBCreateFileIntentResponse *)self destinationName];
    destinationName5 = [equalCopy destinationName];
    v11 = [destinationName4 isEqual:destinationName5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  destinationName = [(_INPBCreateFileIntentResponse *)self entityName];
  destinationName2 = [equalCopy entityName];
  if ((destinationName != 0) == (destinationName2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  entityName = [(_INPBCreateFileIntentResponse *)self entityName];
  if (entityName)
  {
    v13 = entityName;
    entityName2 = [(_INPBCreateFileIntentResponse *)self entityName];
    entityName3 = [equalCopy entityName];
    v16 = [entityName2 isEqual:entityName3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  hasEntityType = [(_INPBCreateFileIntentResponse *)self hasEntityType];
  if (hasEntityType == [equalCopy hasEntityType])
  {
    if (!-[_INPBCreateFileIntentResponse hasEntityType](self, "hasEntityType") || ![equalCopy hasEntityType] || (entityType = self->_entityType, entityType == objc_msgSend(equalCopy, "entityType")))
    {
      hasOverwrite = [(_INPBCreateFileIntentResponse *)self hasOverwrite];
      if (hasOverwrite == [equalCopy hasOverwrite])
      {
        if (!-[_INPBCreateFileIntentResponse hasOverwrite](self, "hasOverwrite") || ![equalCopy hasOverwrite] || (overwrite = self->_overwrite, overwrite == objc_msgSend(equalCopy, "overwrite")))
        {
          hasSuccess = [(_INPBCreateFileIntentResponse *)self hasSuccess];
          if (hasSuccess == [equalCopy hasSuccess])
          {
            if (!-[_INPBCreateFileIntentResponse hasSuccess](self, "hasSuccess") || ![equalCopy hasSuccess] || (success = self->_success, success == objc_msgSend(equalCopy, "success")))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBCreateFileIntentResponse allocWithZone:](_INPBCreateFileIntentResponse init];
  v6 = [(_INPBString *)self->_destinationName copyWithZone:zone];
  [(_INPBCreateFileIntentResponse *)v5 setDestinationName:v6];

  v7 = [(_INPBString *)self->_entityName copyWithZone:zone];
  [(_INPBCreateFileIntentResponse *)v5 setEntityName:v7];

  if ([(_INPBCreateFileIntentResponse *)self hasEntityType])
  {
    [(_INPBCreateFileIntentResponse *)v5 setEntityType:[(_INPBCreateFileIntentResponse *)self entityType]];
  }

  if ([(_INPBCreateFileIntentResponse *)self hasOverwrite])
  {
    [(_INPBCreateFileIntentResponse *)v5 setOverwrite:[(_INPBCreateFileIntentResponse *)self overwrite]];
  }

  if ([(_INPBCreateFileIntentResponse *)self hasSuccess])
  {
    [(_INPBCreateFileIntentResponse *)v5 setSuccess:[(_INPBCreateFileIntentResponse *)self success]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBCreateFileIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBCreateFileIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBCreateFileIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  destinationName = [(_INPBCreateFileIntentResponse *)self destinationName];

  if (destinationName)
  {
    destinationName2 = [(_INPBCreateFileIntentResponse *)self destinationName];
    PBDataWriterWriteSubmessage();
  }

  entityName = [(_INPBCreateFileIntentResponse *)self entityName];

  if (entityName)
  {
    entityName2 = [(_INPBCreateFileIntentResponse *)self entityName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBCreateFileIntentResponse *)self hasEntityType])
  {
    entityType = self->_entityType;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBCreateFileIntentResponse *)self hasOverwrite])
  {
    overwrite = self->_overwrite;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBCreateFileIntentResponse *)self hasSuccess])
  {
    success = self->_success;
    PBDataWriterWriteBOOLField();
  }
}

- (void)setHasSuccess:(BOOL)success
{
  if (success)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasOverwrite:(BOOL)overwrite
{
  if (overwrite)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsEntityType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"FILE"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"FOLDER"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"REFERENCE"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"URL"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setEntityType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_entityType = type;
  }
}

@end