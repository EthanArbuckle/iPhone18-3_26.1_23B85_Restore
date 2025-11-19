@interface _INPBMoveFileIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBMoveFileIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsEntityTypes:(id)a3;
- (unint64_t)hash;
- (void)addEntityName:(id)a3;
- (void)addEntityType:(int)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setEntityNames:(id)a3;
- (void)setHasSuccess:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBMoveFileIntentResponse

- (id)dictionaryRepresentation
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBMoveFileIntentResponse *)self destinationName];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"destinationName"];

  if ([(NSArray *)self->_entityNames count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
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

          v12 = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"entityName"];
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

    [v3 setObject:v13 forKeyedSubscript:@"entityType"];
  }

  if ([(_INPBMoveFileIntentResponse *)self hasOverwrite])
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBMoveFileIntentResponse overwrite](self, "overwrite")}];
    [v3 setObject:v17 forKeyedSubscript:@"overwrite"];
  }

  v18 = [(_INPBMoveFileIntentResponse *)self sourceName];
  v19 = [v18 dictionaryRepresentation];
  [v3 setObject:v19 forKeyedSubscript:@"sourceName"];

  if ([(_INPBMoveFileIntentResponse *)self hasSuccess])
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBMoveFileIntentResponse success](self, "success")}];
    [v3 setObject:v20 forKeyedSubscript:@"success"];
  }

  v21 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(_INPBMoveFileIntentResponse *)self destinationName];
  v6 = [v4 destinationName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(_INPBMoveFileIntentResponse *)self destinationName];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBMoveFileIntentResponse *)self destinationName];
    v10 = [v4 destinationName];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBMoveFileIntentResponse *)self entityNames];
  v6 = [v4 entityNames];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(_INPBMoveFileIntentResponse *)self entityNames];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBMoveFileIntentResponse *)self entityNames];
    v15 = [v4 entityNames];
    v16 = [v14 isEqual:v15];

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

  v17 = [(_INPBMoveFileIntentResponse *)self hasOverwrite];
  if (v17 != [v4 hasOverwrite])
  {
    goto LABEL_22;
  }

  if ([(_INPBMoveFileIntentResponse *)self hasOverwrite])
  {
    if ([v4 hasOverwrite])
    {
      overwrite = self->_overwrite;
      if (overwrite != [v4 overwrite])
      {
        goto LABEL_22;
      }
    }
  }

  v5 = [(_INPBMoveFileIntentResponse *)self sourceName];
  v6 = [v4 sourceName];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_21:

    goto LABEL_22;
  }

  v19 = [(_INPBMoveFileIntentResponse *)self sourceName];
  if (v19)
  {
    v20 = v19;
    v21 = [(_INPBMoveFileIntentResponse *)self sourceName];
    v22 = [v4 sourceName];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v26 = [(_INPBMoveFileIntentResponse *)self hasSuccess];
  if (v26 == [v4 hasSuccess])
  {
    if (!-[_INPBMoveFileIntentResponse hasSuccess](self, "hasSuccess") || ![v4 hasSuccess] || (success = self->_success, success == objc_msgSend(v4, "success")))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBMoveFileIntentResponse allocWithZone:](_INPBMoveFileIntentResponse init];
  v6 = [(_INPBString *)self->_destinationName copyWithZone:a3];
  [(_INPBMoveFileIntentResponse *)v5 setDestinationName:v6];

  v7 = [(NSArray *)self->_entityNames copyWithZone:a3];
  [(_INPBMoveFileIntentResponse *)v5 setEntityNames:v7];

  PBRepeatedInt32Copy();
  if ([(_INPBMoveFileIntentResponse *)self hasOverwrite])
  {
    [(_INPBMoveFileIntentResponse *)v5 setOverwrite:[(_INPBMoveFileIntentResponse *)self overwrite]];
  }

  v8 = [(_INPBString *)self->_sourceName copyWithZone:a3];
  [(_INPBMoveFileIntentResponse *)v5 setSourceName:v8];

  if ([(_INPBMoveFileIntentResponse *)self hasSuccess])
  {
    [(_INPBMoveFileIntentResponse *)v5 setSuccess:[(_INPBMoveFileIntentResponse *)self success]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBMoveFileIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBMoveFileIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBMoveFileIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)dealloc
{
  [(_INPBMoveFileIntentResponse *)self clearEntityTypes];
  v3.receiver = self;
  v3.super_class = _INPBMoveFileIntentResponse;
  [(_INPBMoveFileIntentResponse *)&v3 dealloc];
}

- (void)writeTo:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBMoveFileIntentResponse *)self destinationName];

  if (v5)
  {
    v6 = [(_INPBMoveFileIntentResponse *)self destinationName];
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

  v16 = [(_INPBMoveFileIntentResponse *)self sourceName];

  if (v16)
  {
    v17 = [(_INPBMoveFileIntentResponse *)self sourceName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBMoveFileIntentResponse *)self hasSuccess])
  {
    success = self->_success;
    PBDataWriterWriteBOOLField();
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)setHasSuccess:(BOOL)a3
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

- (int)StringAsEntityTypes:(id)a3
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

- (void)addEntityType:(int)a3
{
  if (a3 != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addEntityName:(id)a3
{
  v4 = a3;
  entityNames = self->_entityNames;
  v8 = v4;
  if (!entityNames)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_entityNames;
    self->_entityNames = v6;

    v4 = v8;
    entityNames = self->_entityNames;
  }

  [(NSArray *)entityNames addObject:v4];
}

- (void)setEntityNames:(id)a3
{
  v4 = [a3 mutableCopy];
  entityNames = self->_entityNames;
  self->_entityNames = v4;

  MEMORY[0x1EEE66BB8](v4, entityNames);
}

@end