@interface _INPBCopyFileIntent
- (BOOL)isEqual:(id)a3;
- (_INPBCopyFileIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsDestinationType:(id)a3;
- (int)StringAsEntityType:(id)a3;
- (int)StringAsSourceType:(id)a3;
- (unint64_t)hash;
- (void)addProperties:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setDestinationType:(int)a3;
- (void)setEntityType:(int)a3;
- (void)setHasEntityType:(BOOL)a3;
- (void)setHasSourceType:(BOOL)a3;
- (void)setProperties:(id)a3;
- (void)setSourceType:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBCopyFileIntent

- (id)dictionaryRepresentation
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBCopyFileIntent *)self destinationName];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"destinationName"];

  if ([(_INPBCopyFileIntent *)self hasDestinationType])
  {
    v6 = [(_INPBCopyFileIntent *)self destinationType];
    if (v6 >= 4)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v7 = off_1E72829B8[v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"destinationType"];
  }

  v8 = [(_INPBCopyFileIntent *)self entityName];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"entityName"];

  if ([(_INPBCopyFileIntent *)self hasEntityType])
  {
    v10 = [(_INPBCopyFileIntent *)self entityType];
    if (v10 >= 4)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v10];
    }

    else
    {
      v11 = off_1E72829B8[v10];
    }

    [v3 setObject:v11 forKeyedSubscript:@"entityType"];
  }

  v12 = [(_INPBCopyFileIntent *)self intentMetadata];
  v13 = [v12 dictionaryRepresentation];
  [v3 setObject:v13 forKeyedSubscript:@"intentMetadata"];

  if ([(NSArray *)self->_properties count])
  {
    v14 = [MEMORY[0x1E695DF70] array];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v15 = self->_properties;
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v28;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v27 + 1) + 8 * i) dictionaryRepresentation];
          [v14 addObject:v20];
        }

        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v17);
    }

    [v3 setObject:v14 forKeyedSubscript:@"properties"];
  }

  v21 = [(_INPBCopyFileIntent *)self sourceName];
  v22 = [v21 dictionaryRepresentation];
  [v3 setObject:v22 forKeyedSubscript:@"sourceName"];

  if ([(_INPBCopyFileIntent *)self hasSourceType])
  {
    v23 = [(_INPBCopyFileIntent *)self sourceType];
    if (v23 >= 4)
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v23];
    }

    else
    {
      v24 = off_1E72829B8[v23];
    }

    [v3 setObject:v24 forKeyedSubscript:@"sourceType"];
  }

  v25 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBString *)self->_destinationName hash];
  if ([(_INPBCopyFileIntent *)self hasDestinationType])
  {
    v4 = 2654435761 * self->_destinationType;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(_INPBString *)self->_entityName hash];
  if ([(_INPBCopyFileIntent *)self hasEntityType])
  {
    v6 = 2654435761 * self->_entityType;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v8 = [(NSArray *)self->_properties hash];
  v9 = [(_INPBString *)self->_sourceName hash];
  if ([(_INPBCopyFileIntent *)self hasSourceType])
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
    goto LABEL_35;
  }

  v5 = [(_INPBCopyFileIntent *)self destinationName];
  v6 = [v4 destinationName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_34;
  }

  v7 = [(_INPBCopyFileIntent *)self destinationName];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBCopyFileIntent *)self destinationName];
    v10 = [v4 destinationName];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v12 = [(_INPBCopyFileIntent *)self hasDestinationType];
  if (v12 != [v4 hasDestinationType])
  {
    goto LABEL_35;
  }

  if ([(_INPBCopyFileIntent *)self hasDestinationType])
  {
    if ([v4 hasDestinationType])
    {
      destinationType = self->_destinationType;
      if (destinationType != [v4 destinationType])
      {
        goto LABEL_35;
      }
    }
  }

  v5 = [(_INPBCopyFileIntent *)self entityName];
  v6 = [v4 entityName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_34;
  }

  v14 = [(_INPBCopyFileIntent *)self entityName];
  if (v14)
  {
    v15 = v14;
    v16 = [(_INPBCopyFileIntent *)self entityName];
    v17 = [v4 entityName];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v19 = [(_INPBCopyFileIntent *)self hasEntityType];
  if (v19 != [v4 hasEntityType])
  {
    goto LABEL_35;
  }

  if ([(_INPBCopyFileIntent *)self hasEntityType])
  {
    if ([v4 hasEntityType])
    {
      entityType = self->_entityType;
      if (entityType != [v4 entityType])
      {
        goto LABEL_35;
      }
    }
  }

  v5 = [(_INPBCopyFileIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_34;
  }

  v21 = [(_INPBCopyFileIntent *)self intentMetadata];
  if (v21)
  {
    v22 = v21;
    v23 = [(_INPBCopyFileIntent *)self intentMetadata];
    v24 = [v4 intentMetadata];
    v25 = [v23 isEqual:v24];

    if (!v25)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v5 = [(_INPBCopyFileIntent *)self properties];
  v6 = [v4 properties];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_34;
  }

  v26 = [(_INPBCopyFileIntent *)self properties];
  if (v26)
  {
    v27 = v26;
    v28 = [(_INPBCopyFileIntent *)self properties];
    v29 = [v4 properties];
    v30 = [v28 isEqual:v29];

    if (!v30)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v5 = [(_INPBCopyFileIntent *)self sourceName];
  v6 = [v4 sourceName];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_34:

    goto LABEL_35;
  }

  v31 = [(_INPBCopyFileIntent *)self sourceName];
  if (v31)
  {
    v32 = v31;
    v33 = [(_INPBCopyFileIntent *)self sourceName];
    v34 = [v4 sourceName];
    v35 = [v33 isEqual:v34];

    if (!v35)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v38 = [(_INPBCopyFileIntent *)self hasSourceType];
  if (v38 == [v4 hasSourceType])
  {
    if (!-[_INPBCopyFileIntent hasSourceType](self, "hasSourceType") || ![v4 hasSourceType] || (sourceType = self->_sourceType, sourceType == objc_msgSend(v4, "sourceType")))
    {
      v36 = 1;
      goto LABEL_36;
    }
  }

LABEL_35:
  v36 = 0;
LABEL_36:

  return v36;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBCopyFileIntent allocWithZone:](_INPBCopyFileIntent init];
  v6 = [(_INPBString *)self->_destinationName copyWithZone:a3];
  [(_INPBCopyFileIntent *)v5 setDestinationName:v6];

  if ([(_INPBCopyFileIntent *)self hasDestinationType])
  {
    [(_INPBCopyFileIntent *)v5 setDestinationType:[(_INPBCopyFileIntent *)self destinationType]];
  }

  v7 = [(_INPBString *)self->_entityName copyWithZone:a3];
  [(_INPBCopyFileIntent *)v5 setEntityName:v7];

  if ([(_INPBCopyFileIntent *)self hasEntityType])
  {
    [(_INPBCopyFileIntent *)v5 setEntityType:[(_INPBCopyFileIntent *)self entityType]];
  }

  v8 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBCopyFileIntent *)v5 setIntentMetadata:v8];

  v9 = [(NSArray *)self->_properties copyWithZone:a3];
  [(_INPBCopyFileIntent *)v5 setProperties:v9];

  v10 = [(_INPBString *)self->_sourceName copyWithZone:a3];
  [(_INPBCopyFileIntent *)v5 setSourceName:v10];

  if ([(_INPBCopyFileIntent *)self hasSourceType])
  {
    [(_INPBCopyFileIntent *)v5 setSourceType:[(_INPBCopyFileIntent *)self sourceType]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBCopyFileIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBCopyFileIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBCopyFileIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBCopyFileIntent *)self destinationName];

  if (v5)
  {
    v6 = [(_INPBCopyFileIntent *)self destinationName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBCopyFileIntent *)self hasDestinationType])
  {
    destinationType = self->_destinationType;
    PBDataWriterWriteInt32Field();
  }

  v8 = [(_INPBCopyFileIntent *)self entityName];

  if (v8)
  {
    v9 = [(_INPBCopyFileIntent *)self entityName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBCopyFileIntent *)self hasEntityType])
  {
    entityType = self->_entityType;
    PBDataWriterWriteInt32Field();
  }

  v11 = [(_INPBCopyFileIntent *)self intentMetadata];

  if (v11)
  {
    v12 = [(_INPBCopyFileIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = self->_properties;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      v17 = 0;
      do
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v23 + 1) + 8 * v17);
        PBDataWriterWriteSubmessage();
        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v15);
  }

  v19 = [(_INPBCopyFileIntent *)self sourceName];

  if (v19)
  {
    v20 = [(_INPBCopyFileIntent *)self sourceName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBCopyFileIntent *)self hasSourceType])
  {
    sourceType = self->_sourceType;
    PBDataWriterWriteInt32Field();
  }

  v22 = *MEMORY[0x1E69E9840];
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
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setSourceType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFB;
  }

  else
  {
    *&self->_has = has | 4;
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

- (void)setHasEntityType:(BOOL)a3
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

- (void)setEntityType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_entityType = a3;
  }
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