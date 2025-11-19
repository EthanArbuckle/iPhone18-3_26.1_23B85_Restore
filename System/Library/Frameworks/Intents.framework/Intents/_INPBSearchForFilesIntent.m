@interface _INPBSearchForFilesIntent
- (BOOL)isEqual:(id)a3;
- (_INPBSearchForFilesIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsEntityType:(id)a3;
- (int)StringAsScope:(id)a3;
- (unint64_t)hash;
- (void)addProperties:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setEntityType:(int)a3;
- (void)setHasScope:(BOOL)a3;
- (void)setProperties:(id)a3;
- (void)setScope:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSearchForFilesIntent

- (id)dictionaryRepresentation
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBSearchForFilesIntent *)self appId];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"appId"];

  v6 = [(_INPBSearchForFilesIntent *)self entityName];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"entityName"];

  if ([(_INPBSearchForFilesIntent *)self hasEntityType])
  {
    v8 = [(_INPBSearchForFilesIntent *)self entityType];
    if (v8 >= 4)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v8];
    }

    else
    {
      v9 = off_1E727EFA8[v8];
    }

    [v3 setObject:v9 forKeyedSubscript:@"entityType"];
  }

  v10 = [(_INPBSearchForFilesIntent *)self intentMetadata];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"intentMetadata"];

  if ([(NSArray *)self->_properties count])
  {
    v12 = [MEMORY[0x1E695DF70] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v13 = self->_properties;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v26;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v25 + 1) + 8 * i) dictionaryRepresentation];
          [v12 addObject:v18];
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v15);
    }

    [v3 setObject:v12 forKeyedSubscript:@"properties"];
  }

  if ([(_INPBSearchForFilesIntent *)self hasScope])
  {
    v19 = [(_INPBSearchForFilesIntent *)self scope];
    if (v19 >= 3)
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v19];
    }

    else
    {
      v20 = off_1E727EFC8[v19];
    }

    [v3 setObject:v20 forKeyedSubscript:@"scope"];
  }

  v21 = [(_INPBSearchForFilesIntent *)self scopeEntityName];
  v22 = [v21 dictionaryRepresentation];
  [v3 setObject:v22 forKeyedSubscript:@"scopeEntityName"];

  v23 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBString *)self->_appId hash];
  v4 = [(_INPBString *)self->_entityName hash];
  if ([(_INPBSearchForFilesIntent *)self hasEntityType])
  {
    v5 = 2654435761 * self->_entityType;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v7 = [(NSArray *)self->_properties hash];
  if ([(_INPBSearchForFilesIntent *)self hasScope])
  {
    v8 = 2654435761 * self->_scope;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(_INPBString *)self->_scopeEntityName hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  v5 = [(_INPBSearchForFilesIntent *)self appId];
  v6 = [v4 appId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_34;
  }

  v7 = [(_INPBSearchForFilesIntent *)self appId];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBSearchForFilesIntent *)self appId];
    v10 = [v4 appId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v5 = [(_INPBSearchForFilesIntent *)self entityName];
  v6 = [v4 entityName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_34;
  }

  v12 = [(_INPBSearchForFilesIntent *)self entityName];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBSearchForFilesIntent *)self entityName];
    v15 = [v4 entityName];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v17 = [(_INPBSearchForFilesIntent *)self hasEntityType];
  if (v17 != [v4 hasEntityType])
  {
    goto LABEL_35;
  }

  if ([(_INPBSearchForFilesIntent *)self hasEntityType])
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

  v5 = [(_INPBSearchForFilesIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_34;
  }

  v19 = [(_INPBSearchForFilesIntent *)self intentMetadata];
  if (v19)
  {
    v20 = v19;
    v21 = [(_INPBSearchForFilesIntent *)self intentMetadata];
    v22 = [v4 intentMetadata];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v5 = [(_INPBSearchForFilesIntent *)self properties];
  v6 = [v4 properties];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_34;
  }

  v24 = [(_INPBSearchForFilesIntent *)self properties];
  if (v24)
  {
    v25 = v24;
    v26 = [(_INPBSearchForFilesIntent *)self properties];
    v27 = [v4 properties];
    v28 = [v26 isEqual:v27];

    if (!v28)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v29 = [(_INPBSearchForFilesIntent *)self hasScope];
  if (v29 != [v4 hasScope])
  {
    goto LABEL_35;
  }

  if ([(_INPBSearchForFilesIntent *)self hasScope])
  {
    if ([v4 hasScope])
    {
      scope = self->_scope;
      if (scope != [v4 scope])
      {
        goto LABEL_35;
      }
    }
  }

  v5 = [(_INPBSearchForFilesIntent *)self scopeEntityName];
  v6 = [v4 scopeEntityName];
  if ((v5 != 0) != (v6 == 0))
  {
    v31 = [(_INPBSearchForFilesIntent *)self scopeEntityName];
    if (!v31)
    {

LABEL_38:
      v36 = 1;
      goto LABEL_36;
    }

    v32 = v31;
    v33 = [(_INPBSearchForFilesIntent *)self scopeEntityName];
    v34 = [v4 scopeEntityName];
    v35 = [v33 isEqual:v34];

    if (v35)
    {
      goto LABEL_38;
    }
  }

  else
  {
LABEL_34:
  }

LABEL_35:
  v36 = 0;
LABEL_36:

  return v36;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSearchForFilesIntent allocWithZone:](_INPBSearchForFilesIntent init];
  v6 = [(_INPBString *)self->_appId copyWithZone:a3];
  [(_INPBSearchForFilesIntent *)v5 setAppId:v6];

  v7 = [(_INPBString *)self->_entityName copyWithZone:a3];
  [(_INPBSearchForFilesIntent *)v5 setEntityName:v7];

  if ([(_INPBSearchForFilesIntent *)self hasEntityType])
  {
    [(_INPBSearchForFilesIntent *)v5 setEntityType:[(_INPBSearchForFilesIntent *)self entityType]];
  }

  v8 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBSearchForFilesIntent *)v5 setIntentMetadata:v8];

  v9 = [(NSArray *)self->_properties copyWithZone:a3];
  [(_INPBSearchForFilesIntent *)v5 setProperties:v9];

  if ([(_INPBSearchForFilesIntent *)self hasScope])
  {
    [(_INPBSearchForFilesIntent *)v5 setScope:[(_INPBSearchForFilesIntent *)self scope]];
  }

  v10 = [(_INPBString *)self->_scopeEntityName copyWithZone:a3];
  [(_INPBSearchForFilesIntent *)v5 setScopeEntityName:v10];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSearchForFilesIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSearchForFilesIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSearchForFilesIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBSearchForFilesIntent *)self appId];

  if (v5)
  {
    v6 = [(_INPBSearchForFilesIntent *)self appId];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_INPBSearchForFilesIntent *)self entityName];

  if (v7)
  {
    v8 = [(_INPBSearchForFilesIntent *)self entityName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSearchForFilesIntent *)self hasEntityType])
  {
    entityType = self->_entityType;
    PBDataWriterWriteInt32Field();
  }

  v10 = [(_INPBSearchForFilesIntent *)self intentMetadata];

  if (v10)
  {
    v11 = [(_INPBSearchForFilesIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = self->_properties;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      v16 = 0;
      do
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v22 + 1) + 8 * v16);
        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  if ([(_INPBSearchForFilesIntent *)self hasScope])
  {
    scope = self->_scope;
    PBDataWriterWriteInt32Field();
  }

  v19 = [(_INPBSearchForFilesIntent *)self scopeEntityName];

  if (v19)
  {
    v20 = [(_INPBSearchForFilesIntent *)self scopeEntityName];
    PBDataWriterWriteSubmessage();
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (int)StringAsScope:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"DIRECTORY"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"VOLUME"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"COMPUTER"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasScope:(BOOL)a3
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

- (void)setScope:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_scope = a3;
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