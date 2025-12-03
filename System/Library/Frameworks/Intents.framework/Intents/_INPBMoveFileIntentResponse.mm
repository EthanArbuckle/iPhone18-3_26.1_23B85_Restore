@interface _INPBMoveFileIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBMoveFileIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsEntityTypes:(id)types;
- (unint64_t)hash;
- (void)addEntityName:(id)name;
- (void)addEntityType:(int)type;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setEntityNames:(id)names;
- (void)setHasSuccess:(BOOL)success;
- (void)writeTo:(id)to;
@end

@implementation _INPBMoveFileIntentResponse

- (id)dictionaryRepresentation
{
  v28 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  destinationName = [(_INPBMoveFileIntentResponse *)self destinationName];
  dictionaryRepresentation = [destinationName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"destinationName"];

  if ([(NSArray *)self->_entityNames count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = self->_entityNames;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation2 = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation2];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"entityName"];
  }

  if (self->_entityTypes.count)
  {
    v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[_INPBMoveFileIntentResponse entityTypesCount](self, "entityTypesCount")}];
    if ([(_INPBMoveFileIntentResponse *)self entityTypesCount])
    {
      v14 = 0;
      do
      {
        v15 = self->_entityTypes.list[v14];
        if (v15 >= 4)
        {
          v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_entityTypes.list[v14]];
        }

        else
        {
          v16 = off_1E7282878[v15];
        }

        [v13 addObject:v16];

        ++v14;
      }

      while (v14 < [(_INPBMoveFileIntentResponse *)self entityTypesCount]);
    }

    [dictionary setObject:v13 forKeyedSubscript:@"entityType"];
  }

  if ([(_INPBMoveFileIntentResponse *)self hasOverwrite])
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBMoveFileIntentResponse overwrite](self, "overwrite")}];
    [dictionary setObject:v17 forKeyedSubscript:@"overwrite"];
  }

  sourceName = [(_INPBMoveFileIntentResponse *)self sourceName];
  dictionaryRepresentation3 = [sourceName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"sourceName"];

  if ([(_INPBMoveFileIntentResponse *)self hasSuccess])
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBMoveFileIntentResponse success](self, "success")}];
    [dictionary setObject:v20 forKeyedSubscript:@"success"];
  }

  v21 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBString *)self->_destinationName hash];
  v4 = [(NSArray *)self->_entityNames hash];
  v5 = PBRepeatedInt32Hash();
  if ([(_INPBMoveFileIntentResponse *)self hasOverwrite])
  {
    v6 = 2654435761 * self->_overwrite;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(_INPBString *)self->_sourceName hash];
  if ([(_INPBMoveFileIntentResponse *)self hasSuccess])
  {
    v8 = 2654435761 * self->_success;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  destinationName = [(_INPBMoveFileIntentResponse *)self destinationName];
  destinationName2 = [equalCopy destinationName];
  if ((destinationName != 0) == (destinationName2 == 0))
  {
    goto LABEL_21;
  }

  destinationName3 = [(_INPBMoveFileIntentResponse *)self destinationName];
  if (destinationName3)
  {
    v8 = destinationName3;
    destinationName4 = [(_INPBMoveFileIntentResponse *)self destinationName];
    destinationName5 = [equalCopy destinationName];
    v11 = [destinationName4 isEqual:destinationName5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  destinationName = [(_INPBMoveFileIntentResponse *)self entityNames];
  destinationName2 = [equalCopy entityNames];
  if ((destinationName != 0) == (destinationName2 == 0))
  {
    goto LABEL_21;
  }

  entityNames = [(_INPBMoveFileIntentResponse *)self entityNames];
  if (entityNames)
  {
    v13 = entityNames;
    entityNames2 = [(_INPBMoveFileIntentResponse *)self entityNames];
    entityNames3 = [equalCopy entityNames];
    v16 = [entityNames2 isEqual:entityNames3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_22;
  }

  hasOverwrite = [(_INPBMoveFileIntentResponse *)self hasOverwrite];
  if (hasOverwrite != [equalCopy hasOverwrite])
  {
    goto LABEL_22;
  }

  if ([(_INPBMoveFileIntentResponse *)self hasOverwrite])
  {
    if ([equalCopy hasOverwrite])
    {
      overwrite = self->_overwrite;
      if (overwrite != [equalCopy overwrite])
      {
        goto LABEL_22;
      }
    }
  }

  destinationName = [(_INPBMoveFileIntentResponse *)self sourceName];
  destinationName2 = [equalCopy sourceName];
  if ((destinationName != 0) == (destinationName2 == 0))
  {
LABEL_21:

    goto LABEL_22;
  }

  sourceName = [(_INPBMoveFileIntentResponse *)self sourceName];
  if (sourceName)
  {
    v20 = sourceName;
    sourceName2 = [(_INPBMoveFileIntentResponse *)self sourceName];
    sourceName3 = [equalCopy sourceName];
    v23 = [sourceName2 isEqual:sourceName3];

    if (!v23)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  hasSuccess = [(_INPBMoveFileIntentResponse *)self hasSuccess];
  if (hasSuccess == [equalCopy hasSuccess])
  {
    if (!-[_INPBMoveFileIntentResponse hasSuccess](self, "hasSuccess") || ![equalCopy hasSuccess] || (success = self->_success, success == objc_msgSend(equalCopy, "success")))
    {
      v24 = 1;
      goto LABEL_23;
    }
  }

LABEL_22:
  v24 = 0;
LABEL_23:

  return v24;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBMoveFileIntentResponse allocWithZone:](_INPBMoveFileIntentResponse init];
  v6 = [(_INPBString *)self->_destinationName copyWithZone:zone];
  [(_INPBMoveFileIntentResponse *)v5 setDestinationName:v6];

  v7 = [(NSArray *)self->_entityNames copyWithZone:zone];
  [(_INPBMoveFileIntentResponse *)v5 setEntityNames:v7];

  PBRepeatedInt32Copy();
  if ([(_INPBMoveFileIntentResponse *)self hasOverwrite])
  {
    [(_INPBMoveFileIntentResponse *)v5 setOverwrite:[(_INPBMoveFileIntentResponse *)self overwrite]];
  }

  v8 = [(_INPBString *)self->_sourceName copyWithZone:zone];
  [(_INPBMoveFileIntentResponse *)v5 setSourceName:v8];

  if ([(_INPBMoveFileIntentResponse *)self hasSuccess])
  {
    [(_INPBMoveFileIntentResponse *)v5 setSuccess:[(_INPBMoveFileIntentResponse *)self success]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBMoveFileIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBMoveFileIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBMoveFileIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)dealloc
{
  [(_INPBMoveFileIntentResponse *)self clearEntityTypes];
  v3.receiver = self;
  v3.super_class = _INPBMoveFileIntentResponse;
  [(_INPBMoveFileIntentResponse *)&v3 dealloc];
}

- (void)writeTo:(id)to
{
  v25 = *MEMORY[0x1E69E9840];
  toCopy = to;
  destinationName = [(_INPBMoveFileIntentResponse *)self destinationName];

  if (destinationName)
  {
    destinationName2 = [(_INPBMoveFileIntentResponse *)self destinationName];
    PBDataWriterWriteSubmessage();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = self->_entityNames;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  if (self->_entityTypes.count)
  {
    v13 = 0;
    do
    {
      v14 = self->_entityTypes.list[v13];
      PBDataWriterWriteInt32Field();
      ++v13;
    }

    while (v13 < self->_entityTypes.count);
  }

  if ([(_INPBMoveFileIntentResponse *)self hasOverwrite])
  {
    overwrite = self->_overwrite;
    PBDataWriterWriteBOOLField();
  }

  sourceName = [(_INPBMoveFileIntentResponse *)self sourceName];

  if (sourceName)
  {
    sourceName2 = [(_INPBMoveFileIntentResponse *)self sourceName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBMoveFileIntentResponse *)self hasSuccess])
  {
    success = self->_success;
    PBDataWriterWriteBOOLField();
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)setHasSuccess:(BOOL)success
{
  if (success)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsEntityTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy isEqualToString:@"FILE"])
  {
    v4 = 0;
  }

  else if ([typesCopy isEqualToString:@"FOLDER"])
  {
    v4 = 1;
  }

  else if ([typesCopy isEqualToString:@"REFERENCE"])
  {
    v4 = 2;
  }

  else if ([typesCopy isEqualToString:@"URL"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addEntityType:(int)type
{
  if (type != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addEntityName:(id)name
{
  nameCopy = name;
  entityNames = self->_entityNames;
  v8 = nameCopy;
  if (!entityNames)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_entityNames;
    self->_entityNames = array;

    nameCopy = v8;
    entityNames = self->_entityNames;
  }

  [(NSArray *)entityNames addObject:nameCopy];
}

- (void)setEntityNames:(id)names
{
  v4 = [names mutableCopy];
  entityNames = self->_entityNames;
  self->_entityNames = v4;

  MEMORY[0x1EEE66BB8](v4, entityNames);
}

@end