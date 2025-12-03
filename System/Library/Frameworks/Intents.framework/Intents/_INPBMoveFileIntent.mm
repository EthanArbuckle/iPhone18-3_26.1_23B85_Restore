@interface _INPBMoveFileIntent
- (BOOL)isEqual:(id)equal;
- (_INPBMoveFileIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsDestinationType:(id)type;
- (int)StringAsEntityTypes:(id)types;
- (int)StringAsSourceType:(id)type;
- (unint64_t)hash;
- (void)addEntityName:(id)name;
- (void)addEntityType:(int)type;
- (void)addProperties:(id)properties;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setDestinationType:(int)type;
- (void)setEntityNames:(id)names;
- (void)setHasSourceType:(BOOL)type;
- (void)setProperties:(id)properties;
- (void)setSourceType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBMoveFileIntent

- (id)dictionaryRepresentation
{
  v44 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  destinationName = [(_INPBMoveFileIntent *)self destinationName];
  dictionaryRepresentation = [destinationName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"destinationName"];

  if ([(_INPBMoveFileIntent *)self hasDestinationType])
  {
    destinationType = [(_INPBMoveFileIntent *)self destinationType];
    if (destinationType >= 4)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", destinationType];
    }

    else
    {
      v7 = off_1E727FDB0[destinationType];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"destinationType"];
  }

  if ([(NSArray *)self->_entityNames count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation2 = [*(*(&v38 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation2];
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v11);
    }

    [dictionary setObject:array forKeyedSubscript:@"entityName"];
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

    [dictionary setObject:v15 forKeyedSubscript:@"entityType"];
  }

  intentMetadata = [(_INPBMoveFileIntent *)self intentMetadata];
  dictionaryRepresentation3 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"intentMetadata"];

  if ([(NSArray *)self->_properties count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation4 = [*(*(&v34 + 1) + 8 * j) dictionaryRepresentation];
          [array2 addObject:dictionaryRepresentation4];
        }

        v24 = [(NSArray *)v22 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v24);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"properties"];
  }

  sourceName = [(_INPBMoveFileIntent *)self sourceName];
  dictionaryRepresentation5 = [sourceName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"sourceName"];

  if ([(_INPBMoveFileIntent *)self hasSourceType])
  {
    sourceType = [(_INPBMoveFileIntent *)self sourceType];
    if (sourceType >= 4)
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", sourceType];
    }

    else
    {
      v31 = off_1E727FDB0[sourceType];
    }

    [dictionary setObject:v31 forKeyedSubscript:@"sourceType"];
  }

  v32 = *MEMORY[0x1E69E9840];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  destinationName = [(_INPBMoveFileIntent *)self destinationName];
  destinationName2 = [equalCopy destinationName];
  if ((destinationName != 0) == (destinationName2 == 0))
  {
    goto LABEL_31;
  }

  destinationName3 = [(_INPBMoveFileIntent *)self destinationName];
  if (destinationName3)
  {
    v8 = destinationName3;
    destinationName4 = [(_INPBMoveFileIntent *)self destinationName];
    destinationName5 = [equalCopy destinationName];
    v11 = [destinationName4 isEqual:destinationName5];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  hasDestinationType = [(_INPBMoveFileIntent *)self hasDestinationType];
  if (hasDestinationType != [equalCopy hasDestinationType])
  {
    goto LABEL_32;
  }

  if ([(_INPBMoveFileIntent *)self hasDestinationType])
  {
    if ([equalCopy hasDestinationType])
    {
      destinationType = self->_destinationType;
      if (destinationType != [equalCopy destinationType])
      {
        goto LABEL_32;
      }
    }
  }

  destinationName = [(_INPBMoveFileIntent *)self entityNames];
  destinationName2 = [equalCopy entityNames];
  if ((destinationName != 0) == (destinationName2 == 0))
  {
    goto LABEL_31;
  }

  entityNames = [(_INPBMoveFileIntent *)self entityNames];
  if (entityNames)
  {
    v15 = entityNames;
    entityNames2 = [(_INPBMoveFileIntent *)self entityNames];
    entityNames3 = [equalCopy entityNames];
    v18 = [entityNames2 isEqual:entityNames3];

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

  destinationName = [(_INPBMoveFileIntent *)self intentMetadata];
  destinationName2 = [equalCopy intentMetadata];
  if ((destinationName != 0) == (destinationName2 == 0))
  {
    goto LABEL_31;
  }

  intentMetadata = [(_INPBMoveFileIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v20 = intentMetadata;
    intentMetadata2 = [(_INPBMoveFileIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v23 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v23)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  destinationName = [(_INPBMoveFileIntent *)self properties];
  destinationName2 = [equalCopy properties];
  if ((destinationName != 0) == (destinationName2 == 0))
  {
    goto LABEL_31;
  }

  properties = [(_INPBMoveFileIntent *)self properties];
  if (properties)
  {
    v25 = properties;
    properties2 = [(_INPBMoveFileIntent *)self properties];
    properties3 = [equalCopy properties];
    v28 = [properties2 isEqual:properties3];

    if (!v28)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  destinationName = [(_INPBMoveFileIntent *)self sourceName];
  destinationName2 = [equalCopy sourceName];
  if ((destinationName != 0) == (destinationName2 == 0))
  {
LABEL_31:

    goto LABEL_32;
  }

  sourceName = [(_INPBMoveFileIntent *)self sourceName];
  if (sourceName)
  {
    v30 = sourceName;
    sourceName2 = [(_INPBMoveFileIntent *)self sourceName];
    sourceName3 = [equalCopy sourceName];
    v33 = [sourceName2 isEqual:sourceName3];

    if (!v33)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  hasSourceType = [(_INPBMoveFileIntent *)self hasSourceType];
  if (hasSourceType == [equalCopy hasSourceType])
  {
    if (!-[_INPBMoveFileIntent hasSourceType](self, "hasSourceType") || ![equalCopy hasSourceType] || (sourceType = self->_sourceType, sourceType == objc_msgSend(equalCopy, "sourceType")))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBMoveFileIntent allocWithZone:](_INPBMoveFileIntent init];
  v6 = [(_INPBString *)self->_destinationName copyWithZone:zone];
  [(_INPBMoveFileIntent *)v5 setDestinationName:v6];

  if ([(_INPBMoveFileIntent *)self hasDestinationType])
  {
    [(_INPBMoveFileIntent *)v5 setDestinationType:[(_INPBMoveFileIntent *)self destinationType]];
  }

  v7 = [(NSArray *)self->_entityNames copyWithZone:zone];
  [(_INPBMoveFileIntent *)v5 setEntityNames:v7];

  PBRepeatedInt32Copy();
  v8 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBMoveFileIntent *)v5 setIntentMetadata:v8];

  v9 = [(NSArray *)self->_properties copyWithZone:zone];
  [(_INPBMoveFileIntent *)v5 setProperties:v9];

  v10 = [(_INPBString *)self->_sourceName copyWithZone:zone];
  [(_INPBMoveFileIntent *)v5 setSourceName:v10];

  if ([(_INPBMoveFileIntent *)self hasSourceType])
  {
    [(_INPBMoveFileIntent *)v5 setSourceType:[(_INPBMoveFileIntent *)self sourceType]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBMoveFileIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBMoveFileIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBMoveFileIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)dealloc
{
  [(_INPBMoveFileIntent *)self clearEntityTypes];
  v3.receiver = self;
  v3.super_class = _INPBMoveFileIntent;
  [(_INPBMoveFileIntent *)&v3 dealloc];
}

- (void)writeTo:(id)to
{
  v38 = *MEMORY[0x1E69E9840];
  toCopy = to;
  destinationName = [(_INPBMoveFileIntent *)self destinationName];

  if (destinationName)
  {
    destinationName2 = [(_INPBMoveFileIntent *)self destinationName];
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

  intentMetadata = [(_INPBMoveFileIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBMoveFileIntent *)self intentMetadata];
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

  sourceName = [(_INPBMoveFileIntent *)self sourceName];

  if (sourceName)
  {
    sourceName2 = [(_INPBMoveFileIntent *)self sourceName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBMoveFileIntent *)self hasSourceType])
  {
    sourceType = self->_sourceType;
    PBDataWriterWriteInt32Field();
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (int)StringAsSourceType:(id)type
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

- (void)setHasSourceType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setSourceType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_sourceType = type;
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

- (int)StringAsDestinationType:(id)type
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

- (void)setDestinationType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_destinationType = type;
  }
}

@end