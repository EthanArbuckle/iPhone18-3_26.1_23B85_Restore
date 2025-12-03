@interface _INPBSearchForFilesIntent
- (BOOL)isEqual:(id)equal;
- (_INPBSearchForFilesIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsEntityType:(id)type;
- (int)StringAsScope:(id)scope;
- (unint64_t)hash;
- (void)addProperties:(id)properties;
- (void)encodeWithCoder:(id)coder;
- (void)setEntityType:(int)type;
- (void)setHasScope:(BOOL)scope;
- (void)setProperties:(id)properties;
- (void)setScope:(int)scope;
- (void)writeTo:(id)to;
@end

@implementation _INPBSearchForFilesIntent

- (id)dictionaryRepresentation
{
  v30 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  appId = [(_INPBSearchForFilesIntent *)self appId];
  dictionaryRepresentation = [appId dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"appId"];

  entityName = [(_INPBSearchForFilesIntent *)self entityName];
  dictionaryRepresentation2 = [entityName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"entityName"];

  if ([(_INPBSearchForFilesIntent *)self hasEntityType])
  {
    entityType = [(_INPBSearchForFilesIntent *)self entityType];
    if (entityType >= 4)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", entityType];
    }

    else
    {
      v9 = off_1E727EFA8[entityType];
    }

    [dictionary setObject:v9 forKeyedSubscript:@"entityType"];
  }

  intentMetadata = [(_INPBSearchForFilesIntent *)self intentMetadata];
  dictionaryRepresentation3 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"intentMetadata"];

  if ([(NSArray *)self->_properties count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation4 = [*(*(&v25 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation4];
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v15);
    }

    [dictionary setObject:array forKeyedSubscript:@"properties"];
  }

  if ([(_INPBSearchForFilesIntent *)self hasScope])
  {
    scope = [(_INPBSearchForFilesIntent *)self scope];
    if (scope >= 3)
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", scope];
    }

    else
    {
      v20 = off_1E727EFC8[scope];
    }

    [dictionary setObject:v20 forKeyedSubscript:@"scope"];
  }

  scopeEntityName = [(_INPBSearchForFilesIntent *)self scopeEntityName];
  dictionaryRepresentation5 = [scopeEntityName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"scopeEntityName"];

  v23 = *MEMORY[0x1E69E9840];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  appId = [(_INPBSearchForFilesIntent *)self appId];
  appId2 = [equalCopy appId];
  if ((appId != 0) == (appId2 == 0))
  {
    goto LABEL_34;
  }

  appId3 = [(_INPBSearchForFilesIntent *)self appId];
  if (appId3)
  {
    v8 = appId3;
    appId4 = [(_INPBSearchForFilesIntent *)self appId];
    appId5 = [equalCopy appId];
    v11 = [appId4 isEqual:appId5];

    if (!v11)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  appId = [(_INPBSearchForFilesIntent *)self entityName];
  appId2 = [equalCopy entityName];
  if ((appId != 0) == (appId2 == 0))
  {
    goto LABEL_34;
  }

  entityName = [(_INPBSearchForFilesIntent *)self entityName];
  if (entityName)
  {
    v13 = entityName;
    entityName2 = [(_INPBSearchForFilesIntent *)self entityName];
    entityName3 = [equalCopy entityName];
    v16 = [entityName2 isEqual:entityName3];

    if (!v16)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  hasEntityType = [(_INPBSearchForFilesIntent *)self hasEntityType];
  if (hasEntityType != [equalCopy hasEntityType])
  {
    goto LABEL_35;
  }

  if ([(_INPBSearchForFilesIntent *)self hasEntityType])
  {
    if ([equalCopy hasEntityType])
    {
      entityType = self->_entityType;
      if (entityType != [equalCopy entityType])
      {
        goto LABEL_35;
      }
    }
  }

  appId = [(_INPBSearchForFilesIntent *)self intentMetadata];
  appId2 = [equalCopy intentMetadata];
  if ((appId != 0) == (appId2 == 0))
  {
    goto LABEL_34;
  }

  intentMetadata = [(_INPBSearchForFilesIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v20 = intentMetadata;
    intentMetadata2 = [(_INPBSearchForFilesIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v23 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v23)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  appId = [(_INPBSearchForFilesIntent *)self properties];
  appId2 = [equalCopy properties];
  if ((appId != 0) == (appId2 == 0))
  {
    goto LABEL_34;
  }

  properties = [(_INPBSearchForFilesIntent *)self properties];
  if (properties)
  {
    v25 = properties;
    properties2 = [(_INPBSearchForFilesIntent *)self properties];
    properties3 = [equalCopy properties];
    v28 = [properties2 isEqual:properties3];

    if (!v28)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  hasScope = [(_INPBSearchForFilesIntent *)self hasScope];
  if (hasScope != [equalCopy hasScope])
  {
    goto LABEL_35;
  }

  if ([(_INPBSearchForFilesIntent *)self hasScope])
  {
    if ([equalCopy hasScope])
    {
      scope = self->_scope;
      if (scope != [equalCopy scope])
      {
        goto LABEL_35;
      }
    }
  }

  appId = [(_INPBSearchForFilesIntent *)self scopeEntityName];
  appId2 = [equalCopy scopeEntityName];
  if ((appId != 0) != (appId2 == 0))
  {
    scopeEntityName = [(_INPBSearchForFilesIntent *)self scopeEntityName];
    if (!scopeEntityName)
    {

LABEL_38:
      v36 = 1;
      goto LABEL_36;
    }

    v32 = scopeEntityName;
    scopeEntityName2 = [(_INPBSearchForFilesIntent *)self scopeEntityName];
    scopeEntityName3 = [equalCopy scopeEntityName];
    v35 = [scopeEntityName2 isEqual:scopeEntityName3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSearchForFilesIntent allocWithZone:](_INPBSearchForFilesIntent init];
  v6 = [(_INPBString *)self->_appId copyWithZone:zone];
  [(_INPBSearchForFilesIntent *)v5 setAppId:v6];

  v7 = [(_INPBString *)self->_entityName copyWithZone:zone];
  [(_INPBSearchForFilesIntent *)v5 setEntityName:v7];

  if ([(_INPBSearchForFilesIntent *)self hasEntityType])
  {
    [(_INPBSearchForFilesIntent *)v5 setEntityType:[(_INPBSearchForFilesIntent *)self entityType]];
  }

  v8 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBSearchForFilesIntent *)v5 setIntentMetadata:v8];

  v9 = [(NSArray *)self->_properties copyWithZone:zone];
  [(_INPBSearchForFilesIntent *)v5 setProperties:v9];

  if ([(_INPBSearchForFilesIntent *)self hasScope])
  {
    [(_INPBSearchForFilesIntent *)v5 setScope:[(_INPBSearchForFilesIntent *)self scope]];
  }

  v10 = [(_INPBString *)self->_scopeEntityName copyWithZone:zone];
  [(_INPBSearchForFilesIntent *)v5 setScopeEntityName:v10];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSearchForFilesIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSearchForFilesIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSearchForFilesIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v27 = *MEMORY[0x1E69E9840];
  toCopy = to;
  appId = [(_INPBSearchForFilesIntent *)self appId];

  if (appId)
  {
    appId2 = [(_INPBSearchForFilesIntent *)self appId];
    PBDataWriterWriteSubmessage();
  }

  entityName = [(_INPBSearchForFilesIntent *)self entityName];

  if (entityName)
  {
    entityName2 = [(_INPBSearchForFilesIntent *)self entityName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSearchForFilesIntent *)self hasEntityType])
  {
    entityType = self->_entityType;
    PBDataWriterWriteInt32Field();
  }

  intentMetadata = [(_INPBSearchForFilesIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBSearchForFilesIntent *)self intentMetadata];
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

  scopeEntityName = [(_INPBSearchForFilesIntent *)self scopeEntityName];

  if (scopeEntityName)
  {
    scopeEntityName2 = [(_INPBSearchForFilesIntent *)self scopeEntityName];
    PBDataWriterWriteSubmessage();
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (int)StringAsScope:(id)scope
{
  scopeCopy = scope;
  if ([scopeCopy isEqualToString:@"DIRECTORY"])
  {
    v4 = 0;
  }

  else if ([scopeCopy isEqualToString:@"VOLUME"])
  {
    v4 = 1;
  }

  else if ([scopeCopy isEqualToString:@"COMPUTER"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasScope:(BOOL)scope
{
  if (scope)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setScope:(int)scope
{
  has = self->_has;
  if (scope == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_scope = scope;
  }
}

- (void)addProperties:(id)properties
{
  propertiesCopy = properties;
  properties = self->_properties;
  v8 = propertiesCopy;
  if (!properties)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_properties;
    self->_properties = array;

    propertiesCopy = v8;
    properties = self->_properties;
  }

  [(NSArray *)properties addObject:propertiesCopy];
}

- (void)setProperties:(id)properties
{
  v4 = [properties mutableCopy];
  properties = self->_properties;
  self->_properties = v4;

  MEMORY[0x1EEE66BB8](v4, properties);
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