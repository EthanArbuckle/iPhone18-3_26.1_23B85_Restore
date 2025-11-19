@interface _INPBMoveFileIntent
- (BOOL)isEqual:(id)a3;
- (_INPBMoveFileIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsDestinationType:(id)a3;
- (int)StringAsEntityTypes:(id)a3;
- (int)StringAsSourceType:(id)a3;
- (unint64_t)hash;
- (void)addEntityName:(id)a3;
- (void)addEntityType:(int)a3;
- (void)addProperties:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setDestinationType:(int)a3;
- (void)setEntityNames:(id)a3;
- (void)setHasSourceType:(BOOL)a3;
- (void)setProperties:(id)a3;
- (void)setSourceType:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBMoveFileIntent

- (id)dictionaryRepresentation
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBMoveFileIntent *)self destinationName];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"destinationName"];

  if ([(_INPBMoveFileIntent *)self hasDestinationType])
  {
    v6 = [(_INPBMoveFileIntent *)self destinationType];
    if (v6 >= 4)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v7 = off_1E727FDB0[v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"destinationType"];
  }

  if ([(NSArray *)self->_entityNames count])
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v9 = self->_entityNames;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v39;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v39 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v38 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKeyedSubscript:@"entityName"];
  }

  if (self->_entityTypes.count)
  {
    v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[_INPBMoveFileIntent entityTypesCount](self, "entityTypesCount")}];
    if ([(_INPBMoveFileIntent *)self entityTypesCount])
    {
      v16 = 0;
      do
      {
        v17 = self->_entityTypes.list[v16];
        if (v17 >= 4)
        {
          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_entityTypes.list[v16]];
        }

        else
        {
          v18 = off_1E727FDB0[v17];
        }

        [v15 addObject:v18];

        ++v16;
      }

      while (v16 < [(_INPBMoveFileIntent *)self entityTypesCount]);
    }

    [v3 setObject:v15 forKeyedSubscript:@"entityType"];
  }

  v19 = [(_INPBMoveFileIntent *)self intentMetadata];
  v20 = [v19 dictionaryRepresentation];
  [v3 setObject:v20 forKeyedSubscript:@"intentMetadata"];

  if ([(NSArray *)self->_properties count])
  {
    v21 = [MEMORY[0x1E695DF70] array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v22 = self->_properties;
    v23 = [(NSArray *)v22 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v35;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v35 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [*(*(&v34 + 1) + 8 * j) dictionaryRepresentation];
          [v21 addObject:v27];
        }

        v24 = [(NSArray *)v22 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v24);
    }

    [v3 setObject:v21 forKeyedSubscript:@"properties"];
  }

  v28 = [(_INPBMoveFileIntent *)self sourceName];
  v29 = [v28 dictionaryRepresentation];
  [v3 setObject:v29 forKeyedSubscript:@"sourceName"];

  if ([(_INPBMoveFileIntent *)self hasSourceType])
  {
    v30 = [(_INPBMoveFileIntent *)self sourceType];
    if (v30 >= 4)
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v30];
    }

    else
    {
      v31 = off_1E727FDB0[v30];
    }

    [v3 setObject:v31 forKeyedSubscript:@"sourceType"];
  }

  v32 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBString *)self->_destinationName hash];
  if ([(_INPBMoveFileIntent *)self hasDestinationType])
  {
    v4 = 2654435761 * self->_destinationType;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSArray *)self->_entityNames hash];
  v6 = PBRepeatedInt32Hash();
  v7 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v8 = [(NSArray *)self->_properties hash];
  v9 = [(_INPBString *)self->_sourceName hash];
  if ([(_INPBMoveFileIntent *)self hasSourceType])
  {
    v10 = 2654435761 * self->_sourceType;
  }

  else
  {
    v10 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  v5 = [(_INPBMoveFileIntent *)self destinationName];
  v6 = [v4 destinationName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v7 = [(_INPBMoveFileIntent *)self destinationName];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBMoveFileIntent *)self destinationName];
    v10 = [v4 destinationName];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v12 = [(_INPBMoveFileIntent *)self hasDestinationType];
  if (v12 != [v4 hasDestinationType])
  {
    goto LABEL_32;
  }

  if ([(_INPBMoveFileIntent *)self hasDestinationType])
  {
    if ([v4 hasDestinationType])
    {
      destinationType = self->_destinationType;
      if (destinationType != [v4 destinationType])
      {
        goto LABEL_32;
      }
    }
  }

  v5 = [(_INPBMoveFileIntent *)self entityNames];
  v6 = [v4 entityNames];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v14 = [(_INPBMoveFileIntent *)self entityNames];
  if (v14)
  {
    v15 = v14;
    v16 = [(_INPBMoveFileIntent *)self entityNames];
    v17 = [v4 entityNames];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_32;
  }

  v5 = [(_INPBMoveFileIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v19 = [(_INPBMoveFileIntent *)self intentMetadata];
  if (v19)
  {
    v20 = v19;
    v21 = [(_INPBMoveFileIntent *)self intentMetadata];
    v22 = [v4 intentMetadata];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBMoveFileIntent *)self properties];
  v6 = [v4 properties];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v24 = [(_INPBMoveFileIntent *)self properties];
  if (v24)
  {
    v25 = v24;
    v26 = [(_INPBMoveFileIntent *)self properties];
    v27 = [v4 properties];
    v28 = [v26 isEqual:v27];

    if (!v28)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBMoveFileIntent *)self sourceName];
  v6 = [v4 sourceName];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_31:

    goto LABEL_32;
  }

  v29 = [(_INPBMoveFileIntent *)self sourceName];
  if (v29)
  {
    v30 = v29;
    v31 = [(_INPBMoveFileIntent *)self sourceName];
    v32 = [v4 sourceName];
    v33 = [v31 isEqual:v32];

    if (!v33)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v36 = [(_INPBMoveFileIntent *)self hasSourceType];
  if (v36 == [v4 hasSourceType])
  {
    if (!-[_INPBMoveFileIntent hasSourceType](self, "hasSourceType") || ![v4 hasSourceType] || (sourceType = self->_sourceType, sourceType == objc_msgSend(v4, "sourceType")))
    {
      v34 = 1;
      goto LABEL_33;
    }
  }

LABEL_32:
  v34 = 0;
LABEL_33:

  return v34;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBMoveFileIntent allocWithZone:](_INPBMoveFileIntent init];
  v6 = [(_INPBString *)self->_destinationName copyWithZone:a3];
  [(_INPBMoveFileIntent *)v5 setDestinationName:v6];

  if ([(_INPBMoveFileIntent *)self hasDestinationType])
  {
    [(_INPBMoveFileIntent *)v5 setDestinationType:[(_INPBMoveFileIntent *)self destinationType]];
  }

  v7 = [(NSArray *)self->_entityNames copyWithZone:a3];
  [(_INPBMoveFileIntent *)v5 setEntityNames:v7];

  PBRepeatedInt32Copy();
  v8 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBMoveFileIntent *)v5 setIntentMetadata:v8];

  v9 = [(NSArray *)self->_properties copyWithZone:a3];
  [(_INPBMoveFileIntent *)v5 setProperties:v9];

  v10 = [(_INPBString *)self->_sourceName copyWithZone:a3];
  [(_INPBMoveFileIntent *)v5 setSourceName:v10];

  if ([(_INPBMoveFileIntent *)self hasSourceType])
  {
    [(_INPBMoveFileIntent *)v5 setSourceType:[(_INPBMoveFileIntent *)self sourceType]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBMoveFileIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBMoveFileIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBMoveFileIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)dealloc
{
  [(_INPBMoveFileIntent *)self clearEntityTypes];
  v3.receiver = self;
  v3.super_class = _INPBMoveFileIntent;
  [(_INPBMoveFileIntent *)&v3 dealloc];
}

- (void)writeTo:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBMoveFileIntent *)self destinationName];

  if (v5)
  {
    v6 = [(_INPBMoveFileIntent *)self destinationName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBMoveFileIntent *)self hasDestinationType])
  {
    destinationType = self->_destinationType;
    PBDataWriterWriteInt32Field();
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = self->_entityNames;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v33;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v32 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v10);
  }

  if (self->_entityTypes.count)
  {
    v14 = 0;
    do
    {
      v15 = self->_entityTypes.list[v14];
      PBDataWriterWriteInt32Field();
      ++v14;
    }

    while (v14 < self->_entityTypes.count);
  }

  v16 = [(_INPBMoveFileIntent *)self intentMetadata];

  if (v16)
  {
    v17 = [(_INPBMoveFileIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = self->_properties;
  v19 = [(NSArray *)v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v29;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v28 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v20 = [(NSArray *)v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v20);
  }

  v24 = [(_INPBMoveFileIntent *)self sourceName];

  if (v24)
  {
    v25 = [(_INPBMoveFileIntent *)self sourceName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBMoveFileIntent *)self hasSourceType])
  {
    sourceType = self->_sourceType;
    PBDataWriterWriteInt32Field();
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (int)StringAsSourceType:(id)a3
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

- (void)setHasSourceType:(BOOL)a3
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

- (void)setSourceType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_sourceType = a3;
  }
}

- (void)addProperties:(id)a3
{
  v4 = a3;
  properties = self->_properties;
  v8 = v4;
  if (!properties)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_properties;
    self->_properties = v6;

    v4 = v8;
    properties = self->_properties;
  }

  [(NSArray *)properties addObject:v4];
}

- (void)setProperties:(id)a3
{
  v4 = [a3 mutableCopy];
  properties = self->_properties;
  self->_properties = v4;

  MEMORY[0x1EEE66BB8](v4, properties);
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

- (int)StringAsDestinationType:(id)a3
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

- (void)setDestinationType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_destinationType = a3;
  }
}

@end